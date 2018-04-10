
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
20000026:	f001 fe3b 	bl	20001ca0 <system_init>
2000002a:	f000 fa1d 	bl	20000468 <ssi_init>
2000002e:	f000 fa8f 	bl	20000550 <dac_init>
20000032:	f001 fae1 	bl	200015f8 <adc_dma_init>
20000036:	22c8      	movs	r2, #200	; 0xc8
20000038:	2150      	movs	r1, #80	; 0x50
2000003a:	481d      	ldr	r0, [pc, #116]	; (200000b0 <main+0xb0>)
2000003c:	f000 fe3c 	bl	20000cb8 <reg_init>
20000040:	22c8      	movs	r2, #200	; 0xc8
20000042:	2150      	movs	r1, #80	; 0x50
20000044:	481b      	ldr	r0, [pc, #108]	; (200000b4 <main+0xb4>)
20000046:	f000 fe37 	bl	20000cb8 <reg_init>
2000004a:	f241 3288 	movw	r2, #5000	; 0x1388
2000004e:	2100      	movs	r1, #0
20000050:	4819      	ldr	r0, [pc, #100]	; (200000b8 <main+0xb8>)
20000052:	f000 fe31 	bl	20000cb8 <reg_init>
20000056:	f640 32b8 	movw	r2, #3000	; 0xbb8
2000005a:	2100      	movs	r1, #0
2000005c:	4817      	ldr	r0, [pc, #92]	; (200000bc <main+0xbc>)
2000005e:	f000 fe2b 	bl	20000cb8 <reg_init>
20000062:	4a17      	ldr	r2, [pc, #92]	; (200000c0 <main+0xc0>)
20000064:	2100      	movs	r1, #0
20000066:	4817      	ldr	r0, [pc, #92]	; (200000c4 <main+0xc4>)
20000068:	f000 fe26 	bl	20000cb8 <reg_init>
2000006c:	4b16      	ldr	r3, [pc, #88]	; (200000c8 <main+0xc8>)
2000006e:	2200      	movs	r2, #0
20000070:	701a      	strb	r2, [r3, #0]
20000072:	2300      	movs	r3, #0
20000074:	657b      	str	r3, [r7, #84]	; 0x54
20000076:	e006      	b.n	20000086 <main+0x86>
20000078:	2100      	movs	r1, #0
2000007a:	2000      	movs	r0, #0
2000007c:	f000 f98c 	bl	20000398 <mfilter>
20000080:	6d7b      	ldr	r3, [r7, #84]	; 0x54
20000082:	3301      	adds	r3, #1
20000084:	657b      	str	r3, [r7, #84]	; 0x54
20000086:	6d7b      	ldr	r3, [r7, #84]	; 0x54
20000088:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
2000008c:	dbf4      	blt.n	20000078 <main+0x78>
2000008e:	2300      	movs	r3, #0
20000090:	653b      	str	r3, [r7, #80]	; 0x50
20000092:	2300      	movs	r3, #0
20000094:	64fb      	str	r3, [r7, #76]	; 0x4c
20000096:	4b0d      	ldr	r3, [pc, #52]	; (200000cc <main+0xcc>)
20000098:	2200      	movs	r2, #0
2000009a:	601a      	str	r2, [r3, #0]
2000009c:	4b0c      	ldr	r3, [pc, #48]	; (200000d0 <main+0xd0>)
2000009e:	2200      	movs	r2, #0
200000a0:	601a      	str	r2, [r3, #0]
200000a2:	4b0c      	ldr	r3, [pc, #48]	; (200000d4 <main+0xd4>)
200000a4:	2200      	movs	r2, #0
200000a6:	601a      	str	r2, [r3, #0]
200000a8:	2300      	movs	r3, #0
200000aa:	657b      	str	r3, [r7, #84]	; 0x54
200000ac:	e047      	b.n	2000013e <main+0x13e>
200000ae:	bf00      	nop
200000b0:	20002e44 	.word	0x20002e44
200000b4:	20002e54 	.word	0x20002e54
200000b8:	20002e64 	.word	0x20002e64
200000bc:	20002e74 	.word	0x20002e74
200000c0:	0007a120 	.word	0x0007a120
200000c4:	20002e84 	.word	0x20002e84
200000c8:	20002e3c 	.word	0x20002e3c
200000cc:	20002e10 	.word	0x20002e10
200000d0:	20002e14 	.word	0x20002e14
200000d4:	20002e04 	.word	0x20002e04
200000d8:	f001 faac 	bl	20001634 <adc_dma_wait>
200000dc:	4b97      	ldr	r3, [pc, #604]	; (2000033c <main+0x33c>)
200000de:	689b      	ldr	r3, [r3, #8]
200000e0:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000e4:	6d3b      	ldr	r3, [r7, #80]	; 0x50
200000e6:	4413      	add	r3, r2
200000e8:	653b      	str	r3, [r7, #80]	; 0x50
200000ea:	4b94      	ldr	r3, [pc, #592]	; (2000033c <main+0x33c>)
200000ec:	68db      	ldr	r3, [r3, #12]
200000ee:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000f2:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
200000f4:	4413      	add	r3, r2
200000f6:	64fb      	str	r3, [r7, #76]	; 0x4c
200000f8:	4b91      	ldr	r3, [pc, #580]	; (20000340 <main+0x340>)
200000fa:	689b      	ldr	r3, [r3, #8]
200000fc:	4618      	mov	r0, r3
200000fe:	f000 f9fd 	bl	200004fc <enc_crc>
20000102:	4602      	mov	r2, r0
20000104:	4b8f      	ldr	r3, [pc, #572]	; (20000344 <main+0x344>)
20000106:	681b      	ldr	r3, [r3, #0]
20000108:	4413      	add	r3, r2
2000010a:	461a      	mov	r2, r3
2000010c:	4b8d      	ldr	r3, [pc, #564]	; (20000344 <main+0x344>)
2000010e:	601a      	str	r2, [r3, #0]
20000110:	4b8a      	ldr	r3, [pc, #552]	; (2000033c <main+0x33c>)
20000112:	681b      	ldr	r3, [r3, #0]
20000114:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000118:	4a8b      	ldr	r2, [pc, #556]	; (20000348 <main+0x348>)
2000011a:	6812      	ldr	r2, [r2, #0]
2000011c:	4413      	add	r3, r2
2000011e:	461a      	mov	r2, r3
20000120:	4b89      	ldr	r3, [pc, #548]	; (20000348 <main+0x348>)
20000122:	601a      	str	r2, [r3, #0]
20000124:	4b85      	ldr	r3, [pc, #532]	; (2000033c <main+0x33c>)
20000126:	685b      	ldr	r3, [r3, #4]
20000128:	f3c3 030b 	ubfx	r3, r3, #0, #12
2000012c:	4a87      	ldr	r2, [pc, #540]	; (2000034c <main+0x34c>)
2000012e:	6812      	ldr	r2, [r2, #0]
20000130:	4413      	add	r3, r2
20000132:	461a      	mov	r2, r3
20000134:	4b85      	ldr	r3, [pc, #532]	; (2000034c <main+0x34c>)
20000136:	601a      	str	r2, [r3, #0]
20000138:	6d7b      	ldr	r3, [r7, #84]	; 0x54
2000013a:	3301      	adds	r3, #1
2000013c:	657b      	str	r3, [r7, #84]	; 0x54
2000013e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
20000140:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
20000144:	dbc8      	blt.n	200000d8 <main+0xd8>
20000146:	6d3b      	ldr	r3, [r7, #80]	; 0x50
20000148:	129b      	asrs	r3, r3, #10
2000014a:	653b      	str	r3, [r7, #80]	; 0x50
2000014c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
2000014e:	129b      	asrs	r3, r3, #10
20000150:	64fb      	str	r3, [r7, #76]	; 0x4c
20000152:	4b7c      	ldr	r3, [pc, #496]	; (20000344 <main+0x344>)
20000154:	681b      	ldr	r3, [r3, #0]
20000156:	129b      	asrs	r3, r3, #10
20000158:	4a7a      	ldr	r2, [pc, #488]	; (20000344 <main+0x344>)
2000015a:	6013      	str	r3, [r2, #0]
2000015c:	4b7c      	ldr	r3, [pc, #496]	; (20000350 <main+0x350>)
2000015e:	f44f 7202 	mov.w	r2, #520	; 0x208
20000162:	601a      	str	r2, [r3, #0]
20000164:	4b79      	ldr	r3, [pc, #484]	; (2000034c <main+0x34c>)
20000166:	681a      	ldr	r2, [r3, #0]
20000168:	4b77      	ldr	r3, [pc, #476]	; (20000348 <main+0x348>)
2000016a:	681b      	ldr	r3, [r3, #0]
2000016c:	129b      	asrs	r3, r3, #10
2000016e:	fb92 f3f3 	sdiv	r3, r2, r3
20000172:	4a78      	ldr	r2, [pc, #480]	; (20000354 <main+0x354>)
20000174:	6013      	str	r3, [r2, #0]
20000176:	4b76      	ldr	r3, [pc, #472]	; (20000350 <main+0x350>)
20000178:	681b      	ldr	r3, [r3, #0]
2000017a:	4a73      	ldr	r2, [pc, #460]	; (20000348 <main+0x348>)
2000017c:	6013      	str	r3, [r2, #0]
2000017e:	4b71      	ldr	r3, [pc, #452]	; (20000344 <main+0x344>)
20000180:	681b      	ldr	r3, [r3, #0]
20000182:	4a75      	ldr	r2, [pc, #468]	; (20000358 <main+0x358>)
20000184:	6013      	str	r3, [r2, #0]
20000186:	4b6f      	ldr	r3, [pc, #444]	; (20000344 <main+0x344>)
20000188:	681b      	ldr	r3, [r3, #0]
2000018a:	4a74      	ldr	r2, [pc, #464]	; (2000035c <main+0x35c>)
2000018c:	6013      	str	r3, [r2, #0]
2000018e:	4b6d      	ldr	r3, [pc, #436]	; (20000344 <main+0x344>)
20000190:	681b      	ldr	r3, [r3, #0]
20000192:	4618      	mov	r0, r3
20000194:	f001 f952 	bl	2000143c <encoder_init>
20000198:	4b71      	ldr	r3, [pc, #452]	; (20000360 <main+0x360>)
2000019a:	2200      	movs	r2, #0
2000019c:	601a      	str	r2, [r3, #0]
2000019e:	4b6e      	ldr	r3, [pc, #440]	; (20000358 <main+0x358>)
200001a0:	681b      	ldr	r3, [r3, #0]
200001a2:	4a70      	ldr	r2, [pc, #448]	; (20000364 <main+0x364>)
200001a4:	6013      	str	r3, [r2, #0]
200001a6:	2301      	movs	r3, #1
200001a8:	637b      	str	r3, [r7, #52]	; 0x34
200001aa:	2300      	movs	r3, #0
200001ac:	647b      	str	r3, [r7, #68]	; 0x44
200001ae:	4b6e      	ldr	r3, [pc, #440]	; (20000368 <main+0x368>)
200001b0:	2200      	movs	r2, #0
200001b2:	601a      	str	r2, [r3, #0]
200001b4:	4b6d      	ldr	r3, [pc, #436]	; (2000036c <main+0x36c>)
200001b6:	4a6e      	ldr	r2, [pc, #440]	; (20000370 <main+0x370>)
200001b8:	601a      	str	r2, [r3, #0]
200001ba:	4b6e      	ldr	r3, [pc, #440]	; (20000374 <main+0x374>)
200001bc:	2200      	movs	r2, #0
200001be:	701a      	strb	r2, [r3, #0]
200001c0:	f000 f910 	bl	200003e4 <brake_off>
200001c4:	f000 f92a 	bl	2000041c <motor_on>
200001c8:	f001 fa34 	bl	20001634 <adc_dma_wait>
200001cc:	6d3a      	ldr	r2, [r7, #80]	; 0x50
200001ce:	4b5b      	ldr	r3, [pc, #364]	; (2000033c <main+0x33c>)
200001d0:	689b      	ldr	r3, [r3, #8]
200001d2:	f3c3 030b 	ubfx	r3, r3, #0, #12
200001d6:	1ad3      	subs	r3, r2, r3
200001d8:	633b      	str	r3, [r7, #48]	; 0x30
200001da:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
200001dc:	4b57      	ldr	r3, [pc, #348]	; (2000033c <main+0x33c>)
200001de:	68db      	ldr	r3, [r3, #12]
200001e0:	f3c3 030b 	ubfx	r3, r3, #0, #12
200001e4:	1ad3      	subs	r3, r2, r3
200001e6:	62fb      	str	r3, [r7, #44]	; 0x2c
200001e8:	6b3a      	ldr	r2, [r7, #48]	; 0x30
200001ea:	6afb      	ldr	r3, [r7, #44]	; 0x2c
200001ec:	4413      	add	r3, r2
200001ee:	62bb      	str	r3, [r7, #40]	; 0x28
200001f0:	4b53      	ldr	r3, [pc, #332]	; (20000340 <main+0x340>)
200001f2:	689b      	ldr	r3, [r3, #8]
200001f4:	4618      	mov	r0, r3
200001f6:	f000 f981 	bl	200004fc <enc_crc>
200001fa:	6278      	str	r0, [r7, #36]	; 0x24
200001fc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
200001fe:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000202:	63bb      	str	r3, [r7, #56]	; 0x38
20000204:	4a5c      	ldr	r2, [pc, #368]	; (20000378 <main+0x378>)
20000206:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20000208:	6093      	str	r3, [r2, #8]
2000020a:	4b4c      	ldr	r3, [pc, #304]	; (2000033c <main+0x33c>)
2000020c:	685b      	ldr	r3, [r3, #4]
2000020e:	029a      	lsls	r2, r3, #10
20000210:	4b5a      	ldr	r3, [pc, #360]	; (2000037c <main+0x37c>)
20000212:	4013      	ands	r3, r2
20000214:	4a49      	ldr	r2, [pc, #292]	; (2000033c <main+0x33c>)
20000216:	6812      	ldr	r2, [r2, #0]
20000218:	f3c2 020b 	ubfx	r2, r2, #0, #12
2000021c:	fbb3 f3f2 	udiv	r3, r3, r2
20000220:	461a      	mov	r2, r3
20000222:	4b4a      	ldr	r3, [pc, #296]	; (2000034c <main+0x34c>)
20000224:	601a      	str	r2, [r3, #0]
20000226:	4a56      	ldr	r2, [pc, #344]	; (20000380 <main+0x380>)
20000228:	6a7b      	ldr	r3, [r7, #36]	; 0x24
2000022a:	6013      	str	r3, [r2, #0]
2000022c:	4b55      	ldr	r3, [pc, #340]	; (20000384 <main+0x384>)
2000022e:	681b      	ldr	r3, [r3, #0]
20000230:	3301      	adds	r3, #1
20000232:	4a54      	ldr	r2, [pc, #336]	; (20000384 <main+0x384>)
20000234:	6013      	str	r3, [r2, #0]
20000236:	4b53      	ldr	r3, [pc, #332]	; (20000384 <main+0x384>)
20000238:	681b      	ldr	r3, [r3, #0]
2000023a:	f003 0307 	and.w	r3, r3, #7
2000023e:	2b00      	cmp	r3, #0
20000240:	d124      	bne.n	2000028c <main+0x28c>
20000242:	f000 fabf 	bl	200007c4 <update_refposition>
20000246:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20000248:	4944      	ldr	r1, [pc, #272]	; (2000035c <main+0x35c>)
2000024a:	4618      	mov	r0, r3
2000024c:	f001 f8fc 	bl	20001448 <get_speed>
20000250:	6238      	str	r0, [r7, #32]
20000252:	4b46      	ldr	r3, [pc, #280]	; (2000036c <main+0x36c>)
20000254:	681b      	ldr	r3, [r3, #0]
20000256:	4798      	blx	r3
20000258:	63f8      	str	r0, [r7, #60]	; 0x3c
2000025a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
2000025c:	6a3b      	ldr	r3, [r7, #32]
2000025e:	1ad3      	subs	r3, r2, r3
20000260:	2200      	movs	r2, #0
20000262:	4619      	mov	r1, r3
20000264:	4848      	ldr	r0, [pc, #288]	; (20000388 <main+0x388>)
20000266:	f000 fd2d 	bl	20000cc4 <reg_update>
2000026a:	4b47      	ldr	r3, [pc, #284]	; (20000388 <main+0x388>)
2000026c:	68db      	ldr	r3, [r3, #12]
2000026e:	131b      	asrs	r3, r3, #12
20000270:	647b      	str	r3, [r7, #68]	; 0x44
20000272:	6c7b      	ldr	r3, [r7, #68]	; 0x44
20000274:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
20000278:	dd02      	ble.n	20000280 <main+0x280>
2000027a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
2000027e:	647b      	str	r3, [r7, #68]	; 0x44
20000280:	6c7b      	ldr	r3, [r7, #68]	; 0x44
20000282:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
20000286:	da01      	bge.n	2000028c <main+0x28c>
20000288:	4b40      	ldr	r3, [pc, #256]	; (2000038c <main+0x38c>)
2000028a:	647b      	str	r3, [r7, #68]	; 0x44
2000028c:	f000 f9f0 	bl	20000670 <update_telemetry>
20000290:	6bbb      	ldr	r3, [r7, #56]	; 0x38
20000292:	f503 7361 	add.w	r3, r3, #900	; 0x384
20000296:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000029a:	63bb      	str	r3, [r7, #56]	; 0x38
2000029c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
2000029e:	603b      	str	r3, [r7, #0]
200002a0:	6abb      	ldr	r3, [r7, #40]	; 0x28
200002a2:	607b      	str	r3, [r7, #4]
200002a4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
200002a6:	60bb      	str	r3, [r7, #8]
200002a8:	6bba      	ldr	r2, [r7, #56]	; 0x38
200002aa:	f107 010c 	add.w	r1, r7, #12
200002ae:	463b      	mov	r3, r7
200002b0:	4618      	mov	r0, r3
200002b2:	f000 fd2d 	bl	20000d10 <abc_to_dq>
200002b6:	68fb      	ldr	r3, [r7, #12]
200002b8:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
200002bc:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
200002c0:	693b      	ldr	r3, [r7, #16]
200002c2:	2b00      	cmp	r3, #0
200002c4:	bfb8      	it	lt
200002c6:	425b      	neglt	r3, r3
200002c8:	4413      	add	r3, r2
200002ca:	61fb      	str	r3, [r7, #28]
200002cc:	4b24      	ldr	r3, [pc, #144]	; (20000360 <main+0x360>)
200002ce:	681b      	ldr	r3, [r3, #0]
200002d0:	4619      	mov	r1, r3
200002d2:	69f8      	ldr	r0, [r7, #28]
200002d4:	f000 f860 	bl	20000398 <mfilter>
200002d8:	4602      	mov	r2, r0
200002da:	4b21      	ldr	r3, [pc, #132]	; (20000360 <main+0x360>)
200002dc:	601a      	str	r2, [r3, #0]
200002de:	68fb      	ldr	r3, [r7, #12]
200002e0:	425b      	negs	r3, r3
200002e2:	61bb      	str	r3, [r7, #24]
200002e4:	693b      	ldr	r3, [r7, #16]
200002e6:	6c7a      	ldr	r2, [r7, #68]	; 0x44
200002e8:	1ad3      	subs	r3, r2, r3
200002ea:	617b      	str	r3, [r7, #20]
200002ec:	6cba      	ldr	r2, [r7, #72]	; 0x48
200002ee:	69b9      	ldr	r1, [r7, #24]
200002f0:	4827      	ldr	r0, [pc, #156]	; (20000390 <main+0x390>)
200002f2:	f000 fce7 	bl	20000cc4 <reg_update>
200002f6:	6cba      	ldr	r2, [r7, #72]	; 0x48
200002f8:	6979      	ldr	r1, [r7, #20]
200002fa:	4826      	ldr	r0, [pc, #152]	; (20000394 <main+0x394>)
200002fc:	f000 fce2 	bl	20000cc4 <reg_update>
20000300:	4b23      	ldr	r3, [pc, #140]	; (20000390 <main+0x390>)
20000302:	68db      	ldr	r3, [r3, #12]
20000304:	109b      	asrs	r3, r3, #2
20000306:	60fb      	str	r3, [r7, #12]
20000308:	4b22      	ldr	r3, [pc, #136]	; (20000394 <main+0x394>)
2000030a:	68db      	ldr	r3, [r3, #12]
2000030c:	109b      	asrs	r3, r3, #2
2000030e:	613b      	str	r3, [r7, #16]
20000310:	6bba      	ldr	r2, [r7, #56]	; 0x38
20000312:	f107 010c 	add.w	r1, r7, #12
20000316:	463b      	mov	r3, r7
20000318:	4618      	mov	r0, r3
2000031a:	f000 ff11 	bl	20001140 <svpwm>
2000031e:	64b8      	str	r0, [r7, #72]	; 0x48
20000320:	683b      	ldr	r3, [r7, #0]
20000322:	4618      	mov	r0, r3
20000324:	f000 f974 	bl	20000610 <pwm_seta>
20000328:	687b      	ldr	r3, [r7, #4]
2000032a:	4618      	mov	r0, r3
2000032c:	f000 f980 	bl	20000630 <pwm_setb>
20000330:	68bb      	ldr	r3, [r7, #8]
20000332:	4618      	mov	r0, r3
20000334:	f000 f98c 	bl	20000650 <pwm_setc>
20000338:	e746      	b.n	200001c8 <main+0x1c8>
2000033a:	bf00      	nop
2000033c:	20003600 	.word	0x20003600
20000340:	40040000 	.word	0x40040000
20000344:	20002e10 	.word	0x20002e10
20000348:	20002e04 	.word	0x20002e04
2000034c:	20002e14 	.word	0x20002e14
20000350:	20002e0c 	.word	0x20002e0c
20000354:	20002e08 	.word	0x20002e08
20000358:	20002e00 	.word	0x20002e00
2000035c:	20002e28 	.word	0x20002e28
20000360:	20002e34 	.word	0x20002e34
20000364:	20002e2c 	.word	0x20002e2c
20000368:	20002e9c 	.word	0x20002e9c
2000036c:	20002e40 	.word	0x20002e40
20000370:	20000be5 	.word	0x20000be5
20000374:	20002e3d 	.word	0x20002e3d
20000378:	40090000 	.word	0x40090000
2000037c:	003ffc00 	.word	0x003ffc00
20000380:	20002e30 	.word	0x20002e30
20000384:	20002e18 	.word	0x20002e18
20000388:	20002e64 	.word	0x20002e64
2000038c:	fffffc18 	.word	0xfffffc18
20000390:	20002e44 	.word	0x20002e44
20000394:	20002e54 	.word	0x20002e54

20000398 <mfilter>:
20000398:	b480      	push	{r7}
2000039a:	b083      	sub	sp, #12
2000039c:	af00      	add	r7, sp, #0
2000039e:	6078      	str	r0, [r7, #4]
200003a0:	6039      	str	r1, [r7, #0]
200003a2:	687a      	ldr	r2, [r7, #4]
200003a4:	4613      	mov	r3, r2
200003a6:	009b      	lsls	r3, r3, #2
200003a8:	4413      	add	r3, r2
200003aa:	005b      	lsls	r3, r3, #1
200003ac:	4619      	mov	r1, r3
200003ae:	683b      	ldr	r3, [r7, #0]
200003b0:	f240 32f6 	movw	r2, #1014	; 0x3f6
200003b4:	fb02 f303 	mul.w	r3, r2, r3
200003b8:	440b      	add	r3, r1
200003ba:	129b      	asrs	r3, r3, #10
200003bc:	4618      	mov	r0, r3
200003be:	370c      	adds	r7, #12
200003c0:	46bd      	mov	sp, r7
200003c2:	bc80      	pop	{r7}
200003c4:	4770      	bx	lr
200003c6:	bf00      	nop

200003c8 <brake_on>:
200003c8:	b480      	push	{r7}
200003ca:	af00      	add	r7, sp, #0
200003cc:	4a04      	ldr	r2, [pc, #16]	; (200003e0 <brake_on+0x18>)
200003ce:	4b04      	ldr	r3, [pc, #16]	; (200003e0 <brake_on+0x18>)
200003d0:	681b      	ldr	r3, [r3, #0]
200003d2:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
200003d6:	6013      	str	r3, [r2, #0]
200003d8:	bf00      	nop
200003da:	46bd      	mov	sp, r7
200003dc:	bc80      	pop	{r7}
200003de:	4770      	bx	lr
200003e0:	400e8000 	.word	0x400e8000

200003e4 <brake_off>:
200003e4:	b480      	push	{r7}
200003e6:	af00      	add	r7, sp, #0
200003e8:	4a04      	ldr	r2, [pc, #16]	; (200003fc <brake_off+0x18>)
200003ea:	4b04      	ldr	r3, [pc, #16]	; (200003fc <brake_off+0x18>)
200003ec:	681b      	ldr	r3, [r3, #0]
200003ee:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
200003f2:	6013      	str	r3, [r2, #0]
200003f4:	bf00      	nop
200003f6:	46bd      	mov	sp, r7
200003f8:	bc80      	pop	{r7}
200003fa:	4770      	bx	lr
200003fc:	400e8000 	.word	0x400e8000

20000400 <motor_off>:
20000400:	b480      	push	{r7}
20000402:	af00      	add	r7, sp, #0
20000404:	4a04      	ldr	r2, [pc, #16]	; (20000418 <motor_off+0x18>)
20000406:	4b04      	ldr	r3, [pc, #16]	; (20000418 <motor_off+0x18>)
20000408:	681b      	ldr	r3, [r3, #0]
2000040a:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
2000040e:	6013      	str	r3, [r2, #0]
20000410:	bf00      	nop
20000412:	46bd      	mov	sp, r7
20000414:	bc80      	pop	{r7}
20000416:	4770      	bx	lr
20000418:	400e8000 	.word	0x400e8000

2000041c <motor_on>:
2000041c:	b480      	push	{r7}
2000041e:	af00      	add	r7, sp, #0
20000420:	4a04      	ldr	r2, [pc, #16]	; (20000434 <motor_on+0x18>)
20000422:	4b04      	ldr	r3, [pc, #16]	; (20000434 <motor_on+0x18>)
20000424:	681b      	ldr	r3, [r3, #0]
20000426:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
2000042a:	6013      	str	r3, [r2, #0]
2000042c:	bf00      	nop
2000042e:	46bd      	mov	sp, r7
20000430:	bc80      	pop	{r7}
20000432:	4770      	bx	lr
20000434:	400e8000 	.word	0x400e8000

20000438 <sleep>:
20000438:	b480      	push	{r7}
2000043a:	b085      	sub	sp, #20
2000043c:	af00      	add	r7, sp, #0
2000043e:	6078      	str	r0, [r7, #4]
20000440:	4b08      	ldr	r3, [pc, #32]	; (20000464 <sleep+0x2c>)
20000442:	681a      	ldr	r2, [r3, #0]
20000444:	687b      	ldr	r3, [r7, #4]
20000446:	4413      	add	r3, r2
20000448:	60fb      	str	r3, [r7, #12]
2000044a:	bf00      	nop
2000044c:	4b05      	ldr	r3, [pc, #20]	; (20000464 <sleep+0x2c>)
2000044e:	681a      	ldr	r2, [r3, #0]
20000450:	68fb      	ldr	r3, [r7, #12]
20000452:	429a      	cmp	r2, r3
20000454:	d3fa      	bcc.n	2000044c <sleep+0x14>
20000456:	bf00      	nop
20000458:	4618      	mov	r0, r3
2000045a:	3714      	adds	r7, #20
2000045c:	46bd      	mov	sp, r7
2000045e:	bc80      	pop	{r7}
20000460:	4770      	bx	lr
20000462:	bf00      	nop
20000464:	20002f00 	.word	0x20002f00

20000468 <ssi_init>:
20000468:	b480      	push	{r7}
2000046a:	af00      	add	r7, sp, #0
2000046c:	4a0c      	ldr	r2, [pc, #48]	; (200004a0 <ssi_init+0x38>)
2000046e:	4b0c      	ldr	r3, [pc, #48]	; (200004a0 <ssi_init+0x38>)
20000470:	69db      	ldr	r3, [r3, #28]
20000472:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20000476:	61d3      	str	r3, [r2, #28]
20000478:	4b09      	ldr	r3, [pc, #36]	; (200004a0 <ssi_init+0x38>)
2000047a:	4a0a      	ldr	r2, [pc, #40]	; (200004a4 <ssi_init+0x3c>)
2000047c:	62da      	str	r2, [r3, #44]	; 0x2c
2000047e:	4b0a      	ldr	r3, [pc, #40]	; (200004a8 <ssi_init+0x40>)
20000480:	2200      	movs	r2, #0
20000482:	605a      	str	r2, [r3, #4]
20000484:	4b08      	ldr	r3, [pc, #32]	; (200004a8 <ssi_init+0x40>)
20000486:	2206      	movs	r2, #6
20000488:	611a      	str	r2, [r3, #16]
2000048a:	4b07      	ldr	r3, [pc, #28]	; (200004a8 <ssi_init+0x40>)
2000048c:	f240 221f 	movw	r2, #543	; 0x21f
20000490:	601a      	str	r2, [r3, #0]
20000492:	4b05      	ldr	r3, [pc, #20]	; (200004a8 <ssi_init+0x40>)
20000494:	2202      	movs	r2, #2
20000496:	605a      	str	r2, [r3, #4]
20000498:	bf00      	nop
2000049a:	46bd      	mov	sp, r7
2000049c:	bc80      	pop	{r7}
2000049e:	4770      	bx	lr
200004a0:	40020000 	.word	0x40020000
200004a4:	0100000a 	.word	0x0100000a
200004a8:	40040000 	.word	0x40040000

200004ac <b2g>:
200004ac:	b480      	push	{r7}
200004ae:	b083      	sub	sp, #12
200004b0:	af00      	add	r7, sp, #0
200004b2:	6078      	str	r0, [r7, #4]
200004b4:	687b      	ldr	r3, [r7, #4]
200004b6:	085a      	lsrs	r2, r3, #1
200004b8:	687b      	ldr	r3, [r7, #4]
200004ba:	4053      	eors	r3, r2
200004bc:	4618      	mov	r0, r3
200004be:	370c      	adds	r7, #12
200004c0:	46bd      	mov	sp, r7
200004c2:	bc80      	pop	{r7}
200004c4:	4770      	bx	lr
200004c6:	bf00      	nop

200004c8 <g2b>:
200004c8:	b480      	push	{r7}
200004ca:	b085      	sub	sp, #20
200004cc:	af00      	add	r7, sp, #0
200004ce:	6078      	str	r0, [r7, #4]
200004d0:	2300      	movs	r3, #0
200004d2:	60fb      	str	r3, [r7, #12]
200004d4:	2300      	movs	r3, #0
200004d6:	60fb      	str	r3, [r7, #12]
200004d8:	e006      	b.n	200004e8 <g2b+0x20>
200004da:	68fa      	ldr	r2, [r7, #12]
200004dc:	687b      	ldr	r3, [r7, #4]
200004de:	4053      	eors	r3, r2
200004e0:	60fb      	str	r3, [r7, #12]
200004e2:	687b      	ldr	r3, [r7, #4]
200004e4:	085b      	lsrs	r3, r3, #1
200004e6:	607b      	str	r3, [r7, #4]
200004e8:	687b      	ldr	r3, [r7, #4]
200004ea:	2b00      	cmp	r3, #0
200004ec:	d1f5      	bne.n	200004da <g2b+0x12>
200004ee:	68fb      	ldr	r3, [r7, #12]
200004f0:	4618      	mov	r0, r3
200004f2:	3714      	adds	r7, #20
200004f4:	46bd      	mov	sp, r7
200004f6:	bc80      	pop	{r7}
200004f8:	4770      	bx	lr
200004fa:	bf00      	nop

200004fc <enc_crc>:
200004fc:	b480      	push	{r7}
200004fe:	b085      	sub	sp, #20
20000500:	af00      	add	r7, sp, #0
20000502:	6078      	str	r0, [r7, #4]
20000504:	687b      	ldr	r3, [r7, #4]
20000506:	60bb      	str	r3, [r7, #8]
20000508:	2300      	movs	r3, #0
2000050a:	60fb      	str	r3, [r7, #12]
2000050c:	e006      	b.n	2000051c <enc_crc+0x20>
2000050e:	68fa      	ldr	r2, [r7, #12]
20000510:	68bb      	ldr	r3, [r7, #8]
20000512:	4053      	eors	r3, r2
20000514:	60fb      	str	r3, [r7, #12]
20000516:	68bb      	ldr	r3, [r7, #8]
20000518:	085b      	lsrs	r3, r3, #1
2000051a:	60bb      	str	r3, [r7, #8]
2000051c:	68bb      	ldr	r3, [r7, #8]
2000051e:	2b00      	cmp	r3, #0
20000520:	d1f5      	bne.n	2000050e <enc_crc+0x12>
20000522:	68fb      	ldr	r3, [r7, #12]
20000524:	f003 0301 	and.w	r3, r3, #1
20000528:	2b00      	cmp	r3, #0
2000052a:	d107      	bne.n	2000053c <enc_crc+0x40>
2000052c:	687b      	ldr	r3, [r7, #4]
2000052e:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000532:	4a06      	ldr	r2, [pc, #24]	; (2000054c <enc_crc+0x50>)
20000534:	6013      	str	r3, [r2, #0]
20000536:	4b05      	ldr	r3, [pc, #20]	; (2000054c <enc_crc+0x50>)
20000538:	681b      	ldr	r3, [r3, #0]
2000053a:	2b00      	cmp	r3, #0
2000053c:	4b03      	ldr	r3, [pc, #12]	; (2000054c <enc_crc+0x50>)
2000053e:	681b      	ldr	r3, [r3, #0]
20000540:	4618      	mov	r0, r3
20000542:	3714      	adds	r7, #20
20000544:	46bd      	mov	sp, r7
20000546:	bc80      	pop	{r7}
20000548:	4770      	bx	lr
2000054a:	bf00      	nop
2000054c:	20002ea0 	.word	0x20002ea0

20000550 <dac_init>:
20000550:	b480      	push	{r7}
20000552:	af00      	add	r7, sp, #0
20000554:	4a07      	ldr	r2, [pc, #28]	; (20000574 <dac_init+0x24>)
20000556:	4b07      	ldr	r3, [pc, #28]	; (20000574 <dac_init+0x24>)
20000558:	69db      	ldr	r3, [r3, #28]
2000055a:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
2000055e:	61d3      	str	r3, [r2, #28]
20000560:	4a05      	ldr	r2, [pc, #20]	; (20000578 <dac_init+0x28>)
20000562:	4b05      	ldr	r3, [pc, #20]	; (20000578 <dac_init+0x28>)
20000564:	681b      	ldr	r3, [r3, #0]
20000566:	f043 030c 	orr.w	r3, r3, #12
2000056a:	6013      	str	r3, [r2, #0]
2000056c:	bf00      	nop
2000056e:	46bd      	mov	sp, r7
20000570:	bc80      	pop	{r7}
20000572:	4770      	bx	lr
20000574:	40020000 	.word	0x40020000
20000578:	40090000 	.word	0x40090000

2000057c <encoder_start>:
2000057c:	b480      	push	{r7}
2000057e:	af00      	add	r7, sp, #0
20000580:	4b03      	ldr	r3, [pc, #12]	; (20000590 <encoder_start+0x14>)
20000582:	f240 5255 	movw	r2, #1365	; 0x555
20000586:	609a      	str	r2, [r3, #8]
20000588:	bf00      	nop
2000058a:	46bd      	mov	sp, r7
2000058c:	bc80      	pop	{r7}
2000058e:	4770      	bx	lr
20000590:	40040000 	.word	0x40040000

20000594 <ADC_Handler>:
20000594:	b480      	push	{r7}
20000596:	af00      	add	r7, sp, #0
20000598:	4b02      	ldr	r3, [pc, #8]	; (200005a4 <ADC_Handler+0x10>)
2000059a:	699b      	ldr	r3, [r3, #24]
2000059c:	bf00      	nop
2000059e:	46bd      	mov	sp, r7
200005a0:	bc80      	pop	{r7}
200005a2:	4770      	bx	lr
200005a4:	40088000 	.word	0x40088000

200005a8 <TIMER1_Handler>:
200005a8:	b480      	push	{r7}
200005aa:	af00      	add	r7, sp, #0
200005ac:	4b03      	ldr	r3, [pc, #12]	; (200005bc <TIMER1_Handler+0x14>)
200005ae:	2200      	movs	r2, #0
200005b0:	655a      	str	r2, [r3, #84]	; 0x54
200005b2:	bf00      	nop
200005b4:	46bd      	mov	sp, r7
200005b6:	bc80      	pop	{r7}
200005b8:	4770      	bx	lr
200005ba:	bf00      	nop
200005bc:	40070000 	.word	0x40070000

200005c0 <TIMER3_Handler>:
200005c0:	b580      	push	{r7, lr}
200005c2:	af00      	add	r7, sp, #0
200005c4:	4b04      	ldr	r3, [pc, #16]	; (200005d8 <TIMER3_Handler+0x18>)
200005c6:	2200      	movs	r2, #0
200005c8:	655a      	str	r2, [r3, #84]	; 0x54
200005ca:	f7ff ffd7 	bl	2000057c <encoder_start>
200005ce:	f001 f81b 	bl	20001608 <adc_dma_start>
200005d2:	bf00      	nop
200005d4:	bd80      	pop	{r7, pc}
200005d6:	bf00      	nop
200005d8:	40080000 	.word	0x40080000

200005dc <get_phase>:
200005dc:	b580      	push	{r7, lr}
200005de:	af00      	add	r7, sp, #0
200005e0:	4b0a      	ldr	r3, [pc, #40]	; (2000060c <get_phase+0x30>)
200005e2:	f240 5255 	movw	r2, #1365	; 0x555
200005e6:	609a      	str	r2, [r3, #8]
200005e8:	bf00      	nop
200005ea:	4b08      	ldr	r3, [pc, #32]	; (2000060c <get_phase+0x30>)
200005ec:	68db      	ldr	r3, [r3, #12]
200005ee:	f003 0304 	and.w	r3, r3, #4
200005f2:	2b00      	cmp	r3, #0
200005f4:	d0f9      	beq.n	200005ea <get_phase+0xe>
200005f6:	4b05      	ldr	r3, [pc, #20]	; (2000060c <get_phase+0x30>)
200005f8:	689b      	ldr	r3, [r3, #8]
200005fa:	f3c3 030b 	ubfx	r3, r3, #0, #12
200005fe:	4618      	mov	r0, r3
20000600:	f7ff ff62 	bl	200004c8 <g2b>
20000604:	4603      	mov	r3, r0
20000606:	4618      	mov	r0, r3
20000608:	bd80      	pop	{r7, pc}
2000060a:	bf00      	nop
2000060c:	40040000 	.word	0x40040000

20000610 <pwm_seta>:
20000610:	b480      	push	{r7}
20000612:	b083      	sub	sp, #12
20000614:	af00      	add	r7, sp, #0
20000616:	6078      	str	r0, [r7, #4]
20000618:	4a04      	ldr	r2, [pc, #16]	; (2000062c <pwm_seta+0x1c>)
2000061a:	687b      	ldr	r3, [r7, #4]
2000061c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000620:	6113      	str	r3, [r2, #16]
20000622:	bf00      	nop
20000624:	370c      	adds	r7, #12
20000626:	46bd      	mov	sp, r7
20000628:	bc80      	pop	{r7}
2000062a:	4770      	bx	lr
2000062c:	40080000 	.word	0x40080000

20000630 <pwm_setb>:
20000630:	b480      	push	{r7}
20000632:	b083      	sub	sp, #12
20000634:	af00      	add	r7, sp, #0
20000636:	6078      	str	r0, [r7, #4]
20000638:	4a04      	ldr	r2, [pc, #16]	; (2000064c <pwm_setb+0x1c>)
2000063a:	687b      	ldr	r3, [r7, #4]
2000063c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000640:	6153      	str	r3, [r2, #20]
20000642:	bf00      	nop
20000644:	370c      	adds	r7, #12
20000646:	46bd      	mov	sp, r7
20000648:	bc80      	pop	{r7}
2000064a:	4770      	bx	lr
2000064c:	40080000 	.word	0x40080000

20000650 <pwm_setc>:
20000650:	b480      	push	{r7}
20000652:	b083      	sub	sp, #12
20000654:	af00      	add	r7, sp, #0
20000656:	6078      	str	r0, [r7, #4]
20000658:	4a04      	ldr	r2, [pc, #16]	; (2000066c <pwm_setc+0x1c>)
2000065a:	687b      	ldr	r3, [r7, #4]
2000065c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000660:	6193      	str	r3, [r2, #24]
20000662:	bf00      	nop
20000664:	370c      	adds	r7, #12
20000666:	46bd      	mov	sp, r7
20000668:	bc80      	pop	{r7}
2000066a:	4770      	bx	lr
2000066c:	40080000 	.word	0x40080000

20000670 <update_telemetry>:
20000670:	b480      	push	{r7}
20000672:	b083      	sub	sp, #12
20000674:	af00      	add	r7, sp, #0
20000676:	4b49      	ldr	r3, [pc, #292]	; (2000079c <update_telemetry+0x12c>)
20000678:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2000067a:	f003 0302 	and.w	r3, r3, #2
2000067e:	2b00      	cmp	r3, #0
20000680:	d075      	beq.n	2000076e <update_telemetry+0xfe>
20000682:	4b46      	ldr	r3, [pc, #280]	; (2000079c <update_telemetry+0x12c>)
20000684:	2200      	movs	r2, #0
20000686:	655a      	str	r2, [r3, #84]	; 0x54
20000688:	4a45      	ldr	r2, [pc, #276]	; (200007a0 <update_telemetry+0x130>)
2000068a:	4b45      	ldr	r3, [pc, #276]	; (200007a0 <update_telemetry+0x130>)
2000068c:	681b      	ldr	r3, [r3, #0]
2000068e:	f043 0301 	orr.w	r3, r3, #1
20000692:	6013      	str	r3, [r2, #0]
20000694:	4a43      	ldr	r2, [pc, #268]	; (200007a4 <update_telemetry+0x134>)
20000696:	4b43      	ldr	r3, [pc, #268]	; (200007a4 <update_telemetry+0x134>)
20000698:	699b      	ldr	r3, [r3, #24]
2000069a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000069e:	6193      	str	r3, [r2, #24]
200006a0:	4b3e      	ldr	r3, [pc, #248]	; (2000079c <update_telemetry+0x12c>)
200006a2:	695b      	ldr	r3, [r3, #20]
200006a4:	b29b      	uxth	r3, r3
200006a6:	f503 7396 	add.w	r3, r3, #300	; 0x12c
200006aa:	80fb      	strh	r3, [r7, #6]
200006ac:	88fb      	ldrh	r3, [r7, #6]
200006ae:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
200006b2:	d205      	bcs.n	200006c0 <update_telemetry+0x50>
200006b4:	4a39      	ldr	r2, [pc, #228]	; (2000079c <update_telemetry+0x12c>)
200006b6:	4b39      	ldr	r3, [pc, #228]	; (2000079c <update_telemetry+0x12c>)
200006b8:	681b      	ldr	r3, [r3, #0]
200006ba:	3301      	adds	r3, #1
200006bc:	6013      	str	r3, [r2, #0]
200006be:	e008      	b.n	200006d2 <update_telemetry+0x62>
200006c0:	88fb      	ldrh	r3, [r7, #6]
200006c2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
200006c6:	d904      	bls.n	200006d2 <update_telemetry+0x62>
200006c8:	4a34      	ldr	r2, [pc, #208]	; (2000079c <update_telemetry+0x12c>)
200006ca:	4b34      	ldr	r3, [pc, #208]	; (2000079c <update_telemetry+0x12c>)
200006cc:	681b      	ldr	r3, [r3, #0]
200006ce:	3b01      	subs	r3, #1
200006d0:	6013      	str	r3, [r2, #0]
200006d2:	4b35      	ldr	r3, [pc, #212]	; (200007a8 <update_telemetry+0x138>)
200006d4:	681a      	ldr	r2, [r3, #0]
200006d6:	4b35      	ldr	r3, [pc, #212]	; (200007ac <update_telemetry+0x13c>)
200006d8:	681b      	ldr	r3, [r3, #0]
200006da:	1ad3      	subs	r3, r2, r3
200006dc:	4a34      	ldr	r2, [pc, #208]	; (200007b0 <update_telemetry+0x140>)
200006de:	fb82 1203 	smull	r1, r2, r2, r3
200006e2:	441a      	add	r2, r3
200006e4:	1152      	asrs	r2, r2, #5
200006e6:	17db      	asrs	r3, r3, #31
200006e8:	1ad3      	subs	r3, r2, r3
200006ea:	80bb      	strh	r3, [r7, #4]
200006ec:	2300      	movs	r3, #0
200006ee:	70fb      	strb	r3, [r7, #3]
200006f0:	4b30      	ldr	r3, [pc, #192]	; (200007b4 <update_telemetry+0x144>)
200006f2:	4a31      	ldr	r2, [pc, #196]	; (200007b8 <update_telemetry+0x148>)
200006f4:	6812      	ldr	r2, [r2, #0]
200006f6:	601a      	str	r2, [r3, #0]
200006f8:	b2d2      	uxtb	r2, r2
200006fa:	78fb      	ldrb	r3, [r7, #3]
200006fc:	4053      	eors	r3, r2
200006fe:	70fb      	strb	r3, [r7, #3]
20000700:	4a2c      	ldr	r2, [pc, #176]	; (200007b4 <update_telemetry+0x144>)
20000702:	4b2d      	ldr	r3, [pc, #180]	; (200007b8 <update_telemetry+0x148>)
20000704:	681b      	ldr	r3, [r3, #0]
20000706:	121b      	asrs	r3, r3, #8
20000708:	6013      	str	r3, [r2, #0]
2000070a:	b2da      	uxtb	r2, r3
2000070c:	78fb      	ldrb	r3, [r7, #3]
2000070e:	4053      	eors	r3, r2
20000710:	70fb      	strb	r3, [r7, #3]
20000712:	4a28      	ldr	r2, [pc, #160]	; (200007b4 <update_telemetry+0x144>)
20000714:	f9b7 3004 	ldrsh.w	r3, [r7, #4]
20000718:	6013      	str	r3, [r2, #0]
2000071a:	b2da      	uxtb	r2, r3
2000071c:	78fb      	ldrb	r3, [r7, #3]
2000071e:	4053      	eors	r3, r2
20000720:	70fb      	strb	r3, [r7, #3]
20000722:	4a24      	ldr	r2, [pc, #144]	; (200007b4 <update_telemetry+0x144>)
20000724:	f9b7 3004 	ldrsh.w	r3, [r7, #4]
20000728:	121b      	asrs	r3, r3, #8
2000072a:	b21b      	sxth	r3, r3
2000072c:	6013      	str	r3, [r2, #0]
2000072e:	b2da      	uxtb	r2, r3
20000730:	78fb      	ldrb	r3, [r7, #3]
20000732:	4053      	eors	r3, r2
20000734:	70fb      	strb	r3, [r7, #3]
20000736:	4b1f      	ldr	r3, [pc, #124]	; (200007b4 <update_telemetry+0x144>)
20000738:	4a20      	ldr	r2, [pc, #128]	; (200007bc <update_telemetry+0x14c>)
2000073a:	6812      	ldr	r2, [r2, #0]
2000073c:	601a      	str	r2, [r3, #0]
2000073e:	b2d2      	uxtb	r2, r2
20000740:	78fb      	ldrb	r3, [r7, #3]
20000742:	4053      	eors	r3, r2
20000744:	70fb      	strb	r3, [r7, #3]
20000746:	4a1b      	ldr	r2, [pc, #108]	; (200007b4 <update_telemetry+0x144>)
20000748:	4b1c      	ldr	r3, [pc, #112]	; (200007bc <update_telemetry+0x14c>)
2000074a:	681b      	ldr	r3, [r3, #0]
2000074c:	149b      	asrs	r3, r3, #18
2000074e:	6013      	str	r3, [r2, #0]
20000750:	b2da      	uxtb	r2, r3
20000752:	78fb      	ldrb	r3, [r7, #3]
20000754:	4053      	eors	r3, r2
20000756:	70fb      	strb	r3, [r7, #3]
20000758:	4b16      	ldr	r3, [pc, #88]	; (200007b4 <update_telemetry+0x144>)
2000075a:	4a19      	ldr	r2, [pc, #100]	; (200007c0 <update_telemetry+0x150>)
2000075c:	7812      	ldrb	r2, [r2, #0]
2000075e:	601a      	str	r2, [r3, #0]
20000760:	b2d2      	uxtb	r2, r2
20000762:	78fb      	ldrb	r3, [r7, #3]
20000764:	4053      	eors	r3, r2
20000766:	70fb      	strb	r3, [r7, #3]
20000768:	4a12      	ldr	r2, [pc, #72]	; (200007b4 <update_telemetry+0x144>)
2000076a:	78fb      	ldrb	r3, [r7, #3]
2000076c:	6013      	str	r3, [r2, #0]
2000076e:	4b11      	ldr	r3, [pc, #68]	; (200007b4 <update_telemetry+0x144>)
20000770:	699b      	ldr	r3, [r3, #24]
20000772:	f003 0308 	and.w	r3, r3, #8
20000776:	2b00      	cmp	r3, #0
20000778:	d10b      	bne.n	20000792 <update_telemetry+0x122>
2000077a:	4a09      	ldr	r2, [pc, #36]	; (200007a0 <update_telemetry+0x130>)
2000077c:	4b08      	ldr	r3, [pc, #32]	; (200007a0 <update_telemetry+0x130>)
2000077e:	681b      	ldr	r3, [r3, #0]
20000780:	f023 0301 	bic.w	r3, r3, #1
20000784:	6013      	str	r3, [r2, #0]
20000786:	4a07      	ldr	r2, [pc, #28]	; (200007a4 <update_telemetry+0x134>)
20000788:	4b06      	ldr	r3, [pc, #24]	; (200007a4 <update_telemetry+0x134>)
2000078a:	699b      	ldr	r3, [r3, #24]
2000078c:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
20000790:	6193      	str	r3, [r2, #24]
20000792:	bf00      	nop
20000794:	370c      	adds	r7, #12
20000796:	46bd      	mov	sp, r7
20000798:	bc80      	pop	{r7}
2000079a:	4770      	bx	lr
2000079c:	40070000 	.word	0x40070000
200007a0:	400a8000 	.word	0x400a8000
200007a4:	400b0000 	.word	0x400b0000
200007a8:	20002e28 	.word	0x20002e28
200007ac:	20002e2c 	.word	0x20002e2c
200007b0:	8fb823ef 	.word	0x8fb823ef
200007b4:	40030000 	.word	0x40030000
200007b8:	20002e38 	.word	0x20002e38
200007bc:	20002e34 	.word	0x20002e34
200007c0:	20002e3d 	.word	0x20002e3d

200007c4 <update_refposition>:
200007c4:	b480      	push	{r7}
200007c6:	b089      	sub	sp, #36	; 0x24
200007c8:	af00      	add	r7, sp, #0
200007ca:	4b4f      	ldr	r3, [pc, #316]	; (20000908 <update_refposition+0x144>)
200007cc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200007ce:	f003 0310 	and.w	r3, r3, #16
200007d2:	2b00      	cmp	r3, #0
200007d4:	f000 8083 	beq.w	200008de <update_refposition+0x11a>
200007d8:	2300      	movs	r3, #0
200007da:	61fb      	str	r3, [r7, #28]
200007dc:	e00c      	b.n	200007f8 <update_refposition+0x34>
200007de:	4b4a      	ldr	r3, [pc, #296]	; (20000908 <update_refposition+0x144>)
200007e0:	681b      	ldr	r3, [r3, #0]
200007e2:	b2d9      	uxtb	r1, r3
200007e4:	463a      	mov	r2, r7
200007e6:	69fb      	ldr	r3, [r7, #28]
200007e8:	4413      	add	r3, r2
200007ea:	460a      	mov	r2, r1
200007ec:	701a      	strb	r2, [r3, #0]
200007ee:	69fb      	ldr	r3, [r7, #28]
200007f0:	3301      	adds	r3, #1
200007f2:	f003 030f 	and.w	r3, r3, #15
200007f6:	61fb      	str	r3, [r7, #28]
200007f8:	4b43      	ldr	r3, [pc, #268]	; (20000908 <update_refposition+0x144>)
200007fa:	699b      	ldr	r3, [r3, #24]
200007fc:	f003 0310 	and.w	r3, r3, #16
20000800:	2b00      	cmp	r3, #0
20000802:	d0ec      	beq.n	200007de <update_refposition+0x1a>
20000804:	2300      	movs	r3, #0
20000806:	767b      	strb	r3, [r7, #25]
20000808:	463b      	mov	r3, r7
2000080a:	617b      	str	r3, [r7, #20]
2000080c:	697b      	ldr	r3, [r7, #20]
2000080e:	1c5a      	adds	r2, r3, #1
20000810:	617a      	str	r2, [r7, #20]
20000812:	781a      	ldrb	r2, [r3, #0]
20000814:	7e7b      	ldrb	r3, [r7, #25]
20000816:	4053      	eors	r3, r2
20000818:	767b      	strb	r3, [r7, #25]
2000081a:	697b      	ldr	r3, [r7, #20]
2000081c:	1c5a      	adds	r2, r3, #1
2000081e:	617a      	str	r2, [r7, #20]
20000820:	781a      	ldrb	r2, [r3, #0]
20000822:	7e7b      	ldrb	r3, [r7, #25]
20000824:	4053      	eors	r3, r2
20000826:	767b      	strb	r3, [r7, #25]
20000828:	697b      	ldr	r3, [r7, #20]
2000082a:	1c5a      	adds	r2, r3, #1
2000082c:	617a      	str	r2, [r7, #20]
2000082e:	781a      	ldrb	r2, [r3, #0]
20000830:	7e7b      	ldrb	r3, [r7, #25]
20000832:	4053      	eors	r3, r2
20000834:	767b      	strb	r3, [r7, #25]
20000836:	697b      	ldr	r3, [r7, #20]
20000838:	1c5a      	adds	r2, r3, #1
2000083a:	617a      	str	r2, [r7, #20]
2000083c:	781a      	ldrb	r2, [r3, #0]
2000083e:	7e7b      	ldrb	r3, [r7, #25]
20000840:	4053      	eors	r3, r2
20000842:	767b      	strb	r3, [r7, #25]
20000844:	697b      	ldr	r3, [r7, #20]
20000846:	1c5a      	adds	r2, r3, #1
20000848:	617a      	str	r2, [r7, #20]
2000084a:	781a      	ldrb	r2, [r3, #0]
2000084c:	7e7b      	ldrb	r3, [r7, #25]
2000084e:	4053      	eors	r3, r2
20000850:	767b      	strb	r3, [r7, #25]
20000852:	697b      	ldr	r3, [r7, #20]
20000854:	1c5a      	adds	r2, r3, #1
20000856:	617a      	str	r2, [r7, #20]
20000858:	781a      	ldrb	r2, [r3, #0]
2000085a:	7e7b      	ldrb	r3, [r7, #25]
2000085c:	4053      	eors	r3, r2
2000085e:	767b      	strb	r3, [r7, #25]
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
2000087c:	7e7b      	ldrb	r3, [r7, #25]
2000087e:	2b00      	cmp	r3, #0
20000880:	d12d      	bne.n	200008de <update_refposition+0x11a>
20000882:	783b      	ldrb	r3, [r7, #0]
20000884:	b29a      	uxth	r2, r3
20000886:	787b      	ldrb	r3, [r7, #1]
20000888:	b29b      	uxth	r3, r3
2000088a:	021b      	lsls	r3, r3, #8
2000088c:	b29b      	uxth	r3, r3
2000088e:	4413      	add	r3, r2
20000890:	b29b      	uxth	r3, r3
20000892:	837b      	strh	r3, [r7, #26]
20000894:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
20000898:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
2000089c:	db03      	blt.n	200008a6 <update_refposition+0xe2>
2000089e:	f240 73ff 	movw	r3, #2047	; 0x7ff
200008a2:	837b      	strh	r3, [r7, #26]
200008a4:	bf00      	nop
200008a6:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200008aa:	f513 6f00 	cmn.w	r3, #2048	; 0x800
200008ae:	da03      	bge.n	200008b8 <update_refposition+0xf4>
200008b0:	f44f 4378 	mov.w	r3, #63488	; 0xf800
200008b4:	837b      	strh	r3, [r7, #26]
200008b6:	bf00      	nop
200008b8:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200008bc:	4a13      	ldr	r2, [pc, #76]	; (2000090c <update_refposition+0x148>)
200008be:	6013      	str	r3, [r2, #0]
200008c0:	f9b7 201a 	ldrsh.w	r2, [r7, #26]
200008c4:	4613      	mov	r3, r2
200008c6:	00db      	lsls	r3, r3, #3
200008c8:	1a9b      	subs	r3, r3, r2
200008ca:	00db      	lsls	r3, r3, #3
200008cc:	441a      	add	r2, r3
200008ce:	4b10      	ldr	r3, [pc, #64]	; (20000910 <update_refposition+0x14c>)
200008d0:	681b      	ldr	r3, [r3, #0]
200008d2:	4413      	add	r3, r2
200008d4:	4a0f      	ldr	r2, [pc, #60]	; (20000914 <update_refposition+0x150>)
200008d6:	6013      	str	r3, [r2, #0]
200008d8:	79ba      	ldrb	r2, [r7, #6]
200008da:	4b0f      	ldr	r3, [pc, #60]	; (20000918 <update_refposition+0x154>)
200008dc:	701a      	strb	r2, [r3, #0]
200008de:	4b0a      	ldr	r3, [pc, #40]	; (20000908 <update_refposition+0x144>)
200008e0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200008e2:	f003 0340 	and.w	r3, r3, #64	; 0x40
200008e6:	2b00      	cmp	r3, #0
200008e8:	d009      	beq.n	200008fe <update_refposition+0x13a>
200008ea:	e002      	b.n	200008f2 <update_refposition+0x12e>
200008ec:	4b06      	ldr	r3, [pc, #24]	; (20000908 <update_refposition+0x144>)
200008ee:	681b      	ldr	r3, [r3, #0]
200008f0:	74fb      	strb	r3, [r7, #19]
200008f2:	4b05      	ldr	r3, [pc, #20]	; (20000908 <update_refposition+0x144>)
200008f4:	699b      	ldr	r3, [r3, #24]
200008f6:	f003 0310 	and.w	r3, r3, #16
200008fa:	2b00      	cmp	r3, #0
200008fc:	d0f6      	beq.n	200008ec <update_refposition+0x128>
200008fe:	bf00      	nop
20000900:	3724      	adds	r7, #36	; 0x24
20000902:	46bd      	mov	sp, r7
20000904:	bc80      	pop	{r7}
20000906:	4770      	bx	lr
20000908:	40030000 	.word	0x40030000
2000090c:	20002e38 	.word	0x20002e38
20000910:	20002e2c 	.word	0x20002e2c
20000914:	20002e00 	.word	0x20002e00
20000918:	20002e3c 	.word	0x20002e3c

2000091c <fault_positioning_proc>:
2000091c:	b580      	push	{r7, lr}
2000091e:	af00      	add	r7, sp, #0
20000920:	f7ff fd6e 	bl	20000400 <motor_off>
20000924:	f7ff fd50 	bl	200003c8 <brake_on>
20000928:	2300      	movs	r3, #0
2000092a:	4618      	mov	r0, r3
2000092c:	bd80      	pop	{r7, pc}
2000092e:	bf00      	nop

20000930 <remote_positioning_proc>:
20000930:	b580      	push	{r7, lr}
20000932:	b082      	sub	sp, #8
20000934:	af00      	add	r7, sp, #0
20000936:	4b17      	ldr	r3, [pc, #92]	; (20000994 <remote_positioning_proc+0x64>)
20000938:	681b      	ldr	r3, [r3, #0]
2000093a:	f241 3288 	movw	r2, #5000	; 0x1388
2000093e:	4293      	cmp	r3, r2
20000940:	d107      	bne.n	20000952 <remote_positioning_proc+0x22>
20000942:	4b15      	ldr	r3, [pc, #84]	; (20000998 <remote_positioning_proc+0x68>)
20000944:	2201      	movs	r2, #1
20000946:	701a      	strb	r2, [r3, #0]
20000948:	4b14      	ldr	r3, [pc, #80]	; (2000099c <remote_positioning_proc+0x6c>)
2000094a:	4a15      	ldr	r2, [pc, #84]	; (200009a0 <remote_positioning_proc+0x70>)
2000094c:	601a      	str	r2, [r3, #0]
2000094e:	2300      	movs	r3, #0
20000950:	e01c      	b.n	2000098c <remote_positioning_proc+0x5c>
20000952:	4b10      	ldr	r3, [pc, #64]	; (20000994 <remote_positioning_proc+0x64>)
20000954:	681b      	ldr	r3, [r3, #0]
20000956:	3301      	adds	r3, #1
20000958:	4a0e      	ldr	r2, [pc, #56]	; (20000994 <remote_positioning_proc+0x64>)
2000095a:	6013      	str	r3, [r2, #0]
2000095c:	4b11      	ldr	r3, [pc, #68]	; (200009a4 <remote_positioning_proc+0x74>)
2000095e:	681a      	ldr	r2, [r3, #0]
20000960:	4b11      	ldr	r3, [pc, #68]	; (200009a8 <remote_positioning_proc+0x78>)
20000962:	681b      	ldr	r3, [r3, #0]
20000964:	1ad3      	subs	r3, r2, r3
20000966:	607b      	str	r3, [r7, #4]
20000968:	687b      	ldr	r3, [r7, #4]
2000096a:	f113 0f02 	cmn.w	r3, #2
2000096e:	db05      	blt.n	2000097c <remote_positioning_proc+0x4c>
20000970:	687b      	ldr	r3, [r7, #4]
20000972:	2b02      	cmp	r3, #2
20000974:	dc02      	bgt.n	2000097c <remote_positioning_proc+0x4c>
20000976:	4b07      	ldr	r3, [pc, #28]	; (20000994 <remote_positioning_proc+0x64>)
20000978:	2200      	movs	r2, #0
2000097a:	601a      	str	r2, [r3, #0]
2000097c:	2200      	movs	r2, #0
2000097e:	6879      	ldr	r1, [r7, #4]
20000980:	480a      	ldr	r0, [pc, #40]	; (200009ac <remote_positioning_proc+0x7c>)
20000982:	f000 f99f 	bl	20000cc4 <reg_update>
20000986:	4b09      	ldr	r3, [pc, #36]	; (200009ac <remote_positioning_proc+0x7c>)
20000988:	68db      	ldr	r3, [r3, #12]
2000098a:	131b      	asrs	r3, r3, #12
2000098c:	4618      	mov	r0, r3
2000098e:	3708      	adds	r7, #8
20000990:	46bd      	mov	sp, r7
20000992:	bd80      	pop	{r7, pc}
20000994:	20002e9c 	.word	0x20002e9c
20000998:	20002e3d 	.word	0x20002e3d
2000099c:	20002e40 	.word	0x20002e40
200009a0:	2000091d 	.word	0x2000091d
200009a4:	20002e00 	.word	0x20002e00
200009a8:	20002e28 	.word	0x20002e28
200009ac:	20002e74 	.word	0x20002e74

200009b0 <wait_positioning_proc>:
200009b0:	b580      	push	{r7, lr}
200009b2:	af00      	add	r7, sp, #0
200009b4:	4b0c      	ldr	r3, [pc, #48]	; (200009e8 <wait_positioning_proc+0x38>)
200009b6:	781b      	ldrb	r3, [r3, #0]
200009b8:	f003 0304 	and.w	r3, r3, #4
200009bc:	2b00      	cmp	r3, #0
200009be:	d001      	beq.n	200009c4 <wait_positioning_proc+0x14>
200009c0:	f7ff fd10 	bl	200003e4 <brake_off>
200009c4:	4b08      	ldr	r3, [pc, #32]	; (200009e8 <wait_positioning_proc+0x38>)
200009c6:	781b      	ldrb	r3, [r3, #0]
200009c8:	f003 0310 	and.w	r3, r3, #16
200009cc:	2b00      	cmp	r3, #0
200009ce:	d007      	beq.n	200009e0 <wait_positioning_proc+0x30>
200009d0:	4b06      	ldr	r3, [pc, #24]	; (200009ec <wait_positioning_proc+0x3c>)
200009d2:	4a07      	ldr	r2, [pc, #28]	; (200009f0 <wait_positioning_proc+0x40>)
200009d4:	601a      	str	r2, [r3, #0]
200009d6:	4b07      	ldr	r3, [pc, #28]	; (200009f4 <wait_positioning_proc+0x44>)
200009d8:	2200      	movs	r2, #0
200009da:	601a      	str	r2, [r3, #0]
200009dc:	f7ff fd1e 	bl	2000041c <motor_on>
200009e0:	2300      	movs	r3, #0
200009e2:	4618      	mov	r0, r3
200009e4:	bd80      	pop	{r7, pc}
200009e6:	bf00      	nop
200009e8:	20002e3c 	.word	0x20002e3c
200009ec:	20002e40 	.word	0x20002e40
200009f0:	20000931 	.word	0x20000931
200009f4:	20002e9c 	.word	0x20002e9c

200009f8 <test3_positioning_proc>:
200009f8:	b580      	push	{r7, lr}
200009fa:	b082      	sub	sp, #8
200009fc:	af00      	add	r7, sp, #0
200009fe:	4b22      	ldr	r3, [pc, #136]	; (20000a88 <test3_positioning_proc+0x90>)
20000a00:	681b      	ldr	r3, [r3, #0]
20000a02:	f241 3287 	movw	r2, #4999	; 0x1387
20000a06:	4293      	cmp	r3, r2
20000a08:	dd07      	ble.n	20000a1a <test3_positioning_proc+0x22>
20000a0a:	4b20      	ldr	r3, [pc, #128]	; (20000a8c <test3_positioning_proc+0x94>)
20000a0c:	2201      	movs	r2, #1
20000a0e:	701a      	strb	r2, [r3, #0]
20000a10:	4b1f      	ldr	r3, [pc, #124]	; (20000a90 <test3_positioning_proc+0x98>)
20000a12:	4a20      	ldr	r2, [pc, #128]	; (20000a94 <test3_positioning_proc+0x9c>)
20000a14:	601a      	str	r2, [r3, #0]
20000a16:	2300      	movs	r3, #0
20000a18:	e031      	b.n	20000a7e <test3_positioning_proc+0x86>
20000a1a:	4b1b      	ldr	r3, [pc, #108]	; (20000a88 <test3_positioning_proc+0x90>)
20000a1c:	681b      	ldr	r3, [r3, #0]
20000a1e:	3301      	adds	r3, #1
20000a20:	4a19      	ldr	r2, [pc, #100]	; (20000a88 <test3_positioning_proc+0x90>)
20000a22:	6013      	str	r3, [r2, #0]
20000a24:	4b1c      	ldr	r3, [pc, #112]	; (20000a98 <test3_positioning_proc+0xa0>)
20000a26:	681a      	ldr	r2, [r3, #0]
20000a28:	4b1c      	ldr	r3, [pc, #112]	; (20000a9c <test3_positioning_proc+0xa4>)
20000a2a:	681b      	ldr	r3, [r3, #0]
20000a2c:	1ad3      	subs	r3, r2, r3
20000a2e:	607b      	str	r3, [r7, #4]
20000a30:	687b      	ldr	r3, [r7, #4]
20000a32:	f113 0f02 	cmn.w	r3, #2
20000a36:	db1a      	blt.n	20000a6e <test3_positioning_proc+0x76>
20000a38:	687b      	ldr	r3, [r7, #4]
20000a3a:	2b02      	cmp	r3, #2
20000a3c:	dc17      	bgt.n	20000a6e <test3_positioning_proc+0x76>
20000a3e:	4b12      	ldr	r3, [pc, #72]	; (20000a88 <test3_positioning_proc+0x90>)
20000a40:	681b      	ldr	r3, [r3, #0]
20000a42:	f5b3 6f7a 	cmp.w	r3, #4000	; 0xfa0
20000a46:	db12      	blt.n	20000a6e <test3_positioning_proc+0x76>
20000a48:	4b15      	ldr	r3, [pc, #84]	; (20000aa0 <test3_positioning_proc+0xa8>)
20000a4a:	681b      	ldr	r3, [r3, #0]
20000a4c:	4a12      	ldr	r2, [pc, #72]	; (20000a98 <test3_positioning_proc+0xa0>)
20000a4e:	6013      	str	r3, [r2, #0]
20000a50:	4b0f      	ldr	r3, [pc, #60]	; (20000a90 <test3_positioning_proc+0x98>)
20000a52:	4a14      	ldr	r2, [pc, #80]	; (20000aa4 <test3_positioning_proc+0xac>)
20000a54:	601a      	str	r2, [r3, #0]
20000a56:	4b0c      	ldr	r3, [pc, #48]	; (20000a88 <test3_positioning_proc+0x90>)
20000a58:	2200      	movs	r2, #0
20000a5a:	601a      	str	r2, [r3, #0]
20000a5c:	4b0b      	ldr	r3, [pc, #44]	; (20000a8c <test3_positioning_proc+0x94>)
20000a5e:	2202      	movs	r2, #2
20000a60:	701a      	strb	r2, [r3, #0]
20000a62:	f7ff fccd 	bl	20000400 <motor_off>
20000a66:	f7ff fcaf 	bl	200003c8 <brake_on>
20000a6a:	2300      	movs	r3, #0
20000a6c:	e007      	b.n	20000a7e <test3_positioning_proc+0x86>
20000a6e:	2200      	movs	r2, #0
20000a70:	6879      	ldr	r1, [r7, #4]
20000a72:	480d      	ldr	r0, [pc, #52]	; (20000aa8 <test3_positioning_proc+0xb0>)
20000a74:	f000 f926 	bl	20000cc4 <reg_update>
20000a78:	4b0b      	ldr	r3, [pc, #44]	; (20000aa8 <test3_positioning_proc+0xb0>)
20000a7a:	68db      	ldr	r3, [r3, #12]
20000a7c:	131b      	asrs	r3, r3, #12
20000a7e:	4618      	mov	r0, r3
20000a80:	3708      	adds	r7, #8
20000a82:	46bd      	mov	sp, r7
20000a84:	bd80      	pop	{r7, pc}
20000a86:	bf00      	nop
20000a88:	20002e9c 	.word	0x20002e9c
20000a8c:	20002e3d 	.word	0x20002e3d
20000a90:	20002e40 	.word	0x20002e40
20000a94:	2000091d 	.word	0x2000091d
20000a98:	20002e00 	.word	0x20002e00
20000a9c:	20002e28 	.word	0x20002e28
20000aa0:	20002e2c 	.word	0x20002e2c
20000aa4:	200009b1 	.word	0x200009b1
20000aa8:	20002e74 	.word	0x20002e74

20000aac <test2_positioning_proc>:
20000aac:	b580      	push	{r7, lr}
20000aae:	b082      	sub	sp, #8
20000ab0:	af00      	add	r7, sp, #0
20000ab2:	4b1b      	ldr	r3, [pc, #108]	; (20000b20 <test2_positioning_proc+0x74>)
20000ab4:	681b      	ldr	r3, [r3, #0]
20000ab6:	f241 3287 	movw	r2, #4999	; 0x1387
20000aba:	4293      	cmp	r3, r2
20000abc:	dd07      	ble.n	20000ace <test2_positioning_proc+0x22>
20000abe:	4b19      	ldr	r3, [pc, #100]	; (20000b24 <test2_positioning_proc+0x78>)
20000ac0:	2201      	movs	r2, #1
20000ac2:	701a      	strb	r2, [r3, #0]
20000ac4:	4b18      	ldr	r3, [pc, #96]	; (20000b28 <test2_positioning_proc+0x7c>)
20000ac6:	4a19      	ldr	r2, [pc, #100]	; (20000b2c <test2_positioning_proc+0x80>)
20000ac8:	601a      	str	r2, [r3, #0]
20000aca:	2300      	movs	r3, #0
20000acc:	e023      	b.n	20000b16 <test2_positioning_proc+0x6a>
20000ace:	4b14      	ldr	r3, [pc, #80]	; (20000b20 <test2_positioning_proc+0x74>)
20000ad0:	681b      	ldr	r3, [r3, #0]
20000ad2:	3301      	adds	r3, #1
20000ad4:	4a12      	ldr	r2, [pc, #72]	; (20000b20 <test2_positioning_proc+0x74>)
20000ad6:	6013      	str	r3, [r2, #0]
20000ad8:	4b15      	ldr	r3, [pc, #84]	; (20000b30 <test2_positioning_proc+0x84>)
20000ada:	681a      	ldr	r2, [r3, #0]
20000adc:	4b15      	ldr	r3, [pc, #84]	; (20000b34 <test2_positioning_proc+0x88>)
20000ade:	681b      	ldr	r3, [r3, #0]
20000ae0:	1ad3      	subs	r3, r2, r3
20000ae2:	607b      	str	r3, [r7, #4]
20000ae4:	687b      	ldr	r3, [r7, #4]
20000ae6:	f113 0f02 	cmn.w	r3, #2
20000aea:	db0c      	blt.n	20000b06 <test2_positioning_proc+0x5a>
20000aec:	687b      	ldr	r3, [r7, #4]
20000aee:	2b02      	cmp	r3, #2
20000af0:	dc09      	bgt.n	20000b06 <test2_positioning_proc+0x5a>
20000af2:	4b11      	ldr	r3, [pc, #68]	; (20000b38 <test2_positioning_proc+0x8c>)
20000af4:	681b      	ldr	r3, [r3, #0]
20000af6:	4a0e      	ldr	r2, [pc, #56]	; (20000b30 <test2_positioning_proc+0x84>)
20000af8:	6013      	str	r3, [r2, #0]
20000afa:	4b0b      	ldr	r3, [pc, #44]	; (20000b28 <test2_positioning_proc+0x7c>)
20000afc:	4a0f      	ldr	r2, [pc, #60]	; (20000b3c <test2_positioning_proc+0x90>)
20000afe:	601a      	str	r2, [r3, #0]
20000b00:	4b07      	ldr	r3, [pc, #28]	; (20000b20 <test2_positioning_proc+0x74>)
20000b02:	2200      	movs	r2, #0
20000b04:	601a      	str	r2, [r3, #0]
20000b06:	2200      	movs	r2, #0
20000b08:	6879      	ldr	r1, [r7, #4]
20000b0a:	480d      	ldr	r0, [pc, #52]	; (20000b40 <test2_positioning_proc+0x94>)
20000b0c:	f000 f8da 	bl	20000cc4 <reg_update>
20000b10:	4b0b      	ldr	r3, [pc, #44]	; (20000b40 <test2_positioning_proc+0x94>)
20000b12:	68db      	ldr	r3, [r3, #12]
20000b14:	131b      	asrs	r3, r3, #12
20000b16:	4618      	mov	r0, r3
20000b18:	3708      	adds	r7, #8
20000b1a:	46bd      	mov	sp, r7
20000b1c:	bd80      	pop	{r7, pc}
20000b1e:	bf00      	nop
20000b20:	20002e9c 	.word	0x20002e9c
20000b24:	20002e3d 	.word	0x20002e3d
20000b28:	20002e40 	.word	0x20002e40
20000b2c:	2000091d 	.word	0x2000091d
20000b30:	20002e00 	.word	0x20002e00
20000b34:	20002e28 	.word	0x20002e28
20000b38:	20002e2c 	.word	0x20002e2c
20000b3c:	200009f9 	.word	0x200009f9
20000b40:	20002e74 	.word	0x20002e74

20000b44 <test1_positioning_proc>:
20000b44:	b580      	push	{r7, lr}
20000b46:	b082      	sub	sp, #8
20000b48:	af00      	add	r7, sp, #0
20000b4a:	4b1d      	ldr	r3, [pc, #116]	; (20000bc0 <test1_positioning_proc+0x7c>)
20000b4c:	681b      	ldr	r3, [r3, #0]
20000b4e:	f241 3287 	movw	r2, #4999	; 0x1387
20000b52:	4293      	cmp	r3, r2
20000b54:	dd07      	ble.n	20000b66 <test1_positioning_proc+0x22>
20000b56:	4b1b      	ldr	r3, [pc, #108]	; (20000bc4 <test1_positioning_proc+0x80>)
20000b58:	2201      	movs	r2, #1
20000b5a:	701a      	strb	r2, [r3, #0]
20000b5c:	4b1a      	ldr	r3, [pc, #104]	; (20000bc8 <test1_positioning_proc+0x84>)
20000b5e:	4a1b      	ldr	r2, [pc, #108]	; (20000bcc <test1_positioning_proc+0x88>)
20000b60:	601a      	str	r2, [r3, #0]
20000b62:	2300      	movs	r3, #0
20000b64:	e028      	b.n	20000bb8 <test1_positioning_proc+0x74>
20000b66:	4b16      	ldr	r3, [pc, #88]	; (20000bc0 <test1_positioning_proc+0x7c>)
20000b68:	681b      	ldr	r3, [r3, #0]
20000b6a:	3301      	adds	r3, #1
20000b6c:	4a14      	ldr	r2, [pc, #80]	; (20000bc0 <test1_positioning_proc+0x7c>)
20000b6e:	6013      	str	r3, [r2, #0]
20000b70:	4b17      	ldr	r3, [pc, #92]	; (20000bd0 <test1_positioning_proc+0x8c>)
20000b72:	681a      	ldr	r2, [r3, #0]
20000b74:	4b17      	ldr	r3, [pc, #92]	; (20000bd4 <test1_positioning_proc+0x90>)
20000b76:	681b      	ldr	r3, [r3, #0]
20000b78:	1ad3      	subs	r3, r2, r3
20000b7a:	607b      	str	r3, [r7, #4]
20000b7c:	687b      	ldr	r3, [r7, #4]
20000b7e:	f113 0f02 	cmn.w	r3, #2
20000b82:	db11      	blt.n	20000ba8 <test1_positioning_proc+0x64>
20000b84:	687b      	ldr	r3, [r7, #4]
20000b86:	2b02      	cmp	r3, #2
20000b88:	dc0e      	bgt.n	20000ba8 <test1_positioning_proc+0x64>
20000b8a:	4b13      	ldr	r3, [pc, #76]	; (20000bd8 <test1_positioning_proc+0x94>)
20000b8c:	681b      	ldr	r3, [r3, #0]
20000b8e:	f5a3 539c 	sub.w	r3, r3, #4992	; 0x1380
20000b92:	3b08      	subs	r3, #8
20000b94:	4a0e      	ldr	r2, [pc, #56]	; (20000bd0 <test1_positioning_proc+0x8c>)
20000b96:	6013      	str	r3, [r2, #0]
20000b98:	4b0b      	ldr	r3, [pc, #44]	; (20000bc8 <test1_positioning_proc+0x84>)
20000b9a:	4a10      	ldr	r2, [pc, #64]	; (20000bdc <test1_positioning_proc+0x98>)
20000b9c:	601a      	str	r2, [r3, #0]
20000b9e:	4b08      	ldr	r3, [pc, #32]	; (20000bc0 <test1_positioning_proc+0x7c>)
20000ba0:	2200      	movs	r2, #0
20000ba2:	601a      	str	r2, [r3, #0]
20000ba4:	2300      	movs	r3, #0
20000ba6:	e007      	b.n	20000bb8 <test1_positioning_proc+0x74>
20000ba8:	2200      	movs	r2, #0
20000baa:	6879      	ldr	r1, [r7, #4]
20000bac:	480c      	ldr	r0, [pc, #48]	; (20000be0 <test1_positioning_proc+0x9c>)
20000bae:	f000 f889 	bl	20000cc4 <reg_update>
20000bb2:	4b0b      	ldr	r3, [pc, #44]	; (20000be0 <test1_positioning_proc+0x9c>)
20000bb4:	68db      	ldr	r3, [r3, #12]
20000bb6:	131b      	asrs	r3, r3, #12
20000bb8:	4618      	mov	r0, r3
20000bba:	3708      	adds	r7, #8
20000bbc:	46bd      	mov	sp, r7
20000bbe:	bd80      	pop	{r7, pc}
20000bc0:	20002e9c 	.word	0x20002e9c
20000bc4:	20002e3d 	.word	0x20002e3d
20000bc8:	20002e40 	.word	0x20002e40
20000bcc:	2000091d 	.word	0x2000091d
20000bd0:	20002e00 	.word	0x20002e00
20000bd4:	20002e28 	.word	0x20002e28
20000bd8:	20002e2c 	.word	0x20002e2c
20000bdc:	20000aad 	.word	0x20000aad
20000be0:	20002e74 	.word	0x20002e74

20000be4 <start_positioning_proc>:
20000be4:	b580      	push	{r7, lr}
20000be6:	b082      	sub	sp, #8
20000be8:	af00      	add	r7, sp, #0
20000bea:	4b1f      	ldr	r3, [pc, #124]	; (20000c68 <start_positioning_proc+0x84>)
20000bec:	681b      	ldr	r3, [r3, #0]
20000bee:	f241 3287 	movw	r2, #4999	; 0x1387
20000bf2:	4293      	cmp	r3, r2
20000bf4:	dd07      	ble.n	20000c06 <start_positioning_proc+0x22>
20000bf6:	4b1d      	ldr	r3, [pc, #116]	; (20000c6c <start_positioning_proc+0x88>)
20000bf8:	2201      	movs	r2, #1
20000bfa:	701a      	strb	r2, [r3, #0]
20000bfc:	4b1c      	ldr	r3, [pc, #112]	; (20000c70 <start_positioning_proc+0x8c>)
20000bfe:	4a1d      	ldr	r2, [pc, #116]	; (20000c74 <start_positioning_proc+0x90>)
20000c00:	601a      	str	r2, [r3, #0]
20000c02:	2300      	movs	r3, #0
20000c04:	e02c      	b.n	20000c60 <start_positioning_proc+0x7c>
20000c06:	4b18      	ldr	r3, [pc, #96]	; (20000c68 <start_positioning_proc+0x84>)
20000c08:	681b      	ldr	r3, [r3, #0]
20000c0a:	3301      	adds	r3, #1
20000c0c:	4a16      	ldr	r2, [pc, #88]	; (20000c68 <start_positioning_proc+0x84>)
20000c0e:	6013      	str	r3, [r2, #0]
20000c10:	4b19      	ldr	r3, [pc, #100]	; (20000c78 <start_positioning_proc+0x94>)
20000c12:	681a      	ldr	r2, [r3, #0]
20000c14:	4b19      	ldr	r3, [pc, #100]	; (20000c7c <start_positioning_proc+0x98>)
20000c16:	681b      	ldr	r3, [r3, #0]
20000c18:	1ad3      	subs	r3, r2, r3
20000c1a:	607b      	str	r3, [r7, #4]
20000c1c:	687b      	ldr	r3, [r7, #4]
20000c1e:	f113 0f02 	cmn.w	r3, #2
20000c22:	db15      	blt.n	20000c50 <start_positioning_proc+0x6c>
20000c24:	687b      	ldr	r3, [r7, #4]
20000c26:	2b02      	cmp	r3, #2
20000c28:	dc12      	bgt.n	20000c50 <start_positioning_proc+0x6c>
20000c2a:	4b15      	ldr	r3, [pc, #84]	; (20000c80 <start_positioning_proc+0x9c>)
20000c2c:	681b      	ldr	r3, [r3, #0]
20000c2e:	4a15      	ldr	r2, [pc, #84]	; (20000c84 <start_positioning_proc+0xa0>)
20000c30:	6013      	str	r3, [r2, #0]
20000c32:	4b14      	ldr	r3, [pc, #80]	; (20000c84 <start_positioning_proc+0xa0>)
20000c34:	681b      	ldr	r3, [r3, #0]
20000c36:	f503 539c 	add.w	r3, r3, #4992	; 0x1380
20000c3a:	3308      	adds	r3, #8
20000c3c:	4a12      	ldr	r2, [pc, #72]	; (20000c88 <start_positioning_proc+0xa4>)
20000c3e:	6013      	str	r3, [r2, #0]
20000c40:	4b0b      	ldr	r3, [pc, #44]	; (20000c70 <start_positioning_proc+0x8c>)
20000c42:	4a12      	ldr	r2, [pc, #72]	; (20000c8c <start_positioning_proc+0xa8>)
20000c44:	601a      	str	r2, [r3, #0]
20000c46:	4b08      	ldr	r3, [pc, #32]	; (20000c68 <start_positioning_proc+0x84>)
20000c48:	2200      	movs	r2, #0
20000c4a:	601a      	str	r2, [r3, #0]
20000c4c:	2300      	movs	r3, #0
20000c4e:	e007      	b.n	20000c60 <start_positioning_proc+0x7c>
20000c50:	2200      	movs	r2, #0
20000c52:	6879      	ldr	r1, [r7, #4]
20000c54:	480e      	ldr	r0, [pc, #56]	; (20000c90 <start_positioning_proc+0xac>)
20000c56:	f000 f835 	bl	20000cc4 <reg_update>
20000c5a:	4b0d      	ldr	r3, [pc, #52]	; (20000c90 <start_positioning_proc+0xac>)
20000c5c:	68db      	ldr	r3, [r3, #12]
20000c5e:	131b      	asrs	r3, r3, #12
20000c60:	4618      	mov	r0, r3
20000c62:	3708      	adds	r7, #8
20000c64:	46bd      	mov	sp, r7
20000c66:	bd80      	pop	{r7, pc}
20000c68:	20002e9c 	.word	0x20002e9c
20000c6c:	20002e3d 	.word	0x20002e3d
20000c70:	20002e40 	.word	0x20002e40
20000c74:	2000091d 	.word	0x2000091d
20000c78:	20002e14 	.word	0x20002e14
20000c7c:	20002e04 	.word	0x20002e04
20000c80:	20002e28 	.word	0x20002e28
20000c84:	20002e2c 	.word	0x20002e2c
20000c88:	20002e00 	.word	0x20002e00
20000c8c:	20000b45 	.word	0x20000b45
20000c90:	20002e84 	.word	0x20002e84

20000c94 <mycos>:
20000c94:	4b02      	ldr	r3, [pc, #8]	; (20000ca0 <mycos+0xc>)
20000c96:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000c9a:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000c9e:	4770      	bx	lr
20000ca0:	20001d9c 	.word	0x20001d9c

20000ca4 <mysin>:
20000ca4:	4b03      	ldr	r3, [pc, #12]	; (20000cb4 <mysin+0x10>)
20000ca6:	f500 7040 	add.w	r0, r0, #768	; 0x300
20000caa:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000cae:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000cb2:	4770      	bx	lr
20000cb4:	20001d9c 	.word	0x20001d9c

20000cb8 <reg_init>:
20000cb8:	2300      	movs	r3, #0
20000cba:	e880 000e 	stmia.w	r0, {r1, r2, r3}
20000cbe:	60c3      	str	r3, [r0, #12]
20000cc0:	4770      	bx	lr
20000cc2:	bf00      	nop

20000cc4 <reg_update>:
20000cc4:	6803      	ldr	r3, [r0, #0]
20000cc6:	b410      	push	{r4}
20000cc8:	fb03 f301 	mul.w	r3, r3, r1
20000ccc:	6884      	ldr	r4, [r0, #8]
20000cce:	b11a      	cbz	r2, 20000cd8 <reg_update+0x14>
20000cd0:	2c00      	cmp	r4, #0
20000cd2:	dd09      	ble.n	20000ce8 <reg_update+0x24>
20000cd4:	ea03 73e3 	and.w	r3, r3, r3, asr #31
20000cd8:	6842      	ldr	r2, [r0, #4]
20000cda:	4423      	add	r3, r4
20000cdc:	fb02 3101 	mla	r1, r2, r1, r3
20000ce0:	6083      	str	r3, [r0, #8]
20000ce2:	60c1      	str	r1, [r0, #12]
20000ce4:	bc10      	pop	{r4}
20000ce6:	4770      	bx	lr
20000ce8:	bf18      	it	ne
20000cea:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
20000cee:	e7f3      	b.n	20000cd8 <reg_update+0x14>

20000cf0 <dot3>:
20000cf0:	b430      	push	{r4, r5}
20000cf2:	684b      	ldr	r3, [r1, #4]
20000cf4:	6844      	ldr	r4, [r0, #4]
20000cf6:	6802      	ldr	r2, [r0, #0]
20000cf8:	fb03 f304 	mul.w	r3, r3, r4
20000cfc:	680d      	ldr	r5, [r1, #0]
20000cfe:	6884      	ldr	r4, [r0, #8]
20000d00:	fb05 3302 	mla	r3, r5, r2, r3
20000d04:	6888      	ldr	r0, [r1, #8]
20000d06:	fb00 3004 	mla	r0, r0, r4, r3
20000d0a:	bc30      	pop	{r4, r5}
20000d0c:	4770      	bx	lr
20000d0e:	bf00      	nop

20000d10 <abc_to_dq>:
20000d10:	b4f0      	push	{r4, r5, r6, r7}
20000d12:	4c1d      	ldr	r4, [pc, #116]	; (20000d88 <abc_to_dq+0x78>)
20000d14:	6803      	ldr	r3, [r0, #0]
20000d16:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
20000d1a:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
20000d1e:	fb03 f306 	mul.w	r3, r3, r6
20000d22:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d26:	6847      	ldr	r7, [r0, #4]
20000d28:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000d2c:	f202 1655 	addw	r6, r2, #341	; 0x155
20000d30:	fb07 3305 	mla	r3, r7, r5, r3
20000d34:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000d38:	6887      	ldr	r7, [r0, #8]
20000d3a:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000d3e:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
20000d42:	fb07 3305 	mla	r3, r7, r5, r3
20000d46:	129b      	asrs	r3, r3, #10
20000d48:	600b      	str	r3, [r1, #0]
20000d4a:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000d4e:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
20000d52:	6843      	ldr	r3, [r0, #4]
20000d54:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000d58:	fb03 f306 	mul.w	r3, r3, r6
20000d5c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d60:	6806      	ldr	r6, [r0, #0]
20000d62:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000d66:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000d6a:	fb06 3305 	mla	r3, r6, r5, r3
20000d6e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d72:	6880      	ldr	r0, [r0, #8]
20000d74:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
20000d78:	bcf0      	pop	{r4, r5, r6, r7}
20000d7a:	fb00 3302 	mla	r3, r0, r2, r3
20000d7e:	425b      	negs	r3, r3
20000d80:	129b      	asrs	r3, r3, #10
20000d82:	604b      	str	r3, [r1, #4]
20000d84:	4770      	bx	lr
20000d86:	bf00      	nop
20000d88:	20001d9c 	.word	0x20001d9c

20000d8c <dq_to_abc>:
20000d8c:	4b1d      	ldr	r3, [pc, #116]	; (20000e04 <dq_to_abc+0x78>)
20000d8e:	b4f0      	push	{r4, r5, r6, r7}
20000d90:	680e      	ldr	r6, [r1, #0]
20000d92:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
20000d96:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000d9a:	fb04 f406 	mul.w	r4, r4, r6
20000d9e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000da2:	684f      	ldr	r7, [r1, #4]
20000da4:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000da8:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000dac:	fb07 4415 	mls	r4, r7, r5, r4
20000db0:	1524      	asrs	r4, r4, #20
20000db2:	6004      	str	r4, [r0, #0]
20000db4:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000db8:	680c      	ldr	r4, [r1, #0]
20000dba:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
20000dbe:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
20000dc2:	fb04 f406 	mul.w	r4, r4, r6
20000dc6:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000dca:	684f      	ldr	r7, [r1, #4]
20000dcc:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000dd0:	f202 1655 	addw	r6, r2, #341	; 0x155
20000dd4:	fb07 4415 	mls	r4, r7, r5, r4
20000dd8:	1524      	asrs	r4, r4, #20
20000dda:	6044      	str	r4, [r0, #4]
20000ddc:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000de0:	680c      	ldr	r4, [r1, #0]
20000de2:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000de6:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000dea:	fb04 f405 	mul.w	r4, r4, r5
20000dee:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000df2:	6849      	ldr	r1, [r1, #4]
20000df4:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
20000df8:	fb01 4312 	mls	r3, r1, r2, r4
20000dfc:	bcf0      	pop	{r4, r5, r6, r7}
20000dfe:	151b      	asrs	r3, r3, #20
20000e00:	6083      	str	r3, [r0, #8]
20000e02:	4770      	bx	lr
20000e04:	20001d9c 	.word	0x20001d9c

20000e08 <cord_atan>:
20000e08:	b5f0      	push	{r4, r5, r6, r7, lr}
20000e0a:	b091      	sub	sp, #68	; 0x44
20000e0c:	46ee      	mov	lr, sp
20000e0e:	4684      	mov	ip, r0
20000e10:	4e56      	ldr	r6, [pc, #344]	; (20000f6c <cord_atan+0x164>)
20000e12:	460d      	mov	r5, r1
20000e14:	4614      	mov	r4, r2
20000e16:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000e18:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000e1c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000e20:	af08      	add	r7, sp, #32
20000e22:	3610      	adds	r6, #16
20000e24:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000e28:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000e2a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000e2c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000e30:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000e34:	f8dc 6000 	ldr.w	r6, [ip]
20000e38:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000e3c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000e40:	2b00      	cmp	r3, #0
20000e42:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000e46:	9900      	ldr	r1, [sp, #0]
20000e48:	dd56      	ble.n	20000ef8 <cord_atan+0xf0>
20000e4a:	18d0      	adds	r0, r2, r3
20000e4c:	1a9b      	subs	r3, r3, r2
20000e4e:	2b00      	cmp	r3, #0
20000e50:	d07a      	beq.n	20000f48 <cord_atan+0x140>
20000e52:	9f01      	ldr	r7, [sp, #4]
20000e54:	dd54      	ble.n	20000f00 <cord_atan+0xf8>
20000e56:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000e5a:	4439      	add	r1, r7
20000e5c:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000e60:	2b00      	cmp	r3, #0
20000e62:	d073      	beq.n	20000f4c <cord_atan+0x144>
20000e64:	9f02      	ldr	r7, [sp, #8]
20000e66:	dd51      	ble.n	20000f0c <cord_atan+0x104>
20000e68:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000e6c:	4439      	add	r1, r7
20000e6e:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000e72:	2b00      	cmp	r3, #0
20000e74:	d06d      	beq.n	20000f52 <cord_atan+0x14a>
20000e76:	9f03      	ldr	r7, [sp, #12]
20000e78:	dd4e      	ble.n	20000f18 <cord_atan+0x110>
20000e7a:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000e7e:	4439      	add	r1, r7
20000e80:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000e84:	2b00      	cmp	r3, #0
20000e86:	d066      	beq.n	20000f56 <cord_atan+0x14e>
20000e88:	9f04      	ldr	r7, [sp, #16]
20000e8a:	dd4b      	ble.n	20000f24 <cord_atan+0x11c>
20000e8c:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000e90:	4439      	add	r1, r7
20000e92:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000e96:	2b00      	cmp	r3, #0
20000e98:	d060      	beq.n	20000f5c <cord_atan+0x154>
20000e9a:	9f05      	ldr	r7, [sp, #20]
20000e9c:	dd48      	ble.n	20000f30 <cord_atan+0x128>
20000e9e:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000ea2:	4439      	add	r1, r7
20000ea4:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000ea8:	2b00      	cmp	r3, #0
20000eaa:	d059      	beq.n	20000f60 <cord_atan+0x158>
20000eac:	9f06      	ldr	r7, [sp, #24]
20000eae:	dd45      	ble.n	20000f3c <cord_atan+0x134>
20000eb0:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000eb4:	4439      	add	r1, r7
20000eb6:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000eba:	2b00      	cmp	r3, #0
20000ebc:	d053      	beq.n	20000f66 <cord_atan+0x15e>
20000ebe:	9a07      	ldr	r2, [sp, #28]
20000ec0:	bfc7      	ittee	gt
20000ec2:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000ec6:	1889      	addgt	r1, r1, r2
20000ec8:	1a89      	suble	r1, r1, r2
20000eca:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000ece:	2207      	movs	r2, #7
20000ed0:	ab10      	add	r3, sp, #64	; 0x40
20000ed2:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000ed6:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000eda:	2e00      	cmp	r6, #0
20000edc:	fb03 f300 	mul.w	r3, r3, r0
20000ee0:	bfb8      	it	lt
20000ee2:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000ee6:	2900      	cmp	r1, #0
20000ee8:	bfb8      	it	lt
20000eea:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000eee:	129b      	asrs	r3, r3, #10
20000ef0:	6029      	str	r1, [r5, #0]
20000ef2:	6023      	str	r3, [r4, #0]
20000ef4:	b011      	add	sp, #68	; 0x44
20000ef6:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000ef8:	1ad0      	subs	r0, r2, r3
20000efa:	4249      	negs	r1, r1
20000efc:	4413      	add	r3, r2
20000efe:	e7a6      	b.n	20000e4e <cord_atan+0x46>
20000f00:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000f04:	1bc9      	subs	r1, r1, r7
20000f06:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000f0a:	e7a9      	b.n	20000e60 <cord_atan+0x58>
20000f0c:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000f10:	1bc9      	subs	r1, r1, r7
20000f12:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000f16:	e7ac      	b.n	20000e72 <cord_atan+0x6a>
20000f18:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000f1c:	1bc9      	subs	r1, r1, r7
20000f1e:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000f22:	e7af      	b.n	20000e84 <cord_atan+0x7c>
20000f24:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000f28:	1bc9      	subs	r1, r1, r7
20000f2a:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000f2e:	e7b2      	b.n	20000e96 <cord_atan+0x8e>
20000f30:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000f34:	1bc9      	subs	r1, r1, r7
20000f36:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000f3a:	e7b5      	b.n	20000ea8 <cord_atan+0xa0>
20000f3c:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000f40:	1bc9      	subs	r1, r1, r7
20000f42:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000f46:	e7b8      	b.n	20000eba <cord_atan+0xb2>
20000f48:	461a      	mov	r2, r3
20000f4a:	e7c1      	b.n	20000ed0 <cord_atan+0xc8>
20000f4c:	4610      	mov	r0, r2
20000f4e:	2201      	movs	r2, #1
20000f50:	e7be      	b.n	20000ed0 <cord_atan+0xc8>
20000f52:	2202      	movs	r2, #2
20000f54:	e7bc      	b.n	20000ed0 <cord_atan+0xc8>
20000f56:	4610      	mov	r0, r2
20000f58:	2203      	movs	r2, #3
20000f5a:	e7b9      	b.n	20000ed0 <cord_atan+0xc8>
20000f5c:	2204      	movs	r2, #4
20000f5e:	e7b7      	b.n	20000ed0 <cord_atan+0xc8>
20000f60:	4610      	mov	r0, r2
20000f62:	2205      	movs	r2, #5
20000f64:	e7b4      	b.n	20000ed0 <cord_atan+0xc8>
20000f66:	2206      	movs	r2, #6
20000f68:	e7b2      	b.n	20000ed0 <cord_atan+0xc8>
20000f6a:	bf00      	nop
20000f6c:	20001d5c 	.word	0x20001d5c

20000f70 <sinpwm>:
20000f70:	b5f0      	push	{r4, r5, r6, r7, lr}
20000f72:	b091      	sub	sp, #68	; 0x44
20000f74:	46ee      	mov	lr, sp
20000f76:	468c      	mov	ip, r1
20000f78:	4e6e      	ldr	r6, [pc, #440]	; (20001134 <sinpwm+0x1c4>)
20000f7a:	4604      	mov	r4, r0
20000f7c:	4615      	mov	r5, r2
20000f7e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000f80:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000f84:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000f88:	af08      	add	r7, sp, #32
20000f8a:	3610      	adds	r6, #16
20000f8c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000f90:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000f92:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000f94:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000f98:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000f9c:	f8dc 6000 	ldr.w	r6, [ip]
20000fa0:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000fa4:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000fa8:	2b00      	cmp	r3, #0
20000faa:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000fae:	9900      	ldr	r1, [sp, #0]
20000fb0:	f340 8087 	ble.w	200010c2 <sinpwm+0x152>
20000fb4:	18d0      	adds	r0, r2, r3
20000fb6:	1a9b      	subs	r3, r3, r2
20000fb8:	2b00      	cmp	r3, #0
20000fba:	f000 80aa 	beq.w	20001112 <sinpwm+0x1a2>
20000fbe:	9f01      	ldr	r7, [sp, #4]
20000fc0:	f340 8083 	ble.w	200010ca <sinpwm+0x15a>
20000fc4:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000fc8:	4439      	add	r1, r7
20000fca:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000fce:	2b00      	cmp	r3, #0
20000fd0:	f000 80a1 	beq.w	20001116 <sinpwm+0x1a6>
20000fd4:	9f02      	ldr	r7, [sp, #8]
20000fd6:	dd7e      	ble.n	200010d6 <sinpwm+0x166>
20000fd8:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000fdc:	4439      	add	r1, r7
20000fde:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000fe2:	2b00      	cmp	r3, #0
20000fe4:	f000 809a 	beq.w	2000111c <sinpwm+0x1ac>
20000fe8:	9f03      	ldr	r7, [sp, #12]
20000fea:	dd7a      	ble.n	200010e2 <sinpwm+0x172>
20000fec:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000ff0:	4439      	add	r1, r7
20000ff2:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000ff6:	2b00      	cmp	r3, #0
20000ff8:	f000 8092 	beq.w	20001120 <sinpwm+0x1b0>
20000ffc:	9f04      	ldr	r7, [sp, #16]
20000ffe:	dd76      	ble.n	200010ee <sinpwm+0x17e>
20001000:	eb02 1023 	add.w	r0, r2, r3, asr #4
20001004:	4439      	add	r1, r7
20001006:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000100a:	2b00      	cmp	r3, #0
2000100c:	f000 808b 	beq.w	20001126 <sinpwm+0x1b6>
20001010:	9f05      	ldr	r7, [sp, #20]
20001012:	dd72      	ble.n	200010fa <sinpwm+0x18a>
20001014:	eb00 1263 	add.w	r2, r0, r3, asr #5
20001018:	4439      	add	r1, r7
2000101a:	eba3 1360 	sub.w	r3, r3, r0, asr #5
2000101e:	2b00      	cmp	r3, #0
20001020:	f000 8083 	beq.w	2000112a <sinpwm+0x1ba>
20001024:	9f06      	ldr	r7, [sp, #24]
20001026:	dd6e      	ble.n	20001106 <sinpwm+0x196>
20001028:	eb02 10a3 	add.w	r0, r2, r3, asr #6
2000102c:	4439      	add	r1, r7
2000102e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20001032:	2b00      	cmp	r3, #0
20001034:	d07c      	beq.n	20001130 <sinpwm+0x1c0>
20001036:	9a07      	ldr	r2, [sp, #28]
20001038:	bfc7      	ittee	gt
2000103a:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
2000103e:	1889      	addgt	r1, r1, r2
20001040:	1a89      	suble	r1, r1, r2
20001042:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20001046:	2207      	movs	r2, #7
20001048:	ab10      	add	r3, sp, #64	; 0x40
2000104a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000104e:	f852 3c20 	ldr.w	r3, [r2, #-32]
20001052:	2e00      	cmp	r6, #0
20001054:	fb03 f300 	mul.w	r3, r3, r0
20001058:	bfb8      	it	lt
2000105a:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
2000105e:	2900      	cmp	r1, #0
20001060:	bfb8      	it	lt
20001062:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20001066:	151b      	asrs	r3, r3, #20
20001068:	440d      	add	r5, r1
2000106a:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
2000106e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001072:	dd22      	ble.n	200010ba <sinpwm+0x14a>
20001074:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 2000113c <sinpwm+0x1cc>
20001078:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
2000107c:	2001      	movs	r0, #1
2000107e:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
20001082:	4f2d      	ldr	r7, [pc, #180]	; (20001138 <sinpwm+0x1c8>)
20001084:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
20001088:	3602      	adds	r6, #2
2000108a:	f3ce 0e09 	ubfx	lr, lr, #0, #10
2000108e:	f3c6 0609 	ubfx	r6, r6, #0, #10
20001092:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
20001096:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
2000109a:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
2000109e:	fb06 f50c 	mul.w	r5, r6, ip
200010a2:	fb01 f10c 	mul.w	r1, r1, ip
200010a6:	fb02 f303 	mul.w	r3, r2, r3
200010aa:	12ad      	asrs	r5, r5, #10
200010ac:	128a      	asrs	r2, r1, #10
200010ae:	129b      	asrs	r3, r3, #10
200010b0:	60a5      	str	r5, [r4, #8]
200010b2:	6062      	str	r2, [r4, #4]
200010b4:	6023      	str	r3, [r4, #0]
200010b6:	b011      	add	sp, #68	; 0x44
200010b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
200010ba:	f1c3 0c00 	rsb	ip, r3, #0
200010be:	2000      	movs	r0, #0
200010c0:	e7dd      	b.n	2000107e <sinpwm+0x10e>
200010c2:	1ad0      	subs	r0, r2, r3
200010c4:	4249      	negs	r1, r1
200010c6:	4413      	add	r3, r2
200010c8:	e776      	b.n	20000fb8 <sinpwm+0x48>
200010ca:	eba0 0263 	sub.w	r2, r0, r3, asr #1
200010ce:	1bc9      	subs	r1, r1, r7
200010d0:	eb03 0360 	add.w	r3, r3, r0, asr #1
200010d4:	e77b      	b.n	20000fce <sinpwm+0x5e>
200010d6:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
200010da:	1bc9      	subs	r1, r1, r7
200010dc:	eb03 03a2 	add.w	r3, r3, r2, asr #2
200010e0:	e77f      	b.n	20000fe2 <sinpwm+0x72>
200010e2:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
200010e6:	1bc9      	subs	r1, r1, r7
200010e8:	eb03 03e0 	add.w	r3, r3, r0, asr #3
200010ec:	e783      	b.n	20000ff6 <sinpwm+0x86>
200010ee:	eba2 1023 	sub.w	r0, r2, r3, asr #4
200010f2:	1bc9      	subs	r1, r1, r7
200010f4:	eb03 1322 	add.w	r3, r3, r2, asr #4
200010f8:	e787      	b.n	2000100a <sinpwm+0x9a>
200010fa:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200010fe:	1bc9      	subs	r1, r1, r7
20001100:	eb03 1360 	add.w	r3, r3, r0, asr #5
20001104:	e78b      	b.n	2000101e <sinpwm+0xae>
20001106:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
2000110a:	1bc9      	subs	r1, r1, r7
2000110c:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20001110:	e78f      	b.n	20001032 <sinpwm+0xc2>
20001112:	461a      	mov	r2, r3
20001114:	e798      	b.n	20001048 <sinpwm+0xd8>
20001116:	4610      	mov	r0, r2
20001118:	2201      	movs	r2, #1
2000111a:	e795      	b.n	20001048 <sinpwm+0xd8>
2000111c:	2202      	movs	r2, #2
2000111e:	e793      	b.n	20001048 <sinpwm+0xd8>
20001120:	4610      	mov	r0, r2
20001122:	2203      	movs	r2, #3
20001124:	e790      	b.n	20001048 <sinpwm+0xd8>
20001126:	2204      	movs	r2, #4
20001128:	e78e      	b.n	20001048 <sinpwm+0xd8>
2000112a:	4610      	mov	r0, r2
2000112c:	2205      	movs	r2, #5
2000112e:	e78b      	b.n	20001048 <sinpwm+0xd8>
20001130:	2206      	movs	r2, #6
20001132:	e789      	b.n	20001048 <sinpwm+0xd8>
20001134:	20001d5c 	.word	0x20001d5c
20001138:	20001d9c 	.word	0x20001d9c
2000113c:	fffffe0c 	.word	0xfffffe0c

20001140 <svpwm>:
20001140:	b5f0      	push	{r4, r5, r6, r7, lr}
20001142:	b091      	sub	sp, #68	; 0x44
20001144:	46ee      	mov	lr, sp
20001146:	468c      	mov	ip, r1
20001148:	4eb9      	ldr	r6, [pc, #740]	; (20001430 <svpwm+0x2f0>)
2000114a:	4604      	mov	r4, r0
2000114c:	4615      	mov	r5, r2
2000114e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20001150:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20001154:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20001158:	af08      	add	r7, sp, #32
2000115a:	3610      	adds	r6, #16
2000115c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20001160:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20001162:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20001164:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20001168:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
2000116c:	f8dc 6000 	ldr.w	r6, [ip]
20001170:	f8dc 3004 	ldr.w	r3, [ip, #4]
20001174:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20001178:	2b00      	cmp	r3, #0
2000117a:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
2000117e:	9900      	ldr	r1, [sp, #0]
20001180:	dd71      	ble.n	20001266 <svpwm+0x126>
20001182:	18d0      	adds	r0, r2, r3
20001184:	1a9b      	subs	r3, r3, r2
20001186:	2b00      	cmp	r3, #0
20001188:	f000 8141 	beq.w	2000140e <svpwm+0x2ce>
2000118c:	9f01      	ldr	r7, [sp, #4]
2000118e:	dd6e      	ble.n	2000126e <svpwm+0x12e>
20001190:	eb00 0263 	add.w	r2, r0, r3, asr #1
20001194:	4439      	add	r1, r7
20001196:	eba3 0360 	sub.w	r3, r3, r0, asr #1
2000119a:	2b00      	cmp	r3, #0
2000119c:	f000 8139 	beq.w	20001412 <svpwm+0x2d2>
200011a0:	9f02      	ldr	r7, [sp, #8]
200011a2:	dd6a      	ble.n	2000127a <svpwm+0x13a>
200011a4:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200011a8:	4439      	add	r1, r7
200011aa:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200011ae:	2b00      	cmp	r3, #0
200011b0:	f000 8132 	beq.w	20001418 <svpwm+0x2d8>
200011b4:	9f03      	ldr	r7, [sp, #12]
200011b6:	dd66      	ble.n	20001286 <svpwm+0x146>
200011b8:	eb00 02e3 	add.w	r2, r0, r3, asr #3
200011bc:	4439      	add	r1, r7
200011be:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
200011c2:	2b00      	cmp	r3, #0
200011c4:	f000 812a 	beq.w	2000141c <svpwm+0x2dc>
200011c8:	9f04      	ldr	r7, [sp, #16]
200011ca:	dd62      	ble.n	20001292 <svpwm+0x152>
200011cc:	eb02 1023 	add.w	r0, r2, r3, asr #4
200011d0:	4439      	add	r1, r7
200011d2:	eba3 1322 	sub.w	r3, r3, r2, asr #4
200011d6:	2b00      	cmp	r3, #0
200011d8:	f000 8123 	beq.w	20001422 <svpwm+0x2e2>
200011dc:	9f05      	ldr	r7, [sp, #20]
200011de:	dd5e      	ble.n	2000129e <svpwm+0x15e>
200011e0:	eb00 1263 	add.w	r2, r0, r3, asr #5
200011e4:	4439      	add	r1, r7
200011e6:	eba3 1360 	sub.w	r3, r3, r0, asr #5
200011ea:	2b00      	cmp	r3, #0
200011ec:	f000 811b 	beq.w	20001426 <svpwm+0x2e6>
200011f0:	9f06      	ldr	r7, [sp, #24]
200011f2:	dd5a      	ble.n	200012aa <svpwm+0x16a>
200011f4:	eb02 10a3 	add.w	r0, r2, r3, asr #6
200011f8:	4439      	add	r1, r7
200011fa:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
200011fe:	2b00      	cmp	r3, #0
20001200:	f000 8114 	beq.w	2000142c <svpwm+0x2ec>
20001204:	9a07      	ldr	r2, [sp, #28]
20001206:	bfc7      	ittee	gt
20001208:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
2000120c:	1889      	addgt	r1, r1, r2
2000120e:	1a89      	suble	r1, r1, r2
20001210:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20001214:	2207      	movs	r2, #7
20001216:	ab10      	add	r3, sp, #64	; 0x40
20001218:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000121c:	f852 3c20 	ldr.w	r3, [r2, #-32]
20001220:	2e00      	cmp	r6, #0
20001222:	bfb8      	it	lt
20001224:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20001228:	fb03 f300 	mul.w	r3, r3, r0
2000122c:	2900      	cmp	r1, #0
2000122e:	bfb8      	it	lt
20001230:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20001234:	4a7f      	ldr	r2, [pc, #508]	; (20001434 <svpwm+0x2f4>)
20001236:	440d      	add	r5, r1
20001238:	151b      	asrs	r3, r3, #20
2000123a:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000123e:	6013      	str	r3, [r2, #0]
20001240:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20001244:	1252      	asrs	r2, r2, #9
20001246:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
2000124a:	f102 32ff 	add.w	r2, r2, #4294967295
2000124e:	bfc6      	itte	gt
20001250:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20001254:	2001      	movgt	r0, #1
20001256:	2000      	movle	r0, #0
20001258:	2a04      	cmp	r2, #4
2000125a:	d848      	bhi.n	200012ee <svpwm+0x1ae>
2000125c:	e8df f002 	tbb	[pc, r2]
20001260:	2b9e8164 	.word	0x2b9e8164
20001264:	bb          	.byte	0xbb
20001265:	00          	.byte	0x00
20001266:	1ad0      	subs	r0, r2, r3
20001268:	4249      	negs	r1, r1
2000126a:	4413      	add	r3, r2
2000126c:	e78b      	b.n	20001186 <svpwm+0x46>
2000126e:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20001272:	1bc9      	subs	r1, r1, r7
20001274:	eb03 0360 	add.w	r3, r3, r0, asr #1
20001278:	e78f      	b.n	2000119a <svpwm+0x5a>
2000127a:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
2000127e:	1bc9      	subs	r1, r1, r7
20001280:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20001284:	e793      	b.n	200011ae <svpwm+0x6e>
20001286:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
2000128a:	1bc9      	subs	r1, r1, r7
2000128c:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20001290:	e797      	b.n	200011c2 <svpwm+0x82>
20001292:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20001296:	1bc9      	subs	r1, r1, r7
20001298:	eb03 1322 	add.w	r3, r3, r2, asr #4
2000129c:	e79b      	b.n	200011d6 <svpwm+0x96>
2000129e:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200012a2:	1bc9      	subs	r1, r1, r7
200012a4:	eb03 1360 	add.w	r3, r3, r0, asr #5
200012a8:	e79f      	b.n	200011ea <svpwm+0xaa>
200012aa:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
200012ae:	1bc9      	subs	r1, r1, r7
200012b0:	eb03 13a2 	add.w	r3, r3, r2, asr #6
200012b4:	e7a3      	b.n	200011fe <svpwm+0xbe>
200012b6:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
200012ba:	4e5f      	ldr	r6, [pc, #380]	; (20001438 <svpwm+0x2f8>)
200012bc:	3204      	adds	r2, #4
200012be:	f3c2 0209 	ubfx	r2, r2, #0, #10
200012c2:	3556      	adds	r5, #86	; 0x56
200012c4:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
200012c8:	f3c5 0509 	ubfx	r5, r5, #0, #10
200012cc:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
200012d0:	fb01 f103 	mul.w	r1, r1, r3
200012d4:	fb02 f203 	mul.w	r2, r2, r3
200012d8:	1289      	asrs	r1, r1, #10
200012da:	1293      	asrs	r3, r2, #10
200012dc:	424a      	negs	r2, r1
200012de:	1ad2      	subs	r2, r2, r3
200012e0:	1a5d      	subs	r5, r3, r1
200012e2:	440b      	add	r3, r1
200012e4:	6062      	str	r2, [r4, #4]
200012e6:	6025      	str	r5, [r4, #0]
200012e8:	60a3      	str	r3, [r4, #8]
200012ea:	b011      	add	sp, #68	; 0x44
200012ec:	bdf0      	pop	{r4, r5, r6, r7, pc}
200012ee:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
200012f2:	4e51      	ldr	r6, [pc, #324]	; (20001438 <svpwm+0x2f8>)
200012f4:	3202      	adds	r2, #2
200012f6:	f3c2 0209 	ubfx	r2, r2, #0, #10
200012fa:	f505 7540 	add.w	r5, r5, #768	; 0x300
200012fe:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20001302:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001306:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
2000130a:	fb01 f103 	mul.w	r1, r1, r3
2000130e:	fb02 f203 	mul.w	r2, r2, r3
20001312:	1289      	asrs	r1, r1, #10
20001314:	1293      	asrs	r3, r2, #10
20001316:	424a      	negs	r2, r1
20001318:	1ad2      	subs	r2, r2, r3
2000131a:	18cd      	adds	r5, r1, r3
2000131c:	1a5b      	subs	r3, r3, r1
2000131e:	60a2      	str	r2, [r4, #8]
20001320:	6025      	str	r5, [r4, #0]
20001322:	6063      	str	r3, [r4, #4]
20001324:	b011      	add	sp, #68	; 0x44
20001326:	bdf0      	pop	{r4, r5, r6, r7, pc}
20001328:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
2000132c:	4e42      	ldr	r6, [pc, #264]	; (20001438 <svpwm+0x2f8>)
2000132e:	3204      	adds	r2, #4
20001330:	f3c2 0209 	ubfx	r2, r2, #0, #10
20001334:	f205 2556 	addw	r5, r5, #598	; 0x256
20001338:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
2000133c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20001340:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20001344:	fb01 f103 	mul.w	r1, r1, r3
20001348:	fb02 f203 	mul.w	r2, r2, r3
2000134c:	1289      	asrs	r1, r1, #10
2000134e:	1293      	asrs	r3, r2, #10
20001350:	424a      	negs	r2, r1
20001352:	1ad2      	subs	r2, r2, r3
20001354:	1acd      	subs	r5, r1, r3
20001356:	440b      	add	r3, r1
20001358:	60a2      	str	r2, [r4, #8]
2000135a:	6025      	str	r5, [r4, #0]
2000135c:	6063      	str	r3, [r4, #4]
2000135e:	b011      	add	sp, #68	; 0x44
20001360:	bdf0      	pop	{r4, r5, r6, r7, pc}
20001362:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20001366:	4e34      	ldr	r6, [pc, #208]	; (20001438 <svpwm+0x2f8>)
20001368:	320f      	adds	r2, #15
2000136a:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000136e:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20001372:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20001376:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000137a:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
2000137e:	fb01 f103 	mul.w	r1, r1, r3
20001382:	fb02 f203 	mul.w	r2, r2, r3
20001386:	1289      	asrs	r1, r1, #10
20001388:	1293      	asrs	r3, r2, #10
2000138a:	424a      	negs	r2, r1
2000138c:	1ad2      	subs	r2, r2, r3
2000138e:	18cd      	adds	r5, r1, r3
20001390:	1a5b      	subs	r3, r3, r1
20001392:	e884 0024 	stmia.w	r4, {r2, r5}
20001396:	60a3      	str	r3, [r4, #8]
20001398:	b011      	add	sp, #68	; 0x44
2000139a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000139c:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
200013a0:	4e25      	ldr	r6, [pc, #148]	; (20001438 <svpwm+0x2f8>)
200013a2:	320a      	adds	r2, #10
200013a4:	f3c2 0209 	ubfx	r2, r2, #0, #10
200013a8:	f505 7580 	add.w	r5, r5, #256	; 0x100
200013ac:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
200013b0:	f3c5 0509 	ubfx	r5, r5, #0, #10
200013b4:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
200013b8:	fb01 f103 	mul.w	r1, r1, r3
200013bc:	fb02 f203 	mul.w	r2, r2, r3
200013c0:	1289      	asrs	r1, r1, #10
200013c2:	1293      	asrs	r3, r2, #10
200013c4:	424a      	negs	r2, r1
200013c6:	1ad2      	subs	r2, r2, r3
200013c8:	1acd      	subs	r5, r1, r3
200013ca:	440b      	add	r3, r1
200013cc:	e884 0024 	stmia.w	r4, {r2, r5}
200013d0:	60a3      	str	r3, [r4, #8]
200013d2:	b011      	add	sp, #68	; 0x44
200013d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
200013d6:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
200013da:	4917      	ldr	r1, [pc, #92]	; (20001438 <svpwm+0x2f8>)
200013dc:	320f      	adds	r2, #15
200013de:	f3c2 0209 	ubfx	r2, r2, #0, #10
200013e2:	3d55      	subs	r5, #85	; 0x55
200013e4:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
200013e8:	f3c5 0509 	ubfx	r5, r5, #0, #10
200013ec:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
200013f0:	fb02 f203 	mul.w	r2, r2, r3
200013f4:	fb01 f303 	mul.w	r3, r1, r3
200013f8:	1292      	asrs	r2, r2, #10
200013fa:	129b      	asrs	r3, r3, #10
200013fc:	4251      	negs	r1, r2
200013fe:	18d5      	adds	r5, r2, r3
20001400:	1ac9      	subs	r1, r1, r3
20001402:	1ad2      	subs	r2, r2, r3
20001404:	6061      	str	r1, [r4, #4]
20001406:	6025      	str	r5, [r4, #0]
20001408:	60a2      	str	r2, [r4, #8]
2000140a:	b011      	add	sp, #68	; 0x44
2000140c:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000140e:	461a      	mov	r2, r3
20001410:	e701      	b.n	20001216 <svpwm+0xd6>
20001412:	4610      	mov	r0, r2
20001414:	2201      	movs	r2, #1
20001416:	e6fe      	b.n	20001216 <svpwm+0xd6>
20001418:	2202      	movs	r2, #2
2000141a:	e6fc      	b.n	20001216 <svpwm+0xd6>
2000141c:	4610      	mov	r0, r2
2000141e:	2203      	movs	r2, #3
20001420:	e6f9      	b.n	20001216 <svpwm+0xd6>
20001422:	2204      	movs	r2, #4
20001424:	e6f7      	b.n	20001216 <svpwm+0xd6>
20001426:	4610      	mov	r0, r2
20001428:	2205      	movs	r2, #5
2000142a:	e6f4      	b.n	20001216 <svpwm+0xd6>
2000142c:	2206      	movs	r2, #6
2000142e:	e6f2      	b.n	20001216 <svpwm+0xd6>
20001430:	20001d5c 	.word	0x20001d5c
20001434:	20002ea4 	.word	0x20002ea4
20001438:	20001d9c 	.word	0x20001d9c

2000143c <encoder_init>:
2000143c:	4b01      	ldr	r3, [pc, #4]	; (20001444 <encoder_init+0x8>)
2000143e:	6058      	str	r0, [r3, #4]
20001440:	6098      	str	r0, [r3, #8]
20001442:	4770      	bx	lr
20001444:	20002ea4 	.word	0x20002ea4

20001448 <get_speed>:
20001448:	4a0e      	ldr	r2, [pc, #56]	; (20001484 <get_speed+0x3c>)
2000144a:	b430      	push	{r4, r5}
2000144c:	6893      	ldr	r3, [r2, #8]
2000144e:	6855      	ldr	r5, [r2, #4]
20001450:	1ac3      	subs	r3, r0, r3
20001452:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20001456:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
2000145a:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
2000145e:	6095      	str	r5, [r2, #8]
20001460:	6050      	str	r0, [r2, #4]
20001462:	dd05      	ble.n	20001470 <get_speed+0x28>
20001464:	2b00      	cmp	r3, #0
20001466:	bfb4      	ite	lt
20001468:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
2000146c:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20001470:	4a05      	ldr	r2, [pc, #20]	; (20001488 <get_speed+0x40>)
20001472:	1058      	asrs	r0, r3, #1
20001474:	fb02 f000 	mul.w	r0, r2, r0
20001478:	bc30      	pop	{r4, r5}
2000147a:	680a      	ldr	r2, [r1, #0]
2000147c:	1300      	asrs	r0, r0, #12
2000147e:	4413      	add	r3, r2
20001480:	600b      	str	r3, [r1, #0]
20001482:	4770      	bx	lr
20001484:	20002ea4 	.word	0x20002ea4
20001488:	0002ae7c 	.word	0x0002ae7c

2000148c <rfilter1>:
2000148c:	b470      	push	{r4, r5, r6}
2000148e:	f240 74c6 	movw	r4, #1990	; 0x7c6
20001492:	4b0e      	ldr	r3, [pc, #56]	; (200014cc <rfilter1+0x40>)
20001494:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20001498:	68de      	ldr	r6, [r3, #12]
2000149a:	6959      	ldr	r1, [r3, #20]
2000149c:	fb04 f406 	mul.w	r4, r4, r6
200014a0:	fb02 4201 	mla	r2, r2, r1, r4
200014a4:	490a      	ldr	r1, [pc, #40]	; (200014d0 <rfilter1+0x44>)
200014a6:	691d      	ldr	r5, [r3, #16]
200014a8:	fb01 2200 	mla	r2, r1, r0, r2
200014ac:	4c09      	ldr	r4, [pc, #36]	; (200014d4 <rfilter1+0x48>)
200014ae:	6999      	ldr	r1, [r3, #24]
200014b0:	fb04 2205 	mla	r2, r4, r5, r2
200014b4:	4c08      	ldr	r4, [pc, #32]	; (200014d8 <rfilter1+0x4c>)
200014b6:	615e      	str	r6, [r3, #20]
200014b8:	fb04 2201 	mla	r2, r4, r1, r2
200014bc:	1291      	asrs	r1, r2, #10
200014be:	6118      	str	r0, [r3, #16]
200014c0:	619d      	str	r5, [r3, #24]
200014c2:	1490      	asrs	r0, r2, #18
200014c4:	60d9      	str	r1, [r3, #12]
200014c6:	bc70      	pop	{r4, r5, r6}
200014c8:	4770      	bx	lr
200014ca:	bf00      	nop
200014cc:	20002ea4 	.word	0x20002ea4
200014d0:	0003f0a4 	.word	0x0003f0a4
200014d4:	fff83a2e 	.word	0xfff83a2e
200014d8:	0003dc29 	.word	0x0003dc29

200014dc <rfilter2>:
200014dc:	b470      	push	{r4, r5, r6}
200014de:	f240 748a 	movw	r4, #1930	; 0x78a
200014e2:	4b0d      	ldr	r3, [pc, #52]	; (20001518 <rfilter2+0x3c>)
200014e4:	4a0d      	ldr	r2, [pc, #52]	; (2000151c <rfilter2+0x40>)
200014e6:	69de      	ldr	r6, [r3, #28]
200014e8:	6a59      	ldr	r1, [r3, #36]	; 0x24
200014ea:	fb04 f406 	mul.w	r4, r4, r6
200014ee:	fb02 4201 	mla	r2, r2, r1, r4
200014f2:	490b      	ldr	r1, [pc, #44]	; (20001520 <rfilter2+0x44>)
200014f4:	6a1d      	ldr	r5, [r3, #32]
200014f6:	fb01 2200 	mla	r2, r1, r0, r2
200014fa:	4c0a      	ldr	r4, [pc, #40]	; (20001524 <rfilter2+0x48>)
200014fc:	6a99      	ldr	r1, [r3, #40]	; 0x28
200014fe:	fb04 2205 	mla	r2, r4, r5, r2
20001502:	4c09      	ldr	r4, [pc, #36]	; (20001528 <rfilter2+0x4c>)
20001504:	625e      	str	r6, [r3, #36]	; 0x24
20001506:	fb04 2201 	mla	r2, r4, r1, r2
2000150a:	1291      	asrs	r1, r2, #10
2000150c:	6218      	str	r0, [r3, #32]
2000150e:	629d      	str	r5, [r3, #40]	; 0x28
20001510:	1490      	asrs	r0, r2, #18
20001512:	61d9      	str	r1, [r3, #28]
20001514:	bc70      	pop	{r4, r5, r6}
20001516:	4770      	bx	lr
20001518:	20002ea4 	.word	0x20002ea4
2000151c:	fffffc66 	.word	0xfffffc66
20001520:	0003e3d7 	.word	0x0003e3d7
20001524:	fff8767b 	.word	0xfff8767b
20001528:	0003b5c3 	.word	0x0003b5c3

2000152c <adc_init>:
2000152c:	b480      	push	{r7}
2000152e:	af00      	add	r7, sp, #0
20001530:	4a10      	ldr	r2, [pc, #64]	; (20001574 <adc_init+0x48>)
20001532:	4b10      	ldr	r3, [pc, #64]	; (20001574 <adc_init+0x48>)
20001534:	69db      	ldr	r3, [r3, #28]
20001536:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
2000153a:	61d3      	str	r3, [r2, #28]
2000153c:	4b0d      	ldr	r3, [pc, #52]	; (20001574 <adc_init+0x48>)
2000153e:	f242 0220 	movw	r2, #8224	; 0x2020
20001542:	615a      	str	r2, [r3, #20]
20001544:	4b0c      	ldr	r3, [pc, #48]	; (20001578 <adc_init+0x4c>)
20001546:	2200      	movs	r2, #0
20001548:	601a      	str	r2, [r3, #0]
2000154a:	4a0b      	ldr	r2, [pc, #44]	; (20001578 <adc_init+0x4c>)
2000154c:	4b0a      	ldr	r3, [pc, #40]	; (20001578 <adc_init+0x4c>)
2000154e:	681b      	ldr	r3, [r3, #0]
20001550:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20001554:	f043 0301 	orr.w	r3, r3, #1
20001558:	6013      	str	r3, [r2, #0]
2000155a:	4a07      	ldr	r2, [pc, #28]	; (20001578 <adc_init+0x4c>)
2000155c:	4b06      	ldr	r3, [pc, #24]	; (20001578 <adc_init+0x4c>)
2000155e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001560:	f443 73f0 	orr.w	r3, r3, #480	; 0x1e0
20001564:	6293      	str	r3, [r2, #40]	; 0x28
20001566:	4b04      	ldr	r3, [pc, #16]	; (20001578 <adc_init+0x4c>)
20001568:	2210      	movs	r2, #16
2000156a:	621a      	str	r2, [r3, #32]
2000156c:	bf00      	nop
2000156e:	46bd      	mov	sp, r7
20001570:	bc80      	pop	{r7}
20001572:	4770      	bx	lr
20001574:	40020000 	.word	0x40020000
20001578:	40088000 	.word	0x40088000

2000157c <dma_init>:
2000157c:	b480      	push	{r7}
2000157e:	af00      	add	r7, sp, #0
20001580:	4a17      	ldr	r2, [pc, #92]	; (200015e0 <dma_init+0x64>)
20001582:	4b17      	ldr	r3, [pc, #92]	; (200015e0 <dma_init+0x64>)
20001584:	69db      	ldr	r3, [r3, #28]
20001586:	f043 0320 	orr.w	r3, r3, #32
2000158a:	61d3      	str	r3, [r2, #28]
2000158c:	4b15      	ldr	r3, [pc, #84]	; (200015e4 <dma_init+0x68>)
2000158e:	4a16      	ldr	r2, [pc, #88]	; (200015e8 <dma_init+0x6c>)
20001590:	609a      	str	r2, [r3, #8]
20001592:	4b14      	ldr	r3, [pc, #80]	; (200015e4 <dma_init+0x68>)
20001594:	f04f 32ff 	mov.w	r2, #4294967295
20001598:	62da      	str	r2, [r3, #44]	; 0x2c
2000159a:	4b12      	ldr	r3, [pc, #72]	; (200015e4 <dma_init+0x68>)
2000159c:	f04f 32ff 	mov.w	r2, #4294967295
200015a0:	621a      	str	r2, [r3, #32]
200015a2:	4b10      	ldr	r3, [pc, #64]	; (200015e4 <dma_init+0x68>)
200015a4:	f04f 32ff 	mov.w	r2, #4294967295
200015a8:	635a      	str	r2, [r3, #52]	; 0x34
200015aa:	4b0e      	ldr	r3, [pc, #56]	; (200015e4 <dma_init+0x68>)
200015ac:	f44f 7280 	mov.w	r2, #256	; 0x100
200015b0:	61da      	str	r2, [r3, #28]
200015b2:	4b0c      	ldr	r3, [pc, #48]	; (200015e4 <dma_init+0x68>)
200015b4:	f44f 7280 	mov.w	r2, #256	; 0x100
200015b8:	625a      	str	r2, [r3, #36]	; 0x24
200015ba:	4b0a      	ldr	r3, [pc, #40]	; (200015e4 <dma_init+0x68>)
200015bc:	2201      	movs	r2, #1
200015be:	605a      	str	r2, [r3, #4]
200015c0:	4b09      	ldr	r3, [pc, #36]	; (200015e8 <dma_init+0x6c>)
200015c2:	4a0a      	ldr	r2, [pc, #40]	; (200015ec <dma_init+0x70>)
200015c4:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
200015c8:	4a09      	ldr	r2, [pc, #36]	; (200015f0 <dma_init+0x74>)
200015ca:	4b07      	ldr	r3, [pc, #28]	; (200015e8 <dma_init+0x6c>)
200015cc:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
200015d0:	4b05      	ldr	r3, [pc, #20]	; (200015e8 <dma_init+0x6c>)
200015d2:	4a08      	ldr	r2, [pc, #32]	; (200015f4 <dma_init+0x78>)
200015d4:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
200015d8:	bf00      	nop
200015da:	46bd      	mov	sp, r7
200015dc:	bc80      	pop	{r7}
200015de:	4770      	bx	lr
200015e0:	40020000 	.word	0x40020000
200015e4:	40028000 	.word	0x40028000
200015e8:	20003400 	.word	0x20003400
200015ec:	40088018 	.word	0x40088018
200015f0:	2000360c 	.word	0x2000360c
200015f4:	ae000031 	.word	0xae000031

200015f8 <adc_dma_init>:
200015f8:	b580      	push	{r7, lr}
200015fa:	af00      	add	r7, sp, #0
200015fc:	f7ff ff96 	bl	2000152c <adc_init>
20001600:	f7ff ffbc 	bl	2000157c <dma_init>
20001604:	bf00      	nop
20001606:	bd80      	pop	{r7, pc}

20001608 <adc_dma_start>:
20001608:	b480      	push	{r7}
2000160a:	af00      	add	r7, sp, #0
2000160c:	4b07      	ldr	r3, [pc, #28]	; (2000162c <adc_dma_start+0x24>)
2000160e:	2200      	movs	r2, #0
20001610:	601a      	str	r2, [r3, #0]
20001612:	4b06      	ldr	r3, [pc, #24]	; (2000162c <adc_dma_start+0x24>)
20001614:	f240 220d 	movw	r2, #525	; 0x20d
20001618:	601a      	str	r2, [r3, #0]
2000161a:	4b05      	ldr	r3, [pc, #20]	; (20001630 <adc_dma_start+0x28>)
2000161c:	f44f 7280 	mov.w	r2, #256	; 0x100
20001620:	629a      	str	r2, [r3, #40]	; 0x28
20001622:	bf00      	nop
20001624:	46bd      	mov	sp, r7
20001626:	bc80      	pop	{r7}
20001628:	4770      	bx	lr
2000162a:	bf00      	nop
2000162c:	40088000 	.word	0x40088000
20001630:	40028000 	.word	0x40028000

20001634 <adc_dma_wait>:
20001634:	b480      	push	{r7}
20001636:	af00      	add	r7, sp, #0
20001638:	bf00      	nop
2000163a:	4b0a      	ldr	r3, [pc, #40]	; (20001664 <adc_dma_wait+0x30>)
2000163c:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20001640:	f003 0307 	and.w	r3, r3, #7
20001644:	2b00      	cmp	r3, #0
20001646:	d1f8      	bne.n	2000163a <adc_dma_wait+0x6>
20001648:	4a07      	ldr	r2, [pc, #28]	; (20001668 <adc_dma_wait+0x34>)
2000164a:	4b07      	ldr	r3, [pc, #28]	; (20001668 <adc_dma_wait+0x34>)
2000164c:	681b      	ldr	r3, [r3, #0]
2000164e:	f023 0308 	bic.w	r3, r3, #8
20001652:	6013      	str	r3, [r2, #0]
20001654:	4b03      	ldr	r3, [pc, #12]	; (20001664 <adc_dma_wait+0x30>)
20001656:	4a05      	ldr	r2, [pc, #20]	; (2000166c <adc_dma_wait+0x38>)
20001658:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
2000165c:	bf00      	nop
2000165e:	46bd      	mov	sp, r7
20001660:	bc80      	pop	{r7}
20001662:	4770      	bx	lr
20001664:	20003400 	.word	0x20003400
20001668:	40088000 	.word	0x40088000
2000166c:	ae000031 	.word	0xae000031

20001670 <NVIC_EnableIRQ>:
20001670:	b480      	push	{r7}
20001672:	b083      	sub	sp, #12
20001674:	af00      	add	r7, sp, #0
20001676:	4603      	mov	r3, r0
20001678:	71fb      	strb	r3, [r7, #7]
2000167a:	4908      	ldr	r1, [pc, #32]	; (2000169c <NVIC_EnableIRQ+0x2c>)
2000167c:	f997 3007 	ldrsb.w	r3, [r7, #7]
20001680:	095b      	lsrs	r3, r3, #5
20001682:	79fa      	ldrb	r2, [r7, #7]
20001684:	f002 021f 	and.w	r2, r2, #31
20001688:	2001      	movs	r0, #1
2000168a:	fa00 f202 	lsl.w	r2, r0, r2
2000168e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20001692:	bf00      	nop
20001694:	370c      	adds	r7, #12
20001696:	46bd      	mov	sp, r7
20001698:	bc80      	pop	{r7}
2000169a:	4770      	bx	lr
2000169c:	e000e100 	.word	0xe000e100

200016a0 <PortConfig>:
200016a0:	b480      	push	{r7}
200016a2:	af00      	add	r7, sp, #0
200016a4:	4a63      	ldr	r2, [pc, #396]	; (20001834 <PortConfig+0x194>)
200016a6:	4b63      	ldr	r3, [pc, #396]	; (20001834 <PortConfig+0x194>)
200016a8:	69db      	ldr	r3, [r3, #28]
200016aa:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
200016ae:	61d3      	str	r3, [r2, #28]
200016b0:	4b61      	ldr	r3, [pc, #388]	; (20001838 <PortConfig+0x198>)
200016b2:	2200      	movs	r2, #0
200016b4:	609a      	str	r2, [r3, #8]
200016b6:	4b60      	ldr	r3, [pc, #384]	; (20001838 <PortConfig+0x198>)
200016b8:	2200      	movs	r2, #0
200016ba:	601a      	str	r2, [r3, #0]
200016bc:	4a5e      	ldr	r2, [pc, #376]	; (20001838 <PortConfig+0x198>)
200016be:	4b5e      	ldr	r3, [pc, #376]	; (20001838 <PortConfig+0x198>)
200016c0:	685b      	ldr	r3, [r3, #4]
200016c2:	f043 0301 	orr.w	r3, r3, #1
200016c6:	6053      	str	r3, [r2, #4]
200016c8:	4a5b      	ldr	r2, [pc, #364]	; (20001838 <PortConfig+0x198>)
200016ca:	4b5b      	ldr	r3, [pc, #364]	; (20001838 <PortConfig+0x198>)
200016cc:	68db      	ldr	r3, [r3, #12]
200016ce:	f043 0301 	orr.w	r3, r3, #1
200016d2:	60d3      	str	r3, [r2, #12]
200016d4:	4a58      	ldr	r2, [pc, #352]	; (20001838 <PortConfig+0x198>)
200016d6:	4b58      	ldr	r3, [pc, #352]	; (20001838 <PortConfig+0x198>)
200016d8:	699b      	ldr	r3, [r3, #24]
200016da:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
200016de:	6193      	str	r3, [r2, #24]
200016e0:	4a55      	ldr	r2, [pc, #340]	; (20001838 <PortConfig+0x198>)
200016e2:	4b55      	ldr	r3, [pc, #340]	; (20001838 <PortConfig+0x198>)
200016e4:	685b      	ldr	r3, [r3, #4]
200016e6:	f023 0308 	bic.w	r3, r3, #8
200016ea:	6053      	str	r3, [r2, #4]
200016ec:	4a52      	ldr	r2, [pc, #328]	; (20001838 <PortConfig+0x198>)
200016ee:	4b52      	ldr	r3, [pc, #328]	; (20001838 <PortConfig+0x198>)
200016f0:	68db      	ldr	r3, [r3, #12]
200016f2:	f043 0308 	orr.w	r3, r3, #8
200016f6:	60d3      	str	r3, [r2, #12]
200016f8:	4b4f      	ldr	r3, [pc, #316]	; (20001838 <PortConfig+0x198>)
200016fa:	2280      	movs	r2, #128	; 0x80
200016fc:	609a      	str	r2, [r3, #8]
200016fe:	4a4d      	ldr	r2, [pc, #308]	; (20001834 <PortConfig+0x194>)
20001700:	4b4c      	ldr	r3, [pc, #304]	; (20001834 <PortConfig+0x194>)
20001702:	69db      	ldr	r3, [r3, #28]
20001704:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20001708:	61d3      	str	r3, [r2, #28]
2000170a:	4a4c      	ldr	r2, [pc, #304]	; (2000183c <PortConfig+0x19c>)
2000170c:	4b4b      	ldr	r3, [pc, #300]	; (2000183c <PortConfig+0x19c>)
2000170e:	689b      	ldr	r3, [r3, #8]
20001710:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20001714:	6093      	str	r3, [r2, #8]
20001716:	4a49      	ldr	r2, [pc, #292]	; (2000183c <PortConfig+0x19c>)
20001718:	4b48      	ldr	r3, [pc, #288]	; (2000183c <PortConfig+0x19c>)
2000171a:	689b      	ldr	r3, [r3, #8]
2000171c:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
20001720:	6093      	str	r3, [r2, #8]
20001722:	4a46      	ldr	r2, [pc, #280]	; (2000183c <PortConfig+0x19c>)
20001724:	4b45      	ldr	r3, [pc, #276]	; (2000183c <PortConfig+0x19c>)
20001726:	68db      	ldr	r3, [r3, #12]
20001728:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
2000172c:	60d3      	str	r3, [r2, #12]
2000172e:	4a43      	ldr	r2, [pc, #268]	; (2000183c <PortConfig+0x19c>)
20001730:	4b42      	ldr	r3, [pc, #264]	; (2000183c <PortConfig+0x19c>)
20001732:	699b      	ldr	r3, [r3, #24]
20001734:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
20001738:	6193      	str	r3, [r2, #24]
2000173a:	4a40      	ldr	r2, [pc, #256]	; (2000183c <PortConfig+0x19c>)
2000173c:	4b3f      	ldr	r3, [pc, #252]	; (2000183c <PortConfig+0x19c>)
2000173e:	685b      	ldr	r3, [r3, #4]
20001740:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20001744:	6053      	str	r3, [r2, #4]
20001746:	4a3d      	ldr	r2, [pc, #244]	; (2000183c <PortConfig+0x19c>)
20001748:	4b3c      	ldr	r3, [pc, #240]	; (2000183c <PortConfig+0x19c>)
2000174a:	685b      	ldr	r3, [r3, #4]
2000174c:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20001750:	6053      	str	r3, [r2, #4]
20001752:	4a3a      	ldr	r2, [pc, #232]	; (2000183c <PortConfig+0x19c>)
20001754:	4b39      	ldr	r3, [pc, #228]	; (2000183c <PortConfig+0x19c>)
20001756:	689b      	ldr	r3, [r3, #8]
20001758:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
2000175c:	6093      	str	r3, [r2, #8]
2000175e:	4a37      	ldr	r2, [pc, #220]	; (2000183c <PortConfig+0x19c>)
20001760:	4b36      	ldr	r3, [pc, #216]	; (2000183c <PortConfig+0x19c>)
20001762:	689b      	ldr	r3, [r3, #8]
20001764:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
20001768:	6093      	str	r3, [r2, #8]
2000176a:	4a34      	ldr	r2, [pc, #208]	; (2000183c <PortConfig+0x19c>)
2000176c:	4b33      	ldr	r3, [pc, #204]	; (2000183c <PortConfig+0x19c>)
2000176e:	68db      	ldr	r3, [r3, #12]
20001770:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001774:	60d3      	str	r3, [r2, #12]
20001776:	4a2f      	ldr	r2, [pc, #188]	; (20001834 <PortConfig+0x194>)
20001778:	4b2e      	ldr	r3, [pc, #184]	; (20001834 <PortConfig+0x194>)
2000177a:	69db      	ldr	r3, [r3, #28]
2000177c:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
20001780:	61d3      	str	r3, [r2, #28]
20001782:	4b2f      	ldr	r3, [pc, #188]	; (20001840 <PortConfig+0x1a0>)
20001784:	4a2f      	ldr	r2, [pc, #188]	; (20001844 <PortConfig+0x1a4>)
20001786:	609a      	str	r2, [r3, #8]
20001788:	4b2d      	ldr	r3, [pc, #180]	; (20001840 <PortConfig+0x1a0>)
2000178a:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000178e:	60da      	str	r2, [r3, #12]
20001790:	4b2b      	ldr	r3, [pc, #172]	; (20001840 <PortConfig+0x1a0>)
20001792:	f04f 32ff 	mov.w	r2, #4294967295
20001796:	619a      	str	r2, [r3, #24]
20001798:	4b29      	ldr	r3, [pc, #164]	; (20001840 <PortConfig+0x1a0>)
2000179a:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000179e:	605a      	str	r2, [r3, #4]
200017a0:	4a27      	ldr	r2, [pc, #156]	; (20001840 <PortConfig+0x1a0>)
200017a2:	4b27      	ldr	r3, [pc, #156]	; (20001840 <PortConfig+0x1a0>)
200017a4:	681b      	ldr	r3, [r3, #0]
200017a6:	f023 0303 	bic.w	r3, r3, #3
200017aa:	6013      	str	r3, [r2, #0]
200017ac:	4a24      	ldr	r2, [pc, #144]	; (20001840 <PortConfig+0x1a0>)
200017ae:	4b24      	ldr	r3, [pc, #144]	; (20001840 <PortConfig+0x1a0>)
200017b0:	681b      	ldr	r3, [r3, #0]
200017b2:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200017b6:	6013      	str	r3, [r2, #0]
200017b8:	4a1e      	ldr	r2, [pc, #120]	; (20001834 <PortConfig+0x194>)
200017ba:	4b1e      	ldr	r3, [pc, #120]	; (20001834 <PortConfig+0x194>)
200017bc:	69db      	ldr	r3, [r3, #28]
200017be:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
200017c2:	61d3      	str	r3, [r2, #28]
200017c4:	4b20      	ldr	r3, [pc, #128]	; (20001848 <PortConfig+0x1a8>)
200017c6:	2200      	movs	r2, #0
200017c8:	609a      	str	r2, [r3, #8]
200017ca:	4a1f      	ldr	r2, [pc, #124]	; (20001848 <PortConfig+0x1a8>)
200017cc:	4b1e      	ldr	r3, [pc, #120]	; (20001848 <PortConfig+0x1a8>)
200017ce:	685b      	ldr	r3, [r3, #4]
200017d0:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200017d4:	6053      	str	r3, [r2, #4]
200017d6:	4a1c      	ldr	r2, [pc, #112]	; (20001848 <PortConfig+0x1a8>)
200017d8:	4b1b      	ldr	r3, [pc, #108]	; (20001848 <PortConfig+0x1a8>)
200017da:	68db      	ldr	r3, [r3, #12]
200017dc:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200017e0:	60d3      	str	r3, [r2, #12]
200017e2:	4b19      	ldr	r3, [pc, #100]	; (20001848 <PortConfig+0x1a8>)
200017e4:	f04f 32ff 	mov.w	r2, #4294967295
200017e8:	619a      	str	r2, [r3, #24]
200017ea:	4a17      	ldr	r2, [pc, #92]	; (20001848 <PortConfig+0x1a8>)
200017ec:	4b16      	ldr	r3, [pc, #88]	; (20001848 <PortConfig+0x1a8>)
200017ee:	681b      	ldr	r3, [r3, #0]
200017f0:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
200017f4:	6013      	str	r3, [r2, #0]
200017f6:	4a0f      	ldr	r2, [pc, #60]	; (20001834 <PortConfig+0x194>)
200017f8:	4b0e      	ldr	r3, [pc, #56]	; (20001834 <PortConfig+0x194>)
200017fa:	69db      	ldr	r3, [r3, #28]
200017fc:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
20001800:	61d3      	str	r3, [r2, #28]
20001802:	4a12      	ldr	r2, [pc, #72]	; (2000184c <PortConfig+0x1ac>)
20001804:	4b11      	ldr	r3, [pc, #68]	; (2000184c <PortConfig+0x1ac>)
20001806:	68db      	ldr	r3, [r3, #12]
20001808:	f423 7300 	bic.w	r3, r3, #512	; 0x200
2000180c:	f023 0301 	bic.w	r3, r3, #1
20001810:	60d3      	str	r3, [r2, #12]
20001812:	4a08      	ldr	r2, [pc, #32]	; (20001834 <PortConfig+0x194>)
20001814:	4b07      	ldr	r3, [pc, #28]	; (20001834 <PortConfig+0x194>)
20001816:	69db      	ldr	r3, [r3, #28]
20001818:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
2000181c:	61d3      	str	r3, [r2, #28]
2000181e:	4a0c      	ldr	r2, [pc, #48]	; (20001850 <PortConfig+0x1b0>)
20001820:	4b0b      	ldr	r3, [pc, #44]	; (20001850 <PortConfig+0x1b0>)
20001822:	68db      	ldr	r3, [r3, #12]
20001824:	f423 7378 	bic.w	r3, r3, #992	; 0x3e0
20001828:	60d3      	str	r3, [r2, #12]
2000182a:	bf00      	nop
2000182c:	46bd      	mov	sp, r7
2000182e:	bc80      	pop	{r7}
20001830:	4770      	bx	lr
20001832:	bf00      	nop
20001834:	40020000 	.word	0x40020000
20001838:	400a8000 	.word	0x400a8000
2000183c:	400b0000 	.word	0x400b0000
20001840:	400b8000 	.word	0x400b8000
20001844:	000aaaa0 	.word	0x000aaaa0
20001848:	400e8000 	.word	0x400e8000
2000184c:	400c8000 	.word	0x400c8000
20001850:	400c0000 	.word	0x400c0000

20001854 <ClkConfig>:
20001854:	b480      	push	{r7}
20001856:	af00      	add	r7, sp, #0
20001858:	4a16      	ldr	r2, [pc, #88]	; (200018b4 <ClkConfig+0x60>)
2000185a:	4b16      	ldr	r3, [pc, #88]	; (200018b4 <ClkConfig+0x60>)
2000185c:	689b      	ldr	r3, [r3, #8]
2000185e:	f043 0301 	orr.w	r3, r3, #1
20001862:	6093      	str	r3, [r2, #8]
20001864:	bf00      	nop
20001866:	4b13      	ldr	r3, [pc, #76]	; (200018b4 <ClkConfig+0x60>)
20001868:	681b      	ldr	r3, [r3, #0]
2000186a:	f003 0304 	and.w	r3, r3, #4
2000186e:	2b00      	cmp	r3, #0
20001870:	d0f9      	beq.n	20001866 <ClkConfig+0x12>
20001872:	4b10      	ldr	r3, [pc, #64]	; (200018b4 <ClkConfig+0x60>)
20001874:	2206      	movs	r2, #6
20001876:	60da      	str	r2, [r3, #12]
20001878:	4b0e      	ldr	r3, [pc, #56]	; (200018b4 <ClkConfig+0x60>)
2000187a:	f640 1204 	movw	r2, #2308	; 0x904
2000187e:	605a      	str	r2, [r3, #4]
20001880:	bf00      	nop
20001882:	4b0c      	ldr	r3, [pc, #48]	; (200018b4 <ClkConfig+0x60>)
20001884:	681b      	ldr	r3, [r3, #0]
20001886:	f003 0302 	and.w	r3, r3, #2
2000188a:	2b00      	cmp	r3, #0
2000188c:	d0f9      	beq.n	20001882 <ClkConfig+0x2e>
2000188e:	4a09      	ldr	r2, [pc, #36]	; (200018b4 <ClkConfig+0x60>)
20001890:	4b08      	ldr	r3, [pc, #32]	; (200018b4 <ClkConfig+0x60>)
20001892:	68db      	ldr	r3, [r3, #12]
20001894:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001898:	60d3      	str	r3, [r2, #12]
2000189a:	4a07      	ldr	r2, [pc, #28]	; (200018b8 <ClkConfig+0x64>)
2000189c:	4b06      	ldr	r3, [pc, #24]	; (200018b8 <ClkConfig+0x64>)
2000189e:	681b      	ldr	r3, [r3, #0]
200018a0:	f043 0320 	orr.w	r3, r3, #32
200018a4:	6013      	str	r3, [r2, #0]
200018a6:	4b05      	ldr	r3, [pc, #20]	; (200018bc <ClkConfig+0x68>)
200018a8:	2200      	movs	r2, #0
200018aa:	601a      	str	r2, [r3, #0]
200018ac:	bf00      	nop
200018ae:	46bd      	mov	sp, r7
200018b0:	bc80      	pop	{r7}
200018b2:	4770      	bx	lr
200018b4:	40020000 	.word	0x40020000
200018b8:	40018000 	.word	0x40018000
200018bc:	20002f00 	.word	0x20002f00

200018c0 <TimerConfig>:
200018c0:	b580      	push	{r7, lr}
200018c2:	af00      	add	r7, sp, #0
200018c4:	4a99      	ldr	r2, [pc, #612]	; (20001b2c <TimerConfig+0x26c>)
200018c6:	4b99      	ldr	r3, [pc, #612]	; (20001b2c <TimerConfig+0x26c>)
200018c8:	69db      	ldr	r3, [r3, #28]
200018ca:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
200018ce:	61d3      	str	r3, [r2, #28]
200018d0:	4a96      	ldr	r2, [pc, #600]	; (20001b2c <TimerConfig+0x26c>)
200018d2:	4b96      	ldr	r3, [pc, #600]	; (20001b2c <TimerConfig+0x26c>)
200018d4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200018d6:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
200018da:	6253      	str	r3, [r2, #36]	; 0x24
200018dc:	4a93      	ldr	r2, [pc, #588]	; (20001b2c <TimerConfig+0x26c>)
200018de:	4b93      	ldr	r3, [pc, #588]	; (20001b2c <TimerConfig+0x26c>)
200018e0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200018e2:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
200018e6:	6253      	str	r3, [r2, #36]	; 0x24
200018e8:	4b91      	ldr	r3, [pc, #580]	; (20001b30 <TimerConfig+0x270>)
200018ea:	2200      	movs	r2, #0
200018ec:	601a      	str	r2, [r3, #0]
200018ee:	4b90      	ldr	r3, [pc, #576]	; (20001b30 <TimerConfig+0x270>)
200018f0:	224f      	movs	r2, #79	; 0x4f
200018f2:	605a      	str	r2, [r3, #4]
200018f4:	4b8e      	ldr	r3, [pc, #568]	; (20001b30 <TimerConfig+0x270>)
200018f6:	f240 32e7 	movw	r2, #999	; 0x3e7
200018fa:	609a      	str	r2, [r3, #8]
200018fc:	4a8c      	ldr	r2, [pc, #560]	; (20001b30 <TimerConfig+0x270>)
200018fe:	4b8c      	ldr	r3, [pc, #560]	; (20001b30 <TimerConfig+0x270>)
20001900:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001902:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
20001906:	6253      	str	r3, [r2, #36]	; 0x24
20001908:	4a89      	ldr	r2, [pc, #548]	; (20001b30 <TimerConfig+0x270>)
2000190a:	4b89      	ldr	r3, [pc, #548]	; (20001b30 <TimerConfig+0x270>)
2000190c:	6d9b      	ldr	r3, [r3, #88]	; 0x58
2000190e:	f043 0302 	orr.w	r3, r3, #2
20001912:	6593      	str	r3, [r2, #88]	; 0x58
20001914:	4b86      	ldr	r3, [pc, #536]	; (20001b30 <TimerConfig+0x270>)
20001916:	2201      	movs	r2, #1
20001918:	60da      	str	r2, [r3, #12]
2000191a:	4a84      	ldr	r2, [pc, #528]	; (20001b2c <TimerConfig+0x26c>)
2000191c:	4b83      	ldr	r3, [pc, #524]	; (20001b2c <TimerConfig+0x26c>)
2000191e:	69db      	ldr	r3, [r3, #28]
20001920:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
20001924:	61d3      	str	r3, [r2, #28]
20001926:	4a81      	ldr	r2, [pc, #516]	; (20001b2c <TimerConfig+0x26c>)
20001928:	4b80      	ldr	r3, [pc, #512]	; (20001b2c <TimerConfig+0x26c>)
2000192a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000192c:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
20001930:	6253      	str	r3, [r2, #36]	; 0x24
20001932:	4a7e      	ldr	r2, [pc, #504]	; (20001b2c <TimerConfig+0x26c>)
20001934:	4b7d      	ldr	r3, [pc, #500]	; (20001b2c <TimerConfig+0x26c>)
20001936:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001938:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
2000193c:	6253      	str	r3, [r2, #36]	; 0x24
2000193e:	4b7d      	ldr	r3, [pc, #500]	; (20001b34 <TimerConfig+0x274>)
20001940:	2200      	movs	r2, #0
20001942:	601a      	str	r2, [r3, #0]
20001944:	4b7b      	ldr	r3, [pc, #492]	; (20001b34 <TimerConfig+0x274>)
20001946:	2202      	movs	r2, #2
20001948:	605a      	str	r2, [r3, #4]
2000194a:	4b7a      	ldr	r3, [pc, #488]	; (20001b34 <TimerConfig+0x274>)
2000194c:	f240 32ff 	movw	r2, #1023	; 0x3ff
20001950:	609a      	str	r2, [r3, #8]
20001952:	4b78      	ldr	r3, [pc, #480]	; (20001b34 <TimerConfig+0x274>)
20001954:	f44f 7200 	mov.w	r2, #512	; 0x200
20001958:	611a      	str	r2, [r3, #16]
2000195a:	4b76      	ldr	r3, [pc, #472]	; (20001b34 <TimerConfig+0x274>)
2000195c:	f44f 7200 	mov.w	r2, #512	; 0x200
20001960:	615a      	str	r2, [r3, #20]
20001962:	4b74      	ldr	r3, [pc, #464]	; (20001b34 <TimerConfig+0x274>)
20001964:	f44f 7200 	mov.w	r2, #512	; 0x200
20001968:	619a      	str	r2, [r3, #24]
2000196a:	4b72      	ldr	r3, [pc, #456]	; (20001b34 <TimerConfig+0x274>)
2000196c:	22c8      	movs	r2, #200	; 0xc8
2000196e:	61da      	str	r2, [r3, #28]
20001970:	4a70      	ldr	r2, [pc, #448]	; (20001b34 <TimerConfig+0x274>)
20001972:	4b70      	ldr	r3, [pc, #448]	; (20001b34 <TimerConfig+0x274>)
20001974:	6a1b      	ldr	r3, [r3, #32]
20001976:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
2000197a:	6213      	str	r3, [r2, #32]
2000197c:	4a6d      	ldr	r2, [pc, #436]	; (20001b34 <TimerConfig+0x274>)
2000197e:	4b6d      	ldr	r3, [pc, #436]	; (20001b34 <TimerConfig+0x274>)
20001980:	6a1b      	ldr	r3, [r3, #32]
20001982:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001986:	6213      	str	r3, [r2, #32]
20001988:	4a6a      	ldr	r2, [pc, #424]	; (20001b34 <TimerConfig+0x274>)
2000198a:	4b6a      	ldr	r3, [pc, #424]	; (20001b34 <TimerConfig+0x274>)
2000198c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000198e:	f023 030f 	bic.w	r3, r3, #15
20001992:	6313      	str	r3, [r2, #48]	; 0x30
20001994:	4a67      	ldr	r2, [pc, #412]	; (20001b34 <TimerConfig+0x274>)
20001996:	4b67      	ldr	r3, [pc, #412]	; (20001b34 <TimerConfig+0x274>)
20001998:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000199a:	f043 030c 	orr.w	r3, r3, #12
2000199e:	6313      	str	r3, [r2, #48]	; 0x30
200019a0:	4a64      	ldr	r2, [pc, #400]	; (20001b34 <TimerConfig+0x274>)
200019a2:	4b64      	ldr	r3, [pc, #400]	; (20001b34 <TimerConfig+0x274>)
200019a4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019a6:	f043 0301 	orr.w	r3, r3, #1
200019aa:	6313      	str	r3, [r2, #48]	; 0x30
200019ac:	4a61      	ldr	r2, [pc, #388]	; (20001b34 <TimerConfig+0x274>)
200019ae:	4b61      	ldr	r3, [pc, #388]	; (20001b34 <TimerConfig+0x274>)
200019b0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019b2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200019b6:	6313      	str	r3, [r2, #48]	; 0x30
200019b8:	4a5e      	ldr	r2, [pc, #376]	; (20001b34 <TimerConfig+0x274>)
200019ba:	4b5e      	ldr	r3, [pc, #376]	; (20001b34 <TimerConfig+0x274>)
200019bc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019be:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200019c2:	6313      	str	r3, [r2, #48]	; 0x30
200019c4:	4a5b      	ldr	r2, [pc, #364]	; (20001b34 <TimerConfig+0x274>)
200019c6:	4b5b      	ldr	r3, [pc, #364]	; (20001b34 <TimerConfig+0x274>)
200019c8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200019ca:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200019ce:	6313      	str	r3, [r2, #48]	; 0x30
200019d0:	4a58      	ldr	r2, [pc, #352]	; (20001b34 <TimerConfig+0x274>)
200019d2:	4b58      	ldr	r3, [pc, #352]	; (20001b34 <TimerConfig+0x274>)
200019d4:	6e1b      	ldr	r3, [r3, #96]	; 0x60
200019d6:	f043 0308 	orr.w	r3, r3, #8
200019da:	6613      	str	r3, [r2, #96]	; 0x60
200019dc:	4a55      	ldr	r2, [pc, #340]	; (20001b34 <TimerConfig+0x274>)
200019de:	4b55      	ldr	r3, [pc, #340]	; (20001b34 <TimerConfig+0x274>)
200019e0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200019e2:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200019e6:	6253      	str	r3, [r2, #36]	; 0x24
200019e8:	4a52      	ldr	r2, [pc, #328]	; (20001b34 <TimerConfig+0x274>)
200019ea:	4b52      	ldr	r3, [pc, #328]	; (20001b34 <TimerConfig+0x274>)
200019ec:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200019ee:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200019f2:	6253      	str	r3, [r2, #36]	; 0x24
200019f4:	4a4f      	ldr	r2, [pc, #316]	; (20001b34 <TimerConfig+0x274>)
200019f6:	4b4f      	ldr	r3, [pc, #316]	; (20001b34 <TimerConfig+0x274>)
200019f8:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200019fa:	f023 030f 	bic.w	r3, r3, #15
200019fe:	6353      	str	r3, [r2, #52]	; 0x34
20001a00:	4a4c      	ldr	r2, [pc, #304]	; (20001b34 <TimerConfig+0x274>)
20001a02:	4b4c      	ldr	r3, [pc, #304]	; (20001b34 <TimerConfig+0x274>)
20001a04:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a06:	f043 030c 	orr.w	r3, r3, #12
20001a0a:	6353      	str	r3, [r2, #52]	; 0x34
20001a0c:	4a49      	ldr	r2, [pc, #292]	; (20001b34 <TimerConfig+0x274>)
20001a0e:	4b49      	ldr	r3, [pc, #292]	; (20001b34 <TimerConfig+0x274>)
20001a10:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a12:	f043 0301 	orr.w	r3, r3, #1
20001a16:	6353      	str	r3, [r2, #52]	; 0x34
20001a18:	4a46      	ldr	r2, [pc, #280]	; (20001b34 <TimerConfig+0x274>)
20001a1a:	4b46      	ldr	r3, [pc, #280]	; (20001b34 <TimerConfig+0x274>)
20001a1c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a1e:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001a22:	6353      	str	r3, [r2, #52]	; 0x34
20001a24:	4a43      	ldr	r2, [pc, #268]	; (20001b34 <TimerConfig+0x274>)
20001a26:	4b43      	ldr	r3, [pc, #268]	; (20001b34 <TimerConfig+0x274>)
20001a28:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a2a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001a2e:	6353      	str	r3, [r2, #52]	; 0x34
20001a30:	4a40      	ldr	r2, [pc, #256]	; (20001b34 <TimerConfig+0x274>)
20001a32:	4b40      	ldr	r3, [pc, #256]	; (20001b34 <TimerConfig+0x274>)
20001a34:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001a36:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001a3a:	6353      	str	r3, [r2, #52]	; 0x34
20001a3c:	4a3d      	ldr	r2, [pc, #244]	; (20001b34 <TimerConfig+0x274>)
20001a3e:	4b3d      	ldr	r3, [pc, #244]	; (20001b34 <TimerConfig+0x274>)
20001a40:	6e5b      	ldr	r3, [r3, #100]	; 0x64
20001a42:	f043 0308 	orr.w	r3, r3, #8
20001a46:	6653      	str	r3, [r2, #100]	; 0x64
20001a48:	4a3a      	ldr	r2, [pc, #232]	; (20001b34 <TimerConfig+0x274>)
20001a4a:	4b3a      	ldr	r3, [pc, #232]	; (20001b34 <TimerConfig+0x274>)
20001a4c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001a4e:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001a52:	6293      	str	r3, [r2, #40]	; 0x28
20001a54:	4a37      	ldr	r2, [pc, #220]	; (20001b34 <TimerConfig+0x274>)
20001a56:	4b37      	ldr	r3, [pc, #220]	; (20001b34 <TimerConfig+0x274>)
20001a58:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001a5a:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001a5e:	6293      	str	r3, [r2, #40]	; 0x28
20001a60:	4a34      	ldr	r2, [pc, #208]	; (20001b34 <TimerConfig+0x274>)
20001a62:	4b34      	ldr	r3, [pc, #208]	; (20001b34 <TimerConfig+0x274>)
20001a64:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001a66:	f023 030f 	bic.w	r3, r3, #15
20001a6a:	6393      	str	r3, [r2, #56]	; 0x38
20001a6c:	4a31      	ldr	r2, [pc, #196]	; (20001b34 <TimerConfig+0x274>)
20001a6e:	4b31      	ldr	r3, [pc, #196]	; (20001b34 <TimerConfig+0x274>)
20001a70:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001a72:	f043 030c 	orr.w	r3, r3, #12
20001a76:	6393      	str	r3, [r2, #56]	; 0x38
20001a78:	4a2e      	ldr	r2, [pc, #184]	; (20001b34 <TimerConfig+0x274>)
20001a7a:	4b2e      	ldr	r3, [pc, #184]	; (20001b34 <TimerConfig+0x274>)
20001a7c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001a7e:	f043 0301 	orr.w	r3, r3, #1
20001a82:	6393      	str	r3, [r2, #56]	; 0x38
20001a84:	4a2b      	ldr	r2, [pc, #172]	; (20001b34 <TimerConfig+0x274>)
20001a86:	4b2b      	ldr	r3, [pc, #172]	; (20001b34 <TimerConfig+0x274>)
20001a88:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001a8a:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001a8e:	6393      	str	r3, [r2, #56]	; 0x38
20001a90:	4a28      	ldr	r2, [pc, #160]	; (20001b34 <TimerConfig+0x274>)
20001a92:	4b28      	ldr	r3, [pc, #160]	; (20001b34 <TimerConfig+0x274>)
20001a94:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001a96:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001a9a:	6393      	str	r3, [r2, #56]	; 0x38
20001a9c:	4a25      	ldr	r2, [pc, #148]	; (20001b34 <TimerConfig+0x274>)
20001a9e:	4b25      	ldr	r3, [pc, #148]	; (20001b34 <TimerConfig+0x274>)
20001aa0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001aa2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001aa6:	6393      	str	r3, [r2, #56]	; 0x38
20001aa8:	4a22      	ldr	r2, [pc, #136]	; (20001b34 <TimerConfig+0x274>)
20001aaa:	4b22      	ldr	r3, [pc, #136]	; (20001b34 <TimerConfig+0x274>)
20001aac:	6e9b      	ldr	r3, [r3, #104]	; 0x68
20001aae:	f043 0308 	orr.w	r3, r3, #8
20001ab2:	6693      	str	r3, [r2, #104]	; 0x68
20001ab4:	4a1f      	ldr	r2, [pc, #124]	; (20001b34 <TimerConfig+0x274>)
20001ab6:	4b1f      	ldr	r3, [pc, #124]	; (20001b34 <TimerConfig+0x274>)
20001ab8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001aba:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001abe:	62d3      	str	r3, [r2, #44]	; 0x2c
20001ac0:	4a1c      	ldr	r2, [pc, #112]	; (20001b34 <TimerConfig+0x274>)
20001ac2:	4b1c      	ldr	r3, [pc, #112]	; (20001b34 <TimerConfig+0x274>)
20001ac4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001ac6:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001aca:	62d3      	str	r3, [r2, #44]	; 0x2c
20001acc:	4a19      	ldr	r2, [pc, #100]	; (20001b34 <TimerConfig+0x274>)
20001ace:	4b19      	ldr	r3, [pc, #100]	; (20001b34 <TimerConfig+0x274>)
20001ad0:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001ad2:	f023 030f 	bic.w	r3, r3, #15
20001ad6:	63d3      	str	r3, [r2, #60]	; 0x3c
20001ad8:	4a16      	ldr	r2, [pc, #88]	; (20001b34 <TimerConfig+0x274>)
20001ada:	4b16      	ldr	r3, [pc, #88]	; (20001b34 <TimerConfig+0x274>)
20001adc:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001ade:	f043 030c 	orr.w	r3, r3, #12
20001ae2:	63d3      	str	r3, [r2, #60]	; 0x3c
20001ae4:	4a13      	ldr	r2, [pc, #76]	; (20001b34 <TimerConfig+0x274>)
20001ae6:	4b13      	ldr	r3, [pc, #76]	; (20001b34 <TimerConfig+0x274>)
20001ae8:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001aea:	f043 0301 	orr.w	r3, r3, #1
20001aee:	63d3      	str	r3, [r2, #60]	; 0x3c
20001af0:	4a10      	ldr	r2, [pc, #64]	; (20001b34 <TimerConfig+0x274>)
20001af2:	4b10      	ldr	r3, [pc, #64]	; (20001b34 <TimerConfig+0x274>)
20001af4:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001af6:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001afa:	63d3      	str	r3, [r2, #60]	; 0x3c
20001afc:	4a0d      	ldr	r2, [pc, #52]	; (20001b34 <TimerConfig+0x274>)
20001afe:	4b0d      	ldr	r3, [pc, #52]	; (20001b34 <TimerConfig+0x274>)
20001b00:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b02:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001b06:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b08:	4a0a      	ldr	r2, [pc, #40]	; (20001b34 <TimerConfig+0x274>)
20001b0a:	4b0a      	ldr	r3, [pc, #40]	; (20001b34 <TimerConfig+0x274>)
20001b0c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001b0e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001b12:	63d3      	str	r3, [r2, #60]	; 0x3c
20001b14:	4a07      	ldr	r2, [pc, #28]	; (20001b34 <TimerConfig+0x274>)
20001b16:	4b07      	ldr	r3, [pc, #28]	; (20001b34 <TimerConfig+0x274>)
20001b18:	6edb      	ldr	r3, [r3, #108]	; 0x6c
20001b1a:	f043 0308 	orr.w	r3, r3, #8
20001b1e:	66d3      	str	r3, [r2, #108]	; 0x6c
20001b20:	4a04      	ldr	r2, [pc, #16]	; (20001b34 <TimerConfig+0x274>)
20001b22:	4b04      	ldr	r3, [pc, #16]	; (20001b34 <TimerConfig+0x274>)
20001b24:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001b26:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001b2a:	e005      	b.n	20001b38 <TimerConfig+0x278>
20001b2c:	40020000 	.word	0x40020000
20001b30:	40070000 	.word	0x40070000
20001b34:	40080000 	.word	0x40080000
20001b38:	6413      	str	r3, [r2, #64]	; 0x40
20001b3a:	4a10      	ldr	r2, [pc, #64]	; (20001b7c <TimerConfig+0x2bc>)
20001b3c:	4b0f      	ldr	r3, [pc, #60]	; (20001b7c <TimerConfig+0x2bc>)
20001b3e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
20001b40:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001b44:	6453      	str	r3, [r2, #68]	; 0x44
20001b46:	4a0d      	ldr	r2, [pc, #52]	; (20001b7c <TimerConfig+0x2bc>)
20001b48:	4b0c      	ldr	r3, [pc, #48]	; (20001b7c <TimerConfig+0x2bc>)
20001b4a:	6c9b      	ldr	r3, [r3, #72]	; 0x48
20001b4c:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001b50:	6493      	str	r3, [r2, #72]	; 0x48
20001b52:	4a0a      	ldr	r2, [pc, #40]	; (20001b7c <TimerConfig+0x2bc>)
20001b54:	4b09      	ldr	r3, [pc, #36]	; (20001b7c <TimerConfig+0x2bc>)
20001b56:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
20001b58:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001b5c:	64d3      	str	r3, [r2, #76]	; 0x4c
20001b5e:	4a07      	ldr	r2, [pc, #28]	; (20001b7c <TimerConfig+0x2bc>)
20001b60:	4b06      	ldr	r3, [pc, #24]	; (20001b7c <TimerConfig+0x2bc>)
20001b62:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001b64:	f043 0302 	orr.w	r3, r3, #2
20001b68:	6593      	str	r3, [r2, #88]	; 0x58
20001b6a:	2010      	movs	r0, #16
20001b6c:	f7ff fd80 	bl	20001670 <NVIC_EnableIRQ>
20001b70:	4b02      	ldr	r3, [pc, #8]	; (20001b7c <TimerConfig+0x2bc>)
20001b72:	2201      	movs	r2, #1
20001b74:	60da      	str	r2, [r3, #12]
20001b76:	bf00      	nop
20001b78:	bd80      	pop	{r7, pc}
20001b7a:	bf00      	nop
20001b7c:	40080000 	.word	0x40080000

20001b80 <set_ram_vt>:
20001b80:	b480      	push	{r7}
20001b82:	b085      	sub	sp, #20
20001b84:	af00      	add	r7, sp, #0
20001b86:	2300      	movs	r3, #0
20001b88:	60fb      	str	r3, [r7, #12]
20001b8a:	2300      	movs	r3, #0
20001b8c:	607b      	str	r3, [r7, #4]
20001b8e:	4b16      	ldr	r3, [pc, #88]	; (20001be8 <set_ram_vt+0x68>)
20001b90:	60bb      	str	r3, [r7, #8]
20001b92:	2300      	movs	r3, #0
20001b94:	60fb      	str	r3, [r7, #12]
20001b96:	e00b      	b.n	20001bb0 <set_ram_vt+0x30>
20001b98:	68bb      	ldr	r3, [r7, #8]
20001b9a:	1d1a      	adds	r2, r3, #4
20001b9c:	60ba      	str	r2, [r7, #8]
20001b9e:	68fa      	ldr	r2, [r7, #12]
20001ba0:	0092      	lsls	r2, r2, #2
20001ba2:	6879      	ldr	r1, [r7, #4]
20001ba4:	440a      	add	r2, r1
20001ba6:	6812      	ldr	r2, [r2, #0]
20001ba8:	601a      	str	r2, [r3, #0]
20001baa:	68fb      	ldr	r3, [r7, #12]
20001bac:	3301      	adds	r3, #1
20001bae:	60fb      	str	r3, [r7, #12]
20001bb0:	68fb      	ldr	r3, [r7, #12]
20001bb2:	2b2f      	cmp	r3, #47	; 0x2f
20001bb4:	d9f0      	bls.n	20001b98 <set_ram_vt+0x18>
20001bb6:	4b0d      	ldr	r3, [pc, #52]	; (20001bec <set_ram_vt+0x6c>)
20001bb8:	4a0b      	ldr	r2, [pc, #44]	; (20001be8 <set_ram_vt+0x68>)
20001bba:	609a      	str	r2, [r3, #8]
20001bbc:	4b0a      	ldr	r3, [pc, #40]	; (20001be8 <set_ram_vt+0x68>)
20001bbe:	4a0c      	ldr	r2, [pc, #48]	; (20001bf0 <set_ram_vt+0x70>)
20001bc0:	63da      	str	r2, [r3, #60]	; 0x3c
20001bc2:	4b09      	ldr	r3, [pc, #36]	; (20001be8 <set_ram_vt+0x68>)
20001bc4:	4a0b      	ldr	r2, [pc, #44]	; (20001bf4 <set_ram_vt+0x74>)
20001bc6:	659a      	str	r2, [r3, #88]	; 0x58
20001bc8:	4b07      	ldr	r3, [pc, #28]	; (20001be8 <set_ram_vt+0x68>)
20001bca:	4a0b      	ldr	r2, [pc, #44]	; (20001bf8 <set_ram_vt+0x78>)
20001bcc:	679a      	str	r2, [r3, #120]	; 0x78
20001bce:	4b06      	ldr	r3, [pc, #24]	; (20001be8 <set_ram_vt+0x68>)
20001bd0:	4a0a      	ldr	r2, [pc, #40]	; (20001bfc <set_ram_vt+0x7c>)
20001bd2:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20001bd6:	4b04      	ldr	r3, [pc, #16]	; (20001be8 <set_ram_vt+0x68>)
20001bd8:	4a09      	ldr	r2, [pc, #36]	; (20001c00 <set_ram_vt+0x80>)
20001bda:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001bde:	bf00      	nop
20001be0:	3714      	adds	r7, #20
20001be2:	46bd      	mov	sp, r7
20001be4:	bc80      	pop	{r7}
20001be6:	4770      	bx	lr
20001be8:	20003000 	.word	0x20003000
20001bec:	e000ed00 	.word	0xe000ed00
20001bf0:	20001cbd 	.word	0x20001cbd
20001bf4:	20001cd9 	.word	0x20001cd9
20001bf8:	200005a9 	.word	0x200005a9
20001bfc:	200005c1 	.word	0x200005c1
20001c00:	20000595 	.word	0x20000595

20001c04 <uart_init>:
20001c04:	b480      	push	{r7}
20001c06:	af00      	add	r7, sp, #0
20001c08:	4b22      	ldr	r3, [pc, #136]	; (20001c94 <uart_init+0x90>)
20001c0a:	2200      	movs	r2, #0
20001c0c:	601a      	str	r2, [r3, #0]
20001c0e:	4a22      	ldr	r2, [pc, #136]	; (20001c98 <uart_init+0x94>)
20001c10:	4b21      	ldr	r3, [pc, #132]	; (20001c98 <uart_init+0x94>)
20001c12:	69db      	ldr	r3, [r3, #28]
20001c14:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001c18:	61d3      	str	r3, [r2, #28]
20001c1a:	4a1f      	ldr	r2, [pc, #124]	; (20001c98 <uart_init+0x94>)
20001c1c:	4b1e      	ldr	r3, [pc, #120]	; (20001c98 <uart_init+0x94>)
20001c1e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001c20:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001c24:	6293      	str	r3, [r2, #40]	; 0x28
20001c26:	4b1d      	ldr	r3, [pc, #116]	; (20001c9c <uart_init+0x98>)
20001c28:	2204      	movs	r2, #4
20001c2a:	625a      	str	r2, [r3, #36]	; 0x24
20001c2c:	4b1b      	ldr	r3, [pc, #108]	; (20001c9c <uart_init+0x98>)
20001c2e:	2200      	movs	r2, #0
20001c30:	629a      	str	r2, [r3, #40]	; 0x28
20001c32:	4a1a      	ldr	r2, [pc, #104]	; (20001c9c <uart_init+0x98>)
20001c34:	4b19      	ldr	r3, [pc, #100]	; (20001c9c <uart_init+0x98>)
20001c36:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001c38:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
20001c3c:	6353      	str	r3, [r2, #52]	; 0x34
20001c3e:	4a17      	ldr	r2, [pc, #92]	; (20001c9c <uart_init+0x98>)
20001c40:	4b16      	ldr	r3, [pc, #88]	; (20001c9c <uart_init+0x98>)
20001c42:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001c44:	f043 0312 	orr.w	r3, r3, #18
20001c48:	6353      	str	r3, [r2, #52]	; 0x34
20001c4a:	4a14      	ldr	r2, [pc, #80]	; (20001c9c <uart_init+0x98>)
20001c4c:	4b13      	ldr	r3, [pc, #76]	; (20001c9c <uart_init+0x98>)
20001c4e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001c50:	f043 0310 	orr.w	r3, r3, #16
20001c54:	62d3      	str	r3, [r2, #44]	; 0x2c
20001c56:	4a11      	ldr	r2, [pc, #68]	; (20001c9c <uart_init+0x98>)
20001c58:	4b10      	ldr	r3, [pc, #64]	; (20001c9c <uart_init+0x98>)
20001c5a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001c5c:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001c60:	62d3      	str	r3, [r2, #44]	; 0x2c
20001c62:	4a0e      	ldr	r2, [pc, #56]	; (20001c9c <uart_init+0x98>)
20001c64:	4b0d      	ldr	r3, [pc, #52]	; (20001c9c <uart_init+0x98>)
20001c66:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001c68:	f443 7340 	orr.w	r3, r3, #768	; 0x300
20001c6c:	f043 0301 	orr.w	r3, r3, #1
20001c70:	6313      	str	r3, [r2, #48]	; 0x30
20001c72:	4a0a      	ldr	r2, [pc, #40]	; (20001c9c <uart_init+0x98>)
20001c74:	4b09      	ldr	r3, [pc, #36]	; (20001c9c <uart_init+0x98>)
20001c76:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001c78:	f043 0310 	orr.w	r3, r3, #16
20001c7c:	6393      	str	r3, [r2, #56]	; 0x38
20001c7e:	4a07      	ldr	r2, [pc, #28]	; (20001c9c <uart_init+0x98>)
20001c80:	4b06      	ldr	r3, [pc, #24]	; (20001c9c <uart_init+0x98>)
20001c82:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001c84:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001c88:	6393      	str	r3, [r2, #56]	; 0x38
20001c8a:	bf00      	nop
20001c8c:	46bd      	mov	sp, r7
20001c8e:	bc80      	pop	{r7}
20001c90:	4770      	bx	lr
20001c92:	bf00      	nop
20001c94:	200030d0 	.word	0x200030d0
20001c98:	40020000 	.word	0x40020000
20001c9c:	40030000 	.word	0x40030000

20001ca0 <system_init>:
20001ca0:	b580      	push	{r7, lr}
20001ca2:	af00      	add	r7, sp, #0
20001ca4:	f7ff ff6c 	bl	20001b80 <set_ram_vt>
20001ca8:	f7ff fdd4 	bl	20001854 <ClkConfig>
20001cac:	f7ff fcf8 	bl	200016a0 <PortConfig>
20001cb0:	f7ff fe06 	bl	200018c0 <TimerConfig>
20001cb4:	f7ff ffa6 	bl	20001c04 <uart_init>
20001cb8:	bf00      	nop
20001cba:	bd80      	pop	{r7, pc}

20001cbc <SysTick_Handler>:
20001cbc:	b480      	push	{r7}
20001cbe:	af00      	add	r7, sp, #0
20001cc0:	4b04      	ldr	r3, [pc, #16]	; (20001cd4 <SysTick_Handler+0x18>)
20001cc2:	681b      	ldr	r3, [r3, #0]
20001cc4:	3301      	adds	r3, #1
20001cc6:	4a03      	ldr	r2, [pc, #12]	; (20001cd4 <SysTick_Handler+0x18>)
20001cc8:	6013      	str	r3, [r2, #0]
20001cca:	bf00      	nop
20001ccc:	46bd      	mov	sp, r7
20001cce:	bc80      	pop	{r7}
20001cd0:	4770      	bx	lr
20001cd2:	bf00      	nop
20001cd4:	20002f00 	.word	0x20002f00

20001cd8 <UART1_Handler>:
20001cd8:	b480      	push	{r7}
20001cda:	b083      	sub	sp, #12
20001cdc:	af00      	add	r7, sp, #0
20001cde:	4b1d      	ldr	r3, [pc, #116]	; (20001d54 <UART1_Handler+0x7c>)
20001ce0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001ce2:	f003 0310 	and.w	r3, r3, #16
20001ce6:	2b00      	cmp	r3, #0
20001ce8:	d01f      	beq.n	20001d2a <UART1_Handler+0x52>
20001cea:	e002      	b.n	20001cf2 <UART1_Handler+0x1a>
20001cec:	4b19      	ldr	r3, [pc, #100]	; (20001d54 <UART1_Handler+0x7c>)
20001cee:	681b      	ldr	r3, [r3, #0]
20001cf0:	71fb      	strb	r3, [r7, #7]
20001cf2:	4b18      	ldr	r3, [pc, #96]	; (20001d54 <UART1_Handler+0x7c>)
20001cf4:	699b      	ldr	r3, [r3, #24]
20001cf6:	f003 0310 	and.w	r3, r3, #16
20001cfa:	2b00      	cmp	r3, #0
20001cfc:	d0f6      	beq.n	20001cec <UART1_Handler+0x14>
20001cfe:	4b16      	ldr	r3, [pc, #88]	; (20001d58 <UART1_Handler+0x80>)
20001d00:	681b      	ldr	r3, [r3, #0]
20001d02:	80bb      	strh	r3, [r7, #4]
20001d04:	4b14      	ldr	r3, [pc, #80]	; (20001d58 <UART1_Handler+0x80>)
20001d06:	689b      	ldr	r3, [r3, #8]
20001d08:	085b      	lsrs	r3, r3, #1
20001d0a:	807b      	strh	r3, [r7, #2]
20001d0c:	88ba      	ldrh	r2, [r7, #4]
20001d0e:	887b      	ldrh	r3, [r7, #2]
20001d10:	429a      	cmp	r2, r3
20001d12:	d205      	bcs.n	20001d20 <UART1_Handler+0x48>
20001d14:	4a10      	ldr	r2, [pc, #64]	; (20001d58 <UART1_Handler+0x80>)
20001d16:	4b10      	ldr	r3, [pc, #64]	; (20001d58 <UART1_Handler+0x80>)
20001d18:	681b      	ldr	r3, [r3, #0]
20001d1a:	3b01      	subs	r3, #1
20001d1c:	6013      	str	r3, [r2, #0]
20001d1e:	e004      	b.n	20001d2a <UART1_Handler+0x52>
20001d20:	4a0d      	ldr	r2, [pc, #52]	; (20001d58 <UART1_Handler+0x80>)
20001d22:	4b0d      	ldr	r3, [pc, #52]	; (20001d58 <UART1_Handler+0x80>)
20001d24:	681b      	ldr	r3, [r3, #0]
20001d26:	3301      	adds	r3, #1
20001d28:	6013      	str	r3, [r2, #0]
20001d2a:	4b0a      	ldr	r3, [pc, #40]	; (20001d54 <UART1_Handler+0x7c>)
20001d2c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001d2e:	f003 0340 	and.w	r3, r3, #64	; 0x40
20001d32:	2b00      	cmp	r3, #0
20001d34:	d009      	beq.n	20001d4a <UART1_Handler+0x72>
20001d36:	e002      	b.n	20001d3e <UART1_Handler+0x66>
20001d38:	4b06      	ldr	r3, [pc, #24]	; (20001d54 <UART1_Handler+0x7c>)
20001d3a:	681b      	ldr	r3, [r3, #0]
20001d3c:	707b      	strb	r3, [r7, #1]
20001d3e:	4b05      	ldr	r3, [pc, #20]	; (20001d54 <UART1_Handler+0x7c>)
20001d40:	699b      	ldr	r3, [r3, #24]
20001d42:	f003 0310 	and.w	r3, r3, #16
20001d46:	2b00      	cmp	r3, #0
20001d48:	d0f6      	beq.n	20001d38 <UART1_Handler+0x60>
20001d4a:	bf00      	nop
20001d4c:	370c      	adds	r7, #12
20001d4e:	46bd      	mov	sp, r7
20001d50:	bc80      	pop	{r7}
20001d52:	4770      	bx	lr
20001d54:	40030000 	.word	0x40030000
20001d58:	40070000 	.word	0x40070000
