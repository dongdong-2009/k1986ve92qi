##################################
# Makefile
##################################

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy

LKR_SCRIPT = mdr32f9q2i.ld

INCLUDES = -I../Libraries/CMSIS/CM3/DeviceSupport/MDR32F9Qx/inc
INCLUDES += -I../Libraries/CMSIS/CM3/CoreSupport
INCLUDES += -I../Libraries/CMSIS/CM3/DeviceSupport/MDR32F9Qx/startup/arm
INCLUDES += -I../Libraries/MDR32F9Qx_StdPeriph_Driver/inc
INCLUDES += -I.

SRCPATH = ../Libraries/MDR32F9Qx_StdPeriph_Driver/src/


IMAGE = $(shell pwd)/blink.elf
	
CFLAGS  = -c -fno-common -nostdlib -fno-builtin -ffreestanding -O0 -g 
CFLAGS  += -mcpu=cortex-m3 -mthumb $(INCLUDES)
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT)
CPFLAGS = -Obinary

all: blink.bin
	@echo $(IMAGE)

MDR32F9Qx_ssp.o: $(SRCPATH)MDR32F9Qx_ssp.c 
	$(CC) $(CFLAGS) -o $@ $<	

MDR32F9Qx_port.o: $(SRCPATH)MDR32F9Qx_port.c 
	$(CC) $(CFLAGS) -o $@ $<	

MDR32F9Qx_rst_clk.o: $(SRCPATH)MDR32F9Qx_rst_clk.c 
	$(CC) $(CFLAGS) -o $@ $<	

startup.o: startup.c
	$(CC) $(CFLAGS) -o $@ $<

main.o: main.c
	$(CC) $(CFLAGS) -o $@ $<

blink.elf: main.o startup.o MDR32F9Qx_rst_clk.o MDR32F9Qx_port.o MDR32F9Qx_ssp.o
	$(LD) $(LFLAGS) -Map blink.map -o $@ $^

blink.bin: blink.elf
	$(CP) $(CPFLAGS) $< $@
	arm-none-eabi-objdump -d blink.elf > blink.s
clean:
	rm -rf *.o *.elf *.bin

load: blink.elf
	../mdr1986x-JFlash-master/loadjlink $(IMAGE)

debug:
	arm-none-eabi-gdb
