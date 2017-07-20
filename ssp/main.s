
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b580      	push	{r7, lr}
20000002:	b084      	sub	sp, #16
20000004:	af00      	add	r7, sp, #0
20000006:	2300      	movs	r3, #0
20000008:	60fb      	str	r3, [r7, #12]
2000000a:	2300      	movs	r3, #0
2000000c:	60bb      	str	r3, [r7, #8]
2000000e:	2300      	movs	r3, #0
20000010:	607b      	str	r3, [r7, #4]
20000012:	f000 f9f5 	bl	20000400 <set_ram_vt>
20000016:	f000 f9b9 	bl	2000038c <ClkConfig>
2000001a:	f000 f8cd 	bl	200001b8 <PortConfig>
2000001e:	f000 f93d 	bl	2000029c <ssi_init>
20000022:	f000 f99d 	bl	20000360 <dac_init>
20000026:	f000 f983 	bl	20000330 <adc_init>
2000002a:	f000 fa29 	bl	20000480 <TimerConfig>
2000002e:	f000 f83f 	bl	200000b0 <__WFI>
20000032:	4b1b      	ldr	r3, [pc, #108]	; (200000a0 <main+0xa0>)
20000034:	68db      	ldr	r3, [r3, #12]
20000036:	f003 0308 	and.w	r3, r3, #8
2000003a:	2b00      	cmp	r3, #0
2000003c:	d01e      	beq.n	2000007c <main+0x7c>
2000003e:	4a19      	ldr	r2, [pc, #100]	; (200000a4 <main+0xa4>)
20000040:	4b18      	ldr	r3, [pc, #96]	; (200000a4 <main+0xa4>)
20000042:	681b      	ldr	r3, [r3, #0]
20000044:	f083 0301 	eor.w	r3, r3, #1
20000048:	6013      	str	r3, [r2, #0]
2000004a:	4b15      	ldr	r3, [pc, #84]	; (200000a0 <main+0xa0>)
2000004c:	689b      	ldr	r3, [r3, #8]
2000004e:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000052:	4618      	mov	r0, r3
20000054:	f000 f952 	bl	200002fc <g2b>
20000058:	6038      	str	r0, [r7, #0]
2000005a:	683a      	ldr	r2, [r7, #0]
2000005c:	68fb      	ldr	r3, [r7, #12]
2000005e:	429a      	cmp	r2, r3
20000060:	d904      	bls.n	2000006c <main+0x6c>
20000062:	683a      	ldr	r2, [r7, #0]
20000064:	68fb      	ldr	r3, [r7, #12]
20000066:	1ad3      	subs	r3, r2, r3
20000068:	60bb      	str	r3, [r7, #8]
2000006a:	e005      	b.n	20000078 <main+0x78>
2000006c:	683a      	ldr	r2, [r7, #0]
2000006e:	68fb      	ldr	r3, [r7, #12]
20000070:	1ad3      	subs	r3, r2, r3
20000072:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
20000076:	60bb      	str	r3, [r7, #8]
20000078:	683b      	ldr	r3, [r7, #0]
2000007a:	60fb      	str	r3, [r7, #12]
2000007c:	4b0a      	ldr	r3, [pc, #40]	; (200000a8 <main+0xa8>)
2000007e:	6a1b      	ldr	r3, [r3, #32]
20000080:	f003 0304 	and.w	r3, r3, #4
20000084:	2b00      	cmp	r3, #0
20000086:	d0d2      	beq.n	2000002e <main+0x2e>
20000088:	4a06      	ldr	r2, [pc, #24]	; (200000a4 <main+0xa4>)
2000008a:	4b06      	ldr	r3, [pc, #24]	; (200000a4 <main+0xa4>)
2000008c:	681b      	ldr	r3, [r3, #0]
2000008e:	f083 0301 	eor.w	r3, r3, #1
20000092:	6013      	str	r3, [r2, #0]
20000094:	4a05      	ldr	r2, [pc, #20]	; (200000ac <main+0xac>)
20000096:	4b04      	ldr	r3, [pc, #16]	; (200000a8 <main+0xa8>)
20000098:	699b      	ldr	r3, [r3, #24]
2000009a:	6093      	str	r3, [r2, #8]
2000009c:	e7c7      	b.n	2000002e <main+0x2e>
2000009e:	bf00      	nop
200000a0:	40040000 	.word	0x40040000
200000a4:	400b0000 	.word	0x400b0000
200000a8:	40088000 	.word	0x40088000
200000ac:	40090000 	.word	0x40090000

200000b0 <__WFI>:
200000b0:	b480      	push	{r7}
200000b2:	af00      	add	r7, sp, #0
200000b4:	bf30      	wfi
200000b6:	bf00      	nop
200000b8:	46bd      	mov	sp, r7
200000ba:	bc80      	pop	{r7}
200000bc:	4770      	bx	lr
200000be:	bf00      	nop

200000c0 <NVIC_EnableIRQ>:
200000c0:	b480      	push	{r7}
200000c2:	b083      	sub	sp, #12
200000c4:	af00      	add	r7, sp, #0
200000c6:	4603      	mov	r3, r0
200000c8:	71fb      	strb	r3, [r7, #7]
200000ca:	4908      	ldr	r1, [pc, #32]	; (200000ec <NVIC_EnableIRQ+0x2c>)
200000cc:	f997 3007 	ldrsb.w	r3, [r7, #7]
200000d0:	095b      	lsrs	r3, r3, #5
200000d2:	79fa      	ldrb	r2, [r7, #7]
200000d4:	f002 021f 	and.w	r2, r2, #31
200000d8:	2001      	movs	r0, #1
200000da:	fa00 f202 	lsl.w	r2, r0, r2
200000de:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
200000e2:	bf00      	nop
200000e4:	370c      	adds	r7, #12
200000e6:	46bd      	mov	sp, r7
200000e8:	bc80      	pop	{r7}
200000ea:	4770      	bx	lr
200000ec:	e000e100 	.word	0xe000e100

200000f0 <NVIC_SetPriority>:
200000f0:	b480      	push	{r7}
200000f2:	b083      	sub	sp, #12
200000f4:	af00      	add	r7, sp, #0
200000f6:	4603      	mov	r3, r0
200000f8:	6039      	str	r1, [r7, #0]
200000fa:	71fb      	strb	r3, [r7, #7]
200000fc:	f997 3007 	ldrsb.w	r3, [r7, #7]
20000100:	2b00      	cmp	r3, #0
20000102:	da0b      	bge.n	2000011c <NVIC_SetPriority+0x2c>
20000104:	490d      	ldr	r1, [pc, #52]	; (2000013c <NVIC_SetPriority+0x4c>)
20000106:	79fb      	ldrb	r3, [r7, #7]
20000108:	f003 030f 	and.w	r3, r3, #15
2000010c:	3b04      	subs	r3, #4
2000010e:	683a      	ldr	r2, [r7, #0]
20000110:	b2d2      	uxtb	r2, r2
20000112:	0152      	lsls	r2, r2, #5
20000114:	b2d2      	uxtb	r2, r2
20000116:	440b      	add	r3, r1
20000118:	761a      	strb	r2, [r3, #24]
2000011a:	e009      	b.n	20000130 <NVIC_SetPriority+0x40>
2000011c:	4908      	ldr	r1, [pc, #32]	; (20000140 <NVIC_SetPriority+0x50>)
2000011e:	f997 3007 	ldrsb.w	r3, [r7, #7]
20000122:	683a      	ldr	r2, [r7, #0]
20000124:	b2d2      	uxtb	r2, r2
20000126:	0152      	lsls	r2, r2, #5
20000128:	b2d2      	uxtb	r2, r2
2000012a:	440b      	add	r3, r1
2000012c:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
20000130:	bf00      	nop
20000132:	370c      	adds	r7, #12
20000134:	46bd      	mov	sp, r7
20000136:	bc80      	pop	{r7}
20000138:	4770      	bx	lr
2000013a:	bf00      	nop
2000013c:	e000ed00 	.word	0xe000ed00
20000140:	e000e100 	.word	0xe000e100

20000144 <SysTick_Config>:
20000144:	b580      	push	{r7, lr}
20000146:	b082      	sub	sp, #8
20000148:	af00      	add	r7, sp, #0
2000014a:	6078      	str	r0, [r7, #4]
2000014c:	687b      	ldr	r3, [r7, #4]
2000014e:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
20000152:	d301      	bcc.n	20000158 <SysTick_Config+0x14>
20000154:	2301      	movs	r3, #1
20000156:	e011      	b.n	2000017c <SysTick_Config+0x38>
20000158:	4a0a      	ldr	r2, [pc, #40]	; (20000184 <SysTick_Config+0x40>)
2000015a:	687b      	ldr	r3, [r7, #4]
2000015c:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
20000160:	3b01      	subs	r3, #1
20000162:	6053      	str	r3, [r2, #4]
20000164:	2107      	movs	r1, #7
20000166:	f04f 30ff 	mov.w	r0, #4294967295
2000016a:	f7ff ffc1 	bl	200000f0 <NVIC_SetPriority>
2000016e:	4b05      	ldr	r3, [pc, #20]	; (20000184 <SysTick_Config+0x40>)
20000170:	2200      	movs	r2, #0
20000172:	609a      	str	r2, [r3, #8]
20000174:	4b03      	ldr	r3, [pc, #12]	; (20000184 <SysTick_Config+0x40>)
20000176:	2207      	movs	r2, #7
20000178:	601a      	str	r2, [r3, #0]
2000017a:	2300      	movs	r3, #0
2000017c:	4618      	mov	r0, r3
2000017e:	3708      	adds	r7, #8
20000180:	46bd      	mov	sp, r7
20000182:	bd80      	pop	{r7, pc}
20000184:	e000e010 	.word	0xe000e010

20000188 <sleep>:
20000188:	b480      	push	{r7}
2000018a:	b085      	sub	sp, #20
2000018c:	af00      	add	r7, sp, #0
2000018e:	6078      	str	r0, [r7, #4]
20000190:	4b08      	ldr	r3, [pc, #32]	; (200001b4 <sleep+0x2c>)
20000192:	681a      	ldr	r2, [r3, #0]
20000194:	687b      	ldr	r3, [r7, #4]
20000196:	4413      	add	r3, r2
20000198:	60fb      	str	r3, [r7, #12]
2000019a:	bf00      	nop
2000019c:	4b05      	ldr	r3, [pc, #20]	; (200001b4 <sleep+0x2c>)
2000019e:	681a      	ldr	r2, [r3, #0]
200001a0:	68fb      	ldr	r3, [r7, #12]
200001a2:	429a      	cmp	r2, r3
200001a4:	d3fa      	bcc.n	2000019c <sleep+0x14>
200001a6:	bf00      	nop
200001a8:	4618      	mov	r0, r3
200001aa:	3714      	adds	r7, #20
200001ac:	46bd      	mov	sp, r7
200001ae:	bc80      	pop	{r7}
200001b0:	4770      	bx	lr
200001b2:	bf00      	nop
200001b4:	20000600 	.word	0x20000600

200001b8 <PortConfig>:
200001b8:	b480      	push	{r7}
200001ba:	af00      	add	r7, sp, #0
200001bc:	4a32      	ldr	r2, [pc, #200]	; (20000288 <PortConfig+0xd0>)
200001be:	4b32      	ldr	r3, [pc, #200]	; (20000288 <PortConfig+0xd0>)
200001c0:	69db      	ldr	r3, [r3, #28]
200001c2:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
200001c6:	61d3      	str	r3, [r2, #28]
200001c8:	4a30      	ldr	r2, [pc, #192]	; (2000028c <PortConfig+0xd4>)
200001ca:	4b30      	ldr	r3, [pc, #192]	; (2000028c <PortConfig+0xd4>)
200001cc:	689b      	ldr	r3, [r3, #8]
200001ce:	6093      	str	r3, [r2, #8]
200001d0:	4a2e      	ldr	r2, [pc, #184]	; (2000028c <PortConfig+0xd4>)
200001d2:	4b2e      	ldr	r3, [pc, #184]	; (2000028c <PortConfig+0xd4>)
200001d4:	681b      	ldr	r3, [r3, #0]
200001d6:	6013      	str	r3, [r2, #0]
200001d8:	4a2c      	ldr	r2, [pc, #176]	; (2000028c <PortConfig+0xd4>)
200001da:	4b2c      	ldr	r3, [pc, #176]	; (2000028c <PortConfig+0xd4>)
200001dc:	685b      	ldr	r3, [r3, #4]
200001de:	f043 0301 	orr.w	r3, r3, #1
200001e2:	6053      	str	r3, [r2, #4]
200001e4:	4a29      	ldr	r2, [pc, #164]	; (2000028c <PortConfig+0xd4>)
200001e6:	4b29      	ldr	r3, [pc, #164]	; (2000028c <PortConfig+0xd4>)
200001e8:	68db      	ldr	r3, [r3, #12]
200001ea:	f043 0301 	orr.w	r3, r3, #1
200001ee:	60d3      	str	r3, [r2, #12]
200001f0:	4a26      	ldr	r2, [pc, #152]	; (2000028c <PortConfig+0xd4>)
200001f2:	4b26      	ldr	r3, [pc, #152]	; (2000028c <PortConfig+0xd4>)
200001f4:	699b      	ldr	r3, [r3, #24]
200001f6:	f043 0303 	orr.w	r3, r3, #3
200001fa:	6193      	str	r3, [r2, #24]
200001fc:	4a22      	ldr	r2, [pc, #136]	; (20000288 <PortConfig+0xd0>)
200001fe:	4b22      	ldr	r3, [pc, #136]	; (20000288 <PortConfig+0xd0>)
20000200:	69db      	ldr	r3, [r3, #28]
20000202:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
20000206:	61d3      	str	r3, [r2, #28]
20000208:	4a21      	ldr	r2, [pc, #132]	; (20000290 <PortConfig+0xd8>)
2000020a:	4b21      	ldr	r3, [pc, #132]	; (20000290 <PortConfig+0xd8>)
2000020c:	689b      	ldr	r3, [r3, #8]
2000020e:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
20000212:	6093      	str	r3, [r2, #8]
20000214:	4a1e      	ldr	r2, [pc, #120]	; (20000290 <PortConfig+0xd8>)
20000216:	4b1e      	ldr	r3, [pc, #120]	; (20000290 <PortConfig+0xd8>)
20000218:	689b      	ldr	r3, [r3, #8]
2000021a:	f043 03aa 	orr.w	r3, r3, #170	; 0xaa
2000021e:	6093      	str	r3, [r2, #8]
20000220:	4a1b      	ldr	r2, [pc, #108]	; (20000290 <PortConfig+0xd8>)
20000222:	4b1b      	ldr	r3, [pc, #108]	; (20000290 <PortConfig+0xd8>)
20000224:	68db      	ldr	r3, [r3, #12]
20000226:	f043 030f 	orr.w	r3, r3, #15
2000022a:	60d3      	str	r3, [r2, #12]
2000022c:	4a18      	ldr	r2, [pc, #96]	; (20000290 <PortConfig+0xd8>)
2000022e:	4b18      	ldr	r3, [pc, #96]	; (20000290 <PortConfig+0xd8>)
20000230:	699b      	ldr	r3, [r3, #24]
20000232:	f043 033f 	orr.w	r3, r3, #63	; 0x3f
20000236:	6193      	str	r3, [r2, #24]
20000238:	4a15      	ldr	r2, [pc, #84]	; (20000290 <PortConfig+0xd8>)
2000023a:	4b15      	ldr	r3, [pc, #84]	; (20000290 <PortConfig+0xd8>)
2000023c:	685b      	ldr	r3, [r3, #4]
2000023e:	f043 0307 	orr.w	r3, r3, #7
20000242:	6053      	str	r3, [r2, #4]
20000244:	4a12      	ldr	r2, [pc, #72]	; (20000290 <PortConfig+0xd8>)
20000246:	4b12      	ldr	r3, [pc, #72]	; (20000290 <PortConfig+0xd8>)
20000248:	685b      	ldr	r3, [r3, #4]
2000024a:	f023 0308 	bic.w	r3, r3, #8
2000024e:	6053      	str	r3, [r2, #4]
20000250:	4a0f      	ldr	r2, [pc, #60]	; (20000290 <PortConfig+0xd8>)
20000252:	4b0f      	ldr	r3, [pc, #60]	; (20000290 <PortConfig+0xd8>)
20000254:	685b      	ldr	r3, [r3, #4]
20000256:	f043 0301 	orr.w	r3, r3, #1
2000025a:	6053      	str	r3, [r2, #4]
2000025c:	4a0d      	ldr	r2, [pc, #52]	; (20000294 <PortConfig+0xdc>)
2000025e:	4b0d      	ldr	r3, [pc, #52]	; (20000294 <PortConfig+0xdc>)
20000260:	68db      	ldr	r3, [r3, #12]
20000262:	f023 0301 	bic.w	r3, r3, #1
20000266:	60d3      	str	r3, [r2, #12]
20000268:	4a07      	ldr	r2, [pc, #28]	; (20000288 <PortConfig+0xd0>)
2000026a:	4b07      	ldr	r3, [pc, #28]	; (20000288 <PortConfig+0xd0>)
2000026c:	69db      	ldr	r3, [r3, #28]
2000026e:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20000272:	61d3      	str	r3, [r2, #28]
20000274:	4a08      	ldr	r2, [pc, #32]	; (20000298 <PortConfig+0xe0>)
20000276:	4b08      	ldr	r3, [pc, #32]	; (20000298 <PortConfig+0xe0>)
20000278:	68db      	ldr	r3, [r3, #12]
2000027a:	f023 0360 	bic.w	r3, r3, #96	; 0x60
2000027e:	60d3      	str	r3, [r2, #12]
20000280:	bf00      	nop
20000282:	46bd      	mov	sp, r7
20000284:	bc80      	pop	{r7}
20000286:	4770      	bx	lr
20000288:	40020000 	.word	0x40020000
2000028c:	400b0000 	.word	0x400b0000
20000290:	400e8000 	.word	0x400e8000
20000294:	400c8000 	.word	0x400c8000
20000298:	400c0000 	.word	0x400c0000

2000029c <ssi_init>:
2000029c:	b480      	push	{r7}
2000029e:	af00      	add	r7, sp, #0
200002a0:	4a0c      	ldr	r2, [pc, #48]	; (200002d4 <ssi_init+0x38>)
200002a2:	4b0c      	ldr	r3, [pc, #48]	; (200002d4 <ssi_init+0x38>)
200002a4:	69db      	ldr	r3, [r3, #28]
200002a6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200002aa:	61d3      	str	r3, [r2, #28]
200002ac:	4b09      	ldr	r3, [pc, #36]	; (200002d4 <ssi_init+0x38>)
200002ae:	4a0a      	ldr	r2, [pc, #40]	; (200002d8 <ssi_init+0x3c>)
200002b0:	62da      	str	r2, [r3, #44]	; 0x2c
200002b2:	4b0a      	ldr	r3, [pc, #40]	; (200002dc <ssi_init+0x40>)
200002b4:	2200      	movs	r2, #0
200002b6:	605a      	str	r2, [r3, #4]
200002b8:	4b08      	ldr	r3, [pc, #32]	; (200002dc <ssi_init+0x40>)
200002ba:	2210      	movs	r2, #16
200002bc:	611a      	str	r2, [r3, #16]
200002be:	4b07      	ldr	r3, [pc, #28]	; (200002dc <ssi_init+0x40>)
200002c0:	f240 221b 	movw	r2, #539	; 0x21b
200002c4:	601a      	str	r2, [r3, #0]
200002c6:	4b05      	ldr	r3, [pc, #20]	; (200002dc <ssi_init+0x40>)
200002c8:	2202      	movs	r2, #2
200002ca:	605a      	str	r2, [r3, #4]
200002cc:	bf00      	nop
200002ce:	46bd      	mov	sp, r7
200002d0:	bc80      	pop	{r7}
200002d2:	4770      	bx	lr
200002d4:	40020000 	.word	0x40020000
200002d8:	0100000a 	.word	0x0100000a
200002dc:	40040000 	.word	0x40040000

200002e0 <b2g>:
200002e0:	b480      	push	{r7}
200002e2:	b083      	sub	sp, #12
200002e4:	af00      	add	r7, sp, #0
200002e6:	6078      	str	r0, [r7, #4]
200002e8:	687b      	ldr	r3, [r7, #4]
200002ea:	085a      	lsrs	r2, r3, #1
200002ec:	687b      	ldr	r3, [r7, #4]
200002ee:	4053      	eors	r3, r2
200002f0:	4618      	mov	r0, r3
200002f2:	370c      	adds	r7, #12
200002f4:	46bd      	mov	sp, r7
200002f6:	bc80      	pop	{r7}
200002f8:	4770      	bx	lr
200002fa:	bf00      	nop

200002fc <g2b>:
200002fc:	b480      	push	{r7}
200002fe:	b085      	sub	sp, #20
20000300:	af00      	add	r7, sp, #0
20000302:	6078      	str	r0, [r7, #4]
20000304:	2300      	movs	r3, #0
20000306:	60fb      	str	r3, [r7, #12]
20000308:	2300      	movs	r3, #0
2000030a:	60fb      	str	r3, [r7, #12]
2000030c:	e006      	b.n	2000031c <g2b+0x20>
2000030e:	68fa      	ldr	r2, [r7, #12]
20000310:	687b      	ldr	r3, [r7, #4]
20000312:	4053      	eors	r3, r2
20000314:	60fb      	str	r3, [r7, #12]
20000316:	687b      	ldr	r3, [r7, #4]
20000318:	085b      	lsrs	r3, r3, #1
2000031a:	607b      	str	r3, [r7, #4]
2000031c:	687b      	ldr	r3, [r7, #4]
2000031e:	2b00      	cmp	r3, #0
20000320:	d1f5      	bne.n	2000030e <g2b+0x12>
20000322:	68fb      	ldr	r3, [r7, #12]
20000324:	4618      	mov	r0, r3
20000326:	3714      	adds	r7, #20
20000328:	46bd      	mov	sp, r7
2000032a:	bc80      	pop	{r7}
2000032c:	4770      	bx	lr
2000032e:	bf00      	nop

20000330 <adc_init>:
20000330:	b480      	push	{r7}
20000332:	af00      	add	r7, sp, #0
20000334:	4a08      	ldr	r2, [pc, #32]	; (20000358 <adc_init+0x28>)
20000336:	4b08      	ldr	r3, [pc, #32]	; (20000358 <adc_init+0x28>)
20000338:	69db      	ldr	r3, [r3, #28]
2000033a:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
2000033e:	61d3      	str	r3, [r2, #28]
20000340:	4b05      	ldr	r3, [pc, #20]	; (20000358 <adc_init+0x28>)
20000342:	f242 0220 	movw	r2, #8224	; 0x2020
20000346:	615a      	str	r2, [r3, #20]
20000348:	4b04      	ldr	r3, [pc, #16]	; (2000035c <adc_init+0x2c>)
2000034a:	2255      	movs	r2, #85	; 0x55
2000034c:	601a      	str	r2, [r3, #0]
2000034e:	bf00      	nop
20000350:	46bd      	mov	sp, r7
20000352:	bc80      	pop	{r7}
20000354:	4770      	bx	lr
20000356:	bf00      	nop
20000358:	40020000 	.word	0x40020000
2000035c:	40088000 	.word	0x40088000

20000360 <dac_init>:
20000360:	b480      	push	{r7}
20000362:	af00      	add	r7, sp, #0
20000364:	4a07      	ldr	r2, [pc, #28]	; (20000384 <dac_init+0x24>)
20000366:	4b07      	ldr	r3, [pc, #28]	; (20000384 <dac_init+0x24>)
20000368:	69db      	ldr	r3, [r3, #28]
2000036a:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
2000036e:	61d3      	str	r3, [r2, #28]
20000370:	4a05      	ldr	r2, [pc, #20]	; (20000388 <dac_init+0x28>)
20000372:	4b05      	ldr	r3, [pc, #20]	; (20000388 <dac_init+0x28>)
20000374:	681b      	ldr	r3, [r3, #0]
20000376:	f043 0308 	orr.w	r3, r3, #8
2000037a:	6013      	str	r3, [r2, #0]
2000037c:	bf00      	nop
2000037e:	46bd      	mov	sp, r7
20000380:	bc80      	pop	{r7}
20000382:	4770      	bx	lr
20000384:	40020000 	.word	0x40020000
20000388:	40090000 	.word	0x40090000

2000038c <ClkConfig>:
2000038c:	b580      	push	{r7, lr}
2000038e:	af00      	add	r7, sp, #0
20000390:	4a17      	ldr	r2, [pc, #92]	; (200003f0 <ClkConfig+0x64>)
20000392:	4b17      	ldr	r3, [pc, #92]	; (200003f0 <ClkConfig+0x64>)
20000394:	689b      	ldr	r3, [r3, #8]
20000396:	f043 0301 	orr.w	r3, r3, #1
2000039a:	6093      	str	r3, [r2, #8]
2000039c:	bf00      	nop
2000039e:	4b14      	ldr	r3, [pc, #80]	; (200003f0 <ClkConfig+0x64>)
200003a0:	681b      	ldr	r3, [r3, #0]
200003a2:	f003 0304 	and.w	r3, r3, #4
200003a6:	2b00      	cmp	r3, #0
200003a8:	d0f9      	beq.n	2000039e <ClkConfig+0x12>
200003aa:	4b11      	ldr	r3, [pc, #68]	; (200003f0 <ClkConfig+0x64>)
200003ac:	2206      	movs	r2, #6
200003ae:	60da      	str	r2, [r3, #12]
200003b0:	4b0f      	ldr	r3, [pc, #60]	; (200003f0 <ClkConfig+0x64>)
200003b2:	f640 1204 	movw	r2, #2308	; 0x904
200003b6:	605a      	str	r2, [r3, #4]
200003b8:	bf00      	nop
200003ba:	4b0d      	ldr	r3, [pc, #52]	; (200003f0 <ClkConfig+0x64>)
200003bc:	681b      	ldr	r3, [r3, #0]
200003be:	f003 0302 	and.w	r3, r3, #2
200003c2:	2b00      	cmp	r3, #0
200003c4:	d0f9      	beq.n	200003ba <ClkConfig+0x2e>
200003c6:	4a0a      	ldr	r2, [pc, #40]	; (200003f0 <ClkConfig+0x64>)
200003c8:	4b09      	ldr	r3, [pc, #36]	; (200003f0 <ClkConfig+0x64>)
200003ca:	68db      	ldr	r3, [r3, #12]
200003cc:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200003d0:	60d3      	str	r3, [r2, #12]
200003d2:	4a08      	ldr	r2, [pc, #32]	; (200003f4 <ClkConfig+0x68>)
200003d4:	4b07      	ldr	r3, [pc, #28]	; (200003f4 <ClkConfig+0x68>)
200003d6:	681b      	ldr	r3, [r3, #0]
200003d8:	f043 0320 	orr.w	r3, r3, #32
200003dc:	6013      	str	r3, [r2, #0]
200003de:	4b06      	ldr	r3, [pc, #24]	; (200003f8 <ClkConfig+0x6c>)
200003e0:	2200      	movs	r2, #0
200003e2:	601a      	str	r2, [r3, #0]
200003e4:	4805      	ldr	r0, [pc, #20]	; (200003fc <ClkConfig+0x70>)
200003e6:	f7ff fead 	bl	20000144 <SysTick_Config>
200003ea:	bf00      	nop
200003ec:	bd80      	pop	{r7, pc}
200003ee:	bf00      	nop
200003f0:	40020000 	.word	0x40020000
200003f4:	40018000 	.word	0x40018000
200003f8:	20000600 	.word	0x20000600
200003fc:	00013880 	.word	0x00013880

20000400 <set_ram_vt>:
20000400:	b480      	push	{r7}
20000402:	b085      	sub	sp, #20
20000404:	af00      	add	r7, sp, #0
20000406:	2300      	movs	r3, #0
20000408:	60fb      	str	r3, [r7, #12]
2000040a:	2300      	movs	r3, #0
2000040c:	607b      	str	r3, [r7, #4]
2000040e:	4b11      	ldr	r3, [pc, #68]	; (20000454 <set_ram_vt+0x54>)
20000410:	60bb      	str	r3, [r7, #8]
20000412:	2300      	movs	r3, #0
20000414:	60fb      	str	r3, [r7, #12]
20000416:	e00b      	b.n	20000430 <set_ram_vt+0x30>
20000418:	68bb      	ldr	r3, [r7, #8]
2000041a:	1d1a      	adds	r2, r3, #4
2000041c:	60ba      	str	r2, [r7, #8]
2000041e:	68fa      	ldr	r2, [r7, #12]
20000420:	0092      	lsls	r2, r2, #2
20000422:	6879      	ldr	r1, [r7, #4]
20000424:	440a      	add	r2, r1
20000426:	6812      	ldr	r2, [r2, #0]
20000428:	601a      	str	r2, [r3, #0]
2000042a:	68fb      	ldr	r3, [r7, #12]
2000042c:	3301      	adds	r3, #1
2000042e:	60fb      	str	r3, [r7, #12]
20000430:	68fb      	ldr	r3, [r7, #12]
20000432:	2b2f      	cmp	r3, #47	; 0x2f
20000434:	d9f0      	bls.n	20000418 <set_ram_vt+0x18>
20000436:	4b08      	ldr	r3, [pc, #32]	; (20000458 <set_ram_vt+0x58>)
20000438:	4a06      	ldr	r2, [pc, #24]	; (20000454 <set_ram_vt+0x54>)
2000043a:	609a      	str	r2, [r3, #8]
2000043c:	4b05      	ldr	r3, [pc, #20]	; (20000454 <set_ram_vt+0x54>)
2000043e:	4a07      	ldr	r2, [pc, #28]	; (2000045c <set_ram_vt+0x5c>)
20000440:	63da      	str	r2, [r3, #60]	; 0x3c
20000442:	4b04      	ldr	r3, [pc, #16]	; (20000454 <set_ram_vt+0x54>)
20000444:	4a06      	ldr	r2, [pc, #24]	; (20000460 <set_ram_vt+0x60>)
20000446:	679a      	str	r2, [r3, #120]	; 0x78
20000448:	bf00      	nop
2000044a:	3714      	adds	r7, #20
2000044c:	46bd      	mov	sp, r7
2000044e:	bc80      	pop	{r7}
20000450:	4770      	bx	lr
20000452:	bf00      	nop
20000454:	20000700 	.word	0x20000700
20000458:	e000ed00 	.word	0xe000ed00
2000045c:	20000465 	.word	0x20000465
20000460:	200004e5 	.word	0x200004e5

20000464 <SysTick_Handler>:
20000464:	b480      	push	{r7}
20000466:	af00      	add	r7, sp, #0
20000468:	4b04      	ldr	r3, [pc, #16]	; (2000047c <SysTick_Handler+0x18>)
2000046a:	681b      	ldr	r3, [r3, #0]
2000046c:	3301      	adds	r3, #1
2000046e:	4a03      	ldr	r2, [pc, #12]	; (2000047c <SysTick_Handler+0x18>)
20000470:	6013      	str	r3, [r2, #0]
20000472:	bf00      	nop
20000474:	46bd      	mov	sp, r7
20000476:	bc80      	pop	{r7}
20000478:	4770      	bx	lr
2000047a:	bf00      	nop
2000047c:	20000600 	.word	0x20000600

20000480 <TimerConfig>:
20000480:	b580      	push	{r7, lr}
20000482:	af00      	add	r7, sp, #0
20000484:	4a15      	ldr	r2, [pc, #84]	; (200004dc <TimerConfig+0x5c>)
20000486:	4b15      	ldr	r3, [pc, #84]	; (200004dc <TimerConfig+0x5c>)
20000488:	69db      	ldr	r3, [r3, #28]
2000048a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
2000048e:	61d3      	str	r3, [r2, #28]
20000490:	4a12      	ldr	r2, [pc, #72]	; (200004dc <TimerConfig+0x5c>)
20000492:	4b12      	ldr	r3, [pc, #72]	; (200004dc <TimerConfig+0x5c>)
20000494:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20000496:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
2000049a:	6253      	str	r3, [r2, #36]	; 0x24
2000049c:	4a0f      	ldr	r2, [pc, #60]	; (200004dc <TimerConfig+0x5c>)
2000049e:	4b0f      	ldr	r3, [pc, #60]	; (200004dc <TimerConfig+0x5c>)
200004a0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200004a2:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
200004a6:	6253      	str	r3, [r2, #36]	; 0x24
200004a8:	4b0d      	ldr	r3, [pc, #52]	; (200004e0 <TimerConfig+0x60>)
200004aa:	2200      	movs	r2, #0
200004ac:	601a      	str	r2, [r3, #0]
200004ae:	4b0c      	ldr	r3, [pc, #48]	; (200004e0 <TimerConfig+0x60>)
200004b0:	224f      	movs	r2, #79	; 0x4f
200004b2:	605a      	str	r2, [r3, #4]
200004b4:	4b0a      	ldr	r3, [pc, #40]	; (200004e0 <TimerConfig+0x60>)
200004b6:	22c7      	movs	r2, #199	; 0xc7
200004b8:	609a      	str	r2, [r3, #8]
200004ba:	4a09      	ldr	r2, [pc, #36]	; (200004e0 <TimerConfig+0x60>)
200004bc:	4b08      	ldr	r3, [pc, #32]	; (200004e0 <TimerConfig+0x60>)
200004be:	6d9b      	ldr	r3, [r3, #88]	; 0x58
200004c0:	f043 0302 	orr.w	r3, r3, #2
200004c4:	6593      	str	r3, [r2, #88]	; 0x58
200004c6:	4a06      	ldr	r2, [pc, #24]	; (200004e0 <TimerConfig+0x60>)
200004c8:	4b05      	ldr	r3, [pc, #20]	; (200004e0 <TimerConfig+0x60>)
200004ca:	68db      	ldr	r3, [r3, #12]
200004cc:	f043 0301 	orr.w	r3, r3, #1
200004d0:	60d3      	str	r3, [r2, #12]
200004d2:	200e      	movs	r0, #14
200004d4:	f7ff fdf4 	bl	200000c0 <NVIC_EnableIRQ>
200004d8:	bf00      	nop
200004da:	bd80      	pop	{r7, pc}
200004dc:	40020000 	.word	0x40020000
200004e0:	40070000 	.word	0x40070000

200004e4 <TIMER1_Handler>:
200004e4:	b480      	push	{r7}
200004e6:	af00      	add	r7, sp, #0
200004e8:	4b08      	ldr	r3, [pc, #32]	; (2000050c <TIMER1_Handler+0x28>)
200004ea:	2200      	movs	r2, #0
200004ec:	655a      	str	r2, [r3, #84]	; 0x54
200004ee:	4b08      	ldr	r3, [pc, #32]	; (20000510 <TIMER1_Handler+0x2c>)
200004f0:	f240 5255 	movw	r2, #1365	; 0x555
200004f4:	609a      	str	r2, [r3, #8]
200004f6:	4a07      	ldr	r2, [pc, #28]	; (20000514 <TIMER1_Handler+0x30>)
200004f8:	4b06      	ldr	r3, [pc, #24]	; (20000514 <TIMER1_Handler+0x30>)
200004fa:	681b      	ldr	r3, [r3, #0]
200004fc:	f043 0302 	orr.w	r3, r3, #2
20000500:	6013      	str	r3, [r2, #0]
20000502:	bf00      	nop
20000504:	46bd      	mov	sp, r7
20000506:	bc80      	pop	{r7}
20000508:	4770      	bx	lr
2000050a:	bf00      	nop
2000050c:	40070000 	.word	0x40070000
20000510:	40040000 	.word	0x40040000
20000514:	40088000 	.word	0x40088000
