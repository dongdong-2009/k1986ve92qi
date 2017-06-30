
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 29 03 00 08 89 03 00 08 89 03 00 08     ... )...........
 8000010:	89 03 00 08 89 03 00 08 89 03 00 08 00 00 00 00     ................
	...
 800002c:	89 03 00 08 89 03 00 08 00 00 00 00 89 03 00 08     ................
 800003c:	75 02 00 08 89 03 00 08 89 03 00 08 89 03 00 08     u...............
	...
 8000054:	89 03 00 08 89 03 00 08 89 03 00 08 89 03 00 08     ................
 8000064:	00 00 00 00 89 03 00 08 89 03 00 08 89 03 00 08     ................
 8000074:	00 00 00 00 89 03 00 08 89 03 00 08 89 03 00 08     ................
 8000084:	89 03 00 08 00 00 00 00 89 03 00 08 89 03 00 08     ................
	...
 80000ac:	89 03 00 08 89 03 00 08 89 03 00 08 89 03 00 08     ................
 80000bc:	89 03 00 08                                         ....

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
 800018c:	f000 f834 	bl	80001f8 <ClkConfig>
 8000190:	f000 f808 	bl	80001a4 <PortConfig>
 8000194:	f000 f884 	bl	80002a0 <ssi_init>
 8000198:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800019c:	f7ff ffdc 	bl	8000158 <sleep>
 80001a0:	e7fa      	b.n	8000198 <main+0x10>
 80001a2:	bf00      	nop

080001a4 <PortConfig>:
 80001a4:	b480      	push	{r7}
 80001a6:	af00      	add	r7, sp, #0
 80001a8:	4a11      	ldr	r2, [pc, #68]	; (80001f0 <PortConfig+0x4c>)
 80001aa:	4b11      	ldr	r3, [pc, #68]	; (80001f0 <PortConfig+0x4c>)
 80001ac:	69db      	ldr	r3, [r3, #28]
 80001ae:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 80001b2:	61d3      	str	r3, [r2, #28]
 80001b4:	4a0f      	ldr	r2, [pc, #60]	; (80001f4 <PortConfig+0x50>)
 80001b6:	4b0f      	ldr	r3, [pc, #60]	; (80001f4 <PortConfig+0x50>)
 80001b8:	689b      	ldr	r3, [r3, #8]
 80001ba:	6093      	str	r3, [r2, #8]
 80001bc:	4a0d      	ldr	r2, [pc, #52]	; (80001f4 <PortConfig+0x50>)
 80001be:	4b0d      	ldr	r3, [pc, #52]	; (80001f4 <PortConfig+0x50>)
 80001c0:	681b      	ldr	r3, [r3, #0]
 80001c2:	6013      	str	r3, [r2, #0]
 80001c4:	4a0b      	ldr	r2, [pc, #44]	; (80001f4 <PortConfig+0x50>)
 80001c6:	4b0b      	ldr	r3, [pc, #44]	; (80001f4 <PortConfig+0x50>)
 80001c8:	685b      	ldr	r3, [r3, #4]
 80001ca:	f043 0301 	orr.w	r3, r3, #1
 80001ce:	6053      	str	r3, [r2, #4]
 80001d0:	4a08      	ldr	r2, [pc, #32]	; (80001f4 <PortConfig+0x50>)
 80001d2:	4b08      	ldr	r3, [pc, #32]	; (80001f4 <PortConfig+0x50>)
 80001d4:	68db      	ldr	r3, [r3, #12]
 80001d6:	f043 0301 	orr.w	r3, r3, #1
 80001da:	60d3      	str	r3, [r2, #12]
 80001dc:	4a05      	ldr	r2, [pc, #20]	; (80001f4 <PortConfig+0x50>)
 80001de:	4b05      	ldr	r3, [pc, #20]	; (80001f4 <PortConfig+0x50>)
 80001e0:	699b      	ldr	r3, [r3, #24]
 80001e2:	f043 0303 	orr.w	r3, r3, #3
 80001e6:	6193      	str	r3, [r2, #24]
 80001e8:	bf00      	nop
 80001ea:	46bd      	mov	sp, r7
 80001ec:	bc80      	pop	{r7}
 80001ee:	4770      	bx	lr
 80001f0:	40020000 	.word	0x40020000
 80001f4:	400b0000 	.word	0x400b0000

080001f8 <ClkConfig>:
 80001f8:	b580      	push	{r7, lr}
 80001fa:	af00      	add	r7, sp, #0
 80001fc:	4a1a      	ldr	r2, [pc, #104]	; (8000268 <ClkConfig+0x70>)
 80001fe:	4b1a      	ldr	r3, [pc, #104]	; (8000268 <ClkConfig+0x70>)
 8000200:	689b      	ldr	r3, [r3, #8]
 8000202:	f043 0301 	orr.w	r3, r3, #1
 8000206:	6093      	str	r3, [r2, #8]
 8000208:	bf00      	nop
 800020a:	4b17      	ldr	r3, [pc, #92]	; (8000268 <ClkConfig+0x70>)
 800020c:	681b      	ldr	r3, [r3, #0]
 800020e:	f003 0304 	and.w	r3, r3, #4
 8000212:	2b00      	cmp	r3, #0
 8000214:	d0f9      	beq.n	800020a <ClkConfig+0x12>
 8000216:	4a14      	ldr	r2, [pc, #80]	; (8000268 <ClkConfig+0x70>)
 8000218:	4b13      	ldr	r3, [pc, #76]	; (8000268 <ClkConfig+0x70>)
 800021a:	68db      	ldr	r3, [r3, #12]
 800021c:	f043 0302 	orr.w	r3, r3, #2
 8000220:	60d3      	str	r3, [r2, #12]
 8000222:	4b11      	ldr	r3, [pc, #68]	; (8000268 <ClkConfig+0x70>)
 8000224:	f640 1204 	movw	r2, #2308	; 0x904
 8000228:	605a      	str	r2, [r3, #4]
 800022a:	bf00      	nop
 800022c:	4b0e      	ldr	r3, [pc, #56]	; (8000268 <ClkConfig+0x70>)
 800022e:	681b      	ldr	r3, [r3, #0]
 8000230:	f003 0302 	and.w	r3, r3, #2
 8000234:	2b00      	cmp	r3, #0
 8000236:	d0f9      	beq.n	800022c <ClkConfig+0x34>
 8000238:	4a0c      	ldr	r2, [pc, #48]	; (800026c <ClkConfig+0x74>)
 800023a:	4b0c      	ldr	r3, [pc, #48]	; (800026c <ClkConfig+0x74>)
 800023c:	681b      	ldr	r3, [r3, #0]
 800023e:	f043 0320 	orr.w	r3, r3, #32
 8000242:	6013      	str	r3, [r2, #0]
 8000244:	4a08      	ldr	r2, [pc, #32]	; (8000268 <ClkConfig+0x70>)
 8000246:	4b08      	ldr	r3, [pc, #32]	; (8000268 <ClkConfig+0x70>)
 8000248:	68db      	ldr	r3, [r3, #12]
 800024a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800024e:	60d3      	str	r3, [r2, #12]
 8000250:	4a05      	ldr	r2, [pc, #20]	; (8000268 <ClkConfig+0x70>)
 8000252:	4b05      	ldr	r3, [pc, #20]	; (8000268 <ClkConfig+0x70>)
 8000254:	68db      	ldr	r3, [r3, #12]
 8000256:	f043 0304 	orr.w	r3, r3, #4
 800025a:	60d3      	str	r3, [r2, #12]
 800025c:	4804      	ldr	r0, [pc, #16]	; (8000270 <ClkConfig+0x78>)
 800025e:	f7ff ff59 	bl	8000114 <SysTick_Config>
 8000262:	bf00      	nop
 8000264:	bd80      	pop	{r7, pc}
 8000266:	bf00      	nop
 8000268:	40020000 	.word	0x40020000
 800026c:	40018000 	.word	0x40018000
 8000270:	00013880 	.word	0x00013880

08000274 <SysTick_Handler>:
 8000274:	b480      	push	{r7}
 8000276:	af00      	add	r7, sp, #0
 8000278:	4a07      	ldr	r2, [pc, #28]	; (8000298 <SysTick_Handler+0x24>)
 800027a:	4b07      	ldr	r3, [pc, #28]	; (8000298 <SysTick_Handler+0x24>)
 800027c:	681b      	ldr	r3, [r3, #0]
 800027e:	f083 0301 	eor.w	r3, r3, #1
 8000282:	6013      	str	r3, [r2, #0]
 8000284:	4b05      	ldr	r3, [pc, #20]	; (800029c <SysTick_Handler+0x28>)
 8000286:	681b      	ldr	r3, [r3, #0]
 8000288:	3301      	adds	r3, #1
 800028a:	4a04      	ldr	r2, [pc, #16]	; (800029c <SysTick_Handler+0x28>)
 800028c:	6013      	str	r3, [r2, #0]
 800028e:	bf00      	nop
 8000290:	46bd      	mov	sp, r7
 8000292:	bc80      	pop	{r7}
 8000294:	4770      	bx	lr
 8000296:	bf00      	nop
 8000298:	400b0000 	.word	0x400b0000
 800029c:	20000008 	.word	0x20000008

080002a0 <ssi_init>:
 80002a0:	b480      	push	{r7}
 80002a2:	af00      	add	r7, sp, #0
 80002a4:	4a1d      	ldr	r2, [pc, #116]	; (800031c <ssi_init+0x7c>)
 80002a6:	4b1d      	ldr	r3, [pc, #116]	; (800031c <ssi_init+0x7c>)
 80002a8:	69db      	ldr	r3, [r3, #28]
 80002aa:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 80002ae:	61d3      	str	r3, [r2, #28]
 80002b0:	4a1b      	ldr	r2, [pc, #108]	; (8000320 <ssi_init+0x80>)
 80002b2:	4b1b      	ldr	r3, [pc, #108]	; (8000320 <ssi_init+0x80>)
 80002b4:	689b      	ldr	r3, [r3, #8]
 80002b6:	f023 03cf 	bic.w	r3, r3, #207	; 0xcf
 80002ba:	6093      	str	r3, [r2, #8]
 80002bc:	4a18      	ldr	r2, [pc, #96]	; (8000320 <ssi_init+0x80>)
 80002be:	4b18      	ldr	r3, [pc, #96]	; (8000320 <ssi_init+0x80>)
 80002c0:	689b      	ldr	r3, [r3, #8]
 80002c2:	f043 0390 	orr.w	r3, r3, #144	; 0x90
 80002c6:	6093      	str	r3, [r2, #8]
 80002c8:	4a15      	ldr	r2, [pc, #84]	; (8000320 <ssi_init+0x80>)
 80002ca:	4b15      	ldr	r3, [pc, #84]	; (8000320 <ssi_init+0x80>)
 80002cc:	68db      	ldr	r3, [r3, #12]
 80002ce:	f043 030b 	orr.w	r3, r3, #11
 80002d2:	60d3      	str	r3, [r2, #12]
 80002d4:	4a12      	ldr	r2, [pc, #72]	; (8000320 <ssi_init+0x80>)
 80002d6:	4b12      	ldr	r3, [pc, #72]	; (8000320 <ssi_init+0x80>)
 80002d8:	699b      	ldr	r3, [r3, #24]
 80002da:	f043 030f 	orr.w	r3, r3, #15
 80002de:	6193      	str	r3, [r2, #24]
 80002e0:	4a0f      	ldr	r2, [pc, #60]	; (8000320 <ssi_init+0x80>)
 80002e2:	4b0f      	ldr	r3, [pc, #60]	; (8000320 <ssi_init+0x80>)
 80002e4:	685b      	ldr	r3, [r3, #4]
 80002e6:	f043 0302 	orr.w	r3, r3, #2
 80002ea:	6053      	str	r3, [r2, #4]
 80002ec:	4a0b      	ldr	r2, [pc, #44]	; (800031c <ssi_init+0x7c>)
 80002ee:	4b0b      	ldr	r3, [pc, #44]	; (800031c <ssi_init+0x7c>)
 80002f0:	69db      	ldr	r3, [r3, #28]
 80002f2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80002f6:	61d3      	str	r3, [r2, #28]
 80002f8:	4b08      	ldr	r3, [pc, #32]	; (800031c <ssi_init+0x7c>)
 80002fa:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
 80002fe:	62da      	str	r2, [r3, #44]	; 0x2c
 8000300:	4b08      	ldr	r3, [pc, #32]	; (8000324 <ssi_init+0x84>)
 8000302:	2202      	movs	r2, #2
 8000304:	611a      	str	r2, [r3, #16]
 8000306:	4b07      	ldr	r3, [pc, #28]	; (8000324 <ssi_init+0x84>)
 8000308:	221b      	movs	r2, #27
 800030a:	601a      	str	r2, [r3, #0]
 800030c:	4b05      	ldr	r3, [pc, #20]	; (8000324 <ssi_init+0x84>)
 800030e:	2202      	movs	r2, #2
 8000310:	605a      	str	r2, [r3, #4]
 8000312:	bf00      	nop
 8000314:	46bd      	mov	sp, r7
 8000316:	bc80      	pop	{r7}
 8000318:	4770      	bx	lr
 800031a:	bf00      	nop
 800031c:	40020000 	.word	0x40020000
 8000320:	400e8000 	.word	0x400e8000
 8000324:	40040000 	.word	0x40040000

08000328 <handler_reset>:
 8000328:	b580      	push	{r7, lr}
 800032a:	b082      	sub	sp, #8
 800032c:	af00      	add	r7, sp, #0
 800032e:	4b11      	ldr	r3, [pc, #68]	; (8000374 <handler_reset+0x4c>)
 8000330:	607b      	str	r3, [r7, #4]
 8000332:	4b11      	ldr	r3, [pc, #68]	; (8000378 <handler_reset+0x50>)
 8000334:	603b      	str	r3, [r7, #0]
 8000336:	e007      	b.n	8000348 <handler_reset+0x20>
 8000338:	683b      	ldr	r3, [r7, #0]
 800033a:	1d1a      	adds	r2, r3, #4
 800033c:	603a      	str	r2, [r7, #0]
 800033e:	687a      	ldr	r2, [r7, #4]
 8000340:	1d11      	adds	r1, r2, #4
 8000342:	6079      	str	r1, [r7, #4]
 8000344:	6812      	ldr	r2, [r2, #0]
 8000346:	601a      	str	r2, [r3, #0]
 8000348:	683b      	ldr	r3, [r7, #0]
 800034a:	4a0c      	ldr	r2, [pc, #48]	; (800037c <handler_reset+0x54>)
 800034c:	4293      	cmp	r3, r2
 800034e:	d3f3      	bcc.n	8000338 <handler_reset+0x10>
 8000350:	4b0b      	ldr	r3, [pc, #44]	; (8000380 <handler_reset+0x58>)
 8000352:	603b      	str	r3, [r7, #0]
 8000354:	e004      	b.n	8000360 <handler_reset+0x38>
 8000356:	683b      	ldr	r3, [r7, #0]
 8000358:	1d1a      	adds	r2, r3, #4
 800035a:	603a      	str	r2, [r7, #0]
 800035c:	2200      	movs	r2, #0
 800035e:	601a      	str	r2, [r3, #0]
 8000360:	683b      	ldr	r3, [r7, #0]
 8000362:	4a08      	ldr	r2, [pc, #32]	; (8000384 <handler_reset+0x5c>)
 8000364:	4293      	cmp	r3, r2
 8000366:	d3f6      	bcc.n	8000356 <handler_reset+0x2e>
 8000368:	f7ff ff0e 	bl	8000188 <main>
 800036c:	bf00      	nop
 800036e:	3708      	adds	r7, #8
 8000370:	46bd      	mov	sp, r7
 8000372:	bd80      	pop	{r7, pc}
 8000374:	08000390 	.word	0x08000390
 8000378:	20000000 	.word	0x20000000
 800037c:	20000000 	.word	0x20000000
 8000380:	20000000 	.word	0x20000000
 8000384:	2000000c 	.word	0x2000000c

08000388 <default_handler>:
 8000388:	b480      	push	{r7}
 800038a:	af00      	add	r7, sp, #0
 800038c:	e7fe      	b.n	800038c <default_handler+0x4>
 800038e:	bf00      	nop
