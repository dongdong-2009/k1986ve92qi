#ifndef _MT12864_DEF_H_
#define _MT12864_DEF_H_

#include "MDR32Fx.h"

#define MTSTATUS_BUSY   0x80
#define MTSTATUS_ONOFF  0x20
#define MTSTATUS_RESET  0x10

#define SETPIN_SE MDR_PORTC->RXTX |= (1<<1);
#define SETPIN_SA0 MDR_PORTC->RXTX |= (1<<0);
#define CLRPIN_SE MDR_PORTC->RXTX &= ~(1<<1);
#define CLRPIN_SA0 MDR_PORTC->RXTX &= ~(1<<0);

#define SRW      10
#define SRES     9
#define SE2      8
#define SE1      7

#define SETPIN(x) MDR_PORTB->RXTX |= (1<<(x));
#define CLRPIN(x) MDR_PORTB->RXTX &= ~(1<<(x)); 
#define INVPIN(x) MDR_PORTB->RXTX ^= (1<<(x)); 

#define SELCHIP1    CLRPIN(SE2); SETPIN(SE1);   
#define SELCHIP2    CLRPIN(SE1); SETPIN(SE2);   

#define LCD_PWR_OFF 
#define LCD_PWR_ON  

#define LCD_LIGHT_SWITCH 
#define LCD_LIGHT_ON     
#define LCD_LIGHT_OFF    

#define LCD_contrast   

#endif
