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
    CAN1_IRQHandler,
    CAN2_IRQHandler,
    USB_IRQHandler,
    0,
    0,
    DMA_IRQHandler,
    UART1_IRQHandler,
    UART2_IRQHandler,
    SSP1_IRQHandler,
    0,
    I2C_IRQHandler,
    POWER_IRQHandler,
    WWDG_IRQHandler,
    0,
    Timer1_IRQHandler,
    Timer2_IRQHandler,
    Timer3_IRQHandler,
    ADC_IRQHandler,
    0,
    COMPARATOR_IRQHandler,
    SSP2_IRQHandler,
    0,
    0,
    0,
    0,
    0,
    0,
    BACKUP_IRQHandler,
    EXT_INT1_IRQHandler,
    EXT_INT2_IRQHandler,
    EXT_INT3_IRQHandler,
    EXT_INT4_IRQHandler       
};
