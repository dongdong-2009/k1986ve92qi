#include "gdef.h"
#include "dsp.h"
#include "encoder.h"

extern void adc_dma_init(void);
extern void adc_dma_start(void);
extern void adc_dma_wait(void);
extern uint32_t adc_dma_buffer[8];

extern void system_init();
extern int sleep(uint32_t ms);

void dac_init();

void dac_init()
{
	MDR_RST_CLK->PER_CLOCK |= (1<<18);
	MDR_DAC->CFG |= (1<<3); // dac2 on
}	

void TIMER3_Handler(void)
{
	MDR_PORTA->RXTX ^= 0x01; // PA0	
	MDR_TIMER3->STATUS = 0;
	encoder_start();
	//MDR_ADC->ADC1_CFG |= ADC1_CFG_REG_GO; 	// start adc conversion	
	adc_dma_start();
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
static inline void debug_signal(int32_t s)
{
	MDR_DAC->DAC2_DATA = s+2048;
}

__attribute__ ((section(".main_sec")))
int main()
{
	uint32_t code;
	uint32_t code1 = 0;
	int32_t speed = 0;
	int i = 0;
	int32_t ia, ib, ic;	
	int32_t dca = 0, dcc = 0;	
	uint32_t tcnt = 0;	
	int32_t ed, eq, es;
	int32_t vd, vq;
	struct pi_reg_state dreg;
	struct pi_reg_state qreg;
	struct pi_reg_state sreg;
	struct pi_reg_state preg;
	int32_t fsat = 0;
	int32_t qref = 0;	
	int32_t position = 0;	
	uint32_t phase = 0;
	int32_t dq[2];	
	int32_t abc[3];		
	
	system_init();
	
	encoder_init();
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
	for(i=0; i<1024; i++)
	{
		adc_dma_wait();			
		
		dca += (0xfff&(adc_dma_buffer[1]));
		dcc += (0xfff&(adc_dma_buffer[0]));	
	}
	
	dca = dca >> 10;
	dcc = dcc >> 10;
	
	while(1){
		adc_dma_wait();
		
		// get the currents from ADC	
		ia = (0xfff&(adc_dma_buffer[1])) - dca;
		ic = (0xfff&(adc_dma_buffer[0])) - dcc;
		ib = -ia-ic;		
		
		//debug_signal(ic<<3);
		
		code = encoder_crc(MDR_SSP1->DR);
		phase = code & (1024-1);								
		//MDR_DAC->DAC2_DATA = code;		
		
		tcnt++;
		if( (0x0007 & tcnt) == 0){			
			// 3kHz
			speed = get_speed(code, &position);				
		}
		
		qref = 200;
 		// current regulator debug
		/*if( (0xffff&tcnt) == 0){
			if(qref == -200) qref = 200; // 100 is abt 1A
			else qref = -200;
		}*/
		/*
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
		continue;
		*/

		// vector sync motor controller
		phase = 1023&(phase+0);    // phase offset for correct rotor position

		// convert abc currents to dq
		abc[0] = -ia;
		abc[1] = -ib;
		abc[2] = -ic;
		abc_to_dq(abc, dq, phase);

		// get the errors
		ed = 0 - dq[0];
		eq = qref - dq[1];
		
		debug_signal(dq[1]<<2);		
		
		// regulators do its work
		reg_update(&dreg, ed , fsat);
		reg_update(&qreg, eq , fsat);
		
		// pwm modulation
		dq[0] = dreg.y>>2;
		dq[1] = qreg.y>>2;

		fsat = svpwm(abc, dq, phase);
		//fsat = sinpwm(abc, dq, phase);		

/*
		// simple sync motor controller
		dq[0] = 0;
		dq[1] = 100*1024;
		//dq_to_abc(abc, dq, 1023&(phase+100));	
		svpwm(abc, dq, 1023&(phase+0));
*/		
		// set the pwm controller
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
