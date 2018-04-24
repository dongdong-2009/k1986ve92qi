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

CFLAGS  = -c -fno-common -g -mcpu=cortex-m3 -mthumb $(INCLUDES)
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT) 
CPFLAGS = -Obinary

IMAGE = $(shell pwd)/blink.elf

all: blink.bin

startup.o: startup.c
	$(CC) $(CFLAGS) -O0 -o startup.o startup.c

system.o: system.c
	$(CC) $(CFLAGS) -O0 -o system.o system.c

adc_dma.o: adc_dma.c
	$(CC) $(CFLAGS) -O0 -o adc_dma.o adc_dma.c

cos_tb.o: cos_tb.c
	$(CC) $(CFLAGS) -O0 -o cos_tb.o cos_tb.c

dsp.o: dsp.c
	$(CC) $(CFLAGS) -O3 -o dsp.o dsp.c

main.o: main.c
	$(CC) $(CFLAGS) -O0 -o main.o main.c

blink.elf: main.o dsp.o cos_tb.o adc_dma.o gdef.h system.o startup.o
	$(LD) $(LFLAGS) -Map test.map -o blink.elf main.o dsp.o cos_tb.o adc_dma.o system.o startup.o

blink.bin: blink.elf
	$(CP) $(CPFLAGS) blink.elf main.bin
	arm-none-eabi-objdump -d blink.elf > main.s
clean:
	rm -rf *.o *.elf *.bin *.map

load: blink.elf
	../mdr1986x-JFlash-master/loadjlink $(IMAGE)

debug: blink.elf
#	arm-none-eabi-gdb -ex "target remote localhost:2331" blink.elf
	arm-none-eabi-gdb
