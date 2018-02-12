
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 15 01 00 08 75 01 00 08 75 01 00 08     ... ....u...u...
 8000010:	75 01 00 08 75 01 00 08 75 01 00 08 00 00 00 00     u...u...u.......
	...
 800002c:	75 01 00 08 75 01 00 08 00 00 00 00 75 01 00 08     u...u.......u...
 800003c:	61 03 00 08 75 01 00 08 75 01 00 08 75 01 00 08     a...u...u...u...
	...
 8000054:	75 01 00 08 75 01 00 08 75 01 00 08 75 01 00 08     u...u...u...u...
 8000064:	00 00 00 00 75 01 00 08 75 01 00 08 75 01 00 08     ....u...u...u...
 8000074:	00 00 00 00 75 01 00 08 75 01 00 08 75 01 00 08     ....u...u...u...
 8000084:	75 01 00 08 00 00 00 00 75 01 00 08 75 01 00 08     u.......u...u...
	...
 80000ac:	75 01 00 08 75 01 00 08 75 01 00 08 75 01 00 08     u...u...u...u...
 80000bc:	75 01 00 08                                         u...

080000c0 <main>:
 80000c0:	b590      	push	{r4, r7, lr}
 80000c2:	b087      	sub	sp, #28
 80000c4:	af00      	add	r7, sp, #0
 80000c6:	4b09      	ldr	r3, [pc, #36]	; (80000ec <main+0x2c>)
 80000c8:	1d3c      	adds	r4, r7, #4
 80000ca:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
 80000cc:	c407      	stmia	r4!, {r0, r1, r2}
 80000ce:	8023      	strh	r3, [r4, #0]
 80000d0:	f000 f814 	bl	80000fc <SystemInit>
 80000d4:	4b06      	ldr	r3, [pc, #24]	; (80000f0 <main+0x30>)
 80000d6:	4a07      	ldr	r2, [pc, #28]	; (80000f4 <main+0x34>)
 80000d8:	601a      	str	r2, [r3, #0]
 80000da:	4b07      	ldr	r3, [pc, #28]	; (80000f8 <main+0x38>)
 80000dc:	2200      	movs	r2, #0
 80000de:	601a      	str	r2, [r3, #0]
 80000e0:	2300      	movs	r3, #0
 80000e2:	617b      	str	r3, [r7, #20]
 80000e4:	f000 fdaa 	bl	8000c3c <usb_device_update>
 80000e8:	e7fc      	b.n	80000e4 <main+0x24>
 80000ea:	bf00      	nop
 80000ec:	080011b4 	.word	0x080011b4
 80000f0:	20000034 	.word	0x20000034
 80000f4:	0800037d 	.word	0x0800037d
 80000f8:	20000028 	.word	0x20000028

080000fc <SystemInit>:
 80000fc:	b580      	push	{r7, lr}
 80000fe:	af00      	add	r7, sp, #0
 8000100:	f000 f8f0 	bl	80002e4 <ClkConfig>
 8000104:	f000 f89e 	bl	8000244 <PortConfig>
 8000108:	f000 f94e 	bl	80003a8 <UartConfig>
 800010c:	f000 fd3e 	bl	8000b8c <usb_device_init>
 8000110:	bf00      	nop
 8000112:	bd80      	pop	{r7, pc}

08000114 <handler_reset>:
 8000114:	b580      	push	{r7, lr}
 8000116:	b082      	sub	sp, #8
 8000118:	af00      	add	r7, sp, #0
 800011a:	4b11      	ldr	r3, [pc, #68]	; (8000160 <handler_reset+0x4c>)
 800011c:	607b      	str	r3, [r7, #4]
 800011e:	4b11      	ldr	r3, [pc, #68]	; (8000164 <handler_reset+0x50>)
 8000120:	603b      	str	r3, [r7, #0]
 8000122:	e007      	b.n	8000134 <handler_reset+0x20>
 8000124:	683b      	ldr	r3, [r7, #0]
 8000126:	1d1a      	adds	r2, r3, #4
 8000128:	603a      	str	r2, [r7, #0]
 800012a:	687a      	ldr	r2, [r7, #4]
 800012c:	1d11      	adds	r1, r2, #4
 800012e:	6079      	str	r1, [r7, #4]
 8000130:	6812      	ldr	r2, [r2, #0]
 8000132:	601a      	str	r2, [r3, #0]
 8000134:	683b      	ldr	r3, [r7, #0]
 8000136:	4a0c      	ldr	r2, [pc, #48]	; (8000168 <handler_reset+0x54>)
 8000138:	4293      	cmp	r3, r2
 800013a:	d3f3      	bcc.n	8000124 <handler_reset+0x10>
 800013c:	4b0b      	ldr	r3, [pc, #44]	; (800016c <handler_reset+0x58>)
 800013e:	603b      	str	r3, [r7, #0]
 8000140:	e004      	b.n	800014c <handler_reset+0x38>
 8000142:	683b      	ldr	r3, [r7, #0]
 8000144:	1d1a      	adds	r2, r3, #4
 8000146:	603a      	str	r2, [r7, #0]
 8000148:	2200      	movs	r2, #0
 800014a:	601a      	str	r2, [r3, #0]
 800014c:	683b      	ldr	r3, [r7, #0]
 800014e:	4a08      	ldr	r2, [pc, #32]	; (8000170 <handler_reset+0x5c>)
 8000150:	4293      	cmp	r3, r2
 8000152:	d3f6      	bcc.n	8000142 <handler_reset+0x2e>
 8000154:	f7ff ffb4 	bl	80000c0 <main>
 8000158:	bf00      	nop
 800015a:	3708      	adds	r7, #8
 800015c:	46bd      	mov	sp, r7
 800015e:	bd80      	pop	{r7, pc}
 8000160:	08001394 	.word	0x08001394
 8000164:	20000000 	.word	0x20000000
 8000168:	20000028 	.word	0x20000028
 800016c:	20000028 	.word	0x20000028
 8000170:	20000058 	.word	0x20000058

08000174 <default_handler>:
 8000174:	b480      	push	{r7}
 8000176:	af00      	add	r7, sp, #0
 8000178:	e7fe      	b.n	8000178 <default_handler+0x4>
 800017a:	bf00      	nop

0800017c <NVIC_SetPriority>:
 800017c:	b480      	push	{r7}
 800017e:	b083      	sub	sp, #12
 8000180:	af00      	add	r7, sp, #0
 8000182:	4603      	mov	r3, r0
 8000184:	6039      	str	r1, [r7, #0]
 8000186:	71fb      	strb	r3, [r7, #7]
 8000188:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800018c:	2b00      	cmp	r3, #0
 800018e:	da0b      	bge.n	80001a8 <NVIC_SetPriority+0x2c>
 8000190:	490d      	ldr	r1, [pc, #52]	; (80001c8 <NVIC_SetPriority+0x4c>)
 8000192:	79fb      	ldrb	r3, [r7, #7]
 8000194:	f003 030f 	and.w	r3, r3, #15
 8000198:	3b04      	subs	r3, #4
 800019a:	683a      	ldr	r2, [r7, #0]
 800019c:	b2d2      	uxtb	r2, r2
 800019e:	0152      	lsls	r2, r2, #5
 80001a0:	b2d2      	uxtb	r2, r2
 80001a2:	440b      	add	r3, r1
 80001a4:	761a      	strb	r2, [r3, #24]
 80001a6:	e009      	b.n	80001bc <NVIC_SetPriority+0x40>
 80001a8:	4908      	ldr	r1, [pc, #32]	; (80001cc <NVIC_SetPriority+0x50>)
 80001aa:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80001ae:	683a      	ldr	r2, [r7, #0]
 80001b0:	b2d2      	uxtb	r2, r2
 80001b2:	0152      	lsls	r2, r2, #5
 80001b4:	b2d2      	uxtb	r2, r2
 80001b6:	440b      	add	r3, r1
 80001b8:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80001bc:	bf00      	nop
 80001be:	370c      	adds	r7, #12
 80001c0:	46bd      	mov	sp, r7
 80001c2:	bc80      	pop	{r7}
 80001c4:	4770      	bx	lr
 80001c6:	bf00      	nop
 80001c8:	e000ed00 	.word	0xe000ed00
 80001cc:	e000e100 	.word	0xe000e100

080001d0 <SysTick_Config>:
 80001d0:	b580      	push	{r7, lr}
 80001d2:	b082      	sub	sp, #8
 80001d4:	af00      	add	r7, sp, #0
 80001d6:	6078      	str	r0, [r7, #4]
 80001d8:	687b      	ldr	r3, [r7, #4]
 80001da:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 80001de:	d301      	bcc.n	80001e4 <SysTick_Config+0x14>
 80001e0:	2301      	movs	r3, #1
 80001e2:	e011      	b.n	8000208 <SysTick_Config+0x38>
 80001e4:	4a0a      	ldr	r2, [pc, #40]	; (8000210 <SysTick_Config+0x40>)
 80001e6:	687b      	ldr	r3, [r7, #4]
 80001e8:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 80001ec:	3b01      	subs	r3, #1
 80001ee:	6053      	str	r3, [r2, #4]
 80001f0:	2107      	movs	r1, #7
 80001f2:	f04f 30ff 	mov.w	r0, #4294967295
 80001f6:	f7ff ffc1 	bl	800017c <NVIC_SetPriority>
 80001fa:	4b05      	ldr	r3, [pc, #20]	; (8000210 <SysTick_Config+0x40>)
 80001fc:	2200      	movs	r2, #0
 80001fe:	609a      	str	r2, [r3, #8]
 8000200:	4b03      	ldr	r3, [pc, #12]	; (8000210 <SysTick_Config+0x40>)
 8000202:	2207      	movs	r2, #7
 8000204:	601a      	str	r2, [r3, #0]
 8000206:	2300      	movs	r3, #0
 8000208:	4618      	mov	r0, r3
 800020a:	3708      	adds	r7, #8
 800020c:	46bd      	mov	sp, r7
 800020e:	bd80      	pop	{r7, pc}
 8000210:	e000e010 	.word	0xe000e010

08000214 <sleep>:
 8000214:	b480      	push	{r7}
 8000216:	b085      	sub	sp, #20
 8000218:	af00      	add	r7, sp, #0
 800021a:	6078      	str	r0, [r7, #4]
 800021c:	4b08      	ldr	r3, [pc, #32]	; (8000240 <sleep+0x2c>)
 800021e:	681a      	ldr	r2, [r3, #0]
 8000220:	687b      	ldr	r3, [r7, #4]
 8000222:	4413      	add	r3, r2
 8000224:	60fb      	str	r3, [r7, #12]
 8000226:	bf00      	nop
 8000228:	4b05      	ldr	r3, [pc, #20]	; (8000240 <sleep+0x2c>)
 800022a:	681a      	ldr	r2, [r3, #0]
 800022c:	68fb      	ldr	r3, [r7, #12]
 800022e:	429a      	cmp	r2, r3
 8000230:	d3fa      	bcc.n	8000228 <sleep+0x14>
 8000232:	bf00      	nop
 8000234:	4618      	mov	r0, r3
 8000236:	3714      	adds	r7, #20
 8000238:	46bd      	mov	sp, r7
 800023a:	bc80      	pop	{r7}
 800023c:	4770      	bx	lr
 800023e:	bf00      	nop
 8000240:	20000030 	.word	0x20000030

08000244 <PortConfig>:
 8000244:	b480      	push	{r7}
 8000246:	af00      	add	r7, sp, #0
 8000248:	4a23      	ldr	r2, [pc, #140]	; (80002d8 <PortConfig+0x94>)
 800024a:	4b23      	ldr	r3, [pc, #140]	; (80002d8 <PortConfig+0x94>)
 800024c:	69db      	ldr	r3, [r3, #28]
 800024e:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 8000252:	61d3      	str	r3, [r2, #28]
 8000254:	4a21      	ldr	r2, [pc, #132]	; (80002dc <PortConfig+0x98>)
 8000256:	4b21      	ldr	r3, [pc, #132]	; (80002dc <PortConfig+0x98>)
 8000258:	689b      	ldr	r3, [r3, #8]
 800025a:	6093      	str	r3, [r2, #8]
 800025c:	4a1f      	ldr	r2, [pc, #124]	; (80002dc <PortConfig+0x98>)
 800025e:	4b1f      	ldr	r3, [pc, #124]	; (80002dc <PortConfig+0x98>)
 8000260:	681b      	ldr	r3, [r3, #0]
 8000262:	6013      	str	r3, [r2, #0]
 8000264:	4a1d      	ldr	r2, [pc, #116]	; (80002dc <PortConfig+0x98>)
 8000266:	4b1d      	ldr	r3, [pc, #116]	; (80002dc <PortConfig+0x98>)
 8000268:	685b      	ldr	r3, [r3, #4]
 800026a:	f043 0301 	orr.w	r3, r3, #1
 800026e:	6053      	str	r3, [r2, #4]
 8000270:	4a1a      	ldr	r2, [pc, #104]	; (80002dc <PortConfig+0x98>)
 8000272:	4b1a      	ldr	r3, [pc, #104]	; (80002dc <PortConfig+0x98>)
 8000274:	68db      	ldr	r3, [r3, #12]
 8000276:	f043 0301 	orr.w	r3, r3, #1
 800027a:	60d3      	str	r3, [r2, #12]
 800027c:	4a17      	ldr	r2, [pc, #92]	; (80002dc <PortConfig+0x98>)
 800027e:	4b17      	ldr	r3, [pc, #92]	; (80002dc <PortConfig+0x98>)
 8000280:	699b      	ldr	r3, [r3, #24]
 8000282:	f043 0303 	orr.w	r3, r3, #3
 8000286:	6193      	str	r3, [r2, #24]
 8000288:	4a13      	ldr	r2, [pc, #76]	; (80002d8 <PortConfig+0x94>)
 800028a:	4b13      	ldr	r3, [pc, #76]	; (80002d8 <PortConfig+0x94>)
 800028c:	69db      	ldr	r3, [r3, #28]
 800028e:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 8000292:	61d3      	str	r3, [r2, #28]
 8000294:	4a12      	ldr	r2, [pc, #72]	; (80002e0 <PortConfig+0x9c>)
 8000296:	4b12      	ldr	r3, [pc, #72]	; (80002e0 <PortConfig+0x9c>)
 8000298:	689b      	ldr	r3, [r3, #8]
 800029a:	f023 030f 	bic.w	r3, r3, #15
 800029e:	6093      	str	r3, [r2, #8]
 80002a0:	4a0f      	ldr	r2, [pc, #60]	; (80002e0 <PortConfig+0x9c>)
 80002a2:	4b0f      	ldr	r3, [pc, #60]	; (80002e0 <PortConfig+0x9c>)
 80002a4:	689b      	ldr	r3, [r3, #8]
 80002a6:	f043 030f 	orr.w	r3, r3, #15
 80002aa:	6093      	str	r3, [r2, #8]
 80002ac:	4a0c      	ldr	r2, [pc, #48]	; (80002e0 <PortConfig+0x9c>)
 80002ae:	4b0c      	ldr	r3, [pc, #48]	; (80002e0 <PortConfig+0x9c>)
 80002b0:	68db      	ldr	r3, [r3, #12]
 80002b2:	f043 0303 	orr.w	r3, r3, #3
 80002b6:	60d3      	str	r3, [r2, #12]
 80002b8:	4a09      	ldr	r2, [pc, #36]	; (80002e0 <PortConfig+0x9c>)
 80002ba:	4b09      	ldr	r3, [pc, #36]	; (80002e0 <PortConfig+0x9c>)
 80002bc:	699b      	ldr	r3, [r3, #24]
 80002be:	f043 030f 	orr.w	r3, r3, #15
 80002c2:	6193      	str	r3, [r2, #24]
 80002c4:	4a06      	ldr	r2, [pc, #24]	; (80002e0 <PortConfig+0x9c>)
 80002c6:	4b06      	ldr	r3, [pc, #24]	; (80002e0 <PortConfig+0x9c>)
 80002c8:	681b      	ldr	r3, [r3, #0]
 80002ca:	f023 0303 	bic.w	r3, r3, #3
 80002ce:	6013      	str	r3, [r2, #0]
 80002d0:	bf00      	nop
 80002d2:	46bd      	mov	sp, r7
 80002d4:	bc80      	pop	{r7}
 80002d6:	4770      	bx	lr
 80002d8:	40020000 	.word	0x40020000
 80002dc:	400b0000 	.word	0x400b0000
 80002e0:	400e8000 	.word	0x400e8000

080002e4 <ClkConfig>:
 80002e4:	b580      	push	{r7, lr}
 80002e6:	af00      	add	r7, sp, #0
 80002e8:	4a1a      	ldr	r2, [pc, #104]	; (8000354 <ClkConfig+0x70>)
 80002ea:	4b1a      	ldr	r3, [pc, #104]	; (8000354 <ClkConfig+0x70>)
 80002ec:	689b      	ldr	r3, [r3, #8]
 80002ee:	f043 0301 	orr.w	r3, r3, #1
 80002f2:	6093      	str	r3, [r2, #8]
 80002f4:	bf00      	nop
 80002f6:	4b17      	ldr	r3, [pc, #92]	; (8000354 <ClkConfig+0x70>)
 80002f8:	681b      	ldr	r3, [r3, #0]
 80002fa:	f003 0304 	and.w	r3, r3, #4
 80002fe:	2b00      	cmp	r3, #0
 8000300:	d0f9      	beq.n	80002f6 <ClkConfig+0x12>
 8000302:	4a14      	ldr	r2, [pc, #80]	; (8000354 <ClkConfig+0x70>)
 8000304:	4b13      	ldr	r3, [pc, #76]	; (8000354 <ClkConfig+0x70>)
 8000306:	68db      	ldr	r3, [r3, #12]
 8000308:	f043 0302 	orr.w	r3, r3, #2
 800030c:	60d3      	str	r3, [r2, #12]
 800030e:	4b11      	ldr	r3, [pc, #68]	; (8000354 <ClkConfig+0x70>)
 8000310:	f640 1204 	movw	r2, #2308	; 0x904
 8000314:	605a      	str	r2, [r3, #4]
 8000316:	bf00      	nop
 8000318:	4b0e      	ldr	r3, [pc, #56]	; (8000354 <ClkConfig+0x70>)
 800031a:	681b      	ldr	r3, [r3, #0]
 800031c:	f003 0302 	and.w	r3, r3, #2
 8000320:	2b00      	cmp	r3, #0
 8000322:	d0f9      	beq.n	8000318 <ClkConfig+0x34>
 8000324:	4a0c      	ldr	r2, [pc, #48]	; (8000358 <ClkConfig+0x74>)
 8000326:	4b0c      	ldr	r3, [pc, #48]	; (8000358 <ClkConfig+0x74>)
 8000328:	681b      	ldr	r3, [r3, #0]
 800032a:	f043 0320 	orr.w	r3, r3, #32
 800032e:	6013      	str	r3, [r2, #0]
 8000330:	4a08      	ldr	r2, [pc, #32]	; (8000354 <ClkConfig+0x70>)
 8000332:	4b08      	ldr	r3, [pc, #32]	; (8000354 <ClkConfig+0x70>)
 8000334:	68db      	ldr	r3, [r3, #12]
 8000336:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800033a:	60d3      	str	r3, [r2, #12]
 800033c:	4a05      	ldr	r2, [pc, #20]	; (8000354 <ClkConfig+0x70>)
 800033e:	4b05      	ldr	r3, [pc, #20]	; (8000354 <ClkConfig+0x70>)
 8000340:	68db      	ldr	r3, [r3, #12]
 8000342:	f043 0304 	orr.w	r3, r3, #4
 8000346:	60d3      	str	r3, [r2, #12]
 8000348:	4804      	ldr	r0, [pc, #16]	; (800035c <ClkConfig+0x78>)
 800034a:	f7ff ff41 	bl	80001d0 <SysTick_Config>
 800034e:	bf00      	nop
 8000350:	bd80      	pop	{r7, pc}
 8000352:	bf00      	nop
 8000354:	40020000 	.word	0x40020000
 8000358:	40018000 	.word	0x40018000
 800035c:	00013880 	.word	0x00013880

08000360 <SysTick_Handler>:
 8000360:	b480      	push	{r7}
 8000362:	af00      	add	r7, sp, #0
 8000364:	4b04      	ldr	r3, [pc, #16]	; (8000378 <SysTick_Handler+0x18>)
 8000366:	681b      	ldr	r3, [r3, #0]
 8000368:	3301      	adds	r3, #1
 800036a:	4a03      	ldr	r2, [pc, #12]	; (8000378 <SysTick_Handler+0x18>)
 800036c:	6013      	str	r3, [r2, #0]
 800036e:	bf00      	nop
 8000370:	46bd      	mov	sp, r7
 8000372:	bc80      	pop	{r7}
 8000374:	4770      	bx	lr
 8000376:	bf00      	nop
 8000378:	20000030 	.word	0x20000030

0800037c <uart2_putch>:
 800037c:	b480      	push	{r7}
 800037e:	b083      	sub	sp, #12
 8000380:	af00      	add	r7, sp, #0
 8000382:	4603      	mov	r3, r0
 8000384:	71fb      	strb	r3, [r7, #7]
 8000386:	bf00      	nop
 8000388:	4b06      	ldr	r3, [pc, #24]	; (80003a4 <uart2_putch+0x28>)
 800038a:	699b      	ldr	r3, [r3, #24]
 800038c:	f003 0320 	and.w	r3, r3, #32
 8000390:	2b00      	cmp	r3, #0
 8000392:	d1f9      	bne.n	8000388 <uart2_putch+0xc>
 8000394:	4a03      	ldr	r2, [pc, #12]	; (80003a4 <uart2_putch+0x28>)
 8000396:	79fb      	ldrb	r3, [r7, #7]
 8000398:	6013      	str	r3, [r2, #0]
 800039a:	bf00      	nop
 800039c:	370c      	adds	r7, #12
 800039e:	46bd      	mov	sp, r7
 80003a0:	bc80      	pop	{r7}
 80003a2:	4770      	bx	lr
 80003a4:	40038000 	.word	0x40038000

080003a8 <UartConfig>:
 80003a8:	b480      	push	{r7}
 80003aa:	af00      	add	r7, sp, #0
 80003ac:	4a1a      	ldr	r2, [pc, #104]	; (8000418 <UartConfig+0x70>)
 80003ae:	4b1a      	ldr	r3, [pc, #104]	; (8000418 <UartConfig+0x70>)
 80003b0:	69db      	ldr	r3, [r3, #28]
 80003b2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80003b6:	61d3      	str	r3, [r2, #28]
 80003b8:	4a17      	ldr	r2, [pc, #92]	; (8000418 <UartConfig+0x70>)
 80003ba:	4b17      	ldr	r3, [pc, #92]	; (8000418 <UartConfig+0x70>)
 80003bc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80003be:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 80003c2:	6293      	str	r3, [r2, #40]	; 0x28
 80003c4:	4b15      	ldr	r3, [pc, #84]	; (800041c <UartConfig+0x74>)
 80003c6:	222b      	movs	r2, #43	; 0x2b
 80003c8:	625a      	str	r2, [r3, #36]	; 0x24
 80003ca:	4b14      	ldr	r3, [pc, #80]	; (800041c <UartConfig+0x74>)
 80003cc:	221a      	movs	r2, #26
 80003ce:	629a      	str	r2, [r3, #40]	; 0x28
 80003d0:	4a12      	ldr	r2, [pc, #72]	; (800041c <UartConfig+0x74>)
 80003d2:	4b12      	ldr	r3, [pc, #72]	; (800041c <UartConfig+0x74>)
 80003d4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80003d6:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 80003da:	6353      	str	r3, [r2, #52]	; 0x34
 80003dc:	4a0f      	ldr	r2, [pc, #60]	; (800041c <UartConfig+0x74>)
 80003de:	4b0f      	ldr	r3, [pc, #60]	; (800041c <UartConfig+0x74>)
 80003e0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80003e2:	f043 0324 	orr.w	r3, r3, #36	; 0x24
 80003e6:	6353      	str	r3, [r2, #52]	; 0x34
 80003e8:	4a0c      	ldr	r2, [pc, #48]	; (800041c <UartConfig+0x74>)
 80003ea:	4b0c      	ldr	r3, [pc, #48]	; (800041c <UartConfig+0x74>)
 80003ec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80003ee:	f043 0310 	orr.w	r3, r3, #16
 80003f2:	62d3      	str	r3, [r2, #44]	; 0x2c
 80003f4:	4a09      	ldr	r2, [pc, #36]	; (800041c <UartConfig+0x74>)
 80003f6:	4b09      	ldr	r3, [pc, #36]	; (800041c <UartConfig+0x74>)
 80003f8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80003fa:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 80003fe:	62d3      	str	r3, [r2, #44]	; 0x2c
 8000400:	4a06      	ldr	r2, [pc, #24]	; (800041c <UartConfig+0x74>)
 8000402:	4b06      	ldr	r3, [pc, #24]	; (800041c <UartConfig+0x74>)
 8000404:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000406:	f443 7340 	orr.w	r3, r3, #768	; 0x300
 800040a:	f043 0301 	orr.w	r3, r3, #1
 800040e:	6313      	str	r3, [r2, #48]	; 0x30
 8000410:	bf00      	nop
 8000412:	46bd      	mov	sp, r7
 8000414:	bc80      	pop	{r7}
 8000416:	4770      	bx	lr
 8000418:	40020000 	.word	0x40020000
 800041c:	40038000 	.word	0x40038000

08000420 <xputc>:
 8000420:	b580      	push	{r7, lr}
 8000422:	b082      	sub	sp, #8
 8000424:	af00      	add	r7, sp, #0
 8000426:	4603      	mov	r3, r0
 8000428:	71fb      	strb	r3, [r7, #7]
 800042a:	79fb      	ldrb	r3, [r7, #7]
 800042c:	2b0a      	cmp	r3, #10
 800042e:	d102      	bne.n	8000436 <xputc+0x16>
 8000430:	200d      	movs	r0, #13
 8000432:	f7ff fff5 	bl	8000420 <xputc>
 8000436:	4b0c      	ldr	r3, [pc, #48]	; (8000468 <xputc+0x48>)
 8000438:	681b      	ldr	r3, [r3, #0]
 800043a:	2b00      	cmp	r3, #0
 800043c:	d007      	beq.n	800044e <xputc+0x2e>
 800043e:	4b0a      	ldr	r3, [pc, #40]	; (8000468 <xputc+0x48>)
 8000440:	681b      	ldr	r3, [r3, #0]
 8000442:	1c5a      	adds	r2, r3, #1
 8000444:	4908      	ldr	r1, [pc, #32]	; (8000468 <xputc+0x48>)
 8000446:	600a      	str	r2, [r1, #0]
 8000448:	79fa      	ldrb	r2, [r7, #7]
 800044a:	701a      	strb	r2, [r3, #0]
 800044c:	e008      	b.n	8000460 <xputc+0x40>
 800044e:	4b07      	ldr	r3, [pc, #28]	; (800046c <xputc+0x4c>)
 8000450:	681b      	ldr	r3, [r3, #0]
 8000452:	2b00      	cmp	r3, #0
 8000454:	d004      	beq.n	8000460 <xputc+0x40>
 8000456:	4b05      	ldr	r3, [pc, #20]	; (800046c <xputc+0x4c>)
 8000458:	681b      	ldr	r3, [r3, #0]
 800045a:	79fa      	ldrb	r2, [r7, #7]
 800045c:	4610      	mov	r0, r2
 800045e:	4798      	blx	r3
 8000460:	3708      	adds	r7, #8
 8000462:	46bd      	mov	sp, r7
 8000464:	bd80      	pop	{r7, pc}
 8000466:	bf00      	nop
 8000468:	20000038 	.word	0x20000038
 800046c:	20000034 	.word	0x20000034

08000470 <xputs>:
 8000470:	b580      	push	{r7, lr}
 8000472:	b082      	sub	sp, #8
 8000474:	af00      	add	r7, sp, #0
 8000476:	6078      	str	r0, [r7, #4]
 8000478:	e006      	b.n	8000488 <xputs+0x18>
 800047a:	687b      	ldr	r3, [r7, #4]
 800047c:	1c5a      	adds	r2, r3, #1
 800047e:	607a      	str	r2, [r7, #4]
 8000480:	781b      	ldrb	r3, [r3, #0]
 8000482:	4618      	mov	r0, r3
 8000484:	f7ff ffcc 	bl	8000420 <xputc>
 8000488:	687b      	ldr	r3, [r7, #4]
 800048a:	781b      	ldrb	r3, [r3, #0]
 800048c:	2b00      	cmp	r3, #0
 800048e:	d1f4      	bne.n	800047a <xputs+0xa>
 8000490:	bf00      	nop
 8000492:	3708      	adds	r7, #8
 8000494:	46bd      	mov	sp, r7
 8000496:	bd80      	pop	{r7, pc}

08000498 <xfputs>:
 8000498:	b580      	push	{r7, lr}
 800049a:	b084      	sub	sp, #16
 800049c:	af00      	add	r7, sp, #0
 800049e:	6078      	str	r0, [r7, #4]
 80004a0:	6039      	str	r1, [r7, #0]
 80004a2:	4b0c      	ldr	r3, [pc, #48]	; (80004d4 <xfputs+0x3c>)
 80004a4:	681b      	ldr	r3, [r3, #0]
 80004a6:	60fb      	str	r3, [r7, #12]
 80004a8:	4a0a      	ldr	r2, [pc, #40]	; (80004d4 <xfputs+0x3c>)
 80004aa:	687b      	ldr	r3, [r7, #4]
 80004ac:	6013      	str	r3, [r2, #0]
 80004ae:	e006      	b.n	80004be <xfputs+0x26>
 80004b0:	683b      	ldr	r3, [r7, #0]
 80004b2:	1c5a      	adds	r2, r3, #1
 80004b4:	603a      	str	r2, [r7, #0]
 80004b6:	781b      	ldrb	r3, [r3, #0]
 80004b8:	4618      	mov	r0, r3
 80004ba:	f7ff ffb1 	bl	8000420 <xputc>
 80004be:	683b      	ldr	r3, [r7, #0]
 80004c0:	781b      	ldrb	r3, [r3, #0]
 80004c2:	2b00      	cmp	r3, #0
 80004c4:	d1f4      	bne.n	80004b0 <xfputs+0x18>
 80004c6:	4a03      	ldr	r2, [pc, #12]	; (80004d4 <xfputs+0x3c>)
 80004c8:	68fb      	ldr	r3, [r7, #12]
 80004ca:	6013      	str	r3, [r2, #0]
 80004cc:	bf00      	nop
 80004ce:	3710      	adds	r7, #16
 80004d0:	46bd      	mov	sp, r7
 80004d2:	bd80      	pop	{r7, pc}
 80004d4:	20000034 	.word	0x20000034

080004d8 <xvprintf>:
 80004d8:	b580      	push	{r7, lr}
 80004da:	b08e      	sub	sp, #56	; 0x38
 80004dc:	af00      	add	r7, sp, #0
 80004de:	6078      	str	r0, [r7, #4]
 80004e0:	6039      	str	r1, [r7, #0]
 80004e2:	687b      	ldr	r3, [r7, #4]
 80004e4:	1c5a      	adds	r2, r3, #1
 80004e6:	607a      	str	r2, [r7, #4]
 80004e8:	781b      	ldrb	r3, [r3, #0]
 80004ea:	77fb      	strb	r3, [r7, #31]
 80004ec:	7ffb      	ldrb	r3, [r7, #31]
 80004ee:	2b00      	cmp	r3, #0
 80004f0:	f000 8167 	beq.w	80007c2 <xvprintf+0x2ea>
 80004f4:	7ffb      	ldrb	r3, [r7, #31]
 80004f6:	2b25      	cmp	r3, #37	; 0x25
 80004f8:	d004      	beq.n	8000504 <xvprintf+0x2c>
 80004fa:	7ffb      	ldrb	r3, [r7, #31]
 80004fc:	4618      	mov	r0, r3
 80004fe:	f7ff ff8f 	bl	8000420 <xputc>
 8000502:	e15d      	b.n	80007c0 <xvprintf+0x2e8>
 8000504:	2300      	movs	r3, #0
 8000506:	627b      	str	r3, [r7, #36]	; 0x24
 8000508:	687b      	ldr	r3, [r7, #4]
 800050a:	1c5a      	adds	r2, r3, #1
 800050c:	607a      	str	r2, [r7, #4]
 800050e:	781b      	ldrb	r3, [r3, #0]
 8000510:	77fb      	strb	r3, [r7, #31]
 8000512:	7ffb      	ldrb	r3, [r7, #31]
 8000514:	2b30      	cmp	r3, #48	; 0x30
 8000516:	d107      	bne.n	8000528 <xvprintf+0x50>
 8000518:	2301      	movs	r3, #1
 800051a:	627b      	str	r3, [r7, #36]	; 0x24
 800051c:	687b      	ldr	r3, [r7, #4]
 800051e:	1c5a      	adds	r2, r3, #1
 8000520:	607a      	str	r2, [r7, #4]
 8000522:	781b      	ldrb	r3, [r3, #0]
 8000524:	77fb      	strb	r3, [r7, #31]
 8000526:	e009      	b.n	800053c <xvprintf+0x64>
 8000528:	7ffb      	ldrb	r3, [r7, #31]
 800052a:	2b2d      	cmp	r3, #45	; 0x2d
 800052c:	d106      	bne.n	800053c <xvprintf+0x64>
 800052e:	2302      	movs	r3, #2
 8000530:	627b      	str	r3, [r7, #36]	; 0x24
 8000532:	687b      	ldr	r3, [r7, #4]
 8000534:	1c5a      	adds	r2, r3, #1
 8000536:	607a      	str	r2, [r7, #4]
 8000538:	781b      	ldrb	r3, [r3, #0]
 800053a:	77fb      	strb	r3, [r7, #31]
 800053c:	2300      	movs	r3, #0
 800053e:	62bb      	str	r3, [r7, #40]	; 0x28
 8000540:	e00e      	b.n	8000560 <xvprintf+0x88>
 8000542:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000544:	4613      	mov	r3, r2
 8000546:	009b      	lsls	r3, r3, #2
 8000548:	4413      	add	r3, r2
 800054a:	005b      	lsls	r3, r3, #1
 800054c:	461a      	mov	r2, r3
 800054e:	7ffb      	ldrb	r3, [r7, #31]
 8000550:	4413      	add	r3, r2
 8000552:	3b30      	subs	r3, #48	; 0x30
 8000554:	62bb      	str	r3, [r7, #40]	; 0x28
 8000556:	687b      	ldr	r3, [r7, #4]
 8000558:	1c5a      	adds	r2, r3, #1
 800055a:	607a      	str	r2, [r7, #4]
 800055c:	781b      	ldrb	r3, [r3, #0]
 800055e:	77fb      	strb	r3, [r7, #31]
 8000560:	7ffb      	ldrb	r3, [r7, #31]
 8000562:	2b2f      	cmp	r3, #47	; 0x2f
 8000564:	d902      	bls.n	800056c <xvprintf+0x94>
 8000566:	7ffb      	ldrb	r3, [r7, #31]
 8000568:	2b39      	cmp	r3, #57	; 0x39
 800056a:	d9ea      	bls.n	8000542 <xvprintf+0x6a>
 800056c:	7ffb      	ldrb	r3, [r7, #31]
 800056e:	2b6c      	cmp	r3, #108	; 0x6c
 8000570:	d002      	beq.n	8000578 <xvprintf+0xa0>
 8000572:	7ffb      	ldrb	r3, [r7, #31]
 8000574:	2b4c      	cmp	r3, #76	; 0x4c
 8000576:	d108      	bne.n	800058a <xvprintf+0xb2>
 8000578:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800057a:	f043 0304 	orr.w	r3, r3, #4
 800057e:	627b      	str	r3, [r7, #36]	; 0x24
 8000580:	687b      	ldr	r3, [r7, #4]
 8000582:	1c5a      	adds	r2, r3, #1
 8000584:	607a      	str	r2, [r7, #4]
 8000586:	781b      	ldrb	r3, [r3, #0]
 8000588:	77fb      	strb	r3, [r7, #31]
 800058a:	7ffb      	ldrb	r3, [r7, #31]
 800058c:	2b00      	cmp	r3, #0
 800058e:	f000 811a 	beq.w	80007c6 <xvprintf+0x2ee>
 8000592:	7ffb      	ldrb	r3, [r7, #31]
 8000594:	77bb      	strb	r3, [r7, #30]
 8000596:	7fbb      	ldrb	r3, [r7, #30]
 8000598:	2b60      	cmp	r3, #96	; 0x60
 800059a:	d902      	bls.n	80005a2 <xvprintf+0xca>
 800059c:	7fbb      	ldrb	r3, [r7, #30]
 800059e:	3b20      	subs	r3, #32
 80005a0:	77bb      	strb	r3, [r7, #30]
 80005a2:	7fbb      	ldrb	r3, [r7, #30]
 80005a4:	3b42      	subs	r3, #66	; 0x42
 80005a6:	2b16      	cmp	r3, #22
 80005a8:	d873      	bhi.n	8000692 <xvprintf+0x1ba>
 80005aa:	a201      	add	r2, pc, #4	; (adr r2, 80005b0 <xvprintf+0xd8>)
 80005ac:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80005b0:	0800067b 	.word	0x0800067b
 80005b4:	08000669 	.word	0x08000669
 80005b8:	08000687 	.word	0x08000687
 80005bc:	08000693 	.word	0x08000693
 80005c0:	08000693 	.word	0x08000693
 80005c4:	08000693 	.word	0x08000693
 80005c8:	08000693 	.word	0x08000693
 80005cc:	08000693 	.word	0x08000693
 80005d0:	08000693 	.word	0x08000693
 80005d4:	08000693 	.word	0x08000693
 80005d8:	08000693 	.word	0x08000693
 80005dc:	08000693 	.word	0x08000693
 80005e0:	08000693 	.word	0x08000693
 80005e4:	08000681 	.word	0x08000681
 80005e8:	08000693 	.word	0x08000693
 80005ec:	08000693 	.word	0x08000693
 80005f0:	08000693 	.word	0x08000693
 80005f4:	0800060d 	.word	0x0800060d
 80005f8:	08000693 	.word	0x08000693
 80005fc:	08000687 	.word	0x08000687
 8000600:	08000693 	.word	0x08000693
 8000604:	08000693 	.word	0x08000693
 8000608:	0800068d 	.word	0x0800068d
 800060c:	683b      	ldr	r3, [r7, #0]
 800060e:	1d1a      	adds	r2, r3, #4
 8000610:	603a      	str	r2, [r7, #0]
 8000612:	681b      	ldr	r3, [r3, #0]
 8000614:	61bb      	str	r3, [r7, #24]
 8000616:	2300      	movs	r3, #0
 8000618:	62fb      	str	r3, [r7, #44]	; 0x2c
 800061a:	e002      	b.n	8000622 <xvprintf+0x14a>
 800061c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800061e:	3301      	adds	r3, #1
 8000620:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000622:	69ba      	ldr	r2, [r7, #24]
 8000624:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000626:	4413      	add	r3, r2
 8000628:	781b      	ldrb	r3, [r3, #0]
 800062a:	2b00      	cmp	r3, #0
 800062c:	d1f6      	bne.n	800061c <xvprintf+0x144>
 800062e:	e002      	b.n	8000636 <xvprintf+0x15e>
 8000630:	2020      	movs	r0, #32
 8000632:	f7ff fef5 	bl	8000420 <xputc>
 8000636:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000638:	f003 0302 	and.w	r3, r3, #2
 800063c:	2b00      	cmp	r3, #0
 800063e:	d105      	bne.n	800064c <xvprintf+0x174>
 8000640:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000642:	1c5a      	adds	r2, r3, #1
 8000644:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000646:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000648:	4293      	cmp	r3, r2
 800064a:	d3f1      	bcc.n	8000630 <xvprintf+0x158>
 800064c:	69b8      	ldr	r0, [r7, #24]
 800064e:	f7ff ff0f 	bl	8000470 <xputs>
 8000652:	e002      	b.n	800065a <xvprintf+0x182>
 8000654:	2020      	movs	r0, #32
 8000656:	f7ff fee3 	bl	8000420 <xputc>
 800065a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800065c:	1c5a      	adds	r2, r3, #1
 800065e:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000660:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000662:	4293      	cmp	r3, r2
 8000664:	d3f6      	bcc.n	8000654 <xvprintf+0x17c>
 8000666:	e0ab      	b.n	80007c0 <xvprintf+0x2e8>
 8000668:	683b      	ldr	r3, [r7, #0]
 800066a:	1d1a      	adds	r2, r3, #4
 800066c:	603a      	str	r2, [r7, #0]
 800066e:	681b      	ldr	r3, [r3, #0]
 8000670:	b2db      	uxtb	r3, r3
 8000672:	4618      	mov	r0, r3
 8000674:	f7ff fed4 	bl	8000420 <xputc>
 8000678:	e0a2      	b.n	80007c0 <xvprintf+0x2e8>
 800067a:	2302      	movs	r3, #2
 800067c:	637b      	str	r3, [r7, #52]	; 0x34
 800067e:	e00d      	b.n	800069c <xvprintf+0x1c4>
 8000680:	2308      	movs	r3, #8
 8000682:	637b      	str	r3, [r7, #52]	; 0x34
 8000684:	e00a      	b.n	800069c <xvprintf+0x1c4>
 8000686:	230a      	movs	r3, #10
 8000688:	637b      	str	r3, [r7, #52]	; 0x34
 800068a:	e007      	b.n	800069c <xvprintf+0x1c4>
 800068c:	2310      	movs	r3, #16
 800068e:	637b      	str	r3, [r7, #52]	; 0x34
 8000690:	e004      	b.n	800069c <xvprintf+0x1c4>
 8000692:	7ffb      	ldrb	r3, [r7, #31]
 8000694:	4618      	mov	r0, r3
 8000696:	f7ff fec3 	bl	8000420 <xputc>
 800069a:	e091      	b.n	80007c0 <xvprintf+0x2e8>
 800069c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800069e:	f003 0304 	and.w	r3, r3, #4
 80006a2:	2b00      	cmp	r3, #0
 80006a4:	d004      	beq.n	80006b0 <xvprintf+0x1d8>
 80006a6:	683b      	ldr	r3, [r7, #0]
 80006a8:	1d1a      	adds	r2, r3, #4
 80006aa:	603a      	str	r2, [r7, #0]
 80006ac:	681b      	ldr	r3, [r3, #0]
 80006ae:	e00b      	b.n	80006c8 <xvprintf+0x1f0>
 80006b0:	7fbb      	ldrb	r3, [r7, #30]
 80006b2:	2b44      	cmp	r3, #68	; 0x44
 80006b4:	d104      	bne.n	80006c0 <xvprintf+0x1e8>
 80006b6:	683b      	ldr	r3, [r7, #0]
 80006b8:	1d1a      	adds	r2, r3, #4
 80006ba:	603a      	str	r2, [r7, #0]
 80006bc:	681b      	ldr	r3, [r3, #0]
 80006be:	e003      	b.n	80006c8 <xvprintf+0x1f0>
 80006c0:	683b      	ldr	r3, [r7, #0]
 80006c2:	1d1a      	adds	r2, r3, #4
 80006c4:	603a      	str	r2, [r7, #0]
 80006c6:	681b      	ldr	r3, [r3, #0]
 80006c8:	623b      	str	r3, [r7, #32]
 80006ca:	7fbb      	ldrb	r3, [r7, #30]
 80006cc:	2b44      	cmp	r3, #68	; 0x44
 80006ce:	d109      	bne.n	80006e4 <xvprintf+0x20c>
 80006d0:	6a3b      	ldr	r3, [r7, #32]
 80006d2:	2b00      	cmp	r3, #0
 80006d4:	da06      	bge.n	80006e4 <xvprintf+0x20c>
 80006d6:	6a3b      	ldr	r3, [r7, #32]
 80006d8:	425b      	negs	r3, r3
 80006da:	623b      	str	r3, [r7, #32]
 80006dc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80006de:	f043 0308 	orr.w	r3, r3, #8
 80006e2:	627b      	str	r3, [r7, #36]	; 0x24
 80006e4:	2300      	movs	r3, #0
 80006e6:	633b      	str	r3, [r7, #48]	; 0x30
 80006e8:	6a3b      	ldr	r3, [r7, #32]
 80006ea:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80006ec:	fbb3 f2f2 	udiv	r2, r3, r2
 80006f0:	6b79      	ldr	r1, [r7, #52]	; 0x34
 80006f2:	fb01 f202 	mul.w	r2, r1, r2
 80006f6:	1a9b      	subs	r3, r3, r2
 80006f8:	77bb      	strb	r3, [r7, #30]
 80006fa:	6a3a      	ldr	r2, [r7, #32]
 80006fc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80006fe:	fbb2 f3f3 	udiv	r3, r2, r3
 8000702:	623b      	str	r3, [r7, #32]
 8000704:	7fbb      	ldrb	r3, [r7, #30]
 8000706:	2b09      	cmp	r3, #9
 8000708:	d908      	bls.n	800071c <xvprintf+0x244>
 800070a:	7ffb      	ldrb	r3, [r7, #31]
 800070c:	2b78      	cmp	r3, #120	; 0x78
 800070e:	d101      	bne.n	8000714 <xvprintf+0x23c>
 8000710:	2227      	movs	r2, #39	; 0x27
 8000712:	e000      	b.n	8000716 <xvprintf+0x23e>
 8000714:	2207      	movs	r2, #7
 8000716:	7fbb      	ldrb	r3, [r7, #30]
 8000718:	4413      	add	r3, r2
 800071a:	77bb      	strb	r3, [r7, #30]
 800071c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800071e:	1c5a      	adds	r2, r3, #1
 8000720:	633a      	str	r2, [r7, #48]	; 0x30
 8000722:	7fba      	ldrb	r2, [r7, #30]
 8000724:	3230      	adds	r2, #48	; 0x30
 8000726:	b2d2      	uxtb	r2, r2
 8000728:	f107 0138 	add.w	r1, r7, #56	; 0x38
 800072c:	440b      	add	r3, r1
 800072e:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000732:	6a3b      	ldr	r3, [r7, #32]
 8000734:	2b00      	cmp	r3, #0
 8000736:	d002      	beq.n	800073e <xvprintf+0x266>
 8000738:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800073a:	2b0f      	cmp	r3, #15
 800073c:	d9d4      	bls.n	80006e8 <xvprintf+0x210>
 800073e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000740:	f003 0308 	and.w	r3, r3, #8
 8000744:	2b00      	cmp	r3, #0
 8000746:	d008      	beq.n	800075a <xvprintf+0x282>
 8000748:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800074a:	1c5a      	adds	r2, r3, #1
 800074c:	633a      	str	r2, [r7, #48]	; 0x30
 800074e:	f107 0238 	add.w	r2, r7, #56	; 0x38
 8000752:	4413      	add	r3, r2
 8000754:	222d      	movs	r2, #45	; 0x2d
 8000756:	f803 2c30 	strb.w	r2, [r3, #-48]
 800075a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800075c:	62fb      	str	r3, [r7, #44]	; 0x2c
 800075e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000760:	f003 0301 	and.w	r3, r3, #1
 8000764:	2b00      	cmp	r3, #0
 8000766:	d001      	beq.n	800076c <xvprintf+0x294>
 8000768:	2330      	movs	r3, #48	; 0x30
 800076a:	e000      	b.n	800076e <xvprintf+0x296>
 800076c:	2320      	movs	r3, #32
 800076e:	77bb      	strb	r3, [r7, #30]
 8000770:	e003      	b.n	800077a <xvprintf+0x2a2>
 8000772:	7fbb      	ldrb	r3, [r7, #30]
 8000774:	4618      	mov	r0, r3
 8000776:	f7ff fe53 	bl	8000420 <xputc>
 800077a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800077c:	f003 0302 	and.w	r3, r3, #2
 8000780:	2b00      	cmp	r3, #0
 8000782:	d105      	bne.n	8000790 <xvprintf+0x2b8>
 8000784:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000786:	1c5a      	adds	r2, r3, #1
 8000788:	62fa      	str	r2, [r7, #44]	; 0x2c
 800078a:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800078c:	4293      	cmp	r3, r2
 800078e:	d3f0      	bcc.n	8000772 <xvprintf+0x29a>
 8000790:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000792:	3b01      	subs	r3, #1
 8000794:	633b      	str	r3, [r7, #48]	; 0x30
 8000796:	f107 0208 	add.w	r2, r7, #8
 800079a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800079c:	4413      	add	r3, r2
 800079e:	781b      	ldrb	r3, [r3, #0]
 80007a0:	4618      	mov	r0, r3
 80007a2:	f7ff fe3d 	bl	8000420 <xputc>
 80007a6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80007a8:	2b00      	cmp	r3, #0
 80007aa:	d1f1      	bne.n	8000790 <xvprintf+0x2b8>
 80007ac:	e002      	b.n	80007b4 <xvprintf+0x2dc>
 80007ae:	2020      	movs	r0, #32
 80007b0:	f7ff fe36 	bl	8000420 <xputc>
 80007b4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80007b6:	1c5a      	adds	r2, r3, #1
 80007b8:	62fa      	str	r2, [r7, #44]	; 0x2c
 80007ba:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80007bc:	4293      	cmp	r3, r2
 80007be:	d3f6      	bcc.n	80007ae <xvprintf+0x2d6>
 80007c0:	e68f      	b.n	80004e2 <xvprintf+0xa>
 80007c2:	bf00      	nop
 80007c4:	e000      	b.n	80007c8 <xvprintf+0x2f0>
 80007c6:	bf00      	nop
 80007c8:	bf00      	nop
 80007ca:	3738      	adds	r7, #56	; 0x38
 80007cc:	46bd      	mov	sp, r7
 80007ce:	bd80      	pop	{r7, pc}

080007d0 <xprintf>:
 80007d0:	b40f      	push	{r0, r1, r2, r3}
 80007d2:	b580      	push	{r7, lr}
 80007d4:	b082      	sub	sp, #8
 80007d6:	af00      	add	r7, sp, #0
 80007d8:	f107 0314 	add.w	r3, r7, #20
 80007dc:	607b      	str	r3, [r7, #4]
 80007de:	6879      	ldr	r1, [r7, #4]
 80007e0:	6938      	ldr	r0, [r7, #16]
 80007e2:	f7ff fe79 	bl	80004d8 <xvprintf>
 80007e6:	bf00      	nop
 80007e8:	3708      	adds	r7, #8
 80007ea:	46bd      	mov	sp, r7
 80007ec:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80007f0:	b004      	add	sp, #16
 80007f2:	4770      	bx	lr

080007f4 <xsprintf>:
 80007f4:	b40e      	push	{r1, r2, r3}
 80007f6:	b580      	push	{r7, lr}
 80007f8:	b085      	sub	sp, #20
 80007fa:	af00      	add	r7, sp, #0
 80007fc:	6078      	str	r0, [r7, #4]
 80007fe:	4a0c      	ldr	r2, [pc, #48]	; (8000830 <xsprintf+0x3c>)
 8000800:	687b      	ldr	r3, [r7, #4]
 8000802:	6013      	str	r3, [r2, #0]
 8000804:	f107 0320 	add.w	r3, r7, #32
 8000808:	60fb      	str	r3, [r7, #12]
 800080a:	68f9      	ldr	r1, [r7, #12]
 800080c:	69f8      	ldr	r0, [r7, #28]
 800080e:	f7ff fe63 	bl	80004d8 <xvprintf>
 8000812:	4b07      	ldr	r3, [pc, #28]	; (8000830 <xsprintf+0x3c>)
 8000814:	681b      	ldr	r3, [r3, #0]
 8000816:	2200      	movs	r2, #0
 8000818:	701a      	strb	r2, [r3, #0]
 800081a:	4b05      	ldr	r3, [pc, #20]	; (8000830 <xsprintf+0x3c>)
 800081c:	2200      	movs	r2, #0
 800081e:	601a      	str	r2, [r3, #0]
 8000820:	bf00      	nop
 8000822:	3714      	adds	r7, #20
 8000824:	46bd      	mov	sp, r7
 8000826:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800082a:	b003      	add	sp, #12
 800082c:	4770      	bx	lr
 800082e:	bf00      	nop
 8000830:	20000038 	.word	0x20000038

08000834 <xfprintf>:
 8000834:	b40e      	push	{r1, r2, r3}
 8000836:	b580      	push	{r7, lr}
 8000838:	b085      	sub	sp, #20
 800083a:	af00      	add	r7, sp, #0
 800083c:	6078      	str	r0, [r7, #4]
 800083e:	4b0b      	ldr	r3, [pc, #44]	; (800086c <xfprintf+0x38>)
 8000840:	681b      	ldr	r3, [r3, #0]
 8000842:	60fb      	str	r3, [r7, #12]
 8000844:	4a09      	ldr	r2, [pc, #36]	; (800086c <xfprintf+0x38>)
 8000846:	687b      	ldr	r3, [r7, #4]
 8000848:	6013      	str	r3, [r2, #0]
 800084a:	f107 0320 	add.w	r3, r7, #32
 800084e:	60bb      	str	r3, [r7, #8]
 8000850:	68b9      	ldr	r1, [r7, #8]
 8000852:	69f8      	ldr	r0, [r7, #28]
 8000854:	f7ff fe40 	bl	80004d8 <xvprintf>
 8000858:	4a04      	ldr	r2, [pc, #16]	; (800086c <xfprintf+0x38>)
 800085a:	68fb      	ldr	r3, [r7, #12]
 800085c:	6013      	str	r3, [r2, #0]
 800085e:	bf00      	nop
 8000860:	3714      	adds	r7, #20
 8000862:	46bd      	mov	sp, r7
 8000864:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8000868:	b003      	add	sp, #12
 800086a:	4770      	bx	lr
 800086c:	20000034 	.word	0x20000034

08000870 <put_dump>:
 8000870:	b580      	push	{r7, lr}
 8000872:	b088      	sub	sp, #32
 8000874:	af00      	add	r7, sp, #0
 8000876:	60f8      	str	r0, [r7, #12]
 8000878:	60b9      	str	r1, [r7, #8]
 800087a:	607a      	str	r2, [r7, #4]
 800087c:	603b      	str	r3, [r7, #0]
 800087e:	68b9      	ldr	r1, [r7, #8]
 8000880:	4834      	ldr	r0, [pc, #208]	; (8000954 <put_dump+0xe4>)
 8000882:	f7ff ffa5 	bl	80007d0 <xprintf>
 8000886:	683b      	ldr	r3, [r7, #0]
 8000888:	2b02      	cmp	r3, #2
 800088a:	d03a      	beq.n	8000902 <put_dump+0x92>
 800088c:	2b04      	cmp	r3, #4
 800088e:	d049      	beq.n	8000924 <put_dump+0xb4>
 8000890:	2b01      	cmp	r3, #1
 8000892:	d158      	bne.n	8000946 <put_dump+0xd6>
 8000894:	68fb      	ldr	r3, [r7, #12]
 8000896:	613b      	str	r3, [r7, #16]
 8000898:	2300      	movs	r3, #0
 800089a:	61fb      	str	r3, [r7, #28]
 800089c:	e00a      	b.n	80008b4 <put_dump+0x44>
 800089e:	69fb      	ldr	r3, [r7, #28]
 80008a0:	693a      	ldr	r2, [r7, #16]
 80008a2:	4413      	add	r3, r2
 80008a4:	781b      	ldrb	r3, [r3, #0]
 80008a6:	4619      	mov	r1, r3
 80008a8:	482b      	ldr	r0, [pc, #172]	; (8000958 <put_dump+0xe8>)
 80008aa:	f7ff ff91 	bl	80007d0 <xprintf>
 80008ae:	69fb      	ldr	r3, [r7, #28]
 80008b0:	3301      	adds	r3, #1
 80008b2:	61fb      	str	r3, [r7, #28]
 80008b4:	69fa      	ldr	r2, [r7, #28]
 80008b6:	687b      	ldr	r3, [r7, #4]
 80008b8:	429a      	cmp	r2, r3
 80008ba:	dbf0      	blt.n	800089e <put_dump+0x2e>
 80008bc:	2020      	movs	r0, #32
 80008be:	f7ff fdaf 	bl	8000420 <xputc>
 80008c2:	2300      	movs	r3, #0
 80008c4:	61fb      	str	r3, [r7, #28]
 80008c6:	e017      	b.n	80008f8 <put_dump+0x88>
 80008c8:	69fb      	ldr	r3, [r7, #28]
 80008ca:	693a      	ldr	r2, [r7, #16]
 80008cc:	4413      	add	r3, r2
 80008ce:	781b      	ldrb	r3, [r3, #0]
 80008d0:	2b1f      	cmp	r3, #31
 80008d2:	d90a      	bls.n	80008ea <put_dump+0x7a>
 80008d4:	69fb      	ldr	r3, [r7, #28]
 80008d6:	693a      	ldr	r2, [r7, #16]
 80008d8:	4413      	add	r3, r2
 80008da:	781b      	ldrb	r3, [r3, #0]
 80008dc:	2b7e      	cmp	r3, #126	; 0x7e
 80008de:	d804      	bhi.n	80008ea <put_dump+0x7a>
 80008e0:	69fb      	ldr	r3, [r7, #28]
 80008e2:	693a      	ldr	r2, [r7, #16]
 80008e4:	4413      	add	r3, r2
 80008e6:	781b      	ldrb	r3, [r3, #0]
 80008e8:	e000      	b.n	80008ec <put_dump+0x7c>
 80008ea:	232e      	movs	r3, #46	; 0x2e
 80008ec:	4618      	mov	r0, r3
 80008ee:	f7ff fd97 	bl	8000420 <xputc>
 80008f2:	69fb      	ldr	r3, [r7, #28]
 80008f4:	3301      	adds	r3, #1
 80008f6:	61fb      	str	r3, [r7, #28]
 80008f8:	69fa      	ldr	r2, [r7, #28]
 80008fa:	687b      	ldr	r3, [r7, #4]
 80008fc:	429a      	cmp	r2, r3
 80008fe:	dbe3      	blt.n	80008c8 <put_dump+0x58>
 8000900:	e021      	b.n	8000946 <put_dump+0xd6>
 8000902:	68fb      	ldr	r3, [r7, #12]
 8000904:	61bb      	str	r3, [r7, #24]
 8000906:	69bb      	ldr	r3, [r7, #24]
 8000908:	1c9a      	adds	r2, r3, #2
 800090a:	61ba      	str	r2, [r7, #24]
 800090c:	881b      	ldrh	r3, [r3, #0]
 800090e:	4619      	mov	r1, r3
 8000910:	4812      	ldr	r0, [pc, #72]	; (800095c <put_dump+0xec>)
 8000912:	f7ff ff5d 	bl	80007d0 <xprintf>
 8000916:	687b      	ldr	r3, [r7, #4]
 8000918:	3b01      	subs	r3, #1
 800091a:	607b      	str	r3, [r7, #4]
 800091c:	687b      	ldr	r3, [r7, #4]
 800091e:	2b00      	cmp	r3, #0
 8000920:	d1f1      	bne.n	8000906 <put_dump+0x96>
 8000922:	e010      	b.n	8000946 <put_dump+0xd6>
 8000924:	68fb      	ldr	r3, [r7, #12]
 8000926:	617b      	str	r3, [r7, #20]
 8000928:	697b      	ldr	r3, [r7, #20]
 800092a:	1d1a      	adds	r2, r3, #4
 800092c:	617a      	str	r2, [r7, #20]
 800092e:	681b      	ldr	r3, [r3, #0]
 8000930:	4619      	mov	r1, r3
 8000932:	480b      	ldr	r0, [pc, #44]	; (8000960 <put_dump+0xf0>)
 8000934:	f7ff ff4c 	bl	80007d0 <xprintf>
 8000938:	687b      	ldr	r3, [r7, #4]
 800093a:	3b01      	subs	r3, #1
 800093c:	607b      	str	r3, [r7, #4]
 800093e:	687b      	ldr	r3, [r7, #4]
 8000940:	2b00      	cmp	r3, #0
 8000942:	d1f1      	bne.n	8000928 <put_dump+0xb8>
 8000944:	bf00      	nop
 8000946:	200a      	movs	r0, #10
 8000948:	f7ff fd6a 	bl	8000420 <xputc>
 800094c:	bf00      	nop
 800094e:	3720      	adds	r7, #32
 8000950:	46bd      	mov	sp, r7
 8000952:	bd80      	pop	{r7, pc}
 8000954:	080011c4 	.word	0x080011c4
 8000958:	080011cc 	.word	0x080011cc
 800095c:	080011d4 	.word	0x080011d4
 8000960:	080011dc 	.word	0x080011dc

08000964 <xgets>:
 8000964:	b580      	push	{r7, lr}
 8000966:	b084      	sub	sp, #16
 8000968:	af00      	add	r7, sp, #0
 800096a:	6078      	str	r0, [r7, #4]
 800096c:	6039      	str	r1, [r7, #0]
 800096e:	4b24      	ldr	r3, [pc, #144]	; (8000a00 <xgets+0x9c>)
 8000970:	681b      	ldr	r3, [r3, #0]
 8000972:	2b00      	cmp	r3, #0
 8000974:	d101      	bne.n	800097a <xgets+0x16>
 8000976:	2300      	movs	r3, #0
 8000978:	e03e      	b.n	80009f8 <xgets+0x94>
 800097a:	2300      	movs	r3, #0
 800097c:	60fb      	str	r3, [r7, #12]
 800097e:	4b20      	ldr	r3, [pc, #128]	; (8000a00 <xgets+0x9c>)
 8000980:	681b      	ldr	r3, [r3, #0]
 8000982:	4798      	blx	r3
 8000984:	4603      	mov	r3, r0
 8000986:	60bb      	str	r3, [r7, #8]
 8000988:	68bb      	ldr	r3, [r7, #8]
 800098a:	2b00      	cmp	r3, #0
 800098c:	d101      	bne.n	8000992 <xgets+0x2e>
 800098e:	2300      	movs	r3, #0
 8000990:	e032      	b.n	80009f8 <xgets+0x94>
 8000992:	68bb      	ldr	r3, [r7, #8]
 8000994:	2b0d      	cmp	r3, #13
 8000996:	d025      	beq.n	80009e4 <xgets+0x80>
 8000998:	68bb      	ldr	r3, [r7, #8]
 800099a:	2b08      	cmp	r3, #8
 800099c:	d10b      	bne.n	80009b6 <xgets+0x52>
 800099e:	68fb      	ldr	r3, [r7, #12]
 80009a0:	2b00      	cmp	r3, #0
 80009a2:	d008      	beq.n	80009b6 <xgets+0x52>
 80009a4:	68fb      	ldr	r3, [r7, #12]
 80009a6:	3b01      	subs	r3, #1
 80009a8:	60fb      	str	r3, [r7, #12]
 80009aa:	68bb      	ldr	r3, [r7, #8]
 80009ac:	b2db      	uxtb	r3, r3
 80009ae:	4618      	mov	r0, r3
 80009b0:	f7ff fd36 	bl	8000420 <xputc>
 80009b4:	e015      	b.n	80009e2 <xgets+0x7e>
 80009b6:	68bb      	ldr	r3, [r7, #8]
 80009b8:	2b1f      	cmp	r3, #31
 80009ba:	dde0      	ble.n	800097e <xgets+0x1a>
 80009bc:	683b      	ldr	r3, [r7, #0]
 80009be:	1e5a      	subs	r2, r3, #1
 80009c0:	68fb      	ldr	r3, [r7, #12]
 80009c2:	429a      	cmp	r2, r3
 80009c4:	dddb      	ble.n	800097e <xgets+0x1a>
 80009c6:	68fb      	ldr	r3, [r7, #12]
 80009c8:	1c5a      	adds	r2, r3, #1
 80009ca:	60fa      	str	r2, [r7, #12]
 80009cc:	461a      	mov	r2, r3
 80009ce:	687b      	ldr	r3, [r7, #4]
 80009d0:	4413      	add	r3, r2
 80009d2:	68ba      	ldr	r2, [r7, #8]
 80009d4:	b2d2      	uxtb	r2, r2
 80009d6:	701a      	strb	r2, [r3, #0]
 80009d8:	68bb      	ldr	r3, [r7, #8]
 80009da:	b2db      	uxtb	r3, r3
 80009dc:	4618      	mov	r0, r3
 80009de:	f7ff fd1f 	bl	8000420 <xputc>
 80009e2:	e7cc      	b.n	800097e <xgets+0x1a>
 80009e4:	bf00      	nop
 80009e6:	68fb      	ldr	r3, [r7, #12]
 80009e8:	687a      	ldr	r2, [r7, #4]
 80009ea:	4413      	add	r3, r2
 80009ec:	2200      	movs	r2, #0
 80009ee:	701a      	strb	r2, [r3, #0]
 80009f0:	200a      	movs	r0, #10
 80009f2:	f7ff fd15 	bl	8000420 <xputc>
 80009f6:	2301      	movs	r3, #1
 80009f8:	4618      	mov	r0, r3
 80009fa:	3710      	adds	r7, #16
 80009fc:	46bd      	mov	sp, r7
 80009fe:	bd80      	pop	{r7, pc}
 8000a00:	2000003c 	.word	0x2000003c

08000a04 <xfgets>:
 8000a04:	b580      	push	{r7, lr}
 8000a06:	b086      	sub	sp, #24
 8000a08:	af00      	add	r7, sp, #0
 8000a0a:	60f8      	str	r0, [r7, #12]
 8000a0c:	60b9      	str	r1, [r7, #8]
 8000a0e:	607a      	str	r2, [r7, #4]
 8000a10:	4b09      	ldr	r3, [pc, #36]	; (8000a38 <xfgets+0x34>)
 8000a12:	681b      	ldr	r3, [r3, #0]
 8000a14:	617b      	str	r3, [r7, #20]
 8000a16:	4a08      	ldr	r2, [pc, #32]	; (8000a38 <xfgets+0x34>)
 8000a18:	68fb      	ldr	r3, [r7, #12]
 8000a1a:	6013      	str	r3, [r2, #0]
 8000a1c:	6879      	ldr	r1, [r7, #4]
 8000a1e:	68b8      	ldr	r0, [r7, #8]
 8000a20:	f7ff ffa0 	bl	8000964 <xgets>
 8000a24:	6138      	str	r0, [r7, #16]
 8000a26:	4a04      	ldr	r2, [pc, #16]	; (8000a38 <xfgets+0x34>)
 8000a28:	697b      	ldr	r3, [r7, #20]
 8000a2a:	6013      	str	r3, [r2, #0]
 8000a2c:	693b      	ldr	r3, [r7, #16]
 8000a2e:	4618      	mov	r0, r3
 8000a30:	3718      	adds	r7, #24
 8000a32:	46bd      	mov	sp, r7
 8000a34:	bd80      	pop	{r7, pc}
 8000a36:	bf00      	nop
 8000a38:	2000003c 	.word	0x2000003c

08000a3c <xatoi>:
 8000a3c:	b480      	push	{r7}
 8000a3e:	b085      	sub	sp, #20
 8000a40:	af00      	add	r7, sp, #0
 8000a42:	6078      	str	r0, [r7, #4]
 8000a44:	6039      	str	r1, [r7, #0]
 8000a46:	2300      	movs	r3, #0
 8000a48:	727b      	strb	r3, [r7, #9]
 8000a4a:	683b      	ldr	r3, [r7, #0]
 8000a4c:	2200      	movs	r2, #0
 8000a4e:	601a      	str	r2, [r3, #0]
 8000a50:	e004      	b.n	8000a5c <xatoi+0x20>
 8000a52:	687b      	ldr	r3, [r7, #4]
 8000a54:	681b      	ldr	r3, [r3, #0]
 8000a56:	1c5a      	adds	r2, r3, #1
 8000a58:	687b      	ldr	r3, [r7, #4]
 8000a5a:	601a      	str	r2, [r3, #0]
 8000a5c:	687b      	ldr	r3, [r7, #4]
 8000a5e:	681b      	ldr	r3, [r3, #0]
 8000a60:	781b      	ldrb	r3, [r3, #0]
 8000a62:	72fb      	strb	r3, [r7, #11]
 8000a64:	7afb      	ldrb	r3, [r7, #11]
 8000a66:	2b20      	cmp	r3, #32
 8000a68:	d0f3      	beq.n	8000a52 <xatoi+0x16>
 8000a6a:	7afb      	ldrb	r3, [r7, #11]
 8000a6c:	2b2d      	cmp	r3, #45	; 0x2d
 8000a6e:	d10a      	bne.n	8000a86 <xatoi+0x4a>
 8000a70:	2301      	movs	r3, #1
 8000a72:	727b      	strb	r3, [r7, #9]
 8000a74:	687b      	ldr	r3, [r7, #4]
 8000a76:	681b      	ldr	r3, [r3, #0]
 8000a78:	1c5a      	adds	r2, r3, #1
 8000a7a:	687b      	ldr	r3, [r7, #4]
 8000a7c:	601a      	str	r2, [r3, #0]
 8000a7e:	687b      	ldr	r3, [r7, #4]
 8000a80:	681b      	ldr	r3, [r3, #0]
 8000a82:	781b      	ldrb	r3, [r3, #0]
 8000a84:	72fb      	strb	r3, [r7, #11]
 8000a86:	7afb      	ldrb	r3, [r7, #11]
 8000a88:	2b30      	cmp	r3, #48	; 0x30
 8000a8a:	d135      	bne.n	8000af8 <xatoi+0xbc>
 8000a8c:	687b      	ldr	r3, [r7, #4]
 8000a8e:	681b      	ldr	r3, [r3, #0]
 8000a90:	1c5a      	adds	r2, r3, #1
 8000a92:	687b      	ldr	r3, [r7, #4]
 8000a94:	601a      	str	r2, [r3, #0]
 8000a96:	687b      	ldr	r3, [r7, #4]
 8000a98:	681b      	ldr	r3, [r3, #0]
 8000a9a:	781b      	ldrb	r3, [r3, #0]
 8000a9c:	72fb      	strb	r3, [r7, #11]
 8000a9e:	7afb      	ldrb	r3, [r7, #11]
 8000aa0:	2b62      	cmp	r3, #98	; 0x62
 8000aa2:	d00d      	beq.n	8000ac0 <xatoi+0x84>
 8000aa4:	2b78      	cmp	r3, #120	; 0x78
 8000aa6:	d117      	bne.n	8000ad8 <xatoi+0x9c>
 8000aa8:	2310      	movs	r3, #16
 8000aaa:	72bb      	strb	r3, [r7, #10]
 8000aac:	687b      	ldr	r3, [r7, #4]
 8000aae:	681b      	ldr	r3, [r3, #0]
 8000ab0:	1c5a      	adds	r2, r3, #1
 8000ab2:	687b      	ldr	r3, [r7, #4]
 8000ab4:	601a      	str	r2, [r3, #0]
 8000ab6:	687b      	ldr	r3, [r7, #4]
 8000ab8:	681b      	ldr	r3, [r3, #0]
 8000aba:	781b      	ldrb	r3, [r3, #0]
 8000abc:	72fb      	strb	r3, [r7, #11]
 8000abe:	e025      	b.n	8000b0c <xatoi+0xd0>
 8000ac0:	2302      	movs	r3, #2
 8000ac2:	72bb      	strb	r3, [r7, #10]
 8000ac4:	687b      	ldr	r3, [r7, #4]
 8000ac6:	681b      	ldr	r3, [r3, #0]
 8000ac8:	1c5a      	adds	r2, r3, #1
 8000aca:	687b      	ldr	r3, [r7, #4]
 8000acc:	601a      	str	r2, [r3, #0]
 8000ace:	687b      	ldr	r3, [r7, #4]
 8000ad0:	681b      	ldr	r3, [r3, #0]
 8000ad2:	781b      	ldrb	r3, [r3, #0]
 8000ad4:	72fb      	strb	r3, [r7, #11]
 8000ad6:	e019      	b.n	8000b0c <xatoi+0xd0>
 8000ad8:	7afb      	ldrb	r3, [r7, #11]
 8000ada:	2b20      	cmp	r3, #32
 8000adc:	d801      	bhi.n	8000ae2 <xatoi+0xa6>
 8000ade:	2301      	movs	r3, #1
 8000ae0:	e04e      	b.n	8000b80 <xatoi+0x144>
 8000ae2:	7afb      	ldrb	r3, [r7, #11]
 8000ae4:	2b2f      	cmp	r3, #47	; 0x2f
 8000ae6:	d902      	bls.n	8000aee <xatoi+0xb2>
 8000ae8:	7afb      	ldrb	r3, [r7, #11]
 8000aea:	2b39      	cmp	r3, #57	; 0x39
 8000aec:	d901      	bls.n	8000af2 <xatoi+0xb6>
 8000aee:	2300      	movs	r3, #0
 8000af0:	e046      	b.n	8000b80 <xatoi+0x144>
 8000af2:	2308      	movs	r3, #8
 8000af4:	72bb      	strb	r3, [r7, #10]
 8000af6:	e009      	b.n	8000b0c <xatoi+0xd0>
 8000af8:	7afb      	ldrb	r3, [r7, #11]
 8000afa:	2b2f      	cmp	r3, #47	; 0x2f
 8000afc:	d902      	bls.n	8000b04 <xatoi+0xc8>
 8000afe:	7afb      	ldrb	r3, [r7, #11]
 8000b00:	2b39      	cmp	r3, #57	; 0x39
 8000b02:	d901      	bls.n	8000b08 <xatoi+0xcc>
 8000b04:	2300      	movs	r3, #0
 8000b06:	e03b      	b.n	8000b80 <xatoi+0x144>
 8000b08:	230a      	movs	r3, #10
 8000b0a:	72bb      	strb	r3, [r7, #10]
 8000b0c:	2300      	movs	r3, #0
 8000b0e:	60fb      	str	r3, [r7, #12]
 8000b10:	e029      	b.n	8000b66 <xatoi+0x12a>
 8000b12:	7afb      	ldrb	r3, [r7, #11]
 8000b14:	2b60      	cmp	r3, #96	; 0x60
 8000b16:	d902      	bls.n	8000b1e <xatoi+0xe2>
 8000b18:	7afb      	ldrb	r3, [r7, #11]
 8000b1a:	3b20      	subs	r3, #32
 8000b1c:	72fb      	strb	r3, [r7, #11]
 8000b1e:	7afb      	ldrb	r3, [r7, #11]
 8000b20:	3b30      	subs	r3, #48	; 0x30
 8000b22:	72fb      	strb	r3, [r7, #11]
 8000b24:	7afb      	ldrb	r3, [r7, #11]
 8000b26:	2b10      	cmp	r3, #16
 8000b28:	d907      	bls.n	8000b3a <xatoi+0xfe>
 8000b2a:	7afb      	ldrb	r3, [r7, #11]
 8000b2c:	3b07      	subs	r3, #7
 8000b2e:	72fb      	strb	r3, [r7, #11]
 8000b30:	7afb      	ldrb	r3, [r7, #11]
 8000b32:	2b09      	cmp	r3, #9
 8000b34:	d801      	bhi.n	8000b3a <xatoi+0xfe>
 8000b36:	2300      	movs	r3, #0
 8000b38:	e022      	b.n	8000b80 <xatoi+0x144>
 8000b3a:	7afa      	ldrb	r2, [r7, #11]
 8000b3c:	7abb      	ldrb	r3, [r7, #10]
 8000b3e:	429a      	cmp	r2, r3
 8000b40:	d301      	bcc.n	8000b46 <xatoi+0x10a>
 8000b42:	2300      	movs	r3, #0
 8000b44:	e01c      	b.n	8000b80 <xatoi+0x144>
 8000b46:	7abb      	ldrb	r3, [r7, #10]
 8000b48:	68fa      	ldr	r2, [r7, #12]
 8000b4a:	fb02 f203 	mul.w	r2, r2, r3
 8000b4e:	7afb      	ldrb	r3, [r7, #11]
 8000b50:	4413      	add	r3, r2
 8000b52:	60fb      	str	r3, [r7, #12]
 8000b54:	687b      	ldr	r3, [r7, #4]
 8000b56:	681b      	ldr	r3, [r3, #0]
 8000b58:	1c5a      	adds	r2, r3, #1
 8000b5a:	687b      	ldr	r3, [r7, #4]
 8000b5c:	601a      	str	r2, [r3, #0]
 8000b5e:	687b      	ldr	r3, [r7, #4]
 8000b60:	681b      	ldr	r3, [r3, #0]
 8000b62:	781b      	ldrb	r3, [r3, #0]
 8000b64:	72fb      	strb	r3, [r7, #11]
 8000b66:	7afb      	ldrb	r3, [r7, #11]
 8000b68:	2b20      	cmp	r3, #32
 8000b6a:	d8d2      	bhi.n	8000b12 <xatoi+0xd6>
 8000b6c:	7a7b      	ldrb	r3, [r7, #9]
 8000b6e:	2b00      	cmp	r3, #0
 8000b70:	d002      	beq.n	8000b78 <xatoi+0x13c>
 8000b72:	68fb      	ldr	r3, [r7, #12]
 8000b74:	425b      	negs	r3, r3
 8000b76:	60fb      	str	r3, [r7, #12]
 8000b78:	68fa      	ldr	r2, [r7, #12]
 8000b7a:	683b      	ldr	r3, [r7, #0]
 8000b7c:	601a      	str	r2, [r3, #0]
 8000b7e:	2301      	movs	r3, #1
 8000b80:	4618      	mov	r0, r3
 8000b82:	3714      	adds	r7, #20
 8000b84:	46bd      	mov	sp, r7
 8000b86:	bc80      	pop	{r7}
 8000b88:	4770      	bx	lr
 8000b8a:	bf00      	nop

08000b8c <usb_device_init>:
 8000b8c:	b580      	push	{r7, lr}
 8000b8e:	af00      	add	r7, sp, #0
 8000b90:	4a19      	ldr	r2, [pc, #100]	; (8000bf8 <usb_device_init+0x6c>)
 8000b92:	4b19      	ldr	r3, [pc, #100]	; (8000bf8 <usb_device_init+0x6c>)
 8000b94:	69db      	ldr	r3, [r3, #28]
 8000b96:	f043 0304 	orr.w	r3, r3, #4
 8000b9a:	61d3      	str	r3, [r2, #28]
 8000b9c:	4b16      	ldr	r3, [pc, #88]	; (8000bf8 <usb_device_init+0x6c>)
 8000b9e:	f44f 7283 	mov.w	r2, #262	; 0x106
 8000ba2:	611a      	str	r2, [r3, #16]
 8000ba4:	4a14      	ldr	r2, [pc, #80]	; (8000bf8 <usb_device_init+0x6c>)
 8000ba6:	4b14      	ldr	r3, [pc, #80]	; (8000bf8 <usb_device_init+0x6c>)
 8000ba8:	685b      	ldr	r3, [r3, #4]
 8000baa:	f043 0351 	orr.w	r3, r3, #81	; 0x51
 8000bae:	6053      	str	r3, [r2, #4]
 8000bb0:	bf00      	nop
 8000bb2:	4b11      	ldr	r3, [pc, #68]	; (8000bf8 <usb_device_init+0x6c>)
 8000bb4:	681b      	ldr	r3, [r3, #0]
 8000bb6:	f003 0301 	and.w	r3, r3, #1
 8000bba:	2b00      	cmp	r3, #0
 8000bbc:	d0f9      	beq.n	8000bb2 <usb_device_init+0x26>
 8000bbe:	4b0f      	ldr	r3, [pc, #60]	; (8000bfc <usb_device_init+0x70>)
 8000bc0:	2202      	movs	r2, #2
 8000bc2:	f8c3 2380 	str.w	r2, [r3, #896]	; 0x380
 8000bc6:	2001      	movs	r0, #1
 8000bc8:	f7ff fb24 	bl	8000214 <sleep>
 8000bcc:	4b0b      	ldr	r3, [pc, #44]	; (8000bfc <usb_device_init+0x70>)
 8000bce:	221c      	movs	r2, #28
 8000bd0:	f8c3 2380 	str.w	r2, [r3, #896]	; 0x380
 8000bd4:	4a09      	ldr	r2, [pc, #36]	; (8000bfc <usb_device_init+0x70>)
 8000bd6:	4b09      	ldr	r3, [pc, #36]	; (8000bfc <usb_device_init+0x70>)
 8000bd8:	f8d3 3140 	ldr.w	r3, [r3, #320]	; 0x140
 8000bdc:	f043 0331 	orr.w	r3, r3, #49	; 0x31
 8000be0:	f8c2 3140 	str.w	r3, [r2, #320]	; 0x140
 8000be4:	4a05      	ldr	r2, [pc, #20]	; (8000bfc <usb_device_init+0x70>)
 8000be6:	4b05      	ldr	r3, [pc, #20]	; (8000bfc <usb_device_init+0x70>)
 8000be8:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000bec:	f043 0303 	orr.w	r3, r3, #3
 8000bf0:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000bf4:	bf00      	nop
 8000bf6:	bd80      	pop	{r7, pc}
 8000bf8:	40020000 	.word	0x40020000
 8000bfc:	40010000 	.word	0x40010000

08000c00 <null_proc>:
 8000c00:	b480      	push	{r7}
 8000c02:	af00      	add	r7, sp, #0
 8000c04:	bf00      	nop
 8000c06:	46bd      	mov	sp, r7
 8000c08:	bc80      	pop	{r7}
 8000c0a:	4770      	bx	lr

08000c0c <usb_reset>:
 8000c0c:	b480      	push	{r7}
 8000c0e:	af00      	add	r7, sp, #0
 8000c10:	4a09      	ldr	r2, [pc, #36]	; (8000c38 <usb_reset+0x2c>)
 8000c12:	4b09      	ldr	r3, [pc, #36]	; (8000c38 <usb_reset+0x2c>)
 8000c14:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000c18:	f043 0303 	orr.w	r3, r3, #3
 8000c1c:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000c20:	4a05      	ldr	r2, [pc, #20]	; (8000c38 <usb_reset+0x2c>)
 8000c22:	4b05      	ldr	r3, [pc, #20]	; (8000c38 <usb_reset+0x2c>)
 8000c24:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000c28:	f023 0304 	bic.w	r3, r3, #4
 8000c2c:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000c30:	bf00      	nop
 8000c32:	46bd      	mov	sp, r7
 8000c34:	bc80      	pop	{r7}
 8000c36:	4770      	bx	lr
 8000c38:	40010000 	.word	0x40010000

08000c3c <usb_device_update>:
 8000c3c:	b580      	push	{r7, lr}
 8000c3e:	b082      	sub	sp, #8
 8000c40:	af00      	add	r7, sp, #0
 8000c42:	4b27      	ldr	r3, [pc, #156]	; (8000ce0 <usb_device_update+0xa4>)
 8000c44:	f8d3 3148 	ldr.w	r3, [r3, #328]	; 0x148
 8000c48:	607b      	str	r3, [r7, #4]
 8000c4a:	4b25      	ldr	r3, [pc, #148]	; (8000ce0 <usb_device_update+0xa4>)
 8000c4c:	2200      	movs	r2, #0
 8000c4e:	f8c3 2148 	str.w	r2, [r3, #328]	; 0x148
 8000c52:	687b      	ldr	r3, [r7, #4]
 8000c54:	f003 0304 	and.w	r3, r3, #4
 8000c58:	2b00      	cmp	r3, #0
 8000c5a:	d00d      	beq.n	8000c78 <usb_device_update+0x3c>
 8000c5c:	4a20      	ldr	r2, [pc, #128]	; (8000ce0 <usb_device_update+0xa4>)
 8000c5e:	4b20      	ldr	r3, [pc, #128]	; (8000ce0 <usb_device_update+0xa4>)
 8000c60:	f8d3 3148 	ldr.w	r3, [r3, #328]	; 0x148
 8000c64:	f043 0304 	orr.w	r3, r3, #4
 8000c68:	f8c2 3148 	str.w	r3, [r2, #328]	; 0x148
 8000c6c:	f7ff ffce 	bl	8000c0c <usb_reset>
 8000c70:	481c      	ldr	r0, [pc, #112]	; (8000ce4 <usb_device_update+0xa8>)
 8000c72:	f7ff fdad 	bl	80007d0 <xprintf>
 8000c76:	e02e      	b.n	8000cd6 <usb_device_update+0x9a>
 8000c78:	687b      	ldr	r3, [r7, #4]
 8000c7a:	f003 0301 	and.w	r3, r3, #1
 8000c7e:	2b00      	cmp	r3, #0
 8000c80:	d029      	beq.n	8000cd6 <usb_device_update+0x9a>
 8000c82:	4a17      	ldr	r2, [pc, #92]	; (8000ce0 <usb_device_update+0xa4>)
 8000c84:	4b16      	ldr	r3, [pc, #88]	; (8000ce0 <usb_device_update+0xa4>)
 8000c86:	f8d3 3148 	ldr.w	r3, [r3, #328]	; 0x148
 8000c8a:	f043 0301 	orr.w	r3, r3, #1
 8000c8e:	f8c2 3148 	str.w	r3, [r2, #328]	; 0x148
 8000c92:	4815      	ldr	r0, [pc, #84]	; (8000ce8 <usb_device_update+0xac>)
 8000c94:	f7ff fd9c 	bl	80007d0 <xprintf>
 8000c98:	4b11      	ldr	r3, [pc, #68]	; (8000ce0 <usb_device_update+0xa4>)
 8000c9a:	f8d3 3108 	ldr.w	r3, [r3, #264]	; 0x108
 8000c9e:	b2db      	uxtb	r3, r3
 8000ca0:	603b      	str	r3, [r7, #0]
 8000ca2:	683b      	ldr	r3, [r7, #0]
 8000ca4:	2b00      	cmp	r3, #0
 8000ca6:	d104      	bne.n	8000cb2 <usb_device_update+0x76>
 8000ca8:	4810      	ldr	r0, [pc, #64]	; (8000cec <usb_device_update+0xb0>)
 8000caa:	f7ff fd91 	bl	80007d0 <xprintf>
 8000cae:	f000 f9cd 	bl	800104c <setup0_proc>
 8000cb2:	683b      	ldr	r3, [r7, #0]
 8000cb4:	2b01      	cmp	r3, #1
 8000cb6:	d105      	bne.n	8000cc4 <usb_device_update+0x88>
 8000cb8:	480d      	ldr	r0, [pc, #52]	; (8000cf0 <usb_device_update+0xb4>)
 8000cba:	f7ff fd89 	bl	80007d0 <xprintf>
 8000cbe:	4b0d      	ldr	r3, [pc, #52]	; (8000cf4 <usb_device_update+0xb8>)
 8000cc0:	681b      	ldr	r3, [r3, #0]
 8000cc2:	4798      	blx	r3
 8000cc4:	683b      	ldr	r3, [r7, #0]
 8000cc6:	2b02      	cmp	r3, #2
 8000cc8:	d105      	bne.n	8000cd6 <usb_device_update+0x9a>
 8000cca:	480b      	ldr	r0, [pc, #44]	; (8000cf8 <usb_device_update+0xbc>)
 8000ccc:	f7ff fd80 	bl	80007d0 <xprintf>
 8000cd0:	4b0a      	ldr	r3, [pc, #40]	; (8000cfc <usb_device_update+0xc0>)
 8000cd2:	681b      	ldr	r3, [r3, #0]
 8000cd4:	4798      	blx	r3
 8000cd6:	bf00      	nop
 8000cd8:	3708      	adds	r7, #8
 8000cda:	46bd      	mov	sp, r7
 8000cdc:	bd80      	pop	{r7, pc}
 8000cde:	bf00      	nop
 8000ce0:	40010000 	.word	0x40010000
 8000ce4:	080011e4 	.word	0x080011e4
 8000ce8:	080011ec 	.word	0x080011ec
 8000cec:	080011f8 	.word	0x080011f8
 8000cf0:	08001204 	.word	0x08001204
 8000cf4:	20000004 	.word	0x20000004
 8000cf8:	08001210 	.word	0x08001210
 8000cfc:	20000008 	.word	0x20000008

08000d00 <enable_RX_proc>:
 8000d00:	b480      	push	{r7}
 8000d02:	af00      	add	r7, sp, #0
 8000d04:	4a05      	ldr	r2, [pc, #20]	; (8000d1c <enable_RX_proc+0x1c>)
 8000d06:	4b05      	ldr	r3, [pc, #20]	; (8000d1c <enable_RX_proc+0x1c>)
 8000d08:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000d0c:	f043 0302 	orr.w	r3, r3, #2
 8000d10:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000d14:	bf00      	nop
 8000d16:	46bd      	mov	sp, r7
 8000d18:	bc80      	pop	{r7}
 8000d1a:	4770      	bx	lr
 8000d1c:	40010000 	.word	0x40010000

08000d20 <plan_ZeroLength_OUT_proc>:
 8000d20:	b480      	push	{r7}
 8000d22:	af00      	add	r7, sp, #0
 8000d24:	4a08      	ldr	r2, [pc, #32]	; (8000d48 <plan_ZeroLength_OUT_proc+0x28>)
 8000d26:	4b08      	ldr	r3, [pc, #32]	; (8000d48 <plan_ZeroLength_OUT_proc+0x28>)
 8000d28:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000d2c:	f043 0302 	orr.w	r3, r3, #2
 8000d30:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000d34:	4b05      	ldr	r3, [pc, #20]	; (8000d4c <plan_ZeroLength_OUT_proc+0x2c>)
 8000d36:	4a06      	ldr	r2, [pc, #24]	; (8000d50 <plan_ZeroLength_OUT_proc+0x30>)
 8000d38:	601a      	str	r2, [r3, #0]
 8000d3a:	4b06      	ldr	r3, [pc, #24]	; (8000d54 <plan_ZeroLength_OUT_proc+0x34>)
 8000d3c:	4a06      	ldr	r2, [pc, #24]	; (8000d58 <plan_ZeroLength_OUT_proc+0x38>)
 8000d3e:	601a      	str	r2, [r3, #0]
 8000d40:	bf00      	nop
 8000d42:	46bd      	mov	sp, r7
 8000d44:	bc80      	pop	{r7}
 8000d46:	4770      	bx	lr
 8000d48:	40010000 	.word	0x40010000
 8000d4c:	20000004 	.word	0x20000004
 8000d50:	08000c01 	.word	0x08000c01
 8000d54:	20000008 	.word	0x20000008
 8000d58:	08000d01 	.word	0x08000d01

08000d5c <plan_ZeroLength_IN_proc>:
 8000d5c:	b480      	push	{r7}
 8000d5e:	af00      	add	r7, sp, #0
 8000d60:	4b0b      	ldr	r3, [pc, #44]	; (8000d90 <plan_ZeroLength_IN_proc+0x34>)
 8000d62:	2201      	movs	r2, #1
 8000d64:	f8c3 21d0 	str.w	r2, [r3, #464]	; 0x1d0
 8000d68:	4a09      	ldr	r2, [pc, #36]	; (8000d90 <plan_ZeroLength_IN_proc+0x34>)
 8000d6a:	4b09      	ldr	r3, [pc, #36]	; (8000d90 <plan_ZeroLength_IN_proc+0x34>)
 8000d6c:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000d70:	f043 0304 	orr.w	r3, r3, #4
 8000d74:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000d78:	4a05      	ldr	r2, [pc, #20]	; (8000d90 <plan_ZeroLength_IN_proc+0x34>)
 8000d7a:	4b05      	ldr	r3, [pc, #20]	; (8000d90 <plan_ZeroLength_IN_proc+0x34>)
 8000d7c:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000d80:	f043 0302 	orr.w	r3, r3, #2
 8000d84:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000d88:	bf00      	nop
 8000d8a:	46bd      	mov	sp, r7
 8000d8c:	bc80      	pop	{r7}
 8000d8e:	4770      	bx	lr
 8000d90:	40010000 	.word	0x40010000

08000d94 <plan_Data_IN_proc>:
 8000d94:	b580      	push	{r7, lr}
 8000d96:	b084      	sub	sp, #16
 8000d98:	af00      	add	r7, sp, #0
 8000d9a:	4b29      	ldr	r3, [pc, #164]	; (8000e40 <plan_Data_IN_proc+0xac>)
 8000d9c:	681b      	ldr	r3, [r3, #0]
 8000d9e:	2b40      	cmp	r3, #64	; 0x40
 8000da0:	bf28      	it	cs
 8000da2:	2340      	movcs	r3, #64	; 0x40
 8000da4:	60bb      	str	r3, [r7, #8]
 8000da6:	4b26      	ldr	r3, [pc, #152]	; (8000e40 <plan_Data_IN_proc+0xac>)
 8000da8:	681a      	ldr	r2, [r3, #0]
 8000daa:	68bb      	ldr	r3, [r7, #8]
 8000dac:	1ad3      	subs	r3, r2, r3
 8000dae:	607b      	str	r3, [r7, #4]
 8000db0:	68bb      	ldr	r3, [r7, #8]
 8000db2:	2b00      	cmp	r3, #0
 8000db4:	d029      	beq.n	8000e0a <plan_Data_IN_proc+0x76>
 8000db6:	4b23      	ldr	r3, [pc, #140]	; (8000e44 <plan_Data_IN_proc+0xb0>)
 8000db8:	2201      	movs	r2, #1
 8000dba:	f8c3 21d0 	str.w	r2, [r3, #464]	; 0x1d0
 8000dbe:	2300      	movs	r3, #0
 8000dc0:	60fb      	str	r3, [r7, #12]
 8000dc2:	e00a      	b.n	8000dda <plan_Data_IN_proc+0x46>
 8000dc4:	491f      	ldr	r1, [pc, #124]	; (8000e44 <plan_Data_IN_proc+0xb0>)
 8000dc6:	4b20      	ldr	r3, [pc, #128]	; (8000e48 <plan_Data_IN_proc+0xb4>)
 8000dc8:	681a      	ldr	r2, [r3, #0]
 8000dca:	68fb      	ldr	r3, [r7, #12]
 8000dcc:	4413      	add	r3, r2
 8000dce:	781b      	ldrb	r3, [r3, #0]
 8000dd0:	f8c1 31c0 	str.w	r3, [r1, #448]	; 0x1c0
 8000dd4:	68fb      	ldr	r3, [r7, #12]
 8000dd6:	3301      	adds	r3, #1
 8000dd8:	60fb      	str	r3, [r7, #12]
 8000dda:	68fa      	ldr	r2, [r7, #12]
 8000ddc:	68bb      	ldr	r3, [r7, #8]
 8000dde:	429a      	cmp	r2, r3
 8000de0:	d3f0      	bcc.n	8000dc4 <plan_Data_IN_proc+0x30>
 8000de2:	68b9      	ldr	r1, [r7, #8]
 8000de4:	4819      	ldr	r0, [pc, #100]	; (8000e4c <plan_Data_IN_proc+0xb8>)
 8000de6:	f7ff fcf3 	bl	80007d0 <xprintf>
 8000dea:	4a16      	ldr	r2, [pc, #88]	; (8000e44 <plan_Data_IN_proc+0xb0>)
 8000dec:	4b15      	ldr	r3, [pc, #84]	; (8000e44 <plan_Data_IN_proc+0xb0>)
 8000dee:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000df2:	f083 0304 	eor.w	r3, r3, #4
 8000df6:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000dfa:	4a12      	ldr	r2, [pc, #72]	; (8000e44 <plan_Data_IN_proc+0xb0>)
 8000dfc:	4b11      	ldr	r3, [pc, #68]	; (8000e44 <plan_Data_IN_proc+0xb0>)
 8000dfe:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000e02:	f043 0302 	orr.w	r3, r3, #2
 8000e06:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000e0a:	687b      	ldr	r3, [r7, #4]
 8000e0c:	2b00      	cmp	r3, #0
 8000e0e:	d010      	beq.n	8000e32 <plan_Data_IN_proc+0x9e>
 8000e10:	4a0b      	ldr	r2, [pc, #44]	; (8000e40 <plan_Data_IN_proc+0xac>)
 8000e12:	687b      	ldr	r3, [r7, #4]
 8000e14:	6013      	str	r3, [r2, #0]
 8000e16:	4b0c      	ldr	r3, [pc, #48]	; (8000e48 <plan_Data_IN_proc+0xb4>)
 8000e18:	681a      	ldr	r2, [r3, #0]
 8000e1a:	68bb      	ldr	r3, [r7, #8]
 8000e1c:	4413      	add	r3, r2
 8000e1e:	4a0a      	ldr	r2, [pc, #40]	; (8000e48 <plan_Data_IN_proc+0xb4>)
 8000e20:	6013      	str	r3, [r2, #0]
 8000e22:	4b0b      	ldr	r3, [pc, #44]	; (8000e50 <plan_Data_IN_proc+0xbc>)
 8000e24:	4a0b      	ldr	r2, [pc, #44]	; (8000e54 <plan_Data_IN_proc+0xc0>)
 8000e26:	601a      	str	r2, [r3, #0]
 8000e28:	6879      	ldr	r1, [r7, #4]
 8000e2a:	480b      	ldr	r0, [pc, #44]	; (8000e58 <plan_Data_IN_proc+0xc4>)
 8000e2c:	f7ff fcd0 	bl	80007d0 <xprintf>
 8000e30:	e002      	b.n	8000e38 <plan_Data_IN_proc+0xa4>
 8000e32:	4b07      	ldr	r3, [pc, #28]	; (8000e50 <plan_Data_IN_proc+0xbc>)
 8000e34:	4a09      	ldr	r2, [pc, #36]	; (8000e5c <plan_Data_IN_proc+0xc8>)
 8000e36:	601a      	str	r2, [r3, #0]
 8000e38:	bf00      	nop
 8000e3a:	3710      	adds	r7, #16
 8000e3c:	46bd      	mov	sp, r7
 8000e3e:	bd80      	pop	{r7, pc}
 8000e40:	20000048 	.word	0x20000048
 8000e44:	40010000 	.word	0x40010000
 8000e48:	2000004c 	.word	0x2000004c
 8000e4c:	0800121c 	.word	0x0800121c
 8000e50:	20000004 	.word	0x20000004
 8000e54:	08000d95 	.word	0x08000d95
 8000e58:	08001224 	.word	0x08001224
 8000e5c:	08000d21 	.word	0x08000d21

08000e60 <string_descriptor_proc>:
 8000e60:	b580      	push	{r7, lr}
 8000e62:	b082      	sub	sp, #8
 8000e64:	af00      	add	r7, sp, #0
 8000e66:	4b1c      	ldr	r3, [pc, #112]	; (8000ed8 <string_descriptor_proc+0x78>)
 8000e68:	789b      	ldrb	r3, [r3, #2]
 8000e6a:	607b      	str	r3, [r7, #4]
 8000e6c:	687b      	ldr	r3, [r7, #4]
 8000e6e:	2b03      	cmp	r3, #3
 8000e70:	d82e      	bhi.n	8000ed0 <string_descriptor_proc+0x70>
 8000e72:	a201      	add	r2, pc, #4	; (adr r2, 8000e78 <string_descriptor_proc+0x18>)
 8000e74:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000e78:	08000e89 	.word	0x08000e89
 8000e7c:	08000e9b 	.word	0x08000e9b
 8000e80:	08000ead 	.word	0x08000ead
 8000e84:	08000ebf 	.word	0x08000ebf
 8000e88:	4b14      	ldr	r3, [pc, #80]	; (8000edc <string_descriptor_proc+0x7c>)
 8000e8a:	2204      	movs	r2, #4
 8000e8c:	601a      	str	r2, [r3, #0]
 8000e8e:	4b14      	ldr	r3, [pc, #80]	; (8000ee0 <string_descriptor_proc+0x80>)
 8000e90:	4a14      	ldr	r2, [pc, #80]	; (8000ee4 <string_descriptor_proc+0x84>)
 8000e92:	601a      	str	r2, [r3, #0]
 8000e94:	f7ff ff7e 	bl	8000d94 <plan_Data_IN_proc>
 8000e98:	e01a      	b.n	8000ed0 <string_descriptor_proc+0x70>
 8000e9a:	4b10      	ldr	r3, [pc, #64]	; (8000edc <string_descriptor_proc+0x7c>)
 8000e9c:	2226      	movs	r2, #38	; 0x26
 8000e9e:	601a      	str	r2, [r3, #0]
 8000ea0:	4b0f      	ldr	r3, [pc, #60]	; (8000ee0 <string_descriptor_proc+0x80>)
 8000ea2:	4a11      	ldr	r2, [pc, #68]	; (8000ee8 <string_descriptor_proc+0x88>)
 8000ea4:	601a      	str	r2, [r3, #0]
 8000ea6:	f7ff ff75 	bl	8000d94 <plan_Data_IN_proc>
 8000eaa:	e011      	b.n	8000ed0 <string_descriptor_proc+0x70>
 8000eac:	4b0b      	ldr	r3, [pc, #44]	; (8000edc <string_descriptor_proc+0x7c>)
 8000eae:	2232      	movs	r2, #50	; 0x32
 8000eb0:	601a      	str	r2, [r3, #0]
 8000eb2:	4b0b      	ldr	r3, [pc, #44]	; (8000ee0 <string_descriptor_proc+0x80>)
 8000eb4:	4a0d      	ldr	r2, [pc, #52]	; (8000eec <string_descriptor_proc+0x8c>)
 8000eb6:	601a      	str	r2, [r3, #0]
 8000eb8:	f7ff ff6c 	bl	8000d94 <plan_Data_IN_proc>
 8000ebc:	e008      	b.n	8000ed0 <string_descriptor_proc+0x70>
 8000ebe:	4b07      	ldr	r3, [pc, #28]	; (8000edc <string_descriptor_proc+0x7c>)
 8000ec0:	221a      	movs	r2, #26
 8000ec2:	601a      	str	r2, [r3, #0]
 8000ec4:	4b06      	ldr	r3, [pc, #24]	; (8000ee0 <string_descriptor_proc+0x80>)
 8000ec6:	4a0a      	ldr	r2, [pc, #40]	; (8000ef0 <string_descriptor_proc+0x90>)
 8000ec8:	601a      	str	r2, [r3, #0]
 8000eca:	f7ff ff63 	bl	8000d94 <plan_Data_IN_proc>
 8000ece:	bf00      	nop
 8000ed0:	bf00      	nop
 8000ed2:	3708      	adds	r7, #8
 8000ed4:	46bd      	mov	sp, r7
 8000ed6:	bd80      	pop	{r7, pc}
 8000ed8:	20000040 	.word	0x20000040
 8000edc:	20000048 	.word	0x20000048
 8000ee0:	2000004c 	.word	0x2000004c
 8000ee4:	08001334 	.word	0x08001334
 8000ee8:	08001338 	.word	0x08001338
 8000eec:	08001360 	.word	0x08001360
 8000ef0:	2000000c 	.word	0x2000000c

08000ef4 <get_descriptor_proc>:
 8000ef4:	b580      	push	{r7, lr}
 8000ef6:	b082      	sub	sp, #8
 8000ef8:	af00      	add	r7, sp, #0
 8000efa:	4b2d      	ldr	r3, [pc, #180]	; (8000fb0 <get_descriptor_proc+0xbc>)
 8000efc:	78db      	ldrb	r3, [r3, #3]
 8000efe:	607b      	str	r3, [r7, #4]
 8000f00:	4b2b      	ldr	r3, [pc, #172]	; (8000fb0 <get_descriptor_proc+0xbc>)
 8000f02:	799b      	ldrb	r3, [r3, #6]
 8000f04:	461a      	mov	r2, r3
 8000f06:	4b2a      	ldr	r3, [pc, #168]	; (8000fb0 <get_descriptor_proc+0xbc>)
 8000f08:	79db      	ldrb	r3, [r3, #7]
 8000f0a:	021b      	lsls	r3, r3, #8
 8000f0c:	4313      	orrs	r3, r2
 8000f0e:	603b      	str	r3, [r7, #0]
 8000f10:	687b      	ldr	r3, [r7, #4]
 8000f12:	3b01      	subs	r3, #1
 8000f14:	2b05      	cmp	r3, #5
 8000f16:	d846      	bhi.n	8000fa6 <get_descriptor_proc+0xb2>
 8000f18:	a201      	add	r2, pc, #4	; (adr r2, 8000f20 <get_descriptor_proc+0x2c>)
 8000f1a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000f1e:	bf00      	nop
 8000f20:	08000f39 	.word	0x08000f39
 8000f24:	08000f73 	.word	0x08000f73
 8000f28:	08000f9b 	.word	0x08000f9b
 8000f2c:	08000fa7 	.word	0x08000fa7
 8000f30:	08000fa7 	.word	0x08000fa7
 8000f34:	08000f61 	.word	0x08000f61
 8000f38:	4a1e      	ldr	r2, [pc, #120]	; (8000fb4 <get_descriptor_proc+0xc0>)
 8000f3a:	683b      	ldr	r3, [r7, #0]
 8000f3c:	6013      	str	r3, [r2, #0]
 8000f3e:	4b1e      	ldr	r3, [pc, #120]	; (8000fb8 <get_descriptor_proc+0xc4>)
 8000f40:	4a1e      	ldr	r2, [pc, #120]	; (8000fbc <get_descriptor_proc+0xc8>)
 8000f42:	601a      	str	r2, [r3, #0]
 8000f44:	4a1e      	ldr	r2, [pc, #120]	; (8000fc0 <get_descriptor_proc+0xcc>)
 8000f46:	4b1e      	ldr	r3, [pc, #120]	; (8000fc0 <get_descriptor_proc+0xcc>)
 8000f48:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000f4c:	f023 0304 	bic.w	r3, r3, #4
 8000f50:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000f54:	f7ff ff1e 	bl	8000d94 <plan_Data_IN_proc>
 8000f58:	481a      	ldr	r0, [pc, #104]	; (8000fc4 <get_descriptor_proc+0xd0>)
 8000f5a:	f7ff fc39 	bl	80007d0 <xprintf>
 8000f5e:	e022      	b.n	8000fa6 <get_descriptor_proc+0xb2>
 8000f60:	f7ff fefc 	bl	8000d5c <plan_ZeroLength_IN_proc>
 8000f64:	4b18      	ldr	r3, [pc, #96]	; (8000fc8 <get_descriptor_proc+0xd4>)
 8000f66:	4a19      	ldr	r2, [pc, #100]	; (8000fcc <get_descriptor_proc+0xd8>)
 8000f68:	601a      	str	r2, [r3, #0]
 8000f6a:	4819      	ldr	r0, [pc, #100]	; (8000fd0 <get_descriptor_proc+0xdc>)
 8000f6c:	f7ff fc30 	bl	80007d0 <xprintf>
 8000f70:	e019      	b.n	8000fa6 <get_descriptor_proc+0xb2>
 8000f72:	4a10      	ldr	r2, [pc, #64]	; (8000fb4 <get_descriptor_proc+0xc0>)
 8000f74:	683b      	ldr	r3, [r7, #0]
 8000f76:	6013      	str	r3, [r2, #0]
 8000f78:	4b0f      	ldr	r3, [pc, #60]	; (8000fb8 <get_descriptor_proc+0xc4>)
 8000f7a:	4a16      	ldr	r2, [pc, #88]	; (8000fd4 <get_descriptor_proc+0xe0>)
 8000f7c:	601a      	str	r2, [r3, #0]
 8000f7e:	4a10      	ldr	r2, [pc, #64]	; (8000fc0 <get_descriptor_proc+0xcc>)
 8000f80:	4b0f      	ldr	r3, [pc, #60]	; (8000fc0 <get_descriptor_proc+0xcc>)
 8000f82:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000f86:	f023 0304 	bic.w	r3, r3, #4
 8000f8a:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000f8e:	f7ff ff01 	bl	8000d94 <plan_Data_IN_proc>
 8000f92:	4811      	ldr	r0, [pc, #68]	; (8000fd8 <get_descriptor_proc+0xe4>)
 8000f94:	f7ff fc1c 	bl	80007d0 <xprintf>
 8000f98:	e005      	b.n	8000fa6 <get_descriptor_proc+0xb2>
 8000f9a:	f7ff ff61 	bl	8000e60 <string_descriptor_proc>
 8000f9e:	480f      	ldr	r0, [pc, #60]	; (8000fdc <get_descriptor_proc+0xe8>)
 8000fa0:	f7ff fc16 	bl	80007d0 <xprintf>
 8000fa4:	bf00      	nop
 8000fa6:	bf00      	nop
 8000fa8:	3708      	adds	r7, #8
 8000faa:	46bd      	mov	sp, r7
 8000fac:	bd80      	pop	{r7, pc}
 8000fae:	bf00      	nop
 8000fb0:	20000040 	.word	0x20000040
 8000fb4:	20000048 	.word	0x20000048
 8000fb8:	2000004c 	.word	0x2000004c
 8000fbc:	080012dc 	.word	0x080012dc
 8000fc0:	40010000 	.word	0x40010000
 8000fc4:	0800122c 	.word	0x0800122c
 8000fc8:	20000004 	.word	0x20000004
 8000fcc:	08000d21 	.word	0x08000d21
 8000fd0:	08001238 	.word	0x08001238
 8000fd4:	080012f0 	.word	0x080012f0
 8000fd8:	08001244 	.word	0x08001244
 8000fdc:	08001254 	.word	0x08001254

08000fe0 <input0_for_setaddr_proc>:
 8000fe0:	b480      	push	{r7}
 8000fe2:	af00      	add	r7, sp, #0
 8000fe4:	4b09      	ldr	r3, [pc, #36]	; (800100c <input0_for_setaddr_proc+0x2c>)
 8000fe6:	4a0a      	ldr	r2, [pc, #40]	; (8001010 <input0_for_setaddr_proc+0x30>)
 8000fe8:	8812      	ldrh	r2, [r2, #0]
 8000fea:	f8c3 2150 	str.w	r2, [r3, #336]	; 0x150
 8000fee:	4a07      	ldr	r2, [pc, #28]	; (800100c <input0_for_setaddr_proc+0x2c>)
 8000ff0:	4b06      	ldr	r3, [pc, #24]	; (800100c <input0_for_setaddr_proc+0x2c>)
 8000ff2:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8000ff6:	f043 0302 	orr.w	r3, r3, #2
 8000ffa:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8000ffe:	4b05      	ldr	r3, [pc, #20]	; (8001014 <input0_for_setaddr_proc+0x34>)
 8001000:	4a05      	ldr	r2, [pc, #20]	; (8001018 <input0_for_setaddr_proc+0x38>)
 8001002:	601a      	str	r2, [r3, #0]
 8001004:	bf00      	nop
 8001006:	46bd      	mov	sp, r7
 8001008:	bc80      	pop	{r7}
 800100a:	4770      	bx	lr
 800100c:	40010000 	.word	0x40010000
 8001010:	20000050 	.word	0x20000050
 8001014:	20000004 	.word	0x20000004
 8001018:	08000c01 	.word	0x08000c01

0800101c <input0_for_setconfig_proc>:
 800101c:	b480      	push	{r7}
 800101e:	af00      	add	r7, sp, #0
 8001020:	4a07      	ldr	r2, [pc, #28]	; (8001040 <input0_for_setconfig_proc+0x24>)
 8001022:	4b07      	ldr	r3, [pc, #28]	; (8001040 <input0_for_setconfig_proc+0x24>)
 8001024:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8001028:	f043 0302 	orr.w	r3, r3, #2
 800102c:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8001030:	4b04      	ldr	r3, [pc, #16]	; (8001044 <input0_for_setconfig_proc+0x28>)
 8001032:	4a05      	ldr	r2, [pc, #20]	; (8001048 <input0_for_setconfig_proc+0x2c>)
 8001034:	601a      	str	r2, [r3, #0]
 8001036:	bf00      	nop
 8001038:	46bd      	mov	sp, r7
 800103a:	bc80      	pop	{r7}
 800103c:	4770      	bx	lr
 800103e:	bf00      	nop
 8001040:	40010000 	.word	0x40010000
 8001044:	20000004 	.word	0x20000004
 8001048:	08000c01 	.word	0x08000c01

0800104c <setup0_proc>:
 800104c:	b580      	push	{r7, lr}
 800104e:	b084      	sub	sp, #16
 8001050:	af00      	add	r7, sp, #0
 8001052:	4b4b      	ldr	r3, [pc, #300]	; (8001180 <setup0_proc+0x134>)
 8001054:	f8d3 318c 	ldr.w	r3, [r3, #396]	; 0x18c
 8001058:	60bb      	str	r3, [r7, #8]
 800105a:	2300      	movs	r3, #0
 800105c:	60fb      	str	r3, [r7, #12]
 800105e:	e00b      	b.n	8001078 <setup0_proc+0x2c>
 8001060:	4b47      	ldr	r3, [pc, #284]	; (8001180 <setup0_proc+0x134>)
 8001062:	f8d3 3180 	ldr.w	r3, [r3, #384]	; 0x180
 8001066:	b2d9      	uxtb	r1, r3
 8001068:	4a46      	ldr	r2, [pc, #280]	; (8001184 <setup0_proc+0x138>)
 800106a:	68fb      	ldr	r3, [r7, #12]
 800106c:	4413      	add	r3, r2
 800106e:	460a      	mov	r2, r1
 8001070:	701a      	strb	r2, [r3, #0]
 8001072:	68fb      	ldr	r3, [r7, #12]
 8001074:	3301      	adds	r3, #1
 8001076:	60fb      	str	r3, [r7, #12]
 8001078:	68fb      	ldr	r3, [r7, #12]
 800107a:	2b07      	cmp	r3, #7
 800107c:	ddf0      	ble.n	8001060 <setup0_proc+0x14>
 800107e:	4b40      	ldr	r3, [pc, #256]	; (8001180 <setup0_proc+0x134>)
 8001080:	2201      	movs	r2, #1
 8001082:	f8c3 2190 	str.w	r2, [r3, #400]	; 0x190
 8001086:	4b3f      	ldr	r3, [pc, #252]	; (8001184 <setup0_proc+0x138>)
 8001088:	785b      	ldrb	r3, [r3, #1]
 800108a:	607b      	str	r3, [r7, #4]
 800108c:	687b      	ldr	r3, [r7, #4]
 800108e:	3b05      	subs	r3, #5
 8001090:	2b1d      	cmp	r3, #29
 8001092:	d870      	bhi.n	8001176 <setup0_proc+0x12a>
 8001094:	a201      	add	r2, pc, #4	; (adr r2, 800109c <setup0_proc+0x50>)
 8001096:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800109a:	bf00      	nop
 800109c:	08001149 	.word	0x08001149
 80010a0:	0800116b 	.word	0x0800116b
 80010a4:	08001177 	.word	0x08001177
 80010a8:	08001177 	.word	0x08001177
 80010ac:	0800112d 	.word	0x0800112d
 80010b0:	08001177 	.word	0x08001177
 80010b4:	08001177 	.word	0x08001177
 80010b8:	08001177 	.word	0x08001177
 80010bc:	08001177 	.word	0x08001177
 80010c0:	08001177 	.word	0x08001177
 80010c4:	08001177 	.word	0x08001177
 80010c8:	08001177 	.word	0x08001177
 80010cc:	08001177 	.word	0x08001177
 80010d0:	08001177 	.word	0x08001177
 80010d4:	08001177 	.word	0x08001177
 80010d8:	08001177 	.word	0x08001177
 80010dc:	08001177 	.word	0x08001177
 80010e0:	08001177 	.word	0x08001177
 80010e4:	08001177 	.word	0x08001177
 80010e8:	08001177 	.word	0x08001177
 80010ec:	08001177 	.word	0x08001177
 80010f0:	08001177 	.word	0x08001177
 80010f4:	08001177 	.word	0x08001177
 80010f8:	08001177 	.word	0x08001177
 80010fc:	08001177 	.word	0x08001177
 8001100:	08001177 	.word	0x08001177
 8001104:	08001177 	.word	0x08001177
 8001108:	0800111d 	.word	0x0800111d
 800110c:	08001125 	.word	0x08001125
 8001110:	08001115 	.word	0x08001115
 8001114:	481c      	ldr	r0, [pc, #112]	; (8001188 <setup0_proc+0x13c>)
 8001116:	f7ff fb5b 	bl	80007d0 <xprintf>
 800111a:	e02c      	b.n	8001176 <setup0_proc+0x12a>
 800111c:	481b      	ldr	r0, [pc, #108]	; (800118c <setup0_proc+0x140>)
 800111e:	f7ff fb57 	bl	80007d0 <xprintf>
 8001122:	e028      	b.n	8001176 <setup0_proc+0x12a>
 8001124:	481a      	ldr	r0, [pc, #104]	; (8001190 <setup0_proc+0x144>)
 8001126:	f7ff fb53 	bl	80007d0 <xprintf>
 800112a:	e024      	b.n	8001176 <setup0_proc+0x12a>
 800112c:	4b15      	ldr	r3, [pc, #84]	; (8001184 <setup0_proc+0x138>)
 800112e:	789b      	ldrb	r3, [r3, #2]
 8001130:	b29a      	uxth	r2, r3
 8001132:	4b18      	ldr	r3, [pc, #96]	; (8001194 <setup0_proc+0x148>)
 8001134:	801a      	strh	r2, [r3, #0]
 8001136:	f7ff fe11 	bl	8000d5c <plan_ZeroLength_IN_proc>
 800113a:	4b17      	ldr	r3, [pc, #92]	; (8001198 <setup0_proc+0x14c>)
 800113c:	4a17      	ldr	r2, [pc, #92]	; (800119c <setup0_proc+0x150>)
 800113e:	601a      	str	r2, [r3, #0]
 8001140:	4817      	ldr	r0, [pc, #92]	; (80011a0 <setup0_proc+0x154>)
 8001142:	f7ff fb45 	bl	80007d0 <xprintf>
 8001146:	e016      	b.n	8001176 <setup0_proc+0x12a>
 8001148:	4b0e      	ldr	r3, [pc, #56]	; (8001184 <setup0_proc+0x138>)
 800114a:	789b      	ldrb	r3, [r3, #2]
 800114c:	b29a      	uxth	r2, r3
 800114e:	4b15      	ldr	r3, [pc, #84]	; (80011a4 <setup0_proc+0x158>)
 8001150:	801a      	strh	r2, [r3, #0]
 8001152:	f7ff fe03 	bl	8000d5c <plan_ZeroLength_IN_proc>
 8001156:	4b10      	ldr	r3, [pc, #64]	; (8001198 <setup0_proc+0x14c>)
 8001158:	4a13      	ldr	r2, [pc, #76]	; (80011a8 <setup0_proc+0x15c>)
 800115a:	601a      	str	r2, [r3, #0]
 800115c:	4b11      	ldr	r3, [pc, #68]	; (80011a4 <setup0_proc+0x158>)
 800115e:	881b      	ldrh	r3, [r3, #0]
 8001160:	4619      	mov	r1, r3
 8001162:	4812      	ldr	r0, [pc, #72]	; (80011ac <setup0_proc+0x160>)
 8001164:	f7ff fb34 	bl	80007d0 <xprintf>
 8001168:	e005      	b.n	8001176 <setup0_proc+0x12a>
 800116a:	4811      	ldr	r0, [pc, #68]	; (80011b0 <setup0_proc+0x164>)
 800116c:	f7ff fb30 	bl	80007d0 <xprintf>
 8001170:	f7ff fec0 	bl	8000ef4 <get_descriptor_proc>
 8001174:	bf00      	nop
 8001176:	bf00      	nop
 8001178:	3710      	adds	r7, #16
 800117a:	46bd      	mov	sp, r7
 800117c:	bd80      	pop	{r7, pc}
 800117e:	bf00      	nop
 8001180:	40010000 	.word	0x40010000
 8001184:	20000040 	.word	0x20000040
 8001188:	08001260 	.word	0x08001260
 800118c:	0800127c 	.word	0x0800127c
 8001190:	08001290 	.word	0x08001290
 8001194:	20000052 	.word	0x20000052
 8001198:	20000004 	.word	0x20000004
 800119c:	0800101d 	.word	0x0800101d
 80011a0:	080012a4 	.word	0x080012a4
 80011a4:	20000050 	.word	0x20000050
 80011a8:	08000fe1 	.word	0x08000fe1
 80011ac:	080012b8 	.word	0x080012b8
 80011b0:	080012cc 	.word	0x080012cc
 80011b4:	6c6c6568 	.word	0x6c6c6568
 80011b8:	6f77206f 	.word	0x6f77206f
 80011bc:	0d646c72 	.word	0x0d646c72
 80011c0:	0000000a 	.word	0x0000000a
 80011c4:	6c383025 	.word	0x6c383025
 80011c8:	00002058 	.word	0x00002058
 80011cc:	32302520 	.word	0x32302520
 80011d0:	00000058 	.word	0x00000058
 80011d4:	34302520 	.word	0x34302520
 80011d8:	00000058 	.word	0x00000058
 80011dc:	38302520 	.word	0x38302520
 80011e0:	0000584c 	.word	0x0000584c
 80011e4:	45534552 	.word	0x45534552
 80011e8:	000a0d54 	.word	0x000a0d54
 80011ec:	55544553 	.word	0x55544553
 80011f0:	554f2f50 	.word	0x554f2f50
 80011f4:	000a0d54 	.word	0x000a0d54
 80011f8:	3a307065 	.word	0x3a307065
 80011fc:	75746573 	.word	0x75746573
 8001200:	00003a70 	.word	0x00003a70
 8001204:	3a307065 	.word	0x3a307065
 8001208:	0a0d6e69 	.word	0x0a0d6e69
 800120c:	00000000 	.word	0x00000000
 8001210:	3a307065 	.word	0x3a307065
 8001214:	0d74756f 	.word	0x0d74756f
 8001218:	0000000a 	.word	0x0000000a
 800121c:	3d6e656c 	.word	0x3d6e656c
 8001220:	00006425 	.word	0x00006425
 8001224:	7473616c 	.word	0x7473616c
 8001228:	0064253d 	.word	0x0064253d
 800122c:	49564544 	.word	0x49564544
 8001230:	0a0d4543 	.word	0x0a0d4543
 8001234:	00000000 	.word	0x00000000
 8001238:	4c415551 	.word	0x4c415551
 800123c:	45494649 	.word	0x45494649
 8001240:	000a0d52 	.word	0x000a0d52
 8001244:	464e4f43 	.word	0x464e4f43
 8001248:	52554749 	.word	0x52554749
 800124c:	4f495441 	.word	0x4f495441
 8001250:	000a0d4e 	.word	0x000a0d4e
 8001254:	49525453 	.word	0x49525453
 8001258:	0a0d474e 	.word	0x0a0d474e
 800125c:	00000000 	.word	0x00000000
 8001260:	5f544553 	.word	0x5f544553
 8001264:	544e4f43 	.word	0x544e4f43
 8001268:	5f4c4f52 	.word	0x5f4c4f52
 800126c:	454e494c 	.word	0x454e494c
 8001270:	4154535f 	.word	0x4154535f
 8001274:	0a0d4554 	.word	0x0a0d4554
 8001278:	00000000 	.word	0x00000000
 800127c:	5f544553 	.word	0x5f544553
 8001280:	454e494c 	.word	0x454e494c
 8001284:	444f435f 	.word	0x444f435f
 8001288:	0d474e49 	.word	0x0d474e49
 800128c:	0000000a 	.word	0x0000000a
 8001290:	5f544547 	.word	0x5f544547
 8001294:	454e494c 	.word	0x454e494c
 8001298:	444f435f 	.word	0x444f435f
 800129c:	0d474e49 	.word	0x0d474e49
 80012a0:	0000000a 	.word	0x0000000a
 80012a4:	5f544553 	.word	0x5f544553
 80012a8:	464e4f43 	.word	0x464e4f43
 80012ac:	52554749 	.word	0x52554749
 80012b0:	4f495441 	.word	0x4f495441
 80012b4:	000a0d4e 	.word	0x000a0d4e
 80012b8:	5f544553 	.word	0x5f544553
 80012bc:	52444441 	.word	0x52444441
 80012c0:	20535345 	.word	0x20535345
 80012c4:	0a0d6425 	.word	0x0a0d6425
 80012c8:	00000000 	.word	0x00000000
 80012cc:	5f544547 	.word	0x5f544547
 80012d0:	43534544 	.word	0x43534544
 80012d4:	54504952 	.word	0x54504952
 80012d8:	003a524f 	.word	0x003a524f

080012dc <Virtual_Com_Port_DeviceDescriptor>:
 80012dc:	02000112 40000002 57400483 02010200     .......@..@W....
 80012ec:	00000103                                ....

080012f0 <Virtual_Com_Port_ConfigDescriptor>:
 80012f0:	00430209 c0000102 00040932 02020100     ..C.....2.......
 8001300:	24050001 05011000 01000124 02022404     ...$....$....$..
 8001310:	00062405 82050701 ff001003 00010409     .$..............
 8001320:	00000a02 03050700 00004002 02810507     .........@......
 8001330:	00000040                                @...

08001334 <Virtual_Com_Port_StringLangID>:
 8001334:	04090304                                ....

08001338 <Virtual_Com_Port_StringVendor>:
 8001338:	00530326 004d0054 00630069 006f0072     &.S.T.M.i.c.r.o.
 8001348:	006c0065 00630065 00720074 006e006f     e.l.e.c.t.r.o.n.
 8001358:	00630069 00000073                       i.c.s...

08001360 <Virtual_Com_Port_StringProduct>:
 8001360:	00530332 004d0054 00320033 00560020     2.S.T.M.3.2. .V.
 8001370:	00720069 00750074 006c0061 00430020     i.r.t.u.a.l. .C.
 8001380:	004d004f 00500020 0072006f 00200074     O.M. .P.o.r.t. .
 8001390:	00000020                                 ...
