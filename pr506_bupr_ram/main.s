
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
2000002e:	f001 fb13 	bl	20001658 <system_init>
20000032:	f000 f95f 	bl	200002f4 <ssi_init>
20000036:	f000 f9d1 	bl	200003dc <dac_init>
2000003a:	f000 fffd 	bl	20001038 <adc_dma_init>
2000003e:	f107 0344 	add.w	r3, r7, #68	; 0x44
20000042:	22c8      	movs	r2, #200	; 0xc8
20000044:	2150      	movs	r1, #80	; 0x50
20000046:	4618      	mov	r0, r3
20000048:	f000 fb36 	bl	200006b8 <reg_init>
2000004c:	f107 0334 	add.w	r3, r7, #52	; 0x34
20000050:	22c8      	movs	r2, #200	; 0xc8
20000052:	2150      	movs	r1, #80	; 0x50
20000054:	4618      	mov	r0, r3
20000056:	f000 fb2f 	bl	200006b8 <reg_init>
2000005a:	f107 0324 	add.w	r3, r7, #36	; 0x24
2000005e:	f241 3288 	movw	r2, #5000	; 0x1388
20000062:	2100      	movs	r1, #0
20000064:	4618      	mov	r0, r3
20000066:	f000 fb27 	bl	200006b8 <reg_init>
2000006a:	f107 0314 	add.w	r3, r7, #20
2000006e:	f241 7270 	movw	r2, #6000	; 0x1770
20000072:	2100      	movs	r1, #0
20000074:	4618      	mov	r0, r3
20000076:	f000 fb1f 	bl	200006b8 <reg_init>
2000007a:	2300      	movs	r3, #0
2000007c:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
20000080:	2300      	movs	r3, #0
20000082:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
20000086:	4b7f      	ldr	r3, [pc, #508]	; (20000284 <main+0x284>)
20000088:	2200      	movs	r2, #0
2000008a:	601a      	str	r2, [r3, #0]
2000008c:	2300      	movs	r3, #0
2000008e:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000092:	e024      	b.n	200000de <main+0xde>
20000094:	f000 ffec 	bl	20001070 <adc_dma_wait>
20000098:	4b7b      	ldr	r3, [pc, #492]	; (20000288 <main+0x288>)
2000009a:	685b      	ldr	r3, [r3, #4]
2000009c:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000a0:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
200000a4:	4413      	add	r3, r2
200000a6:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
200000aa:	4b77      	ldr	r3, [pc, #476]	; (20000288 <main+0x288>)
200000ac:	681b      	ldr	r3, [r3, #0]
200000ae:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000b2:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
200000b6:	4413      	add	r3, r2
200000b8:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
200000bc:	4b73      	ldr	r3, [pc, #460]	; (2000028c <main+0x28c>)
200000be:	689b      	ldr	r3, [r3, #8]
200000c0:	4618      	mov	r0, r3
200000c2:	f000 f961 	bl	20000388 <enc_crc>
200000c6:	4602      	mov	r2, r0
200000c8:	4b6e      	ldr	r3, [pc, #440]	; (20000284 <main+0x284>)
200000ca:	681b      	ldr	r3, [r3, #0]
200000cc:	4413      	add	r3, r2
200000ce:	461a      	mov	r2, r3
200000d0:	4b6c      	ldr	r3, [pc, #432]	; (20000284 <main+0x284>)
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
200000fc:	4b61      	ldr	r3, [pc, #388]	; (20000284 <main+0x284>)
200000fe:	681b      	ldr	r3, [r3, #0]
20000100:	129b      	asrs	r3, r3, #10
20000102:	4a60      	ldr	r2, [pc, #384]	; (20000284 <main+0x284>)
20000104:	6013      	str	r3, [r2, #0]
20000106:	4b62      	ldr	r3, [pc, #392]	; (20000290 <main+0x290>)
20000108:	2200      	movs	r2, #0
2000010a:	601a      	str	r2, [r3, #0]
2000010c:	4b5d      	ldr	r3, [pc, #372]	; (20000284 <main+0x284>)
2000010e:	681b      	ldr	r3, [r3, #0]
20000110:	4a60      	ldr	r2, [pc, #384]	; (20000294 <main+0x294>)
20000112:	6013      	str	r3, [r2, #0]
20000114:	4b5b      	ldr	r3, [pc, #364]	; (20000284 <main+0x284>)
20000116:	681b      	ldr	r3, [r3, #0]
20000118:	4618      	mov	r0, r3
2000011a:	f000 fe8b 	bl	20000e34 <encoder_init>
2000011e:	f000 ffa7 	bl	20001070 <adc_dma_wait>
20000122:	4b59      	ldr	r3, [pc, #356]	; (20000288 <main+0x288>)
20000124:	685b      	ldr	r3, [r3, #4]
20000126:	f3c3 020b 	ubfx	r2, r3, #0, #12
2000012a:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
2000012e:	1ad3      	subs	r3, r2, r3
20000130:	66fb      	str	r3, [r7, #108]	; 0x6c
20000132:	4b55      	ldr	r3, [pc, #340]	; (20000288 <main+0x288>)
20000134:	681b      	ldr	r3, [r3, #0]
20000136:	f3c3 020b 	ubfx	r2, r3, #0, #12
2000013a:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
2000013e:	1ad3      	subs	r3, r2, r3
20000140:	66bb      	str	r3, [r7, #104]	; 0x68
20000142:	6efa      	ldr	r2, [r7, #108]	; 0x6c
20000144:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20000146:	4413      	add	r3, r2
20000148:	667b      	str	r3, [r7, #100]	; 0x64
2000014a:	4b50      	ldr	r3, [pc, #320]	; (2000028c <main+0x28c>)
2000014c:	689b      	ldr	r3, [r3, #8]
2000014e:	4618      	mov	r0, r3
20000150:	f000 f91a 	bl	20000388 <enc_crc>
20000154:	6638      	str	r0, [r7, #96]	; 0x60
20000156:	6e3b      	ldr	r3, [r7, #96]	; 0x60
20000158:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000015c:	673b      	str	r3, [r7, #112]	; 0x70
2000015e:	4a4e      	ldr	r2, [pc, #312]	; (20000298 <main+0x298>)
20000160:	6e3b      	ldr	r3, [r7, #96]	; 0x60
20000162:	6013      	str	r3, [r2, #0]
20000164:	4b4d      	ldr	r3, [pc, #308]	; (2000029c <main+0x29c>)
20000166:	681b      	ldr	r3, [r3, #0]
20000168:	3301      	adds	r3, #1
2000016a:	4a4c      	ldr	r2, [pc, #304]	; (2000029c <main+0x29c>)
2000016c:	6013      	str	r3, [r2, #0]
2000016e:	4b4b      	ldr	r3, [pc, #300]	; (2000029c <main+0x29c>)
20000170:	681b      	ldr	r3, [r3, #0]
20000172:	f003 0307 	and.w	r3, r3, #7
20000176:	2b00      	cmp	r3, #0
20000178:	d13c      	bne.n	200001f4 <main+0x1f4>
2000017a:	f000 fa43 	bl	20000604 <update_refposition>
2000017e:	4602      	mov	r2, r0
20000180:	4b40      	ldr	r3, [pc, #256]	; (20000284 <main+0x284>)
20000182:	681b      	ldr	r3, [r3, #0]
20000184:	4413      	add	r3, r2
20000186:	4a42      	ldr	r2, [pc, #264]	; (20000290 <main+0x290>)
20000188:	6013      	str	r3, [r2, #0]
2000018a:	6e3b      	ldr	r3, [r7, #96]	; 0x60
2000018c:	4941      	ldr	r1, [pc, #260]	; (20000294 <main+0x294>)
2000018e:	4618      	mov	r0, r3
20000190:	f000 fe56 	bl	20000e40 <get_speed>
20000194:	65f8      	str	r0, [r7, #92]	; 0x5c
20000196:	4b3b      	ldr	r3, [pc, #236]	; (20000284 <main+0x284>)
20000198:	681a      	ldr	r2, [r3, #0]
2000019a:	4b3e      	ldr	r3, [pc, #248]	; (20000294 <main+0x294>)
2000019c:	681b      	ldr	r3, [r3, #0]
2000019e:	1ad3      	subs	r3, r2, r3
200001a0:	4618      	mov	r0, r3
200001a2:	f000 f87f 	bl	200002a4 <debug_signal>
200001a6:	4b3a      	ldr	r3, [pc, #232]	; (20000290 <main+0x290>)
200001a8:	681a      	ldr	r2, [r3, #0]
200001aa:	4b3a      	ldr	r3, [pc, #232]	; (20000294 <main+0x294>)
200001ac:	681b      	ldr	r3, [r3, #0]
200001ae:	1ad1      	subs	r1, r2, r3
200001b0:	f107 0314 	add.w	r3, r7, #20
200001b4:	2200      	movs	r2, #0
200001b6:	4618      	mov	r0, r3
200001b8:	f000 fa84 	bl	200006c4 <reg_update>
200001bc:	6a3b      	ldr	r3, [r7, #32]
200001be:	131b      	asrs	r3, r3, #12
200001c0:	677b      	str	r3, [r7, #116]	; 0x74
200001c2:	6f7a      	ldr	r2, [r7, #116]	; 0x74
200001c4:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
200001c6:	1ad1      	subs	r1, r2, r3
200001c8:	f107 0324 	add.w	r3, r7, #36	; 0x24
200001cc:	2200      	movs	r2, #0
200001ce:	4618      	mov	r0, r3
200001d0:	f000 fa78 	bl	200006c4 <reg_update>
200001d4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
200001d6:	131b      	asrs	r3, r3, #12
200001d8:	67fb      	str	r3, [r7, #124]	; 0x7c
200001da:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
200001dc:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
200001e0:	dd02      	ble.n	200001e8 <main+0x1e8>
200001e2:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
200001e6:	67fb      	str	r3, [r7, #124]	; 0x7c
200001e8:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
200001ea:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
200001ee:	da01      	bge.n	200001f4 <main+0x1f4>
200001f0:	4b2b      	ldr	r3, [pc, #172]	; (200002a0 <main+0x2a0>)
200001f2:	67fb      	str	r3, [r7, #124]	; 0x7c
200001f4:	f000 f978 	bl	200004e8 <update_telemetry>
200001f8:	6f3b      	ldr	r3, [r7, #112]	; 0x70
200001fa:	f503 732f 	add.w	r3, r3, #700	; 0x2bc
200001fe:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000202:	673b      	str	r3, [r7, #112]	; 0x70
20000204:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20000206:	603b      	str	r3, [r7, #0]
20000208:	6e7b      	ldr	r3, [r7, #100]	; 0x64
2000020a:	607b      	str	r3, [r7, #4]
2000020c:	6ebb      	ldr	r3, [r7, #104]	; 0x68
2000020e:	60bb      	str	r3, [r7, #8]
20000210:	6f3a      	ldr	r2, [r7, #112]	; 0x70
20000212:	f107 010c 	add.w	r1, r7, #12
20000216:	463b      	mov	r3, r7
20000218:	4618      	mov	r0, r3
2000021a:	f000 fa79 	bl	20000710 <abc_to_dq>
2000021e:	68fb      	ldr	r3, [r7, #12]
20000220:	425b      	negs	r3, r3
20000222:	65bb      	str	r3, [r7, #88]	; 0x58
20000224:	693b      	ldr	r3, [r7, #16]
20000226:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
20000228:	1ad3      	subs	r3, r2, r3
2000022a:	657b      	str	r3, [r7, #84]	; 0x54
2000022c:	f107 0344 	add.w	r3, r7, #68	; 0x44
20000230:	f8d7 2080 	ldr.w	r2, [r7, #128]	; 0x80
20000234:	6db9      	ldr	r1, [r7, #88]	; 0x58
20000236:	4618      	mov	r0, r3
20000238:	f000 fa44 	bl	200006c4 <reg_update>
2000023c:	f107 0334 	add.w	r3, r7, #52	; 0x34
20000240:	f8d7 2080 	ldr.w	r2, [r7, #128]	; 0x80
20000244:	6d79      	ldr	r1, [r7, #84]	; 0x54
20000246:	4618      	mov	r0, r3
20000248:	f000 fa3c 	bl	200006c4 <reg_update>
2000024c:	6d3b      	ldr	r3, [r7, #80]	; 0x50
2000024e:	109b      	asrs	r3, r3, #2
20000250:	60fb      	str	r3, [r7, #12]
20000252:	6c3b      	ldr	r3, [r7, #64]	; 0x40
20000254:	109b      	asrs	r3, r3, #2
20000256:	613b      	str	r3, [r7, #16]
20000258:	6f3a      	ldr	r2, [r7, #112]	; 0x70
2000025a:	f107 010c 	add.w	r1, r7, #12
2000025e:	463b      	mov	r3, r7
20000260:	4618      	mov	r0, r3
20000262:	f000 fc6d 	bl	20000b40 <svpwm>
20000266:	f8c7 0080 	str.w	r0, [r7, #128]	; 0x80
2000026a:	683b      	ldr	r3, [r7, #0]
2000026c:	4618      	mov	r0, r3
2000026e:	f000 f90b 	bl	20000488 <pwm_seta>
20000272:	687b      	ldr	r3, [r7, #4]
20000274:	4618      	mov	r0, r3
20000276:	f000 f917 	bl	200004a8 <pwm_setb>
2000027a:	68bb      	ldr	r3, [r7, #8]
2000027c:	4618      	mov	r0, r3
2000027e:	f000 f923 	bl	200004c8 <pwm_setc>
20000282:	e74c      	b.n	2000011e <main+0x11e>
20000284:	2000280c 	.word	0x2000280c
20000288:	20002e00 	.word	0x20002e00
2000028c:	40040000 	.word	0x40040000
20000290:	20002800 	.word	0x20002800
20000294:	20002824 	.word	0x20002824
20000298:	20002828 	.word	0x20002828
2000029c:	20002814 	.word	0x20002814
200002a0:	fffffc18 	.word	0xfffffc18

200002a4 <debug_signal>:
200002a4:	b480      	push	{r7}
200002a6:	b083      	sub	sp, #12
200002a8:	af00      	add	r7, sp, #0
200002aa:	6078      	str	r0, [r7, #4]
200002ac:	4a04      	ldr	r2, [pc, #16]	; (200002c0 <debug_signal+0x1c>)
200002ae:	687b      	ldr	r3, [r7, #4]
200002b0:	f503 6300 	add.w	r3, r3, #2048	; 0x800
200002b4:	6093      	str	r3, [r2, #8]
200002b6:	bf00      	nop
200002b8:	370c      	adds	r7, #12
200002ba:	46bd      	mov	sp, r7
200002bc:	bc80      	pop	{r7}
200002be:	4770      	bx	lr
200002c0:	40090000 	.word	0x40090000

200002c4 <sleep>:
200002c4:	b480      	push	{r7}
200002c6:	b085      	sub	sp, #20
200002c8:	af00      	add	r7, sp, #0
200002ca:	6078      	str	r0, [r7, #4]
200002cc:	4b08      	ldr	r3, [pc, #32]	; (200002f0 <sleep+0x2c>)
200002ce:	681a      	ldr	r2, [r3, #0]
200002d0:	687b      	ldr	r3, [r7, #4]
200002d2:	4413      	add	r3, r2
200002d4:	60fb      	str	r3, [r7, #12]
200002d6:	bf00      	nop
200002d8:	4b05      	ldr	r3, [pc, #20]	; (200002f0 <sleep+0x2c>)
200002da:	681a      	ldr	r2, [r3, #0]
200002dc:	68fb      	ldr	r3, [r7, #12]
200002de:	429a      	cmp	r2, r3
200002e0:	d3fa      	bcc.n	200002d8 <sleep+0x14>
200002e2:	bf00      	nop
200002e4:	4618      	mov	r0, r3
200002e6:	3714      	adds	r7, #20
200002e8:	46bd      	mov	sp, r7
200002ea:	bc80      	pop	{r7}
200002ec:	4770      	bx	lr
200002ee:	bf00      	nop
200002f0:	20002900 	.word	0x20002900

200002f4 <ssi_init>:
200002f4:	b480      	push	{r7}
200002f6:	af00      	add	r7, sp, #0
200002f8:	4a0c      	ldr	r2, [pc, #48]	; (2000032c <ssi_init+0x38>)
200002fa:	4b0c      	ldr	r3, [pc, #48]	; (2000032c <ssi_init+0x38>)
200002fc:	69db      	ldr	r3, [r3, #28]
200002fe:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20000302:	61d3      	str	r3, [r2, #28]
20000304:	4b09      	ldr	r3, [pc, #36]	; (2000032c <ssi_init+0x38>)
20000306:	4a0a      	ldr	r2, [pc, #40]	; (20000330 <ssi_init+0x3c>)
20000308:	62da      	str	r2, [r3, #44]	; 0x2c
2000030a:	4b0a      	ldr	r3, [pc, #40]	; (20000334 <ssi_init+0x40>)
2000030c:	2200      	movs	r2, #0
2000030e:	605a      	str	r2, [r3, #4]
20000310:	4b08      	ldr	r3, [pc, #32]	; (20000334 <ssi_init+0x40>)
20000312:	220a      	movs	r2, #10
20000314:	611a      	str	r2, [r3, #16]
20000316:	4b07      	ldr	r3, [pc, #28]	; (20000334 <ssi_init+0x40>)
20000318:	f240 221f 	movw	r2, #543	; 0x21f
2000031c:	601a      	str	r2, [r3, #0]
2000031e:	4b05      	ldr	r3, [pc, #20]	; (20000334 <ssi_init+0x40>)
20000320:	2202      	movs	r2, #2
20000322:	605a      	str	r2, [r3, #4]
20000324:	bf00      	nop
20000326:	46bd      	mov	sp, r7
20000328:	bc80      	pop	{r7}
2000032a:	4770      	bx	lr
2000032c:	40020000 	.word	0x40020000
20000330:	0100000a 	.word	0x0100000a
20000334:	40040000 	.word	0x40040000

20000338 <b2g>:
20000338:	b480      	push	{r7}
2000033a:	b083      	sub	sp, #12
2000033c:	af00      	add	r7, sp, #0
2000033e:	6078      	str	r0, [r7, #4]
20000340:	687b      	ldr	r3, [r7, #4]
20000342:	085a      	lsrs	r2, r3, #1
20000344:	687b      	ldr	r3, [r7, #4]
20000346:	4053      	eors	r3, r2
20000348:	4618      	mov	r0, r3
2000034a:	370c      	adds	r7, #12
2000034c:	46bd      	mov	sp, r7
2000034e:	bc80      	pop	{r7}
20000350:	4770      	bx	lr
20000352:	bf00      	nop

20000354 <g2b>:
20000354:	b480      	push	{r7}
20000356:	b085      	sub	sp, #20
20000358:	af00      	add	r7, sp, #0
2000035a:	6078      	str	r0, [r7, #4]
2000035c:	2300      	movs	r3, #0
2000035e:	60fb      	str	r3, [r7, #12]
20000360:	2300      	movs	r3, #0
20000362:	60fb      	str	r3, [r7, #12]
20000364:	e006      	b.n	20000374 <g2b+0x20>
20000366:	68fa      	ldr	r2, [r7, #12]
20000368:	687b      	ldr	r3, [r7, #4]
2000036a:	4053      	eors	r3, r2
2000036c:	60fb      	str	r3, [r7, #12]
2000036e:	687b      	ldr	r3, [r7, #4]
20000370:	085b      	lsrs	r3, r3, #1
20000372:	607b      	str	r3, [r7, #4]
20000374:	687b      	ldr	r3, [r7, #4]
20000376:	2b00      	cmp	r3, #0
20000378:	d1f5      	bne.n	20000366 <g2b+0x12>
2000037a:	68fb      	ldr	r3, [r7, #12]
2000037c:	4618      	mov	r0, r3
2000037e:	3714      	adds	r7, #20
20000380:	46bd      	mov	sp, r7
20000382:	bc80      	pop	{r7}
20000384:	4770      	bx	lr
20000386:	bf00      	nop

20000388 <enc_crc>:
20000388:	b480      	push	{r7}
2000038a:	b085      	sub	sp, #20
2000038c:	af00      	add	r7, sp, #0
2000038e:	6078      	str	r0, [r7, #4]
20000390:	687b      	ldr	r3, [r7, #4]
20000392:	60bb      	str	r3, [r7, #8]
20000394:	2300      	movs	r3, #0
20000396:	60fb      	str	r3, [r7, #12]
20000398:	e006      	b.n	200003a8 <enc_crc+0x20>
2000039a:	68fa      	ldr	r2, [r7, #12]
2000039c:	68bb      	ldr	r3, [r7, #8]
2000039e:	4053      	eors	r3, r2
200003a0:	60fb      	str	r3, [r7, #12]
200003a2:	68bb      	ldr	r3, [r7, #8]
200003a4:	085b      	lsrs	r3, r3, #1
200003a6:	60bb      	str	r3, [r7, #8]
200003a8:	68bb      	ldr	r3, [r7, #8]
200003aa:	2b00      	cmp	r3, #0
200003ac:	d1f5      	bne.n	2000039a <enc_crc+0x12>
200003ae:	68fb      	ldr	r3, [r7, #12]
200003b0:	f003 0301 	and.w	r3, r3, #1
200003b4:	2b00      	cmp	r3, #0
200003b6:	d107      	bne.n	200003c8 <enc_crc+0x40>
200003b8:	687b      	ldr	r3, [r7, #4]
200003ba:	f3c3 030b 	ubfx	r3, r3, #0, #12
200003be:	4a06      	ldr	r2, [pc, #24]	; (200003d8 <enc_crc+0x50>)
200003c0:	6013      	str	r3, [r2, #0]
200003c2:	4b05      	ldr	r3, [pc, #20]	; (200003d8 <enc_crc+0x50>)
200003c4:	681b      	ldr	r3, [r3, #0]
200003c6:	2b00      	cmp	r3, #0
200003c8:	4b03      	ldr	r3, [pc, #12]	; (200003d8 <enc_crc+0x50>)
200003ca:	681b      	ldr	r3, [r3, #0]
200003cc:	4618      	mov	r0, r3
200003ce:	3714      	adds	r7, #20
200003d0:	46bd      	mov	sp, r7
200003d2:	bc80      	pop	{r7}
200003d4:	4770      	bx	lr
200003d6:	bf00      	nop
200003d8:	20002834 	.word	0x20002834

200003dc <dac_init>:
200003dc:	b480      	push	{r7}
200003de:	af00      	add	r7, sp, #0
200003e0:	4a07      	ldr	r2, [pc, #28]	; (20000400 <dac_init+0x24>)
200003e2:	4b07      	ldr	r3, [pc, #28]	; (20000400 <dac_init+0x24>)
200003e4:	69db      	ldr	r3, [r3, #28]
200003e6:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
200003ea:	61d3      	str	r3, [r2, #28]
200003ec:	4a05      	ldr	r2, [pc, #20]	; (20000404 <dac_init+0x28>)
200003ee:	4b05      	ldr	r3, [pc, #20]	; (20000404 <dac_init+0x28>)
200003f0:	681b      	ldr	r3, [r3, #0]
200003f2:	f043 0308 	orr.w	r3, r3, #8
200003f6:	6013      	str	r3, [r2, #0]
200003f8:	bf00      	nop
200003fa:	46bd      	mov	sp, r7
200003fc:	bc80      	pop	{r7}
200003fe:	4770      	bx	lr
20000400:	40020000 	.word	0x40020000
20000404:	40090000 	.word	0x40090000

20000408 <encoder_start>:
20000408:	b480      	push	{r7}
2000040a:	af00      	add	r7, sp, #0
2000040c:	4b03      	ldr	r3, [pc, #12]	; (2000041c <encoder_start+0x14>)
2000040e:	f240 5255 	movw	r2, #1365	; 0x555
20000412:	609a      	str	r2, [r3, #8]
20000414:	bf00      	nop
20000416:	46bd      	mov	sp, r7
20000418:	bc80      	pop	{r7}
2000041a:	4770      	bx	lr
2000041c:	40040000 	.word	0x40040000

20000420 <TIMER1_Handler>:
20000420:	b480      	push	{r7}
20000422:	af00      	add	r7, sp, #0
20000424:	4b03      	ldr	r3, [pc, #12]	; (20000434 <TIMER1_Handler+0x14>)
20000426:	2200      	movs	r2, #0
20000428:	655a      	str	r2, [r3, #84]	; 0x54
2000042a:	bf00      	nop
2000042c:	46bd      	mov	sp, r7
2000042e:	bc80      	pop	{r7}
20000430:	4770      	bx	lr
20000432:	bf00      	nop
20000434:	40070000 	.word	0x40070000

20000438 <TIMER3_Handler>:
20000438:	b580      	push	{r7, lr}
2000043a:	af00      	add	r7, sp, #0
2000043c:	4b04      	ldr	r3, [pc, #16]	; (20000450 <TIMER3_Handler+0x18>)
2000043e:	2200      	movs	r2, #0
20000440:	655a      	str	r2, [r3, #84]	; 0x54
20000442:	f7ff ffe1 	bl	20000408 <encoder_start>
20000446:	f000 fdff 	bl	20001048 <adc_dma_start>
2000044a:	bf00      	nop
2000044c:	bd80      	pop	{r7, pc}
2000044e:	bf00      	nop
20000450:	40080000 	.word	0x40080000

20000454 <get_phase>:
20000454:	b580      	push	{r7, lr}
20000456:	af00      	add	r7, sp, #0
20000458:	4b0a      	ldr	r3, [pc, #40]	; (20000484 <get_phase+0x30>)
2000045a:	f240 5255 	movw	r2, #1365	; 0x555
2000045e:	609a      	str	r2, [r3, #8]
20000460:	bf00      	nop
20000462:	4b08      	ldr	r3, [pc, #32]	; (20000484 <get_phase+0x30>)
20000464:	68db      	ldr	r3, [r3, #12]
20000466:	f003 0304 	and.w	r3, r3, #4
2000046a:	2b00      	cmp	r3, #0
2000046c:	d0f9      	beq.n	20000462 <get_phase+0xe>
2000046e:	4b05      	ldr	r3, [pc, #20]	; (20000484 <get_phase+0x30>)
20000470:	689b      	ldr	r3, [r3, #8]
20000472:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000476:	4618      	mov	r0, r3
20000478:	f7ff ff6c 	bl	20000354 <g2b>
2000047c:	4603      	mov	r3, r0
2000047e:	4618      	mov	r0, r3
20000480:	bd80      	pop	{r7, pc}
20000482:	bf00      	nop
20000484:	40040000 	.word	0x40040000

20000488 <pwm_seta>:
20000488:	b480      	push	{r7}
2000048a:	b083      	sub	sp, #12
2000048c:	af00      	add	r7, sp, #0
2000048e:	6078      	str	r0, [r7, #4]
20000490:	4a04      	ldr	r2, [pc, #16]	; (200004a4 <pwm_seta+0x1c>)
20000492:	687b      	ldr	r3, [r7, #4]
20000494:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000498:	6113      	str	r3, [r2, #16]
2000049a:	bf00      	nop
2000049c:	370c      	adds	r7, #12
2000049e:	46bd      	mov	sp, r7
200004a0:	bc80      	pop	{r7}
200004a2:	4770      	bx	lr
200004a4:	40080000 	.word	0x40080000

200004a8 <pwm_setb>:
200004a8:	b480      	push	{r7}
200004aa:	b083      	sub	sp, #12
200004ac:	af00      	add	r7, sp, #0
200004ae:	6078      	str	r0, [r7, #4]
200004b0:	4a04      	ldr	r2, [pc, #16]	; (200004c4 <pwm_setb+0x1c>)
200004b2:	687b      	ldr	r3, [r7, #4]
200004b4:	f503 7300 	add.w	r3, r3, #512	; 0x200
200004b8:	6153      	str	r3, [r2, #20]
200004ba:	bf00      	nop
200004bc:	370c      	adds	r7, #12
200004be:	46bd      	mov	sp, r7
200004c0:	bc80      	pop	{r7}
200004c2:	4770      	bx	lr
200004c4:	40080000 	.word	0x40080000

200004c8 <pwm_setc>:
200004c8:	b480      	push	{r7}
200004ca:	b083      	sub	sp, #12
200004cc:	af00      	add	r7, sp, #0
200004ce:	6078      	str	r0, [r7, #4]
200004d0:	4a04      	ldr	r2, [pc, #16]	; (200004e4 <pwm_setc+0x1c>)
200004d2:	687b      	ldr	r3, [r7, #4]
200004d4:	f503 7300 	add.w	r3, r3, #512	; 0x200
200004d8:	6193      	str	r3, [r2, #24]
200004da:	bf00      	nop
200004dc:	370c      	adds	r7, #12
200004de:	46bd      	mov	sp, r7
200004e0:	bc80      	pop	{r7}
200004e2:	4770      	bx	lr
200004e4:	40080000 	.word	0x40080000

200004e8 <update_telemetry>:
200004e8:	b480      	push	{r7}
200004ea:	b083      	sub	sp, #12
200004ec:	af00      	add	r7, sp, #0
200004ee:	4b3e      	ldr	r3, [pc, #248]	; (200005e8 <update_telemetry+0x100>)
200004f0:	6d5b      	ldr	r3, [r3, #84]	; 0x54
200004f2:	f003 0302 	and.w	r3, r3, #2
200004f6:	2b00      	cmp	r3, #0
200004f8:	d071      	beq.n	200005de <update_telemetry+0xf6>
200004fa:	4b3b      	ldr	r3, [pc, #236]	; (200005e8 <update_telemetry+0x100>)
200004fc:	2200      	movs	r2, #0
200004fe:	655a      	str	r2, [r3, #84]	; 0x54
20000500:	4a3a      	ldr	r2, [pc, #232]	; (200005ec <update_telemetry+0x104>)
20000502:	4b3a      	ldr	r3, [pc, #232]	; (200005ec <update_telemetry+0x104>)
20000504:	681b      	ldr	r3, [r3, #0]
20000506:	f043 0301 	orr.w	r3, r3, #1
2000050a:	6013      	str	r3, [r2, #0]
2000050c:	4b36      	ldr	r3, [pc, #216]	; (200005e8 <update_telemetry+0x100>)
2000050e:	695b      	ldr	r3, [r3, #20]
20000510:	b29b      	uxth	r3, r3
20000512:	f5a3 7396 	sub.w	r3, r3, #300	; 0x12c
20000516:	80fb      	strh	r3, [r7, #6]
20000518:	88fb      	ldrh	r3, [r7, #6]
2000051a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
2000051e:	d205      	bcs.n	2000052c <update_telemetry+0x44>
20000520:	4a31      	ldr	r2, [pc, #196]	; (200005e8 <update_telemetry+0x100>)
20000522:	4b31      	ldr	r3, [pc, #196]	; (200005e8 <update_telemetry+0x100>)
20000524:	681b      	ldr	r3, [r3, #0]
20000526:	3301      	adds	r3, #1
20000528:	6013      	str	r3, [r2, #0]
2000052a:	e004      	b.n	20000536 <update_telemetry+0x4e>
2000052c:	4a2e      	ldr	r2, [pc, #184]	; (200005e8 <update_telemetry+0x100>)
2000052e:	4b2e      	ldr	r3, [pc, #184]	; (200005e8 <update_telemetry+0x100>)
20000530:	681b      	ldr	r3, [r3, #0]
20000532:	3b01      	subs	r3, #1
20000534:	6013      	str	r3, [r2, #0]
20000536:	4b2e      	ldr	r3, [pc, #184]	; (200005f0 <update_telemetry+0x108>)
20000538:	681b      	ldr	r3, [r3, #0]
2000053a:	b29a      	uxth	r2, r3
2000053c:	4b2d      	ldr	r3, [pc, #180]	; (200005f4 <update_telemetry+0x10c>)
2000053e:	681b      	ldr	r3, [r3, #0]
20000540:	b29b      	uxth	r3, r3
20000542:	1ad3      	subs	r3, r2, r3
20000544:	b29b      	uxth	r3, r3
20000546:	b21a      	sxth	r2, r3
20000548:	4b2b      	ldr	r3, [pc, #172]	; (200005f8 <update_telemetry+0x110>)
2000054a:	801a      	strh	r2, [r3, #0]
2000054c:	4b2b      	ldr	r3, [pc, #172]	; (200005fc <update_telemetry+0x114>)
2000054e:	681b      	ldr	r3, [r3, #0]
20000550:	b29a      	uxth	r2, r3
20000552:	4b28      	ldr	r3, [pc, #160]	; (200005f4 <update_telemetry+0x10c>)
20000554:	681b      	ldr	r3, [r3, #0]
20000556:	b29b      	uxth	r3, r3
20000558:	1ad3      	subs	r3, r2, r3
2000055a:	b29b      	uxth	r3, r3
2000055c:	b21a      	sxth	r2, r3
2000055e:	4b26      	ldr	r3, [pc, #152]	; (200005f8 <update_telemetry+0x110>)
20000560:	805a      	strh	r2, [r3, #2]
20000562:	4b25      	ldr	r3, [pc, #148]	; (200005f8 <update_telemetry+0x110>)
20000564:	2200      	movs	r2, #0
20000566:	809a      	strh	r2, [r3, #4]
20000568:	4b23      	ldr	r3, [pc, #140]	; (200005f8 <update_telemetry+0x110>)
2000056a:	2200      	movs	r2, #0
2000056c:	80da      	strh	r2, [r3, #6]
2000056e:	4b22      	ldr	r3, [pc, #136]	; (200005f8 <update_telemetry+0x110>)
20000570:	603b      	str	r3, [r7, #0]
20000572:	4923      	ldr	r1, [pc, #140]	; (20000600 <update_telemetry+0x118>)
20000574:	683b      	ldr	r3, [r7, #0]
20000576:	1c5a      	adds	r2, r3, #1
20000578:	603a      	str	r2, [r7, #0]
2000057a:	781b      	ldrb	r3, [r3, #0]
2000057c:	600b      	str	r3, [r1, #0]
2000057e:	4920      	ldr	r1, [pc, #128]	; (20000600 <update_telemetry+0x118>)
20000580:	683b      	ldr	r3, [r7, #0]
20000582:	1c5a      	adds	r2, r3, #1
20000584:	603a      	str	r2, [r7, #0]
20000586:	781b      	ldrb	r3, [r3, #0]
20000588:	600b      	str	r3, [r1, #0]
2000058a:	491d      	ldr	r1, [pc, #116]	; (20000600 <update_telemetry+0x118>)
2000058c:	683b      	ldr	r3, [r7, #0]
2000058e:	1c5a      	adds	r2, r3, #1
20000590:	603a      	str	r2, [r7, #0]
20000592:	781b      	ldrb	r3, [r3, #0]
20000594:	600b      	str	r3, [r1, #0]
20000596:	491a      	ldr	r1, [pc, #104]	; (20000600 <update_telemetry+0x118>)
20000598:	683b      	ldr	r3, [r7, #0]
2000059a:	1c5a      	adds	r2, r3, #1
2000059c:	603a      	str	r2, [r7, #0]
2000059e:	781b      	ldrb	r3, [r3, #0]
200005a0:	600b      	str	r3, [r1, #0]
200005a2:	4917      	ldr	r1, [pc, #92]	; (20000600 <update_telemetry+0x118>)
200005a4:	683b      	ldr	r3, [r7, #0]
200005a6:	1c5a      	adds	r2, r3, #1
200005a8:	603a      	str	r2, [r7, #0]
200005aa:	781b      	ldrb	r3, [r3, #0]
200005ac:	600b      	str	r3, [r1, #0]
200005ae:	4914      	ldr	r1, [pc, #80]	; (20000600 <update_telemetry+0x118>)
200005b0:	683b      	ldr	r3, [r7, #0]
200005b2:	1c5a      	adds	r2, r3, #1
200005b4:	603a      	str	r2, [r7, #0]
200005b6:	781b      	ldrb	r3, [r3, #0]
200005b8:	600b      	str	r3, [r1, #0]
200005ba:	4911      	ldr	r1, [pc, #68]	; (20000600 <update_telemetry+0x118>)
200005bc:	683b      	ldr	r3, [r7, #0]
200005be:	1c5a      	adds	r2, r3, #1
200005c0:	603a      	str	r2, [r7, #0]
200005c2:	781b      	ldrb	r3, [r3, #0]
200005c4:	600b      	str	r3, [r1, #0]
200005c6:	490e      	ldr	r1, [pc, #56]	; (20000600 <update_telemetry+0x118>)
200005c8:	683b      	ldr	r3, [r7, #0]
200005ca:	1c5a      	adds	r2, r3, #1
200005cc:	603a      	str	r2, [r7, #0]
200005ce:	781b      	ldrb	r3, [r3, #0]
200005d0:	600b      	str	r3, [r1, #0]
200005d2:	4a06      	ldr	r2, [pc, #24]	; (200005ec <update_telemetry+0x104>)
200005d4:	4b05      	ldr	r3, [pc, #20]	; (200005ec <update_telemetry+0x104>)
200005d6:	681b      	ldr	r3, [r3, #0]
200005d8:	f023 0301 	bic.w	r3, r3, #1
200005dc:	6013      	str	r3, [r2, #0]
200005de:	bf00      	nop
200005e0:	370c      	adds	r7, #12
200005e2:	46bd      	mov	sp, r7
200005e4:	bc80      	pop	{r7}
200005e6:	4770      	bx	lr
200005e8:	40070000 	.word	0x40070000
200005ec:	400a8000 	.word	0x400a8000
200005f0:	20002800 	.word	0x20002800
200005f4:	2000280c 	.word	0x2000280c
200005f8:	2000282c 	.word	0x2000282c
200005fc:	20002824 	.word	0x20002824
20000600:	40030000 	.word	0x40030000

20000604 <update_refposition>:
20000604:	b480      	push	{r7}
20000606:	b087      	sub	sp, #28
20000608:	af00      	add	r7, sp, #0
2000060a:	4b20      	ldr	r3, [pc, #128]	; (2000068c <update_refposition+0x88>)
2000060c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000060e:	f003 0310 	and.w	r3, r3, #16
20000612:	2b00      	cmp	r3, #0
20000614:	d022      	beq.n	2000065c <update_refposition+0x58>
20000616:	2300      	movs	r3, #0
20000618:	617b      	str	r3, [r7, #20]
2000061a:	e00c      	b.n	20000636 <update_refposition+0x32>
2000061c:	4b1b      	ldr	r3, [pc, #108]	; (2000068c <update_refposition+0x88>)
2000061e:	681b      	ldr	r3, [r3, #0]
20000620:	b2d9      	uxtb	r1, r3
20000622:	463a      	mov	r2, r7
20000624:	697b      	ldr	r3, [r7, #20]
20000626:	4413      	add	r3, r2
20000628:	460a      	mov	r2, r1
2000062a:	701a      	strb	r2, [r3, #0]
2000062c:	697b      	ldr	r3, [r7, #20]
2000062e:	3301      	adds	r3, #1
20000630:	f003 030f 	and.w	r3, r3, #15
20000634:	617b      	str	r3, [r7, #20]
20000636:	4b15      	ldr	r3, [pc, #84]	; (2000068c <update_refposition+0x88>)
20000638:	699b      	ldr	r3, [r3, #24]
2000063a:	f003 0310 	and.w	r3, r3, #16
2000063e:	2b00      	cmp	r3, #0
20000640:	d0ec      	beq.n	2000061c <update_refposition+0x18>
20000642:	783b      	ldrb	r3, [r7, #0]
20000644:	b29a      	uxth	r2, r3
20000646:	787b      	ldrb	r3, [r7, #1]
20000648:	b29b      	uxth	r3, r3
2000064a:	021b      	lsls	r3, r3, #8
2000064c:	b29b      	uxth	r3, r3
2000064e:	4413      	add	r3, r2
20000650:	b29b      	uxth	r3, r3
20000652:	827b      	strh	r3, [r7, #18]
20000654:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
20000658:	4a0d      	ldr	r2, [pc, #52]	; (20000690 <update_refposition+0x8c>)
2000065a:	6013      	str	r3, [r2, #0]
2000065c:	4b0b      	ldr	r3, [pc, #44]	; (2000068c <update_refposition+0x88>)
2000065e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000660:	f003 0340 	and.w	r3, r3, #64	; 0x40
20000664:	2b00      	cmp	r3, #0
20000666:	d009      	beq.n	2000067c <update_refposition+0x78>
20000668:	e002      	b.n	20000670 <update_refposition+0x6c>
2000066a:	4b08      	ldr	r3, [pc, #32]	; (2000068c <update_refposition+0x88>)
2000066c:	681b      	ldr	r3, [r3, #0]
2000066e:	747b      	strb	r3, [r7, #17]
20000670:	4b06      	ldr	r3, [pc, #24]	; (2000068c <update_refposition+0x88>)
20000672:	699b      	ldr	r3, [r3, #24]
20000674:	f003 0310 	and.w	r3, r3, #16
20000678:	2b00      	cmp	r3, #0
2000067a:	d0f6      	beq.n	2000066a <update_refposition+0x66>
2000067c:	4b04      	ldr	r3, [pc, #16]	; (20000690 <update_refposition+0x8c>)
2000067e:	681b      	ldr	r3, [r3, #0]
20000680:	4618      	mov	r0, r3
20000682:	371c      	adds	r7, #28
20000684:	46bd      	mov	sp, r7
20000686:	bc80      	pop	{r7}
20000688:	4770      	bx	lr
2000068a:	bf00      	nop
2000068c:	40030000 	.word	0x40030000
20000690:	20002838 	.word	0x20002838

20000694 <mycos>:
20000694:	4b02      	ldr	r3, [pc, #8]	; (200006a0 <mycos+0xc>)
20000696:	f3c0 0009 	ubfx	r0, r0, #0, #10
2000069a:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
2000069e:	4770      	bx	lr
200006a0:	20001754 	.word	0x20001754

200006a4 <mysin>:
200006a4:	4b03      	ldr	r3, [pc, #12]	; (200006b4 <mysin+0x10>)
200006a6:	f500 7040 	add.w	r0, r0, #768	; 0x300
200006aa:	f3c0 0009 	ubfx	r0, r0, #0, #10
200006ae:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
200006b2:	4770      	bx	lr
200006b4:	20001754 	.word	0x20001754

200006b8 <reg_init>:
200006b8:	2300      	movs	r3, #0
200006ba:	e880 000e 	stmia.w	r0, {r1, r2, r3}
200006be:	60c3      	str	r3, [r0, #12]
200006c0:	4770      	bx	lr
200006c2:	bf00      	nop

200006c4 <reg_update>:
200006c4:	6803      	ldr	r3, [r0, #0]
200006c6:	b410      	push	{r4}
200006c8:	fb03 f301 	mul.w	r3, r3, r1
200006cc:	6884      	ldr	r4, [r0, #8]
200006ce:	b11a      	cbz	r2, 200006d8 <reg_update+0x14>
200006d0:	2c00      	cmp	r4, #0
200006d2:	dd09      	ble.n	200006e8 <reg_update+0x24>
200006d4:	ea03 73e3 	and.w	r3, r3, r3, asr #31
200006d8:	6842      	ldr	r2, [r0, #4]
200006da:	4423      	add	r3, r4
200006dc:	fb02 3101 	mla	r1, r2, r1, r3
200006e0:	6083      	str	r3, [r0, #8]
200006e2:	60c1      	str	r1, [r0, #12]
200006e4:	bc10      	pop	{r4}
200006e6:	4770      	bx	lr
200006e8:	bf18      	it	ne
200006ea:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
200006ee:	e7f3      	b.n	200006d8 <reg_update+0x14>

200006f0 <dot3>:
200006f0:	b430      	push	{r4, r5}
200006f2:	684b      	ldr	r3, [r1, #4]
200006f4:	6844      	ldr	r4, [r0, #4]
200006f6:	6802      	ldr	r2, [r0, #0]
200006f8:	fb03 f304 	mul.w	r3, r3, r4
200006fc:	680d      	ldr	r5, [r1, #0]
200006fe:	6884      	ldr	r4, [r0, #8]
20000700:	fb05 3302 	mla	r3, r5, r2, r3
20000704:	6888      	ldr	r0, [r1, #8]
20000706:	fb00 3004 	mla	r0, r0, r4, r3
2000070a:	bc30      	pop	{r4, r5}
2000070c:	4770      	bx	lr
2000070e:	bf00      	nop

20000710 <abc_to_dq>:
20000710:	b4f0      	push	{r4, r5, r6, r7}
20000712:	4c1d      	ldr	r4, [pc, #116]	; (20000788 <abc_to_dq+0x78>)
20000714:	6803      	ldr	r3, [r0, #0]
20000716:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
2000071a:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
2000071e:	fb03 f306 	mul.w	r3, r3, r6
20000722:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000726:	6847      	ldr	r7, [r0, #4]
20000728:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
2000072c:	f202 1655 	addw	r6, r2, #341	; 0x155
20000730:	fb07 3305 	mla	r3, r7, r5, r3
20000734:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000738:	6887      	ldr	r7, [r0, #8]
2000073a:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
2000073e:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
20000742:	fb07 3305 	mla	r3, r7, r5, r3
20000746:	129b      	asrs	r3, r3, #10
20000748:	600b      	str	r3, [r1, #0]
2000074a:	f3c6 0509 	ubfx	r5, r6, #0, #10
2000074e:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
20000752:	6843      	ldr	r3, [r0, #4]
20000754:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000758:	fb03 f306 	mul.w	r3, r3, r6
2000075c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000760:	6806      	ldr	r6, [r0, #0]
20000762:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000766:	f202 4255 	addw	r2, r2, #1109	; 0x455
2000076a:	fb06 3305 	mla	r3, r6, r5, r3
2000076e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000772:	6880      	ldr	r0, [r0, #8]
20000774:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
20000778:	bcf0      	pop	{r4, r5, r6, r7}
2000077a:	fb00 3302 	mla	r3, r0, r2, r3
2000077e:	425b      	negs	r3, r3
20000780:	129b      	asrs	r3, r3, #10
20000782:	604b      	str	r3, [r1, #4]
20000784:	4770      	bx	lr
20000786:	bf00      	nop
20000788:	20001754 	.word	0x20001754

2000078c <dq_to_abc>:
2000078c:	4b1d      	ldr	r3, [pc, #116]	; (20000804 <dq_to_abc+0x78>)
2000078e:	b4f0      	push	{r4, r5, r6, r7}
20000790:	680e      	ldr	r6, [r1, #0]
20000792:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
20000796:	f502 7540 	add.w	r5, r2, #768	; 0x300
2000079a:	fb04 f406 	mul.w	r4, r4, r6
2000079e:	f3c5 0509 	ubfx	r5, r5, #0, #10
200007a2:	684f      	ldr	r7, [r1, #4]
200007a4:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
200007a8:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
200007ac:	fb07 4415 	mls	r4, r7, r5, r4
200007b0:	1524      	asrs	r4, r4, #20
200007b2:	6004      	str	r4, [r0, #0]
200007b4:	f3c6 0509 	ubfx	r5, r6, #0, #10
200007b8:	680c      	ldr	r4, [r1, #0]
200007ba:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
200007be:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
200007c2:	fb04 f406 	mul.w	r4, r4, r6
200007c6:	f3c5 0509 	ubfx	r5, r5, #0, #10
200007ca:	684f      	ldr	r7, [r1, #4]
200007cc:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
200007d0:	f202 1655 	addw	r6, r2, #341	; 0x155
200007d4:	fb07 4415 	mls	r4, r7, r5, r4
200007d8:	1524      	asrs	r4, r4, #20
200007da:	6044      	str	r4, [r0, #4]
200007dc:	f3c6 0509 	ubfx	r5, r6, #0, #10
200007e0:	680c      	ldr	r4, [r1, #0]
200007e2:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
200007e6:	f202 4255 	addw	r2, r2, #1109	; 0x455
200007ea:	fb04 f405 	mul.w	r4, r4, r5
200007ee:	f3c2 0209 	ubfx	r2, r2, #0, #10
200007f2:	6849      	ldr	r1, [r1, #4]
200007f4:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
200007f8:	fb01 4312 	mls	r3, r1, r2, r4
200007fc:	bcf0      	pop	{r4, r5, r6, r7}
200007fe:	151b      	asrs	r3, r3, #20
20000800:	6083      	str	r3, [r0, #8]
20000802:	4770      	bx	lr
20000804:	20001754 	.word	0x20001754

20000808 <cord_atan>:
20000808:	b5f0      	push	{r4, r5, r6, r7, lr}
2000080a:	b091      	sub	sp, #68	; 0x44
2000080c:	46ee      	mov	lr, sp
2000080e:	4684      	mov	ip, r0
20000810:	4e56      	ldr	r6, [pc, #344]	; (2000096c <cord_atan+0x164>)
20000812:	460d      	mov	r5, r1
20000814:	4614      	mov	r4, r2
20000816:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000818:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
2000081c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000820:	af08      	add	r7, sp, #32
20000822:	3610      	adds	r6, #16
20000824:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000828:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2000082a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
2000082c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000830:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000834:	f8dc 6000 	ldr.w	r6, [ip]
20000838:	f8dc 3004 	ldr.w	r3, [ip, #4]
2000083c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000840:	2b00      	cmp	r3, #0
20000842:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000846:	9900      	ldr	r1, [sp, #0]
20000848:	dd56      	ble.n	200008f8 <cord_atan+0xf0>
2000084a:	18d0      	adds	r0, r2, r3
2000084c:	1a9b      	subs	r3, r3, r2
2000084e:	2b00      	cmp	r3, #0
20000850:	d07a      	beq.n	20000948 <cord_atan+0x140>
20000852:	9f01      	ldr	r7, [sp, #4]
20000854:	dd54      	ble.n	20000900 <cord_atan+0xf8>
20000856:	eb00 0263 	add.w	r2, r0, r3, asr #1
2000085a:	4439      	add	r1, r7
2000085c:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000860:	2b00      	cmp	r3, #0
20000862:	d073      	beq.n	2000094c <cord_atan+0x144>
20000864:	9f02      	ldr	r7, [sp, #8]
20000866:	dd51      	ble.n	2000090c <cord_atan+0x104>
20000868:	eb02 00a3 	add.w	r0, r2, r3, asr #2
2000086c:	4439      	add	r1, r7
2000086e:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000872:	2b00      	cmp	r3, #0
20000874:	d06d      	beq.n	20000952 <cord_atan+0x14a>
20000876:	9f03      	ldr	r7, [sp, #12]
20000878:	dd4e      	ble.n	20000918 <cord_atan+0x110>
2000087a:	eb00 02e3 	add.w	r2, r0, r3, asr #3
2000087e:	4439      	add	r1, r7
20000880:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000884:	2b00      	cmp	r3, #0
20000886:	d066      	beq.n	20000956 <cord_atan+0x14e>
20000888:	9f04      	ldr	r7, [sp, #16]
2000088a:	dd4b      	ble.n	20000924 <cord_atan+0x11c>
2000088c:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000890:	4439      	add	r1, r7
20000892:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000896:	2b00      	cmp	r3, #0
20000898:	d060      	beq.n	2000095c <cord_atan+0x154>
2000089a:	9f05      	ldr	r7, [sp, #20]
2000089c:	dd48      	ble.n	20000930 <cord_atan+0x128>
2000089e:	eb00 1263 	add.w	r2, r0, r3, asr #5
200008a2:	4439      	add	r1, r7
200008a4:	eba3 1360 	sub.w	r3, r3, r0, asr #5
200008a8:	2b00      	cmp	r3, #0
200008aa:	d059      	beq.n	20000960 <cord_atan+0x158>
200008ac:	9f06      	ldr	r7, [sp, #24]
200008ae:	dd45      	ble.n	2000093c <cord_atan+0x134>
200008b0:	eb02 10a3 	add.w	r0, r2, r3, asr #6
200008b4:	4439      	add	r1, r7
200008b6:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
200008ba:	2b00      	cmp	r3, #0
200008bc:	d053      	beq.n	20000966 <cord_atan+0x15e>
200008be:	9a07      	ldr	r2, [sp, #28]
200008c0:	bfc7      	ittee	gt
200008c2:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
200008c6:	1889      	addgt	r1, r1, r2
200008c8:	1a89      	suble	r1, r1, r2
200008ca:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
200008ce:	2207      	movs	r2, #7
200008d0:	ab10      	add	r3, sp, #64	; 0x40
200008d2:	eb03 0282 	add.w	r2, r3, r2, lsl #2
200008d6:	f852 3c20 	ldr.w	r3, [r2, #-32]
200008da:	2e00      	cmp	r6, #0
200008dc:	fb03 f300 	mul.w	r3, r3, r0
200008e0:	bfb8      	it	lt
200008e2:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
200008e6:	2900      	cmp	r1, #0
200008e8:	bfb8      	it	lt
200008ea:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
200008ee:	129b      	asrs	r3, r3, #10
200008f0:	6029      	str	r1, [r5, #0]
200008f2:	6023      	str	r3, [r4, #0]
200008f4:	b011      	add	sp, #68	; 0x44
200008f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200008f8:	1ad0      	subs	r0, r2, r3
200008fa:	4249      	negs	r1, r1
200008fc:	4413      	add	r3, r2
200008fe:	e7a6      	b.n	2000084e <cord_atan+0x46>
20000900:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000904:	1bc9      	subs	r1, r1, r7
20000906:	eb03 0360 	add.w	r3, r3, r0, asr #1
2000090a:	e7a9      	b.n	20000860 <cord_atan+0x58>
2000090c:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000910:	1bc9      	subs	r1, r1, r7
20000912:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000916:	e7ac      	b.n	20000872 <cord_atan+0x6a>
20000918:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
2000091c:	1bc9      	subs	r1, r1, r7
2000091e:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000922:	e7af      	b.n	20000884 <cord_atan+0x7c>
20000924:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000928:	1bc9      	subs	r1, r1, r7
2000092a:	eb03 1322 	add.w	r3, r3, r2, asr #4
2000092e:	e7b2      	b.n	20000896 <cord_atan+0x8e>
20000930:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000934:	1bc9      	subs	r1, r1, r7
20000936:	eb03 1360 	add.w	r3, r3, r0, asr #5
2000093a:	e7b5      	b.n	200008a8 <cord_atan+0xa0>
2000093c:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000940:	1bc9      	subs	r1, r1, r7
20000942:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000946:	e7b8      	b.n	200008ba <cord_atan+0xb2>
20000948:	461a      	mov	r2, r3
2000094a:	e7c1      	b.n	200008d0 <cord_atan+0xc8>
2000094c:	4610      	mov	r0, r2
2000094e:	2201      	movs	r2, #1
20000950:	e7be      	b.n	200008d0 <cord_atan+0xc8>
20000952:	2202      	movs	r2, #2
20000954:	e7bc      	b.n	200008d0 <cord_atan+0xc8>
20000956:	4610      	mov	r0, r2
20000958:	2203      	movs	r2, #3
2000095a:	e7b9      	b.n	200008d0 <cord_atan+0xc8>
2000095c:	2204      	movs	r2, #4
2000095e:	e7b7      	b.n	200008d0 <cord_atan+0xc8>
20000960:	4610      	mov	r0, r2
20000962:	2205      	movs	r2, #5
20000964:	e7b4      	b.n	200008d0 <cord_atan+0xc8>
20000966:	2206      	movs	r2, #6
20000968:	e7b2      	b.n	200008d0 <cord_atan+0xc8>
2000096a:	bf00      	nop
2000096c:	20001714 	.word	0x20001714

20000970 <sinpwm>:
20000970:	b5f0      	push	{r4, r5, r6, r7, lr}
20000972:	b091      	sub	sp, #68	; 0x44
20000974:	46ee      	mov	lr, sp
20000976:	468c      	mov	ip, r1
20000978:	4e6e      	ldr	r6, [pc, #440]	; (20000b34 <sinpwm+0x1c4>)
2000097a:	4604      	mov	r4, r0
2000097c:	4615      	mov	r5, r2
2000097e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000980:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000984:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000988:	af08      	add	r7, sp, #32
2000098a:	3610      	adds	r6, #16
2000098c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000990:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000992:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000994:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000998:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
2000099c:	f8dc 6000 	ldr.w	r6, [ip]
200009a0:	f8dc 3004 	ldr.w	r3, [ip, #4]
200009a4:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200009a8:	2b00      	cmp	r3, #0
200009aa:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200009ae:	9900      	ldr	r1, [sp, #0]
200009b0:	f340 8087 	ble.w	20000ac2 <sinpwm+0x152>
200009b4:	18d0      	adds	r0, r2, r3
200009b6:	1a9b      	subs	r3, r3, r2
200009b8:	2b00      	cmp	r3, #0
200009ba:	f000 80aa 	beq.w	20000b12 <sinpwm+0x1a2>
200009be:	9f01      	ldr	r7, [sp, #4]
200009c0:	f340 8083 	ble.w	20000aca <sinpwm+0x15a>
200009c4:	eb00 0263 	add.w	r2, r0, r3, asr #1
200009c8:	4439      	add	r1, r7
200009ca:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200009ce:	2b00      	cmp	r3, #0
200009d0:	f000 80a1 	beq.w	20000b16 <sinpwm+0x1a6>
200009d4:	9f02      	ldr	r7, [sp, #8]
200009d6:	dd7e      	ble.n	20000ad6 <sinpwm+0x166>
200009d8:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200009dc:	4439      	add	r1, r7
200009de:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200009e2:	2b00      	cmp	r3, #0
200009e4:	f000 809a 	beq.w	20000b1c <sinpwm+0x1ac>
200009e8:	9f03      	ldr	r7, [sp, #12]
200009ea:	dd7a      	ble.n	20000ae2 <sinpwm+0x172>
200009ec:	eb00 02e3 	add.w	r2, r0, r3, asr #3
200009f0:	4439      	add	r1, r7
200009f2:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
200009f6:	2b00      	cmp	r3, #0
200009f8:	f000 8092 	beq.w	20000b20 <sinpwm+0x1b0>
200009fc:	9f04      	ldr	r7, [sp, #16]
200009fe:	dd76      	ble.n	20000aee <sinpwm+0x17e>
20000a00:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000a04:	4439      	add	r1, r7
20000a06:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000a0a:	2b00      	cmp	r3, #0
20000a0c:	f000 808b 	beq.w	20000b26 <sinpwm+0x1b6>
20000a10:	9f05      	ldr	r7, [sp, #20]
20000a12:	dd72      	ble.n	20000afa <sinpwm+0x18a>
20000a14:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000a18:	4439      	add	r1, r7
20000a1a:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000a1e:	2b00      	cmp	r3, #0
20000a20:	f000 8083 	beq.w	20000b2a <sinpwm+0x1ba>
20000a24:	9f06      	ldr	r7, [sp, #24]
20000a26:	dd6e      	ble.n	20000b06 <sinpwm+0x196>
20000a28:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000a2c:	4439      	add	r1, r7
20000a2e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000a32:	2b00      	cmp	r3, #0
20000a34:	d07c      	beq.n	20000b30 <sinpwm+0x1c0>
20000a36:	9a07      	ldr	r2, [sp, #28]
20000a38:	bfc7      	ittee	gt
20000a3a:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000a3e:	1889      	addgt	r1, r1, r2
20000a40:	1a89      	suble	r1, r1, r2
20000a42:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000a46:	2207      	movs	r2, #7
20000a48:	ab10      	add	r3, sp, #64	; 0x40
20000a4a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000a4e:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000a52:	2e00      	cmp	r6, #0
20000a54:	fb03 f300 	mul.w	r3, r3, r0
20000a58:	bfb8      	it	lt
20000a5a:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000a5e:	2900      	cmp	r1, #0
20000a60:	bfb8      	it	lt
20000a62:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000a66:	151b      	asrs	r3, r3, #20
20000a68:	440d      	add	r5, r1
20000a6a:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000a6e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000a72:	dd22      	ble.n	20000aba <sinpwm+0x14a>
20000a74:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 20000b3c <sinpwm+0x1cc>
20000a78:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
20000a7c:	2001      	movs	r0, #1
20000a7e:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
20000a82:	4f2d      	ldr	r7, [pc, #180]	; (20000b38 <sinpwm+0x1c8>)
20000a84:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
20000a88:	3602      	adds	r6, #2
20000a8a:	f3ce 0e09 	ubfx	lr, lr, #0, #10
20000a8e:	f3c6 0609 	ubfx	r6, r6, #0, #10
20000a92:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
20000a96:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
20000a9a:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
20000a9e:	fb06 f50c 	mul.w	r5, r6, ip
20000aa2:	fb01 f10c 	mul.w	r1, r1, ip
20000aa6:	fb02 f303 	mul.w	r3, r2, r3
20000aaa:	12ad      	asrs	r5, r5, #10
20000aac:	128a      	asrs	r2, r1, #10
20000aae:	129b      	asrs	r3, r3, #10
20000ab0:	60a5      	str	r5, [r4, #8]
20000ab2:	6062      	str	r2, [r4, #4]
20000ab4:	6023      	str	r3, [r4, #0]
20000ab6:	b011      	add	sp, #68	; 0x44
20000ab8:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000aba:	f1c3 0c00 	rsb	ip, r3, #0
20000abe:	2000      	movs	r0, #0
20000ac0:	e7dd      	b.n	20000a7e <sinpwm+0x10e>
20000ac2:	1ad0      	subs	r0, r2, r3
20000ac4:	4249      	negs	r1, r1
20000ac6:	4413      	add	r3, r2
20000ac8:	e776      	b.n	200009b8 <sinpwm+0x48>
20000aca:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000ace:	1bc9      	subs	r1, r1, r7
20000ad0:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000ad4:	e77b      	b.n	200009ce <sinpwm+0x5e>
20000ad6:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000ada:	1bc9      	subs	r1, r1, r7
20000adc:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000ae0:	e77f      	b.n	200009e2 <sinpwm+0x72>
20000ae2:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000ae6:	1bc9      	subs	r1, r1, r7
20000ae8:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000aec:	e783      	b.n	200009f6 <sinpwm+0x86>
20000aee:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000af2:	1bc9      	subs	r1, r1, r7
20000af4:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000af8:	e787      	b.n	20000a0a <sinpwm+0x9a>
20000afa:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000afe:	1bc9      	subs	r1, r1, r7
20000b00:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000b04:	e78b      	b.n	20000a1e <sinpwm+0xae>
20000b06:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000b0a:	1bc9      	subs	r1, r1, r7
20000b0c:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000b10:	e78f      	b.n	20000a32 <sinpwm+0xc2>
20000b12:	461a      	mov	r2, r3
20000b14:	e798      	b.n	20000a48 <sinpwm+0xd8>
20000b16:	4610      	mov	r0, r2
20000b18:	2201      	movs	r2, #1
20000b1a:	e795      	b.n	20000a48 <sinpwm+0xd8>
20000b1c:	2202      	movs	r2, #2
20000b1e:	e793      	b.n	20000a48 <sinpwm+0xd8>
20000b20:	4610      	mov	r0, r2
20000b22:	2203      	movs	r2, #3
20000b24:	e790      	b.n	20000a48 <sinpwm+0xd8>
20000b26:	2204      	movs	r2, #4
20000b28:	e78e      	b.n	20000a48 <sinpwm+0xd8>
20000b2a:	4610      	mov	r0, r2
20000b2c:	2205      	movs	r2, #5
20000b2e:	e78b      	b.n	20000a48 <sinpwm+0xd8>
20000b30:	2206      	movs	r2, #6
20000b32:	e789      	b.n	20000a48 <sinpwm+0xd8>
20000b34:	20001714 	.word	0x20001714
20000b38:	20001754 	.word	0x20001754
20000b3c:	fffffe0c 	.word	0xfffffe0c

20000b40 <svpwm>:
20000b40:	b5f0      	push	{r4, r5, r6, r7, lr}
20000b42:	b091      	sub	sp, #68	; 0x44
20000b44:	46ee      	mov	lr, sp
20000b46:	468c      	mov	ip, r1
20000b48:	4eb8      	ldr	r6, [pc, #736]	; (20000e2c <svpwm+0x2ec>)
20000b4a:	4604      	mov	r4, r0
20000b4c:	4615      	mov	r5, r2
20000b4e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000b50:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000b54:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000b58:	af08      	add	r7, sp, #32
20000b5a:	3610      	adds	r6, #16
20000b5c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000b60:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000b62:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000b64:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000b68:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000b6c:	f8dc 6000 	ldr.w	r6, [ip]
20000b70:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000b74:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000b78:	2b00      	cmp	r3, #0
20000b7a:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000b7e:	9900      	ldr	r1, [sp, #0]
20000b80:	dd6f      	ble.n	20000c62 <svpwm+0x122>
20000b82:	18d0      	adds	r0, r2, r3
20000b84:	1a9b      	subs	r3, r3, r2
20000b86:	2b00      	cmp	r3, #0
20000b88:	f000 813f 	beq.w	20000e0a <svpwm+0x2ca>
20000b8c:	9f01      	ldr	r7, [sp, #4]
20000b8e:	dd6c      	ble.n	20000c6a <svpwm+0x12a>
20000b90:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000b94:	4439      	add	r1, r7
20000b96:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000b9a:	2b00      	cmp	r3, #0
20000b9c:	f000 8137 	beq.w	20000e0e <svpwm+0x2ce>
20000ba0:	9f02      	ldr	r7, [sp, #8]
20000ba2:	dd68      	ble.n	20000c76 <svpwm+0x136>
20000ba4:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000ba8:	4439      	add	r1, r7
20000baa:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000bae:	2b00      	cmp	r3, #0
20000bb0:	f000 8130 	beq.w	20000e14 <svpwm+0x2d4>
20000bb4:	9f03      	ldr	r7, [sp, #12]
20000bb6:	dd64      	ble.n	20000c82 <svpwm+0x142>
20000bb8:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000bbc:	4439      	add	r1, r7
20000bbe:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000bc2:	2b00      	cmp	r3, #0
20000bc4:	f000 8128 	beq.w	20000e18 <svpwm+0x2d8>
20000bc8:	9f04      	ldr	r7, [sp, #16]
20000bca:	dd60      	ble.n	20000c8e <svpwm+0x14e>
20000bcc:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000bd0:	4439      	add	r1, r7
20000bd2:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000bd6:	2b00      	cmp	r3, #0
20000bd8:	f000 8121 	beq.w	20000e1e <svpwm+0x2de>
20000bdc:	9f05      	ldr	r7, [sp, #20]
20000bde:	dd5c      	ble.n	20000c9a <svpwm+0x15a>
20000be0:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000be4:	4439      	add	r1, r7
20000be6:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000bea:	2b00      	cmp	r3, #0
20000bec:	f000 8119 	beq.w	20000e22 <svpwm+0x2e2>
20000bf0:	9f06      	ldr	r7, [sp, #24]
20000bf2:	dd58      	ble.n	20000ca6 <svpwm+0x166>
20000bf4:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000bf8:	4439      	add	r1, r7
20000bfa:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000bfe:	2b00      	cmp	r3, #0
20000c00:	f000 8112 	beq.w	20000e28 <svpwm+0x2e8>
20000c04:	9a07      	ldr	r2, [sp, #28]
20000c06:	bfc7      	ittee	gt
20000c08:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000c0c:	1889      	addgt	r1, r1, r2
20000c0e:	1a89      	suble	r1, r1, r2
20000c10:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000c14:	2207      	movs	r2, #7
20000c16:	ab10      	add	r3, sp, #64	; 0x40
20000c18:	2e00      	cmp	r6, #0
20000c1a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000c1e:	bfb8      	it	lt
20000c20:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000c24:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000c28:	2900      	cmp	r1, #0
20000c2a:	fb03 f300 	mul.w	r3, r3, r0
20000c2e:	bfb8      	it	lt
20000c30:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000c34:	440d      	add	r5, r1
20000c36:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c3a:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20000c3e:	151b      	asrs	r3, r3, #20
20000c40:	1252      	asrs	r2, r2, #9
20000c42:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000c46:	f102 32ff 	add.w	r2, r2, #4294967295
20000c4a:	bfc6      	itte	gt
20000c4c:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20000c50:	2001      	movgt	r0, #1
20000c52:	2000      	movle	r0, #0
20000c54:	2a04      	cmp	r2, #4
20000c56:	d848      	bhi.n	20000cea <svpwm+0x1aa>
20000c58:	e8df f002 	tbb	[pc, r2]
20000c5c:	2b9e8164 	.word	0x2b9e8164
20000c60:	bb          	.byte	0xbb
20000c61:	00          	.byte	0x00
20000c62:	1ad0      	subs	r0, r2, r3
20000c64:	4249      	negs	r1, r1
20000c66:	4413      	add	r3, r2
20000c68:	e78d      	b.n	20000b86 <svpwm+0x46>
20000c6a:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000c6e:	1bc9      	subs	r1, r1, r7
20000c70:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000c74:	e791      	b.n	20000b9a <svpwm+0x5a>
20000c76:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000c7a:	1bc9      	subs	r1, r1, r7
20000c7c:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000c80:	e795      	b.n	20000bae <svpwm+0x6e>
20000c82:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000c86:	1bc9      	subs	r1, r1, r7
20000c88:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000c8c:	e799      	b.n	20000bc2 <svpwm+0x82>
20000c8e:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000c92:	1bc9      	subs	r1, r1, r7
20000c94:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000c98:	e79d      	b.n	20000bd6 <svpwm+0x96>
20000c9a:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000c9e:	1bc9      	subs	r1, r1, r7
20000ca0:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000ca4:	e7a1      	b.n	20000bea <svpwm+0xaa>
20000ca6:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000caa:	1bc9      	subs	r1, r1, r7
20000cac:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000cb0:	e7a5      	b.n	20000bfe <svpwm+0xbe>
20000cb2:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
20000cb6:	4e5e      	ldr	r6, [pc, #376]	; (20000e30 <svpwm+0x2f0>)
20000cb8:	3204      	adds	r2, #4
20000cba:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000cbe:	3556      	adds	r5, #86	; 0x56
20000cc0:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000cc4:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000cc8:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000ccc:	fb01 f103 	mul.w	r1, r1, r3
20000cd0:	fb02 f203 	mul.w	r2, r2, r3
20000cd4:	1289      	asrs	r1, r1, #10
20000cd6:	1293      	asrs	r3, r2, #10
20000cd8:	424a      	negs	r2, r1
20000cda:	1ad2      	subs	r2, r2, r3
20000cdc:	1a5d      	subs	r5, r3, r1
20000cde:	440b      	add	r3, r1
20000ce0:	6062      	str	r2, [r4, #4]
20000ce2:	6025      	str	r5, [r4, #0]
20000ce4:	60a3      	str	r3, [r4, #8]
20000ce6:	b011      	add	sp, #68	; 0x44
20000ce8:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000cea:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000cee:	4e50      	ldr	r6, [pc, #320]	; (20000e30 <svpwm+0x2f0>)
20000cf0:	3202      	adds	r2, #2
20000cf2:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000cf6:	f505 7540 	add.w	r5, r5, #768	; 0x300
20000cfa:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000cfe:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d02:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000d06:	fb01 f103 	mul.w	r1, r1, r3
20000d0a:	fb02 f203 	mul.w	r2, r2, r3
20000d0e:	1289      	asrs	r1, r1, #10
20000d10:	1293      	asrs	r3, r2, #10
20000d12:	424a      	negs	r2, r1
20000d14:	1ad2      	subs	r2, r2, r3
20000d16:	18cd      	adds	r5, r1, r3
20000d18:	1a5b      	subs	r3, r3, r1
20000d1a:	60a2      	str	r2, [r4, #8]
20000d1c:	6025      	str	r5, [r4, #0]
20000d1e:	6063      	str	r3, [r4, #4]
20000d20:	b011      	add	sp, #68	; 0x44
20000d22:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000d24:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20000d28:	4e41      	ldr	r6, [pc, #260]	; (20000e30 <svpwm+0x2f0>)
20000d2a:	3204      	adds	r2, #4
20000d2c:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d30:	f205 2556 	addw	r5, r5, #598	; 0x256
20000d34:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000d38:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d3c:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000d40:	fb01 f103 	mul.w	r1, r1, r3
20000d44:	fb02 f203 	mul.w	r2, r2, r3
20000d48:	1289      	asrs	r1, r1, #10
20000d4a:	1293      	asrs	r3, r2, #10
20000d4c:	424a      	negs	r2, r1
20000d4e:	1ad2      	subs	r2, r2, r3
20000d50:	1acd      	subs	r5, r1, r3
20000d52:	440b      	add	r3, r1
20000d54:	60a2      	str	r2, [r4, #8]
20000d56:	6025      	str	r5, [r4, #0]
20000d58:	6063      	str	r3, [r4, #4]
20000d5a:	b011      	add	sp, #68	; 0x44
20000d5c:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000d5e:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20000d62:	4e33      	ldr	r6, [pc, #204]	; (20000e30 <svpwm+0x2f0>)
20000d64:	320f      	adds	r2, #15
20000d66:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d6a:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20000d6e:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000d72:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d76:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000d7a:	fb01 f103 	mul.w	r1, r1, r3
20000d7e:	fb02 f203 	mul.w	r2, r2, r3
20000d82:	1289      	asrs	r1, r1, #10
20000d84:	1293      	asrs	r3, r2, #10
20000d86:	424a      	negs	r2, r1
20000d88:	1ad2      	subs	r2, r2, r3
20000d8a:	18cd      	adds	r5, r1, r3
20000d8c:	1a5b      	subs	r3, r3, r1
20000d8e:	e884 0024 	stmia.w	r4, {r2, r5}
20000d92:	60a3      	str	r3, [r4, #8]
20000d94:	b011      	add	sp, #68	; 0x44
20000d96:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000d98:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20000d9c:	4e24      	ldr	r6, [pc, #144]	; (20000e30 <svpwm+0x2f0>)
20000d9e:	320a      	adds	r2, #10
20000da0:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000da4:	f505 7580 	add.w	r5, r5, #256	; 0x100
20000da8:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000dac:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000db0:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000db4:	fb01 f103 	mul.w	r1, r1, r3
20000db8:	fb02 f203 	mul.w	r2, r2, r3
20000dbc:	1289      	asrs	r1, r1, #10
20000dbe:	1293      	asrs	r3, r2, #10
20000dc0:	424a      	negs	r2, r1
20000dc2:	1ad2      	subs	r2, r2, r3
20000dc4:	1acd      	subs	r5, r1, r3
20000dc6:	440b      	add	r3, r1
20000dc8:	e884 0024 	stmia.w	r4, {r2, r5}
20000dcc:	60a3      	str	r3, [r4, #8]
20000dce:	b011      	add	sp, #68	; 0x44
20000dd0:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000dd2:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000dd6:	4916      	ldr	r1, [pc, #88]	; (20000e30 <svpwm+0x2f0>)
20000dd8:	320f      	adds	r2, #15
20000dda:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000dde:	3d55      	subs	r5, #85	; 0x55
20000de0:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000de4:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000de8:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000dec:	fb02 f203 	mul.w	r2, r2, r3
20000df0:	fb01 f303 	mul.w	r3, r1, r3
20000df4:	1292      	asrs	r2, r2, #10
20000df6:	129b      	asrs	r3, r3, #10
20000df8:	4251      	negs	r1, r2
20000dfa:	18d5      	adds	r5, r2, r3
20000dfc:	1ac9      	subs	r1, r1, r3
20000dfe:	1ad2      	subs	r2, r2, r3
20000e00:	6061      	str	r1, [r4, #4]
20000e02:	6025      	str	r5, [r4, #0]
20000e04:	60a2      	str	r2, [r4, #8]
20000e06:	b011      	add	sp, #68	; 0x44
20000e08:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000e0a:	461a      	mov	r2, r3
20000e0c:	e703      	b.n	20000c16 <svpwm+0xd6>
20000e0e:	4610      	mov	r0, r2
20000e10:	2201      	movs	r2, #1
20000e12:	e700      	b.n	20000c16 <svpwm+0xd6>
20000e14:	2202      	movs	r2, #2
20000e16:	e6fe      	b.n	20000c16 <svpwm+0xd6>
20000e18:	4610      	mov	r0, r2
20000e1a:	2203      	movs	r2, #3
20000e1c:	e6fb      	b.n	20000c16 <svpwm+0xd6>
20000e1e:	2204      	movs	r2, #4
20000e20:	e6f9      	b.n	20000c16 <svpwm+0xd6>
20000e22:	4610      	mov	r0, r2
20000e24:	2205      	movs	r2, #5
20000e26:	e6f6      	b.n	20000c16 <svpwm+0xd6>
20000e28:	2206      	movs	r2, #6
20000e2a:	e6f4      	b.n	20000c16 <svpwm+0xd6>
20000e2c:	20001714 	.word	0x20001714
20000e30:	20001754 	.word	0x20001754

20000e34 <encoder_init>:
20000e34:	4b01      	ldr	r3, [pc, #4]	; (20000e3c <encoder_init+0x8>)
20000e36:	6018      	str	r0, [r3, #0]
20000e38:	6058      	str	r0, [r3, #4]
20000e3a:	4770      	bx	lr
20000e3c:	2000283c 	.word	0x2000283c

20000e40 <get_speed>:
20000e40:	4a0e      	ldr	r2, [pc, #56]	; (20000e7c <get_speed+0x3c>)
20000e42:	b430      	push	{r4, r5}
20000e44:	6853      	ldr	r3, [r2, #4]
20000e46:	6815      	ldr	r5, [r2, #0]
20000e48:	1ac3      	subs	r3, r0, r3
20000e4a:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20000e4e:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
20000e52:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
20000e56:	e882 0021 	stmia.w	r2, {r0, r5}
20000e5a:	dd05      	ble.n	20000e68 <get_speed+0x28>
20000e5c:	2b00      	cmp	r3, #0
20000e5e:	bfb4      	ite	lt
20000e60:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
20000e64:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20000e68:	4a05      	ldr	r2, [pc, #20]	; (20000e80 <get_speed+0x40>)
20000e6a:	1058      	asrs	r0, r3, #1
20000e6c:	fb02 f000 	mul.w	r0, r2, r0
20000e70:	bc30      	pop	{r4, r5}
20000e72:	680a      	ldr	r2, [r1, #0]
20000e74:	1300      	asrs	r0, r0, #12
20000e76:	4413      	add	r3, r2
20000e78:	600b      	str	r3, [r1, #0]
20000e7a:	4770      	bx	lr
20000e7c:	2000283c 	.word	0x2000283c
20000e80:	0002ae7c 	.word	0x0002ae7c

20000e84 <mfilter>:
20000e84:	4908      	ldr	r1, [pc, #32]	; (20000ea8 <mfilter+0x24>)
20000e86:	b430      	push	{r4, r5}
20000e88:	688a      	ldr	r2, [r1, #8]
20000e8a:	68cb      	ldr	r3, [r1, #12]
20000e8c:	3201      	adds	r2, #1
20000e8e:	f002 021f 	and.w	r2, r2, #31
20000e92:	eb01 0482 	add.w	r4, r1, r2, lsl #2
20000e96:	6925      	ldr	r5, [r4, #16]
20000e98:	608a      	str	r2, [r1, #8]
20000e9a:	1b5b      	subs	r3, r3, r5
20000e9c:	4403      	add	r3, r0
20000e9e:	6120      	str	r0, [r4, #16]
20000ea0:	60cb      	str	r3, [r1, #12]
20000ea2:	1158      	asrs	r0, r3, #5
20000ea4:	bc30      	pop	{r4, r5}
20000ea6:	4770      	bx	lr
20000ea8:	2000283c 	.word	0x2000283c

20000eac <rfilter1>:
20000eac:	b470      	push	{r4, r5, r6}
20000eae:	f240 74c6 	movw	r4, #1990	; 0x7c6
20000eb2:	4b12      	ldr	r3, [pc, #72]	; (20000efc <rfilter1+0x50>)
20000eb4:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20000eb8:	f8d3 6090 	ldr.w	r6, [r3, #144]	; 0x90
20000ebc:	f8d3 1098 	ldr.w	r1, [r3, #152]	; 0x98
20000ec0:	fb04 f406 	mul.w	r4, r4, r6
20000ec4:	fb02 4201 	mla	r2, r2, r1, r4
20000ec8:	490d      	ldr	r1, [pc, #52]	; (20000f00 <rfilter1+0x54>)
20000eca:	f8d3 5094 	ldr.w	r5, [r3, #148]	; 0x94
20000ece:	fb01 2200 	mla	r2, r1, r0, r2
20000ed2:	4c0c      	ldr	r4, [pc, #48]	; (20000f04 <rfilter1+0x58>)
20000ed4:	f8d3 109c 	ldr.w	r1, [r3, #156]	; 0x9c
20000ed8:	fb04 2205 	mla	r2, r4, r5, r2
20000edc:	4c0a      	ldr	r4, [pc, #40]	; (20000f08 <rfilter1+0x5c>)
20000ede:	f8c3 6098 	str.w	r6, [r3, #152]	; 0x98
20000ee2:	fb04 2201 	mla	r2, r4, r1, r2
20000ee6:	1291      	asrs	r1, r2, #10
20000ee8:	f8c3 0094 	str.w	r0, [r3, #148]	; 0x94
20000eec:	f8c3 509c 	str.w	r5, [r3, #156]	; 0x9c
20000ef0:	1490      	asrs	r0, r2, #18
20000ef2:	f8c3 1090 	str.w	r1, [r3, #144]	; 0x90
20000ef6:	bc70      	pop	{r4, r5, r6}
20000ef8:	4770      	bx	lr
20000efa:	bf00      	nop
20000efc:	2000283c 	.word	0x2000283c
20000f00:	0003f0a4 	.word	0x0003f0a4
20000f04:	fff83a2e 	.word	0xfff83a2e
20000f08:	0003dc29 	.word	0x0003dc29

20000f0c <rfilter2>:
20000f0c:	b470      	push	{r4, r5, r6}
20000f0e:	f240 748a 	movw	r4, #1930	; 0x78a
20000f12:	4b11      	ldr	r3, [pc, #68]	; (20000f58 <rfilter2+0x4c>)
20000f14:	4a11      	ldr	r2, [pc, #68]	; (20000f5c <rfilter2+0x50>)
20000f16:	f8d3 60a0 	ldr.w	r6, [r3, #160]	; 0xa0
20000f1a:	f8d3 10a8 	ldr.w	r1, [r3, #168]	; 0xa8
20000f1e:	fb04 f406 	mul.w	r4, r4, r6
20000f22:	fb02 4201 	mla	r2, r2, r1, r4
20000f26:	490e      	ldr	r1, [pc, #56]	; (20000f60 <rfilter2+0x54>)
20000f28:	f8d3 50a4 	ldr.w	r5, [r3, #164]	; 0xa4
20000f2c:	fb01 2200 	mla	r2, r1, r0, r2
20000f30:	4c0c      	ldr	r4, [pc, #48]	; (20000f64 <rfilter2+0x58>)
20000f32:	f8d3 10ac 	ldr.w	r1, [r3, #172]	; 0xac
20000f36:	fb04 2205 	mla	r2, r4, r5, r2
20000f3a:	4c0b      	ldr	r4, [pc, #44]	; (20000f68 <rfilter2+0x5c>)
20000f3c:	f8c3 60a8 	str.w	r6, [r3, #168]	; 0xa8
20000f40:	fb04 2201 	mla	r2, r4, r1, r2
20000f44:	1291      	asrs	r1, r2, #10
20000f46:	f8c3 00a4 	str.w	r0, [r3, #164]	; 0xa4
20000f4a:	f8c3 50ac 	str.w	r5, [r3, #172]	; 0xac
20000f4e:	1490      	asrs	r0, r2, #18
20000f50:	f8c3 10a0 	str.w	r1, [r3, #160]	; 0xa0
20000f54:	bc70      	pop	{r4, r5, r6}
20000f56:	4770      	bx	lr
20000f58:	2000283c 	.word	0x2000283c
20000f5c:	fffffc66 	.word	0xfffffc66
20000f60:	0003e3d7 	.word	0x0003e3d7
20000f64:	fff8767b 	.word	0xfff8767b
20000f68:	0003b5c3 	.word	0x0003b5c3

20000f6c <adc_init>:
20000f6c:	b480      	push	{r7}
20000f6e:	af00      	add	r7, sp, #0
20000f70:	4a10      	ldr	r2, [pc, #64]	; (20000fb4 <adc_init+0x48>)
20000f72:	4b10      	ldr	r3, [pc, #64]	; (20000fb4 <adc_init+0x48>)
20000f74:	69db      	ldr	r3, [r3, #28]
20000f76:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000f7a:	61d3      	str	r3, [r2, #28]
20000f7c:	4b0d      	ldr	r3, [pc, #52]	; (20000fb4 <adc_init+0x48>)
20000f7e:	f242 0220 	movw	r2, #8224	; 0x2020
20000f82:	615a      	str	r2, [r3, #20]
20000f84:	4b0c      	ldr	r3, [pc, #48]	; (20000fb8 <adc_init+0x4c>)
20000f86:	2200      	movs	r2, #0
20000f88:	601a      	str	r2, [r3, #0]
20000f8a:	4a0b      	ldr	r2, [pc, #44]	; (20000fb8 <adc_init+0x4c>)
20000f8c:	4b0a      	ldr	r3, [pc, #40]	; (20000fb8 <adc_init+0x4c>)
20000f8e:	681b      	ldr	r3, [r3, #0]
20000f90:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20000f94:	f043 0301 	orr.w	r3, r3, #1
20000f98:	6013      	str	r3, [r2, #0]
20000f9a:	4a07      	ldr	r2, [pc, #28]	; (20000fb8 <adc_init+0x4c>)
20000f9c:	4b06      	ldr	r3, [pc, #24]	; (20000fb8 <adc_init+0x4c>)
20000f9e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20000fa0:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
20000fa4:	6293      	str	r3, [r2, #40]	; 0x28
20000fa6:	4b04      	ldr	r3, [pc, #16]	; (20000fb8 <adc_init+0x4c>)
20000fa8:	2210      	movs	r2, #16
20000faa:	621a      	str	r2, [r3, #32]
20000fac:	bf00      	nop
20000fae:	46bd      	mov	sp, r7
20000fb0:	bc80      	pop	{r7}
20000fb2:	4770      	bx	lr
20000fb4:	40020000 	.word	0x40020000
20000fb8:	40088000 	.word	0x40088000

20000fbc <dma_init>:
20000fbc:	b480      	push	{r7}
20000fbe:	af00      	add	r7, sp, #0
20000fc0:	4a17      	ldr	r2, [pc, #92]	; (20001020 <dma_init+0x64>)
20000fc2:	4b17      	ldr	r3, [pc, #92]	; (20001020 <dma_init+0x64>)
20000fc4:	69db      	ldr	r3, [r3, #28]
20000fc6:	f043 0320 	orr.w	r3, r3, #32
20000fca:	61d3      	str	r3, [r2, #28]
20000fcc:	4b15      	ldr	r3, [pc, #84]	; (20001024 <dma_init+0x68>)
20000fce:	4a16      	ldr	r2, [pc, #88]	; (20001028 <dma_init+0x6c>)
20000fd0:	609a      	str	r2, [r3, #8]
20000fd2:	4b14      	ldr	r3, [pc, #80]	; (20001024 <dma_init+0x68>)
20000fd4:	f04f 32ff 	mov.w	r2, #4294967295
20000fd8:	62da      	str	r2, [r3, #44]	; 0x2c
20000fda:	4b12      	ldr	r3, [pc, #72]	; (20001024 <dma_init+0x68>)
20000fdc:	f04f 32ff 	mov.w	r2, #4294967295
20000fe0:	621a      	str	r2, [r3, #32]
20000fe2:	4b10      	ldr	r3, [pc, #64]	; (20001024 <dma_init+0x68>)
20000fe4:	f04f 32ff 	mov.w	r2, #4294967295
20000fe8:	635a      	str	r2, [r3, #52]	; 0x34
20000fea:	4b0e      	ldr	r3, [pc, #56]	; (20001024 <dma_init+0x68>)
20000fec:	f44f 7280 	mov.w	r2, #256	; 0x100
20000ff0:	61da      	str	r2, [r3, #28]
20000ff2:	4b0c      	ldr	r3, [pc, #48]	; (20001024 <dma_init+0x68>)
20000ff4:	f44f 7280 	mov.w	r2, #256	; 0x100
20000ff8:	625a      	str	r2, [r3, #36]	; 0x24
20000ffa:	4b0a      	ldr	r3, [pc, #40]	; (20001024 <dma_init+0x68>)
20000ffc:	2201      	movs	r2, #1
20000ffe:	605a      	str	r2, [r3, #4]
20001000:	4b09      	ldr	r3, [pc, #36]	; (20001028 <dma_init+0x6c>)
20001002:	4a0a      	ldr	r2, [pc, #40]	; (2000102c <dma_init+0x70>)
20001004:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20001008:	4a09      	ldr	r2, [pc, #36]	; (20001030 <dma_init+0x74>)
2000100a:	4b07      	ldr	r3, [pc, #28]	; (20001028 <dma_init+0x6c>)
2000100c:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001010:	4b05      	ldr	r3, [pc, #20]	; (20001028 <dma_init+0x6c>)
20001012:	4a08      	ldr	r2, [pc, #32]	; (20001034 <dma_init+0x78>)
20001014:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20001018:	bf00      	nop
2000101a:	46bd      	mov	sp, r7
2000101c:	bc80      	pop	{r7}
2000101e:	4770      	bx	lr
20001020:	40020000 	.word	0x40020000
20001024:	40028000 	.word	0x40028000
20001028:	20002c00 	.word	0x20002c00
2000102c:	40088018 	.word	0x40088018
20001030:	20002e04 	.word	0x20002e04
20001034:	ae000011 	.word	0xae000011

20001038 <adc_dma_init>:
20001038:	b580      	push	{r7, lr}
2000103a:	af00      	add	r7, sp, #0
2000103c:	f7ff ff96 	bl	20000f6c <adc_init>
20001040:	f7ff ffbc 	bl	20000fbc <dma_init>
20001044:	bf00      	nop
20001046:	bd80      	pop	{r7, pc}

20001048 <adc_dma_start>:
20001048:	b480      	push	{r7}
2000104a:	af00      	add	r7, sp, #0
2000104c:	4a06      	ldr	r2, [pc, #24]	; (20001068 <adc_dma_start+0x20>)
2000104e:	4b06      	ldr	r3, [pc, #24]	; (20001068 <adc_dma_start+0x20>)
20001050:	681b      	ldr	r3, [r3, #0]
20001052:	f043 0308 	orr.w	r3, r3, #8
20001056:	6013      	str	r3, [r2, #0]
20001058:	4b04      	ldr	r3, [pc, #16]	; (2000106c <adc_dma_start+0x24>)
2000105a:	f44f 7280 	mov.w	r2, #256	; 0x100
2000105e:	629a      	str	r2, [r3, #40]	; 0x28
20001060:	bf00      	nop
20001062:	46bd      	mov	sp, r7
20001064:	bc80      	pop	{r7}
20001066:	4770      	bx	lr
20001068:	40088000 	.word	0x40088000
2000106c:	40028000 	.word	0x40028000

20001070 <adc_dma_wait>:
20001070:	b480      	push	{r7}
20001072:	af00      	add	r7, sp, #0
20001074:	bf00      	nop
20001076:	4b0a      	ldr	r3, [pc, #40]	; (200010a0 <adc_dma_wait+0x30>)
20001078:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
2000107c:	f003 0307 	and.w	r3, r3, #7
20001080:	2b00      	cmp	r3, #0
20001082:	d1f8      	bne.n	20001076 <adc_dma_wait+0x6>
20001084:	4a07      	ldr	r2, [pc, #28]	; (200010a4 <adc_dma_wait+0x34>)
20001086:	4b07      	ldr	r3, [pc, #28]	; (200010a4 <adc_dma_wait+0x34>)
20001088:	681b      	ldr	r3, [r3, #0]
2000108a:	f023 0308 	bic.w	r3, r3, #8
2000108e:	6013      	str	r3, [r2, #0]
20001090:	4b03      	ldr	r3, [pc, #12]	; (200010a0 <adc_dma_wait+0x30>)
20001092:	4a05      	ldr	r2, [pc, #20]	; (200010a8 <adc_dma_wait+0x38>)
20001094:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20001098:	bf00      	nop
2000109a:	46bd      	mov	sp, r7
2000109c:	bc80      	pop	{r7}
2000109e:	4770      	bx	lr
200010a0:	20002c00 	.word	0x20002c00
200010a4:	40088000 	.word	0x40088000
200010a8:	ae000011 	.word	0xae000011

200010ac <NVIC_EnableIRQ>:
200010ac:	b480      	push	{r7}
200010ae:	b083      	sub	sp, #12
200010b0:	af00      	add	r7, sp, #0
200010b2:	4603      	mov	r3, r0
200010b4:	71fb      	strb	r3, [r7, #7]
200010b6:	4908      	ldr	r1, [pc, #32]	; (200010d8 <NVIC_EnableIRQ+0x2c>)
200010b8:	f997 3007 	ldrsb.w	r3, [r7, #7]
200010bc:	095b      	lsrs	r3, r3, #5
200010be:	79fa      	ldrb	r2, [r7, #7]
200010c0:	f002 021f 	and.w	r2, r2, #31
200010c4:	2001      	movs	r0, #1
200010c6:	fa00 f202 	lsl.w	r2, r0, r2
200010ca:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
200010ce:	bf00      	nop
200010d0:	370c      	adds	r7, #12
200010d2:	46bd      	mov	sp, r7
200010d4:	bc80      	pop	{r7}
200010d6:	4770      	bx	lr
200010d8:	e000e100 	.word	0xe000e100

200010dc <PortConfig>:
200010dc:	b480      	push	{r7}
200010de:	af00      	add	r7, sp, #0
200010e0:	4a66      	ldr	r2, [pc, #408]	; (2000127c <PortConfig+0x1a0>)
200010e2:	4b66      	ldr	r3, [pc, #408]	; (2000127c <PortConfig+0x1a0>)
200010e4:	69db      	ldr	r3, [r3, #28]
200010e6:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
200010ea:	61d3      	str	r3, [r2, #28]
200010ec:	4b64      	ldr	r3, [pc, #400]	; (20001280 <PortConfig+0x1a4>)
200010ee:	2200      	movs	r2, #0
200010f0:	609a      	str	r2, [r3, #8]
200010f2:	4b63      	ldr	r3, [pc, #396]	; (20001280 <PortConfig+0x1a4>)
200010f4:	2200      	movs	r2, #0
200010f6:	601a      	str	r2, [r3, #0]
200010f8:	4a61      	ldr	r2, [pc, #388]	; (20001280 <PortConfig+0x1a4>)
200010fa:	4b61      	ldr	r3, [pc, #388]	; (20001280 <PortConfig+0x1a4>)
200010fc:	685b      	ldr	r3, [r3, #4]
200010fe:	f043 0301 	orr.w	r3, r3, #1
20001102:	6053      	str	r3, [r2, #4]
20001104:	4a5e      	ldr	r2, [pc, #376]	; (20001280 <PortConfig+0x1a4>)
20001106:	4b5e      	ldr	r3, [pc, #376]	; (20001280 <PortConfig+0x1a4>)
20001108:	68db      	ldr	r3, [r3, #12]
2000110a:	f043 0301 	orr.w	r3, r3, #1
2000110e:	60d3      	str	r3, [r2, #12]
20001110:	4a5b      	ldr	r2, [pc, #364]	; (20001280 <PortConfig+0x1a4>)
20001112:	4b5b      	ldr	r3, [pc, #364]	; (20001280 <PortConfig+0x1a4>)
20001114:	699b      	ldr	r3, [r3, #24]
20001116:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
2000111a:	6193      	str	r3, [r2, #24]
2000111c:	4a58      	ldr	r2, [pc, #352]	; (20001280 <PortConfig+0x1a4>)
2000111e:	4b58      	ldr	r3, [pc, #352]	; (20001280 <PortConfig+0x1a4>)
20001120:	685b      	ldr	r3, [r3, #4]
20001122:	f023 0308 	bic.w	r3, r3, #8
20001126:	6053      	str	r3, [r2, #4]
20001128:	4a55      	ldr	r2, [pc, #340]	; (20001280 <PortConfig+0x1a4>)
2000112a:	4b55      	ldr	r3, [pc, #340]	; (20001280 <PortConfig+0x1a4>)
2000112c:	68db      	ldr	r3, [r3, #12]
2000112e:	f043 0308 	orr.w	r3, r3, #8
20001132:	60d3      	str	r3, [r2, #12]
20001134:	4b52      	ldr	r3, [pc, #328]	; (20001280 <PortConfig+0x1a4>)
20001136:	2280      	movs	r2, #128	; 0x80
20001138:	609a      	str	r2, [r3, #8]
2000113a:	4a50      	ldr	r2, [pc, #320]	; (2000127c <PortConfig+0x1a0>)
2000113c:	4b4f      	ldr	r3, [pc, #316]	; (2000127c <PortConfig+0x1a0>)
2000113e:	69db      	ldr	r3, [r3, #28]
20001140:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20001144:	61d3      	str	r3, [r2, #28]
20001146:	4a4f      	ldr	r2, [pc, #316]	; (20001284 <PortConfig+0x1a8>)
20001148:	4b4e      	ldr	r3, [pc, #312]	; (20001284 <PortConfig+0x1a8>)
2000114a:	689b      	ldr	r3, [r3, #8]
2000114c:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20001150:	6093      	str	r3, [r2, #8]
20001152:	4a4c      	ldr	r2, [pc, #304]	; (20001284 <PortConfig+0x1a8>)
20001154:	4b4b      	ldr	r3, [pc, #300]	; (20001284 <PortConfig+0x1a8>)
20001156:	689b      	ldr	r3, [r3, #8]
20001158:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
2000115c:	6093      	str	r3, [r2, #8]
2000115e:	4a49      	ldr	r2, [pc, #292]	; (20001284 <PortConfig+0x1a8>)
20001160:	4b48      	ldr	r3, [pc, #288]	; (20001284 <PortConfig+0x1a8>)
20001162:	68db      	ldr	r3, [r3, #12]
20001164:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
20001168:	60d3      	str	r3, [r2, #12]
2000116a:	4a46      	ldr	r2, [pc, #280]	; (20001284 <PortConfig+0x1a8>)
2000116c:	4b45      	ldr	r3, [pc, #276]	; (20001284 <PortConfig+0x1a8>)
2000116e:	699b      	ldr	r3, [r3, #24]
20001170:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
20001174:	6193      	str	r3, [r2, #24]
20001176:	4a43      	ldr	r2, [pc, #268]	; (20001284 <PortConfig+0x1a8>)
20001178:	4b42      	ldr	r3, [pc, #264]	; (20001284 <PortConfig+0x1a8>)
2000117a:	685b      	ldr	r3, [r3, #4]
2000117c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20001180:	6053      	str	r3, [r2, #4]
20001182:	4a40      	ldr	r2, [pc, #256]	; (20001284 <PortConfig+0x1a8>)
20001184:	4b3f      	ldr	r3, [pc, #252]	; (20001284 <PortConfig+0x1a8>)
20001186:	685b      	ldr	r3, [r3, #4]
20001188:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
2000118c:	6053      	str	r3, [r2, #4]
2000118e:	4a3d      	ldr	r2, [pc, #244]	; (20001284 <PortConfig+0x1a8>)
20001190:	4b3c      	ldr	r3, [pc, #240]	; (20001284 <PortConfig+0x1a8>)
20001192:	689b      	ldr	r3, [r3, #8]
20001194:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
20001198:	6093      	str	r3, [r2, #8]
2000119a:	4a3a      	ldr	r2, [pc, #232]	; (20001284 <PortConfig+0x1a8>)
2000119c:	4b39      	ldr	r3, [pc, #228]	; (20001284 <PortConfig+0x1a8>)
2000119e:	689b      	ldr	r3, [r3, #8]
200011a0:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
200011a4:	6093      	str	r3, [r2, #8]
200011a6:	4a37      	ldr	r2, [pc, #220]	; (20001284 <PortConfig+0x1a8>)
200011a8:	4b36      	ldr	r3, [pc, #216]	; (20001284 <PortConfig+0x1a8>)
200011aa:	68db      	ldr	r3, [r3, #12]
200011ac:	f043 0360 	orr.w	r3, r3, #96	; 0x60
200011b0:	60d3      	str	r3, [r2, #12]
200011b2:	4a34      	ldr	r2, [pc, #208]	; (20001284 <PortConfig+0x1a8>)
200011b4:	4b33      	ldr	r3, [pc, #204]	; (20001284 <PortConfig+0x1a8>)
200011b6:	699b      	ldr	r3, [r3, #24]
200011b8:	f443 5370 	orr.w	r3, r3, #15360	; 0x3c00
200011bc:	6193      	str	r3, [r2, #24]
200011be:	4a2f      	ldr	r2, [pc, #188]	; (2000127c <PortConfig+0x1a0>)
200011c0:	4b2e      	ldr	r3, [pc, #184]	; (2000127c <PortConfig+0x1a0>)
200011c2:	69db      	ldr	r3, [r3, #28]
200011c4:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
200011c8:	61d3      	str	r3, [r2, #28]
200011ca:	4b2f      	ldr	r3, [pc, #188]	; (20001288 <PortConfig+0x1ac>)
200011cc:	4a2f      	ldr	r2, [pc, #188]	; (2000128c <PortConfig+0x1b0>)
200011ce:	609a      	str	r2, [r3, #8]
200011d0:	4b2d      	ldr	r3, [pc, #180]	; (20001288 <PortConfig+0x1ac>)
200011d2:	f64f 72ff 	movw	r2, #65535	; 0xffff
200011d6:	60da      	str	r2, [r3, #12]
200011d8:	4b2b      	ldr	r3, [pc, #172]	; (20001288 <PortConfig+0x1ac>)
200011da:	f04f 32ff 	mov.w	r2, #4294967295
200011de:	619a      	str	r2, [r3, #24]
200011e0:	4b29      	ldr	r3, [pc, #164]	; (20001288 <PortConfig+0x1ac>)
200011e2:	f64f 72ff 	movw	r2, #65535	; 0xffff
200011e6:	605a      	str	r2, [r3, #4]
200011e8:	4a27      	ldr	r2, [pc, #156]	; (20001288 <PortConfig+0x1ac>)
200011ea:	4b27      	ldr	r3, [pc, #156]	; (20001288 <PortConfig+0x1ac>)
200011ec:	681b      	ldr	r3, [r3, #0]
200011ee:	f023 0303 	bic.w	r3, r3, #3
200011f2:	6013      	str	r3, [r2, #0]
200011f4:	4a24      	ldr	r2, [pc, #144]	; (20001288 <PortConfig+0x1ac>)
200011f6:	4b24      	ldr	r3, [pc, #144]	; (20001288 <PortConfig+0x1ac>)
200011f8:	681b      	ldr	r3, [r3, #0]
200011fa:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200011fe:	6013      	str	r3, [r2, #0]
20001200:	4a1e      	ldr	r2, [pc, #120]	; (2000127c <PortConfig+0x1a0>)
20001202:	4b1e      	ldr	r3, [pc, #120]	; (2000127c <PortConfig+0x1a0>)
20001204:	69db      	ldr	r3, [r3, #28]
20001206:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
2000120a:	61d3      	str	r3, [r2, #28]
2000120c:	4b20      	ldr	r3, [pc, #128]	; (20001290 <PortConfig+0x1b4>)
2000120e:	2200      	movs	r2, #0
20001210:	609a      	str	r2, [r3, #8]
20001212:	4a1f      	ldr	r2, [pc, #124]	; (20001290 <PortConfig+0x1b4>)
20001214:	4b1e      	ldr	r3, [pc, #120]	; (20001290 <PortConfig+0x1b4>)
20001216:	685b      	ldr	r3, [r3, #4]
20001218:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000121c:	6053      	str	r3, [r2, #4]
2000121e:	4a1c      	ldr	r2, [pc, #112]	; (20001290 <PortConfig+0x1b4>)
20001220:	4b1b      	ldr	r3, [pc, #108]	; (20001290 <PortConfig+0x1b4>)
20001222:	68db      	ldr	r3, [r3, #12]
20001224:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001228:	60d3      	str	r3, [r2, #12]
2000122a:	4b19      	ldr	r3, [pc, #100]	; (20001290 <PortConfig+0x1b4>)
2000122c:	f04f 32ff 	mov.w	r2, #4294967295
20001230:	619a      	str	r2, [r3, #24]
20001232:	4a17      	ldr	r2, [pc, #92]	; (20001290 <PortConfig+0x1b4>)
20001234:	4b16      	ldr	r3, [pc, #88]	; (20001290 <PortConfig+0x1b4>)
20001236:	681b      	ldr	r3, [r3, #0]
20001238:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000123c:	6013      	str	r3, [r2, #0]
2000123e:	4a0f      	ldr	r2, [pc, #60]	; (2000127c <PortConfig+0x1a0>)
20001240:	4b0e      	ldr	r3, [pc, #56]	; (2000127c <PortConfig+0x1a0>)
20001242:	69db      	ldr	r3, [r3, #28]
20001244:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
20001248:	61d3      	str	r3, [r2, #28]
2000124a:	4a12      	ldr	r2, [pc, #72]	; (20001294 <PortConfig+0x1b8>)
2000124c:	4b11      	ldr	r3, [pc, #68]	; (20001294 <PortConfig+0x1b8>)
2000124e:	68db      	ldr	r3, [r3, #12]
20001250:	f423 7300 	bic.w	r3, r3, #512	; 0x200
20001254:	f023 0301 	bic.w	r3, r3, #1
20001258:	60d3      	str	r3, [r2, #12]
2000125a:	4a08      	ldr	r2, [pc, #32]	; (2000127c <PortConfig+0x1a0>)
2000125c:	4b07      	ldr	r3, [pc, #28]	; (2000127c <PortConfig+0x1a0>)
2000125e:	69db      	ldr	r3, [r3, #28]
20001260:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001264:	61d3      	str	r3, [r2, #28]
20001266:	4a0c      	ldr	r2, [pc, #48]	; (20001298 <PortConfig+0x1bc>)
20001268:	4b0b      	ldr	r3, [pc, #44]	; (20001298 <PortConfig+0x1bc>)
2000126a:	68db      	ldr	r3, [r3, #12]
2000126c:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
20001270:	60d3      	str	r3, [r2, #12]
20001272:	bf00      	nop
20001274:	46bd      	mov	sp, r7
20001276:	bc80      	pop	{r7}
20001278:	4770      	bx	lr
2000127a:	bf00      	nop
2000127c:	40020000 	.word	0x40020000
20001280:	400a8000 	.word	0x400a8000
20001284:	400b0000 	.word	0x400b0000
20001288:	400b8000 	.word	0x400b8000
2000128c:	000aaaa0 	.word	0x000aaaa0
20001290:	400e8000 	.word	0x400e8000
20001294:	400c8000 	.word	0x400c8000
20001298:	400c0000 	.word	0x400c0000

2000129c <ClkConfig>:
2000129c:	b480      	push	{r7}
2000129e:	af00      	add	r7, sp, #0
200012a0:	4a16      	ldr	r2, [pc, #88]	; (200012fc <ClkConfig+0x60>)
200012a2:	4b16      	ldr	r3, [pc, #88]	; (200012fc <ClkConfig+0x60>)
200012a4:	689b      	ldr	r3, [r3, #8]
200012a6:	f043 0301 	orr.w	r3, r3, #1
200012aa:	6093      	str	r3, [r2, #8]
200012ac:	bf00      	nop
200012ae:	4b13      	ldr	r3, [pc, #76]	; (200012fc <ClkConfig+0x60>)
200012b0:	681b      	ldr	r3, [r3, #0]
200012b2:	f003 0304 	and.w	r3, r3, #4
200012b6:	2b00      	cmp	r3, #0
200012b8:	d0f9      	beq.n	200012ae <ClkConfig+0x12>
200012ba:	4b10      	ldr	r3, [pc, #64]	; (200012fc <ClkConfig+0x60>)
200012bc:	2206      	movs	r2, #6
200012be:	60da      	str	r2, [r3, #12]
200012c0:	4b0e      	ldr	r3, [pc, #56]	; (200012fc <ClkConfig+0x60>)
200012c2:	f640 1204 	movw	r2, #2308	; 0x904
200012c6:	605a      	str	r2, [r3, #4]
200012c8:	bf00      	nop
200012ca:	4b0c      	ldr	r3, [pc, #48]	; (200012fc <ClkConfig+0x60>)
200012cc:	681b      	ldr	r3, [r3, #0]
200012ce:	f003 0302 	and.w	r3, r3, #2
200012d2:	2b00      	cmp	r3, #0
200012d4:	d0f9      	beq.n	200012ca <ClkConfig+0x2e>
200012d6:	4a09      	ldr	r2, [pc, #36]	; (200012fc <ClkConfig+0x60>)
200012d8:	4b08      	ldr	r3, [pc, #32]	; (200012fc <ClkConfig+0x60>)
200012da:	68db      	ldr	r3, [r3, #12]
200012dc:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200012e0:	60d3      	str	r3, [r2, #12]
200012e2:	4a07      	ldr	r2, [pc, #28]	; (20001300 <ClkConfig+0x64>)
200012e4:	4b06      	ldr	r3, [pc, #24]	; (20001300 <ClkConfig+0x64>)
200012e6:	681b      	ldr	r3, [r3, #0]
200012e8:	f043 0320 	orr.w	r3, r3, #32
200012ec:	6013      	str	r3, [r2, #0]
200012ee:	4b05      	ldr	r3, [pc, #20]	; (20001304 <ClkConfig+0x68>)
200012f0:	2200      	movs	r2, #0
200012f2:	601a      	str	r2, [r3, #0]
200012f4:	bf00      	nop
200012f6:	46bd      	mov	sp, r7
200012f8:	bc80      	pop	{r7}
200012fa:	4770      	bx	lr
200012fc:	40020000 	.word	0x40020000
20001300:	40018000 	.word	0x40018000
20001304:	20002900 	.word	0x20002900

20001308 <TimerConfig>:
20001308:	b580      	push	{r7, lr}
2000130a:	af00      	add	r7, sp, #0
2000130c:	4a8a      	ldr	r2, [pc, #552]	; (20001538 <TimerConfig+0x230>)
2000130e:	4b8a      	ldr	r3, [pc, #552]	; (20001538 <TimerConfig+0x230>)
20001310:	69db      	ldr	r3, [r3, #28]
20001312:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
20001316:	61d3      	str	r3, [r2, #28]
20001318:	4a87      	ldr	r2, [pc, #540]	; (20001538 <TimerConfig+0x230>)
2000131a:	4b87      	ldr	r3, [pc, #540]	; (20001538 <TimerConfig+0x230>)
2000131c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000131e:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
20001322:	6253      	str	r3, [r2, #36]	; 0x24
20001324:	4a84      	ldr	r2, [pc, #528]	; (20001538 <TimerConfig+0x230>)
20001326:	4b84      	ldr	r3, [pc, #528]	; (20001538 <TimerConfig+0x230>)
20001328:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000132a:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
2000132e:	6253      	str	r3, [r2, #36]	; 0x24
20001330:	4b82      	ldr	r3, [pc, #520]	; (2000153c <TimerConfig+0x234>)
20001332:	2200      	movs	r2, #0
20001334:	601a      	str	r2, [r3, #0]
20001336:	4b81      	ldr	r3, [pc, #516]	; (2000153c <TimerConfig+0x234>)
20001338:	224f      	movs	r2, #79	; 0x4f
2000133a:	605a      	str	r2, [r3, #4]
2000133c:	4b7f      	ldr	r3, [pc, #508]	; (2000153c <TimerConfig+0x234>)
2000133e:	f240 32e7 	movw	r2, #999	; 0x3e7
20001342:	609a      	str	r2, [r3, #8]
20001344:	4a7d      	ldr	r2, [pc, #500]	; (2000153c <TimerConfig+0x234>)
20001346:	4b7d      	ldr	r3, [pc, #500]	; (2000153c <TimerConfig+0x234>)
20001348:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000134a:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
2000134e:	6253      	str	r3, [r2, #36]	; 0x24
20001350:	4a7a      	ldr	r2, [pc, #488]	; (2000153c <TimerConfig+0x234>)
20001352:	4b7a      	ldr	r3, [pc, #488]	; (2000153c <TimerConfig+0x234>)
20001354:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001356:	f043 0302 	orr.w	r3, r3, #2
2000135a:	6593      	str	r3, [r2, #88]	; 0x58
2000135c:	4b77      	ldr	r3, [pc, #476]	; (2000153c <TimerConfig+0x234>)
2000135e:	2201      	movs	r2, #1
20001360:	60da      	str	r2, [r3, #12]
20001362:	4a75      	ldr	r2, [pc, #468]	; (20001538 <TimerConfig+0x230>)
20001364:	4b74      	ldr	r3, [pc, #464]	; (20001538 <TimerConfig+0x230>)
20001366:	69db      	ldr	r3, [r3, #28]
20001368:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
2000136c:	61d3      	str	r3, [r2, #28]
2000136e:	4a72      	ldr	r2, [pc, #456]	; (20001538 <TimerConfig+0x230>)
20001370:	4b71      	ldr	r3, [pc, #452]	; (20001538 <TimerConfig+0x230>)
20001372:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001374:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
20001378:	6253      	str	r3, [r2, #36]	; 0x24
2000137a:	4a6f      	ldr	r2, [pc, #444]	; (20001538 <TimerConfig+0x230>)
2000137c:	4b6e      	ldr	r3, [pc, #440]	; (20001538 <TimerConfig+0x230>)
2000137e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001380:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
20001384:	6253      	str	r3, [r2, #36]	; 0x24
20001386:	4b6e      	ldr	r3, [pc, #440]	; (20001540 <TimerConfig+0x238>)
20001388:	2200      	movs	r2, #0
2000138a:	601a      	str	r2, [r3, #0]
2000138c:	4b6c      	ldr	r3, [pc, #432]	; (20001540 <TimerConfig+0x238>)
2000138e:	2202      	movs	r2, #2
20001390:	605a      	str	r2, [r3, #4]
20001392:	4b6b      	ldr	r3, [pc, #428]	; (20001540 <TimerConfig+0x238>)
20001394:	f240 32ff 	movw	r2, #1023	; 0x3ff
20001398:	609a      	str	r2, [r3, #8]
2000139a:	4b69      	ldr	r3, [pc, #420]	; (20001540 <TimerConfig+0x238>)
2000139c:	f44f 7200 	mov.w	r2, #512	; 0x200
200013a0:	611a      	str	r2, [r3, #16]
200013a2:	4b67      	ldr	r3, [pc, #412]	; (20001540 <TimerConfig+0x238>)
200013a4:	f44f 7200 	mov.w	r2, #512	; 0x200
200013a8:	615a      	str	r2, [r3, #20]
200013aa:	4b65      	ldr	r3, [pc, #404]	; (20001540 <TimerConfig+0x238>)
200013ac:	f44f 7200 	mov.w	r2, #512	; 0x200
200013b0:	619a      	str	r2, [r3, #24]
200013b2:	4a63      	ldr	r2, [pc, #396]	; (20001540 <TimerConfig+0x238>)
200013b4:	4b62      	ldr	r3, [pc, #392]	; (20001540 <TimerConfig+0x238>)
200013b6:	6a1b      	ldr	r3, [r3, #32]
200013b8:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200013bc:	6213      	str	r3, [r2, #32]
200013be:	4a60      	ldr	r2, [pc, #384]	; (20001540 <TimerConfig+0x238>)
200013c0:	4b5f      	ldr	r3, [pc, #380]	; (20001540 <TimerConfig+0x238>)
200013c2:	6a1b      	ldr	r3, [r3, #32]
200013c4:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200013c8:	6213      	str	r3, [r2, #32]
200013ca:	4a5d      	ldr	r2, [pc, #372]	; (20001540 <TimerConfig+0x238>)
200013cc:	4b5c      	ldr	r3, [pc, #368]	; (20001540 <TimerConfig+0x238>)
200013ce:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200013d0:	f023 030f 	bic.w	r3, r3, #15
200013d4:	6313      	str	r3, [r2, #48]	; 0x30
200013d6:	4a5a      	ldr	r2, [pc, #360]	; (20001540 <TimerConfig+0x238>)
200013d8:	4b59      	ldr	r3, [pc, #356]	; (20001540 <TimerConfig+0x238>)
200013da:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200013dc:	f043 030c 	orr.w	r3, r3, #12
200013e0:	6313      	str	r3, [r2, #48]	; 0x30
200013e2:	4a57      	ldr	r2, [pc, #348]	; (20001540 <TimerConfig+0x238>)
200013e4:	4b56      	ldr	r3, [pc, #344]	; (20001540 <TimerConfig+0x238>)
200013e6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200013e8:	f043 0301 	orr.w	r3, r3, #1
200013ec:	6313      	str	r3, [r2, #48]	; 0x30
200013ee:	4a54      	ldr	r2, [pc, #336]	; (20001540 <TimerConfig+0x238>)
200013f0:	4b53      	ldr	r3, [pc, #332]	; (20001540 <TimerConfig+0x238>)
200013f2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200013f4:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200013f8:	6313      	str	r3, [r2, #48]	; 0x30
200013fa:	4a51      	ldr	r2, [pc, #324]	; (20001540 <TimerConfig+0x238>)
200013fc:	4b50      	ldr	r3, [pc, #320]	; (20001540 <TimerConfig+0x238>)
200013fe:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001400:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001404:	6313      	str	r3, [r2, #48]	; 0x30
20001406:	4a4e      	ldr	r2, [pc, #312]	; (20001540 <TimerConfig+0x238>)
20001408:	4b4d      	ldr	r3, [pc, #308]	; (20001540 <TimerConfig+0x238>)
2000140a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000140c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001410:	6313      	str	r3, [r2, #48]	; 0x30
20001412:	4a4b      	ldr	r2, [pc, #300]	; (20001540 <TimerConfig+0x238>)
20001414:	4b4a      	ldr	r3, [pc, #296]	; (20001540 <TimerConfig+0x238>)
20001416:	6e1b      	ldr	r3, [r3, #96]	; 0x60
20001418:	f043 0308 	orr.w	r3, r3, #8
2000141c:	6613      	str	r3, [r2, #96]	; 0x60
2000141e:	4a48      	ldr	r2, [pc, #288]	; (20001540 <TimerConfig+0x238>)
20001420:	4b47      	ldr	r3, [pc, #284]	; (20001540 <TimerConfig+0x238>)
20001422:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001424:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001428:	6253      	str	r3, [r2, #36]	; 0x24
2000142a:	4a45      	ldr	r2, [pc, #276]	; (20001540 <TimerConfig+0x238>)
2000142c:	4b44      	ldr	r3, [pc, #272]	; (20001540 <TimerConfig+0x238>)
2000142e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001430:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001434:	6253      	str	r3, [r2, #36]	; 0x24
20001436:	4a42      	ldr	r2, [pc, #264]	; (20001540 <TimerConfig+0x238>)
20001438:	4b41      	ldr	r3, [pc, #260]	; (20001540 <TimerConfig+0x238>)
2000143a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000143c:	f023 030f 	bic.w	r3, r3, #15
20001440:	6353      	str	r3, [r2, #52]	; 0x34
20001442:	4a3f      	ldr	r2, [pc, #252]	; (20001540 <TimerConfig+0x238>)
20001444:	4b3e      	ldr	r3, [pc, #248]	; (20001540 <TimerConfig+0x238>)
20001446:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001448:	f043 030c 	orr.w	r3, r3, #12
2000144c:	6353      	str	r3, [r2, #52]	; 0x34
2000144e:	4a3c      	ldr	r2, [pc, #240]	; (20001540 <TimerConfig+0x238>)
20001450:	4b3b      	ldr	r3, [pc, #236]	; (20001540 <TimerConfig+0x238>)
20001452:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001454:	f043 0301 	orr.w	r3, r3, #1
20001458:	6353      	str	r3, [r2, #52]	; 0x34
2000145a:	4a39      	ldr	r2, [pc, #228]	; (20001540 <TimerConfig+0x238>)
2000145c:	4b38      	ldr	r3, [pc, #224]	; (20001540 <TimerConfig+0x238>)
2000145e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001460:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001464:	6353      	str	r3, [r2, #52]	; 0x34
20001466:	4a36      	ldr	r2, [pc, #216]	; (20001540 <TimerConfig+0x238>)
20001468:	4b35      	ldr	r3, [pc, #212]	; (20001540 <TimerConfig+0x238>)
2000146a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000146c:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001470:	6353      	str	r3, [r2, #52]	; 0x34
20001472:	4a33      	ldr	r2, [pc, #204]	; (20001540 <TimerConfig+0x238>)
20001474:	4b32      	ldr	r3, [pc, #200]	; (20001540 <TimerConfig+0x238>)
20001476:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001478:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000147c:	6353      	str	r3, [r2, #52]	; 0x34
2000147e:	4a30      	ldr	r2, [pc, #192]	; (20001540 <TimerConfig+0x238>)
20001480:	4b2f      	ldr	r3, [pc, #188]	; (20001540 <TimerConfig+0x238>)
20001482:	6e5b      	ldr	r3, [r3, #100]	; 0x64
20001484:	f043 0308 	orr.w	r3, r3, #8
20001488:	6653      	str	r3, [r2, #100]	; 0x64
2000148a:	4a2d      	ldr	r2, [pc, #180]	; (20001540 <TimerConfig+0x238>)
2000148c:	4b2c      	ldr	r3, [pc, #176]	; (20001540 <TimerConfig+0x238>)
2000148e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001490:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001494:	6293      	str	r3, [r2, #40]	; 0x28
20001496:	4a2a      	ldr	r2, [pc, #168]	; (20001540 <TimerConfig+0x238>)
20001498:	4b29      	ldr	r3, [pc, #164]	; (20001540 <TimerConfig+0x238>)
2000149a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
2000149c:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200014a0:	6293      	str	r3, [r2, #40]	; 0x28
200014a2:	4a27      	ldr	r2, [pc, #156]	; (20001540 <TimerConfig+0x238>)
200014a4:	4b26      	ldr	r3, [pc, #152]	; (20001540 <TimerConfig+0x238>)
200014a6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200014a8:	f023 030f 	bic.w	r3, r3, #15
200014ac:	6393      	str	r3, [r2, #56]	; 0x38
200014ae:	4a24      	ldr	r2, [pc, #144]	; (20001540 <TimerConfig+0x238>)
200014b0:	4b23      	ldr	r3, [pc, #140]	; (20001540 <TimerConfig+0x238>)
200014b2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200014b4:	f043 030c 	orr.w	r3, r3, #12
200014b8:	6393      	str	r3, [r2, #56]	; 0x38
200014ba:	4a21      	ldr	r2, [pc, #132]	; (20001540 <TimerConfig+0x238>)
200014bc:	4b20      	ldr	r3, [pc, #128]	; (20001540 <TimerConfig+0x238>)
200014be:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200014c0:	f043 0301 	orr.w	r3, r3, #1
200014c4:	6393      	str	r3, [r2, #56]	; 0x38
200014c6:	4a1e      	ldr	r2, [pc, #120]	; (20001540 <TimerConfig+0x238>)
200014c8:	4b1d      	ldr	r3, [pc, #116]	; (20001540 <TimerConfig+0x238>)
200014ca:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200014cc:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200014d0:	6393      	str	r3, [r2, #56]	; 0x38
200014d2:	4a1b      	ldr	r2, [pc, #108]	; (20001540 <TimerConfig+0x238>)
200014d4:	4b1a      	ldr	r3, [pc, #104]	; (20001540 <TimerConfig+0x238>)
200014d6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200014d8:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200014dc:	6393      	str	r3, [r2, #56]	; 0x38
200014de:	4a18      	ldr	r2, [pc, #96]	; (20001540 <TimerConfig+0x238>)
200014e0:	4b17      	ldr	r3, [pc, #92]	; (20001540 <TimerConfig+0x238>)
200014e2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200014e4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200014e8:	6393      	str	r3, [r2, #56]	; 0x38
200014ea:	4a15      	ldr	r2, [pc, #84]	; (20001540 <TimerConfig+0x238>)
200014ec:	4b14      	ldr	r3, [pc, #80]	; (20001540 <TimerConfig+0x238>)
200014ee:	6e9b      	ldr	r3, [r3, #104]	; 0x68
200014f0:	f043 0308 	orr.w	r3, r3, #8
200014f4:	6693      	str	r3, [r2, #104]	; 0x68
200014f6:	4a12      	ldr	r2, [pc, #72]	; (20001540 <TimerConfig+0x238>)
200014f8:	4b11      	ldr	r3, [pc, #68]	; (20001540 <TimerConfig+0x238>)
200014fa:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200014fc:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001500:	6413      	str	r3, [r2, #64]	; 0x40
20001502:	4a0f      	ldr	r2, [pc, #60]	; (20001540 <TimerConfig+0x238>)
20001504:	4b0e      	ldr	r3, [pc, #56]	; (20001540 <TimerConfig+0x238>)
20001506:	6c5b      	ldr	r3, [r3, #68]	; 0x44
20001508:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
2000150c:	6453      	str	r3, [r2, #68]	; 0x44
2000150e:	4a0c      	ldr	r2, [pc, #48]	; (20001540 <TimerConfig+0x238>)
20001510:	4b0b      	ldr	r3, [pc, #44]	; (20001540 <TimerConfig+0x238>)
20001512:	6c9b      	ldr	r3, [r3, #72]	; 0x48
20001514:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001518:	6493      	str	r3, [r2, #72]	; 0x48
2000151a:	4a09      	ldr	r2, [pc, #36]	; (20001540 <TimerConfig+0x238>)
2000151c:	4b08      	ldr	r3, [pc, #32]	; (20001540 <TimerConfig+0x238>)
2000151e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001520:	f043 0302 	orr.w	r3, r3, #2
20001524:	6593      	str	r3, [r2, #88]	; 0x58
20001526:	2010      	movs	r0, #16
20001528:	f7ff fdc0 	bl	200010ac <NVIC_EnableIRQ>
2000152c:	4b04      	ldr	r3, [pc, #16]	; (20001540 <TimerConfig+0x238>)
2000152e:	2201      	movs	r2, #1
20001530:	60da      	str	r2, [r3, #12]
20001532:	bf00      	nop
20001534:	bd80      	pop	{r7, pc}
20001536:	bf00      	nop
20001538:	40020000 	.word	0x40020000
2000153c:	40070000 	.word	0x40070000
20001540:	40080000 	.word	0x40080000

20001544 <set_ram_vt>:
20001544:	b480      	push	{r7}
20001546:	b085      	sub	sp, #20
20001548:	af00      	add	r7, sp, #0
2000154a:	2300      	movs	r3, #0
2000154c:	60fb      	str	r3, [r7, #12]
2000154e:	2300      	movs	r3, #0
20001550:	607b      	str	r3, [r7, #4]
20001552:	4b14      	ldr	r3, [pc, #80]	; (200015a4 <set_ram_vt+0x60>)
20001554:	60bb      	str	r3, [r7, #8]
20001556:	2300      	movs	r3, #0
20001558:	60fb      	str	r3, [r7, #12]
2000155a:	e00b      	b.n	20001574 <set_ram_vt+0x30>
2000155c:	68bb      	ldr	r3, [r7, #8]
2000155e:	1d1a      	adds	r2, r3, #4
20001560:	60ba      	str	r2, [r7, #8]
20001562:	68fa      	ldr	r2, [r7, #12]
20001564:	0092      	lsls	r2, r2, #2
20001566:	6879      	ldr	r1, [r7, #4]
20001568:	440a      	add	r2, r1
2000156a:	6812      	ldr	r2, [r2, #0]
2000156c:	601a      	str	r2, [r3, #0]
2000156e:	68fb      	ldr	r3, [r7, #12]
20001570:	3301      	adds	r3, #1
20001572:	60fb      	str	r3, [r7, #12]
20001574:	68fb      	ldr	r3, [r7, #12]
20001576:	2b2f      	cmp	r3, #47	; 0x2f
20001578:	d9f0      	bls.n	2000155c <set_ram_vt+0x18>
2000157a:	4b0b      	ldr	r3, [pc, #44]	; (200015a8 <set_ram_vt+0x64>)
2000157c:	4a09      	ldr	r2, [pc, #36]	; (200015a4 <set_ram_vt+0x60>)
2000157e:	609a      	str	r2, [r3, #8]
20001580:	4b08      	ldr	r3, [pc, #32]	; (200015a4 <set_ram_vt+0x60>)
20001582:	4a0a      	ldr	r2, [pc, #40]	; (200015ac <set_ram_vt+0x68>)
20001584:	63da      	str	r2, [r3, #60]	; 0x3c
20001586:	4b07      	ldr	r3, [pc, #28]	; (200015a4 <set_ram_vt+0x60>)
20001588:	4a09      	ldr	r2, [pc, #36]	; (200015b0 <set_ram_vt+0x6c>)
2000158a:	659a      	str	r2, [r3, #88]	; 0x58
2000158c:	4b05      	ldr	r3, [pc, #20]	; (200015a4 <set_ram_vt+0x60>)
2000158e:	4a09      	ldr	r2, [pc, #36]	; (200015b4 <set_ram_vt+0x70>)
20001590:	679a      	str	r2, [r3, #120]	; 0x78
20001592:	4b04      	ldr	r3, [pc, #16]	; (200015a4 <set_ram_vt+0x60>)
20001594:	4a08      	ldr	r2, [pc, #32]	; (200015b8 <set_ram_vt+0x74>)
20001596:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
2000159a:	bf00      	nop
2000159c:	3714      	adds	r7, #20
2000159e:	46bd      	mov	sp, r7
200015a0:	bc80      	pop	{r7}
200015a2:	4770      	bx	lr
200015a4:	20002a00 	.word	0x20002a00
200015a8:	e000ed00 	.word	0xe000ed00
200015ac:	20001675 	.word	0x20001675
200015b0:	20001691 	.word	0x20001691
200015b4:	20000421 	.word	0x20000421
200015b8:	20000439 	.word	0x20000439

200015bc <uart_init>:
200015bc:	b480      	push	{r7}
200015be:	af00      	add	r7, sp, #0
200015c0:	4b22      	ldr	r3, [pc, #136]	; (2000164c <uart_init+0x90>)
200015c2:	2200      	movs	r2, #0
200015c4:	601a      	str	r2, [r3, #0]
200015c6:	4a22      	ldr	r2, [pc, #136]	; (20001650 <uart_init+0x94>)
200015c8:	4b21      	ldr	r3, [pc, #132]	; (20001650 <uart_init+0x94>)
200015ca:	69db      	ldr	r3, [r3, #28]
200015cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
200015d0:	61d3      	str	r3, [r2, #28]
200015d2:	4a1f      	ldr	r2, [pc, #124]	; (20001650 <uart_init+0x94>)
200015d4:	4b1e      	ldr	r3, [pc, #120]	; (20001650 <uart_init+0x94>)
200015d6:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200015d8:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
200015dc:	6293      	str	r3, [r2, #40]	; 0x28
200015de:	4b1d      	ldr	r3, [pc, #116]	; (20001654 <uart_init+0x98>)
200015e0:	2204      	movs	r2, #4
200015e2:	625a      	str	r2, [r3, #36]	; 0x24
200015e4:	4b1b      	ldr	r3, [pc, #108]	; (20001654 <uart_init+0x98>)
200015e6:	2200      	movs	r2, #0
200015e8:	629a      	str	r2, [r3, #40]	; 0x28
200015ea:	4a1a      	ldr	r2, [pc, #104]	; (20001654 <uart_init+0x98>)
200015ec:	4b19      	ldr	r3, [pc, #100]	; (20001654 <uart_init+0x98>)
200015ee:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200015f0:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
200015f4:	6353      	str	r3, [r2, #52]	; 0x34
200015f6:	4a17      	ldr	r2, [pc, #92]	; (20001654 <uart_init+0x98>)
200015f8:	4b16      	ldr	r3, [pc, #88]	; (20001654 <uart_init+0x98>)
200015fa:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200015fc:	f043 0312 	orr.w	r3, r3, #18
20001600:	6353      	str	r3, [r2, #52]	; 0x34
20001602:	4a14      	ldr	r2, [pc, #80]	; (20001654 <uart_init+0x98>)
20001604:	4b13      	ldr	r3, [pc, #76]	; (20001654 <uart_init+0x98>)
20001606:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001608:	f043 0310 	orr.w	r3, r3, #16
2000160c:	62d3      	str	r3, [r2, #44]	; 0x2c
2000160e:	4a11      	ldr	r2, [pc, #68]	; (20001654 <uart_init+0x98>)
20001610:	4b10      	ldr	r3, [pc, #64]	; (20001654 <uart_init+0x98>)
20001612:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001614:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001618:	62d3      	str	r3, [r2, #44]	; 0x2c
2000161a:	4a0e      	ldr	r2, [pc, #56]	; (20001654 <uart_init+0x98>)
2000161c:	4b0d      	ldr	r3, [pc, #52]	; (20001654 <uart_init+0x98>)
2000161e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001620:	f443 7340 	orr.w	r3, r3, #768	; 0x300
20001624:	f043 0301 	orr.w	r3, r3, #1
20001628:	6313      	str	r3, [r2, #48]	; 0x30
2000162a:	4a0a      	ldr	r2, [pc, #40]	; (20001654 <uart_init+0x98>)
2000162c:	4b09      	ldr	r3, [pc, #36]	; (20001654 <uart_init+0x98>)
2000162e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001630:	f043 0310 	orr.w	r3, r3, #16
20001634:	6393      	str	r3, [r2, #56]	; 0x38
20001636:	4a07      	ldr	r2, [pc, #28]	; (20001654 <uart_init+0x98>)
20001638:	4b06      	ldr	r3, [pc, #24]	; (20001654 <uart_init+0x98>)
2000163a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000163c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001640:	6393      	str	r3, [r2, #56]	; 0x38
20001642:	bf00      	nop
20001644:	46bd      	mov	sp, r7
20001646:	bc80      	pop	{r7}
20001648:	4770      	bx	lr
2000164a:	bf00      	nop
2000164c:	20002ad0 	.word	0x20002ad0
20001650:	40020000 	.word	0x40020000
20001654:	40030000 	.word	0x40030000

20001658 <system_init>:
20001658:	b580      	push	{r7, lr}
2000165a:	af00      	add	r7, sp, #0
2000165c:	f7ff ff72 	bl	20001544 <set_ram_vt>
20001660:	f7ff fe1c 	bl	2000129c <ClkConfig>
20001664:	f7ff fd3a 	bl	200010dc <PortConfig>
20001668:	f7ff fe4e 	bl	20001308 <TimerConfig>
2000166c:	f7ff ffa6 	bl	200015bc <uart_init>
20001670:	bf00      	nop
20001672:	bd80      	pop	{r7, pc}

20001674 <SysTick_Handler>:
20001674:	b480      	push	{r7}
20001676:	af00      	add	r7, sp, #0
20001678:	4b04      	ldr	r3, [pc, #16]	; (2000168c <SysTick_Handler+0x18>)
2000167a:	681b      	ldr	r3, [r3, #0]
2000167c:	3301      	adds	r3, #1
2000167e:	4a03      	ldr	r2, [pc, #12]	; (2000168c <SysTick_Handler+0x18>)
20001680:	6013      	str	r3, [r2, #0]
20001682:	bf00      	nop
20001684:	46bd      	mov	sp, r7
20001686:	bc80      	pop	{r7}
20001688:	4770      	bx	lr
2000168a:	bf00      	nop
2000168c:	20002900 	.word	0x20002900

20001690 <UART1_Handler>:
20001690:	b480      	push	{r7}
20001692:	b083      	sub	sp, #12
20001694:	af00      	add	r7, sp, #0
20001696:	4b1d      	ldr	r3, [pc, #116]	; (2000170c <UART1_Handler+0x7c>)
20001698:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000169a:	f003 0310 	and.w	r3, r3, #16
2000169e:	2b00      	cmp	r3, #0
200016a0:	d01f      	beq.n	200016e2 <UART1_Handler+0x52>
200016a2:	e002      	b.n	200016aa <UART1_Handler+0x1a>
200016a4:	4b19      	ldr	r3, [pc, #100]	; (2000170c <UART1_Handler+0x7c>)
200016a6:	681b      	ldr	r3, [r3, #0]
200016a8:	71fb      	strb	r3, [r7, #7]
200016aa:	4b18      	ldr	r3, [pc, #96]	; (2000170c <UART1_Handler+0x7c>)
200016ac:	699b      	ldr	r3, [r3, #24]
200016ae:	f003 0310 	and.w	r3, r3, #16
200016b2:	2b00      	cmp	r3, #0
200016b4:	d0f6      	beq.n	200016a4 <UART1_Handler+0x14>
200016b6:	4b16      	ldr	r3, [pc, #88]	; (20001710 <UART1_Handler+0x80>)
200016b8:	681b      	ldr	r3, [r3, #0]
200016ba:	80bb      	strh	r3, [r7, #4]
200016bc:	4b14      	ldr	r3, [pc, #80]	; (20001710 <UART1_Handler+0x80>)
200016be:	689b      	ldr	r3, [r3, #8]
200016c0:	085b      	lsrs	r3, r3, #1
200016c2:	807b      	strh	r3, [r7, #2]
200016c4:	88ba      	ldrh	r2, [r7, #4]
200016c6:	887b      	ldrh	r3, [r7, #2]
200016c8:	429a      	cmp	r2, r3
200016ca:	d205      	bcs.n	200016d8 <UART1_Handler+0x48>
200016cc:	4a10      	ldr	r2, [pc, #64]	; (20001710 <UART1_Handler+0x80>)
200016ce:	4b10      	ldr	r3, [pc, #64]	; (20001710 <UART1_Handler+0x80>)
200016d0:	681b      	ldr	r3, [r3, #0]
200016d2:	3b01      	subs	r3, #1
200016d4:	6013      	str	r3, [r2, #0]
200016d6:	e004      	b.n	200016e2 <UART1_Handler+0x52>
200016d8:	4a0d      	ldr	r2, [pc, #52]	; (20001710 <UART1_Handler+0x80>)
200016da:	4b0d      	ldr	r3, [pc, #52]	; (20001710 <UART1_Handler+0x80>)
200016dc:	681b      	ldr	r3, [r3, #0]
200016de:	3301      	adds	r3, #1
200016e0:	6013      	str	r3, [r2, #0]
200016e2:	4b0a      	ldr	r3, [pc, #40]	; (2000170c <UART1_Handler+0x7c>)
200016e4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200016e6:	f003 0340 	and.w	r3, r3, #64	; 0x40
200016ea:	2b00      	cmp	r3, #0
200016ec:	d009      	beq.n	20001702 <UART1_Handler+0x72>
200016ee:	e002      	b.n	200016f6 <UART1_Handler+0x66>
200016f0:	4b06      	ldr	r3, [pc, #24]	; (2000170c <UART1_Handler+0x7c>)
200016f2:	681b      	ldr	r3, [r3, #0]
200016f4:	707b      	strb	r3, [r7, #1]
200016f6:	4b05      	ldr	r3, [pc, #20]	; (2000170c <UART1_Handler+0x7c>)
200016f8:	699b      	ldr	r3, [r3, #24]
200016fa:	f003 0310 	and.w	r3, r3, #16
200016fe:	2b00      	cmp	r3, #0
20001700:	d0f6      	beq.n	200016f0 <UART1_Handler+0x60>
20001702:	bf00      	nop
20001704:	370c      	adds	r7, #12
20001706:	46bd      	mov	sp, r7
20001708:	bc80      	pop	{r7}
2000170a:	4770      	bx	lr
2000170c:	40030000 	.word	0x40030000
20001710:	40070000 	.word	0x40070000
