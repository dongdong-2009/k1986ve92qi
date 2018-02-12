
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 dd 03 00 08 3d 04 00 08 3d 04 00 08     ... ....=...=...
 8000010:	3d 04 00 08 3d 04 00 08 3d 04 00 08 00 00 00 00     =...=...=.......
	...
 800002c:	3d 04 00 08 3d 04 00 08 00 00 00 00 3d 04 00 08     =...=.......=...
 800003c:	b9 01 00 08 3d 04 00 08 3d 04 00 08 3d 04 00 08     ....=...=...=...
	...
 8000054:	3d 04 00 08 3d 04 00 08 3d 04 00 08 3d 04 00 08     =...=...=...=...
 8000064:	00 00 00 00 3d 04 00 08 3d 04 00 08 3d 04 00 08     ....=...=...=...
 8000074:	00 00 00 00 3d 04 00 08 3d 04 00 08 3d 04 00 08     ....=...=...=...
 8000084:	3d 04 00 08 00 00 00 00 3d 04 00 08 3d 04 00 08     =.......=...=...
	...
 80000ac:	3d 04 00 08 3d 04 00 08 3d 04 00 08 3d 04 00 08     =...=...=...=...
 80000bc:	3d 04 00 08                                         =...

080000c0 <sleep>:
 80000c0:	b480      	push	{r7}
 80000c2:	b085      	sub	sp, #20
 80000c4:	af00      	add	r7, sp, #0
 80000c6:	6078      	str	r0, [r7, #4]
 80000c8:	4b08      	ldr	r3, [pc, #32]	; (80000ec <sleep+0x2c>)
 80000ca:	681a      	ldr	r2, [r3, #0]
 80000cc:	687b      	ldr	r3, [r7, #4]
 80000ce:	4413      	add	r3, r2
 80000d0:	60fb      	str	r3, [r7, #12]
 80000d2:	bf00      	nop
 80000d4:	4b05      	ldr	r3, [pc, #20]	; (80000ec <sleep+0x2c>)
 80000d6:	681a      	ldr	r2, [r3, #0]
 80000d8:	68fb      	ldr	r3, [r7, #12]
 80000da:	429a      	cmp	r2, r3
 80000dc:	d3fa      	bcc.n	80000d4 <sleep+0x14>
 80000de:	bf00      	nop
 80000e0:	4618      	mov	r0, r3
 80000e2:	3714      	adds	r7, #20
 80000e4:	46bd      	mov	sp, r7
 80000e6:	bc80      	pop	{r7}
 80000e8:	4770      	bx	lr
 80000ea:	bf00      	nop
 80000ec:	20000000 	.word	0x20000000

080000f0 <PortConfig>:
 80000f0:	b480      	push	{r7}
 80000f2:	af00      	add	r7, sp, #0
 80000f4:	4a13      	ldr	r2, [pc, #76]	; (8000144 <PortConfig+0x54>)
 80000f6:	4b13      	ldr	r3, [pc, #76]	; (8000144 <PortConfig+0x54>)
 80000f8:	69db      	ldr	r3, [r3, #28]
 80000fa:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 80000fe:	61d3      	str	r3, [r2, #28]
 8000100:	4a11      	ldr	r2, [pc, #68]	; (8000148 <PortConfig+0x58>)
 8000102:	4b11      	ldr	r3, [pc, #68]	; (8000148 <PortConfig+0x58>)
 8000104:	689b      	ldr	r3, [r3, #8]
 8000106:	f023 030f 	bic.w	r3, r3, #15
 800010a:	6093      	str	r3, [r2, #8]
 800010c:	4a0e      	ldr	r2, [pc, #56]	; (8000148 <PortConfig+0x58>)
 800010e:	4b0e      	ldr	r3, [pc, #56]	; (8000148 <PortConfig+0x58>)
 8000110:	689b      	ldr	r3, [r3, #8]
 8000112:	f043 030f 	orr.w	r3, r3, #15
 8000116:	6093      	str	r3, [r2, #8]
 8000118:	4a0b      	ldr	r2, [pc, #44]	; (8000148 <PortConfig+0x58>)
 800011a:	4b0b      	ldr	r3, [pc, #44]	; (8000148 <PortConfig+0x58>)
 800011c:	68db      	ldr	r3, [r3, #12]
 800011e:	f043 0303 	orr.w	r3, r3, #3
 8000122:	60d3      	str	r3, [r2, #12]
 8000124:	4a08      	ldr	r2, [pc, #32]	; (8000148 <PortConfig+0x58>)
 8000126:	4b08      	ldr	r3, [pc, #32]	; (8000148 <PortConfig+0x58>)
 8000128:	699b      	ldr	r3, [r3, #24]
 800012a:	f043 030f 	orr.w	r3, r3, #15
 800012e:	6193      	str	r3, [r2, #24]
 8000130:	4a05      	ldr	r2, [pc, #20]	; (8000148 <PortConfig+0x58>)
 8000132:	4b05      	ldr	r3, [pc, #20]	; (8000148 <PortConfig+0x58>)
 8000134:	685b      	ldr	r3, [r3, #4]
 8000136:	f043 0302 	orr.w	r3, r3, #2
 800013a:	6053      	str	r3, [r2, #4]
 800013c:	bf00      	nop
 800013e:	46bd      	mov	sp, r7
 8000140:	bc80      	pop	{r7}
 8000142:	4770      	bx	lr
 8000144:	40020000 	.word	0x40020000
 8000148:	400e8000 	.word	0x400e8000

0800014c <ClkConfig>:
 800014c:	b480      	push	{r7}
 800014e:	af00      	add	r7, sp, #0
 8000150:	4a16      	ldr	r2, [pc, #88]	; (80001ac <ClkConfig+0x60>)
 8000152:	4b16      	ldr	r3, [pc, #88]	; (80001ac <ClkConfig+0x60>)
 8000154:	689b      	ldr	r3, [r3, #8]
 8000156:	f043 0301 	orr.w	r3, r3, #1
 800015a:	6093      	str	r3, [r2, #8]
 800015c:	bf00      	nop
 800015e:	4b13      	ldr	r3, [pc, #76]	; (80001ac <ClkConfig+0x60>)
 8000160:	681b      	ldr	r3, [r3, #0]
 8000162:	f003 0304 	and.w	r3, r3, #4
 8000166:	2b00      	cmp	r3, #0
 8000168:	d0f9      	beq.n	800015e <ClkConfig+0x12>
 800016a:	4b10      	ldr	r3, [pc, #64]	; (80001ac <ClkConfig+0x60>)
 800016c:	2206      	movs	r2, #6
 800016e:	60da      	str	r2, [r3, #12]
 8000170:	4b0e      	ldr	r3, [pc, #56]	; (80001ac <ClkConfig+0x60>)
 8000172:	f640 1204 	movw	r2, #2308	; 0x904
 8000176:	605a      	str	r2, [r3, #4]
 8000178:	bf00      	nop
 800017a:	4b0c      	ldr	r3, [pc, #48]	; (80001ac <ClkConfig+0x60>)
 800017c:	681b      	ldr	r3, [r3, #0]
 800017e:	f003 0302 	and.w	r3, r3, #2
 8000182:	2b00      	cmp	r3, #0
 8000184:	d0f9      	beq.n	800017a <ClkConfig+0x2e>
 8000186:	4a09      	ldr	r2, [pc, #36]	; (80001ac <ClkConfig+0x60>)
 8000188:	4b08      	ldr	r3, [pc, #32]	; (80001ac <ClkConfig+0x60>)
 800018a:	68db      	ldr	r3, [r3, #12]
 800018c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8000190:	60d3      	str	r3, [r2, #12]
 8000192:	4a07      	ldr	r2, [pc, #28]	; (80001b0 <ClkConfig+0x64>)
 8000194:	4b06      	ldr	r3, [pc, #24]	; (80001b0 <ClkConfig+0x64>)
 8000196:	681b      	ldr	r3, [r3, #0]
 8000198:	f043 0320 	orr.w	r3, r3, #32
 800019c:	6013      	str	r3, [r2, #0]
 800019e:	4b05      	ldr	r3, [pc, #20]	; (80001b4 <ClkConfig+0x68>)
 80001a0:	2200      	movs	r2, #0
 80001a2:	601a      	str	r2, [r3, #0]
 80001a4:	bf00      	nop
 80001a6:	46bd      	mov	sp, r7
 80001a8:	bc80      	pop	{r7}
 80001aa:	4770      	bx	lr
 80001ac:	40020000 	.word	0x40020000
 80001b0:	40018000 	.word	0x40018000
 80001b4:	20000000 	.word	0x20000000

080001b8 <SysTick_Handler>:
 80001b8:	b480      	push	{r7}
 80001ba:	af00      	add	r7, sp, #0
 80001bc:	4b04      	ldr	r3, [pc, #16]	; (80001d0 <SysTick_Handler+0x18>)
 80001be:	681b      	ldr	r3, [r3, #0]
 80001c0:	3301      	adds	r3, #1
 80001c2:	4a03      	ldr	r2, [pc, #12]	; (80001d0 <SysTick_Handler+0x18>)
 80001c4:	6013      	str	r3, [r2, #0]
 80001c6:	bf00      	nop
 80001c8:	46bd      	mov	sp, r7
 80001ca:	bc80      	pop	{r7}
 80001cc:	4770      	bx	lr
 80001ce:	bf00      	nop
 80001d0:	20000000 	.word	0x20000000

080001d4 <TimerConfig>:
 80001d4:	b480      	push	{r7}
 80001d6:	af00      	add	r7, sp, #0
 80001d8:	4a15      	ldr	r2, [pc, #84]	; (8000230 <TimerConfig+0x5c>)
 80001da:	4b15      	ldr	r3, [pc, #84]	; (8000230 <TimerConfig+0x5c>)
 80001dc:	69db      	ldr	r3, [r3, #28]
 80001de:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 80001e2:	61d3      	str	r3, [r2, #28]
 80001e4:	4a12      	ldr	r2, [pc, #72]	; (8000230 <TimerConfig+0x5c>)
 80001e6:	4b12      	ldr	r3, [pc, #72]	; (8000230 <TimerConfig+0x5c>)
 80001e8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80001ea:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80001ee:	6253      	str	r3, [r2, #36]	; 0x24
 80001f0:	4a0f      	ldr	r2, [pc, #60]	; (8000230 <TimerConfig+0x5c>)
 80001f2:	4b0f      	ldr	r3, [pc, #60]	; (8000230 <TimerConfig+0x5c>)
 80001f4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80001f6:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 80001fa:	6253      	str	r3, [r2, #36]	; 0x24
 80001fc:	4b0d      	ldr	r3, [pc, #52]	; (8000234 <TimerConfig+0x60>)
 80001fe:	2200      	movs	r2, #0
 8000200:	601a      	str	r2, [r3, #0]
 8000202:	4b0c      	ldr	r3, [pc, #48]	; (8000234 <TimerConfig+0x60>)
 8000204:	224f      	movs	r2, #79	; 0x4f
 8000206:	605a      	str	r2, [r3, #4]
 8000208:	4b0a      	ldr	r3, [pc, #40]	; (8000234 <TimerConfig+0x60>)
 800020a:	22c7      	movs	r2, #199	; 0xc7
 800020c:	609a      	str	r2, [r3, #8]
 800020e:	4a09      	ldr	r2, [pc, #36]	; (8000234 <TimerConfig+0x60>)
 8000210:	4b08      	ldr	r3, [pc, #32]	; (8000234 <TimerConfig+0x60>)
 8000212:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000214:	f043 0302 	orr.w	r3, r3, #2
 8000218:	6593      	str	r3, [r2, #88]	; 0x58
 800021a:	4a06      	ldr	r2, [pc, #24]	; (8000234 <TimerConfig+0x60>)
 800021c:	4b05      	ldr	r3, [pc, #20]	; (8000234 <TimerConfig+0x60>)
 800021e:	68db      	ldr	r3, [r3, #12]
 8000220:	f043 0301 	orr.w	r3, r3, #1
 8000224:	60d3      	str	r3, [r2, #12]
 8000226:	bf00      	nop
 8000228:	46bd      	mov	sp, r7
 800022a:	bc80      	pop	{r7}
 800022c:	4770      	bx	lr
 800022e:	bf00      	nop
 8000230:	40020000 	.word	0x40020000
 8000234:	40070000 	.word	0x40070000

08000238 <TIMER1_Handler>:
 8000238:	b480      	push	{r7}
 800023a:	af00      	add	r7, sp, #0
 800023c:	4b08      	ldr	r3, [pc, #32]	; (8000260 <TIMER1_Handler+0x28>)
 800023e:	2200      	movs	r2, #0
 8000240:	655a      	str	r2, [r3, #84]	; 0x54
 8000242:	4b08      	ldr	r3, [pc, #32]	; (8000264 <TIMER1_Handler+0x2c>)
 8000244:	f240 5255 	movw	r2, #1365	; 0x555
 8000248:	609a      	str	r2, [r3, #8]
 800024a:	4a07      	ldr	r2, [pc, #28]	; (8000268 <TIMER1_Handler+0x30>)
 800024c:	4b06      	ldr	r3, [pc, #24]	; (8000268 <TIMER1_Handler+0x30>)
 800024e:	681b      	ldr	r3, [r3, #0]
 8000250:	f043 0302 	orr.w	r3, r3, #2
 8000254:	6013      	str	r3, [r2, #0]
 8000256:	bf00      	nop
 8000258:	46bd      	mov	sp, r7
 800025a:	bc80      	pop	{r7}
 800025c:	4770      	bx	lr
 800025e:	bf00      	nop
 8000260:	40070000 	.word	0x40070000
 8000264:	40040000 	.word	0x40040000
 8000268:	40088000 	.word	0x40088000

0800026c <EXTINT4_Handler>:
 800026c:	b480      	push	{r7}
 800026e:	af00      	add	r7, sp, #0
 8000270:	4a04      	ldr	r2, [pc, #16]	; (8000284 <EXTINT4_Handler+0x18>)
 8000272:	4b04      	ldr	r3, [pc, #16]	; (8000284 <EXTINT4_Handler+0x18>)
 8000274:	681b      	ldr	r3, [r3, #0]
 8000276:	f043 0301 	orr.w	r3, r3, #1
 800027a:	6013      	str	r3, [r2, #0]
 800027c:	bf00      	nop
 800027e:	46bd      	mov	sp, r7
 8000280:	bc80      	pop	{r7}
 8000282:	4770      	bx	lr
 8000284:	400a8000 	.word	0x400a8000

08000288 <uart_init>:
 8000288:	b480      	push	{r7}
 800028a:	af00      	add	r7, sp, #0
 800028c:	4a1d      	ldr	r2, [pc, #116]	; (8000304 <uart_init+0x7c>)
 800028e:	4b1d      	ldr	r3, [pc, #116]	; (8000304 <uart_init+0x7c>)
 8000290:	69db      	ldr	r3, [r3, #28]
 8000292:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000296:	61d3      	str	r3, [r2, #28]
 8000298:	4a1a      	ldr	r2, [pc, #104]	; (8000304 <uart_init+0x7c>)
 800029a:	4b1a      	ldr	r3, [pc, #104]	; (8000304 <uart_init+0x7c>)
 800029c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800029e:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 80002a2:	6293      	str	r3, [r2, #40]	; 0x28
 80002a4:	4b18      	ldr	r3, [pc, #96]	; (8000308 <uart_init+0x80>)
 80002a6:	222b      	movs	r2, #43	; 0x2b
 80002a8:	625a      	str	r2, [r3, #36]	; 0x24
 80002aa:	4b17      	ldr	r3, [pc, #92]	; (8000308 <uart_init+0x80>)
 80002ac:	221a      	movs	r2, #26
 80002ae:	629a      	str	r2, [r3, #40]	; 0x28
 80002b0:	4a15      	ldr	r2, [pc, #84]	; (8000308 <uart_init+0x80>)
 80002b2:	4b15      	ldr	r3, [pc, #84]	; (8000308 <uart_init+0x80>)
 80002b4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80002b6:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 80002ba:	6353      	str	r3, [r2, #52]	; 0x34
 80002bc:	4a12      	ldr	r2, [pc, #72]	; (8000308 <uart_init+0x80>)
 80002be:	4b12      	ldr	r3, [pc, #72]	; (8000308 <uart_init+0x80>)
 80002c0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80002c2:	f043 0312 	orr.w	r3, r3, #18
 80002c6:	6353      	str	r3, [r2, #52]	; 0x34
 80002c8:	4a0f      	ldr	r2, [pc, #60]	; (8000308 <uart_init+0x80>)
 80002ca:	4b0f      	ldr	r3, [pc, #60]	; (8000308 <uart_init+0x80>)
 80002cc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80002ce:	f043 0310 	orr.w	r3, r3, #16
 80002d2:	62d3      	str	r3, [r2, #44]	; 0x2c
 80002d4:	4a0c      	ldr	r2, [pc, #48]	; (8000308 <uart_init+0x80>)
 80002d6:	4b0c      	ldr	r3, [pc, #48]	; (8000308 <uart_init+0x80>)
 80002d8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80002da:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 80002de:	62d3      	str	r3, [r2, #44]	; 0x2c
 80002e0:	4a09      	ldr	r2, [pc, #36]	; (8000308 <uart_init+0x80>)
 80002e2:	4b09      	ldr	r3, [pc, #36]	; (8000308 <uart_init+0x80>)
 80002e4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80002e6:	f443 7340 	orr.w	r3, r3, #768	; 0x300
 80002ea:	f043 0301 	orr.w	r3, r3, #1
 80002ee:	6313      	str	r3, [r2, #48]	; 0x30
 80002f0:	4a05      	ldr	r2, [pc, #20]	; (8000308 <uart_init+0x80>)
 80002f2:	4b05      	ldr	r3, [pc, #20]	; (8000308 <uart_init+0x80>)
 80002f4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80002f6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80002fa:	6393      	str	r3, [r2, #56]	; 0x38
 80002fc:	bf00      	nop
 80002fe:	46bd      	mov	sp, r7
 8000300:	bc80      	pop	{r7}
 8000302:	4770      	bx	lr
 8000304:	40020000 	.word	0x40020000
 8000308:	40038000 	.word	0x40038000

0800030c <main>:
 800030c:	b590      	push	{r4, r7, lr}
 800030e:	b091      	sub	sp, #68	; 0x44
 8000310:	af00      	add	r7, sp, #0
 8000312:	2300      	movs	r3, #0
 8000314:	637b      	str	r3, [r7, #52]	; 0x34
 8000316:	2300      	movs	r3, #0
 8000318:	633b      	str	r3, [r7, #48]	; 0x30
 800031a:	2300      	movs	r3, #0
 800031c:	63fb      	str	r3, [r7, #60]	; 0x3c
 800031e:	4b1f      	ldr	r3, [pc, #124]	; (800039c <main+0x90>)
 8000320:	463c      	mov	r4, r7
 8000322:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
 8000324:	c407      	stmia	r4!, {r0, r1, r2}
 8000326:	8023      	strh	r3, [r4, #0]
 8000328:	f7ff ff10 	bl	800014c <ClkConfig>
 800032c:	f7ff fee0 	bl	80000f0 <PortConfig>
 8000330:	f7ff ff50 	bl	80001d4 <TimerConfig>
 8000334:	f7ff ffa8 	bl	8000288 <uart_init>
 8000338:	bf00      	nop
 800033a:	4b19      	ldr	r3, [pc, #100]	; (80003a0 <main+0x94>)
 800033c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800033e:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000342:	2b00      	cmp	r3, #0
 8000344:	d0f9      	beq.n	800033a <main+0x2e>
 8000346:	2300      	movs	r3, #0
 8000348:	63fb      	str	r3, [r7, #60]	; 0x3c
 800034a:	e00d      	b.n	8000368 <main+0x5c>
 800034c:	4b14      	ldr	r3, [pc, #80]	; (80003a0 <main+0x94>)
 800034e:	681b      	ldr	r3, [r3, #0]
 8000350:	b259      	sxtb	r1, r3
 8000352:	f107 0210 	add.w	r2, r7, #16
 8000356:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8000358:	4413      	add	r3, r2
 800035a:	460a      	mov	r2, r1
 800035c:	701a      	strb	r2, [r3, #0]
 800035e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8000360:	3301      	adds	r3, #1
 8000362:	f003 0307 	and.w	r3, r3, #7
 8000366:	63fb      	str	r3, [r7, #60]	; 0x3c
 8000368:	4b0d      	ldr	r3, [pc, #52]	; (80003a0 <main+0x94>)
 800036a:	699b      	ldr	r3, [r3, #24]
 800036c:	f003 0310 	and.w	r3, r3, #16
 8000370:	2b00      	cmp	r3, #0
 8000372:	d0eb      	beq.n	800034c <main+0x40>
 8000374:	f997 3010 	ldrsb.w	r3, [r7, #16]
 8000378:	2b71      	cmp	r3, #113	; 0x71
 800037a:	d1dd      	bne.n	8000338 <main+0x2c>
 800037c:	463b      	mov	r3, r7
 800037e:	63bb      	str	r3, [r7, #56]	; 0x38
 8000380:	e006      	b.n	8000390 <main+0x84>
 8000382:	4907      	ldr	r1, [pc, #28]	; (80003a0 <main+0x94>)
 8000384:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8000386:	1c5a      	adds	r2, r3, #1
 8000388:	63ba      	str	r2, [r7, #56]	; 0x38
 800038a:	f993 3000 	ldrsb.w	r3, [r3]
 800038e:	600b      	str	r3, [r1, #0]
 8000390:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8000392:	f993 3000 	ldrsb.w	r3, [r3]
 8000396:	2b00      	cmp	r3, #0
 8000398:	d1f3      	bne.n	8000382 <main+0x76>
 800039a:	e7cd      	b.n	8000338 <main+0x2c>
 800039c:	08000444 	.word	0x08000444
 80003a0:	40038000 	.word	0x40038000

080003a4 <UART2_Handler>:
 80003a4:	b480      	push	{r7}
 80003a6:	af00      	add	r7, sp, #0
 80003a8:	4b0a      	ldr	r3, [pc, #40]	; (80003d4 <UART2_Handler+0x30>)
 80003aa:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80003ac:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80003b0:	2b00      	cmp	r3, #0
 80003b2:	d00b      	beq.n	80003cc <UART2_Handler+0x28>
 80003b4:	e004      	b.n	80003c0 <UART2_Handler+0x1c>
 80003b6:	4b07      	ldr	r3, [pc, #28]	; (80003d4 <UART2_Handler+0x30>)
 80003b8:	681b      	ldr	r3, [r3, #0]
 80003ba:	461a      	mov	r2, r3
 80003bc:	4b06      	ldr	r3, [pc, #24]	; (80003d8 <UART2_Handler+0x34>)
 80003be:	601a      	str	r2, [r3, #0]
 80003c0:	4b04      	ldr	r3, [pc, #16]	; (80003d4 <UART2_Handler+0x30>)
 80003c2:	699b      	ldr	r3, [r3, #24]
 80003c4:	f003 0310 	and.w	r3, r3, #16
 80003c8:	2b00      	cmp	r3, #0
 80003ca:	d0f4      	beq.n	80003b6 <UART2_Handler+0x12>
 80003cc:	bf00      	nop
 80003ce:	46bd      	mov	sp, r7
 80003d0:	bc80      	pop	{r7}
 80003d2:	4770      	bx	lr
 80003d4:	40038000 	.word	0x40038000
 80003d8:	20000004 	.word	0x20000004

080003dc <handler_reset>:
 80003dc:	b580      	push	{r7, lr}
 80003de:	b082      	sub	sp, #8
 80003e0:	af00      	add	r7, sp, #0
 80003e2:	4b11      	ldr	r3, [pc, #68]	; (8000428 <handler_reset+0x4c>)
 80003e4:	607b      	str	r3, [r7, #4]
 80003e6:	4b11      	ldr	r3, [pc, #68]	; (800042c <handler_reset+0x50>)
 80003e8:	603b      	str	r3, [r7, #0]
 80003ea:	e007      	b.n	80003fc <handler_reset+0x20>
 80003ec:	683b      	ldr	r3, [r7, #0]
 80003ee:	1d1a      	adds	r2, r3, #4
 80003f0:	603a      	str	r2, [r7, #0]
 80003f2:	687a      	ldr	r2, [r7, #4]
 80003f4:	1d11      	adds	r1, r2, #4
 80003f6:	6079      	str	r1, [r7, #4]
 80003f8:	6812      	ldr	r2, [r2, #0]
 80003fa:	601a      	str	r2, [r3, #0]
 80003fc:	683b      	ldr	r3, [r7, #0]
 80003fe:	4a0c      	ldr	r2, [pc, #48]	; (8000430 <handler_reset+0x54>)
 8000400:	4293      	cmp	r3, r2
 8000402:	d3f3      	bcc.n	80003ec <handler_reset+0x10>
 8000404:	4b0b      	ldr	r3, [pc, #44]	; (8000434 <handler_reset+0x58>)
 8000406:	603b      	str	r3, [r7, #0]
 8000408:	e004      	b.n	8000414 <handler_reset+0x38>
 800040a:	683b      	ldr	r3, [r7, #0]
 800040c:	1d1a      	adds	r2, r3, #4
 800040e:	603a      	str	r2, [r7, #0]
 8000410:	2200      	movs	r2, #0
 8000412:	601a      	str	r2, [r3, #0]
 8000414:	683b      	ldr	r3, [r7, #0]
 8000416:	4a08      	ldr	r2, [pc, #32]	; (8000438 <handler_reset+0x5c>)
 8000418:	4293      	cmp	r3, r2
 800041a:	d3f6      	bcc.n	800040a <handler_reset+0x2e>
 800041c:	f7ff ff76 	bl	800030c <main>
 8000420:	bf00      	nop
 8000422:	3708      	adds	r7, #8
 8000424:	46bd      	mov	sp, r7
 8000426:	bd80      	pop	{r7, pc}
 8000428:	08000454 	.word	0x08000454
 800042c:	20000000 	.word	0x20000000
 8000430:	20000000 	.word	0x20000000
 8000434:	20000000 	.word	0x20000000
 8000438:	20000008 	.word	0x20000008

0800043c <default_handler>:
 800043c:	b480      	push	{r7}
 800043e:	af00      	add	r7, sp, #0
 8000440:	e7fe      	b.n	8000440 <default_handler+0x4>
 8000442:	bf00      	nop
 8000444:	6c6c6568 	.word	0x6c6c6568
 8000448:	6f77206f 	.word	0x6f77206f
 800044c:	0d646c72 	.word	0x0d646c72
 8000450:	0000000a 	.word	0x0000000a
