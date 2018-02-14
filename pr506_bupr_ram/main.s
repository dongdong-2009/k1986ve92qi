
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b580      	push	{r7, lr}
20000002:	b0a6      	sub	sp, #152	; 0x98
20000004:	af00      	add	r7, sp, #0
20000006:	2300      	movs	r3, #0
20000008:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
2000000c:	2300      	movs	r3, #0
2000000e:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
20000012:	2300      	movs	r3, #0
20000014:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
20000018:	2300      	movs	r3, #0
2000001a:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
2000001e:	2300      	movs	r3, #0
20000020:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
20000024:	2300      	movs	r3, #0
20000026:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
2000002a:	2300      	movs	r3, #0
2000002c:	67fb      	str	r3, [r7, #124]	; 0x7c
2000002e:	2300      	movs	r3, #0
20000030:	61bb      	str	r3, [r7, #24]
20000032:	2300      	movs	r3, #0
20000034:	67bb      	str	r3, [r7, #120]	; 0x78
20000036:	f001 fa1b 	bl	20001470 <system_init>
2000003a:	f000 f953 	bl	200002e4 <ssi_init>
2000003e:	f000 f9c5 	bl	200003cc <dac_init>
20000042:	f000 ff53 	bl	20000eec <adc_dma_init>
20000046:	f107 034c 	add.w	r3, r7, #76	; 0x4c
2000004a:	22c8      	movs	r2, #200	; 0xc8
2000004c:	2150      	movs	r1, #80	; 0x50
2000004e:	4618      	mov	r0, r3
20000050:	f000 fa92 	bl	20000578 <reg_init>
20000054:	f107 033c 	add.w	r3, r7, #60	; 0x3c
20000058:	22c8      	movs	r2, #200	; 0xc8
2000005a:	2150      	movs	r1, #80	; 0x50
2000005c:	4618      	mov	r0, r3
2000005e:	f000 fa8b 	bl	20000578 <reg_init>
20000062:	f107 032c 	add.w	r3, r7, #44	; 0x2c
20000066:	f241 3288 	movw	r2, #5000	; 0x1388
2000006a:	2100      	movs	r1, #0
2000006c:	4618      	mov	r0, r3
2000006e:	f000 fa83 	bl	20000578 <reg_init>
20000072:	f107 031c 	add.w	r3, r7, #28
20000076:	f241 7270 	movw	r2, #6000	; 0x1770
2000007a:	2100      	movs	r1, #0
2000007c:	4618      	mov	r0, r3
2000007e:	f000 fa7b 	bl	20000578 <reg_init>
20000082:	2300      	movs	r3, #0
20000084:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
20000088:	2300      	movs	r3, #0
2000008a:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
2000008e:	4b82      	ldr	r3, [pc, #520]	; (20000298 <main+0x298>)
20000090:	2200      	movs	r2, #0
20000092:	601a      	str	r2, [r3, #0]
20000094:	2300      	movs	r3, #0
20000096:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
2000009a:	e024      	b.n	200000e6 <main+0xe6>
2000009c:	f000 ff42 	bl	20000f24 <adc_dma_wait>
200000a0:	4b7e      	ldr	r3, [pc, #504]	; (2000029c <main+0x29c>)
200000a2:	685b      	ldr	r3, [r3, #4]
200000a4:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000a8:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000ac:	4413      	add	r3, r2
200000ae:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
200000b2:	4b7a      	ldr	r3, [pc, #488]	; (2000029c <main+0x29c>)
200000b4:	681b      	ldr	r3, [r3, #0]
200000b6:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000ba:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
200000be:	4413      	add	r3, r2
200000c0:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
200000c4:	4b76      	ldr	r3, [pc, #472]	; (200002a0 <main+0x2a0>)
200000c6:	689b      	ldr	r3, [r3, #8]
200000c8:	4618      	mov	r0, r3
200000ca:	f000 f955 	bl	20000378 <enc_crc>
200000ce:	4602      	mov	r2, r0
200000d0:	4b71      	ldr	r3, [pc, #452]	; (20000298 <main+0x298>)
200000d2:	681b      	ldr	r3, [r3, #0]
200000d4:	4413      	add	r3, r2
200000d6:	461a      	mov	r2, r3
200000d8:	4b6f      	ldr	r3, [pc, #444]	; (20000298 <main+0x298>)
200000da:	601a      	str	r2, [r3, #0]
200000dc:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
200000e0:	3301      	adds	r3, #1
200000e2:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
200000e6:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
200000ea:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
200000ee:	dbd5      	blt.n	2000009c <main+0x9c>
200000f0:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000f4:	129b      	asrs	r3, r3, #10
200000f6:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
200000fa:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
200000fe:	129b      	asrs	r3, r3, #10
20000100:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000104:	4b64      	ldr	r3, [pc, #400]	; (20000298 <main+0x298>)
20000106:	681b      	ldr	r3, [r3, #0]
20000108:	129b      	asrs	r3, r3, #10
2000010a:	4a63      	ldr	r2, [pc, #396]	; (20000298 <main+0x298>)
2000010c:	6013      	str	r3, [r2, #0]
2000010e:	4b62      	ldr	r3, [pc, #392]	; (20000298 <main+0x298>)
20000110:	681b      	ldr	r3, [r3, #0]
20000112:	4a64      	ldr	r2, [pc, #400]	; (200002a4 <main+0x2a4>)
20000114:	6013      	str	r3, [r2, #0]
20000116:	f000 ff05 	bl	20000f24 <adc_dma_wait>
2000011a:	4b60      	ldr	r3, [pc, #384]	; (2000029c <main+0x29c>)
2000011c:	685b      	ldr	r3, [r3, #4]
2000011e:	f3c3 020b 	ubfx	r2, r3, #0, #12
20000122:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
20000126:	1ad3      	subs	r3, r2, r3
20000128:	677b      	str	r3, [r7, #116]	; 0x74
2000012a:	4b5c      	ldr	r3, [pc, #368]	; (2000029c <main+0x29c>)
2000012c:	681b      	ldr	r3, [r3, #0]
2000012e:	f3c3 020b 	ubfx	r2, r3, #0, #12
20000132:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
20000136:	1ad3      	subs	r3, r2, r3
20000138:	673b      	str	r3, [r7, #112]	; 0x70
2000013a:	6f7a      	ldr	r2, [r7, #116]	; 0x74
2000013c:	6f3b      	ldr	r3, [r7, #112]	; 0x70
2000013e:	4413      	add	r3, r2
20000140:	66fb      	str	r3, [r7, #108]	; 0x6c
20000142:	4b57      	ldr	r3, [pc, #348]	; (200002a0 <main+0x2a0>)
20000144:	689b      	ldr	r3, [r3, #8]
20000146:	4618      	mov	r0, r3
20000148:	f000 f916 	bl	20000378 <enc_crc>
2000014c:	66b8      	str	r0, [r7, #104]	; 0x68
2000014e:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20000150:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000154:	67bb      	str	r3, [r7, #120]	; 0x78
20000156:	4b54      	ldr	r3, [pc, #336]	; (200002a8 <main+0x2a8>)
20000158:	681b      	ldr	r3, [r3, #0]
2000015a:	3301      	adds	r3, #1
2000015c:	4a52      	ldr	r2, [pc, #328]	; (200002a8 <main+0x2a8>)
2000015e:	6013      	str	r3, [r2, #0]
20000160:	4b51      	ldr	r3, [pc, #324]	; (200002a8 <main+0x2a8>)
20000162:	681b      	ldr	r3, [r3, #0]
20000164:	f003 0307 	and.w	r3, r3, #7
20000168:	2b00      	cmp	r3, #0
2000016a:	d14e      	bne.n	2000020a <main+0x20a>
2000016c:	4a4f      	ldr	r2, [pc, #316]	; (200002ac <main+0x2ac>)
2000016e:	4b4f      	ldr	r3, [pc, #316]	; (200002ac <main+0x2ac>)
20000170:	681b      	ldr	r3, [r3, #0]
20000172:	f043 0301 	orr.w	r3, r3, #1
20000176:	6013      	str	r3, [r2, #0]
20000178:	f000 f9b2 	bl	200004e0 <update_position>
2000017c:	4602      	mov	r2, r0
2000017e:	4b46      	ldr	r3, [pc, #280]	; (20000298 <main+0x298>)
20000180:	681b      	ldr	r3, [r3, #0]
20000182:	1ad3      	subs	r3, r2, r3
20000184:	4a47      	ldr	r2, [pc, #284]	; (200002a4 <main+0x2a4>)
20000186:	6013      	str	r3, [r2, #0]
20000188:	6ebb      	ldr	r3, [r7, #104]	; 0x68
2000018a:	f107 0218 	add.w	r2, r7, #24
2000018e:	4611      	mov	r1, r2
20000190:	4618      	mov	r0, r3
20000192:	f000 fdaf 	bl	20000cf4 <get_speed>
20000196:	6678      	str	r0, [r7, #100]	; 0x64
20000198:	4b3f      	ldr	r3, [pc, #252]	; (20000298 <main+0x298>)
2000019a:	681a      	ldr	r2, [r3, #0]
2000019c:	69bb      	ldr	r3, [r7, #24]
2000019e:	1ad3      	subs	r3, r2, r3
200001a0:	119b      	asrs	r3, r3, #6
200001a2:	4618      	mov	r0, r3
200001a4:	f000 f98c 	bl	200004c0 <debug_signal>
200001a8:	4b3e      	ldr	r3, [pc, #248]	; (200002a4 <main+0x2a4>)
200001aa:	681a      	ldr	r2, [r3, #0]
200001ac:	69bb      	ldr	r3, [r7, #24]
200001ae:	1ad1      	subs	r1, r2, r3
200001b0:	f107 031c 	add.w	r3, r7, #28
200001b4:	2200      	movs	r2, #0
200001b6:	4618      	mov	r0, r3
200001b8:	f000 f9e4 	bl	20000584 <reg_update>
200001bc:	6abb      	ldr	r3, [r7, #40]	; 0x28
200001be:	131b      	asrs	r3, r3, #12
200001c0:	67fb      	str	r3, [r7, #124]	; 0x7c
200001c2:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
200001c4:	6e7b      	ldr	r3, [r7, #100]	; 0x64
200001c6:	1ad1      	subs	r1, r2, r3
200001c8:	f107 032c 	add.w	r3, r7, #44	; 0x2c
200001cc:	2200      	movs	r2, #0
200001ce:	4618      	mov	r0, r3
200001d0:	f000 f9d8 	bl	20000584 <reg_update>
200001d4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
200001d6:	131b      	asrs	r3, r3, #12
200001d8:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
200001dc:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
200001e0:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
200001e4:	dd03      	ble.n	200001ee <main+0x1ee>
200001e6:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
200001ea:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
200001ee:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
200001f2:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
200001f6:	da02      	bge.n	200001fe <main+0x1fe>
200001f8:	4b2d      	ldr	r3, [pc, #180]	; (200002b0 <main+0x2b0>)
200001fa:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
200001fe:	4a2b      	ldr	r2, [pc, #172]	; (200002ac <main+0x2ac>)
20000200:	4b2a      	ldr	r3, [pc, #168]	; (200002ac <main+0x2ac>)
20000202:	681b      	ldr	r3, [r3, #0]
20000204:	f023 0301 	bic.w	r3, r3, #1
20000208:	6013      	str	r3, [r2, #0]
2000020a:	6fbb      	ldr	r3, [r7, #120]	; 0x78
2000020c:	f503 732f 	add.w	r3, r3, #700	; 0x2bc
20000210:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000214:	67bb      	str	r3, [r7, #120]	; 0x78
20000216:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20000218:	607b      	str	r3, [r7, #4]
2000021a:	6efb      	ldr	r3, [r7, #108]	; 0x6c
2000021c:	60bb      	str	r3, [r7, #8]
2000021e:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20000220:	60fb      	str	r3, [r7, #12]
20000222:	6fba      	ldr	r2, [r7, #120]	; 0x78
20000224:	f107 0110 	add.w	r1, r7, #16
20000228:	1d3b      	adds	r3, r7, #4
2000022a:	4618      	mov	r0, r3
2000022c:	f000 f9d0 	bl	200005d0 <abc_to_dq>
20000230:	693b      	ldr	r3, [r7, #16]
20000232:	425b      	negs	r3, r3
20000234:	663b      	str	r3, [r7, #96]	; 0x60
20000236:	697b      	ldr	r3, [r7, #20]
20000238:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
2000023c:	1ad3      	subs	r3, r2, r3
2000023e:	65fb      	str	r3, [r7, #92]	; 0x5c
20000240:	f107 034c 	add.w	r3, r7, #76	; 0x4c
20000244:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
20000248:	6e39      	ldr	r1, [r7, #96]	; 0x60
2000024a:	4618      	mov	r0, r3
2000024c:	f000 f99a 	bl	20000584 <reg_update>
20000250:	f107 033c 	add.w	r3, r7, #60	; 0x3c
20000254:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
20000258:	6df9      	ldr	r1, [r7, #92]	; 0x5c
2000025a:	4618      	mov	r0, r3
2000025c:	f000 f992 	bl	20000584 <reg_update>
20000260:	6dbb      	ldr	r3, [r7, #88]	; 0x58
20000262:	109b      	asrs	r3, r3, #2
20000264:	613b      	str	r3, [r7, #16]
20000266:	6cbb      	ldr	r3, [r7, #72]	; 0x48
20000268:	109b      	asrs	r3, r3, #2
2000026a:	617b      	str	r3, [r7, #20]
2000026c:	6fba      	ldr	r2, [r7, #120]	; 0x78
2000026e:	f107 0110 	add.w	r1, r7, #16
20000272:	1d3b      	adds	r3, r7, #4
20000274:	4618      	mov	r0, r3
20000276:	f000 fbc3 	bl	20000a00 <svpwm>
2000027a:	f8c7 0088 	str.w	r0, [r7, #136]	; 0x88
2000027e:	687b      	ldr	r3, [r7, #4]
20000280:	4618      	mov	r0, r3
20000282:	f000 f8ed 	bl	20000460 <pwm_seta>
20000286:	68bb      	ldr	r3, [r7, #8]
20000288:	4618      	mov	r0, r3
2000028a:	f000 f8f9 	bl	20000480 <pwm_setb>
2000028e:	68fb      	ldr	r3, [r7, #12]
20000290:	4618      	mov	r0, r3
20000292:	f000 f905 	bl	200004a0 <pwm_setc>
20000296:	e73e      	b.n	20000116 <main+0x116>
20000298:	2000260c 	.word	0x2000260c
2000029c:	20002e00 	.word	0x20002e00
200002a0:	40040000 	.word	0x40040000
200002a4:	20002600 	.word	0x20002600
200002a8:	20002614 	.word	0x20002614
200002ac:	400a8000 	.word	0x400a8000
200002b0:	fffffc18 	.word	0xfffffc18

200002b4 <sleep>:
200002b4:	b480      	push	{r7}
200002b6:	b085      	sub	sp, #20
200002b8:	af00      	add	r7, sp, #0
200002ba:	6078      	str	r0, [r7, #4]
200002bc:	4b08      	ldr	r3, [pc, #32]	; (200002e0 <sleep+0x2c>)
200002be:	681a      	ldr	r2, [r3, #0]
200002c0:	687b      	ldr	r3, [r7, #4]
200002c2:	4413      	add	r3, r2
200002c4:	60fb      	str	r3, [r7, #12]
200002c6:	bf00      	nop
200002c8:	4b05      	ldr	r3, [pc, #20]	; (200002e0 <sleep+0x2c>)
200002ca:	681a      	ldr	r2, [r3, #0]
200002cc:	68fb      	ldr	r3, [r7, #12]
200002ce:	429a      	cmp	r2, r3
200002d0:	d3fa      	bcc.n	200002c8 <sleep+0x14>
200002d2:	bf00      	nop
200002d4:	4618      	mov	r0, r3
200002d6:	3714      	adds	r7, #20
200002d8:	46bd      	mov	sp, r7
200002da:	bc80      	pop	{r7}
200002dc:	4770      	bx	lr
200002de:	bf00      	nop
200002e0:	20002700 	.word	0x20002700

200002e4 <ssi_init>:
200002e4:	b480      	push	{r7}
200002e6:	af00      	add	r7, sp, #0
200002e8:	4a0c      	ldr	r2, [pc, #48]	; (2000031c <ssi_init+0x38>)
200002ea:	4b0c      	ldr	r3, [pc, #48]	; (2000031c <ssi_init+0x38>)
200002ec:	69db      	ldr	r3, [r3, #28]
200002ee:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200002f2:	61d3      	str	r3, [r2, #28]
200002f4:	4b09      	ldr	r3, [pc, #36]	; (2000031c <ssi_init+0x38>)
200002f6:	4a0a      	ldr	r2, [pc, #40]	; (20000320 <ssi_init+0x3c>)
200002f8:	62da      	str	r2, [r3, #44]	; 0x2c
200002fa:	4b0a      	ldr	r3, [pc, #40]	; (20000324 <ssi_init+0x40>)
200002fc:	2200      	movs	r2, #0
200002fe:	605a      	str	r2, [r3, #4]
20000300:	4b08      	ldr	r3, [pc, #32]	; (20000324 <ssi_init+0x40>)
20000302:	220a      	movs	r2, #10
20000304:	611a      	str	r2, [r3, #16]
20000306:	4b07      	ldr	r3, [pc, #28]	; (20000324 <ssi_init+0x40>)
20000308:	f240 221f 	movw	r2, #543	; 0x21f
2000030c:	601a      	str	r2, [r3, #0]
2000030e:	4b05      	ldr	r3, [pc, #20]	; (20000324 <ssi_init+0x40>)
20000310:	2202      	movs	r2, #2
20000312:	605a      	str	r2, [r3, #4]
20000314:	bf00      	nop
20000316:	46bd      	mov	sp, r7
20000318:	bc80      	pop	{r7}
2000031a:	4770      	bx	lr
2000031c:	40020000 	.word	0x40020000
20000320:	0100000a 	.word	0x0100000a
20000324:	40040000 	.word	0x40040000

20000328 <b2g>:
20000328:	b480      	push	{r7}
2000032a:	b083      	sub	sp, #12
2000032c:	af00      	add	r7, sp, #0
2000032e:	6078      	str	r0, [r7, #4]
20000330:	687b      	ldr	r3, [r7, #4]
20000332:	085a      	lsrs	r2, r3, #1
20000334:	687b      	ldr	r3, [r7, #4]
20000336:	4053      	eors	r3, r2
20000338:	4618      	mov	r0, r3
2000033a:	370c      	adds	r7, #12
2000033c:	46bd      	mov	sp, r7
2000033e:	bc80      	pop	{r7}
20000340:	4770      	bx	lr
20000342:	bf00      	nop

20000344 <g2b>:
20000344:	b480      	push	{r7}
20000346:	b085      	sub	sp, #20
20000348:	af00      	add	r7, sp, #0
2000034a:	6078      	str	r0, [r7, #4]
2000034c:	2300      	movs	r3, #0
2000034e:	60fb      	str	r3, [r7, #12]
20000350:	2300      	movs	r3, #0
20000352:	60fb      	str	r3, [r7, #12]
20000354:	e006      	b.n	20000364 <g2b+0x20>
20000356:	68fa      	ldr	r2, [r7, #12]
20000358:	687b      	ldr	r3, [r7, #4]
2000035a:	4053      	eors	r3, r2
2000035c:	60fb      	str	r3, [r7, #12]
2000035e:	687b      	ldr	r3, [r7, #4]
20000360:	085b      	lsrs	r3, r3, #1
20000362:	607b      	str	r3, [r7, #4]
20000364:	687b      	ldr	r3, [r7, #4]
20000366:	2b00      	cmp	r3, #0
20000368:	d1f5      	bne.n	20000356 <g2b+0x12>
2000036a:	68fb      	ldr	r3, [r7, #12]
2000036c:	4618      	mov	r0, r3
2000036e:	3714      	adds	r7, #20
20000370:	46bd      	mov	sp, r7
20000372:	bc80      	pop	{r7}
20000374:	4770      	bx	lr
20000376:	bf00      	nop

20000378 <enc_crc>:
20000378:	b480      	push	{r7}
2000037a:	b085      	sub	sp, #20
2000037c:	af00      	add	r7, sp, #0
2000037e:	6078      	str	r0, [r7, #4]
20000380:	687b      	ldr	r3, [r7, #4]
20000382:	60bb      	str	r3, [r7, #8]
20000384:	2300      	movs	r3, #0
20000386:	60fb      	str	r3, [r7, #12]
20000388:	e006      	b.n	20000398 <enc_crc+0x20>
2000038a:	68fa      	ldr	r2, [r7, #12]
2000038c:	68bb      	ldr	r3, [r7, #8]
2000038e:	4053      	eors	r3, r2
20000390:	60fb      	str	r3, [r7, #12]
20000392:	68bb      	ldr	r3, [r7, #8]
20000394:	085b      	lsrs	r3, r3, #1
20000396:	60bb      	str	r3, [r7, #8]
20000398:	68bb      	ldr	r3, [r7, #8]
2000039a:	2b00      	cmp	r3, #0
2000039c:	d1f5      	bne.n	2000038a <enc_crc+0x12>
2000039e:	68fb      	ldr	r3, [r7, #12]
200003a0:	f003 0301 	and.w	r3, r3, #1
200003a4:	2b00      	cmp	r3, #0
200003a6:	d107      	bne.n	200003b8 <enc_crc+0x40>
200003a8:	687b      	ldr	r3, [r7, #4]
200003aa:	f3c3 030b 	ubfx	r3, r3, #0, #12
200003ae:	4a06      	ldr	r2, [pc, #24]	; (200003c8 <enc_crc+0x50>)
200003b0:	6013      	str	r3, [r2, #0]
200003b2:	4b05      	ldr	r3, [pc, #20]	; (200003c8 <enc_crc+0x50>)
200003b4:	681b      	ldr	r3, [r3, #0]
200003b6:	2b00      	cmp	r3, #0
200003b8:	4b03      	ldr	r3, [pc, #12]	; (200003c8 <enc_crc+0x50>)
200003ba:	681b      	ldr	r3, [r3, #0]
200003bc:	4618      	mov	r0, r3
200003be:	3714      	adds	r7, #20
200003c0:	46bd      	mov	sp, r7
200003c2:	bc80      	pop	{r7}
200003c4:	4770      	bx	lr
200003c6:	bf00      	nop
200003c8:	20002618 	.word	0x20002618

200003cc <dac_init>:
200003cc:	b480      	push	{r7}
200003ce:	af00      	add	r7, sp, #0
200003d0:	4a07      	ldr	r2, [pc, #28]	; (200003f0 <dac_init+0x24>)
200003d2:	4b07      	ldr	r3, [pc, #28]	; (200003f0 <dac_init+0x24>)
200003d4:	69db      	ldr	r3, [r3, #28]
200003d6:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
200003da:	61d3      	str	r3, [r2, #28]
200003dc:	4a05      	ldr	r2, [pc, #20]	; (200003f4 <dac_init+0x28>)
200003de:	4b05      	ldr	r3, [pc, #20]	; (200003f4 <dac_init+0x28>)
200003e0:	681b      	ldr	r3, [r3, #0]
200003e2:	f043 0308 	orr.w	r3, r3, #8
200003e6:	6013      	str	r3, [r2, #0]
200003e8:	bf00      	nop
200003ea:	46bd      	mov	sp, r7
200003ec:	bc80      	pop	{r7}
200003ee:	4770      	bx	lr
200003f0:	40020000 	.word	0x40020000
200003f4:	40090000 	.word	0x40090000

200003f8 <encoder_start>:
200003f8:	b480      	push	{r7}
200003fa:	af00      	add	r7, sp, #0
200003fc:	4b03      	ldr	r3, [pc, #12]	; (2000040c <encoder_start+0x14>)
200003fe:	f240 5255 	movw	r2, #1365	; 0x555
20000402:	609a      	str	r2, [r3, #8]
20000404:	bf00      	nop
20000406:	46bd      	mov	sp, r7
20000408:	bc80      	pop	{r7}
2000040a:	4770      	bx	lr
2000040c:	40040000 	.word	0x40040000

20000410 <TIMER3_Handler>:
20000410:	b580      	push	{r7, lr}
20000412:	af00      	add	r7, sp, #0
20000414:	4b04      	ldr	r3, [pc, #16]	; (20000428 <TIMER3_Handler+0x18>)
20000416:	2200      	movs	r2, #0
20000418:	655a      	str	r2, [r3, #84]	; 0x54
2000041a:	f7ff ffed 	bl	200003f8 <encoder_start>
2000041e:	f000 fd6d 	bl	20000efc <adc_dma_start>
20000422:	bf00      	nop
20000424:	bd80      	pop	{r7, pc}
20000426:	bf00      	nop
20000428:	40080000 	.word	0x40080000

2000042c <get_phase>:
2000042c:	b580      	push	{r7, lr}
2000042e:	af00      	add	r7, sp, #0
20000430:	4b0a      	ldr	r3, [pc, #40]	; (2000045c <get_phase+0x30>)
20000432:	f240 5255 	movw	r2, #1365	; 0x555
20000436:	609a      	str	r2, [r3, #8]
20000438:	bf00      	nop
2000043a:	4b08      	ldr	r3, [pc, #32]	; (2000045c <get_phase+0x30>)
2000043c:	68db      	ldr	r3, [r3, #12]
2000043e:	f003 0304 	and.w	r3, r3, #4
20000442:	2b00      	cmp	r3, #0
20000444:	d0f9      	beq.n	2000043a <get_phase+0xe>
20000446:	4b05      	ldr	r3, [pc, #20]	; (2000045c <get_phase+0x30>)
20000448:	689b      	ldr	r3, [r3, #8]
2000044a:	f3c3 030b 	ubfx	r3, r3, #0, #12
2000044e:	4618      	mov	r0, r3
20000450:	f7ff ff78 	bl	20000344 <g2b>
20000454:	4603      	mov	r3, r0
20000456:	4618      	mov	r0, r3
20000458:	bd80      	pop	{r7, pc}
2000045a:	bf00      	nop
2000045c:	40040000 	.word	0x40040000

20000460 <pwm_seta>:
20000460:	b480      	push	{r7}
20000462:	b083      	sub	sp, #12
20000464:	af00      	add	r7, sp, #0
20000466:	6078      	str	r0, [r7, #4]
20000468:	4a04      	ldr	r2, [pc, #16]	; (2000047c <pwm_seta+0x1c>)
2000046a:	687b      	ldr	r3, [r7, #4]
2000046c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000470:	6113      	str	r3, [r2, #16]
20000472:	bf00      	nop
20000474:	370c      	adds	r7, #12
20000476:	46bd      	mov	sp, r7
20000478:	bc80      	pop	{r7}
2000047a:	4770      	bx	lr
2000047c:	40080000 	.word	0x40080000

20000480 <pwm_setb>:
20000480:	b480      	push	{r7}
20000482:	b083      	sub	sp, #12
20000484:	af00      	add	r7, sp, #0
20000486:	6078      	str	r0, [r7, #4]
20000488:	4a04      	ldr	r2, [pc, #16]	; (2000049c <pwm_setb+0x1c>)
2000048a:	687b      	ldr	r3, [r7, #4]
2000048c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000490:	6153      	str	r3, [r2, #20]
20000492:	bf00      	nop
20000494:	370c      	adds	r7, #12
20000496:	46bd      	mov	sp, r7
20000498:	bc80      	pop	{r7}
2000049a:	4770      	bx	lr
2000049c:	40080000 	.word	0x40080000

200004a0 <pwm_setc>:
200004a0:	b480      	push	{r7}
200004a2:	b083      	sub	sp, #12
200004a4:	af00      	add	r7, sp, #0
200004a6:	6078      	str	r0, [r7, #4]
200004a8:	4a04      	ldr	r2, [pc, #16]	; (200004bc <pwm_setc+0x1c>)
200004aa:	687b      	ldr	r3, [r7, #4]
200004ac:	f503 7300 	add.w	r3, r3, #512	; 0x200
200004b0:	6193      	str	r3, [r2, #24]
200004b2:	bf00      	nop
200004b4:	370c      	adds	r7, #12
200004b6:	46bd      	mov	sp, r7
200004b8:	bc80      	pop	{r7}
200004ba:	4770      	bx	lr
200004bc:	40080000 	.word	0x40080000

200004c0 <debug_signal>:
200004c0:	b480      	push	{r7}
200004c2:	b083      	sub	sp, #12
200004c4:	af00      	add	r7, sp, #0
200004c6:	6078      	str	r0, [r7, #4]
200004c8:	4a04      	ldr	r2, [pc, #16]	; (200004dc <debug_signal+0x1c>)
200004ca:	687b      	ldr	r3, [r7, #4]
200004cc:	f503 6300 	add.w	r3, r3, #2048	; 0x800
200004d0:	6093      	str	r3, [r2, #8]
200004d2:	bf00      	nop
200004d4:	370c      	adds	r7, #12
200004d6:	46bd      	mov	sp, r7
200004d8:	bc80      	pop	{r7}
200004da:	4770      	bx	lr
200004dc:	40090000 	.word	0x40090000

200004e0 <update_position>:
200004e0:	b480      	push	{r7}
200004e2:	b087      	sub	sp, #28
200004e4:	af00      	add	r7, sp, #0
200004e6:	4b19      	ldr	r3, [pc, #100]	; (2000054c <update_position+0x6c>)
200004e8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200004ea:	f003 0340 	and.w	r3, r3, #64	; 0x40
200004ee:	2b00      	cmp	r3, #0
200004f0:	d024      	beq.n	2000053c <update_position+0x5c>
200004f2:	2300      	movs	r3, #0
200004f4:	617b      	str	r3, [r7, #20]
200004f6:	e00c      	b.n	20000512 <update_position+0x32>
200004f8:	4b14      	ldr	r3, [pc, #80]	; (2000054c <update_position+0x6c>)
200004fa:	681b      	ldr	r3, [r3, #0]
200004fc:	b2d9      	uxtb	r1, r3
200004fe:	463a      	mov	r2, r7
20000500:	697b      	ldr	r3, [r7, #20]
20000502:	4413      	add	r3, r2
20000504:	460a      	mov	r2, r1
20000506:	701a      	strb	r2, [r3, #0]
20000508:	697b      	ldr	r3, [r7, #20]
2000050a:	3301      	adds	r3, #1
2000050c:	f003 030f 	and.w	r3, r3, #15
20000510:	617b      	str	r3, [r7, #20]
20000512:	4b0e      	ldr	r3, [pc, #56]	; (2000054c <update_position+0x6c>)
20000514:	699b      	ldr	r3, [r3, #24]
20000516:	f003 0310 	and.w	r3, r3, #16
2000051a:	2b00      	cmp	r3, #0
2000051c:	d0ec      	beq.n	200004f8 <update_position+0x18>
2000051e:	783b      	ldrb	r3, [r7, #0]
20000520:	461a      	mov	r2, r3
20000522:	787b      	ldrb	r3, [r7, #1]
20000524:	021b      	lsls	r3, r3, #8
20000526:	4413      	add	r3, r2
20000528:	011b      	lsls	r3, r3, #4
2000052a:	827b      	strh	r3, [r7, #18]
2000052c:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
20000530:	111b      	asrs	r3, r3, #4
20000532:	827b      	strh	r3, [r7, #18]
20000534:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
20000538:	4a05      	ldr	r2, [pc, #20]	; (20000550 <update_position+0x70>)
2000053a:	6013      	str	r3, [r2, #0]
2000053c:	4b04      	ldr	r3, [pc, #16]	; (20000550 <update_position+0x70>)
2000053e:	681b      	ldr	r3, [r3, #0]
20000540:	019b      	lsls	r3, r3, #6
20000542:	4618      	mov	r0, r3
20000544:	371c      	adds	r7, #28
20000546:	46bd      	mov	sp, r7
20000548:	bc80      	pop	{r7}
2000054a:	4770      	bx	lr
2000054c:	40030000 	.word	0x40030000
20000550:	2000261c 	.word	0x2000261c

20000554 <mycos>:
20000554:	4b02      	ldr	r3, [pc, #8]	; (20000560 <mycos+0xc>)
20000556:	f3c0 0009 	ubfx	r0, r0, #0, #10
2000055a:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
2000055e:	4770      	bx	lr
20000560:	2000152c 	.word	0x2000152c

20000564 <mysin>:
20000564:	4b03      	ldr	r3, [pc, #12]	; (20000574 <mysin+0x10>)
20000566:	f500 7040 	add.w	r0, r0, #768	; 0x300
2000056a:	f3c0 0009 	ubfx	r0, r0, #0, #10
2000056e:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000572:	4770      	bx	lr
20000574:	2000152c 	.word	0x2000152c

20000578 <reg_init>:
20000578:	2300      	movs	r3, #0
2000057a:	e880 000e 	stmia.w	r0, {r1, r2, r3}
2000057e:	60c3      	str	r3, [r0, #12]
20000580:	4770      	bx	lr
20000582:	bf00      	nop

20000584 <reg_update>:
20000584:	6803      	ldr	r3, [r0, #0]
20000586:	b410      	push	{r4}
20000588:	fb03 f301 	mul.w	r3, r3, r1
2000058c:	6884      	ldr	r4, [r0, #8]
2000058e:	b11a      	cbz	r2, 20000598 <reg_update+0x14>
20000590:	2c00      	cmp	r4, #0
20000592:	dd09      	ble.n	200005a8 <reg_update+0x24>
20000594:	ea03 73e3 	and.w	r3, r3, r3, asr #31
20000598:	6842      	ldr	r2, [r0, #4]
2000059a:	4423      	add	r3, r4
2000059c:	fb02 3101 	mla	r1, r2, r1, r3
200005a0:	6083      	str	r3, [r0, #8]
200005a2:	60c1      	str	r1, [r0, #12]
200005a4:	bc10      	pop	{r4}
200005a6:	4770      	bx	lr
200005a8:	bf18      	it	ne
200005aa:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
200005ae:	e7f3      	b.n	20000598 <reg_update+0x14>

200005b0 <dot3>:
200005b0:	b430      	push	{r4, r5}
200005b2:	684b      	ldr	r3, [r1, #4]
200005b4:	6844      	ldr	r4, [r0, #4]
200005b6:	6802      	ldr	r2, [r0, #0]
200005b8:	fb03 f304 	mul.w	r3, r3, r4
200005bc:	680d      	ldr	r5, [r1, #0]
200005be:	6884      	ldr	r4, [r0, #8]
200005c0:	fb05 3302 	mla	r3, r5, r2, r3
200005c4:	6888      	ldr	r0, [r1, #8]
200005c6:	fb00 3004 	mla	r0, r0, r4, r3
200005ca:	bc30      	pop	{r4, r5}
200005cc:	4770      	bx	lr
200005ce:	bf00      	nop

200005d0 <abc_to_dq>:
200005d0:	b4f0      	push	{r4, r5, r6, r7}
200005d2:	4c1d      	ldr	r4, [pc, #116]	; (20000648 <abc_to_dq+0x78>)
200005d4:	6803      	ldr	r3, [r0, #0]
200005d6:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
200005da:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
200005de:	fb03 f306 	mul.w	r3, r3, r6
200005e2:	f3c5 0509 	ubfx	r5, r5, #0, #10
200005e6:	6847      	ldr	r7, [r0, #4]
200005e8:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200005ec:	f202 1655 	addw	r6, r2, #341	; 0x155
200005f0:	fb07 3305 	mla	r3, r7, r5, r3
200005f4:	f3c6 0509 	ubfx	r5, r6, #0, #10
200005f8:	6887      	ldr	r7, [r0, #8]
200005fa:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200005fe:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
20000602:	fb07 3305 	mla	r3, r7, r5, r3
20000606:	129b      	asrs	r3, r3, #10
20000608:	600b      	str	r3, [r1, #0]
2000060a:	f3c6 0509 	ubfx	r5, r6, #0, #10
2000060e:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
20000612:	6843      	ldr	r3, [r0, #4]
20000614:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000618:	fb03 f306 	mul.w	r3, r3, r6
2000061c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000620:	6806      	ldr	r6, [r0, #0]
20000622:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000626:	f202 4255 	addw	r2, r2, #1109	; 0x455
2000062a:	fb06 3305 	mla	r3, r6, r5, r3
2000062e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000632:	6880      	ldr	r0, [r0, #8]
20000634:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
20000638:	bcf0      	pop	{r4, r5, r6, r7}
2000063a:	fb00 3302 	mla	r3, r0, r2, r3
2000063e:	425b      	negs	r3, r3
20000640:	129b      	asrs	r3, r3, #10
20000642:	604b      	str	r3, [r1, #4]
20000644:	4770      	bx	lr
20000646:	bf00      	nop
20000648:	2000152c 	.word	0x2000152c

2000064c <dq_to_abc>:
2000064c:	4b1d      	ldr	r3, [pc, #116]	; (200006c4 <dq_to_abc+0x78>)
2000064e:	b4f0      	push	{r4, r5, r6, r7}
20000650:	680e      	ldr	r6, [r1, #0]
20000652:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
20000656:	f502 7540 	add.w	r5, r2, #768	; 0x300
2000065a:	fb04 f406 	mul.w	r4, r4, r6
2000065e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000662:	684f      	ldr	r7, [r1, #4]
20000664:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000668:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
2000066c:	fb07 4415 	mls	r4, r7, r5, r4
20000670:	1524      	asrs	r4, r4, #20
20000672:	6004      	str	r4, [r0, #0]
20000674:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000678:	680c      	ldr	r4, [r1, #0]
2000067a:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
2000067e:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
20000682:	fb04 f406 	mul.w	r4, r4, r6
20000686:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000068a:	684f      	ldr	r7, [r1, #4]
2000068c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000690:	f202 1655 	addw	r6, r2, #341	; 0x155
20000694:	fb07 4415 	mls	r4, r7, r5, r4
20000698:	1524      	asrs	r4, r4, #20
2000069a:	6044      	str	r4, [r0, #4]
2000069c:	f3c6 0509 	ubfx	r5, r6, #0, #10
200006a0:	680c      	ldr	r4, [r1, #0]
200006a2:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
200006a6:	f202 4255 	addw	r2, r2, #1109	; 0x455
200006aa:	fb04 f405 	mul.w	r4, r4, r5
200006ae:	f3c2 0209 	ubfx	r2, r2, #0, #10
200006b2:	6849      	ldr	r1, [r1, #4]
200006b4:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
200006b8:	fb01 4312 	mls	r3, r1, r2, r4
200006bc:	bcf0      	pop	{r4, r5, r6, r7}
200006be:	151b      	asrs	r3, r3, #20
200006c0:	6083      	str	r3, [r0, #8]
200006c2:	4770      	bx	lr
200006c4:	2000152c 	.word	0x2000152c

200006c8 <cord_atan>:
200006c8:	b5f0      	push	{r4, r5, r6, r7, lr}
200006ca:	b091      	sub	sp, #68	; 0x44
200006cc:	46ee      	mov	lr, sp
200006ce:	4684      	mov	ip, r0
200006d0:	4e56      	ldr	r6, [pc, #344]	; (2000082c <cord_atan+0x164>)
200006d2:	460d      	mov	r5, r1
200006d4:	4614      	mov	r4, r2
200006d6:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200006d8:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200006dc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200006e0:	af08      	add	r7, sp, #32
200006e2:	3610      	adds	r6, #16
200006e4:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200006e8:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200006ea:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200006ec:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200006f0:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200006f4:	f8dc 6000 	ldr.w	r6, [ip]
200006f8:	f8dc 3004 	ldr.w	r3, [ip, #4]
200006fc:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000700:	2b00      	cmp	r3, #0
20000702:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000706:	9900      	ldr	r1, [sp, #0]
20000708:	dd56      	ble.n	200007b8 <cord_atan+0xf0>
2000070a:	18d0      	adds	r0, r2, r3
2000070c:	1a9b      	subs	r3, r3, r2
2000070e:	2b00      	cmp	r3, #0
20000710:	d07a      	beq.n	20000808 <cord_atan+0x140>
20000712:	9f01      	ldr	r7, [sp, #4]
20000714:	dd54      	ble.n	200007c0 <cord_atan+0xf8>
20000716:	eb00 0263 	add.w	r2, r0, r3, asr #1
2000071a:	4439      	add	r1, r7
2000071c:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000720:	2b00      	cmp	r3, #0
20000722:	d073      	beq.n	2000080c <cord_atan+0x144>
20000724:	9f02      	ldr	r7, [sp, #8]
20000726:	dd51      	ble.n	200007cc <cord_atan+0x104>
20000728:	eb02 00a3 	add.w	r0, r2, r3, asr #2
2000072c:	4439      	add	r1, r7
2000072e:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000732:	2b00      	cmp	r3, #0
20000734:	d06d      	beq.n	20000812 <cord_atan+0x14a>
20000736:	9f03      	ldr	r7, [sp, #12]
20000738:	dd4e      	ble.n	200007d8 <cord_atan+0x110>
2000073a:	eb00 02e3 	add.w	r2, r0, r3, asr #3
2000073e:	4439      	add	r1, r7
20000740:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000744:	2b00      	cmp	r3, #0
20000746:	d066      	beq.n	20000816 <cord_atan+0x14e>
20000748:	9f04      	ldr	r7, [sp, #16]
2000074a:	dd4b      	ble.n	200007e4 <cord_atan+0x11c>
2000074c:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000750:	4439      	add	r1, r7
20000752:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000756:	2b00      	cmp	r3, #0
20000758:	d060      	beq.n	2000081c <cord_atan+0x154>
2000075a:	9f05      	ldr	r7, [sp, #20]
2000075c:	dd48      	ble.n	200007f0 <cord_atan+0x128>
2000075e:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000762:	4439      	add	r1, r7
20000764:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000768:	2b00      	cmp	r3, #0
2000076a:	d059      	beq.n	20000820 <cord_atan+0x158>
2000076c:	9f06      	ldr	r7, [sp, #24]
2000076e:	dd45      	ble.n	200007fc <cord_atan+0x134>
20000770:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000774:	4439      	add	r1, r7
20000776:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
2000077a:	2b00      	cmp	r3, #0
2000077c:	d053      	beq.n	20000826 <cord_atan+0x15e>
2000077e:	9a07      	ldr	r2, [sp, #28]
20000780:	bfc7      	ittee	gt
20000782:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000786:	1889      	addgt	r1, r1, r2
20000788:	1a89      	suble	r1, r1, r2
2000078a:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
2000078e:	2207      	movs	r2, #7
20000790:	ab10      	add	r3, sp, #64	; 0x40
20000792:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000796:	f852 3c20 	ldr.w	r3, [r2, #-32]
2000079a:	2e00      	cmp	r6, #0
2000079c:	fb03 f300 	mul.w	r3, r3, r0
200007a0:	bfb8      	it	lt
200007a2:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
200007a6:	2900      	cmp	r1, #0
200007a8:	bfb8      	it	lt
200007aa:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
200007ae:	129b      	asrs	r3, r3, #10
200007b0:	6029      	str	r1, [r5, #0]
200007b2:	6023      	str	r3, [r4, #0]
200007b4:	b011      	add	sp, #68	; 0x44
200007b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200007b8:	1ad0      	subs	r0, r2, r3
200007ba:	4249      	negs	r1, r1
200007bc:	4413      	add	r3, r2
200007be:	e7a6      	b.n	2000070e <cord_atan+0x46>
200007c0:	eba0 0263 	sub.w	r2, r0, r3, asr #1
200007c4:	1bc9      	subs	r1, r1, r7
200007c6:	eb03 0360 	add.w	r3, r3, r0, asr #1
200007ca:	e7a9      	b.n	20000720 <cord_atan+0x58>
200007cc:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
200007d0:	1bc9      	subs	r1, r1, r7
200007d2:	eb03 03a2 	add.w	r3, r3, r2, asr #2
200007d6:	e7ac      	b.n	20000732 <cord_atan+0x6a>
200007d8:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
200007dc:	1bc9      	subs	r1, r1, r7
200007de:	eb03 03e0 	add.w	r3, r3, r0, asr #3
200007e2:	e7af      	b.n	20000744 <cord_atan+0x7c>
200007e4:	eba2 1023 	sub.w	r0, r2, r3, asr #4
200007e8:	1bc9      	subs	r1, r1, r7
200007ea:	eb03 1322 	add.w	r3, r3, r2, asr #4
200007ee:	e7b2      	b.n	20000756 <cord_atan+0x8e>
200007f0:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200007f4:	1bc9      	subs	r1, r1, r7
200007f6:	eb03 1360 	add.w	r3, r3, r0, asr #5
200007fa:	e7b5      	b.n	20000768 <cord_atan+0xa0>
200007fc:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000800:	1bc9      	subs	r1, r1, r7
20000802:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000806:	e7b8      	b.n	2000077a <cord_atan+0xb2>
20000808:	461a      	mov	r2, r3
2000080a:	e7c1      	b.n	20000790 <cord_atan+0xc8>
2000080c:	4610      	mov	r0, r2
2000080e:	2201      	movs	r2, #1
20000810:	e7be      	b.n	20000790 <cord_atan+0xc8>
20000812:	2202      	movs	r2, #2
20000814:	e7bc      	b.n	20000790 <cord_atan+0xc8>
20000816:	4610      	mov	r0, r2
20000818:	2203      	movs	r2, #3
2000081a:	e7b9      	b.n	20000790 <cord_atan+0xc8>
2000081c:	2204      	movs	r2, #4
2000081e:	e7b7      	b.n	20000790 <cord_atan+0xc8>
20000820:	4610      	mov	r0, r2
20000822:	2205      	movs	r2, #5
20000824:	e7b4      	b.n	20000790 <cord_atan+0xc8>
20000826:	2206      	movs	r2, #6
20000828:	e7b2      	b.n	20000790 <cord_atan+0xc8>
2000082a:	bf00      	nop
2000082c:	200014ec 	.word	0x200014ec

20000830 <sinpwm>:
20000830:	b5f0      	push	{r4, r5, r6, r7, lr}
20000832:	b091      	sub	sp, #68	; 0x44
20000834:	46ee      	mov	lr, sp
20000836:	468c      	mov	ip, r1
20000838:	4e6e      	ldr	r6, [pc, #440]	; (200009f4 <sinpwm+0x1c4>)
2000083a:	4604      	mov	r4, r0
2000083c:	4615      	mov	r5, r2
2000083e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000840:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000844:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000848:	af08      	add	r7, sp, #32
2000084a:	3610      	adds	r6, #16
2000084c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000850:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000852:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000854:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000858:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
2000085c:	f8dc 6000 	ldr.w	r6, [ip]
20000860:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000864:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000868:	2b00      	cmp	r3, #0
2000086a:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
2000086e:	9900      	ldr	r1, [sp, #0]
20000870:	f340 8087 	ble.w	20000982 <sinpwm+0x152>
20000874:	18d0      	adds	r0, r2, r3
20000876:	1a9b      	subs	r3, r3, r2
20000878:	2b00      	cmp	r3, #0
2000087a:	f000 80aa 	beq.w	200009d2 <sinpwm+0x1a2>
2000087e:	9f01      	ldr	r7, [sp, #4]
20000880:	f340 8083 	ble.w	2000098a <sinpwm+0x15a>
20000884:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000888:	4439      	add	r1, r7
2000088a:	eba3 0360 	sub.w	r3, r3, r0, asr #1
2000088e:	2b00      	cmp	r3, #0
20000890:	f000 80a1 	beq.w	200009d6 <sinpwm+0x1a6>
20000894:	9f02      	ldr	r7, [sp, #8]
20000896:	dd7e      	ble.n	20000996 <sinpwm+0x166>
20000898:	eb02 00a3 	add.w	r0, r2, r3, asr #2
2000089c:	4439      	add	r1, r7
2000089e:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200008a2:	2b00      	cmp	r3, #0
200008a4:	f000 809a 	beq.w	200009dc <sinpwm+0x1ac>
200008a8:	9f03      	ldr	r7, [sp, #12]
200008aa:	dd7a      	ble.n	200009a2 <sinpwm+0x172>
200008ac:	eb00 02e3 	add.w	r2, r0, r3, asr #3
200008b0:	4439      	add	r1, r7
200008b2:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
200008b6:	2b00      	cmp	r3, #0
200008b8:	f000 8092 	beq.w	200009e0 <sinpwm+0x1b0>
200008bc:	9f04      	ldr	r7, [sp, #16]
200008be:	dd76      	ble.n	200009ae <sinpwm+0x17e>
200008c0:	eb02 1023 	add.w	r0, r2, r3, asr #4
200008c4:	4439      	add	r1, r7
200008c6:	eba3 1322 	sub.w	r3, r3, r2, asr #4
200008ca:	2b00      	cmp	r3, #0
200008cc:	f000 808b 	beq.w	200009e6 <sinpwm+0x1b6>
200008d0:	9f05      	ldr	r7, [sp, #20]
200008d2:	dd72      	ble.n	200009ba <sinpwm+0x18a>
200008d4:	eb00 1263 	add.w	r2, r0, r3, asr #5
200008d8:	4439      	add	r1, r7
200008da:	eba3 1360 	sub.w	r3, r3, r0, asr #5
200008de:	2b00      	cmp	r3, #0
200008e0:	f000 8083 	beq.w	200009ea <sinpwm+0x1ba>
200008e4:	9f06      	ldr	r7, [sp, #24]
200008e6:	dd6e      	ble.n	200009c6 <sinpwm+0x196>
200008e8:	eb02 10a3 	add.w	r0, r2, r3, asr #6
200008ec:	4439      	add	r1, r7
200008ee:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
200008f2:	2b00      	cmp	r3, #0
200008f4:	d07c      	beq.n	200009f0 <sinpwm+0x1c0>
200008f6:	9a07      	ldr	r2, [sp, #28]
200008f8:	bfc7      	ittee	gt
200008fa:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
200008fe:	1889      	addgt	r1, r1, r2
20000900:	1a89      	suble	r1, r1, r2
20000902:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000906:	2207      	movs	r2, #7
20000908:	ab10      	add	r3, sp, #64	; 0x40
2000090a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000090e:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000912:	2e00      	cmp	r6, #0
20000914:	fb03 f300 	mul.w	r3, r3, r0
20000918:	bfb8      	it	lt
2000091a:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
2000091e:	2900      	cmp	r1, #0
20000920:	bfb8      	it	lt
20000922:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000926:	151b      	asrs	r3, r3, #20
20000928:	440d      	add	r5, r1
2000092a:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
2000092e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000932:	dd22      	ble.n	2000097a <sinpwm+0x14a>
20000934:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 200009fc <sinpwm+0x1cc>
20000938:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
2000093c:	2001      	movs	r0, #1
2000093e:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
20000942:	4f2d      	ldr	r7, [pc, #180]	; (200009f8 <sinpwm+0x1c8>)
20000944:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
20000948:	3602      	adds	r6, #2
2000094a:	f3ce 0e09 	ubfx	lr, lr, #0, #10
2000094e:	f3c6 0609 	ubfx	r6, r6, #0, #10
20000952:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
20000956:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
2000095a:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
2000095e:	fb06 f50c 	mul.w	r5, r6, ip
20000962:	fb01 f10c 	mul.w	r1, r1, ip
20000966:	fb02 f303 	mul.w	r3, r2, r3
2000096a:	12ad      	asrs	r5, r5, #10
2000096c:	128a      	asrs	r2, r1, #10
2000096e:	129b      	asrs	r3, r3, #10
20000970:	60a5      	str	r5, [r4, #8]
20000972:	6062      	str	r2, [r4, #4]
20000974:	6023      	str	r3, [r4, #0]
20000976:	b011      	add	sp, #68	; 0x44
20000978:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000097a:	f1c3 0c00 	rsb	ip, r3, #0
2000097e:	2000      	movs	r0, #0
20000980:	e7dd      	b.n	2000093e <sinpwm+0x10e>
20000982:	1ad0      	subs	r0, r2, r3
20000984:	4249      	negs	r1, r1
20000986:	4413      	add	r3, r2
20000988:	e776      	b.n	20000878 <sinpwm+0x48>
2000098a:	eba0 0263 	sub.w	r2, r0, r3, asr #1
2000098e:	1bc9      	subs	r1, r1, r7
20000990:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000994:	e77b      	b.n	2000088e <sinpwm+0x5e>
20000996:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
2000099a:	1bc9      	subs	r1, r1, r7
2000099c:	eb03 03a2 	add.w	r3, r3, r2, asr #2
200009a0:	e77f      	b.n	200008a2 <sinpwm+0x72>
200009a2:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
200009a6:	1bc9      	subs	r1, r1, r7
200009a8:	eb03 03e0 	add.w	r3, r3, r0, asr #3
200009ac:	e783      	b.n	200008b6 <sinpwm+0x86>
200009ae:	eba2 1023 	sub.w	r0, r2, r3, asr #4
200009b2:	1bc9      	subs	r1, r1, r7
200009b4:	eb03 1322 	add.w	r3, r3, r2, asr #4
200009b8:	e787      	b.n	200008ca <sinpwm+0x9a>
200009ba:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200009be:	1bc9      	subs	r1, r1, r7
200009c0:	eb03 1360 	add.w	r3, r3, r0, asr #5
200009c4:	e78b      	b.n	200008de <sinpwm+0xae>
200009c6:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
200009ca:	1bc9      	subs	r1, r1, r7
200009cc:	eb03 13a2 	add.w	r3, r3, r2, asr #6
200009d0:	e78f      	b.n	200008f2 <sinpwm+0xc2>
200009d2:	461a      	mov	r2, r3
200009d4:	e798      	b.n	20000908 <sinpwm+0xd8>
200009d6:	4610      	mov	r0, r2
200009d8:	2201      	movs	r2, #1
200009da:	e795      	b.n	20000908 <sinpwm+0xd8>
200009dc:	2202      	movs	r2, #2
200009de:	e793      	b.n	20000908 <sinpwm+0xd8>
200009e0:	4610      	mov	r0, r2
200009e2:	2203      	movs	r2, #3
200009e4:	e790      	b.n	20000908 <sinpwm+0xd8>
200009e6:	2204      	movs	r2, #4
200009e8:	e78e      	b.n	20000908 <sinpwm+0xd8>
200009ea:	4610      	mov	r0, r2
200009ec:	2205      	movs	r2, #5
200009ee:	e78b      	b.n	20000908 <sinpwm+0xd8>
200009f0:	2206      	movs	r2, #6
200009f2:	e789      	b.n	20000908 <sinpwm+0xd8>
200009f4:	200014ec 	.word	0x200014ec
200009f8:	2000152c 	.word	0x2000152c
200009fc:	fffffe0c 	.word	0xfffffe0c

20000a00 <svpwm>:
20000a00:	b5f0      	push	{r4, r5, r6, r7, lr}
20000a02:	b091      	sub	sp, #68	; 0x44
20000a04:	46ee      	mov	lr, sp
20000a06:	468c      	mov	ip, r1
20000a08:	4eb8      	ldr	r6, [pc, #736]	; (20000cec <svpwm+0x2ec>)
20000a0a:	4604      	mov	r4, r0
20000a0c:	4615      	mov	r5, r2
20000a0e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000a10:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000a14:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000a18:	af08      	add	r7, sp, #32
20000a1a:	3610      	adds	r6, #16
20000a1c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000a20:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000a22:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000a24:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000a28:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000a2c:	f8dc 6000 	ldr.w	r6, [ip]
20000a30:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000a34:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000a38:	2b00      	cmp	r3, #0
20000a3a:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000a3e:	9900      	ldr	r1, [sp, #0]
20000a40:	dd6f      	ble.n	20000b22 <svpwm+0x122>
20000a42:	18d0      	adds	r0, r2, r3
20000a44:	1a9b      	subs	r3, r3, r2
20000a46:	2b00      	cmp	r3, #0
20000a48:	f000 813f 	beq.w	20000cca <svpwm+0x2ca>
20000a4c:	9f01      	ldr	r7, [sp, #4]
20000a4e:	dd6c      	ble.n	20000b2a <svpwm+0x12a>
20000a50:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000a54:	4439      	add	r1, r7
20000a56:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000a5a:	2b00      	cmp	r3, #0
20000a5c:	f000 8137 	beq.w	20000cce <svpwm+0x2ce>
20000a60:	9f02      	ldr	r7, [sp, #8]
20000a62:	dd68      	ble.n	20000b36 <svpwm+0x136>
20000a64:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000a68:	4439      	add	r1, r7
20000a6a:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000a6e:	2b00      	cmp	r3, #0
20000a70:	f000 8130 	beq.w	20000cd4 <svpwm+0x2d4>
20000a74:	9f03      	ldr	r7, [sp, #12]
20000a76:	dd64      	ble.n	20000b42 <svpwm+0x142>
20000a78:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000a7c:	4439      	add	r1, r7
20000a7e:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000a82:	2b00      	cmp	r3, #0
20000a84:	f000 8128 	beq.w	20000cd8 <svpwm+0x2d8>
20000a88:	9f04      	ldr	r7, [sp, #16]
20000a8a:	dd60      	ble.n	20000b4e <svpwm+0x14e>
20000a8c:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000a90:	4439      	add	r1, r7
20000a92:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000a96:	2b00      	cmp	r3, #0
20000a98:	f000 8121 	beq.w	20000cde <svpwm+0x2de>
20000a9c:	9f05      	ldr	r7, [sp, #20]
20000a9e:	dd5c      	ble.n	20000b5a <svpwm+0x15a>
20000aa0:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000aa4:	4439      	add	r1, r7
20000aa6:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000aaa:	2b00      	cmp	r3, #0
20000aac:	f000 8119 	beq.w	20000ce2 <svpwm+0x2e2>
20000ab0:	9f06      	ldr	r7, [sp, #24]
20000ab2:	dd58      	ble.n	20000b66 <svpwm+0x166>
20000ab4:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000ab8:	4439      	add	r1, r7
20000aba:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000abe:	2b00      	cmp	r3, #0
20000ac0:	f000 8112 	beq.w	20000ce8 <svpwm+0x2e8>
20000ac4:	9a07      	ldr	r2, [sp, #28]
20000ac6:	bfc7      	ittee	gt
20000ac8:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000acc:	1889      	addgt	r1, r1, r2
20000ace:	1a89      	suble	r1, r1, r2
20000ad0:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000ad4:	2207      	movs	r2, #7
20000ad6:	ab10      	add	r3, sp, #64	; 0x40
20000ad8:	2e00      	cmp	r6, #0
20000ada:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000ade:	bfb8      	it	lt
20000ae0:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000ae4:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000ae8:	2900      	cmp	r1, #0
20000aea:	fb03 f300 	mul.w	r3, r3, r0
20000aee:	bfb8      	it	lt
20000af0:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000af4:	440d      	add	r5, r1
20000af6:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000afa:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20000afe:	151b      	asrs	r3, r3, #20
20000b00:	1252      	asrs	r2, r2, #9
20000b02:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000b06:	f102 32ff 	add.w	r2, r2, #4294967295
20000b0a:	bfc6      	itte	gt
20000b0c:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20000b10:	2001      	movgt	r0, #1
20000b12:	2000      	movle	r0, #0
20000b14:	2a04      	cmp	r2, #4
20000b16:	d848      	bhi.n	20000baa <svpwm+0x1aa>
20000b18:	e8df f002 	tbb	[pc, r2]
20000b1c:	2b9e8164 	.word	0x2b9e8164
20000b20:	bb          	.byte	0xbb
20000b21:	00          	.byte	0x00
20000b22:	1ad0      	subs	r0, r2, r3
20000b24:	4249      	negs	r1, r1
20000b26:	4413      	add	r3, r2
20000b28:	e78d      	b.n	20000a46 <svpwm+0x46>
20000b2a:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000b2e:	1bc9      	subs	r1, r1, r7
20000b30:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000b34:	e791      	b.n	20000a5a <svpwm+0x5a>
20000b36:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000b3a:	1bc9      	subs	r1, r1, r7
20000b3c:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000b40:	e795      	b.n	20000a6e <svpwm+0x6e>
20000b42:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000b46:	1bc9      	subs	r1, r1, r7
20000b48:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000b4c:	e799      	b.n	20000a82 <svpwm+0x82>
20000b4e:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000b52:	1bc9      	subs	r1, r1, r7
20000b54:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000b58:	e79d      	b.n	20000a96 <svpwm+0x96>
20000b5a:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000b5e:	1bc9      	subs	r1, r1, r7
20000b60:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000b64:	e7a1      	b.n	20000aaa <svpwm+0xaa>
20000b66:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000b6a:	1bc9      	subs	r1, r1, r7
20000b6c:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000b70:	e7a5      	b.n	20000abe <svpwm+0xbe>
20000b72:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
20000b76:	4e5e      	ldr	r6, [pc, #376]	; (20000cf0 <svpwm+0x2f0>)
20000b78:	3204      	adds	r2, #4
20000b7a:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000b7e:	3556      	adds	r5, #86	; 0x56
20000b80:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000b84:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000b88:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000b8c:	fb01 f103 	mul.w	r1, r1, r3
20000b90:	fb02 f203 	mul.w	r2, r2, r3
20000b94:	1289      	asrs	r1, r1, #10
20000b96:	1293      	asrs	r3, r2, #10
20000b98:	424a      	negs	r2, r1
20000b9a:	1ad2      	subs	r2, r2, r3
20000b9c:	1a5d      	subs	r5, r3, r1
20000b9e:	440b      	add	r3, r1
20000ba0:	6062      	str	r2, [r4, #4]
20000ba2:	6025      	str	r5, [r4, #0]
20000ba4:	60a3      	str	r3, [r4, #8]
20000ba6:	b011      	add	sp, #68	; 0x44
20000ba8:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000baa:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000bae:	4e50      	ldr	r6, [pc, #320]	; (20000cf0 <svpwm+0x2f0>)
20000bb0:	3202      	adds	r2, #2
20000bb2:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000bb6:	f505 7540 	add.w	r5, r5, #768	; 0x300
20000bba:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000bbe:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000bc2:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000bc6:	fb01 f103 	mul.w	r1, r1, r3
20000bca:	fb02 f203 	mul.w	r2, r2, r3
20000bce:	1289      	asrs	r1, r1, #10
20000bd0:	1293      	asrs	r3, r2, #10
20000bd2:	424a      	negs	r2, r1
20000bd4:	1ad2      	subs	r2, r2, r3
20000bd6:	18cd      	adds	r5, r1, r3
20000bd8:	1a5b      	subs	r3, r3, r1
20000bda:	60a2      	str	r2, [r4, #8]
20000bdc:	6025      	str	r5, [r4, #0]
20000bde:	6063      	str	r3, [r4, #4]
20000be0:	b011      	add	sp, #68	; 0x44
20000be2:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000be4:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20000be8:	4e41      	ldr	r6, [pc, #260]	; (20000cf0 <svpwm+0x2f0>)
20000bea:	3204      	adds	r2, #4
20000bec:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000bf0:	f205 2556 	addw	r5, r5, #598	; 0x256
20000bf4:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000bf8:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000bfc:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000c00:	fb01 f103 	mul.w	r1, r1, r3
20000c04:	fb02 f203 	mul.w	r2, r2, r3
20000c08:	1289      	asrs	r1, r1, #10
20000c0a:	1293      	asrs	r3, r2, #10
20000c0c:	424a      	negs	r2, r1
20000c0e:	1ad2      	subs	r2, r2, r3
20000c10:	1acd      	subs	r5, r1, r3
20000c12:	440b      	add	r3, r1
20000c14:	60a2      	str	r2, [r4, #8]
20000c16:	6025      	str	r5, [r4, #0]
20000c18:	6063      	str	r3, [r4, #4]
20000c1a:	b011      	add	sp, #68	; 0x44
20000c1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000c1e:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20000c22:	4e33      	ldr	r6, [pc, #204]	; (20000cf0 <svpwm+0x2f0>)
20000c24:	320f      	adds	r2, #15
20000c26:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000c2a:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20000c2e:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000c32:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c36:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000c3a:	fb01 f103 	mul.w	r1, r1, r3
20000c3e:	fb02 f203 	mul.w	r2, r2, r3
20000c42:	1289      	asrs	r1, r1, #10
20000c44:	1293      	asrs	r3, r2, #10
20000c46:	424a      	negs	r2, r1
20000c48:	1ad2      	subs	r2, r2, r3
20000c4a:	18cd      	adds	r5, r1, r3
20000c4c:	1a5b      	subs	r3, r3, r1
20000c4e:	e884 0024 	stmia.w	r4, {r2, r5}
20000c52:	60a3      	str	r3, [r4, #8]
20000c54:	b011      	add	sp, #68	; 0x44
20000c56:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000c58:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20000c5c:	4e24      	ldr	r6, [pc, #144]	; (20000cf0 <svpwm+0x2f0>)
20000c5e:	320a      	adds	r2, #10
20000c60:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000c64:	f505 7580 	add.w	r5, r5, #256	; 0x100
20000c68:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000c6c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c70:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000c74:	fb01 f103 	mul.w	r1, r1, r3
20000c78:	fb02 f203 	mul.w	r2, r2, r3
20000c7c:	1289      	asrs	r1, r1, #10
20000c7e:	1293      	asrs	r3, r2, #10
20000c80:	424a      	negs	r2, r1
20000c82:	1ad2      	subs	r2, r2, r3
20000c84:	1acd      	subs	r5, r1, r3
20000c86:	440b      	add	r3, r1
20000c88:	e884 0024 	stmia.w	r4, {r2, r5}
20000c8c:	60a3      	str	r3, [r4, #8]
20000c8e:	b011      	add	sp, #68	; 0x44
20000c90:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000c92:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000c96:	4916      	ldr	r1, [pc, #88]	; (20000cf0 <svpwm+0x2f0>)
20000c98:	320f      	adds	r2, #15
20000c9a:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000c9e:	3d55      	subs	r5, #85	; 0x55
20000ca0:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000ca4:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000ca8:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000cac:	fb02 f203 	mul.w	r2, r2, r3
20000cb0:	fb01 f303 	mul.w	r3, r1, r3
20000cb4:	1292      	asrs	r2, r2, #10
20000cb6:	129b      	asrs	r3, r3, #10
20000cb8:	4251      	negs	r1, r2
20000cba:	18d5      	adds	r5, r2, r3
20000cbc:	1ac9      	subs	r1, r1, r3
20000cbe:	1ad2      	subs	r2, r2, r3
20000cc0:	6061      	str	r1, [r4, #4]
20000cc2:	6025      	str	r5, [r4, #0]
20000cc4:	60a2      	str	r2, [r4, #8]
20000cc6:	b011      	add	sp, #68	; 0x44
20000cc8:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000cca:	461a      	mov	r2, r3
20000ccc:	e703      	b.n	20000ad6 <svpwm+0xd6>
20000cce:	4610      	mov	r0, r2
20000cd0:	2201      	movs	r2, #1
20000cd2:	e700      	b.n	20000ad6 <svpwm+0xd6>
20000cd4:	2202      	movs	r2, #2
20000cd6:	e6fe      	b.n	20000ad6 <svpwm+0xd6>
20000cd8:	4610      	mov	r0, r2
20000cda:	2203      	movs	r2, #3
20000cdc:	e6fb      	b.n	20000ad6 <svpwm+0xd6>
20000cde:	2204      	movs	r2, #4
20000ce0:	e6f9      	b.n	20000ad6 <svpwm+0xd6>
20000ce2:	4610      	mov	r0, r2
20000ce4:	2205      	movs	r2, #5
20000ce6:	e6f6      	b.n	20000ad6 <svpwm+0xd6>
20000ce8:	2206      	movs	r2, #6
20000cea:	e6f4      	b.n	20000ad6 <svpwm+0xd6>
20000cec:	200014ec 	.word	0x200014ec
20000cf0:	2000152c 	.word	0x2000152c

20000cf4 <get_speed>:
20000cf4:	4a0e      	ldr	r2, [pc, #56]	; (20000d30 <get_speed+0x3c>)
20000cf6:	b430      	push	{r4, r5}
20000cf8:	e892 0028 	ldmia.w	r2, {r3, r5}
20000cfc:	1ac3      	subs	r3, r0, r3
20000cfe:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20000d02:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
20000d06:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
20000d0a:	6015      	str	r5, [r2, #0]
20000d0c:	6050      	str	r0, [r2, #4]
20000d0e:	dd05      	ble.n	20000d1c <get_speed+0x28>
20000d10:	2b00      	cmp	r3, #0
20000d12:	bfb4      	ite	lt
20000d14:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
20000d18:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20000d1c:	4a05      	ldr	r2, [pc, #20]	; (20000d34 <get_speed+0x40>)
20000d1e:	1058      	asrs	r0, r3, #1
20000d20:	fb02 f000 	mul.w	r0, r2, r0
20000d24:	bc30      	pop	{r4, r5}
20000d26:	680a      	ldr	r2, [r1, #0]
20000d28:	1300      	asrs	r0, r0, #12
20000d2a:	4413      	add	r3, r2
20000d2c:	600b      	str	r3, [r1, #0]
20000d2e:	4770      	bx	lr
20000d30:	20002620 	.word	0x20002620
20000d34:	0002ae7c 	.word	0x0002ae7c

20000d38 <mfilter>:
20000d38:	4908      	ldr	r1, [pc, #32]	; (20000d5c <mfilter+0x24>)
20000d3a:	b430      	push	{r4, r5}
20000d3c:	688a      	ldr	r2, [r1, #8]
20000d3e:	68cb      	ldr	r3, [r1, #12]
20000d40:	3201      	adds	r2, #1
20000d42:	f002 021f 	and.w	r2, r2, #31
20000d46:	eb01 0482 	add.w	r4, r1, r2, lsl #2
20000d4a:	6925      	ldr	r5, [r4, #16]
20000d4c:	608a      	str	r2, [r1, #8]
20000d4e:	1b5b      	subs	r3, r3, r5
20000d50:	4403      	add	r3, r0
20000d52:	6120      	str	r0, [r4, #16]
20000d54:	60cb      	str	r3, [r1, #12]
20000d56:	1158      	asrs	r0, r3, #5
20000d58:	bc30      	pop	{r4, r5}
20000d5a:	4770      	bx	lr
20000d5c:	20002620 	.word	0x20002620

20000d60 <rfilter1>:
20000d60:	b470      	push	{r4, r5, r6}
20000d62:	f240 74c6 	movw	r4, #1990	; 0x7c6
20000d66:	4b12      	ldr	r3, [pc, #72]	; (20000db0 <rfilter1+0x50>)
20000d68:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20000d6c:	f8d3 6090 	ldr.w	r6, [r3, #144]	; 0x90
20000d70:	f8d3 1098 	ldr.w	r1, [r3, #152]	; 0x98
20000d74:	fb04 f406 	mul.w	r4, r4, r6
20000d78:	fb02 4201 	mla	r2, r2, r1, r4
20000d7c:	490d      	ldr	r1, [pc, #52]	; (20000db4 <rfilter1+0x54>)
20000d7e:	f8d3 5094 	ldr.w	r5, [r3, #148]	; 0x94
20000d82:	fb01 2200 	mla	r2, r1, r0, r2
20000d86:	4c0c      	ldr	r4, [pc, #48]	; (20000db8 <rfilter1+0x58>)
20000d88:	f8d3 109c 	ldr.w	r1, [r3, #156]	; 0x9c
20000d8c:	fb04 2205 	mla	r2, r4, r5, r2
20000d90:	4c0a      	ldr	r4, [pc, #40]	; (20000dbc <rfilter1+0x5c>)
20000d92:	f8c3 6098 	str.w	r6, [r3, #152]	; 0x98
20000d96:	fb04 2201 	mla	r2, r4, r1, r2
20000d9a:	1291      	asrs	r1, r2, #10
20000d9c:	f8c3 0094 	str.w	r0, [r3, #148]	; 0x94
20000da0:	f8c3 509c 	str.w	r5, [r3, #156]	; 0x9c
20000da4:	1490      	asrs	r0, r2, #18
20000da6:	f8c3 1090 	str.w	r1, [r3, #144]	; 0x90
20000daa:	bc70      	pop	{r4, r5, r6}
20000dac:	4770      	bx	lr
20000dae:	bf00      	nop
20000db0:	20002620 	.word	0x20002620
20000db4:	0003f0a4 	.word	0x0003f0a4
20000db8:	fff83a2e 	.word	0xfff83a2e
20000dbc:	0003dc29 	.word	0x0003dc29

20000dc0 <rfilter2>:
20000dc0:	b470      	push	{r4, r5, r6}
20000dc2:	f240 748a 	movw	r4, #1930	; 0x78a
20000dc6:	4b11      	ldr	r3, [pc, #68]	; (20000e0c <rfilter2+0x4c>)
20000dc8:	4a11      	ldr	r2, [pc, #68]	; (20000e10 <rfilter2+0x50>)
20000dca:	f8d3 60a0 	ldr.w	r6, [r3, #160]	; 0xa0
20000dce:	f8d3 10a8 	ldr.w	r1, [r3, #168]	; 0xa8
20000dd2:	fb04 f406 	mul.w	r4, r4, r6
20000dd6:	fb02 4201 	mla	r2, r2, r1, r4
20000dda:	490e      	ldr	r1, [pc, #56]	; (20000e14 <rfilter2+0x54>)
20000ddc:	f8d3 50a4 	ldr.w	r5, [r3, #164]	; 0xa4
20000de0:	fb01 2200 	mla	r2, r1, r0, r2
20000de4:	4c0c      	ldr	r4, [pc, #48]	; (20000e18 <rfilter2+0x58>)
20000de6:	f8d3 10ac 	ldr.w	r1, [r3, #172]	; 0xac
20000dea:	fb04 2205 	mla	r2, r4, r5, r2
20000dee:	4c0b      	ldr	r4, [pc, #44]	; (20000e1c <rfilter2+0x5c>)
20000df0:	f8c3 60a8 	str.w	r6, [r3, #168]	; 0xa8
20000df4:	fb04 2201 	mla	r2, r4, r1, r2
20000df8:	1291      	asrs	r1, r2, #10
20000dfa:	f8c3 00a4 	str.w	r0, [r3, #164]	; 0xa4
20000dfe:	f8c3 50ac 	str.w	r5, [r3, #172]	; 0xac
20000e02:	1490      	asrs	r0, r2, #18
20000e04:	f8c3 10a0 	str.w	r1, [r3, #160]	; 0xa0
20000e08:	bc70      	pop	{r4, r5, r6}
20000e0a:	4770      	bx	lr
20000e0c:	20002620 	.word	0x20002620
20000e10:	fffffc66 	.word	0xfffffc66
20000e14:	0003e3d7 	.word	0x0003e3d7
20000e18:	fff8767b 	.word	0xfff8767b
20000e1c:	0003b5c3 	.word	0x0003b5c3

20000e20 <adc_init>:
20000e20:	b480      	push	{r7}
20000e22:	af00      	add	r7, sp, #0
20000e24:	4a10      	ldr	r2, [pc, #64]	; (20000e68 <adc_init+0x48>)
20000e26:	4b10      	ldr	r3, [pc, #64]	; (20000e68 <adc_init+0x48>)
20000e28:	69db      	ldr	r3, [r3, #28]
20000e2a:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000e2e:	61d3      	str	r3, [r2, #28]
20000e30:	4b0d      	ldr	r3, [pc, #52]	; (20000e68 <adc_init+0x48>)
20000e32:	f242 0220 	movw	r2, #8224	; 0x2020
20000e36:	615a      	str	r2, [r3, #20]
20000e38:	4b0c      	ldr	r3, [pc, #48]	; (20000e6c <adc_init+0x4c>)
20000e3a:	2200      	movs	r2, #0
20000e3c:	601a      	str	r2, [r3, #0]
20000e3e:	4a0b      	ldr	r2, [pc, #44]	; (20000e6c <adc_init+0x4c>)
20000e40:	4b0a      	ldr	r3, [pc, #40]	; (20000e6c <adc_init+0x4c>)
20000e42:	681b      	ldr	r3, [r3, #0]
20000e44:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20000e48:	f043 0301 	orr.w	r3, r3, #1
20000e4c:	6013      	str	r3, [r2, #0]
20000e4e:	4a07      	ldr	r2, [pc, #28]	; (20000e6c <adc_init+0x4c>)
20000e50:	4b06      	ldr	r3, [pc, #24]	; (20000e6c <adc_init+0x4c>)
20000e52:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20000e54:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
20000e58:	6293      	str	r3, [r2, #40]	; 0x28
20000e5a:	4b04      	ldr	r3, [pc, #16]	; (20000e6c <adc_init+0x4c>)
20000e5c:	2210      	movs	r2, #16
20000e5e:	621a      	str	r2, [r3, #32]
20000e60:	bf00      	nop
20000e62:	46bd      	mov	sp, r7
20000e64:	bc80      	pop	{r7}
20000e66:	4770      	bx	lr
20000e68:	40020000 	.word	0x40020000
20000e6c:	40088000 	.word	0x40088000

20000e70 <dma_init>:
20000e70:	b480      	push	{r7}
20000e72:	af00      	add	r7, sp, #0
20000e74:	4a17      	ldr	r2, [pc, #92]	; (20000ed4 <dma_init+0x64>)
20000e76:	4b17      	ldr	r3, [pc, #92]	; (20000ed4 <dma_init+0x64>)
20000e78:	69db      	ldr	r3, [r3, #28]
20000e7a:	f043 0320 	orr.w	r3, r3, #32
20000e7e:	61d3      	str	r3, [r2, #28]
20000e80:	4b15      	ldr	r3, [pc, #84]	; (20000ed8 <dma_init+0x68>)
20000e82:	4a16      	ldr	r2, [pc, #88]	; (20000edc <dma_init+0x6c>)
20000e84:	609a      	str	r2, [r3, #8]
20000e86:	4b14      	ldr	r3, [pc, #80]	; (20000ed8 <dma_init+0x68>)
20000e88:	f04f 32ff 	mov.w	r2, #4294967295
20000e8c:	62da      	str	r2, [r3, #44]	; 0x2c
20000e8e:	4b12      	ldr	r3, [pc, #72]	; (20000ed8 <dma_init+0x68>)
20000e90:	f04f 32ff 	mov.w	r2, #4294967295
20000e94:	621a      	str	r2, [r3, #32]
20000e96:	4b10      	ldr	r3, [pc, #64]	; (20000ed8 <dma_init+0x68>)
20000e98:	f04f 32ff 	mov.w	r2, #4294967295
20000e9c:	635a      	str	r2, [r3, #52]	; 0x34
20000e9e:	4b0e      	ldr	r3, [pc, #56]	; (20000ed8 <dma_init+0x68>)
20000ea0:	f44f 7280 	mov.w	r2, #256	; 0x100
20000ea4:	61da      	str	r2, [r3, #28]
20000ea6:	4b0c      	ldr	r3, [pc, #48]	; (20000ed8 <dma_init+0x68>)
20000ea8:	f44f 7280 	mov.w	r2, #256	; 0x100
20000eac:	625a      	str	r2, [r3, #36]	; 0x24
20000eae:	4b0a      	ldr	r3, [pc, #40]	; (20000ed8 <dma_init+0x68>)
20000eb0:	2201      	movs	r2, #1
20000eb2:	605a      	str	r2, [r3, #4]
20000eb4:	4b09      	ldr	r3, [pc, #36]	; (20000edc <dma_init+0x6c>)
20000eb6:	4a0a      	ldr	r2, [pc, #40]	; (20000ee0 <dma_init+0x70>)
20000eb8:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20000ebc:	4a09      	ldr	r2, [pc, #36]	; (20000ee4 <dma_init+0x74>)
20000ebe:	4b07      	ldr	r3, [pc, #28]	; (20000edc <dma_init+0x6c>)
20000ec0:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20000ec4:	4b05      	ldr	r3, [pc, #20]	; (20000edc <dma_init+0x6c>)
20000ec6:	4a08      	ldr	r2, [pc, #32]	; (20000ee8 <dma_init+0x78>)
20000ec8:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000ecc:	bf00      	nop
20000ece:	46bd      	mov	sp, r7
20000ed0:	bc80      	pop	{r7}
20000ed2:	4770      	bx	lr
20000ed4:	40020000 	.word	0x40020000
20000ed8:	40028000 	.word	0x40028000
20000edc:	20002c00 	.word	0x20002c00
20000ee0:	40088018 	.word	0x40088018
20000ee4:	20002e04 	.word	0x20002e04
20000ee8:	ae000011 	.word	0xae000011

20000eec <adc_dma_init>:
20000eec:	b580      	push	{r7, lr}
20000eee:	af00      	add	r7, sp, #0
20000ef0:	f7ff ff96 	bl	20000e20 <adc_init>
20000ef4:	f7ff ffbc 	bl	20000e70 <dma_init>
20000ef8:	bf00      	nop
20000efa:	bd80      	pop	{r7, pc}

20000efc <adc_dma_start>:
20000efc:	b480      	push	{r7}
20000efe:	af00      	add	r7, sp, #0
20000f00:	4a06      	ldr	r2, [pc, #24]	; (20000f1c <adc_dma_start+0x20>)
20000f02:	4b06      	ldr	r3, [pc, #24]	; (20000f1c <adc_dma_start+0x20>)
20000f04:	681b      	ldr	r3, [r3, #0]
20000f06:	f043 0308 	orr.w	r3, r3, #8
20000f0a:	6013      	str	r3, [r2, #0]
20000f0c:	4b04      	ldr	r3, [pc, #16]	; (20000f20 <adc_dma_start+0x24>)
20000f0e:	f44f 7280 	mov.w	r2, #256	; 0x100
20000f12:	629a      	str	r2, [r3, #40]	; 0x28
20000f14:	bf00      	nop
20000f16:	46bd      	mov	sp, r7
20000f18:	bc80      	pop	{r7}
20000f1a:	4770      	bx	lr
20000f1c:	40088000 	.word	0x40088000
20000f20:	40028000 	.word	0x40028000

20000f24 <adc_dma_wait>:
20000f24:	b480      	push	{r7}
20000f26:	af00      	add	r7, sp, #0
20000f28:	bf00      	nop
20000f2a:	4b0a      	ldr	r3, [pc, #40]	; (20000f54 <adc_dma_wait+0x30>)
20000f2c:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20000f30:	f003 0307 	and.w	r3, r3, #7
20000f34:	2b00      	cmp	r3, #0
20000f36:	d1f8      	bne.n	20000f2a <adc_dma_wait+0x6>
20000f38:	4a07      	ldr	r2, [pc, #28]	; (20000f58 <adc_dma_wait+0x34>)
20000f3a:	4b07      	ldr	r3, [pc, #28]	; (20000f58 <adc_dma_wait+0x34>)
20000f3c:	681b      	ldr	r3, [r3, #0]
20000f3e:	f023 0308 	bic.w	r3, r3, #8
20000f42:	6013      	str	r3, [r2, #0]
20000f44:	4b03      	ldr	r3, [pc, #12]	; (20000f54 <adc_dma_wait+0x30>)
20000f46:	4a05      	ldr	r2, [pc, #20]	; (20000f5c <adc_dma_wait+0x38>)
20000f48:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000f4c:	bf00      	nop
20000f4e:	46bd      	mov	sp, r7
20000f50:	bc80      	pop	{r7}
20000f52:	4770      	bx	lr
20000f54:	20002c00 	.word	0x20002c00
20000f58:	40088000 	.word	0x40088000
20000f5c:	ae000011 	.word	0xae000011

20000f60 <NVIC_EnableIRQ>:
20000f60:	b480      	push	{r7}
20000f62:	b083      	sub	sp, #12
20000f64:	af00      	add	r7, sp, #0
20000f66:	4603      	mov	r3, r0
20000f68:	71fb      	strb	r3, [r7, #7]
20000f6a:	4908      	ldr	r1, [pc, #32]	; (20000f8c <NVIC_EnableIRQ+0x2c>)
20000f6c:	f997 3007 	ldrsb.w	r3, [r7, #7]
20000f70:	095b      	lsrs	r3, r3, #5
20000f72:	79fa      	ldrb	r2, [r7, #7]
20000f74:	f002 021f 	and.w	r2, r2, #31
20000f78:	2001      	movs	r0, #1
20000f7a:	fa00 f202 	lsl.w	r2, r0, r2
20000f7e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20000f82:	bf00      	nop
20000f84:	370c      	adds	r7, #12
20000f86:	46bd      	mov	sp, r7
20000f88:	bc80      	pop	{r7}
20000f8a:	4770      	bx	lr
20000f8c:	e000e100 	.word	0xe000e100

20000f90 <PortConfig>:
20000f90:	b480      	push	{r7}
20000f92:	af00      	add	r7, sp, #0
20000f94:	4a5b      	ldr	r2, [pc, #364]	; (20001104 <PortConfig+0x174>)
20000f96:	4b5b      	ldr	r3, [pc, #364]	; (20001104 <PortConfig+0x174>)
20000f98:	69db      	ldr	r3, [r3, #28]
20000f9a:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
20000f9e:	61d3      	str	r3, [r2, #28]
20000fa0:	4b59      	ldr	r3, [pc, #356]	; (20001108 <PortConfig+0x178>)
20000fa2:	2200      	movs	r2, #0
20000fa4:	609a      	str	r2, [r3, #8]
20000fa6:	4b58      	ldr	r3, [pc, #352]	; (20001108 <PortConfig+0x178>)
20000fa8:	2200      	movs	r2, #0
20000faa:	601a      	str	r2, [r3, #0]
20000fac:	4b56      	ldr	r3, [pc, #344]	; (20001108 <PortConfig+0x178>)
20000fae:	22ff      	movs	r2, #255	; 0xff
20000fb0:	605a      	str	r2, [r3, #4]
20000fb2:	4b55      	ldr	r3, [pc, #340]	; (20001108 <PortConfig+0x178>)
20000fb4:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000fb8:	60da      	str	r2, [r3, #12]
20000fba:	4b53      	ldr	r3, [pc, #332]	; (20001108 <PortConfig+0x178>)
20000fbc:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000fc0:	619a      	str	r2, [r3, #24]
20000fc2:	4a50      	ldr	r2, [pc, #320]	; (20001104 <PortConfig+0x174>)
20000fc4:	4b4f      	ldr	r3, [pc, #316]	; (20001104 <PortConfig+0x174>)
20000fc6:	69db      	ldr	r3, [r3, #28]
20000fc8:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20000fcc:	61d3      	str	r3, [r2, #28]
20000fce:	4a4f      	ldr	r2, [pc, #316]	; (2000110c <PortConfig+0x17c>)
20000fd0:	4b4e      	ldr	r3, [pc, #312]	; (2000110c <PortConfig+0x17c>)
20000fd2:	689b      	ldr	r3, [r3, #8]
20000fd4:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20000fd8:	6093      	str	r3, [r2, #8]
20000fda:	4a4c      	ldr	r2, [pc, #304]	; (2000110c <PortConfig+0x17c>)
20000fdc:	4b4b      	ldr	r3, [pc, #300]	; (2000110c <PortConfig+0x17c>)
20000fde:	689b      	ldr	r3, [r3, #8]
20000fe0:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
20000fe4:	6093      	str	r3, [r2, #8]
20000fe6:	4a49      	ldr	r2, [pc, #292]	; (2000110c <PortConfig+0x17c>)
20000fe8:	4b48      	ldr	r3, [pc, #288]	; (2000110c <PortConfig+0x17c>)
20000fea:	68db      	ldr	r3, [r3, #12]
20000fec:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
20000ff0:	60d3      	str	r3, [r2, #12]
20000ff2:	4a46      	ldr	r2, [pc, #280]	; (2000110c <PortConfig+0x17c>)
20000ff4:	4b45      	ldr	r3, [pc, #276]	; (2000110c <PortConfig+0x17c>)
20000ff6:	699b      	ldr	r3, [r3, #24]
20000ff8:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
20000ffc:	6193      	str	r3, [r2, #24]
20000ffe:	4a43      	ldr	r2, [pc, #268]	; (2000110c <PortConfig+0x17c>)
20001000:	4b42      	ldr	r3, [pc, #264]	; (2000110c <PortConfig+0x17c>)
20001002:	685b      	ldr	r3, [r3, #4]
20001004:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20001008:	6053      	str	r3, [r2, #4]
2000100a:	4a40      	ldr	r2, [pc, #256]	; (2000110c <PortConfig+0x17c>)
2000100c:	4b3f      	ldr	r3, [pc, #252]	; (2000110c <PortConfig+0x17c>)
2000100e:	685b      	ldr	r3, [r3, #4]
20001010:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20001014:	6053      	str	r3, [r2, #4]
20001016:	4a3d      	ldr	r2, [pc, #244]	; (2000110c <PortConfig+0x17c>)
20001018:	4b3c      	ldr	r3, [pc, #240]	; (2000110c <PortConfig+0x17c>)
2000101a:	689b      	ldr	r3, [r3, #8]
2000101c:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
20001020:	6093      	str	r3, [r2, #8]
20001022:	4a3a      	ldr	r2, [pc, #232]	; (2000110c <PortConfig+0x17c>)
20001024:	4b39      	ldr	r3, [pc, #228]	; (2000110c <PortConfig+0x17c>)
20001026:	689b      	ldr	r3, [r3, #8]
20001028:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
2000102c:	6093      	str	r3, [r2, #8]
2000102e:	4a37      	ldr	r2, [pc, #220]	; (2000110c <PortConfig+0x17c>)
20001030:	4b36      	ldr	r3, [pc, #216]	; (2000110c <PortConfig+0x17c>)
20001032:	68db      	ldr	r3, [r3, #12]
20001034:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001038:	60d3      	str	r3, [r2, #12]
2000103a:	4a34      	ldr	r2, [pc, #208]	; (2000110c <PortConfig+0x17c>)
2000103c:	4b33      	ldr	r3, [pc, #204]	; (2000110c <PortConfig+0x17c>)
2000103e:	699b      	ldr	r3, [r3, #24]
20001040:	f443 5370 	orr.w	r3, r3, #15360	; 0x3c00
20001044:	6193      	str	r3, [r2, #24]
20001046:	4a2f      	ldr	r2, [pc, #188]	; (20001104 <PortConfig+0x174>)
20001048:	4b2e      	ldr	r3, [pc, #184]	; (20001104 <PortConfig+0x174>)
2000104a:	69db      	ldr	r3, [r3, #28]
2000104c:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
20001050:	61d3      	str	r3, [r2, #28]
20001052:	4b2f      	ldr	r3, [pc, #188]	; (20001110 <PortConfig+0x180>)
20001054:	4a2f      	ldr	r2, [pc, #188]	; (20001114 <PortConfig+0x184>)
20001056:	609a      	str	r2, [r3, #8]
20001058:	4b2d      	ldr	r3, [pc, #180]	; (20001110 <PortConfig+0x180>)
2000105a:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000105e:	60da      	str	r2, [r3, #12]
20001060:	4b2b      	ldr	r3, [pc, #172]	; (20001110 <PortConfig+0x180>)
20001062:	f04f 32ff 	mov.w	r2, #4294967295
20001066:	619a      	str	r2, [r3, #24]
20001068:	4b29      	ldr	r3, [pc, #164]	; (20001110 <PortConfig+0x180>)
2000106a:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000106e:	605a      	str	r2, [r3, #4]
20001070:	4a27      	ldr	r2, [pc, #156]	; (20001110 <PortConfig+0x180>)
20001072:	4b27      	ldr	r3, [pc, #156]	; (20001110 <PortConfig+0x180>)
20001074:	681b      	ldr	r3, [r3, #0]
20001076:	f023 0303 	bic.w	r3, r3, #3
2000107a:	6013      	str	r3, [r2, #0]
2000107c:	4a24      	ldr	r2, [pc, #144]	; (20001110 <PortConfig+0x180>)
2000107e:	4b24      	ldr	r3, [pc, #144]	; (20001110 <PortConfig+0x180>)
20001080:	681b      	ldr	r3, [r3, #0]
20001082:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001086:	6013      	str	r3, [r2, #0]
20001088:	4a1e      	ldr	r2, [pc, #120]	; (20001104 <PortConfig+0x174>)
2000108a:	4b1e      	ldr	r3, [pc, #120]	; (20001104 <PortConfig+0x174>)
2000108c:	69db      	ldr	r3, [r3, #28]
2000108e:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
20001092:	61d3      	str	r3, [r2, #28]
20001094:	4b20      	ldr	r3, [pc, #128]	; (20001118 <PortConfig+0x188>)
20001096:	2200      	movs	r2, #0
20001098:	609a      	str	r2, [r3, #8]
2000109a:	4a1f      	ldr	r2, [pc, #124]	; (20001118 <PortConfig+0x188>)
2000109c:	4b1e      	ldr	r3, [pc, #120]	; (20001118 <PortConfig+0x188>)
2000109e:	685b      	ldr	r3, [r3, #4]
200010a0:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200010a4:	6053      	str	r3, [r2, #4]
200010a6:	4a1c      	ldr	r2, [pc, #112]	; (20001118 <PortConfig+0x188>)
200010a8:	4b1b      	ldr	r3, [pc, #108]	; (20001118 <PortConfig+0x188>)
200010aa:	68db      	ldr	r3, [r3, #12]
200010ac:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200010b0:	60d3      	str	r3, [r2, #12]
200010b2:	4b19      	ldr	r3, [pc, #100]	; (20001118 <PortConfig+0x188>)
200010b4:	f04f 32ff 	mov.w	r2, #4294967295
200010b8:	619a      	str	r2, [r3, #24]
200010ba:	4a17      	ldr	r2, [pc, #92]	; (20001118 <PortConfig+0x188>)
200010bc:	4b16      	ldr	r3, [pc, #88]	; (20001118 <PortConfig+0x188>)
200010be:	681b      	ldr	r3, [r3, #0]
200010c0:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200010c4:	6013      	str	r3, [r2, #0]
200010c6:	4a0f      	ldr	r2, [pc, #60]	; (20001104 <PortConfig+0x174>)
200010c8:	4b0e      	ldr	r3, [pc, #56]	; (20001104 <PortConfig+0x174>)
200010ca:	69db      	ldr	r3, [r3, #28]
200010cc:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
200010d0:	61d3      	str	r3, [r2, #28]
200010d2:	4a12      	ldr	r2, [pc, #72]	; (2000111c <PortConfig+0x18c>)
200010d4:	4b11      	ldr	r3, [pc, #68]	; (2000111c <PortConfig+0x18c>)
200010d6:	68db      	ldr	r3, [r3, #12]
200010d8:	f423 7300 	bic.w	r3, r3, #512	; 0x200
200010dc:	f023 0301 	bic.w	r3, r3, #1
200010e0:	60d3      	str	r3, [r2, #12]
200010e2:	4a08      	ldr	r2, [pc, #32]	; (20001104 <PortConfig+0x174>)
200010e4:	4b07      	ldr	r3, [pc, #28]	; (20001104 <PortConfig+0x174>)
200010e6:	69db      	ldr	r3, [r3, #28]
200010e8:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
200010ec:	61d3      	str	r3, [r2, #28]
200010ee:	4a0c      	ldr	r2, [pc, #48]	; (20001120 <PortConfig+0x190>)
200010f0:	4b0b      	ldr	r3, [pc, #44]	; (20001120 <PortConfig+0x190>)
200010f2:	68db      	ldr	r3, [r3, #12]
200010f4:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
200010f8:	60d3      	str	r3, [r2, #12]
200010fa:	bf00      	nop
200010fc:	46bd      	mov	sp, r7
200010fe:	bc80      	pop	{r7}
20001100:	4770      	bx	lr
20001102:	bf00      	nop
20001104:	40020000 	.word	0x40020000
20001108:	400a8000 	.word	0x400a8000
2000110c:	400b0000 	.word	0x400b0000
20001110:	400b8000 	.word	0x400b8000
20001114:	000aaaa0 	.word	0x000aaaa0
20001118:	400e8000 	.word	0x400e8000
2000111c:	400c8000 	.word	0x400c8000
20001120:	400c0000 	.word	0x400c0000

20001124 <ClkConfig>:
20001124:	b480      	push	{r7}
20001126:	af00      	add	r7, sp, #0
20001128:	4a16      	ldr	r2, [pc, #88]	; (20001184 <ClkConfig+0x60>)
2000112a:	4b16      	ldr	r3, [pc, #88]	; (20001184 <ClkConfig+0x60>)
2000112c:	689b      	ldr	r3, [r3, #8]
2000112e:	f043 0301 	orr.w	r3, r3, #1
20001132:	6093      	str	r3, [r2, #8]
20001134:	bf00      	nop
20001136:	4b13      	ldr	r3, [pc, #76]	; (20001184 <ClkConfig+0x60>)
20001138:	681b      	ldr	r3, [r3, #0]
2000113a:	f003 0304 	and.w	r3, r3, #4
2000113e:	2b00      	cmp	r3, #0
20001140:	d0f9      	beq.n	20001136 <ClkConfig+0x12>
20001142:	4b10      	ldr	r3, [pc, #64]	; (20001184 <ClkConfig+0x60>)
20001144:	2206      	movs	r2, #6
20001146:	60da      	str	r2, [r3, #12]
20001148:	4b0e      	ldr	r3, [pc, #56]	; (20001184 <ClkConfig+0x60>)
2000114a:	f640 1204 	movw	r2, #2308	; 0x904
2000114e:	605a      	str	r2, [r3, #4]
20001150:	bf00      	nop
20001152:	4b0c      	ldr	r3, [pc, #48]	; (20001184 <ClkConfig+0x60>)
20001154:	681b      	ldr	r3, [r3, #0]
20001156:	f003 0302 	and.w	r3, r3, #2
2000115a:	2b00      	cmp	r3, #0
2000115c:	d0f9      	beq.n	20001152 <ClkConfig+0x2e>
2000115e:	4a09      	ldr	r2, [pc, #36]	; (20001184 <ClkConfig+0x60>)
20001160:	4b08      	ldr	r3, [pc, #32]	; (20001184 <ClkConfig+0x60>)
20001162:	68db      	ldr	r3, [r3, #12]
20001164:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001168:	60d3      	str	r3, [r2, #12]
2000116a:	4a07      	ldr	r2, [pc, #28]	; (20001188 <ClkConfig+0x64>)
2000116c:	4b06      	ldr	r3, [pc, #24]	; (20001188 <ClkConfig+0x64>)
2000116e:	681b      	ldr	r3, [r3, #0]
20001170:	f043 0320 	orr.w	r3, r3, #32
20001174:	6013      	str	r3, [r2, #0]
20001176:	4b05      	ldr	r3, [pc, #20]	; (2000118c <ClkConfig+0x68>)
20001178:	2200      	movs	r2, #0
2000117a:	601a      	str	r2, [r3, #0]
2000117c:	bf00      	nop
2000117e:	46bd      	mov	sp, r7
20001180:	bc80      	pop	{r7}
20001182:	4770      	bx	lr
20001184:	40020000 	.word	0x40020000
20001188:	40018000 	.word	0x40018000
2000118c:	20002700 	.word	0x20002700

20001190 <TimerConfig>:
20001190:	b580      	push	{r7, lr}
20001192:	af00      	add	r7, sp, #0
20001194:	4a74      	ldr	r2, [pc, #464]	; (20001368 <TimerConfig+0x1d8>)
20001196:	4b74      	ldr	r3, [pc, #464]	; (20001368 <TimerConfig+0x1d8>)
20001198:	69db      	ldr	r3, [r3, #28]
2000119a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
2000119e:	61d3      	str	r3, [r2, #28]
200011a0:	4a71      	ldr	r2, [pc, #452]	; (20001368 <TimerConfig+0x1d8>)
200011a2:	4b71      	ldr	r3, [pc, #452]	; (20001368 <TimerConfig+0x1d8>)
200011a4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200011a6:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
200011aa:	6253      	str	r3, [r2, #36]	; 0x24
200011ac:	4a6e      	ldr	r2, [pc, #440]	; (20001368 <TimerConfig+0x1d8>)
200011ae:	4b6e      	ldr	r3, [pc, #440]	; (20001368 <TimerConfig+0x1d8>)
200011b0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200011b2:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
200011b6:	6253      	str	r3, [r2, #36]	; 0x24
200011b8:	4b6c      	ldr	r3, [pc, #432]	; (2000136c <TimerConfig+0x1dc>)
200011ba:	2200      	movs	r2, #0
200011bc:	601a      	str	r2, [r3, #0]
200011be:	4b6b      	ldr	r3, [pc, #428]	; (2000136c <TimerConfig+0x1dc>)
200011c0:	2202      	movs	r2, #2
200011c2:	605a      	str	r2, [r3, #4]
200011c4:	4b69      	ldr	r3, [pc, #420]	; (2000136c <TimerConfig+0x1dc>)
200011c6:	f240 32ff 	movw	r2, #1023	; 0x3ff
200011ca:	609a      	str	r2, [r3, #8]
200011cc:	4b67      	ldr	r3, [pc, #412]	; (2000136c <TimerConfig+0x1dc>)
200011ce:	f44f 7200 	mov.w	r2, #512	; 0x200
200011d2:	611a      	str	r2, [r3, #16]
200011d4:	4b65      	ldr	r3, [pc, #404]	; (2000136c <TimerConfig+0x1dc>)
200011d6:	f44f 7200 	mov.w	r2, #512	; 0x200
200011da:	615a      	str	r2, [r3, #20]
200011dc:	4b63      	ldr	r3, [pc, #396]	; (2000136c <TimerConfig+0x1dc>)
200011de:	f44f 7200 	mov.w	r2, #512	; 0x200
200011e2:	619a      	str	r2, [r3, #24]
200011e4:	4a61      	ldr	r2, [pc, #388]	; (2000136c <TimerConfig+0x1dc>)
200011e6:	4b61      	ldr	r3, [pc, #388]	; (2000136c <TimerConfig+0x1dc>)
200011e8:	6a1b      	ldr	r3, [r3, #32]
200011ea:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200011ee:	6213      	str	r3, [r2, #32]
200011f0:	4a5e      	ldr	r2, [pc, #376]	; (2000136c <TimerConfig+0x1dc>)
200011f2:	4b5e      	ldr	r3, [pc, #376]	; (2000136c <TimerConfig+0x1dc>)
200011f4:	6a1b      	ldr	r3, [r3, #32]
200011f6:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200011fa:	6213      	str	r3, [r2, #32]
200011fc:	4a5b      	ldr	r2, [pc, #364]	; (2000136c <TimerConfig+0x1dc>)
200011fe:	4b5b      	ldr	r3, [pc, #364]	; (2000136c <TimerConfig+0x1dc>)
20001200:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001202:	f023 030f 	bic.w	r3, r3, #15
20001206:	6313      	str	r3, [r2, #48]	; 0x30
20001208:	4a58      	ldr	r2, [pc, #352]	; (2000136c <TimerConfig+0x1dc>)
2000120a:	4b58      	ldr	r3, [pc, #352]	; (2000136c <TimerConfig+0x1dc>)
2000120c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000120e:	f043 030c 	orr.w	r3, r3, #12
20001212:	6313      	str	r3, [r2, #48]	; 0x30
20001214:	4a55      	ldr	r2, [pc, #340]	; (2000136c <TimerConfig+0x1dc>)
20001216:	4b55      	ldr	r3, [pc, #340]	; (2000136c <TimerConfig+0x1dc>)
20001218:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000121a:	f043 0301 	orr.w	r3, r3, #1
2000121e:	6313      	str	r3, [r2, #48]	; 0x30
20001220:	4a52      	ldr	r2, [pc, #328]	; (2000136c <TimerConfig+0x1dc>)
20001222:	4b52      	ldr	r3, [pc, #328]	; (2000136c <TimerConfig+0x1dc>)
20001224:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001226:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
2000122a:	6313      	str	r3, [r2, #48]	; 0x30
2000122c:	4a4f      	ldr	r2, [pc, #316]	; (2000136c <TimerConfig+0x1dc>)
2000122e:	4b4f      	ldr	r3, [pc, #316]	; (2000136c <TimerConfig+0x1dc>)
20001230:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001232:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001236:	6313      	str	r3, [r2, #48]	; 0x30
20001238:	4a4c      	ldr	r2, [pc, #304]	; (2000136c <TimerConfig+0x1dc>)
2000123a:	4b4c      	ldr	r3, [pc, #304]	; (2000136c <TimerConfig+0x1dc>)
2000123c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000123e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001242:	6313      	str	r3, [r2, #48]	; 0x30
20001244:	4a49      	ldr	r2, [pc, #292]	; (2000136c <TimerConfig+0x1dc>)
20001246:	4b49      	ldr	r3, [pc, #292]	; (2000136c <TimerConfig+0x1dc>)
20001248:	6e1b      	ldr	r3, [r3, #96]	; 0x60
2000124a:	f043 0308 	orr.w	r3, r3, #8
2000124e:	6613      	str	r3, [r2, #96]	; 0x60
20001250:	4a46      	ldr	r2, [pc, #280]	; (2000136c <TimerConfig+0x1dc>)
20001252:	4b46      	ldr	r3, [pc, #280]	; (2000136c <TimerConfig+0x1dc>)
20001254:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001256:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
2000125a:	6253      	str	r3, [r2, #36]	; 0x24
2000125c:	4a43      	ldr	r2, [pc, #268]	; (2000136c <TimerConfig+0x1dc>)
2000125e:	4b43      	ldr	r3, [pc, #268]	; (2000136c <TimerConfig+0x1dc>)
20001260:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001262:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001266:	6253      	str	r3, [r2, #36]	; 0x24
20001268:	4a40      	ldr	r2, [pc, #256]	; (2000136c <TimerConfig+0x1dc>)
2000126a:	4b40      	ldr	r3, [pc, #256]	; (2000136c <TimerConfig+0x1dc>)
2000126c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000126e:	f023 030f 	bic.w	r3, r3, #15
20001272:	6353      	str	r3, [r2, #52]	; 0x34
20001274:	4a3d      	ldr	r2, [pc, #244]	; (2000136c <TimerConfig+0x1dc>)
20001276:	4b3d      	ldr	r3, [pc, #244]	; (2000136c <TimerConfig+0x1dc>)
20001278:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000127a:	f043 030c 	orr.w	r3, r3, #12
2000127e:	6353      	str	r3, [r2, #52]	; 0x34
20001280:	4a3a      	ldr	r2, [pc, #232]	; (2000136c <TimerConfig+0x1dc>)
20001282:	4b3a      	ldr	r3, [pc, #232]	; (2000136c <TimerConfig+0x1dc>)
20001284:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001286:	f043 0301 	orr.w	r3, r3, #1
2000128a:	6353      	str	r3, [r2, #52]	; 0x34
2000128c:	4a37      	ldr	r2, [pc, #220]	; (2000136c <TimerConfig+0x1dc>)
2000128e:	4b37      	ldr	r3, [pc, #220]	; (2000136c <TimerConfig+0x1dc>)
20001290:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001292:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001296:	6353      	str	r3, [r2, #52]	; 0x34
20001298:	4a34      	ldr	r2, [pc, #208]	; (2000136c <TimerConfig+0x1dc>)
2000129a:	4b34      	ldr	r3, [pc, #208]	; (2000136c <TimerConfig+0x1dc>)
2000129c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000129e:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200012a2:	6353      	str	r3, [r2, #52]	; 0x34
200012a4:	4a31      	ldr	r2, [pc, #196]	; (2000136c <TimerConfig+0x1dc>)
200012a6:	4b31      	ldr	r3, [pc, #196]	; (2000136c <TimerConfig+0x1dc>)
200012a8:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200012aa:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200012ae:	6353      	str	r3, [r2, #52]	; 0x34
200012b0:	4a2e      	ldr	r2, [pc, #184]	; (2000136c <TimerConfig+0x1dc>)
200012b2:	4b2e      	ldr	r3, [pc, #184]	; (2000136c <TimerConfig+0x1dc>)
200012b4:	6e5b      	ldr	r3, [r3, #100]	; 0x64
200012b6:	f043 0308 	orr.w	r3, r3, #8
200012ba:	6653      	str	r3, [r2, #100]	; 0x64
200012bc:	4a2b      	ldr	r2, [pc, #172]	; (2000136c <TimerConfig+0x1dc>)
200012be:	4b2b      	ldr	r3, [pc, #172]	; (2000136c <TimerConfig+0x1dc>)
200012c0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200012c2:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200012c6:	6293      	str	r3, [r2, #40]	; 0x28
200012c8:	4a28      	ldr	r2, [pc, #160]	; (2000136c <TimerConfig+0x1dc>)
200012ca:	4b28      	ldr	r3, [pc, #160]	; (2000136c <TimerConfig+0x1dc>)
200012cc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200012ce:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200012d2:	6293      	str	r3, [r2, #40]	; 0x28
200012d4:	4a25      	ldr	r2, [pc, #148]	; (2000136c <TimerConfig+0x1dc>)
200012d6:	4b25      	ldr	r3, [pc, #148]	; (2000136c <TimerConfig+0x1dc>)
200012d8:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200012da:	f023 030f 	bic.w	r3, r3, #15
200012de:	6393      	str	r3, [r2, #56]	; 0x38
200012e0:	4a22      	ldr	r2, [pc, #136]	; (2000136c <TimerConfig+0x1dc>)
200012e2:	4b22      	ldr	r3, [pc, #136]	; (2000136c <TimerConfig+0x1dc>)
200012e4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200012e6:	f043 030c 	orr.w	r3, r3, #12
200012ea:	6393      	str	r3, [r2, #56]	; 0x38
200012ec:	4a1f      	ldr	r2, [pc, #124]	; (2000136c <TimerConfig+0x1dc>)
200012ee:	4b1f      	ldr	r3, [pc, #124]	; (2000136c <TimerConfig+0x1dc>)
200012f0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200012f2:	f043 0301 	orr.w	r3, r3, #1
200012f6:	6393      	str	r3, [r2, #56]	; 0x38
200012f8:	4a1c      	ldr	r2, [pc, #112]	; (2000136c <TimerConfig+0x1dc>)
200012fa:	4b1c      	ldr	r3, [pc, #112]	; (2000136c <TimerConfig+0x1dc>)
200012fc:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200012fe:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001302:	6393      	str	r3, [r2, #56]	; 0x38
20001304:	4a19      	ldr	r2, [pc, #100]	; (2000136c <TimerConfig+0x1dc>)
20001306:	4b19      	ldr	r3, [pc, #100]	; (2000136c <TimerConfig+0x1dc>)
20001308:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000130a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000130e:	6393      	str	r3, [r2, #56]	; 0x38
20001310:	4a16      	ldr	r2, [pc, #88]	; (2000136c <TimerConfig+0x1dc>)
20001312:	4b16      	ldr	r3, [pc, #88]	; (2000136c <TimerConfig+0x1dc>)
20001314:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001316:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000131a:	6393      	str	r3, [r2, #56]	; 0x38
2000131c:	4a13      	ldr	r2, [pc, #76]	; (2000136c <TimerConfig+0x1dc>)
2000131e:	4b13      	ldr	r3, [pc, #76]	; (2000136c <TimerConfig+0x1dc>)
20001320:	6e9b      	ldr	r3, [r3, #104]	; 0x68
20001322:	f043 0308 	orr.w	r3, r3, #8
20001326:	6693      	str	r3, [r2, #104]	; 0x68
20001328:	4a10      	ldr	r2, [pc, #64]	; (2000136c <TimerConfig+0x1dc>)
2000132a:	4b10      	ldr	r3, [pc, #64]	; (2000136c <TimerConfig+0x1dc>)
2000132c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000132e:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001332:	6413      	str	r3, [r2, #64]	; 0x40
20001334:	4a0d      	ldr	r2, [pc, #52]	; (2000136c <TimerConfig+0x1dc>)
20001336:	4b0d      	ldr	r3, [pc, #52]	; (2000136c <TimerConfig+0x1dc>)
20001338:	6c5b      	ldr	r3, [r3, #68]	; 0x44
2000133a:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
2000133e:	6453      	str	r3, [r2, #68]	; 0x44
20001340:	4a0a      	ldr	r2, [pc, #40]	; (2000136c <TimerConfig+0x1dc>)
20001342:	4b0a      	ldr	r3, [pc, #40]	; (2000136c <TimerConfig+0x1dc>)
20001344:	6c9b      	ldr	r3, [r3, #72]	; 0x48
20001346:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
2000134a:	6493      	str	r3, [r2, #72]	; 0x48
2000134c:	4a07      	ldr	r2, [pc, #28]	; (2000136c <TimerConfig+0x1dc>)
2000134e:	4b07      	ldr	r3, [pc, #28]	; (2000136c <TimerConfig+0x1dc>)
20001350:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001352:	f043 0302 	orr.w	r3, r3, #2
20001356:	6593      	str	r3, [r2, #88]	; 0x58
20001358:	2010      	movs	r0, #16
2000135a:	f7ff fe01 	bl	20000f60 <NVIC_EnableIRQ>
2000135e:	4b03      	ldr	r3, [pc, #12]	; (2000136c <TimerConfig+0x1dc>)
20001360:	2201      	movs	r2, #1
20001362:	60da      	str	r2, [r3, #12]
20001364:	bf00      	nop
20001366:	bd80      	pop	{r7, pc}
20001368:	40020000 	.word	0x40020000
2000136c:	40080000 	.word	0x40080000

20001370 <set_ram_vt>:
20001370:	b480      	push	{r7}
20001372:	b085      	sub	sp, #20
20001374:	af00      	add	r7, sp, #0
20001376:	2300      	movs	r3, #0
20001378:	60fb      	str	r3, [r7, #12]
2000137a:	2300      	movs	r3, #0
2000137c:	607b      	str	r3, [r7, #4]
2000137e:	4b13      	ldr	r3, [pc, #76]	; (200013cc <set_ram_vt+0x5c>)
20001380:	60bb      	str	r3, [r7, #8]
20001382:	2300      	movs	r3, #0
20001384:	60fb      	str	r3, [r7, #12]
20001386:	e00b      	b.n	200013a0 <set_ram_vt+0x30>
20001388:	68bb      	ldr	r3, [r7, #8]
2000138a:	1d1a      	adds	r2, r3, #4
2000138c:	60ba      	str	r2, [r7, #8]
2000138e:	68fa      	ldr	r2, [r7, #12]
20001390:	0092      	lsls	r2, r2, #2
20001392:	6879      	ldr	r1, [r7, #4]
20001394:	440a      	add	r2, r1
20001396:	6812      	ldr	r2, [r2, #0]
20001398:	601a      	str	r2, [r3, #0]
2000139a:	68fb      	ldr	r3, [r7, #12]
2000139c:	3301      	adds	r3, #1
2000139e:	60fb      	str	r3, [r7, #12]
200013a0:	68fb      	ldr	r3, [r7, #12]
200013a2:	2b2f      	cmp	r3, #47	; 0x2f
200013a4:	d9f0      	bls.n	20001388 <set_ram_vt+0x18>
200013a6:	4b0a      	ldr	r3, [pc, #40]	; (200013d0 <set_ram_vt+0x60>)
200013a8:	4a08      	ldr	r2, [pc, #32]	; (200013cc <set_ram_vt+0x5c>)
200013aa:	609a      	str	r2, [r3, #8]
200013ac:	4b07      	ldr	r3, [pc, #28]	; (200013cc <set_ram_vt+0x5c>)
200013ae:	4a09      	ldr	r2, [pc, #36]	; (200013d4 <set_ram_vt+0x64>)
200013b0:	63da      	str	r2, [r3, #60]	; 0x3c
200013b2:	4b06      	ldr	r3, [pc, #24]	; (200013cc <set_ram_vt+0x5c>)
200013b4:	4a08      	ldr	r2, [pc, #32]	; (200013d8 <set_ram_vt+0x68>)
200013b6:	659a      	str	r2, [r3, #88]	; 0x58
200013b8:	4b04      	ldr	r3, [pc, #16]	; (200013cc <set_ram_vt+0x5c>)
200013ba:	4a08      	ldr	r2, [pc, #32]	; (200013dc <set_ram_vt+0x6c>)
200013bc:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
200013c0:	bf00      	nop
200013c2:	3714      	adds	r7, #20
200013c4:	46bd      	mov	sp, r7
200013c6:	bc80      	pop	{r7}
200013c8:	4770      	bx	lr
200013ca:	bf00      	nop
200013cc:	20002800 	.word	0x20002800
200013d0:	e000ed00 	.word	0xe000ed00
200013d4:	2000148d 	.word	0x2000148d
200013d8:	200014a9 	.word	0x200014a9
200013dc:	20000411 	.word	0x20000411

200013e0 <uart_init>:
200013e0:	b480      	push	{r7}
200013e2:	af00      	add	r7, sp, #0
200013e4:	4b1f      	ldr	r3, [pc, #124]	; (20001464 <uart_init+0x84>)
200013e6:	2200      	movs	r2, #0
200013e8:	601a      	str	r2, [r3, #0]
200013ea:	4a1f      	ldr	r2, [pc, #124]	; (20001468 <uart_init+0x88>)
200013ec:	4b1e      	ldr	r3, [pc, #120]	; (20001468 <uart_init+0x88>)
200013ee:	69db      	ldr	r3, [r3, #28]
200013f0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
200013f4:	61d3      	str	r3, [r2, #28]
200013f6:	4a1c      	ldr	r2, [pc, #112]	; (20001468 <uart_init+0x88>)
200013f8:	4b1b      	ldr	r3, [pc, #108]	; (20001468 <uart_init+0x88>)
200013fa:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200013fc:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001400:	6293      	str	r3, [r2, #40]	; 0x28
20001402:	4b1a      	ldr	r3, [pc, #104]	; (2000146c <uart_init+0x8c>)
20001404:	2204      	movs	r2, #4
20001406:	625a      	str	r2, [r3, #36]	; 0x24
20001408:	4b18      	ldr	r3, [pc, #96]	; (2000146c <uart_init+0x8c>)
2000140a:	2200      	movs	r2, #0
2000140c:	629a      	str	r2, [r3, #40]	; 0x28
2000140e:	4a17      	ldr	r2, [pc, #92]	; (2000146c <uart_init+0x8c>)
20001410:	4b16      	ldr	r3, [pc, #88]	; (2000146c <uart_init+0x8c>)
20001412:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001414:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
20001418:	6353      	str	r3, [r2, #52]	; 0x34
2000141a:	4a14      	ldr	r2, [pc, #80]	; (2000146c <uart_init+0x8c>)
2000141c:	4b13      	ldr	r3, [pc, #76]	; (2000146c <uart_init+0x8c>)
2000141e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001420:	f043 0309 	orr.w	r3, r3, #9
20001424:	6353      	str	r3, [r2, #52]	; 0x34
20001426:	4a11      	ldr	r2, [pc, #68]	; (2000146c <uart_init+0x8c>)
20001428:	4b10      	ldr	r3, [pc, #64]	; (2000146c <uart_init+0x8c>)
2000142a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
2000142c:	f043 0310 	orr.w	r3, r3, #16
20001430:	62d3      	str	r3, [r2, #44]	; 0x2c
20001432:	4a0e      	ldr	r2, [pc, #56]	; (2000146c <uart_init+0x8c>)
20001434:	4b0d      	ldr	r3, [pc, #52]	; (2000146c <uart_init+0x8c>)
20001436:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001438:	f043 0360 	orr.w	r3, r3, #96	; 0x60
2000143c:	62d3      	str	r3, [r2, #44]	; 0x2c
2000143e:	4a0b      	ldr	r2, [pc, #44]	; (2000146c <uart_init+0x8c>)
20001440:	4b0a      	ldr	r3, [pc, #40]	; (2000146c <uart_init+0x8c>)
20001442:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001444:	f443 7340 	orr.w	r3, r3, #768	; 0x300
20001448:	f043 0301 	orr.w	r3, r3, #1
2000144c:	6313      	str	r3, [r2, #48]	; 0x30
2000144e:	4a07      	ldr	r2, [pc, #28]	; (2000146c <uart_init+0x8c>)
20001450:	4b06      	ldr	r3, [pc, #24]	; (2000146c <uart_init+0x8c>)
20001452:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001454:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001458:	6393      	str	r3, [r2, #56]	; 0x38
2000145a:	bf00      	nop
2000145c:	46bd      	mov	sp, r7
2000145e:	bc80      	pop	{r7}
20001460:	4770      	bx	lr
20001462:	bf00      	nop
20001464:	200028d0 	.word	0x200028d0
20001468:	40020000 	.word	0x40020000
2000146c:	40030000 	.word	0x40030000

20001470 <system_init>:
20001470:	b580      	push	{r7, lr}
20001472:	af00      	add	r7, sp, #0
20001474:	f7ff ff7c 	bl	20001370 <set_ram_vt>
20001478:	f7ff fe54 	bl	20001124 <ClkConfig>
2000147c:	f7ff fd88 	bl	20000f90 <PortConfig>
20001480:	f7ff fe86 	bl	20001190 <TimerConfig>
20001484:	f7ff ffac 	bl	200013e0 <uart_init>
20001488:	bf00      	nop
2000148a:	bd80      	pop	{r7, pc}

2000148c <SysTick_Handler>:
2000148c:	b480      	push	{r7}
2000148e:	af00      	add	r7, sp, #0
20001490:	4b04      	ldr	r3, [pc, #16]	; (200014a4 <SysTick_Handler+0x18>)
20001492:	681b      	ldr	r3, [r3, #0]
20001494:	3301      	adds	r3, #1
20001496:	4a03      	ldr	r2, [pc, #12]	; (200014a4 <SysTick_Handler+0x18>)
20001498:	6013      	str	r3, [r2, #0]
2000149a:	bf00      	nop
2000149c:	46bd      	mov	sp, r7
2000149e:	bc80      	pop	{r7}
200014a0:	4770      	bx	lr
200014a2:	bf00      	nop
200014a4:	20002700 	.word	0x20002700

200014a8 <UART1_Handler>:
200014a8:	b480      	push	{r7}
200014aa:	b083      	sub	sp, #12
200014ac:	af00      	add	r7, sp, #0
200014ae:	4a0d      	ldr	r2, [pc, #52]	; (200014e4 <UART1_Handler+0x3c>)
200014b0:	4b0c      	ldr	r3, [pc, #48]	; (200014e4 <UART1_Handler+0x3c>)
200014b2:	681b      	ldr	r3, [r3, #0]
200014b4:	f083 0301 	eor.w	r3, r3, #1
200014b8:	6013      	str	r3, [r2, #0]
200014ba:	4b0b      	ldr	r3, [pc, #44]	; (200014e8 <UART1_Handler+0x40>)
200014bc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200014be:	f003 0340 	and.w	r3, r3, #64	; 0x40
200014c2:	2b00      	cmp	r3, #0
200014c4:	d009      	beq.n	200014da <UART1_Handler+0x32>
200014c6:	e002      	b.n	200014ce <UART1_Handler+0x26>
200014c8:	4b07      	ldr	r3, [pc, #28]	; (200014e8 <UART1_Handler+0x40>)
200014ca:	681b      	ldr	r3, [r3, #0]
200014cc:	71fb      	strb	r3, [r7, #7]
200014ce:	4b06      	ldr	r3, [pc, #24]	; (200014e8 <UART1_Handler+0x40>)
200014d0:	699b      	ldr	r3, [r3, #24]
200014d2:	f003 0310 	and.w	r3, r3, #16
200014d6:	2b00      	cmp	r3, #0
200014d8:	d0f6      	beq.n	200014c8 <UART1_Handler+0x20>
200014da:	bf00      	nop
200014dc:	370c      	adds	r7, #12
200014de:	46bd      	mov	sp, r7
200014e0:	bc80      	pop	{r7}
200014e2:	4770      	bx	lr
200014e4:	400a8000 	.word	0x400a8000
200014e8:	40030000 	.word	0x40030000
