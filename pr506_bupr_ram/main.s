
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
20000036:	f001 fc35 	bl	200018a4 <system_init>
2000003a:	f000 fa05 	bl	20000448 <ssi_init>
2000003e:	f000 fa77 	bl	20000530 <dac_init>
20000042:	f001 f8db 	bl	200011fc <adc_dma_init>
20000046:	f107 0358 	add.w	r3, r7, #88	; 0x58
2000004a:	22c8      	movs	r2, #200	; 0xc8
2000004c:	2150      	movs	r1, #80	; 0x50
2000004e:	4618      	mov	r0, r3
20000050:	f000 fc16 	bl	20000880 <reg_init>
20000054:	f107 0348 	add.w	r3, r7, #72	; 0x48
20000058:	22c8      	movs	r2, #200	; 0xc8
2000005a:	2150      	movs	r1, #80	; 0x50
2000005c:	4618      	mov	r0, r3
2000005e:	f000 fc0f 	bl	20000880 <reg_init>
20000062:	f107 0338 	add.w	r3, r7, #56	; 0x38
20000066:	f241 3288 	movw	r2, #5000	; 0x1388
2000006a:	2100      	movs	r1, #0
2000006c:	4618      	mov	r0, r3
2000006e:	f000 fc07 	bl	20000880 <reg_init>
20000072:	f107 0328 	add.w	r3, r7, #40	; 0x28
20000076:	f640 32b8 	movw	r2, #3000	; 0xbb8
2000007a:	2100      	movs	r1, #0
2000007c:	4618      	mov	r0, r3
2000007e:	f000 fbff 	bl	20000880 <reg_init>
20000082:	f107 0318 	add.w	r3, r7, #24
20000086:	4a88      	ldr	r2, [pc, #544]	; (200002a8 <main+0x2a8>)
20000088:	2100      	movs	r1, #0
2000008a:	4618      	mov	r0, r3
2000008c:	f000 fbf8 	bl	20000880 <reg_init>
20000090:	2300      	movs	r3, #0
20000092:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
20000096:	e008      	b.n	200000aa <main+0xaa>
20000098:	2100      	movs	r1, #0
2000009a:	2000      	movs	r0, #0
2000009c:	f000 ffd6 	bl	2000104c <mfilter>
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
200000c0:	4b7a      	ldr	r3, [pc, #488]	; (200002ac <main+0x2ac>)
200000c2:	2200      	movs	r2, #0
200000c4:	601a      	str	r2, [r3, #0]
200000c6:	4b7a      	ldr	r3, [pc, #488]	; (200002b0 <main+0x2b0>)
200000c8:	2200      	movs	r2, #0
200000ca:	601a      	str	r2, [r3, #0]
200000cc:	4b79      	ldr	r3, [pc, #484]	; (200002b4 <main+0x2b4>)
200000ce:	2200      	movs	r2, #0
200000d0:	601a      	str	r2, [r3, #0]
200000d2:	2300      	movs	r3, #0
200000d4:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
200000d8:	e038      	b.n	2000014c <main+0x14c>
200000da:	f001 f8ad 	bl	20001238 <adc_dma_wait>
200000de:	4b76      	ldr	r3, [pc, #472]	; (200002b8 <main+0x2b8>)
200000e0:	689b      	ldr	r3, [r3, #8]
200000e2:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000e6:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
200000ea:	4413      	add	r3, r2
200000ec:	f8c7 30a8 	str.w	r3, [r7, #168]	; 0xa8
200000f0:	4b71      	ldr	r3, [pc, #452]	; (200002b8 <main+0x2b8>)
200000f2:	68db      	ldr	r3, [r3, #12]
200000f4:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000f8:	f8d7 30a4 	ldr.w	r3, [r7, #164]	; 0xa4
200000fc:	4413      	add	r3, r2
200000fe:	f8c7 30a4 	str.w	r3, [r7, #164]	; 0xa4
20000102:	4b6e      	ldr	r3, [pc, #440]	; (200002bc <main+0x2bc>)
20000104:	689b      	ldr	r3, [r3, #8]
20000106:	4618      	mov	r0, r3
20000108:	f000 f9e8 	bl	200004dc <enc_crc>
2000010c:	4602      	mov	r2, r0
2000010e:	4b67      	ldr	r3, [pc, #412]	; (200002ac <main+0x2ac>)
20000110:	681b      	ldr	r3, [r3, #0]
20000112:	4413      	add	r3, r2
20000114:	461a      	mov	r2, r3
20000116:	4b65      	ldr	r3, [pc, #404]	; (200002ac <main+0x2ac>)
20000118:	601a      	str	r2, [r3, #0]
2000011a:	4b67      	ldr	r3, [pc, #412]	; (200002b8 <main+0x2b8>)
2000011c:	681b      	ldr	r3, [r3, #0]
2000011e:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000122:	4a64      	ldr	r2, [pc, #400]	; (200002b4 <main+0x2b4>)
20000124:	6812      	ldr	r2, [r2, #0]
20000126:	4413      	add	r3, r2
20000128:	461a      	mov	r2, r3
2000012a:	4b62      	ldr	r3, [pc, #392]	; (200002b4 <main+0x2b4>)
2000012c:	601a      	str	r2, [r3, #0]
2000012e:	4b62      	ldr	r3, [pc, #392]	; (200002b8 <main+0x2b8>)
20000130:	685b      	ldr	r3, [r3, #4]
20000132:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000136:	4a5e      	ldr	r2, [pc, #376]	; (200002b0 <main+0x2b0>)
20000138:	6812      	ldr	r2, [r2, #0]
2000013a:	4413      	add	r3, r2
2000013c:	461a      	mov	r2, r3
2000013e:	4b5c      	ldr	r3, [pc, #368]	; (200002b0 <main+0x2b0>)
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
2000016a:	4b50      	ldr	r3, [pc, #320]	; (200002ac <main+0x2ac>)
2000016c:	681b      	ldr	r3, [r3, #0]
2000016e:	129b      	asrs	r3, r3, #10
20000170:	4a4e      	ldr	r2, [pc, #312]	; (200002ac <main+0x2ac>)
20000172:	6013      	str	r3, [r2, #0]
20000174:	4b52      	ldr	r3, [pc, #328]	; (200002c0 <main+0x2c0>)
20000176:	f44f 7202 	mov.w	r2, #520	; 0x208
2000017a:	601a      	str	r2, [r3, #0]
2000017c:	4b4c      	ldr	r3, [pc, #304]	; (200002b0 <main+0x2b0>)
2000017e:	681a      	ldr	r2, [r3, #0]
20000180:	4b4c      	ldr	r3, [pc, #304]	; (200002b4 <main+0x2b4>)
20000182:	681b      	ldr	r3, [r3, #0]
20000184:	129b      	asrs	r3, r3, #10
20000186:	fb92 f3f3 	sdiv	r3, r2, r3
2000018a:	4a4e      	ldr	r2, [pc, #312]	; (200002c4 <main+0x2c4>)
2000018c:	6013      	str	r3, [r2, #0]
2000018e:	4b4c      	ldr	r3, [pc, #304]	; (200002c0 <main+0x2c0>)
20000190:	681b      	ldr	r3, [r3, #0]
20000192:	4a48      	ldr	r2, [pc, #288]	; (200002b4 <main+0x2b4>)
20000194:	6013      	str	r3, [r2, #0]
20000196:	4b45      	ldr	r3, [pc, #276]	; (200002ac <main+0x2ac>)
20000198:	681b      	ldr	r3, [r3, #0]
2000019a:	4a4b      	ldr	r2, [pc, #300]	; (200002c8 <main+0x2c8>)
2000019c:	6013      	str	r3, [r2, #0]
2000019e:	4b43      	ldr	r3, [pc, #268]	; (200002ac <main+0x2ac>)
200001a0:	681b      	ldr	r3, [r3, #0]
200001a2:	4a4a      	ldr	r2, [pc, #296]	; (200002cc <main+0x2cc>)
200001a4:	6013      	str	r3, [r2, #0]
200001a6:	4b41      	ldr	r3, [pc, #260]	; (200002ac <main+0x2ac>)
200001a8:	681b      	ldr	r3, [r3, #0]
200001aa:	4618      	mov	r0, r3
200001ac:	f000 ff26 	bl	20000ffc <encoder_init>
200001b0:	4b47      	ldr	r3, [pc, #284]	; (200002d0 <main+0x2d0>)
200001b2:	2200      	movs	r2, #0
200001b4:	601a      	str	r2, [r3, #0]
200001b6:	4b44      	ldr	r3, [pc, #272]	; (200002c8 <main+0x2c8>)
200001b8:	681b      	ldr	r3, [r3, #0]
200001ba:	4a46      	ldr	r2, [pc, #280]	; (200002d4 <main+0x2d4>)
200001bc:	6013      	str	r3, [r2, #0]
200001be:	2301      	movs	r3, #1
200001c0:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
200001c4:	f001 f838 	bl	20001238 <adc_dma_wait>
200001c8:	4b3b      	ldr	r3, [pc, #236]	; (200002b8 <main+0x2b8>)
200001ca:	689b      	ldr	r3, [r3, #8]
200001cc:	f3c3 020b 	ubfx	r2, r3, #0, #12
200001d0:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
200001d4:	1ad3      	subs	r3, r2, r3
200001d6:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
200001da:	4b37      	ldr	r3, [pc, #220]	; (200002b8 <main+0x2b8>)
200001dc:	68db      	ldr	r3, [r3, #12]
200001de:	f3c3 020b 	ubfx	r2, r3, #0, #12
200001e2:	f8d7 30a4 	ldr.w	r3, [r7, #164]	; 0xa4
200001e6:	1ad3      	subs	r3, r2, r3
200001e8:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
200001ec:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
200001f0:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
200001f4:	4413      	add	r3, r2
200001f6:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
200001fa:	4b30      	ldr	r3, [pc, #192]	; (200002bc <main+0x2bc>)
200001fc:	689b      	ldr	r3, [r3, #8]
200001fe:	4618      	mov	r0, r3
20000200:	f000 f96c 	bl	200004dc <enc_crc>
20000204:	67f8      	str	r0, [r7, #124]	; 0x7c
20000206:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
20000208:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000020c:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000210:	4b29      	ldr	r3, [pc, #164]	; (200002b8 <main+0x2b8>)
20000212:	685b      	ldr	r3, [r3, #4]
20000214:	029a      	lsls	r2, r3, #10
20000216:	4b30      	ldr	r3, [pc, #192]	; (200002d8 <main+0x2d8>)
20000218:	4013      	ands	r3, r2
2000021a:	4a27      	ldr	r2, [pc, #156]	; (200002b8 <main+0x2b8>)
2000021c:	6812      	ldr	r2, [r2, #0]
2000021e:	f3c2 020b 	ubfx	r2, r2, #0, #12
20000222:	fbb3 f3f2 	udiv	r3, r3, r2
20000226:	461a      	mov	r2, r3
20000228:	4b21      	ldr	r3, [pc, #132]	; (200002b0 <main+0x2b0>)
2000022a:	601a      	str	r2, [r3, #0]
2000022c:	4a2b      	ldr	r2, [pc, #172]	; (200002dc <main+0x2dc>)
2000022e:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
20000230:	6013      	str	r3, [r2, #0]
20000232:	4b2b      	ldr	r3, [pc, #172]	; (200002e0 <main+0x2e0>)
20000234:	681b      	ldr	r3, [r3, #0]
20000236:	3301      	adds	r3, #1
20000238:	4a29      	ldr	r2, [pc, #164]	; (200002e0 <main+0x2e0>)
2000023a:	6013      	str	r3, [r2, #0]
2000023c:	4b28      	ldr	r3, [pc, #160]	; (200002e0 <main+0x2e0>)
2000023e:	681b      	ldr	r3, [r3, #0]
20000240:	f003 0307 	and.w	r3, r3, #7
20000244:	2b00      	cmp	r3, #0
20000246:	d17b      	bne.n	20000340 <main+0x340>
20000248:	f000 faa0 	bl	2000078c <update_refposition>
2000024c:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
2000024e:	491f      	ldr	r1, [pc, #124]	; (200002cc <main+0x2cc>)
20000250:	4618      	mov	r0, r3
20000252:	f000 fed9 	bl	20001008 <get_speed>
20000256:	67b8      	str	r0, [r7, #120]	; 0x78
20000258:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
2000025c:	2b00      	cmp	r3, #0
2000025e:	d041      	beq.n	200002e4 <main+0x2e4>
20000260:	4b13      	ldr	r3, [pc, #76]	; (200002b0 <main+0x2b0>)
20000262:	681a      	ldr	r2, [r3, #0]
20000264:	4b13      	ldr	r3, [pc, #76]	; (200002b4 <main+0x2b4>)
20000266:	681b      	ldr	r3, [r3, #0]
20000268:	1ad3      	subs	r3, r2, r3
2000026a:	677b      	str	r3, [r7, #116]	; 0x74
2000026c:	6f7b      	ldr	r3, [r7, #116]	; 0x74
2000026e:	f113 0f02 	cmn.w	r3, #2
20000272:	db0d      	blt.n	20000290 <main+0x290>
20000274:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20000276:	2b02      	cmp	r3, #2
20000278:	dc0a      	bgt.n	20000290 <main+0x290>
2000027a:	2300      	movs	r3, #0
2000027c:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
20000280:	4b12      	ldr	r3, [pc, #72]	; (200002cc <main+0x2cc>)
20000282:	681b      	ldr	r3, [r3, #0]
20000284:	4a10      	ldr	r2, [pc, #64]	; (200002c8 <main+0x2c8>)
20000286:	6013      	str	r3, [r2, #0]
20000288:	4b10      	ldr	r3, [pc, #64]	; (200002cc <main+0x2cc>)
2000028a:	681b      	ldr	r3, [r3, #0]
2000028c:	4a11      	ldr	r2, [pc, #68]	; (200002d4 <main+0x2d4>)
2000028e:	6013      	str	r3, [r2, #0]
20000290:	f107 0318 	add.w	r3, r7, #24
20000294:	2200      	movs	r2, #0
20000296:	6f79      	ldr	r1, [r7, #116]	; 0x74
20000298:	4618      	mov	r0, r3
2000029a:	f000 faf7 	bl	2000088c <reg_update>
2000029e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
200002a0:	131b      	asrs	r3, r3, #12
200002a2:	f8c7 3098 	str.w	r3, [r7, #152]	; 0x98
200002a6:	e02c      	b.n	20000302 <main+0x302>
200002a8:	0007a120 	.word	0x0007a120
200002ac:	20002a10 	.word	0x20002a10
200002b0:	20002a14 	.word	0x20002a14
200002b4:	20002a04 	.word	0x20002a04
200002b8:	20004200 	.word	0x20004200
200002bc:	40040000 	.word	0x40040000
200002c0:	20002a0c 	.word	0x20002a0c
200002c4:	20002a08 	.word	0x20002a08
200002c8:	20002a00 	.word	0x20002a00
200002cc:	20002a28 	.word	0x20002a28
200002d0:	20002a34 	.word	0x20002a34
200002d4:	20002a2c 	.word	0x20002a2c
200002d8:	003ffc00 	.word	0x003ffc00
200002dc:	20002a30 	.word	0x20002a30
200002e0:	20002a18 	.word	0x20002a18
200002e4:	4b48      	ldr	r3, [pc, #288]	; (20000408 <main+0x408>)
200002e6:	681a      	ldr	r2, [r3, #0]
200002e8:	4b48      	ldr	r3, [pc, #288]	; (2000040c <main+0x40c>)
200002ea:	681b      	ldr	r3, [r3, #0]
200002ec:	1ad1      	subs	r1, r2, r3
200002ee:	f107 0328 	add.w	r3, r7, #40	; 0x28
200002f2:	2200      	movs	r2, #0
200002f4:	4618      	mov	r0, r3
200002f6:	f000 fac9 	bl	2000088c <reg_update>
200002fa:	6b7b      	ldr	r3, [r7, #52]	; 0x34
200002fc:	131b      	asrs	r3, r3, #12
200002fe:	f8c7 3098 	str.w	r3, [r7, #152]	; 0x98
20000302:	f8d7 2098 	ldr.w	r2, [r7, #152]	; 0x98
20000306:	6fbb      	ldr	r3, [r7, #120]	; 0x78
20000308:	1ad1      	subs	r1, r2, r3
2000030a:	f107 0338 	add.w	r3, r7, #56	; 0x38
2000030e:	2200      	movs	r2, #0
20000310:	4618      	mov	r0, r3
20000312:	f000 fabb 	bl	2000088c <reg_update>
20000316:	6c7b      	ldr	r3, [r7, #68]	; 0x44
20000318:	131b      	asrs	r3, r3, #12
2000031a:	f8c7 309c 	str.w	r3, [r7, #156]	; 0x9c
2000031e:	f8d7 309c 	ldr.w	r3, [r7, #156]	; 0x9c
20000322:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
20000326:	dd03      	ble.n	20000330 <main+0x330>
20000328:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
2000032c:	f8c7 309c 	str.w	r3, [r7, #156]	; 0x9c
20000330:	f8d7 309c 	ldr.w	r3, [r7, #156]	; 0x9c
20000334:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
20000338:	da02      	bge.n	20000340 <main+0x340>
2000033a:	4b35      	ldr	r3, [pc, #212]	; (20000410 <main+0x410>)
2000033c:	f8c7 309c 	str.w	r3, [r7, #156]	; 0x9c
20000340:	f000 f986 	bl	20000650 <update_telemetry>
20000344:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
20000348:	f503 7361 	add.w	r3, r3, #900	; 0x384
2000034c:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000350:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000354:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
20000358:	607b      	str	r3, [r7, #4]
2000035a:	f8d7 3080 	ldr.w	r3, [r7, #128]	; 0x80
2000035e:	60bb      	str	r3, [r7, #8]
20000360:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
20000364:	60fb      	str	r3, [r7, #12]
20000366:	f8d7 208c 	ldr.w	r2, [r7, #140]	; 0x8c
2000036a:	f107 0110 	add.w	r1, r7, #16
2000036e:	1d3b      	adds	r3, r7, #4
20000370:	4618      	mov	r0, r3
20000372:	f000 fab1 	bl	200008d8 <abc_to_dq>
20000376:	693b      	ldr	r3, [r7, #16]
20000378:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
2000037c:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
20000380:	697b      	ldr	r3, [r7, #20]
20000382:	2b00      	cmp	r3, #0
20000384:	bfb8      	it	lt
20000386:	425b      	neglt	r3, r3
20000388:	4413      	add	r3, r2
2000038a:	673b      	str	r3, [r7, #112]	; 0x70
2000038c:	4b21      	ldr	r3, [pc, #132]	; (20000414 <main+0x414>)
2000038e:	681b      	ldr	r3, [r3, #0]
20000390:	4619      	mov	r1, r3
20000392:	6f38      	ldr	r0, [r7, #112]	; 0x70
20000394:	f000 fe5a 	bl	2000104c <mfilter>
20000398:	4602      	mov	r2, r0
2000039a:	4b1e      	ldr	r3, [pc, #120]	; (20000414 <main+0x414>)
2000039c:	601a      	str	r2, [r3, #0]
2000039e:	693b      	ldr	r3, [r7, #16]
200003a0:	425b      	negs	r3, r3
200003a2:	66fb      	str	r3, [r7, #108]	; 0x6c
200003a4:	697b      	ldr	r3, [r7, #20]
200003a6:	f8d7 209c 	ldr.w	r2, [r7, #156]	; 0x9c
200003aa:	1ad3      	subs	r3, r2, r3
200003ac:	66bb      	str	r3, [r7, #104]	; 0x68
200003ae:	f107 0358 	add.w	r3, r7, #88	; 0x58
200003b2:	f8d7 20a0 	ldr.w	r2, [r7, #160]	; 0xa0
200003b6:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
200003b8:	4618      	mov	r0, r3
200003ba:	f000 fa67 	bl	2000088c <reg_update>
200003be:	f107 0348 	add.w	r3, r7, #72	; 0x48
200003c2:	f8d7 20a0 	ldr.w	r2, [r7, #160]	; 0xa0
200003c6:	6eb9      	ldr	r1, [r7, #104]	; 0x68
200003c8:	4618      	mov	r0, r3
200003ca:	f000 fa5f 	bl	2000088c <reg_update>
200003ce:	6e7b      	ldr	r3, [r7, #100]	; 0x64
200003d0:	109b      	asrs	r3, r3, #2
200003d2:	613b      	str	r3, [r7, #16]
200003d4:	6d7b      	ldr	r3, [r7, #84]	; 0x54
200003d6:	109b      	asrs	r3, r3, #2
200003d8:	617b      	str	r3, [r7, #20]
200003da:	f8d7 208c 	ldr.w	r2, [r7, #140]	; 0x8c
200003de:	f107 0110 	add.w	r1, r7, #16
200003e2:	1d3b      	adds	r3, r7, #4
200003e4:	4618      	mov	r0, r3
200003e6:	f000 fc8f 	bl	20000d08 <svpwm>
200003ea:	f8c7 00a0 	str.w	r0, [r7, #160]	; 0xa0
200003ee:	687b      	ldr	r3, [r7, #4]
200003f0:	4618      	mov	r0, r3
200003f2:	f000 f8fd 	bl	200005f0 <pwm_seta>
200003f6:	68bb      	ldr	r3, [r7, #8]
200003f8:	4618      	mov	r0, r3
200003fa:	f000 f909 	bl	20000610 <pwm_setb>
200003fe:	68fb      	ldr	r3, [r7, #12]
20000400:	4618      	mov	r0, r3
20000402:	f000 f915 	bl	20000630 <pwm_setc>
20000406:	e6dd      	b.n	200001c4 <main+0x1c4>
20000408:	20002a00 	.word	0x20002a00
2000040c:	20002a28 	.word	0x20002a28
20000410:	fffffc18 	.word	0xfffffc18
20000414:	20002a34 	.word	0x20002a34

20000418 <sleep>:
20000418:	b480      	push	{r7}
2000041a:	b085      	sub	sp, #20
2000041c:	af00      	add	r7, sp, #0
2000041e:	6078      	str	r0, [r7, #4]
20000420:	4b08      	ldr	r3, [pc, #32]	; (20000444 <sleep+0x2c>)
20000422:	681a      	ldr	r2, [r3, #0]
20000424:	687b      	ldr	r3, [r7, #4]
20000426:	4413      	add	r3, r2
20000428:	60fb      	str	r3, [r7, #12]
2000042a:	bf00      	nop
2000042c:	4b05      	ldr	r3, [pc, #20]	; (20000444 <sleep+0x2c>)
2000042e:	681a      	ldr	r2, [r3, #0]
20000430:	68fb      	ldr	r3, [r7, #12]
20000432:	429a      	cmp	r2, r3
20000434:	d3fa      	bcc.n	2000042c <sleep+0x14>
20000436:	bf00      	nop
20000438:	4618      	mov	r0, r3
2000043a:	3714      	adds	r7, #20
2000043c:	46bd      	mov	sp, r7
2000043e:	bc80      	pop	{r7}
20000440:	4770      	bx	lr
20000442:	bf00      	nop
20000444:	20003b00 	.word	0x20003b00

20000448 <ssi_init>:
20000448:	b480      	push	{r7}
2000044a:	af00      	add	r7, sp, #0
2000044c:	4a0c      	ldr	r2, [pc, #48]	; (20000480 <ssi_init+0x38>)
2000044e:	4b0c      	ldr	r3, [pc, #48]	; (20000480 <ssi_init+0x38>)
20000450:	69db      	ldr	r3, [r3, #28]
20000452:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20000456:	61d3      	str	r3, [r2, #28]
20000458:	4b09      	ldr	r3, [pc, #36]	; (20000480 <ssi_init+0x38>)
2000045a:	4a0a      	ldr	r2, [pc, #40]	; (20000484 <ssi_init+0x3c>)
2000045c:	62da      	str	r2, [r3, #44]	; 0x2c
2000045e:	4b0a      	ldr	r3, [pc, #40]	; (20000488 <ssi_init+0x40>)
20000460:	2200      	movs	r2, #0
20000462:	605a      	str	r2, [r3, #4]
20000464:	4b08      	ldr	r3, [pc, #32]	; (20000488 <ssi_init+0x40>)
20000466:	2206      	movs	r2, #6
20000468:	611a      	str	r2, [r3, #16]
2000046a:	4b07      	ldr	r3, [pc, #28]	; (20000488 <ssi_init+0x40>)
2000046c:	f240 221f 	movw	r2, #543	; 0x21f
20000470:	601a      	str	r2, [r3, #0]
20000472:	4b05      	ldr	r3, [pc, #20]	; (20000488 <ssi_init+0x40>)
20000474:	2202      	movs	r2, #2
20000476:	605a      	str	r2, [r3, #4]
20000478:	bf00      	nop
2000047a:	46bd      	mov	sp, r7
2000047c:	bc80      	pop	{r7}
2000047e:	4770      	bx	lr
20000480:	40020000 	.word	0x40020000
20000484:	0100000a 	.word	0x0100000a
20000488:	40040000 	.word	0x40040000

2000048c <b2g>:
2000048c:	b480      	push	{r7}
2000048e:	b083      	sub	sp, #12
20000490:	af00      	add	r7, sp, #0
20000492:	6078      	str	r0, [r7, #4]
20000494:	687b      	ldr	r3, [r7, #4]
20000496:	085a      	lsrs	r2, r3, #1
20000498:	687b      	ldr	r3, [r7, #4]
2000049a:	4053      	eors	r3, r2
2000049c:	4618      	mov	r0, r3
2000049e:	370c      	adds	r7, #12
200004a0:	46bd      	mov	sp, r7
200004a2:	bc80      	pop	{r7}
200004a4:	4770      	bx	lr
200004a6:	bf00      	nop

200004a8 <g2b>:
200004a8:	b480      	push	{r7}
200004aa:	b085      	sub	sp, #20
200004ac:	af00      	add	r7, sp, #0
200004ae:	6078      	str	r0, [r7, #4]
200004b0:	2300      	movs	r3, #0
200004b2:	60fb      	str	r3, [r7, #12]
200004b4:	2300      	movs	r3, #0
200004b6:	60fb      	str	r3, [r7, #12]
200004b8:	e006      	b.n	200004c8 <g2b+0x20>
200004ba:	68fa      	ldr	r2, [r7, #12]
200004bc:	687b      	ldr	r3, [r7, #4]
200004be:	4053      	eors	r3, r2
200004c0:	60fb      	str	r3, [r7, #12]
200004c2:	687b      	ldr	r3, [r7, #4]
200004c4:	085b      	lsrs	r3, r3, #1
200004c6:	607b      	str	r3, [r7, #4]
200004c8:	687b      	ldr	r3, [r7, #4]
200004ca:	2b00      	cmp	r3, #0
200004cc:	d1f5      	bne.n	200004ba <g2b+0x12>
200004ce:	68fb      	ldr	r3, [r7, #12]
200004d0:	4618      	mov	r0, r3
200004d2:	3714      	adds	r7, #20
200004d4:	46bd      	mov	sp, r7
200004d6:	bc80      	pop	{r7}
200004d8:	4770      	bx	lr
200004da:	bf00      	nop

200004dc <enc_crc>:
200004dc:	b480      	push	{r7}
200004de:	b085      	sub	sp, #20
200004e0:	af00      	add	r7, sp, #0
200004e2:	6078      	str	r0, [r7, #4]
200004e4:	687b      	ldr	r3, [r7, #4]
200004e6:	60bb      	str	r3, [r7, #8]
200004e8:	2300      	movs	r3, #0
200004ea:	60fb      	str	r3, [r7, #12]
200004ec:	e006      	b.n	200004fc <enc_crc+0x20>
200004ee:	68fa      	ldr	r2, [r7, #12]
200004f0:	68bb      	ldr	r3, [r7, #8]
200004f2:	4053      	eors	r3, r2
200004f4:	60fb      	str	r3, [r7, #12]
200004f6:	68bb      	ldr	r3, [r7, #8]
200004f8:	085b      	lsrs	r3, r3, #1
200004fa:	60bb      	str	r3, [r7, #8]
200004fc:	68bb      	ldr	r3, [r7, #8]
200004fe:	2b00      	cmp	r3, #0
20000500:	d1f5      	bne.n	200004ee <enc_crc+0x12>
20000502:	68fb      	ldr	r3, [r7, #12]
20000504:	f003 0301 	and.w	r3, r3, #1
20000508:	2b00      	cmp	r3, #0
2000050a:	d107      	bne.n	2000051c <enc_crc+0x40>
2000050c:	687b      	ldr	r3, [r7, #4]
2000050e:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000512:	4a06      	ldr	r2, [pc, #24]	; (2000052c <enc_crc+0x50>)
20000514:	6013      	str	r3, [r2, #0]
20000516:	4b05      	ldr	r3, [pc, #20]	; (2000052c <enc_crc+0x50>)
20000518:	681b      	ldr	r3, [r3, #0]
2000051a:	2b00      	cmp	r3, #0
2000051c:	4b03      	ldr	r3, [pc, #12]	; (2000052c <enc_crc+0x50>)
2000051e:	681b      	ldr	r3, [r3, #0]
20000520:	4618      	mov	r0, r3
20000522:	3714      	adds	r7, #20
20000524:	46bd      	mov	sp, r7
20000526:	bc80      	pop	{r7}
20000528:	4770      	bx	lr
2000052a:	bf00      	nop
2000052c:	20002a44 	.word	0x20002a44

20000530 <dac_init>:
20000530:	b480      	push	{r7}
20000532:	af00      	add	r7, sp, #0
20000534:	4a07      	ldr	r2, [pc, #28]	; (20000554 <dac_init+0x24>)
20000536:	4b07      	ldr	r3, [pc, #28]	; (20000554 <dac_init+0x24>)
20000538:	69db      	ldr	r3, [r3, #28]
2000053a:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
2000053e:	61d3      	str	r3, [r2, #28]
20000540:	4a05      	ldr	r2, [pc, #20]	; (20000558 <dac_init+0x28>)
20000542:	4b05      	ldr	r3, [pc, #20]	; (20000558 <dac_init+0x28>)
20000544:	681b      	ldr	r3, [r3, #0]
20000546:	f043 030c 	orr.w	r3, r3, #12
2000054a:	6013      	str	r3, [r2, #0]
2000054c:	bf00      	nop
2000054e:	46bd      	mov	sp, r7
20000550:	bc80      	pop	{r7}
20000552:	4770      	bx	lr
20000554:	40020000 	.word	0x40020000
20000558:	40090000 	.word	0x40090000

2000055c <encoder_start>:
2000055c:	b480      	push	{r7}
2000055e:	af00      	add	r7, sp, #0
20000560:	4b03      	ldr	r3, [pc, #12]	; (20000570 <encoder_start+0x14>)
20000562:	f240 5255 	movw	r2, #1365	; 0x555
20000566:	609a      	str	r2, [r3, #8]
20000568:	bf00      	nop
2000056a:	46bd      	mov	sp, r7
2000056c:	bc80      	pop	{r7}
2000056e:	4770      	bx	lr
20000570:	40040000 	.word	0x40040000

20000574 <ADC_Handler>:
20000574:	b480      	push	{r7}
20000576:	af00      	add	r7, sp, #0
20000578:	4b02      	ldr	r3, [pc, #8]	; (20000584 <ADC_Handler+0x10>)
2000057a:	699b      	ldr	r3, [r3, #24]
2000057c:	bf00      	nop
2000057e:	46bd      	mov	sp, r7
20000580:	bc80      	pop	{r7}
20000582:	4770      	bx	lr
20000584:	40088000 	.word	0x40088000

20000588 <TIMER1_Handler>:
20000588:	b480      	push	{r7}
2000058a:	af00      	add	r7, sp, #0
2000058c:	4b03      	ldr	r3, [pc, #12]	; (2000059c <TIMER1_Handler+0x14>)
2000058e:	2200      	movs	r2, #0
20000590:	655a      	str	r2, [r3, #84]	; 0x54
20000592:	bf00      	nop
20000594:	46bd      	mov	sp, r7
20000596:	bc80      	pop	{r7}
20000598:	4770      	bx	lr
2000059a:	bf00      	nop
2000059c:	40070000 	.word	0x40070000

200005a0 <TIMER3_Handler>:
200005a0:	b580      	push	{r7, lr}
200005a2:	af00      	add	r7, sp, #0
200005a4:	4b04      	ldr	r3, [pc, #16]	; (200005b8 <TIMER3_Handler+0x18>)
200005a6:	2200      	movs	r2, #0
200005a8:	655a      	str	r2, [r3, #84]	; 0x54
200005aa:	f7ff ffd7 	bl	2000055c <encoder_start>
200005ae:	f000 fe2d 	bl	2000120c <adc_dma_start>
200005b2:	bf00      	nop
200005b4:	bd80      	pop	{r7, pc}
200005b6:	bf00      	nop
200005b8:	40080000 	.word	0x40080000

200005bc <get_phase>:
200005bc:	b580      	push	{r7, lr}
200005be:	af00      	add	r7, sp, #0
200005c0:	4b0a      	ldr	r3, [pc, #40]	; (200005ec <get_phase+0x30>)
200005c2:	f240 5255 	movw	r2, #1365	; 0x555
200005c6:	609a      	str	r2, [r3, #8]
200005c8:	bf00      	nop
200005ca:	4b08      	ldr	r3, [pc, #32]	; (200005ec <get_phase+0x30>)
200005cc:	68db      	ldr	r3, [r3, #12]
200005ce:	f003 0304 	and.w	r3, r3, #4
200005d2:	2b00      	cmp	r3, #0
200005d4:	d0f9      	beq.n	200005ca <get_phase+0xe>
200005d6:	4b05      	ldr	r3, [pc, #20]	; (200005ec <get_phase+0x30>)
200005d8:	689b      	ldr	r3, [r3, #8]
200005da:	f3c3 030b 	ubfx	r3, r3, #0, #12
200005de:	4618      	mov	r0, r3
200005e0:	f7ff ff62 	bl	200004a8 <g2b>
200005e4:	4603      	mov	r3, r0
200005e6:	4618      	mov	r0, r3
200005e8:	bd80      	pop	{r7, pc}
200005ea:	bf00      	nop
200005ec:	40040000 	.word	0x40040000

200005f0 <pwm_seta>:
200005f0:	b480      	push	{r7}
200005f2:	b083      	sub	sp, #12
200005f4:	af00      	add	r7, sp, #0
200005f6:	6078      	str	r0, [r7, #4]
200005f8:	4a04      	ldr	r2, [pc, #16]	; (2000060c <pwm_seta+0x1c>)
200005fa:	687b      	ldr	r3, [r7, #4]
200005fc:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000600:	6113      	str	r3, [r2, #16]
20000602:	bf00      	nop
20000604:	370c      	adds	r7, #12
20000606:	46bd      	mov	sp, r7
20000608:	bc80      	pop	{r7}
2000060a:	4770      	bx	lr
2000060c:	40080000 	.word	0x40080000

20000610 <pwm_setb>:
20000610:	b480      	push	{r7}
20000612:	b083      	sub	sp, #12
20000614:	af00      	add	r7, sp, #0
20000616:	6078      	str	r0, [r7, #4]
20000618:	4a04      	ldr	r2, [pc, #16]	; (2000062c <pwm_setb+0x1c>)
2000061a:	687b      	ldr	r3, [r7, #4]
2000061c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000620:	6153      	str	r3, [r2, #20]
20000622:	bf00      	nop
20000624:	370c      	adds	r7, #12
20000626:	46bd      	mov	sp, r7
20000628:	bc80      	pop	{r7}
2000062a:	4770      	bx	lr
2000062c:	40080000 	.word	0x40080000

20000630 <pwm_setc>:
20000630:	b480      	push	{r7}
20000632:	b083      	sub	sp, #12
20000634:	af00      	add	r7, sp, #0
20000636:	6078      	str	r0, [r7, #4]
20000638:	4a04      	ldr	r2, [pc, #16]	; (2000064c <pwm_setc+0x1c>)
2000063a:	687b      	ldr	r3, [r7, #4]
2000063c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000640:	6193      	str	r3, [r2, #24]
20000642:	bf00      	nop
20000644:	370c      	adds	r7, #12
20000646:	46bd      	mov	sp, r7
20000648:	bc80      	pop	{r7}
2000064a:	4770      	bx	lr
2000064c:	40080000 	.word	0x40080000

20000650 <update_telemetry>:
20000650:	b480      	push	{r7}
20000652:	b083      	sub	sp, #12
20000654:	af00      	add	r7, sp, #0
20000656:	4b45      	ldr	r3, [pc, #276]	; (2000076c <update_telemetry+0x11c>)
20000658:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2000065a:	f003 0302 	and.w	r3, r3, #2
2000065e:	2b00      	cmp	r3, #0
20000660:	d06c      	beq.n	2000073c <update_telemetry+0xec>
20000662:	4b42      	ldr	r3, [pc, #264]	; (2000076c <update_telemetry+0x11c>)
20000664:	2200      	movs	r2, #0
20000666:	655a      	str	r2, [r3, #84]	; 0x54
20000668:	4a41      	ldr	r2, [pc, #260]	; (20000770 <update_telemetry+0x120>)
2000066a:	4b41      	ldr	r3, [pc, #260]	; (20000770 <update_telemetry+0x120>)
2000066c:	681b      	ldr	r3, [r3, #0]
2000066e:	f043 0301 	orr.w	r3, r3, #1
20000672:	6013      	str	r3, [r2, #0]
20000674:	4a3f      	ldr	r2, [pc, #252]	; (20000774 <update_telemetry+0x124>)
20000676:	4b3f      	ldr	r3, [pc, #252]	; (20000774 <update_telemetry+0x124>)
20000678:	699b      	ldr	r3, [r3, #24]
2000067a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000067e:	6193      	str	r3, [r2, #24]
20000680:	4b3a      	ldr	r3, [pc, #232]	; (2000076c <update_telemetry+0x11c>)
20000682:	695b      	ldr	r3, [r3, #20]
20000684:	b29b      	uxth	r3, r3
20000686:	f503 7396 	add.w	r3, r3, #300	; 0x12c
2000068a:	80fb      	strh	r3, [r7, #6]
2000068c:	88fb      	ldrh	r3, [r7, #6]
2000068e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
20000692:	d205      	bcs.n	200006a0 <update_telemetry+0x50>
20000694:	4a35      	ldr	r2, [pc, #212]	; (2000076c <update_telemetry+0x11c>)
20000696:	4b35      	ldr	r3, [pc, #212]	; (2000076c <update_telemetry+0x11c>)
20000698:	681b      	ldr	r3, [r3, #0]
2000069a:	3301      	adds	r3, #1
2000069c:	6013      	str	r3, [r2, #0]
2000069e:	e008      	b.n	200006b2 <update_telemetry+0x62>
200006a0:	88fb      	ldrh	r3, [r7, #6]
200006a2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
200006a6:	d904      	bls.n	200006b2 <update_telemetry+0x62>
200006a8:	4a30      	ldr	r2, [pc, #192]	; (2000076c <update_telemetry+0x11c>)
200006aa:	4b30      	ldr	r3, [pc, #192]	; (2000076c <update_telemetry+0x11c>)
200006ac:	681b      	ldr	r3, [r3, #0]
200006ae:	3b01      	subs	r3, #1
200006b0:	6013      	str	r3, [r2, #0]
200006b2:	4b31      	ldr	r3, [pc, #196]	; (20000778 <update_telemetry+0x128>)
200006b4:	681b      	ldr	r3, [r3, #0]
200006b6:	b21a      	sxth	r2, r3
200006b8:	4b30      	ldr	r3, [pc, #192]	; (2000077c <update_telemetry+0x12c>)
200006ba:	801a      	strh	r2, [r3, #0]
200006bc:	4b30      	ldr	r3, [pc, #192]	; (20000780 <update_telemetry+0x130>)
200006be:	681b      	ldr	r3, [r3, #0]
200006c0:	b21a      	sxth	r2, r3
200006c2:	4b2e      	ldr	r3, [pc, #184]	; (2000077c <update_telemetry+0x12c>)
200006c4:	805a      	strh	r2, [r3, #2]
200006c6:	4b2f      	ldr	r3, [pc, #188]	; (20000784 <update_telemetry+0x134>)
200006c8:	681b      	ldr	r3, [r3, #0]
200006ca:	129b      	asrs	r3, r3, #10
200006cc:	b29a      	uxth	r2, r3
200006ce:	4b2b      	ldr	r3, [pc, #172]	; (2000077c <update_telemetry+0x12c>)
200006d0:	809a      	strh	r2, [r3, #4]
200006d2:	4b2a      	ldr	r3, [pc, #168]	; (2000077c <update_telemetry+0x12c>)
200006d4:	2200      	movs	r2, #0
200006d6:	80da      	strh	r2, [r3, #6]
200006d8:	4b28      	ldr	r3, [pc, #160]	; (2000077c <update_telemetry+0x12c>)
200006da:	603b      	str	r3, [r7, #0]
200006dc:	492a      	ldr	r1, [pc, #168]	; (20000788 <update_telemetry+0x138>)
200006de:	683b      	ldr	r3, [r7, #0]
200006e0:	1c5a      	adds	r2, r3, #1
200006e2:	603a      	str	r2, [r7, #0]
200006e4:	781b      	ldrb	r3, [r3, #0]
200006e6:	600b      	str	r3, [r1, #0]
200006e8:	4927      	ldr	r1, [pc, #156]	; (20000788 <update_telemetry+0x138>)
200006ea:	683b      	ldr	r3, [r7, #0]
200006ec:	1c5a      	adds	r2, r3, #1
200006ee:	603a      	str	r2, [r7, #0]
200006f0:	781b      	ldrb	r3, [r3, #0]
200006f2:	600b      	str	r3, [r1, #0]
200006f4:	4924      	ldr	r1, [pc, #144]	; (20000788 <update_telemetry+0x138>)
200006f6:	683b      	ldr	r3, [r7, #0]
200006f8:	1c5a      	adds	r2, r3, #1
200006fa:	603a      	str	r2, [r7, #0]
200006fc:	781b      	ldrb	r3, [r3, #0]
200006fe:	600b      	str	r3, [r1, #0]
20000700:	4921      	ldr	r1, [pc, #132]	; (20000788 <update_telemetry+0x138>)
20000702:	683b      	ldr	r3, [r7, #0]
20000704:	1c5a      	adds	r2, r3, #1
20000706:	603a      	str	r2, [r7, #0]
20000708:	781b      	ldrb	r3, [r3, #0]
2000070a:	600b      	str	r3, [r1, #0]
2000070c:	491e      	ldr	r1, [pc, #120]	; (20000788 <update_telemetry+0x138>)
2000070e:	683b      	ldr	r3, [r7, #0]
20000710:	1c5a      	adds	r2, r3, #1
20000712:	603a      	str	r2, [r7, #0]
20000714:	781b      	ldrb	r3, [r3, #0]
20000716:	600b      	str	r3, [r1, #0]
20000718:	491b      	ldr	r1, [pc, #108]	; (20000788 <update_telemetry+0x138>)
2000071a:	683b      	ldr	r3, [r7, #0]
2000071c:	1c5a      	adds	r2, r3, #1
2000071e:	603a      	str	r2, [r7, #0]
20000720:	781b      	ldrb	r3, [r3, #0]
20000722:	600b      	str	r3, [r1, #0]
20000724:	4918      	ldr	r1, [pc, #96]	; (20000788 <update_telemetry+0x138>)
20000726:	683b      	ldr	r3, [r7, #0]
20000728:	1c5a      	adds	r2, r3, #1
2000072a:	603a      	str	r2, [r7, #0]
2000072c:	781b      	ldrb	r3, [r3, #0]
2000072e:	600b      	str	r3, [r1, #0]
20000730:	4915      	ldr	r1, [pc, #84]	; (20000788 <update_telemetry+0x138>)
20000732:	683b      	ldr	r3, [r7, #0]
20000734:	1c5a      	adds	r2, r3, #1
20000736:	603a      	str	r2, [r7, #0]
20000738:	781b      	ldrb	r3, [r3, #0]
2000073a:	600b      	str	r3, [r1, #0]
2000073c:	4b12      	ldr	r3, [pc, #72]	; (20000788 <update_telemetry+0x138>)
2000073e:	699b      	ldr	r3, [r3, #24]
20000740:	f003 0308 	and.w	r3, r3, #8
20000744:	2b00      	cmp	r3, #0
20000746:	d10b      	bne.n	20000760 <update_telemetry+0x110>
20000748:	4a09      	ldr	r2, [pc, #36]	; (20000770 <update_telemetry+0x120>)
2000074a:	4b09      	ldr	r3, [pc, #36]	; (20000770 <update_telemetry+0x120>)
2000074c:	681b      	ldr	r3, [r3, #0]
2000074e:	f023 0301 	bic.w	r3, r3, #1
20000752:	6013      	str	r3, [r2, #0]
20000754:	4a07      	ldr	r2, [pc, #28]	; (20000774 <update_telemetry+0x124>)
20000756:	4b07      	ldr	r3, [pc, #28]	; (20000774 <update_telemetry+0x124>)
20000758:	699b      	ldr	r3, [r3, #24]
2000075a:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
2000075e:	6193      	str	r3, [r2, #24]
20000760:	bf00      	nop
20000762:	370c      	adds	r7, #12
20000764:	46bd      	mov	sp, r7
20000766:	bc80      	pop	{r7}
20000768:	4770      	bx	lr
2000076a:	bf00      	nop
2000076c:	40070000 	.word	0x40070000
20000770:	400a8000 	.word	0x400a8000
20000774:	400b0000 	.word	0x400b0000
20000778:	20002a38 	.word	0x20002a38
2000077c:	20002a3c 	.word	0x20002a3c
20000780:	20002a14 	.word	0x20002a14
20000784:	20002a34 	.word	0x20002a34
20000788:	40030000 	.word	0x40030000

2000078c <update_refposition>:
2000078c:	b480      	push	{r7}
2000078e:	b087      	sub	sp, #28
20000790:	af00      	add	r7, sp, #0
20000792:	4b2e      	ldr	r3, [pc, #184]	; (2000084c <update_refposition+0xc0>)
20000794:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000796:	f003 0310 	and.w	r3, r3, #16
2000079a:	2b00      	cmp	r3, #0
2000079c:	d040      	beq.n	20000820 <update_refposition+0x94>
2000079e:	2300      	movs	r3, #0
200007a0:	617b      	str	r3, [r7, #20]
200007a2:	e00c      	b.n	200007be <update_refposition+0x32>
200007a4:	4b29      	ldr	r3, [pc, #164]	; (2000084c <update_refposition+0xc0>)
200007a6:	681b      	ldr	r3, [r3, #0]
200007a8:	b2d9      	uxtb	r1, r3
200007aa:	463a      	mov	r2, r7
200007ac:	697b      	ldr	r3, [r7, #20]
200007ae:	4413      	add	r3, r2
200007b0:	460a      	mov	r2, r1
200007b2:	701a      	strb	r2, [r3, #0]
200007b4:	697b      	ldr	r3, [r7, #20]
200007b6:	3301      	adds	r3, #1
200007b8:	f003 030f 	and.w	r3, r3, #15
200007bc:	617b      	str	r3, [r7, #20]
200007be:	4b23      	ldr	r3, [pc, #140]	; (2000084c <update_refposition+0xc0>)
200007c0:	699b      	ldr	r3, [r3, #24]
200007c2:	f003 0310 	and.w	r3, r3, #16
200007c6:	2b00      	cmp	r3, #0
200007c8:	d0ec      	beq.n	200007a4 <update_refposition+0x18>
200007ca:	783b      	ldrb	r3, [r7, #0]
200007cc:	b29a      	uxth	r2, r3
200007ce:	787b      	ldrb	r3, [r7, #1]
200007d0:	b29b      	uxth	r3, r3
200007d2:	021b      	lsls	r3, r3, #8
200007d4:	b29b      	uxth	r3, r3
200007d6:	4413      	add	r3, r2
200007d8:	b29b      	uxth	r3, r3
200007da:	827b      	strh	r3, [r7, #18]
200007dc:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
200007e0:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
200007e4:	db03      	blt.n	200007ee <update_refposition+0x62>
200007e6:	f240 73ff 	movw	r3, #2047	; 0x7ff
200007ea:	827b      	strh	r3, [r7, #18]
200007ec:	bf00      	nop
200007ee:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
200007f2:	f513 6f00 	cmn.w	r3, #2048	; 0x800
200007f6:	da03      	bge.n	20000800 <update_refposition+0x74>
200007f8:	f44f 4378 	mov.w	r3, #63488	; 0xf800
200007fc:	827b      	strh	r3, [r7, #18]
200007fe:	bf00      	nop
20000800:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
20000804:	4a12      	ldr	r2, [pc, #72]	; (20000850 <update_refposition+0xc4>)
20000806:	6013      	str	r3, [r2, #0]
20000808:	f9b7 2012 	ldrsh.w	r2, [r7, #18]
2000080c:	4613      	mov	r3, r2
2000080e:	00db      	lsls	r3, r3, #3
20000810:	1a9b      	subs	r3, r3, r2
20000812:	00db      	lsls	r3, r3, #3
20000814:	441a      	add	r2, r3
20000816:	4b0f      	ldr	r3, [pc, #60]	; (20000854 <update_refposition+0xc8>)
20000818:	681b      	ldr	r3, [r3, #0]
2000081a:	4413      	add	r3, r2
2000081c:	4a0e      	ldr	r2, [pc, #56]	; (20000858 <update_refposition+0xcc>)
2000081e:	6013      	str	r3, [r2, #0]
20000820:	4b0a      	ldr	r3, [pc, #40]	; (2000084c <update_refposition+0xc0>)
20000822:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000824:	f003 0340 	and.w	r3, r3, #64	; 0x40
20000828:	2b00      	cmp	r3, #0
2000082a:	d009      	beq.n	20000840 <update_refposition+0xb4>
2000082c:	e002      	b.n	20000834 <update_refposition+0xa8>
2000082e:	4b07      	ldr	r3, [pc, #28]	; (2000084c <update_refposition+0xc0>)
20000830:	681b      	ldr	r3, [r3, #0]
20000832:	747b      	strb	r3, [r7, #17]
20000834:	4b05      	ldr	r3, [pc, #20]	; (2000084c <update_refposition+0xc0>)
20000836:	699b      	ldr	r3, [r3, #24]
20000838:	f003 0310 	and.w	r3, r3, #16
2000083c:	2b00      	cmp	r3, #0
2000083e:	d0f6      	beq.n	2000082e <update_refposition+0xa2>
20000840:	bf00      	nop
20000842:	371c      	adds	r7, #28
20000844:	46bd      	mov	sp, r7
20000846:	bc80      	pop	{r7}
20000848:	4770      	bx	lr
2000084a:	bf00      	nop
2000084c:	40030000 	.word	0x40030000
20000850:	20002a38 	.word	0x20002a38
20000854:	20002a2c 	.word	0x20002a2c
20000858:	20002a00 	.word	0x20002a00

2000085c <mycos>:
2000085c:	4b02      	ldr	r3, [pc, #8]	; (20000868 <mycos+0xc>)
2000085e:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000862:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000866:	4770      	bx	lr
20000868:	200019a0 	.word	0x200019a0

2000086c <mysin>:
2000086c:	4b03      	ldr	r3, [pc, #12]	; (2000087c <mysin+0x10>)
2000086e:	f500 7040 	add.w	r0, r0, #768	; 0x300
20000872:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000876:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
2000087a:	4770      	bx	lr
2000087c:	200019a0 	.word	0x200019a0

20000880 <reg_init>:
20000880:	2300      	movs	r3, #0
20000882:	e880 000e 	stmia.w	r0, {r1, r2, r3}
20000886:	60c3      	str	r3, [r0, #12]
20000888:	4770      	bx	lr
2000088a:	bf00      	nop

2000088c <reg_update>:
2000088c:	6803      	ldr	r3, [r0, #0]
2000088e:	b410      	push	{r4}
20000890:	fb03 f301 	mul.w	r3, r3, r1
20000894:	6884      	ldr	r4, [r0, #8]
20000896:	b11a      	cbz	r2, 200008a0 <reg_update+0x14>
20000898:	2c00      	cmp	r4, #0
2000089a:	dd09      	ble.n	200008b0 <reg_update+0x24>
2000089c:	ea03 73e3 	and.w	r3, r3, r3, asr #31
200008a0:	6842      	ldr	r2, [r0, #4]
200008a2:	4423      	add	r3, r4
200008a4:	fb02 3101 	mla	r1, r2, r1, r3
200008a8:	6083      	str	r3, [r0, #8]
200008aa:	60c1      	str	r1, [r0, #12]
200008ac:	bc10      	pop	{r4}
200008ae:	4770      	bx	lr
200008b0:	bf18      	it	ne
200008b2:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
200008b6:	e7f3      	b.n	200008a0 <reg_update+0x14>

200008b8 <dot3>:
200008b8:	b430      	push	{r4, r5}
200008ba:	684b      	ldr	r3, [r1, #4]
200008bc:	6844      	ldr	r4, [r0, #4]
200008be:	6802      	ldr	r2, [r0, #0]
200008c0:	fb03 f304 	mul.w	r3, r3, r4
200008c4:	680d      	ldr	r5, [r1, #0]
200008c6:	6884      	ldr	r4, [r0, #8]
200008c8:	fb05 3302 	mla	r3, r5, r2, r3
200008cc:	6888      	ldr	r0, [r1, #8]
200008ce:	fb00 3004 	mla	r0, r0, r4, r3
200008d2:	bc30      	pop	{r4, r5}
200008d4:	4770      	bx	lr
200008d6:	bf00      	nop

200008d8 <abc_to_dq>:
200008d8:	b4f0      	push	{r4, r5, r6, r7}
200008da:	4c1d      	ldr	r4, [pc, #116]	; (20000950 <abc_to_dq+0x78>)
200008dc:	6803      	ldr	r3, [r0, #0]
200008de:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
200008e2:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
200008e6:	fb03 f306 	mul.w	r3, r3, r6
200008ea:	f3c5 0509 	ubfx	r5, r5, #0, #10
200008ee:	6847      	ldr	r7, [r0, #4]
200008f0:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200008f4:	f202 1655 	addw	r6, r2, #341	; 0x155
200008f8:	fb07 3305 	mla	r3, r7, r5, r3
200008fc:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000900:	6887      	ldr	r7, [r0, #8]
20000902:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000906:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
2000090a:	fb07 3305 	mla	r3, r7, r5, r3
2000090e:	129b      	asrs	r3, r3, #10
20000910:	600b      	str	r3, [r1, #0]
20000912:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000916:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
2000091a:	6843      	ldr	r3, [r0, #4]
2000091c:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000920:	fb03 f306 	mul.w	r3, r3, r6
20000924:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000928:	6806      	ldr	r6, [r0, #0]
2000092a:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
2000092e:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000932:	fb06 3305 	mla	r3, r6, r5, r3
20000936:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000093a:	6880      	ldr	r0, [r0, #8]
2000093c:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
20000940:	bcf0      	pop	{r4, r5, r6, r7}
20000942:	fb00 3302 	mla	r3, r0, r2, r3
20000946:	425b      	negs	r3, r3
20000948:	129b      	asrs	r3, r3, #10
2000094a:	604b      	str	r3, [r1, #4]
2000094c:	4770      	bx	lr
2000094e:	bf00      	nop
20000950:	200019a0 	.word	0x200019a0

20000954 <dq_to_abc>:
20000954:	4b1d      	ldr	r3, [pc, #116]	; (200009cc <dq_to_abc+0x78>)
20000956:	b4f0      	push	{r4, r5, r6, r7}
20000958:	680e      	ldr	r6, [r1, #0]
2000095a:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
2000095e:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000962:	fb04 f406 	mul.w	r4, r4, r6
20000966:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000096a:	684f      	ldr	r7, [r1, #4]
2000096c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000970:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000974:	fb07 4415 	mls	r4, r7, r5, r4
20000978:	1524      	asrs	r4, r4, #20
2000097a:	6004      	str	r4, [r0, #0]
2000097c:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000980:	680c      	ldr	r4, [r1, #0]
20000982:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
20000986:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
2000098a:	fb04 f406 	mul.w	r4, r4, r6
2000098e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000992:	684f      	ldr	r7, [r1, #4]
20000994:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000998:	f202 1655 	addw	r6, r2, #341	; 0x155
2000099c:	fb07 4415 	mls	r4, r7, r5, r4
200009a0:	1524      	asrs	r4, r4, #20
200009a2:	6044      	str	r4, [r0, #4]
200009a4:	f3c6 0509 	ubfx	r5, r6, #0, #10
200009a8:	680c      	ldr	r4, [r1, #0]
200009aa:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
200009ae:	f202 4255 	addw	r2, r2, #1109	; 0x455
200009b2:	fb04 f405 	mul.w	r4, r4, r5
200009b6:	f3c2 0209 	ubfx	r2, r2, #0, #10
200009ba:	6849      	ldr	r1, [r1, #4]
200009bc:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
200009c0:	fb01 4312 	mls	r3, r1, r2, r4
200009c4:	bcf0      	pop	{r4, r5, r6, r7}
200009c6:	151b      	asrs	r3, r3, #20
200009c8:	6083      	str	r3, [r0, #8]
200009ca:	4770      	bx	lr
200009cc:	200019a0 	.word	0x200019a0

200009d0 <cord_atan>:
200009d0:	b5f0      	push	{r4, r5, r6, r7, lr}
200009d2:	b091      	sub	sp, #68	; 0x44
200009d4:	46ee      	mov	lr, sp
200009d6:	4684      	mov	ip, r0
200009d8:	4e56      	ldr	r6, [pc, #344]	; (20000b34 <cord_atan+0x164>)
200009da:	460d      	mov	r5, r1
200009dc:	4614      	mov	r4, r2
200009de:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200009e0:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200009e4:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200009e8:	af08      	add	r7, sp, #32
200009ea:	3610      	adds	r6, #16
200009ec:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200009f0:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200009f2:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200009f4:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200009f8:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200009fc:	f8dc 6000 	ldr.w	r6, [ip]
20000a00:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000a04:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000a08:	2b00      	cmp	r3, #0
20000a0a:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000a0e:	9900      	ldr	r1, [sp, #0]
20000a10:	dd56      	ble.n	20000ac0 <cord_atan+0xf0>
20000a12:	18d0      	adds	r0, r2, r3
20000a14:	1a9b      	subs	r3, r3, r2
20000a16:	2b00      	cmp	r3, #0
20000a18:	d07a      	beq.n	20000b10 <cord_atan+0x140>
20000a1a:	9f01      	ldr	r7, [sp, #4]
20000a1c:	dd54      	ble.n	20000ac8 <cord_atan+0xf8>
20000a1e:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000a22:	4439      	add	r1, r7
20000a24:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000a28:	2b00      	cmp	r3, #0
20000a2a:	d073      	beq.n	20000b14 <cord_atan+0x144>
20000a2c:	9f02      	ldr	r7, [sp, #8]
20000a2e:	dd51      	ble.n	20000ad4 <cord_atan+0x104>
20000a30:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000a34:	4439      	add	r1, r7
20000a36:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000a3a:	2b00      	cmp	r3, #0
20000a3c:	d06d      	beq.n	20000b1a <cord_atan+0x14a>
20000a3e:	9f03      	ldr	r7, [sp, #12]
20000a40:	dd4e      	ble.n	20000ae0 <cord_atan+0x110>
20000a42:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000a46:	4439      	add	r1, r7
20000a48:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000a4c:	2b00      	cmp	r3, #0
20000a4e:	d066      	beq.n	20000b1e <cord_atan+0x14e>
20000a50:	9f04      	ldr	r7, [sp, #16]
20000a52:	dd4b      	ble.n	20000aec <cord_atan+0x11c>
20000a54:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000a58:	4439      	add	r1, r7
20000a5a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000a5e:	2b00      	cmp	r3, #0
20000a60:	d060      	beq.n	20000b24 <cord_atan+0x154>
20000a62:	9f05      	ldr	r7, [sp, #20]
20000a64:	dd48      	ble.n	20000af8 <cord_atan+0x128>
20000a66:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000a6a:	4439      	add	r1, r7
20000a6c:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000a70:	2b00      	cmp	r3, #0
20000a72:	d059      	beq.n	20000b28 <cord_atan+0x158>
20000a74:	9f06      	ldr	r7, [sp, #24]
20000a76:	dd45      	ble.n	20000b04 <cord_atan+0x134>
20000a78:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000a7c:	4439      	add	r1, r7
20000a7e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000a82:	2b00      	cmp	r3, #0
20000a84:	d053      	beq.n	20000b2e <cord_atan+0x15e>
20000a86:	9a07      	ldr	r2, [sp, #28]
20000a88:	bfc7      	ittee	gt
20000a8a:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000a8e:	1889      	addgt	r1, r1, r2
20000a90:	1a89      	suble	r1, r1, r2
20000a92:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000a96:	2207      	movs	r2, #7
20000a98:	ab10      	add	r3, sp, #64	; 0x40
20000a9a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000a9e:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000aa2:	2e00      	cmp	r6, #0
20000aa4:	fb03 f300 	mul.w	r3, r3, r0
20000aa8:	bfb8      	it	lt
20000aaa:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000aae:	2900      	cmp	r1, #0
20000ab0:	bfb8      	it	lt
20000ab2:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000ab6:	129b      	asrs	r3, r3, #10
20000ab8:	6029      	str	r1, [r5, #0]
20000aba:	6023      	str	r3, [r4, #0]
20000abc:	b011      	add	sp, #68	; 0x44
20000abe:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000ac0:	1ad0      	subs	r0, r2, r3
20000ac2:	4249      	negs	r1, r1
20000ac4:	4413      	add	r3, r2
20000ac6:	e7a6      	b.n	20000a16 <cord_atan+0x46>
20000ac8:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000acc:	1bc9      	subs	r1, r1, r7
20000ace:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000ad2:	e7a9      	b.n	20000a28 <cord_atan+0x58>
20000ad4:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000ad8:	1bc9      	subs	r1, r1, r7
20000ada:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000ade:	e7ac      	b.n	20000a3a <cord_atan+0x6a>
20000ae0:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000ae4:	1bc9      	subs	r1, r1, r7
20000ae6:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000aea:	e7af      	b.n	20000a4c <cord_atan+0x7c>
20000aec:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000af0:	1bc9      	subs	r1, r1, r7
20000af2:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000af6:	e7b2      	b.n	20000a5e <cord_atan+0x8e>
20000af8:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000afc:	1bc9      	subs	r1, r1, r7
20000afe:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000b02:	e7b5      	b.n	20000a70 <cord_atan+0xa0>
20000b04:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000b08:	1bc9      	subs	r1, r1, r7
20000b0a:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000b0e:	e7b8      	b.n	20000a82 <cord_atan+0xb2>
20000b10:	461a      	mov	r2, r3
20000b12:	e7c1      	b.n	20000a98 <cord_atan+0xc8>
20000b14:	4610      	mov	r0, r2
20000b16:	2201      	movs	r2, #1
20000b18:	e7be      	b.n	20000a98 <cord_atan+0xc8>
20000b1a:	2202      	movs	r2, #2
20000b1c:	e7bc      	b.n	20000a98 <cord_atan+0xc8>
20000b1e:	4610      	mov	r0, r2
20000b20:	2203      	movs	r2, #3
20000b22:	e7b9      	b.n	20000a98 <cord_atan+0xc8>
20000b24:	2204      	movs	r2, #4
20000b26:	e7b7      	b.n	20000a98 <cord_atan+0xc8>
20000b28:	4610      	mov	r0, r2
20000b2a:	2205      	movs	r2, #5
20000b2c:	e7b4      	b.n	20000a98 <cord_atan+0xc8>
20000b2e:	2206      	movs	r2, #6
20000b30:	e7b2      	b.n	20000a98 <cord_atan+0xc8>
20000b32:	bf00      	nop
20000b34:	20001960 	.word	0x20001960

20000b38 <sinpwm>:
20000b38:	b5f0      	push	{r4, r5, r6, r7, lr}
20000b3a:	b091      	sub	sp, #68	; 0x44
20000b3c:	46ee      	mov	lr, sp
20000b3e:	468c      	mov	ip, r1
20000b40:	4e6e      	ldr	r6, [pc, #440]	; (20000cfc <sinpwm+0x1c4>)
20000b42:	4604      	mov	r4, r0
20000b44:	4615      	mov	r5, r2
20000b46:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000b48:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000b4c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000b50:	af08      	add	r7, sp, #32
20000b52:	3610      	adds	r6, #16
20000b54:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000b58:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000b5a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000b5c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000b60:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000b64:	f8dc 6000 	ldr.w	r6, [ip]
20000b68:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000b6c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000b70:	2b00      	cmp	r3, #0
20000b72:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000b76:	9900      	ldr	r1, [sp, #0]
20000b78:	f340 8087 	ble.w	20000c8a <sinpwm+0x152>
20000b7c:	18d0      	adds	r0, r2, r3
20000b7e:	1a9b      	subs	r3, r3, r2
20000b80:	2b00      	cmp	r3, #0
20000b82:	f000 80aa 	beq.w	20000cda <sinpwm+0x1a2>
20000b86:	9f01      	ldr	r7, [sp, #4]
20000b88:	f340 8083 	ble.w	20000c92 <sinpwm+0x15a>
20000b8c:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000b90:	4439      	add	r1, r7
20000b92:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000b96:	2b00      	cmp	r3, #0
20000b98:	f000 80a1 	beq.w	20000cde <sinpwm+0x1a6>
20000b9c:	9f02      	ldr	r7, [sp, #8]
20000b9e:	dd7e      	ble.n	20000c9e <sinpwm+0x166>
20000ba0:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000ba4:	4439      	add	r1, r7
20000ba6:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000baa:	2b00      	cmp	r3, #0
20000bac:	f000 809a 	beq.w	20000ce4 <sinpwm+0x1ac>
20000bb0:	9f03      	ldr	r7, [sp, #12]
20000bb2:	dd7a      	ble.n	20000caa <sinpwm+0x172>
20000bb4:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000bb8:	4439      	add	r1, r7
20000bba:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000bbe:	2b00      	cmp	r3, #0
20000bc0:	f000 8092 	beq.w	20000ce8 <sinpwm+0x1b0>
20000bc4:	9f04      	ldr	r7, [sp, #16]
20000bc6:	dd76      	ble.n	20000cb6 <sinpwm+0x17e>
20000bc8:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000bcc:	4439      	add	r1, r7
20000bce:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000bd2:	2b00      	cmp	r3, #0
20000bd4:	f000 808b 	beq.w	20000cee <sinpwm+0x1b6>
20000bd8:	9f05      	ldr	r7, [sp, #20]
20000bda:	dd72      	ble.n	20000cc2 <sinpwm+0x18a>
20000bdc:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000be0:	4439      	add	r1, r7
20000be2:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000be6:	2b00      	cmp	r3, #0
20000be8:	f000 8083 	beq.w	20000cf2 <sinpwm+0x1ba>
20000bec:	9f06      	ldr	r7, [sp, #24]
20000bee:	dd6e      	ble.n	20000cce <sinpwm+0x196>
20000bf0:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000bf4:	4439      	add	r1, r7
20000bf6:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000bfa:	2b00      	cmp	r3, #0
20000bfc:	d07c      	beq.n	20000cf8 <sinpwm+0x1c0>
20000bfe:	9a07      	ldr	r2, [sp, #28]
20000c00:	bfc7      	ittee	gt
20000c02:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000c06:	1889      	addgt	r1, r1, r2
20000c08:	1a89      	suble	r1, r1, r2
20000c0a:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000c0e:	2207      	movs	r2, #7
20000c10:	ab10      	add	r3, sp, #64	; 0x40
20000c12:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000c16:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000c1a:	2e00      	cmp	r6, #0
20000c1c:	fb03 f300 	mul.w	r3, r3, r0
20000c20:	bfb8      	it	lt
20000c22:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000c26:	2900      	cmp	r1, #0
20000c28:	bfb8      	it	lt
20000c2a:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000c2e:	151b      	asrs	r3, r3, #20
20000c30:	440d      	add	r5, r1
20000c32:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000c36:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c3a:	dd22      	ble.n	20000c82 <sinpwm+0x14a>
20000c3c:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 20000d04 <sinpwm+0x1cc>
20000c40:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
20000c44:	2001      	movs	r0, #1
20000c46:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
20000c4a:	4f2d      	ldr	r7, [pc, #180]	; (20000d00 <sinpwm+0x1c8>)
20000c4c:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
20000c50:	3602      	adds	r6, #2
20000c52:	f3ce 0e09 	ubfx	lr, lr, #0, #10
20000c56:	f3c6 0609 	ubfx	r6, r6, #0, #10
20000c5a:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
20000c5e:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
20000c62:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
20000c66:	fb06 f50c 	mul.w	r5, r6, ip
20000c6a:	fb01 f10c 	mul.w	r1, r1, ip
20000c6e:	fb02 f303 	mul.w	r3, r2, r3
20000c72:	12ad      	asrs	r5, r5, #10
20000c74:	128a      	asrs	r2, r1, #10
20000c76:	129b      	asrs	r3, r3, #10
20000c78:	60a5      	str	r5, [r4, #8]
20000c7a:	6062      	str	r2, [r4, #4]
20000c7c:	6023      	str	r3, [r4, #0]
20000c7e:	b011      	add	sp, #68	; 0x44
20000c80:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000c82:	f1c3 0c00 	rsb	ip, r3, #0
20000c86:	2000      	movs	r0, #0
20000c88:	e7dd      	b.n	20000c46 <sinpwm+0x10e>
20000c8a:	1ad0      	subs	r0, r2, r3
20000c8c:	4249      	negs	r1, r1
20000c8e:	4413      	add	r3, r2
20000c90:	e776      	b.n	20000b80 <sinpwm+0x48>
20000c92:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000c96:	1bc9      	subs	r1, r1, r7
20000c98:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000c9c:	e77b      	b.n	20000b96 <sinpwm+0x5e>
20000c9e:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000ca2:	1bc9      	subs	r1, r1, r7
20000ca4:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000ca8:	e77f      	b.n	20000baa <sinpwm+0x72>
20000caa:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000cae:	1bc9      	subs	r1, r1, r7
20000cb0:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000cb4:	e783      	b.n	20000bbe <sinpwm+0x86>
20000cb6:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000cba:	1bc9      	subs	r1, r1, r7
20000cbc:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000cc0:	e787      	b.n	20000bd2 <sinpwm+0x9a>
20000cc2:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000cc6:	1bc9      	subs	r1, r1, r7
20000cc8:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000ccc:	e78b      	b.n	20000be6 <sinpwm+0xae>
20000cce:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000cd2:	1bc9      	subs	r1, r1, r7
20000cd4:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000cd8:	e78f      	b.n	20000bfa <sinpwm+0xc2>
20000cda:	461a      	mov	r2, r3
20000cdc:	e798      	b.n	20000c10 <sinpwm+0xd8>
20000cde:	4610      	mov	r0, r2
20000ce0:	2201      	movs	r2, #1
20000ce2:	e795      	b.n	20000c10 <sinpwm+0xd8>
20000ce4:	2202      	movs	r2, #2
20000ce6:	e793      	b.n	20000c10 <sinpwm+0xd8>
20000ce8:	4610      	mov	r0, r2
20000cea:	2203      	movs	r2, #3
20000cec:	e790      	b.n	20000c10 <sinpwm+0xd8>
20000cee:	2204      	movs	r2, #4
20000cf0:	e78e      	b.n	20000c10 <sinpwm+0xd8>
20000cf2:	4610      	mov	r0, r2
20000cf4:	2205      	movs	r2, #5
20000cf6:	e78b      	b.n	20000c10 <sinpwm+0xd8>
20000cf8:	2206      	movs	r2, #6
20000cfa:	e789      	b.n	20000c10 <sinpwm+0xd8>
20000cfc:	20001960 	.word	0x20001960
20000d00:	200019a0 	.word	0x200019a0
20000d04:	fffffe0c 	.word	0xfffffe0c

20000d08 <svpwm>:
20000d08:	b5f0      	push	{r4, r5, r6, r7, lr}
20000d0a:	b091      	sub	sp, #68	; 0x44
20000d0c:	46ee      	mov	lr, sp
20000d0e:	468c      	mov	ip, r1
20000d10:	4eb8      	ldr	r6, [pc, #736]	; (20000ff4 <svpwm+0x2ec>)
20000d12:	4604      	mov	r4, r0
20000d14:	4615      	mov	r5, r2
20000d16:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000d18:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000d1c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000d20:	af08      	add	r7, sp, #32
20000d22:	3610      	adds	r6, #16
20000d24:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000d28:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000d2a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000d2c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000d30:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000d34:	f8dc 6000 	ldr.w	r6, [ip]
20000d38:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000d3c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000d40:	2b00      	cmp	r3, #0
20000d42:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000d46:	9900      	ldr	r1, [sp, #0]
20000d48:	dd6f      	ble.n	20000e2a <svpwm+0x122>
20000d4a:	18d0      	adds	r0, r2, r3
20000d4c:	1a9b      	subs	r3, r3, r2
20000d4e:	2b00      	cmp	r3, #0
20000d50:	f000 813f 	beq.w	20000fd2 <svpwm+0x2ca>
20000d54:	9f01      	ldr	r7, [sp, #4]
20000d56:	dd6c      	ble.n	20000e32 <svpwm+0x12a>
20000d58:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000d5c:	4439      	add	r1, r7
20000d5e:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000d62:	2b00      	cmp	r3, #0
20000d64:	f000 8137 	beq.w	20000fd6 <svpwm+0x2ce>
20000d68:	9f02      	ldr	r7, [sp, #8]
20000d6a:	dd68      	ble.n	20000e3e <svpwm+0x136>
20000d6c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000d70:	4439      	add	r1, r7
20000d72:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000d76:	2b00      	cmp	r3, #0
20000d78:	f000 8130 	beq.w	20000fdc <svpwm+0x2d4>
20000d7c:	9f03      	ldr	r7, [sp, #12]
20000d7e:	dd64      	ble.n	20000e4a <svpwm+0x142>
20000d80:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000d84:	4439      	add	r1, r7
20000d86:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000d8a:	2b00      	cmp	r3, #0
20000d8c:	f000 8128 	beq.w	20000fe0 <svpwm+0x2d8>
20000d90:	9f04      	ldr	r7, [sp, #16]
20000d92:	dd60      	ble.n	20000e56 <svpwm+0x14e>
20000d94:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000d98:	4439      	add	r1, r7
20000d9a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000d9e:	2b00      	cmp	r3, #0
20000da0:	f000 8121 	beq.w	20000fe6 <svpwm+0x2de>
20000da4:	9f05      	ldr	r7, [sp, #20]
20000da6:	dd5c      	ble.n	20000e62 <svpwm+0x15a>
20000da8:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000dac:	4439      	add	r1, r7
20000dae:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000db2:	2b00      	cmp	r3, #0
20000db4:	f000 8119 	beq.w	20000fea <svpwm+0x2e2>
20000db8:	9f06      	ldr	r7, [sp, #24]
20000dba:	dd58      	ble.n	20000e6e <svpwm+0x166>
20000dbc:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000dc0:	4439      	add	r1, r7
20000dc2:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000dc6:	2b00      	cmp	r3, #0
20000dc8:	f000 8112 	beq.w	20000ff0 <svpwm+0x2e8>
20000dcc:	9a07      	ldr	r2, [sp, #28]
20000dce:	bfc7      	ittee	gt
20000dd0:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000dd4:	1889      	addgt	r1, r1, r2
20000dd6:	1a89      	suble	r1, r1, r2
20000dd8:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000ddc:	2207      	movs	r2, #7
20000dde:	ab10      	add	r3, sp, #64	; 0x40
20000de0:	2e00      	cmp	r6, #0
20000de2:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000de6:	bfb8      	it	lt
20000de8:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000dec:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000df0:	2900      	cmp	r1, #0
20000df2:	fb03 f300 	mul.w	r3, r3, r0
20000df6:	bfb8      	it	lt
20000df8:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000dfc:	440d      	add	r5, r1
20000dfe:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000e02:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20000e06:	151b      	asrs	r3, r3, #20
20000e08:	1252      	asrs	r2, r2, #9
20000e0a:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000e0e:	f102 32ff 	add.w	r2, r2, #4294967295
20000e12:	bfc6      	itte	gt
20000e14:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20000e18:	2001      	movgt	r0, #1
20000e1a:	2000      	movle	r0, #0
20000e1c:	2a04      	cmp	r2, #4
20000e1e:	d848      	bhi.n	20000eb2 <svpwm+0x1aa>
20000e20:	e8df f002 	tbb	[pc, r2]
20000e24:	2b9e8164 	.word	0x2b9e8164
20000e28:	bb          	.byte	0xbb
20000e29:	00          	.byte	0x00
20000e2a:	1ad0      	subs	r0, r2, r3
20000e2c:	4249      	negs	r1, r1
20000e2e:	4413      	add	r3, r2
20000e30:	e78d      	b.n	20000d4e <svpwm+0x46>
20000e32:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000e36:	1bc9      	subs	r1, r1, r7
20000e38:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000e3c:	e791      	b.n	20000d62 <svpwm+0x5a>
20000e3e:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000e42:	1bc9      	subs	r1, r1, r7
20000e44:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000e48:	e795      	b.n	20000d76 <svpwm+0x6e>
20000e4a:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000e4e:	1bc9      	subs	r1, r1, r7
20000e50:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000e54:	e799      	b.n	20000d8a <svpwm+0x82>
20000e56:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000e5a:	1bc9      	subs	r1, r1, r7
20000e5c:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000e60:	e79d      	b.n	20000d9e <svpwm+0x96>
20000e62:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000e66:	1bc9      	subs	r1, r1, r7
20000e68:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000e6c:	e7a1      	b.n	20000db2 <svpwm+0xaa>
20000e6e:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000e72:	1bc9      	subs	r1, r1, r7
20000e74:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000e78:	e7a5      	b.n	20000dc6 <svpwm+0xbe>
20000e7a:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
20000e7e:	4e5e      	ldr	r6, [pc, #376]	; (20000ff8 <svpwm+0x2f0>)
20000e80:	3204      	adds	r2, #4
20000e82:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000e86:	3556      	adds	r5, #86	; 0x56
20000e88:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000e8c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000e90:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000e94:	fb01 f103 	mul.w	r1, r1, r3
20000e98:	fb02 f203 	mul.w	r2, r2, r3
20000e9c:	1289      	asrs	r1, r1, #10
20000e9e:	1293      	asrs	r3, r2, #10
20000ea0:	424a      	negs	r2, r1
20000ea2:	1ad2      	subs	r2, r2, r3
20000ea4:	1a5d      	subs	r5, r3, r1
20000ea6:	440b      	add	r3, r1
20000ea8:	6062      	str	r2, [r4, #4]
20000eaa:	6025      	str	r5, [r4, #0]
20000eac:	60a3      	str	r3, [r4, #8]
20000eae:	b011      	add	sp, #68	; 0x44
20000eb0:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000eb2:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000eb6:	4e50      	ldr	r6, [pc, #320]	; (20000ff8 <svpwm+0x2f0>)
20000eb8:	3202      	adds	r2, #2
20000eba:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000ebe:	f505 7540 	add.w	r5, r5, #768	; 0x300
20000ec2:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000ec6:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000eca:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000ece:	fb01 f103 	mul.w	r1, r1, r3
20000ed2:	fb02 f203 	mul.w	r2, r2, r3
20000ed6:	1289      	asrs	r1, r1, #10
20000ed8:	1293      	asrs	r3, r2, #10
20000eda:	424a      	negs	r2, r1
20000edc:	1ad2      	subs	r2, r2, r3
20000ede:	18cd      	adds	r5, r1, r3
20000ee0:	1a5b      	subs	r3, r3, r1
20000ee2:	60a2      	str	r2, [r4, #8]
20000ee4:	6025      	str	r5, [r4, #0]
20000ee6:	6063      	str	r3, [r4, #4]
20000ee8:	b011      	add	sp, #68	; 0x44
20000eea:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000eec:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20000ef0:	4e41      	ldr	r6, [pc, #260]	; (20000ff8 <svpwm+0x2f0>)
20000ef2:	3204      	adds	r2, #4
20000ef4:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000ef8:	f205 2556 	addw	r5, r5, #598	; 0x256
20000efc:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000f00:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000f04:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000f08:	fb01 f103 	mul.w	r1, r1, r3
20000f0c:	fb02 f203 	mul.w	r2, r2, r3
20000f10:	1289      	asrs	r1, r1, #10
20000f12:	1293      	asrs	r3, r2, #10
20000f14:	424a      	negs	r2, r1
20000f16:	1ad2      	subs	r2, r2, r3
20000f18:	1acd      	subs	r5, r1, r3
20000f1a:	440b      	add	r3, r1
20000f1c:	60a2      	str	r2, [r4, #8]
20000f1e:	6025      	str	r5, [r4, #0]
20000f20:	6063      	str	r3, [r4, #4]
20000f22:	b011      	add	sp, #68	; 0x44
20000f24:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000f26:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20000f2a:	4e33      	ldr	r6, [pc, #204]	; (20000ff8 <svpwm+0x2f0>)
20000f2c:	320f      	adds	r2, #15
20000f2e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000f32:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20000f36:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000f3a:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000f3e:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000f42:	fb01 f103 	mul.w	r1, r1, r3
20000f46:	fb02 f203 	mul.w	r2, r2, r3
20000f4a:	1289      	asrs	r1, r1, #10
20000f4c:	1293      	asrs	r3, r2, #10
20000f4e:	424a      	negs	r2, r1
20000f50:	1ad2      	subs	r2, r2, r3
20000f52:	18cd      	adds	r5, r1, r3
20000f54:	1a5b      	subs	r3, r3, r1
20000f56:	e884 0024 	stmia.w	r4, {r2, r5}
20000f5a:	60a3      	str	r3, [r4, #8]
20000f5c:	b011      	add	sp, #68	; 0x44
20000f5e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000f60:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20000f64:	4e24      	ldr	r6, [pc, #144]	; (20000ff8 <svpwm+0x2f0>)
20000f66:	320a      	adds	r2, #10
20000f68:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000f6c:	f505 7580 	add.w	r5, r5, #256	; 0x100
20000f70:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000f74:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000f78:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000f7c:	fb01 f103 	mul.w	r1, r1, r3
20000f80:	fb02 f203 	mul.w	r2, r2, r3
20000f84:	1289      	asrs	r1, r1, #10
20000f86:	1293      	asrs	r3, r2, #10
20000f88:	424a      	negs	r2, r1
20000f8a:	1ad2      	subs	r2, r2, r3
20000f8c:	1acd      	subs	r5, r1, r3
20000f8e:	440b      	add	r3, r1
20000f90:	e884 0024 	stmia.w	r4, {r2, r5}
20000f94:	60a3      	str	r3, [r4, #8]
20000f96:	b011      	add	sp, #68	; 0x44
20000f98:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000f9a:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000f9e:	4916      	ldr	r1, [pc, #88]	; (20000ff8 <svpwm+0x2f0>)
20000fa0:	320f      	adds	r2, #15
20000fa2:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000fa6:	3d55      	subs	r5, #85	; 0x55
20000fa8:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000fac:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000fb0:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000fb4:	fb02 f203 	mul.w	r2, r2, r3
20000fb8:	fb01 f303 	mul.w	r3, r1, r3
20000fbc:	1292      	asrs	r2, r2, #10
20000fbe:	129b      	asrs	r3, r3, #10
20000fc0:	4251      	negs	r1, r2
20000fc2:	18d5      	adds	r5, r2, r3
20000fc4:	1ac9      	subs	r1, r1, r3
20000fc6:	1ad2      	subs	r2, r2, r3
20000fc8:	6061      	str	r1, [r4, #4]
20000fca:	6025      	str	r5, [r4, #0]
20000fcc:	60a2      	str	r2, [r4, #8]
20000fce:	b011      	add	sp, #68	; 0x44
20000fd0:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000fd2:	461a      	mov	r2, r3
20000fd4:	e703      	b.n	20000dde <svpwm+0xd6>
20000fd6:	4610      	mov	r0, r2
20000fd8:	2201      	movs	r2, #1
20000fda:	e700      	b.n	20000dde <svpwm+0xd6>
20000fdc:	2202      	movs	r2, #2
20000fde:	e6fe      	b.n	20000dde <svpwm+0xd6>
20000fe0:	4610      	mov	r0, r2
20000fe2:	2203      	movs	r2, #3
20000fe4:	e6fb      	b.n	20000dde <svpwm+0xd6>
20000fe6:	2204      	movs	r2, #4
20000fe8:	e6f9      	b.n	20000dde <svpwm+0xd6>
20000fea:	4610      	mov	r0, r2
20000fec:	2205      	movs	r2, #5
20000fee:	e6f6      	b.n	20000dde <svpwm+0xd6>
20000ff0:	2206      	movs	r2, #6
20000ff2:	e6f4      	b.n	20000dde <svpwm+0xd6>
20000ff4:	20001960 	.word	0x20001960
20000ff8:	200019a0 	.word	0x200019a0

20000ffc <encoder_init>:
20000ffc:	4b01      	ldr	r3, [pc, #4]	; (20001004 <encoder_init+0x8>)
20000ffe:	6018      	str	r0, [r3, #0]
20001000:	6058      	str	r0, [r3, #4]
20001002:	4770      	bx	lr
20001004:	20002a48 	.word	0x20002a48

20001008 <get_speed>:
20001008:	4a0e      	ldr	r2, [pc, #56]	; (20001044 <get_speed+0x3c>)
2000100a:	b430      	push	{r4, r5}
2000100c:	6853      	ldr	r3, [r2, #4]
2000100e:	6815      	ldr	r5, [r2, #0]
20001010:	1ac3      	subs	r3, r0, r3
20001012:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20001016:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
2000101a:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
2000101e:	e882 0021 	stmia.w	r2, {r0, r5}
20001022:	dd05      	ble.n	20001030 <get_speed+0x28>
20001024:	2b00      	cmp	r3, #0
20001026:	bfb4      	ite	lt
20001028:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
2000102c:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20001030:	4a05      	ldr	r2, [pc, #20]	; (20001048 <get_speed+0x40>)
20001032:	1058      	asrs	r0, r3, #1
20001034:	fb02 f000 	mul.w	r0, r2, r0
20001038:	bc30      	pop	{r4, r5}
2000103a:	680a      	ldr	r2, [r1, #0]
2000103c:	1300      	asrs	r0, r0, #12
2000103e:	4413      	add	r3, r2
20001040:	600b      	str	r3, [r1, #0]
20001042:	4770      	bx	lr
20001044:	20002a48 	.word	0x20002a48
20001048:	0002ae7c 	.word	0x0002ae7c

2000104c <mfilter>:
2000104c:	b430      	push	{r4, r5}
2000104e:	4605      	mov	r5, r0
20001050:	4a06      	ldr	r2, [pc, #24]	; (2000106c <mfilter+0x20>)
20001052:	6893      	ldr	r3, [r2, #8]
20001054:	3301      	adds	r3, #1
20001056:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000105a:	eb02 0483 	add.w	r4, r2, r3, lsl #2
2000105e:	68e0      	ldr	r0, [r4, #12]
20001060:	6093      	str	r3, [r2, #8]
20001062:	1a08      	subs	r0, r1, r0
20001064:	4428      	add	r0, r5
20001066:	60e5      	str	r5, [r4, #12]
20001068:	bc30      	pop	{r4, r5}
2000106a:	4770      	bx	lr
2000106c:	20002a48 	.word	0x20002a48

20001070 <rfilter1>:
20001070:	b470      	push	{r4, r5, r6}
20001072:	f240 74c6 	movw	r4, #1990	; 0x7c6
20001076:	4b12      	ldr	r3, [pc, #72]	; (200010c0 <rfilter1+0x50>)
20001078:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
2000107c:	f853 6cec 	ldr.w	r6, [r3, #-236]
20001080:	f853 1ce4 	ldr.w	r1, [r3, #-228]
20001084:	fb04 f406 	mul.w	r4, r4, r6
20001088:	fb02 4201 	mla	r2, r2, r1, r4
2000108c:	490d      	ldr	r1, [pc, #52]	; (200010c4 <rfilter1+0x54>)
2000108e:	f853 5ce8 	ldr.w	r5, [r3, #-232]
20001092:	fb01 2200 	mla	r2, r1, r0, r2
20001096:	4c0c      	ldr	r4, [pc, #48]	; (200010c8 <rfilter1+0x58>)
20001098:	f853 1ce0 	ldr.w	r1, [r3, #-224]
2000109c:	fb04 2205 	mla	r2, r4, r5, r2
200010a0:	4c0a      	ldr	r4, [pc, #40]	; (200010cc <rfilter1+0x5c>)
200010a2:	f843 6ce4 	str.w	r6, [r3, #-228]
200010a6:	fb04 2201 	mla	r2, r4, r1, r2
200010aa:	1291      	asrs	r1, r2, #10
200010ac:	f843 0ce8 	str.w	r0, [r3, #-232]
200010b0:	f843 5ce0 	str.w	r5, [r3, #-224]
200010b4:	1490      	asrs	r0, r2, #18
200010b6:	f843 1cec 	str.w	r1, [r3, #-236]
200010ba:	bc70      	pop	{r4, r5, r6}
200010bc:	4770      	bx	lr
200010be:	bf00      	nop
200010c0:	20003b40 	.word	0x20003b40
200010c4:	0003f0a4 	.word	0x0003f0a4
200010c8:	fff83a2e 	.word	0xfff83a2e
200010cc:	0003dc29 	.word	0x0003dc29

200010d0 <rfilter2>:
200010d0:	b470      	push	{r4, r5, r6}
200010d2:	f240 748a 	movw	r4, #1930	; 0x78a
200010d6:	4b11      	ldr	r3, [pc, #68]	; (2000111c <rfilter2+0x4c>)
200010d8:	4a11      	ldr	r2, [pc, #68]	; (20001120 <rfilter2+0x50>)
200010da:	f853 6cdc 	ldr.w	r6, [r3, #-220]
200010de:	f853 1cd4 	ldr.w	r1, [r3, #-212]
200010e2:	fb04 f406 	mul.w	r4, r4, r6
200010e6:	fb02 4201 	mla	r2, r2, r1, r4
200010ea:	490e      	ldr	r1, [pc, #56]	; (20001124 <rfilter2+0x54>)
200010ec:	f853 5cd8 	ldr.w	r5, [r3, #-216]
200010f0:	fb01 2200 	mla	r2, r1, r0, r2
200010f4:	4c0c      	ldr	r4, [pc, #48]	; (20001128 <rfilter2+0x58>)
200010f6:	f853 1cd0 	ldr.w	r1, [r3, #-208]
200010fa:	fb04 2205 	mla	r2, r4, r5, r2
200010fe:	4c0b      	ldr	r4, [pc, #44]	; (2000112c <rfilter2+0x5c>)
20001100:	f843 6cd4 	str.w	r6, [r3, #-212]
20001104:	fb04 2201 	mla	r2, r4, r1, r2
20001108:	1291      	asrs	r1, r2, #10
2000110a:	f843 0cd8 	str.w	r0, [r3, #-216]
2000110e:	f843 5cd0 	str.w	r5, [r3, #-208]
20001112:	1490      	asrs	r0, r2, #18
20001114:	f843 1cdc 	str.w	r1, [r3, #-220]
20001118:	bc70      	pop	{r4, r5, r6}
2000111a:	4770      	bx	lr
2000111c:	20003b40 	.word	0x20003b40
20001120:	fffffc66 	.word	0xfffffc66
20001124:	0003e3d7 	.word	0x0003e3d7
20001128:	fff8767b 	.word	0xfff8767b
2000112c:	0003b5c3 	.word	0x0003b5c3

20001130 <adc_init>:
20001130:	b480      	push	{r7}
20001132:	af00      	add	r7, sp, #0
20001134:	4a10      	ldr	r2, [pc, #64]	; (20001178 <adc_init+0x48>)
20001136:	4b10      	ldr	r3, [pc, #64]	; (20001178 <adc_init+0x48>)
20001138:	69db      	ldr	r3, [r3, #28]
2000113a:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
2000113e:	61d3      	str	r3, [r2, #28]
20001140:	4b0d      	ldr	r3, [pc, #52]	; (20001178 <adc_init+0x48>)
20001142:	f242 0220 	movw	r2, #8224	; 0x2020
20001146:	615a      	str	r2, [r3, #20]
20001148:	4b0c      	ldr	r3, [pc, #48]	; (2000117c <adc_init+0x4c>)
2000114a:	2200      	movs	r2, #0
2000114c:	601a      	str	r2, [r3, #0]
2000114e:	4a0b      	ldr	r2, [pc, #44]	; (2000117c <adc_init+0x4c>)
20001150:	4b0a      	ldr	r3, [pc, #40]	; (2000117c <adc_init+0x4c>)
20001152:	681b      	ldr	r3, [r3, #0]
20001154:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20001158:	f043 0301 	orr.w	r3, r3, #1
2000115c:	6013      	str	r3, [r2, #0]
2000115e:	4a07      	ldr	r2, [pc, #28]	; (2000117c <adc_init+0x4c>)
20001160:	4b06      	ldr	r3, [pc, #24]	; (2000117c <adc_init+0x4c>)
20001162:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001164:	f443 73f0 	orr.w	r3, r3, #480	; 0x1e0
20001168:	6293      	str	r3, [r2, #40]	; 0x28
2000116a:	4b04      	ldr	r3, [pc, #16]	; (2000117c <adc_init+0x4c>)
2000116c:	2210      	movs	r2, #16
2000116e:	621a      	str	r2, [r3, #32]
20001170:	bf00      	nop
20001172:	46bd      	mov	sp, r7
20001174:	bc80      	pop	{r7}
20001176:	4770      	bx	lr
20001178:	40020000 	.word	0x40020000
2000117c:	40088000 	.word	0x40088000

20001180 <dma_init>:
20001180:	b480      	push	{r7}
20001182:	af00      	add	r7, sp, #0
20001184:	4a17      	ldr	r2, [pc, #92]	; (200011e4 <dma_init+0x64>)
20001186:	4b17      	ldr	r3, [pc, #92]	; (200011e4 <dma_init+0x64>)
20001188:	69db      	ldr	r3, [r3, #28]
2000118a:	f043 0320 	orr.w	r3, r3, #32
2000118e:	61d3      	str	r3, [r2, #28]
20001190:	4b15      	ldr	r3, [pc, #84]	; (200011e8 <dma_init+0x68>)
20001192:	4a16      	ldr	r2, [pc, #88]	; (200011ec <dma_init+0x6c>)
20001194:	609a      	str	r2, [r3, #8]
20001196:	4b14      	ldr	r3, [pc, #80]	; (200011e8 <dma_init+0x68>)
20001198:	f04f 32ff 	mov.w	r2, #4294967295
2000119c:	62da      	str	r2, [r3, #44]	; 0x2c
2000119e:	4b12      	ldr	r3, [pc, #72]	; (200011e8 <dma_init+0x68>)
200011a0:	f04f 32ff 	mov.w	r2, #4294967295
200011a4:	621a      	str	r2, [r3, #32]
200011a6:	4b10      	ldr	r3, [pc, #64]	; (200011e8 <dma_init+0x68>)
200011a8:	f04f 32ff 	mov.w	r2, #4294967295
200011ac:	635a      	str	r2, [r3, #52]	; 0x34
200011ae:	4b0e      	ldr	r3, [pc, #56]	; (200011e8 <dma_init+0x68>)
200011b0:	f44f 7280 	mov.w	r2, #256	; 0x100
200011b4:	61da      	str	r2, [r3, #28]
200011b6:	4b0c      	ldr	r3, [pc, #48]	; (200011e8 <dma_init+0x68>)
200011b8:	f44f 7280 	mov.w	r2, #256	; 0x100
200011bc:	625a      	str	r2, [r3, #36]	; 0x24
200011be:	4b0a      	ldr	r3, [pc, #40]	; (200011e8 <dma_init+0x68>)
200011c0:	2201      	movs	r2, #1
200011c2:	605a      	str	r2, [r3, #4]
200011c4:	4b09      	ldr	r3, [pc, #36]	; (200011ec <dma_init+0x6c>)
200011c6:	4a0a      	ldr	r2, [pc, #40]	; (200011f0 <dma_init+0x70>)
200011c8:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
200011cc:	4a09      	ldr	r2, [pc, #36]	; (200011f4 <dma_init+0x74>)
200011ce:	4b07      	ldr	r3, [pc, #28]	; (200011ec <dma_init+0x6c>)
200011d0:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
200011d4:	4b05      	ldr	r3, [pc, #20]	; (200011ec <dma_init+0x6c>)
200011d6:	4a08      	ldr	r2, [pc, #32]	; (200011f8 <dma_init+0x78>)
200011d8:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
200011dc:	bf00      	nop
200011de:	46bd      	mov	sp, r7
200011e0:	bc80      	pop	{r7}
200011e2:	4770      	bx	lr
200011e4:	40020000 	.word	0x40020000
200011e8:	40028000 	.word	0x40028000
200011ec:	20004000 	.word	0x20004000
200011f0:	40088018 	.word	0x40088018
200011f4:	2000420c 	.word	0x2000420c
200011f8:	ae000031 	.word	0xae000031

200011fc <adc_dma_init>:
200011fc:	b580      	push	{r7, lr}
200011fe:	af00      	add	r7, sp, #0
20001200:	f7ff ff96 	bl	20001130 <adc_init>
20001204:	f7ff ffbc 	bl	20001180 <dma_init>
20001208:	bf00      	nop
2000120a:	bd80      	pop	{r7, pc}

2000120c <adc_dma_start>:
2000120c:	b480      	push	{r7}
2000120e:	af00      	add	r7, sp, #0
20001210:	4b07      	ldr	r3, [pc, #28]	; (20001230 <adc_dma_start+0x24>)
20001212:	2200      	movs	r2, #0
20001214:	601a      	str	r2, [r3, #0]
20001216:	4b06      	ldr	r3, [pc, #24]	; (20001230 <adc_dma_start+0x24>)
20001218:	f240 220d 	movw	r2, #525	; 0x20d
2000121c:	601a      	str	r2, [r3, #0]
2000121e:	4b05      	ldr	r3, [pc, #20]	; (20001234 <adc_dma_start+0x28>)
20001220:	f44f 7280 	mov.w	r2, #256	; 0x100
20001224:	629a      	str	r2, [r3, #40]	; 0x28
20001226:	bf00      	nop
20001228:	46bd      	mov	sp, r7
2000122a:	bc80      	pop	{r7}
2000122c:	4770      	bx	lr
2000122e:	bf00      	nop
20001230:	40088000 	.word	0x40088000
20001234:	40028000 	.word	0x40028000

20001238 <adc_dma_wait>:
20001238:	b480      	push	{r7}
2000123a:	af00      	add	r7, sp, #0
2000123c:	bf00      	nop
2000123e:	4b0a      	ldr	r3, [pc, #40]	; (20001268 <adc_dma_wait+0x30>)
20001240:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20001244:	f003 0307 	and.w	r3, r3, #7
20001248:	2b00      	cmp	r3, #0
2000124a:	d1f8      	bne.n	2000123e <adc_dma_wait+0x6>
2000124c:	4a07      	ldr	r2, [pc, #28]	; (2000126c <adc_dma_wait+0x34>)
2000124e:	4b07      	ldr	r3, [pc, #28]	; (2000126c <adc_dma_wait+0x34>)
20001250:	681b      	ldr	r3, [r3, #0]
20001252:	f023 0308 	bic.w	r3, r3, #8
20001256:	6013      	str	r3, [r2, #0]
20001258:	4b03      	ldr	r3, [pc, #12]	; (20001268 <adc_dma_wait+0x30>)
2000125a:	4a05      	ldr	r2, [pc, #20]	; (20001270 <adc_dma_wait+0x38>)
2000125c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20001260:	bf00      	nop
20001262:	46bd      	mov	sp, r7
20001264:	bc80      	pop	{r7}
20001266:	4770      	bx	lr
20001268:	20004000 	.word	0x20004000
2000126c:	40088000 	.word	0x40088000
20001270:	ae000031 	.word	0xae000031

20001274 <NVIC_EnableIRQ>:
20001274:	b480      	push	{r7}
20001276:	b083      	sub	sp, #12
20001278:	af00      	add	r7, sp, #0
2000127a:	4603      	mov	r3, r0
2000127c:	71fb      	strb	r3, [r7, #7]
2000127e:	4908      	ldr	r1, [pc, #32]	; (200012a0 <NVIC_EnableIRQ+0x2c>)
20001280:	f997 3007 	ldrsb.w	r3, [r7, #7]
20001284:	095b      	lsrs	r3, r3, #5
20001286:	79fa      	ldrb	r2, [r7, #7]
20001288:	f002 021f 	and.w	r2, r2, #31
2000128c:	2001      	movs	r0, #1
2000128e:	fa00 f202 	lsl.w	r2, r0, r2
20001292:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20001296:	bf00      	nop
20001298:	370c      	adds	r7, #12
2000129a:	46bd      	mov	sp, r7
2000129c:	bc80      	pop	{r7}
2000129e:	4770      	bx	lr
200012a0:	e000e100 	.word	0xe000e100

200012a4 <PortConfig>:
200012a4:	b480      	push	{r7}
200012a6:	af00      	add	r7, sp, #0
200012a8:	4a63      	ldr	r2, [pc, #396]	; (20001438 <PortConfig+0x194>)
200012aa:	4b63      	ldr	r3, [pc, #396]	; (20001438 <PortConfig+0x194>)
200012ac:	69db      	ldr	r3, [r3, #28]
200012ae:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
200012b2:	61d3      	str	r3, [r2, #28]
200012b4:	4b61      	ldr	r3, [pc, #388]	; (2000143c <PortConfig+0x198>)
200012b6:	2200      	movs	r2, #0
200012b8:	609a      	str	r2, [r3, #8]
200012ba:	4b60      	ldr	r3, [pc, #384]	; (2000143c <PortConfig+0x198>)
200012bc:	2200      	movs	r2, #0
200012be:	601a      	str	r2, [r3, #0]
200012c0:	4a5e      	ldr	r2, [pc, #376]	; (2000143c <PortConfig+0x198>)
200012c2:	4b5e      	ldr	r3, [pc, #376]	; (2000143c <PortConfig+0x198>)
200012c4:	685b      	ldr	r3, [r3, #4]
200012c6:	f043 0301 	orr.w	r3, r3, #1
200012ca:	6053      	str	r3, [r2, #4]
200012cc:	4a5b      	ldr	r2, [pc, #364]	; (2000143c <PortConfig+0x198>)
200012ce:	4b5b      	ldr	r3, [pc, #364]	; (2000143c <PortConfig+0x198>)
200012d0:	68db      	ldr	r3, [r3, #12]
200012d2:	f043 0301 	orr.w	r3, r3, #1
200012d6:	60d3      	str	r3, [r2, #12]
200012d8:	4a58      	ldr	r2, [pc, #352]	; (2000143c <PortConfig+0x198>)
200012da:	4b58      	ldr	r3, [pc, #352]	; (2000143c <PortConfig+0x198>)
200012dc:	699b      	ldr	r3, [r3, #24]
200012de:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
200012e2:	6193      	str	r3, [r2, #24]
200012e4:	4a55      	ldr	r2, [pc, #340]	; (2000143c <PortConfig+0x198>)
200012e6:	4b55      	ldr	r3, [pc, #340]	; (2000143c <PortConfig+0x198>)
200012e8:	685b      	ldr	r3, [r3, #4]
200012ea:	f023 0308 	bic.w	r3, r3, #8
200012ee:	6053      	str	r3, [r2, #4]
200012f0:	4a52      	ldr	r2, [pc, #328]	; (2000143c <PortConfig+0x198>)
200012f2:	4b52      	ldr	r3, [pc, #328]	; (2000143c <PortConfig+0x198>)
200012f4:	68db      	ldr	r3, [r3, #12]
200012f6:	f043 0308 	orr.w	r3, r3, #8
200012fa:	60d3      	str	r3, [r2, #12]
200012fc:	4b4f      	ldr	r3, [pc, #316]	; (2000143c <PortConfig+0x198>)
200012fe:	2280      	movs	r2, #128	; 0x80
20001300:	609a      	str	r2, [r3, #8]
20001302:	4a4d      	ldr	r2, [pc, #308]	; (20001438 <PortConfig+0x194>)
20001304:	4b4c      	ldr	r3, [pc, #304]	; (20001438 <PortConfig+0x194>)
20001306:	69db      	ldr	r3, [r3, #28]
20001308:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
2000130c:	61d3      	str	r3, [r2, #28]
2000130e:	4a4c      	ldr	r2, [pc, #304]	; (20001440 <PortConfig+0x19c>)
20001310:	4b4b      	ldr	r3, [pc, #300]	; (20001440 <PortConfig+0x19c>)
20001312:	689b      	ldr	r3, [r3, #8]
20001314:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20001318:	6093      	str	r3, [r2, #8]
2000131a:	4a49      	ldr	r2, [pc, #292]	; (20001440 <PortConfig+0x19c>)
2000131c:	4b48      	ldr	r3, [pc, #288]	; (20001440 <PortConfig+0x19c>)
2000131e:	689b      	ldr	r3, [r3, #8]
20001320:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
20001324:	6093      	str	r3, [r2, #8]
20001326:	4a46      	ldr	r2, [pc, #280]	; (20001440 <PortConfig+0x19c>)
20001328:	4b45      	ldr	r3, [pc, #276]	; (20001440 <PortConfig+0x19c>)
2000132a:	68db      	ldr	r3, [r3, #12]
2000132c:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
20001330:	60d3      	str	r3, [r2, #12]
20001332:	4a43      	ldr	r2, [pc, #268]	; (20001440 <PortConfig+0x19c>)
20001334:	4b42      	ldr	r3, [pc, #264]	; (20001440 <PortConfig+0x19c>)
20001336:	699b      	ldr	r3, [r3, #24]
20001338:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
2000133c:	6193      	str	r3, [r2, #24]
2000133e:	4a40      	ldr	r2, [pc, #256]	; (20001440 <PortConfig+0x19c>)
20001340:	4b3f      	ldr	r3, [pc, #252]	; (20001440 <PortConfig+0x19c>)
20001342:	685b      	ldr	r3, [r3, #4]
20001344:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20001348:	6053      	str	r3, [r2, #4]
2000134a:	4a3d      	ldr	r2, [pc, #244]	; (20001440 <PortConfig+0x19c>)
2000134c:	4b3c      	ldr	r3, [pc, #240]	; (20001440 <PortConfig+0x19c>)
2000134e:	685b      	ldr	r3, [r3, #4]
20001350:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20001354:	6053      	str	r3, [r2, #4]
20001356:	4a3a      	ldr	r2, [pc, #232]	; (20001440 <PortConfig+0x19c>)
20001358:	4b39      	ldr	r3, [pc, #228]	; (20001440 <PortConfig+0x19c>)
2000135a:	689b      	ldr	r3, [r3, #8]
2000135c:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
20001360:	6093      	str	r3, [r2, #8]
20001362:	4a37      	ldr	r2, [pc, #220]	; (20001440 <PortConfig+0x19c>)
20001364:	4b36      	ldr	r3, [pc, #216]	; (20001440 <PortConfig+0x19c>)
20001366:	689b      	ldr	r3, [r3, #8]
20001368:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
2000136c:	6093      	str	r3, [r2, #8]
2000136e:	4a34      	ldr	r2, [pc, #208]	; (20001440 <PortConfig+0x19c>)
20001370:	4b33      	ldr	r3, [pc, #204]	; (20001440 <PortConfig+0x19c>)
20001372:	68db      	ldr	r3, [r3, #12]
20001374:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001378:	60d3      	str	r3, [r2, #12]
2000137a:	4a2f      	ldr	r2, [pc, #188]	; (20001438 <PortConfig+0x194>)
2000137c:	4b2e      	ldr	r3, [pc, #184]	; (20001438 <PortConfig+0x194>)
2000137e:	69db      	ldr	r3, [r3, #28]
20001380:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
20001384:	61d3      	str	r3, [r2, #28]
20001386:	4b2f      	ldr	r3, [pc, #188]	; (20001444 <PortConfig+0x1a0>)
20001388:	4a2f      	ldr	r2, [pc, #188]	; (20001448 <PortConfig+0x1a4>)
2000138a:	609a      	str	r2, [r3, #8]
2000138c:	4b2d      	ldr	r3, [pc, #180]	; (20001444 <PortConfig+0x1a0>)
2000138e:	f64f 72ff 	movw	r2, #65535	; 0xffff
20001392:	60da      	str	r2, [r3, #12]
20001394:	4b2b      	ldr	r3, [pc, #172]	; (20001444 <PortConfig+0x1a0>)
20001396:	f04f 32ff 	mov.w	r2, #4294967295
2000139a:	619a      	str	r2, [r3, #24]
2000139c:	4b29      	ldr	r3, [pc, #164]	; (20001444 <PortConfig+0x1a0>)
2000139e:	f64f 72ff 	movw	r2, #65535	; 0xffff
200013a2:	605a      	str	r2, [r3, #4]
200013a4:	4a27      	ldr	r2, [pc, #156]	; (20001444 <PortConfig+0x1a0>)
200013a6:	4b27      	ldr	r3, [pc, #156]	; (20001444 <PortConfig+0x1a0>)
200013a8:	681b      	ldr	r3, [r3, #0]
200013aa:	f023 0303 	bic.w	r3, r3, #3
200013ae:	6013      	str	r3, [r2, #0]
200013b0:	4a24      	ldr	r2, [pc, #144]	; (20001444 <PortConfig+0x1a0>)
200013b2:	4b24      	ldr	r3, [pc, #144]	; (20001444 <PortConfig+0x1a0>)
200013b4:	681b      	ldr	r3, [r3, #0]
200013b6:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200013ba:	6013      	str	r3, [r2, #0]
200013bc:	4a1e      	ldr	r2, [pc, #120]	; (20001438 <PortConfig+0x194>)
200013be:	4b1e      	ldr	r3, [pc, #120]	; (20001438 <PortConfig+0x194>)
200013c0:	69db      	ldr	r3, [r3, #28]
200013c2:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
200013c6:	61d3      	str	r3, [r2, #28]
200013c8:	4b20      	ldr	r3, [pc, #128]	; (2000144c <PortConfig+0x1a8>)
200013ca:	2200      	movs	r2, #0
200013cc:	609a      	str	r2, [r3, #8]
200013ce:	4a1f      	ldr	r2, [pc, #124]	; (2000144c <PortConfig+0x1a8>)
200013d0:	4b1e      	ldr	r3, [pc, #120]	; (2000144c <PortConfig+0x1a8>)
200013d2:	685b      	ldr	r3, [r3, #4]
200013d4:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200013d8:	6053      	str	r3, [r2, #4]
200013da:	4a1c      	ldr	r2, [pc, #112]	; (2000144c <PortConfig+0x1a8>)
200013dc:	4b1b      	ldr	r3, [pc, #108]	; (2000144c <PortConfig+0x1a8>)
200013de:	68db      	ldr	r3, [r3, #12]
200013e0:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200013e4:	60d3      	str	r3, [r2, #12]
200013e6:	4b19      	ldr	r3, [pc, #100]	; (2000144c <PortConfig+0x1a8>)
200013e8:	f04f 32ff 	mov.w	r2, #4294967295
200013ec:	619a      	str	r2, [r3, #24]
200013ee:	4a17      	ldr	r2, [pc, #92]	; (2000144c <PortConfig+0x1a8>)
200013f0:	4b16      	ldr	r3, [pc, #88]	; (2000144c <PortConfig+0x1a8>)
200013f2:	681b      	ldr	r3, [r3, #0]
200013f4:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200013f8:	6013      	str	r3, [r2, #0]
200013fa:	4a0f      	ldr	r2, [pc, #60]	; (20001438 <PortConfig+0x194>)
200013fc:	4b0e      	ldr	r3, [pc, #56]	; (20001438 <PortConfig+0x194>)
200013fe:	69db      	ldr	r3, [r3, #28]
20001400:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
20001404:	61d3      	str	r3, [r2, #28]
20001406:	4a12      	ldr	r2, [pc, #72]	; (20001450 <PortConfig+0x1ac>)
20001408:	4b11      	ldr	r3, [pc, #68]	; (20001450 <PortConfig+0x1ac>)
2000140a:	68db      	ldr	r3, [r3, #12]
2000140c:	f423 7300 	bic.w	r3, r3, #512	; 0x200
20001410:	f023 0301 	bic.w	r3, r3, #1
20001414:	60d3      	str	r3, [r2, #12]
20001416:	4a08      	ldr	r2, [pc, #32]	; (20001438 <PortConfig+0x194>)
20001418:	4b07      	ldr	r3, [pc, #28]	; (20001438 <PortConfig+0x194>)
2000141a:	69db      	ldr	r3, [r3, #28]
2000141c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001420:	61d3      	str	r3, [r2, #28]
20001422:	4a0c      	ldr	r2, [pc, #48]	; (20001454 <PortConfig+0x1b0>)
20001424:	4b0b      	ldr	r3, [pc, #44]	; (20001454 <PortConfig+0x1b0>)
20001426:	68db      	ldr	r3, [r3, #12]
20001428:	f423 7378 	bic.w	r3, r3, #992	; 0x3e0
2000142c:	60d3      	str	r3, [r2, #12]
2000142e:	bf00      	nop
20001430:	46bd      	mov	sp, r7
20001432:	bc80      	pop	{r7}
20001434:	4770      	bx	lr
20001436:	bf00      	nop
20001438:	40020000 	.word	0x40020000
2000143c:	400a8000 	.word	0x400a8000
20001440:	400b0000 	.word	0x400b0000
20001444:	400b8000 	.word	0x400b8000
20001448:	000aaaa0 	.word	0x000aaaa0
2000144c:	400e8000 	.word	0x400e8000
20001450:	400c8000 	.word	0x400c8000
20001454:	400c0000 	.word	0x400c0000

20001458 <ClkConfig>:
20001458:	b480      	push	{r7}
2000145a:	af00      	add	r7, sp, #0
2000145c:	4a16      	ldr	r2, [pc, #88]	; (200014b8 <ClkConfig+0x60>)
2000145e:	4b16      	ldr	r3, [pc, #88]	; (200014b8 <ClkConfig+0x60>)
20001460:	689b      	ldr	r3, [r3, #8]
20001462:	f043 0301 	orr.w	r3, r3, #1
20001466:	6093      	str	r3, [r2, #8]
20001468:	bf00      	nop
2000146a:	4b13      	ldr	r3, [pc, #76]	; (200014b8 <ClkConfig+0x60>)
2000146c:	681b      	ldr	r3, [r3, #0]
2000146e:	f003 0304 	and.w	r3, r3, #4
20001472:	2b00      	cmp	r3, #0
20001474:	d0f9      	beq.n	2000146a <ClkConfig+0x12>
20001476:	4b10      	ldr	r3, [pc, #64]	; (200014b8 <ClkConfig+0x60>)
20001478:	2206      	movs	r2, #6
2000147a:	60da      	str	r2, [r3, #12]
2000147c:	4b0e      	ldr	r3, [pc, #56]	; (200014b8 <ClkConfig+0x60>)
2000147e:	f640 1204 	movw	r2, #2308	; 0x904
20001482:	605a      	str	r2, [r3, #4]
20001484:	bf00      	nop
20001486:	4b0c      	ldr	r3, [pc, #48]	; (200014b8 <ClkConfig+0x60>)
20001488:	681b      	ldr	r3, [r3, #0]
2000148a:	f003 0302 	and.w	r3, r3, #2
2000148e:	2b00      	cmp	r3, #0
20001490:	d0f9      	beq.n	20001486 <ClkConfig+0x2e>
20001492:	4a09      	ldr	r2, [pc, #36]	; (200014b8 <ClkConfig+0x60>)
20001494:	4b08      	ldr	r3, [pc, #32]	; (200014b8 <ClkConfig+0x60>)
20001496:	68db      	ldr	r3, [r3, #12]
20001498:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000149c:	60d3      	str	r3, [r2, #12]
2000149e:	4a07      	ldr	r2, [pc, #28]	; (200014bc <ClkConfig+0x64>)
200014a0:	4b06      	ldr	r3, [pc, #24]	; (200014bc <ClkConfig+0x64>)
200014a2:	681b      	ldr	r3, [r3, #0]
200014a4:	f043 0320 	orr.w	r3, r3, #32
200014a8:	6013      	str	r3, [r2, #0]
200014aa:	4b05      	ldr	r3, [pc, #20]	; (200014c0 <ClkConfig+0x68>)
200014ac:	2200      	movs	r2, #0
200014ae:	601a      	str	r2, [r3, #0]
200014b0:	bf00      	nop
200014b2:	46bd      	mov	sp, r7
200014b4:	bc80      	pop	{r7}
200014b6:	4770      	bx	lr
200014b8:	40020000 	.word	0x40020000
200014bc:	40018000 	.word	0x40018000
200014c0:	20003b00 	.word	0x20003b00

200014c4 <TimerConfig>:
200014c4:	b580      	push	{r7, lr}
200014c6:	af00      	add	r7, sp, #0
200014c8:	4a99      	ldr	r2, [pc, #612]	; (20001730 <TimerConfig+0x26c>)
200014ca:	4b99      	ldr	r3, [pc, #612]	; (20001730 <TimerConfig+0x26c>)
200014cc:	69db      	ldr	r3, [r3, #28]
200014ce:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
200014d2:	61d3      	str	r3, [r2, #28]
200014d4:	4a96      	ldr	r2, [pc, #600]	; (20001730 <TimerConfig+0x26c>)
200014d6:	4b96      	ldr	r3, [pc, #600]	; (20001730 <TimerConfig+0x26c>)
200014d8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200014da:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
200014de:	6253      	str	r3, [r2, #36]	; 0x24
200014e0:	4a93      	ldr	r2, [pc, #588]	; (20001730 <TimerConfig+0x26c>)
200014e2:	4b93      	ldr	r3, [pc, #588]	; (20001730 <TimerConfig+0x26c>)
200014e4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200014e6:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
200014ea:	6253      	str	r3, [r2, #36]	; 0x24
200014ec:	4b91      	ldr	r3, [pc, #580]	; (20001734 <TimerConfig+0x270>)
200014ee:	2200      	movs	r2, #0
200014f0:	601a      	str	r2, [r3, #0]
200014f2:	4b90      	ldr	r3, [pc, #576]	; (20001734 <TimerConfig+0x270>)
200014f4:	224f      	movs	r2, #79	; 0x4f
200014f6:	605a      	str	r2, [r3, #4]
200014f8:	4b8e      	ldr	r3, [pc, #568]	; (20001734 <TimerConfig+0x270>)
200014fa:	f240 32e7 	movw	r2, #999	; 0x3e7
200014fe:	609a      	str	r2, [r3, #8]
20001500:	4a8c      	ldr	r2, [pc, #560]	; (20001734 <TimerConfig+0x270>)
20001502:	4b8c      	ldr	r3, [pc, #560]	; (20001734 <TimerConfig+0x270>)
20001504:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001506:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
2000150a:	6253      	str	r3, [r2, #36]	; 0x24
2000150c:	4a89      	ldr	r2, [pc, #548]	; (20001734 <TimerConfig+0x270>)
2000150e:	4b89      	ldr	r3, [pc, #548]	; (20001734 <TimerConfig+0x270>)
20001510:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001512:	f043 0302 	orr.w	r3, r3, #2
20001516:	6593      	str	r3, [r2, #88]	; 0x58
20001518:	4b86      	ldr	r3, [pc, #536]	; (20001734 <TimerConfig+0x270>)
2000151a:	2201      	movs	r2, #1
2000151c:	60da      	str	r2, [r3, #12]
2000151e:	4a84      	ldr	r2, [pc, #528]	; (20001730 <TimerConfig+0x26c>)
20001520:	4b83      	ldr	r3, [pc, #524]	; (20001730 <TimerConfig+0x26c>)
20001522:	69db      	ldr	r3, [r3, #28]
20001524:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
20001528:	61d3      	str	r3, [r2, #28]
2000152a:	4a81      	ldr	r2, [pc, #516]	; (20001730 <TimerConfig+0x26c>)
2000152c:	4b80      	ldr	r3, [pc, #512]	; (20001730 <TimerConfig+0x26c>)
2000152e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001530:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
20001534:	6253      	str	r3, [r2, #36]	; 0x24
20001536:	4a7e      	ldr	r2, [pc, #504]	; (20001730 <TimerConfig+0x26c>)
20001538:	4b7d      	ldr	r3, [pc, #500]	; (20001730 <TimerConfig+0x26c>)
2000153a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000153c:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
20001540:	6253      	str	r3, [r2, #36]	; 0x24
20001542:	4b7d      	ldr	r3, [pc, #500]	; (20001738 <TimerConfig+0x274>)
20001544:	2200      	movs	r2, #0
20001546:	601a      	str	r2, [r3, #0]
20001548:	4b7b      	ldr	r3, [pc, #492]	; (20001738 <TimerConfig+0x274>)
2000154a:	2203      	movs	r2, #3
2000154c:	605a      	str	r2, [r3, #4]
2000154e:	4b7a      	ldr	r3, [pc, #488]	; (20001738 <TimerConfig+0x274>)
20001550:	f240 32ff 	movw	r2, #1023	; 0x3ff
20001554:	609a      	str	r2, [r3, #8]
20001556:	4b78      	ldr	r3, [pc, #480]	; (20001738 <TimerConfig+0x274>)
20001558:	f44f 7200 	mov.w	r2, #512	; 0x200
2000155c:	611a      	str	r2, [r3, #16]
2000155e:	4b76      	ldr	r3, [pc, #472]	; (20001738 <TimerConfig+0x274>)
20001560:	f44f 7200 	mov.w	r2, #512	; 0x200
20001564:	615a      	str	r2, [r3, #20]
20001566:	4b74      	ldr	r3, [pc, #464]	; (20001738 <TimerConfig+0x274>)
20001568:	f44f 7200 	mov.w	r2, #512	; 0x200
2000156c:	619a      	str	r2, [r3, #24]
2000156e:	4b72      	ldr	r3, [pc, #456]	; (20001738 <TimerConfig+0x274>)
20001570:	22c8      	movs	r2, #200	; 0xc8
20001572:	61da      	str	r2, [r3, #28]
20001574:	4a70      	ldr	r2, [pc, #448]	; (20001738 <TimerConfig+0x274>)
20001576:	4b70      	ldr	r3, [pc, #448]	; (20001738 <TimerConfig+0x274>)
20001578:	6a1b      	ldr	r3, [r3, #32]
2000157a:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
2000157e:	6213      	str	r3, [r2, #32]
20001580:	4a6d      	ldr	r2, [pc, #436]	; (20001738 <TimerConfig+0x274>)
20001582:	4b6d      	ldr	r3, [pc, #436]	; (20001738 <TimerConfig+0x274>)
20001584:	6a1b      	ldr	r3, [r3, #32]
20001586:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
2000158a:	6213      	str	r3, [r2, #32]
2000158c:	4a6a      	ldr	r2, [pc, #424]	; (20001738 <TimerConfig+0x274>)
2000158e:	4b6a      	ldr	r3, [pc, #424]	; (20001738 <TimerConfig+0x274>)
20001590:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001592:	f023 030f 	bic.w	r3, r3, #15
20001596:	6313      	str	r3, [r2, #48]	; 0x30
20001598:	4a67      	ldr	r2, [pc, #412]	; (20001738 <TimerConfig+0x274>)
2000159a:	4b67      	ldr	r3, [pc, #412]	; (20001738 <TimerConfig+0x274>)
2000159c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000159e:	f043 030c 	orr.w	r3, r3, #12
200015a2:	6313      	str	r3, [r2, #48]	; 0x30
200015a4:	4a64      	ldr	r2, [pc, #400]	; (20001738 <TimerConfig+0x274>)
200015a6:	4b64      	ldr	r3, [pc, #400]	; (20001738 <TimerConfig+0x274>)
200015a8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200015aa:	f043 0301 	orr.w	r3, r3, #1
200015ae:	6313      	str	r3, [r2, #48]	; 0x30
200015b0:	4a61      	ldr	r2, [pc, #388]	; (20001738 <TimerConfig+0x274>)
200015b2:	4b61      	ldr	r3, [pc, #388]	; (20001738 <TimerConfig+0x274>)
200015b4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200015b6:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200015ba:	6313      	str	r3, [r2, #48]	; 0x30
200015bc:	4a5e      	ldr	r2, [pc, #376]	; (20001738 <TimerConfig+0x274>)
200015be:	4b5e      	ldr	r3, [pc, #376]	; (20001738 <TimerConfig+0x274>)
200015c0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200015c2:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200015c6:	6313      	str	r3, [r2, #48]	; 0x30
200015c8:	4a5b      	ldr	r2, [pc, #364]	; (20001738 <TimerConfig+0x274>)
200015ca:	4b5b      	ldr	r3, [pc, #364]	; (20001738 <TimerConfig+0x274>)
200015cc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200015ce:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200015d2:	6313      	str	r3, [r2, #48]	; 0x30
200015d4:	4a58      	ldr	r2, [pc, #352]	; (20001738 <TimerConfig+0x274>)
200015d6:	4b58      	ldr	r3, [pc, #352]	; (20001738 <TimerConfig+0x274>)
200015d8:	6e1b      	ldr	r3, [r3, #96]	; 0x60
200015da:	f043 0308 	orr.w	r3, r3, #8
200015de:	6613      	str	r3, [r2, #96]	; 0x60
200015e0:	4a55      	ldr	r2, [pc, #340]	; (20001738 <TimerConfig+0x274>)
200015e2:	4b55      	ldr	r3, [pc, #340]	; (20001738 <TimerConfig+0x274>)
200015e4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200015e6:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200015ea:	6253      	str	r3, [r2, #36]	; 0x24
200015ec:	4a52      	ldr	r2, [pc, #328]	; (20001738 <TimerConfig+0x274>)
200015ee:	4b52      	ldr	r3, [pc, #328]	; (20001738 <TimerConfig+0x274>)
200015f0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200015f2:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200015f6:	6253      	str	r3, [r2, #36]	; 0x24
200015f8:	4a4f      	ldr	r2, [pc, #316]	; (20001738 <TimerConfig+0x274>)
200015fa:	4b4f      	ldr	r3, [pc, #316]	; (20001738 <TimerConfig+0x274>)
200015fc:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200015fe:	f023 030f 	bic.w	r3, r3, #15
20001602:	6353      	str	r3, [r2, #52]	; 0x34
20001604:	4a4c      	ldr	r2, [pc, #304]	; (20001738 <TimerConfig+0x274>)
20001606:	4b4c      	ldr	r3, [pc, #304]	; (20001738 <TimerConfig+0x274>)
20001608:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000160a:	f043 030c 	orr.w	r3, r3, #12
2000160e:	6353      	str	r3, [r2, #52]	; 0x34
20001610:	4a49      	ldr	r2, [pc, #292]	; (20001738 <TimerConfig+0x274>)
20001612:	4b49      	ldr	r3, [pc, #292]	; (20001738 <TimerConfig+0x274>)
20001614:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001616:	f043 0301 	orr.w	r3, r3, #1
2000161a:	6353      	str	r3, [r2, #52]	; 0x34
2000161c:	4a46      	ldr	r2, [pc, #280]	; (20001738 <TimerConfig+0x274>)
2000161e:	4b46      	ldr	r3, [pc, #280]	; (20001738 <TimerConfig+0x274>)
20001620:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001622:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001626:	6353      	str	r3, [r2, #52]	; 0x34
20001628:	4a43      	ldr	r2, [pc, #268]	; (20001738 <TimerConfig+0x274>)
2000162a:	4b43      	ldr	r3, [pc, #268]	; (20001738 <TimerConfig+0x274>)
2000162c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000162e:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001632:	6353      	str	r3, [r2, #52]	; 0x34
20001634:	4a40      	ldr	r2, [pc, #256]	; (20001738 <TimerConfig+0x274>)
20001636:	4b40      	ldr	r3, [pc, #256]	; (20001738 <TimerConfig+0x274>)
20001638:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000163a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000163e:	6353      	str	r3, [r2, #52]	; 0x34
20001640:	4a3d      	ldr	r2, [pc, #244]	; (20001738 <TimerConfig+0x274>)
20001642:	4b3d      	ldr	r3, [pc, #244]	; (20001738 <TimerConfig+0x274>)
20001644:	6e5b      	ldr	r3, [r3, #100]	; 0x64
20001646:	f043 0308 	orr.w	r3, r3, #8
2000164a:	6653      	str	r3, [r2, #100]	; 0x64
2000164c:	4a3a      	ldr	r2, [pc, #232]	; (20001738 <TimerConfig+0x274>)
2000164e:	4b3a      	ldr	r3, [pc, #232]	; (20001738 <TimerConfig+0x274>)
20001650:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001652:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001656:	6293      	str	r3, [r2, #40]	; 0x28
20001658:	4a37      	ldr	r2, [pc, #220]	; (20001738 <TimerConfig+0x274>)
2000165a:	4b37      	ldr	r3, [pc, #220]	; (20001738 <TimerConfig+0x274>)
2000165c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
2000165e:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001662:	6293      	str	r3, [r2, #40]	; 0x28
20001664:	4a34      	ldr	r2, [pc, #208]	; (20001738 <TimerConfig+0x274>)
20001666:	4b34      	ldr	r3, [pc, #208]	; (20001738 <TimerConfig+0x274>)
20001668:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000166a:	f023 030f 	bic.w	r3, r3, #15
2000166e:	6393      	str	r3, [r2, #56]	; 0x38
20001670:	4a31      	ldr	r2, [pc, #196]	; (20001738 <TimerConfig+0x274>)
20001672:	4b31      	ldr	r3, [pc, #196]	; (20001738 <TimerConfig+0x274>)
20001674:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001676:	f043 030c 	orr.w	r3, r3, #12
2000167a:	6393      	str	r3, [r2, #56]	; 0x38
2000167c:	4a2e      	ldr	r2, [pc, #184]	; (20001738 <TimerConfig+0x274>)
2000167e:	4b2e      	ldr	r3, [pc, #184]	; (20001738 <TimerConfig+0x274>)
20001680:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001682:	f043 0301 	orr.w	r3, r3, #1
20001686:	6393      	str	r3, [r2, #56]	; 0x38
20001688:	4a2b      	ldr	r2, [pc, #172]	; (20001738 <TimerConfig+0x274>)
2000168a:	4b2b      	ldr	r3, [pc, #172]	; (20001738 <TimerConfig+0x274>)
2000168c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000168e:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001692:	6393      	str	r3, [r2, #56]	; 0x38
20001694:	4a28      	ldr	r2, [pc, #160]	; (20001738 <TimerConfig+0x274>)
20001696:	4b28      	ldr	r3, [pc, #160]	; (20001738 <TimerConfig+0x274>)
20001698:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000169a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000169e:	6393      	str	r3, [r2, #56]	; 0x38
200016a0:	4a25      	ldr	r2, [pc, #148]	; (20001738 <TimerConfig+0x274>)
200016a2:	4b25      	ldr	r3, [pc, #148]	; (20001738 <TimerConfig+0x274>)
200016a4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200016a6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200016aa:	6393      	str	r3, [r2, #56]	; 0x38
200016ac:	4a22      	ldr	r2, [pc, #136]	; (20001738 <TimerConfig+0x274>)
200016ae:	4b22      	ldr	r3, [pc, #136]	; (20001738 <TimerConfig+0x274>)
200016b0:	6e9b      	ldr	r3, [r3, #104]	; 0x68
200016b2:	f043 0308 	orr.w	r3, r3, #8
200016b6:	6693      	str	r3, [r2, #104]	; 0x68
200016b8:	4a1f      	ldr	r2, [pc, #124]	; (20001738 <TimerConfig+0x274>)
200016ba:	4b1f      	ldr	r3, [pc, #124]	; (20001738 <TimerConfig+0x274>)
200016bc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
200016be:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200016c2:	62d3      	str	r3, [r2, #44]	; 0x2c
200016c4:	4a1c      	ldr	r2, [pc, #112]	; (20001738 <TimerConfig+0x274>)
200016c6:	4b1c      	ldr	r3, [pc, #112]	; (20001738 <TimerConfig+0x274>)
200016c8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
200016ca:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200016ce:	62d3      	str	r3, [r2, #44]	; 0x2c
200016d0:	4a19      	ldr	r2, [pc, #100]	; (20001738 <TimerConfig+0x274>)
200016d2:	4b19      	ldr	r3, [pc, #100]	; (20001738 <TimerConfig+0x274>)
200016d4:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
200016d6:	f023 030f 	bic.w	r3, r3, #15
200016da:	63d3      	str	r3, [r2, #60]	; 0x3c
200016dc:	4a16      	ldr	r2, [pc, #88]	; (20001738 <TimerConfig+0x274>)
200016de:	4b16      	ldr	r3, [pc, #88]	; (20001738 <TimerConfig+0x274>)
200016e0:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
200016e2:	f043 030c 	orr.w	r3, r3, #12
200016e6:	63d3      	str	r3, [r2, #60]	; 0x3c
200016e8:	4a13      	ldr	r2, [pc, #76]	; (20001738 <TimerConfig+0x274>)
200016ea:	4b13      	ldr	r3, [pc, #76]	; (20001738 <TimerConfig+0x274>)
200016ec:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
200016ee:	f043 0301 	orr.w	r3, r3, #1
200016f2:	63d3      	str	r3, [r2, #60]	; 0x3c
200016f4:	4a10      	ldr	r2, [pc, #64]	; (20001738 <TimerConfig+0x274>)
200016f6:	4b10      	ldr	r3, [pc, #64]	; (20001738 <TimerConfig+0x274>)
200016f8:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
200016fa:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200016fe:	63d3      	str	r3, [r2, #60]	; 0x3c
20001700:	4a0d      	ldr	r2, [pc, #52]	; (20001738 <TimerConfig+0x274>)
20001702:	4b0d      	ldr	r3, [pc, #52]	; (20001738 <TimerConfig+0x274>)
20001704:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001706:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000170a:	63d3      	str	r3, [r2, #60]	; 0x3c
2000170c:	4a0a      	ldr	r2, [pc, #40]	; (20001738 <TimerConfig+0x274>)
2000170e:	4b0a      	ldr	r3, [pc, #40]	; (20001738 <TimerConfig+0x274>)
20001710:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001712:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001716:	63d3      	str	r3, [r2, #60]	; 0x3c
20001718:	4a07      	ldr	r2, [pc, #28]	; (20001738 <TimerConfig+0x274>)
2000171a:	4b07      	ldr	r3, [pc, #28]	; (20001738 <TimerConfig+0x274>)
2000171c:	6edb      	ldr	r3, [r3, #108]	; 0x6c
2000171e:	f043 0308 	orr.w	r3, r3, #8
20001722:	66d3      	str	r3, [r2, #108]	; 0x6c
20001724:	4a04      	ldr	r2, [pc, #16]	; (20001738 <TimerConfig+0x274>)
20001726:	4b04      	ldr	r3, [pc, #16]	; (20001738 <TimerConfig+0x274>)
20001728:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000172a:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
2000172e:	e005      	b.n	2000173c <TimerConfig+0x278>
20001730:	40020000 	.word	0x40020000
20001734:	40070000 	.word	0x40070000
20001738:	40080000 	.word	0x40080000
2000173c:	6413      	str	r3, [r2, #64]	; 0x40
2000173e:	4a10      	ldr	r2, [pc, #64]	; (20001780 <TimerConfig+0x2bc>)
20001740:	4b0f      	ldr	r3, [pc, #60]	; (20001780 <TimerConfig+0x2bc>)
20001742:	6c5b      	ldr	r3, [r3, #68]	; 0x44
20001744:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001748:	6453      	str	r3, [r2, #68]	; 0x44
2000174a:	4a0d      	ldr	r2, [pc, #52]	; (20001780 <TimerConfig+0x2bc>)
2000174c:	4b0c      	ldr	r3, [pc, #48]	; (20001780 <TimerConfig+0x2bc>)
2000174e:	6c9b      	ldr	r3, [r3, #72]	; 0x48
20001750:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001754:	6493      	str	r3, [r2, #72]	; 0x48
20001756:	4a0a      	ldr	r2, [pc, #40]	; (20001780 <TimerConfig+0x2bc>)
20001758:	4b09      	ldr	r3, [pc, #36]	; (20001780 <TimerConfig+0x2bc>)
2000175a:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
2000175c:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001760:	64d3      	str	r3, [r2, #76]	; 0x4c
20001762:	4a07      	ldr	r2, [pc, #28]	; (20001780 <TimerConfig+0x2bc>)
20001764:	4b06      	ldr	r3, [pc, #24]	; (20001780 <TimerConfig+0x2bc>)
20001766:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001768:	f043 0302 	orr.w	r3, r3, #2
2000176c:	6593      	str	r3, [r2, #88]	; 0x58
2000176e:	2010      	movs	r0, #16
20001770:	f7ff fd80 	bl	20001274 <NVIC_EnableIRQ>
20001774:	4b02      	ldr	r3, [pc, #8]	; (20001780 <TimerConfig+0x2bc>)
20001776:	2201      	movs	r2, #1
20001778:	60da      	str	r2, [r3, #12]
2000177a:	bf00      	nop
2000177c:	bd80      	pop	{r7, pc}
2000177e:	bf00      	nop
20001780:	40080000 	.word	0x40080000

20001784 <set_ram_vt>:
20001784:	b480      	push	{r7}
20001786:	b085      	sub	sp, #20
20001788:	af00      	add	r7, sp, #0
2000178a:	2300      	movs	r3, #0
2000178c:	60fb      	str	r3, [r7, #12]
2000178e:	2300      	movs	r3, #0
20001790:	607b      	str	r3, [r7, #4]
20001792:	4b16      	ldr	r3, [pc, #88]	; (200017ec <set_ram_vt+0x68>)
20001794:	60bb      	str	r3, [r7, #8]
20001796:	2300      	movs	r3, #0
20001798:	60fb      	str	r3, [r7, #12]
2000179a:	e00b      	b.n	200017b4 <set_ram_vt+0x30>
2000179c:	68bb      	ldr	r3, [r7, #8]
2000179e:	1d1a      	adds	r2, r3, #4
200017a0:	60ba      	str	r2, [r7, #8]
200017a2:	68fa      	ldr	r2, [r7, #12]
200017a4:	0092      	lsls	r2, r2, #2
200017a6:	6879      	ldr	r1, [r7, #4]
200017a8:	440a      	add	r2, r1
200017aa:	6812      	ldr	r2, [r2, #0]
200017ac:	601a      	str	r2, [r3, #0]
200017ae:	68fb      	ldr	r3, [r7, #12]
200017b0:	3301      	adds	r3, #1
200017b2:	60fb      	str	r3, [r7, #12]
200017b4:	68fb      	ldr	r3, [r7, #12]
200017b6:	2b2f      	cmp	r3, #47	; 0x2f
200017b8:	d9f0      	bls.n	2000179c <set_ram_vt+0x18>
200017ba:	4b0d      	ldr	r3, [pc, #52]	; (200017f0 <set_ram_vt+0x6c>)
200017bc:	4a0b      	ldr	r2, [pc, #44]	; (200017ec <set_ram_vt+0x68>)
200017be:	609a      	str	r2, [r3, #8]
200017c0:	4b0a      	ldr	r3, [pc, #40]	; (200017ec <set_ram_vt+0x68>)
200017c2:	4a0c      	ldr	r2, [pc, #48]	; (200017f4 <set_ram_vt+0x70>)
200017c4:	63da      	str	r2, [r3, #60]	; 0x3c
200017c6:	4b09      	ldr	r3, [pc, #36]	; (200017ec <set_ram_vt+0x68>)
200017c8:	4a0b      	ldr	r2, [pc, #44]	; (200017f8 <set_ram_vt+0x74>)
200017ca:	659a      	str	r2, [r3, #88]	; 0x58
200017cc:	4b07      	ldr	r3, [pc, #28]	; (200017ec <set_ram_vt+0x68>)
200017ce:	4a0b      	ldr	r2, [pc, #44]	; (200017fc <set_ram_vt+0x78>)
200017d0:	679a      	str	r2, [r3, #120]	; 0x78
200017d2:	4b06      	ldr	r3, [pc, #24]	; (200017ec <set_ram_vt+0x68>)
200017d4:	4a0a      	ldr	r2, [pc, #40]	; (20001800 <set_ram_vt+0x7c>)
200017d6:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
200017da:	4b04      	ldr	r3, [pc, #16]	; (200017ec <set_ram_vt+0x68>)
200017dc:	4a09      	ldr	r2, [pc, #36]	; (20001804 <set_ram_vt+0x80>)
200017de:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
200017e2:	bf00      	nop
200017e4:	3714      	adds	r7, #20
200017e6:	46bd      	mov	sp, r7
200017e8:	bc80      	pop	{r7}
200017ea:	4770      	bx	lr
200017ec:	20003c00 	.word	0x20003c00
200017f0:	e000ed00 	.word	0xe000ed00
200017f4:	200018c1 	.word	0x200018c1
200017f8:	200018dd 	.word	0x200018dd
200017fc:	20000589 	.word	0x20000589
20001800:	200005a1 	.word	0x200005a1
20001804:	20000575 	.word	0x20000575

20001808 <uart_init>:
20001808:	b480      	push	{r7}
2000180a:	af00      	add	r7, sp, #0
2000180c:	4b22      	ldr	r3, [pc, #136]	; (20001898 <uart_init+0x90>)
2000180e:	2200      	movs	r2, #0
20001810:	601a      	str	r2, [r3, #0]
20001812:	4a22      	ldr	r2, [pc, #136]	; (2000189c <uart_init+0x94>)
20001814:	4b21      	ldr	r3, [pc, #132]	; (2000189c <uart_init+0x94>)
20001816:	69db      	ldr	r3, [r3, #28]
20001818:	f043 0340 	orr.w	r3, r3, #64	; 0x40
2000181c:	61d3      	str	r3, [r2, #28]
2000181e:	4a1f      	ldr	r2, [pc, #124]	; (2000189c <uart_init+0x94>)
20001820:	4b1e      	ldr	r3, [pc, #120]	; (2000189c <uart_init+0x94>)
20001822:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001824:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001828:	6293      	str	r3, [r2, #40]	; 0x28
2000182a:	4b1d      	ldr	r3, [pc, #116]	; (200018a0 <uart_init+0x98>)
2000182c:	2204      	movs	r2, #4
2000182e:	625a      	str	r2, [r3, #36]	; 0x24
20001830:	4b1b      	ldr	r3, [pc, #108]	; (200018a0 <uart_init+0x98>)
20001832:	2200      	movs	r2, #0
20001834:	629a      	str	r2, [r3, #40]	; 0x28
20001836:	4a1a      	ldr	r2, [pc, #104]	; (200018a0 <uart_init+0x98>)
20001838:	4b19      	ldr	r3, [pc, #100]	; (200018a0 <uart_init+0x98>)
2000183a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000183c:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
20001840:	6353      	str	r3, [r2, #52]	; 0x34
20001842:	4a17      	ldr	r2, [pc, #92]	; (200018a0 <uart_init+0x98>)
20001844:	4b16      	ldr	r3, [pc, #88]	; (200018a0 <uart_init+0x98>)
20001846:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001848:	f043 0312 	orr.w	r3, r3, #18
2000184c:	6353      	str	r3, [r2, #52]	; 0x34
2000184e:	4a14      	ldr	r2, [pc, #80]	; (200018a0 <uart_init+0x98>)
20001850:	4b13      	ldr	r3, [pc, #76]	; (200018a0 <uart_init+0x98>)
20001852:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001854:	f043 0310 	orr.w	r3, r3, #16
20001858:	62d3      	str	r3, [r2, #44]	; 0x2c
2000185a:	4a11      	ldr	r2, [pc, #68]	; (200018a0 <uart_init+0x98>)
2000185c:	4b10      	ldr	r3, [pc, #64]	; (200018a0 <uart_init+0x98>)
2000185e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001860:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001864:	62d3      	str	r3, [r2, #44]	; 0x2c
20001866:	4a0e      	ldr	r2, [pc, #56]	; (200018a0 <uart_init+0x98>)
20001868:	4b0d      	ldr	r3, [pc, #52]	; (200018a0 <uart_init+0x98>)
2000186a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000186c:	f443 7340 	orr.w	r3, r3, #768	; 0x300
20001870:	f043 0301 	orr.w	r3, r3, #1
20001874:	6313      	str	r3, [r2, #48]	; 0x30
20001876:	4a0a      	ldr	r2, [pc, #40]	; (200018a0 <uart_init+0x98>)
20001878:	4b09      	ldr	r3, [pc, #36]	; (200018a0 <uart_init+0x98>)
2000187a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000187c:	f043 0310 	orr.w	r3, r3, #16
20001880:	6393      	str	r3, [r2, #56]	; 0x38
20001882:	4a07      	ldr	r2, [pc, #28]	; (200018a0 <uart_init+0x98>)
20001884:	4b06      	ldr	r3, [pc, #24]	; (200018a0 <uart_init+0x98>)
20001886:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001888:	f043 0340 	orr.w	r3, r3, #64	; 0x40
2000188c:	6393      	str	r3, [r2, #56]	; 0x38
2000188e:	bf00      	nop
20001890:	46bd      	mov	sp, r7
20001892:	bc80      	pop	{r7}
20001894:	4770      	bx	lr
20001896:	bf00      	nop
20001898:	20003cd0 	.word	0x20003cd0
2000189c:	40020000 	.word	0x40020000
200018a0:	40030000 	.word	0x40030000

200018a4 <system_init>:
200018a4:	b580      	push	{r7, lr}
200018a6:	af00      	add	r7, sp, #0
200018a8:	f7ff ff6c 	bl	20001784 <set_ram_vt>
200018ac:	f7ff fdd4 	bl	20001458 <ClkConfig>
200018b0:	f7ff fcf8 	bl	200012a4 <PortConfig>
200018b4:	f7ff fe06 	bl	200014c4 <TimerConfig>
200018b8:	f7ff ffa6 	bl	20001808 <uart_init>
200018bc:	bf00      	nop
200018be:	bd80      	pop	{r7, pc}

200018c0 <SysTick_Handler>:
200018c0:	b480      	push	{r7}
200018c2:	af00      	add	r7, sp, #0
200018c4:	4b04      	ldr	r3, [pc, #16]	; (200018d8 <SysTick_Handler+0x18>)
200018c6:	681b      	ldr	r3, [r3, #0]
200018c8:	3301      	adds	r3, #1
200018ca:	4a03      	ldr	r2, [pc, #12]	; (200018d8 <SysTick_Handler+0x18>)
200018cc:	6013      	str	r3, [r2, #0]
200018ce:	bf00      	nop
200018d0:	46bd      	mov	sp, r7
200018d2:	bc80      	pop	{r7}
200018d4:	4770      	bx	lr
200018d6:	bf00      	nop
200018d8:	20003b00 	.word	0x20003b00

200018dc <UART1_Handler>:
200018dc:	b480      	push	{r7}
200018de:	b083      	sub	sp, #12
200018e0:	af00      	add	r7, sp, #0
200018e2:	4b1d      	ldr	r3, [pc, #116]	; (20001958 <UART1_Handler+0x7c>)
200018e4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200018e6:	f003 0310 	and.w	r3, r3, #16
200018ea:	2b00      	cmp	r3, #0
200018ec:	d01f      	beq.n	2000192e <UART1_Handler+0x52>
200018ee:	e002      	b.n	200018f6 <UART1_Handler+0x1a>
200018f0:	4b19      	ldr	r3, [pc, #100]	; (20001958 <UART1_Handler+0x7c>)
200018f2:	681b      	ldr	r3, [r3, #0]
200018f4:	71fb      	strb	r3, [r7, #7]
200018f6:	4b18      	ldr	r3, [pc, #96]	; (20001958 <UART1_Handler+0x7c>)
200018f8:	699b      	ldr	r3, [r3, #24]
200018fa:	f003 0310 	and.w	r3, r3, #16
200018fe:	2b00      	cmp	r3, #0
20001900:	d0f6      	beq.n	200018f0 <UART1_Handler+0x14>
20001902:	4b16      	ldr	r3, [pc, #88]	; (2000195c <UART1_Handler+0x80>)
20001904:	681b      	ldr	r3, [r3, #0]
20001906:	80bb      	strh	r3, [r7, #4]
20001908:	4b14      	ldr	r3, [pc, #80]	; (2000195c <UART1_Handler+0x80>)
2000190a:	689b      	ldr	r3, [r3, #8]
2000190c:	085b      	lsrs	r3, r3, #1
2000190e:	807b      	strh	r3, [r7, #2]
20001910:	88ba      	ldrh	r2, [r7, #4]
20001912:	887b      	ldrh	r3, [r7, #2]
20001914:	429a      	cmp	r2, r3
20001916:	d205      	bcs.n	20001924 <UART1_Handler+0x48>
20001918:	4a10      	ldr	r2, [pc, #64]	; (2000195c <UART1_Handler+0x80>)
2000191a:	4b10      	ldr	r3, [pc, #64]	; (2000195c <UART1_Handler+0x80>)
2000191c:	681b      	ldr	r3, [r3, #0]
2000191e:	3b01      	subs	r3, #1
20001920:	6013      	str	r3, [r2, #0]
20001922:	e004      	b.n	2000192e <UART1_Handler+0x52>
20001924:	4a0d      	ldr	r2, [pc, #52]	; (2000195c <UART1_Handler+0x80>)
20001926:	4b0d      	ldr	r3, [pc, #52]	; (2000195c <UART1_Handler+0x80>)
20001928:	681b      	ldr	r3, [r3, #0]
2000192a:	3301      	adds	r3, #1
2000192c:	6013      	str	r3, [r2, #0]
2000192e:	4b0a      	ldr	r3, [pc, #40]	; (20001958 <UART1_Handler+0x7c>)
20001930:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001932:	f003 0340 	and.w	r3, r3, #64	; 0x40
20001936:	2b00      	cmp	r3, #0
20001938:	d009      	beq.n	2000194e <UART1_Handler+0x72>
2000193a:	e002      	b.n	20001942 <UART1_Handler+0x66>
2000193c:	4b06      	ldr	r3, [pc, #24]	; (20001958 <UART1_Handler+0x7c>)
2000193e:	681b      	ldr	r3, [r3, #0]
20001940:	707b      	strb	r3, [r7, #1]
20001942:	4b05      	ldr	r3, [pc, #20]	; (20001958 <UART1_Handler+0x7c>)
20001944:	699b      	ldr	r3, [r3, #24]
20001946:	f003 0310 	and.w	r3, r3, #16
2000194a:	2b00      	cmp	r3, #0
2000194c:	d0f6      	beq.n	2000193c <UART1_Handler+0x60>
2000194e:	bf00      	nop
20001950:	370c      	adds	r7, #12
20001952:	46bd      	mov	sp, r7
20001954:	bc80      	pop	{r7}
20001956:	4770      	bx	lr
20001958:	40030000 	.word	0x40030000
2000195c:	40070000 	.word	0x40070000
