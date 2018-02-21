#include "gdef.h"
#include "dsp.h"

#define NE 12
#define MAXENC (2<<(NE-1))

extern void adc_dma_init(void);
extern void adc_dma_start(void);
extern void adc_dma_wait(void);
extern uint32_t adc_dma_buffer[8];

void ssi_init();
void dac_init();
uint32_t b2g(uint32_t b);
uint32_t g2b(uint32_t g);
extern void set_ram_vt();

extern void system_init();
extern uint32_t system_time;

extern uint8_t uart_buf[16];
extern uint32_t uart_rxidx;

int32_t refpos = 0;
int32_t reflinpos = 0;
int32_t startlinpos = 0;
int32_t startphase = 0;
int32_t linpos = 0;

uint32_t tcnt = 0;	
uint32_t tpll = 0;	
uint32_t fpll = 0;
uint32_t ttlm = 0;

int32_t position = 0;
uint32_t encoder_code;

static inline void debug_signal(int32_t s)
{
	MDR_DAC->DAC2_DATA = s+2048;
}

struct STR_BUPR_TLM{
	int16_t refpos;
	int16_t pos;
	uint16_t pcur;
	uint16_t crc;
};

struct STR_BUPR_TLM telemetry;
	

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
}

void ssi_init()
{
	MDR_RST_CLK->PER_CLOCK |= 1<<8;	 				//clock of SPI1
	MDR_RST_CLK->SSP_CLOCK = (1<<RST_CLK_SSP_CLOCK_SSP1_CLK_EN_Pos) | (10 << RST_CLK_SSP_CLOCK_SSP1_BRG_Pos); // SSP1_CLK = HCLK
	
	MDR_SSP1->CR1 = 0;	
	MDR_SSP1->CPSR = 10; // предделитель
	//MDR_SSP1->CR0 = (0x02 << SSP_CR0_SCR_Pos) + (0x00 << SSP_CR0_FRF_Pos) | (11 << SSP_CR0_DSS_Pos) | SSP_CR0_SPO;
	MDR_SSP1->CR0 = (0x02 << SSP_CR0_SCR_Pos) + (0x01 << SSP_CR0_FRF_Pos) + ((16-1) << SSP_CR0_DSS_Pos);
	MDR_SSP1->CR1 = SSP_CR1_SSE; // enable ssp
}

uint32_t b2g(uint32_t b)
{
	return b ^ (b >> 1);
}

uint32_t g2b(uint32_t g)
{
	uint32_t b = 0;
	for(b = 0; g; (g = g >> 1)){
		b = b ^ g;
	}
	return b;
}

uint32_t enc_crc(uint32_t e)
{
	static uint32_t code = 0;
	uint32_t crc;
	uint32_t b = e;
	
	for(crc=0; b; (b = b>>1)) crc = crc ^ b;		
	(1&crc) || (code = (MAXENC-1) & e);

	return code;
}

void dac_init()
{
	MDR_RST_CLK->PER_CLOCK |= (1<<18);
	MDR_DAC->CFG |= (1<<3); // dac2 on
}	

static inline void encoder_start(void)
{
	MDR_SSP1->DR = 0x555; // start encoder request<---->
}

void Timer1_IRQHandler(void)
{
	MDR_TIMER1->STATUS = 0;
	//MDR_PORTA->RXTX |= 0x01; // PA0
	//debug_signal(MDR_TIMER1->CCR2);	
	//update_pll();
	//MDR_PORTA->RXTX &= ~0x01; // PA0
	//ttlm = 1;	
}

void Timer3_IRQHandler(void)
{
	//MDR_PORTA->RXTX ^= 0x01; // PA0	
	MDR_TIMER3->STATUS = 0;
	encoder_start();
	//MDR_ADC->ADC1_CFG |= ADC1_CFG_REG_GO; 	// start adc conversion	
	adc_dma_start();
}

int32_t get_phase(void)
{
	MDR_SSP1->DR = 0x555; // start encoder request
	while(0 == (MDR_SSP1->SR & SSP_SR_RNE));
	return g2b((MAXENC-1) & (MDR_SSP1->DR));
}

static inline void pwm_seta(int32_t s)
{
	MDR_TIMER3->CCR1 = s+512;
}
static inline void pwm_setb(int32_t s)
{
	MDR_TIMER3->CCR2 = s+512;
}
static inline void pwm_setc(int32_t s)
{
	MDR_TIMER3->CCR3 = s+512;
}

static inline void update_telemetry(void)
{
	int i;
	uint8_t *p;
	
	if(MDR_TIMER1->STATUS & TIMER_STATUS_CNT_ARR_EVENT){
		MDR_TIMER1->STATUS = 0;
		
		MDR_PORTA->RXTX |= 0x01; // PA0	
		
		// update pll
		//uint16_t t = MDR_TIMER1->CCR2+300;
		//uint16_t t = MDR_TIMER1->CCR2+0;
		uint16_t t = MDR_TIMER1->CCR2-300;
		if(t < 512) MDR_TIMER1->CNT += 1;
		else MDR_TIMER1->CNT -= 1;	
		
		// fill the telemetry array
		telemetry.refpos = refpos - startphase;
		telemetry.pos = position - startphase;
		telemetry.pcur = 0;
		telemetry.crc = 0;
		
		p = (uint8_t *)&telemetry;	
		
		// send the telemetry array
		MDR_UART1->DR = *p++;
		MDR_UART1->DR = *p++;	
		MDR_UART1->DR = *p++;	
		MDR_UART1->DR = *p++;	
		MDR_UART1->DR = *p++;	
		MDR_UART1->DR = *p++;	
		MDR_UART1->DR = *p++;	
		MDR_UART1->DR = *p++;			
	
		MDR_PORTA->RXTX &= ~0x01; // PA0	
	}		
}

int32_t update_refposition(void)
{
	static int32_t pos = 0;
	uint8_t buf[16];
	
	//if(MDR_UART1->MIS & (1<<UART_MIS_RTMIS_Pos))
	if(MDR_UART1->MIS & (1<<UART_MIS_RXMIS_Pos))
	{
		// RX timeout has occured		
		int i = 0;
		//MDR_PORTA->RXTX ^= 0x01; // PA0	
		
		while(0 == (MDR_UART1->FR & (1<<UART_FR_RXFE_Pos))) {
			buf[i] = MDR_UART1->DR; // empting the fifo
			i = (i+1) & 0x0f;
		}
		
		//int16_t ref1 = (buf[0] + (buf[1]<<8))<<4;
		//ref1 = ref1>>4;
		
		int16_t ref1 = buf[0] + (buf[1]<<8);
		
		//debug_signal(ref1);			
		pos = ref1;		

	}	

	if(MDR_UART1->MIS & (1<<UART_MIS_RTMIS_Pos)){
		//MDR_PORTA->RXTX |= 0x01; // PA0	
		while(0 == (MDR_UART1->FR & (1<<UART_FR_RXFE_Pos))) {
			char buf = MDR_UART1->DR; // empting the fifo
		}
		//MDR_PORTA->RXTX &= ~0x01; // PA0
	}
	
	return pos<<0;	
}

extern void encoder_init(int32_t s);

int main()
{
	uint32_t code;
	uint32_t code1 = 0;
	int i = 0;
	int32_t ia, ib, ic;	
	int32_t dca = 0, dcc = 0;	
	int32_t ed, eq, es;
	int32_t vd, vq;
	struct pi_reg_state dreg;
	struct pi_reg_state qreg;
	struct pi_reg_state sreg;
	struct pi_reg_state preg;
	int32_t fsat = 0;
	int32_t qref = 0;	
	int32_t speed;
	int32_t refspeed = 0;	
	uint32_t phase = 0;
	int32_t dq[2];	
	int32_t abc[3];		
	
	system_init();	
	ssi_init();
	dac_init();
	adc_dma_init();	
	
	// init the regulators
	reg_init(&dreg, KI_DQCUR, KP_DQCUR);
	reg_init(&qreg, KI_DQCUR, KP_DQCUR);	
	reg_init(&sreg, KI_SPD, KP_SPD);	
	reg_init(&preg, KI_POS, KP_POS);		

	// do some init actions	
	dca = 0;
	dcc = 0;
	startphase = 0;
	for(i=0; i<1024; i++)
	{
		adc_dma_wait();			
		
		dca += (0xfff&(adc_dma_buffer[1]));
		dcc += (0xfff&(adc_dma_buffer[0]));	
		
		startphase += enc_crc(MDR_SSP1->DR);
	}

	dca = dca >> 10;
	dcc = dcc >> 10;
	startphase = startphase >> 10;

	refpos = 0;
	position = startphase;
	encoder_init(startphase);
	
	while(1){
		//MDR_PORTA->RXTX |= 0x01; // PA0	
		adc_dma_wait();
		//MDR_PORTA->RXTX &= ~0x01; // PA0	

		// get the currents from ADC	
		ia = (0xfff&(adc_dma_buffer[1])) - dca;
		ic = (0xfff&(adc_dma_buffer[0])) - dcc;
		ib = ia+ic;		

		code = enc_crc(MDR_SSP1->DR);
		phase = code & (1024-1);								
		//MDR_DAC->DAC2_DATA = code;			
		
		encoder_code = code;
		
		//refpos = update_position() - startphase;

		tcnt++;
		
		if( (0x0007 & tcnt) == 0){
				
			// 3kHz
			//MDR_PORTA->RXTX |= 0x01; // PA0	
			
			refpos = update_refposition() + startphase;
			
			speed = get_speed(code, &position);		
			//position = position - startphase;
			//debug_signal(speed);
			debug_signal((startphase-position)>>0);
					
			reg_update(&preg, (refpos - position), 0);
			refspeed = preg.y>>12;			
			//refspeed = 2000;
			
			reg_update(&sreg, ((refspeed - speed)), 0);
			qref = sreg.y>>12;
			if(qref > MAXQCURR) qref = MAXQCURR;
			if(qref < -MAXQCURR) qref = -MAXQCURR;
				
			//MDR_PORTA->RXTX &= ~0x01; // PA0
		}

		update_telemetry();


		/*if(ttlm){		
			ttlm = 0;
			MDR_PORTA->RXTX |= 0x01; // PA0	
			update_telemetry();
			MDR_PORTA->RXTX &= ~0x01; // PA0				
		}*/

		
/*
  		if( (127 & tcnt) == 127){			
			uint32_t t = (tpll & 127);
				
			if( t < 64) tcnt--;
			else  tcnt ++;

			//if( (t > 125) || (t < 3) ){
			if(t > 64){
				//MDR_PORTA->RXTX |= 0x01; // PA0	
				update_telemetry();
				//MDR_PORTA->RXTX &= ~0x01; // PA0	
			}
		}
*/
/*
  		if( fpll && ((127 & tcnt) == 127)){
			
			//fpll = 0;
			uint32_t t = (tpll & 127);
				
			if( t < 64) tcnt--;
			else  if( t > 64) tcnt ++;			

			if( (t > 125) || (t < 3) ){
			fpll = 0;
			//if( (tpll & 127) == (tcnt & 127)){
			MDR_PORTA->RXTX |= 0x01; // PA0	
			update_telemetry();
			MDR_PORTA->RXTX &= ~0x01; // PA0	
			}
		}
*/				


		/*if( (0x7fff&tcnt) == 0){
			if(refpos == 50000 - startphase) refpos = -50000 - startphase; 
			else refpos = 50000 - startphase;
		}*/				
		
		/*if( (0x7fff&tcnt) == 0){
			if(refspeed == -1000) refspeed = 1000;
			else refspeed = -1000;
		}*/		
		
		//qref = -100;
		
 		// current regulator debug
		/*if( (0xfff&tcnt) == 0){
			if(qref == -100) qref = 100; // 100 is abt 1A
			else qref = -100;
		}*/
		
		/*
		debug_signal(ib<<2);

		ed = qref-ib;
		reg_update(&dreg, ed , fsat);
		
		vd = dreg.y>>12;
		fsat = 0;
		if(vd > 511){
			fsat = 1;
			vd = 511;
		}		
		
		if(vd < -511){
			fsat = 1;
			vd = -511;
		}				
			
		//pwm_seta(-vd);
		pwm_setb(vd);		
		continue;
*/

		// vector sync motor controller
		phase = 1023&(phase+700);    // phase offset for correct rotor position

		// convert abc currents to dq
		abc[0] = ia;
		abc[1] = ib;
		abc[2] = ic;
		abc_to_dq(abc, dq, phase);

		// get the errors
		ed = 0 - dq[0];
		eq = qref - dq[1];
		
		//debug_signal(dq[1]<<2);		
		
		// currents regulators do its work
		reg_update(&dreg, ed , fsat);
		reg_update(&qreg, eq , fsat);
		
		dq[0] = dreg.y>>2;
		dq[1] = qreg.y>>2;

/*
		// simple sync motor controller
		dq[0] = 0;
		dq[1] = 100*1024;
*/	
		// set the pwm controller
		fsat = svpwm(abc, dq, phase);
		//fsat = sinpwm(abc, dq, phase);						
		
		pwm_seta(abc[0]);
		pwm_setb(abc[1]);
		pwm_setc(abc[2]);	
	
	}	

	/*
	while(1){
		adc_dma_wait();			
		
		// get the currents from ADC	
		ia = (0xfff&(adc_dma_buffer[1])) - dca;
		ic = (0xfff&(adc_dma_buffer[0])) - dcc;
		ib = -ia-ic;		
		
		debug_signal(ic<<3);
		
		//continue;
		
		tcnt++;

		//qref = 10;
 		// current regulator debug
		if( (0x03ff&tcnt) == 0){
			if(qref == 0) qref = 100; // 100 is abt 1A
			else qref = 0;
		}
		

		ed = qref-ic;
		reg_update(&dreg, ed , fsat);
		
		vd = dreg.y>>12;
		fsat = 0;
		if(vd > 511){
			fsat = 1;
			vd = 511;
		}		
		
		if(vd < -511){
			fsat = 1;
			vd = -511;
		}				
			
		pwm_seta(vd);
		pwm_setc(-vd);

	}
*/

/*
	while(1){
		adc_dma_wait();
		MDR_DAC->DAC2_DATA = (0xfff&(adc_dma_buffer[0]));
	}
*/
	/*while(1){
		
		MDR_DAC->DAC2_DATA = 4095&(code++);
	}*/
/*	
	while(1)
	{
		//__WFI();
		//MDR_PORTA->RXTX ^= 0x01; // PA0
	
		if(MDR_SSP1->SR & SSP_SR_RFF) 
		{
			// RX FIFO is full
						
			code = g2b((MAXENC-1) & (MDR_SSP1->DR));		
			if(code > code1)
				speed = code - code1;
			else
				speed = code - code1 + 4096;
			
			code1 = code;
			
			//MDR_DAC->DAC2_DATA = speed << 4;
			MDR_DAC->DAC2_DATA = code;		
			
		}
		
		if(MDR_ADC->ADC1_STATUS & ADC_STATUS_FLG_REG_EOCIF)
		{
			//MDR_DAC->DAC2_DATA = MDR_ADC->ADC1_RESULT;
		}

	}
*/


}
