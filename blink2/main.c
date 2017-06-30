#include "MDR32Fx.h"

void ClkConfig(void);
void PortConfig(void);

int Current_Led;
uint32_t i;
uint32_t system_time = 0;

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
}

int main()
{
	ClkConfig();
	PortConfig();
	while(1)
	{
		//MDR_PORTB->RXTX ^= 1; // PB0
		sleep(1000);
		
	}
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
}

#define CPU_PLL_MULT 10 // PLL_CLK 80 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 80000 // 1ms for 80 MHz
//#define SYS_TICKS 8000000 // 100ms

#define RST_CLK_PLL_CONTROL_PLL_CPU_MUL_OFFS 8
#define RST_CLK_CPU_CLOCK_HCLK_SEL_OFFS 8
#define RST_CLK_CPU_CLOCK_CPU_C2_SEL_OFFS 2
#define EEPROM_CMD_Delay_OFFS 3

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
	MDR_PORTB->RXTX ^= 1; // PB0
	system_time ++;
}

