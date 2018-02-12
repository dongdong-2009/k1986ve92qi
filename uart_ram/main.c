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
void EXTINT4_Handler(void);
void UART2_Handler(void);

uint32_t system_time;
int32_t address = 0;

void (* table_interrupt_vector[48])(void) __attribute__((aligned (4*64)));

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
}

//--- Ports configuration ---
void PortConfig()
{
	// порты для uart
	MDR_RST_CLK->PER_CLOCK |= 1<<29;	 						/* clock of PORTF ON */

	MDR_PORTF->FUNC &= ~( (0x3<<(0<<1)) + (0x3<<(1<<1)) );
	MDR_PORTF->FUNC |= ( (0x3<<(0<<1)) + (0x03<<(1<<1)) );  	/* альтернативная функция PF0,1,3 */
	MDR_PORTF->ANALOG |= (1<<0) + (1<<1);										/* PF0,1,3 is  digital */
	MDR_PORTF->PWR |= (0x3<<(0<<1)) + (0x3<<(1<<1));							/* max power of port */
	MDR_PORTF->OE |= (1<<1);	
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
	//SysTick_Config(SYS_TICKS);
	
}

void set_ram_vt()
{
	// copy vt with default values from flash to ram
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
	table_interrupt_vector[47] = EXTINT4_Handler;
	table_interrupt_vector[23] = UART2_Handler;
	
}

void SysTick_Handler(void)
{
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
	//NVIC_EnableIRQ(Timer1_IRQn); 									// enable in nvic int from timer1		
}

void TIMER1_Handler(void)
{
	MDR_TIMER1->STATUS = 0;
	MDR_SSP1->DR = 0x555; 					// start ssi request
	MDR_ADC->ADC1_CFG |= ADC1_CFG_REG_GO; 	// start adc conversion	
}

void EXTINT4_Handler(void)
{
	MDR_PORTA->RXTX |= 1; // PA0
}

void uart_init(void)
{
	// UART_CLK = 80MHz
	// rate = 115200 k
	// div = 80000/16/115.2 = 43.4028
	MDR_RST_CLK->PER_CLOCK |= (1 << 7);													// enable clock UART2
	MDR_RST_CLK->UART_CLOCK |= (1 << 25);	
	
	MDR_UART2->IBRD = 43;																// 43
	MDR_UART2->FBRD = 26;																// round(0.4028*2^6) = 26

	MDR_UART2->IFLS &= ~(UART_IFLS_RXIFLSEL_Msk | UART_IFLS_TXIFLSEL_Msk);
	MDR_UART2->IFLS |= (2 << UART_IFLS_RXIFLSEL_Pos) | (2 << UART_IFLS_TXIFLSEL_Pos);  			// threshold for FIFO is 1/2
	MDR_UART2->LCR_H |= (1<<UART_LCR_H_FEN_Pos);												// enable FIFO
	MDR_UART2->LCR_H |= (3 << UART_LCR_H_WLEN_Pos);												// word length is 8 bit
	MDR_UART2->CR |= ((1<<UART_CR_RXE_Pos) | (1<<UART_CR_TXE_Pos) | (1<<UART_CR_UARTEN_Pos));	// enable uart 
	
	// config uart irq
	//MDR_UART2->IMSC |= (UART_IMSC_RXIM | UART_IMSC_TXIM);
	//MDR_UART2->IMSC |= ((1<<UART_IMSC_RXIM_Pos) | (1<<UART_IMSC_RTIM_Pos));	// en irq from rx and
	//MDR_UART2->IMSC |= (1<<UART_IMSC_RXIM_Pos);									// en irq from rx and
	MDR_UART2->IMSC |= ((1<<UART_IMSC_RTIM_Pos));								// en irq from rx and
	//NVIC_EnableIRQ(UART2_IRQn);
}

__attribute__ ((section(".main_sec")))

int main()
{
	uint32_t code;
	uint32_t code1 = 0;
	int32_t speed = 0;
	int i = 0;
	int8_t buf[32];
	int8_t mess[] = "hello world\r\n";
	int8_t *pm;
	
	set_ram_vt();
	ClkConfig();
	PortConfig();
	TimerConfig();
	uart_init();

	while(1)
	{		
		//while((MDR_UART2->RIS & UART_RIS_RXRIS) == 0);
		//while((MDR_UART2->RIS & UART_RIS_RTRIS) == 0);
		while((MDR_UART2->MIS & (1<<UART_MIS_RTMIS_Pos)) == 0);
		//__WFI();
		
		i = 0;
		while(0 == (MDR_UART2->FR & (1<<UART_FR_RXFE_Pos))) {
			buf[i] = MDR_UART2->DR; // empting the fifo
			i = (i+1)&7;
		}
		
		if(buf[0] == 'q')
		{
			pm = mess;
			while(*pm) MDR_UART2->DR = *pm++;			
		}
	}
}

void UART2_Handler(void)
{
	uint8_t buf;
	
	if(MDR_UART2->MIS & (1<<UART_MIS_RTMIS_Pos))
	{
		// RX timeout has occured
		while(0 == (MDR_UART2->FR & (1<<UART_FR_RXFE_Pos))) {
			address = MDR_UART2->DR; // empting the fifo
		}
	}
}
