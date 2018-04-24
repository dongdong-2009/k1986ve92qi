
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 c9 1d 00 08 29 1e 00 08 29 1e 00 08     ... ....)...)...
 8000010:	29 1e 00 08 29 1e 00 08 29 1e 00 08 00 00 00 00     )...)...).......
	...
 800002c:	29 1e 00 08 29 1e 00 08 00 00 00 00 29 1e 00 08     )...).......)...
 800003c:	ad 1d 00 08 29 1e 00 08 29 1e 00 08 29 1e 00 08     ....)...)...)...
	...
 8000054:	29 1e 00 08 29 1e 00 08 29 1e 00 08 29 1e 00 08     )...)...)...)...
 8000064:	00 00 00 00 29 1e 00 08 29 1e 00 08 29 1e 00 08     ....)...)...)...
 8000074:	00 00 00 00 29 1e 00 08 29 1e 00 08 bd 02 00 08     ....)...).......
 8000084:	29 1e 00 08 00 00 00 00 29 1e 00 08 29 1e 00 08     ).......)...)...
	...
 80000ac:	29 1e 00 08 29 1e 00 08 29 1e 00 08 29 1e 00 08     )...)...)...)...
 80000bc:	29 1e 00 08                                         )...

080000c0 <mfilter>:
 80000c0:	b480      	push	{r7}
 80000c2:	b083      	sub	sp, #12
 80000c4:	af00      	add	r7, sp, #0
 80000c6:	6078      	str	r0, [r7, #4]
 80000c8:	6039      	str	r1, [r7, #0]
 80000ca:	687a      	ldr	r2, [r7, #4]
 80000cc:	4613      	mov	r3, r2
 80000ce:	009b      	lsls	r3, r3, #2
 80000d0:	4413      	add	r3, r2
 80000d2:	005b      	lsls	r3, r3, #1
 80000d4:	4619      	mov	r1, r3
 80000d6:	683b      	ldr	r3, [r7, #0]
 80000d8:	f240 32f6 	movw	r2, #1014	; 0x3f6
 80000dc:	fb02 f303 	mul.w	r3, r2, r3
 80000e0:	440b      	add	r3, r1
 80000e2:	129b      	asrs	r3, r3, #10
 80000e4:	4618      	mov	r0, r3
 80000e6:	370c      	adds	r7, #12
 80000e8:	46bd      	mov	sp, r7
 80000ea:	bc80      	pop	{r7}
 80000ec:	4770      	bx	lr
 80000ee:	bf00      	nop

080000f0 <brake_on>:
 80000f0:	b480      	push	{r7}
 80000f2:	af00      	add	r7, sp, #0
 80000f4:	4a04      	ldr	r2, [pc, #16]	; (8000108 <brake_on+0x18>)
 80000f6:	4b04      	ldr	r3, [pc, #16]	; (8000108 <brake_on+0x18>)
 80000f8:	681b      	ldr	r3, [r3, #0]
 80000fa:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 80000fe:	6013      	str	r3, [r2, #0]
 8000100:	bf00      	nop
 8000102:	46bd      	mov	sp, r7
 8000104:	bc80      	pop	{r7}
 8000106:	4770      	bx	lr
 8000108:	400e8000 	.word	0x400e8000

0800010c <brake_off>:
 800010c:	b480      	push	{r7}
 800010e:	af00      	add	r7, sp, #0
 8000110:	4a04      	ldr	r2, [pc, #16]	; (8000124 <brake_off+0x18>)
 8000112:	4b04      	ldr	r3, [pc, #16]	; (8000124 <brake_off+0x18>)
 8000114:	681b      	ldr	r3, [r3, #0]
 8000116:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 800011a:	6013      	str	r3, [r2, #0]
 800011c:	bf00      	nop
 800011e:	46bd      	mov	sp, r7
 8000120:	bc80      	pop	{r7}
 8000122:	4770      	bx	lr
 8000124:	400e8000 	.word	0x400e8000

08000128 <motor_off>:
 8000128:	b480      	push	{r7}
 800012a:	af00      	add	r7, sp, #0
 800012c:	4a04      	ldr	r2, [pc, #16]	; (8000140 <motor_off+0x18>)
 800012e:	4b04      	ldr	r3, [pc, #16]	; (8000140 <motor_off+0x18>)
 8000130:	681b      	ldr	r3, [r3, #0]
 8000132:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000136:	6013      	str	r3, [r2, #0]
 8000138:	bf00      	nop
 800013a:	46bd      	mov	sp, r7
 800013c:	bc80      	pop	{r7}
 800013e:	4770      	bx	lr
 8000140:	400e8000 	.word	0x400e8000

08000144 <motor_on>:
 8000144:	b480      	push	{r7}
 8000146:	af00      	add	r7, sp, #0
 8000148:	4a04      	ldr	r2, [pc, #16]	; (800015c <motor_on+0x18>)
 800014a:	4b04      	ldr	r3, [pc, #16]	; (800015c <motor_on+0x18>)
 800014c:	681b      	ldr	r3, [r3, #0]
 800014e:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8000152:	6013      	str	r3, [r2, #0]
 8000154:	bf00      	nop
 8000156:	46bd      	mov	sp, r7
 8000158:	bc80      	pop	{r7}
 800015a:	4770      	bx	lr
 800015c:	400e8000 	.word	0x400e8000

08000160 <sleep>:
 8000160:	b480      	push	{r7}
 8000162:	b085      	sub	sp, #20
 8000164:	af00      	add	r7, sp, #0
 8000166:	6078      	str	r0, [r7, #4]
 8000168:	4b08      	ldr	r3, [pc, #32]	; (800018c <sleep+0x2c>)
 800016a:	681a      	ldr	r2, [r3, #0]
 800016c:	687b      	ldr	r3, [r7, #4]
 800016e:	4413      	add	r3, r2
 8000170:	60fb      	str	r3, [r7, #12]
 8000172:	bf00      	nop
 8000174:	4b05      	ldr	r3, [pc, #20]	; (800018c <sleep+0x2c>)
 8000176:	681a      	ldr	r2, [r3, #0]
 8000178:	68fb      	ldr	r3, [r7, #12]
 800017a:	429a      	cmp	r2, r3
 800017c:	d3fa      	bcc.n	8000174 <sleep+0x14>
 800017e:	bf00      	nop
 8000180:	4618      	mov	r0, r3
 8000182:	3714      	adds	r7, #20
 8000184:	46bd      	mov	sp, r7
 8000186:	bc80      	pop	{r7}
 8000188:	4770      	bx	lr
 800018a:	bf00      	nop
 800018c:	200002f4 	.word	0x200002f4

08000190 <ssi_init>:
 8000190:	b480      	push	{r7}
 8000192:	af00      	add	r7, sp, #0
 8000194:	4a0c      	ldr	r2, [pc, #48]	; (80001c8 <ssi_init+0x38>)
 8000196:	4b0c      	ldr	r3, [pc, #48]	; (80001c8 <ssi_init+0x38>)
 8000198:	69db      	ldr	r3, [r3, #28]
 800019a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800019e:	61d3      	str	r3, [r2, #28]
 80001a0:	4b09      	ldr	r3, [pc, #36]	; (80001c8 <ssi_init+0x38>)
 80001a2:	4a0a      	ldr	r2, [pc, #40]	; (80001cc <ssi_init+0x3c>)
 80001a4:	62da      	str	r2, [r3, #44]	; 0x2c
 80001a6:	4b0a      	ldr	r3, [pc, #40]	; (80001d0 <ssi_init+0x40>)
 80001a8:	2200      	movs	r2, #0
 80001aa:	605a      	str	r2, [r3, #4]
 80001ac:	4b08      	ldr	r3, [pc, #32]	; (80001d0 <ssi_init+0x40>)
 80001ae:	2206      	movs	r2, #6
 80001b0:	611a      	str	r2, [r3, #16]
 80001b2:	4b07      	ldr	r3, [pc, #28]	; (80001d0 <ssi_init+0x40>)
 80001b4:	f240 221f 	movw	r2, #543	; 0x21f
 80001b8:	601a      	str	r2, [r3, #0]
 80001ba:	4b05      	ldr	r3, [pc, #20]	; (80001d0 <ssi_init+0x40>)
 80001bc:	2202      	movs	r2, #2
 80001be:	605a      	str	r2, [r3, #4]
 80001c0:	bf00      	nop
 80001c2:	46bd      	mov	sp, r7
 80001c4:	bc80      	pop	{r7}
 80001c6:	4770      	bx	lr
 80001c8:	40020000 	.word	0x40020000
 80001cc:	0100000a 	.word	0x0100000a
 80001d0:	40040000 	.word	0x40040000

080001d4 <b2g>:
 80001d4:	b480      	push	{r7}
 80001d6:	b083      	sub	sp, #12
 80001d8:	af00      	add	r7, sp, #0
 80001da:	6078      	str	r0, [r7, #4]
 80001dc:	687b      	ldr	r3, [r7, #4]
 80001de:	085a      	lsrs	r2, r3, #1
 80001e0:	687b      	ldr	r3, [r7, #4]
 80001e2:	4053      	eors	r3, r2
 80001e4:	4618      	mov	r0, r3
 80001e6:	370c      	adds	r7, #12
 80001e8:	46bd      	mov	sp, r7
 80001ea:	bc80      	pop	{r7}
 80001ec:	4770      	bx	lr
 80001ee:	bf00      	nop

080001f0 <g2b>:
 80001f0:	b480      	push	{r7}
 80001f2:	b085      	sub	sp, #20
 80001f4:	af00      	add	r7, sp, #0
 80001f6:	6078      	str	r0, [r7, #4]
 80001f8:	2300      	movs	r3, #0
 80001fa:	60fb      	str	r3, [r7, #12]
 80001fc:	2300      	movs	r3, #0
 80001fe:	60fb      	str	r3, [r7, #12]
 8000200:	e006      	b.n	8000210 <g2b+0x20>
 8000202:	68fa      	ldr	r2, [r7, #12]
 8000204:	687b      	ldr	r3, [r7, #4]
 8000206:	4053      	eors	r3, r2
 8000208:	60fb      	str	r3, [r7, #12]
 800020a:	687b      	ldr	r3, [r7, #4]
 800020c:	085b      	lsrs	r3, r3, #1
 800020e:	607b      	str	r3, [r7, #4]
 8000210:	687b      	ldr	r3, [r7, #4]
 8000212:	2b00      	cmp	r3, #0
 8000214:	d1f5      	bne.n	8000202 <g2b+0x12>
 8000216:	68fb      	ldr	r3, [r7, #12]
 8000218:	4618      	mov	r0, r3
 800021a:	3714      	adds	r7, #20
 800021c:	46bd      	mov	sp, r7
 800021e:	bc80      	pop	{r7}
 8000220:	4770      	bx	lr
 8000222:	bf00      	nop

08000224 <enc_crc>:
 8000224:	b480      	push	{r7}
 8000226:	b085      	sub	sp, #20
 8000228:	af00      	add	r7, sp, #0
 800022a:	6078      	str	r0, [r7, #4]
 800022c:	687b      	ldr	r3, [r7, #4]
 800022e:	60bb      	str	r3, [r7, #8]
 8000230:	2300      	movs	r3, #0
 8000232:	60fb      	str	r3, [r7, #12]
 8000234:	e006      	b.n	8000244 <enc_crc+0x20>
 8000236:	68fa      	ldr	r2, [r7, #12]
 8000238:	68bb      	ldr	r3, [r7, #8]
 800023a:	4053      	eors	r3, r2
 800023c:	60fb      	str	r3, [r7, #12]
 800023e:	68bb      	ldr	r3, [r7, #8]
 8000240:	085b      	lsrs	r3, r3, #1
 8000242:	60bb      	str	r3, [r7, #8]
 8000244:	68bb      	ldr	r3, [r7, #8]
 8000246:	2b00      	cmp	r3, #0
 8000248:	d1f5      	bne.n	8000236 <enc_crc+0x12>
 800024a:	68fb      	ldr	r3, [r7, #12]
 800024c:	f003 0301 	and.w	r3, r3, #1
 8000250:	2b00      	cmp	r3, #0
 8000252:	d107      	bne.n	8000264 <enc_crc+0x40>
 8000254:	687b      	ldr	r3, [r7, #4]
 8000256:	f3c3 030b 	ubfx	r3, r3, #0, #12
 800025a:	4a06      	ldr	r2, [pc, #24]	; (8000274 <enc_crc+0x50>)
 800025c:	6013      	str	r3, [r2, #0]
 800025e:	4b05      	ldr	r3, [pc, #20]	; (8000274 <enc_crc+0x50>)
 8000260:	681b      	ldr	r3, [r3, #0]
 8000262:	2b00      	cmp	r3, #0
 8000264:	4b03      	ldr	r3, [pc, #12]	; (8000274 <enc_crc+0x50>)
 8000266:	681b      	ldr	r3, [r3, #0]
 8000268:	4618      	mov	r0, r3
 800026a:	3714      	adds	r7, #20
 800026c:	46bd      	mov	sp, r7
 800026e:	bc80      	pop	{r7}
 8000270:	4770      	bx	lr
 8000272:	bf00      	nop
 8000274:	200002c4 	.word	0x200002c4

08000278 <dac_init>:
 8000278:	b480      	push	{r7}
 800027a:	af00      	add	r7, sp, #0
 800027c:	4a07      	ldr	r2, [pc, #28]	; (800029c <dac_init+0x24>)
 800027e:	4b07      	ldr	r3, [pc, #28]	; (800029c <dac_init+0x24>)
 8000280:	69db      	ldr	r3, [r3, #28]
 8000282:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 8000286:	61d3      	str	r3, [r2, #28]
 8000288:	4a05      	ldr	r2, [pc, #20]	; (80002a0 <dac_init+0x28>)
 800028a:	4b05      	ldr	r3, [pc, #20]	; (80002a0 <dac_init+0x28>)
 800028c:	681b      	ldr	r3, [r3, #0]
 800028e:	f043 030c 	orr.w	r3, r3, #12
 8000292:	6013      	str	r3, [r2, #0]
 8000294:	bf00      	nop
 8000296:	46bd      	mov	sp, r7
 8000298:	bc80      	pop	{r7}
 800029a:	4770      	bx	lr
 800029c:	40020000 	.word	0x40020000
 80002a0:	40090000 	.word	0x40090000

080002a4 <encoder_start>:
 80002a4:	b480      	push	{r7}
 80002a6:	af00      	add	r7, sp, #0
 80002a8:	4b03      	ldr	r3, [pc, #12]	; (80002b8 <encoder_start+0x14>)
 80002aa:	f240 5255 	movw	r2, #1365	; 0x555
 80002ae:	609a      	str	r2, [r3, #8]
 80002b0:	bf00      	nop
 80002b2:	46bd      	mov	sp, r7
 80002b4:	bc80      	pop	{r7}
 80002b6:	4770      	bx	lr
 80002b8:	40040000 	.word	0x40040000

080002bc <Timer3_IRQHandler>:
 80002bc:	b580      	push	{r7, lr}
 80002be:	af00      	add	r7, sp, #0
 80002c0:	4b04      	ldr	r3, [pc, #16]	; (80002d4 <Timer3_IRQHandler+0x18>)
 80002c2:	2200      	movs	r2, #0
 80002c4:	655a      	str	r2, [r3, #84]	; 0x54
 80002c6:	f7ff ffed 	bl	80002a4 <encoder_start>
 80002ca:	f001 fa53 	bl	8001774 <adc_dma_start>
 80002ce:	bf00      	nop
 80002d0:	bd80      	pop	{r7, pc}
 80002d2:	bf00      	nop
 80002d4:	40080000 	.word	0x40080000

080002d8 <get_phase>:
 80002d8:	b580      	push	{r7, lr}
 80002da:	af00      	add	r7, sp, #0
 80002dc:	4b0a      	ldr	r3, [pc, #40]	; (8000308 <get_phase+0x30>)
 80002de:	f240 5255 	movw	r2, #1365	; 0x555
 80002e2:	609a      	str	r2, [r3, #8]
 80002e4:	bf00      	nop
 80002e6:	4b08      	ldr	r3, [pc, #32]	; (8000308 <get_phase+0x30>)
 80002e8:	68db      	ldr	r3, [r3, #12]
 80002ea:	f003 0304 	and.w	r3, r3, #4
 80002ee:	2b00      	cmp	r3, #0
 80002f0:	d0f9      	beq.n	80002e6 <get_phase+0xe>
 80002f2:	4b05      	ldr	r3, [pc, #20]	; (8000308 <get_phase+0x30>)
 80002f4:	689b      	ldr	r3, [r3, #8]
 80002f6:	f3c3 030b 	ubfx	r3, r3, #0, #12
 80002fa:	4618      	mov	r0, r3
 80002fc:	f7ff ff78 	bl	80001f0 <g2b>
 8000300:	4603      	mov	r3, r0
 8000302:	4618      	mov	r0, r3
 8000304:	bd80      	pop	{r7, pc}
 8000306:	bf00      	nop
 8000308:	40040000 	.word	0x40040000

0800030c <pwm_seta>:
 800030c:	b480      	push	{r7}
 800030e:	b083      	sub	sp, #12
 8000310:	af00      	add	r7, sp, #0
 8000312:	6078      	str	r0, [r7, #4]
 8000314:	4a04      	ldr	r2, [pc, #16]	; (8000328 <pwm_seta+0x1c>)
 8000316:	687b      	ldr	r3, [r7, #4]
 8000318:	f503 7300 	add.w	r3, r3, #512	; 0x200
 800031c:	6113      	str	r3, [r2, #16]
 800031e:	bf00      	nop
 8000320:	370c      	adds	r7, #12
 8000322:	46bd      	mov	sp, r7
 8000324:	bc80      	pop	{r7}
 8000326:	4770      	bx	lr
 8000328:	40080000 	.word	0x40080000

0800032c <pwm_setb>:
 800032c:	b480      	push	{r7}
 800032e:	b083      	sub	sp, #12
 8000330:	af00      	add	r7, sp, #0
 8000332:	6078      	str	r0, [r7, #4]
 8000334:	4a04      	ldr	r2, [pc, #16]	; (8000348 <pwm_setb+0x1c>)
 8000336:	687b      	ldr	r3, [r7, #4]
 8000338:	f503 7300 	add.w	r3, r3, #512	; 0x200
 800033c:	6153      	str	r3, [r2, #20]
 800033e:	bf00      	nop
 8000340:	370c      	adds	r7, #12
 8000342:	46bd      	mov	sp, r7
 8000344:	bc80      	pop	{r7}
 8000346:	4770      	bx	lr
 8000348:	40080000 	.word	0x40080000

0800034c <pwm_setc>:
 800034c:	b480      	push	{r7}
 800034e:	b083      	sub	sp, #12
 8000350:	af00      	add	r7, sp, #0
 8000352:	6078      	str	r0, [r7, #4]
 8000354:	4a04      	ldr	r2, [pc, #16]	; (8000368 <pwm_setc+0x1c>)
 8000356:	687b      	ldr	r3, [r7, #4]
 8000358:	f503 7300 	add.w	r3, r3, #512	; 0x200
 800035c:	6193      	str	r3, [r2, #24]
 800035e:	bf00      	nop
 8000360:	370c      	adds	r7, #12
 8000362:	46bd      	mov	sp, r7
 8000364:	bc80      	pop	{r7}
 8000366:	4770      	bx	lr
 8000368:	40080000 	.word	0x40080000

0800036c <update_telemetry>:
 800036c:	b480      	push	{r7}
 800036e:	b083      	sub	sp, #12
 8000370:	af00      	add	r7, sp, #0
 8000372:	4b49      	ldr	r3, [pc, #292]	; (8000498 <update_telemetry+0x12c>)
 8000374:	6d5b      	ldr	r3, [r3, #84]	; 0x54
 8000376:	f003 0302 	and.w	r3, r3, #2
 800037a:	2b00      	cmp	r3, #0
 800037c:	d075      	beq.n	800046a <update_telemetry+0xfe>
 800037e:	4b46      	ldr	r3, [pc, #280]	; (8000498 <update_telemetry+0x12c>)
 8000380:	2200      	movs	r2, #0
 8000382:	655a      	str	r2, [r3, #84]	; 0x54
 8000384:	4a45      	ldr	r2, [pc, #276]	; (800049c <update_telemetry+0x130>)
 8000386:	4b45      	ldr	r3, [pc, #276]	; (800049c <update_telemetry+0x130>)
 8000388:	681b      	ldr	r3, [r3, #0]
 800038a:	f043 0301 	orr.w	r3, r3, #1
 800038e:	6013      	str	r3, [r2, #0]
 8000390:	4a43      	ldr	r2, [pc, #268]	; (80004a0 <update_telemetry+0x134>)
 8000392:	4b43      	ldr	r3, [pc, #268]	; (80004a0 <update_telemetry+0x134>)
 8000394:	699b      	ldr	r3, [r3, #24]
 8000396:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 800039a:	6193      	str	r3, [r2, #24]
 800039c:	4b3e      	ldr	r3, [pc, #248]	; (8000498 <update_telemetry+0x12c>)
 800039e:	695b      	ldr	r3, [r3, #20]
 80003a0:	b29b      	uxth	r3, r3
 80003a2:	f503 7396 	add.w	r3, r3, #300	; 0x12c
 80003a6:	80fb      	strh	r3, [r7, #6]
 80003a8:	88fb      	ldrh	r3, [r7, #6]
 80003aa:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80003ae:	d205      	bcs.n	80003bc <update_telemetry+0x50>
 80003b0:	4a39      	ldr	r2, [pc, #228]	; (8000498 <update_telemetry+0x12c>)
 80003b2:	4b39      	ldr	r3, [pc, #228]	; (8000498 <update_telemetry+0x12c>)
 80003b4:	681b      	ldr	r3, [r3, #0]
 80003b6:	3301      	adds	r3, #1
 80003b8:	6013      	str	r3, [r2, #0]
 80003ba:	e008      	b.n	80003ce <update_telemetry+0x62>
 80003bc:	88fb      	ldrh	r3, [r7, #6]
 80003be:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80003c2:	d904      	bls.n	80003ce <update_telemetry+0x62>
 80003c4:	4a34      	ldr	r2, [pc, #208]	; (8000498 <update_telemetry+0x12c>)
 80003c6:	4b34      	ldr	r3, [pc, #208]	; (8000498 <update_telemetry+0x12c>)
 80003c8:	681b      	ldr	r3, [r3, #0]
 80003ca:	3b01      	subs	r3, #1
 80003cc:	6013      	str	r3, [r2, #0]
 80003ce:	4b35      	ldr	r3, [pc, #212]	; (80004a4 <update_telemetry+0x138>)
 80003d0:	681a      	ldr	r2, [r3, #0]
 80003d2:	4b35      	ldr	r3, [pc, #212]	; (80004a8 <update_telemetry+0x13c>)
 80003d4:	681b      	ldr	r3, [r3, #0]
 80003d6:	1ad3      	subs	r3, r2, r3
 80003d8:	4a34      	ldr	r2, [pc, #208]	; (80004ac <update_telemetry+0x140>)
 80003da:	fb82 1203 	smull	r1, r2, r2, r3
 80003de:	441a      	add	r2, r3
 80003e0:	1152      	asrs	r2, r2, #5
 80003e2:	17db      	asrs	r3, r3, #31
 80003e4:	1ad3      	subs	r3, r2, r3
 80003e6:	80bb      	strh	r3, [r7, #4]
 80003e8:	2300      	movs	r3, #0
 80003ea:	70fb      	strb	r3, [r7, #3]
 80003ec:	4b30      	ldr	r3, [pc, #192]	; (80004b0 <update_telemetry+0x144>)
 80003ee:	4a31      	ldr	r2, [pc, #196]	; (80004b4 <update_telemetry+0x148>)
 80003f0:	6812      	ldr	r2, [r2, #0]
 80003f2:	601a      	str	r2, [r3, #0]
 80003f4:	b2d2      	uxtb	r2, r2
 80003f6:	78fb      	ldrb	r3, [r7, #3]
 80003f8:	4053      	eors	r3, r2
 80003fa:	70fb      	strb	r3, [r7, #3]
 80003fc:	4a2c      	ldr	r2, [pc, #176]	; (80004b0 <update_telemetry+0x144>)
 80003fe:	4b2d      	ldr	r3, [pc, #180]	; (80004b4 <update_telemetry+0x148>)
 8000400:	681b      	ldr	r3, [r3, #0]
 8000402:	121b      	asrs	r3, r3, #8
 8000404:	6013      	str	r3, [r2, #0]
 8000406:	b2da      	uxtb	r2, r3
 8000408:	78fb      	ldrb	r3, [r7, #3]
 800040a:	4053      	eors	r3, r2
 800040c:	70fb      	strb	r3, [r7, #3]
 800040e:	4a28      	ldr	r2, [pc, #160]	; (80004b0 <update_telemetry+0x144>)
 8000410:	f9b7 3004 	ldrsh.w	r3, [r7, #4]
 8000414:	6013      	str	r3, [r2, #0]
 8000416:	b2da      	uxtb	r2, r3
 8000418:	78fb      	ldrb	r3, [r7, #3]
 800041a:	4053      	eors	r3, r2
 800041c:	70fb      	strb	r3, [r7, #3]
 800041e:	4a24      	ldr	r2, [pc, #144]	; (80004b0 <update_telemetry+0x144>)
 8000420:	f9b7 3004 	ldrsh.w	r3, [r7, #4]
 8000424:	121b      	asrs	r3, r3, #8
 8000426:	b21b      	sxth	r3, r3
 8000428:	6013      	str	r3, [r2, #0]
 800042a:	b2da      	uxtb	r2, r3
 800042c:	78fb      	ldrb	r3, [r7, #3]
 800042e:	4053      	eors	r3, r2
 8000430:	70fb      	strb	r3, [r7, #3]
 8000432:	4b1f      	ldr	r3, [pc, #124]	; (80004b0 <update_telemetry+0x144>)
 8000434:	4a20      	ldr	r2, [pc, #128]	; (80004b8 <update_telemetry+0x14c>)
 8000436:	6812      	ldr	r2, [r2, #0]
 8000438:	601a      	str	r2, [r3, #0]
 800043a:	b2d2      	uxtb	r2, r2
 800043c:	78fb      	ldrb	r3, [r7, #3]
 800043e:	4053      	eors	r3, r2
 8000440:	70fb      	strb	r3, [r7, #3]
 8000442:	4a1b      	ldr	r2, [pc, #108]	; (80004b0 <update_telemetry+0x144>)
 8000444:	4b1c      	ldr	r3, [pc, #112]	; (80004b8 <update_telemetry+0x14c>)
 8000446:	681b      	ldr	r3, [r3, #0]
 8000448:	121b      	asrs	r3, r3, #8
 800044a:	6013      	str	r3, [r2, #0]
 800044c:	b2da      	uxtb	r2, r3
 800044e:	78fb      	ldrb	r3, [r7, #3]
 8000450:	4053      	eors	r3, r2
 8000452:	70fb      	strb	r3, [r7, #3]
 8000454:	4b16      	ldr	r3, [pc, #88]	; (80004b0 <update_telemetry+0x144>)
 8000456:	4a19      	ldr	r2, [pc, #100]	; (80004bc <update_telemetry+0x150>)
 8000458:	7812      	ldrb	r2, [r2, #0]
 800045a:	601a      	str	r2, [r3, #0]
 800045c:	b2d2      	uxtb	r2, r2
 800045e:	78fb      	ldrb	r3, [r7, #3]
 8000460:	4053      	eors	r3, r2
 8000462:	70fb      	strb	r3, [r7, #3]
 8000464:	4a12      	ldr	r2, [pc, #72]	; (80004b0 <update_telemetry+0x144>)
 8000466:	78fb      	ldrb	r3, [r7, #3]
 8000468:	6013      	str	r3, [r2, #0]
 800046a:	4b11      	ldr	r3, [pc, #68]	; (80004b0 <update_telemetry+0x144>)
 800046c:	699b      	ldr	r3, [r3, #24]
 800046e:	f003 0308 	and.w	r3, r3, #8
 8000472:	2b00      	cmp	r3, #0
 8000474:	d10b      	bne.n	800048e <update_telemetry+0x122>
 8000476:	4a09      	ldr	r2, [pc, #36]	; (800049c <update_telemetry+0x130>)
 8000478:	4b08      	ldr	r3, [pc, #32]	; (800049c <update_telemetry+0x130>)
 800047a:	681b      	ldr	r3, [r3, #0]
 800047c:	f023 0301 	bic.w	r3, r3, #1
 8000480:	6013      	str	r3, [r2, #0]
 8000482:	4a07      	ldr	r2, [pc, #28]	; (80004a0 <update_telemetry+0x134>)
 8000484:	4b06      	ldr	r3, [pc, #24]	; (80004a0 <update_telemetry+0x134>)
 8000486:	699b      	ldr	r3, [r3, #24]
 8000488:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
 800048c:	6193      	str	r3, [r2, #24]
 800048e:	bf00      	nop
 8000490:	370c      	adds	r7, #12
 8000492:	46bd      	mov	sp, r7
 8000494:	bc80      	pop	{r7}
 8000496:	4770      	bx	lr
 8000498:	40070000 	.word	0x40070000
 800049c:	400a8000 	.word	0x400a8000
 80004a0:	400b0000 	.word	0x400b0000
 80004a4:	20000248 	.word	0x20000248
 80004a8:	2000024c 	.word	0x2000024c
 80004ac:	8fb823ef 	.word	0x8fb823ef
 80004b0:	40030000 	.word	0x40030000
 80004b4:	2000025c 	.word	0x2000025c
 80004b8:	20000254 	.word	0x20000254
 80004bc:	20000261 	.word	0x20000261

080004c0 <update_refposition>:
 80004c0:	b480      	push	{r7}
 80004c2:	b089      	sub	sp, #36	; 0x24
 80004c4:	af00      	add	r7, sp, #0
 80004c6:	4b4f      	ldr	r3, [pc, #316]	; (8000604 <update_refposition+0x144>)
 80004c8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80004ca:	f003 0310 	and.w	r3, r3, #16
 80004ce:	2b00      	cmp	r3, #0
 80004d0:	f000 8083 	beq.w	80005da <update_refposition+0x11a>
 80004d4:	2300      	movs	r3, #0
 80004d6:	61fb      	str	r3, [r7, #28]
 80004d8:	e00c      	b.n	80004f4 <update_refposition+0x34>
 80004da:	4b4a      	ldr	r3, [pc, #296]	; (8000604 <update_refposition+0x144>)
 80004dc:	681b      	ldr	r3, [r3, #0]
 80004de:	b2d9      	uxtb	r1, r3
 80004e0:	463a      	mov	r2, r7
 80004e2:	69fb      	ldr	r3, [r7, #28]
 80004e4:	4413      	add	r3, r2
 80004e6:	460a      	mov	r2, r1
 80004e8:	701a      	strb	r2, [r3, #0]
 80004ea:	69fb      	ldr	r3, [r7, #28]
 80004ec:	3301      	adds	r3, #1
 80004ee:	f003 030f 	and.w	r3, r3, #15
 80004f2:	61fb      	str	r3, [r7, #28]
 80004f4:	4b43      	ldr	r3, [pc, #268]	; (8000604 <update_refposition+0x144>)
 80004f6:	699b      	ldr	r3, [r3, #24]
 80004f8:	f003 0310 	and.w	r3, r3, #16
 80004fc:	2b00      	cmp	r3, #0
 80004fe:	d0ec      	beq.n	80004da <update_refposition+0x1a>
 8000500:	2300      	movs	r3, #0
 8000502:	767b      	strb	r3, [r7, #25]
 8000504:	463b      	mov	r3, r7
 8000506:	617b      	str	r3, [r7, #20]
 8000508:	697b      	ldr	r3, [r7, #20]
 800050a:	1c5a      	adds	r2, r3, #1
 800050c:	617a      	str	r2, [r7, #20]
 800050e:	781a      	ldrb	r2, [r3, #0]
 8000510:	7e7b      	ldrb	r3, [r7, #25]
 8000512:	4053      	eors	r3, r2
 8000514:	767b      	strb	r3, [r7, #25]
 8000516:	697b      	ldr	r3, [r7, #20]
 8000518:	1c5a      	adds	r2, r3, #1
 800051a:	617a      	str	r2, [r7, #20]
 800051c:	781a      	ldrb	r2, [r3, #0]
 800051e:	7e7b      	ldrb	r3, [r7, #25]
 8000520:	4053      	eors	r3, r2
 8000522:	767b      	strb	r3, [r7, #25]
 8000524:	697b      	ldr	r3, [r7, #20]
 8000526:	1c5a      	adds	r2, r3, #1
 8000528:	617a      	str	r2, [r7, #20]
 800052a:	781a      	ldrb	r2, [r3, #0]
 800052c:	7e7b      	ldrb	r3, [r7, #25]
 800052e:	4053      	eors	r3, r2
 8000530:	767b      	strb	r3, [r7, #25]
 8000532:	697b      	ldr	r3, [r7, #20]
 8000534:	1c5a      	adds	r2, r3, #1
 8000536:	617a      	str	r2, [r7, #20]
 8000538:	781a      	ldrb	r2, [r3, #0]
 800053a:	7e7b      	ldrb	r3, [r7, #25]
 800053c:	4053      	eors	r3, r2
 800053e:	767b      	strb	r3, [r7, #25]
 8000540:	697b      	ldr	r3, [r7, #20]
 8000542:	1c5a      	adds	r2, r3, #1
 8000544:	617a      	str	r2, [r7, #20]
 8000546:	781a      	ldrb	r2, [r3, #0]
 8000548:	7e7b      	ldrb	r3, [r7, #25]
 800054a:	4053      	eors	r3, r2
 800054c:	767b      	strb	r3, [r7, #25]
 800054e:	697b      	ldr	r3, [r7, #20]
 8000550:	1c5a      	adds	r2, r3, #1
 8000552:	617a      	str	r2, [r7, #20]
 8000554:	781a      	ldrb	r2, [r3, #0]
 8000556:	7e7b      	ldrb	r3, [r7, #25]
 8000558:	4053      	eors	r3, r2
 800055a:	767b      	strb	r3, [r7, #25]
 800055c:	697b      	ldr	r3, [r7, #20]
 800055e:	1c5a      	adds	r2, r3, #1
 8000560:	617a      	str	r2, [r7, #20]
 8000562:	781a      	ldrb	r2, [r3, #0]
 8000564:	7e7b      	ldrb	r3, [r7, #25]
 8000566:	4053      	eors	r3, r2
 8000568:	767b      	strb	r3, [r7, #25]
 800056a:	697b      	ldr	r3, [r7, #20]
 800056c:	1c5a      	adds	r2, r3, #1
 800056e:	617a      	str	r2, [r7, #20]
 8000570:	781a      	ldrb	r2, [r3, #0]
 8000572:	7e7b      	ldrb	r3, [r7, #25]
 8000574:	4053      	eors	r3, r2
 8000576:	767b      	strb	r3, [r7, #25]
 8000578:	7e7b      	ldrb	r3, [r7, #25]
 800057a:	2b00      	cmp	r3, #0
 800057c:	d12d      	bne.n	80005da <update_refposition+0x11a>
 800057e:	783b      	ldrb	r3, [r7, #0]
 8000580:	b29a      	uxth	r2, r3
 8000582:	787b      	ldrb	r3, [r7, #1]
 8000584:	b29b      	uxth	r3, r3
 8000586:	021b      	lsls	r3, r3, #8
 8000588:	b29b      	uxth	r3, r3
 800058a:	4413      	add	r3, r2
 800058c:	b29b      	uxth	r3, r3
 800058e:	837b      	strh	r3, [r7, #26]
 8000590:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
 8000594:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
 8000598:	db03      	blt.n	80005a2 <update_refposition+0xe2>
 800059a:	f240 73ff 	movw	r3, #2047	; 0x7ff
 800059e:	837b      	strh	r3, [r7, #26]
 80005a0:	bf00      	nop
 80005a2:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
 80005a6:	f513 6f00 	cmn.w	r3, #2048	; 0x800
 80005aa:	da03      	bge.n	80005b4 <update_refposition+0xf4>
 80005ac:	f44f 4378 	mov.w	r3, #63488	; 0xf800
 80005b0:	837b      	strh	r3, [r7, #26]
 80005b2:	bf00      	nop
 80005b4:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
 80005b8:	4a13      	ldr	r2, [pc, #76]	; (8000608 <update_refposition+0x148>)
 80005ba:	6013      	str	r3, [r2, #0]
 80005bc:	f9b7 201a 	ldrsh.w	r2, [r7, #26]
 80005c0:	4613      	mov	r3, r2
 80005c2:	00db      	lsls	r3, r3, #3
 80005c4:	1a9b      	subs	r3, r3, r2
 80005c6:	00db      	lsls	r3, r3, #3
 80005c8:	441a      	add	r2, r3
 80005ca:	4b10      	ldr	r3, [pc, #64]	; (800060c <update_refposition+0x14c>)
 80005cc:	681b      	ldr	r3, [r3, #0]
 80005ce:	4413      	add	r3, r2
 80005d0:	4a0f      	ldr	r2, [pc, #60]	; (8000610 <update_refposition+0x150>)
 80005d2:	6013      	str	r3, [r2, #0]
 80005d4:	79ba      	ldrb	r2, [r7, #6]
 80005d6:	4b0f      	ldr	r3, [pc, #60]	; (8000614 <update_refposition+0x154>)
 80005d8:	701a      	strb	r2, [r3, #0]
 80005da:	4b0a      	ldr	r3, [pc, #40]	; (8000604 <update_refposition+0x144>)
 80005dc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80005de:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80005e2:	2b00      	cmp	r3, #0
 80005e4:	d009      	beq.n	80005fa <update_refposition+0x13a>
 80005e6:	e002      	b.n	80005ee <update_refposition+0x12e>
 80005e8:	4b06      	ldr	r3, [pc, #24]	; (8000604 <update_refposition+0x144>)
 80005ea:	681b      	ldr	r3, [r3, #0]
 80005ec:	74fb      	strb	r3, [r7, #19]
 80005ee:	4b05      	ldr	r3, [pc, #20]	; (8000604 <update_refposition+0x144>)
 80005f0:	699b      	ldr	r3, [r3, #24]
 80005f2:	f003 0310 	and.w	r3, r3, #16
 80005f6:	2b00      	cmp	r3, #0
 80005f8:	d0f6      	beq.n	80005e8 <update_refposition+0x128>
 80005fa:	bf00      	nop
 80005fc:	3724      	adds	r7, #36	; 0x24
 80005fe:	46bd      	mov	sp, r7
 8000600:	bc80      	pop	{r7}
 8000602:	4770      	bx	lr
 8000604:	40030000 	.word	0x40030000
 8000608:	2000025c 	.word	0x2000025c
 800060c:	2000024c 	.word	0x2000024c
 8000610:	20000220 	.word	0x20000220
 8000614:	20000260 	.word	0x20000260

08000618 <fault_positioning_proc>:
 8000618:	b580      	push	{r7, lr}
 800061a:	af00      	add	r7, sp, #0
 800061c:	4b04      	ldr	r3, [pc, #16]	; (8000630 <fault_positioning_proc+0x18>)
 800061e:	2201      	movs	r2, #1
 8000620:	701a      	strb	r2, [r3, #0]
 8000622:	f7ff fd81 	bl	8000128 <motor_off>
 8000626:	f7ff fd63 	bl	80000f0 <brake_on>
 800062a:	2300      	movs	r3, #0
 800062c:	4618      	mov	r0, r3
 800062e:	bd80      	pop	{r7, pc}
 8000630:	20000261 	.word	0x20000261

08000634 <remote_positioning_proc>:
 8000634:	b580      	push	{r7, lr}
 8000636:	b082      	sub	sp, #8
 8000638:	af00      	add	r7, sp, #0
 800063a:	4b0c      	ldr	r3, [pc, #48]	; (800066c <remote_positioning_proc+0x38>)
 800063c:	781b      	ldrb	r3, [r3, #0]
 800063e:	f043 0302 	orr.w	r3, r3, #2
 8000642:	b2da      	uxtb	r2, r3
 8000644:	4b09      	ldr	r3, [pc, #36]	; (800066c <remote_positioning_proc+0x38>)
 8000646:	701a      	strb	r2, [r3, #0]
 8000648:	4b09      	ldr	r3, [pc, #36]	; (8000670 <remote_positioning_proc+0x3c>)
 800064a:	681a      	ldr	r2, [r3, #0]
 800064c:	4b09      	ldr	r3, [pc, #36]	; (8000674 <remote_positioning_proc+0x40>)
 800064e:	681b      	ldr	r3, [r3, #0]
 8000650:	1ad3      	subs	r3, r2, r3
 8000652:	607b      	str	r3, [r7, #4]
 8000654:	2200      	movs	r2, #0
 8000656:	6879      	ldr	r1, [r7, #4]
 8000658:	4807      	ldr	r0, [pc, #28]	; (8000678 <remote_positioning_proc+0x44>)
 800065a:	f000 fbe9 	bl	8000e30 <reg_update>
 800065e:	4b06      	ldr	r3, [pc, #24]	; (8000678 <remote_positioning_proc+0x44>)
 8000660:	68db      	ldr	r3, [r3, #12]
 8000662:	131b      	asrs	r3, r3, #12
 8000664:	4618      	mov	r0, r3
 8000666:	3708      	adds	r7, #8
 8000668:	46bd      	mov	sp, r7
 800066a:	bd80      	pop	{r7, pc}
 800066c:	20000261 	.word	0x20000261
 8000670:	20000220 	.word	0x20000220
 8000674:	20000248 	.word	0x20000248
 8000678:	20000298 	.word	0x20000298

0800067c <emulator_positioning_proc>:
 800067c:	b480      	push	{r7}
 800067e:	af00      	add	r7, sp, #0
 8000680:	4b10      	ldr	r3, [pc, #64]	; (80006c4 <emulator_positioning_proc+0x48>)
 8000682:	781b      	ldrb	r3, [r3, #0]
 8000684:	f003 0308 	and.w	r3, r3, #8
 8000688:	2b00      	cmp	r3, #0
 800068a:	d10a      	bne.n	80006a2 <emulator_positioning_proc+0x26>
 800068c:	4b0e      	ldr	r3, [pc, #56]	; (80006c8 <emulator_positioning_proc+0x4c>)
 800068e:	4a0f      	ldr	r2, [pc, #60]	; (80006cc <emulator_positioning_proc+0x50>)
 8000690:	601a      	str	r2, [r3, #0]
 8000692:	4b0f      	ldr	r3, [pc, #60]	; (80006d0 <emulator_positioning_proc+0x54>)
 8000694:	781b      	ldrb	r3, [r3, #0]
 8000696:	f023 0304 	bic.w	r3, r3, #4
 800069a:	b2da      	uxtb	r2, r3
 800069c:	4b0c      	ldr	r3, [pc, #48]	; (80006d0 <emulator_positioning_proc+0x54>)
 800069e:	701a      	strb	r2, [r3, #0]
 80006a0:	e00a      	b.n	80006b8 <emulator_positioning_proc+0x3c>
 80006a2:	4b0b      	ldr	r3, [pc, #44]	; (80006d0 <emulator_positioning_proc+0x54>)
 80006a4:	781b      	ldrb	r3, [r3, #0]
 80006a6:	f043 0304 	orr.w	r3, r3, #4
 80006aa:	b2da      	uxtb	r2, r3
 80006ac:	4b08      	ldr	r3, [pc, #32]	; (80006d0 <emulator_positioning_proc+0x54>)
 80006ae:	701a      	strb	r2, [r3, #0]
 80006b0:	4b08      	ldr	r3, [pc, #32]	; (80006d4 <emulator_positioning_proc+0x58>)
 80006b2:	681b      	ldr	r3, [r3, #0]
 80006b4:	4a08      	ldr	r2, [pc, #32]	; (80006d8 <emulator_positioning_proc+0x5c>)
 80006b6:	6013      	str	r3, [r2, #0]
 80006b8:	2300      	movs	r3, #0
 80006ba:	4618      	mov	r0, r3
 80006bc:	46bd      	mov	sp, r7
 80006be:	bc80      	pop	{r7}
 80006c0:	4770      	bx	lr
 80006c2:	bf00      	nop
 80006c4:	20000260 	.word	0x20000260
 80006c8:	20000264 	.word	0x20000264
 80006cc:	080006dd 	.word	0x080006dd
 80006d0:	20000261 	.word	0x20000261
 80006d4:	20000220 	.word	0x20000220
 80006d8:	20000248 	.word	0x20000248

080006dc <wait_for_launch_proc>:
 80006dc:	b580      	push	{r7, lr}
 80006de:	af00      	add	r7, sp, #0
 80006e0:	4b1e      	ldr	r3, [pc, #120]	; (800075c <wait_for_launch_proc+0x80>)
 80006e2:	781b      	ldrb	r3, [r3, #0]
 80006e4:	f043 0308 	orr.w	r3, r3, #8
 80006e8:	b2da      	uxtb	r2, r3
 80006ea:	4b1c      	ldr	r3, [pc, #112]	; (800075c <wait_for_launch_proc+0x80>)
 80006ec:	701a      	strb	r2, [r3, #0]
 80006ee:	4b1c      	ldr	r3, [pc, #112]	; (8000760 <wait_for_launch_proc+0x84>)
 80006f0:	681b      	ldr	r3, [r3, #0]
 80006f2:	f5b3 6ffa 	cmp.w	r3, #2000	; 0x7d0
 80006f6:	da04      	bge.n	8000702 <wait_for_launch_proc+0x26>
 80006f8:	4b1a      	ldr	r3, [pc, #104]	; (8000764 <wait_for_launch_proc+0x88>)
 80006fa:	4a1b      	ldr	r2, [pc, #108]	; (8000768 <wait_for_launch_proc+0x8c>)
 80006fc:	601a      	str	r2, [r3, #0]
 80006fe:	2300      	movs	r3, #0
 8000700:	e02a      	b.n	8000758 <wait_for_launch_proc+0x7c>
 8000702:	4b1a      	ldr	r3, [pc, #104]	; (800076c <wait_for_launch_proc+0x90>)
 8000704:	781b      	ldrb	r3, [r3, #0]
 8000706:	f003 0310 	and.w	r3, r3, #16
 800070a:	2b00      	cmp	r3, #0
 800070c:	d10d      	bne.n	800072a <wait_for_launch_proc+0x4e>
 800070e:	f7ff fd0b 	bl	8000128 <motor_off>
 8000712:	4b14      	ldr	r3, [pc, #80]	; (8000764 <wait_for_launch_proc+0x88>)
 8000714:	4a16      	ldr	r2, [pc, #88]	; (8000770 <wait_for_launch_proc+0x94>)
 8000716:	601a      	str	r2, [r3, #0]
 8000718:	4b10      	ldr	r3, [pc, #64]	; (800075c <wait_for_launch_proc+0x80>)
 800071a:	781b      	ldrb	r3, [r3, #0]
 800071c:	f023 0308 	bic.w	r3, r3, #8
 8000720:	b2da      	uxtb	r2, r3
 8000722:	4b0e      	ldr	r3, [pc, #56]	; (800075c <wait_for_launch_proc+0x80>)
 8000724:	701a      	strb	r2, [r3, #0]
 8000726:	2300      	movs	r3, #0
 8000728:	e016      	b.n	8000758 <wait_for_launch_proc+0x7c>
 800072a:	f7ff fd0b 	bl	8000144 <motor_on>
 800072e:	4b0f      	ldr	r3, [pc, #60]	; (800076c <wait_for_launch_proc+0x90>)
 8000730:	781b      	ldrb	r3, [r3, #0]
 8000732:	f003 0304 	and.w	r3, r3, #4
 8000736:	2b00      	cmp	r3, #0
 8000738:	d004      	beq.n	8000744 <wait_for_launch_proc+0x68>
 800073a:	4b0a      	ldr	r3, [pc, #40]	; (8000764 <wait_for_launch_proc+0x88>)
 800073c:	4a0d      	ldr	r2, [pc, #52]	; (8000774 <wait_for_launch_proc+0x98>)
 800073e:	601a      	str	r2, [r3, #0]
 8000740:	f7ff fce4 	bl	800010c <brake_off>
 8000744:	4b09      	ldr	r3, [pc, #36]	; (800076c <wait_for_launch_proc+0x90>)
 8000746:	781b      	ldrb	r3, [r3, #0]
 8000748:	f003 0308 	and.w	r3, r3, #8
 800074c:	2b00      	cmp	r3, #0
 800074e:	d002      	beq.n	8000756 <wait_for_launch_proc+0x7a>
 8000750:	4b04      	ldr	r3, [pc, #16]	; (8000764 <wait_for_launch_proc+0x88>)
 8000752:	4a09      	ldr	r2, [pc, #36]	; (8000778 <wait_for_launch_proc+0x9c>)
 8000754:	601a      	str	r2, [r3, #0]
 8000756:	2300      	movs	r3, #0
 8000758:	4618      	mov	r0, r3
 800075a:	bd80      	pop	{r7, pc}
 800075c:	20000261 	.word	0x20000261
 8000760:	20000258 	.word	0x20000258
 8000764:	20000264 	.word	0x20000264
 8000768:	08000619 	.word	0x08000619
 800076c:	20000260 	.word	0x20000260
 8000770:	0800077d 	.word	0x0800077d
 8000774:	08000635 	.word	0x08000635
 8000778:	0800067d 	.word	0x0800067d

0800077c <wait_positioning_proc>:
 800077c:	b580      	push	{r7, lr}
 800077e:	af00      	add	r7, sp, #0
 8000780:	4b10      	ldr	r3, [pc, #64]	; (80007c4 <wait_positioning_proc+0x48>)
 8000782:	2210      	movs	r2, #16
 8000784:	701a      	strb	r2, [r3, #0]
 8000786:	4b10      	ldr	r3, [pc, #64]	; (80007c8 <wait_positioning_proc+0x4c>)
 8000788:	781b      	ldrb	r3, [r3, #0]
 800078a:	f003 0310 	and.w	r3, r3, #16
 800078e:	2b00      	cmp	r3, #0
 8000790:	d014      	beq.n	80007bc <wait_positioning_proc+0x40>
 8000792:	4b0e      	ldr	r3, [pc, #56]	; (80007cc <wait_positioning_proc+0x50>)
 8000794:	681b      	ldr	r3, [r3, #0]
 8000796:	4a0e      	ldr	r2, [pc, #56]	; (80007d0 <wait_positioning_proc+0x54>)
 8000798:	6013      	str	r3, [r2, #0]
 800079a:	4b0e      	ldr	r3, [pc, #56]	; (80007d4 <wait_positioning_proc+0x58>)
 800079c:	4a0e      	ldr	r2, [pc, #56]	; (80007d8 <wait_positioning_proc+0x5c>)
 800079e:	601a      	str	r2, [r3, #0]
 80007a0:	4b0e      	ldr	r3, [pc, #56]	; (80007dc <wait_positioning_proc+0x60>)
 80007a2:	2200      	movs	r2, #0
 80007a4:	601a      	str	r2, [r3, #0]
 80007a6:	4b07      	ldr	r3, [pc, #28]	; (80007c4 <wait_positioning_proc+0x48>)
 80007a8:	781b      	ldrb	r3, [r3, #0]
 80007aa:	f043 0308 	orr.w	r3, r3, #8
 80007ae:	b2da      	uxtb	r2, r3
 80007b0:	4b04      	ldr	r3, [pc, #16]	; (80007c4 <wait_positioning_proc+0x48>)
 80007b2:	701a      	strb	r2, [r3, #0]
 80007b4:	f7ff fcc6 	bl	8000144 <motor_on>
 80007b8:	f7ff fca8 	bl	800010c <brake_off>
 80007bc:	2300      	movs	r3, #0
 80007be:	4618      	mov	r0, r3
 80007c0:	bd80      	pop	{r7, pc}
 80007c2:	bf00      	nop
 80007c4:	20000261 	.word	0x20000261
 80007c8:	20000260 	.word	0x20000260
 80007cc:	20000248 	.word	0x20000248
 80007d0:	2000024c 	.word	0x2000024c
 80007d4:	20000264 	.word	0x20000264
 80007d8:	080009a9 	.word	0x080009a9
 80007dc:	200002c0 	.word	0x200002c0

080007e0 <test3_positioning_proc>:
 80007e0:	b580      	push	{r7, lr}
 80007e2:	b082      	sub	sp, #8
 80007e4:	af00      	add	r7, sp, #0
 80007e6:	4b1f      	ldr	r3, [pc, #124]	; (8000864 <test3_positioning_proc+0x84>)
 80007e8:	681b      	ldr	r3, [r3, #0]
 80007ea:	f241 3287 	movw	r2, #4999	; 0x1387
 80007ee:	4293      	cmp	r3, r2
 80007f0:	dd04      	ble.n	80007fc <test3_positioning_proc+0x1c>
 80007f2:	4b1d      	ldr	r3, [pc, #116]	; (8000868 <test3_positioning_proc+0x88>)
 80007f4:	4a1d      	ldr	r2, [pc, #116]	; (800086c <test3_positioning_proc+0x8c>)
 80007f6:	601a      	str	r2, [r3, #0]
 80007f8:	2300      	movs	r3, #0
 80007fa:	e02e      	b.n	800085a <test3_positioning_proc+0x7a>
 80007fc:	4b19      	ldr	r3, [pc, #100]	; (8000864 <test3_positioning_proc+0x84>)
 80007fe:	681b      	ldr	r3, [r3, #0]
 8000800:	3301      	adds	r3, #1
 8000802:	4a18      	ldr	r2, [pc, #96]	; (8000864 <test3_positioning_proc+0x84>)
 8000804:	6013      	str	r3, [r2, #0]
 8000806:	4b1a      	ldr	r3, [pc, #104]	; (8000870 <test3_positioning_proc+0x90>)
 8000808:	681a      	ldr	r2, [r3, #0]
 800080a:	4b1a      	ldr	r3, [pc, #104]	; (8000874 <test3_positioning_proc+0x94>)
 800080c:	681b      	ldr	r3, [r3, #0]
 800080e:	1ad3      	subs	r3, r2, r3
 8000810:	607b      	str	r3, [r7, #4]
 8000812:	687b      	ldr	r3, [r7, #4]
 8000814:	f113 0f02 	cmn.w	r3, #2
 8000818:	db17      	blt.n	800084a <test3_positioning_proc+0x6a>
 800081a:	687b      	ldr	r3, [r7, #4]
 800081c:	2b02      	cmp	r3, #2
 800081e:	dc14      	bgt.n	800084a <test3_positioning_proc+0x6a>
 8000820:	4b10      	ldr	r3, [pc, #64]	; (8000864 <test3_positioning_proc+0x84>)
 8000822:	681b      	ldr	r3, [r3, #0]
 8000824:	f5b3 6f7a 	cmp.w	r3, #4000	; 0xfa0
 8000828:	db0f      	blt.n	800084a <test3_positioning_proc+0x6a>
 800082a:	4b13      	ldr	r3, [pc, #76]	; (8000878 <test3_positioning_proc+0x98>)
 800082c:	681b      	ldr	r3, [r3, #0]
 800082e:	4a10      	ldr	r2, [pc, #64]	; (8000870 <test3_positioning_proc+0x90>)
 8000830:	6013      	str	r3, [r2, #0]
 8000832:	4b0d      	ldr	r3, [pc, #52]	; (8000868 <test3_positioning_proc+0x88>)
 8000834:	4a11      	ldr	r2, [pc, #68]	; (800087c <test3_positioning_proc+0x9c>)
 8000836:	601a      	str	r2, [r3, #0]
 8000838:	4b0a      	ldr	r3, [pc, #40]	; (8000864 <test3_positioning_proc+0x84>)
 800083a:	2200      	movs	r2, #0
 800083c:	601a      	str	r2, [r3, #0]
 800083e:	f7ff fc73 	bl	8000128 <motor_off>
 8000842:	f7ff fc55 	bl	80000f0 <brake_on>
 8000846:	2300      	movs	r3, #0
 8000848:	e007      	b.n	800085a <test3_positioning_proc+0x7a>
 800084a:	2200      	movs	r2, #0
 800084c:	6879      	ldr	r1, [r7, #4]
 800084e:	480c      	ldr	r0, [pc, #48]	; (8000880 <test3_positioning_proc+0xa0>)
 8000850:	f000 faee 	bl	8000e30 <reg_update>
 8000854:	4b0a      	ldr	r3, [pc, #40]	; (8000880 <test3_positioning_proc+0xa0>)
 8000856:	68db      	ldr	r3, [r3, #12]
 8000858:	131b      	asrs	r3, r3, #12
 800085a:	4618      	mov	r0, r3
 800085c:	3708      	adds	r7, #8
 800085e:	46bd      	mov	sp, r7
 8000860:	bd80      	pop	{r7, pc}
 8000862:	bf00      	nop
 8000864:	200002c0 	.word	0x200002c0
 8000868:	20000264 	.word	0x20000264
 800086c:	08000619 	.word	0x08000619
 8000870:	20000220 	.word	0x20000220
 8000874:	20000248 	.word	0x20000248
 8000878:	2000024c 	.word	0x2000024c
 800087c:	080006dd 	.word	0x080006dd
 8000880:	20000298 	.word	0x20000298

08000884 <test2_positioning_proc>:
 8000884:	b580      	push	{r7, lr}
 8000886:	b082      	sub	sp, #8
 8000888:	af00      	add	r7, sp, #0
 800088a:	4b19      	ldr	r3, [pc, #100]	; (80008f0 <test2_positioning_proc+0x6c>)
 800088c:	681b      	ldr	r3, [r3, #0]
 800088e:	f241 3287 	movw	r2, #4999	; 0x1387
 8000892:	4293      	cmp	r3, r2
 8000894:	dd04      	ble.n	80008a0 <test2_positioning_proc+0x1c>
 8000896:	4b17      	ldr	r3, [pc, #92]	; (80008f4 <test2_positioning_proc+0x70>)
 8000898:	4a17      	ldr	r2, [pc, #92]	; (80008f8 <test2_positioning_proc+0x74>)
 800089a:	601a      	str	r2, [r3, #0]
 800089c:	2300      	movs	r3, #0
 800089e:	e023      	b.n	80008e8 <test2_positioning_proc+0x64>
 80008a0:	4b13      	ldr	r3, [pc, #76]	; (80008f0 <test2_positioning_proc+0x6c>)
 80008a2:	681b      	ldr	r3, [r3, #0]
 80008a4:	3301      	adds	r3, #1
 80008a6:	4a12      	ldr	r2, [pc, #72]	; (80008f0 <test2_positioning_proc+0x6c>)
 80008a8:	6013      	str	r3, [r2, #0]
 80008aa:	4b14      	ldr	r3, [pc, #80]	; (80008fc <test2_positioning_proc+0x78>)
 80008ac:	681a      	ldr	r2, [r3, #0]
 80008ae:	4b14      	ldr	r3, [pc, #80]	; (8000900 <test2_positioning_proc+0x7c>)
 80008b0:	681b      	ldr	r3, [r3, #0]
 80008b2:	1ad3      	subs	r3, r2, r3
 80008b4:	607b      	str	r3, [r7, #4]
 80008b6:	687b      	ldr	r3, [r7, #4]
 80008b8:	f113 0f02 	cmn.w	r3, #2
 80008bc:	db0c      	blt.n	80008d8 <test2_positioning_proc+0x54>
 80008be:	687b      	ldr	r3, [r7, #4]
 80008c0:	2b02      	cmp	r3, #2
 80008c2:	dc09      	bgt.n	80008d8 <test2_positioning_proc+0x54>
 80008c4:	4b0f      	ldr	r3, [pc, #60]	; (8000904 <test2_positioning_proc+0x80>)
 80008c6:	681b      	ldr	r3, [r3, #0]
 80008c8:	4a0c      	ldr	r2, [pc, #48]	; (80008fc <test2_positioning_proc+0x78>)
 80008ca:	6013      	str	r3, [r2, #0]
 80008cc:	4b09      	ldr	r3, [pc, #36]	; (80008f4 <test2_positioning_proc+0x70>)
 80008ce:	4a0e      	ldr	r2, [pc, #56]	; (8000908 <test2_positioning_proc+0x84>)
 80008d0:	601a      	str	r2, [r3, #0]
 80008d2:	4b07      	ldr	r3, [pc, #28]	; (80008f0 <test2_positioning_proc+0x6c>)
 80008d4:	2200      	movs	r2, #0
 80008d6:	601a      	str	r2, [r3, #0]
 80008d8:	2200      	movs	r2, #0
 80008da:	6879      	ldr	r1, [r7, #4]
 80008dc:	480b      	ldr	r0, [pc, #44]	; (800090c <test2_positioning_proc+0x88>)
 80008de:	f000 faa7 	bl	8000e30 <reg_update>
 80008e2:	4b0a      	ldr	r3, [pc, #40]	; (800090c <test2_positioning_proc+0x88>)
 80008e4:	68db      	ldr	r3, [r3, #12]
 80008e6:	131b      	asrs	r3, r3, #12
 80008e8:	4618      	mov	r0, r3
 80008ea:	3708      	adds	r7, #8
 80008ec:	46bd      	mov	sp, r7
 80008ee:	bd80      	pop	{r7, pc}
 80008f0:	200002c0 	.word	0x200002c0
 80008f4:	20000264 	.word	0x20000264
 80008f8:	08000619 	.word	0x08000619
 80008fc:	20000220 	.word	0x20000220
 8000900:	20000248 	.word	0x20000248
 8000904:	2000024c 	.word	0x2000024c
 8000908:	080007e1 	.word	0x080007e1
 800090c:	20000298 	.word	0x20000298

08000910 <test1_positioning_proc>:
 8000910:	b580      	push	{r7, lr}
 8000912:	b082      	sub	sp, #8
 8000914:	af00      	add	r7, sp, #0
 8000916:	4b1c      	ldr	r3, [pc, #112]	; (8000988 <test1_positioning_proc+0x78>)
 8000918:	681b      	ldr	r3, [r3, #0]
 800091a:	f241 3287 	movw	r2, #4999	; 0x1387
 800091e:	4293      	cmp	r3, r2
 8000920:	dd04      	ble.n	800092c <test1_positioning_proc+0x1c>
 8000922:	4b1a      	ldr	r3, [pc, #104]	; (800098c <test1_positioning_proc+0x7c>)
 8000924:	4a1a      	ldr	r2, [pc, #104]	; (8000990 <test1_positioning_proc+0x80>)
 8000926:	601a      	str	r2, [r3, #0]
 8000928:	2300      	movs	r3, #0
 800092a:	e028      	b.n	800097e <test1_positioning_proc+0x6e>
 800092c:	4b16      	ldr	r3, [pc, #88]	; (8000988 <test1_positioning_proc+0x78>)
 800092e:	681b      	ldr	r3, [r3, #0]
 8000930:	3301      	adds	r3, #1
 8000932:	4a15      	ldr	r2, [pc, #84]	; (8000988 <test1_positioning_proc+0x78>)
 8000934:	6013      	str	r3, [r2, #0]
 8000936:	4b17      	ldr	r3, [pc, #92]	; (8000994 <test1_positioning_proc+0x84>)
 8000938:	681a      	ldr	r2, [r3, #0]
 800093a:	4b17      	ldr	r3, [pc, #92]	; (8000998 <test1_positioning_proc+0x88>)
 800093c:	681b      	ldr	r3, [r3, #0]
 800093e:	1ad3      	subs	r3, r2, r3
 8000940:	607b      	str	r3, [r7, #4]
 8000942:	687b      	ldr	r3, [r7, #4]
 8000944:	f113 0f02 	cmn.w	r3, #2
 8000948:	db11      	blt.n	800096e <test1_positioning_proc+0x5e>
 800094a:	687b      	ldr	r3, [r7, #4]
 800094c:	2b02      	cmp	r3, #2
 800094e:	dc0e      	bgt.n	800096e <test1_positioning_proc+0x5e>
 8000950:	4b12      	ldr	r3, [pc, #72]	; (800099c <test1_positioning_proc+0x8c>)
 8000952:	681b      	ldr	r3, [r3, #0]
 8000954:	f5a3 539c 	sub.w	r3, r3, #4992	; 0x1380
 8000958:	3b08      	subs	r3, #8
 800095a:	4a0e      	ldr	r2, [pc, #56]	; (8000994 <test1_positioning_proc+0x84>)
 800095c:	6013      	str	r3, [r2, #0]
 800095e:	4b0b      	ldr	r3, [pc, #44]	; (800098c <test1_positioning_proc+0x7c>)
 8000960:	4a0f      	ldr	r2, [pc, #60]	; (80009a0 <test1_positioning_proc+0x90>)
 8000962:	601a      	str	r2, [r3, #0]
 8000964:	4b08      	ldr	r3, [pc, #32]	; (8000988 <test1_positioning_proc+0x78>)
 8000966:	2200      	movs	r2, #0
 8000968:	601a      	str	r2, [r3, #0]
 800096a:	2300      	movs	r3, #0
 800096c:	e007      	b.n	800097e <test1_positioning_proc+0x6e>
 800096e:	2200      	movs	r2, #0
 8000970:	6879      	ldr	r1, [r7, #4]
 8000972:	480c      	ldr	r0, [pc, #48]	; (80009a4 <test1_positioning_proc+0x94>)
 8000974:	f000 fa5c 	bl	8000e30 <reg_update>
 8000978:	4b0a      	ldr	r3, [pc, #40]	; (80009a4 <test1_positioning_proc+0x94>)
 800097a:	68db      	ldr	r3, [r3, #12]
 800097c:	131b      	asrs	r3, r3, #12
 800097e:	4618      	mov	r0, r3
 8000980:	3708      	adds	r7, #8
 8000982:	46bd      	mov	sp, r7
 8000984:	bd80      	pop	{r7, pc}
 8000986:	bf00      	nop
 8000988:	200002c0 	.word	0x200002c0
 800098c:	20000264 	.word	0x20000264
 8000990:	08000619 	.word	0x08000619
 8000994:	20000220 	.word	0x20000220
 8000998:	20000248 	.word	0x20000248
 800099c:	2000024c 	.word	0x2000024c
 80009a0:	08000885 	.word	0x08000885
 80009a4:	20000298 	.word	0x20000298

080009a8 <zero_positioning_proc>:
 80009a8:	b580      	push	{r7, lr}
 80009aa:	b082      	sub	sp, #8
 80009ac:	af00      	add	r7, sp, #0
 80009ae:	4b1e      	ldr	r3, [pc, #120]	; (8000a28 <zero_positioning_proc+0x80>)
 80009b0:	681b      	ldr	r3, [r3, #0]
 80009b2:	f241 3287 	movw	r2, #4999	; 0x1387
 80009b6:	4293      	cmp	r3, r2
 80009b8:	dd04      	ble.n	80009c4 <zero_positioning_proc+0x1c>
 80009ba:	4b1c      	ldr	r3, [pc, #112]	; (8000a2c <zero_positioning_proc+0x84>)
 80009bc:	4a1c      	ldr	r2, [pc, #112]	; (8000a30 <zero_positioning_proc+0x88>)
 80009be:	601a      	str	r2, [r3, #0]
 80009c0:	2300      	movs	r3, #0
 80009c2:	e02c      	b.n	8000a1e <zero_positioning_proc+0x76>
 80009c4:	4b18      	ldr	r3, [pc, #96]	; (8000a28 <zero_positioning_proc+0x80>)
 80009c6:	681b      	ldr	r3, [r3, #0]
 80009c8:	3301      	adds	r3, #1
 80009ca:	4a17      	ldr	r2, [pc, #92]	; (8000a28 <zero_positioning_proc+0x80>)
 80009cc:	6013      	str	r3, [r2, #0]
 80009ce:	4b19      	ldr	r3, [pc, #100]	; (8000a34 <zero_positioning_proc+0x8c>)
 80009d0:	681a      	ldr	r2, [r3, #0]
 80009d2:	4b19      	ldr	r3, [pc, #100]	; (8000a38 <zero_positioning_proc+0x90>)
 80009d4:	681b      	ldr	r3, [r3, #0]
 80009d6:	1ad3      	subs	r3, r2, r3
 80009d8:	607b      	str	r3, [r7, #4]
 80009da:	687b      	ldr	r3, [r7, #4]
 80009dc:	f113 0f02 	cmn.w	r3, #2
 80009e0:	db15      	blt.n	8000a0e <zero_positioning_proc+0x66>
 80009e2:	687b      	ldr	r3, [r7, #4]
 80009e4:	2b02      	cmp	r3, #2
 80009e6:	dc12      	bgt.n	8000a0e <zero_positioning_proc+0x66>
 80009e8:	4b14      	ldr	r3, [pc, #80]	; (8000a3c <zero_positioning_proc+0x94>)
 80009ea:	681b      	ldr	r3, [r3, #0]
 80009ec:	4a14      	ldr	r2, [pc, #80]	; (8000a40 <zero_positioning_proc+0x98>)
 80009ee:	6013      	str	r3, [r2, #0]
 80009f0:	4b13      	ldr	r3, [pc, #76]	; (8000a40 <zero_positioning_proc+0x98>)
 80009f2:	681b      	ldr	r3, [r3, #0]
 80009f4:	f503 539c 	add.w	r3, r3, #4992	; 0x1380
 80009f8:	3308      	adds	r3, #8
 80009fa:	4a12      	ldr	r2, [pc, #72]	; (8000a44 <zero_positioning_proc+0x9c>)
 80009fc:	6013      	str	r3, [r2, #0]
 80009fe:	4b0b      	ldr	r3, [pc, #44]	; (8000a2c <zero_positioning_proc+0x84>)
 8000a00:	4a11      	ldr	r2, [pc, #68]	; (8000a48 <zero_positioning_proc+0xa0>)
 8000a02:	601a      	str	r2, [r3, #0]
 8000a04:	4b08      	ldr	r3, [pc, #32]	; (8000a28 <zero_positioning_proc+0x80>)
 8000a06:	2200      	movs	r2, #0
 8000a08:	601a      	str	r2, [r3, #0]
 8000a0a:	2300      	movs	r3, #0
 8000a0c:	e007      	b.n	8000a1e <zero_positioning_proc+0x76>
 8000a0e:	2200      	movs	r2, #0
 8000a10:	6879      	ldr	r1, [r7, #4]
 8000a12:	480e      	ldr	r0, [pc, #56]	; (8000a4c <zero_positioning_proc+0xa4>)
 8000a14:	f000 fa0c 	bl	8000e30 <reg_update>
 8000a18:	4b0c      	ldr	r3, [pc, #48]	; (8000a4c <zero_positioning_proc+0xa4>)
 8000a1a:	68db      	ldr	r3, [r3, #12]
 8000a1c:	131b      	asrs	r3, r3, #12
 8000a1e:	4618      	mov	r0, r3
 8000a20:	3708      	adds	r7, #8
 8000a22:	46bd      	mov	sp, r7
 8000a24:	bd80      	pop	{r7, pc}
 8000a26:	bf00      	nop
 8000a28:	200002c0 	.word	0x200002c0
 8000a2c:	20000264 	.word	0x20000264
 8000a30:	08000619 	.word	0x08000619
 8000a34:	20000224 	.word	0x20000224
 8000a38:	20000234 	.word	0x20000234
 8000a3c:	20000248 	.word	0x20000248
 8000a40:	2000024c 	.word	0x2000024c
 8000a44:	20000220 	.word	0x20000220
 8000a48:	08000911 	.word	0x08000911
 8000a4c:	200002a8 	.word	0x200002a8

08000a50 <main>:
 8000a50:	b580      	push	{r7, lr}
 8000a52:	b096      	sub	sp, #88	; 0x58
 8000a54:	af00      	add	r7, sp, #0
 8000a56:	2300      	movs	r3, #0
 8000a58:	643b      	str	r3, [r7, #64]	; 0x40
 8000a5a:	2300      	movs	r3, #0
 8000a5c:	657b      	str	r3, [r7, #84]	; 0x54
 8000a5e:	2300      	movs	r3, #0
 8000a60:	653b      	str	r3, [r7, #80]	; 0x50
 8000a62:	2300      	movs	r3, #0
 8000a64:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000a66:	2300      	movs	r3, #0
 8000a68:	64bb      	str	r3, [r7, #72]	; 0x48
 8000a6a:	2300      	movs	r3, #0
 8000a6c:	647b      	str	r3, [r7, #68]	; 0x44
 8000a6e:	2300      	movs	r3, #0
 8000a70:	63fb      	str	r3, [r7, #60]	; 0x3c
 8000a72:	2300      	movs	r3, #0
 8000a74:	63bb      	str	r3, [r7, #56]	; 0x38
 8000a76:	2300      	movs	r3, #0
 8000a78:	657b      	str	r3, [r7, #84]	; 0x54
 8000a7a:	e002      	b.n	8000a82 <main+0x32>
 8000a7c:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8000a7e:	3301      	adds	r3, #1
 8000a80:	657b      	str	r3, [r7, #84]	; 0x54
 8000a82:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8000a84:	4a1d      	ldr	r2, [pc, #116]	; (8000afc <main+0xac>)
 8000a86:	4293      	cmp	r3, r2
 8000a88:	ddf8      	ble.n	8000a7c <main+0x2c>
 8000a8a:	f001 f983 	bl	8001d94 <system_init>
 8000a8e:	f7ff fb7f 	bl	8000190 <ssi_init>
 8000a92:	f7ff fbf1 	bl	8000278 <dac_init>
 8000a96:	f000 fe65 	bl	8001764 <adc_dma_init>
 8000a9a:	22c8      	movs	r2, #200	; 0xc8
 8000a9c:	2150      	movs	r1, #80	; 0x50
 8000a9e:	4818      	ldr	r0, [pc, #96]	; (8000b00 <main+0xb0>)
 8000aa0:	f000 f9c0 	bl	8000e24 <reg_init>
 8000aa4:	22c8      	movs	r2, #200	; 0xc8
 8000aa6:	2150      	movs	r1, #80	; 0x50
 8000aa8:	4816      	ldr	r0, [pc, #88]	; (8000b04 <main+0xb4>)
 8000aaa:	f000 f9bb 	bl	8000e24 <reg_init>
 8000aae:	f241 3288 	movw	r2, #5000	; 0x1388
 8000ab2:	2100      	movs	r1, #0
 8000ab4:	4814      	ldr	r0, [pc, #80]	; (8000b08 <main+0xb8>)
 8000ab6:	f000 f9b5 	bl	8000e24 <reg_init>
 8000aba:	f640 32b8 	movw	r2, #3000	; 0xbb8
 8000abe:	2100      	movs	r1, #0
 8000ac0:	4812      	ldr	r0, [pc, #72]	; (8000b0c <main+0xbc>)
 8000ac2:	f000 f9af 	bl	8000e24 <reg_init>
 8000ac6:	4a12      	ldr	r2, [pc, #72]	; (8000b10 <main+0xc0>)
 8000ac8:	2100      	movs	r1, #0
 8000aca:	4812      	ldr	r0, [pc, #72]	; (8000b14 <main+0xc4>)
 8000acc:	f000 f9aa 	bl	8000e24 <reg_init>
 8000ad0:	4b11      	ldr	r3, [pc, #68]	; (8000b18 <main+0xc8>)
 8000ad2:	2200      	movs	r2, #0
 8000ad4:	701a      	strb	r2, [r3, #0]
 8000ad6:	4b11      	ldr	r3, [pc, #68]	; (8000b1c <main+0xcc>)
 8000ad8:	2200      	movs	r2, #0
 8000ada:	701a      	strb	r2, [r3, #0]
 8000adc:	2300      	movs	r3, #0
 8000ade:	653b      	str	r3, [r7, #80]	; 0x50
 8000ae0:	2300      	movs	r3, #0
 8000ae2:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000ae4:	4b0e      	ldr	r3, [pc, #56]	; (8000b20 <main+0xd0>)
 8000ae6:	2200      	movs	r2, #0
 8000ae8:	601a      	str	r2, [r3, #0]
 8000aea:	4b0e      	ldr	r3, [pc, #56]	; (8000b24 <main+0xd4>)
 8000aec:	2200      	movs	r2, #0
 8000aee:	601a      	str	r2, [r3, #0]
 8000af0:	4b0d      	ldr	r3, [pc, #52]	; (8000b28 <main+0xd8>)
 8000af2:	2200      	movs	r2, #0
 8000af4:	601a      	str	r2, [r3, #0]
 8000af6:	2300      	movs	r3, #0
 8000af8:	657b      	str	r3, [r7, #84]	; 0x54
 8000afa:	e04e      	b.n	8000b9a <main+0x14a>
 8000afc:	00030d3f 	.word	0x00030d3f
 8000b00:	20000268 	.word	0x20000268
 8000b04:	20000278 	.word	0x20000278
 8000b08:	20000288 	.word	0x20000288
 8000b0c:	20000298 	.word	0x20000298
 8000b10:	0007a120 	.word	0x0007a120
 8000b14:	200002a8 	.word	0x200002a8
 8000b18:	20000260 	.word	0x20000260
 8000b1c:	20000261 	.word	0x20000261
 8000b20:	20000230 	.word	0x20000230
 8000b24:	20000234 	.word	0x20000234
 8000b28:	20000224 	.word	0x20000224
 8000b2c:	f000 fe38 	bl	80017a0 <adc_dma_wait>
 8000b30:	4b9b      	ldr	r3, [pc, #620]	; (8000da0 <main+0x350>)
 8000b32:	689b      	ldr	r3, [r3, #8]
 8000b34:	f3c3 020b 	ubfx	r2, r3, #0, #12
 8000b38:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8000b3a:	4413      	add	r3, r2
 8000b3c:	653b      	str	r3, [r7, #80]	; 0x50
 8000b3e:	4b98      	ldr	r3, [pc, #608]	; (8000da0 <main+0x350>)
 8000b40:	68db      	ldr	r3, [r3, #12]
 8000b42:	f3c3 020b 	ubfx	r2, r3, #0, #12
 8000b46:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8000b48:	4413      	add	r3, r2
 8000b4a:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000b4c:	4b95      	ldr	r3, [pc, #596]	; (8000da4 <main+0x354>)
 8000b4e:	689b      	ldr	r3, [r3, #8]
 8000b50:	4618      	mov	r0, r3
 8000b52:	f7ff fb67 	bl	8000224 <enc_crc>
 8000b56:	4602      	mov	r2, r0
 8000b58:	4b93      	ldr	r3, [pc, #588]	; (8000da8 <main+0x358>)
 8000b5a:	681b      	ldr	r3, [r3, #0]
 8000b5c:	4413      	add	r3, r2
 8000b5e:	461a      	mov	r2, r3
 8000b60:	4b91      	ldr	r3, [pc, #580]	; (8000da8 <main+0x358>)
 8000b62:	601a      	str	r2, [r3, #0]
 8000b64:	4b8e      	ldr	r3, [pc, #568]	; (8000da0 <main+0x350>)
 8000b66:	681b      	ldr	r3, [r3, #0]
 8000b68:	f3c3 030b 	ubfx	r3, r3, #0, #12
 8000b6c:	4a8f      	ldr	r2, [pc, #572]	; (8000dac <main+0x35c>)
 8000b6e:	6812      	ldr	r2, [r2, #0]
 8000b70:	4413      	add	r3, r2
 8000b72:	461a      	mov	r2, r3
 8000b74:	4b8d      	ldr	r3, [pc, #564]	; (8000dac <main+0x35c>)
 8000b76:	601a      	str	r2, [r3, #0]
 8000b78:	4b89      	ldr	r3, [pc, #548]	; (8000da0 <main+0x350>)
 8000b7a:	685b      	ldr	r3, [r3, #4]
 8000b7c:	f3c3 030b 	ubfx	r3, r3, #0, #12
 8000b80:	4a8b      	ldr	r2, [pc, #556]	; (8000db0 <main+0x360>)
 8000b82:	6812      	ldr	r2, [r2, #0]
 8000b84:	4413      	add	r3, r2
 8000b86:	461a      	mov	r2, r3
 8000b88:	4b89      	ldr	r3, [pc, #548]	; (8000db0 <main+0x360>)
 8000b8a:	601a      	str	r2, [r3, #0]
 8000b8c:	2100      	movs	r1, #0
 8000b8e:	2000      	movs	r0, #0
 8000b90:	f7ff fa96 	bl	80000c0 <mfilter>
 8000b94:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8000b96:	3301      	adds	r3, #1
 8000b98:	657b      	str	r3, [r7, #84]	; 0x54
 8000b9a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8000b9c:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8000ba0:	dbc4      	blt.n	8000b2c <main+0xdc>
 8000ba2:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8000ba4:	129b      	asrs	r3, r3, #10
 8000ba6:	653b      	str	r3, [r7, #80]	; 0x50
 8000ba8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8000baa:	129b      	asrs	r3, r3, #10
 8000bac:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000bae:	4b7e      	ldr	r3, [pc, #504]	; (8000da8 <main+0x358>)
 8000bb0:	681b      	ldr	r3, [r3, #0]
 8000bb2:	129b      	asrs	r3, r3, #10
 8000bb4:	4a7c      	ldr	r2, [pc, #496]	; (8000da8 <main+0x358>)
 8000bb6:	6013      	str	r3, [r2, #0]
 8000bb8:	4b7e      	ldr	r3, [pc, #504]	; (8000db4 <main+0x364>)
 8000bba:	f44f 7202 	mov.w	r2, #520	; 0x208
 8000bbe:	601a      	str	r2, [r3, #0]
 8000bc0:	4b7b      	ldr	r3, [pc, #492]	; (8000db0 <main+0x360>)
 8000bc2:	681a      	ldr	r2, [r3, #0]
 8000bc4:	4b79      	ldr	r3, [pc, #484]	; (8000dac <main+0x35c>)
 8000bc6:	681b      	ldr	r3, [r3, #0]
 8000bc8:	129b      	asrs	r3, r3, #10
 8000bca:	fb92 f3f3 	sdiv	r3, r2, r3
 8000bce:	4a7a      	ldr	r2, [pc, #488]	; (8000db8 <main+0x368>)
 8000bd0:	6013      	str	r3, [r2, #0]
 8000bd2:	4b78      	ldr	r3, [pc, #480]	; (8000db4 <main+0x364>)
 8000bd4:	681b      	ldr	r3, [r3, #0]
 8000bd6:	4a75      	ldr	r2, [pc, #468]	; (8000dac <main+0x35c>)
 8000bd8:	6013      	str	r3, [r2, #0]
 8000bda:	4b73      	ldr	r3, [pc, #460]	; (8000da8 <main+0x358>)
 8000bdc:	681b      	ldr	r3, [r3, #0]
 8000bde:	4a77      	ldr	r2, [pc, #476]	; (8000dbc <main+0x36c>)
 8000be0:	6013      	str	r3, [r2, #0]
 8000be2:	4b71      	ldr	r3, [pc, #452]	; (8000da8 <main+0x358>)
 8000be4:	681b      	ldr	r3, [r3, #0]
 8000be6:	4a76      	ldr	r2, [pc, #472]	; (8000dc0 <main+0x370>)
 8000be8:	6013      	str	r3, [r2, #0]
 8000bea:	4b6f      	ldr	r3, [pc, #444]	; (8000da8 <main+0x358>)
 8000bec:	681b      	ldr	r3, [r3, #0]
 8000bee:	4618      	mov	r0, r3
 8000bf0:	f000 fcda 	bl	80015a8 <encoder_init>
 8000bf4:	4b73      	ldr	r3, [pc, #460]	; (8000dc4 <main+0x374>)
 8000bf6:	2200      	movs	r2, #0
 8000bf8:	601a      	str	r2, [r3, #0]
 8000bfa:	4b70      	ldr	r3, [pc, #448]	; (8000dbc <main+0x36c>)
 8000bfc:	681b      	ldr	r3, [r3, #0]
 8000bfe:	4a72      	ldr	r2, [pc, #456]	; (8000dc8 <main+0x378>)
 8000c00:	6013      	str	r3, [r2, #0]
 8000c02:	2301      	movs	r3, #1
 8000c04:	637b      	str	r3, [r7, #52]	; 0x34
 8000c06:	2300      	movs	r3, #0
 8000c08:	647b      	str	r3, [r7, #68]	; 0x44
 8000c0a:	f7ff fa71 	bl	80000f0 <brake_on>
 8000c0e:	f7ff fa8b 	bl	8000128 <motor_off>
 8000c12:	4b6e      	ldr	r3, [pc, #440]	; (8000dcc <main+0x37c>)
 8000c14:	2200      	movs	r2, #0
 8000c16:	601a      	str	r2, [r3, #0]
 8000c18:	4b6d      	ldr	r3, [pc, #436]	; (8000dd0 <main+0x380>)
 8000c1a:	4a6e      	ldr	r2, [pc, #440]	; (8000dd4 <main+0x384>)
 8000c1c:	601a      	str	r2, [r3, #0]
 8000c1e:	4b6e      	ldr	r3, [pc, #440]	; (8000dd8 <main+0x388>)
 8000c20:	2200      	movs	r2, #0
 8000c22:	701a      	strb	r2, [r3, #0]
 8000c24:	f000 fdbc 	bl	80017a0 <adc_dma_wait>
 8000c28:	6d3a      	ldr	r2, [r7, #80]	; 0x50
 8000c2a:	4b5d      	ldr	r3, [pc, #372]	; (8000da0 <main+0x350>)
 8000c2c:	689b      	ldr	r3, [r3, #8]
 8000c2e:	f3c3 030b 	ubfx	r3, r3, #0, #12
 8000c32:	1ad3      	subs	r3, r2, r3
 8000c34:	633b      	str	r3, [r7, #48]	; 0x30
 8000c36:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8000c38:	4b59      	ldr	r3, [pc, #356]	; (8000da0 <main+0x350>)
 8000c3a:	68db      	ldr	r3, [r3, #12]
 8000c3c:	f3c3 030b 	ubfx	r3, r3, #0, #12
 8000c40:	1ad3      	subs	r3, r2, r3
 8000c42:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000c44:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8000c46:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000c48:	4413      	add	r3, r2
 8000c4a:	62bb      	str	r3, [r7, #40]	; 0x28
 8000c4c:	4b55      	ldr	r3, [pc, #340]	; (8000da4 <main+0x354>)
 8000c4e:	689b      	ldr	r3, [r3, #8]
 8000c50:	4618      	mov	r0, r3
 8000c52:	f7ff fae7 	bl	8000224 <enc_crc>
 8000c56:	6278      	str	r0, [r7, #36]	; 0x24
 8000c58:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000c5a:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000c5e:	63bb      	str	r3, [r7, #56]	; 0x38
 8000c60:	4b4f      	ldr	r3, [pc, #316]	; (8000da0 <main+0x350>)
 8000c62:	685b      	ldr	r3, [r3, #4]
 8000c64:	029a      	lsls	r2, r3, #10
 8000c66:	4b5d      	ldr	r3, [pc, #372]	; (8000ddc <main+0x38c>)
 8000c68:	4013      	ands	r3, r2
 8000c6a:	4a4d      	ldr	r2, [pc, #308]	; (8000da0 <main+0x350>)
 8000c6c:	6812      	ldr	r2, [r2, #0]
 8000c6e:	f3c2 020b 	ubfx	r2, r2, #0, #12
 8000c72:	fbb3 f3f2 	udiv	r3, r3, r2
 8000c76:	461a      	mov	r2, r3
 8000c78:	4b4d      	ldr	r3, [pc, #308]	; (8000db0 <main+0x360>)
 8000c7a:	601a      	str	r2, [r3, #0]
 8000c7c:	4a58      	ldr	r2, [pc, #352]	; (8000de0 <main+0x390>)
 8000c7e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000c80:	6013      	str	r3, [r2, #0]
 8000c82:	4b58      	ldr	r3, [pc, #352]	; (8000de4 <main+0x394>)
 8000c84:	681b      	ldr	r3, [r3, #0]
 8000c86:	3301      	adds	r3, #1
 8000c88:	4a56      	ldr	r2, [pc, #344]	; (8000de4 <main+0x394>)
 8000c8a:	6013      	str	r3, [r2, #0]
 8000c8c:	4b55      	ldr	r3, [pc, #340]	; (8000de4 <main+0x394>)
 8000c8e:	681b      	ldr	r3, [r3, #0]
 8000c90:	f003 0307 	and.w	r3, r3, #7
 8000c94:	2b00      	cmp	r3, #0
 8000c96:	d12c      	bne.n	8000cf2 <main+0x2a2>
 8000c98:	4b53      	ldr	r3, [pc, #332]	; (8000de8 <main+0x398>)
 8000c9a:	681b      	ldr	r3, [r3, #0]
 8000c9c:	f003 031f 	and.w	r3, r3, #31
 8000ca0:	01db      	lsls	r3, r3, #7
 8000ca2:	461a      	mov	r2, r3
 8000ca4:	4b51      	ldr	r3, [pc, #324]	; (8000dec <main+0x39c>)
 8000ca6:	601a      	str	r2, [r3, #0]
 8000ca8:	f7ff fc0a 	bl	80004c0 <update_refposition>
 8000cac:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000cae:	4944      	ldr	r1, [pc, #272]	; (8000dc0 <main+0x370>)
 8000cb0:	4618      	mov	r0, r3
 8000cb2:	f000 fc7f 	bl	80015b4 <get_speed>
 8000cb6:	6238      	str	r0, [r7, #32]
 8000cb8:	4b45      	ldr	r3, [pc, #276]	; (8000dd0 <main+0x380>)
 8000cba:	681b      	ldr	r3, [r3, #0]
 8000cbc:	4798      	blx	r3
 8000cbe:	63f8      	str	r0, [r7, #60]	; 0x3c
 8000cc0:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 8000cc2:	6a3b      	ldr	r3, [r7, #32]
 8000cc4:	1ad3      	subs	r3, r2, r3
 8000cc6:	2200      	movs	r2, #0
 8000cc8:	4619      	mov	r1, r3
 8000cca:	4849      	ldr	r0, [pc, #292]	; (8000df0 <main+0x3a0>)
 8000ccc:	f000 f8b0 	bl	8000e30 <reg_update>
 8000cd0:	4b47      	ldr	r3, [pc, #284]	; (8000df0 <main+0x3a0>)
 8000cd2:	68db      	ldr	r3, [r3, #12]
 8000cd4:	131b      	asrs	r3, r3, #12
 8000cd6:	647b      	str	r3, [r7, #68]	; 0x44
 8000cd8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8000cda:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 8000cde:	dd02      	ble.n	8000ce6 <main+0x296>
 8000ce0:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 8000ce4:	647b      	str	r3, [r7, #68]	; 0x44
 8000ce6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8000ce8:	f513 7ffa 	cmn.w	r3, #500	; 0x1f4
 8000cec:	da01      	bge.n	8000cf2 <main+0x2a2>
 8000cee:	4b41      	ldr	r3, [pc, #260]	; (8000df4 <main+0x3a4>)
 8000cf0:	647b      	str	r3, [r7, #68]	; 0x44
 8000cf2:	f7ff fb3b 	bl	800036c <update_telemetry>
 8000cf6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8000cf8:	f503 732f 	add.w	r3, r3, #700	; 0x2bc
 8000cfc:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000d00:	63bb      	str	r3, [r7, #56]	; 0x38
 8000d02:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000d04:	603b      	str	r3, [r7, #0]
 8000d06:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8000d08:	607b      	str	r3, [r7, #4]
 8000d0a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000d0c:	60bb      	str	r3, [r7, #8]
 8000d0e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8000d10:	f107 010c 	add.w	r1, r7, #12
 8000d14:	463b      	mov	r3, r7
 8000d16:	4618      	mov	r0, r3
 8000d18:	f000 f8b0 	bl	8000e7c <abc_to_dq>
 8000d1c:	68fb      	ldr	r3, [r7, #12]
 8000d1e:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
 8000d22:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
 8000d26:	693b      	ldr	r3, [r7, #16]
 8000d28:	2b00      	cmp	r3, #0
 8000d2a:	bfb8      	it	lt
 8000d2c:	425b      	neglt	r3, r3
 8000d2e:	4413      	add	r3, r2
 8000d30:	61fb      	str	r3, [r7, #28]
 8000d32:	4b24      	ldr	r3, [pc, #144]	; (8000dc4 <main+0x374>)
 8000d34:	681b      	ldr	r3, [r3, #0]
 8000d36:	4619      	mov	r1, r3
 8000d38:	69f8      	ldr	r0, [r7, #28]
 8000d3a:	f7ff f9c1 	bl	80000c0 <mfilter>
 8000d3e:	4602      	mov	r2, r0
 8000d40:	4b20      	ldr	r3, [pc, #128]	; (8000dc4 <main+0x374>)
 8000d42:	601a      	str	r2, [r3, #0]
 8000d44:	68fb      	ldr	r3, [r7, #12]
 8000d46:	425b      	negs	r3, r3
 8000d48:	61bb      	str	r3, [r7, #24]
 8000d4a:	693b      	ldr	r3, [r7, #16]
 8000d4c:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8000d4e:	1ad3      	subs	r3, r2, r3
 8000d50:	617b      	str	r3, [r7, #20]
 8000d52:	6cba      	ldr	r2, [r7, #72]	; 0x48
 8000d54:	69b9      	ldr	r1, [r7, #24]
 8000d56:	4828      	ldr	r0, [pc, #160]	; (8000df8 <main+0x3a8>)
 8000d58:	f000 f86a 	bl	8000e30 <reg_update>
 8000d5c:	6cba      	ldr	r2, [r7, #72]	; 0x48
 8000d5e:	6979      	ldr	r1, [r7, #20]
 8000d60:	4826      	ldr	r0, [pc, #152]	; (8000dfc <main+0x3ac>)
 8000d62:	f000 f865 	bl	8000e30 <reg_update>
 8000d66:	4b24      	ldr	r3, [pc, #144]	; (8000df8 <main+0x3a8>)
 8000d68:	68db      	ldr	r3, [r3, #12]
 8000d6a:	109b      	asrs	r3, r3, #2
 8000d6c:	60fb      	str	r3, [r7, #12]
 8000d6e:	4b23      	ldr	r3, [pc, #140]	; (8000dfc <main+0x3ac>)
 8000d70:	68db      	ldr	r3, [r3, #12]
 8000d72:	109b      	asrs	r3, r3, #2
 8000d74:	613b      	str	r3, [r7, #16]
 8000d76:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8000d78:	f107 010c 	add.w	r1, r7, #12
 8000d7c:	463b      	mov	r3, r7
 8000d7e:	4618      	mov	r0, r3
 8000d80:	f000 fa94 	bl	80012ac <svpwm>
 8000d84:	64b8      	str	r0, [r7, #72]	; 0x48
 8000d86:	683b      	ldr	r3, [r7, #0]
 8000d88:	4618      	mov	r0, r3
 8000d8a:	f7ff fabf 	bl	800030c <pwm_seta>
 8000d8e:	687b      	ldr	r3, [r7, #4]
 8000d90:	4618      	mov	r0, r3
 8000d92:	f7ff facb 	bl	800032c <pwm_setb>
 8000d96:	68bb      	ldr	r3, [r7, #8]
 8000d98:	4618      	mov	r0, r3
 8000d9a:	f7ff fad7 	bl	800034c <pwm_setc>
 8000d9e:	e741      	b.n	8000c24 <main+0x1d4>
 8000da0:	20000200 	.word	0x20000200
 8000da4:	40040000 	.word	0x40040000
 8000da8:	20000230 	.word	0x20000230
 8000dac:	20000224 	.word	0x20000224
 8000db0:	20000234 	.word	0x20000234
 8000db4:	2000022c 	.word	0x2000022c
 8000db8:	20000228 	.word	0x20000228
 8000dbc:	20000220 	.word	0x20000220
 8000dc0:	20000248 	.word	0x20000248
 8000dc4:	20000254 	.word	0x20000254
 8000dc8:	2000024c 	.word	0x2000024c
 8000dcc:	200002c0 	.word	0x200002c0
 8000dd0:	20000264 	.word	0x20000264
 8000dd4:	0800077d 	.word	0x0800077d
 8000dd8:	20000261 	.word	0x20000261
 8000ddc:	003ffc00 	.word	0x003ffc00
 8000de0:	20000250 	.word	0x20000250
 8000de4:	20000238 	.word	0x20000238
 8000de8:	400b0000 	.word	0x400b0000
 8000dec:	20000258 	.word	0x20000258
 8000df0:	20000288 	.word	0x20000288
 8000df4:	fffffe0c 	.word	0xfffffe0c
 8000df8:	20000268 	.word	0x20000268
 8000dfc:	20000278 	.word	0x20000278

08000e00 <mycos>:
 8000e00:	4b02      	ldr	r3, [pc, #8]	; (8000e0c <mycos+0xc>)
 8000e02:	f3c0 0009 	ubfx	r0, r0, #0, #10
 8000e06:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 8000e0a:	4770      	bx	lr
 8000e0c:	08001e70 	.word	0x08001e70

08000e10 <mysin>:
 8000e10:	4b03      	ldr	r3, [pc, #12]	; (8000e20 <mysin+0x10>)
 8000e12:	f500 7040 	add.w	r0, r0, #768	; 0x300
 8000e16:	f3c0 0009 	ubfx	r0, r0, #0, #10
 8000e1a:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 8000e1e:	4770      	bx	lr
 8000e20:	08001e70 	.word	0x08001e70

08000e24 <reg_init>:
 8000e24:	2300      	movs	r3, #0
 8000e26:	e880 000e 	stmia.w	r0, {r1, r2, r3}
 8000e2a:	60c3      	str	r3, [r0, #12]
 8000e2c:	4770      	bx	lr
 8000e2e:	bf00      	nop

08000e30 <reg_update>:
 8000e30:	6803      	ldr	r3, [r0, #0]
 8000e32:	b410      	push	{r4}
 8000e34:	fb03 f301 	mul.w	r3, r3, r1
 8000e38:	6884      	ldr	r4, [r0, #8]
 8000e3a:	b11a      	cbz	r2, 8000e44 <reg_update+0x14>
 8000e3c:	2c00      	cmp	r4, #0
 8000e3e:	dd09      	ble.n	8000e54 <reg_update+0x24>
 8000e40:	ea03 73e3 	and.w	r3, r3, r3, asr #31
 8000e44:	6842      	ldr	r2, [r0, #4]
 8000e46:	4423      	add	r3, r4
 8000e48:	fb02 3101 	mla	r1, r2, r1, r3
 8000e4c:	6083      	str	r3, [r0, #8]
 8000e4e:	60c1      	str	r1, [r0, #12]
 8000e50:	bc10      	pop	{r4}
 8000e52:	4770      	bx	lr
 8000e54:	bf18      	it	ne
 8000e56:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
 8000e5a:	e7f3      	b.n	8000e44 <reg_update+0x14>

08000e5c <dot3>:
 8000e5c:	b430      	push	{r4, r5}
 8000e5e:	684b      	ldr	r3, [r1, #4]
 8000e60:	6844      	ldr	r4, [r0, #4]
 8000e62:	6802      	ldr	r2, [r0, #0]
 8000e64:	fb03 f304 	mul.w	r3, r3, r4
 8000e68:	680d      	ldr	r5, [r1, #0]
 8000e6a:	6884      	ldr	r4, [r0, #8]
 8000e6c:	fb05 3302 	mla	r3, r5, r2, r3
 8000e70:	6888      	ldr	r0, [r1, #8]
 8000e72:	fb00 3004 	mla	r0, r0, r4, r3
 8000e76:	bc30      	pop	{r4, r5}
 8000e78:	4770      	bx	lr
 8000e7a:	bf00      	nop

08000e7c <abc_to_dq>:
 8000e7c:	b4f0      	push	{r4, r5, r6, r7}
 8000e7e:	4c1d      	ldr	r4, [pc, #116]	; (8000ef4 <abc_to_dq+0x78>)
 8000e80:	6803      	ldr	r3, [r0, #0]
 8000e82:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
 8000e86:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
 8000e8a:	fb03 f306 	mul.w	r3, r3, r6
 8000e8e:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000e92:	6847      	ldr	r7, [r0, #4]
 8000e94:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 8000e98:	f202 1655 	addw	r6, r2, #341	; 0x155
 8000e9c:	fb07 3305 	mla	r3, r7, r5, r3
 8000ea0:	f3c6 0509 	ubfx	r5, r6, #0, #10
 8000ea4:	6887      	ldr	r7, [r0, #8]
 8000ea6:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 8000eaa:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
 8000eae:	fb07 3305 	mla	r3, r7, r5, r3
 8000eb2:	129b      	asrs	r3, r3, #10
 8000eb4:	600b      	str	r3, [r1, #0]
 8000eb6:	f3c6 0509 	ubfx	r5, r6, #0, #10
 8000eba:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
 8000ebe:	6843      	ldr	r3, [r0, #4]
 8000ec0:	f502 7540 	add.w	r5, r2, #768	; 0x300
 8000ec4:	fb03 f306 	mul.w	r3, r3, r6
 8000ec8:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000ecc:	6806      	ldr	r6, [r0, #0]
 8000ece:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 8000ed2:	f202 4255 	addw	r2, r2, #1109	; 0x455
 8000ed6:	fb06 3305 	mla	r3, r6, r5, r3
 8000eda:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000ede:	6880      	ldr	r0, [r0, #8]
 8000ee0:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 8000ee4:	bcf0      	pop	{r4, r5, r6, r7}
 8000ee6:	fb00 3302 	mla	r3, r0, r2, r3
 8000eea:	425b      	negs	r3, r3
 8000eec:	129b      	asrs	r3, r3, #10
 8000eee:	604b      	str	r3, [r1, #4]
 8000ef0:	4770      	bx	lr
 8000ef2:	bf00      	nop
 8000ef4:	08001e70 	.word	0x08001e70

08000ef8 <dq_to_abc>:
 8000ef8:	4b1d      	ldr	r3, [pc, #116]	; (8000f70 <dq_to_abc+0x78>)
 8000efa:	b4f0      	push	{r4, r5, r6, r7}
 8000efc:	680e      	ldr	r6, [r1, #0]
 8000efe:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
 8000f02:	f502 7540 	add.w	r5, r2, #768	; 0x300
 8000f06:	fb04 f406 	mul.w	r4, r4, r6
 8000f0a:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000f0e:	684f      	ldr	r7, [r1, #4]
 8000f10:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8000f14:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
 8000f18:	fb07 4415 	mls	r4, r7, r5, r4
 8000f1c:	1524      	asrs	r4, r4, #20
 8000f1e:	6004      	str	r4, [r0, #0]
 8000f20:	f3c6 0509 	ubfx	r5, r6, #0, #10
 8000f24:	680c      	ldr	r4, [r1, #0]
 8000f26:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
 8000f2a:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
 8000f2e:	fb04 f406 	mul.w	r4, r4, r6
 8000f32:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000f36:	684f      	ldr	r7, [r1, #4]
 8000f38:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8000f3c:	f202 1655 	addw	r6, r2, #341	; 0x155
 8000f40:	fb07 4415 	mls	r4, r7, r5, r4
 8000f44:	1524      	asrs	r4, r4, #20
 8000f46:	6044      	str	r4, [r0, #4]
 8000f48:	f3c6 0509 	ubfx	r5, r6, #0, #10
 8000f4c:	680c      	ldr	r4, [r1, #0]
 8000f4e:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8000f52:	f202 4255 	addw	r2, r2, #1109	; 0x455
 8000f56:	fb04 f405 	mul.w	r4, r4, r5
 8000f5a:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000f5e:	6849      	ldr	r1, [r1, #4]
 8000f60:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
 8000f64:	fb01 4312 	mls	r3, r1, r2, r4
 8000f68:	bcf0      	pop	{r4, r5, r6, r7}
 8000f6a:	151b      	asrs	r3, r3, #20
 8000f6c:	6083      	str	r3, [r0, #8]
 8000f6e:	4770      	bx	lr
 8000f70:	08001e70 	.word	0x08001e70

08000f74 <cord_atan>:
 8000f74:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000f76:	b091      	sub	sp, #68	; 0x44
 8000f78:	46ee      	mov	lr, sp
 8000f7a:	4684      	mov	ip, r0
 8000f7c:	4e56      	ldr	r6, [pc, #344]	; (80010d8 <cord_atan+0x164>)
 8000f7e:	460d      	mov	r5, r1
 8000f80:	4614      	mov	r4, r2
 8000f82:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000f84:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8000f88:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000f8c:	af08      	add	r7, sp, #32
 8000f8e:	3610      	adds	r6, #16
 8000f90:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 8000f94:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000f96:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 8000f98:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000f9c:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8000fa0:	f8dc 6000 	ldr.w	r6, [ip]
 8000fa4:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8000fa8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000fac:	2b00      	cmp	r3, #0
 8000fae:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 8000fb2:	9900      	ldr	r1, [sp, #0]
 8000fb4:	dd56      	ble.n	8001064 <cord_atan+0xf0>
 8000fb6:	18d0      	adds	r0, r2, r3
 8000fb8:	1a9b      	subs	r3, r3, r2
 8000fba:	2b00      	cmp	r3, #0
 8000fbc:	d07a      	beq.n	80010b4 <cord_atan+0x140>
 8000fbe:	9f01      	ldr	r7, [sp, #4]
 8000fc0:	dd54      	ble.n	800106c <cord_atan+0xf8>
 8000fc2:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8000fc6:	4439      	add	r1, r7
 8000fc8:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8000fcc:	2b00      	cmp	r3, #0
 8000fce:	d073      	beq.n	80010b8 <cord_atan+0x144>
 8000fd0:	9f02      	ldr	r7, [sp, #8]
 8000fd2:	dd51      	ble.n	8001078 <cord_atan+0x104>
 8000fd4:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8000fd8:	4439      	add	r1, r7
 8000fda:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 8000fde:	2b00      	cmp	r3, #0
 8000fe0:	d06d      	beq.n	80010be <cord_atan+0x14a>
 8000fe2:	9f03      	ldr	r7, [sp, #12]
 8000fe4:	dd4e      	ble.n	8001084 <cord_atan+0x110>
 8000fe6:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 8000fea:	4439      	add	r1, r7
 8000fec:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 8000ff0:	2b00      	cmp	r3, #0
 8000ff2:	d066      	beq.n	80010c2 <cord_atan+0x14e>
 8000ff4:	9f04      	ldr	r7, [sp, #16]
 8000ff6:	dd4b      	ble.n	8001090 <cord_atan+0x11c>
 8000ff8:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8000ffc:	4439      	add	r1, r7
 8000ffe:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8001002:	2b00      	cmp	r3, #0
 8001004:	d060      	beq.n	80010c8 <cord_atan+0x154>
 8001006:	9f05      	ldr	r7, [sp, #20]
 8001008:	dd48      	ble.n	800109c <cord_atan+0x128>
 800100a:	eb00 1263 	add.w	r2, r0, r3, asr #5
 800100e:	4439      	add	r1, r7
 8001010:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8001014:	2b00      	cmp	r3, #0
 8001016:	d059      	beq.n	80010cc <cord_atan+0x158>
 8001018:	9f06      	ldr	r7, [sp, #24]
 800101a:	dd45      	ble.n	80010a8 <cord_atan+0x134>
 800101c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 8001020:	4439      	add	r1, r7
 8001022:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 8001026:	2b00      	cmp	r3, #0
 8001028:	d053      	beq.n	80010d2 <cord_atan+0x15e>
 800102a:	9a07      	ldr	r2, [sp, #28]
 800102c:	bfc7      	ittee	gt
 800102e:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 8001032:	1889      	addgt	r1, r1, r2
 8001034:	1a89      	suble	r1, r1, r2
 8001036:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 800103a:	2207      	movs	r2, #7
 800103c:	ab10      	add	r3, sp, #64	; 0x40
 800103e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8001042:	f852 3c20 	ldr.w	r3, [r2, #-32]
 8001046:	2e00      	cmp	r6, #0
 8001048:	fb03 f300 	mul.w	r3, r3, r0
 800104c:	bfb8      	it	lt
 800104e:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 8001052:	2900      	cmp	r1, #0
 8001054:	bfb8      	it	lt
 8001056:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 800105a:	129b      	asrs	r3, r3, #10
 800105c:	6029      	str	r1, [r5, #0]
 800105e:	6023      	str	r3, [r4, #0]
 8001060:	b011      	add	sp, #68	; 0x44
 8001062:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001064:	1ad0      	subs	r0, r2, r3
 8001066:	4249      	negs	r1, r1
 8001068:	4413      	add	r3, r2
 800106a:	e7a6      	b.n	8000fba <cord_atan+0x46>
 800106c:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 8001070:	1bc9      	subs	r1, r1, r7
 8001072:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8001076:	e7a9      	b.n	8000fcc <cord_atan+0x58>
 8001078:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 800107c:	1bc9      	subs	r1, r1, r7
 800107e:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 8001082:	e7ac      	b.n	8000fde <cord_atan+0x6a>
 8001084:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8001088:	1bc9      	subs	r1, r1, r7
 800108a:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 800108e:	e7af      	b.n	8000ff0 <cord_atan+0x7c>
 8001090:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8001094:	1bc9      	subs	r1, r1, r7
 8001096:	eb03 1322 	add.w	r3, r3, r2, asr #4
 800109a:	e7b2      	b.n	8001002 <cord_atan+0x8e>
 800109c:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 80010a0:	1bc9      	subs	r1, r1, r7
 80010a2:	eb03 1360 	add.w	r3, r3, r0, asr #5
 80010a6:	e7b5      	b.n	8001014 <cord_atan+0xa0>
 80010a8:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 80010ac:	1bc9      	subs	r1, r1, r7
 80010ae:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 80010b2:	e7b8      	b.n	8001026 <cord_atan+0xb2>
 80010b4:	461a      	mov	r2, r3
 80010b6:	e7c1      	b.n	800103c <cord_atan+0xc8>
 80010b8:	4610      	mov	r0, r2
 80010ba:	2201      	movs	r2, #1
 80010bc:	e7be      	b.n	800103c <cord_atan+0xc8>
 80010be:	2202      	movs	r2, #2
 80010c0:	e7bc      	b.n	800103c <cord_atan+0xc8>
 80010c2:	4610      	mov	r0, r2
 80010c4:	2203      	movs	r2, #3
 80010c6:	e7b9      	b.n	800103c <cord_atan+0xc8>
 80010c8:	2204      	movs	r2, #4
 80010ca:	e7b7      	b.n	800103c <cord_atan+0xc8>
 80010cc:	4610      	mov	r0, r2
 80010ce:	2205      	movs	r2, #5
 80010d0:	e7b4      	b.n	800103c <cord_atan+0xc8>
 80010d2:	2206      	movs	r2, #6
 80010d4:	e7b2      	b.n	800103c <cord_atan+0xc8>
 80010d6:	bf00      	nop
 80010d8:	08001e30 	.word	0x08001e30

080010dc <sinpwm>:
 80010dc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80010de:	b091      	sub	sp, #68	; 0x44
 80010e0:	46ee      	mov	lr, sp
 80010e2:	468c      	mov	ip, r1
 80010e4:	4e6e      	ldr	r6, [pc, #440]	; (80012a0 <sinpwm+0x1c4>)
 80010e6:	4604      	mov	r4, r0
 80010e8:	4615      	mov	r5, r2
 80010ea:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 80010ec:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 80010f0:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 80010f4:	af08      	add	r7, sp, #32
 80010f6:	3610      	adds	r6, #16
 80010f8:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 80010fc:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 80010fe:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 8001100:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8001104:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8001108:	f8dc 6000 	ldr.w	r6, [ip]
 800110c:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8001110:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8001114:	2b00      	cmp	r3, #0
 8001116:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 800111a:	9900      	ldr	r1, [sp, #0]
 800111c:	f340 8087 	ble.w	800122e <sinpwm+0x152>
 8001120:	18d0      	adds	r0, r2, r3
 8001122:	1a9b      	subs	r3, r3, r2
 8001124:	2b00      	cmp	r3, #0
 8001126:	f000 80aa 	beq.w	800127e <sinpwm+0x1a2>
 800112a:	9f01      	ldr	r7, [sp, #4]
 800112c:	f340 8083 	ble.w	8001236 <sinpwm+0x15a>
 8001130:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8001134:	4439      	add	r1, r7
 8001136:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 800113a:	2b00      	cmp	r3, #0
 800113c:	f000 80a1 	beq.w	8001282 <sinpwm+0x1a6>
 8001140:	9f02      	ldr	r7, [sp, #8]
 8001142:	dd7e      	ble.n	8001242 <sinpwm+0x166>
 8001144:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8001148:	4439      	add	r1, r7
 800114a:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 800114e:	2b00      	cmp	r3, #0
 8001150:	f000 809a 	beq.w	8001288 <sinpwm+0x1ac>
 8001154:	9f03      	ldr	r7, [sp, #12]
 8001156:	dd7a      	ble.n	800124e <sinpwm+0x172>
 8001158:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 800115c:	4439      	add	r1, r7
 800115e:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 8001162:	2b00      	cmp	r3, #0
 8001164:	f000 8092 	beq.w	800128c <sinpwm+0x1b0>
 8001168:	9f04      	ldr	r7, [sp, #16]
 800116a:	dd76      	ble.n	800125a <sinpwm+0x17e>
 800116c:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8001170:	4439      	add	r1, r7
 8001172:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8001176:	2b00      	cmp	r3, #0
 8001178:	f000 808b 	beq.w	8001292 <sinpwm+0x1b6>
 800117c:	9f05      	ldr	r7, [sp, #20]
 800117e:	dd72      	ble.n	8001266 <sinpwm+0x18a>
 8001180:	eb00 1263 	add.w	r2, r0, r3, asr #5
 8001184:	4439      	add	r1, r7
 8001186:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 800118a:	2b00      	cmp	r3, #0
 800118c:	f000 8083 	beq.w	8001296 <sinpwm+0x1ba>
 8001190:	9f06      	ldr	r7, [sp, #24]
 8001192:	dd6e      	ble.n	8001272 <sinpwm+0x196>
 8001194:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 8001198:	4439      	add	r1, r7
 800119a:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 800119e:	2b00      	cmp	r3, #0
 80011a0:	d07c      	beq.n	800129c <sinpwm+0x1c0>
 80011a2:	9a07      	ldr	r2, [sp, #28]
 80011a4:	bfc7      	ittee	gt
 80011a6:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 80011aa:	1889      	addgt	r1, r1, r2
 80011ac:	1a89      	suble	r1, r1, r2
 80011ae:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 80011b2:	2207      	movs	r2, #7
 80011b4:	ab10      	add	r3, sp, #64	; 0x40
 80011b6:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 80011ba:	f852 3c20 	ldr.w	r3, [r2, #-32]
 80011be:	2e00      	cmp	r6, #0
 80011c0:	fb03 f300 	mul.w	r3, r3, r0
 80011c4:	bfb8      	it	lt
 80011c6:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 80011ca:	2900      	cmp	r1, #0
 80011cc:	bfb8      	it	lt
 80011ce:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 80011d2:	151b      	asrs	r3, r3, #20
 80011d4:	440d      	add	r5, r1
 80011d6:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 80011da:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80011de:	dd22      	ble.n	8001226 <sinpwm+0x14a>
 80011e0:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 80012a8 <sinpwm+0x1cc>
 80011e4:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 80011e8:	2001      	movs	r0, #1
 80011ea:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
 80011ee:	4f2d      	ldr	r7, [pc, #180]	; (80012a4 <sinpwm+0x1c8>)
 80011f0:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
 80011f4:	3602      	adds	r6, #2
 80011f6:	f3ce 0e09 	ubfx	lr, lr, #0, #10
 80011fa:	f3c6 0609 	ubfx	r6, r6, #0, #10
 80011fe:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
 8001202:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
 8001206:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
 800120a:	fb06 f50c 	mul.w	r5, r6, ip
 800120e:	fb01 f10c 	mul.w	r1, r1, ip
 8001212:	fb02 f303 	mul.w	r3, r2, r3
 8001216:	12ad      	asrs	r5, r5, #10
 8001218:	128a      	asrs	r2, r1, #10
 800121a:	129b      	asrs	r3, r3, #10
 800121c:	60a5      	str	r5, [r4, #8]
 800121e:	6062      	str	r2, [r4, #4]
 8001220:	6023      	str	r3, [r4, #0]
 8001222:	b011      	add	sp, #68	; 0x44
 8001224:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001226:	f1c3 0c00 	rsb	ip, r3, #0
 800122a:	2000      	movs	r0, #0
 800122c:	e7dd      	b.n	80011ea <sinpwm+0x10e>
 800122e:	1ad0      	subs	r0, r2, r3
 8001230:	4249      	negs	r1, r1
 8001232:	4413      	add	r3, r2
 8001234:	e776      	b.n	8001124 <sinpwm+0x48>
 8001236:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 800123a:	1bc9      	subs	r1, r1, r7
 800123c:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8001240:	e77b      	b.n	800113a <sinpwm+0x5e>
 8001242:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8001246:	1bc9      	subs	r1, r1, r7
 8001248:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 800124c:	e77f      	b.n	800114e <sinpwm+0x72>
 800124e:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8001252:	1bc9      	subs	r1, r1, r7
 8001254:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 8001258:	e783      	b.n	8001162 <sinpwm+0x86>
 800125a:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 800125e:	1bc9      	subs	r1, r1, r7
 8001260:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8001264:	e787      	b.n	8001176 <sinpwm+0x9a>
 8001266:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 800126a:	1bc9      	subs	r1, r1, r7
 800126c:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8001270:	e78b      	b.n	800118a <sinpwm+0xae>
 8001272:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8001276:	1bc9      	subs	r1, r1, r7
 8001278:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 800127c:	e78f      	b.n	800119e <sinpwm+0xc2>
 800127e:	461a      	mov	r2, r3
 8001280:	e798      	b.n	80011b4 <sinpwm+0xd8>
 8001282:	4610      	mov	r0, r2
 8001284:	2201      	movs	r2, #1
 8001286:	e795      	b.n	80011b4 <sinpwm+0xd8>
 8001288:	2202      	movs	r2, #2
 800128a:	e793      	b.n	80011b4 <sinpwm+0xd8>
 800128c:	4610      	mov	r0, r2
 800128e:	2203      	movs	r2, #3
 8001290:	e790      	b.n	80011b4 <sinpwm+0xd8>
 8001292:	2204      	movs	r2, #4
 8001294:	e78e      	b.n	80011b4 <sinpwm+0xd8>
 8001296:	4610      	mov	r0, r2
 8001298:	2205      	movs	r2, #5
 800129a:	e78b      	b.n	80011b4 <sinpwm+0xd8>
 800129c:	2206      	movs	r2, #6
 800129e:	e789      	b.n	80011b4 <sinpwm+0xd8>
 80012a0:	08001e30 	.word	0x08001e30
 80012a4:	08001e70 	.word	0x08001e70
 80012a8:	fffffe0c 	.word	0xfffffe0c

080012ac <svpwm>:
 80012ac:	b5f0      	push	{r4, r5, r6, r7, lr}
 80012ae:	b091      	sub	sp, #68	; 0x44
 80012b0:	46ee      	mov	lr, sp
 80012b2:	468c      	mov	ip, r1
 80012b4:	4eb9      	ldr	r6, [pc, #740]	; (800159c <svpwm+0x2f0>)
 80012b6:	4604      	mov	r4, r0
 80012b8:	4615      	mov	r5, r2
 80012ba:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 80012bc:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 80012c0:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 80012c4:	af08      	add	r7, sp, #32
 80012c6:	3610      	adds	r6, #16
 80012c8:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 80012cc:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 80012ce:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 80012d0:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 80012d4:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 80012d8:	f8dc 6000 	ldr.w	r6, [ip]
 80012dc:	f8dc 3004 	ldr.w	r3, [ip, #4]
 80012e0:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 80012e4:	2b00      	cmp	r3, #0
 80012e6:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 80012ea:	9900      	ldr	r1, [sp, #0]
 80012ec:	dd71      	ble.n	80013d2 <svpwm+0x126>
 80012ee:	18d0      	adds	r0, r2, r3
 80012f0:	1a9b      	subs	r3, r3, r2
 80012f2:	2b00      	cmp	r3, #0
 80012f4:	f000 8141 	beq.w	800157a <svpwm+0x2ce>
 80012f8:	9f01      	ldr	r7, [sp, #4]
 80012fa:	dd6e      	ble.n	80013da <svpwm+0x12e>
 80012fc:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8001300:	4439      	add	r1, r7
 8001302:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8001306:	2b00      	cmp	r3, #0
 8001308:	f000 8139 	beq.w	800157e <svpwm+0x2d2>
 800130c:	9f02      	ldr	r7, [sp, #8]
 800130e:	dd6a      	ble.n	80013e6 <svpwm+0x13a>
 8001310:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8001314:	4439      	add	r1, r7
 8001316:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 800131a:	2b00      	cmp	r3, #0
 800131c:	f000 8132 	beq.w	8001584 <svpwm+0x2d8>
 8001320:	9f03      	ldr	r7, [sp, #12]
 8001322:	dd66      	ble.n	80013f2 <svpwm+0x146>
 8001324:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 8001328:	4439      	add	r1, r7
 800132a:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 800132e:	2b00      	cmp	r3, #0
 8001330:	f000 812a 	beq.w	8001588 <svpwm+0x2dc>
 8001334:	9f04      	ldr	r7, [sp, #16]
 8001336:	dd62      	ble.n	80013fe <svpwm+0x152>
 8001338:	eb02 1023 	add.w	r0, r2, r3, asr #4
 800133c:	4439      	add	r1, r7
 800133e:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8001342:	2b00      	cmp	r3, #0
 8001344:	f000 8123 	beq.w	800158e <svpwm+0x2e2>
 8001348:	9f05      	ldr	r7, [sp, #20]
 800134a:	dd5e      	ble.n	800140a <svpwm+0x15e>
 800134c:	eb00 1263 	add.w	r2, r0, r3, asr #5
 8001350:	4439      	add	r1, r7
 8001352:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8001356:	2b00      	cmp	r3, #0
 8001358:	f000 811b 	beq.w	8001592 <svpwm+0x2e6>
 800135c:	9f06      	ldr	r7, [sp, #24]
 800135e:	dd5a      	ble.n	8001416 <svpwm+0x16a>
 8001360:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 8001364:	4439      	add	r1, r7
 8001366:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 800136a:	2b00      	cmp	r3, #0
 800136c:	f000 8114 	beq.w	8001598 <svpwm+0x2ec>
 8001370:	9a07      	ldr	r2, [sp, #28]
 8001372:	bfc7      	ittee	gt
 8001374:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 8001378:	1889      	addgt	r1, r1, r2
 800137a:	1a89      	suble	r1, r1, r2
 800137c:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 8001380:	2207      	movs	r2, #7
 8001382:	ab10      	add	r3, sp, #64	; 0x40
 8001384:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8001388:	f852 3c20 	ldr.w	r3, [r2, #-32]
 800138c:	2e00      	cmp	r6, #0
 800138e:	bfb8      	it	lt
 8001390:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 8001394:	fb03 f300 	mul.w	r3, r3, r0
 8001398:	2900      	cmp	r1, #0
 800139a:	bfb8      	it	lt
 800139c:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 80013a0:	4a7f      	ldr	r2, [pc, #508]	; (80015a0 <svpwm+0x2f4>)
 80013a2:	440d      	add	r5, r1
 80013a4:	151b      	asrs	r3, r3, #20
 80013a6:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80013aa:	6013      	str	r3, [r2, #0]
 80013ac:	eb05 0245 	add.w	r2, r5, r5, lsl #1
 80013b0:	1252      	asrs	r2, r2, #9
 80013b2:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 80013b6:	f102 32ff 	add.w	r2, r2, #4294967295
 80013ba:	bfc6      	itte	gt
 80013bc:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
 80013c0:	2001      	movgt	r0, #1
 80013c2:	2000      	movle	r0, #0
 80013c4:	2a04      	cmp	r2, #4
 80013c6:	d848      	bhi.n	800145a <svpwm+0x1ae>
 80013c8:	e8df f002 	tbb	[pc, r2]
 80013cc:	2b9e8164 	.word	0x2b9e8164
 80013d0:	bb          	.byte	0xbb
 80013d1:	00          	.byte	0x00
 80013d2:	1ad0      	subs	r0, r2, r3
 80013d4:	4249      	negs	r1, r1
 80013d6:	4413      	add	r3, r2
 80013d8:	e78b      	b.n	80012f2 <svpwm+0x46>
 80013da:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 80013de:	1bc9      	subs	r1, r1, r7
 80013e0:	eb03 0360 	add.w	r3, r3, r0, asr #1
 80013e4:	e78f      	b.n	8001306 <svpwm+0x5a>
 80013e6:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 80013ea:	1bc9      	subs	r1, r1, r7
 80013ec:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 80013f0:	e793      	b.n	800131a <svpwm+0x6e>
 80013f2:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 80013f6:	1bc9      	subs	r1, r1, r7
 80013f8:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 80013fc:	e797      	b.n	800132e <svpwm+0x82>
 80013fe:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8001402:	1bc9      	subs	r1, r1, r7
 8001404:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8001408:	e79b      	b.n	8001342 <svpwm+0x96>
 800140a:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 800140e:	1bc9      	subs	r1, r1, r7
 8001410:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8001414:	e79f      	b.n	8001356 <svpwm+0xaa>
 8001416:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 800141a:	1bc9      	subs	r1, r1, r7
 800141c:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8001420:	e7a3      	b.n	800136a <svpwm+0xbe>
 8001422:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
 8001426:	4e5f      	ldr	r6, [pc, #380]	; (80015a4 <svpwm+0x2f8>)
 8001428:	3204      	adds	r2, #4
 800142a:	f3c2 0209 	ubfx	r2, r2, #0, #10
 800142e:	3556      	adds	r5, #86	; 0x56
 8001430:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8001434:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8001438:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 800143c:	fb01 f103 	mul.w	r1, r1, r3
 8001440:	fb02 f203 	mul.w	r2, r2, r3
 8001444:	1289      	asrs	r1, r1, #10
 8001446:	1293      	asrs	r3, r2, #10
 8001448:	424a      	negs	r2, r1
 800144a:	1ad2      	subs	r2, r2, r3
 800144c:	1a5d      	subs	r5, r3, r1
 800144e:	440b      	add	r3, r1
 8001450:	6062      	str	r2, [r4, #4]
 8001452:	6025      	str	r5, [r4, #0]
 8001454:	60a3      	str	r3, [r4, #8]
 8001456:	b011      	add	sp, #68	; 0x44
 8001458:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800145a:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
 800145e:	4e51      	ldr	r6, [pc, #324]	; (80015a4 <svpwm+0x2f8>)
 8001460:	3202      	adds	r2, #2
 8001462:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8001466:	f505 7540 	add.w	r5, r5, #768	; 0x300
 800146a:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 800146e:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8001472:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8001476:	fb01 f103 	mul.w	r1, r1, r3
 800147a:	fb02 f203 	mul.w	r2, r2, r3
 800147e:	1289      	asrs	r1, r1, #10
 8001480:	1293      	asrs	r3, r2, #10
 8001482:	424a      	negs	r2, r1
 8001484:	1ad2      	subs	r2, r2, r3
 8001486:	18cd      	adds	r5, r1, r3
 8001488:	1a5b      	subs	r3, r3, r1
 800148a:	60a2      	str	r2, [r4, #8]
 800148c:	6025      	str	r5, [r4, #0]
 800148e:	6063      	str	r3, [r4, #4]
 8001490:	b011      	add	sp, #68	; 0x44
 8001492:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001494:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
 8001498:	4e42      	ldr	r6, [pc, #264]	; (80015a4 <svpwm+0x2f8>)
 800149a:	3204      	adds	r2, #4
 800149c:	f3c2 0209 	ubfx	r2, r2, #0, #10
 80014a0:	f205 2556 	addw	r5, r5, #598	; 0x256
 80014a4:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 80014a8:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80014ac:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 80014b0:	fb01 f103 	mul.w	r1, r1, r3
 80014b4:	fb02 f203 	mul.w	r2, r2, r3
 80014b8:	1289      	asrs	r1, r1, #10
 80014ba:	1293      	asrs	r3, r2, #10
 80014bc:	424a      	negs	r2, r1
 80014be:	1ad2      	subs	r2, r2, r3
 80014c0:	1acd      	subs	r5, r1, r3
 80014c2:	440b      	add	r3, r1
 80014c4:	60a2      	str	r2, [r4, #8]
 80014c6:	6025      	str	r5, [r4, #0]
 80014c8:	6063      	str	r3, [r4, #4]
 80014ca:	b011      	add	sp, #68	; 0x44
 80014cc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80014ce:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
 80014d2:	4e34      	ldr	r6, [pc, #208]	; (80015a4 <svpwm+0x2f8>)
 80014d4:	320f      	adds	r2, #15
 80014d6:	f3c2 0209 	ubfx	r2, r2, #0, #10
 80014da:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
 80014de:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 80014e2:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80014e6:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 80014ea:	fb01 f103 	mul.w	r1, r1, r3
 80014ee:	fb02 f203 	mul.w	r2, r2, r3
 80014f2:	1289      	asrs	r1, r1, #10
 80014f4:	1293      	asrs	r3, r2, #10
 80014f6:	424a      	negs	r2, r1
 80014f8:	1ad2      	subs	r2, r2, r3
 80014fa:	18cd      	adds	r5, r1, r3
 80014fc:	1a5b      	subs	r3, r3, r1
 80014fe:	e884 0024 	stmia.w	r4, {r2, r5}
 8001502:	60a3      	str	r3, [r4, #8]
 8001504:	b011      	add	sp, #68	; 0x44
 8001506:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001508:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
 800150c:	4e25      	ldr	r6, [pc, #148]	; (80015a4 <svpwm+0x2f8>)
 800150e:	320a      	adds	r2, #10
 8001510:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8001514:	f505 7580 	add.w	r5, r5, #256	; 0x100
 8001518:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 800151c:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8001520:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8001524:	fb01 f103 	mul.w	r1, r1, r3
 8001528:	fb02 f203 	mul.w	r2, r2, r3
 800152c:	1289      	asrs	r1, r1, #10
 800152e:	1293      	asrs	r3, r2, #10
 8001530:	424a      	negs	r2, r1
 8001532:	1ad2      	subs	r2, r2, r3
 8001534:	1acd      	subs	r5, r1, r3
 8001536:	440b      	add	r3, r1
 8001538:	e884 0024 	stmia.w	r4, {r2, r5}
 800153c:	60a3      	str	r3, [r4, #8]
 800153e:	b011      	add	sp, #68	; 0x44
 8001540:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001542:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
 8001546:	4917      	ldr	r1, [pc, #92]	; (80015a4 <svpwm+0x2f8>)
 8001548:	320f      	adds	r2, #15
 800154a:	f3c2 0209 	ubfx	r2, r2, #0, #10
 800154e:	3d55      	subs	r5, #85	; 0x55
 8001550:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8001554:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8001558:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
 800155c:	fb02 f203 	mul.w	r2, r2, r3
 8001560:	fb01 f303 	mul.w	r3, r1, r3
 8001564:	1292      	asrs	r2, r2, #10
 8001566:	129b      	asrs	r3, r3, #10
 8001568:	4251      	negs	r1, r2
 800156a:	18d5      	adds	r5, r2, r3
 800156c:	1ac9      	subs	r1, r1, r3
 800156e:	1ad2      	subs	r2, r2, r3
 8001570:	6061      	str	r1, [r4, #4]
 8001572:	6025      	str	r5, [r4, #0]
 8001574:	60a2      	str	r2, [r4, #8]
 8001576:	b011      	add	sp, #68	; 0x44
 8001578:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800157a:	461a      	mov	r2, r3
 800157c:	e701      	b.n	8001382 <svpwm+0xd6>
 800157e:	4610      	mov	r0, r2
 8001580:	2201      	movs	r2, #1
 8001582:	e6fe      	b.n	8001382 <svpwm+0xd6>
 8001584:	2202      	movs	r2, #2
 8001586:	e6fc      	b.n	8001382 <svpwm+0xd6>
 8001588:	4610      	mov	r0, r2
 800158a:	2203      	movs	r2, #3
 800158c:	e6f9      	b.n	8001382 <svpwm+0xd6>
 800158e:	2204      	movs	r2, #4
 8001590:	e6f7      	b.n	8001382 <svpwm+0xd6>
 8001592:	4610      	mov	r0, r2
 8001594:	2205      	movs	r2, #5
 8001596:	e6f4      	b.n	8001382 <svpwm+0xd6>
 8001598:	2206      	movs	r2, #6
 800159a:	e6f2      	b.n	8001382 <svpwm+0xd6>
 800159c:	08001e30 	.word	0x08001e30
 80015a0:	200002c8 	.word	0x200002c8
 80015a4:	08001e70 	.word	0x08001e70

080015a8 <encoder_init>:
 80015a8:	4b01      	ldr	r3, [pc, #4]	; (80015b0 <encoder_init+0x8>)
 80015aa:	6058      	str	r0, [r3, #4]
 80015ac:	6098      	str	r0, [r3, #8]
 80015ae:	4770      	bx	lr
 80015b0:	200002c8 	.word	0x200002c8

080015b4 <get_speed>:
 80015b4:	4a0e      	ldr	r2, [pc, #56]	; (80015f0 <get_speed+0x3c>)
 80015b6:	b430      	push	{r4, r5}
 80015b8:	6893      	ldr	r3, [r2, #8]
 80015ba:	6855      	ldr	r5, [r2, #4]
 80015bc:	1ac3      	subs	r3, r0, r3
 80015be:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
 80015c2:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
 80015c6:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
 80015ca:	6095      	str	r5, [r2, #8]
 80015cc:	6050      	str	r0, [r2, #4]
 80015ce:	dd05      	ble.n	80015dc <get_speed+0x28>
 80015d0:	2b00      	cmp	r3, #0
 80015d2:	bfb4      	ite	lt
 80015d4:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
 80015d8:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
 80015dc:	4a05      	ldr	r2, [pc, #20]	; (80015f4 <get_speed+0x40>)
 80015de:	1058      	asrs	r0, r3, #1
 80015e0:	fb02 f000 	mul.w	r0, r2, r0
 80015e4:	bc30      	pop	{r4, r5}
 80015e6:	680a      	ldr	r2, [r1, #0]
 80015e8:	1300      	asrs	r0, r0, #12
 80015ea:	4413      	add	r3, r2
 80015ec:	600b      	str	r3, [r1, #0]
 80015ee:	4770      	bx	lr
 80015f0:	200002c8 	.word	0x200002c8
 80015f4:	0002ae7c 	.word	0x0002ae7c

080015f8 <rfilter1>:
 80015f8:	b470      	push	{r4, r5, r6}
 80015fa:	f240 74c6 	movw	r4, #1990	; 0x7c6
 80015fe:	4b0e      	ldr	r3, [pc, #56]	; (8001638 <rfilter1+0x40>)
 8001600:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
 8001604:	68de      	ldr	r6, [r3, #12]
 8001606:	6959      	ldr	r1, [r3, #20]
 8001608:	fb04 f406 	mul.w	r4, r4, r6
 800160c:	fb02 4201 	mla	r2, r2, r1, r4
 8001610:	490a      	ldr	r1, [pc, #40]	; (800163c <rfilter1+0x44>)
 8001612:	691d      	ldr	r5, [r3, #16]
 8001614:	fb01 2200 	mla	r2, r1, r0, r2
 8001618:	4c09      	ldr	r4, [pc, #36]	; (8001640 <rfilter1+0x48>)
 800161a:	6999      	ldr	r1, [r3, #24]
 800161c:	fb04 2205 	mla	r2, r4, r5, r2
 8001620:	4c08      	ldr	r4, [pc, #32]	; (8001644 <rfilter1+0x4c>)
 8001622:	615e      	str	r6, [r3, #20]
 8001624:	fb04 2201 	mla	r2, r4, r1, r2
 8001628:	1291      	asrs	r1, r2, #10
 800162a:	6118      	str	r0, [r3, #16]
 800162c:	619d      	str	r5, [r3, #24]
 800162e:	1490      	asrs	r0, r2, #18
 8001630:	60d9      	str	r1, [r3, #12]
 8001632:	bc70      	pop	{r4, r5, r6}
 8001634:	4770      	bx	lr
 8001636:	bf00      	nop
 8001638:	200002c8 	.word	0x200002c8
 800163c:	0003f0a4 	.word	0x0003f0a4
 8001640:	fff83a2e 	.word	0xfff83a2e
 8001644:	0003dc29 	.word	0x0003dc29

08001648 <rfilter2>:
 8001648:	b470      	push	{r4, r5, r6}
 800164a:	f240 748a 	movw	r4, #1930	; 0x78a
 800164e:	4b0d      	ldr	r3, [pc, #52]	; (8001684 <rfilter2+0x3c>)
 8001650:	4a0d      	ldr	r2, [pc, #52]	; (8001688 <rfilter2+0x40>)
 8001652:	69de      	ldr	r6, [r3, #28]
 8001654:	6a59      	ldr	r1, [r3, #36]	; 0x24
 8001656:	fb04 f406 	mul.w	r4, r4, r6
 800165a:	fb02 4201 	mla	r2, r2, r1, r4
 800165e:	490b      	ldr	r1, [pc, #44]	; (800168c <rfilter2+0x44>)
 8001660:	6a1d      	ldr	r5, [r3, #32]
 8001662:	fb01 2200 	mla	r2, r1, r0, r2
 8001666:	4c0a      	ldr	r4, [pc, #40]	; (8001690 <rfilter2+0x48>)
 8001668:	6a99      	ldr	r1, [r3, #40]	; 0x28
 800166a:	fb04 2205 	mla	r2, r4, r5, r2
 800166e:	4c09      	ldr	r4, [pc, #36]	; (8001694 <rfilter2+0x4c>)
 8001670:	625e      	str	r6, [r3, #36]	; 0x24
 8001672:	fb04 2201 	mla	r2, r4, r1, r2
 8001676:	1291      	asrs	r1, r2, #10
 8001678:	6218      	str	r0, [r3, #32]
 800167a:	629d      	str	r5, [r3, #40]	; 0x28
 800167c:	1490      	asrs	r0, r2, #18
 800167e:	61d9      	str	r1, [r3, #28]
 8001680:	bc70      	pop	{r4, r5, r6}
 8001682:	4770      	bx	lr
 8001684:	200002c8 	.word	0x200002c8
 8001688:	fffffc66 	.word	0xfffffc66
 800168c:	0003e3d7 	.word	0x0003e3d7
 8001690:	fff8767b 	.word	0xfff8767b
 8001694:	0003b5c3 	.word	0x0003b5c3

08001698 <adc_init>:
 8001698:	b480      	push	{r7}
 800169a:	af00      	add	r7, sp, #0
 800169c:	4a10      	ldr	r2, [pc, #64]	; (80016e0 <adc_init+0x48>)
 800169e:	4b10      	ldr	r3, [pc, #64]	; (80016e0 <adc_init+0x48>)
 80016a0:	69db      	ldr	r3, [r3, #28]
 80016a2:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80016a6:	61d3      	str	r3, [r2, #28]
 80016a8:	4b0d      	ldr	r3, [pc, #52]	; (80016e0 <adc_init+0x48>)
 80016aa:	f242 0220 	movw	r2, #8224	; 0x2020
 80016ae:	615a      	str	r2, [r3, #20]
 80016b0:	4b0c      	ldr	r3, [pc, #48]	; (80016e4 <adc_init+0x4c>)
 80016b2:	2200      	movs	r2, #0
 80016b4:	601a      	str	r2, [r3, #0]
 80016b6:	4a0b      	ldr	r2, [pc, #44]	; (80016e4 <adc_init+0x4c>)
 80016b8:	4b0a      	ldr	r3, [pc, #40]	; (80016e4 <adc_init+0x4c>)
 80016ba:	681b      	ldr	r3, [r3, #0]
 80016bc:	f443 7301 	orr.w	r3, r3, #516	; 0x204
 80016c0:	f043 0301 	orr.w	r3, r3, #1
 80016c4:	6013      	str	r3, [r2, #0]
 80016c6:	4a07      	ldr	r2, [pc, #28]	; (80016e4 <adc_init+0x4c>)
 80016c8:	4b06      	ldr	r3, [pc, #24]	; (80016e4 <adc_init+0x4c>)
 80016ca:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80016cc:	f443 73f0 	orr.w	r3, r3, #480	; 0x1e0
 80016d0:	6293      	str	r3, [r2, #40]	; 0x28
 80016d2:	4b04      	ldr	r3, [pc, #16]	; (80016e4 <adc_init+0x4c>)
 80016d4:	2210      	movs	r2, #16
 80016d6:	621a      	str	r2, [r3, #32]
 80016d8:	bf00      	nop
 80016da:	46bd      	mov	sp, r7
 80016dc:	bc80      	pop	{r7}
 80016de:	4770      	bx	lr
 80016e0:	40020000 	.word	0x40020000
 80016e4:	40088000 	.word	0x40088000

080016e8 <dma_init>:
 80016e8:	b480      	push	{r7}
 80016ea:	af00      	add	r7, sp, #0
 80016ec:	4a17      	ldr	r2, [pc, #92]	; (800174c <dma_init+0x64>)
 80016ee:	4b17      	ldr	r3, [pc, #92]	; (800174c <dma_init+0x64>)
 80016f0:	69db      	ldr	r3, [r3, #28]
 80016f2:	f043 0320 	orr.w	r3, r3, #32
 80016f6:	61d3      	str	r3, [r2, #28]
 80016f8:	4b15      	ldr	r3, [pc, #84]	; (8001750 <dma_init+0x68>)
 80016fa:	4a16      	ldr	r2, [pc, #88]	; (8001754 <dma_init+0x6c>)
 80016fc:	609a      	str	r2, [r3, #8]
 80016fe:	4b14      	ldr	r3, [pc, #80]	; (8001750 <dma_init+0x68>)
 8001700:	f04f 32ff 	mov.w	r2, #4294967295
 8001704:	62da      	str	r2, [r3, #44]	; 0x2c
 8001706:	4b12      	ldr	r3, [pc, #72]	; (8001750 <dma_init+0x68>)
 8001708:	f04f 32ff 	mov.w	r2, #4294967295
 800170c:	621a      	str	r2, [r3, #32]
 800170e:	4b10      	ldr	r3, [pc, #64]	; (8001750 <dma_init+0x68>)
 8001710:	f04f 32ff 	mov.w	r2, #4294967295
 8001714:	635a      	str	r2, [r3, #52]	; 0x34
 8001716:	4b0e      	ldr	r3, [pc, #56]	; (8001750 <dma_init+0x68>)
 8001718:	f44f 7280 	mov.w	r2, #256	; 0x100
 800171c:	61da      	str	r2, [r3, #28]
 800171e:	4b0c      	ldr	r3, [pc, #48]	; (8001750 <dma_init+0x68>)
 8001720:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001724:	625a      	str	r2, [r3, #36]	; 0x24
 8001726:	4b0a      	ldr	r3, [pc, #40]	; (8001750 <dma_init+0x68>)
 8001728:	2201      	movs	r2, #1
 800172a:	605a      	str	r2, [r3, #4]
 800172c:	4b09      	ldr	r3, [pc, #36]	; (8001754 <dma_init+0x6c>)
 800172e:	4a0a      	ldr	r2, [pc, #40]	; (8001758 <dma_init+0x70>)
 8001730:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
 8001734:	4a09      	ldr	r2, [pc, #36]	; (800175c <dma_init+0x74>)
 8001736:	4b07      	ldr	r3, [pc, #28]	; (8001754 <dma_init+0x6c>)
 8001738:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800173c:	4b05      	ldr	r3, [pc, #20]	; (8001754 <dma_init+0x6c>)
 800173e:	4a08      	ldr	r2, [pc, #32]	; (8001760 <dma_init+0x78>)
 8001740:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001744:	bf00      	nop
 8001746:	46bd      	mov	sp, r7
 8001748:	bc80      	pop	{r7}
 800174a:	4770      	bx	lr
 800174c:	40020000 	.word	0x40020000
 8001750:	40028000 	.word	0x40028000
 8001754:	20000000 	.word	0x20000000
 8001758:	40088018 	.word	0x40088018
 800175c:	2000020c 	.word	0x2000020c
 8001760:	ae000031 	.word	0xae000031

08001764 <adc_dma_init>:
 8001764:	b580      	push	{r7, lr}
 8001766:	af00      	add	r7, sp, #0
 8001768:	f7ff ff96 	bl	8001698 <adc_init>
 800176c:	f7ff ffbc 	bl	80016e8 <dma_init>
 8001770:	bf00      	nop
 8001772:	bd80      	pop	{r7, pc}

08001774 <adc_dma_start>:
 8001774:	b480      	push	{r7}
 8001776:	af00      	add	r7, sp, #0
 8001778:	4b07      	ldr	r3, [pc, #28]	; (8001798 <adc_dma_start+0x24>)
 800177a:	2200      	movs	r2, #0
 800177c:	601a      	str	r2, [r3, #0]
 800177e:	4b06      	ldr	r3, [pc, #24]	; (8001798 <adc_dma_start+0x24>)
 8001780:	f240 220d 	movw	r2, #525	; 0x20d
 8001784:	601a      	str	r2, [r3, #0]
 8001786:	4b05      	ldr	r3, [pc, #20]	; (800179c <adc_dma_start+0x28>)
 8001788:	f44f 7280 	mov.w	r2, #256	; 0x100
 800178c:	629a      	str	r2, [r3, #40]	; 0x28
 800178e:	bf00      	nop
 8001790:	46bd      	mov	sp, r7
 8001792:	bc80      	pop	{r7}
 8001794:	4770      	bx	lr
 8001796:	bf00      	nop
 8001798:	40088000 	.word	0x40088000
 800179c:	40028000 	.word	0x40028000

080017a0 <adc_dma_wait>:
 80017a0:	b480      	push	{r7}
 80017a2:	af00      	add	r7, sp, #0
 80017a4:	bf00      	nop
 80017a6:	4b0a      	ldr	r3, [pc, #40]	; (80017d0 <adc_dma_wait+0x30>)
 80017a8:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80017ac:	f003 0307 	and.w	r3, r3, #7
 80017b0:	2b00      	cmp	r3, #0
 80017b2:	d1f8      	bne.n	80017a6 <adc_dma_wait+0x6>
 80017b4:	4a07      	ldr	r2, [pc, #28]	; (80017d4 <adc_dma_wait+0x34>)
 80017b6:	4b07      	ldr	r3, [pc, #28]	; (80017d4 <adc_dma_wait+0x34>)
 80017b8:	681b      	ldr	r3, [r3, #0]
 80017ba:	f023 0308 	bic.w	r3, r3, #8
 80017be:	6013      	str	r3, [r2, #0]
 80017c0:	4b03      	ldr	r3, [pc, #12]	; (80017d0 <adc_dma_wait+0x30>)
 80017c2:	4a05      	ldr	r2, [pc, #20]	; (80017d8 <adc_dma_wait+0x38>)
 80017c4:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80017c8:	bf00      	nop
 80017ca:	46bd      	mov	sp, r7
 80017cc:	bc80      	pop	{r7}
 80017ce:	4770      	bx	lr
 80017d0:	20000000 	.word	0x20000000
 80017d4:	40088000 	.word	0x40088000
 80017d8:	ae000031 	.word	0xae000031

080017dc <NVIC_EnableIRQ>:
 80017dc:	b480      	push	{r7}
 80017de:	b083      	sub	sp, #12
 80017e0:	af00      	add	r7, sp, #0
 80017e2:	4603      	mov	r3, r0
 80017e4:	71fb      	strb	r3, [r7, #7]
 80017e6:	4908      	ldr	r1, [pc, #32]	; (8001808 <NVIC_EnableIRQ+0x2c>)
 80017e8:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80017ec:	095b      	lsrs	r3, r3, #5
 80017ee:	79fa      	ldrb	r2, [r7, #7]
 80017f0:	f002 021f 	and.w	r2, r2, #31
 80017f4:	2001      	movs	r0, #1
 80017f6:	fa00 f202 	lsl.w	r2, r0, r2
 80017fa:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80017fe:	bf00      	nop
 8001800:	370c      	adds	r7, #12
 8001802:	46bd      	mov	sp, r7
 8001804:	bc80      	pop	{r7}
 8001806:	4770      	bx	lr
 8001808:	e000e100 	.word	0xe000e100

0800180c <PortConfig>:
 800180c:	b480      	push	{r7}
 800180e:	af00      	add	r7, sp, #0
 8001810:	4a66      	ldr	r2, [pc, #408]	; (80019ac <PortConfig+0x1a0>)
 8001812:	4b66      	ldr	r3, [pc, #408]	; (80019ac <PortConfig+0x1a0>)
 8001814:	69db      	ldr	r3, [r3, #28]
 8001816:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800181a:	61d3      	str	r3, [r2, #28]
 800181c:	4b64      	ldr	r3, [pc, #400]	; (80019b0 <PortConfig+0x1a4>)
 800181e:	2200      	movs	r2, #0
 8001820:	609a      	str	r2, [r3, #8]
 8001822:	4b63      	ldr	r3, [pc, #396]	; (80019b0 <PortConfig+0x1a4>)
 8001824:	2200      	movs	r2, #0
 8001826:	601a      	str	r2, [r3, #0]
 8001828:	4a61      	ldr	r2, [pc, #388]	; (80019b0 <PortConfig+0x1a4>)
 800182a:	4b61      	ldr	r3, [pc, #388]	; (80019b0 <PortConfig+0x1a4>)
 800182c:	685b      	ldr	r3, [r3, #4]
 800182e:	f043 0301 	orr.w	r3, r3, #1
 8001832:	6053      	str	r3, [r2, #4]
 8001834:	4a5e      	ldr	r2, [pc, #376]	; (80019b0 <PortConfig+0x1a4>)
 8001836:	4b5e      	ldr	r3, [pc, #376]	; (80019b0 <PortConfig+0x1a4>)
 8001838:	68db      	ldr	r3, [r3, #12]
 800183a:	f043 0301 	orr.w	r3, r3, #1
 800183e:	60d3      	str	r3, [r2, #12]
 8001840:	4a5b      	ldr	r2, [pc, #364]	; (80019b0 <PortConfig+0x1a4>)
 8001842:	4b5b      	ldr	r3, [pc, #364]	; (80019b0 <PortConfig+0x1a4>)
 8001844:	699b      	ldr	r3, [r3, #24]
 8001846:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
 800184a:	6193      	str	r3, [r2, #24]
 800184c:	4a58      	ldr	r2, [pc, #352]	; (80019b0 <PortConfig+0x1a4>)
 800184e:	4b58      	ldr	r3, [pc, #352]	; (80019b0 <PortConfig+0x1a4>)
 8001850:	685b      	ldr	r3, [r3, #4]
 8001852:	f023 0308 	bic.w	r3, r3, #8
 8001856:	6053      	str	r3, [r2, #4]
 8001858:	4a55      	ldr	r2, [pc, #340]	; (80019b0 <PortConfig+0x1a4>)
 800185a:	4b55      	ldr	r3, [pc, #340]	; (80019b0 <PortConfig+0x1a4>)
 800185c:	68db      	ldr	r3, [r3, #12]
 800185e:	f043 0308 	orr.w	r3, r3, #8
 8001862:	60d3      	str	r3, [r2, #12]
 8001864:	4b52      	ldr	r3, [pc, #328]	; (80019b0 <PortConfig+0x1a4>)
 8001866:	2280      	movs	r2, #128	; 0x80
 8001868:	609a      	str	r2, [r3, #8]
 800186a:	4a50      	ldr	r2, [pc, #320]	; (80019ac <PortConfig+0x1a0>)
 800186c:	4b4f      	ldr	r3, [pc, #316]	; (80019ac <PortConfig+0x1a0>)
 800186e:	69db      	ldr	r3, [r3, #28]
 8001870:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 8001874:	61d3      	str	r3, [r2, #28]
 8001876:	4a4f      	ldr	r2, [pc, #316]	; (80019b4 <PortConfig+0x1a8>)
 8001878:	4b4e      	ldr	r3, [pc, #312]	; (80019b4 <PortConfig+0x1a8>)
 800187a:	689b      	ldr	r3, [r3, #8]
 800187c:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
 8001880:	6093      	str	r3, [r2, #8]
 8001882:	4a4c      	ldr	r2, [pc, #304]	; (80019b4 <PortConfig+0x1a8>)
 8001884:	4b4b      	ldr	r3, [pc, #300]	; (80019b4 <PortConfig+0x1a8>)
 8001886:	689b      	ldr	r3, [r3, #8]
 8001888:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
 800188c:	6093      	str	r3, [r2, #8]
 800188e:	4a49      	ldr	r2, [pc, #292]	; (80019b4 <PortConfig+0x1a8>)
 8001890:	4b48      	ldr	r3, [pc, #288]	; (80019b4 <PortConfig+0x1a8>)
 8001892:	68db      	ldr	r3, [r3, #12]
 8001894:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
 8001898:	60d3      	str	r3, [r2, #12]
 800189a:	4a46      	ldr	r2, [pc, #280]	; (80019b4 <PortConfig+0x1a8>)
 800189c:	4b45      	ldr	r3, [pc, #276]	; (80019b4 <PortConfig+0x1a8>)
 800189e:	699b      	ldr	r3, [r3, #24]
 80018a0:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
 80018a4:	6193      	str	r3, [r2, #24]
 80018a6:	4a43      	ldr	r2, [pc, #268]	; (80019b4 <PortConfig+0x1a8>)
 80018a8:	4b42      	ldr	r3, [pc, #264]	; (80019b4 <PortConfig+0x1a8>)
 80018aa:	685b      	ldr	r3, [r3, #4]
 80018ac:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80018b0:	6053      	str	r3, [r2, #4]
 80018b2:	4a40      	ldr	r2, [pc, #256]	; (80019b4 <PortConfig+0x1a8>)
 80018b4:	4b3f      	ldr	r3, [pc, #252]	; (80019b4 <PortConfig+0x1a8>)
 80018b6:	685b      	ldr	r3, [r3, #4]
 80018b8:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80018bc:	6053      	str	r3, [r2, #4]
 80018be:	4a3d      	ldr	r2, [pc, #244]	; (80019b4 <PortConfig+0x1a8>)
 80018c0:	4b3c      	ldr	r3, [pc, #240]	; (80019b4 <PortConfig+0x1a8>)
 80018c2:	689b      	ldr	r3, [r3, #8]
 80018c4:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
 80018c8:	6093      	str	r3, [r2, #8]
 80018ca:	4a3a      	ldr	r2, [pc, #232]	; (80019b4 <PortConfig+0x1a8>)
 80018cc:	4b39      	ldr	r3, [pc, #228]	; (80019b4 <PortConfig+0x1a8>)
 80018ce:	689b      	ldr	r3, [r3, #8]
 80018d0:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
 80018d4:	6093      	str	r3, [r2, #8]
 80018d6:	4a37      	ldr	r2, [pc, #220]	; (80019b4 <PortConfig+0x1a8>)
 80018d8:	4b36      	ldr	r3, [pc, #216]	; (80019b4 <PortConfig+0x1a8>)
 80018da:	68db      	ldr	r3, [r3, #12]
 80018dc:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 80018e0:	60d3      	str	r3, [r2, #12]
 80018e2:	4a34      	ldr	r2, [pc, #208]	; (80019b4 <PortConfig+0x1a8>)
 80018e4:	4b33      	ldr	r3, [pc, #204]	; (80019b4 <PortConfig+0x1a8>)
 80018e6:	68db      	ldr	r3, [r3, #12]
 80018e8:	f043 031f 	orr.w	r3, r3, #31
 80018ec:	60d3      	str	r3, [r2, #12]
 80018ee:	4a2f      	ldr	r2, [pc, #188]	; (80019ac <PortConfig+0x1a0>)
 80018f0:	4b2e      	ldr	r3, [pc, #184]	; (80019ac <PortConfig+0x1a0>)
 80018f2:	69db      	ldr	r3, [r3, #28]
 80018f4:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 80018f8:	61d3      	str	r3, [r2, #28]
 80018fa:	4b2f      	ldr	r3, [pc, #188]	; (80019b8 <PortConfig+0x1ac>)
 80018fc:	4a2f      	ldr	r2, [pc, #188]	; (80019bc <PortConfig+0x1b0>)
 80018fe:	609a      	str	r2, [r3, #8]
 8001900:	4b2d      	ldr	r3, [pc, #180]	; (80019b8 <PortConfig+0x1ac>)
 8001902:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8001906:	60da      	str	r2, [r3, #12]
 8001908:	4b2b      	ldr	r3, [pc, #172]	; (80019b8 <PortConfig+0x1ac>)
 800190a:	f04f 32ff 	mov.w	r2, #4294967295
 800190e:	619a      	str	r2, [r3, #24]
 8001910:	4b29      	ldr	r3, [pc, #164]	; (80019b8 <PortConfig+0x1ac>)
 8001912:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8001916:	605a      	str	r2, [r3, #4]
 8001918:	4a27      	ldr	r2, [pc, #156]	; (80019b8 <PortConfig+0x1ac>)
 800191a:	4b27      	ldr	r3, [pc, #156]	; (80019b8 <PortConfig+0x1ac>)
 800191c:	681b      	ldr	r3, [r3, #0]
 800191e:	f023 0303 	bic.w	r3, r3, #3
 8001922:	6013      	str	r3, [r2, #0]
 8001924:	4a24      	ldr	r2, [pc, #144]	; (80019b8 <PortConfig+0x1ac>)
 8001926:	4b24      	ldr	r3, [pc, #144]	; (80019b8 <PortConfig+0x1ac>)
 8001928:	681b      	ldr	r3, [r3, #0]
 800192a:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 800192e:	6013      	str	r3, [r2, #0]
 8001930:	4a1e      	ldr	r2, [pc, #120]	; (80019ac <PortConfig+0x1a0>)
 8001932:	4b1e      	ldr	r3, [pc, #120]	; (80019ac <PortConfig+0x1a0>)
 8001934:	69db      	ldr	r3, [r3, #28]
 8001936:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 800193a:	61d3      	str	r3, [r2, #28]
 800193c:	4b20      	ldr	r3, [pc, #128]	; (80019c0 <PortConfig+0x1b4>)
 800193e:	2200      	movs	r2, #0
 8001940:	609a      	str	r2, [r3, #8]
 8001942:	4a1f      	ldr	r2, [pc, #124]	; (80019c0 <PortConfig+0x1b4>)
 8001944:	4b1e      	ldr	r3, [pc, #120]	; (80019c0 <PortConfig+0x1b4>)
 8001946:	685b      	ldr	r3, [r3, #4]
 8001948:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 800194c:	6053      	str	r3, [r2, #4]
 800194e:	4a1c      	ldr	r2, [pc, #112]	; (80019c0 <PortConfig+0x1b4>)
 8001950:	4b1b      	ldr	r3, [pc, #108]	; (80019c0 <PortConfig+0x1b4>)
 8001952:	68db      	ldr	r3, [r3, #12]
 8001954:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 8001958:	60d3      	str	r3, [r2, #12]
 800195a:	4b19      	ldr	r3, [pc, #100]	; (80019c0 <PortConfig+0x1b4>)
 800195c:	f04f 32ff 	mov.w	r2, #4294967295
 8001960:	619a      	str	r2, [r3, #24]
 8001962:	4a17      	ldr	r2, [pc, #92]	; (80019c0 <PortConfig+0x1b4>)
 8001964:	4b16      	ldr	r3, [pc, #88]	; (80019c0 <PortConfig+0x1b4>)
 8001966:	681b      	ldr	r3, [r3, #0]
 8001968:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
 800196c:	6013      	str	r3, [r2, #0]
 800196e:	4a0f      	ldr	r2, [pc, #60]	; (80019ac <PortConfig+0x1a0>)
 8001970:	4b0e      	ldr	r3, [pc, #56]	; (80019ac <PortConfig+0x1a0>)
 8001972:	69db      	ldr	r3, [r3, #28]
 8001974:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 8001978:	61d3      	str	r3, [r2, #28]
 800197a:	4a12      	ldr	r2, [pc, #72]	; (80019c4 <PortConfig+0x1b8>)
 800197c:	4b11      	ldr	r3, [pc, #68]	; (80019c4 <PortConfig+0x1b8>)
 800197e:	68db      	ldr	r3, [r3, #12]
 8001980:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 8001984:	f023 0301 	bic.w	r3, r3, #1
 8001988:	60d3      	str	r3, [r2, #12]
 800198a:	4a08      	ldr	r2, [pc, #32]	; (80019ac <PortConfig+0x1a0>)
 800198c:	4b07      	ldr	r3, [pc, #28]	; (80019ac <PortConfig+0x1a0>)
 800198e:	69db      	ldr	r3, [r3, #28]
 8001990:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8001994:	61d3      	str	r3, [r2, #28]
 8001996:	4a0c      	ldr	r2, [pc, #48]	; (80019c8 <PortConfig+0x1bc>)
 8001998:	4b0b      	ldr	r3, [pc, #44]	; (80019c8 <PortConfig+0x1bc>)
 800199a:	68db      	ldr	r3, [r3, #12]
 800199c:	f423 7378 	bic.w	r3, r3, #992	; 0x3e0
 80019a0:	60d3      	str	r3, [r2, #12]
 80019a2:	bf00      	nop
 80019a4:	46bd      	mov	sp, r7
 80019a6:	bc80      	pop	{r7}
 80019a8:	4770      	bx	lr
 80019aa:	bf00      	nop
 80019ac:	40020000 	.word	0x40020000
 80019b0:	400a8000 	.word	0x400a8000
 80019b4:	400b0000 	.word	0x400b0000
 80019b8:	400b8000 	.word	0x400b8000
 80019bc:	000aaaa0 	.word	0x000aaaa0
 80019c0:	400e8000 	.word	0x400e8000
 80019c4:	400c8000 	.word	0x400c8000
 80019c8:	400c0000 	.word	0x400c0000

080019cc <ClkConfig>:
 80019cc:	b480      	push	{r7}
 80019ce:	af00      	add	r7, sp, #0
 80019d0:	4a16      	ldr	r2, [pc, #88]	; (8001a2c <ClkConfig+0x60>)
 80019d2:	4b16      	ldr	r3, [pc, #88]	; (8001a2c <ClkConfig+0x60>)
 80019d4:	689b      	ldr	r3, [r3, #8]
 80019d6:	f043 0301 	orr.w	r3, r3, #1
 80019da:	6093      	str	r3, [r2, #8]
 80019dc:	bf00      	nop
 80019de:	4b13      	ldr	r3, [pc, #76]	; (8001a2c <ClkConfig+0x60>)
 80019e0:	681b      	ldr	r3, [r3, #0]
 80019e2:	f003 0304 	and.w	r3, r3, #4
 80019e6:	2b00      	cmp	r3, #0
 80019e8:	d0f9      	beq.n	80019de <ClkConfig+0x12>
 80019ea:	4b10      	ldr	r3, [pc, #64]	; (8001a2c <ClkConfig+0x60>)
 80019ec:	2206      	movs	r2, #6
 80019ee:	60da      	str	r2, [r3, #12]
 80019f0:	4b0e      	ldr	r3, [pc, #56]	; (8001a2c <ClkConfig+0x60>)
 80019f2:	f640 1204 	movw	r2, #2308	; 0x904
 80019f6:	605a      	str	r2, [r3, #4]
 80019f8:	bf00      	nop
 80019fa:	4b0c      	ldr	r3, [pc, #48]	; (8001a2c <ClkConfig+0x60>)
 80019fc:	681b      	ldr	r3, [r3, #0]
 80019fe:	f003 0302 	and.w	r3, r3, #2
 8001a02:	2b00      	cmp	r3, #0
 8001a04:	d0f9      	beq.n	80019fa <ClkConfig+0x2e>
 8001a06:	4a09      	ldr	r2, [pc, #36]	; (8001a2c <ClkConfig+0x60>)
 8001a08:	4b08      	ldr	r3, [pc, #32]	; (8001a2c <ClkConfig+0x60>)
 8001a0a:	68db      	ldr	r3, [r3, #12]
 8001a0c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001a10:	60d3      	str	r3, [r2, #12]
 8001a12:	4a07      	ldr	r2, [pc, #28]	; (8001a30 <ClkConfig+0x64>)
 8001a14:	4b06      	ldr	r3, [pc, #24]	; (8001a30 <ClkConfig+0x64>)
 8001a16:	681b      	ldr	r3, [r3, #0]
 8001a18:	f043 0320 	orr.w	r3, r3, #32
 8001a1c:	6013      	str	r3, [r2, #0]
 8001a1e:	4b05      	ldr	r3, [pc, #20]	; (8001a34 <ClkConfig+0x68>)
 8001a20:	2200      	movs	r2, #0
 8001a22:	601a      	str	r2, [r3, #0]
 8001a24:	bf00      	nop
 8001a26:	46bd      	mov	sp, r7
 8001a28:	bc80      	pop	{r7}
 8001a2a:	4770      	bx	lr
 8001a2c:	40020000 	.word	0x40020000
 8001a30:	40018000 	.word	0x40018000
 8001a34:	200002f4 	.word	0x200002f4

08001a38 <TimerConfig>:
 8001a38:	b580      	push	{r7, lr}
 8001a3a:	af00      	add	r7, sp, #0
 8001a3c:	4a99      	ldr	r2, [pc, #612]	; (8001ca4 <TimerConfig+0x26c>)
 8001a3e:	4b99      	ldr	r3, [pc, #612]	; (8001ca4 <TimerConfig+0x26c>)
 8001a40:	69db      	ldr	r3, [r3, #28]
 8001a42:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8001a46:	61d3      	str	r3, [r2, #28]
 8001a48:	4a96      	ldr	r2, [pc, #600]	; (8001ca4 <TimerConfig+0x26c>)
 8001a4a:	4b96      	ldr	r3, [pc, #600]	; (8001ca4 <TimerConfig+0x26c>)
 8001a4c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001a4e:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8001a52:	6253      	str	r3, [r2, #36]	; 0x24
 8001a54:	4a93      	ldr	r2, [pc, #588]	; (8001ca4 <TimerConfig+0x26c>)
 8001a56:	4b93      	ldr	r3, [pc, #588]	; (8001ca4 <TimerConfig+0x26c>)
 8001a58:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001a5a:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8001a5e:	6253      	str	r3, [r2, #36]	; 0x24
 8001a60:	4b91      	ldr	r3, [pc, #580]	; (8001ca8 <TimerConfig+0x270>)
 8001a62:	2200      	movs	r2, #0
 8001a64:	601a      	str	r2, [r3, #0]
 8001a66:	4b90      	ldr	r3, [pc, #576]	; (8001ca8 <TimerConfig+0x270>)
 8001a68:	224f      	movs	r2, #79	; 0x4f
 8001a6a:	605a      	str	r2, [r3, #4]
 8001a6c:	4b8e      	ldr	r3, [pc, #568]	; (8001ca8 <TimerConfig+0x270>)
 8001a6e:	f240 32e7 	movw	r2, #999	; 0x3e7
 8001a72:	609a      	str	r2, [r3, #8]
 8001a74:	4a8c      	ldr	r2, [pc, #560]	; (8001ca8 <TimerConfig+0x270>)
 8001a76:	4b8c      	ldr	r3, [pc, #560]	; (8001ca8 <TimerConfig+0x270>)
 8001a78:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001a7a:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001a7e:	6253      	str	r3, [r2, #36]	; 0x24
 8001a80:	4a89      	ldr	r2, [pc, #548]	; (8001ca8 <TimerConfig+0x270>)
 8001a82:	4b89      	ldr	r3, [pc, #548]	; (8001ca8 <TimerConfig+0x270>)
 8001a84:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8001a86:	f043 0302 	orr.w	r3, r3, #2
 8001a8a:	6593      	str	r3, [r2, #88]	; 0x58
 8001a8c:	4b86      	ldr	r3, [pc, #536]	; (8001ca8 <TimerConfig+0x270>)
 8001a8e:	2201      	movs	r2, #1
 8001a90:	60da      	str	r2, [r3, #12]
 8001a92:	4a84      	ldr	r2, [pc, #528]	; (8001ca4 <TimerConfig+0x26c>)
 8001a94:	4b83      	ldr	r3, [pc, #524]	; (8001ca4 <TimerConfig+0x26c>)
 8001a96:	69db      	ldr	r3, [r3, #28]
 8001a98:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8001a9c:	61d3      	str	r3, [r2, #28]
 8001a9e:	4a81      	ldr	r2, [pc, #516]	; (8001ca4 <TimerConfig+0x26c>)
 8001aa0:	4b80      	ldr	r3, [pc, #512]	; (8001ca4 <TimerConfig+0x26c>)
 8001aa2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001aa4:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
 8001aa8:	6253      	str	r3, [r2, #36]	; 0x24
 8001aaa:	4a7e      	ldr	r2, [pc, #504]	; (8001ca4 <TimerConfig+0x26c>)
 8001aac:	4b7d      	ldr	r3, [pc, #500]	; (8001ca4 <TimerConfig+0x26c>)
 8001aae:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001ab0:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 8001ab4:	6253      	str	r3, [r2, #36]	; 0x24
 8001ab6:	4b7d      	ldr	r3, [pc, #500]	; (8001cac <TimerConfig+0x274>)
 8001ab8:	2200      	movs	r2, #0
 8001aba:	601a      	str	r2, [r3, #0]
 8001abc:	4b7b      	ldr	r3, [pc, #492]	; (8001cac <TimerConfig+0x274>)
 8001abe:	2202      	movs	r2, #2
 8001ac0:	605a      	str	r2, [r3, #4]
 8001ac2:	4b7a      	ldr	r3, [pc, #488]	; (8001cac <TimerConfig+0x274>)
 8001ac4:	f240 32ff 	movw	r2, #1023	; 0x3ff
 8001ac8:	609a      	str	r2, [r3, #8]
 8001aca:	4b78      	ldr	r3, [pc, #480]	; (8001cac <TimerConfig+0x274>)
 8001acc:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001ad0:	611a      	str	r2, [r3, #16]
 8001ad2:	4b76      	ldr	r3, [pc, #472]	; (8001cac <TimerConfig+0x274>)
 8001ad4:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001ad8:	615a      	str	r2, [r3, #20]
 8001ada:	4b74      	ldr	r3, [pc, #464]	; (8001cac <TimerConfig+0x274>)
 8001adc:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001ae0:	619a      	str	r2, [r3, #24]
 8001ae2:	4b72      	ldr	r3, [pc, #456]	; (8001cac <TimerConfig+0x274>)
 8001ae4:	22c8      	movs	r2, #200	; 0xc8
 8001ae6:	61da      	str	r2, [r3, #28]
 8001ae8:	4a70      	ldr	r2, [pc, #448]	; (8001cac <TimerConfig+0x274>)
 8001aea:	4b70      	ldr	r3, [pc, #448]	; (8001cac <TimerConfig+0x274>)
 8001aec:	6a1b      	ldr	r3, [r3, #32]
 8001aee:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 8001af2:	6213      	str	r3, [r2, #32]
 8001af4:	4a6d      	ldr	r2, [pc, #436]	; (8001cac <TimerConfig+0x274>)
 8001af6:	4b6d      	ldr	r3, [pc, #436]	; (8001cac <TimerConfig+0x274>)
 8001af8:	6a1b      	ldr	r3, [r3, #32]
 8001afa:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 8001afe:	6213      	str	r3, [r2, #32]
 8001b00:	4a6a      	ldr	r2, [pc, #424]	; (8001cac <TimerConfig+0x274>)
 8001b02:	4b6a      	ldr	r3, [pc, #424]	; (8001cac <TimerConfig+0x274>)
 8001b04:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b06:	f023 030f 	bic.w	r3, r3, #15
 8001b0a:	6313      	str	r3, [r2, #48]	; 0x30
 8001b0c:	4a67      	ldr	r2, [pc, #412]	; (8001cac <TimerConfig+0x274>)
 8001b0e:	4b67      	ldr	r3, [pc, #412]	; (8001cac <TimerConfig+0x274>)
 8001b10:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b12:	f043 030c 	orr.w	r3, r3, #12
 8001b16:	6313      	str	r3, [r2, #48]	; 0x30
 8001b18:	4a64      	ldr	r2, [pc, #400]	; (8001cac <TimerConfig+0x274>)
 8001b1a:	4b64      	ldr	r3, [pc, #400]	; (8001cac <TimerConfig+0x274>)
 8001b1c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b1e:	f043 0301 	orr.w	r3, r3, #1
 8001b22:	6313      	str	r3, [r2, #48]	; 0x30
 8001b24:	4a61      	ldr	r2, [pc, #388]	; (8001cac <TimerConfig+0x274>)
 8001b26:	4b61      	ldr	r3, [pc, #388]	; (8001cac <TimerConfig+0x274>)
 8001b28:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b2a:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8001b2e:	6313      	str	r3, [r2, #48]	; 0x30
 8001b30:	4a5e      	ldr	r2, [pc, #376]	; (8001cac <TimerConfig+0x274>)
 8001b32:	4b5e      	ldr	r3, [pc, #376]	; (8001cac <TimerConfig+0x274>)
 8001b34:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b36:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 8001b3a:	6313      	str	r3, [r2, #48]	; 0x30
 8001b3c:	4a5b      	ldr	r2, [pc, #364]	; (8001cac <TimerConfig+0x274>)
 8001b3e:	4b5b      	ldr	r3, [pc, #364]	; (8001cac <TimerConfig+0x274>)
 8001b40:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b42:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001b46:	6313      	str	r3, [r2, #48]	; 0x30
 8001b48:	4a58      	ldr	r2, [pc, #352]	; (8001cac <TimerConfig+0x274>)
 8001b4a:	4b58      	ldr	r3, [pc, #352]	; (8001cac <TimerConfig+0x274>)
 8001b4c:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 8001b4e:	f043 0308 	orr.w	r3, r3, #8
 8001b52:	6613      	str	r3, [r2, #96]	; 0x60
 8001b54:	4a55      	ldr	r2, [pc, #340]	; (8001cac <TimerConfig+0x274>)
 8001b56:	4b55      	ldr	r3, [pc, #340]	; (8001cac <TimerConfig+0x274>)
 8001b58:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001b5a:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 8001b5e:	6253      	str	r3, [r2, #36]	; 0x24
 8001b60:	4a52      	ldr	r2, [pc, #328]	; (8001cac <TimerConfig+0x274>)
 8001b62:	4b52      	ldr	r3, [pc, #328]	; (8001cac <TimerConfig+0x274>)
 8001b64:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001b66:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 8001b6a:	6253      	str	r3, [r2, #36]	; 0x24
 8001b6c:	4a4f      	ldr	r2, [pc, #316]	; (8001cac <TimerConfig+0x274>)
 8001b6e:	4b4f      	ldr	r3, [pc, #316]	; (8001cac <TimerConfig+0x274>)
 8001b70:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001b72:	f023 030f 	bic.w	r3, r3, #15
 8001b76:	6353      	str	r3, [r2, #52]	; 0x34
 8001b78:	4a4c      	ldr	r2, [pc, #304]	; (8001cac <TimerConfig+0x274>)
 8001b7a:	4b4c      	ldr	r3, [pc, #304]	; (8001cac <TimerConfig+0x274>)
 8001b7c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001b7e:	f043 030c 	orr.w	r3, r3, #12
 8001b82:	6353      	str	r3, [r2, #52]	; 0x34
 8001b84:	4a49      	ldr	r2, [pc, #292]	; (8001cac <TimerConfig+0x274>)
 8001b86:	4b49      	ldr	r3, [pc, #292]	; (8001cac <TimerConfig+0x274>)
 8001b88:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001b8a:	f043 0301 	orr.w	r3, r3, #1
 8001b8e:	6353      	str	r3, [r2, #52]	; 0x34
 8001b90:	4a46      	ldr	r2, [pc, #280]	; (8001cac <TimerConfig+0x274>)
 8001b92:	4b46      	ldr	r3, [pc, #280]	; (8001cac <TimerConfig+0x274>)
 8001b94:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001b96:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8001b9a:	6353      	str	r3, [r2, #52]	; 0x34
 8001b9c:	4a43      	ldr	r2, [pc, #268]	; (8001cac <TimerConfig+0x274>)
 8001b9e:	4b43      	ldr	r3, [pc, #268]	; (8001cac <TimerConfig+0x274>)
 8001ba0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001ba2:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 8001ba6:	6353      	str	r3, [r2, #52]	; 0x34
 8001ba8:	4a40      	ldr	r2, [pc, #256]	; (8001cac <TimerConfig+0x274>)
 8001baa:	4b40      	ldr	r3, [pc, #256]	; (8001cac <TimerConfig+0x274>)
 8001bac:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001bae:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001bb2:	6353      	str	r3, [r2, #52]	; 0x34
 8001bb4:	4a3d      	ldr	r2, [pc, #244]	; (8001cac <TimerConfig+0x274>)
 8001bb6:	4b3d      	ldr	r3, [pc, #244]	; (8001cac <TimerConfig+0x274>)
 8001bb8:	6e5b      	ldr	r3, [r3, #100]	; 0x64
 8001bba:	f043 0308 	orr.w	r3, r3, #8
 8001bbe:	6653      	str	r3, [r2, #100]	; 0x64
 8001bc0:	4a3a      	ldr	r2, [pc, #232]	; (8001cac <TimerConfig+0x274>)
 8001bc2:	4b3a      	ldr	r3, [pc, #232]	; (8001cac <TimerConfig+0x274>)
 8001bc4:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001bc6:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 8001bca:	6293      	str	r3, [r2, #40]	; 0x28
 8001bcc:	4a37      	ldr	r2, [pc, #220]	; (8001cac <TimerConfig+0x274>)
 8001bce:	4b37      	ldr	r3, [pc, #220]	; (8001cac <TimerConfig+0x274>)
 8001bd0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001bd2:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 8001bd6:	6293      	str	r3, [r2, #40]	; 0x28
 8001bd8:	4a34      	ldr	r2, [pc, #208]	; (8001cac <TimerConfig+0x274>)
 8001bda:	4b34      	ldr	r3, [pc, #208]	; (8001cac <TimerConfig+0x274>)
 8001bdc:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001bde:	f023 030f 	bic.w	r3, r3, #15
 8001be2:	6393      	str	r3, [r2, #56]	; 0x38
 8001be4:	4a31      	ldr	r2, [pc, #196]	; (8001cac <TimerConfig+0x274>)
 8001be6:	4b31      	ldr	r3, [pc, #196]	; (8001cac <TimerConfig+0x274>)
 8001be8:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001bea:	f043 030c 	orr.w	r3, r3, #12
 8001bee:	6393      	str	r3, [r2, #56]	; 0x38
 8001bf0:	4a2e      	ldr	r2, [pc, #184]	; (8001cac <TimerConfig+0x274>)
 8001bf2:	4b2e      	ldr	r3, [pc, #184]	; (8001cac <TimerConfig+0x274>)
 8001bf4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001bf6:	f043 0301 	orr.w	r3, r3, #1
 8001bfa:	6393      	str	r3, [r2, #56]	; 0x38
 8001bfc:	4a2b      	ldr	r2, [pc, #172]	; (8001cac <TimerConfig+0x274>)
 8001bfe:	4b2b      	ldr	r3, [pc, #172]	; (8001cac <TimerConfig+0x274>)
 8001c00:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001c02:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8001c06:	6393      	str	r3, [r2, #56]	; 0x38
 8001c08:	4a28      	ldr	r2, [pc, #160]	; (8001cac <TimerConfig+0x274>)
 8001c0a:	4b28      	ldr	r3, [pc, #160]	; (8001cac <TimerConfig+0x274>)
 8001c0c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001c0e:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 8001c12:	6393      	str	r3, [r2, #56]	; 0x38
 8001c14:	4a25      	ldr	r2, [pc, #148]	; (8001cac <TimerConfig+0x274>)
 8001c16:	4b25      	ldr	r3, [pc, #148]	; (8001cac <TimerConfig+0x274>)
 8001c18:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001c1a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001c1e:	6393      	str	r3, [r2, #56]	; 0x38
 8001c20:	4a22      	ldr	r2, [pc, #136]	; (8001cac <TimerConfig+0x274>)
 8001c22:	4b22      	ldr	r3, [pc, #136]	; (8001cac <TimerConfig+0x274>)
 8001c24:	6e9b      	ldr	r3, [r3, #104]	; 0x68
 8001c26:	f043 0308 	orr.w	r3, r3, #8
 8001c2a:	6693      	str	r3, [r2, #104]	; 0x68
 8001c2c:	4a1f      	ldr	r2, [pc, #124]	; (8001cac <TimerConfig+0x274>)
 8001c2e:	4b1f      	ldr	r3, [pc, #124]	; (8001cac <TimerConfig+0x274>)
 8001c30:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001c32:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 8001c36:	62d3      	str	r3, [r2, #44]	; 0x2c
 8001c38:	4a1c      	ldr	r2, [pc, #112]	; (8001cac <TimerConfig+0x274>)
 8001c3a:	4b1c      	ldr	r3, [pc, #112]	; (8001cac <TimerConfig+0x274>)
 8001c3c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001c3e:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 8001c42:	62d3      	str	r3, [r2, #44]	; 0x2c
 8001c44:	4a19      	ldr	r2, [pc, #100]	; (8001cac <TimerConfig+0x274>)
 8001c46:	4b19      	ldr	r3, [pc, #100]	; (8001cac <TimerConfig+0x274>)
 8001c48:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001c4a:	f023 030f 	bic.w	r3, r3, #15
 8001c4e:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001c50:	4a16      	ldr	r2, [pc, #88]	; (8001cac <TimerConfig+0x274>)
 8001c52:	4b16      	ldr	r3, [pc, #88]	; (8001cac <TimerConfig+0x274>)
 8001c54:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001c56:	f043 030c 	orr.w	r3, r3, #12
 8001c5a:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001c5c:	4a13      	ldr	r2, [pc, #76]	; (8001cac <TimerConfig+0x274>)
 8001c5e:	4b13      	ldr	r3, [pc, #76]	; (8001cac <TimerConfig+0x274>)
 8001c60:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001c62:	f043 0301 	orr.w	r3, r3, #1
 8001c66:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001c68:	4a10      	ldr	r2, [pc, #64]	; (8001cac <TimerConfig+0x274>)
 8001c6a:	4b10      	ldr	r3, [pc, #64]	; (8001cac <TimerConfig+0x274>)
 8001c6c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001c6e:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8001c72:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001c74:	4a0d      	ldr	r2, [pc, #52]	; (8001cac <TimerConfig+0x274>)
 8001c76:	4b0d      	ldr	r3, [pc, #52]	; (8001cac <TimerConfig+0x274>)
 8001c78:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001c7a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 8001c7e:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001c80:	4a0a      	ldr	r2, [pc, #40]	; (8001cac <TimerConfig+0x274>)
 8001c82:	4b0a      	ldr	r3, [pc, #40]	; (8001cac <TimerConfig+0x274>)
 8001c84:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001c86:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001c8a:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001c8c:	4a07      	ldr	r2, [pc, #28]	; (8001cac <TimerConfig+0x274>)
 8001c8e:	4b07      	ldr	r3, [pc, #28]	; (8001cac <TimerConfig+0x274>)
 8001c90:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 8001c92:	f043 0308 	orr.w	r3, r3, #8
 8001c96:	66d3      	str	r3, [r2, #108]	; 0x6c
 8001c98:	4a04      	ldr	r2, [pc, #16]	; (8001cac <TimerConfig+0x274>)
 8001c9a:	4b04      	ldr	r3, [pc, #16]	; (8001cac <TimerConfig+0x274>)
 8001c9c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001c9e:	f443 7370 	orr.w	r3, r3, #960	; 0x3c0
 8001ca2:	e005      	b.n	8001cb0 <TimerConfig+0x278>
 8001ca4:	40020000 	.word	0x40020000
 8001ca8:	40070000 	.word	0x40070000
 8001cac:	40080000 	.word	0x40080000
 8001cb0:	6413      	str	r3, [r2, #64]	; 0x40
 8001cb2:	4a10      	ldr	r2, [pc, #64]	; (8001cf4 <TimerConfig+0x2bc>)
 8001cb4:	4b0f      	ldr	r3, [pc, #60]	; (8001cf4 <TimerConfig+0x2bc>)
 8001cb6:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001cb8:	f443 7370 	orr.w	r3, r3, #960	; 0x3c0
 8001cbc:	6453      	str	r3, [r2, #68]	; 0x44
 8001cbe:	4a0d      	ldr	r2, [pc, #52]	; (8001cf4 <TimerConfig+0x2bc>)
 8001cc0:	4b0c      	ldr	r3, [pc, #48]	; (8001cf4 <TimerConfig+0x2bc>)
 8001cc2:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 8001cc4:	f443 7370 	orr.w	r3, r3, #960	; 0x3c0
 8001cc8:	6493      	str	r3, [r2, #72]	; 0x48
 8001cca:	4a0a      	ldr	r2, [pc, #40]	; (8001cf4 <TimerConfig+0x2bc>)
 8001ccc:	4b09      	ldr	r3, [pc, #36]	; (8001cf4 <TimerConfig+0x2bc>)
 8001cce:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8001cd0:	f443 7370 	orr.w	r3, r3, #960	; 0x3c0
 8001cd4:	64d3      	str	r3, [r2, #76]	; 0x4c
 8001cd6:	4a07      	ldr	r2, [pc, #28]	; (8001cf4 <TimerConfig+0x2bc>)
 8001cd8:	4b06      	ldr	r3, [pc, #24]	; (8001cf4 <TimerConfig+0x2bc>)
 8001cda:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8001cdc:	f043 0302 	orr.w	r3, r3, #2
 8001ce0:	6593      	str	r3, [r2, #88]	; 0x58
 8001ce2:	2010      	movs	r0, #16
 8001ce4:	f7ff fd7a 	bl	80017dc <NVIC_EnableIRQ>
 8001ce8:	4b02      	ldr	r3, [pc, #8]	; (8001cf4 <TimerConfig+0x2bc>)
 8001cea:	2201      	movs	r2, #1
 8001cec:	60da      	str	r2, [r3, #12]
 8001cee:	bf00      	nop
 8001cf0:	bd80      	pop	{r7, pc}
 8001cf2:	bf00      	nop
 8001cf4:	40080000 	.word	0x40080000

08001cf8 <uart_init>:
 8001cf8:	b480      	push	{r7}
 8001cfa:	af00      	add	r7, sp, #0
 8001cfc:	4b22      	ldr	r3, [pc, #136]	; (8001d88 <uart_init+0x90>)
 8001cfe:	2200      	movs	r2, #0
 8001d00:	601a      	str	r2, [r3, #0]
 8001d02:	4a22      	ldr	r2, [pc, #136]	; (8001d8c <uart_init+0x94>)
 8001d04:	4b21      	ldr	r3, [pc, #132]	; (8001d8c <uart_init+0x94>)
 8001d06:	69db      	ldr	r3, [r3, #28]
 8001d08:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001d0c:	61d3      	str	r3, [r2, #28]
 8001d0e:	4a1f      	ldr	r2, [pc, #124]	; (8001d8c <uart_init+0x94>)
 8001d10:	4b1e      	ldr	r3, [pc, #120]	; (8001d8c <uart_init+0x94>)
 8001d12:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001d14:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8001d18:	6293      	str	r3, [r2, #40]	; 0x28
 8001d1a:	4b1d      	ldr	r3, [pc, #116]	; (8001d90 <uart_init+0x98>)
 8001d1c:	2204      	movs	r2, #4
 8001d1e:	625a      	str	r2, [r3, #36]	; 0x24
 8001d20:	4b1b      	ldr	r3, [pc, #108]	; (8001d90 <uart_init+0x98>)
 8001d22:	2200      	movs	r2, #0
 8001d24:	629a      	str	r2, [r3, #40]	; 0x28
 8001d26:	4a1a      	ldr	r2, [pc, #104]	; (8001d90 <uart_init+0x98>)
 8001d28:	4b19      	ldr	r3, [pc, #100]	; (8001d90 <uart_init+0x98>)
 8001d2a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001d2c:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 8001d30:	6353      	str	r3, [r2, #52]	; 0x34
 8001d32:	4a17      	ldr	r2, [pc, #92]	; (8001d90 <uart_init+0x98>)
 8001d34:	4b16      	ldr	r3, [pc, #88]	; (8001d90 <uart_init+0x98>)
 8001d36:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001d38:	f043 0312 	orr.w	r3, r3, #18
 8001d3c:	6353      	str	r3, [r2, #52]	; 0x34
 8001d3e:	4a14      	ldr	r2, [pc, #80]	; (8001d90 <uart_init+0x98>)
 8001d40:	4b13      	ldr	r3, [pc, #76]	; (8001d90 <uart_init+0x98>)
 8001d42:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001d44:	f043 0310 	orr.w	r3, r3, #16
 8001d48:	62d3      	str	r3, [r2, #44]	; 0x2c
 8001d4a:	4a11      	ldr	r2, [pc, #68]	; (8001d90 <uart_init+0x98>)
 8001d4c:	4b10      	ldr	r3, [pc, #64]	; (8001d90 <uart_init+0x98>)
 8001d4e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001d50:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 8001d54:	62d3      	str	r3, [r2, #44]	; 0x2c
 8001d56:	4a0e      	ldr	r2, [pc, #56]	; (8001d90 <uart_init+0x98>)
 8001d58:	4b0d      	ldr	r3, [pc, #52]	; (8001d90 <uart_init+0x98>)
 8001d5a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001d5c:	f443 7340 	orr.w	r3, r3, #768	; 0x300
 8001d60:	f043 0301 	orr.w	r3, r3, #1
 8001d64:	6313      	str	r3, [r2, #48]	; 0x30
 8001d66:	4a0a      	ldr	r2, [pc, #40]	; (8001d90 <uart_init+0x98>)
 8001d68:	4b09      	ldr	r3, [pc, #36]	; (8001d90 <uart_init+0x98>)
 8001d6a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001d6c:	f043 0310 	orr.w	r3, r3, #16
 8001d70:	6393      	str	r3, [r2, #56]	; 0x38
 8001d72:	4a07      	ldr	r2, [pc, #28]	; (8001d90 <uart_init+0x98>)
 8001d74:	4b06      	ldr	r3, [pc, #24]	; (8001d90 <uart_init+0x98>)
 8001d76:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001d78:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001d7c:	6393      	str	r3, [r2, #56]	; 0x38
 8001d7e:	bf00      	nop
 8001d80:	46bd      	mov	sp, r7
 8001d82:	bc80      	pop	{r7}
 8001d84:	4770      	bx	lr
 8001d86:	bf00      	nop
 8001d88:	20000308 	.word	0x20000308
 8001d8c:	40020000 	.word	0x40020000
 8001d90:	40030000 	.word	0x40030000

08001d94 <system_init>:
 8001d94:	b580      	push	{r7, lr}
 8001d96:	af00      	add	r7, sp, #0
 8001d98:	f7ff fe18 	bl	80019cc <ClkConfig>
 8001d9c:	f7ff fd36 	bl	800180c <PortConfig>
 8001da0:	f7ff fe4a 	bl	8001a38 <TimerConfig>
 8001da4:	f7ff ffa8 	bl	8001cf8 <uart_init>
 8001da8:	bf00      	nop
 8001daa:	bd80      	pop	{r7, pc}

08001dac <SysTick_Handler>:
 8001dac:	b480      	push	{r7}
 8001dae:	af00      	add	r7, sp, #0
 8001db0:	4b04      	ldr	r3, [pc, #16]	; (8001dc4 <SysTick_Handler+0x18>)
 8001db2:	681b      	ldr	r3, [r3, #0]
 8001db4:	3301      	adds	r3, #1
 8001db6:	4a03      	ldr	r2, [pc, #12]	; (8001dc4 <SysTick_Handler+0x18>)
 8001db8:	6013      	str	r3, [r2, #0]
 8001dba:	bf00      	nop
 8001dbc:	46bd      	mov	sp, r7
 8001dbe:	bc80      	pop	{r7}
 8001dc0:	4770      	bx	lr
 8001dc2:	bf00      	nop
 8001dc4:	200002f4 	.word	0x200002f4

08001dc8 <handler_reset>:
 8001dc8:	b580      	push	{r7, lr}
 8001dca:	b082      	sub	sp, #8
 8001dcc:	af00      	add	r7, sp, #0
 8001dce:	4b11      	ldr	r3, [pc, #68]	; (8001e14 <handler_reset+0x4c>)
 8001dd0:	607b      	str	r3, [r7, #4]
 8001dd2:	4b11      	ldr	r3, [pc, #68]	; (8001e18 <handler_reset+0x50>)
 8001dd4:	603b      	str	r3, [r7, #0]
 8001dd6:	e007      	b.n	8001de8 <handler_reset+0x20>
 8001dd8:	683b      	ldr	r3, [r7, #0]
 8001dda:	1d1a      	adds	r2, r3, #4
 8001ddc:	603a      	str	r2, [r7, #0]
 8001dde:	687a      	ldr	r2, [r7, #4]
 8001de0:	1d11      	adds	r1, r2, #4
 8001de2:	6079      	str	r1, [r7, #4]
 8001de4:	6812      	ldr	r2, [r2, #0]
 8001de6:	601a      	str	r2, [r3, #0]
 8001de8:	683b      	ldr	r3, [r7, #0]
 8001dea:	4a0c      	ldr	r2, [pc, #48]	; (8001e1c <handler_reset+0x54>)
 8001dec:	4293      	cmp	r3, r2
 8001dee:	d3f3      	bcc.n	8001dd8 <handler_reset+0x10>
 8001df0:	4b0b      	ldr	r3, [pc, #44]	; (8001e20 <handler_reset+0x58>)
 8001df2:	603b      	str	r3, [r7, #0]
 8001df4:	e004      	b.n	8001e00 <handler_reset+0x38>
 8001df6:	683b      	ldr	r3, [r7, #0]
 8001df8:	1d1a      	adds	r2, r3, #4
 8001dfa:	603a      	str	r2, [r7, #0]
 8001dfc:	2200      	movs	r2, #0
 8001dfe:	601a      	str	r2, [r3, #0]
 8001e00:	683b      	ldr	r3, [r7, #0]
 8001e02:	4a08      	ldr	r2, [pc, #32]	; (8001e24 <handler_reset+0x5c>)
 8001e04:	4293      	cmp	r3, r2
 8001e06:	d3f6      	bcc.n	8001df6 <handler_reset+0x2e>
 8001e08:	f7fe fe22 	bl	8000a50 <main>
 8001e0c:	bf00      	nop
 8001e0e:	3708      	adds	r7, #8
 8001e10:	46bd      	mov	sp, r7
 8001e12:	bd80      	pop	{r7, pc}
 8001e14:	08002e70 	.word	0x08002e70
 8001e18:	20000000 	.word	0x20000000
 8001e1c:	20000000 	.word	0x20000000
 8001e20:	20000220 	.word	0x20000220
 8001e24:	2000030c 	.word	0x2000030c

08001e28 <default_handler>:
 8001e28:	b480      	push	{r7}
 8001e2a:	af00      	add	r7, sp, #0
 8001e2c:	e7fe      	b.n	8001e2c <default_handler+0x4>
 8001e2e:	bf00      	nop
 8001e30:	00000080 	.word	0x00000080
 8001e34:	0000004c 	.word	0x0000004c
 8001e38:	00000028 	.word	0x00000028
 8001e3c:	00000014 	.word	0x00000014
 8001e40:	0000000a 	.word	0x0000000a
 8001e44:	00000005 	.word	0x00000005
 8001e48:	00000003 	.word	0x00000003
 8001e4c:	00000001 	.word	0x00000001
 8001e50:	000002d4 	.word	0x000002d4
 8001e54:	00000288 	.word	0x00000288
 8001e58:	00000274 	.word	0x00000274
 8001e5c:	0000026f 	.word	0x0000026f
 8001e60:	0000026f 	.word	0x0000026f
 8001e64:	0000026e 	.word	0x0000026e
 8001e68:	0000026e 	.word	0x0000026e
 8001e6c:	0000026e 	.word	0x0000026e

08001e70 <cos_tb>:
 8001e70:	00000400 00000400 00000400 00000400     ................
 8001e80:	00000400 00000400 000003ff 000003ff     ................
 8001e90:	000003ff 000003fe 000003fe 000003fe     ................
 8001ea0:	000003fd 000003fd 000003fc 000003fc     ................
 8001eb0:	000003fb 000003fa 000003fa 000003f9     ................
 8001ec0:	000003f8 000003f8 000003f7 000003f6     ................
 8001ed0:	000003f5 000003f4 000003f3 000003f2     ................
 8001ee0:	000003f1 000003f0 000003ef 000003ee     ................
 8001ef0:	000003ec 000003eb 000003ea 000003e8     ................
 8001f00:	000003e7 000003e6 000003e4 000003e3     ................
 8001f10:	000003e1 000003e0 000003de 000003dd     ................
 8001f20:	000003db 000003d9 000003d7 000003d6     ................
 8001f30:	000003d4 000003d2 000003d0 000003ce     ................
 8001f40:	000003cc 000003ca 000003c8 000003c6     ................
 8001f50:	000003c4 000003c2 000003c0 000003be     ................
 8001f60:	000003bb 000003b9 000003b7 000003b4     ................
 8001f70:	000003b2 000003b0 000003ad 000003ab     ................
 8001f80:	000003a8 000003a6 000003a3 000003a0     ................
 8001f90:	0000039e 0000039b 00000398 00000395     ................
 8001fa0:	00000393 00000390 0000038d 0000038a     ................
 8001fb0:	00000387 00000384 00000381 0000037e     ............~...
 8001fc0:	0000037b 00000378 00000375 00000372     {...x...u...r...
 8001fd0:	0000036e 0000036b 00000368 00000364     n...k...h...d...
 8001fe0:	00000361 0000035e 0000035a 00000357     a...^...Z...W...
 8001ff0:	00000353 00000350 0000034c 00000349     S...P...L...I...
 8002000:	00000345 00000342 0000033e 0000033a     E...B...>...:...
 8002010:	00000336 00000333 0000032f 0000032b     6...3.../...+...
 8002020:	00000327 00000323 0000031f 0000031c     '...#...........
 8002030:	00000318 00000314 00000310 0000030b     ................
 8002040:	00000307 00000303 000002ff 000002fb     ................
 8002050:	000002f7 000002f3 000002ee 000002ea     ................
 8002060:	000002e6 000002e1 000002dd 000002d9     ................
 8002070:	000002d4 000002d0 000002cb 000002c7     ................
 8002080:	000002c2 000002be 000002b9 000002b4     ................
 8002090:	000002b0 000002ab 000002a6 000002a2     ................
 80020a0:	0000029d 00000298 00000293 0000028e     ................
 80020b0:	0000028a 00000285 00000280 0000027b     ............{...
 80020c0:	00000276 00000271 0000026c 00000267     v...q...l...g...
 80020d0:	00000262 0000025d 00000258 00000253     b...]...X...S...
 80020e0:	0000024e 00000248 00000243 0000023e     N...H...C...>...
 80020f0:	00000239 00000234 0000022e 00000229     9...4.......)...
 8002100:	00000224 0000021f 00000219 00000214     $...............
 8002110:	0000020e 00000209 00000204 000001fe     ................
 8002120:	000001f9 000001f3 000001ee 000001e8     ................
 8002130:	000001e3 000001dd 000001d8 000001d2     ................
 8002140:	000001cc 000001c7 000001c1 000001bb     ................
 8002150:	000001b6 000001b0 000001aa 000001a5     ................
 8002160:	0000019f 00000199 00000193 0000018e     ................
 8002170:	00000188 00000182 0000017c 00000176     ........|...v...
 8002180:	00000171 0000016b 00000165 0000015f     q...k...e..._...
 8002190:	00000159 00000153 0000014d 00000147     Y...S...M...G...
 80021a0:	00000141 0000013b 00000135 0000012f     A...;...5.../...
 80021b0:	00000129 00000123 0000011d 00000117     )...#...........
 80021c0:	00000111 0000010b 00000105 000000ff     ................
 80021d0:	000000f9 000000f3 000000ed 000000e6     ................
 80021e0:	000000e0 000000da 000000d4 000000ce     ................
 80021f0:	000000c8 000000c2 000000bb 000000b5     ................
 8002200:	000000af 000000a9 000000a3 0000009c     ................
 8002210:	00000096 00000090 0000008a 00000084     ................
 8002220:	0000007d 00000077 00000071 0000006b     }...w...q...k...
 8002230:	00000064 0000005e 00000058 00000052     d...^...X...R...
 8002240:	0000004b 00000045 0000003f 00000039     K...E...?...9...
 8002250:	00000032 0000002c 00000026 0000001f     2...,...&.......
 8002260:	00000019 00000013 0000000d 00000006     ................
 8002270:	00000000 fffffffa fffffff3 ffffffed     ................
 8002280:	ffffffe7 ffffffe1 ffffffda ffffffd4     ................
 8002290:	ffffffce ffffffc7 ffffffc1 ffffffbb     ................
 80022a0:	ffffffb5 ffffffae ffffffa8 ffffffa2     ................
 80022b0:	ffffff9c ffffff95 ffffff8f ffffff89     ................
 80022c0:	ffffff83 ffffff7c ffffff76 ffffff70     ....|...v...p...
 80022d0:	ffffff6a ffffff64 ffffff5d ffffff57     j...d...]...W...
 80022e0:	ffffff51 ffffff4b ffffff45 ffffff3e     Q...K...E...>...
 80022f0:	ffffff38 ffffff32 ffffff2c ffffff26     8...2...,...&...
 8002300:	ffffff20 ffffff1a ffffff13 ffffff0d      ...............
 8002310:	ffffff07 ffffff01 fffffefb fffffef5     ................
 8002320:	fffffeef fffffee9 fffffee3 fffffedd     ................
 8002330:	fffffed7 fffffed1 fffffecb fffffec5     ................
 8002340:	fffffebf fffffeb9 fffffeb3 fffffead     ................
 8002350:	fffffea7 fffffea1 fffffe9b fffffe95     ................
 8002360:	fffffe8f fffffe8a fffffe84 fffffe7e     ............~...
 8002370:	fffffe78 fffffe72 fffffe6d fffffe67     x...r...m...g...
 8002380:	fffffe61 fffffe5b fffffe56 fffffe50     a...[...V...P...
 8002390:	fffffe4a fffffe45 fffffe3f fffffe39     J...E...?...9...
 80023a0:	fffffe34 fffffe2e fffffe28 fffffe23     4.......(...#...
 80023b0:	fffffe1d fffffe18 fffffe12 fffffe0d     ................
 80023c0:	fffffe07 fffffe02 fffffdfc fffffdf7     ................
 80023d0:	fffffdf2 fffffdec fffffde7 fffffde1     ................
 80023e0:	fffffddc fffffdd7 fffffdd2 fffffdcc     ................
 80023f0:	fffffdc7 fffffdc2 fffffdbd fffffdb8     ................
 8002400:	fffffdb2 fffffdad fffffda8 fffffda3     ................
 8002410:	fffffd9e fffffd99 fffffd94 fffffd8f     ................
 8002420:	fffffd8a fffffd85 fffffd80 fffffd7b     ............{...
 8002430:	fffffd76 fffffd72 fffffd6d fffffd68     v...r...m...h...
 8002440:	fffffd63 fffffd5e fffffd5a fffffd55     c...^...Z...U...
 8002450:	fffffd50 fffffd4c fffffd47 fffffd42     P...L...G...B...
 8002460:	fffffd3e fffffd39 fffffd35 fffffd30     >...9...5...0...
 8002470:	fffffd2c fffffd27 fffffd23 fffffd1f     ,...'...#.......
 8002480:	fffffd1a fffffd16 fffffd12 fffffd0d     ................
 8002490:	fffffd09 fffffd05 fffffd01 fffffcfd     ................
 80024a0:	fffffcf9 fffffcf5 fffffcf0 fffffcec     ................
 80024b0:	fffffce8 fffffce4 fffffce1 fffffcdd     ................
 80024c0:	fffffcd9 fffffcd5 fffffcd1 fffffccd     ................
 80024d0:	fffffcca fffffcc6 fffffcc2 fffffcbe     ................
 80024e0:	fffffcbb fffffcb7 fffffcb4 fffffcb0     ................
 80024f0:	fffffcad fffffca9 fffffca6 fffffca2     ................
 8002500:	fffffc9f fffffc9c fffffc98 fffffc95     ................
 8002510:	fffffc92 fffffc8e fffffc8b fffffc88     ................
 8002520:	fffffc85 fffffc82 fffffc7f fffffc7c     ............|...
 8002530:	fffffc79 fffffc76 fffffc73 fffffc70     y...v...s...p...
 8002540:	fffffc6d fffffc6b fffffc68 fffffc65     m...k...h...e...
 8002550:	fffffc62 fffffc60 fffffc5d fffffc5a     b...`...]...Z...
 8002560:	fffffc58 fffffc55 fffffc53 fffffc50     X...U...S...P...
 8002570:	fffffc4e fffffc4c fffffc49 fffffc47     N...L...I...G...
 8002580:	fffffc45 fffffc42 fffffc40 fffffc3e     E...B...@...>...
 8002590:	fffffc3c fffffc3a fffffc38 fffffc36     <...:...8...6...
 80025a0:	fffffc34 fffffc32 fffffc30 fffffc2e     4...2...0.......
 80025b0:	fffffc2c fffffc2a fffffc29 fffffc27     ,...*...)...'...
 80025c0:	fffffc25 fffffc23 fffffc22 fffffc20     %...#..."... ...
 80025d0:	fffffc1f fffffc1d fffffc1c fffffc1a     ................
 80025e0:	fffffc19 fffffc18 fffffc16 fffffc15     ................
 80025f0:	fffffc14 fffffc12 fffffc11 fffffc10     ................
 8002600:	fffffc0f fffffc0e fffffc0d fffffc0c     ................
 8002610:	fffffc0b fffffc0a fffffc09 fffffc08     ................
 8002620:	fffffc08 fffffc07 fffffc06 fffffc06     ................
 8002630:	fffffc05 fffffc04 fffffc04 fffffc03     ................
 8002640:	fffffc03 fffffc02 fffffc02 fffffc02     ................
 8002650:	fffffc01 fffffc01 fffffc01 fffffc00     ................
 8002660:	fffffc00 fffffc00 fffffc00 fffffc00     ................
 8002670:	fffffc00 fffffc00 fffffc00 fffffc00     ................
 8002680:	fffffc00 fffffc00 fffffc01 fffffc01     ................
 8002690:	fffffc01 fffffc02 fffffc02 fffffc02     ................
 80026a0:	fffffc03 fffffc03 fffffc04 fffffc04     ................
 80026b0:	fffffc05 fffffc06 fffffc06 fffffc07     ................
 80026c0:	fffffc08 fffffc08 fffffc09 fffffc0a     ................
 80026d0:	fffffc0b fffffc0c fffffc0d fffffc0e     ................
 80026e0:	fffffc0f fffffc10 fffffc11 fffffc12     ................
 80026f0:	fffffc14 fffffc15 fffffc16 fffffc18     ................
 8002700:	fffffc19 fffffc1a fffffc1c fffffc1d     ................
 8002710:	fffffc1f fffffc20 fffffc22 fffffc23     .... ..."...#...
 8002720:	fffffc25 fffffc27 fffffc29 fffffc2a     %...'...)...*...
 8002730:	fffffc2c fffffc2e fffffc30 fffffc32     ,.......0...2...
 8002740:	fffffc34 fffffc36 fffffc38 fffffc3a     4...6...8...:...
 8002750:	fffffc3c fffffc3e fffffc40 fffffc42     <...>...@...B...
 8002760:	fffffc45 fffffc47 fffffc49 fffffc4c     E...G...I...L...
 8002770:	fffffc4e fffffc50 fffffc53 fffffc55     N...P...S...U...
 8002780:	fffffc58 fffffc5a fffffc5d fffffc60     X...Z...]...`...
 8002790:	fffffc62 fffffc65 fffffc68 fffffc6b     b...e...h...k...
 80027a0:	fffffc6d fffffc70 fffffc73 fffffc76     m...p...s...v...
 80027b0:	fffffc79 fffffc7c fffffc7f fffffc82     y...|...........
 80027c0:	fffffc85 fffffc88 fffffc8b fffffc8e     ................
 80027d0:	fffffc92 fffffc95 fffffc98 fffffc9c     ................
 80027e0:	fffffc9f fffffca2 fffffca6 fffffca9     ................
 80027f0:	fffffcad fffffcb0 fffffcb4 fffffcb7     ................
 8002800:	fffffcbb fffffcbe fffffcc2 fffffcc6     ................
 8002810:	fffffcca fffffccd fffffcd1 fffffcd5     ................
 8002820:	fffffcd9 fffffcdd fffffce1 fffffce4     ................
 8002830:	fffffce8 fffffcec fffffcf0 fffffcf5     ................
 8002840:	fffffcf9 fffffcfd fffffd01 fffffd05     ................
 8002850:	fffffd09 fffffd0d fffffd12 fffffd16     ................
 8002860:	fffffd1a fffffd1f fffffd23 fffffd27     ........#...'...
 8002870:	fffffd2c fffffd30 fffffd35 fffffd39     ,...0...5...9...
 8002880:	fffffd3e fffffd42 fffffd47 fffffd4c     >...B...G...L...
 8002890:	fffffd50 fffffd55 fffffd5a fffffd5e     P...U...Z...^...
 80028a0:	fffffd63 fffffd68 fffffd6d fffffd72     c...h...m...r...
 80028b0:	fffffd76 fffffd7b fffffd80 fffffd85     v...{...........
 80028c0:	fffffd8a fffffd8f fffffd94 fffffd99     ................
 80028d0:	fffffd9e fffffda3 fffffda8 fffffdad     ................
 80028e0:	fffffdb2 fffffdb8 fffffdbd fffffdc2     ................
 80028f0:	fffffdc7 fffffdcc fffffdd2 fffffdd7     ................
 8002900:	fffffddc fffffde1 fffffde7 fffffdec     ................
 8002910:	fffffdf2 fffffdf7 fffffdfc fffffe02     ................
 8002920:	fffffe07 fffffe0d fffffe12 fffffe18     ................
 8002930:	fffffe1d fffffe23 fffffe28 fffffe2e     ....#...(.......
 8002940:	fffffe34 fffffe39 fffffe3f fffffe45     4...9...?...E...
 8002950:	fffffe4a fffffe50 fffffe56 fffffe5b     J...P...V...[...
 8002960:	fffffe61 fffffe67 fffffe6d fffffe72     a...g...m...r...
 8002970:	fffffe78 fffffe7e fffffe84 fffffe8a     x...~...........
 8002980:	fffffe8f fffffe95 fffffe9b fffffea1     ................
 8002990:	fffffea7 fffffead fffffeb3 fffffeb9     ................
 80029a0:	fffffebf fffffec5 fffffecb fffffed1     ................
 80029b0:	fffffed7 fffffedd fffffee3 fffffee9     ................
 80029c0:	fffffeef fffffef5 fffffefb ffffff01     ................
 80029d0:	ffffff07 ffffff0d ffffff13 ffffff1a     ................
 80029e0:	ffffff20 ffffff26 ffffff2c ffffff32      ...&...,...2...
 80029f0:	ffffff38 ffffff3e ffffff45 ffffff4b     8...>...E...K...
 8002a00:	ffffff51 ffffff57 ffffff5d ffffff64     Q...W...]...d...
 8002a10:	ffffff6a ffffff70 ffffff76 ffffff7c     j...p...v...|...
 8002a20:	ffffff83 ffffff89 ffffff8f ffffff95     ................
 8002a30:	ffffff9c ffffffa2 ffffffa8 ffffffae     ................
 8002a40:	ffffffb5 ffffffbb ffffffc1 ffffffc7     ................
 8002a50:	ffffffce ffffffd4 ffffffda ffffffe1     ................
 8002a60:	ffffffe7 ffffffed fffffff3 fffffffa     ................
 8002a70:	00000000 00000006 0000000d 00000013     ................
 8002a80:	00000019 0000001f 00000026 0000002c     ........&...,...
 8002a90:	00000032 00000039 0000003f 00000045     2...9...?...E...
 8002aa0:	0000004b 00000052 00000058 0000005e     K...R...X...^...
 8002ab0:	00000064 0000006b 00000071 00000077     d...k...q...w...
 8002ac0:	0000007d 00000084 0000008a 00000090     }...............
 8002ad0:	00000096 0000009c 000000a3 000000a9     ................
 8002ae0:	000000af 000000b5 000000bb 000000c2     ................
 8002af0:	000000c8 000000ce 000000d4 000000da     ................
 8002b00:	000000e0 000000e6 000000ed 000000f3     ................
 8002b10:	000000f9 000000ff 00000105 0000010b     ................
 8002b20:	00000111 00000117 0000011d 00000123     ............#...
 8002b30:	00000129 0000012f 00000135 0000013b     ).../...5...;...
 8002b40:	00000141 00000147 0000014d 00000153     A...G...M...S...
 8002b50:	00000159 0000015f 00000165 0000016b     Y..._...e...k...
 8002b60:	00000171 00000176 0000017c 00000182     q...v...|.......
 8002b70:	00000188 0000018e 00000193 00000199     ................
 8002b80:	0000019f 000001a5 000001aa 000001b0     ................
 8002b90:	000001b6 000001bb 000001c1 000001c7     ................
 8002ba0:	000001cc 000001d2 000001d8 000001dd     ................
 8002bb0:	000001e3 000001e8 000001ee 000001f3     ................
 8002bc0:	000001f9 000001fe 00000204 00000209     ................
 8002bd0:	0000020e 00000214 00000219 0000021f     ................
 8002be0:	00000224 00000229 0000022e 00000234     $...).......4...
 8002bf0:	00000239 0000023e 00000243 00000248     9...>...C...H...
 8002c00:	0000024e 00000253 00000258 0000025d     N...S...X...]...
 8002c10:	00000262 00000267 0000026c 00000271     b...g...l...q...
 8002c20:	00000276 0000027b 00000280 00000285     v...{...........
 8002c30:	0000028a 0000028e 00000293 00000298     ................
 8002c40:	0000029d 000002a2 000002a6 000002ab     ................
 8002c50:	000002b0 000002b4 000002b9 000002be     ................
 8002c60:	000002c2 000002c7 000002cb 000002d0     ................
 8002c70:	000002d4 000002d9 000002dd 000002e1     ................
 8002c80:	000002e6 000002ea 000002ee 000002f3     ................
 8002c90:	000002f7 000002fb 000002ff 00000303     ................
 8002ca0:	00000307 0000030b 00000310 00000314     ................
 8002cb0:	00000318 0000031c 0000031f 00000323     ............#...
 8002cc0:	00000327 0000032b 0000032f 00000333     '...+.../...3...
 8002cd0:	00000336 0000033a 0000033e 00000342     6...:...>...B...
 8002ce0:	00000345 00000349 0000034c 00000350     E...I...L...P...
 8002cf0:	00000353 00000357 0000035a 0000035e     S...W...Z...^...
 8002d00:	00000361 00000364 00000368 0000036b     a...d...h...k...
 8002d10:	0000036e 00000372 00000375 00000378     n...r...u...x...
 8002d20:	0000037b 0000037e 00000381 00000384     {...~...........
 8002d30:	00000387 0000038a 0000038d 00000390     ................
 8002d40:	00000393 00000395 00000398 0000039b     ................
 8002d50:	0000039e 000003a0 000003a3 000003a6     ................
 8002d60:	000003a8 000003ab 000003ad 000003b0     ................
 8002d70:	000003b2 000003b4 000003b7 000003b9     ................
 8002d80:	000003bb 000003be 000003c0 000003c2     ................
 8002d90:	000003c4 000003c6 000003c8 000003ca     ................
 8002da0:	000003cc 000003ce 000003d0 000003d2     ................
 8002db0:	000003d4 000003d6 000003d7 000003d9     ................
 8002dc0:	000003db 000003dd 000003de 000003e0     ................
 8002dd0:	000003e1 000003e3 000003e4 000003e6     ................
 8002de0:	000003e7 000003e8 000003ea 000003eb     ................
 8002df0:	000003ec 000003ee 000003ef 000003f0     ................
 8002e00:	000003f1 000003f2 000003f3 000003f4     ................
 8002e10:	000003f5 000003f6 000003f7 000003f8     ................
 8002e20:	000003f8 000003f9 000003fa 000003fa     ................
 8002e30:	000003fb 000003fc 000003fc 000003fd     ................
 8002e40:	000003fd 000003fe 000003fe 000003fe     ................
 8002e50:	000003ff 000003ff 000003ff 00000400     ................
 8002e60:	00000400 00000400 00000400 00000400     ................
