
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b580      	push	{r7, lr}
20000002:	b0a4      	sub	sp, #144	; 0x90
20000004:	af00      	add	r7, sp, #0
20000006:	2300      	movs	r3, #0
20000008:	67bb      	str	r3, [r7, #120]	; 0x78
2000000a:	2300      	movs	r3, #0
2000000c:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000010:	2300      	movs	r3, #0
20000012:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
20000016:	2300      	movs	r3, #0
20000018:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
2000001c:	2300      	movs	r3, #0
2000001e:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
20000022:	2300      	movs	r3, #0
20000024:	67fb      	str	r3, [r7, #124]	; 0x7c
20000026:	2300      	movs	r3, #0
20000028:	677b      	str	r3, [r7, #116]	; 0x74
2000002a:	2300      	movs	r3, #0
2000002c:	673b      	str	r3, [r7, #112]	; 0x70
2000002e:	f001 fabf 	bl	200015b0 <system_init>
20000032:	f000 f957 	bl	200002e4 <ssi_init>
20000036:	f000 f9c9 	bl	200003cc <dac_init>
2000003a:	f000 ffc5 	bl	20000fc8 <adc_dma_init>
2000003e:	f107 0344 	add.w	r3, r7, #68	; 0x44
20000042:	22c8      	movs	r2, #200	; 0xc8
20000044:	2150      	movs	r1, #80	; 0x50
20000046:	4618      	mov	r0, r3
20000048:	f000 fb04 	bl	20000654 <reg_init>
2000004c:	f107 0334 	add.w	r3, r7, #52	; 0x34
20000050:	22c8      	movs	r2, #200	; 0xc8
20000052:	2150      	movs	r1, #80	; 0x50
20000054:	4618      	mov	r0, r3
20000056:	f000 fafd 	bl	20000654 <reg_init>
2000005a:	f107 0324 	add.w	r3, r7, #36	; 0x24
2000005e:	f241 3288 	movw	r2, #5000	; 0x1388
20000062:	2100      	movs	r1, #0
20000064:	4618      	mov	r0, r3
20000066:	f000 faf5 	bl	20000654 <reg_init>
2000006a:	f107 0314 	add.w	r3, r7, #20
2000006e:	f241 7270 	movw	r2, #6000	; 0x1770
20000072:	2100      	movs	r1, #0
20000074:	4618      	mov	r0, r3
20000076:	f000 faed 	bl	20000654 <reg_init>
2000007a:	2300      	movs	r3, #0
2000007c:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
20000080:	2300      	movs	r3, #0
20000082:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
20000086:	4b82      	ldr	r3, [pc, #520]	; (20000290 <main+0x290>)
20000088:	2200      	movs	r2, #0
2000008a:	601a      	str	r2, [r3, #0]
2000008c:	2300      	movs	r3, #0
2000008e:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000092:	e024      	b.n	200000de <main+0xde>
20000094:	f000 ffb4 	bl	20001000 <adc_dma_wait>
20000098:	4b7e      	ldr	r3, [pc, #504]	; (20000294 <main+0x294>)
2000009a:	685b      	ldr	r3, [r3, #4]
2000009c:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000a0:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
200000a4:	4413      	add	r3, r2
200000a6:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
200000aa:	4b7a      	ldr	r3, [pc, #488]	; (20000294 <main+0x294>)
200000ac:	681b      	ldr	r3, [r3, #0]
200000ae:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000b2:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
200000b6:	4413      	add	r3, r2
200000b8:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
200000bc:	4b76      	ldr	r3, [pc, #472]	; (20000298 <main+0x298>)
200000be:	689b      	ldr	r3, [r3, #8]
200000c0:	4618      	mov	r0, r3
200000c2:	f000 f959 	bl	20000378 <enc_crc>
200000c6:	4602      	mov	r2, r0
200000c8:	4b71      	ldr	r3, [pc, #452]	; (20000290 <main+0x290>)
200000ca:	681b      	ldr	r3, [r3, #0]
200000cc:	4413      	add	r3, r2
200000ce:	461a      	mov	r2, r3
200000d0:	4b6f      	ldr	r3, [pc, #444]	; (20000290 <main+0x290>)
200000d2:	601a      	str	r2, [r3, #0]
200000d4:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
200000d8:	3301      	adds	r3, #1
200000da:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
200000de:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
200000e2:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
200000e6:	dbd5      	blt.n	20000094 <main+0x94>
200000e8:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
200000ec:	129b      	asrs	r3, r3, #10
200000ee:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
200000f2:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
200000f6:	129b      	asrs	r3, r3, #10
200000f8:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
200000fc:	4b64      	ldr	r3, [pc, #400]	; (20000290 <main+0x290>)
200000fe:	681b      	ldr	r3, [r3, #0]
20000100:	129b      	asrs	r3, r3, #10
20000102:	4a63      	ldr	r2, [pc, #396]	; (20000290 <main+0x290>)
20000104:	6013      	str	r3, [r2, #0]
20000106:	4b62      	ldr	r3, [pc, #392]	; (20000290 <main+0x290>)
20000108:	681b      	ldr	r3, [r3, #0]
2000010a:	4a64      	ldr	r2, [pc, #400]	; (2000029c <main+0x29c>)
2000010c:	6013      	str	r3, [r2, #0]
2000010e:	f000 ff77 	bl	20001000 <adc_dma_wait>
20000112:	4b60      	ldr	r3, [pc, #384]	; (20000294 <main+0x294>)
20000114:	685b      	ldr	r3, [r3, #4]
20000116:	f3c3 020b 	ubfx	r2, r3, #0, #12
2000011a:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
2000011e:	1ad3      	subs	r3, r2, r3
20000120:	66fb      	str	r3, [r7, #108]	; 0x6c
20000122:	4b5c      	ldr	r3, [pc, #368]	; (20000294 <main+0x294>)
20000124:	681b      	ldr	r3, [r3, #0]
20000126:	f3c3 020b 	ubfx	r2, r3, #0, #12
2000012a:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
2000012e:	1ad3      	subs	r3, r2, r3
20000130:	66bb      	str	r3, [r7, #104]	; 0x68
20000132:	6efa      	ldr	r2, [r7, #108]	; 0x6c
20000134:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20000136:	4413      	add	r3, r2
20000138:	667b      	str	r3, [r7, #100]	; 0x64
2000013a:	4b57      	ldr	r3, [pc, #348]	; (20000298 <main+0x298>)
2000013c:	689b      	ldr	r3, [r3, #8]
2000013e:	4618      	mov	r0, r3
20000140:	f000 f91a 	bl	20000378 <enc_crc>
20000144:	6638      	str	r0, [r7, #96]	; 0x60
20000146:	6e3b      	ldr	r3, [r7, #96]	; 0x60
20000148:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000014c:	673b      	str	r3, [r7, #112]	; 0x70
2000014e:	f000 fa0b 	bl	20000568 <update_position>
20000152:	4602      	mov	r2, r0
20000154:	4b4e      	ldr	r3, [pc, #312]	; (20000290 <main+0x290>)
20000156:	681b      	ldr	r3, [r3, #0]
20000158:	1ad3      	subs	r3, r2, r3
2000015a:	4a50      	ldr	r2, [pc, #320]	; (2000029c <main+0x29c>)
2000015c:	6013      	str	r3, [r2, #0]
2000015e:	4b50      	ldr	r3, [pc, #320]	; (200002a0 <main+0x2a0>)
20000160:	681b      	ldr	r3, [r3, #0]
20000162:	3301      	adds	r3, #1
20000164:	4a4e      	ldr	r2, [pc, #312]	; (200002a0 <main+0x2a0>)
20000166:	6013      	str	r3, [r2, #0]
20000168:	4b4e      	ldr	r3, [pc, #312]	; (200002a4 <main+0x2a4>)
2000016a:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2000016c:	f003 0302 	and.w	r3, r3, #2
20000170:	2b00      	cmp	r3, #0
20000172:	d046      	beq.n	20000202 <main+0x202>
20000174:	4b4b      	ldr	r3, [pc, #300]	; (200002a4 <main+0x2a4>)
20000176:	2200      	movs	r2, #0
20000178:	655a      	str	r2, [r3, #84]	; 0x54
2000017a:	4a4b      	ldr	r2, [pc, #300]	; (200002a8 <main+0x2a8>)
2000017c:	4b4a      	ldr	r3, [pc, #296]	; (200002a8 <main+0x2a8>)
2000017e:	681b      	ldr	r3, [r3, #0]
20000180:	f043 0301 	orr.w	r3, r3, #1
20000184:	6013      	str	r3, [r2, #0]
20000186:	6e3b      	ldr	r3, [r7, #96]	; 0x60
20000188:	4948      	ldr	r1, [pc, #288]	; (200002ac <main+0x2ac>)
2000018a:	4618      	mov	r0, r3
2000018c:	f000 fe20 	bl	20000dd0 <get_speed>
20000190:	65f8      	str	r0, [r7, #92]	; 0x5c
20000192:	4b3f      	ldr	r3, [pc, #252]	; (20000290 <main+0x290>)
20000194:	681a      	ldr	r2, [r3, #0]
20000196:	4b45      	ldr	r3, [pc, #276]	; (200002ac <main+0x2ac>)
20000198:	681b      	ldr	r3, [r3, #0]
2000019a:	1ad3      	subs	r3, r2, r3
2000019c:	119b      	asrs	r3, r3, #6
2000019e:	4618      	mov	r0, r3
200001a0:	f000 f994 	bl	200004cc <debug_signal>
200001a4:	4b3d      	ldr	r3, [pc, #244]	; (2000029c <main+0x29c>)
200001a6:	681a      	ldr	r2, [r3, #0]
200001a8:	4b40      	ldr	r3, [pc, #256]	; (200002ac <main+0x2ac>)
200001aa:	681b      	ldr	r3, [r3, #0]
200001ac:	1ad1      	subs	r1, r2, r3
200001ae:	f107 0314 	add.w	r3, r7, #20
200001b2:	2200      	movs	r2, #0
200001b4:	4618      	mov	r0, r3
200001b6:	f000 fa53 	bl	20000660 <reg_update>
200001ba:	6a3b      	ldr	r3, [r7, #32]
200001bc:	131b      	asrs	r3, r3, #12
200001be:	677b      	str	r3, [r7, #116]	; 0x74
200001c0:	6f7a      	ldr	r2, [r7, #116]	; 0x74
200001c2:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
200001c4:	1ad1      	subs	r1, r2, r3
200001c6:	f107 0324 	add.w	r3, r7, #36	; 0x24
200001ca:	2200      	movs	r2, #0
200001cc:	4618      	mov	r0, r3
200001ce:	f000 fa47 	bl	20000660 <reg_update>
200001d2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
200001d4:	131b      	asrs	r3, r3, #12
200001d6:	67fb      	str	r3, [r7, #124]	; 0x7c
200001d8:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
200001da:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
200001de:	dd02      	ble.n	200001e6 <main+0x1e6>
200001e0:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
200001e4:	67fb      	str	r3, [r7, #124]	; 0x7c
200001e6:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
200001e8:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
200001ec:	da01      	bge.n	200001f2 <main+0x1f2>
200001ee:	4b30      	ldr	r3, [pc, #192]	; (200002b0 <main+0x2b0>)
200001f0:	67fb      	str	r3, [r7, #124]	; 0x7c
200001f2:	f000 f97b 	bl	200004ec <update_telemetry>
200001f6:	4a2c      	ldr	r2, [pc, #176]	; (200002a8 <main+0x2a8>)
200001f8:	4b2b      	ldr	r3, [pc, #172]	; (200002a8 <main+0x2a8>)
200001fa:	681b      	ldr	r3, [r3, #0]
200001fc:	f023 0301 	bic.w	r3, r3, #1
20000200:	6013      	str	r3, [r2, #0]
20000202:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20000204:	f503 732f 	add.w	r3, r3, #700	; 0x2bc
20000208:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000020c:	673b      	str	r3, [r7, #112]	; 0x70
2000020e:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20000210:	603b      	str	r3, [r7, #0]
20000212:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20000214:	607b      	str	r3, [r7, #4]
20000216:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20000218:	60bb      	str	r3, [r7, #8]
2000021a:	6f3a      	ldr	r2, [r7, #112]	; 0x70
2000021c:	f107 010c 	add.w	r1, r7, #12
20000220:	463b      	mov	r3, r7
20000222:	4618      	mov	r0, r3
20000224:	f000 fa42 	bl	200006ac <abc_to_dq>
20000228:	68fb      	ldr	r3, [r7, #12]
2000022a:	425b      	negs	r3, r3
2000022c:	65bb      	str	r3, [r7, #88]	; 0x58
2000022e:	693b      	ldr	r3, [r7, #16]
20000230:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
20000232:	1ad3      	subs	r3, r2, r3
20000234:	657b      	str	r3, [r7, #84]	; 0x54
20000236:	f107 0344 	add.w	r3, r7, #68	; 0x44
2000023a:	f8d7 2080 	ldr.w	r2, [r7, #128]	; 0x80
2000023e:	6db9      	ldr	r1, [r7, #88]	; 0x58
20000240:	4618      	mov	r0, r3
20000242:	f000 fa0d 	bl	20000660 <reg_update>
20000246:	f107 0334 	add.w	r3, r7, #52	; 0x34
2000024a:	f8d7 2080 	ldr.w	r2, [r7, #128]	; 0x80
2000024e:	6d79      	ldr	r1, [r7, #84]	; 0x54
20000250:	4618      	mov	r0, r3
20000252:	f000 fa05 	bl	20000660 <reg_update>
20000256:	6d3b      	ldr	r3, [r7, #80]	; 0x50
20000258:	109b      	asrs	r3, r3, #2
2000025a:	60fb      	str	r3, [r7, #12]
2000025c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
2000025e:	109b      	asrs	r3, r3, #2
20000260:	613b      	str	r3, [r7, #16]
20000262:	6f3a      	ldr	r2, [r7, #112]	; 0x70
20000264:	f107 010c 	add.w	r1, r7, #12
20000268:	463b      	mov	r3, r7
2000026a:	4618      	mov	r0, r3
2000026c:	f000 fc36 	bl	20000adc <svpwm>
20000270:	f8c7 0080 	str.w	r0, [r7, #128]	; 0x80
20000274:	683b      	ldr	r3, [r7, #0]
20000276:	4618      	mov	r0, r3
20000278:	f000 f8f8 	bl	2000046c <pwm_seta>
2000027c:	687b      	ldr	r3, [r7, #4]
2000027e:	4618      	mov	r0, r3
20000280:	f000 f904 	bl	2000048c <pwm_setb>
20000284:	68bb      	ldr	r3, [r7, #8]
20000286:	4618      	mov	r0, r3
20000288:	f000 f910 	bl	200004ac <pwm_setc>
2000028c:	e73f      	b.n	2000010e <main+0x10e>
2000028e:	bf00      	nop
20000290:	2000270c 	.word	0x2000270c
20000294:	20002e00 	.word	0x20002e00
20000298:	40040000 	.word	0x40040000
2000029c:	20002700 	.word	0x20002700
200002a0:	20002714 	.word	0x20002714
200002a4:	40070000 	.word	0x40070000
200002a8:	400a8000 	.word	0x400a8000
200002ac:	20002720 	.word	0x20002720
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
200002e0:	20002800 	.word	0x20002800

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
200003c8:	2000272c 	.word	0x2000272c

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

20000410 <TIMER1_Handler>:
20000410:	b480      	push	{r7}
20000412:	af00      	add	r7, sp, #0
20000414:	bf00      	nop
20000416:	46bd      	mov	sp, r7
20000418:	bc80      	pop	{r7}
2000041a:	4770      	bx	lr

2000041c <TIMER3_Handler>:
2000041c:	b580      	push	{r7, lr}
2000041e:	af00      	add	r7, sp, #0
20000420:	4b04      	ldr	r3, [pc, #16]	; (20000434 <TIMER3_Handler+0x18>)
20000422:	2200      	movs	r2, #0
20000424:	655a      	str	r2, [r3, #84]	; 0x54
20000426:	f7ff ffe7 	bl	200003f8 <encoder_start>
2000042a:	f000 fdd5 	bl	20000fd8 <adc_dma_start>
2000042e:	bf00      	nop
20000430:	bd80      	pop	{r7, pc}
20000432:	bf00      	nop
20000434:	40080000 	.word	0x40080000

20000438 <get_phase>:
20000438:	b580      	push	{r7, lr}
2000043a:	af00      	add	r7, sp, #0
2000043c:	4b0a      	ldr	r3, [pc, #40]	; (20000468 <get_phase+0x30>)
2000043e:	f240 5255 	movw	r2, #1365	; 0x555
20000442:	609a      	str	r2, [r3, #8]
20000444:	bf00      	nop
20000446:	4b08      	ldr	r3, [pc, #32]	; (20000468 <get_phase+0x30>)
20000448:	68db      	ldr	r3, [r3, #12]
2000044a:	f003 0304 	and.w	r3, r3, #4
2000044e:	2b00      	cmp	r3, #0
20000450:	d0f9      	beq.n	20000446 <get_phase+0xe>
20000452:	4b05      	ldr	r3, [pc, #20]	; (20000468 <get_phase+0x30>)
20000454:	689b      	ldr	r3, [r3, #8]
20000456:	f3c3 030b 	ubfx	r3, r3, #0, #12
2000045a:	4618      	mov	r0, r3
2000045c:	f7ff ff72 	bl	20000344 <g2b>
20000460:	4603      	mov	r3, r0
20000462:	4618      	mov	r0, r3
20000464:	bd80      	pop	{r7, pc}
20000466:	bf00      	nop
20000468:	40040000 	.word	0x40040000

2000046c <pwm_seta>:
2000046c:	b480      	push	{r7}
2000046e:	b083      	sub	sp, #12
20000470:	af00      	add	r7, sp, #0
20000472:	6078      	str	r0, [r7, #4]
20000474:	4a04      	ldr	r2, [pc, #16]	; (20000488 <pwm_seta+0x1c>)
20000476:	687b      	ldr	r3, [r7, #4]
20000478:	f503 7300 	add.w	r3, r3, #512	; 0x200
2000047c:	6113      	str	r3, [r2, #16]
2000047e:	bf00      	nop
20000480:	370c      	adds	r7, #12
20000482:	46bd      	mov	sp, r7
20000484:	bc80      	pop	{r7}
20000486:	4770      	bx	lr
20000488:	40080000 	.word	0x40080000

2000048c <pwm_setb>:
2000048c:	b480      	push	{r7}
2000048e:	b083      	sub	sp, #12
20000490:	af00      	add	r7, sp, #0
20000492:	6078      	str	r0, [r7, #4]
20000494:	4a04      	ldr	r2, [pc, #16]	; (200004a8 <pwm_setb+0x1c>)
20000496:	687b      	ldr	r3, [r7, #4]
20000498:	f503 7300 	add.w	r3, r3, #512	; 0x200
2000049c:	6153      	str	r3, [r2, #20]
2000049e:	bf00      	nop
200004a0:	370c      	adds	r7, #12
200004a2:	46bd      	mov	sp, r7
200004a4:	bc80      	pop	{r7}
200004a6:	4770      	bx	lr
200004a8:	40080000 	.word	0x40080000

200004ac <pwm_setc>:
200004ac:	b480      	push	{r7}
200004ae:	b083      	sub	sp, #12
200004b0:	af00      	add	r7, sp, #0
200004b2:	6078      	str	r0, [r7, #4]
200004b4:	4a04      	ldr	r2, [pc, #16]	; (200004c8 <pwm_setc+0x1c>)
200004b6:	687b      	ldr	r3, [r7, #4]
200004b8:	f503 7300 	add.w	r3, r3, #512	; 0x200
200004bc:	6193      	str	r3, [r2, #24]
200004be:	bf00      	nop
200004c0:	370c      	adds	r7, #12
200004c2:	46bd      	mov	sp, r7
200004c4:	bc80      	pop	{r7}
200004c6:	4770      	bx	lr
200004c8:	40080000 	.word	0x40080000

200004cc <debug_signal>:
200004cc:	b480      	push	{r7}
200004ce:	b083      	sub	sp, #12
200004d0:	af00      	add	r7, sp, #0
200004d2:	6078      	str	r0, [r7, #4]
200004d4:	4a04      	ldr	r2, [pc, #16]	; (200004e8 <debug_signal+0x1c>)
200004d6:	687b      	ldr	r3, [r7, #4]
200004d8:	f503 6300 	add.w	r3, r3, #2048	; 0x800
200004dc:	6093      	str	r3, [r2, #8]
200004de:	bf00      	nop
200004e0:	370c      	adds	r7, #12
200004e2:	46bd      	mov	sp, r7
200004e4:	bc80      	pop	{r7}
200004e6:	4770      	bx	lr
200004e8:	40090000 	.word	0x40090000

200004ec <update_telemetry>:
200004ec:	b480      	push	{r7}
200004ee:	b083      	sub	sp, #12
200004f0:	af00      	add	r7, sp, #0
200004f2:	4b1b      	ldr	r3, [pc, #108]	; (20000560 <update_telemetry+0x74>)
200004f4:	607b      	str	r3, [r7, #4]
200004f6:	491b      	ldr	r1, [pc, #108]	; (20000564 <update_telemetry+0x78>)
200004f8:	687b      	ldr	r3, [r7, #4]
200004fa:	1c5a      	adds	r2, r3, #1
200004fc:	607a      	str	r2, [r7, #4]
200004fe:	781b      	ldrb	r3, [r3, #0]
20000500:	600b      	str	r3, [r1, #0]
20000502:	4918      	ldr	r1, [pc, #96]	; (20000564 <update_telemetry+0x78>)
20000504:	687b      	ldr	r3, [r7, #4]
20000506:	1c5a      	adds	r2, r3, #1
20000508:	607a      	str	r2, [r7, #4]
2000050a:	781b      	ldrb	r3, [r3, #0]
2000050c:	600b      	str	r3, [r1, #0]
2000050e:	4915      	ldr	r1, [pc, #84]	; (20000564 <update_telemetry+0x78>)
20000510:	687b      	ldr	r3, [r7, #4]
20000512:	1c5a      	adds	r2, r3, #1
20000514:	607a      	str	r2, [r7, #4]
20000516:	781b      	ldrb	r3, [r3, #0]
20000518:	600b      	str	r3, [r1, #0]
2000051a:	4912      	ldr	r1, [pc, #72]	; (20000564 <update_telemetry+0x78>)
2000051c:	687b      	ldr	r3, [r7, #4]
2000051e:	1c5a      	adds	r2, r3, #1
20000520:	607a      	str	r2, [r7, #4]
20000522:	781b      	ldrb	r3, [r3, #0]
20000524:	600b      	str	r3, [r1, #0]
20000526:	490f      	ldr	r1, [pc, #60]	; (20000564 <update_telemetry+0x78>)
20000528:	687b      	ldr	r3, [r7, #4]
2000052a:	1c5a      	adds	r2, r3, #1
2000052c:	607a      	str	r2, [r7, #4]
2000052e:	781b      	ldrb	r3, [r3, #0]
20000530:	600b      	str	r3, [r1, #0]
20000532:	490c      	ldr	r1, [pc, #48]	; (20000564 <update_telemetry+0x78>)
20000534:	687b      	ldr	r3, [r7, #4]
20000536:	1c5a      	adds	r2, r3, #1
20000538:	607a      	str	r2, [r7, #4]
2000053a:	781b      	ldrb	r3, [r3, #0]
2000053c:	600b      	str	r3, [r1, #0]
2000053e:	4909      	ldr	r1, [pc, #36]	; (20000564 <update_telemetry+0x78>)
20000540:	687b      	ldr	r3, [r7, #4]
20000542:	1c5a      	adds	r2, r3, #1
20000544:	607a      	str	r2, [r7, #4]
20000546:	781b      	ldrb	r3, [r3, #0]
20000548:	600b      	str	r3, [r1, #0]
2000054a:	4906      	ldr	r1, [pc, #24]	; (20000564 <update_telemetry+0x78>)
2000054c:	687b      	ldr	r3, [r7, #4]
2000054e:	1c5a      	adds	r2, r3, #1
20000550:	607a      	str	r2, [r7, #4]
20000552:	781b      	ldrb	r3, [r3, #0]
20000554:	600b      	str	r3, [r1, #0]
20000556:	bf00      	nop
20000558:	370c      	adds	r7, #12
2000055a:	46bd      	mov	sp, r7
2000055c:	bc80      	pop	{r7}
2000055e:	4770      	bx	lr
20000560:	20002724 	.word	0x20002724
20000564:	40030000 	.word	0x40030000

20000568 <update_position>:
20000568:	b480      	push	{r7}
2000056a:	b089      	sub	sp, #36	; 0x24
2000056c:	af00      	add	r7, sp, #0
2000056e:	4b2d      	ldr	r3, [pc, #180]	; (20000624 <update_position+0xbc>)
20000570:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000572:	f003 0310 	and.w	r3, r3, #16
20000576:	2b00      	cmp	r3, #0
20000578:	d03c      	beq.n	200005f4 <update_position+0x8c>
2000057a:	2300      	movs	r3, #0
2000057c:	61fb      	str	r3, [r7, #28]
2000057e:	e00c      	b.n	2000059a <update_position+0x32>
20000580:	4b28      	ldr	r3, [pc, #160]	; (20000624 <update_position+0xbc>)
20000582:	681b      	ldr	r3, [r3, #0]
20000584:	b2d9      	uxtb	r1, r3
20000586:	1d3a      	adds	r2, r7, #4
20000588:	69fb      	ldr	r3, [r7, #28]
2000058a:	4413      	add	r3, r2
2000058c:	460a      	mov	r2, r1
2000058e:	701a      	strb	r2, [r3, #0]
20000590:	69fb      	ldr	r3, [r7, #28]
20000592:	3301      	adds	r3, #1
20000594:	f003 030f 	and.w	r3, r3, #15
20000598:	61fb      	str	r3, [r7, #28]
2000059a:	4b22      	ldr	r3, [pc, #136]	; (20000624 <update_position+0xbc>)
2000059c:	699b      	ldr	r3, [r3, #24]
2000059e:	f003 0310 	and.w	r3, r3, #16
200005a2:	2b00      	cmp	r3, #0
200005a4:	d0ec      	beq.n	20000580 <update_position+0x18>
200005a6:	793b      	ldrb	r3, [r7, #4]
200005a8:	461a      	mov	r2, r3
200005aa:	797b      	ldrb	r3, [r7, #5]
200005ac:	021b      	lsls	r3, r3, #8
200005ae:	4413      	add	r3, r2
200005b0:	011b      	lsls	r3, r3, #4
200005b2:	837b      	strh	r3, [r7, #26]
200005b4:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200005b8:	111b      	asrs	r3, r3, #4
200005ba:	837b      	strh	r3, [r7, #26]
200005bc:	f9b7 301a 	ldrsh.w	r3, [r7, #26]
200005c0:	4a19      	ldr	r2, [pc, #100]	; (20000628 <update_position+0xc0>)
200005c2:	6013      	str	r3, [r2, #0]
200005c4:	4b19      	ldr	r3, [pc, #100]	; (2000062c <update_position+0xc4>)
200005c6:	681b      	ldr	r3, [r3, #0]
200005c8:	b29b      	uxth	r3, r3
200005ca:	f503 73be 	add.w	r3, r3, #380	; 0x17c
200005ce:	b29b      	uxth	r3, r3
200005d0:	f3c3 0309 	ubfx	r3, r3, #0, #10
200005d4:	833b      	strh	r3, [r7, #24]
200005d6:	8b3b      	ldrh	r3, [r7, #24]
200005d8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
200005dc:	d205      	bcs.n	200005ea <update_position+0x82>
200005de:	4a13      	ldr	r2, [pc, #76]	; (2000062c <update_position+0xc4>)
200005e0:	4b12      	ldr	r3, [pc, #72]	; (2000062c <update_position+0xc4>)
200005e2:	681b      	ldr	r3, [r3, #0]
200005e4:	3301      	adds	r3, #1
200005e6:	6013      	str	r3, [r2, #0]
200005e8:	e004      	b.n	200005f4 <update_position+0x8c>
200005ea:	4a10      	ldr	r2, [pc, #64]	; (2000062c <update_position+0xc4>)
200005ec:	4b0f      	ldr	r3, [pc, #60]	; (2000062c <update_position+0xc4>)
200005ee:	681b      	ldr	r3, [r3, #0]
200005f0:	3b01      	subs	r3, #1
200005f2:	6013      	str	r3, [r2, #0]
200005f4:	4b0b      	ldr	r3, [pc, #44]	; (20000624 <update_position+0xbc>)
200005f6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200005f8:	f003 0340 	and.w	r3, r3, #64	; 0x40
200005fc:	2b00      	cmp	r3, #0
200005fe:	d009      	beq.n	20000614 <update_position+0xac>
20000600:	e002      	b.n	20000608 <update_position+0xa0>
20000602:	4b08      	ldr	r3, [pc, #32]	; (20000624 <update_position+0xbc>)
20000604:	681b      	ldr	r3, [r3, #0]
20000606:	75fb      	strb	r3, [r7, #23]
20000608:	4b06      	ldr	r3, [pc, #24]	; (20000624 <update_position+0xbc>)
2000060a:	699b      	ldr	r3, [r3, #24]
2000060c:	f003 0310 	and.w	r3, r3, #16
20000610:	2b00      	cmp	r3, #0
20000612:	d0f6      	beq.n	20000602 <update_position+0x9a>
20000614:	4b04      	ldr	r3, [pc, #16]	; (20000628 <update_position+0xc0>)
20000616:	681b      	ldr	r3, [r3, #0]
20000618:	019b      	lsls	r3, r3, #6
2000061a:	4618      	mov	r0, r3
2000061c:	3724      	adds	r7, #36	; 0x24
2000061e:	46bd      	mov	sp, r7
20000620:	bc80      	pop	{r7}
20000622:	4770      	bx	lr
20000624:	40030000 	.word	0x40030000
20000628:	20002730 	.word	0x20002730
2000062c:	40070000 	.word	0x40070000

20000630 <mycos>:
20000630:	4b02      	ldr	r3, [pc, #8]	; (2000063c <mycos+0xc>)
20000632:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000636:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
2000063a:	4770      	bx	lr
2000063c:	200016ac 	.word	0x200016ac

20000640 <mysin>:
20000640:	4b03      	ldr	r3, [pc, #12]	; (20000650 <mysin+0x10>)
20000642:	f500 7040 	add.w	r0, r0, #768	; 0x300
20000646:	f3c0 0009 	ubfx	r0, r0, #0, #10
2000064a:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
2000064e:	4770      	bx	lr
20000650:	200016ac 	.word	0x200016ac

20000654 <reg_init>:
20000654:	2300      	movs	r3, #0
20000656:	e880 000e 	stmia.w	r0, {r1, r2, r3}
2000065a:	60c3      	str	r3, [r0, #12]
2000065c:	4770      	bx	lr
2000065e:	bf00      	nop

20000660 <reg_update>:
20000660:	6803      	ldr	r3, [r0, #0]
20000662:	b410      	push	{r4}
20000664:	fb03 f301 	mul.w	r3, r3, r1
20000668:	6884      	ldr	r4, [r0, #8]
2000066a:	b11a      	cbz	r2, 20000674 <reg_update+0x14>
2000066c:	2c00      	cmp	r4, #0
2000066e:	dd09      	ble.n	20000684 <reg_update+0x24>
20000670:	ea03 73e3 	and.w	r3, r3, r3, asr #31
20000674:	6842      	ldr	r2, [r0, #4]
20000676:	4423      	add	r3, r4
20000678:	fb02 3101 	mla	r1, r2, r1, r3
2000067c:	6083      	str	r3, [r0, #8]
2000067e:	60c1      	str	r1, [r0, #12]
20000680:	bc10      	pop	{r4}
20000682:	4770      	bx	lr
20000684:	bf18      	it	ne
20000686:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
2000068a:	e7f3      	b.n	20000674 <reg_update+0x14>

2000068c <dot3>:
2000068c:	b430      	push	{r4, r5}
2000068e:	684b      	ldr	r3, [r1, #4]
20000690:	6844      	ldr	r4, [r0, #4]
20000692:	6802      	ldr	r2, [r0, #0]
20000694:	fb03 f304 	mul.w	r3, r3, r4
20000698:	680d      	ldr	r5, [r1, #0]
2000069a:	6884      	ldr	r4, [r0, #8]
2000069c:	fb05 3302 	mla	r3, r5, r2, r3
200006a0:	6888      	ldr	r0, [r1, #8]
200006a2:	fb00 3004 	mla	r0, r0, r4, r3
200006a6:	bc30      	pop	{r4, r5}
200006a8:	4770      	bx	lr
200006aa:	bf00      	nop

200006ac <abc_to_dq>:
200006ac:	b4f0      	push	{r4, r5, r6, r7}
200006ae:	4c1d      	ldr	r4, [pc, #116]	; (20000724 <abc_to_dq+0x78>)
200006b0:	6803      	ldr	r3, [r0, #0]
200006b2:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
200006b6:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
200006ba:	fb03 f306 	mul.w	r3, r3, r6
200006be:	f3c5 0509 	ubfx	r5, r5, #0, #10
200006c2:	6847      	ldr	r7, [r0, #4]
200006c4:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200006c8:	f202 1655 	addw	r6, r2, #341	; 0x155
200006cc:	fb07 3305 	mla	r3, r7, r5, r3
200006d0:	f3c6 0509 	ubfx	r5, r6, #0, #10
200006d4:	6887      	ldr	r7, [r0, #8]
200006d6:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200006da:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
200006de:	fb07 3305 	mla	r3, r7, r5, r3
200006e2:	129b      	asrs	r3, r3, #10
200006e4:	600b      	str	r3, [r1, #0]
200006e6:	f3c6 0509 	ubfx	r5, r6, #0, #10
200006ea:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
200006ee:	6843      	ldr	r3, [r0, #4]
200006f0:	f502 7540 	add.w	r5, r2, #768	; 0x300
200006f4:	fb03 f306 	mul.w	r3, r3, r6
200006f8:	f3c5 0509 	ubfx	r5, r5, #0, #10
200006fc:	6806      	ldr	r6, [r0, #0]
200006fe:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000702:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000706:	fb06 3305 	mla	r3, r6, r5, r3
2000070a:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000070e:	6880      	ldr	r0, [r0, #8]
20000710:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
20000714:	bcf0      	pop	{r4, r5, r6, r7}
20000716:	fb00 3302 	mla	r3, r0, r2, r3
2000071a:	425b      	negs	r3, r3
2000071c:	129b      	asrs	r3, r3, #10
2000071e:	604b      	str	r3, [r1, #4]
20000720:	4770      	bx	lr
20000722:	bf00      	nop
20000724:	200016ac 	.word	0x200016ac

20000728 <dq_to_abc>:
20000728:	4b1d      	ldr	r3, [pc, #116]	; (200007a0 <dq_to_abc+0x78>)
2000072a:	b4f0      	push	{r4, r5, r6, r7}
2000072c:	680e      	ldr	r6, [r1, #0]
2000072e:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
20000732:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000736:	fb04 f406 	mul.w	r4, r4, r6
2000073a:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000073e:	684f      	ldr	r7, [r1, #4]
20000740:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000744:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000748:	fb07 4415 	mls	r4, r7, r5, r4
2000074c:	1524      	asrs	r4, r4, #20
2000074e:	6004      	str	r4, [r0, #0]
20000750:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000754:	680c      	ldr	r4, [r1, #0]
20000756:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
2000075a:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
2000075e:	fb04 f406 	mul.w	r4, r4, r6
20000762:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000766:	684f      	ldr	r7, [r1, #4]
20000768:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
2000076c:	f202 1655 	addw	r6, r2, #341	; 0x155
20000770:	fb07 4415 	mls	r4, r7, r5, r4
20000774:	1524      	asrs	r4, r4, #20
20000776:	6044      	str	r4, [r0, #4]
20000778:	f3c6 0509 	ubfx	r5, r6, #0, #10
2000077c:	680c      	ldr	r4, [r1, #0]
2000077e:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000782:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000786:	fb04 f405 	mul.w	r4, r4, r5
2000078a:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000078e:	6849      	ldr	r1, [r1, #4]
20000790:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
20000794:	fb01 4312 	mls	r3, r1, r2, r4
20000798:	bcf0      	pop	{r4, r5, r6, r7}
2000079a:	151b      	asrs	r3, r3, #20
2000079c:	6083      	str	r3, [r0, #8]
2000079e:	4770      	bx	lr
200007a0:	200016ac 	.word	0x200016ac

200007a4 <cord_atan>:
200007a4:	b5f0      	push	{r4, r5, r6, r7, lr}
200007a6:	b091      	sub	sp, #68	; 0x44
200007a8:	46ee      	mov	lr, sp
200007aa:	4684      	mov	ip, r0
200007ac:	4e56      	ldr	r6, [pc, #344]	; (20000908 <cord_atan+0x164>)
200007ae:	460d      	mov	r5, r1
200007b0:	4614      	mov	r4, r2
200007b2:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200007b4:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200007b8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200007bc:	af08      	add	r7, sp, #32
200007be:	3610      	adds	r6, #16
200007c0:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200007c4:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200007c6:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200007c8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200007cc:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200007d0:	f8dc 6000 	ldr.w	r6, [ip]
200007d4:	f8dc 3004 	ldr.w	r3, [ip, #4]
200007d8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200007dc:	2b00      	cmp	r3, #0
200007de:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200007e2:	9900      	ldr	r1, [sp, #0]
200007e4:	dd56      	ble.n	20000894 <cord_atan+0xf0>
200007e6:	18d0      	adds	r0, r2, r3
200007e8:	1a9b      	subs	r3, r3, r2
200007ea:	2b00      	cmp	r3, #0
200007ec:	d07a      	beq.n	200008e4 <cord_atan+0x140>
200007ee:	9f01      	ldr	r7, [sp, #4]
200007f0:	dd54      	ble.n	2000089c <cord_atan+0xf8>
200007f2:	eb00 0263 	add.w	r2, r0, r3, asr #1
200007f6:	4439      	add	r1, r7
200007f8:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200007fc:	2b00      	cmp	r3, #0
200007fe:	d073      	beq.n	200008e8 <cord_atan+0x144>
20000800:	9f02      	ldr	r7, [sp, #8]
20000802:	dd51      	ble.n	200008a8 <cord_atan+0x104>
20000804:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000808:	4439      	add	r1, r7
2000080a:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
2000080e:	2b00      	cmp	r3, #0
20000810:	d06d      	beq.n	200008ee <cord_atan+0x14a>
20000812:	9f03      	ldr	r7, [sp, #12]
20000814:	dd4e      	ble.n	200008b4 <cord_atan+0x110>
20000816:	eb00 02e3 	add.w	r2, r0, r3, asr #3
2000081a:	4439      	add	r1, r7
2000081c:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000820:	2b00      	cmp	r3, #0
20000822:	d066      	beq.n	200008f2 <cord_atan+0x14e>
20000824:	9f04      	ldr	r7, [sp, #16]
20000826:	dd4b      	ble.n	200008c0 <cord_atan+0x11c>
20000828:	eb02 1023 	add.w	r0, r2, r3, asr #4
2000082c:	4439      	add	r1, r7
2000082e:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000832:	2b00      	cmp	r3, #0
20000834:	d060      	beq.n	200008f8 <cord_atan+0x154>
20000836:	9f05      	ldr	r7, [sp, #20]
20000838:	dd48      	ble.n	200008cc <cord_atan+0x128>
2000083a:	eb00 1263 	add.w	r2, r0, r3, asr #5
2000083e:	4439      	add	r1, r7
20000840:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000844:	2b00      	cmp	r3, #0
20000846:	d059      	beq.n	200008fc <cord_atan+0x158>
20000848:	9f06      	ldr	r7, [sp, #24]
2000084a:	dd45      	ble.n	200008d8 <cord_atan+0x134>
2000084c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000850:	4439      	add	r1, r7
20000852:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000856:	2b00      	cmp	r3, #0
20000858:	d053      	beq.n	20000902 <cord_atan+0x15e>
2000085a:	9a07      	ldr	r2, [sp, #28]
2000085c:	bfc7      	ittee	gt
2000085e:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000862:	1889      	addgt	r1, r1, r2
20000864:	1a89      	suble	r1, r1, r2
20000866:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
2000086a:	2207      	movs	r2, #7
2000086c:	ab10      	add	r3, sp, #64	; 0x40
2000086e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000872:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000876:	2e00      	cmp	r6, #0
20000878:	fb03 f300 	mul.w	r3, r3, r0
2000087c:	bfb8      	it	lt
2000087e:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000882:	2900      	cmp	r1, #0
20000884:	bfb8      	it	lt
20000886:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
2000088a:	129b      	asrs	r3, r3, #10
2000088c:	6029      	str	r1, [r5, #0]
2000088e:	6023      	str	r3, [r4, #0]
20000890:	b011      	add	sp, #68	; 0x44
20000892:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000894:	1ad0      	subs	r0, r2, r3
20000896:	4249      	negs	r1, r1
20000898:	4413      	add	r3, r2
2000089a:	e7a6      	b.n	200007ea <cord_atan+0x46>
2000089c:	eba0 0263 	sub.w	r2, r0, r3, asr #1
200008a0:	1bc9      	subs	r1, r1, r7
200008a2:	eb03 0360 	add.w	r3, r3, r0, asr #1
200008a6:	e7a9      	b.n	200007fc <cord_atan+0x58>
200008a8:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
200008ac:	1bc9      	subs	r1, r1, r7
200008ae:	eb03 03a2 	add.w	r3, r3, r2, asr #2
200008b2:	e7ac      	b.n	2000080e <cord_atan+0x6a>
200008b4:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
200008b8:	1bc9      	subs	r1, r1, r7
200008ba:	eb03 03e0 	add.w	r3, r3, r0, asr #3
200008be:	e7af      	b.n	20000820 <cord_atan+0x7c>
200008c0:	eba2 1023 	sub.w	r0, r2, r3, asr #4
200008c4:	1bc9      	subs	r1, r1, r7
200008c6:	eb03 1322 	add.w	r3, r3, r2, asr #4
200008ca:	e7b2      	b.n	20000832 <cord_atan+0x8e>
200008cc:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200008d0:	1bc9      	subs	r1, r1, r7
200008d2:	eb03 1360 	add.w	r3, r3, r0, asr #5
200008d6:	e7b5      	b.n	20000844 <cord_atan+0xa0>
200008d8:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
200008dc:	1bc9      	subs	r1, r1, r7
200008de:	eb03 13a2 	add.w	r3, r3, r2, asr #6
200008e2:	e7b8      	b.n	20000856 <cord_atan+0xb2>
200008e4:	461a      	mov	r2, r3
200008e6:	e7c1      	b.n	2000086c <cord_atan+0xc8>
200008e8:	4610      	mov	r0, r2
200008ea:	2201      	movs	r2, #1
200008ec:	e7be      	b.n	2000086c <cord_atan+0xc8>
200008ee:	2202      	movs	r2, #2
200008f0:	e7bc      	b.n	2000086c <cord_atan+0xc8>
200008f2:	4610      	mov	r0, r2
200008f4:	2203      	movs	r2, #3
200008f6:	e7b9      	b.n	2000086c <cord_atan+0xc8>
200008f8:	2204      	movs	r2, #4
200008fa:	e7b7      	b.n	2000086c <cord_atan+0xc8>
200008fc:	4610      	mov	r0, r2
200008fe:	2205      	movs	r2, #5
20000900:	e7b4      	b.n	2000086c <cord_atan+0xc8>
20000902:	2206      	movs	r2, #6
20000904:	e7b2      	b.n	2000086c <cord_atan+0xc8>
20000906:	bf00      	nop
20000908:	2000166c 	.word	0x2000166c

2000090c <sinpwm>:
2000090c:	b5f0      	push	{r4, r5, r6, r7, lr}
2000090e:	b091      	sub	sp, #68	; 0x44
20000910:	46ee      	mov	lr, sp
20000912:	468c      	mov	ip, r1
20000914:	4e6e      	ldr	r6, [pc, #440]	; (20000ad0 <sinpwm+0x1c4>)
20000916:	4604      	mov	r4, r0
20000918:	4615      	mov	r5, r2
2000091a:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2000091c:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000920:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000924:	af08      	add	r7, sp, #32
20000926:	3610      	adds	r6, #16
20000928:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
2000092c:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2000092e:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000930:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000934:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000938:	f8dc 6000 	ldr.w	r6, [ip]
2000093c:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000940:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000944:	2b00      	cmp	r3, #0
20000946:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
2000094a:	9900      	ldr	r1, [sp, #0]
2000094c:	f340 8087 	ble.w	20000a5e <sinpwm+0x152>
20000950:	18d0      	adds	r0, r2, r3
20000952:	1a9b      	subs	r3, r3, r2
20000954:	2b00      	cmp	r3, #0
20000956:	f000 80aa 	beq.w	20000aae <sinpwm+0x1a2>
2000095a:	9f01      	ldr	r7, [sp, #4]
2000095c:	f340 8083 	ble.w	20000a66 <sinpwm+0x15a>
20000960:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000964:	4439      	add	r1, r7
20000966:	eba3 0360 	sub.w	r3, r3, r0, asr #1
2000096a:	2b00      	cmp	r3, #0
2000096c:	f000 80a1 	beq.w	20000ab2 <sinpwm+0x1a6>
20000970:	9f02      	ldr	r7, [sp, #8]
20000972:	dd7e      	ble.n	20000a72 <sinpwm+0x166>
20000974:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000978:	4439      	add	r1, r7
2000097a:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
2000097e:	2b00      	cmp	r3, #0
20000980:	f000 809a 	beq.w	20000ab8 <sinpwm+0x1ac>
20000984:	9f03      	ldr	r7, [sp, #12]
20000986:	dd7a      	ble.n	20000a7e <sinpwm+0x172>
20000988:	eb00 02e3 	add.w	r2, r0, r3, asr #3
2000098c:	4439      	add	r1, r7
2000098e:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000992:	2b00      	cmp	r3, #0
20000994:	f000 8092 	beq.w	20000abc <sinpwm+0x1b0>
20000998:	9f04      	ldr	r7, [sp, #16]
2000099a:	dd76      	ble.n	20000a8a <sinpwm+0x17e>
2000099c:	eb02 1023 	add.w	r0, r2, r3, asr #4
200009a0:	4439      	add	r1, r7
200009a2:	eba3 1322 	sub.w	r3, r3, r2, asr #4
200009a6:	2b00      	cmp	r3, #0
200009a8:	f000 808b 	beq.w	20000ac2 <sinpwm+0x1b6>
200009ac:	9f05      	ldr	r7, [sp, #20]
200009ae:	dd72      	ble.n	20000a96 <sinpwm+0x18a>
200009b0:	eb00 1263 	add.w	r2, r0, r3, asr #5
200009b4:	4439      	add	r1, r7
200009b6:	eba3 1360 	sub.w	r3, r3, r0, asr #5
200009ba:	2b00      	cmp	r3, #0
200009bc:	f000 8083 	beq.w	20000ac6 <sinpwm+0x1ba>
200009c0:	9f06      	ldr	r7, [sp, #24]
200009c2:	dd6e      	ble.n	20000aa2 <sinpwm+0x196>
200009c4:	eb02 10a3 	add.w	r0, r2, r3, asr #6
200009c8:	4439      	add	r1, r7
200009ca:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
200009ce:	2b00      	cmp	r3, #0
200009d0:	d07c      	beq.n	20000acc <sinpwm+0x1c0>
200009d2:	9a07      	ldr	r2, [sp, #28]
200009d4:	bfc7      	ittee	gt
200009d6:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
200009da:	1889      	addgt	r1, r1, r2
200009dc:	1a89      	suble	r1, r1, r2
200009de:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
200009e2:	2207      	movs	r2, #7
200009e4:	ab10      	add	r3, sp, #64	; 0x40
200009e6:	eb03 0282 	add.w	r2, r3, r2, lsl #2
200009ea:	f852 3c20 	ldr.w	r3, [r2, #-32]
200009ee:	2e00      	cmp	r6, #0
200009f0:	fb03 f300 	mul.w	r3, r3, r0
200009f4:	bfb8      	it	lt
200009f6:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
200009fa:	2900      	cmp	r1, #0
200009fc:	bfb8      	it	lt
200009fe:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000a02:	151b      	asrs	r3, r3, #20
20000a04:	440d      	add	r5, r1
20000a06:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000a0a:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000a0e:	dd22      	ble.n	20000a56 <sinpwm+0x14a>
20000a10:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 20000ad8 <sinpwm+0x1cc>
20000a14:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
20000a18:	2001      	movs	r0, #1
20000a1a:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
20000a1e:	4f2d      	ldr	r7, [pc, #180]	; (20000ad4 <sinpwm+0x1c8>)
20000a20:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
20000a24:	3602      	adds	r6, #2
20000a26:	f3ce 0e09 	ubfx	lr, lr, #0, #10
20000a2a:	f3c6 0609 	ubfx	r6, r6, #0, #10
20000a2e:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
20000a32:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
20000a36:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
20000a3a:	fb06 f50c 	mul.w	r5, r6, ip
20000a3e:	fb01 f10c 	mul.w	r1, r1, ip
20000a42:	fb02 f303 	mul.w	r3, r2, r3
20000a46:	12ad      	asrs	r5, r5, #10
20000a48:	128a      	asrs	r2, r1, #10
20000a4a:	129b      	asrs	r3, r3, #10
20000a4c:	60a5      	str	r5, [r4, #8]
20000a4e:	6062      	str	r2, [r4, #4]
20000a50:	6023      	str	r3, [r4, #0]
20000a52:	b011      	add	sp, #68	; 0x44
20000a54:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000a56:	f1c3 0c00 	rsb	ip, r3, #0
20000a5a:	2000      	movs	r0, #0
20000a5c:	e7dd      	b.n	20000a1a <sinpwm+0x10e>
20000a5e:	1ad0      	subs	r0, r2, r3
20000a60:	4249      	negs	r1, r1
20000a62:	4413      	add	r3, r2
20000a64:	e776      	b.n	20000954 <sinpwm+0x48>
20000a66:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000a6a:	1bc9      	subs	r1, r1, r7
20000a6c:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000a70:	e77b      	b.n	2000096a <sinpwm+0x5e>
20000a72:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000a76:	1bc9      	subs	r1, r1, r7
20000a78:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000a7c:	e77f      	b.n	2000097e <sinpwm+0x72>
20000a7e:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000a82:	1bc9      	subs	r1, r1, r7
20000a84:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000a88:	e783      	b.n	20000992 <sinpwm+0x86>
20000a8a:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000a8e:	1bc9      	subs	r1, r1, r7
20000a90:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000a94:	e787      	b.n	200009a6 <sinpwm+0x9a>
20000a96:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000a9a:	1bc9      	subs	r1, r1, r7
20000a9c:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000aa0:	e78b      	b.n	200009ba <sinpwm+0xae>
20000aa2:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000aa6:	1bc9      	subs	r1, r1, r7
20000aa8:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000aac:	e78f      	b.n	200009ce <sinpwm+0xc2>
20000aae:	461a      	mov	r2, r3
20000ab0:	e798      	b.n	200009e4 <sinpwm+0xd8>
20000ab2:	4610      	mov	r0, r2
20000ab4:	2201      	movs	r2, #1
20000ab6:	e795      	b.n	200009e4 <sinpwm+0xd8>
20000ab8:	2202      	movs	r2, #2
20000aba:	e793      	b.n	200009e4 <sinpwm+0xd8>
20000abc:	4610      	mov	r0, r2
20000abe:	2203      	movs	r2, #3
20000ac0:	e790      	b.n	200009e4 <sinpwm+0xd8>
20000ac2:	2204      	movs	r2, #4
20000ac4:	e78e      	b.n	200009e4 <sinpwm+0xd8>
20000ac6:	4610      	mov	r0, r2
20000ac8:	2205      	movs	r2, #5
20000aca:	e78b      	b.n	200009e4 <sinpwm+0xd8>
20000acc:	2206      	movs	r2, #6
20000ace:	e789      	b.n	200009e4 <sinpwm+0xd8>
20000ad0:	2000166c 	.word	0x2000166c
20000ad4:	200016ac 	.word	0x200016ac
20000ad8:	fffffe0c 	.word	0xfffffe0c

20000adc <svpwm>:
20000adc:	b5f0      	push	{r4, r5, r6, r7, lr}
20000ade:	b091      	sub	sp, #68	; 0x44
20000ae0:	46ee      	mov	lr, sp
20000ae2:	468c      	mov	ip, r1
20000ae4:	4eb8      	ldr	r6, [pc, #736]	; (20000dc8 <svpwm+0x2ec>)
20000ae6:	4604      	mov	r4, r0
20000ae8:	4615      	mov	r5, r2
20000aea:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000aec:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000af0:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000af4:	af08      	add	r7, sp, #32
20000af6:	3610      	adds	r6, #16
20000af8:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000afc:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000afe:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000b00:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000b04:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000b08:	f8dc 6000 	ldr.w	r6, [ip]
20000b0c:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000b10:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000b14:	2b00      	cmp	r3, #0
20000b16:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000b1a:	9900      	ldr	r1, [sp, #0]
20000b1c:	dd6f      	ble.n	20000bfe <svpwm+0x122>
20000b1e:	18d0      	adds	r0, r2, r3
20000b20:	1a9b      	subs	r3, r3, r2
20000b22:	2b00      	cmp	r3, #0
20000b24:	f000 813f 	beq.w	20000da6 <svpwm+0x2ca>
20000b28:	9f01      	ldr	r7, [sp, #4]
20000b2a:	dd6c      	ble.n	20000c06 <svpwm+0x12a>
20000b2c:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000b30:	4439      	add	r1, r7
20000b32:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000b36:	2b00      	cmp	r3, #0
20000b38:	f000 8137 	beq.w	20000daa <svpwm+0x2ce>
20000b3c:	9f02      	ldr	r7, [sp, #8]
20000b3e:	dd68      	ble.n	20000c12 <svpwm+0x136>
20000b40:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000b44:	4439      	add	r1, r7
20000b46:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000b4a:	2b00      	cmp	r3, #0
20000b4c:	f000 8130 	beq.w	20000db0 <svpwm+0x2d4>
20000b50:	9f03      	ldr	r7, [sp, #12]
20000b52:	dd64      	ble.n	20000c1e <svpwm+0x142>
20000b54:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000b58:	4439      	add	r1, r7
20000b5a:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000b5e:	2b00      	cmp	r3, #0
20000b60:	f000 8128 	beq.w	20000db4 <svpwm+0x2d8>
20000b64:	9f04      	ldr	r7, [sp, #16]
20000b66:	dd60      	ble.n	20000c2a <svpwm+0x14e>
20000b68:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000b6c:	4439      	add	r1, r7
20000b6e:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000b72:	2b00      	cmp	r3, #0
20000b74:	f000 8121 	beq.w	20000dba <svpwm+0x2de>
20000b78:	9f05      	ldr	r7, [sp, #20]
20000b7a:	dd5c      	ble.n	20000c36 <svpwm+0x15a>
20000b7c:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000b80:	4439      	add	r1, r7
20000b82:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000b86:	2b00      	cmp	r3, #0
20000b88:	f000 8119 	beq.w	20000dbe <svpwm+0x2e2>
20000b8c:	9f06      	ldr	r7, [sp, #24]
20000b8e:	dd58      	ble.n	20000c42 <svpwm+0x166>
20000b90:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000b94:	4439      	add	r1, r7
20000b96:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000b9a:	2b00      	cmp	r3, #0
20000b9c:	f000 8112 	beq.w	20000dc4 <svpwm+0x2e8>
20000ba0:	9a07      	ldr	r2, [sp, #28]
20000ba2:	bfc7      	ittee	gt
20000ba4:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000ba8:	1889      	addgt	r1, r1, r2
20000baa:	1a89      	suble	r1, r1, r2
20000bac:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000bb0:	2207      	movs	r2, #7
20000bb2:	ab10      	add	r3, sp, #64	; 0x40
20000bb4:	2e00      	cmp	r6, #0
20000bb6:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000bba:	bfb8      	it	lt
20000bbc:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000bc0:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000bc4:	2900      	cmp	r1, #0
20000bc6:	fb03 f300 	mul.w	r3, r3, r0
20000bca:	bfb8      	it	lt
20000bcc:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000bd0:	440d      	add	r5, r1
20000bd2:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000bd6:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20000bda:	151b      	asrs	r3, r3, #20
20000bdc:	1252      	asrs	r2, r2, #9
20000bde:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000be2:	f102 32ff 	add.w	r2, r2, #4294967295
20000be6:	bfc6      	itte	gt
20000be8:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20000bec:	2001      	movgt	r0, #1
20000bee:	2000      	movle	r0, #0
20000bf0:	2a04      	cmp	r2, #4
20000bf2:	d848      	bhi.n	20000c86 <svpwm+0x1aa>
20000bf4:	e8df f002 	tbb	[pc, r2]
20000bf8:	2b9e8164 	.word	0x2b9e8164
20000bfc:	bb          	.byte	0xbb
20000bfd:	00          	.byte	0x00
20000bfe:	1ad0      	subs	r0, r2, r3
20000c00:	4249      	negs	r1, r1
20000c02:	4413      	add	r3, r2
20000c04:	e78d      	b.n	20000b22 <svpwm+0x46>
20000c06:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000c0a:	1bc9      	subs	r1, r1, r7
20000c0c:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000c10:	e791      	b.n	20000b36 <svpwm+0x5a>
20000c12:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000c16:	1bc9      	subs	r1, r1, r7
20000c18:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000c1c:	e795      	b.n	20000b4a <svpwm+0x6e>
20000c1e:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000c22:	1bc9      	subs	r1, r1, r7
20000c24:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000c28:	e799      	b.n	20000b5e <svpwm+0x82>
20000c2a:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000c2e:	1bc9      	subs	r1, r1, r7
20000c30:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000c34:	e79d      	b.n	20000b72 <svpwm+0x96>
20000c36:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000c3a:	1bc9      	subs	r1, r1, r7
20000c3c:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000c40:	e7a1      	b.n	20000b86 <svpwm+0xaa>
20000c42:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000c46:	1bc9      	subs	r1, r1, r7
20000c48:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000c4c:	e7a5      	b.n	20000b9a <svpwm+0xbe>
20000c4e:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
20000c52:	4e5e      	ldr	r6, [pc, #376]	; (20000dcc <svpwm+0x2f0>)
20000c54:	3204      	adds	r2, #4
20000c56:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000c5a:	3556      	adds	r5, #86	; 0x56
20000c5c:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000c60:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c64:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000c68:	fb01 f103 	mul.w	r1, r1, r3
20000c6c:	fb02 f203 	mul.w	r2, r2, r3
20000c70:	1289      	asrs	r1, r1, #10
20000c72:	1293      	asrs	r3, r2, #10
20000c74:	424a      	negs	r2, r1
20000c76:	1ad2      	subs	r2, r2, r3
20000c78:	1a5d      	subs	r5, r3, r1
20000c7a:	440b      	add	r3, r1
20000c7c:	6062      	str	r2, [r4, #4]
20000c7e:	6025      	str	r5, [r4, #0]
20000c80:	60a3      	str	r3, [r4, #8]
20000c82:	b011      	add	sp, #68	; 0x44
20000c84:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000c86:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000c8a:	4e50      	ldr	r6, [pc, #320]	; (20000dcc <svpwm+0x2f0>)
20000c8c:	3202      	adds	r2, #2
20000c8e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000c92:	f505 7540 	add.w	r5, r5, #768	; 0x300
20000c96:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000c9a:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c9e:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000ca2:	fb01 f103 	mul.w	r1, r1, r3
20000ca6:	fb02 f203 	mul.w	r2, r2, r3
20000caa:	1289      	asrs	r1, r1, #10
20000cac:	1293      	asrs	r3, r2, #10
20000cae:	424a      	negs	r2, r1
20000cb0:	1ad2      	subs	r2, r2, r3
20000cb2:	18cd      	adds	r5, r1, r3
20000cb4:	1a5b      	subs	r3, r3, r1
20000cb6:	60a2      	str	r2, [r4, #8]
20000cb8:	6025      	str	r5, [r4, #0]
20000cba:	6063      	str	r3, [r4, #4]
20000cbc:	b011      	add	sp, #68	; 0x44
20000cbe:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000cc0:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20000cc4:	4e41      	ldr	r6, [pc, #260]	; (20000dcc <svpwm+0x2f0>)
20000cc6:	3204      	adds	r2, #4
20000cc8:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000ccc:	f205 2556 	addw	r5, r5, #598	; 0x256
20000cd0:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000cd4:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000cd8:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000cdc:	fb01 f103 	mul.w	r1, r1, r3
20000ce0:	fb02 f203 	mul.w	r2, r2, r3
20000ce4:	1289      	asrs	r1, r1, #10
20000ce6:	1293      	asrs	r3, r2, #10
20000ce8:	424a      	negs	r2, r1
20000cea:	1ad2      	subs	r2, r2, r3
20000cec:	1acd      	subs	r5, r1, r3
20000cee:	440b      	add	r3, r1
20000cf0:	60a2      	str	r2, [r4, #8]
20000cf2:	6025      	str	r5, [r4, #0]
20000cf4:	6063      	str	r3, [r4, #4]
20000cf6:	b011      	add	sp, #68	; 0x44
20000cf8:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000cfa:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20000cfe:	4e33      	ldr	r6, [pc, #204]	; (20000dcc <svpwm+0x2f0>)
20000d00:	320f      	adds	r2, #15
20000d02:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d06:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20000d0a:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000d0e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d12:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000d16:	fb01 f103 	mul.w	r1, r1, r3
20000d1a:	fb02 f203 	mul.w	r2, r2, r3
20000d1e:	1289      	asrs	r1, r1, #10
20000d20:	1293      	asrs	r3, r2, #10
20000d22:	424a      	negs	r2, r1
20000d24:	1ad2      	subs	r2, r2, r3
20000d26:	18cd      	adds	r5, r1, r3
20000d28:	1a5b      	subs	r3, r3, r1
20000d2a:	e884 0024 	stmia.w	r4, {r2, r5}
20000d2e:	60a3      	str	r3, [r4, #8]
20000d30:	b011      	add	sp, #68	; 0x44
20000d32:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000d34:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20000d38:	4e24      	ldr	r6, [pc, #144]	; (20000dcc <svpwm+0x2f0>)
20000d3a:	320a      	adds	r2, #10
20000d3c:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d40:	f505 7580 	add.w	r5, r5, #256	; 0x100
20000d44:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000d48:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d4c:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000d50:	fb01 f103 	mul.w	r1, r1, r3
20000d54:	fb02 f203 	mul.w	r2, r2, r3
20000d58:	1289      	asrs	r1, r1, #10
20000d5a:	1293      	asrs	r3, r2, #10
20000d5c:	424a      	negs	r2, r1
20000d5e:	1ad2      	subs	r2, r2, r3
20000d60:	1acd      	subs	r5, r1, r3
20000d62:	440b      	add	r3, r1
20000d64:	e884 0024 	stmia.w	r4, {r2, r5}
20000d68:	60a3      	str	r3, [r4, #8]
20000d6a:	b011      	add	sp, #68	; 0x44
20000d6c:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000d6e:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000d72:	4916      	ldr	r1, [pc, #88]	; (20000dcc <svpwm+0x2f0>)
20000d74:	320f      	adds	r2, #15
20000d76:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d7a:	3d55      	subs	r5, #85	; 0x55
20000d7c:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000d80:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d84:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000d88:	fb02 f203 	mul.w	r2, r2, r3
20000d8c:	fb01 f303 	mul.w	r3, r1, r3
20000d90:	1292      	asrs	r2, r2, #10
20000d92:	129b      	asrs	r3, r3, #10
20000d94:	4251      	negs	r1, r2
20000d96:	18d5      	adds	r5, r2, r3
20000d98:	1ac9      	subs	r1, r1, r3
20000d9a:	1ad2      	subs	r2, r2, r3
20000d9c:	6061      	str	r1, [r4, #4]
20000d9e:	6025      	str	r5, [r4, #0]
20000da0:	60a2      	str	r2, [r4, #8]
20000da2:	b011      	add	sp, #68	; 0x44
20000da4:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000da6:	461a      	mov	r2, r3
20000da8:	e703      	b.n	20000bb2 <svpwm+0xd6>
20000daa:	4610      	mov	r0, r2
20000dac:	2201      	movs	r2, #1
20000dae:	e700      	b.n	20000bb2 <svpwm+0xd6>
20000db0:	2202      	movs	r2, #2
20000db2:	e6fe      	b.n	20000bb2 <svpwm+0xd6>
20000db4:	4610      	mov	r0, r2
20000db6:	2203      	movs	r2, #3
20000db8:	e6fb      	b.n	20000bb2 <svpwm+0xd6>
20000dba:	2204      	movs	r2, #4
20000dbc:	e6f9      	b.n	20000bb2 <svpwm+0xd6>
20000dbe:	4610      	mov	r0, r2
20000dc0:	2205      	movs	r2, #5
20000dc2:	e6f6      	b.n	20000bb2 <svpwm+0xd6>
20000dc4:	2206      	movs	r2, #6
20000dc6:	e6f4      	b.n	20000bb2 <svpwm+0xd6>
20000dc8:	2000166c 	.word	0x2000166c
20000dcc:	200016ac 	.word	0x200016ac

20000dd0 <get_speed>:
20000dd0:	4a0e      	ldr	r2, [pc, #56]	; (20000e0c <get_speed+0x3c>)
20000dd2:	b430      	push	{r4, r5}
20000dd4:	e892 0028 	ldmia.w	r2, {r3, r5}
20000dd8:	1ac3      	subs	r3, r0, r3
20000dda:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20000dde:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
20000de2:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
20000de6:	6015      	str	r5, [r2, #0]
20000de8:	6050      	str	r0, [r2, #4]
20000dea:	dd05      	ble.n	20000df8 <get_speed+0x28>
20000dec:	2b00      	cmp	r3, #0
20000dee:	bfb4      	ite	lt
20000df0:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
20000df4:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20000df8:	4a05      	ldr	r2, [pc, #20]	; (20000e10 <get_speed+0x40>)
20000dfa:	1058      	asrs	r0, r3, #1
20000dfc:	fb02 f000 	mul.w	r0, r2, r0
20000e00:	bc30      	pop	{r4, r5}
20000e02:	680a      	ldr	r2, [r1, #0]
20000e04:	1300      	asrs	r0, r0, #12
20000e06:	4413      	add	r3, r2
20000e08:	600b      	str	r3, [r1, #0]
20000e0a:	4770      	bx	lr
20000e0c:	20002734 	.word	0x20002734
20000e10:	0002ae7c 	.word	0x0002ae7c

20000e14 <mfilter>:
20000e14:	4908      	ldr	r1, [pc, #32]	; (20000e38 <mfilter+0x24>)
20000e16:	b430      	push	{r4, r5}
20000e18:	688a      	ldr	r2, [r1, #8]
20000e1a:	68cb      	ldr	r3, [r1, #12]
20000e1c:	3201      	adds	r2, #1
20000e1e:	f002 021f 	and.w	r2, r2, #31
20000e22:	eb01 0482 	add.w	r4, r1, r2, lsl #2
20000e26:	6925      	ldr	r5, [r4, #16]
20000e28:	608a      	str	r2, [r1, #8]
20000e2a:	1b5b      	subs	r3, r3, r5
20000e2c:	4403      	add	r3, r0
20000e2e:	6120      	str	r0, [r4, #16]
20000e30:	60cb      	str	r3, [r1, #12]
20000e32:	1158      	asrs	r0, r3, #5
20000e34:	bc30      	pop	{r4, r5}
20000e36:	4770      	bx	lr
20000e38:	20002734 	.word	0x20002734

20000e3c <rfilter1>:
20000e3c:	b470      	push	{r4, r5, r6}
20000e3e:	f240 74c6 	movw	r4, #1990	; 0x7c6
20000e42:	4b12      	ldr	r3, [pc, #72]	; (20000e8c <rfilter1+0x50>)
20000e44:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20000e48:	f8d3 6090 	ldr.w	r6, [r3, #144]	; 0x90
20000e4c:	f8d3 1098 	ldr.w	r1, [r3, #152]	; 0x98
20000e50:	fb04 f406 	mul.w	r4, r4, r6
20000e54:	fb02 4201 	mla	r2, r2, r1, r4
20000e58:	490d      	ldr	r1, [pc, #52]	; (20000e90 <rfilter1+0x54>)
20000e5a:	f8d3 5094 	ldr.w	r5, [r3, #148]	; 0x94
20000e5e:	fb01 2200 	mla	r2, r1, r0, r2
20000e62:	4c0c      	ldr	r4, [pc, #48]	; (20000e94 <rfilter1+0x58>)
20000e64:	f8d3 109c 	ldr.w	r1, [r3, #156]	; 0x9c
20000e68:	fb04 2205 	mla	r2, r4, r5, r2
20000e6c:	4c0a      	ldr	r4, [pc, #40]	; (20000e98 <rfilter1+0x5c>)
20000e6e:	f8c3 6098 	str.w	r6, [r3, #152]	; 0x98
20000e72:	fb04 2201 	mla	r2, r4, r1, r2
20000e76:	1291      	asrs	r1, r2, #10
20000e78:	f8c3 0094 	str.w	r0, [r3, #148]	; 0x94
20000e7c:	f8c3 509c 	str.w	r5, [r3, #156]	; 0x9c
20000e80:	1490      	asrs	r0, r2, #18
20000e82:	f8c3 1090 	str.w	r1, [r3, #144]	; 0x90
20000e86:	bc70      	pop	{r4, r5, r6}
20000e88:	4770      	bx	lr
20000e8a:	bf00      	nop
20000e8c:	20002734 	.word	0x20002734
20000e90:	0003f0a4 	.word	0x0003f0a4
20000e94:	fff83a2e 	.word	0xfff83a2e
20000e98:	0003dc29 	.word	0x0003dc29

20000e9c <rfilter2>:
20000e9c:	b470      	push	{r4, r5, r6}
20000e9e:	f240 748a 	movw	r4, #1930	; 0x78a
20000ea2:	4b11      	ldr	r3, [pc, #68]	; (20000ee8 <rfilter2+0x4c>)
20000ea4:	4a11      	ldr	r2, [pc, #68]	; (20000eec <rfilter2+0x50>)
20000ea6:	f8d3 60a0 	ldr.w	r6, [r3, #160]	; 0xa0
20000eaa:	f8d3 10a8 	ldr.w	r1, [r3, #168]	; 0xa8
20000eae:	fb04 f406 	mul.w	r4, r4, r6
20000eb2:	fb02 4201 	mla	r2, r2, r1, r4
20000eb6:	490e      	ldr	r1, [pc, #56]	; (20000ef0 <rfilter2+0x54>)
20000eb8:	f8d3 50a4 	ldr.w	r5, [r3, #164]	; 0xa4
20000ebc:	fb01 2200 	mla	r2, r1, r0, r2
20000ec0:	4c0c      	ldr	r4, [pc, #48]	; (20000ef4 <rfilter2+0x58>)
20000ec2:	f8d3 10ac 	ldr.w	r1, [r3, #172]	; 0xac
20000ec6:	fb04 2205 	mla	r2, r4, r5, r2
20000eca:	4c0b      	ldr	r4, [pc, #44]	; (20000ef8 <rfilter2+0x5c>)
20000ecc:	f8c3 60a8 	str.w	r6, [r3, #168]	; 0xa8
20000ed0:	fb04 2201 	mla	r2, r4, r1, r2
20000ed4:	1291      	asrs	r1, r2, #10
20000ed6:	f8c3 00a4 	str.w	r0, [r3, #164]	; 0xa4
20000eda:	f8c3 50ac 	str.w	r5, [r3, #172]	; 0xac
20000ede:	1490      	asrs	r0, r2, #18
20000ee0:	f8c3 10a0 	str.w	r1, [r3, #160]	; 0xa0
20000ee4:	bc70      	pop	{r4, r5, r6}
20000ee6:	4770      	bx	lr
20000ee8:	20002734 	.word	0x20002734
20000eec:	fffffc66 	.word	0xfffffc66
20000ef0:	0003e3d7 	.word	0x0003e3d7
20000ef4:	fff8767b 	.word	0xfff8767b
20000ef8:	0003b5c3 	.word	0x0003b5c3

20000efc <adc_init>:
20000efc:	b480      	push	{r7}
20000efe:	af00      	add	r7, sp, #0
20000f00:	4a10      	ldr	r2, [pc, #64]	; (20000f44 <adc_init+0x48>)
20000f02:	4b10      	ldr	r3, [pc, #64]	; (20000f44 <adc_init+0x48>)
20000f04:	69db      	ldr	r3, [r3, #28]
20000f06:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000f0a:	61d3      	str	r3, [r2, #28]
20000f0c:	4b0d      	ldr	r3, [pc, #52]	; (20000f44 <adc_init+0x48>)
20000f0e:	f242 0220 	movw	r2, #8224	; 0x2020
20000f12:	615a      	str	r2, [r3, #20]
20000f14:	4b0c      	ldr	r3, [pc, #48]	; (20000f48 <adc_init+0x4c>)
20000f16:	2200      	movs	r2, #0
20000f18:	601a      	str	r2, [r3, #0]
20000f1a:	4a0b      	ldr	r2, [pc, #44]	; (20000f48 <adc_init+0x4c>)
20000f1c:	4b0a      	ldr	r3, [pc, #40]	; (20000f48 <adc_init+0x4c>)
20000f1e:	681b      	ldr	r3, [r3, #0]
20000f20:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20000f24:	f043 0301 	orr.w	r3, r3, #1
20000f28:	6013      	str	r3, [r2, #0]
20000f2a:	4a07      	ldr	r2, [pc, #28]	; (20000f48 <adc_init+0x4c>)
20000f2c:	4b06      	ldr	r3, [pc, #24]	; (20000f48 <adc_init+0x4c>)
20000f2e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20000f30:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
20000f34:	6293      	str	r3, [r2, #40]	; 0x28
20000f36:	4b04      	ldr	r3, [pc, #16]	; (20000f48 <adc_init+0x4c>)
20000f38:	2210      	movs	r2, #16
20000f3a:	621a      	str	r2, [r3, #32]
20000f3c:	bf00      	nop
20000f3e:	46bd      	mov	sp, r7
20000f40:	bc80      	pop	{r7}
20000f42:	4770      	bx	lr
20000f44:	40020000 	.word	0x40020000
20000f48:	40088000 	.word	0x40088000

20000f4c <dma_init>:
20000f4c:	b480      	push	{r7}
20000f4e:	af00      	add	r7, sp, #0
20000f50:	4a17      	ldr	r2, [pc, #92]	; (20000fb0 <dma_init+0x64>)
20000f52:	4b17      	ldr	r3, [pc, #92]	; (20000fb0 <dma_init+0x64>)
20000f54:	69db      	ldr	r3, [r3, #28]
20000f56:	f043 0320 	orr.w	r3, r3, #32
20000f5a:	61d3      	str	r3, [r2, #28]
20000f5c:	4b15      	ldr	r3, [pc, #84]	; (20000fb4 <dma_init+0x68>)
20000f5e:	4a16      	ldr	r2, [pc, #88]	; (20000fb8 <dma_init+0x6c>)
20000f60:	609a      	str	r2, [r3, #8]
20000f62:	4b14      	ldr	r3, [pc, #80]	; (20000fb4 <dma_init+0x68>)
20000f64:	f04f 32ff 	mov.w	r2, #4294967295
20000f68:	62da      	str	r2, [r3, #44]	; 0x2c
20000f6a:	4b12      	ldr	r3, [pc, #72]	; (20000fb4 <dma_init+0x68>)
20000f6c:	f04f 32ff 	mov.w	r2, #4294967295
20000f70:	621a      	str	r2, [r3, #32]
20000f72:	4b10      	ldr	r3, [pc, #64]	; (20000fb4 <dma_init+0x68>)
20000f74:	f04f 32ff 	mov.w	r2, #4294967295
20000f78:	635a      	str	r2, [r3, #52]	; 0x34
20000f7a:	4b0e      	ldr	r3, [pc, #56]	; (20000fb4 <dma_init+0x68>)
20000f7c:	f44f 7280 	mov.w	r2, #256	; 0x100
20000f80:	61da      	str	r2, [r3, #28]
20000f82:	4b0c      	ldr	r3, [pc, #48]	; (20000fb4 <dma_init+0x68>)
20000f84:	f44f 7280 	mov.w	r2, #256	; 0x100
20000f88:	625a      	str	r2, [r3, #36]	; 0x24
20000f8a:	4b0a      	ldr	r3, [pc, #40]	; (20000fb4 <dma_init+0x68>)
20000f8c:	2201      	movs	r2, #1
20000f8e:	605a      	str	r2, [r3, #4]
20000f90:	4b09      	ldr	r3, [pc, #36]	; (20000fb8 <dma_init+0x6c>)
20000f92:	4a0a      	ldr	r2, [pc, #40]	; (20000fbc <dma_init+0x70>)
20000f94:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20000f98:	4a09      	ldr	r2, [pc, #36]	; (20000fc0 <dma_init+0x74>)
20000f9a:	4b07      	ldr	r3, [pc, #28]	; (20000fb8 <dma_init+0x6c>)
20000f9c:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20000fa0:	4b05      	ldr	r3, [pc, #20]	; (20000fb8 <dma_init+0x6c>)
20000fa2:	4a08      	ldr	r2, [pc, #32]	; (20000fc4 <dma_init+0x78>)
20000fa4:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000fa8:	bf00      	nop
20000faa:	46bd      	mov	sp, r7
20000fac:	bc80      	pop	{r7}
20000fae:	4770      	bx	lr
20000fb0:	40020000 	.word	0x40020000
20000fb4:	40028000 	.word	0x40028000
20000fb8:	20002c00 	.word	0x20002c00
20000fbc:	40088018 	.word	0x40088018
20000fc0:	20002e04 	.word	0x20002e04
20000fc4:	ae000011 	.word	0xae000011

20000fc8 <adc_dma_init>:
20000fc8:	b580      	push	{r7, lr}
20000fca:	af00      	add	r7, sp, #0
20000fcc:	f7ff ff96 	bl	20000efc <adc_init>
20000fd0:	f7ff ffbc 	bl	20000f4c <dma_init>
20000fd4:	bf00      	nop
20000fd6:	bd80      	pop	{r7, pc}

20000fd8 <adc_dma_start>:
20000fd8:	b480      	push	{r7}
20000fda:	af00      	add	r7, sp, #0
20000fdc:	4a06      	ldr	r2, [pc, #24]	; (20000ff8 <adc_dma_start+0x20>)
20000fde:	4b06      	ldr	r3, [pc, #24]	; (20000ff8 <adc_dma_start+0x20>)
20000fe0:	681b      	ldr	r3, [r3, #0]
20000fe2:	f043 0308 	orr.w	r3, r3, #8
20000fe6:	6013      	str	r3, [r2, #0]
20000fe8:	4b04      	ldr	r3, [pc, #16]	; (20000ffc <adc_dma_start+0x24>)
20000fea:	f44f 7280 	mov.w	r2, #256	; 0x100
20000fee:	629a      	str	r2, [r3, #40]	; 0x28
20000ff0:	bf00      	nop
20000ff2:	46bd      	mov	sp, r7
20000ff4:	bc80      	pop	{r7}
20000ff6:	4770      	bx	lr
20000ff8:	40088000 	.word	0x40088000
20000ffc:	40028000 	.word	0x40028000

20001000 <adc_dma_wait>:
20001000:	b480      	push	{r7}
20001002:	af00      	add	r7, sp, #0
20001004:	bf00      	nop
20001006:	4b0a      	ldr	r3, [pc, #40]	; (20001030 <adc_dma_wait+0x30>)
20001008:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
2000100c:	f003 0307 	and.w	r3, r3, #7
20001010:	2b00      	cmp	r3, #0
20001012:	d1f8      	bne.n	20001006 <adc_dma_wait+0x6>
20001014:	4a07      	ldr	r2, [pc, #28]	; (20001034 <adc_dma_wait+0x34>)
20001016:	4b07      	ldr	r3, [pc, #28]	; (20001034 <adc_dma_wait+0x34>)
20001018:	681b      	ldr	r3, [r3, #0]
2000101a:	f023 0308 	bic.w	r3, r3, #8
2000101e:	6013      	str	r3, [r2, #0]
20001020:	4b03      	ldr	r3, [pc, #12]	; (20001030 <adc_dma_wait+0x30>)
20001022:	4a05      	ldr	r2, [pc, #20]	; (20001038 <adc_dma_wait+0x38>)
20001024:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20001028:	bf00      	nop
2000102a:	46bd      	mov	sp, r7
2000102c:	bc80      	pop	{r7}
2000102e:	4770      	bx	lr
20001030:	20002c00 	.word	0x20002c00
20001034:	40088000 	.word	0x40088000
20001038:	ae000011 	.word	0xae000011

2000103c <NVIC_EnableIRQ>:
2000103c:	b480      	push	{r7}
2000103e:	b083      	sub	sp, #12
20001040:	af00      	add	r7, sp, #0
20001042:	4603      	mov	r3, r0
20001044:	71fb      	strb	r3, [r7, #7]
20001046:	4908      	ldr	r1, [pc, #32]	; (20001068 <NVIC_EnableIRQ+0x2c>)
20001048:	f997 3007 	ldrsb.w	r3, [r7, #7]
2000104c:	095b      	lsrs	r3, r3, #5
2000104e:	79fa      	ldrb	r2, [r7, #7]
20001050:	f002 021f 	and.w	r2, r2, #31
20001054:	2001      	movs	r0, #1
20001056:	fa00 f202 	lsl.w	r2, r0, r2
2000105a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
2000105e:	bf00      	nop
20001060:	370c      	adds	r7, #12
20001062:	46bd      	mov	sp, r7
20001064:	bc80      	pop	{r7}
20001066:	4770      	bx	lr
20001068:	e000e100 	.word	0xe000e100

2000106c <PortConfig>:
2000106c:	b480      	push	{r7}
2000106e:	af00      	add	r7, sp, #0
20001070:	4a5b      	ldr	r2, [pc, #364]	; (200011e0 <PortConfig+0x174>)
20001072:	4b5b      	ldr	r3, [pc, #364]	; (200011e0 <PortConfig+0x174>)
20001074:	69db      	ldr	r3, [r3, #28]
20001076:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
2000107a:	61d3      	str	r3, [r2, #28]
2000107c:	4b59      	ldr	r3, [pc, #356]	; (200011e4 <PortConfig+0x178>)
2000107e:	2200      	movs	r2, #0
20001080:	609a      	str	r2, [r3, #8]
20001082:	4b58      	ldr	r3, [pc, #352]	; (200011e4 <PortConfig+0x178>)
20001084:	2200      	movs	r2, #0
20001086:	601a      	str	r2, [r3, #0]
20001088:	4b56      	ldr	r3, [pc, #344]	; (200011e4 <PortConfig+0x178>)
2000108a:	22ff      	movs	r2, #255	; 0xff
2000108c:	605a      	str	r2, [r3, #4]
2000108e:	4b55      	ldr	r3, [pc, #340]	; (200011e4 <PortConfig+0x178>)
20001090:	f64f 72ff 	movw	r2, #65535	; 0xffff
20001094:	60da      	str	r2, [r3, #12]
20001096:	4b53      	ldr	r3, [pc, #332]	; (200011e4 <PortConfig+0x178>)
20001098:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000109c:	619a      	str	r2, [r3, #24]
2000109e:	4a50      	ldr	r2, [pc, #320]	; (200011e0 <PortConfig+0x174>)
200010a0:	4b4f      	ldr	r3, [pc, #316]	; (200011e0 <PortConfig+0x174>)
200010a2:	69db      	ldr	r3, [r3, #28]
200010a4:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
200010a8:	61d3      	str	r3, [r2, #28]
200010aa:	4a4f      	ldr	r2, [pc, #316]	; (200011e8 <PortConfig+0x17c>)
200010ac:	4b4e      	ldr	r3, [pc, #312]	; (200011e8 <PortConfig+0x17c>)
200010ae:	689b      	ldr	r3, [r3, #8]
200010b0:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
200010b4:	6093      	str	r3, [r2, #8]
200010b6:	4a4c      	ldr	r2, [pc, #304]	; (200011e8 <PortConfig+0x17c>)
200010b8:	4b4b      	ldr	r3, [pc, #300]	; (200011e8 <PortConfig+0x17c>)
200010ba:	689b      	ldr	r3, [r3, #8]
200010bc:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
200010c0:	6093      	str	r3, [r2, #8]
200010c2:	4a49      	ldr	r2, [pc, #292]	; (200011e8 <PortConfig+0x17c>)
200010c4:	4b48      	ldr	r3, [pc, #288]	; (200011e8 <PortConfig+0x17c>)
200010c6:	68db      	ldr	r3, [r3, #12]
200010c8:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
200010cc:	60d3      	str	r3, [r2, #12]
200010ce:	4a46      	ldr	r2, [pc, #280]	; (200011e8 <PortConfig+0x17c>)
200010d0:	4b45      	ldr	r3, [pc, #276]	; (200011e8 <PortConfig+0x17c>)
200010d2:	699b      	ldr	r3, [r3, #24]
200010d4:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
200010d8:	6193      	str	r3, [r2, #24]
200010da:	4a43      	ldr	r2, [pc, #268]	; (200011e8 <PortConfig+0x17c>)
200010dc:	4b42      	ldr	r3, [pc, #264]	; (200011e8 <PortConfig+0x17c>)
200010de:	685b      	ldr	r3, [r3, #4]
200010e0:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
200010e4:	6053      	str	r3, [r2, #4]
200010e6:	4a40      	ldr	r2, [pc, #256]	; (200011e8 <PortConfig+0x17c>)
200010e8:	4b3f      	ldr	r3, [pc, #252]	; (200011e8 <PortConfig+0x17c>)
200010ea:	685b      	ldr	r3, [r3, #4]
200010ec:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
200010f0:	6053      	str	r3, [r2, #4]
200010f2:	4a3d      	ldr	r2, [pc, #244]	; (200011e8 <PortConfig+0x17c>)
200010f4:	4b3c      	ldr	r3, [pc, #240]	; (200011e8 <PortConfig+0x17c>)
200010f6:	689b      	ldr	r3, [r3, #8]
200010f8:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
200010fc:	6093      	str	r3, [r2, #8]
200010fe:	4a3a      	ldr	r2, [pc, #232]	; (200011e8 <PortConfig+0x17c>)
20001100:	4b39      	ldr	r3, [pc, #228]	; (200011e8 <PortConfig+0x17c>)
20001102:	689b      	ldr	r3, [r3, #8]
20001104:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
20001108:	6093      	str	r3, [r2, #8]
2000110a:	4a37      	ldr	r2, [pc, #220]	; (200011e8 <PortConfig+0x17c>)
2000110c:	4b36      	ldr	r3, [pc, #216]	; (200011e8 <PortConfig+0x17c>)
2000110e:	68db      	ldr	r3, [r3, #12]
20001110:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001114:	60d3      	str	r3, [r2, #12]
20001116:	4a34      	ldr	r2, [pc, #208]	; (200011e8 <PortConfig+0x17c>)
20001118:	4b33      	ldr	r3, [pc, #204]	; (200011e8 <PortConfig+0x17c>)
2000111a:	699b      	ldr	r3, [r3, #24]
2000111c:	f443 5370 	orr.w	r3, r3, #15360	; 0x3c00
20001120:	6193      	str	r3, [r2, #24]
20001122:	4a2f      	ldr	r2, [pc, #188]	; (200011e0 <PortConfig+0x174>)
20001124:	4b2e      	ldr	r3, [pc, #184]	; (200011e0 <PortConfig+0x174>)
20001126:	69db      	ldr	r3, [r3, #28]
20001128:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
2000112c:	61d3      	str	r3, [r2, #28]
2000112e:	4b2f      	ldr	r3, [pc, #188]	; (200011ec <PortConfig+0x180>)
20001130:	4a2f      	ldr	r2, [pc, #188]	; (200011f0 <PortConfig+0x184>)
20001132:	609a      	str	r2, [r3, #8]
20001134:	4b2d      	ldr	r3, [pc, #180]	; (200011ec <PortConfig+0x180>)
20001136:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000113a:	60da      	str	r2, [r3, #12]
2000113c:	4b2b      	ldr	r3, [pc, #172]	; (200011ec <PortConfig+0x180>)
2000113e:	f04f 32ff 	mov.w	r2, #4294967295
20001142:	619a      	str	r2, [r3, #24]
20001144:	4b29      	ldr	r3, [pc, #164]	; (200011ec <PortConfig+0x180>)
20001146:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000114a:	605a      	str	r2, [r3, #4]
2000114c:	4a27      	ldr	r2, [pc, #156]	; (200011ec <PortConfig+0x180>)
2000114e:	4b27      	ldr	r3, [pc, #156]	; (200011ec <PortConfig+0x180>)
20001150:	681b      	ldr	r3, [r3, #0]
20001152:	f023 0303 	bic.w	r3, r3, #3
20001156:	6013      	str	r3, [r2, #0]
20001158:	4a24      	ldr	r2, [pc, #144]	; (200011ec <PortConfig+0x180>)
2000115a:	4b24      	ldr	r3, [pc, #144]	; (200011ec <PortConfig+0x180>)
2000115c:	681b      	ldr	r3, [r3, #0]
2000115e:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001162:	6013      	str	r3, [r2, #0]
20001164:	4a1e      	ldr	r2, [pc, #120]	; (200011e0 <PortConfig+0x174>)
20001166:	4b1e      	ldr	r3, [pc, #120]	; (200011e0 <PortConfig+0x174>)
20001168:	69db      	ldr	r3, [r3, #28]
2000116a:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
2000116e:	61d3      	str	r3, [r2, #28]
20001170:	4b20      	ldr	r3, [pc, #128]	; (200011f4 <PortConfig+0x188>)
20001172:	2200      	movs	r2, #0
20001174:	609a      	str	r2, [r3, #8]
20001176:	4a1f      	ldr	r2, [pc, #124]	; (200011f4 <PortConfig+0x188>)
20001178:	4b1e      	ldr	r3, [pc, #120]	; (200011f4 <PortConfig+0x188>)
2000117a:	685b      	ldr	r3, [r3, #4]
2000117c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001180:	6053      	str	r3, [r2, #4]
20001182:	4a1c      	ldr	r2, [pc, #112]	; (200011f4 <PortConfig+0x188>)
20001184:	4b1b      	ldr	r3, [pc, #108]	; (200011f4 <PortConfig+0x188>)
20001186:	68db      	ldr	r3, [r3, #12]
20001188:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000118c:	60d3      	str	r3, [r2, #12]
2000118e:	4b19      	ldr	r3, [pc, #100]	; (200011f4 <PortConfig+0x188>)
20001190:	f04f 32ff 	mov.w	r2, #4294967295
20001194:	619a      	str	r2, [r3, #24]
20001196:	4a17      	ldr	r2, [pc, #92]	; (200011f4 <PortConfig+0x188>)
20001198:	4b16      	ldr	r3, [pc, #88]	; (200011f4 <PortConfig+0x188>)
2000119a:	681b      	ldr	r3, [r3, #0]
2000119c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200011a0:	6013      	str	r3, [r2, #0]
200011a2:	4a0f      	ldr	r2, [pc, #60]	; (200011e0 <PortConfig+0x174>)
200011a4:	4b0e      	ldr	r3, [pc, #56]	; (200011e0 <PortConfig+0x174>)
200011a6:	69db      	ldr	r3, [r3, #28]
200011a8:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
200011ac:	61d3      	str	r3, [r2, #28]
200011ae:	4a12      	ldr	r2, [pc, #72]	; (200011f8 <PortConfig+0x18c>)
200011b0:	4b11      	ldr	r3, [pc, #68]	; (200011f8 <PortConfig+0x18c>)
200011b2:	68db      	ldr	r3, [r3, #12]
200011b4:	f423 7300 	bic.w	r3, r3, #512	; 0x200
200011b8:	f023 0301 	bic.w	r3, r3, #1
200011bc:	60d3      	str	r3, [r2, #12]
200011be:	4a08      	ldr	r2, [pc, #32]	; (200011e0 <PortConfig+0x174>)
200011c0:	4b07      	ldr	r3, [pc, #28]	; (200011e0 <PortConfig+0x174>)
200011c2:	69db      	ldr	r3, [r3, #28]
200011c4:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
200011c8:	61d3      	str	r3, [r2, #28]
200011ca:	4a0c      	ldr	r2, [pc, #48]	; (200011fc <PortConfig+0x190>)
200011cc:	4b0b      	ldr	r3, [pc, #44]	; (200011fc <PortConfig+0x190>)
200011ce:	68db      	ldr	r3, [r3, #12]
200011d0:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
200011d4:	60d3      	str	r3, [r2, #12]
200011d6:	bf00      	nop
200011d8:	46bd      	mov	sp, r7
200011da:	bc80      	pop	{r7}
200011dc:	4770      	bx	lr
200011de:	bf00      	nop
200011e0:	40020000 	.word	0x40020000
200011e4:	400a8000 	.word	0x400a8000
200011e8:	400b0000 	.word	0x400b0000
200011ec:	400b8000 	.word	0x400b8000
200011f0:	000aaaa0 	.word	0x000aaaa0
200011f4:	400e8000 	.word	0x400e8000
200011f8:	400c8000 	.word	0x400c8000
200011fc:	400c0000 	.word	0x400c0000

20001200 <ClkConfig>:
20001200:	b480      	push	{r7}
20001202:	af00      	add	r7, sp, #0
20001204:	4a16      	ldr	r2, [pc, #88]	; (20001260 <ClkConfig+0x60>)
20001206:	4b16      	ldr	r3, [pc, #88]	; (20001260 <ClkConfig+0x60>)
20001208:	689b      	ldr	r3, [r3, #8]
2000120a:	f043 0301 	orr.w	r3, r3, #1
2000120e:	6093      	str	r3, [r2, #8]
20001210:	bf00      	nop
20001212:	4b13      	ldr	r3, [pc, #76]	; (20001260 <ClkConfig+0x60>)
20001214:	681b      	ldr	r3, [r3, #0]
20001216:	f003 0304 	and.w	r3, r3, #4
2000121a:	2b00      	cmp	r3, #0
2000121c:	d0f9      	beq.n	20001212 <ClkConfig+0x12>
2000121e:	4b10      	ldr	r3, [pc, #64]	; (20001260 <ClkConfig+0x60>)
20001220:	2206      	movs	r2, #6
20001222:	60da      	str	r2, [r3, #12]
20001224:	4b0e      	ldr	r3, [pc, #56]	; (20001260 <ClkConfig+0x60>)
20001226:	f640 1204 	movw	r2, #2308	; 0x904
2000122a:	605a      	str	r2, [r3, #4]
2000122c:	bf00      	nop
2000122e:	4b0c      	ldr	r3, [pc, #48]	; (20001260 <ClkConfig+0x60>)
20001230:	681b      	ldr	r3, [r3, #0]
20001232:	f003 0302 	and.w	r3, r3, #2
20001236:	2b00      	cmp	r3, #0
20001238:	d0f9      	beq.n	2000122e <ClkConfig+0x2e>
2000123a:	4a09      	ldr	r2, [pc, #36]	; (20001260 <ClkConfig+0x60>)
2000123c:	4b08      	ldr	r3, [pc, #32]	; (20001260 <ClkConfig+0x60>)
2000123e:	68db      	ldr	r3, [r3, #12]
20001240:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001244:	60d3      	str	r3, [r2, #12]
20001246:	4a07      	ldr	r2, [pc, #28]	; (20001264 <ClkConfig+0x64>)
20001248:	4b06      	ldr	r3, [pc, #24]	; (20001264 <ClkConfig+0x64>)
2000124a:	681b      	ldr	r3, [r3, #0]
2000124c:	f043 0320 	orr.w	r3, r3, #32
20001250:	6013      	str	r3, [r2, #0]
20001252:	4b05      	ldr	r3, [pc, #20]	; (20001268 <ClkConfig+0x68>)
20001254:	2200      	movs	r2, #0
20001256:	601a      	str	r2, [r3, #0]
20001258:	bf00      	nop
2000125a:	46bd      	mov	sp, r7
2000125c:	bc80      	pop	{r7}
2000125e:	4770      	bx	lr
20001260:	40020000 	.word	0x40020000
20001264:	40018000 	.word	0x40018000
20001268:	20002800 	.word	0x20002800

2000126c <TimerConfig>:
2000126c:	b580      	push	{r7, lr}
2000126e:	af00      	add	r7, sp, #0
20001270:	4a87      	ldr	r2, [pc, #540]	; (20001490 <TimerConfig+0x224>)
20001272:	4b87      	ldr	r3, [pc, #540]	; (20001490 <TimerConfig+0x224>)
20001274:	69db      	ldr	r3, [r3, #28]
20001276:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
2000127a:	61d3      	str	r3, [r2, #28]
2000127c:	4a84      	ldr	r2, [pc, #528]	; (20001490 <TimerConfig+0x224>)
2000127e:	4b84      	ldr	r3, [pc, #528]	; (20001490 <TimerConfig+0x224>)
20001280:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001282:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
20001286:	6253      	str	r3, [r2, #36]	; 0x24
20001288:	4a81      	ldr	r2, [pc, #516]	; (20001490 <TimerConfig+0x224>)
2000128a:	4b81      	ldr	r3, [pc, #516]	; (20001490 <TimerConfig+0x224>)
2000128c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000128e:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001292:	6253      	str	r3, [r2, #36]	; 0x24
20001294:	4b7f      	ldr	r3, [pc, #508]	; (20001494 <TimerConfig+0x228>)
20001296:	2200      	movs	r2, #0
20001298:	601a      	str	r2, [r3, #0]
2000129a:	4b7e      	ldr	r3, [pc, #504]	; (20001494 <TimerConfig+0x228>)
2000129c:	2217      	movs	r2, #23
2000129e:	605a      	str	r2, [r3, #4]
200012a0:	4b7c      	ldr	r3, [pc, #496]	; (20001494 <TimerConfig+0x228>)
200012a2:	f240 32ff 	movw	r2, #1023	; 0x3ff
200012a6:	609a      	str	r2, [r3, #8]
200012a8:	4a7a      	ldr	r2, [pc, #488]	; (20001494 <TimerConfig+0x228>)
200012aa:	4b7a      	ldr	r3, [pc, #488]	; (20001494 <TimerConfig+0x228>)
200012ac:	6d9b      	ldr	r3, [r3, #88]	; 0x58
200012ae:	f043 0302 	orr.w	r3, r3, #2
200012b2:	6593      	str	r3, [r2, #88]	; 0x58
200012b4:	4b77      	ldr	r3, [pc, #476]	; (20001494 <TimerConfig+0x228>)
200012b6:	2201      	movs	r2, #1
200012b8:	60da      	str	r2, [r3, #12]
200012ba:	4a75      	ldr	r2, [pc, #468]	; (20001490 <TimerConfig+0x224>)
200012bc:	4b74      	ldr	r3, [pc, #464]	; (20001490 <TimerConfig+0x224>)
200012be:	69db      	ldr	r3, [r3, #28]
200012c0:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
200012c4:	61d3      	str	r3, [r2, #28]
200012c6:	4a72      	ldr	r2, [pc, #456]	; (20001490 <TimerConfig+0x224>)
200012c8:	4b71      	ldr	r3, [pc, #452]	; (20001490 <TimerConfig+0x224>)
200012ca:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200012cc:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
200012d0:	6253      	str	r3, [r2, #36]	; 0x24
200012d2:	4a6f      	ldr	r2, [pc, #444]	; (20001490 <TimerConfig+0x224>)
200012d4:	4b6e      	ldr	r3, [pc, #440]	; (20001490 <TimerConfig+0x224>)
200012d6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200012d8:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
200012dc:	6253      	str	r3, [r2, #36]	; 0x24
200012de:	4b6e      	ldr	r3, [pc, #440]	; (20001498 <TimerConfig+0x22c>)
200012e0:	2200      	movs	r2, #0
200012e2:	601a      	str	r2, [r3, #0]
200012e4:	4b6c      	ldr	r3, [pc, #432]	; (20001498 <TimerConfig+0x22c>)
200012e6:	2202      	movs	r2, #2
200012e8:	605a      	str	r2, [r3, #4]
200012ea:	4b6b      	ldr	r3, [pc, #428]	; (20001498 <TimerConfig+0x22c>)
200012ec:	f240 32ff 	movw	r2, #1023	; 0x3ff
200012f0:	609a      	str	r2, [r3, #8]
200012f2:	4b69      	ldr	r3, [pc, #420]	; (20001498 <TimerConfig+0x22c>)
200012f4:	f44f 7200 	mov.w	r2, #512	; 0x200
200012f8:	611a      	str	r2, [r3, #16]
200012fa:	4b67      	ldr	r3, [pc, #412]	; (20001498 <TimerConfig+0x22c>)
200012fc:	f44f 7200 	mov.w	r2, #512	; 0x200
20001300:	615a      	str	r2, [r3, #20]
20001302:	4b65      	ldr	r3, [pc, #404]	; (20001498 <TimerConfig+0x22c>)
20001304:	f44f 7200 	mov.w	r2, #512	; 0x200
20001308:	619a      	str	r2, [r3, #24]
2000130a:	4a63      	ldr	r2, [pc, #396]	; (20001498 <TimerConfig+0x22c>)
2000130c:	4b62      	ldr	r3, [pc, #392]	; (20001498 <TimerConfig+0x22c>)
2000130e:	6a1b      	ldr	r3, [r3, #32]
20001310:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001314:	6213      	str	r3, [r2, #32]
20001316:	4a60      	ldr	r2, [pc, #384]	; (20001498 <TimerConfig+0x22c>)
20001318:	4b5f      	ldr	r3, [pc, #380]	; (20001498 <TimerConfig+0x22c>)
2000131a:	6a1b      	ldr	r3, [r3, #32]
2000131c:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001320:	6213      	str	r3, [r2, #32]
20001322:	4a5d      	ldr	r2, [pc, #372]	; (20001498 <TimerConfig+0x22c>)
20001324:	4b5c      	ldr	r3, [pc, #368]	; (20001498 <TimerConfig+0x22c>)
20001326:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001328:	f023 030f 	bic.w	r3, r3, #15
2000132c:	6313      	str	r3, [r2, #48]	; 0x30
2000132e:	4a5a      	ldr	r2, [pc, #360]	; (20001498 <TimerConfig+0x22c>)
20001330:	4b59      	ldr	r3, [pc, #356]	; (20001498 <TimerConfig+0x22c>)
20001332:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001334:	f043 030c 	orr.w	r3, r3, #12
20001338:	6313      	str	r3, [r2, #48]	; 0x30
2000133a:	4a57      	ldr	r2, [pc, #348]	; (20001498 <TimerConfig+0x22c>)
2000133c:	4b56      	ldr	r3, [pc, #344]	; (20001498 <TimerConfig+0x22c>)
2000133e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001340:	f043 0301 	orr.w	r3, r3, #1
20001344:	6313      	str	r3, [r2, #48]	; 0x30
20001346:	4a54      	ldr	r2, [pc, #336]	; (20001498 <TimerConfig+0x22c>)
20001348:	4b53      	ldr	r3, [pc, #332]	; (20001498 <TimerConfig+0x22c>)
2000134a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000134c:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001350:	6313      	str	r3, [r2, #48]	; 0x30
20001352:	4a51      	ldr	r2, [pc, #324]	; (20001498 <TimerConfig+0x22c>)
20001354:	4b50      	ldr	r3, [pc, #320]	; (20001498 <TimerConfig+0x22c>)
20001356:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001358:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000135c:	6313      	str	r3, [r2, #48]	; 0x30
2000135e:	4a4e      	ldr	r2, [pc, #312]	; (20001498 <TimerConfig+0x22c>)
20001360:	4b4d      	ldr	r3, [pc, #308]	; (20001498 <TimerConfig+0x22c>)
20001362:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001364:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001368:	6313      	str	r3, [r2, #48]	; 0x30
2000136a:	4a4b      	ldr	r2, [pc, #300]	; (20001498 <TimerConfig+0x22c>)
2000136c:	4b4a      	ldr	r3, [pc, #296]	; (20001498 <TimerConfig+0x22c>)
2000136e:	6e1b      	ldr	r3, [r3, #96]	; 0x60
20001370:	f043 0308 	orr.w	r3, r3, #8
20001374:	6613      	str	r3, [r2, #96]	; 0x60
20001376:	4a48      	ldr	r2, [pc, #288]	; (20001498 <TimerConfig+0x22c>)
20001378:	4b47      	ldr	r3, [pc, #284]	; (20001498 <TimerConfig+0x22c>)
2000137a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000137c:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001380:	6253      	str	r3, [r2, #36]	; 0x24
20001382:	4a45      	ldr	r2, [pc, #276]	; (20001498 <TimerConfig+0x22c>)
20001384:	4b44      	ldr	r3, [pc, #272]	; (20001498 <TimerConfig+0x22c>)
20001386:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001388:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
2000138c:	6253      	str	r3, [r2, #36]	; 0x24
2000138e:	4a42      	ldr	r2, [pc, #264]	; (20001498 <TimerConfig+0x22c>)
20001390:	4b41      	ldr	r3, [pc, #260]	; (20001498 <TimerConfig+0x22c>)
20001392:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001394:	f023 030f 	bic.w	r3, r3, #15
20001398:	6353      	str	r3, [r2, #52]	; 0x34
2000139a:	4a3f      	ldr	r2, [pc, #252]	; (20001498 <TimerConfig+0x22c>)
2000139c:	4b3e      	ldr	r3, [pc, #248]	; (20001498 <TimerConfig+0x22c>)
2000139e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013a0:	f043 030c 	orr.w	r3, r3, #12
200013a4:	6353      	str	r3, [r2, #52]	; 0x34
200013a6:	4a3c      	ldr	r2, [pc, #240]	; (20001498 <TimerConfig+0x22c>)
200013a8:	4b3b      	ldr	r3, [pc, #236]	; (20001498 <TimerConfig+0x22c>)
200013aa:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013ac:	f043 0301 	orr.w	r3, r3, #1
200013b0:	6353      	str	r3, [r2, #52]	; 0x34
200013b2:	4a39      	ldr	r2, [pc, #228]	; (20001498 <TimerConfig+0x22c>)
200013b4:	4b38      	ldr	r3, [pc, #224]	; (20001498 <TimerConfig+0x22c>)
200013b6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013b8:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200013bc:	6353      	str	r3, [r2, #52]	; 0x34
200013be:	4a36      	ldr	r2, [pc, #216]	; (20001498 <TimerConfig+0x22c>)
200013c0:	4b35      	ldr	r3, [pc, #212]	; (20001498 <TimerConfig+0x22c>)
200013c2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013c4:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200013c8:	6353      	str	r3, [r2, #52]	; 0x34
200013ca:	4a33      	ldr	r2, [pc, #204]	; (20001498 <TimerConfig+0x22c>)
200013cc:	4b32      	ldr	r3, [pc, #200]	; (20001498 <TimerConfig+0x22c>)
200013ce:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013d0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200013d4:	6353      	str	r3, [r2, #52]	; 0x34
200013d6:	4a30      	ldr	r2, [pc, #192]	; (20001498 <TimerConfig+0x22c>)
200013d8:	4b2f      	ldr	r3, [pc, #188]	; (20001498 <TimerConfig+0x22c>)
200013da:	6e5b      	ldr	r3, [r3, #100]	; 0x64
200013dc:	f043 0308 	orr.w	r3, r3, #8
200013e0:	6653      	str	r3, [r2, #100]	; 0x64
200013e2:	4a2d      	ldr	r2, [pc, #180]	; (20001498 <TimerConfig+0x22c>)
200013e4:	4b2c      	ldr	r3, [pc, #176]	; (20001498 <TimerConfig+0x22c>)
200013e6:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200013e8:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200013ec:	6293      	str	r3, [r2, #40]	; 0x28
200013ee:	4a2a      	ldr	r2, [pc, #168]	; (20001498 <TimerConfig+0x22c>)
200013f0:	4b29      	ldr	r3, [pc, #164]	; (20001498 <TimerConfig+0x22c>)
200013f2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200013f4:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200013f8:	6293      	str	r3, [r2, #40]	; 0x28
200013fa:	4a27      	ldr	r2, [pc, #156]	; (20001498 <TimerConfig+0x22c>)
200013fc:	4b26      	ldr	r3, [pc, #152]	; (20001498 <TimerConfig+0x22c>)
200013fe:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001400:	f023 030f 	bic.w	r3, r3, #15
20001404:	6393      	str	r3, [r2, #56]	; 0x38
20001406:	4a24      	ldr	r2, [pc, #144]	; (20001498 <TimerConfig+0x22c>)
20001408:	4b23      	ldr	r3, [pc, #140]	; (20001498 <TimerConfig+0x22c>)
2000140a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000140c:	f043 030c 	orr.w	r3, r3, #12
20001410:	6393      	str	r3, [r2, #56]	; 0x38
20001412:	4a21      	ldr	r2, [pc, #132]	; (20001498 <TimerConfig+0x22c>)
20001414:	4b20      	ldr	r3, [pc, #128]	; (20001498 <TimerConfig+0x22c>)
20001416:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001418:	f043 0301 	orr.w	r3, r3, #1
2000141c:	6393      	str	r3, [r2, #56]	; 0x38
2000141e:	4a1e      	ldr	r2, [pc, #120]	; (20001498 <TimerConfig+0x22c>)
20001420:	4b1d      	ldr	r3, [pc, #116]	; (20001498 <TimerConfig+0x22c>)
20001422:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001424:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001428:	6393      	str	r3, [r2, #56]	; 0x38
2000142a:	4a1b      	ldr	r2, [pc, #108]	; (20001498 <TimerConfig+0x22c>)
2000142c:	4b1a      	ldr	r3, [pc, #104]	; (20001498 <TimerConfig+0x22c>)
2000142e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001430:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001434:	6393      	str	r3, [r2, #56]	; 0x38
20001436:	4a18      	ldr	r2, [pc, #96]	; (20001498 <TimerConfig+0x22c>)
20001438:	4b17      	ldr	r3, [pc, #92]	; (20001498 <TimerConfig+0x22c>)
2000143a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000143c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001440:	6393      	str	r3, [r2, #56]	; 0x38
20001442:	4a15      	ldr	r2, [pc, #84]	; (20001498 <TimerConfig+0x22c>)
20001444:	4b14      	ldr	r3, [pc, #80]	; (20001498 <TimerConfig+0x22c>)
20001446:	6e9b      	ldr	r3, [r3, #104]	; 0x68
20001448:	f043 0308 	orr.w	r3, r3, #8
2000144c:	6693      	str	r3, [r2, #104]	; 0x68
2000144e:	4a12      	ldr	r2, [pc, #72]	; (20001498 <TimerConfig+0x22c>)
20001450:	4b11      	ldr	r3, [pc, #68]	; (20001498 <TimerConfig+0x22c>)
20001452:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001454:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001458:	6413      	str	r3, [r2, #64]	; 0x40
2000145a:	4a0f      	ldr	r2, [pc, #60]	; (20001498 <TimerConfig+0x22c>)
2000145c:	4b0e      	ldr	r3, [pc, #56]	; (20001498 <TimerConfig+0x22c>)
2000145e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
20001460:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001464:	6453      	str	r3, [r2, #68]	; 0x44
20001466:	4a0c      	ldr	r2, [pc, #48]	; (20001498 <TimerConfig+0x22c>)
20001468:	4b0b      	ldr	r3, [pc, #44]	; (20001498 <TimerConfig+0x22c>)
2000146a:	6c9b      	ldr	r3, [r3, #72]	; 0x48
2000146c:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001470:	6493      	str	r3, [r2, #72]	; 0x48
20001472:	4a09      	ldr	r2, [pc, #36]	; (20001498 <TimerConfig+0x22c>)
20001474:	4b08      	ldr	r3, [pc, #32]	; (20001498 <TimerConfig+0x22c>)
20001476:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001478:	f043 0302 	orr.w	r3, r3, #2
2000147c:	6593      	str	r3, [r2, #88]	; 0x58
2000147e:	2010      	movs	r0, #16
20001480:	f7ff fddc 	bl	2000103c <NVIC_EnableIRQ>
20001484:	4b04      	ldr	r3, [pc, #16]	; (20001498 <TimerConfig+0x22c>)
20001486:	2201      	movs	r2, #1
20001488:	60da      	str	r2, [r3, #12]
2000148a:	bf00      	nop
2000148c:	bd80      	pop	{r7, pc}
2000148e:	bf00      	nop
20001490:	40020000 	.word	0x40020000
20001494:	40070000 	.word	0x40070000
20001498:	40080000 	.word	0x40080000

2000149c <set_ram_vt>:
2000149c:	b480      	push	{r7}
2000149e:	b085      	sub	sp, #20
200014a0:	af00      	add	r7, sp, #0
200014a2:	2300      	movs	r3, #0
200014a4:	60fb      	str	r3, [r7, #12]
200014a6:	2300      	movs	r3, #0
200014a8:	607b      	str	r3, [r7, #4]
200014aa:	4b14      	ldr	r3, [pc, #80]	; (200014fc <set_ram_vt+0x60>)
200014ac:	60bb      	str	r3, [r7, #8]
200014ae:	2300      	movs	r3, #0
200014b0:	60fb      	str	r3, [r7, #12]
200014b2:	e00b      	b.n	200014cc <set_ram_vt+0x30>
200014b4:	68bb      	ldr	r3, [r7, #8]
200014b6:	1d1a      	adds	r2, r3, #4
200014b8:	60ba      	str	r2, [r7, #8]
200014ba:	68fa      	ldr	r2, [r7, #12]
200014bc:	0092      	lsls	r2, r2, #2
200014be:	6879      	ldr	r1, [r7, #4]
200014c0:	440a      	add	r2, r1
200014c2:	6812      	ldr	r2, [r2, #0]
200014c4:	601a      	str	r2, [r3, #0]
200014c6:	68fb      	ldr	r3, [r7, #12]
200014c8:	3301      	adds	r3, #1
200014ca:	60fb      	str	r3, [r7, #12]
200014cc:	68fb      	ldr	r3, [r7, #12]
200014ce:	2b2f      	cmp	r3, #47	; 0x2f
200014d0:	d9f0      	bls.n	200014b4 <set_ram_vt+0x18>
200014d2:	4b0b      	ldr	r3, [pc, #44]	; (20001500 <set_ram_vt+0x64>)
200014d4:	4a09      	ldr	r2, [pc, #36]	; (200014fc <set_ram_vt+0x60>)
200014d6:	609a      	str	r2, [r3, #8]
200014d8:	4b08      	ldr	r3, [pc, #32]	; (200014fc <set_ram_vt+0x60>)
200014da:	4a0a      	ldr	r2, [pc, #40]	; (20001504 <set_ram_vt+0x68>)
200014dc:	63da      	str	r2, [r3, #60]	; 0x3c
200014de:	4b07      	ldr	r3, [pc, #28]	; (200014fc <set_ram_vt+0x60>)
200014e0:	4a09      	ldr	r2, [pc, #36]	; (20001508 <set_ram_vt+0x6c>)
200014e2:	659a      	str	r2, [r3, #88]	; 0x58
200014e4:	4b05      	ldr	r3, [pc, #20]	; (200014fc <set_ram_vt+0x60>)
200014e6:	4a09      	ldr	r2, [pc, #36]	; (2000150c <set_ram_vt+0x70>)
200014e8:	679a      	str	r2, [r3, #120]	; 0x78
200014ea:	4b04      	ldr	r3, [pc, #16]	; (200014fc <set_ram_vt+0x60>)
200014ec:	4a08      	ldr	r2, [pc, #32]	; (20001510 <set_ram_vt+0x74>)
200014ee:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
200014f2:	bf00      	nop
200014f4:	3714      	adds	r7, #20
200014f6:	46bd      	mov	sp, r7
200014f8:	bc80      	pop	{r7}
200014fa:	4770      	bx	lr
200014fc:	20002900 	.word	0x20002900
20001500:	e000ed00 	.word	0xe000ed00
20001504:	200015cd 	.word	0x200015cd
20001508:	200015e9 	.word	0x200015e9
2000150c:	20000411 	.word	0x20000411
20001510:	2000041d 	.word	0x2000041d

20001514 <uart_init>:
20001514:	b480      	push	{r7}
20001516:	af00      	add	r7, sp, #0
20001518:	4b22      	ldr	r3, [pc, #136]	; (200015a4 <uart_init+0x90>)
2000151a:	2200      	movs	r2, #0
2000151c:	601a      	str	r2, [r3, #0]
2000151e:	4a22      	ldr	r2, [pc, #136]	; (200015a8 <uart_init+0x94>)
20001520:	4b21      	ldr	r3, [pc, #132]	; (200015a8 <uart_init+0x94>)
20001522:	69db      	ldr	r3, [r3, #28]
20001524:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001528:	61d3      	str	r3, [r2, #28]
2000152a:	4a1f      	ldr	r2, [pc, #124]	; (200015a8 <uart_init+0x94>)
2000152c:	4b1e      	ldr	r3, [pc, #120]	; (200015a8 <uart_init+0x94>)
2000152e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001530:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001534:	6293      	str	r3, [r2, #40]	; 0x28
20001536:	4b1d      	ldr	r3, [pc, #116]	; (200015ac <uart_init+0x98>)
20001538:	2204      	movs	r2, #4
2000153a:	625a      	str	r2, [r3, #36]	; 0x24
2000153c:	4b1b      	ldr	r3, [pc, #108]	; (200015ac <uart_init+0x98>)
2000153e:	2200      	movs	r2, #0
20001540:	629a      	str	r2, [r3, #40]	; 0x28
20001542:	4a1a      	ldr	r2, [pc, #104]	; (200015ac <uart_init+0x98>)
20001544:	4b19      	ldr	r3, [pc, #100]	; (200015ac <uart_init+0x98>)
20001546:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001548:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
2000154c:	6353      	str	r3, [r2, #52]	; 0x34
2000154e:	4a17      	ldr	r2, [pc, #92]	; (200015ac <uart_init+0x98>)
20001550:	4b16      	ldr	r3, [pc, #88]	; (200015ac <uart_init+0x98>)
20001552:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001554:	f043 0311 	orr.w	r3, r3, #17
20001558:	6353      	str	r3, [r2, #52]	; 0x34
2000155a:	4a14      	ldr	r2, [pc, #80]	; (200015ac <uart_init+0x98>)
2000155c:	4b13      	ldr	r3, [pc, #76]	; (200015ac <uart_init+0x98>)
2000155e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001560:	f043 0310 	orr.w	r3, r3, #16
20001564:	62d3      	str	r3, [r2, #44]	; 0x2c
20001566:	4a11      	ldr	r2, [pc, #68]	; (200015ac <uart_init+0x98>)
20001568:	4b10      	ldr	r3, [pc, #64]	; (200015ac <uart_init+0x98>)
2000156a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
2000156c:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001570:	62d3      	str	r3, [r2, #44]	; 0x2c
20001572:	4a0e      	ldr	r2, [pc, #56]	; (200015ac <uart_init+0x98>)
20001574:	4b0d      	ldr	r3, [pc, #52]	; (200015ac <uart_init+0x98>)
20001576:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001578:	f443 7340 	orr.w	r3, r3, #768	; 0x300
2000157c:	f043 0301 	orr.w	r3, r3, #1
20001580:	6313      	str	r3, [r2, #48]	; 0x30
20001582:	4a0a      	ldr	r2, [pc, #40]	; (200015ac <uart_init+0x98>)
20001584:	4b09      	ldr	r3, [pc, #36]	; (200015ac <uart_init+0x98>)
20001586:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001588:	f043 0310 	orr.w	r3, r3, #16
2000158c:	6393      	str	r3, [r2, #56]	; 0x38
2000158e:	4a07      	ldr	r2, [pc, #28]	; (200015ac <uart_init+0x98>)
20001590:	4b06      	ldr	r3, [pc, #24]	; (200015ac <uart_init+0x98>)
20001592:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001594:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001598:	6393      	str	r3, [r2, #56]	; 0x38
2000159a:	bf00      	nop
2000159c:	46bd      	mov	sp, r7
2000159e:	bc80      	pop	{r7}
200015a0:	4770      	bx	lr
200015a2:	bf00      	nop
200015a4:	200029d0 	.word	0x200029d0
200015a8:	40020000 	.word	0x40020000
200015ac:	40030000 	.word	0x40030000

200015b0 <system_init>:
200015b0:	b580      	push	{r7, lr}
200015b2:	af00      	add	r7, sp, #0
200015b4:	f7ff ff72 	bl	2000149c <set_ram_vt>
200015b8:	f7ff fe22 	bl	20001200 <ClkConfig>
200015bc:	f7ff fd56 	bl	2000106c <PortConfig>
200015c0:	f7ff fe54 	bl	2000126c <TimerConfig>
200015c4:	f7ff ffa6 	bl	20001514 <uart_init>
200015c8:	bf00      	nop
200015ca:	bd80      	pop	{r7, pc}

200015cc <SysTick_Handler>:
200015cc:	b480      	push	{r7}
200015ce:	af00      	add	r7, sp, #0
200015d0:	4b04      	ldr	r3, [pc, #16]	; (200015e4 <SysTick_Handler+0x18>)
200015d2:	681b      	ldr	r3, [r3, #0]
200015d4:	3301      	adds	r3, #1
200015d6:	4a03      	ldr	r2, [pc, #12]	; (200015e4 <SysTick_Handler+0x18>)
200015d8:	6013      	str	r3, [r2, #0]
200015da:	bf00      	nop
200015dc:	46bd      	mov	sp, r7
200015de:	bc80      	pop	{r7}
200015e0:	4770      	bx	lr
200015e2:	bf00      	nop
200015e4:	20002800 	.word	0x20002800

200015e8 <UART1_Handler>:
200015e8:	b480      	push	{r7}
200015ea:	b083      	sub	sp, #12
200015ec:	af00      	add	r7, sp, #0
200015ee:	4b1d      	ldr	r3, [pc, #116]	; (20001664 <UART1_Handler+0x7c>)
200015f0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200015f2:	f003 0310 	and.w	r3, r3, #16
200015f6:	2b00      	cmp	r3, #0
200015f8:	d01f      	beq.n	2000163a <UART1_Handler+0x52>
200015fa:	e002      	b.n	20001602 <UART1_Handler+0x1a>
200015fc:	4b19      	ldr	r3, [pc, #100]	; (20001664 <UART1_Handler+0x7c>)
200015fe:	681b      	ldr	r3, [r3, #0]
20001600:	71fb      	strb	r3, [r7, #7]
20001602:	4b18      	ldr	r3, [pc, #96]	; (20001664 <UART1_Handler+0x7c>)
20001604:	699b      	ldr	r3, [r3, #24]
20001606:	f003 0310 	and.w	r3, r3, #16
2000160a:	2b00      	cmp	r3, #0
2000160c:	d0f6      	beq.n	200015fc <UART1_Handler+0x14>
2000160e:	4b16      	ldr	r3, [pc, #88]	; (20001668 <UART1_Handler+0x80>)
20001610:	681b      	ldr	r3, [r3, #0]
20001612:	80bb      	strh	r3, [r7, #4]
20001614:	4b14      	ldr	r3, [pc, #80]	; (20001668 <UART1_Handler+0x80>)
20001616:	689b      	ldr	r3, [r3, #8]
20001618:	085b      	lsrs	r3, r3, #1
2000161a:	807b      	strh	r3, [r7, #2]
2000161c:	88ba      	ldrh	r2, [r7, #4]
2000161e:	887b      	ldrh	r3, [r7, #2]
20001620:	429a      	cmp	r2, r3
20001622:	d205      	bcs.n	20001630 <UART1_Handler+0x48>
20001624:	4a10      	ldr	r2, [pc, #64]	; (20001668 <UART1_Handler+0x80>)
20001626:	4b10      	ldr	r3, [pc, #64]	; (20001668 <UART1_Handler+0x80>)
20001628:	681b      	ldr	r3, [r3, #0]
2000162a:	3b01      	subs	r3, #1
2000162c:	6013      	str	r3, [r2, #0]
2000162e:	e004      	b.n	2000163a <UART1_Handler+0x52>
20001630:	4a0d      	ldr	r2, [pc, #52]	; (20001668 <UART1_Handler+0x80>)
20001632:	4b0d      	ldr	r3, [pc, #52]	; (20001668 <UART1_Handler+0x80>)
20001634:	681b      	ldr	r3, [r3, #0]
20001636:	3301      	adds	r3, #1
20001638:	6013      	str	r3, [r2, #0]
2000163a:	4b0a      	ldr	r3, [pc, #40]	; (20001664 <UART1_Handler+0x7c>)
2000163c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000163e:	f003 0340 	and.w	r3, r3, #64	; 0x40
20001642:	2b00      	cmp	r3, #0
20001644:	d009      	beq.n	2000165a <UART1_Handler+0x72>
20001646:	e002      	b.n	2000164e <UART1_Handler+0x66>
20001648:	4b06      	ldr	r3, [pc, #24]	; (20001664 <UART1_Handler+0x7c>)
2000164a:	681b      	ldr	r3, [r3, #0]
2000164c:	707b      	strb	r3, [r7, #1]
2000164e:	4b05      	ldr	r3, [pc, #20]	; (20001664 <UART1_Handler+0x7c>)
20001650:	699b      	ldr	r3, [r3, #24]
20001652:	f003 0310 	and.w	r3, r3, #16
20001656:	2b00      	cmp	r3, #0
20001658:	d0f6      	beq.n	20001648 <UART1_Handler+0x60>
2000165a:	bf00      	nop
2000165c:	370c      	adds	r7, #12
2000165e:	46bd      	mov	sp, r7
20001660:	bc80      	pop	{r7}
20001662:	4770      	bx	lr
20001664:	40030000 	.word	0x40030000
20001668:	40070000 	.word	0x40070000
