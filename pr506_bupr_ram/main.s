
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b580      	push	{r7, lr}
20000002:	b096      	sub	sp, #88	; 0x58
20000004:	af00      	add	r7, sp, #0
20000006:	2300      	movs	r3, #0
20000008:	643b      	str	r3, [r7, #64]	; 0x40
2000000a:	2300      	movs	r3, #0
2000000c:	657b      	str	r3, [r7, #84]	; 0x54
2000000e:	2300      	movs	r3, #0
20000010:	653b      	str	r3, [r7, #80]	; 0x50
20000012:	2300      	movs	r3, #0
20000014:	64fb      	str	r3, [r7, #76]	; 0x4c
20000016:	2300      	movs	r3, #0
20000018:	64bb      	str	r3, [r7, #72]	; 0x48
2000001a:	2300      	movs	r3, #0
2000001c:	647b      	str	r3, [r7, #68]	; 0x44
2000001e:	2300      	movs	r3, #0
20000020:	63fb      	str	r3, [r7, #60]	; 0x3c
20000022:	2300      	movs	r3, #0
20000024:	63bb      	str	r3, [r7, #56]	; 0x38
20000026:	f001 fe81 	bl	20001d2c <system_init>
2000002a:	f000 fa47 	bl	200004bc <ssi_init>
2000002e:	f000 fab9 	bl	200005a4 <dac_init>
20000032:	f001 fb21 	bl	20001678 <adc_dma_init>
20000036:	22c8      	movs	r2, #200	; 0xc8
20000038:	2150      	movs	r1, #80	; 0x50
2000003a:	481e      	ldr	r0, [pc, #120]	; (200000b4 <main+0xb4>)
2000003c:	f000 fe7c 	bl	20000d38 <reg_init>
20000040:	22c8      	movs	r2, #200	; 0xc8
20000042:	2150      	movs	r1, #80	; 0x50
20000044:	481c      	ldr	r0, [pc, #112]	; (200000b8 <main+0xb8>)
20000046:	f000 fe77 	bl	20000d38 <reg_init>
2000004a:	f241 3288 	movw	r2, #5000	; 0x1388
2000004e:	2100      	movs	r1, #0
20000050:	481a      	ldr	r0, [pc, #104]	; (200000bc <main+0xbc>)
20000052:	f000 fe71 	bl	20000d38 <reg_init>
20000056:	f640 32b8 	movw	r2, #3000	; 0xbb8
2000005a:	2100      	movs	r1, #0
2000005c:	4818      	ldr	r0, [pc, #96]	; (200000c0 <main+0xc0>)
2000005e:	f000 fe6b 	bl	20000d38 <reg_init>
20000062:	4a18      	ldr	r2, [pc, #96]	; (200000c4 <main+0xc4>)
20000064:	2100      	movs	r1, #0
20000066:	4818      	ldr	r0, [pc, #96]	; (200000c8 <main+0xc8>)
20000068:	f000 fe66 	bl	20000d38 <reg_init>
2000006c:	4b17      	ldr	r3, [pc, #92]	; (200000cc <main+0xcc>)
2000006e:	2200      	movs	r2, #0
20000070:	701a      	strb	r2, [r3, #0]
20000072:	4b17      	ldr	r3, [pc, #92]	; (200000d0 <main+0xd0>)
20000074:	2200      	movs	r2, #0
20000076:	701a      	strb	r2, [r3, #0]
20000078:	2300      	movs	r3, #0
2000007a:	657b      	str	r3, [r7, #84]	; 0x54
2000007c:	e006      	b.n	2000008c <main+0x8c>
2000007e:	2100      	movs	r1, #0
20000080:	2000      	movs	r0, #0
20000082:	f000 f9b3 	bl	200003ec <mfilter>
20000086:	6d7b      	ldr	r3, [r7, #84]	; 0x54
20000088:	3301      	adds	r3, #1
2000008a:	657b      	str	r3, [r7, #84]	; 0x54
2000008c:	6d7b      	ldr	r3, [r7, #84]	; 0x54
2000008e:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
20000092:	dbf4      	blt.n	2000007e <main+0x7e>
20000094:	2300      	movs	r3, #0
20000096:	653b      	str	r3, [r7, #80]	; 0x50
20000098:	2300      	movs	r3, #0
2000009a:	64fb      	str	r3, [r7, #76]	; 0x4c
2000009c:	4b0d      	ldr	r3, [pc, #52]	; (200000d4 <main+0xd4>)
2000009e:	2200      	movs	r2, #0
200000a0:	601a      	str	r2, [r3, #0]
200000a2:	4b0d      	ldr	r3, [pc, #52]	; (200000d8 <main+0xd8>)
200000a4:	2200      	movs	r2, #0
200000a6:	601a      	str	r2, [r3, #0]
200000a8:	4b0c      	ldr	r3, [pc, #48]	; (200000dc <main+0xdc>)
200000aa:	2200      	movs	r2, #0
200000ac:	601a      	str	r2, [r3, #0]
200000ae:	2300      	movs	r3, #0
200000b0:	657b      	str	r3, [r7, #84]	; 0x54
200000b2:	e048      	b.n	20000146 <main+0x146>
200000b4:	20002f48 	.word	0x20002f48
200000b8:	20002f58 	.word	0x20002f58
200000bc:	20002f68 	.word	0x20002f68
200000c0:	20002f78 	.word	0x20002f78
200000c4:	0007a120 	.word	0x0007a120
200000c8:	20002f88 	.word	0x20002f88
200000cc:	20002f40 	.word	0x20002f40
200000d0:	20002f41 	.word	0x20002f41
200000d4:	20002f10 	.word	0x20002f10
200000d8:	20002f14 	.word	0x20002f14
200000dc:	20002f04 	.word	0x20002f04
200000e0:	f001 fae8 	bl	200016b4 <adc_dma_wait>
200000e4:	4ba1      	ldr	r3, [pc, #644]	; (2000036c <main+0x36c>)
200000e6:	689b      	ldr	r3, [r3, #8]
200000e8:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000ec:	6d3b      	ldr	r3, [r7, #80]	; 0x50
200000ee:	4413      	add	r3, r2
200000f0:	653b      	str	r3, [r7, #80]	; 0x50
200000f2:	4b9e      	ldr	r3, [pc, #632]	; (2000036c <main+0x36c>)
200000f4:	68db      	ldr	r3, [r3, #12]
200000f6:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000fa:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
200000fc:	4413      	add	r3, r2
200000fe:	64fb      	str	r3, [r7, #76]	; 0x4c
20000100:	4b9b      	ldr	r3, [pc, #620]	; (20000370 <main+0x370>)
20000102:	689b      	ldr	r3, [r3, #8]
20000104:	4618      	mov	r0, r3
20000106:	f000 fa23 	bl	20000550 <enc_crc>
2000010a:	4602      	mov	r2, r0
2000010c:	4b99      	ldr	r3, [pc, #612]	; (20000374 <main+0x374>)
2000010e:	681b      	ldr	r3, [r3, #0]
20000110:	4413      	add	r3, r2
20000112:	461a      	mov	r2, r3
20000114:	4b97      	ldr	r3, [pc, #604]	; (20000374 <main+0x374>)
20000116:	601a      	str	r2, [r3, #0]
20000118:	4b94      	ldr	r3, [pc, #592]	; (2000036c <main+0x36c>)
2000011a:	681b      	ldr	r3, [r3, #0]
2000011c:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000120:	4a95      	ldr	r2, [pc, #596]	; (20000378 <main+0x378>)
20000122:	6812      	ldr	r2, [r2, #0]
20000124:	4413      	add	r3, r2
20000126:	461a      	mov	r2, r3
20000128:	4b93      	ldr	r3, [pc, #588]	; (20000378 <main+0x378>)
2000012a:	601a      	str	r2, [r3, #0]
2000012c:	4b8f      	ldr	r3, [pc, #572]	; (2000036c <main+0x36c>)
2000012e:	685b      	ldr	r3, [r3, #4]
20000130:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000134:	4a91      	ldr	r2, [pc, #580]	; (2000037c <main+0x37c>)
20000136:	6812      	ldr	r2, [r2, #0]
20000138:	4413      	add	r3, r2
2000013a:	461a      	mov	r2, r3
2000013c:	4b8f      	ldr	r3, [pc, #572]	; (2000037c <main+0x37c>)
2000013e:	601a      	str	r2, [r3, #0]
20000140:	6d7b      	ldr	r3, [r7, #84]	; 0x54
20000142:	3301      	adds	r3, #1
20000144:	657b      	str	r3, [r7, #84]	; 0x54
20000146:	6d7b      	ldr	r3, [r7, #84]	; 0x54
20000148:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
2000014c:	dbc8      	blt.n	200000e0 <main+0xe0>
2000014e:	6d3b      	ldr	r3, [r7, #80]	; 0x50
20000150:	129b      	asrs	r3, r3, #10
20000152:	653b      	str	r3, [r7, #80]	; 0x50
20000154:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
20000156:	129b      	asrs	r3, r3, #10
20000158:	64fb      	str	r3, [r7, #76]	; 0x4c
2000015a:	4b86      	ldr	r3, [pc, #536]	; (20000374 <main+0x374>)
2000015c:	681b      	ldr	r3, [r3, #0]
2000015e:	129b      	asrs	r3, r3, #10
20000160:	4a84      	ldr	r2, [pc, #528]	; (20000374 <main+0x374>)
20000162:	6013      	str	r3, [r2, #0]
20000164:	4b86      	ldr	r3, [pc, #536]	; (20000380 <main+0x380>)
20000166:	f44f 7202 	mov.w	r2, #520	; 0x208
2000016a:	601a      	str	r2, [r3, #0]
2000016c:	4b83      	ldr	r3, [pc, #524]	; (2000037c <main+0x37c>)
2000016e:	681a      	ldr	r2, [r3, #0]
20000170:	4b81      	ldr	r3, [pc, #516]	; (20000378 <main+0x378>)
20000172:	681b      	ldr	r3, [r3, #0]
20000174:	129b      	asrs	r3, r3, #10
20000176:	fb92 f3f3 	sdiv	r3, r2, r3
2000017a:	4a82      	ldr	r2, [pc, #520]	; (20000384 <main+0x384>)
2000017c:	6013      	str	r3, [r2, #0]
2000017e:	4b80      	ldr	r3, [pc, #512]	; (20000380 <main+0x380>)
20000180:	681b      	ldr	r3, [r3, #0]
20000182:	4a7d      	ldr	r2, [pc, #500]	; (20000378 <main+0x378>)
20000184:	6013      	str	r3, [r2, #0]
20000186:	4b7b      	ldr	r3, [pc, #492]	; (20000374 <main+0x374>)
20000188:	681b      	ldr	r3, [r3, #0]
2000018a:	4a7f      	ldr	r2, [pc, #508]	; (20000388 <main+0x388>)
2000018c:	6013      	str	r3, [r2, #0]
2000018e:	4b79      	ldr	r3, [pc, #484]	; (20000374 <main+0x374>)
20000190:	681b      	ldr	r3, [r3, #0]
20000192:	4a7e      	ldr	r2, [pc, #504]	; (2000038c <main+0x38c>)
20000194:	6013      	str	r3, [r2, #0]
20000196:	4b77      	ldr	r3, [pc, #476]	; (20000374 <main+0x374>)
20000198:	681b      	ldr	r3, [r3, #0]
2000019a:	4618      	mov	r0, r3
2000019c:	f001 f98e 	bl	200014bc <encoder_init>
200001a0:	4b7b      	ldr	r3, [pc, #492]	; (20000390 <main+0x390>)
200001a2:	2200      	movs	r2, #0
200001a4:	601a      	str	r2, [r3, #0]
200001a6:	4b78      	ldr	r3, [pc, #480]	; (20000388 <main+0x388>)
200001a8:	681b      	ldr	r3, [r3, #0]
200001aa:	4a7a      	ldr	r2, [pc, #488]	; (20000394 <main+0x394>)
200001ac:	6013      	str	r3, [r2, #0]
200001ae:	2301      	movs	r3, #1
200001b0:	637b      	str	r3, [r7, #52]	; 0x34
200001b2:	2300      	movs	r3, #0
200001b4:	647b      	str	r3, [r7, #68]	; 0x44
200001b6:	f000 f931 	bl	2000041c <brake_on>
200001ba:	f000 f94b 	bl	20000454 <motor_off>
200001be:	4b76      	ldr	r3, [pc, #472]	; (20000398 <main+0x398>)
200001c0:	2200      	movs	r2, #0
200001c2:	601a      	str	r2, [r3, #0]
200001c4:	4b75      	ldr	r3, [pc, #468]	; (2000039c <main+0x39c>)
200001c6:	4a76      	ldr	r2, [pc, #472]	; (200003a0 <main+0x3a0>)
200001c8:	601a      	str	r2, [r3, #0]
200001ca:	4b76      	ldr	r3, [pc, #472]	; (200003a4 <main+0x3a4>)
200001cc:	2200      	movs	r2, #0
200001ce:	701a      	strb	r2, [r3, #0]
200001d0:	4b72      	ldr	r3, [pc, #456]	; (2000039c <main+0x39c>)
200001d2:	4a75      	ldr	r2, [pc, #468]	; (200003a8 <main+0x3a8>)
200001d4:	601a      	str	r2, [r3, #0]
200001d6:	f000 f92f 	bl	20000438 <brake_off>
200001da:	f000 f949 	bl	20000470 <motor_on>
200001de:	4b73      	ldr	r3, [pc, #460]	; (200003ac <main+0x3ac>)
200001e0:	2200      	movs	r2, #0
200001e2:	601a      	str	r2, [r3, #0]
200001e4:	4b72      	ldr	r3, [pc, #456]	; (200003b0 <main+0x3b0>)
200001e6:	22c8      	movs	r2, #200	; 0xc8
200001e8:	601a      	str	r2, [r3, #0]
200001ea:	4b71      	ldr	r3, [pc, #452]	; (200003b0 <main+0x3b0>)
200001ec:	2200      	movs	r2, #0
200001ee:	605a      	str	r2, [r3, #4]
200001f0:	4b6f      	ldr	r3, [pc, #444]	; (200003b0 <main+0x3b0>)
200001f2:	f06f 02c7 	mvn.w	r2, #199	; 0xc7
200001f6:	609a      	str	r2, [r3, #8]
200001f8:	4b6d      	ldr	r3, [pc, #436]	; (200003b0 <main+0x3b0>)
200001fa:	2200      	movs	r2, #0
200001fc:	60da      	str	r2, [r3, #12]
200001fe:	4b6c      	ldr	r3, [pc, #432]	; (200003b0 <main+0x3b0>)
20000200:	2200      	movs	r2, #0
20000202:	611a      	str	r2, [r3, #16]
20000204:	4b6a      	ldr	r3, [pc, #424]	; (200003b0 <main+0x3b0>)
20000206:	2200      	movs	r2, #0
20000208:	615a      	str	r2, [r3, #20]
2000020a:	4b69      	ldr	r3, [pc, #420]	; (200003b0 <main+0x3b0>)
2000020c:	2200      	movs	r2, #0
2000020e:	619a      	str	r2, [r3, #24]
20000210:	4b67      	ldr	r3, [pc, #412]	; (200003b0 <main+0x3b0>)
20000212:	2200      	movs	r2, #0
20000214:	61da      	str	r2, [r3, #28]
20000216:	f001 fa4d 	bl	200016b4 <adc_dma_wait>
2000021a:	6d3a      	ldr	r2, [r7, #80]	; 0x50
2000021c:	4b53      	ldr	r3, [pc, #332]	; (2000036c <main+0x36c>)
2000021e:	689b      	ldr	r3, [r3, #8]
20000220:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000224:	1ad3      	subs	r3, r2, r3
20000226:	633b      	str	r3, [r7, #48]	; 0x30
20000228:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
2000022a:	4b50      	ldr	r3, [pc, #320]	; (2000036c <main+0x36c>)
2000022c:	68db      	ldr	r3, [r3, #12]
2000022e:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000232:	1ad3      	subs	r3, r2, r3
20000234:	62fb      	str	r3, [r7, #44]	; 0x2c
20000236:	6b3a      	ldr	r2, [r7, #48]	; 0x30
20000238:	6afb      	ldr	r3, [r7, #44]	; 0x2c
2000023a:	4413      	add	r3, r2
2000023c:	62bb      	str	r3, [r7, #40]	; 0x28
2000023e:	4b4c      	ldr	r3, [pc, #304]	; (20000370 <main+0x370>)
20000240:	689b      	ldr	r3, [r3, #8]
20000242:	4618      	mov	r0, r3
20000244:	f000 f984 	bl	20000550 <enc_crc>
20000248:	6278      	str	r0, [r7, #36]	; 0x24
2000024a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
2000024c:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000250:	63bb      	str	r3, [r7, #56]	; 0x38
20000252:	4b46      	ldr	r3, [pc, #280]	; (2000036c <main+0x36c>)
20000254:	685b      	ldr	r3, [r3, #4]
20000256:	029a      	lsls	r2, r3, #10
20000258:	4b56      	ldr	r3, [pc, #344]	; (200003b4 <main+0x3b4>)
2000025a:	4013      	ands	r3, r2
2000025c:	4a43      	ldr	r2, [pc, #268]	; (2000036c <main+0x36c>)
2000025e:	6812      	ldr	r2, [r2, #0]
20000260:	f3c2 020b 	ubfx	r2, r2, #0, #12
20000264:	fbb3 f3f2 	udiv	r3, r3, r2
20000268:	461a      	mov	r2, r3
2000026a:	4b44      	ldr	r3, [pc, #272]	; (2000037c <main+0x37c>)
2000026c:	601a      	str	r2, [r3, #0]
2000026e:	4a52      	ldr	r2, [pc, #328]	; (200003b8 <main+0x3b8>)
20000270:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20000272:	6013      	str	r3, [r2, #0]
20000274:	4b51      	ldr	r3, [pc, #324]	; (200003bc <main+0x3bc>)
20000276:	681b      	ldr	r3, [r3, #0]
20000278:	3301      	adds	r3, #1
2000027a:	4a50      	ldr	r2, [pc, #320]	; (200003bc <main+0x3bc>)
2000027c:	6013      	str	r3, [r2, #0]
2000027e:	4b4f      	ldr	r3, [pc, #316]	; (200003bc <main+0x3bc>)
20000280:	681b      	ldr	r3, [r3, #0]
20000282:	f003 0307 	and.w	r3, r3, #7
20000286:	2b00      	cmp	r3, #0
20000288:	d124      	bne.n	200002d4 <main+0x2d4>
2000028a:	f000 fac5 	bl	20000818 <update_refposition>
2000028e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20000290:	493e      	ldr	r1, [pc, #248]	; (2000038c <main+0x38c>)
20000292:	4618      	mov	r0, r3
20000294:	f001 f918 	bl	200014c8 <get_speed>
20000298:	6238      	str	r0, [r7, #32]
2000029a:	4b40      	ldr	r3, [pc, #256]	; (2000039c <main+0x39c>)
2000029c:	681b      	ldr	r3, [r3, #0]
2000029e:	4798      	blx	r3
200002a0:	63f8      	str	r0, [r7, #60]	; 0x3c
200002a2:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
200002a4:	6a3b      	ldr	r3, [r7, #32]
200002a6:	1ad3      	subs	r3, r2, r3
200002a8:	2200      	movs	r2, #0
200002aa:	4619      	mov	r1, r3
200002ac:	4844      	ldr	r0, [pc, #272]	; (200003c0 <main+0x3c0>)
200002ae:	f000 fd49 	bl	20000d44 <reg_update>
200002b2:	4b43      	ldr	r3, [pc, #268]	; (200003c0 <main+0x3c0>)
200002b4:	68db      	ldr	r3, [r3, #12]
200002b6:	131b      	asrs	r3, r3, #12
200002b8:	647b      	str	r3, [r7, #68]	; 0x44
200002ba:	6c7b      	ldr	r3, [r7, #68]	; 0x44
200002bc:	f5b3 7fc8 	cmp.w	r3, #400	; 0x190
200002c0:	dd02      	ble.n	200002c8 <main+0x2c8>
200002c2:	f44f 73c8 	mov.w	r3, #400	; 0x190
200002c6:	647b      	str	r3, [r7, #68]	; 0x44
200002c8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
200002ca:	f513 7fc8 	cmn.w	r3, #400	; 0x190
200002ce:	da01      	bge.n	200002d4 <main+0x2d4>
200002d0:	4b3c      	ldr	r3, [pc, #240]	; (200003c4 <main+0x3c4>)
200002d2:	647b      	str	r3, [r7, #68]	; 0x44
200002d4:	f000 f9f6 	bl	200006c4 <update_telemetry>
200002d8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
200002da:	f503 732f 	add.w	r3, r3, #700	; 0x2bc
200002de:	f3c3 0309 	ubfx	r3, r3, #0, #10
200002e2:	63bb      	str	r3, [r7, #56]	; 0x38
200002e4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
200002e6:	603b      	str	r3, [r7, #0]
200002e8:	6abb      	ldr	r3, [r7, #40]	; 0x28
200002ea:	607b      	str	r3, [r7, #4]
200002ec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
200002ee:	60bb      	str	r3, [r7, #8]
200002f0:	6bba      	ldr	r2, [r7, #56]	; 0x38
200002f2:	f107 010c 	add.w	r1, r7, #12
200002f6:	463b      	mov	r3, r7
200002f8:	4618      	mov	r0, r3
200002fa:	f000 fd49 	bl	20000d90 <abc_to_dq>
200002fe:	68fb      	ldr	r3, [r7, #12]
20000300:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
20000304:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
20000308:	693b      	ldr	r3, [r7, #16]
2000030a:	2b00      	cmp	r3, #0
2000030c:	bfb8      	it	lt
2000030e:	425b      	neglt	r3, r3
20000310:	4413      	add	r3, r2
20000312:	61fb      	str	r3, [r7, #28]
20000314:	4b1e      	ldr	r3, [pc, #120]	; (20000390 <main+0x390>)
20000316:	681b      	ldr	r3, [r3, #0]
20000318:	4619      	mov	r1, r3
2000031a:	69f8      	ldr	r0, [r7, #28]
2000031c:	f000 f866 	bl	200003ec <mfilter>
20000320:	4602      	mov	r2, r0
20000322:	4b1b      	ldr	r3, [pc, #108]	; (20000390 <main+0x390>)
20000324:	601a      	str	r2, [r3, #0]
20000326:	68fb      	ldr	r3, [r7, #12]
20000328:	425b      	negs	r3, r3
2000032a:	61bb      	str	r3, [r7, #24]
2000032c:	693b      	ldr	r3, [r7, #16]
2000032e:	6c7a      	ldr	r2, [r7, #68]	; 0x44
20000330:	1ad3      	subs	r3, r2, r3
20000332:	617b      	str	r3, [r7, #20]
20000334:	6cba      	ldr	r2, [r7, #72]	; 0x48
20000336:	69b9      	ldr	r1, [r7, #24]
20000338:	4823      	ldr	r0, [pc, #140]	; (200003c8 <main+0x3c8>)
2000033a:	f000 fd03 	bl	20000d44 <reg_update>
2000033e:	6cba      	ldr	r2, [r7, #72]	; 0x48
20000340:	6979      	ldr	r1, [r7, #20]
20000342:	4822      	ldr	r0, [pc, #136]	; (200003cc <main+0x3cc>)
20000344:	f000 fcfe 	bl	20000d44 <reg_update>
20000348:	4b1f      	ldr	r3, [pc, #124]	; (200003c8 <main+0x3c8>)
2000034a:	68db      	ldr	r3, [r3, #12]
2000034c:	109b      	asrs	r3, r3, #2
2000034e:	60fb      	str	r3, [r7, #12]
20000350:	4b1e      	ldr	r3, [pc, #120]	; (200003cc <main+0x3cc>)
20000352:	68db      	ldr	r3, [r3, #12]
20000354:	109b      	asrs	r3, r3, #2
20000356:	613b      	str	r3, [r7, #16]
20000358:	6bba      	ldr	r2, [r7, #56]	; 0x38
2000035a:	f107 010c 	add.w	r1, r7, #12
2000035e:	463b      	mov	r3, r7
20000360:	4618      	mov	r0, r3
20000362:	f000 ff2d 	bl	200011c0 <svpwm>
20000366:	64b8      	str	r0, [r7, #72]	; 0x48
20000368:	e032      	b.n	200003d0 <main+0x3d0>
2000036a:	bf00      	nop
2000036c:	20003600 	.word	0x20003600
20000370:	40040000 	.word	0x40040000
20000374:	20002f10 	.word	0x20002f10
20000378:	20002f04 	.word	0x20002f04
2000037c:	20002f14 	.word	0x20002f14
20000380:	20002f0c 	.word	0x20002f0c
20000384:	20002f08 	.word	0x20002f08
20000388:	20002f00 	.word	0x20002f00
2000038c:	20002f28 	.word	0x20002f28
20000390:	20002f34 	.word	0x20002f34
20000394:	20002f2c 	.word	0x20002f2c
20000398:	20002fa0 	.word	0x20002fa0
2000039c:	20002f44 	.word	0x20002f44
200003a0:	20000a31 	.word	0x20000a31
200003a4:	20002f41 	.word	0x20002f41
200003a8:	2000098d 	.word	0x2000098d
200003ac:	20002fc4 	.word	0x20002fc4
200003b0:	20002fa4 	.word	0x20002fa4
200003b4:	003ffc00 	.word	0x003ffc00
200003b8:	20002f30 	.word	0x20002f30
200003bc:	20002f18 	.word	0x20002f18
200003c0:	20002f68 	.word	0x20002f68
200003c4:	fffffe70 	.word	0xfffffe70
200003c8:	20002f48 	.word	0x20002f48
200003cc:	20002f58 	.word	0x20002f58
200003d0:	683b      	ldr	r3, [r7, #0]
200003d2:	4618      	mov	r0, r3
200003d4:	f000 f946 	bl	20000664 <pwm_seta>
200003d8:	687b      	ldr	r3, [r7, #4]
200003da:	4618      	mov	r0, r3
200003dc:	f000 f952 	bl	20000684 <pwm_setb>
200003e0:	68bb      	ldr	r3, [r7, #8]
200003e2:	4618      	mov	r0, r3
200003e4:	f000 f95e 	bl	200006a4 <pwm_setc>
200003e8:	e715      	b.n	20000216 <main+0x216>
200003ea:	bf00      	nop

200003ec <mfilter>:
200003ec:	b480      	push	{r7}
200003ee:	b083      	sub	sp, #12
200003f0:	af00      	add	r7, sp, #0
200003f2:	6078      	str	r0, [r7, #4]
200003f4:	6039      	str	r1, [r7, #0]
200003f6:	687a      	ldr	r2, [r7, #4]
200003f8:	4613      	mov	r3, r2
200003fa:	009b      	lsls	r3, r3, #2
200003fc:	4413      	add	r3, r2
200003fe:	005b      	lsls	r3, r3, #1
20000400:	4619      	mov	r1, r3
20000402:	683b      	ldr	r3, [r7, #0]
20000404:	f240 32f6 	movw	r2, #1014	; 0x3f6
20000408:	fb02 f303 	mul.w	r3, r2, r3
2000040c:	440b      	add	r3, r1
2000040e:	129b      	asrs	r3, r3, #10
20000410:	4618      	mov	r0, r3
20000412:	370c      	adds	r7, #12
20000414:	46bd      	mov	sp, r7
20000416:	bc80      	pop	{r7}
20000418:	4770      	bx	lr
2000041a:	bf00      	nop

2000041c <brake_on>:
2000041c:	b480      	push	{r7}
2000041e:	af00      	add	r7, sp, #0
20000420:	4a04      	ldr	r2, [pc, #16]	; (20000434 <brake_on+0x18>)
20000422:	4b04      	ldr	r3, [pc, #16]	; (20000434 <brake_on+0x18>)
20000424:	681b      	ldr	r3, [r3, #0]
20000426:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
2000042a:	6013      	str	r3, [r2, #0]
2000042c:	bf00      	nop
2000042e:	46bd      	mov	sp, r7
20000430:	bc80      	pop	{r7}
20000432:	4770      	bx	lr
20000434:	400e8000 	.word	0x400e8000

20000438 <brake_off>:
20000438:	b480      	push	{r7}
2000043a:	af00      	add	r7, sp, #0
2000043c:	4a04      	ldr	r2, [pc, #16]	; (20000450 <brake_off+0x18>)
2000043e:	4b04      	ldr	r3, [pc, #16]	; (20000450 <brake_off+0x18>)
20000440:	681b      	ldr	r3, [r3, #0]
20000442:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
20000446:	6013      	str	r3, [r2, #0]
20000448:	bf00      	nop
2000044a:	46bd      	mov	sp, r7
2000044c:	bc80      	pop	{r7}
2000044e:	4770      	bx	lr
20000450:	400e8000 	.word	0x400e8000

20000454 <motor_off>:
20000454:	b480      	push	{r7}
20000456:	af00      	add	r7, sp, #0
20000458:	4a04      	ldr	r2, [pc, #16]	; (2000046c <motor_off+0x18>)
2000045a:	4b04      	ldr	r3, [pc, #16]	; (2000046c <motor_off+0x18>)
2000045c:	681b      	ldr	r3, [r3, #0]
2000045e:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20000462:	6013      	str	r3, [r2, #0]
20000464:	bf00      	nop
20000466:	46bd      	mov	sp, r7
20000468:	bc80      	pop	{r7}
2000046a:	4770      	bx	lr
2000046c:	400e8000 	.word	0x400e8000

20000470 <motor_on>:
20000470:	b480      	push	{r7}
20000472:	af00      	add	r7, sp, #0
20000474:	4a04      	ldr	r2, [pc, #16]	; (20000488 <motor_on+0x18>)
20000476:	4b04      	ldr	r3, [pc, #16]	; (20000488 <motor_on+0x18>)
20000478:	681b      	ldr	r3, [r3, #0]
2000047a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
2000047e:	6013      	str	r3, [r2, #0]
20000480:	bf00      	nop
20000482:	46bd      	mov	sp, r7
20000484:	bc80      	pop	{r7}
20000486:	4770      	bx	lr
20000488:	400e8000 	.word	0x400e8000

2000048c <sleep>:
2000048c:	b480      	push	{r7}
2000048e:	b085      	sub	sp, #20
20000490:	af00      	add	r7, sp, #0
20000492:	6078      	str	r0, [r7, #4]
20000494:	4b08      	ldr	r3, [pc, #32]	; (200004b8 <sleep+0x2c>)
20000496:	681a      	ldr	r2, [r3, #0]
20000498:	687b      	ldr	r3, [r7, #4]
2000049a:	4413      	add	r3, r2
2000049c:	60fb      	str	r3, [r7, #12]
2000049e:	bf00      	nop
200004a0:	4b05      	ldr	r3, [pc, #20]	; (200004b8 <sleep+0x2c>)
200004a2:	681a      	ldr	r2, [r3, #0]
200004a4:	68fb      	ldr	r3, [r7, #12]
200004a6:	429a      	cmp	r2, r3
200004a8:	d3fa      	bcc.n	200004a0 <sleep+0x14>
200004aa:	bf00      	nop
200004ac:	4618      	mov	r0, r3
200004ae:	3714      	adds	r7, #20
200004b0:	46bd      	mov	sp, r7
200004b2:	bc80      	pop	{r7}
200004b4:	4770      	bx	lr
200004b6:	bf00      	nop
200004b8:	20003000 	.word	0x20003000

200004bc <ssi_init>:
200004bc:	b480      	push	{r7}
200004be:	af00      	add	r7, sp, #0
200004c0:	4a0c      	ldr	r2, [pc, #48]	; (200004f4 <ssi_init+0x38>)
200004c2:	4b0c      	ldr	r3, [pc, #48]	; (200004f4 <ssi_init+0x38>)
200004c4:	69db      	ldr	r3, [r3, #28]
200004c6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200004ca:	61d3      	str	r3, [r2, #28]
200004cc:	4b09      	ldr	r3, [pc, #36]	; (200004f4 <ssi_init+0x38>)
200004ce:	4a0a      	ldr	r2, [pc, #40]	; (200004f8 <ssi_init+0x3c>)
200004d0:	62da      	str	r2, [r3, #44]	; 0x2c
200004d2:	4b0a      	ldr	r3, [pc, #40]	; (200004fc <ssi_init+0x40>)
200004d4:	2200      	movs	r2, #0
200004d6:	605a      	str	r2, [r3, #4]
200004d8:	4b08      	ldr	r3, [pc, #32]	; (200004fc <ssi_init+0x40>)
200004da:	2206      	movs	r2, #6
200004dc:	611a      	str	r2, [r3, #16]
200004de:	4b07      	ldr	r3, [pc, #28]	; (200004fc <ssi_init+0x40>)
200004e0:	f240 221f 	movw	r2, #543	; 0x21f
200004e4:	601a      	str	r2, [r3, #0]
200004e6:	4b05      	ldr	r3, [pc, #20]	; (200004fc <ssi_init+0x40>)
200004e8:	2202      	movs	r2, #2
200004ea:	605a      	str	r2, [r3, #4]
200004ec:	bf00      	nop
200004ee:	46bd      	mov	sp, r7
200004f0:	bc80      	pop	{r7}
200004f2:	4770      	bx	lr
200004f4:	40020000 	.word	0x40020000
200004f8:	0100000a 	.word	0x0100000a
200004fc:	40040000 	.word	0x40040000

20000500 <b2g>:
20000500:	b480      	push	{r7}
20000502:	b083      	sub	sp, #12
20000504:	af00      	add	r7, sp, #0
20000506:	6078      	str	r0, [r7, #4]
20000508:	687b      	ldr	r3, [r7, #4]
2000050a:	085a      	lsrs	r2, r3, #1
2000050c:	687b      	ldr	r3, [r7, #4]
2000050e:	4053      	eors	r3, r2
20000510:	4618      	mov	r0, r3
20000512:	370c      	adds	r7, #12
20000514:	46bd      	mov	sp, r7
20000516:	bc80      	pop	{r7}
20000518:	4770      	bx	lr
2000051a:	bf00      	nop

2000051c <g2b>:
2000051c:	b480      	push	{r7}
2000051e:	b085      	sub	sp, #20
20000520:	af00      	add	r7, sp, #0
20000522:	6078      	str	r0, [r7, #4]
20000524:	2300      	movs	r3, #0
20000526:	60fb      	str	r3, [r7, #12]
20000528:	2300      	movs	r3, #0
2000052a:	60fb      	str	r3, [r7, #12]
2000052c:	e006      	b.n	2000053c <g2b+0x20>
2000052e:	68fa      	ldr	r2, [r7, #12]
20000530:	687b      	ldr	r3, [r7, #4]
20000532:	4053      	eors	r3, r2
20000534:	60fb      	str	r3, [r7, #12]
20000536:	687b      	ldr	r3, [r7, #4]
20000538:	085b      	lsrs	r3, r3, #1
2000053a:	607b      	str	r3, [r7, #4]
2000053c:	687b      	ldr	r3, [r7, #4]
2000053e:	2b00      	cmp	r3, #0
20000540:	d1f5      	bne.n	2000052e <g2b+0x12>
20000542:	68fb      	ldr	r3, [r7, #12]
20000544:	4618      	mov	r0, r3
20000546:	3714      	adds	r7, #20
20000548:	46bd      	mov	sp, r7
2000054a:	bc80      	pop	{r7}
2000054c:	4770      	bx	lr
2000054e:	bf00      	nop

20000550 <enc_crc>:
20000550:	b480      	push	{r7}
20000552:	b085      	sub	sp, #20
20000554:	af00      	add	r7, sp, #0
20000556:	6078      	str	r0, [r7, #4]
20000558:	687b      	ldr	r3, [r7, #4]
2000055a:	60bb      	str	r3, [r7, #8]
2000055c:	2300      	movs	r3, #0
2000055e:	60fb      	str	r3, [r7, #12]
20000560:	e006      	b.n	20000570 <enc_crc+0x20>
20000562:	68fa      	ldr	r2, [r7, #12]
20000564:	68bb      	ldr	r3, [r7, #8]
20000566:	4053      	eors	r3, r2
20000568:	60fb      	str	r3, [r7, #12]
2000056a:	68bb      	ldr	r3, [r7, #8]
2000056c:	085b      	lsrs	r3, r3, #1
2000056e:	60bb      	str	r3, [r7, #8]
20000570:	68bb      	ldr	r3, [r7, #8]
20000572:	2b00      	cmp	r3, #0
20000574:	d1f5      	bne.n	20000562 <enc_crc+0x12>
20000576:	68fb      	ldr	r3, [r7, #12]
20000578:	f003 0301 	and.w	r3, r3, #1
2000057c:	2b00      	cmp	r3, #0
2000057e:	d107      	bne.n	20000590 <enc_crc+0x40>
20000580:	687b      	ldr	r3, [r7, #4]
20000582:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000586:	4a06      	ldr	r2, [pc, #24]	; (200005a0 <enc_crc+0x50>)
20000588:	6013      	str	r3, [r2, #0]
2000058a:	4b05      	ldr	r3, [pc, #20]	; (200005a0 <enc_crc+0x50>)
2000058c:	681b      	ldr	r3, [r3, #0]
2000058e:	2b00      	cmp	r3, #0
20000590:	4b03      	ldr	r3, [pc, #12]	; (200005a0 <enc_crc+0x50>)
20000592:	681b      	ldr	r3, [r3, #0]
20000594:	4618      	mov	r0, r3
20000596:	3714      	adds	r7, #20
20000598:	46bd      	mov	sp, r7
2000059a:	bc80      	pop	{r7}
2000059c:	4770      	bx	lr
2000059e:	bf00      	nop
200005a0:	20002fc8 	.word	0x20002fc8

200005a4 <dac_init>:
200005a4:	b480      	push	{r7}
200005a6:	af00      	add	r7, sp, #0
200005a8:	4a07      	ldr	r2, [pc, #28]	; (200005c8 <dac_init+0x24>)
200005aa:	4b07      	ldr	r3, [pc, #28]	; (200005c8 <dac_init+0x24>)
200005ac:	69db      	ldr	r3, [r3, #28]
200005ae:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
200005b2:	61d3      	str	r3, [r2, #28]
200005b4:	4a05      	ldr	r2, [pc, #20]	; (200005cc <dac_init+0x28>)
200005b6:	4b05      	ldr	r3, [pc, #20]	; (200005cc <dac_init+0x28>)
200005b8:	681b      	ldr	r3, [r3, #0]
200005ba:	f043 030c 	orr.w	r3, r3, #12
200005be:	6013      	str	r3, [r2, #0]
200005c0:	bf00      	nop
200005c2:	46bd      	mov	sp, r7
200005c4:	bc80      	pop	{r7}
200005c6:	4770      	bx	lr
200005c8:	40020000 	.word	0x40020000
200005cc:	40090000 	.word	0x40090000

200005d0 <encoder_start>:
200005d0:	b480      	push	{r7}
200005d2:	af00      	add	r7, sp, #0
200005d4:	4b03      	ldr	r3, [pc, #12]	; (200005e4 <encoder_start+0x14>)
200005d6:	f240 5255 	movw	r2, #1365	; 0x555
200005da:	609a      	str	r2, [r3, #8]
200005dc:	bf00      	nop
200005de:	46bd      	mov	sp, r7
200005e0:	bc80      	pop	{r7}
200005e2:	4770      	bx	lr
200005e4:	40040000 	.word	0x40040000

200005e8 <ADC_Handler>:
200005e8:	b480      	push	{r7}
200005ea:	af00      	add	r7, sp, #0
200005ec:	4b02      	ldr	r3, [pc, #8]	; (200005f8 <ADC_Handler+0x10>)
200005ee:	699b      	ldr	r3, [r3, #24]
200005f0:	bf00      	nop
200005f2:	46bd      	mov	sp, r7
200005f4:	bc80      	pop	{r7}
200005f6:	4770      	bx	lr
200005f8:	40088000 	.word	0x40088000

200005fc <TIMER1_Handler>:
200005fc:	b480      	push	{r7}
200005fe:	af00      	add	r7, sp, #0
20000600:	4b03      	ldr	r3, [pc, #12]	; (20000610 <TIMER1_Handler+0x14>)
20000602:	2200      	movs	r2, #0
20000604:	655a      	str	r2, [r3, #84]	; 0x54
20000606:	bf00      	nop
20000608:	46bd      	mov	sp, r7
2000060a:	bc80      	pop	{r7}
2000060c:	4770      	bx	lr
2000060e:	bf00      	nop
20000610:	40070000 	.word	0x40070000

20000614 <TIMER3_Handler>:
20000614:	b580      	push	{r7, lr}
20000616:	af00      	add	r7, sp, #0
20000618:	4b04      	ldr	r3, [pc, #16]	; (2000062c <TIMER3_Handler+0x18>)
2000061a:	2200      	movs	r2, #0
2000061c:	655a      	str	r2, [r3, #84]	; 0x54
2000061e:	f7ff ffd7 	bl	200005d0 <encoder_start>
20000622:	f001 f831 	bl	20001688 <adc_dma_start>
20000626:	bf00      	nop
20000628:	bd80      	pop	{r7, pc}
2000062a:	bf00      	nop
2000062c:	40080000 	.word	0x40080000

20000630 <get_phase>:
20000630:	b580      	push	{r7, lr}
20000632:	af00      	add	r7, sp, #0
20000634:	4b0a      	ldr	r3, [pc, #40]	; (20000660 <get_phase+0x30>)
20000636:	f240 5255 	movw	r2, #1365	; 0x555
2000063a:	609a      	str	r2, [r3, #8]
2000063c:	bf00      	nop
2000063e:	4b08      	ldr	r3, [pc, #32]	; (20000660 <get_phase+0x30>)
20000640:	68db      	ldr	r3, [r3, #12]
20000642:	f003 0304 	and.w	r3, r3, #4
20000646:	2b00      	cmp	r3, #0
20000648:	d0f9      	beq.n	2000063e <get_phase+0xe>
2000064a:	4b05      	ldr	r3, [pc, #20]	; (20000660 <get_phase+0x30>)
2000064c:	689b      	ldr	r3, [r3, #8]
2000064e:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000652:	4618      	mov	r0, r3
20000654:	f7ff ff62 	bl	2000051c <g2b>
20000658:	4603      	mov	r3, r0
2000065a:	4618      	mov	r0, r3
2000065c:	bd80      	pop	{r7, pc}
2000065e:	bf00      	nop
20000660:	40040000 	.word	0x40040000

20000664 <pwm_seta>:
20000664:	b480      	push	{r7}
20000666:	b083      	sub	sp, #12
20000668:	af00      	add	r7, sp, #0
2000066a:	6078      	str	r0, [r7, #4]
2000066c:	4a04      	ldr	r2, [pc, #16]	; (20000680 <pwm_seta+0x1c>)
2000066e:	687b      	ldr	r3, [r7, #4]
20000670:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000674:	6113      	str	r3, [r2, #16]
20000676:	bf00      	nop
20000678:	370c      	adds	r7, #12
2000067a:	46bd      	mov	sp, r7
2000067c:	bc80      	pop	{r7}
2000067e:	4770      	bx	lr
20000680:	40080000 	.word	0x40080000

20000684 <pwm_setb>:
20000684:	b480      	push	{r7}
20000686:	b083      	sub	sp, #12
20000688:	af00      	add	r7, sp, #0
2000068a:	6078      	str	r0, [r7, #4]
2000068c:	4a04      	ldr	r2, [pc, #16]	; (200006a0 <pwm_setb+0x1c>)
2000068e:	687b      	ldr	r3, [r7, #4]
20000690:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000694:	6153      	str	r3, [r2, #20]
20000696:	bf00      	nop
20000698:	370c      	adds	r7, #12
2000069a:	46bd      	mov	sp, r7
2000069c:	bc80      	pop	{r7}
2000069e:	4770      	bx	lr
200006a0:	40080000 	.word	0x40080000

200006a4 <pwm_setc>:
200006a4:	b480      	push	{r7}
200006a6:	b083      	sub	sp, #12
200006a8:	af00      	add	r7, sp, #0
200006aa:	6078      	str	r0, [r7, #4]
200006ac:	4a04      	ldr	r2, [pc, #16]	; (200006c0 <pwm_setc+0x1c>)
200006ae:	687b      	ldr	r3, [r7, #4]
200006b0:	f503 7300 	add.w	r3, r3, #512	; 0x200
200006b4:	6193      	str	r3, [r2, #24]
200006b6:	bf00      	nop
200006b8:	370c      	adds	r7, #12
200006ba:	46bd      	mov	sp, r7
200006bc:	bc80      	pop	{r7}
200006be:	4770      	bx	lr
200006c0:	40080000 	.word	0x40080000

200006c4 <update_telemetry>:
200006c4:	b480      	push	{r7}
200006c6:	b083      	sub	sp, #12
200006c8:	af00      	add	r7, sp, #0
200006ca:	4b49      	ldr	r3, [pc, #292]	; (200007f0 <update_telemetry+0x12c>)
200006cc:	6d5b      	ldr	r3, [r3, #84]	; 0x54
200006ce:	f003 0302 	and.w	r3, r3, #2
200006d2:	2b00      	cmp	r3, #0
200006d4:	d075      	beq.n	200007c2 <update_telemetry+0xfe>
200006d6:	4b46      	ldr	r3, [pc, #280]	; (200007f0 <update_telemetry+0x12c>)
200006d8:	2200      	movs	r2, #0
200006da:	655a      	str	r2, [r3, #84]	; 0x54
200006dc:	4a45      	ldr	r2, [pc, #276]	; (200007f4 <update_telemetry+0x130>)
200006de:	4b45      	ldr	r3, [pc, #276]	; (200007f4 <update_telemetry+0x130>)
200006e0:	681b      	ldr	r3, [r3, #0]
200006e2:	f043 0301 	orr.w	r3, r3, #1
200006e6:	6013      	str	r3, [r2, #0]
200006e8:	4a43      	ldr	r2, [pc, #268]	; (200007f8 <update_telemetry+0x134>)
200006ea:	4b43      	ldr	r3, [pc, #268]	; (200007f8 <update_telemetry+0x134>)
200006ec:	699b      	ldr	r3, [r3, #24]
200006ee:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200006f2:	6193      	str	r3, [r2, #24]
200006f4:	4b3e      	ldr	r3, [pc, #248]	; (200007f0 <update_telemetry+0x12c>)
200006f6:	695b      	ldr	r3, [r3, #20]
200006f8:	b29b      	uxth	r3, r3
200006fa:	f503 7396 	add.w	r3, r3, #300	; 0x12c
200006fe:	80fb      	strh	r3, [r7, #6]
20000700:	88fb      	ldrh	r3, [r7, #6]
20000702:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
20000706:	d205      	bcs.n	20000714 <update_telemetry+0x50>
20000708:	4a39      	ldr	r2, [pc, #228]	; (200007f0 <update_telemetry+0x12c>)
2000070a:	4b39      	ldr	r3, [pc, #228]	; (200007f0 <update_telemetry+0x12c>)
2000070c:	681b      	ldr	r3, [r3, #0]
2000070e:	3301      	adds	r3, #1
20000710:	6013      	str	r3, [r2, #0]
20000712:	e008      	b.n	20000726 <update_telemetry+0x62>
20000714:	88fb      	ldrh	r3, [r7, #6]
20000716:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
2000071a:	d904      	bls.n	20000726 <update_telemetry+0x62>
2000071c:	4a34      	ldr	r2, [pc, #208]	; (200007f0 <update_telemetry+0x12c>)
2000071e:	4b34      	ldr	r3, [pc, #208]	; (200007f0 <update_telemetry+0x12c>)
20000720:	681b      	ldr	r3, [r3, #0]
20000722:	3b01      	subs	r3, #1
20000724:	6013      	str	r3, [r2, #0]
20000726:	4b35      	ldr	r3, [pc, #212]	; (200007fc <update_telemetry+0x138>)
20000728:	681a      	ldr	r2, [r3, #0]
2000072a:	4b35      	ldr	r3, [pc, #212]	; (20000800 <update_telemetry+0x13c>)
2000072c:	681b      	ldr	r3, [r3, #0]
2000072e:	1ad3      	subs	r3, r2, r3
20000730:	4a34      	ldr	r2, [pc, #208]	; (20000804 <update_telemetry+0x140>)
20000732:	fb82 1203 	smull	r1, r2, r2, r3
20000736:	441a      	add	r2, r3
20000738:	1152      	asrs	r2, r2, #5
2000073a:	17db      	asrs	r3, r3, #31
2000073c:	1ad3      	subs	r3, r2, r3
2000073e:	80bb      	strh	r3, [r7, #4]
20000740:	2300      	movs	r3, #0
20000742:	70fb      	strb	r3, [r7, #3]
20000744:	4b30      	ldr	r3, [pc, #192]	; (20000808 <update_telemetry+0x144>)
20000746:	4a31      	ldr	r2, [pc, #196]	; (2000080c <update_telemetry+0x148>)
20000748:	6812      	ldr	r2, [r2, #0]
2000074a:	601a      	str	r2, [r3, #0]
2000074c:	b2d2      	uxtb	r2, r2
2000074e:	78fb      	ldrb	r3, [r7, #3]
20000750:	4053      	eors	r3, r2
20000752:	70fb      	strb	r3, [r7, #3]
20000754:	4a2c      	ldr	r2, [pc, #176]	; (20000808 <update_telemetry+0x144>)
20000756:	4b2d      	ldr	r3, [pc, #180]	; (2000080c <update_telemetry+0x148>)
20000758:	681b      	ldr	r3, [r3, #0]
2000075a:	121b      	asrs	r3, r3, #8
2000075c:	6013      	str	r3, [r2, #0]
2000075e:	b2da      	uxtb	r2, r3
20000760:	78fb      	ldrb	r3, [r7, #3]
20000762:	4053      	eors	r3, r2
20000764:	70fb      	strb	r3, [r7, #3]
20000766:	4a28      	ldr	r2, [pc, #160]	; (20000808 <update_telemetry+0x144>)
20000768:	f9b7 3004 	ldrsh.w	r3, [r7, #4]
2000076c:	6013      	str	r3, [r2, #0]
2000076e:	b2da      	uxtb	r2, r3
20000770:	78fb      	ldrb	r3, [r7, #3]
20000772:	4053      	eors	r3, r2
20000774:	70fb      	strb	r3, [r7, #3]
20000776:	4a24      	ldr	r2, [pc, #144]	; (20000808 <update_telemetry+0x144>)
20000778:	f9b7 3004 	ldrsh.w	r3, [r7, #4]
2000077c:	121b      	asrs	r3, r3, #8
2000077e:	b21b      	sxth	r3, r3
20000780:	6013      	str	r3, [r2, #0]
20000782:	b2da      	uxtb	r2, r3
20000784:	78fb      	ldrb	r3, [r7, #3]
20000786:	4053      	eors	r3, r2
20000788:	70fb      	strb	r3, [r7, #3]
2000078a:	4b1f      	ldr	r3, [pc, #124]	; (20000808 <update_telemetry+0x144>)
2000078c:	4a20      	ldr	r2, [pc, #128]	; (20000810 <update_telemetry+0x14c>)
2000078e:	6812      	ldr	r2, [r2, #0]
20000790:	601a      	str	r2, [r3, #0]
20000792:	b2d2      	uxtb	r2, r2
20000794:	78fb      	ldrb	r3, [r7, #3]
20000796:	4053      	eors	r3, r2
20000798:	70fb      	strb	r3, [r7, #3]
2000079a:	4a1b      	ldr	r2, [pc, #108]	; (20000808 <update_telemetry+0x144>)
2000079c:	4b1c      	ldr	r3, [pc, #112]	; (20000810 <update_telemetry+0x14c>)
2000079e:	681b      	ldr	r3, [r3, #0]
200007a0:	121b      	asrs	r3, r3, #8
200007a2:	6013      	str	r3, [r2, #0]
200007a4:	b2da      	uxtb	r2, r3
200007a6:	78fb      	ldrb	r3, [r7, #3]
200007a8:	4053      	eors	r3, r2
200007aa:	70fb      	strb	r3, [r7, #3]
200007ac:	4b16      	ldr	r3, [pc, #88]	; (20000808 <update_telemetry+0x144>)
200007ae:	4a19      	ldr	r2, [pc, #100]	; (20000814 <update_telemetry+0x150>)
200007b0:	7812      	ldrb	r2, [r2, #0]
200007b2:	601a      	str	r2, [r3, #0]
200007b4:	b2d2      	uxtb	r2, r2
200007b6:	78fb      	ldrb	r3, [r7, #3]
200007b8:	4053      	eors	r3, r2
200007ba:	70fb      	strb	r3, [r7, #3]
200007bc:	4a12      	ldr	r2, [pc, #72]	; (20000808 <update_telemetry+0x144>)
200007be:	78fb      	ldrb	r3, [r7, #3]
200007c0:	6013      	str	r3, [r2, #0]
200007c2:	4b11      	ldr	r3, [pc, #68]	; (20000808 <update_telemetry+0x144>)
200007c4:	699b      	ldr	r3, [r3, #24]
200007c6:	f003 0308 	and.w	r3, r3, #8
200007ca:	2b00      	cmp	r3, #0
200007cc:	d10b      	bne.n	200007e6 <update_telemetry+0x122>
200007ce:	4a09      	ldr	r2, [pc, #36]	; (200007f4 <update_telemetry+0x130>)
200007d0:	4b08      	ldr	r3, [pc, #32]	; (200007f4 <update_telemetry+0x130>)
200007d2:	681b      	ldr	r3, [r3, #0]
200007d4:	f023 0301 	bic.w	r3, r3, #1
200007d8:	6013      	str	r3, [r2, #0]
200007da:	4a07      	ldr	r2, [pc, #28]	; (200007f8 <update_telemetry+0x134>)
200007dc:	4b06      	ldr	r3, [pc, #24]	; (200007f8 <update_telemetry+0x134>)
200007de:	699b      	ldr	r3, [r3, #24]
200007e0:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
200007e4:	6193      	str	r3, [r2, #24]
200007e6:	bf00      	nop
200007e8:	370c      	adds	r7, #12
200007ea:	46bd      	mov	sp, r7
200007ec:	bc80      	pop	{r7}
200007ee:	4770      	bx	lr
200007f0:	40070000 	.word	0x40070000
200007f4:	400a8000 	.word	0x400a8000
200007f8:	400b0000 	.word	0x400b0000
200007fc:	20002f28 	.word	0x20002f28
20000800:	20002f2c 	.word	0x20002f2c
20000804:	8fb823ef 	.word	0x8fb823ef
20000808:	40030000 	.word	0x40030000
2000080c:	20002f3c 	.word	0x20002f3c
20000810:	20002f34 	.word	0x20002f34
20000814:	20002f41 	.word	0x20002f41

20000818 <update_refposition>:
20000818:	b480      	push	{r7}
2000081a:	b089      	sub	sp, #36	; 0x24
2000081c:	af00      	add	r7, sp, #0
2000081e:	4b4f      	ldr	r3, [pc, #316]	; (2000095c <update_refposition+0x144>)
20000820:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000822:	f003 0310 	and.w	r3, r3, #16
20000826:	2b00      	cmp	r3, #0
20000828:	f000 8083 	beq.w	20000932 <update_refposition+0x11a>
2000082c:	2300      	movs	r3, #0
2000082e:	61fb      	str	r3, [r7, #28]
20000830:	e00c      	b.n	2000084c <update_refposition+0x34>
20000832:	4b4a      	ldr	r3, [pc, #296]	; (2000095c <update_refposition+0x144>)
20000834:	681b      	ldr	r3, [r3, #0]
20000836:	b2d9      	uxtb	r1, r3
20000838:	463a      	mov	r2, r7
2000083a:	69fb      	ldr	r3, [r7, #28]
2000083c:	4413      	add	r3, r2
2000083e:	460a      	mov	r2, r1
20000840:	701a      	strb	r2, [r3, #0]
20000842:	69fb      	ldr	r3, [r7, #28]
20000844:	3301      	adds	r3, #1
20000846:	f003 030f 	and.w	r3, r3, #15
2000084a:	61fb      	str	r3, [r7, #28]
2000084c:	4b43      	ldr	r3, [pc, #268]	; (2000095c <update_refposition+0x144>)
2000084e:	699b      	ldr	r3, [r3, #24]
20000850:	f003 0310 	and.w	r3, r3, #16
20000854:	2b00      	cmp	r3, #0
20000856:	d0ec      	beq.n	20000832 <update_refposition+0x1a>
20000858:	2300      	movs	r3, #0
2000085a:	767b      	strb	r3, [r7, #25]
2000085c:	463b      	mov	r3, r7
2000085e:	617b      	str	r3, [r7, #20]
20000860:	697b      	ldr	r3, [r7, #20]
20000862:	1c5a      	adds	r2, r3, #1
20000864:	617a      	str	r2, [r7, #20]
20000866:	781a      	ldrb	r2, [r3, #0]
20000868:	7e7b      	ldrb	r3, [r7, #25]
2000086a:	4053      	eors	r3, r2
2000086c:	767b      	strb	r3, [r7, #25]
2000086e:	697b      	ldr	r3, [r7, #20]
20000870:	1c5a      	adds	r2, r3, #1
20000872:	617a      	str	r2, [r7, #20]
20000874:	781a      	ldrb	r2, [r3, #0]
20000876:	7e7b      	ldrb	r3, [r7, #25]
20000878:	4053      	eors	r3, r2
2000087a:	767b      	strb	r3, [r7, #25]
2000087c:	697b      	ldr	r3, [r7, #20]
2000087e:	1c5a      	adds	r2, r3, #1
20000880:	617a      	str	r2, [r7, #20]
20000882:	781a      	ldrb	r2, [r3, #0]
20000884:	7e7b      	ldrb	r3, [r7, #25]
20000886:	4053      	eors	r3, r2
20000888:	767b      	strb	r3, [r7, #25]
2000088a:	697b      	ldr	r3, [r7, #20]
2000088c:	1c5a      	adds	r2, r3, #1
2000088e:	617a      	str	r2, [r7, #20]
20000890:	781a      	ldrb	r2, [r3, #0]
20000892:	7e7b      	ldrb	r3, [r7, #25]
20000894:	4053      	eors	r3, r2
20000896:	767b      	strb	r3, [r7, #25]
20000898:	697b      	ldr	r3, [r7, #20]
2000089a:	1c5a      	adds	r2, r3, #1
2000089c:	617a      	str	r2, [r7, #20]
2000089e:	781a      	ldrb	r2, [r3, #0]
200008a0:	7e7b      	ldrb	r3, [r7, #25]
200008a2:	4053      	eors	r3, r2
200008a4:	767b      	strb	r3, [r7, #25]
200008a6:	697b      	ldr	r3, [r7, #20]
200008a8:	1c5a      	adds	r2, r3, #1
200008aa:	617a      	str	r2, [r7, #20]
200008ac:	781a      	ldrb	r2, [r3, #0]
200008ae:	7e7b      	ldrb	r3, [r7, #25]
200008b0:	4053      	eors	r3, r2
200008b2:	767b      	strb	r3, [r7, #25]
200008b4:	697b      	ldr	r3, [r7, #20]
200008b6:	1c5a      	adds	r2, r3, #1
200008b8:	617a      	str	r2, [r7, #20]
200008ba:	781a      	ldrb	r2, [r3, #0]
200008bc:	7e7b      	ldrb	r3, [r7, #25]
200008be:	4053      	eors	r3, r2
200008c0:	767b      	strb	r3, [r7, #25]
200008c2:	697b      	ldr	r3, [r7, #20]
200008c4:	1c5a      	adds	r2, r3, #1
200008c6:	617a      	str	r2, [r7, #20]
200008c8:	781a      	ldrb	r2, [r3, #0]
200008ca:	7e7b      	ldrb	r3, [r7, #25]
200008cc:	4053      	eors	r3, r2
200008ce:	767b      	strb	r3, [r7, #25]
200008d0:	7e7b      	ldrb	r3, [r7, #25]
200008d2:	2b00      	cmp	r3, #0
200008d4:	d12d      	bne.n	20000932 <update_refposition+0x11a>
200008d6:	783b      	ldrb	r3, [r7, #0]
200008d8:	b29a      	uxth	r2, r3
200008da:	787b      	ldrb	r3, [r7, #1]
200008dc:	b29b      	uxth	r3, r3
200008de:	021b      	lsls	r3, r3, #8
200008e0:	b29b      	uxth	r3, r3
200008e2:	4413      	add	r3, r2
200008e4:	b29b      	uxth	r3, r3
200008e6:	837b      	strh	r3, [r7, #26]
200008e8:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200008ec:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
200008f0:	db03      	blt.n	200008fa <update_refposition+0xe2>
200008f2:	f240 73ff 	movw	r3, #2047	; 0x7ff
200008f6:	837b      	strh	r3, [r7, #26]
200008f8:	bf00      	nop
200008fa:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200008fe:	f513 6f00 	cmn.w	r3, #2048	; 0x800
20000902:	da03      	bge.n	2000090c <update_refposition+0xf4>
20000904:	f44f 4378 	mov.w	r3, #63488	; 0xf800
20000908:	837b      	strh	r3, [r7, #26]
2000090a:	bf00      	nop
2000090c:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
20000910:	4a13      	ldr	r2, [pc, #76]	; (20000960 <update_refposition+0x148>)
20000912:	6013      	str	r3, [r2, #0]
20000914:	f9b7 201a 	ldrsh.w	r2, [r7, #26]
20000918:	4613      	mov	r3, r2
2000091a:	00db      	lsls	r3, r3, #3
2000091c:	1a9b      	subs	r3, r3, r2
2000091e:	00db      	lsls	r3, r3, #3
20000920:	441a      	add	r2, r3
20000922:	4b10      	ldr	r3, [pc, #64]	; (20000964 <update_refposition+0x14c>)
20000924:	681b      	ldr	r3, [r3, #0]
20000926:	4413      	add	r3, r2
20000928:	4a0f      	ldr	r2, [pc, #60]	; (20000968 <update_refposition+0x150>)
2000092a:	6013      	str	r3, [r2, #0]
2000092c:	79ba      	ldrb	r2, [r7, #6]
2000092e:	4b0f      	ldr	r3, [pc, #60]	; (2000096c <update_refposition+0x154>)
20000930:	701a      	strb	r2, [r3, #0]
20000932:	4b0a      	ldr	r3, [pc, #40]	; (2000095c <update_refposition+0x144>)
20000934:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000936:	f003 0340 	and.w	r3, r3, #64	; 0x40
2000093a:	2b00      	cmp	r3, #0
2000093c:	d009      	beq.n	20000952 <update_refposition+0x13a>
2000093e:	e002      	b.n	20000946 <update_refposition+0x12e>
20000940:	4b06      	ldr	r3, [pc, #24]	; (2000095c <update_refposition+0x144>)
20000942:	681b      	ldr	r3, [r3, #0]
20000944:	74fb      	strb	r3, [r7, #19]
20000946:	4b05      	ldr	r3, [pc, #20]	; (2000095c <update_refposition+0x144>)
20000948:	699b      	ldr	r3, [r3, #24]
2000094a:	f003 0310 	and.w	r3, r3, #16
2000094e:	2b00      	cmp	r3, #0
20000950:	d0f6      	beq.n	20000940 <update_refposition+0x128>
20000952:	bf00      	nop
20000954:	3724      	adds	r7, #36	; 0x24
20000956:	46bd      	mov	sp, r7
20000958:	bc80      	pop	{r7}
2000095a:	4770      	bx	lr
2000095c:	40030000 	.word	0x40030000
20000960:	20002f3c 	.word	0x20002f3c
20000964:	20002f2c 	.word	0x20002f2c
20000968:	20002f00 	.word	0x20002f00
2000096c:	20002f40 	.word	0x20002f40

20000970 <fault_positioning_proc>:
20000970:	b580      	push	{r7, lr}
20000972:	af00      	add	r7, sp, #0
20000974:	4b04      	ldr	r3, [pc, #16]	; (20000988 <fault_positioning_proc+0x18>)
20000976:	2201      	movs	r2, #1
20000978:	701a      	strb	r2, [r3, #0]
2000097a:	f7ff fd6b 	bl	20000454 <motor_off>
2000097e:	f7ff fd4d 	bl	2000041c <brake_on>
20000982:	2300      	movs	r3, #0
20000984:	4618      	mov	r0, r3
20000986:	bd80      	pop	{r7, pc}
20000988:	20002f41 	.word	0x20002f41

2000098c <remote_positioning_proc>:
2000098c:	b580      	push	{r7, lr}
2000098e:	b082      	sub	sp, #8
20000990:	af00      	add	r7, sp, #0
20000992:	4b0c      	ldr	r3, [pc, #48]	; (200009c4 <remote_positioning_proc+0x38>)
20000994:	781b      	ldrb	r3, [r3, #0]
20000996:	f043 0302 	orr.w	r3, r3, #2
2000099a:	b2da      	uxtb	r2, r3
2000099c:	4b09      	ldr	r3, [pc, #36]	; (200009c4 <remote_positioning_proc+0x38>)
2000099e:	701a      	strb	r2, [r3, #0]
200009a0:	4b09      	ldr	r3, [pc, #36]	; (200009c8 <remote_positioning_proc+0x3c>)
200009a2:	681a      	ldr	r2, [r3, #0]
200009a4:	4b09      	ldr	r3, [pc, #36]	; (200009cc <remote_positioning_proc+0x40>)
200009a6:	681b      	ldr	r3, [r3, #0]
200009a8:	1ad3      	subs	r3, r2, r3
200009aa:	607b      	str	r3, [r7, #4]
200009ac:	2200      	movs	r2, #0
200009ae:	6879      	ldr	r1, [r7, #4]
200009b0:	4807      	ldr	r0, [pc, #28]	; (200009d0 <remote_positioning_proc+0x44>)
200009b2:	f000 f9c7 	bl	20000d44 <reg_update>
200009b6:	4b06      	ldr	r3, [pc, #24]	; (200009d0 <remote_positioning_proc+0x44>)
200009b8:	68db      	ldr	r3, [r3, #12]
200009ba:	131b      	asrs	r3, r3, #12
200009bc:	4618      	mov	r0, r3
200009be:	3708      	adds	r7, #8
200009c0:	46bd      	mov	sp, r7
200009c2:	bd80      	pop	{r7, pc}
200009c4:	20002f41 	.word	0x20002f41
200009c8:	20002f00 	.word	0x20002f00
200009cc:	20002f28 	.word	0x20002f28
200009d0:	20002f78 	.word	0x20002f78

200009d4 <wait_for_launch_proc>:
200009d4:	b580      	push	{r7, lr}
200009d6:	af00      	add	r7, sp, #0
200009d8:	4b10      	ldr	r3, [pc, #64]	; (20000a1c <wait_for_launch_proc+0x48>)
200009da:	781b      	ldrb	r3, [r3, #0]
200009dc:	f043 0308 	orr.w	r3, r3, #8
200009e0:	b2da      	uxtb	r2, r3
200009e2:	4b0e      	ldr	r3, [pc, #56]	; (20000a1c <wait_for_launch_proc+0x48>)
200009e4:	701a      	strb	r2, [r3, #0]
200009e6:	4b0e      	ldr	r3, [pc, #56]	; (20000a20 <wait_for_launch_proc+0x4c>)
200009e8:	781b      	ldrb	r3, [r3, #0]
200009ea:	f003 0340 	and.w	r3, r3, #64	; 0x40
200009ee:	2b00      	cmp	r3, #0
200009f0:	d104      	bne.n	200009fc <wait_for_launch_proc+0x28>
200009f2:	4b0c      	ldr	r3, [pc, #48]	; (20000a24 <wait_for_launch_proc+0x50>)
200009f4:	4a0c      	ldr	r2, [pc, #48]	; (20000a28 <wait_for_launch_proc+0x54>)
200009f6:	601a      	str	r2, [r3, #0]
200009f8:	2300      	movs	r3, #0
200009fa:	e00d      	b.n	20000a18 <wait_for_launch_proc+0x44>
200009fc:	f7ff fd38 	bl	20000470 <motor_on>
20000a00:	4b07      	ldr	r3, [pc, #28]	; (20000a20 <wait_for_launch_proc+0x4c>)
20000a02:	781b      	ldrb	r3, [r3, #0]
20000a04:	f003 0304 	and.w	r3, r3, #4
20000a08:	2b00      	cmp	r3, #0
20000a0a:	d004      	beq.n	20000a16 <wait_for_launch_proc+0x42>
20000a0c:	4b05      	ldr	r3, [pc, #20]	; (20000a24 <wait_for_launch_proc+0x50>)
20000a0e:	4a07      	ldr	r2, [pc, #28]	; (20000a2c <wait_for_launch_proc+0x58>)
20000a10:	601a      	str	r2, [r3, #0]
20000a12:	f7ff fd11 	bl	20000438 <brake_off>
20000a16:	2300      	movs	r3, #0
20000a18:	4618      	mov	r0, r3
20000a1a:	bd80      	pop	{r7, pc}
20000a1c:	20002f41 	.word	0x20002f41
20000a20:	20002f40 	.word	0x20002f40
20000a24:	20002f44 	.word	0x20002f44
20000a28:	20000971 	.word	0x20000971
20000a2c:	2000098d 	.word	0x2000098d

20000a30 <wait_positioning_proc>:
20000a30:	b580      	push	{r7, lr}
20000a32:	af00      	add	r7, sp, #0
20000a34:	4b13      	ldr	r3, [pc, #76]	; (20000a84 <wait_positioning_proc+0x54>)
20000a36:	2210      	movs	r2, #16
20000a38:	701a      	strb	r2, [r3, #0]
20000a3a:	4b13      	ldr	r3, [pc, #76]	; (20000a88 <wait_positioning_proc+0x58>)
20000a3c:	781b      	ldrb	r3, [r3, #0]
20000a3e:	f003 0310 	and.w	r3, r3, #16
20000a42:	2b00      	cmp	r3, #0
20000a44:	d01b      	beq.n	20000a7e <wait_positioning_proc+0x4e>
20000a46:	4b11      	ldr	r3, [pc, #68]	; (20000a8c <wait_positioning_proc+0x5c>)
20000a48:	4a11      	ldr	r2, [pc, #68]	; (20000a90 <wait_positioning_proc+0x60>)
20000a4a:	601a      	str	r2, [r3, #0]
20000a4c:	4b11      	ldr	r3, [pc, #68]	; (20000a94 <wait_positioning_proc+0x64>)
20000a4e:	681b      	ldr	r3, [r3, #0]
20000a50:	4a11      	ldr	r2, [pc, #68]	; (20000a98 <wait_positioning_proc+0x68>)
20000a52:	6013      	str	r3, [r2, #0]
20000a54:	4b10      	ldr	r3, [pc, #64]	; (20000a98 <wait_positioning_proc+0x68>)
20000a56:	681b      	ldr	r3, [r3, #0]
20000a58:	f503 539c 	add.w	r3, r3, #4992	; 0x1380
20000a5c:	3308      	adds	r3, #8
20000a5e:	4a0f      	ldr	r2, [pc, #60]	; (20000a9c <wait_positioning_proc+0x6c>)
20000a60:	6013      	str	r3, [r2, #0]
20000a62:	4b0f      	ldr	r3, [pc, #60]	; (20000aa0 <wait_positioning_proc+0x70>)
20000a64:	2200      	movs	r2, #0
20000a66:	601a      	str	r2, [r3, #0]
20000a68:	4b06      	ldr	r3, [pc, #24]	; (20000a84 <wait_positioning_proc+0x54>)
20000a6a:	781b      	ldrb	r3, [r3, #0]
20000a6c:	f043 0308 	orr.w	r3, r3, #8
20000a70:	b2da      	uxtb	r2, r3
20000a72:	4b04      	ldr	r3, [pc, #16]	; (20000a84 <wait_positioning_proc+0x54>)
20000a74:	701a      	strb	r2, [r3, #0]
20000a76:	f7ff fcfb 	bl	20000470 <motor_on>
20000a7a:	f7ff fcdd 	bl	20000438 <brake_off>
20000a7e:	2300      	movs	r3, #0
20000a80:	4618      	mov	r0, r3
20000a82:	bd80      	pop	{r7, pc}
20000a84:	20002f41 	.word	0x20002f41
20000a88:	20002f40 	.word	0x20002f40
20000a8c:	20002f44 	.word	0x20002f44
20000a90:	200009d5 	.word	0x200009d5
20000a94:	20002f28 	.word	0x20002f28
20000a98:	20002f2c 	.word	0x20002f2c
20000a9c:	20002f00 	.word	0x20002f00
20000aa0:	20002fa0 	.word	0x20002fa0

20000aa4 <test3_positioning_proc>:
20000aa4:	b580      	push	{r7, lr}
20000aa6:	b082      	sub	sp, #8
20000aa8:	af00      	add	r7, sp, #0
20000aaa:	4b1f      	ldr	r3, [pc, #124]	; (20000b28 <test3_positioning_proc+0x84>)
20000aac:	681b      	ldr	r3, [r3, #0]
20000aae:	f241 3287 	movw	r2, #4999	; 0x1387
20000ab2:	4293      	cmp	r3, r2
20000ab4:	dd04      	ble.n	20000ac0 <test3_positioning_proc+0x1c>
20000ab6:	4b1d      	ldr	r3, [pc, #116]	; (20000b2c <test3_positioning_proc+0x88>)
20000ab8:	4a1d      	ldr	r2, [pc, #116]	; (20000b30 <test3_positioning_proc+0x8c>)
20000aba:	601a      	str	r2, [r3, #0]
20000abc:	2300      	movs	r3, #0
20000abe:	e02e      	b.n	20000b1e <test3_positioning_proc+0x7a>
20000ac0:	4b19      	ldr	r3, [pc, #100]	; (20000b28 <test3_positioning_proc+0x84>)
20000ac2:	681b      	ldr	r3, [r3, #0]
20000ac4:	3301      	adds	r3, #1
20000ac6:	4a18      	ldr	r2, [pc, #96]	; (20000b28 <test3_positioning_proc+0x84>)
20000ac8:	6013      	str	r3, [r2, #0]
20000aca:	4b1a      	ldr	r3, [pc, #104]	; (20000b34 <test3_positioning_proc+0x90>)
20000acc:	681a      	ldr	r2, [r3, #0]
20000ace:	4b1a      	ldr	r3, [pc, #104]	; (20000b38 <test3_positioning_proc+0x94>)
20000ad0:	681b      	ldr	r3, [r3, #0]
20000ad2:	1ad3      	subs	r3, r2, r3
20000ad4:	607b      	str	r3, [r7, #4]
20000ad6:	687b      	ldr	r3, [r7, #4]
20000ad8:	f113 0f02 	cmn.w	r3, #2
20000adc:	db17      	blt.n	20000b0e <test3_positioning_proc+0x6a>
20000ade:	687b      	ldr	r3, [r7, #4]
20000ae0:	2b02      	cmp	r3, #2
20000ae2:	dc14      	bgt.n	20000b0e <test3_positioning_proc+0x6a>
20000ae4:	4b10      	ldr	r3, [pc, #64]	; (20000b28 <test3_positioning_proc+0x84>)
20000ae6:	681b      	ldr	r3, [r3, #0]
20000ae8:	f5b3 6f7a 	cmp.w	r3, #4000	; 0xfa0
20000aec:	db0f      	blt.n	20000b0e <test3_positioning_proc+0x6a>
20000aee:	4b13      	ldr	r3, [pc, #76]	; (20000b3c <test3_positioning_proc+0x98>)
20000af0:	681b      	ldr	r3, [r3, #0]
20000af2:	4a10      	ldr	r2, [pc, #64]	; (20000b34 <test3_positioning_proc+0x90>)
20000af4:	6013      	str	r3, [r2, #0]
20000af6:	4b0d      	ldr	r3, [pc, #52]	; (20000b2c <test3_positioning_proc+0x88>)
20000af8:	4a11      	ldr	r2, [pc, #68]	; (20000b40 <test3_positioning_proc+0x9c>)
20000afa:	601a      	str	r2, [r3, #0]
20000afc:	4b0a      	ldr	r3, [pc, #40]	; (20000b28 <test3_positioning_proc+0x84>)
20000afe:	2200      	movs	r2, #0
20000b00:	601a      	str	r2, [r3, #0]
20000b02:	f7ff fca7 	bl	20000454 <motor_off>
20000b06:	f7ff fc89 	bl	2000041c <brake_on>
20000b0a:	2300      	movs	r3, #0
20000b0c:	e007      	b.n	20000b1e <test3_positioning_proc+0x7a>
20000b0e:	2200      	movs	r2, #0
20000b10:	6879      	ldr	r1, [r7, #4]
20000b12:	480c      	ldr	r0, [pc, #48]	; (20000b44 <test3_positioning_proc+0xa0>)
20000b14:	f000 f916 	bl	20000d44 <reg_update>
20000b18:	4b0a      	ldr	r3, [pc, #40]	; (20000b44 <test3_positioning_proc+0xa0>)
20000b1a:	68db      	ldr	r3, [r3, #12]
20000b1c:	131b      	asrs	r3, r3, #12
20000b1e:	4618      	mov	r0, r3
20000b20:	3708      	adds	r7, #8
20000b22:	46bd      	mov	sp, r7
20000b24:	bd80      	pop	{r7, pc}
20000b26:	bf00      	nop
20000b28:	20002fa0 	.word	0x20002fa0
20000b2c:	20002f44 	.word	0x20002f44
20000b30:	20000971 	.word	0x20000971
20000b34:	20002f00 	.word	0x20002f00
20000b38:	20002f28 	.word	0x20002f28
20000b3c:	20002f2c 	.word	0x20002f2c
20000b40:	200009d5 	.word	0x200009d5
20000b44:	20002f78 	.word	0x20002f78

20000b48 <test2_positioning_proc>:
20000b48:	b580      	push	{r7, lr}
20000b4a:	b082      	sub	sp, #8
20000b4c:	af00      	add	r7, sp, #0
20000b4e:	4b19      	ldr	r3, [pc, #100]	; (20000bb4 <test2_positioning_proc+0x6c>)
20000b50:	681b      	ldr	r3, [r3, #0]
20000b52:	f241 3287 	movw	r2, #4999	; 0x1387
20000b56:	4293      	cmp	r3, r2
20000b58:	dd04      	ble.n	20000b64 <test2_positioning_proc+0x1c>
20000b5a:	4b17      	ldr	r3, [pc, #92]	; (20000bb8 <test2_positioning_proc+0x70>)
20000b5c:	4a17      	ldr	r2, [pc, #92]	; (20000bbc <test2_positioning_proc+0x74>)
20000b5e:	601a      	str	r2, [r3, #0]
20000b60:	2300      	movs	r3, #0
20000b62:	e023      	b.n	20000bac <test2_positioning_proc+0x64>
20000b64:	4b13      	ldr	r3, [pc, #76]	; (20000bb4 <test2_positioning_proc+0x6c>)
20000b66:	681b      	ldr	r3, [r3, #0]
20000b68:	3301      	adds	r3, #1
20000b6a:	4a12      	ldr	r2, [pc, #72]	; (20000bb4 <test2_positioning_proc+0x6c>)
20000b6c:	6013      	str	r3, [r2, #0]
20000b6e:	4b14      	ldr	r3, [pc, #80]	; (20000bc0 <test2_positioning_proc+0x78>)
20000b70:	681a      	ldr	r2, [r3, #0]
20000b72:	4b14      	ldr	r3, [pc, #80]	; (20000bc4 <test2_positioning_proc+0x7c>)
20000b74:	681b      	ldr	r3, [r3, #0]
20000b76:	1ad3      	subs	r3, r2, r3
20000b78:	607b      	str	r3, [r7, #4]
20000b7a:	687b      	ldr	r3, [r7, #4]
20000b7c:	f113 0f02 	cmn.w	r3, #2
20000b80:	db0c      	blt.n	20000b9c <test2_positioning_proc+0x54>
20000b82:	687b      	ldr	r3, [r7, #4]
20000b84:	2b02      	cmp	r3, #2
20000b86:	dc09      	bgt.n	20000b9c <test2_positioning_proc+0x54>
20000b88:	4b0f      	ldr	r3, [pc, #60]	; (20000bc8 <test2_positioning_proc+0x80>)
20000b8a:	681b      	ldr	r3, [r3, #0]
20000b8c:	4a0c      	ldr	r2, [pc, #48]	; (20000bc0 <test2_positioning_proc+0x78>)
20000b8e:	6013      	str	r3, [r2, #0]
20000b90:	4b09      	ldr	r3, [pc, #36]	; (20000bb8 <test2_positioning_proc+0x70>)
20000b92:	4a0e      	ldr	r2, [pc, #56]	; (20000bcc <test2_positioning_proc+0x84>)
20000b94:	601a      	str	r2, [r3, #0]
20000b96:	4b07      	ldr	r3, [pc, #28]	; (20000bb4 <test2_positioning_proc+0x6c>)
20000b98:	2200      	movs	r2, #0
20000b9a:	601a      	str	r2, [r3, #0]
20000b9c:	2200      	movs	r2, #0
20000b9e:	6879      	ldr	r1, [r7, #4]
20000ba0:	480b      	ldr	r0, [pc, #44]	; (20000bd0 <test2_positioning_proc+0x88>)
20000ba2:	f000 f8cf 	bl	20000d44 <reg_update>
20000ba6:	4b0a      	ldr	r3, [pc, #40]	; (20000bd0 <test2_positioning_proc+0x88>)
20000ba8:	68db      	ldr	r3, [r3, #12]
20000baa:	131b      	asrs	r3, r3, #12
20000bac:	4618      	mov	r0, r3
20000bae:	3708      	adds	r7, #8
20000bb0:	46bd      	mov	sp, r7
20000bb2:	bd80      	pop	{r7, pc}
20000bb4:	20002fa0 	.word	0x20002fa0
20000bb8:	20002f44 	.word	0x20002f44
20000bbc:	20000971 	.word	0x20000971
20000bc0:	20002f00 	.word	0x20002f00
20000bc4:	20002f28 	.word	0x20002f28
20000bc8:	20002f2c 	.word	0x20002f2c
20000bcc:	20000aa5 	.word	0x20000aa5
20000bd0:	20002f78 	.word	0x20002f78

20000bd4 <test1_positioning_proc>:
20000bd4:	b580      	push	{r7, lr}
20000bd6:	b082      	sub	sp, #8
20000bd8:	af00      	add	r7, sp, #0
20000bda:	4b1c      	ldr	r3, [pc, #112]	; (20000c4c <test1_positioning_proc+0x78>)
20000bdc:	681b      	ldr	r3, [r3, #0]
20000bde:	f241 3287 	movw	r2, #4999	; 0x1387
20000be2:	4293      	cmp	r3, r2
20000be4:	dd04      	ble.n	20000bf0 <test1_positioning_proc+0x1c>
20000be6:	4b1a      	ldr	r3, [pc, #104]	; (20000c50 <test1_positioning_proc+0x7c>)
20000be8:	4a1a      	ldr	r2, [pc, #104]	; (20000c54 <test1_positioning_proc+0x80>)
20000bea:	601a      	str	r2, [r3, #0]
20000bec:	2300      	movs	r3, #0
20000bee:	e028      	b.n	20000c42 <test1_positioning_proc+0x6e>
20000bf0:	4b16      	ldr	r3, [pc, #88]	; (20000c4c <test1_positioning_proc+0x78>)
20000bf2:	681b      	ldr	r3, [r3, #0]
20000bf4:	3301      	adds	r3, #1
20000bf6:	4a15      	ldr	r2, [pc, #84]	; (20000c4c <test1_positioning_proc+0x78>)
20000bf8:	6013      	str	r3, [r2, #0]
20000bfa:	4b17      	ldr	r3, [pc, #92]	; (20000c58 <test1_positioning_proc+0x84>)
20000bfc:	681a      	ldr	r2, [r3, #0]
20000bfe:	4b17      	ldr	r3, [pc, #92]	; (20000c5c <test1_positioning_proc+0x88>)
20000c00:	681b      	ldr	r3, [r3, #0]
20000c02:	1ad3      	subs	r3, r2, r3
20000c04:	607b      	str	r3, [r7, #4]
20000c06:	687b      	ldr	r3, [r7, #4]
20000c08:	f113 0f02 	cmn.w	r3, #2
20000c0c:	db11      	blt.n	20000c32 <test1_positioning_proc+0x5e>
20000c0e:	687b      	ldr	r3, [r7, #4]
20000c10:	2b02      	cmp	r3, #2
20000c12:	dc0e      	bgt.n	20000c32 <test1_positioning_proc+0x5e>
20000c14:	4b12      	ldr	r3, [pc, #72]	; (20000c60 <test1_positioning_proc+0x8c>)
20000c16:	681b      	ldr	r3, [r3, #0]
20000c18:	f5a3 539c 	sub.w	r3, r3, #4992	; 0x1380
20000c1c:	3b08      	subs	r3, #8
20000c1e:	4a0e      	ldr	r2, [pc, #56]	; (20000c58 <test1_positioning_proc+0x84>)
20000c20:	6013      	str	r3, [r2, #0]
20000c22:	4b0b      	ldr	r3, [pc, #44]	; (20000c50 <test1_positioning_proc+0x7c>)
20000c24:	4a0f      	ldr	r2, [pc, #60]	; (20000c64 <test1_positioning_proc+0x90>)
20000c26:	601a      	str	r2, [r3, #0]
20000c28:	4b08      	ldr	r3, [pc, #32]	; (20000c4c <test1_positioning_proc+0x78>)
20000c2a:	2200      	movs	r2, #0
20000c2c:	601a      	str	r2, [r3, #0]
20000c2e:	2300      	movs	r3, #0
20000c30:	e007      	b.n	20000c42 <test1_positioning_proc+0x6e>
20000c32:	2200      	movs	r2, #0
20000c34:	6879      	ldr	r1, [r7, #4]
20000c36:	480c      	ldr	r0, [pc, #48]	; (20000c68 <test1_positioning_proc+0x94>)
20000c38:	f000 f884 	bl	20000d44 <reg_update>
20000c3c:	4b0a      	ldr	r3, [pc, #40]	; (20000c68 <test1_positioning_proc+0x94>)
20000c3e:	68db      	ldr	r3, [r3, #12]
20000c40:	131b      	asrs	r3, r3, #12
20000c42:	4618      	mov	r0, r3
20000c44:	3708      	adds	r7, #8
20000c46:	46bd      	mov	sp, r7
20000c48:	bd80      	pop	{r7, pc}
20000c4a:	bf00      	nop
20000c4c:	20002fa0 	.word	0x20002fa0
20000c50:	20002f44 	.word	0x20002f44
20000c54:	20000971 	.word	0x20000971
20000c58:	20002f00 	.word	0x20002f00
20000c5c:	20002f28 	.word	0x20002f28
20000c60:	20002f2c 	.word	0x20002f2c
20000c64:	20000b49 	.word	0x20000b49
20000c68:	20002f78 	.word	0x20002f78

20000c6c <zero_positioning_proc>:
20000c6c:	b580      	push	{r7, lr}
20000c6e:	b082      	sub	sp, #8
20000c70:	af00      	add	r7, sp, #0
20000c72:	4b1e      	ldr	r3, [pc, #120]	; (20000cec <zero_positioning_proc+0x80>)
20000c74:	681b      	ldr	r3, [r3, #0]
20000c76:	f241 3287 	movw	r2, #4999	; 0x1387
20000c7a:	4293      	cmp	r3, r2
20000c7c:	dd04      	ble.n	20000c88 <zero_positioning_proc+0x1c>
20000c7e:	4b1c      	ldr	r3, [pc, #112]	; (20000cf0 <zero_positioning_proc+0x84>)
20000c80:	4a1c      	ldr	r2, [pc, #112]	; (20000cf4 <zero_positioning_proc+0x88>)
20000c82:	601a      	str	r2, [r3, #0]
20000c84:	2300      	movs	r3, #0
20000c86:	e02c      	b.n	20000ce2 <zero_positioning_proc+0x76>
20000c88:	4b18      	ldr	r3, [pc, #96]	; (20000cec <zero_positioning_proc+0x80>)
20000c8a:	681b      	ldr	r3, [r3, #0]
20000c8c:	3301      	adds	r3, #1
20000c8e:	4a17      	ldr	r2, [pc, #92]	; (20000cec <zero_positioning_proc+0x80>)
20000c90:	6013      	str	r3, [r2, #0]
20000c92:	4b19      	ldr	r3, [pc, #100]	; (20000cf8 <zero_positioning_proc+0x8c>)
20000c94:	681a      	ldr	r2, [r3, #0]
20000c96:	4b19      	ldr	r3, [pc, #100]	; (20000cfc <zero_positioning_proc+0x90>)
20000c98:	681b      	ldr	r3, [r3, #0]
20000c9a:	1ad3      	subs	r3, r2, r3
20000c9c:	607b      	str	r3, [r7, #4]
20000c9e:	687b      	ldr	r3, [r7, #4]
20000ca0:	f113 0f02 	cmn.w	r3, #2
20000ca4:	db15      	blt.n	20000cd2 <zero_positioning_proc+0x66>
20000ca6:	687b      	ldr	r3, [r7, #4]
20000ca8:	2b02      	cmp	r3, #2
20000caa:	dc12      	bgt.n	20000cd2 <zero_positioning_proc+0x66>
20000cac:	4b14      	ldr	r3, [pc, #80]	; (20000d00 <zero_positioning_proc+0x94>)
20000cae:	681b      	ldr	r3, [r3, #0]
20000cb0:	4a14      	ldr	r2, [pc, #80]	; (20000d04 <zero_positioning_proc+0x98>)
20000cb2:	6013      	str	r3, [r2, #0]
20000cb4:	4b13      	ldr	r3, [pc, #76]	; (20000d04 <zero_positioning_proc+0x98>)
20000cb6:	681b      	ldr	r3, [r3, #0]
20000cb8:	f503 539c 	add.w	r3, r3, #4992	; 0x1380
20000cbc:	3308      	adds	r3, #8
20000cbe:	4a12      	ldr	r2, [pc, #72]	; (20000d08 <zero_positioning_proc+0x9c>)
20000cc0:	6013      	str	r3, [r2, #0]
20000cc2:	4b0b      	ldr	r3, [pc, #44]	; (20000cf0 <zero_positioning_proc+0x84>)
20000cc4:	4a11      	ldr	r2, [pc, #68]	; (20000d0c <zero_positioning_proc+0xa0>)
20000cc6:	601a      	str	r2, [r3, #0]
20000cc8:	4b08      	ldr	r3, [pc, #32]	; (20000cec <zero_positioning_proc+0x80>)
20000cca:	2200      	movs	r2, #0
20000ccc:	601a      	str	r2, [r3, #0]
20000cce:	2300      	movs	r3, #0
20000cd0:	e007      	b.n	20000ce2 <zero_positioning_proc+0x76>
20000cd2:	2200      	movs	r2, #0
20000cd4:	6879      	ldr	r1, [r7, #4]
20000cd6:	480e      	ldr	r0, [pc, #56]	; (20000d10 <zero_positioning_proc+0xa4>)
20000cd8:	f000 f834 	bl	20000d44 <reg_update>
20000cdc:	4b0c      	ldr	r3, [pc, #48]	; (20000d10 <zero_positioning_proc+0xa4>)
20000cde:	68db      	ldr	r3, [r3, #12]
20000ce0:	131b      	asrs	r3, r3, #12
20000ce2:	4618      	mov	r0, r3
20000ce4:	3708      	adds	r7, #8
20000ce6:	46bd      	mov	sp, r7
20000ce8:	bd80      	pop	{r7, pc}
20000cea:	bf00      	nop
20000cec:	20002fa0 	.word	0x20002fa0
20000cf0:	20002f44 	.word	0x20002f44
20000cf4:	20000971 	.word	0x20000971
20000cf8:	20002f14 	.word	0x20002f14
20000cfc:	20002f04 	.word	0x20002f04
20000d00:	20002f28 	.word	0x20002f28
20000d04:	20002f2c 	.word	0x20002f2c
20000d08:	20002f00 	.word	0x20002f00
20000d0c:	20000bd5 	.word	0x20000bd5
20000d10:	20002f88 	.word	0x20002f88

20000d14 <mycos>:
20000d14:	4b02      	ldr	r3, [pc, #8]	; (20000d20 <mycos+0xc>)
20000d16:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000d1a:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000d1e:	4770      	bx	lr
20000d20:	20001e28 	.word	0x20001e28

20000d24 <mysin>:
20000d24:	4b03      	ldr	r3, [pc, #12]	; (20000d34 <mysin+0x10>)
20000d26:	f500 7040 	add.w	r0, r0, #768	; 0x300
20000d2a:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000d2e:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000d32:	4770      	bx	lr
20000d34:	20001e28 	.word	0x20001e28

20000d38 <reg_init>:
20000d38:	2300      	movs	r3, #0
20000d3a:	e880 000e 	stmia.w	r0, {r1, r2, r3}
20000d3e:	60c3      	str	r3, [r0, #12]
20000d40:	4770      	bx	lr
20000d42:	bf00      	nop

20000d44 <reg_update>:
20000d44:	6803      	ldr	r3, [r0, #0]
20000d46:	b410      	push	{r4}
20000d48:	fb03 f301 	mul.w	r3, r3, r1
20000d4c:	6884      	ldr	r4, [r0, #8]
20000d4e:	b11a      	cbz	r2, 20000d58 <reg_update+0x14>
20000d50:	2c00      	cmp	r4, #0
20000d52:	dd09      	ble.n	20000d68 <reg_update+0x24>
20000d54:	ea03 73e3 	and.w	r3, r3, r3, asr #31
20000d58:	6842      	ldr	r2, [r0, #4]
20000d5a:	4423      	add	r3, r4
20000d5c:	fb02 3101 	mla	r1, r2, r1, r3
20000d60:	6083      	str	r3, [r0, #8]
20000d62:	60c1      	str	r1, [r0, #12]
20000d64:	bc10      	pop	{r4}
20000d66:	4770      	bx	lr
20000d68:	bf18      	it	ne
20000d6a:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
20000d6e:	e7f3      	b.n	20000d58 <reg_update+0x14>

20000d70 <dot3>:
20000d70:	b430      	push	{r4, r5}
20000d72:	684b      	ldr	r3, [r1, #4]
20000d74:	6844      	ldr	r4, [r0, #4]
20000d76:	6802      	ldr	r2, [r0, #0]
20000d78:	fb03 f304 	mul.w	r3, r3, r4
20000d7c:	680d      	ldr	r5, [r1, #0]
20000d7e:	6884      	ldr	r4, [r0, #8]
20000d80:	fb05 3302 	mla	r3, r5, r2, r3
20000d84:	6888      	ldr	r0, [r1, #8]
20000d86:	fb00 3004 	mla	r0, r0, r4, r3
20000d8a:	bc30      	pop	{r4, r5}
20000d8c:	4770      	bx	lr
20000d8e:	bf00      	nop

20000d90 <abc_to_dq>:
20000d90:	b4f0      	push	{r4, r5, r6, r7}
20000d92:	4c1d      	ldr	r4, [pc, #116]	; (20000e08 <abc_to_dq+0x78>)
20000d94:	6803      	ldr	r3, [r0, #0]
20000d96:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
20000d9a:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
20000d9e:	fb03 f306 	mul.w	r3, r3, r6
20000da2:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000da6:	6847      	ldr	r7, [r0, #4]
20000da8:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000dac:	f202 1655 	addw	r6, r2, #341	; 0x155
20000db0:	fb07 3305 	mla	r3, r7, r5, r3
20000db4:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000db8:	6887      	ldr	r7, [r0, #8]
20000dba:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000dbe:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
20000dc2:	fb07 3305 	mla	r3, r7, r5, r3
20000dc6:	129b      	asrs	r3, r3, #10
20000dc8:	600b      	str	r3, [r1, #0]
20000dca:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000dce:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
20000dd2:	6843      	ldr	r3, [r0, #4]
20000dd4:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000dd8:	fb03 f306 	mul.w	r3, r3, r6
20000ddc:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000de0:	6806      	ldr	r6, [r0, #0]
20000de2:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000de6:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000dea:	fb06 3305 	mla	r3, r6, r5, r3
20000dee:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000df2:	6880      	ldr	r0, [r0, #8]
20000df4:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
20000df8:	bcf0      	pop	{r4, r5, r6, r7}
20000dfa:	fb00 3302 	mla	r3, r0, r2, r3
20000dfe:	425b      	negs	r3, r3
20000e00:	129b      	asrs	r3, r3, #10
20000e02:	604b      	str	r3, [r1, #4]
20000e04:	4770      	bx	lr
20000e06:	bf00      	nop
20000e08:	20001e28 	.word	0x20001e28

20000e0c <dq_to_abc>:
20000e0c:	4b1d      	ldr	r3, [pc, #116]	; (20000e84 <dq_to_abc+0x78>)
20000e0e:	b4f0      	push	{r4, r5, r6, r7}
20000e10:	680e      	ldr	r6, [r1, #0]
20000e12:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
20000e16:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000e1a:	fb04 f406 	mul.w	r4, r4, r6
20000e1e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000e22:	684f      	ldr	r7, [r1, #4]
20000e24:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000e28:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000e2c:	fb07 4415 	mls	r4, r7, r5, r4
20000e30:	1524      	asrs	r4, r4, #20
20000e32:	6004      	str	r4, [r0, #0]
20000e34:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000e38:	680c      	ldr	r4, [r1, #0]
20000e3a:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
20000e3e:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
20000e42:	fb04 f406 	mul.w	r4, r4, r6
20000e46:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000e4a:	684f      	ldr	r7, [r1, #4]
20000e4c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000e50:	f202 1655 	addw	r6, r2, #341	; 0x155
20000e54:	fb07 4415 	mls	r4, r7, r5, r4
20000e58:	1524      	asrs	r4, r4, #20
20000e5a:	6044      	str	r4, [r0, #4]
20000e5c:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000e60:	680c      	ldr	r4, [r1, #0]
20000e62:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000e66:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000e6a:	fb04 f405 	mul.w	r4, r4, r5
20000e6e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000e72:	6849      	ldr	r1, [r1, #4]
20000e74:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
20000e78:	fb01 4312 	mls	r3, r1, r2, r4
20000e7c:	bcf0      	pop	{r4, r5, r6, r7}
20000e7e:	151b      	asrs	r3, r3, #20
20000e80:	6083      	str	r3, [r0, #8]
20000e82:	4770      	bx	lr
20000e84:	20001e28 	.word	0x20001e28

20000e88 <cord_atan>:
20000e88:	b5f0      	push	{r4, r5, r6, r7, lr}
20000e8a:	b091      	sub	sp, #68	; 0x44
20000e8c:	46ee      	mov	lr, sp
20000e8e:	4684      	mov	ip, r0
20000e90:	4e56      	ldr	r6, [pc, #344]	; (20000fec <cord_atan+0x164>)
20000e92:	460d      	mov	r5, r1
20000e94:	4614      	mov	r4, r2
20000e96:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000e98:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000e9c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000ea0:	af08      	add	r7, sp, #32
20000ea2:	3610      	adds	r6, #16
20000ea4:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000ea8:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000eaa:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000eac:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000eb0:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000eb4:	f8dc 6000 	ldr.w	r6, [ip]
20000eb8:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000ebc:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000ec0:	2b00      	cmp	r3, #0
20000ec2:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000ec6:	9900      	ldr	r1, [sp, #0]
20000ec8:	dd56      	ble.n	20000f78 <cord_atan+0xf0>
20000eca:	18d0      	adds	r0, r2, r3
20000ecc:	1a9b      	subs	r3, r3, r2
20000ece:	2b00      	cmp	r3, #0
20000ed0:	d07a      	beq.n	20000fc8 <cord_atan+0x140>
20000ed2:	9f01      	ldr	r7, [sp, #4]
20000ed4:	dd54      	ble.n	20000f80 <cord_atan+0xf8>
20000ed6:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000eda:	4439      	add	r1, r7
20000edc:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000ee0:	2b00      	cmp	r3, #0
20000ee2:	d073      	beq.n	20000fcc <cord_atan+0x144>
20000ee4:	9f02      	ldr	r7, [sp, #8]
20000ee6:	dd51      	ble.n	20000f8c <cord_atan+0x104>
20000ee8:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000eec:	4439      	add	r1, r7
20000eee:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000ef2:	2b00      	cmp	r3, #0
20000ef4:	d06d      	beq.n	20000fd2 <cord_atan+0x14a>
20000ef6:	9f03      	ldr	r7, [sp, #12]
20000ef8:	dd4e      	ble.n	20000f98 <cord_atan+0x110>
20000efa:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000efe:	4439      	add	r1, r7
20000f00:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000f04:	2b00      	cmp	r3, #0
20000f06:	d066      	beq.n	20000fd6 <cord_atan+0x14e>
20000f08:	9f04      	ldr	r7, [sp, #16]
20000f0a:	dd4b      	ble.n	20000fa4 <cord_atan+0x11c>
20000f0c:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000f10:	4439      	add	r1, r7
20000f12:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000f16:	2b00      	cmp	r3, #0
20000f18:	d060      	beq.n	20000fdc <cord_atan+0x154>
20000f1a:	9f05      	ldr	r7, [sp, #20]
20000f1c:	dd48      	ble.n	20000fb0 <cord_atan+0x128>
20000f1e:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000f22:	4439      	add	r1, r7
20000f24:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000f28:	2b00      	cmp	r3, #0
20000f2a:	d059      	beq.n	20000fe0 <cord_atan+0x158>
20000f2c:	9f06      	ldr	r7, [sp, #24]
20000f2e:	dd45      	ble.n	20000fbc <cord_atan+0x134>
20000f30:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000f34:	4439      	add	r1, r7
20000f36:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000f3a:	2b00      	cmp	r3, #0
20000f3c:	d053      	beq.n	20000fe6 <cord_atan+0x15e>
20000f3e:	9a07      	ldr	r2, [sp, #28]
20000f40:	bfc7      	ittee	gt
20000f42:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000f46:	1889      	addgt	r1, r1, r2
20000f48:	1a89      	suble	r1, r1, r2
20000f4a:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000f4e:	2207      	movs	r2, #7
20000f50:	ab10      	add	r3, sp, #64	; 0x40
20000f52:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000f56:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000f5a:	2e00      	cmp	r6, #0
20000f5c:	fb03 f300 	mul.w	r3, r3, r0
20000f60:	bfb8      	it	lt
20000f62:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000f66:	2900      	cmp	r1, #0
20000f68:	bfb8      	it	lt
20000f6a:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000f6e:	129b      	asrs	r3, r3, #10
20000f70:	6029      	str	r1, [r5, #0]
20000f72:	6023      	str	r3, [r4, #0]
20000f74:	b011      	add	sp, #68	; 0x44
20000f76:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000f78:	1ad0      	subs	r0, r2, r3
20000f7a:	4249      	negs	r1, r1
20000f7c:	4413      	add	r3, r2
20000f7e:	e7a6      	b.n	20000ece <cord_atan+0x46>
20000f80:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000f84:	1bc9      	subs	r1, r1, r7
20000f86:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000f8a:	e7a9      	b.n	20000ee0 <cord_atan+0x58>
20000f8c:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000f90:	1bc9      	subs	r1, r1, r7
20000f92:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000f96:	e7ac      	b.n	20000ef2 <cord_atan+0x6a>
20000f98:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000f9c:	1bc9      	subs	r1, r1, r7
20000f9e:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000fa2:	e7af      	b.n	20000f04 <cord_atan+0x7c>
20000fa4:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000fa8:	1bc9      	subs	r1, r1, r7
20000faa:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000fae:	e7b2      	b.n	20000f16 <cord_atan+0x8e>
20000fb0:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000fb4:	1bc9      	subs	r1, r1, r7
20000fb6:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000fba:	e7b5      	b.n	20000f28 <cord_atan+0xa0>
20000fbc:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000fc0:	1bc9      	subs	r1, r1, r7
20000fc2:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000fc6:	e7b8      	b.n	20000f3a <cord_atan+0xb2>
20000fc8:	461a      	mov	r2, r3
20000fca:	e7c1      	b.n	20000f50 <cord_atan+0xc8>
20000fcc:	4610      	mov	r0, r2
20000fce:	2201      	movs	r2, #1
20000fd0:	e7be      	b.n	20000f50 <cord_atan+0xc8>
20000fd2:	2202      	movs	r2, #2
20000fd4:	e7bc      	b.n	20000f50 <cord_atan+0xc8>
20000fd6:	4610      	mov	r0, r2
20000fd8:	2203      	movs	r2, #3
20000fda:	e7b9      	b.n	20000f50 <cord_atan+0xc8>
20000fdc:	2204      	movs	r2, #4
20000fde:	e7b7      	b.n	20000f50 <cord_atan+0xc8>
20000fe0:	4610      	mov	r0, r2
20000fe2:	2205      	movs	r2, #5
20000fe4:	e7b4      	b.n	20000f50 <cord_atan+0xc8>
20000fe6:	2206      	movs	r2, #6
20000fe8:	e7b2      	b.n	20000f50 <cord_atan+0xc8>
20000fea:	bf00      	nop
20000fec:	20001de8 	.word	0x20001de8

20000ff0 <sinpwm>:
20000ff0:	b5f0      	push	{r4, r5, r6, r7, lr}
20000ff2:	b091      	sub	sp, #68	; 0x44
20000ff4:	46ee      	mov	lr, sp
20000ff6:	468c      	mov	ip, r1
20000ff8:	4e6e      	ldr	r6, [pc, #440]	; (200011b4 <sinpwm+0x1c4>)
20000ffa:	4604      	mov	r4, r0
20000ffc:	4615      	mov	r5, r2
20000ffe:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20001000:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20001004:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20001008:	af08      	add	r7, sp, #32
2000100a:	3610      	adds	r6, #16
2000100c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20001010:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20001012:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20001014:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20001018:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
2000101c:	f8dc 6000 	ldr.w	r6, [ip]
20001020:	f8dc 3004 	ldr.w	r3, [ip, #4]
20001024:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20001028:	2b00      	cmp	r3, #0
2000102a:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
2000102e:	9900      	ldr	r1, [sp, #0]
20001030:	f340 8087 	ble.w	20001142 <sinpwm+0x152>
20001034:	18d0      	adds	r0, r2, r3
20001036:	1a9b      	subs	r3, r3, r2
20001038:	2b00      	cmp	r3, #0
2000103a:	f000 80aa 	beq.w	20001192 <sinpwm+0x1a2>
2000103e:	9f01      	ldr	r7, [sp, #4]
20001040:	f340 8083 	ble.w	2000114a <sinpwm+0x15a>
20001044:	eb00 0263 	add.w	r2, r0, r3, asr #1
20001048:	4439      	add	r1, r7
2000104a:	eba3 0360 	sub.w	r3, r3, r0, asr #1
2000104e:	2b00      	cmp	r3, #0
20001050:	f000 80a1 	beq.w	20001196 <sinpwm+0x1a6>
20001054:	9f02      	ldr	r7, [sp, #8]
20001056:	dd7e      	ble.n	20001156 <sinpwm+0x166>
20001058:	eb02 00a3 	add.w	r0, r2, r3, asr #2
2000105c:	4439      	add	r1, r7
2000105e:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20001062:	2b00      	cmp	r3, #0
20001064:	f000 809a 	beq.w	2000119c <sinpwm+0x1ac>
20001068:	9f03      	ldr	r7, [sp, #12]
2000106a:	dd7a      	ble.n	20001162 <sinpwm+0x172>
2000106c:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20001070:	4439      	add	r1, r7
20001072:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20001076:	2b00      	cmp	r3, #0
20001078:	f000 8092 	beq.w	200011a0 <sinpwm+0x1b0>
2000107c:	9f04      	ldr	r7, [sp, #16]
2000107e:	dd76      	ble.n	2000116e <sinpwm+0x17e>
20001080:	eb02 1023 	add.w	r0, r2, r3, asr #4
20001084:	4439      	add	r1, r7
20001086:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000108a:	2b00      	cmp	r3, #0
2000108c:	f000 808b 	beq.w	200011a6 <sinpwm+0x1b6>
20001090:	9f05      	ldr	r7, [sp, #20]
20001092:	dd72      	ble.n	2000117a <sinpwm+0x18a>
20001094:	eb00 1263 	add.w	r2, r0, r3, asr #5
20001098:	4439      	add	r1, r7
2000109a:	eba3 1360 	sub.w	r3, r3, r0, asr #5
2000109e:	2b00      	cmp	r3, #0
200010a0:	f000 8083 	beq.w	200011aa <sinpwm+0x1ba>
200010a4:	9f06      	ldr	r7, [sp, #24]
200010a6:	dd6e      	ble.n	20001186 <sinpwm+0x196>
200010a8:	eb02 10a3 	add.w	r0, r2, r3, asr #6
200010ac:	4439      	add	r1, r7
200010ae:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
200010b2:	2b00      	cmp	r3, #0
200010b4:	d07c      	beq.n	200011b0 <sinpwm+0x1c0>
200010b6:	9a07      	ldr	r2, [sp, #28]
200010b8:	bfc7      	ittee	gt
200010ba:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
200010be:	1889      	addgt	r1, r1, r2
200010c0:	1a89      	suble	r1, r1, r2
200010c2:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
200010c6:	2207      	movs	r2, #7
200010c8:	ab10      	add	r3, sp, #64	; 0x40
200010ca:	eb03 0282 	add.w	r2, r3, r2, lsl #2
200010ce:	f852 3c20 	ldr.w	r3, [r2, #-32]
200010d2:	2e00      	cmp	r6, #0
200010d4:	fb03 f300 	mul.w	r3, r3, r0
200010d8:	bfb8      	it	lt
200010da:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
200010de:	2900      	cmp	r1, #0
200010e0:	bfb8      	it	lt
200010e2:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
200010e6:	151b      	asrs	r3, r3, #20
200010e8:	440d      	add	r5, r1
200010ea:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
200010ee:	f3c5 0509 	ubfx	r5, r5, #0, #10
200010f2:	dd22      	ble.n	2000113a <sinpwm+0x14a>
200010f4:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 200011bc <sinpwm+0x1cc>
200010f8:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
200010fc:	2001      	movs	r0, #1
200010fe:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
20001102:	4f2d      	ldr	r7, [pc, #180]	; (200011b8 <sinpwm+0x1c8>)
20001104:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
20001108:	3602      	adds	r6, #2
2000110a:	f3ce 0e09 	ubfx	lr, lr, #0, #10
2000110e:	f3c6 0609 	ubfx	r6, r6, #0, #10
20001112:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
20001116:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
2000111a:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
2000111e:	fb06 f50c 	mul.w	r5, r6, ip
20001122:	fb01 f10c 	mul.w	r1, r1, ip
20001126:	fb02 f303 	mul.w	r3, r2, r3
2000112a:	12ad      	asrs	r5, r5, #10
2000112c:	128a      	asrs	r2, r1, #10
2000112e:	129b      	asrs	r3, r3, #10
20001130:	60a5      	str	r5, [r4, #8]
20001132:	6062      	str	r2, [r4, #4]
20001134:	6023      	str	r3, [r4, #0]
20001136:	b011      	add	sp, #68	; 0x44
20001138:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000113a:	f1c3 0c00 	rsb	ip, r3, #0
2000113e:	2000      	movs	r0, #0
20001140:	e7dd      	b.n	200010fe <sinpwm+0x10e>
20001142:	1ad0      	subs	r0, r2, r3
20001144:	4249      	negs	r1, r1
20001146:	4413      	add	r3, r2
20001148:	e776      	b.n	20001038 <sinpwm+0x48>
2000114a:	eba0 0263 	sub.w	r2, r0, r3, asr #1
2000114e:	1bc9      	subs	r1, r1, r7
20001150:	eb03 0360 	add.w	r3, r3, r0, asr #1
20001154:	e77b      	b.n	2000104e <sinpwm+0x5e>
20001156:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
2000115a:	1bc9      	subs	r1, r1, r7
2000115c:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20001160:	e77f      	b.n	20001062 <sinpwm+0x72>
20001162:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20001166:	1bc9      	subs	r1, r1, r7
20001168:	eb03 03e0 	add.w	r3, r3, r0, asr #3
2000116c:	e783      	b.n	20001076 <sinpwm+0x86>
2000116e:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20001172:	1bc9      	subs	r1, r1, r7
20001174:	eb03 1322 	add.w	r3, r3, r2, asr #4
20001178:	e787      	b.n	2000108a <sinpwm+0x9a>
2000117a:	eba0 1263 	sub.w	r2, r0, r3, asr #5
2000117e:	1bc9      	subs	r1, r1, r7
20001180:	eb03 1360 	add.w	r3, r3, r0, asr #5
20001184:	e78b      	b.n	2000109e <sinpwm+0xae>
20001186:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
2000118a:	1bc9      	subs	r1, r1, r7
2000118c:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20001190:	e78f      	b.n	200010b2 <sinpwm+0xc2>
20001192:	461a      	mov	r2, r3
20001194:	e798      	b.n	200010c8 <sinpwm+0xd8>
20001196:	4610      	mov	r0, r2
20001198:	2201      	movs	r2, #1
2000119a:	e795      	b.n	200010c8 <sinpwm+0xd8>
2000119c:	2202      	movs	r2, #2
2000119e:	e793      	b.n	200010c8 <sinpwm+0xd8>
200011a0:	4610      	mov	r0, r2
200011a2:	2203      	movs	r2, #3
200011a4:	e790      	b.n	200010c8 <sinpwm+0xd8>
200011a6:	2204      	movs	r2, #4
200011a8:	e78e      	b.n	200010c8 <sinpwm+0xd8>
200011aa:	4610      	mov	r0, r2
200011ac:	2205      	movs	r2, #5
200011ae:	e78b      	b.n	200010c8 <sinpwm+0xd8>
200011b0:	2206      	movs	r2, #6
200011b2:	e789      	b.n	200010c8 <sinpwm+0xd8>
200011b4:	20001de8 	.word	0x20001de8
200011b8:	20001e28 	.word	0x20001e28
200011bc:	fffffe0c 	.word	0xfffffe0c

200011c0 <svpwm>:
200011c0:	b5f0      	push	{r4, r5, r6, r7, lr}
200011c2:	b091      	sub	sp, #68	; 0x44
200011c4:	46ee      	mov	lr, sp
200011c6:	468c      	mov	ip, r1
200011c8:	4eb9      	ldr	r6, [pc, #740]	; (200014b0 <svpwm+0x2f0>)
200011ca:	4604      	mov	r4, r0
200011cc:	4615      	mov	r5, r2
200011ce:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200011d0:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200011d4:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200011d8:	af08      	add	r7, sp, #32
200011da:	3610      	adds	r6, #16
200011dc:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200011e0:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200011e2:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200011e4:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200011e8:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200011ec:	f8dc 6000 	ldr.w	r6, [ip]
200011f0:	f8dc 3004 	ldr.w	r3, [ip, #4]
200011f4:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200011f8:	2b00      	cmp	r3, #0
200011fa:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200011fe:	9900      	ldr	r1, [sp, #0]
20001200:	dd71      	ble.n	200012e6 <svpwm+0x126>
20001202:	18d0      	adds	r0, r2, r3
20001204:	1a9b      	subs	r3, r3, r2
20001206:	2b00      	cmp	r3, #0
20001208:	f000 8141 	beq.w	2000148e <svpwm+0x2ce>
2000120c:	9f01      	ldr	r7, [sp, #4]
2000120e:	dd6e      	ble.n	200012ee <svpwm+0x12e>
20001210:	eb00 0263 	add.w	r2, r0, r3, asr #1
20001214:	4439      	add	r1, r7
20001216:	eba3 0360 	sub.w	r3, r3, r0, asr #1
2000121a:	2b00      	cmp	r3, #0
2000121c:	f000 8139 	beq.w	20001492 <svpwm+0x2d2>
20001220:	9f02      	ldr	r7, [sp, #8]
20001222:	dd6a      	ble.n	200012fa <svpwm+0x13a>
20001224:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20001228:	4439      	add	r1, r7
2000122a:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
2000122e:	2b00      	cmp	r3, #0
20001230:	f000 8132 	beq.w	20001498 <svpwm+0x2d8>
20001234:	9f03      	ldr	r7, [sp, #12]
20001236:	dd66      	ble.n	20001306 <svpwm+0x146>
20001238:	eb00 02e3 	add.w	r2, r0, r3, asr #3
2000123c:	4439      	add	r1, r7
2000123e:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20001242:	2b00      	cmp	r3, #0
20001244:	f000 812a 	beq.w	2000149c <svpwm+0x2dc>
20001248:	9f04      	ldr	r7, [sp, #16]
2000124a:	dd62      	ble.n	20001312 <svpwm+0x152>
2000124c:	eb02 1023 	add.w	r0, r2, r3, asr #4
20001250:	4439      	add	r1, r7
20001252:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20001256:	2b00      	cmp	r3, #0
20001258:	f000 8123 	beq.w	200014a2 <svpwm+0x2e2>
2000125c:	9f05      	ldr	r7, [sp, #20]
2000125e:	dd5e      	ble.n	2000131e <svpwm+0x15e>
20001260:	eb00 1263 	add.w	r2, r0, r3, asr #5
20001264:	4439      	add	r1, r7
20001266:	eba3 1360 	sub.w	r3, r3, r0, asr #5
2000126a:	2b00      	cmp	r3, #0
2000126c:	f000 811b 	beq.w	200014a6 <svpwm+0x2e6>
20001270:	9f06      	ldr	r7, [sp, #24]
20001272:	dd5a      	ble.n	2000132a <svpwm+0x16a>
20001274:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20001278:	4439      	add	r1, r7
2000127a:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
2000127e:	2b00      	cmp	r3, #0
20001280:	f000 8114 	beq.w	200014ac <svpwm+0x2ec>
20001284:	9a07      	ldr	r2, [sp, #28]
20001286:	bfc7      	ittee	gt
20001288:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
2000128c:	1889      	addgt	r1, r1, r2
2000128e:	1a89      	suble	r1, r1, r2
20001290:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20001294:	2207      	movs	r2, #7
20001296:	ab10      	add	r3, sp, #64	; 0x40
20001298:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000129c:	f852 3c20 	ldr.w	r3, [r2, #-32]
200012a0:	2e00      	cmp	r6, #0
200012a2:	bfb8      	it	lt
200012a4:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
200012a8:	fb03 f300 	mul.w	r3, r3, r0
200012ac:	2900      	cmp	r1, #0
200012ae:	bfb8      	it	lt
200012b0:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
200012b4:	4a7f      	ldr	r2, [pc, #508]	; (200014b4 <svpwm+0x2f4>)
200012b6:	440d      	add	r5, r1
200012b8:	151b      	asrs	r3, r3, #20
200012ba:	f3c5 0509 	ubfx	r5, r5, #0, #10
200012be:	6013      	str	r3, [r2, #0]
200012c0:	eb05 0245 	add.w	r2, r5, r5, lsl #1
200012c4:	1252      	asrs	r2, r2, #9
200012c6:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
200012ca:	f102 32ff 	add.w	r2, r2, #4294967295
200012ce:	bfc6      	itte	gt
200012d0:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
200012d4:	2001      	movgt	r0, #1
200012d6:	2000      	movle	r0, #0
200012d8:	2a04      	cmp	r2, #4
200012da:	d848      	bhi.n	2000136e <svpwm+0x1ae>
200012dc:	e8df f002 	tbb	[pc, r2]
200012e0:	2b9e8164 	.word	0x2b9e8164
200012e4:	bb          	.byte	0xbb
200012e5:	00          	.byte	0x00
200012e6:	1ad0      	subs	r0, r2, r3
200012e8:	4249      	negs	r1, r1
200012ea:	4413      	add	r3, r2
200012ec:	e78b      	b.n	20001206 <svpwm+0x46>
200012ee:	eba0 0263 	sub.w	r2, r0, r3, asr #1
200012f2:	1bc9      	subs	r1, r1, r7
200012f4:	eb03 0360 	add.w	r3, r3, r0, asr #1
200012f8:	e78f      	b.n	2000121a <svpwm+0x5a>
200012fa:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
200012fe:	1bc9      	subs	r1, r1, r7
20001300:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20001304:	e793      	b.n	2000122e <svpwm+0x6e>
20001306:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
2000130a:	1bc9      	subs	r1, r1, r7
2000130c:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20001310:	e797      	b.n	20001242 <svpwm+0x82>
20001312:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20001316:	1bc9      	subs	r1, r1, r7
20001318:	eb03 1322 	add.w	r3, r3, r2, asr #4
2000131c:	e79b      	b.n	20001256 <svpwm+0x96>
2000131e:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20001322:	1bc9      	subs	r1, r1, r7
20001324:	eb03 1360 	add.w	r3, r3, r0, asr #5
20001328:	e79f      	b.n	2000126a <svpwm+0xaa>
2000132a:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
2000132e:	1bc9      	subs	r1, r1, r7
20001330:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20001334:	e7a3      	b.n	2000127e <svpwm+0xbe>
20001336:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
2000133a:	4e5f      	ldr	r6, [pc, #380]	; (200014b8 <svpwm+0x2f8>)
2000133c:	3204      	adds	r2, #4
2000133e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20001342:	3556      	adds	r5, #86	; 0x56
20001344:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20001348:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000134c:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20001350:	fb01 f103 	mul.w	r1, r1, r3
20001354:	fb02 f203 	mul.w	r2, r2, r3
20001358:	1289      	asrs	r1, r1, #10
2000135a:	1293      	asrs	r3, r2, #10
2000135c:	424a      	negs	r2, r1
2000135e:	1ad2      	subs	r2, r2, r3
20001360:	1a5d      	subs	r5, r3, r1
20001362:	440b      	add	r3, r1
20001364:	6062      	str	r2, [r4, #4]
20001366:	6025      	str	r5, [r4, #0]
20001368:	60a3      	str	r3, [r4, #8]
2000136a:	b011      	add	sp, #68	; 0x44
2000136c:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000136e:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20001372:	4e51      	ldr	r6, [pc, #324]	; (200014b8 <svpwm+0x2f8>)
20001374:	3202      	adds	r2, #2
20001376:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000137a:	f505 7540 	add.w	r5, r5, #768	; 0x300
2000137e:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20001382:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001386:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
2000138a:	fb01 f103 	mul.w	r1, r1, r3
2000138e:	fb02 f203 	mul.w	r2, r2, r3
20001392:	1289      	asrs	r1, r1, #10
20001394:	1293      	asrs	r3, r2, #10
20001396:	424a      	negs	r2, r1
20001398:	1ad2      	subs	r2, r2, r3
2000139a:	18cd      	adds	r5, r1, r3
2000139c:	1a5b      	subs	r3, r3, r1
2000139e:	60a2      	str	r2, [r4, #8]
200013a0:	6025      	str	r5, [r4, #0]
200013a2:	6063      	str	r3, [r4, #4]
200013a4:	b011      	add	sp, #68	; 0x44
200013a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200013a8:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
200013ac:	4e42      	ldr	r6, [pc, #264]	; (200014b8 <svpwm+0x2f8>)
200013ae:	3204      	adds	r2, #4
200013b0:	f3c2 0209 	ubfx	r2, r2, #0, #10
200013b4:	f205 2556 	addw	r5, r5, #598	; 0x256
200013b8:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
200013bc:	f3c5 0509 	ubfx	r5, r5, #0, #10
200013c0:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
200013c4:	fb01 f103 	mul.w	r1, r1, r3
200013c8:	fb02 f203 	mul.w	r2, r2, r3
200013cc:	1289      	asrs	r1, r1, #10
200013ce:	1293      	asrs	r3, r2, #10
200013d0:	424a      	negs	r2, r1
200013d2:	1ad2      	subs	r2, r2, r3
200013d4:	1acd      	subs	r5, r1, r3
200013d6:	440b      	add	r3, r1
200013d8:	60a2      	str	r2, [r4, #8]
200013da:	6025      	str	r5, [r4, #0]
200013dc:	6063      	str	r3, [r4, #4]
200013de:	b011      	add	sp, #68	; 0x44
200013e0:	bdf0      	pop	{r4, r5, r6, r7, pc}
200013e2:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
200013e6:	4e34      	ldr	r6, [pc, #208]	; (200014b8 <svpwm+0x2f8>)
200013e8:	320f      	adds	r2, #15
200013ea:	f3c2 0209 	ubfx	r2, r2, #0, #10
200013ee:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
200013f2:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
200013f6:	f3c5 0509 	ubfx	r5, r5, #0, #10
200013fa:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
200013fe:	fb01 f103 	mul.w	r1, r1, r3
20001402:	fb02 f203 	mul.w	r2, r2, r3
20001406:	1289      	asrs	r1, r1, #10
20001408:	1293      	asrs	r3, r2, #10
2000140a:	424a      	negs	r2, r1
2000140c:	1ad2      	subs	r2, r2, r3
2000140e:	18cd      	adds	r5, r1, r3
20001410:	1a5b      	subs	r3, r3, r1
20001412:	e884 0024 	stmia.w	r4, {r2, r5}
20001416:	60a3      	str	r3, [r4, #8]
20001418:	b011      	add	sp, #68	; 0x44
2000141a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000141c:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20001420:	4e25      	ldr	r6, [pc, #148]	; (200014b8 <svpwm+0x2f8>)
20001422:	320a      	adds	r2, #10
20001424:	f3c2 0209 	ubfx	r2, r2, #0, #10
20001428:	f505 7580 	add.w	r5, r5, #256	; 0x100
2000142c:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20001430:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001434:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20001438:	fb01 f103 	mul.w	r1, r1, r3
2000143c:	fb02 f203 	mul.w	r2, r2, r3
20001440:	1289      	asrs	r1, r1, #10
20001442:	1293      	asrs	r3, r2, #10
20001444:	424a      	negs	r2, r1
20001446:	1ad2      	subs	r2, r2, r3
20001448:	1acd      	subs	r5, r1, r3
2000144a:	440b      	add	r3, r1
2000144c:	e884 0024 	stmia.w	r4, {r2, r5}
20001450:	60a3      	str	r3, [r4, #8]
20001452:	b011      	add	sp, #68	; 0x44
20001454:	bdf0      	pop	{r4, r5, r6, r7, pc}
20001456:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
2000145a:	4917      	ldr	r1, [pc, #92]	; (200014b8 <svpwm+0x2f8>)
2000145c:	320f      	adds	r2, #15
2000145e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20001462:	3d55      	subs	r5, #85	; 0x55
20001464:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20001468:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000146c:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20001470:	fb02 f203 	mul.w	r2, r2, r3
20001474:	fb01 f303 	mul.w	r3, r1, r3
20001478:	1292      	asrs	r2, r2, #10
2000147a:	129b      	asrs	r3, r3, #10
2000147c:	4251      	negs	r1, r2
2000147e:	18d5      	adds	r5, r2, r3
20001480:	1ac9      	subs	r1, r1, r3
20001482:	1ad2      	subs	r2, r2, r3
20001484:	6061      	str	r1, [r4, #4]
20001486:	6025      	str	r5, [r4, #0]
20001488:	60a2      	str	r2, [r4, #8]
2000148a:	b011      	add	sp, #68	; 0x44
2000148c:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000148e:	461a      	mov	r2, r3
20001490:	e701      	b.n	20001296 <svpwm+0xd6>
20001492:	4610      	mov	r0, r2
20001494:	2201      	movs	r2, #1
20001496:	e6fe      	b.n	20001296 <svpwm+0xd6>
20001498:	2202      	movs	r2, #2
2000149a:	e6fc      	b.n	20001296 <svpwm+0xd6>
2000149c:	4610      	mov	r0, r2
2000149e:	2203      	movs	r2, #3
200014a0:	e6f9      	b.n	20001296 <svpwm+0xd6>
200014a2:	2204      	movs	r2, #4
200014a4:	e6f7      	b.n	20001296 <svpwm+0xd6>
200014a6:	4610      	mov	r0, r2
200014a8:	2205      	movs	r2, #5
200014aa:	e6f4      	b.n	20001296 <svpwm+0xd6>
200014ac:	2206      	movs	r2, #6
200014ae:	e6f2      	b.n	20001296 <svpwm+0xd6>
200014b0:	20001de8 	.word	0x20001de8
200014b4:	20002fcc 	.word	0x20002fcc
200014b8:	20001e28 	.word	0x20001e28

200014bc <encoder_init>:
200014bc:	4b01      	ldr	r3, [pc, #4]	; (200014c4 <encoder_init+0x8>)
200014be:	6058      	str	r0, [r3, #4]
200014c0:	6098      	str	r0, [r3, #8]
200014c2:	4770      	bx	lr
200014c4:	20002fcc 	.word	0x20002fcc

200014c8 <get_speed>:
200014c8:	4a0e      	ldr	r2, [pc, #56]	; (20001504 <get_speed+0x3c>)
200014ca:	b430      	push	{r4, r5}
200014cc:	6893      	ldr	r3, [r2, #8]
200014ce:	6855      	ldr	r5, [r2, #4]
200014d0:	1ac3      	subs	r3, r0, r3
200014d2:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
200014d6:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
200014da:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
200014de:	6095      	str	r5, [r2, #8]
200014e0:	6050      	str	r0, [r2, #4]
200014e2:	dd05      	ble.n	200014f0 <get_speed+0x28>
200014e4:	2b00      	cmp	r3, #0
200014e6:	bfb4      	ite	lt
200014e8:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
200014ec:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
200014f0:	4a05      	ldr	r2, [pc, #20]	; (20001508 <get_speed+0x40>)
200014f2:	1058      	asrs	r0, r3, #1
200014f4:	fb02 f000 	mul.w	r0, r2, r0
200014f8:	bc30      	pop	{r4, r5}
200014fa:	680a      	ldr	r2, [r1, #0]
200014fc:	1300      	asrs	r0, r0, #12
200014fe:	4413      	add	r3, r2
20001500:	600b      	str	r3, [r1, #0]
20001502:	4770      	bx	lr
20001504:	20002fcc 	.word	0x20002fcc
20001508:	0002ae7c 	.word	0x0002ae7c

2000150c <rfilter1>:
2000150c:	b470      	push	{r4, r5, r6}
2000150e:	f240 74c6 	movw	r4, #1990	; 0x7c6
20001512:	4b0e      	ldr	r3, [pc, #56]	; (2000154c <rfilter1+0x40>)
20001514:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20001518:	68de      	ldr	r6, [r3, #12]
2000151a:	6959      	ldr	r1, [r3, #20]
2000151c:	fb04 f406 	mul.w	r4, r4, r6
20001520:	fb02 4201 	mla	r2, r2, r1, r4
20001524:	490a      	ldr	r1, [pc, #40]	; (20001550 <rfilter1+0x44>)
20001526:	691d      	ldr	r5, [r3, #16]
20001528:	fb01 2200 	mla	r2, r1, r0, r2
2000152c:	4c09      	ldr	r4, [pc, #36]	; (20001554 <rfilter1+0x48>)
2000152e:	6999      	ldr	r1, [r3, #24]
20001530:	fb04 2205 	mla	r2, r4, r5, r2
20001534:	4c08      	ldr	r4, [pc, #32]	; (20001558 <rfilter1+0x4c>)
20001536:	615e      	str	r6, [r3, #20]
20001538:	fb04 2201 	mla	r2, r4, r1, r2
2000153c:	1291      	asrs	r1, r2, #10
2000153e:	6118      	str	r0, [r3, #16]
20001540:	619d      	str	r5, [r3, #24]
20001542:	1490      	asrs	r0, r2, #18
20001544:	60d9      	str	r1, [r3, #12]
20001546:	bc70      	pop	{r4, r5, r6}
20001548:	4770      	bx	lr
2000154a:	bf00      	nop
2000154c:	20002fcc 	.word	0x20002fcc
20001550:	0003f0a4 	.word	0x0003f0a4
20001554:	fff83a2e 	.word	0xfff83a2e
20001558:	0003dc29 	.word	0x0003dc29

2000155c <rfilter2>:
2000155c:	b470      	push	{r4, r5, r6}
2000155e:	f240 748a 	movw	r4, #1930	; 0x78a
20001562:	4b0d      	ldr	r3, [pc, #52]	; (20001598 <rfilter2+0x3c>)
20001564:	4a0d      	ldr	r2, [pc, #52]	; (2000159c <rfilter2+0x40>)
20001566:	69de      	ldr	r6, [r3, #28]
20001568:	6a59      	ldr	r1, [r3, #36]	; 0x24
2000156a:	fb04 f406 	mul.w	r4, r4, r6
2000156e:	fb02 4201 	mla	r2, r2, r1, r4
20001572:	490b      	ldr	r1, [pc, #44]	; (200015a0 <rfilter2+0x44>)
20001574:	6a1d      	ldr	r5, [r3, #32]
20001576:	fb01 2200 	mla	r2, r1, r0, r2
2000157a:	4c0a      	ldr	r4, [pc, #40]	; (200015a4 <rfilter2+0x48>)
2000157c:	6a99      	ldr	r1, [r3, #40]	; 0x28
2000157e:	fb04 2205 	mla	r2, r4, r5, r2
20001582:	4c09      	ldr	r4, [pc, #36]	; (200015a8 <rfilter2+0x4c>)
20001584:	625e      	str	r6, [r3, #36]	; 0x24
20001586:	fb04 2201 	mla	r2, r4, r1, r2
2000158a:	1291      	asrs	r1, r2, #10
2000158c:	6218      	str	r0, [r3, #32]
2000158e:	629d      	str	r5, [r3, #40]	; 0x28
20001590:	1490      	asrs	r0, r2, #18
20001592:	61d9      	str	r1, [r3, #28]
20001594:	bc70      	pop	{r4, r5, r6}
20001596:	4770      	bx	lr
20001598:	20002fcc 	.word	0x20002fcc
2000159c:	fffffc66 	.word	0xfffffc66
200015a0:	0003e3d7 	.word	0x0003e3d7
200015a4:	fff8767b 	.word	0xfff8767b
200015a8:	0003b5c3 	.word	0x0003b5c3

200015ac <adc_init>:
200015ac:	b480      	push	{r7}
200015ae:	af00      	add	r7, sp, #0
200015b0:	4a10      	ldr	r2, [pc, #64]	; (200015f4 <adc_init+0x48>)
200015b2:	4b10      	ldr	r3, [pc, #64]	; (200015f4 <adc_init+0x48>)
200015b4:	69db      	ldr	r3, [r3, #28]
200015b6:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
200015ba:	61d3      	str	r3, [r2, #28]
200015bc:	4b0d      	ldr	r3, [pc, #52]	; (200015f4 <adc_init+0x48>)
200015be:	f242 0220 	movw	r2, #8224	; 0x2020
200015c2:	615a      	str	r2, [r3, #20]
200015c4:	4b0c      	ldr	r3, [pc, #48]	; (200015f8 <adc_init+0x4c>)
200015c6:	2200      	movs	r2, #0
200015c8:	601a      	str	r2, [r3, #0]
200015ca:	4a0b      	ldr	r2, [pc, #44]	; (200015f8 <adc_init+0x4c>)
200015cc:	4b0a      	ldr	r3, [pc, #40]	; (200015f8 <adc_init+0x4c>)
200015ce:	681b      	ldr	r3, [r3, #0]
200015d0:	f443 7301 	orr.w	r3, r3, #516	; 0x204
200015d4:	f043 0301 	orr.w	r3, r3, #1
200015d8:	6013      	str	r3, [r2, #0]
200015da:	4a07      	ldr	r2, [pc, #28]	; (200015f8 <adc_init+0x4c>)
200015dc:	4b06      	ldr	r3, [pc, #24]	; (200015f8 <adc_init+0x4c>)
200015de:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200015e0:	f443 73f0 	orr.w	r3, r3, #480	; 0x1e0
200015e4:	6293      	str	r3, [r2, #40]	; 0x28
200015e6:	4b04      	ldr	r3, [pc, #16]	; (200015f8 <adc_init+0x4c>)
200015e8:	2210      	movs	r2, #16
200015ea:	621a      	str	r2, [r3, #32]
200015ec:	bf00      	nop
200015ee:	46bd      	mov	sp, r7
200015f0:	bc80      	pop	{r7}
200015f2:	4770      	bx	lr
200015f4:	40020000 	.word	0x40020000
200015f8:	40088000 	.word	0x40088000

200015fc <dma_init>:
200015fc:	b480      	push	{r7}
200015fe:	af00      	add	r7, sp, #0
20001600:	4a17      	ldr	r2, [pc, #92]	; (20001660 <dma_init+0x64>)
20001602:	4b17      	ldr	r3, [pc, #92]	; (20001660 <dma_init+0x64>)
20001604:	69db      	ldr	r3, [r3, #28]
20001606:	f043 0320 	orr.w	r3, r3, #32
2000160a:	61d3      	str	r3, [r2, #28]
2000160c:	4b15      	ldr	r3, [pc, #84]	; (20001664 <dma_init+0x68>)
2000160e:	4a16      	ldr	r2, [pc, #88]	; (20001668 <dma_init+0x6c>)
20001610:	609a      	str	r2, [r3, #8]
20001612:	4b14      	ldr	r3, [pc, #80]	; (20001664 <dma_init+0x68>)
20001614:	f04f 32ff 	mov.w	r2, #4294967295
20001618:	62da      	str	r2, [r3, #44]	; 0x2c
2000161a:	4b12      	ldr	r3, [pc, #72]	; (20001664 <dma_init+0x68>)
2000161c:	f04f 32ff 	mov.w	r2, #4294967295
20001620:	621a      	str	r2, [r3, #32]
20001622:	4b10      	ldr	r3, [pc, #64]	; (20001664 <dma_init+0x68>)
20001624:	f04f 32ff 	mov.w	r2, #4294967295
20001628:	635a      	str	r2, [r3, #52]	; 0x34
2000162a:	4b0e      	ldr	r3, [pc, #56]	; (20001664 <dma_init+0x68>)
2000162c:	f44f 7280 	mov.w	r2, #256	; 0x100
20001630:	61da      	str	r2, [r3, #28]
20001632:	4b0c      	ldr	r3, [pc, #48]	; (20001664 <dma_init+0x68>)
20001634:	f44f 7280 	mov.w	r2, #256	; 0x100
20001638:	625a      	str	r2, [r3, #36]	; 0x24
2000163a:	4b0a      	ldr	r3, [pc, #40]	; (20001664 <dma_init+0x68>)
2000163c:	2201      	movs	r2, #1
2000163e:	605a      	str	r2, [r3, #4]
20001640:	4b09      	ldr	r3, [pc, #36]	; (20001668 <dma_init+0x6c>)
20001642:	4a0a      	ldr	r2, [pc, #40]	; (2000166c <dma_init+0x70>)
20001644:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20001648:	4a09      	ldr	r2, [pc, #36]	; (20001670 <dma_init+0x74>)
2000164a:	4b07      	ldr	r3, [pc, #28]	; (20001668 <dma_init+0x6c>)
2000164c:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001650:	4b05      	ldr	r3, [pc, #20]	; (20001668 <dma_init+0x6c>)
20001652:	4a08      	ldr	r2, [pc, #32]	; (20001674 <dma_init+0x78>)
20001654:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20001658:	bf00      	nop
2000165a:	46bd      	mov	sp, r7
2000165c:	bc80      	pop	{r7}
2000165e:	4770      	bx	lr
20001660:	40020000 	.word	0x40020000
20001664:	40028000 	.word	0x40028000
20001668:	20003400 	.word	0x20003400
2000166c:	40088018 	.word	0x40088018
20001670:	2000360c 	.word	0x2000360c
20001674:	ae000031 	.word	0xae000031

20001678 <adc_dma_init>:
20001678:	b580      	push	{r7, lr}
2000167a:	af00      	add	r7, sp, #0
2000167c:	f7ff ff96 	bl	200015ac <adc_init>
20001680:	f7ff ffbc 	bl	200015fc <dma_init>
20001684:	bf00      	nop
20001686:	bd80      	pop	{r7, pc}

20001688 <adc_dma_start>:
20001688:	b480      	push	{r7}
2000168a:	af00      	add	r7, sp, #0
2000168c:	4b07      	ldr	r3, [pc, #28]	; (200016ac <adc_dma_start+0x24>)
2000168e:	2200      	movs	r2, #0
20001690:	601a      	str	r2, [r3, #0]
20001692:	4b06      	ldr	r3, [pc, #24]	; (200016ac <adc_dma_start+0x24>)
20001694:	f240 220d 	movw	r2, #525	; 0x20d
20001698:	601a      	str	r2, [r3, #0]
2000169a:	4b05      	ldr	r3, [pc, #20]	; (200016b0 <adc_dma_start+0x28>)
2000169c:	f44f 7280 	mov.w	r2, #256	; 0x100
200016a0:	629a      	str	r2, [r3, #40]	; 0x28
200016a2:	bf00      	nop
200016a4:	46bd      	mov	sp, r7
200016a6:	bc80      	pop	{r7}
200016a8:	4770      	bx	lr
200016aa:	bf00      	nop
200016ac:	40088000 	.word	0x40088000
200016b0:	40028000 	.word	0x40028000

200016b4 <adc_dma_wait>:
200016b4:	b480      	push	{r7}
200016b6:	af00      	add	r7, sp, #0
200016b8:	bf00      	nop
200016ba:	4b0a      	ldr	r3, [pc, #40]	; (200016e4 <adc_dma_wait+0x30>)
200016bc:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
200016c0:	f003 0307 	and.w	r3, r3, #7
200016c4:	2b00      	cmp	r3, #0
200016c6:	d1f8      	bne.n	200016ba <adc_dma_wait+0x6>
200016c8:	4a07      	ldr	r2, [pc, #28]	; (200016e8 <adc_dma_wait+0x34>)
200016ca:	4b07      	ldr	r3, [pc, #28]	; (200016e8 <adc_dma_wait+0x34>)
200016cc:	681b      	ldr	r3, [r3, #0]
200016ce:	f023 0308 	bic.w	r3, r3, #8
200016d2:	6013      	str	r3, [r2, #0]
200016d4:	4b03      	ldr	r3, [pc, #12]	; (200016e4 <adc_dma_wait+0x30>)
200016d6:	4a05      	ldr	r2, [pc, #20]	; (200016ec <adc_dma_wait+0x38>)
200016d8:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
200016dc:	bf00      	nop
200016de:	46bd      	mov	sp, r7
200016e0:	bc80      	pop	{r7}
200016e2:	4770      	bx	lr
200016e4:	20003400 	.word	0x20003400
200016e8:	40088000 	.word	0x40088000
200016ec:	ae000031 	.word	0xae000031

200016f0 <NVIC_EnableIRQ>:
200016f0:	b480      	push	{r7}
200016f2:	b083      	sub	sp, #12
200016f4:	af00      	add	r7, sp, #0
200016f6:	4603      	mov	r3, r0
200016f8:	71fb      	strb	r3, [r7, #7]
200016fa:	4908      	ldr	r1, [pc, #32]	; (2000171c <NVIC_EnableIRQ+0x2c>)
200016fc:	f997 3007 	ldrsb.w	r3, [r7, #7]
20001700:	095b      	lsrs	r3, r3, #5
20001702:	79fa      	ldrb	r2, [r7, #7]
20001704:	f002 021f 	and.w	r2, r2, #31
20001708:	2001      	movs	r0, #1
2000170a:	fa00 f202 	lsl.w	r2, r0, r2
2000170e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20001712:	bf00      	nop
20001714:	370c      	adds	r7, #12
20001716:	46bd      	mov	sp, r7
20001718:	bc80      	pop	{r7}
2000171a:	4770      	bx	lr
2000171c:	e000e100 	.word	0xe000e100

20001720 <PortConfig>:
20001720:	b480      	push	{r7}
20001722:	af00      	add	r7, sp, #0
20001724:	4a66      	ldr	r2, [pc, #408]	; (200018c0 <PortConfig+0x1a0>)
20001726:	4b66      	ldr	r3, [pc, #408]	; (200018c0 <PortConfig+0x1a0>)
20001728:	69db      	ldr	r3, [r3, #28]
2000172a:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
2000172e:	61d3      	str	r3, [r2, #28]
20001730:	4b64      	ldr	r3, [pc, #400]	; (200018c4 <PortConfig+0x1a4>)
20001732:	2200      	movs	r2, #0
20001734:	609a      	str	r2, [r3, #8]
20001736:	4b63      	ldr	r3, [pc, #396]	; (200018c4 <PortConfig+0x1a4>)
20001738:	2200      	movs	r2, #0
2000173a:	601a      	str	r2, [r3, #0]
2000173c:	4a61      	ldr	r2, [pc, #388]	; (200018c4 <PortConfig+0x1a4>)
2000173e:	4b61      	ldr	r3, [pc, #388]	; (200018c4 <PortConfig+0x1a4>)
20001740:	685b      	ldr	r3, [r3, #4]
20001742:	f043 0301 	orr.w	r3, r3, #1
20001746:	6053      	str	r3, [r2, #4]
20001748:	4a5e      	ldr	r2, [pc, #376]	; (200018c4 <PortConfig+0x1a4>)
2000174a:	4b5e      	ldr	r3, [pc, #376]	; (200018c4 <PortConfig+0x1a4>)
2000174c:	68db      	ldr	r3, [r3, #12]
2000174e:	f043 0301 	orr.w	r3, r3, #1
20001752:	60d3      	str	r3, [r2, #12]
20001754:	4a5b      	ldr	r2, [pc, #364]	; (200018c4 <PortConfig+0x1a4>)
20001756:	4b5b      	ldr	r3, [pc, #364]	; (200018c4 <PortConfig+0x1a4>)
20001758:	699b      	ldr	r3, [r3, #24]
2000175a:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
2000175e:	6193      	str	r3, [r2, #24]
20001760:	4a58      	ldr	r2, [pc, #352]	; (200018c4 <PortConfig+0x1a4>)
20001762:	4b58      	ldr	r3, [pc, #352]	; (200018c4 <PortConfig+0x1a4>)
20001764:	685b      	ldr	r3, [r3, #4]
20001766:	f023 0308 	bic.w	r3, r3, #8
2000176a:	6053      	str	r3, [r2, #4]
2000176c:	4a55      	ldr	r2, [pc, #340]	; (200018c4 <PortConfig+0x1a4>)
2000176e:	4b55      	ldr	r3, [pc, #340]	; (200018c4 <PortConfig+0x1a4>)
20001770:	68db      	ldr	r3, [r3, #12]
20001772:	f043 0308 	orr.w	r3, r3, #8
20001776:	60d3      	str	r3, [r2, #12]
20001778:	4b52      	ldr	r3, [pc, #328]	; (200018c4 <PortConfig+0x1a4>)
2000177a:	2280      	movs	r2, #128	; 0x80
2000177c:	609a      	str	r2, [r3, #8]
2000177e:	4a50      	ldr	r2, [pc, #320]	; (200018c0 <PortConfig+0x1a0>)
20001780:	4b4f      	ldr	r3, [pc, #316]	; (200018c0 <PortConfig+0x1a0>)
20001782:	69db      	ldr	r3, [r3, #28]
20001784:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20001788:	61d3      	str	r3, [r2, #28]
2000178a:	4a4f      	ldr	r2, [pc, #316]	; (200018c8 <PortConfig+0x1a8>)
2000178c:	4b4e      	ldr	r3, [pc, #312]	; (200018c8 <PortConfig+0x1a8>)
2000178e:	689b      	ldr	r3, [r3, #8]
20001790:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20001794:	6093      	str	r3, [r2, #8]
20001796:	4a4c      	ldr	r2, [pc, #304]	; (200018c8 <PortConfig+0x1a8>)
20001798:	4b4b      	ldr	r3, [pc, #300]	; (200018c8 <PortConfig+0x1a8>)
2000179a:	689b      	ldr	r3, [r3, #8]
2000179c:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
200017a0:	6093      	str	r3, [r2, #8]
200017a2:	4a49      	ldr	r2, [pc, #292]	; (200018c8 <PortConfig+0x1a8>)
200017a4:	4b48      	ldr	r3, [pc, #288]	; (200018c8 <PortConfig+0x1a8>)
200017a6:	68db      	ldr	r3, [r3, #12]
200017a8:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
200017ac:	60d3      	str	r3, [r2, #12]
200017ae:	4a46      	ldr	r2, [pc, #280]	; (200018c8 <PortConfig+0x1a8>)
200017b0:	4b45      	ldr	r3, [pc, #276]	; (200018c8 <PortConfig+0x1a8>)
200017b2:	699b      	ldr	r3, [r3, #24]
200017b4:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
200017b8:	6193      	str	r3, [r2, #24]
200017ba:	4a43      	ldr	r2, [pc, #268]	; (200018c8 <PortConfig+0x1a8>)
200017bc:	4b42      	ldr	r3, [pc, #264]	; (200018c8 <PortConfig+0x1a8>)
200017be:	685b      	ldr	r3, [r3, #4]
200017c0:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
200017c4:	6053      	str	r3, [r2, #4]
200017c6:	4a40      	ldr	r2, [pc, #256]	; (200018c8 <PortConfig+0x1a8>)
200017c8:	4b3f      	ldr	r3, [pc, #252]	; (200018c8 <PortConfig+0x1a8>)
200017ca:	685b      	ldr	r3, [r3, #4]
200017cc:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
200017d0:	6053      	str	r3, [r2, #4]
200017d2:	4a3d      	ldr	r2, [pc, #244]	; (200018c8 <PortConfig+0x1a8>)
200017d4:	4b3c      	ldr	r3, [pc, #240]	; (200018c8 <PortConfig+0x1a8>)
200017d6:	689b      	ldr	r3, [r3, #8]
200017d8:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
200017dc:	6093      	str	r3, [r2, #8]
200017de:	4a3a      	ldr	r2, [pc, #232]	; (200018c8 <PortConfig+0x1a8>)
200017e0:	4b39      	ldr	r3, [pc, #228]	; (200018c8 <PortConfig+0x1a8>)
200017e2:	689b      	ldr	r3, [r3, #8]
200017e4:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
200017e8:	6093      	str	r3, [r2, #8]
200017ea:	4a37      	ldr	r2, [pc, #220]	; (200018c8 <PortConfig+0x1a8>)
200017ec:	4b36      	ldr	r3, [pc, #216]	; (200018c8 <PortConfig+0x1a8>)
200017ee:	68db      	ldr	r3, [r3, #12]
200017f0:	f043 0360 	orr.w	r3, r3, #96	; 0x60
200017f4:	60d3      	str	r3, [r2, #12]
200017f6:	4a34      	ldr	r2, [pc, #208]	; (200018c8 <PortConfig+0x1a8>)
200017f8:	4b33      	ldr	r3, [pc, #204]	; (200018c8 <PortConfig+0x1a8>)
200017fa:	68db      	ldr	r3, [r3, #12]
200017fc:	f043 031f 	orr.w	r3, r3, #31
20001800:	60d3      	str	r3, [r2, #12]
20001802:	4a2f      	ldr	r2, [pc, #188]	; (200018c0 <PortConfig+0x1a0>)
20001804:	4b2e      	ldr	r3, [pc, #184]	; (200018c0 <PortConfig+0x1a0>)
20001806:	69db      	ldr	r3, [r3, #28]
20001808:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
2000180c:	61d3      	str	r3, [r2, #28]
2000180e:	4b2f      	ldr	r3, [pc, #188]	; (200018cc <PortConfig+0x1ac>)
20001810:	4a2f      	ldr	r2, [pc, #188]	; (200018d0 <PortConfig+0x1b0>)
20001812:	609a      	str	r2, [r3, #8]
20001814:	4b2d      	ldr	r3, [pc, #180]	; (200018cc <PortConfig+0x1ac>)
20001816:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000181a:	60da      	str	r2, [r3, #12]
2000181c:	4b2b      	ldr	r3, [pc, #172]	; (200018cc <PortConfig+0x1ac>)
2000181e:	f04f 32ff 	mov.w	r2, #4294967295
20001822:	619a      	str	r2, [r3, #24]
20001824:	4b29      	ldr	r3, [pc, #164]	; (200018cc <PortConfig+0x1ac>)
20001826:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000182a:	605a      	str	r2, [r3, #4]
2000182c:	4a27      	ldr	r2, [pc, #156]	; (200018cc <PortConfig+0x1ac>)
2000182e:	4b27      	ldr	r3, [pc, #156]	; (200018cc <PortConfig+0x1ac>)
20001830:	681b      	ldr	r3, [r3, #0]
20001832:	f023 0303 	bic.w	r3, r3, #3
20001836:	6013      	str	r3, [r2, #0]
20001838:	4a24      	ldr	r2, [pc, #144]	; (200018cc <PortConfig+0x1ac>)
2000183a:	4b24      	ldr	r3, [pc, #144]	; (200018cc <PortConfig+0x1ac>)
2000183c:	681b      	ldr	r3, [r3, #0]
2000183e:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001842:	6013      	str	r3, [r2, #0]
20001844:	4a1e      	ldr	r2, [pc, #120]	; (200018c0 <PortConfig+0x1a0>)
20001846:	4b1e      	ldr	r3, [pc, #120]	; (200018c0 <PortConfig+0x1a0>)
20001848:	69db      	ldr	r3, [r3, #28]
2000184a:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
2000184e:	61d3      	str	r3, [r2, #28]
20001850:	4b20      	ldr	r3, [pc, #128]	; (200018d4 <PortConfig+0x1b4>)
20001852:	2200      	movs	r2, #0
20001854:	609a      	str	r2, [r3, #8]
20001856:	4a1f      	ldr	r2, [pc, #124]	; (200018d4 <PortConfig+0x1b4>)
20001858:	4b1e      	ldr	r3, [pc, #120]	; (200018d4 <PortConfig+0x1b4>)
2000185a:	685b      	ldr	r3, [r3, #4]
2000185c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001860:	6053      	str	r3, [r2, #4]
20001862:	4a1c      	ldr	r2, [pc, #112]	; (200018d4 <PortConfig+0x1b4>)
20001864:	4b1b      	ldr	r3, [pc, #108]	; (200018d4 <PortConfig+0x1b4>)
20001866:	68db      	ldr	r3, [r3, #12]
20001868:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000186c:	60d3      	str	r3, [r2, #12]
2000186e:	4b19      	ldr	r3, [pc, #100]	; (200018d4 <PortConfig+0x1b4>)
20001870:	f04f 32ff 	mov.w	r2, #4294967295
20001874:	619a      	str	r2, [r3, #24]
20001876:	4a17      	ldr	r2, [pc, #92]	; (200018d4 <PortConfig+0x1b4>)
20001878:	4b16      	ldr	r3, [pc, #88]	; (200018d4 <PortConfig+0x1b4>)
2000187a:	681b      	ldr	r3, [r3, #0]
2000187c:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
20001880:	6013      	str	r3, [r2, #0]
20001882:	4a0f      	ldr	r2, [pc, #60]	; (200018c0 <PortConfig+0x1a0>)
20001884:	4b0e      	ldr	r3, [pc, #56]	; (200018c0 <PortConfig+0x1a0>)
20001886:	69db      	ldr	r3, [r3, #28]
20001888:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
2000188c:	61d3      	str	r3, [r2, #28]
2000188e:	4a12      	ldr	r2, [pc, #72]	; (200018d8 <PortConfig+0x1b8>)
20001890:	4b11      	ldr	r3, [pc, #68]	; (200018d8 <PortConfig+0x1b8>)
20001892:	68db      	ldr	r3, [r3, #12]
20001894:	f423 7300 	bic.w	r3, r3, #512	; 0x200
20001898:	f023 0301 	bic.w	r3, r3, #1
2000189c:	60d3      	str	r3, [r2, #12]
2000189e:	4a08      	ldr	r2, [pc, #32]	; (200018c0 <PortConfig+0x1a0>)
200018a0:	4b07      	ldr	r3, [pc, #28]	; (200018c0 <PortConfig+0x1a0>)
200018a2:	69db      	ldr	r3, [r3, #28]
200018a4:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
200018a8:	61d3      	str	r3, [r2, #28]
200018aa:	4a0c      	ldr	r2, [pc, #48]	; (200018dc <PortConfig+0x1bc>)
200018ac:	4b0b      	ldr	r3, [pc, #44]	; (200018dc <PortConfig+0x1bc>)
200018ae:	68db      	ldr	r3, [r3, #12]
200018b0:	f423 7378 	bic.w	r3, r3, #992	; 0x3e0
200018b4:	60d3      	str	r3, [r2, #12]
200018b6:	bf00      	nop
200018b8:	46bd      	mov	sp, r7
200018ba:	bc80      	pop	{r7}
200018bc:	4770      	bx	lr
200018be:	bf00      	nop
200018c0:	40020000 	.word	0x40020000
200018c4:	400a8000 	.word	0x400a8000
200018c8:	400b0000 	.word	0x400b0000
200018cc:	400b8000 	.word	0x400b8000
200018d0:	000aaaa0 	.word	0x000aaaa0
200018d4:	400e8000 	.word	0x400e8000
200018d8:	400c8000 	.word	0x400c8000
200018dc:	400c0000 	.word	0x400c0000

200018e0 <ClkConfig>:
200018e0:	b480      	push	{r7}
200018e2:	af00      	add	r7, sp, #0
200018e4:	4a16      	ldr	r2, [pc, #88]	; (20001940 <ClkConfig+0x60>)
200018e6:	4b16      	ldr	r3, [pc, #88]	; (20001940 <ClkConfig+0x60>)
200018e8:	689b      	ldr	r3, [r3, #8]
200018ea:	f043 0301 	orr.w	r3, r3, #1
200018ee:	6093      	str	r3, [r2, #8]
200018f0:	bf00      	nop
200018f2:	4b13      	ldr	r3, [pc, #76]	; (20001940 <ClkConfig+0x60>)
200018f4:	681b      	ldr	r3, [r3, #0]
200018f6:	f003 0304 	and.w	r3, r3, #4
200018fa:	2b00      	cmp	r3, #0
200018fc:	d0f9      	beq.n	200018f2 <ClkConfig+0x12>
200018fe:	4b10      	ldr	r3, [pc, #64]	; (20001940 <ClkConfig+0x60>)
20001900:	2206      	movs	r2, #6
20001902:	60da      	str	r2, [r3, #12]
20001904:	4b0e      	ldr	r3, [pc, #56]	; (20001940 <ClkConfig+0x60>)
20001906:	f640 1204 	movw	r2, #2308	; 0x904
2000190a:	605a      	str	r2, [r3, #4]
2000190c:	bf00      	nop
2000190e:	4b0c      	ldr	r3, [pc, #48]	; (20001940 <ClkConfig+0x60>)
20001910:	681b      	ldr	r3, [r3, #0]
20001912:	f003 0302 	and.w	r3, r3, #2
20001916:	2b00      	cmp	r3, #0
20001918:	d0f9      	beq.n	2000190e <ClkConfig+0x2e>
2000191a:	4a09      	ldr	r2, [pc, #36]	; (20001940 <ClkConfig+0x60>)
2000191c:	4b08      	ldr	r3, [pc, #32]	; (20001940 <ClkConfig+0x60>)
2000191e:	68db      	ldr	r3, [r3, #12]
20001920:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001924:	60d3      	str	r3, [r2, #12]
20001926:	4a07      	ldr	r2, [pc, #28]	; (20001944 <ClkConfig+0x64>)
20001928:	4b06      	ldr	r3, [pc, #24]	; (20001944 <ClkConfig+0x64>)
2000192a:	681b      	ldr	r3, [r3, #0]
2000192c:	f043 0320 	orr.w	r3, r3, #32
20001930:	6013      	str	r3, [r2, #0]
20001932:	4b05      	ldr	r3, [pc, #20]	; (20001948 <ClkConfig+0x68>)
20001934:	2200      	movs	r2, #0
20001936:	601a      	str	r2, [r3, #0]
20001938:	bf00      	nop
2000193a:	46bd      	mov	sp, r7
2000193c:	bc80      	pop	{r7}
2000193e:	4770      	bx	lr
20001940:	40020000 	.word	0x40020000
20001944:	40018000 	.word	0x40018000
20001948:	20003000 	.word	0x20003000

2000194c <TimerConfig>:
2000194c:	b580      	push	{r7, lr}
2000194e:	af00      	add	r7, sp, #0
20001950:	4a99      	ldr	r2, [pc, #612]	; (20001bb8 <TimerConfig+0x26c>)
20001952:	4b99      	ldr	r3, [pc, #612]	; (20001bb8 <TimerConfig+0x26c>)
20001954:	69db      	ldr	r3, [r3, #28]
20001956:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
2000195a:	61d3      	str	r3, [r2, #28]
2000195c:	4a96      	ldr	r2, [pc, #600]	; (20001bb8 <TimerConfig+0x26c>)
2000195e:	4b96      	ldr	r3, [pc, #600]	; (20001bb8 <TimerConfig+0x26c>)
20001960:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001962:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
20001966:	6253      	str	r3, [r2, #36]	; 0x24
20001968:	4a93      	ldr	r2, [pc, #588]	; (20001bb8 <TimerConfig+0x26c>)
2000196a:	4b93      	ldr	r3, [pc, #588]	; (20001bb8 <TimerConfig+0x26c>)
2000196c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000196e:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001972:	6253      	str	r3, [r2, #36]	; 0x24
20001974:	4b91      	ldr	r3, [pc, #580]	; (20001bbc <TimerConfig+0x270>)
20001976:	2200      	movs	r2, #0
20001978:	601a      	str	r2, [r3, #0]
2000197a:	4b90      	ldr	r3, [pc, #576]	; (20001bbc <TimerConfig+0x270>)
2000197c:	224f      	movs	r2, #79	; 0x4f
2000197e:	605a      	str	r2, [r3, #4]
20001980:	4b8e      	ldr	r3, [pc, #568]	; (20001bbc <TimerConfig+0x270>)
20001982:	f240 32e7 	movw	r2, #999	; 0x3e7
20001986:	609a      	str	r2, [r3, #8]
20001988:	4a8c      	ldr	r2, [pc, #560]	; (20001bbc <TimerConfig+0x270>)
2000198a:	4b8c      	ldr	r3, [pc, #560]	; (20001bbc <TimerConfig+0x270>)
2000198c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000198e:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
20001992:	6253      	str	r3, [r2, #36]	; 0x24
20001994:	4a89      	ldr	r2, [pc, #548]	; (20001bbc <TimerConfig+0x270>)
20001996:	4b89      	ldr	r3, [pc, #548]	; (20001bbc <TimerConfig+0x270>)
20001998:	6d9b      	ldr	r3, [r3, #88]	; 0x58
2000199a:	f043 0302 	orr.w	r3, r3, #2
2000199e:	6593      	str	r3, [r2, #88]	; 0x58
200019a0:	4b86      	ldr	r3, [pc, #536]	; (20001bbc <TimerConfig+0x270>)
200019a2:	2201      	movs	r2, #1
200019a4:	60da      	str	r2, [r3, #12]
200019a6:	4a84      	ldr	r2, [pc, #528]	; (20001bb8 <TimerConfig+0x26c>)
200019a8:	4b83      	ldr	r3, [pc, #524]	; (20001bb8 <TimerConfig+0x26c>)
200019aa:	69db      	ldr	r3, [r3, #28]
200019ac:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
200019b0:	61d3      	str	r3, [r2, #28]
200019b2:	4a81      	ldr	r2, [pc, #516]	; (20001bb8 <TimerConfig+0x26c>)
200019b4:	4b80      	ldr	r3, [pc, #512]	; (20001bb8 <TimerConfig+0x26c>)
200019b6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200019b8:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
200019bc:	6253      	str	r3, [r2, #36]	; 0x24
200019be:	4a7e      	ldr	r2, [pc, #504]	; (20001bb8 <TimerConfig+0x26c>)
200019c0:	4b7d      	ldr	r3, [pc, #500]	; (20001bb8 <TimerConfig+0x26c>)
200019c2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200019c4:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
200019c8:	6253      	str	r3, [r2, #36]	; 0x24
200019ca:	4b7d      	ldr	r3, [pc, #500]	; (20001bc0 <TimerConfig+0x274>)
200019cc:	2200      	movs	r2, #0
200019ce:	601a      	str	r2, [r3, #0]
200019d0:	4b7b      	ldr	r3, [pc, #492]	; (20001bc0 <TimerConfig+0x274>)
200019d2:	2202      	movs	r2, #2
200019d4:	605a      	str	r2, [r3, #4]
200019d6:	4b7a      	ldr	r3, [pc, #488]	; (20001bc0 <TimerConfig+0x274>)
200019d8:	f240 32ff 	movw	r2, #1023	; 0x3ff
200019dc:	609a      	str	r2, [r3, #8]
200019de:	4b78      	ldr	r3, [pc, #480]	; (20001bc0 <TimerConfig+0x274>)
200019e0:	f44f 7200 	mov.w	r2, #512	; 0x200
200019e4:	611a      	str	r2, [r3, #16]
200019e6:	4b76      	ldr	r3, [pc, #472]	; (20001bc0 <TimerConfig+0x274>)
200019e8:	f44f 7200 	mov.w	r2, #512	; 0x200
200019ec:	615a      	str	r2, [r3, #20]
200019ee:	4b74      	ldr	r3, [pc, #464]	; (20001bc0 <TimerConfig+0x274>)
200019f0:	f44f 7200 	mov.w	r2, #512	; 0x200
200019f4:	619a      	str	r2, [r3, #24]
200019f6:	4b72      	ldr	r3, [pc, #456]	; (20001bc0 <TimerConfig+0x274>)
200019f8:	22c8      	movs	r2, #200	; 0xc8
200019fa:	61da      	str	r2, [r3, #28]
200019fc:	4a70      	ldr	r2, [pc, #448]	; (20001bc0 <TimerConfig+0x274>)
200019fe:	4b70      	ldr	r3, [pc, #448]	; (20001bc0 <TimerConfig+0x274>)
20001a00:	6a1b      	ldr	r3, [r3, #32]
20001a02:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001a06:	6213      	str	r3, [r2, #32]
20001a08:	4a6d      	ldr	r2, [pc, #436]	; (20001bc0 <TimerConfig+0x274>)
20001a0a:	4b6d      	ldr	r3, [pc, #436]	; (20001bc0 <TimerConfig+0x274>)
20001a0c:	6a1b      	ldr	r3, [r3, #32]
20001a0e:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001a12:	6213      	str	r3, [r2, #32]
20001a14:	4a6a      	ldr	r2, [pc, #424]	; (20001bc0 <TimerConfig+0x274>)
20001a16:	4b6a      	ldr	r3, [pc, #424]	; (20001bc0 <TimerConfig+0x274>)
20001a18:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001a1a:	f023 030f 	bic.w	r3, r3, #15
20001a1e:	6313      	str	r3, [r2, #48]	; 0x30
20001a20:	4a67      	ldr	r2, [pc, #412]	; (20001bc0 <TimerConfig+0x274>)
20001a22:	4b67      	ldr	r3, [pc, #412]	; (20001bc0 <TimerConfig+0x274>)
20001a24:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001a26:	f043 030c 	orr.w	r3, r3, #12
20001a2a:	6313      	str	r3, [r2, #48]	; 0x30
20001a2c:	4a64      	ldr	r2, [pc, #400]	; (20001bc0 <TimerConfig+0x274>)
20001a2e:	4b64      	ldr	r3, [pc, #400]	; (20001bc0 <TimerConfig+0x274>)
20001a30:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001a32:	f043 0301 	orr.w	r3, r3, #1
20001a36:	6313      	str	r3, [r2, #48]	; 0x30
20001a38:	4a61      	ldr	r2, [pc, #388]	; (20001bc0 <TimerConfig+0x274>)
20001a3a:	4b61      	ldr	r3, [pc, #388]	; (20001bc0 <TimerConfig+0x274>)
20001a3c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001a3e:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001a42:	6313      	str	r3, [r2, #48]	; 0x30
20001a44:	4a5e      	ldr	r2, [pc, #376]	; (20001bc0 <TimerConfig+0x274>)
20001a46:	4b5e      	ldr	r3, [pc, #376]	; (20001bc0 <TimerConfig+0x274>)
20001a48:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001a4a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001a4e:	6313      	str	r3, [r2, #48]	; 0x30
20001a50:	4a5b      	ldr	r2, [pc, #364]	; (20001bc0 <TimerConfig+0x274>)
20001a52:	4b5b      	ldr	r3, [pc, #364]	; (20001bc0 <TimerConfig+0x274>)
20001a54:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001a56:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001a5a:	6313      	str	r3, [r2, #48]	; 0x30
20001a5c:	4a58      	ldr	r2, [pc, #352]	; (20001bc0 <TimerConfig+0x274>)
20001a5e:	4b58      	ldr	r3, [pc, #352]	; (20001bc0 <TimerConfig+0x274>)
20001a60:	6e1b      	ldr	r3, [r3, #96]	; 0x60
20001a62:	f043 0308 	orr.w	r3, r3, #8
20001a66:	6613      	str	r3, [r2, #96]	; 0x60
20001a68:	4a55      	ldr	r2, [pc, #340]	; (20001bc0 <TimerConfig+0x274>)
20001a6a:	4b55      	ldr	r3, [pc, #340]	; (20001bc0 <TimerConfig+0x274>)
20001a6c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001a6e:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001a72:	6253      	str	r3, [r2, #36]	; 0x24
20001a74:	4a52      	ldr	r2, [pc, #328]	; (20001bc0 <TimerConfig+0x274>)
20001a76:	4b52      	ldr	r3, [pc, #328]	; (20001bc0 <TimerConfig+0x274>)
20001a78:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001a7a:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001a7e:	6253      	str	r3, [r2, #36]	; 0x24
20001a80:	4a4f      	ldr	r2, [pc, #316]	; (20001bc0 <TimerConfig+0x274>)
20001a82:	4b4f      	ldr	r3, [pc, #316]	; (20001bc0 <TimerConfig+0x274>)
20001a84:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a86:	f023 030f 	bic.w	r3, r3, #15
20001a8a:	6353      	str	r3, [r2, #52]	; 0x34
20001a8c:	4a4c      	ldr	r2, [pc, #304]	; (20001bc0 <TimerConfig+0x274>)
20001a8e:	4b4c      	ldr	r3, [pc, #304]	; (20001bc0 <TimerConfig+0x274>)
20001a90:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a92:	f043 030c 	orr.w	r3, r3, #12
20001a96:	6353      	str	r3, [r2, #52]	; 0x34
20001a98:	4a49      	ldr	r2, [pc, #292]	; (20001bc0 <TimerConfig+0x274>)
20001a9a:	4b49      	ldr	r3, [pc, #292]	; (20001bc0 <TimerConfig+0x274>)
20001a9c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a9e:	f043 0301 	orr.w	r3, r3, #1
20001aa2:	6353      	str	r3, [r2, #52]	; 0x34
20001aa4:	4a46      	ldr	r2, [pc, #280]	; (20001bc0 <TimerConfig+0x274>)
20001aa6:	4b46      	ldr	r3, [pc, #280]	; (20001bc0 <TimerConfig+0x274>)
20001aa8:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001aaa:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001aae:	6353      	str	r3, [r2, #52]	; 0x34
20001ab0:	4a43      	ldr	r2, [pc, #268]	; (20001bc0 <TimerConfig+0x274>)
20001ab2:	4b43      	ldr	r3, [pc, #268]	; (20001bc0 <TimerConfig+0x274>)
20001ab4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001ab6:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001aba:	6353      	str	r3, [r2, #52]	; 0x34
20001abc:	4a40      	ldr	r2, [pc, #256]	; (20001bc0 <TimerConfig+0x274>)
20001abe:	4b40      	ldr	r3, [pc, #256]	; (20001bc0 <TimerConfig+0x274>)
20001ac0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001ac2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001ac6:	6353      	str	r3, [r2, #52]	; 0x34
20001ac8:	4a3d      	ldr	r2, [pc, #244]	; (20001bc0 <TimerConfig+0x274>)
20001aca:	4b3d      	ldr	r3, [pc, #244]	; (20001bc0 <TimerConfig+0x274>)
20001acc:	6e5b      	ldr	r3, [r3, #100]	; 0x64
20001ace:	f043 0308 	orr.w	r3, r3, #8
20001ad2:	6653      	str	r3, [r2, #100]	; 0x64
20001ad4:	4a3a      	ldr	r2, [pc, #232]	; (20001bc0 <TimerConfig+0x274>)
20001ad6:	4b3a      	ldr	r3, [pc, #232]	; (20001bc0 <TimerConfig+0x274>)
20001ad8:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001ada:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001ade:	6293      	str	r3, [r2, #40]	; 0x28
20001ae0:	4a37      	ldr	r2, [pc, #220]	; (20001bc0 <TimerConfig+0x274>)
20001ae2:	4b37      	ldr	r3, [pc, #220]	; (20001bc0 <TimerConfig+0x274>)
20001ae4:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001ae6:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001aea:	6293      	str	r3, [r2, #40]	; 0x28
20001aec:	4a34      	ldr	r2, [pc, #208]	; (20001bc0 <TimerConfig+0x274>)
20001aee:	4b34      	ldr	r3, [pc, #208]	; (20001bc0 <TimerConfig+0x274>)
20001af0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001af2:	f023 030f 	bic.w	r3, r3, #15
20001af6:	6393      	str	r3, [r2, #56]	; 0x38
20001af8:	4a31      	ldr	r2, [pc, #196]	; (20001bc0 <TimerConfig+0x274>)
20001afa:	4b31      	ldr	r3, [pc, #196]	; (20001bc0 <TimerConfig+0x274>)
20001afc:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001afe:	f043 030c 	orr.w	r3, r3, #12
20001b02:	6393      	str	r3, [r2, #56]	; 0x38
20001b04:	4a2e      	ldr	r2, [pc, #184]	; (20001bc0 <TimerConfig+0x274>)
20001b06:	4b2e      	ldr	r3, [pc, #184]	; (20001bc0 <TimerConfig+0x274>)
20001b08:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001b0a:	f043 0301 	orr.w	r3, r3, #1
20001b0e:	6393      	str	r3, [r2, #56]	; 0x38
20001b10:	4a2b      	ldr	r2, [pc, #172]	; (20001bc0 <TimerConfig+0x274>)
20001b12:	4b2b      	ldr	r3, [pc, #172]	; (20001bc0 <TimerConfig+0x274>)
20001b14:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001b16:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001b1a:	6393      	str	r3, [r2, #56]	; 0x38
20001b1c:	4a28      	ldr	r2, [pc, #160]	; (20001bc0 <TimerConfig+0x274>)
20001b1e:	4b28      	ldr	r3, [pc, #160]	; (20001bc0 <TimerConfig+0x274>)
20001b20:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001b22:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001b26:	6393      	str	r3, [r2, #56]	; 0x38
20001b28:	4a25      	ldr	r2, [pc, #148]	; (20001bc0 <TimerConfig+0x274>)
20001b2a:	4b25      	ldr	r3, [pc, #148]	; (20001bc0 <TimerConfig+0x274>)
20001b2c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001b2e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001b32:	6393      	str	r3, [r2, #56]	; 0x38
20001b34:	4a22      	ldr	r2, [pc, #136]	; (20001bc0 <TimerConfig+0x274>)
20001b36:	4b22      	ldr	r3, [pc, #136]	; (20001bc0 <TimerConfig+0x274>)
20001b38:	6e9b      	ldr	r3, [r3, #104]	; 0x68
20001b3a:	f043 0308 	orr.w	r3, r3, #8
20001b3e:	6693      	str	r3, [r2, #104]	; 0x68
20001b40:	4a1f      	ldr	r2, [pc, #124]	; (20001bc0 <TimerConfig+0x274>)
20001b42:	4b1f      	ldr	r3, [pc, #124]	; (20001bc0 <TimerConfig+0x274>)
20001b44:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001b46:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001b4a:	62d3      	str	r3, [r2, #44]	; 0x2c
20001b4c:	4a1c      	ldr	r2, [pc, #112]	; (20001bc0 <TimerConfig+0x274>)
20001b4e:	4b1c      	ldr	r3, [pc, #112]	; (20001bc0 <TimerConfig+0x274>)
20001b50:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001b52:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001b56:	62d3      	str	r3, [r2, #44]	; 0x2c
20001b58:	4a19      	ldr	r2, [pc, #100]	; (20001bc0 <TimerConfig+0x274>)
20001b5a:	4b19      	ldr	r3, [pc, #100]	; (20001bc0 <TimerConfig+0x274>)
20001b5c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b5e:	f023 030f 	bic.w	r3, r3, #15
20001b62:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b64:	4a16      	ldr	r2, [pc, #88]	; (20001bc0 <TimerConfig+0x274>)
20001b66:	4b16      	ldr	r3, [pc, #88]	; (20001bc0 <TimerConfig+0x274>)
20001b68:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b6a:	f043 030c 	orr.w	r3, r3, #12
20001b6e:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b70:	4a13      	ldr	r2, [pc, #76]	; (20001bc0 <TimerConfig+0x274>)
20001b72:	4b13      	ldr	r3, [pc, #76]	; (20001bc0 <TimerConfig+0x274>)
20001b74:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b76:	f043 0301 	orr.w	r3, r3, #1
20001b7a:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b7c:	4a10      	ldr	r2, [pc, #64]	; (20001bc0 <TimerConfig+0x274>)
20001b7e:	4b10      	ldr	r3, [pc, #64]	; (20001bc0 <TimerConfig+0x274>)
20001b80:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b82:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001b86:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b88:	4a0d      	ldr	r2, [pc, #52]	; (20001bc0 <TimerConfig+0x274>)
20001b8a:	4b0d      	ldr	r3, [pc, #52]	; (20001bc0 <TimerConfig+0x274>)
20001b8c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b8e:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001b92:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b94:	4a0a      	ldr	r2, [pc, #40]	; (20001bc0 <TimerConfig+0x274>)
20001b96:	4b0a      	ldr	r3, [pc, #40]	; (20001bc0 <TimerConfig+0x274>)
20001b98:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b9a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001b9e:	63d3      	str	r3, [r2, #60]	; 0x3c
20001ba0:	4a07      	ldr	r2, [pc, #28]	; (20001bc0 <TimerConfig+0x274>)
20001ba2:	4b07      	ldr	r3, [pc, #28]	; (20001bc0 <TimerConfig+0x274>)
20001ba4:	6edb      	ldr	r3, [r3, #108]	; 0x6c
20001ba6:	f043 0308 	orr.w	r3, r3, #8
20001baa:	66d3      	str	r3, [r2, #108]	; 0x6c
20001bac:	4a04      	ldr	r2, [pc, #16]	; (20001bc0 <TimerConfig+0x274>)
20001bae:	4b04      	ldr	r3, [pc, #16]	; (20001bc0 <TimerConfig+0x274>)
20001bb0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001bb2:	f443 63a0 	orr.w	r3, r3, #1280	; 0x500
20001bb6:	e005      	b.n	20001bc4 <TimerConfig+0x278>
20001bb8:	40020000 	.word	0x40020000
20001bbc:	40070000 	.word	0x40070000
20001bc0:	40080000 	.word	0x40080000
20001bc4:	6413      	str	r3, [r2, #64]	; 0x40
20001bc6:	4a10      	ldr	r2, [pc, #64]	; (20001c08 <TimerConfig+0x2bc>)
20001bc8:	4b0f      	ldr	r3, [pc, #60]	; (20001c08 <TimerConfig+0x2bc>)
20001bca:	6c5b      	ldr	r3, [r3, #68]	; 0x44
20001bcc:	f443 63a0 	orr.w	r3, r3, #1280	; 0x500
20001bd0:	6453      	str	r3, [r2, #68]	; 0x44
20001bd2:	4a0d      	ldr	r2, [pc, #52]	; (20001c08 <TimerConfig+0x2bc>)
20001bd4:	4b0c      	ldr	r3, [pc, #48]	; (20001c08 <TimerConfig+0x2bc>)
20001bd6:	6c9b      	ldr	r3, [r3, #72]	; 0x48
20001bd8:	f443 63a0 	orr.w	r3, r3, #1280	; 0x500
20001bdc:	6493      	str	r3, [r2, #72]	; 0x48
20001bde:	4a0a      	ldr	r2, [pc, #40]	; (20001c08 <TimerConfig+0x2bc>)
20001be0:	4b09      	ldr	r3, [pc, #36]	; (20001c08 <TimerConfig+0x2bc>)
20001be2:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
20001be4:	f443 63a0 	orr.w	r3, r3, #1280	; 0x500
20001be8:	64d3      	str	r3, [r2, #76]	; 0x4c
20001bea:	4a07      	ldr	r2, [pc, #28]	; (20001c08 <TimerConfig+0x2bc>)
20001bec:	4b06      	ldr	r3, [pc, #24]	; (20001c08 <TimerConfig+0x2bc>)
20001bee:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001bf0:	f043 0302 	orr.w	r3, r3, #2
20001bf4:	6593      	str	r3, [r2, #88]	; 0x58
20001bf6:	2010      	movs	r0, #16
20001bf8:	f7ff fd7a 	bl	200016f0 <NVIC_EnableIRQ>
20001bfc:	4b02      	ldr	r3, [pc, #8]	; (20001c08 <TimerConfig+0x2bc>)
20001bfe:	2201      	movs	r2, #1
20001c00:	60da      	str	r2, [r3, #12]
20001c02:	bf00      	nop
20001c04:	bd80      	pop	{r7, pc}
20001c06:	bf00      	nop
20001c08:	40080000 	.word	0x40080000

20001c0c <set_ram_vt>:
20001c0c:	b480      	push	{r7}
20001c0e:	b085      	sub	sp, #20
20001c10:	af00      	add	r7, sp, #0
20001c12:	2300      	movs	r3, #0
20001c14:	60fb      	str	r3, [r7, #12]
20001c16:	2300      	movs	r3, #0
20001c18:	607b      	str	r3, [r7, #4]
20001c1a:	4b16      	ldr	r3, [pc, #88]	; (20001c74 <set_ram_vt+0x68>)
20001c1c:	60bb      	str	r3, [r7, #8]
20001c1e:	2300      	movs	r3, #0
20001c20:	60fb      	str	r3, [r7, #12]
20001c22:	e00b      	b.n	20001c3c <set_ram_vt+0x30>
20001c24:	68bb      	ldr	r3, [r7, #8]
20001c26:	1d1a      	adds	r2, r3, #4
20001c28:	60ba      	str	r2, [r7, #8]
20001c2a:	68fa      	ldr	r2, [r7, #12]
20001c2c:	0092      	lsls	r2, r2, #2
20001c2e:	6879      	ldr	r1, [r7, #4]
20001c30:	440a      	add	r2, r1
20001c32:	6812      	ldr	r2, [r2, #0]
20001c34:	601a      	str	r2, [r3, #0]
20001c36:	68fb      	ldr	r3, [r7, #12]
20001c38:	3301      	adds	r3, #1
20001c3a:	60fb      	str	r3, [r7, #12]
20001c3c:	68fb      	ldr	r3, [r7, #12]
20001c3e:	2b2f      	cmp	r3, #47	; 0x2f
20001c40:	d9f0      	bls.n	20001c24 <set_ram_vt+0x18>
20001c42:	4b0d      	ldr	r3, [pc, #52]	; (20001c78 <set_ram_vt+0x6c>)
20001c44:	4a0b      	ldr	r2, [pc, #44]	; (20001c74 <set_ram_vt+0x68>)
20001c46:	609a      	str	r2, [r3, #8]
20001c48:	4b0a      	ldr	r3, [pc, #40]	; (20001c74 <set_ram_vt+0x68>)
20001c4a:	4a0c      	ldr	r2, [pc, #48]	; (20001c7c <set_ram_vt+0x70>)
20001c4c:	63da      	str	r2, [r3, #60]	; 0x3c
20001c4e:	4b09      	ldr	r3, [pc, #36]	; (20001c74 <set_ram_vt+0x68>)
20001c50:	4a0b      	ldr	r2, [pc, #44]	; (20001c80 <set_ram_vt+0x74>)
20001c52:	659a      	str	r2, [r3, #88]	; 0x58
20001c54:	4b07      	ldr	r3, [pc, #28]	; (20001c74 <set_ram_vt+0x68>)
20001c56:	4a0b      	ldr	r2, [pc, #44]	; (20001c84 <set_ram_vt+0x78>)
20001c58:	679a      	str	r2, [r3, #120]	; 0x78
20001c5a:	4b06      	ldr	r3, [pc, #24]	; (20001c74 <set_ram_vt+0x68>)
20001c5c:	4a0a      	ldr	r2, [pc, #40]	; (20001c88 <set_ram_vt+0x7c>)
20001c5e:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20001c62:	4b04      	ldr	r3, [pc, #16]	; (20001c74 <set_ram_vt+0x68>)
20001c64:	4a09      	ldr	r2, [pc, #36]	; (20001c8c <set_ram_vt+0x80>)
20001c66:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001c6a:	bf00      	nop
20001c6c:	3714      	adds	r7, #20
20001c6e:	46bd      	mov	sp, r7
20001c70:	bc80      	pop	{r7}
20001c72:	4770      	bx	lr
20001c74:	20003100 	.word	0x20003100
20001c78:	e000ed00 	.word	0xe000ed00
20001c7c:	20001d49 	.word	0x20001d49
20001c80:	20001d65 	.word	0x20001d65
20001c84:	200005fd 	.word	0x200005fd
20001c88:	20000615 	.word	0x20000615
20001c8c:	200005e9 	.word	0x200005e9

20001c90 <uart_init>:
20001c90:	b480      	push	{r7}
20001c92:	af00      	add	r7, sp, #0
20001c94:	4b22      	ldr	r3, [pc, #136]	; (20001d20 <uart_init+0x90>)
20001c96:	2200      	movs	r2, #0
20001c98:	601a      	str	r2, [r3, #0]
20001c9a:	4a22      	ldr	r2, [pc, #136]	; (20001d24 <uart_init+0x94>)
20001c9c:	4b21      	ldr	r3, [pc, #132]	; (20001d24 <uart_init+0x94>)
20001c9e:	69db      	ldr	r3, [r3, #28]
20001ca0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001ca4:	61d3      	str	r3, [r2, #28]
20001ca6:	4a1f      	ldr	r2, [pc, #124]	; (20001d24 <uart_init+0x94>)
20001ca8:	4b1e      	ldr	r3, [pc, #120]	; (20001d24 <uart_init+0x94>)
20001caa:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001cac:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001cb0:	6293      	str	r3, [r2, #40]	; 0x28
20001cb2:	4b1d      	ldr	r3, [pc, #116]	; (20001d28 <uart_init+0x98>)
20001cb4:	2204      	movs	r2, #4
20001cb6:	625a      	str	r2, [r3, #36]	; 0x24
20001cb8:	4b1b      	ldr	r3, [pc, #108]	; (20001d28 <uart_init+0x98>)
20001cba:	2200      	movs	r2, #0
20001cbc:	629a      	str	r2, [r3, #40]	; 0x28
20001cbe:	4a1a      	ldr	r2, [pc, #104]	; (20001d28 <uart_init+0x98>)
20001cc0:	4b19      	ldr	r3, [pc, #100]	; (20001d28 <uart_init+0x98>)
20001cc2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001cc4:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
20001cc8:	6353      	str	r3, [r2, #52]	; 0x34
20001cca:	4a17      	ldr	r2, [pc, #92]	; (20001d28 <uart_init+0x98>)
20001ccc:	4b16      	ldr	r3, [pc, #88]	; (20001d28 <uart_init+0x98>)
20001cce:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001cd0:	f043 0312 	orr.w	r3, r3, #18
20001cd4:	6353      	str	r3, [r2, #52]	; 0x34
20001cd6:	4a14      	ldr	r2, [pc, #80]	; (20001d28 <uart_init+0x98>)
20001cd8:	4b13      	ldr	r3, [pc, #76]	; (20001d28 <uart_init+0x98>)
20001cda:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001cdc:	f043 0310 	orr.w	r3, r3, #16
20001ce0:	62d3      	str	r3, [r2, #44]	; 0x2c
20001ce2:	4a11      	ldr	r2, [pc, #68]	; (20001d28 <uart_init+0x98>)
20001ce4:	4b10      	ldr	r3, [pc, #64]	; (20001d28 <uart_init+0x98>)
20001ce6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001ce8:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001cec:	62d3      	str	r3, [r2, #44]	; 0x2c
20001cee:	4a0e      	ldr	r2, [pc, #56]	; (20001d28 <uart_init+0x98>)
20001cf0:	4b0d      	ldr	r3, [pc, #52]	; (20001d28 <uart_init+0x98>)
20001cf2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001cf4:	f443 7340 	orr.w	r3, r3, #768	; 0x300
20001cf8:	f043 0301 	orr.w	r3, r3, #1
20001cfc:	6313      	str	r3, [r2, #48]	; 0x30
20001cfe:	4a0a      	ldr	r2, [pc, #40]	; (20001d28 <uart_init+0x98>)
20001d00:	4b09      	ldr	r3, [pc, #36]	; (20001d28 <uart_init+0x98>)
20001d02:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001d04:	f043 0310 	orr.w	r3, r3, #16
20001d08:	6393      	str	r3, [r2, #56]	; 0x38
20001d0a:	4a07      	ldr	r2, [pc, #28]	; (20001d28 <uart_init+0x98>)
20001d0c:	4b06      	ldr	r3, [pc, #24]	; (20001d28 <uart_init+0x98>)
20001d0e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001d10:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001d14:	6393      	str	r3, [r2, #56]	; 0x38
20001d16:	bf00      	nop
20001d18:	46bd      	mov	sp, r7
20001d1a:	bc80      	pop	{r7}
20001d1c:	4770      	bx	lr
20001d1e:	bf00      	nop
20001d20:	200031d0 	.word	0x200031d0
20001d24:	40020000 	.word	0x40020000
20001d28:	40030000 	.word	0x40030000

20001d2c <system_init>:
20001d2c:	b580      	push	{r7, lr}
20001d2e:	af00      	add	r7, sp, #0
20001d30:	f7ff ff6c 	bl	20001c0c <set_ram_vt>
20001d34:	f7ff fdd4 	bl	200018e0 <ClkConfig>
20001d38:	f7ff fcf2 	bl	20001720 <PortConfig>
20001d3c:	f7ff fe06 	bl	2000194c <TimerConfig>
20001d40:	f7ff ffa6 	bl	20001c90 <uart_init>
20001d44:	bf00      	nop
20001d46:	bd80      	pop	{r7, pc}

20001d48 <SysTick_Handler>:
20001d48:	b480      	push	{r7}
20001d4a:	af00      	add	r7, sp, #0
20001d4c:	4b04      	ldr	r3, [pc, #16]	; (20001d60 <SysTick_Handler+0x18>)
20001d4e:	681b      	ldr	r3, [r3, #0]
20001d50:	3301      	adds	r3, #1
20001d52:	4a03      	ldr	r2, [pc, #12]	; (20001d60 <SysTick_Handler+0x18>)
20001d54:	6013      	str	r3, [r2, #0]
20001d56:	bf00      	nop
20001d58:	46bd      	mov	sp, r7
20001d5a:	bc80      	pop	{r7}
20001d5c:	4770      	bx	lr
20001d5e:	bf00      	nop
20001d60:	20003000 	.word	0x20003000

20001d64 <UART1_Handler>:
20001d64:	b480      	push	{r7}
20001d66:	b083      	sub	sp, #12
20001d68:	af00      	add	r7, sp, #0
20001d6a:	4b1d      	ldr	r3, [pc, #116]	; (20001de0 <UART1_Handler+0x7c>)
20001d6c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001d6e:	f003 0310 	and.w	r3, r3, #16
20001d72:	2b00      	cmp	r3, #0
20001d74:	d01f      	beq.n	20001db6 <UART1_Handler+0x52>
20001d76:	e002      	b.n	20001d7e <UART1_Handler+0x1a>
20001d78:	4b19      	ldr	r3, [pc, #100]	; (20001de0 <UART1_Handler+0x7c>)
20001d7a:	681b      	ldr	r3, [r3, #0]
20001d7c:	71fb      	strb	r3, [r7, #7]
20001d7e:	4b18      	ldr	r3, [pc, #96]	; (20001de0 <UART1_Handler+0x7c>)
20001d80:	699b      	ldr	r3, [r3, #24]
20001d82:	f003 0310 	and.w	r3, r3, #16
20001d86:	2b00      	cmp	r3, #0
20001d88:	d0f6      	beq.n	20001d78 <UART1_Handler+0x14>
20001d8a:	4b16      	ldr	r3, [pc, #88]	; (20001de4 <UART1_Handler+0x80>)
20001d8c:	681b      	ldr	r3, [r3, #0]
20001d8e:	80bb      	strh	r3, [r7, #4]
20001d90:	4b14      	ldr	r3, [pc, #80]	; (20001de4 <UART1_Handler+0x80>)
20001d92:	689b      	ldr	r3, [r3, #8]
20001d94:	085b      	lsrs	r3, r3, #1
20001d96:	807b      	strh	r3, [r7, #2]
20001d98:	88ba      	ldrh	r2, [r7, #4]
20001d9a:	887b      	ldrh	r3, [r7, #2]
20001d9c:	429a      	cmp	r2, r3
20001d9e:	d205      	bcs.n	20001dac <UART1_Handler+0x48>
20001da0:	4a10      	ldr	r2, [pc, #64]	; (20001de4 <UART1_Handler+0x80>)
20001da2:	4b10      	ldr	r3, [pc, #64]	; (20001de4 <UART1_Handler+0x80>)
20001da4:	681b      	ldr	r3, [r3, #0]
20001da6:	3b01      	subs	r3, #1
20001da8:	6013      	str	r3, [r2, #0]
20001daa:	e004      	b.n	20001db6 <UART1_Handler+0x52>
20001dac:	4a0d      	ldr	r2, [pc, #52]	; (20001de4 <UART1_Handler+0x80>)
20001dae:	4b0d      	ldr	r3, [pc, #52]	; (20001de4 <UART1_Handler+0x80>)
20001db0:	681b      	ldr	r3, [r3, #0]
20001db2:	3301      	adds	r3, #1
20001db4:	6013      	str	r3, [r2, #0]
20001db6:	4b0a      	ldr	r3, [pc, #40]	; (20001de0 <UART1_Handler+0x7c>)
20001db8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001dba:	f003 0340 	and.w	r3, r3, #64	; 0x40
20001dbe:	2b00      	cmp	r3, #0
20001dc0:	d009      	beq.n	20001dd6 <UART1_Handler+0x72>
20001dc2:	e002      	b.n	20001dca <UART1_Handler+0x66>
20001dc4:	4b06      	ldr	r3, [pc, #24]	; (20001de0 <UART1_Handler+0x7c>)
20001dc6:	681b      	ldr	r3, [r3, #0]
20001dc8:	707b      	strb	r3, [r7, #1]
20001dca:	4b05      	ldr	r3, [pc, #20]	; (20001de0 <UART1_Handler+0x7c>)
20001dcc:	699b      	ldr	r3, [r3, #24]
20001dce:	f003 0310 	and.w	r3, r3, #16
20001dd2:	2b00      	cmp	r3, #0
20001dd4:	d0f6      	beq.n	20001dc4 <UART1_Handler+0x60>
20001dd6:	bf00      	nop
20001dd8:	370c      	adds	r7, #12
20001dda:	46bd      	mov	sp, r7
20001ddc:	bc80      	pop	{r7}
20001dde:	4770      	bx	lr
20001de0:	40030000 	.word	0x40030000
20001de4:	40070000 	.word	0x40070000
