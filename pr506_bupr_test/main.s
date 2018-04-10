
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 f5 16 00 08 55 17 00 08 55 17 00 08     ... ....U...U...
 8000010:	55 17 00 08 55 17 00 08 55 17 00 08 00 00 00 00     U...U...U.......
	...
 800002c:	55 17 00 08 55 17 00 08 00 00 00 00 55 17 00 08     U...U.......U...
 800003c:	55 16 00 08 55 17 00 08 55 17 00 08 55 17 00 08     U...U...U...U...
	...
 8000054:	55 17 00 08 71 16 00 08 55 17 00 08 55 17 00 08     U...q...U...U...
 8000064:	00 00 00 00 55 17 00 08 55 17 00 08 55 17 00 08     ....U...U...U...
 8000074:	00 00 00 00 3d 02 00 08 55 17 00 08 55 02 00 08     ....=...U...U...
 8000084:	55 17 00 08 00 00 00 00 55 17 00 08 55 17 00 08     U.......U...U...
	...
 80000ac:	55 17 00 08 55 17 00 08 55 17 00 08 55 17 00 08     U...U...U...U...
 80000bc:	55 17 00 08                                         U...

080000c0 <brake_on>:
 80000c0:	b480      	push	{r7}
 80000c2:	af00      	add	r7, sp, #0
 80000c4:	4a04      	ldr	r2, [pc, #16]	; (80000d8 <brake_on+0x18>)
 80000c6:	4b04      	ldr	r3, [pc, #16]	; (80000d8 <brake_on+0x18>)
 80000c8:	681b      	ldr	r3, [r3, #0]
 80000ca:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 80000ce:	6013      	str	r3, [r2, #0]
 80000d0:	bf00      	nop
 80000d2:	46bd      	mov	sp, r7
 80000d4:	bc80      	pop	{r7}
 80000d6:	4770      	bx	lr
 80000d8:	400e8000 	.word	0x400e8000

080000dc <brake_off>:
 80000dc:	b480      	push	{r7}
 80000de:	af00      	add	r7, sp, #0
 80000e0:	4a04      	ldr	r2, [pc, #16]	; (80000f4 <brake_off+0x18>)
 80000e2:	4b04      	ldr	r3, [pc, #16]	; (80000f4 <brake_off+0x18>)
 80000e4:	681b      	ldr	r3, [r3, #0]
 80000e6:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80000ea:	6013      	str	r3, [r2, #0]
 80000ec:	bf00      	nop
 80000ee:	46bd      	mov	sp, r7
 80000f0:	bc80      	pop	{r7}
 80000f2:	4770      	bx	lr
 80000f4:	400e8000 	.word	0x400e8000

080000f8 <motor_off>:
 80000f8:	b480      	push	{r7}
 80000fa:	af00      	add	r7, sp, #0
 80000fc:	4a04      	ldr	r2, [pc, #16]	; (8000110 <motor_off+0x18>)
 80000fe:	4b04      	ldr	r3, [pc, #16]	; (8000110 <motor_off+0x18>)
 8000100:	681b      	ldr	r3, [r3, #0]
 8000102:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000106:	6013      	str	r3, [r2, #0]
 8000108:	bf00      	nop
 800010a:	46bd      	mov	sp, r7
 800010c:	bc80      	pop	{r7}
 800010e:	4770      	bx	lr
 8000110:	400e8000 	.word	0x400e8000

08000114 <motor_on>:
 8000114:	b480      	push	{r7}
 8000116:	af00      	add	r7, sp, #0
 8000118:	4a04      	ldr	r2, [pc, #16]	; (800012c <motor_on+0x18>)
 800011a:	4b04      	ldr	r3, [pc, #16]	; (800012c <motor_on+0x18>)
 800011c:	681b      	ldr	r3, [r3, #0]
 800011e:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8000122:	6013      	str	r3, [r2, #0]
 8000124:	bf00      	nop
 8000126:	46bd      	mov	sp, r7
 8000128:	bc80      	pop	{r7}
 800012a:	4770      	bx	lr
 800012c:	400e8000 	.word	0x400e8000

08000130 <sleep>:
 8000130:	b480      	push	{r7}
 8000132:	b085      	sub	sp, #20
 8000134:	af00      	add	r7, sp, #0
 8000136:	6078      	str	r0, [r7, #4]
 8000138:	4b08      	ldr	r3, [pc, #32]	; (800015c <sleep+0x2c>)
 800013a:	681a      	ldr	r2, [r3, #0]
 800013c:	687b      	ldr	r3, [r7, #4]
 800013e:	4413      	add	r3, r2
 8000140:	60fb      	str	r3, [r7, #12]
 8000142:	bf00      	nop
 8000144:	4b05      	ldr	r3, [pc, #20]	; (800015c <sleep+0x2c>)
 8000146:	681a      	ldr	r2, [r3, #0]
 8000148:	68fb      	ldr	r3, [r7, #12]
 800014a:	429a      	cmp	r2, r3
 800014c:	d3fa      	bcc.n	8000144 <sleep+0x14>
 800014e:	bf00      	nop
 8000150:	4618      	mov	r0, r3
 8000152:	3714      	adds	r7, #20
 8000154:	46bd      	mov	sp, r7
 8000156:	bc80      	pop	{r7}
 8000158:	4770      	bx	lr
 800015a:	bf00      	nop
 800015c:	20001284 	.word	0x20001284

08000160 <ssi_init>:
 8000160:	b480      	push	{r7}
 8000162:	af00      	add	r7, sp, #0
 8000164:	4a0c      	ldr	r2, [pc, #48]	; (8000198 <ssi_init+0x38>)
 8000166:	4b0c      	ldr	r3, [pc, #48]	; (8000198 <ssi_init+0x38>)
 8000168:	69db      	ldr	r3, [r3, #28]
 800016a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800016e:	61d3      	str	r3, [r2, #28]
 8000170:	4b09      	ldr	r3, [pc, #36]	; (8000198 <ssi_init+0x38>)
 8000172:	4a0a      	ldr	r2, [pc, #40]	; (800019c <ssi_init+0x3c>)
 8000174:	62da      	str	r2, [r3, #44]	; 0x2c
 8000176:	4b0a      	ldr	r3, [pc, #40]	; (80001a0 <ssi_init+0x40>)
 8000178:	2200      	movs	r2, #0
 800017a:	605a      	str	r2, [r3, #4]
 800017c:	4b08      	ldr	r3, [pc, #32]	; (80001a0 <ssi_init+0x40>)
 800017e:	220a      	movs	r2, #10
 8000180:	611a      	str	r2, [r3, #16]
 8000182:	4b07      	ldr	r3, [pc, #28]	; (80001a0 <ssi_init+0x40>)
 8000184:	f240 221f 	movw	r2, #543	; 0x21f
 8000188:	601a      	str	r2, [r3, #0]
 800018a:	4b05      	ldr	r3, [pc, #20]	; (80001a0 <ssi_init+0x40>)
 800018c:	2202      	movs	r2, #2
 800018e:	605a      	str	r2, [r3, #4]
 8000190:	bf00      	nop
 8000192:	46bd      	mov	sp, r7
 8000194:	bc80      	pop	{r7}
 8000196:	4770      	bx	lr
 8000198:	40020000 	.word	0x40020000
 800019c:	0100000a 	.word	0x0100000a
 80001a0:	40040000 	.word	0x40040000

080001a4 <enc_crc>:
 80001a4:	b480      	push	{r7}
 80001a6:	b085      	sub	sp, #20
 80001a8:	af00      	add	r7, sp, #0
 80001aa:	6078      	str	r0, [r7, #4]
 80001ac:	687b      	ldr	r3, [r7, #4]
 80001ae:	60bb      	str	r3, [r7, #8]
 80001b0:	2300      	movs	r3, #0
 80001b2:	60fb      	str	r3, [r7, #12]
 80001b4:	e006      	b.n	80001c4 <enc_crc+0x20>
 80001b6:	68fa      	ldr	r2, [r7, #12]
 80001b8:	68bb      	ldr	r3, [r7, #8]
 80001ba:	4053      	eors	r3, r2
 80001bc:	60fb      	str	r3, [r7, #12]
 80001be:	68bb      	ldr	r3, [r7, #8]
 80001c0:	085b      	lsrs	r3, r3, #1
 80001c2:	60bb      	str	r3, [r7, #8]
 80001c4:	68bb      	ldr	r3, [r7, #8]
 80001c6:	2b00      	cmp	r3, #0
 80001c8:	d1f5      	bne.n	80001b6 <enc_crc+0x12>
 80001ca:	68fb      	ldr	r3, [r7, #12]
 80001cc:	f003 0301 	and.w	r3, r3, #1
 80001d0:	2b00      	cmp	r3, #0
 80001d2:	d107      	bne.n	80001e4 <enc_crc+0x40>
 80001d4:	687b      	ldr	r3, [r7, #4]
 80001d6:	f3c3 030b 	ubfx	r3, r3, #0, #12
 80001da:	4a06      	ldr	r2, [pc, #24]	; (80001f4 <enc_crc+0x50>)
 80001dc:	6013      	str	r3, [r2, #0]
 80001de:	4b05      	ldr	r3, [pc, #20]	; (80001f4 <enc_crc+0x50>)
 80001e0:	681b      	ldr	r3, [r3, #0]
 80001e2:	2b00      	cmp	r3, #0
 80001e4:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <enc_crc+0x50>)
 80001e6:	681b      	ldr	r3, [r3, #0]
 80001e8:	4618      	mov	r0, r3
 80001ea:	3714      	adds	r7, #20
 80001ec:	46bd      	mov	sp, r7
 80001ee:	bc80      	pop	{r7}
 80001f0:	4770      	bx	lr
 80001f2:	bf00      	nop
 80001f4:	20000254 	.word	0x20000254

080001f8 <dac_init>:
 80001f8:	b480      	push	{r7}
 80001fa:	af00      	add	r7, sp, #0
 80001fc:	4a07      	ldr	r2, [pc, #28]	; (800021c <dac_init+0x24>)
 80001fe:	4b07      	ldr	r3, [pc, #28]	; (800021c <dac_init+0x24>)
 8000200:	69db      	ldr	r3, [r3, #28]
 8000202:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 8000206:	61d3      	str	r3, [r2, #28]
 8000208:	4a05      	ldr	r2, [pc, #20]	; (8000220 <dac_init+0x28>)
 800020a:	4b05      	ldr	r3, [pc, #20]	; (8000220 <dac_init+0x28>)
 800020c:	681b      	ldr	r3, [r3, #0]
 800020e:	f043 0308 	orr.w	r3, r3, #8
 8000212:	6013      	str	r3, [r2, #0]
 8000214:	bf00      	nop
 8000216:	46bd      	mov	sp, r7
 8000218:	bc80      	pop	{r7}
 800021a:	4770      	bx	lr
 800021c:	40020000 	.word	0x40020000
 8000220:	40090000 	.word	0x40090000

08000224 <encoder_start>:
 8000224:	b480      	push	{r7}
 8000226:	af00      	add	r7, sp, #0
 8000228:	4b03      	ldr	r3, [pc, #12]	; (8000238 <encoder_start+0x14>)
 800022a:	f240 5255 	movw	r2, #1365	; 0x555
 800022e:	609a      	str	r2, [r3, #8]
 8000230:	bf00      	nop
 8000232:	46bd      	mov	sp, r7
 8000234:	bc80      	pop	{r7}
 8000236:	4770      	bx	lr
 8000238:	40040000 	.word	0x40040000

0800023c <Timer1_IRQHandler>:
 800023c:	b480      	push	{r7}
 800023e:	af00      	add	r7, sp, #0
 8000240:	4b03      	ldr	r3, [pc, #12]	; (8000250 <Timer1_IRQHandler+0x14>)
 8000242:	2200      	movs	r2, #0
 8000244:	655a      	str	r2, [r3, #84]	; 0x54
 8000246:	bf00      	nop
 8000248:	46bd      	mov	sp, r7
 800024a:	bc80      	pop	{r7}
 800024c:	4770      	bx	lr
 800024e:	bf00      	nop
 8000250:	40070000 	.word	0x40070000

08000254 <Timer3_IRQHandler>:
 8000254:	b580      	push	{r7, lr}
 8000256:	af00      	add	r7, sp, #0
 8000258:	4b03      	ldr	r3, [pc, #12]	; (8000268 <Timer3_IRQHandler+0x14>)
 800025a:	2200      	movs	r2, #0
 800025c:	655a      	str	r2, [r3, #84]	; 0x54
 800025e:	f7ff ffe1 	bl	8000224 <encoder_start>
 8000262:	bf00      	nop
 8000264:	bd80      	pop	{r7, pc}
 8000266:	bf00      	nop
 8000268:	40080000 	.word	0x40080000

0800026c <update_mode>:
 800026c:	b480      	push	{r7}
 800026e:	b083      	sub	sp, #12
 8000270:	af00      	add	r7, sp, #0
 8000272:	2300      	movs	r3, #0
 8000274:	607b      	str	r3, [r7, #4]
 8000276:	4b14      	ldr	r3, [pc, #80]	; (80002c8 <update_mode+0x5c>)
 8000278:	681b      	ldr	r3, [r3, #0]
 800027a:	f003 0301 	and.w	r3, r3, #1
 800027e:	2b00      	cmp	r3, #0
 8000280:	d005      	beq.n	800028e <update_mode+0x22>
 8000282:	4b12      	ldr	r3, [pc, #72]	; (80002cc <update_mode+0x60>)
 8000284:	4a12      	ldr	r2, [pc, #72]	; (80002d0 <update_mode+0x64>)
 8000286:	601a      	str	r2, [r3, #0]
 8000288:	2301      	movs	r3, #1
 800028a:	607b      	str	r3, [r7, #4]
 800028c:	e016      	b.n	80002bc <update_mode+0x50>
 800028e:	4b0e      	ldr	r3, [pc, #56]	; (80002c8 <update_mode+0x5c>)
 8000290:	681b      	ldr	r3, [r3, #0]
 8000292:	f003 0302 	and.w	r3, r3, #2
 8000296:	2b00      	cmp	r3, #0
 8000298:	d005      	beq.n	80002a6 <update_mode+0x3a>
 800029a:	4b0c      	ldr	r3, [pc, #48]	; (80002cc <update_mode+0x60>)
 800029c:	4a0d      	ldr	r2, [pc, #52]	; (80002d4 <update_mode+0x68>)
 800029e:	601a      	str	r2, [r3, #0]
 80002a0:	2302      	movs	r3, #2
 80002a2:	607b      	str	r3, [r7, #4]
 80002a4:	e00a      	b.n	80002bc <update_mode+0x50>
 80002a6:	4b08      	ldr	r3, [pc, #32]	; (80002c8 <update_mode+0x5c>)
 80002a8:	681b      	ldr	r3, [r3, #0]
 80002aa:	f003 0304 	and.w	r3, r3, #4
 80002ae:	2b00      	cmp	r3, #0
 80002b0:	d004      	beq.n	80002bc <update_mode+0x50>
 80002b2:	4b06      	ldr	r3, [pc, #24]	; (80002cc <update_mode+0x60>)
 80002b4:	4a08      	ldr	r2, [pc, #32]	; (80002d8 <update_mode+0x6c>)
 80002b6:	601a      	str	r2, [r3, #0]
 80002b8:	2303      	movs	r3, #3
 80002ba:	607b      	str	r3, [r7, #4]
 80002bc:	687b      	ldr	r3, [r7, #4]
 80002be:	4618      	mov	r0, r3
 80002c0:	370c      	adds	r7, #12
 80002c2:	46bd      	mov	sp, r7
 80002c4:	bc80      	pop	{r7}
 80002c6:	4770      	bx	lr
 80002c8:	400b0000 	.word	0x400b0000
 80002cc:	20000000 	.word	0x20000000
 80002d0:	080002e9 	.word	0x080002e9
 80002d4:	080003f1 	.word	0x080003f1
 80002d8:	0800047d 	.word	0x0800047d

080002dc <test_null>:
 80002dc:	b580      	push	{r7, lr}
 80002de:	af00      	add	r7, sp, #0
 80002e0:	f7ff ffc4 	bl	800026c <update_mode>
 80002e4:	bf00      	nop
 80002e6:	bd80      	pop	{r7, pc}

080002e8 <test1_proc>:
 80002e8:	b580      	push	{r7, lr}
 80002ea:	b082      	sub	sp, #8
 80002ec:	af00      	add	r7, sp, #0
 80002ee:	4a3a      	ldr	r2, [pc, #232]	; (80003d8 <test1_proc+0xf0>)
 80002f0:	4b39      	ldr	r3, [pc, #228]	; (80003d8 <test1_proc+0xf0>)
 80002f2:	681b      	ldr	r3, [r3, #0]
 80002f4:	f023 0378 	bic.w	r3, r3, #120	; 0x78
 80002f8:	6013      	str	r3, [r2, #0]
 80002fa:	4a37      	ldr	r2, [pc, #220]	; (80003d8 <test1_proc+0xf0>)
 80002fc:	4b36      	ldr	r3, [pc, #216]	; (80003d8 <test1_proc+0xf0>)
 80002fe:	681b      	ldr	r3, [r3, #0]
 8000300:	f043 0308 	orr.w	r3, r3, #8
 8000304:	6013      	str	r3, [r2, #0]
 8000306:	2301      	movs	r3, #1
 8000308:	807b      	strh	r3, [r7, #2]
 800030a:	2300      	movs	r3, #0
 800030c:	607b      	str	r3, [r7, #4]
 800030e:	2300      	movs	r3, #0
 8000310:	607b      	str	r3, [r7, #4]
 8000312:	e011      	b.n	8000338 <test1_proc+0x50>
 8000314:	4a30      	ldr	r2, [pc, #192]	; (80003d8 <test1_proc+0xf0>)
 8000316:	4931      	ldr	r1, [pc, #196]	; (80003dc <test1_proc+0xf4>)
 8000318:	687b      	ldr	r3, [r7, #4]
 800031a:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
 800031e:	6013      	str	r3, [r2, #0]
 8000320:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8000324:	f7ff ff04 	bl	8000130 <sleep>
 8000328:	f7ff ffa0 	bl	800026c <update_mode>
 800032c:	4603      	mov	r3, r0
 800032e:	2b00      	cmp	r3, #0
 8000330:	d13f      	bne.n	80003b2 <test1_proc+0xca>
 8000332:	687b      	ldr	r3, [r7, #4]
 8000334:	3301      	adds	r3, #1
 8000336:	607b      	str	r3, [r7, #4]
 8000338:	687b      	ldr	r3, [r7, #4]
 800033a:	2b06      	cmp	r3, #6
 800033c:	ddea      	ble.n	8000314 <test1_proc+0x2c>
 800033e:	4b26      	ldr	r3, [pc, #152]	; (80003d8 <test1_proc+0xf0>)
 8000340:	2200      	movs	r2, #0
 8000342:	601a      	str	r2, [r3, #0]
 8000344:	2300      	movs	r3, #0
 8000346:	607b      	str	r3, [r7, #4]
 8000348:	e011      	b.n	800036e <test1_proc+0x86>
 800034a:	4a25      	ldr	r2, [pc, #148]	; (80003e0 <test1_proc+0xf8>)
 800034c:	4925      	ldr	r1, [pc, #148]	; (80003e4 <test1_proc+0xfc>)
 800034e:	687b      	ldr	r3, [r7, #4]
 8000350:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
 8000354:	6013      	str	r3, [r2, #0]
 8000356:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 800035a:	f7ff fee9 	bl	8000130 <sleep>
 800035e:	f7ff ff85 	bl	800026c <update_mode>
 8000362:	4603      	mov	r3, r0
 8000364:	2b00      	cmp	r3, #0
 8000366:	d126      	bne.n	80003b6 <test1_proc+0xce>
 8000368:	687b      	ldr	r3, [r7, #4]
 800036a:	3301      	adds	r3, #1
 800036c:	607b      	str	r3, [r7, #4]
 800036e:	687b      	ldr	r3, [r7, #4]
 8000370:	2b02      	cmp	r3, #2
 8000372:	ddea      	ble.n	800034a <test1_proc+0x62>
 8000374:	4b1a      	ldr	r3, [pc, #104]	; (80003e0 <test1_proc+0xf8>)
 8000376:	2200      	movs	r2, #0
 8000378:	601a      	str	r2, [r3, #0]
 800037a:	2300      	movs	r3, #0
 800037c:	607b      	str	r3, [r7, #4]
 800037e:	e011      	b.n	80003a4 <test1_proc+0xbc>
 8000380:	4a19      	ldr	r2, [pc, #100]	; (80003e8 <test1_proc+0x100>)
 8000382:	491a      	ldr	r1, [pc, #104]	; (80003ec <test1_proc+0x104>)
 8000384:	687b      	ldr	r3, [r7, #4]
 8000386:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
 800038a:	6013      	str	r3, [r2, #0]
 800038c:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8000390:	f7ff fece 	bl	8000130 <sleep>
 8000394:	f7ff ff6a 	bl	800026c <update_mode>
 8000398:	4603      	mov	r3, r0
 800039a:	2b00      	cmp	r3, #0
 800039c:	d10d      	bne.n	80003ba <test1_proc+0xd2>
 800039e:	687b      	ldr	r3, [r7, #4]
 80003a0:	3301      	adds	r3, #1
 80003a2:	607b      	str	r3, [r7, #4]
 80003a4:	687b      	ldr	r3, [r7, #4]
 80003a6:	2b0f      	cmp	r3, #15
 80003a8:	ddea      	ble.n	8000380 <test1_proc+0x98>
 80003aa:	4b0f      	ldr	r3, [pc, #60]	; (80003e8 <test1_proc+0x100>)
 80003ac:	2200      	movs	r2, #0
 80003ae:	601a      	str	r2, [r3, #0]
 80003b0:	e7ad      	b.n	800030e <test1_proc+0x26>
 80003b2:	bf00      	nop
 80003b4:	e002      	b.n	80003bc <test1_proc+0xd4>
 80003b6:	bf00      	nop
 80003b8:	e000      	b.n	80003bc <test1_proc+0xd4>
 80003ba:	bf00      	nop
 80003bc:	4b08      	ldr	r3, [pc, #32]	; (80003e0 <test1_proc+0xf8>)
 80003be:	2200      	movs	r2, #0
 80003c0:	601a      	str	r2, [r3, #0]
 80003c2:	4b05      	ldr	r3, [pc, #20]	; (80003d8 <test1_proc+0xf0>)
 80003c4:	2200      	movs	r2, #0
 80003c6:	601a      	str	r2, [r3, #0]
 80003c8:	4b07      	ldr	r3, [pc, #28]	; (80003e8 <test1_proc+0x100>)
 80003ca:	2200      	movs	r2, #0
 80003cc:	601a      	str	r2, [r3, #0]
 80003ce:	bf00      	nop
 80003d0:	3708      	adds	r7, #8
 80003d2:	46bd      	mov	sp, r7
 80003d4:	bd80      	pop	{r7, pc}
 80003d6:	bf00      	nop
 80003d8:	400b0000 	.word	0x400b0000
 80003dc:	08001764 	.word	0x08001764
 80003e0:	400b8000 	.word	0x400b8000
 80003e4:	0800175c 	.word	0x0800175c
 80003e8:	400a8000 	.word	0x400a8000
 80003ec:	08001774 	.word	0x08001774

080003f0 <test2_proc>:
 80003f0:	b580      	push	{r7, lr}
 80003f2:	b082      	sub	sp, #8
 80003f4:	af00      	add	r7, sp, #0
 80003f6:	2300      	movs	r3, #0
 80003f8:	607b      	str	r3, [r7, #4]
 80003fa:	2300      	movs	r3, #0
 80003fc:	607b      	str	r3, [r7, #4]
 80003fe:	e00e      	b.n	800041e <test2_proc+0x2e>
 8000400:	4b1b      	ldr	r3, [pc, #108]	; (8000470 <test2_proc+0x80>)
 8000402:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8000406:	601a      	str	r2, [r3, #0]
 8000408:	4b1a      	ldr	r3, [pc, #104]	; (8000474 <test2_proc+0x84>)
 800040a:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800040e:	601a      	str	r2, [r3, #0]
 8000410:	4b19      	ldr	r3, [pc, #100]	; (8000478 <test2_proc+0x88>)
 8000412:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8000416:	601a      	str	r2, [r3, #0]
 8000418:	687b      	ldr	r3, [r7, #4]
 800041a:	3301      	adds	r3, #1
 800041c:	607b      	str	r3, [r7, #4]
 800041e:	687b      	ldr	r3, [r7, #4]
 8000420:	2b03      	cmp	r3, #3
 8000422:	dded      	ble.n	8000400 <test2_proc+0x10>
 8000424:	2300      	movs	r3, #0
 8000426:	607b      	str	r3, [r7, #4]
 8000428:	e00b      	b.n	8000442 <test2_proc+0x52>
 800042a:	4b11      	ldr	r3, [pc, #68]	; (8000470 <test2_proc+0x80>)
 800042c:	2200      	movs	r2, #0
 800042e:	601a      	str	r2, [r3, #0]
 8000430:	4b10      	ldr	r3, [pc, #64]	; (8000474 <test2_proc+0x84>)
 8000432:	2200      	movs	r2, #0
 8000434:	601a      	str	r2, [r3, #0]
 8000436:	4b10      	ldr	r3, [pc, #64]	; (8000478 <test2_proc+0x88>)
 8000438:	2200      	movs	r2, #0
 800043a:	601a      	str	r2, [r3, #0]
 800043c:	687b      	ldr	r3, [r7, #4]
 800043e:	3301      	adds	r3, #1
 8000440:	607b      	str	r3, [r7, #4]
 8000442:	687b      	ldr	r3, [r7, #4]
 8000444:	2b4f      	cmp	r3, #79	; 0x4f
 8000446:	ddf0      	ble.n	800042a <test2_proc+0x3a>
 8000448:	f7ff ff10 	bl	800026c <update_mode>
 800044c:	4603      	mov	r3, r0
 800044e:	2b00      	cmp	r3, #0
 8000450:	d100      	bne.n	8000454 <test2_proc+0x64>
 8000452:	e7d2      	b.n	80003fa <test2_proc+0xa>
 8000454:	bf00      	nop
 8000456:	4b06      	ldr	r3, [pc, #24]	; (8000470 <test2_proc+0x80>)
 8000458:	2200      	movs	r2, #0
 800045a:	601a      	str	r2, [r3, #0]
 800045c:	4b05      	ldr	r3, [pc, #20]	; (8000474 <test2_proc+0x84>)
 800045e:	2200      	movs	r2, #0
 8000460:	601a      	str	r2, [r3, #0]
 8000462:	4b05      	ldr	r3, [pc, #20]	; (8000478 <test2_proc+0x88>)
 8000464:	2200      	movs	r2, #0
 8000466:	601a      	str	r2, [r3, #0]
 8000468:	bf00      	nop
 800046a:	3708      	adds	r7, #8
 800046c:	46bd      	mov	sp, r7
 800046e:	bd80      	pop	{r7, pc}
 8000470:	400b8000 	.word	0x400b8000
 8000474:	400b0000 	.word	0x400b0000
 8000478:	400a8000 	.word	0x400a8000

0800047c <test3_proc>:
 800047c:	b580      	push	{r7, lr}
 800047e:	af00      	add	r7, sp, #0
 8000480:	4b10      	ldr	r3, [pc, #64]	; (80004c4 <test3_proc+0x48>)
 8000482:	2220      	movs	r2, #32
 8000484:	601a      	str	r2, [r3, #0]
 8000486:	4a10      	ldr	r2, [pc, #64]	; (80004c8 <test3_proc+0x4c>)
 8000488:	4b0f      	ldr	r3, [pc, #60]	; (80004c8 <test3_proc+0x4c>)
 800048a:	681b      	ldr	r3, [r3, #0]
 800048c:	f023 0303 	bic.w	r3, r3, #3
 8000490:	6013      	str	r3, [r2, #0]
 8000492:	4a0d      	ldr	r2, [pc, #52]	; (80004c8 <test3_proc+0x4c>)
 8000494:	4b0c      	ldr	r3, [pc, #48]	; (80004c8 <test3_proc+0x4c>)
 8000496:	681b      	ldr	r3, [r3, #0]
 8000498:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 800049c:	6013      	str	r3, [r2, #0]
 800049e:	f7ff fee5 	bl	800026c <update_mode>
 80004a2:	4603      	mov	r3, r0
 80004a4:	2b00      	cmp	r3, #0
 80004a6:	d00b      	beq.n	80004c0 <test3_proc+0x44>
 80004a8:	4a07      	ldr	r2, [pc, #28]	; (80004c8 <test3_proc+0x4c>)
 80004aa:	4b07      	ldr	r3, [pc, #28]	; (80004c8 <test3_proc+0x4c>)
 80004ac:	681b      	ldr	r3, [r3, #0]
 80004ae:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
 80004b2:	6013      	str	r3, [r2, #0]
 80004b4:	4a03      	ldr	r2, [pc, #12]	; (80004c4 <test3_proc+0x48>)
 80004b6:	4b03      	ldr	r3, [pc, #12]	; (80004c4 <test3_proc+0x48>)
 80004b8:	681b      	ldr	r3, [r3, #0]
 80004ba:	f023 0320 	bic.w	r3, r3, #32
 80004be:	6013      	str	r3, [r2, #0]
 80004c0:	bf00      	nop
 80004c2:	bd80      	pop	{r7, pc}
 80004c4:	400b0000 	.word	0x400b0000
 80004c8:	400b8000 	.word	0x400b8000

080004cc <test4_proc>:
 80004cc:	b580      	push	{r7, lr}
 80004ce:	af00      	add	r7, sp, #0
 80004d0:	4b0b      	ldr	r3, [pc, #44]	; (8000500 <test4_proc+0x34>)
 80004d2:	2240      	movs	r2, #64	; 0x40
 80004d4:	601a      	str	r2, [r3, #0]
 80004d6:	f7ff fe1d 	bl	8000114 <motor_on>
 80004da:	f7ff fdff 	bl	80000dc <brake_off>
 80004de:	f7ff fec5 	bl	800026c <update_mode>
 80004e2:	4603      	mov	r3, r0
 80004e4:	2b00      	cmp	r3, #0
 80004e6:	d009      	beq.n	80004fc <test4_proc+0x30>
 80004e8:	f7ff fe06 	bl	80000f8 <motor_off>
 80004ec:	f7ff fde8 	bl	80000c0 <brake_on>
 80004f0:	4a03      	ldr	r2, [pc, #12]	; (8000500 <test4_proc+0x34>)
 80004f2:	4b03      	ldr	r3, [pc, #12]	; (8000500 <test4_proc+0x34>)
 80004f4:	681b      	ldr	r3, [r3, #0]
 80004f6:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80004fa:	6013      	str	r3, [r2, #0]
 80004fc:	bf00      	nop
 80004fe:	bd80      	pop	{r7, pc}
 8000500:	400b0000 	.word	0x400b0000

08000504 <main>:
 8000504:	b580      	push	{r7, lr}
 8000506:	b0a0      	sub	sp, #128	; 0x80
 8000508:	af00      	add	r7, sp, #0
 800050a:	2300      	movs	r3, #0
 800050c:	673b      	str	r3, [r7, #112]	; 0x70
 800050e:	2300      	movs	r3, #0
 8000510:	67fb      	str	r3, [r7, #124]	; 0x7c
 8000512:	2300      	movs	r3, #0
 8000514:	67bb      	str	r3, [r7, #120]	; 0x78
 8000516:	2300      	movs	r3, #0
 8000518:	66fb      	str	r3, [r7, #108]	; 0x6c
 800051a:	2300      	movs	r3, #0
 800051c:	66bb      	str	r3, [r7, #104]	; 0x68
 800051e:	2300      	movs	r3, #0
 8000520:	667b      	str	r3, [r7, #100]	; 0x64
 8000522:	2300      	movs	r3, #0
 8000524:	663b      	str	r3, [r7, #96]	; 0x60
 8000526:	2300      	movs	r3, #0
 8000528:	65fb      	str	r3, [r7, #92]	; 0x5c
 800052a:	2300      	movs	r3, #0
 800052c:	65bb      	str	r3, [r7, #88]	; 0x58
 800052e:	4a32      	ldr	r2, [pc, #200]	; (80005f8 <main+0xf4>)
 8000530:	4b31      	ldr	r3, [pc, #196]	; (80005f8 <main+0xf4>)
 8000532:	69db      	ldr	r3, [r3, #28]
 8000534:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 8000538:	61d3      	str	r3, [r2, #28]
 800053a:	4a30      	ldr	r2, [pc, #192]	; (80005fc <main+0xf8>)
 800053c:	4b2f      	ldr	r3, [pc, #188]	; (80005fc <main+0xf8>)
 800053e:	68db      	ldr	r3, [r3, #12]
 8000540:	f043 0307 	orr.w	r3, r3, #7
 8000544:	60d3      	str	r3, [r2, #12]
 8000546:	2300      	movs	r3, #0
 8000548:	677b      	str	r3, [r7, #116]	; 0x74
 800054a:	2300      	movs	r3, #0
 800054c:	67bb      	str	r3, [r7, #120]	; 0x78
 800054e:	2300      	movs	r3, #0
 8000550:	67fb      	str	r3, [r7, #124]	; 0x7c
 8000552:	e00d      	b.n	8000570 <main+0x6c>
 8000554:	4b29      	ldr	r3, [pc, #164]	; (80005fc <main+0xf8>)
 8000556:	681b      	ldr	r3, [r3, #0]
 8000558:	f003 0307 	and.w	r3, r3, #7
 800055c:	677b      	str	r3, [r7, #116]	; 0x74
 800055e:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 8000560:	2b00      	cmp	r3, #0
 8000562:	d002      	beq.n	800056a <main+0x66>
 8000564:	6fbb      	ldr	r3, [r7, #120]	; 0x78
 8000566:	3301      	adds	r3, #1
 8000568:	67bb      	str	r3, [r7, #120]	; 0x78
 800056a:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
 800056c:	3301      	adds	r3, #1
 800056e:	67fb      	str	r3, [r7, #124]	; 0x7c
 8000570:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
 8000572:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 8000576:	dbed      	blt.n	8000554 <main+0x50>
 8000578:	6fbb      	ldr	r3, [r7, #120]	; 0x78
 800057a:	2b00      	cmp	r3, #0
 800057c:	d007      	beq.n	800058e <main+0x8a>
 800057e:	bf00      	nop
 8000580:	4b1e      	ldr	r3, [pc, #120]	; (80005fc <main+0xf8>)
 8000582:	681b      	ldr	r3, [r3, #0]
 8000584:	f003 0307 	and.w	r3, r3, #7
 8000588:	2b00      	cmp	r3, #0
 800058a:	d1f9      	bne.n	8000580 <main+0x7c>
 800058c:	e006      	b.n	800059c <main+0x98>
 800058e:	bf00      	nop
 8000590:	4b1a      	ldr	r3, [pc, #104]	; (80005fc <main+0xf8>)
 8000592:	681b      	ldr	r3, [r3, #0]
 8000594:	f003 0307 	and.w	r3, r3, #7
 8000598:	2b00      	cmp	r3, #0
 800059a:	d0f9      	beq.n	8000590 <main+0x8c>
 800059c:	f001 f84e 	bl	800163c <system_init>
 80005a0:	f7ff fdde 	bl	8000160 <ssi_init>
 80005a4:	f7ff fd8c 	bl	80000c0 <brake_on>
 80005a8:	f7ff fda6 	bl	80000f8 <motor_off>
 80005ac:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 80005ae:	2b00      	cmp	r3, #0
 80005b0:	d01e      	beq.n	80005f0 <main+0xec>
 80005b2:	4b13      	ldr	r3, [pc, #76]	; (8000600 <main+0xfc>)
 80005b4:	4a13      	ldr	r2, [pc, #76]	; (8000604 <main+0x100>)
 80005b6:	601a      	str	r2, [r3, #0]
 80005b8:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 80005ba:	f003 0301 	and.w	r3, r3, #1
 80005be:	2b00      	cmp	r3, #0
 80005c0:	d003      	beq.n	80005ca <main+0xc6>
 80005c2:	4b11      	ldr	r3, [pc, #68]	; (8000608 <main+0x104>)
 80005c4:	22c8      	movs	r2, #200	; 0xc8
 80005c6:	611a      	str	r2, [r3, #16]
 80005c8:	bf00      	nop
 80005ca:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 80005cc:	f003 0302 	and.w	r3, r3, #2
 80005d0:	2b00      	cmp	r3, #0
 80005d2:	d004      	beq.n	80005de <main+0xda>
 80005d4:	4b0c      	ldr	r3, [pc, #48]	; (8000608 <main+0x104>)
 80005d6:	f44f 72c8 	mov.w	r2, #400	; 0x190
 80005da:	615a      	str	r2, [r3, #20]
 80005dc:	bf00      	nop
 80005de:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 80005e0:	f003 0304 	and.w	r3, r3, #4
 80005e4:	2b00      	cmp	r3, #0
 80005e6:	d003      	beq.n	80005f0 <main+0xec>
 80005e8:	4b07      	ldr	r3, [pc, #28]	; (8000608 <main+0x104>)
 80005ea:	f44f 7216 	mov.w	r2, #600	; 0x258
 80005ee:	619a      	str	r2, [r3, #24]
 80005f0:	4b03      	ldr	r3, [pc, #12]	; (8000600 <main+0xfc>)
 80005f2:	681b      	ldr	r3, [r3, #0]
 80005f4:	4798      	blx	r3
 80005f6:	e7fb      	b.n	80005f0 <main+0xec>
 80005f8:	40020000 	.word	0x40020000
 80005fc:	400b0000 	.word	0x400b0000
 8000600:	20000000 	.word	0x20000000
 8000604:	080004cd 	.word	0x080004cd
 8000608:	40080000 	.word	0x40080000

0800060c <mycos>:
 800060c:	4b02      	ldr	r3, [pc, #8]	; (8000618 <mycos+0xc>)
 800060e:	f3c0 0009 	ubfx	r0, r0, #0, #10
 8000612:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 8000616:	4770      	bx	lr
 8000618:	080017d4 	.word	0x080017d4

0800061c <mysin>:
 800061c:	4b03      	ldr	r3, [pc, #12]	; (800062c <mysin+0x10>)
 800061e:	f500 7040 	add.w	r0, r0, #768	; 0x300
 8000622:	f3c0 0009 	ubfx	r0, r0, #0, #10
 8000626:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 800062a:	4770      	bx	lr
 800062c:	080017d4 	.word	0x080017d4

08000630 <reg_init>:
 8000630:	2300      	movs	r3, #0
 8000632:	e880 000e 	stmia.w	r0, {r1, r2, r3}
 8000636:	60c3      	str	r3, [r0, #12]
 8000638:	4770      	bx	lr
 800063a:	bf00      	nop

0800063c <reg_update>:
 800063c:	6803      	ldr	r3, [r0, #0]
 800063e:	b410      	push	{r4}
 8000640:	fb03 f301 	mul.w	r3, r3, r1
 8000644:	6884      	ldr	r4, [r0, #8]
 8000646:	b11a      	cbz	r2, 8000650 <reg_update+0x14>
 8000648:	2c00      	cmp	r4, #0
 800064a:	dd09      	ble.n	8000660 <reg_update+0x24>
 800064c:	ea03 73e3 	and.w	r3, r3, r3, asr #31
 8000650:	6842      	ldr	r2, [r0, #4]
 8000652:	4423      	add	r3, r4
 8000654:	fb02 3101 	mla	r1, r2, r1, r3
 8000658:	6083      	str	r3, [r0, #8]
 800065a:	60c1      	str	r1, [r0, #12]
 800065c:	bc10      	pop	{r4}
 800065e:	4770      	bx	lr
 8000660:	bf18      	it	ne
 8000662:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
 8000666:	e7f3      	b.n	8000650 <reg_update+0x14>

08000668 <dot3>:
 8000668:	b430      	push	{r4, r5}
 800066a:	684b      	ldr	r3, [r1, #4]
 800066c:	6844      	ldr	r4, [r0, #4]
 800066e:	6802      	ldr	r2, [r0, #0]
 8000670:	fb03 f304 	mul.w	r3, r3, r4
 8000674:	680d      	ldr	r5, [r1, #0]
 8000676:	6884      	ldr	r4, [r0, #8]
 8000678:	fb05 3302 	mla	r3, r5, r2, r3
 800067c:	6888      	ldr	r0, [r1, #8]
 800067e:	fb00 3004 	mla	r0, r0, r4, r3
 8000682:	bc30      	pop	{r4, r5}
 8000684:	4770      	bx	lr
 8000686:	bf00      	nop

08000688 <abc_to_dq>:
 8000688:	b4f0      	push	{r4, r5, r6, r7}
 800068a:	4c1d      	ldr	r4, [pc, #116]	; (8000700 <abc_to_dq+0x78>)
 800068c:	6803      	ldr	r3, [r0, #0]
 800068e:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
 8000692:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
 8000696:	fb03 f306 	mul.w	r3, r3, r6
 800069a:	f3c5 0509 	ubfx	r5, r5, #0, #10
 800069e:	6847      	ldr	r7, [r0, #4]
 80006a0:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 80006a4:	f202 1655 	addw	r6, r2, #341	; 0x155
 80006a8:	fb07 3305 	mla	r3, r7, r5, r3
 80006ac:	f3c6 0509 	ubfx	r5, r6, #0, #10
 80006b0:	6887      	ldr	r7, [r0, #8]
 80006b2:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 80006b6:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
 80006ba:	fb07 3305 	mla	r3, r7, r5, r3
 80006be:	129b      	asrs	r3, r3, #10
 80006c0:	600b      	str	r3, [r1, #0]
 80006c2:	f3c6 0509 	ubfx	r5, r6, #0, #10
 80006c6:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
 80006ca:	6843      	ldr	r3, [r0, #4]
 80006cc:	f502 7540 	add.w	r5, r2, #768	; 0x300
 80006d0:	fb03 f306 	mul.w	r3, r3, r6
 80006d4:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80006d8:	6806      	ldr	r6, [r0, #0]
 80006da:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 80006de:	f202 4255 	addw	r2, r2, #1109	; 0x455
 80006e2:	fb06 3305 	mla	r3, r6, r5, r3
 80006e6:	f3c2 0209 	ubfx	r2, r2, #0, #10
 80006ea:	6880      	ldr	r0, [r0, #8]
 80006ec:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 80006f0:	bcf0      	pop	{r4, r5, r6, r7}
 80006f2:	fb00 3302 	mla	r3, r0, r2, r3
 80006f6:	425b      	negs	r3, r3
 80006f8:	129b      	asrs	r3, r3, #10
 80006fa:	604b      	str	r3, [r1, #4]
 80006fc:	4770      	bx	lr
 80006fe:	bf00      	nop
 8000700:	080017d4 	.word	0x080017d4

08000704 <dq_to_abc>:
 8000704:	4b1d      	ldr	r3, [pc, #116]	; (800077c <dq_to_abc+0x78>)
 8000706:	b4f0      	push	{r4, r5, r6, r7}
 8000708:	680e      	ldr	r6, [r1, #0]
 800070a:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
 800070e:	f502 7540 	add.w	r5, r2, #768	; 0x300
 8000712:	fb04 f406 	mul.w	r4, r4, r6
 8000716:	f3c5 0509 	ubfx	r5, r5, #0, #10
 800071a:	684f      	ldr	r7, [r1, #4]
 800071c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8000720:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
 8000724:	fb07 4415 	mls	r4, r7, r5, r4
 8000728:	1524      	asrs	r4, r4, #20
 800072a:	6004      	str	r4, [r0, #0]
 800072c:	f3c6 0509 	ubfx	r5, r6, #0, #10
 8000730:	680c      	ldr	r4, [r1, #0]
 8000732:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
 8000736:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
 800073a:	fb04 f406 	mul.w	r4, r4, r6
 800073e:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000742:	684f      	ldr	r7, [r1, #4]
 8000744:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8000748:	f202 1655 	addw	r6, r2, #341	; 0x155
 800074c:	fb07 4415 	mls	r4, r7, r5, r4
 8000750:	1524      	asrs	r4, r4, #20
 8000752:	6044      	str	r4, [r0, #4]
 8000754:	f3c6 0509 	ubfx	r5, r6, #0, #10
 8000758:	680c      	ldr	r4, [r1, #0]
 800075a:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 800075e:	f202 4255 	addw	r2, r2, #1109	; 0x455
 8000762:	fb04 f405 	mul.w	r4, r4, r5
 8000766:	f3c2 0209 	ubfx	r2, r2, #0, #10
 800076a:	6849      	ldr	r1, [r1, #4]
 800076c:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
 8000770:	fb01 4312 	mls	r3, r1, r2, r4
 8000774:	bcf0      	pop	{r4, r5, r6, r7}
 8000776:	151b      	asrs	r3, r3, #20
 8000778:	6083      	str	r3, [r0, #8]
 800077a:	4770      	bx	lr
 800077c:	080017d4 	.word	0x080017d4

08000780 <cord_atan>:
 8000780:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000782:	b091      	sub	sp, #68	; 0x44
 8000784:	46ee      	mov	lr, sp
 8000786:	4684      	mov	ip, r0
 8000788:	4e56      	ldr	r6, [pc, #344]	; (80008e4 <cord_atan+0x164>)
 800078a:	460d      	mov	r5, r1
 800078c:	4614      	mov	r4, r2
 800078e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000790:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8000794:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000798:	af08      	add	r7, sp, #32
 800079a:	3610      	adds	r6, #16
 800079c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 80007a0:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 80007a2:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 80007a4:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 80007a8:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 80007ac:	f8dc 6000 	ldr.w	r6, [ip]
 80007b0:	f8dc 3004 	ldr.w	r3, [ip, #4]
 80007b4:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 80007b8:	2b00      	cmp	r3, #0
 80007ba:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 80007be:	9900      	ldr	r1, [sp, #0]
 80007c0:	dd56      	ble.n	8000870 <cord_atan+0xf0>
 80007c2:	18d0      	adds	r0, r2, r3
 80007c4:	1a9b      	subs	r3, r3, r2
 80007c6:	2b00      	cmp	r3, #0
 80007c8:	d07a      	beq.n	80008c0 <cord_atan+0x140>
 80007ca:	9f01      	ldr	r7, [sp, #4]
 80007cc:	dd54      	ble.n	8000878 <cord_atan+0xf8>
 80007ce:	eb00 0263 	add.w	r2, r0, r3, asr #1
 80007d2:	4439      	add	r1, r7
 80007d4:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 80007d8:	2b00      	cmp	r3, #0
 80007da:	d073      	beq.n	80008c4 <cord_atan+0x144>
 80007dc:	9f02      	ldr	r7, [sp, #8]
 80007de:	dd51      	ble.n	8000884 <cord_atan+0x104>
 80007e0:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 80007e4:	4439      	add	r1, r7
 80007e6:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 80007ea:	2b00      	cmp	r3, #0
 80007ec:	d06d      	beq.n	80008ca <cord_atan+0x14a>
 80007ee:	9f03      	ldr	r7, [sp, #12]
 80007f0:	dd4e      	ble.n	8000890 <cord_atan+0x110>
 80007f2:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 80007f6:	4439      	add	r1, r7
 80007f8:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 80007fc:	2b00      	cmp	r3, #0
 80007fe:	d066      	beq.n	80008ce <cord_atan+0x14e>
 8000800:	9f04      	ldr	r7, [sp, #16]
 8000802:	dd4b      	ble.n	800089c <cord_atan+0x11c>
 8000804:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8000808:	4439      	add	r1, r7
 800080a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 800080e:	2b00      	cmp	r3, #0
 8000810:	d060      	beq.n	80008d4 <cord_atan+0x154>
 8000812:	9f05      	ldr	r7, [sp, #20]
 8000814:	dd48      	ble.n	80008a8 <cord_atan+0x128>
 8000816:	eb00 1263 	add.w	r2, r0, r3, asr #5
 800081a:	4439      	add	r1, r7
 800081c:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8000820:	2b00      	cmp	r3, #0
 8000822:	d059      	beq.n	80008d8 <cord_atan+0x158>
 8000824:	9f06      	ldr	r7, [sp, #24]
 8000826:	dd45      	ble.n	80008b4 <cord_atan+0x134>
 8000828:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 800082c:	4439      	add	r1, r7
 800082e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 8000832:	2b00      	cmp	r3, #0
 8000834:	d053      	beq.n	80008de <cord_atan+0x15e>
 8000836:	9a07      	ldr	r2, [sp, #28]
 8000838:	bfc7      	ittee	gt
 800083a:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 800083e:	1889      	addgt	r1, r1, r2
 8000840:	1a89      	suble	r1, r1, r2
 8000842:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 8000846:	2207      	movs	r2, #7
 8000848:	ab10      	add	r3, sp, #64	; 0x40
 800084a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 800084e:	f852 3c20 	ldr.w	r3, [r2, #-32]
 8000852:	2e00      	cmp	r6, #0
 8000854:	fb03 f300 	mul.w	r3, r3, r0
 8000858:	bfb8      	it	lt
 800085a:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 800085e:	2900      	cmp	r1, #0
 8000860:	bfb8      	it	lt
 8000862:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 8000866:	129b      	asrs	r3, r3, #10
 8000868:	6029      	str	r1, [r5, #0]
 800086a:	6023      	str	r3, [r4, #0]
 800086c:	b011      	add	sp, #68	; 0x44
 800086e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000870:	1ad0      	subs	r0, r2, r3
 8000872:	4249      	negs	r1, r1
 8000874:	4413      	add	r3, r2
 8000876:	e7a6      	b.n	80007c6 <cord_atan+0x46>
 8000878:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 800087c:	1bc9      	subs	r1, r1, r7
 800087e:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8000882:	e7a9      	b.n	80007d8 <cord_atan+0x58>
 8000884:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8000888:	1bc9      	subs	r1, r1, r7
 800088a:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 800088e:	e7ac      	b.n	80007ea <cord_atan+0x6a>
 8000890:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8000894:	1bc9      	subs	r1, r1, r7
 8000896:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 800089a:	e7af      	b.n	80007fc <cord_atan+0x7c>
 800089c:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 80008a0:	1bc9      	subs	r1, r1, r7
 80008a2:	eb03 1322 	add.w	r3, r3, r2, asr #4
 80008a6:	e7b2      	b.n	800080e <cord_atan+0x8e>
 80008a8:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 80008ac:	1bc9      	subs	r1, r1, r7
 80008ae:	eb03 1360 	add.w	r3, r3, r0, asr #5
 80008b2:	e7b5      	b.n	8000820 <cord_atan+0xa0>
 80008b4:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 80008b8:	1bc9      	subs	r1, r1, r7
 80008ba:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 80008be:	e7b8      	b.n	8000832 <cord_atan+0xb2>
 80008c0:	461a      	mov	r2, r3
 80008c2:	e7c1      	b.n	8000848 <cord_atan+0xc8>
 80008c4:	4610      	mov	r0, r2
 80008c6:	2201      	movs	r2, #1
 80008c8:	e7be      	b.n	8000848 <cord_atan+0xc8>
 80008ca:	2202      	movs	r2, #2
 80008cc:	e7bc      	b.n	8000848 <cord_atan+0xc8>
 80008ce:	4610      	mov	r0, r2
 80008d0:	2203      	movs	r2, #3
 80008d2:	e7b9      	b.n	8000848 <cord_atan+0xc8>
 80008d4:	2204      	movs	r2, #4
 80008d6:	e7b7      	b.n	8000848 <cord_atan+0xc8>
 80008d8:	4610      	mov	r0, r2
 80008da:	2205      	movs	r2, #5
 80008dc:	e7b4      	b.n	8000848 <cord_atan+0xc8>
 80008de:	2206      	movs	r2, #6
 80008e0:	e7b2      	b.n	8000848 <cord_atan+0xc8>
 80008e2:	bf00      	nop
 80008e4:	08001794 	.word	0x08001794

080008e8 <sinpwm>:
 80008e8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80008ea:	b091      	sub	sp, #68	; 0x44
 80008ec:	46ee      	mov	lr, sp
 80008ee:	468c      	mov	ip, r1
 80008f0:	4e6e      	ldr	r6, [pc, #440]	; (8000aac <sinpwm+0x1c4>)
 80008f2:	4604      	mov	r4, r0
 80008f4:	4615      	mov	r5, r2
 80008f6:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 80008f8:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 80008fc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000900:	af08      	add	r7, sp, #32
 8000902:	3610      	adds	r6, #16
 8000904:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 8000908:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 800090a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 800090c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000910:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8000914:	f8dc 6000 	ldr.w	r6, [ip]
 8000918:	f8dc 3004 	ldr.w	r3, [ip, #4]
 800091c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000920:	2b00      	cmp	r3, #0
 8000922:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 8000926:	9900      	ldr	r1, [sp, #0]
 8000928:	f340 8087 	ble.w	8000a3a <sinpwm+0x152>
 800092c:	18d0      	adds	r0, r2, r3
 800092e:	1a9b      	subs	r3, r3, r2
 8000930:	2b00      	cmp	r3, #0
 8000932:	f000 80aa 	beq.w	8000a8a <sinpwm+0x1a2>
 8000936:	9f01      	ldr	r7, [sp, #4]
 8000938:	f340 8083 	ble.w	8000a42 <sinpwm+0x15a>
 800093c:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8000940:	4439      	add	r1, r7
 8000942:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8000946:	2b00      	cmp	r3, #0
 8000948:	f000 80a1 	beq.w	8000a8e <sinpwm+0x1a6>
 800094c:	9f02      	ldr	r7, [sp, #8]
 800094e:	dd7e      	ble.n	8000a4e <sinpwm+0x166>
 8000950:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8000954:	4439      	add	r1, r7
 8000956:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 800095a:	2b00      	cmp	r3, #0
 800095c:	f000 809a 	beq.w	8000a94 <sinpwm+0x1ac>
 8000960:	9f03      	ldr	r7, [sp, #12]
 8000962:	dd7a      	ble.n	8000a5a <sinpwm+0x172>
 8000964:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 8000968:	4439      	add	r1, r7
 800096a:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 800096e:	2b00      	cmp	r3, #0
 8000970:	f000 8092 	beq.w	8000a98 <sinpwm+0x1b0>
 8000974:	9f04      	ldr	r7, [sp, #16]
 8000976:	dd76      	ble.n	8000a66 <sinpwm+0x17e>
 8000978:	eb02 1023 	add.w	r0, r2, r3, asr #4
 800097c:	4439      	add	r1, r7
 800097e:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8000982:	2b00      	cmp	r3, #0
 8000984:	f000 808b 	beq.w	8000a9e <sinpwm+0x1b6>
 8000988:	9f05      	ldr	r7, [sp, #20]
 800098a:	dd72      	ble.n	8000a72 <sinpwm+0x18a>
 800098c:	eb00 1263 	add.w	r2, r0, r3, asr #5
 8000990:	4439      	add	r1, r7
 8000992:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8000996:	2b00      	cmp	r3, #0
 8000998:	f000 8083 	beq.w	8000aa2 <sinpwm+0x1ba>
 800099c:	9f06      	ldr	r7, [sp, #24]
 800099e:	dd6e      	ble.n	8000a7e <sinpwm+0x196>
 80009a0:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 80009a4:	4439      	add	r1, r7
 80009a6:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 80009aa:	2b00      	cmp	r3, #0
 80009ac:	d07c      	beq.n	8000aa8 <sinpwm+0x1c0>
 80009ae:	9a07      	ldr	r2, [sp, #28]
 80009b0:	bfc7      	ittee	gt
 80009b2:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 80009b6:	1889      	addgt	r1, r1, r2
 80009b8:	1a89      	suble	r1, r1, r2
 80009ba:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 80009be:	2207      	movs	r2, #7
 80009c0:	ab10      	add	r3, sp, #64	; 0x40
 80009c2:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 80009c6:	f852 3c20 	ldr.w	r3, [r2, #-32]
 80009ca:	2e00      	cmp	r6, #0
 80009cc:	fb03 f300 	mul.w	r3, r3, r0
 80009d0:	bfb8      	it	lt
 80009d2:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 80009d6:	2900      	cmp	r1, #0
 80009d8:	bfb8      	it	lt
 80009da:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 80009de:	151b      	asrs	r3, r3, #20
 80009e0:	440d      	add	r5, r1
 80009e2:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 80009e6:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80009ea:	dd22      	ble.n	8000a32 <sinpwm+0x14a>
 80009ec:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 8000ab4 <sinpwm+0x1cc>
 80009f0:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 80009f4:	2001      	movs	r0, #1
 80009f6:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
 80009fa:	4f2d      	ldr	r7, [pc, #180]	; (8000ab0 <sinpwm+0x1c8>)
 80009fc:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
 8000a00:	3602      	adds	r6, #2
 8000a02:	f3ce 0e09 	ubfx	lr, lr, #0, #10
 8000a06:	f3c6 0609 	ubfx	r6, r6, #0, #10
 8000a0a:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
 8000a0e:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
 8000a12:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
 8000a16:	fb06 f50c 	mul.w	r5, r6, ip
 8000a1a:	fb01 f10c 	mul.w	r1, r1, ip
 8000a1e:	fb02 f303 	mul.w	r3, r2, r3
 8000a22:	12ad      	asrs	r5, r5, #10
 8000a24:	128a      	asrs	r2, r1, #10
 8000a26:	129b      	asrs	r3, r3, #10
 8000a28:	60a5      	str	r5, [r4, #8]
 8000a2a:	6062      	str	r2, [r4, #4]
 8000a2c:	6023      	str	r3, [r4, #0]
 8000a2e:	b011      	add	sp, #68	; 0x44
 8000a30:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a32:	f1c3 0c00 	rsb	ip, r3, #0
 8000a36:	2000      	movs	r0, #0
 8000a38:	e7dd      	b.n	80009f6 <sinpwm+0x10e>
 8000a3a:	1ad0      	subs	r0, r2, r3
 8000a3c:	4249      	negs	r1, r1
 8000a3e:	4413      	add	r3, r2
 8000a40:	e776      	b.n	8000930 <sinpwm+0x48>
 8000a42:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 8000a46:	1bc9      	subs	r1, r1, r7
 8000a48:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8000a4c:	e77b      	b.n	8000946 <sinpwm+0x5e>
 8000a4e:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8000a52:	1bc9      	subs	r1, r1, r7
 8000a54:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 8000a58:	e77f      	b.n	800095a <sinpwm+0x72>
 8000a5a:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8000a5e:	1bc9      	subs	r1, r1, r7
 8000a60:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 8000a64:	e783      	b.n	800096e <sinpwm+0x86>
 8000a66:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8000a6a:	1bc9      	subs	r1, r1, r7
 8000a6c:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8000a70:	e787      	b.n	8000982 <sinpwm+0x9a>
 8000a72:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 8000a76:	1bc9      	subs	r1, r1, r7
 8000a78:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8000a7c:	e78b      	b.n	8000996 <sinpwm+0xae>
 8000a7e:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8000a82:	1bc9      	subs	r1, r1, r7
 8000a84:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8000a88:	e78f      	b.n	80009aa <sinpwm+0xc2>
 8000a8a:	461a      	mov	r2, r3
 8000a8c:	e798      	b.n	80009c0 <sinpwm+0xd8>
 8000a8e:	4610      	mov	r0, r2
 8000a90:	2201      	movs	r2, #1
 8000a92:	e795      	b.n	80009c0 <sinpwm+0xd8>
 8000a94:	2202      	movs	r2, #2
 8000a96:	e793      	b.n	80009c0 <sinpwm+0xd8>
 8000a98:	4610      	mov	r0, r2
 8000a9a:	2203      	movs	r2, #3
 8000a9c:	e790      	b.n	80009c0 <sinpwm+0xd8>
 8000a9e:	2204      	movs	r2, #4
 8000aa0:	e78e      	b.n	80009c0 <sinpwm+0xd8>
 8000aa2:	4610      	mov	r0, r2
 8000aa4:	2205      	movs	r2, #5
 8000aa6:	e78b      	b.n	80009c0 <sinpwm+0xd8>
 8000aa8:	2206      	movs	r2, #6
 8000aaa:	e789      	b.n	80009c0 <sinpwm+0xd8>
 8000aac:	08001794 	.word	0x08001794
 8000ab0:	080017d4 	.word	0x080017d4
 8000ab4:	fffffe0c 	.word	0xfffffe0c

08000ab8 <svpwm>:
 8000ab8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000aba:	b091      	sub	sp, #68	; 0x44
 8000abc:	46ee      	mov	lr, sp
 8000abe:	468c      	mov	ip, r1
 8000ac0:	4eb8      	ldr	r6, [pc, #736]	; (8000da4 <svpwm+0x2ec>)
 8000ac2:	4604      	mov	r4, r0
 8000ac4:	4615      	mov	r5, r2
 8000ac6:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000ac8:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8000acc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000ad0:	af08      	add	r7, sp, #32
 8000ad2:	3610      	adds	r6, #16
 8000ad4:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 8000ad8:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000ada:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 8000adc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000ae0:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8000ae4:	f8dc 6000 	ldr.w	r6, [ip]
 8000ae8:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8000aec:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000af0:	2b00      	cmp	r3, #0
 8000af2:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 8000af6:	9900      	ldr	r1, [sp, #0]
 8000af8:	dd6f      	ble.n	8000bda <svpwm+0x122>
 8000afa:	18d0      	adds	r0, r2, r3
 8000afc:	1a9b      	subs	r3, r3, r2
 8000afe:	2b00      	cmp	r3, #0
 8000b00:	f000 813f 	beq.w	8000d82 <svpwm+0x2ca>
 8000b04:	9f01      	ldr	r7, [sp, #4]
 8000b06:	dd6c      	ble.n	8000be2 <svpwm+0x12a>
 8000b08:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8000b0c:	4439      	add	r1, r7
 8000b0e:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8000b12:	2b00      	cmp	r3, #0
 8000b14:	f000 8137 	beq.w	8000d86 <svpwm+0x2ce>
 8000b18:	9f02      	ldr	r7, [sp, #8]
 8000b1a:	dd68      	ble.n	8000bee <svpwm+0x136>
 8000b1c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8000b20:	4439      	add	r1, r7
 8000b22:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 8000b26:	2b00      	cmp	r3, #0
 8000b28:	f000 8130 	beq.w	8000d8c <svpwm+0x2d4>
 8000b2c:	9f03      	ldr	r7, [sp, #12]
 8000b2e:	dd64      	ble.n	8000bfa <svpwm+0x142>
 8000b30:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 8000b34:	4439      	add	r1, r7
 8000b36:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 8000b3a:	2b00      	cmp	r3, #0
 8000b3c:	f000 8128 	beq.w	8000d90 <svpwm+0x2d8>
 8000b40:	9f04      	ldr	r7, [sp, #16]
 8000b42:	dd60      	ble.n	8000c06 <svpwm+0x14e>
 8000b44:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8000b48:	4439      	add	r1, r7
 8000b4a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8000b4e:	2b00      	cmp	r3, #0
 8000b50:	f000 8121 	beq.w	8000d96 <svpwm+0x2de>
 8000b54:	9f05      	ldr	r7, [sp, #20]
 8000b56:	dd5c      	ble.n	8000c12 <svpwm+0x15a>
 8000b58:	eb00 1263 	add.w	r2, r0, r3, asr #5
 8000b5c:	4439      	add	r1, r7
 8000b5e:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8000b62:	2b00      	cmp	r3, #0
 8000b64:	f000 8119 	beq.w	8000d9a <svpwm+0x2e2>
 8000b68:	9f06      	ldr	r7, [sp, #24]
 8000b6a:	dd58      	ble.n	8000c1e <svpwm+0x166>
 8000b6c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 8000b70:	4439      	add	r1, r7
 8000b72:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 8000b76:	2b00      	cmp	r3, #0
 8000b78:	f000 8112 	beq.w	8000da0 <svpwm+0x2e8>
 8000b7c:	9a07      	ldr	r2, [sp, #28]
 8000b7e:	bfc7      	ittee	gt
 8000b80:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 8000b84:	1889      	addgt	r1, r1, r2
 8000b86:	1a89      	suble	r1, r1, r2
 8000b88:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 8000b8c:	2207      	movs	r2, #7
 8000b8e:	ab10      	add	r3, sp, #64	; 0x40
 8000b90:	2e00      	cmp	r6, #0
 8000b92:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8000b96:	bfb8      	it	lt
 8000b98:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 8000b9c:	f852 3c20 	ldr.w	r3, [r2, #-32]
 8000ba0:	2900      	cmp	r1, #0
 8000ba2:	fb03 f300 	mul.w	r3, r3, r0
 8000ba6:	bfb8      	it	lt
 8000ba8:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 8000bac:	440d      	add	r5, r1
 8000bae:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000bb2:	eb05 0245 	add.w	r2, r5, r5, lsl #1
 8000bb6:	151b      	asrs	r3, r3, #20
 8000bb8:	1252      	asrs	r2, r2, #9
 8000bba:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 8000bbe:	f102 32ff 	add.w	r2, r2, #4294967295
 8000bc2:	bfc6      	itte	gt
 8000bc4:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
 8000bc8:	2001      	movgt	r0, #1
 8000bca:	2000      	movle	r0, #0
 8000bcc:	2a04      	cmp	r2, #4
 8000bce:	d848      	bhi.n	8000c62 <svpwm+0x1aa>
 8000bd0:	e8df f002 	tbb	[pc, r2]
 8000bd4:	2b9e8164 	.word	0x2b9e8164
 8000bd8:	bb          	.byte	0xbb
 8000bd9:	00          	.byte	0x00
 8000bda:	1ad0      	subs	r0, r2, r3
 8000bdc:	4249      	negs	r1, r1
 8000bde:	4413      	add	r3, r2
 8000be0:	e78d      	b.n	8000afe <svpwm+0x46>
 8000be2:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 8000be6:	1bc9      	subs	r1, r1, r7
 8000be8:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8000bec:	e791      	b.n	8000b12 <svpwm+0x5a>
 8000bee:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8000bf2:	1bc9      	subs	r1, r1, r7
 8000bf4:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 8000bf8:	e795      	b.n	8000b26 <svpwm+0x6e>
 8000bfa:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8000bfe:	1bc9      	subs	r1, r1, r7
 8000c00:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 8000c04:	e799      	b.n	8000b3a <svpwm+0x82>
 8000c06:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8000c0a:	1bc9      	subs	r1, r1, r7
 8000c0c:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8000c10:	e79d      	b.n	8000b4e <svpwm+0x96>
 8000c12:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 8000c16:	1bc9      	subs	r1, r1, r7
 8000c18:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8000c1c:	e7a1      	b.n	8000b62 <svpwm+0xaa>
 8000c1e:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8000c22:	1bc9      	subs	r1, r1, r7
 8000c24:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8000c28:	e7a5      	b.n	8000b76 <svpwm+0xbe>
 8000c2a:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
 8000c2e:	4e5e      	ldr	r6, [pc, #376]	; (8000da8 <svpwm+0x2f0>)
 8000c30:	3204      	adds	r2, #4
 8000c32:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000c36:	3556      	adds	r5, #86	; 0x56
 8000c38:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000c3c:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000c40:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000c44:	fb01 f103 	mul.w	r1, r1, r3
 8000c48:	fb02 f203 	mul.w	r2, r2, r3
 8000c4c:	1289      	asrs	r1, r1, #10
 8000c4e:	1293      	asrs	r3, r2, #10
 8000c50:	424a      	negs	r2, r1
 8000c52:	1ad2      	subs	r2, r2, r3
 8000c54:	1a5d      	subs	r5, r3, r1
 8000c56:	440b      	add	r3, r1
 8000c58:	6062      	str	r2, [r4, #4]
 8000c5a:	6025      	str	r5, [r4, #0]
 8000c5c:	60a3      	str	r3, [r4, #8]
 8000c5e:	b011      	add	sp, #68	; 0x44
 8000c60:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000c62:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
 8000c66:	4e50      	ldr	r6, [pc, #320]	; (8000da8 <svpwm+0x2f0>)
 8000c68:	3202      	adds	r2, #2
 8000c6a:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000c6e:	f505 7540 	add.w	r5, r5, #768	; 0x300
 8000c72:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000c76:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000c7a:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000c7e:	fb01 f103 	mul.w	r1, r1, r3
 8000c82:	fb02 f203 	mul.w	r2, r2, r3
 8000c86:	1289      	asrs	r1, r1, #10
 8000c88:	1293      	asrs	r3, r2, #10
 8000c8a:	424a      	negs	r2, r1
 8000c8c:	1ad2      	subs	r2, r2, r3
 8000c8e:	18cd      	adds	r5, r1, r3
 8000c90:	1a5b      	subs	r3, r3, r1
 8000c92:	60a2      	str	r2, [r4, #8]
 8000c94:	6025      	str	r5, [r4, #0]
 8000c96:	6063      	str	r3, [r4, #4]
 8000c98:	b011      	add	sp, #68	; 0x44
 8000c9a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000c9c:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
 8000ca0:	4e41      	ldr	r6, [pc, #260]	; (8000da8 <svpwm+0x2f0>)
 8000ca2:	3204      	adds	r2, #4
 8000ca4:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000ca8:	f205 2556 	addw	r5, r5, #598	; 0x256
 8000cac:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000cb0:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000cb4:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000cb8:	fb01 f103 	mul.w	r1, r1, r3
 8000cbc:	fb02 f203 	mul.w	r2, r2, r3
 8000cc0:	1289      	asrs	r1, r1, #10
 8000cc2:	1293      	asrs	r3, r2, #10
 8000cc4:	424a      	negs	r2, r1
 8000cc6:	1ad2      	subs	r2, r2, r3
 8000cc8:	1acd      	subs	r5, r1, r3
 8000cca:	440b      	add	r3, r1
 8000ccc:	60a2      	str	r2, [r4, #8]
 8000cce:	6025      	str	r5, [r4, #0]
 8000cd0:	6063      	str	r3, [r4, #4]
 8000cd2:	b011      	add	sp, #68	; 0x44
 8000cd4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000cd6:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
 8000cda:	4e33      	ldr	r6, [pc, #204]	; (8000da8 <svpwm+0x2f0>)
 8000cdc:	320f      	adds	r2, #15
 8000cde:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000ce2:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
 8000ce6:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000cea:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000cee:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000cf2:	fb01 f103 	mul.w	r1, r1, r3
 8000cf6:	fb02 f203 	mul.w	r2, r2, r3
 8000cfa:	1289      	asrs	r1, r1, #10
 8000cfc:	1293      	asrs	r3, r2, #10
 8000cfe:	424a      	negs	r2, r1
 8000d00:	1ad2      	subs	r2, r2, r3
 8000d02:	18cd      	adds	r5, r1, r3
 8000d04:	1a5b      	subs	r3, r3, r1
 8000d06:	e884 0024 	stmia.w	r4, {r2, r5}
 8000d0a:	60a3      	str	r3, [r4, #8]
 8000d0c:	b011      	add	sp, #68	; 0x44
 8000d0e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000d10:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
 8000d14:	4e24      	ldr	r6, [pc, #144]	; (8000da8 <svpwm+0x2f0>)
 8000d16:	320a      	adds	r2, #10
 8000d18:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000d1c:	f505 7580 	add.w	r5, r5, #256	; 0x100
 8000d20:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000d24:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000d28:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000d2c:	fb01 f103 	mul.w	r1, r1, r3
 8000d30:	fb02 f203 	mul.w	r2, r2, r3
 8000d34:	1289      	asrs	r1, r1, #10
 8000d36:	1293      	asrs	r3, r2, #10
 8000d38:	424a      	negs	r2, r1
 8000d3a:	1ad2      	subs	r2, r2, r3
 8000d3c:	1acd      	subs	r5, r1, r3
 8000d3e:	440b      	add	r3, r1
 8000d40:	e884 0024 	stmia.w	r4, {r2, r5}
 8000d44:	60a3      	str	r3, [r4, #8]
 8000d46:	b011      	add	sp, #68	; 0x44
 8000d48:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000d4a:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
 8000d4e:	4916      	ldr	r1, [pc, #88]	; (8000da8 <svpwm+0x2f0>)
 8000d50:	320f      	adds	r2, #15
 8000d52:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000d56:	3d55      	subs	r5, #85	; 0x55
 8000d58:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8000d5c:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000d60:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
 8000d64:	fb02 f203 	mul.w	r2, r2, r3
 8000d68:	fb01 f303 	mul.w	r3, r1, r3
 8000d6c:	1292      	asrs	r2, r2, #10
 8000d6e:	129b      	asrs	r3, r3, #10
 8000d70:	4251      	negs	r1, r2
 8000d72:	18d5      	adds	r5, r2, r3
 8000d74:	1ac9      	subs	r1, r1, r3
 8000d76:	1ad2      	subs	r2, r2, r3
 8000d78:	6061      	str	r1, [r4, #4]
 8000d7a:	6025      	str	r5, [r4, #0]
 8000d7c:	60a2      	str	r2, [r4, #8]
 8000d7e:	b011      	add	sp, #68	; 0x44
 8000d80:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000d82:	461a      	mov	r2, r3
 8000d84:	e703      	b.n	8000b8e <svpwm+0xd6>
 8000d86:	4610      	mov	r0, r2
 8000d88:	2201      	movs	r2, #1
 8000d8a:	e700      	b.n	8000b8e <svpwm+0xd6>
 8000d8c:	2202      	movs	r2, #2
 8000d8e:	e6fe      	b.n	8000b8e <svpwm+0xd6>
 8000d90:	4610      	mov	r0, r2
 8000d92:	2203      	movs	r2, #3
 8000d94:	e6fb      	b.n	8000b8e <svpwm+0xd6>
 8000d96:	2204      	movs	r2, #4
 8000d98:	e6f9      	b.n	8000b8e <svpwm+0xd6>
 8000d9a:	4610      	mov	r0, r2
 8000d9c:	2205      	movs	r2, #5
 8000d9e:	e6f6      	b.n	8000b8e <svpwm+0xd6>
 8000da0:	2206      	movs	r2, #6
 8000da2:	e6f4      	b.n	8000b8e <svpwm+0xd6>
 8000da4:	08001794 	.word	0x08001794
 8000da8:	080017d4 	.word	0x080017d4

08000dac <encoder_init>:
 8000dac:	4b01      	ldr	r3, [pc, #4]	; (8000db4 <encoder_init+0x8>)
 8000dae:	6018      	str	r0, [r3, #0]
 8000db0:	6058      	str	r0, [r3, #4]
 8000db2:	4770      	bx	lr
 8000db4:	20000258 	.word	0x20000258

08000db8 <get_speed>:
 8000db8:	b430      	push	{r4, r5}
 8000dba:	4c16      	ldr	r4, [pc, #88]	; (8000e14 <get_speed+0x5c>)
 8000dbc:	6862      	ldr	r2, [r4, #4]
 8000dbe:	6823      	ldr	r3, [r4, #0]
 8000dc0:	1a82      	subs	r2, r0, r2
 8000dc2:	ea82 75e2 	eor.w	r5, r2, r2, asr #31
 8000dc6:	eba5 75e2 	sub.w	r5, r5, r2, asr #31
 8000dca:	f5b5 7f7a 	cmp.w	r5, #1000	; 0x3e8
 8000dce:	6063      	str	r3, [r4, #4]
 8000dd0:	6020      	str	r0, [r4, #0]
 8000dd2:	eba0 0303 	sub.w	r3, r0, r3
 8000dd6:	dd05      	ble.n	8000de4 <get_speed+0x2c>
 8000dd8:	2a00      	cmp	r2, #0
 8000dda:	bfb4      	ite	lt
 8000ddc:	f502 5280 	addlt.w	r2, r2, #4096	; 0x1000
 8000de0:	f5a2 5280 	subge.w	r2, r2, #4096	; 0x1000
 8000de4:	ea83 70e3 	eor.w	r0, r3, r3, asr #31
 8000de8:	eba0 70e3 	sub.w	r0, r0, r3, asr #31
 8000dec:	f5b0 7f7a 	cmp.w	r0, #1000	; 0x3e8
 8000df0:	dd05      	ble.n	8000dfe <get_speed+0x46>
 8000df2:	2b00      	cmp	r3, #0
 8000df4:	bfb4      	ite	lt
 8000df6:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
 8000dfa:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
 8000dfe:	4806      	ldr	r0, [pc, #24]	; (8000e18 <get_speed+0x60>)
 8000e00:	1052      	asrs	r2, r2, #1
 8000e02:	fb00 f002 	mul.w	r0, r0, r2
 8000e06:	680c      	ldr	r4, [r1, #0]
 8000e08:	1300      	asrs	r0, r0, #12
 8000e0a:	4423      	add	r3, r4
 8000e0c:	600b      	str	r3, [r1, #0]
 8000e0e:	bc30      	pop	{r4, r5}
 8000e10:	4770      	bx	lr
 8000e12:	bf00      	nop
 8000e14:	20000258 	.word	0x20000258
 8000e18:	0002ae7c 	.word	0x0002ae7c

08000e1c <mfilter>:
 8000e1c:	b430      	push	{r4, r5}
 8000e1e:	4605      	mov	r5, r0
 8000e20:	4a06      	ldr	r2, [pc, #24]	; (8000e3c <mfilter+0x20>)
 8000e22:	6893      	ldr	r3, [r2, #8]
 8000e24:	3301      	adds	r3, #1
 8000e26:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000e2a:	eb02 0483 	add.w	r4, r2, r3, lsl #2
 8000e2e:	68e0      	ldr	r0, [r4, #12]
 8000e30:	6093      	str	r3, [r2, #8]
 8000e32:	1a08      	subs	r0, r1, r0
 8000e34:	4428      	add	r0, r5
 8000e36:	60e5      	str	r5, [r4, #12]
 8000e38:	bc30      	pop	{r4, r5}
 8000e3a:	4770      	bx	lr
 8000e3c:	20000258 	.word	0x20000258

08000e40 <rfilter1>:
 8000e40:	b470      	push	{r4, r5, r6}
 8000e42:	f240 74c6 	movw	r4, #1990	; 0x7c6
 8000e46:	4b12      	ldr	r3, [pc, #72]	; (8000e90 <rfilter1+0x50>)
 8000e48:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
 8000e4c:	f853 6cec 	ldr.w	r6, [r3, #-236]
 8000e50:	f853 1ce4 	ldr.w	r1, [r3, #-228]
 8000e54:	fb04 f406 	mul.w	r4, r4, r6
 8000e58:	fb02 4201 	mla	r2, r2, r1, r4
 8000e5c:	490d      	ldr	r1, [pc, #52]	; (8000e94 <rfilter1+0x54>)
 8000e5e:	f853 5ce8 	ldr.w	r5, [r3, #-232]
 8000e62:	fb01 2200 	mla	r2, r1, r0, r2
 8000e66:	4c0c      	ldr	r4, [pc, #48]	; (8000e98 <rfilter1+0x58>)
 8000e68:	f853 1ce0 	ldr.w	r1, [r3, #-224]
 8000e6c:	fb04 2205 	mla	r2, r4, r5, r2
 8000e70:	4c0a      	ldr	r4, [pc, #40]	; (8000e9c <rfilter1+0x5c>)
 8000e72:	f843 6ce4 	str.w	r6, [r3, #-228]
 8000e76:	fb04 2201 	mla	r2, r4, r1, r2
 8000e7a:	1291      	asrs	r1, r2, #10
 8000e7c:	f843 0ce8 	str.w	r0, [r3, #-232]
 8000e80:	f843 5ce0 	str.w	r5, [r3, #-224]
 8000e84:	1490      	asrs	r0, r2, #18
 8000e86:	f843 1cec 	str.w	r1, [r3, #-236]
 8000e8a:	bc70      	pop	{r4, r5, r6}
 8000e8c:	4770      	bx	lr
 8000e8e:	bf00      	nop
 8000e90:	20001350 	.word	0x20001350
 8000e94:	0003f0a4 	.word	0x0003f0a4
 8000e98:	fff83a2e 	.word	0xfff83a2e
 8000e9c:	0003dc29 	.word	0x0003dc29

08000ea0 <rfilter2>:
 8000ea0:	b470      	push	{r4, r5, r6}
 8000ea2:	f240 748a 	movw	r4, #1930	; 0x78a
 8000ea6:	4b11      	ldr	r3, [pc, #68]	; (8000eec <rfilter2+0x4c>)
 8000ea8:	4a11      	ldr	r2, [pc, #68]	; (8000ef0 <rfilter2+0x50>)
 8000eaa:	f853 6cdc 	ldr.w	r6, [r3, #-220]
 8000eae:	f853 1cd4 	ldr.w	r1, [r3, #-212]
 8000eb2:	fb04 f406 	mul.w	r4, r4, r6
 8000eb6:	fb02 4201 	mla	r2, r2, r1, r4
 8000eba:	490e      	ldr	r1, [pc, #56]	; (8000ef4 <rfilter2+0x54>)
 8000ebc:	f853 5cd8 	ldr.w	r5, [r3, #-216]
 8000ec0:	fb01 2200 	mla	r2, r1, r0, r2
 8000ec4:	4c0c      	ldr	r4, [pc, #48]	; (8000ef8 <rfilter2+0x58>)
 8000ec6:	f853 1cd0 	ldr.w	r1, [r3, #-208]
 8000eca:	fb04 2205 	mla	r2, r4, r5, r2
 8000ece:	4c0b      	ldr	r4, [pc, #44]	; (8000efc <rfilter2+0x5c>)
 8000ed0:	f843 6cd4 	str.w	r6, [r3, #-212]
 8000ed4:	fb04 2201 	mla	r2, r4, r1, r2
 8000ed8:	1291      	asrs	r1, r2, #10
 8000eda:	f843 0cd8 	str.w	r0, [r3, #-216]
 8000ede:	f843 5cd0 	str.w	r5, [r3, #-208]
 8000ee2:	1490      	asrs	r0, r2, #18
 8000ee4:	f843 1cdc 	str.w	r1, [r3, #-220]
 8000ee8:	bc70      	pop	{r4, r5, r6}
 8000eea:	4770      	bx	lr
 8000eec:	20001350 	.word	0x20001350
 8000ef0:	fffffc66 	.word	0xfffffc66
 8000ef4:	0003e3d7 	.word	0x0003e3d7
 8000ef8:	fff8767b 	.word	0xfff8767b
 8000efc:	0003b5c3 	.word	0x0003b5c3

08000f00 <adc_init>:
 8000f00:	b480      	push	{r7}
 8000f02:	af00      	add	r7, sp, #0
 8000f04:	4a10      	ldr	r2, [pc, #64]	; (8000f48 <adc_init+0x48>)
 8000f06:	4b10      	ldr	r3, [pc, #64]	; (8000f48 <adc_init+0x48>)
 8000f08:	69db      	ldr	r3, [r3, #28]
 8000f0a:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000f0e:	61d3      	str	r3, [r2, #28]
 8000f10:	4b0d      	ldr	r3, [pc, #52]	; (8000f48 <adc_init+0x48>)
 8000f12:	f242 0220 	movw	r2, #8224	; 0x2020
 8000f16:	615a      	str	r2, [r3, #20]
 8000f18:	4b0c      	ldr	r3, [pc, #48]	; (8000f4c <adc_init+0x4c>)
 8000f1a:	2200      	movs	r2, #0
 8000f1c:	601a      	str	r2, [r3, #0]
 8000f1e:	4a0b      	ldr	r2, [pc, #44]	; (8000f4c <adc_init+0x4c>)
 8000f20:	4b0a      	ldr	r3, [pc, #40]	; (8000f4c <adc_init+0x4c>)
 8000f22:	681b      	ldr	r3, [r3, #0]
 8000f24:	f443 7301 	orr.w	r3, r3, #516	; 0x204
 8000f28:	f043 0301 	orr.w	r3, r3, #1
 8000f2c:	6013      	str	r3, [r2, #0]
 8000f2e:	4a07      	ldr	r2, [pc, #28]	; (8000f4c <adc_init+0x4c>)
 8000f30:	4b06      	ldr	r3, [pc, #24]	; (8000f4c <adc_init+0x4c>)
 8000f32:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8000f34:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
 8000f38:	6293      	str	r3, [r2, #40]	; 0x28
 8000f3a:	4b04      	ldr	r3, [pc, #16]	; (8000f4c <adc_init+0x4c>)
 8000f3c:	2210      	movs	r2, #16
 8000f3e:	621a      	str	r2, [r3, #32]
 8000f40:	bf00      	nop
 8000f42:	46bd      	mov	sp, r7
 8000f44:	bc80      	pop	{r7}
 8000f46:	4770      	bx	lr
 8000f48:	40020000 	.word	0x40020000
 8000f4c:	40088000 	.word	0x40088000

08000f50 <dma_init>:
 8000f50:	b480      	push	{r7}
 8000f52:	af00      	add	r7, sp, #0
 8000f54:	4a17      	ldr	r2, [pc, #92]	; (8000fb4 <dma_init+0x64>)
 8000f56:	4b17      	ldr	r3, [pc, #92]	; (8000fb4 <dma_init+0x64>)
 8000f58:	69db      	ldr	r3, [r3, #28]
 8000f5a:	f043 0320 	orr.w	r3, r3, #32
 8000f5e:	61d3      	str	r3, [r2, #28]
 8000f60:	4b15      	ldr	r3, [pc, #84]	; (8000fb8 <dma_init+0x68>)
 8000f62:	4a16      	ldr	r2, [pc, #88]	; (8000fbc <dma_init+0x6c>)
 8000f64:	609a      	str	r2, [r3, #8]
 8000f66:	4b14      	ldr	r3, [pc, #80]	; (8000fb8 <dma_init+0x68>)
 8000f68:	f04f 32ff 	mov.w	r2, #4294967295
 8000f6c:	62da      	str	r2, [r3, #44]	; 0x2c
 8000f6e:	4b12      	ldr	r3, [pc, #72]	; (8000fb8 <dma_init+0x68>)
 8000f70:	f04f 32ff 	mov.w	r2, #4294967295
 8000f74:	621a      	str	r2, [r3, #32]
 8000f76:	4b10      	ldr	r3, [pc, #64]	; (8000fb8 <dma_init+0x68>)
 8000f78:	f04f 32ff 	mov.w	r2, #4294967295
 8000f7c:	635a      	str	r2, [r3, #52]	; 0x34
 8000f7e:	4b0e      	ldr	r3, [pc, #56]	; (8000fb8 <dma_init+0x68>)
 8000f80:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000f84:	61da      	str	r2, [r3, #28]
 8000f86:	4b0c      	ldr	r3, [pc, #48]	; (8000fb8 <dma_init+0x68>)
 8000f88:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000f8c:	625a      	str	r2, [r3, #36]	; 0x24
 8000f8e:	4b0a      	ldr	r3, [pc, #40]	; (8000fb8 <dma_init+0x68>)
 8000f90:	2201      	movs	r2, #1
 8000f92:	605a      	str	r2, [r3, #4]
 8000f94:	4b09      	ldr	r3, [pc, #36]	; (8000fbc <dma_init+0x6c>)
 8000f96:	4a0a      	ldr	r2, [pc, #40]	; (8000fc0 <dma_init+0x70>)
 8000f98:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
 8000f9c:	4a09      	ldr	r2, [pc, #36]	; (8000fc4 <dma_init+0x74>)
 8000f9e:	4b07      	ldr	r3, [pc, #28]	; (8000fbc <dma_init+0x6c>)
 8000fa0:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 8000fa4:	4b05      	ldr	r3, [pc, #20]	; (8000fbc <dma_init+0x6c>)
 8000fa6:	4a08      	ldr	r2, [pc, #32]	; (8000fc8 <dma_init+0x78>)
 8000fa8:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8000fac:	bf00      	nop
 8000fae:	46bd      	mov	sp, r7
 8000fb0:	bc80      	pop	{r7}
 8000fb2:	4770      	bx	lr
 8000fb4:	40020000 	.word	0x40020000
 8000fb8:	40028000 	.word	0x40028000
 8000fbc:	20000004 	.word	0x20000004
 8000fc0:	40088018 	.word	0x40088018
 8000fc4:	20000208 	.word	0x20000208
 8000fc8:	ae000011 	.word	0xae000011

08000fcc <adc_dma_init>:
 8000fcc:	b580      	push	{r7, lr}
 8000fce:	af00      	add	r7, sp, #0
 8000fd0:	f7ff ff96 	bl	8000f00 <adc_init>
 8000fd4:	f7ff ffbc 	bl	8000f50 <dma_init>
 8000fd8:	bf00      	nop
 8000fda:	bd80      	pop	{r7, pc}

08000fdc <adc_dma_start>:
 8000fdc:	b480      	push	{r7}
 8000fde:	af00      	add	r7, sp, #0
 8000fe0:	4a06      	ldr	r2, [pc, #24]	; (8000ffc <adc_dma_start+0x20>)
 8000fe2:	4b06      	ldr	r3, [pc, #24]	; (8000ffc <adc_dma_start+0x20>)
 8000fe4:	681b      	ldr	r3, [r3, #0]
 8000fe6:	f043 0308 	orr.w	r3, r3, #8
 8000fea:	6013      	str	r3, [r2, #0]
 8000fec:	4b04      	ldr	r3, [pc, #16]	; (8001000 <adc_dma_start+0x24>)
 8000fee:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000ff2:	629a      	str	r2, [r3, #40]	; 0x28
 8000ff4:	bf00      	nop
 8000ff6:	46bd      	mov	sp, r7
 8000ff8:	bc80      	pop	{r7}
 8000ffa:	4770      	bx	lr
 8000ffc:	40088000 	.word	0x40088000
 8001000:	40028000 	.word	0x40028000

08001004 <adc_dma_wait>:
 8001004:	b480      	push	{r7}
 8001006:	af00      	add	r7, sp, #0
 8001008:	bf00      	nop
 800100a:	4b0a      	ldr	r3, [pc, #40]	; (8001034 <adc_dma_wait+0x30>)
 800100c:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001010:	f003 0307 	and.w	r3, r3, #7
 8001014:	2b00      	cmp	r3, #0
 8001016:	d1f8      	bne.n	800100a <adc_dma_wait+0x6>
 8001018:	4a07      	ldr	r2, [pc, #28]	; (8001038 <adc_dma_wait+0x34>)
 800101a:	4b07      	ldr	r3, [pc, #28]	; (8001038 <adc_dma_wait+0x34>)
 800101c:	681b      	ldr	r3, [r3, #0]
 800101e:	f023 0308 	bic.w	r3, r3, #8
 8001022:	6013      	str	r3, [r2, #0]
 8001024:	4b03      	ldr	r3, [pc, #12]	; (8001034 <adc_dma_wait+0x30>)
 8001026:	4a05      	ldr	r2, [pc, #20]	; (800103c <adc_dma_wait+0x38>)
 8001028:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 800102c:	bf00      	nop
 800102e:	46bd      	mov	sp, r7
 8001030:	bc80      	pop	{r7}
 8001032:	4770      	bx	lr
 8001034:	20000004 	.word	0x20000004
 8001038:	40088000 	.word	0x40088000
 800103c:	ae000011 	.word	0xae000011

08001040 <NVIC_EnableIRQ>:
 8001040:	b480      	push	{r7}
 8001042:	b083      	sub	sp, #12
 8001044:	af00      	add	r7, sp, #0
 8001046:	4603      	mov	r3, r0
 8001048:	71fb      	strb	r3, [r7, #7]
 800104a:	4908      	ldr	r1, [pc, #32]	; (800106c <NVIC_EnableIRQ+0x2c>)
 800104c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001050:	095b      	lsrs	r3, r3, #5
 8001052:	79fa      	ldrb	r2, [r7, #7]
 8001054:	f002 021f 	and.w	r2, r2, #31
 8001058:	2001      	movs	r0, #1
 800105a:	fa00 f202 	lsl.w	r2, r0, r2
 800105e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001062:	bf00      	nop
 8001064:	370c      	adds	r7, #12
 8001066:	46bd      	mov	sp, r7
 8001068:	bc80      	pop	{r7}
 800106a:	4770      	bx	lr
 800106c:	e000e100 	.word	0xe000e100

08001070 <NVIC_SetPriority>:
 8001070:	b480      	push	{r7}
 8001072:	b083      	sub	sp, #12
 8001074:	af00      	add	r7, sp, #0
 8001076:	4603      	mov	r3, r0
 8001078:	6039      	str	r1, [r7, #0]
 800107a:	71fb      	strb	r3, [r7, #7]
 800107c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001080:	2b00      	cmp	r3, #0
 8001082:	da0b      	bge.n	800109c <NVIC_SetPriority+0x2c>
 8001084:	490d      	ldr	r1, [pc, #52]	; (80010bc <NVIC_SetPriority+0x4c>)
 8001086:	79fb      	ldrb	r3, [r7, #7]
 8001088:	f003 030f 	and.w	r3, r3, #15
 800108c:	3b04      	subs	r3, #4
 800108e:	683a      	ldr	r2, [r7, #0]
 8001090:	b2d2      	uxtb	r2, r2
 8001092:	0152      	lsls	r2, r2, #5
 8001094:	b2d2      	uxtb	r2, r2
 8001096:	440b      	add	r3, r1
 8001098:	761a      	strb	r2, [r3, #24]
 800109a:	e009      	b.n	80010b0 <NVIC_SetPriority+0x40>
 800109c:	4908      	ldr	r1, [pc, #32]	; (80010c0 <NVIC_SetPriority+0x50>)
 800109e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80010a2:	683a      	ldr	r2, [r7, #0]
 80010a4:	b2d2      	uxtb	r2, r2
 80010a6:	0152      	lsls	r2, r2, #5
 80010a8:	b2d2      	uxtb	r2, r2
 80010aa:	440b      	add	r3, r1
 80010ac:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80010b0:	bf00      	nop
 80010b2:	370c      	adds	r7, #12
 80010b4:	46bd      	mov	sp, r7
 80010b6:	bc80      	pop	{r7}
 80010b8:	4770      	bx	lr
 80010ba:	bf00      	nop
 80010bc:	e000ed00 	.word	0xe000ed00
 80010c0:	e000e100 	.word	0xe000e100

080010c4 <SysTick_Config>:
 80010c4:	b580      	push	{r7, lr}
 80010c6:	b082      	sub	sp, #8
 80010c8:	af00      	add	r7, sp, #0
 80010ca:	6078      	str	r0, [r7, #4]
 80010cc:	687b      	ldr	r3, [r7, #4]
 80010ce:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 80010d2:	d301      	bcc.n	80010d8 <SysTick_Config+0x14>
 80010d4:	2301      	movs	r3, #1
 80010d6:	e011      	b.n	80010fc <SysTick_Config+0x38>
 80010d8:	4a0a      	ldr	r2, [pc, #40]	; (8001104 <SysTick_Config+0x40>)
 80010da:	687b      	ldr	r3, [r7, #4]
 80010dc:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 80010e0:	3b01      	subs	r3, #1
 80010e2:	6053      	str	r3, [r2, #4]
 80010e4:	2107      	movs	r1, #7
 80010e6:	f04f 30ff 	mov.w	r0, #4294967295
 80010ea:	f7ff ffc1 	bl	8001070 <NVIC_SetPriority>
 80010ee:	4b05      	ldr	r3, [pc, #20]	; (8001104 <SysTick_Config+0x40>)
 80010f0:	2200      	movs	r2, #0
 80010f2:	609a      	str	r2, [r3, #8]
 80010f4:	4b03      	ldr	r3, [pc, #12]	; (8001104 <SysTick_Config+0x40>)
 80010f6:	2207      	movs	r2, #7
 80010f8:	601a      	str	r2, [r3, #0]
 80010fa:	2300      	movs	r3, #0
 80010fc:	4618      	mov	r0, r3
 80010fe:	3708      	adds	r7, #8
 8001100:	46bd      	mov	sp, r7
 8001102:	bd80      	pop	{r7, pc}
 8001104:	e000e010 	.word	0xe000e010

08001108 <PortConfig>:
 8001108:	b480      	push	{r7}
 800110a:	af00      	add	r7, sp, #0
 800110c:	4a52      	ldr	r2, [pc, #328]	; (8001258 <PortConfig+0x150>)
 800110e:	4b52      	ldr	r3, [pc, #328]	; (8001258 <PortConfig+0x150>)
 8001110:	69db      	ldr	r3, [r3, #28]
 8001112:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8001116:	61d3      	str	r3, [r2, #28]
 8001118:	4b50      	ldr	r3, [pc, #320]	; (800125c <PortConfig+0x154>)
 800111a:	2200      	movs	r2, #0
 800111c:	609a      	str	r2, [r3, #8]
 800111e:	4b4f      	ldr	r3, [pc, #316]	; (800125c <PortConfig+0x154>)
 8001120:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8001124:	60da      	str	r2, [r3, #12]
 8001126:	4b4d      	ldr	r3, [pc, #308]	; (800125c <PortConfig+0x154>)
 8001128:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800112c:	605a      	str	r2, [r3, #4]
 800112e:	4b4b      	ldr	r3, [pc, #300]	; (800125c <PortConfig+0x154>)
 8001130:	f04f 32ff 	mov.w	r2, #4294967295
 8001134:	619a      	str	r2, [r3, #24]
 8001136:	4b49      	ldr	r3, [pc, #292]	; (800125c <PortConfig+0x154>)
 8001138:	2200      	movs	r2, #0
 800113a:	601a      	str	r2, [r3, #0]
 800113c:	4a46      	ldr	r2, [pc, #280]	; (8001258 <PortConfig+0x150>)
 800113e:	4b46      	ldr	r3, [pc, #280]	; (8001258 <PortConfig+0x150>)
 8001140:	69db      	ldr	r3, [r3, #28]
 8001142:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 8001146:	61d3      	str	r3, [r2, #28]
 8001148:	4a45      	ldr	r2, [pc, #276]	; (8001260 <PortConfig+0x158>)
 800114a:	4b45      	ldr	r3, [pc, #276]	; (8001260 <PortConfig+0x158>)
 800114c:	689b      	ldr	r3, [r3, #8]
 800114e:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
 8001152:	6093      	str	r3, [r2, #8]
 8001154:	4a42      	ldr	r2, [pc, #264]	; (8001260 <PortConfig+0x158>)
 8001156:	4b42      	ldr	r3, [pc, #264]	; (8001260 <PortConfig+0x158>)
 8001158:	689b      	ldr	r3, [r3, #8]
 800115a:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
 800115e:	6093      	str	r3, [r2, #8]
 8001160:	4a3f      	ldr	r2, [pc, #252]	; (8001260 <PortConfig+0x158>)
 8001162:	4b3f      	ldr	r3, [pc, #252]	; (8001260 <PortConfig+0x158>)
 8001164:	68db      	ldr	r3, [r3, #12]
 8001166:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
 800116a:	60d3      	str	r3, [r2, #12]
 800116c:	4a3c      	ldr	r2, [pc, #240]	; (8001260 <PortConfig+0x158>)
 800116e:	4b3c      	ldr	r3, [pc, #240]	; (8001260 <PortConfig+0x158>)
 8001170:	699b      	ldr	r3, [r3, #24]
 8001172:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
 8001176:	6193      	str	r3, [r2, #24]
 8001178:	4a39      	ldr	r2, [pc, #228]	; (8001260 <PortConfig+0x158>)
 800117a:	4b39      	ldr	r3, [pc, #228]	; (8001260 <PortConfig+0x158>)
 800117c:	685b      	ldr	r3, [r3, #4]
 800117e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8001182:	6053      	str	r3, [r2, #4]
 8001184:	4a36      	ldr	r2, [pc, #216]	; (8001260 <PortConfig+0x158>)
 8001186:	4b36      	ldr	r3, [pc, #216]	; (8001260 <PortConfig+0x158>)
 8001188:	685b      	ldr	r3, [r3, #4]
 800118a:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 800118e:	6053      	str	r3, [r2, #4]
 8001190:	4a33      	ldr	r2, [pc, #204]	; (8001260 <PortConfig+0x158>)
 8001192:	4b33      	ldr	r3, [pc, #204]	; (8001260 <PortConfig+0x158>)
 8001194:	68db      	ldr	r3, [r3, #12]
 8001196:	ea6f 4313 	mvn.w	r3, r3, lsr #16
 800119a:	ea6f 4303 	mvn.w	r3, r3, lsl #16
 800119e:	60d3      	str	r3, [r2, #12]
 80011a0:	4a2f      	ldr	r2, [pc, #188]	; (8001260 <PortConfig+0x158>)
 80011a2:	4b2f      	ldr	r3, [pc, #188]	; (8001260 <PortConfig+0x158>)
 80011a4:	699b      	ldr	r3, [r3, #24]
 80011a6:	f443 0373 	orr.w	r3, r3, #15925248	; 0xf30000
 80011aa:	f443 537f 	orr.w	r3, r3, #16320	; 0x3fc0
 80011ae:	6193      	str	r3, [r2, #24]
 80011b0:	4a2b      	ldr	r2, [pc, #172]	; (8001260 <PortConfig+0x158>)
 80011b2:	4b2b      	ldr	r3, [pc, #172]	; (8001260 <PortConfig+0x158>)
 80011b4:	685b      	ldr	r3, [r3, #4]
 80011b6:	f443 6357 	orr.w	r3, r3, #3440	; 0xd70
 80011ba:	f043 0308 	orr.w	r3, r3, #8
 80011be:	6053      	str	r3, [r2, #4]
 80011c0:	4a27      	ldr	r2, [pc, #156]	; (8001260 <PortConfig+0x158>)
 80011c2:	4b27      	ldr	r3, [pc, #156]	; (8001260 <PortConfig+0x158>)
 80011c4:	695b      	ldr	r3, [r3, #20]
 80011c6:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
 80011ca:	6153      	str	r3, [r2, #20]
 80011cc:	4a22      	ldr	r2, [pc, #136]	; (8001258 <PortConfig+0x150>)
 80011ce:	4b22      	ldr	r3, [pc, #136]	; (8001258 <PortConfig+0x150>)
 80011d0:	69db      	ldr	r3, [r3, #28]
 80011d2:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 80011d6:	61d3      	str	r3, [r2, #28]
 80011d8:	4b22      	ldr	r3, [pc, #136]	; (8001264 <PortConfig+0x15c>)
 80011da:	4a23      	ldr	r2, [pc, #140]	; (8001268 <PortConfig+0x160>)
 80011dc:	609a      	str	r2, [r3, #8]
 80011de:	4b21      	ldr	r3, [pc, #132]	; (8001264 <PortConfig+0x15c>)
 80011e0:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80011e4:	60da      	str	r2, [r3, #12]
 80011e6:	4b1f      	ldr	r3, [pc, #124]	; (8001264 <PortConfig+0x15c>)
 80011e8:	f04f 32ff 	mov.w	r2, #4294967295
 80011ec:	619a      	str	r2, [r3, #24]
 80011ee:	4b1d      	ldr	r3, [pc, #116]	; (8001264 <PortConfig+0x15c>)
 80011f0:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80011f4:	605a      	str	r2, [r3, #4]
 80011f6:	4a1b      	ldr	r2, [pc, #108]	; (8001264 <PortConfig+0x15c>)
 80011f8:	4b1a      	ldr	r3, [pc, #104]	; (8001264 <PortConfig+0x15c>)
 80011fa:	681b      	ldr	r3, [r3, #0]
 80011fc:	f023 0303 	bic.w	r3, r3, #3
 8001200:	6013      	str	r3, [r2, #0]
 8001202:	4a18      	ldr	r2, [pc, #96]	; (8001264 <PortConfig+0x15c>)
 8001204:	4b17      	ldr	r3, [pc, #92]	; (8001264 <PortConfig+0x15c>)
 8001206:	681b      	ldr	r3, [r3, #0]
 8001208:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 800120c:	6013      	str	r3, [r2, #0]
 800120e:	4a12      	ldr	r2, [pc, #72]	; (8001258 <PortConfig+0x150>)
 8001210:	4b11      	ldr	r3, [pc, #68]	; (8001258 <PortConfig+0x150>)
 8001212:	69db      	ldr	r3, [r3, #28]
 8001214:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 8001218:	61d3      	str	r3, [r2, #28]
 800121a:	4b14      	ldr	r3, [pc, #80]	; (800126c <PortConfig+0x164>)
 800121c:	2200      	movs	r2, #0
 800121e:	609a      	str	r2, [r3, #8]
 8001220:	4a12      	ldr	r2, [pc, #72]	; (800126c <PortConfig+0x164>)
 8001222:	4b12      	ldr	r3, [pc, #72]	; (800126c <PortConfig+0x164>)
 8001224:	685b      	ldr	r3, [r3, #4]
 8001226:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 800122a:	6053      	str	r3, [r2, #4]
 800122c:	4a0f      	ldr	r2, [pc, #60]	; (800126c <PortConfig+0x164>)
 800122e:	4b0f      	ldr	r3, [pc, #60]	; (800126c <PortConfig+0x164>)
 8001230:	68db      	ldr	r3, [r3, #12]
 8001232:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 8001236:	60d3      	str	r3, [r2, #12]
 8001238:	4a0c      	ldr	r2, [pc, #48]	; (800126c <PortConfig+0x164>)
 800123a:	4b0c      	ldr	r3, [pc, #48]	; (800126c <PortConfig+0x164>)
 800123c:	699b      	ldr	r3, [r3, #24]
 800123e:	f043 4370 	orr.w	r3, r3, #4026531840	; 0xf0000000
 8001242:	6193      	str	r3, [r2, #24]
 8001244:	4a09      	ldr	r2, [pc, #36]	; (800126c <PortConfig+0x164>)
 8001246:	4b09      	ldr	r3, [pc, #36]	; (800126c <PortConfig+0x164>)
 8001248:	681b      	ldr	r3, [r3, #0]
 800124a:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 800124e:	6013      	str	r3, [r2, #0]
 8001250:	bf00      	nop
 8001252:	46bd      	mov	sp, r7
 8001254:	bc80      	pop	{r7}
 8001256:	4770      	bx	lr
 8001258:	40020000 	.word	0x40020000
 800125c:	400a8000 	.word	0x400a8000
 8001260:	400b0000 	.word	0x400b0000
 8001264:	400b8000 	.word	0x400b8000
 8001268:	000aaaa0 	.word	0x000aaaa0
 800126c:	400e8000 	.word	0x400e8000

08001270 <ClkConfig>:
 8001270:	b580      	push	{r7, lr}
 8001272:	af00      	add	r7, sp, #0
 8001274:	4a17      	ldr	r2, [pc, #92]	; (80012d4 <ClkConfig+0x64>)
 8001276:	4b17      	ldr	r3, [pc, #92]	; (80012d4 <ClkConfig+0x64>)
 8001278:	689b      	ldr	r3, [r3, #8]
 800127a:	f043 0301 	orr.w	r3, r3, #1
 800127e:	6093      	str	r3, [r2, #8]
 8001280:	bf00      	nop
 8001282:	4b14      	ldr	r3, [pc, #80]	; (80012d4 <ClkConfig+0x64>)
 8001284:	681b      	ldr	r3, [r3, #0]
 8001286:	f003 0304 	and.w	r3, r3, #4
 800128a:	2b00      	cmp	r3, #0
 800128c:	d0f9      	beq.n	8001282 <ClkConfig+0x12>
 800128e:	4b11      	ldr	r3, [pc, #68]	; (80012d4 <ClkConfig+0x64>)
 8001290:	2206      	movs	r2, #6
 8001292:	60da      	str	r2, [r3, #12]
 8001294:	4b0f      	ldr	r3, [pc, #60]	; (80012d4 <ClkConfig+0x64>)
 8001296:	f640 1204 	movw	r2, #2308	; 0x904
 800129a:	605a      	str	r2, [r3, #4]
 800129c:	bf00      	nop
 800129e:	4b0d      	ldr	r3, [pc, #52]	; (80012d4 <ClkConfig+0x64>)
 80012a0:	681b      	ldr	r3, [r3, #0]
 80012a2:	f003 0302 	and.w	r3, r3, #2
 80012a6:	2b00      	cmp	r3, #0
 80012a8:	d0f9      	beq.n	800129e <ClkConfig+0x2e>
 80012aa:	4a0a      	ldr	r2, [pc, #40]	; (80012d4 <ClkConfig+0x64>)
 80012ac:	4b09      	ldr	r3, [pc, #36]	; (80012d4 <ClkConfig+0x64>)
 80012ae:	68db      	ldr	r3, [r3, #12]
 80012b0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80012b4:	60d3      	str	r3, [r2, #12]
 80012b6:	4a08      	ldr	r2, [pc, #32]	; (80012d8 <ClkConfig+0x68>)
 80012b8:	4b07      	ldr	r3, [pc, #28]	; (80012d8 <ClkConfig+0x68>)
 80012ba:	681b      	ldr	r3, [r3, #0]
 80012bc:	f043 0320 	orr.w	r3, r3, #32
 80012c0:	6013      	str	r3, [r2, #0]
 80012c2:	4b06      	ldr	r3, [pc, #24]	; (80012dc <ClkConfig+0x6c>)
 80012c4:	2200      	movs	r2, #0
 80012c6:	601a      	str	r2, [r3, #0]
 80012c8:	4805      	ldr	r0, [pc, #20]	; (80012e0 <ClkConfig+0x70>)
 80012ca:	f7ff fefb 	bl	80010c4 <SysTick_Config>
 80012ce:	bf00      	nop
 80012d0:	bd80      	pop	{r7, pc}
 80012d2:	bf00      	nop
 80012d4:	40020000 	.word	0x40020000
 80012d8:	40018000 	.word	0x40018000
 80012dc:	20001284 	.word	0x20001284
 80012e0:	00013880 	.word	0x00013880

080012e4 <TimerConfig>:
 80012e4:	b580      	push	{r7, lr}
 80012e6:	af00      	add	r7, sp, #0
 80012e8:	4a99      	ldr	r2, [pc, #612]	; (8001550 <TimerConfig+0x26c>)
 80012ea:	4b99      	ldr	r3, [pc, #612]	; (8001550 <TimerConfig+0x26c>)
 80012ec:	69db      	ldr	r3, [r3, #28]
 80012ee:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 80012f2:	61d3      	str	r3, [r2, #28]
 80012f4:	4a96      	ldr	r2, [pc, #600]	; (8001550 <TimerConfig+0x26c>)
 80012f6:	4b96      	ldr	r3, [pc, #600]	; (8001550 <TimerConfig+0x26c>)
 80012f8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80012fa:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 80012fe:	6253      	str	r3, [r2, #36]	; 0x24
 8001300:	4a93      	ldr	r2, [pc, #588]	; (8001550 <TimerConfig+0x26c>)
 8001302:	4b93      	ldr	r3, [pc, #588]	; (8001550 <TimerConfig+0x26c>)
 8001304:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001306:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 800130a:	6253      	str	r3, [r2, #36]	; 0x24
 800130c:	4b91      	ldr	r3, [pc, #580]	; (8001554 <TimerConfig+0x270>)
 800130e:	2200      	movs	r2, #0
 8001310:	601a      	str	r2, [r3, #0]
 8001312:	4b90      	ldr	r3, [pc, #576]	; (8001554 <TimerConfig+0x270>)
 8001314:	224f      	movs	r2, #79	; 0x4f
 8001316:	605a      	str	r2, [r3, #4]
 8001318:	4b8e      	ldr	r3, [pc, #568]	; (8001554 <TimerConfig+0x270>)
 800131a:	f240 32e7 	movw	r2, #999	; 0x3e7
 800131e:	609a      	str	r2, [r3, #8]
 8001320:	4a8c      	ldr	r2, [pc, #560]	; (8001554 <TimerConfig+0x270>)
 8001322:	4b8c      	ldr	r3, [pc, #560]	; (8001554 <TimerConfig+0x270>)
 8001324:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001326:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 800132a:	6253      	str	r3, [r2, #36]	; 0x24
 800132c:	4a89      	ldr	r2, [pc, #548]	; (8001554 <TimerConfig+0x270>)
 800132e:	4b89      	ldr	r3, [pc, #548]	; (8001554 <TimerConfig+0x270>)
 8001330:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8001332:	f043 0302 	orr.w	r3, r3, #2
 8001336:	6593      	str	r3, [r2, #88]	; 0x58
 8001338:	4b86      	ldr	r3, [pc, #536]	; (8001554 <TimerConfig+0x270>)
 800133a:	2201      	movs	r2, #1
 800133c:	60da      	str	r2, [r3, #12]
 800133e:	4a84      	ldr	r2, [pc, #528]	; (8001550 <TimerConfig+0x26c>)
 8001340:	4b83      	ldr	r3, [pc, #524]	; (8001550 <TimerConfig+0x26c>)
 8001342:	69db      	ldr	r3, [r3, #28]
 8001344:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8001348:	61d3      	str	r3, [r2, #28]
 800134a:	4a81      	ldr	r2, [pc, #516]	; (8001550 <TimerConfig+0x26c>)
 800134c:	4b80      	ldr	r3, [pc, #512]	; (8001550 <TimerConfig+0x26c>)
 800134e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001350:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
 8001354:	6253      	str	r3, [r2, #36]	; 0x24
 8001356:	4a7e      	ldr	r2, [pc, #504]	; (8001550 <TimerConfig+0x26c>)
 8001358:	4b7d      	ldr	r3, [pc, #500]	; (8001550 <TimerConfig+0x26c>)
 800135a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800135c:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 8001360:	6253      	str	r3, [r2, #36]	; 0x24
 8001362:	4b7d      	ldr	r3, [pc, #500]	; (8001558 <TimerConfig+0x274>)
 8001364:	2200      	movs	r2, #0
 8001366:	601a      	str	r2, [r3, #0]
 8001368:	4b7b      	ldr	r3, [pc, #492]	; (8001558 <TimerConfig+0x274>)
 800136a:	2202      	movs	r2, #2
 800136c:	605a      	str	r2, [r3, #4]
 800136e:	4b7a      	ldr	r3, [pc, #488]	; (8001558 <TimerConfig+0x274>)
 8001370:	f240 32ff 	movw	r2, #1023	; 0x3ff
 8001374:	609a      	str	r2, [r3, #8]
 8001376:	4b78      	ldr	r3, [pc, #480]	; (8001558 <TimerConfig+0x274>)
 8001378:	2200      	movs	r2, #0
 800137a:	611a      	str	r2, [r3, #16]
 800137c:	4b76      	ldr	r3, [pc, #472]	; (8001558 <TimerConfig+0x274>)
 800137e:	2200      	movs	r2, #0
 8001380:	615a      	str	r2, [r3, #20]
 8001382:	4b75      	ldr	r3, [pc, #468]	; (8001558 <TimerConfig+0x274>)
 8001384:	2200      	movs	r2, #0
 8001386:	619a      	str	r2, [r3, #24]
 8001388:	4b73      	ldr	r3, [pc, #460]	; (8001558 <TimerConfig+0x274>)
 800138a:	f44f 7248 	mov.w	r2, #800	; 0x320
 800138e:	61da      	str	r2, [r3, #28]
 8001390:	4a71      	ldr	r2, [pc, #452]	; (8001558 <TimerConfig+0x274>)
 8001392:	4b71      	ldr	r3, [pc, #452]	; (8001558 <TimerConfig+0x274>)
 8001394:	6a1b      	ldr	r3, [r3, #32]
 8001396:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 800139a:	6213      	str	r3, [r2, #32]
 800139c:	4a6e      	ldr	r2, [pc, #440]	; (8001558 <TimerConfig+0x274>)
 800139e:	4b6e      	ldr	r3, [pc, #440]	; (8001558 <TimerConfig+0x274>)
 80013a0:	6a1b      	ldr	r3, [r3, #32]
 80013a2:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 80013a6:	6213      	str	r3, [r2, #32]
 80013a8:	4a6b      	ldr	r2, [pc, #428]	; (8001558 <TimerConfig+0x274>)
 80013aa:	4b6b      	ldr	r3, [pc, #428]	; (8001558 <TimerConfig+0x274>)
 80013ac:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80013ae:	f023 030f 	bic.w	r3, r3, #15
 80013b2:	6313      	str	r3, [r2, #48]	; 0x30
 80013b4:	4a68      	ldr	r2, [pc, #416]	; (8001558 <TimerConfig+0x274>)
 80013b6:	4b68      	ldr	r3, [pc, #416]	; (8001558 <TimerConfig+0x274>)
 80013b8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80013ba:	f043 030c 	orr.w	r3, r3, #12
 80013be:	6313      	str	r3, [r2, #48]	; 0x30
 80013c0:	4a65      	ldr	r2, [pc, #404]	; (8001558 <TimerConfig+0x274>)
 80013c2:	4b65      	ldr	r3, [pc, #404]	; (8001558 <TimerConfig+0x274>)
 80013c4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80013c6:	f043 0301 	orr.w	r3, r3, #1
 80013ca:	6313      	str	r3, [r2, #48]	; 0x30
 80013cc:	4a62      	ldr	r2, [pc, #392]	; (8001558 <TimerConfig+0x274>)
 80013ce:	4b62      	ldr	r3, [pc, #392]	; (8001558 <TimerConfig+0x274>)
 80013d0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80013d2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80013d6:	6313      	str	r3, [r2, #48]	; 0x30
 80013d8:	4a5f      	ldr	r2, [pc, #380]	; (8001558 <TimerConfig+0x274>)
 80013da:	4b5f      	ldr	r3, [pc, #380]	; (8001558 <TimerConfig+0x274>)
 80013dc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80013de:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 80013e2:	6313      	str	r3, [r2, #48]	; 0x30
 80013e4:	4a5c      	ldr	r2, [pc, #368]	; (8001558 <TimerConfig+0x274>)
 80013e6:	4b5c      	ldr	r3, [pc, #368]	; (8001558 <TimerConfig+0x274>)
 80013e8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80013ea:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80013ee:	6313      	str	r3, [r2, #48]	; 0x30
 80013f0:	4a59      	ldr	r2, [pc, #356]	; (8001558 <TimerConfig+0x274>)
 80013f2:	4b59      	ldr	r3, [pc, #356]	; (8001558 <TimerConfig+0x274>)
 80013f4:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 80013f6:	f043 0308 	orr.w	r3, r3, #8
 80013fa:	6613      	str	r3, [r2, #96]	; 0x60
 80013fc:	4a56      	ldr	r2, [pc, #344]	; (8001558 <TimerConfig+0x274>)
 80013fe:	4b56      	ldr	r3, [pc, #344]	; (8001558 <TimerConfig+0x274>)
 8001400:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001402:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 8001406:	6253      	str	r3, [r2, #36]	; 0x24
 8001408:	4a53      	ldr	r2, [pc, #332]	; (8001558 <TimerConfig+0x274>)
 800140a:	4b53      	ldr	r3, [pc, #332]	; (8001558 <TimerConfig+0x274>)
 800140c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800140e:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 8001412:	6253      	str	r3, [r2, #36]	; 0x24
 8001414:	4a50      	ldr	r2, [pc, #320]	; (8001558 <TimerConfig+0x274>)
 8001416:	4b50      	ldr	r3, [pc, #320]	; (8001558 <TimerConfig+0x274>)
 8001418:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800141a:	f023 030f 	bic.w	r3, r3, #15
 800141e:	6353      	str	r3, [r2, #52]	; 0x34
 8001420:	4a4d      	ldr	r2, [pc, #308]	; (8001558 <TimerConfig+0x274>)
 8001422:	4b4d      	ldr	r3, [pc, #308]	; (8001558 <TimerConfig+0x274>)
 8001424:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001426:	f043 030c 	orr.w	r3, r3, #12
 800142a:	6353      	str	r3, [r2, #52]	; 0x34
 800142c:	4a4a      	ldr	r2, [pc, #296]	; (8001558 <TimerConfig+0x274>)
 800142e:	4b4a      	ldr	r3, [pc, #296]	; (8001558 <TimerConfig+0x274>)
 8001430:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001432:	f043 0301 	orr.w	r3, r3, #1
 8001436:	6353      	str	r3, [r2, #52]	; 0x34
 8001438:	4a47      	ldr	r2, [pc, #284]	; (8001558 <TimerConfig+0x274>)
 800143a:	4b47      	ldr	r3, [pc, #284]	; (8001558 <TimerConfig+0x274>)
 800143c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800143e:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8001442:	6353      	str	r3, [r2, #52]	; 0x34
 8001444:	4a44      	ldr	r2, [pc, #272]	; (8001558 <TimerConfig+0x274>)
 8001446:	4b44      	ldr	r3, [pc, #272]	; (8001558 <TimerConfig+0x274>)
 8001448:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800144a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 800144e:	6353      	str	r3, [r2, #52]	; 0x34
 8001450:	4a41      	ldr	r2, [pc, #260]	; (8001558 <TimerConfig+0x274>)
 8001452:	4b41      	ldr	r3, [pc, #260]	; (8001558 <TimerConfig+0x274>)
 8001454:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001456:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800145a:	6353      	str	r3, [r2, #52]	; 0x34
 800145c:	4a3e      	ldr	r2, [pc, #248]	; (8001558 <TimerConfig+0x274>)
 800145e:	4b3e      	ldr	r3, [pc, #248]	; (8001558 <TimerConfig+0x274>)
 8001460:	6e5b      	ldr	r3, [r3, #100]	; 0x64
 8001462:	f043 0308 	orr.w	r3, r3, #8
 8001466:	6653      	str	r3, [r2, #100]	; 0x64
 8001468:	4a3b      	ldr	r2, [pc, #236]	; (8001558 <TimerConfig+0x274>)
 800146a:	4b3b      	ldr	r3, [pc, #236]	; (8001558 <TimerConfig+0x274>)
 800146c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800146e:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 8001472:	6293      	str	r3, [r2, #40]	; 0x28
 8001474:	4a38      	ldr	r2, [pc, #224]	; (8001558 <TimerConfig+0x274>)
 8001476:	4b38      	ldr	r3, [pc, #224]	; (8001558 <TimerConfig+0x274>)
 8001478:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800147a:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 800147e:	6293      	str	r3, [r2, #40]	; 0x28
 8001480:	4a35      	ldr	r2, [pc, #212]	; (8001558 <TimerConfig+0x274>)
 8001482:	4b35      	ldr	r3, [pc, #212]	; (8001558 <TimerConfig+0x274>)
 8001484:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001486:	f023 030f 	bic.w	r3, r3, #15
 800148a:	6393      	str	r3, [r2, #56]	; 0x38
 800148c:	4a32      	ldr	r2, [pc, #200]	; (8001558 <TimerConfig+0x274>)
 800148e:	4b32      	ldr	r3, [pc, #200]	; (8001558 <TimerConfig+0x274>)
 8001490:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001492:	f043 030c 	orr.w	r3, r3, #12
 8001496:	6393      	str	r3, [r2, #56]	; 0x38
 8001498:	4a2f      	ldr	r2, [pc, #188]	; (8001558 <TimerConfig+0x274>)
 800149a:	4b2f      	ldr	r3, [pc, #188]	; (8001558 <TimerConfig+0x274>)
 800149c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 800149e:	f043 0301 	orr.w	r3, r3, #1
 80014a2:	6393      	str	r3, [r2, #56]	; 0x38
 80014a4:	4a2c      	ldr	r2, [pc, #176]	; (8001558 <TimerConfig+0x274>)
 80014a6:	4b2c      	ldr	r3, [pc, #176]	; (8001558 <TimerConfig+0x274>)
 80014a8:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80014aa:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80014ae:	6393      	str	r3, [r2, #56]	; 0x38
 80014b0:	4a29      	ldr	r2, [pc, #164]	; (8001558 <TimerConfig+0x274>)
 80014b2:	4b29      	ldr	r3, [pc, #164]	; (8001558 <TimerConfig+0x274>)
 80014b4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80014b6:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 80014ba:	6393      	str	r3, [r2, #56]	; 0x38
 80014bc:	4a26      	ldr	r2, [pc, #152]	; (8001558 <TimerConfig+0x274>)
 80014be:	4b26      	ldr	r3, [pc, #152]	; (8001558 <TimerConfig+0x274>)
 80014c0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80014c2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80014c6:	6393      	str	r3, [r2, #56]	; 0x38
 80014c8:	4a23      	ldr	r2, [pc, #140]	; (8001558 <TimerConfig+0x274>)
 80014ca:	4b23      	ldr	r3, [pc, #140]	; (8001558 <TimerConfig+0x274>)
 80014cc:	6e9b      	ldr	r3, [r3, #104]	; 0x68
 80014ce:	f043 0308 	orr.w	r3, r3, #8
 80014d2:	6693      	str	r3, [r2, #104]	; 0x68
 80014d4:	4a20      	ldr	r2, [pc, #128]	; (8001558 <TimerConfig+0x274>)
 80014d6:	4b20      	ldr	r3, [pc, #128]	; (8001558 <TimerConfig+0x274>)
 80014d8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80014da:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 80014de:	62d3      	str	r3, [r2, #44]	; 0x2c
 80014e0:	4a1d      	ldr	r2, [pc, #116]	; (8001558 <TimerConfig+0x274>)
 80014e2:	4b1d      	ldr	r3, [pc, #116]	; (8001558 <TimerConfig+0x274>)
 80014e4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80014e6:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 80014ea:	62d3      	str	r3, [r2, #44]	; 0x2c
 80014ec:	4a1a      	ldr	r2, [pc, #104]	; (8001558 <TimerConfig+0x274>)
 80014ee:	4b1a      	ldr	r3, [pc, #104]	; (8001558 <TimerConfig+0x274>)
 80014f0:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80014f2:	f023 030f 	bic.w	r3, r3, #15
 80014f6:	63d3      	str	r3, [r2, #60]	; 0x3c
 80014f8:	4a17      	ldr	r2, [pc, #92]	; (8001558 <TimerConfig+0x274>)
 80014fa:	4b17      	ldr	r3, [pc, #92]	; (8001558 <TimerConfig+0x274>)
 80014fc:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80014fe:	f043 030c 	orr.w	r3, r3, #12
 8001502:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001504:	4a14      	ldr	r2, [pc, #80]	; (8001558 <TimerConfig+0x274>)
 8001506:	4b14      	ldr	r3, [pc, #80]	; (8001558 <TimerConfig+0x274>)
 8001508:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 800150a:	f043 0301 	orr.w	r3, r3, #1
 800150e:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001510:	4a11      	ldr	r2, [pc, #68]	; (8001558 <TimerConfig+0x274>)
 8001512:	4b11      	ldr	r3, [pc, #68]	; (8001558 <TimerConfig+0x274>)
 8001514:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001516:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 800151a:	63d3      	str	r3, [r2, #60]	; 0x3c
 800151c:	4a0e      	ldr	r2, [pc, #56]	; (8001558 <TimerConfig+0x274>)
 800151e:	4b0e      	ldr	r3, [pc, #56]	; (8001558 <TimerConfig+0x274>)
 8001520:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001522:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 8001526:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001528:	4a0b      	ldr	r2, [pc, #44]	; (8001558 <TimerConfig+0x274>)
 800152a:	4b0b      	ldr	r3, [pc, #44]	; (8001558 <TimerConfig+0x274>)
 800152c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 800152e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001532:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001534:	4a08      	ldr	r2, [pc, #32]	; (8001558 <TimerConfig+0x274>)
 8001536:	4b08      	ldr	r3, [pc, #32]	; (8001558 <TimerConfig+0x274>)
 8001538:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 800153a:	f043 0308 	orr.w	r3, r3, #8
 800153e:	66d3      	str	r3, [r2, #108]	; 0x6c
 8001540:	4a05      	ldr	r2, [pc, #20]	; (8001558 <TimerConfig+0x274>)
 8001542:	4b05      	ldr	r3, [pc, #20]	; (8001558 <TimerConfig+0x274>)
 8001544:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001546:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 800154a:	6413      	str	r3, [r2, #64]	; 0x40
 800154c:	e006      	b.n	800155c <TimerConfig+0x278>
 800154e:	bf00      	nop
 8001550:	40020000 	.word	0x40020000
 8001554:	40070000 	.word	0x40070000
 8001558:	40080000 	.word	0x40080000
 800155c:	4a0f      	ldr	r2, [pc, #60]	; (800159c <TimerConfig+0x2b8>)
 800155e:	4b0f      	ldr	r3, [pc, #60]	; (800159c <TimerConfig+0x2b8>)
 8001560:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001562:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 8001566:	6453      	str	r3, [r2, #68]	; 0x44
 8001568:	4a0c      	ldr	r2, [pc, #48]	; (800159c <TimerConfig+0x2b8>)
 800156a:	4b0c      	ldr	r3, [pc, #48]	; (800159c <TimerConfig+0x2b8>)
 800156c:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 800156e:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 8001572:	6493      	str	r3, [r2, #72]	; 0x48
 8001574:	4a09      	ldr	r2, [pc, #36]	; (800159c <TimerConfig+0x2b8>)
 8001576:	4b09      	ldr	r3, [pc, #36]	; (800159c <TimerConfig+0x2b8>)
 8001578:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800157a:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 800157e:	64d3      	str	r3, [r2, #76]	; 0x4c
 8001580:	4a06      	ldr	r2, [pc, #24]	; (800159c <TimerConfig+0x2b8>)
 8001582:	4b06      	ldr	r3, [pc, #24]	; (800159c <TimerConfig+0x2b8>)
 8001584:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8001586:	f043 0302 	orr.w	r3, r3, #2
 800158a:	6593      	str	r3, [r2, #88]	; 0x58
 800158c:	2010      	movs	r0, #16
 800158e:	f7ff fd57 	bl	8001040 <NVIC_EnableIRQ>
 8001592:	4b02      	ldr	r3, [pc, #8]	; (800159c <TimerConfig+0x2b8>)
 8001594:	2201      	movs	r2, #1
 8001596:	60da      	str	r2, [r3, #12]
 8001598:	bf00      	nop
 800159a:	bd80      	pop	{r7, pc}
 800159c:	40080000 	.word	0x40080000

080015a0 <uart_init>:
 80015a0:	b480      	push	{r7}
 80015a2:	af00      	add	r7, sp, #0
 80015a4:	4b22      	ldr	r3, [pc, #136]	; (8001630 <uart_init+0x90>)
 80015a6:	2200      	movs	r2, #0
 80015a8:	601a      	str	r2, [r3, #0]
 80015aa:	4a22      	ldr	r2, [pc, #136]	; (8001634 <uart_init+0x94>)
 80015ac:	4b21      	ldr	r3, [pc, #132]	; (8001634 <uart_init+0x94>)
 80015ae:	69db      	ldr	r3, [r3, #28]
 80015b0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80015b4:	61d3      	str	r3, [r2, #28]
 80015b6:	4a1f      	ldr	r2, [pc, #124]	; (8001634 <uart_init+0x94>)
 80015b8:	4b1e      	ldr	r3, [pc, #120]	; (8001634 <uart_init+0x94>)
 80015ba:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80015bc:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80015c0:	6293      	str	r3, [r2, #40]	; 0x28
 80015c2:	4b1d      	ldr	r3, [pc, #116]	; (8001638 <uart_init+0x98>)
 80015c4:	2204      	movs	r2, #4
 80015c6:	625a      	str	r2, [r3, #36]	; 0x24
 80015c8:	4b1b      	ldr	r3, [pc, #108]	; (8001638 <uart_init+0x98>)
 80015ca:	2200      	movs	r2, #0
 80015cc:	629a      	str	r2, [r3, #40]	; 0x28
 80015ce:	4a1a      	ldr	r2, [pc, #104]	; (8001638 <uart_init+0x98>)
 80015d0:	4b19      	ldr	r3, [pc, #100]	; (8001638 <uart_init+0x98>)
 80015d2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80015d4:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 80015d8:	6353      	str	r3, [r2, #52]	; 0x34
 80015da:	4a17      	ldr	r2, [pc, #92]	; (8001638 <uart_init+0x98>)
 80015dc:	4b16      	ldr	r3, [pc, #88]	; (8001638 <uart_init+0x98>)
 80015de:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80015e0:	f043 0312 	orr.w	r3, r3, #18
 80015e4:	6353      	str	r3, [r2, #52]	; 0x34
 80015e6:	4a14      	ldr	r2, [pc, #80]	; (8001638 <uart_init+0x98>)
 80015e8:	4b13      	ldr	r3, [pc, #76]	; (8001638 <uart_init+0x98>)
 80015ea:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80015ec:	f043 0310 	orr.w	r3, r3, #16
 80015f0:	62d3      	str	r3, [r2, #44]	; 0x2c
 80015f2:	4a11      	ldr	r2, [pc, #68]	; (8001638 <uart_init+0x98>)
 80015f4:	4b10      	ldr	r3, [pc, #64]	; (8001638 <uart_init+0x98>)
 80015f6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80015f8:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 80015fc:	62d3      	str	r3, [r2, #44]	; 0x2c
 80015fe:	4a0e      	ldr	r2, [pc, #56]	; (8001638 <uart_init+0x98>)
 8001600:	4b0d      	ldr	r3, [pc, #52]	; (8001638 <uart_init+0x98>)
 8001602:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001604:	f443 7340 	orr.w	r3, r3, #768	; 0x300
 8001608:	f043 0301 	orr.w	r3, r3, #1
 800160c:	6313      	str	r3, [r2, #48]	; 0x30
 800160e:	4a0a      	ldr	r2, [pc, #40]	; (8001638 <uart_init+0x98>)
 8001610:	4b09      	ldr	r3, [pc, #36]	; (8001638 <uart_init+0x98>)
 8001612:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001614:	f043 0310 	orr.w	r3, r3, #16
 8001618:	6393      	str	r3, [r2, #56]	; 0x38
 800161a:	4a07      	ldr	r2, [pc, #28]	; (8001638 <uart_init+0x98>)
 800161c:	4b06      	ldr	r3, [pc, #24]	; (8001638 <uart_init+0x98>)
 800161e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001620:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001624:	6393      	str	r3, [r2, #56]	; 0x38
 8001626:	bf00      	nop
 8001628:	46bd      	mov	sp, r7
 800162a:	bc80      	pop	{r7}
 800162c:	4770      	bx	lr
 800162e:	bf00      	nop
 8001630:	20001298 	.word	0x20001298
 8001634:	40020000 	.word	0x40020000
 8001638:	40030000 	.word	0x40030000

0800163c <system_init>:
 800163c:	b580      	push	{r7, lr}
 800163e:	af00      	add	r7, sp, #0
 8001640:	f7ff fe16 	bl	8001270 <ClkConfig>
 8001644:	f7ff fd60 	bl	8001108 <PortConfig>
 8001648:	f7ff fe4c 	bl	80012e4 <TimerConfig>
 800164c:	f7ff ffa8 	bl	80015a0 <uart_init>
 8001650:	bf00      	nop
 8001652:	bd80      	pop	{r7, pc}

08001654 <SysTick_Handler>:
 8001654:	b480      	push	{r7}
 8001656:	af00      	add	r7, sp, #0
 8001658:	4b04      	ldr	r3, [pc, #16]	; (800166c <SysTick_Handler+0x18>)
 800165a:	681b      	ldr	r3, [r3, #0]
 800165c:	3301      	adds	r3, #1
 800165e:	4a03      	ldr	r2, [pc, #12]	; (800166c <SysTick_Handler+0x18>)
 8001660:	6013      	str	r3, [r2, #0]
 8001662:	bf00      	nop
 8001664:	46bd      	mov	sp, r7
 8001666:	bc80      	pop	{r7}
 8001668:	4770      	bx	lr
 800166a:	bf00      	nop
 800166c:	20001284 	.word	0x20001284

08001670 <UART1_IRQHandler>:
 8001670:	b480      	push	{r7}
 8001672:	b083      	sub	sp, #12
 8001674:	af00      	add	r7, sp, #0
 8001676:	4b1d      	ldr	r3, [pc, #116]	; (80016ec <UART1_IRQHandler+0x7c>)
 8001678:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800167a:	f003 0310 	and.w	r3, r3, #16
 800167e:	2b00      	cmp	r3, #0
 8001680:	d01f      	beq.n	80016c2 <UART1_IRQHandler+0x52>
 8001682:	e002      	b.n	800168a <UART1_IRQHandler+0x1a>
 8001684:	4b19      	ldr	r3, [pc, #100]	; (80016ec <UART1_IRQHandler+0x7c>)
 8001686:	681b      	ldr	r3, [r3, #0]
 8001688:	71fb      	strb	r3, [r7, #7]
 800168a:	4b18      	ldr	r3, [pc, #96]	; (80016ec <UART1_IRQHandler+0x7c>)
 800168c:	699b      	ldr	r3, [r3, #24]
 800168e:	f003 0310 	and.w	r3, r3, #16
 8001692:	2b00      	cmp	r3, #0
 8001694:	d0f6      	beq.n	8001684 <UART1_IRQHandler+0x14>
 8001696:	4b16      	ldr	r3, [pc, #88]	; (80016f0 <UART1_IRQHandler+0x80>)
 8001698:	681b      	ldr	r3, [r3, #0]
 800169a:	80bb      	strh	r3, [r7, #4]
 800169c:	4b14      	ldr	r3, [pc, #80]	; (80016f0 <UART1_IRQHandler+0x80>)
 800169e:	689b      	ldr	r3, [r3, #8]
 80016a0:	085b      	lsrs	r3, r3, #1
 80016a2:	807b      	strh	r3, [r7, #2]
 80016a4:	88ba      	ldrh	r2, [r7, #4]
 80016a6:	887b      	ldrh	r3, [r7, #2]
 80016a8:	429a      	cmp	r2, r3
 80016aa:	d205      	bcs.n	80016b8 <UART1_IRQHandler+0x48>
 80016ac:	4a10      	ldr	r2, [pc, #64]	; (80016f0 <UART1_IRQHandler+0x80>)
 80016ae:	4b10      	ldr	r3, [pc, #64]	; (80016f0 <UART1_IRQHandler+0x80>)
 80016b0:	681b      	ldr	r3, [r3, #0]
 80016b2:	3b01      	subs	r3, #1
 80016b4:	6013      	str	r3, [r2, #0]
 80016b6:	e004      	b.n	80016c2 <UART1_IRQHandler+0x52>
 80016b8:	4a0d      	ldr	r2, [pc, #52]	; (80016f0 <UART1_IRQHandler+0x80>)
 80016ba:	4b0d      	ldr	r3, [pc, #52]	; (80016f0 <UART1_IRQHandler+0x80>)
 80016bc:	681b      	ldr	r3, [r3, #0]
 80016be:	3301      	adds	r3, #1
 80016c0:	6013      	str	r3, [r2, #0]
 80016c2:	4b0a      	ldr	r3, [pc, #40]	; (80016ec <UART1_IRQHandler+0x7c>)
 80016c4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80016c6:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80016ca:	2b00      	cmp	r3, #0
 80016cc:	d009      	beq.n	80016e2 <UART1_IRQHandler+0x72>
 80016ce:	e002      	b.n	80016d6 <UART1_IRQHandler+0x66>
 80016d0:	4b06      	ldr	r3, [pc, #24]	; (80016ec <UART1_IRQHandler+0x7c>)
 80016d2:	681b      	ldr	r3, [r3, #0]
 80016d4:	707b      	strb	r3, [r7, #1]
 80016d6:	4b05      	ldr	r3, [pc, #20]	; (80016ec <UART1_IRQHandler+0x7c>)
 80016d8:	699b      	ldr	r3, [r3, #24]
 80016da:	f003 0310 	and.w	r3, r3, #16
 80016de:	2b00      	cmp	r3, #0
 80016e0:	d0f6      	beq.n	80016d0 <UART1_IRQHandler+0x60>
 80016e2:	bf00      	nop
 80016e4:	370c      	adds	r7, #12
 80016e6:	46bd      	mov	sp, r7
 80016e8:	bc80      	pop	{r7}
 80016ea:	4770      	bx	lr
 80016ec:	40030000 	.word	0x40030000
 80016f0:	40070000 	.word	0x40070000

080016f4 <handler_reset>:
 80016f4:	b580      	push	{r7, lr}
 80016f6:	b082      	sub	sp, #8
 80016f8:	af00      	add	r7, sp, #0
 80016fa:	4b11      	ldr	r3, [pc, #68]	; (8001740 <handler_reset+0x4c>)
 80016fc:	607b      	str	r3, [r7, #4]
 80016fe:	4b11      	ldr	r3, [pc, #68]	; (8001744 <handler_reset+0x50>)
 8001700:	603b      	str	r3, [r7, #0]
 8001702:	e007      	b.n	8001714 <handler_reset+0x20>
 8001704:	683b      	ldr	r3, [r7, #0]
 8001706:	1d1a      	adds	r2, r3, #4
 8001708:	603a      	str	r2, [r7, #0]
 800170a:	687a      	ldr	r2, [r7, #4]
 800170c:	1d11      	adds	r1, r2, #4
 800170e:	6079      	str	r1, [r7, #4]
 8001710:	6812      	ldr	r2, [r2, #0]
 8001712:	601a      	str	r2, [r3, #0]
 8001714:	683b      	ldr	r3, [r7, #0]
 8001716:	4a0c      	ldr	r2, [pc, #48]	; (8001748 <handler_reset+0x54>)
 8001718:	4293      	cmp	r3, r2
 800171a:	d3f3      	bcc.n	8001704 <handler_reset+0x10>
 800171c:	4b0b      	ldr	r3, [pc, #44]	; (800174c <handler_reset+0x58>)
 800171e:	603b      	str	r3, [r7, #0]
 8001720:	e004      	b.n	800172c <handler_reset+0x38>
 8001722:	683b      	ldr	r3, [r7, #0]
 8001724:	1d1a      	adds	r2, r3, #4
 8001726:	603a      	str	r2, [r7, #0]
 8001728:	2200      	movs	r2, #0
 800172a:	601a      	str	r2, [r3, #0]
 800172c:	683b      	ldr	r3, [r7, #0]
 800172e:	4a08      	ldr	r2, [pc, #32]	; (8001750 <handler_reset+0x5c>)
 8001730:	4293      	cmp	r3, r2
 8001732:	d3f6      	bcc.n	8001722 <handler_reset+0x2e>
 8001734:	f7fe fee6 	bl	8000504 <main>
 8001738:	bf00      	nop
 800173a:	3708      	adds	r7, #8
 800173c:	46bd      	mov	sp, r7
 800173e:	bd80      	pop	{r7, pc}
 8001740:	080027d8 	.word	0x080027d8
 8001744:	20000000 	.word	0x20000000
 8001748:	20000004 	.word	0x20000004
 800174c:	20000224 	.word	0x20000224
 8001750:	2000129c 	.word	0x2000129c

08001754 <default_handler>:
 8001754:	b480      	push	{r7}
 8001756:	af00      	add	r7, sp, #0
 8001758:	e7fe      	b.n	8001758 <default_handler+0x4>
 800175a:	bf00      	nop

0800175c <maskc>:
 800175c:	0800 1000 2000 0000                         ..... ..

08001764 <maskb>:
 8001764:	0008 0020 0010 0040 0400 0800 0100 0000     .. ...@.........

08001774 <maska>:
 8001774:	0001 0002 0004 0008 0010 0020 0040 0080     .......... .@...
 8001784:	0100 0200 0400 0800 1000 2000 4000 8000     ........... .@..
 8001794:	0080 0000 004c 0000 0028 0000 0014 0000     ....L...(.......
 80017a4:	000a 0000 0005 0000 0003 0000 0001 0000     ................
 80017b4:	02d4 0000 0288 0000 0274 0000 026f 0000     ........t...o...
 80017c4:	026f 0000 026e 0000 026e 0000 026e 0000     o...n...n...n...

080017d4 <cos_tb>:
 80017d4:	0400 0000 0400 0000 0400 0000 0400 0000     ................
 80017e4:	0400 0000 0400 0000 03ff 0000 03ff 0000     ................
 80017f4:	03ff 0000 03fe 0000 03fe 0000 03fe 0000     ................
 8001804:	03fd 0000 03fd 0000 03fc 0000 03fc 0000     ................
 8001814:	03fb 0000 03fa 0000 03fa 0000 03f9 0000     ................
 8001824:	03f8 0000 03f8 0000 03f7 0000 03f6 0000     ................
 8001834:	03f5 0000 03f4 0000 03f3 0000 03f2 0000     ................
 8001844:	03f1 0000 03f0 0000 03ef 0000 03ee 0000     ................
 8001854:	03ec 0000 03eb 0000 03ea 0000 03e8 0000     ................
 8001864:	03e7 0000 03e6 0000 03e4 0000 03e3 0000     ................
 8001874:	03e1 0000 03e0 0000 03de 0000 03dd 0000     ................
 8001884:	03db 0000 03d9 0000 03d7 0000 03d6 0000     ................
 8001894:	03d4 0000 03d2 0000 03d0 0000 03ce 0000     ................
 80018a4:	03cc 0000 03ca 0000 03c8 0000 03c6 0000     ................
 80018b4:	03c4 0000 03c2 0000 03c0 0000 03be 0000     ................
 80018c4:	03bb 0000 03b9 0000 03b7 0000 03b4 0000     ................
 80018d4:	03b2 0000 03b0 0000 03ad 0000 03ab 0000     ................
 80018e4:	03a8 0000 03a6 0000 03a3 0000 03a0 0000     ................
 80018f4:	039e 0000 039b 0000 0398 0000 0395 0000     ................
 8001904:	0393 0000 0390 0000 038d 0000 038a 0000     ................
 8001914:	0387 0000 0384 0000 0381 0000 037e 0000     ............~...
 8001924:	037b 0000 0378 0000 0375 0000 0372 0000     {...x...u...r...
 8001934:	036e 0000 036b 0000 0368 0000 0364 0000     n...k...h...d...
 8001944:	0361 0000 035e 0000 035a 0000 0357 0000     a...^...Z...W...
 8001954:	0353 0000 0350 0000 034c 0000 0349 0000     S...P...L...I...
 8001964:	0345 0000 0342 0000 033e 0000 033a 0000     E...B...>...:...
 8001974:	0336 0000 0333 0000 032f 0000 032b 0000     6...3.../...+...
 8001984:	0327 0000 0323 0000 031f 0000 031c 0000     '...#...........
 8001994:	0318 0000 0314 0000 0310 0000 030b 0000     ................
 80019a4:	0307 0000 0303 0000 02ff 0000 02fb 0000     ................
 80019b4:	02f7 0000 02f3 0000 02ee 0000 02ea 0000     ................
 80019c4:	02e6 0000 02e1 0000 02dd 0000 02d9 0000     ................
 80019d4:	02d4 0000 02d0 0000 02cb 0000 02c7 0000     ................
 80019e4:	02c2 0000 02be 0000 02b9 0000 02b4 0000     ................
 80019f4:	02b0 0000 02ab 0000 02a6 0000 02a2 0000     ................
 8001a04:	029d 0000 0298 0000 0293 0000 028e 0000     ................
 8001a14:	028a 0000 0285 0000 0280 0000 027b 0000     ............{...
 8001a24:	0276 0000 0271 0000 026c 0000 0267 0000     v...q...l...g...
 8001a34:	0262 0000 025d 0000 0258 0000 0253 0000     b...]...X...S...
 8001a44:	024e 0000 0248 0000 0243 0000 023e 0000     N...H...C...>...
 8001a54:	0239 0000 0234 0000 022e 0000 0229 0000     9...4.......)...
 8001a64:	0224 0000 021f 0000 0219 0000 0214 0000     $...............
 8001a74:	020e 0000 0209 0000 0204 0000 01fe 0000     ................
 8001a84:	01f9 0000 01f3 0000 01ee 0000 01e8 0000     ................
 8001a94:	01e3 0000 01dd 0000 01d8 0000 01d2 0000     ................
 8001aa4:	01cc 0000 01c7 0000 01c1 0000 01bb 0000     ................
 8001ab4:	01b6 0000 01b0 0000 01aa 0000 01a5 0000     ................
 8001ac4:	019f 0000 0199 0000 0193 0000 018e 0000     ................
 8001ad4:	0188 0000 0182 0000 017c 0000 0176 0000     ........|...v...
 8001ae4:	0171 0000 016b 0000 0165 0000 015f 0000     q...k...e..._...
 8001af4:	0159 0000 0153 0000 014d 0000 0147 0000     Y...S...M...G...
 8001b04:	0141 0000 013b 0000 0135 0000 012f 0000     A...;...5.../...
 8001b14:	0129 0000 0123 0000 011d 0000 0117 0000     )...#...........
 8001b24:	0111 0000 010b 0000 0105 0000 00ff 0000     ................
 8001b34:	00f9 0000 00f3 0000 00ed 0000 00e6 0000     ................
 8001b44:	00e0 0000 00da 0000 00d4 0000 00ce 0000     ................
 8001b54:	00c8 0000 00c2 0000 00bb 0000 00b5 0000     ................
 8001b64:	00af 0000 00a9 0000 00a3 0000 009c 0000     ................
 8001b74:	0096 0000 0090 0000 008a 0000 0084 0000     ................
 8001b84:	007d 0000 0077 0000 0071 0000 006b 0000     }...w...q...k...
 8001b94:	0064 0000 005e 0000 0058 0000 0052 0000     d...^...X...R...
 8001ba4:	004b 0000 0045 0000 003f 0000 0039 0000     K...E...?...9...
 8001bb4:	0032 0000 002c 0000 0026 0000 001f 0000     2...,...&.......
 8001bc4:	0019 0000 0013 0000 000d 0000 0006 0000     ................
 8001bd4:	0000 0000 fffa ffff fff3 ffff ffed ffff     ................
 8001be4:	ffe7 ffff ffe1 ffff ffda ffff ffd4 ffff     ................
 8001bf4:	ffce ffff ffc7 ffff ffc1 ffff ffbb ffff     ................
 8001c04:	ffb5 ffff ffae ffff ffa8 ffff ffa2 ffff     ................
 8001c14:	ff9c ffff ff95 ffff ff8f ffff ff89 ffff     ................
 8001c24:	ff83 ffff ff7c ffff ff76 ffff ff70 ffff     ....|...v...p...
 8001c34:	ff6a ffff ff64 ffff ff5d ffff ff57 ffff     j...d...]...W...
 8001c44:	ff51 ffff ff4b ffff ff45 ffff ff3e ffff     Q...K...E...>...
 8001c54:	ff38 ffff ff32 ffff ff2c ffff ff26 ffff     8...2...,...&...
 8001c64:	ff20 ffff ff1a ffff ff13 ffff ff0d ffff      ...............
 8001c74:	ff07 ffff ff01 ffff fefb ffff fef5 ffff     ................
 8001c84:	feef ffff fee9 ffff fee3 ffff fedd ffff     ................
 8001c94:	fed7 ffff fed1 ffff fecb ffff fec5 ffff     ................
 8001ca4:	febf ffff feb9 ffff feb3 ffff fead ffff     ................
 8001cb4:	fea7 ffff fea1 ffff fe9b ffff fe95 ffff     ................
 8001cc4:	fe8f ffff fe8a ffff fe84 ffff fe7e ffff     ............~...
 8001cd4:	fe78 ffff fe72 ffff fe6d ffff fe67 ffff     x...r...m...g...
 8001ce4:	fe61 ffff fe5b ffff fe56 ffff fe50 ffff     a...[...V...P...
 8001cf4:	fe4a ffff fe45 ffff fe3f ffff fe39 ffff     J...E...?...9...
 8001d04:	fe34 ffff fe2e ffff fe28 ffff fe23 ffff     4.......(...#...
 8001d14:	fe1d ffff fe18 ffff fe12 ffff fe0d ffff     ................
 8001d24:	fe07 ffff fe02 ffff fdfc ffff fdf7 ffff     ................
 8001d34:	fdf2 ffff fdec ffff fde7 ffff fde1 ffff     ................
 8001d44:	fddc ffff fdd7 ffff fdd2 ffff fdcc ffff     ................
 8001d54:	fdc7 ffff fdc2 ffff fdbd ffff fdb8 ffff     ................
 8001d64:	fdb2 ffff fdad ffff fda8 ffff fda3 ffff     ................
 8001d74:	fd9e ffff fd99 ffff fd94 ffff fd8f ffff     ................
 8001d84:	fd8a ffff fd85 ffff fd80 ffff fd7b ffff     ............{...
 8001d94:	fd76 ffff fd72 ffff fd6d ffff fd68 ffff     v...r...m...h...
 8001da4:	fd63 ffff fd5e ffff fd5a ffff fd55 ffff     c...^...Z...U...
 8001db4:	fd50 ffff fd4c ffff fd47 ffff fd42 ffff     P...L...G...B...
 8001dc4:	fd3e ffff fd39 ffff fd35 ffff fd30 ffff     >...9...5...0...
 8001dd4:	fd2c ffff fd27 ffff fd23 ffff fd1f ffff     ,...'...#.......
 8001de4:	fd1a ffff fd16 ffff fd12 ffff fd0d ffff     ................
 8001df4:	fd09 ffff fd05 ffff fd01 ffff fcfd ffff     ................
 8001e04:	fcf9 ffff fcf5 ffff fcf0 ffff fcec ffff     ................
 8001e14:	fce8 ffff fce4 ffff fce1 ffff fcdd ffff     ................
 8001e24:	fcd9 ffff fcd5 ffff fcd1 ffff fccd ffff     ................
 8001e34:	fcca ffff fcc6 ffff fcc2 ffff fcbe ffff     ................
 8001e44:	fcbb ffff fcb7 ffff fcb4 ffff fcb0 ffff     ................
 8001e54:	fcad ffff fca9 ffff fca6 ffff fca2 ffff     ................
 8001e64:	fc9f ffff fc9c ffff fc98 ffff fc95 ffff     ................
 8001e74:	fc92 ffff fc8e ffff fc8b ffff fc88 ffff     ................
 8001e84:	fc85 ffff fc82 ffff fc7f ffff fc7c ffff     ............|...
 8001e94:	fc79 ffff fc76 ffff fc73 ffff fc70 ffff     y...v...s...p...
 8001ea4:	fc6d ffff fc6b ffff fc68 ffff fc65 ffff     m...k...h...e...
 8001eb4:	fc62 ffff fc60 ffff fc5d ffff fc5a ffff     b...`...]...Z...
 8001ec4:	fc58 ffff fc55 ffff fc53 ffff fc50 ffff     X...U...S...P...
 8001ed4:	fc4e ffff fc4c ffff fc49 ffff fc47 ffff     N...L...I...G...
 8001ee4:	fc45 ffff fc42 ffff fc40 ffff fc3e ffff     E...B...@...>...
 8001ef4:	fc3c ffff fc3a ffff fc38 ffff fc36 ffff     <...:...8...6...
 8001f04:	fc34 ffff fc32 ffff fc30 ffff fc2e ffff     4...2...0.......
 8001f14:	fc2c ffff fc2a ffff fc29 ffff fc27 ffff     ,...*...)...'...
 8001f24:	fc25 ffff fc23 ffff fc22 ffff fc20 ffff     %...#..."... ...
 8001f34:	fc1f ffff fc1d ffff fc1c ffff fc1a ffff     ................
 8001f44:	fc19 ffff fc18 ffff fc16 ffff fc15 ffff     ................
 8001f54:	fc14 ffff fc12 ffff fc11 ffff fc10 ffff     ................
 8001f64:	fc0f ffff fc0e ffff fc0d ffff fc0c ffff     ................
 8001f74:	fc0b ffff fc0a ffff fc09 ffff fc08 ffff     ................
 8001f84:	fc08 ffff fc07 ffff fc06 ffff fc06 ffff     ................
 8001f94:	fc05 ffff fc04 ffff fc04 ffff fc03 ffff     ................
 8001fa4:	fc03 ffff fc02 ffff fc02 ffff fc02 ffff     ................
 8001fb4:	fc01 ffff fc01 ffff fc01 ffff fc00 ffff     ................
 8001fc4:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
 8001fd4:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
 8001fe4:	fc00 ffff fc00 ffff fc01 ffff fc01 ffff     ................
 8001ff4:	fc01 ffff fc02 ffff fc02 ffff fc02 ffff     ................
 8002004:	fc03 ffff fc03 ffff fc04 ffff fc04 ffff     ................
 8002014:	fc05 ffff fc06 ffff fc06 ffff fc07 ffff     ................
 8002024:	fc08 ffff fc08 ffff fc09 ffff fc0a ffff     ................
 8002034:	fc0b ffff fc0c ffff fc0d ffff fc0e ffff     ................
 8002044:	fc0f ffff fc10 ffff fc11 ffff fc12 ffff     ................
 8002054:	fc14 ffff fc15 ffff fc16 ffff fc18 ffff     ................
 8002064:	fc19 ffff fc1a ffff fc1c ffff fc1d ffff     ................
 8002074:	fc1f ffff fc20 ffff fc22 ffff fc23 ffff     .... ..."...#...
 8002084:	fc25 ffff fc27 ffff fc29 ffff fc2a ffff     %...'...)...*...
 8002094:	fc2c ffff fc2e ffff fc30 ffff fc32 ffff     ,.......0...2...
 80020a4:	fc34 ffff fc36 ffff fc38 ffff fc3a ffff     4...6...8...:...
 80020b4:	fc3c ffff fc3e ffff fc40 ffff fc42 ffff     <...>...@...B...
 80020c4:	fc45 ffff fc47 ffff fc49 ffff fc4c ffff     E...G...I...L...
 80020d4:	fc4e ffff fc50 ffff fc53 ffff fc55 ffff     N...P...S...U...
 80020e4:	fc58 ffff fc5a ffff fc5d ffff fc60 ffff     X...Z...]...`...
 80020f4:	fc62 ffff fc65 ffff fc68 ffff fc6b ffff     b...e...h...k...
 8002104:	fc6d ffff fc70 ffff fc73 ffff fc76 ffff     m...p...s...v...
 8002114:	fc79 ffff fc7c ffff fc7f ffff fc82 ffff     y...|...........
 8002124:	fc85 ffff fc88 ffff fc8b ffff fc8e ffff     ................
 8002134:	fc92 ffff fc95 ffff fc98 ffff fc9c ffff     ................
 8002144:	fc9f ffff fca2 ffff fca6 ffff fca9 ffff     ................
 8002154:	fcad ffff fcb0 ffff fcb4 ffff fcb7 ffff     ................
 8002164:	fcbb ffff fcbe ffff fcc2 ffff fcc6 ffff     ................
 8002174:	fcca ffff fccd ffff fcd1 ffff fcd5 ffff     ................
 8002184:	fcd9 ffff fcdd ffff fce1 ffff fce4 ffff     ................
 8002194:	fce8 ffff fcec ffff fcf0 ffff fcf5 ffff     ................
 80021a4:	fcf9 ffff fcfd ffff fd01 ffff fd05 ffff     ................
 80021b4:	fd09 ffff fd0d ffff fd12 ffff fd16 ffff     ................
 80021c4:	fd1a ffff fd1f ffff fd23 ffff fd27 ffff     ........#...'...
 80021d4:	fd2c ffff fd30 ffff fd35 ffff fd39 ffff     ,...0...5...9...
 80021e4:	fd3e ffff fd42 ffff fd47 ffff fd4c ffff     >...B...G...L...
 80021f4:	fd50 ffff fd55 ffff fd5a ffff fd5e ffff     P...U...Z...^...
 8002204:	fd63 ffff fd68 ffff fd6d ffff fd72 ffff     c...h...m...r...
 8002214:	fd76 ffff fd7b ffff fd80 ffff fd85 ffff     v...{...........
 8002224:	fd8a ffff fd8f ffff fd94 ffff fd99 ffff     ................
 8002234:	fd9e ffff fda3 ffff fda8 ffff fdad ffff     ................
 8002244:	fdb2 ffff fdb8 ffff fdbd ffff fdc2 ffff     ................
 8002254:	fdc7 ffff fdcc ffff fdd2 ffff fdd7 ffff     ................
 8002264:	fddc ffff fde1 ffff fde7 ffff fdec ffff     ................
 8002274:	fdf2 ffff fdf7 ffff fdfc ffff fe02 ffff     ................
 8002284:	fe07 ffff fe0d ffff fe12 ffff fe18 ffff     ................
 8002294:	fe1d ffff fe23 ffff fe28 ffff fe2e ffff     ....#...(.......
 80022a4:	fe34 ffff fe39 ffff fe3f ffff fe45 ffff     4...9...?...E...
 80022b4:	fe4a ffff fe50 ffff fe56 ffff fe5b ffff     J...P...V...[...
 80022c4:	fe61 ffff fe67 ffff fe6d ffff fe72 ffff     a...g...m...r...
 80022d4:	fe78 ffff fe7e ffff fe84 ffff fe8a ffff     x...~...........
 80022e4:	fe8f ffff fe95 ffff fe9b ffff fea1 ffff     ................
 80022f4:	fea7 ffff fead ffff feb3 ffff feb9 ffff     ................
 8002304:	febf ffff fec5 ffff fecb ffff fed1 ffff     ................
 8002314:	fed7 ffff fedd ffff fee3 ffff fee9 ffff     ................
 8002324:	feef ffff fef5 ffff fefb ffff ff01 ffff     ................
 8002334:	ff07 ffff ff0d ffff ff13 ffff ff1a ffff     ................
 8002344:	ff20 ffff ff26 ffff ff2c ffff ff32 ffff      ...&...,...2...
 8002354:	ff38 ffff ff3e ffff ff45 ffff ff4b ffff     8...>...E...K...
 8002364:	ff51 ffff ff57 ffff ff5d ffff ff64 ffff     Q...W...]...d...
 8002374:	ff6a ffff ff70 ffff ff76 ffff ff7c ffff     j...p...v...|...
 8002384:	ff83 ffff ff89 ffff ff8f ffff ff95 ffff     ................
 8002394:	ff9c ffff ffa2 ffff ffa8 ffff ffae ffff     ................
 80023a4:	ffb5 ffff ffbb ffff ffc1 ffff ffc7 ffff     ................
 80023b4:	ffce ffff ffd4 ffff ffda ffff ffe1 ffff     ................
 80023c4:	ffe7 ffff ffed ffff fff3 ffff fffa ffff     ................
 80023d4:	0000 0000 0006 0000 000d 0000 0013 0000     ................
 80023e4:	0019 0000 001f 0000 0026 0000 002c 0000     ........&...,...
 80023f4:	0032 0000 0039 0000 003f 0000 0045 0000     2...9...?...E...
 8002404:	004b 0000 0052 0000 0058 0000 005e 0000     K...R...X...^...
 8002414:	0064 0000 006b 0000 0071 0000 0077 0000     d...k...q...w...
 8002424:	007d 0000 0084 0000 008a 0000 0090 0000     }...............
 8002434:	0096 0000 009c 0000 00a3 0000 00a9 0000     ................
 8002444:	00af 0000 00b5 0000 00bb 0000 00c2 0000     ................
 8002454:	00c8 0000 00ce 0000 00d4 0000 00da 0000     ................
 8002464:	00e0 0000 00e6 0000 00ed 0000 00f3 0000     ................
 8002474:	00f9 0000 00ff 0000 0105 0000 010b 0000     ................
 8002484:	0111 0000 0117 0000 011d 0000 0123 0000     ............#...
 8002494:	0129 0000 012f 0000 0135 0000 013b 0000     ).../...5...;...
 80024a4:	0141 0000 0147 0000 014d 0000 0153 0000     A...G...M...S...
 80024b4:	0159 0000 015f 0000 0165 0000 016b 0000     Y..._...e...k...
 80024c4:	0171 0000 0176 0000 017c 0000 0182 0000     q...v...|.......
 80024d4:	0188 0000 018e 0000 0193 0000 0199 0000     ................
 80024e4:	019f 0000 01a5 0000 01aa 0000 01b0 0000     ................
 80024f4:	01b6 0000 01bb 0000 01c1 0000 01c7 0000     ................
 8002504:	01cc 0000 01d2 0000 01d8 0000 01dd 0000     ................
 8002514:	01e3 0000 01e8 0000 01ee 0000 01f3 0000     ................
 8002524:	01f9 0000 01fe 0000 0204 0000 0209 0000     ................
 8002534:	020e 0000 0214 0000 0219 0000 021f 0000     ................
 8002544:	0224 0000 0229 0000 022e 0000 0234 0000     $...).......4...
 8002554:	0239 0000 023e 0000 0243 0000 0248 0000     9...>...C...H...
 8002564:	024e 0000 0253 0000 0258 0000 025d 0000     N...S...X...]...
 8002574:	0262 0000 0267 0000 026c 0000 0271 0000     b...g...l...q...
 8002584:	0276 0000 027b 0000 0280 0000 0285 0000     v...{...........
 8002594:	028a 0000 028e 0000 0293 0000 0298 0000     ................
 80025a4:	029d 0000 02a2 0000 02a6 0000 02ab 0000     ................
 80025b4:	02b0 0000 02b4 0000 02b9 0000 02be 0000     ................
 80025c4:	02c2 0000 02c7 0000 02cb 0000 02d0 0000     ................
 80025d4:	02d4 0000 02d9 0000 02dd 0000 02e1 0000     ................
 80025e4:	02e6 0000 02ea 0000 02ee 0000 02f3 0000     ................
 80025f4:	02f7 0000 02fb 0000 02ff 0000 0303 0000     ................
 8002604:	0307 0000 030b 0000 0310 0000 0314 0000     ................
 8002614:	0318 0000 031c 0000 031f 0000 0323 0000     ............#...
 8002624:	0327 0000 032b 0000 032f 0000 0333 0000     '...+.../...3...
 8002634:	0336 0000 033a 0000 033e 0000 0342 0000     6...:...>...B...
 8002644:	0345 0000 0349 0000 034c 0000 0350 0000     E...I...L...P...
 8002654:	0353 0000 0357 0000 035a 0000 035e 0000     S...W...Z...^...
 8002664:	0361 0000 0364 0000 0368 0000 036b 0000     a...d...h...k...
 8002674:	036e 0000 0372 0000 0375 0000 0378 0000     n...r...u...x...
 8002684:	037b 0000 037e 0000 0381 0000 0384 0000     {...~...........
 8002694:	0387 0000 038a 0000 038d 0000 0390 0000     ................
 80026a4:	0393 0000 0395 0000 0398 0000 039b 0000     ................
 80026b4:	039e 0000 03a0 0000 03a3 0000 03a6 0000     ................
 80026c4:	03a8 0000 03ab 0000 03ad 0000 03b0 0000     ................
 80026d4:	03b2 0000 03b4 0000 03b7 0000 03b9 0000     ................
 80026e4:	03bb 0000 03be 0000 03c0 0000 03c2 0000     ................
 80026f4:	03c4 0000 03c6 0000 03c8 0000 03ca 0000     ................
 8002704:	03cc 0000 03ce 0000 03d0 0000 03d2 0000     ................
 8002714:	03d4 0000 03d6 0000 03d7 0000 03d9 0000     ................
 8002724:	03db 0000 03dd 0000 03de 0000 03e0 0000     ................
 8002734:	03e1 0000 03e3 0000 03e4 0000 03e6 0000     ................
 8002744:	03e7 0000 03e8 0000 03ea 0000 03eb 0000     ................
 8002754:	03ec 0000 03ee 0000 03ef 0000 03f0 0000     ................
 8002764:	03f1 0000 03f2 0000 03f3 0000 03f4 0000     ................
 8002774:	03f5 0000 03f6 0000 03f7 0000 03f8 0000     ................
 8002784:	03f8 0000 03f9 0000 03fa 0000 03fa 0000     ................
 8002794:	03fb 0000 03fc 0000 03fc 0000 03fd 0000     ................
 80027a4:	03fd 0000 03fe 0000 03fe 0000 03fe 0000     ................
 80027b4:	03ff 0000 03ff 0000 03ff 0000 0400 0000     ................
 80027c4:	0400 0000 0400 0000 0400 0000 0400 0000     ................

080027d4 <PWM_MASK>:
 80027d4:	aaa0 000a                                   ....
