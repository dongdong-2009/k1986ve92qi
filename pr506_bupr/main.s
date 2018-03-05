
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 a1 17 00 08 01 18 00 08 01 18 00 08     ... ............
 8000010:	01 18 00 08 01 18 00 08 01 18 00 08 00 00 00 00     ................
	...
 800002c:	01 18 00 08 01 18 00 08 00 00 00 00 01 18 00 08     ................
 800003c:	01 17 00 08 01 18 00 08 01 18 00 08 01 18 00 08     ................
	...
 8000054:	01 18 00 08 1d 17 00 08 01 18 00 08 01 18 00 08     ................
 8000064:	00 00 00 00 01 18 00 08 01 18 00 08 01 18 00 08     ................
 8000074:	00 00 00 00 3d 02 00 08 01 18 00 08 55 02 00 08     ....=.......U...
 8000084:	01 18 00 08 00 00 00 00 01 18 00 08 01 18 00 08     ................
	...
 80000ac:	01 18 00 08 01 18 00 08 01 18 00 08 01 18 00 08     ................
 80000bc:	01 18 00 08                                         ....

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
 800010c:	20001290 	.word	0x20001290

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
 8000262:	f000 ff75 	bl	8001150 <adc_dma_start>
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
 800030a:	4b40      	ldr	r3, [pc, #256]	; (800040c <update_telemetry+0x108>)
 800030c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
 800030e:	f003 0302 	and.w	r3, r3, #2
 8000312:	2b00      	cmp	r3, #0
 8000314:	d074      	beq.n	8000400 <update_telemetry+0xfc>
 8000316:	4b3d      	ldr	r3, [pc, #244]	; (800040c <update_telemetry+0x108>)
 8000318:	2200      	movs	r2, #0
 800031a:	655a      	str	r2, [r3, #84]	; 0x54
 800031c:	4a3c      	ldr	r2, [pc, #240]	; (8000410 <update_telemetry+0x10c>)
 800031e:	4b3c      	ldr	r3, [pc, #240]	; (8000410 <update_telemetry+0x10c>)
 8000320:	681b      	ldr	r3, [r3, #0]
 8000322:	f043 0301 	orr.w	r3, r3, #1
 8000326:	6013      	str	r3, [r2, #0]
 8000328:	4b38      	ldr	r3, [pc, #224]	; (800040c <update_telemetry+0x108>)
 800032a:	695b      	ldr	r3, [r3, #20]
 800032c:	b29b      	uxth	r3, r3
 800032e:	f5a3 7396 	sub.w	r3, r3, #300	; 0x12c
 8000332:	80fb      	strh	r3, [r7, #6]
 8000334:	88fb      	ldrh	r3, [r7, #6]
 8000336:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800033a:	d205      	bcs.n	8000348 <update_telemetry+0x44>
 800033c:	4a33      	ldr	r2, [pc, #204]	; (800040c <update_telemetry+0x108>)
 800033e:	4b33      	ldr	r3, [pc, #204]	; (800040c <update_telemetry+0x108>)
 8000340:	681b      	ldr	r3, [r3, #0]
 8000342:	3301      	adds	r3, #1
 8000344:	6013      	str	r3, [r2, #0]
 8000346:	e004      	b.n	8000352 <update_telemetry+0x4e>
 8000348:	4a30      	ldr	r2, [pc, #192]	; (800040c <update_telemetry+0x108>)
 800034a:	4b30      	ldr	r3, [pc, #192]	; (800040c <update_telemetry+0x108>)
 800034c:	681b      	ldr	r3, [r3, #0]
 800034e:	3b01      	subs	r3, #1
 8000350:	6013      	str	r3, [r2, #0]
 8000352:	4b30      	ldr	r3, [pc, #192]	; (8000414 <update_telemetry+0x110>)
 8000354:	681b      	ldr	r3, [r3, #0]
 8000356:	b29a      	uxth	r2, r3
 8000358:	4b2f      	ldr	r3, [pc, #188]	; (8000418 <update_telemetry+0x114>)
 800035a:	681b      	ldr	r3, [r3, #0]
 800035c:	b29b      	uxth	r3, r3
 800035e:	1ad3      	subs	r3, r2, r3
 8000360:	b29b      	uxth	r3, r3
 8000362:	b21a      	sxth	r2, r3
 8000364:	4b2d      	ldr	r3, [pc, #180]	; (800041c <update_telemetry+0x118>)
 8000366:	801a      	strh	r2, [r3, #0]
 8000368:	4b2d      	ldr	r3, [pc, #180]	; (8000420 <update_telemetry+0x11c>)
 800036a:	681b      	ldr	r3, [r3, #0]
 800036c:	b29a      	uxth	r2, r3
 800036e:	4b2a      	ldr	r3, [pc, #168]	; (8000418 <update_telemetry+0x114>)
 8000370:	681b      	ldr	r3, [r3, #0]
 8000372:	b29b      	uxth	r3, r3
 8000374:	1ad3      	subs	r3, r2, r3
 8000376:	b29b      	uxth	r3, r3
 8000378:	b21a      	sxth	r2, r3
 800037a:	4b28      	ldr	r3, [pc, #160]	; (800041c <update_telemetry+0x118>)
 800037c:	805a      	strh	r2, [r3, #2]
 800037e:	4b29      	ldr	r3, [pc, #164]	; (8000424 <update_telemetry+0x120>)
 8000380:	681b      	ldr	r3, [r3, #0]
 8000382:	129b      	asrs	r3, r3, #10
 8000384:	b29a      	uxth	r2, r3
 8000386:	4b25      	ldr	r3, [pc, #148]	; (800041c <update_telemetry+0x118>)
 8000388:	809a      	strh	r2, [r3, #4]
 800038a:	4b24      	ldr	r3, [pc, #144]	; (800041c <update_telemetry+0x118>)
 800038c:	2200      	movs	r2, #0
 800038e:	80da      	strh	r2, [r3, #6]
 8000390:	4b22      	ldr	r3, [pc, #136]	; (800041c <update_telemetry+0x118>)
 8000392:	603b      	str	r3, [r7, #0]
 8000394:	4924      	ldr	r1, [pc, #144]	; (8000428 <update_telemetry+0x124>)
 8000396:	683b      	ldr	r3, [r7, #0]
 8000398:	1c5a      	adds	r2, r3, #1
 800039a:	603a      	str	r2, [r7, #0]
 800039c:	781b      	ldrb	r3, [r3, #0]
 800039e:	600b      	str	r3, [r1, #0]
 80003a0:	4921      	ldr	r1, [pc, #132]	; (8000428 <update_telemetry+0x124>)
 80003a2:	683b      	ldr	r3, [r7, #0]
 80003a4:	1c5a      	adds	r2, r3, #1
 80003a6:	603a      	str	r2, [r7, #0]
 80003a8:	781b      	ldrb	r3, [r3, #0]
 80003aa:	600b      	str	r3, [r1, #0]
 80003ac:	491e      	ldr	r1, [pc, #120]	; (8000428 <update_telemetry+0x124>)
 80003ae:	683b      	ldr	r3, [r7, #0]
 80003b0:	1c5a      	adds	r2, r3, #1
 80003b2:	603a      	str	r2, [r7, #0]
 80003b4:	781b      	ldrb	r3, [r3, #0]
 80003b6:	600b      	str	r3, [r1, #0]
 80003b8:	491b      	ldr	r1, [pc, #108]	; (8000428 <update_telemetry+0x124>)
 80003ba:	683b      	ldr	r3, [r7, #0]
 80003bc:	1c5a      	adds	r2, r3, #1
 80003be:	603a      	str	r2, [r7, #0]
 80003c0:	781b      	ldrb	r3, [r3, #0]
 80003c2:	600b      	str	r3, [r1, #0]
 80003c4:	4918      	ldr	r1, [pc, #96]	; (8000428 <update_telemetry+0x124>)
 80003c6:	683b      	ldr	r3, [r7, #0]
 80003c8:	1c5a      	adds	r2, r3, #1
 80003ca:	603a      	str	r2, [r7, #0]
 80003cc:	781b      	ldrb	r3, [r3, #0]
 80003ce:	600b      	str	r3, [r1, #0]
 80003d0:	4915      	ldr	r1, [pc, #84]	; (8000428 <update_telemetry+0x124>)
 80003d2:	683b      	ldr	r3, [r7, #0]
 80003d4:	1c5a      	adds	r2, r3, #1
 80003d6:	603a      	str	r2, [r7, #0]
 80003d8:	781b      	ldrb	r3, [r3, #0]
 80003da:	600b      	str	r3, [r1, #0]
 80003dc:	4912      	ldr	r1, [pc, #72]	; (8000428 <update_telemetry+0x124>)
 80003de:	683b      	ldr	r3, [r7, #0]
 80003e0:	1c5a      	adds	r2, r3, #1
 80003e2:	603a      	str	r2, [r7, #0]
 80003e4:	781b      	ldrb	r3, [r3, #0]
 80003e6:	600b      	str	r3, [r1, #0]
 80003e8:	490f      	ldr	r1, [pc, #60]	; (8000428 <update_telemetry+0x124>)
 80003ea:	683b      	ldr	r3, [r7, #0]
 80003ec:	1c5a      	adds	r2, r3, #1
 80003ee:	603a      	str	r2, [r7, #0]
 80003f0:	781b      	ldrb	r3, [r3, #0]
 80003f2:	600b      	str	r3, [r1, #0]
 80003f4:	4a06      	ldr	r2, [pc, #24]	; (8000410 <update_telemetry+0x10c>)
 80003f6:	4b06      	ldr	r3, [pc, #24]	; (8000410 <update_telemetry+0x10c>)
 80003f8:	681b      	ldr	r3, [r3, #0]
 80003fa:	f023 0301 	bic.w	r3, r3, #1
 80003fe:	6013      	str	r3, [r2, #0]
 8000400:	bf00      	nop
 8000402:	370c      	adds	r7, #12
 8000404:	46bd      	mov	sp, r7
 8000406:	bc80      	pop	{r7}
 8000408:	4770      	bx	lr
 800040a:	bf00      	nop
 800040c:	40070000 	.word	0x40070000
 8000410:	400a8000 	.word	0x400a8000
 8000414:	20000220 	.word	0x20000220
 8000418:	2000022c 	.word	0x2000022c
 800041c:	20000250 	.word	0x20000250
 8000420:	20000244 	.word	0x20000244
 8000424:	2000024c 	.word	0x2000024c
 8000428:	40030000 	.word	0x40030000

0800042c <update_refposition>:
 800042c:	b480      	push	{r7}
 800042e:	b087      	sub	sp, #28
 8000430:	af00      	add	r7, sp, #0
 8000432:	4b20      	ldr	r3, [pc, #128]	; (80004b4 <update_refposition+0x88>)
 8000434:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000436:	f003 0310 	and.w	r3, r3, #16
 800043a:	2b00      	cmp	r3, #0
 800043c:	d022      	beq.n	8000484 <update_refposition+0x58>
 800043e:	2300      	movs	r3, #0
 8000440:	617b      	str	r3, [r7, #20]
 8000442:	e00c      	b.n	800045e <update_refposition+0x32>
 8000444:	4b1b      	ldr	r3, [pc, #108]	; (80004b4 <update_refposition+0x88>)
 8000446:	681b      	ldr	r3, [r3, #0]
 8000448:	b2d9      	uxtb	r1, r3
 800044a:	463a      	mov	r2, r7
 800044c:	697b      	ldr	r3, [r7, #20]
 800044e:	4413      	add	r3, r2
 8000450:	460a      	mov	r2, r1
 8000452:	701a      	strb	r2, [r3, #0]
 8000454:	697b      	ldr	r3, [r7, #20]
 8000456:	3301      	adds	r3, #1
 8000458:	f003 030f 	and.w	r3, r3, #15
 800045c:	617b      	str	r3, [r7, #20]
 800045e:	4b15      	ldr	r3, [pc, #84]	; (80004b4 <update_refposition+0x88>)
 8000460:	699b      	ldr	r3, [r3, #24]
 8000462:	f003 0310 	and.w	r3, r3, #16
 8000466:	2b00      	cmp	r3, #0
 8000468:	d0ec      	beq.n	8000444 <update_refposition+0x18>
 800046a:	783b      	ldrb	r3, [r7, #0]
 800046c:	b29a      	uxth	r2, r3
 800046e:	787b      	ldrb	r3, [r7, #1]
 8000470:	b29b      	uxth	r3, r3
 8000472:	021b      	lsls	r3, r3, #8
 8000474:	b29b      	uxth	r3, r3
 8000476:	4413      	add	r3, r2
 8000478:	b29b      	uxth	r3, r3
 800047a:	827b      	strh	r3, [r7, #18]
 800047c:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 8000480:	4a0d      	ldr	r2, [pc, #52]	; (80004b8 <update_refposition+0x8c>)
 8000482:	6013      	str	r3, [r2, #0]
 8000484:	4b0b      	ldr	r3, [pc, #44]	; (80004b4 <update_refposition+0x88>)
 8000486:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000488:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800048c:	2b00      	cmp	r3, #0
 800048e:	d009      	beq.n	80004a4 <update_refposition+0x78>
 8000490:	e002      	b.n	8000498 <update_refposition+0x6c>
 8000492:	4b08      	ldr	r3, [pc, #32]	; (80004b4 <update_refposition+0x88>)
 8000494:	681b      	ldr	r3, [r3, #0]
 8000496:	747b      	strb	r3, [r7, #17]
 8000498:	4b06      	ldr	r3, [pc, #24]	; (80004b4 <update_refposition+0x88>)
 800049a:	699b      	ldr	r3, [r3, #24]
 800049c:	f003 0310 	and.w	r3, r3, #16
 80004a0:	2b00      	cmp	r3, #0
 80004a2:	d0f6      	beq.n	8000492 <update_refposition+0x66>
 80004a4:	4b04      	ldr	r3, [pc, #16]	; (80004b8 <update_refposition+0x8c>)
 80004a6:	681b      	ldr	r3, [r3, #0]
 80004a8:	4618      	mov	r0, r3
 80004aa:	371c      	adds	r7, #28
 80004ac:	46bd      	mov	sp, r7
 80004ae:	bc80      	pop	{r7}
 80004b0:	4770      	bx	lr
 80004b2:	bf00      	nop
 80004b4:	40030000 	.word	0x40030000
 80004b8:	2000025c 	.word	0x2000025c

080004bc <main>:
 80004bc:	b580      	push	{r7, lr}
 80004be:	b0a6      	sub	sp, #152	; 0x98
 80004c0:	af00      	add	r7, sp, #0
 80004c2:	2300      	movs	r3, #0
 80004c4:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
 80004c8:	2300      	movs	r3, #0
 80004ca:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
 80004ce:	2300      	movs	r3, #0
 80004d0:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
 80004d4:	2300      	movs	r3, #0
 80004d6:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 80004da:	2300      	movs	r3, #0
 80004dc:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
 80004e0:	2300      	movs	r3, #0
 80004e2:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 80004e6:	2300      	movs	r3, #0
 80004e8:	67fb      	str	r3, [r7, #124]	; 0x7c
 80004ea:	2300      	movs	r3, #0
 80004ec:	67bb      	str	r3, [r7, #120]	; 0x78
 80004ee:	f001 f8fb 	bl	80016e8 <system_init>
 80004f2:	f7ff fe0d 	bl	8000110 <ssi_init>
 80004f6:	f7ff fe7f 	bl	80001f8 <dac_init>
 80004fa:	f000 fe21 	bl	8001140 <adc_dma_init>
 80004fe:	f107 0348 	add.w	r3, r7, #72	; 0x48
 8000502:	22c8      	movs	r2, #200	; 0xc8
 8000504:	2150      	movs	r1, #80	; 0x50
 8000506:	4618      	mov	r0, r3
 8000508:	f000 f95a 	bl	80007c0 <reg_init>
 800050c:	f107 0338 	add.w	r3, r7, #56	; 0x38
 8000510:	22c8      	movs	r2, #200	; 0xc8
 8000512:	2150      	movs	r1, #80	; 0x50
 8000514:	4618      	mov	r0, r3
 8000516:	f000 f953 	bl	80007c0 <reg_init>
 800051a:	f107 0328 	add.w	r3, r7, #40	; 0x28
 800051e:	f241 3288 	movw	r2, #5000	; 0x1388
 8000522:	2100      	movs	r1, #0
 8000524:	4618      	mov	r0, r3
 8000526:	f000 f94b 	bl	80007c0 <reg_init>
 800052a:	f107 0318 	add.w	r3, r7, #24
 800052e:	f241 7270 	movw	r2, #6000	; 0x1770
 8000532:	2100      	movs	r1, #0
 8000534:	4618      	mov	r0, r3
 8000536:	f000 f943 	bl	80007c0 <reg_init>
 800053a:	2300      	movs	r3, #0
 800053c:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
 8000540:	2300      	movs	r3, #0
 8000542:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 8000546:	4b8c      	ldr	r3, [pc, #560]	; (8000778 <main+0x2bc>)
 8000548:	2200      	movs	r2, #0
 800054a:	601a      	str	r2, [r3, #0]
 800054c:	2300      	movs	r3, #0
 800054e:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
 8000552:	e027      	b.n	80005a4 <main+0xe8>
 8000554:	f000 fe10 	bl	8001178 <adc_dma_wait>
 8000558:	4b88      	ldr	r3, [pc, #544]	; (800077c <main+0x2c0>)
 800055a:	685b      	ldr	r3, [r3, #4]
 800055c:	f3c3 020b 	ubfx	r2, r3, #0, #12
 8000560:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
 8000564:	4413      	add	r3, r2
 8000566:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
 800056a:	4b84      	ldr	r3, [pc, #528]	; (800077c <main+0x2c0>)
 800056c:	681b      	ldr	r3, [r3, #0]
 800056e:	f3c3 020b 	ubfx	r2, r3, #0, #12
 8000572:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
 8000576:	4413      	add	r3, r2
 8000578:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 800057c:	4b80      	ldr	r3, [pc, #512]	; (8000780 <main+0x2c4>)
 800057e:	689b      	ldr	r3, [r3, #8]
 8000580:	4618      	mov	r0, r3
 8000582:	f7ff fe0f 	bl	80001a4 <enc_crc>
 8000586:	4602      	mov	r2, r0
 8000588:	4b7b      	ldr	r3, [pc, #492]	; (8000778 <main+0x2bc>)
 800058a:	681b      	ldr	r3, [r3, #0]
 800058c:	4413      	add	r3, r2
 800058e:	461a      	mov	r2, r3
 8000590:	4b79      	ldr	r3, [pc, #484]	; (8000778 <main+0x2bc>)
 8000592:	601a      	str	r2, [r3, #0]
 8000594:	2000      	movs	r0, #0
 8000596:	f000 fcf9 	bl	8000f8c <mfilter>
 800059a:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
 800059e:	3301      	adds	r3, #1
 80005a0:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
 80005a4:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
 80005a8:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 80005ac:	dbd2      	blt.n	8000554 <main+0x98>
 80005ae:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
 80005b2:	129b      	asrs	r3, r3, #10
 80005b4:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
 80005b8:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
 80005bc:	129b      	asrs	r3, r3, #10
 80005be:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
 80005c2:	4b6d      	ldr	r3, [pc, #436]	; (8000778 <main+0x2bc>)
 80005c4:	681b      	ldr	r3, [r3, #0]
 80005c6:	129b      	asrs	r3, r3, #10
 80005c8:	4a6b      	ldr	r2, [pc, #428]	; (8000778 <main+0x2bc>)
 80005ca:	6013      	str	r3, [r2, #0]
 80005cc:	4b6d      	ldr	r3, [pc, #436]	; (8000784 <main+0x2c8>)
 80005ce:	2200      	movs	r2, #0
 80005d0:	601a      	str	r2, [r3, #0]
 80005d2:	4b69      	ldr	r3, [pc, #420]	; (8000778 <main+0x2bc>)
 80005d4:	681b      	ldr	r3, [r3, #0]
 80005d6:	4a6c      	ldr	r2, [pc, #432]	; (8000788 <main+0x2cc>)
 80005d8:	6013      	str	r3, [r2, #0]
 80005da:	4b67      	ldr	r3, [pc, #412]	; (8000778 <main+0x2bc>)
 80005dc:	681b      	ldr	r3, [r3, #0]
 80005de:	4618      	mov	r0, r3
 80005e0:	f000 fcac 	bl	8000f3c <encoder_init>
 80005e4:	f000 fdc8 	bl	8001178 <adc_dma_wait>
 80005e8:	4b64      	ldr	r3, [pc, #400]	; (800077c <main+0x2c0>)
 80005ea:	685b      	ldr	r3, [r3, #4]
 80005ec:	f3c3 020b 	ubfx	r2, r3, #0, #12
 80005f0:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
 80005f4:	1ad3      	subs	r3, r2, r3
 80005f6:	677b      	str	r3, [r7, #116]	; 0x74
 80005f8:	4b60      	ldr	r3, [pc, #384]	; (800077c <main+0x2c0>)
 80005fa:	681b      	ldr	r3, [r3, #0]
 80005fc:	f3c3 020b 	ubfx	r2, r3, #0, #12
 8000600:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
 8000604:	1ad3      	subs	r3, r2, r3
 8000606:	673b      	str	r3, [r7, #112]	; 0x70
 8000608:	6f7a      	ldr	r2, [r7, #116]	; 0x74
 800060a:	6f3b      	ldr	r3, [r7, #112]	; 0x70
 800060c:	4413      	add	r3, r2
 800060e:	66fb      	str	r3, [r7, #108]	; 0x6c
 8000610:	4b5b      	ldr	r3, [pc, #364]	; (8000780 <main+0x2c4>)
 8000612:	689b      	ldr	r3, [r3, #8]
 8000614:	4618      	mov	r0, r3
 8000616:	f7ff fdc5 	bl	80001a4 <enc_crc>
 800061a:	66b8      	str	r0, [r7, #104]	; 0x68
 800061c:	6ebb      	ldr	r3, [r7, #104]	; 0x68
 800061e:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000622:	67bb      	str	r3, [r7, #120]	; 0x78
 8000624:	4a59      	ldr	r2, [pc, #356]	; (800078c <main+0x2d0>)
 8000626:	6ebb      	ldr	r3, [r7, #104]	; 0x68
 8000628:	6013      	str	r3, [r2, #0]
 800062a:	4b59      	ldr	r3, [pc, #356]	; (8000790 <main+0x2d4>)
 800062c:	681b      	ldr	r3, [r3, #0]
 800062e:	3301      	adds	r3, #1
 8000630:	4a57      	ldr	r2, [pc, #348]	; (8000790 <main+0x2d4>)
 8000632:	6013      	str	r3, [r2, #0]
 8000634:	4b56      	ldr	r3, [pc, #344]	; (8000790 <main+0x2d4>)
 8000636:	681b      	ldr	r3, [r3, #0]
 8000638:	f003 0307 	and.w	r3, r3, #7
 800063c:	2b00      	cmp	r3, #0
 800063e:	d141      	bne.n	80006c4 <main+0x208>
 8000640:	f7ff fef4 	bl	800042c <update_refposition>
 8000644:	4602      	mov	r2, r0
 8000646:	4b4c      	ldr	r3, [pc, #304]	; (8000778 <main+0x2bc>)
 8000648:	681b      	ldr	r3, [r3, #0]
 800064a:	4413      	add	r3, r2
 800064c:	4a4d      	ldr	r2, [pc, #308]	; (8000784 <main+0x2c8>)
 800064e:	6013      	str	r3, [r2, #0]
 8000650:	6ebb      	ldr	r3, [r7, #104]	; 0x68
 8000652:	494d      	ldr	r1, [pc, #308]	; (8000788 <main+0x2cc>)
 8000654:	4618      	mov	r0, r3
 8000656:	f000 fc77 	bl	8000f48 <get_speed>
 800065a:	6678      	str	r0, [r7, #100]	; 0x64
 800065c:	4b46      	ldr	r3, [pc, #280]	; (8000778 <main+0x2bc>)
 800065e:	681a      	ldr	r2, [r3, #0]
 8000660:	4b49      	ldr	r3, [pc, #292]	; (8000788 <main+0x2cc>)
 8000662:	681b      	ldr	r3, [r3, #0]
 8000664:	1ad3      	subs	r3, r2, r3
 8000666:	4618      	mov	r0, r3
 8000668:	f7ff fd2a 	bl	80000c0 <debug_signal>
 800066c:	4b45      	ldr	r3, [pc, #276]	; (8000784 <main+0x2c8>)
 800066e:	681a      	ldr	r2, [r3, #0]
 8000670:	4b45      	ldr	r3, [pc, #276]	; (8000788 <main+0x2cc>)
 8000672:	681b      	ldr	r3, [r3, #0]
 8000674:	1ad1      	subs	r1, r2, r3
 8000676:	f107 0318 	add.w	r3, r7, #24
 800067a:	2200      	movs	r2, #0
 800067c:	4618      	mov	r0, r3
 800067e:	f000 f8a5 	bl	80007cc <reg_update>
 8000682:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000684:	131b      	asrs	r3, r3, #12
 8000686:	67fb      	str	r3, [r7, #124]	; 0x7c
 8000688:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
 800068a:	6e7b      	ldr	r3, [r7, #100]	; 0x64
 800068c:	1ad1      	subs	r1, r2, r3
 800068e:	f107 0328 	add.w	r3, r7, #40	; 0x28
 8000692:	2200      	movs	r2, #0
 8000694:	4618      	mov	r0, r3
 8000696:	f000 f899 	bl	80007cc <reg_update>
 800069a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800069c:	131b      	asrs	r3, r3, #12
 800069e:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 80006a2:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
 80006a6:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 80006aa:	dd03      	ble.n	80006b4 <main+0x1f8>
 80006ac:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80006b0:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 80006b4:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
 80006b8:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
 80006bc:	da02      	bge.n	80006c4 <main+0x208>
 80006be:	4b35      	ldr	r3, [pc, #212]	; (8000794 <main+0x2d8>)
 80006c0:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 80006c4:	f7ff fe1e 	bl	8000304 <update_telemetry>
 80006c8:	6fbb      	ldr	r3, [r7, #120]	; 0x78
 80006ca:	f503 732f 	add.w	r3, r3, #700	; 0x2bc
 80006ce:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80006d2:	67bb      	str	r3, [r7, #120]	; 0x78
 80006d4:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 80006d6:	607b      	str	r3, [r7, #4]
 80006d8:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 80006da:	60bb      	str	r3, [r7, #8]
 80006dc:	6f3b      	ldr	r3, [r7, #112]	; 0x70
 80006de:	60fb      	str	r3, [r7, #12]
 80006e0:	6fba      	ldr	r2, [r7, #120]	; 0x78
 80006e2:	f107 0110 	add.w	r1, r7, #16
 80006e6:	1d3b      	adds	r3, r7, #4
 80006e8:	4618      	mov	r0, r3
 80006ea:	f000 f895 	bl	8000818 <abc_to_dq>
 80006ee:	693b      	ldr	r3, [r7, #16]
 80006f0:	425b      	negs	r3, r3
 80006f2:	663b      	str	r3, [r7, #96]	; 0x60
 80006f4:	697b      	ldr	r3, [r7, #20]
 80006f6:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
 80006fa:	1ad3      	subs	r3, r2, r3
 80006fc:	65fb      	str	r3, [r7, #92]	; 0x5c
 80006fe:	693b      	ldr	r3, [r7, #16]
 8000700:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
 8000704:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
 8000708:	697b      	ldr	r3, [r7, #20]
 800070a:	2b00      	cmp	r3, #0
 800070c:	bfb8      	it	lt
 800070e:	425b      	neglt	r3, r3
 8000710:	4413      	add	r3, r2
 8000712:	65bb      	str	r3, [r7, #88]	; 0x58
 8000714:	6db8      	ldr	r0, [r7, #88]	; 0x58
 8000716:	f000 fc39 	bl	8000f8c <mfilter>
 800071a:	4602      	mov	r2, r0
 800071c:	4b1e      	ldr	r3, [pc, #120]	; (8000798 <main+0x2dc>)
 800071e:	601a      	str	r2, [r3, #0]
 8000720:	f107 0348 	add.w	r3, r7, #72	; 0x48
 8000724:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
 8000728:	6e39      	ldr	r1, [r7, #96]	; 0x60
 800072a:	4618      	mov	r0, r3
 800072c:	f000 f84e 	bl	80007cc <reg_update>
 8000730:	f107 0338 	add.w	r3, r7, #56	; 0x38
 8000734:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
 8000738:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 800073a:	4618      	mov	r0, r3
 800073c:	f000 f846 	bl	80007cc <reg_update>
 8000740:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8000742:	109b      	asrs	r3, r3, #2
 8000744:	613b      	str	r3, [r7, #16]
 8000746:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8000748:	109b      	asrs	r3, r3, #2
 800074a:	617b      	str	r3, [r7, #20]
 800074c:	6fba      	ldr	r2, [r7, #120]	; 0x78
 800074e:	f107 0110 	add.w	r1, r7, #16
 8000752:	1d3b      	adds	r3, r7, #4
 8000754:	4618      	mov	r0, r3
 8000756:	f000 fa77 	bl	8000c48 <svpwm>
 800075a:	f8c7 0088 	str.w	r0, [r7, #136]	; 0x88
 800075e:	687b      	ldr	r3, [r7, #4]
 8000760:	4618      	mov	r0, r3
 8000762:	f7ff fd9f 	bl	80002a4 <pwm_seta>
 8000766:	68bb      	ldr	r3, [r7, #8]
 8000768:	4618      	mov	r0, r3
 800076a:	f7ff fdab 	bl	80002c4 <pwm_setb>
 800076e:	68fb      	ldr	r3, [r7, #12]
 8000770:	4618      	mov	r0, r3
 8000772:	f7ff fdb7 	bl	80002e4 <pwm_setc>
 8000776:	e735      	b.n	80005e4 <main+0x128>
 8000778:	2000022c 	.word	0x2000022c
 800077c:	20000200 	.word	0x20000200
 8000780:	40040000 	.word	0x40040000
 8000784:	20000220 	.word	0x20000220
 8000788:	20000244 	.word	0x20000244
 800078c:	20000248 	.word	0x20000248
 8000790:	20000234 	.word	0x20000234
 8000794:	fffffc18 	.word	0xfffffc18
 8000798:	2000024c 	.word	0x2000024c

0800079c <mycos>:
 800079c:	4b02      	ldr	r3, [pc, #8]	; (80007a8 <mycos+0xc>)
 800079e:	f3c0 0009 	ubfx	r0, r0, #0, #10
 80007a2:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 80007a6:	4770      	bx	lr
 80007a8:	08001848 	.word	0x08001848

080007ac <mysin>:
 80007ac:	4b03      	ldr	r3, [pc, #12]	; (80007bc <mysin+0x10>)
 80007ae:	f500 7040 	add.w	r0, r0, #768	; 0x300
 80007b2:	f3c0 0009 	ubfx	r0, r0, #0, #10
 80007b6:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 80007ba:	4770      	bx	lr
 80007bc:	08001848 	.word	0x08001848

080007c0 <reg_init>:
 80007c0:	2300      	movs	r3, #0
 80007c2:	e880 000e 	stmia.w	r0, {r1, r2, r3}
 80007c6:	60c3      	str	r3, [r0, #12]
 80007c8:	4770      	bx	lr
 80007ca:	bf00      	nop

080007cc <reg_update>:
 80007cc:	6803      	ldr	r3, [r0, #0]
 80007ce:	b410      	push	{r4}
 80007d0:	fb03 f301 	mul.w	r3, r3, r1
 80007d4:	6884      	ldr	r4, [r0, #8]
 80007d6:	b11a      	cbz	r2, 80007e0 <reg_update+0x14>
 80007d8:	2c00      	cmp	r4, #0
 80007da:	dd09      	ble.n	80007f0 <reg_update+0x24>
 80007dc:	ea03 73e3 	and.w	r3, r3, r3, asr #31
 80007e0:	6842      	ldr	r2, [r0, #4]
 80007e2:	4423      	add	r3, r4
 80007e4:	fb02 3101 	mla	r1, r2, r1, r3
 80007e8:	6083      	str	r3, [r0, #8]
 80007ea:	60c1      	str	r1, [r0, #12]
 80007ec:	bc10      	pop	{r4}
 80007ee:	4770      	bx	lr
 80007f0:	bf18      	it	ne
 80007f2:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
 80007f6:	e7f3      	b.n	80007e0 <reg_update+0x14>

080007f8 <dot3>:
 80007f8:	b430      	push	{r4, r5}
 80007fa:	684b      	ldr	r3, [r1, #4]
 80007fc:	6844      	ldr	r4, [r0, #4]
 80007fe:	6802      	ldr	r2, [r0, #0]
 8000800:	fb03 f304 	mul.w	r3, r3, r4
 8000804:	680d      	ldr	r5, [r1, #0]
 8000806:	6884      	ldr	r4, [r0, #8]
 8000808:	fb05 3302 	mla	r3, r5, r2, r3
 800080c:	6888      	ldr	r0, [r1, #8]
 800080e:	fb00 3004 	mla	r0, r0, r4, r3
 8000812:	bc30      	pop	{r4, r5}
 8000814:	4770      	bx	lr
 8000816:	bf00      	nop

08000818 <abc_to_dq>:
 8000818:	b4f0      	push	{r4, r5, r6, r7}
 800081a:	4c1d      	ldr	r4, [pc, #116]	; (8000890 <abc_to_dq+0x78>)
 800081c:	6803      	ldr	r3, [r0, #0]
 800081e:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
 8000822:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
 8000826:	fb03 f306 	mul.w	r3, r3, r6
 800082a:	f3c5 0509 	ubfx	r5, r5, #0, #10
 800082e:	6847      	ldr	r7, [r0, #4]
 8000830:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 8000834:	f202 1655 	addw	r6, r2, #341	; 0x155
 8000838:	fb07 3305 	mla	r3, r7, r5, r3
 800083c:	f3c6 0509 	ubfx	r5, r6, #0, #10
 8000840:	6887      	ldr	r7, [r0, #8]
 8000842:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 8000846:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
 800084a:	fb07 3305 	mla	r3, r7, r5, r3
 800084e:	129b      	asrs	r3, r3, #10
 8000850:	600b      	str	r3, [r1, #0]
 8000852:	f3c6 0509 	ubfx	r5, r6, #0, #10
 8000856:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
 800085a:	6843      	ldr	r3, [r0, #4]
 800085c:	f502 7540 	add.w	r5, r2, #768	; 0x300
 8000860:	fb03 f306 	mul.w	r3, r3, r6
 8000864:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000868:	6806      	ldr	r6, [r0, #0]
 800086a:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
 800086e:	f202 4255 	addw	r2, r2, #1109	; 0x455
 8000872:	fb06 3305 	mla	r3, r6, r5, r3
 8000876:	f3c2 0209 	ubfx	r2, r2, #0, #10
 800087a:	6880      	ldr	r0, [r0, #8]
 800087c:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 8000880:	bcf0      	pop	{r4, r5, r6, r7}
 8000882:	fb00 3302 	mla	r3, r0, r2, r3
 8000886:	425b      	negs	r3, r3
 8000888:	129b      	asrs	r3, r3, #10
 800088a:	604b      	str	r3, [r1, #4]
 800088c:	4770      	bx	lr
 800088e:	bf00      	nop
 8000890:	08001848 	.word	0x08001848

08000894 <dq_to_abc>:
 8000894:	4b1d      	ldr	r3, [pc, #116]	; (800090c <dq_to_abc+0x78>)
 8000896:	b4f0      	push	{r4, r5, r6, r7}
 8000898:	680e      	ldr	r6, [r1, #0]
 800089a:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
 800089e:	f502 7540 	add.w	r5, r2, #768	; 0x300
 80008a2:	fb04 f406 	mul.w	r4, r4, r6
 80008a6:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80008aa:	684f      	ldr	r7, [r1, #4]
 80008ac:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 80008b0:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
 80008b4:	fb07 4415 	mls	r4, r7, r5, r4
 80008b8:	1524      	asrs	r4, r4, #20
 80008ba:	6004      	str	r4, [r0, #0]
 80008bc:	f3c6 0509 	ubfx	r5, r6, #0, #10
 80008c0:	680c      	ldr	r4, [r1, #0]
 80008c2:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
 80008c6:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
 80008ca:	fb04 f406 	mul.w	r4, r4, r6
 80008ce:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80008d2:	684f      	ldr	r7, [r1, #4]
 80008d4:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 80008d8:	f202 1655 	addw	r6, r2, #341	; 0x155
 80008dc:	fb07 4415 	mls	r4, r7, r5, r4
 80008e0:	1524      	asrs	r4, r4, #20
 80008e2:	6044      	str	r4, [r0, #4]
 80008e4:	f3c6 0509 	ubfx	r5, r6, #0, #10
 80008e8:	680c      	ldr	r4, [r1, #0]
 80008ea:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 80008ee:	f202 4255 	addw	r2, r2, #1109	; 0x455
 80008f2:	fb04 f405 	mul.w	r4, r4, r5
 80008f6:	f3c2 0209 	ubfx	r2, r2, #0, #10
 80008fa:	6849      	ldr	r1, [r1, #4]
 80008fc:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
 8000900:	fb01 4312 	mls	r3, r1, r2, r4
 8000904:	bcf0      	pop	{r4, r5, r6, r7}
 8000906:	151b      	asrs	r3, r3, #20
 8000908:	6083      	str	r3, [r0, #8]
 800090a:	4770      	bx	lr
 800090c:	08001848 	.word	0x08001848

08000910 <cord_atan>:
 8000910:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000912:	b091      	sub	sp, #68	; 0x44
 8000914:	46ee      	mov	lr, sp
 8000916:	4684      	mov	ip, r0
 8000918:	4e56      	ldr	r6, [pc, #344]	; (8000a74 <cord_atan+0x164>)
 800091a:	460d      	mov	r5, r1
 800091c:	4614      	mov	r4, r2
 800091e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000920:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8000924:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000928:	af08      	add	r7, sp, #32
 800092a:	3610      	adds	r6, #16
 800092c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 8000930:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000932:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 8000934:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000938:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 800093c:	f8dc 6000 	ldr.w	r6, [ip]
 8000940:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8000944:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000948:	2b00      	cmp	r3, #0
 800094a:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 800094e:	9900      	ldr	r1, [sp, #0]
 8000950:	dd56      	ble.n	8000a00 <cord_atan+0xf0>
 8000952:	18d0      	adds	r0, r2, r3
 8000954:	1a9b      	subs	r3, r3, r2
 8000956:	2b00      	cmp	r3, #0
 8000958:	d07a      	beq.n	8000a50 <cord_atan+0x140>
 800095a:	9f01      	ldr	r7, [sp, #4]
 800095c:	dd54      	ble.n	8000a08 <cord_atan+0xf8>
 800095e:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8000962:	4439      	add	r1, r7
 8000964:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8000968:	2b00      	cmp	r3, #0
 800096a:	d073      	beq.n	8000a54 <cord_atan+0x144>
 800096c:	9f02      	ldr	r7, [sp, #8]
 800096e:	dd51      	ble.n	8000a14 <cord_atan+0x104>
 8000970:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8000974:	4439      	add	r1, r7
 8000976:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 800097a:	2b00      	cmp	r3, #0
 800097c:	d06d      	beq.n	8000a5a <cord_atan+0x14a>
 800097e:	9f03      	ldr	r7, [sp, #12]
 8000980:	dd4e      	ble.n	8000a20 <cord_atan+0x110>
 8000982:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 8000986:	4439      	add	r1, r7
 8000988:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 800098c:	2b00      	cmp	r3, #0
 800098e:	d066      	beq.n	8000a5e <cord_atan+0x14e>
 8000990:	9f04      	ldr	r7, [sp, #16]
 8000992:	dd4b      	ble.n	8000a2c <cord_atan+0x11c>
 8000994:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8000998:	4439      	add	r1, r7
 800099a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 800099e:	2b00      	cmp	r3, #0
 80009a0:	d060      	beq.n	8000a64 <cord_atan+0x154>
 80009a2:	9f05      	ldr	r7, [sp, #20]
 80009a4:	dd48      	ble.n	8000a38 <cord_atan+0x128>
 80009a6:	eb00 1263 	add.w	r2, r0, r3, asr #5
 80009aa:	4439      	add	r1, r7
 80009ac:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 80009b0:	2b00      	cmp	r3, #0
 80009b2:	d059      	beq.n	8000a68 <cord_atan+0x158>
 80009b4:	9f06      	ldr	r7, [sp, #24]
 80009b6:	dd45      	ble.n	8000a44 <cord_atan+0x134>
 80009b8:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 80009bc:	4439      	add	r1, r7
 80009be:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 80009c2:	2b00      	cmp	r3, #0
 80009c4:	d053      	beq.n	8000a6e <cord_atan+0x15e>
 80009c6:	9a07      	ldr	r2, [sp, #28]
 80009c8:	bfc7      	ittee	gt
 80009ca:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 80009ce:	1889      	addgt	r1, r1, r2
 80009d0:	1a89      	suble	r1, r1, r2
 80009d2:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 80009d6:	2207      	movs	r2, #7
 80009d8:	ab10      	add	r3, sp, #64	; 0x40
 80009da:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 80009de:	f852 3c20 	ldr.w	r3, [r2, #-32]
 80009e2:	2e00      	cmp	r6, #0
 80009e4:	fb03 f300 	mul.w	r3, r3, r0
 80009e8:	bfb8      	it	lt
 80009ea:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 80009ee:	2900      	cmp	r1, #0
 80009f0:	bfb8      	it	lt
 80009f2:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 80009f6:	129b      	asrs	r3, r3, #10
 80009f8:	6029      	str	r1, [r5, #0]
 80009fa:	6023      	str	r3, [r4, #0]
 80009fc:	b011      	add	sp, #68	; 0x44
 80009fe:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a00:	1ad0      	subs	r0, r2, r3
 8000a02:	4249      	negs	r1, r1
 8000a04:	4413      	add	r3, r2
 8000a06:	e7a6      	b.n	8000956 <cord_atan+0x46>
 8000a08:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 8000a0c:	1bc9      	subs	r1, r1, r7
 8000a0e:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8000a12:	e7a9      	b.n	8000968 <cord_atan+0x58>
 8000a14:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8000a18:	1bc9      	subs	r1, r1, r7
 8000a1a:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 8000a1e:	e7ac      	b.n	800097a <cord_atan+0x6a>
 8000a20:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8000a24:	1bc9      	subs	r1, r1, r7
 8000a26:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 8000a2a:	e7af      	b.n	800098c <cord_atan+0x7c>
 8000a2c:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8000a30:	1bc9      	subs	r1, r1, r7
 8000a32:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8000a36:	e7b2      	b.n	800099e <cord_atan+0x8e>
 8000a38:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 8000a3c:	1bc9      	subs	r1, r1, r7
 8000a3e:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8000a42:	e7b5      	b.n	80009b0 <cord_atan+0xa0>
 8000a44:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8000a48:	1bc9      	subs	r1, r1, r7
 8000a4a:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8000a4e:	e7b8      	b.n	80009c2 <cord_atan+0xb2>
 8000a50:	461a      	mov	r2, r3
 8000a52:	e7c1      	b.n	80009d8 <cord_atan+0xc8>
 8000a54:	4610      	mov	r0, r2
 8000a56:	2201      	movs	r2, #1
 8000a58:	e7be      	b.n	80009d8 <cord_atan+0xc8>
 8000a5a:	2202      	movs	r2, #2
 8000a5c:	e7bc      	b.n	80009d8 <cord_atan+0xc8>
 8000a5e:	4610      	mov	r0, r2
 8000a60:	2203      	movs	r2, #3
 8000a62:	e7b9      	b.n	80009d8 <cord_atan+0xc8>
 8000a64:	2204      	movs	r2, #4
 8000a66:	e7b7      	b.n	80009d8 <cord_atan+0xc8>
 8000a68:	4610      	mov	r0, r2
 8000a6a:	2205      	movs	r2, #5
 8000a6c:	e7b4      	b.n	80009d8 <cord_atan+0xc8>
 8000a6e:	2206      	movs	r2, #6
 8000a70:	e7b2      	b.n	80009d8 <cord_atan+0xc8>
 8000a72:	bf00      	nop
 8000a74:	08001808 	.word	0x08001808

08000a78 <sinpwm>:
 8000a78:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000a7a:	b091      	sub	sp, #68	; 0x44
 8000a7c:	46ee      	mov	lr, sp
 8000a7e:	468c      	mov	ip, r1
 8000a80:	4e6e      	ldr	r6, [pc, #440]	; (8000c3c <sinpwm+0x1c4>)
 8000a82:	4604      	mov	r4, r0
 8000a84:	4615      	mov	r5, r2
 8000a86:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000a88:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8000a8c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000a90:	af08      	add	r7, sp, #32
 8000a92:	3610      	adds	r6, #16
 8000a94:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 8000a98:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000a9a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 8000a9c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000aa0:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8000aa4:	f8dc 6000 	ldr.w	r6, [ip]
 8000aa8:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8000aac:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000ab0:	2b00      	cmp	r3, #0
 8000ab2:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 8000ab6:	9900      	ldr	r1, [sp, #0]
 8000ab8:	f340 8087 	ble.w	8000bca <sinpwm+0x152>
 8000abc:	18d0      	adds	r0, r2, r3
 8000abe:	1a9b      	subs	r3, r3, r2
 8000ac0:	2b00      	cmp	r3, #0
 8000ac2:	f000 80aa 	beq.w	8000c1a <sinpwm+0x1a2>
 8000ac6:	9f01      	ldr	r7, [sp, #4]
 8000ac8:	f340 8083 	ble.w	8000bd2 <sinpwm+0x15a>
 8000acc:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8000ad0:	4439      	add	r1, r7
 8000ad2:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8000ad6:	2b00      	cmp	r3, #0
 8000ad8:	f000 80a1 	beq.w	8000c1e <sinpwm+0x1a6>
 8000adc:	9f02      	ldr	r7, [sp, #8]
 8000ade:	dd7e      	ble.n	8000bde <sinpwm+0x166>
 8000ae0:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8000ae4:	4439      	add	r1, r7
 8000ae6:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 8000aea:	2b00      	cmp	r3, #0
 8000aec:	f000 809a 	beq.w	8000c24 <sinpwm+0x1ac>
 8000af0:	9f03      	ldr	r7, [sp, #12]
 8000af2:	dd7a      	ble.n	8000bea <sinpwm+0x172>
 8000af4:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 8000af8:	4439      	add	r1, r7
 8000afa:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 8000afe:	2b00      	cmp	r3, #0
 8000b00:	f000 8092 	beq.w	8000c28 <sinpwm+0x1b0>
 8000b04:	9f04      	ldr	r7, [sp, #16]
 8000b06:	dd76      	ble.n	8000bf6 <sinpwm+0x17e>
 8000b08:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8000b0c:	4439      	add	r1, r7
 8000b0e:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8000b12:	2b00      	cmp	r3, #0
 8000b14:	f000 808b 	beq.w	8000c2e <sinpwm+0x1b6>
 8000b18:	9f05      	ldr	r7, [sp, #20]
 8000b1a:	dd72      	ble.n	8000c02 <sinpwm+0x18a>
 8000b1c:	eb00 1263 	add.w	r2, r0, r3, asr #5
 8000b20:	4439      	add	r1, r7
 8000b22:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8000b26:	2b00      	cmp	r3, #0
 8000b28:	f000 8083 	beq.w	8000c32 <sinpwm+0x1ba>
 8000b2c:	9f06      	ldr	r7, [sp, #24]
 8000b2e:	dd6e      	ble.n	8000c0e <sinpwm+0x196>
 8000b30:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 8000b34:	4439      	add	r1, r7
 8000b36:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 8000b3a:	2b00      	cmp	r3, #0
 8000b3c:	d07c      	beq.n	8000c38 <sinpwm+0x1c0>
 8000b3e:	9a07      	ldr	r2, [sp, #28]
 8000b40:	bfc7      	ittee	gt
 8000b42:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 8000b46:	1889      	addgt	r1, r1, r2
 8000b48:	1a89      	suble	r1, r1, r2
 8000b4a:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 8000b4e:	2207      	movs	r2, #7
 8000b50:	ab10      	add	r3, sp, #64	; 0x40
 8000b52:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8000b56:	f852 3c20 	ldr.w	r3, [r2, #-32]
 8000b5a:	2e00      	cmp	r6, #0
 8000b5c:	fb03 f300 	mul.w	r3, r3, r0
 8000b60:	bfb8      	it	lt
 8000b62:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 8000b66:	2900      	cmp	r1, #0
 8000b68:	bfb8      	it	lt
 8000b6a:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 8000b6e:	151b      	asrs	r3, r3, #20
 8000b70:	440d      	add	r5, r1
 8000b72:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 8000b76:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000b7a:	dd22      	ble.n	8000bc2 <sinpwm+0x14a>
 8000b7c:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 8000c44 <sinpwm+0x1cc>
 8000b80:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 8000b84:	2001      	movs	r0, #1
 8000b86:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
 8000b8a:	4f2d      	ldr	r7, [pc, #180]	; (8000c40 <sinpwm+0x1c8>)
 8000b8c:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
 8000b90:	3602      	adds	r6, #2
 8000b92:	f3ce 0e09 	ubfx	lr, lr, #0, #10
 8000b96:	f3c6 0609 	ubfx	r6, r6, #0, #10
 8000b9a:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
 8000b9e:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
 8000ba2:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
 8000ba6:	fb06 f50c 	mul.w	r5, r6, ip
 8000baa:	fb01 f10c 	mul.w	r1, r1, ip
 8000bae:	fb02 f303 	mul.w	r3, r2, r3
 8000bb2:	12ad      	asrs	r5, r5, #10
 8000bb4:	128a      	asrs	r2, r1, #10
 8000bb6:	129b      	asrs	r3, r3, #10
 8000bb8:	60a5      	str	r5, [r4, #8]
 8000bba:	6062      	str	r2, [r4, #4]
 8000bbc:	6023      	str	r3, [r4, #0]
 8000bbe:	b011      	add	sp, #68	; 0x44
 8000bc0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000bc2:	f1c3 0c00 	rsb	ip, r3, #0
 8000bc6:	2000      	movs	r0, #0
 8000bc8:	e7dd      	b.n	8000b86 <sinpwm+0x10e>
 8000bca:	1ad0      	subs	r0, r2, r3
 8000bcc:	4249      	negs	r1, r1
 8000bce:	4413      	add	r3, r2
 8000bd0:	e776      	b.n	8000ac0 <sinpwm+0x48>
 8000bd2:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 8000bd6:	1bc9      	subs	r1, r1, r7
 8000bd8:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8000bdc:	e77b      	b.n	8000ad6 <sinpwm+0x5e>
 8000bde:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8000be2:	1bc9      	subs	r1, r1, r7
 8000be4:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 8000be8:	e77f      	b.n	8000aea <sinpwm+0x72>
 8000bea:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8000bee:	1bc9      	subs	r1, r1, r7
 8000bf0:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 8000bf4:	e783      	b.n	8000afe <sinpwm+0x86>
 8000bf6:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8000bfa:	1bc9      	subs	r1, r1, r7
 8000bfc:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8000c00:	e787      	b.n	8000b12 <sinpwm+0x9a>
 8000c02:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 8000c06:	1bc9      	subs	r1, r1, r7
 8000c08:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8000c0c:	e78b      	b.n	8000b26 <sinpwm+0xae>
 8000c0e:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8000c12:	1bc9      	subs	r1, r1, r7
 8000c14:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8000c18:	e78f      	b.n	8000b3a <sinpwm+0xc2>
 8000c1a:	461a      	mov	r2, r3
 8000c1c:	e798      	b.n	8000b50 <sinpwm+0xd8>
 8000c1e:	4610      	mov	r0, r2
 8000c20:	2201      	movs	r2, #1
 8000c22:	e795      	b.n	8000b50 <sinpwm+0xd8>
 8000c24:	2202      	movs	r2, #2
 8000c26:	e793      	b.n	8000b50 <sinpwm+0xd8>
 8000c28:	4610      	mov	r0, r2
 8000c2a:	2203      	movs	r2, #3
 8000c2c:	e790      	b.n	8000b50 <sinpwm+0xd8>
 8000c2e:	2204      	movs	r2, #4
 8000c30:	e78e      	b.n	8000b50 <sinpwm+0xd8>
 8000c32:	4610      	mov	r0, r2
 8000c34:	2205      	movs	r2, #5
 8000c36:	e78b      	b.n	8000b50 <sinpwm+0xd8>
 8000c38:	2206      	movs	r2, #6
 8000c3a:	e789      	b.n	8000b50 <sinpwm+0xd8>
 8000c3c:	08001808 	.word	0x08001808
 8000c40:	08001848 	.word	0x08001848
 8000c44:	fffffe0c 	.word	0xfffffe0c

08000c48 <svpwm>:
 8000c48:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c4a:	b091      	sub	sp, #68	; 0x44
 8000c4c:	46ee      	mov	lr, sp
 8000c4e:	468c      	mov	ip, r1
 8000c50:	4eb8      	ldr	r6, [pc, #736]	; (8000f34 <svpwm+0x2ec>)
 8000c52:	4604      	mov	r4, r0
 8000c54:	4615      	mov	r5, r2
 8000c56:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000c58:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8000c5c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000c60:	af08      	add	r7, sp, #32
 8000c62:	3610      	adds	r6, #16
 8000c64:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 8000c68:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8000c6a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
 8000c6c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 8000c70:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8000c74:	f8dc 6000 	ldr.w	r6, [ip]
 8000c78:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8000c7c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
 8000c80:	2b00      	cmp	r3, #0
 8000c82:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
 8000c86:	9900      	ldr	r1, [sp, #0]
 8000c88:	dd6f      	ble.n	8000d6a <svpwm+0x122>
 8000c8a:	18d0      	adds	r0, r2, r3
 8000c8c:	1a9b      	subs	r3, r3, r2
 8000c8e:	2b00      	cmp	r3, #0
 8000c90:	f000 813f 	beq.w	8000f12 <svpwm+0x2ca>
 8000c94:	9f01      	ldr	r7, [sp, #4]
 8000c96:	dd6c      	ble.n	8000d72 <svpwm+0x12a>
 8000c98:	eb00 0263 	add.w	r2, r0, r3, asr #1
 8000c9c:	4439      	add	r1, r7
 8000c9e:	eba3 0360 	sub.w	r3, r3, r0, asr #1
 8000ca2:	2b00      	cmp	r3, #0
 8000ca4:	f000 8137 	beq.w	8000f16 <svpwm+0x2ce>
 8000ca8:	9f02      	ldr	r7, [sp, #8]
 8000caa:	dd68      	ble.n	8000d7e <svpwm+0x136>
 8000cac:	eb02 00a3 	add.w	r0, r2, r3, asr #2
 8000cb0:	4439      	add	r1, r7
 8000cb2:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
 8000cb6:	2b00      	cmp	r3, #0
 8000cb8:	f000 8130 	beq.w	8000f1c <svpwm+0x2d4>
 8000cbc:	9f03      	ldr	r7, [sp, #12]
 8000cbe:	dd64      	ble.n	8000d8a <svpwm+0x142>
 8000cc0:	eb00 02e3 	add.w	r2, r0, r3, asr #3
 8000cc4:	4439      	add	r1, r7
 8000cc6:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
 8000cca:	2b00      	cmp	r3, #0
 8000ccc:	f000 8128 	beq.w	8000f20 <svpwm+0x2d8>
 8000cd0:	9f04      	ldr	r7, [sp, #16]
 8000cd2:	dd60      	ble.n	8000d96 <svpwm+0x14e>
 8000cd4:	eb02 1023 	add.w	r0, r2, r3, asr #4
 8000cd8:	4439      	add	r1, r7
 8000cda:	eba3 1322 	sub.w	r3, r3, r2, asr #4
 8000cde:	2b00      	cmp	r3, #0
 8000ce0:	f000 8121 	beq.w	8000f26 <svpwm+0x2de>
 8000ce4:	9f05      	ldr	r7, [sp, #20]
 8000ce6:	dd5c      	ble.n	8000da2 <svpwm+0x15a>
 8000ce8:	eb00 1263 	add.w	r2, r0, r3, asr #5
 8000cec:	4439      	add	r1, r7
 8000cee:	eba3 1360 	sub.w	r3, r3, r0, asr #5
 8000cf2:	2b00      	cmp	r3, #0
 8000cf4:	f000 8119 	beq.w	8000f2a <svpwm+0x2e2>
 8000cf8:	9f06      	ldr	r7, [sp, #24]
 8000cfa:	dd58      	ble.n	8000dae <svpwm+0x166>
 8000cfc:	eb02 10a3 	add.w	r0, r2, r3, asr #6
 8000d00:	4439      	add	r1, r7
 8000d02:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
 8000d06:	2b00      	cmp	r3, #0
 8000d08:	f000 8112 	beq.w	8000f30 <svpwm+0x2e8>
 8000d0c:	9a07      	ldr	r2, [sp, #28]
 8000d0e:	bfc7      	ittee	gt
 8000d10:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
 8000d14:	1889      	addgt	r1, r1, r2
 8000d16:	1a89      	suble	r1, r1, r2
 8000d18:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
 8000d1c:	2207      	movs	r2, #7
 8000d1e:	ab10      	add	r3, sp, #64	; 0x40
 8000d20:	2e00      	cmp	r6, #0
 8000d22:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8000d26:	bfb8      	it	lt
 8000d28:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
 8000d2c:	f852 3c20 	ldr.w	r3, [r2, #-32]
 8000d30:	2900      	cmp	r1, #0
 8000d32:	fb03 f300 	mul.w	r3, r3, r0
 8000d36:	bfb8      	it	lt
 8000d38:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
 8000d3c:	440d      	add	r5, r1
 8000d3e:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000d42:	eb05 0245 	add.w	r2, r5, r5, lsl #1
 8000d46:	151b      	asrs	r3, r3, #20
 8000d48:	1252      	asrs	r2, r2, #9
 8000d4a:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 8000d4e:	f102 32ff 	add.w	r2, r2, #4294967295
 8000d52:	bfc6      	itte	gt
 8000d54:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
 8000d58:	2001      	movgt	r0, #1
 8000d5a:	2000      	movle	r0, #0
 8000d5c:	2a04      	cmp	r2, #4
 8000d5e:	d848      	bhi.n	8000df2 <svpwm+0x1aa>
 8000d60:	e8df f002 	tbb	[pc, r2]
 8000d64:	2b9e8164 	.word	0x2b9e8164
 8000d68:	bb          	.byte	0xbb
 8000d69:	00          	.byte	0x00
 8000d6a:	1ad0      	subs	r0, r2, r3
 8000d6c:	4249      	negs	r1, r1
 8000d6e:	4413      	add	r3, r2
 8000d70:	e78d      	b.n	8000c8e <svpwm+0x46>
 8000d72:	eba0 0263 	sub.w	r2, r0, r3, asr #1
 8000d76:	1bc9      	subs	r1, r1, r7
 8000d78:	eb03 0360 	add.w	r3, r3, r0, asr #1
 8000d7c:	e791      	b.n	8000ca2 <svpwm+0x5a>
 8000d7e:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
 8000d82:	1bc9      	subs	r1, r1, r7
 8000d84:	eb03 03a2 	add.w	r3, r3, r2, asr #2
 8000d88:	e795      	b.n	8000cb6 <svpwm+0x6e>
 8000d8a:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
 8000d8e:	1bc9      	subs	r1, r1, r7
 8000d90:	eb03 03e0 	add.w	r3, r3, r0, asr #3
 8000d94:	e799      	b.n	8000cca <svpwm+0x82>
 8000d96:	eba2 1023 	sub.w	r0, r2, r3, asr #4
 8000d9a:	1bc9      	subs	r1, r1, r7
 8000d9c:	eb03 1322 	add.w	r3, r3, r2, asr #4
 8000da0:	e79d      	b.n	8000cde <svpwm+0x96>
 8000da2:	eba0 1263 	sub.w	r2, r0, r3, asr #5
 8000da6:	1bc9      	subs	r1, r1, r7
 8000da8:	eb03 1360 	add.w	r3, r3, r0, asr #5
 8000dac:	e7a1      	b.n	8000cf2 <svpwm+0xaa>
 8000dae:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
 8000db2:	1bc9      	subs	r1, r1, r7
 8000db4:	eb03 13a2 	add.w	r3, r3, r2, asr #6
 8000db8:	e7a5      	b.n	8000d06 <svpwm+0xbe>
 8000dba:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
 8000dbe:	4e5e      	ldr	r6, [pc, #376]	; (8000f38 <svpwm+0x2f0>)
 8000dc0:	3204      	adds	r2, #4
 8000dc2:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000dc6:	3556      	adds	r5, #86	; 0x56
 8000dc8:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000dcc:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000dd0:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000dd4:	fb01 f103 	mul.w	r1, r1, r3
 8000dd8:	fb02 f203 	mul.w	r2, r2, r3
 8000ddc:	1289      	asrs	r1, r1, #10
 8000dde:	1293      	asrs	r3, r2, #10
 8000de0:	424a      	negs	r2, r1
 8000de2:	1ad2      	subs	r2, r2, r3
 8000de4:	1a5d      	subs	r5, r3, r1
 8000de6:	440b      	add	r3, r1
 8000de8:	6062      	str	r2, [r4, #4]
 8000dea:	6025      	str	r5, [r4, #0]
 8000dec:	60a3      	str	r3, [r4, #8]
 8000dee:	b011      	add	sp, #68	; 0x44
 8000df0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000df2:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
 8000df6:	4e50      	ldr	r6, [pc, #320]	; (8000f38 <svpwm+0x2f0>)
 8000df8:	3202      	adds	r2, #2
 8000dfa:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000dfe:	f505 7540 	add.w	r5, r5, #768	; 0x300
 8000e02:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000e06:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000e0a:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000e0e:	fb01 f103 	mul.w	r1, r1, r3
 8000e12:	fb02 f203 	mul.w	r2, r2, r3
 8000e16:	1289      	asrs	r1, r1, #10
 8000e18:	1293      	asrs	r3, r2, #10
 8000e1a:	424a      	negs	r2, r1
 8000e1c:	1ad2      	subs	r2, r2, r3
 8000e1e:	18cd      	adds	r5, r1, r3
 8000e20:	1a5b      	subs	r3, r3, r1
 8000e22:	60a2      	str	r2, [r4, #8]
 8000e24:	6025      	str	r5, [r4, #0]
 8000e26:	6063      	str	r3, [r4, #4]
 8000e28:	b011      	add	sp, #68	; 0x44
 8000e2a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000e2c:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
 8000e30:	4e41      	ldr	r6, [pc, #260]	; (8000f38 <svpwm+0x2f0>)
 8000e32:	3204      	adds	r2, #4
 8000e34:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000e38:	f205 2556 	addw	r5, r5, #598	; 0x256
 8000e3c:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000e40:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000e44:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000e48:	fb01 f103 	mul.w	r1, r1, r3
 8000e4c:	fb02 f203 	mul.w	r2, r2, r3
 8000e50:	1289      	asrs	r1, r1, #10
 8000e52:	1293      	asrs	r3, r2, #10
 8000e54:	424a      	negs	r2, r1
 8000e56:	1ad2      	subs	r2, r2, r3
 8000e58:	1acd      	subs	r5, r1, r3
 8000e5a:	440b      	add	r3, r1
 8000e5c:	60a2      	str	r2, [r4, #8]
 8000e5e:	6025      	str	r5, [r4, #0]
 8000e60:	6063      	str	r3, [r4, #4]
 8000e62:	b011      	add	sp, #68	; 0x44
 8000e64:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000e66:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
 8000e6a:	4e33      	ldr	r6, [pc, #204]	; (8000f38 <svpwm+0x2f0>)
 8000e6c:	320f      	adds	r2, #15
 8000e6e:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000e72:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
 8000e76:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000e7a:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000e7e:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000e82:	fb01 f103 	mul.w	r1, r1, r3
 8000e86:	fb02 f203 	mul.w	r2, r2, r3
 8000e8a:	1289      	asrs	r1, r1, #10
 8000e8c:	1293      	asrs	r3, r2, #10
 8000e8e:	424a      	negs	r2, r1
 8000e90:	1ad2      	subs	r2, r2, r3
 8000e92:	18cd      	adds	r5, r1, r3
 8000e94:	1a5b      	subs	r3, r3, r1
 8000e96:	e884 0024 	stmia.w	r4, {r2, r5}
 8000e9a:	60a3      	str	r3, [r4, #8]
 8000e9c:	b011      	add	sp, #68	; 0x44
 8000e9e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000ea0:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
 8000ea4:	4e24      	ldr	r6, [pc, #144]	; (8000f38 <svpwm+0x2f0>)
 8000ea6:	320a      	adds	r2, #10
 8000ea8:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000eac:	f505 7580 	add.w	r5, r5, #256	; 0x100
 8000eb0:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
 8000eb4:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000eb8:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8000ebc:	fb01 f103 	mul.w	r1, r1, r3
 8000ec0:	fb02 f203 	mul.w	r2, r2, r3
 8000ec4:	1289      	asrs	r1, r1, #10
 8000ec6:	1293      	asrs	r3, r2, #10
 8000ec8:	424a      	negs	r2, r1
 8000eca:	1ad2      	subs	r2, r2, r3
 8000ecc:	1acd      	subs	r5, r1, r3
 8000ece:	440b      	add	r3, r1
 8000ed0:	e884 0024 	stmia.w	r4, {r2, r5}
 8000ed4:	60a3      	str	r3, [r4, #8]
 8000ed6:	b011      	add	sp, #68	; 0x44
 8000ed8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000eda:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
 8000ede:	4916      	ldr	r1, [pc, #88]	; (8000f38 <svpwm+0x2f0>)
 8000ee0:	320f      	adds	r2, #15
 8000ee2:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000ee6:	3d55      	subs	r5, #85	; 0x55
 8000ee8:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8000eec:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8000ef0:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
 8000ef4:	fb02 f203 	mul.w	r2, r2, r3
 8000ef8:	fb01 f303 	mul.w	r3, r1, r3
 8000efc:	1292      	asrs	r2, r2, #10
 8000efe:	129b      	asrs	r3, r3, #10
 8000f00:	4251      	negs	r1, r2
 8000f02:	18d5      	adds	r5, r2, r3
 8000f04:	1ac9      	subs	r1, r1, r3
 8000f06:	1ad2      	subs	r2, r2, r3
 8000f08:	6061      	str	r1, [r4, #4]
 8000f0a:	6025      	str	r5, [r4, #0]
 8000f0c:	60a2      	str	r2, [r4, #8]
 8000f0e:	b011      	add	sp, #68	; 0x44
 8000f10:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000f12:	461a      	mov	r2, r3
 8000f14:	e703      	b.n	8000d1e <svpwm+0xd6>
 8000f16:	4610      	mov	r0, r2
 8000f18:	2201      	movs	r2, #1
 8000f1a:	e700      	b.n	8000d1e <svpwm+0xd6>
 8000f1c:	2202      	movs	r2, #2
 8000f1e:	e6fe      	b.n	8000d1e <svpwm+0xd6>
 8000f20:	4610      	mov	r0, r2
 8000f22:	2203      	movs	r2, #3
 8000f24:	e6fb      	b.n	8000d1e <svpwm+0xd6>
 8000f26:	2204      	movs	r2, #4
 8000f28:	e6f9      	b.n	8000d1e <svpwm+0xd6>
 8000f2a:	4610      	mov	r0, r2
 8000f2c:	2205      	movs	r2, #5
 8000f2e:	e6f6      	b.n	8000d1e <svpwm+0xd6>
 8000f30:	2206      	movs	r2, #6
 8000f32:	e6f4      	b.n	8000d1e <svpwm+0xd6>
 8000f34:	08001808 	.word	0x08001808
 8000f38:	08001848 	.word	0x08001848

08000f3c <encoder_init>:
 8000f3c:	4b01      	ldr	r3, [pc, #4]	; (8000f44 <encoder_init+0x8>)
 8000f3e:	6018      	str	r0, [r3, #0]
 8000f40:	6058      	str	r0, [r3, #4]
 8000f42:	4770      	bx	lr
 8000f44:	20000260 	.word	0x20000260

08000f48 <get_speed>:
 8000f48:	4a0e      	ldr	r2, [pc, #56]	; (8000f84 <get_speed+0x3c>)
 8000f4a:	b430      	push	{r4, r5}
 8000f4c:	6853      	ldr	r3, [r2, #4]
 8000f4e:	6815      	ldr	r5, [r2, #0]
 8000f50:	1ac3      	subs	r3, r0, r3
 8000f52:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
 8000f56:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
 8000f5a:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
 8000f5e:	e882 0021 	stmia.w	r2, {r0, r5}
 8000f62:	dd05      	ble.n	8000f70 <get_speed+0x28>
 8000f64:	2b00      	cmp	r3, #0
 8000f66:	bfb4      	ite	lt
 8000f68:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
 8000f6c:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
 8000f70:	4a05      	ldr	r2, [pc, #20]	; (8000f88 <get_speed+0x40>)
 8000f72:	1058      	asrs	r0, r3, #1
 8000f74:	fb02 f000 	mul.w	r0, r2, r0
 8000f78:	bc30      	pop	{r4, r5}
 8000f7a:	680a      	ldr	r2, [r1, #0]
 8000f7c:	1300      	asrs	r0, r0, #12
 8000f7e:	4413      	add	r3, r2
 8000f80:	600b      	str	r3, [r1, #0]
 8000f82:	4770      	bx	lr
 8000f84:	20000260 	.word	0x20000260
 8000f88:	0002ae7c 	.word	0x0002ae7c

08000f8c <mfilter>:
 8000f8c:	4908      	ldr	r1, [pc, #32]	; (8000fb0 <mfilter+0x24>)
 8000f8e:	b430      	push	{r4, r5}
 8000f90:	688a      	ldr	r2, [r1, #8]
 8000f92:	68cb      	ldr	r3, [r1, #12]
 8000f94:	3201      	adds	r2, #1
 8000f96:	f3c2 0209 	ubfx	r2, r2, #0, #10
 8000f9a:	eb01 0482 	add.w	r4, r1, r2, lsl #2
 8000f9e:	6925      	ldr	r5, [r4, #16]
 8000fa0:	608a      	str	r2, [r1, #8]
 8000fa2:	1b5b      	subs	r3, r3, r5
 8000fa4:	4403      	add	r3, r0
 8000fa6:	6120      	str	r0, [r4, #16]
 8000fa8:	60cb      	str	r3, [r1, #12]
 8000faa:	4618      	mov	r0, r3
 8000fac:	bc30      	pop	{r4, r5}
 8000fae:	4770      	bx	lr
 8000fb0:	20000260 	.word	0x20000260

08000fb4 <rfilter1>:
 8000fb4:	b470      	push	{r4, r5, r6}
 8000fb6:	f240 74c6 	movw	r4, #1990	; 0x7c6
 8000fba:	4b12      	ldr	r3, [pc, #72]	; (8001004 <rfilter1+0x50>)
 8000fbc:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
 8000fc0:	f853 6ce8 	ldr.w	r6, [r3, #-232]
 8000fc4:	f853 1ce0 	ldr.w	r1, [r3, #-224]
 8000fc8:	fb04 f406 	mul.w	r4, r4, r6
 8000fcc:	fb02 4201 	mla	r2, r2, r1, r4
 8000fd0:	490d      	ldr	r1, [pc, #52]	; (8001008 <rfilter1+0x54>)
 8000fd2:	f853 5ce4 	ldr.w	r5, [r3, #-228]
 8000fd6:	fb01 2200 	mla	r2, r1, r0, r2
 8000fda:	4c0c      	ldr	r4, [pc, #48]	; (800100c <rfilter1+0x58>)
 8000fdc:	f853 1cdc 	ldr.w	r1, [r3, #-220]
 8000fe0:	fb04 2205 	mla	r2, r4, r5, r2
 8000fe4:	4c0a      	ldr	r4, [pc, #40]	; (8001010 <rfilter1+0x5c>)
 8000fe6:	f843 6ce0 	str.w	r6, [r3, #-224]
 8000fea:	fb04 2201 	mla	r2, r4, r1, r2
 8000fee:	1291      	asrs	r1, r2, #10
 8000ff0:	f843 0ce4 	str.w	r0, [r3, #-228]
 8000ff4:	f843 5cdc 	str.w	r5, [r3, #-220]
 8000ff8:	1490      	asrs	r0, r2, #18
 8000ffa:	f843 1ce8 	str.w	r1, [r3, #-232]
 8000ffe:	bc70      	pop	{r4, r5, r6}
 8001000:	4770      	bx	lr
 8001002:	bf00      	nop
 8001004:	20001358 	.word	0x20001358
 8001008:	0003f0a4 	.word	0x0003f0a4
 800100c:	fff83a2e 	.word	0xfff83a2e
 8001010:	0003dc29 	.word	0x0003dc29

08001014 <rfilter2>:
 8001014:	b470      	push	{r4, r5, r6}
 8001016:	f240 748a 	movw	r4, #1930	; 0x78a
 800101a:	4b11      	ldr	r3, [pc, #68]	; (8001060 <rfilter2+0x4c>)
 800101c:	4a11      	ldr	r2, [pc, #68]	; (8001064 <rfilter2+0x50>)
 800101e:	f853 6cd8 	ldr.w	r6, [r3, #-216]
 8001022:	f853 1cd0 	ldr.w	r1, [r3, #-208]
 8001026:	fb04 f406 	mul.w	r4, r4, r6
 800102a:	fb02 4201 	mla	r2, r2, r1, r4
 800102e:	490e      	ldr	r1, [pc, #56]	; (8001068 <rfilter2+0x54>)
 8001030:	f853 5cd4 	ldr.w	r5, [r3, #-212]
 8001034:	fb01 2200 	mla	r2, r1, r0, r2
 8001038:	4c0c      	ldr	r4, [pc, #48]	; (800106c <rfilter2+0x58>)
 800103a:	f853 1ccc 	ldr.w	r1, [r3, #-204]
 800103e:	fb04 2205 	mla	r2, r4, r5, r2
 8001042:	4c0b      	ldr	r4, [pc, #44]	; (8001070 <rfilter2+0x5c>)
 8001044:	f843 6cd0 	str.w	r6, [r3, #-208]
 8001048:	fb04 2201 	mla	r2, r4, r1, r2
 800104c:	1291      	asrs	r1, r2, #10
 800104e:	f843 0cd4 	str.w	r0, [r3, #-212]
 8001052:	f843 5ccc 	str.w	r5, [r3, #-204]
 8001056:	1490      	asrs	r0, r2, #18
 8001058:	f843 1cd8 	str.w	r1, [r3, #-216]
 800105c:	bc70      	pop	{r4, r5, r6}
 800105e:	4770      	bx	lr
 8001060:	20001358 	.word	0x20001358
 8001064:	fffffc66 	.word	0xfffffc66
 8001068:	0003e3d7 	.word	0x0003e3d7
 800106c:	fff8767b 	.word	0xfff8767b
 8001070:	0003b5c3 	.word	0x0003b5c3

08001074 <adc_init>:
 8001074:	b480      	push	{r7}
 8001076:	af00      	add	r7, sp, #0
 8001078:	4a10      	ldr	r2, [pc, #64]	; (80010bc <adc_init+0x48>)
 800107a:	4b10      	ldr	r3, [pc, #64]	; (80010bc <adc_init+0x48>)
 800107c:	69db      	ldr	r3, [r3, #28]
 800107e:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8001082:	61d3      	str	r3, [r2, #28]
 8001084:	4b0d      	ldr	r3, [pc, #52]	; (80010bc <adc_init+0x48>)
 8001086:	f242 0220 	movw	r2, #8224	; 0x2020
 800108a:	615a      	str	r2, [r3, #20]
 800108c:	4b0c      	ldr	r3, [pc, #48]	; (80010c0 <adc_init+0x4c>)
 800108e:	2200      	movs	r2, #0
 8001090:	601a      	str	r2, [r3, #0]
 8001092:	4a0b      	ldr	r2, [pc, #44]	; (80010c0 <adc_init+0x4c>)
 8001094:	4b0a      	ldr	r3, [pc, #40]	; (80010c0 <adc_init+0x4c>)
 8001096:	681b      	ldr	r3, [r3, #0]
 8001098:	f443 7301 	orr.w	r3, r3, #516	; 0x204
 800109c:	f043 0301 	orr.w	r3, r3, #1
 80010a0:	6013      	str	r3, [r2, #0]
 80010a2:	4a07      	ldr	r2, [pc, #28]	; (80010c0 <adc_init+0x4c>)
 80010a4:	4b06      	ldr	r3, [pc, #24]	; (80010c0 <adc_init+0x4c>)
 80010a6:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80010a8:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
 80010ac:	6293      	str	r3, [r2, #40]	; 0x28
 80010ae:	4b04      	ldr	r3, [pc, #16]	; (80010c0 <adc_init+0x4c>)
 80010b0:	2210      	movs	r2, #16
 80010b2:	621a      	str	r2, [r3, #32]
 80010b4:	bf00      	nop
 80010b6:	46bd      	mov	sp, r7
 80010b8:	bc80      	pop	{r7}
 80010ba:	4770      	bx	lr
 80010bc:	40020000 	.word	0x40020000
 80010c0:	40088000 	.word	0x40088000

080010c4 <dma_init>:
 80010c4:	b480      	push	{r7}
 80010c6:	af00      	add	r7, sp, #0
 80010c8:	4a17      	ldr	r2, [pc, #92]	; (8001128 <dma_init+0x64>)
 80010ca:	4b17      	ldr	r3, [pc, #92]	; (8001128 <dma_init+0x64>)
 80010cc:	69db      	ldr	r3, [r3, #28]
 80010ce:	f043 0320 	orr.w	r3, r3, #32
 80010d2:	61d3      	str	r3, [r2, #28]
 80010d4:	4b15      	ldr	r3, [pc, #84]	; (800112c <dma_init+0x68>)
 80010d6:	4a16      	ldr	r2, [pc, #88]	; (8001130 <dma_init+0x6c>)
 80010d8:	609a      	str	r2, [r3, #8]
 80010da:	4b14      	ldr	r3, [pc, #80]	; (800112c <dma_init+0x68>)
 80010dc:	f04f 32ff 	mov.w	r2, #4294967295
 80010e0:	62da      	str	r2, [r3, #44]	; 0x2c
 80010e2:	4b12      	ldr	r3, [pc, #72]	; (800112c <dma_init+0x68>)
 80010e4:	f04f 32ff 	mov.w	r2, #4294967295
 80010e8:	621a      	str	r2, [r3, #32]
 80010ea:	4b10      	ldr	r3, [pc, #64]	; (800112c <dma_init+0x68>)
 80010ec:	f04f 32ff 	mov.w	r2, #4294967295
 80010f0:	635a      	str	r2, [r3, #52]	; 0x34
 80010f2:	4b0e      	ldr	r3, [pc, #56]	; (800112c <dma_init+0x68>)
 80010f4:	f44f 7280 	mov.w	r2, #256	; 0x100
 80010f8:	61da      	str	r2, [r3, #28]
 80010fa:	4b0c      	ldr	r3, [pc, #48]	; (800112c <dma_init+0x68>)
 80010fc:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001100:	625a      	str	r2, [r3, #36]	; 0x24
 8001102:	4b0a      	ldr	r3, [pc, #40]	; (800112c <dma_init+0x68>)
 8001104:	2201      	movs	r2, #1
 8001106:	605a      	str	r2, [r3, #4]
 8001108:	4b09      	ldr	r3, [pc, #36]	; (8001130 <dma_init+0x6c>)
 800110a:	4a0a      	ldr	r2, [pc, #40]	; (8001134 <dma_init+0x70>)
 800110c:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
 8001110:	4a09      	ldr	r2, [pc, #36]	; (8001138 <dma_init+0x74>)
 8001112:	4b07      	ldr	r3, [pc, #28]	; (8001130 <dma_init+0x6c>)
 8001114:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 8001118:	4b05      	ldr	r3, [pc, #20]	; (8001130 <dma_init+0x6c>)
 800111a:	4a08      	ldr	r2, [pc, #32]	; (800113c <dma_init+0x78>)
 800111c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001120:	bf00      	nop
 8001122:	46bd      	mov	sp, r7
 8001124:	bc80      	pop	{r7}
 8001126:	4770      	bx	lr
 8001128:	40020000 	.word	0x40020000
 800112c:	40028000 	.word	0x40028000
 8001130:	20000000 	.word	0x20000000
 8001134:	40088018 	.word	0x40088018
 8001138:	20000204 	.word	0x20000204
 800113c:	ae000011 	.word	0xae000011

08001140 <adc_dma_init>:
 8001140:	b580      	push	{r7, lr}
 8001142:	af00      	add	r7, sp, #0
 8001144:	f7ff ff96 	bl	8001074 <adc_init>
 8001148:	f7ff ffbc 	bl	80010c4 <dma_init>
 800114c:	bf00      	nop
 800114e:	bd80      	pop	{r7, pc}

08001150 <adc_dma_start>:
 8001150:	b480      	push	{r7}
 8001152:	af00      	add	r7, sp, #0
 8001154:	4a06      	ldr	r2, [pc, #24]	; (8001170 <adc_dma_start+0x20>)
 8001156:	4b06      	ldr	r3, [pc, #24]	; (8001170 <adc_dma_start+0x20>)
 8001158:	681b      	ldr	r3, [r3, #0]
 800115a:	f043 0308 	orr.w	r3, r3, #8
 800115e:	6013      	str	r3, [r2, #0]
 8001160:	4b04      	ldr	r3, [pc, #16]	; (8001174 <adc_dma_start+0x24>)
 8001162:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001166:	629a      	str	r2, [r3, #40]	; 0x28
 8001168:	bf00      	nop
 800116a:	46bd      	mov	sp, r7
 800116c:	bc80      	pop	{r7}
 800116e:	4770      	bx	lr
 8001170:	40088000 	.word	0x40088000
 8001174:	40028000 	.word	0x40028000

08001178 <adc_dma_wait>:
 8001178:	b480      	push	{r7}
 800117a:	af00      	add	r7, sp, #0
 800117c:	bf00      	nop
 800117e:	4b0a      	ldr	r3, [pc, #40]	; (80011a8 <adc_dma_wait+0x30>)
 8001180:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8001184:	f003 0307 	and.w	r3, r3, #7
 8001188:	2b00      	cmp	r3, #0
 800118a:	d1f8      	bne.n	800117e <adc_dma_wait+0x6>
 800118c:	4a07      	ldr	r2, [pc, #28]	; (80011ac <adc_dma_wait+0x34>)
 800118e:	4b07      	ldr	r3, [pc, #28]	; (80011ac <adc_dma_wait+0x34>)
 8001190:	681b      	ldr	r3, [r3, #0]
 8001192:	f023 0308 	bic.w	r3, r3, #8
 8001196:	6013      	str	r3, [r2, #0]
 8001198:	4b03      	ldr	r3, [pc, #12]	; (80011a8 <adc_dma_wait+0x30>)
 800119a:	4a05      	ldr	r2, [pc, #20]	; (80011b0 <adc_dma_wait+0x38>)
 800119c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80011a0:	bf00      	nop
 80011a2:	46bd      	mov	sp, r7
 80011a4:	bc80      	pop	{r7}
 80011a6:	4770      	bx	lr
 80011a8:	20000000 	.word	0x20000000
 80011ac:	40088000 	.word	0x40088000
 80011b0:	ae000011 	.word	0xae000011

080011b4 <NVIC_EnableIRQ>:
 80011b4:	b480      	push	{r7}
 80011b6:	b083      	sub	sp, #12
 80011b8:	af00      	add	r7, sp, #0
 80011ba:	4603      	mov	r3, r0
 80011bc:	71fb      	strb	r3, [r7, #7]
 80011be:	4908      	ldr	r1, [pc, #32]	; (80011e0 <NVIC_EnableIRQ+0x2c>)
 80011c0:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80011c4:	095b      	lsrs	r3, r3, #5
 80011c6:	79fa      	ldrb	r2, [r7, #7]
 80011c8:	f002 021f 	and.w	r2, r2, #31
 80011cc:	2001      	movs	r0, #1
 80011ce:	fa00 f202 	lsl.w	r2, r0, r2
 80011d2:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80011d6:	bf00      	nop
 80011d8:	370c      	adds	r7, #12
 80011da:	46bd      	mov	sp, r7
 80011dc:	bc80      	pop	{r7}
 80011de:	4770      	bx	lr
 80011e0:	e000e100 	.word	0xe000e100

080011e4 <PortConfig>:
 80011e4:	b480      	push	{r7}
 80011e6:	af00      	add	r7, sp, #0
 80011e8:	4a66      	ldr	r2, [pc, #408]	; (8001384 <PortConfig+0x1a0>)
 80011ea:	4b66      	ldr	r3, [pc, #408]	; (8001384 <PortConfig+0x1a0>)
 80011ec:	69db      	ldr	r3, [r3, #28]
 80011ee:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80011f2:	61d3      	str	r3, [r2, #28]
 80011f4:	4b64      	ldr	r3, [pc, #400]	; (8001388 <PortConfig+0x1a4>)
 80011f6:	2200      	movs	r2, #0
 80011f8:	609a      	str	r2, [r3, #8]
 80011fa:	4b63      	ldr	r3, [pc, #396]	; (8001388 <PortConfig+0x1a4>)
 80011fc:	2200      	movs	r2, #0
 80011fe:	601a      	str	r2, [r3, #0]
 8001200:	4a61      	ldr	r2, [pc, #388]	; (8001388 <PortConfig+0x1a4>)
 8001202:	4b61      	ldr	r3, [pc, #388]	; (8001388 <PortConfig+0x1a4>)
 8001204:	685b      	ldr	r3, [r3, #4]
 8001206:	f043 0301 	orr.w	r3, r3, #1
 800120a:	6053      	str	r3, [r2, #4]
 800120c:	4a5e      	ldr	r2, [pc, #376]	; (8001388 <PortConfig+0x1a4>)
 800120e:	4b5e      	ldr	r3, [pc, #376]	; (8001388 <PortConfig+0x1a4>)
 8001210:	68db      	ldr	r3, [r3, #12]
 8001212:	f043 0301 	orr.w	r3, r3, #1
 8001216:	60d3      	str	r3, [r2, #12]
 8001218:	4a5b      	ldr	r2, [pc, #364]	; (8001388 <PortConfig+0x1a4>)
 800121a:	4b5b      	ldr	r3, [pc, #364]	; (8001388 <PortConfig+0x1a4>)
 800121c:	699b      	ldr	r3, [r3, #24]
 800121e:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
 8001222:	6193      	str	r3, [r2, #24]
 8001224:	4a58      	ldr	r2, [pc, #352]	; (8001388 <PortConfig+0x1a4>)
 8001226:	4b58      	ldr	r3, [pc, #352]	; (8001388 <PortConfig+0x1a4>)
 8001228:	685b      	ldr	r3, [r3, #4]
 800122a:	f023 0308 	bic.w	r3, r3, #8
 800122e:	6053      	str	r3, [r2, #4]
 8001230:	4a55      	ldr	r2, [pc, #340]	; (8001388 <PortConfig+0x1a4>)
 8001232:	4b55      	ldr	r3, [pc, #340]	; (8001388 <PortConfig+0x1a4>)
 8001234:	68db      	ldr	r3, [r3, #12]
 8001236:	f043 0308 	orr.w	r3, r3, #8
 800123a:	60d3      	str	r3, [r2, #12]
 800123c:	4b52      	ldr	r3, [pc, #328]	; (8001388 <PortConfig+0x1a4>)
 800123e:	2280      	movs	r2, #128	; 0x80
 8001240:	609a      	str	r2, [r3, #8]
 8001242:	4a50      	ldr	r2, [pc, #320]	; (8001384 <PortConfig+0x1a0>)
 8001244:	4b4f      	ldr	r3, [pc, #316]	; (8001384 <PortConfig+0x1a0>)
 8001246:	69db      	ldr	r3, [r3, #28]
 8001248:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 800124c:	61d3      	str	r3, [r2, #28]
 800124e:	4a4f      	ldr	r2, [pc, #316]	; (800138c <PortConfig+0x1a8>)
 8001250:	4b4e      	ldr	r3, [pc, #312]	; (800138c <PortConfig+0x1a8>)
 8001252:	689b      	ldr	r3, [r3, #8]
 8001254:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
 8001258:	6093      	str	r3, [r2, #8]
 800125a:	4a4c      	ldr	r2, [pc, #304]	; (800138c <PortConfig+0x1a8>)
 800125c:	4b4b      	ldr	r3, [pc, #300]	; (800138c <PortConfig+0x1a8>)
 800125e:	689b      	ldr	r3, [r3, #8]
 8001260:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
 8001264:	6093      	str	r3, [r2, #8]
 8001266:	4a49      	ldr	r2, [pc, #292]	; (800138c <PortConfig+0x1a8>)
 8001268:	4b48      	ldr	r3, [pc, #288]	; (800138c <PortConfig+0x1a8>)
 800126a:	68db      	ldr	r3, [r3, #12]
 800126c:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
 8001270:	60d3      	str	r3, [r2, #12]
 8001272:	4a46      	ldr	r2, [pc, #280]	; (800138c <PortConfig+0x1a8>)
 8001274:	4b45      	ldr	r3, [pc, #276]	; (800138c <PortConfig+0x1a8>)
 8001276:	699b      	ldr	r3, [r3, #24]
 8001278:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
 800127c:	6193      	str	r3, [r2, #24]
 800127e:	4a43      	ldr	r2, [pc, #268]	; (800138c <PortConfig+0x1a8>)
 8001280:	4b42      	ldr	r3, [pc, #264]	; (800138c <PortConfig+0x1a8>)
 8001282:	685b      	ldr	r3, [r3, #4]
 8001284:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8001288:	6053      	str	r3, [r2, #4]
 800128a:	4a40      	ldr	r2, [pc, #256]	; (800138c <PortConfig+0x1a8>)
 800128c:	4b3f      	ldr	r3, [pc, #252]	; (800138c <PortConfig+0x1a8>)
 800128e:	685b      	ldr	r3, [r3, #4]
 8001290:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8001294:	6053      	str	r3, [r2, #4]
 8001296:	4a3d      	ldr	r2, [pc, #244]	; (800138c <PortConfig+0x1a8>)
 8001298:	4b3c      	ldr	r3, [pc, #240]	; (800138c <PortConfig+0x1a8>)
 800129a:	689b      	ldr	r3, [r3, #8]
 800129c:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
 80012a0:	6093      	str	r3, [r2, #8]
 80012a2:	4a3a      	ldr	r2, [pc, #232]	; (800138c <PortConfig+0x1a8>)
 80012a4:	4b39      	ldr	r3, [pc, #228]	; (800138c <PortConfig+0x1a8>)
 80012a6:	689b      	ldr	r3, [r3, #8]
 80012a8:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
 80012ac:	6093      	str	r3, [r2, #8]
 80012ae:	4a37      	ldr	r2, [pc, #220]	; (800138c <PortConfig+0x1a8>)
 80012b0:	4b36      	ldr	r3, [pc, #216]	; (800138c <PortConfig+0x1a8>)
 80012b2:	68db      	ldr	r3, [r3, #12]
 80012b4:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 80012b8:	60d3      	str	r3, [r2, #12]
 80012ba:	4a34      	ldr	r2, [pc, #208]	; (800138c <PortConfig+0x1a8>)
 80012bc:	4b33      	ldr	r3, [pc, #204]	; (800138c <PortConfig+0x1a8>)
 80012be:	699b      	ldr	r3, [r3, #24]
 80012c0:	f443 5370 	orr.w	r3, r3, #15360	; 0x3c00
 80012c4:	6193      	str	r3, [r2, #24]
 80012c6:	4a2f      	ldr	r2, [pc, #188]	; (8001384 <PortConfig+0x1a0>)
 80012c8:	4b2e      	ldr	r3, [pc, #184]	; (8001384 <PortConfig+0x1a0>)
 80012ca:	69db      	ldr	r3, [r3, #28]
 80012cc:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 80012d0:	61d3      	str	r3, [r2, #28]
 80012d2:	4b2f      	ldr	r3, [pc, #188]	; (8001390 <PortConfig+0x1ac>)
 80012d4:	4a2f      	ldr	r2, [pc, #188]	; (8001394 <PortConfig+0x1b0>)
 80012d6:	609a      	str	r2, [r3, #8]
 80012d8:	4b2d      	ldr	r3, [pc, #180]	; (8001390 <PortConfig+0x1ac>)
 80012da:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80012de:	60da      	str	r2, [r3, #12]
 80012e0:	4b2b      	ldr	r3, [pc, #172]	; (8001390 <PortConfig+0x1ac>)
 80012e2:	f04f 32ff 	mov.w	r2, #4294967295
 80012e6:	619a      	str	r2, [r3, #24]
 80012e8:	4b29      	ldr	r3, [pc, #164]	; (8001390 <PortConfig+0x1ac>)
 80012ea:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80012ee:	605a      	str	r2, [r3, #4]
 80012f0:	4a27      	ldr	r2, [pc, #156]	; (8001390 <PortConfig+0x1ac>)
 80012f2:	4b27      	ldr	r3, [pc, #156]	; (8001390 <PortConfig+0x1ac>)
 80012f4:	681b      	ldr	r3, [r3, #0]
 80012f6:	f023 0303 	bic.w	r3, r3, #3
 80012fa:	6013      	str	r3, [r2, #0]
 80012fc:	4a24      	ldr	r2, [pc, #144]	; (8001390 <PortConfig+0x1ac>)
 80012fe:	4b24      	ldr	r3, [pc, #144]	; (8001390 <PortConfig+0x1ac>)
 8001300:	681b      	ldr	r3, [r3, #0]
 8001302:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 8001306:	6013      	str	r3, [r2, #0]
 8001308:	4a1e      	ldr	r2, [pc, #120]	; (8001384 <PortConfig+0x1a0>)
 800130a:	4b1e      	ldr	r3, [pc, #120]	; (8001384 <PortConfig+0x1a0>)
 800130c:	69db      	ldr	r3, [r3, #28]
 800130e:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 8001312:	61d3      	str	r3, [r2, #28]
 8001314:	4b20      	ldr	r3, [pc, #128]	; (8001398 <PortConfig+0x1b4>)
 8001316:	2200      	movs	r2, #0
 8001318:	609a      	str	r2, [r3, #8]
 800131a:	4a1f      	ldr	r2, [pc, #124]	; (8001398 <PortConfig+0x1b4>)
 800131c:	4b1e      	ldr	r3, [pc, #120]	; (8001398 <PortConfig+0x1b4>)
 800131e:	685b      	ldr	r3, [r3, #4]
 8001320:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 8001324:	6053      	str	r3, [r2, #4]
 8001326:	4a1c      	ldr	r2, [pc, #112]	; (8001398 <PortConfig+0x1b4>)
 8001328:	4b1b      	ldr	r3, [pc, #108]	; (8001398 <PortConfig+0x1b4>)
 800132a:	68db      	ldr	r3, [r3, #12]
 800132c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 8001330:	60d3      	str	r3, [r2, #12]
 8001332:	4b19      	ldr	r3, [pc, #100]	; (8001398 <PortConfig+0x1b4>)
 8001334:	f04f 32ff 	mov.w	r2, #4294967295
 8001338:	619a      	str	r2, [r3, #24]
 800133a:	4a17      	ldr	r2, [pc, #92]	; (8001398 <PortConfig+0x1b4>)
 800133c:	4b16      	ldr	r3, [pc, #88]	; (8001398 <PortConfig+0x1b4>)
 800133e:	681b      	ldr	r3, [r3, #0]
 8001340:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 8001344:	6013      	str	r3, [r2, #0]
 8001346:	4a0f      	ldr	r2, [pc, #60]	; (8001384 <PortConfig+0x1a0>)
 8001348:	4b0e      	ldr	r3, [pc, #56]	; (8001384 <PortConfig+0x1a0>)
 800134a:	69db      	ldr	r3, [r3, #28]
 800134c:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 8001350:	61d3      	str	r3, [r2, #28]
 8001352:	4a12      	ldr	r2, [pc, #72]	; (800139c <PortConfig+0x1b8>)
 8001354:	4b11      	ldr	r3, [pc, #68]	; (800139c <PortConfig+0x1b8>)
 8001356:	68db      	ldr	r3, [r3, #12]
 8001358:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 800135c:	f023 0301 	bic.w	r3, r3, #1
 8001360:	60d3      	str	r3, [r2, #12]
 8001362:	4a08      	ldr	r2, [pc, #32]	; (8001384 <PortConfig+0x1a0>)
 8001364:	4b07      	ldr	r3, [pc, #28]	; (8001384 <PortConfig+0x1a0>)
 8001366:	69db      	ldr	r3, [r3, #28]
 8001368:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 800136c:	61d3      	str	r3, [r2, #28]
 800136e:	4a0c      	ldr	r2, [pc, #48]	; (80013a0 <PortConfig+0x1bc>)
 8001370:	4b0b      	ldr	r3, [pc, #44]	; (80013a0 <PortConfig+0x1bc>)
 8001372:	68db      	ldr	r3, [r3, #12]
 8001374:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
 8001378:	60d3      	str	r3, [r2, #12]
 800137a:	bf00      	nop
 800137c:	46bd      	mov	sp, r7
 800137e:	bc80      	pop	{r7}
 8001380:	4770      	bx	lr
 8001382:	bf00      	nop
 8001384:	40020000 	.word	0x40020000
 8001388:	400a8000 	.word	0x400a8000
 800138c:	400b0000 	.word	0x400b0000
 8001390:	400b8000 	.word	0x400b8000
 8001394:	000aaaa0 	.word	0x000aaaa0
 8001398:	400e8000 	.word	0x400e8000
 800139c:	400c8000 	.word	0x400c8000
 80013a0:	400c0000 	.word	0x400c0000

080013a4 <ClkConfig>:
 80013a4:	b480      	push	{r7}
 80013a6:	af00      	add	r7, sp, #0
 80013a8:	4a16      	ldr	r2, [pc, #88]	; (8001404 <ClkConfig+0x60>)
 80013aa:	4b16      	ldr	r3, [pc, #88]	; (8001404 <ClkConfig+0x60>)
 80013ac:	689b      	ldr	r3, [r3, #8]
 80013ae:	f043 0301 	orr.w	r3, r3, #1
 80013b2:	6093      	str	r3, [r2, #8]
 80013b4:	bf00      	nop
 80013b6:	4b13      	ldr	r3, [pc, #76]	; (8001404 <ClkConfig+0x60>)
 80013b8:	681b      	ldr	r3, [r3, #0]
 80013ba:	f003 0304 	and.w	r3, r3, #4
 80013be:	2b00      	cmp	r3, #0
 80013c0:	d0f9      	beq.n	80013b6 <ClkConfig+0x12>
 80013c2:	4b10      	ldr	r3, [pc, #64]	; (8001404 <ClkConfig+0x60>)
 80013c4:	2206      	movs	r2, #6
 80013c6:	60da      	str	r2, [r3, #12]
 80013c8:	4b0e      	ldr	r3, [pc, #56]	; (8001404 <ClkConfig+0x60>)
 80013ca:	f640 1204 	movw	r2, #2308	; 0x904
 80013ce:	605a      	str	r2, [r3, #4]
 80013d0:	bf00      	nop
 80013d2:	4b0c      	ldr	r3, [pc, #48]	; (8001404 <ClkConfig+0x60>)
 80013d4:	681b      	ldr	r3, [r3, #0]
 80013d6:	f003 0302 	and.w	r3, r3, #2
 80013da:	2b00      	cmp	r3, #0
 80013dc:	d0f9      	beq.n	80013d2 <ClkConfig+0x2e>
 80013de:	4a09      	ldr	r2, [pc, #36]	; (8001404 <ClkConfig+0x60>)
 80013e0:	4b08      	ldr	r3, [pc, #32]	; (8001404 <ClkConfig+0x60>)
 80013e2:	68db      	ldr	r3, [r3, #12]
 80013e4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80013e8:	60d3      	str	r3, [r2, #12]
 80013ea:	4a07      	ldr	r2, [pc, #28]	; (8001408 <ClkConfig+0x64>)
 80013ec:	4b06      	ldr	r3, [pc, #24]	; (8001408 <ClkConfig+0x64>)
 80013ee:	681b      	ldr	r3, [r3, #0]
 80013f0:	f043 0320 	orr.w	r3, r3, #32
 80013f4:	6013      	str	r3, [r2, #0]
 80013f6:	4b05      	ldr	r3, [pc, #20]	; (800140c <ClkConfig+0x68>)
 80013f8:	2200      	movs	r2, #0
 80013fa:	601a      	str	r2, [r3, #0]
 80013fc:	bf00      	nop
 80013fe:	46bd      	mov	sp, r7
 8001400:	bc80      	pop	{r7}
 8001402:	4770      	bx	lr
 8001404:	40020000 	.word	0x40020000
 8001408:	40018000 	.word	0x40018000
 800140c:	20001290 	.word	0x20001290

08001410 <TimerConfig>:
 8001410:	b580      	push	{r7, lr}
 8001412:	af00      	add	r7, sp, #0
 8001414:	4a8a      	ldr	r2, [pc, #552]	; (8001640 <TimerConfig+0x230>)
 8001416:	4b8a      	ldr	r3, [pc, #552]	; (8001640 <TimerConfig+0x230>)
 8001418:	69db      	ldr	r3, [r3, #28]
 800141a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 800141e:	61d3      	str	r3, [r2, #28]
 8001420:	4a87      	ldr	r2, [pc, #540]	; (8001640 <TimerConfig+0x230>)
 8001422:	4b87      	ldr	r3, [pc, #540]	; (8001640 <TimerConfig+0x230>)
 8001424:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001426:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 800142a:	6253      	str	r3, [r2, #36]	; 0x24
 800142c:	4a84      	ldr	r2, [pc, #528]	; (8001640 <TimerConfig+0x230>)
 800142e:	4b84      	ldr	r3, [pc, #528]	; (8001640 <TimerConfig+0x230>)
 8001430:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001432:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8001436:	6253      	str	r3, [r2, #36]	; 0x24
 8001438:	4b82      	ldr	r3, [pc, #520]	; (8001644 <TimerConfig+0x234>)
 800143a:	2200      	movs	r2, #0
 800143c:	601a      	str	r2, [r3, #0]
 800143e:	4b81      	ldr	r3, [pc, #516]	; (8001644 <TimerConfig+0x234>)
 8001440:	224f      	movs	r2, #79	; 0x4f
 8001442:	605a      	str	r2, [r3, #4]
 8001444:	4b7f      	ldr	r3, [pc, #508]	; (8001644 <TimerConfig+0x234>)
 8001446:	f240 32e7 	movw	r2, #999	; 0x3e7
 800144a:	609a      	str	r2, [r3, #8]
 800144c:	4a7d      	ldr	r2, [pc, #500]	; (8001644 <TimerConfig+0x234>)
 800144e:	4b7d      	ldr	r3, [pc, #500]	; (8001644 <TimerConfig+0x234>)
 8001450:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001452:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001456:	6253      	str	r3, [r2, #36]	; 0x24
 8001458:	4a7a      	ldr	r2, [pc, #488]	; (8001644 <TimerConfig+0x234>)
 800145a:	4b7a      	ldr	r3, [pc, #488]	; (8001644 <TimerConfig+0x234>)
 800145c:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 800145e:	f043 0302 	orr.w	r3, r3, #2
 8001462:	6593      	str	r3, [r2, #88]	; 0x58
 8001464:	4b77      	ldr	r3, [pc, #476]	; (8001644 <TimerConfig+0x234>)
 8001466:	2201      	movs	r2, #1
 8001468:	60da      	str	r2, [r3, #12]
 800146a:	4a75      	ldr	r2, [pc, #468]	; (8001640 <TimerConfig+0x230>)
 800146c:	4b74      	ldr	r3, [pc, #464]	; (8001640 <TimerConfig+0x230>)
 800146e:	69db      	ldr	r3, [r3, #28]
 8001470:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8001474:	61d3      	str	r3, [r2, #28]
 8001476:	4a72      	ldr	r2, [pc, #456]	; (8001640 <TimerConfig+0x230>)
 8001478:	4b71      	ldr	r3, [pc, #452]	; (8001640 <TimerConfig+0x230>)
 800147a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800147c:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
 8001480:	6253      	str	r3, [r2, #36]	; 0x24
 8001482:	4a6f      	ldr	r2, [pc, #444]	; (8001640 <TimerConfig+0x230>)
 8001484:	4b6e      	ldr	r3, [pc, #440]	; (8001640 <TimerConfig+0x230>)
 8001486:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001488:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 800148c:	6253      	str	r3, [r2, #36]	; 0x24
 800148e:	4b6e      	ldr	r3, [pc, #440]	; (8001648 <TimerConfig+0x238>)
 8001490:	2200      	movs	r2, #0
 8001492:	601a      	str	r2, [r3, #0]
 8001494:	4b6c      	ldr	r3, [pc, #432]	; (8001648 <TimerConfig+0x238>)
 8001496:	2202      	movs	r2, #2
 8001498:	605a      	str	r2, [r3, #4]
 800149a:	4b6b      	ldr	r3, [pc, #428]	; (8001648 <TimerConfig+0x238>)
 800149c:	f240 32ff 	movw	r2, #1023	; 0x3ff
 80014a0:	609a      	str	r2, [r3, #8]
 80014a2:	4b69      	ldr	r3, [pc, #420]	; (8001648 <TimerConfig+0x238>)
 80014a4:	f44f 7200 	mov.w	r2, #512	; 0x200
 80014a8:	611a      	str	r2, [r3, #16]
 80014aa:	4b67      	ldr	r3, [pc, #412]	; (8001648 <TimerConfig+0x238>)
 80014ac:	f44f 7200 	mov.w	r2, #512	; 0x200
 80014b0:	615a      	str	r2, [r3, #20]
 80014b2:	4b65      	ldr	r3, [pc, #404]	; (8001648 <TimerConfig+0x238>)
 80014b4:	f44f 7200 	mov.w	r2, #512	; 0x200
 80014b8:	619a      	str	r2, [r3, #24]
 80014ba:	4a63      	ldr	r2, [pc, #396]	; (8001648 <TimerConfig+0x238>)
 80014bc:	4b62      	ldr	r3, [pc, #392]	; (8001648 <TimerConfig+0x238>)
 80014be:	6a1b      	ldr	r3, [r3, #32]
 80014c0:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 80014c4:	6213      	str	r3, [r2, #32]
 80014c6:	4a60      	ldr	r2, [pc, #384]	; (8001648 <TimerConfig+0x238>)
 80014c8:	4b5f      	ldr	r3, [pc, #380]	; (8001648 <TimerConfig+0x238>)
 80014ca:	6a1b      	ldr	r3, [r3, #32]
 80014cc:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 80014d0:	6213      	str	r3, [r2, #32]
 80014d2:	4a5d      	ldr	r2, [pc, #372]	; (8001648 <TimerConfig+0x238>)
 80014d4:	4b5c      	ldr	r3, [pc, #368]	; (8001648 <TimerConfig+0x238>)
 80014d6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80014d8:	f023 030f 	bic.w	r3, r3, #15
 80014dc:	6313      	str	r3, [r2, #48]	; 0x30
 80014de:	4a5a      	ldr	r2, [pc, #360]	; (8001648 <TimerConfig+0x238>)
 80014e0:	4b59      	ldr	r3, [pc, #356]	; (8001648 <TimerConfig+0x238>)
 80014e2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80014e4:	f043 030c 	orr.w	r3, r3, #12
 80014e8:	6313      	str	r3, [r2, #48]	; 0x30
 80014ea:	4a57      	ldr	r2, [pc, #348]	; (8001648 <TimerConfig+0x238>)
 80014ec:	4b56      	ldr	r3, [pc, #344]	; (8001648 <TimerConfig+0x238>)
 80014ee:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80014f0:	f043 0301 	orr.w	r3, r3, #1
 80014f4:	6313      	str	r3, [r2, #48]	; 0x30
 80014f6:	4a54      	ldr	r2, [pc, #336]	; (8001648 <TimerConfig+0x238>)
 80014f8:	4b53      	ldr	r3, [pc, #332]	; (8001648 <TimerConfig+0x238>)
 80014fa:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80014fc:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8001500:	6313      	str	r3, [r2, #48]	; 0x30
 8001502:	4a51      	ldr	r2, [pc, #324]	; (8001648 <TimerConfig+0x238>)
 8001504:	4b50      	ldr	r3, [pc, #320]	; (8001648 <TimerConfig+0x238>)
 8001506:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001508:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 800150c:	6313      	str	r3, [r2, #48]	; 0x30
 800150e:	4a4e      	ldr	r2, [pc, #312]	; (8001648 <TimerConfig+0x238>)
 8001510:	4b4d      	ldr	r3, [pc, #308]	; (8001648 <TimerConfig+0x238>)
 8001512:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001514:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001518:	6313      	str	r3, [r2, #48]	; 0x30
 800151a:	4a4b      	ldr	r2, [pc, #300]	; (8001648 <TimerConfig+0x238>)
 800151c:	4b4a      	ldr	r3, [pc, #296]	; (8001648 <TimerConfig+0x238>)
 800151e:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 8001520:	f043 0308 	orr.w	r3, r3, #8
 8001524:	6613      	str	r3, [r2, #96]	; 0x60
 8001526:	4a48      	ldr	r2, [pc, #288]	; (8001648 <TimerConfig+0x238>)
 8001528:	4b47      	ldr	r3, [pc, #284]	; (8001648 <TimerConfig+0x238>)
 800152a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800152c:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 8001530:	6253      	str	r3, [r2, #36]	; 0x24
 8001532:	4a45      	ldr	r2, [pc, #276]	; (8001648 <TimerConfig+0x238>)
 8001534:	4b44      	ldr	r3, [pc, #272]	; (8001648 <TimerConfig+0x238>)
 8001536:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001538:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 800153c:	6253      	str	r3, [r2, #36]	; 0x24
 800153e:	4a42      	ldr	r2, [pc, #264]	; (8001648 <TimerConfig+0x238>)
 8001540:	4b41      	ldr	r3, [pc, #260]	; (8001648 <TimerConfig+0x238>)
 8001542:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001544:	f023 030f 	bic.w	r3, r3, #15
 8001548:	6353      	str	r3, [r2, #52]	; 0x34
 800154a:	4a3f      	ldr	r2, [pc, #252]	; (8001648 <TimerConfig+0x238>)
 800154c:	4b3e      	ldr	r3, [pc, #248]	; (8001648 <TimerConfig+0x238>)
 800154e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001550:	f043 030c 	orr.w	r3, r3, #12
 8001554:	6353      	str	r3, [r2, #52]	; 0x34
 8001556:	4a3c      	ldr	r2, [pc, #240]	; (8001648 <TimerConfig+0x238>)
 8001558:	4b3b      	ldr	r3, [pc, #236]	; (8001648 <TimerConfig+0x238>)
 800155a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800155c:	f043 0301 	orr.w	r3, r3, #1
 8001560:	6353      	str	r3, [r2, #52]	; 0x34
 8001562:	4a39      	ldr	r2, [pc, #228]	; (8001648 <TimerConfig+0x238>)
 8001564:	4b38      	ldr	r3, [pc, #224]	; (8001648 <TimerConfig+0x238>)
 8001566:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001568:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 800156c:	6353      	str	r3, [r2, #52]	; 0x34
 800156e:	4a36      	ldr	r2, [pc, #216]	; (8001648 <TimerConfig+0x238>)
 8001570:	4b35      	ldr	r3, [pc, #212]	; (8001648 <TimerConfig+0x238>)
 8001572:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001574:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 8001578:	6353      	str	r3, [r2, #52]	; 0x34
 800157a:	4a33      	ldr	r2, [pc, #204]	; (8001648 <TimerConfig+0x238>)
 800157c:	4b32      	ldr	r3, [pc, #200]	; (8001648 <TimerConfig+0x238>)
 800157e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001580:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001584:	6353      	str	r3, [r2, #52]	; 0x34
 8001586:	4a30      	ldr	r2, [pc, #192]	; (8001648 <TimerConfig+0x238>)
 8001588:	4b2f      	ldr	r3, [pc, #188]	; (8001648 <TimerConfig+0x238>)
 800158a:	6e5b      	ldr	r3, [r3, #100]	; 0x64
 800158c:	f043 0308 	orr.w	r3, r3, #8
 8001590:	6653      	str	r3, [r2, #100]	; 0x64
 8001592:	4a2d      	ldr	r2, [pc, #180]	; (8001648 <TimerConfig+0x238>)
 8001594:	4b2c      	ldr	r3, [pc, #176]	; (8001648 <TimerConfig+0x238>)
 8001596:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001598:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
 800159c:	6293      	str	r3, [r2, #40]	; 0x28
 800159e:	4a2a      	ldr	r2, [pc, #168]	; (8001648 <TimerConfig+0x238>)
 80015a0:	4b29      	ldr	r3, [pc, #164]	; (8001648 <TimerConfig+0x238>)
 80015a2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80015a4:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
 80015a8:	6293      	str	r3, [r2, #40]	; 0x28
 80015aa:	4a27      	ldr	r2, [pc, #156]	; (8001648 <TimerConfig+0x238>)
 80015ac:	4b26      	ldr	r3, [pc, #152]	; (8001648 <TimerConfig+0x238>)
 80015ae:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80015b0:	f023 030f 	bic.w	r3, r3, #15
 80015b4:	6393      	str	r3, [r2, #56]	; 0x38
 80015b6:	4a24      	ldr	r2, [pc, #144]	; (8001648 <TimerConfig+0x238>)
 80015b8:	4b23      	ldr	r3, [pc, #140]	; (8001648 <TimerConfig+0x238>)
 80015ba:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80015bc:	f043 030c 	orr.w	r3, r3, #12
 80015c0:	6393      	str	r3, [r2, #56]	; 0x38
 80015c2:	4a21      	ldr	r2, [pc, #132]	; (8001648 <TimerConfig+0x238>)
 80015c4:	4b20      	ldr	r3, [pc, #128]	; (8001648 <TimerConfig+0x238>)
 80015c6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80015c8:	f043 0301 	orr.w	r3, r3, #1
 80015cc:	6393      	str	r3, [r2, #56]	; 0x38
 80015ce:	4a1e      	ldr	r2, [pc, #120]	; (8001648 <TimerConfig+0x238>)
 80015d0:	4b1d      	ldr	r3, [pc, #116]	; (8001648 <TimerConfig+0x238>)
 80015d2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80015d4:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80015d8:	6393      	str	r3, [r2, #56]	; 0x38
 80015da:	4a1b      	ldr	r2, [pc, #108]	; (8001648 <TimerConfig+0x238>)
 80015dc:	4b1a      	ldr	r3, [pc, #104]	; (8001648 <TimerConfig+0x238>)
 80015de:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80015e0:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 80015e4:	6393      	str	r3, [r2, #56]	; 0x38
 80015e6:	4a18      	ldr	r2, [pc, #96]	; (8001648 <TimerConfig+0x238>)
 80015e8:	4b17      	ldr	r3, [pc, #92]	; (8001648 <TimerConfig+0x238>)
 80015ea:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80015ec:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80015f0:	6393      	str	r3, [r2, #56]	; 0x38
 80015f2:	4a15      	ldr	r2, [pc, #84]	; (8001648 <TimerConfig+0x238>)
 80015f4:	4b14      	ldr	r3, [pc, #80]	; (8001648 <TimerConfig+0x238>)
 80015f6:	6e9b      	ldr	r3, [r3, #104]	; 0x68
 80015f8:	f043 0308 	orr.w	r3, r3, #8
 80015fc:	6693      	str	r3, [r2, #104]	; 0x68
 80015fe:	4a12      	ldr	r2, [pc, #72]	; (8001648 <TimerConfig+0x238>)
 8001600:	4b11      	ldr	r3, [pc, #68]	; (8001648 <TimerConfig+0x238>)
 8001602:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001604:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 8001608:	6413      	str	r3, [r2, #64]	; 0x40
 800160a:	4a0f      	ldr	r2, [pc, #60]	; (8001648 <TimerConfig+0x238>)
 800160c:	4b0e      	ldr	r3, [pc, #56]	; (8001648 <TimerConfig+0x238>)
 800160e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001610:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 8001614:	6453      	str	r3, [r2, #68]	; 0x44
 8001616:	4a0c      	ldr	r2, [pc, #48]	; (8001648 <TimerConfig+0x238>)
 8001618:	4b0b      	ldr	r3, [pc, #44]	; (8001648 <TimerConfig+0x238>)
 800161a:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 800161c:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
 8001620:	6493      	str	r3, [r2, #72]	; 0x48
 8001622:	4a09      	ldr	r2, [pc, #36]	; (8001648 <TimerConfig+0x238>)
 8001624:	4b08      	ldr	r3, [pc, #32]	; (8001648 <TimerConfig+0x238>)
 8001626:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8001628:	f043 0302 	orr.w	r3, r3, #2
 800162c:	6593      	str	r3, [r2, #88]	; 0x58
 800162e:	2010      	movs	r0, #16
 8001630:	f7ff fdc0 	bl	80011b4 <NVIC_EnableIRQ>
 8001634:	4b04      	ldr	r3, [pc, #16]	; (8001648 <TimerConfig+0x238>)
 8001636:	2201      	movs	r2, #1
 8001638:	60da      	str	r2, [r3, #12]
 800163a:	bf00      	nop
 800163c:	bd80      	pop	{r7, pc}
 800163e:	bf00      	nop
 8001640:	40020000 	.word	0x40020000
 8001644:	40070000 	.word	0x40070000
 8001648:	40080000 	.word	0x40080000

0800164c <uart_init>:
 800164c:	b480      	push	{r7}
 800164e:	af00      	add	r7, sp, #0
 8001650:	4b22      	ldr	r3, [pc, #136]	; (80016dc <uart_init+0x90>)
 8001652:	2200      	movs	r2, #0
 8001654:	601a      	str	r2, [r3, #0]
 8001656:	4a22      	ldr	r2, [pc, #136]	; (80016e0 <uart_init+0x94>)
 8001658:	4b21      	ldr	r3, [pc, #132]	; (80016e0 <uart_init+0x94>)
 800165a:	69db      	ldr	r3, [r3, #28]
 800165c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001660:	61d3      	str	r3, [r2, #28]
 8001662:	4a1f      	ldr	r2, [pc, #124]	; (80016e0 <uart_init+0x94>)
 8001664:	4b1e      	ldr	r3, [pc, #120]	; (80016e0 <uart_init+0x94>)
 8001666:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001668:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 800166c:	6293      	str	r3, [r2, #40]	; 0x28
 800166e:	4b1d      	ldr	r3, [pc, #116]	; (80016e4 <uart_init+0x98>)
 8001670:	2204      	movs	r2, #4
 8001672:	625a      	str	r2, [r3, #36]	; 0x24
 8001674:	4b1b      	ldr	r3, [pc, #108]	; (80016e4 <uart_init+0x98>)
 8001676:	2200      	movs	r2, #0
 8001678:	629a      	str	r2, [r3, #40]	; 0x28
 800167a:	4a1a      	ldr	r2, [pc, #104]	; (80016e4 <uart_init+0x98>)
 800167c:	4b19      	ldr	r3, [pc, #100]	; (80016e4 <uart_init+0x98>)
 800167e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001680:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 8001684:	6353      	str	r3, [r2, #52]	; 0x34
 8001686:	4a17      	ldr	r2, [pc, #92]	; (80016e4 <uart_init+0x98>)
 8001688:	4b16      	ldr	r3, [pc, #88]	; (80016e4 <uart_init+0x98>)
 800168a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800168c:	f043 0312 	orr.w	r3, r3, #18
 8001690:	6353      	str	r3, [r2, #52]	; 0x34
 8001692:	4a14      	ldr	r2, [pc, #80]	; (80016e4 <uart_init+0x98>)
 8001694:	4b13      	ldr	r3, [pc, #76]	; (80016e4 <uart_init+0x98>)
 8001696:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001698:	f043 0310 	orr.w	r3, r3, #16
 800169c:	62d3      	str	r3, [r2, #44]	; 0x2c
 800169e:	4a11      	ldr	r2, [pc, #68]	; (80016e4 <uart_init+0x98>)
 80016a0:	4b10      	ldr	r3, [pc, #64]	; (80016e4 <uart_init+0x98>)
 80016a2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80016a4:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 80016a8:	62d3      	str	r3, [r2, #44]	; 0x2c
 80016aa:	4a0e      	ldr	r2, [pc, #56]	; (80016e4 <uart_init+0x98>)
 80016ac:	4b0d      	ldr	r3, [pc, #52]	; (80016e4 <uart_init+0x98>)
 80016ae:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80016b0:	f443 7340 	orr.w	r3, r3, #768	; 0x300
 80016b4:	f043 0301 	orr.w	r3, r3, #1
 80016b8:	6313      	str	r3, [r2, #48]	; 0x30
 80016ba:	4a0a      	ldr	r2, [pc, #40]	; (80016e4 <uart_init+0x98>)
 80016bc:	4b09      	ldr	r3, [pc, #36]	; (80016e4 <uart_init+0x98>)
 80016be:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80016c0:	f043 0310 	orr.w	r3, r3, #16
 80016c4:	6393      	str	r3, [r2, #56]	; 0x38
 80016c6:	4a07      	ldr	r2, [pc, #28]	; (80016e4 <uart_init+0x98>)
 80016c8:	4b06      	ldr	r3, [pc, #24]	; (80016e4 <uart_init+0x98>)
 80016ca:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80016cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80016d0:	6393      	str	r3, [r2, #56]	; 0x38
 80016d2:	bf00      	nop
 80016d4:	46bd      	mov	sp, r7
 80016d6:	bc80      	pop	{r7}
 80016d8:	4770      	bx	lr
 80016da:	bf00      	nop
 80016dc:	200012a4 	.word	0x200012a4
 80016e0:	40020000 	.word	0x40020000
 80016e4:	40030000 	.word	0x40030000

080016e8 <system_init>:
 80016e8:	b580      	push	{r7, lr}
 80016ea:	af00      	add	r7, sp, #0
 80016ec:	f7ff fe5a 	bl	80013a4 <ClkConfig>
 80016f0:	f7ff fd78 	bl	80011e4 <PortConfig>
 80016f4:	f7ff fe8c 	bl	8001410 <TimerConfig>
 80016f8:	f7ff ffa8 	bl	800164c <uart_init>
 80016fc:	bf00      	nop
 80016fe:	bd80      	pop	{r7, pc}

08001700 <SysTick_Handler>:
 8001700:	b480      	push	{r7}
 8001702:	af00      	add	r7, sp, #0
 8001704:	4b04      	ldr	r3, [pc, #16]	; (8001718 <SysTick_Handler+0x18>)
 8001706:	681b      	ldr	r3, [r3, #0]
 8001708:	3301      	adds	r3, #1
 800170a:	4a03      	ldr	r2, [pc, #12]	; (8001718 <SysTick_Handler+0x18>)
 800170c:	6013      	str	r3, [r2, #0]
 800170e:	bf00      	nop
 8001710:	46bd      	mov	sp, r7
 8001712:	bc80      	pop	{r7}
 8001714:	4770      	bx	lr
 8001716:	bf00      	nop
 8001718:	20001290 	.word	0x20001290

0800171c <UART1_IRQHandler>:
 800171c:	b480      	push	{r7}
 800171e:	b083      	sub	sp, #12
 8001720:	af00      	add	r7, sp, #0
 8001722:	4b1d      	ldr	r3, [pc, #116]	; (8001798 <UART1_IRQHandler+0x7c>)
 8001724:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001726:	f003 0310 	and.w	r3, r3, #16
 800172a:	2b00      	cmp	r3, #0
 800172c:	d01f      	beq.n	800176e <UART1_IRQHandler+0x52>
 800172e:	e002      	b.n	8001736 <UART1_IRQHandler+0x1a>
 8001730:	4b19      	ldr	r3, [pc, #100]	; (8001798 <UART1_IRQHandler+0x7c>)
 8001732:	681b      	ldr	r3, [r3, #0]
 8001734:	71fb      	strb	r3, [r7, #7]
 8001736:	4b18      	ldr	r3, [pc, #96]	; (8001798 <UART1_IRQHandler+0x7c>)
 8001738:	699b      	ldr	r3, [r3, #24]
 800173a:	f003 0310 	and.w	r3, r3, #16
 800173e:	2b00      	cmp	r3, #0
 8001740:	d0f6      	beq.n	8001730 <UART1_IRQHandler+0x14>
 8001742:	4b16      	ldr	r3, [pc, #88]	; (800179c <UART1_IRQHandler+0x80>)
 8001744:	681b      	ldr	r3, [r3, #0]
 8001746:	80bb      	strh	r3, [r7, #4]
 8001748:	4b14      	ldr	r3, [pc, #80]	; (800179c <UART1_IRQHandler+0x80>)
 800174a:	689b      	ldr	r3, [r3, #8]
 800174c:	085b      	lsrs	r3, r3, #1
 800174e:	807b      	strh	r3, [r7, #2]
 8001750:	88ba      	ldrh	r2, [r7, #4]
 8001752:	887b      	ldrh	r3, [r7, #2]
 8001754:	429a      	cmp	r2, r3
 8001756:	d205      	bcs.n	8001764 <UART1_IRQHandler+0x48>
 8001758:	4a10      	ldr	r2, [pc, #64]	; (800179c <UART1_IRQHandler+0x80>)
 800175a:	4b10      	ldr	r3, [pc, #64]	; (800179c <UART1_IRQHandler+0x80>)
 800175c:	681b      	ldr	r3, [r3, #0]
 800175e:	3b01      	subs	r3, #1
 8001760:	6013      	str	r3, [r2, #0]
 8001762:	e004      	b.n	800176e <UART1_IRQHandler+0x52>
 8001764:	4a0d      	ldr	r2, [pc, #52]	; (800179c <UART1_IRQHandler+0x80>)
 8001766:	4b0d      	ldr	r3, [pc, #52]	; (800179c <UART1_IRQHandler+0x80>)
 8001768:	681b      	ldr	r3, [r3, #0]
 800176a:	3301      	adds	r3, #1
 800176c:	6013      	str	r3, [r2, #0]
 800176e:	4b0a      	ldr	r3, [pc, #40]	; (8001798 <UART1_IRQHandler+0x7c>)
 8001770:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001772:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8001776:	2b00      	cmp	r3, #0
 8001778:	d009      	beq.n	800178e <UART1_IRQHandler+0x72>
 800177a:	e002      	b.n	8001782 <UART1_IRQHandler+0x66>
 800177c:	4b06      	ldr	r3, [pc, #24]	; (8001798 <UART1_IRQHandler+0x7c>)
 800177e:	681b      	ldr	r3, [r3, #0]
 8001780:	707b      	strb	r3, [r7, #1]
 8001782:	4b05      	ldr	r3, [pc, #20]	; (8001798 <UART1_IRQHandler+0x7c>)
 8001784:	699b      	ldr	r3, [r3, #24]
 8001786:	f003 0310 	and.w	r3, r3, #16
 800178a:	2b00      	cmp	r3, #0
 800178c:	d0f6      	beq.n	800177c <UART1_IRQHandler+0x60>
 800178e:	bf00      	nop
 8001790:	370c      	adds	r7, #12
 8001792:	46bd      	mov	sp, r7
 8001794:	bc80      	pop	{r7}
 8001796:	4770      	bx	lr
 8001798:	40030000 	.word	0x40030000
 800179c:	40070000 	.word	0x40070000

080017a0 <handler_reset>:
 80017a0:	b580      	push	{r7, lr}
 80017a2:	b082      	sub	sp, #8
 80017a4:	af00      	add	r7, sp, #0
 80017a6:	4b11      	ldr	r3, [pc, #68]	; (80017ec <handler_reset+0x4c>)
 80017a8:	607b      	str	r3, [r7, #4]
 80017aa:	4b11      	ldr	r3, [pc, #68]	; (80017f0 <handler_reset+0x50>)
 80017ac:	603b      	str	r3, [r7, #0]
 80017ae:	e007      	b.n	80017c0 <handler_reset+0x20>
 80017b0:	683b      	ldr	r3, [r7, #0]
 80017b2:	1d1a      	adds	r2, r3, #4
 80017b4:	603a      	str	r2, [r7, #0]
 80017b6:	687a      	ldr	r2, [r7, #4]
 80017b8:	1d11      	adds	r1, r2, #4
 80017ba:	6079      	str	r1, [r7, #4]
 80017bc:	6812      	ldr	r2, [r2, #0]
 80017be:	601a      	str	r2, [r3, #0]
 80017c0:	683b      	ldr	r3, [r7, #0]
 80017c2:	4a0c      	ldr	r2, [pc, #48]	; (80017f4 <handler_reset+0x54>)
 80017c4:	4293      	cmp	r3, r2
 80017c6:	d3f3      	bcc.n	80017b0 <handler_reset+0x10>
 80017c8:	4b0b      	ldr	r3, [pc, #44]	; (80017f8 <handler_reset+0x58>)
 80017ca:	603b      	str	r3, [r7, #0]
 80017cc:	e004      	b.n	80017d8 <handler_reset+0x38>
 80017ce:	683b      	ldr	r3, [r7, #0]
 80017d0:	1d1a      	adds	r2, r3, #4
 80017d2:	603a      	str	r2, [r7, #0]
 80017d4:	2200      	movs	r2, #0
 80017d6:	601a      	str	r2, [r3, #0]
 80017d8:	683b      	ldr	r3, [r7, #0]
 80017da:	4a08      	ldr	r2, [pc, #32]	; (80017fc <handler_reset+0x5c>)
 80017dc:	4293      	cmp	r3, r2
 80017de:	d3f6      	bcc.n	80017ce <handler_reset+0x2e>
 80017e0:	f7fe fe6c 	bl	80004bc <main>
 80017e4:	bf00      	nop
 80017e6:	3708      	adds	r7, #8
 80017e8:	46bd      	mov	sp, r7
 80017ea:	bd80      	pop	{r7, pc}
 80017ec:	08002848 	.word	0x08002848
 80017f0:	20000000 	.word	0x20000000
 80017f4:	20000000 	.word	0x20000000
 80017f8:	20000220 	.word	0x20000220
 80017fc:	200012a8 	.word	0x200012a8

08001800 <default_handler>:
 8001800:	b480      	push	{r7}
 8001802:	af00      	add	r7, sp, #0
 8001804:	e7fe      	b.n	8001804 <default_handler+0x4>
 8001806:	bf00      	nop
 8001808:	00000080 	.word	0x00000080
 800180c:	0000004c 	.word	0x0000004c
 8001810:	00000028 	.word	0x00000028
 8001814:	00000014 	.word	0x00000014
 8001818:	0000000a 	.word	0x0000000a
 800181c:	00000005 	.word	0x00000005
 8001820:	00000003 	.word	0x00000003
 8001824:	00000001 	.word	0x00000001
 8001828:	000002d4 	.word	0x000002d4
 800182c:	00000288 	.word	0x00000288
 8001830:	00000274 	.word	0x00000274
 8001834:	0000026f 	.word	0x0000026f
 8001838:	0000026f 	.word	0x0000026f
 800183c:	0000026e 	.word	0x0000026e
 8001840:	0000026e 	.word	0x0000026e
 8001844:	0000026e 	.word	0x0000026e

08001848 <cos_tb>:
 8001848:	00000400 00000400 00000400 00000400     ................
 8001858:	00000400 00000400 000003ff 000003ff     ................
 8001868:	000003ff 000003fe 000003fe 000003fe     ................
 8001878:	000003fd 000003fd 000003fc 000003fc     ................
 8001888:	000003fb 000003fa 000003fa 000003f9     ................
 8001898:	000003f8 000003f8 000003f7 000003f6     ................
 80018a8:	000003f5 000003f4 000003f3 000003f2     ................
 80018b8:	000003f1 000003f0 000003ef 000003ee     ................
 80018c8:	000003ec 000003eb 000003ea 000003e8     ................
 80018d8:	000003e7 000003e6 000003e4 000003e3     ................
 80018e8:	000003e1 000003e0 000003de 000003dd     ................
 80018f8:	000003db 000003d9 000003d7 000003d6     ................
 8001908:	000003d4 000003d2 000003d0 000003ce     ................
 8001918:	000003cc 000003ca 000003c8 000003c6     ................
 8001928:	000003c4 000003c2 000003c0 000003be     ................
 8001938:	000003bb 000003b9 000003b7 000003b4     ................
 8001948:	000003b2 000003b0 000003ad 000003ab     ................
 8001958:	000003a8 000003a6 000003a3 000003a0     ................
 8001968:	0000039e 0000039b 00000398 00000395     ................
 8001978:	00000393 00000390 0000038d 0000038a     ................
 8001988:	00000387 00000384 00000381 0000037e     ............~...
 8001998:	0000037b 00000378 00000375 00000372     {...x...u...r...
 80019a8:	0000036e 0000036b 00000368 00000364     n...k...h...d...
 80019b8:	00000361 0000035e 0000035a 00000357     a...^...Z...W...
 80019c8:	00000353 00000350 0000034c 00000349     S...P...L...I...
 80019d8:	00000345 00000342 0000033e 0000033a     E...B...>...:...
 80019e8:	00000336 00000333 0000032f 0000032b     6...3.../...+...
 80019f8:	00000327 00000323 0000031f 0000031c     '...#...........
 8001a08:	00000318 00000314 00000310 0000030b     ................
 8001a18:	00000307 00000303 000002ff 000002fb     ................
 8001a28:	000002f7 000002f3 000002ee 000002ea     ................
 8001a38:	000002e6 000002e1 000002dd 000002d9     ................
 8001a48:	000002d4 000002d0 000002cb 000002c7     ................
 8001a58:	000002c2 000002be 000002b9 000002b4     ................
 8001a68:	000002b0 000002ab 000002a6 000002a2     ................
 8001a78:	0000029d 00000298 00000293 0000028e     ................
 8001a88:	0000028a 00000285 00000280 0000027b     ............{...
 8001a98:	00000276 00000271 0000026c 00000267     v...q...l...g...
 8001aa8:	00000262 0000025d 00000258 00000253     b...]...X...S...
 8001ab8:	0000024e 00000248 00000243 0000023e     N...H...C...>...
 8001ac8:	00000239 00000234 0000022e 00000229     9...4.......)...
 8001ad8:	00000224 0000021f 00000219 00000214     $...............
 8001ae8:	0000020e 00000209 00000204 000001fe     ................
 8001af8:	000001f9 000001f3 000001ee 000001e8     ................
 8001b08:	000001e3 000001dd 000001d8 000001d2     ................
 8001b18:	000001cc 000001c7 000001c1 000001bb     ................
 8001b28:	000001b6 000001b0 000001aa 000001a5     ................
 8001b38:	0000019f 00000199 00000193 0000018e     ................
 8001b48:	00000188 00000182 0000017c 00000176     ........|...v...
 8001b58:	00000171 0000016b 00000165 0000015f     q...k...e..._...
 8001b68:	00000159 00000153 0000014d 00000147     Y...S...M...G...
 8001b78:	00000141 0000013b 00000135 0000012f     A...;...5.../...
 8001b88:	00000129 00000123 0000011d 00000117     )...#...........
 8001b98:	00000111 0000010b 00000105 000000ff     ................
 8001ba8:	000000f9 000000f3 000000ed 000000e6     ................
 8001bb8:	000000e0 000000da 000000d4 000000ce     ................
 8001bc8:	000000c8 000000c2 000000bb 000000b5     ................
 8001bd8:	000000af 000000a9 000000a3 0000009c     ................
 8001be8:	00000096 00000090 0000008a 00000084     ................
 8001bf8:	0000007d 00000077 00000071 0000006b     }...w...q...k...
 8001c08:	00000064 0000005e 00000058 00000052     d...^...X...R...
 8001c18:	0000004b 00000045 0000003f 00000039     K...E...?...9...
 8001c28:	00000032 0000002c 00000026 0000001f     2...,...&.......
 8001c38:	00000019 00000013 0000000d 00000006     ................
 8001c48:	00000000 fffffffa fffffff3 ffffffed     ................
 8001c58:	ffffffe7 ffffffe1 ffffffda ffffffd4     ................
 8001c68:	ffffffce ffffffc7 ffffffc1 ffffffbb     ................
 8001c78:	ffffffb5 ffffffae ffffffa8 ffffffa2     ................
 8001c88:	ffffff9c ffffff95 ffffff8f ffffff89     ................
 8001c98:	ffffff83 ffffff7c ffffff76 ffffff70     ....|...v...p...
 8001ca8:	ffffff6a ffffff64 ffffff5d ffffff57     j...d...]...W...
 8001cb8:	ffffff51 ffffff4b ffffff45 ffffff3e     Q...K...E...>...
 8001cc8:	ffffff38 ffffff32 ffffff2c ffffff26     8...2...,...&...
 8001cd8:	ffffff20 ffffff1a ffffff13 ffffff0d      ...............
 8001ce8:	ffffff07 ffffff01 fffffefb fffffef5     ................
 8001cf8:	fffffeef fffffee9 fffffee3 fffffedd     ................
 8001d08:	fffffed7 fffffed1 fffffecb fffffec5     ................
 8001d18:	fffffebf fffffeb9 fffffeb3 fffffead     ................
 8001d28:	fffffea7 fffffea1 fffffe9b fffffe95     ................
 8001d38:	fffffe8f fffffe8a fffffe84 fffffe7e     ............~...
 8001d48:	fffffe78 fffffe72 fffffe6d fffffe67     x...r...m...g...
 8001d58:	fffffe61 fffffe5b fffffe56 fffffe50     a...[...V...P...
 8001d68:	fffffe4a fffffe45 fffffe3f fffffe39     J...E...?...9...
 8001d78:	fffffe34 fffffe2e fffffe28 fffffe23     4.......(...#...
 8001d88:	fffffe1d fffffe18 fffffe12 fffffe0d     ................
 8001d98:	fffffe07 fffffe02 fffffdfc fffffdf7     ................
 8001da8:	fffffdf2 fffffdec fffffde7 fffffde1     ................
 8001db8:	fffffddc fffffdd7 fffffdd2 fffffdcc     ................
 8001dc8:	fffffdc7 fffffdc2 fffffdbd fffffdb8     ................
 8001dd8:	fffffdb2 fffffdad fffffda8 fffffda3     ................
 8001de8:	fffffd9e fffffd99 fffffd94 fffffd8f     ................
 8001df8:	fffffd8a fffffd85 fffffd80 fffffd7b     ............{...
 8001e08:	fffffd76 fffffd72 fffffd6d fffffd68     v...r...m...h...
 8001e18:	fffffd63 fffffd5e fffffd5a fffffd55     c...^...Z...U...
 8001e28:	fffffd50 fffffd4c fffffd47 fffffd42     P...L...G...B...
 8001e38:	fffffd3e fffffd39 fffffd35 fffffd30     >...9...5...0...
 8001e48:	fffffd2c fffffd27 fffffd23 fffffd1f     ,...'...#.......
 8001e58:	fffffd1a fffffd16 fffffd12 fffffd0d     ................
 8001e68:	fffffd09 fffffd05 fffffd01 fffffcfd     ................
 8001e78:	fffffcf9 fffffcf5 fffffcf0 fffffcec     ................
 8001e88:	fffffce8 fffffce4 fffffce1 fffffcdd     ................
 8001e98:	fffffcd9 fffffcd5 fffffcd1 fffffccd     ................
 8001ea8:	fffffcca fffffcc6 fffffcc2 fffffcbe     ................
 8001eb8:	fffffcbb fffffcb7 fffffcb4 fffffcb0     ................
 8001ec8:	fffffcad fffffca9 fffffca6 fffffca2     ................
 8001ed8:	fffffc9f fffffc9c fffffc98 fffffc95     ................
 8001ee8:	fffffc92 fffffc8e fffffc8b fffffc88     ................
 8001ef8:	fffffc85 fffffc82 fffffc7f fffffc7c     ............|...
 8001f08:	fffffc79 fffffc76 fffffc73 fffffc70     y...v...s...p...
 8001f18:	fffffc6d fffffc6b fffffc68 fffffc65     m...k...h...e...
 8001f28:	fffffc62 fffffc60 fffffc5d fffffc5a     b...`...]...Z...
 8001f38:	fffffc58 fffffc55 fffffc53 fffffc50     X...U...S...P...
 8001f48:	fffffc4e fffffc4c fffffc49 fffffc47     N...L...I...G...
 8001f58:	fffffc45 fffffc42 fffffc40 fffffc3e     E...B...@...>...
 8001f68:	fffffc3c fffffc3a fffffc38 fffffc36     <...:...8...6...
 8001f78:	fffffc34 fffffc32 fffffc30 fffffc2e     4...2...0.......
 8001f88:	fffffc2c fffffc2a fffffc29 fffffc27     ,...*...)...'...
 8001f98:	fffffc25 fffffc23 fffffc22 fffffc20     %...#..."... ...
 8001fa8:	fffffc1f fffffc1d fffffc1c fffffc1a     ................
 8001fb8:	fffffc19 fffffc18 fffffc16 fffffc15     ................
 8001fc8:	fffffc14 fffffc12 fffffc11 fffffc10     ................
 8001fd8:	fffffc0f fffffc0e fffffc0d fffffc0c     ................
 8001fe8:	fffffc0b fffffc0a fffffc09 fffffc08     ................
 8001ff8:	fffffc08 fffffc07 fffffc06 fffffc06     ................
 8002008:	fffffc05 fffffc04 fffffc04 fffffc03     ................
 8002018:	fffffc03 fffffc02 fffffc02 fffffc02     ................
 8002028:	fffffc01 fffffc01 fffffc01 fffffc00     ................
 8002038:	fffffc00 fffffc00 fffffc00 fffffc00     ................
 8002048:	fffffc00 fffffc00 fffffc00 fffffc00     ................
 8002058:	fffffc00 fffffc00 fffffc01 fffffc01     ................
 8002068:	fffffc01 fffffc02 fffffc02 fffffc02     ................
 8002078:	fffffc03 fffffc03 fffffc04 fffffc04     ................
 8002088:	fffffc05 fffffc06 fffffc06 fffffc07     ................
 8002098:	fffffc08 fffffc08 fffffc09 fffffc0a     ................
 80020a8:	fffffc0b fffffc0c fffffc0d fffffc0e     ................
 80020b8:	fffffc0f fffffc10 fffffc11 fffffc12     ................
 80020c8:	fffffc14 fffffc15 fffffc16 fffffc18     ................
 80020d8:	fffffc19 fffffc1a fffffc1c fffffc1d     ................
 80020e8:	fffffc1f fffffc20 fffffc22 fffffc23     .... ..."...#...
 80020f8:	fffffc25 fffffc27 fffffc29 fffffc2a     %...'...)...*...
 8002108:	fffffc2c fffffc2e fffffc30 fffffc32     ,.......0...2...
 8002118:	fffffc34 fffffc36 fffffc38 fffffc3a     4...6...8...:...
 8002128:	fffffc3c fffffc3e fffffc40 fffffc42     <...>...@...B...
 8002138:	fffffc45 fffffc47 fffffc49 fffffc4c     E...G...I...L...
 8002148:	fffffc4e fffffc50 fffffc53 fffffc55     N...P...S...U...
 8002158:	fffffc58 fffffc5a fffffc5d fffffc60     X...Z...]...`...
 8002168:	fffffc62 fffffc65 fffffc68 fffffc6b     b...e...h...k...
 8002178:	fffffc6d fffffc70 fffffc73 fffffc76     m...p...s...v...
 8002188:	fffffc79 fffffc7c fffffc7f fffffc82     y...|...........
 8002198:	fffffc85 fffffc88 fffffc8b fffffc8e     ................
 80021a8:	fffffc92 fffffc95 fffffc98 fffffc9c     ................
 80021b8:	fffffc9f fffffca2 fffffca6 fffffca9     ................
 80021c8:	fffffcad fffffcb0 fffffcb4 fffffcb7     ................
 80021d8:	fffffcbb fffffcbe fffffcc2 fffffcc6     ................
 80021e8:	fffffcca fffffccd fffffcd1 fffffcd5     ................
 80021f8:	fffffcd9 fffffcdd fffffce1 fffffce4     ................
 8002208:	fffffce8 fffffcec fffffcf0 fffffcf5     ................
 8002218:	fffffcf9 fffffcfd fffffd01 fffffd05     ................
 8002228:	fffffd09 fffffd0d fffffd12 fffffd16     ................
 8002238:	fffffd1a fffffd1f fffffd23 fffffd27     ........#...'...
 8002248:	fffffd2c fffffd30 fffffd35 fffffd39     ,...0...5...9...
 8002258:	fffffd3e fffffd42 fffffd47 fffffd4c     >...B...G...L...
 8002268:	fffffd50 fffffd55 fffffd5a fffffd5e     P...U...Z...^...
 8002278:	fffffd63 fffffd68 fffffd6d fffffd72     c...h...m...r...
 8002288:	fffffd76 fffffd7b fffffd80 fffffd85     v...{...........
 8002298:	fffffd8a fffffd8f fffffd94 fffffd99     ................
 80022a8:	fffffd9e fffffda3 fffffda8 fffffdad     ................
 80022b8:	fffffdb2 fffffdb8 fffffdbd fffffdc2     ................
 80022c8:	fffffdc7 fffffdcc fffffdd2 fffffdd7     ................
 80022d8:	fffffddc fffffde1 fffffde7 fffffdec     ................
 80022e8:	fffffdf2 fffffdf7 fffffdfc fffffe02     ................
 80022f8:	fffffe07 fffffe0d fffffe12 fffffe18     ................
 8002308:	fffffe1d fffffe23 fffffe28 fffffe2e     ....#...(.......
 8002318:	fffffe34 fffffe39 fffffe3f fffffe45     4...9...?...E...
 8002328:	fffffe4a fffffe50 fffffe56 fffffe5b     J...P...V...[...
 8002338:	fffffe61 fffffe67 fffffe6d fffffe72     a...g...m...r...
 8002348:	fffffe78 fffffe7e fffffe84 fffffe8a     x...~...........
 8002358:	fffffe8f fffffe95 fffffe9b fffffea1     ................
 8002368:	fffffea7 fffffead fffffeb3 fffffeb9     ................
 8002378:	fffffebf fffffec5 fffffecb fffffed1     ................
 8002388:	fffffed7 fffffedd fffffee3 fffffee9     ................
 8002398:	fffffeef fffffef5 fffffefb ffffff01     ................
 80023a8:	ffffff07 ffffff0d ffffff13 ffffff1a     ................
 80023b8:	ffffff20 ffffff26 ffffff2c ffffff32      ...&...,...2...
 80023c8:	ffffff38 ffffff3e ffffff45 ffffff4b     8...>...E...K...
 80023d8:	ffffff51 ffffff57 ffffff5d ffffff64     Q...W...]...d...
 80023e8:	ffffff6a ffffff70 ffffff76 ffffff7c     j...p...v...|...
 80023f8:	ffffff83 ffffff89 ffffff8f ffffff95     ................
 8002408:	ffffff9c ffffffa2 ffffffa8 ffffffae     ................
 8002418:	ffffffb5 ffffffbb ffffffc1 ffffffc7     ................
 8002428:	ffffffce ffffffd4 ffffffda ffffffe1     ................
 8002438:	ffffffe7 ffffffed fffffff3 fffffffa     ................
 8002448:	00000000 00000006 0000000d 00000013     ................
 8002458:	00000019 0000001f 00000026 0000002c     ........&...,...
 8002468:	00000032 00000039 0000003f 00000045     2...9...?...E...
 8002478:	0000004b 00000052 00000058 0000005e     K...R...X...^...
 8002488:	00000064 0000006b 00000071 00000077     d...k...q...w...
 8002498:	0000007d 00000084 0000008a 00000090     }...............
 80024a8:	00000096 0000009c 000000a3 000000a9     ................
 80024b8:	000000af 000000b5 000000bb 000000c2     ................
 80024c8:	000000c8 000000ce 000000d4 000000da     ................
 80024d8:	000000e0 000000e6 000000ed 000000f3     ................
 80024e8:	000000f9 000000ff 00000105 0000010b     ................
 80024f8:	00000111 00000117 0000011d 00000123     ............#...
 8002508:	00000129 0000012f 00000135 0000013b     ).../...5...;...
 8002518:	00000141 00000147 0000014d 00000153     A...G...M...S...
 8002528:	00000159 0000015f 00000165 0000016b     Y..._...e...k...
 8002538:	00000171 00000176 0000017c 00000182     q...v...|.......
 8002548:	00000188 0000018e 00000193 00000199     ................
 8002558:	0000019f 000001a5 000001aa 000001b0     ................
 8002568:	000001b6 000001bb 000001c1 000001c7     ................
 8002578:	000001cc 000001d2 000001d8 000001dd     ................
 8002588:	000001e3 000001e8 000001ee 000001f3     ................
 8002598:	000001f9 000001fe 00000204 00000209     ................
 80025a8:	0000020e 00000214 00000219 0000021f     ................
 80025b8:	00000224 00000229 0000022e 00000234     $...).......4...
 80025c8:	00000239 0000023e 00000243 00000248     9...>...C...H...
 80025d8:	0000024e 00000253 00000258 0000025d     N...S...X...]...
 80025e8:	00000262 00000267 0000026c 00000271     b...g...l...q...
 80025f8:	00000276 0000027b 00000280 00000285     v...{...........
 8002608:	0000028a 0000028e 00000293 00000298     ................
 8002618:	0000029d 000002a2 000002a6 000002ab     ................
 8002628:	000002b0 000002b4 000002b9 000002be     ................
 8002638:	000002c2 000002c7 000002cb 000002d0     ................
 8002648:	000002d4 000002d9 000002dd 000002e1     ................
 8002658:	000002e6 000002ea 000002ee 000002f3     ................
 8002668:	000002f7 000002fb 000002ff 00000303     ................
 8002678:	00000307 0000030b 00000310 00000314     ................
 8002688:	00000318 0000031c 0000031f 00000323     ............#...
 8002698:	00000327 0000032b 0000032f 00000333     '...+.../...3...
 80026a8:	00000336 0000033a 0000033e 00000342     6...:...>...B...
 80026b8:	00000345 00000349 0000034c 00000350     E...I...L...P...
 80026c8:	00000353 00000357 0000035a 0000035e     S...W...Z...^...
 80026d8:	00000361 00000364 00000368 0000036b     a...d...h...k...
 80026e8:	0000036e 00000372 00000375 00000378     n...r...u...x...
 80026f8:	0000037b 0000037e 00000381 00000384     {...~...........
 8002708:	00000387 0000038a 0000038d 00000390     ................
 8002718:	00000393 00000395 00000398 0000039b     ................
 8002728:	0000039e 000003a0 000003a3 000003a6     ................
 8002738:	000003a8 000003ab 000003ad 000003b0     ................
 8002748:	000003b2 000003b4 000003b7 000003b9     ................
 8002758:	000003bb 000003be 000003c0 000003c2     ................
 8002768:	000003c4 000003c6 000003c8 000003ca     ................
 8002778:	000003cc 000003ce 000003d0 000003d2     ................
 8002788:	000003d4 000003d6 000003d7 000003d9     ................
 8002798:	000003db 000003dd 000003de 000003e0     ................
 80027a8:	000003e1 000003e3 000003e4 000003e6     ................
 80027b8:	000003e7 000003e8 000003ea 000003eb     ................
 80027c8:	000003ec 000003ee 000003ef 000003f0     ................
 80027d8:	000003f1 000003f2 000003f3 000003f4     ................
 80027e8:	000003f5 000003f6 000003f7 000003f8     ................
 80027f8:	000003f8 000003f9 000003fa 000003fa     ................
 8002808:	000003fb 000003fc 000003fc 000003fd     ................
 8002818:	000003fd 000003fe 000003fe 000003fe     ................
 8002828:	000003ff 000003ff 000003ff 00000400     ................
 8002838:	00000400 00000400 00000400 00000400     ................
