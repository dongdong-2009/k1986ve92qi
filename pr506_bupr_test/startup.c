extern unsigned long _data_flash;
extern unsigned long _data_begin;
extern unsigned long _data_end;
extern unsigned long _bss_begin;
extern unsigned long _bss_end;
extern unsigned long _stack_end;

extern int main(void);
/* Vector Table */

void Reset_Handler(void) __attribute__ ((weak,  alias ("handler_reset")));
void NMI_Handler(void) __attribute__ ((weak,  alias ("default_handler")));
void HardFault_Handler(void) __attribute__ ((weak,  alias ("default_handler")));
void MemManage_Handler(void) __attribute__ ((weak,  alias ("default_handler")));
void BusFault_Handler(void) __attribute__ ((weak,  alias ("default_handler")));
void UsageFault_Handler(void) __attribute__ ((weak,  alias ("default_handler")));
void SVC_Handler(void) __attribute__ ((weak,  alias ("default_handler")));
void DebugMon_Handler(void) __attribute__ ((weak,  alias ("default_handler")));
void PendSV_Handler(void) __attribute__ ((weak,  alias ("default_handler")));
void SysTick_Handler(void) __attribute__ ((weak,  alias ("default_handler")));

void      CAN1_IRQHandler(void)            __attribute__ ((weak,  alias ("default_handler")));
void      CAN2_IRQHandler(void)            __attribute__ ((weak,  alias ("default_handler")));
void      USB_IRQHandler(void)             __attribute__ ((weak,  alias ("default_handler")));
void      DMA_IRQHandler(void)             __attribute__ ((weak,  alias ("default_handler")));
void      UART1_IRQHandler(void)           __attribute__ ((weak,  alias ("default_handler")));
void      UART2_IRQHandler(void)           __attribute__ ((weak,  alias ("default_handler")));
void      SSP1_IRQHandler(void)            __attribute__ ((weak,  alias ("default_handler")));
void      I2C_IRQHandler(void)             __attribute__ ((weak,  alias ("default_handler")));
void      POWER_IRQHandler(void)           __attribute__ ((weak,  alias ("default_handler")));
void      WWDG_IRQHandler(void)            __attribute__ ((weak,  alias ("default_handler")));
void      Timer1_IRQHandler(void)          __attribute__ ((weak,  alias ("default_handler")));
void      Timer2_IRQHandler(void)          __attribute__ ((weak,  alias ("default_handler")));
void      Timer3_IRQHandler(void)          __attribute__ ((weak,  alias ("default_handler")));
void      ADC_IRQHandler(void)            __attribute__ ((weak,  alias ("default_handler")));
void      COMPARATOR_IRQHandler(void)      __attribute__ ((weak,  alias ("default_handler")));
void      SSP2_IRQHandler(void)            __attribute__ ((weak,  alias ("default_handler")));
void      BACKUP_IRQHandler(void)          __attribute__ ((weak,  alias ("default_handler")));
void      EXT_INT1_IRQHandler(void)        __attribute__ ((weak,  alias ("default_handler")));
void      EXT_INT2_IRQHandler(void)        __attribute__ ((weak,  alias ("default_handler")));
void      EXT_INT3_IRQHandler(void)        __attribute__ ((weak,  alias ("default_handler")));
void      EXT_INT4_IRQHandler(void)        __attribute__ ((weak,  alias ("default_handler")));

void handler_reset(void)
{
	unsigned long *source;
	unsigned long *destination;
	// Copying data from Flash to RAM
	source = &_data_flash;
	for (destination = &_data_begin; destination < &_data_end;)
	{
	*(destination++) = *(source++);
	}
	// default zero to undefined variables
	for (destination = &_bss_begin; destination < &_bss_end;)
	{
	*(destination++) = 0;
	}
	
	// starting main program
	main();
}

void default_handler(void)
{
	while (1)
	{
	//loop
	}
}

__attribute__ ((section(".interrupt_vector")))

void (* const table_interrupt_vector[])(void) = 
{
	(void *) &_stack_end,
	Reset_Handler,              // Reset Handler
	NMI_Handler,                // NMI Handler
	HardFault_Handler,          // Hard Fault Handler
	MemManage_Handler,          // MPU Fault Handler
	BusFault_Handler,           // Bus Fault Handler
	UsageFault_Handler,         // Usage Fault Handler
	0,                          // Reserved
	0,                          // Reserved
	0,                          // Reserved
	0,                          // Reserved
	SVC_Handler,                // SVCall Handler
	DebugMon_Handler,           // Debug Monitor Handler
	0,                          // Reserved
	PendSV_Handler,             // PendSV Handler
	SysTick_Handler,            // SysTick Handler

	// External Interrupts
    CAN1_IRQHandler,				// 16
    CAN2_IRQHandler,				// 17			
    USB_IRQHandler,					// 18
    0,								// 19
    0,								// 20
    DMA_IRQHandler,					// 21
    UART1_IRQHandler,				// 22
    UART2_IRQHandler,				// 23
    SSP1_IRQHandler,				// 24
    0,								// 25
    I2C_IRQHandler,					// 26
    POWER_IRQHandler,				// 27
    WWDG_IRQHandler,				// 28
    0,								// 29
    Timer1_IRQHandler,				// 30
    Timer2_IRQHandler,				// 31
    Timer3_IRQHandler,				// 32
    ADC_IRQHandler,					// 33
    0,								// 34
    COMPARATOR_IRQHandler,			// 35
    SSP2_IRQHandler,				// 36
    0,								// 37
    0,								// 38
    0,								// 39
    0,								// 40
    0,								// 41
    0,								// 42
    BACKUP_IRQHandler,				// 43
    EXT_INT1_IRQHandler,			// 44
    EXT_INT2_IRQHandler,			// 45
    EXT_INT3_IRQHandler,			// 46
    EXT_INT4_IRQHandler       		// 47
};
