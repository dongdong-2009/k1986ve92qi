
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 85 05 00 08 e5 05 00 08 e5 05 00 08     ... ............
 8000010:	e5 05 00 08 e5 05 00 08 e5 05 00 08 00 00 00 00     ................
	...
 800002c:	e5 05 00 08 e5 05 00 08 00 00 00 00 e5 05 00 08     ................
 800003c:	35 05 00 08 e5 05 00 08 e5 05 00 08 e5 05 00 08     5...............
	...
 8000054:	e5 05 00 08 e5 05 00 08 e5 05 00 08 e5 05 00 08     ................
 8000064:	00 00 00 00 e5 05 00 08 e5 05 00 08 e5 05 00 08     ................
 8000074:	00 00 00 00 51 05 00 08 e5 05 00 08 e5 05 00 08     ....Q...........
 8000084:	e5 05 00 08 00 00 00 00 e5 05 00 08 e5 05 00 08     ................
	...
 80000ac:	e5 05 00 08 e5 05 00 08 e5 05 00 08 e5 05 00 08     ................
 80000bc:	19 05 00 08                                         ....

080000c0 <__WFI>:
 80000c0:	b480      	push	{r7}
 80000c2:	af00      	add	r7, sp, #0
 80000c4:	bf30      	wfi
 80000c6:	bf00      	nop
 80000c8:	46bd      	mov	sp, r7
 80000ca:	bc80      	pop	{r7}
 80000cc:	4770      	bx	lr
 80000ce:	bf00      	nop

080000d0 <NVIC_EnableIRQ>:
 80000d0:	b480      	push	{r7}
 80000d2:	b083      	sub	sp, #12
 80000d4:	af00      	add	r7, sp, #0
 80000d6:	4603      	mov	r3, r0
 80000d8:	71fb      	strb	r3, [r7, #7]
 80000da:	4908      	ldr	r1, [pc, #32]	; (80000fc <NVIC_EnableIRQ+0x2c>)
 80000dc:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80000e0:	095b      	lsrs	r3, r3, #5
 80000e2:	79fa      	ldrb	r2, [r7, #7]
 80000e4:	f002 021f 	and.w	r2, r2, #31
 80000e8:	2001      	movs	r0, #1
 80000ea:	fa00 f202 	lsl.w	r2, r0, r2
 80000ee:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80000f2:	bf00      	nop
 80000f4:	370c      	adds	r7, #12
 80000f6:	46bd      	mov	sp, r7
 80000f8:	bc80      	pop	{r7}
 80000fa:	4770      	bx	lr
 80000fc:	e000e100 	.word	0xe000e100

08000100 <NVIC_SetPriority>:
 8000100:	b480      	push	{r7}
 8000102:	b083      	sub	sp, #12
 8000104:	af00      	add	r7, sp, #0
 8000106:	4603      	mov	r3, r0
 8000108:	6039      	str	r1, [r7, #0]
 800010a:	71fb      	strb	r3, [r7, #7]
 800010c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000110:	2b00      	cmp	r3, #0
 8000112:	da0b      	bge.n	800012c <NVIC_SetPriority+0x2c>
 8000114:	490d      	ldr	r1, [pc, #52]	; (800014c <NVIC_SetPriority+0x4c>)
 8000116:	79fb      	ldrb	r3, [r7, #7]
 8000118:	f003 030f 	and.w	r3, r3, #15
 800011c:	3b04      	subs	r3, #4
 800011e:	683a      	ldr	r2, [r7, #0]
 8000120:	b2d2      	uxtb	r2, r2
 8000122:	0152      	lsls	r2, r2, #5
 8000124:	b2d2      	uxtb	r2, r2
 8000126:	440b      	add	r3, r1
 8000128:	761a      	strb	r2, [r3, #24]
 800012a:	e009      	b.n	8000140 <NVIC_SetPriority+0x40>
 800012c:	4908      	ldr	r1, [pc, #32]	; (8000150 <NVIC_SetPriority+0x50>)
 800012e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000132:	683a      	ldr	r2, [r7, #0]
 8000134:	b2d2      	uxtb	r2, r2
 8000136:	0152      	lsls	r2, r2, #5
 8000138:	b2d2      	uxtb	r2, r2
 800013a:	440b      	add	r3, r1
 800013c:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8000140:	bf00      	nop
 8000142:	370c      	adds	r7, #12
 8000144:	46bd      	mov	sp, r7
 8000146:	bc80      	pop	{r7}
 8000148:	4770      	bx	lr
 800014a:	bf00      	nop
 800014c:	e000ed00 	.word	0xe000ed00
 8000150:	e000e100 	.word	0xe000e100

08000154 <SysTick_Config>:
 8000154:	b580      	push	{r7, lr}
 8000156:	b082      	sub	sp, #8
 8000158:	af00      	add	r7, sp, #0
 800015a:	6078      	str	r0, [r7, #4]
 800015c:	687b      	ldr	r3, [r7, #4]
 800015e:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 8000162:	d301      	bcc.n	8000168 <SysTick_Config+0x14>
 8000164:	2301      	movs	r3, #1
 8000166:	e011      	b.n	800018c <SysTick_Config+0x38>
 8000168:	4a0a      	ldr	r2, [pc, #40]	; (8000194 <SysTick_Config+0x40>)
 800016a:	687b      	ldr	r3, [r7, #4]
 800016c:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 8000170:	3b01      	subs	r3, #1
 8000172:	6053      	str	r3, [r2, #4]
 8000174:	2107      	movs	r1, #7
 8000176:	f04f 30ff 	mov.w	r0, #4294967295
 800017a:	f7ff ffc1 	bl	8000100 <NVIC_SetPriority>
 800017e:	4b05      	ldr	r3, [pc, #20]	; (8000194 <SysTick_Config+0x40>)
 8000180:	2200      	movs	r2, #0
 8000182:	609a      	str	r2, [r3, #8]
 8000184:	4b03      	ldr	r3, [pc, #12]	; (8000194 <SysTick_Config+0x40>)
 8000186:	2207      	movs	r2, #7
 8000188:	601a      	str	r2, [r3, #0]
 800018a:	2300      	movs	r3, #0
 800018c:	4618      	mov	r0, r3
 800018e:	3708      	adds	r7, #8
 8000190:	46bd      	mov	sp, r7
 8000192:	bd80      	pop	{r7, pc}
 8000194:	e000e010 	.word	0xe000e010

08000198 <sleep>:
 8000198:	b480      	push	{r7}
 800019a:	b085      	sub	sp, #20
 800019c:	af00      	add	r7, sp, #0
 800019e:	6078      	str	r0, [r7, #4]
 80001a0:	4b08      	ldr	r3, [pc, #32]	; (80001c4 <sleep+0x2c>)
 80001a2:	681a      	ldr	r2, [r3, #0]
 80001a4:	687b      	ldr	r3, [r7, #4]
 80001a6:	4413      	add	r3, r2
 80001a8:	60fb      	str	r3, [r7, #12]
 80001aa:	bf00      	nop
 80001ac:	4b05      	ldr	r3, [pc, #20]	; (80001c4 <sleep+0x2c>)
 80001ae:	681a      	ldr	r2, [r3, #0]
 80001b0:	68fb      	ldr	r3, [r7, #12]
 80001b2:	429a      	cmp	r2, r3
 80001b4:	d3fa      	bcc.n	80001ac <sleep+0x14>
 80001b6:	bf00      	nop
 80001b8:	4618      	mov	r0, r3
 80001ba:	3714      	adds	r7, #20
 80001bc:	46bd      	mov	sp, r7
 80001be:	bc80      	pop	{r7}
 80001c0:	4770      	bx	lr
 80001c2:	bf00      	nop
 80001c4:	20000000 	.word	0x20000000

080001c8 <PortConfig>:
 80001c8:	b580      	push	{r7, lr}
 80001ca:	af00      	add	r7, sp, #0
 80001cc:	4a3a      	ldr	r2, [pc, #232]	; (80002b8 <PortConfig+0xf0>)
 80001ce:	4b3a      	ldr	r3, [pc, #232]	; (80002b8 <PortConfig+0xf0>)
 80001d0:	69db      	ldr	r3, [r3, #28]
 80001d2:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80001d6:	61d3      	str	r3, [r2, #28]
 80001d8:	4b38      	ldr	r3, [pc, #224]	; (80002bc <PortConfig+0xf4>)
 80001da:	2200      	movs	r2, #0
 80001dc:	609a      	str	r2, [r3, #8]
 80001de:	4b37      	ldr	r3, [pc, #220]	; (80002bc <PortConfig+0xf4>)
 80001e0:	2200      	movs	r2, #0
 80001e2:	601a      	str	r2, [r3, #0]
 80001e4:	4b35      	ldr	r3, [pc, #212]	; (80002bc <PortConfig+0xf4>)
 80001e6:	22ff      	movs	r2, #255	; 0xff
 80001e8:	605a      	str	r2, [r3, #4]
 80001ea:	4b34      	ldr	r3, [pc, #208]	; (80002bc <PortConfig+0xf4>)
 80001ec:	22ff      	movs	r2, #255	; 0xff
 80001ee:	60da      	str	r2, [r3, #12]
 80001f0:	4a32      	ldr	r2, [pc, #200]	; (80002bc <PortConfig+0xf4>)
 80001f2:	4b32      	ldr	r3, [pc, #200]	; (80002bc <PortConfig+0xf4>)
 80001f4:	699b      	ldr	r3, [r3, #24]
 80001f6:	ea6f 4313 	mvn.w	r3, r3, lsr #16
 80001fa:	ea6f 4303 	mvn.w	r3, r3, lsl #16
 80001fe:	6193      	str	r3, [r2, #24]
 8000200:	4a2d      	ldr	r2, [pc, #180]	; (80002b8 <PortConfig+0xf0>)
 8000202:	4b2d      	ldr	r3, [pc, #180]	; (80002b8 <PortConfig+0xf0>)
 8000204:	69db      	ldr	r3, [r3, #28]
 8000206:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 800020a:	61d3      	str	r3, [r2, #28]
 800020c:	4a2c      	ldr	r2, [pc, #176]	; (80002c0 <PortConfig+0xf8>)
 800020e:	4b2c      	ldr	r3, [pc, #176]	; (80002c0 <PortConfig+0xf8>)
 8000210:	689b      	ldr	r3, [r3, #8]
 8000212:	f443 2340 	orr.w	r3, r3, #786432	; 0xc0000
 8000216:	6093      	str	r3, [r2, #8]
 8000218:	4b29      	ldr	r3, [pc, #164]	; (80002c0 <PortConfig+0xf8>)
 800021a:	2200      	movs	r2, #0
 800021c:	605a      	str	r2, [r3, #4]
 800021e:	4a28      	ldr	r2, [pc, #160]	; (80002c0 <PortConfig+0xf8>)
 8000220:	4b27      	ldr	r3, [pc, #156]	; (80002c0 <PortConfig+0xf8>)
 8000222:	68db      	ldr	r3, [r3, #12]
 8000224:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8000228:	60d3      	str	r3, [r2, #12]
 800022a:	201f      	movs	r0, #31
 800022c:	f7ff ff50 	bl	80000d0 <NVIC_EnableIRQ>
 8000230:	4a21      	ldr	r2, [pc, #132]	; (80002b8 <PortConfig+0xf0>)
 8000232:	4b21      	ldr	r3, [pc, #132]	; (80002b8 <PortConfig+0xf0>)
 8000234:	69db      	ldr	r3, [r3, #28]
 8000236:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 800023a:	61d3      	str	r3, [r2, #28]
 800023c:	4a21      	ldr	r2, [pc, #132]	; (80002c4 <PortConfig+0xfc>)
 800023e:	4b21      	ldr	r3, [pc, #132]	; (80002c4 <PortConfig+0xfc>)
 8000240:	689b      	ldr	r3, [r3, #8]
 8000242:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8000246:	6093      	str	r3, [r2, #8]
 8000248:	4a1e      	ldr	r2, [pc, #120]	; (80002c4 <PortConfig+0xfc>)
 800024a:	4b1e      	ldr	r3, [pc, #120]	; (80002c4 <PortConfig+0xfc>)
 800024c:	689b      	ldr	r3, [r3, #8]
 800024e:	f043 03aa 	orr.w	r3, r3, #170	; 0xaa
 8000252:	6093      	str	r3, [r2, #8]
 8000254:	4a1b      	ldr	r2, [pc, #108]	; (80002c4 <PortConfig+0xfc>)
 8000256:	4b1b      	ldr	r3, [pc, #108]	; (80002c4 <PortConfig+0xfc>)
 8000258:	68db      	ldr	r3, [r3, #12]
 800025a:	f043 030f 	orr.w	r3, r3, #15
 800025e:	60d3      	str	r3, [r2, #12]
 8000260:	4a18      	ldr	r2, [pc, #96]	; (80002c4 <PortConfig+0xfc>)
 8000262:	4b18      	ldr	r3, [pc, #96]	; (80002c4 <PortConfig+0xfc>)
 8000264:	699b      	ldr	r3, [r3, #24]
 8000266:	f043 033f 	orr.w	r3, r3, #63	; 0x3f
 800026a:	6193      	str	r3, [r2, #24]
 800026c:	4a15      	ldr	r2, [pc, #84]	; (80002c4 <PortConfig+0xfc>)
 800026e:	4b15      	ldr	r3, [pc, #84]	; (80002c4 <PortConfig+0xfc>)
 8000270:	685b      	ldr	r3, [r3, #4]
 8000272:	f043 0307 	orr.w	r3, r3, #7
 8000276:	6053      	str	r3, [r2, #4]
 8000278:	4a12      	ldr	r2, [pc, #72]	; (80002c4 <PortConfig+0xfc>)
 800027a:	4b12      	ldr	r3, [pc, #72]	; (80002c4 <PortConfig+0xfc>)
 800027c:	685b      	ldr	r3, [r3, #4]
 800027e:	f023 0308 	bic.w	r3, r3, #8
 8000282:	6053      	str	r3, [r2, #4]
 8000284:	4a0f      	ldr	r2, [pc, #60]	; (80002c4 <PortConfig+0xfc>)
 8000286:	4b0f      	ldr	r3, [pc, #60]	; (80002c4 <PortConfig+0xfc>)
 8000288:	685b      	ldr	r3, [r3, #4]
 800028a:	f043 0301 	orr.w	r3, r3, #1
 800028e:	6053      	str	r3, [r2, #4]
 8000290:	4a0d      	ldr	r2, [pc, #52]	; (80002c8 <PortConfig+0x100>)
 8000292:	4b0d      	ldr	r3, [pc, #52]	; (80002c8 <PortConfig+0x100>)
 8000294:	68db      	ldr	r3, [r3, #12]
 8000296:	f023 0301 	bic.w	r3, r3, #1
 800029a:	60d3      	str	r3, [r2, #12]
 800029c:	4a06      	ldr	r2, [pc, #24]	; (80002b8 <PortConfig+0xf0>)
 800029e:	4b06      	ldr	r3, [pc, #24]	; (80002b8 <PortConfig+0xf0>)
 80002a0:	69db      	ldr	r3, [r3, #28]
 80002a2:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80002a6:	61d3      	str	r3, [r2, #28]
 80002a8:	4a08      	ldr	r2, [pc, #32]	; (80002cc <PortConfig+0x104>)
 80002aa:	4b08      	ldr	r3, [pc, #32]	; (80002cc <PortConfig+0x104>)
 80002ac:	68db      	ldr	r3, [r3, #12]
 80002ae:	f023 0360 	bic.w	r3, r3, #96	; 0x60
 80002b2:	60d3      	str	r3, [r2, #12]
 80002b4:	bf00      	nop
 80002b6:	bd80      	pop	{r7, pc}
 80002b8:	40020000 	.word	0x40020000
 80002bc:	400a8000 	.word	0x400a8000
 80002c0:	400b0000 	.word	0x400b0000
 80002c4:	400e8000 	.word	0x400e8000
 80002c8:	400c8000 	.word	0x400c8000
 80002cc:	400c0000 	.word	0x400c0000

080002d0 <ssi_init>:
 80002d0:	b480      	push	{r7}
 80002d2:	af00      	add	r7, sp, #0
 80002d4:	4a0c      	ldr	r2, [pc, #48]	; (8000308 <ssi_init+0x38>)
 80002d6:	4b0c      	ldr	r3, [pc, #48]	; (8000308 <ssi_init+0x38>)
 80002d8:	69db      	ldr	r3, [r3, #28]
 80002da:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80002de:	61d3      	str	r3, [r2, #28]
 80002e0:	4b09      	ldr	r3, [pc, #36]	; (8000308 <ssi_init+0x38>)
 80002e2:	4a0a      	ldr	r2, [pc, #40]	; (800030c <ssi_init+0x3c>)
 80002e4:	62da      	str	r2, [r3, #44]	; 0x2c
 80002e6:	4b0a      	ldr	r3, [pc, #40]	; (8000310 <ssi_init+0x40>)
 80002e8:	2200      	movs	r2, #0
 80002ea:	605a      	str	r2, [r3, #4]
 80002ec:	4b08      	ldr	r3, [pc, #32]	; (8000310 <ssi_init+0x40>)
 80002ee:	2210      	movs	r2, #16
 80002f0:	611a      	str	r2, [r3, #16]
 80002f2:	4b07      	ldr	r3, [pc, #28]	; (8000310 <ssi_init+0x40>)
 80002f4:	f240 221b 	movw	r2, #539	; 0x21b
 80002f8:	601a      	str	r2, [r3, #0]
 80002fa:	4b05      	ldr	r3, [pc, #20]	; (8000310 <ssi_init+0x40>)
 80002fc:	2202      	movs	r2, #2
 80002fe:	605a      	str	r2, [r3, #4]
 8000300:	bf00      	nop
 8000302:	46bd      	mov	sp, r7
 8000304:	bc80      	pop	{r7}
 8000306:	4770      	bx	lr
 8000308:	40020000 	.word	0x40020000
 800030c:	0100000a 	.word	0x0100000a
 8000310:	40040000 	.word	0x40040000

08000314 <b2g>:
 8000314:	b480      	push	{r7}
 8000316:	b083      	sub	sp, #12
 8000318:	af00      	add	r7, sp, #0
 800031a:	6078      	str	r0, [r7, #4]
 800031c:	687b      	ldr	r3, [r7, #4]
 800031e:	085a      	lsrs	r2, r3, #1
 8000320:	687b      	ldr	r3, [r7, #4]
 8000322:	4053      	eors	r3, r2
 8000324:	4618      	mov	r0, r3
 8000326:	370c      	adds	r7, #12
 8000328:	46bd      	mov	sp, r7
 800032a:	bc80      	pop	{r7}
 800032c:	4770      	bx	lr
 800032e:	bf00      	nop

08000330 <g2b>:
 8000330:	b480      	push	{r7}
 8000332:	b085      	sub	sp, #20
 8000334:	af00      	add	r7, sp, #0
 8000336:	6078      	str	r0, [r7, #4]
 8000338:	2300      	movs	r3, #0
 800033a:	60fb      	str	r3, [r7, #12]
 800033c:	2300      	movs	r3, #0
 800033e:	60fb      	str	r3, [r7, #12]
 8000340:	e006      	b.n	8000350 <g2b+0x20>
 8000342:	68fa      	ldr	r2, [r7, #12]
 8000344:	687b      	ldr	r3, [r7, #4]
 8000346:	4053      	eors	r3, r2
 8000348:	60fb      	str	r3, [r7, #12]
 800034a:	687b      	ldr	r3, [r7, #4]
 800034c:	085b      	lsrs	r3, r3, #1
 800034e:	607b      	str	r3, [r7, #4]
 8000350:	687b      	ldr	r3, [r7, #4]
 8000352:	2b00      	cmp	r3, #0
 8000354:	d1f5      	bne.n	8000342 <g2b+0x12>
 8000356:	68fb      	ldr	r3, [r7, #12]
 8000358:	4618      	mov	r0, r3
 800035a:	3714      	adds	r7, #20
 800035c:	46bd      	mov	sp, r7
 800035e:	bc80      	pop	{r7}
 8000360:	4770      	bx	lr
 8000362:	bf00      	nop

08000364 <adc_init>:
 8000364:	b480      	push	{r7}
 8000366:	af00      	add	r7, sp, #0
 8000368:	4a08      	ldr	r2, [pc, #32]	; (800038c <adc_init+0x28>)
 800036a:	4b08      	ldr	r3, [pc, #32]	; (800038c <adc_init+0x28>)
 800036c:	69db      	ldr	r3, [r3, #28]
 800036e:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000372:	61d3      	str	r3, [r2, #28]
 8000374:	4b05      	ldr	r3, [pc, #20]	; (800038c <adc_init+0x28>)
 8000376:	f242 0220 	movw	r2, #8224	; 0x2020
 800037a:	615a      	str	r2, [r3, #20]
 800037c:	4b04      	ldr	r3, [pc, #16]	; (8000390 <adc_init+0x2c>)
 800037e:	2255      	movs	r2, #85	; 0x55
 8000380:	601a      	str	r2, [r3, #0]
 8000382:	bf00      	nop
 8000384:	46bd      	mov	sp, r7
 8000386:	bc80      	pop	{r7}
 8000388:	4770      	bx	lr
 800038a:	bf00      	nop
 800038c:	40020000 	.word	0x40020000
 8000390:	40088000 	.word	0x40088000

08000394 <dac_init>:
 8000394:	b480      	push	{r7}
 8000396:	af00      	add	r7, sp, #0
 8000398:	4a07      	ldr	r2, [pc, #28]	; (80003b8 <dac_init+0x24>)
 800039a:	4b07      	ldr	r3, [pc, #28]	; (80003b8 <dac_init+0x24>)
 800039c:	69db      	ldr	r3, [r3, #28]
 800039e:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 80003a2:	61d3      	str	r3, [r2, #28]
 80003a4:	4a05      	ldr	r2, [pc, #20]	; (80003bc <dac_init+0x28>)
 80003a6:	4b05      	ldr	r3, [pc, #20]	; (80003bc <dac_init+0x28>)
 80003a8:	681b      	ldr	r3, [r3, #0]
 80003aa:	f043 0308 	orr.w	r3, r3, #8
 80003ae:	6013      	str	r3, [r2, #0]
 80003b0:	bf00      	nop
 80003b2:	46bd      	mov	sp, r7
 80003b4:	bc80      	pop	{r7}
 80003b6:	4770      	bx	lr
 80003b8:	40020000 	.word	0x40020000
 80003bc:	40090000 	.word	0x40090000

080003c0 <ClkConfig>:
 80003c0:	b580      	push	{r7, lr}
 80003c2:	af00      	add	r7, sp, #0
 80003c4:	4a17      	ldr	r2, [pc, #92]	; (8000424 <ClkConfig+0x64>)
 80003c6:	4b17      	ldr	r3, [pc, #92]	; (8000424 <ClkConfig+0x64>)
 80003c8:	689b      	ldr	r3, [r3, #8]
 80003ca:	f043 0301 	orr.w	r3, r3, #1
 80003ce:	6093      	str	r3, [r2, #8]
 80003d0:	bf00      	nop
 80003d2:	4b14      	ldr	r3, [pc, #80]	; (8000424 <ClkConfig+0x64>)
 80003d4:	681b      	ldr	r3, [r3, #0]
 80003d6:	f003 0304 	and.w	r3, r3, #4
 80003da:	2b00      	cmp	r3, #0
 80003dc:	d0f9      	beq.n	80003d2 <ClkConfig+0x12>
 80003de:	4b11      	ldr	r3, [pc, #68]	; (8000424 <ClkConfig+0x64>)
 80003e0:	2206      	movs	r2, #6
 80003e2:	60da      	str	r2, [r3, #12]
 80003e4:	4b0f      	ldr	r3, [pc, #60]	; (8000424 <ClkConfig+0x64>)
 80003e6:	f640 1204 	movw	r2, #2308	; 0x904
 80003ea:	605a      	str	r2, [r3, #4]
 80003ec:	bf00      	nop
 80003ee:	4b0d      	ldr	r3, [pc, #52]	; (8000424 <ClkConfig+0x64>)
 80003f0:	681b      	ldr	r3, [r3, #0]
 80003f2:	f003 0302 	and.w	r3, r3, #2
 80003f6:	2b00      	cmp	r3, #0
 80003f8:	d0f9      	beq.n	80003ee <ClkConfig+0x2e>
 80003fa:	4a0a      	ldr	r2, [pc, #40]	; (8000424 <ClkConfig+0x64>)
 80003fc:	4b09      	ldr	r3, [pc, #36]	; (8000424 <ClkConfig+0x64>)
 80003fe:	68db      	ldr	r3, [r3, #12]
 8000400:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8000404:	60d3      	str	r3, [r2, #12]
 8000406:	4a08      	ldr	r2, [pc, #32]	; (8000428 <ClkConfig+0x68>)
 8000408:	4b07      	ldr	r3, [pc, #28]	; (8000428 <ClkConfig+0x68>)
 800040a:	681b      	ldr	r3, [r3, #0]
 800040c:	f043 0320 	orr.w	r3, r3, #32
 8000410:	6013      	str	r3, [r2, #0]
 8000412:	4b06      	ldr	r3, [pc, #24]	; (800042c <ClkConfig+0x6c>)
 8000414:	2200      	movs	r2, #0
 8000416:	601a      	str	r2, [r3, #0]
 8000418:	4805      	ldr	r0, [pc, #20]	; (8000430 <ClkConfig+0x70>)
 800041a:	f7ff fe9b 	bl	8000154 <SysTick_Config>
 800041e:	bf00      	nop
 8000420:	bd80      	pop	{r7, pc}
 8000422:	bf00      	nop
 8000424:	40020000 	.word	0x40020000
 8000428:	40018000 	.word	0x40018000
 800042c:	20000000 	.word	0x20000000
 8000430:	00013880 	.word	0x00013880

08000434 <TimerConfig>:
 8000434:	b580      	push	{r7, lr}
 8000436:	af00      	add	r7, sp, #0
 8000438:	4a15      	ldr	r2, [pc, #84]	; (8000490 <TimerConfig+0x5c>)
 800043a:	4b15      	ldr	r3, [pc, #84]	; (8000490 <TimerConfig+0x5c>)
 800043c:	69db      	ldr	r3, [r3, #28]
 800043e:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8000442:	61d3      	str	r3, [r2, #28]
 8000444:	4a12      	ldr	r2, [pc, #72]	; (8000490 <TimerConfig+0x5c>)
 8000446:	4b12      	ldr	r3, [pc, #72]	; (8000490 <TimerConfig+0x5c>)
 8000448:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800044a:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 800044e:	6253      	str	r3, [r2, #36]	; 0x24
 8000450:	4a0f      	ldr	r2, [pc, #60]	; (8000490 <TimerConfig+0x5c>)
 8000452:	4b0f      	ldr	r3, [pc, #60]	; (8000490 <TimerConfig+0x5c>)
 8000454:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000456:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 800045a:	6253      	str	r3, [r2, #36]	; 0x24
 800045c:	4b0d      	ldr	r3, [pc, #52]	; (8000494 <TimerConfig+0x60>)
 800045e:	2200      	movs	r2, #0
 8000460:	601a      	str	r2, [r3, #0]
 8000462:	4b0c      	ldr	r3, [pc, #48]	; (8000494 <TimerConfig+0x60>)
 8000464:	224f      	movs	r2, #79	; 0x4f
 8000466:	605a      	str	r2, [r3, #4]
 8000468:	4b0a      	ldr	r3, [pc, #40]	; (8000494 <TimerConfig+0x60>)
 800046a:	22c7      	movs	r2, #199	; 0xc7
 800046c:	609a      	str	r2, [r3, #8]
 800046e:	4a09      	ldr	r2, [pc, #36]	; (8000494 <TimerConfig+0x60>)
 8000470:	4b08      	ldr	r3, [pc, #32]	; (8000494 <TimerConfig+0x60>)
 8000472:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000474:	f043 0302 	orr.w	r3, r3, #2
 8000478:	6593      	str	r3, [r2, #88]	; 0x58
 800047a:	4a06      	ldr	r2, [pc, #24]	; (8000494 <TimerConfig+0x60>)
 800047c:	4b05      	ldr	r3, [pc, #20]	; (8000494 <TimerConfig+0x60>)
 800047e:	68db      	ldr	r3, [r3, #12]
 8000480:	f043 0301 	orr.w	r3, r3, #1
 8000484:	60d3      	str	r3, [r2, #12]
 8000486:	200e      	movs	r0, #14
 8000488:	f7ff fe22 	bl	80000d0 <NVIC_EnableIRQ>
 800048c:	bf00      	nop
 800048e:	bd80      	pop	{r7, pc}
 8000490:	40020000 	.word	0x40020000
 8000494:	40070000 	.word	0x40070000

08000498 <main>:
 8000498:	b580      	push	{r7, lr}
 800049a:	b084      	sub	sp, #16
 800049c:	af00      	add	r7, sp, #0
 800049e:	2300      	movs	r3, #0
 80004a0:	60fb      	str	r3, [r7, #12]
 80004a2:	2300      	movs	r3, #0
 80004a4:	60bb      	str	r3, [r7, #8]
 80004a6:	2300      	movs	r3, #0
 80004a8:	607b      	str	r3, [r7, #4]
 80004aa:	f7ff ff89 	bl	80003c0 <ClkConfig>
 80004ae:	f7ff fe8b 	bl	80001c8 <PortConfig>
 80004b2:	f7ff ff0d 	bl	80002d0 <ssi_init>
 80004b6:	f7ff ff6d 	bl	8000394 <dac_init>
 80004ba:	f7ff ff53 	bl	8000364 <adc_init>
 80004be:	f7ff fdff 	bl	80000c0 <__WFI>
 80004c2:	4b12      	ldr	r3, [pc, #72]	; (800050c <main+0x74>)
 80004c4:	68db      	ldr	r3, [r3, #12]
 80004c6:	f003 0308 	and.w	r3, r3, #8
 80004ca:	2b00      	cmp	r3, #0
 80004cc:	d01b      	beq.n	8000506 <main+0x6e>
 80004ce:	4b0f      	ldr	r3, [pc, #60]	; (800050c <main+0x74>)
 80004d0:	689b      	ldr	r3, [r3, #8]
 80004d2:	f3c3 030b 	ubfx	r3, r3, #0, #12
 80004d6:	4618      	mov	r0, r3
 80004d8:	f7ff ff2a 	bl	8000330 <g2b>
 80004dc:	6038      	str	r0, [r7, #0]
 80004de:	683a      	ldr	r2, [r7, #0]
 80004e0:	68fb      	ldr	r3, [r7, #12]
 80004e2:	429a      	cmp	r2, r3
 80004e4:	d904      	bls.n	80004f0 <main+0x58>
 80004e6:	683a      	ldr	r2, [r7, #0]
 80004e8:	68fb      	ldr	r3, [r7, #12]
 80004ea:	1ad3      	subs	r3, r2, r3
 80004ec:	60bb      	str	r3, [r7, #8]
 80004ee:	e005      	b.n	80004fc <main+0x64>
 80004f0:	683a      	ldr	r2, [r7, #0]
 80004f2:	68fb      	ldr	r3, [r7, #12]
 80004f4:	1ad3      	subs	r3, r2, r3
 80004f6:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
 80004fa:	60bb      	str	r3, [r7, #8]
 80004fc:	683b      	ldr	r3, [r7, #0]
 80004fe:	60fb      	str	r3, [r7, #12]
 8000500:	4a03      	ldr	r2, [pc, #12]	; (8000510 <main+0x78>)
 8000502:	683b      	ldr	r3, [r7, #0]
 8000504:	6093      	str	r3, [r2, #8]
 8000506:	4b03      	ldr	r3, [pc, #12]	; (8000514 <main+0x7c>)
 8000508:	6a1b      	ldr	r3, [r3, #32]
 800050a:	e7d8      	b.n	80004be <main+0x26>
 800050c:	40040000 	.word	0x40040000
 8000510:	40090000 	.word	0x40090000
 8000514:	40088000 	.word	0x40088000

08000518 <EXT_INT4_IRQHandler>:
 8000518:	b480      	push	{r7}
 800051a:	af00      	add	r7, sp, #0
 800051c:	4a04      	ldr	r2, [pc, #16]	; (8000530 <EXT_INT4_IRQHandler+0x18>)
 800051e:	4b04      	ldr	r3, [pc, #16]	; (8000530 <EXT_INT4_IRQHandler+0x18>)
 8000520:	681b      	ldr	r3, [r3, #0]
 8000522:	f083 0301 	eor.w	r3, r3, #1
 8000526:	6013      	str	r3, [r2, #0]
 8000528:	bf00      	nop
 800052a:	46bd      	mov	sp, r7
 800052c:	bc80      	pop	{r7}
 800052e:	4770      	bx	lr
 8000530:	400a8000 	.word	0x400a8000

08000534 <SysTick_Handler>:
 8000534:	b480      	push	{r7}
 8000536:	af00      	add	r7, sp, #0
 8000538:	4b04      	ldr	r3, [pc, #16]	; (800054c <SysTick_Handler+0x18>)
 800053a:	681b      	ldr	r3, [r3, #0]
 800053c:	3301      	adds	r3, #1
 800053e:	4a03      	ldr	r2, [pc, #12]	; (800054c <SysTick_Handler+0x18>)
 8000540:	6013      	str	r3, [r2, #0]
 8000542:	bf00      	nop
 8000544:	46bd      	mov	sp, r7
 8000546:	bc80      	pop	{r7}
 8000548:	4770      	bx	lr
 800054a:	bf00      	nop
 800054c:	20000000 	.word	0x20000000

08000550 <Timer1_IRQHandler>:
 8000550:	b480      	push	{r7}
 8000552:	af00      	add	r7, sp, #0
 8000554:	4b08      	ldr	r3, [pc, #32]	; (8000578 <Timer1_IRQHandler+0x28>)
 8000556:	2200      	movs	r2, #0
 8000558:	655a      	str	r2, [r3, #84]	; 0x54
 800055a:	4b08      	ldr	r3, [pc, #32]	; (800057c <Timer1_IRQHandler+0x2c>)
 800055c:	f240 5255 	movw	r2, #1365	; 0x555
 8000560:	609a      	str	r2, [r3, #8]
 8000562:	4a07      	ldr	r2, [pc, #28]	; (8000580 <Timer1_IRQHandler+0x30>)
 8000564:	4b06      	ldr	r3, [pc, #24]	; (8000580 <Timer1_IRQHandler+0x30>)
 8000566:	681b      	ldr	r3, [r3, #0]
 8000568:	f043 0302 	orr.w	r3, r3, #2
 800056c:	6013      	str	r3, [r2, #0]
 800056e:	bf00      	nop
 8000570:	46bd      	mov	sp, r7
 8000572:	bc80      	pop	{r7}
 8000574:	4770      	bx	lr
 8000576:	bf00      	nop
 8000578:	40070000 	.word	0x40070000
 800057c:	40040000 	.word	0x40040000
 8000580:	40088000 	.word	0x40088000

08000584 <handler_reset>:
 8000584:	b580      	push	{r7, lr}
 8000586:	b082      	sub	sp, #8
 8000588:	af00      	add	r7, sp, #0
 800058a:	4b11      	ldr	r3, [pc, #68]	; (80005d0 <handler_reset+0x4c>)
 800058c:	607b      	str	r3, [r7, #4]
 800058e:	4b11      	ldr	r3, [pc, #68]	; (80005d4 <handler_reset+0x50>)
 8000590:	603b      	str	r3, [r7, #0]
 8000592:	e007      	b.n	80005a4 <handler_reset+0x20>
 8000594:	683b      	ldr	r3, [r7, #0]
 8000596:	1d1a      	adds	r2, r3, #4
 8000598:	603a      	str	r2, [r7, #0]
 800059a:	687a      	ldr	r2, [r7, #4]
 800059c:	1d11      	adds	r1, r2, #4
 800059e:	6079      	str	r1, [r7, #4]
 80005a0:	6812      	ldr	r2, [r2, #0]
 80005a2:	601a      	str	r2, [r3, #0]
 80005a4:	683b      	ldr	r3, [r7, #0]
 80005a6:	4a0c      	ldr	r2, [pc, #48]	; (80005d8 <handler_reset+0x54>)
 80005a8:	4293      	cmp	r3, r2
 80005aa:	d3f3      	bcc.n	8000594 <handler_reset+0x10>
 80005ac:	4b0b      	ldr	r3, [pc, #44]	; (80005dc <handler_reset+0x58>)
 80005ae:	603b      	str	r3, [r7, #0]
 80005b0:	e004      	b.n	80005bc <handler_reset+0x38>
 80005b2:	683b      	ldr	r3, [r7, #0]
 80005b4:	1d1a      	adds	r2, r3, #4
 80005b6:	603a      	str	r2, [r7, #0]
 80005b8:	2200      	movs	r2, #0
 80005ba:	601a      	str	r2, [r3, #0]
 80005bc:	683b      	ldr	r3, [r7, #0]
 80005be:	4a08      	ldr	r2, [pc, #32]	; (80005e0 <handler_reset+0x5c>)
 80005c0:	4293      	cmp	r3, r2
 80005c2:	d3f6      	bcc.n	80005b2 <handler_reset+0x2e>
 80005c4:	f7ff ff68 	bl	8000498 <main>
 80005c8:	bf00      	nop
 80005ca:	3708      	adds	r7, #8
 80005cc:	46bd      	mov	sp, r7
 80005ce:	bd80      	pop	{r7, pc}
 80005d0:	080005ec 	.word	0x080005ec
 80005d4:	20000000 	.word	0x20000000
 80005d8:	20000000 	.word	0x20000000
 80005dc:	20000000 	.word	0x20000000
 80005e0:	20000004 	.word	0x20000004

080005e4 <default_handler>:
 80005e4:	b480      	push	{r7}
 80005e6:	af00      	add	r7, sp, #0
 80005e8:	e7fe      	b.n	80005e8 <default_handler+0x4>
 80005ea:	bf00      	nop
