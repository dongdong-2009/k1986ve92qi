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

int32_t pcurrent = 0;

int update_mode(void);
void test1_proc(void);
void test2_proc(void);
void test3_proc(void);
void test_null(void);

void (*test_proc)(void) = test_null;

static inline void debug_signal(int32_t s)
{
	MDR_DAC->DAC2_DATA = s+2048;
}


//------------------------------------------
static inline void brake_on()
{
	//MDR_PORTF->RXTX |= ((1<<14) + (1<<15));
	MDR_PORTF->RXTX &= ~(1<<15);
}

static inline void brake_off()
{
	//MDR_PORTF->RXTX |= ((1<<14) + (1<<15));
	MDR_PORTF->RXTX |= (1<<15);
}

static inline void motor_off()
{
	MDR_PORTF->RXTX &= ~(1<<14);
}

static inline void motor_on()
{
	MDR_PORTF->RXTX |= (1<<14);
}
//----------------------------------------

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
	MDR_SSP1->DR = 0x555; // start encoder request
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
	//adc_dma_start();
}

int update_mode()
{
	int r=0;
	
	if(MDR_PORTB->RXTX & (1<<0)){
		// test1
		test_proc = &test1_proc;
		r = 1;
	}else if(MDR_PORTB->RXTX & (1<<1)){
		// test2
		test_proc = &test2_proc;		
		r = 2;
	}else if(MDR_PORTB->RXTX & (1<<2)){
		// test3
		test_proc = &test3_proc;
		r = 3;
	}
	return r;
}
void test_null()
{
	update_mode();
}

const uint16_t maskc	[3] = {(1<<11),(1<<12),(1<<13)};
const uint16_t maskb	[7] = {(1<<3), (1<<5), (1<<4), (1<<6), (1<<10),(1<<11),(1<<8)};
const uint16_t maska[16] = {(1<<0), (1<<1), (1<<2), (1<<3), (1<<4), (1<<5),	(1<<6), (1<<7), 
							(1<<8), (1<<9), (1<<10), (1<<11), (1<<12), (1<<13), (1<<14), (1<<15)};
void test1_proc(void)
{
	MDR_PORTB->RXTX &= ~( (1<<3)+(1<<4)+(1<<5)+(1<<6) );
	MDR_PORTB->RXTX |= (1<<3);
	
	uint16_t m = 1;
	int i = 0;
	
	while(1) {
	
		for(i = 0; i < 7; i++){			
			MDR_PORTB->RXTX = maskb[i];
			sleep(500);
			if(update_mode()) goto test1_exit;
		}
		MDR_PORTB->RXTX = 0;			
	
		for(i = 0; i < 3; i++){			
			MDR_PORTC->RXTX = maskc[i];
			sleep(500);
			if(update_mode()) goto test1_exit;
		}
		MDR_PORTC->RXTX = 0;
		
		for(i = 0; i < 16; i++){			
			MDR_PORTA->RXTX = maska[i];
			sleep(500);
			if(update_mode()) goto test1_exit;
		}
		MDR_PORTA->RXTX = 0;


	}

test1_exit:
	MDR_PORTC->RXTX = 0;
	MDR_PORTB->RXTX = 0;	
	MDR_PORTA->RXTX = 0;	
}
void test2_proc(void)
{
	int i = 0;
	while(1) {
		for(i=0; i < 4; i++) {
			MDR_PORTC->RXTX = 0xffff;
			MDR_PORTB->RXTX = 0xffff;
			MDR_PORTA->RXTX = 0xffff;
		}
		for(i=0; i < 80; i++) {
			MDR_PORTC->RXTX = 0;
			MDR_PORTB->RXTX = 0;
			MDR_PORTA->RXTX = 0;
		}
		if(update_mode()) break;
	}		

	MDR_PORTC->RXTX = 0;
	MDR_PORTB->RXTX = 0;	
	MDR_PORTA->RXTX = 0;
}
void test3_proc(void)
{
	MDR_PORTB->RXTX = (1<<5);	

	MDR_PORTC->RXTX &= ~((1<<0) + (1<<1));
	MDR_PORTC->RXTX |= ((1<<14) + (1<<15));		
	
	if(update_mode())
	{	
		MDR_PORTC->RXTX &= ~((1<<14) + (1<<15));		
		MDR_PORTB->RXTX &= ~(1<<5);
	}
}

void test4_proc(void)
{
	MDR_PORTB->RXTX = (1<<6);
	
	motor_on();
	brake_off();
	
	if(update_mode())
	{	
		motor_off();
		brake_on();		
		MDR_PORTB->RXTX &= ~(1<<6);
	}
}

int main()
{
	uint32_t code;
	uint32_t code1 = 0;
	int i = 0, j = 0;
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
	
	MDR_RST_CLK->PER_CLOCK |= 1<<22;	 						
	MDR_PORTB->ANALOG |= 0x07;
	
	int but = 0;
	j = 0;
	for(i = 0; i < 1000; i++){
		if(but = (MDR_PORTB->RXTX & 0x07)) j++;
	}
	
	if(j){
		while(MDR_PORTB->RXTX & 0x07);
	}
	else
		while(0 == (MDR_PORTB->RXTX & 0x07));

	system_init();	
	ssi_init();
	//dac_init();
	//adc_dma_init();	
	
	brake_on();
	motor_off();

	if(but){
		test_proc = &test4_proc;
		(but & (1<<0)) && (MDR_TIMER3->CCR1 = 200);
		(but & (1<<1)) && (MDR_TIMER3->CCR2 = 400);
		(but & (1<<2)) && (MDR_TIMER3->CCR3 = 600);
	}
	
	while(1){
		test_proc();
	}

}
