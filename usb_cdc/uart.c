#include "MDR32Fx.h"

#define UART_IFLS_RXIFLSEL_MASK                 ((uint32_t)0x00000038)
#define UART_IFLS_TXIFLSEL_MASK                 ((uint32_t)0x00000007)
#define UART_IFLS_RXIFLSEL_OFFS                 3
#define UART_IFLS_TXIFLSEL_OFFS                 0
#define UART_LCR_H_WLEN_OFFS                    5

void uart2_putch(char ch)
{
	while( MDR_UART2->FR & UART_FR_TXFF );	//wait until Tx FIFO full
	MDR_UART2->DR = ch;
}

void UartConfig(void)
{
	// UART_CLK = 80MHz
	// rate = 115200 k
	// div = 80000/16/115.2 = 43.4028
	MDR_RST_CLK->PER_CLOCK |= (1 << 7);								// enable clock UART2
	MDR_RST_CLK->UART_CLOCK |= (1 << 25);	
	
	MDR_UART2->IBRD = 43;											// 43
	MDR_UART2->FBRD = 26;											// round(0.4028*2^6) = 26

	MDR_UART2->IFLS &= ~(UART_IFLS_RXIFLSEL_MASK | UART_IFLS_TXIFLSEL_MASK);
	MDR_UART2->IFLS |= (4 << UART_IFLS_RXIFLSEL_OFFS) | (4 << UART_IFLS_TXIFLSEL_OFFS);  // threshold for FIFO is 7/8
	MDR_UART2->LCR_H |= UART_LCR_H_FEN;								// enable FIFO
	MDR_UART2->LCR_H |= 3 << UART_LCR_H_WLEN_OFFS;					// word length is 8 bit
	MDR_UART2->CR |= (UART_CR_RXE | UART_CR_TXE | UART_CR_UARTEN); 	// enable uart 
	
	// config uart irq
	//UART2->IMSC |= (UART_IMSC_RXIM | UART_IMSC_TXIM);
	//NVIC_EnableIRQ(UART1_IRQn);
}	

/*void UART2_Handler(void)
{
	
}
*/
