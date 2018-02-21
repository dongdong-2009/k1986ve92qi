
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 59 17 00 08 b9 17 00 08 b9 17 00 08     ... Y...........
 8000010:	b9 17 00 08 b9 17 00 08 b9 17 00 08 00 00 00 00     ................
	...
 800002c:	b9 17 00 08 b9 17 00 08 00 00 00 00 b9 17 00 08     ................
 800003c:	b9 16 00 08 b9 17 00 08 b9 17 00 08 b9 17 00 08     ................
	...
 8000054:	b9 17 00 08 d5 16 00 08 b9 17 00 08 b9 17 00 08     ................
 8000064:	00 00 00 00 b9 17 00 08 b9 17 00 08 b9 17 00 08     ................
 8000074:	00 00 00 00 3d 02 00 08 b9 17 00 08 55 02 00 08     ....=.......U...
 8000084:	b9 17 00 08 00 00 00 00 b9 17 00 08 b9 17 00 08     ................
	...
 80000ac:	b9 17 00 08 b9 17 00 08 b9 17 00 08 b9 17 00 08     ................
 80000bc:	b9 17 00 08                                         ....

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
 800010c:	2000030c 	.word	0x2000030c

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
 8000258:	4b04      	ldr	r3, [pc, #16]	; (800026c <Timer3_IRQHandler+0x18>)
 800025a:	2200      	movs	r2, #0
 800025c:	655a      	str	r2, [r3, #84]	; 0x54
 800025e:	f7ff ffe1 	bl	8000224 <encoder_start>
 8000262:	f000 ff51 	bl	8001108 <adc_dma_start>
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
 800030a:	4b3e      	ldr	r3, [pc, #248]	; (8000404 <update_telemetry+0x100>)
 800030c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
 800030e:	f003 0302 	and.w	r3, r3, #2
 8000312:	2b00      	cmp	r3, #0
 8000314:	d071      	beq.n	80003fa <update_telemetry+0xf6>
 8000316:	4b3b      	ldr	r3, [pc, #236]	; (8000404 <update_telemetry+0x100>)
 8000318:	2200      	movs	r2, #0
 800031a:	655a      	str	r2, [r3, #84]	; 0x54
 800031c:	4a3a      	ldr	r2, [pc, #232]	; (8000408 <update_telemetry+0x104>)
 800031e:	4b3a      	ldr	r3, [pc, #232]	; (8000408 <update_telemetry+0x104>)
 8000320:	681b      	ldr	r3, [r3, #0]
 8000322:	f043 0301 	orr.w	r3, r3, #1
 8000326:	6013      	str	r3, [r2, #0]
 8000328:	4b36      	ldr	r3, [pc, #216]	; (8000404 <update_telemetry+0x100>)
 800032a:	695b      	ldr	r3, [r3, #20]
 800032c:	b29b      	uxth	r3, r3
 800032e:	f5a3 7396 	sub.w	r3, r3, #300	; 0x12c
 8000332:	80fb      	strh	r3, [r7, #6]
 8000334:	88fb      	ldrh	r3, [r7, #6]
 8000336:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800033a:	d205      	bcs.n	8000348 <update_telemetry+0x44>
 800033c:	4a31      	ldr	r2, [pc, #196]	; (8000404 <update_telemetry+0x100>)
 800033e:	4b31      	ldr	r3, [pc, #196]	; (8000404 <update_telemetry+0x100>)
 8000340:	681b      	ldr	r3, [r3, #0]
 8000342:	3301      	adds	r3, #1
 8000344:	6013      	str	r3, [r2, #0]
 8000346:	e004      	b.n	8000352 <update_telemetry+0x4e>
 8000348:	4a2e      	ldr	r2, [pc, #184]	; (8000404 <update_telemetry+0x100>)
 800034a:	4b2e      	ldr	r3, [pc, #184]	; (8000404 <update_telemetry+0x100>)
 800034c:	681b      	ldr	r3, [r3, #0]
 800034e:	3b01      	subs	r3, #1
 8000350:	6013      	str	r3, [r2, #0]
 8000352:	4b2e      	ldr	r3, [pc, #184]	; (800040c <update_telemetry+0x108>)
 8000354:	681b      	ldr	r3, [r3, #0]
 8000356:	b29a      	uxth	r2, r3
 8000358:	4b2d      	ldr	r3, [pc, #180]	; (8000410 <update_telemetry+0x10c>)
 800035a:	681b      	ldr	r3, [r3, #0]
 800035c:	b29b      	uxth	r3, r3
 800035e:	1ad3      	subs	r3, r2, r3
 8000360:	b29b      	uxth	r3, r3
 8000362:	b21a      	sxth	r2, r3
 8000364:	4b2b      	ldr	r3, [pc, #172]	; (8000414 <update_telemetry+0x110>)
 8000366:	801a      	strh	r2, [r3, #0]
 8000368:	4b2b      	ldr	r3, [pc, #172]	; (8000418 <update_telemetry+0x114>)
 800036a:	681b      	ldr	r3, [r3, #0]
 800036c:	b29a      	uxth	r2, r3
 800036e:	4b28      	ldr	r3, [pc, #160]	; (8000410 <update_telemetry+0x10c>)
 8000370:	681b      	ldr	r3, [r3, #0]
 8000372:	b29b      	uxth	r3, r3
 8000374:	1ad3      	subs	r3, r2, r3
 8000376:	b29b      	uxth	r3, r3
 8000378:	b21a      	sxth	r2, r3
 800037a:	4b26      	ldr	r3, [pc, #152]	; (8000414 <update_telemetry+0x110>)
 800037c:	805a      	strh	r2, [r3, #2]
 800037e:	4b25      	ldr	r3, [pc, #148]	; (8000414 <update_telemetry+0x110>)
 8000380:	2200      	movs	r2, #0
 8000382:	809a      	strh	r2, [r3, #4]
 8000384:	4b23      	ldr	r3, [pc, #140]	; (8000414 <update_telemetry+0x110>)
 8000386:	2200      	movs	r2, #0
 8000388:	80da      	strh	r2, [r3, #6]
 800038a:	4b22      	ldr	r3, [pc, #136]	; (8000414 <update_telemetry+0x110>)
 800038c:	603b      	str	r3, [r7, #0]
 800038e:	4923      	ldr	r1, [pc, #140]	; (800041c <update_telemetry+0x118>)
 8000390:	683b      	ldr	r3, [r7, #0]
 8000392:	1c5a      	adds	r2, r3, #1
 8000394:	603a      	str	r2, [r7, #0]
 8000396:	781b      	ldrb	r3, [r3, #0]
 8000398:	600b      	str	r3, [r1, #0]
 800039a:	4920      	ldr	r1, [pc, #128]	; (800041c <update_telemetry+0x118>)
 800039c:	683b      	ldr	r3, [r7, #0]
 800039e:	1c5a      	adds	r2, r3, #1
 80003a0:	603a      	str	r2, [r7, #0]
 80003a2:	781b      	ldrb	r3, [r3, #0]
 80003a4:	600b      	str	r3, [r1, #0]
 80003a6:	491d      	ldr	r1, [pc, #116]	; (800041c <update_telemetry+0x118>)
 80003a8:	683b      	ldr	r3, [r7, #0]
 80003aa:	1c5a      	adds	r2, r3, #1
 80003ac:	603a      	str	r2, [r7, #0]
 80003ae:	781b      	ldrb	r3, [r3, #0]
 80003b0:	600b      	str	r3, [r1, #0]
 80003b2:	491a      	ldr	r1, [pc, #104]	; (800041c <update_telemetry+0x118>)
 80003b4:	683b      	ldr	r3, [r7, #0]
 80003b6:	1c5a      	adds	r2, r3, #1
 80003b8:	603a      	str	r2, [r7, #0]
 80003ba:	781b      	ldrb	r3, [r3, #0]
 80003bc:	600b      	str	r3, [r1, #0]
 80003be:	4917      	ldr	r1, [pc, #92]	; (800041c <update_telemetry+0x118>)
 80003c0:	683b      	ldr	r3, [r7, #0]
 80003c2:	1c5a      	adds	r2, r3, #1
 80003c4:	603a      	str	r2, [r7, #0]
 80003c6:	781b      	ldrb	r3, [r3, #0]
 80003c8:	600b      	str	r3, [r1, #0]
 80003ca:	4914      	ldr	r1, [pc, #80]	; (800041c <update_telemetry+0x118>)
 80003cc:	683b      	ldr	r3, [r7, #0]
 80003ce:	1c5a      	adds	r2, r3, #1
 80003d0:	603a      	str	r2, [r7, #0]
 80003d2:	781b      	ldrb	r3, [r3, #0]
 80003d4:	600b      	str	r3, [r1, #0]
 80003d6:	4911      	ldr	r1, [pc, #68]	; (800041c <update_telemetry+0x118>)
 80003d8:	683b      	ldr	r3, [r7, #0]
 80003da:	1c5a      	adds	r2, r3, #1
 80003dc:	603a      	str	r2, [r7, #0]
 80003de:	781b      	ldrb	r3, [r3, #0]
 80003e0:	600b      	str	r3, [r1, #0]
 80003e2:	490e      	ldr	r1, [pc, #56]	; (800041c <update_telemetry+0x118>)
 80003e4:	683b      	ldr	r3, [r7, #0]
 80003e6:	1c5a      	adds	r2, r3, #1
 80003e8:	603a      	str	r2, [r7, #0]
 80003ea:	781b      	ldrb	r3, [r3, #0]
 80003ec:	600b      	str	r3, [r1, #0]
 80003ee:	4a06      	ldr	r2, [pc, #24]	; (8000408 <update_telemetry+0x104>)
 80003f0:	4b05      	ldr	r3, [pc, #20]	; (8000408 <update_telemetry+0x104>)
 80003f2:	681b      	ldr	r3, [r3, #0]
 80003f4:	f023 0301 	bic.w	r3, r3, #1
 80003f8:	6013      	str	r3, [r2, #0]
 80003fa:	bf00      	nop
 80003fc:	370c      	adds	r7, #12
 80003fe:	46bd      	mov	sp, r7
 8000400:	bc80      	pop	{r7}
 8000402:	4770      	bx	lr
 8000404:	40070000 	.word	0x40070000
 8000408:	400a8000 	.word	0x400a8000
 800040c:	20000220 	.word	0x20000220
 8000410:	2000022c 	.word	0x2000022c
 8000414:	2000024c 	.word	0x2000024c
 8000418:	20000244 	.word	0x20000244
 800041c:	40030000 	.word	0x40030000

08000420 <update_refposition>:
 8000420:	b480      	push	{r7}
 8000422:	b087      	sub	sp, #28
 8000424:	af00      	add	r7, sp, #0
 8000426:	4b20      	ldr	r3, [pc, #128]	; (80004a8 <update_refposition+0x88>)
 8000428:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800042a:	f003 0310 	and.w	r3, r3, #16
 800042e:	2b00      	cmp	r3, #0
 8000430:	d022      	beq.n	8000478 <update_refposition+0x58>
 8000432:	2300      	movs	r3, #0
 8000434:	617b      	str	r3, [r7, #20]
 8000436:	e00c      	b.n	8000452 <update_refposition+0x32>
 8000438:	4b1b      	ldr	r3, [pc, #108]	; (80004a8 <update_refposition+0x88>)
 800043a:	681b      	ldr	r3, [r3, #0]
 800043c:	b2d9      	uxtb	r1, r3
 800043e:	463a      	mov	r2, r7
 8000440:	697b      	ldr	r3, [r7, #20]
 8000442:	4413      	add	r3, r2
 8000444:	460a      	mov	r2, r1
 8000446:	701a      	strb	r2, [r3, #0]
 8000448:	697b      	ldr	r3, [r7, #20]
 800044a:	3301      	adds	r3, #1
 800044c:	f003 030f 	and.w	r3, r3, #15
 8000450:	617b      	str	r3, [r7, #20]
 8000452:	4b15      	ldr	r3, [pc, #84]	; (80004a8 <update_refposition+0x88>)
 8000454:	699b      	ldr	r3, [r3, #24]
 8000456:	f003 0310 	and.w	r3, r3, #16
 800045a:	2b00      	cmp	r3, #0
 800045c:	d0ec      	beq.n	8000438 <update_refposition+0x18>
 800045e:	783b      	ldrb	r3, [r7, #0]
 8000460:	b29a      	uxth	r2, r3
 8000462:	787b      	ldrb	r3, [r7, #1]
 8000464:	b29b      	uxth	r3, r3
 8000466:	021b      	lsls	r3, r3, #8
 8000468:	b29b      	uxth	r3, r3
 800046a:	4413      	add	r3, r2
 800046c:	b29b      	uxth	r3, r3
 800046e:	827b      	strh	r3, [r7, #18]
 8000470:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 8000474:	4a0d      	ldr	r2, [pc, #52]	; (80004ac <update_refposition+0x8c>)
 8000476:	6013      	str	r3, [r2, #0]
 8000478:	4b0b      	ldr	r3, [pc, #44]	; (80004a8 <update_refposition+0x88>)
 800047a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800047c:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000480:	2b00      	cmp	r3, #0
 8000482:	d009      	beq.n	8000498 <update_refposition+0x78>
 8000484:	e002      	b.n	800048c <update_refposition+0x6c>
 8000486:	4b08      	ldr	r3, [pc, #32]	; (80004a8 <update_refposition+0x88>)
 8000488:	681b      	ldr	r3, [r3, #0]
 800048a:	747b      	strb	r3, [r7, #17]
 800048c:	4b06      	ldr	r3, [pc, #24]	; (80004a8 <update_refposition+0x88>)
 800048e:	699b      	ldr	r3, [r3, #24]
 8000490:	f003 0310 	and.w	r3, r3, #16
 8000494:	2b00      	cmp	r3, #0
 8000496:	d0f6      	beq.n	8000486 <update_refposition+0x66>
 8000498:	4b04      	ldr	r3, [pc, #16]	; (80004ac <update_refposition+0x8c>)
 800049a:	681b      	ldr	r3, [r3, #0]
 800049c:	4618      	mov	r0, r3
 800049e:	371c      	adds	r7, #28
 80004a0:	46bd      	mov	sp, r7
 80004a2:	bc80      	pop	{r7}
 80004a4:	4770      	bx	lr
 80004a6:	bf00      	nop
 80004a8:	40030000 	.word	0x40030000
 80004ac:	20000258 	.word	0x20000258

080004b0 <main>:
 80004b0:	b580      	push	{r7, lr}
 80004b2:	b0a4      	sub	sp, #144	; 0x90
 80004b4:	af00      	add	r7, sp, #0
 80004b6:	2300      	movs	r3, #0
 80004b8:	67bb      	str	r3, [r7, #120]	; 0x78
 80004ba:	2300      	movs	r3, #0
 80004bc:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 80004c0:	2300      	movs	r3, #0
 80004c2:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
 80004c6:	2300      	movs	r3, #0
 80004c8:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 80004cc:	2300      	movs	r3, #0
 80004ce:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
 80004d2:	2300      	movs	r3, #0
 80004d4:	67fb      	str	r3, [r7, #124]	; 0x7c
 80004d6:	2300      	movs	r3, #0
 80004d8:	677b      	str	r3, [r7, #116]	; 0x74
 80004da:	2300      	movs	r3, #0
 80004dc:	673b      	str	r3, [r7, #112]	; 0x70
 80004de:	f001 f8df 	bl	80016a0 <system_init>
 80004e2:	f7ff fe15 	bl	8000110 <ssi_init>
 80004e6:	f7ff fe87 	bl	80001f8 <dac_init>
 80004ea:	f000 fe05 	bl	80010f8 <adc_dma_init>
 80004ee:	f107 0344 	add.w	r3, r7, #68	; 0x44
 80004f2:	22c8      	movs	r2, #200	; 0xc8
 80004f4:	2150      	movs	r1, #80	; 0x50
 80004f6:	4618      	mov	r0, r3
 80004f8:	f000 f93e 	bl	8000778 <reg_init>
 80004fc:	f107 0334 	add.w	r3, r7, #52	; 0x34
 8000500:	22c8      	movs	r2, #200	; 0xc8
 8000502:	2150      	movs	r1, #80	; 0x50
 8000504:	4618      	mov	r0, r3
 8000506:	f000 f937 	bl	8000778 <reg_init>
 800050a:	f107 0324 	add.w	r3, r7, #36	; 0x24
 800050e:	f241 3288 	movw	r2, #5000	; 0x1388
 8000512:	2100      	movs	r1, #0
 8000514:	4618      	mov	r0, r3
 8000516:	f000 f92f 	bl	8000778 <reg_init>
 800051a:	f107 0314 	add.w	r3, r7, #20
 800051e:	f241 7270 	movw	r2, #6000	; 0x1770
 8000522:	2100      	movs	r1, #0
 8000524:	4618      	mov	r0, r3
 8000526:	f000 f927 	bl	8000778 <reg_init>
 800052a:	2300      	movs	r3, #0
 800052c:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
 8000530:	2300      	movs	r3, #0
 8000532:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 8000536:	4b7f      	ldr	r3, [pc, #508]	; (8000734 <main+0x284>)
 8000538:	2200      	movs	r2, #0
 800053a:	601a      	str	r2, [r3, #0]
 800053c:	2300      	movs	r3, #0
 800053e:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 8000542:	e024      	b.n	800058e <main+0xde>
 8000544:	f000 fdf4 	bl	8001130 <adc_dma_wait>
 8000548:	4b7b      	ldr	r3, [pc, #492]	; (8000738 <main+0x288>)
 800054a:	685b      	ldr	r3, [r3, #4]
 800054c:	f3c3 020b 	ubfx	r2, r3, #0, #12
 8000550:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
 8000554:	4413      	add	r3, r2
 8000556:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
 800055a:	4b77      	ldr	r3, [pc, #476]	; (8000738 <main+0x288>)
 800055c:	681b      	ldr	r3, [r3, #0]
 800055e:	f3c3 020b 	ubfx	r2, r3, #0, #12
 8000562:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
 8000566:	4413      	add	r3, r2
 8000568:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 800056c:	4b73      	ldr	r3, [pc, #460]	; (800073c <main+0x28c>)
 800056e:	689b      	ldr	r3, [r3, #8]
 8000570:	4618      	mov	r0, r3
 8000572:	f7ff fe17 	bl	80001a4 <enc_crc>
 8000576:	4602      	mov	r2, r0
 8000578:	4b6e      	ldr	r3, [pc, #440]	; (8000734 <main+0x284>)
 800057a:	681b      	ldr	r3, [r3, #0]
 800057c:	4413      	add	r3, r2
 800057e:	461a      	mov	r2, r3
 8000580:	4b6c      	ldr	r3, [pc, #432]	; (8000734 <main+0x284>)
 8000582:	601a      	str	r2, [r3, #0]
 8000584:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
 8000588:	3301      	adds	r3, #1
 800058a:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 800058e:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
 8000592:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8000596:	dbd5      	blt.n	8000544 <main+0x94>
 8000598:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
 800059c:	129b      	asrs	r3, r3, #10
 800059e:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
 80005a2:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
 80005a6:	129b      	asrs	r3, r3, #10
 80005a8:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 80005ac:	4b61      	ldr	r3, [pc, #388]	; (8000734 <main+0x284>)
 80005ae:	681b      	ldr	r3, [r3, #0]
 80005b0:	129b      	asrs	r3, r3, #10
 80005b2:	4a60      	ldr	r2, [pc, #384]	; (8000734 <main+0x284>)
 80005b4:	6013      	str	r3, [r2, #0]
 80005b6:	4b62      	ldr	r3, [pc, #392]	; (8000740 <main+0x290>)
 80005b8:	2200      	movs	r2, #0
 80005ba:	601a      	str	r2, [r3, #0]
 80005bc:	4b5d      	ldr	r3, [pc, #372]	; (8000734 <main+0x284>)
 80005be:	681b      	ldr	r3, [r3, #0]
 80005c0:	4a60      	ldr	r2, [pc, #384]	; (8000744 <main+0x294>)
 80005c2:	6013      	str	r3, [r2, #0]
 80005c4:	4b5b      	ldr	r3, [pc, #364]	; (8000734 <main+0x284>)
 80005c6:	681b      	ldr	r3, [r3, #0]
 80005c8:	4618      	mov	r0, r3
 80005ca:	f000 fc93 	bl	8000ef4 <encoder_init>
 80005ce:	f000 fdaf 	bl	8001130 <adc_dma_wait>
 80005d2:	4b59      	ldr	r3, [pc, #356]	; (8000738 <main+0x288>)
 80005d4:	685b      	ldr	r3, [r3, #4]
 80005d6:	f3c3 020b 	ubfx	r2, r3, #0, #12
 80005da:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
 80005de:	1ad3      	subs	r3, r2, r3
 80005e0:	66fb      	str	r3, [r7, #108]	; 0x6c
 80005e2:	4b55      	ldr	r3, [pc, #340]	; (8000738 <main+0x288>)
 80005e4:	681b      	ldr	r3, [r3, #0]
 80005e6:	f3c3 020b 	ubfx	r2, r3, #0, #12
 80005ea:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
 80005ee:	1ad3      	subs	r3, r2, r3
 80005f0:	66bb      	str	r3, [r7, #104]	; 0x68
 80005f2:	6efa      	ldr	r2, [r7, #108]	; 0x6c
 80005f4:	6ebb      	ldr	r3, [r7, #104]	; 0x68
 80005f6:	4413      	add	r3, r2
 80005f8:	667b      	str	r3, [r7, #100]	; 0x64
 80005fa:	4b50      	ldr	r3, [pc, #320]	; (800073c <main+0x28c>)
 80005fc:	689b      	ldr	r3, [r3, #8]
 80005fe:	4618      	mov	r0, r3
 8000600:	f7ff fdd0 	bl	80001a4 <enc_crc>
 8000604:	6638      	str	r0, [r7, #96]	; 0x60
 8000606:	6e3b      	ldr	r3, [r7, #96]	; 0x60
 8000608:	f3c3 0309 	ubfx	r3, r3, #0, #10
 800060c:	673b      	str	r3, [r7, #112]	; 0x70
 800060e:	4a4e      	ldr	r2, [pc, #312]	; (8000748 <main+0x298>)
 8000610:	6e3b      	ldr	r3, [r7, #96]	; 0x60
 8000612:	6013      	str	r3, [r2, #0]
 8000614:	4b4d      	ldr	r3, [pc, #308]	; (800074c <main+0x29c>)
 8000616:	681b      	ldr	r3, [r3, #0]
 8000618:	3301      	adds	r3, #1
 800061a:	4a4c      	ldr	r2, [pc, #304]	; (800074c <main+0x29c>)
 800061c:	6013      	str	r3, [r2, #0]
 800061e:	4b4b      	ldr	r3, [pc, #300]	; (800074c <main+0x29c>)
 8000620:	681b      	ldr	r3, [r3, #0]
 8000622:	f003 0307 	and.w	r3, r3, #7
 8000626:	2b00      	cmp	r3, #0
 8000628:	d13c      	bne.n	80006a4 <main+0x1f4>
 800062a:	f7ff fef9 	bl	8000420 <update_refposition>
 800062e:	4602      	mov	r2, r0
 8000630:	4b40      	ldr	r3, [pc, #256]	; (8000734 <main+0x284>)
 8000632:	681b      	ldr	r3, [r3, #0]
 8000634:	4413      	add	r3, r2
 8000636:	4a42      	ldr	r2, [pc, #264]	; (8000740 <main+0x290>)
 8000638:	6013      	str	r3, [r2, #0]
 800063a:	6e3b      	ldr	r3, [r7, #96]	; 0x60
 800063c:	4941      	ldr	r1, [pc, #260]	; (8000744 <main+0x294>)
 800063e:	4618      	mov	r0, r3
 8000640:	f000 fc5e 	bl	8000f00 <get_speed>
 8000644:	65f8      	str	r0, [r7, #92]	; 0x5c
 8000646:	4b3b      	ldr	r3, [pc, #236]	; (8000734 <main+0x284>)
 8000648:	681a      	ldr	r2, [r3, #0]
 800064a:	4b3e      	ldr	r3, [pc, #248]	; (8000744 <main+0x294>)
 800064c:	681b      	ldr	r3, [r3, #0]
 800064e:	1ad3      	subs	r3, r2, r3
 8000650:	4618      	mov	r0, r3
 8000652:	f7ff fd35 	bl	80000c0 <debug_signal>
 8000656:	4b3a      	ldr	r3, [pc, #232]	; (8000740 <main+0x290>)
 8000658:	681a      	ldr	r2, [r3, #0]
 800065a:	4b3a      	ldr	r3, [pc, #232]	; (8000744 <main+0x294>)
 800065c:	681b      	ldr	r3, [r3, #0]
 800065e:	1ad1      	subs	r1, r2, r3
 8000660:	f107 0314 	add.w	r3, r7, #20
 8000664:	2200      	movs	r2, #0
 8000666:	4618      	mov	r0, r3
 8000668:	f000 f88c 	bl	8000784 <reg_update>
 800066c:	6a3b      	ldr	r3, [r7, #32]
 800066e:	131b      	asrs	r3, r3, #12
 8000670:	677b      	str	r3, [r7, #116]	; 0x74
 8000672:	6f7a      	ldr	r2, [r7, #116]	; 0x74
 8000674:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
 8000676:	1ad1      	subs	r1, r2, r3
 8000678:	f107 0324 	add.w	r3, r7, #36	; 0x24
 800067c:	2200      	movs	r2, #0
 800067e:	4618      	mov	r0, r3
 8000680:	f000 f880 	bl	8000784 <reg_update>
 8000684:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000686:	131b      	asrs	r3, r3, #12
 8000688:	67fb      	str	r3, [r7, #124]	; 0x7c
 800068a:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
 800068c:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 8000690:	dd02      	ble.n	8000698 <main+0x1e8>
 8000692:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000696:	67fb      	str	r3, [r7, #124]	; 0x7c
 8000698:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
 800069a:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
 800069e:	da01      	bge.n	80006a4 <main+0x1f4>
 80006a0:	4b2b      	ldr	r3, [pc, #172]	; (8000750 <main+0x2a0>)
 80006a2:	67fb      	str	r3, [r7, #124]	; 0x7c
 80006a4:	f7ff fe2e 	bl	8000304 <update_telemetry>
 80006a8:	6f3b      	ldr	r3, [r7, #112]	; 0x70
 80006aa:	f503 732f 	add.w	r3, r3, #700	; 0x2bc
 80006ae:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80006b2:	673b      	str	r3, [r7, #112]	; 0x70
 80006b4:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 80006b6:	603b      	str	r3, [r7, #0]
 80006b8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
 80006ba:	607b      	str	r3, [r7, #4]
 80006bc:	6ebb      	ldr	r3, [r7, #104]	; 0x68
 80006be:	60bb      	str	r3, [r7, #8]
 80006c0:	6f3a      	ldr	r2, [r7, #112]	; 0x70
 80006c2:	f107 010c 	add.w	r1, r7, #12
 80006c6:	463b      	mov	r3, r7
 80006c8:	4618      	mov	r0, r3
 80006ca:	f000 f881 	bl	80007d0 <abc_to_dq>
 80006ce:	68fb      	ldr	r3, [r7, #12]
 80006d0:	425b      	negs	r3, r3
 80006d2:	65bb      	str	r3, [r7, #88]	; 0x58
 80006d4:	693b      	ldr	r3, [r7, #16]
 80006d6:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
 80006d8:	1ad3      	subs	r3, r2, r3
 80006da:	657b      	str	r3, [r7, #84]	; 0x54
 80006dc:	f107 0344 	add.w	r3, r7, #68	; 0x44
 80006e0:	f8d7 2080 	ldr.w	r2, [r7, #128]	; 0x80
 80006e4:	6db9      	ldr	r1, [r7, #88]	; 0x58
 80006e6:	4618      	mov	r0, r3
 80006e8:	f000 f84c 	bl	8000784 <reg_update>
 80006ec:	f107 0334 	add.w	r3, r7, #52	; 0x34
 80006f0:	f8d7 2080 	ldr.w	r2, [r7, #128]	; 0x80
 80006f4:	6d79      	ldr	r1, [r7, #84]	; 0x54
 80006f6:	4618      	mov	r0, r3
 80006f8:	f000 f844 	bl	8000784 <reg_update>
 80006fc:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 80006fe:	109b      	asrs	r3, r3, #2
 8000700:	60fb      	str	r3, [r7, #12]
 8000702:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8000704:	109b      	asrs	r3, r3, #2
 8000706:	613b      	str	r3, [r7, #16]
 8000708:	6f3a      	ldr	r2, [r7, #112]	; 0x70
 800070a:	f107 010c 	add.w	r1, r7, #12
 800070e:	463b      	mov	r3, r7
 8000710:	4618      	mov	r0, r3
 8000712:	f000 fa75 	bl	8000c00 <svpwm>
 8000716:	f8c7 0080 	str.w	r0, [r7, #128]	; 0x80
 800071a:	683b      	ldr	r3, [r7, #0]
 800071c:	4618      	mov	r0, r3
 800071e:	f7ff fdc1 	bl	80002a4 <pwm_seta>
 8000722:	687b      	ldr	r3, [r7, #4]
 8000724:	4618      	mov	r0, r3
 8000726:	f7ff fdcd 	bl	80002c4 <pwm_setb>
 800072a:	68bb      	ldr	r3, [r7, #8]
 800072c:	4618      	mov	r0, r3
 800072e:	f7ff fdd9 	bl	80002e4 <pwm_setc>
 8000732:	e74c      	b.n	80005ce <main+0x11e>
 8000734:	2000022c 	.word	0x2000022c
 8000738:	20000200 	.word	0x20000200
 800073c:	40040000 	.word	0x40040000
 8000740:	20000220 	.word	0x20000220
 8000744:	20000244 	.word	0x20000244
 8000748:	20000248 	.word	0x20000248
 800074c:	20000234 	.word	0x20000234
 8000750:	fffffc18 	.word	0xfffffc18

08000754 <mycos>:
 8000754:	4b02      	ldr	r3, [pc, #8]	; (8000760 <mycos+0xc>)
 8000756:	f3c0 0009 	ubfx	r0, r0, #0, #10
 800075a:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 800075e:	4770      	bx	lr
 8000760:	08001800 	.word	0x08001800

08000764 <mysin>:
 8000764:	4b03      	ldr	r3, [pc, #12]	; (8000774 <mysin+0x10>)
 8000766:	f500 7040 	add.w	r0, r0, #768	; 0x300
 800076a:	f3c0 0009 	ubfx	r0, r0, #0, #10
 800076e:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 8000772:	4770      	bx	lr
 8000774:	08001800 	.word	0x08001800

08000778 <reg_init>:
 8000778:	2300      	movs	r3, #0
 800077a:	e880 000e 	stmia.w	r0, {r1, r2, r3}
 800077e:	60c3      	str	r3, [r0, #12]
 8000780:	4770      	bx	lr
 8000782:	bf00      	nop

08000784 <reg_update>:
 8000784:	6803      	ldr	r3, [r0, #0]
 8000786:	b410      	push	{r4}
 8000788:	fb03 f301 	mul.w	r3, r3, r1
 800078c:	6884      	ldr	r4, [r0, #8]
 800078e:	b11a      	cbz	r2, 8000798 <reg_update+0x14>
 8000790:	2c00      	cmp	r4, #0
 8000792:	dd09      	ble.n	80007a8 <reg_update+0x24>
 8000794:	ea03 73e3 	and.w	r3, r3, r3, asr #31
 8000798:	6842      	ldr	r2, [r0, #4]
 800079a:	4423      	add	r3, r4
 800079c:	fb02 3101 	mla	r1, r2, r1, r3
 80007a0:	6083      	str	r3, [r0, #8]
 80007a2:	60c1      	str	r1, [r0, #12]
 80007a4:	bc10      	pop	{r4}
 80007a6:	4770      	bx	lr
 80007a8:	bf18      	it	ne
 80007aa:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
 80007ae:	e7f3      	b.n	8000798 <reg_update+0x14>

080007b0 <dot3>:
 80007b0:	b430      	push	{r4, r5}
 80007b2:	684b      	ldr	r3, [r1, #4]
 80007b4:	6844      	ldr	r4, [r0, #4]
 80007b6:	6802      	ldr	r2, [r0, #0]
 80007b8:	fb03 f304 	mul.w	r3, r3, r4
 80007bc:	680d      	ldr	r5, [r1, #0]
 80007be:	6884      	ldr	r4, [r0, #8]
 80007c0:	fb05 3302 	mla	r3, r5, r2, r3
 80007c4:	6888      	ldr	r0, [r1, #8]
 80007c6:	fb00 3004 	mla	r0, r0, r4, r3
 80007ca:	bc30      	pop	{r4, r5}
 80007cc:	4770      	bx	lr
 80007ce:	bf00      	nop

080007d0 <abc_to_dq>:
 80007d0:	b4f0      	push	{r4, r5, r6, r7}
 80007d2:	4c1d      	ldr	r4, [pc, #116]	; (8000848 <abc_to_dq+0x78>)
 80007d4:	6803      	ldr	r3, [r0, #0]
 80007d6:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
 80007da:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
 80007de:	fb03 f306 	mul.w	r3, r3, r6
 80007e2:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80007e6:	6847      	ldr	r7, [r0, #4]
 80007e8:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 80007ec:	f202 1655 	addw	r6, r2, #341	; 0x155
 80007f0:	fb07 3305 	mla	r3, r7, r5, r3
 80007f4:	f3c6 0509 	ubfx	r5, r6, #0, #10
 80007f8:	6887      	ldr	r7, [r0, #8]
 80007fa:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 80007fe:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
 8000802:	fb07 3305 	mla	r3, r7, r5, r3
 8000806:	129b      	asrs	r3, r3, #10
 8000808:	600b      	str	r3, [r1, #0]
 800080a:	f3c6 0509 	ubfx	r5, r6, #0, #10
 800080e:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
 8000812:	6843      	ldr	r3, [r0, #4]
 8000814:	f502 7540 	add.w	r5, r2, #768	; 0x300
 8000818:	fb03 f306 	mul.w	r3, r3, r6
 800081c:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000820:	6806      	ldr	r6, [r0, #0]
 8000822:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 8000826:	f202 4255 	addw	r2, r2, #1109	; 0x455
 800082a:	fb06 3305 	mla	r3, r6, r5, r3
 800082e:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000832:	6880      	ldr	r0, [r0, #8]
 8000834:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 8000838:	bcf0      	pop	{r4, r5, r6, r7}
 800083a:	fb00 3302 	mla	r3, r0, r2, r3
 800083e:	425b      	negs	r3, r3
 8000840:	129b      	asrs	r3, r3, #10
 8000842:	604b      	str	r3, [r1, #4]
 8000844:	4770      	bx	lr
 8000846:	bf00      	nop
 8000848:	08001800 	.word	0x08001800

0800084c <dq_to_abc>:
 800084c:	4b1d      	ldr	r3, [pc, #116]	; (80008c4 <dq_to_abc+0x78>)
 800084e:	b4f0      	push	{r4, r5, r6, r7}
 8000850:	680e      	ldr	r6, [r1, #0]
 8000852:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
 8000856:	f502 7540 	add.w	r5, r2, #768	; 0x300
 800085a:	fb04 f406 	mul.w	r4, r4, r6
 800085e:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000862:	684f      	ldr	r7, [r1, #4]
 8000864:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8000868:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
 800086c:	fb07 4415 	mls	r4, r7, r5, r4
 8000870:	1524      	asrs	r4, r4, #20
 8000872:	6004      	str	r4, [r0, #0]
 8000874:	f3c6 0509 	ubfx	r5, r6, #0, #10
 8000878:	680c      	ldr	r4, [r1, #0]
 800087a:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
 800087e:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
 8000882:	fb04 f406 	mul.w	r4, r4, r6
 8000886:	f3c5 0509 	ubfx	r5, r5, #0, #10
 800088a:	684f      	ldr	r7, [r1, #4]
 800088c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8000890:	f202 1655 	addw	r6, r2, #341	; 0x155
 8000894:	fb07 4415 	mls	r4, r7, r5, r4
 8000898:	1524      	asrs	r4, r4, #20
 800089a:	6044      	str	r4, [r0, #4]
 800089c:	f3c6 0509 	ubfx	r5, r6, #0, #10
 80008a0:	680c      	ldr	r4, [r1, #0]
 80008a2:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 80008a6:	f202 4255 	addw	r2, r2, #1109	; 0x455
 80008aa:	fb04 f405 	mul.w	r4, r4, r5
 80008ae:	f3c2 0209 	ubfx	r2, r2, #0, #10
 80008b2:	6849      	ldr	r1, [r1, #4]
 80008b4:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
 80008b8:	fb01 4312 	mls	r3, r1, r2, r4
 80008bc:	bcf0      	pop	{r4, r5, r6, r7}
 80008be:	151b      	asrs	r3, r3, #20
 80008c0:	6083      	str	r3, [r0, #8]
 80008c2:	4770      	bx	lr
 80008c4:	08001800 	.word	0x08001800

080008c8 <cord_atan>:
 80008c8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80008ca:	b091      	sub	sp, #68	; 0x44
 80008cc:	46ee      	mov	lr, sp
 80008ce:	4684      	mov	ip, r0
 80008d0:	4e56      	ldr	r6, [pc, #344]	; (8000a2c <cord_atan+0x164>)
 80008d2:	460d      	mov	r5, r1
 80008d4:	4614      	mov	r4, r2
 80008d6:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 80008d8:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 80008dc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 80008e0:	af08      	add	r7, sp, #32
 80008e2:	3610      	adds	r6, #16
 80008e4:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 80008e8:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 80008ea:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 80008ec:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 80008f0:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 80008f4:	f8dc 6000 	ldr.w	r6, [ip]
 80008f8:	f8dc 3004 	ldr.w	r3, [ip, #4]
 80008fc:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000900:	2b00      	cmp	r3, #0
 8000902:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 8000906:	9900      	ldr	r1, [sp, #0]
 8000908:	dd56      	ble.n	80009b8 <cord_atan+0xf0>
 800090a:	18d0      	adds	r0, r2, r3
 800090c:	1a9b      	subs	r3, r3, r2
 800090e:	2b00      	cmp	r3, #0
 8000910:	d07a      	beq.n	8000a08 <cord_atan+0x140>
 8000912:	9f01      	ldr	r7, [sp, #4]
 8000914:	dd54      	ble.n	80009c0 <cord_atan+0xf8>
 8000916:	eb00 0263 	add.w	r2, r0, r3, asr #1
 800091a:	4439      	add	r1, r7
 800091c:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8000920:	2b00      	cmp	r3, #0
 8000922:	d073      	beq.n	8000a0c <cord_atan+0x144>
 8000924:	9f02      	ldr	r7, [sp, #8]
 8000926:	dd51      	ble.n	80009cc <cord_atan+0x104>
 8000928:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 800092c:	4439      	add	r1, r7
 800092e:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 8000932:	2b00      	cmp	r3, #0
 8000934:	d06d      	beq.n	8000a12 <cord_atan+0x14a>
 8000936:	9f03      	ldr	r7, [sp, #12]
 8000938:	dd4e      	ble.n	80009d8 <cord_atan+0x110>
 800093a:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 800093e:	4439      	add	r1, r7
 8000940:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 8000944:	2b00      	cmp	r3, #0
 8000946:	d066      	beq.n	8000a16 <cord_atan+0x14e>
 8000948:	9f04      	ldr	r7, [sp, #16]
 800094a:	dd4b      	ble.n	80009e4 <cord_atan+0x11c>
 800094c:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8000950:	4439      	add	r1, r7
 8000952:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8000956:	2b00      	cmp	r3, #0
 8000958:	d060      	beq.n	8000a1c <cord_atan+0x154>
 800095a:	9f05      	ldr	r7, [sp, #20]
 800095c:	dd48      	ble.n	80009f0 <cord_atan+0x128>
 800095e:	eb00 1263 	add.w	r2, r0, r3, asr #5
 8000962:	4439      	add	r1, r7
 8000964:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8000968:	2b00      	cmp	r3, #0
 800096a:	d059      	beq.n	8000a20 <cord_atan+0x158>
 800096c:	9f06      	ldr	r7, [sp, #24]
 800096e:	dd45      	ble.n	80009fc <cord_atan+0x134>
 8000970:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 8000974:	4439      	add	r1, r7
 8000976:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 800097a:	2b00      	cmp	r3, #0
 800097c:	d053      	beq.n	8000a26 <cord_atan+0x15e>
 800097e:	9a07      	ldr	r2, [sp, #28]
 8000980:	bfc7      	ittee	gt
 8000982:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 8000986:	1889      	addgt	r1, r1, r2
 8000988:	1a89      	suble	r1, r1, r2
 800098a:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 800098e:	2207      	movs	r2, #7
 8000990:	ab10      	add	r3, sp, #64	; 0x40
 8000992:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8000996:	f852 3c20 	ldr.w	r3, [r2, #-32]
 800099a:	2e00      	cmp	r6, #0
 800099c:	fb03 f300 	mul.w	r3, r3, r0
 80009a0:	bfb8      	it	lt
 80009a2:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 80009a6:	2900      	cmp	r1, #0
 80009a8:	bfb8      	it	lt
 80009aa:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 80009ae:	129b      	asrs	r3, r3, #10
 80009b0:	6029      	str	r1, [r5, #0]
 80009b2:	6023      	str	r3, [r4, #0]
 80009b4:	b011      	add	sp, #68	; 0x44
 80009b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80009b8:	1ad0      	subs	r0, r2, r3
 80009ba:	4249      	negs	r1, r1
 80009bc:	4413      	add	r3, r2
 80009be:	e7a6      	b.n	800090e <cord_atan+0x46>
 80009c0:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 80009c4:	1bc9      	subs	r1, r1, r7
 80009c6:	eb03 0360 	add.w	r3, r3, r0, asr #1
 80009ca:	e7a9      	b.n	8000920 <cord_atan+0x58>
 80009cc:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 80009d0:	1bc9      	subs	r1, r1, r7
 80009d2:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 80009d6:	e7ac      	b.n	8000932 <cord_atan+0x6a>
 80009d8:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 80009dc:	1bc9      	subs	r1, r1, r7
 80009de:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 80009e2:	e7af      	b.n	8000944 <cord_atan+0x7c>
 80009e4:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 80009e8:	1bc9      	subs	r1, r1, r7
 80009ea:	eb03 1322 	add.w	r3, r3, r2, asr #4
 80009ee:	e7b2      	b.n	8000956 <cord_atan+0x8e>
 80009f0:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 80009f4:	1bc9      	subs	r1, r1, r7
 80009f6:	eb03 1360 	add.w	r3, r3, r0, asr #5
 80009fa:	e7b5      	b.n	8000968 <cord_atan+0xa0>
 80009fc:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8000a00:	1bc9      	subs	r1, r1, r7
 8000a02:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8000a06:	e7b8      	b.n	800097a <cord_atan+0xb2>
 8000a08:	461a      	mov	r2, r3
 8000a0a:	e7c1      	b.n	8000990 <cord_atan+0xc8>
 8000a0c:	4610      	mov	r0, r2
 8000a0e:	2201      	movs	r2, #1
 8000a10:	e7be      	b.n	8000990 <cord_atan+0xc8>
 8000a12:	2202      	movs	r2, #2
 8000a14:	e7bc      	b.n	8000990 <cord_atan+0xc8>
 8000a16:	4610      	mov	r0, r2
 8000a18:	2203      	movs	r2, #3
 8000a1a:	e7b9      	b.n	8000990 <cord_atan+0xc8>
 8000a1c:	2204      	movs	r2, #4
 8000a1e:	e7b7      	b.n	8000990 <cord_atan+0xc8>
 8000a20:	4610      	mov	r0, r2
 8000a22:	2205      	movs	r2, #5
 8000a24:	e7b4      	b.n	8000990 <cord_atan+0xc8>
 8000a26:	2206      	movs	r2, #6
 8000a28:	e7b2      	b.n	8000990 <cord_atan+0xc8>
 8000a2a:	bf00      	nop
 8000a2c:	080017c0 	.word	0x080017c0

08000a30 <sinpwm>:
 8000a30:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000a32:	b091      	sub	sp, #68	; 0x44
 8000a34:	46ee      	mov	lr, sp
 8000a36:	468c      	mov	ip, r1
 8000a38:	4e6e      	ldr	r6, [pc, #440]	; (8000bf4 <sinpwm+0x1c4>)
 8000a3a:	4604      	mov	r4, r0
 8000a3c:	4615      	mov	r5, r2
 8000a3e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000a40:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8000a44:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000a48:	af08      	add	r7, sp, #32
 8000a4a:	3610      	adds	r6, #16
 8000a4c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 8000a50:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000a52:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 8000a54:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000a58:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8000a5c:	f8dc 6000 	ldr.w	r6, [ip]
 8000a60:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8000a64:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000a68:	2b00      	cmp	r3, #0
 8000a6a:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 8000a6e:	9900      	ldr	r1, [sp, #0]
 8000a70:	f340 8087 	ble.w	8000b82 <sinpwm+0x152>
 8000a74:	18d0      	adds	r0, r2, r3
 8000a76:	1a9b      	subs	r3, r3, r2
 8000a78:	2b00      	cmp	r3, #0
 8000a7a:	f000 80aa 	beq.w	8000bd2 <sinpwm+0x1a2>
 8000a7e:	9f01      	ldr	r7, [sp, #4]
 8000a80:	f340 8083 	ble.w	8000b8a <sinpwm+0x15a>
 8000a84:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8000a88:	4439      	add	r1, r7
 8000a8a:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8000a8e:	2b00      	cmp	r3, #0
 8000a90:	f000 80a1 	beq.w	8000bd6 <sinpwm+0x1a6>
 8000a94:	9f02      	ldr	r7, [sp, #8]
 8000a96:	dd7e      	ble.n	8000b96 <sinpwm+0x166>
 8000a98:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8000a9c:	4439      	add	r1, r7
 8000a9e:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 8000aa2:	2b00      	cmp	r3, #0
 8000aa4:	f000 809a 	beq.w	8000bdc <sinpwm+0x1ac>
 8000aa8:	9f03      	ldr	r7, [sp, #12]
 8000aaa:	dd7a      	ble.n	8000ba2 <sinpwm+0x172>
 8000aac:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 8000ab0:	4439      	add	r1, r7
 8000ab2:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 8000ab6:	2b00      	cmp	r3, #0
 8000ab8:	f000 8092 	beq.w	8000be0 <sinpwm+0x1b0>
 8000abc:	9f04      	ldr	r7, [sp, #16]
 8000abe:	dd76      	ble.n	8000bae <sinpwm+0x17e>
 8000ac0:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8000ac4:	4439      	add	r1, r7
 8000ac6:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8000aca:	2b00      	cmp	r3, #0
 8000acc:	f000 808b 	beq.w	8000be6 <sinpwm+0x1b6>
 8000ad0:	9f05      	ldr	r7, [sp, #20]
 8000ad2:	dd72      	ble.n	8000bba <sinpwm+0x18a>
 8000ad4:	eb00 1263 	add.w	r2, r0, r3, asr #5
 8000ad8:	4439      	add	r1, r7
 8000ada:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8000ade:	2b00      	cmp	r3, #0
 8000ae0:	f000 8083 	beq.w	8000bea <sinpwm+0x1ba>
 8000ae4:	9f06      	ldr	r7, [sp, #24]
 8000ae6:	dd6e      	ble.n	8000bc6 <sinpwm+0x196>
 8000ae8:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 8000aec:	4439      	add	r1, r7
 8000aee:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 8000af2:	2b00      	cmp	r3, #0
 8000af4:	d07c      	beq.n	8000bf0 <sinpwm+0x1c0>
 8000af6:	9a07      	ldr	r2, [sp, #28]
 8000af8:	bfc7      	ittee	gt
 8000afa:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 8000afe:	1889      	addgt	r1, r1, r2
 8000b00:	1a89      	suble	r1, r1, r2
 8000b02:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 8000b06:	2207      	movs	r2, #7
 8000b08:	ab10      	add	r3, sp, #64	; 0x40
 8000b0a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8000b0e:	f852 3c20 	ldr.w	r3, [r2, #-32]
 8000b12:	2e00      	cmp	r6, #0
 8000b14:	fb03 f300 	mul.w	r3, r3, r0
 8000b18:	bfb8      	it	lt
 8000b1a:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 8000b1e:	2900      	cmp	r1, #0
 8000b20:	bfb8      	it	lt
 8000b22:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 8000b26:	151b      	asrs	r3, r3, #20
 8000b28:	440d      	add	r5, r1
 8000b2a:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 8000b2e:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000b32:	dd22      	ble.n	8000b7a <sinpwm+0x14a>
 8000b34:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 8000bfc <sinpwm+0x1cc>
 8000b38:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 8000b3c:	2001      	movs	r0, #1
 8000b3e:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
 8000b42:	4f2d      	ldr	r7, [pc, #180]	; (8000bf8 <sinpwm+0x1c8>)
 8000b44:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
 8000b48:	3602      	adds	r6, #2
 8000b4a:	f3ce 0e09 	ubfx	lr, lr, #0, #10
 8000b4e:	f3c6 0609 	ubfx	r6, r6, #0, #10
 8000b52:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
 8000b56:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
 8000b5a:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
 8000b5e:	fb06 f50c 	mul.w	r5, r6, ip
 8000b62:	fb01 f10c 	mul.w	r1, r1, ip
 8000b66:	fb02 f303 	mul.w	r3, r2, r3
 8000b6a:	12ad      	asrs	r5, r5, #10
 8000b6c:	128a      	asrs	r2, r1, #10
 8000b6e:	129b      	asrs	r3, r3, #10
 8000b70:	60a5      	str	r5, [r4, #8]
 8000b72:	6062      	str	r2, [r4, #4]
 8000b74:	6023      	str	r3, [r4, #0]
 8000b76:	b011      	add	sp, #68	; 0x44
 8000b78:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b7a:	f1c3 0c00 	rsb	ip, r3, #0
 8000b7e:	2000      	movs	r0, #0
 8000b80:	e7dd      	b.n	8000b3e <sinpwm+0x10e>
 8000b82:	1ad0      	subs	r0, r2, r3
 8000b84:	4249      	negs	r1, r1
 8000b86:	4413      	add	r3, r2
 8000b88:	e776      	b.n	8000a78 <sinpwm+0x48>
 8000b8a:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 8000b8e:	1bc9      	subs	r1, r1, r7
 8000b90:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8000b94:	e77b      	b.n	8000a8e <sinpwm+0x5e>
 8000b96:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8000b9a:	1bc9      	subs	r1, r1, r7
 8000b9c:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 8000ba0:	e77f      	b.n	8000aa2 <sinpwm+0x72>
 8000ba2:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8000ba6:	1bc9      	subs	r1, r1, r7
 8000ba8:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 8000bac:	e783      	b.n	8000ab6 <sinpwm+0x86>
 8000bae:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8000bb2:	1bc9      	subs	r1, r1, r7
 8000bb4:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8000bb8:	e787      	b.n	8000aca <sinpwm+0x9a>
 8000bba:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 8000bbe:	1bc9      	subs	r1, r1, r7
 8000bc0:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8000bc4:	e78b      	b.n	8000ade <sinpwm+0xae>
 8000bc6:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8000bca:	1bc9      	subs	r1, r1, r7
 8000bcc:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8000bd0:	e78f      	b.n	8000af2 <sinpwm+0xc2>
 8000bd2:	461a      	mov	r2, r3
 8000bd4:	e798      	b.n	8000b08 <sinpwm+0xd8>
 8000bd6:	4610      	mov	r0, r2
 8000bd8:	2201      	movs	r2, #1
 8000bda:	e795      	b.n	8000b08 <sinpwm+0xd8>
 8000bdc:	2202      	movs	r2, #2
 8000bde:	e793      	b.n	8000b08 <sinpwm+0xd8>
 8000be0:	4610      	mov	r0, r2
 8000be2:	2203      	movs	r2, #3
 8000be4:	e790      	b.n	8000b08 <sinpwm+0xd8>
 8000be6:	2204      	movs	r2, #4
 8000be8:	e78e      	b.n	8000b08 <sinpwm+0xd8>
 8000bea:	4610      	mov	r0, r2
 8000bec:	2205      	movs	r2, #5
 8000bee:	e78b      	b.n	8000b08 <sinpwm+0xd8>
 8000bf0:	2206      	movs	r2, #6
 8000bf2:	e789      	b.n	8000b08 <sinpwm+0xd8>
 8000bf4:	080017c0 	.word	0x080017c0
 8000bf8:	08001800 	.word	0x08001800
 8000bfc:	fffffe0c 	.word	0xfffffe0c

08000c00 <svpwm>:
 8000c00:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c02:	b091      	sub	sp, #68	; 0x44
 8000c04:	46ee      	mov	lr, sp
 8000c06:	468c      	mov	ip, r1
 8000c08:	4eb8      	ldr	r6, [pc, #736]	; (8000eec <svpwm+0x2ec>)
 8000c0a:	4604      	mov	r4, r0
 8000c0c:	4615      	mov	r5, r2
 8000c0e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000c10:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8000c14:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000c18:	af08      	add	r7, sp, #32
 8000c1a:	3610      	adds	r6, #16
 8000c1c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 8000c20:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000c22:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 8000c24:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000c28:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8000c2c:	f8dc 6000 	ldr.w	r6, [ip]
 8000c30:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8000c34:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000c38:	2b00      	cmp	r3, #0
 8000c3a:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 8000c3e:	9900      	ldr	r1, [sp, #0]
 8000c40:	dd6f      	ble.n	8000d22 <svpwm+0x122>
 8000c42:	18d0      	adds	r0, r2, r3
 8000c44:	1a9b      	subs	r3, r3, r2
 8000c46:	2b00      	cmp	r3, #0
 8000c48:	f000 813f 	beq.w	8000eca <svpwm+0x2ca>
 8000c4c:	9f01      	ldr	r7, [sp, #4]
 8000c4e:	dd6c      	ble.n	8000d2a <svpwm+0x12a>
 8000c50:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8000c54:	4439      	add	r1, r7
 8000c56:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8000c5a:	2b00      	cmp	r3, #0
 8000c5c:	f000 8137 	beq.w	8000ece <svpwm+0x2ce>
 8000c60:	9f02      	ldr	r7, [sp, #8]
 8000c62:	dd68      	ble.n	8000d36 <svpwm+0x136>
 8000c64:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8000c68:	4439      	add	r1, r7
 8000c6a:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 8000c6e:	2b00      	cmp	r3, #0
 8000c70:	f000 8130 	beq.w	8000ed4 <svpwm+0x2d4>
 8000c74:	9f03      	ldr	r7, [sp, #12]
 8000c76:	dd64      	ble.n	8000d42 <svpwm+0x142>
 8000c78:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 8000c7c:	4439      	add	r1, r7
 8000c7e:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 8000c82:	2b00      	cmp	r3, #0
 8000c84:	f000 8128 	beq.w	8000ed8 <svpwm+0x2d8>
 8000c88:	9f04      	ldr	r7, [sp, #16]
 8000c8a:	dd60      	ble.n	8000d4e <svpwm+0x14e>
 8000c8c:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8000c90:	4439      	add	r1, r7
 8000c92:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8000c96:	2b00      	cmp	r3, #0
 8000c98:	f000 8121 	beq.w	8000ede <svpwm+0x2de>
 8000c9c:	9f05      	ldr	r7, [sp, #20]
 8000c9e:	dd5c      	ble.n	8000d5a <svpwm+0x15a>
 8000ca0:	eb00 1263 	add.w	r2, r0, r3, asr #5
 8000ca4:	4439      	add	r1, r7
 8000ca6:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8000caa:	2b00      	cmp	r3, #0
 8000cac:	f000 8119 	beq.w	8000ee2 <svpwm+0x2e2>
 8000cb0:	9f06      	ldr	r7, [sp, #24]
 8000cb2:	dd58      	ble.n	8000d66 <svpwm+0x166>
 8000cb4:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 8000cb8:	4439      	add	r1, r7
 8000cba:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 8000cbe:	2b00      	cmp	r3, #0
 8000cc0:	f000 8112 	beq.w	8000ee8 <svpwm+0x2e8>
 8000cc4:	9a07      	ldr	r2, [sp, #28]
 8000cc6:	bfc7      	ittee	gt
 8000cc8:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 8000ccc:	1889      	addgt	r1, r1, r2
 8000cce:	1a89      	suble	r1, r1, r2
 8000cd0:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 8000cd4:	2207      	movs	r2, #7
 8000cd6:	ab10      	add	r3, sp, #64	; 0x40
 8000cd8:	2e00      	cmp	r6, #0
 8000cda:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8000cde:	bfb8      	it	lt
 8000ce0:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 8000ce4:	f852 3c20 	ldr.w	r3, [r2, #-32]
 8000ce8:	2900      	cmp	r1, #0
 8000cea:	fb03 f300 	mul.w	r3, r3, r0
 8000cee:	bfb8      	it	lt
 8000cf0:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 8000cf4:	440d      	add	r5, r1
 8000cf6:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000cfa:	eb05 0245 	add.w	r2, r5, r5, lsl #1
 8000cfe:	151b      	asrs	r3, r3, #20
 8000d00:	1252      	asrs	r2, r2, #9
 8000d02:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 8000d06:	f102 32ff 	add.w	r2, r2, #4294967295
 8000d0a:	bfc6      	itte	gt
 8000d0c:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
 8000d10:	2001      	movgt	r0, #1
 8000d12:	2000      	movle	r0, #0
 8000d14:	2a04      	cmp	r2, #4
 8000d16:	d848      	bhi.n	8000daa <svpwm+0x1aa>
 8000d18:	e8df f002 	tbb	[pc, r2]
 8000d1c:	2b9e8164 	.word	0x2b9e8164
 8000d20:	bb          	.byte	0xbb
 8000d21:	00          	.byte	0x00
 8000d22:	1ad0      	subs	r0, r2, r3
 8000d24:	4249      	negs	r1, r1
 8000d26:	4413      	add	r3, r2
 8000d28:	e78d      	b.n	8000c46 <svpwm+0x46>
 8000d2a:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 8000d2e:	1bc9      	subs	r1, r1, r7
 8000d30:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8000d34:	e791      	b.n	8000c5a <svpwm+0x5a>
 8000d36:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8000d3a:	1bc9      	subs	r1, r1, r7
 8000d3c:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 8000d40:	e795      	b.n	8000c6e <svpwm+0x6e>
 8000d42:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8000d46:	1bc9      	subs	r1, r1, r7
 8000d48:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 8000d4c:	e799      	b.n	8000c82 <svpwm+0x82>
 8000d4e:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8000d52:	1bc9      	subs	r1, r1, r7
 8000d54:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8000d58:	e79d      	b.n	8000c96 <svpwm+0x96>
 8000d5a:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 8000d5e:	1bc9      	subs	r1, r1, r7
 8000d60:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8000d64:	e7a1      	b.n	8000caa <svpwm+0xaa>
 8000d66:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8000d6a:	1bc9      	subs	r1, r1, r7
 8000d6c:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8000d70:	e7a5      	b.n	8000cbe <svpwm+0xbe>
 8000d72:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
 8000d76:	4e5e      	ldr	r6, [pc, #376]	; (8000ef0 <svpwm+0x2f0>)
 8000d78:	3204      	adds	r2, #4
 8000d7a:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000d7e:	3556      	adds	r5, #86	; 0x56
 8000d80:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000d84:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000d88:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000d8c:	fb01 f103 	mul.w	r1, r1, r3
 8000d90:	fb02 f203 	mul.w	r2, r2, r3
 8000d94:	1289      	asrs	r1, r1, #10
 8000d96:	1293      	asrs	r3, r2, #10
 8000d98:	424a      	negs	r2, r1
 8000d9a:	1ad2      	subs	r2, r2, r3
 8000d9c:	1a5d      	subs	r5, r3, r1
 8000d9e:	440b      	add	r3, r1
 8000da0:	6062      	str	r2, [r4, #4]
 8000da2:	6025      	str	r5, [r4, #0]
 8000da4:	60a3      	str	r3, [r4, #8]
 8000da6:	b011      	add	sp, #68	; 0x44
 8000da8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000daa:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
 8000dae:	4e50      	ldr	r6, [pc, #320]	; (8000ef0 <svpwm+0x2f0>)
 8000db0:	3202      	adds	r2, #2
 8000db2:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000db6:	f505 7540 	add.w	r5, r5, #768	; 0x300
 8000dba:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000dbe:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000dc2:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000dc6:	fb01 f103 	mul.w	r1, r1, r3
 8000dca:	fb02 f203 	mul.w	r2, r2, r3
 8000dce:	1289      	asrs	r1, r1, #10
 8000dd0:	1293      	asrs	r3, r2, #10
 8000dd2:	424a      	negs	r2, r1
 8000dd4:	1ad2      	subs	r2, r2, r3
 8000dd6:	18cd      	adds	r5, r1, r3
 8000dd8:	1a5b      	subs	r3, r3, r1
 8000dda:	60a2      	str	r2, [r4, #8]
 8000ddc:	6025      	str	r5, [r4, #0]
 8000dde:	6063      	str	r3, [r4, #4]
 8000de0:	b011      	add	sp, #68	; 0x44
 8000de2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000de4:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
 8000de8:	4e41      	ldr	r6, [pc, #260]	; (8000ef0 <svpwm+0x2f0>)
 8000dea:	3204      	adds	r2, #4
 8000dec:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000df0:	f205 2556 	addw	r5, r5, #598	; 0x256
 8000df4:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000df8:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000dfc:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000e00:	fb01 f103 	mul.w	r1, r1, r3
 8000e04:	fb02 f203 	mul.w	r2, r2, r3
 8000e08:	1289      	asrs	r1, r1, #10
 8000e0a:	1293      	asrs	r3, r2, #10
 8000e0c:	424a      	negs	r2, r1
 8000e0e:	1ad2      	subs	r2, r2, r3
 8000e10:	1acd      	subs	r5, r1, r3
 8000e12:	440b      	add	r3, r1
 8000e14:	60a2      	str	r2, [r4, #8]
 8000e16:	6025      	str	r5, [r4, #0]
 8000e18:	6063      	str	r3, [r4, #4]
 8000e1a:	b011      	add	sp, #68	; 0x44
 8000e1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000e1e:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
 8000e22:	4e33      	ldr	r6, [pc, #204]	; (8000ef0 <svpwm+0x2f0>)
 8000e24:	320f      	adds	r2, #15
 8000e26:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000e2a:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
 8000e2e:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000e32:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000e36:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000e3a:	fb01 f103 	mul.w	r1, r1, r3
 8000e3e:	fb02 f203 	mul.w	r2, r2, r3
 8000e42:	1289      	asrs	r1, r1, #10
 8000e44:	1293      	asrs	r3, r2, #10
 8000e46:	424a      	negs	r2, r1
 8000e48:	1ad2      	subs	r2, r2, r3
 8000e4a:	18cd      	adds	r5, r1, r3
 8000e4c:	1a5b      	subs	r3, r3, r1
 8000e4e:	e884 0024 	stmia.w	r4, {r2, r5}
 8000e52:	60a3      	str	r3, [r4, #8]
 8000e54:	b011      	add	sp, #68	; 0x44
 8000e56:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000e58:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
 8000e5c:	4e24      	ldr	r6, [pc, #144]	; (8000ef0 <svpwm+0x2f0>)
 8000e5e:	320a      	adds	r2, #10
 8000e60:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000e64:	f505 7580 	add.w	r5, r5, #256	; 0x100
 8000e68:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000e6c:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000e70:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000e74:	fb01 f103 	mul.w	r1, r1, r3
 8000e78:	fb02 f203 	mul.w	r2, r2, r3
 8000e7c:	1289      	asrs	r1, r1, #10
 8000e7e:	1293      	asrs	r3, r2, #10
 8000e80:	424a      	negs	r2, r1
 8000e82:	1ad2      	subs	r2, r2, r3
 8000e84:	1acd      	subs	r5, r1, r3
 8000e86:	440b      	add	r3, r1
 8000e88:	e884 0024 	stmia.w	r4, {r2, r5}
 8000e8c:	60a3      	str	r3, [r4, #8]
 8000e8e:	b011      	add	sp, #68	; 0x44
 8000e90:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000e92:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
 8000e96:	4916      	ldr	r1, [pc, #88]	; (8000ef0 <svpwm+0x2f0>)
 8000e98:	320f      	adds	r2, #15
 8000e9a:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000e9e:	3d55      	subs	r5, #85	; 0x55
 8000ea0:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8000ea4:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000ea8:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
 8000eac:	fb02 f203 	mul.w	r2, r2, r3
 8000eb0:	fb01 f303 	mul.w	r3, r1, r3
 8000eb4:	1292      	asrs	r2, r2, #10
 8000eb6:	129b      	asrs	r3, r3, #10
 8000eb8:	4251      	negs	r1, r2
 8000eba:	18d5      	adds	r5, r2, r3
 8000ebc:	1ac9      	subs	r1, r1, r3
 8000ebe:	1ad2      	subs	r2, r2, r3
 8000ec0:	6061      	str	r1, [r4, #4]
 8000ec2:	6025      	str	r5, [r4, #0]
 8000ec4:	60a2      	str	r2, [r4, #8]
 8000ec6:	b011      	add	sp, #68	; 0x44
 8000ec8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000eca:	461a      	mov	r2, r3
 8000ecc:	e703      	b.n	8000cd6 <svpwm+0xd6>
 8000ece:	4610      	mov	r0, r2
 8000ed0:	2201      	movs	r2, #1
 8000ed2:	e700      	b.n	8000cd6 <svpwm+0xd6>
 8000ed4:	2202      	movs	r2, #2
 8000ed6:	e6fe      	b.n	8000cd6 <svpwm+0xd6>
 8000ed8:	4610      	mov	r0, r2
 8000eda:	2203      	movs	r2, #3
 8000edc:	e6fb      	b.n	8000cd6 <svpwm+0xd6>
 8000ede:	2204      	movs	r2, #4
 8000ee0:	e6f9      	b.n	8000cd6 <svpwm+0xd6>
 8000ee2:	4610      	mov	r0, r2
 8000ee4:	2205      	movs	r2, #5
 8000ee6:	e6f6      	b.n	8000cd6 <svpwm+0xd6>
 8000ee8:	2206      	movs	r2, #6
 8000eea:	e6f4      	b.n	8000cd6 <svpwm+0xd6>
 8000eec:	080017c0 	.word	0x080017c0
 8000ef0:	08001800 	.word	0x08001800

08000ef4 <encoder_init>:
 8000ef4:	4b01      	ldr	r3, [pc, #4]	; (8000efc <encoder_init+0x8>)
 8000ef6:	6018      	str	r0, [r3, #0]
 8000ef8:	6058      	str	r0, [r3, #4]
 8000efa:	4770      	bx	lr
 8000efc:	2000025c 	.word	0x2000025c

08000f00 <get_speed>:
 8000f00:	4a0e      	ldr	r2, [pc, #56]	; (8000f3c <get_speed+0x3c>)
 8000f02:	b430      	push	{r4, r5}
 8000f04:	6853      	ldr	r3, [r2, #4]
 8000f06:	6815      	ldr	r5, [r2, #0]
 8000f08:	1ac3      	subs	r3, r0, r3
 8000f0a:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
 8000f0e:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
 8000f12:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
 8000f16:	e882 0021 	stmia.w	r2, {r0, r5}
 8000f1a:	dd05      	ble.n	8000f28 <get_speed+0x28>
 8000f1c:	2b00      	cmp	r3, #0
 8000f1e:	bfb4      	ite	lt
 8000f20:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
 8000f24:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
 8000f28:	4a05      	ldr	r2, [pc, #20]	; (8000f40 <get_speed+0x40>)
 8000f2a:	1058      	asrs	r0, r3, #1
 8000f2c:	fb02 f000 	mul.w	r0, r2, r0
 8000f30:	bc30      	pop	{r4, r5}
 8000f32:	680a      	ldr	r2, [r1, #0]
 8000f34:	1300      	asrs	r0, r0, #12
 8000f36:	4413      	add	r3, r2
 8000f38:	600b      	str	r3, [r1, #0]
 8000f3a:	4770      	bx	lr
 8000f3c:	2000025c 	.word	0x2000025c
 8000f40:	0002ae7c 	.word	0x0002ae7c

08000f44 <mfilter>:
 8000f44:	4908      	ldr	r1, [pc, #32]	; (8000f68 <mfilter+0x24>)
 8000f46:	b430      	push	{r4, r5}
 8000f48:	688a      	ldr	r2, [r1, #8]
 8000f4a:	68cb      	ldr	r3, [r1, #12]
 8000f4c:	3201      	adds	r2, #1
 8000f4e:	f002 021f 	and.w	r2, r2, #31
 8000f52:	eb01 0482 	add.w	r4, r1, r2, lsl #2
 8000f56:	6925      	ldr	r5, [r4, #16]
 8000f58:	608a      	str	r2, [r1, #8]
 8000f5a:	1b5b      	subs	r3, r3, r5
 8000f5c:	4403      	add	r3, r0
 8000f5e:	6120      	str	r0, [r4, #16]
 8000f60:	60cb      	str	r3, [r1, #12]
 8000f62:	1158      	asrs	r0, r3, #5
 8000f64:	bc30      	pop	{r4, r5}
 8000f66:	4770      	bx	lr
 8000f68:	2000025c 	.word	0x2000025c

08000f6c <rfilter1>:
 8000f6c:	b470      	push	{r4, r5, r6}
 8000f6e:	f240 74c6 	movw	r4, #1990	; 0x7c6
 8000f72:	4b12      	ldr	r3, [pc, #72]	; (8000fbc <rfilter1+0x50>)
 8000f74:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
 8000f78:	f8d3 6090 	ldr.w	r6, [r3, #144]	; 0x90
 8000f7c:	f8d3 1098 	ldr.w	r1, [r3, #152]	; 0x98
 8000f80:	fb04 f406 	mul.w	r4, r4, r6
 8000f84:	fb02 4201 	mla	r2, r2, r1, r4
 8000f88:	490d      	ldr	r1, [pc, #52]	; (8000fc0 <rfilter1+0x54>)
 8000f8a:	f8d3 5094 	ldr.w	r5, [r3, #148]	; 0x94
 8000f8e:	fb01 2200 	mla	r2, r1, r0, r2
 8000f92:	4c0c      	ldr	r4, [pc, #48]	; (8000fc4 <rfilter1+0x58>)
 8000f94:	f8d3 109c 	ldr.w	r1, [r3, #156]	; 0x9c
 8000f98:	fb04 2205 	mla	r2, r4, r5, r2
 8000f9c:	4c0a      	ldr	r4, [pc, #40]	; (8000fc8 <rfilter1+0x5c>)
 8000f9e:	f8c3 6098 	str.w	r6, [r3, #152]	; 0x98
 8000fa2:	fb04 2201 	mla	r2, r4, r1, r2
 8000fa6:	1291      	asrs	r1, r2, #10
 8000fa8:	f8c3 0094 	str.w	r0, [r3, #148]	; 0x94
 8000fac:	f8c3 509c 	str.w	r5, [r3, #156]	; 0x9c
 8000fb0:	1490      	asrs	r0, r2, #18
 8000fb2:	f8c3 1090 	str.w	r1, [r3, #144]	; 0x90
 8000fb6:	bc70      	pop	{r4, r5, r6}
 8000fb8:	4770      	bx	lr
 8000fba:	bf00      	nop
 8000fbc:	2000025c 	.word	0x2000025c
 8000fc0:	0003f0a4 	.word	0x0003f0a4
 8000fc4:	fff83a2e 	.word	0xfff83a2e
 8000fc8:	0003dc29 	.word	0x0003dc29

08000fcc <rfilter2>:
 8000fcc:	b470      	push	{r4, r5, r6}
 8000fce:	f240 748a 	movw	r4, #1930	; 0x78a
 8000fd2:	4b11      	ldr	r3, [pc, #68]	; (8001018 <rfilter2+0x4c>)
 8000fd4:	4a11      	ldr	r2, [pc, #68]	; (800101c <rfilter2+0x50>)
 8000fd6:	f8d3 60a0 	ldr.w	r6, [r3, #160]	; 0xa0
 8000fda:	f8d3 10a8 	ldr.w	r1, [r3, #168]	; 0xa8
 8000fde:	fb04 f406 	mul.w	r4, r4, r6
 8000fe2:	fb02 4201 	mla	r2, r2, r1, r4
 8000fe6:	490e      	ldr	r1, [pc, #56]	; (8001020 <rfilter2+0x54>)
 8000fe8:	f8d3 50a4 	ldr.w	r5, [r3, #164]	; 0xa4
 8000fec:	fb01 2200 	mla	r2, r1, r0, r2
 8000ff0:	4c0c      	ldr	r4, [pc, #48]	; (8001024 <rfilter2+0x58>)
 8000ff2:	f8d3 10ac 	ldr.w	r1, [r3, #172]	; 0xac
 8000ff6:	fb04 2205 	mla	r2, r4, r5, r2
 8000ffa:	4c0b      	ldr	r4, [pc, #44]	; (8001028 <rfilter2+0x5c>)
 8000ffc:	f8c3 60a8 	str.w	r6, [r3, #168]	; 0xa8
 8001000:	fb04 2201 	mla	r2, r4, r1, r2
 8001004:	1291      	asrs	r1, r2, #10
 8001006:	f8c3 00a4 	str.w	r0, [r3, #164]	; 0xa4
 800100a:	f8c3 50ac 	str.w	r5, [r3, #172]	; 0xac
 800100e:	1490      	asrs	r0, r2, #18
 8001010:	f8c3 10a0 	str.w	r1, [r3, #160]	; 0xa0
 8001014:	bc70      	pop	{r4, r5, r6}
 8001016:	4770      	bx	lr
 8001018:	2000025c 	.word	0x2000025c
 800101c:	fffffc66 	.word	0xfffffc66
 8001020:	0003e3d7 	.word	0x0003e3d7
 8001024:	fff8767b 	.word	0xfff8767b
 8001028:	0003b5c3 	.word	0x0003b5c3

0800102c <adc_init>:
 800102c:	b480      	push	{r7}
 800102e:	af00      	add	r7, sp, #0
 8001030:	4a10      	ldr	r2, [pc, #64]	; (8001074 <adc_init+0x48>)
 8001032:	4b10      	ldr	r3, [pc, #64]	; (8001074 <adc_init+0x48>)
 8001034:	69db      	ldr	r3, [r3, #28]
 8001036:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 800103a:	61d3      	str	r3, [r2, #28]
 800103c:	4b0d      	ldr	r3, [pc, #52]	; (8001074 <adc_init+0x48>)
 800103e:	f242 0220 	movw	r2, #8224	; 0x2020
 8001042:	615a      	str	r2, [r3, #20]
 8001044:	4b0c      	ldr	r3, [pc, #48]	; (8001078 <adc_init+0x4c>)
 8001046:	2200      	movs	r2, #0
 8001048:	601a      	str	r2, [r3, #0]
 800104a:	4a0b      	ldr	r2, [pc, #44]	; (8001078 <adc_init+0x4c>)
 800104c:	4b0a      	ldr	r3, [pc, #40]	; (8001078 <adc_init+0x4c>)
 800104e:	681b      	ldr	r3, [r3, #0]
 8001050:	f443 7301 	orr.w	r3, r3, #516	; 0x204
 8001054:	f043 0301 	orr.w	r3, r3, #1
 8001058:	6013      	str	r3, [r2, #0]
 800105a:	4a07      	ldr	r2, [pc, #28]	; (8001078 <adc_init+0x4c>)
 800105c:	4b06      	ldr	r3, [pc, #24]	; (8001078 <adc_init+0x4c>)
 800105e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001060:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
 8001064:	6293      	str	r3, [r2, #40]	; 0x28
 8001066:	4b04      	ldr	r3, [pc, #16]	; (8001078 <adc_init+0x4c>)
 8001068:	2210      	movs	r2, #16
 800106a:	621a      	str	r2, [r3, #32]
 800106c:	bf00      	nop
 800106e:	46bd      	mov	sp, r7
 8001070:	bc80      	pop	{r7}
 8001072:	4770      	bx	lr
 8001074:	40020000 	.word	0x40020000
 8001078:	40088000 	.word	0x40088000

0800107c <dma_init>:
 800107c:	b480      	push	{r7}
 800107e:	af00      	add	r7, sp, #0
 8001080:	4a17      	ldr	r2, [pc, #92]	; (80010e0 <dma_init+0x64>)
 8001082:	4b17      	ldr	r3, [pc, #92]	; (80010e0 <dma_init+0x64>)
 8001084:	69db      	ldr	r3, [r3, #28]
 8001086:	f043 0320 	orr.w	r3, r3, #32
 800108a:	61d3      	str	r3, [r2, #28]
 800108c:	4b15      	ldr	r3, [pc, #84]	; (80010e4 <dma_init+0x68>)
 800108e:	4a16      	ldr	r2, [pc, #88]	; (80010e8 <dma_init+0x6c>)
 8001090:	609a      	str	r2, [r3, #8]
 8001092:	4b14      	ldr	r3, [pc, #80]	; (80010e4 <dma_init+0x68>)
 8001094:	f04f 32ff 	mov.w	r2, #4294967295
 8001098:	62da      	str	r2, [r3, #44]	; 0x2c
 800109a:	4b12      	ldr	r3, [pc, #72]	; (80010e4 <dma_init+0x68>)
 800109c:	f04f 32ff 	mov.w	r2, #4294967295
 80010a0:	621a      	str	r2, [r3, #32]
 80010a2:	4b10      	ldr	r3, [pc, #64]	; (80010e4 <dma_init+0x68>)
 80010a4:	f04f 32ff 	mov.w	r2, #4294967295
 80010a8:	635a      	str	r2, [r3, #52]	; 0x34
 80010aa:	4b0e      	ldr	r3, [pc, #56]	; (80010e4 <dma_init+0x68>)
 80010ac:	f44f 7280 	mov.w	r2, #256	; 0x100
 80010b0:	61da      	str	r2, [r3, #28]
 80010b2:	4b0c      	ldr	r3, [pc, #48]	; (80010e4 <dma_init+0x68>)
 80010b4:	f44f 7280 	mov.w	r2, #256	; 0x100
 80010b8:	625a      	str	r2, [r3, #36]	; 0x24
 80010ba:	4b0a      	ldr	r3, [pc, #40]	; (80010e4 <dma_init+0x68>)
 80010bc:	2201      	movs	r2, #1
 80010be:	605a      	str	r2, [r3, #4]
 80010c0:	4b09      	ldr	r3, [pc, #36]	; (80010e8 <dma_init+0x6c>)
 80010c2:	4a0a      	ldr	r2, [pc, #40]	; (80010ec <dma_init+0x70>)
 80010c4:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
 80010c8:	4a09      	ldr	r2, [pc, #36]	; (80010f0 <dma_init+0x74>)
 80010ca:	4b07      	ldr	r3, [pc, #28]	; (80010e8 <dma_init+0x6c>)
 80010cc:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 80010d0:	4b05      	ldr	r3, [pc, #20]	; (80010e8 <dma_init+0x6c>)
 80010d2:	4a08      	ldr	r2, [pc, #32]	; (80010f4 <dma_init+0x78>)
 80010d4:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80010d8:	bf00      	nop
 80010da:	46bd      	mov	sp, r7
 80010dc:	bc80      	pop	{r7}
 80010de:	4770      	bx	lr
 80010e0:	40020000 	.word	0x40020000
 80010e4:	40028000 	.word	0x40028000
 80010e8:	20000000 	.word	0x20000000
 80010ec:	40088018 	.word	0x40088018
 80010f0:	20000204 	.word	0x20000204
 80010f4:	ae000011 	.word	0xae000011

080010f8 <adc_dma_init>:
 80010f8:	b580      	push	{r7, lr}
 80010fa:	af00      	add	r7, sp, #0
 80010fc:	f7ff ff96 	bl	800102c <adc_init>
 8001100:	f7ff ffbc 	bl	800107c <dma_init>
 8001104:	bf00      	nop
 8001106:	bd80      	pop	{r7, pc}

08001108 <adc_dma_start>:
 8001108:	b480      	push	{r7}
 800110a:	af00      	add	r7, sp, #0
 800110c:	4a06      	ldr	r2, [pc, #24]	; (8001128 <adc_dma_start+0x20>)
 800110e:	4b06      	ldr	r3, [pc, #24]	; (8001128 <adc_dma_start+0x20>)
 8001110:	681b      	ldr	r3, [r3, #0]
 8001112:	f043 0308 	orr.w	r3, r3, #8
 8001116:	6013      	str	r3, [r2, #0]
 8001118:	4b04      	ldr	r3, [pc, #16]	; (800112c <adc_dma_start+0x24>)
 800111a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800111e:	629a      	str	r2, [r3, #40]	; 0x28
 8001120:	bf00      	nop
 8001122:	46bd      	mov	sp, r7
 8001124:	bc80      	pop	{r7}
 8001126:	4770      	bx	lr
 8001128:	40088000 	.word	0x40088000
 800112c:	40028000 	.word	0x40028000

08001130 <adc_dma_wait>:
 8001130:	b480      	push	{r7}
 8001132:	af00      	add	r7, sp, #0
 8001134:	bf00      	nop
 8001136:	4b0a      	ldr	r3, [pc, #40]	; (8001160 <adc_dma_wait+0x30>)
 8001138:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800113c:	f003 0307 	and.w	r3, r3, #7
 8001140:	2b00      	cmp	r3, #0
 8001142:	d1f8      	bne.n	8001136 <adc_dma_wait+0x6>
 8001144:	4a07      	ldr	r2, [pc, #28]	; (8001164 <adc_dma_wait+0x34>)
 8001146:	4b07      	ldr	r3, [pc, #28]	; (8001164 <adc_dma_wait+0x34>)
 8001148:	681b      	ldr	r3, [r3, #0]
 800114a:	f023 0308 	bic.w	r3, r3, #8
 800114e:	6013      	str	r3, [r2, #0]
 8001150:	4b03      	ldr	r3, [pc, #12]	; (8001160 <adc_dma_wait+0x30>)
 8001152:	4a05      	ldr	r2, [pc, #20]	; (8001168 <adc_dma_wait+0x38>)
 8001154:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001158:	bf00      	nop
 800115a:	46bd      	mov	sp, r7
 800115c:	bc80      	pop	{r7}
 800115e:	4770      	bx	lr
 8001160:	20000000 	.word	0x20000000
 8001164:	40088000 	.word	0x40088000
 8001168:	ae000011 	.word	0xae000011

0800116c <NVIC_EnableIRQ>:
 800116c:	b480      	push	{r7}
 800116e:	b083      	sub	sp, #12
 8001170:	af00      	add	r7, sp, #0
 8001172:	4603      	mov	r3, r0
 8001174:	71fb      	strb	r3, [r7, #7]
 8001176:	4908      	ldr	r1, [pc, #32]	; (8001198 <NVIC_EnableIRQ+0x2c>)
 8001178:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800117c:	095b      	lsrs	r3, r3, #5
 800117e:	79fa      	ldrb	r2, [r7, #7]
 8001180:	f002 021f 	and.w	r2, r2, #31
 8001184:	2001      	movs	r0, #1
 8001186:	fa00 f202 	lsl.w	r2, r0, r2
 800118a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800118e:	bf00      	nop
 8001190:	370c      	adds	r7, #12
 8001192:	46bd      	mov	sp, r7
 8001194:	bc80      	pop	{r7}
 8001196:	4770      	bx	lr
 8001198:	e000e100 	.word	0xe000e100

0800119c <PortConfig>:
 800119c:	b480      	push	{r7}
 800119e:	af00      	add	r7, sp, #0
 80011a0:	4a66      	ldr	r2, [pc, #408]	; (800133c <PortConfig+0x1a0>)
 80011a2:	4b66      	ldr	r3, [pc, #408]	; (800133c <PortConfig+0x1a0>)
 80011a4:	69db      	ldr	r3, [r3, #28]
 80011a6:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80011aa:	61d3      	str	r3, [r2, #28]
 80011ac:	4b64      	ldr	r3, [pc, #400]	; (8001340 <PortConfig+0x1a4>)
 80011ae:	2200      	movs	r2, #0
 80011b0:	609a      	str	r2, [r3, #8]
 80011b2:	4b63      	ldr	r3, [pc, #396]	; (8001340 <PortConfig+0x1a4>)
 80011b4:	2200      	movs	r2, #0
 80011b6:	601a      	str	r2, [r3, #0]
 80011b8:	4a61      	ldr	r2, [pc, #388]	; (8001340 <PortConfig+0x1a4>)
 80011ba:	4b61      	ldr	r3, [pc, #388]	; (8001340 <PortConfig+0x1a4>)
 80011bc:	685b      	ldr	r3, [r3, #4]
 80011be:	f043 0301 	orr.w	r3, r3, #1
 80011c2:	6053      	str	r3, [r2, #4]
 80011c4:	4a5e      	ldr	r2, [pc, #376]	; (8001340 <PortConfig+0x1a4>)
 80011c6:	4b5e      	ldr	r3, [pc, #376]	; (8001340 <PortConfig+0x1a4>)
 80011c8:	68db      	ldr	r3, [r3, #12]
 80011ca:	f043 0301 	orr.w	r3, r3, #1
 80011ce:	60d3      	str	r3, [r2, #12]
 80011d0:	4a5b      	ldr	r2, [pc, #364]	; (8001340 <PortConfig+0x1a4>)
 80011d2:	4b5b      	ldr	r3, [pc, #364]	; (8001340 <PortConfig+0x1a4>)
 80011d4:	699b      	ldr	r3, [r3, #24]
 80011d6:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
 80011da:	6193      	str	r3, [r2, #24]
 80011dc:	4a58      	ldr	r2, [pc, #352]	; (8001340 <PortConfig+0x1a4>)
 80011de:	4b58      	ldr	r3, [pc, #352]	; (8001340 <PortConfig+0x1a4>)
 80011e0:	685b      	ldr	r3, [r3, #4]
 80011e2:	f023 0308 	bic.w	r3, r3, #8
 80011e6:	6053      	str	r3, [r2, #4]
 80011e8:	4a55      	ldr	r2, [pc, #340]	; (8001340 <PortConfig+0x1a4>)
 80011ea:	4b55      	ldr	r3, [pc, #340]	; (8001340 <PortConfig+0x1a4>)
 80011ec:	68db      	ldr	r3, [r3, #12]
 80011ee:	f043 0308 	orr.w	r3, r3, #8
 80011f2:	60d3      	str	r3, [r2, #12]
 80011f4:	4b52      	ldr	r3, [pc, #328]	; (8001340 <PortConfig+0x1a4>)
 80011f6:	2280      	movs	r2, #128	; 0x80
 80011f8:	609a      	str	r2, [r3, #8]
 80011fa:	4a50      	ldr	r2, [pc, #320]	; (800133c <PortConfig+0x1a0>)
 80011fc:	4b4f      	ldr	r3, [pc, #316]	; (800133c <PortConfig+0x1a0>)
 80011fe:	69db      	ldr	r3, [r3, #28]
 8001200:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 8001204:	61d3      	str	r3, [r2, #28]
 8001206:	4a4f      	ldr	r2, [pc, #316]	; (8001344 <PortConfig+0x1a8>)
 8001208:	4b4e      	ldr	r3, [pc, #312]	; (8001344 <PortConfig+0x1a8>)
 800120a:	689b      	ldr	r3, [r3, #8]
 800120c:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
 8001210:	6093      	str	r3, [r2, #8]
 8001212:	4a4c      	ldr	r2, [pc, #304]	; (8001344 <PortConfig+0x1a8>)
 8001214:	4b4b      	ldr	r3, [pc, #300]	; (8001344 <PortConfig+0x1a8>)
 8001216:	689b      	ldr	r3, [r3, #8]
 8001218:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
 800121c:	6093      	str	r3, [r2, #8]
 800121e:	4a49      	ldr	r2, [pc, #292]	; (8001344 <PortConfig+0x1a8>)
 8001220:	4b48      	ldr	r3, [pc, #288]	; (8001344 <PortConfig+0x1a8>)
 8001222:	68db      	ldr	r3, [r3, #12]
 8001224:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
 8001228:	60d3      	str	r3, [r2, #12]
 800122a:	4a46      	ldr	r2, [pc, #280]	; (8001344 <PortConfig+0x1a8>)
 800122c:	4b45      	ldr	r3, [pc, #276]	; (8001344 <PortConfig+0x1a8>)
 800122e:	699b      	ldr	r3, [r3, #24]
 8001230:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
 8001234:	6193      	str	r3, [r2, #24]
 8001236:	4a43      	ldr	r2, [pc, #268]	; (8001344 <PortConfig+0x1a8>)
 8001238:	4b42      	ldr	r3, [pc, #264]	; (8001344 <PortConfig+0x1a8>)
 800123a:	685b      	ldr	r3, [r3, #4]
 800123c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8001240:	6053      	str	r3, [r2, #4]
 8001242:	4a40      	ldr	r2, [pc, #256]	; (8001344 <PortConfig+0x1a8>)
 8001244:	4b3f      	ldr	r3, [pc, #252]	; (8001344 <PortConfig+0x1a8>)
 8001246:	685b      	ldr	r3, [r3, #4]
 8001248:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 800124c:	6053      	str	r3, [r2, #4]
 800124e:	4a3d      	ldr	r2, [pc, #244]	; (8001344 <PortConfig+0x1a8>)
 8001250:	4b3c      	ldr	r3, [pc, #240]	; (8001344 <PortConfig+0x1a8>)
 8001252:	689b      	ldr	r3, [r3, #8]
 8001254:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
 8001258:	6093      	str	r3, [r2, #8]
 800125a:	4a3a      	ldr	r2, [pc, #232]	; (8001344 <PortConfig+0x1a8>)
 800125c:	4b39      	ldr	r3, [pc, #228]	; (8001344 <PortConfig+0x1a8>)
 800125e:	689b      	ldr	r3, [r3, #8]
 8001260:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
 8001264:	6093      	str	r3, [r2, #8]
 8001266:	4a37      	ldr	r2, [pc, #220]	; (8001344 <PortConfig+0x1a8>)
 8001268:	4b36      	ldr	r3, [pc, #216]	; (8001344 <PortConfig+0x1a8>)
 800126a:	68db      	ldr	r3, [r3, #12]
 800126c:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 8001270:	60d3      	str	r3, [r2, #12]
 8001272:	4a34      	ldr	r2, [pc, #208]	; (8001344 <PortConfig+0x1a8>)
 8001274:	4b33      	ldr	r3, [pc, #204]	; (8001344 <PortConfig+0x1a8>)
 8001276:	699b      	ldr	r3, [r3, #24]
 8001278:	f443 5370 	orr.w	r3, r3, #15360	; 0x3c00
 800127c:	6193      	str	r3, [r2, #24]
 800127e:	4a2f      	ldr	r2, [pc, #188]	; (800133c <PortConfig+0x1a0>)
 8001280:	4b2e      	ldr	r3, [pc, #184]	; (800133c <PortConfig+0x1a0>)
 8001282:	69db      	ldr	r3, [r3, #28]
 8001284:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 8001288:	61d3      	str	r3, [r2, #28]
 800128a:	4b2f      	ldr	r3, [pc, #188]	; (8001348 <PortConfig+0x1ac>)
 800128c:	4a2f      	ldr	r2, [pc, #188]	; (800134c <PortConfig+0x1b0>)
 800128e:	609a      	str	r2, [r3, #8]
 8001290:	4b2d      	ldr	r3, [pc, #180]	; (8001348 <PortConfig+0x1ac>)
 8001292:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8001296:	60da      	str	r2, [r3, #12]
 8001298:	4b2b      	ldr	r3, [pc, #172]	; (8001348 <PortConfig+0x1ac>)
 800129a:	f04f 32ff 	mov.w	r2, #4294967295
 800129e:	619a      	str	r2, [r3, #24]
 80012a0:	4b29      	ldr	r3, [pc, #164]	; (8001348 <PortConfig+0x1ac>)
 80012a2:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80012a6:	605a      	str	r2, [r3, #4]
 80012a8:	4a27      	ldr	r2, [pc, #156]	; (8001348 <PortConfig+0x1ac>)
 80012aa:	4b27      	ldr	r3, [pc, #156]	; (8001348 <PortConfig+0x1ac>)
 80012ac:	681b      	ldr	r3, [r3, #0]
 80012ae:	f023 0303 	bic.w	r3, r3, #3
 80012b2:	6013      	str	r3, [r2, #0]
 80012b4:	4a24      	ldr	r2, [pc, #144]	; (8001348 <PortConfig+0x1ac>)
 80012b6:	4b24      	ldr	r3, [pc, #144]	; (8001348 <PortConfig+0x1ac>)
 80012b8:	681b      	ldr	r3, [r3, #0]
 80012ba:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 80012be:	6013      	str	r3, [r2, #0]
 80012c0:	4a1e      	ldr	r2, [pc, #120]	; (800133c <PortConfig+0x1a0>)
 80012c2:	4b1e      	ldr	r3, [pc, #120]	; (800133c <PortConfig+0x1a0>)
 80012c4:	69db      	ldr	r3, [r3, #28]
 80012c6:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 80012ca:	61d3      	str	r3, [r2, #28]
 80012cc:	4b20      	ldr	r3, [pc, #128]	; (8001350 <PortConfig+0x1b4>)
 80012ce:	2200      	movs	r2, #0
 80012d0:	609a      	str	r2, [r3, #8]
 80012d2:	4a1f      	ldr	r2, [pc, #124]	; (8001350 <PortConfig+0x1b4>)
 80012d4:	4b1e      	ldr	r3, [pc, #120]	; (8001350 <PortConfig+0x1b4>)
 80012d6:	685b      	ldr	r3, [r3, #4]
 80012d8:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 80012dc:	6053      	str	r3, [r2, #4]
 80012de:	4a1c      	ldr	r2, [pc, #112]	; (8001350 <PortConfig+0x1b4>)
 80012e0:	4b1b      	ldr	r3, [pc, #108]	; (8001350 <PortConfig+0x1b4>)
 80012e2:	68db      	ldr	r3, [r3, #12]
 80012e4:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 80012e8:	60d3      	str	r3, [r2, #12]
 80012ea:	4b19      	ldr	r3, [pc, #100]	; (8001350 <PortConfig+0x1b4>)
 80012ec:	f04f 32ff 	mov.w	r2, #4294967295
 80012f0:	619a      	str	r2, [r3, #24]
 80012f2:	4a17      	ldr	r2, [pc, #92]	; (8001350 <PortConfig+0x1b4>)
 80012f4:	4b16      	ldr	r3, [pc, #88]	; (8001350 <PortConfig+0x1b4>)
 80012f6:	681b      	ldr	r3, [r3, #0]
 80012f8:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 80012fc:	6013      	str	r3, [r2, #0]
 80012fe:	4a0f      	ldr	r2, [pc, #60]	; (800133c <PortConfig+0x1a0>)
 8001300:	4b0e      	ldr	r3, [pc, #56]	; (800133c <PortConfig+0x1a0>)
 8001302:	69db      	ldr	r3, [r3, #28]
 8001304:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 8001308:	61d3      	str	r3, [r2, #28]
 800130a:	4a12      	ldr	r2, [pc, #72]	; (8001354 <PortConfig+0x1b8>)
 800130c:	4b11      	ldr	r3, [pc, #68]	; (8001354 <PortConfig+0x1b8>)
 800130e:	68db      	ldr	r3, [r3, #12]
 8001310:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 8001314:	f023 0301 	bic.w	r3, r3, #1
 8001318:	60d3      	str	r3, [r2, #12]
 800131a:	4a08      	ldr	r2, [pc, #32]	; (800133c <PortConfig+0x1a0>)
 800131c:	4b07      	ldr	r3, [pc, #28]	; (800133c <PortConfig+0x1a0>)
 800131e:	69db      	ldr	r3, [r3, #28]
 8001320:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8001324:	61d3      	str	r3, [r2, #28]
 8001326:	4a0c      	ldr	r2, [pc, #48]	; (8001358 <PortConfig+0x1bc>)
 8001328:	4b0b      	ldr	r3, [pc, #44]	; (8001358 <PortConfig+0x1bc>)
 800132a:	68db      	ldr	r3, [r3, #12]
 800132c:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
 8001330:	60d3      	str	r3, [r2, #12]
 8001332:	bf00      	nop
 8001334:	46bd      	mov	sp, r7
 8001336:	bc80      	pop	{r7}
 8001338:	4770      	bx	lr
 800133a:	bf00      	nop
 800133c:	40020000 	.word	0x40020000
 8001340:	400a8000 	.word	0x400a8000
 8001344:	400b0000 	.word	0x400b0000
 8001348:	400b8000 	.word	0x400b8000
 800134c:	000aaaa0 	.word	0x000aaaa0
 8001350:	400e8000 	.word	0x400e8000
 8001354:	400c8000 	.word	0x400c8000
 8001358:	400c0000 	.word	0x400c0000

0800135c <ClkConfig>:
 800135c:	b480      	push	{r7}
 800135e:	af00      	add	r7, sp, #0
 8001360:	4a16      	ldr	r2, [pc, #88]	; (80013bc <ClkConfig+0x60>)
 8001362:	4b16      	ldr	r3, [pc, #88]	; (80013bc <ClkConfig+0x60>)
 8001364:	689b      	ldr	r3, [r3, #8]
 8001366:	f043 0301 	orr.w	r3, r3, #1
 800136a:	6093      	str	r3, [r2, #8]
 800136c:	bf00      	nop
 800136e:	4b13      	ldr	r3, [pc, #76]	; (80013bc <ClkConfig+0x60>)
 8001370:	681b      	ldr	r3, [r3, #0]
 8001372:	f003 0304 	and.w	r3, r3, #4
 8001376:	2b00      	cmp	r3, #0
 8001378:	d0f9      	beq.n	800136e <ClkConfig+0x12>
 800137a:	4b10      	ldr	r3, [pc, #64]	; (80013bc <ClkConfig+0x60>)
 800137c:	2206      	movs	r2, #6
 800137e:	60da      	str	r2, [r3, #12]
 8001380:	4b0e      	ldr	r3, [pc, #56]	; (80013bc <ClkConfig+0x60>)
 8001382:	f640 1204 	movw	r2, #2308	; 0x904
 8001386:	605a      	str	r2, [r3, #4]
 8001388:	bf00      	nop
 800138a:	4b0c      	ldr	r3, [pc, #48]	; (80013bc <ClkConfig+0x60>)
 800138c:	681b      	ldr	r3, [r3, #0]
 800138e:	f003 0302 	and.w	r3, r3, #2
 8001392:	2b00      	cmp	r3, #0
 8001394:	d0f9      	beq.n	800138a <ClkConfig+0x2e>
 8001396:	4a09      	ldr	r2, [pc, #36]	; (80013bc <ClkConfig+0x60>)
 8001398:	4b08      	ldr	r3, [pc, #32]	; (80013bc <ClkConfig+0x60>)
 800139a:	68db      	ldr	r3, [r3, #12]
 800139c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80013a0:	60d3      	str	r3, [r2, #12]
 80013a2:	4a07      	ldr	r2, [pc, #28]	; (80013c0 <ClkConfig+0x64>)
 80013a4:	4b06      	ldr	r3, [pc, #24]	; (80013c0 <ClkConfig+0x64>)
 80013a6:	681b      	ldr	r3, [r3, #0]
 80013a8:	f043 0320 	orr.w	r3, r3, #32
 80013ac:	6013      	str	r3, [r2, #0]
 80013ae:	4b05      	ldr	r3, [pc, #20]	; (80013c4 <ClkConfig+0x68>)
 80013b0:	2200      	movs	r2, #0
 80013b2:	601a      	str	r2, [r3, #0]
 80013b4:	bf00      	nop
 80013b6:	46bd      	mov	sp, r7
 80013b8:	bc80      	pop	{r7}
 80013ba:	4770      	bx	lr
 80013bc:	40020000 	.word	0x40020000
 80013c0:	40018000 	.word	0x40018000
 80013c4:	2000030c 	.word	0x2000030c

080013c8 <TimerConfig>:
 80013c8:	b580      	push	{r7, lr}
 80013ca:	af00      	add	r7, sp, #0
 80013cc:	4a8a      	ldr	r2, [pc, #552]	; (80015f8 <TimerConfig+0x230>)
 80013ce:	4b8a      	ldr	r3, [pc, #552]	; (80015f8 <TimerConfig+0x230>)
 80013d0:	69db      	ldr	r3, [r3, #28]
 80013d2:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 80013d6:	61d3      	str	r3, [r2, #28]
 80013d8:	4a87      	ldr	r2, [pc, #540]	; (80015f8 <TimerConfig+0x230>)
 80013da:	4b87      	ldr	r3, [pc, #540]	; (80015f8 <TimerConfig+0x230>)
 80013dc:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80013de:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 80013e2:	6253      	str	r3, [r2, #36]	; 0x24
 80013e4:	4a84      	ldr	r2, [pc, #528]	; (80015f8 <TimerConfig+0x230>)
 80013e6:	4b84      	ldr	r3, [pc, #528]	; (80015f8 <TimerConfig+0x230>)
 80013e8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80013ea:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80013ee:	6253      	str	r3, [r2, #36]	; 0x24
 80013f0:	4b82      	ldr	r3, [pc, #520]	; (80015fc <TimerConfig+0x234>)
 80013f2:	2200      	movs	r2, #0
 80013f4:	601a      	str	r2, [r3, #0]
 80013f6:	4b81      	ldr	r3, [pc, #516]	; (80015fc <TimerConfig+0x234>)
 80013f8:	224f      	movs	r2, #79	; 0x4f
 80013fa:	605a      	str	r2, [r3, #4]
 80013fc:	4b7f      	ldr	r3, [pc, #508]	; (80015fc <TimerConfig+0x234>)
 80013fe:	f240 32e7 	movw	r2, #999	; 0x3e7
 8001402:	609a      	str	r2, [r3, #8]
 8001404:	4a7d      	ldr	r2, [pc, #500]	; (80015fc <TimerConfig+0x234>)
 8001406:	4b7d      	ldr	r3, [pc, #500]	; (80015fc <TimerConfig+0x234>)
 8001408:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800140a:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 800140e:	6253      	str	r3, [r2, #36]	; 0x24
 8001410:	4a7a      	ldr	r2, [pc, #488]	; (80015fc <TimerConfig+0x234>)
 8001412:	4b7a      	ldr	r3, [pc, #488]	; (80015fc <TimerConfig+0x234>)
 8001414:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8001416:	f043 0302 	orr.w	r3, r3, #2
 800141a:	6593      	str	r3, [r2, #88]	; 0x58
 800141c:	4b77      	ldr	r3, [pc, #476]	; (80015fc <TimerConfig+0x234>)
 800141e:	2201      	movs	r2, #1
 8001420:	60da      	str	r2, [r3, #12]
 8001422:	4a75      	ldr	r2, [pc, #468]	; (80015f8 <TimerConfig+0x230>)
 8001424:	4b74      	ldr	r3, [pc, #464]	; (80015f8 <TimerConfig+0x230>)
 8001426:	69db      	ldr	r3, [r3, #28]
 8001428:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800142c:	61d3      	str	r3, [r2, #28]
 800142e:	4a72      	ldr	r2, [pc, #456]	; (80015f8 <TimerConfig+0x230>)
 8001430:	4b71      	ldr	r3, [pc, #452]	; (80015f8 <TimerConfig+0x230>)
 8001432:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001434:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
 8001438:	6253      	str	r3, [r2, #36]	; 0x24
 800143a:	4a6f      	ldr	r2, [pc, #444]	; (80015f8 <TimerConfig+0x230>)
 800143c:	4b6e      	ldr	r3, [pc, #440]	; (80015f8 <TimerConfig+0x230>)
 800143e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001440:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 8001444:	6253      	str	r3, [r2, #36]	; 0x24
 8001446:	4b6e      	ldr	r3, [pc, #440]	; (8001600 <TimerConfig+0x238>)
 8001448:	2200      	movs	r2, #0
 800144a:	601a      	str	r2, [r3, #0]
 800144c:	4b6c      	ldr	r3, [pc, #432]	; (8001600 <TimerConfig+0x238>)
 800144e:	2202      	movs	r2, #2
 8001450:	605a      	str	r2, [r3, #4]
 8001452:	4b6b      	ldr	r3, [pc, #428]	; (8001600 <TimerConfig+0x238>)
 8001454:	f240 32ff 	movw	r2, #1023	; 0x3ff
 8001458:	609a      	str	r2, [r3, #8]
 800145a:	4b69      	ldr	r3, [pc, #420]	; (8001600 <TimerConfig+0x238>)
 800145c:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001460:	611a      	str	r2, [r3, #16]
 8001462:	4b67      	ldr	r3, [pc, #412]	; (8001600 <TimerConfig+0x238>)
 8001464:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001468:	615a      	str	r2, [r3, #20]
 800146a:	4b65      	ldr	r3, [pc, #404]	; (8001600 <TimerConfig+0x238>)
 800146c:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001470:	619a      	str	r2, [r3, #24]
 8001472:	4a63      	ldr	r2, [pc, #396]	; (8001600 <TimerConfig+0x238>)
 8001474:	4b62      	ldr	r3, [pc, #392]	; (8001600 <TimerConfig+0x238>)
 8001476:	6a1b      	ldr	r3, [r3, #32]
 8001478:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 800147c:	6213      	str	r3, [r2, #32]
 800147e:	4a60      	ldr	r2, [pc, #384]	; (8001600 <TimerConfig+0x238>)
 8001480:	4b5f      	ldr	r3, [pc, #380]	; (8001600 <TimerConfig+0x238>)
 8001482:	6a1b      	ldr	r3, [r3, #32]
 8001484:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 8001488:	6213      	str	r3, [r2, #32]
 800148a:	4a5d      	ldr	r2, [pc, #372]	; (8001600 <TimerConfig+0x238>)
 800148c:	4b5c      	ldr	r3, [pc, #368]	; (8001600 <TimerConfig+0x238>)
 800148e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001490:	f023 030f 	bic.w	r3, r3, #15
 8001494:	6313      	str	r3, [r2, #48]	; 0x30
 8001496:	4a5a      	ldr	r2, [pc, #360]	; (8001600 <TimerConfig+0x238>)
 8001498:	4b59      	ldr	r3, [pc, #356]	; (8001600 <TimerConfig+0x238>)
 800149a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800149c:	f043 030c 	orr.w	r3, r3, #12
 80014a0:	6313      	str	r3, [r2, #48]	; 0x30
 80014a2:	4a57      	ldr	r2, [pc, #348]	; (8001600 <TimerConfig+0x238>)
 80014a4:	4b56      	ldr	r3, [pc, #344]	; (8001600 <TimerConfig+0x238>)
 80014a6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80014a8:	f043 0301 	orr.w	r3, r3, #1
 80014ac:	6313      	str	r3, [r2, #48]	; 0x30
 80014ae:	4a54      	ldr	r2, [pc, #336]	; (8001600 <TimerConfig+0x238>)
 80014b0:	4b53      	ldr	r3, [pc, #332]	; (8001600 <TimerConfig+0x238>)
 80014b2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80014b4:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80014b8:	6313      	str	r3, [r2, #48]	; 0x30
 80014ba:	4a51      	ldr	r2, [pc, #324]	; (8001600 <TimerConfig+0x238>)
 80014bc:	4b50      	ldr	r3, [pc, #320]	; (8001600 <TimerConfig+0x238>)
 80014be:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80014c0:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 80014c4:	6313      	str	r3, [r2, #48]	; 0x30
 80014c6:	4a4e      	ldr	r2, [pc, #312]	; (8001600 <TimerConfig+0x238>)
 80014c8:	4b4d      	ldr	r3, [pc, #308]	; (8001600 <TimerConfig+0x238>)
 80014ca:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80014cc:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80014d0:	6313      	str	r3, [r2, #48]	; 0x30
 80014d2:	4a4b      	ldr	r2, [pc, #300]	; (8001600 <TimerConfig+0x238>)
 80014d4:	4b4a      	ldr	r3, [pc, #296]	; (8001600 <TimerConfig+0x238>)
 80014d6:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 80014d8:	f043 0308 	orr.w	r3, r3, #8
 80014dc:	6613      	str	r3, [r2, #96]	; 0x60
 80014de:	4a48      	ldr	r2, [pc, #288]	; (8001600 <TimerConfig+0x238>)
 80014e0:	4b47      	ldr	r3, [pc, #284]	; (8001600 <TimerConfig+0x238>)
 80014e2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80014e4:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 80014e8:	6253      	str	r3, [r2, #36]	; 0x24
 80014ea:	4a45      	ldr	r2, [pc, #276]	; (8001600 <TimerConfig+0x238>)
 80014ec:	4b44      	ldr	r3, [pc, #272]	; (8001600 <TimerConfig+0x238>)
 80014ee:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80014f0:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 80014f4:	6253      	str	r3, [r2, #36]	; 0x24
 80014f6:	4a42      	ldr	r2, [pc, #264]	; (8001600 <TimerConfig+0x238>)
 80014f8:	4b41      	ldr	r3, [pc, #260]	; (8001600 <TimerConfig+0x238>)
 80014fa:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80014fc:	f023 030f 	bic.w	r3, r3, #15
 8001500:	6353      	str	r3, [r2, #52]	; 0x34
 8001502:	4a3f      	ldr	r2, [pc, #252]	; (8001600 <TimerConfig+0x238>)
 8001504:	4b3e      	ldr	r3, [pc, #248]	; (8001600 <TimerConfig+0x238>)
 8001506:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001508:	f043 030c 	orr.w	r3, r3, #12
 800150c:	6353      	str	r3, [r2, #52]	; 0x34
 800150e:	4a3c      	ldr	r2, [pc, #240]	; (8001600 <TimerConfig+0x238>)
 8001510:	4b3b      	ldr	r3, [pc, #236]	; (8001600 <TimerConfig+0x238>)
 8001512:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001514:	f043 0301 	orr.w	r3, r3, #1
 8001518:	6353      	str	r3, [r2, #52]	; 0x34
 800151a:	4a39      	ldr	r2, [pc, #228]	; (8001600 <TimerConfig+0x238>)
 800151c:	4b38      	ldr	r3, [pc, #224]	; (8001600 <TimerConfig+0x238>)
 800151e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001520:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8001524:	6353      	str	r3, [r2, #52]	; 0x34
 8001526:	4a36      	ldr	r2, [pc, #216]	; (8001600 <TimerConfig+0x238>)
 8001528:	4b35      	ldr	r3, [pc, #212]	; (8001600 <TimerConfig+0x238>)
 800152a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800152c:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 8001530:	6353      	str	r3, [r2, #52]	; 0x34
 8001532:	4a33      	ldr	r2, [pc, #204]	; (8001600 <TimerConfig+0x238>)
 8001534:	4b32      	ldr	r3, [pc, #200]	; (8001600 <TimerConfig+0x238>)
 8001536:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001538:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800153c:	6353      	str	r3, [r2, #52]	; 0x34
 800153e:	4a30      	ldr	r2, [pc, #192]	; (8001600 <TimerConfig+0x238>)
 8001540:	4b2f      	ldr	r3, [pc, #188]	; (8001600 <TimerConfig+0x238>)
 8001542:	6e5b      	ldr	r3, [r3, #100]	; 0x64
 8001544:	f043 0308 	orr.w	r3, r3, #8
 8001548:	6653      	str	r3, [r2, #100]	; 0x64
 800154a:	4a2d      	ldr	r2, [pc, #180]	; (8001600 <TimerConfig+0x238>)
 800154c:	4b2c      	ldr	r3, [pc, #176]	; (8001600 <TimerConfig+0x238>)
 800154e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001550:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 8001554:	6293      	str	r3, [r2, #40]	; 0x28
 8001556:	4a2a      	ldr	r2, [pc, #168]	; (8001600 <TimerConfig+0x238>)
 8001558:	4b29      	ldr	r3, [pc, #164]	; (8001600 <TimerConfig+0x238>)
 800155a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800155c:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 8001560:	6293      	str	r3, [r2, #40]	; 0x28
 8001562:	4a27      	ldr	r2, [pc, #156]	; (8001600 <TimerConfig+0x238>)
 8001564:	4b26      	ldr	r3, [pc, #152]	; (8001600 <TimerConfig+0x238>)
 8001566:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001568:	f023 030f 	bic.w	r3, r3, #15
 800156c:	6393      	str	r3, [r2, #56]	; 0x38
 800156e:	4a24      	ldr	r2, [pc, #144]	; (8001600 <TimerConfig+0x238>)
 8001570:	4b23      	ldr	r3, [pc, #140]	; (8001600 <TimerConfig+0x238>)
 8001572:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001574:	f043 030c 	orr.w	r3, r3, #12
 8001578:	6393      	str	r3, [r2, #56]	; 0x38
 800157a:	4a21      	ldr	r2, [pc, #132]	; (8001600 <TimerConfig+0x238>)
 800157c:	4b20      	ldr	r3, [pc, #128]	; (8001600 <TimerConfig+0x238>)
 800157e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001580:	f043 0301 	orr.w	r3, r3, #1
 8001584:	6393      	str	r3, [r2, #56]	; 0x38
 8001586:	4a1e      	ldr	r2, [pc, #120]	; (8001600 <TimerConfig+0x238>)
 8001588:	4b1d      	ldr	r3, [pc, #116]	; (8001600 <TimerConfig+0x238>)
 800158a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 800158c:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8001590:	6393      	str	r3, [r2, #56]	; 0x38
 8001592:	4a1b      	ldr	r2, [pc, #108]	; (8001600 <TimerConfig+0x238>)
 8001594:	4b1a      	ldr	r3, [pc, #104]	; (8001600 <TimerConfig+0x238>)
 8001596:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001598:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 800159c:	6393      	str	r3, [r2, #56]	; 0x38
 800159e:	4a18      	ldr	r2, [pc, #96]	; (8001600 <TimerConfig+0x238>)
 80015a0:	4b17      	ldr	r3, [pc, #92]	; (8001600 <TimerConfig+0x238>)
 80015a2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80015a4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80015a8:	6393      	str	r3, [r2, #56]	; 0x38
 80015aa:	4a15      	ldr	r2, [pc, #84]	; (8001600 <TimerConfig+0x238>)
 80015ac:	4b14      	ldr	r3, [pc, #80]	; (8001600 <TimerConfig+0x238>)
 80015ae:	6e9b      	ldr	r3, [r3, #104]	; 0x68
 80015b0:	f043 0308 	orr.w	r3, r3, #8
 80015b4:	6693      	str	r3, [r2, #104]	; 0x68
 80015b6:	4a12      	ldr	r2, [pc, #72]	; (8001600 <TimerConfig+0x238>)
 80015b8:	4b11      	ldr	r3, [pc, #68]	; (8001600 <TimerConfig+0x238>)
 80015ba:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80015bc:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 80015c0:	6413      	str	r3, [r2, #64]	; 0x40
 80015c2:	4a0f      	ldr	r2, [pc, #60]	; (8001600 <TimerConfig+0x238>)
 80015c4:	4b0e      	ldr	r3, [pc, #56]	; (8001600 <TimerConfig+0x238>)
 80015c6:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80015c8:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 80015cc:	6453      	str	r3, [r2, #68]	; 0x44
 80015ce:	4a0c      	ldr	r2, [pc, #48]	; (8001600 <TimerConfig+0x238>)
 80015d0:	4b0b      	ldr	r3, [pc, #44]	; (8001600 <TimerConfig+0x238>)
 80015d2:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 80015d4:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 80015d8:	6493      	str	r3, [r2, #72]	; 0x48
 80015da:	4a09      	ldr	r2, [pc, #36]	; (8001600 <TimerConfig+0x238>)
 80015dc:	4b08      	ldr	r3, [pc, #32]	; (8001600 <TimerConfig+0x238>)
 80015de:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80015e0:	f043 0302 	orr.w	r3, r3, #2
 80015e4:	6593      	str	r3, [r2, #88]	; 0x58
 80015e6:	2010      	movs	r0, #16
 80015e8:	f7ff fdc0 	bl	800116c <NVIC_EnableIRQ>
 80015ec:	4b04      	ldr	r3, [pc, #16]	; (8001600 <TimerConfig+0x238>)
 80015ee:	2201      	movs	r2, #1
 80015f0:	60da      	str	r2, [r3, #12]
 80015f2:	bf00      	nop
 80015f4:	bd80      	pop	{r7, pc}
 80015f6:	bf00      	nop
 80015f8:	40020000 	.word	0x40020000
 80015fc:	40070000 	.word	0x40070000
 8001600:	40080000 	.word	0x40080000

08001604 <uart_init>:
 8001604:	b480      	push	{r7}
 8001606:	af00      	add	r7, sp, #0
 8001608:	4b22      	ldr	r3, [pc, #136]	; (8001694 <uart_init+0x90>)
 800160a:	2200      	movs	r2, #0
 800160c:	601a      	str	r2, [r3, #0]
 800160e:	4a22      	ldr	r2, [pc, #136]	; (8001698 <uart_init+0x94>)
 8001610:	4b21      	ldr	r3, [pc, #132]	; (8001698 <uart_init+0x94>)
 8001612:	69db      	ldr	r3, [r3, #28]
 8001614:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001618:	61d3      	str	r3, [r2, #28]
 800161a:	4a1f      	ldr	r2, [pc, #124]	; (8001698 <uart_init+0x94>)
 800161c:	4b1e      	ldr	r3, [pc, #120]	; (8001698 <uart_init+0x94>)
 800161e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001620:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8001624:	6293      	str	r3, [r2, #40]	; 0x28
 8001626:	4b1d      	ldr	r3, [pc, #116]	; (800169c <uart_init+0x98>)
 8001628:	2204      	movs	r2, #4
 800162a:	625a      	str	r2, [r3, #36]	; 0x24
 800162c:	4b1b      	ldr	r3, [pc, #108]	; (800169c <uart_init+0x98>)
 800162e:	2200      	movs	r2, #0
 8001630:	629a      	str	r2, [r3, #40]	; 0x28
 8001632:	4a1a      	ldr	r2, [pc, #104]	; (800169c <uart_init+0x98>)
 8001634:	4b19      	ldr	r3, [pc, #100]	; (800169c <uart_init+0x98>)
 8001636:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001638:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 800163c:	6353      	str	r3, [r2, #52]	; 0x34
 800163e:	4a17      	ldr	r2, [pc, #92]	; (800169c <uart_init+0x98>)
 8001640:	4b16      	ldr	r3, [pc, #88]	; (800169c <uart_init+0x98>)
 8001642:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001644:	f043 0312 	orr.w	r3, r3, #18
 8001648:	6353      	str	r3, [r2, #52]	; 0x34
 800164a:	4a14      	ldr	r2, [pc, #80]	; (800169c <uart_init+0x98>)
 800164c:	4b13      	ldr	r3, [pc, #76]	; (800169c <uart_init+0x98>)
 800164e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001650:	f043 0310 	orr.w	r3, r3, #16
 8001654:	62d3      	str	r3, [r2, #44]	; 0x2c
 8001656:	4a11      	ldr	r2, [pc, #68]	; (800169c <uart_init+0x98>)
 8001658:	4b10      	ldr	r3, [pc, #64]	; (800169c <uart_init+0x98>)
 800165a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800165c:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 8001660:	62d3      	str	r3, [r2, #44]	; 0x2c
 8001662:	4a0e      	ldr	r2, [pc, #56]	; (800169c <uart_init+0x98>)
 8001664:	4b0d      	ldr	r3, [pc, #52]	; (800169c <uart_init+0x98>)
 8001666:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001668:	f443 7340 	orr.w	r3, r3, #768	; 0x300
 800166c:	f043 0301 	orr.w	r3, r3, #1
 8001670:	6313      	str	r3, [r2, #48]	; 0x30
 8001672:	4a0a      	ldr	r2, [pc, #40]	; (800169c <uart_init+0x98>)
 8001674:	4b09      	ldr	r3, [pc, #36]	; (800169c <uart_init+0x98>)
 8001676:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001678:	f043 0310 	orr.w	r3, r3, #16
 800167c:	6393      	str	r3, [r2, #56]	; 0x38
 800167e:	4a07      	ldr	r2, [pc, #28]	; (800169c <uart_init+0x98>)
 8001680:	4b06      	ldr	r3, [pc, #24]	; (800169c <uart_init+0x98>)
 8001682:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001684:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001688:	6393      	str	r3, [r2, #56]	; 0x38
 800168a:	bf00      	nop
 800168c:	46bd      	mov	sp, r7
 800168e:	bc80      	pop	{r7}
 8001690:	4770      	bx	lr
 8001692:	bf00      	nop
 8001694:	20000320 	.word	0x20000320
 8001698:	40020000 	.word	0x40020000
 800169c:	40030000 	.word	0x40030000

080016a0 <system_init>:
 80016a0:	b580      	push	{r7, lr}
 80016a2:	af00      	add	r7, sp, #0
 80016a4:	f7ff fe5a 	bl	800135c <ClkConfig>
 80016a8:	f7ff fd78 	bl	800119c <PortConfig>
 80016ac:	f7ff fe8c 	bl	80013c8 <TimerConfig>
 80016b0:	f7ff ffa8 	bl	8001604 <uart_init>
 80016b4:	bf00      	nop
 80016b6:	bd80      	pop	{r7, pc}

080016b8 <SysTick_Handler>:
 80016b8:	b480      	push	{r7}
 80016ba:	af00      	add	r7, sp, #0
 80016bc:	4b04      	ldr	r3, [pc, #16]	; (80016d0 <SysTick_Handler+0x18>)
 80016be:	681b      	ldr	r3, [r3, #0]
 80016c0:	3301      	adds	r3, #1
 80016c2:	4a03      	ldr	r2, [pc, #12]	; (80016d0 <SysTick_Handler+0x18>)
 80016c4:	6013      	str	r3, [r2, #0]
 80016c6:	bf00      	nop
 80016c8:	46bd      	mov	sp, r7
 80016ca:	bc80      	pop	{r7}
 80016cc:	4770      	bx	lr
 80016ce:	bf00      	nop
 80016d0:	2000030c 	.word	0x2000030c

080016d4 <UART1_IRQHandler>:
 80016d4:	b480      	push	{r7}
 80016d6:	b083      	sub	sp, #12
 80016d8:	af00      	add	r7, sp, #0
 80016da:	4b1d      	ldr	r3, [pc, #116]	; (8001750 <UART1_IRQHandler+0x7c>)
 80016dc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80016de:	f003 0310 	and.w	r3, r3, #16
 80016e2:	2b00      	cmp	r3, #0
 80016e4:	d01f      	beq.n	8001726 <UART1_IRQHandler+0x52>
 80016e6:	e002      	b.n	80016ee <UART1_IRQHandler+0x1a>
 80016e8:	4b19      	ldr	r3, [pc, #100]	; (8001750 <UART1_IRQHandler+0x7c>)
 80016ea:	681b      	ldr	r3, [r3, #0]
 80016ec:	71fb      	strb	r3, [r7, #7]
 80016ee:	4b18      	ldr	r3, [pc, #96]	; (8001750 <UART1_IRQHandler+0x7c>)
 80016f0:	699b      	ldr	r3, [r3, #24]
 80016f2:	f003 0310 	and.w	r3, r3, #16
 80016f6:	2b00      	cmp	r3, #0
 80016f8:	d0f6      	beq.n	80016e8 <UART1_IRQHandler+0x14>
 80016fa:	4b16      	ldr	r3, [pc, #88]	; (8001754 <UART1_IRQHandler+0x80>)
 80016fc:	681b      	ldr	r3, [r3, #0]
 80016fe:	80bb      	strh	r3, [r7, #4]
 8001700:	4b14      	ldr	r3, [pc, #80]	; (8001754 <UART1_IRQHandler+0x80>)
 8001702:	689b      	ldr	r3, [r3, #8]
 8001704:	085b      	lsrs	r3, r3, #1
 8001706:	807b      	strh	r3, [r7, #2]
 8001708:	88ba      	ldrh	r2, [r7, #4]
 800170a:	887b      	ldrh	r3, [r7, #2]
 800170c:	429a      	cmp	r2, r3
 800170e:	d205      	bcs.n	800171c <UART1_IRQHandler+0x48>
 8001710:	4a10      	ldr	r2, [pc, #64]	; (8001754 <UART1_IRQHandler+0x80>)
 8001712:	4b10      	ldr	r3, [pc, #64]	; (8001754 <UART1_IRQHandler+0x80>)
 8001714:	681b      	ldr	r3, [r3, #0]
 8001716:	3b01      	subs	r3, #1
 8001718:	6013      	str	r3, [r2, #0]
 800171a:	e004      	b.n	8001726 <UART1_IRQHandler+0x52>
 800171c:	4a0d      	ldr	r2, [pc, #52]	; (8001754 <UART1_IRQHandler+0x80>)
 800171e:	4b0d      	ldr	r3, [pc, #52]	; (8001754 <UART1_IRQHandler+0x80>)
 8001720:	681b      	ldr	r3, [r3, #0]
 8001722:	3301      	adds	r3, #1
 8001724:	6013      	str	r3, [r2, #0]
 8001726:	4b0a      	ldr	r3, [pc, #40]	; (8001750 <UART1_IRQHandler+0x7c>)
 8001728:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800172a:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800172e:	2b00      	cmp	r3, #0
 8001730:	d009      	beq.n	8001746 <UART1_IRQHandler+0x72>
 8001732:	e002      	b.n	800173a <UART1_IRQHandler+0x66>
 8001734:	4b06      	ldr	r3, [pc, #24]	; (8001750 <UART1_IRQHandler+0x7c>)
 8001736:	681b      	ldr	r3, [r3, #0]
 8001738:	707b      	strb	r3, [r7, #1]
 800173a:	4b05      	ldr	r3, [pc, #20]	; (8001750 <UART1_IRQHandler+0x7c>)
 800173c:	699b      	ldr	r3, [r3, #24]
 800173e:	f003 0310 	and.w	r3, r3, #16
 8001742:	2b00      	cmp	r3, #0
 8001744:	d0f6      	beq.n	8001734 <UART1_IRQHandler+0x60>
 8001746:	bf00      	nop
 8001748:	370c      	adds	r7, #12
 800174a:	46bd      	mov	sp, r7
 800174c:	bc80      	pop	{r7}
 800174e:	4770      	bx	lr
 8001750:	40030000 	.word	0x40030000
 8001754:	40070000 	.word	0x40070000

08001758 <handler_reset>:
 8001758:	b580      	push	{r7, lr}
 800175a:	b082      	sub	sp, #8
 800175c:	af00      	add	r7, sp, #0
 800175e:	4b11      	ldr	r3, [pc, #68]	; (80017a4 <handler_reset+0x4c>)
 8001760:	607b      	str	r3, [r7, #4]
 8001762:	4b11      	ldr	r3, [pc, #68]	; (80017a8 <handler_reset+0x50>)
 8001764:	603b      	str	r3, [r7, #0]
 8001766:	e007      	b.n	8001778 <handler_reset+0x20>
 8001768:	683b      	ldr	r3, [r7, #0]
 800176a:	1d1a      	adds	r2, r3, #4
 800176c:	603a      	str	r2, [r7, #0]
 800176e:	687a      	ldr	r2, [r7, #4]
 8001770:	1d11      	adds	r1, r2, #4
 8001772:	6079      	str	r1, [r7, #4]
 8001774:	6812      	ldr	r2, [r2, #0]
 8001776:	601a      	str	r2, [r3, #0]
 8001778:	683b      	ldr	r3, [r7, #0]
 800177a:	4a0c      	ldr	r2, [pc, #48]	; (80017ac <handler_reset+0x54>)
 800177c:	4293      	cmp	r3, r2
 800177e:	d3f3      	bcc.n	8001768 <handler_reset+0x10>
 8001780:	4b0b      	ldr	r3, [pc, #44]	; (80017b0 <handler_reset+0x58>)
 8001782:	603b      	str	r3, [r7, #0]
 8001784:	e004      	b.n	8001790 <handler_reset+0x38>
 8001786:	683b      	ldr	r3, [r7, #0]
 8001788:	1d1a      	adds	r2, r3, #4
 800178a:	603a      	str	r2, [r7, #0]
 800178c:	2200      	movs	r2, #0
 800178e:	601a      	str	r2, [r3, #0]
 8001790:	683b      	ldr	r3, [r7, #0]
 8001792:	4a08      	ldr	r2, [pc, #32]	; (80017b4 <handler_reset+0x5c>)
 8001794:	4293      	cmp	r3, r2
 8001796:	d3f6      	bcc.n	8001786 <handler_reset+0x2e>
 8001798:	f7fe fe8a 	bl	80004b0 <main>
 800179c:	bf00      	nop
 800179e:	3708      	adds	r7, #8
 80017a0:	46bd      	mov	sp, r7
 80017a2:	bd80      	pop	{r7, pc}
 80017a4:	08002800 	.word	0x08002800
 80017a8:	20000000 	.word	0x20000000
 80017ac:	20000000 	.word	0x20000000
 80017b0:	20000220 	.word	0x20000220
 80017b4:	20000324 	.word	0x20000324

080017b8 <default_handler>:
 80017b8:	b480      	push	{r7}
 80017ba:	af00      	add	r7, sp, #0
 80017bc:	e7fe      	b.n	80017bc <default_handler+0x4>
 80017be:	bf00      	nop
 80017c0:	00000080 	.word	0x00000080
 80017c4:	0000004c 	.word	0x0000004c
 80017c8:	00000028 	.word	0x00000028
 80017cc:	00000014 	.word	0x00000014
 80017d0:	0000000a 	.word	0x0000000a
 80017d4:	00000005 	.word	0x00000005
 80017d8:	00000003 	.word	0x00000003
 80017dc:	00000001 	.word	0x00000001
 80017e0:	000002d4 	.word	0x000002d4
 80017e4:	00000288 	.word	0x00000288
 80017e8:	00000274 	.word	0x00000274
 80017ec:	0000026f 	.word	0x0000026f
 80017f0:	0000026f 	.word	0x0000026f
 80017f4:	0000026e 	.word	0x0000026e
 80017f8:	0000026e 	.word	0x0000026e
 80017fc:	0000026e 	.word	0x0000026e

08001800 <cos_tb>:
 8001800:	00000400 00000400 00000400 00000400     ................
 8001810:	00000400 00000400 000003ff 000003ff     ................
 8001820:	000003ff 000003fe 000003fe 000003fe     ................
 8001830:	000003fd 000003fd 000003fc 000003fc     ................
 8001840:	000003fb 000003fa 000003fa 000003f9     ................
 8001850:	000003f8 000003f8 000003f7 000003f6     ................
 8001860:	000003f5 000003f4 000003f3 000003f2     ................
 8001870:	000003f1 000003f0 000003ef 000003ee     ................
 8001880:	000003ec 000003eb 000003ea 000003e8     ................
 8001890:	000003e7 000003e6 000003e4 000003e3     ................
 80018a0:	000003e1 000003e0 000003de 000003dd     ................
 80018b0:	000003db 000003d9 000003d7 000003d6     ................
 80018c0:	000003d4 000003d2 000003d0 000003ce     ................
 80018d0:	000003cc 000003ca 000003c8 000003c6     ................
 80018e0:	000003c4 000003c2 000003c0 000003be     ................
 80018f0:	000003bb 000003b9 000003b7 000003b4     ................
 8001900:	000003b2 000003b0 000003ad 000003ab     ................
 8001910:	000003a8 000003a6 000003a3 000003a0     ................
 8001920:	0000039e 0000039b 00000398 00000395     ................
 8001930:	00000393 00000390 0000038d 0000038a     ................
 8001940:	00000387 00000384 00000381 0000037e     ............~...
 8001950:	0000037b 00000378 00000375 00000372     {...x...u...r...
 8001960:	0000036e 0000036b 00000368 00000364     n...k...h...d...
 8001970:	00000361 0000035e 0000035a 00000357     a...^...Z...W...
 8001980:	00000353 00000350 0000034c 00000349     S...P...L...I...
 8001990:	00000345 00000342 0000033e 0000033a     E...B...>...:...
 80019a0:	00000336 00000333 0000032f 0000032b     6...3.../...+...
 80019b0:	00000327 00000323 0000031f 0000031c     '...#...........
 80019c0:	00000318 00000314 00000310 0000030b     ................
 80019d0:	00000307 00000303 000002ff 000002fb     ................
 80019e0:	000002f7 000002f3 000002ee 000002ea     ................
 80019f0:	000002e6 000002e1 000002dd 000002d9     ................
 8001a00:	000002d4 000002d0 000002cb 000002c7     ................
 8001a10:	000002c2 000002be 000002b9 000002b4     ................
 8001a20:	000002b0 000002ab 000002a6 000002a2     ................
 8001a30:	0000029d 00000298 00000293 0000028e     ................
 8001a40:	0000028a 00000285 00000280 0000027b     ............{...
 8001a50:	00000276 00000271 0000026c 00000267     v...q...l...g...
 8001a60:	00000262 0000025d 00000258 00000253     b...]...X...S...
 8001a70:	0000024e 00000248 00000243 0000023e     N...H...C...>...
 8001a80:	00000239 00000234 0000022e 00000229     9...4.......)...
 8001a90:	00000224 0000021f 00000219 00000214     $...............
 8001aa0:	0000020e 00000209 00000204 000001fe     ................
 8001ab0:	000001f9 000001f3 000001ee 000001e8     ................
 8001ac0:	000001e3 000001dd 000001d8 000001d2     ................
 8001ad0:	000001cc 000001c7 000001c1 000001bb     ................
 8001ae0:	000001b6 000001b0 000001aa 000001a5     ................
 8001af0:	0000019f 00000199 00000193 0000018e     ................
 8001b00:	00000188 00000182 0000017c 00000176     ........|...v...
 8001b10:	00000171 0000016b 00000165 0000015f     q...k...e..._...
 8001b20:	00000159 00000153 0000014d 00000147     Y...S...M...G...
 8001b30:	00000141 0000013b 00000135 0000012f     A...;...5.../...
 8001b40:	00000129 00000123 0000011d 00000117     )...#...........
 8001b50:	00000111 0000010b 00000105 000000ff     ................
 8001b60:	000000f9 000000f3 000000ed 000000e6     ................
 8001b70:	000000e0 000000da 000000d4 000000ce     ................
 8001b80:	000000c8 000000c2 000000bb 000000b5     ................
 8001b90:	000000af 000000a9 000000a3 0000009c     ................
 8001ba0:	00000096 00000090 0000008a 00000084     ................
 8001bb0:	0000007d 00000077 00000071 0000006b     }...w...q...k...
 8001bc0:	00000064 0000005e 00000058 00000052     d...^...X...R...
 8001bd0:	0000004b 00000045 0000003f 00000039     K...E...?...9...
 8001be0:	00000032 0000002c 00000026 0000001f     2...,...&.......
 8001bf0:	00000019 00000013 0000000d 00000006     ................
 8001c00:	00000000 fffffffa fffffff3 ffffffed     ................
 8001c10:	ffffffe7 ffffffe1 ffffffda ffffffd4     ................
 8001c20:	ffffffce ffffffc7 ffffffc1 ffffffbb     ................
 8001c30:	ffffffb5 ffffffae ffffffa8 ffffffa2     ................
 8001c40:	ffffff9c ffffff95 ffffff8f ffffff89     ................
 8001c50:	ffffff83 ffffff7c ffffff76 ffffff70     ....|...v...p...
 8001c60:	ffffff6a ffffff64 ffffff5d ffffff57     j...d...]...W...
 8001c70:	ffffff51 ffffff4b ffffff45 ffffff3e     Q...K...E...>...
 8001c80:	ffffff38 ffffff32 ffffff2c ffffff26     8...2...,...&...
 8001c90:	ffffff20 ffffff1a ffffff13 ffffff0d      ...............
 8001ca0:	ffffff07 ffffff01 fffffefb fffffef5     ................
 8001cb0:	fffffeef fffffee9 fffffee3 fffffedd     ................
 8001cc0:	fffffed7 fffffed1 fffffecb fffffec5     ................
 8001cd0:	fffffebf fffffeb9 fffffeb3 fffffead     ................
 8001ce0:	fffffea7 fffffea1 fffffe9b fffffe95     ................
 8001cf0:	fffffe8f fffffe8a fffffe84 fffffe7e     ............~...
 8001d00:	fffffe78 fffffe72 fffffe6d fffffe67     x...r...m...g...
 8001d10:	fffffe61 fffffe5b fffffe56 fffffe50     a...[...V...P...
 8001d20:	fffffe4a fffffe45 fffffe3f fffffe39     J...E...?...9...
 8001d30:	fffffe34 fffffe2e fffffe28 fffffe23     4.......(...#...
 8001d40:	fffffe1d fffffe18 fffffe12 fffffe0d     ................
 8001d50:	fffffe07 fffffe02 fffffdfc fffffdf7     ................
 8001d60:	fffffdf2 fffffdec fffffde7 fffffde1     ................
 8001d70:	fffffddc fffffdd7 fffffdd2 fffffdcc     ................
 8001d80:	fffffdc7 fffffdc2 fffffdbd fffffdb8     ................
 8001d90:	fffffdb2 fffffdad fffffda8 fffffda3     ................
 8001da0:	fffffd9e fffffd99 fffffd94 fffffd8f     ................
 8001db0:	fffffd8a fffffd85 fffffd80 fffffd7b     ............{...
 8001dc0:	fffffd76 fffffd72 fffffd6d fffffd68     v...r...m...h...
 8001dd0:	fffffd63 fffffd5e fffffd5a fffffd55     c...^...Z...U...
 8001de0:	fffffd50 fffffd4c fffffd47 fffffd42     P...L...G...B...
 8001df0:	fffffd3e fffffd39 fffffd35 fffffd30     >...9...5...0...
 8001e00:	fffffd2c fffffd27 fffffd23 fffffd1f     ,...'...#.......
 8001e10:	fffffd1a fffffd16 fffffd12 fffffd0d     ................
 8001e20:	fffffd09 fffffd05 fffffd01 fffffcfd     ................
 8001e30:	fffffcf9 fffffcf5 fffffcf0 fffffcec     ................
 8001e40:	fffffce8 fffffce4 fffffce1 fffffcdd     ................
 8001e50:	fffffcd9 fffffcd5 fffffcd1 fffffccd     ................
 8001e60:	fffffcca fffffcc6 fffffcc2 fffffcbe     ................
 8001e70:	fffffcbb fffffcb7 fffffcb4 fffffcb0     ................
 8001e80:	fffffcad fffffca9 fffffca6 fffffca2     ................
 8001e90:	fffffc9f fffffc9c fffffc98 fffffc95     ................
 8001ea0:	fffffc92 fffffc8e fffffc8b fffffc88     ................
 8001eb0:	fffffc85 fffffc82 fffffc7f fffffc7c     ............|...
 8001ec0:	fffffc79 fffffc76 fffffc73 fffffc70     y...v...s...p...
 8001ed0:	fffffc6d fffffc6b fffffc68 fffffc65     m...k...h...e...
 8001ee0:	fffffc62 fffffc60 fffffc5d fffffc5a     b...`...]...Z...
 8001ef0:	fffffc58 fffffc55 fffffc53 fffffc50     X...U...S...P...
 8001f00:	fffffc4e fffffc4c fffffc49 fffffc47     N...L...I...G...
 8001f10:	fffffc45 fffffc42 fffffc40 fffffc3e     E...B...@...>...
 8001f20:	fffffc3c fffffc3a fffffc38 fffffc36     <...:...8...6...
 8001f30:	fffffc34 fffffc32 fffffc30 fffffc2e     4...2...0.......
 8001f40:	fffffc2c fffffc2a fffffc29 fffffc27     ,...*...)...'...
 8001f50:	fffffc25 fffffc23 fffffc22 fffffc20     %...#..."... ...
 8001f60:	fffffc1f fffffc1d fffffc1c fffffc1a     ................
 8001f70:	fffffc19 fffffc18 fffffc16 fffffc15     ................
 8001f80:	fffffc14 fffffc12 fffffc11 fffffc10     ................
 8001f90:	fffffc0f fffffc0e fffffc0d fffffc0c     ................
 8001fa0:	fffffc0b fffffc0a fffffc09 fffffc08     ................
 8001fb0:	fffffc08 fffffc07 fffffc06 fffffc06     ................
 8001fc0:	fffffc05 fffffc04 fffffc04 fffffc03     ................
 8001fd0:	fffffc03 fffffc02 fffffc02 fffffc02     ................
 8001fe0:	fffffc01 fffffc01 fffffc01 fffffc00     ................
 8001ff0:	fffffc00 fffffc00 fffffc00 fffffc00     ................
 8002000:	fffffc00 fffffc00 fffffc00 fffffc00     ................
 8002010:	fffffc00 fffffc00 fffffc01 fffffc01     ................
 8002020:	fffffc01 fffffc02 fffffc02 fffffc02     ................
 8002030:	fffffc03 fffffc03 fffffc04 fffffc04     ................
 8002040:	fffffc05 fffffc06 fffffc06 fffffc07     ................
 8002050:	fffffc08 fffffc08 fffffc09 fffffc0a     ................
 8002060:	fffffc0b fffffc0c fffffc0d fffffc0e     ................
 8002070:	fffffc0f fffffc10 fffffc11 fffffc12     ................
 8002080:	fffffc14 fffffc15 fffffc16 fffffc18     ................
 8002090:	fffffc19 fffffc1a fffffc1c fffffc1d     ................
 80020a0:	fffffc1f fffffc20 fffffc22 fffffc23     .... ..."...#...
 80020b0:	fffffc25 fffffc27 fffffc29 fffffc2a     %...'...)...*...
 80020c0:	fffffc2c fffffc2e fffffc30 fffffc32     ,.......0...2...
 80020d0:	fffffc34 fffffc36 fffffc38 fffffc3a     4...6...8...:...
 80020e0:	fffffc3c fffffc3e fffffc40 fffffc42     <...>...@...B...
 80020f0:	fffffc45 fffffc47 fffffc49 fffffc4c     E...G...I...L...
 8002100:	fffffc4e fffffc50 fffffc53 fffffc55     N...P...S...U...
 8002110:	fffffc58 fffffc5a fffffc5d fffffc60     X...Z...]...`...
 8002120:	fffffc62 fffffc65 fffffc68 fffffc6b     b...e...h...k...
 8002130:	fffffc6d fffffc70 fffffc73 fffffc76     m...p...s...v...
 8002140:	fffffc79 fffffc7c fffffc7f fffffc82     y...|...........
 8002150:	fffffc85 fffffc88 fffffc8b fffffc8e     ................
 8002160:	fffffc92 fffffc95 fffffc98 fffffc9c     ................
 8002170:	fffffc9f fffffca2 fffffca6 fffffca9     ................
 8002180:	fffffcad fffffcb0 fffffcb4 fffffcb7     ................
 8002190:	fffffcbb fffffcbe fffffcc2 fffffcc6     ................
 80021a0:	fffffcca fffffccd fffffcd1 fffffcd5     ................
 80021b0:	fffffcd9 fffffcdd fffffce1 fffffce4     ................
 80021c0:	fffffce8 fffffcec fffffcf0 fffffcf5     ................
 80021d0:	fffffcf9 fffffcfd fffffd01 fffffd05     ................
 80021e0:	fffffd09 fffffd0d fffffd12 fffffd16     ................
 80021f0:	fffffd1a fffffd1f fffffd23 fffffd27     ........#...'...
 8002200:	fffffd2c fffffd30 fffffd35 fffffd39     ,...0...5...9...
 8002210:	fffffd3e fffffd42 fffffd47 fffffd4c     >...B...G...L...
 8002220:	fffffd50 fffffd55 fffffd5a fffffd5e     P...U...Z...^...
 8002230:	fffffd63 fffffd68 fffffd6d fffffd72     c...h...m...r...
 8002240:	fffffd76 fffffd7b fffffd80 fffffd85     v...{...........
 8002250:	fffffd8a fffffd8f fffffd94 fffffd99     ................
 8002260:	fffffd9e fffffda3 fffffda8 fffffdad     ................
 8002270:	fffffdb2 fffffdb8 fffffdbd fffffdc2     ................
 8002280:	fffffdc7 fffffdcc fffffdd2 fffffdd7     ................
 8002290:	fffffddc fffffde1 fffffde7 fffffdec     ................
 80022a0:	fffffdf2 fffffdf7 fffffdfc fffffe02     ................
 80022b0:	fffffe07 fffffe0d fffffe12 fffffe18     ................
 80022c0:	fffffe1d fffffe23 fffffe28 fffffe2e     ....#...(.......
 80022d0:	fffffe34 fffffe39 fffffe3f fffffe45     4...9...?...E...
 80022e0:	fffffe4a fffffe50 fffffe56 fffffe5b     J...P...V...[...
 80022f0:	fffffe61 fffffe67 fffffe6d fffffe72     a...g...m...r...
 8002300:	fffffe78 fffffe7e fffffe84 fffffe8a     x...~...........
 8002310:	fffffe8f fffffe95 fffffe9b fffffea1     ................
 8002320:	fffffea7 fffffead fffffeb3 fffffeb9     ................
 8002330:	fffffebf fffffec5 fffffecb fffffed1     ................
 8002340:	fffffed7 fffffedd fffffee3 fffffee9     ................
 8002350:	fffffeef fffffef5 fffffefb ffffff01     ................
 8002360:	ffffff07 ffffff0d ffffff13 ffffff1a     ................
 8002370:	ffffff20 ffffff26 ffffff2c ffffff32      ...&...,...2...
 8002380:	ffffff38 ffffff3e ffffff45 ffffff4b     8...>...E...K...
 8002390:	ffffff51 ffffff57 ffffff5d ffffff64     Q...W...]...d...
 80023a0:	ffffff6a ffffff70 ffffff76 ffffff7c     j...p...v...|...
 80023b0:	ffffff83 ffffff89 ffffff8f ffffff95     ................
 80023c0:	ffffff9c ffffffa2 ffffffa8 ffffffae     ................
 80023d0:	ffffffb5 ffffffbb ffffffc1 ffffffc7     ................
 80023e0:	ffffffce ffffffd4 ffffffda ffffffe1     ................
 80023f0:	ffffffe7 ffffffed fffffff3 fffffffa     ................
 8002400:	00000000 00000006 0000000d 00000013     ................
 8002410:	00000019 0000001f 00000026 0000002c     ........&...,...
 8002420:	00000032 00000039 0000003f 00000045     2...9...?...E...
 8002430:	0000004b 00000052 00000058 0000005e     K...R...X...^...
 8002440:	00000064 0000006b 00000071 00000077     d...k...q...w...
 8002450:	0000007d 00000084 0000008a 00000090     }...............
 8002460:	00000096 0000009c 000000a3 000000a9     ................
 8002470:	000000af 000000b5 000000bb 000000c2     ................
 8002480:	000000c8 000000ce 000000d4 000000da     ................
 8002490:	000000e0 000000e6 000000ed 000000f3     ................
 80024a0:	000000f9 000000ff 00000105 0000010b     ................
 80024b0:	00000111 00000117 0000011d 00000123     ............#...
 80024c0:	00000129 0000012f 00000135 0000013b     ).../...5...;...
 80024d0:	00000141 00000147 0000014d 00000153     A...G...M...S...
 80024e0:	00000159 0000015f 00000165 0000016b     Y..._...e...k...
 80024f0:	00000171 00000176 0000017c 00000182     q...v...|.......
 8002500:	00000188 0000018e 00000193 00000199     ................
 8002510:	0000019f 000001a5 000001aa 000001b0     ................
 8002520:	000001b6 000001bb 000001c1 000001c7     ................
 8002530:	000001cc 000001d2 000001d8 000001dd     ................
 8002540:	000001e3 000001e8 000001ee 000001f3     ................
 8002550:	000001f9 000001fe 00000204 00000209     ................
 8002560:	0000020e 00000214 00000219 0000021f     ................
 8002570:	00000224 00000229 0000022e 00000234     $...).......4...
 8002580:	00000239 0000023e 00000243 00000248     9...>...C...H...
 8002590:	0000024e 00000253 00000258 0000025d     N...S...X...]...
 80025a0:	00000262 00000267 0000026c 00000271     b...g...l...q...
 80025b0:	00000276 0000027b 00000280 00000285     v...{...........
 80025c0:	0000028a 0000028e 00000293 00000298     ................
 80025d0:	0000029d 000002a2 000002a6 000002ab     ................
 80025e0:	000002b0 000002b4 000002b9 000002be     ................
 80025f0:	000002c2 000002c7 000002cb 000002d0     ................
 8002600:	000002d4 000002d9 000002dd 000002e1     ................
 8002610:	000002e6 000002ea 000002ee 000002f3     ................
 8002620:	000002f7 000002fb 000002ff 00000303     ................
 8002630:	00000307 0000030b 00000310 00000314     ................
 8002640:	00000318 0000031c 0000031f 00000323     ............#...
 8002650:	00000327 0000032b 0000032f 00000333     '...+.../...3...
 8002660:	00000336 0000033a 0000033e 00000342     6...:...>...B...
 8002670:	00000345 00000349 0000034c 00000350     E...I...L...P...
 8002680:	00000353 00000357 0000035a 0000035e     S...W...Z...^...
 8002690:	00000361 00000364 00000368 0000036b     a...d...h...k...
 80026a0:	0000036e 00000372 00000375 00000378     n...r...u...x...
 80026b0:	0000037b 0000037e 00000381 00000384     {...~...........
 80026c0:	00000387 0000038a 0000038d 00000390     ................
 80026d0:	00000393 00000395 00000398 0000039b     ................
 80026e0:	0000039e 000003a0 000003a3 000003a6     ................
 80026f0:	000003a8 000003ab 000003ad 000003b0     ................
 8002700:	000003b2 000003b4 000003b7 000003b9     ................
 8002710:	000003bb 000003be 000003c0 000003c2     ................
 8002720:	000003c4 000003c6 000003c8 000003ca     ................
 8002730:	000003cc 000003ce 000003d0 000003d2     ................
 8002740:	000003d4 000003d6 000003d7 000003d9     ................
 8002750:	000003db 000003dd 000003de 000003e0     ................
 8002760:	000003e1 000003e3 000003e4 000003e6     ................
 8002770:	000003e7 000003e8 000003ea 000003eb     ................
 8002780:	000003ec 000003ee 000003ef 000003f0     ................
 8002790:	000003f1 000003f2 000003f3 000003f4     ................
 80027a0:	000003f5 000003f6 000003f7 000003f8     ................
 80027b0:	000003f8 000003f9 000003fa 000003fa     ................
 80027c0:	000003fb 000003fc 000003fc 000003fd     ................
 80027d0:	000003fd 000003fe 000003fe 000003fe     ................
 80027e0:	000003ff 000003ff 000003ff 00000400     ................
 80027f0:	00000400 00000400 00000400 00000400     ................
