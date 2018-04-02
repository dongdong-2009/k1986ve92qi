
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 cd 17 00 08 2d 18 00 08 2d 18 00 08     ... ....-...-...
 8000010:	2d 18 00 08 2d 18 00 08 2d 18 00 08 00 00 00 00     -...-...-.......
	...
 800002c:	2d 18 00 08 2d 18 00 08 00 00 00 00 2d 18 00 08     -...-.......-...
 800003c:	2d 17 00 08 2d 18 00 08 2d 18 00 08 2d 18 00 08     -...-...-...-...
	...
 8000054:	2d 18 00 08 49 17 00 08 2d 18 00 08 2d 18 00 08     -...I...-...-...
 8000064:	00 00 00 00 2d 18 00 08 2d 18 00 08 2d 18 00 08     ....-...-...-...
 8000074:	00 00 00 00 3d 02 00 08 2d 18 00 08 55 02 00 08     ....=...-...U...
 8000084:	2d 18 00 08 00 00 00 00 2d 18 00 08 2d 18 00 08     -.......-...-...
	...
 80000ac:	2d 18 00 08 2d 18 00 08 2d 18 00 08 2d 18 00 08     -...-...-...-...
 80000bc:	2d 18 00 08                                         -...

080000c0 <debug_signal>:
 80000c0:	b480      	push	{r7}
 80000c2:	b083      	sub	sp, #12
 80000c4:	af00      	add	r7, sp, #0
 80000c6:	6078      	str	r0, [r7, #4]
 80000c8:	4a04      	ldr	r2, [pc, #16]	; (80000dc <debug_signal+0x1c>)
 80000ca:	687b      	ldr	r3, [r7, #4]
 80000cc:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80000d0:	6093      	str	r3, [r2, #8]
 80000d2:	bf00      	nop
 80000d4:	370c      	adds	r7, #12
 80000d6:	46bd      	mov	sp, r7
 80000d8:	bc80      	pop	{r7}
 80000da:	4770      	bx	lr
 80000dc:	40090000 	.word	0x40090000

080000e0 <sleep>:
 80000e0:	b480      	push	{r7}
 80000e2:	b085      	sub	sp, #20
 80000e4:	af00      	add	r7, sp, #0
 80000e6:	6078      	str	r0, [r7, #4]
 80000e8:	4b08      	ldr	r3, [pc, #32]	; (800010c <sleep+0x2c>)
 80000ea:	681a      	ldr	r2, [r3, #0]
 80000ec:	687b      	ldr	r3, [r7, #4]
 80000ee:	4413      	add	r3, r2
 80000f0:	60fb      	str	r3, [r7, #12]
 80000f2:	bf00      	nop
 80000f4:	4b05      	ldr	r3, [pc, #20]	; (800010c <sleep+0x2c>)
 80000f6:	681a      	ldr	r2, [r3, #0]
 80000f8:	68fb      	ldr	r3, [r7, #12]
 80000fa:	429a      	cmp	r2, r3
 80000fc:	d3fa      	bcc.n	80000f4 <sleep+0x14>
 80000fe:	bf00      	nop
 8000100:	4618      	mov	r0, r3
 8000102:	3714      	adds	r7, #20
 8000104:	46bd      	mov	sp, r7
 8000106:	bc80      	pop	{r7}
 8000108:	4770      	bx	lr
 800010a:	bf00      	nop
 800010c:	2000128c 	.word	0x2000128c

08000110 <ssi_init>:
 8000110:	b480      	push	{r7}
 8000112:	af00      	add	r7, sp, #0
 8000114:	4a0c      	ldr	r2, [pc, #48]	; (8000148 <ssi_init+0x38>)
 8000116:	4b0c      	ldr	r3, [pc, #48]	; (8000148 <ssi_init+0x38>)
 8000118:	69db      	ldr	r3, [r3, #28]
 800011a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800011e:	61d3      	str	r3, [r2, #28]
 8000120:	4b09      	ldr	r3, [pc, #36]	; (8000148 <ssi_init+0x38>)
 8000122:	4a0a      	ldr	r2, [pc, #40]	; (800014c <ssi_init+0x3c>)
 8000124:	62da      	str	r2, [r3, #44]	; 0x2c
 8000126:	4b0a      	ldr	r3, [pc, #40]	; (8000150 <ssi_init+0x40>)
 8000128:	2200      	movs	r2, #0
 800012a:	605a      	str	r2, [r3, #4]
 800012c:	4b08      	ldr	r3, [pc, #32]	; (8000150 <ssi_init+0x40>)
 800012e:	220a      	movs	r2, #10
 8000130:	611a      	str	r2, [r3, #16]
 8000132:	4b07      	ldr	r3, [pc, #28]	; (8000150 <ssi_init+0x40>)
 8000134:	f240 221f 	movw	r2, #543	; 0x21f
 8000138:	601a      	str	r2, [r3, #0]
 800013a:	4b05      	ldr	r3, [pc, #20]	; (8000150 <ssi_init+0x40>)
 800013c:	2202      	movs	r2, #2
 800013e:	605a      	str	r2, [r3, #4]
 8000140:	bf00      	nop
 8000142:	46bd      	mov	sp, r7
 8000144:	bc80      	pop	{r7}
 8000146:	4770      	bx	lr
 8000148:	40020000 	.word	0x40020000
 800014c:	0100000a 	.word	0x0100000a
 8000150:	40040000 	.word	0x40040000

08000154 <b2g>:
 8000154:	b480      	push	{r7}
 8000156:	b083      	sub	sp, #12
 8000158:	af00      	add	r7, sp, #0
 800015a:	6078      	str	r0, [r7, #4]
 800015c:	687b      	ldr	r3, [r7, #4]
 800015e:	085a      	lsrs	r2, r3, #1
 8000160:	687b      	ldr	r3, [r7, #4]
 8000162:	4053      	eors	r3, r2
 8000164:	4618      	mov	r0, r3
 8000166:	370c      	adds	r7, #12
 8000168:	46bd      	mov	sp, r7
 800016a:	bc80      	pop	{r7}
 800016c:	4770      	bx	lr
 800016e:	bf00      	nop

08000170 <g2b>:
 8000170:	b480      	push	{r7}
 8000172:	b085      	sub	sp, #20
 8000174:	af00      	add	r7, sp, #0
 8000176:	6078      	str	r0, [r7, #4]
 8000178:	2300      	movs	r3, #0
 800017a:	60fb      	str	r3, [r7, #12]
 800017c:	2300      	movs	r3, #0
 800017e:	60fb      	str	r3, [r7, #12]
 8000180:	e006      	b.n	8000190 <g2b+0x20>
 8000182:	68fa      	ldr	r2, [r7, #12]
 8000184:	687b      	ldr	r3, [r7, #4]
 8000186:	4053      	eors	r3, r2
 8000188:	60fb      	str	r3, [r7, #12]
 800018a:	687b      	ldr	r3, [r7, #4]
 800018c:	085b      	lsrs	r3, r3, #1
 800018e:	607b      	str	r3, [r7, #4]
 8000190:	687b      	ldr	r3, [r7, #4]
 8000192:	2b00      	cmp	r3, #0
 8000194:	d1f5      	bne.n	8000182 <g2b+0x12>
 8000196:	68fb      	ldr	r3, [r7, #12]
 8000198:	4618      	mov	r0, r3
 800019a:	3714      	adds	r7, #20
 800019c:	46bd      	mov	sp, r7
 800019e:	bc80      	pop	{r7}
 80001a0:	4770      	bx	lr
 80001a2:	bf00      	nop

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
 80001f4:	20000258 	.word	0x20000258

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
 8000258:	4b04      	ldr	r3, [pc, #16]	; (800026c <Timer3_IRQHandler+0x18>)
 800025a:	2200      	movs	r2, #0
 800025c:	655a      	str	r2, [r3, #84]	; 0x54
 800025e:	f7ff ffe1 	bl	8000224 <encoder_start>
 8000262:	f000 ffa1 	bl	80011a8 <adc_dma_start>
 8000266:	bf00      	nop
 8000268:	bd80      	pop	{r7, pc}
 800026a:	bf00      	nop
 800026c:	40080000 	.word	0x40080000

08000270 <get_phase>:
 8000270:	b580      	push	{r7, lr}
 8000272:	af00      	add	r7, sp, #0
 8000274:	4b0a      	ldr	r3, [pc, #40]	; (80002a0 <get_phase+0x30>)
 8000276:	f240 5255 	movw	r2, #1365	; 0x555
 800027a:	609a      	str	r2, [r3, #8]
 800027c:	bf00      	nop
 800027e:	4b08      	ldr	r3, [pc, #32]	; (80002a0 <get_phase+0x30>)
 8000280:	68db      	ldr	r3, [r3, #12]
 8000282:	f003 0304 	and.w	r3, r3, #4
 8000286:	2b00      	cmp	r3, #0
 8000288:	d0f9      	beq.n	800027e <get_phase+0xe>
 800028a:	4b05      	ldr	r3, [pc, #20]	; (80002a0 <get_phase+0x30>)
 800028c:	689b      	ldr	r3, [r3, #8]
 800028e:	f3c3 030b 	ubfx	r3, r3, #0, #12
 8000292:	4618      	mov	r0, r3
 8000294:	f7ff ff6c 	bl	8000170 <g2b>
 8000298:	4603      	mov	r3, r0
 800029a:	4618      	mov	r0, r3
 800029c:	bd80      	pop	{r7, pc}
 800029e:	bf00      	nop
 80002a0:	40040000 	.word	0x40040000

080002a4 <pwm_seta>:
 80002a4:	b480      	push	{r7}
 80002a6:	b083      	sub	sp, #12
 80002a8:	af00      	add	r7, sp, #0
 80002aa:	6078      	str	r0, [r7, #4]
 80002ac:	4a04      	ldr	r2, [pc, #16]	; (80002c0 <pwm_seta+0x1c>)
 80002ae:	687b      	ldr	r3, [r7, #4]
 80002b0:	f503 7300 	add.w	r3, r3, #512	; 0x200
 80002b4:	6113      	str	r3, [r2, #16]
 80002b6:	bf00      	nop
 80002b8:	370c      	adds	r7, #12
 80002ba:	46bd      	mov	sp, r7
 80002bc:	bc80      	pop	{r7}
 80002be:	4770      	bx	lr
 80002c0:	40080000 	.word	0x40080000

080002c4 <pwm_setb>:
 80002c4:	b480      	push	{r7}
 80002c6:	b083      	sub	sp, #12
 80002c8:	af00      	add	r7, sp, #0
 80002ca:	6078      	str	r0, [r7, #4]
 80002cc:	4a04      	ldr	r2, [pc, #16]	; (80002e0 <pwm_setb+0x1c>)
 80002ce:	687b      	ldr	r3, [r7, #4]
 80002d0:	f503 7300 	add.w	r3, r3, #512	; 0x200
 80002d4:	6153      	str	r3, [r2, #20]
 80002d6:	bf00      	nop
 80002d8:	370c      	adds	r7, #12
 80002da:	46bd      	mov	sp, r7
 80002dc:	bc80      	pop	{r7}
 80002de:	4770      	bx	lr
 80002e0:	40080000 	.word	0x40080000

080002e4 <pwm_setc>:
 80002e4:	b480      	push	{r7}
 80002e6:	b083      	sub	sp, #12
 80002e8:	af00      	add	r7, sp, #0
 80002ea:	6078      	str	r0, [r7, #4]
 80002ec:	4a04      	ldr	r2, [pc, #16]	; (8000300 <pwm_setc+0x1c>)
 80002ee:	687b      	ldr	r3, [r7, #4]
 80002f0:	f503 7300 	add.w	r3, r3, #512	; 0x200
 80002f4:	6193      	str	r3, [r2, #24]
 80002f6:	bf00      	nop
 80002f8:	370c      	adds	r7, #12
 80002fa:	46bd      	mov	sp, r7
 80002fc:	bc80      	pop	{r7}
 80002fe:	4770      	bx	lr
 8000300:	40080000 	.word	0x40080000

08000304 <update_telemetry>:
 8000304:	b480      	push	{r7}
 8000306:	b083      	sub	sp, #12
 8000308:	af00      	add	r7, sp, #0
 800030a:	4b4b      	ldr	r3, [pc, #300]	; (8000438 <update_telemetry+0x134>)
 800030c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
 800030e:	f003 0302 	and.w	r3, r3, #2
 8000312:	2b00      	cmp	r3, #0
 8000314:	d078      	beq.n	8000408 <update_telemetry+0x104>
 8000316:	4b48      	ldr	r3, [pc, #288]	; (8000438 <update_telemetry+0x134>)
 8000318:	2200      	movs	r2, #0
 800031a:	655a      	str	r2, [r3, #84]	; 0x54
 800031c:	4a47      	ldr	r2, [pc, #284]	; (800043c <update_telemetry+0x138>)
 800031e:	4b47      	ldr	r3, [pc, #284]	; (800043c <update_telemetry+0x138>)
 8000320:	681b      	ldr	r3, [r3, #0]
 8000322:	f043 0301 	orr.w	r3, r3, #1
 8000326:	6013      	str	r3, [r2, #0]
 8000328:	4a45      	ldr	r2, [pc, #276]	; (8000440 <update_telemetry+0x13c>)
 800032a:	4b45      	ldr	r3, [pc, #276]	; (8000440 <update_telemetry+0x13c>)
 800032c:	699b      	ldr	r3, [r3, #24]
 800032e:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 8000332:	6193      	str	r3, [r2, #24]
 8000334:	4b40      	ldr	r3, [pc, #256]	; (8000438 <update_telemetry+0x134>)
 8000336:	695b      	ldr	r3, [r3, #20]
 8000338:	b29b      	uxth	r3, r3
 800033a:	f503 7396 	add.w	r3, r3, #300	; 0x12c
 800033e:	80fb      	strh	r3, [r7, #6]
 8000340:	88fb      	ldrh	r3, [r7, #6]
 8000342:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8000346:	d205      	bcs.n	8000354 <update_telemetry+0x50>
 8000348:	4a3b      	ldr	r2, [pc, #236]	; (8000438 <update_telemetry+0x134>)
 800034a:	4b3b      	ldr	r3, [pc, #236]	; (8000438 <update_telemetry+0x134>)
 800034c:	681b      	ldr	r3, [r3, #0]
 800034e:	3301      	adds	r3, #1
 8000350:	6013      	str	r3, [r2, #0]
 8000352:	e008      	b.n	8000366 <update_telemetry+0x62>
 8000354:	88fb      	ldrh	r3, [r7, #6]
 8000356:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800035a:	d904      	bls.n	8000366 <update_telemetry+0x62>
 800035c:	4a36      	ldr	r2, [pc, #216]	; (8000438 <update_telemetry+0x134>)
 800035e:	4b36      	ldr	r3, [pc, #216]	; (8000438 <update_telemetry+0x134>)
 8000360:	681b      	ldr	r3, [r3, #0]
 8000362:	3b01      	subs	r3, #1
 8000364:	6013      	str	r3, [r2, #0]
 8000366:	4b37      	ldr	r3, [pc, #220]	; (8000444 <update_telemetry+0x140>)
 8000368:	681b      	ldr	r3, [r3, #0]
 800036a:	b29a      	uxth	r2, r3
 800036c:	4b36      	ldr	r3, [pc, #216]	; (8000448 <update_telemetry+0x144>)
 800036e:	681b      	ldr	r3, [r3, #0]
 8000370:	b29b      	uxth	r3, r3
 8000372:	1ad3      	subs	r3, r2, r3
 8000374:	b29b      	uxth	r3, r3
 8000376:	b21a      	sxth	r2, r3
 8000378:	4b34      	ldr	r3, [pc, #208]	; (800044c <update_telemetry+0x148>)
 800037a:	801a      	strh	r2, [r3, #0]
 800037c:	4b34      	ldr	r3, [pc, #208]	; (8000450 <update_telemetry+0x14c>)
 800037e:	681b      	ldr	r3, [r3, #0]
 8000380:	b29a      	uxth	r2, r3
 8000382:	4b31      	ldr	r3, [pc, #196]	; (8000448 <update_telemetry+0x144>)
 8000384:	681b      	ldr	r3, [r3, #0]
 8000386:	b29b      	uxth	r3, r3
 8000388:	1ad3      	subs	r3, r2, r3
 800038a:	b29b      	uxth	r3, r3
 800038c:	b21a      	sxth	r2, r3
 800038e:	4b2f      	ldr	r3, [pc, #188]	; (800044c <update_telemetry+0x148>)
 8000390:	805a      	strh	r2, [r3, #2]
 8000392:	4b30      	ldr	r3, [pc, #192]	; (8000454 <update_telemetry+0x150>)
 8000394:	681b      	ldr	r3, [r3, #0]
 8000396:	129b      	asrs	r3, r3, #10
 8000398:	b29a      	uxth	r2, r3
 800039a:	4b2c      	ldr	r3, [pc, #176]	; (800044c <update_telemetry+0x148>)
 800039c:	809a      	strh	r2, [r3, #4]
 800039e:	4b2b      	ldr	r3, [pc, #172]	; (800044c <update_telemetry+0x148>)
 80003a0:	2200      	movs	r2, #0
 80003a2:	80da      	strh	r2, [r3, #6]
 80003a4:	4b29      	ldr	r3, [pc, #164]	; (800044c <update_telemetry+0x148>)
 80003a6:	603b      	str	r3, [r7, #0]
 80003a8:	492b      	ldr	r1, [pc, #172]	; (8000458 <update_telemetry+0x154>)
 80003aa:	683b      	ldr	r3, [r7, #0]
 80003ac:	1c5a      	adds	r2, r3, #1
 80003ae:	603a      	str	r2, [r7, #0]
 80003b0:	781b      	ldrb	r3, [r3, #0]
 80003b2:	600b      	str	r3, [r1, #0]
 80003b4:	4928      	ldr	r1, [pc, #160]	; (8000458 <update_telemetry+0x154>)
 80003b6:	683b      	ldr	r3, [r7, #0]
 80003b8:	1c5a      	adds	r2, r3, #1
 80003ba:	603a      	str	r2, [r7, #0]
 80003bc:	781b      	ldrb	r3, [r3, #0]
 80003be:	600b      	str	r3, [r1, #0]
 80003c0:	4925      	ldr	r1, [pc, #148]	; (8000458 <update_telemetry+0x154>)
 80003c2:	683b      	ldr	r3, [r7, #0]
 80003c4:	1c5a      	adds	r2, r3, #1
 80003c6:	603a      	str	r2, [r7, #0]
 80003c8:	781b      	ldrb	r3, [r3, #0]
 80003ca:	600b      	str	r3, [r1, #0]
 80003cc:	4922      	ldr	r1, [pc, #136]	; (8000458 <update_telemetry+0x154>)
 80003ce:	683b      	ldr	r3, [r7, #0]
 80003d0:	1c5a      	adds	r2, r3, #1
 80003d2:	603a      	str	r2, [r7, #0]
 80003d4:	781b      	ldrb	r3, [r3, #0]
 80003d6:	600b      	str	r3, [r1, #0]
 80003d8:	491f      	ldr	r1, [pc, #124]	; (8000458 <update_telemetry+0x154>)
 80003da:	683b      	ldr	r3, [r7, #0]
 80003dc:	1c5a      	adds	r2, r3, #1
 80003de:	603a      	str	r2, [r7, #0]
 80003e0:	781b      	ldrb	r3, [r3, #0]
 80003e2:	600b      	str	r3, [r1, #0]
 80003e4:	491c      	ldr	r1, [pc, #112]	; (8000458 <update_telemetry+0x154>)
 80003e6:	683b      	ldr	r3, [r7, #0]
 80003e8:	1c5a      	adds	r2, r3, #1
 80003ea:	603a      	str	r2, [r7, #0]
 80003ec:	781b      	ldrb	r3, [r3, #0]
 80003ee:	600b      	str	r3, [r1, #0]
 80003f0:	4919      	ldr	r1, [pc, #100]	; (8000458 <update_telemetry+0x154>)
 80003f2:	683b      	ldr	r3, [r7, #0]
 80003f4:	1c5a      	adds	r2, r3, #1
 80003f6:	603a      	str	r2, [r7, #0]
 80003f8:	781b      	ldrb	r3, [r3, #0]
 80003fa:	600b      	str	r3, [r1, #0]
 80003fc:	4916      	ldr	r1, [pc, #88]	; (8000458 <update_telemetry+0x154>)
 80003fe:	683b      	ldr	r3, [r7, #0]
 8000400:	1c5a      	adds	r2, r3, #1
 8000402:	603a      	str	r2, [r7, #0]
 8000404:	781b      	ldrb	r3, [r3, #0]
 8000406:	600b      	str	r3, [r1, #0]
 8000408:	4b13      	ldr	r3, [pc, #76]	; (8000458 <update_telemetry+0x154>)
 800040a:	699b      	ldr	r3, [r3, #24]
 800040c:	f003 0308 	and.w	r3, r3, #8
 8000410:	2b00      	cmp	r3, #0
 8000412:	d10b      	bne.n	800042c <update_telemetry+0x128>
 8000414:	4a09      	ldr	r2, [pc, #36]	; (800043c <update_telemetry+0x138>)
 8000416:	4b09      	ldr	r3, [pc, #36]	; (800043c <update_telemetry+0x138>)
 8000418:	681b      	ldr	r3, [r3, #0]
 800041a:	f023 0301 	bic.w	r3, r3, #1
 800041e:	6013      	str	r3, [r2, #0]
 8000420:	4a07      	ldr	r2, [pc, #28]	; (8000440 <update_telemetry+0x13c>)
 8000422:	4b07      	ldr	r3, [pc, #28]	; (8000440 <update_telemetry+0x13c>)
 8000424:	699b      	ldr	r3, [r3, #24]
 8000426:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
 800042a:	6193      	str	r3, [r2, #24]
 800042c:	bf00      	nop
 800042e:	370c      	adds	r7, #12
 8000430:	46bd      	mov	sp, r7
 8000432:	bc80      	pop	{r7}
 8000434:	4770      	bx	lr
 8000436:	bf00      	nop
 8000438:	40070000 	.word	0x40070000
 800043c:	400a8000 	.word	0x400a8000
 8000440:	400b0000 	.word	0x400b0000
 8000444:	20000220 	.word	0x20000220
 8000448:	2000022c 	.word	0x2000022c
 800044c:	20000250 	.word	0x20000250
 8000450:	20000244 	.word	0x20000244
 8000454:	2000024c 	.word	0x2000024c
 8000458:	40030000 	.word	0x40030000

0800045c <update_refposition>:
 800045c:	b480      	push	{r7}
 800045e:	b087      	sub	sp, #28
 8000460:	af00      	add	r7, sp, #0
 8000462:	4b20      	ldr	r3, [pc, #128]	; (80004e4 <update_refposition+0x88>)
 8000464:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000466:	f003 0310 	and.w	r3, r3, #16
 800046a:	2b00      	cmp	r3, #0
 800046c:	d022      	beq.n	80004b4 <update_refposition+0x58>
 800046e:	2300      	movs	r3, #0
 8000470:	617b      	str	r3, [r7, #20]
 8000472:	e00c      	b.n	800048e <update_refposition+0x32>
 8000474:	4b1b      	ldr	r3, [pc, #108]	; (80004e4 <update_refposition+0x88>)
 8000476:	681b      	ldr	r3, [r3, #0]
 8000478:	b2d9      	uxtb	r1, r3
 800047a:	463a      	mov	r2, r7
 800047c:	697b      	ldr	r3, [r7, #20]
 800047e:	4413      	add	r3, r2
 8000480:	460a      	mov	r2, r1
 8000482:	701a      	strb	r2, [r3, #0]
 8000484:	697b      	ldr	r3, [r7, #20]
 8000486:	3301      	adds	r3, #1
 8000488:	f003 030f 	and.w	r3, r3, #15
 800048c:	617b      	str	r3, [r7, #20]
 800048e:	4b15      	ldr	r3, [pc, #84]	; (80004e4 <update_refposition+0x88>)
 8000490:	699b      	ldr	r3, [r3, #24]
 8000492:	f003 0310 	and.w	r3, r3, #16
 8000496:	2b00      	cmp	r3, #0
 8000498:	d0ec      	beq.n	8000474 <update_refposition+0x18>
 800049a:	783b      	ldrb	r3, [r7, #0]
 800049c:	b29a      	uxth	r2, r3
 800049e:	787b      	ldrb	r3, [r7, #1]
 80004a0:	b29b      	uxth	r3, r3
 80004a2:	021b      	lsls	r3, r3, #8
 80004a4:	b29b      	uxth	r3, r3
 80004a6:	4413      	add	r3, r2
 80004a8:	b29b      	uxth	r3, r3
 80004aa:	827b      	strh	r3, [r7, #18]
 80004ac:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 80004b0:	4a0d      	ldr	r2, [pc, #52]	; (80004e8 <update_refposition+0x8c>)
 80004b2:	6013      	str	r3, [r2, #0]
 80004b4:	4b0b      	ldr	r3, [pc, #44]	; (80004e4 <update_refposition+0x88>)
 80004b6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80004b8:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80004bc:	2b00      	cmp	r3, #0
 80004be:	d009      	beq.n	80004d4 <update_refposition+0x78>
 80004c0:	e002      	b.n	80004c8 <update_refposition+0x6c>
 80004c2:	4b08      	ldr	r3, [pc, #32]	; (80004e4 <update_refposition+0x88>)
 80004c4:	681b      	ldr	r3, [r3, #0]
 80004c6:	747b      	strb	r3, [r7, #17]
 80004c8:	4b06      	ldr	r3, [pc, #24]	; (80004e4 <update_refposition+0x88>)
 80004ca:	699b      	ldr	r3, [r3, #24]
 80004cc:	f003 0310 	and.w	r3, r3, #16
 80004d0:	2b00      	cmp	r3, #0
 80004d2:	d0f6      	beq.n	80004c2 <update_refposition+0x66>
 80004d4:	4b04      	ldr	r3, [pc, #16]	; (80004e8 <update_refposition+0x8c>)
 80004d6:	681b      	ldr	r3, [r3, #0]
 80004d8:	4618      	mov	r0, r3
 80004da:	371c      	adds	r7, #28
 80004dc:	46bd      	mov	sp, r7
 80004de:	bc80      	pop	{r7}
 80004e0:	4770      	bx	lr
 80004e2:	bf00      	nop
 80004e4:	40030000 	.word	0x40030000
 80004e8:	2000025c 	.word	0x2000025c

080004ec <main>:
 80004ec:	b580      	push	{r7, lr}
 80004ee:	b0a6      	sub	sp, #152	; 0x98
 80004f0:	af00      	add	r7, sp, #0
 80004f2:	2300      	movs	r3, #0
 80004f4:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
 80004f8:	2300      	movs	r3, #0
 80004fa:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
 80004fe:	2300      	movs	r3, #0
 8000500:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
 8000504:	2300      	movs	r3, #0
 8000506:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 800050a:	2300      	movs	r3, #0
 800050c:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
 8000510:	2300      	movs	r3, #0
 8000512:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 8000516:	2300      	movs	r3, #0
 8000518:	67fb      	str	r3, [r7, #124]	; 0x7c
 800051a:	2300      	movs	r3, #0
 800051c:	67bb      	str	r3, [r7, #120]	; 0x78
 800051e:	f001 f8f9 	bl	8001714 <system_init>
 8000522:	f7ff fdf5 	bl	8000110 <ssi_init>
 8000526:	f7ff fe67 	bl	80001f8 <dac_init>
 800052a:	f000 fe35 	bl	8001198 <adc_dma_init>
 800052e:	f107 0348 	add.w	r3, r7, #72	; 0x48
 8000532:	22c8      	movs	r2, #200	; 0xc8
 8000534:	2150      	movs	r1, #80	; 0x50
 8000536:	4618      	mov	r0, r3
 8000538:	f000 f960 	bl	80007fc <reg_init>
 800053c:	f107 0338 	add.w	r3, r7, #56	; 0x38
 8000540:	22c8      	movs	r2, #200	; 0xc8
 8000542:	2150      	movs	r1, #80	; 0x50
 8000544:	4618      	mov	r0, r3
 8000546:	f000 f959 	bl	80007fc <reg_init>
 800054a:	f107 0328 	add.w	r3, r7, #40	; 0x28
 800054e:	f241 3288 	movw	r2, #5000	; 0x1388
 8000552:	2100      	movs	r1, #0
 8000554:	4618      	mov	r0, r3
 8000556:	f000 f951 	bl	80007fc <reg_init>
 800055a:	f107 0318 	add.w	r3, r7, #24
 800055e:	f241 7270 	movw	r2, #6000	; 0x1770
 8000562:	2100      	movs	r1, #0
 8000564:	4618      	mov	r0, r3
 8000566:	f000 f949 	bl	80007fc <reg_init>
 800056a:	2300      	movs	r3, #0
 800056c:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
 8000570:	2300      	movs	r3, #0
 8000572:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 8000576:	4b8f      	ldr	r3, [pc, #572]	; (80007b4 <main+0x2c8>)
 8000578:	2200      	movs	r2, #0
 800057a:	601a      	str	r2, [r3, #0]
 800057c:	2300      	movs	r3, #0
 800057e:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
 8000582:	e028      	b.n	80005d6 <main+0xea>
 8000584:	f000 fe24 	bl	80011d0 <adc_dma_wait>
 8000588:	4b8b      	ldr	r3, [pc, #556]	; (80007b8 <main+0x2cc>)
 800058a:	685b      	ldr	r3, [r3, #4]
 800058c:	f3c3 020b 	ubfx	r2, r3, #0, #12
 8000590:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
 8000594:	4413      	add	r3, r2
 8000596:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
 800059a:	4b87      	ldr	r3, [pc, #540]	; (80007b8 <main+0x2cc>)
 800059c:	681b      	ldr	r3, [r3, #0]
 800059e:	f3c3 020b 	ubfx	r2, r3, #0, #12
 80005a2:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
 80005a6:	4413      	add	r3, r2
 80005a8:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 80005ac:	4b83      	ldr	r3, [pc, #524]	; (80007bc <main+0x2d0>)
 80005ae:	689b      	ldr	r3, [r3, #8]
 80005b0:	4618      	mov	r0, r3
 80005b2:	f7ff fdf7 	bl	80001a4 <enc_crc>
 80005b6:	4602      	mov	r2, r0
 80005b8:	4b7e      	ldr	r3, [pc, #504]	; (80007b4 <main+0x2c8>)
 80005ba:	681b      	ldr	r3, [r3, #0]
 80005bc:	4413      	add	r3, r2
 80005be:	461a      	mov	r2, r3
 80005c0:	4b7c      	ldr	r3, [pc, #496]	; (80007b4 <main+0x2c8>)
 80005c2:	601a      	str	r2, [r3, #0]
 80005c4:	2100      	movs	r1, #0
 80005c6:	2000      	movs	r0, #0
 80005c8:	f000 fd0e 	bl	8000fe8 <mfilter>
 80005cc:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
 80005d0:	3301      	adds	r3, #1
 80005d2:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
 80005d6:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
 80005da:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 80005de:	dbd1      	blt.n	8000584 <main+0x98>
 80005e0:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
 80005e4:	129b      	asrs	r3, r3, #10
 80005e6:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
 80005ea:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
 80005ee:	129b      	asrs	r3, r3, #10
 80005f0:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 80005f4:	4b6f      	ldr	r3, [pc, #444]	; (80007b4 <main+0x2c8>)
 80005f6:	681b      	ldr	r3, [r3, #0]
 80005f8:	129b      	asrs	r3, r3, #10
 80005fa:	4a6e      	ldr	r2, [pc, #440]	; (80007b4 <main+0x2c8>)
 80005fc:	6013      	str	r3, [r2, #0]
 80005fe:	4b70      	ldr	r3, [pc, #448]	; (80007c0 <main+0x2d4>)
 8000600:	2200      	movs	r2, #0
 8000602:	601a      	str	r2, [r3, #0]
 8000604:	4b6b      	ldr	r3, [pc, #428]	; (80007b4 <main+0x2c8>)
 8000606:	681b      	ldr	r3, [r3, #0]
 8000608:	4a6e      	ldr	r2, [pc, #440]	; (80007c4 <main+0x2d8>)
 800060a:	6013      	str	r3, [r2, #0]
 800060c:	4b69      	ldr	r3, [pc, #420]	; (80007b4 <main+0x2c8>)
 800060e:	681b      	ldr	r3, [r3, #0]
 8000610:	4618      	mov	r0, r3
 8000612:	f000 fcb1 	bl	8000f78 <encoder_init>
 8000616:	4b6c      	ldr	r3, [pc, #432]	; (80007c8 <main+0x2dc>)
 8000618:	2200      	movs	r2, #0
 800061a:	601a      	str	r2, [r3, #0]
 800061c:	f000 fdd8 	bl	80011d0 <adc_dma_wait>
 8000620:	4b65      	ldr	r3, [pc, #404]	; (80007b8 <main+0x2cc>)
 8000622:	685b      	ldr	r3, [r3, #4]
 8000624:	f3c3 020b 	ubfx	r2, r3, #0, #12
 8000628:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
 800062c:	1ad3      	subs	r3, r2, r3
 800062e:	677b      	str	r3, [r7, #116]	; 0x74
 8000630:	4b61      	ldr	r3, [pc, #388]	; (80007b8 <main+0x2cc>)
 8000632:	681b      	ldr	r3, [r3, #0]
 8000634:	f3c3 020b 	ubfx	r2, r3, #0, #12
 8000638:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
 800063c:	1ad3      	subs	r3, r2, r3
 800063e:	673b      	str	r3, [r7, #112]	; 0x70
 8000640:	6f7a      	ldr	r2, [r7, #116]	; 0x74
 8000642:	6f3b      	ldr	r3, [r7, #112]	; 0x70
 8000644:	4413      	add	r3, r2
 8000646:	66fb      	str	r3, [r7, #108]	; 0x6c
 8000648:	4b5c      	ldr	r3, [pc, #368]	; (80007bc <main+0x2d0>)
 800064a:	689b      	ldr	r3, [r3, #8]
 800064c:	4618      	mov	r0, r3
 800064e:	f7ff fda9 	bl	80001a4 <enc_crc>
 8000652:	66b8      	str	r0, [r7, #104]	; 0x68
 8000654:	6ebb      	ldr	r3, [r7, #104]	; 0x68
 8000656:	f3c3 0309 	ubfx	r3, r3, #0, #10
 800065a:	67bb      	str	r3, [r7, #120]	; 0x78
 800065c:	4a5b      	ldr	r2, [pc, #364]	; (80007cc <main+0x2e0>)
 800065e:	6ebb      	ldr	r3, [r7, #104]	; 0x68
 8000660:	6013      	str	r3, [r2, #0]
 8000662:	4b5b      	ldr	r3, [pc, #364]	; (80007d0 <main+0x2e4>)
 8000664:	681b      	ldr	r3, [r3, #0]
 8000666:	3301      	adds	r3, #1
 8000668:	4a59      	ldr	r2, [pc, #356]	; (80007d0 <main+0x2e4>)
 800066a:	6013      	str	r3, [r2, #0]
 800066c:	4b58      	ldr	r3, [pc, #352]	; (80007d0 <main+0x2e4>)
 800066e:	681b      	ldr	r3, [r3, #0]
 8000670:	f003 0307 	and.w	r3, r3, #7
 8000674:	2b00      	cmp	r3, #0
 8000676:	d139      	bne.n	80006ec <main+0x200>
 8000678:	f7ff fef0 	bl	800045c <update_refposition>
 800067c:	4602      	mov	r2, r0
 800067e:	4b4d      	ldr	r3, [pc, #308]	; (80007b4 <main+0x2c8>)
 8000680:	681b      	ldr	r3, [r3, #0]
 8000682:	4413      	add	r3, r2
 8000684:	4a4e      	ldr	r2, [pc, #312]	; (80007c0 <main+0x2d4>)
 8000686:	6013      	str	r3, [r2, #0]
 8000688:	6ebb      	ldr	r3, [r7, #104]	; 0x68
 800068a:	494e      	ldr	r1, [pc, #312]	; (80007c4 <main+0x2d8>)
 800068c:	4618      	mov	r0, r3
 800068e:	f000 fc79 	bl	8000f84 <get_speed>
 8000692:	6678      	str	r0, [r7, #100]	; 0x64
 8000694:	4b4a      	ldr	r3, [pc, #296]	; (80007c0 <main+0x2d4>)
 8000696:	681a      	ldr	r2, [r3, #0]
 8000698:	4b4a      	ldr	r3, [pc, #296]	; (80007c4 <main+0x2d8>)
 800069a:	681b      	ldr	r3, [r3, #0]
 800069c:	1ad1      	subs	r1, r2, r3
 800069e:	f107 0318 	add.w	r3, r7, #24
 80006a2:	2200      	movs	r2, #0
 80006a4:	4618      	mov	r0, r3
 80006a6:	f000 f8af 	bl	8000808 <reg_update>
 80006aa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80006ac:	131b      	asrs	r3, r3, #12
 80006ae:	67fb      	str	r3, [r7, #124]	; 0x7c
 80006b0:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
 80006b2:	6e7b      	ldr	r3, [r7, #100]	; 0x64
 80006b4:	1ad1      	subs	r1, r2, r3
 80006b6:	f107 0328 	add.w	r3, r7, #40	; 0x28
 80006ba:	2200      	movs	r2, #0
 80006bc:	4618      	mov	r0, r3
 80006be:	f000 f8a3 	bl	8000808 <reg_update>
 80006c2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80006c4:	131b      	asrs	r3, r3, #12
 80006c6:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 80006ca:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
 80006ce:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 80006d2:	dd03      	ble.n	80006dc <main+0x1f0>
 80006d4:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80006d8:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 80006dc:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
 80006e0:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
 80006e4:	da02      	bge.n	80006ec <main+0x200>
 80006e6:	4b3b      	ldr	r3, [pc, #236]	; (80007d4 <main+0x2e8>)
 80006e8:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 80006ec:	f7ff fe0a 	bl	8000304 <update_telemetry>
 80006f0:	6fbb      	ldr	r3, [r7, #120]	; 0x78
 80006f2:	f503 732f 	add.w	r3, r3, #700	; 0x2bc
 80006f6:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80006fa:	67bb      	str	r3, [r7, #120]	; 0x78
 80006fc:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 80006fe:	607b      	str	r3, [r7, #4]
 8000700:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8000702:	60bb      	str	r3, [r7, #8]
 8000704:	6f3b      	ldr	r3, [r7, #112]	; 0x70
 8000706:	60fb      	str	r3, [r7, #12]
 8000708:	6fba      	ldr	r2, [r7, #120]	; 0x78
 800070a:	f107 0110 	add.w	r1, r7, #16
 800070e:	1d3b      	adds	r3, r7, #4
 8000710:	4618      	mov	r0, r3
 8000712:	f000 f89f 	bl	8000854 <abc_to_dq>
 8000716:	693b      	ldr	r3, [r7, #16]
 8000718:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
 800071c:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
 8000720:	697b      	ldr	r3, [r7, #20]
 8000722:	2b00      	cmp	r3, #0
 8000724:	bfb8      	it	lt
 8000726:	425b      	neglt	r3, r3
 8000728:	4413      	add	r3, r2
 800072a:	663b      	str	r3, [r7, #96]	; 0x60
 800072c:	4b26      	ldr	r3, [pc, #152]	; (80007c8 <main+0x2dc>)
 800072e:	681b      	ldr	r3, [r3, #0]
 8000730:	4619      	mov	r1, r3
 8000732:	6e38      	ldr	r0, [r7, #96]	; 0x60
 8000734:	f000 fc58 	bl	8000fe8 <mfilter>
 8000738:	4602      	mov	r2, r0
 800073a:	4b23      	ldr	r3, [pc, #140]	; (80007c8 <main+0x2dc>)
 800073c:	601a      	str	r2, [r3, #0]
 800073e:	693b      	ldr	r3, [r7, #16]
 8000740:	425b      	negs	r3, r3
 8000742:	65fb      	str	r3, [r7, #92]	; 0x5c
 8000744:	697b      	ldr	r3, [r7, #20]
 8000746:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
 800074a:	1ad3      	subs	r3, r2, r3
 800074c:	65bb      	str	r3, [r7, #88]	; 0x58
 800074e:	4b1e      	ldr	r3, [pc, #120]	; (80007c8 <main+0x2dc>)
 8000750:	681b      	ldr	r3, [r3, #0]
 8000752:	129b      	asrs	r3, r3, #10
 8000754:	4618      	mov	r0, r3
 8000756:	f7ff fcb3 	bl	80000c0 <debug_signal>
 800075a:	f107 0348 	add.w	r3, r7, #72	; 0x48
 800075e:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
 8000762:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 8000764:	4618      	mov	r0, r3
 8000766:	f000 f84f 	bl	8000808 <reg_update>
 800076a:	f107 0338 	add.w	r3, r7, #56	; 0x38
 800076e:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
 8000772:	6db9      	ldr	r1, [r7, #88]	; 0x58
 8000774:	4618      	mov	r0, r3
 8000776:	f000 f847 	bl	8000808 <reg_update>
 800077a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 800077c:	109b      	asrs	r3, r3, #2
 800077e:	613b      	str	r3, [r7, #16]
 8000780:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8000782:	109b      	asrs	r3, r3, #2
 8000784:	617b      	str	r3, [r7, #20]
 8000786:	6fba      	ldr	r2, [r7, #120]	; 0x78
 8000788:	f107 0110 	add.w	r1, r7, #16
 800078c:	1d3b      	adds	r3, r7, #4
 800078e:	4618      	mov	r0, r3
 8000790:	f000 fa78 	bl	8000c84 <svpwm>
 8000794:	f8c7 0088 	str.w	r0, [r7, #136]	; 0x88
 8000798:	687b      	ldr	r3, [r7, #4]
 800079a:	4618      	mov	r0, r3
 800079c:	f7ff fd82 	bl	80002a4 <pwm_seta>
 80007a0:	68bb      	ldr	r3, [r7, #8]
 80007a2:	4618      	mov	r0, r3
 80007a4:	f7ff fd8e 	bl	80002c4 <pwm_setb>
 80007a8:	68fb      	ldr	r3, [r7, #12]
 80007aa:	4618      	mov	r0, r3
 80007ac:	f7ff fd9a 	bl	80002e4 <pwm_setc>
 80007b0:	e734      	b.n	800061c <main+0x130>
 80007b2:	bf00      	nop
 80007b4:	2000022c 	.word	0x2000022c
 80007b8:	20000200 	.word	0x20000200
 80007bc:	40040000 	.word	0x40040000
 80007c0:	20000220 	.word	0x20000220
 80007c4:	20000244 	.word	0x20000244
 80007c8:	2000024c 	.word	0x2000024c
 80007cc:	20000248 	.word	0x20000248
 80007d0:	20000234 	.word	0x20000234
 80007d4:	fffffc18 	.word	0xfffffc18

080007d8 <mycos>:
 80007d8:	4b02      	ldr	r3, [pc, #8]	; (80007e4 <mycos+0xc>)
 80007da:	f3c0 0009 	ubfx	r0, r0, #0, #10
 80007de:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 80007e2:	4770      	bx	lr
 80007e4:	08001874 	.word	0x08001874

080007e8 <mysin>:
 80007e8:	4b03      	ldr	r3, [pc, #12]	; (80007f8 <mysin+0x10>)
 80007ea:	f500 7040 	add.w	r0, r0, #768	; 0x300
 80007ee:	f3c0 0009 	ubfx	r0, r0, #0, #10
 80007f2:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 80007f6:	4770      	bx	lr
 80007f8:	08001874 	.word	0x08001874

080007fc <reg_init>:
 80007fc:	2300      	movs	r3, #0
 80007fe:	e880 000e 	stmia.w	r0, {r1, r2, r3}
 8000802:	60c3      	str	r3, [r0, #12]
 8000804:	4770      	bx	lr
 8000806:	bf00      	nop

08000808 <reg_update>:
 8000808:	6803      	ldr	r3, [r0, #0]
 800080a:	b410      	push	{r4}
 800080c:	fb03 f301 	mul.w	r3, r3, r1
 8000810:	6884      	ldr	r4, [r0, #8]
 8000812:	b11a      	cbz	r2, 800081c <reg_update+0x14>
 8000814:	2c00      	cmp	r4, #0
 8000816:	dd09      	ble.n	800082c <reg_update+0x24>
 8000818:	ea03 73e3 	and.w	r3, r3, r3, asr #31
 800081c:	6842      	ldr	r2, [r0, #4]
 800081e:	4423      	add	r3, r4
 8000820:	fb02 3101 	mla	r1, r2, r1, r3
 8000824:	6083      	str	r3, [r0, #8]
 8000826:	60c1      	str	r1, [r0, #12]
 8000828:	bc10      	pop	{r4}
 800082a:	4770      	bx	lr
 800082c:	bf18      	it	ne
 800082e:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
 8000832:	e7f3      	b.n	800081c <reg_update+0x14>

08000834 <dot3>:
 8000834:	b430      	push	{r4, r5}
 8000836:	684b      	ldr	r3, [r1, #4]
 8000838:	6844      	ldr	r4, [r0, #4]
 800083a:	6802      	ldr	r2, [r0, #0]
 800083c:	fb03 f304 	mul.w	r3, r3, r4
 8000840:	680d      	ldr	r5, [r1, #0]
 8000842:	6884      	ldr	r4, [r0, #8]
 8000844:	fb05 3302 	mla	r3, r5, r2, r3
 8000848:	6888      	ldr	r0, [r1, #8]
 800084a:	fb00 3004 	mla	r0, r0, r4, r3
 800084e:	bc30      	pop	{r4, r5}
 8000850:	4770      	bx	lr
 8000852:	bf00      	nop

08000854 <abc_to_dq>:
 8000854:	b4f0      	push	{r4, r5, r6, r7}
 8000856:	4c1d      	ldr	r4, [pc, #116]	; (80008cc <abc_to_dq+0x78>)
 8000858:	6803      	ldr	r3, [r0, #0]
 800085a:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
 800085e:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
 8000862:	fb03 f306 	mul.w	r3, r3, r6
 8000866:	f3c5 0509 	ubfx	r5, r5, #0, #10
 800086a:	6847      	ldr	r7, [r0, #4]
 800086c:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 8000870:	f202 1655 	addw	r6, r2, #341	; 0x155
 8000874:	fb07 3305 	mla	r3, r7, r5, r3
 8000878:	f3c6 0509 	ubfx	r5, r6, #0, #10
 800087c:	6887      	ldr	r7, [r0, #8]
 800087e:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 8000882:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
 8000886:	fb07 3305 	mla	r3, r7, r5, r3
 800088a:	129b      	asrs	r3, r3, #10
 800088c:	600b      	str	r3, [r1, #0]
 800088e:	f3c6 0509 	ubfx	r5, r6, #0, #10
 8000892:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
 8000896:	6843      	ldr	r3, [r0, #4]
 8000898:	f502 7540 	add.w	r5, r2, #768	; 0x300
 800089c:	fb03 f306 	mul.w	r3, r3, r6
 80008a0:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80008a4:	6806      	ldr	r6, [r0, #0]
 80008a6:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 80008aa:	f202 4255 	addw	r2, r2, #1109	; 0x455
 80008ae:	fb06 3305 	mla	r3, r6, r5, r3
 80008b2:	f3c2 0209 	ubfx	r2, r2, #0, #10
 80008b6:	6880      	ldr	r0, [r0, #8]
 80008b8:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 80008bc:	bcf0      	pop	{r4, r5, r6, r7}
 80008be:	fb00 3302 	mla	r3, r0, r2, r3
 80008c2:	425b      	negs	r3, r3
 80008c4:	129b      	asrs	r3, r3, #10
 80008c6:	604b      	str	r3, [r1, #4]
 80008c8:	4770      	bx	lr
 80008ca:	bf00      	nop
 80008cc:	08001874 	.word	0x08001874

080008d0 <dq_to_abc>:
 80008d0:	4b1d      	ldr	r3, [pc, #116]	; (8000948 <dq_to_abc+0x78>)
 80008d2:	b4f0      	push	{r4, r5, r6, r7}
 80008d4:	680e      	ldr	r6, [r1, #0]
 80008d6:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
 80008da:	f502 7540 	add.w	r5, r2, #768	; 0x300
 80008de:	fb04 f406 	mul.w	r4, r4, r6
 80008e2:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80008e6:	684f      	ldr	r7, [r1, #4]
 80008e8:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 80008ec:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
 80008f0:	fb07 4415 	mls	r4, r7, r5, r4
 80008f4:	1524      	asrs	r4, r4, #20
 80008f6:	6004      	str	r4, [r0, #0]
 80008f8:	f3c6 0509 	ubfx	r5, r6, #0, #10
 80008fc:	680c      	ldr	r4, [r1, #0]
 80008fe:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
 8000902:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
 8000906:	fb04 f406 	mul.w	r4, r4, r6
 800090a:	f3c5 0509 	ubfx	r5, r5, #0, #10
 800090e:	684f      	ldr	r7, [r1, #4]
 8000910:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8000914:	f202 1655 	addw	r6, r2, #341	; 0x155
 8000918:	fb07 4415 	mls	r4, r7, r5, r4
 800091c:	1524      	asrs	r4, r4, #20
 800091e:	6044      	str	r4, [r0, #4]
 8000920:	f3c6 0509 	ubfx	r5, r6, #0, #10
 8000924:	680c      	ldr	r4, [r1, #0]
 8000926:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 800092a:	f202 4255 	addw	r2, r2, #1109	; 0x455
 800092e:	fb04 f405 	mul.w	r4, r4, r5
 8000932:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000936:	6849      	ldr	r1, [r1, #4]
 8000938:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
 800093c:	fb01 4312 	mls	r3, r1, r2, r4
 8000940:	bcf0      	pop	{r4, r5, r6, r7}
 8000942:	151b      	asrs	r3, r3, #20
 8000944:	6083      	str	r3, [r0, #8]
 8000946:	4770      	bx	lr
 8000948:	08001874 	.word	0x08001874

0800094c <cord_atan>:
 800094c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800094e:	b091      	sub	sp, #68	; 0x44
 8000950:	46ee      	mov	lr, sp
 8000952:	4684      	mov	ip, r0
 8000954:	4e56      	ldr	r6, [pc, #344]	; (8000ab0 <cord_atan+0x164>)
 8000956:	460d      	mov	r5, r1
 8000958:	4614      	mov	r4, r2
 800095a:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 800095c:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8000960:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000964:	af08      	add	r7, sp, #32
 8000966:	3610      	adds	r6, #16
 8000968:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 800096c:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 800096e:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 8000970:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000974:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8000978:	f8dc 6000 	ldr.w	r6, [ip]
 800097c:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8000980:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000984:	2b00      	cmp	r3, #0
 8000986:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 800098a:	9900      	ldr	r1, [sp, #0]
 800098c:	dd56      	ble.n	8000a3c <cord_atan+0xf0>
 800098e:	18d0      	adds	r0, r2, r3
 8000990:	1a9b      	subs	r3, r3, r2
 8000992:	2b00      	cmp	r3, #0
 8000994:	d07a      	beq.n	8000a8c <cord_atan+0x140>
 8000996:	9f01      	ldr	r7, [sp, #4]
 8000998:	dd54      	ble.n	8000a44 <cord_atan+0xf8>
 800099a:	eb00 0263 	add.w	r2, r0, r3, asr #1
 800099e:	4439      	add	r1, r7
 80009a0:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 80009a4:	2b00      	cmp	r3, #0
 80009a6:	d073      	beq.n	8000a90 <cord_atan+0x144>
 80009a8:	9f02      	ldr	r7, [sp, #8]
 80009aa:	dd51      	ble.n	8000a50 <cord_atan+0x104>
 80009ac:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 80009b0:	4439      	add	r1, r7
 80009b2:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 80009b6:	2b00      	cmp	r3, #0
 80009b8:	d06d      	beq.n	8000a96 <cord_atan+0x14a>
 80009ba:	9f03      	ldr	r7, [sp, #12]
 80009bc:	dd4e      	ble.n	8000a5c <cord_atan+0x110>
 80009be:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 80009c2:	4439      	add	r1, r7
 80009c4:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 80009c8:	2b00      	cmp	r3, #0
 80009ca:	d066      	beq.n	8000a9a <cord_atan+0x14e>
 80009cc:	9f04      	ldr	r7, [sp, #16]
 80009ce:	dd4b      	ble.n	8000a68 <cord_atan+0x11c>
 80009d0:	eb02 1023 	add.w	r0, r2, r3, asr #4
 80009d4:	4439      	add	r1, r7
 80009d6:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 80009da:	2b00      	cmp	r3, #0
 80009dc:	d060      	beq.n	8000aa0 <cord_atan+0x154>
 80009de:	9f05      	ldr	r7, [sp, #20]
 80009e0:	dd48      	ble.n	8000a74 <cord_atan+0x128>
 80009e2:	eb00 1263 	add.w	r2, r0, r3, asr #5
 80009e6:	4439      	add	r1, r7
 80009e8:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 80009ec:	2b00      	cmp	r3, #0
 80009ee:	d059      	beq.n	8000aa4 <cord_atan+0x158>
 80009f0:	9f06      	ldr	r7, [sp, #24]
 80009f2:	dd45      	ble.n	8000a80 <cord_atan+0x134>
 80009f4:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 80009f8:	4439      	add	r1, r7
 80009fa:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 80009fe:	2b00      	cmp	r3, #0
 8000a00:	d053      	beq.n	8000aaa <cord_atan+0x15e>
 8000a02:	9a07      	ldr	r2, [sp, #28]
 8000a04:	bfc7      	ittee	gt
 8000a06:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 8000a0a:	1889      	addgt	r1, r1, r2
 8000a0c:	1a89      	suble	r1, r1, r2
 8000a0e:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 8000a12:	2207      	movs	r2, #7
 8000a14:	ab10      	add	r3, sp, #64	; 0x40
 8000a16:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8000a1a:	f852 3c20 	ldr.w	r3, [r2, #-32]
 8000a1e:	2e00      	cmp	r6, #0
 8000a20:	fb03 f300 	mul.w	r3, r3, r0
 8000a24:	bfb8      	it	lt
 8000a26:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 8000a2a:	2900      	cmp	r1, #0
 8000a2c:	bfb8      	it	lt
 8000a2e:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 8000a32:	129b      	asrs	r3, r3, #10
 8000a34:	6029      	str	r1, [r5, #0]
 8000a36:	6023      	str	r3, [r4, #0]
 8000a38:	b011      	add	sp, #68	; 0x44
 8000a3a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a3c:	1ad0      	subs	r0, r2, r3
 8000a3e:	4249      	negs	r1, r1
 8000a40:	4413      	add	r3, r2
 8000a42:	e7a6      	b.n	8000992 <cord_atan+0x46>
 8000a44:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 8000a48:	1bc9      	subs	r1, r1, r7
 8000a4a:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8000a4e:	e7a9      	b.n	80009a4 <cord_atan+0x58>
 8000a50:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8000a54:	1bc9      	subs	r1, r1, r7
 8000a56:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 8000a5a:	e7ac      	b.n	80009b6 <cord_atan+0x6a>
 8000a5c:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8000a60:	1bc9      	subs	r1, r1, r7
 8000a62:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 8000a66:	e7af      	b.n	80009c8 <cord_atan+0x7c>
 8000a68:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8000a6c:	1bc9      	subs	r1, r1, r7
 8000a6e:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8000a72:	e7b2      	b.n	80009da <cord_atan+0x8e>
 8000a74:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 8000a78:	1bc9      	subs	r1, r1, r7
 8000a7a:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8000a7e:	e7b5      	b.n	80009ec <cord_atan+0xa0>
 8000a80:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8000a84:	1bc9      	subs	r1, r1, r7
 8000a86:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8000a8a:	e7b8      	b.n	80009fe <cord_atan+0xb2>
 8000a8c:	461a      	mov	r2, r3
 8000a8e:	e7c1      	b.n	8000a14 <cord_atan+0xc8>
 8000a90:	4610      	mov	r0, r2
 8000a92:	2201      	movs	r2, #1
 8000a94:	e7be      	b.n	8000a14 <cord_atan+0xc8>
 8000a96:	2202      	movs	r2, #2
 8000a98:	e7bc      	b.n	8000a14 <cord_atan+0xc8>
 8000a9a:	4610      	mov	r0, r2
 8000a9c:	2203      	movs	r2, #3
 8000a9e:	e7b9      	b.n	8000a14 <cord_atan+0xc8>
 8000aa0:	2204      	movs	r2, #4
 8000aa2:	e7b7      	b.n	8000a14 <cord_atan+0xc8>
 8000aa4:	4610      	mov	r0, r2
 8000aa6:	2205      	movs	r2, #5
 8000aa8:	e7b4      	b.n	8000a14 <cord_atan+0xc8>
 8000aaa:	2206      	movs	r2, #6
 8000aac:	e7b2      	b.n	8000a14 <cord_atan+0xc8>
 8000aae:	bf00      	nop
 8000ab0:	08001834 	.word	0x08001834

08000ab4 <sinpwm>:
 8000ab4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000ab6:	b091      	sub	sp, #68	; 0x44
 8000ab8:	46ee      	mov	lr, sp
 8000aba:	468c      	mov	ip, r1
 8000abc:	4e6e      	ldr	r6, [pc, #440]	; (8000c78 <sinpwm+0x1c4>)
 8000abe:	4604      	mov	r4, r0
 8000ac0:	4615      	mov	r5, r2
 8000ac2:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000ac4:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8000ac8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000acc:	af08      	add	r7, sp, #32
 8000ace:	3610      	adds	r6, #16
 8000ad0:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 8000ad4:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000ad6:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 8000ad8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000adc:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8000ae0:	f8dc 6000 	ldr.w	r6, [ip]
 8000ae4:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8000ae8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000aec:	2b00      	cmp	r3, #0
 8000aee:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 8000af2:	9900      	ldr	r1, [sp, #0]
 8000af4:	f340 8087 	ble.w	8000c06 <sinpwm+0x152>
 8000af8:	18d0      	adds	r0, r2, r3
 8000afa:	1a9b      	subs	r3, r3, r2
 8000afc:	2b00      	cmp	r3, #0
 8000afe:	f000 80aa 	beq.w	8000c56 <sinpwm+0x1a2>
 8000b02:	9f01      	ldr	r7, [sp, #4]
 8000b04:	f340 8083 	ble.w	8000c0e <sinpwm+0x15a>
 8000b08:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8000b0c:	4439      	add	r1, r7
 8000b0e:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8000b12:	2b00      	cmp	r3, #0
 8000b14:	f000 80a1 	beq.w	8000c5a <sinpwm+0x1a6>
 8000b18:	9f02      	ldr	r7, [sp, #8]
 8000b1a:	dd7e      	ble.n	8000c1a <sinpwm+0x166>
 8000b1c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8000b20:	4439      	add	r1, r7
 8000b22:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 8000b26:	2b00      	cmp	r3, #0
 8000b28:	f000 809a 	beq.w	8000c60 <sinpwm+0x1ac>
 8000b2c:	9f03      	ldr	r7, [sp, #12]
 8000b2e:	dd7a      	ble.n	8000c26 <sinpwm+0x172>
 8000b30:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 8000b34:	4439      	add	r1, r7
 8000b36:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 8000b3a:	2b00      	cmp	r3, #0
 8000b3c:	f000 8092 	beq.w	8000c64 <sinpwm+0x1b0>
 8000b40:	9f04      	ldr	r7, [sp, #16]
 8000b42:	dd76      	ble.n	8000c32 <sinpwm+0x17e>
 8000b44:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8000b48:	4439      	add	r1, r7
 8000b4a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8000b4e:	2b00      	cmp	r3, #0
 8000b50:	f000 808b 	beq.w	8000c6a <sinpwm+0x1b6>
 8000b54:	9f05      	ldr	r7, [sp, #20]
 8000b56:	dd72      	ble.n	8000c3e <sinpwm+0x18a>
 8000b58:	eb00 1263 	add.w	r2, r0, r3, asr #5
 8000b5c:	4439      	add	r1, r7
 8000b5e:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8000b62:	2b00      	cmp	r3, #0
 8000b64:	f000 8083 	beq.w	8000c6e <sinpwm+0x1ba>
 8000b68:	9f06      	ldr	r7, [sp, #24]
 8000b6a:	dd6e      	ble.n	8000c4a <sinpwm+0x196>
 8000b6c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 8000b70:	4439      	add	r1, r7
 8000b72:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 8000b76:	2b00      	cmp	r3, #0
 8000b78:	d07c      	beq.n	8000c74 <sinpwm+0x1c0>
 8000b7a:	9a07      	ldr	r2, [sp, #28]
 8000b7c:	bfc7      	ittee	gt
 8000b7e:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 8000b82:	1889      	addgt	r1, r1, r2
 8000b84:	1a89      	suble	r1, r1, r2
 8000b86:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 8000b8a:	2207      	movs	r2, #7
 8000b8c:	ab10      	add	r3, sp, #64	; 0x40
 8000b8e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8000b92:	f852 3c20 	ldr.w	r3, [r2, #-32]
 8000b96:	2e00      	cmp	r6, #0
 8000b98:	fb03 f300 	mul.w	r3, r3, r0
 8000b9c:	bfb8      	it	lt
 8000b9e:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 8000ba2:	2900      	cmp	r1, #0
 8000ba4:	bfb8      	it	lt
 8000ba6:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 8000baa:	151b      	asrs	r3, r3, #20
 8000bac:	440d      	add	r5, r1
 8000bae:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 8000bb2:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000bb6:	dd22      	ble.n	8000bfe <sinpwm+0x14a>
 8000bb8:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 8000c80 <sinpwm+0x1cc>
 8000bbc:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 8000bc0:	2001      	movs	r0, #1
 8000bc2:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
 8000bc6:	4f2d      	ldr	r7, [pc, #180]	; (8000c7c <sinpwm+0x1c8>)
 8000bc8:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
 8000bcc:	3602      	adds	r6, #2
 8000bce:	f3ce 0e09 	ubfx	lr, lr, #0, #10
 8000bd2:	f3c6 0609 	ubfx	r6, r6, #0, #10
 8000bd6:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
 8000bda:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
 8000bde:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
 8000be2:	fb06 f50c 	mul.w	r5, r6, ip
 8000be6:	fb01 f10c 	mul.w	r1, r1, ip
 8000bea:	fb02 f303 	mul.w	r3, r2, r3
 8000bee:	12ad      	asrs	r5, r5, #10
 8000bf0:	128a      	asrs	r2, r1, #10
 8000bf2:	129b      	asrs	r3, r3, #10
 8000bf4:	60a5      	str	r5, [r4, #8]
 8000bf6:	6062      	str	r2, [r4, #4]
 8000bf8:	6023      	str	r3, [r4, #0]
 8000bfa:	b011      	add	sp, #68	; 0x44
 8000bfc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000bfe:	f1c3 0c00 	rsb	ip, r3, #0
 8000c02:	2000      	movs	r0, #0
 8000c04:	e7dd      	b.n	8000bc2 <sinpwm+0x10e>
 8000c06:	1ad0      	subs	r0, r2, r3
 8000c08:	4249      	negs	r1, r1
 8000c0a:	4413      	add	r3, r2
 8000c0c:	e776      	b.n	8000afc <sinpwm+0x48>
 8000c0e:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 8000c12:	1bc9      	subs	r1, r1, r7
 8000c14:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8000c18:	e77b      	b.n	8000b12 <sinpwm+0x5e>
 8000c1a:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8000c1e:	1bc9      	subs	r1, r1, r7
 8000c20:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 8000c24:	e77f      	b.n	8000b26 <sinpwm+0x72>
 8000c26:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8000c2a:	1bc9      	subs	r1, r1, r7
 8000c2c:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 8000c30:	e783      	b.n	8000b3a <sinpwm+0x86>
 8000c32:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8000c36:	1bc9      	subs	r1, r1, r7
 8000c38:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8000c3c:	e787      	b.n	8000b4e <sinpwm+0x9a>
 8000c3e:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 8000c42:	1bc9      	subs	r1, r1, r7
 8000c44:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8000c48:	e78b      	b.n	8000b62 <sinpwm+0xae>
 8000c4a:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8000c4e:	1bc9      	subs	r1, r1, r7
 8000c50:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8000c54:	e78f      	b.n	8000b76 <sinpwm+0xc2>
 8000c56:	461a      	mov	r2, r3
 8000c58:	e798      	b.n	8000b8c <sinpwm+0xd8>
 8000c5a:	4610      	mov	r0, r2
 8000c5c:	2201      	movs	r2, #1
 8000c5e:	e795      	b.n	8000b8c <sinpwm+0xd8>
 8000c60:	2202      	movs	r2, #2
 8000c62:	e793      	b.n	8000b8c <sinpwm+0xd8>
 8000c64:	4610      	mov	r0, r2
 8000c66:	2203      	movs	r2, #3
 8000c68:	e790      	b.n	8000b8c <sinpwm+0xd8>
 8000c6a:	2204      	movs	r2, #4
 8000c6c:	e78e      	b.n	8000b8c <sinpwm+0xd8>
 8000c6e:	4610      	mov	r0, r2
 8000c70:	2205      	movs	r2, #5
 8000c72:	e78b      	b.n	8000b8c <sinpwm+0xd8>
 8000c74:	2206      	movs	r2, #6
 8000c76:	e789      	b.n	8000b8c <sinpwm+0xd8>
 8000c78:	08001834 	.word	0x08001834
 8000c7c:	08001874 	.word	0x08001874
 8000c80:	fffffe0c 	.word	0xfffffe0c

08000c84 <svpwm>:
 8000c84:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c86:	b091      	sub	sp, #68	; 0x44
 8000c88:	46ee      	mov	lr, sp
 8000c8a:	468c      	mov	ip, r1
 8000c8c:	4eb8      	ldr	r6, [pc, #736]	; (8000f70 <svpwm+0x2ec>)
 8000c8e:	4604      	mov	r4, r0
 8000c90:	4615      	mov	r5, r2
 8000c92:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000c94:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8000c98:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000c9c:	af08      	add	r7, sp, #32
 8000c9e:	3610      	adds	r6, #16
 8000ca0:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 8000ca4:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000ca6:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 8000ca8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000cac:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8000cb0:	f8dc 6000 	ldr.w	r6, [ip]
 8000cb4:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8000cb8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000cbc:	2b00      	cmp	r3, #0
 8000cbe:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 8000cc2:	9900      	ldr	r1, [sp, #0]
 8000cc4:	dd6f      	ble.n	8000da6 <svpwm+0x122>
 8000cc6:	18d0      	adds	r0, r2, r3
 8000cc8:	1a9b      	subs	r3, r3, r2
 8000cca:	2b00      	cmp	r3, #0
 8000ccc:	f000 813f 	beq.w	8000f4e <svpwm+0x2ca>
 8000cd0:	9f01      	ldr	r7, [sp, #4]
 8000cd2:	dd6c      	ble.n	8000dae <svpwm+0x12a>
 8000cd4:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8000cd8:	4439      	add	r1, r7
 8000cda:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8000cde:	2b00      	cmp	r3, #0
 8000ce0:	f000 8137 	beq.w	8000f52 <svpwm+0x2ce>
 8000ce4:	9f02      	ldr	r7, [sp, #8]
 8000ce6:	dd68      	ble.n	8000dba <svpwm+0x136>
 8000ce8:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8000cec:	4439      	add	r1, r7
 8000cee:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 8000cf2:	2b00      	cmp	r3, #0
 8000cf4:	f000 8130 	beq.w	8000f58 <svpwm+0x2d4>
 8000cf8:	9f03      	ldr	r7, [sp, #12]
 8000cfa:	dd64      	ble.n	8000dc6 <svpwm+0x142>
 8000cfc:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 8000d00:	4439      	add	r1, r7
 8000d02:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 8000d06:	2b00      	cmp	r3, #0
 8000d08:	f000 8128 	beq.w	8000f5c <svpwm+0x2d8>
 8000d0c:	9f04      	ldr	r7, [sp, #16]
 8000d0e:	dd60      	ble.n	8000dd2 <svpwm+0x14e>
 8000d10:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8000d14:	4439      	add	r1, r7
 8000d16:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8000d1a:	2b00      	cmp	r3, #0
 8000d1c:	f000 8121 	beq.w	8000f62 <svpwm+0x2de>
 8000d20:	9f05      	ldr	r7, [sp, #20]
 8000d22:	dd5c      	ble.n	8000dde <svpwm+0x15a>
 8000d24:	eb00 1263 	add.w	r2, r0, r3, asr #5
 8000d28:	4439      	add	r1, r7
 8000d2a:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8000d2e:	2b00      	cmp	r3, #0
 8000d30:	f000 8119 	beq.w	8000f66 <svpwm+0x2e2>
 8000d34:	9f06      	ldr	r7, [sp, #24]
 8000d36:	dd58      	ble.n	8000dea <svpwm+0x166>
 8000d38:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 8000d3c:	4439      	add	r1, r7
 8000d3e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 8000d42:	2b00      	cmp	r3, #0
 8000d44:	f000 8112 	beq.w	8000f6c <svpwm+0x2e8>
 8000d48:	9a07      	ldr	r2, [sp, #28]
 8000d4a:	bfc7      	ittee	gt
 8000d4c:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 8000d50:	1889      	addgt	r1, r1, r2
 8000d52:	1a89      	suble	r1, r1, r2
 8000d54:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 8000d58:	2207      	movs	r2, #7
 8000d5a:	ab10      	add	r3, sp, #64	; 0x40
 8000d5c:	2e00      	cmp	r6, #0
 8000d5e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8000d62:	bfb8      	it	lt
 8000d64:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 8000d68:	f852 3c20 	ldr.w	r3, [r2, #-32]
 8000d6c:	2900      	cmp	r1, #0
 8000d6e:	fb03 f300 	mul.w	r3, r3, r0
 8000d72:	bfb8      	it	lt
 8000d74:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 8000d78:	440d      	add	r5, r1
 8000d7a:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000d7e:	eb05 0245 	add.w	r2, r5, r5, lsl #1
 8000d82:	151b      	asrs	r3, r3, #20
 8000d84:	1252      	asrs	r2, r2, #9
 8000d86:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 8000d8a:	f102 32ff 	add.w	r2, r2, #4294967295
 8000d8e:	bfc6      	itte	gt
 8000d90:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
 8000d94:	2001      	movgt	r0, #1
 8000d96:	2000      	movle	r0, #0
 8000d98:	2a04      	cmp	r2, #4
 8000d9a:	d848      	bhi.n	8000e2e <svpwm+0x1aa>
 8000d9c:	e8df f002 	tbb	[pc, r2]
 8000da0:	2b9e8164 	.word	0x2b9e8164
 8000da4:	bb          	.byte	0xbb
 8000da5:	00          	.byte	0x00
 8000da6:	1ad0      	subs	r0, r2, r3
 8000da8:	4249      	negs	r1, r1
 8000daa:	4413      	add	r3, r2
 8000dac:	e78d      	b.n	8000cca <svpwm+0x46>
 8000dae:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 8000db2:	1bc9      	subs	r1, r1, r7
 8000db4:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8000db8:	e791      	b.n	8000cde <svpwm+0x5a>
 8000dba:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8000dbe:	1bc9      	subs	r1, r1, r7
 8000dc0:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 8000dc4:	e795      	b.n	8000cf2 <svpwm+0x6e>
 8000dc6:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8000dca:	1bc9      	subs	r1, r1, r7
 8000dcc:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 8000dd0:	e799      	b.n	8000d06 <svpwm+0x82>
 8000dd2:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8000dd6:	1bc9      	subs	r1, r1, r7
 8000dd8:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8000ddc:	e79d      	b.n	8000d1a <svpwm+0x96>
 8000dde:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 8000de2:	1bc9      	subs	r1, r1, r7
 8000de4:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8000de8:	e7a1      	b.n	8000d2e <svpwm+0xaa>
 8000dea:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8000dee:	1bc9      	subs	r1, r1, r7
 8000df0:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8000df4:	e7a5      	b.n	8000d42 <svpwm+0xbe>
 8000df6:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
 8000dfa:	4e5e      	ldr	r6, [pc, #376]	; (8000f74 <svpwm+0x2f0>)
 8000dfc:	3204      	adds	r2, #4
 8000dfe:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000e02:	3556      	adds	r5, #86	; 0x56
 8000e04:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000e08:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000e0c:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000e10:	fb01 f103 	mul.w	r1, r1, r3
 8000e14:	fb02 f203 	mul.w	r2, r2, r3
 8000e18:	1289      	asrs	r1, r1, #10
 8000e1a:	1293      	asrs	r3, r2, #10
 8000e1c:	424a      	negs	r2, r1
 8000e1e:	1ad2      	subs	r2, r2, r3
 8000e20:	1a5d      	subs	r5, r3, r1
 8000e22:	440b      	add	r3, r1
 8000e24:	6062      	str	r2, [r4, #4]
 8000e26:	6025      	str	r5, [r4, #0]
 8000e28:	60a3      	str	r3, [r4, #8]
 8000e2a:	b011      	add	sp, #68	; 0x44
 8000e2c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000e2e:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
 8000e32:	4e50      	ldr	r6, [pc, #320]	; (8000f74 <svpwm+0x2f0>)
 8000e34:	3202      	adds	r2, #2
 8000e36:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000e3a:	f505 7540 	add.w	r5, r5, #768	; 0x300
 8000e3e:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000e42:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000e46:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000e4a:	fb01 f103 	mul.w	r1, r1, r3
 8000e4e:	fb02 f203 	mul.w	r2, r2, r3
 8000e52:	1289      	asrs	r1, r1, #10
 8000e54:	1293      	asrs	r3, r2, #10
 8000e56:	424a      	negs	r2, r1
 8000e58:	1ad2      	subs	r2, r2, r3
 8000e5a:	18cd      	adds	r5, r1, r3
 8000e5c:	1a5b      	subs	r3, r3, r1
 8000e5e:	60a2      	str	r2, [r4, #8]
 8000e60:	6025      	str	r5, [r4, #0]
 8000e62:	6063      	str	r3, [r4, #4]
 8000e64:	b011      	add	sp, #68	; 0x44
 8000e66:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000e68:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
 8000e6c:	4e41      	ldr	r6, [pc, #260]	; (8000f74 <svpwm+0x2f0>)
 8000e6e:	3204      	adds	r2, #4
 8000e70:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000e74:	f205 2556 	addw	r5, r5, #598	; 0x256
 8000e78:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000e7c:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000e80:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000e84:	fb01 f103 	mul.w	r1, r1, r3
 8000e88:	fb02 f203 	mul.w	r2, r2, r3
 8000e8c:	1289      	asrs	r1, r1, #10
 8000e8e:	1293      	asrs	r3, r2, #10
 8000e90:	424a      	negs	r2, r1
 8000e92:	1ad2      	subs	r2, r2, r3
 8000e94:	1acd      	subs	r5, r1, r3
 8000e96:	440b      	add	r3, r1
 8000e98:	60a2      	str	r2, [r4, #8]
 8000e9a:	6025      	str	r5, [r4, #0]
 8000e9c:	6063      	str	r3, [r4, #4]
 8000e9e:	b011      	add	sp, #68	; 0x44
 8000ea0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000ea2:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
 8000ea6:	4e33      	ldr	r6, [pc, #204]	; (8000f74 <svpwm+0x2f0>)
 8000ea8:	320f      	adds	r2, #15
 8000eaa:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000eae:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
 8000eb2:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000eb6:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000eba:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000ebe:	fb01 f103 	mul.w	r1, r1, r3
 8000ec2:	fb02 f203 	mul.w	r2, r2, r3
 8000ec6:	1289      	asrs	r1, r1, #10
 8000ec8:	1293      	asrs	r3, r2, #10
 8000eca:	424a      	negs	r2, r1
 8000ecc:	1ad2      	subs	r2, r2, r3
 8000ece:	18cd      	adds	r5, r1, r3
 8000ed0:	1a5b      	subs	r3, r3, r1
 8000ed2:	e884 0024 	stmia.w	r4, {r2, r5}
 8000ed6:	60a3      	str	r3, [r4, #8]
 8000ed8:	b011      	add	sp, #68	; 0x44
 8000eda:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000edc:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
 8000ee0:	4e24      	ldr	r6, [pc, #144]	; (8000f74 <svpwm+0x2f0>)
 8000ee2:	320a      	adds	r2, #10
 8000ee4:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000ee8:	f505 7580 	add.w	r5, r5, #256	; 0x100
 8000eec:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000ef0:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000ef4:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000ef8:	fb01 f103 	mul.w	r1, r1, r3
 8000efc:	fb02 f203 	mul.w	r2, r2, r3
 8000f00:	1289      	asrs	r1, r1, #10
 8000f02:	1293      	asrs	r3, r2, #10
 8000f04:	424a      	negs	r2, r1
 8000f06:	1ad2      	subs	r2, r2, r3
 8000f08:	1acd      	subs	r5, r1, r3
 8000f0a:	440b      	add	r3, r1
 8000f0c:	e884 0024 	stmia.w	r4, {r2, r5}
 8000f10:	60a3      	str	r3, [r4, #8]
 8000f12:	b011      	add	sp, #68	; 0x44
 8000f14:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000f16:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
 8000f1a:	4916      	ldr	r1, [pc, #88]	; (8000f74 <svpwm+0x2f0>)
 8000f1c:	320f      	adds	r2, #15
 8000f1e:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000f22:	3d55      	subs	r5, #85	; 0x55
 8000f24:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8000f28:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000f2c:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
 8000f30:	fb02 f203 	mul.w	r2, r2, r3
 8000f34:	fb01 f303 	mul.w	r3, r1, r3
 8000f38:	1292      	asrs	r2, r2, #10
 8000f3a:	129b      	asrs	r3, r3, #10
 8000f3c:	4251      	negs	r1, r2
 8000f3e:	18d5      	adds	r5, r2, r3
 8000f40:	1ac9      	subs	r1, r1, r3
 8000f42:	1ad2      	subs	r2, r2, r3
 8000f44:	6061      	str	r1, [r4, #4]
 8000f46:	6025      	str	r5, [r4, #0]
 8000f48:	60a2      	str	r2, [r4, #8]
 8000f4a:	b011      	add	sp, #68	; 0x44
 8000f4c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000f4e:	461a      	mov	r2, r3
 8000f50:	e703      	b.n	8000d5a <svpwm+0xd6>
 8000f52:	4610      	mov	r0, r2
 8000f54:	2201      	movs	r2, #1
 8000f56:	e700      	b.n	8000d5a <svpwm+0xd6>
 8000f58:	2202      	movs	r2, #2
 8000f5a:	e6fe      	b.n	8000d5a <svpwm+0xd6>
 8000f5c:	4610      	mov	r0, r2
 8000f5e:	2203      	movs	r2, #3
 8000f60:	e6fb      	b.n	8000d5a <svpwm+0xd6>
 8000f62:	2204      	movs	r2, #4
 8000f64:	e6f9      	b.n	8000d5a <svpwm+0xd6>
 8000f66:	4610      	mov	r0, r2
 8000f68:	2205      	movs	r2, #5
 8000f6a:	e6f6      	b.n	8000d5a <svpwm+0xd6>
 8000f6c:	2206      	movs	r2, #6
 8000f6e:	e6f4      	b.n	8000d5a <svpwm+0xd6>
 8000f70:	08001834 	.word	0x08001834
 8000f74:	08001874 	.word	0x08001874

08000f78 <encoder_init>:
 8000f78:	4b01      	ldr	r3, [pc, #4]	; (8000f80 <encoder_init+0x8>)
 8000f7a:	6018      	str	r0, [r3, #0]
 8000f7c:	6058      	str	r0, [r3, #4]
 8000f7e:	4770      	bx	lr
 8000f80:	20000260 	.word	0x20000260

08000f84 <get_speed>:
 8000f84:	b430      	push	{r4, r5}
 8000f86:	4c16      	ldr	r4, [pc, #88]	; (8000fe0 <get_speed+0x5c>)
 8000f88:	6862      	ldr	r2, [r4, #4]
 8000f8a:	6823      	ldr	r3, [r4, #0]
 8000f8c:	1a82      	subs	r2, r0, r2
 8000f8e:	ea82 75e2 	eor.w	r5, r2, r2, asr #31
 8000f92:	eba5 75e2 	sub.w	r5, r5, r2, asr #31
 8000f96:	f5b5 7f7a 	cmp.w	r5, #1000	; 0x3e8
 8000f9a:	6063      	str	r3, [r4, #4]
 8000f9c:	6020      	str	r0, [r4, #0]
 8000f9e:	eba0 0303 	sub.w	r3, r0, r3
 8000fa2:	dd05      	ble.n	8000fb0 <get_speed+0x2c>
 8000fa4:	2a00      	cmp	r2, #0
 8000fa6:	bfb4      	ite	lt
 8000fa8:	f502 5280 	addlt.w	r2, r2, #4096	; 0x1000
 8000fac:	f5a2 5280 	subge.w	r2, r2, #4096	; 0x1000
 8000fb0:	ea83 70e3 	eor.w	r0, r3, r3, asr #31
 8000fb4:	eba0 70e3 	sub.w	r0, r0, r3, asr #31
 8000fb8:	f5b0 7f7a 	cmp.w	r0, #1000	; 0x3e8
 8000fbc:	dd05      	ble.n	8000fca <get_speed+0x46>
 8000fbe:	2b00      	cmp	r3, #0
 8000fc0:	bfb4      	ite	lt
 8000fc2:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
 8000fc6:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
 8000fca:	4806      	ldr	r0, [pc, #24]	; (8000fe4 <get_speed+0x60>)
 8000fcc:	1052      	asrs	r2, r2, #1
 8000fce:	fb00 f002 	mul.w	r0, r0, r2
 8000fd2:	680c      	ldr	r4, [r1, #0]
 8000fd4:	1300      	asrs	r0, r0, #12
 8000fd6:	4423      	add	r3, r4
 8000fd8:	600b      	str	r3, [r1, #0]
 8000fda:	bc30      	pop	{r4, r5}
 8000fdc:	4770      	bx	lr
 8000fde:	bf00      	nop
 8000fe0:	20000260 	.word	0x20000260
 8000fe4:	0002ae7c 	.word	0x0002ae7c

08000fe8 <mfilter>:
 8000fe8:	b430      	push	{r4, r5}
 8000fea:	4605      	mov	r5, r0
 8000fec:	4a06      	ldr	r2, [pc, #24]	; (8001008 <mfilter+0x20>)
 8000fee:	6893      	ldr	r3, [r2, #8]
 8000ff0:	3301      	adds	r3, #1
 8000ff2:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000ff6:	eb02 0483 	add.w	r4, r2, r3, lsl #2
 8000ffa:	68e0      	ldr	r0, [r4, #12]
 8000ffc:	6093      	str	r3, [r2, #8]
 8000ffe:	1a08      	subs	r0, r1, r0
 8001000:	4428      	add	r0, r5
 8001002:	60e5      	str	r5, [r4, #12]
 8001004:	bc30      	pop	{r4, r5}
 8001006:	4770      	bx	lr
 8001008:	20000260 	.word	0x20000260

0800100c <rfilter1>:
 800100c:	b470      	push	{r4, r5, r6}
 800100e:	f240 74c6 	movw	r4, #1990	; 0x7c6
 8001012:	4b12      	ldr	r3, [pc, #72]	; (800105c <rfilter1+0x50>)
 8001014:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
 8001018:	f853 6cec 	ldr.w	r6, [r3, #-236]
 800101c:	f853 1ce4 	ldr.w	r1, [r3, #-228]
 8001020:	fb04 f406 	mul.w	r4, r4, r6
 8001024:	fb02 4201 	mla	r2, r2, r1, r4
 8001028:	490d      	ldr	r1, [pc, #52]	; (8001060 <rfilter1+0x54>)
 800102a:	f853 5ce8 	ldr.w	r5, [r3, #-232]
 800102e:	fb01 2200 	mla	r2, r1, r0, r2
 8001032:	4c0c      	ldr	r4, [pc, #48]	; (8001064 <rfilter1+0x58>)
 8001034:	f853 1ce0 	ldr.w	r1, [r3, #-224]
 8001038:	fb04 2205 	mla	r2, r4, r5, r2
 800103c:	4c0a      	ldr	r4, [pc, #40]	; (8001068 <rfilter1+0x5c>)
 800103e:	f843 6ce4 	str.w	r6, [r3, #-228]
 8001042:	fb04 2201 	mla	r2, r4, r1, r2
 8001046:	1291      	asrs	r1, r2, #10
 8001048:	f843 0ce8 	str.w	r0, [r3, #-232]
 800104c:	f843 5ce0 	str.w	r5, [r3, #-224]
 8001050:	1490      	asrs	r0, r2, #18
 8001052:	f843 1cec 	str.w	r1, [r3, #-236]
 8001056:	bc70      	pop	{r4, r5, r6}
 8001058:	4770      	bx	lr
 800105a:	bf00      	nop
 800105c:	20001358 	.word	0x20001358
 8001060:	0003f0a4 	.word	0x0003f0a4
 8001064:	fff83a2e 	.word	0xfff83a2e
 8001068:	0003dc29 	.word	0x0003dc29

0800106c <rfilter2>:
 800106c:	b470      	push	{r4, r5, r6}
 800106e:	f240 748a 	movw	r4, #1930	; 0x78a
 8001072:	4b11      	ldr	r3, [pc, #68]	; (80010b8 <rfilter2+0x4c>)
 8001074:	4a11      	ldr	r2, [pc, #68]	; (80010bc <rfilter2+0x50>)
 8001076:	f853 6cdc 	ldr.w	r6, [r3, #-220]
 800107a:	f853 1cd4 	ldr.w	r1, [r3, #-212]
 800107e:	fb04 f406 	mul.w	r4, r4, r6
 8001082:	fb02 4201 	mla	r2, r2, r1, r4
 8001086:	490e      	ldr	r1, [pc, #56]	; (80010c0 <rfilter2+0x54>)
 8001088:	f853 5cd8 	ldr.w	r5, [r3, #-216]
 800108c:	fb01 2200 	mla	r2, r1, r0, r2
 8001090:	4c0c      	ldr	r4, [pc, #48]	; (80010c4 <rfilter2+0x58>)
 8001092:	f853 1cd0 	ldr.w	r1, [r3, #-208]
 8001096:	fb04 2205 	mla	r2, r4, r5, r2
 800109a:	4c0b      	ldr	r4, [pc, #44]	; (80010c8 <rfilter2+0x5c>)
 800109c:	f843 6cd4 	str.w	r6, [r3, #-212]
 80010a0:	fb04 2201 	mla	r2, r4, r1, r2
 80010a4:	1291      	asrs	r1, r2, #10
 80010a6:	f843 0cd8 	str.w	r0, [r3, #-216]
 80010aa:	f843 5cd0 	str.w	r5, [r3, #-208]
 80010ae:	1490      	asrs	r0, r2, #18
 80010b0:	f843 1cdc 	str.w	r1, [r3, #-220]
 80010b4:	bc70      	pop	{r4, r5, r6}
 80010b6:	4770      	bx	lr
 80010b8:	20001358 	.word	0x20001358
 80010bc:	fffffc66 	.word	0xfffffc66
 80010c0:	0003e3d7 	.word	0x0003e3d7
 80010c4:	fff8767b 	.word	0xfff8767b
 80010c8:	0003b5c3 	.word	0x0003b5c3

080010cc <adc_init>:
 80010cc:	b480      	push	{r7}
 80010ce:	af00      	add	r7, sp, #0
 80010d0:	4a10      	ldr	r2, [pc, #64]	; (8001114 <adc_init+0x48>)
 80010d2:	4b10      	ldr	r3, [pc, #64]	; (8001114 <adc_init+0x48>)
 80010d4:	69db      	ldr	r3, [r3, #28]
 80010d6:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80010da:	61d3      	str	r3, [r2, #28]
 80010dc:	4b0d      	ldr	r3, [pc, #52]	; (8001114 <adc_init+0x48>)
 80010de:	f242 0220 	movw	r2, #8224	; 0x2020
 80010e2:	615a      	str	r2, [r3, #20]
 80010e4:	4b0c      	ldr	r3, [pc, #48]	; (8001118 <adc_init+0x4c>)
 80010e6:	2200      	movs	r2, #0
 80010e8:	601a      	str	r2, [r3, #0]
 80010ea:	4a0b      	ldr	r2, [pc, #44]	; (8001118 <adc_init+0x4c>)
 80010ec:	4b0a      	ldr	r3, [pc, #40]	; (8001118 <adc_init+0x4c>)
 80010ee:	681b      	ldr	r3, [r3, #0]
 80010f0:	f443 7301 	orr.w	r3, r3, #516	; 0x204
 80010f4:	f043 0301 	orr.w	r3, r3, #1
 80010f8:	6013      	str	r3, [r2, #0]
 80010fa:	4a07      	ldr	r2, [pc, #28]	; (8001118 <adc_init+0x4c>)
 80010fc:	4b06      	ldr	r3, [pc, #24]	; (8001118 <adc_init+0x4c>)
 80010fe:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001100:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
 8001104:	6293      	str	r3, [r2, #40]	; 0x28
 8001106:	4b04      	ldr	r3, [pc, #16]	; (8001118 <adc_init+0x4c>)
 8001108:	2210      	movs	r2, #16
 800110a:	621a      	str	r2, [r3, #32]
 800110c:	bf00      	nop
 800110e:	46bd      	mov	sp, r7
 8001110:	bc80      	pop	{r7}
 8001112:	4770      	bx	lr
 8001114:	40020000 	.word	0x40020000
 8001118:	40088000 	.word	0x40088000

0800111c <dma_init>:
 800111c:	b480      	push	{r7}
 800111e:	af00      	add	r7, sp, #0
 8001120:	4a17      	ldr	r2, [pc, #92]	; (8001180 <dma_init+0x64>)
 8001122:	4b17      	ldr	r3, [pc, #92]	; (8001180 <dma_init+0x64>)
 8001124:	69db      	ldr	r3, [r3, #28]
 8001126:	f043 0320 	orr.w	r3, r3, #32
 800112a:	61d3      	str	r3, [r2, #28]
 800112c:	4b15      	ldr	r3, [pc, #84]	; (8001184 <dma_init+0x68>)
 800112e:	4a16      	ldr	r2, [pc, #88]	; (8001188 <dma_init+0x6c>)
 8001130:	609a      	str	r2, [r3, #8]
 8001132:	4b14      	ldr	r3, [pc, #80]	; (8001184 <dma_init+0x68>)
 8001134:	f04f 32ff 	mov.w	r2, #4294967295
 8001138:	62da      	str	r2, [r3, #44]	; 0x2c
 800113a:	4b12      	ldr	r3, [pc, #72]	; (8001184 <dma_init+0x68>)
 800113c:	f04f 32ff 	mov.w	r2, #4294967295
 8001140:	621a      	str	r2, [r3, #32]
 8001142:	4b10      	ldr	r3, [pc, #64]	; (8001184 <dma_init+0x68>)
 8001144:	f04f 32ff 	mov.w	r2, #4294967295
 8001148:	635a      	str	r2, [r3, #52]	; 0x34
 800114a:	4b0e      	ldr	r3, [pc, #56]	; (8001184 <dma_init+0x68>)
 800114c:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001150:	61da      	str	r2, [r3, #28]
 8001152:	4b0c      	ldr	r3, [pc, #48]	; (8001184 <dma_init+0x68>)
 8001154:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001158:	625a      	str	r2, [r3, #36]	; 0x24
 800115a:	4b0a      	ldr	r3, [pc, #40]	; (8001184 <dma_init+0x68>)
 800115c:	2201      	movs	r2, #1
 800115e:	605a      	str	r2, [r3, #4]
 8001160:	4b09      	ldr	r3, [pc, #36]	; (8001188 <dma_init+0x6c>)
 8001162:	4a0a      	ldr	r2, [pc, #40]	; (800118c <dma_init+0x70>)
 8001164:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
 8001168:	4a09      	ldr	r2, [pc, #36]	; (8001190 <dma_init+0x74>)
 800116a:	4b07      	ldr	r3, [pc, #28]	; (8001188 <dma_init+0x6c>)
 800116c:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 8001170:	4b05      	ldr	r3, [pc, #20]	; (8001188 <dma_init+0x6c>)
 8001172:	4a08      	ldr	r2, [pc, #32]	; (8001194 <dma_init+0x78>)
 8001174:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001178:	bf00      	nop
 800117a:	46bd      	mov	sp, r7
 800117c:	bc80      	pop	{r7}
 800117e:	4770      	bx	lr
 8001180:	40020000 	.word	0x40020000
 8001184:	40028000 	.word	0x40028000
 8001188:	20000000 	.word	0x20000000
 800118c:	40088018 	.word	0x40088018
 8001190:	20000204 	.word	0x20000204
 8001194:	ae000011 	.word	0xae000011

08001198 <adc_dma_init>:
 8001198:	b580      	push	{r7, lr}
 800119a:	af00      	add	r7, sp, #0
 800119c:	f7ff ff96 	bl	80010cc <adc_init>
 80011a0:	f7ff ffbc 	bl	800111c <dma_init>
 80011a4:	bf00      	nop
 80011a6:	bd80      	pop	{r7, pc}

080011a8 <adc_dma_start>:
 80011a8:	b480      	push	{r7}
 80011aa:	af00      	add	r7, sp, #0
 80011ac:	4a06      	ldr	r2, [pc, #24]	; (80011c8 <adc_dma_start+0x20>)
 80011ae:	4b06      	ldr	r3, [pc, #24]	; (80011c8 <adc_dma_start+0x20>)
 80011b0:	681b      	ldr	r3, [r3, #0]
 80011b2:	f043 0308 	orr.w	r3, r3, #8
 80011b6:	6013      	str	r3, [r2, #0]
 80011b8:	4b04      	ldr	r3, [pc, #16]	; (80011cc <adc_dma_start+0x24>)
 80011ba:	f44f 7280 	mov.w	r2, #256	; 0x100
 80011be:	629a      	str	r2, [r3, #40]	; 0x28
 80011c0:	bf00      	nop
 80011c2:	46bd      	mov	sp, r7
 80011c4:	bc80      	pop	{r7}
 80011c6:	4770      	bx	lr
 80011c8:	40088000 	.word	0x40088000
 80011cc:	40028000 	.word	0x40028000

080011d0 <adc_dma_wait>:
 80011d0:	b480      	push	{r7}
 80011d2:	af00      	add	r7, sp, #0
 80011d4:	bf00      	nop
 80011d6:	4b0a      	ldr	r3, [pc, #40]	; (8001200 <adc_dma_wait+0x30>)
 80011d8:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80011dc:	f003 0307 	and.w	r3, r3, #7
 80011e0:	2b00      	cmp	r3, #0
 80011e2:	d1f8      	bne.n	80011d6 <adc_dma_wait+0x6>
 80011e4:	4a07      	ldr	r2, [pc, #28]	; (8001204 <adc_dma_wait+0x34>)
 80011e6:	4b07      	ldr	r3, [pc, #28]	; (8001204 <adc_dma_wait+0x34>)
 80011e8:	681b      	ldr	r3, [r3, #0]
 80011ea:	f023 0308 	bic.w	r3, r3, #8
 80011ee:	6013      	str	r3, [r2, #0]
 80011f0:	4b03      	ldr	r3, [pc, #12]	; (8001200 <adc_dma_wait+0x30>)
 80011f2:	4a05      	ldr	r2, [pc, #20]	; (8001208 <adc_dma_wait+0x38>)
 80011f4:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80011f8:	bf00      	nop
 80011fa:	46bd      	mov	sp, r7
 80011fc:	bc80      	pop	{r7}
 80011fe:	4770      	bx	lr
 8001200:	20000000 	.word	0x20000000
 8001204:	40088000 	.word	0x40088000
 8001208:	ae000011 	.word	0xae000011

0800120c <NVIC_EnableIRQ>:
 800120c:	b480      	push	{r7}
 800120e:	b083      	sub	sp, #12
 8001210:	af00      	add	r7, sp, #0
 8001212:	4603      	mov	r3, r0
 8001214:	71fb      	strb	r3, [r7, #7]
 8001216:	4908      	ldr	r1, [pc, #32]	; (8001238 <NVIC_EnableIRQ+0x2c>)
 8001218:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800121c:	095b      	lsrs	r3, r3, #5
 800121e:	79fa      	ldrb	r2, [r7, #7]
 8001220:	f002 021f 	and.w	r2, r2, #31
 8001224:	2001      	movs	r0, #1
 8001226:	fa00 f202 	lsl.w	r2, r0, r2
 800122a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800122e:	bf00      	nop
 8001230:	370c      	adds	r7, #12
 8001232:	46bd      	mov	sp, r7
 8001234:	bc80      	pop	{r7}
 8001236:	4770      	bx	lr
 8001238:	e000e100 	.word	0xe000e100

0800123c <PortConfig>:
 800123c:	b480      	push	{r7}
 800123e:	af00      	add	r7, sp, #0
 8001240:	4a5b      	ldr	r2, [pc, #364]	; (80013b0 <PortConfig+0x174>)
 8001242:	4b5b      	ldr	r3, [pc, #364]	; (80013b0 <PortConfig+0x174>)
 8001244:	69db      	ldr	r3, [r3, #28]
 8001246:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800124a:	61d3      	str	r3, [r2, #28]
 800124c:	4b59      	ldr	r3, [pc, #356]	; (80013b4 <PortConfig+0x178>)
 800124e:	2200      	movs	r2, #0
 8001250:	609a      	str	r2, [r3, #8]
 8001252:	4b58      	ldr	r3, [pc, #352]	; (80013b4 <PortConfig+0x178>)
 8001254:	2200      	movs	r2, #0
 8001256:	601a      	str	r2, [r3, #0]
 8001258:	4a56      	ldr	r2, [pc, #344]	; (80013b4 <PortConfig+0x178>)
 800125a:	4b56      	ldr	r3, [pc, #344]	; (80013b4 <PortConfig+0x178>)
 800125c:	685b      	ldr	r3, [r3, #4]
 800125e:	f023 0308 	bic.w	r3, r3, #8
 8001262:	6053      	str	r3, [r2, #4]
 8001264:	4a53      	ldr	r2, [pc, #332]	; (80013b4 <PortConfig+0x178>)
 8001266:	4b53      	ldr	r3, [pc, #332]	; (80013b4 <PortConfig+0x178>)
 8001268:	68db      	ldr	r3, [r3, #12]
 800126a:	f043 0308 	orr.w	r3, r3, #8
 800126e:	60d3      	str	r3, [r2, #12]
 8001270:	4b50      	ldr	r3, [pc, #320]	; (80013b4 <PortConfig+0x178>)
 8001272:	2280      	movs	r2, #128	; 0x80
 8001274:	609a      	str	r2, [r3, #8]
 8001276:	4a4e      	ldr	r2, [pc, #312]	; (80013b0 <PortConfig+0x174>)
 8001278:	4b4d      	ldr	r3, [pc, #308]	; (80013b0 <PortConfig+0x174>)
 800127a:	69db      	ldr	r3, [r3, #28]
 800127c:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 8001280:	61d3      	str	r3, [r2, #28]
 8001282:	4a4d      	ldr	r2, [pc, #308]	; (80013b8 <PortConfig+0x17c>)
 8001284:	4b4c      	ldr	r3, [pc, #304]	; (80013b8 <PortConfig+0x17c>)
 8001286:	689b      	ldr	r3, [r3, #8]
 8001288:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
 800128c:	6093      	str	r3, [r2, #8]
 800128e:	4a4a      	ldr	r2, [pc, #296]	; (80013b8 <PortConfig+0x17c>)
 8001290:	4b49      	ldr	r3, [pc, #292]	; (80013b8 <PortConfig+0x17c>)
 8001292:	689b      	ldr	r3, [r3, #8]
 8001294:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
 8001298:	6093      	str	r3, [r2, #8]
 800129a:	4a47      	ldr	r2, [pc, #284]	; (80013b8 <PortConfig+0x17c>)
 800129c:	4b46      	ldr	r3, [pc, #280]	; (80013b8 <PortConfig+0x17c>)
 800129e:	68db      	ldr	r3, [r3, #12]
 80012a0:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
 80012a4:	60d3      	str	r3, [r2, #12]
 80012a6:	4a44      	ldr	r2, [pc, #272]	; (80013b8 <PortConfig+0x17c>)
 80012a8:	4b43      	ldr	r3, [pc, #268]	; (80013b8 <PortConfig+0x17c>)
 80012aa:	699b      	ldr	r3, [r3, #24]
 80012ac:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
 80012b0:	6193      	str	r3, [r2, #24]
 80012b2:	4a41      	ldr	r2, [pc, #260]	; (80013b8 <PortConfig+0x17c>)
 80012b4:	4b40      	ldr	r3, [pc, #256]	; (80013b8 <PortConfig+0x17c>)
 80012b6:	685b      	ldr	r3, [r3, #4]
 80012b8:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80012bc:	6053      	str	r3, [r2, #4]
 80012be:	4a3e      	ldr	r2, [pc, #248]	; (80013b8 <PortConfig+0x17c>)
 80012c0:	4b3d      	ldr	r3, [pc, #244]	; (80013b8 <PortConfig+0x17c>)
 80012c2:	685b      	ldr	r3, [r3, #4]
 80012c4:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80012c8:	6053      	str	r3, [r2, #4]
 80012ca:	4a3b      	ldr	r2, [pc, #236]	; (80013b8 <PortConfig+0x17c>)
 80012cc:	4b3a      	ldr	r3, [pc, #232]	; (80013b8 <PortConfig+0x17c>)
 80012ce:	689b      	ldr	r3, [r3, #8]
 80012d0:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
 80012d4:	6093      	str	r3, [r2, #8]
 80012d6:	4a38      	ldr	r2, [pc, #224]	; (80013b8 <PortConfig+0x17c>)
 80012d8:	4b37      	ldr	r3, [pc, #220]	; (80013b8 <PortConfig+0x17c>)
 80012da:	689b      	ldr	r3, [r3, #8]
 80012dc:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
 80012e0:	6093      	str	r3, [r2, #8]
 80012e2:	4a35      	ldr	r2, [pc, #212]	; (80013b8 <PortConfig+0x17c>)
 80012e4:	4b34      	ldr	r3, [pc, #208]	; (80013b8 <PortConfig+0x17c>)
 80012e6:	68db      	ldr	r3, [r3, #12]
 80012e8:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 80012ec:	60d3      	str	r3, [r2, #12]
 80012ee:	4a30      	ldr	r2, [pc, #192]	; (80013b0 <PortConfig+0x174>)
 80012f0:	4b2f      	ldr	r3, [pc, #188]	; (80013b0 <PortConfig+0x174>)
 80012f2:	69db      	ldr	r3, [r3, #28]
 80012f4:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 80012f8:	61d3      	str	r3, [r2, #28]
 80012fa:	4b30      	ldr	r3, [pc, #192]	; (80013bc <PortConfig+0x180>)
 80012fc:	4a30      	ldr	r2, [pc, #192]	; (80013c0 <PortConfig+0x184>)
 80012fe:	609a      	str	r2, [r3, #8]
 8001300:	4b2e      	ldr	r3, [pc, #184]	; (80013bc <PortConfig+0x180>)
 8001302:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8001306:	60da      	str	r2, [r3, #12]
 8001308:	4b2c      	ldr	r3, [pc, #176]	; (80013bc <PortConfig+0x180>)
 800130a:	f04f 32ff 	mov.w	r2, #4294967295
 800130e:	619a      	str	r2, [r3, #24]
 8001310:	4b2a      	ldr	r3, [pc, #168]	; (80013bc <PortConfig+0x180>)
 8001312:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8001316:	605a      	str	r2, [r3, #4]
 8001318:	4a28      	ldr	r2, [pc, #160]	; (80013bc <PortConfig+0x180>)
 800131a:	4b28      	ldr	r3, [pc, #160]	; (80013bc <PortConfig+0x180>)
 800131c:	681b      	ldr	r3, [r3, #0]
 800131e:	f023 0303 	bic.w	r3, r3, #3
 8001322:	6013      	str	r3, [r2, #0]
 8001324:	4a25      	ldr	r2, [pc, #148]	; (80013bc <PortConfig+0x180>)
 8001326:	4b25      	ldr	r3, [pc, #148]	; (80013bc <PortConfig+0x180>)
 8001328:	681b      	ldr	r3, [r3, #0]
 800132a:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 800132e:	6013      	str	r3, [r2, #0]
 8001330:	4a1f      	ldr	r2, [pc, #124]	; (80013b0 <PortConfig+0x174>)
 8001332:	4b1f      	ldr	r3, [pc, #124]	; (80013b0 <PortConfig+0x174>)
 8001334:	69db      	ldr	r3, [r3, #28]
 8001336:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 800133a:	61d3      	str	r3, [r2, #28]
 800133c:	4b21      	ldr	r3, [pc, #132]	; (80013c4 <PortConfig+0x188>)
 800133e:	2200      	movs	r2, #0
 8001340:	609a      	str	r2, [r3, #8]
 8001342:	4a20      	ldr	r2, [pc, #128]	; (80013c4 <PortConfig+0x188>)
 8001344:	4b1f      	ldr	r3, [pc, #124]	; (80013c4 <PortConfig+0x188>)
 8001346:	685b      	ldr	r3, [r3, #4]
 8001348:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 800134c:	6053      	str	r3, [r2, #4]
 800134e:	4a1d      	ldr	r2, [pc, #116]	; (80013c4 <PortConfig+0x188>)
 8001350:	4b1c      	ldr	r3, [pc, #112]	; (80013c4 <PortConfig+0x188>)
 8001352:	68db      	ldr	r3, [r3, #12]
 8001354:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 8001358:	60d3      	str	r3, [r2, #12]
 800135a:	4a1a      	ldr	r2, [pc, #104]	; (80013c4 <PortConfig+0x188>)
 800135c:	4b19      	ldr	r3, [pc, #100]	; (80013c4 <PortConfig+0x188>)
 800135e:	699b      	ldr	r3, [r3, #24]
 8001360:	f043 4370 	orr.w	r3, r3, #4026531840	; 0xf0000000
 8001364:	6193      	str	r3, [r2, #24]
 8001366:	4a17      	ldr	r2, [pc, #92]	; (80013c4 <PortConfig+0x188>)
 8001368:	4b16      	ldr	r3, [pc, #88]	; (80013c4 <PortConfig+0x188>)
 800136a:	681b      	ldr	r3, [r3, #0]
 800136c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 8001370:	6013      	str	r3, [r2, #0]
 8001372:	4a0f      	ldr	r2, [pc, #60]	; (80013b0 <PortConfig+0x174>)
 8001374:	4b0e      	ldr	r3, [pc, #56]	; (80013b0 <PortConfig+0x174>)
 8001376:	69db      	ldr	r3, [r3, #28]
 8001378:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 800137c:	61d3      	str	r3, [r2, #28]
 800137e:	4a12      	ldr	r2, [pc, #72]	; (80013c8 <PortConfig+0x18c>)
 8001380:	4b11      	ldr	r3, [pc, #68]	; (80013c8 <PortConfig+0x18c>)
 8001382:	68db      	ldr	r3, [r3, #12]
 8001384:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 8001388:	f023 0301 	bic.w	r3, r3, #1
 800138c:	60d3      	str	r3, [r2, #12]
 800138e:	4a08      	ldr	r2, [pc, #32]	; (80013b0 <PortConfig+0x174>)
 8001390:	4b07      	ldr	r3, [pc, #28]	; (80013b0 <PortConfig+0x174>)
 8001392:	69db      	ldr	r3, [r3, #28]
 8001394:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8001398:	61d3      	str	r3, [r2, #28]
 800139a:	4a0c      	ldr	r2, [pc, #48]	; (80013cc <PortConfig+0x190>)
 800139c:	4b0b      	ldr	r3, [pc, #44]	; (80013cc <PortConfig+0x190>)
 800139e:	68db      	ldr	r3, [r3, #12]
 80013a0:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
 80013a4:	60d3      	str	r3, [r2, #12]
 80013a6:	bf00      	nop
 80013a8:	46bd      	mov	sp, r7
 80013aa:	bc80      	pop	{r7}
 80013ac:	4770      	bx	lr
 80013ae:	bf00      	nop
 80013b0:	40020000 	.word	0x40020000
 80013b4:	400a8000 	.word	0x400a8000
 80013b8:	400b0000 	.word	0x400b0000
 80013bc:	400b8000 	.word	0x400b8000
 80013c0:	000aaaa0 	.word	0x000aaaa0
 80013c4:	400e8000 	.word	0x400e8000
 80013c8:	400c8000 	.word	0x400c8000
 80013cc:	400c0000 	.word	0x400c0000

080013d0 <ClkConfig>:
 80013d0:	b480      	push	{r7}
 80013d2:	af00      	add	r7, sp, #0
 80013d4:	4a16      	ldr	r2, [pc, #88]	; (8001430 <ClkConfig+0x60>)
 80013d6:	4b16      	ldr	r3, [pc, #88]	; (8001430 <ClkConfig+0x60>)
 80013d8:	689b      	ldr	r3, [r3, #8]
 80013da:	f043 0301 	orr.w	r3, r3, #1
 80013de:	6093      	str	r3, [r2, #8]
 80013e0:	bf00      	nop
 80013e2:	4b13      	ldr	r3, [pc, #76]	; (8001430 <ClkConfig+0x60>)
 80013e4:	681b      	ldr	r3, [r3, #0]
 80013e6:	f003 0304 	and.w	r3, r3, #4
 80013ea:	2b00      	cmp	r3, #0
 80013ec:	d0f9      	beq.n	80013e2 <ClkConfig+0x12>
 80013ee:	4b10      	ldr	r3, [pc, #64]	; (8001430 <ClkConfig+0x60>)
 80013f0:	2206      	movs	r2, #6
 80013f2:	60da      	str	r2, [r3, #12]
 80013f4:	4b0e      	ldr	r3, [pc, #56]	; (8001430 <ClkConfig+0x60>)
 80013f6:	f640 1204 	movw	r2, #2308	; 0x904
 80013fa:	605a      	str	r2, [r3, #4]
 80013fc:	bf00      	nop
 80013fe:	4b0c      	ldr	r3, [pc, #48]	; (8001430 <ClkConfig+0x60>)
 8001400:	681b      	ldr	r3, [r3, #0]
 8001402:	f003 0302 	and.w	r3, r3, #2
 8001406:	2b00      	cmp	r3, #0
 8001408:	d0f9      	beq.n	80013fe <ClkConfig+0x2e>
 800140a:	4a09      	ldr	r2, [pc, #36]	; (8001430 <ClkConfig+0x60>)
 800140c:	4b08      	ldr	r3, [pc, #32]	; (8001430 <ClkConfig+0x60>)
 800140e:	68db      	ldr	r3, [r3, #12]
 8001410:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001414:	60d3      	str	r3, [r2, #12]
 8001416:	4a07      	ldr	r2, [pc, #28]	; (8001434 <ClkConfig+0x64>)
 8001418:	4b06      	ldr	r3, [pc, #24]	; (8001434 <ClkConfig+0x64>)
 800141a:	681b      	ldr	r3, [r3, #0]
 800141c:	f043 0320 	orr.w	r3, r3, #32
 8001420:	6013      	str	r3, [r2, #0]
 8001422:	4b05      	ldr	r3, [pc, #20]	; (8001438 <ClkConfig+0x68>)
 8001424:	2200      	movs	r2, #0
 8001426:	601a      	str	r2, [r3, #0]
 8001428:	bf00      	nop
 800142a:	46bd      	mov	sp, r7
 800142c:	bc80      	pop	{r7}
 800142e:	4770      	bx	lr
 8001430:	40020000 	.word	0x40020000
 8001434:	40018000 	.word	0x40018000
 8001438:	2000128c 	.word	0x2000128c

0800143c <TimerConfig>:
 800143c:	b580      	push	{r7, lr}
 800143e:	af00      	add	r7, sp, #0
 8001440:	4a8a      	ldr	r2, [pc, #552]	; (800166c <TimerConfig+0x230>)
 8001442:	4b8a      	ldr	r3, [pc, #552]	; (800166c <TimerConfig+0x230>)
 8001444:	69db      	ldr	r3, [r3, #28]
 8001446:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 800144a:	61d3      	str	r3, [r2, #28]
 800144c:	4a87      	ldr	r2, [pc, #540]	; (800166c <TimerConfig+0x230>)
 800144e:	4b87      	ldr	r3, [pc, #540]	; (800166c <TimerConfig+0x230>)
 8001450:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001452:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8001456:	6253      	str	r3, [r2, #36]	; 0x24
 8001458:	4a84      	ldr	r2, [pc, #528]	; (800166c <TimerConfig+0x230>)
 800145a:	4b84      	ldr	r3, [pc, #528]	; (800166c <TimerConfig+0x230>)
 800145c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800145e:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8001462:	6253      	str	r3, [r2, #36]	; 0x24
 8001464:	4b82      	ldr	r3, [pc, #520]	; (8001670 <TimerConfig+0x234>)
 8001466:	2200      	movs	r2, #0
 8001468:	601a      	str	r2, [r3, #0]
 800146a:	4b81      	ldr	r3, [pc, #516]	; (8001670 <TimerConfig+0x234>)
 800146c:	224f      	movs	r2, #79	; 0x4f
 800146e:	605a      	str	r2, [r3, #4]
 8001470:	4b7f      	ldr	r3, [pc, #508]	; (8001670 <TimerConfig+0x234>)
 8001472:	f240 32e7 	movw	r2, #999	; 0x3e7
 8001476:	609a      	str	r2, [r3, #8]
 8001478:	4a7d      	ldr	r2, [pc, #500]	; (8001670 <TimerConfig+0x234>)
 800147a:	4b7d      	ldr	r3, [pc, #500]	; (8001670 <TimerConfig+0x234>)
 800147c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800147e:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001482:	6253      	str	r3, [r2, #36]	; 0x24
 8001484:	4a7a      	ldr	r2, [pc, #488]	; (8001670 <TimerConfig+0x234>)
 8001486:	4b7a      	ldr	r3, [pc, #488]	; (8001670 <TimerConfig+0x234>)
 8001488:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 800148a:	f043 0302 	orr.w	r3, r3, #2
 800148e:	6593      	str	r3, [r2, #88]	; 0x58
 8001490:	4b77      	ldr	r3, [pc, #476]	; (8001670 <TimerConfig+0x234>)
 8001492:	2201      	movs	r2, #1
 8001494:	60da      	str	r2, [r3, #12]
 8001496:	4a75      	ldr	r2, [pc, #468]	; (800166c <TimerConfig+0x230>)
 8001498:	4b74      	ldr	r3, [pc, #464]	; (800166c <TimerConfig+0x230>)
 800149a:	69db      	ldr	r3, [r3, #28]
 800149c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80014a0:	61d3      	str	r3, [r2, #28]
 80014a2:	4a72      	ldr	r2, [pc, #456]	; (800166c <TimerConfig+0x230>)
 80014a4:	4b71      	ldr	r3, [pc, #452]	; (800166c <TimerConfig+0x230>)
 80014a6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80014a8:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
 80014ac:	6253      	str	r3, [r2, #36]	; 0x24
 80014ae:	4a6f      	ldr	r2, [pc, #444]	; (800166c <TimerConfig+0x230>)
 80014b0:	4b6e      	ldr	r3, [pc, #440]	; (800166c <TimerConfig+0x230>)
 80014b2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80014b4:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 80014b8:	6253      	str	r3, [r2, #36]	; 0x24
 80014ba:	4b6e      	ldr	r3, [pc, #440]	; (8001674 <TimerConfig+0x238>)
 80014bc:	2200      	movs	r2, #0
 80014be:	601a      	str	r2, [r3, #0]
 80014c0:	4b6c      	ldr	r3, [pc, #432]	; (8001674 <TimerConfig+0x238>)
 80014c2:	2202      	movs	r2, #2
 80014c4:	605a      	str	r2, [r3, #4]
 80014c6:	4b6b      	ldr	r3, [pc, #428]	; (8001674 <TimerConfig+0x238>)
 80014c8:	f240 32ff 	movw	r2, #1023	; 0x3ff
 80014cc:	609a      	str	r2, [r3, #8]
 80014ce:	4b69      	ldr	r3, [pc, #420]	; (8001674 <TimerConfig+0x238>)
 80014d0:	f44f 7200 	mov.w	r2, #512	; 0x200
 80014d4:	611a      	str	r2, [r3, #16]
 80014d6:	4b67      	ldr	r3, [pc, #412]	; (8001674 <TimerConfig+0x238>)
 80014d8:	f44f 7200 	mov.w	r2, #512	; 0x200
 80014dc:	615a      	str	r2, [r3, #20]
 80014de:	4b65      	ldr	r3, [pc, #404]	; (8001674 <TimerConfig+0x238>)
 80014e0:	f44f 7200 	mov.w	r2, #512	; 0x200
 80014e4:	619a      	str	r2, [r3, #24]
 80014e6:	4a63      	ldr	r2, [pc, #396]	; (8001674 <TimerConfig+0x238>)
 80014e8:	4b62      	ldr	r3, [pc, #392]	; (8001674 <TimerConfig+0x238>)
 80014ea:	6a1b      	ldr	r3, [r3, #32]
 80014ec:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 80014f0:	6213      	str	r3, [r2, #32]
 80014f2:	4a60      	ldr	r2, [pc, #384]	; (8001674 <TimerConfig+0x238>)
 80014f4:	4b5f      	ldr	r3, [pc, #380]	; (8001674 <TimerConfig+0x238>)
 80014f6:	6a1b      	ldr	r3, [r3, #32]
 80014f8:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 80014fc:	6213      	str	r3, [r2, #32]
 80014fe:	4a5d      	ldr	r2, [pc, #372]	; (8001674 <TimerConfig+0x238>)
 8001500:	4b5c      	ldr	r3, [pc, #368]	; (8001674 <TimerConfig+0x238>)
 8001502:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001504:	f023 030f 	bic.w	r3, r3, #15
 8001508:	6313      	str	r3, [r2, #48]	; 0x30
 800150a:	4a5a      	ldr	r2, [pc, #360]	; (8001674 <TimerConfig+0x238>)
 800150c:	4b59      	ldr	r3, [pc, #356]	; (8001674 <TimerConfig+0x238>)
 800150e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001510:	f043 030c 	orr.w	r3, r3, #12
 8001514:	6313      	str	r3, [r2, #48]	; 0x30
 8001516:	4a57      	ldr	r2, [pc, #348]	; (8001674 <TimerConfig+0x238>)
 8001518:	4b56      	ldr	r3, [pc, #344]	; (8001674 <TimerConfig+0x238>)
 800151a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800151c:	f043 0301 	orr.w	r3, r3, #1
 8001520:	6313      	str	r3, [r2, #48]	; 0x30
 8001522:	4a54      	ldr	r2, [pc, #336]	; (8001674 <TimerConfig+0x238>)
 8001524:	4b53      	ldr	r3, [pc, #332]	; (8001674 <TimerConfig+0x238>)
 8001526:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001528:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 800152c:	6313      	str	r3, [r2, #48]	; 0x30
 800152e:	4a51      	ldr	r2, [pc, #324]	; (8001674 <TimerConfig+0x238>)
 8001530:	4b50      	ldr	r3, [pc, #320]	; (8001674 <TimerConfig+0x238>)
 8001532:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001534:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 8001538:	6313      	str	r3, [r2, #48]	; 0x30
 800153a:	4a4e      	ldr	r2, [pc, #312]	; (8001674 <TimerConfig+0x238>)
 800153c:	4b4d      	ldr	r3, [pc, #308]	; (8001674 <TimerConfig+0x238>)
 800153e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001540:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001544:	6313      	str	r3, [r2, #48]	; 0x30
 8001546:	4a4b      	ldr	r2, [pc, #300]	; (8001674 <TimerConfig+0x238>)
 8001548:	4b4a      	ldr	r3, [pc, #296]	; (8001674 <TimerConfig+0x238>)
 800154a:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 800154c:	f043 0308 	orr.w	r3, r3, #8
 8001550:	6613      	str	r3, [r2, #96]	; 0x60
 8001552:	4a48      	ldr	r2, [pc, #288]	; (8001674 <TimerConfig+0x238>)
 8001554:	4b47      	ldr	r3, [pc, #284]	; (8001674 <TimerConfig+0x238>)
 8001556:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001558:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 800155c:	6253      	str	r3, [r2, #36]	; 0x24
 800155e:	4a45      	ldr	r2, [pc, #276]	; (8001674 <TimerConfig+0x238>)
 8001560:	4b44      	ldr	r3, [pc, #272]	; (8001674 <TimerConfig+0x238>)
 8001562:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001564:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 8001568:	6253      	str	r3, [r2, #36]	; 0x24
 800156a:	4a42      	ldr	r2, [pc, #264]	; (8001674 <TimerConfig+0x238>)
 800156c:	4b41      	ldr	r3, [pc, #260]	; (8001674 <TimerConfig+0x238>)
 800156e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001570:	f023 030f 	bic.w	r3, r3, #15
 8001574:	6353      	str	r3, [r2, #52]	; 0x34
 8001576:	4a3f      	ldr	r2, [pc, #252]	; (8001674 <TimerConfig+0x238>)
 8001578:	4b3e      	ldr	r3, [pc, #248]	; (8001674 <TimerConfig+0x238>)
 800157a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800157c:	f043 030c 	orr.w	r3, r3, #12
 8001580:	6353      	str	r3, [r2, #52]	; 0x34
 8001582:	4a3c      	ldr	r2, [pc, #240]	; (8001674 <TimerConfig+0x238>)
 8001584:	4b3b      	ldr	r3, [pc, #236]	; (8001674 <TimerConfig+0x238>)
 8001586:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001588:	f043 0301 	orr.w	r3, r3, #1
 800158c:	6353      	str	r3, [r2, #52]	; 0x34
 800158e:	4a39      	ldr	r2, [pc, #228]	; (8001674 <TimerConfig+0x238>)
 8001590:	4b38      	ldr	r3, [pc, #224]	; (8001674 <TimerConfig+0x238>)
 8001592:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001594:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8001598:	6353      	str	r3, [r2, #52]	; 0x34
 800159a:	4a36      	ldr	r2, [pc, #216]	; (8001674 <TimerConfig+0x238>)
 800159c:	4b35      	ldr	r3, [pc, #212]	; (8001674 <TimerConfig+0x238>)
 800159e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80015a0:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 80015a4:	6353      	str	r3, [r2, #52]	; 0x34
 80015a6:	4a33      	ldr	r2, [pc, #204]	; (8001674 <TimerConfig+0x238>)
 80015a8:	4b32      	ldr	r3, [pc, #200]	; (8001674 <TimerConfig+0x238>)
 80015aa:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80015ac:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80015b0:	6353      	str	r3, [r2, #52]	; 0x34
 80015b2:	4a30      	ldr	r2, [pc, #192]	; (8001674 <TimerConfig+0x238>)
 80015b4:	4b2f      	ldr	r3, [pc, #188]	; (8001674 <TimerConfig+0x238>)
 80015b6:	6e5b      	ldr	r3, [r3, #100]	; 0x64
 80015b8:	f043 0308 	orr.w	r3, r3, #8
 80015bc:	6653      	str	r3, [r2, #100]	; 0x64
 80015be:	4a2d      	ldr	r2, [pc, #180]	; (8001674 <TimerConfig+0x238>)
 80015c0:	4b2c      	ldr	r3, [pc, #176]	; (8001674 <TimerConfig+0x238>)
 80015c2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80015c4:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 80015c8:	6293      	str	r3, [r2, #40]	; 0x28
 80015ca:	4a2a      	ldr	r2, [pc, #168]	; (8001674 <TimerConfig+0x238>)
 80015cc:	4b29      	ldr	r3, [pc, #164]	; (8001674 <TimerConfig+0x238>)
 80015ce:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80015d0:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 80015d4:	6293      	str	r3, [r2, #40]	; 0x28
 80015d6:	4a27      	ldr	r2, [pc, #156]	; (8001674 <TimerConfig+0x238>)
 80015d8:	4b26      	ldr	r3, [pc, #152]	; (8001674 <TimerConfig+0x238>)
 80015da:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80015dc:	f023 030f 	bic.w	r3, r3, #15
 80015e0:	6393      	str	r3, [r2, #56]	; 0x38
 80015e2:	4a24      	ldr	r2, [pc, #144]	; (8001674 <TimerConfig+0x238>)
 80015e4:	4b23      	ldr	r3, [pc, #140]	; (8001674 <TimerConfig+0x238>)
 80015e6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80015e8:	f043 030c 	orr.w	r3, r3, #12
 80015ec:	6393      	str	r3, [r2, #56]	; 0x38
 80015ee:	4a21      	ldr	r2, [pc, #132]	; (8001674 <TimerConfig+0x238>)
 80015f0:	4b20      	ldr	r3, [pc, #128]	; (8001674 <TimerConfig+0x238>)
 80015f2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80015f4:	f043 0301 	orr.w	r3, r3, #1
 80015f8:	6393      	str	r3, [r2, #56]	; 0x38
 80015fa:	4a1e      	ldr	r2, [pc, #120]	; (8001674 <TimerConfig+0x238>)
 80015fc:	4b1d      	ldr	r3, [pc, #116]	; (8001674 <TimerConfig+0x238>)
 80015fe:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001600:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8001604:	6393      	str	r3, [r2, #56]	; 0x38
 8001606:	4a1b      	ldr	r2, [pc, #108]	; (8001674 <TimerConfig+0x238>)
 8001608:	4b1a      	ldr	r3, [pc, #104]	; (8001674 <TimerConfig+0x238>)
 800160a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 800160c:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 8001610:	6393      	str	r3, [r2, #56]	; 0x38
 8001612:	4a18      	ldr	r2, [pc, #96]	; (8001674 <TimerConfig+0x238>)
 8001614:	4b17      	ldr	r3, [pc, #92]	; (8001674 <TimerConfig+0x238>)
 8001616:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001618:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800161c:	6393      	str	r3, [r2, #56]	; 0x38
 800161e:	4a15      	ldr	r2, [pc, #84]	; (8001674 <TimerConfig+0x238>)
 8001620:	4b14      	ldr	r3, [pc, #80]	; (8001674 <TimerConfig+0x238>)
 8001622:	6e9b      	ldr	r3, [r3, #104]	; 0x68
 8001624:	f043 0308 	orr.w	r3, r3, #8
 8001628:	6693      	str	r3, [r2, #104]	; 0x68
 800162a:	4a12      	ldr	r2, [pc, #72]	; (8001674 <TimerConfig+0x238>)
 800162c:	4b11      	ldr	r3, [pc, #68]	; (8001674 <TimerConfig+0x238>)
 800162e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001630:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 8001634:	6413      	str	r3, [r2, #64]	; 0x40
 8001636:	4a0f      	ldr	r2, [pc, #60]	; (8001674 <TimerConfig+0x238>)
 8001638:	4b0e      	ldr	r3, [pc, #56]	; (8001674 <TimerConfig+0x238>)
 800163a:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800163c:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 8001640:	6453      	str	r3, [r2, #68]	; 0x44
 8001642:	4a0c      	ldr	r2, [pc, #48]	; (8001674 <TimerConfig+0x238>)
 8001644:	4b0b      	ldr	r3, [pc, #44]	; (8001674 <TimerConfig+0x238>)
 8001646:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 8001648:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 800164c:	6493      	str	r3, [r2, #72]	; 0x48
 800164e:	4a09      	ldr	r2, [pc, #36]	; (8001674 <TimerConfig+0x238>)
 8001650:	4b08      	ldr	r3, [pc, #32]	; (8001674 <TimerConfig+0x238>)
 8001652:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8001654:	f043 0302 	orr.w	r3, r3, #2
 8001658:	6593      	str	r3, [r2, #88]	; 0x58
 800165a:	2010      	movs	r0, #16
 800165c:	f7ff fdd6 	bl	800120c <NVIC_EnableIRQ>
 8001660:	4b04      	ldr	r3, [pc, #16]	; (8001674 <TimerConfig+0x238>)
 8001662:	2201      	movs	r2, #1
 8001664:	60da      	str	r2, [r3, #12]
 8001666:	bf00      	nop
 8001668:	bd80      	pop	{r7, pc}
 800166a:	bf00      	nop
 800166c:	40020000 	.word	0x40020000
 8001670:	40070000 	.word	0x40070000
 8001674:	40080000 	.word	0x40080000

08001678 <uart_init>:
 8001678:	b480      	push	{r7}
 800167a:	af00      	add	r7, sp, #0
 800167c:	4b22      	ldr	r3, [pc, #136]	; (8001708 <uart_init+0x90>)
 800167e:	2200      	movs	r2, #0
 8001680:	601a      	str	r2, [r3, #0]
 8001682:	4a22      	ldr	r2, [pc, #136]	; (800170c <uart_init+0x94>)
 8001684:	4b21      	ldr	r3, [pc, #132]	; (800170c <uart_init+0x94>)
 8001686:	69db      	ldr	r3, [r3, #28]
 8001688:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800168c:	61d3      	str	r3, [r2, #28]
 800168e:	4a1f      	ldr	r2, [pc, #124]	; (800170c <uart_init+0x94>)
 8001690:	4b1e      	ldr	r3, [pc, #120]	; (800170c <uart_init+0x94>)
 8001692:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001694:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8001698:	6293      	str	r3, [r2, #40]	; 0x28
 800169a:	4b1d      	ldr	r3, [pc, #116]	; (8001710 <uart_init+0x98>)
 800169c:	2204      	movs	r2, #4
 800169e:	625a      	str	r2, [r3, #36]	; 0x24
 80016a0:	4b1b      	ldr	r3, [pc, #108]	; (8001710 <uart_init+0x98>)
 80016a2:	2200      	movs	r2, #0
 80016a4:	629a      	str	r2, [r3, #40]	; 0x28
 80016a6:	4a1a      	ldr	r2, [pc, #104]	; (8001710 <uart_init+0x98>)
 80016a8:	4b19      	ldr	r3, [pc, #100]	; (8001710 <uart_init+0x98>)
 80016aa:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80016ac:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 80016b0:	6353      	str	r3, [r2, #52]	; 0x34
 80016b2:	4a17      	ldr	r2, [pc, #92]	; (8001710 <uart_init+0x98>)
 80016b4:	4b16      	ldr	r3, [pc, #88]	; (8001710 <uart_init+0x98>)
 80016b6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80016b8:	f043 0312 	orr.w	r3, r3, #18
 80016bc:	6353      	str	r3, [r2, #52]	; 0x34
 80016be:	4a14      	ldr	r2, [pc, #80]	; (8001710 <uart_init+0x98>)
 80016c0:	4b13      	ldr	r3, [pc, #76]	; (8001710 <uart_init+0x98>)
 80016c2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80016c4:	f043 0310 	orr.w	r3, r3, #16
 80016c8:	62d3      	str	r3, [r2, #44]	; 0x2c
 80016ca:	4a11      	ldr	r2, [pc, #68]	; (8001710 <uart_init+0x98>)
 80016cc:	4b10      	ldr	r3, [pc, #64]	; (8001710 <uart_init+0x98>)
 80016ce:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80016d0:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 80016d4:	62d3      	str	r3, [r2, #44]	; 0x2c
 80016d6:	4a0e      	ldr	r2, [pc, #56]	; (8001710 <uart_init+0x98>)
 80016d8:	4b0d      	ldr	r3, [pc, #52]	; (8001710 <uart_init+0x98>)
 80016da:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80016dc:	f443 7340 	orr.w	r3, r3, #768	; 0x300
 80016e0:	f043 0301 	orr.w	r3, r3, #1
 80016e4:	6313      	str	r3, [r2, #48]	; 0x30
 80016e6:	4a0a      	ldr	r2, [pc, #40]	; (8001710 <uart_init+0x98>)
 80016e8:	4b09      	ldr	r3, [pc, #36]	; (8001710 <uart_init+0x98>)
 80016ea:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80016ec:	f043 0310 	orr.w	r3, r3, #16
 80016f0:	6393      	str	r3, [r2, #56]	; 0x38
 80016f2:	4a07      	ldr	r2, [pc, #28]	; (8001710 <uart_init+0x98>)
 80016f4:	4b06      	ldr	r3, [pc, #24]	; (8001710 <uart_init+0x98>)
 80016f6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80016f8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80016fc:	6393      	str	r3, [r2, #56]	; 0x38
 80016fe:	bf00      	nop
 8001700:	46bd      	mov	sp, r7
 8001702:	bc80      	pop	{r7}
 8001704:	4770      	bx	lr
 8001706:	bf00      	nop
 8001708:	200012a0 	.word	0x200012a0
 800170c:	40020000 	.word	0x40020000
 8001710:	40030000 	.word	0x40030000

08001714 <system_init>:
 8001714:	b580      	push	{r7, lr}
 8001716:	af00      	add	r7, sp, #0
 8001718:	f7ff fe5a 	bl	80013d0 <ClkConfig>
 800171c:	f7ff fd8e 	bl	800123c <PortConfig>
 8001720:	f7ff fe8c 	bl	800143c <TimerConfig>
 8001724:	f7ff ffa8 	bl	8001678 <uart_init>
 8001728:	bf00      	nop
 800172a:	bd80      	pop	{r7, pc}

0800172c <SysTick_Handler>:
 800172c:	b480      	push	{r7}
 800172e:	af00      	add	r7, sp, #0
 8001730:	4b04      	ldr	r3, [pc, #16]	; (8001744 <SysTick_Handler+0x18>)
 8001732:	681b      	ldr	r3, [r3, #0]
 8001734:	3301      	adds	r3, #1
 8001736:	4a03      	ldr	r2, [pc, #12]	; (8001744 <SysTick_Handler+0x18>)
 8001738:	6013      	str	r3, [r2, #0]
 800173a:	bf00      	nop
 800173c:	46bd      	mov	sp, r7
 800173e:	bc80      	pop	{r7}
 8001740:	4770      	bx	lr
 8001742:	bf00      	nop
 8001744:	2000128c 	.word	0x2000128c

08001748 <UART1_IRQHandler>:
 8001748:	b480      	push	{r7}
 800174a:	b083      	sub	sp, #12
 800174c:	af00      	add	r7, sp, #0
 800174e:	4b1d      	ldr	r3, [pc, #116]	; (80017c4 <UART1_IRQHandler+0x7c>)
 8001750:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001752:	f003 0310 	and.w	r3, r3, #16
 8001756:	2b00      	cmp	r3, #0
 8001758:	d01f      	beq.n	800179a <UART1_IRQHandler+0x52>
 800175a:	e002      	b.n	8001762 <UART1_IRQHandler+0x1a>
 800175c:	4b19      	ldr	r3, [pc, #100]	; (80017c4 <UART1_IRQHandler+0x7c>)
 800175e:	681b      	ldr	r3, [r3, #0]
 8001760:	71fb      	strb	r3, [r7, #7]
 8001762:	4b18      	ldr	r3, [pc, #96]	; (80017c4 <UART1_IRQHandler+0x7c>)
 8001764:	699b      	ldr	r3, [r3, #24]
 8001766:	f003 0310 	and.w	r3, r3, #16
 800176a:	2b00      	cmp	r3, #0
 800176c:	d0f6      	beq.n	800175c <UART1_IRQHandler+0x14>
 800176e:	4b16      	ldr	r3, [pc, #88]	; (80017c8 <UART1_IRQHandler+0x80>)
 8001770:	681b      	ldr	r3, [r3, #0]
 8001772:	80bb      	strh	r3, [r7, #4]
 8001774:	4b14      	ldr	r3, [pc, #80]	; (80017c8 <UART1_IRQHandler+0x80>)
 8001776:	689b      	ldr	r3, [r3, #8]
 8001778:	085b      	lsrs	r3, r3, #1
 800177a:	807b      	strh	r3, [r7, #2]
 800177c:	88ba      	ldrh	r2, [r7, #4]
 800177e:	887b      	ldrh	r3, [r7, #2]
 8001780:	429a      	cmp	r2, r3
 8001782:	d205      	bcs.n	8001790 <UART1_IRQHandler+0x48>
 8001784:	4a10      	ldr	r2, [pc, #64]	; (80017c8 <UART1_IRQHandler+0x80>)
 8001786:	4b10      	ldr	r3, [pc, #64]	; (80017c8 <UART1_IRQHandler+0x80>)
 8001788:	681b      	ldr	r3, [r3, #0]
 800178a:	3b01      	subs	r3, #1
 800178c:	6013      	str	r3, [r2, #0]
 800178e:	e004      	b.n	800179a <UART1_IRQHandler+0x52>
 8001790:	4a0d      	ldr	r2, [pc, #52]	; (80017c8 <UART1_IRQHandler+0x80>)
 8001792:	4b0d      	ldr	r3, [pc, #52]	; (80017c8 <UART1_IRQHandler+0x80>)
 8001794:	681b      	ldr	r3, [r3, #0]
 8001796:	3301      	adds	r3, #1
 8001798:	6013      	str	r3, [r2, #0]
 800179a:	4b0a      	ldr	r3, [pc, #40]	; (80017c4 <UART1_IRQHandler+0x7c>)
 800179c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800179e:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80017a2:	2b00      	cmp	r3, #0
 80017a4:	d009      	beq.n	80017ba <UART1_IRQHandler+0x72>
 80017a6:	e002      	b.n	80017ae <UART1_IRQHandler+0x66>
 80017a8:	4b06      	ldr	r3, [pc, #24]	; (80017c4 <UART1_IRQHandler+0x7c>)
 80017aa:	681b      	ldr	r3, [r3, #0]
 80017ac:	707b      	strb	r3, [r7, #1]
 80017ae:	4b05      	ldr	r3, [pc, #20]	; (80017c4 <UART1_IRQHandler+0x7c>)
 80017b0:	699b      	ldr	r3, [r3, #24]
 80017b2:	f003 0310 	and.w	r3, r3, #16
 80017b6:	2b00      	cmp	r3, #0
 80017b8:	d0f6      	beq.n	80017a8 <UART1_IRQHandler+0x60>
 80017ba:	bf00      	nop
 80017bc:	370c      	adds	r7, #12
 80017be:	46bd      	mov	sp, r7
 80017c0:	bc80      	pop	{r7}
 80017c2:	4770      	bx	lr
 80017c4:	40030000 	.word	0x40030000
 80017c8:	40070000 	.word	0x40070000

080017cc <handler_reset>:
 80017cc:	b580      	push	{r7, lr}
 80017ce:	b082      	sub	sp, #8
 80017d0:	af00      	add	r7, sp, #0
 80017d2:	4b11      	ldr	r3, [pc, #68]	; (8001818 <handler_reset+0x4c>)
 80017d4:	607b      	str	r3, [r7, #4]
 80017d6:	4b11      	ldr	r3, [pc, #68]	; (800181c <handler_reset+0x50>)
 80017d8:	603b      	str	r3, [r7, #0]
 80017da:	e007      	b.n	80017ec <handler_reset+0x20>
 80017dc:	683b      	ldr	r3, [r7, #0]
 80017de:	1d1a      	adds	r2, r3, #4
 80017e0:	603a      	str	r2, [r7, #0]
 80017e2:	687a      	ldr	r2, [r7, #4]
 80017e4:	1d11      	adds	r1, r2, #4
 80017e6:	6079      	str	r1, [r7, #4]
 80017e8:	6812      	ldr	r2, [r2, #0]
 80017ea:	601a      	str	r2, [r3, #0]
 80017ec:	683b      	ldr	r3, [r7, #0]
 80017ee:	4a0c      	ldr	r2, [pc, #48]	; (8001820 <handler_reset+0x54>)
 80017f0:	4293      	cmp	r3, r2
 80017f2:	d3f3      	bcc.n	80017dc <handler_reset+0x10>
 80017f4:	4b0b      	ldr	r3, [pc, #44]	; (8001824 <handler_reset+0x58>)
 80017f6:	603b      	str	r3, [r7, #0]
 80017f8:	e004      	b.n	8001804 <handler_reset+0x38>
 80017fa:	683b      	ldr	r3, [r7, #0]
 80017fc:	1d1a      	adds	r2, r3, #4
 80017fe:	603a      	str	r2, [r7, #0]
 8001800:	2200      	movs	r2, #0
 8001802:	601a      	str	r2, [r3, #0]
 8001804:	683b      	ldr	r3, [r7, #0]
 8001806:	4a08      	ldr	r2, [pc, #32]	; (8001828 <handler_reset+0x5c>)
 8001808:	4293      	cmp	r3, r2
 800180a:	d3f6      	bcc.n	80017fa <handler_reset+0x2e>
 800180c:	f7fe fe6e 	bl	80004ec <main>
 8001810:	bf00      	nop
 8001812:	3708      	adds	r7, #8
 8001814:	46bd      	mov	sp, r7
 8001816:	bd80      	pop	{r7, pc}
 8001818:	08002878 	.word	0x08002878
 800181c:	20000000 	.word	0x20000000
 8001820:	20000000 	.word	0x20000000
 8001824:	20000220 	.word	0x20000220
 8001828:	200012a4 	.word	0x200012a4

0800182c <default_handler>:
 800182c:	b480      	push	{r7}
 800182e:	af00      	add	r7, sp, #0
 8001830:	e7fe      	b.n	8001830 <default_handler+0x4>
 8001832:	bf00      	nop
 8001834:	00000080 	.word	0x00000080
 8001838:	0000004c 	.word	0x0000004c
 800183c:	00000028 	.word	0x00000028
 8001840:	00000014 	.word	0x00000014
 8001844:	0000000a 	.word	0x0000000a
 8001848:	00000005 	.word	0x00000005
 800184c:	00000003 	.word	0x00000003
 8001850:	00000001 	.word	0x00000001
 8001854:	000002d4 	.word	0x000002d4
 8001858:	00000288 	.word	0x00000288
 800185c:	00000274 	.word	0x00000274
 8001860:	0000026f 	.word	0x0000026f
 8001864:	0000026f 	.word	0x0000026f
 8001868:	0000026e 	.word	0x0000026e
 800186c:	0000026e 	.word	0x0000026e
 8001870:	0000026e 	.word	0x0000026e

08001874 <cos_tb>:
 8001874:	00000400 00000400 00000400 00000400     ................
 8001884:	00000400 00000400 000003ff 000003ff     ................
 8001894:	000003ff 000003fe 000003fe 000003fe     ................
 80018a4:	000003fd 000003fd 000003fc 000003fc     ................
 80018b4:	000003fb 000003fa 000003fa 000003f9     ................
 80018c4:	000003f8 000003f8 000003f7 000003f6     ................
 80018d4:	000003f5 000003f4 000003f3 000003f2     ................
 80018e4:	000003f1 000003f0 000003ef 000003ee     ................
 80018f4:	000003ec 000003eb 000003ea 000003e8     ................
 8001904:	000003e7 000003e6 000003e4 000003e3     ................
 8001914:	000003e1 000003e0 000003de 000003dd     ................
 8001924:	000003db 000003d9 000003d7 000003d6     ................
 8001934:	000003d4 000003d2 000003d0 000003ce     ................
 8001944:	000003cc 000003ca 000003c8 000003c6     ................
 8001954:	000003c4 000003c2 000003c0 000003be     ................
 8001964:	000003bb 000003b9 000003b7 000003b4     ................
 8001974:	000003b2 000003b0 000003ad 000003ab     ................
 8001984:	000003a8 000003a6 000003a3 000003a0     ................
 8001994:	0000039e 0000039b 00000398 00000395     ................
 80019a4:	00000393 00000390 0000038d 0000038a     ................
 80019b4:	00000387 00000384 00000381 0000037e     ............~...
 80019c4:	0000037b 00000378 00000375 00000372     {...x...u...r...
 80019d4:	0000036e 0000036b 00000368 00000364     n...k...h...d...
 80019e4:	00000361 0000035e 0000035a 00000357     a...^...Z...W...
 80019f4:	00000353 00000350 0000034c 00000349     S...P...L...I...
 8001a04:	00000345 00000342 0000033e 0000033a     E...B...>...:...
 8001a14:	00000336 00000333 0000032f 0000032b     6...3.../...+...
 8001a24:	00000327 00000323 0000031f 0000031c     '...#...........
 8001a34:	00000318 00000314 00000310 0000030b     ................
 8001a44:	00000307 00000303 000002ff 000002fb     ................
 8001a54:	000002f7 000002f3 000002ee 000002ea     ................
 8001a64:	000002e6 000002e1 000002dd 000002d9     ................
 8001a74:	000002d4 000002d0 000002cb 000002c7     ................
 8001a84:	000002c2 000002be 000002b9 000002b4     ................
 8001a94:	000002b0 000002ab 000002a6 000002a2     ................
 8001aa4:	0000029d 00000298 00000293 0000028e     ................
 8001ab4:	0000028a 00000285 00000280 0000027b     ............{...
 8001ac4:	00000276 00000271 0000026c 00000267     v...q...l...g...
 8001ad4:	00000262 0000025d 00000258 00000253     b...]...X...S...
 8001ae4:	0000024e 00000248 00000243 0000023e     N...H...C...>...
 8001af4:	00000239 00000234 0000022e 00000229     9...4.......)...
 8001b04:	00000224 0000021f 00000219 00000214     $...............
 8001b14:	0000020e 00000209 00000204 000001fe     ................
 8001b24:	000001f9 000001f3 000001ee 000001e8     ................
 8001b34:	000001e3 000001dd 000001d8 000001d2     ................
 8001b44:	000001cc 000001c7 000001c1 000001bb     ................
 8001b54:	000001b6 000001b0 000001aa 000001a5     ................
 8001b64:	0000019f 00000199 00000193 0000018e     ................
 8001b74:	00000188 00000182 0000017c 00000176     ........|...v...
 8001b84:	00000171 0000016b 00000165 0000015f     q...k...e..._...
 8001b94:	00000159 00000153 0000014d 00000147     Y...S...M...G...
 8001ba4:	00000141 0000013b 00000135 0000012f     A...;...5.../...
 8001bb4:	00000129 00000123 0000011d 00000117     )...#...........
 8001bc4:	00000111 0000010b 00000105 000000ff     ................
 8001bd4:	000000f9 000000f3 000000ed 000000e6     ................
 8001be4:	000000e0 000000da 000000d4 000000ce     ................
 8001bf4:	000000c8 000000c2 000000bb 000000b5     ................
 8001c04:	000000af 000000a9 000000a3 0000009c     ................
 8001c14:	00000096 00000090 0000008a 00000084     ................
 8001c24:	0000007d 00000077 00000071 0000006b     }...w...q...k...
 8001c34:	00000064 0000005e 00000058 00000052     d...^...X...R...
 8001c44:	0000004b 00000045 0000003f 00000039     K...E...?...9...
 8001c54:	00000032 0000002c 00000026 0000001f     2...,...&.......
 8001c64:	00000019 00000013 0000000d 00000006     ................
 8001c74:	00000000 fffffffa fffffff3 ffffffed     ................
 8001c84:	ffffffe7 ffffffe1 ffffffda ffffffd4     ................
 8001c94:	ffffffce ffffffc7 ffffffc1 ffffffbb     ................
 8001ca4:	ffffffb5 ffffffae ffffffa8 ffffffa2     ................
 8001cb4:	ffffff9c ffffff95 ffffff8f ffffff89     ................
 8001cc4:	ffffff83 ffffff7c ffffff76 ffffff70     ....|...v...p...
 8001cd4:	ffffff6a ffffff64 ffffff5d ffffff57     j...d...]...W...
 8001ce4:	ffffff51 ffffff4b ffffff45 ffffff3e     Q...K...E...>...
 8001cf4:	ffffff38 ffffff32 ffffff2c ffffff26     8...2...,...&...
 8001d04:	ffffff20 ffffff1a ffffff13 ffffff0d      ...............
 8001d14:	ffffff07 ffffff01 fffffefb fffffef5     ................
 8001d24:	fffffeef fffffee9 fffffee3 fffffedd     ................
 8001d34:	fffffed7 fffffed1 fffffecb fffffec5     ................
 8001d44:	fffffebf fffffeb9 fffffeb3 fffffead     ................
 8001d54:	fffffea7 fffffea1 fffffe9b fffffe95     ................
 8001d64:	fffffe8f fffffe8a fffffe84 fffffe7e     ............~...
 8001d74:	fffffe78 fffffe72 fffffe6d fffffe67     x...r...m...g...
 8001d84:	fffffe61 fffffe5b fffffe56 fffffe50     a...[...V...P...
 8001d94:	fffffe4a fffffe45 fffffe3f fffffe39     J...E...?...9...
 8001da4:	fffffe34 fffffe2e fffffe28 fffffe23     4.......(...#...
 8001db4:	fffffe1d fffffe18 fffffe12 fffffe0d     ................
 8001dc4:	fffffe07 fffffe02 fffffdfc fffffdf7     ................
 8001dd4:	fffffdf2 fffffdec fffffde7 fffffde1     ................
 8001de4:	fffffddc fffffdd7 fffffdd2 fffffdcc     ................
 8001df4:	fffffdc7 fffffdc2 fffffdbd fffffdb8     ................
 8001e04:	fffffdb2 fffffdad fffffda8 fffffda3     ................
 8001e14:	fffffd9e fffffd99 fffffd94 fffffd8f     ................
 8001e24:	fffffd8a fffffd85 fffffd80 fffffd7b     ............{...
 8001e34:	fffffd76 fffffd72 fffffd6d fffffd68     v...r...m...h...
 8001e44:	fffffd63 fffffd5e fffffd5a fffffd55     c...^...Z...U...
 8001e54:	fffffd50 fffffd4c fffffd47 fffffd42     P...L...G...B...
 8001e64:	fffffd3e fffffd39 fffffd35 fffffd30     >...9...5...0...
 8001e74:	fffffd2c fffffd27 fffffd23 fffffd1f     ,...'...#.......
 8001e84:	fffffd1a fffffd16 fffffd12 fffffd0d     ................
 8001e94:	fffffd09 fffffd05 fffffd01 fffffcfd     ................
 8001ea4:	fffffcf9 fffffcf5 fffffcf0 fffffcec     ................
 8001eb4:	fffffce8 fffffce4 fffffce1 fffffcdd     ................
 8001ec4:	fffffcd9 fffffcd5 fffffcd1 fffffccd     ................
 8001ed4:	fffffcca fffffcc6 fffffcc2 fffffcbe     ................
 8001ee4:	fffffcbb fffffcb7 fffffcb4 fffffcb0     ................
 8001ef4:	fffffcad fffffca9 fffffca6 fffffca2     ................
 8001f04:	fffffc9f fffffc9c fffffc98 fffffc95     ................
 8001f14:	fffffc92 fffffc8e fffffc8b fffffc88     ................
 8001f24:	fffffc85 fffffc82 fffffc7f fffffc7c     ............|...
 8001f34:	fffffc79 fffffc76 fffffc73 fffffc70     y...v...s...p...
 8001f44:	fffffc6d fffffc6b fffffc68 fffffc65     m...k...h...e...
 8001f54:	fffffc62 fffffc60 fffffc5d fffffc5a     b...`...]...Z...
 8001f64:	fffffc58 fffffc55 fffffc53 fffffc50     X...U...S...P...
 8001f74:	fffffc4e fffffc4c fffffc49 fffffc47     N...L...I...G...
 8001f84:	fffffc45 fffffc42 fffffc40 fffffc3e     E...B...@...>...
 8001f94:	fffffc3c fffffc3a fffffc38 fffffc36     <...:...8...6...
 8001fa4:	fffffc34 fffffc32 fffffc30 fffffc2e     4...2...0.......
 8001fb4:	fffffc2c fffffc2a fffffc29 fffffc27     ,...*...)...'...
 8001fc4:	fffffc25 fffffc23 fffffc22 fffffc20     %...#..."... ...
 8001fd4:	fffffc1f fffffc1d fffffc1c fffffc1a     ................
 8001fe4:	fffffc19 fffffc18 fffffc16 fffffc15     ................
 8001ff4:	fffffc14 fffffc12 fffffc11 fffffc10     ................
 8002004:	fffffc0f fffffc0e fffffc0d fffffc0c     ................
 8002014:	fffffc0b fffffc0a fffffc09 fffffc08     ................
 8002024:	fffffc08 fffffc07 fffffc06 fffffc06     ................
 8002034:	fffffc05 fffffc04 fffffc04 fffffc03     ................
 8002044:	fffffc03 fffffc02 fffffc02 fffffc02     ................
 8002054:	fffffc01 fffffc01 fffffc01 fffffc00     ................
 8002064:	fffffc00 fffffc00 fffffc00 fffffc00     ................
 8002074:	fffffc00 fffffc00 fffffc00 fffffc00     ................
 8002084:	fffffc00 fffffc00 fffffc01 fffffc01     ................
 8002094:	fffffc01 fffffc02 fffffc02 fffffc02     ................
 80020a4:	fffffc03 fffffc03 fffffc04 fffffc04     ................
 80020b4:	fffffc05 fffffc06 fffffc06 fffffc07     ................
 80020c4:	fffffc08 fffffc08 fffffc09 fffffc0a     ................
 80020d4:	fffffc0b fffffc0c fffffc0d fffffc0e     ................
 80020e4:	fffffc0f fffffc10 fffffc11 fffffc12     ................
 80020f4:	fffffc14 fffffc15 fffffc16 fffffc18     ................
 8002104:	fffffc19 fffffc1a fffffc1c fffffc1d     ................
 8002114:	fffffc1f fffffc20 fffffc22 fffffc23     .... ..."...#...
 8002124:	fffffc25 fffffc27 fffffc29 fffffc2a     %...'...)...*...
 8002134:	fffffc2c fffffc2e fffffc30 fffffc32     ,.......0...2...
 8002144:	fffffc34 fffffc36 fffffc38 fffffc3a     4...6...8...:...
 8002154:	fffffc3c fffffc3e fffffc40 fffffc42     <...>...@...B...
 8002164:	fffffc45 fffffc47 fffffc49 fffffc4c     E...G...I...L...
 8002174:	fffffc4e fffffc50 fffffc53 fffffc55     N...P...S...U...
 8002184:	fffffc58 fffffc5a fffffc5d fffffc60     X...Z...]...`...
 8002194:	fffffc62 fffffc65 fffffc68 fffffc6b     b...e...h...k...
 80021a4:	fffffc6d fffffc70 fffffc73 fffffc76     m...p...s...v...
 80021b4:	fffffc79 fffffc7c fffffc7f fffffc82     y...|...........
 80021c4:	fffffc85 fffffc88 fffffc8b fffffc8e     ................
 80021d4:	fffffc92 fffffc95 fffffc98 fffffc9c     ................
 80021e4:	fffffc9f fffffca2 fffffca6 fffffca9     ................
 80021f4:	fffffcad fffffcb0 fffffcb4 fffffcb7     ................
 8002204:	fffffcbb fffffcbe fffffcc2 fffffcc6     ................
 8002214:	fffffcca fffffccd fffffcd1 fffffcd5     ................
 8002224:	fffffcd9 fffffcdd fffffce1 fffffce4     ................
 8002234:	fffffce8 fffffcec fffffcf0 fffffcf5     ................
 8002244:	fffffcf9 fffffcfd fffffd01 fffffd05     ................
 8002254:	fffffd09 fffffd0d fffffd12 fffffd16     ................
 8002264:	fffffd1a fffffd1f fffffd23 fffffd27     ........#...'...
 8002274:	fffffd2c fffffd30 fffffd35 fffffd39     ,...0...5...9...
 8002284:	fffffd3e fffffd42 fffffd47 fffffd4c     >...B...G...L...
 8002294:	fffffd50 fffffd55 fffffd5a fffffd5e     P...U...Z...^...
 80022a4:	fffffd63 fffffd68 fffffd6d fffffd72     c...h...m...r...
 80022b4:	fffffd76 fffffd7b fffffd80 fffffd85     v...{...........
 80022c4:	fffffd8a fffffd8f fffffd94 fffffd99     ................
 80022d4:	fffffd9e fffffda3 fffffda8 fffffdad     ................
 80022e4:	fffffdb2 fffffdb8 fffffdbd fffffdc2     ................
 80022f4:	fffffdc7 fffffdcc fffffdd2 fffffdd7     ................
 8002304:	fffffddc fffffde1 fffffde7 fffffdec     ................
 8002314:	fffffdf2 fffffdf7 fffffdfc fffffe02     ................
 8002324:	fffffe07 fffffe0d fffffe12 fffffe18     ................
 8002334:	fffffe1d fffffe23 fffffe28 fffffe2e     ....#...(.......
 8002344:	fffffe34 fffffe39 fffffe3f fffffe45     4...9...?...E...
 8002354:	fffffe4a fffffe50 fffffe56 fffffe5b     J...P...V...[...
 8002364:	fffffe61 fffffe67 fffffe6d fffffe72     a...g...m...r...
 8002374:	fffffe78 fffffe7e fffffe84 fffffe8a     x...~...........
 8002384:	fffffe8f fffffe95 fffffe9b fffffea1     ................
 8002394:	fffffea7 fffffead fffffeb3 fffffeb9     ................
 80023a4:	fffffebf fffffec5 fffffecb fffffed1     ................
 80023b4:	fffffed7 fffffedd fffffee3 fffffee9     ................
 80023c4:	fffffeef fffffef5 fffffefb ffffff01     ................
 80023d4:	ffffff07 ffffff0d ffffff13 ffffff1a     ................
 80023e4:	ffffff20 ffffff26 ffffff2c ffffff32      ...&...,...2...
 80023f4:	ffffff38 ffffff3e ffffff45 ffffff4b     8...>...E...K...
 8002404:	ffffff51 ffffff57 ffffff5d ffffff64     Q...W...]...d...
 8002414:	ffffff6a ffffff70 ffffff76 ffffff7c     j...p...v...|...
 8002424:	ffffff83 ffffff89 ffffff8f ffffff95     ................
 8002434:	ffffff9c ffffffa2 ffffffa8 ffffffae     ................
 8002444:	ffffffb5 ffffffbb ffffffc1 ffffffc7     ................
 8002454:	ffffffce ffffffd4 ffffffda ffffffe1     ................
 8002464:	ffffffe7 ffffffed fffffff3 fffffffa     ................
 8002474:	00000000 00000006 0000000d 00000013     ................
 8002484:	00000019 0000001f 00000026 0000002c     ........&...,...
 8002494:	00000032 00000039 0000003f 00000045     2...9...?...E...
 80024a4:	0000004b 00000052 00000058 0000005e     K...R...X...^...
 80024b4:	00000064 0000006b 00000071 00000077     d...k...q...w...
 80024c4:	0000007d 00000084 0000008a 00000090     }...............
 80024d4:	00000096 0000009c 000000a3 000000a9     ................
 80024e4:	000000af 000000b5 000000bb 000000c2     ................
 80024f4:	000000c8 000000ce 000000d4 000000da     ................
 8002504:	000000e0 000000e6 000000ed 000000f3     ................
 8002514:	000000f9 000000ff 00000105 0000010b     ................
 8002524:	00000111 00000117 0000011d 00000123     ............#...
 8002534:	00000129 0000012f 00000135 0000013b     ).../...5...;...
 8002544:	00000141 00000147 0000014d 00000153     A...G...M...S...
 8002554:	00000159 0000015f 00000165 0000016b     Y..._...e...k...
 8002564:	00000171 00000176 0000017c 00000182     q...v...|.......
 8002574:	00000188 0000018e 00000193 00000199     ................
 8002584:	0000019f 000001a5 000001aa 000001b0     ................
 8002594:	000001b6 000001bb 000001c1 000001c7     ................
 80025a4:	000001cc 000001d2 000001d8 000001dd     ................
 80025b4:	000001e3 000001e8 000001ee 000001f3     ................
 80025c4:	000001f9 000001fe 00000204 00000209     ................
 80025d4:	0000020e 00000214 00000219 0000021f     ................
 80025e4:	00000224 00000229 0000022e 00000234     $...).......4...
 80025f4:	00000239 0000023e 00000243 00000248     9...>...C...H...
 8002604:	0000024e 00000253 00000258 0000025d     N...S...X...]...
 8002614:	00000262 00000267 0000026c 00000271     b...g...l...q...
 8002624:	00000276 0000027b 00000280 00000285     v...{...........
 8002634:	0000028a 0000028e 00000293 00000298     ................
 8002644:	0000029d 000002a2 000002a6 000002ab     ................
 8002654:	000002b0 000002b4 000002b9 000002be     ................
 8002664:	000002c2 000002c7 000002cb 000002d0     ................
 8002674:	000002d4 000002d9 000002dd 000002e1     ................
 8002684:	000002e6 000002ea 000002ee 000002f3     ................
 8002694:	000002f7 000002fb 000002ff 00000303     ................
 80026a4:	00000307 0000030b 00000310 00000314     ................
 80026b4:	00000318 0000031c 0000031f 00000323     ............#...
 80026c4:	00000327 0000032b 0000032f 00000333     '...+.../...3...
 80026d4:	00000336 0000033a 0000033e 00000342     6...:...>...B...
 80026e4:	00000345 00000349 0000034c 00000350     E...I...L...P...
 80026f4:	00000353 00000357 0000035a 0000035e     S...W...Z...^...
 8002704:	00000361 00000364 00000368 0000036b     a...d...h...k...
 8002714:	0000036e 00000372 00000375 00000378     n...r...u...x...
 8002724:	0000037b 0000037e 00000381 00000384     {...~...........
 8002734:	00000387 0000038a 0000038d 00000390     ................
 8002744:	00000393 00000395 00000398 0000039b     ................
 8002754:	0000039e 000003a0 000003a3 000003a6     ................
 8002764:	000003a8 000003ab 000003ad 000003b0     ................
 8002774:	000003b2 000003b4 000003b7 000003b9     ................
 8002784:	000003bb 000003be 000003c0 000003c2     ................
 8002794:	000003c4 000003c6 000003c8 000003ca     ................
 80027a4:	000003cc 000003ce 000003d0 000003d2     ................
 80027b4:	000003d4 000003d6 000003d7 000003d9     ................
 80027c4:	000003db 000003dd 000003de 000003e0     ................
 80027d4:	000003e1 000003e3 000003e4 000003e6     ................
 80027e4:	000003e7 000003e8 000003ea 000003eb     ................
 80027f4:	000003ec 000003ee 000003ef 000003f0     ................
 8002804:	000003f1 000003f2 000003f3 000003f4     ................
 8002814:	000003f5 000003f6 000003f7 000003f8     ................
 8002824:	000003f8 000003f9 000003fa 000003fa     ................
 8002834:	000003fb 000003fc 000003fc 000003fd     ................
 8002844:	000003fd 000003fe 000003fe 000003fe     ................
 8002854:	000003ff 000003ff 000003ff 00000400     ................
 8002864:	00000400 00000400 00000400 00000400     ................

08002874 <PWM_MASK>:
 8002874:	000aaaa0                                ....
