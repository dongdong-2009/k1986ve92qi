#include "gdef.h"
#include "buttons_def.h"

static unsigned char butstate;

/*--------------------------------------------------------------------------------*/
void init_buttons(void)
{
    P2DIR &= ~(BUT_ENTER+BUT_ESCAPE+BUT_RIGHT+BUT_LEFT+BUT_UP+BUT_DOWN);  
    P2IFG &= ~(BUT_ENTER+BUT_ESCAPE+BUT_RIGHT+BUT_LEFT+BUT_UP+BUT_DOWN);                
    P2IE |= BUT_ENTER+BUT_ESCAPE+BUT_RIGHT+BUT_LEFT+BUT_UP+BUT_DOWN;      

#ifdef BUT_CLICKDOWN    
    P2IES &= ~(BUT_ENTER+BUT_ESCAPE+BUT_RIGHT+BUT_LEFT+BUT_UP+BUT_DOWN);       
#else
    P2IES |= BUT_ENTER+BUT_ESCAPE+BUT_RIGHT+BUT_LEFT+BUT_UP+BUT_DOWN;       
#endif    
    
    butstate = 0;   
}
/*--------------------------------------------------------------------------------*/
unsigned char get_butclick(void)
{
    unsigned char ret = butstate;
    butstate = 0;
    return ret;    
}   
/*--------------------------------------------------------------------------------
 Прерывание 
--------------------------------------------------------------------------------*/
#pragma vector=PORT2_VECTOR
__interrupt void Port2 (void)
{
  butstate = P2IFG;
  P2IFG &= ~(BUT_ENTER+BUT_ESCAPE+BUT_RIGHT+BUT_LEFT+BUT_UP+BUT_DOWN);            
  _BIC_SR_IRQ(CPUOFF);                
}
/*--------------------------------------------------------------------------------*/


