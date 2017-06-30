#include "MDR32Fx.h"

#define CPU_PLL_MULT 10 // PLL_CLK 80 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 80000 // 1ms for 80 MHz
//#define SYS_TICKS 8000000 // 100ms

#define RST_CLK_PLL_CONTROL_PLL_CPU_MUL_OFFS 8
#define RST_CLK_CPU_CLOCK_HCLK_SEL_OFFS 8
#define RST_CLK_CPU_CLOCK_CPU_C2_SEL_OFFS 2
#define EEPROM_CMD_Delay_OFFS 3

uint32_t system_time = 0;

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
}

void PortConfig()
{
	MDR_RST_CLK->PER_CLOCK|=1<<22;	 				//clock of PORTB ON
	
	MDR_PORTB->FUNC |= (0x00<<0);  	/* mode is port */
	MDR_PORTB->RXTX |= (0x00<<0);	     	/* clear the out */
	MDR_PORTB->OE |= (0x01<<0);					/* port is output mode */
	MDR_PORTB->ANALOG |= (0x01<<0);			/* port is digital mode */
	MDR_PORTB->PWR |= (0x3<<0);		/* max power of port */
	
	// Настройка выводов UART2 PF.0 - RX PF.1 - TX
	MDR_RST_CLK->PER_CLOCK |= 1<<29;	 							// clock of PORTF ON
	MDR_PORTF->FUNC &= ~( (0x03 << (0<<1)) | (0x03 << (1<<1)) );
	MDR_PORTF->FUNC |= (0x03 << (0<<1)) | (0x03 << (1<<1)); 	// переопределенная функция PF.0 и PF.1
	MDR_PORTF->ANALOG |= (1 << 0) | (1 << 1);					// PF.0 PF.1 - цифровой режим
	MDR_PORTF->PWR |= (0x03 << (0<<1)) | (0x03 << (1<<1));		// max speed PF.0 PF.1
	MDR_PORTF->RXTX &= ~((1 << 0) | (1 << 1));	     			// очищаем выходы	
}

void ClkConfig(void)
{
	MDR_RST_CLK->HS_CONTROL |= 0x00000001; 					// HSE power on, in oscillator mode
	while(0 == (MDR_RST_CLK->CLOCK_STATUS & 0x00000004));	// wait for HSE ready
	
	MDR_RST_CLK->CPU_CLOCK |= 0x00000002;					// source for CPU_C1 is HSE
	//MDR_RST_CLK->CPU_CLOCK |= 0x00000003;					// source for CPU_C1 is HSE/2
	// setup for PLL CPU
	MDR_RST_CLK->PLL_CONTROL = RST_CLK_PLL_CONTROL_PLL_CPU_ON |
						   ((CPU_PLL_MULT-1) << RST_CLK_PLL_CONTROL_PLL_CPU_MUL_OFFS);
	while(0 == (MDR_RST_CLK->CLOCK_STATUS & RST_CLK_CLOCK_STATUS_PLL_CPU_RDY));	// wait for PLL CPU ready
	
	// flash delay
	MDR_EEPROM->CMD |= (EEPROM_DEL << EEPROM_CMD_Delay_OFFS);
						   						   
	MDR_RST_CLK->CPU_CLOCK |= (1 << RST_CLK_CPU_CLOCK_HCLK_SEL_OFFS);	// source for HCLK is CPU_C3
	MDR_RST_CLK->CPU_CLOCK |= (1 << RST_CLK_CPU_CLOCK_CPU_C2_SEL_OFFS);	// source for CPU_C2 is PLLCPUo
	
	SysTick_Config(SYS_TICKS);
}

void SysTick_Handler(void)
{
	system_time ++;
}
