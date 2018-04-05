
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b580      	push	{r7, lr}
20000002:	b0ac      	sub	sp, #176	; 0xb0
20000004:	af00      	add	r7, sp, #0
20000006:	2300      	movs	r3, #0
20000008:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
2000000c:	2300      	movs	r3, #0
2000000e:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
20000012:	2300      	movs	r3, #0
20000014:	f8c7 30a8 	str.w	r3, [r7, #168]	; 0xa8
20000018:	2300      	movs	r3, #0
2000001a:	f8c7 30a4 	str.w	r3, [r7, #164]	; 0xa4
2000001e:	2300      	movs	r3, #0
20000020:	f8c7 30a0 	str.w	r3, [r7, #160]	; 0xa0
20000024:	2300      	movs	r3, #0
20000026:	f8c7 309c 	str.w	r3, [r7, #156]	; 0x9c
2000002a:	2300      	movs	r3, #0
2000002c:	f8c7 3098 	str.w	r3, [r7, #152]	; 0x98
20000030:	2300      	movs	r3, #0
20000032:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000036:	f001 fc4b 	bl	200018d0 <system_init>
2000003a:	f000 fa0d 	bl	20000458 <ssi_init>
2000003e:	f000 fa7f 	bl	20000540 <dac_init>
20000042:	f001 f8f1 	bl	20001228 <adc_dma_init>
20000046:	f107 0358 	add.w	r3, r7, #88	; 0x58
2000004a:	22c8      	movs	r2, #200	; 0xc8
2000004c:	2150      	movs	r1, #80	; 0x50
2000004e:	4618      	mov	r0, r3
20000050:	f000 fc2c 	bl	200008ac <reg_init>
20000054:	f107 0348 	add.w	r3, r7, #72	; 0x48
20000058:	22c8      	movs	r2, #200	; 0xc8
2000005a:	2150      	movs	r1, #80	; 0x50
2000005c:	4618      	mov	r0, r3
2000005e:	f000 fc25 	bl	200008ac <reg_init>
20000062:	f107 0338 	add.w	r3, r7, #56	; 0x38
20000066:	f241 3288 	movw	r2, #5000	; 0x1388
2000006a:	2100      	movs	r1, #0
2000006c:	4618      	mov	r0, r3
2000006e:	f000 fc1d 	bl	200008ac <reg_init>
20000072:	f107 0328 	add.w	r3, r7, #40	; 0x28
20000076:	f640 32b8 	movw	r2, #3000	; 0xbb8
2000007a:	2100      	movs	r1, #0
2000007c:	4618      	mov	r0, r3
2000007e:	f000 fc15 	bl	200008ac <reg_init>
20000082:	f107 0318 	add.w	r3, r7, #24
20000086:	4a8b      	ldr	r2, [pc, #556]	; (200002b4 <main+0x2b4>)
20000088:	2100      	movs	r1, #0
2000008a:	4618      	mov	r0, r3
2000008c:	f000 fc0e 	bl	200008ac <reg_init>
20000090:	2300      	movs	r3, #0
20000092:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
20000096:	e008      	b.n	200000aa <main+0xaa>
20000098:	2100      	movs	r1, #0
2000009a:	2000      	movs	r0, #0
2000009c:	f000 ffec 	bl	20001078 <mfilter>
200000a0:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
200000a4:	3301      	adds	r3, #1
200000a6:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
200000aa:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
200000ae:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
200000b2:	dbf1      	blt.n	20000098 <main+0x98>
200000b4:	2300      	movs	r3, #0
200000b6:	f8c7 30a8 	str.w	r3, [r7, #168]	; 0xa8
200000ba:	2300      	movs	r3, #0
200000bc:	f8c7 30a4 	str.w	r3, [r7, #164]	; 0xa4
200000c0:	4b7d      	ldr	r3, [pc, #500]	; (200002b8 <main+0x2b8>)
200000c2:	2200      	movs	r2, #0
200000c4:	601a      	str	r2, [r3, #0]
200000c6:	4b7d      	ldr	r3, [pc, #500]	; (200002bc <main+0x2bc>)
200000c8:	2200      	movs	r2, #0
200000ca:	601a      	str	r2, [r3, #0]
200000cc:	4b7c      	ldr	r3, [pc, #496]	; (200002c0 <main+0x2c0>)
200000ce:	2200      	movs	r2, #0
200000d0:	601a      	str	r2, [r3, #0]
200000d2:	2300      	movs	r3, #0
200000d4:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
200000d8:	e038      	b.n	2000014c <main+0x14c>
200000da:	f001 f8c3 	bl	20001264 <adc_dma_wait>
200000de:	4b79      	ldr	r3, [pc, #484]	; (200002c4 <main+0x2c4>)
200000e0:	689b      	ldr	r3, [r3, #8]
200000e2:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000e6:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
200000ea:	4413      	add	r3, r2
200000ec:	f8c7 30a8 	str.w	r3, [r7, #168]	; 0xa8
200000f0:	4b74      	ldr	r3, [pc, #464]	; (200002c4 <main+0x2c4>)
200000f2:	68db      	ldr	r3, [r3, #12]
200000f4:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000f8:	f8d7 30a4 	ldr.w	r3, [r7, #164]	; 0xa4
200000fc:	4413      	add	r3, r2
200000fe:	f8c7 30a4 	str.w	r3, [r7, #164]	; 0xa4
20000102:	4b71      	ldr	r3, [pc, #452]	; (200002c8 <main+0x2c8>)
20000104:	689b      	ldr	r3, [r3, #8]
20000106:	4618      	mov	r0, r3
20000108:	f000 f9f0 	bl	200004ec <enc_crc>
2000010c:	4602      	mov	r2, r0
2000010e:	4b6a      	ldr	r3, [pc, #424]	; (200002b8 <main+0x2b8>)
20000110:	681b      	ldr	r3, [r3, #0]
20000112:	4413      	add	r3, r2
20000114:	461a      	mov	r2, r3
20000116:	4b68      	ldr	r3, [pc, #416]	; (200002b8 <main+0x2b8>)
20000118:	601a      	str	r2, [r3, #0]
2000011a:	4b6a      	ldr	r3, [pc, #424]	; (200002c4 <main+0x2c4>)
2000011c:	681b      	ldr	r3, [r3, #0]
2000011e:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000122:	4a67      	ldr	r2, [pc, #412]	; (200002c0 <main+0x2c0>)
20000124:	6812      	ldr	r2, [r2, #0]
20000126:	4413      	add	r3, r2
20000128:	461a      	mov	r2, r3
2000012a:	4b65      	ldr	r3, [pc, #404]	; (200002c0 <main+0x2c0>)
2000012c:	601a      	str	r2, [r3, #0]
2000012e:	4b65      	ldr	r3, [pc, #404]	; (200002c4 <main+0x2c4>)
20000130:	685b      	ldr	r3, [r3, #4]
20000132:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000136:	4a61      	ldr	r2, [pc, #388]	; (200002bc <main+0x2bc>)
20000138:	6812      	ldr	r2, [r2, #0]
2000013a:	4413      	add	r3, r2
2000013c:	461a      	mov	r2, r3
2000013e:	4b5f      	ldr	r3, [pc, #380]	; (200002bc <main+0x2bc>)
20000140:	601a      	str	r2, [r3, #0]
20000142:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
20000146:	3301      	adds	r3, #1
20000148:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
2000014c:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
20000150:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
20000154:	dbc1      	blt.n	200000da <main+0xda>
20000156:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
2000015a:	129b      	asrs	r3, r3, #10
2000015c:	f8c7 30a8 	str.w	r3, [r7, #168]	; 0xa8
20000160:	f8d7 30a4 	ldr.w	r3, [r7, #164]	; 0xa4
20000164:	129b      	asrs	r3, r3, #10
20000166:	f8c7 30a4 	str.w	r3, [r7, #164]	; 0xa4
2000016a:	4b53      	ldr	r3, [pc, #332]	; (200002b8 <main+0x2b8>)
2000016c:	681b      	ldr	r3, [r3, #0]
2000016e:	129b      	asrs	r3, r3, #10
20000170:	4a51      	ldr	r2, [pc, #324]	; (200002b8 <main+0x2b8>)
20000172:	6013      	str	r3, [r2, #0]
20000174:	4b55      	ldr	r3, [pc, #340]	; (200002cc <main+0x2cc>)
20000176:	f44f 7202 	mov.w	r2, #520	; 0x208
2000017a:	601a      	str	r2, [r3, #0]
2000017c:	4b4f      	ldr	r3, [pc, #316]	; (200002bc <main+0x2bc>)
2000017e:	681a      	ldr	r2, [r3, #0]
20000180:	4b4f      	ldr	r3, [pc, #316]	; (200002c0 <main+0x2c0>)
20000182:	681b      	ldr	r3, [r3, #0]
20000184:	129b      	asrs	r3, r3, #10
20000186:	fb92 f3f3 	sdiv	r3, r2, r3
2000018a:	4a51      	ldr	r2, [pc, #324]	; (200002d0 <main+0x2d0>)
2000018c:	6013      	str	r3, [r2, #0]
2000018e:	4b4f      	ldr	r3, [pc, #316]	; (200002cc <main+0x2cc>)
20000190:	681b      	ldr	r3, [r3, #0]
20000192:	4a4b      	ldr	r2, [pc, #300]	; (200002c0 <main+0x2c0>)
20000194:	6013      	str	r3, [r2, #0]
20000196:	4b48      	ldr	r3, [pc, #288]	; (200002b8 <main+0x2b8>)
20000198:	681b      	ldr	r3, [r3, #0]
2000019a:	4a4e      	ldr	r2, [pc, #312]	; (200002d4 <main+0x2d4>)
2000019c:	6013      	str	r3, [r2, #0]
2000019e:	4b46      	ldr	r3, [pc, #280]	; (200002b8 <main+0x2b8>)
200001a0:	681b      	ldr	r3, [r3, #0]
200001a2:	4a4d      	ldr	r2, [pc, #308]	; (200002d8 <main+0x2d8>)
200001a4:	6013      	str	r3, [r2, #0]
200001a6:	4b44      	ldr	r3, [pc, #272]	; (200002b8 <main+0x2b8>)
200001a8:	681b      	ldr	r3, [r3, #0]
200001aa:	4618      	mov	r0, r3
200001ac:	f000 ff3c 	bl	20001028 <encoder_init>
200001b0:	4b4a      	ldr	r3, [pc, #296]	; (200002dc <main+0x2dc>)
200001b2:	2200      	movs	r2, #0
200001b4:	601a      	str	r2, [r3, #0]
200001b6:	4b47      	ldr	r3, [pc, #284]	; (200002d4 <main+0x2d4>)
200001b8:	681b      	ldr	r3, [r3, #0]
200001ba:	4a49      	ldr	r2, [pc, #292]	; (200002e0 <main+0x2e0>)
200001bc:	6013      	str	r3, [r2, #0]
200001be:	2301      	movs	r3, #1
200001c0:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
200001c4:	2300      	movs	r3, #0
200001c6:	f8c7 309c 	str.w	r3, [r7, #156]	; 0x9c
200001ca:	f001 f84b 	bl	20001264 <adc_dma_wait>
200001ce:	f8d7 20a8 	ldr.w	r2, [r7, #168]	; 0xa8
200001d2:	4b3c      	ldr	r3, [pc, #240]	; (200002c4 <main+0x2c4>)
200001d4:	689b      	ldr	r3, [r3, #8]
200001d6:	f3c3 030b 	ubfx	r3, r3, #0, #12
200001da:	1ad3      	subs	r3, r2, r3
200001dc:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
200001e0:	f8d7 20a4 	ldr.w	r2, [r7, #164]	; 0xa4
200001e4:	4b37      	ldr	r3, [pc, #220]	; (200002c4 <main+0x2c4>)
200001e6:	68db      	ldr	r3, [r3, #12]
200001e8:	f3c3 030b 	ubfx	r3, r3, #0, #12
200001ec:	1ad3      	subs	r3, r2, r3
200001ee:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
200001f2:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
200001f6:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
200001fa:	4413      	add	r3, r2
200001fc:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
20000200:	4b31      	ldr	r3, [pc, #196]	; (200002c8 <main+0x2c8>)
20000202:	689b      	ldr	r3, [r3, #8]
20000204:	4618      	mov	r0, r3
20000206:	f000 f971 	bl	200004ec <enc_crc>
2000020a:	67f8      	str	r0, [r7, #124]	; 0x7c
2000020c:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
2000020e:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000212:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000216:	4a33      	ldr	r2, [pc, #204]	; (200002e4 <main+0x2e4>)
20000218:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
2000021a:	6093      	str	r3, [r2, #8]
2000021c:	4b29      	ldr	r3, [pc, #164]	; (200002c4 <main+0x2c4>)
2000021e:	685b      	ldr	r3, [r3, #4]
20000220:	029a      	lsls	r2, r3, #10
20000222:	4b31      	ldr	r3, [pc, #196]	; (200002e8 <main+0x2e8>)
20000224:	4013      	ands	r3, r2
20000226:	4a27      	ldr	r2, [pc, #156]	; (200002c4 <main+0x2c4>)
20000228:	6812      	ldr	r2, [r2, #0]
2000022a:	f3c2 020b 	ubfx	r2, r2, #0, #12
2000022e:	fbb3 f3f2 	udiv	r3, r3, r2
20000232:	461a      	mov	r2, r3
20000234:	4b21      	ldr	r3, [pc, #132]	; (200002bc <main+0x2bc>)
20000236:	601a      	str	r2, [r3, #0]
20000238:	4a2c      	ldr	r2, [pc, #176]	; (200002ec <main+0x2ec>)
2000023a:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
2000023c:	6013      	str	r3, [r2, #0]
2000023e:	4b2c      	ldr	r3, [pc, #176]	; (200002f0 <main+0x2f0>)
20000240:	681b      	ldr	r3, [r3, #0]
20000242:	3301      	adds	r3, #1
20000244:	4a2a      	ldr	r2, [pc, #168]	; (200002f0 <main+0x2f0>)
20000246:	6013      	str	r3, [r2, #0]
20000248:	4b29      	ldr	r3, [pc, #164]	; (200002f0 <main+0x2f0>)
2000024a:	681b      	ldr	r3, [r3, #0]
2000024c:	f003 0307 	and.w	r3, r3, #7
20000250:	2b00      	cmp	r3, #0
20000252:	d17d      	bne.n	20000350 <main+0x350>
20000254:	f000 fab0 	bl	200007b8 <update_refposition>
20000258:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
2000025a:	491f      	ldr	r1, [pc, #124]	; (200002d8 <main+0x2d8>)
2000025c:	4618      	mov	r0, r3
2000025e:	f000 fee9 	bl	20001034 <get_speed>
20000262:	67b8      	str	r0, [r7, #120]	; 0x78
20000264:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
20000268:	2b00      	cmp	r3, #0
2000026a:	d043      	beq.n	200002f4 <main+0x2f4>
2000026c:	4b13      	ldr	r3, [pc, #76]	; (200002bc <main+0x2bc>)
2000026e:	681a      	ldr	r2, [r3, #0]
20000270:	4b13      	ldr	r3, [pc, #76]	; (200002c0 <main+0x2c0>)
20000272:	681b      	ldr	r3, [r3, #0]
20000274:	1ad3      	subs	r3, r2, r3
20000276:	677b      	str	r3, [r7, #116]	; 0x74
20000278:	6f7b      	ldr	r3, [r7, #116]	; 0x74
2000027a:	f113 0f02 	cmn.w	r3, #2
2000027e:	db0d      	blt.n	2000029c <main+0x29c>
20000280:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20000282:	2b02      	cmp	r3, #2
20000284:	dc0a      	bgt.n	2000029c <main+0x29c>
20000286:	2300      	movs	r3, #0
20000288:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
2000028c:	4b12      	ldr	r3, [pc, #72]	; (200002d8 <main+0x2d8>)
2000028e:	681b      	ldr	r3, [r3, #0]
20000290:	4a10      	ldr	r2, [pc, #64]	; (200002d4 <main+0x2d4>)
20000292:	6013      	str	r3, [r2, #0]
20000294:	4b10      	ldr	r3, [pc, #64]	; (200002d8 <main+0x2d8>)
20000296:	681b      	ldr	r3, [r3, #0]
20000298:	4a11      	ldr	r2, [pc, #68]	; (200002e0 <main+0x2e0>)
2000029a:	6013      	str	r3, [r2, #0]
2000029c:	f107 0318 	add.w	r3, r7, #24
200002a0:	2200      	movs	r2, #0
200002a2:	6f79      	ldr	r1, [r7, #116]	; 0x74
200002a4:	4618      	mov	r0, r3
200002a6:	f000 fb07 	bl	200008b8 <reg_update>
200002aa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
200002ac:	131b      	asrs	r3, r3, #12
200002ae:	f8c7 3098 	str.w	r3, [r7, #152]	; 0x98
200002b2:	e02e      	b.n	20000312 <main+0x312>
200002b4:	0007a120 	.word	0x0007a120
200002b8:	20002a10 	.word	0x20002a10
200002bc:	20002a14 	.word	0x20002a14
200002c0:	20002a04 	.word	0x20002a04
200002c4:	20004200 	.word	0x20004200
200002c8:	40040000 	.word	0x40040000
200002cc:	20002a0c 	.word	0x20002a0c
200002d0:	20002a08 	.word	0x20002a08
200002d4:	20002a00 	.word	0x20002a00
200002d8:	20002a28 	.word	0x20002a28
200002dc:	20002a34 	.word	0x20002a34
200002e0:	20002a2c 	.word	0x20002a2c
200002e4:	40090000 	.word	0x40090000
200002e8:	003ffc00 	.word	0x003ffc00
200002ec:	20002a30 	.word	0x20002a30
200002f0:	20002a18 	.word	0x20002a18
200002f4:	4b48      	ldr	r3, [pc, #288]	; (20000418 <main+0x418>)
200002f6:	681a      	ldr	r2, [r3, #0]
200002f8:	4b48      	ldr	r3, [pc, #288]	; (2000041c <main+0x41c>)
200002fa:	681b      	ldr	r3, [r3, #0]
200002fc:	1ad1      	subs	r1, r2, r3
200002fe:	f107 0328 	add.w	r3, r7, #40	; 0x28
20000302:	2200      	movs	r2, #0
20000304:	4618      	mov	r0, r3
20000306:	f000 fad7 	bl	200008b8 <reg_update>
2000030a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
2000030c:	131b      	asrs	r3, r3, #12
2000030e:	f8c7 3098 	str.w	r3, [r7, #152]	; 0x98
20000312:	f8d7 2098 	ldr.w	r2, [r7, #152]	; 0x98
20000316:	6fbb      	ldr	r3, [r7, #120]	; 0x78
20000318:	1ad1      	subs	r1, r2, r3
2000031a:	f107 0338 	add.w	r3, r7, #56	; 0x38
2000031e:	2200      	movs	r2, #0
20000320:	4618      	mov	r0, r3
20000322:	f000 fac9 	bl	200008b8 <reg_update>
20000326:	6c7b      	ldr	r3, [r7, #68]	; 0x44
20000328:	131b      	asrs	r3, r3, #12
2000032a:	f8c7 309c 	str.w	r3, [r7, #156]	; 0x9c
2000032e:	f8d7 309c 	ldr.w	r3, [r7, #156]	; 0x9c
20000332:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
20000336:	dd03      	ble.n	20000340 <main+0x340>
20000338:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
2000033c:	f8c7 309c 	str.w	r3, [r7, #156]	; 0x9c
20000340:	f8d7 309c 	ldr.w	r3, [r7, #156]	; 0x9c
20000344:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
20000348:	da02      	bge.n	20000350 <main+0x350>
2000034a:	4b35      	ldr	r3, [pc, #212]	; (20000420 <main+0x420>)
2000034c:	f8c7 309c 	str.w	r3, [r7, #156]	; 0x9c
20000350:	f000 f986 	bl	20000660 <update_telemetry>
20000354:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
20000358:	f503 7361 	add.w	r3, r3, #900	; 0x384
2000035c:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000360:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000364:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
20000368:	607b      	str	r3, [r7, #4]
2000036a:	f8d7 3080 	ldr.w	r3, [r7, #128]	; 0x80
2000036e:	60bb      	str	r3, [r7, #8]
20000370:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
20000374:	60fb      	str	r3, [r7, #12]
20000376:	f8d7 208c 	ldr.w	r2, [r7, #140]	; 0x8c
2000037a:	f107 0110 	add.w	r1, r7, #16
2000037e:	1d3b      	adds	r3, r7, #4
20000380:	4618      	mov	r0, r3
20000382:	f000 fabf 	bl	20000904 <abc_to_dq>
20000386:	693b      	ldr	r3, [r7, #16]
20000388:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
2000038c:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
20000390:	697b      	ldr	r3, [r7, #20]
20000392:	2b00      	cmp	r3, #0
20000394:	bfb8      	it	lt
20000396:	425b      	neglt	r3, r3
20000398:	4413      	add	r3, r2
2000039a:	673b      	str	r3, [r7, #112]	; 0x70
2000039c:	4b21      	ldr	r3, [pc, #132]	; (20000424 <main+0x424>)
2000039e:	681b      	ldr	r3, [r3, #0]
200003a0:	4619      	mov	r1, r3
200003a2:	6f38      	ldr	r0, [r7, #112]	; 0x70
200003a4:	f000 fe68 	bl	20001078 <mfilter>
200003a8:	4602      	mov	r2, r0
200003aa:	4b1e      	ldr	r3, [pc, #120]	; (20000424 <main+0x424>)
200003ac:	601a      	str	r2, [r3, #0]
200003ae:	693b      	ldr	r3, [r7, #16]
200003b0:	425b      	negs	r3, r3
200003b2:	66fb      	str	r3, [r7, #108]	; 0x6c
200003b4:	697b      	ldr	r3, [r7, #20]
200003b6:	f8d7 209c 	ldr.w	r2, [r7, #156]	; 0x9c
200003ba:	1ad3      	subs	r3, r2, r3
200003bc:	66bb      	str	r3, [r7, #104]	; 0x68
200003be:	f107 0358 	add.w	r3, r7, #88	; 0x58
200003c2:	f8d7 20a0 	ldr.w	r2, [r7, #160]	; 0xa0
200003c6:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
200003c8:	4618      	mov	r0, r3
200003ca:	f000 fa75 	bl	200008b8 <reg_update>
200003ce:	f107 0348 	add.w	r3, r7, #72	; 0x48
200003d2:	f8d7 20a0 	ldr.w	r2, [r7, #160]	; 0xa0
200003d6:	6eb9      	ldr	r1, [r7, #104]	; 0x68
200003d8:	4618      	mov	r0, r3
200003da:	f000 fa6d 	bl	200008b8 <reg_update>
200003de:	6e7b      	ldr	r3, [r7, #100]	; 0x64
200003e0:	109b      	asrs	r3, r3, #2
200003e2:	613b      	str	r3, [r7, #16]
200003e4:	6d7b      	ldr	r3, [r7, #84]	; 0x54
200003e6:	109b      	asrs	r3, r3, #2
200003e8:	617b      	str	r3, [r7, #20]
200003ea:	f8d7 208c 	ldr.w	r2, [r7, #140]	; 0x8c
200003ee:	f107 0110 	add.w	r1, r7, #16
200003f2:	1d3b      	adds	r3, r7, #4
200003f4:	4618      	mov	r0, r3
200003f6:	f000 fc9d 	bl	20000d34 <svpwm>
200003fa:	f8c7 00a0 	str.w	r0, [r7, #160]	; 0xa0
200003fe:	687b      	ldr	r3, [r7, #4]
20000400:	4618      	mov	r0, r3
20000402:	f000 f8fd 	bl	20000600 <pwm_seta>
20000406:	68bb      	ldr	r3, [r7, #8]
20000408:	4618      	mov	r0, r3
2000040a:	f000 f909 	bl	20000620 <pwm_setb>
2000040e:	68fb      	ldr	r3, [r7, #12]
20000410:	4618      	mov	r0, r3
20000412:	f000 f915 	bl	20000640 <pwm_setc>
20000416:	e6d8      	b.n	200001ca <main+0x1ca>
20000418:	20002a00 	.word	0x20002a00
2000041c:	20002a28 	.word	0x20002a28
20000420:	fffffc18 	.word	0xfffffc18
20000424:	20002a34 	.word	0x20002a34

20000428 <sleep>:
20000428:	b480      	push	{r7}
2000042a:	b085      	sub	sp, #20
2000042c:	af00      	add	r7, sp, #0
2000042e:	6078      	str	r0, [r7, #4]
20000430:	4b08      	ldr	r3, [pc, #32]	; (20000454 <sleep+0x2c>)
20000432:	681a      	ldr	r2, [r3, #0]
20000434:	687b      	ldr	r3, [r7, #4]
20000436:	4413      	add	r3, r2
20000438:	60fb      	str	r3, [r7, #12]
2000043a:	bf00      	nop
2000043c:	4b05      	ldr	r3, [pc, #20]	; (20000454 <sleep+0x2c>)
2000043e:	681a      	ldr	r2, [r3, #0]
20000440:	68fb      	ldr	r3, [r7, #12]
20000442:	429a      	cmp	r2, r3
20000444:	d3fa      	bcc.n	2000043c <sleep+0x14>
20000446:	bf00      	nop
20000448:	4618      	mov	r0, r3
2000044a:	3714      	adds	r7, #20
2000044c:	46bd      	mov	sp, r7
2000044e:	bc80      	pop	{r7}
20000450:	4770      	bx	lr
20000452:	bf00      	nop
20000454:	20003b00 	.word	0x20003b00

20000458 <ssi_init>:
20000458:	b480      	push	{r7}
2000045a:	af00      	add	r7, sp, #0
2000045c:	4a0c      	ldr	r2, [pc, #48]	; (20000490 <ssi_init+0x38>)
2000045e:	4b0c      	ldr	r3, [pc, #48]	; (20000490 <ssi_init+0x38>)
20000460:	69db      	ldr	r3, [r3, #28]
20000462:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20000466:	61d3      	str	r3, [r2, #28]
20000468:	4b09      	ldr	r3, [pc, #36]	; (20000490 <ssi_init+0x38>)
2000046a:	4a0a      	ldr	r2, [pc, #40]	; (20000494 <ssi_init+0x3c>)
2000046c:	62da      	str	r2, [r3, #44]	; 0x2c
2000046e:	4b0a      	ldr	r3, [pc, #40]	; (20000498 <ssi_init+0x40>)
20000470:	2200      	movs	r2, #0
20000472:	605a      	str	r2, [r3, #4]
20000474:	4b08      	ldr	r3, [pc, #32]	; (20000498 <ssi_init+0x40>)
20000476:	2206      	movs	r2, #6
20000478:	611a      	str	r2, [r3, #16]
2000047a:	4b07      	ldr	r3, [pc, #28]	; (20000498 <ssi_init+0x40>)
2000047c:	f240 221f 	movw	r2, #543	; 0x21f
20000480:	601a      	str	r2, [r3, #0]
20000482:	4b05      	ldr	r3, [pc, #20]	; (20000498 <ssi_init+0x40>)
20000484:	2202      	movs	r2, #2
20000486:	605a      	str	r2, [r3, #4]
20000488:	bf00      	nop
2000048a:	46bd      	mov	sp, r7
2000048c:	bc80      	pop	{r7}
2000048e:	4770      	bx	lr
20000490:	40020000 	.word	0x40020000
20000494:	0100000a 	.word	0x0100000a
20000498:	40040000 	.word	0x40040000

2000049c <b2g>:
2000049c:	b480      	push	{r7}
2000049e:	b083      	sub	sp, #12
200004a0:	af00      	add	r7, sp, #0
200004a2:	6078      	str	r0, [r7, #4]
200004a4:	687b      	ldr	r3, [r7, #4]
200004a6:	085a      	lsrs	r2, r3, #1
200004a8:	687b      	ldr	r3, [r7, #4]
200004aa:	4053      	eors	r3, r2
200004ac:	4618      	mov	r0, r3
200004ae:	370c      	adds	r7, #12
200004b0:	46bd      	mov	sp, r7
200004b2:	bc80      	pop	{r7}
200004b4:	4770      	bx	lr
200004b6:	bf00      	nop

200004b8 <g2b>:
200004b8:	b480      	push	{r7}
200004ba:	b085      	sub	sp, #20
200004bc:	af00      	add	r7, sp, #0
200004be:	6078      	str	r0, [r7, #4]
200004c0:	2300      	movs	r3, #0
200004c2:	60fb      	str	r3, [r7, #12]
200004c4:	2300      	movs	r3, #0
200004c6:	60fb      	str	r3, [r7, #12]
200004c8:	e006      	b.n	200004d8 <g2b+0x20>
200004ca:	68fa      	ldr	r2, [r7, #12]
200004cc:	687b      	ldr	r3, [r7, #4]
200004ce:	4053      	eors	r3, r2
200004d0:	60fb      	str	r3, [r7, #12]
200004d2:	687b      	ldr	r3, [r7, #4]
200004d4:	085b      	lsrs	r3, r3, #1
200004d6:	607b      	str	r3, [r7, #4]
200004d8:	687b      	ldr	r3, [r7, #4]
200004da:	2b00      	cmp	r3, #0
200004dc:	d1f5      	bne.n	200004ca <g2b+0x12>
200004de:	68fb      	ldr	r3, [r7, #12]
200004e0:	4618      	mov	r0, r3
200004e2:	3714      	adds	r7, #20
200004e4:	46bd      	mov	sp, r7
200004e6:	bc80      	pop	{r7}
200004e8:	4770      	bx	lr
200004ea:	bf00      	nop

200004ec <enc_crc>:
200004ec:	b480      	push	{r7}
200004ee:	b085      	sub	sp, #20
200004f0:	af00      	add	r7, sp, #0
200004f2:	6078      	str	r0, [r7, #4]
200004f4:	687b      	ldr	r3, [r7, #4]
200004f6:	60bb      	str	r3, [r7, #8]
200004f8:	2300      	movs	r3, #0
200004fa:	60fb      	str	r3, [r7, #12]
200004fc:	e006      	b.n	2000050c <enc_crc+0x20>
200004fe:	68fa      	ldr	r2, [r7, #12]
20000500:	68bb      	ldr	r3, [r7, #8]
20000502:	4053      	eors	r3, r2
20000504:	60fb      	str	r3, [r7, #12]
20000506:	68bb      	ldr	r3, [r7, #8]
20000508:	085b      	lsrs	r3, r3, #1
2000050a:	60bb      	str	r3, [r7, #8]
2000050c:	68bb      	ldr	r3, [r7, #8]
2000050e:	2b00      	cmp	r3, #0
20000510:	d1f5      	bne.n	200004fe <enc_crc+0x12>
20000512:	68fb      	ldr	r3, [r7, #12]
20000514:	f003 0301 	and.w	r3, r3, #1
20000518:	2b00      	cmp	r3, #0
2000051a:	d107      	bne.n	2000052c <enc_crc+0x40>
2000051c:	687b      	ldr	r3, [r7, #4]
2000051e:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000522:	4a06      	ldr	r2, [pc, #24]	; (2000053c <enc_crc+0x50>)
20000524:	6013      	str	r3, [r2, #0]
20000526:	4b05      	ldr	r3, [pc, #20]	; (2000053c <enc_crc+0x50>)
20000528:	681b      	ldr	r3, [r3, #0]
2000052a:	2b00      	cmp	r3, #0
2000052c:	4b03      	ldr	r3, [pc, #12]	; (2000053c <enc_crc+0x50>)
2000052e:	681b      	ldr	r3, [r3, #0]
20000530:	4618      	mov	r0, r3
20000532:	3714      	adds	r7, #20
20000534:	46bd      	mov	sp, r7
20000536:	bc80      	pop	{r7}
20000538:	4770      	bx	lr
2000053a:	bf00      	nop
2000053c:	20002a44 	.word	0x20002a44

20000540 <dac_init>:
20000540:	b480      	push	{r7}
20000542:	af00      	add	r7, sp, #0
20000544:	4a07      	ldr	r2, [pc, #28]	; (20000564 <dac_init+0x24>)
20000546:	4b07      	ldr	r3, [pc, #28]	; (20000564 <dac_init+0x24>)
20000548:	69db      	ldr	r3, [r3, #28]
2000054a:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
2000054e:	61d3      	str	r3, [r2, #28]
20000550:	4a05      	ldr	r2, [pc, #20]	; (20000568 <dac_init+0x28>)
20000552:	4b05      	ldr	r3, [pc, #20]	; (20000568 <dac_init+0x28>)
20000554:	681b      	ldr	r3, [r3, #0]
20000556:	f043 030c 	orr.w	r3, r3, #12
2000055a:	6013      	str	r3, [r2, #0]
2000055c:	bf00      	nop
2000055e:	46bd      	mov	sp, r7
20000560:	bc80      	pop	{r7}
20000562:	4770      	bx	lr
20000564:	40020000 	.word	0x40020000
20000568:	40090000 	.word	0x40090000

2000056c <encoder_start>:
2000056c:	b480      	push	{r7}
2000056e:	af00      	add	r7, sp, #0
20000570:	4b03      	ldr	r3, [pc, #12]	; (20000580 <encoder_start+0x14>)
20000572:	f240 5255 	movw	r2, #1365	; 0x555
20000576:	609a      	str	r2, [r3, #8]
20000578:	bf00      	nop
2000057a:	46bd      	mov	sp, r7
2000057c:	bc80      	pop	{r7}
2000057e:	4770      	bx	lr
20000580:	40040000 	.word	0x40040000

20000584 <ADC_Handler>:
20000584:	b480      	push	{r7}
20000586:	af00      	add	r7, sp, #0
20000588:	4b02      	ldr	r3, [pc, #8]	; (20000594 <ADC_Handler+0x10>)
2000058a:	699b      	ldr	r3, [r3, #24]
2000058c:	bf00      	nop
2000058e:	46bd      	mov	sp, r7
20000590:	bc80      	pop	{r7}
20000592:	4770      	bx	lr
20000594:	40088000 	.word	0x40088000

20000598 <TIMER1_Handler>:
20000598:	b480      	push	{r7}
2000059a:	af00      	add	r7, sp, #0
2000059c:	4b03      	ldr	r3, [pc, #12]	; (200005ac <TIMER1_Handler+0x14>)
2000059e:	2200      	movs	r2, #0
200005a0:	655a      	str	r2, [r3, #84]	; 0x54
200005a2:	bf00      	nop
200005a4:	46bd      	mov	sp, r7
200005a6:	bc80      	pop	{r7}
200005a8:	4770      	bx	lr
200005aa:	bf00      	nop
200005ac:	40070000 	.word	0x40070000

200005b0 <TIMER3_Handler>:
200005b0:	b580      	push	{r7, lr}
200005b2:	af00      	add	r7, sp, #0
200005b4:	4b04      	ldr	r3, [pc, #16]	; (200005c8 <TIMER3_Handler+0x18>)
200005b6:	2200      	movs	r2, #0
200005b8:	655a      	str	r2, [r3, #84]	; 0x54
200005ba:	f7ff ffd7 	bl	2000056c <encoder_start>
200005be:	f000 fe3b 	bl	20001238 <adc_dma_start>
200005c2:	bf00      	nop
200005c4:	bd80      	pop	{r7, pc}
200005c6:	bf00      	nop
200005c8:	40080000 	.word	0x40080000

200005cc <get_phase>:
200005cc:	b580      	push	{r7, lr}
200005ce:	af00      	add	r7, sp, #0
200005d0:	4b0a      	ldr	r3, [pc, #40]	; (200005fc <get_phase+0x30>)
200005d2:	f240 5255 	movw	r2, #1365	; 0x555
200005d6:	609a      	str	r2, [r3, #8]
200005d8:	bf00      	nop
200005da:	4b08      	ldr	r3, [pc, #32]	; (200005fc <get_phase+0x30>)
200005dc:	68db      	ldr	r3, [r3, #12]
200005de:	f003 0304 	and.w	r3, r3, #4
200005e2:	2b00      	cmp	r3, #0
200005e4:	d0f9      	beq.n	200005da <get_phase+0xe>
200005e6:	4b05      	ldr	r3, [pc, #20]	; (200005fc <get_phase+0x30>)
200005e8:	689b      	ldr	r3, [r3, #8]
200005ea:	f3c3 030b 	ubfx	r3, r3, #0, #12
200005ee:	4618      	mov	r0, r3
200005f0:	f7ff ff62 	bl	200004b8 <g2b>
200005f4:	4603      	mov	r3, r0
200005f6:	4618      	mov	r0, r3
200005f8:	bd80      	pop	{r7, pc}
200005fa:	bf00      	nop
200005fc:	40040000 	.word	0x40040000

20000600 <pwm_seta>:
20000600:	b480      	push	{r7}
20000602:	b083      	sub	sp, #12
20000604:	af00      	add	r7, sp, #0
20000606:	6078      	str	r0, [r7, #4]
20000608:	4a04      	ldr	r2, [pc, #16]	; (2000061c <pwm_seta+0x1c>)
2000060a:	687b      	ldr	r3, [r7, #4]
2000060c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000610:	6113      	str	r3, [r2, #16]
20000612:	bf00      	nop
20000614:	370c      	adds	r7, #12
20000616:	46bd      	mov	sp, r7
20000618:	bc80      	pop	{r7}
2000061a:	4770      	bx	lr
2000061c:	40080000 	.word	0x40080000

20000620 <pwm_setb>:
20000620:	b480      	push	{r7}
20000622:	b083      	sub	sp, #12
20000624:	af00      	add	r7, sp, #0
20000626:	6078      	str	r0, [r7, #4]
20000628:	4a04      	ldr	r2, [pc, #16]	; (2000063c <pwm_setb+0x1c>)
2000062a:	687b      	ldr	r3, [r7, #4]
2000062c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000630:	6153      	str	r3, [r2, #20]
20000632:	bf00      	nop
20000634:	370c      	adds	r7, #12
20000636:	46bd      	mov	sp, r7
20000638:	bc80      	pop	{r7}
2000063a:	4770      	bx	lr
2000063c:	40080000 	.word	0x40080000

20000640 <pwm_setc>:
20000640:	b480      	push	{r7}
20000642:	b083      	sub	sp, #12
20000644:	af00      	add	r7, sp, #0
20000646:	6078      	str	r0, [r7, #4]
20000648:	4a04      	ldr	r2, [pc, #16]	; (2000065c <pwm_setc+0x1c>)
2000064a:	687b      	ldr	r3, [r7, #4]
2000064c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000650:	6193      	str	r3, [r2, #24]
20000652:	bf00      	nop
20000654:	370c      	adds	r7, #12
20000656:	46bd      	mov	sp, r7
20000658:	bc80      	pop	{r7}
2000065a:	4770      	bx	lr
2000065c:	40080000 	.word	0x40080000

20000660 <update_telemetry>:
20000660:	b480      	push	{r7}
20000662:	b083      	sub	sp, #12
20000664:	af00      	add	r7, sp, #0
20000666:	4b4a      	ldr	r3, [pc, #296]	; (20000790 <update_telemetry+0x130>)
20000668:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2000066a:	f003 0302 	and.w	r3, r3, #2
2000066e:	2b00      	cmp	r3, #0
20000670:	d076      	beq.n	20000760 <update_telemetry+0x100>
20000672:	4b47      	ldr	r3, [pc, #284]	; (20000790 <update_telemetry+0x130>)
20000674:	2200      	movs	r2, #0
20000676:	655a      	str	r2, [r3, #84]	; 0x54
20000678:	4a46      	ldr	r2, [pc, #280]	; (20000794 <update_telemetry+0x134>)
2000067a:	4b46      	ldr	r3, [pc, #280]	; (20000794 <update_telemetry+0x134>)
2000067c:	681b      	ldr	r3, [r3, #0]
2000067e:	f043 0301 	orr.w	r3, r3, #1
20000682:	6013      	str	r3, [r2, #0]
20000684:	4a44      	ldr	r2, [pc, #272]	; (20000798 <update_telemetry+0x138>)
20000686:	4b44      	ldr	r3, [pc, #272]	; (20000798 <update_telemetry+0x138>)
20000688:	699b      	ldr	r3, [r3, #24]
2000068a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000068e:	6193      	str	r3, [r2, #24]
20000690:	4b3f      	ldr	r3, [pc, #252]	; (20000790 <update_telemetry+0x130>)
20000692:	695b      	ldr	r3, [r3, #20]
20000694:	b29b      	uxth	r3, r3
20000696:	f503 7396 	add.w	r3, r3, #300	; 0x12c
2000069a:	80fb      	strh	r3, [r7, #6]
2000069c:	88fb      	ldrh	r3, [r7, #6]
2000069e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
200006a2:	d205      	bcs.n	200006b0 <update_telemetry+0x50>
200006a4:	4a3a      	ldr	r2, [pc, #232]	; (20000790 <update_telemetry+0x130>)
200006a6:	4b3a      	ldr	r3, [pc, #232]	; (20000790 <update_telemetry+0x130>)
200006a8:	681b      	ldr	r3, [r3, #0]
200006aa:	3301      	adds	r3, #1
200006ac:	6013      	str	r3, [r2, #0]
200006ae:	e008      	b.n	200006c2 <update_telemetry+0x62>
200006b0:	88fb      	ldrh	r3, [r7, #6]
200006b2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
200006b6:	d904      	bls.n	200006c2 <update_telemetry+0x62>
200006b8:	4a35      	ldr	r2, [pc, #212]	; (20000790 <update_telemetry+0x130>)
200006ba:	4b35      	ldr	r3, [pc, #212]	; (20000790 <update_telemetry+0x130>)
200006bc:	681b      	ldr	r3, [r3, #0]
200006be:	3b01      	subs	r3, #1
200006c0:	6013      	str	r3, [r2, #0]
200006c2:	4b36      	ldr	r3, [pc, #216]	; (2000079c <update_telemetry+0x13c>)
200006c4:	681b      	ldr	r3, [r3, #0]
200006c6:	b21a      	sxth	r2, r3
200006c8:	4b35      	ldr	r3, [pc, #212]	; (200007a0 <update_telemetry+0x140>)
200006ca:	801a      	strh	r2, [r3, #0]
200006cc:	4b35      	ldr	r3, [pc, #212]	; (200007a4 <update_telemetry+0x144>)
200006ce:	681a      	ldr	r2, [r3, #0]
200006d0:	4b35      	ldr	r3, [pc, #212]	; (200007a8 <update_telemetry+0x148>)
200006d2:	681b      	ldr	r3, [r3, #0]
200006d4:	1ad3      	subs	r3, r2, r3
200006d6:	4a35      	ldr	r2, [pc, #212]	; (200007ac <update_telemetry+0x14c>)
200006d8:	fb82 1203 	smull	r1, r2, r2, r3
200006dc:	441a      	add	r2, r3
200006de:	1152      	asrs	r2, r2, #5
200006e0:	17db      	asrs	r3, r3, #31
200006e2:	1ad3      	subs	r3, r2, r3
200006e4:	b21a      	sxth	r2, r3
200006e6:	4b2e      	ldr	r3, [pc, #184]	; (200007a0 <update_telemetry+0x140>)
200006e8:	805a      	strh	r2, [r3, #2]
200006ea:	4b31      	ldr	r3, [pc, #196]	; (200007b0 <update_telemetry+0x150>)
200006ec:	681b      	ldr	r3, [r3, #0]
200006ee:	129b      	asrs	r3, r3, #10
200006f0:	b29a      	uxth	r2, r3
200006f2:	4b2b      	ldr	r3, [pc, #172]	; (200007a0 <update_telemetry+0x140>)
200006f4:	809a      	strh	r2, [r3, #4]
200006f6:	4b2a      	ldr	r3, [pc, #168]	; (200007a0 <update_telemetry+0x140>)
200006f8:	2200      	movs	r2, #0
200006fa:	80da      	strh	r2, [r3, #6]
200006fc:	4b28      	ldr	r3, [pc, #160]	; (200007a0 <update_telemetry+0x140>)
200006fe:	603b      	str	r3, [r7, #0]
20000700:	492c      	ldr	r1, [pc, #176]	; (200007b4 <update_telemetry+0x154>)
20000702:	683b      	ldr	r3, [r7, #0]
20000704:	1c5a      	adds	r2, r3, #1
20000706:	603a      	str	r2, [r7, #0]
20000708:	781b      	ldrb	r3, [r3, #0]
2000070a:	600b      	str	r3, [r1, #0]
2000070c:	4929      	ldr	r1, [pc, #164]	; (200007b4 <update_telemetry+0x154>)
2000070e:	683b      	ldr	r3, [r7, #0]
20000710:	1c5a      	adds	r2, r3, #1
20000712:	603a      	str	r2, [r7, #0]
20000714:	781b      	ldrb	r3, [r3, #0]
20000716:	600b      	str	r3, [r1, #0]
20000718:	4926      	ldr	r1, [pc, #152]	; (200007b4 <update_telemetry+0x154>)
2000071a:	683b      	ldr	r3, [r7, #0]
2000071c:	1c5a      	adds	r2, r3, #1
2000071e:	603a      	str	r2, [r7, #0]
20000720:	781b      	ldrb	r3, [r3, #0]
20000722:	600b      	str	r3, [r1, #0]
20000724:	4923      	ldr	r1, [pc, #140]	; (200007b4 <update_telemetry+0x154>)
20000726:	683b      	ldr	r3, [r7, #0]
20000728:	1c5a      	adds	r2, r3, #1
2000072a:	603a      	str	r2, [r7, #0]
2000072c:	781b      	ldrb	r3, [r3, #0]
2000072e:	600b      	str	r3, [r1, #0]
20000730:	4920      	ldr	r1, [pc, #128]	; (200007b4 <update_telemetry+0x154>)
20000732:	683b      	ldr	r3, [r7, #0]
20000734:	1c5a      	adds	r2, r3, #1
20000736:	603a      	str	r2, [r7, #0]
20000738:	781b      	ldrb	r3, [r3, #0]
2000073a:	600b      	str	r3, [r1, #0]
2000073c:	491d      	ldr	r1, [pc, #116]	; (200007b4 <update_telemetry+0x154>)
2000073e:	683b      	ldr	r3, [r7, #0]
20000740:	1c5a      	adds	r2, r3, #1
20000742:	603a      	str	r2, [r7, #0]
20000744:	781b      	ldrb	r3, [r3, #0]
20000746:	600b      	str	r3, [r1, #0]
20000748:	491a      	ldr	r1, [pc, #104]	; (200007b4 <update_telemetry+0x154>)
2000074a:	683b      	ldr	r3, [r7, #0]
2000074c:	1c5a      	adds	r2, r3, #1
2000074e:	603a      	str	r2, [r7, #0]
20000750:	781b      	ldrb	r3, [r3, #0]
20000752:	600b      	str	r3, [r1, #0]
20000754:	4917      	ldr	r1, [pc, #92]	; (200007b4 <update_telemetry+0x154>)
20000756:	683b      	ldr	r3, [r7, #0]
20000758:	1c5a      	adds	r2, r3, #1
2000075a:	603a      	str	r2, [r7, #0]
2000075c:	781b      	ldrb	r3, [r3, #0]
2000075e:	600b      	str	r3, [r1, #0]
20000760:	4b14      	ldr	r3, [pc, #80]	; (200007b4 <update_telemetry+0x154>)
20000762:	699b      	ldr	r3, [r3, #24]
20000764:	f003 0308 	and.w	r3, r3, #8
20000768:	2b00      	cmp	r3, #0
2000076a:	d10b      	bne.n	20000784 <update_telemetry+0x124>
2000076c:	4a09      	ldr	r2, [pc, #36]	; (20000794 <update_telemetry+0x134>)
2000076e:	4b09      	ldr	r3, [pc, #36]	; (20000794 <update_telemetry+0x134>)
20000770:	681b      	ldr	r3, [r3, #0]
20000772:	f023 0301 	bic.w	r3, r3, #1
20000776:	6013      	str	r3, [r2, #0]
20000778:	4a07      	ldr	r2, [pc, #28]	; (20000798 <update_telemetry+0x138>)
2000077a:	4b07      	ldr	r3, [pc, #28]	; (20000798 <update_telemetry+0x138>)
2000077c:	699b      	ldr	r3, [r3, #24]
2000077e:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
20000782:	6193      	str	r3, [r2, #24]
20000784:	bf00      	nop
20000786:	370c      	adds	r7, #12
20000788:	46bd      	mov	sp, r7
2000078a:	bc80      	pop	{r7}
2000078c:	4770      	bx	lr
2000078e:	bf00      	nop
20000790:	40070000 	.word	0x40070000
20000794:	400a8000 	.word	0x400a8000
20000798:	400b0000 	.word	0x400b0000
2000079c:	20002a38 	.word	0x20002a38
200007a0:	20002a3c 	.word	0x20002a3c
200007a4:	20002a28 	.word	0x20002a28
200007a8:	20002a2c 	.word	0x20002a2c
200007ac:	8fb823ef 	.word	0x8fb823ef
200007b0:	20002a34 	.word	0x20002a34
200007b4:	40030000 	.word	0x40030000

200007b8 <update_refposition>:
200007b8:	b480      	push	{r7}
200007ba:	b087      	sub	sp, #28
200007bc:	af00      	add	r7, sp, #0
200007be:	4b2e      	ldr	r3, [pc, #184]	; (20000878 <update_refposition+0xc0>)
200007c0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200007c2:	f003 0310 	and.w	r3, r3, #16
200007c6:	2b00      	cmp	r3, #0
200007c8:	d040      	beq.n	2000084c <update_refposition+0x94>
200007ca:	2300      	movs	r3, #0
200007cc:	617b      	str	r3, [r7, #20]
200007ce:	e00c      	b.n	200007ea <update_refposition+0x32>
200007d0:	4b29      	ldr	r3, [pc, #164]	; (20000878 <update_refposition+0xc0>)
200007d2:	681b      	ldr	r3, [r3, #0]
200007d4:	b2d9      	uxtb	r1, r3
200007d6:	463a      	mov	r2, r7
200007d8:	697b      	ldr	r3, [r7, #20]
200007da:	4413      	add	r3, r2
200007dc:	460a      	mov	r2, r1
200007de:	701a      	strb	r2, [r3, #0]
200007e0:	697b      	ldr	r3, [r7, #20]
200007e2:	3301      	adds	r3, #1
200007e4:	f003 030f 	and.w	r3, r3, #15
200007e8:	617b      	str	r3, [r7, #20]
200007ea:	4b23      	ldr	r3, [pc, #140]	; (20000878 <update_refposition+0xc0>)
200007ec:	699b      	ldr	r3, [r3, #24]
200007ee:	f003 0310 	and.w	r3, r3, #16
200007f2:	2b00      	cmp	r3, #0
200007f4:	d0ec      	beq.n	200007d0 <update_refposition+0x18>
200007f6:	783b      	ldrb	r3, [r7, #0]
200007f8:	b29a      	uxth	r2, r3
200007fa:	787b      	ldrb	r3, [r7, #1]
200007fc:	b29b      	uxth	r3, r3
200007fe:	021b      	lsls	r3, r3, #8
20000800:	b29b      	uxth	r3, r3
20000802:	4413      	add	r3, r2
20000804:	b29b      	uxth	r3, r3
20000806:	827b      	strh	r3, [r7, #18]
20000808:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
2000080c:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
20000810:	db03      	blt.n	2000081a <update_refposition+0x62>
20000812:	f240 73ff 	movw	r3, #2047	; 0x7ff
20000816:	827b      	strh	r3, [r7, #18]
20000818:	bf00      	nop
2000081a:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
2000081e:	f513 6f00 	cmn.w	r3, #2048	; 0x800
20000822:	da03      	bge.n	2000082c <update_refposition+0x74>
20000824:	f44f 4378 	mov.w	r3, #63488	; 0xf800
20000828:	827b      	strh	r3, [r7, #18]
2000082a:	bf00      	nop
2000082c:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
20000830:	4a12      	ldr	r2, [pc, #72]	; (2000087c <update_refposition+0xc4>)
20000832:	6013      	str	r3, [r2, #0]
20000834:	f9b7 2012 	ldrsh.w	r2, [r7, #18]
20000838:	4613      	mov	r3, r2
2000083a:	00db      	lsls	r3, r3, #3
2000083c:	1a9b      	subs	r3, r3, r2
2000083e:	00db      	lsls	r3, r3, #3
20000840:	441a      	add	r2, r3
20000842:	4b0f      	ldr	r3, [pc, #60]	; (20000880 <update_refposition+0xc8>)
20000844:	681b      	ldr	r3, [r3, #0]
20000846:	4413      	add	r3, r2
20000848:	4a0e      	ldr	r2, [pc, #56]	; (20000884 <update_refposition+0xcc>)
2000084a:	6013      	str	r3, [r2, #0]
2000084c:	4b0a      	ldr	r3, [pc, #40]	; (20000878 <update_refposition+0xc0>)
2000084e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000850:	f003 0340 	and.w	r3, r3, #64	; 0x40
20000854:	2b00      	cmp	r3, #0
20000856:	d009      	beq.n	2000086c <update_refposition+0xb4>
20000858:	e002      	b.n	20000860 <update_refposition+0xa8>
2000085a:	4b07      	ldr	r3, [pc, #28]	; (20000878 <update_refposition+0xc0>)
2000085c:	681b      	ldr	r3, [r3, #0]
2000085e:	747b      	strb	r3, [r7, #17]
20000860:	4b05      	ldr	r3, [pc, #20]	; (20000878 <update_refposition+0xc0>)
20000862:	699b      	ldr	r3, [r3, #24]
20000864:	f003 0310 	and.w	r3, r3, #16
20000868:	2b00      	cmp	r3, #0
2000086a:	d0f6      	beq.n	2000085a <update_refposition+0xa2>
2000086c:	bf00      	nop
2000086e:	371c      	adds	r7, #28
20000870:	46bd      	mov	sp, r7
20000872:	bc80      	pop	{r7}
20000874:	4770      	bx	lr
20000876:	bf00      	nop
20000878:	40030000 	.word	0x40030000
2000087c:	20002a38 	.word	0x20002a38
20000880:	20002a2c 	.word	0x20002a2c
20000884:	20002a00 	.word	0x20002a00

20000888 <mycos>:
20000888:	4b02      	ldr	r3, [pc, #8]	; (20000894 <mycos+0xc>)
2000088a:	f3c0 0009 	ubfx	r0, r0, #0, #10
2000088e:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000892:	4770      	bx	lr
20000894:	200019cc 	.word	0x200019cc

20000898 <mysin>:
20000898:	4b03      	ldr	r3, [pc, #12]	; (200008a8 <mysin+0x10>)
2000089a:	f500 7040 	add.w	r0, r0, #768	; 0x300
2000089e:	f3c0 0009 	ubfx	r0, r0, #0, #10
200008a2:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
200008a6:	4770      	bx	lr
200008a8:	200019cc 	.word	0x200019cc

200008ac <reg_init>:
200008ac:	2300      	movs	r3, #0
200008ae:	e880 000e 	stmia.w	r0, {r1, r2, r3}
200008b2:	60c3      	str	r3, [r0, #12]
200008b4:	4770      	bx	lr
200008b6:	bf00      	nop

200008b8 <reg_update>:
200008b8:	6803      	ldr	r3, [r0, #0]
200008ba:	b410      	push	{r4}
200008bc:	fb03 f301 	mul.w	r3, r3, r1
200008c0:	6884      	ldr	r4, [r0, #8]
200008c2:	b11a      	cbz	r2, 200008cc <reg_update+0x14>
200008c4:	2c00      	cmp	r4, #0
200008c6:	dd09      	ble.n	200008dc <reg_update+0x24>
200008c8:	ea03 73e3 	and.w	r3, r3, r3, asr #31
200008cc:	6842      	ldr	r2, [r0, #4]
200008ce:	4423      	add	r3, r4
200008d0:	fb02 3101 	mla	r1, r2, r1, r3
200008d4:	6083      	str	r3, [r0, #8]
200008d6:	60c1      	str	r1, [r0, #12]
200008d8:	bc10      	pop	{r4}
200008da:	4770      	bx	lr
200008dc:	bf18      	it	ne
200008de:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
200008e2:	e7f3      	b.n	200008cc <reg_update+0x14>

200008e4 <dot3>:
200008e4:	b430      	push	{r4, r5}
200008e6:	684b      	ldr	r3, [r1, #4]
200008e8:	6844      	ldr	r4, [r0, #4]
200008ea:	6802      	ldr	r2, [r0, #0]
200008ec:	fb03 f304 	mul.w	r3, r3, r4
200008f0:	680d      	ldr	r5, [r1, #0]
200008f2:	6884      	ldr	r4, [r0, #8]
200008f4:	fb05 3302 	mla	r3, r5, r2, r3
200008f8:	6888      	ldr	r0, [r1, #8]
200008fa:	fb00 3004 	mla	r0, r0, r4, r3
200008fe:	bc30      	pop	{r4, r5}
20000900:	4770      	bx	lr
20000902:	bf00      	nop

20000904 <abc_to_dq>:
20000904:	b4f0      	push	{r4, r5, r6, r7}
20000906:	4c1d      	ldr	r4, [pc, #116]	; (2000097c <abc_to_dq+0x78>)
20000908:	6803      	ldr	r3, [r0, #0]
2000090a:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
2000090e:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
20000912:	fb03 f306 	mul.w	r3, r3, r6
20000916:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000091a:	6847      	ldr	r7, [r0, #4]
2000091c:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000920:	f202 1655 	addw	r6, r2, #341	; 0x155
20000924:	fb07 3305 	mla	r3, r7, r5, r3
20000928:	f3c6 0509 	ubfx	r5, r6, #0, #10
2000092c:	6887      	ldr	r7, [r0, #8]
2000092e:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000932:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
20000936:	fb07 3305 	mla	r3, r7, r5, r3
2000093a:	129b      	asrs	r3, r3, #10
2000093c:	600b      	str	r3, [r1, #0]
2000093e:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000942:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
20000946:	6843      	ldr	r3, [r0, #4]
20000948:	f502 7540 	add.w	r5, r2, #768	; 0x300
2000094c:	fb03 f306 	mul.w	r3, r3, r6
20000950:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000954:	6806      	ldr	r6, [r0, #0]
20000956:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
2000095a:	f202 4255 	addw	r2, r2, #1109	; 0x455
2000095e:	fb06 3305 	mla	r3, r6, r5, r3
20000962:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000966:	6880      	ldr	r0, [r0, #8]
20000968:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
2000096c:	bcf0      	pop	{r4, r5, r6, r7}
2000096e:	fb00 3302 	mla	r3, r0, r2, r3
20000972:	425b      	negs	r3, r3
20000974:	129b      	asrs	r3, r3, #10
20000976:	604b      	str	r3, [r1, #4]
20000978:	4770      	bx	lr
2000097a:	bf00      	nop
2000097c:	200019cc 	.word	0x200019cc

20000980 <dq_to_abc>:
20000980:	4b1d      	ldr	r3, [pc, #116]	; (200009f8 <dq_to_abc+0x78>)
20000982:	b4f0      	push	{r4, r5, r6, r7}
20000984:	680e      	ldr	r6, [r1, #0]
20000986:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
2000098a:	f502 7540 	add.w	r5, r2, #768	; 0x300
2000098e:	fb04 f406 	mul.w	r4, r4, r6
20000992:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000996:	684f      	ldr	r7, [r1, #4]
20000998:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
2000099c:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
200009a0:	fb07 4415 	mls	r4, r7, r5, r4
200009a4:	1524      	asrs	r4, r4, #20
200009a6:	6004      	str	r4, [r0, #0]
200009a8:	f3c6 0509 	ubfx	r5, r6, #0, #10
200009ac:	680c      	ldr	r4, [r1, #0]
200009ae:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
200009b2:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
200009b6:	fb04 f406 	mul.w	r4, r4, r6
200009ba:	f3c5 0509 	ubfx	r5, r5, #0, #10
200009be:	684f      	ldr	r7, [r1, #4]
200009c0:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
200009c4:	f202 1655 	addw	r6, r2, #341	; 0x155
200009c8:	fb07 4415 	mls	r4, r7, r5, r4
200009cc:	1524      	asrs	r4, r4, #20
200009ce:	6044      	str	r4, [r0, #4]
200009d0:	f3c6 0509 	ubfx	r5, r6, #0, #10
200009d4:	680c      	ldr	r4, [r1, #0]
200009d6:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
200009da:	f202 4255 	addw	r2, r2, #1109	; 0x455
200009de:	fb04 f405 	mul.w	r4, r4, r5
200009e2:	f3c2 0209 	ubfx	r2, r2, #0, #10
200009e6:	6849      	ldr	r1, [r1, #4]
200009e8:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
200009ec:	fb01 4312 	mls	r3, r1, r2, r4
200009f0:	bcf0      	pop	{r4, r5, r6, r7}
200009f2:	151b      	asrs	r3, r3, #20
200009f4:	6083      	str	r3, [r0, #8]
200009f6:	4770      	bx	lr
200009f8:	200019cc 	.word	0x200019cc

200009fc <cord_atan>:
200009fc:	b5f0      	push	{r4, r5, r6, r7, lr}
200009fe:	b091      	sub	sp, #68	; 0x44
20000a00:	46ee      	mov	lr, sp
20000a02:	4684      	mov	ip, r0
20000a04:	4e56      	ldr	r6, [pc, #344]	; (20000b60 <cord_atan+0x164>)
20000a06:	460d      	mov	r5, r1
20000a08:	4614      	mov	r4, r2
20000a0a:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000a0c:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000a10:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000a14:	af08      	add	r7, sp, #32
20000a16:	3610      	adds	r6, #16
20000a18:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000a1c:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000a1e:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000a20:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000a24:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000a28:	f8dc 6000 	ldr.w	r6, [ip]
20000a2c:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000a30:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000a34:	2b00      	cmp	r3, #0
20000a36:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000a3a:	9900      	ldr	r1, [sp, #0]
20000a3c:	dd56      	ble.n	20000aec <cord_atan+0xf0>
20000a3e:	18d0      	adds	r0, r2, r3
20000a40:	1a9b      	subs	r3, r3, r2
20000a42:	2b00      	cmp	r3, #0
20000a44:	d07a      	beq.n	20000b3c <cord_atan+0x140>
20000a46:	9f01      	ldr	r7, [sp, #4]
20000a48:	dd54      	ble.n	20000af4 <cord_atan+0xf8>
20000a4a:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000a4e:	4439      	add	r1, r7
20000a50:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000a54:	2b00      	cmp	r3, #0
20000a56:	d073      	beq.n	20000b40 <cord_atan+0x144>
20000a58:	9f02      	ldr	r7, [sp, #8]
20000a5a:	dd51      	ble.n	20000b00 <cord_atan+0x104>
20000a5c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000a60:	4439      	add	r1, r7
20000a62:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000a66:	2b00      	cmp	r3, #0
20000a68:	d06d      	beq.n	20000b46 <cord_atan+0x14a>
20000a6a:	9f03      	ldr	r7, [sp, #12]
20000a6c:	dd4e      	ble.n	20000b0c <cord_atan+0x110>
20000a6e:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000a72:	4439      	add	r1, r7
20000a74:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000a78:	2b00      	cmp	r3, #0
20000a7a:	d066      	beq.n	20000b4a <cord_atan+0x14e>
20000a7c:	9f04      	ldr	r7, [sp, #16]
20000a7e:	dd4b      	ble.n	20000b18 <cord_atan+0x11c>
20000a80:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000a84:	4439      	add	r1, r7
20000a86:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000a8a:	2b00      	cmp	r3, #0
20000a8c:	d060      	beq.n	20000b50 <cord_atan+0x154>
20000a8e:	9f05      	ldr	r7, [sp, #20]
20000a90:	dd48      	ble.n	20000b24 <cord_atan+0x128>
20000a92:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000a96:	4439      	add	r1, r7
20000a98:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000a9c:	2b00      	cmp	r3, #0
20000a9e:	d059      	beq.n	20000b54 <cord_atan+0x158>
20000aa0:	9f06      	ldr	r7, [sp, #24]
20000aa2:	dd45      	ble.n	20000b30 <cord_atan+0x134>
20000aa4:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000aa8:	4439      	add	r1, r7
20000aaa:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000aae:	2b00      	cmp	r3, #0
20000ab0:	d053      	beq.n	20000b5a <cord_atan+0x15e>
20000ab2:	9a07      	ldr	r2, [sp, #28]
20000ab4:	bfc7      	ittee	gt
20000ab6:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000aba:	1889      	addgt	r1, r1, r2
20000abc:	1a89      	suble	r1, r1, r2
20000abe:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000ac2:	2207      	movs	r2, #7
20000ac4:	ab10      	add	r3, sp, #64	; 0x40
20000ac6:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000aca:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000ace:	2e00      	cmp	r6, #0
20000ad0:	fb03 f300 	mul.w	r3, r3, r0
20000ad4:	bfb8      	it	lt
20000ad6:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000ada:	2900      	cmp	r1, #0
20000adc:	bfb8      	it	lt
20000ade:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000ae2:	129b      	asrs	r3, r3, #10
20000ae4:	6029      	str	r1, [r5, #0]
20000ae6:	6023      	str	r3, [r4, #0]
20000ae8:	b011      	add	sp, #68	; 0x44
20000aea:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000aec:	1ad0      	subs	r0, r2, r3
20000aee:	4249      	negs	r1, r1
20000af0:	4413      	add	r3, r2
20000af2:	e7a6      	b.n	20000a42 <cord_atan+0x46>
20000af4:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000af8:	1bc9      	subs	r1, r1, r7
20000afa:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000afe:	e7a9      	b.n	20000a54 <cord_atan+0x58>
20000b00:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000b04:	1bc9      	subs	r1, r1, r7
20000b06:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000b0a:	e7ac      	b.n	20000a66 <cord_atan+0x6a>
20000b0c:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000b10:	1bc9      	subs	r1, r1, r7
20000b12:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000b16:	e7af      	b.n	20000a78 <cord_atan+0x7c>
20000b18:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000b1c:	1bc9      	subs	r1, r1, r7
20000b1e:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000b22:	e7b2      	b.n	20000a8a <cord_atan+0x8e>
20000b24:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000b28:	1bc9      	subs	r1, r1, r7
20000b2a:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000b2e:	e7b5      	b.n	20000a9c <cord_atan+0xa0>
20000b30:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000b34:	1bc9      	subs	r1, r1, r7
20000b36:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000b3a:	e7b8      	b.n	20000aae <cord_atan+0xb2>
20000b3c:	461a      	mov	r2, r3
20000b3e:	e7c1      	b.n	20000ac4 <cord_atan+0xc8>
20000b40:	4610      	mov	r0, r2
20000b42:	2201      	movs	r2, #1
20000b44:	e7be      	b.n	20000ac4 <cord_atan+0xc8>
20000b46:	2202      	movs	r2, #2
20000b48:	e7bc      	b.n	20000ac4 <cord_atan+0xc8>
20000b4a:	4610      	mov	r0, r2
20000b4c:	2203      	movs	r2, #3
20000b4e:	e7b9      	b.n	20000ac4 <cord_atan+0xc8>
20000b50:	2204      	movs	r2, #4
20000b52:	e7b7      	b.n	20000ac4 <cord_atan+0xc8>
20000b54:	4610      	mov	r0, r2
20000b56:	2205      	movs	r2, #5
20000b58:	e7b4      	b.n	20000ac4 <cord_atan+0xc8>
20000b5a:	2206      	movs	r2, #6
20000b5c:	e7b2      	b.n	20000ac4 <cord_atan+0xc8>
20000b5e:	bf00      	nop
20000b60:	2000198c 	.word	0x2000198c

20000b64 <sinpwm>:
20000b64:	b5f0      	push	{r4, r5, r6, r7, lr}
20000b66:	b091      	sub	sp, #68	; 0x44
20000b68:	46ee      	mov	lr, sp
20000b6a:	468c      	mov	ip, r1
20000b6c:	4e6e      	ldr	r6, [pc, #440]	; (20000d28 <sinpwm+0x1c4>)
20000b6e:	4604      	mov	r4, r0
20000b70:	4615      	mov	r5, r2
20000b72:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000b74:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000b78:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000b7c:	af08      	add	r7, sp, #32
20000b7e:	3610      	adds	r6, #16
20000b80:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000b84:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000b86:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000b88:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000b8c:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000b90:	f8dc 6000 	ldr.w	r6, [ip]
20000b94:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000b98:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000b9c:	2b00      	cmp	r3, #0
20000b9e:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000ba2:	9900      	ldr	r1, [sp, #0]
20000ba4:	f340 8087 	ble.w	20000cb6 <sinpwm+0x152>
20000ba8:	18d0      	adds	r0, r2, r3
20000baa:	1a9b      	subs	r3, r3, r2
20000bac:	2b00      	cmp	r3, #0
20000bae:	f000 80aa 	beq.w	20000d06 <sinpwm+0x1a2>
20000bb2:	9f01      	ldr	r7, [sp, #4]
20000bb4:	f340 8083 	ble.w	20000cbe <sinpwm+0x15a>
20000bb8:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000bbc:	4439      	add	r1, r7
20000bbe:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000bc2:	2b00      	cmp	r3, #0
20000bc4:	f000 80a1 	beq.w	20000d0a <sinpwm+0x1a6>
20000bc8:	9f02      	ldr	r7, [sp, #8]
20000bca:	dd7e      	ble.n	20000cca <sinpwm+0x166>
20000bcc:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000bd0:	4439      	add	r1, r7
20000bd2:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000bd6:	2b00      	cmp	r3, #0
20000bd8:	f000 809a 	beq.w	20000d10 <sinpwm+0x1ac>
20000bdc:	9f03      	ldr	r7, [sp, #12]
20000bde:	dd7a      	ble.n	20000cd6 <sinpwm+0x172>
20000be0:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000be4:	4439      	add	r1, r7
20000be6:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000bea:	2b00      	cmp	r3, #0
20000bec:	f000 8092 	beq.w	20000d14 <sinpwm+0x1b0>
20000bf0:	9f04      	ldr	r7, [sp, #16]
20000bf2:	dd76      	ble.n	20000ce2 <sinpwm+0x17e>
20000bf4:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000bf8:	4439      	add	r1, r7
20000bfa:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000bfe:	2b00      	cmp	r3, #0
20000c00:	f000 808b 	beq.w	20000d1a <sinpwm+0x1b6>
20000c04:	9f05      	ldr	r7, [sp, #20]
20000c06:	dd72      	ble.n	20000cee <sinpwm+0x18a>
20000c08:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000c0c:	4439      	add	r1, r7
20000c0e:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000c12:	2b00      	cmp	r3, #0
20000c14:	f000 8083 	beq.w	20000d1e <sinpwm+0x1ba>
20000c18:	9f06      	ldr	r7, [sp, #24]
20000c1a:	dd6e      	ble.n	20000cfa <sinpwm+0x196>
20000c1c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000c20:	4439      	add	r1, r7
20000c22:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000c26:	2b00      	cmp	r3, #0
20000c28:	d07c      	beq.n	20000d24 <sinpwm+0x1c0>
20000c2a:	9a07      	ldr	r2, [sp, #28]
20000c2c:	bfc7      	ittee	gt
20000c2e:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000c32:	1889      	addgt	r1, r1, r2
20000c34:	1a89      	suble	r1, r1, r2
20000c36:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000c3a:	2207      	movs	r2, #7
20000c3c:	ab10      	add	r3, sp, #64	; 0x40
20000c3e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000c42:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000c46:	2e00      	cmp	r6, #0
20000c48:	fb03 f300 	mul.w	r3, r3, r0
20000c4c:	bfb8      	it	lt
20000c4e:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000c52:	2900      	cmp	r1, #0
20000c54:	bfb8      	it	lt
20000c56:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000c5a:	151b      	asrs	r3, r3, #20
20000c5c:	440d      	add	r5, r1
20000c5e:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000c62:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c66:	dd22      	ble.n	20000cae <sinpwm+0x14a>
20000c68:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 20000d30 <sinpwm+0x1cc>
20000c6c:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
20000c70:	2001      	movs	r0, #1
20000c72:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
20000c76:	4f2d      	ldr	r7, [pc, #180]	; (20000d2c <sinpwm+0x1c8>)
20000c78:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
20000c7c:	3602      	adds	r6, #2
20000c7e:	f3ce 0e09 	ubfx	lr, lr, #0, #10
20000c82:	f3c6 0609 	ubfx	r6, r6, #0, #10
20000c86:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
20000c8a:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
20000c8e:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
20000c92:	fb06 f50c 	mul.w	r5, r6, ip
20000c96:	fb01 f10c 	mul.w	r1, r1, ip
20000c9a:	fb02 f303 	mul.w	r3, r2, r3
20000c9e:	12ad      	asrs	r5, r5, #10
20000ca0:	128a      	asrs	r2, r1, #10
20000ca2:	129b      	asrs	r3, r3, #10
20000ca4:	60a5      	str	r5, [r4, #8]
20000ca6:	6062      	str	r2, [r4, #4]
20000ca8:	6023      	str	r3, [r4, #0]
20000caa:	b011      	add	sp, #68	; 0x44
20000cac:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000cae:	f1c3 0c00 	rsb	ip, r3, #0
20000cb2:	2000      	movs	r0, #0
20000cb4:	e7dd      	b.n	20000c72 <sinpwm+0x10e>
20000cb6:	1ad0      	subs	r0, r2, r3
20000cb8:	4249      	negs	r1, r1
20000cba:	4413      	add	r3, r2
20000cbc:	e776      	b.n	20000bac <sinpwm+0x48>
20000cbe:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000cc2:	1bc9      	subs	r1, r1, r7
20000cc4:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000cc8:	e77b      	b.n	20000bc2 <sinpwm+0x5e>
20000cca:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000cce:	1bc9      	subs	r1, r1, r7
20000cd0:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000cd4:	e77f      	b.n	20000bd6 <sinpwm+0x72>
20000cd6:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000cda:	1bc9      	subs	r1, r1, r7
20000cdc:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000ce0:	e783      	b.n	20000bea <sinpwm+0x86>
20000ce2:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000ce6:	1bc9      	subs	r1, r1, r7
20000ce8:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000cec:	e787      	b.n	20000bfe <sinpwm+0x9a>
20000cee:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000cf2:	1bc9      	subs	r1, r1, r7
20000cf4:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000cf8:	e78b      	b.n	20000c12 <sinpwm+0xae>
20000cfa:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000cfe:	1bc9      	subs	r1, r1, r7
20000d00:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000d04:	e78f      	b.n	20000c26 <sinpwm+0xc2>
20000d06:	461a      	mov	r2, r3
20000d08:	e798      	b.n	20000c3c <sinpwm+0xd8>
20000d0a:	4610      	mov	r0, r2
20000d0c:	2201      	movs	r2, #1
20000d0e:	e795      	b.n	20000c3c <sinpwm+0xd8>
20000d10:	2202      	movs	r2, #2
20000d12:	e793      	b.n	20000c3c <sinpwm+0xd8>
20000d14:	4610      	mov	r0, r2
20000d16:	2203      	movs	r2, #3
20000d18:	e790      	b.n	20000c3c <sinpwm+0xd8>
20000d1a:	2204      	movs	r2, #4
20000d1c:	e78e      	b.n	20000c3c <sinpwm+0xd8>
20000d1e:	4610      	mov	r0, r2
20000d20:	2205      	movs	r2, #5
20000d22:	e78b      	b.n	20000c3c <sinpwm+0xd8>
20000d24:	2206      	movs	r2, #6
20000d26:	e789      	b.n	20000c3c <sinpwm+0xd8>
20000d28:	2000198c 	.word	0x2000198c
20000d2c:	200019cc 	.word	0x200019cc
20000d30:	fffffe0c 	.word	0xfffffe0c

20000d34 <svpwm>:
20000d34:	b5f0      	push	{r4, r5, r6, r7, lr}
20000d36:	b091      	sub	sp, #68	; 0x44
20000d38:	46ee      	mov	lr, sp
20000d3a:	468c      	mov	ip, r1
20000d3c:	4eb8      	ldr	r6, [pc, #736]	; (20001020 <svpwm+0x2ec>)
20000d3e:	4604      	mov	r4, r0
20000d40:	4615      	mov	r5, r2
20000d42:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000d44:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000d48:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000d4c:	af08      	add	r7, sp, #32
20000d4e:	3610      	adds	r6, #16
20000d50:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000d54:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000d56:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000d58:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000d5c:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000d60:	f8dc 6000 	ldr.w	r6, [ip]
20000d64:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000d68:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000d6c:	2b00      	cmp	r3, #0
20000d6e:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000d72:	9900      	ldr	r1, [sp, #0]
20000d74:	dd6f      	ble.n	20000e56 <svpwm+0x122>
20000d76:	18d0      	adds	r0, r2, r3
20000d78:	1a9b      	subs	r3, r3, r2
20000d7a:	2b00      	cmp	r3, #0
20000d7c:	f000 813f 	beq.w	20000ffe <svpwm+0x2ca>
20000d80:	9f01      	ldr	r7, [sp, #4]
20000d82:	dd6c      	ble.n	20000e5e <svpwm+0x12a>
20000d84:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000d88:	4439      	add	r1, r7
20000d8a:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000d8e:	2b00      	cmp	r3, #0
20000d90:	f000 8137 	beq.w	20001002 <svpwm+0x2ce>
20000d94:	9f02      	ldr	r7, [sp, #8]
20000d96:	dd68      	ble.n	20000e6a <svpwm+0x136>
20000d98:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000d9c:	4439      	add	r1, r7
20000d9e:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000da2:	2b00      	cmp	r3, #0
20000da4:	f000 8130 	beq.w	20001008 <svpwm+0x2d4>
20000da8:	9f03      	ldr	r7, [sp, #12]
20000daa:	dd64      	ble.n	20000e76 <svpwm+0x142>
20000dac:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000db0:	4439      	add	r1, r7
20000db2:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000db6:	2b00      	cmp	r3, #0
20000db8:	f000 8128 	beq.w	2000100c <svpwm+0x2d8>
20000dbc:	9f04      	ldr	r7, [sp, #16]
20000dbe:	dd60      	ble.n	20000e82 <svpwm+0x14e>
20000dc0:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000dc4:	4439      	add	r1, r7
20000dc6:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000dca:	2b00      	cmp	r3, #0
20000dcc:	f000 8121 	beq.w	20001012 <svpwm+0x2de>
20000dd0:	9f05      	ldr	r7, [sp, #20]
20000dd2:	dd5c      	ble.n	20000e8e <svpwm+0x15a>
20000dd4:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000dd8:	4439      	add	r1, r7
20000dda:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000dde:	2b00      	cmp	r3, #0
20000de0:	f000 8119 	beq.w	20001016 <svpwm+0x2e2>
20000de4:	9f06      	ldr	r7, [sp, #24]
20000de6:	dd58      	ble.n	20000e9a <svpwm+0x166>
20000de8:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000dec:	4439      	add	r1, r7
20000dee:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000df2:	2b00      	cmp	r3, #0
20000df4:	f000 8112 	beq.w	2000101c <svpwm+0x2e8>
20000df8:	9a07      	ldr	r2, [sp, #28]
20000dfa:	bfc7      	ittee	gt
20000dfc:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000e00:	1889      	addgt	r1, r1, r2
20000e02:	1a89      	suble	r1, r1, r2
20000e04:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000e08:	2207      	movs	r2, #7
20000e0a:	ab10      	add	r3, sp, #64	; 0x40
20000e0c:	2e00      	cmp	r6, #0
20000e0e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000e12:	bfb8      	it	lt
20000e14:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000e18:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000e1c:	2900      	cmp	r1, #0
20000e1e:	fb03 f300 	mul.w	r3, r3, r0
20000e22:	bfb8      	it	lt
20000e24:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000e28:	440d      	add	r5, r1
20000e2a:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000e2e:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20000e32:	151b      	asrs	r3, r3, #20
20000e34:	1252      	asrs	r2, r2, #9
20000e36:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000e3a:	f102 32ff 	add.w	r2, r2, #4294967295
20000e3e:	bfc6      	itte	gt
20000e40:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20000e44:	2001      	movgt	r0, #1
20000e46:	2000      	movle	r0, #0
20000e48:	2a04      	cmp	r2, #4
20000e4a:	d848      	bhi.n	20000ede <svpwm+0x1aa>
20000e4c:	e8df f002 	tbb	[pc, r2]
20000e50:	2b9e8164 	.word	0x2b9e8164
20000e54:	bb          	.byte	0xbb
20000e55:	00          	.byte	0x00
20000e56:	1ad0      	subs	r0, r2, r3
20000e58:	4249      	negs	r1, r1
20000e5a:	4413      	add	r3, r2
20000e5c:	e78d      	b.n	20000d7a <svpwm+0x46>
20000e5e:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000e62:	1bc9      	subs	r1, r1, r7
20000e64:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000e68:	e791      	b.n	20000d8e <svpwm+0x5a>
20000e6a:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000e6e:	1bc9      	subs	r1, r1, r7
20000e70:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000e74:	e795      	b.n	20000da2 <svpwm+0x6e>
20000e76:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000e7a:	1bc9      	subs	r1, r1, r7
20000e7c:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000e80:	e799      	b.n	20000db6 <svpwm+0x82>
20000e82:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000e86:	1bc9      	subs	r1, r1, r7
20000e88:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000e8c:	e79d      	b.n	20000dca <svpwm+0x96>
20000e8e:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000e92:	1bc9      	subs	r1, r1, r7
20000e94:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000e98:	e7a1      	b.n	20000dde <svpwm+0xaa>
20000e9a:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000e9e:	1bc9      	subs	r1, r1, r7
20000ea0:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000ea4:	e7a5      	b.n	20000df2 <svpwm+0xbe>
20000ea6:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
20000eaa:	4e5e      	ldr	r6, [pc, #376]	; (20001024 <svpwm+0x2f0>)
20000eac:	3204      	adds	r2, #4
20000eae:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000eb2:	3556      	adds	r5, #86	; 0x56
20000eb4:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000eb8:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000ebc:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000ec0:	fb01 f103 	mul.w	r1, r1, r3
20000ec4:	fb02 f203 	mul.w	r2, r2, r3
20000ec8:	1289      	asrs	r1, r1, #10
20000eca:	1293      	asrs	r3, r2, #10
20000ecc:	424a      	negs	r2, r1
20000ece:	1ad2      	subs	r2, r2, r3
20000ed0:	1a5d      	subs	r5, r3, r1
20000ed2:	440b      	add	r3, r1
20000ed4:	6062      	str	r2, [r4, #4]
20000ed6:	6025      	str	r5, [r4, #0]
20000ed8:	60a3      	str	r3, [r4, #8]
20000eda:	b011      	add	sp, #68	; 0x44
20000edc:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000ede:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000ee2:	4e50      	ldr	r6, [pc, #320]	; (20001024 <svpwm+0x2f0>)
20000ee4:	3202      	adds	r2, #2
20000ee6:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000eea:	f505 7540 	add.w	r5, r5, #768	; 0x300
20000eee:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000ef2:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000ef6:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000efa:	fb01 f103 	mul.w	r1, r1, r3
20000efe:	fb02 f203 	mul.w	r2, r2, r3
20000f02:	1289      	asrs	r1, r1, #10
20000f04:	1293      	asrs	r3, r2, #10
20000f06:	424a      	negs	r2, r1
20000f08:	1ad2      	subs	r2, r2, r3
20000f0a:	18cd      	adds	r5, r1, r3
20000f0c:	1a5b      	subs	r3, r3, r1
20000f0e:	60a2      	str	r2, [r4, #8]
20000f10:	6025      	str	r5, [r4, #0]
20000f12:	6063      	str	r3, [r4, #4]
20000f14:	b011      	add	sp, #68	; 0x44
20000f16:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000f18:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20000f1c:	4e41      	ldr	r6, [pc, #260]	; (20001024 <svpwm+0x2f0>)
20000f1e:	3204      	adds	r2, #4
20000f20:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000f24:	f205 2556 	addw	r5, r5, #598	; 0x256
20000f28:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000f2c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000f30:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000f34:	fb01 f103 	mul.w	r1, r1, r3
20000f38:	fb02 f203 	mul.w	r2, r2, r3
20000f3c:	1289      	asrs	r1, r1, #10
20000f3e:	1293      	asrs	r3, r2, #10
20000f40:	424a      	negs	r2, r1
20000f42:	1ad2      	subs	r2, r2, r3
20000f44:	1acd      	subs	r5, r1, r3
20000f46:	440b      	add	r3, r1
20000f48:	60a2      	str	r2, [r4, #8]
20000f4a:	6025      	str	r5, [r4, #0]
20000f4c:	6063      	str	r3, [r4, #4]
20000f4e:	b011      	add	sp, #68	; 0x44
20000f50:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000f52:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20000f56:	4e33      	ldr	r6, [pc, #204]	; (20001024 <svpwm+0x2f0>)
20000f58:	320f      	adds	r2, #15
20000f5a:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000f5e:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20000f62:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000f66:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000f6a:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000f6e:	fb01 f103 	mul.w	r1, r1, r3
20000f72:	fb02 f203 	mul.w	r2, r2, r3
20000f76:	1289      	asrs	r1, r1, #10
20000f78:	1293      	asrs	r3, r2, #10
20000f7a:	424a      	negs	r2, r1
20000f7c:	1ad2      	subs	r2, r2, r3
20000f7e:	18cd      	adds	r5, r1, r3
20000f80:	1a5b      	subs	r3, r3, r1
20000f82:	e884 0024 	stmia.w	r4, {r2, r5}
20000f86:	60a3      	str	r3, [r4, #8]
20000f88:	b011      	add	sp, #68	; 0x44
20000f8a:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000f8c:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20000f90:	4e24      	ldr	r6, [pc, #144]	; (20001024 <svpwm+0x2f0>)
20000f92:	320a      	adds	r2, #10
20000f94:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000f98:	f505 7580 	add.w	r5, r5, #256	; 0x100
20000f9c:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000fa0:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000fa4:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000fa8:	fb01 f103 	mul.w	r1, r1, r3
20000fac:	fb02 f203 	mul.w	r2, r2, r3
20000fb0:	1289      	asrs	r1, r1, #10
20000fb2:	1293      	asrs	r3, r2, #10
20000fb4:	424a      	negs	r2, r1
20000fb6:	1ad2      	subs	r2, r2, r3
20000fb8:	1acd      	subs	r5, r1, r3
20000fba:	440b      	add	r3, r1
20000fbc:	e884 0024 	stmia.w	r4, {r2, r5}
20000fc0:	60a3      	str	r3, [r4, #8]
20000fc2:	b011      	add	sp, #68	; 0x44
20000fc4:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000fc6:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000fca:	4916      	ldr	r1, [pc, #88]	; (20001024 <svpwm+0x2f0>)
20000fcc:	320f      	adds	r2, #15
20000fce:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000fd2:	3d55      	subs	r5, #85	; 0x55
20000fd4:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000fd8:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000fdc:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000fe0:	fb02 f203 	mul.w	r2, r2, r3
20000fe4:	fb01 f303 	mul.w	r3, r1, r3
20000fe8:	1292      	asrs	r2, r2, #10
20000fea:	129b      	asrs	r3, r3, #10
20000fec:	4251      	negs	r1, r2
20000fee:	18d5      	adds	r5, r2, r3
20000ff0:	1ac9      	subs	r1, r1, r3
20000ff2:	1ad2      	subs	r2, r2, r3
20000ff4:	6061      	str	r1, [r4, #4]
20000ff6:	6025      	str	r5, [r4, #0]
20000ff8:	60a2      	str	r2, [r4, #8]
20000ffa:	b011      	add	sp, #68	; 0x44
20000ffc:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000ffe:	461a      	mov	r2, r3
20001000:	e703      	b.n	20000e0a <svpwm+0xd6>
20001002:	4610      	mov	r0, r2
20001004:	2201      	movs	r2, #1
20001006:	e700      	b.n	20000e0a <svpwm+0xd6>
20001008:	2202      	movs	r2, #2
2000100a:	e6fe      	b.n	20000e0a <svpwm+0xd6>
2000100c:	4610      	mov	r0, r2
2000100e:	2203      	movs	r2, #3
20001010:	e6fb      	b.n	20000e0a <svpwm+0xd6>
20001012:	2204      	movs	r2, #4
20001014:	e6f9      	b.n	20000e0a <svpwm+0xd6>
20001016:	4610      	mov	r0, r2
20001018:	2205      	movs	r2, #5
2000101a:	e6f6      	b.n	20000e0a <svpwm+0xd6>
2000101c:	2206      	movs	r2, #6
2000101e:	e6f4      	b.n	20000e0a <svpwm+0xd6>
20001020:	2000198c 	.word	0x2000198c
20001024:	200019cc 	.word	0x200019cc

20001028 <encoder_init>:
20001028:	4b01      	ldr	r3, [pc, #4]	; (20001030 <encoder_init+0x8>)
2000102a:	6018      	str	r0, [r3, #0]
2000102c:	6058      	str	r0, [r3, #4]
2000102e:	4770      	bx	lr
20001030:	20002a48 	.word	0x20002a48

20001034 <get_speed>:
20001034:	4a0e      	ldr	r2, [pc, #56]	; (20001070 <get_speed+0x3c>)
20001036:	b430      	push	{r4, r5}
20001038:	6853      	ldr	r3, [r2, #4]
2000103a:	6815      	ldr	r5, [r2, #0]
2000103c:	1ac3      	subs	r3, r0, r3
2000103e:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20001042:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
20001046:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
2000104a:	e882 0021 	stmia.w	r2, {r0, r5}
2000104e:	dd05      	ble.n	2000105c <get_speed+0x28>
20001050:	2b00      	cmp	r3, #0
20001052:	bfb4      	ite	lt
20001054:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
20001058:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
2000105c:	4a05      	ldr	r2, [pc, #20]	; (20001074 <get_speed+0x40>)
2000105e:	1058      	asrs	r0, r3, #1
20001060:	fb02 f000 	mul.w	r0, r2, r0
20001064:	bc30      	pop	{r4, r5}
20001066:	680a      	ldr	r2, [r1, #0]
20001068:	1300      	asrs	r0, r0, #12
2000106a:	4413      	add	r3, r2
2000106c:	600b      	str	r3, [r1, #0]
2000106e:	4770      	bx	lr
20001070:	20002a48 	.word	0x20002a48
20001074:	0002ae7c 	.word	0x0002ae7c

20001078 <mfilter>:
20001078:	b430      	push	{r4, r5}
2000107a:	4605      	mov	r5, r0
2000107c:	4a06      	ldr	r2, [pc, #24]	; (20001098 <mfilter+0x20>)
2000107e:	6893      	ldr	r3, [r2, #8]
20001080:	3301      	adds	r3, #1
20001082:	f3c3 0309 	ubfx	r3, r3, #0, #10
20001086:	eb02 0483 	add.w	r4, r2, r3, lsl #2
2000108a:	68e0      	ldr	r0, [r4, #12]
2000108c:	6093      	str	r3, [r2, #8]
2000108e:	1a08      	subs	r0, r1, r0
20001090:	4428      	add	r0, r5
20001092:	60e5      	str	r5, [r4, #12]
20001094:	bc30      	pop	{r4, r5}
20001096:	4770      	bx	lr
20001098:	20002a48 	.word	0x20002a48

2000109c <rfilter1>:
2000109c:	b470      	push	{r4, r5, r6}
2000109e:	f240 74c6 	movw	r4, #1990	; 0x7c6
200010a2:	4b12      	ldr	r3, [pc, #72]	; (200010ec <rfilter1+0x50>)
200010a4:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
200010a8:	f853 6cec 	ldr.w	r6, [r3, #-236]
200010ac:	f853 1ce4 	ldr.w	r1, [r3, #-228]
200010b0:	fb04 f406 	mul.w	r4, r4, r6
200010b4:	fb02 4201 	mla	r2, r2, r1, r4
200010b8:	490d      	ldr	r1, [pc, #52]	; (200010f0 <rfilter1+0x54>)
200010ba:	f853 5ce8 	ldr.w	r5, [r3, #-232]
200010be:	fb01 2200 	mla	r2, r1, r0, r2
200010c2:	4c0c      	ldr	r4, [pc, #48]	; (200010f4 <rfilter1+0x58>)
200010c4:	f853 1ce0 	ldr.w	r1, [r3, #-224]
200010c8:	fb04 2205 	mla	r2, r4, r5, r2
200010cc:	4c0a      	ldr	r4, [pc, #40]	; (200010f8 <rfilter1+0x5c>)
200010ce:	f843 6ce4 	str.w	r6, [r3, #-228]
200010d2:	fb04 2201 	mla	r2, r4, r1, r2
200010d6:	1291      	asrs	r1, r2, #10
200010d8:	f843 0ce8 	str.w	r0, [r3, #-232]
200010dc:	f843 5ce0 	str.w	r5, [r3, #-224]
200010e0:	1490      	asrs	r0, r2, #18
200010e2:	f843 1cec 	str.w	r1, [r3, #-236]
200010e6:	bc70      	pop	{r4, r5, r6}
200010e8:	4770      	bx	lr
200010ea:	bf00      	nop
200010ec:	20003b40 	.word	0x20003b40
200010f0:	0003f0a4 	.word	0x0003f0a4
200010f4:	fff83a2e 	.word	0xfff83a2e
200010f8:	0003dc29 	.word	0x0003dc29

200010fc <rfilter2>:
200010fc:	b470      	push	{r4, r5, r6}
200010fe:	f240 748a 	movw	r4, #1930	; 0x78a
20001102:	4b11      	ldr	r3, [pc, #68]	; (20001148 <rfilter2+0x4c>)
20001104:	4a11      	ldr	r2, [pc, #68]	; (2000114c <rfilter2+0x50>)
20001106:	f853 6cdc 	ldr.w	r6, [r3, #-220]
2000110a:	f853 1cd4 	ldr.w	r1, [r3, #-212]
2000110e:	fb04 f406 	mul.w	r4, r4, r6
20001112:	fb02 4201 	mla	r2, r2, r1, r4
20001116:	490e      	ldr	r1, [pc, #56]	; (20001150 <rfilter2+0x54>)
20001118:	f853 5cd8 	ldr.w	r5, [r3, #-216]
2000111c:	fb01 2200 	mla	r2, r1, r0, r2
20001120:	4c0c      	ldr	r4, [pc, #48]	; (20001154 <rfilter2+0x58>)
20001122:	f853 1cd0 	ldr.w	r1, [r3, #-208]
20001126:	fb04 2205 	mla	r2, r4, r5, r2
2000112a:	4c0b      	ldr	r4, [pc, #44]	; (20001158 <rfilter2+0x5c>)
2000112c:	f843 6cd4 	str.w	r6, [r3, #-212]
20001130:	fb04 2201 	mla	r2, r4, r1, r2
20001134:	1291      	asrs	r1, r2, #10
20001136:	f843 0cd8 	str.w	r0, [r3, #-216]
2000113a:	f843 5cd0 	str.w	r5, [r3, #-208]
2000113e:	1490      	asrs	r0, r2, #18
20001140:	f843 1cdc 	str.w	r1, [r3, #-220]
20001144:	bc70      	pop	{r4, r5, r6}
20001146:	4770      	bx	lr
20001148:	20003b40 	.word	0x20003b40
2000114c:	fffffc66 	.word	0xfffffc66
20001150:	0003e3d7 	.word	0x0003e3d7
20001154:	fff8767b 	.word	0xfff8767b
20001158:	0003b5c3 	.word	0x0003b5c3

2000115c <adc_init>:
2000115c:	b480      	push	{r7}
2000115e:	af00      	add	r7, sp, #0
20001160:	4a10      	ldr	r2, [pc, #64]	; (200011a4 <adc_init+0x48>)
20001162:	4b10      	ldr	r3, [pc, #64]	; (200011a4 <adc_init+0x48>)
20001164:	69db      	ldr	r3, [r3, #28]
20001166:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
2000116a:	61d3      	str	r3, [r2, #28]
2000116c:	4b0d      	ldr	r3, [pc, #52]	; (200011a4 <adc_init+0x48>)
2000116e:	f242 0220 	movw	r2, #8224	; 0x2020
20001172:	615a      	str	r2, [r3, #20]
20001174:	4b0c      	ldr	r3, [pc, #48]	; (200011a8 <adc_init+0x4c>)
20001176:	2200      	movs	r2, #0
20001178:	601a      	str	r2, [r3, #0]
2000117a:	4a0b      	ldr	r2, [pc, #44]	; (200011a8 <adc_init+0x4c>)
2000117c:	4b0a      	ldr	r3, [pc, #40]	; (200011a8 <adc_init+0x4c>)
2000117e:	681b      	ldr	r3, [r3, #0]
20001180:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20001184:	f043 0301 	orr.w	r3, r3, #1
20001188:	6013      	str	r3, [r2, #0]
2000118a:	4a07      	ldr	r2, [pc, #28]	; (200011a8 <adc_init+0x4c>)
2000118c:	4b06      	ldr	r3, [pc, #24]	; (200011a8 <adc_init+0x4c>)
2000118e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001190:	f443 73f0 	orr.w	r3, r3, #480	; 0x1e0
20001194:	6293      	str	r3, [r2, #40]	; 0x28
20001196:	4b04      	ldr	r3, [pc, #16]	; (200011a8 <adc_init+0x4c>)
20001198:	2210      	movs	r2, #16
2000119a:	621a      	str	r2, [r3, #32]
2000119c:	bf00      	nop
2000119e:	46bd      	mov	sp, r7
200011a0:	bc80      	pop	{r7}
200011a2:	4770      	bx	lr
200011a4:	40020000 	.word	0x40020000
200011a8:	40088000 	.word	0x40088000

200011ac <dma_init>:
200011ac:	b480      	push	{r7}
200011ae:	af00      	add	r7, sp, #0
200011b0:	4a17      	ldr	r2, [pc, #92]	; (20001210 <dma_init+0x64>)
200011b2:	4b17      	ldr	r3, [pc, #92]	; (20001210 <dma_init+0x64>)
200011b4:	69db      	ldr	r3, [r3, #28]
200011b6:	f043 0320 	orr.w	r3, r3, #32
200011ba:	61d3      	str	r3, [r2, #28]
200011bc:	4b15      	ldr	r3, [pc, #84]	; (20001214 <dma_init+0x68>)
200011be:	4a16      	ldr	r2, [pc, #88]	; (20001218 <dma_init+0x6c>)
200011c0:	609a      	str	r2, [r3, #8]
200011c2:	4b14      	ldr	r3, [pc, #80]	; (20001214 <dma_init+0x68>)
200011c4:	f04f 32ff 	mov.w	r2, #4294967295
200011c8:	62da      	str	r2, [r3, #44]	; 0x2c
200011ca:	4b12      	ldr	r3, [pc, #72]	; (20001214 <dma_init+0x68>)
200011cc:	f04f 32ff 	mov.w	r2, #4294967295
200011d0:	621a      	str	r2, [r3, #32]
200011d2:	4b10      	ldr	r3, [pc, #64]	; (20001214 <dma_init+0x68>)
200011d4:	f04f 32ff 	mov.w	r2, #4294967295
200011d8:	635a      	str	r2, [r3, #52]	; 0x34
200011da:	4b0e      	ldr	r3, [pc, #56]	; (20001214 <dma_init+0x68>)
200011dc:	f44f 7280 	mov.w	r2, #256	; 0x100
200011e0:	61da      	str	r2, [r3, #28]
200011e2:	4b0c      	ldr	r3, [pc, #48]	; (20001214 <dma_init+0x68>)
200011e4:	f44f 7280 	mov.w	r2, #256	; 0x100
200011e8:	625a      	str	r2, [r3, #36]	; 0x24
200011ea:	4b0a      	ldr	r3, [pc, #40]	; (20001214 <dma_init+0x68>)
200011ec:	2201      	movs	r2, #1
200011ee:	605a      	str	r2, [r3, #4]
200011f0:	4b09      	ldr	r3, [pc, #36]	; (20001218 <dma_init+0x6c>)
200011f2:	4a0a      	ldr	r2, [pc, #40]	; (2000121c <dma_init+0x70>)
200011f4:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
200011f8:	4a09      	ldr	r2, [pc, #36]	; (20001220 <dma_init+0x74>)
200011fa:	4b07      	ldr	r3, [pc, #28]	; (20001218 <dma_init+0x6c>)
200011fc:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001200:	4b05      	ldr	r3, [pc, #20]	; (20001218 <dma_init+0x6c>)
20001202:	4a08      	ldr	r2, [pc, #32]	; (20001224 <dma_init+0x78>)
20001204:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20001208:	bf00      	nop
2000120a:	46bd      	mov	sp, r7
2000120c:	bc80      	pop	{r7}
2000120e:	4770      	bx	lr
20001210:	40020000 	.word	0x40020000
20001214:	40028000 	.word	0x40028000
20001218:	20004000 	.word	0x20004000
2000121c:	40088018 	.word	0x40088018
20001220:	2000420c 	.word	0x2000420c
20001224:	ae000031 	.word	0xae000031

20001228 <adc_dma_init>:
20001228:	b580      	push	{r7, lr}
2000122a:	af00      	add	r7, sp, #0
2000122c:	f7ff ff96 	bl	2000115c <adc_init>
20001230:	f7ff ffbc 	bl	200011ac <dma_init>
20001234:	bf00      	nop
20001236:	bd80      	pop	{r7, pc}

20001238 <adc_dma_start>:
20001238:	b480      	push	{r7}
2000123a:	af00      	add	r7, sp, #0
2000123c:	4b07      	ldr	r3, [pc, #28]	; (2000125c <adc_dma_start+0x24>)
2000123e:	2200      	movs	r2, #0
20001240:	601a      	str	r2, [r3, #0]
20001242:	4b06      	ldr	r3, [pc, #24]	; (2000125c <adc_dma_start+0x24>)
20001244:	f240 220d 	movw	r2, #525	; 0x20d
20001248:	601a      	str	r2, [r3, #0]
2000124a:	4b05      	ldr	r3, [pc, #20]	; (20001260 <adc_dma_start+0x28>)
2000124c:	f44f 7280 	mov.w	r2, #256	; 0x100
20001250:	629a      	str	r2, [r3, #40]	; 0x28
20001252:	bf00      	nop
20001254:	46bd      	mov	sp, r7
20001256:	bc80      	pop	{r7}
20001258:	4770      	bx	lr
2000125a:	bf00      	nop
2000125c:	40088000 	.word	0x40088000
20001260:	40028000 	.word	0x40028000

20001264 <adc_dma_wait>:
20001264:	b480      	push	{r7}
20001266:	af00      	add	r7, sp, #0
20001268:	bf00      	nop
2000126a:	4b0a      	ldr	r3, [pc, #40]	; (20001294 <adc_dma_wait+0x30>)
2000126c:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20001270:	f003 0307 	and.w	r3, r3, #7
20001274:	2b00      	cmp	r3, #0
20001276:	d1f8      	bne.n	2000126a <adc_dma_wait+0x6>
20001278:	4a07      	ldr	r2, [pc, #28]	; (20001298 <adc_dma_wait+0x34>)
2000127a:	4b07      	ldr	r3, [pc, #28]	; (20001298 <adc_dma_wait+0x34>)
2000127c:	681b      	ldr	r3, [r3, #0]
2000127e:	f023 0308 	bic.w	r3, r3, #8
20001282:	6013      	str	r3, [r2, #0]
20001284:	4b03      	ldr	r3, [pc, #12]	; (20001294 <adc_dma_wait+0x30>)
20001286:	4a05      	ldr	r2, [pc, #20]	; (2000129c <adc_dma_wait+0x38>)
20001288:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
2000128c:	bf00      	nop
2000128e:	46bd      	mov	sp, r7
20001290:	bc80      	pop	{r7}
20001292:	4770      	bx	lr
20001294:	20004000 	.word	0x20004000
20001298:	40088000 	.word	0x40088000
2000129c:	ae000031 	.word	0xae000031

200012a0 <NVIC_EnableIRQ>:
200012a0:	b480      	push	{r7}
200012a2:	b083      	sub	sp, #12
200012a4:	af00      	add	r7, sp, #0
200012a6:	4603      	mov	r3, r0
200012a8:	71fb      	strb	r3, [r7, #7]
200012aa:	4908      	ldr	r1, [pc, #32]	; (200012cc <NVIC_EnableIRQ+0x2c>)
200012ac:	f997 3007 	ldrsb.w	r3, [r7, #7]
200012b0:	095b      	lsrs	r3, r3, #5
200012b2:	79fa      	ldrb	r2, [r7, #7]
200012b4:	f002 021f 	and.w	r2, r2, #31
200012b8:	2001      	movs	r0, #1
200012ba:	fa00 f202 	lsl.w	r2, r0, r2
200012be:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
200012c2:	bf00      	nop
200012c4:	370c      	adds	r7, #12
200012c6:	46bd      	mov	sp, r7
200012c8:	bc80      	pop	{r7}
200012ca:	4770      	bx	lr
200012cc:	e000e100 	.word	0xe000e100

200012d0 <PortConfig>:
200012d0:	b480      	push	{r7}
200012d2:	af00      	add	r7, sp, #0
200012d4:	4a63      	ldr	r2, [pc, #396]	; (20001464 <PortConfig+0x194>)
200012d6:	4b63      	ldr	r3, [pc, #396]	; (20001464 <PortConfig+0x194>)
200012d8:	69db      	ldr	r3, [r3, #28]
200012da:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
200012de:	61d3      	str	r3, [r2, #28]
200012e0:	4b61      	ldr	r3, [pc, #388]	; (20001468 <PortConfig+0x198>)
200012e2:	2200      	movs	r2, #0
200012e4:	609a      	str	r2, [r3, #8]
200012e6:	4b60      	ldr	r3, [pc, #384]	; (20001468 <PortConfig+0x198>)
200012e8:	2200      	movs	r2, #0
200012ea:	601a      	str	r2, [r3, #0]
200012ec:	4a5e      	ldr	r2, [pc, #376]	; (20001468 <PortConfig+0x198>)
200012ee:	4b5e      	ldr	r3, [pc, #376]	; (20001468 <PortConfig+0x198>)
200012f0:	685b      	ldr	r3, [r3, #4]
200012f2:	f043 0301 	orr.w	r3, r3, #1
200012f6:	6053      	str	r3, [r2, #4]
200012f8:	4a5b      	ldr	r2, [pc, #364]	; (20001468 <PortConfig+0x198>)
200012fa:	4b5b      	ldr	r3, [pc, #364]	; (20001468 <PortConfig+0x198>)
200012fc:	68db      	ldr	r3, [r3, #12]
200012fe:	f043 0301 	orr.w	r3, r3, #1
20001302:	60d3      	str	r3, [r2, #12]
20001304:	4a58      	ldr	r2, [pc, #352]	; (20001468 <PortConfig+0x198>)
20001306:	4b58      	ldr	r3, [pc, #352]	; (20001468 <PortConfig+0x198>)
20001308:	699b      	ldr	r3, [r3, #24]
2000130a:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
2000130e:	6193      	str	r3, [r2, #24]
20001310:	4a55      	ldr	r2, [pc, #340]	; (20001468 <PortConfig+0x198>)
20001312:	4b55      	ldr	r3, [pc, #340]	; (20001468 <PortConfig+0x198>)
20001314:	685b      	ldr	r3, [r3, #4]
20001316:	f023 0308 	bic.w	r3, r3, #8
2000131a:	6053      	str	r3, [r2, #4]
2000131c:	4a52      	ldr	r2, [pc, #328]	; (20001468 <PortConfig+0x198>)
2000131e:	4b52      	ldr	r3, [pc, #328]	; (20001468 <PortConfig+0x198>)
20001320:	68db      	ldr	r3, [r3, #12]
20001322:	f043 0308 	orr.w	r3, r3, #8
20001326:	60d3      	str	r3, [r2, #12]
20001328:	4b4f      	ldr	r3, [pc, #316]	; (20001468 <PortConfig+0x198>)
2000132a:	2280      	movs	r2, #128	; 0x80
2000132c:	609a      	str	r2, [r3, #8]
2000132e:	4a4d      	ldr	r2, [pc, #308]	; (20001464 <PortConfig+0x194>)
20001330:	4b4c      	ldr	r3, [pc, #304]	; (20001464 <PortConfig+0x194>)
20001332:	69db      	ldr	r3, [r3, #28]
20001334:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20001338:	61d3      	str	r3, [r2, #28]
2000133a:	4a4c      	ldr	r2, [pc, #304]	; (2000146c <PortConfig+0x19c>)
2000133c:	4b4b      	ldr	r3, [pc, #300]	; (2000146c <PortConfig+0x19c>)
2000133e:	689b      	ldr	r3, [r3, #8]
20001340:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20001344:	6093      	str	r3, [r2, #8]
20001346:	4a49      	ldr	r2, [pc, #292]	; (2000146c <PortConfig+0x19c>)
20001348:	4b48      	ldr	r3, [pc, #288]	; (2000146c <PortConfig+0x19c>)
2000134a:	689b      	ldr	r3, [r3, #8]
2000134c:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
20001350:	6093      	str	r3, [r2, #8]
20001352:	4a46      	ldr	r2, [pc, #280]	; (2000146c <PortConfig+0x19c>)
20001354:	4b45      	ldr	r3, [pc, #276]	; (2000146c <PortConfig+0x19c>)
20001356:	68db      	ldr	r3, [r3, #12]
20001358:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
2000135c:	60d3      	str	r3, [r2, #12]
2000135e:	4a43      	ldr	r2, [pc, #268]	; (2000146c <PortConfig+0x19c>)
20001360:	4b42      	ldr	r3, [pc, #264]	; (2000146c <PortConfig+0x19c>)
20001362:	699b      	ldr	r3, [r3, #24]
20001364:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
20001368:	6193      	str	r3, [r2, #24]
2000136a:	4a40      	ldr	r2, [pc, #256]	; (2000146c <PortConfig+0x19c>)
2000136c:	4b3f      	ldr	r3, [pc, #252]	; (2000146c <PortConfig+0x19c>)
2000136e:	685b      	ldr	r3, [r3, #4]
20001370:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20001374:	6053      	str	r3, [r2, #4]
20001376:	4a3d      	ldr	r2, [pc, #244]	; (2000146c <PortConfig+0x19c>)
20001378:	4b3c      	ldr	r3, [pc, #240]	; (2000146c <PortConfig+0x19c>)
2000137a:	685b      	ldr	r3, [r3, #4]
2000137c:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20001380:	6053      	str	r3, [r2, #4]
20001382:	4a3a      	ldr	r2, [pc, #232]	; (2000146c <PortConfig+0x19c>)
20001384:	4b39      	ldr	r3, [pc, #228]	; (2000146c <PortConfig+0x19c>)
20001386:	689b      	ldr	r3, [r3, #8]
20001388:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
2000138c:	6093      	str	r3, [r2, #8]
2000138e:	4a37      	ldr	r2, [pc, #220]	; (2000146c <PortConfig+0x19c>)
20001390:	4b36      	ldr	r3, [pc, #216]	; (2000146c <PortConfig+0x19c>)
20001392:	689b      	ldr	r3, [r3, #8]
20001394:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
20001398:	6093      	str	r3, [r2, #8]
2000139a:	4a34      	ldr	r2, [pc, #208]	; (2000146c <PortConfig+0x19c>)
2000139c:	4b33      	ldr	r3, [pc, #204]	; (2000146c <PortConfig+0x19c>)
2000139e:	68db      	ldr	r3, [r3, #12]
200013a0:	f043 0360 	orr.w	r3, r3, #96	; 0x60
200013a4:	60d3      	str	r3, [r2, #12]
200013a6:	4a2f      	ldr	r2, [pc, #188]	; (20001464 <PortConfig+0x194>)
200013a8:	4b2e      	ldr	r3, [pc, #184]	; (20001464 <PortConfig+0x194>)
200013aa:	69db      	ldr	r3, [r3, #28]
200013ac:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
200013b0:	61d3      	str	r3, [r2, #28]
200013b2:	4b2f      	ldr	r3, [pc, #188]	; (20001470 <PortConfig+0x1a0>)
200013b4:	4a2f      	ldr	r2, [pc, #188]	; (20001474 <PortConfig+0x1a4>)
200013b6:	609a      	str	r2, [r3, #8]
200013b8:	4b2d      	ldr	r3, [pc, #180]	; (20001470 <PortConfig+0x1a0>)
200013ba:	f64f 72ff 	movw	r2, #65535	; 0xffff
200013be:	60da      	str	r2, [r3, #12]
200013c0:	4b2b      	ldr	r3, [pc, #172]	; (20001470 <PortConfig+0x1a0>)
200013c2:	f04f 32ff 	mov.w	r2, #4294967295
200013c6:	619a      	str	r2, [r3, #24]
200013c8:	4b29      	ldr	r3, [pc, #164]	; (20001470 <PortConfig+0x1a0>)
200013ca:	f64f 72ff 	movw	r2, #65535	; 0xffff
200013ce:	605a      	str	r2, [r3, #4]
200013d0:	4a27      	ldr	r2, [pc, #156]	; (20001470 <PortConfig+0x1a0>)
200013d2:	4b27      	ldr	r3, [pc, #156]	; (20001470 <PortConfig+0x1a0>)
200013d4:	681b      	ldr	r3, [r3, #0]
200013d6:	f023 0303 	bic.w	r3, r3, #3
200013da:	6013      	str	r3, [r2, #0]
200013dc:	4a24      	ldr	r2, [pc, #144]	; (20001470 <PortConfig+0x1a0>)
200013de:	4b24      	ldr	r3, [pc, #144]	; (20001470 <PortConfig+0x1a0>)
200013e0:	681b      	ldr	r3, [r3, #0]
200013e2:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200013e6:	6013      	str	r3, [r2, #0]
200013e8:	4a1e      	ldr	r2, [pc, #120]	; (20001464 <PortConfig+0x194>)
200013ea:	4b1e      	ldr	r3, [pc, #120]	; (20001464 <PortConfig+0x194>)
200013ec:	69db      	ldr	r3, [r3, #28]
200013ee:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
200013f2:	61d3      	str	r3, [r2, #28]
200013f4:	4b20      	ldr	r3, [pc, #128]	; (20001478 <PortConfig+0x1a8>)
200013f6:	2200      	movs	r2, #0
200013f8:	609a      	str	r2, [r3, #8]
200013fa:	4a1f      	ldr	r2, [pc, #124]	; (20001478 <PortConfig+0x1a8>)
200013fc:	4b1e      	ldr	r3, [pc, #120]	; (20001478 <PortConfig+0x1a8>)
200013fe:	685b      	ldr	r3, [r3, #4]
20001400:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001404:	6053      	str	r3, [r2, #4]
20001406:	4a1c      	ldr	r2, [pc, #112]	; (20001478 <PortConfig+0x1a8>)
20001408:	4b1b      	ldr	r3, [pc, #108]	; (20001478 <PortConfig+0x1a8>)
2000140a:	68db      	ldr	r3, [r3, #12]
2000140c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001410:	60d3      	str	r3, [r2, #12]
20001412:	4b19      	ldr	r3, [pc, #100]	; (20001478 <PortConfig+0x1a8>)
20001414:	f04f 32ff 	mov.w	r2, #4294967295
20001418:	619a      	str	r2, [r3, #24]
2000141a:	4a17      	ldr	r2, [pc, #92]	; (20001478 <PortConfig+0x1a8>)
2000141c:	4b16      	ldr	r3, [pc, #88]	; (20001478 <PortConfig+0x1a8>)
2000141e:	681b      	ldr	r3, [r3, #0]
20001420:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001424:	6013      	str	r3, [r2, #0]
20001426:	4a0f      	ldr	r2, [pc, #60]	; (20001464 <PortConfig+0x194>)
20001428:	4b0e      	ldr	r3, [pc, #56]	; (20001464 <PortConfig+0x194>)
2000142a:	69db      	ldr	r3, [r3, #28]
2000142c:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
20001430:	61d3      	str	r3, [r2, #28]
20001432:	4a12      	ldr	r2, [pc, #72]	; (2000147c <PortConfig+0x1ac>)
20001434:	4b11      	ldr	r3, [pc, #68]	; (2000147c <PortConfig+0x1ac>)
20001436:	68db      	ldr	r3, [r3, #12]
20001438:	f423 7300 	bic.w	r3, r3, #512	; 0x200
2000143c:	f023 0301 	bic.w	r3, r3, #1
20001440:	60d3      	str	r3, [r2, #12]
20001442:	4a08      	ldr	r2, [pc, #32]	; (20001464 <PortConfig+0x194>)
20001444:	4b07      	ldr	r3, [pc, #28]	; (20001464 <PortConfig+0x194>)
20001446:	69db      	ldr	r3, [r3, #28]
20001448:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
2000144c:	61d3      	str	r3, [r2, #28]
2000144e:	4a0c      	ldr	r2, [pc, #48]	; (20001480 <PortConfig+0x1b0>)
20001450:	4b0b      	ldr	r3, [pc, #44]	; (20001480 <PortConfig+0x1b0>)
20001452:	68db      	ldr	r3, [r3, #12]
20001454:	f423 7378 	bic.w	r3, r3, #992	; 0x3e0
20001458:	60d3      	str	r3, [r2, #12]
2000145a:	bf00      	nop
2000145c:	46bd      	mov	sp, r7
2000145e:	bc80      	pop	{r7}
20001460:	4770      	bx	lr
20001462:	bf00      	nop
20001464:	40020000 	.word	0x40020000
20001468:	400a8000 	.word	0x400a8000
2000146c:	400b0000 	.word	0x400b0000
20001470:	400b8000 	.word	0x400b8000
20001474:	000aaaa0 	.word	0x000aaaa0
20001478:	400e8000 	.word	0x400e8000
2000147c:	400c8000 	.word	0x400c8000
20001480:	400c0000 	.word	0x400c0000

20001484 <ClkConfig>:
20001484:	b480      	push	{r7}
20001486:	af00      	add	r7, sp, #0
20001488:	4a16      	ldr	r2, [pc, #88]	; (200014e4 <ClkConfig+0x60>)
2000148a:	4b16      	ldr	r3, [pc, #88]	; (200014e4 <ClkConfig+0x60>)
2000148c:	689b      	ldr	r3, [r3, #8]
2000148e:	f043 0301 	orr.w	r3, r3, #1
20001492:	6093      	str	r3, [r2, #8]
20001494:	bf00      	nop
20001496:	4b13      	ldr	r3, [pc, #76]	; (200014e4 <ClkConfig+0x60>)
20001498:	681b      	ldr	r3, [r3, #0]
2000149a:	f003 0304 	and.w	r3, r3, #4
2000149e:	2b00      	cmp	r3, #0
200014a0:	d0f9      	beq.n	20001496 <ClkConfig+0x12>
200014a2:	4b10      	ldr	r3, [pc, #64]	; (200014e4 <ClkConfig+0x60>)
200014a4:	2206      	movs	r2, #6
200014a6:	60da      	str	r2, [r3, #12]
200014a8:	4b0e      	ldr	r3, [pc, #56]	; (200014e4 <ClkConfig+0x60>)
200014aa:	f640 1204 	movw	r2, #2308	; 0x904
200014ae:	605a      	str	r2, [r3, #4]
200014b0:	bf00      	nop
200014b2:	4b0c      	ldr	r3, [pc, #48]	; (200014e4 <ClkConfig+0x60>)
200014b4:	681b      	ldr	r3, [r3, #0]
200014b6:	f003 0302 	and.w	r3, r3, #2
200014ba:	2b00      	cmp	r3, #0
200014bc:	d0f9      	beq.n	200014b2 <ClkConfig+0x2e>
200014be:	4a09      	ldr	r2, [pc, #36]	; (200014e4 <ClkConfig+0x60>)
200014c0:	4b08      	ldr	r3, [pc, #32]	; (200014e4 <ClkConfig+0x60>)
200014c2:	68db      	ldr	r3, [r3, #12]
200014c4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200014c8:	60d3      	str	r3, [r2, #12]
200014ca:	4a07      	ldr	r2, [pc, #28]	; (200014e8 <ClkConfig+0x64>)
200014cc:	4b06      	ldr	r3, [pc, #24]	; (200014e8 <ClkConfig+0x64>)
200014ce:	681b      	ldr	r3, [r3, #0]
200014d0:	f043 0320 	orr.w	r3, r3, #32
200014d4:	6013      	str	r3, [r2, #0]
200014d6:	4b05      	ldr	r3, [pc, #20]	; (200014ec <ClkConfig+0x68>)
200014d8:	2200      	movs	r2, #0
200014da:	601a      	str	r2, [r3, #0]
200014dc:	bf00      	nop
200014de:	46bd      	mov	sp, r7
200014e0:	bc80      	pop	{r7}
200014e2:	4770      	bx	lr
200014e4:	40020000 	.word	0x40020000
200014e8:	40018000 	.word	0x40018000
200014ec:	20003b00 	.word	0x20003b00

200014f0 <TimerConfig>:
200014f0:	b580      	push	{r7, lr}
200014f2:	af00      	add	r7, sp, #0
200014f4:	4a99      	ldr	r2, [pc, #612]	; (2000175c <TimerConfig+0x26c>)
200014f6:	4b99      	ldr	r3, [pc, #612]	; (2000175c <TimerConfig+0x26c>)
200014f8:	69db      	ldr	r3, [r3, #28]
200014fa:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
200014fe:	61d3      	str	r3, [r2, #28]
20001500:	4a96      	ldr	r2, [pc, #600]	; (2000175c <TimerConfig+0x26c>)
20001502:	4b96      	ldr	r3, [pc, #600]	; (2000175c <TimerConfig+0x26c>)
20001504:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001506:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
2000150a:	6253      	str	r3, [r2, #36]	; 0x24
2000150c:	4a93      	ldr	r2, [pc, #588]	; (2000175c <TimerConfig+0x26c>)
2000150e:	4b93      	ldr	r3, [pc, #588]	; (2000175c <TimerConfig+0x26c>)
20001510:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001512:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001516:	6253      	str	r3, [r2, #36]	; 0x24
20001518:	4b91      	ldr	r3, [pc, #580]	; (20001760 <TimerConfig+0x270>)
2000151a:	2200      	movs	r2, #0
2000151c:	601a      	str	r2, [r3, #0]
2000151e:	4b90      	ldr	r3, [pc, #576]	; (20001760 <TimerConfig+0x270>)
20001520:	224f      	movs	r2, #79	; 0x4f
20001522:	605a      	str	r2, [r3, #4]
20001524:	4b8e      	ldr	r3, [pc, #568]	; (20001760 <TimerConfig+0x270>)
20001526:	f240 32e7 	movw	r2, #999	; 0x3e7
2000152a:	609a      	str	r2, [r3, #8]
2000152c:	4a8c      	ldr	r2, [pc, #560]	; (20001760 <TimerConfig+0x270>)
2000152e:	4b8c      	ldr	r3, [pc, #560]	; (20001760 <TimerConfig+0x270>)
20001530:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001532:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
20001536:	6253      	str	r3, [r2, #36]	; 0x24
20001538:	4a89      	ldr	r2, [pc, #548]	; (20001760 <TimerConfig+0x270>)
2000153a:	4b89      	ldr	r3, [pc, #548]	; (20001760 <TimerConfig+0x270>)
2000153c:	6d9b      	ldr	r3, [r3, #88]	; 0x58
2000153e:	f043 0302 	orr.w	r3, r3, #2
20001542:	6593      	str	r3, [r2, #88]	; 0x58
20001544:	4b86      	ldr	r3, [pc, #536]	; (20001760 <TimerConfig+0x270>)
20001546:	2201      	movs	r2, #1
20001548:	60da      	str	r2, [r3, #12]
2000154a:	4a84      	ldr	r2, [pc, #528]	; (2000175c <TimerConfig+0x26c>)
2000154c:	4b83      	ldr	r3, [pc, #524]	; (2000175c <TimerConfig+0x26c>)
2000154e:	69db      	ldr	r3, [r3, #28]
20001550:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
20001554:	61d3      	str	r3, [r2, #28]
20001556:	4a81      	ldr	r2, [pc, #516]	; (2000175c <TimerConfig+0x26c>)
20001558:	4b80      	ldr	r3, [pc, #512]	; (2000175c <TimerConfig+0x26c>)
2000155a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000155c:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
20001560:	6253      	str	r3, [r2, #36]	; 0x24
20001562:	4a7e      	ldr	r2, [pc, #504]	; (2000175c <TimerConfig+0x26c>)
20001564:	4b7d      	ldr	r3, [pc, #500]	; (2000175c <TimerConfig+0x26c>)
20001566:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001568:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
2000156c:	6253      	str	r3, [r2, #36]	; 0x24
2000156e:	4b7d      	ldr	r3, [pc, #500]	; (20001764 <TimerConfig+0x274>)
20001570:	2200      	movs	r2, #0
20001572:	601a      	str	r2, [r3, #0]
20001574:	4b7b      	ldr	r3, [pc, #492]	; (20001764 <TimerConfig+0x274>)
20001576:	2202      	movs	r2, #2
20001578:	605a      	str	r2, [r3, #4]
2000157a:	4b7a      	ldr	r3, [pc, #488]	; (20001764 <TimerConfig+0x274>)
2000157c:	f240 32ff 	movw	r2, #1023	; 0x3ff
20001580:	609a      	str	r2, [r3, #8]
20001582:	4b78      	ldr	r3, [pc, #480]	; (20001764 <TimerConfig+0x274>)
20001584:	f44f 7200 	mov.w	r2, #512	; 0x200
20001588:	611a      	str	r2, [r3, #16]
2000158a:	4b76      	ldr	r3, [pc, #472]	; (20001764 <TimerConfig+0x274>)
2000158c:	f44f 7200 	mov.w	r2, #512	; 0x200
20001590:	615a      	str	r2, [r3, #20]
20001592:	4b74      	ldr	r3, [pc, #464]	; (20001764 <TimerConfig+0x274>)
20001594:	f44f 7200 	mov.w	r2, #512	; 0x200
20001598:	619a      	str	r2, [r3, #24]
2000159a:	4b72      	ldr	r3, [pc, #456]	; (20001764 <TimerConfig+0x274>)
2000159c:	22c8      	movs	r2, #200	; 0xc8
2000159e:	61da      	str	r2, [r3, #28]
200015a0:	4a70      	ldr	r2, [pc, #448]	; (20001764 <TimerConfig+0x274>)
200015a2:	4b70      	ldr	r3, [pc, #448]	; (20001764 <TimerConfig+0x274>)
200015a4:	6a1b      	ldr	r3, [r3, #32]
200015a6:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200015aa:	6213      	str	r3, [r2, #32]
200015ac:	4a6d      	ldr	r2, [pc, #436]	; (20001764 <TimerConfig+0x274>)
200015ae:	4b6d      	ldr	r3, [pc, #436]	; (20001764 <TimerConfig+0x274>)
200015b0:	6a1b      	ldr	r3, [r3, #32]
200015b2:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200015b6:	6213      	str	r3, [r2, #32]
200015b8:	4a6a      	ldr	r2, [pc, #424]	; (20001764 <TimerConfig+0x274>)
200015ba:	4b6a      	ldr	r3, [pc, #424]	; (20001764 <TimerConfig+0x274>)
200015bc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200015be:	f023 030f 	bic.w	r3, r3, #15
200015c2:	6313      	str	r3, [r2, #48]	; 0x30
200015c4:	4a67      	ldr	r2, [pc, #412]	; (20001764 <TimerConfig+0x274>)
200015c6:	4b67      	ldr	r3, [pc, #412]	; (20001764 <TimerConfig+0x274>)
200015c8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200015ca:	f043 030c 	orr.w	r3, r3, #12
200015ce:	6313      	str	r3, [r2, #48]	; 0x30
200015d0:	4a64      	ldr	r2, [pc, #400]	; (20001764 <TimerConfig+0x274>)
200015d2:	4b64      	ldr	r3, [pc, #400]	; (20001764 <TimerConfig+0x274>)
200015d4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200015d6:	f043 0301 	orr.w	r3, r3, #1
200015da:	6313      	str	r3, [r2, #48]	; 0x30
200015dc:	4a61      	ldr	r2, [pc, #388]	; (20001764 <TimerConfig+0x274>)
200015de:	4b61      	ldr	r3, [pc, #388]	; (20001764 <TimerConfig+0x274>)
200015e0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200015e2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200015e6:	6313      	str	r3, [r2, #48]	; 0x30
200015e8:	4a5e      	ldr	r2, [pc, #376]	; (20001764 <TimerConfig+0x274>)
200015ea:	4b5e      	ldr	r3, [pc, #376]	; (20001764 <TimerConfig+0x274>)
200015ec:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200015ee:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200015f2:	6313      	str	r3, [r2, #48]	; 0x30
200015f4:	4a5b      	ldr	r2, [pc, #364]	; (20001764 <TimerConfig+0x274>)
200015f6:	4b5b      	ldr	r3, [pc, #364]	; (20001764 <TimerConfig+0x274>)
200015f8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200015fa:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200015fe:	6313      	str	r3, [r2, #48]	; 0x30
20001600:	4a58      	ldr	r2, [pc, #352]	; (20001764 <TimerConfig+0x274>)
20001602:	4b58      	ldr	r3, [pc, #352]	; (20001764 <TimerConfig+0x274>)
20001604:	6e1b      	ldr	r3, [r3, #96]	; 0x60
20001606:	f043 0308 	orr.w	r3, r3, #8
2000160a:	6613      	str	r3, [r2, #96]	; 0x60
2000160c:	4a55      	ldr	r2, [pc, #340]	; (20001764 <TimerConfig+0x274>)
2000160e:	4b55      	ldr	r3, [pc, #340]	; (20001764 <TimerConfig+0x274>)
20001610:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001612:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001616:	6253      	str	r3, [r2, #36]	; 0x24
20001618:	4a52      	ldr	r2, [pc, #328]	; (20001764 <TimerConfig+0x274>)
2000161a:	4b52      	ldr	r3, [pc, #328]	; (20001764 <TimerConfig+0x274>)
2000161c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000161e:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001622:	6253      	str	r3, [r2, #36]	; 0x24
20001624:	4a4f      	ldr	r2, [pc, #316]	; (20001764 <TimerConfig+0x274>)
20001626:	4b4f      	ldr	r3, [pc, #316]	; (20001764 <TimerConfig+0x274>)
20001628:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000162a:	f023 030f 	bic.w	r3, r3, #15
2000162e:	6353      	str	r3, [r2, #52]	; 0x34
20001630:	4a4c      	ldr	r2, [pc, #304]	; (20001764 <TimerConfig+0x274>)
20001632:	4b4c      	ldr	r3, [pc, #304]	; (20001764 <TimerConfig+0x274>)
20001634:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001636:	f043 030c 	orr.w	r3, r3, #12
2000163a:	6353      	str	r3, [r2, #52]	; 0x34
2000163c:	4a49      	ldr	r2, [pc, #292]	; (20001764 <TimerConfig+0x274>)
2000163e:	4b49      	ldr	r3, [pc, #292]	; (20001764 <TimerConfig+0x274>)
20001640:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001642:	f043 0301 	orr.w	r3, r3, #1
20001646:	6353      	str	r3, [r2, #52]	; 0x34
20001648:	4a46      	ldr	r2, [pc, #280]	; (20001764 <TimerConfig+0x274>)
2000164a:	4b46      	ldr	r3, [pc, #280]	; (20001764 <TimerConfig+0x274>)
2000164c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000164e:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001652:	6353      	str	r3, [r2, #52]	; 0x34
20001654:	4a43      	ldr	r2, [pc, #268]	; (20001764 <TimerConfig+0x274>)
20001656:	4b43      	ldr	r3, [pc, #268]	; (20001764 <TimerConfig+0x274>)
20001658:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000165a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000165e:	6353      	str	r3, [r2, #52]	; 0x34
20001660:	4a40      	ldr	r2, [pc, #256]	; (20001764 <TimerConfig+0x274>)
20001662:	4b40      	ldr	r3, [pc, #256]	; (20001764 <TimerConfig+0x274>)
20001664:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001666:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000166a:	6353      	str	r3, [r2, #52]	; 0x34
2000166c:	4a3d      	ldr	r2, [pc, #244]	; (20001764 <TimerConfig+0x274>)
2000166e:	4b3d      	ldr	r3, [pc, #244]	; (20001764 <TimerConfig+0x274>)
20001670:	6e5b      	ldr	r3, [r3, #100]	; 0x64
20001672:	f043 0308 	orr.w	r3, r3, #8
20001676:	6653      	str	r3, [r2, #100]	; 0x64
20001678:	4a3a      	ldr	r2, [pc, #232]	; (20001764 <TimerConfig+0x274>)
2000167a:	4b3a      	ldr	r3, [pc, #232]	; (20001764 <TimerConfig+0x274>)
2000167c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
2000167e:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001682:	6293      	str	r3, [r2, #40]	; 0x28
20001684:	4a37      	ldr	r2, [pc, #220]	; (20001764 <TimerConfig+0x274>)
20001686:	4b37      	ldr	r3, [pc, #220]	; (20001764 <TimerConfig+0x274>)
20001688:	6a9b      	ldr	r3, [r3, #40]	; 0x28
2000168a:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
2000168e:	6293      	str	r3, [r2, #40]	; 0x28
20001690:	4a34      	ldr	r2, [pc, #208]	; (20001764 <TimerConfig+0x274>)
20001692:	4b34      	ldr	r3, [pc, #208]	; (20001764 <TimerConfig+0x274>)
20001694:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001696:	f023 030f 	bic.w	r3, r3, #15
2000169a:	6393      	str	r3, [r2, #56]	; 0x38
2000169c:	4a31      	ldr	r2, [pc, #196]	; (20001764 <TimerConfig+0x274>)
2000169e:	4b31      	ldr	r3, [pc, #196]	; (20001764 <TimerConfig+0x274>)
200016a0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200016a2:	f043 030c 	orr.w	r3, r3, #12
200016a6:	6393      	str	r3, [r2, #56]	; 0x38
200016a8:	4a2e      	ldr	r2, [pc, #184]	; (20001764 <TimerConfig+0x274>)
200016aa:	4b2e      	ldr	r3, [pc, #184]	; (20001764 <TimerConfig+0x274>)
200016ac:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200016ae:	f043 0301 	orr.w	r3, r3, #1
200016b2:	6393      	str	r3, [r2, #56]	; 0x38
200016b4:	4a2b      	ldr	r2, [pc, #172]	; (20001764 <TimerConfig+0x274>)
200016b6:	4b2b      	ldr	r3, [pc, #172]	; (20001764 <TimerConfig+0x274>)
200016b8:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200016ba:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200016be:	6393      	str	r3, [r2, #56]	; 0x38
200016c0:	4a28      	ldr	r2, [pc, #160]	; (20001764 <TimerConfig+0x274>)
200016c2:	4b28      	ldr	r3, [pc, #160]	; (20001764 <TimerConfig+0x274>)
200016c4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200016c6:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200016ca:	6393      	str	r3, [r2, #56]	; 0x38
200016cc:	4a25      	ldr	r2, [pc, #148]	; (20001764 <TimerConfig+0x274>)
200016ce:	4b25      	ldr	r3, [pc, #148]	; (20001764 <TimerConfig+0x274>)
200016d0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200016d2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200016d6:	6393      	str	r3, [r2, #56]	; 0x38
200016d8:	4a22      	ldr	r2, [pc, #136]	; (20001764 <TimerConfig+0x274>)
200016da:	4b22      	ldr	r3, [pc, #136]	; (20001764 <TimerConfig+0x274>)
200016dc:	6e9b      	ldr	r3, [r3, #104]	; 0x68
200016de:	f043 0308 	orr.w	r3, r3, #8
200016e2:	6693      	str	r3, [r2, #104]	; 0x68
200016e4:	4a1f      	ldr	r2, [pc, #124]	; (20001764 <TimerConfig+0x274>)
200016e6:	4b1f      	ldr	r3, [pc, #124]	; (20001764 <TimerConfig+0x274>)
200016e8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
200016ea:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200016ee:	62d3      	str	r3, [r2, #44]	; 0x2c
200016f0:	4a1c      	ldr	r2, [pc, #112]	; (20001764 <TimerConfig+0x274>)
200016f2:	4b1c      	ldr	r3, [pc, #112]	; (20001764 <TimerConfig+0x274>)
200016f4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
200016f6:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200016fa:	62d3      	str	r3, [r2, #44]	; 0x2c
200016fc:	4a19      	ldr	r2, [pc, #100]	; (20001764 <TimerConfig+0x274>)
200016fe:	4b19      	ldr	r3, [pc, #100]	; (20001764 <TimerConfig+0x274>)
20001700:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001702:	f023 030f 	bic.w	r3, r3, #15
20001706:	63d3      	str	r3, [r2, #60]	; 0x3c
20001708:	4a16      	ldr	r2, [pc, #88]	; (20001764 <TimerConfig+0x274>)
2000170a:	4b16      	ldr	r3, [pc, #88]	; (20001764 <TimerConfig+0x274>)
2000170c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
2000170e:	f043 030c 	orr.w	r3, r3, #12
20001712:	63d3      	str	r3, [r2, #60]	; 0x3c
20001714:	4a13      	ldr	r2, [pc, #76]	; (20001764 <TimerConfig+0x274>)
20001716:	4b13      	ldr	r3, [pc, #76]	; (20001764 <TimerConfig+0x274>)
20001718:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
2000171a:	f043 0301 	orr.w	r3, r3, #1
2000171e:	63d3      	str	r3, [r2, #60]	; 0x3c
20001720:	4a10      	ldr	r2, [pc, #64]	; (20001764 <TimerConfig+0x274>)
20001722:	4b10      	ldr	r3, [pc, #64]	; (20001764 <TimerConfig+0x274>)
20001724:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001726:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
2000172a:	63d3      	str	r3, [r2, #60]	; 0x3c
2000172c:	4a0d      	ldr	r2, [pc, #52]	; (20001764 <TimerConfig+0x274>)
2000172e:	4b0d      	ldr	r3, [pc, #52]	; (20001764 <TimerConfig+0x274>)
20001730:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001732:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001736:	63d3      	str	r3, [r2, #60]	; 0x3c
20001738:	4a0a      	ldr	r2, [pc, #40]	; (20001764 <TimerConfig+0x274>)
2000173a:	4b0a      	ldr	r3, [pc, #40]	; (20001764 <TimerConfig+0x274>)
2000173c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
2000173e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001742:	63d3      	str	r3, [r2, #60]	; 0x3c
20001744:	4a07      	ldr	r2, [pc, #28]	; (20001764 <TimerConfig+0x274>)
20001746:	4b07      	ldr	r3, [pc, #28]	; (20001764 <TimerConfig+0x274>)
20001748:	6edb      	ldr	r3, [r3, #108]	; 0x6c
2000174a:	f043 0308 	orr.w	r3, r3, #8
2000174e:	66d3      	str	r3, [r2, #108]	; 0x6c
20001750:	4a04      	ldr	r2, [pc, #16]	; (20001764 <TimerConfig+0x274>)
20001752:	4b04      	ldr	r3, [pc, #16]	; (20001764 <TimerConfig+0x274>)
20001754:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001756:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
2000175a:	e005      	b.n	20001768 <TimerConfig+0x278>
2000175c:	40020000 	.word	0x40020000
20001760:	40070000 	.word	0x40070000
20001764:	40080000 	.word	0x40080000
20001768:	6413      	str	r3, [r2, #64]	; 0x40
2000176a:	4a10      	ldr	r2, [pc, #64]	; (200017ac <TimerConfig+0x2bc>)
2000176c:	4b0f      	ldr	r3, [pc, #60]	; (200017ac <TimerConfig+0x2bc>)
2000176e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
20001770:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001774:	6453      	str	r3, [r2, #68]	; 0x44
20001776:	4a0d      	ldr	r2, [pc, #52]	; (200017ac <TimerConfig+0x2bc>)
20001778:	4b0c      	ldr	r3, [pc, #48]	; (200017ac <TimerConfig+0x2bc>)
2000177a:	6c9b      	ldr	r3, [r3, #72]	; 0x48
2000177c:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001780:	6493      	str	r3, [r2, #72]	; 0x48
20001782:	4a0a      	ldr	r2, [pc, #40]	; (200017ac <TimerConfig+0x2bc>)
20001784:	4b09      	ldr	r3, [pc, #36]	; (200017ac <TimerConfig+0x2bc>)
20001786:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
20001788:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
2000178c:	64d3      	str	r3, [r2, #76]	; 0x4c
2000178e:	4a07      	ldr	r2, [pc, #28]	; (200017ac <TimerConfig+0x2bc>)
20001790:	4b06      	ldr	r3, [pc, #24]	; (200017ac <TimerConfig+0x2bc>)
20001792:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001794:	f043 0302 	orr.w	r3, r3, #2
20001798:	6593      	str	r3, [r2, #88]	; 0x58
2000179a:	2010      	movs	r0, #16
2000179c:	f7ff fd80 	bl	200012a0 <NVIC_EnableIRQ>
200017a0:	4b02      	ldr	r3, [pc, #8]	; (200017ac <TimerConfig+0x2bc>)
200017a2:	2201      	movs	r2, #1
200017a4:	60da      	str	r2, [r3, #12]
200017a6:	bf00      	nop
200017a8:	bd80      	pop	{r7, pc}
200017aa:	bf00      	nop
200017ac:	40080000 	.word	0x40080000

200017b0 <set_ram_vt>:
200017b0:	b480      	push	{r7}
200017b2:	b085      	sub	sp, #20
200017b4:	af00      	add	r7, sp, #0
200017b6:	2300      	movs	r3, #0
200017b8:	60fb      	str	r3, [r7, #12]
200017ba:	2300      	movs	r3, #0
200017bc:	607b      	str	r3, [r7, #4]
200017be:	4b16      	ldr	r3, [pc, #88]	; (20001818 <set_ram_vt+0x68>)
200017c0:	60bb      	str	r3, [r7, #8]
200017c2:	2300      	movs	r3, #0
200017c4:	60fb      	str	r3, [r7, #12]
200017c6:	e00b      	b.n	200017e0 <set_ram_vt+0x30>
200017c8:	68bb      	ldr	r3, [r7, #8]
200017ca:	1d1a      	adds	r2, r3, #4
200017cc:	60ba      	str	r2, [r7, #8]
200017ce:	68fa      	ldr	r2, [r7, #12]
200017d0:	0092      	lsls	r2, r2, #2
200017d2:	6879      	ldr	r1, [r7, #4]
200017d4:	440a      	add	r2, r1
200017d6:	6812      	ldr	r2, [r2, #0]
200017d8:	601a      	str	r2, [r3, #0]
200017da:	68fb      	ldr	r3, [r7, #12]
200017dc:	3301      	adds	r3, #1
200017de:	60fb      	str	r3, [r7, #12]
200017e0:	68fb      	ldr	r3, [r7, #12]
200017e2:	2b2f      	cmp	r3, #47	; 0x2f
200017e4:	d9f0      	bls.n	200017c8 <set_ram_vt+0x18>
200017e6:	4b0d      	ldr	r3, [pc, #52]	; (2000181c <set_ram_vt+0x6c>)
200017e8:	4a0b      	ldr	r2, [pc, #44]	; (20001818 <set_ram_vt+0x68>)
200017ea:	609a      	str	r2, [r3, #8]
200017ec:	4b0a      	ldr	r3, [pc, #40]	; (20001818 <set_ram_vt+0x68>)
200017ee:	4a0c      	ldr	r2, [pc, #48]	; (20001820 <set_ram_vt+0x70>)
200017f0:	63da      	str	r2, [r3, #60]	; 0x3c
200017f2:	4b09      	ldr	r3, [pc, #36]	; (20001818 <set_ram_vt+0x68>)
200017f4:	4a0b      	ldr	r2, [pc, #44]	; (20001824 <set_ram_vt+0x74>)
200017f6:	659a      	str	r2, [r3, #88]	; 0x58
200017f8:	4b07      	ldr	r3, [pc, #28]	; (20001818 <set_ram_vt+0x68>)
200017fa:	4a0b      	ldr	r2, [pc, #44]	; (20001828 <set_ram_vt+0x78>)
200017fc:	679a      	str	r2, [r3, #120]	; 0x78
200017fe:	4b06      	ldr	r3, [pc, #24]	; (20001818 <set_ram_vt+0x68>)
20001800:	4a0a      	ldr	r2, [pc, #40]	; (2000182c <set_ram_vt+0x7c>)
20001802:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20001806:	4b04      	ldr	r3, [pc, #16]	; (20001818 <set_ram_vt+0x68>)
20001808:	4a09      	ldr	r2, [pc, #36]	; (20001830 <set_ram_vt+0x80>)
2000180a:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
2000180e:	bf00      	nop
20001810:	3714      	adds	r7, #20
20001812:	46bd      	mov	sp, r7
20001814:	bc80      	pop	{r7}
20001816:	4770      	bx	lr
20001818:	20003c00 	.word	0x20003c00
2000181c:	e000ed00 	.word	0xe000ed00
20001820:	200018ed 	.word	0x200018ed
20001824:	20001909 	.word	0x20001909
20001828:	20000599 	.word	0x20000599
2000182c:	200005b1 	.word	0x200005b1
20001830:	20000585 	.word	0x20000585

20001834 <uart_init>:
20001834:	b480      	push	{r7}
20001836:	af00      	add	r7, sp, #0
20001838:	4b22      	ldr	r3, [pc, #136]	; (200018c4 <uart_init+0x90>)
2000183a:	2200      	movs	r2, #0
2000183c:	601a      	str	r2, [r3, #0]
2000183e:	4a22      	ldr	r2, [pc, #136]	; (200018c8 <uart_init+0x94>)
20001840:	4b21      	ldr	r3, [pc, #132]	; (200018c8 <uart_init+0x94>)
20001842:	69db      	ldr	r3, [r3, #28]
20001844:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001848:	61d3      	str	r3, [r2, #28]
2000184a:	4a1f      	ldr	r2, [pc, #124]	; (200018c8 <uart_init+0x94>)
2000184c:	4b1e      	ldr	r3, [pc, #120]	; (200018c8 <uart_init+0x94>)
2000184e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001850:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001854:	6293      	str	r3, [r2, #40]	; 0x28
20001856:	4b1d      	ldr	r3, [pc, #116]	; (200018cc <uart_init+0x98>)
20001858:	2204      	movs	r2, #4
2000185a:	625a      	str	r2, [r3, #36]	; 0x24
2000185c:	4b1b      	ldr	r3, [pc, #108]	; (200018cc <uart_init+0x98>)
2000185e:	2200      	movs	r2, #0
20001860:	629a      	str	r2, [r3, #40]	; 0x28
20001862:	4a1a      	ldr	r2, [pc, #104]	; (200018cc <uart_init+0x98>)
20001864:	4b19      	ldr	r3, [pc, #100]	; (200018cc <uart_init+0x98>)
20001866:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001868:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
2000186c:	6353      	str	r3, [r2, #52]	; 0x34
2000186e:	4a17      	ldr	r2, [pc, #92]	; (200018cc <uart_init+0x98>)
20001870:	4b16      	ldr	r3, [pc, #88]	; (200018cc <uart_init+0x98>)
20001872:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001874:	f043 0312 	orr.w	r3, r3, #18
20001878:	6353      	str	r3, [r2, #52]	; 0x34
2000187a:	4a14      	ldr	r2, [pc, #80]	; (200018cc <uart_init+0x98>)
2000187c:	4b13      	ldr	r3, [pc, #76]	; (200018cc <uart_init+0x98>)
2000187e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001880:	f043 0310 	orr.w	r3, r3, #16
20001884:	62d3      	str	r3, [r2, #44]	; 0x2c
20001886:	4a11      	ldr	r2, [pc, #68]	; (200018cc <uart_init+0x98>)
20001888:	4b10      	ldr	r3, [pc, #64]	; (200018cc <uart_init+0x98>)
2000188a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
2000188c:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001890:	62d3      	str	r3, [r2, #44]	; 0x2c
20001892:	4a0e      	ldr	r2, [pc, #56]	; (200018cc <uart_init+0x98>)
20001894:	4b0d      	ldr	r3, [pc, #52]	; (200018cc <uart_init+0x98>)
20001896:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001898:	f443 7340 	orr.w	r3, r3, #768	; 0x300
2000189c:	f043 0301 	orr.w	r3, r3, #1
200018a0:	6313      	str	r3, [r2, #48]	; 0x30
200018a2:	4a0a      	ldr	r2, [pc, #40]	; (200018cc <uart_init+0x98>)
200018a4:	4b09      	ldr	r3, [pc, #36]	; (200018cc <uart_init+0x98>)
200018a6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200018a8:	f043 0310 	orr.w	r3, r3, #16
200018ac:	6393      	str	r3, [r2, #56]	; 0x38
200018ae:	4a07      	ldr	r2, [pc, #28]	; (200018cc <uart_init+0x98>)
200018b0:	4b06      	ldr	r3, [pc, #24]	; (200018cc <uart_init+0x98>)
200018b2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200018b4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
200018b8:	6393      	str	r3, [r2, #56]	; 0x38
200018ba:	bf00      	nop
200018bc:	46bd      	mov	sp, r7
200018be:	bc80      	pop	{r7}
200018c0:	4770      	bx	lr
200018c2:	bf00      	nop
200018c4:	20003cd0 	.word	0x20003cd0
200018c8:	40020000 	.word	0x40020000
200018cc:	40030000 	.word	0x40030000

200018d0 <system_init>:
200018d0:	b580      	push	{r7, lr}
200018d2:	af00      	add	r7, sp, #0
200018d4:	f7ff ff6c 	bl	200017b0 <set_ram_vt>
200018d8:	f7ff fdd4 	bl	20001484 <ClkConfig>
200018dc:	f7ff fcf8 	bl	200012d0 <PortConfig>
200018e0:	f7ff fe06 	bl	200014f0 <TimerConfig>
200018e4:	f7ff ffa6 	bl	20001834 <uart_init>
200018e8:	bf00      	nop
200018ea:	bd80      	pop	{r7, pc}

200018ec <SysTick_Handler>:
200018ec:	b480      	push	{r7}
200018ee:	af00      	add	r7, sp, #0
200018f0:	4b04      	ldr	r3, [pc, #16]	; (20001904 <SysTick_Handler+0x18>)
200018f2:	681b      	ldr	r3, [r3, #0]
200018f4:	3301      	adds	r3, #1
200018f6:	4a03      	ldr	r2, [pc, #12]	; (20001904 <SysTick_Handler+0x18>)
200018f8:	6013      	str	r3, [r2, #0]
200018fa:	bf00      	nop
200018fc:	46bd      	mov	sp, r7
200018fe:	bc80      	pop	{r7}
20001900:	4770      	bx	lr
20001902:	bf00      	nop
20001904:	20003b00 	.word	0x20003b00

20001908 <UART1_Handler>:
20001908:	b480      	push	{r7}
2000190a:	b083      	sub	sp, #12
2000190c:	af00      	add	r7, sp, #0
2000190e:	4b1d      	ldr	r3, [pc, #116]	; (20001984 <UART1_Handler+0x7c>)
20001910:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001912:	f003 0310 	and.w	r3, r3, #16
20001916:	2b00      	cmp	r3, #0
20001918:	d01f      	beq.n	2000195a <UART1_Handler+0x52>
2000191a:	e002      	b.n	20001922 <UART1_Handler+0x1a>
2000191c:	4b19      	ldr	r3, [pc, #100]	; (20001984 <UART1_Handler+0x7c>)
2000191e:	681b      	ldr	r3, [r3, #0]
20001920:	71fb      	strb	r3, [r7, #7]
20001922:	4b18      	ldr	r3, [pc, #96]	; (20001984 <UART1_Handler+0x7c>)
20001924:	699b      	ldr	r3, [r3, #24]
20001926:	f003 0310 	and.w	r3, r3, #16
2000192a:	2b00      	cmp	r3, #0
2000192c:	d0f6      	beq.n	2000191c <UART1_Handler+0x14>
2000192e:	4b16      	ldr	r3, [pc, #88]	; (20001988 <UART1_Handler+0x80>)
20001930:	681b      	ldr	r3, [r3, #0]
20001932:	80bb      	strh	r3, [r7, #4]
20001934:	4b14      	ldr	r3, [pc, #80]	; (20001988 <UART1_Handler+0x80>)
20001936:	689b      	ldr	r3, [r3, #8]
20001938:	085b      	lsrs	r3, r3, #1
2000193a:	807b      	strh	r3, [r7, #2]
2000193c:	88ba      	ldrh	r2, [r7, #4]
2000193e:	887b      	ldrh	r3, [r7, #2]
20001940:	429a      	cmp	r2, r3
20001942:	d205      	bcs.n	20001950 <UART1_Handler+0x48>
20001944:	4a10      	ldr	r2, [pc, #64]	; (20001988 <UART1_Handler+0x80>)
20001946:	4b10      	ldr	r3, [pc, #64]	; (20001988 <UART1_Handler+0x80>)
20001948:	681b      	ldr	r3, [r3, #0]
2000194a:	3b01      	subs	r3, #1
2000194c:	6013      	str	r3, [r2, #0]
2000194e:	e004      	b.n	2000195a <UART1_Handler+0x52>
20001950:	4a0d      	ldr	r2, [pc, #52]	; (20001988 <UART1_Handler+0x80>)
20001952:	4b0d      	ldr	r3, [pc, #52]	; (20001988 <UART1_Handler+0x80>)
20001954:	681b      	ldr	r3, [r3, #0]
20001956:	3301      	adds	r3, #1
20001958:	6013      	str	r3, [r2, #0]
2000195a:	4b0a      	ldr	r3, [pc, #40]	; (20001984 <UART1_Handler+0x7c>)
2000195c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000195e:	f003 0340 	and.w	r3, r3, #64	; 0x40
20001962:	2b00      	cmp	r3, #0
20001964:	d009      	beq.n	2000197a <UART1_Handler+0x72>
20001966:	e002      	b.n	2000196e <UART1_Handler+0x66>
20001968:	4b06      	ldr	r3, [pc, #24]	; (20001984 <UART1_Handler+0x7c>)
2000196a:	681b      	ldr	r3, [r3, #0]
2000196c:	707b      	strb	r3, [r7, #1]
2000196e:	4b05      	ldr	r3, [pc, #20]	; (20001984 <UART1_Handler+0x7c>)
20001970:	699b      	ldr	r3, [r3, #24]
20001972:	f003 0310 	and.w	r3, r3, #16
20001976:	2b00      	cmp	r3, #0
20001978:	d0f6      	beq.n	20001968 <UART1_Handler+0x60>
2000197a:	bf00      	nop
2000197c:	370c      	adds	r7, #12
2000197e:	46bd      	mov	sp, r7
20001980:	bc80      	pop	{r7}
20001982:	4770      	bx	lr
20001984:	40030000 	.word	0x40030000
20001988:	40070000 	.word	0x40070000
