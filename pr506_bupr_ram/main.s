
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
20000030:	67bb      	str	r3, [r7, #120]	; 0x78
20000032:	f001 fb4d 	bl	200016d0 <system_init>
20000036:	f000 f983 	bl	20000340 <ssi_init>
2000003a:	f000 f9f5 	bl	20000428 <dac_init>
2000003e:	f001 f83d 	bl	200010bc <adc_dma_init>
20000042:	f107 0348 	add.w	r3, r7, #72	; 0x48
20000046:	22c8      	movs	r2, #200	; 0xc8
20000048:	2150      	movs	r1, #80	; 0x50
2000004a:	4618      	mov	r0, r3
2000004c:	f000 fb78 	bl	20000740 <reg_init>
20000050:	f107 0338 	add.w	r3, r7, #56	; 0x38
20000054:	22c8      	movs	r2, #200	; 0xc8
20000056:	2150      	movs	r1, #80	; 0x50
20000058:	4618      	mov	r0, r3
2000005a:	f000 fb71 	bl	20000740 <reg_init>
2000005e:	f107 0328 	add.w	r3, r7, #40	; 0x28
20000062:	f241 3288 	movw	r2, #5000	; 0x1388
20000066:	2100      	movs	r1, #0
20000068:	4618      	mov	r0, r3
2000006a:	f000 fb69 	bl	20000740 <reg_init>
2000006e:	f107 0318 	add.w	r3, r7, #24
20000072:	f241 7270 	movw	r2, #6000	; 0x1770
20000076:	2100      	movs	r1, #0
20000078:	4618      	mov	r0, r3
2000007a:	f000 fb61 	bl	20000740 <reg_init>
2000007e:	2300      	movs	r3, #0
20000080:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
20000084:	2300      	movs	r3, #0
20000086:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
2000008a:	4b90      	ldr	r3, [pc, #576]	; (200002cc <main+0x2cc>)
2000008c:	2200      	movs	r2, #0
2000008e:	601a      	str	r2, [r3, #0]
20000090:	2300      	movs	r3, #0
20000092:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
20000096:	e028      	b.n	200000ea <main+0xea>
20000098:	f001 f82c 	bl	200010f4 <adc_dma_wait>
2000009c:	4b8c      	ldr	r3, [pc, #560]	; (200002d0 <main+0x2d0>)
2000009e:	685b      	ldr	r3, [r3, #4]
200000a0:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000a4:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000a8:	4413      	add	r3, r2
200000aa:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
200000ae:	4b88      	ldr	r3, [pc, #544]	; (200002d0 <main+0x2d0>)
200000b0:	681b      	ldr	r3, [r3, #0]
200000b2:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000b6:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
200000ba:	4413      	add	r3, r2
200000bc:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
200000c0:	4b84      	ldr	r3, [pc, #528]	; (200002d4 <main+0x2d4>)
200000c2:	689b      	ldr	r3, [r3, #8]
200000c4:	4618      	mov	r0, r3
200000c6:	f000 f985 	bl	200003d4 <enc_crc>
200000ca:	4602      	mov	r2, r0
200000cc:	4b7f      	ldr	r3, [pc, #508]	; (200002cc <main+0x2cc>)
200000ce:	681b      	ldr	r3, [r3, #0]
200000d0:	4413      	add	r3, r2
200000d2:	461a      	mov	r2, r3
200000d4:	4b7d      	ldr	r3, [pc, #500]	; (200002cc <main+0x2cc>)
200000d6:	601a      	str	r2, [r3, #0]
200000d8:	2100      	movs	r1, #0
200000da:	2000      	movs	r0, #0
200000dc:	f000 ff16 	bl	20000f0c <mfilter>
200000e0:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
200000e4:	3301      	adds	r3, #1
200000e6:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
200000ea:	f8d7 3094 	ldr.w	r3, [r7, #148]	; 0x94
200000ee:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
200000f2:	dbd1      	blt.n	20000098 <main+0x98>
200000f4:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000f8:	129b      	asrs	r3, r3, #10
200000fa:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
200000fe:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
20000102:	129b      	asrs	r3, r3, #10
20000104:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
20000108:	4b70      	ldr	r3, [pc, #448]	; (200002cc <main+0x2cc>)
2000010a:	681b      	ldr	r3, [r3, #0]
2000010c:	129b      	asrs	r3, r3, #10
2000010e:	4a6f      	ldr	r2, [pc, #444]	; (200002cc <main+0x2cc>)
20000110:	6013      	str	r3, [r2, #0]
20000112:	4b71      	ldr	r3, [pc, #452]	; (200002d8 <main+0x2d8>)
20000114:	2200      	movs	r2, #0
20000116:	601a      	str	r2, [r3, #0]
20000118:	4b6c      	ldr	r3, [pc, #432]	; (200002cc <main+0x2cc>)
2000011a:	681b      	ldr	r3, [r3, #0]
2000011c:	4a6f      	ldr	r2, [pc, #444]	; (200002dc <main+0x2dc>)
2000011e:	6013      	str	r3, [r2, #0]
20000120:	4b6a      	ldr	r3, [pc, #424]	; (200002cc <main+0x2cc>)
20000122:	681b      	ldr	r3, [r3, #0]
20000124:	4618      	mov	r0, r3
20000126:	f000 fec9 	bl	20000ebc <encoder_init>
2000012a:	4b6d      	ldr	r3, [pc, #436]	; (200002e0 <main+0x2e0>)
2000012c:	2200      	movs	r2, #0
2000012e:	601a      	str	r2, [r3, #0]
20000130:	f000 ffe0 	bl	200010f4 <adc_dma_wait>
20000134:	4b66      	ldr	r3, [pc, #408]	; (200002d0 <main+0x2d0>)
20000136:	685b      	ldr	r3, [r3, #4]
20000138:	f3c3 020b 	ubfx	r2, r3, #0, #12
2000013c:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
20000140:	1ad3      	subs	r3, r2, r3
20000142:	677b      	str	r3, [r7, #116]	; 0x74
20000144:	4b62      	ldr	r3, [pc, #392]	; (200002d0 <main+0x2d0>)
20000146:	681b      	ldr	r3, [r3, #0]
20000148:	f3c3 020b 	ubfx	r2, r3, #0, #12
2000014c:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
20000150:	1ad3      	subs	r3, r2, r3
20000152:	673b      	str	r3, [r7, #112]	; 0x70
20000154:	6f7a      	ldr	r2, [r7, #116]	; 0x74
20000156:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20000158:	4413      	add	r3, r2
2000015a:	66fb      	str	r3, [r7, #108]	; 0x6c
2000015c:	4b5d      	ldr	r3, [pc, #372]	; (200002d4 <main+0x2d4>)
2000015e:	689b      	ldr	r3, [r3, #8]
20000160:	4618      	mov	r0, r3
20000162:	f000 f937 	bl	200003d4 <enc_crc>
20000166:	66b8      	str	r0, [r7, #104]	; 0x68
20000168:	6ebb      	ldr	r3, [r7, #104]	; 0x68
2000016a:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000016e:	67bb      	str	r3, [r7, #120]	; 0x78
20000170:	4a5c      	ldr	r2, [pc, #368]	; (200002e4 <main+0x2e4>)
20000172:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20000174:	6013      	str	r3, [r2, #0]
20000176:	4b5c      	ldr	r3, [pc, #368]	; (200002e8 <main+0x2e8>)
20000178:	681b      	ldr	r3, [r3, #0]
2000017a:	3301      	adds	r3, #1
2000017c:	4a5a      	ldr	r2, [pc, #360]	; (200002e8 <main+0x2e8>)
2000017e:	6013      	str	r3, [r2, #0]
20000180:	4b59      	ldr	r3, [pc, #356]	; (200002e8 <main+0x2e8>)
20000182:	681b      	ldr	r3, [r3, #0]
20000184:	f003 0307 	and.w	r3, r3, #7
20000188:	2b00      	cmp	r3, #0
2000018a:	d13c      	bne.n	20000206 <main+0x206>
2000018c:	f000 fa7e 	bl	2000068c <update_refposition>
20000190:	4602      	mov	r2, r0
20000192:	4b4e      	ldr	r3, [pc, #312]	; (200002cc <main+0x2cc>)
20000194:	681b      	ldr	r3, [r3, #0]
20000196:	4413      	add	r3, r2
20000198:	4a4f      	ldr	r2, [pc, #316]	; (200002d8 <main+0x2d8>)
2000019a:	6013      	str	r3, [r2, #0]
2000019c:	6ebb      	ldr	r3, [r7, #104]	; 0x68
2000019e:	494f      	ldr	r1, [pc, #316]	; (200002dc <main+0x2dc>)
200001a0:	4618      	mov	r0, r3
200001a2:	f000 fe91 	bl	20000ec8 <get_speed>
200001a6:	6678      	str	r0, [r7, #100]	; 0x64
200001a8:	4b4b      	ldr	r3, [pc, #300]	; (200002d8 <main+0x2d8>)
200001aa:	681a      	ldr	r2, [r3, #0]
200001ac:	4b4b      	ldr	r3, [pc, #300]	; (200002dc <main+0x2dc>)
200001ae:	681b      	ldr	r3, [r3, #0]
200001b0:	1ad1      	subs	r1, r2, r3
200001b2:	f107 0318 	add.w	r3, r7, #24
200001b6:	2200      	movs	r2, #0
200001b8:	4618      	mov	r0, r3
200001ba:	f000 fac7 	bl	2000074c <reg_update>
200001be:	6a7b      	ldr	r3, [r7, #36]	; 0x24
200001c0:	131b      	asrs	r3, r3, #12
200001c2:	67fb      	str	r3, [r7, #124]	; 0x7c
200001c4:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
200001c8:	67fb      	str	r3, [r7, #124]	; 0x7c
200001ca:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
200001cc:	6e7b      	ldr	r3, [r7, #100]	; 0x64
200001ce:	1ad1      	subs	r1, r2, r3
200001d0:	f107 0328 	add.w	r3, r7, #40	; 0x28
200001d4:	2200      	movs	r2, #0
200001d6:	4618      	mov	r0, r3
200001d8:	f000 fab8 	bl	2000074c <reg_update>
200001dc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
200001de:	131b      	asrs	r3, r3, #12
200001e0:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
200001e4:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
200001e8:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
200001ec:	dd03      	ble.n	200001f6 <main+0x1f6>
200001ee:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
200001f2:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
200001f6:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
200001fa:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
200001fe:	da02      	bge.n	20000206 <main+0x206>
20000200:	4b3a      	ldr	r3, [pc, #232]	; (200002ec <main+0x2ec>)
20000202:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
20000206:	f000 f995 	bl	20000534 <update_telemetry>
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
2000022c:	f000 fab4 	bl	20000798 <abc_to_dq>
20000230:	693b      	ldr	r3, [r7, #16]
20000232:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
20000236:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
2000023a:	697b      	ldr	r3, [r7, #20]
2000023c:	2b00      	cmp	r3, #0
2000023e:	bfb8      	it	lt
20000240:	425b      	neglt	r3, r3
20000242:	4413      	add	r3, r2
20000244:	663b      	str	r3, [r7, #96]	; 0x60
20000246:	4b26      	ldr	r3, [pc, #152]	; (200002e0 <main+0x2e0>)
20000248:	681b      	ldr	r3, [r3, #0]
2000024a:	4619      	mov	r1, r3
2000024c:	6e38      	ldr	r0, [r7, #96]	; 0x60
2000024e:	f000 fe5d 	bl	20000f0c <mfilter>
20000252:	4602      	mov	r2, r0
20000254:	4b22      	ldr	r3, [pc, #136]	; (200002e0 <main+0x2e0>)
20000256:	601a      	str	r2, [r3, #0]
20000258:	693b      	ldr	r3, [r7, #16]
2000025a:	425b      	negs	r3, r3
2000025c:	65fb      	str	r3, [r7, #92]	; 0x5c
2000025e:	697b      	ldr	r3, [r7, #20]
20000260:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
20000264:	1ad3      	subs	r3, r2, r3
20000266:	65bb      	str	r3, [r7, #88]	; 0x58
20000268:	4b1d      	ldr	r3, [pc, #116]	; (200002e0 <main+0x2e0>)
2000026a:	681b      	ldr	r3, [r3, #0]
2000026c:	129b      	asrs	r3, r3, #10
2000026e:	4618      	mov	r0, r3
20000270:	f000 f83e 	bl	200002f0 <debug_signal>
20000274:	f107 0348 	add.w	r3, r7, #72	; 0x48
20000278:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
2000027c:	6df9      	ldr	r1, [r7, #92]	; 0x5c
2000027e:	4618      	mov	r0, r3
20000280:	f000 fa64 	bl	2000074c <reg_update>
20000284:	f107 0338 	add.w	r3, r7, #56	; 0x38
20000288:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
2000028c:	6db9      	ldr	r1, [r7, #88]	; 0x58
2000028e:	4618      	mov	r0, r3
20000290:	f000 fa5c 	bl	2000074c <reg_update>
20000294:	6d7b      	ldr	r3, [r7, #84]	; 0x54
20000296:	109b      	asrs	r3, r3, #2
20000298:	613b      	str	r3, [r7, #16]
2000029a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
2000029c:	109b      	asrs	r3, r3, #2
2000029e:	617b      	str	r3, [r7, #20]
200002a0:	6fba      	ldr	r2, [r7, #120]	; 0x78
200002a2:	f107 0110 	add.w	r1, r7, #16
200002a6:	1d3b      	adds	r3, r7, #4
200002a8:	4618      	mov	r0, r3
200002aa:	f000 fc8d 	bl	20000bc8 <svpwm>
200002ae:	f8c7 0088 	str.w	r0, [r7, #136]	; 0x88
200002b2:	687b      	ldr	r3, [r7, #4]
200002b4:	4618      	mov	r0, r3
200002b6:	f000 f90d 	bl	200004d4 <pwm_seta>
200002ba:	68bb      	ldr	r3, [r7, #8]
200002bc:	4618      	mov	r0, r3
200002be:	f000 f919 	bl	200004f4 <pwm_setb>
200002c2:	68fb      	ldr	r3, [r7, #12]
200002c4:	4618      	mov	r0, r3
200002c6:	f000 f925 	bl	20000514 <pwm_setc>
200002ca:	e731      	b.n	20000130 <main+0x130>
200002cc:	2000280c 	.word	0x2000280c
200002d0:	20003e00 	.word	0x20003e00
200002d4:	40040000 	.word	0x40040000
200002d8:	20002800 	.word	0x20002800
200002dc:	20002824 	.word	0x20002824
200002e0:	2000282c 	.word	0x2000282c
200002e4:	20002828 	.word	0x20002828
200002e8:	20002814 	.word	0x20002814
200002ec:	fffffc18 	.word	0xfffffc18

200002f0 <debug_signal>:
200002f0:	b480      	push	{r7}
200002f2:	b083      	sub	sp, #12
200002f4:	af00      	add	r7, sp, #0
200002f6:	6078      	str	r0, [r7, #4]
200002f8:	4a04      	ldr	r2, [pc, #16]	; (2000030c <debug_signal+0x1c>)
200002fa:	687b      	ldr	r3, [r7, #4]
200002fc:	f503 6300 	add.w	r3, r3, #2048	; 0x800
20000300:	6093      	str	r3, [r2, #8]
20000302:	bf00      	nop
20000304:	370c      	adds	r7, #12
20000306:	46bd      	mov	sp, r7
20000308:	bc80      	pop	{r7}
2000030a:	4770      	bx	lr
2000030c:	40090000 	.word	0x40090000

20000310 <sleep>:
20000310:	b480      	push	{r7}
20000312:	b085      	sub	sp, #20
20000314:	af00      	add	r7, sp, #0
20000316:	6078      	str	r0, [r7, #4]
20000318:	4b08      	ldr	r3, [pc, #32]	; (2000033c <sleep+0x2c>)
2000031a:	681a      	ldr	r2, [r3, #0]
2000031c:	687b      	ldr	r3, [r7, #4]
2000031e:	4413      	add	r3, r2
20000320:	60fb      	str	r3, [r7, #12]
20000322:	bf00      	nop
20000324:	4b05      	ldr	r3, [pc, #20]	; (2000033c <sleep+0x2c>)
20000326:	681a      	ldr	r2, [r3, #0]
20000328:	68fb      	ldr	r3, [r7, #12]
2000032a:	429a      	cmp	r2, r3
2000032c:	d3fa      	bcc.n	20000324 <sleep+0x14>
2000032e:	bf00      	nop
20000330:	4618      	mov	r0, r3
20000332:	3714      	adds	r7, #20
20000334:	46bd      	mov	sp, r7
20000336:	bc80      	pop	{r7}
20000338:	4770      	bx	lr
2000033a:	bf00      	nop
2000033c:	20003900 	.word	0x20003900

20000340 <ssi_init>:
20000340:	b480      	push	{r7}
20000342:	af00      	add	r7, sp, #0
20000344:	4a0c      	ldr	r2, [pc, #48]	; (20000378 <ssi_init+0x38>)
20000346:	4b0c      	ldr	r3, [pc, #48]	; (20000378 <ssi_init+0x38>)
20000348:	69db      	ldr	r3, [r3, #28]
2000034a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000034e:	61d3      	str	r3, [r2, #28]
20000350:	4b09      	ldr	r3, [pc, #36]	; (20000378 <ssi_init+0x38>)
20000352:	4a0a      	ldr	r2, [pc, #40]	; (2000037c <ssi_init+0x3c>)
20000354:	62da      	str	r2, [r3, #44]	; 0x2c
20000356:	4b0a      	ldr	r3, [pc, #40]	; (20000380 <ssi_init+0x40>)
20000358:	2200      	movs	r2, #0
2000035a:	605a      	str	r2, [r3, #4]
2000035c:	4b08      	ldr	r3, [pc, #32]	; (20000380 <ssi_init+0x40>)
2000035e:	220a      	movs	r2, #10
20000360:	611a      	str	r2, [r3, #16]
20000362:	4b07      	ldr	r3, [pc, #28]	; (20000380 <ssi_init+0x40>)
20000364:	f240 221f 	movw	r2, #543	; 0x21f
20000368:	601a      	str	r2, [r3, #0]
2000036a:	4b05      	ldr	r3, [pc, #20]	; (20000380 <ssi_init+0x40>)
2000036c:	2202      	movs	r2, #2
2000036e:	605a      	str	r2, [r3, #4]
20000370:	bf00      	nop
20000372:	46bd      	mov	sp, r7
20000374:	bc80      	pop	{r7}
20000376:	4770      	bx	lr
20000378:	40020000 	.word	0x40020000
2000037c:	0100000a 	.word	0x0100000a
20000380:	40040000 	.word	0x40040000

20000384 <b2g>:
20000384:	b480      	push	{r7}
20000386:	b083      	sub	sp, #12
20000388:	af00      	add	r7, sp, #0
2000038a:	6078      	str	r0, [r7, #4]
2000038c:	687b      	ldr	r3, [r7, #4]
2000038e:	085a      	lsrs	r2, r3, #1
20000390:	687b      	ldr	r3, [r7, #4]
20000392:	4053      	eors	r3, r2
20000394:	4618      	mov	r0, r3
20000396:	370c      	adds	r7, #12
20000398:	46bd      	mov	sp, r7
2000039a:	bc80      	pop	{r7}
2000039c:	4770      	bx	lr
2000039e:	bf00      	nop

200003a0 <g2b>:
200003a0:	b480      	push	{r7}
200003a2:	b085      	sub	sp, #20
200003a4:	af00      	add	r7, sp, #0
200003a6:	6078      	str	r0, [r7, #4]
200003a8:	2300      	movs	r3, #0
200003aa:	60fb      	str	r3, [r7, #12]
200003ac:	2300      	movs	r3, #0
200003ae:	60fb      	str	r3, [r7, #12]
200003b0:	e006      	b.n	200003c0 <g2b+0x20>
200003b2:	68fa      	ldr	r2, [r7, #12]
200003b4:	687b      	ldr	r3, [r7, #4]
200003b6:	4053      	eors	r3, r2
200003b8:	60fb      	str	r3, [r7, #12]
200003ba:	687b      	ldr	r3, [r7, #4]
200003bc:	085b      	lsrs	r3, r3, #1
200003be:	607b      	str	r3, [r7, #4]
200003c0:	687b      	ldr	r3, [r7, #4]
200003c2:	2b00      	cmp	r3, #0
200003c4:	d1f5      	bne.n	200003b2 <g2b+0x12>
200003c6:	68fb      	ldr	r3, [r7, #12]
200003c8:	4618      	mov	r0, r3
200003ca:	3714      	adds	r7, #20
200003cc:	46bd      	mov	sp, r7
200003ce:	bc80      	pop	{r7}
200003d0:	4770      	bx	lr
200003d2:	bf00      	nop

200003d4 <enc_crc>:
200003d4:	b480      	push	{r7}
200003d6:	b085      	sub	sp, #20
200003d8:	af00      	add	r7, sp, #0
200003da:	6078      	str	r0, [r7, #4]
200003dc:	687b      	ldr	r3, [r7, #4]
200003de:	60bb      	str	r3, [r7, #8]
200003e0:	2300      	movs	r3, #0
200003e2:	60fb      	str	r3, [r7, #12]
200003e4:	e006      	b.n	200003f4 <enc_crc+0x20>
200003e6:	68fa      	ldr	r2, [r7, #12]
200003e8:	68bb      	ldr	r3, [r7, #8]
200003ea:	4053      	eors	r3, r2
200003ec:	60fb      	str	r3, [r7, #12]
200003ee:	68bb      	ldr	r3, [r7, #8]
200003f0:	085b      	lsrs	r3, r3, #1
200003f2:	60bb      	str	r3, [r7, #8]
200003f4:	68bb      	ldr	r3, [r7, #8]
200003f6:	2b00      	cmp	r3, #0
200003f8:	d1f5      	bne.n	200003e6 <enc_crc+0x12>
200003fa:	68fb      	ldr	r3, [r7, #12]
200003fc:	f003 0301 	and.w	r3, r3, #1
20000400:	2b00      	cmp	r3, #0
20000402:	d107      	bne.n	20000414 <enc_crc+0x40>
20000404:	687b      	ldr	r3, [r7, #4]
20000406:	f3c3 030b 	ubfx	r3, r3, #0, #12
2000040a:	4a06      	ldr	r2, [pc, #24]	; (20000424 <enc_crc+0x50>)
2000040c:	6013      	str	r3, [r2, #0]
2000040e:	4b05      	ldr	r3, [pc, #20]	; (20000424 <enc_crc+0x50>)
20000410:	681b      	ldr	r3, [r3, #0]
20000412:	2b00      	cmp	r3, #0
20000414:	4b03      	ldr	r3, [pc, #12]	; (20000424 <enc_crc+0x50>)
20000416:	681b      	ldr	r3, [r3, #0]
20000418:	4618      	mov	r0, r3
2000041a:	3714      	adds	r7, #20
2000041c:	46bd      	mov	sp, r7
2000041e:	bc80      	pop	{r7}
20000420:	4770      	bx	lr
20000422:	bf00      	nop
20000424:	20002838 	.word	0x20002838

20000428 <dac_init>:
20000428:	b480      	push	{r7}
2000042a:	af00      	add	r7, sp, #0
2000042c:	4a07      	ldr	r2, [pc, #28]	; (2000044c <dac_init+0x24>)
2000042e:	4b07      	ldr	r3, [pc, #28]	; (2000044c <dac_init+0x24>)
20000430:	69db      	ldr	r3, [r3, #28]
20000432:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
20000436:	61d3      	str	r3, [r2, #28]
20000438:	4a05      	ldr	r2, [pc, #20]	; (20000450 <dac_init+0x28>)
2000043a:	4b05      	ldr	r3, [pc, #20]	; (20000450 <dac_init+0x28>)
2000043c:	681b      	ldr	r3, [r3, #0]
2000043e:	f043 0308 	orr.w	r3, r3, #8
20000442:	6013      	str	r3, [r2, #0]
20000444:	bf00      	nop
20000446:	46bd      	mov	sp, r7
20000448:	bc80      	pop	{r7}
2000044a:	4770      	bx	lr
2000044c:	40020000 	.word	0x40020000
20000450:	40090000 	.word	0x40090000

20000454 <encoder_start>:
20000454:	b480      	push	{r7}
20000456:	af00      	add	r7, sp, #0
20000458:	4b03      	ldr	r3, [pc, #12]	; (20000468 <encoder_start+0x14>)
2000045a:	f240 5255 	movw	r2, #1365	; 0x555
2000045e:	609a      	str	r2, [r3, #8]
20000460:	bf00      	nop
20000462:	46bd      	mov	sp, r7
20000464:	bc80      	pop	{r7}
20000466:	4770      	bx	lr
20000468:	40040000 	.word	0x40040000

2000046c <TIMER1_Handler>:
2000046c:	b480      	push	{r7}
2000046e:	af00      	add	r7, sp, #0
20000470:	4b03      	ldr	r3, [pc, #12]	; (20000480 <TIMER1_Handler+0x14>)
20000472:	2200      	movs	r2, #0
20000474:	655a      	str	r2, [r3, #84]	; 0x54
20000476:	bf00      	nop
20000478:	46bd      	mov	sp, r7
2000047a:	bc80      	pop	{r7}
2000047c:	4770      	bx	lr
2000047e:	bf00      	nop
20000480:	40070000 	.word	0x40070000

20000484 <TIMER3_Handler>:
20000484:	b580      	push	{r7, lr}
20000486:	af00      	add	r7, sp, #0
20000488:	4b04      	ldr	r3, [pc, #16]	; (2000049c <TIMER3_Handler+0x18>)
2000048a:	2200      	movs	r2, #0
2000048c:	655a      	str	r2, [r3, #84]	; 0x54
2000048e:	f7ff ffe1 	bl	20000454 <encoder_start>
20000492:	f000 fe1b 	bl	200010cc <adc_dma_start>
20000496:	bf00      	nop
20000498:	bd80      	pop	{r7, pc}
2000049a:	bf00      	nop
2000049c:	40080000 	.word	0x40080000

200004a0 <get_phase>:
200004a0:	b580      	push	{r7, lr}
200004a2:	af00      	add	r7, sp, #0
200004a4:	4b0a      	ldr	r3, [pc, #40]	; (200004d0 <get_phase+0x30>)
200004a6:	f240 5255 	movw	r2, #1365	; 0x555
200004aa:	609a      	str	r2, [r3, #8]
200004ac:	bf00      	nop
200004ae:	4b08      	ldr	r3, [pc, #32]	; (200004d0 <get_phase+0x30>)
200004b0:	68db      	ldr	r3, [r3, #12]
200004b2:	f003 0304 	and.w	r3, r3, #4
200004b6:	2b00      	cmp	r3, #0
200004b8:	d0f9      	beq.n	200004ae <get_phase+0xe>
200004ba:	4b05      	ldr	r3, [pc, #20]	; (200004d0 <get_phase+0x30>)
200004bc:	689b      	ldr	r3, [r3, #8]
200004be:	f3c3 030b 	ubfx	r3, r3, #0, #12
200004c2:	4618      	mov	r0, r3
200004c4:	f7ff ff6c 	bl	200003a0 <g2b>
200004c8:	4603      	mov	r3, r0
200004ca:	4618      	mov	r0, r3
200004cc:	bd80      	pop	{r7, pc}
200004ce:	bf00      	nop
200004d0:	40040000 	.word	0x40040000

200004d4 <pwm_seta>:
200004d4:	b480      	push	{r7}
200004d6:	b083      	sub	sp, #12
200004d8:	af00      	add	r7, sp, #0
200004da:	6078      	str	r0, [r7, #4]
200004dc:	4a04      	ldr	r2, [pc, #16]	; (200004f0 <pwm_seta+0x1c>)
200004de:	687b      	ldr	r3, [r7, #4]
200004e0:	f503 7300 	add.w	r3, r3, #512	; 0x200
200004e4:	6113      	str	r3, [r2, #16]
200004e6:	bf00      	nop
200004e8:	370c      	adds	r7, #12
200004ea:	46bd      	mov	sp, r7
200004ec:	bc80      	pop	{r7}
200004ee:	4770      	bx	lr
200004f0:	40080000 	.word	0x40080000

200004f4 <pwm_setb>:
200004f4:	b480      	push	{r7}
200004f6:	b083      	sub	sp, #12
200004f8:	af00      	add	r7, sp, #0
200004fa:	6078      	str	r0, [r7, #4]
200004fc:	4a04      	ldr	r2, [pc, #16]	; (20000510 <pwm_setb+0x1c>)
200004fe:	687b      	ldr	r3, [r7, #4]
20000500:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000504:	6153      	str	r3, [r2, #20]
20000506:	bf00      	nop
20000508:	370c      	adds	r7, #12
2000050a:	46bd      	mov	sp, r7
2000050c:	bc80      	pop	{r7}
2000050e:	4770      	bx	lr
20000510:	40080000 	.word	0x40080000

20000514 <pwm_setc>:
20000514:	b480      	push	{r7}
20000516:	b083      	sub	sp, #12
20000518:	af00      	add	r7, sp, #0
2000051a:	6078      	str	r0, [r7, #4]
2000051c:	4a04      	ldr	r2, [pc, #16]	; (20000530 <pwm_setc+0x1c>)
2000051e:	687b      	ldr	r3, [r7, #4]
20000520:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000524:	6193      	str	r3, [r2, #24]
20000526:	bf00      	nop
20000528:	370c      	adds	r7, #12
2000052a:	46bd      	mov	sp, r7
2000052c:	bc80      	pop	{r7}
2000052e:	4770      	bx	lr
20000530:	40080000 	.word	0x40080000

20000534 <update_telemetry>:
20000534:	b480      	push	{r7}
20000536:	b083      	sub	sp, #12
20000538:	af00      	add	r7, sp, #0
2000053a:	4b4b      	ldr	r3, [pc, #300]	; (20000668 <update_telemetry+0x134>)
2000053c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2000053e:	f003 0302 	and.w	r3, r3, #2
20000542:	2b00      	cmp	r3, #0
20000544:	d078      	beq.n	20000638 <update_telemetry+0x104>
20000546:	4b48      	ldr	r3, [pc, #288]	; (20000668 <update_telemetry+0x134>)
20000548:	2200      	movs	r2, #0
2000054a:	655a      	str	r2, [r3, #84]	; 0x54
2000054c:	4a47      	ldr	r2, [pc, #284]	; (2000066c <update_telemetry+0x138>)
2000054e:	4b47      	ldr	r3, [pc, #284]	; (2000066c <update_telemetry+0x138>)
20000550:	681b      	ldr	r3, [r3, #0]
20000552:	f043 0301 	orr.w	r3, r3, #1
20000556:	6013      	str	r3, [r2, #0]
20000558:	4a45      	ldr	r2, [pc, #276]	; (20000670 <update_telemetry+0x13c>)
2000055a:	4b45      	ldr	r3, [pc, #276]	; (20000670 <update_telemetry+0x13c>)
2000055c:	699b      	ldr	r3, [r3, #24]
2000055e:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20000562:	6193      	str	r3, [r2, #24]
20000564:	4b40      	ldr	r3, [pc, #256]	; (20000668 <update_telemetry+0x134>)
20000566:	695b      	ldr	r3, [r3, #20]
20000568:	b29b      	uxth	r3, r3
2000056a:	f5a3 7396 	sub.w	r3, r3, #300	; 0x12c
2000056e:	80fb      	strh	r3, [r7, #6]
20000570:	88fb      	ldrh	r3, [r7, #6]
20000572:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
20000576:	d205      	bcs.n	20000584 <update_telemetry+0x50>
20000578:	4a3b      	ldr	r2, [pc, #236]	; (20000668 <update_telemetry+0x134>)
2000057a:	4b3b      	ldr	r3, [pc, #236]	; (20000668 <update_telemetry+0x134>)
2000057c:	681b      	ldr	r3, [r3, #0]
2000057e:	3301      	adds	r3, #1
20000580:	6013      	str	r3, [r2, #0]
20000582:	e008      	b.n	20000596 <update_telemetry+0x62>
20000584:	88fb      	ldrh	r3, [r7, #6]
20000586:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
2000058a:	d904      	bls.n	20000596 <update_telemetry+0x62>
2000058c:	4a36      	ldr	r2, [pc, #216]	; (20000668 <update_telemetry+0x134>)
2000058e:	4b36      	ldr	r3, [pc, #216]	; (20000668 <update_telemetry+0x134>)
20000590:	681b      	ldr	r3, [r3, #0]
20000592:	3b01      	subs	r3, #1
20000594:	6013      	str	r3, [r2, #0]
20000596:	4b37      	ldr	r3, [pc, #220]	; (20000674 <update_telemetry+0x140>)
20000598:	681b      	ldr	r3, [r3, #0]
2000059a:	b29a      	uxth	r2, r3
2000059c:	4b36      	ldr	r3, [pc, #216]	; (20000678 <update_telemetry+0x144>)
2000059e:	681b      	ldr	r3, [r3, #0]
200005a0:	b29b      	uxth	r3, r3
200005a2:	1ad3      	subs	r3, r2, r3
200005a4:	b29b      	uxth	r3, r3
200005a6:	b21a      	sxth	r2, r3
200005a8:	4b34      	ldr	r3, [pc, #208]	; (2000067c <update_telemetry+0x148>)
200005aa:	801a      	strh	r2, [r3, #0]
200005ac:	4b34      	ldr	r3, [pc, #208]	; (20000680 <update_telemetry+0x14c>)
200005ae:	681b      	ldr	r3, [r3, #0]
200005b0:	b29a      	uxth	r2, r3
200005b2:	4b31      	ldr	r3, [pc, #196]	; (20000678 <update_telemetry+0x144>)
200005b4:	681b      	ldr	r3, [r3, #0]
200005b6:	b29b      	uxth	r3, r3
200005b8:	1ad3      	subs	r3, r2, r3
200005ba:	b29b      	uxth	r3, r3
200005bc:	b21a      	sxth	r2, r3
200005be:	4b2f      	ldr	r3, [pc, #188]	; (2000067c <update_telemetry+0x148>)
200005c0:	805a      	strh	r2, [r3, #2]
200005c2:	4b30      	ldr	r3, [pc, #192]	; (20000684 <update_telemetry+0x150>)
200005c4:	681b      	ldr	r3, [r3, #0]
200005c6:	129b      	asrs	r3, r3, #10
200005c8:	b29a      	uxth	r2, r3
200005ca:	4b2c      	ldr	r3, [pc, #176]	; (2000067c <update_telemetry+0x148>)
200005cc:	809a      	strh	r2, [r3, #4]
200005ce:	4b2b      	ldr	r3, [pc, #172]	; (2000067c <update_telemetry+0x148>)
200005d0:	2200      	movs	r2, #0
200005d2:	80da      	strh	r2, [r3, #6]
200005d4:	4b29      	ldr	r3, [pc, #164]	; (2000067c <update_telemetry+0x148>)
200005d6:	603b      	str	r3, [r7, #0]
200005d8:	492b      	ldr	r1, [pc, #172]	; (20000688 <update_telemetry+0x154>)
200005da:	683b      	ldr	r3, [r7, #0]
200005dc:	1c5a      	adds	r2, r3, #1
200005de:	603a      	str	r2, [r7, #0]
200005e0:	781b      	ldrb	r3, [r3, #0]
200005e2:	600b      	str	r3, [r1, #0]
200005e4:	4928      	ldr	r1, [pc, #160]	; (20000688 <update_telemetry+0x154>)
200005e6:	683b      	ldr	r3, [r7, #0]
200005e8:	1c5a      	adds	r2, r3, #1
200005ea:	603a      	str	r2, [r7, #0]
200005ec:	781b      	ldrb	r3, [r3, #0]
200005ee:	600b      	str	r3, [r1, #0]
200005f0:	4925      	ldr	r1, [pc, #148]	; (20000688 <update_telemetry+0x154>)
200005f2:	683b      	ldr	r3, [r7, #0]
200005f4:	1c5a      	adds	r2, r3, #1
200005f6:	603a      	str	r2, [r7, #0]
200005f8:	781b      	ldrb	r3, [r3, #0]
200005fa:	600b      	str	r3, [r1, #0]
200005fc:	4922      	ldr	r1, [pc, #136]	; (20000688 <update_telemetry+0x154>)
200005fe:	683b      	ldr	r3, [r7, #0]
20000600:	1c5a      	adds	r2, r3, #1
20000602:	603a      	str	r2, [r7, #0]
20000604:	781b      	ldrb	r3, [r3, #0]
20000606:	600b      	str	r3, [r1, #0]
20000608:	491f      	ldr	r1, [pc, #124]	; (20000688 <update_telemetry+0x154>)
2000060a:	683b      	ldr	r3, [r7, #0]
2000060c:	1c5a      	adds	r2, r3, #1
2000060e:	603a      	str	r2, [r7, #0]
20000610:	781b      	ldrb	r3, [r3, #0]
20000612:	600b      	str	r3, [r1, #0]
20000614:	491c      	ldr	r1, [pc, #112]	; (20000688 <update_telemetry+0x154>)
20000616:	683b      	ldr	r3, [r7, #0]
20000618:	1c5a      	adds	r2, r3, #1
2000061a:	603a      	str	r2, [r7, #0]
2000061c:	781b      	ldrb	r3, [r3, #0]
2000061e:	600b      	str	r3, [r1, #0]
20000620:	4919      	ldr	r1, [pc, #100]	; (20000688 <update_telemetry+0x154>)
20000622:	683b      	ldr	r3, [r7, #0]
20000624:	1c5a      	adds	r2, r3, #1
20000626:	603a      	str	r2, [r7, #0]
20000628:	781b      	ldrb	r3, [r3, #0]
2000062a:	600b      	str	r3, [r1, #0]
2000062c:	4916      	ldr	r1, [pc, #88]	; (20000688 <update_telemetry+0x154>)
2000062e:	683b      	ldr	r3, [r7, #0]
20000630:	1c5a      	adds	r2, r3, #1
20000632:	603a      	str	r2, [r7, #0]
20000634:	781b      	ldrb	r3, [r3, #0]
20000636:	600b      	str	r3, [r1, #0]
20000638:	4b13      	ldr	r3, [pc, #76]	; (20000688 <update_telemetry+0x154>)
2000063a:	699b      	ldr	r3, [r3, #24]
2000063c:	f003 0308 	and.w	r3, r3, #8
20000640:	2b00      	cmp	r3, #0
20000642:	d10b      	bne.n	2000065c <update_telemetry+0x128>
20000644:	4a09      	ldr	r2, [pc, #36]	; (2000066c <update_telemetry+0x138>)
20000646:	4b09      	ldr	r3, [pc, #36]	; (2000066c <update_telemetry+0x138>)
20000648:	681b      	ldr	r3, [r3, #0]
2000064a:	f023 0301 	bic.w	r3, r3, #1
2000064e:	6013      	str	r3, [r2, #0]
20000650:	4a07      	ldr	r2, [pc, #28]	; (20000670 <update_telemetry+0x13c>)
20000652:	4b07      	ldr	r3, [pc, #28]	; (20000670 <update_telemetry+0x13c>)
20000654:	699b      	ldr	r3, [r3, #24]
20000656:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
2000065a:	6193      	str	r3, [r2, #24]
2000065c:	bf00      	nop
2000065e:	370c      	adds	r7, #12
20000660:	46bd      	mov	sp, r7
20000662:	bc80      	pop	{r7}
20000664:	4770      	bx	lr
20000666:	bf00      	nop
20000668:	40070000 	.word	0x40070000
2000066c:	400a8000 	.word	0x400a8000
20000670:	400b0000 	.word	0x400b0000
20000674:	20002800 	.word	0x20002800
20000678:	2000280c 	.word	0x2000280c
2000067c:	20002830 	.word	0x20002830
20000680:	20002824 	.word	0x20002824
20000684:	2000282c 	.word	0x2000282c
20000688:	40030000 	.word	0x40030000

2000068c <update_refposition>:
2000068c:	b480      	push	{r7}
2000068e:	b087      	sub	sp, #28
20000690:	af00      	add	r7, sp, #0
20000692:	4b20      	ldr	r3, [pc, #128]	; (20000714 <update_refposition+0x88>)
20000694:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000696:	f003 0310 	and.w	r3, r3, #16
2000069a:	2b00      	cmp	r3, #0
2000069c:	d022      	beq.n	200006e4 <update_refposition+0x58>
2000069e:	2300      	movs	r3, #0
200006a0:	617b      	str	r3, [r7, #20]
200006a2:	e00c      	b.n	200006be <update_refposition+0x32>
200006a4:	4b1b      	ldr	r3, [pc, #108]	; (20000714 <update_refposition+0x88>)
200006a6:	681b      	ldr	r3, [r3, #0]
200006a8:	b2d9      	uxtb	r1, r3
200006aa:	463a      	mov	r2, r7
200006ac:	697b      	ldr	r3, [r7, #20]
200006ae:	4413      	add	r3, r2
200006b0:	460a      	mov	r2, r1
200006b2:	701a      	strb	r2, [r3, #0]
200006b4:	697b      	ldr	r3, [r7, #20]
200006b6:	3301      	adds	r3, #1
200006b8:	f003 030f 	and.w	r3, r3, #15
200006bc:	617b      	str	r3, [r7, #20]
200006be:	4b15      	ldr	r3, [pc, #84]	; (20000714 <update_refposition+0x88>)
200006c0:	699b      	ldr	r3, [r3, #24]
200006c2:	f003 0310 	and.w	r3, r3, #16
200006c6:	2b00      	cmp	r3, #0
200006c8:	d0ec      	beq.n	200006a4 <update_refposition+0x18>
200006ca:	783b      	ldrb	r3, [r7, #0]
200006cc:	b29a      	uxth	r2, r3
200006ce:	787b      	ldrb	r3, [r7, #1]
200006d0:	b29b      	uxth	r3, r3
200006d2:	021b      	lsls	r3, r3, #8
200006d4:	b29b      	uxth	r3, r3
200006d6:	4413      	add	r3, r2
200006d8:	b29b      	uxth	r3, r3
200006da:	827b      	strh	r3, [r7, #18]
200006dc:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
200006e0:	4a0d      	ldr	r2, [pc, #52]	; (20000718 <update_refposition+0x8c>)
200006e2:	6013      	str	r3, [r2, #0]
200006e4:	4b0b      	ldr	r3, [pc, #44]	; (20000714 <update_refposition+0x88>)
200006e6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200006e8:	f003 0340 	and.w	r3, r3, #64	; 0x40
200006ec:	2b00      	cmp	r3, #0
200006ee:	d009      	beq.n	20000704 <update_refposition+0x78>
200006f0:	e002      	b.n	200006f8 <update_refposition+0x6c>
200006f2:	4b08      	ldr	r3, [pc, #32]	; (20000714 <update_refposition+0x88>)
200006f4:	681b      	ldr	r3, [r3, #0]
200006f6:	747b      	strb	r3, [r7, #17]
200006f8:	4b06      	ldr	r3, [pc, #24]	; (20000714 <update_refposition+0x88>)
200006fa:	699b      	ldr	r3, [r3, #24]
200006fc:	f003 0310 	and.w	r3, r3, #16
20000700:	2b00      	cmp	r3, #0
20000702:	d0f6      	beq.n	200006f2 <update_refposition+0x66>
20000704:	4b04      	ldr	r3, [pc, #16]	; (20000718 <update_refposition+0x8c>)
20000706:	681b      	ldr	r3, [r3, #0]
20000708:	4618      	mov	r0, r3
2000070a:	371c      	adds	r7, #28
2000070c:	46bd      	mov	sp, r7
2000070e:	bc80      	pop	{r7}
20000710:	4770      	bx	lr
20000712:	bf00      	nop
20000714:	40030000 	.word	0x40030000
20000718:	2000283c 	.word	0x2000283c

2000071c <mycos>:
2000071c:	4b02      	ldr	r3, [pc, #8]	; (20000728 <mycos+0xc>)
2000071e:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000722:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000726:	4770      	bx	lr
20000728:	200017cc 	.word	0x200017cc

2000072c <mysin>:
2000072c:	4b03      	ldr	r3, [pc, #12]	; (2000073c <mysin+0x10>)
2000072e:	f500 7040 	add.w	r0, r0, #768	; 0x300
20000732:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000736:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
2000073a:	4770      	bx	lr
2000073c:	200017cc 	.word	0x200017cc

20000740 <reg_init>:
20000740:	2300      	movs	r3, #0
20000742:	e880 000e 	stmia.w	r0, {r1, r2, r3}
20000746:	60c3      	str	r3, [r0, #12]
20000748:	4770      	bx	lr
2000074a:	bf00      	nop

2000074c <reg_update>:
2000074c:	6803      	ldr	r3, [r0, #0]
2000074e:	b410      	push	{r4}
20000750:	fb03 f301 	mul.w	r3, r3, r1
20000754:	6884      	ldr	r4, [r0, #8]
20000756:	b11a      	cbz	r2, 20000760 <reg_update+0x14>
20000758:	2c00      	cmp	r4, #0
2000075a:	dd09      	ble.n	20000770 <reg_update+0x24>
2000075c:	ea03 73e3 	and.w	r3, r3, r3, asr #31
20000760:	6842      	ldr	r2, [r0, #4]
20000762:	4423      	add	r3, r4
20000764:	fb02 3101 	mla	r1, r2, r1, r3
20000768:	6083      	str	r3, [r0, #8]
2000076a:	60c1      	str	r1, [r0, #12]
2000076c:	bc10      	pop	{r4}
2000076e:	4770      	bx	lr
20000770:	bf18      	it	ne
20000772:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
20000776:	e7f3      	b.n	20000760 <reg_update+0x14>

20000778 <dot3>:
20000778:	b430      	push	{r4, r5}
2000077a:	684b      	ldr	r3, [r1, #4]
2000077c:	6844      	ldr	r4, [r0, #4]
2000077e:	6802      	ldr	r2, [r0, #0]
20000780:	fb03 f304 	mul.w	r3, r3, r4
20000784:	680d      	ldr	r5, [r1, #0]
20000786:	6884      	ldr	r4, [r0, #8]
20000788:	fb05 3302 	mla	r3, r5, r2, r3
2000078c:	6888      	ldr	r0, [r1, #8]
2000078e:	fb00 3004 	mla	r0, r0, r4, r3
20000792:	bc30      	pop	{r4, r5}
20000794:	4770      	bx	lr
20000796:	bf00      	nop

20000798 <abc_to_dq>:
20000798:	b4f0      	push	{r4, r5, r6, r7}
2000079a:	4c1d      	ldr	r4, [pc, #116]	; (20000810 <abc_to_dq+0x78>)
2000079c:	6803      	ldr	r3, [r0, #0]
2000079e:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
200007a2:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
200007a6:	fb03 f306 	mul.w	r3, r3, r6
200007aa:	f3c5 0509 	ubfx	r5, r5, #0, #10
200007ae:	6847      	ldr	r7, [r0, #4]
200007b0:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200007b4:	f202 1655 	addw	r6, r2, #341	; 0x155
200007b8:	fb07 3305 	mla	r3, r7, r5, r3
200007bc:	f3c6 0509 	ubfx	r5, r6, #0, #10
200007c0:	6887      	ldr	r7, [r0, #8]
200007c2:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200007c6:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
200007ca:	fb07 3305 	mla	r3, r7, r5, r3
200007ce:	129b      	asrs	r3, r3, #10
200007d0:	600b      	str	r3, [r1, #0]
200007d2:	f3c6 0509 	ubfx	r5, r6, #0, #10
200007d6:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
200007da:	6843      	ldr	r3, [r0, #4]
200007dc:	f502 7540 	add.w	r5, r2, #768	; 0x300
200007e0:	fb03 f306 	mul.w	r3, r3, r6
200007e4:	f3c5 0509 	ubfx	r5, r5, #0, #10
200007e8:	6806      	ldr	r6, [r0, #0]
200007ea:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200007ee:	f202 4255 	addw	r2, r2, #1109	; 0x455
200007f2:	fb06 3305 	mla	r3, r6, r5, r3
200007f6:	f3c2 0209 	ubfx	r2, r2, #0, #10
200007fa:	6880      	ldr	r0, [r0, #8]
200007fc:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
20000800:	bcf0      	pop	{r4, r5, r6, r7}
20000802:	fb00 3302 	mla	r3, r0, r2, r3
20000806:	425b      	negs	r3, r3
20000808:	129b      	asrs	r3, r3, #10
2000080a:	604b      	str	r3, [r1, #4]
2000080c:	4770      	bx	lr
2000080e:	bf00      	nop
20000810:	200017cc 	.word	0x200017cc

20000814 <dq_to_abc>:
20000814:	4b1d      	ldr	r3, [pc, #116]	; (2000088c <dq_to_abc+0x78>)
20000816:	b4f0      	push	{r4, r5, r6, r7}
20000818:	680e      	ldr	r6, [r1, #0]
2000081a:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
2000081e:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000822:	fb04 f406 	mul.w	r4, r4, r6
20000826:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000082a:	684f      	ldr	r7, [r1, #4]
2000082c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000830:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000834:	fb07 4415 	mls	r4, r7, r5, r4
20000838:	1524      	asrs	r4, r4, #20
2000083a:	6004      	str	r4, [r0, #0]
2000083c:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000840:	680c      	ldr	r4, [r1, #0]
20000842:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
20000846:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
2000084a:	fb04 f406 	mul.w	r4, r4, r6
2000084e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000852:	684f      	ldr	r7, [r1, #4]
20000854:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000858:	f202 1655 	addw	r6, r2, #341	; 0x155
2000085c:	fb07 4415 	mls	r4, r7, r5, r4
20000860:	1524      	asrs	r4, r4, #20
20000862:	6044      	str	r4, [r0, #4]
20000864:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000868:	680c      	ldr	r4, [r1, #0]
2000086a:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
2000086e:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000872:	fb04 f405 	mul.w	r4, r4, r5
20000876:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000087a:	6849      	ldr	r1, [r1, #4]
2000087c:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
20000880:	fb01 4312 	mls	r3, r1, r2, r4
20000884:	bcf0      	pop	{r4, r5, r6, r7}
20000886:	151b      	asrs	r3, r3, #20
20000888:	6083      	str	r3, [r0, #8]
2000088a:	4770      	bx	lr
2000088c:	200017cc 	.word	0x200017cc

20000890 <cord_atan>:
20000890:	b5f0      	push	{r4, r5, r6, r7, lr}
20000892:	b091      	sub	sp, #68	; 0x44
20000894:	46ee      	mov	lr, sp
20000896:	4684      	mov	ip, r0
20000898:	4e56      	ldr	r6, [pc, #344]	; (200009f4 <cord_atan+0x164>)
2000089a:	460d      	mov	r5, r1
2000089c:	4614      	mov	r4, r2
2000089e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200008a0:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200008a4:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200008a8:	af08      	add	r7, sp, #32
200008aa:	3610      	adds	r6, #16
200008ac:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200008b0:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200008b2:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200008b4:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200008b8:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200008bc:	f8dc 6000 	ldr.w	r6, [ip]
200008c0:	f8dc 3004 	ldr.w	r3, [ip, #4]
200008c4:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200008c8:	2b00      	cmp	r3, #0
200008ca:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200008ce:	9900      	ldr	r1, [sp, #0]
200008d0:	dd56      	ble.n	20000980 <cord_atan+0xf0>
200008d2:	18d0      	adds	r0, r2, r3
200008d4:	1a9b      	subs	r3, r3, r2
200008d6:	2b00      	cmp	r3, #0
200008d8:	d07a      	beq.n	200009d0 <cord_atan+0x140>
200008da:	9f01      	ldr	r7, [sp, #4]
200008dc:	dd54      	ble.n	20000988 <cord_atan+0xf8>
200008de:	eb00 0263 	add.w	r2, r0, r3, asr #1
200008e2:	4439      	add	r1, r7
200008e4:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200008e8:	2b00      	cmp	r3, #0
200008ea:	d073      	beq.n	200009d4 <cord_atan+0x144>
200008ec:	9f02      	ldr	r7, [sp, #8]
200008ee:	dd51      	ble.n	20000994 <cord_atan+0x104>
200008f0:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200008f4:	4439      	add	r1, r7
200008f6:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200008fa:	2b00      	cmp	r3, #0
200008fc:	d06d      	beq.n	200009da <cord_atan+0x14a>
200008fe:	9f03      	ldr	r7, [sp, #12]
20000900:	dd4e      	ble.n	200009a0 <cord_atan+0x110>
20000902:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000906:	4439      	add	r1, r7
20000908:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
2000090c:	2b00      	cmp	r3, #0
2000090e:	d066      	beq.n	200009de <cord_atan+0x14e>
20000910:	9f04      	ldr	r7, [sp, #16]
20000912:	dd4b      	ble.n	200009ac <cord_atan+0x11c>
20000914:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000918:	4439      	add	r1, r7
2000091a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000091e:	2b00      	cmp	r3, #0
20000920:	d060      	beq.n	200009e4 <cord_atan+0x154>
20000922:	9f05      	ldr	r7, [sp, #20]
20000924:	dd48      	ble.n	200009b8 <cord_atan+0x128>
20000926:	eb00 1263 	add.w	r2, r0, r3, asr #5
2000092a:	4439      	add	r1, r7
2000092c:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000930:	2b00      	cmp	r3, #0
20000932:	d059      	beq.n	200009e8 <cord_atan+0x158>
20000934:	9f06      	ldr	r7, [sp, #24]
20000936:	dd45      	ble.n	200009c4 <cord_atan+0x134>
20000938:	eb02 10a3 	add.w	r0, r2, r3, asr #6
2000093c:	4439      	add	r1, r7
2000093e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000942:	2b00      	cmp	r3, #0
20000944:	d053      	beq.n	200009ee <cord_atan+0x15e>
20000946:	9a07      	ldr	r2, [sp, #28]
20000948:	bfc7      	ittee	gt
2000094a:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
2000094e:	1889      	addgt	r1, r1, r2
20000950:	1a89      	suble	r1, r1, r2
20000952:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000956:	2207      	movs	r2, #7
20000958:	ab10      	add	r3, sp, #64	; 0x40
2000095a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000095e:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000962:	2e00      	cmp	r6, #0
20000964:	fb03 f300 	mul.w	r3, r3, r0
20000968:	bfb8      	it	lt
2000096a:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
2000096e:	2900      	cmp	r1, #0
20000970:	bfb8      	it	lt
20000972:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000976:	129b      	asrs	r3, r3, #10
20000978:	6029      	str	r1, [r5, #0]
2000097a:	6023      	str	r3, [r4, #0]
2000097c:	b011      	add	sp, #68	; 0x44
2000097e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000980:	1ad0      	subs	r0, r2, r3
20000982:	4249      	negs	r1, r1
20000984:	4413      	add	r3, r2
20000986:	e7a6      	b.n	200008d6 <cord_atan+0x46>
20000988:	eba0 0263 	sub.w	r2, r0, r3, asr #1
2000098c:	1bc9      	subs	r1, r1, r7
2000098e:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000992:	e7a9      	b.n	200008e8 <cord_atan+0x58>
20000994:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000998:	1bc9      	subs	r1, r1, r7
2000099a:	eb03 03a2 	add.w	r3, r3, r2, asr #2
2000099e:	e7ac      	b.n	200008fa <cord_atan+0x6a>
200009a0:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
200009a4:	1bc9      	subs	r1, r1, r7
200009a6:	eb03 03e0 	add.w	r3, r3, r0, asr #3
200009aa:	e7af      	b.n	2000090c <cord_atan+0x7c>
200009ac:	eba2 1023 	sub.w	r0, r2, r3, asr #4
200009b0:	1bc9      	subs	r1, r1, r7
200009b2:	eb03 1322 	add.w	r3, r3, r2, asr #4
200009b6:	e7b2      	b.n	2000091e <cord_atan+0x8e>
200009b8:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200009bc:	1bc9      	subs	r1, r1, r7
200009be:	eb03 1360 	add.w	r3, r3, r0, asr #5
200009c2:	e7b5      	b.n	20000930 <cord_atan+0xa0>
200009c4:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
200009c8:	1bc9      	subs	r1, r1, r7
200009ca:	eb03 13a2 	add.w	r3, r3, r2, asr #6
200009ce:	e7b8      	b.n	20000942 <cord_atan+0xb2>
200009d0:	461a      	mov	r2, r3
200009d2:	e7c1      	b.n	20000958 <cord_atan+0xc8>
200009d4:	4610      	mov	r0, r2
200009d6:	2201      	movs	r2, #1
200009d8:	e7be      	b.n	20000958 <cord_atan+0xc8>
200009da:	2202      	movs	r2, #2
200009dc:	e7bc      	b.n	20000958 <cord_atan+0xc8>
200009de:	4610      	mov	r0, r2
200009e0:	2203      	movs	r2, #3
200009e2:	e7b9      	b.n	20000958 <cord_atan+0xc8>
200009e4:	2204      	movs	r2, #4
200009e6:	e7b7      	b.n	20000958 <cord_atan+0xc8>
200009e8:	4610      	mov	r0, r2
200009ea:	2205      	movs	r2, #5
200009ec:	e7b4      	b.n	20000958 <cord_atan+0xc8>
200009ee:	2206      	movs	r2, #6
200009f0:	e7b2      	b.n	20000958 <cord_atan+0xc8>
200009f2:	bf00      	nop
200009f4:	2000178c 	.word	0x2000178c

200009f8 <sinpwm>:
200009f8:	b5f0      	push	{r4, r5, r6, r7, lr}
200009fa:	b091      	sub	sp, #68	; 0x44
200009fc:	46ee      	mov	lr, sp
200009fe:	468c      	mov	ip, r1
20000a00:	4e6e      	ldr	r6, [pc, #440]	; (20000bbc <sinpwm+0x1c4>)
20000a02:	4604      	mov	r4, r0
20000a04:	4615      	mov	r5, r2
20000a06:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000a08:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000a0c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000a10:	af08      	add	r7, sp, #32
20000a12:	3610      	adds	r6, #16
20000a14:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000a18:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000a1a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000a1c:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000a20:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000a24:	f8dc 6000 	ldr.w	r6, [ip]
20000a28:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000a2c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000a30:	2b00      	cmp	r3, #0
20000a32:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000a36:	9900      	ldr	r1, [sp, #0]
20000a38:	f340 8087 	ble.w	20000b4a <sinpwm+0x152>
20000a3c:	18d0      	adds	r0, r2, r3
20000a3e:	1a9b      	subs	r3, r3, r2
20000a40:	2b00      	cmp	r3, #0
20000a42:	f000 80aa 	beq.w	20000b9a <sinpwm+0x1a2>
20000a46:	9f01      	ldr	r7, [sp, #4]
20000a48:	f340 8083 	ble.w	20000b52 <sinpwm+0x15a>
20000a4c:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000a50:	4439      	add	r1, r7
20000a52:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000a56:	2b00      	cmp	r3, #0
20000a58:	f000 80a1 	beq.w	20000b9e <sinpwm+0x1a6>
20000a5c:	9f02      	ldr	r7, [sp, #8]
20000a5e:	dd7e      	ble.n	20000b5e <sinpwm+0x166>
20000a60:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000a64:	4439      	add	r1, r7
20000a66:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000a6a:	2b00      	cmp	r3, #0
20000a6c:	f000 809a 	beq.w	20000ba4 <sinpwm+0x1ac>
20000a70:	9f03      	ldr	r7, [sp, #12]
20000a72:	dd7a      	ble.n	20000b6a <sinpwm+0x172>
20000a74:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000a78:	4439      	add	r1, r7
20000a7a:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000a7e:	2b00      	cmp	r3, #0
20000a80:	f000 8092 	beq.w	20000ba8 <sinpwm+0x1b0>
20000a84:	9f04      	ldr	r7, [sp, #16]
20000a86:	dd76      	ble.n	20000b76 <sinpwm+0x17e>
20000a88:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000a8c:	4439      	add	r1, r7
20000a8e:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000a92:	2b00      	cmp	r3, #0
20000a94:	f000 808b 	beq.w	20000bae <sinpwm+0x1b6>
20000a98:	9f05      	ldr	r7, [sp, #20]
20000a9a:	dd72      	ble.n	20000b82 <sinpwm+0x18a>
20000a9c:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000aa0:	4439      	add	r1, r7
20000aa2:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000aa6:	2b00      	cmp	r3, #0
20000aa8:	f000 8083 	beq.w	20000bb2 <sinpwm+0x1ba>
20000aac:	9f06      	ldr	r7, [sp, #24]
20000aae:	dd6e      	ble.n	20000b8e <sinpwm+0x196>
20000ab0:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000ab4:	4439      	add	r1, r7
20000ab6:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000aba:	2b00      	cmp	r3, #0
20000abc:	d07c      	beq.n	20000bb8 <sinpwm+0x1c0>
20000abe:	9a07      	ldr	r2, [sp, #28]
20000ac0:	bfc7      	ittee	gt
20000ac2:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000ac6:	1889      	addgt	r1, r1, r2
20000ac8:	1a89      	suble	r1, r1, r2
20000aca:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000ace:	2207      	movs	r2, #7
20000ad0:	ab10      	add	r3, sp, #64	; 0x40
20000ad2:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000ad6:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000ada:	2e00      	cmp	r6, #0
20000adc:	fb03 f300 	mul.w	r3, r3, r0
20000ae0:	bfb8      	it	lt
20000ae2:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000ae6:	2900      	cmp	r1, #0
20000ae8:	bfb8      	it	lt
20000aea:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000aee:	151b      	asrs	r3, r3, #20
20000af0:	440d      	add	r5, r1
20000af2:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000af6:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000afa:	dd22      	ble.n	20000b42 <sinpwm+0x14a>
20000afc:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 20000bc4 <sinpwm+0x1cc>
20000b00:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
20000b04:	2001      	movs	r0, #1
20000b06:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
20000b0a:	4f2d      	ldr	r7, [pc, #180]	; (20000bc0 <sinpwm+0x1c8>)
20000b0c:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
20000b10:	3602      	adds	r6, #2
20000b12:	f3ce 0e09 	ubfx	lr, lr, #0, #10
20000b16:	f3c6 0609 	ubfx	r6, r6, #0, #10
20000b1a:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
20000b1e:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
20000b22:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
20000b26:	fb06 f50c 	mul.w	r5, r6, ip
20000b2a:	fb01 f10c 	mul.w	r1, r1, ip
20000b2e:	fb02 f303 	mul.w	r3, r2, r3
20000b32:	12ad      	asrs	r5, r5, #10
20000b34:	128a      	asrs	r2, r1, #10
20000b36:	129b      	asrs	r3, r3, #10
20000b38:	60a5      	str	r5, [r4, #8]
20000b3a:	6062      	str	r2, [r4, #4]
20000b3c:	6023      	str	r3, [r4, #0]
20000b3e:	b011      	add	sp, #68	; 0x44
20000b40:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000b42:	f1c3 0c00 	rsb	ip, r3, #0
20000b46:	2000      	movs	r0, #0
20000b48:	e7dd      	b.n	20000b06 <sinpwm+0x10e>
20000b4a:	1ad0      	subs	r0, r2, r3
20000b4c:	4249      	negs	r1, r1
20000b4e:	4413      	add	r3, r2
20000b50:	e776      	b.n	20000a40 <sinpwm+0x48>
20000b52:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000b56:	1bc9      	subs	r1, r1, r7
20000b58:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000b5c:	e77b      	b.n	20000a56 <sinpwm+0x5e>
20000b5e:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000b62:	1bc9      	subs	r1, r1, r7
20000b64:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000b68:	e77f      	b.n	20000a6a <sinpwm+0x72>
20000b6a:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000b6e:	1bc9      	subs	r1, r1, r7
20000b70:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000b74:	e783      	b.n	20000a7e <sinpwm+0x86>
20000b76:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000b7a:	1bc9      	subs	r1, r1, r7
20000b7c:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000b80:	e787      	b.n	20000a92 <sinpwm+0x9a>
20000b82:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000b86:	1bc9      	subs	r1, r1, r7
20000b88:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000b8c:	e78b      	b.n	20000aa6 <sinpwm+0xae>
20000b8e:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000b92:	1bc9      	subs	r1, r1, r7
20000b94:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000b98:	e78f      	b.n	20000aba <sinpwm+0xc2>
20000b9a:	461a      	mov	r2, r3
20000b9c:	e798      	b.n	20000ad0 <sinpwm+0xd8>
20000b9e:	4610      	mov	r0, r2
20000ba0:	2201      	movs	r2, #1
20000ba2:	e795      	b.n	20000ad0 <sinpwm+0xd8>
20000ba4:	2202      	movs	r2, #2
20000ba6:	e793      	b.n	20000ad0 <sinpwm+0xd8>
20000ba8:	4610      	mov	r0, r2
20000baa:	2203      	movs	r2, #3
20000bac:	e790      	b.n	20000ad0 <sinpwm+0xd8>
20000bae:	2204      	movs	r2, #4
20000bb0:	e78e      	b.n	20000ad0 <sinpwm+0xd8>
20000bb2:	4610      	mov	r0, r2
20000bb4:	2205      	movs	r2, #5
20000bb6:	e78b      	b.n	20000ad0 <sinpwm+0xd8>
20000bb8:	2206      	movs	r2, #6
20000bba:	e789      	b.n	20000ad0 <sinpwm+0xd8>
20000bbc:	2000178c 	.word	0x2000178c
20000bc0:	200017cc 	.word	0x200017cc
20000bc4:	fffffe0c 	.word	0xfffffe0c

20000bc8 <svpwm>:
20000bc8:	b5f0      	push	{r4, r5, r6, r7, lr}
20000bca:	b091      	sub	sp, #68	; 0x44
20000bcc:	46ee      	mov	lr, sp
20000bce:	468c      	mov	ip, r1
20000bd0:	4eb8      	ldr	r6, [pc, #736]	; (20000eb4 <svpwm+0x2ec>)
20000bd2:	4604      	mov	r4, r0
20000bd4:	4615      	mov	r5, r2
20000bd6:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000bd8:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000bdc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000be0:	af08      	add	r7, sp, #32
20000be2:	3610      	adds	r6, #16
20000be4:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000be8:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000bea:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000bec:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000bf0:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000bf4:	f8dc 6000 	ldr.w	r6, [ip]
20000bf8:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000bfc:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000c00:	2b00      	cmp	r3, #0
20000c02:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000c06:	9900      	ldr	r1, [sp, #0]
20000c08:	dd6f      	ble.n	20000cea <svpwm+0x122>
20000c0a:	18d0      	adds	r0, r2, r3
20000c0c:	1a9b      	subs	r3, r3, r2
20000c0e:	2b00      	cmp	r3, #0
20000c10:	f000 813f 	beq.w	20000e92 <svpwm+0x2ca>
20000c14:	9f01      	ldr	r7, [sp, #4]
20000c16:	dd6c      	ble.n	20000cf2 <svpwm+0x12a>
20000c18:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000c1c:	4439      	add	r1, r7
20000c1e:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000c22:	2b00      	cmp	r3, #0
20000c24:	f000 8137 	beq.w	20000e96 <svpwm+0x2ce>
20000c28:	9f02      	ldr	r7, [sp, #8]
20000c2a:	dd68      	ble.n	20000cfe <svpwm+0x136>
20000c2c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000c30:	4439      	add	r1, r7
20000c32:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000c36:	2b00      	cmp	r3, #0
20000c38:	f000 8130 	beq.w	20000e9c <svpwm+0x2d4>
20000c3c:	9f03      	ldr	r7, [sp, #12]
20000c3e:	dd64      	ble.n	20000d0a <svpwm+0x142>
20000c40:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000c44:	4439      	add	r1, r7
20000c46:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000c4a:	2b00      	cmp	r3, #0
20000c4c:	f000 8128 	beq.w	20000ea0 <svpwm+0x2d8>
20000c50:	9f04      	ldr	r7, [sp, #16]
20000c52:	dd60      	ble.n	20000d16 <svpwm+0x14e>
20000c54:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000c58:	4439      	add	r1, r7
20000c5a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000c5e:	2b00      	cmp	r3, #0
20000c60:	f000 8121 	beq.w	20000ea6 <svpwm+0x2de>
20000c64:	9f05      	ldr	r7, [sp, #20]
20000c66:	dd5c      	ble.n	20000d22 <svpwm+0x15a>
20000c68:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000c6c:	4439      	add	r1, r7
20000c6e:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000c72:	2b00      	cmp	r3, #0
20000c74:	f000 8119 	beq.w	20000eaa <svpwm+0x2e2>
20000c78:	9f06      	ldr	r7, [sp, #24]
20000c7a:	dd58      	ble.n	20000d2e <svpwm+0x166>
20000c7c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000c80:	4439      	add	r1, r7
20000c82:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000c86:	2b00      	cmp	r3, #0
20000c88:	f000 8112 	beq.w	20000eb0 <svpwm+0x2e8>
20000c8c:	9a07      	ldr	r2, [sp, #28]
20000c8e:	bfc7      	ittee	gt
20000c90:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000c94:	1889      	addgt	r1, r1, r2
20000c96:	1a89      	suble	r1, r1, r2
20000c98:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000c9c:	2207      	movs	r2, #7
20000c9e:	ab10      	add	r3, sp, #64	; 0x40
20000ca0:	2e00      	cmp	r6, #0
20000ca2:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000ca6:	bfb8      	it	lt
20000ca8:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000cac:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000cb0:	2900      	cmp	r1, #0
20000cb2:	fb03 f300 	mul.w	r3, r3, r0
20000cb6:	bfb8      	it	lt
20000cb8:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000cbc:	440d      	add	r5, r1
20000cbe:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000cc2:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20000cc6:	151b      	asrs	r3, r3, #20
20000cc8:	1252      	asrs	r2, r2, #9
20000cca:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000cce:	f102 32ff 	add.w	r2, r2, #4294967295
20000cd2:	bfc6      	itte	gt
20000cd4:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20000cd8:	2001      	movgt	r0, #1
20000cda:	2000      	movle	r0, #0
20000cdc:	2a04      	cmp	r2, #4
20000cde:	d848      	bhi.n	20000d72 <svpwm+0x1aa>
20000ce0:	e8df f002 	tbb	[pc, r2]
20000ce4:	2b9e8164 	.word	0x2b9e8164
20000ce8:	bb          	.byte	0xbb
20000ce9:	00          	.byte	0x00
20000cea:	1ad0      	subs	r0, r2, r3
20000cec:	4249      	negs	r1, r1
20000cee:	4413      	add	r3, r2
20000cf0:	e78d      	b.n	20000c0e <svpwm+0x46>
20000cf2:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000cf6:	1bc9      	subs	r1, r1, r7
20000cf8:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000cfc:	e791      	b.n	20000c22 <svpwm+0x5a>
20000cfe:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000d02:	1bc9      	subs	r1, r1, r7
20000d04:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000d08:	e795      	b.n	20000c36 <svpwm+0x6e>
20000d0a:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000d0e:	1bc9      	subs	r1, r1, r7
20000d10:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000d14:	e799      	b.n	20000c4a <svpwm+0x82>
20000d16:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000d1a:	1bc9      	subs	r1, r1, r7
20000d1c:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000d20:	e79d      	b.n	20000c5e <svpwm+0x96>
20000d22:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000d26:	1bc9      	subs	r1, r1, r7
20000d28:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000d2c:	e7a1      	b.n	20000c72 <svpwm+0xaa>
20000d2e:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000d32:	1bc9      	subs	r1, r1, r7
20000d34:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000d38:	e7a5      	b.n	20000c86 <svpwm+0xbe>
20000d3a:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
20000d3e:	4e5e      	ldr	r6, [pc, #376]	; (20000eb8 <svpwm+0x2f0>)
20000d40:	3204      	adds	r2, #4
20000d42:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d46:	3556      	adds	r5, #86	; 0x56
20000d48:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000d4c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d50:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000d54:	fb01 f103 	mul.w	r1, r1, r3
20000d58:	fb02 f203 	mul.w	r2, r2, r3
20000d5c:	1289      	asrs	r1, r1, #10
20000d5e:	1293      	asrs	r3, r2, #10
20000d60:	424a      	negs	r2, r1
20000d62:	1ad2      	subs	r2, r2, r3
20000d64:	1a5d      	subs	r5, r3, r1
20000d66:	440b      	add	r3, r1
20000d68:	6062      	str	r2, [r4, #4]
20000d6a:	6025      	str	r5, [r4, #0]
20000d6c:	60a3      	str	r3, [r4, #8]
20000d6e:	b011      	add	sp, #68	; 0x44
20000d70:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000d72:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000d76:	4e50      	ldr	r6, [pc, #320]	; (20000eb8 <svpwm+0x2f0>)
20000d78:	3202      	adds	r2, #2
20000d7a:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d7e:	f505 7540 	add.w	r5, r5, #768	; 0x300
20000d82:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000d86:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d8a:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000d8e:	fb01 f103 	mul.w	r1, r1, r3
20000d92:	fb02 f203 	mul.w	r2, r2, r3
20000d96:	1289      	asrs	r1, r1, #10
20000d98:	1293      	asrs	r3, r2, #10
20000d9a:	424a      	negs	r2, r1
20000d9c:	1ad2      	subs	r2, r2, r3
20000d9e:	18cd      	adds	r5, r1, r3
20000da0:	1a5b      	subs	r3, r3, r1
20000da2:	60a2      	str	r2, [r4, #8]
20000da4:	6025      	str	r5, [r4, #0]
20000da6:	6063      	str	r3, [r4, #4]
20000da8:	b011      	add	sp, #68	; 0x44
20000daa:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000dac:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20000db0:	4e41      	ldr	r6, [pc, #260]	; (20000eb8 <svpwm+0x2f0>)
20000db2:	3204      	adds	r2, #4
20000db4:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000db8:	f205 2556 	addw	r5, r5, #598	; 0x256
20000dbc:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000dc0:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000dc4:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000dc8:	fb01 f103 	mul.w	r1, r1, r3
20000dcc:	fb02 f203 	mul.w	r2, r2, r3
20000dd0:	1289      	asrs	r1, r1, #10
20000dd2:	1293      	asrs	r3, r2, #10
20000dd4:	424a      	negs	r2, r1
20000dd6:	1ad2      	subs	r2, r2, r3
20000dd8:	1acd      	subs	r5, r1, r3
20000dda:	440b      	add	r3, r1
20000ddc:	60a2      	str	r2, [r4, #8]
20000dde:	6025      	str	r5, [r4, #0]
20000de0:	6063      	str	r3, [r4, #4]
20000de2:	b011      	add	sp, #68	; 0x44
20000de4:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000de6:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20000dea:	4e33      	ldr	r6, [pc, #204]	; (20000eb8 <svpwm+0x2f0>)
20000dec:	320f      	adds	r2, #15
20000dee:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000df2:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20000df6:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000dfa:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000dfe:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000e02:	fb01 f103 	mul.w	r1, r1, r3
20000e06:	fb02 f203 	mul.w	r2, r2, r3
20000e0a:	1289      	asrs	r1, r1, #10
20000e0c:	1293      	asrs	r3, r2, #10
20000e0e:	424a      	negs	r2, r1
20000e10:	1ad2      	subs	r2, r2, r3
20000e12:	18cd      	adds	r5, r1, r3
20000e14:	1a5b      	subs	r3, r3, r1
20000e16:	e884 0024 	stmia.w	r4, {r2, r5}
20000e1a:	60a3      	str	r3, [r4, #8]
20000e1c:	b011      	add	sp, #68	; 0x44
20000e1e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000e20:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20000e24:	4e24      	ldr	r6, [pc, #144]	; (20000eb8 <svpwm+0x2f0>)
20000e26:	320a      	adds	r2, #10
20000e28:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000e2c:	f505 7580 	add.w	r5, r5, #256	; 0x100
20000e30:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000e34:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000e38:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000e3c:	fb01 f103 	mul.w	r1, r1, r3
20000e40:	fb02 f203 	mul.w	r2, r2, r3
20000e44:	1289      	asrs	r1, r1, #10
20000e46:	1293      	asrs	r3, r2, #10
20000e48:	424a      	negs	r2, r1
20000e4a:	1ad2      	subs	r2, r2, r3
20000e4c:	1acd      	subs	r5, r1, r3
20000e4e:	440b      	add	r3, r1
20000e50:	e884 0024 	stmia.w	r4, {r2, r5}
20000e54:	60a3      	str	r3, [r4, #8]
20000e56:	b011      	add	sp, #68	; 0x44
20000e58:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000e5a:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000e5e:	4916      	ldr	r1, [pc, #88]	; (20000eb8 <svpwm+0x2f0>)
20000e60:	320f      	adds	r2, #15
20000e62:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000e66:	3d55      	subs	r5, #85	; 0x55
20000e68:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000e6c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000e70:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000e74:	fb02 f203 	mul.w	r2, r2, r3
20000e78:	fb01 f303 	mul.w	r3, r1, r3
20000e7c:	1292      	asrs	r2, r2, #10
20000e7e:	129b      	asrs	r3, r3, #10
20000e80:	4251      	negs	r1, r2
20000e82:	18d5      	adds	r5, r2, r3
20000e84:	1ac9      	subs	r1, r1, r3
20000e86:	1ad2      	subs	r2, r2, r3
20000e88:	6061      	str	r1, [r4, #4]
20000e8a:	6025      	str	r5, [r4, #0]
20000e8c:	60a2      	str	r2, [r4, #8]
20000e8e:	b011      	add	sp, #68	; 0x44
20000e90:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000e92:	461a      	mov	r2, r3
20000e94:	e703      	b.n	20000c9e <svpwm+0xd6>
20000e96:	4610      	mov	r0, r2
20000e98:	2201      	movs	r2, #1
20000e9a:	e700      	b.n	20000c9e <svpwm+0xd6>
20000e9c:	2202      	movs	r2, #2
20000e9e:	e6fe      	b.n	20000c9e <svpwm+0xd6>
20000ea0:	4610      	mov	r0, r2
20000ea2:	2203      	movs	r2, #3
20000ea4:	e6fb      	b.n	20000c9e <svpwm+0xd6>
20000ea6:	2204      	movs	r2, #4
20000ea8:	e6f9      	b.n	20000c9e <svpwm+0xd6>
20000eaa:	4610      	mov	r0, r2
20000eac:	2205      	movs	r2, #5
20000eae:	e6f6      	b.n	20000c9e <svpwm+0xd6>
20000eb0:	2206      	movs	r2, #6
20000eb2:	e6f4      	b.n	20000c9e <svpwm+0xd6>
20000eb4:	2000178c 	.word	0x2000178c
20000eb8:	200017cc 	.word	0x200017cc

20000ebc <encoder_init>:
20000ebc:	4b01      	ldr	r3, [pc, #4]	; (20000ec4 <encoder_init+0x8>)
20000ebe:	6018      	str	r0, [r3, #0]
20000ec0:	6058      	str	r0, [r3, #4]
20000ec2:	4770      	bx	lr
20000ec4:	20002840 	.word	0x20002840

20000ec8 <get_speed>:
20000ec8:	4a0e      	ldr	r2, [pc, #56]	; (20000f04 <get_speed+0x3c>)
20000eca:	b430      	push	{r4, r5}
20000ecc:	6853      	ldr	r3, [r2, #4]
20000ece:	6815      	ldr	r5, [r2, #0]
20000ed0:	1ac3      	subs	r3, r0, r3
20000ed2:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20000ed6:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
20000eda:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
20000ede:	e882 0021 	stmia.w	r2, {r0, r5}
20000ee2:	dd05      	ble.n	20000ef0 <get_speed+0x28>
20000ee4:	2b00      	cmp	r3, #0
20000ee6:	bfb4      	ite	lt
20000ee8:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
20000eec:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20000ef0:	4a05      	ldr	r2, [pc, #20]	; (20000f08 <get_speed+0x40>)
20000ef2:	1058      	asrs	r0, r3, #1
20000ef4:	fb02 f000 	mul.w	r0, r2, r0
20000ef8:	bc30      	pop	{r4, r5}
20000efa:	680a      	ldr	r2, [r1, #0]
20000efc:	1300      	asrs	r0, r0, #12
20000efe:	4413      	add	r3, r2
20000f00:	600b      	str	r3, [r1, #0]
20000f02:	4770      	bx	lr
20000f04:	20002840 	.word	0x20002840
20000f08:	0002ae7c 	.word	0x0002ae7c

20000f0c <mfilter>:
20000f0c:	b430      	push	{r4, r5}
20000f0e:	4605      	mov	r5, r0
20000f10:	4a06      	ldr	r2, [pc, #24]	; (20000f2c <mfilter+0x20>)
20000f12:	6893      	ldr	r3, [r2, #8]
20000f14:	3301      	adds	r3, #1
20000f16:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000f1a:	eb02 0483 	add.w	r4, r2, r3, lsl #2
20000f1e:	68e0      	ldr	r0, [r4, #12]
20000f20:	6093      	str	r3, [r2, #8]
20000f22:	1a08      	subs	r0, r1, r0
20000f24:	4428      	add	r0, r5
20000f26:	60e5      	str	r5, [r4, #12]
20000f28:	bc30      	pop	{r4, r5}
20000f2a:	4770      	bx	lr
20000f2c:	20002840 	.word	0x20002840

20000f30 <rfilter1>:
20000f30:	b470      	push	{r4, r5, r6}
20000f32:	f240 74c6 	movw	r4, #1990	; 0x7c6
20000f36:	4b12      	ldr	r3, [pc, #72]	; (20000f80 <rfilter1+0x50>)
20000f38:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20000f3c:	f853 6cec 	ldr.w	r6, [r3, #-236]
20000f40:	f853 1ce4 	ldr.w	r1, [r3, #-228]
20000f44:	fb04 f406 	mul.w	r4, r4, r6
20000f48:	fb02 4201 	mla	r2, r2, r1, r4
20000f4c:	490d      	ldr	r1, [pc, #52]	; (20000f84 <rfilter1+0x54>)
20000f4e:	f853 5ce8 	ldr.w	r5, [r3, #-232]
20000f52:	fb01 2200 	mla	r2, r1, r0, r2
20000f56:	4c0c      	ldr	r4, [pc, #48]	; (20000f88 <rfilter1+0x58>)
20000f58:	f853 1ce0 	ldr.w	r1, [r3, #-224]
20000f5c:	fb04 2205 	mla	r2, r4, r5, r2
20000f60:	4c0a      	ldr	r4, [pc, #40]	; (20000f8c <rfilter1+0x5c>)
20000f62:	f843 6ce4 	str.w	r6, [r3, #-228]
20000f66:	fb04 2201 	mla	r2, r4, r1, r2
20000f6a:	1291      	asrs	r1, r2, #10
20000f6c:	f843 0ce8 	str.w	r0, [r3, #-232]
20000f70:	f843 5ce0 	str.w	r5, [r3, #-224]
20000f74:	1490      	asrs	r0, r2, #18
20000f76:	f843 1cec 	str.w	r1, [r3, #-236]
20000f7a:	bc70      	pop	{r4, r5, r6}
20000f7c:	4770      	bx	lr
20000f7e:	bf00      	nop
20000f80:	20003938 	.word	0x20003938
20000f84:	0003f0a4 	.word	0x0003f0a4
20000f88:	fff83a2e 	.word	0xfff83a2e
20000f8c:	0003dc29 	.word	0x0003dc29

20000f90 <rfilter2>:
20000f90:	b470      	push	{r4, r5, r6}
20000f92:	f240 748a 	movw	r4, #1930	; 0x78a
20000f96:	4b11      	ldr	r3, [pc, #68]	; (20000fdc <rfilter2+0x4c>)
20000f98:	4a11      	ldr	r2, [pc, #68]	; (20000fe0 <rfilter2+0x50>)
20000f9a:	f853 6cdc 	ldr.w	r6, [r3, #-220]
20000f9e:	f853 1cd4 	ldr.w	r1, [r3, #-212]
20000fa2:	fb04 f406 	mul.w	r4, r4, r6
20000fa6:	fb02 4201 	mla	r2, r2, r1, r4
20000faa:	490e      	ldr	r1, [pc, #56]	; (20000fe4 <rfilter2+0x54>)
20000fac:	f853 5cd8 	ldr.w	r5, [r3, #-216]
20000fb0:	fb01 2200 	mla	r2, r1, r0, r2
20000fb4:	4c0c      	ldr	r4, [pc, #48]	; (20000fe8 <rfilter2+0x58>)
20000fb6:	f853 1cd0 	ldr.w	r1, [r3, #-208]
20000fba:	fb04 2205 	mla	r2, r4, r5, r2
20000fbe:	4c0b      	ldr	r4, [pc, #44]	; (20000fec <rfilter2+0x5c>)
20000fc0:	f843 6cd4 	str.w	r6, [r3, #-212]
20000fc4:	fb04 2201 	mla	r2, r4, r1, r2
20000fc8:	1291      	asrs	r1, r2, #10
20000fca:	f843 0cd8 	str.w	r0, [r3, #-216]
20000fce:	f843 5cd0 	str.w	r5, [r3, #-208]
20000fd2:	1490      	asrs	r0, r2, #18
20000fd4:	f843 1cdc 	str.w	r1, [r3, #-220]
20000fd8:	bc70      	pop	{r4, r5, r6}
20000fda:	4770      	bx	lr
20000fdc:	20003938 	.word	0x20003938
20000fe0:	fffffc66 	.word	0xfffffc66
20000fe4:	0003e3d7 	.word	0x0003e3d7
20000fe8:	fff8767b 	.word	0xfff8767b
20000fec:	0003b5c3 	.word	0x0003b5c3

20000ff0 <adc_init>:
20000ff0:	b480      	push	{r7}
20000ff2:	af00      	add	r7, sp, #0
20000ff4:	4a10      	ldr	r2, [pc, #64]	; (20001038 <adc_init+0x48>)
20000ff6:	4b10      	ldr	r3, [pc, #64]	; (20001038 <adc_init+0x48>)
20000ff8:	69db      	ldr	r3, [r3, #28]
20000ffa:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000ffe:	61d3      	str	r3, [r2, #28]
20001000:	4b0d      	ldr	r3, [pc, #52]	; (20001038 <adc_init+0x48>)
20001002:	f242 0220 	movw	r2, #8224	; 0x2020
20001006:	615a      	str	r2, [r3, #20]
20001008:	4b0c      	ldr	r3, [pc, #48]	; (2000103c <adc_init+0x4c>)
2000100a:	2200      	movs	r2, #0
2000100c:	601a      	str	r2, [r3, #0]
2000100e:	4a0b      	ldr	r2, [pc, #44]	; (2000103c <adc_init+0x4c>)
20001010:	4b0a      	ldr	r3, [pc, #40]	; (2000103c <adc_init+0x4c>)
20001012:	681b      	ldr	r3, [r3, #0]
20001014:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20001018:	f043 0301 	orr.w	r3, r3, #1
2000101c:	6013      	str	r3, [r2, #0]
2000101e:	4a07      	ldr	r2, [pc, #28]	; (2000103c <adc_init+0x4c>)
20001020:	4b06      	ldr	r3, [pc, #24]	; (2000103c <adc_init+0x4c>)
20001022:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001024:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
20001028:	6293      	str	r3, [r2, #40]	; 0x28
2000102a:	4b04      	ldr	r3, [pc, #16]	; (2000103c <adc_init+0x4c>)
2000102c:	2210      	movs	r2, #16
2000102e:	621a      	str	r2, [r3, #32]
20001030:	bf00      	nop
20001032:	46bd      	mov	sp, r7
20001034:	bc80      	pop	{r7}
20001036:	4770      	bx	lr
20001038:	40020000 	.word	0x40020000
2000103c:	40088000 	.word	0x40088000

20001040 <dma_init>:
20001040:	b480      	push	{r7}
20001042:	af00      	add	r7, sp, #0
20001044:	4a17      	ldr	r2, [pc, #92]	; (200010a4 <dma_init+0x64>)
20001046:	4b17      	ldr	r3, [pc, #92]	; (200010a4 <dma_init+0x64>)
20001048:	69db      	ldr	r3, [r3, #28]
2000104a:	f043 0320 	orr.w	r3, r3, #32
2000104e:	61d3      	str	r3, [r2, #28]
20001050:	4b15      	ldr	r3, [pc, #84]	; (200010a8 <dma_init+0x68>)
20001052:	4a16      	ldr	r2, [pc, #88]	; (200010ac <dma_init+0x6c>)
20001054:	609a      	str	r2, [r3, #8]
20001056:	4b14      	ldr	r3, [pc, #80]	; (200010a8 <dma_init+0x68>)
20001058:	f04f 32ff 	mov.w	r2, #4294967295
2000105c:	62da      	str	r2, [r3, #44]	; 0x2c
2000105e:	4b12      	ldr	r3, [pc, #72]	; (200010a8 <dma_init+0x68>)
20001060:	f04f 32ff 	mov.w	r2, #4294967295
20001064:	621a      	str	r2, [r3, #32]
20001066:	4b10      	ldr	r3, [pc, #64]	; (200010a8 <dma_init+0x68>)
20001068:	f04f 32ff 	mov.w	r2, #4294967295
2000106c:	635a      	str	r2, [r3, #52]	; 0x34
2000106e:	4b0e      	ldr	r3, [pc, #56]	; (200010a8 <dma_init+0x68>)
20001070:	f44f 7280 	mov.w	r2, #256	; 0x100
20001074:	61da      	str	r2, [r3, #28]
20001076:	4b0c      	ldr	r3, [pc, #48]	; (200010a8 <dma_init+0x68>)
20001078:	f44f 7280 	mov.w	r2, #256	; 0x100
2000107c:	625a      	str	r2, [r3, #36]	; 0x24
2000107e:	4b0a      	ldr	r3, [pc, #40]	; (200010a8 <dma_init+0x68>)
20001080:	2201      	movs	r2, #1
20001082:	605a      	str	r2, [r3, #4]
20001084:	4b09      	ldr	r3, [pc, #36]	; (200010ac <dma_init+0x6c>)
20001086:	4a0a      	ldr	r2, [pc, #40]	; (200010b0 <dma_init+0x70>)
20001088:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
2000108c:	4a09      	ldr	r2, [pc, #36]	; (200010b4 <dma_init+0x74>)
2000108e:	4b07      	ldr	r3, [pc, #28]	; (200010ac <dma_init+0x6c>)
20001090:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001094:	4b05      	ldr	r3, [pc, #20]	; (200010ac <dma_init+0x6c>)
20001096:	4a08      	ldr	r2, [pc, #32]	; (200010b8 <dma_init+0x78>)
20001098:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
2000109c:	bf00      	nop
2000109e:	46bd      	mov	sp, r7
200010a0:	bc80      	pop	{r7}
200010a2:	4770      	bx	lr
200010a4:	40020000 	.word	0x40020000
200010a8:	40028000 	.word	0x40028000
200010ac:	20003c00 	.word	0x20003c00
200010b0:	40088018 	.word	0x40088018
200010b4:	20003e04 	.word	0x20003e04
200010b8:	ae000011 	.word	0xae000011

200010bc <adc_dma_init>:
200010bc:	b580      	push	{r7, lr}
200010be:	af00      	add	r7, sp, #0
200010c0:	f7ff ff96 	bl	20000ff0 <adc_init>
200010c4:	f7ff ffbc 	bl	20001040 <dma_init>
200010c8:	bf00      	nop
200010ca:	bd80      	pop	{r7, pc}

200010cc <adc_dma_start>:
200010cc:	b480      	push	{r7}
200010ce:	af00      	add	r7, sp, #0
200010d0:	4a06      	ldr	r2, [pc, #24]	; (200010ec <adc_dma_start+0x20>)
200010d2:	4b06      	ldr	r3, [pc, #24]	; (200010ec <adc_dma_start+0x20>)
200010d4:	681b      	ldr	r3, [r3, #0]
200010d6:	f043 0308 	orr.w	r3, r3, #8
200010da:	6013      	str	r3, [r2, #0]
200010dc:	4b04      	ldr	r3, [pc, #16]	; (200010f0 <adc_dma_start+0x24>)
200010de:	f44f 7280 	mov.w	r2, #256	; 0x100
200010e2:	629a      	str	r2, [r3, #40]	; 0x28
200010e4:	bf00      	nop
200010e6:	46bd      	mov	sp, r7
200010e8:	bc80      	pop	{r7}
200010ea:	4770      	bx	lr
200010ec:	40088000 	.word	0x40088000
200010f0:	40028000 	.word	0x40028000

200010f4 <adc_dma_wait>:
200010f4:	b480      	push	{r7}
200010f6:	af00      	add	r7, sp, #0
200010f8:	bf00      	nop
200010fa:	4b0a      	ldr	r3, [pc, #40]	; (20001124 <adc_dma_wait+0x30>)
200010fc:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20001100:	f003 0307 	and.w	r3, r3, #7
20001104:	2b00      	cmp	r3, #0
20001106:	d1f8      	bne.n	200010fa <adc_dma_wait+0x6>
20001108:	4a07      	ldr	r2, [pc, #28]	; (20001128 <adc_dma_wait+0x34>)
2000110a:	4b07      	ldr	r3, [pc, #28]	; (20001128 <adc_dma_wait+0x34>)
2000110c:	681b      	ldr	r3, [r3, #0]
2000110e:	f023 0308 	bic.w	r3, r3, #8
20001112:	6013      	str	r3, [r2, #0]
20001114:	4b03      	ldr	r3, [pc, #12]	; (20001124 <adc_dma_wait+0x30>)
20001116:	4a05      	ldr	r2, [pc, #20]	; (2000112c <adc_dma_wait+0x38>)
20001118:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
2000111c:	bf00      	nop
2000111e:	46bd      	mov	sp, r7
20001120:	bc80      	pop	{r7}
20001122:	4770      	bx	lr
20001124:	20003c00 	.word	0x20003c00
20001128:	40088000 	.word	0x40088000
2000112c:	ae000011 	.word	0xae000011

20001130 <NVIC_EnableIRQ>:
20001130:	b480      	push	{r7}
20001132:	b083      	sub	sp, #12
20001134:	af00      	add	r7, sp, #0
20001136:	4603      	mov	r3, r0
20001138:	71fb      	strb	r3, [r7, #7]
2000113a:	4908      	ldr	r1, [pc, #32]	; (2000115c <NVIC_EnableIRQ+0x2c>)
2000113c:	f997 3007 	ldrsb.w	r3, [r7, #7]
20001140:	095b      	lsrs	r3, r3, #5
20001142:	79fa      	ldrb	r2, [r7, #7]
20001144:	f002 021f 	and.w	r2, r2, #31
20001148:	2001      	movs	r0, #1
2000114a:	fa00 f202 	lsl.w	r2, r0, r2
2000114e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20001152:	bf00      	nop
20001154:	370c      	adds	r7, #12
20001156:	46bd      	mov	sp, r7
20001158:	bc80      	pop	{r7}
2000115a:	4770      	bx	lr
2000115c:	e000e100 	.word	0xe000e100

20001160 <PortConfig>:
20001160:	b480      	push	{r7}
20001162:	af00      	add	r7, sp, #0
20001164:	4a63      	ldr	r2, [pc, #396]	; (200012f4 <PortConfig+0x194>)
20001166:	4b63      	ldr	r3, [pc, #396]	; (200012f4 <PortConfig+0x194>)
20001168:	69db      	ldr	r3, [r3, #28]
2000116a:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
2000116e:	61d3      	str	r3, [r2, #28]
20001170:	4b61      	ldr	r3, [pc, #388]	; (200012f8 <PortConfig+0x198>)
20001172:	2200      	movs	r2, #0
20001174:	609a      	str	r2, [r3, #8]
20001176:	4b60      	ldr	r3, [pc, #384]	; (200012f8 <PortConfig+0x198>)
20001178:	2200      	movs	r2, #0
2000117a:	601a      	str	r2, [r3, #0]
2000117c:	4a5e      	ldr	r2, [pc, #376]	; (200012f8 <PortConfig+0x198>)
2000117e:	4b5e      	ldr	r3, [pc, #376]	; (200012f8 <PortConfig+0x198>)
20001180:	685b      	ldr	r3, [r3, #4]
20001182:	f043 0301 	orr.w	r3, r3, #1
20001186:	6053      	str	r3, [r2, #4]
20001188:	4a5b      	ldr	r2, [pc, #364]	; (200012f8 <PortConfig+0x198>)
2000118a:	4b5b      	ldr	r3, [pc, #364]	; (200012f8 <PortConfig+0x198>)
2000118c:	68db      	ldr	r3, [r3, #12]
2000118e:	f043 0301 	orr.w	r3, r3, #1
20001192:	60d3      	str	r3, [r2, #12]
20001194:	4a58      	ldr	r2, [pc, #352]	; (200012f8 <PortConfig+0x198>)
20001196:	4b58      	ldr	r3, [pc, #352]	; (200012f8 <PortConfig+0x198>)
20001198:	699b      	ldr	r3, [r3, #24]
2000119a:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
2000119e:	6193      	str	r3, [r2, #24]
200011a0:	4a55      	ldr	r2, [pc, #340]	; (200012f8 <PortConfig+0x198>)
200011a2:	4b55      	ldr	r3, [pc, #340]	; (200012f8 <PortConfig+0x198>)
200011a4:	685b      	ldr	r3, [r3, #4]
200011a6:	f023 0308 	bic.w	r3, r3, #8
200011aa:	6053      	str	r3, [r2, #4]
200011ac:	4a52      	ldr	r2, [pc, #328]	; (200012f8 <PortConfig+0x198>)
200011ae:	4b52      	ldr	r3, [pc, #328]	; (200012f8 <PortConfig+0x198>)
200011b0:	68db      	ldr	r3, [r3, #12]
200011b2:	f043 0308 	orr.w	r3, r3, #8
200011b6:	60d3      	str	r3, [r2, #12]
200011b8:	4b4f      	ldr	r3, [pc, #316]	; (200012f8 <PortConfig+0x198>)
200011ba:	2280      	movs	r2, #128	; 0x80
200011bc:	609a      	str	r2, [r3, #8]
200011be:	4a4d      	ldr	r2, [pc, #308]	; (200012f4 <PortConfig+0x194>)
200011c0:	4b4c      	ldr	r3, [pc, #304]	; (200012f4 <PortConfig+0x194>)
200011c2:	69db      	ldr	r3, [r3, #28]
200011c4:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
200011c8:	61d3      	str	r3, [r2, #28]
200011ca:	4a4c      	ldr	r2, [pc, #304]	; (200012fc <PortConfig+0x19c>)
200011cc:	4b4b      	ldr	r3, [pc, #300]	; (200012fc <PortConfig+0x19c>)
200011ce:	689b      	ldr	r3, [r3, #8]
200011d0:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
200011d4:	6093      	str	r3, [r2, #8]
200011d6:	4a49      	ldr	r2, [pc, #292]	; (200012fc <PortConfig+0x19c>)
200011d8:	4b48      	ldr	r3, [pc, #288]	; (200012fc <PortConfig+0x19c>)
200011da:	689b      	ldr	r3, [r3, #8]
200011dc:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
200011e0:	6093      	str	r3, [r2, #8]
200011e2:	4a46      	ldr	r2, [pc, #280]	; (200012fc <PortConfig+0x19c>)
200011e4:	4b45      	ldr	r3, [pc, #276]	; (200012fc <PortConfig+0x19c>)
200011e6:	68db      	ldr	r3, [r3, #12]
200011e8:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
200011ec:	60d3      	str	r3, [r2, #12]
200011ee:	4a43      	ldr	r2, [pc, #268]	; (200012fc <PortConfig+0x19c>)
200011f0:	4b42      	ldr	r3, [pc, #264]	; (200012fc <PortConfig+0x19c>)
200011f2:	699b      	ldr	r3, [r3, #24]
200011f4:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
200011f8:	6193      	str	r3, [r2, #24]
200011fa:	4a40      	ldr	r2, [pc, #256]	; (200012fc <PortConfig+0x19c>)
200011fc:	4b3f      	ldr	r3, [pc, #252]	; (200012fc <PortConfig+0x19c>)
200011fe:	685b      	ldr	r3, [r3, #4]
20001200:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20001204:	6053      	str	r3, [r2, #4]
20001206:	4a3d      	ldr	r2, [pc, #244]	; (200012fc <PortConfig+0x19c>)
20001208:	4b3c      	ldr	r3, [pc, #240]	; (200012fc <PortConfig+0x19c>)
2000120a:	685b      	ldr	r3, [r3, #4]
2000120c:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20001210:	6053      	str	r3, [r2, #4]
20001212:	4a3a      	ldr	r2, [pc, #232]	; (200012fc <PortConfig+0x19c>)
20001214:	4b39      	ldr	r3, [pc, #228]	; (200012fc <PortConfig+0x19c>)
20001216:	689b      	ldr	r3, [r3, #8]
20001218:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
2000121c:	6093      	str	r3, [r2, #8]
2000121e:	4a37      	ldr	r2, [pc, #220]	; (200012fc <PortConfig+0x19c>)
20001220:	4b36      	ldr	r3, [pc, #216]	; (200012fc <PortConfig+0x19c>)
20001222:	689b      	ldr	r3, [r3, #8]
20001224:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
20001228:	6093      	str	r3, [r2, #8]
2000122a:	4a34      	ldr	r2, [pc, #208]	; (200012fc <PortConfig+0x19c>)
2000122c:	4b33      	ldr	r3, [pc, #204]	; (200012fc <PortConfig+0x19c>)
2000122e:	68db      	ldr	r3, [r3, #12]
20001230:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001234:	60d3      	str	r3, [r2, #12]
20001236:	4a2f      	ldr	r2, [pc, #188]	; (200012f4 <PortConfig+0x194>)
20001238:	4b2e      	ldr	r3, [pc, #184]	; (200012f4 <PortConfig+0x194>)
2000123a:	69db      	ldr	r3, [r3, #28]
2000123c:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
20001240:	61d3      	str	r3, [r2, #28]
20001242:	4b2f      	ldr	r3, [pc, #188]	; (20001300 <PortConfig+0x1a0>)
20001244:	4a2f      	ldr	r2, [pc, #188]	; (20001304 <PortConfig+0x1a4>)
20001246:	609a      	str	r2, [r3, #8]
20001248:	4b2d      	ldr	r3, [pc, #180]	; (20001300 <PortConfig+0x1a0>)
2000124a:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000124e:	60da      	str	r2, [r3, #12]
20001250:	4b2b      	ldr	r3, [pc, #172]	; (20001300 <PortConfig+0x1a0>)
20001252:	f04f 32ff 	mov.w	r2, #4294967295
20001256:	619a      	str	r2, [r3, #24]
20001258:	4b29      	ldr	r3, [pc, #164]	; (20001300 <PortConfig+0x1a0>)
2000125a:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000125e:	605a      	str	r2, [r3, #4]
20001260:	4a27      	ldr	r2, [pc, #156]	; (20001300 <PortConfig+0x1a0>)
20001262:	4b27      	ldr	r3, [pc, #156]	; (20001300 <PortConfig+0x1a0>)
20001264:	681b      	ldr	r3, [r3, #0]
20001266:	f023 0303 	bic.w	r3, r3, #3
2000126a:	6013      	str	r3, [r2, #0]
2000126c:	4a24      	ldr	r2, [pc, #144]	; (20001300 <PortConfig+0x1a0>)
2000126e:	4b24      	ldr	r3, [pc, #144]	; (20001300 <PortConfig+0x1a0>)
20001270:	681b      	ldr	r3, [r3, #0]
20001272:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001276:	6013      	str	r3, [r2, #0]
20001278:	4a1e      	ldr	r2, [pc, #120]	; (200012f4 <PortConfig+0x194>)
2000127a:	4b1e      	ldr	r3, [pc, #120]	; (200012f4 <PortConfig+0x194>)
2000127c:	69db      	ldr	r3, [r3, #28]
2000127e:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
20001282:	61d3      	str	r3, [r2, #28]
20001284:	4b20      	ldr	r3, [pc, #128]	; (20001308 <PortConfig+0x1a8>)
20001286:	2200      	movs	r2, #0
20001288:	609a      	str	r2, [r3, #8]
2000128a:	4a1f      	ldr	r2, [pc, #124]	; (20001308 <PortConfig+0x1a8>)
2000128c:	4b1e      	ldr	r3, [pc, #120]	; (20001308 <PortConfig+0x1a8>)
2000128e:	685b      	ldr	r3, [r3, #4]
20001290:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001294:	6053      	str	r3, [r2, #4]
20001296:	4a1c      	ldr	r2, [pc, #112]	; (20001308 <PortConfig+0x1a8>)
20001298:	4b1b      	ldr	r3, [pc, #108]	; (20001308 <PortConfig+0x1a8>)
2000129a:	68db      	ldr	r3, [r3, #12]
2000129c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200012a0:	60d3      	str	r3, [r2, #12]
200012a2:	4b19      	ldr	r3, [pc, #100]	; (20001308 <PortConfig+0x1a8>)
200012a4:	f04f 32ff 	mov.w	r2, #4294967295
200012a8:	619a      	str	r2, [r3, #24]
200012aa:	4a17      	ldr	r2, [pc, #92]	; (20001308 <PortConfig+0x1a8>)
200012ac:	4b16      	ldr	r3, [pc, #88]	; (20001308 <PortConfig+0x1a8>)
200012ae:	681b      	ldr	r3, [r3, #0]
200012b0:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
200012b4:	6013      	str	r3, [r2, #0]
200012b6:	4a0f      	ldr	r2, [pc, #60]	; (200012f4 <PortConfig+0x194>)
200012b8:	4b0e      	ldr	r3, [pc, #56]	; (200012f4 <PortConfig+0x194>)
200012ba:	69db      	ldr	r3, [r3, #28]
200012bc:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
200012c0:	61d3      	str	r3, [r2, #28]
200012c2:	4a12      	ldr	r2, [pc, #72]	; (2000130c <PortConfig+0x1ac>)
200012c4:	4b11      	ldr	r3, [pc, #68]	; (2000130c <PortConfig+0x1ac>)
200012c6:	68db      	ldr	r3, [r3, #12]
200012c8:	f423 7300 	bic.w	r3, r3, #512	; 0x200
200012cc:	f023 0301 	bic.w	r3, r3, #1
200012d0:	60d3      	str	r3, [r2, #12]
200012d2:	4a08      	ldr	r2, [pc, #32]	; (200012f4 <PortConfig+0x194>)
200012d4:	4b07      	ldr	r3, [pc, #28]	; (200012f4 <PortConfig+0x194>)
200012d6:	69db      	ldr	r3, [r3, #28]
200012d8:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
200012dc:	61d3      	str	r3, [r2, #28]
200012de:	4a0c      	ldr	r2, [pc, #48]	; (20001310 <PortConfig+0x1b0>)
200012e0:	4b0b      	ldr	r3, [pc, #44]	; (20001310 <PortConfig+0x1b0>)
200012e2:	68db      	ldr	r3, [r3, #12]
200012e4:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
200012e8:	60d3      	str	r3, [r2, #12]
200012ea:	bf00      	nop
200012ec:	46bd      	mov	sp, r7
200012ee:	bc80      	pop	{r7}
200012f0:	4770      	bx	lr
200012f2:	bf00      	nop
200012f4:	40020000 	.word	0x40020000
200012f8:	400a8000 	.word	0x400a8000
200012fc:	400b0000 	.word	0x400b0000
20001300:	400b8000 	.word	0x400b8000
20001304:	000aaaa0 	.word	0x000aaaa0
20001308:	400e8000 	.word	0x400e8000
2000130c:	400c8000 	.word	0x400c8000
20001310:	400c0000 	.word	0x400c0000

20001314 <ClkConfig>:
20001314:	b480      	push	{r7}
20001316:	af00      	add	r7, sp, #0
20001318:	4a16      	ldr	r2, [pc, #88]	; (20001374 <ClkConfig+0x60>)
2000131a:	4b16      	ldr	r3, [pc, #88]	; (20001374 <ClkConfig+0x60>)
2000131c:	689b      	ldr	r3, [r3, #8]
2000131e:	f043 0301 	orr.w	r3, r3, #1
20001322:	6093      	str	r3, [r2, #8]
20001324:	bf00      	nop
20001326:	4b13      	ldr	r3, [pc, #76]	; (20001374 <ClkConfig+0x60>)
20001328:	681b      	ldr	r3, [r3, #0]
2000132a:	f003 0304 	and.w	r3, r3, #4
2000132e:	2b00      	cmp	r3, #0
20001330:	d0f9      	beq.n	20001326 <ClkConfig+0x12>
20001332:	4b10      	ldr	r3, [pc, #64]	; (20001374 <ClkConfig+0x60>)
20001334:	2206      	movs	r2, #6
20001336:	60da      	str	r2, [r3, #12]
20001338:	4b0e      	ldr	r3, [pc, #56]	; (20001374 <ClkConfig+0x60>)
2000133a:	f640 1204 	movw	r2, #2308	; 0x904
2000133e:	605a      	str	r2, [r3, #4]
20001340:	bf00      	nop
20001342:	4b0c      	ldr	r3, [pc, #48]	; (20001374 <ClkConfig+0x60>)
20001344:	681b      	ldr	r3, [r3, #0]
20001346:	f003 0302 	and.w	r3, r3, #2
2000134a:	2b00      	cmp	r3, #0
2000134c:	d0f9      	beq.n	20001342 <ClkConfig+0x2e>
2000134e:	4a09      	ldr	r2, [pc, #36]	; (20001374 <ClkConfig+0x60>)
20001350:	4b08      	ldr	r3, [pc, #32]	; (20001374 <ClkConfig+0x60>)
20001352:	68db      	ldr	r3, [r3, #12]
20001354:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001358:	60d3      	str	r3, [r2, #12]
2000135a:	4a07      	ldr	r2, [pc, #28]	; (20001378 <ClkConfig+0x64>)
2000135c:	4b06      	ldr	r3, [pc, #24]	; (20001378 <ClkConfig+0x64>)
2000135e:	681b      	ldr	r3, [r3, #0]
20001360:	f043 0320 	orr.w	r3, r3, #32
20001364:	6013      	str	r3, [r2, #0]
20001366:	4b05      	ldr	r3, [pc, #20]	; (2000137c <ClkConfig+0x68>)
20001368:	2200      	movs	r2, #0
2000136a:	601a      	str	r2, [r3, #0]
2000136c:	bf00      	nop
2000136e:	46bd      	mov	sp, r7
20001370:	bc80      	pop	{r7}
20001372:	4770      	bx	lr
20001374:	40020000 	.word	0x40020000
20001378:	40018000 	.word	0x40018000
2000137c:	20003900 	.word	0x20003900

20001380 <TimerConfig>:
20001380:	b580      	push	{r7, lr}
20001382:	af00      	add	r7, sp, #0
20001384:	4a8a      	ldr	r2, [pc, #552]	; (200015b0 <TimerConfig+0x230>)
20001386:	4b8a      	ldr	r3, [pc, #552]	; (200015b0 <TimerConfig+0x230>)
20001388:	69db      	ldr	r3, [r3, #28]
2000138a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
2000138e:	61d3      	str	r3, [r2, #28]
20001390:	4a87      	ldr	r2, [pc, #540]	; (200015b0 <TimerConfig+0x230>)
20001392:	4b87      	ldr	r3, [pc, #540]	; (200015b0 <TimerConfig+0x230>)
20001394:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001396:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
2000139a:	6253      	str	r3, [r2, #36]	; 0x24
2000139c:	4a84      	ldr	r2, [pc, #528]	; (200015b0 <TimerConfig+0x230>)
2000139e:	4b84      	ldr	r3, [pc, #528]	; (200015b0 <TimerConfig+0x230>)
200013a0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200013a2:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
200013a6:	6253      	str	r3, [r2, #36]	; 0x24
200013a8:	4b82      	ldr	r3, [pc, #520]	; (200015b4 <TimerConfig+0x234>)
200013aa:	2200      	movs	r2, #0
200013ac:	601a      	str	r2, [r3, #0]
200013ae:	4b81      	ldr	r3, [pc, #516]	; (200015b4 <TimerConfig+0x234>)
200013b0:	224f      	movs	r2, #79	; 0x4f
200013b2:	605a      	str	r2, [r3, #4]
200013b4:	4b7f      	ldr	r3, [pc, #508]	; (200015b4 <TimerConfig+0x234>)
200013b6:	f240 32e7 	movw	r2, #999	; 0x3e7
200013ba:	609a      	str	r2, [r3, #8]
200013bc:	4a7d      	ldr	r2, [pc, #500]	; (200015b4 <TimerConfig+0x234>)
200013be:	4b7d      	ldr	r3, [pc, #500]	; (200015b4 <TimerConfig+0x234>)
200013c0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200013c2:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
200013c6:	6253      	str	r3, [r2, #36]	; 0x24
200013c8:	4a7a      	ldr	r2, [pc, #488]	; (200015b4 <TimerConfig+0x234>)
200013ca:	4b7a      	ldr	r3, [pc, #488]	; (200015b4 <TimerConfig+0x234>)
200013cc:	6d9b      	ldr	r3, [r3, #88]	; 0x58
200013ce:	f043 0302 	orr.w	r3, r3, #2
200013d2:	6593      	str	r3, [r2, #88]	; 0x58
200013d4:	4b77      	ldr	r3, [pc, #476]	; (200015b4 <TimerConfig+0x234>)
200013d6:	2201      	movs	r2, #1
200013d8:	60da      	str	r2, [r3, #12]
200013da:	4a75      	ldr	r2, [pc, #468]	; (200015b0 <TimerConfig+0x230>)
200013dc:	4b74      	ldr	r3, [pc, #464]	; (200015b0 <TimerConfig+0x230>)
200013de:	69db      	ldr	r3, [r3, #28]
200013e0:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
200013e4:	61d3      	str	r3, [r2, #28]
200013e6:	4a72      	ldr	r2, [pc, #456]	; (200015b0 <TimerConfig+0x230>)
200013e8:	4b71      	ldr	r3, [pc, #452]	; (200015b0 <TimerConfig+0x230>)
200013ea:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200013ec:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
200013f0:	6253      	str	r3, [r2, #36]	; 0x24
200013f2:	4a6f      	ldr	r2, [pc, #444]	; (200015b0 <TimerConfig+0x230>)
200013f4:	4b6e      	ldr	r3, [pc, #440]	; (200015b0 <TimerConfig+0x230>)
200013f6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200013f8:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
200013fc:	6253      	str	r3, [r2, #36]	; 0x24
200013fe:	4b6e      	ldr	r3, [pc, #440]	; (200015b8 <TimerConfig+0x238>)
20001400:	2200      	movs	r2, #0
20001402:	601a      	str	r2, [r3, #0]
20001404:	4b6c      	ldr	r3, [pc, #432]	; (200015b8 <TimerConfig+0x238>)
20001406:	2202      	movs	r2, #2
20001408:	605a      	str	r2, [r3, #4]
2000140a:	4b6b      	ldr	r3, [pc, #428]	; (200015b8 <TimerConfig+0x238>)
2000140c:	f240 32ff 	movw	r2, #1023	; 0x3ff
20001410:	609a      	str	r2, [r3, #8]
20001412:	4b69      	ldr	r3, [pc, #420]	; (200015b8 <TimerConfig+0x238>)
20001414:	f44f 7200 	mov.w	r2, #512	; 0x200
20001418:	611a      	str	r2, [r3, #16]
2000141a:	4b67      	ldr	r3, [pc, #412]	; (200015b8 <TimerConfig+0x238>)
2000141c:	f44f 7200 	mov.w	r2, #512	; 0x200
20001420:	615a      	str	r2, [r3, #20]
20001422:	4b65      	ldr	r3, [pc, #404]	; (200015b8 <TimerConfig+0x238>)
20001424:	f44f 7200 	mov.w	r2, #512	; 0x200
20001428:	619a      	str	r2, [r3, #24]
2000142a:	4a63      	ldr	r2, [pc, #396]	; (200015b8 <TimerConfig+0x238>)
2000142c:	4b62      	ldr	r3, [pc, #392]	; (200015b8 <TimerConfig+0x238>)
2000142e:	6a1b      	ldr	r3, [r3, #32]
20001430:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001434:	6213      	str	r3, [r2, #32]
20001436:	4a60      	ldr	r2, [pc, #384]	; (200015b8 <TimerConfig+0x238>)
20001438:	4b5f      	ldr	r3, [pc, #380]	; (200015b8 <TimerConfig+0x238>)
2000143a:	6a1b      	ldr	r3, [r3, #32]
2000143c:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001440:	6213      	str	r3, [r2, #32]
20001442:	4a5d      	ldr	r2, [pc, #372]	; (200015b8 <TimerConfig+0x238>)
20001444:	4b5c      	ldr	r3, [pc, #368]	; (200015b8 <TimerConfig+0x238>)
20001446:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001448:	f023 030f 	bic.w	r3, r3, #15
2000144c:	6313      	str	r3, [r2, #48]	; 0x30
2000144e:	4a5a      	ldr	r2, [pc, #360]	; (200015b8 <TimerConfig+0x238>)
20001450:	4b59      	ldr	r3, [pc, #356]	; (200015b8 <TimerConfig+0x238>)
20001452:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001454:	f043 030c 	orr.w	r3, r3, #12
20001458:	6313      	str	r3, [r2, #48]	; 0x30
2000145a:	4a57      	ldr	r2, [pc, #348]	; (200015b8 <TimerConfig+0x238>)
2000145c:	4b56      	ldr	r3, [pc, #344]	; (200015b8 <TimerConfig+0x238>)
2000145e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001460:	f043 0301 	orr.w	r3, r3, #1
20001464:	6313      	str	r3, [r2, #48]	; 0x30
20001466:	4a54      	ldr	r2, [pc, #336]	; (200015b8 <TimerConfig+0x238>)
20001468:	4b53      	ldr	r3, [pc, #332]	; (200015b8 <TimerConfig+0x238>)
2000146a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000146c:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001470:	6313      	str	r3, [r2, #48]	; 0x30
20001472:	4a51      	ldr	r2, [pc, #324]	; (200015b8 <TimerConfig+0x238>)
20001474:	4b50      	ldr	r3, [pc, #320]	; (200015b8 <TimerConfig+0x238>)
20001476:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001478:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000147c:	6313      	str	r3, [r2, #48]	; 0x30
2000147e:	4a4e      	ldr	r2, [pc, #312]	; (200015b8 <TimerConfig+0x238>)
20001480:	4b4d      	ldr	r3, [pc, #308]	; (200015b8 <TimerConfig+0x238>)
20001482:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001484:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001488:	6313      	str	r3, [r2, #48]	; 0x30
2000148a:	4a4b      	ldr	r2, [pc, #300]	; (200015b8 <TimerConfig+0x238>)
2000148c:	4b4a      	ldr	r3, [pc, #296]	; (200015b8 <TimerConfig+0x238>)
2000148e:	6e1b      	ldr	r3, [r3, #96]	; 0x60
20001490:	f043 0308 	orr.w	r3, r3, #8
20001494:	6613      	str	r3, [r2, #96]	; 0x60
20001496:	4a48      	ldr	r2, [pc, #288]	; (200015b8 <TimerConfig+0x238>)
20001498:	4b47      	ldr	r3, [pc, #284]	; (200015b8 <TimerConfig+0x238>)
2000149a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000149c:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200014a0:	6253      	str	r3, [r2, #36]	; 0x24
200014a2:	4a45      	ldr	r2, [pc, #276]	; (200015b8 <TimerConfig+0x238>)
200014a4:	4b44      	ldr	r3, [pc, #272]	; (200015b8 <TimerConfig+0x238>)
200014a6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200014a8:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200014ac:	6253      	str	r3, [r2, #36]	; 0x24
200014ae:	4a42      	ldr	r2, [pc, #264]	; (200015b8 <TimerConfig+0x238>)
200014b0:	4b41      	ldr	r3, [pc, #260]	; (200015b8 <TimerConfig+0x238>)
200014b2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200014b4:	f023 030f 	bic.w	r3, r3, #15
200014b8:	6353      	str	r3, [r2, #52]	; 0x34
200014ba:	4a3f      	ldr	r2, [pc, #252]	; (200015b8 <TimerConfig+0x238>)
200014bc:	4b3e      	ldr	r3, [pc, #248]	; (200015b8 <TimerConfig+0x238>)
200014be:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200014c0:	f043 030c 	orr.w	r3, r3, #12
200014c4:	6353      	str	r3, [r2, #52]	; 0x34
200014c6:	4a3c      	ldr	r2, [pc, #240]	; (200015b8 <TimerConfig+0x238>)
200014c8:	4b3b      	ldr	r3, [pc, #236]	; (200015b8 <TimerConfig+0x238>)
200014ca:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200014cc:	f043 0301 	orr.w	r3, r3, #1
200014d0:	6353      	str	r3, [r2, #52]	; 0x34
200014d2:	4a39      	ldr	r2, [pc, #228]	; (200015b8 <TimerConfig+0x238>)
200014d4:	4b38      	ldr	r3, [pc, #224]	; (200015b8 <TimerConfig+0x238>)
200014d6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200014d8:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200014dc:	6353      	str	r3, [r2, #52]	; 0x34
200014de:	4a36      	ldr	r2, [pc, #216]	; (200015b8 <TimerConfig+0x238>)
200014e0:	4b35      	ldr	r3, [pc, #212]	; (200015b8 <TimerConfig+0x238>)
200014e2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200014e4:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200014e8:	6353      	str	r3, [r2, #52]	; 0x34
200014ea:	4a33      	ldr	r2, [pc, #204]	; (200015b8 <TimerConfig+0x238>)
200014ec:	4b32      	ldr	r3, [pc, #200]	; (200015b8 <TimerConfig+0x238>)
200014ee:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200014f0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200014f4:	6353      	str	r3, [r2, #52]	; 0x34
200014f6:	4a30      	ldr	r2, [pc, #192]	; (200015b8 <TimerConfig+0x238>)
200014f8:	4b2f      	ldr	r3, [pc, #188]	; (200015b8 <TimerConfig+0x238>)
200014fa:	6e5b      	ldr	r3, [r3, #100]	; 0x64
200014fc:	f043 0308 	orr.w	r3, r3, #8
20001500:	6653      	str	r3, [r2, #100]	; 0x64
20001502:	4a2d      	ldr	r2, [pc, #180]	; (200015b8 <TimerConfig+0x238>)
20001504:	4b2c      	ldr	r3, [pc, #176]	; (200015b8 <TimerConfig+0x238>)
20001506:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001508:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
2000150c:	6293      	str	r3, [r2, #40]	; 0x28
2000150e:	4a2a      	ldr	r2, [pc, #168]	; (200015b8 <TimerConfig+0x238>)
20001510:	4b29      	ldr	r3, [pc, #164]	; (200015b8 <TimerConfig+0x238>)
20001512:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001514:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001518:	6293      	str	r3, [r2, #40]	; 0x28
2000151a:	4a27      	ldr	r2, [pc, #156]	; (200015b8 <TimerConfig+0x238>)
2000151c:	4b26      	ldr	r3, [pc, #152]	; (200015b8 <TimerConfig+0x238>)
2000151e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001520:	f023 030f 	bic.w	r3, r3, #15
20001524:	6393      	str	r3, [r2, #56]	; 0x38
20001526:	4a24      	ldr	r2, [pc, #144]	; (200015b8 <TimerConfig+0x238>)
20001528:	4b23      	ldr	r3, [pc, #140]	; (200015b8 <TimerConfig+0x238>)
2000152a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000152c:	f043 030c 	orr.w	r3, r3, #12
20001530:	6393      	str	r3, [r2, #56]	; 0x38
20001532:	4a21      	ldr	r2, [pc, #132]	; (200015b8 <TimerConfig+0x238>)
20001534:	4b20      	ldr	r3, [pc, #128]	; (200015b8 <TimerConfig+0x238>)
20001536:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001538:	f043 0301 	orr.w	r3, r3, #1
2000153c:	6393      	str	r3, [r2, #56]	; 0x38
2000153e:	4a1e      	ldr	r2, [pc, #120]	; (200015b8 <TimerConfig+0x238>)
20001540:	4b1d      	ldr	r3, [pc, #116]	; (200015b8 <TimerConfig+0x238>)
20001542:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001544:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001548:	6393      	str	r3, [r2, #56]	; 0x38
2000154a:	4a1b      	ldr	r2, [pc, #108]	; (200015b8 <TimerConfig+0x238>)
2000154c:	4b1a      	ldr	r3, [pc, #104]	; (200015b8 <TimerConfig+0x238>)
2000154e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001550:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001554:	6393      	str	r3, [r2, #56]	; 0x38
20001556:	4a18      	ldr	r2, [pc, #96]	; (200015b8 <TimerConfig+0x238>)
20001558:	4b17      	ldr	r3, [pc, #92]	; (200015b8 <TimerConfig+0x238>)
2000155a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000155c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001560:	6393      	str	r3, [r2, #56]	; 0x38
20001562:	4a15      	ldr	r2, [pc, #84]	; (200015b8 <TimerConfig+0x238>)
20001564:	4b14      	ldr	r3, [pc, #80]	; (200015b8 <TimerConfig+0x238>)
20001566:	6e9b      	ldr	r3, [r3, #104]	; 0x68
20001568:	f043 0308 	orr.w	r3, r3, #8
2000156c:	6693      	str	r3, [r2, #104]	; 0x68
2000156e:	4a12      	ldr	r2, [pc, #72]	; (200015b8 <TimerConfig+0x238>)
20001570:	4b11      	ldr	r3, [pc, #68]	; (200015b8 <TimerConfig+0x238>)
20001572:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001574:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001578:	6413      	str	r3, [r2, #64]	; 0x40
2000157a:	4a0f      	ldr	r2, [pc, #60]	; (200015b8 <TimerConfig+0x238>)
2000157c:	4b0e      	ldr	r3, [pc, #56]	; (200015b8 <TimerConfig+0x238>)
2000157e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
20001580:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001584:	6453      	str	r3, [r2, #68]	; 0x44
20001586:	4a0c      	ldr	r2, [pc, #48]	; (200015b8 <TimerConfig+0x238>)
20001588:	4b0b      	ldr	r3, [pc, #44]	; (200015b8 <TimerConfig+0x238>)
2000158a:	6c9b      	ldr	r3, [r3, #72]	; 0x48
2000158c:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001590:	6493      	str	r3, [r2, #72]	; 0x48
20001592:	4a09      	ldr	r2, [pc, #36]	; (200015b8 <TimerConfig+0x238>)
20001594:	4b08      	ldr	r3, [pc, #32]	; (200015b8 <TimerConfig+0x238>)
20001596:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001598:	f043 0302 	orr.w	r3, r3, #2
2000159c:	6593      	str	r3, [r2, #88]	; 0x58
2000159e:	2010      	movs	r0, #16
200015a0:	f7ff fdc6 	bl	20001130 <NVIC_EnableIRQ>
200015a4:	4b04      	ldr	r3, [pc, #16]	; (200015b8 <TimerConfig+0x238>)
200015a6:	2201      	movs	r2, #1
200015a8:	60da      	str	r2, [r3, #12]
200015aa:	bf00      	nop
200015ac:	bd80      	pop	{r7, pc}
200015ae:	bf00      	nop
200015b0:	40020000 	.word	0x40020000
200015b4:	40070000 	.word	0x40070000
200015b8:	40080000 	.word	0x40080000

200015bc <set_ram_vt>:
200015bc:	b480      	push	{r7}
200015be:	b085      	sub	sp, #20
200015c0:	af00      	add	r7, sp, #0
200015c2:	2300      	movs	r3, #0
200015c4:	60fb      	str	r3, [r7, #12]
200015c6:	2300      	movs	r3, #0
200015c8:	607b      	str	r3, [r7, #4]
200015ca:	4b14      	ldr	r3, [pc, #80]	; (2000161c <set_ram_vt+0x60>)
200015cc:	60bb      	str	r3, [r7, #8]
200015ce:	2300      	movs	r3, #0
200015d0:	60fb      	str	r3, [r7, #12]
200015d2:	e00b      	b.n	200015ec <set_ram_vt+0x30>
200015d4:	68bb      	ldr	r3, [r7, #8]
200015d6:	1d1a      	adds	r2, r3, #4
200015d8:	60ba      	str	r2, [r7, #8]
200015da:	68fa      	ldr	r2, [r7, #12]
200015dc:	0092      	lsls	r2, r2, #2
200015de:	6879      	ldr	r1, [r7, #4]
200015e0:	440a      	add	r2, r1
200015e2:	6812      	ldr	r2, [r2, #0]
200015e4:	601a      	str	r2, [r3, #0]
200015e6:	68fb      	ldr	r3, [r7, #12]
200015e8:	3301      	adds	r3, #1
200015ea:	60fb      	str	r3, [r7, #12]
200015ec:	68fb      	ldr	r3, [r7, #12]
200015ee:	2b2f      	cmp	r3, #47	; 0x2f
200015f0:	d9f0      	bls.n	200015d4 <set_ram_vt+0x18>
200015f2:	4b0b      	ldr	r3, [pc, #44]	; (20001620 <set_ram_vt+0x64>)
200015f4:	4a09      	ldr	r2, [pc, #36]	; (2000161c <set_ram_vt+0x60>)
200015f6:	609a      	str	r2, [r3, #8]
200015f8:	4b08      	ldr	r3, [pc, #32]	; (2000161c <set_ram_vt+0x60>)
200015fa:	4a0a      	ldr	r2, [pc, #40]	; (20001624 <set_ram_vt+0x68>)
200015fc:	63da      	str	r2, [r3, #60]	; 0x3c
200015fe:	4b07      	ldr	r3, [pc, #28]	; (2000161c <set_ram_vt+0x60>)
20001600:	4a09      	ldr	r2, [pc, #36]	; (20001628 <set_ram_vt+0x6c>)
20001602:	659a      	str	r2, [r3, #88]	; 0x58
20001604:	4b05      	ldr	r3, [pc, #20]	; (2000161c <set_ram_vt+0x60>)
20001606:	4a09      	ldr	r2, [pc, #36]	; (2000162c <set_ram_vt+0x70>)
20001608:	679a      	str	r2, [r3, #120]	; 0x78
2000160a:	4b04      	ldr	r3, [pc, #16]	; (2000161c <set_ram_vt+0x60>)
2000160c:	4a08      	ldr	r2, [pc, #32]	; (20001630 <set_ram_vt+0x74>)
2000160e:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20001612:	bf00      	nop
20001614:	3714      	adds	r7, #20
20001616:	46bd      	mov	sp, r7
20001618:	bc80      	pop	{r7}
2000161a:	4770      	bx	lr
2000161c:	20003a00 	.word	0x20003a00
20001620:	e000ed00 	.word	0xe000ed00
20001624:	200016ed 	.word	0x200016ed
20001628:	20001709 	.word	0x20001709
2000162c:	2000046d 	.word	0x2000046d
20001630:	20000485 	.word	0x20000485

20001634 <uart_init>:
20001634:	b480      	push	{r7}
20001636:	af00      	add	r7, sp, #0
20001638:	4b22      	ldr	r3, [pc, #136]	; (200016c4 <uart_init+0x90>)
2000163a:	2200      	movs	r2, #0
2000163c:	601a      	str	r2, [r3, #0]
2000163e:	4a22      	ldr	r2, [pc, #136]	; (200016c8 <uart_init+0x94>)
20001640:	4b21      	ldr	r3, [pc, #132]	; (200016c8 <uart_init+0x94>)
20001642:	69db      	ldr	r3, [r3, #28]
20001644:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001648:	61d3      	str	r3, [r2, #28]
2000164a:	4a1f      	ldr	r2, [pc, #124]	; (200016c8 <uart_init+0x94>)
2000164c:	4b1e      	ldr	r3, [pc, #120]	; (200016c8 <uart_init+0x94>)
2000164e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001650:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001654:	6293      	str	r3, [r2, #40]	; 0x28
20001656:	4b1d      	ldr	r3, [pc, #116]	; (200016cc <uart_init+0x98>)
20001658:	2204      	movs	r2, #4
2000165a:	625a      	str	r2, [r3, #36]	; 0x24
2000165c:	4b1b      	ldr	r3, [pc, #108]	; (200016cc <uart_init+0x98>)
2000165e:	2200      	movs	r2, #0
20001660:	629a      	str	r2, [r3, #40]	; 0x28
20001662:	4a1a      	ldr	r2, [pc, #104]	; (200016cc <uart_init+0x98>)
20001664:	4b19      	ldr	r3, [pc, #100]	; (200016cc <uart_init+0x98>)
20001666:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001668:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
2000166c:	6353      	str	r3, [r2, #52]	; 0x34
2000166e:	4a17      	ldr	r2, [pc, #92]	; (200016cc <uart_init+0x98>)
20001670:	4b16      	ldr	r3, [pc, #88]	; (200016cc <uart_init+0x98>)
20001672:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001674:	f043 0312 	orr.w	r3, r3, #18
20001678:	6353      	str	r3, [r2, #52]	; 0x34
2000167a:	4a14      	ldr	r2, [pc, #80]	; (200016cc <uart_init+0x98>)
2000167c:	4b13      	ldr	r3, [pc, #76]	; (200016cc <uart_init+0x98>)
2000167e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001680:	f043 0310 	orr.w	r3, r3, #16
20001684:	62d3      	str	r3, [r2, #44]	; 0x2c
20001686:	4a11      	ldr	r2, [pc, #68]	; (200016cc <uart_init+0x98>)
20001688:	4b10      	ldr	r3, [pc, #64]	; (200016cc <uart_init+0x98>)
2000168a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
2000168c:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001690:	62d3      	str	r3, [r2, #44]	; 0x2c
20001692:	4a0e      	ldr	r2, [pc, #56]	; (200016cc <uart_init+0x98>)
20001694:	4b0d      	ldr	r3, [pc, #52]	; (200016cc <uart_init+0x98>)
20001696:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001698:	f443 7340 	orr.w	r3, r3, #768	; 0x300
2000169c:	f043 0301 	orr.w	r3, r3, #1
200016a0:	6313      	str	r3, [r2, #48]	; 0x30
200016a2:	4a0a      	ldr	r2, [pc, #40]	; (200016cc <uart_init+0x98>)
200016a4:	4b09      	ldr	r3, [pc, #36]	; (200016cc <uart_init+0x98>)
200016a6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200016a8:	f043 0310 	orr.w	r3, r3, #16
200016ac:	6393      	str	r3, [r2, #56]	; 0x38
200016ae:	4a07      	ldr	r2, [pc, #28]	; (200016cc <uart_init+0x98>)
200016b0:	4b06      	ldr	r3, [pc, #24]	; (200016cc <uart_init+0x98>)
200016b2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200016b4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
200016b8:	6393      	str	r3, [r2, #56]	; 0x38
200016ba:	bf00      	nop
200016bc:	46bd      	mov	sp, r7
200016be:	bc80      	pop	{r7}
200016c0:	4770      	bx	lr
200016c2:	bf00      	nop
200016c4:	20003ad0 	.word	0x20003ad0
200016c8:	40020000 	.word	0x40020000
200016cc:	40030000 	.word	0x40030000

200016d0 <system_init>:
200016d0:	b580      	push	{r7, lr}
200016d2:	af00      	add	r7, sp, #0
200016d4:	f7ff ff72 	bl	200015bc <set_ram_vt>
200016d8:	f7ff fe1c 	bl	20001314 <ClkConfig>
200016dc:	f7ff fd40 	bl	20001160 <PortConfig>
200016e0:	f7ff fe4e 	bl	20001380 <TimerConfig>
200016e4:	f7ff ffa6 	bl	20001634 <uart_init>
200016e8:	bf00      	nop
200016ea:	bd80      	pop	{r7, pc}

200016ec <SysTick_Handler>:
200016ec:	b480      	push	{r7}
200016ee:	af00      	add	r7, sp, #0
200016f0:	4b04      	ldr	r3, [pc, #16]	; (20001704 <SysTick_Handler+0x18>)
200016f2:	681b      	ldr	r3, [r3, #0]
200016f4:	3301      	adds	r3, #1
200016f6:	4a03      	ldr	r2, [pc, #12]	; (20001704 <SysTick_Handler+0x18>)
200016f8:	6013      	str	r3, [r2, #0]
200016fa:	bf00      	nop
200016fc:	46bd      	mov	sp, r7
200016fe:	bc80      	pop	{r7}
20001700:	4770      	bx	lr
20001702:	bf00      	nop
20001704:	20003900 	.word	0x20003900

20001708 <UART1_Handler>:
20001708:	b480      	push	{r7}
2000170a:	b083      	sub	sp, #12
2000170c:	af00      	add	r7, sp, #0
2000170e:	4b1d      	ldr	r3, [pc, #116]	; (20001784 <UART1_Handler+0x7c>)
20001710:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001712:	f003 0310 	and.w	r3, r3, #16
20001716:	2b00      	cmp	r3, #0
20001718:	d01f      	beq.n	2000175a <UART1_Handler+0x52>
2000171a:	e002      	b.n	20001722 <UART1_Handler+0x1a>
2000171c:	4b19      	ldr	r3, [pc, #100]	; (20001784 <UART1_Handler+0x7c>)
2000171e:	681b      	ldr	r3, [r3, #0]
20001720:	71fb      	strb	r3, [r7, #7]
20001722:	4b18      	ldr	r3, [pc, #96]	; (20001784 <UART1_Handler+0x7c>)
20001724:	699b      	ldr	r3, [r3, #24]
20001726:	f003 0310 	and.w	r3, r3, #16
2000172a:	2b00      	cmp	r3, #0
2000172c:	d0f6      	beq.n	2000171c <UART1_Handler+0x14>
2000172e:	4b16      	ldr	r3, [pc, #88]	; (20001788 <UART1_Handler+0x80>)
20001730:	681b      	ldr	r3, [r3, #0]
20001732:	80bb      	strh	r3, [r7, #4]
20001734:	4b14      	ldr	r3, [pc, #80]	; (20001788 <UART1_Handler+0x80>)
20001736:	689b      	ldr	r3, [r3, #8]
20001738:	085b      	lsrs	r3, r3, #1
2000173a:	807b      	strh	r3, [r7, #2]
2000173c:	88ba      	ldrh	r2, [r7, #4]
2000173e:	887b      	ldrh	r3, [r7, #2]
20001740:	429a      	cmp	r2, r3
20001742:	d205      	bcs.n	20001750 <UART1_Handler+0x48>
20001744:	4a10      	ldr	r2, [pc, #64]	; (20001788 <UART1_Handler+0x80>)
20001746:	4b10      	ldr	r3, [pc, #64]	; (20001788 <UART1_Handler+0x80>)
20001748:	681b      	ldr	r3, [r3, #0]
2000174a:	3b01      	subs	r3, #1
2000174c:	6013      	str	r3, [r2, #0]
2000174e:	e004      	b.n	2000175a <UART1_Handler+0x52>
20001750:	4a0d      	ldr	r2, [pc, #52]	; (20001788 <UART1_Handler+0x80>)
20001752:	4b0d      	ldr	r3, [pc, #52]	; (20001788 <UART1_Handler+0x80>)
20001754:	681b      	ldr	r3, [r3, #0]
20001756:	3301      	adds	r3, #1
20001758:	6013      	str	r3, [r2, #0]
2000175a:	4b0a      	ldr	r3, [pc, #40]	; (20001784 <UART1_Handler+0x7c>)
2000175c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000175e:	f003 0340 	and.w	r3, r3, #64	; 0x40
20001762:	2b00      	cmp	r3, #0
20001764:	d009      	beq.n	2000177a <UART1_Handler+0x72>
20001766:	e002      	b.n	2000176e <UART1_Handler+0x66>
20001768:	4b06      	ldr	r3, [pc, #24]	; (20001784 <UART1_Handler+0x7c>)
2000176a:	681b      	ldr	r3, [r3, #0]
2000176c:	707b      	strb	r3, [r7, #1]
2000176e:	4b05      	ldr	r3, [pc, #20]	; (20001784 <UART1_Handler+0x7c>)
20001770:	699b      	ldr	r3, [r3, #24]
20001772:	f003 0310 	and.w	r3, r3, #16
20001776:	2b00      	cmp	r3, #0
20001778:	d0f6      	beq.n	20001768 <UART1_Handler+0x60>
2000177a:	bf00      	nop
2000177c:	370c      	adds	r7, #12
2000177e:	46bd      	mov	sp, r7
20001780:	bc80      	pop	{r7}
20001782:	4770      	bx	lr
20001784:	40030000 	.word	0x40030000
20001788:	40070000 	.word	0x40070000
