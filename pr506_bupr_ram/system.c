#include "gdef.h"

void SysTick_Handler(void);
extern void TIMER3_Handler(void);

uint32_t system_time;
void (* table_interrupt_vector[48])(void) __attribute__((aligned (4*64)));

//--- Ports configuration ---
void PortConfig()
{
	MDR_RST_CLK->PER_CLOCK |= 1<<21;	 	//clock of PORTA ON	
	MDR_PORTA->FUNC = 0;
	MDR_PORTA->RXTX = 0; 
	MDR_PORTA->OE = 0xff;					/* output mode */
	MDR_PORTA->ANALOG = 0xffff;				/* digital mode */
	MDR_PORTA->PWR = 0xffff;				/* max power */
	
	// порты для ssp PB13-CLK PB14-RXD
	MDR_RST_CLK->PER_CLOCK |= 1<<22;	 						/* clock of PORTB ON */
	MDR_PORTB->FUNC &= ~( (0x3<<(13<<1)) + (0x3<<(14<<1)) );
	MDR_PORTB->FUNC |= ( (0x2<<(13<<1)) + (0x02<<(14<<1)) );  	/* альтернативная функция */
	MDR_PORTB->ANALOG |= (1<<13) + (1<<14);										/* digital */
	MDR_PORTB->PWR |= (0x3<<(13<<1)) + (0x3<<(14<<1));							/* max power of port */
	MDR_PORTB->OE |= (1<<13);
	MDR_PORTB->OE &= ~(1<<14);
	
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
	table_interrupt_vector[32] = TIMER3_Handler;
	//table_interrupt_vector[33] = ADC_Handler;
	
}

void system_init()
{
	set_ram_vt();
	ClkConfig();
	PortConfig();
	TimerConfig();
}

void SysTick_Handler(void)
{
	system_time ++;
}
