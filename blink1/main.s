
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b580      	push	{r7, lr}
20000002:	af00      	add	r7, sp, #0
20000004:	f000 f820 	bl	20000048 <PortConfig>
20000008:	4b0b      	ldr	r3, [pc, #44]	; (20000038 <main+0x38>)
2000000a:	2200      	movs	r2, #0
2000000c:	601a      	str	r2, [r3, #0]
2000000e:	4a0b      	ldr	r2, [pc, #44]	; (2000003c <main+0x3c>)
20000010:	4b0a      	ldr	r3, [pc, #40]	; (2000003c <main+0x3c>)
20000012:	681b      	ldr	r3, [r3, #0]
20000014:	f083 0301 	eor.w	r3, r3, #1
20000018:	6013      	str	r3, [r2, #0]
2000001a:	4b09      	ldr	r3, [pc, #36]	; (20000040 <main+0x40>)
2000001c:	2200      	movs	r2, #0
2000001e:	601a      	str	r2, [r3, #0]
20000020:	e004      	b.n	2000002c <main+0x2c>
20000022:	4b07      	ldr	r3, [pc, #28]	; (20000040 <main+0x40>)
20000024:	681b      	ldr	r3, [r3, #0]
20000026:	3301      	adds	r3, #1
20000028:	4a05      	ldr	r2, [pc, #20]	; (20000040 <main+0x40>)
2000002a:	6013      	str	r3, [r2, #0]
2000002c:	4b04      	ldr	r3, [pc, #16]	; (20000040 <main+0x40>)
2000002e:	681b      	ldr	r3, [r3, #0]
20000030:	4a04      	ldr	r2, [pc, #16]	; (20000044 <main+0x44>)
20000032:	4293      	cmp	r3, r2
20000034:	d9f5      	bls.n	20000022 <main+0x22>
20000036:	e7ea      	b.n	2000000e <main+0xe>
20000038:	2000009c 	.word	0x2000009c
2000003c:	400b0000 	.word	0x400b0000
20000040:	200000a0 	.word	0x200000a0
20000044:	0001869f 	.word	0x0001869f

20000048 <PortConfig>:
20000048:	b480      	push	{r7}
2000004a:	af00      	add	r7, sp, #0
2000004c:	4a11      	ldr	r2, [pc, #68]	; (20000094 <PortConfig+0x4c>)
2000004e:	4b11      	ldr	r3, [pc, #68]	; (20000094 <PortConfig+0x4c>)
20000050:	69db      	ldr	r3, [r3, #28]
20000052:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20000056:	61d3      	str	r3, [r2, #28]
20000058:	4a0f      	ldr	r2, [pc, #60]	; (20000098 <PortConfig+0x50>)
2000005a:	4b0f      	ldr	r3, [pc, #60]	; (20000098 <PortConfig+0x50>)
2000005c:	689b      	ldr	r3, [r3, #8]
2000005e:	6093      	str	r3, [r2, #8]
20000060:	4a0d      	ldr	r2, [pc, #52]	; (20000098 <PortConfig+0x50>)
20000062:	4b0d      	ldr	r3, [pc, #52]	; (20000098 <PortConfig+0x50>)
20000064:	681b      	ldr	r3, [r3, #0]
20000066:	6013      	str	r3, [r2, #0]
20000068:	4a0b      	ldr	r2, [pc, #44]	; (20000098 <PortConfig+0x50>)
2000006a:	4b0b      	ldr	r3, [pc, #44]	; (20000098 <PortConfig+0x50>)
2000006c:	685b      	ldr	r3, [r3, #4]
2000006e:	f043 0301 	orr.w	r3, r3, #1
20000072:	6053      	str	r3, [r2, #4]
20000074:	4a08      	ldr	r2, [pc, #32]	; (20000098 <PortConfig+0x50>)
20000076:	4b08      	ldr	r3, [pc, #32]	; (20000098 <PortConfig+0x50>)
20000078:	68db      	ldr	r3, [r3, #12]
2000007a:	f043 0301 	orr.w	r3, r3, #1
2000007e:	60d3      	str	r3, [r2, #12]
20000080:	4a05      	ldr	r2, [pc, #20]	; (20000098 <PortConfig+0x50>)
20000082:	4b05      	ldr	r3, [pc, #20]	; (20000098 <PortConfig+0x50>)
20000084:	699b      	ldr	r3, [r3, #24]
20000086:	f043 0303 	orr.w	r3, r3, #3
2000008a:	6193      	str	r3, [r2, #24]
2000008c:	bf00      	nop
2000008e:	46bd      	mov	sp, r7
20000090:	bc80      	pop	{r7}
20000092:	4770      	bx	lr
20000094:	40020000 	.word	0x40020000
20000098:	400b0000 	.word	0x400b0000
