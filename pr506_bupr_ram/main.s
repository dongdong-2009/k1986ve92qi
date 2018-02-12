
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b580      	push	{r7, lr}
20000002:	b0a6      	sub	sp, #152	; 0x98
20000004:	af00      	add	r7, sp, #0
20000006:	2300      	movs	r3, #0
20000008:	67fb      	str	r3, [r7, #124]	; 0x7c
2000000a:	2300      	movs	r3, #0
2000000c:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
20000010:	2300      	movs	r3, #0
20000012:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
20000016:	2300      	movs	r3, #0
20000018:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
2000001c:	2300      	movs	r3, #0
2000001e:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
20000022:	2300      	movs	r3, #0
20000024:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
20000028:	2300      	movs	r3, #0
2000002a:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
2000002e:	2300      	movs	r3, #0
20000030:	67bb      	str	r3, [r7, #120]	; 0x78
20000032:	2300      	movs	r3, #0
20000034:	617b      	str	r3, [r7, #20]
20000036:	2300      	movs	r3, #0
20000038:	677b      	str	r3, [r7, #116]	; 0x74
2000003a:	f001 f98f 	bl	2000135c <system_init>
2000003e:	f000 f95f 	bl	20000300 <ssi_init>
20000042:	f000 f9d1 	bl	200003e8 <dac_init>
20000046:	f000 ff2d 	bl	20000ea4 <adc_dma_init>
2000004a:	f107 0348 	add.w	r3, r7, #72	; 0x48
2000004e:	22c8      	movs	r2, #200	; 0xc8
20000050:	2150      	movs	r1, #80	; 0x50
20000052:	4618      	mov	r0, r3
20000054:	f000 fa6c 	bl	20000530 <reg_init>
20000058:	f107 0338 	add.w	r3, r7, #56	; 0x38
2000005c:	22c8      	movs	r2, #200	; 0xc8
2000005e:	2150      	movs	r1, #80	; 0x50
20000060:	4618      	mov	r0, r3
20000062:	f000 fa65 	bl	20000530 <reg_init>
20000066:	f107 0328 	add.w	r3, r7, #40	; 0x28
2000006a:	f241 3288 	movw	r2, #5000	; 0x1388
2000006e:	2100      	movs	r1, #0
20000070:	4618      	mov	r0, r3
20000072:	f000 fa5d 	bl	20000530 <reg_init>
20000076:	f107 0318 	add.w	r3, r7, #24
2000007a:	f241 7270 	movw	r2, #6000	; 0x1770
2000007e:	2100      	movs	r1, #0
20000080:	4618      	mov	r0, r3
20000082:	f000 fa55 	bl	20000530 <reg_init>
20000086:	2300      	movs	r3, #0
20000088:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
2000008c:	2300      	movs	r3, #0
2000008e:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000092:	4b89      	ldr	r3, [pc, #548]	; (200002b8 <main+0x2b8>)
20000094:	2200      	movs	r2, #0
20000096:	601a      	str	r2, [r3, #0]
20000098:	2300      	movs	r3, #0
2000009a:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
2000009e:	e024      	b.n	200000ea <main+0xea>
200000a0:	f000 ff1c 	bl	20000edc <adc_dma_wait>
200000a4:	4b85      	ldr	r3, [pc, #532]	; (200002bc <main+0x2bc>)
200000a6:	685b      	ldr	r3, [r3, #4]
200000a8:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000ac:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000b0:	4413      	add	r3, r2
200000b2:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
200000b6:	4b81      	ldr	r3, [pc, #516]	; (200002bc <main+0x2bc>)
200000b8:	681b      	ldr	r3, [r3, #0]
200000ba:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000be:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
200000c2:	4413      	add	r3, r2
200000c4:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
200000c8:	4b7d      	ldr	r3, [pc, #500]	; (200002c0 <main+0x2c0>)
200000ca:	689b      	ldr	r3, [r3, #8]
200000cc:	4618      	mov	r0, r3
200000ce:	f000 f961 	bl	20000394 <enc_crc>
200000d2:	4602      	mov	r2, r0
200000d4:	4b78      	ldr	r3, [pc, #480]	; (200002b8 <main+0x2b8>)
200000d6:	681b      	ldr	r3, [r3, #0]
200000d8:	4413      	add	r3, r2
200000da:	461a      	mov	r2, r3
200000dc:	4b76      	ldr	r3, [pc, #472]	; (200002b8 <main+0x2b8>)
200000de:	601a      	str	r2, [r3, #0]
200000e0:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
200000e4:	3301      	adds	r3, #1
200000e6:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
200000ea:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
200000ee:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
200000f2:	dbd5      	blt.n	200000a0 <main+0xa0>
200000f4:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000f8:	129b      	asrs	r3, r3, #10
200000fa:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
200000fe:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
20000102:	129b      	asrs	r3, r3, #10
20000104:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000108:	4b6b      	ldr	r3, [pc, #428]	; (200002b8 <main+0x2b8>)
2000010a:	681b      	ldr	r3, [r3, #0]
2000010c:	129b      	asrs	r3, r3, #10
2000010e:	4a6a      	ldr	r2, [pc, #424]	; (200002b8 <main+0x2b8>)
20000110:	6013      	str	r3, [r2, #0]
20000112:	4b69      	ldr	r3, [pc, #420]	; (200002b8 <main+0x2b8>)
20000114:	681b      	ldr	r3, [r3, #0]
20000116:	f5c3 23f4 	rsb	r3, r3, #499712	; 0x7a000
2000011a:	f503 7390 	add.w	r3, r3, #288	; 0x120
2000011e:	4a69      	ldr	r2, [pc, #420]	; (200002c4 <main+0x2c4>)
20000120:	6013      	str	r3, [r2, #0]
20000122:	f000 fedb 	bl	20000edc <adc_dma_wait>
20000126:	4b65      	ldr	r3, [pc, #404]	; (200002bc <main+0x2bc>)
20000128:	685b      	ldr	r3, [r3, #4]
2000012a:	f3c3 020b 	ubfx	r2, r3, #0, #12
2000012e:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
20000132:	1ad3      	subs	r3, r2, r3
20000134:	673b      	str	r3, [r7, #112]	; 0x70
20000136:	4b61      	ldr	r3, [pc, #388]	; (200002bc <main+0x2bc>)
20000138:	681b      	ldr	r3, [r3, #0]
2000013a:	f3c3 020b 	ubfx	r2, r3, #0, #12
2000013e:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
20000142:	1ad3      	subs	r3, r2, r3
20000144:	66fb      	str	r3, [r7, #108]	; 0x6c
20000146:	6f3a      	ldr	r2, [r7, #112]	; 0x70
20000148:	6efb      	ldr	r3, [r7, #108]	; 0x6c
2000014a:	4413      	add	r3, r2
2000014c:	66bb      	str	r3, [r7, #104]	; 0x68
2000014e:	4b5c      	ldr	r3, [pc, #368]	; (200002c0 <main+0x2c0>)
20000150:	689b      	ldr	r3, [r3, #8]
20000152:	4618      	mov	r0, r3
20000154:	f000 f91e 	bl	20000394 <enc_crc>
20000158:	6678      	str	r0, [r7, #100]	; 0x64
2000015a:	6e7b      	ldr	r3, [r7, #100]	; 0x64
2000015c:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000160:	677b      	str	r3, [r7, #116]	; 0x74
20000162:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
20000166:	3301      	adds	r3, #1
20000168:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
2000016c:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
20000170:	f003 0307 	and.w	r3, r3, #7
20000174:	2b00      	cmp	r3, #0
20000176:	d13a      	bne.n	200001ee <main+0x1ee>
20000178:	6e7b      	ldr	r3, [r7, #100]	; 0x64
2000017a:	f107 0214 	add.w	r2, r7, #20
2000017e:	4611      	mov	r1, r2
20000180:	4618      	mov	r0, r3
20000182:	f000 fd93 	bl	20000cac <get_speed>
20000186:	6638      	str	r0, [r7, #96]	; 0x60
20000188:	4b4b      	ldr	r3, [pc, #300]	; (200002b8 <main+0x2b8>)
2000018a:	681a      	ldr	r2, [r3, #0]
2000018c:	697b      	ldr	r3, [r7, #20]
2000018e:	1ad3      	subs	r3, r2, r3
20000190:	119b      	asrs	r3, r3, #6
20000192:	4618      	mov	r0, r3
20000194:	f000 f9aa 	bl	200004ec <debug_signal>
20000198:	4b4a      	ldr	r3, [pc, #296]	; (200002c4 <main+0x2c4>)
2000019a:	681a      	ldr	r2, [r3, #0]
2000019c:	697b      	ldr	r3, [r7, #20]
2000019e:	1ad1      	subs	r1, r2, r3
200001a0:	f107 0318 	add.w	r3, r7, #24
200001a4:	2200      	movs	r2, #0
200001a6:	4618      	mov	r0, r3
200001a8:	f000 f9c8 	bl	2000053c <reg_update>
200001ac:	6a7b      	ldr	r3, [r7, #36]	; 0x24
200001ae:	131b      	asrs	r3, r3, #12
200001b0:	67bb      	str	r3, [r7, #120]	; 0x78
200001b2:	6fba      	ldr	r2, [r7, #120]	; 0x78
200001b4:	6e3b      	ldr	r3, [r7, #96]	; 0x60
200001b6:	1ad1      	subs	r1, r2, r3
200001b8:	f107 0328 	add.w	r3, r7, #40	; 0x28
200001bc:	2200      	movs	r2, #0
200001be:	4618      	mov	r0, r3
200001c0:	f000 f9bc 	bl	2000053c <reg_update>
200001c4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
200001c6:	131b      	asrs	r3, r3, #12
200001c8:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
200001cc:	f8d7 3080 	ldr.w	r3, [r7, #128]	; 0x80
200001d0:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
200001d4:	dd03      	ble.n	200001de <main+0x1de>
200001d6:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
200001da:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
200001de:	f8d7 3080 	ldr.w	r3, [r7, #128]	; 0x80
200001e2:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
200001e6:	da02      	bge.n	200001ee <main+0x1ee>
200001e8:	4b37      	ldr	r3, [pc, #220]	; (200002c8 <main+0x2c8>)
200001ea:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
200001ee:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
200001f2:	f3c3 030e 	ubfx	r3, r3, #0, #15
200001f6:	2b00      	cmp	r3, #0
200001f8:	d116      	bne.n	20000228 <main+0x228>
200001fa:	4b2f      	ldr	r3, [pc, #188]	; (200002b8 <main+0x2b8>)
200001fc:	681b      	ldr	r3, [r3, #0]
200001fe:	f5c3 4343 	rsb	r3, r3, #49920	; 0xc300
20000202:	3350      	adds	r3, #80	; 0x50
20000204:	4a2f      	ldr	r2, [pc, #188]	; (200002c4 <main+0x2c4>)
20000206:	6812      	ldr	r2, [r2, #0]
20000208:	4293      	cmp	r3, r2
2000020a:	d106      	bne.n	2000021a <main+0x21a>
2000020c:	4b2a      	ldr	r3, [pc, #168]	; (200002b8 <main+0x2b8>)
2000020e:	681a      	ldr	r2, [r3, #0]
20000210:	4b2e      	ldr	r3, [pc, #184]	; (200002cc <main+0x2cc>)
20000212:	1a9b      	subs	r3, r3, r2
20000214:	4a2b      	ldr	r2, [pc, #172]	; (200002c4 <main+0x2c4>)
20000216:	6013      	str	r3, [r2, #0]
20000218:	e006      	b.n	20000228 <main+0x228>
2000021a:	4b27      	ldr	r3, [pc, #156]	; (200002b8 <main+0x2b8>)
2000021c:	681b      	ldr	r3, [r3, #0]
2000021e:	f5c3 4343 	rsb	r3, r3, #49920	; 0xc300
20000222:	3350      	adds	r3, #80	; 0x50
20000224:	4a27      	ldr	r2, [pc, #156]	; (200002c4 <main+0x2c4>)
20000226:	6013      	str	r3, [r2, #0]
20000228:	6f7b      	ldr	r3, [r7, #116]	; 0x74
2000022a:	f503 732f 	add.w	r3, r3, #700	; 0x2bc
2000022e:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000232:	677b      	str	r3, [r7, #116]	; 0x74
20000234:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20000236:	603b      	str	r3, [r7, #0]
20000238:	6ebb      	ldr	r3, [r7, #104]	; 0x68
2000023a:	607b      	str	r3, [r7, #4]
2000023c:	6efb      	ldr	r3, [r7, #108]	; 0x6c
2000023e:	60bb      	str	r3, [r7, #8]
20000240:	6f7a      	ldr	r2, [r7, #116]	; 0x74
20000242:	f107 010c 	add.w	r1, r7, #12
20000246:	463b      	mov	r3, r7
20000248:	4618      	mov	r0, r3
2000024a:	f000 f99d 	bl	20000588 <abc_to_dq>
2000024e:	68fb      	ldr	r3, [r7, #12]
20000250:	425b      	negs	r3, r3
20000252:	65fb      	str	r3, [r7, #92]	; 0x5c
20000254:	693b      	ldr	r3, [r7, #16]
20000256:	f8d7 2080 	ldr.w	r2, [r7, #128]	; 0x80
2000025a:	1ad3      	subs	r3, r2, r3
2000025c:	65bb      	str	r3, [r7, #88]	; 0x58
2000025e:	f107 0348 	add.w	r3, r7, #72	; 0x48
20000262:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
20000266:	6df9      	ldr	r1, [r7, #92]	; 0x5c
20000268:	4618      	mov	r0, r3
2000026a:	f000 f967 	bl	2000053c <reg_update>
2000026e:	f107 0338 	add.w	r3, r7, #56	; 0x38
20000272:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
20000276:	6db9      	ldr	r1, [r7, #88]	; 0x58
20000278:	4618      	mov	r0, r3
2000027a:	f000 f95f 	bl	2000053c <reg_update>
2000027e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
20000280:	109b      	asrs	r3, r3, #2
20000282:	60fb      	str	r3, [r7, #12]
20000284:	6c7b      	ldr	r3, [r7, #68]	; 0x44
20000286:	109b      	asrs	r3, r3, #2
20000288:	613b      	str	r3, [r7, #16]
2000028a:	6f7a      	ldr	r2, [r7, #116]	; 0x74
2000028c:	f107 010c 	add.w	r1, r7, #12
20000290:	463b      	mov	r3, r7
20000292:	4618      	mov	r0, r3
20000294:	f000 fb90 	bl	200009b8 <svpwm>
20000298:	f8c7 0084 	str.w	r0, [r7, #132]	; 0x84
2000029c:	683b      	ldr	r3, [r7, #0]
2000029e:	4618      	mov	r0, r3
200002a0:	f000 f8f4 	bl	2000048c <pwm_seta>
200002a4:	687b      	ldr	r3, [r7, #4]
200002a6:	4618      	mov	r0, r3
200002a8:	f000 f900 	bl	200004ac <pwm_setb>
200002ac:	68bb      	ldr	r3, [r7, #8]
200002ae:	4618      	mov	r0, r3
200002b0:	f000 f90c 	bl	200004cc <pwm_setc>
200002b4:	e735      	b.n	20000122 <main+0x122>
200002b6:	bf00      	nop
200002b8:	2000240c 	.word	0x2000240c
200002bc:	20002a00 	.word	0x20002a00
200002c0:	40040000 	.word	0x40040000
200002c4:	20002400 	.word	0x20002400
200002c8:	fffffc18 	.word	0xfffffc18
200002cc:	ffff3cb0 	.word	0xffff3cb0

200002d0 <sleep>:
200002d0:	b480      	push	{r7}
200002d2:	b085      	sub	sp, #20
200002d4:	af00      	add	r7, sp, #0
200002d6:	6078      	str	r0, [r7, #4]
200002d8:	4b08      	ldr	r3, [pc, #32]	; (200002fc <sleep+0x2c>)
200002da:	681a      	ldr	r2, [r3, #0]
200002dc:	687b      	ldr	r3, [r7, #4]
200002de:	4413      	add	r3, r2
200002e0:	60fb      	str	r3, [r7, #12]
200002e2:	bf00      	nop
200002e4:	4b05      	ldr	r3, [pc, #20]	; (200002fc <sleep+0x2c>)
200002e6:	681a      	ldr	r2, [r3, #0]
200002e8:	68fb      	ldr	r3, [r7, #12]
200002ea:	429a      	cmp	r2, r3
200002ec:	d3fa      	bcc.n	200002e4 <sleep+0x14>
200002ee:	bf00      	nop
200002f0:	4618      	mov	r0, r3
200002f2:	3714      	adds	r7, #20
200002f4:	46bd      	mov	sp, r7
200002f6:	bc80      	pop	{r7}
200002f8:	4770      	bx	lr
200002fa:	bf00      	nop
200002fc:	20002500 	.word	0x20002500

20000300 <ssi_init>:
20000300:	b480      	push	{r7}
20000302:	af00      	add	r7, sp, #0
20000304:	4a0c      	ldr	r2, [pc, #48]	; (20000338 <ssi_init+0x38>)
20000306:	4b0c      	ldr	r3, [pc, #48]	; (20000338 <ssi_init+0x38>)
20000308:	69db      	ldr	r3, [r3, #28]
2000030a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000030e:	61d3      	str	r3, [r2, #28]
20000310:	4b09      	ldr	r3, [pc, #36]	; (20000338 <ssi_init+0x38>)
20000312:	4a0a      	ldr	r2, [pc, #40]	; (2000033c <ssi_init+0x3c>)
20000314:	62da      	str	r2, [r3, #44]	; 0x2c
20000316:	4b0a      	ldr	r3, [pc, #40]	; (20000340 <ssi_init+0x40>)
20000318:	2200      	movs	r2, #0
2000031a:	605a      	str	r2, [r3, #4]
2000031c:	4b08      	ldr	r3, [pc, #32]	; (20000340 <ssi_init+0x40>)
2000031e:	220a      	movs	r2, #10
20000320:	611a      	str	r2, [r3, #16]
20000322:	4b07      	ldr	r3, [pc, #28]	; (20000340 <ssi_init+0x40>)
20000324:	f240 221f 	movw	r2, #543	; 0x21f
20000328:	601a      	str	r2, [r3, #0]
2000032a:	4b05      	ldr	r3, [pc, #20]	; (20000340 <ssi_init+0x40>)
2000032c:	2202      	movs	r2, #2
2000032e:	605a      	str	r2, [r3, #4]
20000330:	bf00      	nop
20000332:	46bd      	mov	sp, r7
20000334:	bc80      	pop	{r7}
20000336:	4770      	bx	lr
20000338:	40020000 	.word	0x40020000
2000033c:	0100000a 	.word	0x0100000a
20000340:	40040000 	.word	0x40040000

20000344 <b2g>:
20000344:	b480      	push	{r7}
20000346:	b083      	sub	sp, #12
20000348:	af00      	add	r7, sp, #0
2000034a:	6078      	str	r0, [r7, #4]
2000034c:	687b      	ldr	r3, [r7, #4]
2000034e:	085a      	lsrs	r2, r3, #1
20000350:	687b      	ldr	r3, [r7, #4]
20000352:	4053      	eors	r3, r2
20000354:	4618      	mov	r0, r3
20000356:	370c      	adds	r7, #12
20000358:	46bd      	mov	sp, r7
2000035a:	bc80      	pop	{r7}
2000035c:	4770      	bx	lr
2000035e:	bf00      	nop

20000360 <g2b>:
20000360:	b480      	push	{r7}
20000362:	b085      	sub	sp, #20
20000364:	af00      	add	r7, sp, #0
20000366:	6078      	str	r0, [r7, #4]
20000368:	2300      	movs	r3, #0
2000036a:	60fb      	str	r3, [r7, #12]
2000036c:	2300      	movs	r3, #0
2000036e:	60fb      	str	r3, [r7, #12]
20000370:	e006      	b.n	20000380 <g2b+0x20>
20000372:	68fa      	ldr	r2, [r7, #12]
20000374:	687b      	ldr	r3, [r7, #4]
20000376:	4053      	eors	r3, r2
20000378:	60fb      	str	r3, [r7, #12]
2000037a:	687b      	ldr	r3, [r7, #4]
2000037c:	085b      	lsrs	r3, r3, #1
2000037e:	607b      	str	r3, [r7, #4]
20000380:	687b      	ldr	r3, [r7, #4]
20000382:	2b00      	cmp	r3, #0
20000384:	d1f5      	bne.n	20000372 <g2b+0x12>
20000386:	68fb      	ldr	r3, [r7, #12]
20000388:	4618      	mov	r0, r3
2000038a:	3714      	adds	r7, #20
2000038c:	46bd      	mov	sp, r7
2000038e:	bc80      	pop	{r7}
20000390:	4770      	bx	lr
20000392:	bf00      	nop

20000394 <enc_crc>:
20000394:	b480      	push	{r7}
20000396:	b085      	sub	sp, #20
20000398:	af00      	add	r7, sp, #0
2000039a:	6078      	str	r0, [r7, #4]
2000039c:	687b      	ldr	r3, [r7, #4]
2000039e:	60bb      	str	r3, [r7, #8]
200003a0:	2300      	movs	r3, #0
200003a2:	60fb      	str	r3, [r7, #12]
200003a4:	e006      	b.n	200003b4 <enc_crc+0x20>
200003a6:	68fa      	ldr	r2, [r7, #12]
200003a8:	68bb      	ldr	r3, [r7, #8]
200003aa:	4053      	eors	r3, r2
200003ac:	60fb      	str	r3, [r7, #12]
200003ae:	68bb      	ldr	r3, [r7, #8]
200003b0:	085b      	lsrs	r3, r3, #1
200003b2:	60bb      	str	r3, [r7, #8]
200003b4:	68bb      	ldr	r3, [r7, #8]
200003b6:	2b00      	cmp	r3, #0
200003b8:	d1f5      	bne.n	200003a6 <enc_crc+0x12>
200003ba:	68fb      	ldr	r3, [r7, #12]
200003bc:	f003 0301 	and.w	r3, r3, #1
200003c0:	2b00      	cmp	r3, #0
200003c2:	d107      	bne.n	200003d4 <enc_crc+0x40>
200003c4:	687b      	ldr	r3, [r7, #4]
200003c6:	f3c3 030b 	ubfx	r3, r3, #0, #12
200003ca:	4a06      	ldr	r2, [pc, #24]	; (200003e4 <enc_crc+0x50>)
200003cc:	6013      	str	r3, [r2, #0]
200003ce:	4b05      	ldr	r3, [pc, #20]	; (200003e4 <enc_crc+0x50>)
200003d0:	681b      	ldr	r3, [r3, #0]
200003d2:	2b00      	cmp	r3, #0
200003d4:	4b03      	ldr	r3, [pc, #12]	; (200003e4 <enc_crc+0x50>)
200003d6:	681b      	ldr	r3, [r3, #0]
200003d8:	4618      	mov	r0, r3
200003da:	3714      	adds	r7, #20
200003dc:	46bd      	mov	sp, r7
200003de:	bc80      	pop	{r7}
200003e0:	4770      	bx	lr
200003e2:	bf00      	nop
200003e4:	20002414 	.word	0x20002414

200003e8 <dac_init>:
200003e8:	b480      	push	{r7}
200003ea:	af00      	add	r7, sp, #0
200003ec:	4a07      	ldr	r2, [pc, #28]	; (2000040c <dac_init+0x24>)
200003ee:	4b07      	ldr	r3, [pc, #28]	; (2000040c <dac_init+0x24>)
200003f0:	69db      	ldr	r3, [r3, #28]
200003f2:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
200003f6:	61d3      	str	r3, [r2, #28]
200003f8:	4a05      	ldr	r2, [pc, #20]	; (20000410 <dac_init+0x28>)
200003fa:	4b05      	ldr	r3, [pc, #20]	; (20000410 <dac_init+0x28>)
200003fc:	681b      	ldr	r3, [r3, #0]
200003fe:	f043 0308 	orr.w	r3, r3, #8
20000402:	6013      	str	r3, [r2, #0]
20000404:	bf00      	nop
20000406:	46bd      	mov	sp, r7
20000408:	bc80      	pop	{r7}
2000040a:	4770      	bx	lr
2000040c:	40020000 	.word	0x40020000
20000410:	40090000 	.word	0x40090000

20000414 <encoder_start>:
20000414:	b480      	push	{r7}
20000416:	af00      	add	r7, sp, #0
20000418:	4b03      	ldr	r3, [pc, #12]	; (20000428 <encoder_start+0x14>)
2000041a:	f240 5255 	movw	r2, #1365	; 0x555
2000041e:	609a      	str	r2, [r3, #8]
20000420:	bf00      	nop
20000422:	46bd      	mov	sp, r7
20000424:	bc80      	pop	{r7}
20000426:	4770      	bx	lr
20000428:	40040000 	.word	0x40040000

2000042c <TIMER3_Handler>:
2000042c:	b580      	push	{r7, lr}
2000042e:	af00      	add	r7, sp, #0
20000430:	4a07      	ldr	r2, [pc, #28]	; (20000450 <TIMER3_Handler+0x24>)
20000432:	4b07      	ldr	r3, [pc, #28]	; (20000450 <TIMER3_Handler+0x24>)
20000434:	681b      	ldr	r3, [r3, #0]
20000436:	f083 0301 	eor.w	r3, r3, #1
2000043a:	6013      	str	r3, [r2, #0]
2000043c:	4b05      	ldr	r3, [pc, #20]	; (20000454 <TIMER3_Handler+0x28>)
2000043e:	2200      	movs	r2, #0
20000440:	655a      	str	r2, [r3, #84]	; 0x54
20000442:	f7ff ffe7 	bl	20000414 <encoder_start>
20000446:	f000 fd35 	bl	20000eb4 <adc_dma_start>
2000044a:	bf00      	nop
2000044c:	bd80      	pop	{r7, pc}
2000044e:	bf00      	nop
20000450:	400a8000 	.word	0x400a8000
20000454:	40080000 	.word	0x40080000

20000458 <get_phase>:
20000458:	b580      	push	{r7, lr}
2000045a:	af00      	add	r7, sp, #0
2000045c:	4b0a      	ldr	r3, [pc, #40]	; (20000488 <get_phase+0x30>)
2000045e:	f240 5255 	movw	r2, #1365	; 0x555
20000462:	609a      	str	r2, [r3, #8]
20000464:	bf00      	nop
20000466:	4b08      	ldr	r3, [pc, #32]	; (20000488 <get_phase+0x30>)
20000468:	68db      	ldr	r3, [r3, #12]
2000046a:	f003 0304 	and.w	r3, r3, #4
2000046e:	2b00      	cmp	r3, #0
20000470:	d0f9      	beq.n	20000466 <get_phase+0xe>
20000472:	4b05      	ldr	r3, [pc, #20]	; (20000488 <get_phase+0x30>)
20000474:	689b      	ldr	r3, [r3, #8]
20000476:	f3c3 030b 	ubfx	r3, r3, #0, #12
2000047a:	4618      	mov	r0, r3
2000047c:	f7ff ff70 	bl	20000360 <g2b>
20000480:	4603      	mov	r3, r0
20000482:	4618      	mov	r0, r3
20000484:	bd80      	pop	{r7, pc}
20000486:	bf00      	nop
20000488:	40040000 	.word	0x40040000

2000048c <pwm_seta>:
2000048c:	b480      	push	{r7}
2000048e:	b083      	sub	sp, #12
20000490:	af00      	add	r7, sp, #0
20000492:	6078      	str	r0, [r7, #4]
20000494:	4a04      	ldr	r2, [pc, #16]	; (200004a8 <pwm_seta+0x1c>)
20000496:	687b      	ldr	r3, [r7, #4]
20000498:	f503 7300 	add.w	r3, r3, #512	; 0x200
2000049c:	6113      	str	r3, [r2, #16]
2000049e:	bf00      	nop
200004a0:	370c      	adds	r7, #12
200004a2:	46bd      	mov	sp, r7
200004a4:	bc80      	pop	{r7}
200004a6:	4770      	bx	lr
200004a8:	40080000 	.word	0x40080000

200004ac <pwm_setb>:
200004ac:	b480      	push	{r7}
200004ae:	b083      	sub	sp, #12
200004b0:	af00      	add	r7, sp, #0
200004b2:	6078      	str	r0, [r7, #4]
200004b4:	4a04      	ldr	r2, [pc, #16]	; (200004c8 <pwm_setb+0x1c>)
200004b6:	687b      	ldr	r3, [r7, #4]
200004b8:	f503 7300 	add.w	r3, r3, #512	; 0x200
200004bc:	6153      	str	r3, [r2, #20]
200004be:	bf00      	nop
200004c0:	370c      	adds	r7, #12
200004c2:	46bd      	mov	sp, r7
200004c4:	bc80      	pop	{r7}
200004c6:	4770      	bx	lr
200004c8:	40080000 	.word	0x40080000

200004cc <pwm_setc>:
200004cc:	b480      	push	{r7}
200004ce:	b083      	sub	sp, #12
200004d0:	af00      	add	r7, sp, #0
200004d2:	6078      	str	r0, [r7, #4]
200004d4:	4a04      	ldr	r2, [pc, #16]	; (200004e8 <pwm_setc+0x1c>)
200004d6:	687b      	ldr	r3, [r7, #4]
200004d8:	f503 7300 	add.w	r3, r3, #512	; 0x200
200004dc:	6193      	str	r3, [r2, #24]
200004de:	bf00      	nop
200004e0:	370c      	adds	r7, #12
200004e2:	46bd      	mov	sp, r7
200004e4:	bc80      	pop	{r7}
200004e6:	4770      	bx	lr
200004e8:	40080000 	.word	0x40080000

200004ec <debug_signal>:
200004ec:	b480      	push	{r7}
200004ee:	b083      	sub	sp, #12
200004f0:	af00      	add	r7, sp, #0
200004f2:	6078      	str	r0, [r7, #4]
200004f4:	4a04      	ldr	r2, [pc, #16]	; (20000508 <debug_signal+0x1c>)
200004f6:	687b      	ldr	r3, [r7, #4]
200004f8:	f503 6300 	add.w	r3, r3, #2048	; 0x800
200004fc:	6093      	str	r3, [r2, #8]
200004fe:	bf00      	nop
20000500:	370c      	adds	r7, #12
20000502:	46bd      	mov	sp, r7
20000504:	bc80      	pop	{r7}
20000506:	4770      	bx	lr
20000508:	40090000 	.word	0x40090000

2000050c <mycos>:
2000050c:	4b02      	ldr	r3, [pc, #8]	; (20000518 <mycos+0xc>)
2000050e:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000512:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000516:	4770      	bx	lr
20000518:	200013d0 	.word	0x200013d0

2000051c <mysin>:
2000051c:	4b03      	ldr	r3, [pc, #12]	; (2000052c <mysin+0x10>)
2000051e:	f500 7040 	add.w	r0, r0, #768	; 0x300
20000522:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000526:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
2000052a:	4770      	bx	lr
2000052c:	200013d0 	.word	0x200013d0

20000530 <reg_init>:
20000530:	2300      	movs	r3, #0
20000532:	e880 000e 	stmia.w	r0, {r1, r2, r3}
20000536:	60c3      	str	r3, [r0, #12]
20000538:	4770      	bx	lr
2000053a:	bf00      	nop

2000053c <reg_update>:
2000053c:	6803      	ldr	r3, [r0, #0]
2000053e:	b410      	push	{r4}
20000540:	fb03 f301 	mul.w	r3, r3, r1
20000544:	6884      	ldr	r4, [r0, #8]
20000546:	b11a      	cbz	r2, 20000550 <reg_update+0x14>
20000548:	2c00      	cmp	r4, #0
2000054a:	dd09      	ble.n	20000560 <reg_update+0x24>
2000054c:	ea03 73e3 	and.w	r3, r3, r3, asr #31
20000550:	6842      	ldr	r2, [r0, #4]
20000552:	4423      	add	r3, r4
20000554:	fb02 3101 	mla	r1, r2, r1, r3
20000558:	6083      	str	r3, [r0, #8]
2000055a:	60c1      	str	r1, [r0, #12]
2000055c:	bc10      	pop	{r4}
2000055e:	4770      	bx	lr
20000560:	bf18      	it	ne
20000562:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
20000566:	e7f3      	b.n	20000550 <reg_update+0x14>

20000568 <dot3>:
20000568:	b430      	push	{r4, r5}
2000056a:	684b      	ldr	r3, [r1, #4]
2000056c:	6844      	ldr	r4, [r0, #4]
2000056e:	6802      	ldr	r2, [r0, #0]
20000570:	fb03 f304 	mul.w	r3, r3, r4
20000574:	680d      	ldr	r5, [r1, #0]
20000576:	6884      	ldr	r4, [r0, #8]
20000578:	fb05 3302 	mla	r3, r5, r2, r3
2000057c:	6888      	ldr	r0, [r1, #8]
2000057e:	fb00 3004 	mla	r0, r0, r4, r3
20000582:	bc30      	pop	{r4, r5}
20000584:	4770      	bx	lr
20000586:	bf00      	nop

20000588 <abc_to_dq>:
20000588:	b4f0      	push	{r4, r5, r6, r7}
2000058a:	4c1d      	ldr	r4, [pc, #116]	; (20000600 <abc_to_dq+0x78>)
2000058c:	6803      	ldr	r3, [r0, #0]
2000058e:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
20000592:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
20000596:	fb03 f306 	mul.w	r3, r3, r6
2000059a:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000059e:	6847      	ldr	r7, [r0, #4]
200005a0:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200005a4:	f202 1655 	addw	r6, r2, #341	; 0x155
200005a8:	fb07 3305 	mla	r3, r7, r5, r3
200005ac:	f3c6 0509 	ubfx	r5, r6, #0, #10
200005b0:	6887      	ldr	r7, [r0, #8]
200005b2:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200005b6:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
200005ba:	fb07 3305 	mla	r3, r7, r5, r3
200005be:	129b      	asrs	r3, r3, #10
200005c0:	600b      	str	r3, [r1, #0]
200005c2:	f3c6 0509 	ubfx	r5, r6, #0, #10
200005c6:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
200005ca:	6843      	ldr	r3, [r0, #4]
200005cc:	f502 7540 	add.w	r5, r2, #768	; 0x300
200005d0:	fb03 f306 	mul.w	r3, r3, r6
200005d4:	f3c5 0509 	ubfx	r5, r5, #0, #10
200005d8:	6806      	ldr	r6, [r0, #0]
200005da:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200005de:	f202 4255 	addw	r2, r2, #1109	; 0x455
200005e2:	fb06 3305 	mla	r3, r6, r5, r3
200005e6:	f3c2 0209 	ubfx	r2, r2, #0, #10
200005ea:	6880      	ldr	r0, [r0, #8]
200005ec:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
200005f0:	bcf0      	pop	{r4, r5, r6, r7}
200005f2:	fb00 3302 	mla	r3, r0, r2, r3
200005f6:	425b      	negs	r3, r3
200005f8:	129b      	asrs	r3, r3, #10
200005fa:	604b      	str	r3, [r1, #4]
200005fc:	4770      	bx	lr
200005fe:	bf00      	nop
20000600:	200013d0 	.word	0x200013d0

20000604 <dq_to_abc>:
20000604:	4b1d      	ldr	r3, [pc, #116]	; (2000067c <dq_to_abc+0x78>)
20000606:	b4f0      	push	{r4, r5, r6, r7}
20000608:	680e      	ldr	r6, [r1, #0]
2000060a:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
2000060e:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000612:	fb04 f406 	mul.w	r4, r4, r6
20000616:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000061a:	684f      	ldr	r7, [r1, #4]
2000061c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000620:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000624:	fb07 4415 	mls	r4, r7, r5, r4
20000628:	1524      	asrs	r4, r4, #20
2000062a:	6004      	str	r4, [r0, #0]
2000062c:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000630:	680c      	ldr	r4, [r1, #0]
20000632:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
20000636:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
2000063a:	fb04 f406 	mul.w	r4, r4, r6
2000063e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000642:	684f      	ldr	r7, [r1, #4]
20000644:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000648:	f202 1655 	addw	r6, r2, #341	; 0x155
2000064c:	fb07 4415 	mls	r4, r7, r5, r4
20000650:	1524      	asrs	r4, r4, #20
20000652:	6044      	str	r4, [r0, #4]
20000654:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000658:	680c      	ldr	r4, [r1, #0]
2000065a:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
2000065e:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000662:	fb04 f405 	mul.w	r4, r4, r5
20000666:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000066a:	6849      	ldr	r1, [r1, #4]
2000066c:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
20000670:	fb01 4312 	mls	r3, r1, r2, r4
20000674:	bcf0      	pop	{r4, r5, r6, r7}
20000676:	151b      	asrs	r3, r3, #20
20000678:	6083      	str	r3, [r0, #8]
2000067a:	4770      	bx	lr
2000067c:	200013d0 	.word	0x200013d0

20000680 <cord_atan>:
20000680:	b5f0      	push	{r4, r5, r6, r7, lr}
20000682:	b091      	sub	sp, #68	; 0x44
20000684:	46ee      	mov	lr, sp
20000686:	4684      	mov	ip, r0
20000688:	4e56      	ldr	r6, [pc, #344]	; (200007e4 <cord_atan+0x164>)
2000068a:	460d      	mov	r5, r1
2000068c:	4614      	mov	r4, r2
2000068e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000690:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000694:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000698:	af08      	add	r7, sp, #32
2000069a:	3610      	adds	r6, #16
2000069c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200006a0:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200006a2:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200006a4:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200006a8:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200006ac:	f8dc 6000 	ldr.w	r6, [ip]
200006b0:	f8dc 3004 	ldr.w	r3, [ip, #4]
200006b4:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200006b8:	2b00      	cmp	r3, #0
200006ba:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200006be:	9900      	ldr	r1, [sp, #0]
200006c0:	dd56      	ble.n	20000770 <cord_atan+0xf0>
200006c2:	18d0      	adds	r0, r2, r3
200006c4:	1a9b      	subs	r3, r3, r2
200006c6:	2b00      	cmp	r3, #0
200006c8:	d07a      	beq.n	200007c0 <cord_atan+0x140>
200006ca:	9f01      	ldr	r7, [sp, #4]
200006cc:	dd54      	ble.n	20000778 <cord_atan+0xf8>
200006ce:	eb00 0263 	add.w	r2, r0, r3, asr #1
200006d2:	4439      	add	r1, r7
200006d4:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200006d8:	2b00      	cmp	r3, #0
200006da:	d073      	beq.n	200007c4 <cord_atan+0x144>
200006dc:	9f02      	ldr	r7, [sp, #8]
200006de:	dd51      	ble.n	20000784 <cord_atan+0x104>
200006e0:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200006e4:	4439      	add	r1, r7
200006e6:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200006ea:	2b00      	cmp	r3, #0
200006ec:	d06d      	beq.n	200007ca <cord_atan+0x14a>
200006ee:	9f03      	ldr	r7, [sp, #12]
200006f0:	dd4e      	ble.n	20000790 <cord_atan+0x110>
200006f2:	eb00 02e3 	add.w	r2, r0, r3, asr #3
200006f6:	4439      	add	r1, r7
200006f8:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
200006fc:	2b00      	cmp	r3, #0
200006fe:	d066      	beq.n	200007ce <cord_atan+0x14e>
20000700:	9f04      	ldr	r7, [sp, #16]
20000702:	dd4b      	ble.n	2000079c <cord_atan+0x11c>
20000704:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000708:	4439      	add	r1, r7
2000070a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000070e:	2b00      	cmp	r3, #0
20000710:	d060      	beq.n	200007d4 <cord_atan+0x154>
20000712:	9f05      	ldr	r7, [sp, #20]
20000714:	dd48      	ble.n	200007a8 <cord_atan+0x128>
20000716:	eb00 1263 	add.w	r2, r0, r3, asr #5
2000071a:	4439      	add	r1, r7
2000071c:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000720:	2b00      	cmp	r3, #0
20000722:	d059      	beq.n	200007d8 <cord_atan+0x158>
20000724:	9f06      	ldr	r7, [sp, #24]
20000726:	dd45      	ble.n	200007b4 <cord_atan+0x134>
20000728:	eb02 10a3 	add.w	r0, r2, r3, asr #6
2000072c:	4439      	add	r1, r7
2000072e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000732:	2b00      	cmp	r3, #0
20000734:	d053      	beq.n	200007de <cord_atan+0x15e>
20000736:	9a07      	ldr	r2, [sp, #28]
20000738:	bfc7      	ittee	gt
2000073a:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
2000073e:	1889      	addgt	r1, r1, r2
20000740:	1a89      	suble	r1, r1, r2
20000742:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000746:	2207      	movs	r2, #7
20000748:	ab10      	add	r3, sp, #64	; 0x40
2000074a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000074e:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000752:	2e00      	cmp	r6, #0
20000754:	fb03 f300 	mul.w	r3, r3, r0
20000758:	bfb8      	it	lt
2000075a:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
2000075e:	2900      	cmp	r1, #0
20000760:	bfb8      	it	lt
20000762:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000766:	129b      	asrs	r3, r3, #10
20000768:	6029      	str	r1, [r5, #0]
2000076a:	6023      	str	r3, [r4, #0]
2000076c:	b011      	add	sp, #68	; 0x44
2000076e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000770:	1ad0      	subs	r0, r2, r3
20000772:	4249      	negs	r1, r1
20000774:	4413      	add	r3, r2
20000776:	e7a6      	b.n	200006c6 <cord_atan+0x46>
20000778:	eba0 0263 	sub.w	r2, r0, r3, asr #1
2000077c:	1bc9      	subs	r1, r1, r7
2000077e:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000782:	e7a9      	b.n	200006d8 <cord_atan+0x58>
20000784:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000788:	1bc9      	subs	r1, r1, r7
2000078a:	eb03 03a2 	add.w	r3, r3, r2, asr #2
2000078e:	e7ac      	b.n	200006ea <cord_atan+0x6a>
20000790:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000794:	1bc9      	subs	r1, r1, r7
20000796:	eb03 03e0 	add.w	r3, r3, r0, asr #3
2000079a:	e7af      	b.n	200006fc <cord_atan+0x7c>
2000079c:	eba2 1023 	sub.w	r0, r2, r3, asr #4
200007a0:	1bc9      	subs	r1, r1, r7
200007a2:	eb03 1322 	add.w	r3, r3, r2, asr #4
200007a6:	e7b2      	b.n	2000070e <cord_atan+0x8e>
200007a8:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200007ac:	1bc9      	subs	r1, r1, r7
200007ae:	eb03 1360 	add.w	r3, r3, r0, asr #5
200007b2:	e7b5      	b.n	20000720 <cord_atan+0xa0>
200007b4:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
200007b8:	1bc9      	subs	r1, r1, r7
200007ba:	eb03 13a2 	add.w	r3, r3, r2, asr #6
200007be:	e7b8      	b.n	20000732 <cord_atan+0xb2>
200007c0:	461a      	mov	r2, r3
200007c2:	e7c1      	b.n	20000748 <cord_atan+0xc8>
200007c4:	4610      	mov	r0, r2
200007c6:	2201      	movs	r2, #1
200007c8:	e7be      	b.n	20000748 <cord_atan+0xc8>
200007ca:	2202      	movs	r2, #2
200007cc:	e7bc      	b.n	20000748 <cord_atan+0xc8>
200007ce:	4610      	mov	r0, r2
200007d0:	2203      	movs	r2, #3
200007d2:	e7b9      	b.n	20000748 <cord_atan+0xc8>
200007d4:	2204      	movs	r2, #4
200007d6:	e7b7      	b.n	20000748 <cord_atan+0xc8>
200007d8:	4610      	mov	r0, r2
200007da:	2205      	movs	r2, #5
200007dc:	e7b4      	b.n	20000748 <cord_atan+0xc8>
200007de:	2206      	movs	r2, #6
200007e0:	e7b2      	b.n	20000748 <cord_atan+0xc8>
200007e2:	bf00      	nop
200007e4:	20001390 	.word	0x20001390

200007e8 <sinpwm>:
200007e8:	b5f0      	push	{r4, r5, r6, r7, lr}
200007ea:	b091      	sub	sp, #68	; 0x44
200007ec:	46ee      	mov	lr, sp
200007ee:	468c      	mov	ip, r1
200007f0:	4e6e      	ldr	r6, [pc, #440]	; (200009ac <sinpwm+0x1c4>)
200007f2:	4604      	mov	r4, r0
200007f4:	4615      	mov	r5, r2
200007f6:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200007f8:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200007fc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000800:	af08      	add	r7, sp, #32
20000802:	3610      	adds	r6, #16
20000804:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000808:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2000080a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
2000080c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000810:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000814:	f8dc 6000 	ldr.w	r6, [ip]
20000818:	f8dc 3004 	ldr.w	r3, [ip, #4]
2000081c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000820:	2b00      	cmp	r3, #0
20000822:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000826:	9900      	ldr	r1, [sp, #0]
20000828:	f340 8087 	ble.w	2000093a <sinpwm+0x152>
2000082c:	18d0      	adds	r0, r2, r3
2000082e:	1a9b      	subs	r3, r3, r2
20000830:	2b00      	cmp	r3, #0
20000832:	f000 80aa 	beq.w	2000098a <sinpwm+0x1a2>
20000836:	9f01      	ldr	r7, [sp, #4]
20000838:	f340 8083 	ble.w	20000942 <sinpwm+0x15a>
2000083c:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000840:	4439      	add	r1, r7
20000842:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000846:	2b00      	cmp	r3, #0
20000848:	f000 80a1 	beq.w	2000098e <sinpwm+0x1a6>
2000084c:	9f02      	ldr	r7, [sp, #8]
2000084e:	dd7e      	ble.n	2000094e <sinpwm+0x166>
20000850:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000854:	4439      	add	r1, r7
20000856:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
2000085a:	2b00      	cmp	r3, #0
2000085c:	f000 809a 	beq.w	20000994 <sinpwm+0x1ac>
20000860:	9f03      	ldr	r7, [sp, #12]
20000862:	dd7a      	ble.n	2000095a <sinpwm+0x172>
20000864:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000868:	4439      	add	r1, r7
2000086a:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
2000086e:	2b00      	cmp	r3, #0
20000870:	f000 8092 	beq.w	20000998 <sinpwm+0x1b0>
20000874:	9f04      	ldr	r7, [sp, #16]
20000876:	dd76      	ble.n	20000966 <sinpwm+0x17e>
20000878:	eb02 1023 	add.w	r0, r2, r3, asr #4
2000087c:	4439      	add	r1, r7
2000087e:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000882:	2b00      	cmp	r3, #0
20000884:	f000 808b 	beq.w	2000099e <sinpwm+0x1b6>
20000888:	9f05      	ldr	r7, [sp, #20]
2000088a:	dd72      	ble.n	20000972 <sinpwm+0x18a>
2000088c:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000890:	4439      	add	r1, r7
20000892:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000896:	2b00      	cmp	r3, #0
20000898:	f000 8083 	beq.w	200009a2 <sinpwm+0x1ba>
2000089c:	9f06      	ldr	r7, [sp, #24]
2000089e:	dd6e      	ble.n	2000097e <sinpwm+0x196>
200008a0:	eb02 10a3 	add.w	r0, r2, r3, asr #6
200008a4:	4439      	add	r1, r7
200008a6:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
200008aa:	2b00      	cmp	r3, #0
200008ac:	d07c      	beq.n	200009a8 <sinpwm+0x1c0>
200008ae:	9a07      	ldr	r2, [sp, #28]
200008b0:	bfc7      	ittee	gt
200008b2:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
200008b6:	1889      	addgt	r1, r1, r2
200008b8:	1a89      	suble	r1, r1, r2
200008ba:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
200008be:	2207      	movs	r2, #7
200008c0:	ab10      	add	r3, sp, #64	; 0x40
200008c2:	eb03 0282 	add.w	r2, r3, r2, lsl #2
200008c6:	f852 3c20 	ldr.w	r3, [r2, #-32]
200008ca:	2e00      	cmp	r6, #0
200008cc:	fb03 f300 	mul.w	r3, r3, r0
200008d0:	bfb8      	it	lt
200008d2:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
200008d6:	2900      	cmp	r1, #0
200008d8:	bfb8      	it	lt
200008da:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
200008de:	151b      	asrs	r3, r3, #20
200008e0:	440d      	add	r5, r1
200008e2:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
200008e6:	f3c5 0509 	ubfx	r5, r5, #0, #10
200008ea:	dd22      	ble.n	20000932 <sinpwm+0x14a>
200008ec:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 200009b4 <sinpwm+0x1cc>
200008f0:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
200008f4:	2001      	movs	r0, #1
200008f6:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
200008fa:	4f2d      	ldr	r7, [pc, #180]	; (200009b0 <sinpwm+0x1c8>)
200008fc:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
20000900:	3602      	adds	r6, #2
20000902:	f3ce 0e09 	ubfx	lr, lr, #0, #10
20000906:	f3c6 0609 	ubfx	r6, r6, #0, #10
2000090a:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
2000090e:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
20000912:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
20000916:	fb06 f50c 	mul.w	r5, r6, ip
2000091a:	fb01 f10c 	mul.w	r1, r1, ip
2000091e:	fb02 f303 	mul.w	r3, r2, r3
20000922:	12ad      	asrs	r5, r5, #10
20000924:	128a      	asrs	r2, r1, #10
20000926:	129b      	asrs	r3, r3, #10
20000928:	60a5      	str	r5, [r4, #8]
2000092a:	6062      	str	r2, [r4, #4]
2000092c:	6023      	str	r3, [r4, #0]
2000092e:	b011      	add	sp, #68	; 0x44
20000930:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000932:	f1c3 0c00 	rsb	ip, r3, #0
20000936:	2000      	movs	r0, #0
20000938:	e7dd      	b.n	200008f6 <sinpwm+0x10e>
2000093a:	1ad0      	subs	r0, r2, r3
2000093c:	4249      	negs	r1, r1
2000093e:	4413      	add	r3, r2
20000940:	e776      	b.n	20000830 <sinpwm+0x48>
20000942:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000946:	1bc9      	subs	r1, r1, r7
20000948:	eb03 0360 	add.w	r3, r3, r0, asr #1
2000094c:	e77b      	b.n	20000846 <sinpwm+0x5e>
2000094e:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000952:	1bc9      	subs	r1, r1, r7
20000954:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000958:	e77f      	b.n	2000085a <sinpwm+0x72>
2000095a:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
2000095e:	1bc9      	subs	r1, r1, r7
20000960:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000964:	e783      	b.n	2000086e <sinpwm+0x86>
20000966:	eba2 1023 	sub.w	r0, r2, r3, asr #4
2000096a:	1bc9      	subs	r1, r1, r7
2000096c:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000970:	e787      	b.n	20000882 <sinpwm+0x9a>
20000972:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000976:	1bc9      	subs	r1, r1, r7
20000978:	eb03 1360 	add.w	r3, r3, r0, asr #5
2000097c:	e78b      	b.n	20000896 <sinpwm+0xae>
2000097e:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000982:	1bc9      	subs	r1, r1, r7
20000984:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000988:	e78f      	b.n	200008aa <sinpwm+0xc2>
2000098a:	461a      	mov	r2, r3
2000098c:	e798      	b.n	200008c0 <sinpwm+0xd8>
2000098e:	4610      	mov	r0, r2
20000990:	2201      	movs	r2, #1
20000992:	e795      	b.n	200008c0 <sinpwm+0xd8>
20000994:	2202      	movs	r2, #2
20000996:	e793      	b.n	200008c0 <sinpwm+0xd8>
20000998:	4610      	mov	r0, r2
2000099a:	2203      	movs	r2, #3
2000099c:	e790      	b.n	200008c0 <sinpwm+0xd8>
2000099e:	2204      	movs	r2, #4
200009a0:	e78e      	b.n	200008c0 <sinpwm+0xd8>
200009a2:	4610      	mov	r0, r2
200009a4:	2205      	movs	r2, #5
200009a6:	e78b      	b.n	200008c0 <sinpwm+0xd8>
200009a8:	2206      	movs	r2, #6
200009aa:	e789      	b.n	200008c0 <sinpwm+0xd8>
200009ac:	20001390 	.word	0x20001390
200009b0:	200013d0 	.word	0x200013d0
200009b4:	fffffe0c 	.word	0xfffffe0c

200009b8 <svpwm>:
200009b8:	b5f0      	push	{r4, r5, r6, r7, lr}
200009ba:	b091      	sub	sp, #68	; 0x44
200009bc:	46ee      	mov	lr, sp
200009be:	468c      	mov	ip, r1
200009c0:	4eb8      	ldr	r6, [pc, #736]	; (20000ca4 <svpwm+0x2ec>)
200009c2:	4604      	mov	r4, r0
200009c4:	4615      	mov	r5, r2
200009c6:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200009c8:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200009cc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200009d0:	af08      	add	r7, sp, #32
200009d2:	3610      	adds	r6, #16
200009d4:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200009d8:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200009da:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200009dc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200009e0:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200009e4:	f8dc 6000 	ldr.w	r6, [ip]
200009e8:	f8dc 3004 	ldr.w	r3, [ip, #4]
200009ec:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200009f0:	2b00      	cmp	r3, #0
200009f2:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200009f6:	9900      	ldr	r1, [sp, #0]
200009f8:	dd6f      	ble.n	20000ada <svpwm+0x122>
200009fa:	18d0      	adds	r0, r2, r3
200009fc:	1a9b      	subs	r3, r3, r2
200009fe:	2b00      	cmp	r3, #0
20000a00:	f000 813f 	beq.w	20000c82 <svpwm+0x2ca>
20000a04:	9f01      	ldr	r7, [sp, #4]
20000a06:	dd6c      	ble.n	20000ae2 <svpwm+0x12a>
20000a08:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000a0c:	4439      	add	r1, r7
20000a0e:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000a12:	2b00      	cmp	r3, #0
20000a14:	f000 8137 	beq.w	20000c86 <svpwm+0x2ce>
20000a18:	9f02      	ldr	r7, [sp, #8]
20000a1a:	dd68      	ble.n	20000aee <svpwm+0x136>
20000a1c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000a20:	4439      	add	r1, r7
20000a22:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000a26:	2b00      	cmp	r3, #0
20000a28:	f000 8130 	beq.w	20000c8c <svpwm+0x2d4>
20000a2c:	9f03      	ldr	r7, [sp, #12]
20000a2e:	dd64      	ble.n	20000afa <svpwm+0x142>
20000a30:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000a34:	4439      	add	r1, r7
20000a36:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000a3a:	2b00      	cmp	r3, #0
20000a3c:	f000 8128 	beq.w	20000c90 <svpwm+0x2d8>
20000a40:	9f04      	ldr	r7, [sp, #16]
20000a42:	dd60      	ble.n	20000b06 <svpwm+0x14e>
20000a44:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000a48:	4439      	add	r1, r7
20000a4a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000a4e:	2b00      	cmp	r3, #0
20000a50:	f000 8121 	beq.w	20000c96 <svpwm+0x2de>
20000a54:	9f05      	ldr	r7, [sp, #20]
20000a56:	dd5c      	ble.n	20000b12 <svpwm+0x15a>
20000a58:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000a5c:	4439      	add	r1, r7
20000a5e:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000a62:	2b00      	cmp	r3, #0
20000a64:	f000 8119 	beq.w	20000c9a <svpwm+0x2e2>
20000a68:	9f06      	ldr	r7, [sp, #24]
20000a6a:	dd58      	ble.n	20000b1e <svpwm+0x166>
20000a6c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000a70:	4439      	add	r1, r7
20000a72:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000a76:	2b00      	cmp	r3, #0
20000a78:	f000 8112 	beq.w	20000ca0 <svpwm+0x2e8>
20000a7c:	9a07      	ldr	r2, [sp, #28]
20000a7e:	bfc7      	ittee	gt
20000a80:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000a84:	1889      	addgt	r1, r1, r2
20000a86:	1a89      	suble	r1, r1, r2
20000a88:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000a8c:	2207      	movs	r2, #7
20000a8e:	ab10      	add	r3, sp, #64	; 0x40
20000a90:	2e00      	cmp	r6, #0
20000a92:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000a96:	bfb8      	it	lt
20000a98:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000a9c:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000aa0:	2900      	cmp	r1, #0
20000aa2:	fb03 f300 	mul.w	r3, r3, r0
20000aa6:	bfb8      	it	lt
20000aa8:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000aac:	440d      	add	r5, r1
20000aae:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000ab2:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20000ab6:	151b      	asrs	r3, r3, #20
20000ab8:	1252      	asrs	r2, r2, #9
20000aba:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000abe:	f102 32ff 	add.w	r2, r2, #4294967295
20000ac2:	bfc6      	itte	gt
20000ac4:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20000ac8:	2001      	movgt	r0, #1
20000aca:	2000      	movle	r0, #0
20000acc:	2a04      	cmp	r2, #4
20000ace:	d848      	bhi.n	20000b62 <svpwm+0x1aa>
20000ad0:	e8df f002 	tbb	[pc, r2]
20000ad4:	2b9e8164 	.word	0x2b9e8164
20000ad8:	bb          	.byte	0xbb
20000ad9:	00          	.byte	0x00
20000ada:	1ad0      	subs	r0, r2, r3
20000adc:	4249      	negs	r1, r1
20000ade:	4413      	add	r3, r2
20000ae0:	e78d      	b.n	200009fe <svpwm+0x46>
20000ae2:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000ae6:	1bc9      	subs	r1, r1, r7
20000ae8:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000aec:	e791      	b.n	20000a12 <svpwm+0x5a>
20000aee:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000af2:	1bc9      	subs	r1, r1, r7
20000af4:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000af8:	e795      	b.n	20000a26 <svpwm+0x6e>
20000afa:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000afe:	1bc9      	subs	r1, r1, r7
20000b00:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000b04:	e799      	b.n	20000a3a <svpwm+0x82>
20000b06:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000b0a:	1bc9      	subs	r1, r1, r7
20000b0c:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000b10:	e79d      	b.n	20000a4e <svpwm+0x96>
20000b12:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000b16:	1bc9      	subs	r1, r1, r7
20000b18:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000b1c:	e7a1      	b.n	20000a62 <svpwm+0xaa>
20000b1e:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000b22:	1bc9      	subs	r1, r1, r7
20000b24:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000b28:	e7a5      	b.n	20000a76 <svpwm+0xbe>
20000b2a:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
20000b2e:	4e5e      	ldr	r6, [pc, #376]	; (20000ca8 <svpwm+0x2f0>)
20000b30:	3204      	adds	r2, #4
20000b32:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000b36:	3556      	adds	r5, #86	; 0x56
20000b38:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000b3c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000b40:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000b44:	fb01 f103 	mul.w	r1, r1, r3
20000b48:	fb02 f203 	mul.w	r2, r2, r3
20000b4c:	1289      	asrs	r1, r1, #10
20000b4e:	1293      	asrs	r3, r2, #10
20000b50:	424a      	negs	r2, r1
20000b52:	1ad2      	subs	r2, r2, r3
20000b54:	1a5d      	subs	r5, r3, r1
20000b56:	440b      	add	r3, r1
20000b58:	6062      	str	r2, [r4, #4]
20000b5a:	6025      	str	r5, [r4, #0]
20000b5c:	60a3      	str	r3, [r4, #8]
20000b5e:	b011      	add	sp, #68	; 0x44
20000b60:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000b62:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000b66:	4e50      	ldr	r6, [pc, #320]	; (20000ca8 <svpwm+0x2f0>)
20000b68:	3202      	adds	r2, #2
20000b6a:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000b6e:	f505 7540 	add.w	r5, r5, #768	; 0x300
20000b72:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000b76:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000b7a:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000b7e:	fb01 f103 	mul.w	r1, r1, r3
20000b82:	fb02 f203 	mul.w	r2, r2, r3
20000b86:	1289      	asrs	r1, r1, #10
20000b88:	1293      	asrs	r3, r2, #10
20000b8a:	424a      	negs	r2, r1
20000b8c:	1ad2      	subs	r2, r2, r3
20000b8e:	18cd      	adds	r5, r1, r3
20000b90:	1a5b      	subs	r3, r3, r1
20000b92:	60a2      	str	r2, [r4, #8]
20000b94:	6025      	str	r5, [r4, #0]
20000b96:	6063      	str	r3, [r4, #4]
20000b98:	b011      	add	sp, #68	; 0x44
20000b9a:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000b9c:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20000ba0:	4e41      	ldr	r6, [pc, #260]	; (20000ca8 <svpwm+0x2f0>)
20000ba2:	3204      	adds	r2, #4
20000ba4:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000ba8:	f205 2556 	addw	r5, r5, #598	; 0x256
20000bac:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000bb0:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000bb4:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000bb8:	fb01 f103 	mul.w	r1, r1, r3
20000bbc:	fb02 f203 	mul.w	r2, r2, r3
20000bc0:	1289      	asrs	r1, r1, #10
20000bc2:	1293      	asrs	r3, r2, #10
20000bc4:	424a      	negs	r2, r1
20000bc6:	1ad2      	subs	r2, r2, r3
20000bc8:	1acd      	subs	r5, r1, r3
20000bca:	440b      	add	r3, r1
20000bcc:	60a2      	str	r2, [r4, #8]
20000bce:	6025      	str	r5, [r4, #0]
20000bd0:	6063      	str	r3, [r4, #4]
20000bd2:	b011      	add	sp, #68	; 0x44
20000bd4:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000bd6:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20000bda:	4e33      	ldr	r6, [pc, #204]	; (20000ca8 <svpwm+0x2f0>)
20000bdc:	320f      	adds	r2, #15
20000bde:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000be2:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20000be6:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000bea:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000bee:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000bf2:	fb01 f103 	mul.w	r1, r1, r3
20000bf6:	fb02 f203 	mul.w	r2, r2, r3
20000bfa:	1289      	asrs	r1, r1, #10
20000bfc:	1293      	asrs	r3, r2, #10
20000bfe:	424a      	negs	r2, r1
20000c00:	1ad2      	subs	r2, r2, r3
20000c02:	18cd      	adds	r5, r1, r3
20000c04:	1a5b      	subs	r3, r3, r1
20000c06:	e884 0024 	stmia.w	r4, {r2, r5}
20000c0a:	60a3      	str	r3, [r4, #8]
20000c0c:	b011      	add	sp, #68	; 0x44
20000c0e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000c10:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20000c14:	4e24      	ldr	r6, [pc, #144]	; (20000ca8 <svpwm+0x2f0>)
20000c16:	320a      	adds	r2, #10
20000c18:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000c1c:	f505 7580 	add.w	r5, r5, #256	; 0x100
20000c20:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000c24:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c28:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000c2c:	fb01 f103 	mul.w	r1, r1, r3
20000c30:	fb02 f203 	mul.w	r2, r2, r3
20000c34:	1289      	asrs	r1, r1, #10
20000c36:	1293      	asrs	r3, r2, #10
20000c38:	424a      	negs	r2, r1
20000c3a:	1ad2      	subs	r2, r2, r3
20000c3c:	1acd      	subs	r5, r1, r3
20000c3e:	440b      	add	r3, r1
20000c40:	e884 0024 	stmia.w	r4, {r2, r5}
20000c44:	60a3      	str	r3, [r4, #8]
20000c46:	b011      	add	sp, #68	; 0x44
20000c48:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000c4a:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000c4e:	4916      	ldr	r1, [pc, #88]	; (20000ca8 <svpwm+0x2f0>)
20000c50:	320f      	adds	r2, #15
20000c52:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000c56:	3d55      	subs	r5, #85	; 0x55
20000c58:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000c5c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c60:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000c64:	fb02 f203 	mul.w	r2, r2, r3
20000c68:	fb01 f303 	mul.w	r3, r1, r3
20000c6c:	1292      	asrs	r2, r2, #10
20000c6e:	129b      	asrs	r3, r3, #10
20000c70:	4251      	negs	r1, r2
20000c72:	18d5      	adds	r5, r2, r3
20000c74:	1ac9      	subs	r1, r1, r3
20000c76:	1ad2      	subs	r2, r2, r3
20000c78:	6061      	str	r1, [r4, #4]
20000c7a:	6025      	str	r5, [r4, #0]
20000c7c:	60a2      	str	r2, [r4, #8]
20000c7e:	b011      	add	sp, #68	; 0x44
20000c80:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000c82:	461a      	mov	r2, r3
20000c84:	e703      	b.n	20000a8e <svpwm+0xd6>
20000c86:	4610      	mov	r0, r2
20000c88:	2201      	movs	r2, #1
20000c8a:	e700      	b.n	20000a8e <svpwm+0xd6>
20000c8c:	2202      	movs	r2, #2
20000c8e:	e6fe      	b.n	20000a8e <svpwm+0xd6>
20000c90:	4610      	mov	r0, r2
20000c92:	2203      	movs	r2, #3
20000c94:	e6fb      	b.n	20000a8e <svpwm+0xd6>
20000c96:	2204      	movs	r2, #4
20000c98:	e6f9      	b.n	20000a8e <svpwm+0xd6>
20000c9a:	4610      	mov	r0, r2
20000c9c:	2205      	movs	r2, #5
20000c9e:	e6f6      	b.n	20000a8e <svpwm+0xd6>
20000ca0:	2206      	movs	r2, #6
20000ca2:	e6f4      	b.n	20000a8e <svpwm+0xd6>
20000ca4:	20001390 	.word	0x20001390
20000ca8:	200013d0 	.word	0x200013d0

20000cac <get_speed>:
20000cac:	4a0e      	ldr	r2, [pc, #56]	; (20000ce8 <get_speed+0x3c>)
20000cae:	b430      	push	{r4, r5}
20000cb0:	e892 0028 	ldmia.w	r2, {r3, r5}
20000cb4:	1ac3      	subs	r3, r0, r3
20000cb6:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20000cba:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
20000cbe:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
20000cc2:	6015      	str	r5, [r2, #0]
20000cc4:	6050      	str	r0, [r2, #4]
20000cc6:	dd05      	ble.n	20000cd4 <get_speed+0x28>
20000cc8:	2b00      	cmp	r3, #0
20000cca:	bfb4      	ite	lt
20000ccc:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
20000cd0:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20000cd4:	4a05      	ldr	r2, [pc, #20]	; (20000cec <get_speed+0x40>)
20000cd6:	1058      	asrs	r0, r3, #1
20000cd8:	fb02 f000 	mul.w	r0, r2, r0
20000cdc:	bc30      	pop	{r4, r5}
20000cde:	680a      	ldr	r2, [r1, #0]
20000ce0:	1300      	asrs	r0, r0, #12
20000ce2:	4413      	add	r3, r2
20000ce4:	600b      	str	r3, [r1, #0]
20000ce6:	4770      	bx	lr
20000ce8:	20002418 	.word	0x20002418
20000cec:	0002ae7c 	.word	0x0002ae7c

20000cf0 <mfilter>:
20000cf0:	4908      	ldr	r1, [pc, #32]	; (20000d14 <mfilter+0x24>)
20000cf2:	b430      	push	{r4, r5}
20000cf4:	688a      	ldr	r2, [r1, #8]
20000cf6:	68cb      	ldr	r3, [r1, #12]
20000cf8:	3201      	adds	r2, #1
20000cfa:	f002 021f 	and.w	r2, r2, #31
20000cfe:	eb01 0482 	add.w	r4, r1, r2, lsl #2
20000d02:	6925      	ldr	r5, [r4, #16]
20000d04:	608a      	str	r2, [r1, #8]
20000d06:	1b5b      	subs	r3, r3, r5
20000d08:	4403      	add	r3, r0
20000d0a:	6120      	str	r0, [r4, #16]
20000d0c:	60cb      	str	r3, [r1, #12]
20000d0e:	1158      	asrs	r0, r3, #5
20000d10:	bc30      	pop	{r4, r5}
20000d12:	4770      	bx	lr
20000d14:	20002418 	.word	0x20002418

20000d18 <rfilter1>:
20000d18:	b470      	push	{r4, r5, r6}
20000d1a:	f240 74c6 	movw	r4, #1990	; 0x7c6
20000d1e:	4b12      	ldr	r3, [pc, #72]	; (20000d68 <rfilter1+0x50>)
20000d20:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20000d24:	f8d3 6090 	ldr.w	r6, [r3, #144]	; 0x90
20000d28:	f8d3 1098 	ldr.w	r1, [r3, #152]	; 0x98
20000d2c:	fb04 f406 	mul.w	r4, r4, r6
20000d30:	fb02 4201 	mla	r2, r2, r1, r4
20000d34:	490d      	ldr	r1, [pc, #52]	; (20000d6c <rfilter1+0x54>)
20000d36:	f8d3 5094 	ldr.w	r5, [r3, #148]	; 0x94
20000d3a:	fb01 2200 	mla	r2, r1, r0, r2
20000d3e:	4c0c      	ldr	r4, [pc, #48]	; (20000d70 <rfilter1+0x58>)
20000d40:	f8d3 109c 	ldr.w	r1, [r3, #156]	; 0x9c
20000d44:	fb04 2205 	mla	r2, r4, r5, r2
20000d48:	4c0a      	ldr	r4, [pc, #40]	; (20000d74 <rfilter1+0x5c>)
20000d4a:	f8c3 6098 	str.w	r6, [r3, #152]	; 0x98
20000d4e:	fb04 2201 	mla	r2, r4, r1, r2
20000d52:	1291      	asrs	r1, r2, #10
20000d54:	f8c3 0094 	str.w	r0, [r3, #148]	; 0x94
20000d58:	f8c3 509c 	str.w	r5, [r3, #156]	; 0x9c
20000d5c:	1490      	asrs	r0, r2, #18
20000d5e:	f8c3 1090 	str.w	r1, [r3, #144]	; 0x90
20000d62:	bc70      	pop	{r4, r5, r6}
20000d64:	4770      	bx	lr
20000d66:	bf00      	nop
20000d68:	20002418 	.word	0x20002418
20000d6c:	0003f0a4 	.word	0x0003f0a4
20000d70:	fff83a2e 	.word	0xfff83a2e
20000d74:	0003dc29 	.word	0x0003dc29

20000d78 <rfilter2>:
20000d78:	b470      	push	{r4, r5, r6}
20000d7a:	f240 748a 	movw	r4, #1930	; 0x78a
20000d7e:	4b11      	ldr	r3, [pc, #68]	; (20000dc4 <rfilter2+0x4c>)
20000d80:	4a11      	ldr	r2, [pc, #68]	; (20000dc8 <rfilter2+0x50>)
20000d82:	f8d3 60a0 	ldr.w	r6, [r3, #160]	; 0xa0
20000d86:	f8d3 10a8 	ldr.w	r1, [r3, #168]	; 0xa8
20000d8a:	fb04 f406 	mul.w	r4, r4, r6
20000d8e:	fb02 4201 	mla	r2, r2, r1, r4
20000d92:	490e      	ldr	r1, [pc, #56]	; (20000dcc <rfilter2+0x54>)
20000d94:	f8d3 50a4 	ldr.w	r5, [r3, #164]	; 0xa4
20000d98:	fb01 2200 	mla	r2, r1, r0, r2
20000d9c:	4c0c      	ldr	r4, [pc, #48]	; (20000dd0 <rfilter2+0x58>)
20000d9e:	f8d3 10ac 	ldr.w	r1, [r3, #172]	; 0xac
20000da2:	fb04 2205 	mla	r2, r4, r5, r2
20000da6:	4c0b      	ldr	r4, [pc, #44]	; (20000dd4 <rfilter2+0x5c>)
20000da8:	f8c3 60a8 	str.w	r6, [r3, #168]	; 0xa8
20000dac:	fb04 2201 	mla	r2, r4, r1, r2
20000db0:	1291      	asrs	r1, r2, #10
20000db2:	f8c3 00a4 	str.w	r0, [r3, #164]	; 0xa4
20000db6:	f8c3 50ac 	str.w	r5, [r3, #172]	; 0xac
20000dba:	1490      	asrs	r0, r2, #18
20000dbc:	f8c3 10a0 	str.w	r1, [r3, #160]	; 0xa0
20000dc0:	bc70      	pop	{r4, r5, r6}
20000dc2:	4770      	bx	lr
20000dc4:	20002418 	.word	0x20002418
20000dc8:	fffffc66 	.word	0xfffffc66
20000dcc:	0003e3d7 	.word	0x0003e3d7
20000dd0:	fff8767b 	.word	0xfff8767b
20000dd4:	0003b5c3 	.word	0x0003b5c3

20000dd8 <adc_init>:
20000dd8:	b480      	push	{r7}
20000dda:	af00      	add	r7, sp, #0
20000ddc:	4a10      	ldr	r2, [pc, #64]	; (20000e20 <adc_init+0x48>)
20000dde:	4b10      	ldr	r3, [pc, #64]	; (20000e20 <adc_init+0x48>)
20000de0:	69db      	ldr	r3, [r3, #28]
20000de2:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000de6:	61d3      	str	r3, [r2, #28]
20000de8:	4b0d      	ldr	r3, [pc, #52]	; (20000e20 <adc_init+0x48>)
20000dea:	f242 0220 	movw	r2, #8224	; 0x2020
20000dee:	615a      	str	r2, [r3, #20]
20000df0:	4b0c      	ldr	r3, [pc, #48]	; (20000e24 <adc_init+0x4c>)
20000df2:	2200      	movs	r2, #0
20000df4:	601a      	str	r2, [r3, #0]
20000df6:	4a0b      	ldr	r2, [pc, #44]	; (20000e24 <adc_init+0x4c>)
20000df8:	4b0a      	ldr	r3, [pc, #40]	; (20000e24 <adc_init+0x4c>)
20000dfa:	681b      	ldr	r3, [r3, #0]
20000dfc:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20000e00:	f043 0301 	orr.w	r3, r3, #1
20000e04:	6013      	str	r3, [r2, #0]
20000e06:	4a07      	ldr	r2, [pc, #28]	; (20000e24 <adc_init+0x4c>)
20000e08:	4b06      	ldr	r3, [pc, #24]	; (20000e24 <adc_init+0x4c>)
20000e0a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20000e0c:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
20000e10:	6293      	str	r3, [r2, #40]	; 0x28
20000e12:	4b04      	ldr	r3, [pc, #16]	; (20000e24 <adc_init+0x4c>)
20000e14:	2210      	movs	r2, #16
20000e16:	621a      	str	r2, [r3, #32]
20000e18:	bf00      	nop
20000e1a:	46bd      	mov	sp, r7
20000e1c:	bc80      	pop	{r7}
20000e1e:	4770      	bx	lr
20000e20:	40020000 	.word	0x40020000
20000e24:	40088000 	.word	0x40088000

20000e28 <dma_init>:
20000e28:	b480      	push	{r7}
20000e2a:	af00      	add	r7, sp, #0
20000e2c:	4a17      	ldr	r2, [pc, #92]	; (20000e8c <dma_init+0x64>)
20000e2e:	4b17      	ldr	r3, [pc, #92]	; (20000e8c <dma_init+0x64>)
20000e30:	69db      	ldr	r3, [r3, #28]
20000e32:	f043 0320 	orr.w	r3, r3, #32
20000e36:	61d3      	str	r3, [r2, #28]
20000e38:	4b15      	ldr	r3, [pc, #84]	; (20000e90 <dma_init+0x68>)
20000e3a:	4a16      	ldr	r2, [pc, #88]	; (20000e94 <dma_init+0x6c>)
20000e3c:	609a      	str	r2, [r3, #8]
20000e3e:	4b14      	ldr	r3, [pc, #80]	; (20000e90 <dma_init+0x68>)
20000e40:	f04f 32ff 	mov.w	r2, #4294967295
20000e44:	62da      	str	r2, [r3, #44]	; 0x2c
20000e46:	4b12      	ldr	r3, [pc, #72]	; (20000e90 <dma_init+0x68>)
20000e48:	f04f 32ff 	mov.w	r2, #4294967295
20000e4c:	621a      	str	r2, [r3, #32]
20000e4e:	4b10      	ldr	r3, [pc, #64]	; (20000e90 <dma_init+0x68>)
20000e50:	f04f 32ff 	mov.w	r2, #4294967295
20000e54:	635a      	str	r2, [r3, #52]	; 0x34
20000e56:	4b0e      	ldr	r3, [pc, #56]	; (20000e90 <dma_init+0x68>)
20000e58:	f44f 7280 	mov.w	r2, #256	; 0x100
20000e5c:	61da      	str	r2, [r3, #28]
20000e5e:	4b0c      	ldr	r3, [pc, #48]	; (20000e90 <dma_init+0x68>)
20000e60:	f44f 7280 	mov.w	r2, #256	; 0x100
20000e64:	625a      	str	r2, [r3, #36]	; 0x24
20000e66:	4b0a      	ldr	r3, [pc, #40]	; (20000e90 <dma_init+0x68>)
20000e68:	2201      	movs	r2, #1
20000e6a:	605a      	str	r2, [r3, #4]
20000e6c:	4b09      	ldr	r3, [pc, #36]	; (20000e94 <dma_init+0x6c>)
20000e6e:	4a0a      	ldr	r2, [pc, #40]	; (20000e98 <dma_init+0x70>)
20000e70:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20000e74:	4a09      	ldr	r2, [pc, #36]	; (20000e9c <dma_init+0x74>)
20000e76:	4b07      	ldr	r3, [pc, #28]	; (20000e94 <dma_init+0x6c>)
20000e78:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20000e7c:	4b05      	ldr	r3, [pc, #20]	; (20000e94 <dma_init+0x6c>)
20000e7e:	4a08      	ldr	r2, [pc, #32]	; (20000ea0 <dma_init+0x78>)
20000e80:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000e84:	bf00      	nop
20000e86:	46bd      	mov	sp, r7
20000e88:	bc80      	pop	{r7}
20000e8a:	4770      	bx	lr
20000e8c:	40020000 	.word	0x40020000
20000e90:	40028000 	.word	0x40028000
20000e94:	20002800 	.word	0x20002800
20000e98:	40088018 	.word	0x40088018
20000e9c:	20002a04 	.word	0x20002a04
20000ea0:	ae000011 	.word	0xae000011

20000ea4 <adc_dma_init>:
20000ea4:	b580      	push	{r7, lr}
20000ea6:	af00      	add	r7, sp, #0
20000ea8:	f7ff ff96 	bl	20000dd8 <adc_init>
20000eac:	f7ff ffbc 	bl	20000e28 <dma_init>
20000eb0:	bf00      	nop
20000eb2:	bd80      	pop	{r7, pc}

20000eb4 <adc_dma_start>:
20000eb4:	b480      	push	{r7}
20000eb6:	af00      	add	r7, sp, #0
20000eb8:	4a06      	ldr	r2, [pc, #24]	; (20000ed4 <adc_dma_start+0x20>)
20000eba:	4b06      	ldr	r3, [pc, #24]	; (20000ed4 <adc_dma_start+0x20>)
20000ebc:	681b      	ldr	r3, [r3, #0]
20000ebe:	f043 0308 	orr.w	r3, r3, #8
20000ec2:	6013      	str	r3, [r2, #0]
20000ec4:	4b04      	ldr	r3, [pc, #16]	; (20000ed8 <adc_dma_start+0x24>)
20000ec6:	f44f 7280 	mov.w	r2, #256	; 0x100
20000eca:	629a      	str	r2, [r3, #40]	; 0x28
20000ecc:	bf00      	nop
20000ece:	46bd      	mov	sp, r7
20000ed0:	bc80      	pop	{r7}
20000ed2:	4770      	bx	lr
20000ed4:	40088000 	.word	0x40088000
20000ed8:	40028000 	.word	0x40028000

20000edc <adc_dma_wait>:
20000edc:	b480      	push	{r7}
20000ede:	af00      	add	r7, sp, #0
20000ee0:	bf00      	nop
20000ee2:	4b0a      	ldr	r3, [pc, #40]	; (20000f0c <adc_dma_wait+0x30>)
20000ee4:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20000ee8:	f003 0307 	and.w	r3, r3, #7
20000eec:	2b00      	cmp	r3, #0
20000eee:	d1f8      	bne.n	20000ee2 <adc_dma_wait+0x6>
20000ef0:	4a07      	ldr	r2, [pc, #28]	; (20000f10 <adc_dma_wait+0x34>)
20000ef2:	4b07      	ldr	r3, [pc, #28]	; (20000f10 <adc_dma_wait+0x34>)
20000ef4:	681b      	ldr	r3, [r3, #0]
20000ef6:	f023 0308 	bic.w	r3, r3, #8
20000efa:	6013      	str	r3, [r2, #0]
20000efc:	4b03      	ldr	r3, [pc, #12]	; (20000f0c <adc_dma_wait+0x30>)
20000efe:	4a05      	ldr	r2, [pc, #20]	; (20000f14 <adc_dma_wait+0x38>)
20000f00:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000f04:	bf00      	nop
20000f06:	46bd      	mov	sp, r7
20000f08:	bc80      	pop	{r7}
20000f0a:	4770      	bx	lr
20000f0c:	20002800 	.word	0x20002800
20000f10:	40088000 	.word	0x40088000
20000f14:	ae000011 	.word	0xae000011

20000f18 <NVIC_EnableIRQ>:
20000f18:	b480      	push	{r7}
20000f1a:	b083      	sub	sp, #12
20000f1c:	af00      	add	r7, sp, #0
20000f1e:	4603      	mov	r3, r0
20000f20:	71fb      	strb	r3, [r7, #7]
20000f22:	4908      	ldr	r1, [pc, #32]	; (20000f44 <NVIC_EnableIRQ+0x2c>)
20000f24:	f997 3007 	ldrsb.w	r3, [r7, #7]
20000f28:	095b      	lsrs	r3, r3, #5
20000f2a:	79fa      	ldrb	r2, [r7, #7]
20000f2c:	f002 021f 	and.w	r2, r2, #31
20000f30:	2001      	movs	r0, #1
20000f32:	fa00 f202 	lsl.w	r2, r0, r2
20000f36:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20000f3a:	bf00      	nop
20000f3c:	370c      	adds	r7, #12
20000f3e:	46bd      	mov	sp, r7
20000f40:	bc80      	pop	{r7}
20000f42:	4770      	bx	lr
20000f44:	e000e100 	.word	0xe000e100

20000f48 <PortConfig>:
20000f48:	b480      	push	{r7}
20000f4a:	af00      	add	r7, sp, #0
20000f4c:	4a4f      	ldr	r2, [pc, #316]	; (2000108c <PortConfig+0x144>)
20000f4e:	4b4f      	ldr	r3, [pc, #316]	; (2000108c <PortConfig+0x144>)
20000f50:	69db      	ldr	r3, [r3, #28]
20000f52:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
20000f56:	61d3      	str	r3, [r2, #28]
20000f58:	4b4d      	ldr	r3, [pc, #308]	; (20001090 <PortConfig+0x148>)
20000f5a:	2200      	movs	r2, #0
20000f5c:	609a      	str	r2, [r3, #8]
20000f5e:	4b4c      	ldr	r3, [pc, #304]	; (20001090 <PortConfig+0x148>)
20000f60:	2200      	movs	r2, #0
20000f62:	601a      	str	r2, [r3, #0]
20000f64:	4b4a      	ldr	r3, [pc, #296]	; (20001090 <PortConfig+0x148>)
20000f66:	22ff      	movs	r2, #255	; 0xff
20000f68:	605a      	str	r2, [r3, #4]
20000f6a:	4b49      	ldr	r3, [pc, #292]	; (20001090 <PortConfig+0x148>)
20000f6c:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000f70:	60da      	str	r2, [r3, #12]
20000f72:	4b47      	ldr	r3, [pc, #284]	; (20001090 <PortConfig+0x148>)
20000f74:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000f78:	619a      	str	r2, [r3, #24]
20000f7a:	4a44      	ldr	r2, [pc, #272]	; (2000108c <PortConfig+0x144>)
20000f7c:	4b43      	ldr	r3, [pc, #268]	; (2000108c <PortConfig+0x144>)
20000f7e:	69db      	ldr	r3, [r3, #28]
20000f80:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20000f84:	61d3      	str	r3, [r2, #28]
20000f86:	4a43      	ldr	r2, [pc, #268]	; (20001094 <PortConfig+0x14c>)
20000f88:	4b42      	ldr	r3, [pc, #264]	; (20001094 <PortConfig+0x14c>)
20000f8a:	689b      	ldr	r3, [r3, #8]
20000f8c:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20000f90:	6093      	str	r3, [r2, #8]
20000f92:	4a40      	ldr	r2, [pc, #256]	; (20001094 <PortConfig+0x14c>)
20000f94:	4b3f      	ldr	r3, [pc, #252]	; (20001094 <PortConfig+0x14c>)
20000f96:	689b      	ldr	r3, [r3, #8]
20000f98:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
20000f9c:	6093      	str	r3, [r2, #8]
20000f9e:	4a3d      	ldr	r2, [pc, #244]	; (20001094 <PortConfig+0x14c>)
20000fa0:	4b3c      	ldr	r3, [pc, #240]	; (20001094 <PortConfig+0x14c>)
20000fa2:	68db      	ldr	r3, [r3, #12]
20000fa4:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
20000fa8:	60d3      	str	r3, [r2, #12]
20000faa:	4a3a      	ldr	r2, [pc, #232]	; (20001094 <PortConfig+0x14c>)
20000fac:	4b39      	ldr	r3, [pc, #228]	; (20001094 <PortConfig+0x14c>)
20000fae:	699b      	ldr	r3, [r3, #24]
20000fb0:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
20000fb4:	6193      	str	r3, [r2, #24]
20000fb6:	4a37      	ldr	r2, [pc, #220]	; (20001094 <PortConfig+0x14c>)
20000fb8:	4b36      	ldr	r3, [pc, #216]	; (20001094 <PortConfig+0x14c>)
20000fba:	685b      	ldr	r3, [r3, #4]
20000fbc:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20000fc0:	6053      	str	r3, [r2, #4]
20000fc2:	4a34      	ldr	r2, [pc, #208]	; (20001094 <PortConfig+0x14c>)
20000fc4:	4b33      	ldr	r3, [pc, #204]	; (20001094 <PortConfig+0x14c>)
20000fc6:	685b      	ldr	r3, [r3, #4]
20000fc8:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20000fcc:	6053      	str	r3, [r2, #4]
20000fce:	4a2f      	ldr	r2, [pc, #188]	; (2000108c <PortConfig+0x144>)
20000fd0:	4b2e      	ldr	r3, [pc, #184]	; (2000108c <PortConfig+0x144>)
20000fd2:	69db      	ldr	r3, [r3, #28]
20000fd4:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
20000fd8:	61d3      	str	r3, [r2, #28]
20000fda:	4b2f      	ldr	r3, [pc, #188]	; (20001098 <PortConfig+0x150>)
20000fdc:	4a2f      	ldr	r2, [pc, #188]	; (2000109c <PortConfig+0x154>)
20000fde:	609a      	str	r2, [r3, #8]
20000fe0:	4b2d      	ldr	r3, [pc, #180]	; (20001098 <PortConfig+0x150>)
20000fe2:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000fe6:	60da      	str	r2, [r3, #12]
20000fe8:	4b2b      	ldr	r3, [pc, #172]	; (20001098 <PortConfig+0x150>)
20000fea:	f04f 32ff 	mov.w	r2, #4294967295
20000fee:	619a      	str	r2, [r3, #24]
20000ff0:	4b29      	ldr	r3, [pc, #164]	; (20001098 <PortConfig+0x150>)
20000ff2:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000ff6:	605a      	str	r2, [r3, #4]
20000ff8:	4a27      	ldr	r2, [pc, #156]	; (20001098 <PortConfig+0x150>)
20000ffa:	4b27      	ldr	r3, [pc, #156]	; (20001098 <PortConfig+0x150>)
20000ffc:	681b      	ldr	r3, [r3, #0]
20000ffe:	f023 0303 	bic.w	r3, r3, #3
20001002:	6013      	str	r3, [r2, #0]
20001004:	4a24      	ldr	r2, [pc, #144]	; (20001098 <PortConfig+0x150>)
20001006:	4b24      	ldr	r3, [pc, #144]	; (20001098 <PortConfig+0x150>)
20001008:	681b      	ldr	r3, [r3, #0]
2000100a:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000100e:	6013      	str	r3, [r2, #0]
20001010:	4a1e      	ldr	r2, [pc, #120]	; (2000108c <PortConfig+0x144>)
20001012:	4b1e      	ldr	r3, [pc, #120]	; (2000108c <PortConfig+0x144>)
20001014:	69db      	ldr	r3, [r3, #28]
20001016:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
2000101a:	61d3      	str	r3, [r2, #28]
2000101c:	4b20      	ldr	r3, [pc, #128]	; (200010a0 <PortConfig+0x158>)
2000101e:	2200      	movs	r2, #0
20001020:	609a      	str	r2, [r3, #8]
20001022:	4a1f      	ldr	r2, [pc, #124]	; (200010a0 <PortConfig+0x158>)
20001024:	4b1e      	ldr	r3, [pc, #120]	; (200010a0 <PortConfig+0x158>)
20001026:	685b      	ldr	r3, [r3, #4]
20001028:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000102c:	6053      	str	r3, [r2, #4]
2000102e:	4a1c      	ldr	r2, [pc, #112]	; (200010a0 <PortConfig+0x158>)
20001030:	4b1b      	ldr	r3, [pc, #108]	; (200010a0 <PortConfig+0x158>)
20001032:	68db      	ldr	r3, [r3, #12]
20001034:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001038:	60d3      	str	r3, [r2, #12]
2000103a:	4b19      	ldr	r3, [pc, #100]	; (200010a0 <PortConfig+0x158>)
2000103c:	f04f 32ff 	mov.w	r2, #4294967295
20001040:	619a      	str	r2, [r3, #24]
20001042:	4a17      	ldr	r2, [pc, #92]	; (200010a0 <PortConfig+0x158>)
20001044:	4b16      	ldr	r3, [pc, #88]	; (200010a0 <PortConfig+0x158>)
20001046:	681b      	ldr	r3, [r3, #0]
20001048:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000104c:	6013      	str	r3, [r2, #0]
2000104e:	4a0f      	ldr	r2, [pc, #60]	; (2000108c <PortConfig+0x144>)
20001050:	4b0e      	ldr	r3, [pc, #56]	; (2000108c <PortConfig+0x144>)
20001052:	69db      	ldr	r3, [r3, #28]
20001054:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
20001058:	61d3      	str	r3, [r2, #28]
2000105a:	4a12      	ldr	r2, [pc, #72]	; (200010a4 <PortConfig+0x15c>)
2000105c:	4b11      	ldr	r3, [pc, #68]	; (200010a4 <PortConfig+0x15c>)
2000105e:	68db      	ldr	r3, [r3, #12]
20001060:	f423 7300 	bic.w	r3, r3, #512	; 0x200
20001064:	f023 0301 	bic.w	r3, r3, #1
20001068:	60d3      	str	r3, [r2, #12]
2000106a:	4a08      	ldr	r2, [pc, #32]	; (2000108c <PortConfig+0x144>)
2000106c:	4b07      	ldr	r3, [pc, #28]	; (2000108c <PortConfig+0x144>)
2000106e:	69db      	ldr	r3, [r3, #28]
20001070:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001074:	61d3      	str	r3, [r2, #28]
20001076:	4a0c      	ldr	r2, [pc, #48]	; (200010a8 <PortConfig+0x160>)
20001078:	4b0b      	ldr	r3, [pc, #44]	; (200010a8 <PortConfig+0x160>)
2000107a:	68db      	ldr	r3, [r3, #12]
2000107c:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
20001080:	60d3      	str	r3, [r2, #12]
20001082:	bf00      	nop
20001084:	46bd      	mov	sp, r7
20001086:	bc80      	pop	{r7}
20001088:	4770      	bx	lr
2000108a:	bf00      	nop
2000108c:	40020000 	.word	0x40020000
20001090:	400a8000 	.word	0x400a8000
20001094:	400b0000 	.word	0x400b0000
20001098:	400b8000 	.word	0x400b8000
2000109c:	000aaaa0 	.word	0x000aaaa0
200010a0:	400e8000 	.word	0x400e8000
200010a4:	400c8000 	.word	0x400c8000
200010a8:	400c0000 	.word	0x400c0000

200010ac <ClkConfig>:
200010ac:	b480      	push	{r7}
200010ae:	af00      	add	r7, sp, #0
200010b0:	4a16      	ldr	r2, [pc, #88]	; (2000110c <ClkConfig+0x60>)
200010b2:	4b16      	ldr	r3, [pc, #88]	; (2000110c <ClkConfig+0x60>)
200010b4:	689b      	ldr	r3, [r3, #8]
200010b6:	f043 0301 	orr.w	r3, r3, #1
200010ba:	6093      	str	r3, [r2, #8]
200010bc:	bf00      	nop
200010be:	4b13      	ldr	r3, [pc, #76]	; (2000110c <ClkConfig+0x60>)
200010c0:	681b      	ldr	r3, [r3, #0]
200010c2:	f003 0304 	and.w	r3, r3, #4
200010c6:	2b00      	cmp	r3, #0
200010c8:	d0f9      	beq.n	200010be <ClkConfig+0x12>
200010ca:	4b10      	ldr	r3, [pc, #64]	; (2000110c <ClkConfig+0x60>)
200010cc:	2206      	movs	r2, #6
200010ce:	60da      	str	r2, [r3, #12]
200010d0:	4b0e      	ldr	r3, [pc, #56]	; (2000110c <ClkConfig+0x60>)
200010d2:	f640 1204 	movw	r2, #2308	; 0x904
200010d6:	605a      	str	r2, [r3, #4]
200010d8:	bf00      	nop
200010da:	4b0c      	ldr	r3, [pc, #48]	; (2000110c <ClkConfig+0x60>)
200010dc:	681b      	ldr	r3, [r3, #0]
200010de:	f003 0302 	and.w	r3, r3, #2
200010e2:	2b00      	cmp	r3, #0
200010e4:	d0f9      	beq.n	200010da <ClkConfig+0x2e>
200010e6:	4a09      	ldr	r2, [pc, #36]	; (2000110c <ClkConfig+0x60>)
200010e8:	4b08      	ldr	r3, [pc, #32]	; (2000110c <ClkConfig+0x60>)
200010ea:	68db      	ldr	r3, [r3, #12]
200010ec:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200010f0:	60d3      	str	r3, [r2, #12]
200010f2:	4a07      	ldr	r2, [pc, #28]	; (20001110 <ClkConfig+0x64>)
200010f4:	4b06      	ldr	r3, [pc, #24]	; (20001110 <ClkConfig+0x64>)
200010f6:	681b      	ldr	r3, [r3, #0]
200010f8:	f043 0320 	orr.w	r3, r3, #32
200010fc:	6013      	str	r3, [r2, #0]
200010fe:	4b05      	ldr	r3, [pc, #20]	; (20001114 <ClkConfig+0x68>)
20001100:	2200      	movs	r2, #0
20001102:	601a      	str	r2, [r3, #0]
20001104:	bf00      	nop
20001106:	46bd      	mov	sp, r7
20001108:	bc80      	pop	{r7}
2000110a:	4770      	bx	lr
2000110c:	40020000 	.word	0x40020000
20001110:	40018000 	.word	0x40018000
20001114:	20002500 	.word	0x20002500

20001118 <TimerConfig>:
20001118:	b580      	push	{r7, lr}
2000111a:	af00      	add	r7, sp, #0
2000111c:	4a74      	ldr	r2, [pc, #464]	; (200012f0 <TimerConfig+0x1d8>)
2000111e:	4b74      	ldr	r3, [pc, #464]	; (200012f0 <TimerConfig+0x1d8>)
20001120:	69db      	ldr	r3, [r3, #28]
20001122:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
20001126:	61d3      	str	r3, [r2, #28]
20001128:	4a71      	ldr	r2, [pc, #452]	; (200012f0 <TimerConfig+0x1d8>)
2000112a:	4b71      	ldr	r3, [pc, #452]	; (200012f0 <TimerConfig+0x1d8>)
2000112c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000112e:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
20001132:	6253      	str	r3, [r2, #36]	; 0x24
20001134:	4a6e      	ldr	r2, [pc, #440]	; (200012f0 <TimerConfig+0x1d8>)
20001136:	4b6e      	ldr	r3, [pc, #440]	; (200012f0 <TimerConfig+0x1d8>)
20001138:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000113a:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
2000113e:	6253      	str	r3, [r2, #36]	; 0x24
20001140:	4b6c      	ldr	r3, [pc, #432]	; (200012f4 <TimerConfig+0x1dc>)
20001142:	2200      	movs	r2, #0
20001144:	601a      	str	r2, [r3, #0]
20001146:	4b6b      	ldr	r3, [pc, #428]	; (200012f4 <TimerConfig+0x1dc>)
20001148:	2202      	movs	r2, #2
2000114a:	605a      	str	r2, [r3, #4]
2000114c:	4b69      	ldr	r3, [pc, #420]	; (200012f4 <TimerConfig+0x1dc>)
2000114e:	f240 32ff 	movw	r2, #1023	; 0x3ff
20001152:	609a      	str	r2, [r3, #8]
20001154:	4b67      	ldr	r3, [pc, #412]	; (200012f4 <TimerConfig+0x1dc>)
20001156:	f44f 7200 	mov.w	r2, #512	; 0x200
2000115a:	611a      	str	r2, [r3, #16]
2000115c:	4b65      	ldr	r3, [pc, #404]	; (200012f4 <TimerConfig+0x1dc>)
2000115e:	f44f 7200 	mov.w	r2, #512	; 0x200
20001162:	615a      	str	r2, [r3, #20]
20001164:	4b63      	ldr	r3, [pc, #396]	; (200012f4 <TimerConfig+0x1dc>)
20001166:	f44f 7200 	mov.w	r2, #512	; 0x200
2000116a:	619a      	str	r2, [r3, #24]
2000116c:	4a61      	ldr	r2, [pc, #388]	; (200012f4 <TimerConfig+0x1dc>)
2000116e:	4b61      	ldr	r3, [pc, #388]	; (200012f4 <TimerConfig+0x1dc>)
20001170:	6a1b      	ldr	r3, [r3, #32]
20001172:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001176:	6213      	str	r3, [r2, #32]
20001178:	4a5e      	ldr	r2, [pc, #376]	; (200012f4 <TimerConfig+0x1dc>)
2000117a:	4b5e      	ldr	r3, [pc, #376]	; (200012f4 <TimerConfig+0x1dc>)
2000117c:	6a1b      	ldr	r3, [r3, #32]
2000117e:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001182:	6213      	str	r3, [r2, #32]
20001184:	4a5b      	ldr	r2, [pc, #364]	; (200012f4 <TimerConfig+0x1dc>)
20001186:	4b5b      	ldr	r3, [pc, #364]	; (200012f4 <TimerConfig+0x1dc>)
20001188:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000118a:	f023 030f 	bic.w	r3, r3, #15
2000118e:	6313      	str	r3, [r2, #48]	; 0x30
20001190:	4a58      	ldr	r2, [pc, #352]	; (200012f4 <TimerConfig+0x1dc>)
20001192:	4b58      	ldr	r3, [pc, #352]	; (200012f4 <TimerConfig+0x1dc>)
20001194:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001196:	f043 030c 	orr.w	r3, r3, #12
2000119a:	6313      	str	r3, [r2, #48]	; 0x30
2000119c:	4a55      	ldr	r2, [pc, #340]	; (200012f4 <TimerConfig+0x1dc>)
2000119e:	4b55      	ldr	r3, [pc, #340]	; (200012f4 <TimerConfig+0x1dc>)
200011a0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200011a2:	f043 0301 	orr.w	r3, r3, #1
200011a6:	6313      	str	r3, [r2, #48]	; 0x30
200011a8:	4a52      	ldr	r2, [pc, #328]	; (200012f4 <TimerConfig+0x1dc>)
200011aa:	4b52      	ldr	r3, [pc, #328]	; (200012f4 <TimerConfig+0x1dc>)
200011ac:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200011ae:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200011b2:	6313      	str	r3, [r2, #48]	; 0x30
200011b4:	4a4f      	ldr	r2, [pc, #316]	; (200012f4 <TimerConfig+0x1dc>)
200011b6:	4b4f      	ldr	r3, [pc, #316]	; (200012f4 <TimerConfig+0x1dc>)
200011b8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200011ba:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200011be:	6313      	str	r3, [r2, #48]	; 0x30
200011c0:	4a4c      	ldr	r2, [pc, #304]	; (200012f4 <TimerConfig+0x1dc>)
200011c2:	4b4c      	ldr	r3, [pc, #304]	; (200012f4 <TimerConfig+0x1dc>)
200011c4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200011c6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200011ca:	6313      	str	r3, [r2, #48]	; 0x30
200011cc:	4a49      	ldr	r2, [pc, #292]	; (200012f4 <TimerConfig+0x1dc>)
200011ce:	4b49      	ldr	r3, [pc, #292]	; (200012f4 <TimerConfig+0x1dc>)
200011d0:	6e1b      	ldr	r3, [r3, #96]	; 0x60
200011d2:	f043 0308 	orr.w	r3, r3, #8
200011d6:	6613      	str	r3, [r2, #96]	; 0x60
200011d8:	4a46      	ldr	r2, [pc, #280]	; (200012f4 <TimerConfig+0x1dc>)
200011da:	4b46      	ldr	r3, [pc, #280]	; (200012f4 <TimerConfig+0x1dc>)
200011dc:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200011de:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200011e2:	6253      	str	r3, [r2, #36]	; 0x24
200011e4:	4a43      	ldr	r2, [pc, #268]	; (200012f4 <TimerConfig+0x1dc>)
200011e6:	4b43      	ldr	r3, [pc, #268]	; (200012f4 <TimerConfig+0x1dc>)
200011e8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200011ea:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200011ee:	6253      	str	r3, [r2, #36]	; 0x24
200011f0:	4a40      	ldr	r2, [pc, #256]	; (200012f4 <TimerConfig+0x1dc>)
200011f2:	4b40      	ldr	r3, [pc, #256]	; (200012f4 <TimerConfig+0x1dc>)
200011f4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200011f6:	f023 030f 	bic.w	r3, r3, #15
200011fa:	6353      	str	r3, [r2, #52]	; 0x34
200011fc:	4a3d      	ldr	r2, [pc, #244]	; (200012f4 <TimerConfig+0x1dc>)
200011fe:	4b3d      	ldr	r3, [pc, #244]	; (200012f4 <TimerConfig+0x1dc>)
20001200:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001202:	f043 030c 	orr.w	r3, r3, #12
20001206:	6353      	str	r3, [r2, #52]	; 0x34
20001208:	4a3a      	ldr	r2, [pc, #232]	; (200012f4 <TimerConfig+0x1dc>)
2000120a:	4b3a      	ldr	r3, [pc, #232]	; (200012f4 <TimerConfig+0x1dc>)
2000120c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000120e:	f043 0301 	orr.w	r3, r3, #1
20001212:	6353      	str	r3, [r2, #52]	; 0x34
20001214:	4a37      	ldr	r2, [pc, #220]	; (200012f4 <TimerConfig+0x1dc>)
20001216:	4b37      	ldr	r3, [pc, #220]	; (200012f4 <TimerConfig+0x1dc>)
20001218:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000121a:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
2000121e:	6353      	str	r3, [r2, #52]	; 0x34
20001220:	4a34      	ldr	r2, [pc, #208]	; (200012f4 <TimerConfig+0x1dc>)
20001222:	4b34      	ldr	r3, [pc, #208]	; (200012f4 <TimerConfig+0x1dc>)
20001224:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001226:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000122a:	6353      	str	r3, [r2, #52]	; 0x34
2000122c:	4a31      	ldr	r2, [pc, #196]	; (200012f4 <TimerConfig+0x1dc>)
2000122e:	4b31      	ldr	r3, [pc, #196]	; (200012f4 <TimerConfig+0x1dc>)
20001230:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001232:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001236:	6353      	str	r3, [r2, #52]	; 0x34
20001238:	4a2e      	ldr	r2, [pc, #184]	; (200012f4 <TimerConfig+0x1dc>)
2000123a:	4b2e      	ldr	r3, [pc, #184]	; (200012f4 <TimerConfig+0x1dc>)
2000123c:	6e5b      	ldr	r3, [r3, #100]	; 0x64
2000123e:	f043 0308 	orr.w	r3, r3, #8
20001242:	6653      	str	r3, [r2, #100]	; 0x64
20001244:	4a2b      	ldr	r2, [pc, #172]	; (200012f4 <TimerConfig+0x1dc>)
20001246:	4b2b      	ldr	r3, [pc, #172]	; (200012f4 <TimerConfig+0x1dc>)
20001248:	6a9b      	ldr	r3, [r3, #40]	; 0x28
2000124a:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
2000124e:	6293      	str	r3, [r2, #40]	; 0x28
20001250:	4a28      	ldr	r2, [pc, #160]	; (200012f4 <TimerConfig+0x1dc>)
20001252:	4b28      	ldr	r3, [pc, #160]	; (200012f4 <TimerConfig+0x1dc>)
20001254:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001256:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
2000125a:	6293      	str	r3, [r2, #40]	; 0x28
2000125c:	4a25      	ldr	r2, [pc, #148]	; (200012f4 <TimerConfig+0x1dc>)
2000125e:	4b25      	ldr	r3, [pc, #148]	; (200012f4 <TimerConfig+0x1dc>)
20001260:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001262:	f023 030f 	bic.w	r3, r3, #15
20001266:	6393      	str	r3, [r2, #56]	; 0x38
20001268:	4a22      	ldr	r2, [pc, #136]	; (200012f4 <TimerConfig+0x1dc>)
2000126a:	4b22      	ldr	r3, [pc, #136]	; (200012f4 <TimerConfig+0x1dc>)
2000126c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000126e:	f043 030c 	orr.w	r3, r3, #12
20001272:	6393      	str	r3, [r2, #56]	; 0x38
20001274:	4a1f      	ldr	r2, [pc, #124]	; (200012f4 <TimerConfig+0x1dc>)
20001276:	4b1f      	ldr	r3, [pc, #124]	; (200012f4 <TimerConfig+0x1dc>)
20001278:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000127a:	f043 0301 	orr.w	r3, r3, #1
2000127e:	6393      	str	r3, [r2, #56]	; 0x38
20001280:	4a1c      	ldr	r2, [pc, #112]	; (200012f4 <TimerConfig+0x1dc>)
20001282:	4b1c      	ldr	r3, [pc, #112]	; (200012f4 <TimerConfig+0x1dc>)
20001284:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001286:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
2000128a:	6393      	str	r3, [r2, #56]	; 0x38
2000128c:	4a19      	ldr	r2, [pc, #100]	; (200012f4 <TimerConfig+0x1dc>)
2000128e:	4b19      	ldr	r3, [pc, #100]	; (200012f4 <TimerConfig+0x1dc>)
20001290:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001292:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001296:	6393      	str	r3, [r2, #56]	; 0x38
20001298:	4a16      	ldr	r2, [pc, #88]	; (200012f4 <TimerConfig+0x1dc>)
2000129a:	4b16      	ldr	r3, [pc, #88]	; (200012f4 <TimerConfig+0x1dc>)
2000129c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000129e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200012a2:	6393      	str	r3, [r2, #56]	; 0x38
200012a4:	4a13      	ldr	r2, [pc, #76]	; (200012f4 <TimerConfig+0x1dc>)
200012a6:	4b13      	ldr	r3, [pc, #76]	; (200012f4 <TimerConfig+0x1dc>)
200012a8:	6e9b      	ldr	r3, [r3, #104]	; 0x68
200012aa:	f043 0308 	orr.w	r3, r3, #8
200012ae:	6693      	str	r3, [r2, #104]	; 0x68
200012b0:	4a10      	ldr	r2, [pc, #64]	; (200012f4 <TimerConfig+0x1dc>)
200012b2:	4b10      	ldr	r3, [pc, #64]	; (200012f4 <TimerConfig+0x1dc>)
200012b4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200012b6:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
200012ba:	6413      	str	r3, [r2, #64]	; 0x40
200012bc:	4a0d      	ldr	r2, [pc, #52]	; (200012f4 <TimerConfig+0x1dc>)
200012be:	4b0d      	ldr	r3, [pc, #52]	; (200012f4 <TimerConfig+0x1dc>)
200012c0:	6c5b      	ldr	r3, [r3, #68]	; 0x44
200012c2:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
200012c6:	6453      	str	r3, [r2, #68]	; 0x44
200012c8:	4a0a      	ldr	r2, [pc, #40]	; (200012f4 <TimerConfig+0x1dc>)
200012ca:	4b0a      	ldr	r3, [pc, #40]	; (200012f4 <TimerConfig+0x1dc>)
200012cc:	6c9b      	ldr	r3, [r3, #72]	; 0x48
200012ce:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
200012d2:	6493      	str	r3, [r2, #72]	; 0x48
200012d4:	4a07      	ldr	r2, [pc, #28]	; (200012f4 <TimerConfig+0x1dc>)
200012d6:	4b07      	ldr	r3, [pc, #28]	; (200012f4 <TimerConfig+0x1dc>)
200012d8:	6d9b      	ldr	r3, [r3, #88]	; 0x58
200012da:	f043 0302 	orr.w	r3, r3, #2
200012de:	6593      	str	r3, [r2, #88]	; 0x58
200012e0:	2010      	movs	r0, #16
200012e2:	f7ff fe19 	bl	20000f18 <NVIC_EnableIRQ>
200012e6:	4b03      	ldr	r3, [pc, #12]	; (200012f4 <TimerConfig+0x1dc>)
200012e8:	2201      	movs	r2, #1
200012ea:	60da      	str	r2, [r3, #12]
200012ec:	bf00      	nop
200012ee:	bd80      	pop	{r7, pc}
200012f0:	40020000 	.word	0x40020000
200012f4:	40080000 	.word	0x40080000

200012f8 <set_ram_vt>:
200012f8:	b480      	push	{r7}
200012fa:	b085      	sub	sp, #20
200012fc:	af00      	add	r7, sp, #0
200012fe:	2300      	movs	r3, #0
20001300:	60fb      	str	r3, [r7, #12]
20001302:	2300      	movs	r3, #0
20001304:	607b      	str	r3, [r7, #4]
20001306:	4b11      	ldr	r3, [pc, #68]	; (2000134c <set_ram_vt+0x54>)
20001308:	60bb      	str	r3, [r7, #8]
2000130a:	2300      	movs	r3, #0
2000130c:	60fb      	str	r3, [r7, #12]
2000130e:	e00b      	b.n	20001328 <set_ram_vt+0x30>
20001310:	68bb      	ldr	r3, [r7, #8]
20001312:	1d1a      	adds	r2, r3, #4
20001314:	60ba      	str	r2, [r7, #8]
20001316:	68fa      	ldr	r2, [r7, #12]
20001318:	0092      	lsls	r2, r2, #2
2000131a:	6879      	ldr	r1, [r7, #4]
2000131c:	440a      	add	r2, r1
2000131e:	6812      	ldr	r2, [r2, #0]
20001320:	601a      	str	r2, [r3, #0]
20001322:	68fb      	ldr	r3, [r7, #12]
20001324:	3301      	adds	r3, #1
20001326:	60fb      	str	r3, [r7, #12]
20001328:	68fb      	ldr	r3, [r7, #12]
2000132a:	2b2f      	cmp	r3, #47	; 0x2f
2000132c:	d9f0      	bls.n	20001310 <set_ram_vt+0x18>
2000132e:	4b08      	ldr	r3, [pc, #32]	; (20001350 <set_ram_vt+0x58>)
20001330:	4a06      	ldr	r2, [pc, #24]	; (2000134c <set_ram_vt+0x54>)
20001332:	609a      	str	r2, [r3, #8]
20001334:	4b05      	ldr	r3, [pc, #20]	; (2000134c <set_ram_vt+0x54>)
20001336:	4a07      	ldr	r2, [pc, #28]	; (20001354 <set_ram_vt+0x5c>)
20001338:	63da      	str	r2, [r3, #60]	; 0x3c
2000133a:	4b04      	ldr	r3, [pc, #16]	; (2000134c <set_ram_vt+0x54>)
2000133c:	4a06      	ldr	r2, [pc, #24]	; (20001358 <set_ram_vt+0x60>)
2000133e:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20001342:	bf00      	nop
20001344:	3714      	adds	r7, #20
20001346:	46bd      	mov	sp, r7
20001348:	bc80      	pop	{r7}
2000134a:	4770      	bx	lr
2000134c:	20002600 	.word	0x20002600
20001350:	e000ed00 	.word	0xe000ed00
20001354:	20001375 	.word	0x20001375
20001358:	2000042d 	.word	0x2000042d

2000135c <system_init>:
2000135c:	b580      	push	{r7, lr}
2000135e:	af00      	add	r7, sp, #0
20001360:	f7ff ffca 	bl	200012f8 <set_ram_vt>
20001364:	f7ff fea2 	bl	200010ac <ClkConfig>
20001368:	f7ff fdee 	bl	20000f48 <PortConfig>
2000136c:	f7ff fed4 	bl	20001118 <TimerConfig>
20001370:	bf00      	nop
20001372:	bd80      	pop	{r7, pc}

20001374 <SysTick_Handler>:
20001374:	b480      	push	{r7}
20001376:	af00      	add	r7, sp, #0
20001378:	4b04      	ldr	r3, [pc, #16]	; (2000138c <SysTick_Handler+0x18>)
2000137a:	681b      	ldr	r3, [r3, #0]
2000137c:	3301      	adds	r3, #1
2000137e:	4a03      	ldr	r2, [pc, #12]	; (2000138c <SysTick_Handler+0x18>)
20001380:	6013      	str	r3, [r2, #0]
20001382:	bf00      	nop
20001384:	46bd      	mov	sp, r7
20001386:	bc80      	pop	{r7}
20001388:	4770      	bx	lr
2000138a:	bf00      	nop
2000138c:	20002500 	.word	0x20002500
