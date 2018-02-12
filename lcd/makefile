##################################
# stm32 minimal example Makefile
##################################

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy

LKR_SCRIPT = mdr32f9q2i.ld

INCLUDES = -I../Libraries/CMSIS/CM3/DeviceSupport/MDR32F9Qx/inc
INCLUDES += -I../Libraries/CMSIS/CM3/CoreSupport
INCLUDES += -I../Libraries/CMSIS/CM3/DeviceSupport/MDR32F9Qx/startup/arm

CFLAGS  = -c -fno-common -O0 -g -mcpu=cortex-m3 -mthumb $(INCLUDES)
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT) 
CPFLAGS = -Obinary

all: blink.bin

MT12864.o: MT12864.c
	$(CC) $(CFLAGS) -o MT12864.o MT12864.c

main.o: main.c 
	$(CC) $(CFLAGS) -o main.o main.c

blink.elf: main.o MT12864.o
	$(LD) $(LFLAGS) -Map test.map -o blink.elf main.o MT12864.o

blink.bin: blink.elf
	$(CP) $(CPFLAGS) blink.elf main.bin
	arm-none-eabi-objdump -d blink.elf > main.s
clean:
	rm -rf *.o *.elf *.bin *.map

debug:
#	arm-none-eabi-gdb -ex "target remote localhost:2331" main.elf
	arm-none-eabi-gdb
