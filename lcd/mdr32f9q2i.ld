/***********************************************************************
 minimal example linker script
***********************************************************************/

/* memory layout for an */
MEMORY
{
    FLASH (rx)  : ORIGIN = 0x8000000, LENGTH = 128K
    SRAM (xrw)  : ORIGIN = 0x20000000, LENGTH = 32K
}

/* output sections */
SECTIONS
{
    /* program code into  */
    .text :
    {
        *(.text)            /* Program code */
    } >SRAM
 
    /* uninitialized global and static variables (which
       we don't have any in this example) into SRAM */
    .data :
    {
        *(.data)           
    } >SRAM
    
    .bss :
    {
        *(.bss)           
    } >SRAM
} 
ENTRY(main);
