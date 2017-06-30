#include "MDR32Fx.h"

#define NE 12
#define MAXENC (2<<(NE-1))

#define CPU_PLL_MULT 10 // PLL_CLK 80 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 80000 // 1ms for 80 MHz
//#define SYS_TICKS 8000000 // 100ms

#define RST_CLK_PLL_CONTROL_PLL_CPU_MUL_OFFS 8
#define RST_CLK_CPU_CLOCK_HCLK_SEL_OFFS 8
#define RST_CLK_CPU_CLOCK_CPU_C2_SEL_OFFS 2
#define EEPROM_CMD_Delay_OFFS 3


void ClkConfig(void);
void PortConfig(void);
void ssi_init();
void dac_init();
uint32_t b2g(uint32_t b);
uint32_t g2b(uint32_t g);
void set_ram_vt();

void SysTick_Handler(void);
void TIMER1_Handler(void);

uint32_t system_time;

void (* table_interrupt_vector[48])(void) __attribute__((aligned (4*64)));

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
}

//--- Ports configuration ---
void PortConfig()
{
	MDR_RST_CLK->PER_CLOCK|=1<<22;	 				//clock of PORTB ON
	
	MDR_PORTB->FUNC |= (0x00<<0);  	/* mode is port */
	MDR_PORTB->RXTX |= (0x00<<0);	     	/* clear the out */
	MDR_PORTB->OE |= (0x01<<0);					/* port is output mode */
	MDR_PORTB->ANALOG |= (0x01<<0);			/* port is digital mode */
	MDR_PORTB->PWR |= (0x3<<0);		/* max power of port */
	
	// порты для ssp
	MDR_RST_CLK->PER_CLOCK |= 1<<29;	 						/* clock of PORTF ON */

	MDR_PORTF->FUNC &= ~( (0x3<<(0<<1)) + (0x3<<(1<<1)) + (0x3<<(2<<1)) + (0x3<<(3<<1)) );
	MDR_PORTF->FUNC |= ( (0x2<<(0<<1)) + (0x02<<(1<<1)) + (0x02<<(2<<1)) + (0x02<<(3<<1)) );  	/* альтернативная функция PF0,1,3 */
	MDR_PORTF->ANALOG |= (1<<0) + (1<<1) + (1<<2) + (1<<3);										/* PF0,1,3 is  digital */
	MDR_PORTF->PWR |= (0x3<<(0<<1)) + (0x3<<(1<<1)) + (0x3<<(2<<1));							/* max power of port */
	MDR_PORTF->OE |= (1<<0) + (1<<1) + (1<<2);
	MDR_PORTF->OE &= ~(1<<3);
	
	// выход для dac2
	MDR_PORTF->OE |= (1<<0);
	MDR_PORTE->ANALOG &= ~(1<<0); // pe0 - dac2 out
	
	// inputs for adc
	MDR_RST_CLK->PER_CLOCK |= 1<<24;	 				//clock of PORTD ON	
	MDR_PORTD->ANALOG &= ~( (1<<5) + (1<<6) );
}

void ssi_init()
{
	MDR_RST_CLK->PER_CLOCK |= 1<<8;	 				//clock of SPI1
	MDR_RST_CLK->SSP_CLOCK = (1<<RST_CLK_SSP_CLOCK_SSP1_CLK_EN_Pos) | (10 << RST_CLK_SSP_CLOCK_SSP1_BRG_Pos); // SSP1_CLK = HCLK
	
	MDR_SSP1->CR1 = 0;	
	MDR_SSP1->CPSR = 16; // предделитель
	//MDR_SSP1->CR0 = (0x02 << SSP_CR0_SCR_Pos) + (0x00 << SSP_CR0_FRF_Pos) | (11 << SSP_CR0_DSS_Pos) | SSP_CR0_SPO;
	MDR_SSP1->CR0 = (0x02 << SSP_CR0_SCR_Pos) + (0x01 << SSP_CR0_FRF_Pos) + ((NE-1) << SSP_CR0_DSS_Pos);
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

void adc_init()
{
	MDR_RST_CLK->PER_CLOCK |= (1<<17);
	MDR_RST_CLK->ADC_MCO_CLOCK = (0x02 << 4) + (1 << 13);
	
	MDR_ADC->ADC1_CFG = ADC1_CFG_REG_ADON + (6<<ADC1_CFG_REG_CHS_Pos) + 
						ADC1_CFG_REG_CLKS;
}

void dac_init()
{
	MDR_RST_CLK->PER_CLOCK |= (1<<18);
	MDR_DAC->CFG |= (1<<3); // dac2 on
}	

void ClkConfig(void)
{
	MDR_RST_CLK->HS_CONTROL |= 0x00000001; 					// HSE power on, in oscillator mode
	while(0 == (MDR_RST_CLK->CLOCK_STATUS & 0x00000004));	// wait for HSE ready
	
	//MDR_RST_CLK->CPU_CLOCK = 2 + (1<<8); // fHCLK = fHSE
		
	MDR_RST_CLK->CPU_CLOCK = 2 + (1<<2);   // source for CPU_C1 is HSE, fHCLK = fHSI
	// setup for PLL CPU
	MDR_RST_CLK->PLL_CONTROL = (1<<2) + ((CPU_PLL_MULT-1)<<8);
	while(0 == (MDR_RST_CLK->CLOCK_STATUS & 0x02));	// wait for PLL CPU ready	
	MDR_RST_CLK->CPU_CLOCK |= (0x01<<8);  // fHCLK = fCPU_C3
	
	// flash delay
	MDR_EEPROM->CMD |= (EEPROM_DEL << EEPROM_CMD_Delay_OFFS);
						   						   	
	system_time = 0;
	SysTick_Config(SYS_TICKS);
	
}

void set_ram_vt()
{
	// copy vt from flash to ram
	uint32_t i = 0;
	uint32_t *ps = 0;
	uint32_t *pd = (uint32_t*) table_interrupt_vector;
	
	for(i = 0; i < 48; i++){
		*pd++ = ps[i];
	}
	
	// set vtor
	SCB->VTOR = ((uint32_t)table_interrupt_vector);
	table_interrupt_vector[15] = SysTick_Handler;
	table_interrupt_vector[30] = TIMER1_Handler;
}

void SysTick_Handler(void)
{
	//MDR_PORTB->RXTX ^= 1; // PB0
	system_time ++;
}

void TimerConfig(void)
{
	// enable TIM1
	MDR_RST_CLK->PER_CLOCK |= (1 << 14); 							
	MDR_RST_CLK->TIM_CLOCK |= RST_CLK_TIM_CLOCK_TIM1_CLK_EN; 
	MDR_RST_CLK->TIM_CLOCK &= ~RST_CLK_TIM_CLOCK_TIM1_BRG_Msk; // TIM3_CLK = HCLK
	//MDR_RST_CLK->TIM_CLOCK |= (0xff << RST_CLK_TIM_CLOCK_TIM1_BRG_OFFS);
	
	MDR_TIMER1->CNT = 0;
	MDR_TIMER1->PSG = 80 - 1;  // prescaller makes 1 MHz
	MDR_TIMER1->ARR = 200 - 1;	// TIM1 period is 5 KHz
	
	MDR_TIMER1->IE |= TIMER_IE_CNT_ARR_EVENT_IE;					// enable int for CNT=ARR event
	MDR_TIMER1->CNTRL |= TIMER_CNTRL_CNT_EN; 						// start count
	NVIC_EnableIRQ(Timer1_IRQn); 									// enable in nvic int from timer1		
}

void TIMER1_Handler(void)
{
	MDR_TIMER1->STATUS = 0;
	//MDR_PORTB->RXTX ^= 1; // PB0
	MDR_SSP1->DR = 0x555; 					// start ssi request
	//MDR_ADC->ADC1_CFG |= ADC1_CFG_REG_GO; 	// start adc conversion
}

__attribute__ ((section(".main_sec")))

int main()
{
	uint32_t code;
	uint32_t code1 = 0;
	int32_t speed = 0;
	int i = 0;
	
	set_ram_vt();
	ClkConfig();
	PortConfig();
	ssi_init();
	dac_init();
	adc_init();
	TimerConfig();

	while(1)
	{
		__WFI();
	
		if(MDR_SSP1->SR & SSP_SR_RFF) 
		{
			// RX FIFO is full
			MDR_PORTB->RXTX ^= 1; 
						
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
			//MDR_PORTB->RXTX ^= 1; 
			//MDR_DAC->DAC2_DATA = MDR_ADC->ADC1_RESULT;
		}

	}
	
}
