
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
20000026:	f001 fe5b 	bl	20001ce0 <system_init>
2000002a:	f000 fa21 	bl	20000470 <ssi_init>
2000002e:	f000 fa93 	bl	20000558 <dac_init>
20000032:	f001 fafb 	bl	2000162c <adc_dma_init>
20000036:	22c8      	movs	r2, #200	; 0xc8
20000038:	2150      	movs	r1, #80	; 0x50
2000003a:	481e      	ldr	r0, [pc, #120]	; (200000b4 <main+0xb4>)
2000003c:	f000 fe56 	bl	20000cec <reg_init>
20000040:	22c8      	movs	r2, #200	; 0xc8
20000042:	2150      	movs	r1, #80	; 0x50
20000044:	481c      	ldr	r0, [pc, #112]	; (200000b8 <main+0xb8>)
20000046:	f000 fe51 	bl	20000cec <reg_init>
2000004a:	f241 3288 	movw	r2, #5000	; 0x1388
2000004e:	2100      	movs	r1, #0
20000050:	481a      	ldr	r0, [pc, #104]	; (200000bc <main+0xbc>)
20000052:	f000 fe4b 	bl	20000cec <reg_init>
20000056:	f640 32b8 	movw	r2, #3000	; 0xbb8
2000005a:	2100      	movs	r1, #0
2000005c:	4818      	ldr	r0, [pc, #96]	; (200000c0 <main+0xc0>)
2000005e:	f000 fe45 	bl	20000cec <reg_init>
20000062:	4a18      	ldr	r2, [pc, #96]	; (200000c4 <main+0xc4>)
20000064:	2100      	movs	r1, #0
20000066:	4818      	ldr	r0, [pc, #96]	; (200000c8 <main+0xc8>)
20000068:	f000 fe40 	bl	20000cec <reg_init>
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
20000082:	f000 f98d 	bl	200003a0 <mfilter>
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
200000e0:	f001 fac2 	bl	20001668 <adc_dma_wait>
200000e4:	4b97      	ldr	r3, [pc, #604]	; (20000344 <main+0x344>)
200000e6:	689b      	ldr	r3, [r3, #8]
200000e8:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000ec:	6d3b      	ldr	r3, [r7, #80]	; 0x50
200000ee:	4413      	add	r3, r2
200000f0:	653b      	str	r3, [r7, #80]	; 0x50
200000f2:	4b94      	ldr	r3, [pc, #592]	; (20000344 <main+0x344>)
200000f4:	68db      	ldr	r3, [r3, #12]
200000f6:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000fa:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
200000fc:	4413      	add	r3, r2
200000fe:	64fb      	str	r3, [r7, #76]	; 0x4c
20000100:	4b91      	ldr	r3, [pc, #580]	; (20000348 <main+0x348>)
20000102:	689b      	ldr	r3, [r3, #8]
20000104:	4618      	mov	r0, r3
20000106:	f000 f9fd 	bl	20000504 <enc_crc>
2000010a:	4602      	mov	r2, r0
2000010c:	4b8f      	ldr	r3, [pc, #572]	; (2000034c <main+0x34c>)
2000010e:	681b      	ldr	r3, [r3, #0]
20000110:	4413      	add	r3, r2
20000112:	461a      	mov	r2, r3
20000114:	4b8d      	ldr	r3, [pc, #564]	; (2000034c <main+0x34c>)
20000116:	601a      	str	r2, [r3, #0]
20000118:	4b8a      	ldr	r3, [pc, #552]	; (20000344 <main+0x344>)
2000011a:	681b      	ldr	r3, [r3, #0]
2000011c:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000120:	4a8b      	ldr	r2, [pc, #556]	; (20000350 <main+0x350>)
20000122:	6812      	ldr	r2, [r2, #0]
20000124:	4413      	add	r3, r2
20000126:	461a      	mov	r2, r3
20000128:	4b89      	ldr	r3, [pc, #548]	; (20000350 <main+0x350>)
2000012a:	601a      	str	r2, [r3, #0]
2000012c:	4b85      	ldr	r3, [pc, #532]	; (20000344 <main+0x344>)
2000012e:	685b      	ldr	r3, [r3, #4]
20000130:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000134:	4a87      	ldr	r2, [pc, #540]	; (20000354 <main+0x354>)
20000136:	6812      	ldr	r2, [r2, #0]
20000138:	4413      	add	r3, r2
2000013a:	461a      	mov	r2, r3
2000013c:	4b85      	ldr	r3, [pc, #532]	; (20000354 <main+0x354>)
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
2000015a:	4b7c      	ldr	r3, [pc, #496]	; (2000034c <main+0x34c>)
2000015c:	681b      	ldr	r3, [r3, #0]
2000015e:	129b      	asrs	r3, r3, #10
20000160:	4a7a      	ldr	r2, [pc, #488]	; (2000034c <main+0x34c>)
20000162:	6013      	str	r3, [r2, #0]
20000164:	4b7c      	ldr	r3, [pc, #496]	; (20000358 <main+0x358>)
20000166:	f44f 7202 	mov.w	r2, #520	; 0x208
2000016a:	601a      	str	r2, [r3, #0]
2000016c:	4b79      	ldr	r3, [pc, #484]	; (20000354 <main+0x354>)
2000016e:	681a      	ldr	r2, [r3, #0]
20000170:	4b77      	ldr	r3, [pc, #476]	; (20000350 <main+0x350>)
20000172:	681b      	ldr	r3, [r3, #0]
20000174:	129b      	asrs	r3, r3, #10
20000176:	fb92 f3f3 	sdiv	r3, r2, r3
2000017a:	4a78      	ldr	r2, [pc, #480]	; (2000035c <main+0x35c>)
2000017c:	6013      	str	r3, [r2, #0]
2000017e:	4b76      	ldr	r3, [pc, #472]	; (20000358 <main+0x358>)
20000180:	681b      	ldr	r3, [r3, #0]
20000182:	4a73      	ldr	r2, [pc, #460]	; (20000350 <main+0x350>)
20000184:	6013      	str	r3, [r2, #0]
20000186:	4b71      	ldr	r3, [pc, #452]	; (2000034c <main+0x34c>)
20000188:	681b      	ldr	r3, [r3, #0]
2000018a:	4a75      	ldr	r2, [pc, #468]	; (20000360 <main+0x360>)
2000018c:	6013      	str	r3, [r2, #0]
2000018e:	4b6f      	ldr	r3, [pc, #444]	; (2000034c <main+0x34c>)
20000190:	681b      	ldr	r3, [r3, #0]
20000192:	4a74      	ldr	r2, [pc, #464]	; (20000364 <main+0x364>)
20000194:	6013      	str	r3, [r2, #0]
20000196:	4b6d      	ldr	r3, [pc, #436]	; (2000034c <main+0x34c>)
20000198:	681b      	ldr	r3, [r3, #0]
2000019a:	4618      	mov	r0, r3
2000019c:	f001 f968 	bl	20001470 <encoder_init>
200001a0:	4b71      	ldr	r3, [pc, #452]	; (20000368 <main+0x368>)
200001a2:	2200      	movs	r2, #0
200001a4:	601a      	str	r2, [r3, #0]
200001a6:	4b6e      	ldr	r3, [pc, #440]	; (20000360 <main+0x360>)
200001a8:	681b      	ldr	r3, [r3, #0]
200001aa:	4a70      	ldr	r2, [pc, #448]	; (2000036c <main+0x36c>)
200001ac:	6013      	str	r3, [r2, #0]
200001ae:	2301      	movs	r3, #1
200001b0:	637b      	str	r3, [r7, #52]	; 0x34
200001b2:	2300      	movs	r3, #0
200001b4:	647b      	str	r3, [r7, #68]	; 0x44
200001b6:	f000 f90b 	bl	200003d0 <brake_on>
200001ba:	f000 f925 	bl	20000408 <motor_off>
200001be:	4b6c      	ldr	r3, [pc, #432]	; (20000370 <main+0x370>)
200001c0:	2200      	movs	r2, #0
200001c2:	601a      	str	r2, [r3, #0]
200001c4:	4b6b      	ldr	r3, [pc, #428]	; (20000374 <main+0x374>)
200001c6:	4a6c      	ldr	r2, [pc, #432]	; (20000378 <main+0x378>)
200001c8:	601a      	str	r2, [r3, #0]
200001ca:	4b6c      	ldr	r3, [pc, #432]	; (2000037c <main+0x37c>)
200001cc:	2200      	movs	r2, #0
200001ce:	701a      	strb	r2, [r3, #0]
200001d0:	f001 fa4a 	bl	20001668 <adc_dma_wait>
200001d4:	6d3a      	ldr	r2, [r7, #80]	; 0x50
200001d6:	4b5b      	ldr	r3, [pc, #364]	; (20000344 <main+0x344>)
200001d8:	689b      	ldr	r3, [r3, #8]
200001da:	f3c3 030b 	ubfx	r3, r3, #0, #12
200001de:	1ad3      	subs	r3, r2, r3
200001e0:	633b      	str	r3, [r7, #48]	; 0x30
200001e2:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
200001e4:	4b57      	ldr	r3, [pc, #348]	; (20000344 <main+0x344>)
200001e6:	68db      	ldr	r3, [r3, #12]
200001e8:	f3c3 030b 	ubfx	r3, r3, #0, #12
200001ec:	1ad3      	subs	r3, r2, r3
200001ee:	62fb      	str	r3, [r7, #44]	; 0x2c
200001f0:	6b3a      	ldr	r2, [r7, #48]	; 0x30
200001f2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
200001f4:	4413      	add	r3, r2
200001f6:	62bb      	str	r3, [r7, #40]	; 0x28
200001f8:	4b53      	ldr	r3, [pc, #332]	; (20000348 <main+0x348>)
200001fa:	689b      	ldr	r3, [r3, #8]
200001fc:	4618      	mov	r0, r3
200001fe:	f000 f981 	bl	20000504 <enc_crc>
20000202:	6278      	str	r0, [r7, #36]	; 0x24
20000204:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20000206:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000020a:	63bb      	str	r3, [r7, #56]	; 0x38
2000020c:	4a5c      	ldr	r2, [pc, #368]	; (20000380 <main+0x380>)
2000020e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20000210:	6093      	str	r3, [r2, #8]
20000212:	4b4c      	ldr	r3, [pc, #304]	; (20000344 <main+0x344>)
20000214:	685b      	ldr	r3, [r3, #4]
20000216:	029a      	lsls	r2, r3, #10
20000218:	4b5a      	ldr	r3, [pc, #360]	; (20000384 <main+0x384>)
2000021a:	4013      	ands	r3, r2
2000021c:	4a49      	ldr	r2, [pc, #292]	; (20000344 <main+0x344>)
2000021e:	6812      	ldr	r2, [r2, #0]
20000220:	f3c2 020b 	ubfx	r2, r2, #0, #12
20000224:	fbb3 f3f2 	udiv	r3, r3, r2
20000228:	461a      	mov	r2, r3
2000022a:	4b4a      	ldr	r3, [pc, #296]	; (20000354 <main+0x354>)
2000022c:	601a      	str	r2, [r3, #0]
2000022e:	4a56      	ldr	r2, [pc, #344]	; (20000388 <main+0x388>)
20000230:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20000232:	6013      	str	r3, [r2, #0]
20000234:	4b55      	ldr	r3, [pc, #340]	; (2000038c <main+0x38c>)
20000236:	681b      	ldr	r3, [r3, #0]
20000238:	3301      	adds	r3, #1
2000023a:	4a54      	ldr	r2, [pc, #336]	; (2000038c <main+0x38c>)
2000023c:	6013      	str	r3, [r2, #0]
2000023e:	4b53      	ldr	r3, [pc, #332]	; (2000038c <main+0x38c>)
20000240:	681b      	ldr	r3, [r3, #0]
20000242:	f003 0307 	and.w	r3, r3, #7
20000246:	2b00      	cmp	r3, #0
20000248:	d124      	bne.n	20000294 <main+0x294>
2000024a:	f000 fabf 	bl	200007cc <update_refposition>
2000024e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20000250:	4944      	ldr	r1, [pc, #272]	; (20000364 <main+0x364>)
20000252:	4618      	mov	r0, r3
20000254:	f001 f912 	bl	2000147c <get_speed>
20000258:	6238      	str	r0, [r7, #32]
2000025a:	4b46      	ldr	r3, [pc, #280]	; (20000374 <main+0x374>)
2000025c:	681b      	ldr	r3, [r3, #0]
2000025e:	4798      	blx	r3
20000260:	63f8      	str	r0, [r7, #60]	; 0x3c
20000262:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
20000264:	6a3b      	ldr	r3, [r7, #32]
20000266:	1ad3      	subs	r3, r2, r3
20000268:	2200      	movs	r2, #0
2000026a:	4619      	mov	r1, r3
2000026c:	4848      	ldr	r0, [pc, #288]	; (20000390 <main+0x390>)
2000026e:	f000 fd43 	bl	20000cf8 <reg_update>
20000272:	4b47      	ldr	r3, [pc, #284]	; (20000390 <main+0x390>)
20000274:	68db      	ldr	r3, [r3, #12]
20000276:	131b      	asrs	r3, r3, #12
20000278:	647b      	str	r3, [r7, #68]	; 0x44
2000027a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
2000027c:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
20000280:	dd02      	ble.n	20000288 <main+0x288>
20000282:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
20000286:	647b      	str	r3, [r7, #68]	; 0x44
20000288:	6c7b      	ldr	r3, [r7, #68]	; 0x44
2000028a:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
2000028e:	da01      	bge.n	20000294 <main+0x294>
20000290:	4b40      	ldr	r3, [pc, #256]	; (20000394 <main+0x394>)
20000292:	647b      	str	r3, [r7, #68]	; 0x44
20000294:	f000 f9f0 	bl	20000678 <update_telemetry>
20000298:	6bbb      	ldr	r3, [r7, #56]	; 0x38
2000029a:	f503 7361 	add.w	r3, r3, #900	; 0x384
2000029e:	f3c3 0309 	ubfx	r3, r3, #0, #10
200002a2:	63bb      	str	r3, [r7, #56]	; 0x38
200002a4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
200002a6:	603b      	str	r3, [r7, #0]
200002a8:	6abb      	ldr	r3, [r7, #40]	; 0x28
200002aa:	607b      	str	r3, [r7, #4]
200002ac:	6afb      	ldr	r3, [r7, #44]	; 0x2c
200002ae:	60bb      	str	r3, [r7, #8]
200002b0:	6bba      	ldr	r2, [r7, #56]	; 0x38
200002b2:	f107 010c 	add.w	r1, r7, #12
200002b6:	463b      	mov	r3, r7
200002b8:	4618      	mov	r0, r3
200002ba:	f000 fd43 	bl	20000d44 <abc_to_dq>
200002be:	68fb      	ldr	r3, [r7, #12]
200002c0:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
200002c4:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
200002c8:	693b      	ldr	r3, [r7, #16]
200002ca:	2b00      	cmp	r3, #0
200002cc:	bfb8      	it	lt
200002ce:	425b      	neglt	r3, r3
200002d0:	4413      	add	r3, r2
200002d2:	61fb      	str	r3, [r7, #28]
200002d4:	4b24      	ldr	r3, [pc, #144]	; (20000368 <main+0x368>)
200002d6:	681b      	ldr	r3, [r3, #0]
200002d8:	4619      	mov	r1, r3
200002da:	69f8      	ldr	r0, [r7, #28]
200002dc:	f000 f860 	bl	200003a0 <mfilter>
200002e0:	4602      	mov	r2, r0
200002e2:	4b21      	ldr	r3, [pc, #132]	; (20000368 <main+0x368>)
200002e4:	601a      	str	r2, [r3, #0]
200002e6:	68fb      	ldr	r3, [r7, #12]
200002e8:	425b      	negs	r3, r3
200002ea:	61bb      	str	r3, [r7, #24]
200002ec:	693b      	ldr	r3, [r7, #16]
200002ee:	6c7a      	ldr	r2, [r7, #68]	; 0x44
200002f0:	1ad3      	subs	r3, r2, r3
200002f2:	617b      	str	r3, [r7, #20]
200002f4:	6cba      	ldr	r2, [r7, #72]	; 0x48
200002f6:	69b9      	ldr	r1, [r7, #24]
200002f8:	4827      	ldr	r0, [pc, #156]	; (20000398 <main+0x398>)
200002fa:	f000 fcfd 	bl	20000cf8 <reg_update>
200002fe:	6cba      	ldr	r2, [r7, #72]	; 0x48
20000300:	6979      	ldr	r1, [r7, #20]
20000302:	4826      	ldr	r0, [pc, #152]	; (2000039c <main+0x39c>)
20000304:	f000 fcf8 	bl	20000cf8 <reg_update>
20000308:	4b23      	ldr	r3, [pc, #140]	; (20000398 <main+0x398>)
2000030a:	68db      	ldr	r3, [r3, #12]
2000030c:	109b      	asrs	r3, r3, #2
2000030e:	60fb      	str	r3, [r7, #12]
20000310:	4b22      	ldr	r3, [pc, #136]	; (2000039c <main+0x39c>)
20000312:	68db      	ldr	r3, [r3, #12]
20000314:	109b      	asrs	r3, r3, #2
20000316:	613b      	str	r3, [r7, #16]
20000318:	6bba      	ldr	r2, [r7, #56]	; 0x38
2000031a:	f107 010c 	add.w	r1, r7, #12
2000031e:	463b      	mov	r3, r7
20000320:	4618      	mov	r0, r3
20000322:	f000 ff27 	bl	20001174 <svpwm>
20000326:	64b8      	str	r0, [r7, #72]	; 0x48
20000328:	683b      	ldr	r3, [r7, #0]
2000032a:	4618      	mov	r0, r3
2000032c:	f000 f974 	bl	20000618 <pwm_seta>
20000330:	687b      	ldr	r3, [r7, #4]
20000332:	4618      	mov	r0, r3
20000334:	f000 f980 	bl	20000638 <pwm_setb>
20000338:	68bb      	ldr	r3, [r7, #8]
2000033a:	4618      	mov	r0, r3
2000033c:	f000 f98c 	bl	20000658 <pwm_setc>
20000340:	e746      	b.n	200001d0 <main+0x1d0>
20000342:	bf00      	nop
20000344:	20003600 	.word	0x20003600
20000348:	40040000 	.word	0x40040000
2000034c:	20002e10 	.word	0x20002e10
20000350:	20002e04 	.word	0x20002e04
20000354:	20002e14 	.word	0x20002e14
20000358:	20002e0c 	.word	0x20002e0c
2000035c:	20002e08 	.word	0x20002e08
20000360:	20002e00 	.word	0x20002e00
20000364:	20002e28 	.word	0x20002e28
20000368:	20002e34 	.word	0x20002e34
2000036c:	20002e2c 	.word	0x20002e2c
20000370:	20002e9c 	.word	0x20002e9c
20000374:	20002e40 	.word	0x20002e40
20000378:	200009e5 	.word	0x200009e5
2000037c:	20002e3d 	.word	0x20002e3d
20000380:	40090000 	.word	0x40090000
20000384:	003ffc00 	.word	0x003ffc00
20000388:	20002e30 	.word	0x20002e30
2000038c:	20002e18 	.word	0x20002e18
20000390:	20002e64 	.word	0x20002e64
20000394:	fffffc18 	.word	0xfffffc18
20000398:	20002e44 	.word	0x20002e44
2000039c:	20002e54 	.word	0x20002e54

200003a0 <mfilter>:
200003a0:	b480      	push	{r7}
200003a2:	b083      	sub	sp, #12
200003a4:	af00      	add	r7, sp, #0
200003a6:	6078      	str	r0, [r7, #4]
200003a8:	6039      	str	r1, [r7, #0]
200003aa:	687a      	ldr	r2, [r7, #4]
200003ac:	4613      	mov	r3, r2
200003ae:	009b      	lsls	r3, r3, #2
200003b0:	4413      	add	r3, r2
200003b2:	005b      	lsls	r3, r3, #1
200003b4:	4619      	mov	r1, r3
200003b6:	683b      	ldr	r3, [r7, #0]
200003b8:	f240 32f6 	movw	r2, #1014	; 0x3f6
200003bc:	fb02 f303 	mul.w	r3, r2, r3
200003c0:	440b      	add	r3, r1
200003c2:	129b      	asrs	r3, r3, #10
200003c4:	4618      	mov	r0, r3
200003c6:	370c      	adds	r7, #12
200003c8:	46bd      	mov	sp, r7
200003ca:	bc80      	pop	{r7}
200003cc:	4770      	bx	lr
200003ce:	bf00      	nop

200003d0 <brake_on>:
200003d0:	b480      	push	{r7}
200003d2:	af00      	add	r7, sp, #0
200003d4:	4a04      	ldr	r2, [pc, #16]	; (200003e8 <brake_on+0x18>)
200003d6:	4b04      	ldr	r3, [pc, #16]	; (200003e8 <brake_on+0x18>)
200003d8:	681b      	ldr	r3, [r3, #0]
200003da:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
200003de:	6013      	str	r3, [r2, #0]
200003e0:	bf00      	nop
200003e2:	46bd      	mov	sp, r7
200003e4:	bc80      	pop	{r7}
200003e6:	4770      	bx	lr
200003e8:	400e8000 	.word	0x400e8000

200003ec <brake_off>:
200003ec:	b480      	push	{r7}
200003ee:	af00      	add	r7, sp, #0
200003f0:	4a04      	ldr	r2, [pc, #16]	; (20000404 <brake_off+0x18>)
200003f2:	4b04      	ldr	r3, [pc, #16]	; (20000404 <brake_off+0x18>)
200003f4:	681b      	ldr	r3, [r3, #0]
200003f6:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
200003fa:	6013      	str	r3, [r2, #0]
200003fc:	bf00      	nop
200003fe:	46bd      	mov	sp, r7
20000400:	bc80      	pop	{r7}
20000402:	4770      	bx	lr
20000404:	400e8000 	.word	0x400e8000

20000408 <motor_off>:
20000408:	b480      	push	{r7}
2000040a:	af00      	add	r7, sp, #0
2000040c:	4a04      	ldr	r2, [pc, #16]	; (20000420 <motor_off+0x18>)
2000040e:	4b04      	ldr	r3, [pc, #16]	; (20000420 <motor_off+0x18>)
20000410:	681b      	ldr	r3, [r3, #0]
20000412:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20000416:	6013      	str	r3, [r2, #0]
20000418:	bf00      	nop
2000041a:	46bd      	mov	sp, r7
2000041c:	bc80      	pop	{r7}
2000041e:	4770      	bx	lr
20000420:	400e8000 	.word	0x400e8000

20000424 <motor_on>:
20000424:	b480      	push	{r7}
20000426:	af00      	add	r7, sp, #0
20000428:	4a04      	ldr	r2, [pc, #16]	; (2000043c <motor_on+0x18>)
2000042a:	4b04      	ldr	r3, [pc, #16]	; (2000043c <motor_on+0x18>)
2000042c:	681b      	ldr	r3, [r3, #0]
2000042e:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
20000432:	6013      	str	r3, [r2, #0]
20000434:	bf00      	nop
20000436:	46bd      	mov	sp, r7
20000438:	bc80      	pop	{r7}
2000043a:	4770      	bx	lr
2000043c:	400e8000 	.word	0x400e8000

20000440 <sleep>:
20000440:	b480      	push	{r7}
20000442:	b085      	sub	sp, #20
20000444:	af00      	add	r7, sp, #0
20000446:	6078      	str	r0, [r7, #4]
20000448:	4b08      	ldr	r3, [pc, #32]	; (2000046c <sleep+0x2c>)
2000044a:	681a      	ldr	r2, [r3, #0]
2000044c:	687b      	ldr	r3, [r7, #4]
2000044e:	4413      	add	r3, r2
20000450:	60fb      	str	r3, [r7, #12]
20000452:	bf00      	nop
20000454:	4b05      	ldr	r3, [pc, #20]	; (2000046c <sleep+0x2c>)
20000456:	681a      	ldr	r2, [r3, #0]
20000458:	68fb      	ldr	r3, [r7, #12]
2000045a:	429a      	cmp	r2, r3
2000045c:	d3fa      	bcc.n	20000454 <sleep+0x14>
2000045e:	bf00      	nop
20000460:	4618      	mov	r0, r3
20000462:	3714      	adds	r7, #20
20000464:	46bd      	mov	sp, r7
20000466:	bc80      	pop	{r7}
20000468:	4770      	bx	lr
2000046a:	bf00      	nop
2000046c:	20002f00 	.word	0x20002f00

20000470 <ssi_init>:
20000470:	b480      	push	{r7}
20000472:	af00      	add	r7, sp, #0
20000474:	4a0c      	ldr	r2, [pc, #48]	; (200004a8 <ssi_init+0x38>)
20000476:	4b0c      	ldr	r3, [pc, #48]	; (200004a8 <ssi_init+0x38>)
20000478:	69db      	ldr	r3, [r3, #28]
2000047a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000047e:	61d3      	str	r3, [r2, #28]
20000480:	4b09      	ldr	r3, [pc, #36]	; (200004a8 <ssi_init+0x38>)
20000482:	4a0a      	ldr	r2, [pc, #40]	; (200004ac <ssi_init+0x3c>)
20000484:	62da      	str	r2, [r3, #44]	; 0x2c
20000486:	4b0a      	ldr	r3, [pc, #40]	; (200004b0 <ssi_init+0x40>)
20000488:	2200      	movs	r2, #0
2000048a:	605a      	str	r2, [r3, #4]
2000048c:	4b08      	ldr	r3, [pc, #32]	; (200004b0 <ssi_init+0x40>)
2000048e:	2206      	movs	r2, #6
20000490:	611a      	str	r2, [r3, #16]
20000492:	4b07      	ldr	r3, [pc, #28]	; (200004b0 <ssi_init+0x40>)
20000494:	f240 221f 	movw	r2, #543	; 0x21f
20000498:	601a      	str	r2, [r3, #0]
2000049a:	4b05      	ldr	r3, [pc, #20]	; (200004b0 <ssi_init+0x40>)
2000049c:	2202      	movs	r2, #2
2000049e:	605a      	str	r2, [r3, #4]
200004a0:	bf00      	nop
200004a2:	46bd      	mov	sp, r7
200004a4:	bc80      	pop	{r7}
200004a6:	4770      	bx	lr
200004a8:	40020000 	.word	0x40020000
200004ac:	0100000a 	.word	0x0100000a
200004b0:	40040000 	.word	0x40040000

200004b4 <b2g>:
200004b4:	b480      	push	{r7}
200004b6:	b083      	sub	sp, #12
200004b8:	af00      	add	r7, sp, #0
200004ba:	6078      	str	r0, [r7, #4]
200004bc:	687b      	ldr	r3, [r7, #4]
200004be:	085a      	lsrs	r2, r3, #1
200004c0:	687b      	ldr	r3, [r7, #4]
200004c2:	4053      	eors	r3, r2
200004c4:	4618      	mov	r0, r3
200004c6:	370c      	adds	r7, #12
200004c8:	46bd      	mov	sp, r7
200004ca:	bc80      	pop	{r7}
200004cc:	4770      	bx	lr
200004ce:	bf00      	nop

200004d0 <g2b>:
200004d0:	b480      	push	{r7}
200004d2:	b085      	sub	sp, #20
200004d4:	af00      	add	r7, sp, #0
200004d6:	6078      	str	r0, [r7, #4]
200004d8:	2300      	movs	r3, #0
200004da:	60fb      	str	r3, [r7, #12]
200004dc:	2300      	movs	r3, #0
200004de:	60fb      	str	r3, [r7, #12]
200004e0:	e006      	b.n	200004f0 <g2b+0x20>
200004e2:	68fa      	ldr	r2, [r7, #12]
200004e4:	687b      	ldr	r3, [r7, #4]
200004e6:	4053      	eors	r3, r2
200004e8:	60fb      	str	r3, [r7, #12]
200004ea:	687b      	ldr	r3, [r7, #4]
200004ec:	085b      	lsrs	r3, r3, #1
200004ee:	607b      	str	r3, [r7, #4]
200004f0:	687b      	ldr	r3, [r7, #4]
200004f2:	2b00      	cmp	r3, #0
200004f4:	d1f5      	bne.n	200004e2 <g2b+0x12>
200004f6:	68fb      	ldr	r3, [r7, #12]
200004f8:	4618      	mov	r0, r3
200004fa:	3714      	adds	r7, #20
200004fc:	46bd      	mov	sp, r7
200004fe:	bc80      	pop	{r7}
20000500:	4770      	bx	lr
20000502:	bf00      	nop

20000504 <enc_crc>:
20000504:	b480      	push	{r7}
20000506:	b085      	sub	sp, #20
20000508:	af00      	add	r7, sp, #0
2000050a:	6078      	str	r0, [r7, #4]
2000050c:	687b      	ldr	r3, [r7, #4]
2000050e:	60bb      	str	r3, [r7, #8]
20000510:	2300      	movs	r3, #0
20000512:	60fb      	str	r3, [r7, #12]
20000514:	e006      	b.n	20000524 <enc_crc+0x20>
20000516:	68fa      	ldr	r2, [r7, #12]
20000518:	68bb      	ldr	r3, [r7, #8]
2000051a:	4053      	eors	r3, r2
2000051c:	60fb      	str	r3, [r7, #12]
2000051e:	68bb      	ldr	r3, [r7, #8]
20000520:	085b      	lsrs	r3, r3, #1
20000522:	60bb      	str	r3, [r7, #8]
20000524:	68bb      	ldr	r3, [r7, #8]
20000526:	2b00      	cmp	r3, #0
20000528:	d1f5      	bne.n	20000516 <enc_crc+0x12>
2000052a:	68fb      	ldr	r3, [r7, #12]
2000052c:	f003 0301 	and.w	r3, r3, #1
20000530:	2b00      	cmp	r3, #0
20000532:	d107      	bne.n	20000544 <enc_crc+0x40>
20000534:	687b      	ldr	r3, [r7, #4]
20000536:	f3c3 030b 	ubfx	r3, r3, #0, #12
2000053a:	4a06      	ldr	r2, [pc, #24]	; (20000554 <enc_crc+0x50>)
2000053c:	6013      	str	r3, [r2, #0]
2000053e:	4b05      	ldr	r3, [pc, #20]	; (20000554 <enc_crc+0x50>)
20000540:	681b      	ldr	r3, [r3, #0]
20000542:	2b00      	cmp	r3, #0
20000544:	4b03      	ldr	r3, [pc, #12]	; (20000554 <enc_crc+0x50>)
20000546:	681b      	ldr	r3, [r3, #0]
20000548:	4618      	mov	r0, r3
2000054a:	3714      	adds	r7, #20
2000054c:	46bd      	mov	sp, r7
2000054e:	bc80      	pop	{r7}
20000550:	4770      	bx	lr
20000552:	bf00      	nop
20000554:	20002ea0 	.word	0x20002ea0

20000558 <dac_init>:
20000558:	b480      	push	{r7}
2000055a:	af00      	add	r7, sp, #0
2000055c:	4a07      	ldr	r2, [pc, #28]	; (2000057c <dac_init+0x24>)
2000055e:	4b07      	ldr	r3, [pc, #28]	; (2000057c <dac_init+0x24>)
20000560:	69db      	ldr	r3, [r3, #28]
20000562:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
20000566:	61d3      	str	r3, [r2, #28]
20000568:	4a05      	ldr	r2, [pc, #20]	; (20000580 <dac_init+0x28>)
2000056a:	4b05      	ldr	r3, [pc, #20]	; (20000580 <dac_init+0x28>)
2000056c:	681b      	ldr	r3, [r3, #0]
2000056e:	f043 030c 	orr.w	r3, r3, #12
20000572:	6013      	str	r3, [r2, #0]
20000574:	bf00      	nop
20000576:	46bd      	mov	sp, r7
20000578:	bc80      	pop	{r7}
2000057a:	4770      	bx	lr
2000057c:	40020000 	.word	0x40020000
20000580:	40090000 	.word	0x40090000

20000584 <encoder_start>:
20000584:	b480      	push	{r7}
20000586:	af00      	add	r7, sp, #0
20000588:	4b03      	ldr	r3, [pc, #12]	; (20000598 <encoder_start+0x14>)
2000058a:	f240 5255 	movw	r2, #1365	; 0x555
2000058e:	609a      	str	r2, [r3, #8]
20000590:	bf00      	nop
20000592:	46bd      	mov	sp, r7
20000594:	bc80      	pop	{r7}
20000596:	4770      	bx	lr
20000598:	40040000 	.word	0x40040000

2000059c <ADC_Handler>:
2000059c:	b480      	push	{r7}
2000059e:	af00      	add	r7, sp, #0
200005a0:	4b02      	ldr	r3, [pc, #8]	; (200005ac <ADC_Handler+0x10>)
200005a2:	699b      	ldr	r3, [r3, #24]
200005a4:	bf00      	nop
200005a6:	46bd      	mov	sp, r7
200005a8:	bc80      	pop	{r7}
200005aa:	4770      	bx	lr
200005ac:	40088000 	.word	0x40088000

200005b0 <TIMER1_Handler>:
200005b0:	b480      	push	{r7}
200005b2:	af00      	add	r7, sp, #0
200005b4:	4b03      	ldr	r3, [pc, #12]	; (200005c4 <TIMER1_Handler+0x14>)
200005b6:	2200      	movs	r2, #0
200005b8:	655a      	str	r2, [r3, #84]	; 0x54
200005ba:	bf00      	nop
200005bc:	46bd      	mov	sp, r7
200005be:	bc80      	pop	{r7}
200005c0:	4770      	bx	lr
200005c2:	bf00      	nop
200005c4:	40070000 	.word	0x40070000

200005c8 <TIMER3_Handler>:
200005c8:	b580      	push	{r7, lr}
200005ca:	af00      	add	r7, sp, #0
200005cc:	4b04      	ldr	r3, [pc, #16]	; (200005e0 <TIMER3_Handler+0x18>)
200005ce:	2200      	movs	r2, #0
200005d0:	655a      	str	r2, [r3, #84]	; 0x54
200005d2:	f7ff ffd7 	bl	20000584 <encoder_start>
200005d6:	f001 f831 	bl	2000163c <adc_dma_start>
200005da:	bf00      	nop
200005dc:	bd80      	pop	{r7, pc}
200005de:	bf00      	nop
200005e0:	40080000 	.word	0x40080000

200005e4 <get_phase>:
200005e4:	b580      	push	{r7, lr}
200005e6:	af00      	add	r7, sp, #0
200005e8:	4b0a      	ldr	r3, [pc, #40]	; (20000614 <get_phase+0x30>)
200005ea:	f240 5255 	movw	r2, #1365	; 0x555
200005ee:	609a      	str	r2, [r3, #8]
200005f0:	bf00      	nop
200005f2:	4b08      	ldr	r3, [pc, #32]	; (20000614 <get_phase+0x30>)
200005f4:	68db      	ldr	r3, [r3, #12]
200005f6:	f003 0304 	and.w	r3, r3, #4
200005fa:	2b00      	cmp	r3, #0
200005fc:	d0f9      	beq.n	200005f2 <get_phase+0xe>
200005fe:	4b05      	ldr	r3, [pc, #20]	; (20000614 <get_phase+0x30>)
20000600:	689b      	ldr	r3, [r3, #8]
20000602:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000606:	4618      	mov	r0, r3
20000608:	f7ff ff62 	bl	200004d0 <g2b>
2000060c:	4603      	mov	r3, r0
2000060e:	4618      	mov	r0, r3
20000610:	bd80      	pop	{r7, pc}
20000612:	bf00      	nop
20000614:	40040000 	.word	0x40040000

20000618 <pwm_seta>:
20000618:	b480      	push	{r7}
2000061a:	b083      	sub	sp, #12
2000061c:	af00      	add	r7, sp, #0
2000061e:	6078      	str	r0, [r7, #4]
20000620:	4a04      	ldr	r2, [pc, #16]	; (20000634 <pwm_seta+0x1c>)
20000622:	687b      	ldr	r3, [r7, #4]
20000624:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000628:	6113      	str	r3, [r2, #16]
2000062a:	bf00      	nop
2000062c:	370c      	adds	r7, #12
2000062e:	46bd      	mov	sp, r7
20000630:	bc80      	pop	{r7}
20000632:	4770      	bx	lr
20000634:	40080000 	.word	0x40080000

20000638 <pwm_setb>:
20000638:	b480      	push	{r7}
2000063a:	b083      	sub	sp, #12
2000063c:	af00      	add	r7, sp, #0
2000063e:	6078      	str	r0, [r7, #4]
20000640:	4a04      	ldr	r2, [pc, #16]	; (20000654 <pwm_setb+0x1c>)
20000642:	687b      	ldr	r3, [r7, #4]
20000644:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000648:	6153      	str	r3, [r2, #20]
2000064a:	bf00      	nop
2000064c:	370c      	adds	r7, #12
2000064e:	46bd      	mov	sp, r7
20000650:	bc80      	pop	{r7}
20000652:	4770      	bx	lr
20000654:	40080000 	.word	0x40080000

20000658 <pwm_setc>:
20000658:	b480      	push	{r7}
2000065a:	b083      	sub	sp, #12
2000065c:	af00      	add	r7, sp, #0
2000065e:	6078      	str	r0, [r7, #4]
20000660:	4a04      	ldr	r2, [pc, #16]	; (20000674 <pwm_setc+0x1c>)
20000662:	687b      	ldr	r3, [r7, #4]
20000664:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000668:	6193      	str	r3, [r2, #24]
2000066a:	bf00      	nop
2000066c:	370c      	adds	r7, #12
2000066e:	46bd      	mov	sp, r7
20000670:	bc80      	pop	{r7}
20000672:	4770      	bx	lr
20000674:	40080000 	.word	0x40080000

20000678 <update_telemetry>:
20000678:	b480      	push	{r7}
2000067a:	b083      	sub	sp, #12
2000067c:	af00      	add	r7, sp, #0
2000067e:	4b49      	ldr	r3, [pc, #292]	; (200007a4 <update_telemetry+0x12c>)
20000680:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20000682:	f003 0302 	and.w	r3, r3, #2
20000686:	2b00      	cmp	r3, #0
20000688:	d075      	beq.n	20000776 <update_telemetry+0xfe>
2000068a:	4b46      	ldr	r3, [pc, #280]	; (200007a4 <update_telemetry+0x12c>)
2000068c:	2200      	movs	r2, #0
2000068e:	655a      	str	r2, [r3, #84]	; 0x54
20000690:	4a45      	ldr	r2, [pc, #276]	; (200007a8 <update_telemetry+0x130>)
20000692:	4b45      	ldr	r3, [pc, #276]	; (200007a8 <update_telemetry+0x130>)
20000694:	681b      	ldr	r3, [r3, #0]
20000696:	f043 0301 	orr.w	r3, r3, #1
2000069a:	6013      	str	r3, [r2, #0]
2000069c:	4a43      	ldr	r2, [pc, #268]	; (200007ac <update_telemetry+0x134>)
2000069e:	4b43      	ldr	r3, [pc, #268]	; (200007ac <update_telemetry+0x134>)
200006a0:	699b      	ldr	r3, [r3, #24]
200006a2:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200006a6:	6193      	str	r3, [r2, #24]
200006a8:	4b3e      	ldr	r3, [pc, #248]	; (200007a4 <update_telemetry+0x12c>)
200006aa:	695b      	ldr	r3, [r3, #20]
200006ac:	b29b      	uxth	r3, r3
200006ae:	f503 7396 	add.w	r3, r3, #300	; 0x12c
200006b2:	80fb      	strh	r3, [r7, #6]
200006b4:	88fb      	ldrh	r3, [r7, #6]
200006b6:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
200006ba:	d205      	bcs.n	200006c8 <update_telemetry+0x50>
200006bc:	4a39      	ldr	r2, [pc, #228]	; (200007a4 <update_telemetry+0x12c>)
200006be:	4b39      	ldr	r3, [pc, #228]	; (200007a4 <update_telemetry+0x12c>)
200006c0:	681b      	ldr	r3, [r3, #0]
200006c2:	3301      	adds	r3, #1
200006c4:	6013      	str	r3, [r2, #0]
200006c6:	e008      	b.n	200006da <update_telemetry+0x62>
200006c8:	88fb      	ldrh	r3, [r7, #6]
200006ca:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
200006ce:	d904      	bls.n	200006da <update_telemetry+0x62>
200006d0:	4a34      	ldr	r2, [pc, #208]	; (200007a4 <update_telemetry+0x12c>)
200006d2:	4b34      	ldr	r3, [pc, #208]	; (200007a4 <update_telemetry+0x12c>)
200006d4:	681b      	ldr	r3, [r3, #0]
200006d6:	3b01      	subs	r3, #1
200006d8:	6013      	str	r3, [r2, #0]
200006da:	4b35      	ldr	r3, [pc, #212]	; (200007b0 <update_telemetry+0x138>)
200006dc:	681a      	ldr	r2, [r3, #0]
200006de:	4b35      	ldr	r3, [pc, #212]	; (200007b4 <update_telemetry+0x13c>)
200006e0:	681b      	ldr	r3, [r3, #0]
200006e2:	1ad3      	subs	r3, r2, r3
200006e4:	4a34      	ldr	r2, [pc, #208]	; (200007b8 <update_telemetry+0x140>)
200006e6:	fb82 1203 	smull	r1, r2, r2, r3
200006ea:	441a      	add	r2, r3
200006ec:	1152      	asrs	r2, r2, #5
200006ee:	17db      	asrs	r3, r3, #31
200006f0:	1ad3      	subs	r3, r2, r3
200006f2:	80bb      	strh	r3, [r7, #4]
200006f4:	2300      	movs	r3, #0
200006f6:	70fb      	strb	r3, [r7, #3]
200006f8:	4b30      	ldr	r3, [pc, #192]	; (200007bc <update_telemetry+0x144>)
200006fa:	4a31      	ldr	r2, [pc, #196]	; (200007c0 <update_telemetry+0x148>)
200006fc:	6812      	ldr	r2, [r2, #0]
200006fe:	601a      	str	r2, [r3, #0]
20000700:	b2d2      	uxtb	r2, r2
20000702:	78fb      	ldrb	r3, [r7, #3]
20000704:	4053      	eors	r3, r2
20000706:	70fb      	strb	r3, [r7, #3]
20000708:	4a2c      	ldr	r2, [pc, #176]	; (200007bc <update_telemetry+0x144>)
2000070a:	4b2d      	ldr	r3, [pc, #180]	; (200007c0 <update_telemetry+0x148>)
2000070c:	681b      	ldr	r3, [r3, #0]
2000070e:	121b      	asrs	r3, r3, #8
20000710:	6013      	str	r3, [r2, #0]
20000712:	b2da      	uxtb	r2, r3
20000714:	78fb      	ldrb	r3, [r7, #3]
20000716:	4053      	eors	r3, r2
20000718:	70fb      	strb	r3, [r7, #3]
2000071a:	4a28      	ldr	r2, [pc, #160]	; (200007bc <update_telemetry+0x144>)
2000071c:	f9b7 3004 	ldrsh.w	r3, [r7, #4]
20000720:	6013      	str	r3, [r2, #0]
20000722:	b2da      	uxtb	r2, r3
20000724:	78fb      	ldrb	r3, [r7, #3]
20000726:	4053      	eors	r3, r2
20000728:	70fb      	strb	r3, [r7, #3]
2000072a:	4a24      	ldr	r2, [pc, #144]	; (200007bc <update_telemetry+0x144>)
2000072c:	f9b7 3004 	ldrsh.w	r3, [r7, #4]
20000730:	121b      	asrs	r3, r3, #8
20000732:	b21b      	sxth	r3, r3
20000734:	6013      	str	r3, [r2, #0]
20000736:	b2da      	uxtb	r2, r3
20000738:	78fb      	ldrb	r3, [r7, #3]
2000073a:	4053      	eors	r3, r2
2000073c:	70fb      	strb	r3, [r7, #3]
2000073e:	4b1f      	ldr	r3, [pc, #124]	; (200007bc <update_telemetry+0x144>)
20000740:	4a20      	ldr	r2, [pc, #128]	; (200007c4 <update_telemetry+0x14c>)
20000742:	6812      	ldr	r2, [r2, #0]
20000744:	601a      	str	r2, [r3, #0]
20000746:	b2d2      	uxtb	r2, r2
20000748:	78fb      	ldrb	r3, [r7, #3]
2000074a:	4053      	eors	r3, r2
2000074c:	70fb      	strb	r3, [r7, #3]
2000074e:	4a1b      	ldr	r2, [pc, #108]	; (200007bc <update_telemetry+0x144>)
20000750:	4b1c      	ldr	r3, [pc, #112]	; (200007c4 <update_telemetry+0x14c>)
20000752:	681b      	ldr	r3, [r3, #0]
20000754:	121b      	asrs	r3, r3, #8
20000756:	6013      	str	r3, [r2, #0]
20000758:	b2da      	uxtb	r2, r3
2000075a:	78fb      	ldrb	r3, [r7, #3]
2000075c:	4053      	eors	r3, r2
2000075e:	70fb      	strb	r3, [r7, #3]
20000760:	4b16      	ldr	r3, [pc, #88]	; (200007bc <update_telemetry+0x144>)
20000762:	4a19      	ldr	r2, [pc, #100]	; (200007c8 <update_telemetry+0x150>)
20000764:	7812      	ldrb	r2, [r2, #0]
20000766:	601a      	str	r2, [r3, #0]
20000768:	b2d2      	uxtb	r2, r2
2000076a:	78fb      	ldrb	r3, [r7, #3]
2000076c:	4053      	eors	r3, r2
2000076e:	70fb      	strb	r3, [r7, #3]
20000770:	4a12      	ldr	r2, [pc, #72]	; (200007bc <update_telemetry+0x144>)
20000772:	78fb      	ldrb	r3, [r7, #3]
20000774:	6013      	str	r3, [r2, #0]
20000776:	4b11      	ldr	r3, [pc, #68]	; (200007bc <update_telemetry+0x144>)
20000778:	699b      	ldr	r3, [r3, #24]
2000077a:	f003 0308 	and.w	r3, r3, #8
2000077e:	2b00      	cmp	r3, #0
20000780:	d10b      	bne.n	2000079a <update_telemetry+0x122>
20000782:	4a09      	ldr	r2, [pc, #36]	; (200007a8 <update_telemetry+0x130>)
20000784:	4b08      	ldr	r3, [pc, #32]	; (200007a8 <update_telemetry+0x130>)
20000786:	681b      	ldr	r3, [r3, #0]
20000788:	f023 0301 	bic.w	r3, r3, #1
2000078c:	6013      	str	r3, [r2, #0]
2000078e:	4a07      	ldr	r2, [pc, #28]	; (200007ac <update_telemetry+0x134>)
20000790:	4b06      	ldr	r3, [pc, #24]	; (200007ac <update_telemetry+0x134>)
20000792:	699b      	ldr	r3, [r3, #24]
20000794:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
20000798:	6193      	str	r3, [r2, #24]
2000079a:	bf00      	nop
2000079c:	370c      	adds	r7, #12
2000079e:	46bd      	mov	sp, r7
200007a0:	bc80      	pop	{r7}
200007a2:	4770      	bx	lr
200007a4:	40070000 	.word	0x40070000
200007a8:	400a8000 	.word	0x400a8000
200007ac:	400b0000 	.word	0x400b0000
200007b0:	20002e28 	.word	0x20002e28
200007b4:	20002e2c 	.word	0x20002e2c
200007b8:	8fb823ef 	.word	0x8fb823ef
200007bc:	40030000 	.word	0x40030000
200007c0:	20002e38 	.word	0x20002e38
200007c4:	20002e34 	.word	0x20002e34
200007c8:	20002e3d 	.word	0x20002e3d

200007cc <update_refposition>:
200007cc:	b480      	push	{r7}
200007ce:	b089      	sub	sp, #36	; 0x24
200007d0:	af00      	add	r7, sp, #0
200007d2:	4b4f      	ldr	r3, [pc, #316]	; (20000910 <update_refposition+0x144>)
200007d4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200007d6:	f003 0310 	and.w	r3, r3, #16
200007da:	2b00      	cmp	r3, #0
200007dc:	f000 8083 	beq.w	200008e6 <update_refposition+0x11a>
200007e0:	2300      	movs	r3, #0
200007e2:	61fb      	str	r3, [r7, #28]
200007e4:	e00c      	b.n	20000800 <update_refposition+0x34>
200007e6:	4b4a      	ldr	r3, [pc, #296]	; (20000910 <update_refposition+0x144>)
200007e8:	681b      	ldr	r3, [r3, #0]
200007ea:	b2d9      	uxtb	r1, r3
200007ec:	463a      	mov	r2, r7
200007ee:	69fb      	ldr	r3, [r7, #28]
200007f0:	4413      	add	r3, r2
200007f2:	460a      	mov	r2, r1
200007f4:	701a      	strb	r2, [r3, #0]
200007f6:	69fb      	ldr	r3, [r7, #28]
200007f8:	3301      	adds	r3, #1
200007fa:	f003 030f 	and.w	r3, r3, #15
200007fe:	61fb      	str	r3, [r7, #28]
20000800:	4b43      	ldr	r3, [pc, #268]	; (20000910 <update_refposition+0x144>)
20000802:	699b      	ldr	r3, [r3, #24]
20000804:	f003 0310 	and.w	r3, r3, #16
20000808:	2b00      	cmp	r3, #0
2000080a:	d0ec      	beq.n	200007e6 <update_refposition+0x1a>
2000080c:	2300      	movs	r3, #0
2000080e:	767b      	strb	r3, [r7, #25]
20000810:	463b      	mov	r3, r7
20000812:	617b      	str	r3, [r7, #20]
20000814:	697b      	ldr	r3, [r7, #20]
20000816:	1c5a      	adds	r2, r3, #1
20000818:	617a      	str	r2, [r7, #20]
2000081a:	781a      	ldrb	r2, [r3, #0]
2000081c:	7e7b      	ldrb	r3, [r7, #25]
2000081e:	4053      	eors	r3, r2
20000820:	767b      	strb	r3, [r7, #25]
20000822:	697b      	ldr	r3, [r7, #20]
20000824:	1c5a      	adds	r2, r3, #1
20000826:	617a      	str	r2, [r7, #20]
20000828:	781a      	ldrb	r2, [r3, #0]
2000082a:	7e7b      	ldrb	r3, [r7, #25]
2000082c:	4053      	eors	r3, r2
2000082e:	767b      	strb	r3, [r7, #25]
20000830:	697b      	ldr	r3, [r7, #20]
20000832:	1c5a      	adds	r2, r3, #1
20000834:	617a      	str	r2, [r7, #20]
20000836:	781a      	ldrb	r2, [r3, #0]
20000838:	7e7b      	ldrb	r3, [r7, #25]
2000083a:	4053      	eors	r3, r2
2000083c:	767b      	strb	r3, [r7, #25]
2000083e:	697b      	ldr	r3, [r7, #20]
20000840:	1c5a      	adds	r2, r3, #1
20000842:	617a      	str	r2, [r7, #20]
20000844:	781a      	ldrb	r2, [r3, #0]
20000846:	7e7b      	ldrb	r3, [r7, #25]
20000848:	4053      	eors	r3, r2
2000084a:	767b      	strb	r3, [r7, #25]
2000084c:	697b      	ldr	r3, [r7, #20]
2000084e:	1c5a      	adds	r2, r3, #1
20000850:	617a      	str	r2, [r7, #20]
20000852:	781a      	ldrb	r2, [r3, #0]
20000854:	7e7b      	ldrb	r3, [r7, #25]
20000856:	4053      	eors	r3, r2
20000858:	767b      	strb	r3, [r7, #25]
2000085a:	697b      	ldr	r3, [r7, #20]
2000085c:	1c5a      	adds	r2, r3, #1
2000085e:	617a      	str	r2, [r7, #20]
20000860:	781a      	ldrb	r2, [r3, #0]
20000862:	7e7b      	ldrb	r3, [r7, #25]
20000864:	4053      	eors	r3, r2
20000866:	767b      	strb	r3, [r7, #25]
20000868:	697b      	ldr	r3, [r7, #20]
2000086a:	1c5a      	adds	r2, r3, #1
2000086c:	617a      	str	r2, [r7, #20]
2000086e:	781a      	ldrb	r2, [r3, #0]
20000870:	7e7b      	ldrb	r3, [r7, #25]
20000872:	4053      	eors	r3, r2
20000874:	767b      	strb	r3, [r7, #25]
20000876:	697b      	ldr	r3, [r7, #20]
20000878:	1c5a      	adds	r2, r3, #1
2000087a:	617a      	str	r2, [r7, #20]
2000087c:	781a      	ldrb	r2, [r3, #0]
2000087e:	7e7b      	ldrb	r3, [r7, #25]
20000880:	4053      	eors	r3, r2
20000882:	767b      	strb	r3, [r7, #25]
20000884:	7e7b      	ldrb	r3, [r7, #25]
20000886:	2b00      	cmp	r3, #0
20000888:	d12d      	bne.n	200008e6 <update_refposition+0x11a>
2000088a:	783b      	ldrb	r3, [r7, #0]
2000088c:	b29a      	uxth	r2, r3
2000088e:	787b      	ldrb	r3, [r7, #1]
20000890:	b29b      	uxth	r3, r3
20000892:	021b      	lsls	r3, r3, #8
20000894:	b29b      	uxth	r3, r3
20000896:	4413      	add	r3, r2
20000898:	b29b      	uxth	r3, r3
2000089a:	837b      	strh	r3, [r7, #26]
2000089c:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200008a0:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
200008a4:	db03      	blt.n	200008ae <update_refposition+0xe2>
200008a6:	f240 73ff 	movw	r3, #2047	; 0x7ff
200008aa:	837b      	strh	r3, [r7, #26]
200008ac:	bf00      	nop
200008ae:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200008b2:	f513 6f00 	cmn.w	r3, #2048	; 0x800
200008b6:	da03      	bge.n	200008c0 <update_refposition+0xf4>
200008b8:	f44f 4378 	mov.w	r3, #63488	; 0xf800
200008bc:	837b      	strh	r3, [r7, #26]
200008be:	bf00      	nop
200008c0:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200008c4:	4a13      	ldr	r2, [pc, #76]	; (20000914 <update_refposition+0x148>)
200008c6:	6013      	str	r3, [r2, #0]
200008c8:	f9b7 201a 	ldrsh.w	r2, [r7, #26]
200008cc:	4613      	mov	r3, r2
200008ce:	00db      	lsls	r3, r3, #3
200008d0:	1a9b      	subs	r3, r3, r2
200008d2:	00db      	lsls	r3, r3, #3
200008d4:	441a      	add	r2, r3
200008d6:	4b10      	ldr	r3, [pc, #64]	; (20000918 <update_refposition+0x14c>)
200008d8:	681b      	ldr	r3, [r3, #0]
200008da:	4413      	add	r3, r2
200008dc:	4a0f      	ldr	r2, [pc, #60]	; (2000091c <update_refposition+0x150>)
200008de:	6013      	str	r3, [r2, #0]
200008e0:	79ba      	ldrb	r2, [r7, #6]
200008e2:	4b0f      	ldr	r3, [pc, #60]	; (20000920 <update_refposition+0x154>)
200008e4:	701a      	strb	r2, [r3, #0]
200008e6:	4b0a      	ldr	r3, [pc, #40]	; (20000910 <update_refposition+0x144>)
200008e8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200008ea:	f003 0340 	and.w	r3, r3, #64	; 0x40
200008ee:	2b00      	cmp	r3, #0
200008f0:	d009      	beq.n	20000906 <update_refposition+0x13a>
200008f2:	e002      	b.n	200008fa <update_refposition+0x12e>
200008f4:	4b06      	ldr	r3, [pc, #24]	; (20000910 <update_refposition+0x144>)
200008f6:	681b      	ldr	r3, [r3, #0]
200008f8:	74fb      	strb	r3, [r7, #19]
200008fa:	4b05      	ldr	r3, [pc, #20]	; (20000910 <update_refposition+0x144>)
200008fc:	699b      	ldr	r3, [r3, #24]
200008fe:	f003 0310 	and.w	r3, r3, #16
20000902:	2b00      	cmp	r3, #0
20000904:	d0f6      	beq.n	200008f4 <update_refposition+0x128>
20000906:	bf00      	nop
20000908:	3724      	adds	r7, #36	; 0x24
2000090a:	46bd      	mov	sp, r7
2000090c:	bc80      	pop	{r7}
2000090e:	4770      	bx	lr
20000910:	40030000 	.word	0x40030000
20000914:	20002e38 	.word	0x20002e38
20000918:	20002e2c 	.word	0x20002e2c
2000091c:	20002e00 	.word	0x20002e00
20000920:	20002e3c 	.word	0x20002e3c

20000924 <fault_positioning_proc>:
20000924:	b580      	push	{r7, lr}
20000926:	af00      	add	r7, sp, #0
20000928:	4b04      	ldr	r3, [pc, #16]	; (2000093c <fault_positioning_proc+0x18>)
2000092a:	2201      	movs	r2, #1
2000092c:	701a      	strb	r2, [r3, #0]
2000092e:	f7ff fd6b 	bl	20000408 <motor_off>
20000932:	f7ff fd4d 	bl	200003d0 <brake_on>
20000936:	2300      	movs	r3, #0
20000938:	4618      	mov	r0, r3
2000093a:	bd80      	pop	{r7, pc}
2000093c:	20002e3d 	.word	0x20002e3d

20000940 <remote_positioning_proc>:
20000940:	b580      	push	{r7, lr}
20000942:	b082      	sub	sp, #8
20000944:	af00      	add	r7, sp, #0
20000946:	4b0c      	ldr	r3, [pc, #48]	; (20000978 <remote_positioning_proc+0x38>)
20000948:	781b      	ldrb	r3, [r3, #0]
2000094a:	f043 0302 	orr.w	r3, r3, #2
2000094e:	b2da      	uxtb	r2, r3
20000950:	4b09      	ldr	r3, [pc, #36]	; (20000978 <remote_positioning_proc+0x38>)
20000952:	701a      	strb	r2, [r3, #0]
20000954:	4b09      	ldr	r3, [pc, #36]	; (2000097c <remote_positioning_proc+0x3c>)
20000956:	681a      	ldr	r2, [r3, #0]
20000958:	4b09      	ldr	r3, [pc, #36]	; (20000980 <remote_positioning_proc+0x40>)
2000095a:	681b      	ldr	r3, [r3, #0]
2000095c:	1ad3      	subs	r3, r2, r3
2000095e:	607b      	str	r3, [r7, #4]
20000960:	2200      	movs	r2, #0
20000962:	6879      	ldr	r1, [r7, #4]
20000964:	4807      	ldr	r0, [pc, #28]	; (20000984 <remote_positioning_proc+0x44>)
20000966:	f000 f9c7 	bl	20000cf8 <reg_update>
2000096a:	4b06      	ldr	r3, [pc, #24]	; (20000984 <remote_positioning_proc+0x44>)
2000096c:	68db      	ldr	r3, [r3, #12]
2000096e:	131b      	asrs	r3, r3, #12
20000970:	4618      	mov	r0, r3
20000972:	3708      	adds	r7, #8
20000974:	46bd      	mov	sp, r7
20000976:	bd80      	pop	{r7, pc}
20000978:	20002e3d 	.word	0x20002e3d
2000097c:	20002e00 	.word	0x20002e00
20000980:	20002e28 	.word	0x20002e28
20000984:	20002e74 	.word	0x20002e74

20000988 <wait_for_launch_proc>:
20000988:	b580      	push	{r7, lr}
2000098a:	af00      	add	r7, sp, #0
2000098c:	4b10      	ldr	r3, [pc, #64]	; (200009d0 <wait_for_launch_proc+0x48>)
2000098e:	781b      	ldrb	r3, [r3, #0]
20000990:	f043 0308 	orr.w	r3, r3, #8
20000994:	b2da      	uxtb	r2, r3
20000996:	4b0e      	ldr	r3, [pc, #56]	; (200009d0 <wait_for_launch_proc+0x48>)
20000998:	701a      	strb	r2, [r3, #0]
2000099a:	4b0e      	ldr	r3, [pc, #56]	; (200009d4 <wait_for_launch_proc+0x4c>)
2000099c:	781b      	ldrb	r3, [r3, #0]
2000099e:	f003 0340 	and.w	r3, r3, #64	; 0x40
200009a2:	2b00      	cmp	r3, #0
200009a4:	d104      	bne.n	200009b0 <wait_for_launch_proc+0x28>
200009a6:	4b0c      	ldr	r3, [pc, #48]	; (200009d8 <wait_for_launch_proc+0x50>)
200009a8:	4a0c      	ldr	r2, [pc, #48]	; (200009dc <wait_for_launch_proc+0x54>)
200009aa:	601a      	str	r2, [r3, #0]
200009ac:	2300      	movs	r3, #0
200009ae:	e00d      	b.n	200009cc <wait_for_launch_proc+0x44>
200009b0:	f7ff fd38 	bl	20000424 <motor_on>
200009b4:	4b07      	ldr	r3, [pc, #28]	; (200009d4 <wait_for_launch_proc+0x4c>)
200009b6:	781b      	ldrb	r3, [r3, #0]
200009b8:	f003 0304 	and.w	r3, r3, #4
200009bc:	2b00      	cmp	r3, #0
200009be:	d004      	beq.n	200009ca <wait_for_launch_proc+0x42>
200009c0:	4b05      	ldr	r3, [pc, #20]	; (200009d8 <wait_for_launch_proc+0x50>)
200009c2:	4a07      	ldr	r2, [pc, #28]	; (200009e0 <wait_for_launch_proc+0x58>)
200009c4:	601a      	str	r2, [r3, #0]
200009c6:	f7ff fd11 	bl	200003ec <brake_off>
200009ca:	2300      	movs	r3, #0
200009cc:	4618      	mov	r0, r3
200009ce:	bd80      	pop	{r7, pc}
200009d0:	20002e3d 	.word	0x20002e3d
200009d4:	20002e3c 	.word	0x20002e3c
200009d8:	20002e40 	.word	0x20002e40
200009dc:	20000925 	.word	0x20000925
200009e0:	20000941 	.word	0x20000941

200009e4 <wait_positioning_proc>:
200009e4:	b580      	push	{r7, lr}
200009e6:	af00      	add	r7, sp, #0
200009e8:	4b13      	ldr	r3, [pc, #76]	; (20000a38 <wait_positioning_proc+0x54>)
200009ea:	2210      	movs	r2, #16
200009ec:	701a      	strb	r2, [r3, #0]
200009ee:	4b13      	ldr	r3, [pc, #76]	; (20000a3c <wait_positioning_proc+0x58>)
200009f0:	781b      	ldrb	r3, [r3, #0]
200009f2:	f003 0310 	and.w	r3, r3, #16
200009f6:	2b00      	cmp	r3, #0
200009f8:	d01b      	beq.n	20000a32 <wait_positioning_proc+0x4e>
200009fa:	4b11      	ldr	r3, [pc, #68]	; (20000a40 <wait_positioning_proc+0x5c>)
200009fc:	681b      	ldr	r3, [r3, #0]
200009fe:	4a11      	ldr	r2, [pc, #68]	; (20000a44 <wait_positioning_proc+0x60>)
20000a00:	6013      	str	r3, [r2, #0]
20000a02:	4b10      	ldr	r3, [pc, #64]	; (20000a44 <wait_positioning_proc+0x60>)
20000a04:	681b      	ldr	r3, [r3, #0]
20000a06:	f503 539c 	add.w	r3, r3, #4992	; 0x1380
20000a0a:	3308      	adds	r3, #8
20000a0c:	4a0e      	ldr	r2, [pc, #56]	; (20000a48 <wait_positioning_proc+0x64>)
20000a0e:	6013      	str	r3, [r2, #0]
20000a10:	4b0e      	ldr	r3, [pc, #56]	; (20000a4c <wait_positioning_proc+0x68>)
20000a12:	4a0f      	ldr	r2, [pc, #60]	; (20000a50 <wait_positioning_proc+0x6c>)
20000a14:	601a      	str	r2, [r3, #0]
20000a16:	4b0f      	ldr	r3, [pc, #60]	; (20000a54 <wait_positioning_proc+0x70>)
20000a18:	2200      	movs	r2, #0
20000a1a:	601a      	str	r2, [r3, #0]
20000a1c:	4b06      	ldr	r3, [pc, #24]	; (20000a38 <wait_positioning_proc+0x54>)
20000a1e:	781b      	ldrb	r3, [r3, #0]
20000a20:	f043 0308 	orr.w	r3, r3, #8
20000a24:	b2da      	uxtb	r2, r3
20000a26:	4b04      	ldr	r3, [pc, #16]	; (20000a38 <wait_positioning_proc+0x54>)
20000a28:	701a      	strb	r2, [r3, #0]
20000a2a:	f7ff fcfb 	bl	20000424 <motor_on>
20000a2e:	f7ff fcdd 	bl	200003ec <brake_off>
20000a32:	2300      	movs	r3, #0
20000a34:	4618      	mov	r0, r3
20000a36:	bd80      	pop	{r7, pc}
20000a38:	20002e3d 	.word	0x20002e3d
20000a3c:	20002e3c 	.word	0x20002e3c
20000a40:	20002e28 	.word	0x20002e28
20000a44:	20002e2c 	.word	0x20002e2c
20000a48:	20002e00 	.word	0x20002e00
20000a4c:	20002e40 	.word	0x20002e40
20000a50:	20000b89 	.word	0x20000b89
20000a54:	20002e9c 	.word	0x20002e9c

20000a58 <test3_positioning_proc>:
20000a58:	b580      	push	{r7, lr}
20000a5a:	b082      	sub	sp, #8
20000a5c:	af00      	add	r7, sp, #0
20000a5e:	4b1f      	ldr	r3, [pc, #124]	; (20000adc <test3_positioning_proc+0x84>)
20000a60:	681b      	ldr	r3, [r3, #0]
20000a62:	f241 3287 	movw	r2, #4999	; 0x1387
20000a66:	4293      	cmp	r3, r2
20000a68:	dd04      	ble.n	20000a74 <test3_positioning_proc+0x1c>
20000a6a:	4b1d      	ldr	r3, [pc, #116]	; (20000ae0 <test3_positioning_proc+0x88>)
20000a6c:	4a1d      	ldr	r2, [pc, #116]	; (20000ae4 <test3_positioning_proc+0x8c>)
20000a6e:	601a      	str	r2, [r3, #0]
20000a70:	2300      	movs	r3, #0
20000a72:	e02e      	b.n	20000ad2 <test3_positioning_proc+0x7a>
20000a74:	4b19      	ldr	r3, [pc, #100]	; (20000adc <test3_positioning_proc+0x84>)
20000a76:	681b      	ldr	r3, [r3, #0]
20000a78:	3301      	adds	r3, #1
20000a7a:	4a18      	ldr	r2, [pc, #96]	; (20000adc <test3_positioning_proc+0x84>)
20000a7c:	6013      	str	r3, [r2, #0]
20000a7e:	4b1a      	ldr	r3, [pc, #104]	; (20000ae8 <test3_positioning_proc+0x90>)
20000a80:	681a      	ldr	r2, [r3, #0]
20000a82:	4b1a      	ldr	r3, [pc, #104]	; (20000aec <test3_positioning_proc+0x94>)
20000a84:	681b      	ldr	r3, [r3, #0]
20000a86:	1ad3      	subs	r3, r2, r3
20000a88:	607b      	str	r3, [r7, #4]
20000a8a:	687b      	ldr	r3, [r7, #4]
20000a8c:	f113 0f02 	cmn.w	r3, #2
20000a90:	db17      	blt.n	20000ac2 <test3_positioning_proc+0x6a>
20000a92:	687b      	ldr	r3, [r7, #4]
20000a94:	2b02      	cmp	r3, #2
20000a96:	dc14      	bgt.n	20000ac2 <test3_positioning_proc+0x6a>
20000a98:	4b10      	ldr	r3, [pc, #64]	; (20000adc <test3_positioning_proc+0x84>)
20000a9a:	681b      	ldr	r3, [r3, #0]
20000a9c:	f5b3 6f7a 	cmp.w	r3, #4000	; 0xfa0
20000aa0:	db0f      	blt.n	20000ac2 <test3_positioning_proc+0x6a>
20000aa2:	4b13      	ldr	r3, [pc, #76]	; (20000af0 <test3_positioning_proc+0x98>)
20000aa4:	681b      	ldr	r3, [r3, #0]
20000aa6:	4a10      	ldr	r2, [pc, #64]	; (20000ae8 <test3_positioning_proc+0x90>)
20000aa8:	6013      	str	r3, [r2, #0]
20000aaa:	4b0d      	ldr	r3, [pc, #52]	; (20000ae0 <test3_positioning_proc+0x88>)
20000aac:	4a11      	ldr	r2, [pc, #68]	; (20000af4 <test3_positioning_proc+0x9c>)
20000aae:	601a      	str	r2, [r3, #0]
20000ab0:	4b0a      	ldr	r3, [pc, #40]	; (20000adc <test3_positioning_proc+0x84>)
20000ab2:	2200      	movs	r2, #0
20000ab4:	601a      	str	r2, [r3, #0]
20000ab6:	f7ff fca7 	bl	20000408 <motor_off>
20000aba:	f7ff fc89 	bl	200003d0 <brake_on>
20000abe:	2300      	movs	r3, #0
20000ac0:	e007      	b.n	20000ad2 <test3_positioning_proc+0x7a>
20000ac2:	2200      	movs	r2, #0
20000ac4:	6879      	ldr	r1, [r7, #4]
20000ac6:	480c      	ldr	r0, [pc, #48]	; (20000af8 <test3_positioning_proc+0xa0>)
20000ac8:	f000 f916 	bl	20000cf8 <reg_update>
20000acc:	4b0a      	ldr	r3, [pc, #40]	; (20000af8 <test3_positioning_proc+0xa0>)
20000ace:	68db      	ldr	r3, [r3, #12]
20000ad0:	131b      	asrs	r3, r3, #12
20000ad2:	4618      	mov	r0, r3
20000ad4:	3708      	adds	r7, #8
20000ad6:	46bd      	mov	sp, r7
20000ad8:	bd80      	pop	{r7, pc}
20000ada:	bf00      	nop
20000adc:	20002e9c 	.word	0x20002e9c
20000ae0:	20002e40 	.word	0x20002e40
20000ae4:	20000925 	.word	0x20000925
20000ae8:	20002e00 	.word	0x20002e00
20000aec:	20002e28 	.word	0x20002e28
20000af0:	20002e2c 	.word	0x20002e2c
20000af4:	20000989 	.word	0x20000989
20000af8:	20002e74 	.word	0x20002e74

20000afc <test2_positioning_proc>:
20000afc:	b580      	push	{r7, lr}
20000afe:	b082      	sub	sp, #8
20000b00:	af00      	add	r7, sp, #0
20000b02:	4b19      	ldr	r3, [pc, #100]	; (20000b68 <test2_positioning_proc+0x6c>)
20000b04:	681b      	ldr	r3, [r3, #0]
20000b06:	f241 3287 	movw	r2, #4999	; 0x1387
20000b0a:	4293      	cmp	r3, r2
20000b0c:	dd04      	ble.n	20000b18 <test2_positioning_proc+0x1c>
20000b0e:	4b17      	ldr	r3, [pc, #92]	; (20000b6c <test2_positioning_proc+0x70>)
20000b10:	4a17      	ldr	r2, [pc, #92]	; (20000b70 <test2_positioning_proc+0x74>)
20000b12:	601a      	str	r2, [r3, #0]
20000b14:	2300      	movs	r3, #0
20000b16:	e023      	b.n	20000b60 <test2_positioning_proc+0x64>
20000b18:	4b13      	ldr	r3, [pc, #76]	; (20000b68 <test2_positioning_proc+0x6c>)
20000b1a:	681b      	ldr	r3, [r3, #0]
20000b1c:	3301      	adds	r3, #1
20000b1e:	4a12      	ldr	r2, [pc, #72]	; (20000b68 <test2_positioning_proc+0x6c>)
20000b20:	6013      	str	r3, [r2, #0]
20000b22:	4b14      	ldr	r3, [pc, #80]	; (20000b74 <test2_positioning_proc+0x78>)
20000b24:	681a      	ldr	r2, [r3, #0]
20000b26:	4b14      	ldr	r3, [pc, #80]	; (20000b78 <test2_positioning_proc+0x7c>)
20000b28:	681b      	ldr	r3, [r3, #0]
20000b2a:	1ad3      	subs	r3, r2, r3
20000b2c:	607b      	str	r3, [r7, #4]
20000b2e:	687b      	ldr	r3, [r7, #4]
20000b30:	f113 0f02 	cmn.w	r3, #2
20000b34:	db0c      	blt.n	20000b50 <test2_positioning_proc+0x54>
20000b36:	687b      	ldr	r3, [r7, #4]
20000b38:	2b02      	cmp	r3, #2
20000b3a:	dc09      	bgt.n	20000b50 <test2_positioning_proc+0x54>
20000b3c:	4b0f      	ldr	r3, [pc, #60]	; (20000b7c <test2_positioning_proc+0x80>)
20000b3e:	681b      	ldr	r3, [r3, #0]
20000b40:	4a0c      	ldr	r2, [pc, #48]	; (20000b74 <test2_positioning_proc+0x78>)
20000b42:	6013      	str	r3, [r2, #0]
20000b44:	4b09      	ldr	r3, [pc, #36]	; (20000b6c <test2_positioning_proc+0x70>)
20000b46:	4a0e      	ldr	r2, [pc, #56]	; (20000b80 <test2_positioning_proc+0x84>)
20000b48:	601a      	str	r2, [r3, #0]
20000b4a:	4b07      	ldr	r3, [pc, #28]	; (20000b68 <test2_positioning_proc+0x6c>)
20000b4c:	2200      	movs	r2, #0
20000b4e:	601a      	str	r2, [r3, #0]
20000b50:	2200      	movs	r2, #0
20000b52:	6879      	ldr	r1, [r7, #4]
20000b54:	480b      	ldr	r0, [pc, #44]	; (20000b84 <test2_positioning_proc+0x88>)
20000b56:	f000 f8cf 	bl	20000cf8 <reg_update>
20000b5a:	4b0a      	ldr	r3, [pc, #40]	; (20000b84 <test2_positioning_proc+0x88>)
20000b5c:	68db      	ldr	r3, [r3, #12]
20000b5e:	131b      	asrs	r3, r3, #12
20000b60:	4618      	mov	r0, r3
20000b62:	3708      	adds	r7, #8
20000b64:	46bd      	mov	sp, r7
20000b66:	bd80      	pop	{r7, pc}
20000b68:	20002e9c 	.word	0x20002e9c
20000b6c:	20002e40 	.word	0x20002e40
20000b70:	20000925 	.word	0x20000925
20000b74:	20002e00 	.word	0x20002e00
20000b78:	20002e28 	.word	0x20002e28
20000b7c:	20002e2c 	.word	0x20002e2c
20000b80:	20000a59 	.word	0x20000a59
20000b84:	20002e74 	.word	0x20002e74

20000b88 <test1_positioning_proc>:
20000b88:	b580      	push	{r7, lr}
20000b8a:	b082      	sub	sp, #8
20000b8c:	af00      	add	r7, sp, #0
20000b8e:	4b1c      	ldr	r3, [pc, #112]	; (20000c00 <test1_positioning_proc+0x78>)
20000b90:	681b      	ldr	r3, [r3, #0]
20000b92:	f241 3287 	movw	r2, #4999	; 0x1387
20000b96:	4293      	cmp	r3, r2
20000b98:	dd04      	ble.n	20000ba4 <test1_positioning_proc+0x1c>
20000b9a:	4b1a      	ldr	r3, [pc, #104]	; (20000c04 <test1_positioning_proc+0x7c>)
20000b9c:	4a1a      	ldr	r2, [pc, #104]	; (20000c08 <test1_positioning_proc+0x80>)
20000b9e:	601a      	str	r2, [r3, #0]
20000ba0:	2300      	movs	r3, #0
20000ba2:	e028      	b.n	20000bf6 <test1_positioning_proc+0x6e>
20000ba4:	4b16      	ldr	r3, [pc, #88]	; (20000c00 <test1_positioning_proc+0x78>)
20000ba6:	681b      	ldr	r3, [r3, #0]
20000ba8:	3301      	adds	r3, #1
20000baa:	4a15      	ldr	r2, [pc, #84]	; (20000c00 <test1_positioning_proc+0x78>)
20000bac:	6013      	str	r3, [r2, #0]
20000bae:	4b17      	ldr	r3, [pc, #92]	; (20000c0c <test1_positioning_proc+0x84>)
20000bb0:	681a      	ldr	r2, [r3, #0]
20000bb2:	4b17      	ldr	r3, [pc, #92]	; (20000c10 <test1_positioning_proc+0x88>)
20000bb4:	681b      	ldr	r3, [r3, #0]
20000bb6:	1ad3      	subs	r3, r2, r3
20000bb8:	607b      	str	r3, [r7, #4]
20000bba:	687b      	ldr	r3, [r7, #4]
20000bbc:	f113 0f02 	cmn.w	r3, #2
20000bc0:	db11      	blt.n	20000be6 <test1_positioning_proc+0x5e>
20000bc2:	687b      	ldr	r3, [r7, #4]
20000bc4:	2b02      	cmp	r3, #2
20000bc6:	dc0e      	bgt.n	20000be6 <test1_positioning_proc+0x5e>
20000bc8:	4b12      	ldr	r3, [pc, #72]	; (20000c14 <test1_positioning_proc+0x8c>)
20000bca:	681b      	ldr	r3, [r3, #0]
20000bcc:	f5a3 539c 	sub.w	r3, r3, #4992	; 0x1380
20000bd0:	3b08      	subs	r3, #8
20000bd2:	4a0e      	ldr	r2, [pc, #56]	; (20000c0c <test1_positioning_proc+0x84>)
20000bd4:	6013      	str	r3, [r2, #0]
20000bd6:	4b0b      	ldr	r3, [pc, #44]	; (20000c04 <test1_positioning_proc+0x7c>)
20000bd8:	4a0f      	ldr	r2, [pc, #60]	; (20000c18 <test1_positioning_proc+0x90>)
20000bda:	601a      	str	r2, [r3, #0]
20000bdc:	4b08      	ldr	r3, [pc, #32]	; (20000c00 <test1_positioning_proc+0x78>)
20000bde:	2200      	movs	r2, #0
20000be0:	601a      	str	r2, [r3, #0]
20000be2:	2300      	movs	r3, #0
20000be4:	e007      	b.n	20000bf6 <test1_positioning_proc+0x6e>
20000be6:	2200      	movs	r2, #0
20000be8:	6879      	ldr	r1, [r7, #4]
20000bea:	480c      	ldr	r0, [pc, #48]	; (20000c1c <test1_positioning_proc+0x94>)
20000bec:	f000 f884 	bl	20000cf8 <reg_update>
20000bf0:	4b0a      	ldr	r3, [pc, #40]	; (20000c1c <test1_positioning_proc+0x94>)
20000bf2:	68db      	ldr	r3, [r3, #12]
20000bf4:	131b      	asrs	r3, r3, #12
20000bf6:	4618      	mov	r0, r3
20000bf8:	3708      	adds	r7, #8
20000bfa:	46bd      	mov	sp, r7
20000bfc:	bd80      	pop	{r7, pc}
20000bfe:	bf00      	nop
20000c00:	20002e9c 	.word	0x20002e9c
20000c04:	20002e40 	.word	0x20002e40
20000c08:	20000925 	.word	0x20000925
20000c0c:	20002e00 	.word	0x20002e00
20000c10:	20002e28 	.word	0x20002e28
20000c14:	20002e2c 	.word	0x20002e2c
20000c18:	20000afd 	.word	0x20000afd
20000c1c:	20002e74 	.word	0x20002e74

20000c20 <start_positioning_proc>:
20000c20:	b580      	push	{r7, lr}
20000c22:	b082      	sub	sp, #8
20000c24:	af00      	add	r7, sp, #0
20000c26:	4b1e      	ldr	r3, [pc, #120]	; (20000ca0 <start_positioning_proc+0x80>)
20000c28:	681b      	ldr	r3, [r3, #0]
20000c2a:	f241 3287 	movw	r2, #4999	; 0x1387
20000c2e:	4293      	cmp	r3, r2
20000c30:	dd04      	ble.n	20000c3c <start_positioning_proc+0x1c>
20000c32:	4b1c      	ldr	r3, [pc, #112]	; (20000ca4 <start_positioning_proc+0x84>)
20000c34:	4a1c      	ldr	r2, [pc, #112]	; (20000ca8 <start_positioning_proc+0x88>)
20000c36:	601a      	str	r2, [r3, #0]
20000c38:	2300      	movs	r3, #0
20000c3a:	e02c      	b.n	20000c96 <start_positioning_proc+0x76>
20000c3c:	4b18      	ldr	r3, [pc, #96]	; (20000ca0 <start_positioning_proc+0x80>)
20000c3e:	681b      	ldr	r3, [r3, #0]
20000c40:	3301      	adds	r3, #1
20000c42:	4a17      	ldr	r2, [pc, #92]	; (20000ca0 <start_positioning_proc+0x80>)
20000c44:	6013      	str	r3, [r2, #0]
20000c46:	4b19      	ldr	r3, [pc, #100]	; (20000cac <start_positioning_proc+0x8c>)
20000c48:	681a      	ldr	r2, [r3, #0]
20000c4a:	4b19      	ldr	r3, [pc, #100]	; (20000cb0 <start_positioning_proc+0x90>)
20000c4c:	681b      	ldr	r3, [r3, #0]
20000c4e:	1ad3      	subs	r3, r2, r3
20000c50:	607b      	str	r3, [r7, #4]
20000c52:	687b      	ldr	r3, [r7, #4]
20000c54:	f113 0f02 	cmn.w	r3, #2
20000c58:	db15      	blt.n	20000c86 <start_positioning_proc+0x66>
20000c5a:	687b      	ldr	r3, [r7, #4]
20000c5c:	2b02      	cmp	r3, #2
20000c5e:	dc12      	bgt.n	20000c86 <start_positioning_proc+0x66>
20000c60:	4b14      	ldr	r3, [pc, #80]	; (20000cb4 <start_positioning_proc+0x94>)
20000c62:	681b      	ldr	r3, [r3, #0]
20000c64:	4a14      	ldr	r2, [pc, #80]	; (20000cb8 <start_positioning_proc+0x98>)
20000c66:	6013      	str	r3, [r2, #0]
20000c68:	4b13      	ldr	r3, [pc, #76]	; (20000cb8 <start_positioning_proc+0x98>)
20000c6a:	681b      	ldr	r3, [r3, #0]
20000c6c:	f503 539c 	add.w	r3, r3, #4992	; 0x1380
20000c70:	3308      	adds	r3, #8
20000c72:	4a12      	ldr	r2, [pc, #72]	; (20000cbc <start_positioning_proc+0x9c>)
20000c74:	6013      	str	r3, [r2, #0]
20000c76:	4b0b      	ldr	r3, [pc, #44]	; (20000ca4 <start_positioning_proc+0x84>)
20000c78:	4a11      	ldr	r2, [pc, #68]	; (20000cc0 <start_positioning_proc+0xa0>)
20000c7a:	601a      	str	r2, [r3, #0]
20000c7c:	4b08      	ldr	r3, [pc, #32]	; (20000ca0 <start_positioning_proc+0x80>)
20000c7e:	2200      	movs	r2, #0
20000c80:	601a      	str	r2, [r3, #0]
20000c82:	2300      	movs	r3, #0
20000c84:	e007      	b.n	20000c96 <start_positioning_proc+0x76>
20000c86:	2200      	movs	r2, #0
20000c88:	6879      	ldr	r1, [r7, #4]
20000c8a:	480e      	ldr	r0, [pc, #56]	; (20000cc4 <start_positioning_proc+0xa4>)
20000c8c:	f000 f834 	bl	20000cf8 <reg_update>
20000c90:	4b0c      	ldr	r3, [pc, #48]	; (20000cc4 <start_positioning_proc+0xa4>)
20000c92:	68db      	ldr	r3, [r3, #12]
20000c94:	131b      	asrs	r3, r3, #12
20000c96:	4618      	mov	r0, r3
20000c98:	3708      	adds	r7, #8
20000c9a:	46bd      	mov	sp, r7
20000c9c:	bd80      	pop	{r7, pc}
20000c9e:	bf00      	nop
20000ca0:	20002e9c 	.word	0x20002e9c
20000ca4:	20002e40 	.word	0x20002e40
20000ca8:	20000925 	.word	0x20000925
20000cac:	20002e14 	.word	0x20002e14
20000cb0:	20002e04 	.word	0x20002e04
20000cb4:	20002e28 	.word	0x20002e28
20000cb8:	20002e2c 	.word	0x20002e2c
20000cbc:	20002e00 	.word	0x20002e00
20000cc0:	20000b89 	.word	0x20000b89
20000cc4:	20002e84 	.word	0x20002e84

20000cc8 <mycos>:
20000cc8:	4b02      	ldr	r3, [pc, #8]	; (20000cd4 <mycos+0xc>)
20000cca:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000cce:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000cd2:	4770      	bx	lr
20000cd4:	20001ddc 	.word	0x20001ddc

20000cd8 <mysin>:
20000cd8:	4b03      	ldr	r3, [pc, #12]	; (20000ce8 <mysin+0x10>)
20000cda:	f500 7040 	add.w	r0, r0, #768	; 0x300
20000cde:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000ce2:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000ce6:	4770      	bx	lr
20000ce8:	20001ddc 	.word	0x20001ddc

20000cec <reg_init>:
20000cec:	2300      	movs	r3, #0
20000cee:	e880 000e 	stmia.w	r0, {r1, r2, r3}
20000cf2:	60c3      	str	r3, [r0, #12]
20000cf4:	4770      	bx	lr
20000cf6:	bf00      	nop

20000cf8 <reg_update>:
20000cf8:	6803      	ldr	r3, [r0, #0]
20000cfa:	b410      	push	{r4}
20000cfc:	fb03 f301 	mul.w	r3, r3, r1
20000d00:	6884      	ldr	r4, [r0, #8]
20000d02:	b11a      	cbz	r2, 20000d0c <reg_update+0x14>
20000d04:	2c00      	cmp	r4, #0
20000d06:	dd09      	ble.n	20000d1c <reg_update+0x24>
20000d08:	ea03 73e3 	and.w	r3, r3, r3, asr #31
20000d0c:	6842      	ldr	r2, [r0, #4]
20000d0e:	4423      	add	r3, r4
20000d10:	fb02 3101 	mla	r1, r2, r1, r3
20000d14:	6083      	str	r3, [r0, #8]
20000d16:	60c1      	str	r1, [r0, #12]
20000d18:	bc10      	pop	{r4}
20000d1a:	4770      	bx	lr
20000d1c:	bf18      	it	ne
20000d1e:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
20000d22:	e7f3      	b.n	20000d0c <reg_update+0x14>

20000d24 <dot3>:
20000d24:	b430      	push	{r4, r5}
20000d26:	684b      	ldr	r3, [r1, #4]
20000d28:	6844      	ldr	r4, [r0, #4]
20000d2a:	6802      	ldr	r2, [r0, #0]
20000d2c:	fb03 f304 	mul.w	r3, r3, r4
20000d30:	680d      	ldr	r5, [r1, #0]
20000d32:	6884      	ldr	r4, [r0, #8]
20000d34:	fb05 3302 	mla	r3, r5, r2, r3
20000d38:	6888      	ldr	r0, [r1, #8]
20000d3a:	fb00 3004 	mla	r0, r0, r4, r3
20000d3e:	bc30      	pop	{r4, r5}
20000d40:	4770      	bx	lr
20000d42:	bf00      	nop

20000d44 <abc_to_dq>:
20000d44:	b4f0      	push	{r4, r5, r6, r7}
20000d46:	4c1d      	ldr	r4, [pc, #116]	; (20000dbc <abc_to_dq+0x78>)
20000d48:	6803      	ldr	r3, [r0, #0]
20000d4a:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
20000d4e:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
20000d52:	fb03 f306 	mul.w	r3, r3, r6
20000d56:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d5a:	6847      	ldr	r7, [r0, #4]
20000d5c:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000d60:	f202 1655 	addw	r6, r2, #341	; 0x155
20000d64:	fb07 3305 	mla	r3, r7, r5, r3
20000d68:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000d6c:	6887      	ldr	r7, [r0, #8]
20000d6e:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000d72:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
20000d76:	fb07 3305 	mla	r3, r7, r5, r3
20000d7a:	129b      	asrs	r3, r3, #10
20000d7c:	600b      	str	r3, [r1, #0]
20000d7e:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000d82:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
20000d86:	6843      	ldr	r3, [r0, #4]
20000d88:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000d8c:	fb03 f306 	mul.w	r3, r3, r6
20000d90:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d94:	6806      	ldr	r6, [r0, #0]
20000d96:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000d9a:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000d9e:	fb06 3305 	mla	r3, r6, r5, r3
20000da2:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000da6:	6880      	ldr	r0, [r0, #8]
20000da8:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
20000dac:	bcf0      	pop	{r4, r5, r6, r7}
20000dae:	fb00 3302 	mla	r3, r0, r2, r3
20000db2:	425b      	negs	r3, r3
20000db4:	129b      	asrs	r3, r3, #10
20000db6:	604b      	str	r3, [r1, #4]
20000db8:	4770      	bx	lr
20000dba:	bf00      	nop
20000dbc:	20001ddc 	.word	0x20001ddc

20000dc0 <dq_to_abc>:
20000dc0:	4b1d      	ldr	r3, [pc, #116]	; (20000e38 <dq_to_abc+0x78>)
20000dc2:	b4f0      	push	{r4, r5, r6, r7}
20000dc4:	680e      	ldr	r6, [r1, #0]
20000dc6:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
20000dca:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000dce:	fb04 f406 	mul.w	r4, r4, r6
20000dd2:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000dd6:	684f      	ldr	r7, [r1, #4]
20000dd8:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000ddc:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000de0:	fb07 4415 	mls	r4, r7, r5, r4
20000de4:	1524      	asrs	r4, r4, #20
20000de6:	6004      	str	r4, [r0, #0]
20000de8:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000dec:	680c      	ldr	r4, [r1, #0]
20000dee:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
20000df2:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
20000df6:	fb04 f406 	mul.w	r4, r4, r6
20000dfa:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000dfe:	684f      	ldr	r7, [r1, #4]
20000e00:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000e04:	f202 1655 	addw	r6, r2, #341	; 0x155
20000e08:	fb07 4415 	mls	r4, r7, r5, r4
20000e0c:	1524      	asrs	r4, r4, #20
20000e0e:	6044      	str	r4, [r0, #4]
20000e10:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000e14:	680c      	ldr	r4, [r1, #0]
20000e16:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000e1a:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000e1e:	fb04 f405 	mul.w	r4, r4, r5
20000e22:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000e26:	6849      	ldr	r1, [r1, #4]
20000e28:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
20000e2c:	fb01 4312 	mls	r3, r1, r2, r4
20000e30:	bcf0      	pop	{r4, r5, r6, r7}
20000e32:	151b      	asrs	r3, r3, #20
20000e34:	6083      	str	r3, [r0, #8]
20000e36:	4770      	bx	lr
20000e38:	20001ddc 	.word	0x20001ddc

20000e3c <cord_atan>:
20000e3c:	b5f0      	push	{r4, r5, r6, r7, lr}
20000e3e:	b091      	sub	sp, #68	; 0x44
20000e40:	46ee      	mov	lr, sp
20000e42:	4684      	mov	ip, r0
20000e44:	4e56      	ldr	r6, [pc, #344]	; (20000fa0 <cord_atan+0x164>)
20000e46:	460d      	mov	r5, r1
20000e48:	4614      	mov	r4, r2
20000e4a:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000e4c:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000e50:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000e54:	af08      	add	r7, sp, #32
20000e56:	3610      	adds	r6, #16
20000e58:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000e5c:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000e5e:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000e60:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000e64:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000e68:	f8dc 6000 	ldr.w	r6, [ip]
20000e6c:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000e70:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000e74:	2b00      	cmp	r3, #0
20000e76:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000e7a:	9900      	ldr	r1, [sp, #0]
20000e7c:	dd56      	ble.n	20000f2c <cord_atan+0xf0>
20000e7e:	18d0      	adds	r0, r2, r3
20000e80:	1a9b      	subs	r3, r3, r2
20000e82:	2b00      	cmp	r3, #0
20000e84:	d07a      	beq.n	20000f7c <cord_atan+0x140>
20000e86:	9f01      	ldr	r7, [sp, #4]
20000e88:	dd54      	ble.n	20000f34 <cord_atan+0xf8>
20000e8a:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000e8e:	4439      	add	r1, r7
20000e90:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000e94:	2b00      	cmp	r3, #0
20000e96:	d073      	beq.n	20000f80 <cord_atan+0x144>
20000e98:	9f02      	ldr	r7, [sp, #8]
20000e9a:	dd51      	ble.n	20000f40 <cord_atan+0x104>
20000e9c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000ea0:	4439      	add	r1, r7
20000ea2:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000ea6:	2b00      	cmp	r3, #0
20000ea8:	d06d      	beq.n	20000f86 <cord_atan+0x14a>
20000eaa:	9f03      	ldr	r7, [sp, #12]
20000eac:	dd4e      	ble.n	20000f4c <cord_atan+0x110>
20000eae:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000eb2:	4439      	add	r1, r7
20000eb4:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000eb8:	2b00      	cmp	r3, #0
20000eba:	d066      	beq.n	20000f8a <cord_atan+0x14e>
20000ebc:	9f04      	ldr	r7, [sp, #16]
20000ebe:	dd4b      	ble.n	20000f58 <cord_atan+0x11c>
20000ec0:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000ec4:	4439      	add	r1, r7
20000ec6:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000eca:	2b00      	cmp	r3, #0
20000ecc:	d060      	beq.n	20000f90 <cord_atan+0x154>
20000ece:	9f05      	ldr	r7, [sp, #20]
20000ed0:	dd48      	ble.n	20000f64 <cord_atan+0x128>
20000ed2:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000ed6:	4439      	add	r1, r7
20000ed8:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000edc:	2b00      	cmp	r3, #0
20000ede:	d059      	beq.n	20000f94 <cord_atan+0x158>
20000ee0:	9f06      	ldr	r7, [sp, #24]
20000ee2:	dd45      	ble.n	20000f70 <cord_atan+0x134>
20000ee4:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000ee8:	4439      	add	r1, r7
20000eea:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000eee:	2b00      	cmp	r3, #0
20000ef0:	d053      	beq.n	20000f9a <cord_atan+0x15e>
20000ef2:	9a07      	ldr	r2, [sp, #28]
20000ef4:	bfc7      	ittee	gt
20000ef6:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000efa:	1889      	addgt	r1, r1, r2
20000efc:	1a89      	suble	r1, r1, r2
20000efe:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000f02:	2207      	movs	r2, #7
20000f04:	ab10      	add	r3, sp, #64	; 0x40
20000f06:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000f0a:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000f0e:	2e00      	cmp	r6, #0
20000f10:	fb03 f300 	mul.w	r3, r3, r0
20000f14:	bfb8      	it	lt
20000f16:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000f1a:	2900      	cmp	r1, #0
20000f1c:	bfb8      	it	lt
20000f1e:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000f22:	129b      	asrs	r3, r3, #10
20000f24:	6029      	str	r1, [r5, #0]
20000f26:	6023      	str	r3, [r4, #0]
20000f28:	b011      	add	sp, #68	; 0x44
20000f2a:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000f2c:	1ad0      	subs	r0, r2, r3
20000f2e:	4249      	negs	r1, r1
20000f30:	4413      	add	r3, r2
20000f32:	e7a6      	b.n	20000e82 <cord_atan+0x46>
20000f34:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000f38:	1bc9      	subs	r1, r1, r7
20000f3a:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000f3e:	e7a9      	b.n	20000e94 <cord_atan+0x58>
20000f40:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000f44:	1bc9      	subs	r1, r1, r7
20000f46:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000f4a:	e7ac      	b.n	20000ea6 <cord_atan+0x6a>
20000f4c:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000f50:	1bc9      	subs	r1, r1, r7
20000f52:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000f56:	e7af      	b.n	20000eb8 <cord_atan+0x7c>
20000f58:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000f5c:	1bc9      	subs	r1, r1, r7
20000f5e:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000f62:	e7b2      	b.n	20000eca <cord_atan+0x8e>
20000f64:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000f68:	1bc9      	subs	r1, r1, r7
20000f6a:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000f6e:	e7b5      	b.n	20000edc <cord_atan+0xa0>
20000f70:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000f74:	1bc9      	subs	r1, r1, r7
20000f76:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000f7a:	e7b8      	b.n	20000eee <cord_atan+0xb2>
20000f7c:	461a      	mov	r2, r3
20000f7e:	e7c1      	b.n	20000f04 <cord_atan+0xc8>
20000f80:	4610      	mov	r0, r2
20000f82:	2201      	movs	r2, #1
20000f84:	e7be      	b.n	20000f04 <cord_atan+0xc8>
20000f86:	2202      	movs	r2, #2
20000f88:	e7bc      	b.n	20000f04 <cord_atan+0xc8>
20000f8a:	4610      	mov	r0, r2
20000f8c:	2203      	movs	r2, #3
20000f8e:	e7b9      	b.n	20000f04 <cord_atan+0xc8>
20000f90:	2204      	movs	r2, #4
20000f92:	e7b7      	b.n	20000f04 <cord_atan+0xc8>
20000f94:	4610      	mov	r0, r2
20000f96:	2205      	movs	r2, #5
20000f98:	e7b4      	b.n	20000f04 <cord_atan+0xc8>
20000f9a:	2206      	movs	r2, #6
20000f9c:	e7b2      	b.n	20000f04 <cord_atan+0xc8>
20000f9e:	bf00      	nop
20000fa0:	20001d9c 	.word	0x20001d9c

20000fa4 <sinpwm>:
20000fa4:	b5f0      	push	{r4, r5, r6, r7, lr}
20000fa6:	b091      	sub	sp, #68	; 0x44
20000fa8:	46ee      	mov	lr, sp
20000faa:	468c      	mov	ip, r1
20000fac:	4e6e      	ldr	r6, [pc, #440]	; (20001168 <sinpwm+0x1c4>)
20000fae:	4604      	mov	r4, r0
20000fb0:	4615      	mov	r5, r2
20000fb2:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000fb4:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000fb8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000fbc:	af08      	add	r7, sp, #32
20000fbe:	3610      	adds	r6, #16
20000fc0:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000fc4:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000fc6:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000fc8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000fcc:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000fd0:	f8dc 6000 	ldr.w	r6, [ip]
20000fd4:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000fd8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000fdc:	2b00      	cmp	r3, #0
20000fde:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000fe2:	9900      	ldr	r1, [sp, #0]
20000fe4:	f340 8087 	ble.w	200010f6 <sinpwm+0x152>
20000fe8:	18d0      	adds	r0, r2, r3
20000fea:	1a9b      	subs	r3, r3, r2
20000fec:	2b00      	cmp	r3, #0
20000fee:	f000 80aa 	beq.w	20001146 <sinpwm+0x1a2>
20000ff2:	9f01      	ldr	r7, [sp, #4]
20000ff4:	f340 8083 	ble.w	200010fe <sinpwm+0x15a>
20000ff8:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000ffc:	4439      	add	r1, r7
20000ffe:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20001002:	2b00      	cmp	r3, #0
20001004:	f000 80a1 	beq.w	2000114a <sinpwm+0x1a6>
20001008:	9f02      	ldr	r7, [sp, #8]
2000100a:	dd7e      	ble.n	2000110a <sinpwm+0x166>
2000100c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20001010:	4439      	add	r1, r7
20001012:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20001016:	2b00      	cmp	r3, #0
20001018:	f000 809a 	beq.w	20001150 <sinpwm+0x1ac>
2000101c:	9f03      	ldr	r7, [sp, #12]
2000101e:	dd7a      	ble.n	20001116 <sinpwm+0x172>
20001020:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20001024:	4439      	add	r1, r7
20001026:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
2000102a:	2b00      	cmp	r3, #0
2000102c:	f000 8092 	beq.w	20001154 <sinpwm+0x1b0>
20001030:	9f04      	ldr	r7, [sp, #16]
20001032:	dd76      	ble.n	20001122 <sinpwm+0x17e>
20001034:	eb02 1023 	add.w	r0, r2, r3, asr #4
20001038:	4439      	add	r1, r7
2000103a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000103e:	2b00      	cmp	r3, #0
20001040:	f000 808b 	beq.w	2000115a <sinpwm+0x1b6>
20001044:	9f05      	ldr	r7, [sp, #20]
20001046:	dd72      	ble.n	2000112e <sinpwm+0x18a>
20001048:	eb00 1263 	add.w	r2, r0, r3, asr #5
2000104c:	4439      	add	r1, r7
2000104e:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20001052:	2b00      	cmp	r3, #0
20001054:	f000 8083 	beq.w	2000115e <sinpwm+0x1ba>
20001058:	9f06      	ldr	r7, [sp, #24]
2000105a:	dd6e      	ble.n	2000113a <sinpwm+0x196>
2000105c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20001060:	4439      	add	r1, r7
20001062:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20001066:	2b00      	cmp	r3, #0
20001068:	d07c      	beq.n	20001164 <sinpwm+0x1c0>
2000106a:	9a07      	ldr	r2, [sp, #28]
2000106c:	bfc7      	ittee	gt
2000106e:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20001072:	1889      	addgt	r1, r1, r2
20001074:	1a89      	suble	r1, r1, r2
20001076:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
2000107a:	2207      	movs	r2, #7
2000107c:	ab10      	add	r3, sp, #64	; 0x40
2000107e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20001082:	f852 3c20 	ldr.w	r3, [r2, #-32]
20001086:	2e00      	cmp	r6, #0
20001088:	fb03 f300 	mul.w	r3, r3, r0
2000108c:	bfb8      	it	lt
2000108e:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20001092:	2900      	cmp	r1, #0
20001094:	bfb8      	it	lt
20001096:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
2000109a:	151b      	asrs	r3, r3, #20
2000109c:	440d      	add	r5, r1
2000109e:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
200010a2:	f3c5 0509 	ubfx	r5, r5, #0, #10
200010a6:	dd22      	ble.n	200010ee <sinpwm+0x14a>
200010a8:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 20001170 <sinpwm+0x1cc>
200010ac:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
200010b0:	2001      	movs	r0, #1
200010b2:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
200010b6:	4f2d      	ldr	r7, [pc, #180]	; (2000116c <sinpwm+0x1c8>)
200010b8:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
200010bc:	3602      	adds	r6, #2
200010be:	f3ce 0e09 	ubfx	lr, lr, #0, #10
200010c2:	f3c6 0609 	ubfx	r6, r6, #0, #10
200010c6:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
200010ca:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
200010ce:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
200010d2:	fb06 f50c 	mul.w	r5, r6, ip
200010d6:	fb01 f10c 	mul.w	r1, r1, ip
200010da:	fb02 f303 	mul.w	r3, r2, r3
200010de:	12ad      	asrs	r5, r5, #10
200010e0:	128a      	asrs	r2, r1, #10
200010e2:	129b      	asrs	r3, r3, #10
200010e4:	60a5      	str	r5, [r4, #8]
200010e6:	6062      	str	r2, [r4, #4]
200010e8:	6023      	str	r3, [r4, #0]
200010ea:	b011      	add	sp, #68	; 0x44
200010ec:	bdf0      	pop	{r4, r5, r6, r7, pc}
200010ee:	f1c3 0c00 	rsb	ip, r3, #0
200010f2:	2000      	movs	r0, #0
200010f4:	e7dd      	b.n	200010b2 <sinpwm+0x10e>
200010f6:	1ad0      	subs	r0, r2, r3
200010f8:	4249      	negs	r1, r1
200010fa:	4413      	add	r3, r2
200010fc:	e776      	b.n	20000fec <sinpwm+0x48>
200010fe:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20001102:	1bc9      	subs	r1, r1, r7
20001104:	eb03 0360 	add.w	r3, r3, r0, asr #1
20001108:	e77b      	b.n	20001002 <sinpwm+0x5e>
2000110a:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
2000110e:	1bc9      	subs	r1, r1, r7
20001110:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20001114:	e77f      	b.n	20001016 <sinpwm+0x72>
20001116:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
2000111a:	1bc9      	subs	r1, r1, r7
2000111c:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20001120:	e783      	b.n	2000102a <sinpwm+0x86>
20001122:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20001126:	1bc9      	subs	r1, r1, r7
20001128:	eb03 1322 	add.w	r3, r3, r2, asr #4
2000112c:	e787      	b.n	2000103e <sinpwm+0x9a>
2000112e:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20001132:	1bc9      	subs	r1, r1, r7
20001134:	eb03 1360 	add.w	r3, r3, r0, asr #5
20001138:	e78b      	b.n	20001052 <sinpwm+0xae>
2000113a:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
2000113e:	1bc9      	subs	r1, r1, r7
20001140:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20001144:	e78f      	b.n	20001066 <sinpwm+0xc2>
20001146:	461a      	mov	r2, r3
20001148:	e798      	b.n	2000107c <sinpwm+0xd8>
2000114a:	4610      	mov	r0, r2
2000114c:	2201      	movs	r2, #1
2000114e:	e795      	b.n	2000107c <sinpwm+0xd8>
20001150:	2202      	movs	r2, #2
20001152:	e793      	b.n	2000107c <sinpwm+0xd8>
20001154:	4610      	mov	r0, r2
20001156:	2203      	movs	r2, #3
20001158:	e790      	b.n	2000107c <sinpwm+0xd8>
2000115a:	2204      	movs	r2, #4
2000115c:	e78e      	b.n	2000107c <sinpwm+0xd8>
2000115e:	4610      	mov	r0, r2
20001160:	2205      	movs	r2, #5
20001162:	e78b      	b.n	2000107c <sinpwm+0xd8>
20001164:	2206      	movs	r2, #6
20001166:	e789      	b.n	2000107c <sinpwm+0xd8>
20001168:	20001d9c 	.word	0x20001d9c
2000116c:	20001ddc 	.word	0x20001ddc
20001170:	fffffe0c 	.word	0xfffffe0c

20001174 <svpwm>:
20001174:	b5f0      	push	{r4, r5, r6, r7, lr}
20001176:	b091      	sub	sp, #68	; 0x44
20001178:	46ee      	mov	lr, sp
2000117a:	468c      	mov	ip, r1
2000117c:	4eb9      	ldr	r6, [pc, #740]	; (20001464 <svpwm+0x2f0>)
2000117e:	4604      	mov	r4, r0
20001180:	4615      	mov	r5, r2
20001182:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20001184:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20001188:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
2000118c:	af08      	add	r7, sp, #32
2000118e:	3610      	adds	r6, #16
20001190:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20001194:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20001196:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20001198:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
2000119c:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200011a0:	f8dc 6000 	ldr.w	r6, [ip]
200011a4:	f8dc 3004 	ldr.w	r3, [ip, #4]
200011a8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200011ac:	2b00      	cmp	r3, #0
200011ae:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200011b2:	9900      	ldr	r1, [sp, #0]
200011b4:	dd71      	ble.n	2000129a <svpwm+0x126>
200011b6:	18d0      	adds	r0, r2, r3
200011b8:	1a9b      	subs	r3, r3, r2
200011ba:	2b00      	cmp	r3, #0
200011bc:	f000 8141 	beq.w	20001442 <svpwm+0x2ce>
200011c0:	9f01      	ldr	r7, [sp, #4]
200011c2:	dd6e      	ble.n	200012a2 <svpwm+0x12e>
200011c4:	eb00 0263 	add.w	r2, r0, r3, asr #1
200011c8:	4439      	add	r1, r7
200011ca:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200011ce:	2b00      	cmp	r3, #0
200011d0:	f000 8139 	beq.w	20001446 <svpwm+0x2d2>
200011d4:	9f02      	ldr	r7, [sp, #8]
200011d6:	dd6a      	ble.n	200012ae <svpwm+0x13a>
200011d8:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200011dc:	4439      	add	r1, r7
200011de:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200011e2:	2b00      	cmp	r3, #0
200011e4:	f000 8132 	beq.w	2000144c <svpwm+0x2d8>
200011e8:	9f03      	ldr	r7, [sp, #12]
200011ea:	dd66      	ble.n	200012ba <svpwm+0x146>
200011ec:	eb00 02e3 	add.w	r2, r0, r3, asr #3
200011f0:	4439      	add	r1, r7
200011f2:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
200011f6:	2b00      	cmp	r3, #0
200011f8:	f000 812a 	beq.w	20001450 <svpwm+0x2dc>
200011fc:	9f04      	ldr	r7, [sp, #16]
200011fe:	dd62      	ble.n	200012c6 <svpwm+0x152>
20001200:	eb02 1023 	add.w	r0, r2, r3, asr #4
20001204:	4439      	add	r1, r7
20001206:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000120a:	2b00      	cmp	r3, #0
2000120c:	f000 8123 	beq.w	20001456 <svpwm+0x2e2>
20001210:	9f05      	ldr	r7, [sp, #20]
20001212:	dd5e      	ble.n	200012d2 <svpwm+0x15e>
20001214:	eb00 1263 	add.w	r2, r0, r3, asr #5
20001218:	4439      	add	r1, r7
2000121a:	eba3 1360 	sub.w	r3, r3, r0, asr #5
2000121e:	2b00      	cmp	r3, #0
20001220:	f000 811b 	beq.w	2000145a <svpwm+0x2e6>
20001224:	9f06      	ldr	r7, [sp, #24]
20001226:	dd5a      	ble.n	200012de <svpwm+0x16a>
20001228:	eb02 10a3 	add.w	r0, r2, r3, asr #6
2000122c:	4439      	add	r1, r7
2000122e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20001232:	2b00      	cmp	r3, #0
20001234:	f000 8114 	beq.w	20001460 <svpwm+0x2ec>
20001238:	9a07      	ldr	r2, [sp, #28]
2000123a:	bfc7      	ittee	gt
2000123c:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20001240:	1889      	addgt	r1, r1, r2
20001242:	1a89      	suble	r1, r1, r2
20001244:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20001248:	2207      	movs	r2, #7
2000124a:	ab10      	add	r3, sp, #64	; 0x40
2000124c:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20001250:	f852 3c20 	ldr.w	r3, [r2, #-32]
20001254:	2e00      	cmp	r6, #0
20001256:	bfb8      	it	lt
20001258:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
2000125c:	fb03 f300 	mul.w	r3, r3, r0
20001260:	2900      	cmp	r1, #0
20001262:	bfb8      	it	lt
20001264:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20001268:	4a7f      	ldr	r2, [pc, #508]	; (20001468 <svpwm+0x2f4>)
2000126a:	440d      	add	r5, r1
2000126c:	151b      	asrs	r3, r3, #20
2000126e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001272:	6013      	str	r3, [r2, #0]
20001274:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20001278:	1252      	asrs	r2, r2, #9
2000127a:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
2000127e:	f102 32ff 	add.w	r2, r2, #4294967295
20001282:	bfc6      	itte	gt
20001284:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20001288:	2001      	movgt	r0, #1
2000128a:	2000      	movle	r0, #0
2000128c:	2a04      	cmp	r2, #4
2000128e:	d848      	bhi.n	20001322 <svpwm+0x1ae>
20001290:	e8df f002 	tbb	[pc, r2]
20001294:	2b9e8164 	.word	0x2b9e8164
20001298:	bb          	.byte	0xbb
20001299:	00          	.byte	0x00
2000129a:	1ad0      	subs	r0, r2, r3
2000129c:	4249      	negs	r1, r1
2000129e:	4413      	add	r3, r2
200012a0:	e78b      	b.n	200011ba <svpwm+0x46>
200012a2:	eba0 0263 	sub.w	r2, r0, r3, asr #1
200012a6:	1bc9      	subs	r1, r1, r7
200012a8:	eb03 0360 	add.w	r3, r3, r0, asr #1
200012ac:	e78f      	b.n	200011ce <svpwm+0x5a>
200012ae:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
200012b2:	1bc9      	subs	r1, r1, r7
200012b4:	eb03 03a2 	add.w	r3, r3, r2, asr #2
200012b8:	e793      	b.n	200011e2 <svpwm+0x6e>
200012ba:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
200012be:	1bc9      	subs	r1, r1, r7
200012c0:	eb03 03e0 	add.w	r3, r3, r0, asr #3
200012c4:	e797      	b.n	200011f6 <svpwm+0x82>
200012c6:	eba2 1023 	sub.w	r0, r2, r3, asr #4
200012ca:	1bc9      	subs	r1, r1, r7
200012cc:	eb03 1322 	add.w	r3, r3, r2, asr #4
200012d0:	e79b      	b.n	2000120a <svpwm+0x96>
200012d2:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200012d6:	1bc9      	subs	r1, r1, r7
200012d8:	eb03 1360 	add.w	r3, r3, r0, asr #5
200012dc:	e79f      	b.n	2000121e <svpwm+0xaa>
200012de:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
200012e2:	1bc9      	subs	r1, r1, r7
200012e4:	eb03 13a2 	add.w	r3, r3, r2, asr #6
200012e8:	e7a3      	b.n	20001232 <svpwm+0xbe>
200012ea:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
200012ee:	4e5f      	ldr	r6, [pc, #380]	; (2000146c <svpwm+0x2f8>)
200012f0:	3204      	adds	r2, #4
200012f2:	f3c2 0209 	ubfx	r2, r2, #0, #10
200012f6:	3556      	adds	r5, #86	; 0x56
200012f8:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
200012fc:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001300:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20001304:	fb01 f103 	mul.w	r1, r1, r3
20001308:	fb02 f203 	mul.w	r2, r2, r3
2000130c:	1289      	asrs	r1, r1, #10
2000130e:	1293      	asrs	r3, r2, #10
20001310:	424a      	negs	r2, r1
20001312:	1ad2      	subs	r2, r2, r3
20001314:	1a5d      	subs	r5, r3, r1
20001316:	440b      	add	r3, r1
20001318:	6062      	str	r2, [r4, #4]
2000131a:	6025      	str	r5, [r4, #0]
2000131c:	60a3      	str	r3, [r4, #8]
2000131e:	b011      	add	sp, #68	; 0x44
20001320:	bdf0      	pop	{r4, r5, r6, r7, pc}
20001322:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20001326:	4e51      	ldr	r6, [pc, #324]	; (2000146c <svpwm+0x2f8>)
20001328:	3202      	adds	r2, #2
2000132a:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000132e:	f505 7540 	add.w	r5, r5, #768	; 0x300
20001332:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20001336:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000133a:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
2000133e:	fb01 f103 	mul.w	r1, r1, r3
20001342:	fb02 f203 	mul.w	r2, r2, r3
20001346:	1289      	asrs	r1, r1, #10
20001348:	1293      	asrs	r3, r2, #10
2000134a:	424a      	negs	r2, r1
2000134c:	1ad2      	subs	r2, r2, r3
2000134e:	18cd      	adds	r5, r1, r3
20001350:	1a5b      	subs	r3, r3, r1
20001352:	60a2      	str	r2, [r4, #8]
20001354:	6025      	str	r5, [r4, #0]
20001356:	6063      	str	r3, [r4, #4]
20001358:	b011      	add	sp, #68	; 0x44
2000135a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000135c:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20001360:	4e42      	ldr	r6, [pc, #264]	; (2000146c <svpwm+0x2f8>)
20001362:	3204      	adds	r2, #4
20001364:	f3c2 0209 	ubfx	r2, r2, #0, #10
20001368:	f205 2556 	addw	r5, r5, #598	; 0x256
2000136c:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20001370:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001374:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20001378:	fb01 f103 	mul.w	r1, r1, r3
2000137c:	fb02 f203 	mul.w	r2, r2, r3
20001380:	1289      	asrs	r1, r1, #10
20001382:	1293      	asrs	r3, r2, #10
20001384:	424a      	negs	r2, r1
20001386:	1ad2      	subs	r2, r2, r3
20001388:	1acd      	subs	r5, r1, r3
2000138a:	440b      	add	r3, r1
2000138c:	60a2      	str	r2, [r4, #8]
2000138e:	6025      	str	r5, [r4, #0]
20001390:	6063      	str	r3, [r4, #4]
20001392:	b011      	add	sp, #68	; 0x44
20001394:	bdf0      	pop	{r4, r5, r6, r7, pc}
20001396:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
2000139a:	4e34      	ldr	r6, [pc, #208]	; (2000146c <svpwm+0x2f8>)
2000139c:	320f      	adds	r2, #15
2000139e:	f3c2 0209 	ubfx	r2, r2, #0, #10
200013a2:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
200013a6:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
200013aa:	f3c5 0509 	ubfx	r5, r5, #0, #10
200013ae:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
200013b2:	fb01 f103 	mul.w	r1, r1, r3
200013b6:	fb02 f203 	mul.w	r2, r2, r3
200013ba:	1289      	asrs	r1, r1, #10
200013bc:	1293      	asrs	r3, r2, #10
200013be:	424a      	negs	r2, r1
200013c0:	1ad2      	subs	r2, r2, r3
200013c2:	18cd      	adds	r5, r1, r3
200013c4:	1a5b      	subs	r3, r3, r1
200013c6:	e884 0024 	stmia.w	r4, {r2, r5}
200013ca:	60a3      	str	r3, [r4, #8]
200013cc:	b011      	add	sp, #68	; 0x44
200013ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
200013d0:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
200013d4:	4e25      	ldr	r6, [pc, #148]	; (2000146c <svpwm+0x2f8>)
200013d6:	320a      	adds	r2, #10
200013d8:	f3c2 0209 	ubfx	r2, r2, #0, #10
200013dc:	f505 7580 	add.w	r5, r5, #256	; 0x100
200013e0:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
200013e4:	f3c5 0509 	ubfx	r5, r5, #0, #10
200013e8:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
200013ec:	fb01 f103 	mul.w	r1, r1, r3
200013f0:	fb02 f203 	mul.w	r2, r2, r3
200013f4:	1289      	asrs	r1, r1, #10
200013f6:	1293      	asrs	r3, r2, #10
200013f8:	424a      	negs	r2, r1
200013fa:	1ad2      	subs	r2, r2, r3
200013fc:	1acd      	subs	r5, r1, r3
200013fe:	440b      	add	r3, r1
20001400:	e884 0024 	stmia.w	r4, {r2, r5}
20001404:	60a3      	str	r3, [r4, #8]
20001406:	b011      	add	sp, #68	; 0x44
20001408:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000140a:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
2000140e:	4917      	ldr	r1, [pc, #92]	; (2000146c <svpwm+0x2f8>)
20001410:	320f      	adds	r2, #15
20001412:	f3c2 0209 	ubfx	r2, r2, #0, #10
20001416:	3d55      	subs	r5, #85	; 0x55
20001418:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
2000141c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001420:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20001424:	fb02 f203 	mul.w	r2, r2, r3
20001428:	fb01 f303 	mul.w	r3, r1, r3
2000142c:	1292      	asrs	r2, r2, #10
2000142e:	129b      	asrs	r3, r3, #10
20001430:	4251      	negs	r1, r2
20001432:	18d5      	adds	r5, r2, r3
20001434:	1ac9      	subs	r1, r1, r3
20001436:	1ad2      	subs	r2, r2, r3
20001438:	6061      	str	r1, [r4, #4]
2000143a:	6025      	str	r5, [r4, #0]
2000143c:	60a2      	str	r2, [r4, #8]
2000143e:	b011      	add	sp, #68	; 0x44
20001440:	bdf0      	pop	{r4, r5, r6, r7, pc}
20001442:	461a      	mov	r2, r3
20001444:	e701      	b.n	2000124a <svpwm+0xd6>
20001446:	4610      	mov	r0, r2
20001448:	2201      	movs	r2, #1
2000144a:	e6fe      	b.n	2000124a <svpwm+0xd6>
2000144c:	2202      	movs	r2, #2
2000144e:	e6fc      	b.n	2000124a <svpwm+0xd6>
20001450:	4610      	mov	r0, r2
20001452:	2203      	movs	r2, #3
20001454:	e6f9      	b.n	2000124a <svpwm+0xd6>
20001456:	2204      	movs	r2, #4
20001458:	e6f7      	b.n	2000124a <svpwm+0xd6>
2000145a:	4610      	mov	r0, r2
2000145c:	2205      	movs	r2, #5
2000145e:	e6f4      	b.n	2000124a <svpwm+0xd6>
20001460:	2206      	movs	r2, #6
20001462:	e6f2      	b.n	2000124a <svpwm+0xd6>
20001464:	20001d9c 	.word	0x20001d9c
20001468:	20002ea4 	.word	0x20002ea4
2000146c:	20001ddc 	.word	0x20001ddc

20001470 <encoder_init>:
20001470:	4b01      	ldr	r3, [pc, #4]	; (20001478 <encoder_init+0x8>)
20001472:	6058      	str	r0, [r3, #4]
20001474:	6098      	str	r0, [r3, #8]
20001476:	4770      	bx	lr
20001478:	20002ea4 	.word	0x20002ea4

2000147c <get_speed>:
2000147c:	4a0e      	ldr	r2, [pc, #56]	; (200014b8 <get_speed+0x3c>)
2000147e:	b430      	push	{r4, r5}
20001480:	6893      	ldr	r3, [r2, #8]
20001482:	6855      	ldr	r5, [r2, #4]
20001484:	1ac3      	subs	r3, r0, r3
20001486:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
2000148a:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
2000148e:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
20001492:	6095      	str	r5, [r2, #8]
20001494:	6050      	str	r0, [r2, #4]
20001496:	dd05      	ble.n	200014a4 <get_speed+0x28>
20001498:	2b00      	cmp	r3, #0
2000149a:	bfb4      	ite	lt
2000149c:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
200014a0:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
200014a4:	4a05      	ldr	r2, [pc, #20]	; (200014bc <get_speed+0x40>)
200014a6:	1058      	asrs	r0, r3, #1
200014a8:	fb02 f000 	mul.w	r0, r2, r0
200014ac:	bc30      	pop	{r4, r5}
200014ae:	680a      	ldr	r2, [r1, #0]
200014b0:	1300      	asrs	r0, r0, #12
200014b2:	4413      	add	r3, r2
200014b4:	600b      	str	r3, [r1, #0]
200014b6:	4770      	bx	lr
200014b8:	20002ea4 	.word	0x20002ea4
200014bc:	0002ae7c 	.word	0x0002ae7c

200014c0 <rfilter1>:
200014c0:	b470      	push	{r4, r5, r6}
200014c2:	f240 74c6 	movw	r4, #1990	; 0x7c6
200014c6:	4b0e      	ldr	r3, [pc, #56]	; (20001500 <rfilter1+0x40>)
200014c8:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
200014cc:	68de      	ldr	r6, [r3, #12]
200014ce:	6959      	ldr	r1, [r3, #20]
200014d0:	fb04 f406 	mul.w	r4, r4, r6
200014d4:	fb02 4201 	mla	r2, r2, r1, r4
200014d8:	490a      	ldr	r1, [pc, #40]	; (20001504 <rfilter1+0x44>)
200014da:	691d      	ldr	r5, [r3, #16]
200014dc:	fb01 2200 	mla	r2, r1, r0, r2
200014e0:	4c09      	ldr	r4, [pc, #36]	; (20001508 <rfilter1+0x48>)
200014e2:	6999      	ldr	r1, [r3, #24]
200014e4:	fb04 2205 	mla	r2, r4, r5, r2
200014e8:	4c08      	ldr	r4, [pc, #32]	; (2000150c <rfilter1+0x4c>)
200014ea:	615e      	str	r6, [r3, #20]
200014ec:	fb04 2201 	mla	r2, r4, r1, r2
200014f0:	1291      	asrs	r1, r2, #10
200014f2:	6118      	str	r0, [r3, #16]
200014f4:	619d      	str	r5, [r3, #24]
200014f6:	1490      	asrs	r0, r2, #18
200014f8:	60d9      	str	r1, [r3, #12]
200014fa:	bc70      	pop	{r4, r5, r6}
200014fc:	4770      	bx	lr
200014fe:	bf00      	nop
20001500:	20002ea4 	.word	0x20002ea4
20001504:	0003f0a4 	.word	0x0003f0a4
20001508:	fff83a2e 	.word	0xfff83a2e
2000150c:	0003dc29 	.word	0x0003dc29

20001510 <rfilter2>:
20001510:	b470      	push	{r4, r5, r6}
20001512:	f240 748a 	movw	r4, #1930	; 0x78a
20001516:	4b0d      	ldr	r3, [pc, #52]	; (2000154c <rfilter2+0x3c>)
20001518:	4a0d      	ldr	r2, [pc, #52]	; (20001550 <rfilter2+0x40>)
2000151a:	69de      	ldr	r6, [r3, #28]
2000151c:	6a59      	ldr	r1, [r3, #36]	; 0x24
2000151e:	fb04 f406 	mul.w	r4, r4, r6
20001522:	fb02 4201 	mla	r2, r2, r1, r4
20001526:	490b      	ldr	r1, [pc, #44]	; (20001554 <rfilter2+0x44>)
20001528:	6a1d      	ldr	r5, [r3, #32]
2000152a:	fb01 2200 	mla	r2, r1, r0, r2
2000152e:	4c0a      	ldr	r4, [pc, #40]	; (20001558 <rfilter2+0x48>)
20001530:	6a99      	ldr	r1, [r3, #40]	; 0x28
20001532:	fb04 2205 	mla	r2, r4, r5, r2
20001536:	4c09      	ldr	r4, [pc, #36]	; (2000155c <rfilter2+0x4c>)
20001538:	625e      	str	r6, [r3, #36]	; 0x24
2000153a:	fb04 2201 	mla	r2, r4, r1, r2
2000153e:	1291      	asrs	r1, r2, #10
20001540:	6218      	str	r0, [r3, #32]
20001542:	629d      	str	r5, [r3, #40]	; 0x28
20001544:	1490      	asrs	r0, r2, #18
20001546:	61d9      	str	r1, [r3, #28]
20001548:	bc70      	pop	{r4, r5, r6}
2000154a:	4770      	bx	lr
2000154c:	20002ea4 	.word	0x20002ea4
20001550:	fffffc66 	.word	0xfffffc66
20001554:	0003e3d7 	.word	0x0003e3d7
20001558:	fff8767b 	.word	0xfff8767b
2000155c:	0003b5c3 	.word	0x0003b5c3

20001560 <adc_init>:
20001560:	b480      	push	{r7}
20001562:	af00      	add	r7, sp, #0
20001564:	4a10      	ldr	r2, [pc, #64]	; (200015a8 <adc_init+0x48>)
20001566:	4b10      	ldr	r3, [pc, #64]	; (200015a8 <adc_init+0x48>)
20001568:	69db      	ldr	r3, [r3, #28]
2000156a:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
2000156e:	61d3      	str	r3, [r2, #28]
20001570:	4b0d      	ldr	r3, [pc, #52]	; (200015a8 <adc_init+0x48>)
20001572:	f242 0220 	movw	r2, #8224	; 0x2020
20001576:	615a      	str	r2, [r3, #20]
20001578:	4b0c      	ldr	r3, [pc, #48]	; (200015ac <adc_init+0x4c>)
2000157a:	2200      	movs	r2, #0
2000157c:	601a      	str	r2, [r3, #0]
2000157e:	4a0b      	ldr	r2, [pc, #44]	; (200015ac <adc_init+0x4c>)
20001580:	4b0a      	ldr	r3, [pc, #40]	; (200015ac <adc_init+0x4c>)
20001582:	681b      	ldr	r3, [r3, #0]
20001584:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20001588:	f043 0301 	orr.w	r3, r3, #1
2000158c:	6013      	str	r3, [r2, #0]
2000158e:	4a07      	ldr	r2, [pc, #28]	; (200015ac <adc_init+0x4c>)
20001590:	4b06      	ldr	r3, [pc, #24]	; (200015ac <adc_init+0x4c>)
20001592:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001594:	f443 73f0 	orr.w	r3, r3, #480	; 0x1e0
20001598:	6293      	str	r3, [r2, #40]	; 0x28
2000159a:	4b04      	ldr	r3, [pc, #16]	; (200015ac <adc_init+0x4c>)
2000159c:	2210      	movs	r2, #16
2000159e:	621a      	str	r2, [r3, #32]
200015a0:	bf00      	nop
200015a2:	46bd      	mov	sp, r7
200015a4:	bc80      	pop	{r7}
200015a6:	4770      	bx	lr
200015a8:	40020000 	.word	0x40020000
200015ac:	40088000 	.word	0x40088000

200015b0 <dma_init>:
200015b0:	b480      	push	{r7}
200015b2:	af00      	add	r7, sp, #0
200015b4:	4a17      	ldr	r2, [pc, #92]	; (20001614 <dma_init+0x64>)
200015b6:	4b17      	ldr	r3, [pc, #92]	; (20001614 <dma_init+0x64>)
200015b8:	69db      	ldr	r3, [r3, #28]
200015ba:	f043 0320 	orr.w	r3, r3, #32
200015be:	61d3      	str	r3, [r2, #28]
200015c0:	4b15      	ldr	r3, [pc, #84]	; (20001618 <dma_init+0x68>)
200015c2:	4a16      	ldr	r2, [pc, #88]	; (2000161c <dma_init+0x6c>)
200015c4:	609a      	str	r2, [r3, #8]
200015c6:	4b14      	ldr	r3, [pc, #80]	; (20001618 <dma_init+0x68>)
200015c8:	f04f 32ff 	mov.w	r2, #4294967295
200015cc:	62da      	str	r2, [r3, #44]	; 0x2c
200015ce:	4b12      	ldr	r3, [pc, #72]	; (20001618 <dma_init+0x68>)
200015d0:	f04f 32ff 	mov.w	r2, #4294967295
200015d4:	621a      	str	r2, [r3, #32]
200015d6:	4b10      	ldr	r3, [pc, #64]	; (20001618 <dma_init+0x68>)
200015d8:	f04f 32ff 	mov.w	r2, #4294967295
200015dc:	635a      	str	r2, [r3, #52]	; 0x34
200015de:	4b0e      	ldr	r3, [pc, #56]	; (20001618 <dma_init+0x68>)
200015e0:	f44f 7280 	mov.w	r2, #256	; 0x100
200015e4:	61da      	str	r2, [r3, #28]
200015e6:	4b0c      	ldr	r3, [pc, #48]	; (20001618 <dma_init+0x68>)
200015e8:	f44f 7280 	mov.w	r2, #256	; 0x100
200015ec:	625a      	str	r2, [r3, #36]	; 0x24
200015ee:	4b0a      	ldr	r3, [pc, #40]	; (20001618 <dma_init+0x68>)
200015f0:	2201      	movs	r2, #1
200015f2:	605a      	str	r2, [r3, #4]
200015f4:	4b09      	ldr	r3, [pc, #36]	; (2000161c <dma_init+0x6c>)
200015f6:	4a0a      	ldr	r2, [pc, #40]	; (20001620 <dma_init+0x70>)
200015f8:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
200015fc:	4a09      	ldr	r2, [pc, #36]	; (20001624 <dma_init+0x74>)
200015fe:	4b07      	ldr	r3, [pc, #28]	; (2000161c <dma_init+0x6c>)
20001600:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001604:	4b05      	ldr	r3, [pc, #20]	; (2000161c <dma_init+0x6c>)
20001606:	4a08      	ldr	r2, [pc, #32]	; (20001628 <dma_init+0x78>)
20001608:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
2000160c:	bf00      	nop
2000160e:	46bd      	mov	sp, r7
20001610:	bc80      	pop	{r7}
20001612:	4770      	bx	lr
20001614:	40020000 	.word	0x40020000
20001618:	40028000 	.word	0x40028000
2000161c:	20003400 	.word	0x20003400
20001620:	40088018 	.word	0x40088018
20001624:	2000360c 	.word	0x2000360c
20001628:	ae000031 	.word	0xae000031

2000162c <adc_dma_init>:
2000162c:	b580      	push	{r7, lr}
2000162e:	af00      	add	r7, sp, #0
20001630:	f7ff ff96 	bl	20001560 <adc_init>
20001634:	f7ff ffbc 	bl	200015b0 <dma_init>
20001638:	bf00      	nop
2000163a:	bd80      	pop	{r7, pc}

2000163c <adc_dma_start>:
2000163c:	b480      	push	{r7}
2000163e:	af00      	add	r7, sp, #0
20001640:	4b07      	ldr	r3, [pc, #28]	; (20001660 <adc_dma_start+0x24>)
20001642:	2200      	movs	r2, #0
20001644:	601a      	str	r2, [r3, #0]
20001646:	4b06      	ldr	r3, [pc, #24]	; (20001660 <adc_dma_start+0x24>)
20001648:	f240 220d 	movw	r2, #525	; 0x20d
2000164c:	601a      	str	r2, [r3, #0]
2000164e:	4b05      	ldr	r3, [pc, #20]	; (20001664 <adc_dma_start+0x28>)
20001650:	f44f 7280 	mov.w	r2, #256	; 0x100
20001654:	629a      	str	r2, [r3, #40]	; 0x28
20001656:	bf00      	nop
20001658:	46bd      	mov	sp, r7
2000165a:	bc80      	pop	{r7}
2000165c:	4770      	bx	lr
2000165e:	bf00      	nop
20001660:	40088000 	.word	0x40088000
20001664:	40028000 	.word	0x40028000

20001668 <adc_dma_wait>:
20001668:	b480      	push	{r7}
2000166a:	af00      	add	r7, sp, #0
2000166c:	bf00      	nop
2000166e:	4b0a      	ldr	r3, [pc, #40]	; (20001698 <adc_dma_wait+0x30>)
20001670:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20001674:	f003 0307 	and.w	r3, r3, #7
20001678:	2b00      	cmp	r3, #0
2000167a:	d1f8      	bne.n	2000166e <adc_dma_wait+0x6>
2000167c:	4a07      	ldr	r2, [pc, #28]	; (2000169c <adc_dma_wait+0x34>)
2000167e:	4b07      	ldr	r3, [pc, #28]	; (2000169c <adc_dma_wait+0x34>)
20001680:	681b      	ldr	r3, [r3, #0]
20001682:	f023 0308 	bic.w	r3, r3, #8
20001686:	6013      	str	r3, [r2, #0]
20001688:	4b03      	ldr	r3, [pc, #12]	; (20001698 <adc_dma_wait+0x30>)
2000168a:	4a05      	ldr	r2, [pc, #20]	; (200016a0 <adc_dma_wait+0x38>)
2000168c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20001690:	bf00      	nop
20001692:	46bd      	mov	sp, r7
20001694:	bc80      	pop	{r7}
20001696:	4770      	bx	lr
20001698:	20003400 	.word	0x20003400
2000169c:	40088000 	.word	0x40088000
200016a0:	ae000031 	.word	0xae000031

200016a4 <NVIC_EnableIRQ>:
200016a4:	b480      	push	{r7}
200016a6:	b083      	sub	sp, #12
200016a8:	af00      	add	r7, sp, #0
200016aa:	4603      	mov	r3, r0
200016ac:	71fb      	strb	r3, [r7, #7]
200016ae:	4908      	ldr	r1, [pc, #32]	; (200016d0 <NVIC_EnableIRQ+0x2c>)
200016b0:	f997 3007 	ldrsb.w	r3, [r7, #7]
200016b4:	095b      	lsrs	r3, r3, #5
200016b6:	79fa      	ldrb	r2, [r7, #7]
200016b8:	f002 021f 	and.w	r2, r2, #31
200016bc:	2001      	movs	r0, #1
200016be:	fa00 f202 	lsl.w	r2, r0, r2
200016c2:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
200016c6:	bf00      	nop
200016c8:	370c      	adds	r7, #12
200016ca:	46bd      	mov	sp, r7
200016cc:	bc80      	pop	{r7}
200016ce:	4770      	bx	lr
200016d0:	e000e100 	.word	0xe000e100

200016d4 <PortConfig>:
200016d4:	b480      	push	{r7}
200016d6:	af00      	add	r7, sp, #0
200016d8:	4a66      	ldr	r2, [pc, #408]	; (20001874 <PortConfig+0x1a0>)
200016da:	4b66      	ldr	r3, [pc, #408]	; (20001874 <PortConfig+0x1a0>)
200016dc:	69db      	ldr	r3, [r3, #28]
200016de:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
200016e2:	61d3      	str	r3, [r2, #28]
200016e4:	4b64      	ldr	r3, [pc, #400]	; (20001878 <PortConfig+0x1a4>)
200016e6:	2200      	movs	r2, #0
200016e8:	609a      	str	r2, [r3, #8]
200016ea:	4b63      	ldr	r3, [pc, #396]	; (20001878 <PortConfig+0x1a4>)
200016ec:	2200      	movs	r2, #0
200016ee:	601a      	str	r2, [r3, #0]
200016f0:	4a61      	ldr	r2, [pc, #388]	; (20001878 <PortConfig+0x1a4>)
200016f2:	4b61      	ldr	r3, [pc, #388]	; (20001878 <PortConfig+0x1a4>)
200016f4:	685b      	ldr	r3, [r3, #4]
200016f6:	f043 0301 	orr.w	r3, r3, #1
200016fa:	6053      	str	r3, [r2, #4]
200016fc:	4a5e      	ldr	r2, [pc, #376]	; (20001878 <PortConfig+0x1a4>)
200016fe:	4b5e      	ldr	r3, [pc, #376]	; (20001878 <PortConfig+0x1a4>)
20001700:	68db      	ldr	r3, [r3, #12]
20001702:	f043 0301 	orr.w	r3, r3, #1
20001706:	60d3      	str	r3, [r2, #12]
20001708:	4a5b      	ldr	r2, [pc, #364]	; (20001878 <PortConfig+0x1a4>)
2000170a:	4b5b      	ldr	r3, [pc, #364]	; (20001878 <PortConfig+0x1a4>)
2000170c:	699b      	ldr	r3, [r3, #24]
2000170e:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
20001712:	6193      	str	r3, [r2, #24]
20001714:	4a58      	ldr	r2, [pc, #352]	; (20001878 <PortConfig+0x1a4>)
20001716:	4b58      	ldr	r3, [pc, #352]	; (20001878 <PortConfig+0x1a4>)
20001718:	685b      	ldr	r3, [r3, #4]
2000171a:	f023 0308 	bic.w	r3, r3, #8
2000171e:	6053      	str	r3, [r2, #4]
20001720:	4a55      	ldr	r2, [pc, #340]	; (20001878 <PortConfig+0x1a4>)
20001722:	4b55      	ldr	r3, [pc, #340]	; (20001878 <PortConfig+0x1a4>)
20001724:	68db      	ldr	r3, [r3, #12]
20001726:	f043 0308 	orr.w	r3, r3, #8
2000172a:	60d3      	str	r3, [r2, #12]
2000172c:	4b52      	ldr	r3, [pc, #328]	; (20001878 <PortConfig+0x1a4>)
2000172e:	2280      	movs	r2, #128	; 0x80
20001730:	609a      	str	r2, [r3, #8]
20001732:	4a50      	ldr	r2, [pc, #320]	; (20001874 <PortConfig+0x1a0>)
20001734:	4b4f      	ldr	r3, [pc, #316]	; (20001874 <PortConfig+0x1a0>)
20001736:	69db      	ldr	r3, [r3, #28]
20001738:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
2000173c:	61d3      	str	r3, [r2, #28]
2000173e:	4a4f      	ldr	r2, [pc, #316]	; (2000187c <PortConfig+0x1a8>)
20001740:	4b4e      	ldr	r3, [pc, #312]	; (2000187c <PortConfig+0x1a8>)
20001742:	689b      	ldr	r3, [r3, #8]
20001744:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20001748:	6093      	str	r3, [r2, #8]
2000174a:	4a4c      	ldr	r2, [pc, #304]	; (2000187c <PortConfig+0x1a8>)
2000174c:	4b4b      	ldr	r3, [pc, #300]	; (2000187c <PortConfig+0x1a8>)
2000174e:	689b      	ldr	r3, [r3, #8]
20001750:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
20001754:	6093      	str	r3, [r2, #8]
20001756:	4a49      	ldr	r2, [pc, #292]	; (2000187c <PortConfig+0x1a8>)
20001758:	4b48      	ldr	r3, [pc, #288]	; (2000187c <PortConfig+0x1a8>)
2000175a:	68db      	ldr	r3, [r3, #12]
2000175c:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
20001760:	60d3      	str	r3, [r2, #12]
20001762:	4a46      	ldr	r2, [pc, #280]	; (2000187c <PortConfig+0x1a8>)
20001764:	4b45      	ldr	r3, [pc, #276]	; (2000187c <PortConfig+0x1a8>)
20001766:	699b      	ldr	r3, [r3, #24]
20001768:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
2000176c:	6193      	str	r3, [r2, #24]
2000176e:	4a43      	ldr	r2, [pc, #268]	; (2000187c <PortConfig+0x1a8>)
20001770:	4b42      	ldr	r3, [pc, #264]	; (2000187c <PortConfig+0x1a8>)
20001772:	685b      	ldr	r3, [r3, #4]
20001774:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20001778:	6053      	str	r3, [r2, #4]
2000177a:	4a40      	ldr	r2, [pc, #256]	; (2000187c <PortConfig+0x1a8>)
2000177c:	4b3f      	ldr	r3, [pc, #252]	; (2000187c <PortConfig+0x1a8>)
2000177e:	685b      	ldr	r3, [r3, #4]
20001780:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20001784:	6053      	str	r3, [r2, #4]
20001786:	4a3d      	ldr	r2, [pc, #244]	; (2000187c <PortConfig+0x1a8>)
20001788:	4b3c      	ldr	r3, [pc, #240]	; (2000187c <PortConfig+0x1a8>)
2000178a:	689b      	ldr	r3, [r3, #8]
2000178c:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
20001790:	6093      	str	r3, [r2, #8]
20001792:	4a3a      	ldr	r2, [pc, #232]	; (2000187c <PortConfig+0x1a8>)
20001794:	4b39      	ldr	r3, [pc, #228]	; (2000187c <PortConfig+0x1a8>)
20001796:	689b      	ldr	r3, [r3, #8]
20001798:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
2000179c:	6093      	str	r3, [r2, #8]
2000179e:	4a37      	ldr	r2, [pc, #220]	; (2000187c <PortConfig+0x1a8>)
200017a0:	4b36      	ldr	r3, [pc, #216]	; (2000187c <PortConfig+0x1a8>)
200017a2:	68db      	ldr	r3, [r3, #12]
200017a4:	f043 0360 	orr.w	r3, r3, #96	; 0x60
200017a8:	60d3      	str	r3, [r2, #12]
200017aa:	4a34      	ldr	r2, [pc, #208]	; (2000187c <PortConfig+0x1a8>)
200017ac:	4b33      	ldr	r3, [pc, #204]	; (2000187c <PortConfig+0x1a8>)
200017ae:	68db      	ldr	r3, [r3, #12]
200017b0:	f043 031f 	orr.w	r3, r3, #31
200017b4:	60d3      	str	r3, [r2, #12]
200017b6:	4a2f      	ldr	r2, [pc, #188]	; (20001874 <PortConfig+0x1a0>)
200017b8:	4b2e      	ldr	r3, [pc, #184]	; (20001874 <PortConfig+0x1a0>)
200017ba:	69db      	ldr	r3, [r3, #28]
200017bc:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
200017c0:	61d3      	str	r3, [r2, #28]
200017c2:	4b2f      	ldr	r3, [pc, #188]	; (20001880 <PortConfig+0x1ac>)
200017c4:	4a2f      	ldr	r2, [pc, #188]	; (20001884 <PortConfig+0x1b0>)
200017c6:	609a      	str	r2, [r3, #8]
200017c8:	4b2d      	ldr	r3, [pc, #180]	; (20001880 <PortConfig+0x1ac>)
200017ca:	f64f 72ff 	movw	r2, #65535	; 0xffff
200017ce:	60da      	str	r2, [r3, #12]
200017d0:	4b2b      	ldr	r3, [pc, #172]	; (20001880 <PortConfig+0x1ac>)
200017d2:	f04f 32ff 	mov.w	r2, #4294967295
200017d6:	619a      	str	r2, [r3, #24]
200017d8:	4b29      	ldr	r3, [pc, #164]	; (20001880 <PortConfig+0x1ac>)
200017da:	f64f 72ff 	movw	r2, #65535	; 0xffff
200017de:	605a      	str	r2, [r3, #4]
200017e0:	4a27      	ldr	r2, [pc, #156]	; (20001880 <PortConfig+0x1ac>)
200017e2:	4b27      	ldr	r3, [pc, #156]	; (20001880 <PortConfig+0x1ac>)
200017e4:	681b      	ldr	r3, [r3, #0]
200017e6:	f023 0303 	bic.w	r3, r3, #3
200017ea:	6013      	str	r3, [r2, #0]
200017ec:	4a24      	ldr	r2, [pc, #144]	; (20001880 <PortConfig+0x1ac>)
200017ee:	4b24      	ldr	r3, [pc, #144]	; (20001880 <PortConfig+0x1ac>)
200017f0:	681b      	ldr	r3, [r3, #0]
200017f2:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200017f6:	6013      	str	r3, [r2, #0]
200017f8:	4a1e      	ldr	r2, [pc, #120]	; (20001874 <PortConfig+0x1a0>)
200017fa:	4b1e      	ldr	r3, [pc, #120]	; (20001874 <PortConfig+0x1a0>)
200017fc:	69db      	ldr	r3, [r3, #28]
200017fe:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
20001802:	61d3      	str	r3, [r2, #28]
20001804:	4b20      	ldr	r3, [pc, #128]	; (20001888 <PortConfig+0x1b4>)
20001806:	2200      	movs	r2, #0
20001808:	609a      	str	r2, [r3, #8]
2000180a:	4a1f      	ldr	r2, [pc, #124]	; (20001888 <PortConfig+0x1b4>)
2000180c:	4b1e      	ldr	r3, [pc, #120]	; (20001888 <PortConfig+0x1b4>)
2000180e:	685b      	ldr	r3, [r3, #4]
20001810:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001814:	6053      	str	r3, [r2, #4]
20001816:	4a1c      	ldr	r2, [pc, #112]	; (20001888 <PortConfig+0x1b4>)
20001818:	4b1b      	ldr	r3, [pc, #108]	; (20001888 <PortConfig+0x1b4>)
2000181a:	68db      	ldr	r3, [r3, #12]
2000181c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001820:	60d3      	str	r3, [r2, #12]
20001822:	4b19      	ldr	r3, [pc, #100]	; (20001888 <PortConfig+0x1b4>)
20001824:	f04f 32ff 	mov.w	r2, #4294967295
20001828:	619a      	str	r2, [r3, #24]
2000182a:	4a17      	ldr	r2, [pc, #92]	; (20001888 <PortConfig+0x1b4>)
2000182c:	4b16      	ldr	r3, [pc, #88]	; (20001888 <PortConfig+0x1b4>)
2000182e:	681b      	ldr	r3, [r3, #0]
20001830:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
20001834:	6013      	str	r3, [r2, #0]
20001836:	4a0f      	ldr	r2, [pc, #60]	; (20001874 <PortConfig+0x1a0>)
20001838:	4b0e      	ldr	r3, [pc, #56]	; (20001874 <PortConfig+0x1a0>)
2000183a:	69db      	ldr	r3, [r3, #28]
2000183c:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
20001840:	61d3      	str	r3, [r2, #28]
20001842:	4a12      	ldr	r2, [pc, #72]	; (2000188c <PortConfig+0x1b8>)
20001844:	4b11      	ldr	r3, [pc, #68]	; (2000188c <PortConfig+0x1b8>)
20001846:	68db      	ldr	r3, [r3, #12]
20001848:	f423 7300 	bic.w	r3, r3, #512	; 0x200
2000184c:	f023 0301 	bic.w	r3, r3, #1
20001850:	60d3      	str	r3, [r2, #12]
20001852:	4a08      	ldr	r2, [pc, #32]	; (20001874 <PortConfig+0x1a0>)
20001854:	4b07      	ldr	r3, [pc, #28]	; (20001874 <PortConfig+0x1a0>)
20001856:	69db      	ldr	r3, [r3, #28]
20001858:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
2000185c:	61d3      	str	r3, [r2, #28]
2000185e:	4a0c      	ldr	r2, [pc, #48]	; (20001890 <PortConfig+0x1bc>)
20001860:	4b0b      	ldr	r3, [pc, #44]	; (20001890 <PortConfig+0x1bc>)
20001862:	68db      	ldr	r3, [r3, #12]
20001864:	f423 7378 	bic.w	r3, r3, #992	; 0x3e0
20001868:	60d3      	str	r3, [r2, #12]
2000186a:	bf00      	nop
2000186c:	46bd      	mov	sp, r7
2000186e:	bc80      	pop	{r7}
20001870:	4770      	bx	lr
20001872:	bf00      	nop
20001874:	40020000 	.word	0x40020000
20001878:	400a8000 	.word	0x400a8000
2000187c:	400b0000 	.word	0x400b0000
20001880:	400b8000 	.word	0x400b8000
20001884:	000aaaa0 	.word	0x000aaaa0
20001888:	400e8000 	.word	0x400e8000
2000188c:	400c8000 	.word	0x400c8000
20001890:	400c0000 	.word	0x400c0000

20001894 <ClkConfig>:
20001894:	b480      	push	{r7}
20001896:	af00      	add	r7, sp, #0
20001898:	4a16      	ldr	r2, [pc, #88]	; (200018f4 <ClkConfig+0x60>)
2000189a:	4b16      	ldr	r3, [pc, #88]	; (200018f4 <ClkConfig+0x60>)
2000189c:	689b      	ldr	r3, [r3, #8]
2000189e:	f043 0301 	orr.w	r3, r3, #1
200018a2:	6093      	str	r3, [r2, #8]
200018a4:	bf00      	nop
200018a6:	4b13      	ldr	r3, [pc, #76]	; (200018f4 <ClkConfig+0x60>)
200018a8:	681b      	ldr	r3, [r3, #0]
200018aa:	f003 0304 	and.w	r3, r3, #4
200018ae:	2b00      	cmp	r3, #0
200018b0:	d0f9      	beq.n	200018a6 <ClkConfig+0x12>
200018b2:	4b10      	ldr	r3, [pc, #64]	; (200018f4 <ClkConfig+0x60>)
200018b4:	2206      	movs	r2, #6
200018b6:	60da      	str	r2, [r3, #12]
200018b8:	4b0e      	ldr	r3, [pc, #56]	; (200018f4 <ClkConfig+0x60>)
200018ba:	f640 1204 	movw	r2, #2308	; 0x904
200018be:	605a      	str	r2, [r3, #4]
200018c0:	bf00      	nop
200018c2:	4b0c      	ldr	r3, [pc, #48]	; (200018f4 <ClkConfig+0x60>)
200018c4:	681b      	ldr	r3, [r3, #0]
200018c6:	f003 0302 	and.w	r3, r3, #2
200018ca:	2b00      	cmp	r3, #0
200018cc:	d0f9      	beq.n	200018c2 <ClkConfig+0x2e>
200018ce:	4a09      	ldr	r2, [pc, #36]	; (200018f4 <ClkConfig+0x60>)
200018d0:	4b08      	ldr	r3, [pc, #32]	; (200018f4 <ClkConfig+0x60>)
200018d2:	68db      	ldr	r3, [r3, #12]
200018d4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200018d8:	60d3      	str	r3, [r2, #12]
200018da:	4a07      	ldr	r2, [pc, #28]	; (200018f8 <ClkConfig+0x64>)
200018dc:	4b06      	ldr	r3, [pc, #24]	; (200018f8 <ClkConfig+0x64>)
200018de:	681b      	ldr	r3, [r3, #0]
200018e0:	f043 0320 	orr.w	r3, r3, #32
200018e4:	6013      	str	r3, [r2, #0]
200018e6:	4b05      	ldr	r3, [pc, #20]	; (200018fc <ClkConfig+0x68>)
200018e8:	2200      	movs	r2, #0
200018ea:	601a      	str	r2, [r3, #0]
200018ec:	bf00      	nop
200018ee:	46bd      	mov	sp, r7
200018f0:	bc80      	pop	{r7}
200018f2:	4770      	bx	lr
200018f4:	40020000 	.word	0x40020000
200018f8:	40018000 	.word	0x40018000
200018fc:	20002f00 	.word	0x20002f00

20001900 <TimerConfig>:
20001900:	b580      	push	{r7, lr}
20001902:	af00      	add	r7, sp, #0
20001904:	4a99      	ldr	r2, [pc, #612]	; (20001b6c <TimerConfig+0x26c>)
20001906:	4b99      	ldr	r3, [pc, #612]	; (20001b6c <TimerConfig+0x26c>)
20001908:	69db      	ldr	r3, [r3, #28]
2000190a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
2000190e:	61d3      	str	r3, [r2, #28]
20001910:	4a96      	ldr	r2, [pc, #600]	; (20001b6c <TimerConfig+0x26c>)
20001912:	4b96      	ldr	r3, [pc, #600]	; (20001b6c <TimerConfig+0x26c>)
20001914:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001916:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
2000191a:	6253      	str	r3, [r2, #36]	; 0x24
2000191c:	4a93      	ldr	r2, [pc, #588]	; (20001b6c <TimerConfig+0x26c>)
2000191e:	4b93      	ldr	r3, [pc, #588]	; (20001b6c <TimerConfig+0x26c>)
20001920:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001922:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001926:	6253      	str	r3, [r2, #36]	; 0x24
20001928:	4b91      	ldr	r3, [pc, #580]	; (20001b70 <TimerConfig+0x270>)
2000192a:	2200      	movs	r2, #0
2000192c:	601a      	str	r2, [r3, #0]
2000192e:	4b90      	ldr	r3, [pc, #576]	; (20001b70 <TimerConfig+0x270>)
20001930:	224f      	movs	r2, #79	; 0x4f
20001932:	605a      	str	r2, [r3, #4]
20001934:	4b8e      	ldr	r3, [pc, #568]	; (20001b70 <TimerConfig+0x270>)
20001936:	f240 32e7 	movw	r2, #999	; 0x3e7
2000193a:	609a      	str	r2, [r3, #8]
2000193c:	4a8c      	ldr	r2, [pc, #560]	; (20001b70 <TimerConfig+0x270>)
2000193e:	4b8c      	ldr	r3, [pc, #560]	; (20001b70 <TimerConfig+0x270>)
20001940:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001942:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
20001946:	6253      	str	r3, [r2, #36]	; 0x24
20001948:	4a89      	ldr	r2, [pc, #548]	; (20001b70 <TimerConfig+0x270>)
2000194a:	4b89      	ldr	r3, [pc, #548]	; (20001b70 <TimerConfig+0x270>)
2000194c:	6d9b      	ldr	r3, [r3, #88]	; 0x58
2000194e:	f043 0302 	orr.w	r3, r3, #2
20001952:	6593      	str	r3, [r2, #88]	; 0x58
20001954:	4b86      	ldr	r3, [pc, #536]	; (20001b70 <TimerConfig+0x270>)
20001956:	2201      	movs	r2, #1
20001958:	60da      	str	r2, [r3, #12]
2000195a:	4a84      	ldr	r2, [pc, #528]	; (20001b6c <TimerConfig+0x26c>)
2000195c:	4b83      	ldr	r3, [pc, #524]	; (20001b6c <TimerConfig+0x26c>)
2000195e:	69db      	ldr	r3, [r3, #28]
20001960:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
20001964:	61d3      	str	r3, [r2, #28]
20001966:	4a81      	ldr	r2, [pc, #516]	; (20001b6c <TimerConfig+0x26c>)
20001968:	4b80      	ldr	r3, [pc, #512]	; (20001b6c <TimerConfig+0x26c>)
2000196a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000196c:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
20001970:	6253      	str	r3, [r2, #36]	; 0x24
20001972:	4a7e      	ldr	r2, [pc, #504]	; (20001b6c <TimerConfig+0x26c>)
20001974:	4b7d      	ldr	r3, [pc, #500]	; (20001b6c <TimerConfig+0x26c>)
20001976:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001978:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
2000197c:	6253      	str	r3, [r2, #36]	; 0x24
2000197e:	4b7d      	ldr	r3, [pc, #500]	; (20001b74 <TimerConfig+0x274>)
20001980:	2200      	movs	r2, #0
20001982:	601a      	str	r2, [r3, #0]
20001984:	4b7b      	ldr	r3, [pc, #492]	; (20001b74 <TimerConfig+0x274>)
20001986:	2202      	movs	r2, #2
20001988:	605a      	str	r2, [r3, #4]
2000198a:	4b7a      	ldr	r3, [pc, #488]	; (20001b74 <TimerConfig+0x274>)
2000198c:	f240 32ff 	movw	r2, #1023	; 0x3ff
20001990:	609a      	str	r2, [r3, #8]
20001992:	4b78      	ldr	r3, [pc, #480]	; (20001b74 <TimerConfig+0x274>)
20001994:	f44f 7200 	mov.w	r2, #512	; 0x200
20001998:	611a      	str	r2, [r3, #16]
2000199a:	4b76      	ldr	r3, [pc, #472]	; (20001b74 <TimerConfig+0x274>)
2000199c:	f44f 7200 	mov.w	r2, #512	; 0x200
200019a0:	615a      	str	r2, [r3, #20]
200019a2:	4b74      	ldr	r3, [pc, #464]	; (20001b74 <TimerConfig+0x274>)
200019a4:	f44f 7200 	mov.w	r2, #512	; 0x200
200019a8:	619a      	str	r2, [r3, #24]
200019aa:	4b72      	ldr	r3, [pc, #456]	; (20001b74 <TimerConfig+0x274>)
200019ac:	22c8      	movs	r2, #200	; 0xc8
200019ae:	61da      	str	r2, [r3, #28]
200019b0:	4a70      	ldr	r2, [pc, #448]	; (20001b74 <TimerConfig+0x274>)
200019b2:	4b70      	ldr	r3, [pc, #448]	; (20001b74 <TimerConfig+0x274>)
200019b4:	6a1b      	ldr	r3, [r3, #32]
200019b6:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200019ba:	6213      	str	r3, [r2, #32]
200019bc:	4a6d      	ldr	r2, [pc, #436]	; (20001b74 <TimerConfig+0x274>)
200019be:	4b6d      	ldr	r3, [pc, #436]	; (20001b74 <TimerConfig+0x274>)
200019c0:	6a1b      	ldr	r3, [r3, #32]
200019c2:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200019c6:	6213      	str	r3, [r2, #32]
200019c8:	4a6a      	ldr	r2, [pc, #424]	; (20001b74 <TimerConfig+0x274>)
200019ca:	4b6a      	ldr	r3, [pc, #424]	; (20001b74 <TimerConfig+0x274>)
200019cc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019ce:	f023 030f 	bic.w	r3, r3, #15
200019d2:	6313      	str	r3, [r2, #48]	; 0x30
200019d4:	4a67      	ldr	r2, [pc, #412]	; (20001b74 <TimerConfig+0x274>)
200019d6:	4b67      	ldr	r3, [pc, #412]	; (20001b74 <TimerConfig+0x274>)
200019d8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019da:	f043 030c 	orr.w	r3, r3, #12
200019de:	6313      	str	r3, [r2, #48]	; 0x30
200019e0:	4a64      	ldr	r2, [pc, #400]	; (20001b74 <TimerConfig+0x274>)
200019e2:	4b64      	ldr	r3, [pc, #400]	; (20001b74 <TimerConfig+0x274>)
200019e4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019e6:	f043 0301 	orr.w	r3, r3, #1
200019ea:	6313      	str	r3, [r2, #48]	; 0x30
200019ec:	4a61      	ldr	r2, [pc, #388]	; (20001b74 <TimerConfig+0x274>)
200019ee:	4b61      	ldr	r3, [pc, #388]	; (20001b74 <TimerConfig+0x274>)
200019f0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019f2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200019f6:	6313      	str	r3, [r2, #48]	; 0x30
200019f8:	4a5e      	ldr	r2, [pc, #376]	; (20001b74 <TimerConfig+0x274>)
200019fa:	4b5e      	ldr	r3, [pc, #376]	; (20001b74 <TimerConfig+0x274>)
200019fc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019fe:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001a02:	6313      	str	r3, [r2, #48]	; 0x30
20001a04:	4a5b      	ldr	r2, [pc, #364]	; (20001b74 <TimerConfig+0x274>)
20001a06:	4b5b      	ldr	r3, [pc, #364]	; (20001b74 <TimerConfig+0x274>)
20001a08:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001a0a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001a0e:	6313      	str	r3, [r2, #48]	; 0x30
20001a10:	4a58      	ldr	r2, [pc, #352]	; (20001b74 <TimerConfig+0x274>)
20001a12:	4b58      	ldr	r3, [pc, #352]	; (20001b74 <TimerConfig+0x274>)
20001a14:	6e1b      	ldr	r3, [r3, #96]	; 0x60
20001a16:	f043 0308 	orr.w	r3, r3, #8
20001a1a:	6613      	str	r3, [r2, #96]	; 0x60
20001a1c:	4a55      	ldr	r2, [pc, #340]	; (20001b74 <TimerConfig+0x274>)
20001a1e:	4b55      	ldr	r3, [pc, #340]	; (20001b74 <TimerConfig+0x274>)
20001a20:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001a22:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001a26:	6253      	str	r3, [r2, #36]	; 0x24
20001a28:	4a52      	ldr	r2, [pc, #328]	; (20001b74 <TimerConfig+0x274>)
20001a2a:	4b52      	ldr	r3, [pc, #328]	; (20001b74 <TimerConfig+0x274>)
20001a2c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001a2e:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001a32:	6253      	str	r3, [r2, #36]	; 0x24
20001a34:	4a4f      	ldr	r2, [pc, #316]	; (20001b74 <TimerConfig+0x274>)
20001a36:	4b4f      	ldr	r3, [pc, #316]	; (20001b74 <TimerConfig+0x274>)
20001a38:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a3a:	f023 030f 	bic.w	r3, r3, #15
20001a3e:	6353      	str	r3, [r2, #52]	; 0x34
20001a40:	4a4c      	ldr	r2, [pc, #304]	; (20001b74 <TimerConfig+0x274>)
20001a42:	4b4c      	ldr	r3, [pc, #304]	; (20001b74 <TimerConfig+0x274>)
20001a44:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a46:	f043 030c 	orr.w	r3, r3, #12
20001a4a:	6353      	str	r3, [r2, #52]	; 0x34
20001a4c:	4a49      	ldr	r2, [pc, #292]	; (20001b74 <TimerConfig+0x274>)
20001a4e:	4b49      	ldr	r3, [pc, #292]	; (20001b74 <TimerConfig+0x274>)
20001a50:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a52:	f043 0301 	orr.w	r3, r3, #1
20001a56:	6353      	str	r3, [r2, #52]	; 0x34
20001a58:	4a46      	ldr	r2, [pc, #280]	; (20001b74 <TimerConfig+0x274>)
20001a5a:	4b46      	ldr	r3, [pc, #280]	; (20001b74 <TimerConfig+0x274>)
20001a5c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a5e:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001a62:	6353      	str	r3, [r2, #52]	; 0x34
20001a64:	4a43      	ldr	r2, [pc, #268]	; (20001b74 <TimerConfig+0x274>)
20001a66:	4b43      	ldr	r3, [pc, #268]	; (20001b74 <TimerConfig+0x274>)
20001a68:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a6a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001a6e:	6353      	str	r3, [r2, #52]	; 0x34
20001a70:	4a40      	ldr	r2, [pc, #256]	; (20001b74 <TimerConfig+0x274>)
20001a72:	4b40      	ldr	r3, [pc, #256]	; (20001b74 <TimerConfig+0x274>)
20001a74:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a76:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001a7a:	6353      	str	r3, [r2, #52]	; 0x34
20001a7c:	4a3d      	ldr	r2, [pc, #244]	; (20001b74 <TimerConfig+0x274>)
20001a7e:	4b3d      	ldr	r3, [pc, #244]	; (20001b74 <TimerConfig+0x274>)
20001a80:	6e5b      	ldr	r3, [r3, #100]	; 0x64
20001a82:	f043 0308 	orr.w	r3, r3, #8
20001a86:	6653      	str	r3, [r2, #100]	; 0x64
20001a88:	4a3a      	ldr	r2, [pc, #232]	; (20001b74 <TimerConfig+0x274>)
20001a8a:	4b3a      	ldr	r3, [pc, #232]	; (20001b74 <TimerConfig+0x274>)
20001a8c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001a8e:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001a92:	6293      	str	r3, [r2, #40]	; 0x28
20001a94:	4a37      	ldr	r2, [pc, #220]	; (20001b74 <TimerConfig+0x274>)
20001a96:	4b37      	ldr	r3, [pc, #220]	; (20001b74 <TimerConfig+0x274>)
20001a98:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001a9a:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001a9e:	6293      	str	r3, [r2, #40]	; 0x28
20001aa0:	4a34      	ldr	r2, [pc, #208]	; (20001b74 <TimerConfig+0x274>)
20001aa2:	4b34      	ldr	r3, [pc, #208]	; (20001b74 <TimerConfig+0x274>)
20001aa4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001aa6:	f023 030f 	bic.w	r3, r3, #15
20001aaa:	6393      	str	r3, [r2, #56]	; 0x38
20001aac:	4a31      	ldr	r2, [pc, #196]	; (20001b74 <TimerConfig+0x274>)
20001aae:	4b31      	ldr	r3, [pc, #196]	; (20001b74 <TimerConfig+0x274>)
20001ab0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001ab2:	f043 030c 	orr.w	r3, r3, #12
20001ab6:	6393      	str	r3, [r2, #56]	; 0x38
20001ab8:	4a2e      	ldr	r2, [pc, #184]	; (20001b74 <TimerConfig+0x274>)
20001aba:	4b2e      	ldr	r3, [pc, #184]	; (20001b74 <TimerConfig+0x274>)
20001abc:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001abe:	f043 0301 	orr.w	r3, r3, #1
20001ac2:	6393      	str	r3, [r2, #56]	; 0x38
20001ac4:	4a2b      	ldr	r2, [pc, #172]	; (20001b74 <TimerConfig+0x274>)
20001ac6:	4b2b      	ldr	r3, [pc, #172]	; (20001b74 <TimerConfig+0x274>)
20001ac8:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001aca:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001ace:	6393      	str	r3, [r2, #56]	; 0x38
20001ad0:	4a28      	ldr	r2, [pc, #160]	; (20001b74 <TimerConfig+0x274>)
20001ad2:	4b28      	ldr	r3, [pc, #160]	; (20001b74 <TimerConfig+0x274>)
20001ad4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001ad6:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001ada:	6393      	str	r3, [r2, #56]	; 0x38
20001adc:	4a25      	ldr	r2, [pc, #148]	; (20001b74 <TimerConfig+0x274>)
20001ade:	4b25      	ldr	r3, [pc, #148]	; (20001b74 <TimerConfig+0x274>)
20001ae0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001ae2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001ae6:	6393      	str	r3, [r2, #56]	; 0x38
20001ae8:	4a22      	ldr	r2, [pc, #136]	; (20001b74 <TimerConfig+0x274>)
20001aea:	4b22      	ldr	r3, [pc, #136]	; (20001b74 <TimerConfig+0x274>)
20001aec:	6e9b      	ldr	r3, [r3, #104]	; 0x68
20001aee:	f043 0308 	orr.w	r3, r3, #8
20001af2:	6693      	str	r3, [r2, #104]	; 0x68
20001af4:	4a1f      	ldr	r2, [pc, #124]	; (20001b74 <TimerConfig+0x274>)
20001af6:	4b1f      	ldr	r3, [pc, #124]	; (20001b74 <TimerConfig+0x274>)
20001af8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001afa:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001afe:	62d3      	str	r3, [r2, #44]	; 0x2c
20001b00:	4a1c      	ldr	r2, [pc, #112]	; (20001b74 <TimerConfig+0x274>)
20001b02:	4b1c      	ldr	r3, [pc, #112]	; (20001b74 <TimerConfig+0x274>)
20001b04:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001b06:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001b0a:	62d3      	str	r3, [r2, #44]	; 0x2c
20001b0c:	4a19      	ldr	r2, [pc, #100]	; (20001b74 <TimerConfig+0x274>)
20001b0e:	4b19      	ldr	r3, [pc, #100]	; (20001b74 <TimerConfig+0x274>)
20001b10:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b12:	f023 030f 	bic.w	r3, r3, #15
20001b16:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b18:	4a16      	ldr	r2, [pc, #88]	; (20001b74 <TimerConfig+0x274>)
20001b1a:	4b16      	ldr	r3, [pc, #88]	; (20001b74 <TimerConfig+0x274>)
20001b1c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b1e:	f043 030c 	orr.w	r3, r3, #12
20001b22:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b24:	4a13      	ldr	r2, [pc, #76]	; (20001b74 <TimerConfig+0x274>)
20001b26:	4b13      	ldr	r3, [pc, #76]	; (20001b74 <TimerConfig+0x274>)
20001b28:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b2a:	f043 0301 	orr.w	r3, r3, #1
20001b2e:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b30:	4a10      	ldr	r2, [pc, #64]	; (20001b74 <TimerConfig+0x274>)
20001b32:	4b10      	ldr	r3, [pc, #64]	; (20001b74 <TimerConfig+0x274>)
20001b34:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b36:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001b3a:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b3c:	4a0d      	ldr	r2, [pc, #52]	; (20001b74 <TimerConfig+0x274>)
20001b3e:	4b0d      	ldr	r3, [pc, #52]	; (20001b74 <TimerConfig+0x274>)
20001b40:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b42:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001b46:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b48:	4a0a      	ldr	r2, [pc, #40]	; (20001b74 <TimerConfig+0x274>)
20001b4a:	4b0a      	ldr	r3, [pc, #40]	; (20001b74 <TimerConfig+0x274>)
20001b4c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b4e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001b52:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b54:	4a07      	ldr	r2, [pc, #28]	; (20001b74 <TimerConfig+0x274>)
20001b56:	4b07      	ldr	r3, [pc, #28]	; (20001b74 <TimerConfig+0x274>)
20001b58:	6edb      	ldr	r3, [r3, #108]	; 0x6c
20001b5a:	f043 0308 	orr.w	r3, r3, #8
20001b5e:	66d3      	str	r3, [r2, #108]	; 0x6c
20001b60:	4a04      	ldr	r2, [pc, #16]	; (20001b74 <TimerConfig+0x274>)
20001b62:	4b04      	ldr	r3, [pc, #16]	; (20001b74 <TimerConfig+0x274>)
20001b64:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001b66:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001b6a:	e005      	b.n	20001b78 <TimerConfig+0x278>
20001b6c:	40020000 	.word	0x40020000
20001b70:	40070000 	.word	0x40070000
20001b74:	40080000 	.word	0x40080000
20001b78:	6413      	str	r3, [r2, #64]	; 0x40
20001b7a:	4a10      	ldr	r2, [pc, #64]	; (20001bbc <TimerConfig+0x2bc>)
20001b7c:	4b0f      	ldr	r3, [pc, #60]	; (20001bbc <TimerConfig+0x2bc>)
20001b7e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
20001b80:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001b84:	6453      	str	r3, [r2, #68]	; 0x44
20001b86:	4a0d      	ldr	r2, [pc, #52]	; (20001bbc <TimerConfig+0x2bc>)
20001b88:	4b0c      	ldr	r3, [pc, #48]	; (20001bbc <TimerConfig+0x2bc>)
20001b8a:	6c9b      	ldr	r3, [r3, #72]	; 0x48
20001b8c:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001b90:	6493      	str	r3, [r2, #72]	; 0x48
20001b92:	4a0a      	ldr	r2, [pc, #40]	; (20001bbc <TimerConfig+0x2bc>)
20001b94:	4b09      	ldr	r3, [pc, #36]	; (20001bbc <TimerConfig+0x2bc>)
20001b96:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
20001b98:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001b9c:	64d3      	str	r3, [r2, #76]	; 0x4c
20001b9e:	4a07      	ldr	r2, [pc, #28]	; (20001bbc <TimerConfig+0x2bc>)
20001ba0:	4b06      	ldr	r3, [pc, #24]	; (20001bbc <TimerConfig+0x2bc>)
20001ba2:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001ba4:	f043 0302 	orr.w	r3, r3, #2
20001ba8:	6593      	str	r3, [r2, #88]	; 0x58
20001baa:	2010      	movs	r0, #16
20001bac:	f7ff fd7a 	bl	200016a4 <NVIC_EnableIRQ>
20001bb0:	4b02      	ldr	r3, [pc, #8]	; (20001bbc <TimerConfig+0x2bc>)
20001bb2:	2201      	movs	r2, #1
20001bb4:	60da      	str	r2, [r3, #12]
20001bb6:	bf00      	nop
20001bb8:	bd80      	pop	{r7, pc}
20001bba:	bf00      	nop
20001bbc:	40080000 	.word	0x40080000

20001bc0 <set_ram_vt>:
20001bc0:	b480      	push	{r7}
20001bc2:	b085      	sub	sp, #20
20001bc4:	af00      	add	r7, sp, #0
20001bc6:	2300      	movs	r3, #0
20001bc8:	60fb      	str	r3, [r7, #12]
20001bca:	2300      	movs	r3, #0
20001bcc:	607b      	str	r3, [r7, #4]
20001bce:	4b16      	ldr	r3, [pc, #88]	; (20001c28 <set_ram_vt+0x68>)
20001bd0:	60bb      	str	r3, [r7, #8]
20001bd2:	2300      	movs	r3, #0
20001bd4:	60fb      	str	r3, [r7, #12]
20001bd6:	e00b      	b.n	20001bf0 <set_ram_vt+0x30>
20001bd8:	68bb      	ldr	r3, [r7, #8]
20001bda:	1d1a      	adds	r2, r3, #4
20001bdc:	60ba      	str	r2, [r7, #8]
20001bde:	68fa      	ldr	r2, [r7, #12]
20001be0:	0092      	lsls	r2, r2, #2
20001be2:	6879      	ldr	r1, [r7, #4]
20001be4:	440a      	add	r2, r1
20001be6:	6812      	ldr	r2, [r2, #0]
20001be8:	601a      	str	r2, [r3, #0]
20001bea:	68fb      	ldr	r3, [r7, #12]
20001bec:	3301      	adds	r3, #1
20001bee:	60fb      	str	r3, [r7, #12]
20001bf0:	68fb      	ldr	r3, [r7, #12]
20001bf2:	2b2f      	cmp	r3, #47	; 0x2f
20001bf4:	d9f0      	bls.n	20001bd8 <set_ram_vt+0x18>
20001bf6:	4b0d      	ldr	r3, [pc, #52]	; (20001c2c <set_ram_vt+0x6c>)
20001bf8:	4a0b      	ldr	r2, [pc, #44]	; (20001c28 <set_ram_vt+0x68>)
20001bfa:	609a      	str	r2, [r3, #8]
20001bfc:	4b0a      	ldr	r3, [pc, #40]	; (20001c28 <set_ram_vt+0x68>)
20001bfe:	4a0c      	ldr	r2, [pc, #48]	; (20001c30 <set_ram_vt+0x70>)
20001c00:	63da      	str	r2, [r3, #60]	; 0x3c
20001c02:	4b09      	ldr	r3, [pc, #36]	; (20001c28 <set_ram_vt+0x68>)
20001c04:	4a0b      	ldr	r2, [pc, #44]	; (20001c34 <set_ram_vt+0x74>)
20001c06:	659a      	str	r2, [r3, #88]	; 0x58
20001c08:	4b07      	ldr	r3, [pc, #28]	; (20001c28 <set_ram_vt+0x68>)
20001c0a:	4a0b      	ldr	r2, [pc, #44]	; (20001c38 <set_ram_vt+0x78>)
20001c0c:	679a      	str	r2, [r3, #120]	; 0x78
20001c0e:	4b06      	ldr	r3, [pc, #24]	; (20001c28 <set_ram_vt+0x68>)
20001c10:	4a0a      	ldr	r2, [pc, #40]	; (20001c3c <set_ram_vt+0x7c>)
20001c12:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20001c16:	4b04      	ldr	r3, [pc, #16]	; (20001c28 <set_ram_vt+0x68>)
20001c18:	4a09      	ldr	r2, [pc, #36]	; (20001c40 <set_ram_vt+0x80>)
20001c1a:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001c1e:	bf00      	nop
20001c20:	3714      	adds	r7, #20
20001c22:	46bd      	mov	sp, r7
20001c24:	bc80      	pop	{r7}
20001c26:	4770      	bx	lr
20001c28:	20003000 	.word	0x20003000
20001c2c:	e000ed00 	.word	0xe000ed00
20001c30:	20001cfd 	.word	0x20001cfd
20001c34:	20001d19 	.word	0x20001d19
20001c38:	200005b1 	.word	0x200005b1
20001c3c:	200005c9 	.word	0x200005c9
20001c40:	2000059d 	.word	0x2000059d

20001c44 <uart_init>:
20001c44:	b480      	push	{r7}
20001c46:	af00      	add	r7, sp, #0
20001c48:	4b22      	ldr	r3, [pc, #136]	; (20001cd4 <uart_init+0x90>)
20001c4a:	2200      	movs	r2, #0
20001c4c:	601a      	str	r2, [r3, #0]
20001c4e:	4a22      	ldr	r2, [pc, #136]	; (20001cd8 <uart_init+0x94>)
20001c50:	4b21      	ldr	r3, [pc, #132]	; (20001cd8 <uart_init+0x94>)
20001c52:	69db      	ldr	r3, [r3, #28]
20001c54:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001c58:	61d3      	str	r3, [r2, #28]
20001c5a:	4a1f      	ldr	r2, [pc, #124]	; (20001cd8 <uart_init+0x94>)
20001c5c:	4b1e      	ldr	r3, [pc, #120]	; (20001cd8 <uart_init+0x94>)
20001c5e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001c60:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001c64:	6293      	str	r3, [r2, #40]	; 0x28
20001c66:	4b1d      	ldr	r3, [pc, #116]	; (20001cdc <uart_init+0x98>)
20001c68:	2204      	movs	r2, #4
20001c6a:	625a      	str	r2, [r3, #36]	; 0x24
20001c6c:	4b1b      	ldr	r3, [pc, #108]	; (20001cdc <uart_init+0x98>)
20001c6e:	2200      	movs	r2, #0
20001c70:	629a      	str	r2, [r3, #40]	; 0x28
20001c72:	4a1a      	ldr	r2, [pc, #104]	; (20001cdc <uart_init+0x98>)
20001c74:	4b19      	ldr	r3, [pc, #100]	; (20001cdc <uart_init+0x98>)
20001c76:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001c78:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
20001c7c:	6353      	str	r3, [r2, #52]	; 0x34
20001c7e:	4a17      	ldr	r2, [pc, #92]	; (20001cdc <uart_init+0x98>)
20001c80:	4b16      	ldr	r3, [pc, #88]	; (20001cdc <uart_init+0x98>)
20001c82:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001c84:	f043 0312 	orr.w	r3, r3, #18
20001c88:	6353      	str	r3, [r2, #52]	; 0x34
20001c8a:	4a14      	ldr	r2, [pc, #80]	; (20001cdc <uart_init+0x98>)
20001c8c:	4b13      	ldr	r3, [pc, #76]	; (20001cdc <uart_init+0x98>)
20001c8e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001c90:	f043 0310 	orr.w	r3, r3, #16
20001c94:	62d3      	str	r3, [r2, #44]	; 0x2c
20001c96:	4a11      	ldr	r2, [pc, #68]	; (20001cdc <uart_init+0x98>)
20001c98:	4b10      	ldr	r3, [pc, #64]	; (20001cdc <uart_init+0x98>)
20001c9a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001c9c:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001ca0:	62d3      	str	r3, [r2, #44]	; 0x2c
20001ca2:	4a0e      	ldr	r2, [pc, #56]	; (20001cdc <uart_init+0x98>)
20001ca4:	4b0d      	ldr	r3, [pc, #52]	; (20001cdc <uart_init+0x98>)
20001ca6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001ca8:	f443 7340 	orr.w	r3, r3, #768	; 0x300
20001cac:	f043 0301 	orr.w	r3, r3, #1
20001cb0:	6313      	str	r3, [r2, #48]	; 0x30
20001cb2:	4a0a      	ldr	r2, [pc, #40]	; (20001cdc <uart_init+0x98>)
20001cb4:	4b09      	ldr	r3, [pc, #36]	; (20001cdc <uart_init+0x98>)
20001cb6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001cb8:	f043 0310 	orr.w	r3, r3, #16
20001cbc:	6393      	str	r3, [r2, #56]	; 0x38
20001cbe:	4a07      	ldr	r2, [pc, #28]	; (20001cdc <uart_init+0x98>)
20001cc0:	4b06      	ldr	r3, [pc, #24]	; (20001cdc <uart_init+0x98>)
20001cc2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001cc4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001cc8:	6393      	str	r3, [r2, #56]	; 0x38
20001cca:	bf00      	nop
20001ccc:	46bd      	mov	sp, r7
20001cce:	bc80      	pop	{r7}
20001cd0:	4770      	bx	lr
20001cd2:	bf00      	nop
20001cd4:	200030d0 	.word	0x200030d0
20001cd8:	40020000 	.word	0x40020000
20001cdc:	40030000 	.word	0x40030000

20001ce0 <system_init>:
20001ce0:	b580      	push	{r7, lr}
20001ce2:	af00      	add	r7, sp, #0
20001ce4:	f7ff ff6c 	bl	20001bc0 <set_ram_vt>
20001ce8:	f7ff fdd4 	bl	20001894 <ClkConfig>
20001cec:	f7ff fcf2 	bl	200016d4 <PortConfig>
20001cf0:	f7ff fe06 	bl	20001900 <TimerConfig>
20001cf4:	f7ff ffa6 	bl	20001c44 <uart_init>
20001cf8:	bf00      	nop
20001cfa:	bd80      	pop	{r7, pc}

20001cfc <SysTick_Handler>:
20001cfc:	b480      	push	{r7}
20001cfe:	af00      	add	r7, sp, #0
20001d00:	4b04      	ldr	r3, [pc, #16]	; (20001d14 <SysTick_Handler+0x18>)
20001d02:	681b      	ldr	r3, [r3, #0]
20001d04:	3301      	adds	r3, #1
20001d06:	4a03      	ldr	r2, [pc, #12]	; (20001d14 <SysTick_Handler+0x18>)
20001d08:	6013      	str	r3, [r2, #0]
20001d0a:	bf00      	nop
20001d0c:	46bd      	mov	sp, r7
20001d0e:	bc80      	pop	{r7}
20001d10:	4770      	bx	lr
20001d12:	bf00      	nop
20001d14:	20002f00 	.word	0x20002f00

20001d18 <UART1_Handler>:
20001d18:	b480      	push	{r7}
20001d1a:	b083      	sub	sp, #12
20001d1c:	af00      	add	r7, sp, #0
20001d1e:	4b1d      	ldr	r3, [pc, #116]	; (20001d94 <UART1_Handler+0x7c>)
20001d20:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001d22:	f003 0310 	and.w	r3, r3, #16
20001d26:	2b00      	cmp	r3, #0
20001d28:	d01f      	beq.n	20001d6a <UART1_Handler+0x52>
20001d2a:	e002      	b.n	20001d32 <UART1_Handler+0x1a>
20001d2c:	4b19      	ldr	r3, [pc, #100]	; (20001d94 <UART1_Handler+0x7c>)
20001d2e:	681b      	ldr	r3, [r3, #0]
20001d30:	71fb      	strb	r3, [r7, #7]
20001d32:	4b18      	ldr	r3, [pc, #96]	; (20001d94 <UART1_Handler+0x7c>)
20001d34:	699b      	ldr	r3, [r3, #24]
20001d36:	f003 0310 	and.w	r3, r3, #16
20001d3a:	2b00      	cmp	r3, #0
20001d3c:	d0f6      	beq.n	20001d2c <UART1_Handler+0x14>
20001d3e:	4b16      	ldr	r3, [pc, #88]	; (20001d98 <UART1_Handler+0x80>)
20001d40:	681b      	ldr	r3, [r3, #0]
20001d42:	80bb      	strh	r3, [r7, #4]
20001d44:	4b14      	ldr	r3, [pc, #80]	; (20001d98 <UART1_Handler+0x80>)
20001d46:	689b      	ldr	r3, [r3, #8]
20001d48:	085b      	lsrs	r3, r3, #1
20001d4a:	807b      	strh	r3, [r7, #2]
20001d4c:	88ba      	ldrh	r2, [r7, #4]
20001d4e:	887b      	ldrh	r3, [r7, #2]
20001d50:	429a      	cmp	r2, r3
20001d52:	d205      	bcs.n	20001d60 <UART1_Handler+0x48>
20001d54:	4a10      	ldr	r2, [pc, #64]	; (20001d98 <UART1_Handler+0x80>)
20001d56:	4b10      	ldr	r3, [pc, #64]	; (20001d98 <UART1_Handler+0x80>)
20001d58:	681b      	ldr	r3, [r3, #0]
20001d5a:	3b01      	subs	r3, #1
20001d5c:	6013      	str	r3, [r2, #0]
20001d5e:	e004      	b.n	20001d6a <UART1_Handler+0x52>
20001d60:	4a0d      	ldr	r2, [pc, #52]	; (20001d98 <UART1_Handler+0x80>)
20001d62:	4b0d      	ldr	r3, [pc, #52]	; (20001d98 <UART1_Handler+0x80>)
20001d64:	681b      	ldr	r3, [r3, #0]
20001d66:	3301      	adds	r3, #1
20001d68:	6013      	str	r3, [r2, #0]
20001d6a:	4b0a      	ldr	r3, [pc, #40]	; (20001d94 <UART1_Handler+0x7c>)
20001d6c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001d6e:	f003 0340 	and.w	r3, r3, #64	; 0x40
20001d72:	2b00      	cmp	r3, #0
20001d74:	d009      	beq.n	20001d8a <UART1_Handler+0x72>
20001d76:	e002      	b.n	20001d7e <UART1_Handler+0x66>
20001d78:	4b06      	ldr	r3, [pc, #24]	; (20001d94 <UART1_Handler+0x7c>)
20001d7a:	681b      	ldr	r3, [r3, #0]
20001d7c:	707b      	strb	r3, [r7, #1]
20001d7e:	4b05      	ldr	r3, [pc, #20]	; (20001d94 <UART1_Handler+0x7c>)
20001d80:	699b      	ldr	r3, [r3, #24]
20001d82:	f003 0310 	and.w	r3, r3, #16
20001d86:	2b00      	cmp	r3, #0
20001d88:	d0f6      	beq.n	20001d78 <UART1_Handler+0x60>
20001d8a:	bf00      	nop
20001d8c:	370c      	adds	r7, #12
20001d8e:	46bd      	mov	sp, r7
20001d90:	bc80      	pop	{r7}
20001d92:	4770      	bx	lr
20001d94:	40030000 	.word	0x40030000
20001d98:	40070000 	.word	0x40070000
