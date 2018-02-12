#ifndef _MT12864_DEF_H_
#define _MT12864_DEF_H_

#define MTSTATUS_BUSY   0x80
#define MTSTATUS_ONOFF  0x20
#define MTSTATUS_RESET  0x10

#define SETPIN(SE) PORTC->RXTX |= (1<<1);
#define SETPIN(SA0) PORTC->RXTX |= (1<<0);
#define CLRPIN(SE) PORTC->RXTX &= ~(1<<1);
#define CLRPIN(SA0) PORTC->RXTX &= ~(1<<0);

#define SRW      10
#define SRES     9
#define SE2      8
#define SE1      7

#define SETPIN(x) PORTB->RXTX |= (1<<(x));
#define CLRPIN(x) PORTB->RXTX &= ~(1<<(x)); 
#define INVPIN(x) PORTB->RXTX ^= (1<<(x)); 

#define SELCHIP1    CLRPIN(SE2); SETPIN(SE1);   
#define SELCHIP2    CLRPIN(SE1); SETPIN(SE2);   

#define LCD_PWR_OFF 
#define LCD_PWR_ON  

#define LCD_LIGHT_SWITCH 
#define LCD_LIGHT_ON     
#define LCD_LIGHT_OFF    

#define LCD_contrast   

#endif
