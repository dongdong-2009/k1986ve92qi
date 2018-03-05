
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
20000032:	f001 fb3b 	bl	200016ac <system_init>
20000036:	f000 f991 	bl	2000035c <ssi_init>
2000003a:	f000 fa03 	bl	20000444 <dac_init>
2000003e:	f001 f825 	bl	2000108c <adc_dma_init>
20000042:	f107 0348 	add.w	r3, r7, #72	; 0x48
20000046:	22c8      	movs	r2, #200	; 0xc8
20000048:	2150      	movs	r1, #80	; 0x50
2000004a:	4618      	mov	r0, r3
2000004c:	f000 fb60 	bl	20000710 <reg_init>
20000050:	f107 0338 	add.w	r3, r7, #56	; 0x38
20000054:	22c8      	movs	r2, #200	; 0xc8
20000056:	2150      	movs	r1, #80	; 0x50
20000058:	4618      	mov	r0, r3
2000005a:	f000 fb59 	bl	20000710 <reg_init>
2000005e:	f107 0328 	add.w	r3, r7, #40	; 0x28
20000062:	f241 3288 	movw	r2, #5000	; 0x1388
20000066:	2100      	movs	r1, #0
20000068:	4618      	mov	r0, r3
2000006a:	f000 fb51 	bl	20000710 <reg_init>
2000006e:	f107 0318 	add.w	r3, r7, #24
20000072:	f241 7270 	movw	r2, #6000	; 0x1770
20000076:	2100      	movs	r1, #0
20000078:	4618      	mov	r0, r3
2000007a:	f000 fb49 	bl	20000710 <reg_init>
2000007e:	2300      	movs	r3, #0
20000080:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
20000084:	2300      	movs	r3, #0
20000086:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
2000008a:	4b96      	ldr	r3, [pc, #600]	; (200002e4 <main+0x2e4>)
2000008c:	2200      	movs	r2, #0
2000008e:	601a      	str	r2, [r3, #0]
20000090:	2300      	movs	r3, #0
20000092:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
20000096:	e028      	b.n	200000ea <main+0xea>
20000098:	f001 f814 	bl	200010c4 <adc_dma_wait>
2000009c:	4b92      	ldr	r3, [pc, #584]	; (200002e8 <main+0x2e8>)
2000009e:	685b      	ldr	r3, [r3, #4]
200000a0:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000a4:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000a8:	4413      	add	r3, r2
200000aa:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
200000ae:	4b8e      	ldr	r3, [pc, #568]	; (200002e8 <main+0x2e8>)
200000b0:	681b      	ldr	r3, [r3, #0]
200000b2:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000b6:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
200000ba:	4413      	add	r3, r2
200000bc:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
200000c0:	4b8a      	ldr	r3, [pc, #552]	; (200002ec <main+0x2ec>)
200000c2:	689b      	ldr	r3, [r3, #8]
200000c4:	4618      	mov	r0, r3
200000c6:	f000 f993 	bl	200003f0 <enc_crc>
200000ca:	4602      	mov	r2, r0
200000cc:	4b85      	ldr	r3, [pc, #532]	; (200002e4 <main+0x2e4>)
200000ce:	681b      	ldr	r3, [r3, #0]
200000d0:	4413      	add	r3, r2
200000d2:	461a      	mov	r2, r3
200000d4:	4b83      	ldr	r3, [pc, #524]	; (200002e4 <main+0x2e4>)
200000d6:	601a      	str	r2, [r3, #0]
200000d8:	2100      	movs	r1, #0
200000da:	2000      	movs	r0, #0
200000dc:	f000 fefe 	bl	20000edc <mfilter>
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
20000108:	4b76      	ldr	r3, [pc, #472]	; (200002e4 <main+0x2e4>)
2000010a:	681b      	ldr	r3, [r3, #0]
2000010c:	129b      	asrs	r3, r3, #10
2000010e:	4a75      	ldr	r2, [pc, #468]	; (200002e4 <main+0x2e4>)
20000110:	6013      	str	r3, [r2, #0]
20000112:	4b77      	ldr	r3, [pc, #476]	; (200002f0 <main+0x2f0>)
20000114:	2200      	movs	r2, #0
20000116:	601a      	str	r2, [r3, #0]
20000118:	4b72      	ldr	r3, [pc, #456]	; (200002e4 <main+0x2e4>)
2000011a:	681b      	ldr	r3, [r3, #0]
2000011c:	4a75      	ldr	r2, [pc, #468]	; (200002f4 <main+0x2f4>)
2000011e:	6013      	str	r3, [r2, #0]
20000120:	4b70      	ldr	r3, [pc, #448]	; (200002e4 <main+0x2e4>)
20000122:	681b      	ldr	r3, [r3, #0]
20000124:	4618      	mov	r0, r3
20000126:	f000 feb1 	bl	20000e8c <encoder_init>
2000012a:	4b73      	ldr	r3, [pc, #460]	; (200002f8 <main+0x2f8>)
2000012c:	2200      	movs	r2, #0
2000012e:	601a      	str	r2, [r3, #0]
20000130:	4a72      	ldr	r2, [pc, #456]	; (200002fc <main+0x2fc>)
20000132:	4b72      	ldr	r3, [pc, #456]	; (200002fc <main+0x2fc>)
20000134:	681b      	ldr	r3, [r3, #0]
20000136:	f043 0301 	orr.w	r3, r3, #1
2000013a:	6013      	str	r3, [r2, #0]
2000013c:	f000 ffc2 	bl	200010c4 <adc_dma_wait>
20000140:	4a6e      	ldr	r2, [pc, #440]	; (200002fc <main+0x2fc>)
20000142:	4b6e      	ldr	r3, [pc, #440]	; (200002fc <main+0x2fc>)
20000144:	681b      	ldr	r3, [r3, #0]
20000146:	f023 0301 	bic.w	r3, r3, #1
2000014a:	6013      	str	r3, [r2, #0]
2000014c:	4b66      	ldr	r3, [pc, #408]	; (200002e8 <main+0x2e8>)
2000014e:	685b      	ldr	r3, [r3, #4]
20000150:	f3c3 020b 	ubfx	r2, r3, #0, #12
20000154:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
20000158:	1ad3      	subs	r3, r2, r3
2000015a:	677b      	str	r3, [r7, #116]	; 0x74
2000015c:	4b62      	ldr	r3, [pc, #392]	; (200002e8 <main+0x2e8>)
2000015e:	681b      	ldr	r3, [r3, #0]
20000160:	f3c3 020b 	ubfx	r2, r3, #0, #12
20000164:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
20000168:	1ad3      	subs	r3, r2, r3
2000016a:	673b      	str	r3, [r7, #112]	; 0x70
2000016c:	6f7a      	ldr	r2, [r7, #116]	; 0x74
2000016e:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20000170:	4413      	add	r3, r2
20000172:	66fb      	str	r3, [r7, #108]	; 0x6c
20000174:	4b5d      	ldr	r3, [pc, #372]	; (200002ec <main+0x2ec>)
20000176:	689b      	ldr	r3, [r3, #8]
20000178:	4618      	mov	r0, r3
2000017a:	f000 f939 	bl	200003f0 <enc_crc>
2000017e:	66b8      	str	r0, [r7, #104]	; 0x68
20000180:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20000182:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000186:	67bb      	str	r3, [r7, #120]	; 0x78
20000188:	4a5d      	ldr	r2, [pc, #372]	; (20000300 <main+0x300>)
2000018a:	6ebb      	ldr	r3, [r7, #104]	; 0x68
2000018c:	6013      	str	r3, [r2, #0]
2000018e:	4b5d      	ldr	r3, [pc, #372]	; (20000304 <main+0x304>)
20000190:	681b      	ldr	r3, [r3, #0]
20000192:	3301      	adds	r3, #1
20000194:	4a5b      	ldr	r2, [pc, #364]	; (20000304 <main+0x304>)
20000196:	6013      	str	r3, [r2, #0]
20000198:	4b5a      	ldr	r3, [pc, #360]	; (20000304 <main+0x304>)
2000019a:	681b      	ldr	r3, [r3, #0]
2000019c:	f003 0307 	and.w	r3, r3, #7
200001a0:	2b00      	cmp	r3, #0
200001a2:	d13c      	bne.n	2000021e <main+0x21e>
200001a4:	f000 fa5a 	bl	2000065c <update_refposition>
200001a8:	4602      	mov	r2, r0
200001aa:	4b4e      	ldr	r3, [pc, #312]	; (200002e4 <main+0x2e4>)
200001ac:	681b      	ldr	r3, [r3, #0]
200001ae:	4413      	add	r3, r2
200001b0:	4a4f      	ldr	r2, [pc, #316]	; (200002f0 <main+0x2f0>)
200001b2:	6013      	str	r3, [r2, #0]
200001b4:	6ebb      	ldr	r3, [r7, #104]	; 0x68
200001b6:	494f      	ldr	r1, [pc, #316]	; (200002f4 <main+0x2f4>)
200001b8:	4618      	mov	r0, r3
200001ba:	f000 fe6d 	bl	20000e98 <get_speed>
200001be:	6678      	str	r0, [r7, #100]	; 0x64
200001c0:	4b4b      	ldr	r3, [pc, #300]	; (200002f0 <main+0x2f0>)
200001c2:	681a      	ldr	r2, [r3, #0]
200001c4:	4b4b      	ldr	r3, [pc, #300]	; (200002f4 <main+0x2f4>)
200001c6:	681b      	ldr	r3, [r3, #0]
200001c8:	1ad1      	subs	r1, r2, r3
200001ca:	f107 0318 	add.w	r3, r7, #24
200001ce:	2200      	movs	r2, #0
200001d0:	4618      	mov	r0, r3
200001d2:	f000 faa3 	bl	2000071c <reg_update>
200001d6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
200001d8:	131b      	asrs	r3, r3, #12
200001da:	67fb      	str	r3, [r7, #124]	; 0x7c
200001dc:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
200001e0:	67fb      	str	r3, [r7, #124]	; 0x7c
200001e2:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
200001e4:	6e7b      	ldr	r3, [r7, #100]	; 0x64
200001e6:	1ad1      	subs	r1, r2, r3
200001e8:	f107 0328 	add.w	r3, r7, #40	; 0x28
200001ec:	2200      	movs	r2, #0
200001ee:	4618      	mov	r0, r3
200001f0:	f000 fa94 	bl	2000071c <reg_update>
200001f4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
200001f6:	131b      	asrs	r3, r3, #12
200001f8:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
200001fc:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
20000200:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
20000204:	dd03      	ble.n	2000020e <main+0x20e>
20000206:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
2000020a:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
2000020e:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
20000212:	f513 7f7a 	cmn.w	r3, #1000	; 0x3e8
20000216:	da02      	bge.n	2000021e <main+0x21e>
20000218:	4b3b      	ldr	r3, [pc, #236]	; (20000308 <main+0x308>)
2000021a:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
2000021e:	f000 f997 	bl	20000550 <update_telemetry>
20000222:	6fbb      	ldr	r3, [r7, #120]	; 0x78
20000224:	f503 732f 	add.w	r3, r3, #700	; 0x2bc
20000228:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000022c:	67bb      	str	r3, [r7, #120]	; 0x78
2000022e:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20000230:	607b      	str	r3, [r7, #4]
20000232:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20000234:	60bb      	str	r3, [r7, #8]
20000236:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20000238:	60fb      	str	r3, [r7, #12]
2000023a:	6fba      	ldr	r2, [r7, #120]	; 0x78
2000023c:	f107 0110 	add.w	r1, r7, #16
20000240:	1d3b      	adds	r3, r7, #4
20000242:	4618      	mov	r0, r3
20000244:	f000 fa90 	bl	20000768 <abc_to_dq>
20000248:	693b      	ldr	r3, [r7, #16]
2000024a:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
2000024e:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
20000252:	697b      	ldr	r3, [r7, #20]
20000254:	2b00      	cmp	r3, #0
20000256:	bfb8      	it	lt
20000258:	425b      	neglt	r3, r3
2000025a:	4413      	add	r3, r2
2000025c:	663b      	str	r3, [r7, #96]	; 0x60
2000025e:	4b26      	ldr	r3, [pc, #152]	; (200002f8 <main+0x2f8>)
20000260:	681b      	ldr	r3, [r3, #0]
20000262:	4619      	mov	r1, r3
20000264:	6e38      	ldr	r0, [r7, #96]	; 0x60
20000266:	f000 fe39 	bl	20000edc <mfilter>
2000026a:	4602      	mov	r2, r0
2000026c:	4b22      	ldr	r3, [pc, #136]	; (200002f8 <main+0x2f8>)
2000026e:	601a      	str	r2, [r3, #0]
20000270:	693b      	ldr	r3, [r7, #16]
20000272:	425b      	negs	r3, r3
20000274:	65fb      	str	r3, [r7, #92]	; 0x5c
20000276:	697b      	ldr	r3, [r7, #20]
20000278:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
2000027c:	1ad3      	subs	r3, r2, r3
2000027e:	65bb      	str	r3, [r7, #88]	; 0x58
20000280:	4b1d      	ldr	r3, [pc, #116]	; (200002f8 <main+0x2f8>)
20000282:	681b      	ldr	r3, [r3, #0]
20000284:	129b      	asrs	r3, r3, #10
20000286:	4618      	mov	r0, r3
20000288:	f000 f840 	bl	2000030c <debug_signal>
2000028c:	f107 0348 	add.w	r3, r7, #72	; 0x48
20000290:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
20000294:	6df9      	ldr	r1, [r7, #92]	; 0x5c
20000296:	4618      	mov	r0, r3
20000298:	f000 fa40 	bl	2000071c <reg_update>
2000029c:	f107 0338 	add.w	r3, r7, #56	; 0x38
200002a0:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
200002a4:	6db9      	ldr	r1, [r7, #88]	; 0x58
200002a6:	4618      	mov	r0, r3
200002a8:	f000 fa38 	bl	2000071c <reg_update>
200002ac:	6d7b      	ldr	r3, [r7, #84]	; 0x54
200002ae:	109b      	asrs	r3, r3, #2
200002b0:	613b      	str	r3, [r7, #16]
200002b2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
200002b4:	109b      	asrs	r3, r3, #2
200002b6:	617b      	str	r3, [r7, #20]
200002b8:	6fba      	ldr	r2, [r7, #120]	; 0x78
200002ba:	f107 0110 	add.w	r1, r7, #16
200002be:	1d3b      	adds	r3, r7, #4
200002c0:	4618      	mov	r0, r3
200002c2:	f000 fc69 	bl	20000b98 <svpwm>
200002c6:	f8c7 0088 	str.w	r0, [r7, #136]	; 0x88
200002ca:	687b      	ldr	r3, [r7, #4]
200002cc:	4618      	mov	r0, r3
200002ce:	f000 f90f 	bl	200004f0 <pwm_seta>
200002d2:	68bb      	ldr	r3, [r7, #8]
200002d4:	4618      	mov	r0, r3
200002d6:	f000 f91b 	bl	20000510 <pwm_setb>
200002da:	68fb      	ldr	r3, [r7, #12]
200002dc:	4618      	mov	r0, r3
200002de:	f000 f927 	bl	20000530 <pwm_setc>
200002e2:	e725      	b.n	20000130 <main+0x130>
200002e4:	2000280c 	.word	0x2000280c
200002e8:	20003e00 	.word	0x20003e00
200002ec:	40040000 	.word	0x40040000
200002f0:	20002800 	.word	0x20002800
200002f4:	20002824 	.word	0x20002824
200002f8:	2000282c 	.word	0x2000282c
200002fc:	400a8000 	.word	0x400a8000
20000300:	20002828 	.word	0x20002828
20000304:	20002814 	.word	0x20002814
20000308:	fffffc18 	.word	0xfffffc18

2000030c <debug_signal>:
2000030c:	b480      	push	{r7}
2000030e:	b083      	sub	sp, #12
20000310:	af00      	add	r7, sp, #0
20000312:	6078      	str	r0, [r7, #4]
20000314:	4a04      	ldr	r2, [pc, #16]	; (20000328 <debug_signal+0x1c>)
20000316:	687b      	ldr	r3, [r7, #4]
20000318:	f503 6300 	add.w	r3, r3, #2048	; 0x800
2000031c:	6093      	str	r3, [r2, #8]
2000031e:	bf00      	nop
20000320:	370c      	adds	r7, #12
20000322:	46bd      	mov	sp, r7
20000324:	bc80      	pop	{r7}
20000326:	4770      	bx	lr
20000328:	40090000 	.word	0x40090000

2000032c <sleep>:
2000032c:	b480      	push	{r7}
2000032e:	b085      	sub	sp, #20
20000330:	af00      	add	r7, sp, #0
20000332:	6078      	str	r0, [r7, #4]
20000334:	4b08      	ldr	r3, [pc, #32]	; (20000358 <sleep+0x2c>)
20000336:	681a      	ldr	r2, [r3, #0]
20000338:	687b      	ldr	r3, [r7, #4]
2000033a:	4413      	add	r3, r2
2000033c:	60fb      	str	r3, [r7, #12]
2000033e:	bf00      	nop
20000340:	4b05      	ldr	r3, [pc, #20]	; (20000358 <sleep+0x2c>)
20000342:	681a      	ldr	r2, [r3, #0]
20000344:	68fb      	ldr	r3, [r7, #12]
20000346:	429a      	cmp	r2, r3
20000348:	d3fa      	bcc.n	20000340 <sleep+0x14>
2000034a:	bf00      	nop
2000034c:	4618      	mov	r0, r3
2000034e:	3714      	adds	r7, #20
20000350:	46bd      	mov	sp, r7
20000352:	bc80      	pop	{r7}
20000354:	4770      	bx	lr
20000356:	bf00      	nop
20000358:	20003900 	.word	0x20003900

2000035c <ssi_init>:
2000035c:	b480      	push	{r7}
2000035e:	af00      	add	r7, sp, #0
20000360:	4a0c      	ldr	r2, [pc, #48]	; (20000394 <ssi_init+0x38>)
20000362:	4b0c      	ldr	r3, [pc, #48]	; (20000394 <ssi_init+0x38>)
20000364:	69db      	ldr	r3, [r3, #28]
20000366:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000036a:	61d3      	str	r3, [r2, #28]
2000036c:	4b09      	ldr	r3, [pc, #36]	; (20000394 <ssi_init+0x38>)
2000036e:	4a0a      	ldr	r2, [pc, #40]	; (20000398 <ssi_init+0x3c>)
20000370:	62da      	str	r2, [r3, #44]	; 0x2c
20000372:	4b0a      	ldr	r3, [pc, #40]	; (2000039c <ssi_init+0x40>)
20000374:	2200      	movs	r2, #0
20000376:	605a      	str	r2, [r3, #4]
20000378:	4b08      	ldr	r3, [pc, #32]	; (2000039c <ssi_init+0x40>)
2000037a:	220a      	movs	r2, #10
2000037c:	611a      	str	r2, [r3, #16]
2000037e:	4b07      	ldr	r3, [pc, #28]	; (2000039c <ssi_init+0x40>)
20000380:	f240 221f 	movw	r2, #543	; 0x21f
20000384:	601a      	str	r2, [r3, #0]
20000386:	4b05      	ldr	r3, [pc, #20]	; (2000039c <ssi_init+0x40>)
20000388:	2202      	movs	r2, #2
2000038a:	605a      	str	r2, [r3, #4]
2000038c:	bf00      	nop
2000038e:	46bd      	mov	sp, r7
20000390:	bc80      	pop	{r7}
20000392:	4770      	bx	lr
20000394:	40020000 	.word	0x40020000
20000398:	0100000a 	.word	0x0100000a
2000039c:	40040000 	.word	0x40040000

200003a0 <b2g>:
200003a0:	b480      	push	{r7}
200003a2:	b083      	sub	sp, #12
200003a4:	af00      	add	r7, sp, #0
200003a6:	6078      	str	r0, [r7, #4]
200003a8:	687b      	ldr	r3, [r7, #4]
200003aa:	085a      	lsrs	r2, r3, #1
200003ac:	687b      	ldr	r3, [r7, #4]
200003ae:	4053      	eors	r3, r2
200003b0:	4618      	mov	r0, r3
200003b2:	370c      	adds	r7, #12
200003b4:	46bd      	mov	sp, r7
200003b6:	bc80      	pop	{r7}
200003b8:	4770      	bx	lr
200003ba:	bf00      	nop

200003bc <g2b>:
200003bc:	b480      	push	{r7}
200003be:	b085      	sub	sp, #20
200003c0:	af00      	add	r7, sp, #0
200003c2:	6078      	str	r0, [r7, #4]
200003c4:	2300      	movs	r3, #0
200003c6:	60fb      	str	r3, [r7, #12]
200003c8:	2300      	movs	r3, #0
200003ca:	60fb      	str	r3, [r7, #12]
200003cc:	e006      	b.n	200003dc <g2b+0x20>
200003ce:	68fa      	ldr	r2, [r7, #12]
200003d0:	687b      	ldr	r3, [r7, #4]
200003d2:	4053      	eors	r3, r2
200003d4:	60fb      	str	r3, [r7, #12]
200003d6:	687b      	ldr	r3, [r7, #4]
200003d8:	085b      	lsrs	r3, r3, #1
200003da:	607b      	str	r3, [r7, #4]
200003dc:	687b      	ldr	r3, [r7, #4]
200003de:	2b00      	cmp	r3, #0
200003e0:	d1f5      	bne.n	200003ce <g2b+0x12>
200003e2:	68fb      	ldr	r3, [r7, #12]
200003e4:	4618      	mov	r0, r3
200003e6:	3714      	adds	r7, #20
200003e8:	46bd      	mov	sp, r7
200003ea:	bc80      	pop	{r7}
200003ec:	4770      	bx	lr
200003ee:	bf00      	nop

200003f0 <enc_crc>:
200003f0:	b480      	push	{r7}
200003f2:	b085      	sub	sp, #20
200003f4:	af00      	add	r7, sp, #0
200003f6:	6078      	str	r0, [r7, #4]
200003f8:	687b      	ldr	r3, [r7, #4]
200003fa:	60bb      	str	r3, [r7, #8]
200003fc:	2300      	movs	r3, #0
200003fe:	60fb      	str	r3, [r7, #12]
20000400:	e006      	b.n	20000410 <enc_crc+0x20>
20000402:	68fa      	ldr	r2, [r7, #12]
20000404:	68bb      	ldr	r3, [r7, #8]
20000406:	4053      	eors	r3, r2
20000408:	60fb      	str	r3, [r7, #12]
2000040a:	68bb      	ldr	r3, [r7, #8]
2000040c:	085b      	lsrs	r3, r3, #1
2000040e:	60bb      	str	r3, [r7, #8]
20000410:	68bb      	ldr	r3, [r7, #8]
20000412:	2b00      	cmp	r3, #0
20000414:	d1f5      	bne.n	20000402 <enc_crc+0x12>
20000416:	68fb      	ldr	r3, [r7, #12]
20000418:	f003 0301 	and.w	r3, r3, #1
2000041c:	2b00      	cmp	r3, #0
2000041e:	d107      	bne.n	20000430 <enc_crc+0x40>
20000420:	687b      	ldr	r3, [r7, #4]
20000422:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000426:	4a06      	ldr	r2, [pc, #24]	; (20000440 <enc_crc+0x50>)
20000428:	6013      	str	r3, [r2, #0]
2000042a:	4b05      	ldr	r3, [pc, #20]	; (20000440 <enc_crc+0x50>)
2000042c:	681b      	ldr	r3, [r3, #0]
2000042e:	2b00      	cmp	r3, #0
20000430:	4b03      	ldr	r3, [pc, #12]	; (20000440 <enc_crc+0x50>)
20000432:	681b      	ldr	r3, [r3, #0]
20000434:	4618      	mov	r0, r3
20000436:	3714      	adds	r7, #20
20000438:	46bd      	mov	sp, r7
2000043a:	bc80      	pop	{r7}
2000043c:	4770      	bx	lr
2000043e:	bf00      	nop
20000440:	20002838 	.word	0x20002838

20000444 <dac_init>:
20000444:	b480      	push	{r7}
20000446:	af00      	add	r7, sp, #0
20000448:	4a07      	ldr	r2, [pc, #28]	; (20000468 <dac_init+0x24>)
2000044a:	4b07      	ldr	r3, [pc, #28]	; (20000468 <dac_init+0x24>)
2000044c:	69db      	ldr	r3, [r3, #28]
2000044e:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
20000452:	61d3      	str	r3, [r2, #28]
20000454:	4a05      	ldr	r2, [pc, #20]	; (2000046c <dac_init+0x28>)
20000456:	4b05      	ldr	r3, [pc, #20]	; (2000046c <dac_init+0x28>)
20000458:	681b      	ldr	r3, [r3, #0]
2000045a:	f043 0308 	orr.w	r3, r3, #8
2000045e:	6013      	str	r3, [r2, #0]
20000460:	bf00      	nop
20000462:	46bd      	mov	sp, r7
20000464:	bc80      	pop	{r7}
20000466:	4770      	bx	lr
20000468:	40020000 	.word	0x40020000
2000046c:	40090000 	.word	0x40090000

20000470 <encoder_start>:
20000470:	b480      	push	{r7}
20000472:	af00      	add	r7, sp, #0
20000474:	4b03      	ldr	r3, [pc, #12]	; (20000484 <encoder_start+0x14>)
20000476:	f240 5255 	movw	r2, #1365	; 0x555
2000047a:	609a      	str	r2, [r3, #8]
2000047c:	bf00      	nop
2000047e:	46bd      	mov	sp, r7
20000480:	bc80      	pop	{r7}
20000482:	4770      	bx	lr
20000484:	40040000 	.word	0x40040000

20000488 <TIMER1_Handler>:
20000488:	b480      	push	{r7}
2000048a:	af00      	add	r7, sp, #0
2000048c:	4b03      	ldr	r3, [pc, #12]	; (2000049c <TIMER1_Handler+0x14>)
2000048e:	2200      	movs	r2, #0
20000490:	655a      	str	r2, [r3, #84]	; 0x54
20000492:	bf00      	nop
20000494:	46bd      	mov	sp, r7
20000496:	bc80      	pop	{r7}
20000498:	4770      	bx	lr
2000049a:	bf00      	nop
2000049c:	40070000 	.word	0x40070000

200004a0 <TIMER3_Handler>:
200004a0:	b580      	push	{r7, lr}
200004a2:	af00      	add	r7, sp, #0
200004a4:	4b04      	ldr	r3, [pc, #16]	; (200004b8 <TIMER3_Handler+0x18>)
200004a6:	2200      	movs	r2, #0
200004a8:	655a      	str	r2, [r3, #84]	; 0x54
200004aa:	f7ff ffe1 	bl	20000470 <encoder_start>
200004ae:	f000 fdf5 	bl	2000109c <adc_dma_start>
200004b2:	bf00      	nop
200004b4:	bd80      	pop	{r7, pc}
200004b6:	bf00      	nop
200004b8:	40080000 	.word	0x40080000

200004bc <get_phase>:
200004bc:	b580      	push	{r7, lr}
200004be:	af00      	add	r7, sp, #0
200004c0:	4b0a      	ldr	r3, [pc, #40]	; (200004ec <get_phase+0x30>)
200004c2:	f240 5255 	movw	r2, #1365	; 0x555
200004c6:	609a      	str	r2, [r3, #8]
200004c8:	bf00      	nop
200004ca:	4b08      	ldr	r3, [pc, #32]	; (200004ec <get_phase+0x30>)
200004cc:	68db      	ldr	r3, [r3, #12]
200004ce:	f003 0304 	and.w	r3, r3, #4
200004d2:	2b00      	cmp	r3, #0
200004d4:	d0f9      	beq.n	200004ca <get_phase+0xe>
200004d6:	4b05      	ldr	r3, [pc, #20]	; (200004ec <get_phase+0x30>)
200004d8:	689b      	ldr	r3, [r3, #8]
200004da:	f3c3 030b 	ubfx	r3, r3, #0, #12
200004de:	4618      	mov	r0, r3
200004e0:	f7ff ff6c 	bl	200003bc <g2b>
200004e4:	4603      	mov	r3, r0
200004e6:	4618      	mov	r0, r3
200004e8:	bd80      	pop	{r7, pc}
200004ea:	bf00      	nop
200004ec:	40040000 	.word	0x40040000

200004f0 <pwm_seta>:
200004f0:	b480      	push	{r7}
200004f2:	b083      	sub	sp, #12
200004f4:	af00      	add	r7, sp, #0
200004f6:	6078      	str	r0, [r7, #4]
200004f8:	4a04      	ldr	r2, [pc, #16]	; (2000050c <pwm_seta+0x1c>)
200004fa:	687b      	ldr	r3, [r7, #4]
200004fc:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000500:	6113      	str	r3, [r2, #16]
20000502:	bf00      	nop
20000504:	370c      	adds	r7, #12
20000506:	46bd      	mov	sp, r7
20000508:	bc80      	pop	{r7}
2000050a:	4770      	bx	lr
2000050c:	40080000 	.word	0x40080000

20000510 <pwm_setb>:
20000510:	b480      	push	{r7}
20000512:	b083      	sub	sp, #12
20000514:	af00      	add	r7, sp, #0
20000516:	6078      	str	r0, [r7, #4]
20000518:	4a04      	ldr	r2, [pc, #16]	; (2000052c <pwm_setb+0x1c>)
2000051a:	687b      	ldr	r3, [r7, #4]
2000051c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000520:	6153      	str	r3, [r2, #20]
20000522:	bf00      	nop
20000524:	370c      	adds	r7, #12
20000526:	46bd      	mov	sp, r7
20000528:	bc80      	pop	{r7}
2000052a:	4770      	bx	lr
2000052c:	40080000 	.word	0x40080000

20000530 <pwm_setc>:
20000530:	b480      	push	{r7}
20000532:	b083      	sub	sp, #12
20000534:	af00      	add	r7, sp, #0
20000536:	6078      	str	r0, [r7, #4]
20000538:	4a04      	ldr	r2, [pc, #16]	; (2000054c <pwm_setc+0x1c>)
2000053a:	687b      	ldr	r3, [r7, #4]
2000053c:	f503 7300 	add.w	r3, r3, #512	; 0x200
20000540:	6193      	str	r3, [r2, #24]
20000542:	bf00      	nop
20000544:	370c      	adds	r7, #12
20000546:	46bd      	mov	sp, r7
20000548:	bc80      	pop	{r7}
2000054a:	4770      	bx	lr
2000054c:	40080000 	.word	0x40080000

20000550 <update_telemetry>:
20000550:	b480      	push	{r7}
20000552:	b083      	sub	sp, #12
20000554:	af00      	add	r7, sp, #0
20000556:	4b3a      	ldr	r3, [pc, #232]	; (20000640 <update_telemetry+0xf0>)
20000558:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2000055a:	f003 0302 	and.w	r3, r3, #2
2000055e:	2b00      	cmp	r3, #0
20000560:	d068      	beq.n	20000634 <update_telemetry+0xe4>
20000562:	4b37      	ldr	r3, [pc, #220]	; (20000640 <update_telemetry+0xf0>)
20000564:	2200      	movs	r2, #0
20000566:	655a      	str	r2, [r3, #84]	; 0x54
20000568:	4b35      	ldr	r3, [pc, #212]	; (20000640 <update_telemetry+0xf0>)
2000056a:	695b      	ldr	r3, [r3, #20]
2000056c:	b29b      	uxth	r3, r3
2000056e:	f5a3 7396 	sub.w	r3, r3, #300	; 0x12c
20000572:	80fb      	strh	r3, [r7, #6]
20000574:	88fb      	ldrh	r3, [r7, #6]
20000576:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
2000057a:	d205      	bcs.n	20000588 <update_telemetry+0x38>
2000057c:	4a30      	ldr	r2, [pc, #192]	; (20000640 <update_telemetry+0xf0>)
2000057e:	4b30      	ldr	r3, [pc, #192]	; (20000640 <update_telemetry+0xf0>)
20000580:	681b      	ldr	r3, [r3, #0]
20000582:	3301      	adds	r3, #1
20000584:	6013      	str	r3, [r2, #0]
20000586:	e004      	b.n	20000592 <update_telemetry+0x42>
20000588:	4a2d      	ldr	r2, [pc, #180]	; (20000640 <update_telemetry+0xf0>)
2000058a:	4b2d      	ldr	r3, [pc, #180]	; (20000640 <update_telemetry+0xf0>)
2000058c:	681b      	ldr	r3, [r3, #0]
2000058e:	3b01      	subs	r3, #1
20000590:	6013      	str	r3, [r2, #0]
20000592:	4b2c      	ldr	r3, [pc, #176]	; (20000644 <update_telemetry+0xf4>)
20000594:	681b      	ldr	r3, [r3, #0]
20000596:	b29a      	uxth	r2, r3
20000598:	4b2b      	ldr	r3, [pc, #172]	; (20000648 <update_telemetry+0xf8>)
2000059a:	681b      	ldr	r3, [r3, #0]
2000059c:	b29b      	uxth	r3, r3
2000059e:	1ad3      	subs	r3, r2, r3
200005a0:	b29b      	uxth	r3, r3
200005a2:	b21a      	sxth	r2, r3
200005a4:	4b29      	ldr	r3, [pc, #164]	; (2000064c <update_telemetry+0xfc>)
200005a6:	801a      	strh	r2, [r3, #0]
200005a8:	4b29      	ldr	r3, [pc, #164]	; (20000650 <update_telemetry+0x100>)
200005aa:	681b      	ldr	r3, [r3, #0]
200005ac:	b29a      	uxth	r2, r3
200005ae:	4b26      	ldr	r3, [pc, #152]	; (20000648 <update_telemetry+0xf8>)
200005b0:	681b      	ldr	r3, [r3, #0]
200005b2:	b29b      	uxth	r3, r3
200005b4:	1ad3      	subs	r3, r2, r3
200005b6:	b29b      	uxth	r3, r3
200005b8:	b21a      	sxth	r2, r3
200005ba:	4b24      	ldr	r3, [pc, #144]	; (2000064c <update_telemetry+0xfc>)
200005bc:	805a      	strh	r2, [r3, #2]
200005be:	4b25      	ldr	r3, [pc, #148]	; (20000654 <update_telemetry+0x104>)
200005c0:	681b      	ldr	r3, [r3, #0]
200005c2:	129b      	asrs	r3, r3, #10
200005c4:	b29a      	uxth	r2, r3
200005c6:	4b21      	ldr	r3, [pc, #132]	; (2000064c <update_telemetry+0xfc>)
200005c8:	809a      	strh	r2, [r3, #4]
200005ca:	4b20      	ldr	r3, [pc, #128]	; (2000064c <update_telemetry+0xfc>)
200005cc:	2200      	movs	r2, #0
200005ce:	80da      	strh	r2, [r3, #6]
200005d0:	4b1e      	ldr	r3, [pc, #120]	; (2000064c <update_telemetry+0xfc>)
200005d2:	603b      	str	r3, [r7, #0]
200005d4:	4920      	ldr	r1, [pc, #128]	; (20000658 <update_telemetry+0x108>)
200005d6:	683b      	ldr	r3, [r7, #0]
200005d8:	1c5a      	adds	r2, r3, #1
200005da:	603a      	str	r2, [r7, #0]
200005dc:	781b      	ldrb	r3, [r3, #0]
200005de:	600b      	str	r3, [r1, #0]
200005e0:	491d      	ldr	r1, [pc, #116]	; (20000658 <update_telemetry+0x108>)
200005e2:	683b      	ldr	r3, [r7, #0]
200005e4:	1c5a      	adds	r2, r3, #1
200005e6:	603a      	str	r2, [r7, #0]
200005e8:	781b      	ldrb	r3, [r3, #0]
200005ea:	600b      	str	r3, [r1, #0]
200005ec:	491a      	ldr	r1, [pc, #104]	; (20000658 <update_telemetry+0x108>)
200005ee:	683b      	ldr	r3, [r7, #0]
200005f0:	1c5a      	adds	r2, r3, #1
200005f2:	603a      	str	r2, [r7, #0]
200005f4:	781b      	ldrb	r3, [r3, #0]
200005f6:	600b      	str	r3, [r1, #0]
200005f8:	4917      	ldr	r1, [pc, #92]	; (20000658 <update_telemetry+0x108>)
200005fa:	683b      	ldr	r3, [r7, #0]
200005fc:	1c5a      	adds	r2, r3, #1
200005fe:	603a      	str	r2, [r7, #0]
20000600:	781b      	ldrb	r3, [r3, #0]
20000602:	600b      	str	r3, [r1, #0]
20000604:	4914      	ldr	r1, [pc, #80]	; (20000658 <update_telemetry+0x108>)
20000606:	683b      	ldr	r3, [r7, #0]
20000608:	1c5a      	adds	r2, r3, #1
2000060a:	603a      	str	r2, [r7, #0]
2000060c:	781b      	ldrb	r3, [r3, #0]
2000060e:	600b      	str	r3, [r1, #0]
20000610:	4911      	ldr	r1, [pc, #68]	; (20000658 <update_telemetry+0x108>)
20000612:	683b      	ldr	r3, [r7, #0]
20000614:	1c5a      	adds	r2, r3, #1
20000616:	603a      	str	r2, [r7, #0]
20000618:	781b      	ldrb	r3, [r3, #0]
2000061a:	600b      	str	r3, [r1, #0]
2000061c:	490e      	ldr	r1, [pc, #56]	; (20000658 <update_telemetry+0x108>)
2000061e:	683b      	ldr	r3, [r7, #0]
20000620:	1c5a      	adds	r2, r3, #1
20000622:	603a      	str	r2, [r7, #0]
20000624:	781b      	ldrb	r3, [r3, #0]
20000626:	600b      	str	r3, [r1, #0]
20000628:	490b      	ldr	r1, [pc, #44]	; (20000658 <update_telemetry+0x108>)
2000062a:	683b      	ldr	r3, [r7, #0]
2000062c:	1c5a      	adds	r2, r3, #1
2000062e:	603a      	str	r2, [r7, #0]
20000630:	781b      	ldrb	r3, [r3, #0]
20000632:	600b      	str	r3, [r1, #0]
20000634:	bf00      	nop
20000636:	370c      	adds	r7, #12
20000638:	46bd      	mov	sp, r7
2000063a:	bc80      	pop	{r7}
2000063c:	4770      	bx	lr
2000063e:	bf00      	nop
20000640:	40070000 	.word	0x40070000
20000644:	20002800 	.word	0x20002800
20000648:	2000280c 	.word	0x2000280c
2000064c:	20002830 	.word	0x20002830
20000650:	20002824 	.word	0x20002824
20000654:	2000282c 	.word	0x2000282c
20000658:	40030000 	.word	0x40030000

2000065c <update_refposition>:
2000065c:	b480      	push	{r7}
2000065e:	b087      	sub	sp, #28
20000660:	af00      	add	r7, sp, #0
20000662:	4b20      	ldr	r3, [pc, #128]	; (200006e4 <update_refposition+0x88>)
20000664:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000666:	f003 0310 	and.w	r3, r3, #16
2000066a:	2b00      	cmp	r3, #0
2000066c:	d022      	beq.n	200006b4 <update_refposition+0x58>
2000066e:	2300      	movs	r3, #0
20000670:	617b      	str	r3, [r7, #20]
20000672:	e00c      	b.n	2000068e <update_refposition+0x32>
20000674:	4b1b      	ldr	r3, [pc, #108]	; (200006e4 <update_refposition+0x88>)
20000676:	681b      	ldr	r3, [r3, #0]
20000678:	b2d9      	uxtb	r1, r3
2000067a:	463a      	mov	r2, r7
2000067c:	697b      	ldr	r3, [r7, #20]
2000067e:	4413      	add	r3, r2
20000680:	460a      	mov	r2, r1
20000682:	701a      	strb	r2, [r3, #0]
20000684:	697b      	ldr	r3, [r7, #20]
20000686:	3301      	adds	r3, #1
20000688:	f003 030f 	and.w	r3, r3, #15
2000068c:	617b      	str	r3, [r7, #20]
2000068e:	4b15      	ldr	r3, [pc, #84]	; (200006e4 <update_refposition+0x88>)
20000690:	699b      	ldr	r3, [r3, #24]
20000692:	f003 0310 	and.w	r3, r3, #16
20000696:	2b00      	cmp	r3, #0
20000698:	d0ec      	beq.n	20000674 <update_refposition+0x18>
2000069a:	783b      	ldrb	r3, [r7, #0]
2000069c:	b29a      	uxth	r2, r3
2000069e:	787b      	ldrb	r3, [r7, #1]
200006a0:	b29b      	uxth	r3, r3
200006a2:	021b      	lsls	r3, r3, #8
200006a4:	b29b      	uxth	r3, r3
200006a6:	4413      	add	r3, r2
200006a8:	b29b      	uxth	r3, r3
200006aa:	827b      	strh	r3, [r7, #18]
200006ac:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
200006b0:	4a0d      	ldr	r2, [pc, #52]	; (200006e8 <update_refposition+0x8c>)
200006b2:	6013      	str	r3, [r2, #0]
200006b4:	4b0b      	ldr	r3, [pc, #44]	; (200006e4 <update_refposition+0x88>)
200006b6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200006b8:	f003 0340 	and.w	r3, r3, #64	; 0x40
200006bc:	2b00      	cmp	r3, #0
200006be:	d009      	beq.n	200006d4 <update_refposition+0x78>
200006c0:	e002      	b.n	200006c8 <update_refposition+0x6c>
200006c2:	4b08      	ldr	r3, [pc, #32]	; (200006e4 <update_refposition+0x88>)
200006c4:	681b      	ldr	r3, [r3, #0]
200006c6:	747b      	strb	r3, [r7, #17]
200006c8:	4b06      	ldr	r3, [pc, #24]	; (200006e4 <update_refposition+0x88>)
200006ca:	699b      	ldr	r3, [r3, #24]
200006cc:	f003 0310 	and.w	r3, r3, #16
200006d0:	2b00      	cmp	r3, #0
200006d2:	d0f6      	beq.n	200006c2 <update_refposition+0x66>
200006d4:	4b04      	ldr	r3, [pc, #16]	; (200006e8 <update_refposition+0x8c>)
200006d6:	681b      	ldr	r3, [r3, #0]
200006d8:	4618      	mov	r0, r3
200006da:	371c      	adds	r7, #28
200006dc:	46bd      	mov	sp, r7
200006de:	bc80      	pop	{r7}
200006e0:	4770      	bx	lr
200006e2:	bf00      	nop
200006e4:	40030000 	.word	0x40030000
200006e8:	2000283c 	.word	0x2000283c

200006ec <mycos>:
200006ec:	4b02      	ldr	r3, [pc, #8]	; (200006f8 <mycos+0xc>)
200006ee:	f3c0 0009 	ubfx	r0, r0, #0, #10
200006f2:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
200006f6:	4770      	bx	lr
200006f8:	200017a8 	.word	0x200017a8

200006fc <mysin>:
200006fc:	4b03      	ldr	r3, [pc, #12]	; (2000070c <mysin+0x10>)
200006fe:	f500 7040 	add.w	r0, r0, #768	; 0x300
20000702:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000706:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
2000070a:	4770      	bx	lr
2000070c:	200017a8 	.word	0x200017a8

20000710 <reg_init>:
20000710:	2300      	movs	r3, #0
20000712:	e880 000e 	stmia.w	r0, {r1, r2, r3}
20000716:	60c3      	str	r3, [r0, #12]
20000718:	4770      	bx	lr
2000071a:	bf00      	nop

2000071c <reg_update>:
2000071c:	6803      	ldr	r3, [r0, #0]
2000071e:	b410      	push	{r4}
20000720:	fb03 f301 	mul.w	r3, r3, r1
20000724:	6884      	ldr	r4, [r0, #8]
20000726:	b11a      	cbz	r2, 20000730 <reg_update+0x14>
20000728:	2c00      	cmp	r4, #0
2000072a:	dd09      	ble.n	20000740 <reg_update+0x24>
2000072c:	ea03 73e3 	and.w	r3, r3, r3, asr #31
20000730:	6842      	ldr	r2, [r0, #4]
20000732:	4423      	add	r3, r4
20000734:	fb02 3101 	mla	r1, r2, r1, r3
20000738:	6083      	str	r3, [r0, #8]
2000073a:	60c1      	str	r1, [r0, #12]
2000073c:	bc10      	pop	{r4}
2000073e:	4770      	bx	lr
20000740:	bf18      	it	ne
20000742:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
20000746:	e7f3      	b.n	20000730 <reg_update+0x14>

20000748 <dot3>:
20000748:	b430      	push	{r4, r5}
2000074a:	684b      	ldr	r3, [r1, #4]
2000074c:	6844      	ldr	r4, [r0, #4]
2000074e:	6802      	ldr	r2, [r0, #0]
20000750:	fb03 f304 	mul.w	r3, r3, r4
20000754:	680d      	ldr	r5, [r1, #0]
20000756:	6884      	ldr	r4, [r0, #8]
20000758:	fb05 3302 	mla	r3, r5, r2, r3
2000075c:	6888      	ldr	r0, [r1, #8]
2000075e:	fb00 3004 	mla	r0, r0, r4, r3
20000762:	bc30      	pop	{r4, r5}
20000764:	4770      	bx	lr
20000766:	bf00      	nop

20000768 <abc_to_dq>:
20000768:	b4f0      	push	{r4, r5, r6, r7}
2000076a:	4c1d      	ldr	r4, [pc, #116]	; (200007e0 <abc_to_dq+0x78>)
2000076c:	6803      	ldr	r3, [r0, #0]
2000076e:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
20000772:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
20000776:	fb03 f306 	mul.w	r3, r3, r6
2000077a:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000077e:	6847      	ldr	r7, [r0, #4]
20000780:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000784:	f202 1655 	addw	r6, r2, #341	; 0x155
20000788:	fb07 3305 	mla	r3, r7, r5, r3
2000078c:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000790:	6887      	ldr	r7, [r0, #8]
20000792:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000796:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
2000079a:	fb07 3305 	mla	r3, r7, r5, r3
2000079e:	129b      	asrs	r3, r3, #10
200007a0:	600b      	str	r3, [r1, #0]
200007a2:	f3c6 0509 	ubfx	r5, r6, #0, #10
200007a6:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
200007aa:	6843      	ldr	r3, [r0, #4]
200007ac:	f502 7540 	add.w	r5, r2, #768	; 0x300
200007b0:	fb03 f306 	mul.w	r3, r3, r6
200007b4:	f3c5 0509 	ubfx	r5, r5, #0, #10
200007b8:	6806      	ldr	r6, [r0, #0]
200007ba:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200007be:	f202 4255 	addw	r2, r2, #1109	; 0x455
200007c2:	fb06 3305 	mla	r3, r6, r5, r3
200007c6:	f3c2 0209 	ubfx	r2, r2, #0, #10
200007ca:	6880      	ldr	r0, [r0, #8]
200007cc:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
200007d0:	bcf0      	pop	{r4, r5, r6, r7}
200007d2:	fb00 3302 	mla	r3, r0, r2, r3
200007d6:	425b      	negs	r3, r3
200007d8:	129b      	asrs	r3, r3, #10
200007da:	604b      	str	r3, [r1, #4]
200007dc:	4770      	bx	lr
200007de:	bf00      	nop
200007e0:	200017a8 	.word	0x200017a8

200007e4 <dq_to_abc>:
200007e4:	4b1d      	ldr	r3, [pc, #116]	; (2000085c <dq_to_abc+0x78>)
200007e6:	b4f0      	push	{r4, r5, r6, r7}
200007e8:	680e      	ldr	r6, [r1, #0]
200007ea:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
200007ee:	f502 7540 	add.w	r5, r2, #768	; 0x300
200007f2:	fb04 f406 	mul.w	r4, r4, r6
200007f6:	f3c5 0509 	ubfx	r5, r5, #0, #10
200007fa:	684f      	ldr	r7, [r1, #4]
200007fc:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000800:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000804:	fb07 4415 	mls	r4, r7, r5, r4
20000808:	1524      	asrs	r4, r4, #20
2000080a:	6004      	str	r4, [r0, #0]
2000080c:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000810:	680c      	ldr	r4, [r1, #0]
20000812:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
20000816:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
2000081a:	fb04 f406 	mul.w	r4, r4, r6
2000081e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000822:	684f      	ldr	r7, [r1, #4]
20000824:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000828:	f202 1655 	addw	r6, r2, #341	; 0x155
2000082c:	fb07 4415 	mls	r4, r7, r5, r4
20000830:	1524      	asrs	r4, r4, #20
20000832:	6044      	str	r4, [r0, #4]
20000834:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000838:	680c      	ldr	r4, [r1, #0]
2000083a:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
2000083e:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000842:	fb04 f405 	mul.w	r4, r4, r5
20000846:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000084a:	6849      	ldr	r1, [r1, #4]
2000084c:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
20000850:	fb01 4312 	mls	r3, r1, r2, r4
20000854:	bcf0      	pop	{r4, r5, r6, r7}
20000856:	151b      	asrs	r3, r3, #20
20000858:	6083      	str	r3, [r0, #8]
2000085a:	4770      	bx	lr
2000085c:	200017a8 	.word	0x200017a8

20000860 <cord_atan>:
20000860:	b5f0      	push	{r4, r5, r6, r7, lr}
20000862:	b091      	sub	sp, #68	; 0x44
20000864:	46ee      	mov	lr, sp
20000866:	4684      	mov	ip, r0
20000868:	4e56      	ldr	r6, [pc, #344]	; (200009c4 <cord_atan+0x164>)
2000086a:	460d      	mov	r5, r1
2000086c:	4614      	mov	r4, r2
2000086e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000870:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000874:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000878:	af08      	add	r7, sp, #32
2000087a:	3610      	adds	r6, #16
2000087c:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000880:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000882:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000884:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000888:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
2000088c:	f8dc 6000 	ldr.w	r6, [ip]
20000890:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000894:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000898:	2b00      	cmp	r3, #0
2000089a:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
2000089e:	9900      	ldr	r1, [sp, #0]
200008a0:	dd56      	ble.n	20000950 <cord_atan+0xf0>
200008a2:	18d0      	adds	r0, r2, r3
200008a4:	1a9b      	subs	r3, r3, r2
200008a6:	2b00      	cmp	r3, #0
200008a8:	d07a      	beq.n	200009a0 <cord_atan+0x140>
200008aa:	9f01      	ldr	r7, [sp, #4]
200008ac:	dd54      	ble.n	20000958 <cord_atan+0xf8>
200008ae:	eb00 0263 	add.w	r2, r0, r3, asr #1
200008b2:	4439      	add	r1, r7
200008b4:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200008b8:	2b00      	cmp	r3, #0
200008ba:	d073      	beq.n	200009a4 <cord_atan+0x144>
200008bc:	9f02      	ldr	r7, [sp, #8]
200008be:	dd51      	ble.n	20000964 <cord_atan+0x104>
200008c0:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200008c4:	4439      	add	r1, r7
200008c6:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200008ca:	2b00      	cmp	r3, #0
200008cc:	d06d      	beq.n	200009aa <cord_atan+0x14a>
200008ce:	9f03      	ldr	r7, [sp, #12]
200008d0:	dd4e      	ble.n	20000970 <cord_atan+0x110>
200008d2:	eb00 02e3 	add.w	r2, r0, r3, asr #3
200008d6:	4439      	add	r1, r7
200008d8:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
200008dc:	2b00      	cmp	r3, #0
200008de:	d066      	beq.n	200009ae <cord_atan+0x14e>
200008e0:	9f04      	ldr	r7, [sp, #16]
200008e2:	dd4b      	ble.n	2000097c <cord_atan+0x11c>
200008e4:	eb02 1023 	add.w	r0, r2, r3, asr #4
200008e8:	4439      	add	r1, r7
200008ea:	eba3 1322 	sub.w	r3, r3, r2, asr #4
200008ee:	2b00      	cmp	r3, #0
200008f0:	d060      	beq.n	200009b4 <cord_atan+0x154>
200008f2:	9f05      	ldr	r7, [sp, #20]
200008f4:	dd48      	ble.n	20000988 <cord_atan+0x128>
200008f6:	eb00 1263 	add.w	r2, r0, r3, asr #5
200008fa:	4439      	add	r1, r7
200008fc:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000900:	2b00      	cmp	r3, #0
20000902:	d059      	beq.n	200009b8 <cord_atan+0x158>
20000904:	9f06      	ldr	r7, [sp, #24]
20000906:	dd45      	ble.n	20000994 <cord_atan+0x134>
20000908:	eb02 10a3 	add.w	r0, r2, r3, asr #6
2000090c:	4439      	add	r1, r7
2000090e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000912:	2b00      	cmp	r3, #0
20000914:	d053      	beq.n	200009be <cord_atan+0x15e>
20000916:	9a07      	ldr	r2, [sp, #28]
20000918:	bfc7      	ittee	gt
2000091a:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
2000091e:	1889      	addgt	r1, r1, r2
20000920:	1a89      	suble	r1, r1, r2
20000922:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000926:	2207      	movs	r2, #7
20000928:	ab10      	add	r3, sp, #64	; 0x40
2000092a:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000092e:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000932:	2e00      	cmp	r6, #0
20000934:	fb03 f300 	mul.w	r3, r3, r0
20000938:	bfb8      	it	lt
2000093a:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
2000093e:	2900      	cmp	r1, #0
20000940:	bfb8      	it	lt
20000942:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000946:	129b      	asrs	r3, r3, #10
20000948:	6029      	str	r1, [r5, #0]
2000094a:	6023      	str	r3, [r4, #0]
2000094c:	b011      	add	sp, #68	; 0x44
2000094e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000950:	1ad0      	subs	r0, r2, r3
20000952:	4249      	negs	r1, r1
20000954:	4413      	add	r3, r2
20000956:	e7a6      	b.n	200008a6 <cord_atan+0x46>
20000958:	eba0 0263 	sub.w	r2, r0, r3, asr #1
2000095c:	1bc9      	subs	r1, r1, r7
2000095e:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000962:	e7a9      	b.n	200008b8 <cord_atan+0x58>
20000964:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000968:	1bc9      	subs	r1, r1, r7
2000096a:	eb03 03a2 	add.w	r3, r3, r2, asr #2
2000096e:	e7ac      	b.n	200008ca <cord_atan+0x6a>
20000970:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000974:	1bc9      	subs	r1, r1, r7
20000976:	eb03 03e0 	add.w	r3, r3, r0, asr #3
2000097a:	e7af      	b.n	200008dc <cord_atan+0x7c>
2000097c:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000980:	1bc9      	subs	r1, r1, r7
20000982:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000986:	e7b2      	b.n	200008ee <cord_atan+0x8e>
20000988:	eba0 1263 	sub.w	r2, r0, r3, asr #5
2000098c:	1bc9      	subs	r1, r1, r7
2000098e:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000992:	e7b5      	b.n	20000900 <cord_atan+0xa0>
20000994:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000998:	1bc9      	subs	r1, r1, r7
2000099a:	eb03 13a2 	add.w	r3, r3, r2, asr #6
2000099e:	e7b8      	b.n	20000912 <cord_atan+0xb2>
200009a0:	461a      	mov	r2, r3
200009a2:	e7c1      	b.n	20000928 <cord_atan+0xc8>
200009a4:	4610      	mov	r0, r2
200009a6:	2201      	movs	r2, #1
200009a8:	e7be      	b.n	20000928 <cord_atan+0xc8>
200009aa:	2202      	movs	r2, #2
200009ac:	e7bc      	b.n	20000928 <cord_atan+0xc8>
200009ae:	4610      	mov	r0, r2
200009b0:	2203      	movs	r2, #3
200009b2:	e7b9      	b.n	20000928 <cord_atan+0xc8>
200009b4:	2204      	movs	r2, #4
200009b6:	e7b7      	b.n	20000928 <cord_atan+0xc8>
200009b8:	4610      	mov	r0, r2
200009ba:	2205      	movs	r2, #5
200009bc:	e7b4      	b.n	20000928 <cord_atan+0xc8>
200009be:	2206      	movs	r2, #6
200009c0:	e7b2      	b.n	20000928 <cord_atan+0xc8>
200009c2:	bf00      	nop
200009c4:	20001768 	.word	0x20001768

200009c8 <sinpwm>:
200009c8:	b5f0      	push	{r4, r5, r6, r7, lr}
200009ca:	b091      	sub	sp, #68	; 0x44
200009cc:	46ee      	mov	lr, sp
200009ce:	468c      	mov	ip, r1
200009d0:	4e6e      	ldr	r6, [pc, #440]	; (20000b8c <sinpwm+0x1c4>)
200009d2:	4604      	mov	r4, r0
200009d4:	4615      	mov	r5, r2
200009d6:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200009d8:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200009dc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200009e0:	af08      	add	r7, sp, #32
200009e2:	3610      	adds	r6, #16
200009e4:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200009e8:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200009ea:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200009ec:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200009f0:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200009f4:	f8dc 6000 	ldr.w	r6, [ip]
200009f8:	f8dc 3004 	ldr.w	r3, [ip, #4]
200009fc:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000a00:	2b00      	cmp	r3, #0
20000a02:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000a06:	9900      	ldr	r1, [sp, #0]
20000a08:	f340 8087 	ble.w	20000b1a <sinpwm+0x152>
20000a0c:	18d0      	adds	r0, r2, r3
20000a0e:	1a9b      	subs	r3, r3, r2
20000a10:	2b00      	cmp	r3, #0
20000a12:	f000 80aa 	beq.w	20000b6a <sinpwm+0x1a2>
20000a16:	9f01      	ldr	r7, [sp, #4]
20000a18:	f340 8083 	ble.w	20000b22 <sinpwm+0x15a>
20000a1c:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000a20:	4439      	add	r1, r7
20000a22:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000a26:	2b00      	cmp	r3, #0
20000a28:	f000 80a1 	beq.w	20000b6e <sinpwm+0x1a6>
20000a2c:	9f02      	ldr	r7, [sp, #8]
20000a2e:	dd7e      	ble.n	20000b2e <sinpwm+0x166>
20000a30:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000a34:	4439      	add	r1, r7
20000a36:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000a3a:	2b00      	cmp	r3, #0
20000a3c:	f000 809a 	beq.w	20000b74 <sinpwm+0x1ac>
20000a40:	9f03      	ldr	r7, [sp, #12]
20000a42:	dd7a      	ble.n	20000b3a <sinpwm+0x172>
20000a44:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000a48:	4439      	add	r1, r7
20000a4a:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000a4e:	2b00      	cmp	r3, #0
20000a50:	f000 8092 	beq.w	20000b78 <sinpwm+0x1b0>
20000a54:	9f04      	ldr	r7, [sp, #16]
20000a56:	dd76      	ble.n	20000b46 <sinpwm+0x17e>
20000a58:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000a5c:	4439      	add	r1, r7
20000a5e:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000a62:	2b00      	cmp	r3, #0
20000a64:	f000 808b 	beq.w	20000b7e <sinpwm+0x1b6>
20000a68:	9f05      	ldr	r7, [sp, #20]
20000a6a:	dd72      	ble.n	20000b52 <sinpwm+0x18a>
20000a6c:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000a70:	4439      	add	r1, r7
20000a72:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000a76:	2b00      	cmp	r3, #0
20000a78:	f000 8083 	beq.w	20000b82 <sinpwm+0x1ba>
20000a7c:	9f06      	ldr	r7, [sp, #24]
20000a7e:	dd6e      	ble.n	20000b5e <sinpwm+0x196>
20000a80:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000a84:	4439      	add	r1, r7
20000a86:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000a8a:	2b00      	cmp	r3, #0
20000a8c:	d07c      	beq.n	20000b88 <sinpwm+0x1c0>
20000a8e:	9a07      	ldr	r2, [sp, #28]
20000a90:	bfc7      	ittee	gt
20000a92:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000a96:	1889      	addgt	r1, r1, r2
20000a98:	1a89      	suble	r1, r1, r2
20000a9a:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000a9e:	2207      	movs	r2, #7
20000aa0:	ab10      	add	r3, sp, #64	; 0x40
20000aa2:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000aa6:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000aaa:	2e00      	cmp	r6, #0
20000aac:	fb03 f300 	mul.w	r3, r3, r0
20000ab0:	bfb8      	it	lt
20000ab2:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000ab6:	2900      	cmp	r1, #0
20000ab8:	bfb8      	it	lt
20000aba:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000abe:	151b      	asrs	r3, r3, #20
20000ac0:	440d      	add	r5, r1
20000ac2:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000ac6:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000aca:	dd22      	ble.n	20000b12 <sinpwm+0x14a>
20000acc:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 20000b94 <sinpwm+0x1cc>
20000ad0:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
20000ad4:	2001      	movs	r0, #1
20000ad6:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
20000ada:	4f2d      	ldr	r7, [pc, #180]	; (20000b90 <sinpwm+0x1c8>)
20000adc:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
20000ae0:	3602      	adds	r6, #2
20000ae2:	f3ce 0e09 	ubfx	lr, lr, #0, #10
20000ae6:	f3c6 0609 	ubfx	r6, r6, #0, #10
20000aea:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
20000aee:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
20000af2:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
20000af6:	fb06 f50c 	mul.w	r5, r6, ip
20000afa:	fb01 f10c 	mul.w	r1, r1, ip
20000afe:	fb02 f303 	mul.w	r3, r2, r3
20000b02:	12ad      	asrs	r5, r5, #10
20000b04:	128a      	asrs	r2, r1, #10
20000b06:	129b      	asrs	r3, r3, #10
20000b08:	60a5      	str	r5, [r4, #8]
20000b0a:	6062      	str	r2, [r4, #4]
20000b0c:	6023      	str	r3, [r4, #0]
20000b0e:	b011      	add	sp, #68	; 0x44
20000b10:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000b12:	f1c3 0c00 	rsb	ip, r3, #0
20000b16:	2000      	movs	r0, #0
20000b18:	e7dd      	b.n	20000ad6 <sinpwm+0x10e>
20000b1a:	1ad0      	subs	r0, r2, r3
20000b1c:	4249      	negs	r1, r1
20000b1e:	4413      	add	r3, r2
20000b20:	e776      	b.n	20000a10 <sinpwm+0x48>
20000b22:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000b26:	1bc9      	subs	r1, r1, r7
20000b28:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000b2c:	e77b      	b.n	20000a26 <sinpwm+0x5e>
20000b2e:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000b32:	1bc9      	subs	r1, r1, r7
20000b34:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000b38:	e77f      	b.n	20000a3a <sinpwm+0x72>
20000b3a:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000b3e:	1bc9      	subs	r1, r1, r7
20000b40:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000b44:	e783      	b.n	20000a4e <sinpwm+0x86>
20000b46:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000b4a:	1bc9      	subs	r1, r1, r7
20000b4c:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000b50:	e787      	b.n	20000a62 <sinpwm+0x9a>
20000b52:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000b56:	1bc9      	subs	r1, r1, r7
20000b58:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000b5c:	e78b      	b.n	20000a76 <sinpwm+0xae>
20000b5e:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000b62:	1bc9      	subs	r1, r1, r7
20000b64:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000b68:	e78f      	b.n	20000a8a <sinpwm+0xc2>
20000b6a:	461a      	mov	r2, r3
20000b6c:	e798      	b.n	20000aa0 <sinpwm+0xd8>
20000b6e:	4610      	mov	r0, r2
20000b70:	2201      	movs	r2, #1
20000b72:	e795      	b.n	20000aa0 <sinpwm+0xd8>
20000b74:	2202      	movs	r2, #2
20000b76:	e793      	b.n	20000aa0 <sinpwm+0xd8>
20000b78:	4610      	mov	r0, r2
20000b7a:	2203      	movs	r2, #3
20000b7c:	e790      	b.n	20000aa0 <sinpwm+0xd8>
20000b7e:	2204      	movs	r2, #4
20000b80:	e78e      	b.n	20000aa0 <sinpwm+0xd8>
20000b82:	4610      	mov	r0, r2
20000b84:	2205      	movs	r2, #5
20000b86:	e78b      	b.n	20000aa0 <sinpwm+0xd8>
20000b88:	2206      	movs	r2, #6
20000b8a:	e789      	b.n	20000aa0 <sinpwm+0xd8>
20000b8c:	20001768 	.word	0x20001768
20000b90:	200017a8 	.word	0x200017a8
20000b94:	fffffe0c 	.word	0xfffffe0c

20000b98 <svpwm>:
20000b98:	b5f0      	push	{r4, r5, r6, r7, lr}
20000b9a:	b091      	sub	sp, #68	; 0x44
20000b9c:	46ee      	mov	lr, sp
20000b9e:	468c      	mov	ip, r1
20000ba0:	4eb8      	ldr	r6, [pc, #736]	; (20000e84 <svpwm+0x2ec>)
20000ba2:	4604      	mov	r4, r0
20000ba4:	4615      	mov	r5, r2
20000ba6:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000ba8:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000bac:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000bb0:	af08      	add	r7, sp, #32
20000bb2:	3610      	adds	r6, #16
20000bb4:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000bb8:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000bba:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000bbc:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000bc0:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000bc4:	f8dc 6000 	ldr.w	r6, [ip]
20000bc8:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000bcc:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000bd0:	2b00      	cmp	r3, #0
20000bd2:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000bd6:	9900      	ldr	r1, [sp, #0]
20000bd8:	dd6f      	ble.n	20000cba <svpwm+0x122>
20000bda:	18d0      	adds	r0, r2, r3
20000bdc:	1a9b      	subs	r3, r3, r2
20000bde:	2b00      	cmp	r3, #0
20000be0:	f000 813f 	beq.w	20000e62 <svpwm+0x2ca>
20000be4:	9f01      	ldr	r7, [sp, #4]
20000be6:	dd6c      	ble.n	20000cc2 <svpwm+0x12a>
20000be8:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000bec:	4439      	add	r1, r7
20000bee:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000bf2:	2b00      	cmp	r3, #0
20000bf4:	f000 8137 	beq.w	20000e66 <svpwm+0x2ce>
20000bf8:	9f02      	ldr	r7, [sp, #8]
20000bfa:	dd68      	ble.n	20000cce <svpwm+0x136>
20000bfc:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000c00:	4439      	add	r1, r7
20000c02:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000c06:	2b00      	cmp	r3, #0
20000c08:	f000 8130 	beq.w	20000e6c <svpwm+0x2d4>
20000c0c:	9f03      	ldr	r7, [sp, #12]
20000c0e:	dd64      	ble.n	20000cda <svpwm+0x142>
20000c10:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000c14:	4439      	add	r1, r7
20000c16:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000c1a:	2b00      	cmp	r3, #0
20000c1c:	f000 8128 	beq.w	20000e70 <svpwm+0x2d8>
20000c20:	9f04      	ldr	r7, [sp, #16]
20000c22:	dd60      	ble.n	20000ce6 <svpwm+0x14e>
20000c24:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000c28:	4439      	add	r1, r7
20000c2a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000c2e:	2b00      	cmp	r3, #0
20000c30:	f000 8121 	beq.w	20000e76 <svpwm+0x2de>
20000c34:	9f05      	ldr	r7, [sp, #20]
20000c36:	dd5c      	ble.n	20000cf2 <svpwm+0x15a>
20000c38:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000c3c:	4439      	add	r1, r7
20000c3e:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000c42:	2b00      	cmp	r3, #0
20000c44:	f000 8119 	beq.w	20000e7a <svpwm+0x2e2>
20000c48:	9f06      	ldr	r7, [sp, #24]
20000c4a:	dd58      	ble.n	20000cfe <svpwm+0x166>
20000c4c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000c50:	4439      	add	r1, r7
20000c52:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000c56:	2b00      	cmp	r3, #0
20000c58:	f000 8112 	beq.w	20000e80 <svpwm+0x2e8>
20000c5c:	9a07      	ldr	r2, [sp, #28]
20000c5e:	bfc7      	ittee	gt
20000c60:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000c64:	1889      	addgt	r1, r1, r2
20000c66:	1a89      	suble	r1, r1, r2
20000c68:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000c6c:	2207      	movs	r2, #7
20000c6e:	ab10      	add	r3, sp, #64	; 0x40
20000c70:	2e00      	cmp	r6, #0
20000c72:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000c76:	bfb8      	it	lt
20000c78:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000c7c:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000c80:	2900      	cmp	r1, #0
20000c82:	fb03 f300 	mul.w	r3, r3, r0
20000c86:	bfb8      	it	lt
20000c88:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000c8c:	440d      	add	r5, r1
20000c8e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c92:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20000c96:	151b      	asrs	r3, r3, #20
20000c98:	1252      	asrs	r2, r2, #9
20000c9a:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000c9e:	f102 32ff 	add.w	r2, r2, #4294967295
20000ca2:	bfc6      	itte	gt
20000ca4:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20000ca8:	2001      	movgt	r0, #1
20000caa:	2000      	movle	r0, #0
20000cac:	2a04      	cmp	r2, #4
20000cae:	d848      	bhi.n	20000d42 <svpwm+0x1aa>
20000cb0:	e8df f002 	tbb	[pc, r2]
20000cb4:	2b9e8164 	.word	0x2b9e8164
20000cb8:	bb          	.byte	0xbb
20000cb9:	00          	.byte	0x00
20000cba:	1ad0      	subs	r0, r2, r3
20000cbc:	4249      	negs	r1, r1
20000cbe:	4413      	add	r3, r2
20000cc0:	e78d      	b.n	20000bde <svpwm+0x46>
20000cc2:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000cc6:	1bc9      	subs	r1, r1, r7
20000cc8:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000ccc:	e791      	b.n	20000bf2 <svpwm+0x5a>
20000cce:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000cd2:	1bc9      	subs	r1, r1, r7
20000cd4:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000cd8:	e795      	b.n	20000c06 <svpwm+0x6e>
20000cda:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000cde:	1bc9      	subs	r1, r1, r7
20000ce0:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000ce4:	e799      	b.n	20000c1a <svpwm+0x82>
20000ce6:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000cea:	1bc9      	subs	r1, r1, r7
20000cec:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000cf0:	e79d      	b.n	20000c2e <svpwm+0x96>
20000cf2:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000cf6:	1bc9      	subs	r1, r1, r7
20000cf8:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000cfc:	e7a1      	b.n	20000c42 <svpwm+0xaa>
20000cfe:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000d02:	1bc9      	subs	r1, r1, r7
20000d04:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000d08:	e7a5      	b.n	20000c56 <svpwm+0xbe>
20000d0a:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
20000d0e:	4e5e      	ldr	r6, [pc, #376]	; (20000e88 <svpwm+0x2f0>)
20000d10:	3204      	adds	r2, #4
20000d12:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d16:	3556      	adds	r5, #86	; 0x56
20000d18:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000d1c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d20:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000d24:	fb01 f103 	mul.w	r1, r1, r3
20000d28:	fb02 f203 	mul.w	r2, r2, r3
20000d2c:	1289      	asrs	r1, r1, #10
20000d2e:	1293      	asrs	r3, r2, #10
20000d30:	424a      	negs	r2, r1
20000d32:	1ad2      	subs	r2, r2, r3
20000d34:	1a5d      	subs	r5, r3, r1
20000d36:	440b      	add	r3, r1
20000d38:	6062      	str	r2, [r4, #4]
20000d3a:	6025      	str	r5, [r4, #0]
20000d3c:	60a3      	str	r3, [r4, #8]
20000d3e:	b011      	add	sp, #68	; 0x44
20000d40:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000d42:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000d46:	4e50      	ldr	r6, [pc, #320]	; (20000e88 <svpwm+0x2f0>)
20000d48:	3202      	adds	r2, #2
20000d4a:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d4e:	f505 7540 	add.w	r5, r5, #768	; 0x300
20000d52:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000d56:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d5a:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000d5e:	fb01 f103 	mul.w	r1, r1, r3
20000d62:	fb02 f203 	mul.w	r2, r2, r3
20000d66:	1289      	asrs	r1, r1, #10
20000d68:	1293      	asrs	r3, r2, #10
20000d6a:	424a      	negs	r2, r1
20000d6c:	1ad2      	subs	r2, r2, r3
20000d6e:	18cd      	adds	r5, r1, r3
20000d70:	1a5b      	subs	r3, r3, r1
20000d72:	60a2      	str	r2, [r4, #8]
20000d74:	6025      	str	r5, [r4, #0]
20000d76:	6063      	str	r3, [r4, #4]
20000d78:	b011      	add	sp, #68	; 0x44
20000d7a:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000d7c:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20000d80:	4e41      	ldr	r6, [pc, #260]	; (20000e88 <svpwm+0x2f0>)
20000d82:	3204      	adds	r2, #4
20000d84:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d88:	f205 2556 	addw	r5, r5, #598	; 0x256
20000d8c:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000d90:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d94:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000d98:	fb01 f103 	mul.w	r1, r1, r3
20000d9c:	fb02 f203 	mul.w	r2, r2, r3
20000da0:	1289      	asrs	r1, r1, #10
20000da2:	1293      	asrs	r3, r2, #10
20000da4:	424a      	negs	r2, r1
20000da6:	1ad2      	subs	r2, r2, r3
20000da8:	1acd      	subs	r5, r1, r3
20000daa:	440b      	add	r3, r1
20000dac:	60a2      	str	r2, [r4, #8]
20000dae:	6025      	str	r5, [r4, #0]
20000db0:	6063      	str	r3, [r4, #4]
20000db2:	b011      	add	sp, #68	; 0x44
20000db4:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000db6:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20000dba:	4e33      	ldr	r6, [pc, #204]	; (20000e88 <svpwm+0x2f0>)
20000dbc:	320f      	adds	r2, #15
20000dbe:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000dc2:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20000dc6:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000dca:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000dce:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000dd2:	fb01 f103 	mul.w	r1, r1, r3
20000dd6:	fb02 f203 	mul.w	r2, r2, r3
20000dda:	1289      	asrs	r1, r1, #10
20000ddc:	1293      	asrs	r3, r2, #10
20000dde:	424a      	negs	r2, r1
20000de0:	1ad2      	subs	r2, r2, r3
20000de2:	18cd      	adds	r5, r1, r3
20000de4:	1a5b      	subs	r3, r3, r1
20000de6:	e884 0024 	stmia.w	r4, {r2, r5}
20000dea:	60a3      	str	r3, [r4, #8]
20000dec:	b011      	add	sp, #68	; 0x44
20000dee:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000df0:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20000df4:	4e24      	ldr	r6, [pc, #144]	; (20000e88 <svpwm+0x2f0>)
20000df6:	320a      	adds	r2, #10
20000df8:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000dfc:	f505 7580 	add.w	r5, r5, #256	; 0x100
20000e00:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000e04:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000e08:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000e0c:	fb01 f103 	mul.w	r1, r1, r3
20000e10:	fb02 f203 	mul.w	r2, r2, r3
20000e14:	1289      	asrs	r1, r1, #10
20000e16:	1293      	asrs	r3, r2, #10
20000e18:	424a      	negs	r2, r1
20000e1a:	1ad2      	subs	r2, r2, r3
20000e1c:	1acd      	subs	r5, r1, r3
20000e1e:	440b      	add	r3, r1
20000e20:	e884 0024 	stmia.w	r4, {r2, r5}
20000e24:	60a3      	str	r3, [r4, #8]
20000e26:	b011      	add	sp, #68	; 0x44
20000e28:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000e2a:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000e2e:	4916      	ldr	r1, [pc, #88]	; (20000e88 <svpwm+0x2f0>)
20000e30:	320f      	adds	r2, #15
20000e32:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000e36:	3d55      	subs	r5, #85	; 0x55
20000e38:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000e3c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000e40:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000e44:	fb02 f203 	mul.w	r2, r2, r3
20000e48:	fb01 f303 	mul.w	r3, r1, r3
20000e4c:	1292      	asrs	r2, r2, #10
20000e4e:	129b      	asrs	r3, r3, #10
20000e50:	4251      	negs	r1, r2
20000e52:	18d5      	adds	r5, r2, r3
20000e54:	1ac9      	subs	r1, r1, r3
20000e56:	1ad2      	subs	r2, r2, r3
20000e58:	6061      	str	r1, [r4, #4]
20000e5a:	6025      	str	r5, [r4, #0]
20000e5c:	60a2      	str	r2, [r4, #8]
20000e5e:	b011      	add	sp, #68	; 0x44
20000e60:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000e62:	461a      	mov	r2, r3
20000e64:	e703      	b.n	20000c6e <svpwm+0xd6>
20000e66:	4610      	mov	r0, r2
20000e68:	2201      	movs	r2, #1
20000e6a:	e700      	b.n	20000c6e <svpwm+0xd6>
20000e6c:	2202      	movs	r2, #2
20000e6e:	e6fe      	b.n	20000c6e <svpwm+0xd6>
20000e70:	4610      	mov	r0, r2
20000e72:	2203      	movs	r2, #3
20000e74:	e6fb      	b.n	20000c6e <svpwm+0xd6>
20000e76:	2204      	movs	r2, #4
20000e78:	e6f9      	b.n	20000c6e <svpwm+0xd6>
20000e7a:	4610      	mov	r0, r2
20000e7c:	2205      	movs	r2, #5
20000e7e:	e6f6      	b.n	20000c6e <svpwm+0xd6>
20000e80:	2206      	movs	r2, #6
20000e82:	e6f4      	b.n	20000c6e <svpwm+0xd6>
20000e84:	20001768 	.word	0x20001768
20000e88:	200017a8 	.word	0x200017a8

20000e8c <encoder_init>:
20000e8c:	4b01      	ldr	r3, [pc, #4]	; (20000e94 <encoder_init+0x8>)
20000e8e:	6018      	str	r0, [r3, #0]
20000e90:	6058      	str	r0, [r3, #4]
20000e92:	4770      	bx	lr
20000e94:	20002840 	.word	0x20002840

20000e98 <get_speed>:
20000e98:	4a0e      	ldr	r2, [pc, #56]	; (20000ed4 <get_speed+0x3c>)
20000e9a:	b430      	push	{r4, r5}
20000e9c:	6853      	ldr	r3, [r2, #4]
20000e9e:	6815      	ldr	r5, [r2, #0]
20000ea0:	1ac3      	subs	r3, r0, r3
20000ea2:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20000ea6:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
20000eaa:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
20000eae:	e882 0021 	stmia.w	r2, {r0, r5}
20000eb2:	dd05      	ble.n	20000ec0 <get_speed+0x28>
20000eb4:	2b00      	cmp	r3, #0
20000eb6:	bfb4      	ite	lt
20000eb8:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
20000ebc:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20000ec0:	4a05      	ldr	r2, [pc, #20]	; (20000ed8 <get_speed+0x40>)
20000ec2:	1058      	asrs	r0, r3, #1
20000ec4:	fb02 f000 	mul.w	r0, r2, r0
20000ec8:	bc30      	pop	{r4, r5}
20000eca:	680a      	ldr	r2, [r1, #0]
20000ecc:	1300      	asrs	r0, r0, #12
20000ece:	4413      	add	r3, r2
20000ed0:	600b      	str	r3, [r1, #0]
20000ed2:	4770      	bx	lr
20000ed4:	20002840 	.word	0x20002840
20000ed8:	0002ae7c 	.word	0x0002ae7c

20000edc <mfilter>:
20000edc:	b430      	push	{r4, r5}
20000ede:	4605      	mov	r5, r0
20000ee0:	4a06      	ldr	r2, [pc, #24]	; (20000efc <mfilter+0x20>)
20000ee2:	6893      	ldr	r3, [r2, #8]
20000ee4:	3301      	adds	r3, #1
20000ee6:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000eea:	eb02 0483 	add.w	r4, r2, r3, lsl #2
20000eee:	68e0      	ldr	r0, [r4, #12]
20000ef0:	6093      	str	r3, [r2, #8]
20000ef2:	1a08      	subs	r0, r1, r0
20000ef4:	4428      	add	r0, r5
20000ef6:	60e5      	str	r5, [r4, #12]
20000ef8:	bc30      	pop	{r4, r5}
20000efa:	4770      	bx	lr
20000efc:	20002840 	.word	0x20002840

20000f00 <rfilter1>:
20000f00:	b470      	push	{r4, r5, r6}
20000f02:	f240 74c6 	movw	r4, #1990	; 0x7c6
20000f06:	4b12      	ldr	r3, [pc, #72]	; (20000f50 <rfilter1+0x50>)
20000f08:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20000f0c:	f853 6cec 	ldr.w	r6, [r3, #-236]
20000f10:	f853 1ce4 	ldr.w	r1, [r3, #-228]
20000f14:	fb04 f406 	mul.w	r4, r4, r6
20000f18:	fb02 4201 	mla	r2, r2, r1, r4
20000f1c:	490d      	ldr	r1, [pc, #52]	; (20000f54 <rfilter1+0x54>)
20000f1e:	f853 5ce8 	ldr.w	r5, [r3, #-232]
20000f22:	fb01 2200 	mla	r2, r1, r0, r2
20000f26:	4c0c      	ldr	r4, [pc, #48]	; (20000f58 <rfilter1+0x58>)
20000f28:	f853 1ce0 	ldr.w	r1, [r3, #-224]
20000f2c:	fb04 2205 	mla	r2, r4, r5, r2
20000f30:	4c0a      	ldr	r4, [pc, #40]	; (20000f5c <rfilter1+0x5c>)
20000f32:	f843 6ce4 	str.w	r6, [r3, #-228]
20000f36:	fb04 2201 	mla	r2, r4, r1, r2
20000f3a:	1291      	asrs	r1, r2, #10
20000f3c:	f843 0ce8 	str.w	r0, [r3, #-232]
20000f40:	f843 5ce0 	str.w	r5, [r3, #-224]
20000f44:	1490      	asrs	r0, r2, #18
20000f46:	f843 1cec 	str.w	r1, [r3, #-236]
20000f4a:	bc70      	pop	{r4, r5, r6}
20000f4c:	4770      	bx	lr
20000f4e:	bf00      	nop
20000f50:	20003938 	.word	0x20003938
20000f54:	0003f0a4 	.word	0x0003f0a4
20000f58:	fff83a2e 	.word	0xfff83a2e
20000f5c:	0003dc29 	.word	0x0003dc29

20000f60 <rfilter2>:
20000f60:	b470      	push	{r4, r5, r6}
20000f62:	f240 748a 	movw	r4, #1930	; 0x78a
20000f66:	4b11      	ldr	r3, [pc, #68]	; (20000fac <rfilter2+0x4c>)
20000f68:	4a11      	ldr	r2, [pc, #68]	; (20000fb0 <rfilter2+0x50>)
20000f6a:	f853 6cdc 	ldr.w	r6, [r3, #-220]
20000f6e:	f853 1cd4 	ldr.w	r1, [r3, #-212]
20000f72:	fb04 f406 	mul.w	r4, r4, r6
20000f76:	fb02 4201 	mla	r2, r2, r1, r4
20000f7a:	490e      	ldr	r1, [pc, #56]	; (20000fb4 <rfilter2+0x54>)
20000f7c:	f853 5cd8 	ldr.w	r5, [r3, #-216]
20000f80:	fb01 2200 	mla	r2, r1, r0, r2
20000f84:	4c0c      	ldr	r4, [pc, #48]	; (20000fb8 <rfilter2+0x58>)
20000f86:	f853 1cd0 	ldr.w	r1, [r3, #-208]
20000f8a:	fb04 2205 	mla	r2, r4, r5, r2
20000f8e:	4c0b      	ldr	r4, [pc, #44]	; (20000fbc <rfilter2+0x5c>)
20000f90:	f843 6cd4 	str.w	r6, [r3, #-212]
20000f94:	fb04 2201 	mla	r2, r4, r1, r2
20000f98:	1291      	asrs	r1, r2, #10
20000f9a:	f843 0cd8 	str.w	r0, [r3, #-216]
20000f9e:	f843 5cd0 	str.w	r5, [r3, #-208]
20000fa2:	1490      	asrs	r0, r2, #18
20000fa4:	f843 1cdc 	str.w	r1, [r3, #-220]
20000fa8:	bc70      	pop	{r4, r5, r6}
20000faa:	4770      	bx	lr
20000fac:	20003938 	.word	0x20003938
20000fb0:	fffffc66 	.word	0xfffffc66
20000fb4:	0003e3d7 	.word	0x0003e3d7
20000fb8:	fff8767b 	.word	0xfff8767b
20000fbc:	0003b5c3 	.word	0x0003b5c3

20000fc0 <adc_init>:
20000fc0:	b480      	push	{r7}
20000fc2:	af00      	add	r7, sp, #0
20000fc4:	4a10      	ldr	r2, [pc, #64]	; (20001008 <adc_init+0x48>)
20000fc6:	4b10      	ldr	r3, [pc, #64]	; (20001008 <adc_init+0x48>)
20000fc8:	69db      	ldr	r3, [r3, #28]
20000fca:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000fce:	61d3      	str	r3, [r2, #28]
20000fd0:	4b0d      	ldr	r3, [pc, #52]	; (20001008 <adc_init+0x48>)
20000fd2:	f242 0220 	movw	r2, #8224	; 0x2020
20000fd6:	615a      	str	r2, [r3, #20]
20000fd8:	4b0c      	ldr	r3, [pc, #48]	; (2000100c <adc_init+0x4c>)
20000fda:	2200      	movs	r2, #0
20000fdc:	601a      	str	r2, [r3, #0]
20000fde:	4a0b      	ldr	r2, [pc, #44]	; (2000100c <adc_init+0x4c>)
20000fe0:	4b0a      	ldr	r3, [pc, #40]	; (2000100c <adc_init+0x4c>)
20000fe2:	681b      	ldr	r3, [r3, #0]
20000fe4:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20000fe8:	f043 0301 	orr.w	r3, r3, #1
20000fec:	6013      	str	r3, [r2, #0]
20000fee:	4a07      	ldr	r2, [pc, #28]	; (2000100c <adc_init+0x4c>)
20000ff0:	4b06      	ldr	r3, [pc, #24]	; (2000100c <adc_init+0x4c>)
20000ff2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20000ff4:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
20000ff8:	6293      	str	r3, [r2, #40]	; 0x28
20000ffa:	4b04      	ldr	r3, [pc, #16]	; (2000100c <adc_init+0x4c>)
20000ffc:	2210      	movs	r2, #16
20000ffe:	621a      	str	r2, [r3, #32]
20001000:	bf00      	nop
20001002:	46bd      	mov	sp, r7
20001004:	bc80      	pop	{r7}
20001006:	4770      	bx	lr
20001008:	40020000 	.word	0x40020000
2000100c:	40088000 	.word	0x40088000

20001010 <dma_init>:
20001010:	b480      	push	{r7}
20001012:	af00      	add	r7, sp, #0
20001014:	4a17      	ldr	r2, [pc, #92]	; (20001074 <dma_init+0x64>)
20001016:	4b17      	ldr	r3, [pc, #92]	; (20001074 <dma_init+0x64>)
20001018:	69db      	ldr	r3, [r3, #28]
2000101a:	f043 0320 	orr.w	r3, r3, #32
2000101e:	61d3      	str	r3, [r2, #28]
20001020:	4b15      	ldr	r3, [pc, #84]	; (20001078 <dma_init+0x68>)
20001022:	4a16      	ldr	r2, [pc, #88]	; (2000107c <dma_init+0x6c>)
20001024:	609a      	str	r2, [r3, #8]
20001026:	4b14      	ldr	r3, [pc, #80]	; (20001078 <dma_init+0x68>)
20001028:	f04f 32ff 	mov.w	r2, #4294967295
2000102c:	62da      	str	r2, [r3, #44]	; 0x2c
2000102e:	4b12      	ldr	r3, [pc, #72]	; (20001078 <dma_init+0x68>)
20001030:	f04f 32ff 	mov.w	r2, #4294967295
20001034:	621a      	str	r2, [r3, #32]
20001036:	4b10      	ldr	r3, [pc, #64]	; (20001078 <dma_init+0x68>)
20001038:	f04f 32ff 	mov.w	r2, #4294967295
2000103c:	635a      	str	r2, [r3, #52]	; 0x34
2000103e:	4b0e      	ldr	r3, [pc, #56]	; (20001078 <dma_init+0x68>)
20001040:	f44f 7280 	mov.w	r2, #256	; 0x100
20001044:	61da      	str	r2, [r3, #28]
20001046:	4b0c      	ldr	r3, [pc, #48]	; (20001078 <dma_init+0x68>)
20001048:	f44f 7280 	mov.w	r2, #256	; 0x100
2000104c:	625a      	str	r2, [r3, #36]	; 0x24
2000104e:	4b0a      	ldr	r3, [pc, #40]	; (20001078 <dma_init+0x68>)
20001050:	2201      	movs	r2, #1
20001052:	605a      	str	r2, [r3, #4]
20001054:	4b09      	ldr	r3, [pc, #36]	; (2000107c <dma_init+0x6c>)
20001056:	4a0a      	ldr	r2, [pc, #40]	; (20001080 <dma_init+0x70>)
20001058:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
2000105c:	4a09      	ldr	r2, [pc, #36]	; (20001084 <dma_init+0x74>)
2000105e:	4b07      	ldr	r3, [pc, #28]	; (2000107c <dma_init+0x6c>)
20001060:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001064:	4b05      	ldr	r3, [pc, #20]	; (2000107c <dma_init+0x6c>)
20001066:	4a08      	ldr	r2, [pc, #32]	; (20001088 <dma_init+0x78>)
20001068:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
2000106c:	bf00      	nop
2000106e:	46bd      	mov	sp, r7
20001070:	bc80      	pop	{r7}
20001072:	4770      	bx	lr
20001074:	40020000 	.word	0x40020000
20001078:	40028000 	.word	0x40028000
2000107c:	20003c00 	.word	0x20003c00
20001080:	40088018 	.word	0x40088018
20001084:	20003e04 	.word	0x20003e04
20001088:	ae000011 	.word	0xae000011

2000108c <adc_dma_init>:
2000108c:	b580      	push	{r7, lr}
2000108e:	af00      	add	r7, sp, #0
20001090:	f7ff ff96 	bl	20000fc0 <adc_init>
20001094:	f7ff ffbc 	bl	20001010 <dma_init>
20001098:	bf00      	nop
2000109a:	bd80      	pop	{r7, pc}

2000109c <adc_dma_start>:
2000109c:	b480      	push	{r7}
2000109e:	af00      	add	r7, sp, #0
200010a0:	4a06      	ldr	r2, [pc, #24]	; (200010bc <adc_dma_start+0x20>)
200010a2:	4b06      	ldr	r3, [pc, #24]	; (200010bc <adc_dma_start+0x20>)
200010a4:	681b      	ldr	r3, [r3, #0]
200010a6:	f043 0308 	orr.w	r3, r3, #8
200010aa:	6013      	str	r3, [r2, #0]
200010ac:	4b04      	ldr	r3, [pc, #16]	; (200010c0 <adc_dma_start+0x24>)
200010ae:	f44f 7280 	mov.w	r2, #256	; 0x100
200010b2:	629a      	str	r2, [r3, #40]	; 0x28
200010b4:	bf00      	nop
200010b6:	46bd      	mov	sp, r7
200010b8:	bc80      	pop	{r7}
200010ba:	4770      	bx	lr
200010bc:	40088000 	.word	0x40088000
200010c0:	40028000 	.word	0x40028000

200010c4 <adc_dma_wait>:
200010c4:	b480      	push	{r7}
200010c6:	af00      	add	r7, sp, #0
200010c8:	bf00      	nop
200010ca:	4b0a      	ldr	r3, [pc, #40]	; (200010f4 <adc_dma_wait+0x30>)
200010cc:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
200010d0:	f003 0307 	and.w	r3, r3, #7
200010d4:	2b00      	cmp	r3, #0
200010d6:	d1f8      	bne.n	200010ca <adc_dma_wait+0x6>
200010d8:	4a07      	ldr	r2, [pc, #28]	; (200010f8 <adc_dma_wait+0x34>)
200010da:	4b07      	ldr	r3, [pc, #28]	; (200010f8 <adc_dma_wait+0x34>)
200010dc:	681b      	ldr	r3, [r3, #0]
200010de:	f023 0308 	bic.w	r3, r3, #8
200010e2:	6013      	str	r3, [r2, #0]
200010e4:	4b03      	ldr	r3, [pc, #12]	; (200010f4 <adc_dma_wait+0x30>)
200010e6:	4a05      	ldr	r2, [pc, #20]	; (200010fc <adc_dma_wait+0x38>)
200010e8:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
200010ec:	bf00      	nop
200010ee:	46bd      	mov	sp, r7
200010f0:	bc80      	pop	{r7}
200010f2:	4770      	bx	lr
200010f4:	20003c00 	.word	0x20003c00
200010f8:	40088000 	.word	0x40088000
200010fc:	ae000011 	.word	0xae000011

20001100 <NVIC_EnableIRQ>:
20001100:	b480      	push	{r7}
20001102:	b083      	sub	sp, #12
20001104:	af00      	add	r7, sp, #0
20001106:	4603      	mov	r3, r0
20001108:	71fb      	strb	r3, [r7, #7]
2000110a:	4908      	ldr	r1, [pc, #32]	; (2000112c <NVIC_EnableIRQ+0x2c>)
2000110c:	f997 3007 	ldrsb.w	r3, [r7, #7]
20001110:	095b      	lsrs	r3, r3, #5
20001112:	79fa      	ldrb	r2, [r7, #7]
20001114:	f002 021f 	and.w	r2, r2, #31
20001118:	2001      	movs	r0, #1
2000111a:	fa00 f202 	lsl.w	r2, r0, r2
2000111e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20001122:	bf00      	nop
20001124:	370c      	adds	r7, #12
20001126:	46bd      	mov	sp, r7
20001128:	bc80      	pop	{r7}
2000112a:	4770      	bx	lr
2000112c:	e000e100 	.word	0xe000e100

20001130 <PortConfig>:
20001130:	b480      	push	{r7}
20001132:	af00      	add	r7, sp, #0
20001134:	4a66      	ldr	r2, [pc, #408]	; (200012d0 <PortConfig+0x1a0>)
20001136:	4b66      	ldr	r3, [pc, #408]	; (200012d0 <PortConfig+0x1a0>)
20001138:	69db      	ldr	r3, [r3, #28]
2000113a:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
2000113e:	61d3      	str	r3, [r2, #28]
20001140:	4b64      	ldr	r3, [pc, #400]	; (200012d4 <PortConfig+0x1a4>)
20001142:	2200      	movs	r2, #0
20001144:	609a      	str	r2, [r3, #8]
20001146:	4b63      	ldr	r3, [pc, #396]	; (200012d4 <PortConfig+0x1a4>)
20001148:	2200      	movs	r2, #0
2000114a:	601a      	str	r2, [r3, #0]
2000114c:	4a61      	ldr	r2, [pc, #388]	; (200012d4 <PortConfig+0x1a4>)
2000114e:	4b61      	ldr	r3, [pc, #388]	; (200012d4 <PortConfig+0x1a4>)
20001150:	685b      	ldr	r3, [r3, #4]
20001152:	f043 0301 	orr.w	r3, r3, #1
20001156:	6053      	str	r3, [r2, #4]
20001158:	4a5e      	ldr	r2, [pc, #376]	; (200012d4 <PortConfig+0x1a4>)
2000115a:	4b5e      	ldr	r3, [pc, #376]	; (200012d4 <PortConfig+0x1a4>)
2000115c:	68db      	ldr	r3, [r3, #12]
2000115e:	f043 0301 	orr.w	r3, r3, #1
20001162:	60d3      	str	r3, [r2, #12]
20001164:	4a5b      	ldr	r2, [pc, #364]	; (200012d4 <PortConfig+0x1a4>)
20001166:	4b5b      	ldr	r3, [pc, #364]	; (200012d4 <PortConfig+0x1a4>)
20001168:	699b      	ldr	r3, [r3, #24]
2000116a:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
2000116e:	6193      	str	r3, [r2, #24]
20001170:	4a58      	ldr	r2, [pc, #352]	; (200012d4 <PortConfig+0x1a4>)
20001172:	4b58      	ldr	r3, [pc, #352]	; (200012d4 <PortConfig+0x1a4>)
20001174:	685b      	ldr	r3, [r3, #4]
20001176:	f023 0308 	bic.w	r3, r3, #8
2000117a:	6053      	str	r3, [r2, #4]
2000117c:	4a55      	ldr	r2, [pc, #340]	; (200012d4 <PortConfig+0x1a4>)
2000117e:	4b55      	ldr	r3, [pc, #340]	; (200012d4 <PortConfig+0x1a4>)
20001180:	68db      	ldr	r3, [r3, #12]
20001182:	f043 0308 	orr.w	r3, r3, #8
20001186:	60d3      	str	r3, [r2, #12]
20001188:	4b52      	ldr	r3, [pc, #328]	; (200012d4 <PortConfig+0x1a4>)
2000118a:	2280      	movs	r2, #128	; 0x80
2000118c:	609a      	str	r2, [r3, #8]
2000118e:	4a50      	ldr	r2, [pc, #320]	; (200012d0 <PortConfig+0x1a0>)
20001190:	4b4f      	ldr	r3, [pc, #316]	; (200012d0 <PortConfig+0x1a0>)
20001192:	69db      	ldr	r3, [r3, #28]
20001194:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20001198:	61d3      	str	r3, [r2, #28]
2000119a:	4a4f      	ldr	r2, [pc, #316]	; (200012d8 <PortConfig+0x1a8>)
2000119c:	4b4e      	ldr	r3, [pc, #312]	; (200012d8 <PortConfig+0x1a8>)
2000119e:	689b      	ldr	r3, [r3, #8]
200011a0:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
200011a4:	6093      	str	r3, [r2, #8]
200011a6:	4a4c      	ldr	r2, [pc, #304]	; (200012d8 <PortConfig+0x1a8>)
200011a8:	4b4b      	ldr	r3, [pc, #300]	; (200012d8 <PortConfig+0x1a8>)
200011aa:	689b      	ldr	r3, [r3, #8]
200011ac:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
200011b0:	6093      	str	r3, [r2, #8]
200011b2:	4a49      	ldr	r2, [pc, #292]	; (200012d8 <PortConfig+0x1a8>)
200011b4:	4b48      	ldr	r3, [pc, #288]	; (200012d8 <PortConfig+0x1a8>)
200011b6:	68db      	ldr	r3, [r3, #12]
200011b8:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
200011bc:	60d3      	str	r3, [r2, #12]
200011be:	4a46      	ldr	r2, [pc, #280]	; (200012d8 <PortConfig+0x1a8>)
200011c0:	4b45      	ldr	r3, [pc, #276]	; (200012d8 <PortConfig+0x1a8>)
200011c2:	699b      	ldr	r3, [r3, #24]
200011c4:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
200011c8:	6193      	str	r3, [r2, #24]
200011ca:	4a43      	ldr	r2, [pc, #268]	; (200012d8 <PortConfig+0x1a8>)
200011cc:	4b42      	ldr	r3, [pc, #264]	; (200012d8 <PortConfig+0x1a8>)
200011ce:	685b      	ldr	r3, [r3, #4]
200011d0:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
200011d4:	6053      	str	r3, [r2, #4]
200011d6:	4a40      	ldr	r2, [pc, #256]	; (200012d8 <PortConfig+0x1a8>)
200011d8:	4b3f      	ldr	r3, [pc, #252]	; (200012d8 <PortConfig+0x1a8>)
200011da:	685b      	ldr	r3, [r3, #4]
200011dc:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
200011e0:	6053      	str	r3, [r2, #4]
200011e2:	4a3d      	ldr	r2, [pc, #244]	; (200012d8 <PortConfig+0x1a8>)
200011e4:	4b3c      	ldr	r3, [pc, #240]	; (200012d8 <PortConfig+0x1a8>)
200011e6:	689b      	ldr	r3, [r3, #8]
200011e8:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
200011ec:	6093      	str	r3, [r2, #8]
200011ee:	4a3a      	ldr	r2, [pc, #232]	; (200012d8 <PortConfig+0x1a8>)
200011f0:	4b39      	ldr	r3, [pc, #228]	; (200012d8 <PortConfig+0x1a8>)
200011f2:	689b      	ldr	r3, [r3, #8]
200011f4:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
200011f8:	6093      	str	r3, [r2, #8]
200011fa:	4a37      	ldr	r2, [pc, #220]	; (200012d8 <PortConfig+0x1a8>)
200011fc:	4b36      	ldr	r3, [pc, #216]	; (200012d8 <PortConfig+0x1a8>)
200011fe:	68db      	ldr	r3, [r3, #12]
20001200:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001204:	60d3      	str	r3, [r2, #12]
20001206:	4a34      	ldr	r2, [pc, #208]	; (200012d8 <PortConfig+0x1a8>)
20001208:	4b33      	ldr	r3, [pc, #204]	; (200012d8 <PortConfig+0x1a8>)
2000120a:	699b      	ldr	r3, [r3, #24]
2000120c:	f443 5370 	orr.w	r3, r3, #15360	; 0x3c00
20001210:	6193      	str	r3, [r2, #24]
20001212:	4a2f      	ldr	r2, [pc, #188]	; (200012d0 <PortConfig+0x1a0>)
20001214:	4b2e      	ldr	r3, [pc, #184]	; (200012d0 <PortConfig+0x1a0>)
20001216:	69db      	ldr	r3, [r3, #28]
20001218:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
2000121c:	61d3      	str	r3, [r2, #28]
2000121e:	4b2f      	ldr	r3, [pc, #188]	; (200012dc <PortConfig+0x1ac>)
20001220:	4a2f      	ldr	r2, [pc, #188]	; (200012e0 <PortConfig+0x1b0>)
20001222:	609a      	str	r2, [r3, #8]
20001224:	4b2d      	ldr	r3, [pc, #180]	; (200012dc <PortConfig+0x1ac>)
20001226:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000122a:	60da      	str	r2, [r3, #12]
2000122c:	4b2b      	ldr	r3, [pc, #172]	; (200012dc <PortConfig+0x1ac>)
2000122e:	f04f 32ff 	mov.w	r2, #4294967295
20001232:	619a      	str	r2, [r3, #24]
20001234:	4b29      	ldr	r3, [pc, #164]	; (200012dc <PortConfig+0x1ac>)
20001236:	f64f 72ff 	movw	r2, #65535	; 0xffff
2000123a:	605a      	str	r2, [r3, #4]
2000123c:	4a27      	ldr	r2, [pc, #156]	; (200012dc <PortConfig+0x1ac>)
2000123e:	4b27      	ldr	r3, [pc, #156]	; (200012dc <PortConfig+0x1ac>)
20001240:	681b      	ldr	r3, [r3, #0]
20001242:	f023 0303 	bic.w	r3, r3, #3
20001246:	6013      	str	r3, [r2, #0]
20001248:	4a24      	ldr	r2, [pc, #144]	; (200012dc <PortConfig+0x1ac>)
2000124a:	4b24      	ldr	r3, [pc, #144]	; (200012dc <PortConfig+0x1ac>)
2000124c:	681b      	ldr	r3, [r3, #0]
2000124e:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001252:	6013      	str	r3, [r2, #0]
20001254:	4a1e      	ldr	r2, [pc, #120]	; (200012d0 <PortConfig+0x1a0>)
20001256:	4b1e      	ldr	r3, [pc, #120]	; (200012d0 <PortConfig+0x1a0>)
20001258:	69db      	ldr	r3, [r3, #28]
2000125a:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
2000125e:	61d3      	str	r3, [r2, #28]
20001260:	4b20      	ldr	r3, [pc, #128]	; (200012e4 <PortConfig+0x1b4>)
20001262:	2200      	movs	r2, #0
20001264:	609a      	str	r2, [r3, #8]
20001266:	4a1f      	ldr	r2, [pc, #124]	; (200012e4 <PortConfig+0x1b4>)
20001268:	4b1e      	ldr	r3, [pc, #120]	; (200012e4 <PortConfig+0x1b4>)
2000126a:	685b      	ldr	r3, [r3, #4]
2000126c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001270:	6053      	str	r3, [r2, #4]
20001272:	4a1c      	ldr	r2, [pc, #112]	; (200012e4 <PortConfig+0x1b4>)
20001274:	4b1b      	ldr	r3, [pc, #108]	; (200012e4 <PortConfig+0x1b4>)
20001276:	68db      	ldr	r3, [r3, #12]
20001278:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000127c:	60d3      	str	r3, [r2, #12]
2000127e:	4b19      	ldr	r3, [pc, #100]	; (200012e4 <PortConfig+0x1b4>)
20001280:	f04f 32ff 	mov.w	r2, #4294967295
20001284:	619a      	str	r2, [r3, #24]
20001286:	4a17      	ldr	r2, [pc, #92]	; (200012e4 <PortConfig+0x1b4>)
20001288:	4b16      	ldr	r3, [pc, #88]	; (200012e4 <PortConfig+0x1b4>)
2000128a:	681b      	ldr	r3, [r3, #0]
2000128c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001290:	6013      	str	r3, [r2, #0]
20001292:	4a0f      	ldr	r2, [pc, #60]	; (200012d0 <PortConfig+0x1a0>)
20001294:	4b0e      	ldr	r3, [pc, #56]	; (200012d0 <PortConfig+0x1a0>)
20001296:	69db      	ldr	r3, [r3, #28]
20001298:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
2000129c:	61d3      	str	r3, [r2, #28]
2000129e:	4a12      	ldr	r2, [pc, #72]	; (200012e8 <PortConfig+0x1b8>)
200012a0:	4b11      	ldr	r3, [pc, #68]	; (200012e8 <PortConfig+0x1b8>)
200012a2:	68db      	ldr	r3, [r3, #12]
200012a4:	f423 7300 	bic.w	r3, r3, #512	; 0x200
200012a8:	f023 0301 	bic.w	r3, r3, #1
200012ac:	60d3      	str	r3, [r2, #12]
200012ae:	4a08      	ldr	r2, [pc, #32]	; (200012d0 <PortConfig+0x1a0>)
200012b0:	4b07      	ldr	r3, [pc, #28]	; (200012d0 <PortConfig+0x1a0>)
200012b2:	69db      	ldr	r3, [r3, #28]
200012b4:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
200012b8:	61d3      	str	r3, [r2, #28]
200012ba:	4a0c      	ldr	r2, [pc, #48]	; (200012ec <PortConfig+0x1bc>)
200012bc:	4b0b      	ldr	r3, [pc, #44]	; (200012ec <PortConfig+0x1bc>)
200012be:	68db      	ldr	r3, [r3, #12]
200012c0:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
200012c4:	60d3      	str	r3, [r2, #12]
200012c6:	bf00      	nop
200012c8:	46bd      	mov	sp, r7
200012ca:	bc80      	pop	{r7}
200012cc:	4770      	bx	lr
200012ce:	bf00      	nop
200012d0:	40020000 	.word	0x40020000
200012d4:	400a8000 	.word	0x400a8000
200012d8:	400b0000 	.word	0x400b0000
200012dc:	400b8000 	.word	0x400b8000
200012e0:	000aaaa0 	.word	0x000aaaa0
200012e4:	400e8000 	.word	0x400e8000
200012e8:	400c8000 	.word	0x400c8000
200012ec:	400c0000 	.word	0x400c0000

200012f0 <ClkConfig>:
200012f0:	b480      	push	{r7}
200012f2:	af00      	add	r7, sp, #0
200012f4:	4a16      	ldr	r2, [pc, #88]	; (20001350 <ClkConfig+0x60>)
200012f6:	4b16      	ldr	r3, [pc, #88]	; (20001350 <ClkConfig+0x60>)
200012f8:	689b      	ldr	r3, [r3, #8]
200012fa:	f043 0301 	orr.w	r3, r3, #1
200012fe:	6093      	str	r3, [r2, #8]
20001300:	bf00      	nop
20001302:	4b13      	ldr	r3, [pc, #76]	; (20001350 <ClkConfig+0x60>)
20001304:	681b      	ldr	r3, [r3, #0]
20001306:	f003 0304 	and.w	r3, r3, #4
2000130a:	2b00      	cmp	r3, #0
2000130c:	d0f9      	beq.n	20001302 <ClkConfig+0x12>
2000130e:	4b10      	ldr	r3, [pc, #64]	; (20001350 <ClkConfig+0x60>)
20001310:	2206      	movs	r2, #6
20001312:	60da      	str	r2, [r3, #12]
20001314:	4b0e      	ldr	r3, [pc, #56]	; (20001350 <ClkConfig+0x60>)
20001316:	f640 1204 	movw	r2, #2308	; 0x904
2000131a:	605a      	str	r2, [r3, #4]
2000131c:	bf00      	nop
2000131e:	4b0c      	ldr	r3, [pc, #48]	; (20001350 <ClkConfig+0x60>)
20001320:	681b      	ldr	r3, [r3, #0]
20001322:	f003 0302 	and.w	r3, r3, #2
20001326:	2b00      	cmp	r3, #0
20001328:	d0f9      	beq.n	2000131e <ClkConfig+0x2e>
2000132a:	4a09      	ldr	r2, [pc, #36]	; (20001350 <ClkConfig+0x60>)
2000132c:	4b08      	ldr	r3, [pc, #32]	; (20001350 <ClkConfig+0x60>)
2000132e:	68db      	ldr	r3, [r3, #12]
20001330:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001334:	60d3      	str	r3, [r2, #12]
20001336:	4a07      	ldr	r2, [pc, #28]	; (20001354 <ClkConfig+0x64>)
20001338:	4b06      	ldr	r3, [pc, #24]	; (20001354 <ClkConfig+0x64>)
2000133a:	681b      	ldr	r3, [r3, #0]
2000133c:	f043 0320 	orr.w	r3, r3, #32
20001340:	6013      	str	r3, [r2, #0]
20001342:	4b05      	ldr	r3, [pc, #20]	; (20001358 <ClkConfig+0x68>)
20001344:	2200      	movs	r2, #0
20001346:	601a      	str	r2, [r3, #0]
20001348:	bf00      	nop
2000134a:	46bd      	mov	sp, r7
2000134c:	bc80      	pop	{r7}
2000134e:	4770      	bx	lr
20001350:	40020000 	.word	0x40020000
20001354:	40018000 	.word	0x40018000
20001358:	20003900 	.word	0x20003900

2000135c <TimerConfig>:
2000135c:	b580      	push	{r7, lr}
2000135e:	af00      	add	r7, sp, #0
20001360:	4a8a      	ldr	r2, [pc, #552]	; (2000158c <TimerConfig+0x230>)
20001362:	4b8a      	ldr	r3, [pc, #552]	; (2000158c <TimerConfig+0x230>)
20001364:	69db      	ldr	r3, [r3, #28]
20001366:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
2000136a:	61d3      	str	r3, [r2, #28]
2000136c:	4a87      	ldr	r2, [pc, #540]	; (2000158c <TimerConfig+0x230>)
2000136e:	4b87      	ldr	r3, [pc, #540]	; (2000158c <TimerConfig+0x230>)
20001370:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001372:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
20001376:	6253      	str	r3, [r2, #36]	; 0x24
20001378:	4a84      	ldr	r2, [pc, #528]	; (2000158c <TimerConfig+0x230>)
2000137a:	4b84      	ldr	r3, [pc, #528]	; (2000158c <TimerConfig+0x230>)
2000137c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000137e:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001382:	6253      	str	r3, [r2, #36]	; 0x24
20001384:	4b82      	ldr	r3, [pc, #520]	; (20001590 <TimerConfig+0x234>)
20001386:	2200      	movs	r2, #0
20001388:	601a      	str	r2, [r3, #0]
2000138a:	4b81      	ldr	r3, [pc, #516]	; (20001590 <TimerConfig+0x234>)
2000138c:	224f      	movs	r2, #79	; 0x4f
2000138e:	605a      	str	r2, [r3, #4]
20001390:	4b7f      	ldr	r3, [pc, #508]	; (20001590 <TimerConfig+0x234>)
20001392:	f240 32e7 	movw	r2, #999	; 0x3e7
20001396:	609a      	str	r2, [r3, #8]
20001398:	4a7d      	ldr	r2, [pc, #500]	; (20001590 <TimerConfig+0x234>)
2000139a:	4b7d      	ldr	r3, [pc, #500]	; (20001590 <TimerConfig+0x234>)
2000139c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000139e:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
200013a2:	6253      	str	r3, [r2, #36]	; 0x24
200013a4:	4a7a      	ldr	r2, [pc, #488]	; (20001590 <TimerConfig+0x234>)
200013a6:	4b7a      	ldr	r3, [pc, #488]	; (20001590 <TimerConfig+0x234>)
200013a8:	6d9b      	ldr	r3, [r3, #88]	; 0x58
200013aa:	f043 0302 	orr.w	r3, r3, #2
200013ae:	6593      	str	r3, [r2, #88]	; 0x58
200013b0:	4b77      	ldr	r3, [pc, #476]	; (20001590 <TimerConfig+0x234>)
200013b2:	2201      	movs	r2, #1
200013b4:	60da      	str	r2, [r3, #12]
200013b6:	4a75      	ldr	r2, [pc, #468]	; (2000158c <TimerConfig+0x230>)
200013b8:	4b74      	ldr	r3, [pc, #464]	; (2000158c <TimerConfig+0x230>)
200013ba:	69db      	ldr	r3, [r3, #28]
200013bc:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
200013c0:	61d3      	str	r3, [r2, #28]
200013c2:	4a72      	ldr	r2, [pc, #456]	; (2000158c <TimerConfig+0x230>)
200013c4:	4b71      	ldr	r3, [pc, #452]	; (2000158c <TimerConfig+0x230>)
200013c6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200013c8:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
200013cc:	6253      	str	r3, [r2, #36]	; 0x24
200013ce:	4a6f      	ldr	r2, [pc, #444]	; (2000158c <TimerConfig+0x230>)
200013d0:	4b6e      	ldr	r3, [pc, #440]	; (2000158c <TimerConfig+0x230>)
200013d2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200013d4:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
200013d8:	6253      	str	r3, [r2, #36]	; 0x24
200013da:	4b6e      	ldr	r3, [pc, #440]	; (20001594 <TimerConfig+0x238>)
200013dc:	2200      	movs	r2, #0
200013de:	601a      	str	r2, [r3, #0]
200013e0:	4b6c      	ldr	r3, [pc, #432]	; (20001594 <TimerConfig+0x238>)
200013e2:	2202      	movs	r2, #2
200013e4:	605a      	str	r2, [r3, #4]
200013e6:	4b6b      	ldr	r3, [pc, #428]	; (20001594 <TimerConfig+0x238>)
200013e8:	f240 32ff 	movw	r2, #1023	; 0x3ff
200013ec:	609a      	str	r2, [r3, #8]
200013ee:	4b69      	ldr	r3, [pc, #420]	; (20001594 <TimerConfig+0x238>)
200013f0:	f44f 7200 	mov.w	r2, #512	; 0x200
200013f4:	611a      	str	r2, [r3, #16]
200013f6:	4b67      	ldr	r3, [pc, #412]	; (20001594 <TimerConfig+0x238>)
200013f8:	f44f 7200 	mov.w	r2, #512	; 0x200
200013fc:	615a      	str	r2, [r3, #20]
200013fe:	4b65      	ldr	r3, [pc, #404]	; (20001594 <TimerConfig+0x238>)
20001400:	f44f 7200 	mov.w	r2, #512	; 0x200
20001404:	619a      	str	r2, [r3, #24]
20001406:	4a63      	ldr	r2, [pc, #396]	; (20001594 <TimerConfig+0x238>)
20001408:	4b62      	ldr	r3, [pc, #392]	; (20001594 <TimerConfig+0x238>)
2000140a:	6a1b      	ldr	r3, [r3, #32]
2000140c:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001410:	6213      	str	r3, [r2, #32]
20001412:	4a60      	ldr	r2, [pc, #384]	; (20001594 <TimerConfig+0x238>)
20001414:	4b5f      	ldr	r3, [pc, #380]	; (20001594 <TimerConfig+0x238>)
20001416:	6a1b      	ldr	r3, [r3, #32]
20001418:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
2000141c:	6213      	str	r3, [r2, #32]
2000141e:	4a5d      	ldr	r2, [pc, #372]	; (20001594 <TimerConfig+0x238>)
20001420:	4b5c      	ldr	r3, [pc, #368]	; (20001594 <TimerConfig+0x238>)
20001422:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001424:	f023 030f 	bic.w	r3, r3, #15
20001428:	6313      	str	r3, [r2, #48]	; 0x30
2000142a:	4a5a      	ldr	r2, [pc, #360]	; (20001594 <TimerConfig+0x238>)
2000142c:	4b59      	ldr	r3, [pc, #356]	; (20001594 <TimerConfig+0x238>)
2000142e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001430:	f043 030c 	orr.w	r3, r3, #12
20001434:	6313      	str	r3, [r2, #48]	; 0x30
20001436:	4a57      	ldr	r2, [pc, #348]	; (20001594 <TimerConfig+0x238>)
20001438:	4b56      	ldr	r3, [pc, #344]	; (20001594 <TimerConfig+0x238>)
2000143a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000143c:	f043 0301 	orr.w	r3, r3, #1
20001440:	6313      	str	r3, [r2, #48]	; 0x30
20001442:	4a54      	ldr	r2, [pc, #336]	; (20001594 <TimerConfig+0x238>)
20001444:	4b53      	ldr	r3, [pc, #332]	; (20001594 <TimerConfig+0x238>)
20001446:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001448:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
2000144c:	6313      	str	r3, [r2, #48]	; 0x30
2000144e:	4a51      	ldr	r2, [pc, #324]	; (20001594 <TimerConfig+0x238>)
20001450:	4b50      	ldr	r3, [pc, #320]	; (20001594 <TimerConfig+0x238>)
20001452:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001454:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001458:	6313      	str	r3, [r2, #48]	; 0x30
2000145a:	4a4e      	ldr	r2, [pc, #312]	; (20001594 <TimerConfig+0x238>)
2000145c:	4b4d      	ldr	r3, [pc, #308]	; (20001594 <TimerConfig+0x238>)
2000145e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001460:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001464:	6313      	str	r3, [r2, #48]	; 0x30
20001466:	4a4b      	ldr	r2, [pc, #300]	; (20001594 <TimerConfig+0x238>)
20001468:	4b4a      	ldr	r3, [pc, #296]	; (20001594 <TimerConfig+0x238>)
2000146a:	6e1b      	ldr	r3, [r3, #96]	; 0x60
2000146c:	f043 0308 	orr.w	r3, r3, #8
20001470:	6613      	str	r3, [r2, #96]	; 0x60
20001472:	4a48      	ldr	r2, [pc, #288]	; (20001594 <TimerConfig+0x238>)
20001474:	4b47      	ldr	r3, [pc, #284]	; (20001594 <TimerConfig+0x238>)
20001476:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001478:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
2000147c:	6253      	str	r3, [r2, #36]	; 0x24
2000147e:	4a45      	ldr	r2, [pc, #276]	; (20001594 <TimerConfig+0x238>)
20001480:	4b44      	ldr	r3, [pc, #272]	; (20001594 <TimerConfig+0x238>)
20001482:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001484:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001488:	6253      	str	r3, [r2, #36]	; 0x24
2000148a:	4a42      	ldr	r2, [pc, #264]	; (20001594 <TimerConfig+0x238>)
2000148c:	4b41      	ldr	r3, [pc, #260]	; (20001594 <TimerConfig+0x238>)
2000148e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001490:	f023 030f 	bic.w	r3, r3, #15
20001494:	6353      	str	r3, [r2, #52]	; 0x34
20001496:	4a3f      	ldr	r2, [pc, #252]	; (20001594 <TimerConfig+0x238>)
20001498:	4b3e      	ldr	r3, [pc, #248]	; (20001594 <TimerConfig+0x238>)
2000149a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000149c:	f043 030c 	orr.w	r3, r3, #12
200014a0:	6353      	str	r3, [r2, #52]	; 0x34
200014a2:	4a3c      	ldr	r2, [pc, #240]	; (20001594 <TimerConfig+0x238>)
200014a4:	4b3b      	ldr	r3, [pc, #236]	; (20001594 <TimerConfig+0x238>)
200014a6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200014a8:	f043 0301 	orr.w	r3, r3, #1
200014ac:	6353      	str	r3, [r2, #52]	; 0x34
200014ae:	4a39      	ldr	r2, [pc, #228]	; (20001594 <TimerConfig+0x238>)
200014b0:	4b38      	ldr	r3, [pc, #224]	; (20001594 <TimerConfig+0x238>)
200014b2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200014b4:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200014b8:	6353      	str	r3, [r2, #52]	; 0x34
200014ba:	4a36      	ldr	r2, [pc, #216]	; (20001594 <TimerConfig+0x238>)
200014bc:	4b35      	ldr	r3, [pc, #212]	; (20001594 <TimerConfig+0x238>)
200014be:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200014c0:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200014c4:	6353      	str	r3, [r2, #52]	; 0x34
200014c6:	4a33      	ldr	r2, [pc, #204]	; (20001594 <TimerConfig+0x238>)
200014c8:	4b32      	ldr	r3, [pc, #200]	; (20001594 <TimerConfig+0x238>)
200014ca:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200014cc:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200014d0:	6353      	str	r3, [r2, #52]	; 0x34
200014d2:	4a30      	ldr	r2, [pc, #192]	; (20001594 <TimerConfig+0x238>)
200014d4:	4b2f      	ldr	r3, [pc, #188]	; (20001594 <TimerConfig+0x238>)
200014d6:	6e5b      	ldr	r3, [r3, #100]	; 0x64
200014d8:	f043 0308 	orr.w	r3, r3, #8
200014dc:	6653      	str	r3, [r2, #100]	; 0x64
200014de:	4a2d      	ldr	r2, [pc, #180]	; (20001594 <TimerConfig+0x238>)
200014e0:	4b2c      	ldr	r3, [pc, #176]	; (20001594 <TimerConfig+0x238>)
200014e2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200014e4:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200014e8:	6293      	str	r3, [r2, #40]	; 0x28
200014ea:	4a2a      	ldr	r2, [pc, #168]	; (20001594 <TimerConfig+0x238>)
200014ec:	4b29      	ldr	r3, [pc, #164]	; (20001594 <TimerConfig+0x238>)
200014ee:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200014f0:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200014f4:	6293      	str	r3, [r2, #40]	; 0x28
200014f6:	4a27      	ldr	r2, [pc, #156]	; (20001594 <TimerConfig+0x238>)
200014f8:	4b26      	ldr	r3, [pc, #152]	; (20001594 <TimerConfig+0x238>)
200014fa:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200014fc:	f023 030f 	bic.w	r3, r3, #15
20001500:	6393      	str	r3, [r2, #56]	; 0x38
20001502:	4a24      	ldr	r2, [pc, #144]	; (20001594 <TimerConfig+0x238>)
20001504:	4b23      	ldr	r3, [pc, #140]	; (20001594 <TimerConfig+0x238>)
20001506:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001508:	f043 030c 	orr.w	r3, r3, #12
2000150c:	6393      	str	r3, [r2, #56]	; 0x38
2000150e:	4a21      	ldr	r2, [pc, #132]	; (20001594 <TimerConfig+0x238>)
20001510:	4b20      	ldr	r3, [pc, #128]	; (20001594 <TimerConfig+0x238>)
20001512:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001514:	f043 0301 	orr.w	r3, r3, #1
20001518:	6393      	str	r3, [r2, #56]	; 0x38
2000151a:	4a1e      	ldr	r2, [pc, #120]	; (20001594 <TimerConfig+0x238>)
2000151c:	4b1d      	ldr	r3, [pc, #116]	; (20001594 <TimerConfig+0x238>)
2000151e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001520:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001524:	6393      	str	r3, [r2, #56]	; 0x38
20001526:	4a1b      	ldr	r2, [pc, #108]	; (20001594 <TimerConfig+0x238>)
20001528:	4b1a      	ldr	r3, [pc, #104]	; (20001594 <TimerConfig+0x238>)
2000152a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000152c:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001530:	6393      	str	r3, [r2, #56]	; 0x38
20001532:	4a18      	ldr	r2, [pc, #96]	; (20001594 <TimerConfig+0x238>)
20001534:	4b17      	ldr	r3, [pc, #92]	; (20001594 <TimerConfig+0x238>)
20001536:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001538:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000153c:	6393      	str	r3, [r2, #56]	; 0x38
2000153e:	4a15      	ldr	r2, [pc, #84]	; (20001594 <TimerConfig+0x238>)
20001540:	4b14      	ldr	r3, [pc, #80]	; (20001594 <TimerConfig+0x238>)
20001542:	6e9b      	ldr	r3, [r3, #104]	; 0x68
20001544:	f043 0308 	orr.w	r3, r3, #8
20001548:	6693      	str	r3, [r2, #104]	; 0x68
2000154a:	4a12      	ldr	r2, [pc, #72]	; (20001594 <TimerConfig+0x238>)
2000154c:	4b11      	ldr	r3, [pc, #68]	; (20001594 <TimerConfig+0x238>)
2000154e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001550:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001554:	6413      	str	r3, [r2, #64]	; 0x40
20001556:	4a0f      	ldr	r2, [pc, #60]	; (20001594 <TimerConfig+0x238>)
20001558:	4b0e      	ldr	r3, [pc, #56]	; (20001594 <TimerConfig+0x238>)
2000155a:	6c5b      	ldr	r3, [r3, #68]	; 0x44
2000155c:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001560:	6453      	str	r3, [r2, #68]	; 0x44
20001562:	4a0c      	ldr	r2, [pc, #48]	; (20001594 <TimerConfig+0x238>)
20001564:	4b0b      	ldr	r3, [pc, #44]	; (20001594 <TimerConfig+0x238>)
20001566:	6c9b      	ldr	r3, [r3, #72]	; 0x48
20001568:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
2000156c:	6493      	str	r3, [r2, #72]	; 0x48
2000156e:	4a09      	ldr	r2, [pc, #36]	; (20001594 <TimerConfig+0x238>)
20001570:	4b08      	ldr	r3, [pc, #32]	; (20001594 <TimerConfig+0x238>)
20001572:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001574:	f043 0302 	orr.w	r3, r3, #2
20001578:	6593      	str	r3, [r2, #88]	; 0x58
2000157a:	2010      	movs	r0, #16
2000157c:	f7ff fdc0 	bl	20001100 <NVIC_EnableIRQ>
20001580:	4b04      	ldr	r3, [pc, #16]	; (20001594 <TimerConfig+0x238>)
20001582:	2201      	movs	r2, #1
20001584:	60da      	str	r2, [r3, #12]
20001586:	bf00      	nop
20001588:	bd80      	pop	{r7, pc}
2000158a:	bf00      	nop
2000158c:	40020000 	.word	0x40020000
20001590:	40070000 	.word	0x40070000
20001594:	40080000 	.word	0x40080000

20001598 <set_ram_vt>:
20001598:	b480      	push	{r7}
2000159a:	b085      	sub	sp, #20
2000159c:	af00      	add	r7, sp, #0
2000159e:	2300      	movs	r3, #0
200015a0:	60fb      	str	r3, [r7, #12]
200015a2:	2300      	movs	r3, #0
200015a4:	607b      	str	r3, [r7, #4]
200015a6:	4b14      	ldr	r3, [pc, #80]	; (200015f8 <set_ram_vt+0x60>)
200015a8:	60bb      	str	r3, [r7, #8]
200015aa:	2300      	movs	r3, #0
200015ac:	60fb      	str	r3, [r7, #12]
200015ae:	e00b      	b.n	200015c8 <set_ram_vt+0x30>
200015b0:	68bb      	ldr	r3, [r7, #8]
200015b2:	1d1a      	adds	r2, r3, #4
200015b4:	60ba      	str	r2, [r7, #8]
200015b6:	68fa      	ldr	r2, [r7, #12]
200015b8:	0092      	lsls	r2, r2, #2
200015ba:	6879      	ldr	r1, [r7, #4]
200015bc:	440a      	add	r2, r1
200015be:	6812      	ldr	r2, [r2, #0]
200015c0:	601a      	str	r2, [r3, #0]
200015c2:	68fb      	ldr	r3, [r7, #12]
200015c4:	3301      	adds	r3, #1
200015c6:	60fb      	str	r3, [r7, #12]
200015c8:	68fb      	ldr	r3, [r7, #12]
200015ca:	2b2f      	cmp	r3, #47	; 0x2f
200015cc:	d9f0      	bls.n	200015b0 <set_ram_vt+0x18>
200015ce:	4b0b      	ldr	r3, [pc, #44]	; (200015fc <set_ram_vt+0x64>)
200015d0:	4a09      	ldr	r2, [pc, #36]	; (200015f8 <set_ram_vt+0x60>)
200015d2:	609a      	str	r2, [r3, #8]
200015d4:	4b08      	ldr	r3, [pc, #32]	; (200015f8 <set_ram_vt+0x60>)
200015d6:	4a0a      	ldr	r2, [pc, #40]	; (20001600 <set_ram_vt+0x68>)
200015d8:	63da      	str	r2, [r3, #60]	; 0x3c
200015da:	4b07      	ldr	r3, [pc, #28]	; (200015f8 <set_ram_vt+0x60>)
200015dc:	4a09      	ldr	r2, [pc, #36]	; (20001604 <set_ram_vt+0x6c>)
200015de:	659a      	str	r2, [r3, #88]	; 0x58
200015e0:	4b05      	ldr	r3, [pc, #20]	; (200015f8 <set_ram_vt+0x60>)
200015e2:	4a09      	ldr	r2, [pc, #36]	; (20001608 <set_ram_vt+0x70>)
200015e4:	679a      	str	r2, [r3, #120]	; 0x78
200015e6:	4b04      	ldr	r3, [pc, #16]	; (200015f8 <set_ram_vt+0x60>)
200015e8:	4a08      	ldr	r2, [pc, #32]	; (2000160c <set_ram_vt+0x74>)
200015ea:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
200015ee:	bf00      	nop
200015f0:	3714      	adds	r7, #20
200015f2:	46bd      	mov	sp, r7
200015f4:	bc80      	pop	{r7}
200015f6:	4770      	bx	lr
200015f8:	20003a00 	.word	0x20003a00
200015fc:	e000ed00 	.word	0xe000ed00
20001600:	200016c9 	.word	0x200016c9
20001604:	200016e5 	.word	0x200016e5
20001608:	20000489 	.word	0x20000489
2000160c:	200004a1 	.word	0x200004a1

20001610 <uart_init>:
20001610:	b480      	push	{r7}
20001612:	af00      	add	r7, sp, #0
20001614:	4b22      	ldr	r3, [pc, #136]	; (200016a0 <uart_init+0x90>)
20001616:	2200      	movs	r2, #0
20001618:	601a      	str	r2, [r3, #0]
2000161a:	4a22      	ldr	r2, [pc, #136]	; (200016a4 <uart_init+0x94>)
2000161c:	4b21      	ldr	r3, [pc, #132]	; (200016a4 <uart_init+0x94>)
2000161e:	69db      	ldr	r3, [r3, #28]
20001620:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001624:	61d3      	str	r3, [r2, #28]
20001626:	4a1f      	ldr	r2, [pc, #124]	; (200016a4 <uart_init+0x94>)
20001628:	4b1e      	ldr	r3, [pc, #120]	; (200016a4 <uart_init+0x94>)
2000162a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
2000162c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20001630:	6293      	str	r3, [r2, #40]	; 0x28
20001632:	4b1d      	ldr	r3, [pc, #116]	; (200016a8 <uart_init+0x98>)
20001634:	2204      	movs	r2, #4
20001636:	625a      	str	r2, [r3, #36]	; 0x24
20001638:	4b1b      	ldr	r3, [pc, #108]	; (200016a8 <uart_init+0x98>)
2000163a:	2200      	movs	r2, #0
2000163c:	629a      	str	r2, [r3, #40]	; 0x28
2000163e:	4a1a      	ldr	r2, [pc, #104]	; (200016a8 <uart_init+0x98>)
20001640:	4b19      	ldr	r3, [pc, #100]	; (200016a8 <uart_init+0x98>)
20001642:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001644:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
20001648:	6353      	str	r3, [r2, #52]	; 0x34
2000164a:	4a17      	ldr	r2, [pc, #92]	; (200016a8 <uart_init+0x98>)
2000164c:	4b16      	ldr	r3, [pc, #88]	; (200016a8 <uart_init+0x98>)
2000164e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001650:	f043 0312 	orr.w	r3, r3, #18
20001654:	6353      	str	r3, [r2, #52]	; 0x34
20001656:	4a14      	ldr	r2, [pc, #80]	; (200016a8 <uart_init+0x98>)
20001658:	4b13      	ldr	r3, [pc, #76]	; (200016a8 <uart_init+0x98>)
2000165a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
2000165c:	f043 0310 	orr.w	r3, r3, #16
20001660:	62d3      	str	r3, [r2, #44]	; 0x2c
20001662:	4a11      	ldr	r2, [pc, #68]	; (200016a8 <uart_init+0x98>)
20001664:	4b10      	ldr	r3, [pc, #64]	; (200016a8 <uart_init+0x98>)
20001666:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001668:	f043 0360 	orr.w	r3, r3, #96	; 0x60
2000166c:	62d3      	str	r3, [r2, #44]	; 0x2c
2000166e:	4a0e      	ldr	r2, [pc, #56]	; (200016a8 <uart_init+0x98>)
20001670:	4b0d      	ldr	r3, [pc, #52]	; (200016a8 <uart_init+0x98>)
20001672:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001674:	f443 7340 	orr.w	r3, r3, #768	; 0x300
20001678:	f043 0301 	orr.w	r3, r3, #1
2000167c:	6313      	str	r3, [r2, #48]	; 0x30
2000167e:	4a0a      	ldr	r2, [pc, #40]	; (200016a8 <uart_init+0x98>)
20001680:	4b09      	ldr	r3, [pc, #36]	; (200016a8 <uart_init+0x98>)
20001682:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001684:	f043 0310 	orr.w	r3, r3, #16
20001688:	6393      	str	r3, [r2, #56]	; 0x38
2000168a:	4a07      	ldr	r2, [pc, #28]	; (200016a8 <uart_init+0x98>)
2000168c:	4b06      	ldr	r3, [pc, #24]	; (200016a8 <uart_init+0x98>)
2000168e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001690:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001694:	6393      	str	r3, [r2, #56]	; 0x38
20001696:	bf00      	nop
20001698:	46bd      	mov	sp, r7
2000169a:	bc80      	pop	{r7}
2000169c:	4770      	bx	lr
2000169e:	bf00      	nop
200016a0:	20003ad0 	.word	0x20003ad0
200016a4:	40020000 	.word	0x40020000
200016a8:	40030000 	.word	0x40030000

200016ac <system_init>:
200016ac:	b580      	push	{r7, lr}
200016ae:	af00      	add	r7, sp, #0
200016b0:	f7ff ff72 	bl	20001598 <set_ram_vt>
200016b4:	f7ff fe1c 	bl	200012f0 <ClkConfig>
200016b8:	f7ff fd3a 	bl	20001130 <PortConfig>
200016bc:	f7ff fe4e 	bl	2000135c <TimerConfig>
200016c0:	f7ff ffa6 	bl	20001610 <uart_init>
200016c4:	bf00      	nop
200016c6:	bd80      	pop	{r7, pc}

200016c8 <SysTick_Handler>:
200016c8:	b480      	push	{r7}
200016ca:	af00      	add	r7, sp, #0
200016cc:	4b04      	ldr	r3, [pc, #16]	; (200016e0 <SysTick_Handler+0x18>)
200016ce:	681b      	ldr	r3, [r3, #0]
200016d0:	3301      	adds	r3, #1
200016d2:	4a03      	ldr	r2, [pc, #12]	; (200016e0 <SysTick_Handler+0x18>)
200016d4:	6013      	str	r3, [r2, #0]
200016d6:	bf00      	nop
200016d8:	46bd      	mov	sp, r7
200016da:	bc80      	pop	{r7}
200016dc:	4770      	bx	lr
200016de:	bf00      	nop
200016e0:	20003900 	.word	0x20003900

200016e4 <UART1_Handler>:
200016e4:	b480      	push	{r7}
200016e6:	b083      	sub	sp, #12
200016e8:	af00      	add	r7, sp, #0
200016ea:	4b1d      	ldr	r3, [pc, #116]	; (20001760 <UART1_Handler+0x7c>)
200016ec:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200016ee:	f003 0310 	and.w	r3, r3, #16
200016f2:	2b00      	cmp	r3, #0
200016f4:	d01f      	beq.n	20001736 <UART1_Handler+0x52>
200016f6:	e002      	b.n	200016fe <UART1_Handler+0x1a>
200016f8:	4b19      	ldr	r3, [pc, #100]	; (20001760 <UART1_Handler+0x7c>)
200016fa:	681b      	ldr	r3, [r3, #0]
200016fc:	71fb      	strb	r3, [r7, #7]
200016fe:	4b18      	ldr	r3, [pc, #96]	; (20001760 <UART1_Handler+0x7c>)
20001700:	699b      	ldr	r3, [r3, #24]
20001702:	f003 0310 	and.w	r3, r3, #16
20001706:	2b00      	cmp	r3, #0
20001708:	d0f6      	beq.n	200016f8 <UART1_Handler+0x14>
2000170a:	4b16      	ldr	r3, [pc, #88]	; (20001764 <UART1_Handler+0x80>)
2000170c:	681b      	ldr	r3, [r3, #0]
2000170e:	80bb      	strh	r3, [r7, #4]
20001710:	4b14      	ldr	r3, [pc, #80]	; (20001764 <UART1_Handler+0x80>)
20001712:	689b      	ldr	r3, [r3, #8]
20001714:	085b      	lsrs	r3, r3, #1
20001716:	807b      	strh	r3, [r7, #2]
20001718:	88ba      	ldrh	r2, [r7, #4]
2000171a:	887b      	ldrh	r3, [r7, #2]
2000171c:	429a      	cmp	r2, r3
2000171e:	d205      	bcs.n	2000172c <UART1_Handler+0x48>
20001720:	4a10      	ldr	r2, [pc, #64]	; (20001764 <UART1_Handler+0x80>)
20001722:	4b10      	ldr	r3, [pc, #64]	; (20001764 <UART1_Handler+0x80>)
20001724:	681b      	ldr	r3, [r3, #0]
20001726:	3b01      	subs	r3, #1
20001728:	6013      	str	r3, [r2, #0]
2000172a:	e004      	b.n	20001736 <UART1_Handler+0x52>
2000172c:	4a0d      	ldr	r2, [pc, #52]	; (20001764 <UART1_Handler+0x80>)
2000172e:	4b0d      	ldr	r3, [pc, #52]	; (20001764 <UART1_Handler+0x80>)
20001730:	681b      	ldr	r3, [r3, #0]
20001732:	3301      	adds	r3, #1
20001734:	6013      	str	r3, [r2, #0]
20001736:	4b0a      	ldr	r3, [pc, #40]	; (20001760 <UART1_Handler+0x7c>)
20001738:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000173a:	f003 0340 	and.w	r3, r3, #64	; 0x40
2000173e:	2b00      	cmp	r3, #0
20001740:	d009      	beq.n	20001756 <UART1_Handler+0x72>
20001742:	e002      	b.n	2000174a <UART1_Handler+0x66>
20001744:	4b06      	ldr	r3, [pc, #24]	; (20001760 <UART1_Handler+0x7c>)
20001746:	681b      	ldr	r3, [r3, #0]
20001748:	707b      	strb	r3, [r7, #1]
2000174a:	4b05      	ldr	r3, [pc, #20]	; (20001760 <UART1_Handler+0x7c>)
2000174c:	699b      	ldr	r3, [r3, #24]
2000174e:	f003 0310 	and.w	r3, r3, #16
20001752:	2b00      	cmp	r3, #0
20001754:	d0f6      	beq.n	20001744 <UART1_Handler+0x60>
20001756:	bf00      	nop
20001758:	370c      	adds	r7, #12
2000175a:	46bd      	mov	sp, r7
2000175c:	bc80      	pop	{r7}
2000175e:	4770      	bx	lr
20001760:	40030000 	.word	0x40030000
20001764:	40070000 	.word	0x40070000
