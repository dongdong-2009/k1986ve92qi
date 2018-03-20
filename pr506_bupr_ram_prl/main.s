
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
20000032:	f001 fac1 	bl	200015b8 <system_init>
20000036:	f000 f96f 	bl	20000318 <ssi_init>
2000003a:	f000 f9e1 	bl	20000400 <dac_init>
2000003e:	f000 ffa3 	bl	20000f88 <adc_dma_init>
20000042:	f107 0348 	add.w	r3, r7, #72	; 0x48
20000046:	22c8      	movs	r2, #200	; 0xc8
20000048:	2150      	movs	r1, #80	; 0x50
2000004a:	4618      	mov	r0, r3
2000004c:	f000 fade 	bl	2000060c <reg_init>
20000050:	f107 0338 	add.w	r3, r7, #56	; 0x38
20000054:	22c8      	movs	r2, #200	; 0xc8
20000056:	2150      	movs	r1, #80	; 0x50
20000058:	4618      	mov	r0, r3
2000005a:	f000 fad7 	bl	2000060c <reg_init>
2000005e:	f107 0328 	add.w	r3, r7, #40	; 0x28
20000062:	f241 3288 	movw	r2, #5000	; 0x1388
20000066:	2100      	movs	r1, #0
20000068:	4618      	mov	r0, r3
2000006a:	f000 facf 	bl	2000060c <reg_init>
2000006e:	f107 0318 	add.w	r3, r7, #24
20000072:	f241 7270 	movw	r2, #6000	; 0x1770
20000076:	2100      	movs	r1, #0
20000078:	4618      	mov	r0, r3
2000007a:	f000 fac7 	bl	2000060c <reg_init>
2000007e:	2300      	movs	r3, #0
20000080:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
20000084:	2300      	movs	r3, #0
20000086:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
2000008a:	4b8d      	ldr	r3, [pc, #564]	; (200002c0 <main+0x2c0>)
2000008c:	2200      	movs	r2, #0
2000008e:	601a      	str	r2, [r3, #0]
20000090:	2300      	movs	r3, #0
20000092:	f8c7 3094 	str.w	r3, [r7, #148]	; 0x94
20000096:	e028      	b.n	200000ea <main+0xea>
20000098:	f000 ff92 	bl	20000fc0 <adc_dma_wait>
2000009c:	4b89      	ldr	r3, [pc, #548]	; (200002c4 <main+0x2c4>)
2000009e:	685b      	ldr	r3, [r3, #4]
200000a0:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000a4:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
200000a8:	4413      	add	r3, r2
200000aa:	f8c7 3090 	str.w	r3, [r7, #144]	; 0x90
200000ae:	4b85      	ldr	r3, [pc, #532]	; (200002c4 <main+0x2c4>)
200000b0:	681b      	ldr	r3, [r3, #0]
200000b2:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000b6:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
200000ba:	4413      	add	r3, r2
200000bc:	f8c7 308c 	str.w	r3, [r7, #140]	; 0x8c
200000c0:	4b81      	ldr	r3, [pc, #516]	; (200002c8 <main+0x2c8>)
200000c2:	689b      	ldr	r3, [r3, #8]
200000c4:	4618      	mov	r0, r3
200000c6:	f000 f971 	bl	200003ac <enc_crc>
200000ca:	4602      	mov	r2, r0
200000cc:	4b7c      	ldr	r3, [pc, #496]	; (200002c0 <main+0x2c0>)
200000ce:	681b      	ldr	r3, [r3, #0]
200000d0:	4413      	add	r3, r2
200000d2:	461a      	mov	r2, r3
200000d4:	4b7a      	ldr	r3, [pc, #488]	; (200002c0 <main+0x2c0>)
200000d6:	601a      	str	r2, [r3, #0]
200000d8:	2100      	movs	r1, #0
200000da:	2000      	movs	r0, #0
200000dc:	f000 fe7c 	bl	20000dd8 <mfilter>
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
20000108:	4b6d      	ldr	r3, [pc, #436]	; (200002c0 <main+0x2c0>)
2000010a:	681b      	ldr	r3, [r3, #0]
2000010c:	129b      	asrs	r3, r3, #10
2000010e:	4a6c      	ldr	r2, [pc, #432]	; (200002c0 <main+0x2c0>)
20000110:	6013      	str	r3, [r2, #0]
20000112:	4b6e      	ldr	r3, [pc, #440]	; (200002cc <main+0x2cc>)
20000114:	2200      	movs	r2, #0
20000116:	601a      	str	r2, [r3, #0]
20000118:	4b69      	ldr	r3, [pc, #420]	; (200002c0 <main+0x2c0>)
2000011a:	681b      	ldr	r3, [r3, #0]
2000011c:	4a6c      	ldr	r2, [pc, #432]	; (200002d0 <main+0x2d0>)
2000011e:	6013      	str	r3, [r2, #0]
20000120:	4b67      	ldr	r3, [pc, #412]	; (200002c0 <main+0x2c0>)
20000122:	681b      	ldr	r3, [r3, #0]
20000124:	4618      	mov	r0, r3
20000126:	f000 fe2f 	bl	20000d88 <encoder_init>
2000012a:	4b6a      	ldr	r3, [pc, #424]	; (200002d4 <main+0x2d4>)
2000012c:	2200      	movs	r2, #0
2000012e:	601a      	str	r2, [r3, #0]
20000130:	f000 ff46 	bl	20000fc0 <adc_dma_wait>
20000134:	4b63      	ldr	r3, [pc, #396]	; (200002c4 <main+0x2c4>)
20000136:	685b      	ldr	r3, [r3, #4]
20000138:	f3c3 020b 	ubfx	r2, r3, #0, #12
2000013c:	f8d7 3090 	ldr.w	r3, [r7, #144]	; 0x90
20000140:	1ad3      	subs	r3, r2, r3
20000142:	677b      	str	r3, [r7, #116]	; 0x74
20000144:	4b5f      	ldr	r3, [pc, #380]	; (200002c4 <main+0x2c4>)
20000146:	681b      	ldr	r3, [r3, #0]
20000148:	f3c3 020b 	ubfx	r2, r3, #0, #12
2000014c:	f8d7 308c 	ldr.w	r3, [r7, #140]	; 0x8c
20000150:	1ad3      	subs	r3, r2, r3
20000152:	673b      	str	r3, [r7, #112]	; 0x70
20000154:	6f7a      	ldr	r2, [r7, #116]	; 0x74
20000156:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20000158:	4413      	add	r3, r2
2000015a:	66fb      	str	r3, [r7, #108]	; 0x6c
2000015c:	4b5a      	ldr	r3, [pc, #360]	; (200002c8 <main+0x2c8>)
2000015e:	689b      	ldr	r3, [r3, #8]
20000160:	4618      	mov	r0, r3
20000162:	f000 f923 	bl	200003ac <enc_crc>
20000166:	66b8      	str	r0, [r7, #104]	; 0x68
20000168:	6ebb      	ldr	r3, [r7, #104]	; 0x68
2000016a:	f3c3 0309 	ubfx	r3, r3, #0, #10
2000016e:	67bb      	str	r3, [r7, #120]	; 0x78
20000170:	4a59      	ldr	r2, [pc, #356]	; (200002d8 <main+0x2d8>)
20000172:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20000174:	6093      	str	r3, [r2, #8]
20000176:	4a59      	ldr	r2, [pc, #356]	; (200002dc <main+0x2dc>)
20000178:	6ebb      	ldr	r3, [r7, #104]	; 0x68
2000017a:	6013      	str	r3, [r2, #0]
2000017c:	4b58      	ldr	r3, [pc, #352]	; (200002e0 <main+0x2e0>)
2000017e:	681b      	ldr	r3, [r3, #0]
20000180:	3301      	adds	r3, #1
20000182:	4a57      	ldr	r2, [pc, #348]	; (200002e0 <main+0x2e0>)
20000184:	6013      	str	r3, [r2, #0]
20000186:	4b56      	ldr	r3, [pc, #344]	; (200002e0 <main+0x2e0>)
20000188:	681b      	ldr	r3, [r3, #0]
2000018a:	f003 0307 	and.w	r3, r3, #7
2000018e:	2b00      	cmp	r3, #0
20000190:	d139      	bne.n	20000206 <main+0x206>
20000192:	f000 fa1d 	bl	200005d0 <update_refposition>
20000196:	4602      	mov	r2, r0
20000198:	4b49      	ldr	r3, [pc, #292]	; (200002c0 <main+0x2c0>)
2000019a:	681b      	ldr	r3, [r3, #0]
2000019c:	4413      	add	r3, r2
2000019e:	4a4b      	ldr	r2, [pc, #300]	; (200002cc <main+0x2cc>)
200001a0:	6013      	str	r3, [r2, #0]
200001a2:	6ebb      	ldr	r3, [r7, #104]	; 0x68
200001a4:	494a      	ldr	r1, [pc, #296]	; (200002d0 <main+0x2d0>)
200001a6:	4618      	mov	r0, r3
200001a8:	f000 fdf4 	bl	20000d94 <get_speed>
200001ac:	6678      	str	r0, [r7, #100]	; 0x64
200001ae:	4b47      	ldr	r3, [pc, #284]	; (200002cc <main+0x2cc>)
200001b0:	681a      	ldr	r2, [r3, #0]
200001b2:	4b47      	ldr	r3, [pc, #284]	; (200002d0 <main+0x2d0>)
200001b4:	681b      	ldr	r3, [r3, #0]
200001b6:	1ad1      	subs	r1, r2, r3
200001b8:	f107 0318 	add.w	r3, r7, #24
200001bc:	2200      	movs	r2, #0
200001be:	4618      	mov	r0, r3
200001c0:	f000 fa2a 	bl	20000618 <reg_update>
200001c4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
200001c6:	131b      	asrs	r3, r3, #12
200001c8:	67fb      	str	r3, [r7, #124]	; 0x7c
200001ca:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
200001cc:	6e7b      	ldr	r3, [r7, #100]	; 0x64
200001ce:	1ad1      	subs	r1, r2, r3
200001d0:	f107 0328 	add.w	r3, r7, #40	; 0x28
200001d4:	2200      	movs	r2, #0
200001d6:	4618      	mov	r0, r3
200001d8:	f000 fa1e 	bl	20000618 <reg_update>
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
20000200:	4b38      	ldr	r3, [pc, #224]	; (200002e4 <main+0x2e4>)
20000202:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
20000206:	f000 f981 	bl	2000050c <update_telemetry>
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
2000022c:	f000 fa1a 	bl	20000664 <abc_to_dq>
20000230:	693b      	ldr	r3, [r7, #16]
20000232:	ea83 72e3 	eor.w	r2, r3, r3, asr #31
20000236:	eba2 72e3 	sub.w	r2, r2, r3, asr #31
2000023a:	697b      	ldr	r3, [r7, #20]
2000023c:	2b00      	cmp	r3, #0
2000023e:	bfb8      	it	lt
20000240:	425b      	neglt	r3, r3
20000242:	4413      	add	r3, r2
20000244:	663b      	str	r3, [r7, #96]	; 0x60
20000246:	4b23      	ldr	r3, [pc, #140]	; (200002d4 <main+0x2d4>)
20000248:	681b      	ldr	r3, [r3, #0]
2000024a:	4619      	mov	r1, r3
2000024c:	6e38      	ldr	r0, [r7, #96]	; 0x60
2000024e:	f000 fdc3 	bl	20000dd8 <mfilter>
20000252:	4602      	mov	r2, r0
20000254:	4b1f      	ldr	r3, [pc, #124]	; (200002d4 <main+0x2d4>)
20000256:	601a      	str	r2, [r3, #0]
20000258:	693b      	ldr	r3, [r7, #16]
2000025a:	425b      	negs	r3, r3
2000025c:	65fb      	str	r3, [r7, #92]	; 0x5c
2000025e:	697b      	ldr	r3, [r7, #20]
20000260:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
20000264:	1ad3      	subs	r3, r2, r3
20000266:	65bb      	str	r3, [r7, #88]	; 0x58
20000268:	f107 0348 	add.w	r3, r7, #72	; 0x48
2000026c:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
20000270:	6df9      	ldr	r1, [r7, #92]	; 0x5c
20000272:	4618      	mov	r0, r3
20000274:	f000 f9d0 	bl	20000618 <reg_update>
20000278:	f107 0338 	add.w	r3, r7, #56	; 0x38
2000027c:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
20000280:	6db9      	ldr	r1, [r7, #88]	; 0x58
20000282:	4618      	mov	r0, r3
20000284:	f000 f9c8 	bl	20000618 <reg_update>
20000288:	6d7b      	ldr	r3, [r7, #84]	; 0x54
2000028a:	109b      	asrs	r3, r3, #2
2000028c:	613b      	str	r3, [r7, #16]
2000028e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
20000290:	109b      	asrs	r3, r3, #2
20000292:	617b      	str	r3, [r7, #20]
20000294:	6fba      	ldr	r2, [r7, #120]	; 0x78
20000296:	f107 0110 	add.w	r1, r7, #16
2000029a:	1d3b      	adds	r3, r7, #4
2000029c:	4618      	mov	r0, r3
2000029e:	f000 fbf9 	bl	20000a94 <svpwm>
200002a2:	f8c7 0088 	str.w	r0, [r7, #136]	; 0x88
200002a6:	687b      	ldr	r3, [r7, #4]
200002a8:	4618      	mov	r0, r3
200002aa:	f000 f8ff 	bl	200004ac <pwm_seta>
200002ae:	68bb      	ldr	r3, [r7, #8]
200002b0:	4618      	mov	r0, r3
200002b2:	f000 f90b 	bl	200004cc <pwm_setb>
200002b6:	68fb      	ldr	r3, [r7, #12]
200002b8:	4618      	mov	r0, r3
200002ba:	f000 f917 	bl	200004ec <pwm_setc>
200002be:	e737      	b.n	20000130 <main+0x130>
200002c0:	2000270c 	.word	0x2000270c
200002c4:	20003e00 	.word	0x20003e00
200002c8:	40040000 	.word	0x40040000
200002cc:	20002700 	.word	0x20002700
200002d0:	20002724 	.word	0x20002724
200002d4:	2000272c 	.word	0x2000272c
200002d8:	40090000 	.word	0x40090000
200002dc:	20002728 	.word	0x20002728
200002e0:	20002714 	.word	0x20002714
200002e4:	fffffc18 	.word	0xfffffc18

200002e8 <sleep>:
200002e8:	b480      	push	{r7}
200002ea:	b085      	sub	sp, #20
200002ec:	af00      	add	r7, sp, #0
200002ee:	6078      	str	r0, [r7, #4]
200002f0:	4b08      	ldr	r3, [pc, #32]	; (20000314 <sleep+0x2c>)
200002f2:	681a      	ldr	r2, [r3, #0]
200002f4:	687b      	ldr	r3, [r7, #4]
200002f6:	4413      	add	r3, r2
200002f8:	60fb      	str	r3, [r7, #12]
200002fa:	bf00      	nop
200002fc:	4b05      	ldr	r3, [pc, #20]	; (20000314 <sleep+0x2c>)
200002fe:	681a      	ldr	r2, [r3, #0]
20000300:	68fb      	ldr	r3, [r7, #12]
20000302:	429a      	cmp	r2, r3
20000304:	d3fa      	bcc.n	200002fc <sleep+0x14>
20000306:	bf00      	nop
20000308:	4618      	mov	r0, r3
2000030a:	3714      	adds	r7, #20
2000030c:	46bd      	mov	sp, r7
2000030e:	bc80      	pop	{r7}
20000310:	4770      	bx	lr
20000312:	bf00      	nop
20000314:	20003800 	.word	0x20003800

20000318 <ssi_init>:
20000318:	b480      	push	{r7}
2000031a:	af00      	add	r7, sp, #0
2000031c:	4a0c      	ldr	r2, [pc, #48]	; (20000350 <ssi_init+0x38>)
2000031e:	4b0c      	ldr	r3, [pc, #48]	; (20000350 <ssi_init+0x38>)
20000320:	69db      	ldr	r3, [r3, #28]
20000322:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20000326:	61d3      	str	r3, [r2, #28]
20000328:	4b09      	ldr	r3, [pc, #36]	; (20000350 <ssi_init+0x38>)
2000032a:	4a0a      	ldr	r2, [pc, #40]	; (20000354 <ssi_init+0x3c>)
2000032c:	62da      	str	r2, [r3, #44]	; 0x2c
2000032e:	4b0a      	ldr	r3, [pc, #40]	; (20000358 <ssi_init+0x40>)
20000330:	2200      	movs	r2, #0
20000332:	605a      	str	r2, [r3, #4]
20000334:	4b08      	ldr	r3, [pc, #32]	; (20000358 <ssi_init+0x40>)
20000336:	220a      	movs	r2, #10
20000338:	611a      	str	r2, [r3, #16]
2000033a:	4b07      	ldr	r3, [pc, #28]	; (20000358 <ssi_init+0x40>)
2000033c:	f240 221f 	movw	r2, #543	; 0x21f
20000340:	601a      	str	r2, [r3, #0]
20000342:	4b05      	ldr	r3, [pc, #20]	; (20000358 <ssi_init+0x40>)
20000344:	2202      	movs	r2, #2
20000346:	605a      	str	r2, [r3, #4]
20000348:	bf00      	nop
2000034a:	46bd      	mov	sp, r7
2000034c:	bc80      	pop	{r7}
2000034e:	4770      	bx	lr
20000350:	40020000 	.word	0x40020000
20000354:	0100000a 	.word	0x0100000a
20000358:	40040000 	.word	0x40040000

2000035c <b2g>:
2000035c:	b480      	push	{r7}
2000035e:	b083      	sub	sp, #12
20000360:	af00      	add	r7, sp, #0
20000362:	6078      	str	r0, [r7, #4]
20000364:	687b      	ldr	r3, [r7, #4]
20000366:	085a      	lsrs	r2, r3, #1
20000368:	687b      	ldr	r3, [r7, #4]
2000036a:	4053      	eors	r3, r2
2000036c:	4618      	mov	r0, r3
2000036e:	370c      	adds	r7, #12
20000370:	46bd      	mov	sp, r7
20000372:	bc80      	pop	{r7}
20000374:	4770      	bx	lr
20000376:	bf00      	nop

20000378 <g2b>:
20000378:	b480      	push	{r7}
2000037a:	b085      	sub	sp, #20
2000037c:	af00      	add	r7, sp, #0
2000037e:	6078      	str	r0, [r7, #4]
20000380:	2300      	movs	r3, #0
20000382:	60fb      	str	r3, [r7, #12]
20000384:	2300      	movs	r3, #0
20000386:	60fb      	str	r3, [r7, #12]
20000388:	e006      	b.n	20000398 <g2b+0x20>
2000038a:	68fa      	ldr	r2, [r7, #12]
2000038c:	687b      	ldr	r3, [r7, #4]
2000038e:	4053      	eors	r3, r2
20000390:	60fb      	str	r3, [r7, #12]
20000392:	687b      	ldr	r3, [r7, #4]
20000394:	085b      	lsrs	r3, r3, #1
20000396:	607b      	str	r3, [r7, #4]
20000398:	687b      	ldr	r3, [r7, #4]
2000039a:	2b00      	cmp	r3, #0
2000039c:	d1f5      	bne.n	2000038a <g2b+0x12>
2000039e:	68fb      	ldr	r3, [r7, #12]
200003a0:	4618      	mov	r0, r3
200003a2:	3714      	adds	r7, #20
200003a4:	46bd      	mov	sp, r7
200003a6:	bc80      	pop	{r7}
200003a8:	4770      	bx	lr
200003aa:	bf00      	nop

200003ac <enc_crc>:
200003ac:	b480      	push	{r7}
200003ae:	b085      	sub	sp, #20
200003b0:	af00      	add	r7, sp, #0
200003b2:	6078      	str	r0, [r7, #4]
200003b4:	687b      	ldr	r3, [r7, #4]
200003b6:	60bb      	str	r3, [r7, #8]
200003b8:	2300      	movs	r3, #0
200003ba:	60fb      	str	r3, [r7, #12]
200003bc:	e006      	b.n	200003cc <enc_crc+0x20>
200003be:	68fa      	ldr	r2, [r7, #12]
200003c0:	68bb      	ldr	r3, [r7, #8]
200003c2:	4053      	eors	r3, r2
200003c4:	60fb      	str	r3, [r7, #12]
200003c6:	68bb      	ldr	r3, [r7, #8]
200003c8:	085b      	lsrs	r3, r3, #1
200003ca:	60bb      	str	r3, [r7, #8]
200003cc:	68bb      	ldr	r3, [r7, #8]
200003ce:	2b00      	cmp	r3, #0
200003d0:	d1f5      	bne.n	200003be <enc_crc+0x12>
200003d2:	68fb      	ldr	r3, [r7, #12]
200003d4:	f003 0301 	and.w	r3, r3, #1
200003d8:	2b00      	cmp	r3, #0
200003da:	d107      	bne.n	200003ec <enc_crc+0x40>
200003dc:	687b      	ldr	r3, [r7, #4]
200003de:	f3c3 030b 	ubfx	r3, r3, #0, #12
200003e2:	4a06      	ldr	r2, [pc, #24]	; (200003fc <enc_crc+0x50>)
200003e4:	6013      	str	r3, [r2, #0]
200003e6:	4b05      	ldr	r3, [pc, #20]	; (200003fc <enc_crc+0x50>)
200003e8:	681b      	ldr	r3, [r3, #0]
200003ea:	2b00      	cmp	r3, #0
200003ec:	4b03      	ldr	r3, [pc, #12]	; (200003fc <enc_crc+0x50>)
200003ee:	681b      	ldr	r3, [r3, #0]
200003f0:	4618      	mov	r0, r3
200003f2:	3714      	adds	r7, #20
200003f4:	46bd      	mov	sp, r7
200003f6:	bc80      	pop	{r7}
200003f8:	4770      	bx	lr
200003fa:	bf00      	nop
200003fc:	2000273c 	.word	0x2000273c

20000400 <dac_init>:
20000400:	b480      	push	{r7}
20000402:	af00      	add	r7, sp, #0
20000404:	4a07      	ldr	r2, [pc, #28]	; (20000424 <dac_init+0x24>)
20000406:	4b07      	ldr	r3, [pc, #28]	; (20000424 <dac_init+0x24>)
20000408:	69db      	ldr	r3, [r3, #28]
2000040a:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
2000040e:	61d3      	str	r3, [r2, #28]
20000410:	4a05      	ldr	r2, [pc, #20]	; (20000428 <dac_init+0x28>)
20000412:	4b05      	ldr	r3, [pc, #20]	; (20000428 <dac_init+0x28>)
20000414:	681b      	ldr	r3, [r3, #0]
20000416:	f043 0308 	orr.w	r3, r3, #8
2000041a:	6013      	str	r3, [r2, #0]
2000041c:	bf00      	nop
2000041e:	46bd      	mov	sp, r7
20000420:	bc80      	pop	{r7}
20000422:	4770      	bx	lr
20000424:	40020000 	.word	0x40020000
20000428:	40090000 	.word	0x40090000

2000042c <encoder_start>:
2000042c:	b480      	push	{r7}
2000042e:	af00      	add	r7, sp, #0
20000430:	4b03      	ldr	r3, [pc, #12]	; (20000440 <encoder_start+0x14>)
20000432:	f240 5255 	movw	r2, #1365	; 0x555
20000436:	609a      	str	r2, [r3, #8]
20000438:	bf00      	nop
2000043a:	46bd      	mov	sp, r7
2000043c:	bc80      	pop	{r7}
2000043e:	4770      	bx	lr
20000440:	40040000 	.word	0x40040000

20000444 <TIMER1_Handler>:
20000444:	b480      	push	{r7}
20000446:	af00      	add	r7, sp, #0
20000448:	4b03      	ldr	r3, [pc, #12]	; (20000458 <TIMER1_Handler+0x14>)
2000044a:	2200      	movs	r2, #0
2000044c:	655a      	str	r2, [r3, #84]	; 0x54
2000044e:	bf00      	nop
20000450:	46bd      	mov	sp, r7
20000452:	bc80      	pop	{r7}
20000454:	4770      	bx	lr
20000456:	bf00      	nop
20000458:	40070000 	.word	0x40070000

2000045c <TIMER3_Handler>:
2000045c:	b580      	push	{r7, lr}
2000045e:	af00      	add	r7, sp, #0
20000460:	4b04      	ldr	r3, [pc, #16]	; (20000474 <TIMER3_Handler+0x18>)
20000462:	2200      	movs	r2, #0
20000464:	655a      	str	r2, [r3, #84]	; 0x54
20000466:	f7ff ffe1 	bl	2000042c <encoder_start>
2000046a:	f000 fd95 	bl	20000f98 <adc_dma_start>
2000046e:	bf00      	nop
20000470:	bd80      	pop	{r7, pc}
20000472:	bf00      	nop
20000474:	40080000 	.word	0x40080000

20000478 <get_phase>:
20000478:	b580      	push	{r7, lr}
2000047a:	af00      	add	r7, sp, #0
2000047c:	4b0a      	ldr	r3, [pc, #40]	; (200004a8 <get_phase+0x30>)
2000047e:	f240 5255 	movw	r2, #1365	; 0x555
20000482:	609a      	str	r2, [r3, #8]
20000484:	bf00      	nop
20000486:	4b08      	ldr	r3, [pc, #32]	; (200004a8 <get_phase+0x30>)
20000488:	68db      	ldr	r3, [r3, #12]
2000048a:	f003 0304 	and.w	r3, r3, #4
2000048e:	2b00      	cmp	r3, #0
20000490:	d0f9      	beq.n	20000486 <get_phase+0xe>
20000492:	4b05      	ldr	r3, [pc, #20]	; (200004a8 <get_phase+0x30>)
20000494:	689b      	ldr	r3, [r3, #8]
20000496:	f3c3 030b 	ubfx	r3, r3, #0, #12
2000049a:	4618      	mov	r0, r3
2000049c:	f7ff ff6c 	bl	20000378 <g2b>
200004a0:	4603      	mov	r3, r0
200004a2:	4618      	mov	r0, r3
200004a4:	bd80      	pop	{r7, pc}
200004a6:	bf00      	nop
200004a8:	40040000 	.word	0x40040000

200004ac <pwm_seta>:
200004ac:	b480      	push	{r7}
200004ae:	b083      	sub	sp, #12
200004b0:	af00      	add	r7, sp, #0
200004b2:	6078      	str	r0, [r7, #4]
200004b4:	4a04      	ldr	r2, [pc, #16]	; (200004c8 <pwm_seta+0x1c>)
200004b6:	687b      	ldr	r3, [r7, #4]
200004b8:	f503 7300 	add.w	r3, r3, #512	; 0x200
200004bc:	6113      	str	r3, [r2, #16]
200004be:	bf00      	nop
200004c0:	370c      	adds	r7, #12
200004c2:	46bd      	mov	sp, r7
200004c4:	bc80      	pop	{r7}
200004c6:	4770      	bx	lr
200004c8:	40080000 	.word	0x40080000

200004cc <pwm_setb>:
200004cc:	b480      	push	{r7}
200004ce:	b083      	sub	sp, #12
200004d0:	af00      	add	r7, sp, #0
200004d2:	6078      	str	r0, [r7, #4]
200004d4:	4a04      	ldr	r2, [pc, #16]	; (200004e8 <pwm_setb+0x1c>)
200004d6:	687b      	ldr	r3, [r7, #4]
200004d8:	f503 7300 	add.w	r3, r3, #512	; 0x200
200004dc:	6153      	str	r3, [r2, #20]
200004de:	bf00      	nop
200004e0:	370c      	adds	r7, #12
200004e2:	46bd      	mov	sp, r7
200004e4:	bc80      	pop	{r7}
200004e6:	4770      	bx	lr
200004e8:	40080000 	.word	0x40080000

200004ec <pwm_setc>:
200004ec:	b480      	push	{r7}
200004ee:	b083      	sub	sp, #12
200004f0:	af00      	add	r7, sp, #0
200004f2:	6078      	str	r0, [r7, #4]
200004f4:	4a04      	ldr	r2, [pc, #16]	; (20000508 <pwm_setc+0x1c>)
200004f6:	687b      	ldr	r3, [r7, #4]
200004f8:	f503 7300 	add.w	r3, r3, #512	; 0x200
200004fc:	6193      	str	r3, [r2, #24]
200004fe:	bf00      	nop
20000500:	370c      	adds	r7, #12
20000502:	46bd      	mov	sp, r7
20000504:	bc80      	pop	{r7}
20000506:	4770      	bx	lr
20000508:	40080000 	.word	0x40080000

2000050c <update_telemetry>:
2000050c:	b480      	push	{r7}
2000050e:	b083      	sub	sp, #12
20000510:	af00      	add	r7, sp, #0
20000512:	4b27      	ldr	r3, [pc, #156]	; (200005b0 <update_telemetry+0xa4>)
20000514:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20000516:	f003 0302 	and.w	r3, r3, #2
2000051a:	2b00      	cmp	r3, #0
2000051c:	d043      	beq.n	200005a6 <update_telemetry+0x9a>
2000051e:	4b24      	ldr	r3, [pc, #144]	; (200005b0 <update_telemetry+0xa4>)
20000520:	2200      	movs	r2, #0
20000522:	655a      	str	r2, [r3, #84]	; 0x54
20000524:	4b22      	ldr	r3, [pc, #136]	; (200005b0 <update_telemetry+0xa4>)
20000526:	695b      	ldr	r3, [r3, #20]
20000528:	b29b      	uxth	r3, r3
2000052a:	3b64      	subs	r3, #100	; 0x64
2000052c:	80fb      	strh	r3, [r7, #6]
2000052e:	88fb      	ldrh	r3, [r7, #6]
20000530:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
20000534:	d205      	bcs.n	20000542 <update_telemetry+0x36>
20000536:	4a1e      	ldr	r2, [pc, #120]	; (200005b0 <update_telemetry+0xa4>)
20000538:	4b1d      	ldr	r3, [pc, #116]	; (200005b0 <update_telemetry+0xa4>)
2000053a:	681b      	ldr	r3, [r3, #0]
2000053c:	3301      	adds	r3, #1
2000053e:	6013      	str	r3, [r2, #0]
20000540:	e004      	b.n	2000054c <update_telemetry+0x40>
20000542:	4a1b      	ldr	r2, [pc, #108]	; (200005b0 <update_telemetry+0xa4>)
20000544:	4b1a      	ldr	r3, [pc, #104]	; (200005b0 <update_telemetry+0xa4>)
20000546:	681b      	ldr	r3, [r3, #0]
20000548:	3b01      	subs	r3, #1
2000054a:	6013      	str	r3, [r2, #0]
2000054c:	4b19      	ldr	r3, [pc, #100]	; (200005b4 <update_telemetry+0xa8>)
2000054e:	681b      	ldr	r3, [r3, #0]
20000550:	b29a      	uxth	r2, r3
20000552:	4b19      	ldr	r3, [pc, #100]	; (200005b8 <update_telemetry+0xac>)
20000554:	681b      	ldr	r3, [r3, #0]
20000556:	b29b      	uxth	r3, r3
20000558:	1ad3      	subs	r3, r2, r3
2000055a:	b29b      	uxth	r3, r3
2000055c:	b21a      	sxth	r2, r3
2000055e:	4b17      	ldr	r3, [pc, #92]	; (200005bc <update_telemetry+0xb0>)
20000560:	801a      	strh	r2, [r3, #0]
20000562:	4b17      	ldr	r3, [pc, #92]	; (200005c0 <update_telemetry+0xb4>)
20000564:	681b      	ldr	r3, [r3, #0]
20000566:	b29a      	uxth	r2, r3
20000568:	4b13      	ldr	r3, [pc, #76]	; (200005b8 <update_telemetry+0xac>)
2000056a:	681b      	ldr	r3, [r3, #0]
2000056c:	b29b      	uxth	r3, r3
2000056e:	1ad3      	subs	r3, r2, r3
20000570:	b29b      	uxth	r3, r3
20000572:	b21a      	sxth	r2, r3
20000574:	4b11      	ldr	r3, [pc, #68]	; (200005bc <update_telemetry+0xb0>)
20000576:	805a      	strh	r2, [r3, #2]
20000578:	4b12      	ldr	r3, [pc, #72]	; (200005c4 <update_telemetry+0xb8>)
2000057a:	681b      	ldr	r3, [r3, #0]
2000057c:	129b      	asrs	r3, r3, #10
2000057e:	b29a      	uxth	r2, r3
20000580:	4b0e      	ldr	r3, [pc, #56]	; (200005bc <update_telemetry+0xb0>)
20000582:	809a      	strh	r2, [r3, #4]
20000584:	4b0d      	ldr	r3, [pc, #52]	; (200005bc <update_telemetry+0xb0>)
20000586:	2200      	movs	r2, #0
20000588:	80da      	strh	r2, [r3, #6]
2000058a:	4b0c      	ldr	r3, [pc, #48]	; (200005bc <update_telemetry+0xb0>)
2000058c:	603b      	str	r3, [r7, #0]
2000058e:	4b0e      	ldr	r3, [pc, #56]	; (200005c8 <update_telemetry+0xbc>)
20000590:	681b      	ldr	r3, [r3, #0]
20000592:	b21a      	sxth	r2, r3
20000594:	4b0d      	ldr	r3, [pc, #52]	; (200005cc <update_telemetry+0xc0>)
20000596:	801a      	strh	r2, [r3, #0]
20000598:	4b0c      	ldr	r3, [pc, #48]	; (200005cc <update_telemetry+0xc0>)
2000059a:	f9b3 3000 	ldrsh.w	r3, [r3]
2000059e:	111b      	asrs	r3, r3, #4
200005a0:	b21a      	sxth	r2, r3
200005a2:	4b0a      	ldr	r3, [pc, #40]	; (200005cc <update_telemetry+0xc0>)
200005a4:	801a      	strh	r2, [r3, #0]
200005a6:	bf00      	nop
200005a8:	370c      	adds	r7, #12
200005aa:	46bd      	mov	sp, r7
200005ac:	bc80      	pop	{r7}
200005ae:	4770      	bx	lr
200005b0:	40070000 	.word	0x40070000
200005b4:	20002700 	.word	0x20002700
200005b8:	2000270c 	.word	0x2000270c
200005bc:	20002730 	.word	0x20002730
200005c0:	20002724 	.word	0x20002724
200005c4:	2000272c 	.word	0x2000272c
200005c8:	400a8000 	.word	0x400a8000
200005cc:	20002738 	.word	0x20002738

200005d0 <update_refposition>:
200005d0:	b480      	push	{r7}
200005d2:	af00      	add	r7, sp, #0
200005d4:	4b03      	ldr	r3, [pc, #12]	; (200005e4 <update_refposition+0x14>)
200005d6:	f9b3 3000 	ldrsh.w	r3, [r3]
200005da:	4618      	mov	r0, r3
200005dc:	46bd      	mov	sp, r7
200005de:	bc80      	pop	{r7}
200005e0:	4770      	bx	lr
200005e2:	bf00      	nop
200005e4:	20002738 	.word	0x20002738

200005e8 <mycos>:
200005e8:	4b02      	ldr	r3, [pc, #8]	; (200005f4 <mycos+0xc>)
200005ea:	f3c0 0009 	ubfx	r0, r0, #0, #10
200005ee:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
200005f2:	4770      	bx	lr
200005f4:	200016b4 	.word	0x200016b4

200005f8 <mysin>:
200005f8:	4b03      	ldr	r3, [pc, #12]	; (20000608 <mysin+0x10>)
200005fa:	f500 7040 	add.w	r0, r0, #768	; 0x300
200005fe:	f3c0 0009 	ubfx	r0, r0, #0, #10
20000602:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20000606:	4770      	bx	lr
20000608:	200016b4 	.word	0x200016b4

2000060c <reg_init>:
2000060c:	2300      	movs	r3, #0
2000060e:	e880 000e 	stmia.w	r0, {r1, r2, r3}
20000612:	60c3      	str	r3, [r0, #12]
20000614:	4770      	bx	lr
20000616:	bf00      	nop

20000618 <reg_update>:
20000618:	6803      	ldr	r3, [r0, #0]
2000061a:	b410      	push	{r4}
2000061c:	fb03 f301 	mul.w	r3, r3, r1
20000620:	6884      	ldr	r4, [r0, #8]
20000622:	b11a      	cbz	r2, 2000062c <reg_update+0x14>
20000624:	2c00      	cmp	r4, #0
20000626:	dd09      	ble.n	2000063c <reg_update+0x24>
20000628:	ea03 73e3 	and.w	r3, r3, r3, asr #31
2000062c:	6842      	ldr	r2, [r0, #4]
2000062e:	4423      	add	r3, r4
20000630:	fb02 3101 	mla	r1, r2, r1, r3
20000634:	6083      	str	r3, [r0, #8]
20000636:	60c1      	str	r1, [r0, #12]
20000638:	bc10      	pop	{r4}
2000063a:	4770      	bx	lr
2000063c:	bf18      	it	ne
2000063e:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
20000642:	e7f3      	b.n	2000062c <reg_update+0x14>

20000644 <dot3>:
20000644:	b430      	push	{r4, r5}
20000646:	684b      	ldr	r3, [r1, #4]
20000648:	6844      	ldr	r4, [r0, #4]
2000064a:	6802      	ldr	r2, [r0, #0]
2000064c:	fb03 f304 	mul.w	r3, r3, r4
20000650:	680d      	ldr	r5, [r1, #0]
20000652:	6884      	ldr	r4, [r0, #8]
20000654:	fb05 3302 	mla	r3, r5, r2, r3
20000658:	6888      	ldr	r0, [r1, #8]
2000065a:	fb00 3004 	mla	r0, r0, r4, r3
2000065e:	bc30      	pop	{r4, r5}
20000660:	4770      	bx	lr
20000662:	bf00      	nop

20000664 <abc_to_dq>:
20000664:	b4f0      	push	{r4, r5, r6, r7}
20000666:	4c1d      	ldr	r4, [pc, #116]	; (200006dc <abc_to_dq+0x78>)
20000668:	6803      	ldr	r3, [r0, #0]
2000066a:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
2000066e:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
20000672:	fb03 f306 	mul.w	r3, r3, r6
20000676:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000067a:	6847      	ldr	r7, [r0, #4]
2000067c:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000680:	f202 1655 	addw	r6, r2, #341	; 0x155
20000684:	fb07 3305 	mla	r3, r7, r5, r3
20000688:	f3c6 0509 	ubfx	r5, r6, #0, #10
2000068c:	6887      	ldr	r7, [r0, #8]
2000068e:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000692:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
20000696:	fb07 3305 	mla	r3, r7, r5, r3
2000069a:	129b      	asrs	r3, r3, #10
2000069c:	600b      	str	r3, [r1, #0]
2000069e:	f3c6 0509 	ubfx	r5, r6, #0, #10
200006a2:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
200006a6:	6843      	ldr	r3, [r0, #4]
200006a8:	f502 7540 	add.w	r5, r2, #768	; 0x300
200006ac:	fb03 f306 	mul.w	r3, r3, r6
200006b0:	f3c5 0509 	ubfx	r5, r5, #0, #10
200006b4:	6806      	ldr	r6, [r0, #0]
200006b6:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200006ba:	f202 4255 	addw	r2, r2, #1109	; 0x455
200006be:	fb06 3305 	mla	r3, r6, r5, r3
200006c2:	f3c2 0209 	ubfx	r2, r2, #0, #10
200006c6:	6880      	ldr	r0, [r0, #8]
200006c8:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
200006cc:	bcf0      	pop	{r4, r5, r6, r7}
200006ce:	fb00 3302 	mla	r3, r0, r2, r3
200006d2:	425b      	negs	r3, r3
200006d4:	129b      	asrs	r3, r3, #10
200006d6:	604b      	str	r3, [r1, #4]
200006d8:	4770      	bx	lr
200006da:	bf00      	nop
200006dc:	200016b4 	.word	0x200016b4

200006e0 <dq_to_abc>:
200006e0:	4b1d      	ldr	r3, [pc, #116]	; (20000758 <dq_to_abc+0x78>)
200006e2:	b4f0      	push	{r4, r5, r6, r7}
200006e4:	680e      	ldr	r6, [r1, #0]
200006e6:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
200006ea:	f502 7540 	add.w	r5, r2, #768	; 0x300
200006ee:	fb04 f406 	mul.w	r4, r4, r6
200006f2:	f3c5 0509 	ubfx	r5, r5, #0, #10
200006f6:	684f      	ldr	r7, [r1, #4]
200006f8:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
200006fc:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
20000700:	fb07 4415 	mls	r4, r7, r5, r4
20000704:	1524      	asrs	r4, r4, #20
20000706:	6004      	str	r4, [r0, #0]
20000708:	f3c6 0509 	ubfx	r5, r6, #0, #10
2000070c:	680c      	ldr	r4, [r1, #0]
2000070e:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
20000712:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
20000716:	fb04 f406 	mul.w	r4, r4, r6
2000071a:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000071e:	684f      	ldr	r7, [r1, #4]
20000720:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000724:	f202 1655 	addw	r6, r2, #341	; 0x155
20000728:	fb07 4415 	mls	r4, r7, r5, r4
2000072c:	1524      	asrs	r4, r4, #20
2000072e:	6044      	str	r4, [r0, #4]
20000730:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000734:	680c      	ldr	r4, [r1, #0]
20000736:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
2000073a:	f202 4255 	addw	r2, r2, #1109	; 0x455
2000073e:	fb04 f405 	mul.w	r4, r4, r5
20000742:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000746:	6849      	ldr	r1, [r1, #4]
20000748:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
2000074c:	fb01 4312 	mls	r3, r1, r2, r4
20000750:	bcf0      	pop	{r4, r5, r6, r7}
20000752:	151b      	asrs	r3, r3, #20
20000754:	6083      	str	r3, [r0, #8]
20000756:	4770      	bx	lr
20000758:	200016b4 	.word	0x200016b4

2000075c <cord_atan>:
2000075c:	b5f0      	push	{r4, r5, r6, r7, lr}
2000075e:	b091      	sub	sp, #68	; 0x44
20000760:	46ee      	mov	lr, sp
20000762:	4684      	mov	ip, r0
20000764:	4e56      	ldr	r6, [pc, #344]	; (200008c0 <cord_atan+0x164>)
20000766:	460d      	mov	r5, r1
20000768:	4614      	mov	r4, r2
2000076a:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2000076c:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000770:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000774:	af08      	add	r7, sp, #32
20000776:	3610      	adds	r6, #16
20000778:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
2000077c:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2000077e:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000780:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000784:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000788:	f8dc 6000 	ldr.w	r6, [ip]
2000078c:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000790:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000794:	2b00      	cmp	r3, #0
20000796:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
2000079a:	9900      	ldr	r1, [sp, #0]
2000079c:	dd56      	ble.n	2000084c <cord_atan+0xf0>
2000079e:	18d0      	adds	r0, r2, r3
200007a0:	1a9b      	subs	r3, r3, r2
200007a2:	2b00      	cmp	r3, #0
200007a4:	d07a      	beq.n	2000089c <cord_atan+0x140>
200007a6:	9f01      	ldr	r7, [sp, #4]
200007a8:	dd54      	ble.n	20000854 <cord_atan+0xf8>
200007aa:	eb00 0263 	add.w	r2, r0, r3, asr #1
200007ae:	4439      	add	r1, r7
200007b0:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200007b4:	2b00      	cmp	r3, #0
200007b6:	d073      	beq.n	200008a0 <cord_atan+0x144>
200007b8:	9f02      	ldr	r7, [sp, #8]
200007ba:	dd51      	ble.n	20000860 <cord_atan+0x104>
200007bc:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200007c0:	4439      	add	r1, r7
200007c2:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200007c6:	2b00      	cmp	r3, #0
200007c8:	d06d      	beq.n	200008a6 <cord_atan+0x14a>
200007ca:	9f03      	ldr	r7, [sp, #12]
200007cc:	dd4e      	ble.n	2000086c <cord_atan+0x110>
200007ce:	eb00 02e3 	add.w	r2, r0, r3, asr #3
200007d2:	4439      	add	r1, r7
200007d4:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
200007d8:	2b00      	cmp	r3, #0
200007da:	d066      	beq.n	200008aa <cord_atan+0x14e>
200007dc:	9f04      	ldr	r7, [sp, #16]
200007de:	dd4b      	ble.n	20000878 <cord_atan+0x11c>
200007e0:	eb02 1023 	add.w	r0, r2, r3, asr #4
200007e4:	4439      	add	r1, r7
200007e6:	eba3 1322 	sub.w	r3, r3, r2, asr #4
200007ea:	2b00      	cmp	r3, #0
200007ec:	d060      	beq.n	200008b0 <cord_atan+0x154>
200007ee:	9f05      	ldr	r7, [sp, #20]
200007f0:	dd48      	ble.n	20000884 <cord_atan+0x128>
200007f2:	eb00 1263 	add.w	r2, r0, r3, asr #5
200007f6:	4439      	add	r1, r7
200007f8:	eba3 1360 	sub.w	r3, r3, r0, asr #5
200007fc:	2b00      	cmp	r3, #0
200007fe:	d059      	beq.n	200008b4 <cord_atan+0x158>
20000800:	9f06      	ldr	r7, [sp, #24]
20000802:	dd45      	ble.n	20000890 <cord_atan+0x134>
20000804:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000808:	4439      	add	r1, r7
2000080a:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
2000080e:	2b00      	cmp	r3, #0
20000810:	d053      	beq.n	200008ba <cord_atan+0x15e>
20000812:	9a07      	ldr	r2, [sp, #28]
20000814:	bfc7      	ittee	gt
20000816:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
2000081a:	1889      	addgt	r1, r1, r2
2000081c:	1a89      	suble	r1, r1, r2
2000081e:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000822:	2207      	movs	r2, #7
20000824:	ab10      	add	r3, sp, #64	; 0x40
20000826:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000082a:	f852 3c20 	ldr.w	r3, [r2, #-32]
2000082e:	2e00      	cmp	r6, #0
20000830:	fb03 f300 	mul.w	r3, r3, r0
20000834:	bfb8      	it	lt
20000836:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
2000083a:	2900      	cmp	r1, #0
2000083c:	bfb8      	it	lt
2000083e:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000842:	129b      	asrs	r3, r3, #10
20000844:	6029      	str	r1, [r5, #0]
20000846:	6023      	str	r3, [r4, #0]
20000848:	b011      	add	sp, #68	; 0x44
2000084a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2000084c:	1ad0      	subs	r0, r2, r3
2000084e:	4249      	negs	r1, r1
20000850:	4413      	add	r3, r2
20000852:	e7a6      	b.n	200007a2 <cord_atan+0x46>
20000854:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000858:	1bc9      	subs	r1, r1, r7
2000085a:	eb03 0360 	add.w	r3, r3, r0, asr #1
2000085e:	e7a9      	b.n	200007b4 <cord_atan+0x58>
20000860:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000864:	1bc9      	subs	r1, r1, r7
20000866:	eb03 03a2 	add.w	r3, r3, r2, asr #2
2000086a:	e7ac      	b.n	200007c6 <cord_atan+0x6a>
2000086c:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000870:	1bc9      	subs	r1, r1, r7
20000872:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000876:	e7af      	b.n	200007d8 <cord_atan+0x7c>
20000878:	eba2 1023 	sub.w	r0, r2, r3, asr #4
2000087c:	1bc9      	subs	r1, r1, r7
2000087e:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000882:	e7b2      	b.n	200007ea <cord_atan+0x8e>
20000884:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000888:	1bc9      	subs	r1, r1, r7
2000088a:	eb03 1360 	add.w	r3, r3, r0, asr #5
2000088e:	e7b5      	b.n	200007fc <cord_atan+0xa0>
20000890:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000894:	1bc9      	subs	r1, r1, r7
20000896:	eb03 13a2 	add.w	r3, r3, r2, asr #6
2000089a:	e7b8      	b.n	2000080e <cord_atan+0xb2>
2000089c:	461a      	mov	r2, r3
2000089e:	e7c1      	b.n	20000824 <cord_atan+0xc8>
200008a0:	4610      	mov	r0, r2
200008a2:	2201      	movs	r2, #1
200008a4:	e7be      	b.n	20000824 <cord_atan+0xc8>
200008a6:	2202      	movs	r2, #2
200008a8:	e7bc      	b.n	20000824 <cord_atan+0xc8>
200008aa:	4610      	mov	r0, r2
200008ac:	2203      	movs	r2, #3
200008ae:	e7b9      	b.n	20000824 <cord_atan+0xc8>
200008b0:	2204      	movs	r2, #4
200008b2:	e7b7      	b.n	20000824 <cord_atan+0xc8>
200008b4:	4610      	mov	r0, r2
200008b6:	2205      	movs	r2, #5
200008b8:	e7b4      	b.n	20000824 <cord_atan+0xc8>
200008ba:	2206      	movs	r2, #6
200008bc:	e7b2      	b.n	20000824 <cord_atan+0xc8>
200008be:	bf00      	nop
200008c0:	20001674 	.word	0x20001674

200008c4 <sinpwm>:
200008c4:	b5f0      	push	{r4, r5, r6, r7, lr}
200008c6:	b091      	sub	sp, #68	; 0x44
200008c8:	46ee      	mov	lr, sp
200008ca:	468c      	mov	ip, r1
200008cc:	4e6e      	ldr	r6, [pc, #440]	; (20000a88 <sinpwm+0x1c4>)
200008ce:	4604      	mov	r4, r0
200008d0:	4615      	mov	r5, r2
200008d2:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200008d4:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200008d8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200008dc:	af08      	add	r7, sp, #32
200008de:	3610      	adds	r6, #16
200008e0:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200008e4:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200008e6:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200008e8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200008ec:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200008f0:	f8dc 6000 	ldr.w	r6, [ip]
200008f4:	f8dc 3004 	ldr.w	r3, [ip, #4]
200008f8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200008fc:	2b00      	cmp	r3, #0
200008fe:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000902:	9900      	ldr	r1, [sp, #0]
20000904:	f340 8087 	ble.w	20000a16 <sinpwm+0x152>
20000908:	18d0      	adds	r0, r2, r3
2000090a:	1a9b      	subs	r3, r3, r2
2000090c:	2b00      	cmp	r3, #0
2000090e:	f000 80aa 	beq.w	20000a66 <sinpwm+0x1a2>
20000912:	9f01      	ldr	r7, [sp, #4]
20000914:	f340 8083 	ble.w	20000a1e <sinpwm+0x15a>
20000918:	eb00 0263 	add.w	r2, r0, r3, asr #1
2000091c:	4439      	add	r1, r7
2000091e:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000922:	2b00      	cmp	r3, #0
20000924:	f000 80a1 	beq.w	20000a6a <sinpwm+0x1a6>
20000928:	9f02      	ldr	r7, [sp, #8]
2000092a:	dd7e      	ble.n	20000a2a <sinpwm+0x166>
2000092c:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000930:	4439      	add	r1, r7
20000932:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000936:	2b00      	cmp	r3, #0
20000938:	f000 809a 	beq.w	20000a70 <sinpwm+0x1ac>
2000093c:	9f03      	ldr	r7, [sp, #12]
2000093e:	dd7a      	ble.n	20000a36 <sinpwm+0x172>
20000940:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000944:	4439      	add	r1, r7
20000946:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
2000094a:	2b00      	cmp	r3, #0
2000094c:	f000 8092 	beq.w	20000a74 <sinpwm+0x1b0>
20000950:	9f04      	ldr	r7, [sp, #16]
20000952:	dd76      	ble.n	20000a42 <sinpwm+0x17e>
20000954:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000958:	4439      	add	r1, r7
2000095a:	eba3 1322 	sub.w	r3, r3, r2, asr #4
2000095e:	2b00      	cmp	r3, #0
20000960:	f000 808b 	beq.w	20000a7a <sinpwm+0x1b6>
20000964:	9f05      	ldr	r7, [sp, #20]
20000966:	dd72      	ble.n	20000a4e <sinpwm+0x18a>
20000968:	eb00 1263 	add.w	r2, r0, r3, asr #5
2000096c:	4439      	add	r1, r7
2000096e:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000972:	2b00      	cmp	r3, #0
20000974:	f000 8083 	beq.w	20000a7e <sinpwm+0x1ba>
20000978:	9f06      	ldr	r7, [sp, #24]
2000097a:	dd6e      	ble.n	20000a5a <sinpwm+0x196>
2000097c:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000980:	4439      	add	r1, r7
20000982:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000986:	2b00      	cmp	r3, #0
20000988:	d07c      	beq.n	20000a84 <sinpwm+0x1c0>
2000098a:	9a07      	ldr	r2, [sp, #28]
2000098c:	bfc7      	ittee	gt
2000098e:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000992:	1889      	addgt	r1, r1, r2
20000994:	1a89      	suble	r1, r1, r2
20000996:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
2000099a:	2207      	movs	r2, #7
2000099c:	ab10      	add	r3, sp, #64	; 0x40
2000099e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
200009a2:	f852 3c20 	ldr.w	r3, [r2, #-32]
200009a6:	2e00      	cmp	r6, #0
200009a8:	fb03 f300 	mul.w	r3, r3, r0
200009ac:	bfb8      	it	lt
200009ae:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
200009b2:	2900      	cmp	r1, #0
200009b4:	bfb8      	it	lt
200009b6:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
200009ba:	151b      	asrs	r3, r3, #20
200009bc:	440d      	add	r5, r1
200009be:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
200009c2:	f3c5 0509 	ubfx	r5, r5, #0, #10
200009c6:	dd22      	ble.n	20000a0e <sinpwm+0x14a>
200009c8:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 20000a90 <sinpwm+0x1cc>
200009cc:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
200009d0:	2001      	movs	r0, #1
200009d2:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
200009d6:	4f2d      	ldr	r7, [pc, #180]	; (20000a8c <sinpwm+0x1c8>)
200009d8:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
200009dc:	3602      	adds	r6, #2
200009de:	f3ce 0e09 	ubfx	lr, lr, #0, #10
200009e2:	f3c6 0609 	ubfx	r6, r6, #0, #10
200009e6:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
200009ea:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
200009ee:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
200009f2:	fb06 f50c 	mul.w	r5, r6, ip
200009f6:	fb01 f10c 	mul.w	r1, r1, ip
200009fa:	fb02 f303 	mul.w	r3, r2, r3
200009fe:	12ad      	asrs	r5, r5, #10
20000a00:	128a      	asrs	r2, r1, #10
20000a02:	129b      	asrs	r3, r3, #10
20000a04:	60a5      	str	r5, [r4, #8]
20000a06:	6062      	str	r2, [r4, #4]
20000a08:	6023      	str	r3, [r4, #0]
20000a0a:	b011      	add	sp, #68	; 0x44
20000a0c:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000a0e:	f1c3 0c00 	rsb	ip, r3, #0
20000a12:	2000      	movs	r0, #0
20000a14:	e7dd      	b.n	200009d2 <sinpwm+0x10e>
20000a16:	1ad0      	subs	r0, r2, r3
20000a18:	4249      	negs	r1, r1
20000a1a:	4413      	add	r3, r2
20000a1c:	e776      	b.n	2000090c <sinpwm+0x48>
20000a1e:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000a22:	1bc9      	subs	r1, r1, r7
20000a24:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000a28:	e77b      	b.n	20000922 <sinpwm+0x5e>
20000a2a:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000a2e:	1bc9      	subs	r1, r1, r7
20000a30:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000a34:	e77f      	b.n	20000936 <sinpwm+0x72>
20000a36:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000a3a:	1bc9      	subs	r1, r1, r7
20000a3c:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000a40:	e783      	b.n	2000094a <sinpwm+0x86>
20000a42:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000a46:	1bc9      	subs	r1, r1, r7
20000a48:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000a4c:	e787      	b.n	2000095e <sinpwm+0x9a>
20000a4e:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000a52:	1bc9      	subs	r1, r1, r7
20000a54:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000a58:	e78b      	b.n	20000972 <sinpwm+0xae>
20000a5a:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000a5e:	1bc9      	subs	r1, r1, r7
20000a60:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000a64:	e78f      	b.n	20000986 <sinpwm+0xc2>
20000a66:	461a      	mov	r2, r3
20000a68:	e798      	b.n	2000099c <sinpwm+0xd8>
20000a6a:	4610      	mov	r0, r2
20000a6c:	2201      	movs	r2, #1
20000a6e:	e795      	b.n	2000099c <sinpwm+0xd8>
20000a70:	2202      	movs	r2, #2
20000a72:	e793      	b.n	2000099c <sinpwm+0xd8>
20000a74:	4610      	mov	r0, r2
20000a76:	2203      	movs	r2, #3
20000a78:	e790      	b.n	2000099c <sinpwm+0xd8>
20000a7a:	2204      	movs	r2, #4
20000a7c:	e78e      	b.n	2000099c <sinpwm+0xd8>
20000a7e:	4610      	mov	r0, r2
20000a80:	2205      	movs	r2, #5
20000a82:	e78b      	b.n	2000099c <sinpwm+0xd8>
20000a84:	2206      	movs	r2, #6
20000a86:	e789      	b.n	2000099c <sinpwm+0xd8>
20000a88:	20001674 	.word	0x20001674
20000a8c:	200016b4 	.word	0x200016b4
20000a90:	fffffe0c 	.word	0xfffffe0c

20000a94 <svpwm>:
20000a94:	b5f0      	push	{r4, r5, r6, r7, lr}
20000a96:	b091      	sub	sp, #68	; 0x44
20000a98:	46ee      	mov	lr, sp
20000a9a:	468c      	mov	ip, r1
20000a9c:	4eb8      	ldr	r6, [pc, #736]	; (20000d80 <svpwm+0x2ec>)
20000a9e:	4604      	mov	r4, r0
20000aa0:	4615      	mov	r5, r2
20000aa2:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000aa4:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000aa8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000aac:	af08      	add	r7, sp, #32
20000aae:	3610      	adds	r6, #16
20000ab0:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000ab4:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000ab6:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000ab8:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000abc:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000ac0:	f8dc 6000 	ldr.w	r6, [ip]
20000ac4:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000ac8:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20000acc:	2b00      	cmp	r3, #0
20000ace:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000ad2:	9900      	ldr	r1, [sp, #0]
20000ad4:	dd6f      	ble.n	20000bb6 <svpwm+0x122>
20000ad6:	18d0      	adds	r0, r2, r3
20000ad8:	1a9b      	subs	r3, r3, r2
20000ada:	2b00      	cmp	r3, #0
20000adc:	f000 813f 	beq.w	20000d5e <svpwm+0x2ca>
20000ae0:	9f01      	ldr	r7, [sp, #4]
20000ae2:	dd6c      	ble.n	20000bbe <svpwm+0x12a>
20000ae4:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000ae8:	4439      	add	r1, r7
20000aea:	eba3 0360 	sub.w	r3, r3, r0, asr #1
20000aee:	2b00      	cmp	r3, #0
20000af0:	f000 8137 	beq.w	20000d62 <svpwm+0x2ce>
20000af4:	9f02      	ldr	r7, [sp, #8]
20000af6:	dd68      	ble.n	20000bca <svpwm+0x136>
20000af8:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000afc:	4439      	add	r1, r7
20000afe:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
20000b02:	2b00      	cmp	r3, #0
20000b04:	f000 8130 	beq.w	20000d68 <svpwm+0x2d4>
20000b08:	9f03      	ldr	r7, [sp, #12]
20000b0a:	dd64      	ble.n	20000bd6 <svpwm+0x142>
20000b0c:	eb00 02e3 	add.w	r2, r0, r3, asr #3
20000b10:	4439      	add	r1, r7
20000b12:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000b16:	2b00      	cmp	r3, #0
20000b18:	f000 8128 	beq.w	20000d6c <svpwm+0x2d8>
20000b1c:	9f04      	ldr	r7, [sp, #16]
20000b1e:	dd60      	ble.n	20000be2 <svpwm+0x14e>
20000b20:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000b24:	4439      	add	r1, r7
20000b26:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000b2a:	2b00      	cmp	r3, #0
20000b2c:	f000 8121 	beq.w	20000d72 <svpwm+0x2de>
20000b30:	9f05      	ldr	r7, [sp, #20]
20000b32:	dd5c      	ble.n	20000bee <svpwm+0x15a>
20000b34:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000b38:	4439      	add	r1, r7
20000b3a:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000b3e:	2b00      	cmp	r3, #0
20000b40:	f000 8119 	beq.w	20000d76 <svpwm+0x2e2>
20000b44:	9f06      	ldr	r7, [sp, #24]
20000b46:	dd58      	ble.n	20000bfa <svpwm+0x166>
20000b48:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000b4c:	4439      	add	r1, r7
20000b4e:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
20000b52:	2b00      	cmp	r3, #0
20000b54:	f000 8112 	beq.w	20000d7c <svpwm+0x2e8>
20000b58:	9a07      	ldr	r2, [sp, #28]
20000b5a:	bfc7      	ittee	gt
20000b5c:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000b60:	1889      	addgt	r1, r1, r2
20000b62:	1a89      	suble	r1, r1, r2
20000b64:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000b68:	2207      	movs	r2, #7
20000b6a:	ab10      	add	r3, sp, #64	; 0x40
20000b6c:	2e00      	cmp	r6, #0
20000b6e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000b72:	bfb8      	it	lt
20000b74:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000b78:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000b7c:	2900      	cmp	r1, #0
20000b7e:	fb03 f300 	mul.w	r3, r3, r0
20000b82:	bfb8      	it	lt
20000b84:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000b88:	440d      	add	r5, r1
20000b8a:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000b8e:	eb05 0245 	add.w	r2, r5, r5, lsl #1
20000b92:	151b      	asrs	r3, r3, #20
20000b94:	1252      	asrs	r2, r2, #9
20000b96:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000b9a:	f102 32ff 	add.w	r2, r2, #4294967295
20000b9e:	bfc6      	itte	gt
20000ba0:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
20000ba4:	2001      	movgt	r0, #1
20000ba6:	2000      	movle	r0, #0
20000ba8:	2a04      	cmp	r2, #4
20000baa:	d848      	bhi.n	20000c3e <svpwm+0x1aa>
20000bac:	e8df f002 	tbb	[pc, r2]
20000bb0:	2b9e8164 	.word	0x2b9e8164
20000bb4:	bb          	.byte	0xbb
20000bb5:	00          	.byte	0x00
20000bb6:	1ad0      	subs	r0, r2, r3
20000bb8:	4249      	negs	r1, r1
20000bba:	4413      	add	r3, r2
20000bbc:	e78d      	b.n	20000ada <svpwm+0x46>
20000bbe:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000bc2:	1bc9      	subs	r1, r1, r7
20000bc4:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000bc8:	e791      	b.n	20000aee <svpwm+0x5a>
20000bca:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000bce:	1bc9      	subs	r1, r1, r7
20000bd0:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000bd4:	e795      	b.n	20000b02 <svpwm+0x6e>
20000bd6:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000bda:	1bc9      	subs	r1, r1, r7
20000bdc:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000be0:	e799      	b.n	20000b16 <svpwm+0x82>
20000be2:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000be6:	1bc9      	subs	r1, r1, r7
20000be8:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000bec:	e79d      	b.n	20000b2a <svpwm+0x96>
20000bee:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000bf2:	1bc9      	subs	r1, r1, r7
20000bf4:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000bf8:	e7a1      	b.n	20000b3e <svpwm+0xaa>
20000bfa:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000bfe:	1bc9      	subs	r1, r1, r7
20000c00:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000c04:	e7a5      	b.n	20000b52 <svpwm+0xbe>
20000c06:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
20000c0a:	4e5e      	ldr	r6, [pc, #376]	; (20000d84 <svpwm+0x2f0>)
20000c0c:	3204      	adds	r2, #4
20000c0e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000c12:	3556      	adds	r5, #86	; 0x56
20000c14:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000c18:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c1c:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000c20:	fb01 f103 	mul.w	r1, r1, r3
20000c24:	fb02 f203 	mul.w	r2, r2, r3
20000c28:	1289      	asrs	r1, r1, #10
20000c2a:	1293      	asrs	r3, r2, #10
20000c2c:	424a      	negs	r2, r1
20000c2e:	1ad2      	subs	r2, r2, r3
20000c30:	1a5d      	subs	r5, r3, r1
20000c32:	440b      	add	r3, r1
20000c34:	6062      	str	r2, [r4, #4]
20000c36:	6025      	str	r5, [r4, #0]
20000c38:	60a3      	str	r3, [r4, #8]
20000c3a:	b011      	add	sp, #68	; 0x44
20000c3c:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000c3e:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000c42:	4e50      	ldr	r6, [pc, #320]	; (20000d84 <svpwm+0x2f0>)
20000c44:	3202      	adds	r2, #2
20000c46:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000c4a:	f505 7540 	add.w	r5, r5, #768	; 0x300
20000c4e:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000c52:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c56:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000c5a:	fb01 f103 	mul.w	r1, r1, r3
20000c5e:	fb02 f203 	mul.w	r2, r2, r3
20000c62:	1289      	asrs	r1, r1, #10
20000c64:	1293      	asrs	r3, r2, #10
20000c66:	424a      	negs	r2, r1
20000c68:	1ad2      	subs	r2, r2, r3
20000c6a:	18cd      	adds	r5, r1, r3
20000c6c:	1a5b      	subs	r3, r3, r1
20000c6e:	60a2      	str	r2, [r4, #8]
20000c70:	6025      	str	r5, [r4, #0]
20000c72:	6063      	str	r3, [r4, #4]
20000c74:	b011      	add	sp, #68	; 0x44
20000c76:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000c78:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20000c7c:	4e41      	ldr	r6, [pc, #260]	; (20000d84 <svpwm+0x2f0>)
20000c7e:	3204      	adds	r2, #4
20000c80:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000c84:	f205 2556 	addw	r5, r5, #598	; 0x256
20000c88:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000c8c:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000c90:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000c94:	fb01 f103 	mul.w	r1, r1, r3
20000c98:	fb02 f203 	mul.w	r2, r2, r3
20000c9c:	1289      	asrs	r1, r1, #10
20000c9e:	1293      	asrs	r3, r2, #10
20000ca0:	424a      	negs	r2, r1
20000ca2:	1ad2      	subs	r2, r2, r3
20000ca4:	1acd      	subs	r5, r1, r3
20000ca6:	440b      	add	r3, r1
20000ca8:	60a2      	str	r2, [r4, #8]
20000caa:	6025      	str	r5, [r4, #0]
20000cac:	6063      	str	r3, [r4, #4]
20000cae:	b011      	add	sp, #68	; 0x44
20000cb0:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000cb2:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20000cb6:	4e33      	ldr	r6, [pc, #204]	; (20000d84 <svpwm+0x2f0>)
20000cb8:	320f      	adds	r2, #15
20000cba:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000cbe:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20000cc2:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000cc6:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000cca:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000cce:	fb01 f103 	mul.w	r1, r1, r3
20000cd2:	fb02 f203 	mul.w	r2, r2, r3
20000cd6:	1289      	asrs	r1, r1, #10
20000cd8:	1293      	asrs	r3, r2, #10
20000cda:	424a      	negs	r2, r1
20000cdc:	1ad2      	subs	r2, r2, r3
20000cde:	18cd      	adds	r5, r1, r3
20000ce0:	1a5b      	subs	r3, r3, r1
20000ce2:	e884 0024 	stmia.w	r4, {r2, r5}
20000ce6:	60a3      	str	r3, [r4, #8]
20000ce8:	b011      	add	sp, #68	; 0x44
20000cea:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000cec:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20000cf0:	4e24      	ldr	r6, [pc, #144]	; (20000d84 <svpwm+0x2f0>)
20000cf2:	320a      	adds	r2, #10
20000cf4:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000cf8:	f505 7580 	add.w	r5, r5, #256	; 0x100
20000cfc:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000d00:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d04:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000d08:	fb01 f103 	mul.w	r1, r1, r3
20000d0c:	fb02 f203 	mul.w	r2, r2, r3
20000d10:	1289      	asrs	r1, r1, #10
20000d12:	1293      	asrs	r3, r2, #10
20000d14:	424a      	negs	r2, r1
20000d16:	1ad2      	subs	r2, r2, r3
20000d18:	1acd      	subs	r5, r1, r3
20000d1a:	440b      	add	r3, r1
20000d1c:	e884 0024 	stmia.w	r4, {r2, r5}
20000d20:	60a3      	str	r3, [r4, #8]
20000d22:	b011      	add	sp, #68	; 0x44
20000d24:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000d26:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000d2a:	4916      	ldr	r1, [pc, #88]	; (20000d84 <svpwm+0x2f0>)
20000d2c:	320f      	adds	r2, #15
20000d2e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000d32:	3d55      	subs	r5, #85	; 0x55
20000d34:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000d38:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000d3c:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000d40:	fb02 f203 	mul.w	r2, r2, r3
20000d44:	fb01 f303 	mul.w	r3, r1, r3
20000d48:	1292      	asrs	r2, r2, #10
20000d4a:	129b      	asrs	r3, r3, #10
20000d4c:	4251      	negs	r1, r2
20000d4e:	18d5      	adds	r5, r2, r3
20000d50:	1ac9      	subs	r1, r1, r3
20000d52:	1ad2      	subs	r2, r2, r3
20000d54:	6061      	str	r1, [r4, #4]
20000d56:	6025      	str	r5, [r4, #0]
20000d58:	60a2      	str	r2, [r4, #8]
20000d5a:	b011      	add	sp, #68	; 0x44
20000d5c:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000d5e:	461a      	mov	r2, r3
20000d60:	e703      	b.n	20000b6a <svpwm+0xd6>
20000d62:	4610      	mov	r0, r2
20000d64:	2201      	movs	r2, #1
20000d66:	e700      	b.n	20000b6a <svpwm+0xd6>
20000d68:	2202      	movs	r2, #2
20000d6a:	e6fe      	b.n	20000b6a <svpwm+0xd6>
20000d6c:	4610      	mov	r0, r2
20000d6e:	2203      	movs	r2, #3
20000d70:	e6fb      	b.n	20000b6a <svpwm+0xd6>
20000d72:	2204      	movs	r2, #4
20000d74:	e6f9      	b.n	20000b6a <svpwm+0xd6>
20000d76:	4610      	mov	r0, r2
20000d78:	2205      	movs	r2, #5
20000d7a:	e6f6      	b.n	20000b6a <svpwm+0xd6>
20000d7c:	2206      	movs	r2, #6
20000d7e:	e6f4      	b.n	20000b6a <svpwm+0xd6>
20000d80:	20001674 	.word	0x20001674
20000d84:	200016b4 	.word	0x200016b4

20000d88 <encoder_init>:
20000d88:	4b01      	ldr	r3, [pc, #4]	; (20000d90 <encoder_init+0x8>)
20000d8a:	6018      	str	r0, [r3, #0]
20000d8c:	6058      	str	r0, [r3, #4]
20000d8e:	4770      	bx	lr
20000d90:	20002740 	.word	0x20002740

20000d94 <get_speed>:
20000d94:	4a0e      	ldr	r2, [pc, #56]	; (20000dd0 <get_speed+0x3c>)
20000d96:	b430      	push	{r4, r5}
20000d98:	6853      	ldr	r3, [r2, #4]
20000d9a:	6815      	ldr	r5, [r2, #0]
20000d9c:	1ac3      	subs	r3, r0, r3
20000d9e:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20000da2:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
20000da6:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
20000daa:	e882 0021 	stmia.w	r2, {r0, r5}
20000dae:	dd05      	ble.n	20000dbc <get_speed+0x28>
20000db0:	2b00      	cmp	r3, #0
20000db2:	bfb4      	ite	lt
20000db4:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
20000db8:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20000dbc:	4a05      	ldr	r2, [pc, #20]	; (20000dd4 <get_speed+0x40>)
20000dbe:	1058      	asrs	r0, r3, #1
20000dc0:	fb02 f000 	mul.w	r0, r2, r0
20000dc4:	bc30      	pop	{r4, r5}
20000dc6:	680a      	ldr	r2, [r1, #0]
20000dc8:	1300      	asrs	r0, r0, #12
20000dca:	4413      	add	r3, r2
20000dcc:	600b      	str	r3, [r1, #0]
20000dce:	4770      	bx	lr
20000dd0:	20002740 	.word	0x20002740
20000dd4:	0002ae7c 	.word	0x0002ae7c

20000dd8 <mfilter>:
20000dd8:	b430      	push	{r4, r5}
20000dda:	4605      	mov	r5, r0
20000ddc:	4a06      	ldr	r2, [pc, #24]	; (20000df8 <mfilter+0x20>)
20000dde:	6893      	ldr	r3, [r2, #8]
20000de0:	3301      	adds	r3, #1
20000de2:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000de6:	eb02 0483 	add.w	r4, r2, r3, lsl #2
20000dea:	68e0      	ldr	r0, [r4, #12]
20000dec:	6093      	str	r3, [r2, #8]
20000dee:	1a08      	subs	r0, r1, r0
20000df0:	4428      	add	r0, r5
20000df2:	60e5      	str	r5, [r4, #12]
20000df4:	bc30      	pop	{r4, r5}
20000df6:	4770      	bx	lr
20000df8:	20002740 	.word	0x20002740

20000dfc <rfilter1>:
20000dfc:	b470      	push	{r4, r5, r6}
20000dfe:	f240 74c6 	movw	r4, #1990	; 0x7c6
20000e02:	4b12      	ldr	r3, [pc, #72]	; (20000e4c <rfilter1+0x50>)
20000e04:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20000e08:	f853 6cec 	ldr.w	r6, [r3, #-236]
20000e0c:	f853 1ce4 	ldr.w	r1, [r3, #-228]
20000e10:	fb04 f406 	mul.w	r4, r4, r6
20000e14:	fb02 4201 	mla	r2, r2, r1, r4
20000e18:	490d      	ldr	r1, [pc, #52]	; (20000e50 <rfilter1+0x54>)
20000e1a:	f853 5ce8 	ldr.w	r5, [r3, #-232]
20000e1e:	fb01 2200 	mla	r2, r1, r0, r2
20000e22:	4c0c      	ldr	r4, [pc, #48]	; (20000e54 <rfilter1+0x58>)
20000e24:	f853 1ce0 	ldr.w	r1, [r3, #-224]
20000e28:	fb04 2205 	mla	r2, r4, r5, r2
20000e2c:	4c0a      	ldr	r4, [pc, #40]	; (20000e58 <rfilter1+0x5c>)
20000e2e:	f843 6ce4 	str.w	r6, [r3, #-228]
20000e32:	fb04 2201 	mla	r2, r4, r1, r2
20000e36:	1291      	asrs	r1, r2, #10
20000e38:	f843 0ce8 	str.w	r0, [r3, #-232]
20000e3c:	f843 5ce0 	str.w	r5, [r3, #-224]
20000e40:	1490      	asrs	r0, r2, #18
20000e42:	f843 1cec 	str.w	r1, [r3, #-236]
20000e46:	bc70      	pop	{r4, r5, r6}
20000e48:	4770      	bx	lr
20000e4a:	bf00      	nop
20000e4c:	20003838 	.word	0x20003838
20000e50:	0003f0a4 	.word	0x0003f0a4
20000e54:	fff83a2e 	.word	0xfff83a2e
20000e58:	0003dc29 	.word	0x0003dc29

20000e5c <rfilter2>:
20000e5c:	b470      	push	{r4, r5, r6}
20000e5e:	f240 748a 	movw	r4, #1930	; 0x78a
20000e62:	4b11      	ldr	r3, [pc, #68]	; (20000ea8 <rfilter2+0x4c>)
20000e64:	4a11      	ldr	r2, [pc, #68]	; (20000eac <rfilter2+0x50>)
20000e66:	f853 6cdc 	ldr.w	r6, [r3, #-220]
20000e6a:	f853 1cd4 	ldr.w	r1, [r3, #-212]
20000e6e:	fb04 f406 	mul.w	r4, r4, r6
20000e72:	fb02 4201 	mla	r2, r2, r1, r4
20000e76:	490e      	ldr	r1, [pc, #56]	; (20000eb0 <rfilter2+0x54>)
20000e78:	f853 5cd8 	ldr.w	r5, [r3, #-216]
20000e7c:	fb01 2200 	mla	r2, r1, r0, r2
20000e80:	4c0c      	ldr	r4, [pc, #48]	; (20000eb4 <rfilter2+0x58>)
20000e82:	f853 1cd0 	ldr.w	r1, [r3, #-208]
20000e86:	fb04 2205 	mla	r2, r4, r5, r2
20000e8a:	4c0b      	ldr	r4, [pc, #44]	; (20000eb8 <rfilter2+0x5c>)
20000e8c:	f843 6cd4 	str.w	r6, [r3, #-212]
20000e90:	fb04 2201 	mla	r2, r4, r1, r2
20000e94:	1291      	asrs	r1, r2, #10
20000e96:	f843 0cd8 	str.w	r0, [r3, #-216]
20000e9a:	f843 5cd0 	str.w	r5, [r3, #-208]
20000e9e:	1490      	asrs	r0, r2, #18
20000ea0:	f843 1cdc 	str.w	r1, [r3, #-220]
20000ea4:	bc70      	pop	{r4, r5, r6}
20000ea6:	4770      	bx	lr
20000ea8:	20003838 	.word	0x20003838
20000eac:	fffffc66 	.word	0xfffffc66
20000eb0:	0003e3d7 	.word	0x0003e3d7
20000eb4:	fff8767b 	.word	0xfff8767b
20000eb8:	0003b5c3 	.word	0x0003b5c3

20000ebc <adc_init>:
20000ebc:	b480      	push	{r7}
20000ebe:	af00      	add	r7, sp, #0
20000ec0:	4a10      	ldr	r2, [pc, #64]	; (20000f04 <adc_init+0x48>)
20000ec2:	4b10      	ldr	r3, [pc, #64]	; (20000f04 <adc_init+0x48>)
20000ec4:	69db      	ldr	r3, [r3, #28]
20000ec6:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000eca:	61d3      	str	r3, [r2, #28]
20000ecc:	4b0d      	ldr	r3, [pc, #52]	; (20000f04 <adc_init+0x48>)
20000ece:	f242 0220 	movw	r2, #8224	; 0x2020
20000ed2:	615a      	str	r2, [r3, #20]
20000ed4:	4b0c      	ldr	r3, [pc, #48]	; (20000f08 <adc_init+0x4c>)
20000ed6:	2200      	movs	r2, #0
20000ed8:	601a      	str	r2, [r3, #0]
20000eda:	4a0b      	ldr	r2, [pc, #44]	; (20000f08 <adc_init+0x4c>)
20000edc:	4b0a      	ldr	r3, [pc, #40]	; (20000f08 <adc_init+0x4c>)
20000ede:	681b      	ldr	r3, [r3, #0]
20000ee0:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20000ee4:	f043 0301 	orr.w	r3, r3, #1
20000ee8:	6013      	str	r3, [r2, #0]
20000eea:	4a07      	ldr	r2, [pc, #28]	; (20000f08 <adc_init+0x4c>)
20000eec:	4b06      	ldr	r3, [pc, #24]	; (20000f08 <adc_init+0x4c>)
20000eee:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20000ef0:	f443 73c0 	orr.w	r3, r3, #384	; 0x180
20000ef4:	6293      	str	r3, [r2, #40]	; 0x28
20000ef6:	4b04      	ldr	r3, [pc, #16]	; (20000f08 <adc_init+0x4c>)
20000ef8:	2210      	movs	r2, #16
20000efa:	621a      	str	r2, [r3, #32]
20000efc:	bf00      	nop
20000efe:	46bd      	mov	sp, r7
20000f00:	bc80      	pop	{r7}
20000f02:	4770      	bx	lr
20000f04:	40020000 	.word	0x40020000
20000f08:	40088000 	.word	0x40088000

20000f0c <dma_init>:
20000f0c:	b480      	push	{r7}
20000f0e:	af00      	add	r7, sp, #0
20000f10:	4a17      	ldr	r2, [pc, #92]	; (20000f70 <dma_init+0x64>)
20000f12:	4b17      	ldr	r3, [pc, #92]	; (20000f70 <dma_init+0x64>)
20000f14:	69db      	ldr	r3, [r3, #28]
20000f16:	f043 0320 	orr.w	r3, r3, #32
20000f1a:	61d3      	str	r3, [r2, #28]
20000f1c:	4b15      	ldr	r3, [pc, #84]	; (20000f74 <dma_init+0x68>)
20000f1e:	4a16      	ldr	r2, [pc, #88]	; (20000f78 <dma_init+0x6c>)
20000f20:	609a      	str	r2, [r3, #8]
20000f22:	4b14      	ldr	r3, [pc, #80]	; (20000f74 <dma_init+0x68>)
20000f24:	f04f 32ff 	mov.w	r2, #4294967295
20000f28:	62da      	str	r2, [r3, #44]	; 0x2c
20000f2a:	4b12      	ldr	r3, [pc, #72]	; (20000f74 <dma_init+0x68>)
20000f2c:	f04f 32ff 	mov.w	r2, #4294967295
20000f30:	621a      	str	r2, [r3, #32]
20000f32:	4b10      	ldr	r3, [pc, #64]	; (20000f74 <dma_init+0x68>)
20000f34:	f04f 32ff 	mov.w	r2, #4294967295
20000f38:	635a      	str	r2, [r3, #52]	; 0x34
20000f3a:	4b0e      	ldr	r3, [pc, #56]	; (20000f74 <dma_init+0x68>)
20000f3c:	f44f 7280 	mov.w	r2, #256	; 0x100
20000f40:	61da      	str	r2, [r3, #28]
20000f42:	4b0c      	ldr	r3, [pc, #48]	; (20000f74 <dma_init+0x68>)
20000f44:	f44f 7280 	mov.w	r2, #256	; 0x100
20000f48:	625a      	str	r2, [r3, #36]	; 0x24
20000f4a:	4b0a      	ldr	r3, [pc, #40]	; (20000f74 <dma_init+0x68>)
20000f4c:	2201      	movs	r2, #1
20000f4e:	605a      	str	r2, [r3, #4]
20000f50:	4b09      	ldr	r3, [pc, #36]	; (20000f78 <dma_init+0x6c>)
20000f52:	4a0a      	ldr	r2, [pc, #40]	; (20000f7c <dma_init+0x70>)
20000f54:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20000f58:	4a09      	ldr	r2, [pc, #36]	; (20000f80 <dma_init+0x74>)
20000f5a:	4b07      	ldr	r3, [pc, #28]	; (20000f78 <dma_init+0x6c>)
20000f5c:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20000f60:	4b05      	ldr	r3, [pc, #20]	; (20000f78 <dma_init+0x6c>)
20000f62:	4a08      	ldr	r2, [pc, #32]	; (20000f84 <dma_init+0x78>)
20000f64:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000f68:	bf00      	nop
20000f6a:	46bd      	mov	sp, r7
20000f6c:	bc80      	pop	{r7}
20000f6e:	4770      	bx	lr
20000f70:	40020000 	.word	0x40020000
20000f74:	40028000 	.word	0x40028000
20000f78:	20003c00 	.word	0x20003c00
20000f7c:	40088018 	.word	0x40088018
20000f80:	20003e04 	.word	0x20003e04
20000f84:	ae000011 	.word	0xae000011

20000f88 <adc_dma_init>:
20000f88:	b580      	push	{r7, lr}
20000f8a:	af00      	add	r7, sp, #0
20000f8c:	f7ff ff96 	bl	20000ebc <adc_init>
20000f90:	f7ff ffbc 	bl	20000f0c <dma_init>
20000f94:	bf00      	nop
20000f96:	bd80      	pop	{r7, pc}

20000f98 <adc_dma_start>:
20000f98:	b480      	push	{r7}
20000f9a:	af00      	add	r7, sp, #0
20000f9c:	4a06      	ldr	r2, [pc, #24]	; (20000fb8 <adc_dma_start+0x20>)
20000f9e:	4b06      	ldr	r3, [pc, #24]	; (20000fb8 <adc_dma_start+0x20>)
20000fa0:	681b      	ldr	r3, [r3, #0]
20000fa2:	f043 0308 	orr.w	r3, r3, #8
20000fa6:	6013      	str	r3, [r2, #0]
20000fa8:	4b04      	ldr	r3, [pc, #16]	; (20000fbc <adc_dma_start+0x24>)
20000faa:	f44f 7280 	mov.w	r2, #256	; 0x100
20000fae:	629a      	str	r2, [r3, #40]	; 0x28
20000fb0:	bf00      	nop
20000fb2:	46bd      	mov	sp, r7
20000fb4:	bc80      	pop	{r7}
20000fb6:	4770      	bx	lr
20000fb8:	40088000 	.word	0x40088000
20000fbc:	40028000 	.word	0x40028000

20000fc0 <adc_dma_wait>:
20000fc0:	b480      	push	{r7}
20000fc2:	af00      	add	r7, sp, #0
20000fc4:	bf00      	nop
20000fc6:	4b0a      	ldr	r3, [pc, #40]	; (20000ff0 <adc_dma_wait+0x30>)
20000fc8:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20000fcc:	f003 0307 	and.w	r3, r3, #7
20000fd0:	2b00      	cmp	r3, #0
20000fd2:	d1f8      	bne.n	20000fc6 <adc_dma_wait+0x6>
20000fd4:	4a07      	ldr	r2, [pc, #28]	; (20000ff4 <adc_dma_wait+0x34>)
20000fd6:	4b07      	ldr	r3, [pc, #28]	; (20000ff4 <adc_dma_wait+0x34>)
20000fd8:	681b      	ldr	r3, [r3, #0]
20000fda:	f023 0308 	bic.w	r3, r3, #8
20000fde:	6013      	str	r3, [r2, #0]
20000fe0:	4b03      	ldr	r3, [pc, #12]	; (20000ff0 <adc_dma_wait+0x30>)
20000fe2:	4a05      	ldr	r2, [pc, #20]	; (20000ff8 <adc_dma_wait+0x38>)
20000fe4:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000fe8:	bf00      	nop
20000fea:	46bd      	mov	sp, r7
20000fec:	bc80      	pop	{r7}
20000fee:	4770      	bx	lr
20000ff0:	20003c00 	.word	0x20003c00
20000ff4:	40088000 	.word	0x40088000
20000ff8:	ae000011 	.word	0xae000011

20000ffc <NVIC_EnableIRQ>:
20000ffc:	b480      	push	{r7}
20000ffe:	b083      	sub	sp, #12
20001000:	af00      	add	r7, sp, #0
20001002:	4603      	mov	r3, r0
20001004:	71fb      	strb	r3, [r7, #7]
20001006:	4908      	ldr	r1, [pc, #32]	; (20001028 <NVIC_EnableIRQ+0x2c>)
20001008:	f997 3007 	ldrsb.w	r3, [r7, #7]
2000100c:	095b      	lsrs	r3, r3, #5
2000100e:	79fa      	ldrb	r2, [r7, #7]
20001010:	f002 021f 	and.w	r2, r2, #31
20001014:	2001      	movs	r0, #1
20001016:	fa00 f202 	lsl.w	r2, r0, r2
2000101a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
2000101e:	bf00      	nop
20001020:	370c      	adds	r7, #12
20001022:	46bd      	mov	sp, r7
20001024:	bc80      	pop	{r7}
20001026:	4770      	bx	lr
20001028:	e000e100 	.word	0xe000e100

2000102c <PortConfig>:
2000102c:	b480      	push	{r7}
2000102e:	af00      	add	r7, sp, #0
20001030:	4a6a      	ldr	r2, [pc, #424]	; (200011dc <PortConfig+0x1b0>)
20001032:	4b6a      	ldr	r3, [pc, #424]	; (200011dc <PortConfig+0x1b0>)
20001034:	69db      	ldr	r3, [r3, #28]
20001036:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
2000103a:	61d3      	str	r3, [r2, #28]
2000103c:	4b68      	ldr	r3, [pc, #416]	; (200011e0 <PortConfig+0x1b4>)
2000103e:	2200      	movs	r2, #0
20001040:	609a      	str	r2, [r3, #8]
20001042:	4b67      	ldr	r3, [pc, #412]	; (200011e0 <PortConfig+0x1b4>)
20001044:	2200      	movs	r2, #0
20001046:	601a      	str	r2, [r3, #0]
20001048:	4b65      	ldr	r3, [pc, #404]	; (200011e0 <PortConfig+0x1b4>)
2000104a:	2200      	movs	r2, #0
2000104c:	605a      	str	r2, [r3, #4]
2000104e:	4b64      	ldr	r3, [pc, #400]	; (200011e0 <PortConfig+0x1b4>)
20001050:	f64f 72ff 	movw	r2, #65535	; 0xffff
20001054:	60da      	str	r2, [r3, #12]
20001056:	4a62      	ldr	r2, [pc, #392]	; (200011e0 <PortConfig+0x1b4>)
20001058:	4b61      	ldr	r3, [pc, #388]	; (200011e0 <PortConfig+0x1b4>)
2000105a:	685b      	ldr	r3, [r3, #4]
2000105c:	f023 0308 	bic.w	r3, r3, #8
20001060:	6053      	str	r3, [r2, #4]
20001062:	4a5f      	ldr	r2, [pc, #380]	; (200011e0 <PortConfig+0x1b4>)
20001064:	4b5e      	ldr	r3, [pc, #376]	; (200011e0 <PortConfig+0x1b4>)
20001066:	68db      	ldr	r3, [r3, #12]
20001068:	f043 0308 	orr.w	r3, r3, #8
2000106c:	60d3      	str	r3, [r2, #12]
2000106e:	4b5c      	ldr	r3, [pc, #368]	; (200011e0 <PortConfig+0x1b4>)
20001070:	2280      	movs	r2, #128	; 0x80
20001072:	609a      	str	r2, [r3, #8]
20001074:	4a5b      	ldr	r2, [pc, #364]	; (200011e4 <PortConfig+0x1b8>)
20001076:	4b5b      	ldr	r3, [pc, #364]	; (200011e4 <PortConfig+0x1b8>)
20001078:	685b      	ldr	r3, [r3, #4]
2000107a:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
2000107e:	6053      	str	r3, [r2, #4]
20001080:	4a58      	ldr	r2, [pc, #352]	; (200011e4 <PortConfig+0x1b8>)
20001082:	4b58      	ldr	r3, [pc, #352]	; (200011e4 <PortConfig+0x1b8>)
20001084:	68db      	ldr	r3, [r3, #12]
20001086:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
2000108a:	60d3      	str	r3, [r2, #12]
2000108c:	4a55      	ldr	r2, [pc, #340]	; (200011e4 <PortConfig+0x1b8>)
2000108e:	4b55      	ldr	r3, [pc, #340]	; (200011e4 <PortConfig+0x1b8>)
20001090:	699b      	ldr	r3, [r3, #24]
20001092:	ea6f 4313 	mvn.w	r3, r3, lsr #16
20001096:	ea6f 4303 	mvn.w	r3, r3, lsl #16
2000109a:	6193      	str	r3, [r2, #24]
2000109c:	4a4f      	ldr	r2, [pc, #316]	; (200011dc <PortConfig+0x1b0>)
2000109e:	4b4f      	ldr	r3, [pc, #316]	; (200011dc <PortConfig+0x1b0>)
200010a0:	69db      	ldr	r3, [r3, #28]
200010a2:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
200010a6:	61d3      	str	r3, [r2, #28]
200010a8:	4a4e      	ldr	r2, [pc, #312]	; (200011e4 <PortConfig+0x1b8>)
200010aa:	4b4e      	ldr	r3, [pc, #312]	; (200011e4 <PortConfig+0x1b8>)
200010ac:	689b      	ldr	r3, [r3, #8]
200010ae:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
200010b2:	6093      	str	r3, [r2, #8]
200010b4:	4a4b      	ldr	r2, [pc, #300]	; (200011e4 <PortConfig+0x1b8>)
200010b6:	4b4b      	ldr	r3, [pc, #300]	; (200011e4 <PortConfig+0x1b8>)
200010b8:	689b      	ldr	r3, [r3, #8]
200010ba:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
200010be:	6093      	str	r3, [r2, #8]
200010c0:	4a48      	ldr	r2, [pc, #288]	; (200011e4 <PortConfig+0x1b8>)
200010c2:	4b48      	ldr	r3, [pc, #288]	; (200011e4 <PortConfig+0x1b8>)
200010c4:	68db      	ldr	r3, [r3, #12]
200010c6:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
200010ca:	60d3      	str	r3, [r2, #12]
200010cc:	4a45      	ldr	r2, [pc, #276]	; (200011e4 <PortConfig+0x1b8>)
200010ce:	4b45      	ldr	r3, [pc, #276]	; (200011e4 <PortConfig+0x1b8>)
200010d0:	699b      	ldr	r3, [r3, #24]
200010d2:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
200010d6:	6193      	str	r3, [r2, #24]
200010d8:	4a42      	ldr	r2, [pc, #264]	; (200011e4 <PortConfig+0x1b8>)
200010da:	4b42      	ldr	r3, [pc, #264]	; (200011e4 <PortConfig+0x1b8>)
200010dc:	685b      	ldr	r3, [r3, #4]
200010de:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
200010e2:	6053      	str	r3, [r2, #4]
200010e4:	4a3f      	ldr	r2, [pc, #252]	; (200011e4 <PortConfig+0x1b8>)
200010e6:	4b3f      	ldr	r3, [pc, #252]	; (200011e4 <PortConfig+0x1b8>)
200010e8:	685b      	ldr	r3, [r3, #4]
200010ea:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
200010ee:	6053      	str	r3, [r2, #4]
200010f0:	4a3c      	ldr	r2, [pc, #240]	; (200011e4 <PortConfig+0x1b8>)
200010f2:	4b3c      	ldr	r3, [pc, #240]	; (200011e4 <PortConfig+0x1b8>)
200010f4:	689b      	ldr	r3, [r3, #8]
200010f6:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
200010fa:	6093      	str	r3, [r2, #8]
200010fc:	4a39      	ldr	r2, [pc, #228]	; (200011e4 <PortConfig+0x1b8>)
200010fe:	4b39      	ldr	r3, [pc, #228]	; (200011e4 <PortConfig+0x1b8>)
20001100:	689b      	ldr	r3, [r3, #8]
20001102:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
20001106:	6093      	str	r3, [r2, #8]
20001108:	4a36      	ldr	r2, [pc, #216]	; (200011e4 <PortConfig+0x1b8>)
2000110a:	4b36      	ldr	r3, [pc, #216]	; (200011e4 <PortConfig+0x1b8>)
2000110c:	68db      	ldr	r3, [r3, #12]
2000110e:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001112:	60d3      	str	r3, [r2, #12]
20001114:	4a33      	ldr	r2, [pc, #204]	; (200011e4 <PortConfig+0x1b8>)
20001116:	4b33      	ldr	r3, [pc, #204]	; (200011e4 <PortConfig+0x1b8>)
20001118:	699b      	ldr	r3, [r3, #24]
2000111a:	f443 5370 	orr.w	r3, r3, #15360	; 0x3c00
2000111e:	6193      	str	r3, [r2, #24]
20001120:	4a2e      	ldr	r2, [pc, #184]	; (200011dc <PortConfig+0x1b0>)
20001122:	4b2e      	ldr	r3, [pc, #184]	; (200011dc <PortConfig+0x1b0>)
20001124:	69db      	ldr	r3, [r3, #28]
20001126:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
2000112a:	61d3      	str	r3, [r2, #28]
2000112c:	4b2e      	ldr	r3, [pc, #184]	; (200011e8 <PortConfig+0x1bc>)
2000112e:	4a2f      	ldr	r2, [pc, #188]	; (200011ec <PortConfig+0x1c0>)
20001130:	609a      	str	r2, [r3, #8]
20001132:	4b2d      	ldr	r3, [pc, #180]	; (200011e8 <PortConfig+0x1bc>)
20001134:	f64f 72ff 	movw	r2, #65535	; 0xffff
20001138:	60da      	str	r2, [r3, #12]
2000113a:	4b2b      	ldr	r3, [pc, #172]	; (200011e8 <PortConfig+0x1bc>)
2000113c:	f04f 32ff 	mov.w	r2, #4294967295
20001140:	619a      	str	r2, [r3, #24]
20001142:	4b29      	ldr	r3, [pc, #164]	; (200011e8 <PortConfig+0x1bc>)
20001144:	f64f 72ff 	movw	r2, #65535	; 0xffff
20001148:	605a      	str	r2, [r3, #4]
2000114a:	4a27      	ldr	r2, [pc, #156]	; (200011e8 <PortConfig+0x1bc>)
2000114c:	4b26      	ldr	r3, [pc, #152]	; (200011e8 <PortConfig+0x1bc>)
2000114e:	681b      	ldr	r3, [r3, #0]
20001150:	f023 0303 	bic.w	r3, r3, #3
20001154:	6013      	str	r3, [r2, #0]
20001156:	4a24      	ldr	r2, [pc, #144]	; (200011e8 <PortConfig+0x1bc>)
20001158:	4b23      	ldr	r3, [pc, #140]	; (200011e8 <PortConfig+0x1bc>)
2000115a:	681b      	ldr	r3, [r3, #0]
2000115c:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20001160:	6013      	str	r3, [r2, #0]
20001162:	4a1e      	ldr	r2, [pc, #120]	; (200011dc <PortConfig+0x1b0>)
20001164:	4b1d      	ldr	r3, [pc, #116]	; (200011dc <PortConfig+0x1b0>)
20001166:	69db      	ldr	r3, [r3, #28]
20001168:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
2000116c:	61d3      	str	r3, [r2, #28]
2000116e:	4b20      	ldr	r3, [pc, #128]	; (200011f0 <PortConfig+0x1c4>)
20001170:	2200      	movs	r2, #0
20001172:	609a      	str	r2, [r3, #8]
20001174:	4a1e      	ldr	r2, [pc, #120]	; (200011f0 <PortConfig+0x1c4>)
20001176:	4b1e      	ldr	r3, [pc, #120]	; (200011f0 <PortConfig+0x1c4>)
20001178:	685b      	ldr	r3, [r3, #4]
2000117a:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000117e:	6053      	str	r3, [r2, #4]
20001180:	4a1b      	ldr	r2, [pc, #108]	; (200011f0 <PortConfig+0x1c4>)
20001182:	4b1b      	ldr	r3, [pc, #108]	; (200011f0 <PortConfig+0x1c4>)
20001184:	68db      	ldr	r3, [r3, #12]
20001186:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000118a:	60d3      	str	r3, [r2, #12]
2000118c:	4b18      	ldr	r3, [pc, #96]	; (200011f0 <PortConfig+0x1c4>)
2000118e:	f04f 32ff 	mov.w	r2, #4294967295
20001192:	619a      	str	r2, [r3, #24]
20001194:	4a16      	ldr	r2, [pc, #88]	; (200011f0 <PortConfig+0x1c4>)
20001196:	4b16      	ldr	r3, [pc, #88]	; (200011f0 <PortConfig+0x1c4>)
20001198:	681b      	ldr	r3, [r3, #0]
2000119a:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000119e:	6013      	str	r3, [r2, #0]
200011a0:	4a0e      	ldr	r2, [pc, #56]	; (200011dc <PortConfig+0x1b0>)
200011a2:	4b0e      	ldr	r3, [pc, #56]	; (200011dc <PortConfig+0x1b0>)
200011a4:	69db      	ldr	r3, [r3, #28]
200011a6:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
200011aa:	61d3      	str	r3, [r2, #28]
200011ac:	4a11      	ldr	r2, [pc, #68]	; (200011f4 <PortConfig+0x1c8>)
200011ae:	4b11      	ldr	r3, [pc, #68]	; (200011f4 <PortConfig+0x1c8>)
200011b0:	68db      	ldr	r3, [r3, #12]
200011b2:	f423 7300 	bic.w	r3, r3, #512	; 0x200
200011b6:	f023 0301 	bic.w	r3, r3, #1
200011ba:	60d3      	str	r3, [r2, #12]
200011bc:	4a07      	ldr	r2, [pc, #28]	; (200011dc <PortConfig+0x1b0>)
200011be:	4b07      	ldr	r3, [pc, #28]	; (200011dc <PortConfig+0x1b0>)
200011c0:	69db      	ldr	r3, [r3, #28]
200011c2:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
200011c6:	61d3      	str	r3, [r2, #28]
200011c8:	4a0b      	ldr	r2, [pc, #44]	; (200011f8 <PortConfig+0x1cc>)
200011ca:	4b0b      	ldr	r3, [pc, #44]	; (200011f8 <PortConfig+0x1cc>)
200011cc:	68db      	ldr	r3, [r3, #12]
200011ce:	f423 73c0 	bic.w	r3, r3, #384	; 0x180
200011d2:	60d3      	str	r3, [r2, #12]
200011d4:	bf00      	nop
200011d6:	46bd      	mov	sp, r7
200011d8:	bc80      	pop	{r7}
200011da:	4770      	bx	lr
200011dc:	40020000 	.word	0x40020000
200011e0:	400a8000 	.word	0x400a8000
200011e4:	400b0000 	.word	0x400b0000
200011e8:	400b8000 	.word	0x400b8000
200011ec:	000aaaa0 	.word	0x000aaaa0
200011f0:	400e8000 	.word	0x400e8000
200011f4:	400c8000 	.word	0x400c8000
200011f8:	400c0000 	.word	0x400c0000

200011fc <ClkConfig>:
200011fc:	b480      	push	{r7}
200011fe:	af00      	add	r7, sp, #0
20001200:	4a16      	ldr	r2, [pc, #88]	; (2000125c <ClkConfig+0x60>)
20001202:	4b16      	ldr	r3, [pc, #88]	; (2000125c <ClkConfig+0x60>)
20001204:	689b      	ldr	r3, [r3, #8]
20001206:	f043 0301 	orr.w	r3, r3, #1
2000120a:	6093      	str	r3, [r2, #8]
2000120c:	bf00      	nop
2000120e:	4b13      	ldr	r3, [pc, #76]	; (2000125c <ClkConfig+0x60>)
20001210:	681b      	ldr	r3, [r3, #0]
20001212:	f003 0304 	and.w	r3, r3, #4
20001216:	2b00      	cmp	r3, #0
20001218:	d0f9      	beq.n	2000120e <ClkConfig+0x12>
2000121a:	4b10      	ldr	r3, [pc, #64]	; (2000125c <ClkConfig+0x60>)
2000121c:	2206      	movs	r2, #6
2000121e:	60da      	str	r2, [r3, #12]
20001220:	4b0e      	ldr	r3, [pc, #56]	; (2000125c <ClkConfig+0x60>)
20001222:	f640 1204 	movw	r2, #2308	; 0x904
20001226:	605a      	str	r2, [r3, #4]
20001228:	bf00      	nop
2000122a:	4b0c      	ldr	r3, [pc, #48]	; (2000125c <ClkConfig+0x60>)
2000122c:	681b      	ldr	r3, [r3, #0]
2000122e:	f003 0302 	and.w	r3, r3, #2
20001232:	2b00      	cmp	r3, #0
20001234:	d0f9      	beq.n	2000122a <ClkConfig+0x2e>
20001236:	4a09      	ldr	r2, [pc, #36]	; (2000125c <ClkConfig+0x60>)
20001238:	4b08      	ldr	r3, [pc, #32]	; (2000125c <ClkConfig+0x60>)
2000123a:	68db      	ldr	r3, [r3, #12]
2000123c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001240:	60d3      	str	r3, [r2, #12]
20001242:	4a07      	ldr	r2, [pc, #28]	; (20001260 <ClkConfig+0x64>)
20001244:	4b06      	ldr	r3, [pc, #24]	; (20001260 <ClkConfig+0x64>)
20001246:	681b      	ldr	r3, [r3, #0]
20001248:	f043 0320 	orr.w	r3, r3, #32
2000124c:	6013      	str	r3, [r2, #0]
2000124e:	4b05      	ldr	r3, [pc, #20]	; (20001264 <ClkConfig+0x68>)
20001250:	2200      	movs	r2, #0
20001252:	601a      	str	r2, [r3, #0]
20001254:	bf00      	nop
20001256:	46bd      	mov	sp, r7
20001258:	bc80      	pop	{r7}
2000125a:	4770      	bx	lr
2000125c:	40020000 	.word	0x40020000
20001260:	40018000 	.word	0x40018000
20001264:	20003800 	.word	0x20003800

20001268 <TimerConfig>:
20001268:	b580      	push	{r7, lr}
2000126a:	af00      	add	r7, sp, #0
2000126c:	4a8a      	ldr	r2, [pc, #552]	; (20001498 <TimerConfig+0x230>)
2000126e:	4b8a      	ldr	r3, [pc, #552]	; (20001498 <TimerConfig+0x230>)
20001270:	69db      	ldr	r3, [r3, #28]
20001272:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
20001276:	61d3      	str	r3, [r2, #28]
20001278:	4a87      	ldr	r2, [pc, #540]	; (20001498 <TimerConfig+0x230>)
2000127a:	4b87      	ldr	r3, [pc, #540]	; (20001498 <TimerConfig+0x230>)
2000127c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000127e:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
20001282:	6253      	str	r3, [r2, #36]	; 0x24
20001284:	4a84      	ldr	r2, [pc, #528]	; (20001498 <TimerConfig+0x230>)
20001286:	4b84      	ldr	r3, [pc, #528]	; (20001498 <TimerConfig+0x230>)
20001288:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000128a:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
2000128e:	6253      	str	r3, [r2, #36]	; 0x24
20001290:	4b82      	ldr	r3, [pc, #520]	; (2000149c <TimerConfig+0x234>)
20001292:	2200      	movs	r2, #0
20001294:	601a      	str	r2, [r3, #0]
20001296:	4b81      	ldr	r3, [pc, #516]	; (2000149c <TimerConfig+0x234>)
20001298:	224f      	movs	r2, #79	; 0x4f
2000129a:	605a      	str	r2, [r3, #4]
2000129c:	4b7f      	ldr	r3, [pc, #508]	; (2000149c <TimerConfig+0x234>)
2000129e:	f240 32e7 	movw	r2, #999	; 0x3e7
200012a2:	609a      	str	r2, [r3, #8]
200012a4:	4a7d      	ldr	r2, [pc, #500]	; (2000149c <TimerConfig+0x234>)
200012a6:	4b7d      	ldr	r3, [pc, #500]	; (2000149c <TimerConfig+0x234>)
200012a8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200012aa:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
200012ae:	6253      	str	r3, [r2, #36]	; 0x24
200012b0:	4a7a      	ldr	r2, [pc, #488]	; (2000149c <TimerConfig+0x234>)
200012b2:	4b7a      	ldr	r3, [pc, #488]	; (2000149c <TimerConfig+0x234>)
200012b4:	6d9b      	ldr	r3, [r3, #88]	; 0x58
200012b6:	f043 0302 	orr.w	r3, r3, #2
200012ba:	6593      	str	r3, [r2, #88]	; 0x58
200012bc:	4b77      	ldr	r3, [pc, #476]	; (2000149c <TimerConfig+0x234>)
200012be:	2201      	movs	r2, #1
200012c0:	60da      	str	r2, [r3, #12]
200012c2:	4a75      	ldr	r2, [pc, #468]	; (20001498 <TimerConfig+0x230>)
200012c4:	4b74      	ldr	r3, [pc, #464]	; (20001498 <TimerConfig+0x230>)
200012c6:	69db      	ldr	r3, [r3, #28]
200012c8:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
200012cc:	61d3      	str	r3, [r2, #28]
200012ce:	4a72      	ldr	r2, [pc, #456]	; (20001498 <TimerConfig+0x230>)
200012d0:	4b71      	ldr	r3, [pc, #452]	; (20001498 <TimerConfig+0x230>)
200012d2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200012d4:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
200012d8:	6253      	str	r3, [r2, #36]	; 0x24
200012da:	4a6f      	ldr	r2, [pc, #444]	; (20001498 <TimerConfig+0x230>)
200012dc:	4b6e      	ldr	r3, [pc, #440]	; (20001498 <TimerConfig+0x230>)
200012de:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200012e0:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
200012e4:	6253      	str	r3, [r2, #36]	; 0x24
200012e6:	4b6e      	ldr	r3, [pc, #440]	; (200014a0 <TimerConfig+0x238>)
200012e8:	2200      	movs	r2, #0
200012ea:	601a      	str	r2, [r3, #0]
200012ec:	4b6c      	ldr	r3, [pc, #432]	; (200014a0 <TimerConfig+0x238>)
200012ee:	2202      	movs	r2, #2
200012f0:	605a      	str	r2, [r3, #4]
200012f2:	4b6b      	ldr	r3, [pc, #428]	; (200014a0 <TimerConfig+0x238>)
200012f4:	f240 32ff 	movw	r2, #1023	; 0x3ff
200012f8:	609a      	str	r2, [r3, #8]
200012fa:	4b69      	ldr	r3, [pc, #420]	; (200014a0 <TimerConfig+0x238>)
200012fc:	f44f 7200 	mov.w	r2, #512	; 0x200
20001300:	611a      	str	r2, [r3, #16]
20001302:	4b67      	ldr	r3, [pc, #412]	; (200014a0 <TimerConfig+0x238>)
20001304:	f44f 7200 	mov.w	r2, #512	; 0x200
20001308:	615a      	str	r2, [r3, #20]
2000130a:	4b65      	ldr	r3, [pc, #404]	; (200014a0 <TimerConfig+0x238>)
2000130c:	f44f 7200 	mov.w	r2, #512	; 0x200
20001310:	619a      	str	r2, [r3, #24]
20001312:	4a63      	ldr	r2, [pc, #396]	; (200014a0 <TimerConfig+0x238>)
20001314:	4b62      	ldr	r3, [pc, #392]	; (200014a0 <TimerConfig+0x238>)
20001316:	6a1b      	ldr	r3, [r3, #32]
20001318:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
2000131c:	6213      	str	r3, [r2, #32]
2000131e:	4a60      	ldr	r2, [pc, #384]	; (200014a0 <TimerConfig+0x238>)
20001320:	4b5f      	ldr	r3, [pc, #380]	; (200014a0 <TimerConfig+0x238>)
20001322:	6a1b      	ldr	r3, [r3, #32]
20001324:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001328:	6213      	str	r3, [r2, #32]
2000132a:	4a5d      	ldr	r2, [pc, #372]	; (200014a0 <TimerConfig+0x238>)
2000132c:	4b5c      	ldr	r3, [pc, #368]	; (200014a0 <TimerConfig+0x238>)
2000132e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001330:	f023 030f 	bic.w	r3, r3, #15
20001334:	6313      	str	r3, [r2, #48]	; 0x30
20001336:	4a5a      	ldr	r2, [pc, #360]	; (200014a0 <TimerConfig+0x238>)
20001338:	4b59      	ldr	r3, [pc, #356]	; (200014a0 <TimerConfig+0x238>)
2000133a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000133c:	f043 030c 	orr.w	r3, r3, #12
20001340:	6313      	str	r3, [r2, #48]	; 0x30
20001342:	4a57      	ldr	r2, [pc, #348]	; (200014a0 <TimerConfig+0x238>)
20001344:	4b56      	ldr	r3, [pc, #344]	; (200014a0 <TimerConfig+0x238>)
20001346:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001348:	f043 0301 	orr.w	r3, r3, #1
2000134c:	6313      	str	r3, [r2, #48]	; 0x30
2000134e:	4a54      	ldr	r2, [pc, #336]	; (200014a0 <TimerConfig+0x238>)
20001350:	4b53      	ldr	r3, [pc, #332]	; (200014a0 <TimerConfig+0x238>)
20001352:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001354:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001358:	6313      	str	r3, [r2, #48]	; 0x30
2000135a:	4a51      	ldr	r2, [pc, #324]	; (200014a0 <TimerConfig+0x238>)
2000135c:	4b50      	ldr	r3, [pc, #320]	; (200014a0 <TimerConfig+0x238>)
2000135e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001360:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001364:	6313      	str	r3, [r2, #48]	; 0x30
20001366:	4a4e      	ldr	r2, [pc, #312]	; (200014a0 <TimerConfig+0x238>)
20001368:	4b4d      	ldr	r3, [pc, #308]	; (200014a0 <TimerConfig+0x238>)
2000136a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000136c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001370:	6313      	str	r3, [r2, #48]	; 0x30
20001372:	4a4b      	ldr	r2, [pc, #300]	; (200014a0 <TimerConfig+0x238>)
20001374:	4b4a      	ldr	r3, [pc, #296]	; (200014a0 <TimerConfig+0x238>)
20001376:	6e1b      	ldr	r3, [r3, #96]	; 0x60
20001378:	f043 0308 	orr.w	r3, r3, #8
2000137c:	6613      	str	r3, [r2, #96]	; 0x60
2000137e:	4a48      	ldr	r2, [pc, #288]	; (200014a0 <TimerConfig+0x238>)
20001380:	4b47      	ldr	r3, [pc, #284]	; (200014a0 <TimerConfig+0x238>)
20001382:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001384:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001388:	6253      	str	r3, [r2, #36]	; 0x24
2000138a:	4a45      	ldr	r2, [pc, #276]	; (200014a0 <TimerConfig+0x238>)
2000138c:	4b44      	ldr	r3, [pc, #272]	; (200014a0 <TimerConfig+0x238>)
2000138e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001390:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001394:	6253      	str	r3, [r2, #36]	; 0x24
20001396:	4a42      	ldr	r2, [pc, #264]	; (200014a0 <TimerConfig+0x238>)
20001398:	4b41      	ldr	r3, [pc, #260]	; (200014a0 <TimerConfig+0x238>)
2000139a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000139c:	f023 030f 	bic.w	r3, r3, #15
200013a0:	6353      	str	r3, [r2, #52]	; 0x34
200013a2:	4a3f      	ldr	r2, [pc, #252]	; (200014a0 <TimerConfig+0x238>)
200013a4:	4b3e      	ldr	r3, [pc, #248]	; (200014a0 <TimerConfig+0x238>)
200013a6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013a8:	f043 030c 	orr.w	r3, r3, #12
200013ac:	6353      	str	r3, [r2, #52]	; 0x34
200013ae:	4a3c      	ldr	r2, [pc, #240]	; (200014a0 <TimerConfig+0x238>)
200013b0:	4b3b      	ldr	r3, [pc, #236]	; (200014a0 <TimerConfig+0x238>)
200013b2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013b4:	f043 0301 	orr.w	r3, r3, #1
200013b8:	6353      	str	r3, [r2, #52]	; 0x34
200013ba:	4a39      	ldr	r2, [pc, #228]	; (200014a0 <TimerConfig+0x238>)
200013bc:	4b38      	ldr	r3, [pc, #224]	; (200014a0 <TimerConfig+0x238>)
200013be:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013c0:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
200013c4:	6353      	str	r3, [r2, #52]	; 0x34
200013c6:	4a36      	ldr	r2, [pc, #216]	; (200014a0 <TimerConfig+0x238>)
200013c8:	4b35      	ldr	r3, [pc, #212]	; (200014a0 <TimerConfig+0x238>)
200013ca:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013cc:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200013d0:	6353      	str	r3, [r2, #52]	; 0x34
200013d2:	4a33      	ldr	r2, [pc, #204]	; (200014a0 <TimerConfig+0x238>)
200013d4:	4b32      	ldr	r3, [pc, #200]	; (200014a0 <TimerConfig+0x238>)
200013d6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013d8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200013dc:	6353      	str	r3, [r2, #52]	; 0x34
200013de:	4a30      	ldr	r2, [pc, #192]	; (200014a0 <TimerConfig+0x238>)
200013e0:	4b2f      	ldr	r3, [pc, #188]	; (200014a0 <TimerConfig+0x238>)
200013e2:	6e5b      	ldr	r3, [r3, #100]	; 0x64
200013e4:	f043 0308 	orr.w	r3, r3, #8
200013e8:	6653      	str	r3, [r2, #100]	; 0x64
200013ea:	4a2d      	ldr	r2, [pc, #180]	; (200014a0 <TimerConfig+0x238>)
200013ec:	4b2c      	ldr	r3, [pc, #176]	; (200014a0 <TimerConfig+0x238>)
200013ee:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200013f0:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200013f4:	6293      	str	r3, [r2, #40]	; 0x28
200013f6:	4a2a      	ldr	r2, [pc, #168]	; (200014a0 <TimerConfig+0x238>)
200013f8:	4b29      	ldr	r3, [pc, #164]	; (200014a0 <TimerConfig+0x238>)
200013fa:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200013fc:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001400:	6293      	str	r3, [r2, #40]	; 0x28
20001402:	4a27      	ldr	r2, [pc, #156]	; (200014a0 <TimerConfig+0x238>)
20001404:	4b26      	ldr	r3, [pc, #152]	; (200014a0 <TimerConfig+0x238>)
20001406:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001408:	f023 030f 	bic.w	r3, r3, #15
2000140c:	6393      	str	r3, [r2, #56]	; 0x38
2000140e:	4a24      	ldr	r2, [pc, #144]	; (200014a0 <TimerConfig+0x238>)
20001410:	4b23      	ldr	r3, [pc, #140]	; (200014a0 <TimerConfig+0x238>)
20001412:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001414:	f043 030c 	orr.w	r3, r3, #12
20001418:	6393      	str	r3, [r2, #56]	; 0x38
2000141a:	4a21      	ldr	r2, [pc, #132]	; (200014a0 <TimerConfig+0x238>)
2000141c:	4b20      	ldr	r3, [pc, #128]	; (200014a0 <TimerConfig+0x238>)
2000141e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001420:	f043 0301 	orr.w	r3, r3, #1
20001424:	6393      	str	r3, [r2, #56]	; 0x38
20001426:	4a1e      	ldr	r2, [pc, #120]	; (200014a0 <TimerConfig+0x238>)
20001428:	4b1d      	ldr	r3, [pc, #116]	; (200014a0 <TimerConfig+0x238>)
2000142a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000142c:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001430:	6393      	str	r3, [r2, #56]	; 0x38
20001432:	4a1b      	ldr	r2, [pc, #108]	; (200014a0 <TimerConfig+0x238>)
20001434:	4b1a      	ldr	r3, [pc, #104]	; (200014a0 <TimerConfig+0x238>)
20001436:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001438:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000143c:	6393      	str	r3, [r2, #56]	; 0x38
2000143e:	4a18      	ldr	r2, [pc, #96]	; (200014a0 <TimerConfig+0x238>)
20001440:	4b17      	ldr	r3, [pc, #92]	; (200014a0 <TimerConfig+0x238>)
20001442:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001444:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001448:	6393      	str	r3, [r2, #56]	; 0x38
2000144a:	4a15      	ldr	r2, [pc, #84]	; (200014a0 <TimerConfig+0x238>)
2000144c:	4b14      	ldr	r3, [pc, #80]	; (200014a0 <TimerConfig+0x238>)
2000144e:	6e9b      	ldr	r3, [r3, #104]	; 0x68
20001450:	f043 0308 	orr.w	r3, r3, #8
20001454:	6693      	str	r3, [r2, #104]	; 0x68
20001456:	4a12      	ldr	r2, [pc, #72]	; (200014a0 <TimerConfig+0x238>)
20001458:	4b11      	ldr	r3, [pc, #68]	; (200014a0 <TimerConfig+0x238>)
2000145a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000145c:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001460:	6413      	str	r3, [r2, #64]	; 0x40
20001462:	4a0f      	ldr	r2, [pc, #60]	; (200014a0 <TimerConfig+0x238>)
20001464:	4b0e      	ldr	r3, [pc, #56]	; (200014a0 <TimerConfig+0x238>)
20001466:	6c5b      	ldr	r3, [r3, #68]	; 0x44
20001468:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
2000146c:	6453      	str	r3, [r2, #68]	; 0x44
2000146e:	4a0c      	ldr	r2, [pc, #48]	; (200014a0 <TimerConfig+0x238>)
20001470:	4b0b      	ldr	r3, [pc, #44]	; (200014a0 <TimerConfig+0x238>)
20001472:	6c9b      	ldr	r3, [r3, #72]	; 0x48
20001474:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
20001478:	6493      	str	r3, [r2, #72]	; 0x48
2000147a:	4a09      	ldr	r2, [pc, #36]	; (200014a0 <TimerConfig+0x238>)
2000147c:	4b08      	ldr	r3, [pc, #32]	; (200014a0 <TimerConfig+0x238>)
2000147e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001480:	f043 0302 	orr.w	r3, r3, #2
20001484:	6593      	str	r3, [r2, #88]	; 0x58
20001486:	2010      	movs	r0, #16
20001488:	f7ff fdb8 	bl	20000ffc <NVIC_EnableIRQ>
2000148c:	4b04      	ldr	r3, [pc, #16]	; (200014a0 <TimerConfig+0x238>)
2000148e:	2201      	movs	r2, #1
20001490:	60da      	str	r2, [r3, #12]
20001492:	bf00      	nop
20001494:	bd80      	pop	{r7, pc}
20001496:	bf00      	nop
20001498:	40020000 	.word	0x40020000
2000149c:	40070000 	.word	0x40070000
200014a0:	40080000 	.word	0x40080000

200014a4 <set_ram_vt>:
200014a4:	b480      	push	{r7}
200014a6:	b085      	sub	sp, #20
200014a8:	af00      	add	r7, sp, #0
200014aa:	2300      	movs	r3, #0
200014ac:	60fb      	str	r3, [r7, #12]
200014ae:	2300      	movs	r3, #0
200014b0:	607b      	str	r3, [r7, #4]
200014b2:	4b14      	ldr	r3, [pc, #80]	; (20001504 <set_ram_vt+0x60>)
200014b4:	60bb      	str	r3, [r7, #8]
200014b6:	2300      	movs	r3, #0
200014b8:	60fb      	str	r3, [r7, #12]
200014ba:	e00b      	b.n	200014d4 <set_ram_vt+0x30>
200014bc:	68bb      	ldr	r3, [r7, #8]
200014be:	1d1a      	adds	r2, r3, #4
200014c0:	60ba      	str	r2, [r7, #8]
200014c2:	68fa      	ldr	r2, [r7, #12]
200014c4:	0092      	lsls	r2, r2, #2
200014c6:	6879      	ldr	r1, [r7, #4]
200014c8:	440a      	add	r2, r1
200014ca:	6812      	ldr	r2, [r2, #0]
200014cc:	601a      	str	r2, [r3, #0]
200014ce:	68fb      	ldr	r3, [r7, #12]
200014d0:	3301      	adds	r3, #1
200014d2:	60fb      	str	r3, [r7, #12]
200014d4:	68fb      	ldr	r3, [r7, #12]
200014d6:	2b2f      	cmp	r3, #47	; 0x2f
200014d8:	d9f0      	bls.n	200014bc <set_ram_vt+0x18>
200014da:	4b0b      	ldr	r3, [pc, #44]	; (20001508 <set_ram_vt+0x64>)
200014dc:	4a09      	ldr	r2, [pc, #36]	; (20001504 <set_ram_vt+0x60>)
200014de:	609a      	str	r2, [r3, #8]
200014e0:	4b08      	ldr	r3, [pc, #32]	; (20001504 <set_ram_vt+0x60>)
200014e2:	4a0a      	ldr	r2, [pc, #40]	; (2000150c <set_ram_vt+0x68>)
200014e4:	63da      	str	r2, [r3, #60]	; 0x3c
200014e6:	4b07      	ldr	r3, [pc, #28]	; (20001504 <set_ram_vt+0x60>)
200014e8:	4a09      	ldr	r2, [pc, #36]	; (20001510 <set_ram_vt+0x6c>)
200014ea:	659a      	str	r2, [r3, #88]	; 0x58
200014ec:	4b05      	ldr	r3, [pc, #20]	; (20001504 <set_ram_vt+0x60>)
200014ee:	4a09      	ldr	r2, [pc, #36]	; (20001514 <set_ram_vt+0x70>)
200014f0:	679a      	str	r2, [r3, #120]	; 0x78
200014f2:	4b04      	ldr	r3, [pc, #16]	; (20001504 <set_ram_vt+0x60>)
200014f4:	4a08      	ldr	r2, [pc, #32]	; (20001518 <set_ram_vt+0x74>)
200014f6:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
200014fa:	bf00      	nop
200014fc:	3714      	adds	r7, #20
200014fe:	46bd      	mov	sp, r7
20001500:	bc80      	pop	{r7}
20001502:	4770      	bx	lr
20001504:	20003900 	.word	0x20003900
20001508:	e000ed00 	.word	0xe000ed00
2000150c:	200015d5 	.word	0x200015d5
20001510:	200015f1 	.word	0x200015f1
20001514:	20000445 	.word	0x20000445
20001518:	2000045d 	.word	0x2000045d

2000151c <uart_init>:
2000151c:	b480      	push	{r7}
2000151e:	af00      	add	r7, sp, #0
20001520:	4b22      	ldr	r3, [pc, #136]	; (200015ac <uart_init+0x90>)
20001522:	2200      	movs	r2, #0
20001524:	601a      	str	r2, [r3, #0]
20001526:	4a22      	ldr	r2, [pc, #136]	; (200015b0 <uart_init+0x94>)
20001528:	4b21      	ldr	r3, [pc, #132]	; (200015b0 <uart_init+0x94>)
2000152a:	69db      	ldr	r3, [r3, #28]
2000152c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001530:	61d3      	str	r3, [r2, #28]
20001532:	4a1f      	ldr	r2, [pc, #124]	; (200015b0 <uart_init+0x94>)
20001534:	4b1e      	ldr	r3, [pc, #120]	; (200015b0 <uart_init+0x94>)
20001536:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001538:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
2000153c:	6293      	str	r3, [r2, #40]	; 0x28
2000153e:	4b1d      	ldr	r3, [pc, #116]	; (200015b4 <uart_init+0x98>)
20001540:	2204      	movs	r2, #4
20001542:	625a      	str	r2, [r3, #36]	; 0x24
20001544:	4b1b      	ldr	r3, [pc, #108]	; (200015b4 <uart_init+0x98>)
20001546:	2200      	movs	r2, #0
20001548:	629a      	str	r2, [r3, #40]	; 0x28
2000154a:	4a1a      	ldr	r2, [pc, #104]	; (200015b4 <uart_init+0x98>)
2000154c:	4b19      	ldr	r3, [pc, #100]	; (200015b4 <uart_init+0x98>)
2000154e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001550:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
20001554:	6353      	str	r3, [r2, #52]	; 0x34
20001556:	4a17      	ldr	r2, [pc, #92]	; (200015b4 <uart_init+0x98>)
20001558:	4b16      	ldr	r3, [pc, #88]	; (200015b4 <uart_init+0x98>)
2000155a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000155c:	f043 0312 	orr.w	r3, r3, #18
20001560:	6353      	str	r3, [r2, #52]	; 0x34
20001562:	4a14      	ldr	r2, [pc, #80]	; (200015b4 <uart_init+0x98>)
20001564:	4b13      	ldr	r3, [pc, #76]	; (200015b4 <uart_init+0x98>)
20001566:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001568:	f043 0310 	orr.w	r3, r3, #16
2000156c:	62d3      	str	r3, [r2, #44]	; 0x2c
2000156e:	4a11      	ldr	r2, [pc, #68]	; (200015b4 <uart_init+0x98>)
20001570:	4b10      	ldr	r3, [pc, #64]	; (200015b4 <uart_init+0x98>)
20001572:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001574:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20001578:	62d3      	str	r3, [r2, #44]	; 0x2c
2000157a:	4a0e      	ldr	r2, [pc, #56]	; (200015b4 <uart_init+0x98>)
2000157c:	4b0d      	ldr	r3, [pc, #52]	; (200015b4 <uart_init+0x98>)
2000157e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001580:	f443 7340 	orr.w	r3, r3, #768	; 0x300
20001584:	f043 0301 	orr.w	r3, r3, #1
20001588:	6313      	str	r3, [r2, #48]	; 0x30
2000158a:	4a0a      	ldr	r2, [pc, #40]	; (200015b4 <uart_init+0x98>)
2000158c:	4b09      	ldr	r3, [pc, #36]	; (200015b4 <uart_init+0x98>)
2000158e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001590:	f043 0310 	orr.w	r3, r3, #16
20001594:	6393      	str	r3, [r2, #56]	; 0x38
20001596:	4a07      	ldr	r2, [pc, #28]	; (200015b4 <uart_init+0x98>)
20001598:	4b06      	ldr	r3, [pc, #24]	; (200015b4 <uart_init+0x98>)
2000159a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000159c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
200015a0:	6393      	str	r3, [r2, #56]	; 0x38
200015a2:	bf00      	nop
200015a4:	46bd      	mov	sp, r7
200015a6:	bc80      	pop	{r7}
200015a8:	4770      	bx	lr
200015aa:	bf00      	nop
200015ac:	200039d0 	.word	0x200039d0
200015b0:	40020000 	.word	0x40020000
200015b4:	40030000 	.word	0x40030000

200015b8 <system_init>:
200015b8:	b580      	push	{r7, lr}
200015ba:	af00      	add	r7, sp, #0
200015bc:	f7ff ff72 	bl	200014a4 <set_ram_vt>
200015c0:	f7ff fe1c 	bl	200011fc <ClkConfig>
200015c4:	f7ff fd32 	bl	2000102c <PortConfig>
200015c8:	f7ff fe4e 	bl	20001268 <TimerConfig>
200015cc:	f7ff ffa6 	bl	2000151c <uart_init>
200015d0:	bf00      	nop
200015d2:	bd80      	pop	{r7, pc}

200015d4 <SysTick_Handler>:
200015d4:	b480      	push	{r7}
200015d6:	af00      	add	r7, sp, #0
200015d8:	4b04      	ldr	r3, [pc, #16]	; (200015ec <SysTick_Handler+0x18>)
200015da:	681b      	ldr	r3, [r3, #0]
200015dc:	3301      	adds	r3, #1
200015de:	4a03      	ldr	r2, [pc, #12]	; (200015ec <SysTick_Handler+0x18>)
200015e0:	6013      	str	r3, [r2, #0]
200015e2:	bf00      	nop
200015e4:	46bd      	mov	sp, r7
200015e6:	bc80      	pop	{r7}
200015e8:	4770      	bx	lr
200015ea:	bf00      	nop
200015ec:	20003800 	.word	0x20003800

200015f0 <UART1_Handler>:
200015f0:	b480      	push	{r7}
200015f2:	b083      	sub	sp, #12
200015f4:	af00      	add	r7, sp, #0
200015f6:	4b1d      	ldr	r3, [pc, #116]	; (2000166c <UART1_Handler+0x7c>)
200015f8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200015fa:	f003 0310 	and.w	r3, r3, #16
200015fe:	2b00      	cmp	r3, #0
20001600:	d01f      	beq.n	20001642 <UART1_Handler+0x52>
20001602:	e002      	b.n	2000160a <UART1_Handler+0x1a>
20001604:	4b19      	ldr	r3, [pc, #100]	; (2000166c <UART1_Handler+0x7c>)
20001606:	681b      	ldr	r3, [r3, #0]
20001608:	71fb      	strb	r3, [r7, #7]
2000160a:	4b18      	ldr	r3, [pc, #96]	; (2000166c <UART1_Handler+0x7c>)
2000160c:	699b      	ldr	r3, [r3, #24]
2000160e:	f003 0310 	and.w	r3, r3, #16
20001612:	2b00      	cmp	r3, #0
20001614:	d0f6      	beq.n	20001604 <UART1_Handler+0x14>
20001616:	4b16      	ldr	r3, [pc, #88]	; (20001670 <UART1_Handler+0x80>)
20001618:	681b      	ldr	r3, [r3, #0]
2000161a:	80bb      	strh	r3, [r7, #4]
2000161c:	4b14      	ldr	r3, [pc, #80]	; (20001670 <UART1_Handler+0x80>)
2000161e:	689b      	ldr	r3, [r3, #8]
20001620:	085b      	lsrs	r3, r3, #1
20001622:	807b      	strh	r3, [r7, #2]
20001624:	88ba      	ldrh	r2, [r7, #4]
20001626:	887b      	ldrh	r3, [r7, #2]
20001628:	429a      	cmp	r2, r3
2000162a:	d205      	bcs.n	20001638 <UART1_Handler+0x48>
2000162c:	4a10      	ldr	r2, [pc, #64]	; (20001670 <UART1_Handler+0x80>)
2000162e:	4b10      	ldr	r3, [pc, #64]	; (20001670 <UART1_Handler+0x80>)
20001630:	681b      	ldr	r3, [r3, #0]
20001632:	3b01      	subs	r3, #1
20001634:	6013      	str	r3, [r2, #0]
20001636:	e004      	b.n	20001642 <UART1_Handler+0x52>
20001638:	4a0d      	ldr	r2, [pc, #52]	; (20001670 <UART1_Handler+0x80>)
2000163a:	4b0d      	ldr	r3, [pc, #52]	; (20001670 <UART1_Handler+0x80>)
2000163c:	681b      	ldr	r3, [r3, #0]
2000163e:	3301      	adds	r3, #1
20001640:	6013      	str	r3, [r2, #0]
20001642:	4b0a      	ldr	r3, [pc, #40]	; (2000166c <UART1_Handler+0x7c>)
20001644:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20001646:	f003 0340 	and.w	r3, r3, #64	; 0x40
2000164a:	2b00      	cmp	r3, #0
2000164c:	d009      	beq.n	20001662 <UART1_Handler+0x72>
2000164e:	e002      	b.n	20001656 <UART1_Handler+0x66>
20001650:	4b06      	ldr	r3, [pc, #24]	; (2000166c <UART1_Handler+0x7c>)
20001652:	681b      	ldr	r3, [r3, #0]
20001654:	707b      	strb	r3, [r7, #1]
20001656:	4b05      	ldr	r3, [pc, #20]	; (2000166c <UART1_Handler+0x7c>)
20001658:	699b      	ldr	r3, [r3, #24]
2000165a:	f003 0310 	and.w	r3, r3, #16
2000165e:	2b00      	cmp	r3, #0
20001660:	d0f6      	beq.n	20001650 <UART1_Handler+0x60>
20001662:	bf00      	nop
20001664:	370c      	adds	r7, #12
20001666:	46bd      	mov	sp, r7
20001668:	bc80      	pop	{r7}
2000166a:	4770      	bx	lr
2000166c:	40030000 	.word	0x40030000
20001670:	40070000 	.word	0x40070000
