
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 9d 02 00 08 fd 02 00 08 fd 02 00 08     ... ............
 8000010:	fd 02 00 08 fd 02 00 08 fd 02 00 08 00 00 00 00     ................
	...
 800002c:	fd 02 00 08 fd 02 00 08 00 00 00 00 fd 02 00 08     ................
 800003c:	71 02 00 08 fd 02 00 08 fd 02 00 08 fd 02 00 08     q...............
	...
 8000054:	fd 02 00 08 fd 02 00 08 fd 02 00 08 fd 02 00 08     ................
 8000064:	00 00 00 00 fd 02 00 08 fd 02 00 08 fd 02 00 08     ................
 8000074:	00 00 00 00 fd 02 00 08 fd 02 00 08 fd 02 00 08     ................
 8000084:	fd 02 00 08 00 00 00 00 fd 02 00 08 fd 02 00 08     ................
	...
 80000ac:	fd 02 00 08 fd 02 00 08 fd 02 00 08 fd 02 00 08     ................
 80000bc:	fd 02 00 08                                         ....

080000c0 <NVIC_SetPriority>:
 80000c0:	b480      	push	{r7}
 80000c2:	b083      	sub	sp, #12
 80000c4:	af00      	add	r7, sp, #0
 80000c6:	4603      	mov	r3, r0
 80000c8:	6039      	str	r1, [r7, #0]
 80000ca:	71fb      	strb	r3, [r7, #7]
 80000cc:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80000d0:	2b00      	cmp	r3, #0
 80000d2:	da0b      	bge.n	80000ec <NVIC_SetPriority+0x2c>
 80000d4:	490d      	ldr	r1, [pc, #52]	; (800010c <NVIC_SetPriority+0x4c>)
 80000d6:	79fb      	ldrb	r3, [r7, #7]
 80000d8:	f003 030f 	and.w	r3, r3, #15
 80000dc:	3b04      	subs	r3, #4
 80000de:	683a      	ldr	r2, [r7, #0]
 80000e0:	b2d2      	uxtb	r2, r2
 80000e2:	0152      	lsls	r2, r2, #5
 80000e4:	b2d2      	uxtb	r2, r2
 80000e6:	440b      	add	r3, r1
 80000e8:	761a      	strb	r2, [r3, #24]
 80000ea:	e009      	b.n	8000100 <NVIC_SetPriority+0x40>
 80000ec:	4908      	ldr	r1, [pc, #32]	; (8000110 <NVIC_SetPriority+0x50>)
 80000ee:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80000f2:	683a      	ldr	r2, [r7, #0]
 80000f4:	b2d2      	uxtb	r2, r2
 80000f6:	0152      	lsls	r2, r2, #5
 80000f8:	b2d2      	uxtb	r2, r2
 80000fa:	440b      	add	r3, r1
 80000fc:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8000100:	bf00      	nop
 8000102:	370c      	adds	r7, #12
 8000104:	46bd      	mov	sp, r7
 8000106:	bc80      	pop	{r7}
 8000108:	4770      	bx	lr
 800010a:	bf00      	nop
 800010c:	e000ed00 	.word	0xe000ed00
 8000110:	e000e100 	.word	0xe000e100

08000114 <SysTick_Config>:
 8000114:	b580      	push	{r7, lr}
 8000116:	b082      	sub	sp, #8
 8000118:	af00      	add	r7, sp, #0
 800011a:	6078      	str	r0, [r7, #4]
 800011c:	687b      	ldr	r3, [r7, #4]
 800011e:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 8000122:	d301      	bcc.n	8000128 <SysTick_Config+0x14>
 8000124:	2301      	movs	r3, #1
 8000126:	e011      	b.n	800014c <SysTick_Config+0x38>
 8000128:	4a0a      	ldr	r2, [pc, #40]	; (8000154 <SysTick_Config+0x40>)
 800012a:	687b      	ldr	r3, [r7, #4]
 800012c:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 8000130:	3b01      	subs	r3, #1
 8000132:	6053      	str	r3, [r2, #4]
 8000134:	2107      	movs	r1, #7
 8000136:	f04f 30ff 	mov.w	r0, #4294967295
 800013a:	f7ff ffc1 	bl	80000c0 <NVIC_SetPriority>
 800013e:	4b05      	ldr	r3, [pc, #20]	; (8000154 <SysTick_Config+0x40>)
 8000140:	2200      	movs	r2, #0
 8000142:	609a      	str	r2, [r3, #8]
 8000144:	4b03      	ldr	r3, [pc, #12]	; (8000154 <SysTick_Config+0x40>)
 8000146:	2207      	movs	r2, #7
 8000148:	601a      	str	r2, [r3, #0]
 800014a:	2300      	movs	r3, #0
 800014c:	4618      	mov	r0, r3
 800014e:	3708      	adds	r7, #8
 8000150:	46bd      	mov	sp, r7
 8000152:	bd80      	pop	{r7, pc}
 8000154:	e000e010 	.word	0xe000e010

08000158 <sleep>:
 8000158:	b480      	push	{r7}
 800015a:	b085      	sub	sp, #20
 800015c:	af00      	add	r7, sp, #0
 800015e:	6078      	str	r0, [r7, #4]
 8000160:	4b08      	ldr	r3, [pc, #32]	; (8000184 <sleep+0x2c>)
 8000162:	681a      	ldr	r2, [r3, #0]
 8000164:	687b      	ldr	r3, [r7, #4]
 8000166:	4413      	add	r3, r2
 8000168:	60fb      	str	r3, [r7, #12]
 800016a:	bf00      	nop
 800016c:	4b05      	ldr	r3, [pc, #20]	; (8000184 <sleep+0x2c>)
 800016e:	681a      	ldr	r2, [r3, #0]
 8000170:	68fb      	ldr	r3, [r7, #12]
 8000172:	429a      	cmp	r2, r3
 8000174:	d3fa      	bcc.n	800016c <sleep+0x14>
 8000176:	bf00      	nop
 8000178:	4618      	mov	r0, r3
 800017a:	3714      	adds	r7, #20
 800017c:	46bd      	mov	sp, r7
 800017e:	bc80      	pop	{r7}
 8000180:	4770      	bx	lr
 8000182:	bf00      	nop
 8000184:	20000008 	.word	0x20000008

08000188 <main>:
 8000188:	b580      	push	{r7, lr}
 800018a:	af00      	add	r7, sp, #0
 800018c:	f000 f832 	bl	80001f4 <ClkConfig>
 8000190:	f000 f806 	bl	80001a0 <PortConfig>
 8000194:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000198:	f7ff ffde 	bl	8000158 <sleep>
 800019c:	e7fa      	b.n	8000194 <main+0xc>
 800019e:	bf00      	nop

080001a0 <PortConfig>:
 80001a0:	b480      	push	{r7}
 80001a2:	af00      	add	r7, sp, #0
 80001a4:	4a11      	ldr	r2, [pc, #68]	; (80001ec <PortConfig+0x4c>)
 80001a6:	4b11      	ldr	r3, [pc, #68]	; (80001ec <PortConfig+0x4c>)
 80001a8:	69db      	ldr	r3, [r3, #28]
 80001aa:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 80001ae:	61d3      	str	r3, [r2, #28]
 80001b0:	4a0f      	ldr	r2, [pc, #60]	; (80001f0 <PortConfig+0x50>)
 80001b2:	4b0f      	ldr	r3, [pc, #60]	; (80001f0 <PortConfig+0x50>)
 80001b4:	689b      	ldr	r3, [r3, #8]
 80001b6:	6093      	str	r3, [r2, #8]
 80001b8:	4a0d      	ldr	r2, [pc, #52]	; (80001f0 <PortConfig+0x50>)
 80001ba:	4b0d      	ldr	r3, [pc, #52]	; (80001f0 <PortConfig+0x50>)
 80001bc:	681b      	ldr	r3, [r3, #0]
 80001be:	6013      	str	r3, [r2, #0]
 80001c0:	4a0b      	ldr	r2, [pc, #44]	; (80001f0 <PortConfig+0x50>)
 80001c2:	4b0b      	ldr	r3, [pc, #44]	; (80001f0 <PortConfig+0x50>)
 80001c4:	685b      	ldr	r3, [r3, #4]
 80001c6:	f043 0301 	orr.w	r3, r3, #1
 80001ca:	6053      	str	r3, [r2, #4]
 80001cc:	4a08      	ldr	r2, [pc, #32]	; (80001f0 <PortConfig+0x50>)
 80001ce:	4b08      	ldr	r3, [pc, #32]	; (80001f0 <PortConfig+0x50>)
 80001d0:	68db      	ldr	r3, [r3, #12]
 80001d2:	f043 0301 	orr.w	r3, r3, #1
 80001d6:	60d3      	str	r3, [r2, #12]
 80001d8:	4a05      	ldr	r2, [pc, #20]	; (80001f0 <PortConfig+0x50>)
 80001da:	4b05      	ldr	r3, [pc, #20]	; (80001f0 <PortConfig+0x50>)
 80001dc:	699b      	ldr	r3, [r3, #24]
 80001de:	f043 0303 	orr.w	r3, r3, #3
 80001e2:	6193      	str	r3, [r2, #24]
 80001e4:	bf00      	nop
 80001e6:	46bd      	mov	sp, r7
 80001e8:	bc80      	pop	{r7}
 80001ea:	4770      	bx	lr
 80001ec:	40020000 	.word	0x40020000
 80001f0:	400b0000 	.word	0x400b0000

080001f4 <ClkConfig>:
 80001f4:	b580      	push	{r7, lr}
 80001f6:	af00      	add	r7, sp, #0
 80001f8:	4a1a      	ldr	r2, [pc, #104]	; (8000264 <ClkConfig+0x70>)
 80001fa:	4b1a      	ldr	r3, [pc, #104]	; (8000264 <ClkConfig+0x70>)
 80001fc:	689b      	ldr	r3, [r3, #8]
 80001fe:	f043 0301 	orr.w	r3, r3, #1
 8000202:	6093      	str	r3, [r2, #8]
 8000204:	bf00      	nop
 8000206:	4b17      	ldr	r3, [pc, #92]	; (8000264 <ClkConfig+0x70>)
 8000208:	681b      	ldr	r3, [r3, #0]
 800020a:	f003 0304 	and.w	r3, r3, #4
 800020e:	2b00      	cmp	r3, #0
 8000210:	d0f9      	beq.n	8000206 <ClkConfig+0x12>
 8000212:	4a14      	ldr	r2, [pc, #80]	; (8000264 <ClkConfig+0x70>)
 8000214:	4b13      	ldr	r3, [pc, #76]	; (8000264 <ClkConfig+0x70>)
 8000216:	68db      	ldr	r3, [r3, #12]
 8000218:	f043 0302 	orr.w	r3, r3, #2
 800021c:	60d3      	str	r3, [r2, #12]
 800021e:	4b11      	ldr	r3, [pc, #68]	; (8000264 <ClkConfig+0x70>)
 8000220:	f640 1204 	movw	r2, #2308	; 0x904
 8000224:	605a      	str	r2, [r3, #4]
 8000226:	bf00      	nop
 8000228:	4b0e      	ldr	r3, [pc, #56]	; (8000264 <ClkConfig+0x70>)
 800022a:	681b      	ldr	r3, [r3, #0]
 800022c:	f003 0302 	and.w	r3, r3, #2
 8000230:	2b00      	cmp	r3, #0
 8000232:	d0f9      	beq.n	8000228 <ClkConfig+0x34>
 8000234:	4a0c      	ldr	r2, [pc, #48]	; (8000268 <ClkConfig+0x74>)
 8000236:	4b0c      	ldr	r3, [pc, #48]	; (8000268 <ClkConfig+0x74>)
 8000238:	681b      	ldr	r3, [r3, #0]
 800023a:	f043 0320 	orr.w	r3, r3, #32
 800023e:	6013      	str	r3, [r2, #0]
 8000240:	4a08      	ldr	r2, [pc, #32]	; (8000264 <ClkConfig+0x70>)
 8000242:	4b08      	ldr	r3, [pc, #32]	; (8000264 <ClkConfig+0x70>)
 8000244:	68db      	ldr	r3, [r3, #12]
 8000246:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800024a:	60d3      	str	r3, [r2, #12]
 800024c:	4a05      	ldr	r2, [pc, #20]	; (8000264 <ClkConfig+0x70>)
 800024e:	4b05      	ldr	r3, [pc, #20]	; (8000264 <ClkConfig+0x70>)
 8000250:	68db      	ldr	r3, [r3, #12]
 8000252:	f043 0304 	orr.w	r3, r3, #4
 8000256:	60d3      	str	r3, [r2, #12]
 8000258:	4804      	ldr	r0, [pc, #16]	; (800026c <ClkConfig+0x78>)
 800025a:	f7ff ff5b 	bl	8000114 <SysTick_Config>
 800025e:	bf00      	nop
 8000260:	bd80      	pop	{r7, pc}
 8000262:	bf00      	nop
 8000264:	40020000 	.word	0x40020000
 8000268:	40018000 	.word	0x40018000
 800026c:	00013880 	.word	0x00013880

08000270 <SysTick_Handler>:
 8000270:	b480      	push	{r7}
 8000272:	af00      	add	r7, sp, #0
 8000274:	4a07      	ldr	r2, [pc, #28]	; (8000294 <SysTick_Handler+0x24>)
 8000276:	4b07      	ldr	r3, [pc, #28]	; (8000294 <SysTick_Handler+0x24>)
 8000278:	681b      	ldr	r3, [r3, #0]
 800027a:	f083 0301 	eor.w	r3, r3, #1
 800027e:	6013      	str	r3, [r2, #0]
 8000280:	4b05      	ldr	r3, [pc, #20]	; (8000298 <SysTick_Handler+0x28>)
 8000282:	681b      	ldr	r3, [r3, #0]
 8000284:	3301      	adds	r3, #1
 8000286:	4a04      	ldr	r2, [pc, #16]	; (8000298 <SysTick_Handler+0x28>)
 8000288:	6013      	str	r3, [r2, #0]
 800028a:	bf00      	nop
 800028c:	46bd      	mov	sp, r7
 800028e:	bc80      	pop	{r7}
 8000290:	4770      	bx	lr
 8000292:	bf00      	nop
 8000294:	400b0000 	.word	0x400b0000
 8000298:	20000008 	.word	0x20000008

0800029c <handler_reset>:
 800029c:	b580      	push	{r7, lr}
 800029e:	b082      	sub	sp, #8
 80002a0:	af00      	add	r7, sp, #0
 80002a2:	4b11      	ldr	r3, [pc, #68]	; (80002e8 <handler_reset+0x4c>)
 80002a4:	607b      	str	r3, [r7, #4]
 80002a6:	4b11      	ldr	r3, [pc, #68]	; (80002ec <handler_reset+0x50>)
 80002a8:	603b      	str	r3, [r7, #0]
 80002aa:	e007      	b.n	80002bc <handler_reset+0x20>
 80002ac:	683b      	ldr	r3, [r7, #0]
 80002ae:	1d1a      	adds	r2, r3, #4
 80002b0:	603a      	str	r2, [r7, #0]
 80002b2:	687a      	ldr	r2, [r7, #4]
 80002b4:	1d11      	adds	r1, r2, #4
 80002b6:	6079      	str	r1, [r7, #4]
 80002b8:	6812      	ldr	r2, [r2, #0]
 80002ba:	601a      	str	r2, [r3, #0]
 80002bc:	683b      	ldr	r3, [r7, #0]
 80002be:	4a0c      	ldr	r2, [pc, #48]	; (80002f0 <handler_reset+0x54>)
 80002c0:	4293      	cmp	r3, r2
 80002c2:	d3f3      	bcc.n	80002ac <handler_reset+0x10>
 80002c4:	4b0b      	ldr	r3, [pc, #44]	; (80002f4 <handler_reset+0x58>)
 80002c6:	603b      	str	r3, [r7, #0]
 80002c8:	e004      	b.n	80002d4 <handler_reset+0x38>
 80002ca:	683b      	ldr	r3, [r7, #0]
 80002cc:	1d1a      	adds	r2, r3, #4
 80002ce:	603a      	str	r2, [r7, #0]
 80002d0:	2200      	movs	r2, #0
 80002d2:	601a      	str	r2, [r3, #0]
 80002d4:	683b      	ldr	r3, [r7, #0]
 80002d6:	4a08      	ldr	r2, [pc, #32]	; (80002f8 <handler_reset+0x5c>)
 80002d8:	4293      	cmp	r3, r2
 80002da:	d3f6      	bcc.n	80002ca <handler_reset+0x2e>
 80002dc:	f7ff ff54 	bl	8000188 <main>
 80002e0:	bf00      	nop
 80002e2:	3708      	adds	r7, #8
 80002e4:	46bd      	mov	sp, r7
 80002e6:	bd80      	pop	{r7, pc}
 80002e8:	08000304 	.word	0x08000304
 80002ec:	20000000 	.word	0x20000000
 80002f0:	20000000 	.word	0x20000000
 80002f4:	20000000 	.word	0x20000000
 80002f8:	2000000c 	.word	0x2000000c

080002fc <default_handler>:
 80002fc:	b480      	push	{r7}
 80002fe:	af00      	add	r7, sp, #0
 8000300:	e7fe      	b.n	8000300 <default_handler+0x4>
 8000302:	bf00      	nop
