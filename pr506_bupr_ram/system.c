#include "gdef.h"

void SysTick_Handler(void);
extern void TIMER1_Handler(void);
extern void TIMER3_Handler(void);
void UART1_Handler(void);

uint32_t system_time;
void (* table_interrupt_vector[48])(void) __attribute__((aligned (4*64)));

uint8_t uart_buf[16];
uint32_t uart_rxidx = 0;

//--- Ports configuration ---
void PortConfig()
{
	MDR_RST_CLK->PER_CLOCK |= 1<<21;	 	//clock of PORTA ON	
	MDR_PORTA->FUNC = 0;
	MDR_PORTA->RXTX = 0; 
	MDR_PORTA->OE = 0xff;					/* output mode */
	MDR_PORTA->ANALOG = 0xffff;				/* digital mode */
	MDR_PORTA->PWR = 0xffff;				/* max power */

	// port B
	// порты для ssp PB13-CLK PB14-RXD
	MDR_RST_CLK->PER_CLOCK |= 1<<22;	 						/* clock of PORTB ON */
	MDR_PORTB->FUNC &= ~( (0x3<<(13<<1)) + (0x3<<(14<<1)) );
	MDR_PORTB->FUNC |= ( (0x2<<(13<<1)) + (0x02<<(14<<1)) );  	/* альтернативная функция */
	MDR_PORTB->ANALOG |= (1<<13) + (1<<14);										/* digital */
	MDR_PORTB->PWR |= (0x3<<(13<<1)) + (0x3<<(14<<1));							/* max power of port */
	MDR_PORTB->OE |= (1<<13);
	MDR_PORTB->OE &= ~(1<<14);
	
	// порты для uart1 PB5-TXD PB6-RXD
	MDR_PORTB->FUNC &= ~( (0x3<<(5<<1)) + (0x3<<(6<<1)) );
	MDR_PORTB->FUNC |= ( (0x2<<(5<<1)) + (0x02<<(6<<1)) );  			/* альтернативная функция */
	MDR_PORTB->ANALOG |= (1<<5) + (1<<6);								/* digital */
	MDR_PORTB->PWR |= (0x3<<(5<<1)) + (0x3<<(6<<1));					/* max power of port */
	//MDR_PORTB->OE |= (1<<1);
	
	/* port C
	 * PC0 		nRE_1
	 * PC1 		DE_1
	 * PC14 	nRE_2
	 * PC15 	DE_2
	 * PC2-PC3 	TIM3_CH1 - Ф1
	 * PC4-PC5 	TIM3_CH2 - Ф2
	 * PC6-PC7 	TIM3_CH3 - Ф3
	 * PC8-PC9 	TIM3_CH4 - тормозная муфта
	 */
	MDR_RST_CLK->PER_CLOCK |= 1<<23;	 						/* clock of PORTC ON */	
	// альтернативная функция
	MDR_PORTC->FUNC = (0x02 << (2<<1)) + (0x02 << (3<<1)) +
					  (0x02 << (4<<1)) + (0x02 << (5<<1)) +
					  (0x02 << (6<<1)) + (0x02 << (7<<1)) +
					  (0x02 << (8<<1)) + (0x02 << (9<<1));
	
	MDR_PORTC->ANALOG  = 0xffff;													/* all digital */
	MDR_PORTC->PWR = 0xffffffff;													/* max power of port */
	MDR_PORTC->OE =  0xffff;
	MDR_PORTC->RXTX &= ~((1<<0) + (1<<1));
	MDR_PORTC->RXTX |= ((1<<14) + (1<<15));
	
	// port F
	MDR_RST_CLK->PER_CLOCK |= 1<<29;	 						/* clock of PORTF ON */
	MDR_PORTF->FUNC = 0;
	MDR_PORTF->OE |= (1<<14) + (1<<15);					/* output mode */
	MDR_PORTF->ANALOG |= (1<<14) + (1<<15);				/* digital mode */
	MDR_PORTF->PWR = 0xffffffff;						/* max power */	
	MDR_PORTF->RXTX |= ((1<<14) + (1<<15));
	
	// выход для dac1 dac2
	MDR_RST_CLK->PER_CLOCK |= 1<<25;	 				//clock of PORTE ON	
	MDR_PORTE->ANALOG &= ~((1<<0)+(1<<9)); // pe0 - dac2 out pe9 - dac1 out
	
	// inputs for adc
	MDR_RST_CLK->PER_CLOCK |= 1<<24;	 				//clock of PORTD ON	
	MDR_PORTD->ANALOG &= ~( (1<<7) + (1<<8) ); 			// PD5...PD11 входы АЦП
	
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

void TimerConfig(void)
{
	// enable TIM1

	MDR_RST_CLK->PER_CLOCK |= (1 << 14);
	MDR_RST_CLK->TIM_CLOCK &= ~(0xff << 0);
	MDR_RST_CLK->TIM_CLOCK |= (1 << 24);
	
	MDR_TIMER1->CNT = 0;
	MDR_TIMER1->PSG = 24 - 1;
	MDR_TIMER1->ARR = 1024 - 1;
	
	MDR_TIMER1->IE |= TIMER_IE_CNT_ARR_EVENT_IE;					// прерывание по событию  ARR=CNT
//	NVIC_EnableIRQ(Timer1_IRQn); 									// enable in nvic int from tim3	
	MDR_TIMER1->CNTRL = TIMER_CNTRL_CNT_EN; 						// start count up	

	
	// enable TIM3
	MDR_RST_CLK->PER_CLOCK |= (1 << 16);
	MDR_RST_CLK->TIM_CLOCK &= ~(0xff << 16);
	MDR_RST_CLK->TIM_CLOCK |= (1 << 26);
	
	MDR_TIMER3->CNT = 0;
	MDR_TIMER3->PSG = 3 - 1;   		/* prescaller */
	MDR_TIMER3->ARR = 1024 - 1;		/* TIM4 period is 26.042KHz */
	MDR_TIMER3->CCR1 = 512;
	MDR_TIMER3->CCR2 = 512;
	MDR_TIMER3->CCR3 = 512;

	// channel 1
	MDR_TIMER3->CH1_CNTRL &= ~TIMER_CH_CNTRL_OCCM_Msk;				
	
	//MDR_TIMER3->CH1_CNTRL |= (1 << TIMER_CH_CNTRL_OCCM_Pos);									// 000: REF = 1 if CNT=ARR
	//MDR_TIMER3->CH1_CNTRL |= (6 << TIMER_CH_CNTRL_OCCM_Pos);									// 110: 1, если DIR= 0 (счет вверх), CNT<CCR, иначе 0
	MDR_TIMER3->CH1_CNTRL |= (7 << TIMER_CH_CNTRL_OCCM_Pos);									// 111: 0, если DIR= 0 (счет вверх), CNT<CCR, иначе 1
	
	MDR_TIMER3->CH1_CNTRL1 &= ~(TIMER_CH_CNTRL1_SELO_Msk | TIMER_CH_CNTRL1_SELOE_Msk);		// настройка прямого выхода канала 1
	MDR_TIMER3->CH1_CNTRL1 |= (3 << TIMER_CH_CNTRL1_SELO_Pos);	    							// на прямой выход канала 1 идет сигнал с DTG
	MDR_TIMER3->CH1_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_Pos);	    						// прямой выход канала 1 всегда работает на выход на OE всегда 1
	
	MDR_TIMER3->CH1_CNTRL1 &= ~(TIMER_CH_CNTRL1_NSELO_Msk | TIMER_CH_CNTRL1_NSELOE_Msk);		// настройка инверсного выхода канала 1
	MDR_TIMER3->CH1_CNTRL1 |= (3 << TIMER_CH_CNTRL1_NSELO_Pos);	    						// на инверсный выход канала 1 идет сигнал с DTG
	MDR_TIMER3->CH1_CNTRL1 |= (1 << TIMER_CH_CNTRL1_NSELOE_Pos);	    						// инверсный выход канала 1 всегда работает на выход на OE всегда 1	
	MDR_TIMER3->CH1_CNTRL2 |= (1<<3); // CRRRLD on

	// channel 2
	MDR_TIMER3->CH2_CNTRL &= ~TIMER_CH_CNTRL_OCCM_Msk;					
	MDR_TIMER3->CH2_CNTRL |= (7 << TIMER_CH_CNTRL_OCCM_Pos);									// 111: 0, если DIR= 0 (счет вверх), CNT<CCR, иначе 1
	
	MDR_TIMER3->CH2_CNTRL1 &= ~(TIMER_CH_CNTRL1_SELO_Msk | TIMER_CH_CNTRL1_SELOE_Msk);		// настройка прямого выхода канала 1
	MDR_TIMER3->CH2_CNTRL1 |= (3 << TIMER_CH_CNTRL1_SELO_Pos);	    							// на прямой выход канала 1 идет сигнал с DTG
	MDR_TIMER3->CH2_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_Pos);	    						// прямой выход канала 1 всегда работает на выход на OE всегда 1
	
	MDR_TIMER3->CH2_CNTRL1 &= ~(TIMER_CH_CNTRL1_NSELO_Msk | TIMER_CH_CNTRL1_NSELOE_Msk);		// настройка инверсного выхода канала 1
	MDR_TIMER3->CH2_CNTRL1 |= (3 << TIMER_CH_CNTRL1_NSELO_Pos);	    						// на инверсный выход канала 1 идет сигнал с DTG
	MDR_TIMER3->CH2_CNTRL1 |= (1 << TIMER_CH_CNTRL1_NSELOE_Pos);	    						// инверсный выход канала 1 всегда работает на выход на OE всегда 1		
	MDR_TIMER3->CH2_CNTRL2 |= (1<<3); // CRRRLD on

	// channel 3
	MDR_TIMER3->CH3_CNTRL &= ~TIMER_CH_CNTRL_OCCM_Msk;					
	MDR_TIMER3->CH3_CNTRL |= (7 << TIMER_CH_CNTRL_OCCM_Pos);									// 111: 0, если DIR= 0 (счет вверх), CNT<CCR, иначе 1
	
	MDR_TIMER3->CH3_CNTRL1 &= ~(TIMER_CH_CNTRL1_SELO_Msk | TIMER_CH_CNTRL1_SELOE_Msk);		// настройка прямого выхода канала 1
	MDR_TIMER3->CH3_CNTRL1 |= (3 << TIMER_CH_CNTRL1_SELO_Pos);	    							// на прямой выход канала 1 идет сигнал с DTG
	MDR_TIMER3->CH3_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_Pos);	    						// прямой выход канала 1 всегда работает на выход на OE всегда 1
	
	MDR_TIMER3->CH3_CNTRL1 &= ~(TIMER_CH_CNTRL1_NSELO_Msk | TIMER_CH_CNTRL1_NSELOE_Msk);		// настройка инверсного выхода канала 1
	MDR_TIMER3->CH3_CNTRL1 |= (3 << TIMER_CH_CNTRL1_NSELO_Pos);	    						// на инверсный выход канала 1 идет сигнал с DTG
	MDR_TIMER3->CH3_CNTRL1 |= (1 << TIMER_CH_CNTRL1_NSELOE_Pos);	    						// инверсный выход канала 1 всегда работает на выход на OE всегда 1		
	MDR_TIMER3->CH3_CNTRL2 |= (1<<3); // CRRRLD on

	// setting for dead time generator (DTG)
	//MDR_TIMER3->CH1_DTG |= (1 << 4);
	//MDR_TIMER3->CH1_DTG |= 15;
	MDR_TIMER3->CH1_DTG |= ((0xff&(150)) << 5); 					// delay DTG	
	MDR_TIMER3->CH2_DTG |= ((0xff&(150)) << 5); 					// delay DTG	
	MDR_TIMER3->CH3_DTG |= ((0xff&(150)) << 5); 					// delay DTG	

	MDR_TIMER3->IE |= TIMER_IE_CNT_ARR_EVENT_IE;					// прерывание по событию  ARR=CNT
	NVIC_EnableIRQ(Timer3_IRQn); 									// enable in nvic int from tim3	

	MDR_TIMER3->CNTRL = TIMER_CNTRL_CNT_EN; 						// start count up
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
	table_interrupt_vector[22] = UART1_Handler;	
	table_interrupt_vector[30] = TIMER1_Handler;
	table_interrupt_vector[32] = TIMER3_Handler;
	//table_interrupt_vector[33] = ADC_Handler;
	
}

void uart_init(void)
{
	uart_rxidx = 0;
	
	// UART_CLK = 80MHz
	// rate = 115200 k
	// div = 80000/16/115.2 = 43.4028
	MDR_RST_CLK->PER_CLOCK |= (1 << 6);													// enable clock UART1
	MDR_RST_CLK->UART_CLOCK |= (1 << 24);	
	
	//MDR_UART1->IBRD = 43;																// 43
	//MDR_UART1->FBRD = 26;																// round(0.4028*2^6) = 26

	MDR_UART1->IBRD = 4; // rate = 1250k
	MDR_UART1->FBRD = 0;

	MDR_UART1->IFLS &= ~(UART_IFLS_RXIFLSEL_Msk | UART_IFLS_TXIFLSEL_Msk);
	MDR_UART1->IFLS |= (2 << UART_IFLS_RXIFLSEL_Pos) | (1 << UART_IFLS_TXIFLSEL_Pos);  			// threshold for FIFO is 1/2
	MDR_UART1->LCR_H |= (1<<UART_LCR_H_FEN_Pos);												// enable FIFO
	MDR_UART1->LCR_H |= (3 << UART_LCR_H_WLEN_Pos);												// word length is 8 bit
	MDR_UART1->CR |= ((1<<UART_CR_RXE_Pos) | (1<<UART_CR_TXE_Pos) | (1<<UART_CR_UARTEN_Pos));	// enable uart 
	
	// config uart irq
	//MDR_UART1->IMSC |= (UART_IMSC_RXIM | UART_IMSC_TXIM);
	//MDR_UART1->IMSC |= ((1<<UART_IMSC_RXIM_Pos) | (1<<UART_IMSC_RTIM_Pos));	// en irq from rx and
	MDR_UART1->IMSC |= (1<<UART_IMSC_RXIM_Pos);									// en irq from rx and
	MDR_UART1->IMSC |= ((1<<UART_IMSC_RTIM_Pos));								// en irq from rx and
	
	//NVIC_EnableIRQ(UART1_IRQn);

}

void system_init()
{
	set_ram_vt();
	ClkConfig();
	PortConfig();
	TimerConfig();
	uart_init();
	
	//NVIC_SetPriorityGrouping(0); 
	//NVIC_SetPriority(Timer3_IRQn, 1);	
	//NVIC_SetPriority(UART1_IRQn, 0);	
}

void SysTick_Handler(void)
{
	system_time ++;
}

extern uint32_t tcnt;	
extern uint32_t tpll;

void UART1_Handler(void)
{
	//MDR_PORTA->RXTX |= 0x01; // PA0	
	
	//if(MDR_UART1->MIS & (1<<UART_MIS_RTMIS_Pos))
	if(MDR_UART1->MIS & (1<<UART_MIS_RXMIS_Pos))
	{
		//MDR_PORTA->RXTX |= 0x01; // PA0	
		// RX timeout has occured
		while(0 == (MDR_UART1->FR & (1<<UART_FR_RXFE_Pos))) {
			char buf = MDR_UART1->DR; // empting the fifo
			//uart_buf[uart_rxidx] = MDR_UART1->DR; // empting the fifo
			//uart_rxidx = (uart_rxidx+1) & 0x0f;
		}
		//MDR_PORTA->RXTX &= ~0x01; // PA0
		
		uint16_t t = MDR_TIMER1->CNT; 
		uint16_t tr = MDR_TIMER1->ARR >> 1;
		if(t < tr) MDR_TIMER1->CNT -= 1;
		else MDR_TIMER1->CNT += 1;
	}		
	
	if(MDR_UART1->MIS & (1<<UART_MIS_RTMIS_Pos)){
		//MDR_PORTA->RXTX |= 0x01; // PA0	
		while(0 == (MDR_UART1->FR & (1<<UART_FR_RXFE_Pos))) {
			char buf = MDR_UART1->DR; // empting the fifo
		}
		//MDR_PORTA->RXTX &= ~0x01; // PA0	
	}
	
	//MDR_PORTA->RXTX &= ~0x01; // PA0	
}
