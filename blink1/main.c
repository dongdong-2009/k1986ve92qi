
#include "MDR32Fx.h"


void ClkConfig(void);
void PortConfig(void);

int Current_Led;
uint32_t i;
int main()
{
	PortConfig();
	Current_Led=0;
	while(1)
	{
		MDR_PORTB->RXTX ^= 1; // PB0

		for(i=0;i<100000;i++); 					//Pause
	}
	
	ITM_SendChar( 65 );
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
