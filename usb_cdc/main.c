#include "MDR32Fx.h"
#include "xprintf.h"
#include "usb_desc.h"
#include "usb_def.h"

extern void ClkConfig(void);
extern void PortConfig(void);
extern void UartConfig(void);
extern void uart2_putch(char ch);
extern void usb_device_init(void);
extern void usb_device_update(void);

void SystemInit(void);

int Current_Led;
uint32_t i;
uint32_t test_pwm = 500;

extern int sleep(uint32_t ms);

int main()
{
	char ch;
	char buf[] = "hello world\r\n";
	SystemInit();
	
	xdev_out(uart2_putch);
	
	Current_Led=0;
	int i = 0;

	while(1)
	{
		
		//PORTD->RXTX^=1<<(7+Current_Led++);
		//if(Current_Led>7) Current_Led=0;
		
/*		
		for(i = 0; i < sizeof(buf); i++){
			UART1->DR = buf[i];
			while( UART1->FR & UART_FR_TXFF );	//wait until Tx FIFO full
		}
*/
		
		/*
		while(0 == (UART1->FR & UART_FR_RXFF));			// wait for filling fifo		
		while(0 == (UART1->FR & UART_FR_RXFE)) {
			ch = UART1->DR; // empting the fifo		
			PORTD->RXTX |= 0xffff;
			sleep(1000);
			PORTD->RXTX &= ~0xffff;
			sleep(1000);
		}
		*/
		
		/*xprintf("hello\r\n");
		sleep(1000);*/
		
		usb_device_update();
		
	}
}

void SystemInit(void)
{
	ClkConfig();
	PortConfig();
	UartConfig();
	usb_device_init();	
	
}	
