
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
20000026:	f001 fe63 	bl	20001cf0 <system_init>
2000002a:	f000 fa29 	bl	20000480 <ssi_init>
2000002e:	f000 fa9b 	bl	20000568 <dac_init>
20000032:	f001 fb03 	bl	2000163c <adc_dma_init>
20000036:	22c8      	movs	r2, #200	; 0xc8
20000038:	2150      	movs	r1, #80	; 0x50
2000003a:	481e      	ldr	r0, [pc, #120]	; (200000b4 <main+0xb4>)
2000003c:	f000 fe5e 	bl	20000cfc <reg_init>
20000040:	22c8      	movs	r2, #200	; 0xc8
20000042:	2150      	movs	r1, #80	; 0x50
20000044:	481c      	ldr	r0, [pc, #112]	; (200000b8 <main+0xb8>)
20000046:	f000 fe59 	bl	20000cfc <reg_init>
2000004a:	f241 3288 	movw	r2, #5000	; 0x1388
2000004e:	2100      	movs	r1, #0
20000050:	481a      	ldr	r0, [pc, #104]	; (200000bc <main+0xbc>)
20000052:	f000 fe53 	bl	20000cfc <reg_init>
20000056:	f640 32b8 	movw	r2, #3000	; 0xbb8
2000005a:	2100      	movs	r1, #0
2000005c:	4818      	ldr	r0, [pc, #96]	; (200000c0 <main+0xc0>)
2000005e:	f000 fe4d 	bl	20000cfc <reg_init>
20000062:	4a18      	ldr	r2, [pc, #96]	; (200000c4 <main+0xc4>)
20000064:	2100      	movs	r1, #0
20000066:	4818      	ldr	r0, [pc, #96]	; (200000c8 <main+0xc8>)
20000068:	f000 fe48 	bl	20000cfc <reg_init>
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
20000082:	f000 f995 	bl	200003b0 <mfilter>
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
200000b4:	20002e44 	.word	0x20002e44
200000b8:	20002e54 	.word	0x20002e54
200000bc:	20002e64 	.word	0x20002e64
200000c0:	20002e74 	.word	0x20002e74
200000c4:	0007a120 	.word	0x0007a120
200000c8:	20002e84 	.word	0x20002e84
200000cc:	20002e3c 	.word	0x20002e3c
200000d0:	20002e3d 	.word	0x20002e3d
200000d4:	20002e10 	.word	0x20002e10
200000d8:	20002e14 	.word	0x20002e14
200000dc:	20002e04 	.word	0x20002e04
200000e0:	f001 faca 	bl	20001678 <adc_dma_wait>
200000e4:	4b9a      	ldr	r3, [pc, #616]	; (20000350 <main+0x350>)
200000e6:	689b      	ldr	r3, [r3, #8]
200000e8:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000ec:	6d3b      	ldr	r3, [r7, #80]	; 0x50
200000ee:	4413      	add	r3, r2
200000f0:	653b      	str	r3, [r7, #80]	; 0x50
200000f2:	4b97      	ldr	r3, [pc, #604]	; (20000350 <main+0x350>)
200000f4:	68db      	ldr	r3, [r3, #12]
200000f6:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000fa:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
200000fc:	4413      	add	r3, r2
200000fe:	64fb      	str	r3, [r7, #76]	; 0x4c
20000100:	4b94      	ldr	r3, [pc, #592]	; (20000354 <main+0x354>)
20000102:	689b      	ldr	r3, [r3, #8]
20000104:	4618      	mov	r0, r3
20000106:	f000 fa05 	bl	20000514 <enc_crc>
2000010a:	4602      	mov	r2, r0
2000010c:	4b92      	ldr	r3, [pc, #584]	; (20000358 <main+0x358>)
2000010e:	681b      	ldr	r3, [r3, #0]
20000110:	4413      	add	r3, r2
20000112:	461a      	mov	r2, r3
20000114:	4b90      	ldr	r3, [pc, #576]	; (20000358 <main+0x358>)
20000116:	601a      	str	r2, [r3, #0]
20000118:	4b8d      	ldr	r3, [pc, #564]	; (20000350 <main+0x350>)
2000011a:	681b      	ldr	r3, [r3, #0]
2000011c:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000120:	4a8e      	ldr	r2, [pc, #568]	; (2000035c <main+0x35c>)
20000122:	6812      	ldr	r2, [r2, #0]
20000124:	4413      	add	r3, r2
20000126:	461a      	mov	r2, r3
20000128:	4b8c      	ldr	r3, [pc, #560]	; (2000035c <main+0x35c>)
2000012a:	601a      	str	r2, [r3, #0]
2000012c:	4b88      	ldr	r3, [pc, #544]	; (20000350 <main+0x350>)
2000012e:	685b      	ldr	r3, [r3, #4]
20000130:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000134:	4a8a      	ldr	r2, [pc, #552]	; (20000360 <main+0x360>)
20000136:	6812      	ldr	r2, [r2, #0]
20000138:	4413      	add	r3, r2
2000013a:	461a      	mov	r2, r3
2000013c:	4b88      	ldr	r3, [pc, #544]	; (20000360 <main+0x360>)
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
2000015a:	4b7f      	ldr	r3, [pc, #508]	; (20000358 <main+0x358>)
2000015c:	681b      	ldr	r3, [r3, #0]
2000015e:	129b      	asrs	r3, r3, #10
20000160:	4a7d      	ldr	r2, [pc, #500]	; (20000358 <main+0x358>)
20000162:	6013      	str	r3, [r2, #0]
20000164:	4b7f      	ldr	r3, [pc, #508]	; (20000364 <main+0x364>)
20000166:	f44f 7202 	mov.w	r2, #520	; 0x208
2000016a:	601a      	str	r2, [r3, #0]
2000016c:	4b7c      	ldr	r3, [pc, #496]	; (20000360 <main+0x360>)
2000016e:	681a      	ldr	r2, [r3, #0]
20000170:	4b7a      	ldr	r3, [pc, #488]	; (2000035c <main+0x35c>)
20000172:	681b      	ldr	r3, [r3, #0]
20000174:	129b      	asrs	r3, r3, #10
20000176:	fb92 f3f3 	sdiv	r3, r2, r3
2000017a:	4a7b      	ldr	r2, [pc, #492]	; (20000368 <main+0x368>)
2000017c:	6013      	str	r3, [r2, #0]
2000017e:	4b79      	ldr	r3, [pc, #484]	; (20000364 <main+0x364>)
20000180:	681b      	ldr	r3, [r3, #0]
20000182:	4a76      	ldr	r2, [pc, #472]	; (2000035c <main+0x35c>)
20000184:	6013      	str	r3, [r2, #0]
20000186:	4b74      	ldr	r3, [pc, #464]	; (20000358 <main+0x358>)
20000188:	681b      	ldr	r3, [r3, #0]
2000018a:	4a78      	ldr	r2, [pc, #480]	; (2000036c <main+0x36c>)
2000018c:	6013      	str	r3, [r2, #0]
2000018e:	4b72      	ldr	r3, [pc, #456]	; (20000358 <main+0x358>)
20000190:	681b      	ldr	r3, [r3, #0]
20000192:	4a77      	ldr	r2, [pc, #476]	; (20000370 <main+0x370>)
20000194:	6013      	str	r3, [r2, #0]
20000196:	4b70      	ldr	r3, [pc, #448]	; (20000358 <main+0x358>)
20000198:	681b      	ldr	r3, [r3, #0]
2000019a:	4618      	mov	r0, r3
2000019c:	f001 f970 	bl	20001480 <encoder_init>
200001a0:	4b74      	ldr	r3, [pc, #464]	; (20000374 <main+0x374>)
200001a2:	2200      	movs	r2, #0
200001a4:	601a      	str	r2, [r3, #0]
200001a6:	4b71      	ldr	r3, [pc, #452]	; (2000036c <main+0x36c>)
200001a8:	681b      	ldr	r3, [r3, #0]
200001aa:	4a73      	ldr	r2, [pc, #460]	; (20000378 <main+0x378>)
200001ac:	6013      	str	r3, [r2, #0]
200001ae:	2301      	movs	r3, #1
200001b0:	637b      	str	r3, [r7, #52]	; 0x34
200001b2:	2300      	movs	r3, #0
200001b4:	647b      	str	r3, [r7, #68]	; 0x44
200001b6:	f000 f913 	bl	200003e0 <brake_on>
200001ba:	f000 f92d 	bl	20000418 <motor_off>
200001be:	4b6f      	ldr	r3, [pc, #444]	; (2000037c <main+0x37c>)
200001c0:	2200      	movs	r2, #0
200001c2:	601a      	str	r2, [r3, #0]
200001c4:	4b6e      	ldr	r3, [pc, #440]	; (20000380 <main+0x380>)
200001c6:	4a6f      	ldr	r2, [pc, #444]	; (20000384 <main+0x384>)
200001c8:	601a      	str	r2, [r3, #0]
200001ca:	4b6f      	ldr	r3, [pc, #444]	; (20000388 <main+0x388>)
200001cc:	2200      	movs	r2, #0
200001ce:	701a      	strb	r2, [r3, #0]
200001d0:	4b6b      	ldr	r3, [pc, #428]	; (20000380 <main+0x380>)
200001d2:	4a6e      	ldr	r2, [pc, #440]	; (2000038c <main+0x38c>)
200001d4:	601a      	str	r2, [r3, #0]
200001d6:	f000 f911 	bl	200003fc <brake_off>
200001da:	f000 f92b 	bl	20000434 <motor_on>
200001de:	f001 fa4b 	bl	20001678 <adc_dma_wait>
200001e2:	4b5b      	ldr	r3, [pc, #364]	; (20000350 <main+0x350>)
200001e4:	689b      	ldr	r3, [r3, #8]
200001e6:	f3c3 020b 	ubfx	r2, r3, #0, #12
200001ea:	6d3b      	ldr	r3, [r7, #80]	; 0x50
200001ec:	1ad3      	subs	r3, r2, r3
200001ee:	633b      	str	r3, [r7, #48]	; 0x30
200001f0:	4b57      	ldr	r3, [pc, #348]	; (20000350 <main+0x350>)
200001f2:	68db      	ldr	r3, [r3, #12]
200001f4:	f3c3 020b 	ubfx	r2, r3, #0, #12
200001f8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
200001fa:	1ad3      	subs	r3, r2, r3
200001fc:	62fb      	str	r3, [r7, #44]	; 0x2c
200001fe:	6b3a      	ldr	r2, [r7, #48]	; 0x30
20000200:	6afb      	ldr	r3, [r7, #44]	; 0x2c
20000202:	4413      	add	r3, r2
20000204:	62bb      	str	r3, [r7, #40]	; 0x28
20000206:	4b53      	ldr	r3, [pc, #332]	; (20000354 <main+0x354>)
20000208:	689b      	ldr	r3, [r3, #8]
2000020a:	4618      	mov	r0, r3
2000020c:	f000 f982 	bl	20000514 <enc_crc>
20000210:	6278      	str	r0, [r7, #36]	; 0x24
20000212:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20000214:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000218:	63bb      	str	r3, [r7, #56]	; 0x38
2000021a:	4a5d      	ldr	r2, [pc, #372]	; (20000390 <main+0x390>)
2000021c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
2000021e:	6093      	str	r3, [r2, #8]
20000220:	4b4b      	ldr	r3, [pc, #300]	; (20000350 <main+0x350>)
20000222:	685b      	ldr	r3, [r3, #4]
20000224:	029a      	lsls	r2, r3, #10
20000226:	4b5b      	ldr	r3, [pc, #364]	; (20000394 <main+0x394>)
20000228:	4013      	ands	r3, r2
2000022a:	4a49      	ldr	r2, [pc, #292]	; (20000350 <main+0x350>)
2000022c:	6812      	ldr	r2, [r2, #0]
2000022e:	f3c2 020b 	ubfx	r2, r2, #0, #12
20000232:	fbb3 f3f2 	udiv	r3, r3, r2
20000236:	461a      	mov	r2, r3
20000238:	4b49      	ldr	r3, [pc, #292]	; (20000360 <main+0x360>)
2000023a:	601a      	str	r2, [r3, #0]
2000023c:	4a56      	ldr	r2, [pc, #344]	; (20000398 <main+0x398>)
2000023e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20000240:	6013      	str	r3, [r2, #0]
20000242:	4b56      	ldr	r3, [pc, #344]	; (2000039c <main+0x39c>)
20000244:	681b      	ldr	r3, [r3, #0]
20000246:	3301      	adds	r3, #1
20000248:	4a54      	ldr	r2, [pc, #336]	; (2000039c <main+0x39c>)
2000024a:	6013      	str	r3, [r2, #0]
2000024c:	4b53      	ldr	r3, [pc, #332]	; (2000039c <main+0x39c>)
2000024e:	681b      	ldr	r3, [r3, #0]
20000250:	f003 0307 	and.w	r3, r3, #7
20000254:	2b00      	cmp	r3, #0
20000256:	d124      	bne.n	200002a2 <main+0x2a2>
20000258:	f000 fac0 	bl	200007dc <update_refposition>
2000025c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
2000025e:	4944      	ldr	r1, [pc, #272]	; (20000370 <main+0x370>)
20000260:	4618      	mov	r0, r3
20000262:	f001 f913 	bl	2000148c <get_speed>
20000266:	6238      	str	r0, [r7, #32]
20000268:	4b45      	ldr	r3, [pc, #276]	; (20000380 <main+0x380>)
2000026a:	681b      	ldr	r3, [r3, #0]
2000026c:	4798      	blx	r3
2000026e:	63f8      	str	r0, [r7, #60]	; 0x3c
20000270:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
20000272:	6a3b      	ldr	r3, [r7, #32]
20000274:	1ad3      	subs	r3, r2, r3
20000276:	2200      	movs	r2, #0
20000278:	4619      	mov	r1, r3
2000027a:	4849      	ldr	r0, [pc, #292]	; (200003a0 <main+0x3a0>)
2000027c:	f000 fd44 	bl	20000d08 <reg_update>
20000280:	4b47      	ldr	r3, [pc, #284]	; (200003a0 <main+0x3a0>)
20000282:	68db      	ldr	r3, [r3, #12]
20000284:	131b      	asrs	r3, r3, #12
20000286:	647b      	str	r3, [r7, #68]	; 0x44
20000288:	6c7b      	ldr	r3, [r7, #68]	; 0x44
2000028a:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
2000028e:	dd02      	ble.n	20000296 <main+0x296>
20000290:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
20000294:	647b      	str	r3, [r7, #68]	; 0x44
20000296:	6c7b      	ldr	r3, [r7, #68]	; 0x44
20000298:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
2000029c:	da01      	bge.n	200002a2 <main+0x2a2>
2000029e:	4b41      	ldr	r3, [pc, #260]	; (200003a4 <main+0x3a4>)
200002a0:	647b      	str	r3, [r7, #68]	; 0x44
200002a2:	f000 f9f1 	bl	20000688 <update_telemetry>
200002a6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
200002a8:	f503 7361 	add.w	r3, r3, #900	; 0x384
200002ac:	f3c3 0309 	ubfx	r3, r3, #0, #10
200002b0:	63bb      	str	r3, [r7, #56]	; 0x38
200002b2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
200002b4:	603b      	str	r3, [r7, #0]
200002b6:	6abb      	ldr	r3, [r7, #40]	; 0x28
200002b8:	607b      	str	r3, [r7, #4]
200002ba:	6afb      	ldr	r3, [r7, #44]	; 0x2c
200002bc:	60bb      	str	r3, [r7, #8]
200002be:	6bba      	ldr	r2, [r7, #56]	; 0x38
200002c0:	f107 010c 	add.w	r1, r7, #12
200002c4:	463b      	mov	r3, r7
200002c6:	4618      	mov	r0, r3
200002c8:	f000 fd44 	bl	20000d54 <abc_to_dq>
200002cc:	68fb      	ldr	r3, [r7, #12]
200002ce:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
200002d2:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
200002d6:	693b      	ldr	r3, [r7, #16]
200002d8:	2b00      	cmp	r3, #0
200002da:	bfb8      	it	lt
200002dc:	425b      	neglt	r3, r3
200002de:	4413      	add	r3, r2
200002e0:	61fb      	str	r3, [r7, #28]
200002e2:	4b24      	ldr	r3, [pc, #144]	; (20000374 <main+0x374>)
200002e4:	681b      	ldr	r3, [r3, #0]
200002e6:	4619      	mov	r1, r3
200002e8:	69f8      	ldr	r0, [r7, #28]
200002ea:	f000 f861 	bl	200003b0 <mfilter>
200002ee:	4602      	mov	r2, r0
200002f0:	4b20      	ldr	r3, [pc, #128]	; (20000374 <main+0x374>)
200002f2:	601a      	str	r2, [r3, #0]
200002f4:	68fb      	ldr	r3, [r7, #12]
200002f6:	425b      	negs	r3, r3
200002f8:	61bb      	str	r3, [r7, #24]
200002fa:	693b      	ldr	r3, [r7, #16]
200002fc:	6c7a      	ldr	r2, [r7, #68]	; 0x44
200002fe:	1ad3      	subs	r3, r2, r3
20000300:	617b      	str	r3, [r7, #20]
20000302:	6cba      	ldr	r2, [r7, #72]	; 0x48
20000304:	69b9      	ldr	r1, [r7, #24]
20000306:	4828      	ldr	r0, [pc, #160]	; (200003a8 <main+0x3a8>)
20000308:	f000 fcfe 	bl	20000d08 <reg_update>
2000030c:	6cba      	ldr	r2, [r7, #72]	; 0x48
2000030e:	6979      	ldr	r1, [r7, #20]
20000310:	4826      	ldr	r0, [pc, #152]	; (200003ac <main+0x3ac>)
20000312:	f000 fcf9 	bl	20000d08 <reg_update>
20000316:	4b24      	ldr	r3, [pc, #144]	; (200003a8 <main+0x3a8>)
20000318:	68db      	ldr	r3, [r3, #12]
2000031a:	109b      	asrs	r3, r3, #2
2000031c:	60fb      	str	r3, [r7, #12]
2000031e:	4b23      	ldr	r3, [pc, #140]	; (200003ac <main+0x3ac>)
20000320:	68db      	ldr	r3, [r3, #12]
20000322:	109b      	asrs	r3, r3, #2
20000324:	613b      	str	r3, [r7, #16]
20000326:	6bba      	ldr	r2, [r7, #56]	; 0x38
20000328:	f107 010c 	add.w	r1, r7, #12
2000032c:	463b      	mov	r3, r7
2000032e:	4618      	mov	r0, r3
20000330:	f000 ff28 	bl	20001184 <svpwm>
20000334:	64b8      	str	r0, [r7, #72]	; 0x48
20000336:	683b      	ldr	r3, [r7, #0]
20000338:	4618      	mov	r0, r3
2000033a:	f000 f975 	bl	20000628 <pwm_seta>
2000033e:	687b      	ldr	r3, [r7, #4]
20000340:	4618      	mov	r0, r3
20000342:	f000 f981 	bl	20000648 <pwm_setb>
20000346:	68bb      	ldr	r3, [r7, #8]
20000348:	4618      	mov	r0, r3
2000034a:	f000 f98d 	bl	20000668 <pwm_setc>
2000034e:	e746      	b.n	200001de <main+0x1de>
20000350:	20003600 	.word	0x20003600
20000354:	40040000 	.word	0x40040000
20000358:	20002e10 	.word	0x20002e10
2000035c:	20002e04 	.word	0x20002e04
20000360:	20002e14 	.word	0x20002e14
20000364:	20002e0c 	.word	0x20002e0c
20000368:	20002e08 	.word	0x20002e08
2000036c:	20002e00 	.word	0x20002e00
20000370:	20002e28 	.word	0x20002e28
20000374:	20002e34 	.word	0x20002e34
20000378:	20002e2c 	.word	0x20002e2c
2000037c:	20002e9c 	.word	0x20002e9c
20000380:	20002e40 	.word	0x20002e40
20000384:	200009f5 	.word	0x200009f5
20000388:	20002e3d 	.word	0x20002e3d
2000038c:	20000951 	.word	0x20000951
20000390:	40090000 	.word	0x40090000
20000394:	003ffc00 	.word	0x003ffc00
20000398:	20002e30 	.word	0x20002e30
2000039c:	20002e18 	.word	0x20002e18
200003a0:	20002e64 	.word	0x20002e64
200003a4:	fffffc18 	.word	0xfffffc18
200003a8:	20002e44 	.word	0x20002e44
200003ac:	20002e54 	.word	0x20002e54

200003b0 <mfilter>:
200003b0:	b480      	push	{r7}
200003b2:	b083      	sub	sp, #12
200003b4:	af00      	add	r7, sp, #0
200003b6:	6078      	str	r0, [r7, #4]
200003b8:	6039      	str	r1, [r7, #0]
200003ba:	687a      	ldr	r2, [r7, #4]
200003bc:	4613      	mov	r3, r2
200003be:	009b      	lsls	r3, r3, #2
200003c0:	4413      	add	r3, r2
200003c2:	005b      	lsls	r3, r3, #1
200003c4:	4619      	mov	r1, r3
200003c6:	683b      	ldr	r3, [r7, #0]
200003c8:	f240 32f6 	movw	r2, #1014	; 0x3f6
200003cc:	fb02 f303 	mul.w	r3, r2, r3
200003d0:	440b      	add	r3, r1
200003d2:	129b      	asrs	r3, r3, #10
200003d4:	4618      	mov	r0, r3
200003d6:	370c      	adds	r7, #12
200003d8:	46bd      	mov	sp, r7
200003da:	bc80      	pop	{r7}
200003dc:	4770      	bx	lr
200003de:	bf00      	nop

200003e0 <brake_on>:
200003e0:	b480      	push	{r7}
200003e2:	af00      	add	r7, sp, #0
200003e4:	4a04      	ldr	r2, [pc, #16]	; (200003f8 <brake_on+0x18>)
200003e6:	4b04      	ldr	r3, [pc, #16]	; (200003f8 <brake_on+0x18>)
200003e8:	681b      	ldr	r3, [r3, #0]
200003ea:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
200003ee:	6013      	str	r3, [r2, #0]
200003f0:	bf00      	nop
200003f2:	46bd      	mov	sp, r7
200003f4:	bc80      	pop	{r7}
200003f6:	4770      	bx	lr
200003f8:	400e8000 	.word	0x400e8000

200003fc <brake_off>:
200003fc:	b480      	push	{r7}
200003fe:	af00      	add	r7, sp, #0
20000400:	4a04      	ldr	r2, [pc, #16]	; (20000414 <brake_off+0x18>)
20000402:	4b04      	ldr	r3, [pc, #16]	; (20000414 <brake_off+0x18>)
20000404:	681b      	ldr	r3, [r3, #0]
20000406:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
2000040a:	6013      	str	r3, [r2, #0]
2000040c:	bf00      	nop
2000040e:	46bd      	mov	sp, r7
20000410:	bc80      	pop	{r7}
20000412:	4770      	bx	lr
20000414:	400e8000 	.word	0x400e8000

20000418 <motor_off>:
20000418:	b480      	push	{r7}
2000041a:	af00      	add	r7, sp, #0
2000041c:	4a04      	ldr	r2, [pc, #16]	; (20000430 <motor_off+0x18>)
2000041e:	4b04      	ldr	r3, [pc, #16]	; (20000430 <motor_off+0x18>)
20000420:	681b      	ldr	r3, [r3, #0]
20000422:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20000426:	6013      	str	r3, [r2, #0]
20000428:	bf00      	nop
2000042a:	46bd      	mov	sp, r7
2000042c:	bc80      	pop	{r7}
2000042e:	4770      	bx	lr
20000430:	400e8000 	.word	0x400e8000

20000434 <motor_on>:
20000434:	b480      	push	{r7}
20000436:	af00      	add	r7, sp, #0
20000438:	4a04      	ldr	r2, [pc, #16]	; (2000044c <motor_on+0x18>)
2000043a:	4b04      	ldr	r3, [pc, #16]	; (2000044c <motor_on+0x18>)
2000043c:	681b      	ldr	r3, [r3, #0]
2000043e:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
20000442:	6013      	str	r3, [r2, #0]
20000444:	bf00      	nop
20000446:	46bd      	mov	sp, r7
20000448:	bc80      	pop	{r7}
2000044a:	4770      	bx	lr
2000044c:	400e8000 	.word	0x400e8000

20000450 <sleep>:
20000450:	b480      	push	{r7}
20000452:	b085      	sub	sp, #20
20000454:	af00      	add	r7, sp, #0
20000456:	6078      	str	r0, [r7, #4]
20000458:	4b08      	ldr	r3, [pc, #32]	; (2000047c <sleep+0x2c>)
2000045a:	681a      	ldr	r2, [r3, #0]
2000045c:	687b      	ldr	r3, [r7, #4]
2000045e:	4413      	add	r3, r2
20000460:	60fb      	str	r3, [r7, #12]
20000462:	bf00      	nop
20000464:	4b05      	ldr	r3, [pc, #20]	; (2000047c <sleep+0x2c>)
20000466:	681a      	ldr	r2, [r3, #0]
20000468:	68fb      	ldr	r3, [r7, #12]
2000046a:	429a      	cmp	r2, r3
2000046c:	d3fa      	bcc.n	20000464 <sleep+0x14>
2000046e:	bf00      	nop
20000470:	4618      	mov	r0, r3
20000472:	3714      	adds	r7, #20
20000474:	46bd      	mov	sp, r7
20000476:	bc80      	pop	{r7}
20000478:	4770      	bx	lr
2000047a:	bf00      	nop
2000047c:	20002f00 	.word	0x20002f00

20000480 <ssi_init>:
20000480:	b480      	push	{r7}
20000482:	af00      	add	r7, sp, #0
20000484:	4a0c      	ldr	r2, [pc, #48]	; (200004b8 <ssi_init+0x38>)
20000486:	4b0c      	ldr	r3, [pc, #48]	; (200004b8 <ssi_init+0x38>)
20000488:	69db      	ldr	r3, [r3, #28]
2000048a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000048e:	61d3      	str	r3, [r2, #28]
20000490:	4b09      	ldr	r3, [pc, #36]	; (200004b8 <ssi_init+0x38>)
20000492:	4a0a      	ldr	r2, [pc, #40]	; (200004bc <ssi_init+0x3c>)
20000494:	62da      	str	r2, [r3, #44]	; 0x2c
20000496:	4b0a      	ldr	r3, [pc, #40]	; (200004c0 <ssi_init+0x40>)
20000498:	2200      	movs	r2, #0
2000049a:	605a      	str	r2, [r3, #4]
2000049c:	4b08      	ldr	r3, [pc, #32]	; (200004c0 <ssi_init+0x40>)
2000049e:	2206      	movs	r2, #6
200004a0:	611a      	str	r2, [r3, #16]
200004a2:	4b07      	ldr	r3, [pc, #28]	; (200004c0 <ssi_init+0x40>)
200004a4:	f240 221f 	movw	r2, #543	; 0x21f
200004a8:	601a      	str	r2, [r3, #0]
200004aa:	4b05      	ldr	r3, [pc, #20]	; (200004c0 <ssi_init+0x40>)
200004ac:	2202      	movs	r2, #2
200004ae:	605a      	str	r2, [r3, #4]
200004b0:	bf00      	nop
200004b2:	46bd      	mov	sp, r7
200004b4:	bc80      	pop	{r7}
200004b6:	4770      	bx	lr
200004b8:	40020000 	.word	0x40020000
200004bc:	0100000a 	.word	0x0100000a
200004c0:	40040000 	.word	0x40040000

200004c4 <b2g>:
200004c4:	b480      	push	{r7}
200004c6:	b083      	sub	sp, #12
200004c8:	af00      	add	r7, sp, #0
200004ca:	6078      	str	r0, [r7, #4]
200004cc:	687b      	ldr	r3, [r7, #4]
200004ce:	085a      	lsrs	r2, r3, #1
200004d0:	687b      	ldr	r3, [r7, #4]
200004d2:	4053      	eors	r3, r2
200004d4:	4618      	mov	r0, r3
200004d6:	370c      	adds	r7, #12
200004d8:	46bd      	mov	sp, r7
200004da:	bc80      	pop	{r7}
200004dc:	4770      	bx	lr
200004de:	bf00      	nop

200004e0 <g2b>:
200004e0:	b480      	push	{r7}
200004e2:	b085      	sub	sp, #20
200004e4:	af00      	add	r7, sp, #0
200004e6:	6078      	str	r0, [r7, #4]
200004e8:	2300      	movs	r3, #0
200004ea:	60fb      	str	r3, [r7, #12]
200004ec:	2300      	movs	r3, #0
200004ee:	60fb      	str	r3, [r7, #12]
200004f0:	e006      	b.n	20000500 <g2b+0x20>
200004f2:	68fa      	ldr	r2, [r7, #12]
200004f4:	687b      	ldr	r3, [r7, #4]
200004f6:	4053      	eors	r3, r2
200004f8:	60fb      	str	r3, [r7, #12]
200004fa:	687b      	ldr	r3, [r7, #4]
200004fc:	085b      	lsrs	r3, r3, #1
200004fe:	607b      	str	r3, [r7, #4]
20000500:	687b      	ldr	r3, [r7, #4]
20000502:	2b00      	cmp	r3, #0
20000504:	d1f5      	bne.n	200004f2 <g2b+0x12>
20000506:	68fb      	ldr	r3, [r7, #12]
20000508:	4618      	mov	r0, r3
2000050a:	3714      	adds	r7, #20
2000050c:	46bd      	mov	sp, r7
2000050e:	bc80      	pop	{r7}
20000510:	4770      	bx	lr
20000512:	bf00      	nop

20000514 <enc_crc>:
20000514:	b480      	push	{r7}
20000516:	b085      	sub	sp, #20
20000518:	af00      	add	r7, sp, #0
2000051a:	6078      	str	r0, [r7, #4]
2000051c:	687b      	ldr	r3, [r7, #4]
2000051e:	60bb      	str	r3, [r7, #8]
20000520:	2300      	movs	r3, #0
20000522:	60fb      	str	r3, [r7, #12]
20000524:	e006      	b.n	20000534 <enc_crc+0x20>
20000526:	68fa      	ldr	r2, [r7, #12]
20000528:	68bb      	ldr	r3, [r7, #8]
2000052a:	4053      	eors	r3, r2
2000052c:	60fb      	str	r3, [r7, #12]
2000052e:	68bb      	ldr	r3, [r7, #8]
20000530:	085b      	lsrs	r3, r3, #1
20000532:	60bb      	str	r3, [r7, #8]
20000534:	68bb      	ldr	r3, [r7, #8]
20000536:	2b00      	cmp	r3, #0
20000538:	d1f5      	bne.n	20000526 <enc_crc+0x12>
2000053a:	68fb      	ldr	r3, [r7, #12]
2000053c:	f003 0301 	and.w	r3, r3, #1
20000540:	2b00      	cmp	r3, #0
20000542:	d107      	bne.n	20000554 <enc_crc+0x40>
20000544:	687b      	ldr	r3, [r7, #4]
20000546:	f3c3 030b 	ubfx	r3, r3, #0, #12
2000054a:	4a06      	ldr	r2, [pc, #24]	; (20000564 <enc_crc+0x50>)
2000054c:	6013      	str	r3, [r2, #0]
2000054e:	4b05      	ldr	r3, [pc, #20]	; (20000564 <enc_crc+0x50>)
20000550:	681b      	ldr	r3, [r3, #0]
20000552:	2b00      	cmp	r3, #0
20000554:	4b03      	ldr	r3, [pc, #12]	; (20000564 <enc_crc+0x50>)
20000556:	681b      	ldr	r3, [r3, #0]
20000558:	4618      	mov	r0, r3
2000055a:	3714      	adds	r7, #20
2000055c:	46bd      	mov	sp, r7
2000055e:	bc80      	pop	{r7}
20000560:	4770      	bx	lr
20000562:	bf00      	nop
20000564:	20002ea0 	.word	0x20002ea0

20000568 <dac_init>:
20000568:	b480      	push	{r7}
2000056a:	af00      	add	r7, sp, #0
2000056c:	4a07      	ldr	r2, [pc, #28]	; (2000058c <dac_init+0x24>)
2000056e:	4b07      	ldr	r3, [pc, #28]	; (2000058c <dac_init+0x24>)
20000570:	69db      	ldr	r3, [r3, #28]
20000572:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
20000576:	61d3      	str	r3, [r2, #28]
20000578:	4a05      	ldr	r2, [pc, #20]	; (20000590 <dac_init+0x28>)
2000057a:	4b05      	ldr	r3, [pc, #20]	; (20000590 <dac_init+0x28>)
2000057c:	681b      	ldr	r3, [r3, #0]
2000057e:	f043 030c 	orr.w	r3, r3, #12
20000582:	6013      	str	r3, [r2, #0]
20000584:	bf00      	nop
20000586:	46bd      	mov	sp, r7
20000588:	bc80      	pop	{r7}
2000058a:	4770      	bx	lr
2000058c:	40020000 	.word	0x40020000
20000590:	40090000 	.word	0x40090000

20000594 <encoder_start>:
20000594:	b480      	push	{r7}
20000596:	af00      	add	r7, sp, #0
20000598:	4b03      	ldr	r3, [pc, #12]	; (200005a8 <encoder_start+0x14>)
2000059a:	f240 5255 	movw	r2, #1365	; 0x555
2000059e:	609a      	str	r2, [r3, #8]
200005a0:	bf00      	nop
200005a2:	46bd      	mov	sp, r7
200005a4:	bc80      	pop	{r7}
200005a6:	4770      	bx	lr
200005a8:	40040000 	.word	0x40040000

200005ac <ADC_Handler>:
200005ac:	b480      	push	{r7}
200005ae:	af00      	add	r7, sp, #0
200005b0:	4b02      	ldr	r3, [pc, #8]	; (200005bc <ADC_Handler+0x10>)
200005b2:	699b      	ldr	r3, [r3, #24]
200005b4:	bf00      	nop
200005b6:	46bd      	mov	sp, r7
200005b8:	bc80      	pop	{r7}
200005ba:	4770      	bx	lr
200005bc:	40088000 	.word	0x40088000

200005c0 <TIMER1_Handler>:
200005c0:	b480      	push	{r7}
200005c2:	af00      	add	r7, sp, #0
200005c4:	4b03      	ldr	r3, [pc, #12]	; (200005d4 <TIMER1_Handler+0x14>)
200005c6:	2200      	movs	r2, #0
200005c8:	655a      	str	r2, [r3, #84]	; 0x54
200005ca:	bf00      	nop
200005cc:	46bd      	mov	sp, r7
200005ce:	bc80      	pop	{r7}
200005d0:	4770      	bx	lr
200005d2:	bf00      	nop
200005d4:	40070000 	.word	0x40070000

200005d8 <TIMER3_Handler>:
200005d8:	b580      	push	{r7, lr}
200005da:	af00      	add	r7, sp, #0
200005dc:	4b04      	ldr	r3, [pc, #16]	; (200005f0 <TIMER3_Handler+0x18>)
200005de:	2200      	movs	r2, #0
200005e0:	655a      	str	r2, [r3, #84]	; 0x54
200005e2:	f7ff ffd7 	bl	20000594 <encoder_start>
200005e6:	f001 f831 	bl	2000164c <adc_dma_start>
200005ea:	bf00      	nop
200005ec:	bd80      	pop	{r7, pc}
200005ee:	bf00      	nop
200005f0:	40080000 	.word	0x40080000

200005f4 <get_phase>:
200005f4:	b580      	push	{r7, lr}
200005f6:	af00      	add	r7, sp, #0
200005f8:	4b0a      	ldr	r3, [pc, #40]	; (20000624 <get_phase+0x30>)
200005fa:	f240 5255 	movw	r2, #1365	; 0x555
200005fe:	609a      	str	r2, [r3, #8]
20000600:	bf00      	nop
20000602:	4b08      	ldr	r3, [pc, #32]	; (20000624 <get_phase+0x30>)
20000604:	68db      	ldr	r3, [r3, #12]
20000606:	f003 0304 	and.w	r3, r3, #4
2000060a:	2b00      	cmp	r3, #0
2000060c:	d0f9      	beq.n	20000602 <get_phase+0xe>
2000060e:	4b05      	ldr	r3, [pc, #20]	; (20000624 <get_phase+0x30>)
20000610:	689b      	ldr	r3, [r3, #8]
20000612:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000616:	4618      	mov	r0, r3
20000618:	f7ff ff62 	bl	200004e0 <g2b>
2000061c:	4603      	mov	r3, r0
2000061e:	4618      	mov	r0, r3
20000620:	bd80      	pop	{r7, pc}
20000622:	bf00      	nop
20000624:	40040000 	.word	0x40040000

20000628 <pwm_seta>:
20000628:	b480      	push	{r7}
2000062a:	b083      	sub	sp, #12
2000062c:	af00      	add	r7, sp, #0
2000062e:	6078      	str	r0, [r7, #4]
20000630:	4a04      	ldr	r2, [pc, #16]	; (20000644 <pwm_seta+0x1c>)
20000632:	687b      	ldr	r3, [r7, #4]
20000634:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000638:	6113      	str	r3, [r2, #16]
2000063a:	bf00      	nop
2000063c:	370c      	adds	r7, #12
2000063e:	46bd      	mov	sp, r7
20000640:	bc80      	pop	{r7}
20000642:	4770      	bx	lr
20000644:	40080000 	.word	0x40080000

20000648 <pwm_setb>:
20000648:	b480      	push	{r7}
2000064a:	b083      	sub	sp, #12
2000064c:	af00      	add	r7, sp, #0
2000064e:	6078      	str	r0, [r7, #4]
20000650:	4a04      	ldr	r2, [pc, #16]	; (20000664 <pwm_setb+0x1c>)
20000652:	687b      	ldr	r3, [r7, #4]
20000654:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000658:	6153      	str	r3, [r2, #20]
2000065a:	bf00      	nop
2000065c:	370c      	adds	r7, #12
2000065e:	46bd      	mov	sp, r7
20000660:	bc80      	pop	{r7}
20000662:	4770      	bx	lr
20000664:	40080000 	.word	0x40080000

20000668 <pwm_setc>:
20000668:	b480      	push	{r7}
2000066a:	b083      	sub	sp, #12
2000066c:	af00      	add	r7, sp, #0
2000066e:	6078      	str	r0, [r7, #4]
20000670:	4a04      	ldr	r2, [pc, #16]	; (20000684 <pwm_setc+0x1c>)
20000672:	687b      	ldr	r3, [r7, #4]
20000674:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000678:	6193      	str	r3, [r2, #24]
2000067a:	bf00      	nop
2000067c:	370c      	adds	r7, #12
2000067e:	46bd      	mov	sp, r7
20000680:	bc80      	pop	{r7}
20000682:	4770      	bx	lr
20000684:	40080000 	.word	0x40080000

20000688 <update_telemetry>:
20000688:	b480      	push	{r7}
2000068a:	b083      	sub	sp, #12
2000068c:	af00      	add	r7, sp, #0
2000068e:	4b49      	ldr	r3, [pc, #292]	; (200007b4 <update_telemetry+0x12c>)
20000690:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20000692:	f003 0302 	and.w	r3, r3, #2
20000696:	2b00      	cmp	r3, #0
20000698:	d075      	beq.n	20000786 <update_telemetry+0xfe>
2000069a:	4b46      	ldr	r3, [pc, #280]	; (200007b4 <update_telemetry+0x12c>)
2000069c:	2200      	movs	r2, #0
2000069e:	655a      	str	r2, [r3, #84]	; 0x54
200006a0:	4a45      	ldr	r2, [pc, #276]	; (200007b8 <update_telemetry+0x130>)
200006a2:	4b45      	ldr	r3, [pc, #276]	; (200007b8 <update_telemetry+0x130>)
200006a4:	681b      	ldr	r3, [r3, #0]
200006a6:	f043 0301 	orr.w	r3, r3, #1
200006aa:	6013      	str	r3, [r2, #0]
200006ac:	4a43      	ldr	r2, [pc, #268]	; (200007bc <update_telemetry+0x134>)
200006ae:	4b43      	ldr	r3, [pc, #268]	; (200007bc <update_telemetry+0x134>)
200006b0:	699b      	ldr	r3, [r3, #24]
200006b2:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200006b6:	6193      	str	r3, [r2, #24]
200006b8:	4b3e      	ldr	r3, [pc, #248]	; (200007b4 <update_telemetry+0x12c>)
200006ba:	695b      	ldr	r3, [r3, #20]
200006bc:	b29b      	uxth	r3, r3
200006be:	f503 7396 	add.w	r3, r3, #300	; 0x12c
200006c2:	80fb      	strh	r3, [r7, #6]
200006c4:	88fb      	ldrh	r3, [r7, #6]
200006c6:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
200006ca:	d205      	bcs.n	200006d8 <update_telemetry+0x50>
200006cc:	4a39      	ldr	r2, [pc, #228]	; (200007b4 <update_telemetry+0x12c>)
200006ce:	4b39      	ldr	r3, [pc, #228]	; (200007b4 <update_telemetry+0x12c>)
200006d0:	681b      	ldr	r3, [r3, #0]
200006d2:	3301      	adds	r3, #1
200006d4:	6013      	str	r3, [r2, #0]
200006d6:	e008      	b.n	200006ea <update_telemetry+0x62>
200006d8:	88fb      	ldrh	r3, [r7, #6]
200006da:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
200006de:	d904      	bls.n	200006ea <update_telemetry+0x62>
200006e0:	4a34      	ldr	r2, [pc, #208]	; (200007b4 <update_telemetry+0x12c>)
200006e2:	4b34      	ldr	r3, [pc, #208]	; (200007b4 <update_telemetry+0x12c>)
200006e4:	681b      	ldr	r3, [r3, #0]
200006e6:	3b01      	subs	r3, #1
200006e8:	6013      	str	r3, [r2, #0]
200006ea:	4b35      	ldr	r3, [pc, #212]	; (200007c0 <update_telemetry+0x138>)
200006ec:	681a      	ldr	r2, [r3, #0]
200006ee:	4b35      	ldr	r3, [pc, #212]	; (200007c4 <update_telemetry+0x13c>)
200006f0:	681b      	ldr	r3, [r3, #0]
200006f2:	1ad3      	subs	r3, r2, r3
200006f4:	4a34      	ldr	r2, [pc, #208]	; (200007c8 <update_telemetry+0x140>)
200006f6:	fb82 1203 	smull	r1, r2, r2, r3
200006fa:	441a      	add	r2, r3
200006fc:	1152      	asrs	r2, r2, #5
200006fe:	17db      	asrs	r3, r3, #31
20000700:	1ad3      	subs	r3, r2, r3
20000702:	80bb      	strh	r3, [r7, #4]
20000704:	2300      	movs	r3, #0
20000706:	70fb      	strb	r3, [r7, #3]
20000708:	4b30      	ldr	r3, [pc, #192]	; (200007cc <update_telemetry+0x144>)
2000070a:	4a31      	ldr	r2, [pc, #196]	; (200007d0 <update_telemetry+0x148>)
2000070c:	6812      	ldr	r2, [r2, #0]
2000070e:	601a      	str	r2, [r3, #0]
20000710:	b2d2      	uxtb	r2, r2
20000712:	78fb      	ldrb	r3, [r7, #3]
20000714:	4053      	eors	r3, r2
20000716:	70fb      	strb	r3, [r7, #3]
20000718:	4a2c      	ldr	r2, [pc, #176]	; (200007cc <update_telemetry+0x144>)
2000071a:	4b2d      	ldr	r3, [pc, #180]	; (200007d0 <update_telemetry+0x148>)
2000071c:	681b      	ldr	r3, [r3, #0]
2000071e:	121b      	asrs	r3, r3, #8
20000720:	6013      	str	r3, [r2, #0]
20000722:	b2da      	uxtb	r2, r3
20000724:	78fb      	ldrb	r3, [r7, #3]
20000726:	4053      	eors	r3, r2
20000728:	70fb      	strb	r3, [r7, #3]
2000072a:	4a28      	ldr	r2, [pc, #160]	; (200007cc <update_telemetry+0x144>)
2000072c:	f9b7 3004 	ldrsh.w	r3, [r7, #4]
20000730:	6013      	str	r3, [r2, #0]
20000732:	b2da      	uxtb	r2, r3
20000734:	78fb      	ldrb	r3, [r7, #3]
20000736:	4053      	eors	r3, r2
20000738:	70fb      	strb	r3, [r7, #3]
2000073a:	4a24      	ldr	r2, [pc, #144]	; (200007cc <update_telemetry+0x144>)
2000073c:	f9b7 3004 	ldrsh.w	r3, [r7, #4]
20000740:	121b      	asrs	r3, r3, #8
20000742:	b21b      	sxth	r3, r3
20000744:	6013      	str	r3, [r2, #0]
20000746:	b2da      	uxtb	r2, r3
20000748:	78fb      	ldrb	r3, [r7, #3]
2000074a:	4053      	eors	r3, r2
2000074c:	70fb      	strb	r3, [r7, #3]
2000074e:	4b1f      	ldr	r3, [pc, #124]	; (200007cc <update_telemetry+0x144>)
20000750:	4a20      	ldr	r2, [pc, #128]	; (200007d4 <update_telemetry+0x14c>)
20000752:	6812      	ldr	r2, [r2, #0]
20000754:	601a      	str	r2, [r3, #0]
20000756:	b2d2      	uxtb	r2, r2
20000758:	78fb      	ldrb	r3, [r7, #3]
2000075a:	4053      	eors	r3, r2
2000075c:	70fb      	strb	r3, [r7, #3]
2000075e:	4a1b      	ldr	r2, [pc, #108]	; (200007cc <update_telemetry+0x144>)
20000760:	4b1c      	ldr	r3, [pc, #112]	; (200007d4 <update_telemetry+0x14c>)
20000762:	681b      	ldr	r3, [r3, #0]
20000764:	121b      	asrs	r3, r3, #8
20000766:	6013      	str	r3, [r2, #0]
20000768:	b2da      	uxtb	r2, r3
2000076a:	78fb      	ldrb	r3, [r7, #3]
2000076c:	4053      	eors	r3, r2
2000076e:	70fb      	strb	r3, [r7, #3]
20000770:	4b16      	ldr	r3, [pc, #88]	; (200007cc <update_telemetry+0x144>)
20000772:	4a19      	ldr	r2, [pc, #100]	; (200007d8 <update_telemetry+0x150>)
20000774:	7812      	ldrb	r2, [r2, #0]
20000776:	601a      	str	r2, [r3, #0]
20000778:	b2d2      	uxtb	r2, r2
2000077a:	78fb      	ldrb	r3, [r7, #3]
2000077c:	4053      	eors	r3, r2
2000077e:	70fb      	strb	r3, [r7, #3]
20000780:	4a12      	ldr	r2, [pc, #72]	; (200007cc <update_telemetry+0x144>)
20000782:	78fb      	ldrb	r3, [r7, #3]
20000784:	6013      	str	r3, [r2, #0]
20000786:	4b11      	ldr	r3, [pc, #68]	; (200007cc <update_telemetry+0x144>)
20000788:	699b      	ldr	r3, [r3, #24]
2000078a:	f003 0308 	and.w	r3, r3, #8
2000078e:	2b00      	cmp	r3, #0
20000790:	d10b      	bne.n	200007aa <update_telemetry+0x122>
20000792:	4a09      	ldr	r2, [pc, #36]	; (200007b8 <update_telemetry+0x130>)
20000794:	4b08      	ldr	r3, [pc, #32]	; (200007b8 <update_telemetry+0x130>)
20000796:	681b      	ldr	r3, [r3, #0]
20000798:	f023 0301 	bic.w	r3, r3, #1
2000079c:	6013      	str	r3, [r2, #0]
2000079e:	4a07      	ldr	r2, [pc, #28]	; (200007bc <update_telemetry+0x134>)
200007a0:	4b06      	ldr	r3, [pc, #24]	; (200007bc <update_telemetry+0x134>)
200007a2:	699b      	ldr	r3, [r3, #24]
200007a4:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
200007a8:	6193      	str	r3, [r2, #24]
200007aa:	bf00      	nop
200007ac:	370c      	adds	r7, #12
200007ae:	46bd      	mov	sp, r7
200007b0:	bc80      	pop	{r7}
200007b2:	4770      	bx	lr
200007b4:	40070000 	.word	0x40070000
200007b8:	400a8000 	.word	0x400a8000
200007bc:	400b0000 	.word	0x400b0000
200007c0:	20002e28 	.word	0x20002e28
200007c4:	20002e2c 	.word	0x20002e2c
200007c8:	8fb823ef 	.word	0x8fb823ef
200007cc:	40030000 	.word	0x40030000
200007d0:	20002e38 	.word	0x20002e38
200007d4:	20002e34 	.word	0x20002e34
200007d8:	20002e3d 	.word	0x20002e3d

200007dc <update_refposition>:
200007dc:	b480      	push	{r7}
200007de:	b089      	sub	sp, #36	; 0x24
200007e0:	af00      	add	r7, sp, #0
200007e2:	4b4f      	ldr	r3, [pc, #316]	; (20000920 <update_refposition+0x144>)
200007e4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200007e6:	f003 0310 	and.w	r3, r3, #16
200007ea:	2b00      	cmp	r3, #0
200007ec:	f000 8083 	beq.w	200008f6 <update_refposition+0x11a>
200007f0:	2300      	movs	r3, #0
200007f2:	61fb      	str	r3, [r7, #28]
200007f4:	e00c      	b.n	20000810 <update_refposition+0x34>
200007f6:	4b4a      	ldr	r3, [pc, #296]	; (20000920 <update_refposition+0x144>)
200007f8:	681b      	ldr	r3, [r3, #0]
200007fa:	b2d9      	uxtb	r1, r3
200007fc:	463a      	mov	r2, r7
200007fe:	69fb      	ldr	r3, [r7, #28]
20000800:	4413      	add	r3, r2
20000802:	460a      	mov	r2, r1
20000804:	701a      	strb	r2, [r3, #0]
20000806:	69fb      	ldr	r3, [r7, #28]
20000808:	3301      	adds	r3, #1
2000080a:	f003 030f 	and.w	r3, r3, #15
2000080e:	61fb      	str	r3, [r7, #28]
20000810:	4b43      	ldr	r3, [pc, #268]	; (20000920 <update_refposition+0x144>)
20000812:	699b      	ldr	r3, [r3, #24]
20000814:	f003 0310 	and.w	r3, r3, #16
20000818:	2b00      	cmp	r3, #0
2000081a:	d0ec      	beq.n	200007f6 <update_refposition+0x1a>
2000081c:	2300      	movs	r3, #0
2000081e:	767b      	strb	r3, [r7, #25]
20000820:	463b      	mov	r3, r7
20000822:	617b      	str	r3, [r7, #20]
20000824:	697b      	ldr	r3, [r7, #20]
20000826:	1c5a      	adds	r2, r3, #1
20000828:	617a      	str	r2, [r7, #20]
2000082a:	781a      	ldrb	r2, [r3, #0]
2000082c:	7e7b      	ldrb	r3, [r7, #25]
2000082e:	4053      	eors	r3, r2
20000830:	767b      	strb	r3, [r7, #25]
20000832:	697b      	ldr	r3, [r7, #20]
20000834:	1c5a      	adds	r2, r3, #1
20000836:	617a      	str	r2, [r7, #20]
20000838:	781a      	ldrb	r2, [r3, #0]
2000083a:	7e7b      	ldrb	r3, [r7, #25]
2000083c:	4053      	eors	r3, r2
2000083e:	767b      	strb	r3, [r7, #25]
20000840:	697b      	ldr	r3, [r7, #20]
20000842:	1c5a      	adds	r2, r3, #1
20000844:	617a      	str	r2, [r7, #20]
20000846:	781a      	ldrb	r2, [r3, #0]
20000848:	7e7b      	ldrb	r3, [r7, #25]
2000084a:	4053      	eors	r3, r2
2000084c:	767b      	strb	r3, [r7, #25]
2000084e:	697b      	ldr	r3, [r7, #20]
20000850:	1c5a      	adds	r2, r3, #1
20000852:	617a      	str	r2, [r7, #20]
20000854:	781a      	ldrb	r2, [r3, #0]
20000856:	7e7b      	ldrb	r3, [r7, #25]
20000858:	4053      	eors	r3, r2
2000085a:	767b      	strb	r3, [r7, #25]
2000085c:	697b      	ldr	r3, [r7, #20]
2000085e:	1c5a      	adds	r2, r3, #1
20000860:	617a      	str	r2, [r7, #20]
20000862:	781a      	ldrb	r2, [r3, #0]
20000864:	7e7b      	ldrb	r3, [r7, #25]
20000866:	4053      	eors	r3, r2
20000868:	767b      	strb	r3, [r7, #25]
2000086a:	697b      	ldr	r3, [r7, #20]
2000086c:	1c5a      	adds	r2, r3, #1
2000086e:	617a      	str	r2, [r7, #20]
20000870:	781a      	ldrb	r2, [r3, #0]
20000872:	7e7b      	ldrb	r3, [r7, #25]
20000874:	4053      	eors	r3, r2
20000876:	767b      	strb	r3, [r7, #25]
20000878:	697b      	ldr	r3, [r7, #20]
2000087a:	1c5a      	adds	r2, r3, #1
2000087c:	617a      	str	r2, [r7, #20]
2000087e:	781a      	ldrb	r2, [r3, #0]
20000880:	7e7b      	ldrb	r3, [r7, #25]
20000882:	4053      	eors	r3, r2
20000884:	767b      	strb	r3, [r7, #25]
20000886:	697b      	ldr	r3, [r7, #20]
20000888:	1c5a      	adds	r2, r3, #1
2000088a:	617a      	str	r2, [r7, #20]
2000088c:	781a      	ldrb	r2, [r3, #0]
2000088e:	7e7b      	ldrb	r3, [r7, #25]
20000890:	4053      	eors	r3, r2
20000892:	767b      	strb	r3, [r7, #25]
20000894:	7e7b      	ldrb	r3, [r7, #25]
20000896:	2b00      	cmp	r3, #0
20000898:	d12d      	bne.n	200008f6 <update_refposition+0x11a>
2000089a:	783b      	ldrb	r3, [r7, #0]
2000089c:	b29a      	uxth	r2, r3
2000089e:	787b      	ldrb	r3, [r7, #1]
200008a0:	b29b      	uxth	r3, r3
200008a2:	021b      	lsls	r3, r3, #8
200008a4:	b29b      	uxth	r3, r3
200008a6:	4413      	add	r3, r2
200008a8:	b29b      	uxth	r3, r3
200008aa:	837b      	strh	r3, [r7, #26]
200008ac:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200008b0:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
200008b4:	db03      	blt.n	200008be <update_refposition+0xe2>
200008b6:	f240 73ff 	movw	r3, #2047	; 0x7ff
200008ba:	837b      	strh	r3, [r7, #26]
200008bc:	bf00      	nop
200008be:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200008c2:	f513 6f00 	cmn.w	r3, #2048	; 0x800
200008c6:	da03      	bge.n	200008d0 <update_refposition+0xf4>
200008c8:	f44f 4378 	mov.w	r3, #63488	; 0xf800
200008cc:	837b      	strh	r3, [r7, #26]
200008ce:	bf00      	nop
200008d0:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200008d4:	4a13      	ldr	r2, [pc, #76]	; (20000924 <update_refposition+0x148>)
200008d6:	6013      	str	r3, [r2, #0]
200008d8:	f9b7 201a 	ldrsh.w	r2, [r7, #26]
200008dc:	4613      	mov	r3, r2
200008de:	00db      	lsls	r3, r3, #3
200008e0:	1a9b      	subs	r3, r3, r2
200008e2:	00db      	lsls	r3, r3, #3
200008e4:	441a      	add	r2, r3
200008e6:	4b10      	ldr	r3, [pc, #64]	; (20000928 <update_refposition+0x14c>)
200008e8:	681b      	ldr	r3, [r3, #0]
200008ea:	4413      	add	r3, r2
200008ec:	4a0f      	ldr	r2, [pc, #60]	; (2000092c <update_refposition+0x150>)
200008ee:	6013      	str	r3, [r2, #0]
200008f0:	79ba      	ldrb	r2, [r7, #6]
200008f2:	4b0f      	ldr	r3, [pc, #60]	; (20000930 <update_refposition+0x154>)
200008f4:	701a      	strb	r2, [r3, #0]
200008f6:	4b0a      	ldr	r3, [pc, #40]	; (20000920 <update_refposition+0x144>)
200008f8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200008fa:	f003 0340 	and.w	r3, r3, #64	; 0x40
200008fe:	2b00      	cmp	r3, #0
20000900:	d009      	beq.n	20000916 <update_refposition+0x13a>
20000902:	e002      	b.n	2000090a <update_refposition+0x12e>
20000904:	4b06      	ldr	r3, [pc, #24]	; (20000920 <update_refposition+0x144>)
20000906:	681b      	ldr	r3, [r3, #0]
20000908:	74fb      	strb	r3, [r7, #19]
2000090a:	4b05      	ldr	r3, [pc, #20]	; (20000920 <update_refposition+0x144>)
2000090c:	699b      	ldr	r3, [r3, #24]
2000090e:	f003 0310 	and.w	r3, r3, #16
20000912:	2b00      	cmp	r3, #0
20000914:	d0f6      	beq.n	20000904 <update_refposition+0x128>
20000916:	bf00      	nop
20000918:	3724      	adds	r7, #36	; 0x24
2000091a:	46bd      	mov	sp, r7
2000091c:	bc80      	pop	{r7}
2000091e:	4770      	bx	lr
20000920:	40030000 	.word	0x40030000
20000924:	20002e38 	.word	0x20002e38
20000928:	20002e2c 	.word	0x20002e2c
2000092c:	20002e00 	.word	0x20002e00
20000930:	20002e3c 	.word	0x20002e3c

20000934 <fault_positioning_proc>:
20000934:	b580      	push	{r7, lr}
20000936:	af00      	add	r7, sp, #0
20000938:	4b04      	ldr	r3, [pc, #16]	; (2000094c <fault_positioning_proc+0x18>)
2000093a:	2201      	movs	r2, #1
2000093c:	701a      	strb	r2, [r3, #0]
2000093e:	f7ff fd6b 	bl	20000418 <motor_off>
20000942:	f7ff fd4d 	bl	200003e0 <brake_on>
20000946:	2300      	movs	r3, #0
20000948:	4618      	mov	r0, r3
2000094a:	bd80      	pop	{r7, pc}
2000094c:	20002e3d 	.word	0x20002e3d

20000950 <remote_positioning_proc>:
20000950:	b580      	push	{r7, lr}
20000952:	b082      	sub	sp, #8
20000954:	af00      	add	r7, sp, #0
20000956:	4b0c      	ldr	r3, [pc, #48]	; (20000988 <remote_positioning_proc+0x38>)
20000958:	781b      	ldrb	r3, [r3, #0]
2000095a:	f043 0302 	orr.w	r3, r3, #2
2000095e:	b2da      	uxtb	r2, r3
20000960:	4b09      	ldr	r3, [pc, #36]	; (20000988 <remote_positioning_proc+0x38>)
20000962:	701a      	strb	r2, [r3, #0]
20000964:	4b09      	ldr	r3, [pc, #36]	; (2000098c <remote_positioning_proc+0x3c>)
20000966:	681a      	ldr	r2, [r3, #0]
20000968:	4b09      	ldr	r3, [pc, #36]	; (20000990 <remote_positioning_proc+0x40>)
2000096a:	681b      	ldr	r3, [r3, #0]
2000096c:	1ad3      	subs	r3, r2, r3
2000096e:	607b      	str	r3, [r7, #4]
20000970:	2200      	movs	r2, #0
20000972:	6879      	ldr	r1, [r7, #4]
20000974:	4807      	ldr	r0, [pc, #28]	; (20000994 <remote_positioning_proc+0x44>)
20000976:	f000 f9c7 	bl	20000d08 <reg_update>
2000097a:	4b06      	ldr	r3, [pc, #24]	; (20000994 <remote_positioning_proc+0x44>)
2000097c:	68db      	ldr	r3, [r3, #12]
2000097e:	131b      	asrs	r3, r3, #12
20000980:	4618      	mov	r0, r3
20000982:	3708      	adds	r7, #8
20000984:	46bd      	mov	sp, r7
20000986:	bd80      	pop	{r7, pc}
20000988:	20002e3d 	.word	0x20002e3d
2000098c:	20002e00 	.word	0x20002e00
20000990:	20002e28 	.word	0x20002e28
20000994:	20002e74 	.word	0x20002e74

20000998 <wait_for_launch_proc>:
20000998:	b580      	push	{r7, lr}
2000099a:	af00      	add	r7, sp, #0
2000099c:	4b10      	ldr	r3, [pc, #64]	; (200009e0 <wait_for_launch_proc+0x48>)
2000099e:	781b      	ldrb	r3, [r3, #0]
200009a0:	f043 0308 	orr.w	r3, r3, #8
200009a4:	b2da      	uxtb	r2, r3
200009a6:	4b0e      	ldr	r3, [pc, #56]	; (200009e0 <wait_for_launch_proc+0x48>)
200009a8:	701a      	strb	r2, [r3, #0]
200009aa:	4b0e      	ldr	r3, [pc, #56]	; (200009e4 <wait_for_launch_proc+0x4c>)
200009ac:	781b      	ldrb	r3, [r3, #0]
200009ae:	f003 0340 	and.w	r3, r3, #64	; 0x40
200009b2:	2b00      	cmp	r3, #0
200009b4:	d104      	bne.n	200009c0 <wait_for_launch_proc+0x28>
200009b6:	4b0c      	ldr	r3, [pc, #48]	; (200009e8 <wait_for_launch_proc+0x50>)
200009b8:	4a0c      	ldr	r2, [pc, #48]	; (200009ec <wait_for_launch_proc+0x54>)
200009ba:	601a      	str	r2, [r3, #0]
200009bc:	2300      	movs	r3, #0
200009be:	e00d      	b.n	200009dc <wait_for_launch_proc+0x44>
200009c0:	f7ff fd38 	bl	20000434 <motor_on>
200009c4:	4b07      	ldr	r3, [pc, #28]	; (200009e4 <wait_for_launch_proc+0x4c>)
200009c6:	781b      	ldrb	r3, [r3, #0]
200009c8:	f003 0304 	and.w	r3, r3, #4
200009cc:	2b00      	cmp	r3, #0
200009ce:	d004      	beq.n	200009da <wait_for_launch_proc+0x42>
200009d0:	4b05      	ldr	r3, [pc, #20]	; (200009e8 <wait_for_launch_proc+0x50>)
200009d2:	4a07      	ldr	r2, [pc, #28]	; (200009f0 <wait_for_launch_proc+0x58>)
200009d4:	601a      	str	r2, [r3, #0]
200009d6:	f7ff fd11 	bl	200003fc <brake_off>
200009da:	2300      	movs	r3, #0
200009dc:	4618      	mov	r0, r3
200009de:	bd80      	pop	{r7, pc}
200009e0:	20002e3d 	.word	0x20002e3d
200009e4:	20002e3c 	.word	0x20002e3c
200009e8:	20002e40 	.word	0x20002e40
200009ec:	20000935 	.word	0x20000935
200009f0:	20000951 	.word	0x20000951

200009f4 <wait_positioning_proc>:
200009f4:	b580      	push	{r7, lr}
200009f6:	af00      	add	r7, sp, #0
200009f8:	4b13      	ldr	r3, [pc, #76]	; (20000a48 <wait_positioning_proc+0x54>)
200009fa:	2210      	movs	r2, #16
200009fc:	701a      	strb	r2, [r3, #0]
200009fe:	4b13      	ldr	r3, [pc, #76]	; (20000a4c <wait_positioning_proc+0x58>)
20000a00:	781b      	ldrb	r3, [r3, #0]
20000a02:	f003 0310 	and.w	r3, r3, #16
20000a06:	2b00      	cmp	r3, #0
20000a08:	d01b      	beq.n	20000a42 <wait_positioning_proc+0x4e>
20000a0a:	4b11      	ldr	r3, [pc, #68]	; (20000a50 <wait_positioning_proc+0x5c>)
20000a0c:	4a11      	ldr	r2, [pc, #68]	; (20000a54 <wait_positioning_proc+0x60>)
20000a0e:	601a      	str	r2, [r3, #0]
20000a10:	4b11      	ldr	r3, [pc, #68]	; (20000a58 <wait_positioning_proc+0x64>)
20000a12:	681b      	ldr	r3, [r3, #0]
20000a14:	4a11      	ldr	r2, [pc, #68]	; (20000a5c <wait_positioning_proc+0x68>)
20000a16:	6013      	str	r3, [r2, #0]
20000a18:	4b10      	ldr	r3, [pc, #64]	; (20000a5c <wait_positioning_proc+0x68>)
20000a1a:	681b      	ldr	r3, [r3, #0]
20000a1c:	f503 539c 	add.w	r3, r3, #4992	; 0x1380
20000a20:	3308      	adds	r3, #8
20000a22:	4a0f      	ldr	r2, [pc, #60]	; (20000a60 <wait_positioning_proc+0x6c>)
20000a24:	6013      	str	r3, [r2, #0]
20000a26:	4b0f      	ldr	r3, [pc, #60]	; (20000a64 <wait_positioning_proc+0x70>)
20000a28:	2200      	movs	r2, #0
20000a2a:	601a      	str	r2, [r3, #0]
20000a2c:	4b06      	ldr	r3, [pc, #24]	; (20000a48 <wait_positioning_proc+0x54>)
20000a2e:	781b      	ldrb	r3, [r3, #0]
20000a30:	f043 0308 	orr.w	r3, r3, #8
20000a34:	b2da      	uxtb	r2, r3
20000a36:	4b04      	ldr	r3, [pc, #16]	; (20000a48 <wait_positioning_proc+0x54>)
20000a38:	701a      	strb	r2, [r3, #0]
20000a3a:	f7ff fcfb 	bl	20000434 <motor_on>
20000a3e:	f7ff fcdd 	bl	200003fc <brake_off>
20000a42:	2300      	movs	r3, #0
20000a44:	4618      	mov	r0, r3
20000a46:	bd80      	pop	{r7, pc}
20000a48:	20002e3d 	.word	0x20002e3d
20000a4c:	20002e3c 	.word	0x20002e3c
20000a50:	20002e40 	.word	0x20002e40
20000a54:	20000999 	.word	0x20000999
20000a58:	20002e28 	.word	0x20002e28
20000a5c:	20002e2c 	.word	0x20002e2c
20000a60:	20002e00 	.word	0x20002e00
20000a64:	20002e9c 	.word	0x20002e9c

20000a68 <test3_positioning_proc>:
20000a68:	b580      	push	{r7, lr}
20000a6a:	b082      	sub	sp, #8
20000a6c:	af00      	add	r7, sp, #0
20000a6e:	4b1f      	ldr	r3, [pc, #124]	; (20000aec <test3_positioning_proc+0x84>)
20000a70:	681b      	ldr	r3, [r3, #0]
20000a72:	f241 3287 	movw	r2, #4999	; 0x1387
20000a76:	4293      	cmp	r3, r2
20000a78:	dd04      	ble.n	20000a84 <test3_positioning_proc+0x1c>
20000a7a:	4b1d      	ldr	r3, [pc, #116]	; (20000af0 <test3_positioning_proc+0x88>)
20000a7c:	4a1d      	ldr	r2, [pc, #116]	; (20000af4 <test3_positioning_proc+0x8c>)
20000a7e:	601a      	str	r2, [r3, #0]
20000a80:	2300      	movs	r3, #0
20000a82:	e02e      	b.n	20000ae2 <test3_positioning_proc+0x7a>
20000a84:	4b19      	ldr	r3, [pc, #100]	; (20000aec <test3_positioning_proc+0x84>)
20000a86:	681b      	ldr	r3, [r3, #0]
20000a88:	3301      	adds	r3, #1
20000a8a:	4a18      	ldr	r2, [pc, #96]	; (20000aec <test3_positioning_proc+0x84>)
20000a8c:	6013      	str	r3, [r2, #0]
20000a8e:	4b1a      	ldr	r3, [pc, #104]	; (20000af8 <test3_positioning_proc+0x90>)
20000a90:	681a      	ldr	r2, [r3, #0]
20000a92:	4b1a      	ldr	r3, [pc, #104]	; (20000afc <test3_positioning_proc+0x94>)
20000a94:	681b      	ldr	r3, [r3, #0]
20000a96:	1ad3      	subs	r3, r2, r3
20000a98:	607b      	str	r3, [r7, #4]
20000a9a:	687b      	ldr	r3, [r7, #4]
20000a9c:	f113 0f02 	cmn.w	r3, #2
20000aa0:	db17      	blt.n	20000ad2 <test3_positioning_proc+0x6a>
20000aa2:	687b      	ldr	r3, [r7, #4]
20000aa4:	2b02      	cmp	r3, #2
20000aa6:	dc14      	bgt.n	20000ad2 <test3_positioning_proc+0x6a>
20000aa8:	4b10      	ldr	r3, [pc, #64]	; (20000aec <test3_positioning_proc+0x84>)
20000aaa:	681b      	ldr	r3, [r3, #0]
20000aac:	f5b3 6f7a 	cmp.w	r3, #4000	; 0xfa0
20000ab0:	db0f      	blt.n	20000ad2 <test3_positioning_proc+0x6a>
20000ab2:	4b13      	ldr	r3, [pc, #76]	; (20000b00 <test3_positioning_proc+0x98>)
20000ab4:	681b      	ldr	r3, [r3, #0]
20000ab6:	4a10      	ldr	r2, [pc, #64]	; (20000af8 <test3_positioning_proc+0x90>)
20000ab8:	6013      	str	r3, [r2, #0]
20000aba:	4b0d      	ldr	r3, [pc, #52]	; (20000af0 <test3_positioning_proc+0x88>)
20000abc:	4a11      	ldr	r2, [pc, #68]	; (20000b04 <test3_positioning_proc+0x9c>)
20000abe:	601a      	str	r2, [r3, #0]
20000ac0:	4b0a      	ldr	r3, [pc, #40]	; (20000aec <test3_positioning_proc+0x84>)
20000ac2:	2200      	movs	r2, #0
20000ac4:	601a      	str	r2, [r3, #0]
20000ac6:	f7ff fca7 	bl	20000418 <motor_off>
20000aca:	f7ff fc89 	bl	200003e0 <brake_on>
20000ace:	2300      	movs	r3, #0
20000ad0:	e007      	b.n	20000ae2 <test3_positioning_proc+0x7a>
20000ad2:	2200      	movs	r2, #0
20000ad4:	6879      	ldr	r1, [r7, #4]
20000ad6:	480c      	ldr	r0, [pc, #48]	; (20000b08 <test3_positioning_proc+0xa0>)
20000ad8:	f000 f916 	bl	20000d08 <reg_update>
20000adc:	4b0a      	ldr	r3, [pc, #40]	; (20000b08 <test3_positioning_proc+0xa0>)
20000ade:	68db      	ldr	r3, [r3, #12]
20000ae0:	131b      	asrs	r3, r3, #12
20000ae2:	4618      	mov	r0, r3
20000ae4:	3708      	adds	r7, #8
20000ae6:	46bd      	mov	sp, r7
20000ae8:	bd80      	pop	{r7, pc}
20000aea:	bf00      	nop
20000aec:	20002e9c 	.word	0x20002e9c
20000af0:	20002e40 	.word	0x20002e40
20000af4:	20000935 	.word	0x20000935
20000af8:	20002e00 	.word	0x20002e00
20000afc:	20002e28 	.word	0x20002e28
20000b00:	20002e2c 	.word	0x20002e2c
20000b04:	20000999 	.word	0x20000999
20000b08:	20002e74 	.word	0x20002e74

20000b0c <test2_positioning_proc>:
20000b0c:	b580      	push	{r7, lr}
20000b0e:	b082      	sub	sp, #8
20000b10:	af00      	add	r7, sp, #0
20000b12:	4b19      	ldr	r3, [pc, #100]	; (20000b78 <test2_positioning_proc+0x6c>)
20000b14:	681b      	ldr	r3, [r3, #0]
20000b16:	f241 3287 	movw	r2, #4999	; 0x1387
20000b1a:	4293      	cmp	r3, r2
20000b1c:	dd04      	ble.n	20000b28 <test2_positioning_proc+0x1c>
20000b1e:	4b17      	ldr	r3, [pc, #92]	; (20000b7c <test2_positioning_proc+0x70>)
20000b20:	4a17      	ldr	r2, [pc, #92]	; (20000b80 <test2_positioning_proc+0x74>)
20000b22:	601a      	str	r2, [r3, #0]
20000b24:	2300      	movs	r3, #0
20000b26:	e023      	b.n	20000b70 <test2_positioning_proc+0x64>
20000b28:	4b13      	ldr	r3, [pc, #76]	; (20000b78 <test2_positioning_proc+0x6c>)
20000b2a:	681b      	ldr	r3, [r3, #0]
20000b2c:	3301      	adds	r3, #1
20000b2e:	4a12      	ldr	r2, [pc, #72]	; (20000b78 <test2_positioning_proc+0x6c>)
20000b30:	6013      	str	r3, [r2, #0]
20000b32:	4b14      	ldr	r3, [pc, #80]	; (20000b84 <test2_positioning_proc+0x78>)
20000b34:	681a      	ldr	r2, [r3, #0]
20000b36:	4b14      	ldr	r3, [pc, #80]	; (20000b88 <test2_positioning_proc+0x7c>)
20000b38:	681b      	ldr	r3, [r3, #0]
20000b3a:	1ad3      	subs	r3, r2, r3
20000b3c:	607b      	str	r3, [r7, #4]
20000b3e:	687b      	ldr	r3, [r7, #4]
20000b40:	f113 0f02 	cmn.w	r3, #2
20000b44:	db0c      	blt.n	20000b60 <test2_positioning_proc+0x54>
20000b46:	687b      	ldr	r3, [r7, #4]
20000b48:	2b02      	cmp	r3, #2
20000b4a:	dc09      	bgt.n	20000b60 <test2_positioning_proc+0x54>
20000b4c:	4b0f      	ldr	r3, [pc, #60]	; (20000b8c <test2_positioning_proc+0x80>)
20000b4e:	681b      	ldr	r3, [r3, #0]
20000b50:	4a0c      	ldr	r2, [pc, #48]	; (20000b84 <test2_positioning_proc+0x78>)
20000b52:	6013      	str	r3, [r2, #0]
20000b54:	4b09      	ldr	r3, [pc, #36]	; (20000b7c <test2_positioning_proc+0x70>)
20000b56:	4a0e      	ldr	r2, [pc, #56]	; (20000b90 <test2_positioning_proc+0x84>)
20000b58:	601a      	str	r2, [r3, #0]
20000b5a:	4b07      	ldr	r3, [pc, #28]	; (20000b78 <test2_positioning_proc+0x6c>)
20000b5c:	2200      	movs	r2, #0
20000b5e:	601a      	str	r2, [r3, #0]
20000b60:	2200      	movs	r2, #0
20000b62:	6879      	ldr	r1, [r7, #4]
20000b64:	480b      	ldr	r0, [pc, #44]	; (20000b94 <test2_positioning_proc+0x88>)
20000b66:	f000 f8cf 	bl	20000d08 <reg_update>
20000b6a:	4b0a      	ldr	r3, [pc, #40]	; (20000b94 <test2_positioning_proc+0x88>)
20000b6c:	68db      	ldr	r3, [r3, #12]
20000b6e:	131b      	asrs	r3, r3, #12
20000b70:	4618      	mov	r0, r3
20000b72:	3708      	adds	r7, #8
20000b74:	46bd      	mov	sp, r7
20000b76:	bd80      	pop	{r7, pc}
20000b78:	20002e9c 	.word	0x20002e9c
20000b7c:	20002e40 	.word	0x20002e40
20000b80:	20000935 	.word	0x20000935
20000b84:	20002e00 	.word	0x20002e00
20000b88:	20002e28 	.word	0x20002e28
20000b8c:	20002e2c 	.word	0x20002e2c
20000b90:	20000a69 	.word	0x20000a69
20000b94:	20002e74 	.word	0x20002e74

20000b98 <test1_positioning_proc>:
20000b98:	b580      	push	{r7, lr}
20000b9a:	b082      	sub	sp, #8
20000b9c:	af00      	add	r7, sp, #0
20000b9e:	4b1c      	ldr	r3, [pc, #112]	; (20000c10 <test1_positioning_proc+0x78>)
20000ba0:	681b      	ldr	r3, [r3, #0]
20000ba2:	f241 3287 	movw	r2, #4999	; 0x1387
20000ba6:	4293      	cmp	r3, r2
20000ba8:	dd04      	ble.n	20000bb4 <test1_positioning_proc+0x1c>
20000baa:	4b1a      	ldr	r3, [pc, #104]	; (20000c14 <test1_positioning_proc+0x7c>)
20000bac:	4a1a      	ldr	r2, [pc, #104]	; (20000c18 <test1_positioning_proc+0x80>)
20000bae:	601a      	str	r2, [r3, #0]
20000bb0:	2300      	movs	r3, #0
20000bb2:	e028      	b.n	20000c06 <test1_positioning_proc+0x6e>
20000bb4:	4b16      	ldr	r3, [pc, #88]	; (20000c10 <test1_positioning_proc+0x78>)
20000bb6:	681b      	ldr	r3, [r3, #0]
20000bb8:	3301      	adds	r3, #1
20000bba:	4a15      	ldr	r2, [pc, #84]	; (20000c10 <test1_positioning_proc+0x78>)
20000bbc:	6013      	str	r3, [r2, #0]
20000bbe:	4b17      	ldr	r3, [pc, #92]	; (20000c1c <test1_positioning_proc+0x84>)
20000bc0:	681a      	ldr	r2, [r3, #0]
20000bc2:	4b17      	ldr	r3, [pc, #92]	; (20000c20 <test1_positioning_proc+0x88>)
20000bc4:	681b      	ldr	r3, [r3, #0]
20000bc6:	1ad3      	subs	r3, r2, r3
20000bc8:	607b      	str	r3, [r7, #4]
20000bca:	687b      	ldr	r3, [r7, #4]
20000bcc:	f113 0f02 	cmn.w	r3, #2
20000bd0:	db11      	blt.n	20000bf6 <test1_positioning_proc+0x5e>
20000bd2:	687b      	ldr	r3, [r7, #4]
20000bd4:	2b02      	cmp	r3, #2
20000bd6:	dc0e      	bgt.n	20000bf6 <test1_positioning_proc+0x5e>
20000bd8:	4b12      	ldr	r3, [pc, #72]	; (20000c24 <test1_positioning_proc+0x8c>)
20000bda:	681b      	ldr	r3, [r3, #0]
20000bdc:	f5a3 539c 	sub.w	r3, r3, #4992	; 0x1380
20000be0:	3b08      	subs	r3, #8
20000be2:	4a0e      	ldr	r2, [pc, #56]	; (20000c1c <test1_positioning_proc+0x84>)
20000be4:	6013      	str	r3, [r2, #0]
20000be6:	4b0b      	ldr	r3, [pc, #44]	; (20000c14 <test1_positioning_proc+0x7c>)
20000be8:	4a0f      	ldr	r2, [pc, #60]	; (20000c28 <test1_positioning_proc+0x90>)
20000bea:	601a      	str	r2, [r3, #0]
20000bec:	4b08      	ldr	r3, [pc, #32]	; (20000c10 <test1_positioning_proc+0x78>)
20000bee:	2200      	movs	r2, #0
20000bf0:	601a      	str	r2, [r3, #0]
20000bf2:	2300      	movs	r3, #0
20000bf4:	e007      	b.n	20000c06 <test1_positioning_proc+0x6e>
20000bf6:	2200      	movs	r2, #0
20000bf8:	6879      	ldr	r1, [r7, #4]
20000bfa:	480c      	ldr	r0, [pc, #48]	; (20000c2c <test1_positioning_proc+0x94>)
20000bfc:	f000 f884 	bl	20000d08 <reg_update>
20000c00:	4b0a      	ldr	r3, [pc, #40]	; (20000c2c <test1_positioning_proc+0x94>)
20000c02:	68db      	ldr	r3, [r3, #12]
20000c04:	131b      	asrs	r3, r3, #12
20000c06:	4618      	mov	r0, r3
20000c08:	3708      	adds	r7, #8
20000c0a:	46bd      	mov	sp, r7
20000c0c:	bd80      	pop	{r7, pc}
20000c0e:	bf00      	nop
20000c10:	20002e9c 	.word	0x20002e9c
20000c14:	20002e40 	.word	0x20002e40
20000c18:	20000935 	.word	0x20000935
20000c1c:	20002e00 	.word	0x20002e00
20000c20:	20002e28 	.word	0x20002e28
20000c24:	20002e2c 	.word	0x20002e2c
20000c28:	20000b0d 	.word	0x20000b0d
20000c2c:	20002e74 	.word	0x20002e74

20000c30 <zero_positioning_proc>:
20000c30:	b580      	push	{r7, lr}
20000c32:	b082      	sub	sp, #8
20000c34:	af00      	add	r7, sp, #0
20000c36:	4b1e      	ldr	r3, [pc, #120]	; (20000cb0 <zero_positioning_proc+0x80>)
20000c38:	681b      	ldr	r3, [r3, #0]
20000c3a:	f241 3287 	movw	r2, #4999	; 0x1387
20000c3e:	4293      	cmp	r3, r2
20000c40:	dd04      	ble.n	20000c4c <zero_positioning_proc+0x1c>
20000c42:	4b1c      	ldr	r3, [pc, #112]	; (20000cb4 <zero_positioning_proc+0x84>)
20000c44:	4a1c      	ldr	r2, [pc, #112]	; (20000cb8 <zero_positioning_proc+0x88>)
20000c46:	601a      	str	r2, [r3, #0]
20000c48:	2300      	movs	r3, #0
20000c4a:	e02c      	b.n	20000ca6 <zero_positioning_proc+0x76>
20000c4c:	4b18      	ldr	r3, [pc, #96]	; (20000cb0 <zero_positioning_proc+0x80>)
20000c4e:	681b      	ldr	r3, [r3, #0]
20000c50:	3301      	adds	r3, #1
20000c52:	4a17      	ldr	r2, [pc, #92]	; (20000cb0 <zero_positioning_proc+0x80>)
20000c54:	6013      	str	r3, [r2, #0]
20000c56:	4b19      	ldr	r3, [pc, #100]	; (20000cbc <zero_positioning_proc+0x8c>)
20000c58:	681a      	ldr	r2, [r3, #0]
20000c5a:	4b19      	ldr	r3, [pc, #100]	; (20000cc0 <zero_positioning_proc+0x90>)
20000c5c:	681b      	ldr	r3, [r3, #0]
20000c5e:	1ad3      	subs	r3, r2, r3
20000c60:	607b      	str	r3, [r7, #4]
20000c62:	687b      	ldr	r3, [r7, #4]
20000c64:	f113 0f02 	cmn.w	r3, #2
20000c68:	db15      	blt.n	20000c96 <zero_positioning_proc+0x66>
20000c6a:	687b      	ldr	r3, [r7, #4]
20000c6c:	2b02      	cmp	r3, #2
20000c6e:	dc12      	bgt.n	20000c96 <zero_positioning_proc+0x66>
20000c70:	4b14      	ldr	r3, [pc, #80]	; (20000cc4 <zero_positioning_proc+0x94>)
20000c72:	681b      	ldr	r3, [r3, #0]
20000c74:	4a14      	ldr	r2, [pc, #80]	; (20000cc8 <zero_positioning_proc+0x98>)
20000c76:	6013      	str	r3, [r2, #0]
20000c78:	4b13      	ldr	r3, [pc, #76]	; (20000cc8 <zero_positioning_proc+0x98>)
20000c7a:	681b      	ldr	r3, [r3, #0]
20000c7c:	f503 539c 	add.w	r3, r3, #4992	; 0x1380
20000c80:	3308      	adds	r3, #8
20000c82:	4a12      	ldr	r2, [pc, #72]	; (20000ccc <zero_positioning_proc+0x9c>)
20000c84:	6013      	str	r3, [r2, #0]
20000c86:	4b0b      	ldr	r3, [pc, #44]	; (20000cb4 <zero_positioning_proc+0x84>)
20000c88:	4a11      	ldr	r2, [pc, #68]	; (20000cd0 <zero_positioning_proc+0xa0>)
20000c8a:	601a      	str	r2, [r3, #0]
20000c8c:	4b08      	ldr	r3, [pc, #32]	; (20000cb0 <zero_positioning_proc+0x80>)
20000c8e:	2200      	movs	r2, #0
20000c90:	601a      	str	r2, [r3, #0]
20000c92:	2300      	movs	r3, #0
20000c94:	e007      	b.n	20000ca6 <zero_positioning_proc+0x76>
20000c96:	2200      	movs	r2, #0
20000c98:	6879      	ldr	r1, [r7, #4]
20000c9a:	480e      	ldr	r0, [pc, #56]	; (20000cd4 <zero_positioning_proc+0xa4>)
20000c9c:	f000 f834 	bl	20000d08 <reg_update>
20000ca0:	4b0c      	ldr	r3, [pc, #48]	; (20000cd4 <zero_positioning_proc+0xa4>)
20000ca2:	68db      	ldr	r3, [r3, #12]
20000ca4:	131b      	asrs	r3, r3, #12
20000ca6:	4618      	mov	r0, r3
20000ca8:	3708      	adds	r7, #8
20000caa:	46bd      	mov	sp, r7
20000cac:	bd80      	pop	{r7, pc}
20000cae:	bf00      	nop
20000cb0:	20002e9c 	.word	0x20002e9c
20000cb4:	20002e40 	.word	0x20002e40
20000cb8:	20000935 	.word	0x20000935
20000cbc:	20002e14 	.word	0x20002e14
20000cc0:	20002e04 	.word	0x20002e04
20000cc4:	20002e28 	.word	0x20002e28
20000cc8:	20002e2c 	.word	0x20002e2c
20000ccc:	20002e00 	.word	0x20002e00
20000cd0:	20000b99 	.word	0x20000b99
20000cd4:	20002e84 	.word	0x20002e84

20000cd8 <mycos>:
20000cd8:	4b02      	ldr	r3, [pc, #8]	; (20000ce4 <mycos+0xc>)
20000cda:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000cde:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000ce2:	4770      	bx	lr
20000ce4:	20001dec 	.word	0x20001dec

20000ce8 <mysin>:
20000ce8:	4b03      	ldr	r3, [pc, #12]	; (20000cf8 <mysin+0x10>)
20000cea:	f500 7040 	add.w	r0, r0, #768	; 0x300
20000cee:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000cf2:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000cf6:	4770      	bx	lr
20000cf8:	20001dec 	.word	0x20001dec

20000cfc <reg_init>:
20000cfc:	2300      	movs	r3, #0
20000cfe:	e880 000e 	stmia.w	r0, {r1, r2, r3}
20000d02:	60c3      	str	r3, [r0, #12]
20000d04:	4770      	bx	lr
20000d06:	bf00      	nop

20000d08 <reg_update>:
20000d08:	6803      	ldr	r3, [r0, #0]
20000d0a:	b410      	push	{r4}
20000d0c:	fb03 f301 	mul.w	r3, r3, r1
20000d10:	6884      	ldr	r4, [r0, #8]
20000d12:	b11a      	cbz	r2, 20000d1c <reg_update+0x14>
20000d14:	2c00      	cmp	r4, #0
20000d16:	dd09      	ble.n	20000d2c <reg_update+0x24>
20000d18:	ea03 73e3 	and.w	r3, r3, r3, asr #31
20000d1c:	6842      	ldr	r2, [r0, #4]
20000d1e:	4423      	add	r3, r4
20000d20:	fb02 3101 	mla	r1, r2, r1, r3
20000d24:	6083      	str	r3, [r0, #8]
20000d26:	60c1      	str	r1, [r0, #12]
20000d28:	bc10      	pop	{r4}
20000d2a:	4770      	bx	lr
20000d2c:	bf18      	it	ne
20000d2e:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
20000d32:	e7f3      	b.n	20000d1c <reg_update+0x14>

20000d34 <dot3>:
20000d34:	b430      	push	{r4, r5}
20000d36:	684b      	ldr	r3, [r1, #4]
20000d38:	6844      	ldr	r4, [r0, #4]
20000d3a:	6802      	ldr	r2, [r0, #0]
20000d3c:	fb03 f304 	mul.w	r3, r3, r4
20000d40:	680d      	ldr	r5, [r1, #0]
20000d42:	6884      	ldr	r4, [r0, #8]
20000d44:	fb05 3302 	mla	r3, r5, r2, r3
20000d48:	6888      	ldr	r0, [r1, #8]
20000d4a:	fb00 3004 	mla	r0, r0, r4, r3
20000d4e:	bc30      	pop	{r4, r5}
20000d50:	4770      	bx	lr
20000d52:	bf00      	nop

20000d54 <abc_to_dq>:
20000d54:	b4f0      	push	{r4, r5, r6, r7}
20000d56:	4c1d      	ldr	r4, [pc, #116]	; (20000dcc <abc_to_dq+0x78>)
20000d58:	6803      	ldr	r3, [r0, #0]
20000d5a:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
20000d5e:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
20000d62:	fb03 f306 	mul.w	r3, r3, r6
20000d66:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d6a:	6847      	ldr	r7, [r0, #4]
20000d6c:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000d70:	f202 1655 	addw	r6, r2, #341	; 0x155
20000d74:	fb07 3305 	mla	r3, r7, r5, r3
20000d78:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000d7c:	6887      	ldr	r7, [r0, #8]
20000d7e:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000d82:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
20000d86:	fb07 3305 	mla	r3, r7, r5, r3
20000d8a:	129b      	asrs	r3, r3, #10
20000d8c:	600b      	str	r3, [r1, #0]
20000d8e:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000d92:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
20000d96:	6843      	ldr	r3, [r0, #4]
20000d98:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000d9c:	fb03 f306 	mul.w	r3, r3, r6
20000da0:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000da4:	6806      	ldr	r6, [r0, #0]
20000da6:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000daa:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000dae:	fb06 3305 	mla	r3, r6, r5, r3
20000db2:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000db6:	6880      	ldr	r0, [r0, #8]
20000db8:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
20000dbc:	bcf0      	pop	{r4, r5, r6, r7}
20000dbe:	fb00 3302 	mla	r3, r0, r2, r3
20000dc2:	425b      	negs	r3, r3
20000dc4:	129b      	asrs	r3, r3, #10
20000dc6:	604b      	str	r3, [r1, #4]
20000dc8:	4770      	bx	lr
20000dca:	bf00      	nop
20000dcc:	20001dec 	.word	0x20001dec

20000dd0 <dq_to_abc>:
20000dd0:	4b1d      	ldr	r3, [pc, #116]	; (20000e48 <dq_to_abc+0x78>)
20000dd2:	b4f0      	push	{r4, r5, r6, r7}
20000dd4:	680e      	ldr	r6, [r1, #0]
20000dd6:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
20000dda:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000dde:	fb04 f406 	mul.w	r4, r4, r6
20000de2:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000de6:	684f      	ldr	r7, [r1, #4]
20000de8:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000dec:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000df0:	fb07 4415 	mls	r4, r7, r5, r4
20000df4:	1524      	asrs	r4, r4, #20
20000df6:	6004      	str	r4, [r0, #0]
20000df8:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000dfc:	680c      	ldr	r4, [r1, #0]
20000dfe:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
20000e02:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
20000e06:	fb04 f406 	mul.w	r4, r4, r6
20000e0a:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000e0e:	684f      	ldr	r7, [r1, #4]
20000e10:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000e14:	f202 1655 	addw	r6, r2, #341	; 0x155
20000e18:	fb07 4415 	mls	r4, r7, r5, r4
20000e1c:	1524      	asrs	r4, r4, #20
20000e1e:	6044      	str	r4, [r0, #4]
20000e20:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000e24:	680c      	ldr	r4, [r1, #0]
20000e26:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000e2a:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000e2e:	fb04 f405 	mul.w	r4, r4, r5
20000e32:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000e36:	6849      	ldr	r1, [r1, #4]
20000e38:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
20000e3c:	fb01 4312 	mls	r3, r1, r2, r4
20000e40:	bcf0      	pop	{r4, r5, r6, r7}
20000e42:	151b      	asrs	r3, r3, #20
20000e44:	6083      	str	r3, [r0, #8]
20000e46:	4770      	bx	lr
20000e48:	20001dec 	.word	0x20001dec

20000e4c <cord_atan>:
20000e4c:	b5f0      	push	{r4, r5, r6, r7, lr}
20000e4e:	b091      	sub	sp, #68	; 0x44
20000e50:	46ee      	mov	lr, sp
20000e52:	4684      	mov	ip, r0
20000e54:	4e56      	ldr	r6, [pc, #344]	; (20000fb0 <cord_atan+0x164>)
20000e56:	460d      	mov	r5, r1
20000e58:	4614      	mov	r4, r2
20000e5a:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000e5c:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000e60:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000e64:	af08      	add	r7, sp, #32
20000e66:	3610      	adds	r6, #16
20000e68:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000e6c:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000e6e:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000e70:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000e74:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000e78:	f8dc 6000 	ldr.w	r6, [ip]
20000e7c:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000e80:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000e84:	2b00      	cmp	r3, #0
20000e86:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000e8a:	9900      	ldr	r1, [sp, #0]
20000e8c:	dd56      	ble.n	20000f3c <cord_atan+0xf0>
20000e8e:	18d0      	adds	r0, r2, r3
20000e90:	1a9b      	subs	r3, r3, r2
20000e92:	2b00      	cmp	r3, #0
20000e94:	d07a      	beq.n	20000f8c <cord_atan+0x140>
20000e96:	9f01      	ldr	r7, [sp, #4]
20000e98:	dd54      	ble.n	20000f44 <cord_atan+0xf8>
20000e9a:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000e9e:	4439      	add	r1, r7
20000ea0:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000ea4:	2b00      	cmp	r3, #0
20000ea6:	d073      	beq.n	20000f90 <cord_atan+0x144>
20000ea8:	9f02      	ldr	r7, [sp, #8]
20000eaa:	dd51      	ble.n	20000f50 <cord_atan+0x104>
20000eac:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000eb0:	4439      	add	r1, r7
20000eb2:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000eb6:	2b00      	cmp	r3, #0
20000eb8:	d06d      	beq.n	20000f96 <cord_atan+0x14a>
20000eba:	9f03      	ldr	r7, [sp, #12]
20000ebc:	dd4e      	ble.n	20000f5c <cord_atan+0x110>
20000ebe:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000ec2:	4439      	add	r1, r7
20000ec4:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000ec8:	2b00      	cmp	r3, #0
20000eca:	d066      	beq.n	20000f9a <cord_atan+0x14e>
20000ecc:	9f04      	ldr	r7, [sp, #16]
20000ece:	dd4b      	ble.n	20000f68 <cord_atan+0x11c>
20000ed0:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000ed4:	4439      	add	r1, r7
20000ed6:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000eda:	2b00      	cmp	r3, #0
20000edc:	d060      	beq.n	20000fa0 <cord_atan+0x154>
20000ede:	9f05      	ldr	r7, [sp, #20]
20000ee0:	dd48      	ble.n	20000f74 <cord_atan+0x128>
20000ee2:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000ee6:	4439      	add	r1, r7
20000ee8:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000eec:	2b00      	cmp	r3, #0
20000eee:	d059      	beq.n	20000fa4 <cord_atan+0x158>
20000ef0:	9f06      	ldr	r7, [sp, #24]
20000ef2:	dd45      	ble.n	20000f80 <cord_atan+0x134>
20000ef4:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000ef8:	4439      	add	r1, r7
20000efa:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000efe:	2b00      	cmp	r3, #0
20000f00:	d053      	beq.n	20000faa <cord_atan+0x15e>
20000f02:	9a07      	ldr	r2, [sp, #28]
20000f04:	bfc7      	ittee	gt
20000f06:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000f0a:	1889      	addgt	r1, r1, r2
20000f0c:	1a89      	suble	r1, r1, r2
20000f0e:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000f12:	2207      	movs	r2, #7
20000f14:	ab10      	add	r3, sp, #64	; 0x40
20000f16:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000f1a:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000f1e:	2e00      	cmp	r6, #0
20000f20:	fb03 f300 	mul.w	r3, r3, r0
20000f24:	bfb8      	it	lt
20000f26:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000f2a:	2900      	cmp	r1, #0
20000f2c:	bfb8      	it	lt
20000f2e:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000f32:	129b      	asrs	r3, r3, #10
20000f34:	6029      	str	r1, [r5, #0]
20000f36:	6023      	str	r3, [r4, #0]
20000f38:	b011      	add	sp, #68	; 0x44
20000f3a:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000f3c:	1ad0      	subs	r0, r2, r3
20000f3e:	4249      	negs	r1, r1
20000f40:	4413      	add	r3, r2
20000f42:	e7a6      	b.n	20000e92 <cord_atan+0x46>
20000f44:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000f48:	1bc9      	subs	r1, r1, r7
20000f4a:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000f4e:	e7a9      	b.n	20000ea4 <cord_atan+0x58>
20000f50:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000f54:	1bc9      	subs	r1, r1, r7
20000f56:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000f5a:	e7ac      	b.n	20000eb6 <cord_atan+0x6a>
20000f5c:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000f60:	1bc9      	subs	r1, r1, r7
20000f62:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000f66:	e7af      	b.n	20000ec8 <cord_atan+0x7c>
20000f68:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000f6c:	1bc9      	subs	r1, r1, r7
20000f6e:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000f72:	e7b2      	b.n	20000eda <cord_atan+0x8e>
20000f74:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000f78:	1bc9      	subs	r1, r1, r7
20000f7a:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000f7e:	e7b5      	b.n	20000eec <cord_atan+0xa0>
20000f80:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000f84:	1bc9      	subs	r1, r1, r7
20000f86:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000f8a:	e7b8      	b.n	20000efe <cord_atan+0xb2>
20000f8c:	461a      	mov	r2, r3
20000f8e:	e7c1      	b.n	20000f14 <cord_atan+0xc8>
20000f90:	4610      	mov	r0, r2
20000f92:	2201      	movs	r2, #1
20000f94:	e7be      	b.n	20000f14 <cord_atan+0xc8>
20000f96:	2202      	movs	r2, #2
20000f98:	e7bc      	b.n	20000f14 <cord_atan+0xc8>
20000f9a:	4610      	mov	r0, r2
20000f9c:	2203      	movs	r2, #3
20000f9e:	e7b9      	b.n	20000f14 <cord_atan+0xc8>
20000fa0:	2204      	movs	r2, #4
20000fa2:	e7b7      	b.n	20000f14 <cord_atan+0xc8>
20000fa4:	4610      	mov	r0, r2
20000fa6:	2205      	movs	r2, #5
20000fa8:	e7b4      	b.n	20000f14 <cord_atan+0xc8>
20000faa:	2206      	movs	r2, #6
20000fac:	e7b2      	b.n	20000f14 <cord_atan+0xc8>
20000fae:	bf00      	nop
20000fb0:	20001dac 	.word	0x20001dac

20000fb4 <sinpwm>:
20000fb4:	b5f0      	push	{r4, r5, r6, r7, lr}
20000fb6:	b091      	sub	sp, #68	; 0x44
20000fb8:	46ee      	mov	lr, sp
20000fba:	468c      	mov	ip, r1
20000fbc:	4e6e      	ldr	r6, [pc, #440]	; (20001178 <sinpwm+0x1c4>)
20000fbe:	4604      	mov	r4, r0
20000fc0:	4615      	mov	r5, r2
20000fc2:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000fc4:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000fc8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000fcc:	af08      	add	r7, sp, #32
20000fce:	3610      	adds	r6, #16
20000fd0:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000fd4:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000fd6:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000fd8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000fdc:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000fe0:	f8dc 6000 	ldr.w	r6, [ip]
20000fe4:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000fe8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000fec:	2b00      	cmp	r3, #0
20000fee:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000ff2:	9900      	ldr	r1, [sp, #0]
20000ff4:	f340 8087 	ble.w	20001106 <sinpwm+0x152>
20000ff8:	18d0      	adds	r0, r2, r3
20000ffa:	1a9b      	subs	r3, r3, r2
20000ffc:	2b00      	cmp	r3, #0
20000ffe:	f000 80aa 	beq.w	20001156 <sinpwm+0x1a2>
20001002:	9f01      	ldr	r7, [sp, #4]
20001004:	f340 8083 	ble.w	2000110e <sinpwm+0x15a>
20001008:	eb00 0263 	add.w	r2, r0, r3, asr #1
2000100c:	4439      	add	r1, r7
2000100e:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20001012:	2b00      	cmp	r3, #0
20001014:	f000 80a1 	beq.w	2000115a <sinpwm+0x1a6>
20001018:	9f02      	ldr	r7, [sp, #8]
2000101a:	dd7e      	ble.n	2000111a <sinpwm+0x166>
2000101c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20001020:	4439      	add	r1, r7
20001022:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20001026:	2b00      	cmp	r3, #0
20001028:	f000 809a 	beq.w	20001160 <sinpwm+0x1ac>
2000102c:	9f03      	ldr	r7, [sp, #12]
2000102e:	dd7a      	ble.n	20001126 <sinpwm+0x172>
20001030:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20001034:	4439      	add	r1, r7
20001036:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
2000103a:	2b00      	cmp	r3, #0
2000103c:	f000 8092 	beq.w	20001164 <sinpwm+0x1b0>
20001040:	9f04      	ldr	r7, [sp, #16]
20001042:	dd76      	ble.n	20001132 <sinpwm+0x17e>
20001044:	eb02 1023 	add.w	r0, r2, r3, asr #4
20001048:	4439      	add	r1, r7
2000104a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000104e:	2b00      	cmp	r3, #0
20001050:	f000 808b 	beq.w	2000116a <sinpwm+0x1b6>
20001054:	9f05      	ldr	r7, [sp, #20]
20001056:	dd72      	ble.n	2000113e <sinpwm+0x18a>
20001058:	eb00 1263 	add.w	r2, r0, r3, asr #5
2000105c:	4439      	add	r1, r7
2000105e:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20001062:	2b00      	cmp	r3, #0
20001064:	f000 8083 	beq.w	2000116e <sinpwm+0x1ba>
20001068:	9f06      	ldr	r7, [sp, #24]
2000106a:	dd6e      	ble.n	2000114a <sinpwm+0x196>
2000106c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20001070:	4439      	add	r1, r7
20001072:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20001076:	2b00      	cmp	r3, #0
20001078:	d07c      	beq.n	20001174 <sinpwm+0x1c0>
2000107a:	9a07      	ldr	r2, [sp, #28]
2000107c:	bfc7      	ittee	gt
2000107e:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20001082:	1889      	addgt	r1, r1, r2
20001084:	1a89      	suble	r1, r1, r2
20001086:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
2000108a:	2207      	movs	r2, #7
2000108c:	ab10      	add	r3, sp, #64	; 0x40
2000108e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20001092:	f852 3c20 	ldr.w	r3, [r2, #-32]
20001096:	2e00      	cmp	r6, #0
20001098:	fb03 f300 	mul.w	r3, r3, r0
2000109c:	bfb8      	it	lt
2000109e:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
200010a2:	2900      	cmp	r1, #0
200010a4:	bfb8      	it	lt
200010a6:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
200010aa:	151b      	asrs	r3, r3, #20
200010ac:	440d      	add	r5, r1
200010ae:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
200010b2:	f3c5 0509 	ubfx	r5, r5, #0, #10
200010b6:	dd22      	ble.n	200010fe <sinpwm+0x14a>
200010b8:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 20001180 <sinpwm+0x1cc>
200010bc:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
200010c0:	2001      	movs	r0, #1
200010c2:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
200010c6:	4f2d      	ldr	r7, [pc, #180]	; (2000117c <sinpwm+0x1c8>)
200010c8:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
200010cc:	3602      	adds	r6, #2
200010ce:	f3ce 0e09 	ubfx	lr, lr, #0, #10
200010d2:	f3c6 0609 	ubfx	r6, r6, #0, #10
200010d6:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
200010da:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
200010de:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
200010e2:	fb06 f50c 	mul.w	r5, r6, ip
200010e6:	fb01 f10c 	mul.w	r1, r1, ip
200010ea:	fb02 f303 	mul.w	r3, r2, r3
200010ee:	12ad      	asrs	r5, r5, #10
200010f0:	128a      	asrs	r2, r1, #10
200010f2:	129b      	asrs	r3, r3, #10
200010f4:	60a5      	str	r5, [r4, #8]
200010f6:	6062      	str	r2, [r4, #4]
200010f8:	6023      	str	r3, [r4, #0]
200010fa:	b011      	add	sp, #68	; 0x44
200010fc:	bdf0      	pop	{r4, r5, r6, r7, pc}
200010fe:	f1c3 0c00 	rsb	ip, r3, #0
20001102:	2000      	movs	r0, #0
20001104:	e7dd      	b.n	200010c2 <sinpwm+0x10e>
20001106:	1ad0      	subs	r0, r2, r3
20001108:	4249      	negs	r1, r1
2000110a:	4413      	add	r3, r2
2000110c:	e776      	b.n	20000ffc <sinpwm+0x48>
2000110e:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20001112:	1bc9      	subs	r1, r1, r7
20001114:	eb03 0360 	add.w	r3, r3, r0, asr #1
20001118:	e77b      	b.n	20001012 <sinpwm+0x5e>
2000111a:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
2000111e:	1bc9      	subs	r1, r1, r7
20001120:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20001124:	e77f      	b.n	20001026 <sinpwm+0x72>
20001126:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
2000112a:	1bc9      	subs	r1, r1, r7
2000112c:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20001130:	e783      	b.n	2000103a <sinpwm+0x86>
20001132:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20001136:	1bc9      	subs	r1, r1, r7
20001138:	eb03 1322 	add.w	r3, r3, r2, asr #4
2000113c:	e787      	b.n	2000104e <sinpwm+0x9a>
2000113e:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20001142:	1bc9      	subs	r1, r1, r7
20001144:	eb03 1360 	add.w	r3, r3, r0, asr #5
20001148:	e78b      	b.n	20001062 <sinpwm+0xae>
2000114a:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
2000114e:	1bc9      	subs	r1, r1, r7
20001150:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20001154:	e78f      	b.n	20001076 <sinpwm+0xc2>
20001156:	461a      	mov	r2, r3
20001158:	e798      	b.n	2000108c <sinpwm+0xd8>
2000115a:	4610      	mov	r0, r2
2000115c:	2201      	movs	r2, #1
2000115e:	e795      	b.n	2000108c <sinpwm+0xd8>
20001160:	2202      	movs	r2, #2
20001162:	e793      	b.n	2000108c <sinpwm+0xd8>
20001164:	4610      	mov	r0, r2
20001166:	2203      	movs	r2, #3
20001168:	e790      	b.n	2000108c <sinpwm+0xd8>
2000116a:	2204      	movs	r2, #4
2000116c:	e78e      	b.n	2000108c <sinpwm+0xd8>
2000116e:	4610      	mov	r0, r2
20001170:	2205      	movs	r2, #5
20001172:	e78b      	b.n	2000108c <sinpwm+0xd8>
20001174:	2206      	movs	r2, #6
20001176:	e789      	b.n	2000108c <sinpwm+0xd8>
20001178:	20001dac 	.word	0x20001dac
2000117c:	20001dec 	.word	0x20001dec
20001180:	fffffe0c 	.word	0xfffffe0c

20001184 <svpwm>:
20001184:	b5f0      	push	{r4, r5, r6, r7, lr}
20001186:	b091      	sub	sp, #68	; 0x44
20001188:	46ee      	mov	lr, sp
2000118a:	468c      	mov	ip, r1
2000118c:	4eb9      	ldr	r6, [pc, #740]	; (20001474 <svpwm+0x2f0>)
2000118e:	4604      	mov	r4, r0
20001190:	4615      	mov	r5, r2
20001192:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20001194:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20001198:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
2000119c:	af08      	add	r7, sp, #32
2000119e:	3610      	adds	r6, #16
200011a0:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200011a4:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200011a6:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200011a8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200011ac:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200011b0:	f8dc 6000 	ldr.w	r6, [ip]
200011b4:	f8dc 3004 	ldr.w	r3, [ip, #4]
200011b8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200011bc:	2b00      	cmp	r3, #0
200011be:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200011c2:	9900      	ldr	r1, [sp, #0]
200011c4:	dd71      	ble.n	200012aa <svpwm+0x126>
200011c6:	18d0      	adds	r0, r2, r3
200011c8:	1a9b      	subs	r3, r3, r2
200011ca:	2b00      	cmp	r3, #0
200011cc:	f000 8141 	beq.w	20001452 <svpwm+0x2ce>
200011d0:	9f01      	ldr	r7, [sp, #4]
200011d2:	dd6e      	ble.n	200012b2 <svpwm+0x12e>
200011d4:	eb00 0263 	add.w	r2, r0, r3, asr #1
200011d8:	4439      	add	r1, r7
200011da:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200011de:	2b00      	cmp	r3, #0
200011e0:	f000 8139 	beq.w	20001456 <svpwm+0x2d2>
200011e4:	9f02      	ldr	r7, [sp, #8]
200011e6:	dd6a      	ble.n	200012be <svpwm+0x13a>
200011e8:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200011ec:	4439      	add	r1, r7
200011ee:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200011f2:	2b00      	cmp	r3, #0
200011f4:	f000 8132 	beq.w	2000145c <svpwm+0x2d8>
200011f8:	9f03      	ldr	r7, [sp, #12]
200011fa:	dd66      	ble.n	200012ca <svpwm+0x146>
200011fc:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20001200:	4439      	add	r1, r7
20001202:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20001206:	2b00      	cmp	r3, #0
20001208:	f000 812a 	beq.w	20001460 <svpwm+0x2dc>
2000120c:	9f04      	ldr	r7, [sp, #16]
2000120e:	dd62      	ble.n	200012d6 <svpwm+0x152>
20001210:	eb02 1023 	add.w	r0, r2, r3, asr #4
20001214:	4439      	add	r1, r7
20001216:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000121a:	2b00      	cmp	r3, #0
2000121c:	f000 8123 	beq.w	20001466 <svpwm+0x2e2>
20001220:	9f05      	ldr	r7, [sp, #20]
20001222:	dd5e      	ble.n	200012e2 <svpwm+0x15e>
20001224:	eb00 1263 	add.w	r2, r0, r3, asr #5
20001228:	4439      	add	r1, r7
2000122a:	eba3 1360 	sub.w	r3, r3, r0, asr #5
2000122e:	2b00      	cmp	r3, #0
20001230:	f000 811b 	beq.w	2000146a <svpwm+0x2e6>
20001234:	9f06      	ldr	r7, [sp, #24]
20001236:	dd5a      	ble.n	200012ee <svpwm+0x16a>
20001238:	eb02 10a3 	add.w	r0, r2, r3, asr #6
2000123c:	4439      	add	r1, r7
2000123e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20001242:	2b00      	cmp	r3, #0
20001244:	f000 8114 	beq.w	20001470 <svpwm+0x2ec>
20001248:	9a07      	ldr	r2, [sp, #28]
2000124a:	bfc7      	ittee	gt
2000124c:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20001250:	1889      	addgt	r1, r1, r2
20001252:	1a89      	suble	r1, r1, r2
20001254:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20001258:	2207      	movs	r2, #7
2000125a:	ab10      	add	r3, sp, #64	; 0x40
2000125c:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20001260:	f852 3c20 	ldr.w	r3, [r2, #-32]
20001264:	2e00      	cmp	r6, #0
20001266:	bfb8      	it	lt
20001268:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
2000126c:	fb03 f300 	mul.w	r3, r3, r0
20001270:	2900      	cmp	r1, #0
20001272:	bfb8      	it	lt
20001274:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20001278:	4a7f      	ldr	r2, [pc, #508]	; (20001478 <svpwm+0x2f4>)
2000127a:	440d      	add	r5, r1
2000127c:	151b      	asrs	r3, r3, #20
2000127e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001282:	6013      	str	r3, [r2, #0]
20001284:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20001288:	1252      	asrs	r2, r2, #9
2000128a:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
2000128e:	f102 32ff 	add.w	r2, r2, #4294967295
20001292:	bfc6      	itte	gt
20001294:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20001298:	2001      	movgt	r0, #1
2000129a:	2000      	movle	r0, #0
2000129c:	2a04      	cmp	r2, #4
2000129e:	d848      	bhi.n	20001332 <svpwm+0x1ae>
200012a0:	e8df f002 	tbb	[pc, r2]
200012a4:	2b9e8164 	.word	0x2b9e8164
200012a8:	bb          	.byte	0xbb
200012a9:	00          	.byte	0x00
200012aa:	1ad0      	subs	r0, r2, r3
200012ac:	4249      	negs	r1, r1
200012ae:	4413      	add	r3, r2
200012b0:	e78b      	b.n	200011ca <svpwm+0x46>
200012b2:	eba0 0263 	sub.w	r2, r0, r3, asr #1
200012b6:	1bc9      	subs	r1, r1, r7
200012b8:	eb03 0360 	add.w	r3, r3, r0, asr #1
200012bc:	e78f      	b.n	200011de <svpwm+0x5a>
200012be:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
200012c2:	1bc9      	subs	r1, r1, r7
200012c4:	eb03 03a2 	add.w	r3, r3, r2, asr #2
200012c8:	e793      	b.n	200011f2 <svpwm+0x6e>
200012ca:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
200012ce:	1bc9      	subs	r1, r1, r7
200012d0:	eb03 03e0 	add.w	r3, r3, r0, asr #3
200012d4:	e797      	b.n	20001206 <svpwm+0x82>
200012d6:	eba2 1023 	sub.w	r0, r2, r3, asr #4
200012da:	1bc9      	subs	r1, r1, r7
200012dc:	eb03 1322 	add.w	r3, r3, r2, asr #4
200012e0:	e79b      	b.n	2000121a <svpwm+0x96>
200012e2:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200012e6:	1bc9      	subs	r1, r1, r7
200012e8:	eb03 1360 	add.w	r3, r3, r0, asr #5
200012ec:	e79f      	b.n	2000122e <svpwm+0xaa>
200012ee:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
200012f2:	1bc9      	subs	r1, r1, r7
200012f4:	eb03 13a2 	add.w	r3, r3, r2, asr #6
200012f8:	e7a3      	b.n	20001242 <svpwm+0xbe>
200012fa:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
200012fe:	4e5f      	ldr	r6, [pc, #380]	; (2000147c <svpwm+0x2f8>)
20001300:	3204      	adds	r2, #4
20001302:	f3c2 0209 	ubfx	r2, r2, #0, #10
20001306:	3556      	adds	r5, #86	; 0x56
20001308:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
2000130c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001310:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20001314:	fb01 f103 	mul.w	r1, r1, r3
20001318:	fb02 f203 	mul.w	r2, r2, r3
2000131c:	1289      	asrs	r1, r1, #10
2000131e:	1293      	asrs	r3, r2, #10
20001320:	424a      	negs	r2, r1
20001322:	1ad2      	subs	r2, r2, r3
20001324:	1a5d      	subs	r5, r3, r1
20001326:	440b      	add	r3, r1
20001328:	6062      	str	r2, [r4, #4]
2000132a:	6025      	str	r5, [r4, #0]
2000132c:	60a3      	str	r3, [r4, #8]
2000132e:	b011      	add	sp, #68	; 0x44
20001330:	bdf0      	pop	{r4, r5, r6, r7, pc}
20001332:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20001336:	4e51      	ldr	r6, [pc, #324]	; (2000147c <svpwm+0x2f8>)
20001338:	3202      	adds	r2, #2
2000133a:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000133e:	f505 7540 	add.w	r5, r5, #768	; 0x300
20001342:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20001346:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000134a:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
2000134e:	fb01 f103 	mul.w	r1, r1, r3
20001352:	fb02 f203 	mul.w	r2, r2, r3
20001356:	1289      	asrs	r1, r1, #10
20001358:	1293      	asrs	r3, r2, #10
2000135a:	424a      	negs	r2, r1
2000135c:	1ad2      	subs	r2, r2, r3
2000135e:	18cd      	adds	r5, r1, r3
20001360:	1a5b      	subs	r3, r3, r1
20001362:	60a2      	str	r2, [r4, #8]
20001364:	6025      	str	r5, [r4, #0]
20001366:	6063      	str	r3, [r4, #4]
20001368:	b011      	add	sp, #68	; 0x44
2000136a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000136c:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20001370:	4e42      	ldr	r6, [pc, #264]	; (2000147c <svpwm+0x2f8>)
20001372:	3204      	adds	r2, #4
20001374:	f3c2 0209 	ubfx	r2, r2, #0, #10
20001378:	f205 2556 	addw	r5, r5, #598	; 0x256
2000137c:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20001380:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001384:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20001388:	fb01 f103 	mul.w	r1, r1, r3
2000138c:	fb02 f203 	mul.w	r2, r2, r3
20001390:	1289      	asrs	r1, r1, #10
20001392:	1293      	asrs	r3, r2, #10
20001394:	424a      	negs	r2, r1
20001396:	1ad2      	subs	r2, r2, r3
20001398:	1acd      	subs	r5, r1, r3
2000139a:	440b      	add	r3, r1
2000139c:	60a2      	str	r2, [r4, #8]
2000139e:	6025      	str	r5, [r4, #0]
200013a0:	6063      	str	r3, [r4, #4]
200013a2:	b011      	add	sp, #68	; 0x44
200013a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
200013a6:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
200013aa:	4e34      	ldr	r6, [pc, #208]	; (2000147c <svpwm+0x2f8>)
200013ac:	320f      	adds	r2, #15
200013ae:	f3c2 0209 	ubfx	r2, r2, #0, #10
200013b2:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
200013b6:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
200013ba:	f3c5 0509 	ubfx	r5, r5, #0, #10
200013be:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
200013c2:	fb01 f103 	mul.w	r1, r1, r3
200013c6:	fb02 f203 	mul.w	r2, r2, r3
200013ca:	1289      	asrs	r1, r1, #10
200013cc:	1293      	asrs	r3, r2, #10
200013ce:	424a      	negs	r2, r1
200013d0:	1ad2      	subs	r2, r2, r3
200013d2:	18cd      	adds	r5, r1, r3
200013d4:	1a5b      	subs	r3, r3, r1
200013d6:	e884 0024 	stmia.w	r4, {r2, r5}
200013da:	60a3      	str	r3, [r4, #8]
200013dc:	b011      	add	sp, #68	; 0x44
200013de:	bdf0      	pop	{r4, r5, r6, r7, pc}
200013e0:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
200013e4:	4e25      	ldr	r6, [pc, #148]	; (2000147c <svpwm+0x2f8>)
200013e6:	320a      	adds	r2, #10
200013e8:	f3c2 0209 	ubfx	r2, r2, #0, #10
200013ec:	f505 7580 	add.w	r5, r5, #256	; 0x100
200013f0:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
200013f4:	f3c5 0509 	ubfx	r5, r5, #0, #10
200013f8:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
200013fc:	fb01 f103 	mul.w	r1, r1, r3
20001400:	fb02 f203 	mul.w	r2, r2, r3
20001404:	1289      	asrs	r1, r1, #10
20001406:	1293      	asrs	r3, r2, #10
20001408:	424a      	negs	r2, r1
2000140a:	1ad2      	subs	r2, r2, r3
2000140c:	1acd      	subs	r5, r1, r3
2000140e:	440b      	add	r3, r1
20001410:	e884 0024 	stmia.w	r4, {r2, r5}
20001414:	60a3      	str	r3, [r4, #8]
20001416:	b011      	add	sp, #68	; 0x44
20001418:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000141a:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
2000141e:	4917      	ldr	r1, [pc, #92]	; (2000147c <svpwm+0x2f8>)
20001420:	320f      	adds	r2, #15
20001422:	f3c2 0209 	ubfx	r2, r2, #0, #10
20001426:	3d55      	subs	r5, #85	; 0x55
20001428:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
2000142c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001430:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20001434:	fb02 f203 	mul.w	r2, r2, r3
20001438:	fb01 f303 	mul.w	r3, r1, r3
2000143c:	1292      	asrs	r2, r2, #10
2000143e:	129b      	asrs	r3, r3, #10
20001440:	4251      	negs	r1, r2
20001442:	18d5      	adds	r5, r2, r3
20001444:	1ac9      	subs	r1, r1, r3
20001446:	1ad2      	subs	r2, r2, r3
20001448:	6061      	str	r1, [r4, #4]
2000144a:	6025      	str	r5, [r4, #0]
2000144c:	60a2      	str	r2, [r4, #8]
2000144e:	b011      	add	sp, #68	; 0x44
20001450:	bdf0      	pop	{r4, r5, r6, r7, pc}
20001452:	461a      	mov	r2, r3
20001454:	e701      	b.n	2000125a <svpwm+0xd6>
20001456:	4610      	mov	r0, r2
20001458:	2201      	movs	r2, #1
2000145a:	e6fe      	b.n	2000125a <svpwm+0xd6>
2000145c:	2202      	movs	r2, #2
2000145e:	e6fc      	b.n	2000125a <svpwm+0xd6>
20001460:	4610      	mov	r0, r2
20001462:	2203      	movs	r2, #3
20001464:	e6f9      	b.n	2000125a <svpwm+0xd6>
20001466:	2204      	movs	r2, #4
20001468:	e6f7      	b.n	2000125a <svpwm+0xd6>
2000146a:	4610      	mov	r0, r2
2000146c:	2205      	movs	r2, #5
2000146e:	e6f4      	b.n	2000125a <svpwm+0xd6>
20001470:	2206      	movs	r2, #6
20001472:	e6f2      	b.n	2000125a <svpwm+0xd6>
20001474:	20001dac 	.word	0x20001dac
20001478:	20002ea4 	.word	0x20002ea4
2000147c:	20001dec 	.word	0x20001dec

20001480 <encoder_init>:
20001480:	4b01      	ldr	r3, [pc, #4]	; (20001488 <encoder_init+0x8>)
20001482:	6058      	str	r0, [r3, #4]
20001484:	6098      	str	r0, [r3, #8]
20001486:	4770      	bx	lr
20001488:	20002ea4 	.word	0x20002ea4

2000148c <get_speed>:
2000148c:	4a0e      	ldr	r2, [pc, #56]	; (200014c8 <get_speed+0x3c>)
2000148e:	b430      	push	{r4, r5}
20001490:	6893      	ldr	r3, [r2, #8]
20001492:	6855      	ldr	r5, [r2, #4]
20001494:	1ac3      	subs	r3, r0, r3
20001496:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
2000149a:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
2000149e:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
200014a2:	6095      	str	r5, [r2, #8]
200014a4:	6050      	str	r0, [r2, #4]
200014a6:	dd05      	ble.n	200014b4 <get_speed+0x28>
200014a8:	2b00      	cmp	r3, #0
200014aa:	bfb4      	ite	lt
200014ac:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
200014b0:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
200014b4:	4a05      	ldr	r2, [pc, #20]	; (200014cc <get_speed+0x40>)
200014b6:	1058      	asrs	r0, r3, #1
200014b8:	fb02 f000 	mul.w	r0, r2, r0
200014bc:	bc30      	pop	{r4, r5}
200014be:	680a      	ldr	r2, [r1, #0]
200014c0:	1300      	asrs	r0, r0, #12
200014c2:	4413      	add	r3, r2
200014c4:	600b      	str	r3, [r1, #0]
200014c6:	4770      	bx	lr
200014c8:	20002ea4 	.word	0x20002ea4
200014cc:	0002ae7c 	.word	0x0002ae7c

200014d0 <rfilter1>:
200014d0:	b470      	push	{r4, r5, r6}
200014d2:	f240 74c6 	movw	r4, #1990	; 0x7c6
200014d6:	4b0e      	ldr	r3, [pc, #56]	; (20001510 <rfilter1+0x40>)
200014d8:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
200014dc:	68de      	ldr	r6, [r3, #12]
200014de:	6959      	ldr	r1, [r3, #20]
200014e0:	fb04 f406 	mul.w	r4, r4, r6
200014e4:	fb02 4201 	mla	r2, r2, r1, r4
200014e8:	490a      	ldr	r1, [pc, #40]	; (20001514 <rfilter1+0x44>)
200014ea:	691d      	ldr	r5, [r3, #16]
200014ec:	fb01 2200 	mla	r2, r1, r0, r2
200014f0:	4c09      	ldr	r4, [pc, #36]	; (20001518 <rfilter1+0x48>)
200014f2:	6999      	ldr	r1, [r3, #24]
200014f4:	fb04 2205 	mla	r2, r4, r5, r2
200014f8:	4c08      	ldr	r4, [pc, #32]	; (2000151c <rfilter1+0x4c>)
200014fa:	615e      	str	r6, [r3, #20]
200014fc:	fb04 2201 	mla	r2, r4, r1, r2
20001500:	1291      	asrs	r1, r2, #10
20001502:	6118      	str	r0, [r3, #16]
20001504:	619d      	str	r5, [r3, #24]
20001506:	1490      	asrs	r0, r2, #18
20001508:	60d9      	str	r1, [r3, #12]
2000150a:	bc70      	pop	{r4, r5, r6}
2000150c:	4770      	bx	lr
2000150e:	bf00      	nop
20001510:	20002ea4 	.word	0x20002ea4
20001514:	0003f0a4 	.word	0x0003f0a4
20001518:	fff83a2e 	.word	0xfff83a2e
2000151c:	0003dc29 	.word	0x0003dc29

20001520 <rfilter2>:
20001520:	b470      	push	{r4, r5, r6}
20001522:	f240 748a 	movw	r4, #1930	; 0x78a
20001526:	4b0d      	ldr	r3, [pc, #52]	; (2000155c <rfilter2+0x3c>)
20001528:	4a0d      	ldr	r2, [pc, #52]	; (20001560 <rfilter2+0x40>)
2000152a:	69de      	ldr	r6, [r3, #28]
2000152c:	6a59      	ldr	r1, [r3, #36]	; 0x24
2000152e:	fb04 f406 	mul.w	r4, r4, r6
20001532:	fb02 4201 	mla	r2, r2, r1, r4
20001536:	490b      	ldr	r1, [pc, #44]	; (20001564 <rfilter2+0x44>)
20001538:	6a1d      	ldr	r5, [r3, #32]
2000153a:	fb01 2200 	mla	r2, r1, r0, r2
2000153e:	4c0a      	ldr	r4, [pc, #40]	; (20001568 <rfilter2+0x48>)
20001540:	6a99      	ldr	r1, [r3, #40]	; 0x28
20001542:	fb04 2205 	mla	r2, r4, r5, r2
20001546:	4c09      	ldr	r4, [pc, #36]	; (2000156c <rfilter2+0x4c>)
20001548:	625e      	str	r6, [r3, #36]	; 0x24
2000154a:	fb04 2201 	mla	r2, r4, r1, r2
2000154e:	1291      	asrs	r1, r2, #10
20001550:	6218      	str	r0, [r3, #32]
20001552:	629d      	str	r5, [r3, #40]	; 0x28
20001554:	1490      	asrs	r0, r2, #18
20001556:	61d9      	str	r1, [r3, #28]
20001558:	bc70      	pop	{r4, r5, r6}
2000155a:	4770      	bx	lr
2000155c:	20002ea4 	.word	0x20002ea4
20001560:	fffffc66 	.word	0xfffffc66
20001564:	0003e3d7 	.word	0x0003e3d7
20001568:	fff8767b 	.word	0xfff8767b
2000156c:	0003b5c3 	.word	0x0003b5c3

20001570 <adc_init>:
20001570:	b480      	push	{r7}
20001572:	af00      	add	r7, sp, #0
20001574:	4a10      	ldr	r2, [pc, #64]	; (200015b8 <adc_init+0x48>)
20001576:	4b10      	ldr	r3, [pc, #64]	; (200015b8 <adc_init+0x48>)
20001578:	69db      	ldr	r3, [r3, #28]
2000157a:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
2000157e:	61d3      	str	r3, [r2, #28]
20001580:	4b0d      	ldr	r3, [pc, #52]	; (200015b8 <adc_init+0x48>)
20001582:	f242 0220 	movw	r2, #8224	; 0x2020
20001586:	615a      	str	r2, [r3, #20]
20001588:	4b0c      	ldr	r3, [pc, #48]	; (200015bc <adc_init+0x4c>)
2000158a:	2200      	movs	r2, #0
2000158c:	601a      	str	r2, [r3, #0]
2000158e:	4a0b      	ldr	r2, [pc, #44]	; (200015bc <adc_init+0x4c>)
20001590:	4b0a      	ldr	r3, [pc, #40]	; (200015bc <adc_init+0x4c>)
20001592:	681b      	ldr	r3, [r3, #0]
20001594:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20001598:	f043 0301 	orr.w	r3, r3, #1
2000159c:	6013      	str	r3, [r2, #0]
2000159e:	4a07      	ldr	r2, [pc, #28]	; (200015bc <adc_init+0x4c>)
200015a0:	4b06      	ldr	r3, [pc, #24]	; (200015bc <adc_init+0x4c>)
200015a2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200015a4:	f443 73f0 	orr.w	r3, r3, #480	; 0x1e0
200015a8:	6293      	str	r3, [r2, #40]	; 0x28
200015aa:	4b04      	ldr	r3, [pc, #16]	; (200015bc <adc_init+0x4c>)
200015ac:	2210      	movs	r2, #16
200015ae:	621a      	str	r2, [r3, #32]
200015b0:	bf00      	nop
200015b2:	46bd      	mov	sp, r7
200015b4:	bc80      	pop	{r7}
200015b6:	4770      	bx	lr
200015b8:	40020000 	.word	0x40020000
200015bc:	40088000 	.word	0x40088000

200015c0 <dma_init>:
200015c0:	b480      	push	{r7}
200015c2:	af00      	add	r7, sp, #0
200015c4:	4a17      	ldr	r2, [pc, #92]	; (20001624 <dma_init+0x64>)
200015c6:	4b17      	ldr	r3, [pc, #92]	; (20001624 <dma_init+0x64>)
200015c8:	69db      	ldr	r3, [r3, #28]
200015ca:	f043 0320 	orr.w	r3, r3, #32
200015ce:	61d3      	str	r3, [r2, #28]
200015d0:	4b15      	ldr	r3, [pc, #84]	; (20001628 <dma_init+0x68>)
200015d2:	4a16      	ldr	r2, [pc, #88]	; (2000162c <dma_init+0x6c>)
200015d4:	609a      	str	r2, [r3, #8]
200015d6:	4b14      	ldr	r3, [pc, #80]	; (20001628 <dma_init+0x68>)
200015d8:	f04f 32ff 	mov.w	r2, #4294967295
200015dc:	62da      	str	r2, [r3, #44]	; 0x2c
200015de:	4b12      	ldr	r3, [pc, #72]	; (20001628 <dma_init+0x68>)
200015e0:	f04f 32ff 	mov.w	r2, #4294967295
200015e4:	621a      	str	r2, [r3, #32]
200015e6:	4b10      	ldr	r3, [pc, #64]	; (20001628 <dma_init+0x68>)
200015e8:	f04f 32ff 	mov.w	r2, #4294967295
200015ec:	635a      	str	r2, [r3, #52]	; 0x34
200015ee:	4b0e      	ldr	r3, [pc, #56]	; (20001628 <dma_init+0x68>)
200015f0:	f44f 7280 	mov.w	r2, #256	; 0x100
200015f4:	61da      	str	r2, [r3, #28]
200015f6:	4b0c      	ldr	r3, [pc, #48]	; (20001628 <dma_init+0x68>)
200015f8:	f44f 7280 	mov.w	r2, #256	; 0x100
200015fc:	625a      	str	r2, [r3, #36]	; 0x24
200015fe:	4b0a      	ldr	r3, [pc, #40]	; (20001628 <dma_init+0x68>)
20001600:	2201      	movs	r2, #1
20001602:	605a      	str	r2, [r3, #4]
20001604:	4b09      	ldr	r3, [pc, #36]	; (2000162c <dma_init+0x6c>)
20001606:	4a0a      	ldr	r2, [pc, #40]	; (20001630 <dma_init+0x70>)
20001608:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
2000160c:	4a09      	ldr	r2, [pc, #36]	; (20001634 <dma_init+0x74>)
2000160e:	4b07      	ldr	r3, [pc, #28]	; (2000162c <dma_init+0x6c>)
20001610:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001614:	4b05      	ldr	r3, [pc, #20]	; (2000162c <dma_init+0x6c>)
20001616:	4a08      	ldr	r2, [pc, #32]	; (20001638 <dma_init+0x78>)
20001618:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
2000161c:	bf00      	nop
2000161e:	46bd      	mov	sp, r7
20001620:	bc80      	pop	{r7}
20001622:	4770      	bx	lr
20001624:	40020000 	.word	0x40020000
20001628:	40028000 	.word	0x40028000
2000162c:	20003400 	.word	0x20003400
20001630:	40088018 	.word	0x40088018
20001634:	2000360c 	.word	0x2000360c
20001638:	ae000031 	.word	0xae000031

2000163c <adc_dma_init>:
2000163c:	b580      	push	{r7, lr}
2000163e:	af00      	add	r7, sp, #0
20001640:	f7ff ff96 	bl	20001570 <adc_init>
20001644:	f7ff ffbc 	bl	200015c0 <dma_init>
20001648:	bf00      	nop
2000164a:	bd80      	pop	{r7, pc}

2000164c <adc_dma_start>:
2000164c:	b480      	push	{r7}
2000164e:	af00      	add	r7, sp, #0
20001650:	4b07      	ldr	r3, [pc, #28]	; (20001670 <adc_dma_start+0x24>)
20001652:	2200      	movs	r2, #0
20001654:	601a      	str	r2, [r3, #0]
20001656:	4b06      	ldr	r3, [pc, #24]	; (20001670 <adc_dma_start+0x24>)
20001658:	f240 220d 	movw	r2, #525	; 0x20d
2000165c:	601a      	str	r2, [r3, #0]
2000165e:	4b05      	ldr	r3, [pc, #20]	; (20001674 <adc_dma_start+0x28>)
20001660:	f44f 7280 	mov.w	r2, #256	; 0x100
20001664:	629a      	str	r2, [r3, #40]	; 0x28
20001666:	bf00      	nop
20001668:	46bd      	mov	sp, r7
2000166a:	bc80      	pop	{r7}
2000166c:	4770      	bx	lr
2000166e:	bf00      	nop
20001670:	40088000 	.word	0x40088000
20001674:	40028000 	.word	0x40028000

20001678 <adc_dma_wait>:
20001678:	b480      	push	{r7}
2000167a:	af00      	add	r7, sp, #0
2000167c:	bf00      	nop
2000167e:	4b0a      	ldr	r3, [pc, #40]	; (200016a8 <adc_dma_wait+0x30>)
20001680:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20001684:	f003 0307 	and.w	r3, r3, #7
20001688:	2b00      	cmp	r3, #0
2000168a:	d1f8      	bne.n	2000167e <adc_dma_wait+0x6>
2000168c:	4a07      	ldr	r2, [pc, #28]	; (200016ac <adc_dma_wait+0x34>)
2000168e:	4b07      	ldr	r3, [pc, #28]	; (200016ac <adc_dma_wait+0x34>)
20001690:	681b      	ldr	r3, [r3, #0]
20001692:	f023 0308 	bic.w	r3, r3, #8
20001696:	6013      	str	r3, [r2, #0]
20001698:	4b03      	ldr	r3, [pc, #12]	; (200016a8 <adc_dma_wait+0x30>)
2000169a:	4a05      	ldr	r2, [pc, #20]	; (200016b0 <adc_dma_wait+0x38>)
2000169c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
200016a0:	bf00      	nop
200016a2:	46bd      	mov	sp, r7
200016a4:	bc80      	pop	{r7}
200016a6:	4770      	bx	lr
200016a8:	20003400 	.word	0x20003400
200016ac:	40088000 	.word	0x40088000
200016b0:	ae000031 	.word	0xae000031

200016b4 <NVIC_EnableIRQ>:
200016b4:	b480      	push	{r7}
200016b6:	b083      	sub	sp, #12
200016b8:	af00      	add	r7, sp, #0
200016ba:	4603      	mov	r3, r0
200016bc:	71fb      	strb	r3, [r7, #7]
200016be:	4908      	ldr	r1, [pc, #32]	; (200016e0 <NVIC_EnableIRQ+0x2c>)
200016c0:	f997 3007 	ldrsb.w	r3, [r7, #7]
200016c4:	095b      	lsrs	r3, r3, #5
200016c6:	79fa      	ldrb	r2, [r7, #7]
200016c8:	f002 021f 	and.w	r2, r2, #31
200016cc:	2001      	movs	r0, #1
200016ce:	fa00 f202 	lsl.w	r2, r0, r2
200016d2:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
200016d6:	bf00      	nop
200016d8:	370c      	adds	r7, #12
200016da:	46bd      	mov	sp, r7
200016dc:	bc80      	pop	{r7}
200016de:	4770      	bx	lr
200016e0:	e000e100 	.word	0xe000e100

200016e4 <PortConfig>:
200016e4:	b480      	push	{r7}
200016e6:	af00      	add	r7, sp, #0
200016e8:	4a66      	ldr	r2, [pc, #408]	; (20001884 <PortConfig+0x1a0>)
200016ea:	4b66      	ldr	r3, [pc, #408]	; (20001884 <PortConfig+0x1a0>)
200016ec:	69db      	ldr	r3, [r3, #28]
200016ee:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
200016f2:	61d3      	str	r3, [r2, #28]
200016f4:	4b64      	ldr	r3, [pc, #400]	; (20001888 <PortConfig+0x1a4>)
200016f6:	2200      	movs	r2, #0
200016f8:	609a      	str	r2, [r3, #8]
200016fa:	4b63      	ldr	r3, [pc, #396]	; (20001888 <PortConfig+0x1a4>)
200016fc:	2200      	movs	r2, #0
200016fe:	601a      	str	r2, [r3, #0]
20001700:	4a61      	ldr	r2, [pc, #388]	; (20001888 <PortConfig+0x1a4>)
20001702:	4b61      	ldr	r3, [pc, #388]	; (20001888 <PortConfig+0x1a4>)
20001704:	685b      	ldr	r3, [r3, #4]
20001706:	f043 0301 	orr.w	r3, r3, #1
2000170a:	6053      	str	r3, [r2, #4]
2000170c:	4a5e      	ldr	r2, [pc, #376]	; (20001888 <PortConfig+0x1a4>)
2000170e:	4b5e      	ldr	r3, [pc, #376]	; (20001888 <PortConfig+0x1a4>)
20001710:	68db      	ldr	r3, [r3, #12]
20001712:	f043 0301 	orr.w	r3, r3, #1
20001716:	60d3      	str	r3, [r2, #12]
20001718:	4a5b      	ldr	r2, [pc, #364]	; (20001888 <PortConfig+0x1a4>)
2000171a:	4b5b      	ldr	r3, [pc, #364]	; (20001888 <PortConfig+0x1a4>)
2000171c:	699b      	ldr	r3, [r3, #24]
2000171e:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
20001722:	6193      	str	r3, [r2, #24]
20001724:	4a58      	ldr	r2, [pc, #352]	; (20001888 <PortConfig+0x1a4>)
20001726:	4b58      	ldr	r3, [pc, #352]	; (20001888 <PortConfig+0x1a4>)
20001728:	685b      	ldr	r3, [r3, #4]
2000172a:	f023 0308 	bic.w	r3, r3, #8
2000172e:	6053      	str	r3, [r2, #4]
20001730:	4a55      	ldr	r2, [pc, #340]	; (20001888 <PortConfig+0x1a4>)
20001732:	4b55      	ldr	r3, [pc, #340]	; (20001888 <PortConfig+0x1a4>)
20001734:	68db      	ldr	r3, [r3, #12]
20001736:	f043 0308 	orr.w	r3, r3, #8
2000173a:	60d3      	str	r3, [r2, #12]
2000173c:	4b52      	ldr	r3, [pc, #328]	; (20001888 <PortConfig+0x1a4>)
2000173e:	2280      	movs	r2, #128	; 0x80
20001740:	609a      	str	r2, [r3, #8]
20001742:	4a50      	ldr	r2, [pc, #320]	; (20001884 <PortConfig+0x1a0>)
20001744:	4b4f      	ldr	r3, [pc, #316]	; (20001884 <PortConfig+0x1a0>)
20001746:	69db      	ldr	r3, [r3, #28]
20001748:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
2000174c:	61d3      	str	r3, [r2, #28]
2000174e:	4a4f      	ldr	r2, [pc, #316]	; (2000188c <PortConfig+0x1a8>)
20001750:	4b4e      	ldr	r3, [pc, #312]	; (2000188c <PortConfig+0x1a8>)
20001752:	689b      	ldr	r3, [r3, #8]
20001754:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20001758:	6093      	str	r3, [r2, #8]
2000175a:	4a4c      	ldr	r2, [pc, #304]	; (2000188c <PortConfig+0x1a8>)
2000175c:	4b4b      	ldr	r3, [pc, #300]	; (2000188c <PortConfig+0x1a8>)
2000175e:	689b      	ldr	r3, [r3, #8]
20001760:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
20001764:	6093      	str	r3, [r2, #8]
20001766:	4a49      	ldr	r2, [pc, #292]	; (2000188c <PortConfig+0x1a8>)
20001768:	4b48      	ldr	r3, [pc, #288]	; (2000188c <PortConfig+0x1a8>)
2000176a:	68db      	ldr	r3, [r3, #12]
2000176c:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
20001770:	60d3      	str	r3, [r2, #12]
20001772:	4a46      	ldr	r2, [pc, #280]	; (2000188c <PortConfig+0x1a8>)
20001774:	4b45      	ldr	r3, [pc, #276]	; (2000188c <PortConfig+0x1a8>)
20001776:	699b      	ldr	r3, [r3, #24]
20001778:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
2000177c:	6193      	str	r3, [r2, #24]
2000177e:	4a43      	ldr	r2, [pc, #268]	; (2000188c <PortConfig+0x1a8>)
20001780:	4b42      	ldr	r3, [pc, #264]	; (2000188c <PortConfig+0x1a8>)
20001782:	685b      	ldr	r3, [r3, #4]
20001784:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20001788:	6053      	str	r3, [r2, #4]
2000178a:	4a40      	ldr	r2, [pc, #256]	; (2000188c <PortConfig+0x1a8>)
2000178c:	4b3f      	ldr	r3, [pc, #252]	; (2000188c <PortConfig+0x1a8>)
2000178e:	685b      	ldr	r3, [r3, #4]
20001790:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20001794:	6053      	str	r3, [r2, #4]
20001796:	4a3d      	ldr	r2, [pc, #244]	; (2000188c <PortConfig+0x1a8>)
20001798:	4b3c      	ldr	r3, [pc, #240]	; (2000188c <PortConfig+0x1a8>)
2000179a:	689b      	ldr	r3, [r3, #8]
2000179c:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
200017a0:	6093      	str	r3, [r2, #8]
200017a2:	4a3a      	ldr	r2, [pc, #232]	; (2000188c <PortConfig+0x1a8>)
200017a4:	4b39      	ldr	r3, [pc, #228]	; (2000188c <PortConfig+0x1a8>)
200017a6:	689b      	ldr	r3, [r3, #8]
200017a8:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
200017ac:	6093      	str	r3, [r2, #8]
200017ae:	4a37      	ldr	r2, [pc, #220]	; (2000188c <PortConfig+0x1a8>)
200017b0:	4b36      	ldr	r3, [pc, #216]	; (2000188c <PortConfig+0x1a8>)
200017b2:	68db      	ldr	r3, [r3, #12]
200017b4:	f043 0360 	orr.w	r3, r3, #96	; 0x60
200017b8:	60d3      	str	r3, [r2, #12]
200017ba:	4a34      	ldr	r2, [pc, #208]	; (2000188c <PortConfig+0x1a8>)
200017bc:	4b33      	ldr	r3, [pc, #204]	; (2000188c <PortConfig+0x1a8>)
200017be:	68db      	ldr	r3, [r3, #12]
200017c0:	f043 031f 	orr.w	r3, r3, #31
200017c4:	60d3      	str	r3, [r2, #12]
200017c6:	4a2f      	ldr	r2, [pc, #188]	; (20001884 <PortConfig+0x1a0>)
200017c8:	4b2e      	ldr	r3, [pc, #184]	; (20001884 <PortConfig+0x1a0>)
200017ca:	69db      	ldr	r3, [r3, #28]
200017cc:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
200017d0:	61d3      	str	r3, [r2, #28]
200017d2:	4b2f      	ldr	r3, [pc, #188]	; (20001890 <PortConfig+0x1ac>)
200017d4:	4a2f      	ldr	r2, [pc, #188]	; (20001894 <PortConfig+0x1b0>)
200017d6:	609a      	str	r2, [r3, #8]
200017d8:	4b2d      	ldr	r3, [pc, #180]	; (20001890 <PortConfig+0x1ac>)
200017da:	f64f 72ff 	movw	r2, #65535	; 0xffff
200017de:	60da      	str	r2, [r3, #12]
200017e0:	4b2b      	ldr	r3, [pc, #172]	; (20001890 <PortConfig+0x1ac>)
200017e2:	f04f 32ff 	mov.w	r2, #4294967295
200017e6:	619a      	str	r2, [r3, #24]
200017e8:	4b29      	ldr	r3, [pc, #164]	; (20001890 <PortConfig+0x1ac>)
200017ea:	f64f 72ff 	movw	r2, #65535	; 0xffff
200017ee:	605a      	str	r2, [r3, #4]
200017f0:	4a27      	ldr	r2, [pc, #156]	; (20001890 <PortConfig+0x1ac>)
200017f2:	4b27      	ldr	r3, [pc, #156]	; (20001890 <PortConfig+0x1ac>)
200017f4:	681b      	ldr	r3, [r3, #0]
200017f6:	f023 0303 	bic.w	r3, r3, #3
200017fa:	6013      	str	r3, [r2, #0]
200017fc:	4a24      	ldr	r2, [pc, #144]	; (20001890 <PortConfig+0x1ac>)
200017fe:	4b24      	ldr	r3, [pc, #144]	; (20001890 <PortConfig+0x1ac>)
20001800:	681b      	ldr	r3, [r3, #0]
20001802:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001806:	6013      	str	r3, [r2, #0]
20001808:	4a1e      	ldr	r2, [pc, #120]	; (20001884 <PortConfig+0x1a0>)
2000180a:	4b1e      	ldr	r3, [pc, #120]	; (20001884 <PortConfig+0x1a0>)
2000180c:	69db      	ldr	r3, [r3, #28]
2000180e:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
20001812:	61d3      	str	r3, [r2, #28]
20001814:	4b20      	ldr	r3, [pc, #128]	; (20001898 <PortConfig+0x1b4>)
20001816:	2200      	movs	r2, #0
20001818:	609a      	str	r2, [r3, #8]
2000181a:	4a1f      	ldr	r2, [pc, #124]	; (20001898 <PortConfig+0x1b4>)
2000181c:	4b1e      	ldr	r3, [pc, #120]	; (20001898 <PortConfig+0x1b4>)
2000181e:	685b      	ldr	r3, [r3, #4]
20001820:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001824:	6053      	str	r3, [r2, #4]
20001826:	4a1c      	ldr	r2, [pc, #112]	; (20001898 <PortConfig+0x1b4>)
20001828:	4b1b      	ldr	r3, [pc, #108]	; (20001898 <PortConfig+0x1b4>)
2000182a:	68db      	ldr	r3, [r3, #12]
2000182c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001830:	60d3      	str	r3, [r2, #12]
20001832:	4b19      	ldr	r3, [pc, #100]	; (20001898 <PortConfig+0x1b4>)
20001834:	f04f 32ff 	mov.w	r2, #4294967295
20001838:	619a      	str	r2, [r3, #24]
2000183a:	4a17      	ldr	r2, [pc, #92]	; (20001898 <PortConfig+0x1b4>)
2000183c:	4b16      	ldr	r3, [pc, #88]	; (20001898 <PortConfig+0x1b4>)
2000183e:	681b      	ldr	r3, [r3, #0]
20001840:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
20001844:	6013      	str	r3, [r2, #0]
20001846:	4a0f      	ldr	r2, [pc, #60]	; (20001884 <PortConfig+0x1a0>)
20001848:	4b0e      	ldr	r3, [pc, #56]	; (20001884 <PortConfig+0x1a0>)
2000184a:	69db      	ldr	r3, [r3, #28]
2000184c:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
20001850:	61d3      	str	r3, [r2, #28]
20001852:	4a12      	ldr	r2, [pc, #72]	; (2000189c <PortConfig+0x1b8>)
20001854:	4b11      	ldr	r3, [pc, #68]	; (2000189c <PortConfig+0x1b8>)
20001856:	68db      	ldr	r3, [r3, #12]
20001858:	f423 7300 	bic.w	r3, r3, #512	; 0x200
2000185c:	f023 0301 	bic.w	r3, r3, #1
20001860:	60d3      	str	r3, [r2, #12]
20001862:	4a08      	ldr	r2, [pc, #32]	; (20001884 <PortConfig+0x1a0>)
20001864:	4b07      	ldr	r3, [pc, #28]	; (20001884 <PortConfig+0x1a0>)
20001866:	69db      	ldr	r3, [r3, #28]
20001868:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
2000186c:	61d3      	str	r3, [r2, #28]
2000186e:	4a0c      	ldr	r2, [pc, #48]	; (200018a0 <PortConfig+0x1bc>)
20001870:	4b0b      	ldr	r3, [pc, #44]	; (200018a0 <PortConfig+0x1bc>)
20001872:	68db      	ldr	r3, [r3, #12]
20001874:	f423 7378 	bic.w	r3, r3, #992	; 0x3e0
20001878:	60d3      	str	r3, [r2, #12]
2000187a:	bf00      	nop
2000187c:	46bd      	mov	sp, r7
2000187e:	bc80      	pop	{r7}
20001880:	4770      	bx	lr
20001882:	bf00      	nop
20001884:	40020000 	.word	0x40020000
20001888:	400a8000 	.word	0x400a8000
2000188c:	400b0000 	.word	0x400b0000
20001890:	400b8000 	.word	0x400b8000
20001894:	000aaaa0 	.word	0x000aaaa0
20001898:	400e8000 	.word	0x400e8000
2000189c:	400c8000 	.word	0x400c8000
200018a0:	400c0000 	.word	0x400c0000

200018a4 <ClkConfig>:
200018a4:	b480      	push	{r7}
200018a6:	af00      	add	r7, sp, #0
200018a8:	4a16      	ldr	r2, [pc, #88]	; (20001904 <ClkConfig+0x60>)
200018aa:	4b16      	ldr	r3, [pc, #88]	; (20001904 <ClkConfig+0x60>)
200018ac:	689b      	ldr	r3, [r3, #8]
200018ae:	f043 0301 	orr.w	r3, r3, #1
200018b2:	6093      	str	r3, [r2, #8]
200018b4:	bf00      	nop
200018b6:	4b13      	ldr	r3, [pc, #76]	; (20001904 <ClkConfig+0x60>)
200018b8:	681b      	ldr	r3, [r3, #0]
200018ba:	f003 0304 	and.w	r3, r3, #4
200018be:	2b00      	cmp	r3, #0
200018c0:	d0f9      	beq.n	200018b6 <ClkConfig+0x12>
200018c2:	4b10      	ldr	r3, [pc, #64]	; (20001904 <ClkConfig+0x60>)
200018c4:	2206      	movs	r2, #6
200018c6:	60da      	str	r2, [r3, #12]
200018c8:	4b0e      	ldr	r3, [pc, #56]	; (20001904 <ClkConfig+0x60>)
200018ca:	f640 1204 	movw	r2, #2308	; 0x904
200018ce:	605a      	str	r2, [r3, #4]
200018d0:	bf00      	nop
200018d2:	4b0c      	ldr	r3, [pc, #48]	; (20001904 <ClkConfig+0x60>)
200018d4:	681b      	ldr	r3, [r3, #0]
200018d6:	f003 0302 	and.w	r3, r3, #2
200018da:	2b00      	cmp	r3, #0
200018dc:	d0f9      	beq.n	200018d2 <ClkConfig+0x2e>
200018de:	4a09      	ldr	r2, [pc, #36]	; (20001904 <ClkConfig+0x60>)
200018e0:	4b08      	ldr	r3, [pc, #32]	; (20001904 <ClkConfig+0x60>)
200018e2:	68db      	ldr	r3, [r3, #12]
200018e4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200018e8:	60d3      	str	r3, [r2, #12]
200018ea:	4a07      	ldr	r2, [pc, #28]	; (20001908 <ClkConfig+0x64>)
200018ec:	4b06      	ldr	r3, [pc, #24]	; (20001908 <ClkConfig+0x64>)
200018ee:	681b      	ldr	r3, [r3, #0]
200018f0:	f043 0320 	orr.w	r3, r3, #32
200018f4:	6013      	str	r3, [r2, #0]
200018f6:	4b05      	ldr	r3, [pc, #20]	; (2000190c <ClkConfig+0x68>)
200018f8:	2200      	movs	r2, #0
200018fa:	601a      	str	r2, [r3, #0]
200018fc:	bf00      	nop
200018fe:	46bd      	mov	sp, r7
20001900:	bc80      	pop	{r7}
20001902:	4770      	bx	lr
20001904:	40020000 	.word	0x40020000
20001908:	40018000 	.word	0x40018000
2000190c:	20002f00 	.word	0x20002f00

20001910 <TimerConfig>:
20001910:	b580      	push	{r7, lr}
20001912:	af00      	add	r7, sp, #0
20001914:	4a99      	ldr	r2, [pc, #612]	; (20001b7c <TimerConfig+0x26c>)
20001916:	4b99      	ldr	r3, [pc, #612]	; (20001b7c <TimerConfig+0x26c>)
20001918:	69db      	ldr	r3, [r3, #28]
2000191a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
2000191e:	61d3      	str	r3, [r2, #28]
20001920:	4a96      	ldr	r2, [pc, #600]	; (20001b7c <TimerConfig+0x26c>)
20001922:	4b96      	ldr	r3, [pc, #600]	; (20001b7c <TimerConfig+0x26c>)
20001924:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001926:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
2000192a:	6253      	str	r3, [r2, #36]	; 0x24
2000192c:	4a93      	ldr	r2, [pc, #588]	; (20001b7c <TimerConfig+0x26c>)
2000192e:	4b93      	ldr	r3, [pc, #588]	; (20001b7c <TimerConfig+0x26c>)
20001930:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001932:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001936:	6253      	str	r3, [r2, #36]	; 0x24
20001938:	4b91      	ldr	r3, [pc, #580]	; (20001b80 <TimerConfig+0x270>)
2000193a:	2200      	movs	r2, #0
2000193c:	601a      	str	r2, [r3, #0]
2000193e:	4b90      	ldr	r3, [pc, #576]	; (20001b80 <TimerConfig+0x270>)
20001940:	224f      	movs	r2, #79	; 0x4f
20001942:	605a      	str	r2, [r3, #4]
20001944:	4b8e      	ldr	r3, [pc, #568]	; (20001b80 <TimerConfig+0x270>)
20001946:	f240 32e7 	movw	r2, #999	; 0x3e7
2000194a:	609a      	str	r2, [r3, #8]
2000194c:	4a8c      	ldr	r2, [pc, #560]	; (20001b80 <TimerConfig+0x270>)
2000194e:	4b8c      	ldr	r3, [pc, #560]	; (20001b80 <TimerConfig+0x270>)
20001950:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001952:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
20001956:	6253      	str	r3, [r2, #36]	; 0x24
20001958:	4a89      	ldr	r2, [pc, #548]	; (20001b80 <TimerConfig+0x270>)
2000195a:	4b89      	ldr	r3, [pc, #548]	; (20001b80 <TimerConfig+0x270>)
2000195c:	6d9b      	ldr	r3, [r3, #88]	; 0x58
2000195e:	f043 0302 	orr.w	r3, r3, #2
20001962:	6593      	str	r3, [r2, #88]	; 0x58
20001964:	4b86      	ldr	r3, [pc, #536]	; (20001b80 <TimerConfig+0x270>)
20001966:	2201      	movs	r2, #1
20001968:	60da      	str	r2, [r3, #12]
2000196a:	4a84      	ldr	r2, [pc, #528]	; (20001b7c <TimerConfig+0x26c>)
2000196c:	4b83      	ldr	r3, [pc, #524]	; (20001b7c <TimerConfig+0x26c>)
2000196e:	69db      	ldr	r3, [r3, #28]
20001970:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
20001974:	61d3      	str	r3, [r2, #28]
20001976:	4a81      	ldr	r2, [pc, #516]	; (20001b7c <TimerConfig+0x26c>)
20001978:	4b80      	ldr	r3, [pc, #512]	; (20001b7c <TimerConfig+0x26c>)
2000197a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000197c:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
20001980:	6253      	str	r3, [r2, #36]	; 0x24
20001982:	4a7e      	ldr	r2, [pc, #504]	; (20001b7c <TimerConfig+0x26c>)
20001984:	4b7d      	ldr	r3, [pc, #500]	; (20001b7c <TimerConfig+0x26c>)
20001986:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001988:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
2000198c:	6253      	str	r3, [r2, #36]	; 0x24
2000198e:	4b7d      	ldr	r3, [pc, #500]	; (20001b84 <TimerConfig+0x274>)
20001990:	2200      	movs	r2, #0
20001992:	601a      	str	r2, [r3, #0]
20001994:	4b7b      	ldr	r3, [pc, #492]	; (20001b84 <TimerConfig+0x274>)
20001996:	2202      	movs	r2, #2
20001998:	605a      	str	r2, [r3, #4]
2000199a:	4b7a      	ldr	r3, [pc, #488]	; (20001b84 <TimerConfig+0x274>)
2000199c:	f240 32ff 	movw	r2, #1023	; 0x3ff
200019a0:	609a      	str	r2, [r3, #8]
200019a2:	4b78      	ldr	r3, [pc, #480]	; (20001b84 <TimerConfig+0x274>)
200019a4:	f44f 7200 	mov.w	r2, #512	; 0x200
200019a8:	611a      	str	r2, [r3, #16]
200019aa:	4b76      	ldr	r3, [pc, #472]	; (20001b84 <TimerConfig+0x274>)
200019ac:	f44f 7200 	mov.w	r2, #512	; 0x200
200019b0:	615a      	str	r2, [r3, #20]
200019b2:	4b74      	ldr	r3, [pc, #464]	; (20001b84 <TimerConfig+0x274>)
200019b4:	f44f 7200 	mov.w	r2, #512	; 0x200
200019b8:	619a      	str	r2, [r3, #24]
200019ba:	4b72      	ldr	r3, [pc, #456]	; (20001b84 <TimerConfig+0x274>)
200019bc:	22c8      	movs	r2, #200	; 0xc8
200019be:	61da      	str	r2, [r3, #28]
200019c0:	4a70      	ldr	r2, [pc, #448]	; (20001b84 <TimerConfig+0x274>)
200019c2:	4b70      	ldr	r3, [pc, #448]	; (20001b84 <TimerConfig+0x274>)
200019c4:	6a1b      	ldr	r3, [r3, #32]
200019c6:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200019ca:	6213      	str	r3, [r2, #32]
200019cc:	4a6d      	ldr	r2, [pc, #436]	; (20001b84 <TimerConfig+0x274>)
200019ce:	4b6d      	ldr	r3, [pc, #436]	; (20001b84 <TimerConfig+0x274>)
200019d0:	6a1b      	ldr	r3, [r3, #32]
200019d2:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200019d6:	6213      	str	r3, [r2, #32]
200019d8:	4a6a      	ldr	r2, [pc, #424]	; (20001b84 <TimerConfig+0x274>)
200019da:	4b6a      	ldr	r3, [pc, #424]	; (20001b84 <TimerConfig+0x274>)
200019dc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019de:	f023 030f 	bic.w	r3, r3, #15
200019e2:	6313      	str	r3, [r2, #48]	; 0x30
200019e4:	4a67      	ldr	r2, [pc, #412]	; (20001b84 <TimerConfig+0x274>)
200019e6:	4b67      	ldr	r3, [pc, #412]	; (20001b84 <TimerConfig+0x274>)
200019e8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019ea:	f043 030c 	orr.w	r3, r3, #12
200019ee:	6313      	str	r3, [r2, #48]	; 0x30
200019f0:	4a64      	ldr	r2, [pc, #400]	; (20001b84 <TimerConfig+0x274>)
200019f2:	4b64      	ldr	r3, [pc, #400]	; (20001b84 <TimerConfig+0x274>)
200019f4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019f6:	f043 0301 	orr.w	r3, r3, #1
200019fa:	6313      	str	r3, [r2, #48]	; 0x30
200019fc:	4a61      	ldr	r2, [pc, #388]	; (20001b84 <TimerConfig+0x274>)
200019fe:	4b61      	ldr	r3, [pc, #388]	; (20001b84 <TimerConfig+0x274>)
20001a00:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001a02:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001a06:	6313      	str	r3, [r2, #48]	; 0x30
20001a08:	4a5e      	ldr	r2, [pc, #376]	; (20001b84 <TimerConfig+0x274>)
20001a0a:	4b5e      	ldr	r3, [pc, #376]	; (20001b84 <TimerConfig+0x274>)
20001a0c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001a0e:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001a12:	6313      	str	r3, [r2, #48]	; 0x30
20001a14:	4a5b      	ldr	r2, [pc, #364]	; (20001b84 <TimerConfig+0x274>)
20001a16:	4b5b      	ldr	r3, [pc, #364]	; (20001b84 <TimerConfig+0x274>)
20001a18:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001a1a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001a1e:	6313      	str	r3, [r2, #48]	; 0x30
20001a20:	4a58      	ldr	r2, [pc, #352]	; (20001b84 <TimerConfig+0x274>)
20001a22:	4b58      	ldr	r3, [pc, #352]	; (20001b84 <TimerConfig+0x274>)
20001a24:	6e1b      	ldr	r3, [r3, #96]	; 0x60
20001a26:	f043 0308 	orr.w	r3, r3, #8
20001a2a:	6613      	str	r3, [r2, #96]	; 0x60
20001a2c:	4a55      	ldr	r2, [pc, #340]	; (20001b84 <TimerConfig+0x274>)
20001a2e:	4b55      	ldr	r3, [pc, #340]	; (20001b84 <TimerConfig+0x274>)
20001a30:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001a32:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001a36:	6253      	str	r3, [r2, #36]	; 0x24
20001a38:	4a52      	ldr	r2, [pc, #328]	; (20001b84 <TimerConfig+0x274>)
20001a3a:	4b52      	ldr	r3, [pc, #328]	; (20001b84 <TimerConfig+0x274>)
20001a3c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001a3e:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001a42:	6253      	str	r3, [r2, #36]	; 0x24
20001a44:	4a4f      	ldr	r2, [pc, #316]	; (20001b84 <TimerConfig+0x274>)
20001a46:	4b4f      	ldr	r3, [pc, #316]	; (20001b84 <TimerConfig+0x274>)
20001a48:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a4a:	f023 030f 	bic.w	r3, r3, #15
20001a4e:	6353      	str	r3, [r2, #52]	; 0x34
20001a50:	4a4c      	ldr	r2, [pc, #304]	; (20001b84 <TimerConfig+0x274>)
20001a52:	4b4c      	ldr	r3, [pc, #304]	; (20001b84 <TimerConfig+0x274>)
20001a54:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a56:	f043 030c 	orr.w	r3, r3, #12
20001a5a:	6353      	str	r3, [r2, #52]	; 0x34
20001a5c:	4a49      	ldr	r2, [pc, #292]	; (20001b84 <TimerConfig+0x274>)
20001a5e:	4b49      	ldr	r3, [pc, #292]	; (20001b84 <TimerConfig+0x274>)
20001a60:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a62:	f043 0301 	orr.w	r3, r3, #1
20001a66:	6353      	str	r3, [r2, #52]	; 0x34
20001a68:	4a46      	ldr	r2, [pc, #280]	; (20001b84 <TimerConfig+0x274>)
20001a6a:	4b46      	ldr	r3, [pc, #280]	; (20001b84 <TimerConfig+0x274>)
20001a6c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a6e:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001a72:	6353      	str	r3, [r2, #52]	; 0x34
20001a74:	4a43      	ldr	r2, [pc, #268]	; (20001b84 <TimerConfig+0x274>)
20001a76:	4b43      	ldr	r3, [pc, #268]	; (20001b84 <TimerConfig+0x274>)
20001a78:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a7a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001a7e:	6353      	str	r3, [r2, #52]	; 0x34
20001a80:	4a40      	ldr	r2, [pc, #256]	; (20001b84 <TimerConfig+0x274>)
20001a82:	4b40      	ldr	r3, [pc, #256]	; (20001b84 <TimerConfig+0x274>)
20001a84:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a86:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001a8a:	6353      	str	r3, [r2, #52]	; 0x34
20001a8c:	4a3d      	ldr	r2, [pc, #244]	; (20001b84 <TimerConfig+0x274>)
20001a8e:	4b3d      	ldr	r3, [pc, #244]	; (20001b84 <TimerConfig+0x274>)
20001a90:	6e5b      	ldr	r3, [r3, #100]	; 0x64
20001a92:	f043 0308 	orr.w	r3, r3, #8
20001a96:	6653      	str	r3, [r2, #100]	; 0x64
20001a98:	4a3a      	ldr	r2, [pc, #232]	; (20001b84 <TimerConfig+0x274>)
20001a9a:	4b3a      	ldr	r3, [pc, #232]	; (20001b84 <TimerConfig+0x274>)
20001a9c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001a9e:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001aa2:	6293      	str	r3, [r2, #40]	; 0x28
20001aa4:	4a37      	ldr	r2, [pc, #220]	; (20001b84 <TimerConfig+0x274>)
20001aa6:	4b37      	ldr	r3, [pc, #220]	; (20001b84 <TimerConfig+0x274>)
20001aa8:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001aaa:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001aae:	6293      	str	r3, [r2, #40]	; 0x28
20001ab0:	4a34      	ldr	r2, [pc, #208]	; (20001b84 <TimerConfig+0x274>)
20001ab2:	4b34      	ldr	r3, [pc, #208]	; (20001b84 <TimerConfig+0x274>)
20001ab4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001ab6:	f023 030f 	bic.w	r3, r3, #15
20001aba:	6393      	str	r3, [r2, #56]	; 0x38
20001abc:	4a31      	ldr	r2, [pc, #196]	; (20001b84 <TimerConfig+0x274>)
20001abe:	4b31      	ldr	r3, [pc, #196]	; (20001b84 <TimerConfig+0x274>)
20001ac0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001ac2:	f043 030c 	orr.w	r3, r3, #12
20001ac6:	6393      	str	r3, [r2, #56]	; 0x38
20001ac8:	4a2e      	ldr	r2, [pc, #184]	; (20001b84 <TimerConfig+0x274>)
20001aca:	4b2e      	ldr	r3, [pc, #184]	; (20001b84 <TimerConfig+0x274>)
20001acc:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001ace:	f043 0301 	orr.w	r3, r3, #1
20001ad2:	6393      	str	r3, [r2, #56]	; 0x38
20001ad4:	4a2b      	ldr	r2, [pc, #172]	; (20001b84 <TimerConfig+0x274>)
20001ad6:	4b2b      	ldr	r3, [pc, #172]	; (20001b84 <TimerConfig+0x274>)
20001ad8:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001ada:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001ade:	6393      	str	r3, [r2, #56]	; 0x38
20001ae0:	4a28      	ldr	r2, [pc, #160]	; (20001b84 <TimerConfig+0x274>)
20001ae2:	4b28      	ldr	r3, [pc, #160]	; (20001b84 <TimerConfig+0x274>)
20001ae4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001ae6:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001aea:	6393      	str	r3, [r2, #56]	; 0x38
20001aec:	4a25      	ldr	r2, [pc, #148]	; (20001b84 <TimerConfig+0x274>)
20001aee:	4b25      	ldr	r3, [pc, #148]	; (20001b84 <TimerConfig+0x274>)
20001af0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001af2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001af6:	6393      	str	r3, [r2, #56]	; 0x38
20001af8:	4a22      	ldr	r2, [pc, #136]	; (20001b84 <TimerConfig+0x274>)
20001afa:	4b22      	ldr	r3, [pc, #136]	; (20001b84 <TimerConfig+0x274>)
20001afc:	6e9b      	ldr	r3, [r3, #104]	; 0x68
20001afe:	f043 0308 	orr.w	r3, r3, #8
20001b02:	6693      	str	r3, [r2, #104]	; 0x68
20001b04:	4a1f      	ldr	r2, [pc, #124]	; (20001b84 <TimerConfig+0x274>)
20001b06:	4b1f      	ldr	r3, [pc, #124]	; (20001b84 <TimerConfig+0x274>)
20001b08:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001b0a:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001b0e:	62d3      	str	r3, [r2, #44]	; 0x2c
20001b10:	4a1c      	ldr	r2, [pc, #112]	; (20001b84 <TimerConfig+0x274>)
20001b12:	4b1c      	ldr	r3, [pc, #112]	; (20001b84 <TimerConfig+0x274>)
20001b14:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001b16:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001b1a:	62d3      	str	r3, [r2, #44]	; 0x2c
20001b1c:	4a19      	ldr	r2, [pc, #100]	; (20001b84 <TimerConfig+0x274>)
20001b1e:	4b19      	ldr	r3, [pc, #100]	; (20001b84 <TimerConfig+0x274>)
20001b20:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b22:	f023 030f 	bic.w	r3, r3, #15
20001b26:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b28:	4a16      	ldr	r2, [pc, #88]	; (20001b84 <TimerConfig+0x274>)
20001b2a:	4b16      	ldr	r3, [pc, #88]	; (20001b84 <TimerConfig+0x274>)
20001b2c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b2e:	f043 030c 	orr.w	r3, r3, #12
20001b32:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b34:	4a13      	ldr	r2, [pc, #76]	; (20001b84 <TimerConfig+0x274>)
20001b36:	4b13      	ldr	r3, [pc, #76]	; (20001b84 <TimerConfig+0x274>)
20001b38:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b3a:	f043 0301 	orr.w	r3, r3, #1
20001b3e:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b40:	4a10      	ldr	r2, [pc, #64]	; (20001b84 <TimerConfig+0x274>)
20001b42:	4b10      	ldr	r3, [pc, #64]	; (20001b84 <TimerConfig+0x274>)
20001b44:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b46:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001b4a:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b4c:	4a0d      	ldr	r2, [pc, #52]	; (20001b84 <TimerConfig+0x274>)
20001b4e:	4b0d      	ldr	r3, [pc, #52]	; (20001b84 <TimerConfig+0x274>)
20001b50:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b52:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001b56:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b58:	4a0a      	ldr	r2, [pc, #40]	; (20001b84 <TimerConfig+0x274>)
20001b5a:	4b0a      	ldr	r3, [pc, #40]	; (20001b84 <TimerConfig+0x274>)
20001b5c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b5e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001b62:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b64:	4a07      	ldr	r2, [pc, #28]	; (20001b84 <TimerConfig+0x274>)
20001b66:	4b07      	ldr	r3, [pc, #28]	; (20001b84 <TimerConfig+0x274>)
20001b68:	6edb      	ldr	r3, [r3, #108]	; 0x6c
20001b6a:	f043 0308 	orr.w	r3, r3, #8
20001b6e:	66d3      	str	r3, [r2, #108]	; 0x6c
20001b70:	4a04      	ldr	r2, [pc, #16]	; (20001b84 <TimerConfig+0x274>)
20001b72:	4b04      	ldr	r3, [pc, #16]	; (20001b84 <TimerConfig+0x274>)
20001b74:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001b76:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001b7a:	e005      	b.n	20001b88 <TimerConfig+0x278>
20001b7c:	40020000 	.word	0x40020000
20001b80:	40070000 	.word	0x40070000
20001b84:	40080000 	.word	0x40080000
20001b88:	6413      	str	r3, [r2, #64]	; 0x40
20001b8a:	4a10      	ldr	r2, [pc, #64]	; (20001bcc <TimerConfig+0x2bc>)
20001b8c:	4b0f      	ldr	r3, [pc, #60]	; (20001bcc <TimerConfig+0x2bc>)
20001b8e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
20001b90:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001b94:	6453      	str	r3, [r2, #68]	; 0x44
20001b96:	4a0d      	ldr	r2, [pc, #52]	; (20001bcc <TimerConfig+0x2bc>)
20001b98:	4b0c      	ldr	r3, [pc, #48]	; (20001bcc <TimerConfig+0x2bc>)
20001b9a:	6c9b      	ldr	r3, [r3, #72]	; 0x48
20001b9c:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001ba0:	6493      	str	r3, [r2, #72]	; 0x48
20001ba2:	4a0a      	ldr	r2, [pc, #40]	; (20001bcc <TimerConfig+0x2bc>)
20001ba4:	4b09      	ldr	r3, [pc, #36]	; (20001bcc <TimerConfig+0x2bc>)
20001ba6:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
20001ba8:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001bac:	64d3      	str	r3, [r2, #76]	; 0x4c
20001bae:	4a07      	ldr	r2, [pc, #28]	; (20001bcc <TimerConfig+0x2bc>)
20001bb0:	4b06      	ldr	r3, [pc, #24]	; (20001bcc <TimerConfig+0x2bc>)
20001bb2:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001bb4:	f043 0302 	orr.w	r3, r3, #2
20001bb8:	6593      	str	r3, [r2, #88]	; 0x58
20001bba:	2010      	movs	r0, #16
20001bbc:	f7ff fd7a 	bl	200016b4 <NVIC_EnableIRQ>
20001bc0:	4b02      	ldr	r3, [pc, #8]	; (20001bcc <TimerConfig+0x2bc>)
20001bc2:	2201      	movs	r2, #1
20001bc4:	60da      	str	r2, [r3, #12]
20001bc6:	bf00      	nop
20001bc8:	bd80      	pop	{r7, pc}
20001bca:	bf00      	nop
20001bcc:	40080000 	.word	0x40080000

20001bd0 <set_ram_vt>:
20001bd0:	b480      	push	{r7}
20001bd2:	b085      	sub	sp, #20
20001bd4:	af00      	add	r7, sp, #0
20001bd6:	2300      	movs	r3, #0
20001bd8:	60fb      	str	r3, [r7, #12]
20001bda:	2300      	movs	r3, #0
20001bdc:	607b      	str	r3, [r7, #4]
20001bde:	4b16      	ldr	r3, [pc, #88]	; (20001c38 <set_ram_vt+0x68>)
20001be0:	60bb      	str	r3, [r7, #8]
20001be2:	2300      	movs	r3, #0
20001be4:	60fb      	str	r3, [r7, #12]
20001be6:	e00b      	b.n	20001c00 <set_ram_vt+0x30>
20001be8:	68bb      	ldr	r3, [r7, #8]
20001bea:	1d1a      	adds	r2, r3, #4
20001bec:	60ba      	str	r2, [r7, #8]
20001bee:	68fa      	ldr	r2, [r7, #12]
20001bf0:	0092      	lsls	r2, r2, #2
20001bf2:	6879      	ldr	r1, [r7, #4]
20001bf4:	440a      	add	r2, r1
20001bf6:	6812      	ldr	r2, [r2, #0]
20001bf8:	601a      	str	r2, [r3, #0]
20001bfa:	68fb      	ldr	r3, [r7, #12]
20001bfc:	3301      	adds	r3, #1
20001bfe:	60fb      	str	r3, [r7, #12]
20001c00:	68fb      	ldr	r3, [r7, #12]
20001c02:	2b2f      	cmp	r3, #47	; 0x2f
20001c04:	d9f0      	bls.n	20001be8 <set_ram_vt+0x18>
20001c06:	4b0d      	ldr	r3, [pc, #52]	; (20001c3c <set_ram_vt+0x6c>)
20001c08:	4a0b      	ldr	r2, [pc, #44]	; (20001c38 <set_ram_vt+0x68>)
20001c0a:	609a      	str	r2, [r3, #8]
20001c0c:	4b0a      	ldr	r3, [pc, #40]	; (20001c38 <set_ram_vt+0x68>)
20001c0e:	4a0c      	ldr	r2, [pc, #48]	; (20001c40 <set_ram_vt+0x70>)
20001c10:	63da      	str	r2, [r3, #60]	; 0x3c
20001c12:	4b09      	ldr	r3, [pc, #36]	; (20001c38 <set_ram_vt+0x68>)
20001c14:	4a0b      	ldr	r2, [pc, #44]	; (20001c44 <set_ram_vt+0x74>)
20001c16:	659a      	str	r2, [r3, #88]	; 0x58
20001c18:	4b07      	ldr	r3, [pc, #28]	; (20001c38 <set_ram_vt+0x68>)
20001c1a:	4a0b      	ldr	r2, [pc, #44]	; (20001c48 <set_ram_vt+0x78>)
20001c1c:	679a      	str	r2, [r3, #120]	; 0x78
20001c1e:	4b06      	ldr	r3, [pc, #24]	; (20001c38 <set_ram_vt+0x68>)
20001c20:	4a0a      	ldr	r2, [pc, #40]	; (20001c4c <set_ram_vt+0x7c>)
20001c22:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20001c26:	4b04      	ldr	r3, [pc, #16]	; (20001c38 <set_ram_vt+0x68>)
20001c28:	4a09      	ldr	r2, [pc, #36]	; (20001c50 <set_ram_vt+0x80>)
20001c2a:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001c2e:	bf00      	nop
20001c30:	3714      	adds	r7, #20
20001c32:	46bd      	mov	sp, r7
20001c34:	bc80      	pop	{r7}
20001c36:	4770      	bx	lr
20001c38:	20003000 	.word	0x20003000
20001c3c:	e000ed00 	.word	0xe000ed00
20001c40:	20001d0d 	.word	0x20001d0d
20001c44:	20001d29 	.word	0x20001d29
20001c48:	200005c1 	.word	0x200005c1
20001c4c:	200005d9 	.word	0x200005d9
20001c50:	200005ad 	.word	0x200005ad

20001c54 <uart_init>:
20001c54:	b480      	push	{r7}
20001c56:	af00      	add	r7, sp, #0
20001c58:	4b22      	ldr	r3, [pc, #136]	; (20001ce4 <uart_init+0x90>)
20001c5a:	2200      	movs	r2, #0
20001c5c:	601a      	str	r2, [r3, #0]
20001c5e:	4a22      	ldr	r2, [pc, #136]	; (20001ce8 <uart_init+0x94>)
20001c60:	4b21      	ldr	r3, [pc, #132]	; (20001ce8 <uart_init+0x94>)
20001c62:	69db      	ldr	r3, [r3, #28]
20001c64:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001c68:	61d3      	str	r3, [r2, #28]
20001c6a:	4a1f      	ldr	r2, [pc, #124]	; (20001ce8 <uart_init+0x94>)
20001c6c:	4b1e      	ldr	r3, [pc, #120]	; (20001ce8 <uart_init+0x94>)
20001c6e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001c70:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001c74:	6293      	str	r3, [r2, #40]	; 0x28
20001c76:	4b1d      	ldr	r3, [pc, #116]	; (20001cec <uart_init+0x98>)
20001c78:	2204      	movs	r2, #4
20001c7a:	625a      	str	r2, [r3, #36]	; 0x24
20001c7c:	4b1b      	ldr	r3, [pc, #108]	; (20001cec <uart_init+0x98>)
20001c7e:	2200      	movs	r2, #0
20001c80:	629a      	str	r2, [r3, #40]	; 0x28
20001c82:	4a1a      	ldr	r2, [pc, #104]	; (20001cec <uart_init+0x98>)
20001c84:	4b19      	ldr	r3, [pc, #100]	; (20001cec <uart_init+0x98>)
20001c86:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001c88:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
20001c8c:	6353      	str	r3, [r2, #52]	; 0x34
20001c8e:	4a17      	ldr	r2, [pc, #92]	; (20001cec <uart_init+0x98>)
20001c90:	4b16      	ldr	r3, [pc, #88]	; (20001cec <uart_init+0x98>)
20001c92:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001c94:	f043 0312 	orr.w	r3, r3, #18
20001c98:	6353      	str	r3, [r2, #52]	; 0x34
20001c9a:	4a14      	ldr	r2, [pc, #80]	; (20001cec <uart_init+0x98>)
20001c9c:	4b13      	ldr	r3, [pc, #76]	; (20001cec <uart_init+0x98>)
20001c9e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001ca0:	f043 0310 	orr.w	r3, r3, #16
20001ca4:	62d3      	str	r3, [r2, #44]	; 0x2c
20001ca6:	4a11      	ldr	r2, [pc, #68]	; (20001cec <uart_init+0x98>)
20001ca8:	4b10      	ldr	r3, [pc, #64]	; (20001cec <uart_init+0x98>)
20001caa:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001cac:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001cb0:	62d3      	str	r3, [r2, #44]	; 0x2c
20001cb2:	4a0e      	ldr	r2, [pc, #56]	; (20001cec <uart_init+0x98>)
20001cb4:	4b0d      	ldr	r3, [pc, #52]	; (20001cec <uart_init+0x98>)
20001cb6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001cb8:	f443 7340 	orr.w	r3, r3, #768	; 0x300
20001cbc:	f043 0301 	orr.w	r3, r3, #1
20001cc0:	6313      	str	r3, [r2, #48]	; 0x30
20001cc2:	4a0a      	ldr	r2, [pc, #40]	; (20001cec <uart_init+0x98>)
20001cc4:	4b09      	ldr	r3, [pc, #36]	; (20001cec <uart_init+0x98>)
20001cc6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001cc8:	f043 0310 	orr.w	r3, r3, #16
20001ccc:	6393      	str	r3, [r2, #56]	; 0x38
20001cce:	4a07      	ldr	r2, [pc, #28]	; (20001cec <uart_init+0x98>)
20001cd0:	4b06      	ldr	r3, [pc, #24]	; (20001cec <uart_init+0x98>)
20001cd2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001cd4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001cd8:	6393      	str	r3, [r2, #56]	; 0x38
20001cda:	bf00      	nop
20001cdc:	46bd      	mov	sp, r7
20001cde:	bc80      	pop	{r7}
20001ce0:	4770      	bx	lr
20001ce2:	bf00      	nop
20001ce4:	200030d0 	.word	0x200030d0
20001ce8:	40020000 	.word	0x40020000
20001cec:	40030000 	.word	0x40030000

20001cf0 <system_init>:
20001cf0:	b580      	push	{r7, lr}
20001cf2:	af00      	add	r7, sp, #0
20001cf4:	f7ff ff6c 	bl	20001bd0 <set_ram_vt>
20001cf8:	f7ff fdd4 	bl	200018a4 <ClkConfig>
20001cfc:	f7ff fcf2 	bl	200016e4 <PortConfig>
20001d00:	f7ff fe06 	bl	20001910 <TimerConfig>
20001d04:	f7ff ffa6 	bl	20001c54 <uart_init>
20001d08:	bf00      	nop
20001d0a:	bd80      	pop	{r7, pc}

20001d0c <SysTick_Handler>:
20001d0c:	b480      	push	{r7}
20001d0e:	af00      	add	r7, sp, #0
20001d10:	4b04      	ldr	r3, [pc, #16]	; (20001d24 <SysTick_Handler+0x18>)
20001d12:	681b      	ldr	r3, [r3, #0]
20001d14:	3301      	adds	r3, #1
20001d16:	4a03      	ldr	r2, [pc, #12]	; (20001d24 <SysTick_Handler+0x18>)
20001d18:	6013      	str	r3, [r2, #0]
20001d1a:	bf00      	nop
20001d1c:	46bd      	mov	sp, r7
20001d1e:	bc80      	pop	{r7}
20001d20:	4770      	bx	lr
20001d22:	bf00      	nop
20001d24:	20002f00 	.word	0x20002f00

20001d28 <UART1_Handler>:
20001d28:	b480      	push	{r7}
20001d2a:	b083      	sub	sp, #12
20001d2c:	af00      	add	r7, sp, #0
20001d2e:	4b1d      	ldr	r3, [pc, #116]	; (20001da4 <UART1_Handler+0x7c>)
20001d30:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001d32:	f003 0310 	and.w	r3, r3, #16
20001d36:	2b00      	cmp	r3, #0
20001d38:	d01f      	beq.n	20001d7a <UART1_Handler+0x52>
20001d3a:	e002      	b.n	20001d42 <UART1_Handler+0x1a>
20001d3c:	4b19      	ldr	r3, [pc, #100]	; (20001da4 <UART1_Handler+0x7c>)
20001d3e:	681b      	ldr	r3, [r3, #0]
20001d40:	71fb      	strb	r3, [r7, #7]
20001d42:	4b18      	ldr	r3, [pc, #96]	; (20001da4 <UART1_Handler+0x7c>)
20001d44:	699b      	ldr	r3, [r3, #24]
20001d46:	f003 0310 	and.w	r3, r3, #16
20001d4a:	2b00      	cmp	r3, #0
20001d4c:	d0f6      	beq.n	20001d3c <UART1_Handler+0x14>
20001d4e:	4b16      	ldr	r3, [pc, #88]	; (20001da8 <UART1_Handler+0x80>)
20001d50:	681b      	ldr	r3, [r3, #0]
20001d52:	80bb      	strh	r3, [r7, #4]
20001d54:	4b14      	ldr	r3, [pc, #80]	; (20001da8 <UART1_Handler+0x80>)
20001d56:	689b      	ldr	r3, [r3, #8]
20001d58:	085b      	lsrs	r3, r3, #1
20001d5a:	807b      	strh	r3, [r7, #2]
20001d5c:	88ba      	ldrh	r2, [r7, #4]
20001d5e:	887b      	ldrh	r3, [r7, #2]
20001d60:	429a      	cmp	r2, r3
20001d62:	d205      	bcs.n	20001d70 <UART1_Handler+0x48>
20001d64:	4a10      	ldr	r2, [pc, #64]	; (20001da8 <UART1_Handler+0x80>)
20001d66:	4b10      	ldr	r3, [pc, #64]	; (20001da8 <UART1_Handler+0x80>)
20001d68:	681b      	ldr	r3, [r3, #0]
20001d6a:	3b01      	subs	r3, #1
20001d6c:	6013      	str	r3, [r2, #0]
20001d6e:	e004      	b.n	20001d7a <UART1_Handler+0x52>
20001d70:	4a0d      	ldr	r2, [pc, #52]	; (20001da8 <UART1_Handler+0x80>)
20001d72:	4b0d      	ldr	r3, [pc, #52]	; (20001da8 <UART1_Handler+0x80>)
20001d74:	681b      	ldr	r3, [r3, #0]
20001d76:	3301      	adds	r3, #1
20001d78:	6013      	str	r3, [r2, #0]
20001d7a:	4b0a      	ldr	r3, [pc, #40]	; (20001da4 <UART1_Handler+0x7c>)
20001d7c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001d7e:	f003 0340 	and.w	r3, r3, #64	; 0x40
20001d82:	2b00      	cmp	r3, #0
20001d84:	d009      	beq.n	20001d9a <UART1_Handler+0x72>
20001d86:	e002      	b.n	20001d8e <UART1_Handler+0x66>
20001d88:	4b06      	ldr	r3, [pc, #24]	; (20001da4 <UART1_Handler+0x7c>)
20001d8a:	681b      	ldr	r3, [r3, #0]
20001d8c:	707b      	strb	r3, [r7, #1]
20001d8e:	4b05      	ldr	r3, [pc, #20]	; (20001da4 <UART1_Handler+0x7c>)
20001d90:	699b      	ldr	r3, [r3, #24]
20001d92:	f003 0310 	and.w	r3, r3, #16
20001d96:	2b00      	cmp	r3, #0
20001d98:	d0f6      	beq.n	20001d88 <UART1_Handler+0x60>
20001d9a:	bf00      	nop
20001d9c:	370c      	adds	r7, #12
20001d9e:	46bd      	mov	sp, r7
20001da0:	bc80      	pop	{r7}
20001da2:	4770      	bx	lr
20001da4:	40030000 	.word	0x40030000
20001da8:	40070000 	.word	0x40070000
