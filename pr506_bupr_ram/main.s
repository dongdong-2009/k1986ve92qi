
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
2000003a:	f001 f91f 	bl	2000127c <system_init>
2000003e:	f000 f8ef 	bl	20000220 <ssi_init>
20000042:	f000 f961 	bl	20000308 <dac_init>
20000046:	f000 febd 	bl	20000dc4 <adc_dma_init>
2000004a:	f107 034c 	add.w	r3, r7, #76	; 0x4c
2000004e:	22c8      	movs	r2, #200	; 0xc8
20000050:	2150      	movs	r1, #80	; 0x50
20000052:	4618      	mov	r0, r3
20000054:	f000 f9fc 	bl	20000450 <reg_init>
20000058:	f107 033c 	add.w	r3, r7, #60	; 0x3c
2000005c:	22c8      	movs	r2, #200	; 0xc8
2000005e:	2150      	movs	r1, #80	; 0x50
20000060:	4618      	mov	r0, r3
20000062:	f000 f9f5 	bl	20000450 <reg_init>
20000066:	f107 032c 	add.w	r3, r7, #44	; 0x2c
2000006a:	f44f 627a 	mov.w	r2, #4000	; 0xfa0
2000006e:	2100      	movs	r1, #0
20000070:	4618      	mov	r0, r3
20000072:	f000 f9ed 	bl	20000450 <reg_init>
20000076:	f107 031c 	add.w	r3, r7, #28
2000007a:	f241 7270 	movw	r2, #6000	; 0x1770
2000007e:	2100      	movs	r1, #0
20000080:	4618      	mov	r0, r3
20000082:	f000 f9e5 	bl	20000450 <reg_init>
20000086:	2300      	movs	r3, #0
20000088:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
2000008c:	2300      	movs	r3, #0
2000008e:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000092:	2300      	movs	r3, #0
20000094:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
20000098:	e018      	b.n	200000cc <main+0xcc>
2000009a:	f000 feaf 	bl	20000dfc <adc_dma_wait>
2000009e:	4b52      	ldr	r3, [pc, #328]	; (200001e8 <main+0x1e8>)
200000a0:	685b      	ldr	r3, [r3, #4]
200000a2:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000a6:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000aa:	4413      	add	r3, r2
200000ac:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
200000b0:	4b4d      	ldr	r3, [pc, #308]	; (200001e8 <main+0x1e8>)
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
200000ea:	f000 fe87 	bl	20000dfc <adc_dma_wait>
200000ee:	4b3e      	ldr	r3, [pc, #248]	; (200001e8 <main+0x1e8>)
200000f0:	685b      	ldr	r3, [r3, #4]
200000f2:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000f6:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000fa:	1ad3      	subs	r3, r2, r3
200000fc:	673b      	str	r3, [r7, #112]	; 0x70
200000fe:	4b3a      	ldr	r3, [pc, #232]	; (200001e8 <main+0x1e8>)
20000100:	681b      	ldr	r3, [r3, #0]
20000102:	f3c3 020b 	ubfx	r2, r3, #0, #12
20000106:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
2000010a:	1ad3      	subs	r3, r2, r3
2000010c:	66fb      	str	r3, [r7, #108]	; 0x6c
2000010e:	6f3a      	ldr	r2, [r7, #112]	; 0x70
20000110:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20000112:	4413      	add	r3, r2
20000114:	66bb      	str	r3, [r7, #104]	; 0x68
20000116:	4b35      	ldr	r3, [pc, #212]	; (200001ec <main+0x1ec>)
20000118:	689b      	ldr	r3, [r3, #8]
2000011a:	4618      	mov	r0, r3
2000011c:	f000 f8ca 	bl	200002b4 <enc_crc>
20000120:	6678      	str	r0, [r7, #100]	; 0x64
20000122:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20000124:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000128:	677b      	str	r3, [r7, #116]	; 0x74
2000012a:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
2000012e:	3301      	adds	r3, #1
20000130:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
20000134:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
20000138:	f003 0307 	and.w	r3, r3, #7
2000013c:	2b00      	cmp	r3, #0
2000013e:	d107      	bne.n	20000150 <main+0x150>
20000140:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20000142:	f107 0218 	add.w	r2, r7, #24
20000146:	4611      	mov	r1, r2
20000148:	4618      	mov	r0, r3
2000014a:	f000 fd3f 	bl	20000bcc <get_speed>
2000014e:	67f8      	str	r0, [r7, #124]	; 0x7c
20000150:	f06f 0363 	mvn.w	r3, #99	; 0x63
20000154:	67bb      	str	r3, [r7, #120]	; 0x78
20000156:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20000158:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000015c:	677b      	str	r3, [r7, #116]	; 0x74
2000015e:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20000160:	607b      	str	r3, [r7, #4]
20000162:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20000164:	60bb      	str	r3, [r7, #8]
20000166:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20000168:	60fb      	str	r3, [r7, #12]
2000016a:	6f7a      	ldr	r2, [r7, #116]	; 0x74
2000016c:	f107 0110 	add.w	r1, r7, #16
20000170:	1d3b      	adds	r3, r7, #4
20000172:	4618      	mov	r0, r3
20000174:	f000 f998 	bl	200004a8 <abc_to_dq>
20000178:	693b      	ldr	r3, [r7, #16]
2000017a:	425b      	negs	r3, r3
2000017c:	663b      	str	r3, [r7, #96]	; 0x60
2000017e:	697b      	ldr	r3, [r7, #20]
20000180:	6fba      	ldr	r2, [r7, #120]	; 0x78
20000182:	1ad3      	subs	r3, r2, r3
20000184:	65fb      	str	r3, [r7, #92]	; 0x5c
20000186:	697b      	ldr	r3, [r7, #20]
20000188:	009b      	lsls	r3, r3, #2
2000018a:	4618      	mov	r0, r3
2000018c:	f000 f93e 	bl	2000040c <debug_signal>
20000190:	f107 034c 	add.w	r3, r7, #76	; 0x4c
20000194:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
20000198:	6e39      	ldr	r1, [r7, #96]	; 0x60
2000019a:	4618      	mov	r0, r3
2000019c:	f000 f95e 	bl	2000045c <reg_update>
200001a0:	f107 033c 	add.w	r3, r7, #60	; 0x3c
200001a4:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
200001a8:	6df9      	ldr	r1, [r7, #92]	; 0x5c
200001aa:	4618      	mov	r0, r3
200001ac:	f000 f956 	bl	2000045c <reg_update>
200001b0:	6dbb      	ldr	r3, [r7, #88]	; 0x58
200001b2:	109b      	asrs	r3, r3, #2
200001b4:	613b      	str	r3, [r7, #16]
200001b6:	6cbb      	ldr	r3, [r7, #72]	; 0x48
200001b8:	109b      	asrs	r3, r3, #2
200001ba:	617b      	str	r3, [r7, #20]
200001bc:	6f7a      	ldr	r2, [r7, #116]	; 0x74
200001be:	f107 0110 	add.w	r1, r7, #16
200001c2:	1d3b      	adds	r3, r7, #4
200001c4:	4618      	mov	r0, r3
200001c6:	f000 fb87 	bl	200008d8 <svpwm>
200001ca:	f8c7 0084 	str.w	r0, [r7, #132]	; 0x84
200001ce:	687b      	ldr	r3, [r7, #4]
200001d0:	4618      	mov	r0, r3
200001d2:	f000 f8eb 	bl	200003ac <pwm_seta>
200001d6:	68bb      	ldr	r3, [r7, #8]
200001d8:	4618      	mov	r0, r3
200001da:	f000 f8f7 	bl	200003cc <pwm_setb>
200001de:	68fb      	ldr	r3, [r7, #12]
200001e0:	4618      	mov	r0, r3
200001e2:	f000 f903 	bl	200003ec <pwm_setc>
200001e6:	e780      	b.n	200000ea <main+0xea>
200001e8:	20002a00 	.word	0x20002a00
200001ec:	40040000 	.word	0x40040000

200001f0 <sleep>:
200001f0:	b480      	push	{r7}
200001f2:	b085      	sub	sp, #20
200001f4:	af00      	add	r7, sp, #0
200001f6:	6078      	str	r0, [r7, #4]
200001f8:	4b08      	ldr	r3, [pc, #32]	; (2000021c <sleep+0x2c>)
200001fa:	681a      	ldr	r2, [r3, #0]
200001fc:	687b      	ldr	r3, [r7, #4]
200001fe:	4413      	add	r3, r2
20000200:	60fb      	str	r3, [r7, #12]
20000202:	bf00      	nop
20000204:	4b05      	ldr	r3, [pc, #20]	; (2000021c <sleep+0x2c>)
20000206:	681a      	ldr	r2, [r3, #0]
20000208:	68fb      	ldr	r3, [r7, #12]
2000020a:	429a      	cmp	r2, r3
2000020c:	d3fa      	bcc.n	20000204 <sleep+0x14>
2000020e:	bf00      	nop
20000210:	4618      	mov	r0, r3
20000212:	3714      	adds	r7, #20
20000214:	46bd      	mov	sp, r7
20000216:	bc80      	pop	{r7}
20000218:	4770      	bx	lr
2000021a:	bf00      	nop
2000021c:	20002400 	.word	0x20002400

20000220 <ssi_init>:
20000220:	b480      	push	{r7}
20000222:	af00      	add	r7, sp, #0
20000224:	4a0c      	ldr	r2, [pc, #48]	; (20000258 <ssi_init+0x38>)
20000226:	4b0c      	ldr	r3, [pc, #48]	; (20000258 <ssi_init+0x38>)
20000228:	69db      	ldr	r3, [r3, #28]
2000022a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000022e:	61d3      	str	r3, [r2, #28]
20000230:	4b09      	ldr	r3, [pc, #36]	; (20000258 <ssi_init+0x38>)
20000232:	4a0a      	ldr	r2, [pc, #40]	; (2000025c <ssi_init+0x3c>)
20000234:	62da      	str	r2, [r3, #44]	; 0x2c
20000236:	4b0a      	ldr	r3, [pc, #40]	; (20000260 <ssi_init+0x40>)
20000238:	2200      	movs	r2, #0
2000023a:	605a      	str	r2, [r3, #4]
2000023c:	4b08      	ldr	r3, [pc, #32]	; (20000260 <ssi_init+0x40>)
2000023e:	220a      	movs	r2, #10
20000240:	611a      	str	r2, [r3, #16]
20000242:	4b07      	ldr	r3, [pc, #28]	; (20000260 <ssi_init+0x40>)
20000244:	f240 221f 	movw	r2, #543	; 0x21f
20000248:	601a      	str	r2, [r3, #0]
2000024a:	4b05      	ldr	r3, [pc, #20]	; (20000260 <ssi_init+0x40>)
2000024c:	2202      	movs	r2, #2
2000024e:	605a      	str	r2, [r3, #4]
20000250:	bf00      	nop
20000252:	46bd      	mov	sp, r7
20000254:	bc80      	pop	{r7}
20000256:	4770      	bx	lr
20000258:	40020000 	.word	0x40020000
2000025c:	0100000a 	.word	0x0100000a
20000260:	40040000 	.word	0x40040000

20000264 <b2g>:
20000264:	b480      	push	{r7}
20000266:	b083      	sub	sp, #12
20000268:	af00      	add	r7, sp, #0
2000026a:	6078      	str	r0, [r7, #4]
2000026c:	687b      	ldr	r3, [r7, #4]
2000026e:	085a      	lsrs	r2, r3, #1
20000270:	687b      	ldr	r3, [r7, #4]
20000272:	4053      	eors	r3, r2
20000274:	4618      	mov	r0, r3
20000276:	370c      	adds	r7, #12
20000278:	46bd      	mov	sp, r7
2000027a:	bc80      	pop	{r7}
2000027c:	4770      	bx	lr
2000027e:	bf00      	nop

20000280 <g2b>:
20000280:	b480      	push	{r7}
20000282:	b085      	sub	sp, #20
20000284:	af00      	add	r7, sp, #0
20000286:	6078      	str	r0, [r7, #4]
20000288:	2300      	movs	r3, #0
2000028a:	60fb      	str	r3, [r7, #12]
2000028c:	2300      	movs	r3, #0
2000028e:	60fb      	str	r3, [r7, #12]
20000290:	e006      	b.n	200002a0 <g2b+0x20>
20000292:	68fa      	ldr	r2, [r7, #12]
20000294:	687b      	ldr	r3, [r7, #4]
20000296:	4053      	eors	r3, r2
20000298:	60fb      	str	r3, [r7, #12]
2000029a:	687b      	ldr	r3, [r7, #4]
2000029c:	085b      	lsrs	r3, r3, #1
2000029e:	607b      	str	r3, [r7, #4]
200002a0:	687b      	ldr	r3, [r7, #4]
200002a2:	2b00      	cmp	r3, #0
200002a4:	d1f5      	bne.n	20000292 <g2b+0x12>
200002a6:	68fb      	ldr	r3, [r7, #12]
200002a8:	4618      	mov	r0, r3
200002aa:	3714      	adds	r7, #20
200002ac:	46bd      	mov	sp, r7
200002ae:	bc80      	pop	{r7}
200002b0:	4770      	bx	lr
200002b2:	bf00      	nop

200002b4 <enc_crc>:
200002b4:	b480      	push	{r7}
200002b6:	b085      	sub	sp, #20
200002b8:	af00      	add	r7, sp, #0
200002ba:	6078      	str	r0, [r7, #4]
200002bc:	687b      	ldr	r3, [r7, #4]
200002be:	60bb      	str	r3, [r7, #8]
200002c0:	2300      	movs	r3, #0
200002c2:	60fb      	str	r3, [r7, #12]
200002c4:	e006      	b.n	200002d4 <enc_crc+0x20>
200002c6:	68fa      	ldr	r2, [r7, #12]
200002c8:	68bb      	ldr	r3, [r7, #8]
200002ca:	4053      	eors	r3, r2
200002cc:	60fb      	str	r3, [r7, #12]
200002ce:	68bb      	ldr	r3, [r7, #8]
200002d0:	085b      	lsrs	r3, r3, #1
200002d2:	60bb      	str	r3, [r7, #8]
200002d4:	68bb      	ldr	r3, [r7, #8]
200002d6:	2b00      	cmp	r3, #0
200002d8:	d1f5      	bne.n	200002c6 <enc_crc+0x12>
200002da:	68fb      	ldr	r3, [r7, #12]
200002dc:	f003 0301 	and.w	r3, r3, #1
200002e0:	2b00      	cmp	r3, #0
200002e2:	d107      	bne.n	200002f4 <enc_crc+0x40>
200002e4:	687b      	ldr	r3, [r7, #4]
200002e6:	f3c3 030b 	ubfx	r3, r3, #0, #12
200002ea:	4a06      	ldr	r2, [pc, #24]	; (20000304 <enc_crc+0x50>)
200002ec:	6013      	str	r3, [r2, #0]
200002ee:	4b05      	ldr	r3, [pc, #20]	; (20000304 <enc_crc+0x50>)
200002f0:	681b      	ldr	r3, [r3, #0]
200002f2:	2b00      	cmp	r3, #0
200002f4:	4b03      	ldr	r3, [pc, #12]	; (20000304 <enc_crc+0x50>)
200002f6:	681b      	ldr	r3, [r3, #0]
200002f8:	4618      	mov	r0, r3
200002fa:	3714      	adds	r7, #20
200002fc:	46bd      	mov	sp, r7
200002fe:	bc80      	pop	{r7}
20000300:	4770      	bx	lr
20000302:	bf00      	nop
20000304:	20002300 	.word	0x20002300

20000308 <dac_init>:
20000308:	b480      	push	{r7}
2000030a:	af00      	add	r7, sp, #0
2000030c:	4a07      	ldr	r2, [pc, #28]	; (2000032c <dac_init+0x24>)
2000030e:	4b07      	ldr	r3, [pc, #28]	; (2000032c <dac_init+0x24>)
20000310:	69db      	ldr	r3, [r3, #28]
20000312:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
20000316:	61d3      	str	r3, [r2, #28]
20000318:	4a05      	ldr	r2, [pc, #20]	; (20000330 <dac_init+0x28>)
2000031a:	4b05      	ldr	r3, [pc, #20]	; (20000330 <dac_init+0x28>)
2000031c:	681b      	ldr	r3, [r3, #0]
2000031e:	f043 0308 	orr.w	r3, r3, #8
20000322:	6013      	str	r3, [r2, #0]
20000324:	bf00      	nop
20000326:	46bd      	mov	sp, r7
20000328:	bc80      	pop	{r7}
2000032a:	4770      	bx	lr
2000032c:	40020000 	.word	0x40020000
20000330:	40090000 	.word	0x40090000

20000334 <encoder_start>:
20000334:	b480      	push	{r7}
20000336:	af00      	add	r7, sp, #0
20000338:	4b03      	ldr	r3, [pc, #12]	; (20000348 <encoder_start+0x14>)
2000033a:	f240 5255 	movw	r2, #1365	; 0x555
2000033e:	609a      	str	r2, [r3, #8]
20000340:	bf00      	nop
20000342:	46bd      	mov	sp, r7
20000344:	bc80      	pop	{r7}
20000346:	4770      	bx	lr
20000348:	40040000 	.word	0x40040000

2000034c <TIMER3_Handler>:
2000034c:	b580      	push	{r7, lr}
2000034e:	af00      	add	r7, sp, #0
20000350:	4a07      	ldr	r2, [pc, #28]	; (20000370 <TIMER3_Handler+0x24>)
20000352:	4b07      	ldr	r3, [pc, #28]	; (20000370 <TIMER3_Handler+0x24>)
20000354:	681b      	ldr	r3, [r3, #0]
20000356:	f083 0301 	eor.w	r3, r3, #1
2000035a:	6013      	str	r3, [r2, #0]
2000035c:	4b05      	ldr	r3, [pc, #20]	; (20000374 <TIMER3_Handler+0x28>)
2000035e:	2200      	movs	r2, #0
20000360:	655a      	str	r2, [r3, #84]	; 0x54
20000362:	f7ff ffe7 	bl	20000334 <encoder_start>
20000366:	f000 fd35 	bl	20000dd4 <adc_dma_start>
2000036a:	bf00      	nop
2000036c:	bd80      	pop	{r7, pc}
2000036e:	bf00      	nop
20000370:	400a8000 	.word	0x400a8000
20000374:	40080000 	.word	0x40080000

20000378 <get_phase>:
20000378:	b580      	push	{r7, lr}
2000037a:	af00      	add	r7, sp, #0
2000037c:	4b0a      	ldr	r3, [pc, #40]	; (200003a8 <get_phase+0x30>)
2000037e:	f240 5255 	movw	r2, #1365	; 0x555
20000382:	609a      	str	r2, [r3, #8]
20000384:	bf00      	nop
20000386:	4b08      	ldr	r3, [pc, #32]	; (200003a8 <get_phase+0x30>)
20000388:	68db      	ldr	r3, [r3, #12]
2000038a:	f003 0304 	and.w	r3, r3, #4
2000038e:	2b00      	cmp	r3, #0
20000390:	d0f9      	beq.n	20000386 <get_phase+0xe>
20000392:	4b05      	ldr	r3, [pc, #20]	; (200003a8 <get_phase+0x30>)
20000394:	689b      	ldr	r3, [r3, #8]
20000396:	f3c3 030b 	ubfx	r3, r3, #0, #12
2000039a:	4618      	mov	r0, r3
2000039c:	f7ff ff70 	bl	20000280 <g2b>
200003a0:	4603      	mov	r3, r0
200003a2:	4618      	mov	r0, r3
200003a4:	bd80      	pop	{r7, pc}
200003a6:	bf00      	nop
200003a8:	40040000 	.word	0x40040000

200003ac <pwm_seta>:
200003ac:	b480      	push	{r7}
200003ae:	b083      	sub	sp, #12
200003b0:	af00      	add	r7, sp, #0
200003b2:	6078      	str	r0, [r7, #4]
200003b4:	4a04      	ldr	r2, [pc, #16]	; (200003c8 <pwm_seta+0x1c>)
200003b6:	687b      	ldr	r3, [r7, #4]
200003b8:	f503 7300 	add.w	r3, r3, #512	; 0x200
200003bc:	6113      	str	r3, [r2, #16]
200003be:	bf00      	nop
200003c0:	370c      	adds	r7, #12
200003c2:	46bd      	mov	sp, r7
200003c4:	bc80      	pop	{r7}
200003c6:	4770      	bx	lr
200003c8:	40080000 	.word	0x40080000

200003cc <pwm_setb>:
200003cc:	b480      	push	{r7}
200003ce:	b083      	sub	sp, #12
200003d0:	af00      	add	r7, sp, #0
200003d2:	6078      	str	r0, [r7, #4]
200003d4:	4a04      	ldr	r2, [pc, #16]	; (200003e8 <pwm_setb+0x1c>)
200003d6:	687b      	ldr	r3, [r7, #4]
200003d8:	f503 7300 	add.w	r3, r3, #512	; 0x200
200003dc:	6153      	str	r3, [r2, #20]
200003de:	bf00      	nop
200003e0:	370c      	adds	r7, #12
200003e2:	46bd      	mov	sp, r7
200003e4:	bc80      	pop	{r7}
200003e6:	4770      	bx	lr
200003e8:	40080000 	.word	0x40080000

200003ec <pwm_setc>:
200003ec:	b480      	push	{r7}
200003ee:	b083      	sub	sp, #12
200003f0:	af00      	add	r7, sp, #0
200003f2:	6078      	str	r0, [r7, #4]
200003f4:	4a04      	ldr	r2, [pc, #16]	; (20000408 <pwm_setc+0x1c>)
200003f6:	687b      	ldr	r3, [r7, #4]
200003f8:	f503 7300 	add.w	r3, r3, #512	; 0x200
200003fc:	6193      	str	r3, [r2, #24]
200003fe:	bf00      	nop
20000400:	370c      	adds	r7, #12
20000402:	46bd      	mov	sp, r7
20000404:	bc80      	pop	{r7}
20000406:	4770      	bx	lr
20000408:	40080000 	.word	0x40080000

2000040c <debug_signal>:
2000040c:	b480      	push	{r7}
2000040e:	b083      	sub	sp, #12
20000410:	af00      	add	r7, sp, #0
20000412:	6078      	str	r0, [r7, #4]
20000414:	4a04      	ldr	r2, [pc, #16]	; (20000428 <debug_signal+0x1c>)
20000416:	687b      	ldr	r3, [r7, #4]
20000418:	f503 6300 	add.w	r3, r3, #2048	; 0x800
2000041c:	6093      	str	r3, [r2, #8]
2000041e:	bf00      	nop
20000420:	370c      	adds	r7, #12
20000422:	46bd      	mov	sp, r7
20000424:	bc80      	pop	{r7}
20000426:	4770      	bx	lr
20000428:	40090000 	.word	0x40090000

2000042c <mycos>:
2000042c:	4b02      	ldr	r3, [pc, #8]	; (20000438 <mycos+0xc>)
2000042e:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000432:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000436:	4770      	bx	lr
20000438:	200012f0 	.word	0x200012f0

2000043c <mysin>:
2000043c:	4b03      	ldr	r3, [pc, #12]	; (2000044c <mysin+0x10>)
2000043e:	f500 7040 	add.w	r0, r0, #768	; 0x300
20000442:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000446:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
2000044a:	4770      	bx	lr
2000044c:	200012f0 	.word	0x200012f0

20000450 <reg_init>:
20000450:	2300      	movs	r3, #0
20000452:	e880 000e 	stmia.w	r0, {r1, r2, r3}
20000456:	60c3      	str	r3, [r0, #12]
20000458:	4770      	bx	lr
2000045a:	bf00      	nop

2000045c <reg_update>:
2000045c:	6803      	ldr	r3, [r0, #0]
2000045e:	b410      	push	{r4}
20000460:	fb03 f301 	mul.w	r3, r3, r1
20000464:	6884      	ldr	r4, [r0, #8]
20000466:	b11a      	cbz	r2, 20000470 <reg_update+0x14>
20000468:	2c00      	cmp	r4, #0
2000046a:	dd09      	ble.n	20000480 <reg_update+0x24>
2000046c:	ea03 73e3 	and.w	r3, r3, r3, asr #31
20000470:	6842      	ldr	r2, [r0, #4]
20000472:	4423      	add	r3, r4
20000474:	fb02 3101 	mla	r1, r2, r1, r3
20000478:	6083      	str	r3, [r0, #8]
2000047a:	60c1      	str	r1, [r0, #12]
2000047c:	bc10      	pop	{r4}
2000047e:	4770      	bx	lr
20000480:	bf18      	it	ne
20000482:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
20000486:	e7f3      	b.n	20000470 <reg_update+0x14>

20000488 <dot3>:
20000488:	b430      	push	{r4, r5}
2000048a:	684b      	ldr	r3, [r1, #4]
2000048c:	6844      	ldr	r4, [r0, #4]
2000048e:	6802      	ldr	r2, [r0, #0]
20000490:	fb03 f304 	mul.w	r3, r3, r4
20000494:	680d      	ldr	r5, [r1, #0]
20000496:	6884      	ldr	r4, [r0, #8]
20000498:	fb05 3302 	mla	r3, r5, r2, r3
2000049c:	6888      	ldr	r0, [r1, #8]
2000049e:	fb00 3004 	mla	r0, r0, r4, r3
200004a2:	bc30      	pop	{r4, r5}
200004a4:	4770      	bx	lr
200004a6:	bf00      	nop

200004a8 <abc_to_dq>:
200004a8:	b4f0      	push	{r4, r5, r6, r7}
200004aa:	4c1d      	ldr	r4, [pc, #116]	; (20000520 <abc_to_dq+0x78>)
200004ac:	6803      	ldr	r3, [r0, #0]
200004ae:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
200004b2:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
200004b6:	fb03 f306 	mul.w	r3, r3, r6
200004ba:	f3c5 0509 	ubfx	r5, r5, #0, #10
200004be:	6847      	ldr	r7, [r0, #4]
200004c0:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200004c4:	f202 1655 	addw	r6, r2, #341	; 0x155
200004c8:	fb07 3305 	mla	r3, r7, r5, r3
200004cc:	f3c6 0509 	ubfx	r5, r6, #0, #10
200004d0:	6887      	ldr	r7, [r0, #8]
200004d2:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200004d6:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
200004da:	fb07 3305 	mla	r3, r7, r5, r3
200004de:	129b      	asrs	r3, r3, #10
200004e0:	600b      	str	r3, [r1, #0]
200004e2:	f3c6 0509 	ubfx	r5, r6, #0, #10
200004e6:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
200004ea:	6843      	ldr	r3, [r0, #4]
200004ec:	f502 7540 	add.w	r5, r2, #768	; 0x300
200004f0:	fb03 f306 	mul.w	r3, r3, r6
200004f4:	f3c5 0509 	ubfx	r5, r5, #0, #10
200004f8:	6806      	ldr	r6, [r0, #0]
200004fa:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200004fe:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000502:	fb06 3305 	mla	r3, r6, r5, r3
20000506:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000050a:	6880      	ldr	r0, [r0, #8]
2000050c:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
20000510:	bcf0      	pop	{r4, r5, r6, r7}
20000512:	fb00 3302 	mla	r3, r0, r2, r3
20000516:	425b      	negs	r3, r3
20000518:	129b      	asrs	r3, r3, #10
2000051a:	604b      	str	r3, [r1, #4]
2000051c:	4770      	bx	lr
2000051e:	bf00      	nop
20000520:	200012f0 	.word	0x200012f0

20000524 <dq_to_abc>:
20000524:	4b1d      	ldr	r3, [pc, #116]	; (2000059c <dq_to_abc+0x78>)
20000526:	b4f0      	push	{r4, r5, r6, r7}
20000528:	680e      	ldr	r6, [r1, #0]
2000052a:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
2000052e:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000532:	fb04 f406 	mul.w	r4, r4, r6
20000536:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000053a:	684f      	ldr	r7, [r1, #4]
2000053c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000540:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000544:	fb07 4415 	mls	r4, r7, r5, r4
20000548:	1524      	asrs	r4, r4, #20
2000054a:	6004      	str	r4, [r0, #0]
2000054c:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000550:	680c      	ldr	r4, [r1, #0]
20000552:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
20000556:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
2000055a:	fb04 f406 	mul.w	r4, r4, r6
2000055e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000562:	684f      	ldr	r7, [r1, #4]
20000564:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000568:	f202 1655 	addw	r6, r2, #341	; 0x155
2000056c:	fb07 4415 	mls	r4, r7, r5, r4
20000570:	1524      	asrs	r4, r4, #20
20000572:	6044      	str	r4, [r0, #4]
20000574:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000578:	680c      	ldr	r4, [r1, #0]
2000057a:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
2000057e:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000582:	fb04 f405 	mul.w	r4, r4, r5
20000586:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000058a:	6849      	ldr	r1, [r1, #4]
2000058c:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
20000590:	fb01 4312 	mls	r3, r1, r2, r4
20000594:	bcf0      	pop	{r4, r5, r6, r7}
20000596:	151b      	asrs	r3, r3, #20
20000598:	6083      	str	r3, [r0, #8]
2000059a:	4770      	bx	lr
2000059c:	200012f0 	.word	0x200012f0

200005a0 <cord_atan>:
200005a0:	b5f0      	push	{r4, r5, r6, r7, lr}
200005a2:	b091      	sub	sp, #68	; 0x44
200005a4:	46ee      	mov	lr, sp
200005a6:	4684      	mov	ip, r0
200005a8:	4e56      	ldr	r6, [pc, #344]	; (20000704 <cord_atan+0x164>)
200005aa:	460d      	mov	r5, r1
200005ac:	4614      	mov	r4, r2
200005ae:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200005b0:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200005b4:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200005b8:	af08      	add	r7, sp, #32
200005ba:	3610      	adds	r6, #16
200005bc:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200005c0:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200005c2:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200005c4:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200005c8:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200005cc:	f8dc 6000 	ldr.w	r6, [ip]
200005d0:	f8dc 3004 	ldr.w	r3, [ip, #4]
200005d4:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200005d8:	2b00      	cmp	r3, #0
200005da:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200005de:	9900      	ldr	r1, [sp, #0]
200005e0:	dd56      	ble.n	20000690 <cord_atan+0xf0>
200005e2:	18d0      	adds	r0, r2, r3
200005e4:	1a9b      	subs	r3, r3, r2
200005e6:	2b00      	cmp	r3, #0
200005e8:	d07a      	beq.n	200006e0 <cord_atan+0x140>
200005ea:	9f01      	ldr	r7, [sp, #4]
200005ec:	dd54      	ble.n	20000698 <cord_atan+0xf8>
200005ee:	eb00 0263 	add.w	r2, r0, r3, asr #1
200005f2:	4439      	add	r1, r7
200005f4:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200005f8:	2b00      	cmp	r3, #0
200005fa:	d073      	beq.n	200006e4 <cord_atan+0x144>
200005fc:	9f02      	ldr	r7, [sp, #8]
200005fe:	dd51      	ble.n	200006a4 <cord_atan+0x104>
20000600:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000604:	4439      	add	r1, r7
20000606:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
2000060a:	2b00      	cmp	r3, #0
2000060c:	d06d      	beq.n	200006ea <cord_atan+0x14a>
2000060e:	9f03      	ldr	r7, [sp, #12]
20000610:	dd4e      	ble.n	200006b0 <cord_atan+0x110>
20000612:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000616:	4439      	add	r1, r7
20000618:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
2000061c:	2b00      	cmp	r3, #0
2000061e:	d066      	beq.n	200006ee <cord_atan+0x14e>
20000620:	9f04      	ldr	r7, [sp, #16]
20000622:	dd4b      	ble.n	200006bc <cord_atan+0x11c>
20000624:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000628:	4439      	add	r1, r7
2000062a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000062e:	2b00      	cmp	r3, #0
20000630:	d060      	beq.n	200006f4 <cord_atan+0x154>
20000632:	9f05      	ldr	r7, [sp, #20]
20000634:	dd48      	ble.n	200006c8 <cord_atan+0x128>
20000636:	eb00 1263 	add.w	r2, r0, r3, asr #5
2000063a:	4439      	add	r1, r7
2000063c:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000640:	2b00      	cmp	r3, #0
20000642:	d059      	beq.n	200006f8 <cord_atan+0x158>
20000644:	9f06      	ldr	r7, [sp, #24]
20000646:	dd45      	ble.n	200006d4 <cord_atan+0x134>
20000648:	eb02 10a3 	add.w	r0, r2, r3, asr #6
2000064c:	4439      	add	r1, r7
2000064e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000652:	2b00      	cmp	r3, #0
20000654:	d053      	beq.n	200006fe <cord_atan+0x15e>
20000656:	9a07      	ldr	r2, [sp, #28]
20000658:	bfc7      	ittee	gt
2000065a:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
2000065e:	1889      	addgt	r1, r1, r2
20000660:	1a89      	suble	r1, r1, r2
20000662:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000666:	2207      	movs	r2, #7
20000668:	ab10      	add	r3, sp, #64	; 0x40
2000066a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000066e:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000672:	2e00      	cmp	r6, #0
20000674:	fb03 f300 	mul.w	r3, r3, r0
20000678:	bfb8      	it	lt
2000067a:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
2000067e:	2900      	cmp	r1, #0
20000680:	bfb8      	it	lt
20000682:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000686:	129b      	asrs	r3, r3, #10
20000688:	6029      	str	r1, [r5, #0]
2000068a:	6023      	str	r3, [r4, #0]
2000068c:	b011      	add	sp, #68	; 0x44
2000068e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000690:	1ad0      	subs	r0, r2, r3
20000692:	4249      	negs	r1, r1
20000694:	4413      	add	r3, r2
20000696:	e7a6      	b.n	200005e6 <cord_atan+0x46>
20000698:	eba0 0263 	sub.w	r2, r0, r3, asr #1
2000069c:	1bc9      	subs	r1, r1, r7
2000069e:	eb03 0360 	add.w	r3, r3, r0, asr #1
200006a2:	e7a9      	b.n	200005f8 <cord_atan+0x58>
200006a4:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
200006a8:	1bc9      	subs	r1, r1, r7
200006aa:	eb03 03a2 	add.w	r3, r3, r2, asr #2
200006ae:	e7ac      	b.n	2000060a <cord_atan+0x6a>
200006b0:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
200006b4:	1bc9      	subs	r1, r1, r7
200006b6:	eb03 03e0 	add.w	r3, r3, r0, asr #3
200006ba:	e7af      	b.n	2000061c <cord_atan+0x7c>
200006bc:	eba2 1023 	sub.w	r0, r2, r3, asr #4
200006c0:	1bc9      	subs	r1, r1, r7
200006c2:	eb03 1322 	add.w	r3, r3, r2, asr #4
200006c6:	e7b2      	b.n	2000062e <cord_atan+0x8e>
200006c8:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200006cc:	1bc9      	subs	r1, r1, r7
200006ce:	eb03 1360 	add.w	r3, r3, r0, asr #5
200006d2:	e7b5      	b.n	20000640 <cord_atan+0xa0>
200006d4:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
200006d8:	1bc9      	subs	r1, r1, r7
200006da:	eb03 13a2 	add.w	r3, r3, r2, asr #6
200006de:	e7b8      	b.n	20000652 <cord_atan+0xb2>
200006e0:	461a      	mov	r2, r3
200006e2:	e7c1      	b.n	20000668 <cord_atan+0xc8>
200006e4:	4610      	mov	r0, r2
200006e6:	2201      	movs	r2, #1
200006e8:	e7be      	b.n	20000668 <cord_atan+0xc8>
200006ea:	2202      	movs	r2, #2
200006ec:	e7bc      	b.n	20000668 <cord_atan+0xc8>
200006ee:	4610      	mov	r0, r2
200006f0:	2203      	movs	r2, #3
200006f2:	e7b9      	b.n	20000668 <cord_atan+0xc8>
200006f4:	2204      	movs	r2, #4
200006f6:	e7b7      	b.n	20000668 <cord_atan+0xc8>
200006f8:	4610      	mov	r0, r2
200006fa:	2205      	movs	r2, #5
200006fc:	e7b4      	b.n	20000668 <cord_atan+0xc8>
200006fe:	2206      	movs	r2, #6
20000700:	e7b2      	b.n	20000668 <cord_atan+0xc8>
20000702:	bf00      	nop
20000704:	200012b0 	.word	0x200012b0

20000708 <sinpwm>:
20000708:	b5f0      	push	{r4, r5, r6, r7, lr}
2000070a:	b091      	sub	sp, #68	; 0x44
2000070c:	46ee      	mov	lr, sp
2000070e:	468c      	mov	ip, r1
20000710:	4e6e      	ldr	r6, [pc, #440]	; (200008cc <sinpwm+0x1c4>)
20000712:	4604      	mov	r4, r0
20000714:	4615      	mov	r5, r2
20000716:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000718:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
2000071c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000720:	af08      	add	r7, sp, #32
20000722:	3610      	adds	r6, #16
20000724:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000728:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2000072a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
2000072c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000730:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000734:	f8dc 6000 	ldr.w	r6, [ip]
20000738:	f8dc 3004 	ldr.w	r3, [ip, #4]
2000073c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000740:	2b00      	cmp	r3, #0
20000742:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000746:	9900      	ldr	r1, [sp, #0]
20000748:	f340 8087 	ble.w	2000085a <sinpwm+0x152>
2000074c:	18d0      	adds	r0, r2, r3
2000074e:	1a9b      	subs	r3, r3, r2
20000750:	2b00      	cmp	r3, #0
20000752:	f000 80aa 	beq.w	200008aa <sinpwm+0x1a2>
20000756:	9f01      	ldr	r7, [sp, #4]
20000758:	f340 8083 	ble.w	20000862 <sinpwm+0x15a>
2000075c:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000760:	4439      	add	r1, r7
20000762:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000766:	2b00      	cmp	r3, #0
20000768:	f000 80a1 	beq.w	200008ae <sinpwm+0x1a6>
2000076c:	9f02      	ldr	r7, [sp, #8]
2000076e:	dd7e      	ble.n	2000086e <sinpwm+0x166>
20000770:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000774:	4439      	add	r1, r7
20000776:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
2000077a:	2b00      	cmp	r3, #0
2000077c:	f000 809a 	beq.w	200008b4 <sinpwm+0x1ac>
20000780:	9f03      	ldr	r7, [sp, #12]
20000782:	dd7a      	ble.n	2000087a <sinpwm+0x172>
20000784:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000788:	4439      	add	r1, r7
2000078a:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
2000078e:	2b00      	cmp	r3, #0
20000790:	f000 8092 	beq.w	200008b8 <sinpwm+0x1b0>
20000794:	9f04      	ldr	r7, [sp, #16]
20000796:	dd76      	ble.n	20000886 <sinpwm+0x17e>
20000798:	eb02 1023 	add.w	r0, r2, r3, asr #4
2000079c:	4439      	add	r1, r7
2000079e:	eba3 1322 	sub.w	r3, r3, r2, asr #4
200007a2:	2b00      	cmp	r3, #0
200007a4:	f000 808b 	beq.w	200008be <sinpwm+0x1b6>
200007a8:	9f05      	ldr	r7, [sp, #20]
200007aa:	dd72      	ble.n	20000892 <sinpwm+0x18a>
200007ac:	eb00 1263 	add.w	r2, r0, r3, asr #5
200007b0:	4439      	add	r1, r7
200007b2:	eba3 1360 	sub.w	r3, r3, r0, asr #5
200007b6:	2b00      	cmp	r3, #0
200007b8:	f000 8083 	beq.w	200008c2 <sinpwm+0x1ba>
200007bc:	9f06      	ldr	r7, [sp, #24]
200007be:	dd6e      	ble.n	2000089e <sinpwm+0x196>
200007c0:	eb02 10a3 	add.w	r0, r2, r3, asr #6
200007c4:	4439      	add	r1, r7
200007c6:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
200007ca:	2b00      	cmp	r3, #0
200007cc:	d07c      	beq.n	200008c8 <sinpwm+0x1c0>
200007ce:	9a07      	ldr	r2, [sp, #28]
200007d0:	bfc7      	ittee	gt
200007d2:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
200007d6:	1889      	addgt	r1, r1, r2
200007d8:	1a89      	suble	r1, r1, r2
200007da:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
200007de:	2207      	movs	r2, #7
200007e0:	ab10      	add	r3, sp, #64	; 0x40
200007e2:	eb03 0282 	add.w	r2, r3, r2, lsl #2
200007e6:	f852 3c20 	ldr.w	r3, [r2, #-32]
200007ea:	2e00      	cmp	r6, #0
200007ec:	fb03 f300 	mul.w	r3, r3, r0
200007f0:	bfb8      	it	lt
200007f2:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
200007f6:	2900      	cmp	r1, #0
200007f8:	bfb8      	it	lt
200007fa:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
200007fe:	151b      	asrs	r3, r3, #20
20000800:	440d      	add	r5, r1
20000802:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000806:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000080a:	dd22      	ble.n	20000852 <sinpwm+0x14a>
2000080c:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 200008d4 <sinpwm+0x1cc>
20000810:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
20000814:	2001      	movs	r0, #1
20000816:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
2000081a:	4f2d      	ldr	r7, [pc, #180]	; (200008d0 <sinpwm+0x1c8>)
2000081c:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
20000820:	3602      	adds	r6, #2
20000822:	f3ce 0e09 	ubfx	lr, lr, #0, #10
20000826:	f3c6 0609 	ubfx	r6, r6, #0, #10
2000082a:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
2000082e:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
20000832:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
20000836:	fb06 f50c 	mul.w	r5, r6, ip
2000083a:	fb01 f10c 	mul.w	r1, r1, ip
2000083e:	fb02 f303 	mul.w	r3, r2, r3
20000842:	12ad      	asrs	r5, r5, #10
20000844:	128a      	asrs	r2, r1, #10
20000846:	129b      	asrs	r3, r3, #10
20000848:	60a5      	str	r5, [r4, #8]
2000084a:	6062      	str	r2, [r4, #4]
2000084c:	6023      	str	r3, [r4, #0]
2000084e:	b011      	add	sp, #68	; 0x44
20000850:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000852:	f1c3 0c00 	rsb	ip, r3, #0
20000856:	2000      	movs	r0, #0
20000858:	e7dd      	b.n	20000816 <sinpwm+0x10e>
2000085a:	1ad0      	subs	r0, r2, r3
2000085c:	4249      	negs	r1, r1
2000085e:	4413      	add	r3, r2
20000860:	e776      	b.n	20000750 <sinpwm+0x48>
20000862:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000866:	1bc9      	subs	r1, r1, r7
20000868:	eb03 0360 	add.w	r3, r3, r0, asr #1
2000086c:	e77b      	b.n	20000766 <sinpwm+0x5e>
2000086e:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000872:	1bc9      	subs	r1, r1, r7
20000874:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000878:	e77f      	b.n	2000077a <sinpwm+0x72>
2000087a:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
2000087e:	1bc9      	subs	r1, r1, r7
20000880:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000884:	e783      	b.n	2000078e <sinpwm+0x86>
20000886:	eba2 1023 	sub.w	r0, r2, r3, asr #4
2000088a:	1bc9      	subs	r1, r1, r7
2000088c:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000890:	e787      	b.n	200007a2 <sinpwm+0x9a>
20000892:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000896:	1bc9      	subs	r1, r1, r7
20000898:	eb03 1360 	add.w	r3, r3, r0, asr #5
2000089c:	e78b      	b.n	200007b6 <sinpwm+0xae>
2000089e:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
200008a2:	1bc9      	subs	r1, r1, r7
200008a4:	eb03 13a2 	add.w	r3, r3, r2, asr #6
200008a8:	e78f      	b.n	200007ca <sinpwm+0xc2>
200008aa:	461a      	mov	r2, r3
200008ac:	e798      	b.n	200007e0 <sinpwm+0xd8>
200008ae:	4610      	mov	r0, r2
200008b0:	2201      	movs	r2, #1
200008b2:	e795      	b.n	200007e0 <sinpwm+0xd8>
200008b4:	2202      	movs	r2, #2
200008b6:	e793      	b.n	200007e0 <sinpwm+0xd8>
200008b8:	4610      	mov	r0, r2
200008ba:	2203      	movs	r2, #3
200008bc:	e790      	b.n	200007e0 <sinpwm+0xd8>
200008be:	2204      	movs	r2, #4
200008c0:	e78e      	b.n	200007e0 <sinpwm+0xd8>
200008c2:	4610      	mov	r0, r2
200008c4:	2205      	movs	r2, #5
200008c6:	e78b      	b.n	200007e0 <sinpwm+0xd8>
200008c8:	2206      	movs	r2, #6
200008ca:	e789      	b.n	200007e0 <sinpwm+0xd8>
200008cc:	200012b0 	.word	0x200012b0
200008d0:	200012f0 	.word	0x200012f0
200008d4:	fffffe0c 	.word	0xfffffe0c

200008d8 <svpwm>:
200008d8:	b5f0      	push	{r4, r5, r6, r7, lr}
200008da:	b091      	sub	sp, #68	; 0x44
200008dc:	46ee      	mov	lr, sp
200008de:	468c      	mov	ip, r1
200008e0:	4eb8      	ldr	r6, [pc, #736]	; (20000bc4 <svpwm+0x2ec>)
200008e2:	4604      	mov	r4, r0
200008e4:	4615      	mov	r5, r2
200008e6:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200008e8:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200008ec:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200008f0:	af08      	add	r7, sp, #32
200008f2:	3610      	adds	r6, #16
200008f4:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200008f8:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200008fa:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200008fc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000900:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000904:	f8dc 6000 	ldr.w	r6, [ip]
20000908:	f8dc 3004 	ldr.w	r3, [ip, #4]
2000090c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000910:	2b00      	cmp	r3, #0
20000912:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000916:	9900      	ldr	r1, [sp, #0]
20000918:	dd6f      	ble.n	200009fa <svpwm+0x122>
2000091a:	18d0      	adds	r0, r2, r3
2000091c:	1a9b      	subs	r3, r3, r2
2000091e:	2b00      	cmp	r3, #0
20000920:	f000 813f 	beq.w	20000ba2 <svpwm+0x2ca>
20000924:	9f01      	ldr	r7, [sp, #4]
20000926:	dd6c      	ble.n	20000a02 <svpwm+0x12a>
20000928:	eb00 0263 	add.w	r2, r0, r3, asr #1
2000092c:	4439      	add	r1, r7
2000092e:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000932:	2b00      	cmp	r3, #0
20000934:	f000 8137 	beq.w	20000ba6 <svpwm+0x2ce>
20000938:	9f02      	ldr	r7, [sp, #8]
2000093a:	dd68      	ble.n	20000a0e <svpwm+0x136>
2000093c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000940:	4439      	add	r1, r7
20000942:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000946:	2b00      	cmp	r3, #0
20000948:	f000 8130 	beq.w	20000bac <svpwm+0x2d4>
2000094c:	9f03      	ldr	r7, [sp, #12]
2000094e:	dd64      	ble.n	20000a1a <svpwm+0x142>
20000950:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000954:	4439      	add	r1, r7
20000956:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
2000095a:	2b00      	cmp	r3, #0
2000095c:	f000 8128 	beq.w	20000bb0 <svpwm+0x2d8>
20000960:	9f04      	ldr	r7, [sp, #16]
20000962:	dd60      	ble.n	20000a26 <svpwm+0x14e>
20000964:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000968:	4439      	add	r1, r7
2000096a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000096e:	2b00      	cmp	r3, #0
20000970:	f000 8121 	beq.w	20000bb6 <svpwm+0x2de>
20000974:	9f05      	ldr	r7, [sp, #20]
20000976:	dd5c      	ble.n	20000a32 <svpwm+0x15a>
20000978:	eb00 1263 	add.w	r2, r0, r3, asr #5
2000097c:	4439      	add	r1, r7
2000097e:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000982:	2b00      	cmp	r3, #0
20000984:	f000 8119 	beq.w	20000bba <svpwm+0x2e2>
20000988:	9f06      	ldr	r7, [sp, #24]
2000098a:	dd58      	ble.n	20000a3e <svpwm+0x166>
2000098c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000990:	4439      	add	r1, r7
20000992:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000996:	2b00      	cmp	r3, #0
20000998:	f000 8112 	beq.w	20000bc0 <svpwm+0x2e8>
2000099c:	9a07      	ldr	r2, [sp, #28]
2000099e:	bfc7      	ittee	gt
200009a0:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
200009a4:	1889      	addgt	r1, r1, r2
200009a6:	1a89      	suble	r1, r1, r2
200009a8:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
200009ac:	2207      	movs	r2, #7
200009ae:	ab10      	add	r3, sp, #64	; 0x40
200009b0:	2e00      	cmp	r6, #0
200009b2:	eb03 0282 	add.w	r2, r3, r2, lsl #2
200009b6:	bfb8      	it	lt
200009b8:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
200009bc:	f852 3c20 	ldr.w	r3, [r2, #-32]
200009c0:	2900      	cmp	r1, #0
200009c2:	fb03 f300 	mul.w	r3, r3, r0
200009c6:	bfb8      	it	lt
200009c8:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
200009cc:	440d      	add	r5, r1
200009ce:	f3c5 0509 	ubfx	r5, r5, #0, #10
200009d2:	eb05 0245 	add.w	r2, r5, r5, lsl #1
200009d6:	151b      	asrs	r3, r3, #20
200009d8:	1252      	asrs	r2, r2, #9
200009da:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
200009de:	f102 32ff 	add.w	r2, r2, #4294967295
200009e2:	bfc6      	itte	gt
200009e4:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
200009e8:	2001      	movgt	r0, #1
200009ea:	2000      	movle	r0, #0
200009ec:	2a04      	cmp	r2, #4
200009ee:	d848      	bhi.n	20000a82 <svpwm+0x1aa>
200009f0:	e8df f002 	tbb	[pc, r2]
200009f4:	2b9e8164 	.word	0x2b9e8164
200009f8:	bb          	.byte	0xbb
200009f9:	00          	.byte	0x00
200009fa:	1ad0      	subs	r0, r2, r3
200009fc:	4249      	negs	r1, r1
200009fe:	4413      	add	r3, r2
20000a00:	e78d      	b.n	2000091e <svpwm+0x46>
20000a02:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000a06:	1bc9      	subs	r1, r1, r7
20000a08:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000a0c:	e791      	b.n	20000932 <svpwm+0x5a>
20000a0e:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000a12:	1bc9      	subs	r1, r1, r7
20000a14:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000a18:	e795      	b.n	20000946 <svpwm+0x6e>
20000a1a:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000a1e:	1bc9      	subs	r1, r1, r7
20000a20:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000a24:	e799      	b.n	2000095a <svpwm+0x82>
20000a26:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000a2a:	1bc9      	subs	r1, r1, r7
20000a2c:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000a30:	e79d      	b.n	2000096e <svpwm+0x96>
20000a32:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000a36:	1bc9      	subs	r1, r1, r7
20000a38:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000a3c:	e7a1      	b.n	20000982 <svpwm+0xaa>
20000a3e:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000a42:	1bc9      	subs	r1, r1, r7
20000a44:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000a48:	e7a5      	b.n	20000996 <svpwm+0xbe>
20000a4a:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
20000a4e:	4e5e      	ldr	r6, [pc, #376]	; (20000bc8 <svpwm+0x2f0>)
20000a50:	3204      	adds	r2, #4
20000a52:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000a56:	3556      	adds	r5, #86	; 0x56
20000a58:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000a5c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000a60:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000a64:	fb01 f103 	mul.w	r1, r1, r3
20000a68:	fb02 f203 	mul.w	r2, r2, r3
20000a6c:	1289      	asrs	r1, r1, #10
20000a6e:	1293      	asrs	r3, r2, #10
20000a70:	424a      	negs	r2, r1
20000a72:	1ad2      	subs	r2, r2, r3
20000a74:	1a5d      	subs	r5, r3, r1
20000a76:	440b      	add	r3, r1
20000a78:	6062      	str	r2, [r4, #4]
20000a7a:	6025      	str	r5, [r4, #0]
20000a7c:	60a3      	str	r3, [r4, #8]
20000a7e:	b011      	add	sp, #68	; 0x44
20000a80:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000a82:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000a86:	4e50      	ldr	r6, [pc, #320]	; (20000bc8 <svpwm+0x2f0>)
20000a88:	3202      	adds	r2, #2
20000a8a:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000a8e:	f505 7540 	add.w	r5, r5, #768	; 0x300
20000a92:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000a96:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000a9a:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000a9e:	fb01 f103 	mul.w	r1, r1, r3
20000aa2:	fb02 f203 	mul.w	r2, r2, r3
20000aa6:	1289      	asrs	r1, r1, #10
20000aa8:	1293      	asrs	r3, r2, #10
20000aaa:	424a      	negs	r2, r1
20000aac:	1ad2      	subs	r2, r2, r3
20000aae:	18cd      	adds	r5, r1, r3
20000ab0:	1a5b      	subs	r3, r3, r1
20000ab2:	60a2      	str	r2, [r4, #8]
20000ab4:	6025      	str	r5, [r4, #0]
20000ab6:	6063      	str	r3, [r4, #4]
20000ab8:	b011      	add	sp, #68	; 0x44
20000aba:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000abc:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20000ac0:	4e41      	ldr	r6, [pc, #260]	; (20000bc8 <svpwm+0x2f0>)
20000ac2:	3204      	adds	r2, #4
20000ac4:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000ac8:	f205 2556 	addw	r5, r5, #598	; 0x256
20000acc:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000ad0:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000ad4:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000ad8:	fb01 f103 	mul.w	r1, r1, r3
20000adc:	fb02 f203 	mul.w	r2, r2, r3
20000ae0:	1289      	asrs	r1, r1, #10
20000ae2:	1293      	asrs	r3, r2, #10
20000ae4:	424a      	negs	r2, r1
20000ae6:	1ad2      	subs	r2, r2, r3
20000ae8:	1acd      	subs	r5, r1, r3
20000aea:	440b      	add	r3, r1
20000aec:	60a2      	str	r2, [r4, #8]
20000aee:	6025      	str	r5, [r4, #0]
20000af0:	6063      	str	r3, [r4, #4]
20000af2:	b011      	add	sp, #68	; 0x44
20000af4:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000af6:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20000afa:	4e33      	ldr	r6, [pc, #204]	; (20000bc8 <svpwm+0x2f0>)
20000afc:	320f      	adds	r2, #15
20000afe:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000b02:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20000b06:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000b0a:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000b0e:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000b12:	fb01 f103 	mul.w	r1, r1, r3
20000b16:	fb02 f203 	mul.w	r2, r2, r3
20000b1a:	1289      	asrs	r1, r1, #10
20000b1c:	1293      	asrs	r3, r2, #10
20000b1e:	424a      	negs	r2, r1
20000b20:	1ad2      	subs	r2, r2, r3
20000b22:	18cd      	adds	r5, r1, r3
20000b24:	1a5b      	subs	r3, r3, r1
20000b26:	e884 0024 	stmia.w	r4, {r2, r5}
20000b2a:	60a3      	str	r3, [r4, #8]
20000b2c:	b011      	add	sp, #68	; 0x44
20000b2e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000b30:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20000b34:	4e24      	ldr	r6, [pc, #144]	; (20000bc8 <svpwm+0x2f0>)
20000b36:	320a      	adds	r2, #10
20000b38:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000b3c:	f505 7580 	add.w	r5, r5, #256	; 0x100
20000b40:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000b44:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000b48:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000b4c:	fb01 f103 	mul.w	r1, r1, r3
20000b50:	fb02 f203 	mul.w	r2, r2, r3
20000b54:	1289      	asrs	r1, r1, #10
20000b56:	1293      	asrs	r3, r2, #10
20000b58:	424a      	negs	r2, r1
20000b5a:	1ad2      	subs	r2, r2, r3
20000b5c:	1acd      	subs	r5, r1, r3
20000b5e:	440b      	add	r3, r1
20000b60:	e884 0024 	stmia.w	r4, {r2, r5}
20000b64:	60a3      	str	r3, [r4, #8]
20000b66:	b011      	add	sp, #68	; 0x44
20000b68:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000b6a:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000b6e:	4916      	ldr	r1, [pc, #88]	; (20000bc8 <svpwm+0x2f0>)
20000b70:	320f      	adds	r2, #15
20000b72:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000b76:	3d55      	subs	r5, #85	; 0x55
20000b78:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000b7c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000b80:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000b84:	fb02 f203 	mul.w	r2, r2, r3
20000b88:	fb01 f303 	mul.w	r3, r1, r3
20000b8c:	1292      	asrs	r2, r2, #10
20000b8e:	129b      	asrs	r3, r3, #10
20000b90:	4251      	negs	r1, r2
20000b92:	18d5      	adds	r5, r2, r3
20000b94:	1ac9      	subs	r1, r1, r3
20000b96:	1ad2      	subs	r2, r2, r3
20000b98:	6061      	str	r1, [r4, #4]
20000b9a:	6025      	str	r5, [r4, #0]
20000b9c:	60a2      	str	r2, [r4, #8]
20000b9e:	b011      	add	sp, #68	; 0x44
20000ba0:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000ba2:	461a      	mov	r2, r3
20000ba4:	e703      	b.n	200009ae <svpwm+0xd6>
20000ba6:	4610      	mov	r0, r2
20000ba8:	2201      	movs	r2, #1
20000baa:	e700      	b.n	200009ae <svpwm+0xd6>
20000bac:	2202      	movs	r2, #2
20000bae:	e6fe      	b.n	200009ae <svpwm+0xd6>
20000bb0:	4610      	mov	r0, r2
20000bb2:	2203      	movs	r2, #3
20000bb4:	e6fb      	b.n	200009ae <svpwm+0xd6>
20000bb6:	2204      	movs	r2, #4
20000bb8:	e6f9      	b.n	200009ae <svpwm+0xd6>
20000bba:	4610      	mov	r0, r2
20000bbc:	2205      	movs	r2, #5
20000bbe:	e6f6      	b.n	200009ae <svpwm+0xd6>
20000bc0:	2206      	movs	r2, #6
20000bc2:	e6f4      	b.n	200009ae <svpwm+0xd6>
20000bc4:	200012b0 	.word	0x200012b0
20000bc8:	200012f0 	.word	0x200012f0

20000bcc <get_speed>:
20000bcc:	4a0e      	ldr	r2, [pc, #56]	; (20000c08 <get_speed+0x3c>)
20000bce:	b430      	push	{r4, r5}
20000bd0:	e892 0028 	ldmia.w	r2, {r3, r5}
20000bd4:	1ac3      	subs	r3, r0, r3
20000bd6:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20000bda:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
20000bde:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
20000be2:	6015      	str	r5, [r2, #0]
20000be4:	6050      	str	r0, [r2, #4]
20000be6:	dd05      	ble.n	20000bf4 <get_speed+0x28>
20000be8:	2b00      	cmp	r3, #0
20000bea:	bfb4      	ite	lt
20000bec:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
20000bf0:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20000bf4:	4a05      	ldr	r2, [pc, #20]	; (20000c0c <get_speed+0x40>)
20000bf6:	1058      	asrs	r0, r3, #1
20000bf8:	fb02 f000 	mul.w	r0, r2, r0
20000bfc:	bc30      	pop	{r4, r5}
20000bfe:	680a      	ldr	r2, [r1, #0]
20000c00:	1300      	asrs	r0, r0, #12
20000c02:	4413      	add	r3, r2
20000c04:	600b      	str	r3, [r1, #0]
20000c06:	4770      	bx	lr
20000c08:	20002304 	.word	0x20002304
20000c0c:	0002ae7c 	.word	0x0002ae7c

20000c10 <mfilter>:
20000c10:	4908      	ldr	r1, [pc, #32]	; (20000c34 <mfilter+0x24>)
20000c12:	b430      	push	{r4, r5}
20000c14:	688a      	ldr	r2, [r1, #8]
20000c16:	68cb      	ldr	r3, [r1, #12]
20000c18:	3201      	adds	r2, #1
20000c1a:	f002 021f 	and.w	r2, r2, #31
20000c1e:	eb01 0482 	add.w	r4, r1, r2, lsl #2
20000c22:	6925      	ldr	r5, [r4, #16]
20000c24:	608a      	str	r2, [r1, #8]
20000c26:	1b5b      	subs	r3, r3, r5
20000c28:	4403      	add	r3, r0
20000c2a:	6120      	str	r0, [r4, #16]
20000c2c:	60cb      	str	r3, [r1, #12]
20000c2e:	1158      	asrs	r0, r3, #5
20000c30:	bc30      	pop	{r4, r5}
20000c32:	4770      	bx	lr
20000c34:	20002304 	.word	0x20002304

20000c38 <rfilter1>:
20000c38:	b470      	push	{r4, r5, r6}
20000c3a:	f240 74c6 	movw	r4, #1990	; 0x7c6
20000c3e:	4b12      	ldr	r3, [pc, #72]	; (20000c88 <rfilter1+0x50>)
20000c40:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20000c44:	f8d3 6090 	ldr.w	r6, [r3, #144]	; 0x90
20000c48:	f8d3 1098 	ldr.w	r1, [r3, #152]	; 0x98
20000c4c:	fb04 f406 	mul.w	r4, r4, r6
20000c50:	fb02 4201 	mla	r2, r2, r1, r4
20000c54:	490d      	ldr	r1, [pc, #52]	; (20000c8c <rfilter1+0x54>)
20000c56:	f8d3 5094 	ldr.w	r5, [r3, #148]	; 0x94
20000c5a:	fb01 2200 	mla	r2, r1, r0, r2
20000c5e:	4c0c      	ldr	r4, [pc, #48]	; (20000c90 <rfilter1+0x58>)
20000c60:	f8d3 109c 	ldr.w	r1, [r3, #156]	; 0x9c
20000c64:	fb04 2205 	mla	r2, r4, r5, r2
20000c68:	4c0a      	ldr	r4, [pc, #40]	; (20000c94 <rfilter1+0x5c>)
20000c6a:	f8c3 6098 	str.w	r6, [r3, #152]	; 0x98
20000c6e:	fb04 2201 	mla	r2, r4, r1, r2
20000c72:	1291      	asrs	r1, r2, #10
20000c74:	f8c3 0094 	str.w	r0, [r3, #148]	; 0x94
20000c78:	f8c3 509c 	str.w	r5, [r3, #156]	; 0x9c
20000c7c:	1490      	asrs	r0, r2, #18
20000c7e:	f8c3 1090 	str.w	r1, [r3, #144]	; 0x90
20000c82:	bc70      	pop	{r4, r5, r6}
20000c84:	4770      	bx	lr
20000c86:	bf00      	nop
20000c88:	20002304 	.word	0x20002304
20000c8c:	0003f0a4 	.word	0x0003f0a4
20000c90:	fff83a2e 	.word	0xfff83a2e
20000c94:	0003dc29 	.word	0x0003dc29

20000c98 <rfilter2>:
20000c98:	b470      	push	{r4, r5, r6}
20000c9a:	f240 748a 	movw	r4, #1930	; 0x78a
20000c9e:	4b11      	ldr	r3, [pc, #68]	; (20000ce4 <rfilter2+0x4c>)
20000ca0:	4a11      	ldr	r2, [pc, #68]	; (20000ce8 <rfilter2+0x50>)
20000ca2:	f8d3 60a0 	ldr.w	r6, [r3, #160]	; 0xa0
20000ca6:	f8d3 10a8 	ldr.w	r1, [r3, #168]	; 0xa8
20000caa:	fb04 f406 	mul.w	r4, r4, r6
20000cae:	fb02 4201 	mla	r2, r2, r1, r4
20000cb2:	490e      	ldr	r1, [pc, #56]	; (20000cec <rfilter2+0x54>)
20000cb4:	f8d3 50a4 	ldr.w	r5, [r3, #164]	; 0xa4
20000cb8:	fb01 2200 	mla	r2, r1, r0, r2
20000cbc:	4c0c      	ldr	r4, [pc, #48]	; (20000cf0 <rfilter2+0x58>)
20000cbe:	f8d3 10ac 	ldr.w	r1, [r3, #172]	; 0xac
20000cc2:	fb04 2205 	mla	r2, r4, r5, r2
20000cc6:	4c0b      	ldr	r4, [pc, #44]	; (20000cf4 <rfilter2+0x5c>)
20000cc8:	f8c3 60a8 	str.w	r6, [r3, #168]	; 0xa8
20000ccc:	fb04 2201 	mla	r2, r4, r1, r2
20000cd0:	1291      	asrs	r1, r2, #10
20000cd2:	f8c3 00a4 	str.w	r0, [r3, #164]	; 0xa4
20000cd6:	f8c3 50ac 	str.w	r5, [r3, #172]	; 0xac
20000cda:	1490      	asrs	r0, r2, #18
20000cdc:	f8c3 10a0 	str.w	r1, [r3, #160]	; 0xa0
20000ce0:	bc70      	pop	{r4, r5, r6}
20000ce2:	4770      	bx	lr
20000ce4:	20002304 	.word	0x20002304
20000ce8:	fffffc66 	.word	0xfffffc66
20000cec:	0003e3d7 	.word	0x0003e3d7
20000cf0:	fff8767b 	.word	0xfff8767b
20000cf4:	0003b5c3 	.word	0x0003b5c3

20000cf8 <adc_init>:
20000cf8:	b480      	push	{r7}
20000cfa:	af00      	add	r7, sp, #0
20000cfc:	4a10      	ldr	r2, [pc, #64]	; (20000d40 <adc_init+0x48>)
20000cfe:	4b10      	ldr	r3, [pc, #64]	; (20000d40 <adc_init+0x48>)
20000d00:	69db      	ldr	r3, [r3, #28]
20000d02:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000d06:	61d3      	str	r3, [r2, #28]
20000d08:	4b0d      	ldr	r3, [pc, #52]	; (20000d40 <adc_init+0x48>)
20000d0a:	f242 0220 	movw	r2, #8224	; 0x2020
20000d0e:	615a      	str	r2, [r3, #20]
20000d10:	4b0c      	ldr	r3, [pc, #48]	; (20000d44 <adc_init+0x4c>)
20000d12:	2200      	movs	r2, #0
20000d14:	601a      	str	r2, [r3, #0]
20000d16:	4a0b      	ldr	r2, [pc, #44]	; (20000d44 <adc_init+0x4c>)
20000d18:	4b0a      	ldr	r3, [pc, #40]	; (20000d44 <adc_init+0x4c>)
20000d1a:	681b      	ldr	r3, [r3, #0]
20000d1c:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20000d20:	f043 0301 	orr.w	r3, r3, #1
20000d24:	6013      	str	r3, [r2, #0]
20000d26:	4a07      	ldr	r2, [pc, #28]	; (20000d44 <adc_init+0x4c>)
20000d28:	4b06      	ldr	r3, [pc, #24]	; (20000d44 <adc_init+0x4c>)
20000d2a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20000d2c:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
20000d30:	6293      	str	r3, [r2, #40]	; 0x28
20000d32:	4b04      	ldr	r3, [pc, #16]	; (20000d44 <adc_init+0x4c>)
20000d34:	2210      	movs	r2, #16
20000d36:	621a      	str	r2, [r3, #32]
20000d38:	bf00      	nop
20000d3a:	46bd      	mov	sp, r7
20000d3c:	bc80      	pop	{r7}
20000d3e:	4770      	bx	lr
20000d40:	40020000 	.word	0x40020000
20000d44:	40088000 	.word	0x40088000

20000d48 <dma_init>:
20000d48:	b480      	push	{r7}
20000d4a:	af00      	add	r7, sp, #0
20000d4c:	4a17      	ldr	r2, [pc, #92]	; (20000dac <dma_init+0x64>)
20000d4e:	4b17      	ldr	r3, [pc, #92]	; (20000dac <dma_init+0x64>)
20000d50:	69db      	ldr	r3, [r3, #28]
20000d52:	f043 0320 	orr.w	r3, r3, #32
20000d56:	61d3      	str	r3, [r2, #28]
20000d58:	4b15      	ldr	r3, [pc, #84]	; (20000db0 <dma_init+0x68>)
20000d5a:	4a16      	ldr	r2, [pc, #88]	; (20000db4 <dma_init+0x6c>)
20000d5c:	609a      	str	r2, [r3, #8]
20000d5e:	4b14      	ldr	r3, [pc, #80]	; (20000db0 <dma_init+0x68>)
20000d60:	f04f 32ff 	mov.w	r2, #4294967295
20000d64:	62da      	str	r2, [r3, #44]	; 0x2c
20000d66:	4b12      	ldr	r3, [pc, #72]	; (20000db0 <dma_init+0x68>)
20000d68:	f04f 32ff 	mov.w	r2, #4294967295
20000d6c:	621a      	str	r2, [r3, #32]
20000d6e:	4b10      	ldr	r3, [pc, #64]	; (20000db0 <dma_init+0x68>)
20000d70:	f04f 32ff 	mov.w	r2, #4294967295
20000d74:	635a      	str	r2, [r3, #52]	; 0x34
20000d76:	4b0e      	ldr	r3, [pc, #56]	; (20000db0 <dma_init+0x68>)
20000d78:	f44f 7280 	mov.w	r2, #256	; 0x100
20000d7c:	61da      	str	r2, [r3, #28]
20000d7e:	4b0c      	ldr	r3, [pc, #48]	; (20000db0 <dma_init+0x68>)
20000d80:	f44f 7280 	mov.w	r2, #256	; 0x100
20000d84:	625a      	str	r2, [r3, #36]	; 0x24
20000d86:	4b0a      	ldr	r3, [pc, #40]	; (20000db0 <dma_init+0x68>)
20000d88:	2201      	movs	r2, #1
20000d8a:	605a      	str	r2, [r3, #4]
20000d8c:	4b09      	ldr	r3, [pc, #36]	; (20000db4 <dma_init+0x6c>)
20000d8e:	4a0a      	ldr	r2, [pc, #40]	; (20000db8 <dma_init+0x70>)
20000d90:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20000d94:	4a09      	ldr	r2, [pc, #36]	; (20000dbc <dma_init+0x74>)
20000d96:	4b07      	ldr	r3, [pc, #28]	; (20000db4 <dma_init+0x6c>)
20000d98:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20000d9c:	4b05      	ldr	r3, [pc, #20]	; (20000db4 <dma_init+0x6c>)
20000d9e:	4a08      	ldr	r2, [pc, #32]	; (20000dc0 <dma_init+0x78>)
20000da0:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000da4:	bf00      	nop
20000da6:	46bd      	mov	sp, r7
20000da8:	bc80      	pop	{r7}
20000daa:	4770      	bx	lr
20000dac:	40020000 	.word	0x40020000
20000db0:	40028000 	.word	0x40028000
20000db4:	20002800 	.word	0x20002800
20000db8:	40088018 	.word	0x40088018
20000dbc:	20002a04 	.word	0x20002a04
20000dc0:	ae000011 	.word	0xae000011

20000dc4 <adc_dma_init>:
20000dc4:	b580      	push	{r7, lr}
20000dc6:	af00      	add	r7, sp, #0
20000dc8:	f7ff ff96 	bl	20000cf8 <adc_init>
20000dcc:	f7ff ffbc 	bl	20000d48 <dma_init>
20000dd0:	bf00      	nop
20000dd2:	bd80      	pop	{r7, pc}

20000dd4 <adc_dma_start>:
20000dd4:	b480      	push	{r7}
20000dd6:	af00      	add	r7, sp, #0
20000dd8:	4a06      	ldr	r2, [pc, #24]	; (20000df4 <adc_dma_start+0x20>)
20000dda:	4b06      	ldr	r3, [pc, #24]	; (20000df4 <adc_dma_start+0x20>)
20000ddc:	681b      	ldr	r3, [r3, #0]
20000dde:	f043 0308 	orr.w	r3, r3, #8
20000de2:	6013      	str	r3, [r2, #0]
20000de4:	4b04      	ldr	r3, [pc, #16]	; (20000df8 <adc_dma_start+0x24>)
20000de6:	f44f 7280 	mov.w	r2, #256	; 0x100
20000dea:	629a      	str	r2, [r3, #40]	; 0x28
20000dec:	bf00      	nop
20000dee:	46bd      	mov	sp, r7
20000df0:	bc80      	pop	{r7}
20000df2:	4770      	bx	lr
20000df4:	40088000 	.word	0x40088000
20000df8:	40028000 	.word	0x40028000

20000dfc <adc_dma_wait>:
20000dfc:	b480      	push	{r7}
20000dfe:	af00      	add	r7, sp, #0
20000e00:	bf00      	nop
20000e02:	4b0a      	ldr	r3, [pc, #40]	; (20000e2c <adc_dma_wait+0x30>)
20000e04:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20000e08:	f003 0307 	and.w	r3, r3, #7
20000e0c:	2b00      	cmp	r3, #0
20000e0e:	d1f8      	bne.n	20000e02 <adc_dma_wait+0x6>
20000e10:	4a07      	ldr	r2, [pc, #28]	; (20000e30 <adc_dma_wait+0x34>)
20000e12:	4b07      	ldr	r3, [pc, #28]	; (20000e30 <adc_dma_wait+0x34>)
20000e14:	681b      	ldr	r3, [r3, #0]
20000e16:	f023 0308 	bic.w	r3, r3, #8
20000e1a:	6013      	str	r3, [r2, #0]
20000e1c:	4b03      	ldr	r3, [pc, #12]	; (20000e2c <adc_dma_wait+0x30>)
20000e1e:	4a05      	ldr	r2, [pc, #20]	; (20000e34 <adc_dma_wait+0x38>)
20000e20:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000e24:	bf00      	nop
20000e26:	46bd      	mov	sp, r7
20000e28:	bc80      	pop	{r7}
20000e2a:	4770      	bx	lr
20000e2c:	20002800 	.word	0x20002800
20000e30:	40088000 	.word	0x40088000
20000e34:	ae000011 	.word	0xae000011

20000e38 <NVIC_EnableIRQ>:
20000e38:	b480      	push	{r7}
20000e3a:	b083      	sub	sp, #12
20000e3c:	af00      	add	r7, sp, #0
20000e3e:	4603      	mov	r3, r0
20000e40:	71fb      	strb	r3, [r7, #7]
20000e42:	4908      	ldr	r1, [pc, #32]	; (20000e64 <NVIC_EnableIRQ+0x2c>)
20000e44:	f997 3007 	ldrsb.w	r3, [r7, #7]
20000e48:	095b      	lsrs	r3, r3, #5
20000e4a:	79fa      	ldrb	r2, [r7, #7]
20000e4c:	f002 021f 	and.w	r2, r2, #31
20000e50:	2001      	movs	r0, #1
20000e52:	fa00 f202 	lsl.w	r2, r0, r2
20000e56:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20000e5a:	bf00      	nop
20000e5c:	370c      	adds	r7, #12
20000e5e:	46bd      	mov	sp, r7
20000e60:	bc80      	pop	{r7}
20000e62:	4770      	bx	lr
20000e64:	e000e100 	.word	0xe000e100

20000e68 <PortConfig>:
20000e68:	b480      	push	{r7}
20000e6a:	af00      	add	r7, sp, #0
20000e6c:	4a4f      	ldr	r2, [pc, #316]	; (20000fac <PortConfig+0x144>)
20000e6e:	4b4f      	ldr	r3, [pc, #316]	; (20000fac <PortConfig+0x144>)
20000e70:	69db      	ldr	r3, [r3, #28]
20000e72:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
20000e76:	61d3      	str	r3, [r2, #28]
20000e78:	4b4d      	ldr	r3, [pc, #308]	; (20000fb0 <PortConfig+0x148>)
20000e7a:	2200      	movs	r2, #0
20000e7c:	609a      	str	r2, [r3, #8]
20000e7e:	4b4c      	ldr	r3, [pc, #304]	; (20000fb0 <PortConfig+0x148>)
20000e80:	2200      	movs	r2, #0
20000e82:	601a      	str	r2, [r3, #0]
20000e84:	4b4a      	ldr	r3, [pc, #296]	; (20000fb0 <PortConfig+0x148>)
20000e86:	22ff      	movs	r2, #255	; 0xff
20000e88:	605a      	str	r2, [r3, #4]
20000e8a:	4b49      	ldr	r3, [pc, #292]	; (20000fb0 <PortConfig+0x148>)
20000e8c:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000e90:	60da      	str	r2, [r3, #12]
20000e92:	4b47      	ldr	r3, [pc, #284]	; (20000fb0 <PortConfig+0x148>)
20000e94:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000e98:	619a      	str	r2, [r3, #24]
20000e9a:	4a44      	ldr	r2, [pc, #272]	; (20000fac <PortConfig+0x144>)
20000e9c:	4b43      	ldr	r3, [pc, #268]	; (20000fac <PortConfig+0x144>)
20000e9e:	69db      	ldr	r3, [r3, #28]
20000ea0:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20000ea4:	61d3      	str	r3, [r2, #28]
20000ea6:	4a43      	ldr	r2, [pc, #268]	; (20000fb4 <PortConfig+0x14c>)
20000ea8:	4b42      	ldr	r3, [pc, #264]	; (20000fb4 <PortConfig+0x14c>)
20000eaa:	689b      	ldr	r3, [r3, #8]
20000eac:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20000eb0:	6093      	str	r3, [r2, #8]
20000eb2:	4a40      	ldr	r2, [pc, #256]	; (20000fb4 <PortConfig+0x14c>)
20000eb4:	4b3f      	ldr	r3, [pc, #252]	; (20000fb4 <PortConfig+0x14c>)
20000eb6:	689b      	ldr	r3, [r3, #8]
20000eb8:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
20000ebc:	6093      	str	r3, [r2, #8]
20000ebe:	4a3d      	ldr	r2, [pc, #244]	; (20000fb4 <PortConfig+0x14c>)
20000ec0:	4b3c      	ldr	r3, [pc, #240]	; (20000fb4 <PortConfig+0x14c>)
20000ec2:	68db      	ldr	r3, [r3, #12]
20000ec4:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
20000ec8:	60d3      	str	r3, [r2, #12]
20000eca:	4a3a      	ldr	r2, [pc, #232]	; (20000fb4 <PortConfig+0x14c>)
20000ecc:	4b39      	ldr	r3, [pc, #228]	; (20000fb4 <PortConfig+0x14c>)
20000ece:	699b      	ldr	r3, [r3, #24]
20000ed0:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
20000ed4:	6193      	str	r3, [r2, #24]
20000ed6:	4a37      	ldr	r2, [pc, #220]	; (20000fb4 <PortConfig+0x14c>)
20000ed8:	4b36      	ldr	r3, [pc, #216]	; (20000fb4 <PortConfig+0x14c>)
20000eda:	685b      	ldr	r3, [r3, #4]
20000edc:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20000ee0:	6053      	str	r3, [r2, #4]
20000ee2:	4a34      	ldr	r2, [pc, #208]	; (20000fb4 <PortConfig+0x14c>)
20000ee4:	4b33      	ldr	r3, [pc, #204]	; (20000fb4 <PortConfig+0x14c>)
20000ee6:	685b      	ldr	r3, [r3, #4]
20000ee8:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20000eec:	6053      	str	r3, [r2, #4]
20000eee:	4a2f      	ldr	r2, [pc, #188]	; (20000fac <PortConfig+0x144>)
20000ef0:	4b2e      	ldr	r3, [pc, #184]	; (20000fac <PortConfig+0x144>)
20000ef2:	69db      	ldr	r3, [r3, #28]
20000ef4:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
20000ef8:	61d3      	str	r3, [r2, #28]
20000efa:	4b2f      	ldr	r3, [pc, #188]	; (20000fb8 <PortConfig+0x150>)
20000efc:	4a2f      	ldr	r2, [pc, #188]	; (20000fbc <PortConfig+0x154>)
20000efe:	609a      	str	r2, [r3, #8]
20000f00:	4b2d      	ldr	r3, [pc, #180]	; (20000fb8 <PortConfig+0x150>)
20000f02:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000f06:	60da      	str	r2, [r3, #12]
20000f08:	4b2b      	ldr	r3, [pc, #172]	; (20000fb8 <PortConfig+0x150>)
20000f0a:	f04f 32ff 	mov.w	r2, #4294967295
20000f0e:	619a      	str	r2, [r3, #24]
20000f10:	4b29      	ldr	r3, [pc, #164]	; (20000fb8 <PortConfig+0x150>)
20000f12:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000f16:	605a      	str	r2, [r3, #4]
20000f18:	4a27      	ldr	r2, [pc, #156]	; (20000fb8 <PortConfig+0x150>)
20000f1a:	4b27      	ldr	r3, [pc, #156]	; (20000fb8 <PortConfig+0x150>)
20000f1c:	681b      	ldr	r3, [r3, #0]
20000f1e:	f023 0303 	bic.w	r3, r3, #3
20000f22:	6013      	str	r3, [r2, #0]
20000f24:	4a24      	ldr	r2, [pc, #144]	; (20000fb8 <PortConfig+0x150>)
20000f26:	4b24      	ldr	r3, [pc, #144]	; (20000fb8 <PortConfig+0x150>)
20000f28:	681b      	ldr	r3, [r3, #0]
20000f2a:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000f2e:	6013      	str	r3, [r2, #0]
20000f30:	4a1e      	ldr	r2, [pc, #120]	; (20000fac <PortConfig+0x144>)
20000f32:	4b1e      	ldr	r3, [pc, #120]	; (20000fac <PortConfig+0x144>)
20000f34:	69db      	ldr	r3, [r3, #28]
20000f36:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
20000f3a:	61d3      	str	r3, [r2, #28]
20000f3c:	4b20      	ldr	r3, [pc, #128]	; (20000fc0 <PortConfig+0x158>)
20000f3e:	2200      	movs	r2, #0
20000f40:	609a      	str	r2, [r3, #8]
20000f42:	4a1f      	ldr	r2, [pc, #124]	; (20000fc0 <PortConfig+0x158>)
20000f44:	4b1e      	ldr	r3, [pc, #120]	; (20000fc0 <PortConfig+0x158>)
20000f46:	685b      	ldr	r3, [r3, #4]
20000f48:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000f4c:	6053      	str	r3, [r2, #4]
20000f4e:	4a1c      	ldr	r2, [pc, #112]	; (20000fc0 <PortConfig+0x158>)
20000f50:	4b1b      	ldr	r3, [pc, #108]	; (20000fc0 <PortConfig+0x158>)
20000f52:	68db      	ldr	r3, [r3, #12]
20000f54:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000f58:	60d3      	str	r3, [r2, #12]
20000f5a:	4b19      	ldr	r3, [pc, #100]	; (20000fc0 <PortConfig+0x158>)
20000f5c:	f04f 32ff 	mov.w	r2, #4294967295
20000f60:	619a      	str	r2, [r3, #24]
20000f62:	4a17      	ldr	r2, [pc, #92]	; (20000fc0 <PortConfig+0x158>)
20000f64:	4b16      	ldr	r3, [pc, #88]	; (20000fc0 <PortConfig+0x158>)
20000f66:	681b      	ldr	r3, [r3, #0]
20000f68:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000f6c:	6013      	str	r3, [r2, #0]
20000f6e:	4a0f      	ldr	r2, [pc, #60]	; (20000fac <PortConfig+0x144>)
20000f70:	4b0e      	ldr	r3, [pc, #56]	; (20000fac <PortConfig+0x144>)
20000f72:	69db      	ldr	r3, [r3, #28]
20000f74:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
20000f78:	61d3      	str	r3, [r2, #28]
20000f7a:	4a12      	ldr	r2, [pc, #72]	; (20000fc4 <PortConfig+0x15c>)
20000f7c:	4b11      	ldr	r3, [pc, #68]	; (20000fc4 <PortConfig+0x15c>)
20000f7e:	68db      	ldr	r3, [r3, #12]
20000f80:	f423 7300 	bic.w	r3, r3, #512	; 0x200
20000f84:	f023 0301 	bic.w	r3, r3, #1
20000f88:	60d3      	str	r3, [r2, #12]
20000f8a:	4a08      	ldr	r2, [pc, #32]	; (20000fac <PortConfig+0x144>)
20000f8c:	4b07      	ldr	r3, [pc, #28]	; (20000fac <PortConfig+0x144>)
20000f8e:	69db      	ldr	r3, [r3, #28]
20000f90:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20000f94:	61d3      	str	r3, [r2, #28]
20000f96:	4a0c      	ldr	r2, [pc, #48]	; (20000fc8 <PortConfig+0x160>)
20000f98:	4b0b      	ldr	r3, [pc, #44]	; (20000fc8 <PortConfig+0x160>)
20000f9a:	68db      	ldr	r3, [r3, #12]
20000f9c:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
20000fa0:	60d3      	str	r3, [r2, #12]
20000fa2:	bf00      	nop
20000fa4:	46bd      	mov	sp, r7
20000fa6:	bc80      	pop	{r7}
20000fa8:	4770      	bx	lr
20000faa:	bf00      	nop
20000fac:	40020000 	.word	0x40020000
20000fb0:	400a8000 	.word	0x400a8000
20000fb4:	400b0000 	.word	0x400b0000
20000fb8:	400b8000 	.word	0x400b8000
20000fbc:	000aaaa0 	.word	0x000aaaa0
20000fc0:	400e8000 	.word	0x400e8000
20000fc4:	400c8000 	.word	0x400c8000
20000fc8:	400c0000 	.word	0x400c0000

20000fcc <ClkConfig>:
20000fcc:	b480      	push	{r7}
20000fce:	af00      	add	r7, sp, #0
20000fd0:	4a16      	ldr	r2, [pc, #88]	; (2000102c <ClkConfig+0x60>)
20000fd2:	4b16      	ldr	r3, [pc, #88]	; (2000102c <ClkConfig+0x60>)
20000fd4:	689b      	ldr	r3, [r3, #8]
20000fd6:	f043 0301 	orr.w	r3, r3, #1
20000fda:	6093      	str	r3, [r2, #8]
20000fdc:	bf00      	nop
20000fde:	4b13      	ldr	r3, [pc, #76]	; (2000102c <ClkConfig+0x60>)
20000fe0:	681b      	ldr	r3, [r3, #0]
20000fe2:	f003 0304 	and.w	r3, r3, #4
20000fe6:	2b00      	cmp	r3, #0
20000fe8:	d0f9      	beq.n	20000fde <ClkConfig+0x12>
20000fea:	4b10      	ldr	r3, [pc, #64]	; (2000102c <ClkConfig+0x60>)
20000fec:	2206      	movs	r2, #6
20000fee:	60da      	str	r2, [r3, #12]
20000ff0:	4b0e      	ldr	r3, [pc, #56]	; (2000102c <ClkConfig+0x60>)
20000ff2:	f640 1204 	movw	r2, #2308	; 0x904
20000ff6:	605a      	str	r2, [r3, #4]
20000ff8:	bf00      	nop
20000ffa:	4b0c      	ldr	r3, [pc, #48]	; (2000102c <ClkConfig+0x60>)
20000ffc:	681b      	ldr	r3, [r3, #0]
20000ffe:	f003 0302 	and.w	r3, r3, #2
20001002:	2b00      	cmp	r3, #0
20001004:	d0f9      	beq.n	20000ffa <ClkConfig+0x2e>
20001006:	4a09      	ldr	r2, [pc, #36]	; (2000102c <ClkConfig+0x60>)
20001008:	4b08      	ldr	r3, [pc, #32]	; (2000102c <ClkConfig+0x60>)
2000100a:	68db      	ldr	r3, [r3, #12]
2000100c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001010:	60d3      	str	r3, [r2, #12]
20001012:	4a07      	ldr	r2, [pc, #28]	; (20001030 <ClkConfig+0x64>)
20001014:	4b06      	ldr	r3, [pc, #24]	; (20001030 <ClkConfig+0x64>)
20001016:	681b      	ldr	r3, [r3, #0]
20001018:	f043 0320 	orr.w	r3, r3, #32
2000101c:	6013      	str	r3, [r2, #0]
2000101e:	4b05      	ldr	r3, [pc, #20]	; (20001034 <ClkConfig+0x68>)
20001020:	2200      	movs	r2, #0
20001022:	601a      	str	r2, [r3, #0]
20001024:	bf00      	nop
20001026:	46bd      	mov	sp, r7
20001028:	bc80      	pop	{r7}
2000102a:	4770      	bx	lr
2000102c:	40020000 	.word	0x40020000
20001030:	40018000 	.word	0x40018000
20001034:	20002400 	.word	0x20002400

20001038 <TimerConfig>:
20001038:	b580      	push	{r7, lr}
2000103a:	af00      	add	r7, sp, #0
2000103c:	4a74      	ldr	r2, [pc, #464]	; (20001210 <TimerConfig+0x1d8>)
2000103e:	4b74      	ldr	r3, [pc, #464]	; (20001210 <TimerConfig+0x1d8>)
20001040:	69db      	ldr	r3, [r3, #28]
20001042:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
20001046:	61d3      	str	r3, [r2, #28]
20001048:	4a71      	ldr	r2, [pc, #452]	; (20001210 <TimerConfig+0x1d8>)
2000104a:	4b71      	ldr	r3, [pc, #452]	; (20001210 <TimerConfig+0x1d8>)
2000104c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000104e:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
20001052:	6253      	str	r3, [r2, #36]	; 0x24
20001054:	4a6e      	ldr	r2, [pc, #440]	; (20001210 <TimerConfig+0x1d8>)
20001056:	4b6e      	ldr	r3, [pc, #440]	; (20001210 <TimerConfig+0x1d8>)
20001058:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000105a:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
2000105e:	6253      	str	r3, [r2, #36]	; 0x24
20001060:	4b6c      	ldr	r3, [pc, #432]	; (20001214 <TimerConfig+0x1dc>)
20001062:	2200      	movs	r2, #0
20001064:	601a      	str	r2, [r3, #0]
20001066:	4b6b      	ldr	r3, [pc, #428]	; (20001214 <TimerConfig+0x1dc>)
20001068:	2202      	movs	r2, #2
2000106a:	605a      	str	r2, [r3, #4]
2000106c:	4b69      	ldr	r3, [pc, #420]	; (20001214 <TimerConfig+0x1dc>)
2000106e:	f240 32ff 	movw	r2, #1023	; 0x3ff
20001072:	609a      	str	r2, [r3, #8]
20001074:	4b67      	ldr	r3, [pc, #412]	; (20001214 <TimerConfig+0x1dc>)
20001076:	f44f 7200 	mov.w	r2, #512	; 0x200
2000107a:	611a      	str	r2, [r3, #16]
2000107c:	4b65      	ldr	r3, [pc, #404]	; (20001214 <TimerConfig+0x1dc>)
2000107e:	f44f 7200 	mov.w	r2, #512	; 0x200
20001082:	615a      	str	r2, [r3, #20]
20001084:	4b63      	ldr	r3, [pc, #396]	; (20001214 <TimerConfig+0x1dc>)
20001086:	f44f 7200 	mov.w	r2, #512	; 0x200
2000108a:	619a      	str	r2, [r3, #24]
2000108c:	4a61      	ldr	r2, [pc, #388]	; (20001214 <TimerConfig+0x1dc>)
2000108e:	4b61      	ldr	r3, [pc, #388]	; (20001214 <TimerConfig+0x1dc>)
20001090:	6a1b      	ldr	r3, [r3, #32]
20001092:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001096:	6213      	str	r3, [r2, #32]
20001098:	4a5e      	ldr	r2, [pc, #376]	; (20001214 <TimerConfig+0x1dc>)
2000109a:	4b5e      	ldr	r3, [pc, #376]	; (20001214 <TimerConfig+0x1dc>)
2000109c:	6a1b      	ldr	r3, [r3, #32]
2000109e:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200010a2:	6213      	str	r3, [r2, #32]
200010a4:	4a5b      	ldr	r2, [pc, #364]	; (20001214 <TimerConfig+0x1dc>)
200010a6:	4b5b      	ldr	r3, [pc, #364]	; (20001214 <TimerConfig+0x1dc>)
200010a8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200010aa:	f023 030f 	bic.w	r3, r3, #15
200010ae:	6313      	str	r3, [r2, #48]	; 0x30
200010b0:	4a58      	ldr	r2, [pc, #352]	; (20001214 <TimerConfig+0x1dc>)
200010b2:	4b58      	ldr	r3, [pc, #352]	; (20001214 <TimerConfig+0x1dc>)
200010b4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200010b6:	f043 030c 	orr.w	r3, r3, #12
200010ba:	6313      	str	r3, [r2, #48]	; 0x30
200010bc:	4a55      	ldr	r2, [pc, #340]	; (20001214 <TimerConfig+0x1dc>)
200010be:	4b55      	ldr	r3, [pc, #340]	; (20001214 <TimerConfig+0x1dc>)
200010c0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200010c2:	f043 0301 	orr.w	r3, r3, #1
200010c6:	6313      	str	r3, [r2, #48]	; 0x30
200010c8:	4a52      	ldr	r2, [pc, #328]	; (20001214 <TimerConfig+0x1dc>)
200010ca:	4b52      	ldr	r3, [pc, #328]	; (20001214 <TimerConfig+0x1dc>)
200010cc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200010ce:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200010d2:	6313      	str	r3, [r2, #48]	; 0x30
200010d4:	4a4f      	ldr	r2, [pc, #316]	; (20001214 <TimerConfig+0x1dc>)
200010d6:	4b4f      	ldr	r3, [pc, #316]	; (20001214 <TimerConfig+0x1dc>)
200010d8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200010da:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200010de:	6313      	str	r3, [r2, #48]	; 0x30
200010e0:	4a4c      	ldr	r2, [pc, #304]	; (20001214 <TimerConfig+0x1dc>)
200010e2:	4b4c      	ldr	r3, [pc, #304]	; (20001214 <TimerConfig+0x1dc>)
200010e4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200010e6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200010ea:	6313      	str	r3, [r2, #48]	; 0x30
200010ec:	4a49      	ldr	r2, [pc, #292]	; (20001214 <TimerConfig+0x1dc>)
200010ee:	4b49      	ldr	r3, [pc, #292]	; (20001214 <TimerConfig+0x1dc>)
200010f0:	6e1b      	ldr	r3, [r3, #96]	; 0x60
200010f2:	f043 0308 	orr.w	r3, r3, #8
200010f6:	6613      	str	r3, [r2, #96]	; 0x60
200010f8:	4a46      	ldr	r2, [pc, #280]	; (20001214 <TimerConfig+0x1dc>)
200010fa:	4b46      	ldr	r3, [pc, #280]	; (20001214 <TimerConfig+0x1dc>)
200010fc:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200010fe:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001102:	6253      	str	r3, [r2, #36]	; 0x24
20001104:	4a43      	ldr	r2, [pc, #268]	; (20001214 <TimerConfig+0x1dc>)
20001106:	4b43      	ldr	r3, [pc, #268]	; (20001214 <TimerConfig+0x1dc>)
20001108:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000110a:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
2000110e:	6253      	str	r3, [r2, #36]	; 0x24
20001110:	4a40      	ldr	r2, [pc, #256]	; (20001214 <TimerConfig+0x1dc>)
20001112:	4b40      	ldr	r3, [pc, #256]	; (20001214 <TimerConfig+0x1dc>)
20001114:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001116:	f023 030f 	bic.w	r3, r3, #15
2000111a:	6353      	str	r3, [r2, #52]	; 0x34
2000111c:	4a3d      	ldr	r2, [pc, #244]	; (20001214 <TimerConfig+0x1dc>)
2000111e:	4b3d      	ldr	r3, [pc, #244]	; (20001214 <TimerConfig+0x1dc>)
20001120:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001122:	f043 030c 	orr.w	r3, r3, #12
20001126:	6353      	str	r3, [r2, #52]	; 0x34
20001128:	4a3a      	ldr	r2, [pc, #232]	; (20001214 <TimerConfig+0x1dc>)
2000112a:	4b3a      	ldr	r3, [pc, #232]	; (20001214 <TimerConfig+0x1dc>)
2000112c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000112e:	f043 0301 	orr.w	r3, r3, #1
20001132:	6353      	str	r3, [r2, #52]	; 0x34
20001134:	4a37      	ldr	r2, [pc, #220]	; (20001214 <TimerConfig+0x1dc>)
20001136:	4b37      	ldr	r3, [pc, #220]	; (20001214 <TimerConfig+0x1dc>)
20001138:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000113a:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
2000113e:	6353      	str	r3, [r2, #52]	; 0x34
20001140:	4a34      	ldr	r2, [pc, #208]	; (20001214 <TimerConfig+0x1dc>)
20001142:	4b34      	ldr	r3, [pc, #208]	; (20001214 <TimerConfig+0x1dc>)
20001144:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001146:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000114a:	6353      	str	r3, [r2, #52]	; 0x34
2000114c:	4a31      	ldr	r2, [pc, #196]	; (20001214 <TimerConfig+0x1dc>)
2000114e:	4b31      	ldr	r3, [pc, #196]	; (20001214 <TimerConfig+0x1dc>)
20001150:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001152:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001156:	6353      	str	r3, [r2, #52]	; 0x34
20001158:	4a2e      	ldr	r2, [pc, #184]	; (20001214 <TimerConfig+0x1dc>)
2000115a:	4b2e      	ldr	r3, [pc, #184]	; (20001214 <TimerConfig+0x1dc>)
2000115c:	6e5b      	ldr	r3, [r3, #100]	; 0x64
2000115e:	f043 0308 	orr.w	r3, r3, #8
20001162:	6653      	str	r3, [r2, #100]	; 0x64
20001164:	4a2b      	ldr	r2, [pc, #172]	; (20001214 <TimerConfig+0x1dc>)
20001166:	4b2b      	ldr	r3, [pc, #172]	; (20001214 <TimerConfig+0x1dc>)
20001168:	6a9b      	ldr	r3, [r3, #40]	; 0x28
2000116a:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
2000116e:	6293      	str	r3, [r2, #40]	; 0x28
20001170:	4a28      	ldr	r2, [pc, #160]	; (20001214 <TimerConfig+0x1dc>)
20001172:	4b28      	ldr	r3, [pc, #160]	; (20001214 <TimerConfig+0x1dc>)
20001174:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001176:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
2000117a:	6293      	str	r3, [r2, #40]	; 0x28
2000117c:	4a25      	ldr	r2, [pc, #148]	; (20001214 <TimerConfig+0x1dc>)
2000117e:	4b25      	ldr	r3, [pc, #148]	; (20001214 <TimerConfig+0x1dc>)
20001180:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001182:	f023 030f 	bic.w	r3, r3, #15
20001186:	6393      	str	r3, [r2, #56]	; 0x38
20001188:	4a22      	ldr	r2, [pc, #136]	; (20001214 <TimerConfig+0x1dc>)
2000118a:	4b22      	ldr	r3, [pc, #136]	; (20001214 <TimerConfig+0x1dc>)
2000118c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000118e:	f043 030c 	orr.w	r3, r3, #12
20001192:	6393      	str	r3, [r2, #56]	; 0x38
20001194:	4a1f      	ldr	r2, [pc, #124]	; (20001214 <TimerConfig+0x1dc>)
20001196:	4b1f      	ldr	r3, [pc, #124]	; (20001214 <TimerConfig+0x1dc>)
20001198:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000119a:	f043 0301 	orr.w	r3, r3, #1
2000119e:	6393      	str	r3, [r2, #56]	; 0x38
200011a0:	4a1c      	ldr	r2, [pc, #112]	; (20001214 <TimerConfig+0x1dc>)
200011a2:	4b1c      	ldr	r3, [pc, #112]	; (20001214 <TimerConfig+0x1dc>)
200011a4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200011a6:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200011aa:	6393      	str	r3, [r2, #56]	; 0x38
200011ac:	4a19      	ldr	r2, [pc, #100]	; (20001214 <TimerConfig+0x1dc>)
200011ae:	4b19      	ldr	r3, [pc, #100]	; (20001214 <TimerConfig+0x1dc>)
200011b0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200011b2:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200011b6:	6393      	str	r3, [r2, #56]	; 0x38
200011b8:	4a16      	ldr	r2, [pc, #88]	; (20001214 <TimerConfig+0x1dc>)
200011ba:	4b16      	ldr	r3, [pc, #88]	; (20001214 <TimerConfig+0x1dc>)
200011bc:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200011be:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200011c2:	6393      	str	r3, [r2, #56]	; 0x38
200011c4:	4a13      	ldr	r2, [pc, #76]	; (20001214 <TimerConfig+0x1dc>)
200011c6:	4b13      	ldr	r3, [pc, #76]	; (20001214 <TimerConfig+0x1dc>)
200011c8:	6e9b      	ldr	r3, [r3, #104]	; 0x68
200011ca:	f043 0308 	orr.w	r3, r3, #8
200011ce:	6693      	str	r3, [r2, #104]	; 0x68
200011d0:	4a10      	ldr	r2, [pc, #64]	; (20001214 <TimerConfig+0x1dc>)
200011d2:	4b10      	ldr	r3, [pc, #64]	; (20001214 <TimerConfig+0x1dc>)
200011d4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200011d6:	f443 5316 	orr.w	r3, r3, #9600	; 0x2580
200011da:	6413      	str	r3, [r2, #64]	; 0x40
200011dc:	4a0d      	ldr	r2, [pc, #52]	; (20001214 <TimerConfig+0x1dc>)
200011de:	4b0d      	ldr	r3, [pc, #52]	; (20001214 <TimerConfig+0x1dc>)
200011e0:	6c5b      	ldr	r3, [r3, #68]	; 0x44
200011e2:	f443 5316 	orr.w	r3, r3, #9600	; 0x2580
200011e6:	6453      	str	r3, [r2, #68]	; 0x44
200011e8:	4a0a      	ldr	r2, [pc, #40]	; (20001214 <TimerConfig+0x1dc>)
200011ea:	4b0a      	ldr	r3, [pc, #40]	; (20001214 <TimerConfig+0x1dc>)
200011ec:	6c9b      	ldr	r3, [r3, #72]	; 0x48
200011ee:	f443 5316 	orr.w	r3, r3, #9600	; 0x2580
200011f2:	6493      	str	r3, [r2, #72]	; 0x48
200011f4:	4a07      	ldr	r2, [pc, #28]	; (20001214 <TimerConfig+0x1dc>)
200011f6:	4b07      	ldr	r3, [pc, #28]	; (20001214 <TimerConfig+0x1dc>)
200011f8:	6d9b      	ldr	r3, [r3, #88]	; 0x58
200011fa:	f043 0302 	orr.w	r3, r3, #2
200011fe:	6593      	str	r3, [r2, #88]	; 0x58
20001200:	2010      	movs	r0, #16
20001202:	f7ff fe19 	bl	20000e38 <NVIC_EnableIRQ>
20001206:	4b03      	ldr	r3, [pc, #12]	; (20001214 <TimerConfig+0x1dc>)
20001208:	2201      	movs	r2, #1
2000120a:	60da      	str	r2, [r3, #12]
2000120c:	bf00      	nop
2000120e:	bd80      	pop	{r7, pc}
20001210:	40020000 	.word	0x40020000
20001214:	40080000 	.word	0x40080000

20001218 <set_ram_vt>:
20001218:	b480      	push	{r7}
2000121a:	b085      	sub	sp, #20
2000121c:	af00      	add	r7, sp, #0
2000121e:	2300      	movs	r3, #0
20001220:	60fb      	str	r3, [r7, #12]
20001222:	2300      	movs	r3, #0
20001224:	607b      	str	r3, [r7, #4]
20001226:	4b11      	ldr	r3, [pc, #68]	; (2000126c <set_ram_vt+0x54>)
20001228:	60bb      	str	r3, [r7, #8]
2000122a:	2300      	movs	r3, #0
2000122c:	60fb      	str	r3, [r7, #12]
2000122e:	e00b      	b.n	20001248 <set_ram_vt+0x30>
20001230:	68bb      	ldr	r3, [r7, #8]
20001232:	1d1a      	adds	r2, r3, #4
20001234:	60ba      	str	r2, [r7, #8]
20001236:	68fa      	ldr	r2, [r7, #12]
20001238:	0092      	lsls	r2, r2, #2
2000123a:	6879      	ldr	r1, [r7, #4]
2000123c:	440a      	add	r2, r1
2000123e:	6812      	ldr	r2, [r2, #0]
20001240:	601a      	str	r2, [r3, #0]
20001242:	68fb      	ldr	r3, [r7, #12]
20001244:	3301      	adds	r3, #1
20001246:	60fb      	str	r3, [r7, #12]
20001248:	68fb      	ldr	r3, [r7, #12]
2000124a:	2b2f      	cmp	r3, #47	; 0x2f
2000124c:	d9f0      	bls.n	20001230 <set_ram_vt+0x18>
2000124e:	4b08      	ldr	r3, [pc, #32]	; (20001270 <set_ram_vt+0x58>)
20001250:	4a06      	ldr	r2, [pc, #24]	; (2000126c <set_ram_vt+0x54>)
20001252:	609a      	str	r2, [r3, #8]
20001254:	4b05      	ldr	r3, [pc, #20]	; (2000126c <set_ram_vt+0x54>)
20001256:	4a07      	ldr	r2, [pc, #28]	; (20001274 <set_ram_vt+0x5c>)
20001258:	63da      	str	r2, [r3, #60]	; 0x3c
2000125a:	4b04      	ldr	r3, [pc, #16]	; (2000126c <set_ram_vt+0x54>)
2000125c:	4a06      	ldr	r2, [pc, #24]	; (20001278 <set_ram_vt+0x60>)
2000125e:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20001262:	bf00      	nop
20001264:	3714      	adds	r7, #20
20001266:	46bd      	mov	sp, r7
20001268:	bc80      	pop	{r7}
2000126a:	4770      	bx	lr
2000126c:	20002500 	.word	0x20002500
20001270:	e000ed00 	.word	0xe000ed00
20001274:	20001295 	.word	0x20001295
20001278:	2000034d 	.word	0x2000034d

2000127c <system_init>:
2000127c:	b580      	push	{r7, lr}
2000127e:	af00      	add	r7, sp, #0
20001280:	f7ff ffca 	bl	20001218 <set_ram_vt>
20001284:	f7ff fea2 	bl	20000fcc <ClkConfig>
20001288:	f7ff fdee 	bl	20000e68 <PortConfig>
2000128c:	f7ff fed4 	bl	20001038 <TimerConfig>
20001290:	bf00      	nop
20001292:	bd80      	pop	{r7, pc}

20001294 <SysTick_Handler>:
20001294:	b480      	push	{r7}
20001296:	af00      	add	r7, sp, #0
20001298:	4b04      	ldr	r3, [pc, #16]	; (200012ac <SysTick_Handler+0x18>)
2000129a:	681b      	ldr	r3, [r3, #0]
2000129c:	3301      	adds	r3, #1
2000129e:	4a03      	ldr	r2, [pc, #12]	; (200012ac <SysTick_Handler+0x18>)
200012a0:	6013      	str	r3, [r2, #0]
200012a2:	bf00      	nop
200012a4:	46bd      	mov	sp, r7
200012a6:	bc80      	pop	{r7}
200012a8:	4770      	bx	lr
200012aa:	bf00      	nop
200012ac:	20002400 	.word	0x20002400
