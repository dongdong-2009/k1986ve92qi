
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b580      	push	{r7, lr}
20000002:	b0a6      	sub	sp, #152	; 0x98
20000004:	af00      	add	r7, sp, #0
20000006:	2300      	movs	r3, #0
20000008:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
2000000c:	2300      	movs	r3, #0
2000000e:	67fb      	str	r3, [r7, #124]	; 0x7c
20000010:	2300      	movs	r3, #0
20000012:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
20000016:	2300      	movs	r3, #0
20000018:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
2000001c:	2300      	movs	r3, #0
2000001e:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000022:	2300      	movs	r3, #0
20000024:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
20000028:	2300      	movs	r3, #0
2000002a:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
2000002e:	2300      	movs	r3, #0
20000030:	67bb      	str	r3, [r7, #120]	; 0x78
20000032:	2300      	movs	r3, #0
20000034:	61bb      	str	r3, [r7, #24]
20000036:	2300      	movs	r3, #0
20000038:	677b      	str	r3, [r7, #116]	; 0x74
2000003a:	f001 f895 	bl	20001168 <system_init>
2000003e:	f001 f8ad 	bl	2000119c <encoder_init>
20000042:	f000 f8e5 	bl	20000210 <dac_init>
20000046:	f000 fe1b 	bl	20000c80 <adc_dma_init>
2000004a:	f107 034c 	add.w	r3, r7, #76	; 0x4c
2000004e:	2264      	movs	r2, #100	; 0x64
20000050:	2164      	movs	r1, #100	; 0x64
20000052:	4618      	mov	r0, r3
20000054:	f000 f95a 	bl	2000030c <reg_init>
20000058:	f107 033c 	add.w	r3, r7, #60	; 0x3c
2000005c:	2264      	movs	r2, #100	; 0x64
2000005e:	2164      	movs	r1, #100	; 0x64
20000060:	4618      	mov	r0, r3
20000062:	f000 f953 	bl	2000030c <reg_init>
20000066:	f107 032c 	add.w	r3, r7, #44	; 0x2c
2000006a:	f44f 627a 	mov.w	r2, #4000	; 0xfa0
2000006e:	2100      	movs	r1, #0
20000070:	4618      	mov	r0, r3
20000072:	f000 f94b 	bl	2000030c <reg_init>
20000076:	f107 031c 	add.w	r3, r7, #28
2000007a:	f241 7270 	movw	r2, #6000	; 0x1770
2000007e:	2100      	movs	r1, #0
20000080:	4618      	mov	r0, r3
20000082:	f000 f943 	bl	2000030c <reg_init>
20000086:	2300      	movs	r3, #0
20000088:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
2000008c:	2300      	movs	r3, #0
2000008e:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000092:	2300      	movs	r3, #0
20000094:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
20000098:	e018      	b.n	200000cc <main+0xcc>
2000009a:	f000 fe0d 	bl	20000cb8 <adc_dma_wait>
2000009e:	4b54      	ldr	r3, [pc, #336]	; (200001f0 <main+0x1f0>)
200000a0:	685b      	ldr	r3, [r3, #4]
200000a2:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000a6:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000aa:	4413      	add	r3, r2
200000ac:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
200000b0:	4b4f      	ldr	r3, [pc, #316]	; (200001f0 <main+0x1f0>)
200000b2:	681b      	ldr	r3, [r3, #0]
200000b4:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000b8:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
200000bc:	4413      	add	r3, r2
200000be:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
200000c2:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
200000c6:	3301      	adds	r3, #1
200000c8:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
200000cc:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
200000d0:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
200000d4:	dbe1      	blt.n	2000009a <main+0x9a>
200000d6:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000da:	129b      	asrs	r3, r3, #10
200000dc:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
200000e0:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
200000e4:	129b      	asrs	r3, r3, #10
200000e6:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
200000ea:	f000 fde5 	bl	20000cb8 <adc_dma_wait>
200000ee:	4b40      	ldr	r3, [pc, #256]	; (200001f0 <main+0x1f0>)
200000f0:	685b      	ldr	r3, [r3, #4]
200000f2:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000f6:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000fa:	1ad3      	subs	r3, r2, r3
200000fc:	673b      	str	r3, [r7, #112]	; 0x70
200000fe:	4b3c      	ldr	r3, [pc, #240]	; (200001f0 <main+0x1f0>)
20000100:	681b      	ldr	r3, [r3, #0]
20000102:	f3c3 020b 	ubfx	r2, r3, #0, #12
20000106:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
2000010a:	1ad3      	subs	r3, r2, r3
2000010c:	66fb      	str	r3, [r7, #108]	; 0x6c
2000010e:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20000110:	425a      	negs	r2, r3
20000112:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20000114:	1ad3      	subs	r3, r2, r3
20000116:	66bb      	str	r3, [r7, #104]	; 0x68
20000118:	4b36      	ldr	r3, [pc, #216]	; (200001f4 <main+0x1f4>)
2000011a:	689b      	ldr	r3, [r3, #8]
2000011c:	4618      	mov	r0, r3
2000011e:	f001 f887 	bl	20001230 <encoder_crc>
20000122:	6678      	str	r0, [r7, #100]	; 0x64
20000124:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20000126:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000012a:	677b      	str	r3, [r7, #116]	; 0x74
2000012c:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
20000130:	3301      	adds	r3, #1
20000132:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
20000136:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
2000013a:	f003 0307 	and.w	r3, r3, #7
2000013e:	2b00      	cmp	r3, #0
20000140:	d107      	bne.n	20000152 <main+0x152>
20000142:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20000144:	f107 0218 	add.w	r2, r7, #24
20000148:	4611      	mov	r1, r2
2000014a:	4618      	mov	r0, r3
2000014c:	f000 fc9c 	bl	20000a88 <get_speed>
20000150:	67f8      	str	r0, [r7, #124]	; 0x7c
20000152:	23c8      	movs	r3, #200	; 0xc8
20000154:	67bb      	str	r3, [r7, #120]	; 0x78
20000156:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20000158:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000015c:	677b      	str	r3, [r7, #116]	; 0x74
2000015e:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20000160:	425b      	negs	r3, r3
20000162:	607b      	str	r3, [r7, #4]
20000164:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20000166:	425b      	negs	r3, r3
20000168:	60bb      	str	r3, [r7, #8]
2000016a:	6efb      	ldr	r3, [r7, #108]	; 0x6c
2000016c:	425b      	negs	r3, r3
2000016e:	60fb      	str	r3, [r7, #12]
20000170:	6f7a      	ldr	r2, [r7, #116]	; 0x74
20000172:	f107 0110 	add.w	r1, r7, #16
20000176:	1d3b      	adds	r3, r7, #4
20000178:	4618      	mov	r0, r3
2000017a:	f000 f8f3 	bl	20000364 <abc_to_dq>
2000017e:	693b      	ldr	r3, [r7, #16]
20000180:	425b      	negs	r3, r3
20000182:	663b      	str	r3, [r7, #96]	; 0x60
20000184:	697b      	ldr	r3, [r7, #20]
20000186:	6fba      	ldr	r2, [r7, #120]	; 0x78
20000188:	1ad3      	subs	r3, r2, r3
2000018a:	65fb      	str	r3, [r7, #92]	; 0x5c
2000018c:	697b      	ldr	r3, [r7, #20]
2000018e:	009b      	lsls	r3, r3, #2
20000190:	4618      	mov	r0, r3
20000192:	f000 f899 	bl	200002c8 <debug_signal>
20000196:	f107 034c 	add.w	r3, r7, #76	; 0x4c
2000019a:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
2000019e:	6e39      	ldr	r1, [r7, #96]	; 0x60
200001a0:	4618      	mov	r0, r3
200001a2:	f000 f8b9 	bl	20000318 <reg_update>
200001a6:	f107 033c 	add.w	r3, r7, #60	; 0x3c
200001aa:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
200001ae:	6df9      	ldr	r1, [r7, #92]	; 0x5c
200001b0:	4618      	mov	r0, r3
200001b2:	f000 f8b1 	bl	20000318 <reg_update>
200001b6:	6dbb      	ldr	r3, [r7, #88]	; 0x58
200001b8:	109b      	asrs	r3, r3, #2
200001ba:	613b      	str	r3, [r7, #16]
200001bc:	6cbb      	ldr	r3, [r7, #72]	; 0x48
200001be:	109b      	asrs	r3, r3, #2
200001c0:	617b      	str	r3, [r7, #20]
200001c2:	6f7a      	ldr	r2, [r7, #116]	; 0x74
200001c4:	f107 0110 	add.w	r1, r7, #16
200001c8:	1d3b      	adds	r3, r7, #4
200001ca:	4618      	mov	r0, r3
200001cc:	f000 fae2 	bl	20000794 <svpwm>
200001d0:	f8c7 0084 	str.w	r0, [r7, #132]	; 0x84
200001d4:	687b      	ldr	r3, [r7, #4]
200001d6:	4618      	mov	r0, r3
200001d8:	f000 f846 	bl	20000268 <pwm_seta>
200001dc:	68bb      	ldr	r3, [r7, #8]
200001de:	4618      	mov	r0, r3
200001e0:	f000 f852 	bl	20000288 <pwm_setb>
200001e4:	68fb      	ldr	r3, [r7, #12]
200001e6:	4618      	mov	r0, r3
200001e8:	f000 f85e 	bl	200002a8 <pwm_setc>
200001ec:	e77d      	b.n	200000ea <main+0xea>
200001ee:	bf00      	nop
200001f0:	20002a00 	.word	0x20002a00
200001f4:	40040000 	.word	0x40040000

200001f8 <encoder_start>:
200001f8:	b480      	push	{r7}
200001fa:	af00      	add	r7, sp, #0
200001fc:	4b03      	ldr	r3, [pc, #12]	; (2000020c <encoder_start+0x14>)
200001fe:	f240 5255 	movw	r2, #1365	; 0x555
20000202:	609a      	str	r2, [r3, #8]
20000204:	bf00      	nop
20000206:	46bd      	mov	sp, r7
20000208:	bc80      	pop	{r7}
2000020a:	4770      	bx	lr
2000020c:	40040000 	.word	0x40040000

20000210 <dac_init>:
20000210:	b480      	push	{r7}
20000212:	af00      	add	r7, sp, #0
20000214:	4a07      	ldr	r2, [pc, #28]	; (20000234 <dac_init+0x24>)
20000216:	4b07      	ldr	r3, [pc, #28]	; (20000234 <dac_init+0x24>)
20000218:	69db      	ldr	r3, [r3, #28]
2000021a:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
2000021e:	61d3      	str	r3, [r2, #28]
20000220:	4a05      	ldr	r2, [pc, #20]	; (20000238 <dac_init+0x28>)
20000222:	4b05      	ldr	r3, [pc, #20]	; (20000238 <dac_init+0x28>)
20000224:	681b      	ldr	r3, [r3, #0]
20000226:	f043 0308 	orr.w	r3, r3, #8
2000022a:	6013      	str	r3, [r2, #0]
2000022c:	bf00      	nop
2000022e:	46bd      	mov	sp, r7
20000230:	bc80      	pop	{r7}
20000232:	4770      	bx	lr
20000234:	40020000 	.word	0x40020000
20000238:	40090000 	.word	0x40090000

2000023c <TIMER3_Handler>:
2000023c:	b580      	push	{r7, lr}
2000023e:	af00      	add	r7, sp, #0
20000240:	4a07      	ldr	r2, [pc, #28]	; (20000260 <TIMER3_Handler+0x24>)
20000242:	4b07      	ldr	r3, [pc, #28]	; (20000260 <TIMER3_Handler+0x24>)
20000244:	681b      	ldr	r3, [r3, #0]
20000246:	f083 0301 	eor.w	r3, r3, #1
2000024a:	6013      	str	r3, [r2, #0]
2000024c:	4b05      	ldr	r3, [pc, #20]	; (20000264 <TIMER3_Handler+0x28>)
2000024e:	2200      	movs	r2, #0
20000250:	655a      	str	r2, [r3, #84]	; 0x54
20000252:	f7ff ffd1 	bl	200001f8 <encoder_start>
20000256:	f000 fd1b 	bl	20000c90 <adc_dma_start>
2000025a:	bf00      	nop
2000025c:	bd80      	pop	{r7, pc}
2000025e:	bf00      	nop
20000260:	400a8000 	.word	0x400a8000
20000264:	40080000 	.word	0x40080000

20000268 <pwm_seta>:
20000268:	b480      	push	{r7}
2000026a:	b083      	sub	sp, #12
2000026c:	af00      	add	r7, sp, #0
2000026e:	6078      	str	r0, [r7, #4]
20000270:	4a04      	ldr	r2, [pc, #16]	; (20000284 <pwm_seta+0x1c>)
20000272:	687b      	ldr	r3, [r7, #4]
20000274:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000278:	6113      	str	r3, [r2, #16]
2000027a:	bf00      	nop
2000027c:	370c      	adds	r7, #12
2000027e:	46bd      	mov	sp, r7
20000280:	bc80      	pop	{r7}
20000282:	4770      	bx	lr
20000284:	40080000 	.word	0x40080000

20000288 <pwm_setb>:
20000288:	b480      	push	{r7}
2000028a:	b083      	sub	sp, #12
2000028c:	af00      	add	r7, sp, #0
2000028e:	6078      	str	r0, [r7, #4]
20000290:	4a04      	ldr	r2, [pc, #16]	; (200002a4 <pwm_setb+0x1c>)
20000292:	687b      	ldr	r3, [r7, #4]
20000294:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000298:	6153      	str	r3, [r2, #20]
2000029a:	bf00      	nop
2000029c:	370c      	adds	r7, #12
2000029e:	46bd      	mov	sp, r7
200002a0:	bc80      	pop	{r7}
200002a2:	4770      	bx	lr
200002a4:	40080000 	.word	0x40080000

200002a8 <pwm_setc>:
200002a8:	b480      	push	{r7}
200002aa:	b083      	sub	sp, #12
200002ac:	af00      	add	r7, sp, #0
200002ae:	6078      	str	r0, [r7, #4]
200002b0:	4a04      	ldr	r2, [pc, #16]	; (200002c4 <pwm_setc+0x1c>)
200002b2:	687b      	ldr	r3, [r7, #4]
200002b4:	f503 7300 	add.w	r3, r3, #512	; 0x200
200002b8:	6193      	str	r3, [r2, #24]
200002ba:	bf00      	nop
200002bc:	370c      	adds	r7, #12
200002be:	46bd      	mov	sp, r7
200002c0:	bc80      	pop	{r7}
200002c2:	4770      	bx	lr
200002c4:	40080000 	.word	0x40080000

200002c8 <debug_signal>:
200002c8:	b480      	push	{r7}
200002ca:	b083      	sub	sp, #12
200002cc:	af00      	add	r7, sp, #0
200002ce:	6078      	str	r0, [r7, #4]
200002d0:	4a04      	ldr	r2, [pc, #16]	; (200002e4 <debug_signal+0x1c>)
200002d2:	687b      	ldr	r3, [r7, #4]
200002d4:	f503 6300 	add.w	r3, r3, #2048	; 0x800
200002d8:	6093      	str	r3, [r2, #8]
200002da:	bf00      	nop
200002dc:	370c      	adds	r7, #12
200002de:	46bd      	mov	sp, r7
200002e0:	bc80      	pop	{r7}
200002e2:	4770      	bx	lr
200002e4:	40090000 	.word	0x40090000

200002e8 <mycos>:
200002e8:	4b02      	ldr	r3, [pc, #8]	; (200002f4 <mycos+0xc>)
200002ea:	f3c0 0009 	ubfx	r0, r0, #0, #10
200002ee:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
200002f2:	4770      	bx	lr
200002f4:	200012c4 	.word	0x200012c4

200002f8 <mysin>:
200002f8:	4b03      	ldr	r3, [pc, #12]	; (20000308 <mysin+0x10>)
200002fa:	f500 7040 	add.w	r0, r0, #768	; 0x300
200002fe:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000302:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000306:	4770      	bx	lr
20000308:	200012c4 	.word	0x200012c4

2000030c <reg_init>:
2000030c:	2300      	movs	r3, #0
2000030e:	e880 000e 	stmia.w	r0, {r1, r2, r3}
20000312:	60c3      	str	r3, [r0, #12]
20000314:	4770      	bx	lr
20000316:	bf00      	nop

20000318 <reg_update>:
20000318:	6803      	ldr	r3, [r0, #0]
2000031a:	b410      	push	{r4}
2000031c:	fb03 f301 	mul.w	r3, r3, r1
20000320:	6884      	ldr	r4, [r0, #8]
20000322:	b11a      	cbz	r2, 2000032c <reg_update+0x14>
20000324:	2c00      	cmp	r4, #0
20000326:	dd09      	ble.n	2000033c <reg_update+0x24>
20000328:	ea03 73e3 	and.w	r3, r3, r3, asr #31
2000032c:	6842      	ldr	r2, [r0, #4]
2000032e:	4423      	add	r3, r4
20000330:	fb02 3101 	mla	r1, r2, r1, r3
20000334:	6083      	str	r3, [r0, #8]
20000336:	60c1      	str	r1, [r0, #12]
20000338:	bc10      	pop	{r4}
2000033a:	4770      	bx	lr
2000033c:	bf18      	it	ne
2000033e:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
20000342:	e7f3      	b.n	2000032c <reg_update+0x14>

20000344 <dot3>:
20000344:	b430      	push	{r4, r5}
20000346:	684b      	ldr	r3, [r1, #4]
20000348:	6844      	ldr	r4, [r0, #4]
2000034a:	6802      	ldr	r2, [r0, #0]
2000034c:	fb03 f304 	mul.w	r3, r3, r4
20000350:	680d      	ldr	r5, [r1, #0]
20000352:	6884      	ldr	r4, [r0, #8]
20000354:	fb05 3302 	mla	r3, r5, r2, r3
20000358:	6888      	ldr	r0, [r1, #8]
2000035a:	fb00 3004 	mla	r0, r0, r4, r3
2000035e:	bc30      	pop	{r4, r5}
20000360:	4770      	bx	lr
20000362:	bf00      	nop

20000364 <abc_to_dq>:
20000364:	b4f0      	push	{r4, r5, r6, r7}
20000366:	4c1d      	ldr	r4, [pc, #116]	; (200003dc <abc_to_dq+0x78>)
20000368:	6803      	ldr	r3, [r0, #0]
2000036a:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
2000036e:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
20000372:	fb03 f306 	mul.w	r3, r3, r6
20000376:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000037a:	6847      	ldr	r7, [r0, #4]
2000037c:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000380:	f202 1655 	addw	r6, r2, #341	; 0x155
20000384:	fb07 3305 	mla	r3, r7, r5, r3
20000388:	f3c6 0509 	ubfx	r5, r6, #0, #10
2000038c:	6887      	ldr	r7, [r0, #8]
2000038e:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000392:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
20000396:	fb07 3305 	mla	r3, r7, r5, r3
2000039a:	129b      	asrs	r3, r3, #10
2000039c:	600b      	str	r3, [r1, #0]
2000039e:	f3c6 0509 	ubfx	r5, r6, #0, #10
200003a2:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
200003a6:	6843      	ldr	r3, [r0, #4]
200003a8:	f502 7540 	add.w	r5, r2, #768	; 0x300
200003ac:	fb03 f306 	mul.w	r3, r3, r6
200003b0:	f3c5 0509 	ubfx	r5, r5, #0, #10
200003b4:	6806      	ldr	r6, [r0, #0]
200003b6:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200003ba:	f202 4255 	addw	r2, r2, #1109	; 0x455
200003be:	fb06 3305 	mla	r3, r6, r5, r3
200003c2:	f3c2 0209 	ubfx	r2, r2, #0, #10
200003c6:	6880      	ldr	r0, [r0, #8]
200003c8:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
200003cc:	bcf0      	pop	{r4, r5, r6, r7}
200003ce:	fb00 3302 	mla	r3, r0, r2, r3
200003d2:	425b      	negs	r3, r3
200003d4:	129b      	asrs	r3, r3, #10
200003d6:	604b      	str	r3, [r1, #4]
200003d8:	4770      	bx	lr
200003da:	bf00      	nop
200003dc:	200012c4 	.word	0x200012c4

200003e0 <dq_to_abc>:
200003e0:	4b1d      	ldr	r3, [pc, #116]	; (20000458 <dq_to_abc+0x78>)
200003e2:	b4f0      	push	{r4, r5, r6, r7}
200003e4:	680e      	ldr	r6, [r1, #0]
200003e6:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
200003ea:	f502 7540 	add.w	r5, r2, #768	; 0x300
200003ee:	fb04 f406 	mul.w	r4, r4, r6
200003f2:	f3c5 0509 	ubfx	r5, r5, #0, #10
200003f6:	684f      	ldr	r7, [r1, #4]
200003f8:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
200003fc:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000400:	fb07 4415 	mls	r4, r7, r5, r4
20000404:	1524      	asrs	r4, r4, #20
20000406:	6004      	str	r4, [r0, #0]
20000408:	f3c6 0509 	ubfx	r5, r6, #0, #10
2000040c:	680c      	ldr	r4, [r1, #0]
2000040e:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
20000412:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
20000416:	fb04 f406 	mul.w	r4, r4, r6
2000041a:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000041e:	684f      	ldr	r7, [r1, #4]
20000420:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000424:	f202 1655 	addw	r6, r2, #341	; 0x155
20000428:	fb07 4415 	mls	r4, r7, r5, r4
2000042c:	1524      	asrs	r4, r4, #20
2000042e:	6044      	str	r4, [r0, #4]
20000430:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000434:	680c      	ldr	r4, [r1, #0]
20000436:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
2000043a:	f202 4255 	addw	r2, r2, #1109	; 0x455
2000043e:	fb04 f405 	mul.w	r4, r4, r5
20000442:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000446:	6849      	ldr	r1, [r1, #4]
20000448:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
2000044c:	fb01 4312 	mls	r3, r1, r2, r4
20000450:	bcf0      	pop	{r4, r5, r6, r7}
20000452:	151b      	asrs	r3, r3, #20
20000454:	6083      	str	r3, [r0, #8]
20000456:	4770      	bx	lr
20000458:	200012c4 	.word	0x200012c4

2000045c <cord_atan>:
2000045c:	b5f0      	push	{r4, r5, r6, r7, lr}
2000045e:	b091      	sub	sp, #68	; 0x44
20000460:	46ee      	mov	lr, sp
20000462:	4684      	mov	ip, r0
20000464:	4e56      	ldr	r6, [pc, #344]	; (200005c0 <cord_atan+0x164>)
20000466:	460d      	mov	r5, r1
20000468:	4614      	mov	r4, r2
2000046a:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2000046c:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000470:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000474:	af08      	add	r7, sp, #32
20000476:	3610      	adds	r6, #16
20000478:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
2000047c:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2000047e:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000480:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000484:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000488:	f8dc 6000 	ldr.w	r6, [ip]
2000048c:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000490:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000494:	2b00      	cmp	r3, #0
20000496:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
2000049a:	9900      	ldr	r1, [sp, #0]
2000049c:	dd56      	ble.n	2000054c <cord_atan+0xf0>
2000049e:	18d0      	adds	r0, r2, r3
200004a0:	1a9b      	subs	r3, r3, r2
200004a2:	2b00      	cmp	r3, #0
200004a4:	d07a      	beq.n	2000059c <cord_atan+0x140>
200004a6:	9f01      	ldr	r7, [sp, #4]
200004a8:	dd54      	ble.n	20000554 <cord_atan+0xf8>
200004aa:	eb00 0263 	add.w	r2, r0, r3, asr #1
200004ae:	4439      	add	r1, r7
200004b0:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200004b4:	2b00      	cmp	r3, #0
200004b6:	d073      	beq.n	200005a0 <cord_atan+0x144>
200004b8:	9f02      	ldr	r7, [sp, #8]
200004ba:	dd51      	ble.n	20000560 <cord_atan+0x104>
200004bc:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200004c0:	4439      	add	r1, r7
200004c2:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200004c6:	2b00      	cmp	r3, #0
200004c8:	d06d      	beq.n	200005a6 <cord_atan+0x14a>
200004ca:	9f03      	ldr	r7, [sp, #12]
200004cc:	dd4e      	ble.n	2000056c <cord_atan+0x110>
200004ce:	eb00 02e3 	add.w	r2, r0, r3, asr #3
200004d2:	4439      	add	r1, r7
200004d4:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
200004d8:	2b00      	cmp	r3, #0
200004da:	d066      	beq.n	200005aa <cord_atan+0x14e>
200004dc:	9f04      	ldr	r7, [sp, #16]
200004de:	dd4b      	ble.n	20000578 <cord_atan+0x11c>
200004e0:	eb02 1023 	add.w	r0, r2, r3, asr #4
200004e4:	4439      	add	r1, r7
200004e6:	eba3 1322 	sub.w	r3, r3, r2, asr #4
200004ea:	2b00      	cmp	r3, #0
200004ec:	d060      	beq.n	200005b0 <cord_atan+0x154>
200004ee:	9f05      	ldr	r7, [sp, #20]
200004f0:	dd48      	ble.n	20000584 <cord_atan+0x128>
200004f2:	eb00 1263 	add.w	r2, r0, r3, asr #5
200004f6:	4439      	add	r1, r7
200004f8:	eba3 1360 	sub.w	r3, r3, r0, asr #5
200004fc:	2b00      	cmp	r3, #0
200004fe:	d059      	beq.n	200005b4 <cord_atan+0x158>
20000500:	9f06      	ldr	r7, [sp, #24]
20000502:	dd45      	ble.n	20000590 <cord_atan+0x134>
20000504:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000508:	4439      	add	r1, r7
2000050a:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
2000050e:	2b00      	cmp	r3, #0
20000510:	d053      	beq.n	200005ba <cord_atan+0x15e>
20000512:	9a07      	ldr	r2, [sp, #28]
20000514:	bfc7      	ittee	gt
20000516:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
2000051a:	1889      	addgt	r1, r1, r2
2000051c:	1a89      	suble	r1, r1, r2
2000051e:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000522:	2207      	movs	r2, #7
20000524:	ab10      	add	r3, sp, #64	; 0x40
20000526:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000052a:	f852 3c20 	ldr.w	r3, [r2, #-32]
2000052e:	2e00      	cmp	r6, #0
20000530:	fb03 f300 	mul.w	r3, r3, r0
20000534:	bfb8      	it	lt
20000536:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
2000053a:	2900      	cmp	r1, #0
2000053c:	bfb8      	it	lt
2000053e:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000542:	129b      	asrs	r3, r3, #10
20000544:	6029      	str	r1, [r5, #0]
20000546:	6023      	str	r3, [r4, #0]
20000548:	b011      	add	sp, #68	; 0x44
2000054a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000054c:	1ad0      	subs	r0, r2, r3
2000054e:	4249      	negs	r1, r1
20000550:	4413      	add	r3, r2
20000552:	e7a6      	b.n	200004a2 <cord_atan+0x46>
20000554:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000558:	1bc9      	subs	r1, r1, r7
2000055a:	eb03 0360 	add.w	r3, r3, r0, asr #1
2000055e:	e7a9      	b.n	200004b4 <cord_atan+0x58>
20000560:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000564:	1bc9      	subs	r1, r1, r7
20000566:	eb03 03a2 	add.w	r3, r3, r2, asr #2
2000056a:	e7ac      	b.n	200004c6 <cord_atan+0x6a>
2000056c:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000570:	1bc9      	subs	r1, r1, r7
20000572:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000576:	e7af      	b.n	200004d8 <cord_atan+0x7c>
20000578:	eba2 1023 	sub.w	r0, r2, r3, asr #4
2000057c:	1bc9      	subs	r1, r1, r7
2000057e:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000582:	e7b2      	b.n	200004ea <cord_atan+0x8e>
20000584:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000588:	1bc9      	subs	r1, r1, r7
2000058a:	eb03 1360 	add.w	r3, r3, r0, asr #5
2000058e:	e7b5      	b.n	200004fc <cord_atan+0xa0>
20000590:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000594:	1bc9      	subs	r1, r1, r7
20000596:	eb03 13a2 	add.w	r3, r3, r2, asr #6
2000059a:	e7b8      	b.n	2000050e <cord_atan+0xb2>
2000059c:	461a      	mov	r2, r3
2000059e:	e7c1      	b.n	20000524 <cord_atan+0xc8>
200005a0:	4610      	mov	r0, r2
200005a2:	2201      	movs	r2, #1
200005a4:	e7be      	b.n	20000524 <cord_atan+0xc8>
200005a6:	2202      	movs	r2, #2
200005a8:	e7bc      	b.n	20000524 <cord_atan+0xc8>
200005aa:	4610      	mov	r0, r2
200005ac:	2203      	movs	r2, #3
200005ae:	e7b9      	b.n	20000524 <cord_atan+0xc8>
200005b0:	2204      	movs	r2, #4
200005b2:	e7b7      	b.n	20000524 <cord_atan+0xc8>
200005b4:	4610      	mov	r0, r2
200005b6:	2205      	movs	r2, #5
200005b8:	e7b4      	b.n	20000524 <cord_atan+0xc8>
200005ba:	2206      	movs	r2, #6
200005bc:	e7b2      	b.n	20000524 <cord_atan+0xc8>
200005be:	bf00      	nop
200005c0:	20001284 	.word	0x20001284

200005c4 <sinpwm>:
200005c4:	b5f0      	push	{r4, r5, r6, r7, lr}
200005c6:	b091      	sub	sp, #68	; 0x44
200005c8:	46ee      	mov	lr, sp
200005ca:	468c      	mov	ip, r1
200005cc:	4e6e      	ldr	r6, [pc, #440]	; (20000788 <sinpwm+0x1c4>)
200005ce:	4604      	mov	r4, r0
200005d0:	4615      	mov	r5, r2
200005d2:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200005d4:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200005d8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200005dc:	af08      	add	r7, sp, #32
200005de:	3610      	adds	r6, #16
200005e0:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200005e4:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200005e6:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200005e8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200005ec:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200005f0:	f8dc 6000 	ldr.w	r6, [ip]
200005f4:	f8dc 3004 	ldr.w	r3, [ip, #4]
200005f8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200005fc:	2b00      	cmp	r3, #0
200005fe:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000602:	9900      	ldr	r1, [sp, #0]
20000604:	f340 8087 	ble.w	20000716 <sinpwm+0x152>
20000608:	18d0      	adds	r0, r2, r3
2000060a:	1a9b      	subs	r3, r3, r2
2000060c:	2b00      	cmp	r3, #0
2000060e:	f000 80aa 	beq.w	20000766 <sinpwm+0x1a2>
20000612:	9f01      	ldr	r7, [sp, #4]
20000614:	f340 8083 	ble.w	2000071e <sinpwm+0x15a>
20000618:	eb00 0263 	add.w	r2, r0, r3, asr #1
2000061c:	4439      	add	r1, r7
2000061e:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000622:	2b00      	cmp	r3, #0
20000624:	f000 80a1 	beq.w	2000076a <sinpwm+0x1a6>
20000628:	9f02      	ldr	r7, [sp, #8]
2000062a:	dd7e      	ble.n	2000072a <sinpwm+0x166>
2000062c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000630:	4439      	add	r1, r7
20000632:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000636:	2b00      	cmp	r3, #0
20000638:	f000 809a 	beq.w	20000770 <sinpwm+0x1ac>
2000063c:	9f03      	ldr	r7, [sp, #12]
2000063e:	dd7a      	ble.n	20000736 <sinpwm+0x172>
20000640:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000644:	4439      	add	r1, r7
20000646:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
2000064a:	2b00      	cmp	r3, #0
2000064c:	f000 8092 	beq.w	20000774 <sinpwm+0x1b0>
20000650:	9f04      	ldr	r7, [sp, #16]
20000652:	dd76      	ble.n	20000742 <sinpwm+0x17e>
20000654:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000658:	4439      	add	r1, r7
2000065a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000065e:	2b00      	cmp	r3, #0
20000660:	f000 808b 	beq.w	2000077a <sinpwm+0x1b6>
20000664:	9f05      	ldr	r7, [sp, #20]
20000666:	dd72      	ble.n	2000074e <sinpwm+0x18a>
20000668:	eb00 1263 	add.w	r2, r0, r3, asr #5
2000066c:	4439      	add	r1, r7
2000066e:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000672:	2b00      	cmp	r3, #0
20000674:	f000 8083 	beq.w	2000077e <sinpwm+0x1ba>
20000678:	9f06      	ldr	r7, [sp, #24]
2000067a:	dd6e      	ble.n	2000075a <sinpwm+0x196>
2000067c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000680:	4439      	add	r1, r7
20000682:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000686:	2b00      	cmp	r3, #0
20000688:	d07c      	beq.n	20000784 <sinpwm+0x1c0>
2000068a:	9a07      	ldr	r2, [sp, #28]
2000068c:	bfc7      	ittee	gt
2000068e:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000692:	1889      	addgt	r1, r1, r2
20000694:	1a89      	suble	r1, r1, r2
20000696:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
2000069a:	2207      	movs	r2, #7
2000069c:	ab10      	add	r3, sp, #64	; 0x40
2000069e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
200006a2:	f852 3c20 	ldr.w	r3, [r2, #-32]
200006a6:	2e00      	cmp	r6, #0
200006a8:	fb03 f300 	mul.w	r3, r3, r0
200006ac:	bfb8      	it	lt
200006ae:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
200006b2:	2900      	cmp	r1, #0
200006b4:	bfb8      	it	lt
200006b6:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
200006ba:	151b      	asrs	r3, r3, #20
200006bc:	440d      	add	r5, r1
200006be:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
200006c2:	f3c5 0509 	ubfx	r5, r5, #0, #10
200006c6:	dd22      	ble.n	2000070e <sinpwm+0x14a>
200006c8:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 20000790 <sinpwm+0x1cc>
200006cc:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
200006d0:	2001      	movs	r0, #1
200006d2:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
200006d6:	4f2d      	ldr	r7, [pc, #180]	; (2000078c <sinpwm+0x1c8>)
200006d8:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
200006dc:	3602      	adds	r6, #2
200006de:	f3ce 0e09 	ubfx	lr, lr, #0, #10
200006e2:	f3c6 0609 	ubfx	r6, r6, #0, #10
200006e6:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
200006ea:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
200006ee:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
200006f2:	fb06 f50c 	mul.w	r5, r6, ip
200006f6:	fb01 f10c 	mul.w	r1, r1, ip
200006fa:	fb02 f303 	mul.w	r3, r2, r3
200006fe:	12ad      	asrs	r5, r5, #10
20000700:	128a      	asrs	r2, r1, #10
20000702:	129b      	asrs	r3, r3, #10
20000704:	60a5      	str	r5, [r4, #8]
20000706:	6062      	str	r2, [r4, #4]
20000708:	6023      	str	r3, [r4, #0]
2000070a:	b011      	add	sp, #68	; 0x44
2000070c:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000070e:	f1c3 0c00 	rsb	ip, r3, #0
20000712:	2000      	movs	r0, #0
20000714:	e7dd      	b.n	200006d2 <sinpwm+0x10e>
20000716:	1ad0      	subs	r0, r2, r3
20000718:	4249      	negs	r1, r1
2000071a:	4413      	add	r3, r2
2000071c:	e776      	b.n	2000060c <sinpwm+0x48>
2000071e:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000722:	1bc9      	subs	r1, r1, r7
20000724:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000728:	e77b      	b.n	20000622 <sinpwm+0x5e>
2000072a:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
2000072e:	1bc9      	subs	r1, r1, r7
20000730:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000734:	e77f      	b.n	20000636 <sinpwm+0x72>
20000736:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
2000073a:	1bc9      	subs	r1, r1, r7
2000073c:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000740:	e783      	b.n	2000064a <sinpwm+0x86>
20000742:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000746:	1bc9      	subs	r1, r1, r7
20000748:	eb03 1322 	add.w	r3, r3, r2, asr #4
2000074c:	e787      	b.n	2000065e <sinpwm+0x9a>
2000074e:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000752:	1bc9      	subs	r1, r1, r7
20000754:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000758:	e78b      	b.n	20000672 <sinpwm+0xae>
2000075a:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
2000075e:	1bc9      	subs	r1, r1, r7
20000760:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000764:	e78f      	b.n	20000686 <sinpwm+0xc2>
20000766:	461a      	mov	r2, r3
20000768:	e798      	b.n	2000069c <sinpwm+0xd8>
2000076a:	4610      	mov	r0, r2
2000076c:	2201      	movs	r2, #1
2000076e:	e795      	b.n	2000069c <sinpwm+0xd8>
20000770:	2202      	movs	r2, #2
20000772:	e793      	b.n	2000069c <sinpwm+0xd8>
20000774:	4610      	mov	r0, r2
20000776:	2203      	movs	r2, #3
20000778:	e790      	b.n	2000069c <sinpwm+0xd8>
2000077a:	2204      	movs	r2, #4
2000077c:	e78e      	b.n	2000069c <sinpwm+0xd8>
2000077e:	4610      	mov	r0, r2
20000780:	2205      	movs	r2, #5
20000782:	e78b      	b.n	2000069c <sinpwm+0xd8>
20000784:	2206      	movs	r2, #6
20000786:	e789      	b.n	2000069c <sinpwm+0xd8>
20000788:	20001284 	.word	0x20001284
2000078c:	200012c4 	.word	0x200012c4
20000790:	fffffe0c 	.word	0xfffffe0c

20000794 <svpwm>:
20000794:	b5f0      	push	{r4, r5, r6, r7, lr}
20000796:	b091      	sub	sp, #68	; 0x44
20000798:	46ee      	mov	lr, sp
2000079a:	468c      	mov	ip, r1
2000079c:	4eb8      	ldr	r6, [pc, #736]	; (20000a80 <svpwm+0x2ec>)
2000079e:	4604      	mov	r4, r0
200007a0:	4615      	mov	r5, r2
200007a2:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200007a4:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200007a8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200007ac:	af08      	add	r7, sp, #32
200007ae:	3610      	adds	r6, #16
200007b0:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200007b4:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200007b6:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200007b8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200007bc:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200007c0:	f8dc 6000 	ldr.w	r6, [ip]
200007c4:	f8dc 3004 	ldr.w	r3, [ip, #4]
200007c8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200007cc:	2b00      	cmp	r3, #0
200007ce:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200007d2:	9900      	ldr	r1, [sp, #0]
200007d4:	dd6f      	ble.n	200008b6 <svpwm+0x122>
200007d6:	18d0      	adds	r0, r2, r3
200007d8:	1a9b      	subs	r3, r3, r2
200007da:	2b00      	cmp	r3, #0
200007dc:	f000 813f 	beq.w	20000a5e <svpwm+0x2ca>
200007e0:	9f01      	ldr	r7, [sp, #4]
200007e2:	dd6c      	ble.n	200008be <svpwm+0x12a>
200007e4:	eb00 0263 	add.w	r2, r0, r3, asr #1
200007e8:	4439      	add	r1, r7
200007ea:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200007ee:	2b00      	cmp	r3, #0
200007f0:	f000 8137 	beq.w	20000a62 <svpwm+0x2ce>
200007f4:	9f02      	ldr	r7, [sp, #8]
200007f6:	dd68      	ble.n	200008ca <svpwm+0x136>
200007f8:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200007fc:	4439      	add	r1, r7
200007fe:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000802:	2b00      	cmp	r3, #0
20000804:	f000 8130 	beq.w	20000a68 <svpwm+0x2d4>
20000808:	9f03      	ldr	r7, [sp, #12]
2000080a:	dd64      	ble.n	200008d6 <svpwm+0x142>
2000080c:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000810:	4439      	add	r1, r7
20000812:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000816:	2b00      	cmp	r3, #0
20000818:	f000 8128 	beq.w	20000a6c <svpwm+0x2d8>
2000081c:	9f04      	ldr	r7, [sp, #16]
2000081e:	dd60      	ble.n	200008e2 <svpwm+0x14e>
20000820:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000824:	4439      	add	r1, r7
20000826:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000082a:	2b00      	cmp	r3, #0
2000082c:	f000 8121 	beq.w	20000a72 <svpwm+0x2de>
20000830:	9f05      	ldr	r7, [sp, #20]
20000832:	dd5c      	ble.n	200008ee <svpwm+0x15a>
20000834:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000838:	4439      	add	r1, r7
2000083a:	eba3 1360 	sub.w	r3, r3, r0, asr #5
2000083e:	2b00      	cmp	r3, #0
20000840:	f000 8119 	beq.w	20000a76 <svpwm+0x2e2>
20000844:	9f06      	ldr	r7, [sp, #24]
20000846:	dd58      	ble.n	200008fa <svpwm+0x166>
20000848:	eb02 10a3 	add.w	r0, r2, r3, asr #6
2000084c:	4439      	add	r1, r7
2000084e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000852:	2b00      	cmp	r3, #0
20000854:	f000 8112 	beq.w	20000a7c <svpwm+0x2e8>
20000858:	9a07      	ldr	r2, [sp, #28]
2000085a:	bfc7      	ittee	gt
2000085c:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000860:	1889      	addgt	r1, r1, r2
20000862:	1a89      	suble	r1, r1, r2
20000864:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000868:	2207      	movs	r2, #7
2000086a:	ab10      	add	r3, sp, #64	; 0x40
2000086c:	2e00      	cmp	r6, #0
2000086e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000872:	bfb8      	it	lt
20000874:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000878:	f852 3c20 	ldr.w	r3, [r2, #-32]
2000087c:	2900      	cmp	r1, #0
2000087e:	fb03 f300 	mul.w	r3, r3, r0
20000882:	bfb8      	it	lt
20000884:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000888:	440d      	add	r5, r1
2000088a:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000088e:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20000892:	151b      	asrs	r3, r3, #20
20000894:	1252      	asrs	r2, r2, #9
20000896:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
2000089a:	f102 32ff 	add.w	r2, r2, #4294967295
2000089e:	bfc6      	itte	gt
200008a0:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
200008a4:	2001      	movgt	r0, #1
200008a6:	2000      	movle	r0, #0
200008a8:	2a04      	cmp	r2, #4
200008aa:	d848      	bhi.n	2000093e <svpwm+0x1aa>
200008ac:	e8df f002 	tbb	[pc, r2]
200008b0:	2b9e8164 	.word	0x2b9e8164
200008b4:	bb          	.byte	0xbb
200008b5:	00          	.byte	0x00
200008b6:	1ad0      	subs	r0, r2, r3
200008b8:	4249      	negs	r1, r1
200008ba:	4413      	add	r3, r2
200008bc:	e78d      	b.n	200007da <svpwm+0x46>
200008be:	eba0 0263 	sub.w	r2, r0, r3, asr #1
200008c2:	1bc9      	subs	r1, r1, r7
200008c4:	eb03 0360 	add.w	r3, r3, r0, asr #1
200008c8:	e791      	b.n	200007ee <svpwm+0x5a>
200008ca:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
200008ce:	1bc9      	subs	r1, r1, r7
200008d0:	eb03 03a2 	add.w	r3, r3, r2, asr #2
200008d4:	e795      	b.n	20000802 <svpwm+0x6e>
200008d6:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
200008da:	1bc9      	subs	r1, r1, r7
200008dc:	eb03 03e0 	add.w	r3, r3, r0, asr #3
200008e0:	e799      	b.n	20000816 <svpwm+0x82>
200008e2:	eba2 1023 	sub.w	r0, r2, r3, asr #4
200008e6:	1bc9      	subs	r1, r1, r7
200008e8:	eb03 1322 	add.w	r3, r3, r2, asr #4
200008ec:	e79d      	b.n	2000082a <svpwm+0x96>
200008ee:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200008f2:	1bc9      	subs	r1, r1, r7
200008f4:	eb03 1360 	add.w	r3, r3, r0, asr #5
200008f8:	e7a1      	b.n	2000083e <svpwm+0xaa>
200008fa:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
200008fe:	1bc9      	subs	r1, r1, r7
20000900:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000904:	e7a5      	b.n	20000852 <svpwm+0xbe>
20000906:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
2000090a:	4e5e      	ldr	r6, [pc, #376]	; (20000a84 <svpwm+0x2f0>)
2000090c:	3204      	adds	r2, #4
2000090e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000912:	3556      	adds	r5, #86	; 0x56
20000914:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000918:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000091c:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000920:	fb01 f103 	mul.w	r1, r1, r3
20000924:	fb02 f203 	mul.w	r2, r2, r3
20000928:	1289      	asrs	r1, r1, #10
2000092a:	1293      	asrs	r3, r2, #10
2000092c:	424a      	negs	r2, r1
2000092e:	1ad2      	subs	r2, r2, r3
20000930:	1a5d      	subs	r5, r3, r1
20000932:	440b      	add	r3, r1
20000934:	6062      	str	r2, [r4, #4]
20000936:	6025      	str	r5, [r4, #0]
20000938:	60a3      	str	r3, [r4, #8]
2000093a:	b011      	add	sp, #68	; 0x44
2000093c:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000093e:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000942:	4e50      	ldr	r6, [pc, #320]	; (20000a84 <svpwm+0x2f0>)
20000944:	3202      	adds	r2, #2
20000946:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000094a:	f505 7540 	add.w	r5, r5, #768	; 0x300
2000094e:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000952:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000956:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
2000095a:	fb01 f103 	mul.w	r1, r1, r3
2000095e:	fb02 f203 	mul.w	r2, r2, r3
20000962:	1289      	asrs	r1, r1, #10
20000964:	1293      	asrs	r3, r2, #10
20000966:	424a      	negs	r2, r1
20000968:	1ad2      	subs	r2, r2, r3
2000096a:	18cd      	adds	r5, r1, r3
2000096c:	1a5b      	subs	r3, r3, r1
2000096e:	60a2      	str	r2, [r4, #8]
20000970:	6025      	str	r5, [r4, #0]
20000972:	6063      	str	r3, [r4, #4]
20000974:	b011      	add	sp, #68	; 0x44
20000976:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000978:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
2000097c:	4e41      	ldr	r6, [pc, #260]	; (20000a84 <svpwm+0x2f0>)
2000097e:	3204      	adds	r2, #4
20000980:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000984:	f205 2556 	addw	r5, r5, #598	; 0x256
20000988:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
2000098c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000990:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000994:	fb01 f103 	mul.w	r1, r1, r3
20000998:	fb02 f203 	mul.w	r2, r2, r3
2000099c:	1289      	asrs	r1, r1, #10
2000099e:	1293      	asrs	r3, r2, #10
200009a0:	424a      	negs	r2, r1
200009a2:	1ad2      	subs	r2, r2, r3
200009a4:	1acd      	subs	r5, r1, r3
200009a6:	440b      	add	r3, r1
200009a8:	60a2      	str	r2, [r4, #8]
200009aa:	6025      	str	r5, [r4, #0]
200009ac:	6063      	str	r3, [r4, #4]
200009ae:	b011      	add	sp, #68	; 0x44
200009b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
200009b2:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
200009b6:	4e33      	ldr	r6, [pc, #204]	; (20000a84 <svpwm+0x2f0>)
200009b8:	320f      	adds	r2, #15
200009ba:	f3c2 0209 	ubfx	r2, r2, #0, #10
200009be:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
200009c2:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
200009c6:	f3c5 0509 	ubfx	r5, r5, #0, #10
200009ca:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
200009ce:	fb01 f103 	mul.w	r1, r1, r3
200009d2:	fb02 f203 	mul.w	r2, r2, r3
200009d6:	1289      	asrs	r1, r1, #10
200009d8:	1293      	asrs	r3, r2, #10
200009da:	424a      	negs	r2, r1
200009dc:	1ad2      	subs	r2, r2, r3
200009de:	18cd      	adds	r5, r1, r3
200009e0:	1a5b      	subs	r3, r3, r1
200009e2:	e884 0024 	stmia.w	r4, {r2, r5}
200009e6:	60a3      	str	r3, [r4, #8]
200009e8:	b011      	add	sp, #68	; 0x44
200009ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
200009ec:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
200009f0:	4e24      	ldr	r6, [pc, #144]	; (20000a84 <svpwm+0x2f0>)
200009f2:	320a      	adds	r2, #10
200009f4:	f3c2 0209 	ubfx	r2, r2, #0, #10
200009f8:	f505 7580 	add.w	r5, r5, #256	; 0x100
200009fc:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000a00:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000a04:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000a08:	fb01 f103 	mul.w	r1, r1, r3
20000a0c:	fb02 f203 	mul.w	r2, r2, r3
20000a10:	1289      	asrs	r1, r1, #10
20000a12:	1293      	asrs	r3, r2, #10
20000a14:	424a      	negs	r2, r1
20000a16:	1ad2      	subs	r2, r2, r3
20000a18:	1acd      	subs	r5, r1, r3
20000a1a:	440b      	add	r3, r1
20000a1c:	e884 0024 	stmia.w	r4, {r2, r5}
20000a20:	60a3      	str	r3, [r4, #8]
20000a22:	b011      	add	sp, #68	; 0x44
20000a24:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000a26:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000a2a:	4916      	ldr	r1, [pc, #88]	; (20000a84 <svpwm+0x2f0>)
20000a2c:	320f      	adds	r2, #15
20000a2e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000a32:	3d55      	subs	r5, #85	; 0x55
20000a34:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000a38:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000a3c:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000a40:	fb02 f203 	mul.w	r2, r2, r3
20000a44:	fb01 f303 	mul.w	r3, r1, r3
20000a48:	1292      	asrs	r2, r2, #10
20000a4a:	129b      	asrs	r3, r3, #10
20000a4c:	4251      	negs	r1, r2
20000a4e:	18d5      	adds	r5, r2, r3
20000a50:	1ac9      	subs	r1, r1, r3
20000a52:	1ad2      	subs	r2, r2, r3
20000a54:	6061      	str	r1, [r4, #4]
20000a56:	6025      	str	r5, [r4, #0]
20000a58:	60a2      	str	r2, [r4, #8]
20000a5a:	b011      	add	sp, #68	; 0x44
20000a5c:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000a5e:	461a      	mov	r2, r3
20000a60:	e703      	b.n	2000086a <svpwm+0xd6>
20000a62:	4610      	mov	r0, r2
20000a64:	2201      	movs	r2, #1
20000a66:	e700      	b.n	2000086a <svpwm+0xd6>
20000a68:	2202      	movs	r2, #2
20000a6a:	e6fe      	b.n	2000086a <svpwm+0xd6>
20000a6c:	4610      	mov	r0, r2
20000a6e:	2203      	movs	r2, #3
20000a70:	e6fb      	b.n	2000086a <svpwm+0xd6>
20000a72:	2204      	movs	r2, #4
20000a74:	e6f9      	b.n	2000086a <svpwm+0xd6>
20000a76:	4610      	mov	r0, r2
20000a78:	2205      	movs	r2, #5
20000a7a:	e6f6      	b.n	2000086a <svpwm+0xd6>
20000a7c:	2206      	movs	r2, #6
20000a7e:	e6f4      	b.n	2000086a <svpwm+0xd6>
20000a80:	20001284 	.word	0x20001284
20000a84:	200012c4 	.word	0x200012c4

20000a88 <get_speed>:
20000a88:	4a0e      	ldr	r2, [pc, #56]	; (20000ac4 <get_speed+0x3c>)
20000a8a:	b430      	push	{r4, r5}
20000a8c:	e892 0028 	ldmia.w	r2, {r3, r5}
20000a90:	1ac3      	subs	r3, r0, r3
20000a92:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20000a96:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
20000a9a:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
20000a9e:	6015      	str	r5, [r2, #0]
20000aa0:	6050      	str	r0, [r2, #4]
20000aa2:	dd05      	ble.n	20000ab0 <get_speed+0x28>
20000aa4:	2b00      	cmp	r3, #0
20000aa6:	bfb4      	ite	lt
20000aa8:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
20000aac:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20000ab0:	4a05      	ldr	r2, [pc, #20]	; (20000ac8 <get_speed+0x40>)
20000ab2:	1058      	asrs	r0, r3, #1
20000ab4:	fb02 f000 	mul.w	r0, r2, r0
20000ab8:	bc30      	pop	{r4, r5}
20000aba:	680a      	ldr	r2, [r1, #0]
20000abc:	1300      	asrs	r0, r0, #12
20000abe:	4413      	add	r3, r2
20000ac0:	600b      	str	r3, [r1, #0]
20000ac2:	4770      	bx	lr
20000ac4:	20002300 	.word	0x20002300
20000ac8:	0002ae7c 	.word	0x0002ae7c

20000acc <mfilter>:
20000acc:	4908      	ldr	r1, [pc, #32]	; (20000af0 <mfilter+0x24>)
20000ace:	b430      	push	{r4, r5}
20000ad0:	688a      	ldr	r2, [r1, #8]
20000ad2:	68cb      	ldr	r3, [r1, #12]
20000ad4:	3201      	adds	r2, #1
20000ad6:	f002 021f 	and.w	r2, r2, #31
20000ada:	eb01 0482 	add.w	r4, r1, r2, lsl #2
20000ade:	6925      	ldr	r5, [r4, #16]
20000ae0:	608a      	str	r2, [r1, #8]
20000ae2:	1b5b      	subs	r3, r3, r5
20000ae4:	4403      	add	r3, r0
20000ae6:	6120      	str	r0, [r4, #16]
20000ae8:	60cb      	str	r3, [r1, #12]
20000aea:	1158      	asrs	r0, r3, #5
20000aec:	bc30      	pop	{r4, r5}
20000aee:	4770      	bx	lr
20000af0:	20002300 	.word	0x20002300

20000af4 <rfilter1>:
20000af4:	b470      	push	{r4, r5, r6}
20000af6:	f240 74c6 	movw	r4, #1990	; 0x7c6
20000afa:	4b12      	ldr	r3, [pc, #72]	; (20000b44 <rfilter1+0x50>)
20000afc:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20000b00:	f8d3 6090 	ldr.w	r6, [r3, #144]	; 0x90
20000b04:	f8d3 1098 	ldr.w	r1, [r3, #152]	; 0x98
20000b08:	fb04 f406 	mul.w	r4, r4, r6
20000b0c:	fb02 4201 	mla	r2, r2, r1, r4
20000b10:	490d      	ldr	r1, [pc, #52]	; (20000b48 <rfilter1+0x54>)
20000b12:	f8d3 5094 	ldr.w	r5, [r3, #148]	; 0x94
20000b16:	fb01 2200 	mla	r2, r1, r0, r2
20000b1a:	4c0c      	ldr	r4, [pc, #48]	; (20000b4c <rfilter1+0x58>)
20000b1c:	f8d3 109c 	ldr.w	r1, [r3, #156]	; 0x9c
20000b20:	fb04 2205 	mla	r2, r4, r5, r2
20000b24:	4c0a      	ldr	r4, [pc, #40]	; (20000b50 <rfilter1+0x5c>)
20000b26:	f8c3 6098 	str.w	r6, [r3, #152]	; 0x98
20000b2a:	fb04 2201 	mla	r2, r4, r1, r2
20000b2e:	1291      	asrs	r1, r2, #10
20000b30:	f8c3 0094 	str.w	r0, [r3, #148]	; 0x94
20000b34:	f8c3 509c 	str.w	r5, [r3, #156]	; 0x9c
20000b38:	1490      	asrs	r0, r2, #18
20000b3a:	f8c3 1090 	str.w	r1, [r3, #144]	; 0x90
20000b3e:	bc70      	pop	{r4, r5, r6}
20000b40:	4770      	bx	lr
20000b42:	bf00      	nop
20000b44:	20002300 	.word	0x20002300
20000b48:	0003f0a4 	.word	0x0003f0a4
20000b4c:	fff83a2e 	.word	0xfff83a2e
20000b50:	0003dc29 	.word	0x0003dc29

20000b54 <rfilter2>:
20000b54:	b470      	push	{r4, r5, r6}
20000b56:	f240 748a 	movw	r4, #1930	; 0x78a
20000b5a:	4b11      	ldr	r3, [pc, #68]	; (20000ba0 <rfilter2+0x4c>)
20000b5c:	4a11      	ldr	r2, [pc, #68]	; (20000ba4 <rfilter2+0x50>)
20000b5e:	f8d3 60a0 	ldr.w	r6, [r3, #160]	; 0xa0
20000b62:	f8d3 10a8 	ldr.w	r1, [r3, #168]	; 0xa8
20000b66:	fb04 f406 	mul.w	r4, r4, r6
20000b6a:	fb02 4201 	mla	r2, r2, r1, r4
20000b6e:	490e      	ldr	r1, [pc, #56]	; (20000ba8 <rfilter2+0x54>)
20000b70:	f8d3 50a4 	ldr.w	r5, [r3, #164]	; 0xa4
20000b74:	fb01 2200 	mla	r2, r1, r0, r2
20000b78:	4c0c      	ldr	r4, [pc, #48]	; (20000bac <rfilter2+0x58>)
20000b7a:	f8d3 10ac 	ldr.w	r1, [r3, #172]	; 0xac
20000b7e:	fb04 2205 	mla	r2, r4, r5, r2
20000b82:	4c0b      	ldr	r4, [pc, #44]	; (20000bb0 <rfilter2+0x5c>)
20000b84:	f8c3 60a8 	str.w	r6, [r3, #168]	; 0xa8
20000b88:	fb04 2201 	mla	r2, r4, r1, r2
20000b8c:	1291      	asrs	r1, r2, #10
20000b8e:	f8c3 00a4 	str.w	r0, [r3, #164]	; 0xa4
20000b92:	f8c3 50ac 	str.w	r5, [r3, #172]	; 0xac
20000b96:	1490      	asrs	r0, r2, #18
20000b98:	f8c3 10a0 	str.w	r1, [r3, #160]	; 0xa0
20000b9c:	bc70      	pop	{r4, r5, r6}
20000b9e:	4770      	bx	lr
20000ba0:	20002300 	.word	0x20002300
20000ba4:	fffffc66 	.word	0xfffffc66
20000ba8:	0003e3d7 	.word	0x0003e3d7
20000bac:	fff8767b 	.word	0xfff8767b
20000bb0:	0003b5c3 	.word	0x0003b5c3

20000bb4 <adc_init>:
20000bb4:	b480      	push	{r7}
20000bb6:	af00      	add	r7, sp, #0
20000bb8:	4a10      	ldr	r2, [pc, #64]	; (20000bfc <adc_init+0x48>)
20000bba:	4b10      	ldr	r3, [pc, #64]	; (20000bfc <adc_init+0x48>)
20000bbc:	69db      	ldr	r3, [r3, #28]
20000bbe:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000bc2:	61d3      	str	r3, [r2, #28]
20000bc4:	4b0d      	ldr	r3, [pc, #52]	; (20000bfc <adc_init+0x48>)
20000bc6:	f242 0220 	movw	r2, #8224	; 0x2020
20000bca:	615a      	str	r2, [r3, #20]
20000bcc:	4b0c      	ldr	r3, [pc, #48]	; (20000c00 <adc_init+0x4c>)
20000bce:	2200      	movs	r2, #0
20000bd0:	601a      	str	r2, [r3, #0]
20000bd2:	4a0b      	ldr	r2, [pc, #44]	; (20000c00 <adc_init+0x4c>)
20000bd4:	4b0a      	ldr	r3, [pc, #40]	; (20000c00 <adc_init+0x4c>)
20000bd6:	681b      	ldr	r3, [r3, #0]
20000bd8:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20000bdc:	f043 0301 	orr.w	r3, r3, #1
20000be0:	6013      	str	r3, [r2, #0]
20000be2:	4a07      	ldr	r2, [pc, #28]	; (20000c00 <adc_init+0x4c>)
20000be4:	4b06      	ldr	r3, [pc, #24]	; (20000c00 <adc_init+0x4c>)
20000be6:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20000be8:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
20000bec:	6293      	str	r3, [r2, #40]	; 0x28
20000bee:	4b04      	ldr	r3, [pc, #16]	; (20000c00 <adc_init+0x4c>)
20000bf0:	2210      	movs	r2, #16
20000bf2:	621a      	str	r2, [r3, #32]
20000bf4:	bf00      	nop
20000bf6:	46bd      	mov	sp, r7
20000bf8:	bc80      	pop	{r7}
20000bfa:	4770      	bx	lr
20000bfc:	40020000 	.word	0x40020000
20000c00:	40088000 	.word	0x40088000

20000c04 <dma_init>:
20000c04:	b480      	push	{r7}
20000c06:	af00      	add	r7, sp, #0
20000c08:	4a17      	ldr	r2, [pc, #92]	; (20000c68 <dma_init+0x64>)
20000c0a:	4b17      	ldr	r3, [pc, #92]	; (20000c68 <dma_init+0x64>)
20000c0c:	69db      	ldr	r3, [r3, #28]
20000c0e:	f043 0320 	orr.w	r3, r3, #32
20000c12:	61d3      	str	r3, [r2, #28]
20000c14:	4b15      	ldr	r3, [pc, #84]	; (20000c6c <dma_init+0x68>)
20000c16:	4a16      	ldr	r2, [pc, #88]	; (20000c70 <dma_init+0x6c>)
20000c18:	609a      	str	r2, [r3, #8]
20000c1a:	4b14      	ldr	r3, [pc, #80]	; (20000c6c <dma_init+0x68>)
20000c1c:	f04f 32ff 	mov.w	r2, #4294967295
20000c20:	62da      	str	r2, [r3, #44]	; 0x2c
20000c22:	4b12      	ldr	r3, [pc, #72]	; (20000c6c <dma_init+0x68>)
20000c24:	f04f 32ff 	mov.w	r2, #4294967295
20000c28:	621a      	str	r2, [r3, #32]
20000c2a:	4b10      	ldr	r3, [pc, #64]	; (20000c6c <dma_init+0x68>)
20000c2c:	f04f 32ff 	mov.w	r2, #4294967295
20000c30:	635a      	str	r2, [r3, #52]	; 0x34
20000c32:	4b0e      	ldr	r3, [pc, #56]	; (20000c6c <dma_init+0x68>)
20000c34:	f44f 7280 	mov.w	r2, #256	; 0x100
20000c38:	61da      	str	r2, [r3, #28]
20000c3a:	4b0c      	ldr	r3, [pc, #48]	; (20000c6c <dma_init+0x68>)
20000c3c:	f44f 7280 	mov.w	r2, #256	; 0x100
20000c40:	625a      	str	r2, [r3, #36]	; 0x24
20000c42:	4b0a      	ldr	r3, [pc, #40]	; (20000c6c <dma_init+0x68>)
20000c44:	2201      	movs	r2, #1
20000c46:	605a      	str	r2, [r3, #4]
20000c48:	4b09      	ldr	r3, [pc, #36]	; (20000c70 <dma_init+0x6c>)
20000c4a:	4a0a      	ldr	r2, [pc, #40]	; (20000c74 <dma_init+0x70>)
20000c4c:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20000c50:	4a09      	ldr	r2, [pc, #36]	; (20000c78 <dma_init+0x74>)
20000c52:	4b07      	ldr	r3, [pc, #28]	; (20000c70 <dma_init+0x6c>)
20000c54:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20000c58:	4b05      	ldr	r3, [pc, #20]	; (20000c70 <dma_init+0x6c>)
20000c5a:	4a08      	ldr	r2, [pc, #32]	; (20000c7c <dma_init+0x78>)
20000c5c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000c60:	bf00      	nop
20000c62:	46bd      	mov	sp, r7
20000c64:	bc80      	pop	{r7}
20000c66:	4770      	bx	lr
20000c68:	40020000 	.word	0x40020000
20000c6c:	40028000 	.word	0x40028000
20000c70:	20002800 	.word	0x20002800
20000c74:	40088018 	.word	0x40088018
20000c78:	20002a04 	.word	0x20002a04
20000c7c:	ae000011 	.word	0xae000011

20000c80 <adc_dma_init>:
20000c80:	b580      	push	{r7, lr}
20000c82:	af00      	add	r7, sp, #0
20000c84:	f7ff ff96 	bl	20000bb4 <adc_init>
20000c88:	f7ff ffbc 	bl	20000c04 <dma_init>
20000c8c:	bf00      	nop
20000c8e:	bd80      	pop	{r7, pc}

20000c90 <adc_dma_start>:
20000c90:	b480      	push	{r7}
20000c92:	af00      	add	r7, sp, #0
20000c94:	4a06      	ldr	r2, [pc, #24]	; (20000cb0 <adc_dma_start+0x20>)
20000c96:	4b06      	ldr	r3, [pc, #24]	; (20000cb0 <adc_dma_start+0x20>)
20000c98:	681b      	ldr	r3, [r3, #0]
20000c9a:	f043 0308 	orr.w	r3, r3, #8
20000c9e:	6013      	str	r3, [r2, #0]
20000ca0:	4b04      	ldr	r3, [pc, #16]	; (20000cb4 <adc_dma_start+0x24>)
20000ca2:	f44f 7280 	mov.w	r2, #256	; 0x100
20000ca6:	629a      	str	r2, [r3, #40]	; 0x28
20000ca8:	bf00      	nop
20000caa:	46bd      	mov	sp, r7
20000cac:	bc80      	pop	{r7}
20000cae:	4770      	bx	lr
20000cb0:	40088000 	.word	0x40088000
20000cb4:	40028000 	.word	0x40028000

20000cb8 <adc_dma_wait>:
20000cb8:	b480      	push	{r7}
20000cba:	af00      	add	r7, sp, #0
20000cbc:	bf00      	nop
20000cbe:	4b0a      	ldr	r3, [pc, #40]	; (20000ce8 <adc_dma_wait+0x30>)
20000cc0:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20000cc4:	f003 0307 	and.w	r3, r3, #7
20000cc8:	2b00      	cmp	r3, #0
20000cca:	d1f8      	bne.n	20000cbe <adc_dma_wait+0x6>
20000ccc:	4a07      	ldr	r2, [pc, #28]	; (20000cec <adc_dma_wait+0x34>)
20000cce:	4b07      	ldr	r3, [pc, #28]	; (20000cec <adc_dma_wait+0x34>)
20000cd0:	681b      	ldr	r3, [r3, #0]
20000cd2:	f023 0308 	bic.w	r3, r3, #8
20000cd6:	6013      	str	r3, [r2, #0]
20000cd8:	4b03      	ldr	r3, [pc, #12]	; (20000ce8 <adc_dma_wait+0x30>)
20000cda:	4a05      	ldr	r2, [pc, #20]	; (20000cf0 <adc_dma_wait+0x38>)
20000cdc:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000ce0:	bf00      	nop
20000ce2:	46bd      	mov	sp, r7
20000ce4:	bc80      	pop	{r7}
20000ce6:	4770      	bx	lr
20000ce8:	20002800 	.word	0x20002800
20000cec:	40088000 	.word	0x40088000
20000cf0:	ae000011 	.word	0xae000011

20000cf4 <NVIC_EnableIRQ>:
20000cf4:	b480      	push	{r7}
20000cf6:	b083      	sub	sp, #12
20000cf8:	af00      	add	r7, sp, #0
20000cfa:	4603      	mov	r3, r0
20000cfc:	71fb      	strb	r3, [r7, #7]
20000cfe:	4908      	ldr	r1, [pc, #32]	; (20000d20 <NVIC_EnableIRQ+0x2c>)
20000d00:	f997 3007 	ldrsb.w	r3, [r7, #7]
20000d04:	095b      	lsrs	r3, r3, #5
20000d06:	79fa      	ldrb	r2, [r7, #7]
20000d08:	f002 021f 	and.w	r2, r2, #31
20000d0c:	2001      	movs	r0, #1
20000d0e:	fa00 f202 	lsl.w	r2, r0, r2
20000d12:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20000d16:	bf00      	nop
20000d18:	370c      	adds	r7, #12
20000d1a:	46bd      	mov	sp, r7
20000d1c:	bc80      	pop	{r7}
20000d1e:	4770      	bx	lr
20000d20:	e000e100 	.word	0xe000e100

20000d24 <sleep>:
20000d24:	b480      	push	{r7}
20000d26:	b085      	sub	sp, #20
20000d28:	af00      	add	r7, sp, #0
20000d2a:	6078      	str	r0, [r7, #4]
20000d2c:	4b08      	ldr	r3, [pc, #32]	; (20000d50 <sleep+0x2c>)
20000d2e:	681a      	ldr	r2, [r3, #0]
20000d30:	687b      	ldr	r3, [r7, #4]
20000d32:	4413      	add	r3, r2
20000d34:	60fb      	str	r3, [r7, #12]
20000d36:	bf00      	nop
20000d38:	4b05      	ldr	r3, [pc, #20]	; (20000d50 <sleep+0x2c>)
20000d3a:	681a      	ldr	r2, [r3, #0]
20000d3c:	68fb      	ldr	r3, [r7, #12]
20000d3e:	429a      	cmp	r2, r3
20000d40:	d3fa      	bcc.n	20000d38 <sleep+0x14>
20000d42:	bf00      	nop
20000d44:	4618      	mov	r0, r3
20000d46:	3714      	adds	r7, #20
20000d48:	46bd      	mov	sp, r7
20000d4a:	bc80      	pop	{r7}
20000d4c:	4770      	bx	lr
20000d4e:	bf00      	nop
20000d50:	20002400 	.word	0x20002400

20000d54 <PortConfig>:
20000d54:	b480      	push	{r7}
20000d56:	af00      	add	r7, sp, #0
20000d58:	4a4f      	ldr	r2, [pc, #316]	; (20000e98 <PortConfig+0x144>)
20000d5a:	4b4f      	ldr	r3, [pc, #316]	; (20000e98 <PortConfig+0x144>)
20000d5c:	69db      	ldr	r3, [r3, #28]
20000d5e:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
20000d62:	61d3      	str	r3, [r2, #28]
20000d64:	4b4d      	ldr	r3, [pc, #308]	; (20000e9c <PortConfig+0x148>)
20000d66:	2200      	movs	r2, #0
20000d68:	609a      	str	r2, [r3, #8]
20000d6a:	4b4c      	ldr	r3, [pc, #304]	; (20000e9c <PortConfig+0x148>)
20000d6c:	2200      	movs	r2, #0
20000d6e:	601a      	str	r2, [r3, #0]
20000d70:	4b4a      	ldr	r3, [pc, #296]	; (20000e9c <PortConfig+0x148>)
20000d72:	22ff      	movs	r2, #255	; 0xff
20000d74:	605a      	str	r2, [r3, #4]
20000d76:	4b49      	ldr	r3, [pc, #292]	; (20000e9c <PortConfig+0x148>)
20000d78:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000d7c:	60da      	str	r2, [r3, #12]
20000d7e:	4b47      	ldr	r3, [pc, #284]	; (20000e9c <PortConfig+0x148>)
20000d80:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000d84:	619a      	str	r2, [r3, #24]
20000d86:	4a44      	ldr	r2, [pc, #272]	; (20000e98 <PortConfig+0x144>)
20000d88:	4b43      	ldr	r3, [pc, #268]	; (20000e98 <PortConfig+0x144>)
20000d8a:	69db      	ldr	r3, [r3, #28]
20000d8c:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20000d90:	61d3      	str	r3, [r2, #28]
20000d92:	4a43      	ldr	r2, [pc, #268]	; (20000ea0 <PortConfig+0x14c>)
20000d94:	4b42      	ldr	r3, [pc, #264]	; (20000ea0 <PortConfig+0x14c>)
20000d96:	689b      	ldr	r3, [r3, #8]
20000d98:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20000d9c:	6093      	str	r3, [r2, #8]
20000d9e:	4a40      	ldr	r2, [pc, #256]	; (20000ea0 <PortConfig+0x14c>)
20000da0:	4b3f      	ldr	r3, [pc, #252]	; (20000ea0 <PortConfig+0x14c>)
20000da2:	689b      	ldr	r3, [r3, #8]
20000da4:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
20000da8:	6093      	str	r3, [r2, #8]
20000daa:	4a3d      	ldr	r2, [pc, #244]	; (20000ea0 <PortConfig+0x14c>)
20000dac:	4b3c      	ldr	r3, [pc, #240]	; (20000ea0 <PortConfig+0x14c>)
20000dae:	68db      	ldr	r3, [r3, #12]
20000db0:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
20000db4:	60d3      	str	r3, [r2, #12]
20000db6:	4a3a      	ldr	r2, [pc, #232]	; (20000ea0 <PortConfig+0x14c>)
20000db8:	4b39      	ldr	r3, [pc, #228]	; (20000ea0 <PortConfig+0x14c>)
20000dba:	699b      	ldr	r3, [r3, #24]
20000dbc:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
20000dc0:	6193      	str	r3, [r2, #24]
20000dc2:	4a37      	ldr	r2, [pc, #220]	; (20000ea0 <PortConfig+0x14c>)
20000dc4:	4b36      	ldr	r3, [pc, #216]	; (20000ea0 <PortConfig+0x14c>)
20000dc6:	685b      	ldr	r3, [r3, #4]
20000dc8:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20000dcc:	6053      	str	r3, [r2, #4]
20000dce:	4a34      	ldr	r2, [pc, #208]	; (20000ea0 <PortConfig+0x14c>)
20000dd0:	4b33      	ldr	r3, [pc, #204]	; (20000ea0 <PortConfig+0x14c>)
20000dd2:	685b      	ldr	r3, [r3, #4]
20000dd4:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20000dd8:	6053      	str	r3, [r2, #4]
20000dda:	4a2f      	ldr	r2, [pc, #188]	; (20000e98 <PortConfig+0x144>)
20000ddc:	4b2e      	ldr	r3, [pc, #184]	; (20000e98 <PortConfig+0x144>)
20000dde:	69db      	ldr	r3, [r3, #28]
20000de0:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
20000de4:	61d3      	str	r3, [r2, #28]
20000de6:	4b2f      	ldr	r3, [pc, #188]	; (20000ea4 <PortConfig+0x150>)
20000de8:	4a2f      	ldr	r2, [pc, #188]	; (20000ea8 <PortConfig+0x154>)
20000dea:	609a      	str	r2, [r3, #8]
20000dec:	4b2d      	ldr	r3, [pc, #180]	; (20000ea4 <PortConfig+0x150>)
20000dee:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000df2:	60da      	str	r2, [r3, #12]
20000df4:	4b2b      	ldr	r3, [pc, #172]	; (20000ea4 <PortConfig+0x150>)
20000df6:	f04f 32ff 	mov.w	r2, #4294967295
20000dfa:	619a      	str	r2, [r3, #24]
20000dfc:	4b29      	ldr	r3, [pc, #164]	; (20000ea4 <PortConfig+0x150>)
20000dfe:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000e02:	605a      	str	r2, [r3, #4]
20000e04:	4a27      	ldr	r2, [pc, #156]	; (20000ea4 <PortConfig+0x150>)
20000e06:	4b27      	ldr	r3, [pc, #156]	; (20000ea4 <PortConfig+0x150>)
20000e08:	681b      	ldr	r3, [r3, #0]
20000e0a:	f023 0303 	bic.w	r3, r3, #3
20000e0e:	6013      	str	r3, [r2, #0]
20000e10:	4a24      	ldr	r2, [pc, #144]	; (20000ea4 <PortConfig+0x150>)
20000e12:	4b24      	ldr	r3, [pc, #144]	; (20000ea4 <PortConfig+0x150>)
20000e14:	681b      	ldr	r3, [r3, #0]
20000e16:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000e1a:	6013      	str	r3, [r2, #0]
20000e1c:	4a1e      	ldr	r2, [pc, #120]	; (20000e98 <PortConfig+0x144>)
20000e1e:	4b1e      	ldr	r3, [pc, #120]	; (20000e98 <PortConfig+0x144>)
20000e20:	69db      	ldr	r3, [r3, #28]
20000e22:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
20000e26:	61d3      	str	r3, [r2, #28]
20000e28:	4b20      	ldr	r3, [pc, #128]	; (20000eac <PortConfig+0x158>)
20000e2a:	2200      	movs	r2, #0
20000e2c:	609a      	str	r2, [r3, #8]
20000e2e:	4a1f      	ldr	r2, [pc, #124]	; (20000eac <PortConfig+0x158>)
20000e30:	4b1e      	ldr	r3, [pc, #120]	; (20000eac <PortConfig+0x158>)
20000e32:	685b      	ldr	r3, [r3, #4]
20000e34:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000e38:	6053      	str	r3, [r2, #4]
20000e3a:	4a1c      	ldr	r2, [pc, #112]	; (20000eac <PortConfig+0x158>)
20000e3c:	4b1b      	ldr	r3, [pc, #108]	; (20000eac <PortConfig+0x158>)
20000e3e:	68db      	ldr	r3, [r3, #12]
20000e40:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000e44:	60d3      	str	r3, [r2, #12]
20000e46:	4b19      	ldr	r3, [pc, #100]	; (20000eac <PortConfig+0x158>)
20000e48:	f04f 32ff 	mov.w	r2, #4294967295
20000e4c:	619a      	str	r2, [r3, #24]
20000e4e:	4a17      	ldr	r2, [pc, #92]	; (20000eac <PortConfig+0x158>)
20000e50:	4b16      	ldr	r3, [pc, #88]	; (20000eac <PortConfig+0x158>)
20000e52:	681b      	ldr	r3, [r3, #0]
20000e54:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000e58:	6013      	str	r3, [r2, #0]
20000e5a:	4a0f      	ldr	r2, [pc, #60]	; (20000e98 <PortConfig+0x144>)
20000e5c:	4b0e      	ldr	r3, [pc, #56]	; (20000e98 <PortConfig+0x144>)
20000e5e:	69db      	ldr	r3, [r3, #28]
20000e60:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
20000e64:	61d3      	str	r3, [r2, #28]
20000e66:	4a12      	ldr	r2, [pc, #72]	; (20000eb0 <PortConfig+0x15c>)
20000e68:	4b11      	ldr	r3, [pc, #68]	; (20000eb0 <PortConfig+0x15c>)
20000e6a:	68db      	ldr	r3, [r3, #12]
20000e6c:	f423 7300 	bic.w	r3, r3, #512	; 0x200
20000e70:	f023 0301 	bic.w	r3, r3, #1
20000e74:	60d3      	str	r3, [r2, #12]
20000e76:	4a08      	ldr	r2, [pc, #32]	; (20000e98 <PortConfig+0x144>)
20000e78:	4b07      	ldr	r3, [pc, #28]	; (20000e98 <PortConfig+0x144>)
20000e7a:	69db      	ldr	r3, [r3, #28]
20000e7c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20000e80:	61d3      	str	r3, [r2, #28]
20000e82:	4a0c      	ldr	r2, [pc, #48]	; (20000eb4 <PortConfig+0x160>)
20000e84:	4b0b      	ldr	r3, [pc, #44]	; (20000eb4 <PortConfig+0x160>)
20000e86:	68db      	ldr	r3, [r3, #12]
20000e88:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
20000e8c:	60d3      	str	r3, [r2, #12]
20000e8e:	bf00      	nop
20000e90:	46bd      	mov	sp, r7
20000e92:	bc80      	pop	{r7}
20000e94:	4770      	bx	lr
20000e96:	bf00      	nop
20000e98:	40020000 	.word	0x40020000
20000e9c:	400a8000 	.word	0x400a8000
20000ea0:	400b0000 	.word	0x400b0000
20000ea4:	400b8000 	.word	0x400b8000
20000ea8:	000aaaa0 	.word	0x000aaaa0
20000eac:	400e8000 	.word	0x400e8000
20000eb0:	400c8000 	.word	0x400c8000
20000eb4:	400c0000 	.word	0x400c0000

20000eb8 <ClkConfig>:
20000eb8:	b480      	push	{r7}
20000eba:	af00      	add	r7, sp, #0
20000ebc:	4a16      	ldr	r2, [pc, #88]	; (20000f18 <ClkConfig+0x60>)
20000ebe:	4b16      	ldr	r3, [pc, #88]	; (20000f18 <ClkConfig+0x60>)
20000ec0:	689b      	ldr	r3, [r3, #8]
20000ec2:	f043 0301 	orr.w	r3, r3, #1
20000ec6:	6093      	str	r3, [r2, #8]
20000ec8:	bf00      	nop
20000eca:	4b13      	ldr	r3, [pc, #76]	; (20000f18 <ClkConfig+0x60>)
20000ecc:	681b      	ldr	r3, [r3, #0]
20000ece:	f003 0304 	and.w	r3, r3, #4
20000ed2:	2b00      	cmp	r3, #0
20000ed4:	d0f9      	beq.n	20000eca <ClkConfig+0x12>
20000ed6:	4b10      	ldr	r3, [pc, #64]	; (20000f18 <ClkConfig+0x60>)
20000ed8:	2206      	movs	r2, #6
20000eda:	60da      	str	r2, [r3, #12]
20000edc:	4b0e      	ldr	r3, [pc, #56]	; (20000f18 <ClkConfig+0x60>)
20000ede:	f640 1204 	movw	r2, #2308	; 0x904
20000ee2:	605a      	str	r2, [r3, #4]
20000ee4:	bf00      	nop
20000ee6:	4b0c      	ldr	r3, [pc, #48]	; (20000f18 <ClkConfig+0x60>)
20000ee8:	681b      	ldr	r3, [r3, #0]
20000eea:	f003 0302 	and.w	r3, r3, #2
20000eee:	2b00      	cmp	r3, #0
20000ef0:	d0f9      	beq.n	20000ee6 <ClkConfig+0x2e>
20000ef2:	4a09      	ldr	r2, [pc, #36]	; (20000f18 <ClkConfig+0x60>)
20000ef4:	4b08      	ldr	r3, [pc, #32]	; (20000f18 <ClkConfig+0x60>)
20000ef6:	68db      	ldr	r3, [r3, #12]
20000ef8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20000efc:	60d3      	str	r3, [r2, #12]
20000efe:	4a07      	ldr	r2, [pc, #28]	; (20000f1c <ClkConfig+0x64>)
20000f00:	4b06      	ldr	r3, [pc, #24]	; (20000f1c <ClkConfig+0x64>)
20000f02:	681b      	ldr	r3, [r3, #0]
20000f04:	f043 0320 	orr.w	r3, r3, #32
20000f08:	6013      	str	r3, [r2, #0]
20000f0a:	4b05      	ldr	r3, [pc, #20]	; (20000f20 <ClkConfig+0x68>)
20000f0c:	2200      	movs	r2, #0
20000f0e:	601a      	str	r2, [r3, #0]
20000f10:	bf00      	nop
20000f12:	46bd      	mov	sp, r7
20000f14:	bc80      	pop	{r7}
20000f16:	4770      	bx	lr
20000f18:	40020000 	.word	0x40020000
20000f1c:	40018000 	.word	0x40018000
20000f20:	20002400 	.word	0x20002400

20000f24 <TimerConfig>:
20000f24:	b580      	push	{r7, lr}
20000f26:	af00      	add	r7, sp, #0
20000f28:	4a74      	ldr	r2, [pc, #464]	; (200010fc <TimerConfig+0x1d8>)
20000f2a:	4b74      	ldr	r3, [pc, #464]	; (200010fc <TimerConfig+0x1d8>)
20000f2c:	69db      	ldr	r3, [r3, #28]
20000f2e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
20000f32:	61d3      	str	r3, [r2, #28]
20000f34:	4a71      	ldr	r2, [pc, #452]	; (200010fc <TimerConfig+0x1d8>)
20000f36:	4b71      	ldr	r3, [pc, #452]	; (200010fc <TimerConfig+0x1d8>)
20000f38:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20000f3a:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
20000f3e:	6253      	str	r3, [r2, #36]	; 0x24
20000f40:	4a6e      	ldr	r2, [pc, #440]	; (200010fc <TimerConfig+0x1d8>)
20000f42:	4b6e      	ldr	r3, [pc, #440]	; (200010fc <TimerConfig+0x1d8>)
20000f44:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20000f46:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
20000f4a:	6253      	str	r3, [r2, #36]	; 0x24
20000f4c:	4b6c      	ldr	r3, [pc, #432]	; (20001100 <TimerConfig+0x1dc>)
20000f4e:	2200      	movs	r2, #0
20000f50:	601a      	str	r2, [r3, #0]
20000f52:	4b6b      	ldr	r3, [pc, #428]	; (20001100 <TimerConfig+0x1dc>)
20000f54:	2202      	movs	r2, #2
20000f56:	605a      	str	r2, [r3, #4]
20000f58:	4b69      	ldr	r3, [pc, #420]	; (20001100 <TimerConfig+0x1dc>)
20000f5a:	f240 32ff 	movw	r2, #1023	; 0x3ff
20000f5e:	609a      	str	r2, [r3, #8]
20000f60:	4b67      	ldr	r3, [pc, #412]	; (20001100 <TimerConfig+0x1dc>)
20000f62:	f44f 7200 	mov.w	r2, #512	; 0x200
20000f66:	611a      	str	r2, [r3, #16]
20000f68:	4b65      	ldr	r3, [pc, #404]	; (20001100 <TimerConfig+0x1dc>)
20000f6a:	f44f 7200 	mov.w	r2, #512	; 0x200
20000f6e:	615a      	str	r2, [r3, #20]
20000f70:	4b63      	ldr	r3, [pc, #396]	; (20001100 <TimerConfig+0x1dc>)
20000f72:	f44f 7200 	mov.w	r2, #512	; 0x200
20000f76:	619a      	str	r2, [r3, #24]
20000f78:	4a61      	ldr	r2, [pc, #388]	; (20001100 <TimerConfig+0x1dc>)
20000f7a:	4b61      	ldr	r3, [pc, #388]	; (20001100 <TimerConfig+0x1dc>)
20000f7c:	6a1b      	ldr	r3, [r3, #32]
20000f7e:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20000f82:	6213      	str	r3, [r2, #32]
20000f84:	4a5e      	ldr	r2, [pc, #376]	; (20001100 <TimerConfig+0x1dc>)
20000f86:	4b5e      	ldr	r3, [pc, #376]	; (20001100 <TimerConfig+0x1dc>)
20000f88:	6a1b      	ldr	r3, [r3, #32]
20000f8a:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20000f8e:	6213      	str	r3, [r2, #32]
20000f90:	4a5b      	ldr	r2, [pc, #364]	; (20001100 <TimerConfig+0x1dc>)
20000f92:	4b5b      	ldr	r3, [pc, #364]	; (20001100 <TimerConfig+0x1dc>)
20000f94:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20000f96:	f023 030f 	bic.w	r3, r3, #15
20000f9a:	6313      	str	r3, [r2, #48]	; 0x30
20000f9c:	4a58      	ldr	r2, [pc, #352]	; (20001100 <TimerConfig+0x1dc>)
20000f9e:	4b58      	ldr	r3, [pc, #352]	; (20001100 <TimerConfig+0x1dc>)
20000fa0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20000fa2:	f043 030c 	orr.w	r3, r3, #12
20000fa6:	6313      	str	r3, [r2, #48]	; 0x30
20000fa8:	4a55      	ldr	r2, [pc, #340]	; (20001100 <TimerConfig+0x1dc>)
20000faa:	4b55      	ldr	r3, [pc, #340]	; (20001100 <TimerConfig+0x1dc>)
20000fac:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20000fae:	f043 0301 	orr.w	r3, r3, #1
20000fb2:	6313      	str	r3, [r2, #48]	; 0x30
20000fb4:	4a52      	ldr	r2, [pc, #328]	; (20001100 <TimerConfig+0x1dc>)
20000fb6:	4b52      	ldr	r3, [pc, #328]	; (20001100 <TimerConfig+0x1dc>)
20000fb8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20000fba:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20000fbe:	6313      	str	r3, [r2, #48]	; 0x30
20000fc0:	4a4f      	ldr	r2, [pc, #316]	; (20001100 <TimerConfig+0x1dc>)
20000fc2:	4b4f      	ldr	r3, [pc, #316]	; (20001100 <TimerConfig+0x1dc>)
20000fc4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20000fc6:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20000fca:	6313      	str	r3, [r2, #48]	; 0x30
20000fcc:	4a4c      	ldr	r2, [pc, #304]	; (20001100 <TimerConfig+0x1dc>)
20000fce:	4b4c      	ldr	r3, [pc, #304]	; (20001100 <TimerConfig+0x1dc>)
20000fd0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20000fd2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20000fd6:	6313      	str	r3, [r2, #48]	; 0x30
20000fd8:	4a49      	ldr	r2, [pc, #292]	; (20001100 <TimerConfig+0x1dc>)
20000fda:	4b49      	ldr	r3, [pc, #292]	; (20001100 <TimerConfig+0x1dc>)
20000fdc:	6e1b      	ldr	r3, [r3, #96]	; 0x60
20000fde:	f043 0308 	orr.w	r3, r3, #8
20000fe2:	6613      	str	r3, [r2, #96]	; 0x60
20000fe4:	4a46      	ldr	r2, [pc, #280]	; (20001100 <TimerConfig+0x1dc>)
20000fe6:	4b46      	ldr	r3, [pc, #280]	; (20001100 <TimerConfig+0x1dc>)
20000fe8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20000fea:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20000fee:	6253      	str	r3, [r2, #36]	; 0x24
20000ff0:	4a43      	ldr	r2, [pc, #268]	; (20001100 <TimerConfig+0x1dc>)
20000ff2:	4b43      	ldr	r3, [pc, #268]	; (20001100 <TimerConfig+0x1dc>)
20000ff4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20000ff6:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20000ffa:	6253      	str	r3, [r2, #36]	; 0x24
20000ffc:	4a40      	ldr	r2, [pc, #256]	; (20001100 <TimerConfig+0x1dc>)
20000ffe:	4b40      	ldr	r3, [pc, #256]	; (20001100 <TimerConfig+0x1dc>)
20001000:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001002:	f023 030f 	bic.w	r3, r3, #15
20001006:	6353      	str	r3, [r2, #52]	; 0x34
20001008:	4a3d      	ldr	r2, [pc, #244]	; (20001100 <TimerConfig+0x1dc>)
2000100a:	4b3d      	ldr	r3, [pc, #244]	; (20001100 <TimerConfig+0x1dc>)
2000100c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000100e:	f043 030c 	orr.w	r3, r3, #12
20001012:	6353      	str	r3, [r2, #52]	; 0x34
20001014:	4a3a      	ldr	r2, [pc, #232]	; (20001100 <TimerConfig+0x1dc>)
20001016:	4b3a      	ldr	r3, [pc, #232]	; (20001100 <TimerConfig+0x1dc>)
20001018:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000101a:	f043 0301 	orr.w	r3, r3, #1
2000101e:	6353      	str	r3, [r2, #52]	; 0x34
20001020:	4a37      	ldr	r2, [pc, #220]	; (20001100 <TimerConfig+0x1dc>)
20001022:	4b37      	ldr	r3, [pc, #220]	; (20001100 <TimerConfig+0x1dc>)
20001024:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001026:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
2000102a:	6353      	str	r3, [r2, #52]	; 0x34
2000102c:	4a34      	ldr	r2, [pc, #208]	; (20001100 <TimerConfig+0x1dc>)
2000102e:	4b34      	ldr	r3, [pc, #208]	; (20001100 <TimerConfig+0x1dc>)
20001030:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001032:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001036:	6353      	str	r3, [r2, #52]	; 0x34
20001038:	4a31      	ldr	r2, [pc, #196]	; (20001100 <TimerConfig+0x1dc>)
2000103a:	4b31      	ldr	r3, [pc, #196]	; (20001100 <TimerConfig+0x1dc>)
2000103c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000103e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001042:	6353      	str	r3, [r2, #52]	; 0x34
20001044:	4a2e      	ldr	r2, [pc, #184]	; (20001100 <TimerConfig+0x1dc>)
20001046:	4b2e      	ldr	r3, [pc, #184]	; (20001100 <TimerConfig+0x1dc>)
20001048:	6e5b      	ldr	r3, [r3, #100]	; 0x64
2000104a:	f043 0308 	orr.w	r3, r3, #8
2000104e:	6653      	str	r3, [r2, #100]	; 0x64
20001050:	4a2b      	ldr	r2, [pc, #172]	; (20001100 <TimerConfig+0x1dc>)
20001052:	4b2b      	ldr	r3, [pc, #172]	; (20001100 <TimerConfig+0x1dc>)
20001054:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001056:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
2000105a:	6293      	str	r3, [r2, #40]	; 0x28
2000105c:	4a28      	ldr	r2, [pc, #160]	; (20001100 <TimerConfig+0x1dc>)
2000105e:	4b28      	ldr	r3, [pc, #160]	; (20001100 <TimerConfig+0x1dc>)
20001060:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001062:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001066:	6293      	str	r3, [r2, #40]	; 0x28
20001068:	4a25      	ldr	r2, [pc, #148]	; (20001100 <TimerConfig+0x1dc>)
2000106a:	4b25      	ldr	r3, [pc, #148]	; (20001100 <TimerConfig+0x1dc>)
2000106c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000106e:	f023 030f 	bic.w	r3, r3, #15
20001072:	6393      	str	r3, [r2, #56]	; 0x38
20001074:	4a22      	ldr	r2, [pc, #136]	; (20001100 <TimerConfig+0x1dc>)
20001076:	4b22      	ldr	r3, [pc, #136]	; (20001100 <TimerConfig+0x1dc>)
20001078:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000107a:	f043 030c 	orr.w	r3, r3, #12
2000107e:	6393      	str	r3, [r2, #56]	; 0x38
20001080:	4a1f      	ldr	r2, [pc, #124]	; (20001100 <TimerConfig+0x1dc>)
20001082:	4b1f      	ldr	r3, [pc, #124]	; (20001100 <TimerConfig+0x1dc>)
20001084:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001086:	f043 0301 	orr.w	r3, r3, #1
2000108a:	6393      	str	r3, [r2, #56]	; 0x38
2000108c:	4a1c      	ldr	r2, [pc, #112]	; (20001100 <TimerConfig+0x1dc>)
2000108e:	4b1c      	ldr	r3, [pc, #112]	; (20001100 <TimerConfig+0x1dc>)
20001090:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001092:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001096:	6393      	str	r3, [r2, #56]	; 0x38
20001098:	4a19      	ldr	r2, [pc, #100]	; (20001100 <TimerConfig+0x1dc>)
2000109a:	4b19      	ldr	r3, [pc, #100]	; (20001100 <TimerConfig+0x1dc>)
2000109c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000109e:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200010a2:	6393      	str	r3, [r2, #56]	; 0x38
200010a4:	4a16      	ldr	r2, [pc, #88]	; (20001100 <TimerConfig+0x1dc>)
200010a6:	4b16      	ldr	r3, [pc, #88]	; (20001100 <TimerConfig+0x1dc>)
200010a8:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200010aa:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200010ae:	6393      	str	r3, [r2, #56]	; 0x38
200010b0:	4a13      	ldr	r2, [pc, #76]	; (20001100 <TimerConfig+0x1dc>)
200010b2:	4b13      	ldr	r3, [pc, #76]	; (20001100 <TimerConfig+0x1dc>)
200010b4:	6e9b      	ldr	r3, [r3, #104]	; 0x68
200010b6:	f043 0308 	orr.w	r3, r3, #8
200010ba:	6693      	str	r3, [r2, #104]	; 0x68
200010bc:	4a10      	ldr	r2, [pc, #64]	; (20001100 <TimerConfig+0x1dc>)
200010be:	4b10      	ldr	r3, [pc, #64]	; (20001100 <TimerConfig+0x1dc>)
200010c0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200010c2:	f443 5316 	orr.w	r3, r3, #9600	; 0x2580
200010c6:	6413      	str	r3, [r2, #64]	; 0x40
200010c8:	4a0d      	ldr	r2, [pc, #52]	; (20001100 <TimerConfig+0x1dc>)
200010ca:	4b0d      	ldr	r3, [pc, #52]	; (20001100 <TimerConfig+0x1dc>)
200010cc:	6c5b      	ldr	r3, [r3, #68]	; 0x44
200010ce:	f443 5316 	orr.w	r3, r3, #9600	; 0x2580
200010d2:	6453      	str	r3, [r2, #68]	; 0x44
200010d4:	4a0a      	ldr	r2, [pc, #40]	; (20001100 <TimerConfig+0x1dc>)
200010d6:	4b0a      	ldr	r3, [pc, #40]	; (20001100 <TimerConfig+0x1dc>)
200010d8:	6c9b      	ldr	r3, [r3, #72]	; 0x48
200010da:	f443 5316 	orr.w	r3, r3, #9600	; 0x2580
200010de:	6493      	str	r3, [r2, #72]	; 0x48
200010e0:	4a07      	ldr	r2, [pc, #28]	; (20001100 <TimerConfig+0x1dc>)
200010e2:	4b07      	ldr	r3, [pc, #28]	; (20001100 <TimerConfig+0x1dc>)
200010e4:	6d9b      	ldr	r3, [r3, #88]	; 0x58
200010e6:	f043 0302 	orr.w	r3, r3, #2
200010ea:	6593      	str	r3, [r2, #88]	; 0x58
200010ec:	2010      	movs	r0, #16
200010ee:	f7ff fe01 	bl	20000cf4 <NVIC_EnableIRQ>
200010f2:	4b03      	ldr	r3, [pc, #12]	; (20001100 <TimerConfig+0x1dc>)
200010f4:	2201      	movs	r2, #1
200010f6:	60da      	str	r2, [r3, #12]
200010f8:	bf00      	nop
200010fa:	bd80      	pop	{r7, pc}
200010fc:	40020000 	.word	0x40020000
20001100:	40080000 	.word	0x40080000

20001104 <set_ram_vt>:
20001104:	b480      	push	{r7}
20001106:	b085      	sub	sp, #20
20001108:	af00      	add	r7, sp, #0
2000110a:	2300      	movs	r3, #0
2000110c:	60fb      	str	r3, [r7, #12]
2000110e:	2300      	movs	r3, #0
20001110:	607b      	str	r3, [r7, #4]
20001112:	4b11      	ldr	r3, [pc, #68]	; (20001158 <set_ram_vt+0x54>)
20001114:	60bb      	str	r3, [r7, #8]
20001116:	2300      	movs	r3, #0
20001118:	60fb      	str	r3, [r7, #12]
2000111a:	e00b      	b.n	20001134 <set_ram_vt+0x30>
2000111c:	68bb      	ldr	r3, [r7, #8]
2000111e:	1d1a      	adds	r2, r3, #4
20001120:	60ba      	str	r2, [r7, #8]
20001122:	68fa      	ldr	r2, [r7, #12]
20001124:	0092      	lsls	r2, r2, #2
20001126:	6879      	ldr	r1, [r7, #4]
20001128:	440a      	add	r2, r1
2000112a:	6812      	ldr	r2, [r2, #0]
2000112c:	601a      	str	r2, [r3, #0]
2000112e:	68fb      	ldr	r3, [r7, #12]
20001130:	3301      	adds	r3, #1
20001132:	60fb      	str	r3, [r7, #12]
20001134:	68fb      	ldr	r3, [r7, #12]
20001136:	2b2f      	cmp	r3, #47	; 0x2f
20001138:	d9f0      	bls.n	2000111c <set_ram_vt+0x18>
2000113a:	4b08      	ldr	r3, [pc, #32]	; (2000115c <set_ram_vt+0x58>)
2000113c:	4a06      	ldr	r2, [pc, #24]	; (20001158 <set_ram_vt+0x54>)
2000113e:	609a      	str	r2, [r3, #8]
20001140:	4b05      	ldr	r3, [pc, #20]	; (20001158 <set_ram_vt+0x54>)
20001142:	4a07      	ldr	r2, [pc, #28]	; (20001160 <set_ram_vt+0x5c>)
20001144:	63da      	str	r2, [r3, #60]	; 0x3c
20001146:	4b04      	ldr	r3, [pc, #16]	; (20001158 <set_ram_vt+0x54>)
20001148:	4a06      	ldr	r2, [pc, #24]	; (20001164 <set_ram_vt+0x60>)
2000114a:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
2000114e:	bf00      	nop
20001150:	3714      	adds	r7, #20
20001152:	46bd      	mov	sp, r7
20001154:	bc80      	pop	{r7}
20001156:	4770      	bx	lr
20001158:	20002500 	.word	0x20002500
2000115c:	e000ed00 	.word	0xe000ed00
20001160:	20001181 	.word	0x20001181
20001164:	2000023d 	.word	0x2000023d

20001168 <system_init>:
20001168:	b580      	push	{r7, lr}
2000116a:	af00      	add	r7, sp, #0
2000116c:	f7ff ffca 	bl	20001104 <set_ram_vt>
20001170:	f7ff fea2 	bl	20000eb8 <ClkConfig>
20001174:	f7ff fdee 	bl	20000d54 <PortConfig>
20001178:	f7ff fed4 	bl	20000f24 <TimerConfig>
2000117c:	bf00      	nop
2000117e:	bd80      	pop	{r7, pc}

20001180 <SysTick_Handler>:
20001180:	b480      	push	{r7}
20001182:	af00      	add	r7, sp, #0
20001184:	4b04      	ldr	r3, [pc, #16]	; (20001198 <SysTick_Handler+0x18>)
20001186:	681b      	ldr	r3, [r3, #0]
20001188:	3301      	adds	r3, #1
2000118a:	4a03      	ldr	r2, [pc, #12]	; (20001198 <SysTick_Handler+0x18>)
2000118c:	6013      	str	r3, [r2, #0]
2000118e:	bf00      	nop
20001190:	46bd      	mov	sp, r7
20001192:	bc80      	pop	{r7}
20001194:	4770      	bx	lr
20001196:	bf00      	nop
20001198:	20002400 	.word	0x20002400

2000119c <encoder_init>:
2000119c:	b480      	push	{r7}
2000119e:	af00      	add	r7, sp, #0
200011a0:	4a0c      	ldr	r2, [pc, #48]	; (200011d4 <encoder_init+0x38>)
200011a2:	4b0c      	ldr	r3, [pc, #48]	; (200011d4 <encoder_init+0x38>)
200011a4:	69db      	ldr	r3, [r3, #28]
200011a6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200011aa:	61d3      	str	r3, [r2, #28]
200011ac:	4b09      	ldr	r3, [pc, #36]	; (200011d4 <encoder_init+0x38>)
200011ae:	4a0a      	ldr	r2, [pc, #40]	; (200011d8 <encoder_init+0x3c>)
200011b0:	62da      	str	r2, [r3, #44]	; 0x2c
200011b2:	4b0a      	ldr	r3, [pc, #40]	; (200011dc <encoder_init+0x40>)
200011b4:	2200      	movs	r2, #0
200011b6:	605a      	str	r2, [r3, #4]
200011b8:	4b08      	ldr	r3, [pc, #32]	; (200011dc <encoder_init+0x40>)
200011ba:	220a      	movs	r2, #10
200011bc:	611a      	str	r2, [r3, #16]
200011be:	4b07      	ldr	r3, [pc, #28]	; (200011dc <encoder_init+0x40>)
200011c0:	f240 221f 	movw	r2, #543	; 0x21f
200011c4:	601a      	str	r2, [r3, #0]
200011c6:	4b05      	ldr	r3, [pc, #20]	; (200011dc <encoder_init+0x40>)
200011c8:	2202      	movs	r2, #2
200011ca:	605a      	str	r2, [r3, #4]
200011cc:	bf00      	nop
200011ce:	46bd      	mov	sp, r7
200011d0:	bc80      	pop	{r7}
200011d2:	4770      	bx	lr
200011d4:	40020000 	.word	0x40020000
200011d8:	0100000a 	.word	0x0100000a
200011dc:	40040000 	.word	0x40040000

200011e0 <b2g>:
200011e0:	b480      	push	{r7}
200011e2:	b083      	sub	sp, #12
200011e4:	af00      	add	r7, sp, #0
200011e6:	6078      	str	r0, [r7, #4]
200011e8:	687b      	ldr	r3, [r7, #4]
200011ea:	085a      	lsrs	r2, r3, #1
200011ec:	687b      	ldr	r3, [r7, #4]
200011ee:	4053      	eors	r3, r2
200011f0:	4618      	mov	r0, r3
200011f2:	370c      	adds	r7, #12
200011f4:	46bd      	mov	sp, r7
200011f6:	bc80      	pop	{r7}
200011f8:	4770      	bx	lr
200011fa:	bf00      	nop

200011fc <g2b>:
200011fc:	b480      	push	{r7}
200011fe:	b085      	sub	sp, #20
20001200:	af00      	add	r7, sp, #0
20001202:	6078      	str	r0, [r7, #4]
20001204:	2300      	movs	r3, #0
20001206:	60fb      	str	r3, [r7, #12]
20001208:	2300      	movs	r3, #0
2000120a:	60fb      	str	r3, [r7, #12]
2000120c:	e006      	b.n	2000121c <g2b+0x20>
2000120e:	68fa      	ldr	r2, [r7, #12]
20001210:	687b      	ldr	r3, [r7, #4]
20001212:	4053      	eors	r3, r2
20001214:	60fb      	str	r3, [r7, #12]
20001216:	687b      	ldr	r3, [r7, #4]
20001218:	085b      	lsrs	r3, r3, #1
2000121a:	607b      	str	r3, [r7, #4]
2000121c:	687b      	ldr	r3, [r7, #4]
2000121e:	2b00      	cmp	r3, #0
20001220:	d1f5      	bne.n	2000120e <g2b+0x12>
20001222:	68fb      	ldr	r3, [r7, #12]
20001224:	4618      	mov	r0, r3
20001226:	3714      	adds	r7, #20
20001228:	46bd      	mov	sp, r7
2000122a:	bc80      	pop	{r7}
2000122c:	4770      	bx	lr
2000122e:	bf00      	nop

20001230 <encoder_crc>:
20001230:	b480      	push	{r7}
20001232:	b085      	sub	sp, #20
20001234:	af00      	add	r7, sp, #0
20001236:	6078      	str	r0, [r7, #4]
20001238:	687b      	ldr	r3, [r7, #4]
2000123a:	60bb      	str	r3, [r7, #8]
2000123c:	2300      	movs	r3, #0
2000123e:	60fb      	str	r3, [r7, #12]
20001240:	e006      	b.n	20001250 <encoder_crc+0x20>
20001242:	68fa      	ldr	r2, [r7, #12]
20001244:	68bb      	ldr	r3, [r7, #8]
20001246:	4053      	eors	r3, r2
20001248:	60fb      	str	r3, [r7, #12]
2000124a:	68bb      	ldr	r3, [r7, #8]
2000124c:	085b      	lsrs	r3, r3, #1
2000124e:	60bb      	str	r3, [r7, #8]
20001250:	68bb      	ldr	r3, [r7, #8]
20001252:	2b00      	cmp	r3, #0
20001254:	d1f5      	bne.n	20001242 <encoder_crc+0x12>
20001256:	68fb      	ldr	r3, [r7, #12]
20001258:	f003 0301 	and.w	r3, r3, #1
2000125c:	2b00      	cmp	r3, #0
2000125e:	d107      	bne.n	20001270 <encoder_crc+0x40>
20001260:	687b      	ldr	r3, [r7, #4]
20001262:	f3c3 030b 	ubfx	r3, r3, #0, #12
20001266:	4a06      	ldr	r2, [pc, #24]	; (20001280 <encoder_crc+0x50>)
20001268:	6013      	str	r3, [r2, #0]
2000126a:	4b05      	ldr	r3, [pc, #20]	; (20001280 <encoder_crc+0x50>)
2000126c:	681b      	ldr	r3, [r3, #0]
2000126e:	2b00      	cmp	r3, #0
20001270:	4b03      	ldr	r3, [pc, #12]	; (20001280 <encoder_crc+0x50>)
20001272:	681b      	ldr	r3, [r3, #0]
20001274:	4618      	mov	r0, r3
20001276:	3714      	adds	r7, #20
20001278:	46bd      	mov	sp, r7
2000127a:	bc80      	pop	{r7}
2000127c:	4770      	bx	lr
2000127e:	bf00      	nop
20001280:	200025c0 	.word	0x200025c0
