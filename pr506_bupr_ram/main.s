
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b580      	push	{r7, lr}
20000002:	b09e      	sub	sp, #120	; 0x78
20000004:	af00      	add	r7, sp, #0
20000006:	2300      	movs	r3, #0
20000008:	66bb      	str	r3, [r7, #104]	; 0x68
2000000a:	2300      	movs	r3, #0
2000000c:	677b      	str	r3, [r7, #116]	; 0x74
2000000e:	2300      	movs	r3, #0
20000010:	673b      	str	r3, [r7, #112]	; 0x70
20000012:	2300      	movs	r3, #0
20000014:	66fb      	str	r3, [r7, #108]	; 0x6c
20000016:	2300      	movs	r3, #0
20000018:	667b      	str	r3, [r7, #100]	; 0x64
2000001a:	2300      	movs	r3, #0
2000001c:	663b      	str	r3, [r7, #96]	; 0x60
2000001e:	2300      	movs	r3, #0
20000020:	65fb      	str	r3, [r7, #92]	; 0x5c
20000022:	2300      	movs	r3, #0
20000024:	65bb      	str	r3, [r7, #88]	; 0x58
20000026:	f001 f9f7 	bl	20001418 <system_init>
2000002a:	f000 f8b1 	bl	20000190 <ssi_init>
2000002e:	f000 f923 	bl	20000278 <dac_init>
20000032:	f000 fe9d 	bl	20000d70 <adc_dma_init>
20000036:	f107 0348 	add.w	r3, r7, #72	; 0x48
2000003a:	22c8      	movs	r2, #200	; 0xc8
2000003c:	2150      	movs	r1, #80	; 0x50
2000003e:	4618      	mov	r0, r3
20000040:	f000 f9d8 	bl	200003f4 <reg_init>
20000044:	f107 0338 	add.w	r3, r7, #56	; 0x38
20000048:	22c8      	movs	r2, #200	; 0xc8
2000004a:	2150      	movs	r1, #80	; 0x50
2000004c:	4618      	mov	r0, r3
2000004e:	f000 f9d1 	bl	200003f4 <reg_init>
20000052:	f107 0328 	add.w	r3, r7, #40	; 0x28
20000056:	f241 3288 	movw	r2, #5000	; 0x1388
2000005a:	2100      	movs	r1, #0
2000005c:	4618      	mov	r0, r3
2000005e:	f000 f9c9 	bl	200003f4 <reg_init>
20000062:	f107 0318 	add.w	r3, r7, #24
20000066:	f640 32b8 	movw	r2, #3000	; 0xbb8
2000006a:	2100      	movs	r1, #0
2000006c:	4618      	mov	r0, r3
2000006e:	f000 f9c1 	bl	200003f4 <reg_init>
20000072:	2300      	movs	r3, #0
20000074:	677b      	str	r3, [r7, #116]	; 0x74
20000076:	e006      	b.n	20000086 <main+0x86>
20000078:	2100      	movs	r1, #0
2000007a:	2000      	movs	r0, #0
2000007c:	f000 fda0 	bl	20000bc0 <mfilter>
20000080:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20000082:	3301      	adds	r3, #1
20000084:	677b      	str	r3, [r7, #116]	; 0x74
20000086:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20000088:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
2000008c:	dbf4      	blt.n	20000078 <main+0x78>
2000008e:	2300      	movs	r3, #0
20000090:	673b      	str	r3, [r7, #112]	; 0x70
20000092:	2300      	movs	r3, #0
20000094:	66fb      	str	r3, [r7, #108]	; 0x6c
20000096:	4b2c      	ldr	r3, [pc, #176]	; (20000148 <main+0x148>)
20000098:	2200      	movs	r2, #0
2000009a:	601a      	str	r2, [r3, #0]
2000009c:	4b2b      	ldr	r3, [pc, #172]	; (2000014c <main+0x14c>)
2000009e:	2200      	movs	r2, #0
200000a0:	601a      	str	r2, [r3, #0]
200000a2:	4b2b      	ldr	r3, [pc, #172]	; (20000150 <main+0x150>)
200000a4:	2200      	movs	r2, #0
200000a6:	601a      	str	r2, [r3, #0]
200000a8:	2300      	movs	r3, #0
200000aa:	677b      	str	r3, [r7, #116]	; 0x74
200000ac:	e032      	b.n	20000114 <main+0x114>
200000ae:	f000 fe7d 	bl	20000dac <adc_dma_wait>
200000b2:	4b28      	ldr	r3, [pc, #160]	; (20000154 <main+0x154>)
200000b4:	689b      	ldr	r3, [r3, #8]
200000b6:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000ba:	6f3b      	ldr	r3, [r7, #112]	; 0x70
200000bc:	4413      	add	r3, r2
200000be:	673b      	str	r3, [r7, #112]	; 0x70
200000c0:	4b24      	ldr	r3, [pc, #144]	; (20000154 <main+0x154>)
200000c2:	68db      	ldr	r3, [r3, #12]
200000c4:	f3c3 020b 	ubfx	r2, r3, #0, #12
200000c8:	6efb      	ldr	r3, [r7, #108]	; 0x6c
200000ca:	4413      	add	r3, r2
200000cc:	66fb      	str	r3, [r7, #108]	; 0x6c
200000ce:	4b22      	ldr	r3, [pc, #136]	; (20000158 <main+0x158>)
200000d0:	689b      	ldr	r3, [r3, #8]
200000d2:	4618      	mov	r0, r3
200000d4:	f000 f8a6 	bl	20000224 <enc_crc>
200000d8:	4602      	mov	r2, r0
200000da:	4b1b      	ldr	r3, [pc, #108]	; (20000148 <main+0x148>)
200000dc:	681b      	ldr	r3, [r3, #0]
200000de:	4413      	add	r3, r2
200000e0:	461a      	mov	r2, r3
200000e2:	4b19      	ldr	r3, [pc, #100]	; (20000148 <main+0x148>)
200000e4:	601a      	str	r2, [r3, #0]
200000e6:	4b1b      	ldr	r3, [pc, #108]	; (20000154 <main+0x154>)
200000e8:	681b      	ldr	r3, [r3, #0]
200000ea:	f3c3 030b 	ubfx	r3, r3, #0, #12
200000ee:	4a18      	ldr	r2, [pc, #96]	; (20000150 <main+0x150>)
200000f0:	6812      	ldr	r2, [r2, #0]
200000f2:	4413      	add	r3, r2
200000f4:	461a      	mov	r2, r3
200000f6:	4b16      	ldr	r3, [pc, #88]	; (20000150 <main+0x150>)
200000f8:	601a      	str	r2, [r3, #0]
200000fa:	4b16      	ldr	r3, [pc, #88]	; (20000154 <main+0x154>)
200000fc:	685b      	ldr	r3, [r3, #4]
200000fe:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000102:	4a12      	ldr	r2, [pc, #72]	; (2000014c <main+0x14c>)
20000104:	6812      	ldr	r2, [r2, #0]
20000106:	4413      	add	r3, r2
20000108:	461a      	mov	r2, r3
2000010a:	4b10      	ldr	r3, [pc, #64]	; (2000014c <main+0x14c>)
2000010c:	601a      	str	r2, [r3, #0]
2000010e:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20000110:	3301      	adds	r3, #1
20000112:	677b      	str	r3, [r7, #116]	; 0x74
20000114:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20000116:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
2000011a:	dbc8      	blt.n	200000ae <main+0xae>
2000011c:	6f3b      	ldr	r3, [r7, #112]	; 0x70
2000011e:	129b      	asrs	r3, r3, #10
20000120:	673b      	str	r3, [r7, #112]	; 0x70
20000122:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20000124:	129b      	asrs	r3, r3, #10
20000126:	66fb      	str	r3, [r7, #108]	; 0x6c
20000128:	4b07      	ldr	r3, [pc, #28]	; (20000148 <main+0x148>)
2000012a:	681b      	ldr	r3, [r3, #0]
2000012c:	129b      	asrs	r3, r3, #10
2000012e:	4a06      	ldr	r2, [pc, #24]	; (20000148 <main+0x148>)
20000130:	6013      	str	r3, [r2, #0]
20000132:	4b06      	ldr	r3, [pc, #24]	; (2000014c <main+0x14c>)
20000134:	681a      	ldr	r2, [r3, #0]
20000136:	4b06      	ldr	r3, [pc, #24]	; (20000150 <main+0x150>)
20000138:	681b      	ldr	r3, [r3, #0]
2000013a:	129b      	asrs	r3, r3, #10
2000013c:	fb92 f3f3 	sdiv	r3, r2, r3
20000140:	4a06      	ldr	r2, [pc, #24]	; (2000015c <main+0x15c>)
20000142:	6013      	str	r3, [r2, #0]
20000144:	e7fe      	b.n	20000144 <main+0x144>
20000146:	bf00      	nop
20000148:	2000260c 	.word	0x2000260c
2000014c:	20002610 	.word	0x20002610
20000150:	20002604 	.word	0x20002604
20000154:	20003e00 	.word	0x20003e00
20000158:	40040000 	.word	0x40040000
2000015c:	20002608 	.word	0x20002608

20000160 <sleep>:
20000160:	b480      	push	{r7}
20000162:	b085      	sub	sp, #20
20000164:	af00      	add	r7, sp, #0
20000166:	6078      	str	r0, [r7, #4]
20000168:	4b08      	ldr	r3, [pc, #32]	; (2000018c <sleep+0x2c>)
2000016a:	681a      	ldr	r2, [r3, #0]
2000016c:	687b      	ldr	r3, [r7, #4]
2000016e:	4413      	add	r3, r2
20000170:	60fb      	str	r3, [r7, #12]
20000172:	bf00      	nop
20000174:	4b05      	ldr	r3, [pc, #20]	; (2000018c <sleep+0x2c>)
20000176:	681a      	ldr	r2, [r3, #0]
20000178:	68fb      	ldr	r3, [r7, #12]
2000017a:	429a      	cmp	r2, r3
2000017c:	d3fa      	bcc.n	20000174 <sleep+0x14>
2000017e:	bf00      	nop
20000180:	4618      	mov	r0, r3
20000182:	3714      	adds	r7, #20
20000184:	46bd      	mov	sp, r7
20000186:	bc80      	pop	{r7}
20000188:	4770      	bx	lr
2000018a:	bf00      	nop
2000018c:	20003700 	.word	0x20003700

20000190 <ssi_init>:
20000190:	b480      	push	{r7}
20000192:	af00      	add	r7, sp, #0
20000194:	4a0c      	ldr	r2, [pc, #48]	; (200001c8 <ssi_init+0x38>)
20000196:	4b0c      	ldr	r3, [pc, #48]	; (200001c8 <ssi_init+0x38>)
20000198:	69db      	ldr	r3, [r3, #28]
2000019a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000019e:	61d3      	str	r3, [r2, #28]
200001a0:	4b09      	ldr	r3, [pc, #36]	; (200001c8 <ssi_init+0x38>)
200001a2:	4a0a      	ldr	r2, [pc, #40]	; (200001cc <ssi_init+0x3c>)
200001a4:	62da      	str	r2, [r3, #44]	; 0x2c
200001a6:	4b0a      	ldr	r3, [pc, #40]	; (200001d0 <ssi_init+0x40>)
200001a8:	2200      	movs	r2, #0
200001aa:	605a      	str	r2, [r3, #4]
200001ac:	4b08      	ldr	r3, [pc, #32]	; (200001d0 <ssi_init+0x40>)
200001ae:	2206      	movs	r2, #6
200001b0:	611a      	str	r2, [r3, #16]
200001b2:	4b07      	ldr	r3, [pc, #28]	; (200001d0 <ssi_init+0x40>)
200001b4:	f240 221f 	movw	r2, #543	; 0x21f
200001b8:	601a      	str	r2, [r3, #0]
200001ba:	4b05      	ldr	r3, [pc, #20]	; (200001d0 <ssi_init+0x40>)
200001bc:	2202      	movs	r2, #2
200001be:	605a      	str	r2, [r3, #4]
200001c0:	bf00      	nop
200001c2:	46bd      	mov	sp, r7
200001c4:	bc80      	pop	{r7}
200001c6:	4770      	bx	lr
200001c8:	40020000 	.word	0x40020000
200001cc:	0100000a 	.word	0x0100000a
200001d0:	40040000 	.word	0x40040000

200001d4 <b2g>:
200001d4:	b480      	push	{r7}
200001d6:	b083      	sub	sp, #12
200001d8:	af00      	add	r7, sp, #0
200001da:	6078      	str	r0, [r7, #4]
200001dc:	687b      	ldr	r3, [r7, #4]
200001de:	085a      	lsrs	r2, r3, #1
200001e0:	687b      	ldr	r3, [r7, #4]
200001e2:	4053      	eors	r3, r2
200001e4:	4618      	mov	r0, r3
200001e6:	370c      	adds	r7, #12
200001e8:	46bd      	mov	sp, r7
200001ea:	bc80      	pop	{r7}
200001ec:	4770      	bx	lr
200001ee:	bf00      	nop

200001f0 <g2b>:
200001f0:	b480      	push	{r7}
200001f2:	b085      	sub	sp, #20
200001f4:	af00      	add	r7, sp, #0
200001f6:	6078      	str	r0, [r7, #4]
200001f8:	2300      	movs	r3, #0
200001fa:	60fb      	str	r3, [r7, #12]
200001fc:	2300      	movs	r3, #0
200001fe:	60fb      	str	r3, [r7, #12]
20000200:	e006      	b.n	20000210 <g2b+0x20>
20000202:	68fa      	ldr	r2, [r7, #12]
20000204:	687b      	ldr	r3, [r7, #4]
20000206:	4053      	eors	r3, r2
20000208:	60fb      	str	r3, [r7, #12]
2000020a:	687b      	ldr	r3, [r7, #4]
2000020c:	085b      	lsrs	r3, r3, #1
2000020e:	607b      	str	r3, [r7, #4]
20000210:	687b      	ldr	r3, [r7, #4]
20000212:	2b00      	cmp	r3, #0
20000214:	d1f5      	bne.n	20000202 <g2b+0x12>
20000216:	68fb      	ldr	r3, [r7, #12]
20000218:	4618      	mov	r0, r3
2000021a:	3714      	adds	r7, #20
2000021c:	46bd      	mov	sp, r7
2000021e:	bc80      	pop	{r7}
20000220:	4770      	bx	lr
20000222:	bf00      	nop

20000224 <enc_crc>:
20000224:	b480      	push	{r7}
20000226:	b085      	sub	sp, #20
20000228:	af00      	add	r7, sp, #0
2000022a:	6078      	str	r0, [r7, #4]
2000022c:	687b      	ldr	r3, [r7, #4]
2000022e:	60bb      	str	r3, [r7, #8]
20000230:	2300      	movs	r3, #0
20000232:	60fb      	str	r3, [r7, #12]
20000234:	e006      	b.n	20000244 <enc_crc+0x20>
20000236:	68fa      	ldr	r2, [r7, #12]
20000238:	68bb      	ldr	r3, [r7, #8]
2000023a:	4053      	eors	r3, r2
2000023c:	60fb      	str	r3, [r7, #12]
2000023e:	68bb      	ldr	r3, [r7, #8]
20000240:	085b      	lsrs	r3, r3, #1
20000242:	60bb      	str	r3, [r7, #8]
20000244:	68bb      	ldr	r3, [r7, #8]
20000246:	2b00      	cmp	r3, #0
20000248:	d1f5      	bne.n	20000236 <enc_crc+0x12>
2000024a:	68fb      	ldr	r3, [r7, #12]
2000024c:	f003 0301 	and.w	r3, r3, #1
20000250:	2b00      	cmp	r3, #0
20000252:	d107      	bne.n	20000264 <enc_crc+0x40>
20000254:	687b      	ldr	r3, [r7, #4]
20000256:	f3c3 030b 	ubfx	r3, r3, #0, #12
2000025a:	4a06      	ldr	r2, [pc, #24]	; (20000274 <enc_crc+0x50>)
2000025c:	6013      	str	r3, [r2, #0]
2000025e:	4b05      	ldr	r3, [pc, #20]	; (20000274 <enc_crc+0x50>)
20000260:	681b      	ldr	r3, [r3, #0]
20000262:	2b00      	cmp	r3, #0
20000264:	4b03      	ldr	r3, [pc, #12]	; (20000274 <enc_crc+0x50>)
20000266:	681b      	ldr	r3, [r3, #0]
20000268:	4618      	mov	r0, r3
2000026a:	3714      	adds	r7, #20
2000026c:	46bd      	mov	sp, r7
2000026e:	bc80      	pop	{r7}
20000270:	4770      	bx	lr
20000272:	bf00      	nop
20000274:	2000263c 	.word	0x2000263c

20000278 <dac_init>:
20000278:	b480      	push	{r7}
2000027a:	af00      	add	r7, sp, #0
2000027c:	4a07      	ldr	r2, [pc, #28]	; (2000029c <dac_init+0x24>)
2000027e:	4b07      	ldr	r3, [pc, #28]	; (2000029c <dac_init+0x24>)
20000280:	69db      	ldr	r3, [r3, #28]
20000282:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
20000286:	61d3      	str	r3, [r2, #28]
20000288:	4a05      	ldr	r2, [pc, #20]	; (200002a0 <dac_init+0x28>)
2000028a:	4b05      	ldr	r3, [pc, #20]	; (200002a0 <dac_init+0x28>)
2000028c:	681b      	ldr	r3, [r3, #0]
2000028e:	f043 030c 	orr.w	r3, r3, #12
20000292:	6013      	str	r3, [r2, #0]
20000294:	bf00      	nop
20000296:	46bd      	mov	sp, r7
20000298:	bc80      	pop	{r7}
2000029a:	4770      	bx	lr
2000029c:	40020000 	.word	0x40020000
200002a0:	40090000 	.word	0x40090000

200002a4 <encoder_start>:
200002a4:	b480      	push	{r7}
200002a6:	af00      	add	r7, sp, #0
200002a8:	4b03      	ldr	r3, [pc, #12]	; (200002b8 <encoder_start+0x14>)
200002aa:	f240 5255 	movw	r2, #1365	; 0x555
200002ae:	609a      	str	r2, [r3, #8]
200002b0:	bf00      	nop
200002b2:	46bd      	mov	sp, r7
200002b4:	bc80      	pop	{r7}
200002b6:	4770      	bx	lr
200002b8:	40040000 	.word	0x40040000

200002bc <ADC_Handler>:
200002bc:	b480      	push	{r7}
200002be:	af00      	add	r7, sp, #0
200002c0:	4b02      	ldr	r3, [pc, #8]	; (200002cc <ADC_Handler+0x10>)
200002c2:	699b      	ldr	r3, [r3, #24]
200002c4:	bf00      	nop
200002c6:	46bd      	mov	sp, r7
200002c8:	bc80      	pop	{r7}
200002ca:	4770      	bx	lr
200002cc:	40088000 	.word	0x40088000

200002d0 <TIMER1_Handler>:
200002d0:	b480      	push	{r7}
200002d2:	af00      	add	r7, sp, #0
200002d4:	4b03      	ldr	r3, [pc, #12]	; (200002e4 <TIMER1_Handler+0x14>)
200002d6:	2200      	movs	r2, #0
200002d8:	655a      	str	r2, [r3, #84]	; 0x54
200002da:	bf00      	nop
200002dc:	46bd      	mov	sp, r7
200002de:	bc80      	pop	{r7}
200002e0:	4770      	bx	lr
200002e2:	bf00      	nop
200002e4:	40070000 	.word	0x40070000

200002e8 <TIMER3_Handler>:
200002e8:	b580      	push	{r7, lr}
200002ea:	af00      	add	r7, sp, #0
200002ec:	4b04      	ldr	r3, [pc, #16]	; (20000300 <TIMER3_Handler+0x18>)
200002ee:	2200      	movs	r2, #0
200002f0:	655a      	str	r2, [r3, #84]	; 0x54
200002f2:	f7ff ffd7 	bl	200002a4 <encoder_start>
200002f6:	f000 fd43 	bl	20000d80 <adc_dma_start>
200002fa:	bf00      	nop
200002fc:	bd80      	pop	{r7, pc}
200002fe:	bf00      	nop
20000300:	40080000 	.word	0x40080000

20000304 <get_phase>:
20000304:	b580      	push	{r7, lr}
20000306:	af00      	add	r7, sp, #0
20000308:	4b0a      	ldr	r3, [pc, #40]	; (20000334 <get_phase+0x30>)
2000030a:	f240 5255 	movw	r2, #1365	; 0x555
2000030e:	609a      	str	r2, [r3, #8]
20000310:	bf00      	nop
20000312:	4b08      	ldr	r3, [pc, #32]	; (20000334 <get_phase+0x30>)
20000314:	68db      	ldr	r3, [r3, #12]
20000316:	f003 0304 	and.w	r3, r3, #4
2000031a:	2b00      	cmp	r3, #0
2000031c:	d0f9      	beq.n	20000312 <get_phase+0xe>
2000031e:	4b05      	ldr	r3, [pc, #20]	; (20000334 <get_phase+0x30>)
20000320:	689b      	ldr	r3, [r3, #8]
20000322:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000326:	4618      	mov	r0, r3
20000328:	f7ff ff62 	bl	200001f0 <g2b>
2000032c:	4603      	mov	r3, r0
2000032e:	4618      	mov	r0, r3
20000330:	bd80      	pop	{r7, pc}
20000332:	bf00      	nop
20000334:	40040000 	.word	0x40040000

20000338 <update_refposition>:
20000338:	b480      	push	{r7}
2000033a:	b089      	sub	sp, #36	; 0x24
2000033c:	af00      	add	r7, sp, #0
2000033e:	4b22      	ldr	r3, [pc, #136]	; (200003c8 <update_refposition+0x90>)
20000340:	681b      	ldr	r3, [r3, #0]
20000342:	61fb      	str	r3, [r7, #28]
20000344:	4b21      	ldr	r3, [pc, #132]	; (200003cc <update_refposition+0x94>)
20000346:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000348:	f003 0310 	and.w	r3, r3, #16
2000034c:	2b00      	cmp	r3, #0
2000034e:	d024      	beq.n	2000039a <update_refposition+0x62>
20000350:	2300      	movs	r3, #0
20000352:	61bb      	str	r3, [r7, #24]
20000354:	e00c      	b.n	20000370 <update_refposition+0x38>
20000356:	4b1d      	ldr	r3, [pc, #116]	; (200003cc <update_refposition+0x94>)
20000358:	681b      	ldr	r3, [r3, #0]
2000035a:	b2d9      	uxtb	r1, r3
2000035c:	1d3a      	adds	r2, r7, #4
2000035e:	69bb      	ldr	r3, [r7, #24]
20000360:	4413      	add	r3, r2
20000362:	460a      	mov	r2, r1
20000364:	701a      	strb	r2, [r3, #0]
20000366:	69bb      	ldr	r3, [r7, #24]
20000368:	3301      	adds	r3, #1
2000036a:	f003 030f 	and.w	r3, r3, #15
2000036e:	61bb      	str	r3, [r7, #24]
20000370:	4b16      	ldr	r3, [pc, #88]	; (200003cc <update_refposition+0x94>)
20000372:	699b      	ldr	r3, [r3, #24]
20000374:	f003 0310 	and.w	r3, r3, #16
20000378:	2b00      	cmp	r3, #0
2000037a:	d0ec      	beq.n	20000356 <update_refposition+0x1e>
2000037c:	793b      	ldrb	r3, [r7, #4]
2000037e:	b29a      	uxth	r2, r3
20000380:	797b      	ldrb	r3, [r7, #5]
20000382:	b29b      	uxth	r3, r3
20000384:	021b      	lsls	r3, r3, #8
20000386:	b29b      	uxth	r3, r3
20000388:	4413      	add	r3, r2
2000038a:	b29b      	uxth	r3, r3
2000038c:	82fb      	strh	r3, [r7, #22]
2000038e:	f9b7 3016 	ldrsh.w	r3, [r7, #22]
20000392:	61fb      	str	r3, [r7, #28]
20000394:	4a0c      	ldr	r2, [pc, #48]	; (200003c8 <update_refposition+0x90>)
20000396:	69fb      	ldr	r3, [r7, #28]
20000398:	6013      	str	r3, [r2, #0]
2000039a:	4b0c      	ldr	r3, [pc, #48]	; (200003cc <update_refposition+0x94>)
2000039c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000039e:	f003 0340 	and.w	r3, r3, #64	; 0x40
200003a2:	2b00      	cmp	r3, #0
200003a4:	d009      	beq.n	200003ba <update_refposition+0x82>
200003a6:	e002      	b.n	200003ae <update_refposition+0x76>
200003a8:	4b08      	ldr	r3, [pc, #32]	; (200003cc <update_refposition+0x94>)
200003aa:	681b      	ldr	r3, [r3, #0]
200003ac:	757b      	strb	r3, [r7, #21]
200003ae:	4b07      	ldr	r3, [pc, #28]	; (200003cc <update_refposition+0x94>)
200003b0:	699b      	ldr	r3, [r3, #24]
200003b2:	f003 0310 	and.w	r3, r3, #16
200003b6:	2b00      	cmp	r3, #0
200003b8:	d0f6      	beq.n	200003a8 <update_refposition+0x70>
200003ba:	69fb      	ldr	r3, [r7, #28]
200003bc:	4618      	mov	r0, r3
200003be:	3724      	adds	r7, #36	; 0x24
200003c0:	46bd      	mov	sp, r7
200003c2:	bc80      	pop	{r7}
200003c4:	4770      	bx	lr
200003c6:	bf00      	nop
200003c8:	20002630 	.word	0x20002630
200003cc:	40030000 	.word	0x40030000

200003d0 <mycos>:
200003d0:	4b02      	ldr	r3, [pc, #8]	; (200003dc <mycos+0xc>)
200003d2:	f3c0 0009 	ubfx	r0, r0, #0, #10
200003d6:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
200003da:	4770      	bx	lr
200003dc:	20001514 	.word	0x20001514

200003e0 <mysin>:
200003e0:	4b03      	ldr	r3, [pc, #12]	; (200003f0 <mysin+0x10>)
200003e2:	f500 7040 	add.w	r0, r0, #768	; 0x300
200003e6:	f3c0 0009 	ubfx	r0, r0, #0, #10
200003ea:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
200003ee:	4770      	bx	lr
200003f0:	20001514 	.word	0x20001514

200003f4 <reg_init>:
200003f4:	2300      	movs	r3, #0
200003f6:	e880 000e 	stmia.w	r0, {r1, r2, r3}
200003fa:	60c3      	str	r3, [r0, #12]
200003fc:	4770      	bx	lr
200003fe:	bf00      	nop

20000400 <reg_update>:
20000400:	6803      	ldr	r3, [r0, #0]
20000402:	b410      	push	{r4}
20000404:	fb03 f301 	mul.w	r3, r3, r1
20000408:	6884      	ldr	r4, [r0, #8]
2000040a:	b11a      	cbz	r2, 20000414 <reg_update+0x14>
2000040c:	2c00      	cmp	r4, #0
2000040e:	dd09      	ble.n	20000424 <reg_update+0x24>
20000410:	ea03 73e3 	and.w	r3, r3, r3, asr #31
20000414:	6842      	ldr	r2, [r0, #4]
20000416:	4423      	add	r3, r4
20000418:	fb02 3101 	mla	r1, r2, r1, r3
2000041c:	6083      	str	r3, [r0, #8]
2000041e:	60c1      	str	r1, [r0, #12]
20000420:	bc10      	pop	{r4}
20000422:	4770      	bx	lr
20000424:	bf18      	it	ne
20000426:	ea23 73e3 	bicne.w	r3, r3, r3, asr #31
2000042a:	e7f3      	b.n	20000414 <reg_update+0x14>

2000042c <dot3>:
2000042c:	b430      	push	{r4, r5}
2000042e:	684b      	ldr	r3, [r1, #4]
20000430:	6844      	ldr	r4, [r0, #4]
20000432:	6802      	ldr	r2, [r0, #0]
20000434:	fb03 f304 	mul.w	r3, r3, r4
20000438:	680d      	ldr	r5, [r1, #0]
2000043a:	6884      	ldr	r4, [r0, #8]
2000043c:	fb05 3302 	mla	r3, r5, r2, r3
20000440:	6888      	ldr	r0, [r1, #8]
20000442:	fb00 3004 	mla	r0, r0, r4, r3
20000446:	bc30      	pop	{r4, r5}
20000448:	4770      	bx	lr
2000044a:	bf00      	nop

2000044c <abc_to_dq>:
2000044c:	b4f0      	push	{r4, r5, r6, r7}
2000044e:	4c1d      	ldr	r4, [pc, #116]	; (200004c4 <abc_to_dq+0x78>)
20000450:	6803      	ldr	r3, [r0, #0]
20000452:	f854 6022 	ldr.w	r6, [r4, r2, lsl #2]
20000456:	f202 25aa 	addw	r5, r2, #682	; 0x2aa
2000045a:	fb03 f306 	mul.w	r3, r3, r6
2000045e:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000462:	6847      	ldr	r7, [r0, #4]
20000464:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
20000468:	f202 1655 	addw	r6, r2, #341	; 0x155
2000046c:	fb07 3305 	mla	r3, r7, r5, r3
20000470:	f3c6 0509 	ubfx	r5, r6, #0, #10
20000474:	6887      	ldr	r7, [r0, #8]
20000476:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
2000047a:	f202 56aa 	addw	r6, r2, #1450	; 0x5aa
2000047e:	fb07 3305 	mla	r3, r7, r5, r3
20000482:	129b      	asrs	r3, r3, #10
20000484:	600b      	str	r3, [r1, #0]
20000486:	f3c6 0509 	ubfx	r5, r6, #0, #10
2000048a:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
2000048e:	6843      	ldr	r3, [r0, #4]
20000490:	f502 7540 	add.w	r5, r2, #768	; 0x300
20000494:	fb03 f306 	mul.w	r3, r3, r6
20000498:	f3c5 0509 	ubfx	r5, r5, #0, #10
2000049c:	6806      	ldr	r6, [r0, #0]
2000049e:	f854 5025 	ldr.w	r5, [r4, r5, lsl #2]
200004a2:	f202 4255 	addw	r2, r2, #1109	; 0x455
200004a6:	fb06 3305 	mla	r3, r6, r5, r3
200004aa:	f3c2 0209 	ubfx	r2, r2, #0, #10
200004ae:	6880      	ldr	r0, [r0, #8]
200004b0:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
200004b4:	bcf0      	pop	{r4, r5, r6, r7}
200004b6:	fb00 3302 	mla	r3, r0, r2, r3
200004ba:	425b      	negs	r3, r3
200004bc:	129b      	asrs	r3, r3, #10
200004be:	604b      	str	r3, [r1, #4]
200004c0:	4770      	bx	lr
200004c2:	bf00      	nop
200004c4:	20001514 	.word	0x20001514

200004c8 <dq_to_abc>:
200004c8:	4b1d      	ldr	r3, [pc, #116]	; (20000540 <dq_to_abc+0x78>)
200004ca:	b4f0      	push	{r4, r5, r6, r7}
200004cc:	680e      	ldr	r6, [r1, #0]
200004ce:	f853 4022 	ldr.w	r4, [r3, r2, lsl #2]
200004d2:	f502 7540 	add.w	r5, r2, #768	; 0x300
200004d6:	fb04 f406 	mul.w	r4, r4, r6
200004da:	f3c5 0509 	ubfx	r5, r5, #0, #10
200004de:	684f      	ldr	r7, [r1, #4]
200004e0:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
200004e4:	f202 26aa 	addw	r6, r2, #682	; 0x2aa
200004e8:	fb07 4415 	mls	r4, r7, r5, r4
200004ec:	1524      	asrs	r4, r4, #20
200004ee:	6004      	str	r4, [r0, #0]
200004f0:	f3c6 0509 	ubfx	r5, r6, #0, #10
200004f4:	680c      	ldr	r4, [r1, #0]
200004f6:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
200004fa:	f202 55aa 	addw	r5, r2, #1450	; 0x5aa
200004fe:	fb04 f406 	mul.w	r4, r4, r6
20000502:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000506:	684f      	ldr	r7, [r1, #4]
20000508:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
2000050c:	f202 1655 	addw	r6, r2, #341	; 0x155
20000510:	fb07 4415 	mls	r4, r7, r5, r4
20000514:	1524      	asrs	r4, r4, #20
20000516:	6044      	str	r4, [r0, #4]
20000518:	f3c6 0509 	ubfx	r5, r6, #0, #10
2000051c:	680c      	ldr	r4, [r1, #0]
2000051e:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
20000522:	f202 4255 	addw	r2, r2, #1109	; 0x455
20000526:	fb04 f405 	mul.w	r4, r4, r5
2000052a:	f3c2 0209 	ubfx	r2, r2, #0, #10
2000052e:	6849      	ldr	r1, [r1, #4]
20000530:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
20000534:	fb01 4312 	mls	r3, r1, r2, r4
20000538:	bcf0      	pop	{r4, r5, r6, r7}
2000053a:	151b      	asrs	r3, r3, #20
2000053c:	6083      	str	r3, [r0, #8]
2000053e:	4770      	bx	lr
20000540:	20001514 	.word	0x20001514

20000544 <cord_atan>:
20000544:	b5f0      	push	{r4, r5, r6, r7, lr}
20000546:	b091      	sub	sp, #68	; 0x44
20000548:	46ee      	mov	lr, sp
2000054a:	4684      	mov	ip, r0
2000054c:	4e56      	ldr	r6, [pc, #344]	; (200006a8 <cord_atan+0x164>)
2000054e:	460d      	mov	r5, r1
20000550:	4614      	mov	r4, r2
20000552:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000554:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000558:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
2000055c:	af08      	add	r7, sp, #32
2000055e:	3610      	adds	r6, #16
20000560:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
20000564:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20000566:	c70f      	stmia	r7!, {r0, r1, r2, r3}
20000568:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
2000056c:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
20000570:	f8dc 6000 	ldr.w	r6, [ip]
20000574:	f8dc 3004 	ldr.w	r3, [ip, #4]
20000578:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
2000057c:	2b00      	cmp	r3, #0
2000057e:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20000582:	9900      	ldr	r1, [sp, #0]
20000584:	dd56      	ble.n	20000634 <cord_atan+0xf0>
20000586:	18d0      	adds	r0, r2, r3
20000588:	1a9b      	subs	r3, r3, r2
2000058a:	2b00      	cmp	r3, #0
2000058c:	d07a      	beq.n	20000684 <cord_atan+0x140>
2000058e:	9f01      	ldr	r7, [sp, #4]
20000590:	dd54      	ble.n	2000063c <cord_atan+0xf8>
20000592:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000596:	4439      	add	r1, r7
20000598:	eba3 0360 	sub.w	r3, r3, r0, asr #1
2000059c:	2b00      	cmp	r3, #0
2000059e:	d073      	beq.n	20000688 <cord_atan+0x144>
200005a0:	9f02      	ldr	r7, [sp, #8]
200005a2:	dd51      	ble.n	20000648 <cord_atan+0x104>
200005a4:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200005a8:	4439      	add	r1, r7
200005aa:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200005ae:	2b00      	cmp	r3, #0
200005b0:	d06d      	beq.n	2000068e <cord_atan+0x14a>
200005b2:	9f03      	ldr	r7, [sp, #12]
200005b4:	dd4e      	ble.n	20000654 <cord_atan+0x110>
200005b6:	eb00 02e3 	add.w	r2, r0, r3, asr #3
200005ba:	4439      	add	r1, r7
200005bc:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
200005c0:	2b00      	cmp	r3, #0
200005c2:	d066      	beq.n	20000692 <cord_atan+0x14e>
200005c4:	9f04      	ldr	r7, [sp, #16]
200005c6:	dd4b      	ble.n	20000660 <cord_atan+0x11c>
200005c8:	eb02 1023 	add.w	r0, r2, r3, asr #4
200005cc:	4439      	add	r1, r7
200005ce:	eba3 1322 	sub.w	r3, r3, r2, asr #4
200005d2:	2b00      	cmp	r3, #0
200005d4:	d060      	beq.n	20000698 <cord_atan+0x154>
200005d6:	9f05      	ldr	r7, [sp, #20]
200005d8:	dd48      	ble.n	2000066c <cord_atan+0x128>
200005da:	eb00 1263 	add.w	r2, r0, r3, asr #5
200005de:	4439      	add	r1, r7
200005e0:	eba3 1360 	sub.w	r3, r3, r0, asr #5
200005e4:	2b00      	cmp	r3, #0
200005e6:	d059      	beq.n	2000069c <cord_atan+0x158>
200005e8:	9f06      	ldr	r7, [sp, #24]
200005ea:	dd45      	ble.n	20000678 <cord_atan+0x134>
200005ec:	eb02 10a3 	add.w	r0, r2, r3, asr #6
200005f0:	4439      	add	r1, r7
200005f2:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
200005f6:	2b00      	cmp	r3, #0
200005f8:	d053      	beq.n	200006a2 <cord_atan+0x15e>
200005fa:	9a07      	ldr	r2, [sp, #28]
200005fc:	bfc7      	ittee	gt
200005fe:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000602:	1889      	addgt	r1, r1, r2
20000604:	1a89      	suble	r1, r1, r2
20000606:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
2000060a:	2207      	movs	r2, #7
2000060c:	ab10      	add	r3, sp, #64	; 0x40
2000060e:	eb03 0282 	add.w	r2, r3, r2, lsl #2
20000612:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000616:	2e00      	cmp	r6, #0
20000618:	fb03 f300 	mul.w	r3, r3, r0
2000061c:	bfb8      	it	lt
2000061e:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000622:	2900      	cmp	r1, #0
20000624:	bfb8      	it	lt
20000626:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
2000062a:	129b      	asrs	r3, r3, #10
2000062c:	6029      	str	r1, [r5, #0]
2000062e:	6023      	str	r3, [r4, #0]
20000630:	b011      	add	sp, #68	; 0x44
20000632:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000634:	1ad0      	subs	r0, r2, r3
20000636:	4249      	negs	r1, r1
20000638:	4413      	add	r3, r2
2000063a:	e7a6      	b.n	2000058a <cord_atan+0x46>
2000063c:	eba0 0263 	sub.w	r2, r0, r3, asr #1
20000640:	1bc9      	subs	r1, r1, r7
20000642:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000646:	e7a9      	b.n	2000059c <cord_atan+0x58>
20000648:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
2000064c:	1bc9      	subs	r1, r1, r7
2000064e:	eb03 03a2 	add.w	r3, r3, r2, asr #2
20000652:	e7ac      	b.n	200005ae <cord_atan+0x6a>
20000654:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000658:	1bc9      	subs	r1, r1, r7
2000065a:	eb03 03e0 	add.w	r3, r3, r0, asr #3
2000065e:	e7af      	b.n	200005c0 <cord_atan+0x7c>
20000660:	eba2 1023 	sub.w	r0, r2, r3, asr #4
20000664:	1bc9      	subs	r1, r1, r7
20000666:	eb03 1322 	add.w	r3, r3, r2, asr #4
2000066a:	e7b2      	b.n	200005d2 <cord_atan+0x8e>
2000066c:	eba0 1263 	sub.w	r2, r0, r3, asr #5
20000670:	1bc9      	subs	r1, r1, r7
20000672:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000676:	e7b5      	b.n	200005e4 <cord_atan+0xa0>
20000678:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
2000067c:	1bc9      	subs	r1, r1, r7
2000067e:	eb03 13a2 	add.w	r3, r3, r2, asr #6
20000682:	e7b8      	b.n	200005f6 <cord_atan+0xb2>
20000684:	461a      	mov	r2, r3
20000686:	e7c1      	b.n	2000060c <cord_atan+0xc8>
20000688:	4610      	mov	r0, r2
2000068a:	2201      	movs	r2, #1
2000068c:	e7be      	b.n	2000060c <cord_atan+0xc8>
2000068e:	2202      	movs	r2, #2
20000690:	e7bc      	b.n	2000060c <cord_atan+0xc8>
20000692:	4610      	mov	r0, r2
20000694:	2203      	movs	r2, #3
20000696:	e7b9      	b.n	2000060c <cord_atan+0xc8>
20000698:	2204      	movs	r2, #4
2000069a:	e7b7      	b.n	2000060c <cord_atan+0xc8>
2000069c:	4610      	mov	r0, r2
2000069e:	2205      	movs	r2, #5
200006a0:	e7b4      	b.n	2000060c <cord_atan+0xc8>
200006a2:	2206      	movs	r2, #6
200006a4:	e7b2      	b.n	2000060c <cord_atan+0xc8>
200006a6:	bf00      	nop
200006a8:	200014d4 	.word	0x200014d4

200006ac <sinpwm>:
200006ac:	b5f0      	push	{r4, r5, r6, r7, lr}
200006ae:	b091      	sub	sp, #68	; 0x44
200006b0:	46ee      	mov	lr, sp
200006b2:	468c      	mov	ip, r1
200006b4:	4e6e      	ldr	r6, [pc, #440]	; (20000870 <sinpwm+0x1c4>)
200006b6:	4604      	mov	r4, r0
200006b8:	4615      	mov	r5, r2
200006ba:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200006bc:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
200006c0:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200006c4:	af08      	add	r7, sp, #32
200006c6:	3610      	adds	r6, #16
200006c8:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
200006cc:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
200006ce:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200006d0:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200006d4:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200006d8:	f8dc 6000 	ldr.w	r6, [ip]
200006dc:	f8dc 3004 	ldr.w	r3, [ip, #4]
200006e0:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200006e4:	2b00      	cmp	r3, #0
200006e6:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200006ea:	9900      	ldr	r1, [sp, #0]
200006ec:	f340 8087 	ble.w	200007fe <sinpwm+0x152>
200006f0:	18d0      	adds	r0, r2, r3
200006f2:	1a9b      	subs	r3, r3, r2
200006f4:	2b00      	cmp	r3, #0
200006f6:	f000 80aa 	beq.w	2000084e <sinpwm+0x1a2>
200006fa:	9f01      	ldr	r7, [sp, #4]
200006fc:	f340 8083 	ble.w	20000806 <sinpwm+0x15a>
20000700:	eb00 0263 	add.w	r2, r0, r3, asr #1
20000704:	4439      	add	r1, r7
20000706:	eba3 0360 	sub.w	r3, r3, r0, asr #1
2000070a:	2b00      	cmp	r3, #0
2000070c:	f000 80a1 	beq.w	20000852 <sinpwm+0x1a6>
20000710:	9f02      	ldr	r7, [sp, #8]
20000712:	dd7e      	ble.n	20000812 <sinpwm+0x166>
20000714:	eb02 00a3 	add.w	r0, r2, r3, asr #2
20000718:	4439      	add	r1, r7
2000071a:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
2000071e:	2b00      	cmp	r3, #0
20000720:	f000 809a 	beq.w	20000858 <sinpwm+0x1ac>
20000724:	9f03      	ldr	r7, [sp, #12]
20000726:	dd7a      	ble.n	2000081e <sinpwm+0x172>
20000728:	eb00 02e3 	add.w	r2, r0, r3, asr #3
2000072c:	4439      	add	r1, r7
2000072e:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
20000732:	2b00      	cmp	r3, #0
20000734:	f000 8092 	beq.w	2000085c <sinpwm+0x1b0>
20000738:	9f04      	ldr	r7, [sp, #16]
2000073a:	dd76      	ble.n	2000082a <sinpwm+0x17e>
2000073c:	eb02 1023 	add.w	r0, r2, r3, asr #4
20000740:	4439      	add	r1, r7
20000742:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000746:	2b00      	cmp	r3, #0
20000748:	f000 808b 	beq.w	20000862 <sinpwm+0x1b6>
2000074c:	9f05      	ldr	r7, [sp, #20]
2000074e:	dd72      	ble.n	20000836 <sinpwm+0x18a>
20000750:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000754:	4439      	add	r1, r7
20000756:	eba3 1360 	sub.w	r3, r3, r0, asr #5
2000075a:	2b00      	cmp	r3, #0
2000075c:	f000 8083 	beq.w	20000866 <sinpwm+0x1ba>
20000760:	9f06      	ldr	r7, [sp, #24]
20000762:	dd6e      	ble.n	20000842 <sinpwm+0x196>
20000764:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000768:	4439      	add	r1, r7
2000076a:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
2000076e:	2b00      	cmp	r3, #0
20000770:	d07c      	beq.n	2000086c <sinpwm+0x1c0>
20000772:	9a07      	ldr	r2, [sp, #28]
20000774:	bfc7      	ittee	gt
20000776:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
2000077a:	1889      	addgt	r1, r1, r2
2000077c:	1a89      	suble	r1, r1, r2
2000077e:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000782:	2207      	movs	r2, #7
20000784:	ab10      	add	r3, sp, #64	; 0x40
20000786:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000078a:	f852 3c20 	ldr.w	r3, [r2, #-32]
2000078e:	2e00      	cmp	r6, #0
20000790:	fb03 f300 	mul.w	r3, r3, r0
20000794:	bfb8      	it	lt
20000796:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
2000079a:	2900      	cmp	r1, #0
2000079c:	bfb8      	it	lt
2000079e:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
200007a2:	151b      	asrs	r3, r3, #20
200007a4:	440d      	add	r5, r1
200007a6:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
200007aa:	f3c5 0509 	ubfx	r5, r5, #0, #10
200007ae:	dd22      	ble.n	200007f6 <sinpwm+0x14a>
200007b0:	f8df c0c4 	ldr.w	ip, [pc, #196]	; 20000878 <sinpwm+0x1cc>
200007b4:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
200007b8:	2001      	movs	r0, #1
200007ba:	f5c5 6695 	rsb	r6, r5, #1192	; 0x4a8
200007be:	4f2d      	ldr	r7, [pc, #180]	; (20000874 <sinpwm+0x1c8>)
200007c0:	f105 0eaa 	add.w	lr, r5, #170	; 0xaa
200007c4:	3602      	adds	r6, #2
200007c6:	f3ce 0e09 	ubfx	lr, lr, #0, #10
200007ca:	f3c6 0609 	ubfx	r6, r6, #0, #10
200007ce:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
200007d2:	f857 6026 	ldr.w	r6, [r7, r6, lsl #2]
200007d6:	f857 102e 	ldr.w	r1, [r7, lr, lsl #2]
200007da:	fb06 f50c 	mul.w	r5, r6, ip
200007de:	fb01 f10c 	mul.w	r1, r1, ip
200007e2:	fb02 f303 	mul.w	r3, r2, r3
200007e6:	12ad      	asrs	r5, r5, #10
200007e8:	128a      	asrs	r2, r1, #10
200007ea:	129b      	asrs	r3, r3, #10
200007ec:	60a5      	str	r5, [r4, #8]
200007ee:	6062      	str	r2, [r4, #4]
200007f0:	6023      	str	r3, [r4, #0]
200007f2:	b011      	add	sp, #68	; 0x44
200007f4:	bdf0      	pop	{r4, r5, r6, r7, pc}
200007f6:	f1c3 0c00 	rsb	ip, r3, #0
200007fa:	2000      	movs	r0, #0
200007fc:	e7dd      	b.n	200007ba <sinpwm+0x10e>
200007fe:	1ad0      	subs	r0, r2, r3
20000800:	4249      	negs	r1, r1
20000802:	4413      	add	r3, r2
20000804:	e776      	b.n	200006f4 <sinpwm+0x48>
20000806:	eba0 0263 	sub.w	r2, r0, r3, asr #1
2000080a:	1bc9      	subs	r1, r1, r7
2000080c:	eb03 0360 	add.w	r3, r3, r0, asr #1
20000810:	e77b      	b.n	2000070a <sinpwm+0x5e>
20000812:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
20000816:	1bc9      	subs	r1, r1, r7
20000818:	eb03 03a2 	add.w	r3, r3, r2, asr #2
2000081c:	e77f      	b.n	2000071e <sinpwm+0x72>
2000081e:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
20000822:	1bc9      	subs	r1, r1, r7
20000824:	eb03 03e0 	add.w	r3, r3, r0, asr #3
20000828:	e783      	b.n	20000732 <sinpwm+0x86>
2000082a:	eba2 1023 	sub.w	r0, r2, r3, asr #4
2000082e:	1bc9      	subs	r1, r1, r7
20000830:	eb03 1322 	add.w	r3, r3, r2, asr #4
20000834:	e787      	b.n	20000746 <sinpwm+0x9a>
20000836:	eba0 1263 	sub.w	r2, r0, r3, asr #5
2000083a:	1bc9      	subs	r1, r1, r7
2000083c:	eb03 1360 	add.w	r3, r3, r0, asr #5
20000840:	e78b      	b.n	2000075a <sinpwm+0xae>
20000842:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
20000846:	1bc9      	subs	r1, r1, r7
20000848:	eb03 13a2 	add.w	r3, r3, r2, asr #6
2000084c:	e78f      	b.n	2000076e <sinpwm+0xc2>
2000084e:	461a      	mov	r2, r3
20000850:	e798      	b.n	20000784 <sinpwm+0xd8>
20000852:	4610      	mov	r0, r2
20000854:	2201      	movs	r2, #1
20000856:	e795      	b.n	20000784 <sinpwm+0xd8>
20000858:	2202      	movs	r2, #2
2000085a:	e793      	b.n	20000784 <sinpwm+0xd8>
2000085c:	4610      	mov	r0, r2
2000085e:	2203      	movs	r2, #3
20000860:	e790      	b.n	20000784 <sinpwm+0xd8>
20000862:	2204      	movs	r2, #4
20000864:	e78e      	b.n	20000784 <sinpwm+0xd8>
20000866:	4610      	mov	r0, r2
20000868:	2205      	movs	r2, #5
2000086a:	e78b      	b.n	20000784 <sinpwm+0xd8>
2000086c:	2206      	movs	r2, #6
2000086e:	e789      	b.n	20000784 <sinpwm+0xd8>
20000870:	200014d4 	.word	0x200014d4
20000874:	20001514 	.word	0x20001514
20000878:	fffffe0c 	.word	0xfffffe0c

2000087c <svpwm>:
2000087c:	b5f0      	push	{r4, r5, r6, r7, lr}
2000087e:	b091      	sub	sp, #68	; 0x44
20000880:	46ee      	mov	lr, sp
20000882:	468c      	mov	ip, r1
20000884:	4eb8      	ldr	r6, [pc, #736]	; (20000b68 <svpwm+0x2ec>)
20000886:	4604      	mov	r4, r0
20000888:	4615      	mov	r5, r2
2000088a:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2000088c:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
20000890:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20000894:	af08      	add	r7, sp, #32
20000896:	3610      	adds	r6, #16
20000898:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
2000089c:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2000089e:	c70f      	stmia	r7!, {r0, r1, r2, r3}
200008a0:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
200008a4:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
200008a8:	f8dc 6000 	ldr.w	r6, [ip]
200008ac:	f8dc 3004 	ldr.w	r3, [ip, #4]
200008b0:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
200008b4:	2b00      	cmp	r3, #0
200008b6:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
200008ba:	9900      	ldr	r1, [sp, #0]
200008bc:	dd6f      	ble.n	2000099e <svpwm+0x122>
200008be:	18d0      	adds	r0, r2, r3
200008c0:	1a9b      	subs	r3, r3, r2
200008c2:	2b00      	cmp	r3, #0
200008c4:	f000 813f 	beq.w	20000b46 <svpwm+0x2ca>
200008c8:	9f01      	ldr	r7, [sp, #4]
200008ca:	dd6c      	ble.n	200009a6 <svpwm+0x12a>
200008cc:	eb00 0263 	add.w	r2, r0, r3, asr #1
200008d0:	4439      	add	r1, r7
200008d2:	eba3 0360 	sub.w	r3, r3, r0, asr #1
200008d6:	2b00      	cmp	r3, #0
200008d8:	f000 8137 	beq.w	20000b4a <svpwm+0x2ce>
200008dc:	9f02      	ldr	r7, [sp, #8]
200008de:	dd68      	ble.n	200009b2 <svpwm+0x136>
200008e0:	eb02 00a3 	add.w	r0, r2, r3, asr #2
200008e4:	4439      	add	r1, r7
200008e6:	eba3 03a2 	sub.w	r3, r3, r2, asr #2
200008ea:	2b00      	cmp	r3, #0
200008ec:	f000 8130 	beq.w	20000b50 <svpwm+0x2d4>
200008f0:	9f03      	ldr	r7, [sp, #12]
200008f2:	dd64      	ble.n	200009be <svpwm+0x142>
200008f4:	eb00 02e3 	add.w	r2, r0, r3, asr #3
200008f8:	4439      	add	r1, r7
200008fa:	eba3 03e0 	sub.w	r3, r3, r0, asr #3
200008fe:	2b00      	cmp	r3, #0
20000900:	f000 8128 	beq.w	20000b54 <svpwm+0x2d8>
20000904:	9f04      	ldr	r7, [sp, #16]
20000906:	dd60      	ble.n	200009ca <svpwm+0x14e>
20000908:	eb02 1023 	add.w	r0, r2, r3, asr #4
2000090c:	4439      	add	r1, r7
2000090e:	eba3 1322 	sub.w	r3, r3, r2, asr #4
20000912:	2b00      	cmp	r3, #0
20000914:	f000 8121 	beq.w	20000b5a <svpwm+0x2de>
20000918:	9f05      	ldr	r7, [sp, #20]
2000091a:	dd5c      	ble.n	200009d6 <svpwm+0x15a>
2000091c:	eb00 1263 	add.w	r2, r0, r3, asr #5
20000920:	4439      	add	r1, r7
20000922:	eba3 1360 	sub.w	r3, r3, r0, asr #5
20000926:	2b00      	cmp	r3, #0
20000928:	f000 8119 	beq.w	20000b5e <svpwm+0x2e2>
2000092c:	9f06      	ldr	r7, [sp, #24]
2000092e:	dd58      	ble.n	200009e2 <svpwm+0x166>
20000930:	eb02 10a3 	add.w	r0, r2, r3, asr #6
20000934:	4439      	add	r1, r7
20000936:	eba3 13a2 	sub.w	r3, r3, r2, asr #6
2000093a:	2b00      	cmp	r3, #0
2000093c:	f000 8112 	beq.w	20000b64 <svpwm+0x2e8>
20000940:	9a07      	ldr	r2, [sp, #28]
20000942:	bfc7      	ittee	gt
20000944:	eb00 10e3 	addgt.w	r0, r0, r3, asr #7
20000948:	1889      	addgt	r1, r1, r2
2000094a:	1a89      	suble	r1, r1, r2
2000094c:	eba0 10e3 	suble.w	r0, r0, r3, asr #7
20000950:	2207      	movs	r2, #7
20000952:	ab10      	add	r3, sp, #64	; 0x40
20000954:	2e00      	cmp	r6, #0
20000956:	eb03 0282 	add.w	r2, r3, r2, lsl #2
2000095a:	bfb8      	it	lt
2000095c:	f5c1 7100 	rsblt	r1, r1, #512	; 0x200
20000960:	f852 3c20 	ldr.w	r3, [r2, #-32]
20000964:	2900      	cmp	r1, #0
20000966:	fb03 f300 	mul.w	r3, r3, r0
2000096a:	bfb8      	it	lt
2000096c:	f501 6180 	addlt.w	r1, r1, #1024	; 0x400
20000970:	440d      	add	r5, r1
20000972:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000976:	eb05 0245 	add.w	r2, r5, r5, lsl #1
2000097a:	151b      	asrs	r3, r3, #20
2000097c:	1252      	asrs	r2, r2, #9
2000097e:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
20000982:	f102 32ff 	add.w	r2, r2, #4294967295
20000986:	bfc6      	itte	gt
20000988:	f44f 73fa 	movgt.w	r3, #500	; 0x1f4
2000098c:	2001      	movgt	r0, #1
2000098e:	2000      	movle	r0, #0
20000990:	2a04      	cmp	r2, #4
20000992:	d848      	bhi.n	20000a26 <svpwm+0x1aa>
20000994:	e8df f002 	tbb	[pc, r2]
20000998:	2b9e8164 	.word	0x2b9e8164
2000099c:	bb          	.byte	0xbb
2000099d:	00          	.byte	0x00
2000099e:	1ad0      	subs	r0, r2, r3
200009a0:	4249      	negs	r1, r1
200009a2:	4413      	add	r3, r2
200009a4:	e78d      	b.n	200008c2 <svpwm+0x46>
200009a6:	eba0 0263 	sub.w	r2, r0, r3, asr #1
200009aa:	1bc9      	subs	r1, r1, r7
200009ac:	eb03 0360 	add.w	r3, r3, r0, asr #1
200009b0:	e791      	b.n	200008d6 <svpwm+0x5a>
200009b2:	eba2 00a3 	sub.w	r0, r2, r3, asr #2
200009b6:	1bc9      	subs	r1, r1, r7
200009b8:	eb03 03a2 	add.w	r3, r3, r2, asr #2
200009bc:	e795      	b.n	200008ea <svpwm+0x6e>
200009be:	eba0 02e3 	sub.w	r2, r0, r3, asr #3
200009c2:	1bc9      	subs	r1, r1, r7
200009c4:	eb03 03e0 	add.w	r3, r3, r0, asr #3
200009c8:	e799      	b.n	200008fe <svpwm+0x82>
200009ca:	eba2 1023 	sub.w	r0, r2, r3, asr #4
200009ce:	1bc9      	subs	r1, r1, r7
200009d0:	eb03 1322 	add.w	r3, r3, r2, asr #4
200009d4:	e79d      	b.n	20000912 <svpwm+0x96>
200009d6:	eba0 1263 	sub.w	r2, r0, r3, asr #5
200009da:	1bc9      	subs	r1, r1, r7
200009dc:	eb03 1360 	add.w	r3, r3, r0, asr #5
200009e0:	e7a1      	b.n	20000926 <svpwm+0xaa>
200009e2:	eba2 10a3 	sub.w	r0, r2, r3, asr #6
200009e6:	1bc9      	subs	r1, r1, r7
200009e8:	eb03 13a2 	add.w	r3, r3, r2, asr #6
200009ec:	e7a5      	b.n	2000093a <svpwm+0xbe>
200009ee:	f5c5 6225 	rsb	r2, r5, #2640	; 0xa50
200009f2:	4e5e      	ldr	r6, [pc, #376]	; (20000b6c <svpwm+0x2f0>)
200009f4:	3204      	adds	r2, #4
200009f6:	f3c2 0209 	ubfx	r2, r2, #0, #10
200009fa:	3556      	adds	r5, #86	; 0x56
200009fc:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000a00:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000a04:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000a08:	fb01 f103 	mul.w	r1, r1, r3
20000a0c:	fb02 f203 	mul.w	r2, r2, r3
20000a10:	1289      	asrs	r1, r1, #10
20000a12:	1293      	asrs	r3, r2, #10
20000a14:	424a      	negs	r2, r1
20000a16:	1ad2      	subs	r2, r2, r3
20000a18:	1a5d      	subs	r5, r3, r1
20000a1a:	440b      	add	r3, r1
20000a1c:	6062      	str	r2, [r4, #4]
20000a1e:	6025      	str	r5, [r4, #0]
20000a20:	60a3      	str	r3, [r4, #8]
20000a22:	b011      	add	sp, #68	; 0x44
20000a24:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000a26:	f5c5 62f5 	rsb	r2, r5, #1960	; 0x7a8
20000a2a:	4e50      	ldr	r6, [pc, #320]	; (20000b6c <svpwm+0x2f0>)
20000a2c:	3202      	adds	r2, #2
20000a2e:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000a32:	f505 7540 	add.w	r5, r5, #768	; 0x300
20000a36:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000a3a:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000a3e:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000a42:	fb01 f103 	mul.w	r1, r1, r3
20000a46:	fb02 f203 	mul.w	r2, r2, r3
20000a4a:	1289      	asrs	r1, r1, #10
20000a4c:	1293      	asrs	r3, r2, #10
20000a4e:	424a      	negs	r2, r1
20000a50:	1ad2      	subs	r2, r2, r3
20000a52:	18cd      	adds	r5, r1, r3
20000a54:	1a5b      	subs	r3, r3, r1
20000a56:	60a2      	str	r2, [r4, #8]
20000a58:	6025      	str	r5, [r4, #0]
20000a5a:	6063      	str	r3, [r4, #4]
20000a5c:	b011      	add	sp, #68	; 0x44
20000a5e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000a60:	f5c5 6205 	rsb	r2, r5, #2128	; 0x850
20000a64:	4e41      	ldr	r6, [pc, #260]	; (20000b6c <svpwm+0x2f0>)
20000a66:	3204      	adds	r2, #4
20000a68:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000a6c:	f205 2556 	addw	r5, r5, #598	; 0x256
20000a70:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000a74:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000a78:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000a7c:	fb01 f103 	mul.w	r1, r1, r3
20000a80:	fb02 f203 	mul.w	r2, r2, r3
20000a84:	1289      	asrs	r1, r1, #10
20000a86:	1293      	asrs	r3, r2, #10
20000a88:	424a      	negs	r2, r1
20000a8a:	1ad2      	subs	r2, r2, r3
20000a8c:	1acd      	subs	r5, r1, r3
20000a8e:	440b      	add	r3, r1
20000a90:	60a2      	str	r2, [r4, #8]
20000a92:	6025      	str	r5, [r4, #0]
20000a94:	6063      	str	r3, [r4, #4]
20000a96:	b011      	add	sp, #68	; 0x44
20000a98:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000a9a:	f5c5 620f 	rsb	r2, r5, #2288	; 0x8f0
20000a9e:	4e33      	ldr	r6, [pc, #204]	; (20000b6c <svpwm+0x2f0>)
20000aa0:	320f      	adds	r2, #15
20000aa2:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000aa6:	f205 15ab 	addw	r5, r5, #427	; 0x1ab
20000aaa:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000aae:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000ab2:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000ab6:	fb01 f103 	mul.w	r1, r1, r3
20000aba:	fb02 f203 	mul.w	r2, r2, r3
20000abe:	1289      	asrs	r1, r1, #10
20000ac0:	1293      	asrs	r3, r2, #10
20000ac2:	424a      	negs	r2, r1
20000ac4:	1ad2      	subs	r2, r2, r3
20000ac6:	18cd      	adds	r5, r1, r3
20000ac8:	1a5b      	subs	r3, r3, r1
20000aca:	e884 0024 	stmia.w	r4, {r2, r5}
20000ace:	60a3      	str	r3, [r4, #8]
20000ad0:	b011      	add	sp, #68	; 0x44
20000ad2:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000ad4:	f5c5 621a 	rsb	r2, r5, #2464	; 0x9a0
20000ad8:	4e24      	ldr	r6, [pc, #144]	; (20000b6c <svpwm+0x2f0>)
20000ada:	320a      	adds	r2, #10
20000adc:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000ae0:	f505 7580 	add.w	r5, r5, #256	; 0x100
20000ae4:	f856 1022 	ldr.w	r1, [r6, r2, lsl #2]
20000ae8:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000aec:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
20000af0:	fb01 f103 	mul.w	r1, r1, r3
20000af4:	fb02 f203 	mul.w	r2, r2, r3
20000af8:	1289      	asrs	r1, r1, #10
20000afa:	1293      	asrs	r3, r2, #10
20000afc:	424a      	negs	r2, r1
20000afe:	1ad2      	subs	r2, r2, r3
20000b00:	1acd      	subs	r5, r1, r3
20000b02:	440b      	add	r3, r1
20000b04:	e884 0024 	stmia.w	r4, {r2, r5}
20000b08:	60a3      	str	r3, [r4, #8]
20000b0a:	b011      	add	sp, #68	; 0x44
20000b0c:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000b0e:	f5c5 622f 	rsb	r2, r5, #2800	; 0xaf0
20000b12:	4916      	ldr	r1, [pc, #88]	; (20000b6c <svpwm+0x2f0>)
20000b14:	320f      	adds	r2, #15
20000b16:	f3c2 0209 	ubfx	r2, r2, #0, #10
20000b1a:	3d55      	subs	r5, #85	; 0x55
20000b1c:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
20000b20:	f3c5 0509 	ubfx	r5, r5, #0, #10
20000b24:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
20000b28:	fb02 f203 	mul.w	r2, r2, r3
20000b2c:	fb01 f303 	mul.w	r3, r1, r3
20000b30:	1292      	asrs	r2, r2, #10
20000b32:	129b      	asrs	r3, r3, #10
20000b34:	4251      	negs	r1, r2
20000b36:	18d5      	adds	r5, r2, r3
20000b38:	1ac9      	subs	r1, r1, r3
20000b3a:	1ad2      	subs	r2, r2, r3
20000b3c:	6061      	str	r1, [r4, #4]
20000b3e:	6025      	str	r5, [r4, #0]
20000b40:	60a2      	str	r2, [r4, #8]
20000b42:	b011      	add	sp, #68	; 0x44
20000b44:	bdf0      	pop	{r4, r5, r6, r7, pc}
20000b46:	461a      	mov	r2, r3
20000b48:	e703      	b.n	20000952 <svpwm+0xd6>
20000b4a:	4610      	mov	r0, r2
20000b4c:	2201      	movs	r2, #1
20000b4e:	e700      	b.n	20000952 <svpwm+0xd6>
20000b50:	2202      	movs	r2, #2
20000b52:	e6fe      	b.n	20000952 <svpwm+0xd6>
20000b54:	4610      	mov	r0, r2
20000b56:	2203      	movs	r2, #3
20000b58:	e6fb      	b.n	20000952 <svpwm+0xd6>
20000b5a:	2204      	movs	r2, #4
20000b5c:	e6f9      	b.n	20000952 <svpwm+0xd6>
20000b5e:	4610      	mov	r0, r2
20000b60:	2205      	movs	r2, #5
20000b62:	e6f6      	b.n	20000952 <svpwm+0xd6>
20000b64:	2206      	movs	r2, #6
20000b66:	e6f4      	b.n	20000952 <svpwm+0xd6>
20000b68:	200014d4 	.word	0x200014d4
20000b6c:	20001514 	.word	0x20001514

20000b70 <encoder_init>:
20000b70:	4b01      	ldr	r3, [pc, #4]	; (20000b78 <encoder_init+0x8>)
20000b72:	6018      	str	r0, [r3, #0]
20000b74:	6058      	str	r0, [r3, #4]
20000b76:	4770      	bx	lr
20000b78:	20002640 	.word	0x20002640

20000b7c <get_speed>:
20000b7c:	4a0e      	ldr	r2, [pc, #56]	; (20000bb8 <get_speed+0x3c>)
20000b7e:	b430      	push	{r4, r5}
20000b80:	6853      	ldr	r3, [r2, #4]
20000b82:	6815      	ldr	r5, [r2, #0]
20000b84:	1ac3      	subs	r3, r0, r3
20000b86:	ea83 74e3 	eor.w	r4, r3, r3, asr #31
20000b8a:	eba4 74e3 	sub.w	r4, r4, r3, asr #31
20000b8e:	f5b4 7f7a 	cmp.w	r4, #1000	; 0x3e8
20000b92:	e882 0021 	stmia.w	r2, {r0, r5}
20000b96:	dd05      	ble.n	20000ba4 <get_speed+0x28>
20000b98:	2b00      	cmp	r3, #0
20000b9a:	bfb4      	ite	lt
20000b9c:	f503 5380 	addlt.w	r3, r3, #4096	; 0x1000
20000ba0:	f5a3 5380 	subge.w	r3, r3, #4096	; 0x1000
20000ba4:	4a05      	ldr	r2, [pc, #20]	; (20000bbc <get_speed+0x40>)
20000ba6:	1058      	asrs	r0, r3, #1
20000ba8:	fb02 f000 	mul.w	r0, r2, r0
20000bac:	bc30      	pop	{r4, r5}
20000bae:	680a      	ldr	r2, [r1, #0]
20000bb0:	1300      	asrs	r0, r0, #12
20000bb2:	4413      	add	r3, r2
20000bb4:	600b      	str	r3, [r1, #0]
20000bb6:	4770      	bx	lr
20000bb8:	20002640 	.word	0x20002640
20000bbc:	0002ae7c 	.word	0x0002ae7c

20000bc0 <mfilter>:
20000bc0:	b430      	push	{r4, r5}
20000bc2:	4605      	mov	r5, r0
20000bc4:	4a06      	ldr	r2, [pc, #24]	; (20000be0 <mfilter+0x20>)
20000bc6:	6893      	ldr	r3, [r2, #8]
20000bc8:	3301      	adds	r3, #1
20000bca:	f3c3 0309 	ubfx	r3, r3, #0, #10
20000bce:	eb02 0483 	add.w	r4, r2, r3, lsl #2
20000bd2:	68e0      	ldr	r0, [r4, #12]
20000bd4:	6093      	str	r3, [r2, #8]
20000bd6:	1a08      	subs	r0, r1, r0
20000bd8:	4428      	add	r0, r5
20000bda:	60e5      	str	r5, [r4, #12]
20000bdc:	bc30      	pop	{r4, r5}
20000bde:	4770      	bx	lr
20000be0:	20002640 	.word	0x20002640

20000be4 <rfilter1>:
20000be4:	b470      	push	{r4, r5, r6}
20000be6:	f240 74c6 	movw	r4, #1990	; 0x7c6
20000bea:	4b12      	ldr	r3, [pc, #72]	; (20000c34 <rfilter1+0x50>)
20000bec:	f46f 7273 	mvn.w	r2, #972	; 0x3cc
20000bf0:	f853 6cec 	ldr.w	r6, [r3, #-236]
20000bf4:	f853 1ce4 	ldr.w	r1, [r3, #-228]
20000bf8:	fb04 f406 	mul.w	r4, r4, r6
20000bfc:	fb02 4201 	mla	r2, r2, r1, r4
20000c00:	490d      	ldr	r1, [pc, #52]	; (20000c38 <rfilter1+0x54>)
20000c02:	f853 5ce8 	ldr.w	r5, [r3, #-232]
20000c06:	fb01 2200 	mla	r2, r1, r0, r2
20000c0a:	4c0c      	ldr	r4, [pc, #48]	; (20000c3c <rfilter1+0x58>)
20000c0c:	f853 1ce0 	ldr.w	r1, [r3, #-224]
20000c10:	fb04 2205 	mla	r2, r4, r5, r2
20000c14:	4c0a      	ldr	r4, [pc, #40]	; (20000c40 <rfilter1+0x5c>)
20000c16:	f843 6ce4 	str.w	r6, [r3, #-228]
20000c1a:	fb04 2201 	mla	r2, r4, r1, r2
20000c1e:	1291      	asrs	r1, r2, #10
20000c20:	f843 0ce8 	str.w	r0, [r3, #-232]
20000c24:	f843 5ce0 	str.w	r5, [r3, #-224]
20000c28:	1490      	asrs	r0, r2, #18
20000c2a:	f843 1cec 	str.w	r1, [r3, #-236]
20000c2e:	bc70      	pop	{r4, r5, r6}
20000c30:	4770      	bx	lr
20000c32:	bf00      	nop
20000c34:	20003738 	.word	0x20003738
20000c38:	0003f0a4 	.word	0x0003f0a4
20000c3c:	fff83a2e 	.word	0xfff83a2e
20000c40:	0003dc29 	.word	0x0003dc29

20000c44 <rfilter2>:
20000c44:	b470      	push	{r4, r5, r6}
20000c46:	f240 748a 	movw	r4, #1930	; 0x78a
20000c4a:	4b11      	ldr	r3, [pc, #68]	; (20000c90 <rfilter2+0x4c>)
20000c4c:	4a11      	ldr	r2, [pc, #68]	; (20000c94 <rfilter2+0x50>)
20000c4e:	f853 6cdc 	ldr.w	r6, [r3, #-220]
20000c52:	f853 1cd4 	ldr.w	r1, [r3, #-212]
20000c56:	fb04 f406 	mul.w	r4, r4, r6
20000c5a:	fb02 4201 	mla	r2, r2, r1, r4
20000c5e:	490e      	ldr	r1, [pc, #56]	; (20000c98 <rfilter2+0x54>)
20000c60:	f853 5cd8 	ldr.w	r5, [r3, #-216]
20000c64:	fb01 2200 	mla	r2, r1, r0, r2
20000c68:	4c0c      	ldr	r4, [pc, #48]	; (20000c9c <rfilter2+0x58>)
20000c6a:	f853 1cd0 	ldr.w	r1, [r3, #-208]
20000c6e:	fb04 2205 	mla	r2, r4, r5, r2
20000c72:	4c0b      	ldr	r4, [pc, #44]	; (20000ca0 <rfilter2+0x5c>)
20000c74:	f843 6cd4 	str.w	r6, [r3, #-212]
20000c78:	fb04 2201 	mla	r2, r4, r1, r2
20000c7c:	1291      	asrs	r1, r2, #10
20000c7e:	f843 0cd8 	str.w	r0, [r3, #-216]
20000c82:	f843 5cd0 	str.w	r5, [r3, #-208]
20000c86:	1490      	asrs	r0, r2, #18
20000c88:	f843 1cdc 	str.w	r1, [r3, #-220]
20000c8c:	bc70      	pop	{r4, r5, r6}
20000c8e:	4770      	bx	lr
20000c90:	20003738 	.word	0x20003738
20000c94:	fffffc66 	.word	0xfffffc66
20000c98:	0003e3d7 	.word	0x0003e3d7
20000c9c:	fff8767b 	.word	0xfff8767b
20000ca0:	0003b5c3 	.word	0x0003b5c3

20000ca4 <adc_init>:
20000ca4:	b480      	push	{r7}
20000ca6:	af00      	add	r7, sp, #0
20000ca8:	4a10      	ldr	r2, [pc, #64]	; (20000cec <adc_init+0x48>)
20000caa:	4b10      	ldr	r3, [pc, #64]	; (20000cec <adc_init+0x48>)
20000cac:	69db      	ldr	r3, [r3, #28]
20000cae:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000cb2:	61d3      	str	r3, [r2, #28]
20000cb4:	4b0d      	ldr	r3, [pc, #52]	; (20000cec <adc_init+0x48>)
20000cb6:	f242 0220 	movw	r2, #8224	; 0x2020
20000cba:	615a      	str	r2, [r3, #20]
20000cbc:	4b0c      	ldr	r3, [pc, #48]	; (20000cf0 <adc_init+0x4c>)
20000cbe:	2200      	movs	r2, #0
20000cc0:	601a      	str	r2, [r3, #0]
20000cc2:	4a0b      	ldr	r2, [pc, #44]	; (20000cf0 <adc_init+0x4c>)
20000cc4:	4b0a      	ldr	r3, [pc, #40]	; (20000cf0 <adc_init+0x4c>)
20000cc6:	681b      	ldr	r3, [r3, #0]
20000cc8:	f443 7301 	orr.w	r3, r3, #516	; 0x204
20000ccc:	f043 0301 	orr.w	r3, r3, #1
20000cd0:	6013      	str	r3, [r2, #0]
20000cd2:	4a07      	ldr	r2, [pc, #28]	; (20000cf0 <adc_init+0x4c>)
20000cd4:	4b06      	ldr	r3, [pc, #24]	; (20000cf0 <adc_init+0x4c>)
20000cd6:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20000cd8:	f443 73f0 	orr.w	r3, r3, #480	; 0x1e0
20000cdc:	6293      	str	r3, [r2, #40]	; 0x28
20000cde:	4b04      	ldr	r3, [pc, #16]	; (20000cf0 <adc_init+0x4c>)
20000ce0:	2210      	movs	r2, #16
20000ce2:	621a      	str	r2, [r3, #32]
20000ce4:	bf00      	nop
20000ce6:	46bd      	mov	sp, r7
20000ce8:	bc80      	pop	{r7}
20000cea:	4770      	bx	lr
20000cec:	40020000 	.word	0x40020000
20000cf0:	40088000 	.word	0x40088000

20000cf4 <dma_init>:
20000cf4:	b480      	push	{r7}
20000cf6:	af00      	add	r7, sp, #0
20000cf8:	4a17      	ldr	r2, [pc, #92]	; (20000d58 <dma_init+0x64>)
20000cfa:	4b17      	ldr	r3, [pc, #92]	; (20000d58 <dma_init+0x64>)
20000cfc:	69db      	ldr	r3, [r3, #28]
20000cfe:	f043 0320 	orr.w	r3, r3, #32
20000d02:	61d3      	str	r3, [r2, #28]
20000d04:	4b15      	ldr	r3, [pc, #84]	; (20000d5c <dma_init+0x68>)
20000d06:	4a16      	ldr	r2, [pc, #88]	; (20000d60 <dma_init+0x6c>)
20000d08:	609a      	str	r2, [r3, #8]
20000d0a:	4b14      	ldr	r3, [pc, #80]	; (20000d5c <dma_init+0x68>)
20000d0c:	f04f 32ff 	mov.w	r2, #4294967295
20000d10:	62da      	str	r2, [r3, #44]	; 0x2c
20000d12:	4b12      	ldr	r3, [pc, #72]	; (20000d5c <dma_init+0x68>)
20000d14:	f04f 32ff 	mov.w	r2, #4294967295
20000d18:	621a      	str	r2, [r3, #32]
20000d1a:	4b10      	ldr	r3, [pc, #64]	; (20000d5c <dma_init+0x68>)
20000d1c:	f04f 32ff 	mov.w	r2, #4294967295
20000d20:	635a      	str	r2, [r3, #52]	; 0x34
20000d22:	4b0e      	ldr	r3, [pc, #56]	; (20000d5c <dma_init+0x68>)
20000d24:	f44f 7280 	mov.w	r2, #256	; 0x100
20000d28:	61da      	str	r2, [r3, #28]
20000d2a:	4b0c      	ldr	r3, [pc, #48]	; (20000d5c <dma_init+0x68>)
20000d2c:	f44f 7280 	mov.w	r2, #256	; 0x100
20000d30:	625a      	str	r2, [r3, #36]	; 0x24
20000d32:	4b0a      	ldr	r3, [pc, #40]	; (20000d5c <dma_init+0x68>)
20000d34:	2201      	movs	r2, #1
20000d36:	605a      	str	r2, [r3, #4]
20000d38:	4b09      	ldr	r3, [pc, #36]	; (20000d60 <dma_init+0x6c>)
20000d3a:	4a0a      	ldr	r2, [pc, #40]	; (20000d64 <dma_init+0x70>)
20000d3c:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
20000d40:	4a09      	ldr	r2, [pc, #36]	; (20000d68 <dma_init+0x74>)
20000d42:	4b07      	ldr	r3, [pc, #28]	; (20000d60 <dma_init+0x6c>)
20000d44:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20000d48:	4b05      	ldr	r3, [pc, #20]	; (20000d60 <dma_init+0x6c>)
20000d4a:	4a08      	ldr	r2, [pc, #32]	; (20000d6c <dma_init+0x78>)
20000d4c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000d50:	bf00      	nop
20000d52:	46bd      	mov	sp, r7
20000d54:	bc80      	pop	{r7}
20000d56:	4770      	bx	lr
20000d58:	40020000 	.word	0x40020000
20000d5c:	40028000 	.word	0x40028000
20000d60:	20003c00 	.word	0x20003c00
20000d64:	40088018 	.word	0x40088018
20000d68:	20003e0c 	.word	0x20003e0c
20000d6c:	ae000031 	.word	0xae000031

20000d70 <adc_dma_init>:
20000d70:	b580      	push	{r7, lr}
20000d72:	af00      	add	r7, sp, #0
20000d74:	f7ff ff96 	bl	20000ca4 <adc_init>
20000d78:	f7ff ffbc 	bl	20000cf4 <dma_init>
20000d7c:	bf00      	nop
20000d7e:	bd80      	pop	{r7, pc}

20000d80 <adc_dma_start>:
20000d80:	b480      	push	{r7}
20000d82:	af00      	add	r7, sp, #0
20000d84:	4b07      	ldr	r3, [pc, #28]	; (20000da4 <adc_dma_start+0x24>)
20000d86:	2200      	movs	r2, #0
20000d88:	601a      	str	r2, [r3, #0]
20000d8a:	4b06      	ldr	r3, [pc, #24]	; (20000da4 <adc_dma_start+0x24>)
20000d8c:	f240 220d 	movw	r2, #525	; 0x20d
20000d90:	601a      	str	r2, [r3, #0]
20000d92:	4b05      	ldr	r3, [pc, #20]	; (20000da8 <adc_dma_start+0x28>)
20000d94:	f44f 7280 	mov.w	r2, #256	; 0x100
20000d98:	629a      	str	r2, [r3, #40]	; 0x28
20000d9a:	bf00      	nop
20000d9c:	46bd      	mov	sp, r7
20000d9e:	bc80      	pop	{r7}
20000da0:	4770      	bx	lr
20000da2:	bf00      	nop
20000da4:	40088000 	.word	0x40088000
20000da8:	40028000 	.word	0x40028000

20000dac <adc_dma_wait>:
20000dac:	b480      	push	{r7}
20000dae:	af00      	add	r7, sp, #0
20000db0:	bf00      	nop
20000db2:	4b0a      	ldr	r3, [pc, #40]	; (20000ddc <adc_dma_wait+0x30>)
20000db4:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
20000db8:	f003 0307 	and.w	r3, r3, #7
20000dbc:	2b00      	cmp	r3, #0
20000dbe:	d1f8      	bne.n	20000db2 <adc_dma_wait+0x6>
20000dc0:	4a07      	ldr	r2, [pc, #28]	; (20000de0 <adc_dma_wait+0x34>)
20000dc2:	4b07      	ldr	r3, [pc, #28]	; (20000de0 <adc_dma_wait+0x34>)
20000dc4:	681b      	ldr	r3, [r3, #0]
20000dc6:	f023 0308 	bic.w	r3, r3, #8
20000dca:	6013      	str	r3, [r2, #0]
20000dcc:	4b03      	ldr	r3, [pc, #12]	; (20000ddc <adc_dma_wait+0x30>)
20000dce:	4a05      	ldr	r2, [pc, #20]	; (20000de4 <adc_dma_wait+0x38>)
20000dd0:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
20000dd4:	bf00      	nop
20000dd6:	46bd      	mov	sp, r7
20000dd8:	bc80      	pop	{r7}
20000dda:	4770      	bx	lr
20000ddc:	20003c00 	.word	0x20003c00
20000de0:	40088000 	.word	0x40088000
20000de4:	ae000031 	.word	0xae000031

20000de8 <NVIC_EnableIRQ>:
20000de8:	b480      	push	{r7}
20000dea:	b083      	sub	sp, #12
20000dec:	af00      	add	r7, sp, #0
20000dee:	4603      	mov	r3, r0
20000df0:	71fb      	strb	r3, [r7, #7]
20000df2:	4908      	ldr	r1, [pc, #32]	; (20000e14 <NVIC_EnableIRQ+0x2c>)
20000df4:	f997 3007 	ldrsb.w	r3, [r7, #7]
20000df8:	095b      	lsrs	r3, r3, #5
20000dfa:	79fa      	ldrb	r2, [r7, #7]
20000dfc:	f002 021f 	and.w	r2, r2, #31
20000e00:	2001      	movs	r0, #1
20000e02:	fa00 f202 	lsl.w	r2, r0, r2
20000e06:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20000e0a:	bf00      	nop
20000e0c:	370c      	adds	r7, #12
20000e0e:	46bd      	mov	sp, r7
20000e10:	bc80      	pop	{r7}
20000e12:	4770      	bx	lr
20000e14:	e000e100 	.word	0xe000e100

20000e18 <PortConfig>:
20000e18:	b480      	push	{r7}
20000e1a:	af00      	add	r7, sp, #0
20000e1c:	4a63      	ldr	r2, [pc, #396]	; (20000fac <PortConfig+0x194>)
20000e1e:	4b63      	ldr	r3, [pc, #396]	; (20000fac <PortConfig+0x194>)
20000e20:	69db      	ldr	r3, [r3, #28]
20000e22:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
20000e26:	61d3      	str	r3, [r2, #28]
20000e28:	4b61      	ldr	r3, [pc, #388]	; (20000fb0 <PortConfig+0x198>)
20000e2a:	2200      	movs	r2, #0
20000e2c:	609a      	str	r2, [r3, #8]
20000e2e:	4b60      	ldr	r3, [pc, #384]	; (20000fb0 <PortConfig+0x198>)
20000e30:	2200      	movs	r2, #0
20000e32:	601a      	str	r2, [r3, #0]
20000e34:	4a5e      	ldr	r2, [pc, #376]	; (20000fb0 <PortConfig+0x198>)
20000e36:	4b5e      	ldr	r3, [pc, #376]	; (20000fb0 <PortConfig+0x198>)
20000e38:	685b      	ldr	r3, [r3, #4]
20000e3a:	f043 0301 	orr.w	r3, r3, #1
20000e3e:	6053      	str	r3, [r2, #4]
20000e40:	4a5b      	ldr	r2, [pc, #364]	; (20000fb0 <PortConfig+0x198>)
20000e42:	4b5b      	ldr	r3, [pc, #364]	; (20000fb0 <PortConfig+0x198>)
20000e44:	68db      	ldr	r3, [r3, #12]
20000e46:	f043 0301 	orr.w	r3, r3, #1
20000e4a:	60d3      	str	r3, [r2, #12]
20000e4c:	4a58      	ldr	r2, [pc, #352]	; (20000fb0 <PortConfig+0x198>)
20000e4e:	4b58      	ldr	r3, [pc, #352]	; (20000fb0 <PortConfig+0x198>)
20000e50:	699b      	ldr	r3, [r3, #24]
20000e52:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
20000e56:	6193      	str	r3, [r2, #24]
20000e58:	4a55      	ldr	r2, [pc, #340]	; (20000fb0 <PortConfig+0x198>)
20000e5a:	4b55      	ldr	r3, [pc, #340]	; (20000fb0 <PortConfig+0x198>)
20000e5c:	685b      	ldr	r3, [r3, #4]
20000e5e:	f023 0308 	bic.w	r3, r3, #8
20000e62:	6053      	str	r3, [r2, #4]
20000e64:	4a52      	ldr	r2, [pc, #328]	; (20000fb0 <PortConfig+0x198>)
20000e66:	4b52      	ldr	r3, [pc, #328]	; (20000fb0 <PortConfig+0x198>)
20000e68:	68db      	ldr	r3, [r3, #12]
20000e6a:	f043 0308 	orr.w	r3, r3, #8
20000e6e:	60d3      	str	r3, [r2, #12]
20000e70:	4b4f      	ldr	r3, [pc, #316]	; (20000fb0 <PortConfig+0x198>)
20000e72:	2280      	movs	r2, #128	; 0x80
20000e74:	609a      	str	r2, [r3, #8]
20000e76:	4a4d      	ldr	r2, [pc, #308]	; (20000fac <PortConfig+0x194>)
20000e78:	4b4c      	ldr	r3, [pc, #304]	; (20000fac <PortConfig+0x194>)
20000e7a:	69db      	ldr	r3, [r3, #28]
20000e7c:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20000e80:	61d3      	str	r3, [r2, #28]
20000e82:	4a4c      	ldr	r2, [pc, #304]	; (20000fb4 <PortConfig+0x19c>)
20000e84:	4b4b      	ldr	r3, [pc, #300]	; (20000fb4 <PortConfig+0x19c>)
20000e86:	689b      	ldr	r3, [r3, #8]
20000e88:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
20000e8c:	6093      	str	r3, [r2, #8]
20000e8e:	4a49      	ldr	r2, [pc, #292]	; (20000fb4 <PortConfig+0x19c>)
20000e90:	4b48      	ldr	r3, [pc, #288]	; (20000fb4 <PortConfig+0x19c>)
20000e92:	689b      	ldr	r3, [r3, #8]
20000e94:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
20000e98:	6093      	str	r3, [r2, #8]
20000e9a:	4a46      	ldr	r2, [pc, #280]	; (20000fb4 <PortConfig+0x19c>)
20000e9c:	4b45      	ldr	r3, [pc, #276]	; (20000fb4 <PortConfig+0x19c>)
20000e9e:	68db      	ldr	r3, [r3, #12]
20000ea0:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
20000ea4:	60d3      	str	r3, [r2, #12]
20000ea6:	4a43      	ldr	r2, [pc, #268]	; (20000fb4 <PortConfig+0x19c>)
20000ea8:	4b42      	ldr	r3, [pc, #264]	; (20000fb4 <PortConfig+0x19c>)
20000eaa:	699b      	ldr	r3, [r3, #24]
20000eac:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
20000eb0:	6193      	str	r3, [r2, #24]
20000eb2:	4a40      	ldr	r2, [pc, #256]	; (20000fb4 <PortConfig+0x19c>)
20000eb4:	4b3f      	ldr	r3, [pc, #252]	; (20000fb4 <PortConfig+0x19c>)
20000eb6:	685b      	ldr	r3, [r3, #4]
20000eb8:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
20000ebc:	6053      	str	r3, [r2, #4]
20000ebe:	4a3d      	ldr	r2, [pc, #244]	; (20000fb4 <PortConfig+0x19c>)
20000ec0:	4b3c      	ldr	r3, [pc, #240]	; (20000fb4 <PortConfig+0x19c>)
20000ec2:	685b      	ldr	r3, [r3, #4]
20000ec4:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
20000ec8:	6053      	str	r3, [r2, #4]
20000eca:	4a3a      	ldr	r2, [pc, #232]	; (20000fb4 <PortConfig+0x19c>)
20000ecc:	4b39      	ldr	r3, [pc, #228]	; (20000fb4 <PortConfig+0x19c>)
20000ece:	689b      	ldr	r3, [r3, #8]
20000ed0:	f423 5370 	bic.w	r3, r3, #15360	; 0x3c00
20000ed4:	6093      	str	r3, [r2, #8]
20000ed6:	4a37      	ldr	r2, [pc, #220]	; (20000fb4 <PortConfig+0x19c>)
20000ed8:	4b36      	ldr	r3, [pc, #216]	; (20000fb4 <PortConfig+0x19c>)
20000eda:	689b      	ldr	r3, [r3, #8]
20000edc:	f443 5320 	orr.w	r3, r3, #10240	; 0x2800
20000ee0:	6093      	str	r3, [r2, #8]
20000ee2:	4a34      	ldr	r2, [pc, #208]	; (20000fb4 <PortConfig+0x19c>)
20000ee4:	4b33      	ldr	r3, [pc, #204]	; (20000fb4 <PortConfig+0x19c>)
20000ee6:	68db      	ldr	r3, [r3, #12]
20000ee8:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20000eec:	60d3      	str	r3, [r2, #12]
20000eee:	4a2f      	ldr	r2, [pc, #188]	; (20000fac <PortConfig+0x194>)
20000ef0:	4b2e      	ldr	r3, [pc, #184]	; (20000fac <PortConfig+0x194>)
20000ef2:	69db      	ldr	r3, [r3, #28]
20000ef4:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
20000ef8:	61d3      	str	r3, [r2, #28]
20000efa:	4b2f      	ldr	r3, [pc, #188]	; (20000fb8 <PortConfig+0x1a0>)
20000efc:	4a2f      	ldr	r2, [pc, #188]	; (20000fbc <PortConfig+0x1a4>)
20000efe:	609a      	str	r2, [r3, #8]
20000f00:	4b2d      	ldr	r3, [pc, #180]	; (20000fb8 <PortConfig+0x1a0>)
20000f02:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000f06:	60da      	str	r2, [r3, #12]
20000f08:	4b2b      	ldr	r3, [pc, #172]	; (20000fb8 <PortConfig+0x1a0>)
20000f0a:	f04f 32ff 	mov.w	r2, #4294967295
20000f0e:	619a      	str	r2, [r3, #24]
20000f10:	4b29      	ldr	r3, [pc, #164]	; (20000fb8 <PortConfig+0x1a0>)
20000f12:	f64f 72ff 	movw	r2, #65535	; 0xffff
20000f16:	605a      	str	r2, [r3, #4]
20000f18:	4a27      	ldr	r2, [pc, #156]	; (20000fb8 <PortConfig+0x1a0>)
20000f1a:	4b27      	ldr	r3, [pc, #156]	; (20000fb8 <PortConfig+0x1a0>)
20000f1c:	681b      	ldr	r3, [r3, #0]
20000f1e:	f023 0303 	bic.w	r3, r3, #3
20000f22:	6013      	str	r3, [r2, #0]
20000f24:	4a24      	ldr	r2, [pc, #144]	; (20000fb8 <PortConfig+0x1a0>)
20000f26:	4b24      	ldr	r3, [pc, #144]	; (20000fb8 <PortConfig+0x1a0>)
20000f28:	681b      	ldr	r3, [r3, #0]
20000f2a:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000f2e:	6013      	str	r3, [r2, #0]
20000f30:	4a1e      	ldr	r2, [pc, #120]	; (20000fac <PortConfig+0x194>)
20000f32:	4b1e      	ldr	r3, [pc, #120]	; (20000fac <PortConfig+0x194>)
20000f34:	69db      	ldr	r3, [r3, #28]
20000f36:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
20000f3a:	61d3      	str	r3, [r2, #28]
20000f3c:	4b20      	ldr	r3, [pc, #128]	; (20000fc0 <PortConfig+0x1a8>)
20000f3e:	2200      	movs	r2, #0
20000f40:	609a      	str	r2, [r3, #8]
20000f42:	4a1f      	ldr	r2, [pc, #124]	; (20000fc0 <PortConfig+0x1a8>)
20000f44:	4b1e      	ldr	r3, [pc, #120]	; (20000fc0 <PortConfig+0x1a8>)
20000f46:	685b      	ldr	r3, [r3, #4]
20000f48:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000f4c:	6053      	str	r3, [r2, #4]
20000f4e:	4a1c      	ldr	r2, [pc, #112]	; (20000fc0 <PortConfig+0x1a8>)
20000f50:	4b1b      	ldr	r3, [pc, #108]	; (20000fc0 <PortConfig+0x1a8>)
20000f52:	68db      	ldr	r3, [r3, #12]
20000f54:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000f58:	60d3      	str	r3, [r2, #12]
20000f5a:	4b19      	ldr	r3, [pc, #100]	; (20000fc0 <PortConfig+0x1a8>)
20000f5c:	f04f 32ff 	mov.w	r2, #4294967295
20000f60:	619a      	str	r2, [r3, #24]
20000f62:	4a17      	ldr	r2, [pc, #92]	; (20000fc0 <PortConfig+0x1a8>)
20000f64:	4b16      	ldr	r3, [pc, #88]	; (20000fc0 <PortConfig+0x1a8>)
20000f66:	681b      	ldr	r3, [r3, #0]
20000f68:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000f6c:	6013      	str	r3, [r2, #0]
20000f6e:	4a0f      	ldr	r2, [pc, #60]	; (20000fac <PortConfig+0x194>)
20000f70:	4b0e      	ldr	r3, [pc, #56]	; (20000fac <PortConfig+0x194>)
20000f72:	69db      	ldr	r3, [r3, #28]
20000f74:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
20000f78:	61d3      	str	r3, [r2, #28]
20000f7a:	4a12      	ldr	r2, [pc, #72]	; (20000fc4 <PortConfig+0x1ac>)
20000f7c:	4b11      	ldr	r3, [pc, #68]	; (20000fc4 <PortConfig+0x1ac>)
20000f7e:	68db      	ldr	r3, [r3, #12]
20000f80:	f423 7300 	bic.w	r3, r3, #512	; 0x200
20000f84:	f023 0301 	bic.w	r3, r3, #1
20000f88:	60d3      	str	r3, [r2, #12]
20000f8a:	4a08      	ldr	r2, [pc, #32]	; (20000fac <PortConfig+0x194>)
20000f8c:	4b07      	ldr	r3, [pc, #28]	; (20000fac <PortConfig+0x194>)
20000f8e:	69db      	ldr	r3, [r3, #28]
20000f90:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20000f94:	61d3      	str	r3, [r2, #28]
20000f96:	4a0c      	ldr	r2, [pc, #48]	; (20000fc8 <PortConfig+0x1b0>)
20000f98:	4b0b      	ldr	r3, [pc, #44]	; (20000fc8 <PortConfig+0x1b0>)
20000f9a:	68db      	ldr	r3, [r3, #12]
20000f9c:	f423 7378 	bic.w	r3, r3, #992	; 0x3e0
20000fa0:	60d3      	str	r3, [r2, #12]
20000fa2:	bf00      	nop
20000fa4:	46bd      	mov	sp, r7
20000fa6:	bc80      	pop	{r7}
20000fa8:	4770      	bx	lr
20000faa:	bf00      	nop
20000fac:	40020000 	.word	0x40020000
20000fb0:	400a8000 	.word	0x400a8000
20000fb4:	400b0000 	.word	0x400b0000
20000fb8:	400b8000 	.word	0x400b8000
20000fbc:	000aaaa0 	.word	0x000aaaa0
20000fc0:	400e8000 	.word	0x400e8000
20000fc4:	400c8000 	.word	0x400c8000
20000fc8:	400c0000 	.word	0x400c0000

20000fcc <ClkConfig>:
20000fcc:	b480      	push	{r7}
20000fce:	af00      	add	r7, sp, #0
20000fd0:	4a16      	ldr	r2, [pc, #88]	; (2000102c <ClkConfig+0x60>)
20000fd2:	4b16      	ldr	r3, [pc, #88]	; (2000102c <ClkConfig+0x60>)
20000fd4:	689b      	ldr	r3, [r3, #8]
20000fd6:	f043 0301 	orr.w	r3, r3, #1
20000fda:	6093      	str	r3, [r2, #8]
20000fdc:	bf00      	nop
20000fde:	4b13      	ldr	r3, [pc, #76]	; (2000102c <ClkConfig+0x60>)
20000fe0:	681b      	ldr	r3, [r3, #0]
20000fe2:	f003 0304 	and.w	r3, r3, #4
20000fe6:	2b00      	cmp	r3, #0
20000fe8:	d0f9      	beq.n	20000fde <ClkConfig+0x12>
20000fea:	4b10      	ldr	r3, [pc, #64]	; (2000102c <ClkConfig+0x60>)
20000fec:	2206      	movs	r2, #6
20000fee:	60da      	str	r2, [r3, #12]
20000ff0:	4b0e      	ldr	r3, [pc, #56]	; (2000102c <ClkConfig+0x60>)
20000ff2:	f640 1204 	movw	r2, #2308	; 0x904
20000ff6:	605a      	str	r2, [r3, #4]
20000ff8:	bf00      	nop
20000ffa:	4b0c      	ldr	r3, [pc, #48]	; (2000102c <ClkConfig+0x60>)
20000ffc:	681b      	ldr	r3, [r3, #0]
20000ffe:	f003 0302 	and.w	r3, r3, #2
20001002:	2b00      	cmp	r3, #0
20001004:	d0f9      	beq.n	20000ffa <ClkConfig+0x2e>
20001006:	4a09      	ldr	r2, [pc, #36]	; (2000102c <ClkConfig+0x60>)
20001008:	4b08      	ldr	r3, [pc, #32]	; (2000102c <ClkConfig+0x60>)
2000100a:	68db      	ldr	r3, [r3, #12]
2000100c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001010:	60d3      	str	r3, [r2, #12]
20001012:	4a07      	ldr	r2, [pc, #28]	; (20001030 <ClkConfig+0x64>)
20001014:	4b06      	ldr	r3, [pc, #24]	; (20001030 <ClkConfig+0x64>)
20001016:	681b      	ldr	r3, [r3, #0]
20001018:	f043 0320 	orr.w	r3, r3, #32
2000101c:	6013      	str	r3, [r2, #0]
2000101e:	4b05      	ldr	r3, [pc, #20]	; (20001034 <ClkConfig+0x68>)
20001020:	2200      	movs	r2, #0
20001022:	601a      	str	r2, [r3, #0]
20001024:	bf00      	nop
20001026:	46bd      	mov	sp, r7
20001028:	bc80      	pop	{r7}
2000102a:	4770      	bx	lr
2000102c:	40020000 	.word	0x40020000
20001030:	40018000 	.word	0x40018000
20001034:	20003700 	.word	0x20003700

20001038 <TimerConfig>:
20001038:	b580      	push	{r7, lr}
2000103a:	af00      	add	r7, sp, #0
2000103c:	4a99      	ldr	r2, [pc, #612]	; (200012a4 <TimerConfig+0x26c>)
2000103e:	4b99      	ldr	r3, [pc, #612]	; (200012a4 <TimerConfig+0x26c>)
20001040:	69db      	ldr	r3, [r3, #28]
20001042:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
20001046:	61d3      	str	r3, [r2, #28]
20001048:	4a96      	ldr	r2, [pc, #600]	; (200012a4 <TimerConfig+0x26c>)
2000104a:	4b96      	ldr	r3, [pc, #600]	; (200012a4 <TimerConfig+0x26c>)
2000104c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000104e:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
20001052:	6253      	str	r3, [r2, #36]	; 0x24
20001054:	4a93      	ldr	r2, [pc, #588]	; (200012a4 <TimerConfig+0x26c>)
20001056:	4b93      	ldr	r3, [pc, #588]	; (200012a4 <TimerConfig+0x26c>)
20001058:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000105a:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
2000105e:	6253      	str	r3, [r2, #36]	; 0x24
20001060:	4b91      	ldr	r3, [pc, #580]	; (200012a8 <TimerConfig+0x270>)
20001062:	2200      	movs	r2, #0
20001064:	601a      	str	r2, [r3, #0]
20001066:	4b90      	ldr	r3, [pc, #576]	; (200012a8 <TimerConfig+0x270>)
20001068:	224f      	movs	r2, #79	; 0x4f
2000106a:	605a      	str	r2, [r3, #4]
2000106c:	4b8e      	ldr	r3, [pc, #568]	; (200012a8 <TimerConfig+0x270>)
2000106e:	f240 32e7 	movw	r2, #999	; 0x3e7
20001072:	609a      	str	r2, [r3, #8]
20001074:	4a8c      	ldr	r2, [pc, #560]	; (200012a8 <TimerConfig+0x270>)
20001076:	4b8c      	ldr	r3, [pc, #560]	; (200012a8 <TimerConfig+0x270>)
20001078:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000107a:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
2000107e:	6253      	str	r3, [r2, #36]	; 0x24
20001080:	4a89      	ldr	r2, [pc, #548]	; (200012a8 <TimerConfig+0x270>)
20001082:	4b89      	ldr	r3, [pc, #548]	; (200012a8 <TimerConfig+0x270>)
20001084:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20001086:	f043 0302 	orr.w	r3, r3, #2
2000108a:	6593      	str	r3, [r2, #88]	; 0x58
2000108c:	4b86      	ldr	r3, [pc, #536]	; (200012a8 <TimerConfig+0x270>)
2000108e:	2201      	movs	r2, #1
20001090:	60da      	str	r2, [r3, #12]
20001092:	4a84      	ldr	r2, [pc, #528]	; (200012a4 <TimerConfig+0x26c>)
20001094:	4b83      	ldr	r3, [pc, #524]	; (200012a4 <TimerConfig+0x26c>)
20001096:	69db      	ldr	r3, [r3, #28]
20001098:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
2000109c:	61d3      	str	r3, [r2, #28]
2000109e:	4a81      	ldr	r2, [pc, #516]	; (200012a4 <TimerConfig+0x26c>)
200010a0:	4b80      	ldr	r3, [pc, #512]	; (200012a4 <TimerConfig+0x26c>)
200010a2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200010a4:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
200010a8:	6253      	str	r3, [r2, #36]	; 0x24
200010aa:	4a7e      	ldr	r2, [pc, #504]	; (200012a4 <TimerConfig+0x26c>)
200010ac:	4b7d      	ldr	r3, [pc, #500]	; (200012a4 <TimerConfig+0x26c>)
200010ae:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200010b0:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
200010b4:	6253      	str	r3, [r2, #36]	; 0x24
200010b6:	4b7d      	ldr	r3, [pc, #500]	; (200012ac <TimerConfig+0x274>)
200010b8:	2200      	movs	r2, #0
200010ba:	601a      	str	r2, [r3, #0]
200010bc:	4b7b      	ldr	r3, [pc, #492]	; (200012ac <TimerConfig+0x274>)
200010be:	2203      	movs	r2, #3
200010c0:	605a      	str	r2, [r3, #4]
200010c2:	4b7a      	ldr	r3, [pc, #488]	; (200012ac <TimerConfig+0x274>)
200010c4:	f240 32ff 	movw	r2, #1023	; 0x3ff
200010c8:	609a      	str	r2, [r3, #8]
200010ca:	4b78      	ldr	r3, [pc, #480]	; (200012ac <TimerConfig+0x274>)
200010cc:	f44f 7200 	mov.w	r2, #512	; 0x200
200010d0:	611a      	str	r2, [r3, #16]
200010d2:	4b76      	ldr	r3, [pc, #472]	; (200012ac <TimerConfig+0x274>)
200010d4:	f44f 7200 	mov.w	r2, #512	; 0x200
200010d8:	615a      	str	r2, [r3, #20]
200010da:	4b74      	ldr	r3, [pc, #464]	; (200012ac <TimerConfig+0x274>)
200010dc:	f44f 7200 	mov.w	r2, #512	; 0x200
200010e0:	619a      	str	r2, [r3, #24]
200010e2:	4b72      	ldr	r3, [pc, #456]	; (200012ac <TimerConfig+0x274>)
200010e4:	22c8      	movs	r2, #200	; 0xc8
200010e6:	61da      	str	r2, [r3, #28]
200010e8:	4a70      	ldr	r2, [pc, #448]	; (200012ac <TimerConfig+0x274>)
200010ea:	4b70      	ldr	r3, [pc, #448]	; (200012ac <TimerConfig+0x274>)
200010ec:	6a1b      	ldr	r3, [r3, #32]
200010ee:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200010f2:	6213      	str	r3, [r2, #32]
200010f4:	4a6d      	ldr	r2, [pc, #436]	; (200012ac <TimerConfig+0x274>)
200010f6:	4b6d      	ldr	r3, [pc, #436]	; (200012ac <TimerConfig+0x274>)
200010f8:	6a1b      	ldr	r3, [r3, #32]
200010fa:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200010fe:	6213      	str	r3, [r2, #32]
20001100:	4a6a      	ldr	r2, [pc, #424]	; (200012ac <TimerConfig+0x274>)
20001102:	4b6a      	ldr	r3, [pc, #424]	; (200012ac <TimerConfig+0x274>)
20001104:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001106:	f023 030f 	bic.w	r3, r3, #15
2000110a:	6313      	str	r3, [r2, #48]	; 0x30
2000110c:	4a67      	ldr	r2, [pc, #412]	; (200012ac <TimerConfig+0x274>)
2000110e:	4b67      	ldr	r3, [pc, #412]	; (200012ac <TimerConfig+0x274>)
20001110:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001112:	f043 030c 	orr.w	r3, r3, #12
20001116:	6313      	str	r3, [r2, #48]	; 0x30
20001118:	4a64      	ldr	r2, [pc, #400]	; (200012ac <TimerConfig+0x274>)
2000111a:	4b64      	ldr	r3, [pc, #400]	; (200012ac <TimerConfig+0x274>)
2000111c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000111e:	f043 0301 	orr.w	r3, r3, #1
20001122:	6313      	str	r3, [r2, #48]	; 0x30
20001124:	4a61      	ldr	r2, [pc, #388]	; (200012ac <TimerConfig+0x274>)
20001126:	4b61      	ldr	r3, [pc, #388]	; (200012ac <TimerConfig+0x274>)
20001128:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000112a:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
2000112e:	6313      	str	r3, [r2, #48]	; 0x30
20001130:	4a5e      	ldr	r2, [pc, #376]	; (200012ac <TimerConfig+0x274>)
20001132:	4b5e      	ldr	r3, [pc, #376]	; (200012ac <TimerConfig+0x274>)
20001134:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001136:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000113a:	6313      	str	r3, [r2, #48]	; 0x30
2000113c:	4a5b      	ldr	r2, [pc, #364]	; (200012ac <TimerConfig+0x274>)
2000113e:	4b5b      	ldr	r3, [pc, #364]	; (200012ac <TimerConfig+0x274>)
20001140:	6b1b      	ldr	r3, [r3, #48]	; 0x30
20001142:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20001146:	6313      	str	r3, [r2, #48]	; 0x30
20001148:	4a58      	ldr	r2, [pc, #352]	; (200012ac <TimerConfig+0x274>)
2000114a:	4b58      	ldr	r3, [pc, #352]	; (200012ac <TimerConfig+0x274>)
2000114c:	6e1b      	ldr	r3, [r3, #96]	; 0x60
2000114e:	f043 0308 	orr.w	r3, r3, #8
20001152:	6613      	str	r3, [r2, #96]	; 0x60
20001154:	4a55      	ldr	r2, [pc, #340]	; (200012ac <TimerConfig+0x274>)
20001156:	4b55      	ldr	r3, [pc, #340]	; (200012ac <TimerConfig+0x274>)
20001158:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000115a:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
2000115e:	6253      	str	r3, [r2, #36]	; 0x24
20001160:	4a52      	ldr	r2, [pc, #328]	; (200012ac <TimerConfig+0x274>)
20001162:	4b52      	ldr	r3, [pc, #328]	; (200012ac <TimerConfig+0x274>)
20001164:	6a5b      	ldr	r3, [r3, #36]	; 0x24
20001166:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
2000116a:	6253      	str	r3, [r2, #36]	; 0x24
2000116c:	4a4f      	ldr	r2, [pc, #316]	; (200012ac <TimerConfig+0x274>)
2000116e:	4b4f      	ldr	r3, [pc, #316]	; (200012ac <TimerConfig+0x274>)
20001170:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001172:	f023 030f 	bic.w	r3, r3, #15
20001176:	6353      	str	r3, [r2, #52]	; 0x34
20001178:	4a4c      	ldr	r2, [pc, #304]	; (200012ac <TimerConfig+0x274>)
2000117a:	4b4c      	ldr	r3, [pc, #304]	; (200012ac <TimerConfig+0x274>)
2000117c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000117e:	f043 030c 	orr.w	r3, r3, #12
20001182:	6353      	str	r3, [r2, #52]	; 0x34
20001184:	4a49      	ldr	r2, [pc, #292]	; (200012ac <TimerConfig+0x274>)
20001186:	4b49      	ldr	r3, [pc, #292]	; (200012ac <TimerConfig+0x274>)
20001188:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000118a:	f043 0301 	orr.w	r3, r3, #1
2000118e:	6353      	str	r3, [r2, #52]	; 0x34
20001190:	4a46      	ldr	r2, [pc, #280]	; (200012ac <TimerConfig+0x274>)
20001192:	4b46      	ldr	r3, [pc, #280]	; (200012ac <TimerConfig+0x274>)
20001194:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20001196:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
2000119a:	6353      	str	r3, [r2, #52]	; 0x34
2000119c:	4a43      	ldr	r2, [pc, #268]	; (200012ac <TimerConfig+0x274>)
2000119e:	4b43      	ldr	r3, [pc, #268]	; (200012ac <TimerConfig+0x274>)
200011a0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200011a2:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
200011a6:	6353      	str	r3, [r2, #52]	; 0x34
200011a8:	4a40      	ldr	r2, [pc, #256]	; (200012ac <TimerConfig+0x274>)
200011aa:	4b40      	ldr	r3, [pc, #256]	; (200012ac <TimerConfig+0x274>)
200011ac:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200011ae:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200011b2:	6353      	str	r3, [r2, #52]	; 0x34
200011b4:	4a3d      	ldr	r2, [pc, #244]	; (200012ac <TimerConfig+0x274>)
200011b6:	4b3d      	ldr	r3, [pc, #244]	; (200012ac <TimerConfig+0x274>)
200011b8:	6e5b      	ldr	r3, [r3, #100]	; 0x64
200011ba:	f043 0308 	orr.w	r3, r3, #8
200011be:	6653      	str	r3, [r2, #100]	; 0x64
200011c0:	4a3a      	ldr	r2, [pc, #232]	; (200012ac <TimerConfig+0x274>)
200011c2:	4b3a      	ldr	r3, [pc, #232]	; (200012ac <TimerConfig+0x274>)
200011c4:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200011c6:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
200011ca:	6293      	str	r3, [r2, #40]	; 0x28
200011cc:	4a37      	ldr	r2, [pc, #220]	; (200012ac <TimerConfig+0x274>)
200011ce:	4b37      	ldr	r3, [pc, #220]	; (200012ac <TimerConfig+0x274>)
200011d0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200011d2:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
200011d6:	6293      	str	r3, [r2, #40]	; 0x28
200011d8:	4a34      	ldr	r2, [pc, #208]	; (200012ac <TimerConfig+0x274>)
200011da:	4b34      	ldr	r3, [pc, #208]	; (200012ac <TimerConfig+0x274>)
200011dc:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200011de:	f023 030f 	bic.w	r3, r3, #15
200011e2:	6393      	str	r3, [r2, #56]	; 0x38
200011e4:	4a31      	ldr	r2, [pc, #196]	; (200012ac <TimerConfig+0x274>)
200011e6:	4b31      	ldr	r3, [pc, #196]	; (200012ac <TimerConfig+0x274>)
200011e8:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200011ea:	f043 030c 	orr.w	r3, r3, #12
200011ee:	6393      	str	r3, [r2, #56]	; 0x38
200011f0:	4a2e      	ldr	r2, [pc, #184]	; (200012ac <TimerConfig+0x274>)
200011f2:	4b2e      	ldr	r3, [pc, #184]	; (200012ac <TimerConfig+0x274>)
200011f4:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200011f6:	f043 0301 	orr.w	r3, r3, #1
200011fa:	6393      	str	r3, [r2, #56]	; 0x38
200011fc:	4a2b      	ldr	r2, [pc, #172]	; (200012ac <TimerConfig+0x274>)
200011fe:	4b2b      	ldr	r3, [pc, #172]	; (200012ac <TimerConfig+0x274>)
20001200:	6b9b      	ldr	r3, [r3, #56]	; 0x38
20001202:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001206:	6393      	str	r3, [r2, #56]	; 0x38
20001208:	4a28      	ldr	r2, [pc, #160]	; (200012ac <TimerConfig+0x274>)
2000120a:	4b28      	ldr	r3, [pc, #160]	; (200012ac <TimerConfig+0x274>)
2000120c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000120e:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
20001212:	6393      	str	r3, [r2, #56]	; 0x38
20001214:	4a25      	ldr	r2, [pc, #148]	; (200012ac <TimerConfig+0x274>)
20001216:	4b25      	ldr	r3, [pc, #148]	; (200012ac <TimerConfig+0x274>)
20001218:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000121a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000121e:	6393      	str	r3, [r2, #56]	; 0x38
20001220:	4a22      	ldr	r2, [pc, #136]	; (200012ac <TimerConfig+0x274>)
20001222:	4b22      	ldr	r3, [pc, #136]	; (200012ac <TimerConfig+0x274>)
20001224:	6e9b      	ldr	r3, [r3, #104]	; 0x68
20001226:	f043 0308 	orr.w	r3, r3, #8
2000122a:	6693      	str	r3, [r2, #104]	; 0x68
2000122c:	4a1f      	ldr	r2, [pc, #124]	; (200012ac <TimerConfig+0x274>)
2000122e:	4b1f      	ldr	r3, [pc, #124]	; (200012ac <TimerConfig+0x274>)
20001230:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20001232:	f423 6360 	bic.w	r3, r3, #3584	; 0xe00
20001236:	62d3      	str	r3, [r2, #44]	; 0x2c
20001238:	4a1c      	ldr	r2, [pc, #112]	; (200012ac <TimerConfig+0x274>)
2000123a:	4b1c      	ldr	r3, [pc, #112]	; (200012ac <TimerConfig+0x274>)
2000123c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
2000123e:	f443 6360 	orr.w	r3, r3, #3584	; 0xe00
20001242:	62d3      	str	r3, [r2, #44]	; 0x2c
20001244:	4a19      	ldr	r2, [pc, #100]	; (200012ac <TimerConfig+0x274>)
20001246:	4b19      	ldr	r3, [pc, #100]	; (200012ac <TimerConfig+0x274>)
20001248:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
2000124a:	f023 030f 	bic.w	r3, r3, #15
2000124e:	63d3      	str	r3, [r2, #60]	; 0x3c
20001250:	4a16      	ldr	r2, [pc, #88]	; (200012ac <TimerConfig+0x274>)
20001252:	4b16      	ldr	r3, [pc, #88]	; (200012ac <TimerConfig+0x274>)
20001254:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001256:	f043 030c 	orr.w	r3, r3, #12
2000125a:	63d3      	str	r3, [r2, #60]	; 0x3c
2000125c:	4a13      	ldr	r2, [pc, #76]	; (200012ac <TimerConfig+0x274>)
2000125e:	4b13      	ldr	r3, [pc, #76]	; (200012ac <TimerConfig+0x274>)
20001260:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001262:	f043 0301 	orr.w	r3, r3, #1
20001266:	63d3      	str	r3, [r2, #60]	; 0x3c
20001268:	4a10      	ldr	r2, [pc, #64]	; (200012ac <TimerConfig+0x274>)
2000126a:	4b10      	ldr	r3, [pc, #64]	; (200012ac <TimerConfig+0x274>)
2000126c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
2000126e:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
20001272:	63d3      	str	r3, [r2, #60]	; 0x3c
20001274:	4a0d      	ldr	r2, [pc, #52]	; (200012ac <TimerConfig+0x274>)
20001276:	4b0d      	ldr	r3, [pc, #52]	; (200012ac <TimerConfig+0x274>)
20001278:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
2000127a:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
2000127e:	63d3      	str	r3, [r2, #60]	; 0x3c
20001280:	4a0a      	ldr	r2, [pc, #40]	; (200012ac <TimerConfig+0x274>)
20001282:	4b0a      	ldr	r3, [pc, #40]	; (200012ac <TimerConfig+0x274>)
20001284:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20001286:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000128a:	63d3      	str	r3, [r2, #60]	; 0x3c
2000128c:	4a07      	ldr	r2, [pc, #28]	; (200012ac <TimerConfig+0x274>)
2000128e:	4b07      	ldr	r3, [pc, #28]	; (200012ac <TimerConfig+0x274>)
20001290:	6edb      	ldr	r3, [r3, #108]	; 0x6c
20001292:	f043 0308 	orr.w	r3, r3, #8
20001296:	66d3      	str	r3, [r2, #108]	; 0x6c
20001298:	4a04      	ldr	r2, [pc, #16]	; (200012ac <TimerConfig+0x274>)
2000129a:	4b04      	ldr	r3, [pc, #16]	; (200012ac <TimerConfig+0x274>)
2000129c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000129e:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
200012a2:	e005      	b.n	200012b0 <TimerConfig+0x278>
200012a4:	40020000 	.word	0x40020000
200012a8:	40070000 	.word	0x40070000
200012ac:	40080000 	.word	0x40080000
200012b0:	6413      	str	r3, [r2, #64]	; 0x40
200012b2:	4a10      	ldr	r2, [pc, #64]	; (200012f4 <TimerConfig+0x2bc>)
200012b4:	4b0f      	ldr	r3, [pc, #60]	; (200012f4 <TimerConfig+0x2bc>)
200012b6:	6c5b      	ldr	r3, [r3, #68]	; 0x44
200012b8:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
200012bc:	6453      	str	r3, [r2, #68]	; 0x44
200012be:	4a0d      	ldr	r2, [pc, #52]	; (200012f4 <TimerConfig+0x2bc>)
200012c0:	4b0c      	ldr	r3, [pc, #48]	; (200012f4 <TimerConfig+0x2bc>)
200012c2:	6c9b      	ldr	r3, [r3, #72]	; 0x48
200012c4:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
200012c8:	6493      	str	r3, [r2, #72]	; 0x48
200012ca:	4a0a      	ldr	r2, [pc, #40]	; (200012f4 <TimerConfig+0x2bc>)
200012cc:	4b09      	ldr	r3, [pc, #36]	; (200012f4 <TimerConfig+0x2bc>)
200012ce:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
200012d0:	f443 5396 	orr.w	r3, r3, #4800	; 0x12c0
200012d4:	64d3      	str	r3, [r2, #76]	; 0x4c
200012d6:	4a07      	ldr	r2, [pc, #28]	; (200012f4 <TimerConfig+0x2bc>)
200012d8:	4b06      	ldr	r3, [pc, #24]	; (200012f4 <TimerConfig+0x2bc>)
200012da:	6d9b      	ldr	r3, [r3, #88]	; 0x58
200012dc:	f043 0302 	orr.w	r3, r3, #2
200012e0:	6593      	str	r3, [r2, #88]	; 0x58
200012e2:	2010      	movs	r0, #16
200012e4:	f7ff fd80 	bl	20000de8 <NVIC_EnableIRQ>
200012e8:	4b02      	ldr	r3, [pc, #8]	; (200012f4 <TimerConfig+0x2bc>)
200012ea:	2201      	movs	r2, #1
200012ec:	60da      	str	r2, [r3, #12]
200012ee:	bf00      	nop
200012f0:	bd80      	pop	{r7, pc}
200012f2:	bf00      	nop
200012f4:	40080000 	.word	0x40080000

200012f8 <set_ram_vt>:
200012f8:	b480      	push	{r7}
200012fa:	b085      	sub	sp, #20
200012fc:	af00      	add	r7, sp, #0
200012fe:	2300      	movs	r3, #0
20001300:	60fb      	str	r3, [r7, #12]
20001302:	2300      	movs	r3, #0
20001304:	607b      	str	r3, [r7, #4]
20001306:	4b16      	ldr	r3, [pc, #88]	; (20001360 <set_ram_vt+0x68>)
20001308:	60bb      	str	r3, [r7, #8]
2000130a:	2300      	movs	r3, #0
2000130c:	60fb      	str	r3, [r7, #12]
2000130e:	e00b      	b.n	20001328 <set_ram_vt+0x30>
20001310:	68bb      	ldr	r3, [r7, #8]
20001312:	1d1a      	adds	r2, r3, #4
20001314:	60ba      	str	r2, [r7, #8]
20001316:	68fa      	ldr	r2, [r7, #12]
20001318:	0092      	lsls	r2, r2, #2
2000131a:	6879      	ldr	r1, [r7, #4]
2000131c:	440a      	add	r2, r1
2000131e:	6812      	ldr	r2, [r2, #0]
20001320:	601a      	str	r2, [r3, #0]
20001322:	68fb      	ldr	r3, [r7, #12]
20001324:	3301      	adds	r3, #1
20001326:	60fb      	str	r3, [r7, #12]
20001328:	68fb      	ldr	r3, [r7, #12]
2000132a:	2b2f      	cmp	r3, #47	; 0x2f
2000132c:	d9f0      	bls.n	20001310 <set_ram_vt+0x18>
2000132e:	4b0d      	ldr	r3, [pc, #52]	; (20001364 <set_ram_vt+0x6c>)
20001330:	4a0b      	ldr	r2, [pc, #44]	; (20001360 <set_ram_vt+0x68>)
20001332:	609a      	str	r2, [r3, #8]
20001334:	4b0a      	ldr	r3, [pc, #40]	; (20001360 <set_ram_vt+0x68>)
20001336:	4a0c      	ldr	r2, [pc, #48]	; (20001368 <set_ram_vt+0x70>)
20001338:	63da      	str	r2, [r3, #60]	; 0x3c
2000133a:	4b09      	ldr	r3, [pc, #36]	; (20001360 <set_ram_vt+0x68>)
2000133c:	4a0b      	ldr	r2, [pc, #44]	; (2000136c <set_ram_vt+0x74>)
2000133e:	659a      	str	r2, [r3, #88]	; 0x58
20001340:	4b07      	ldr	r3, [pc, #28]	; (20001360 <set_ram_vt+0x68>)
20001342:	4a0b      	ldr	r2, [pc, #44]	; (20001370 <set_ram_vt+0x78>)
20001344:	679a      	str	r2, [r3, #120]	; 0x78
20001346:	4b06      	ldr	r3, [pc, #24]	; (20001360 <set_ram_vt+0x68>)
20001348:	4a0a      	ldr	r2, [pc, #40]	; (20001374 <set_ram_vt+0x7c>)
2000134a:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
2000134e:	4b04      	ldr	r3, [pc, #16]	; (20001360 <set_ram_vt+0x68>)
20001350:	4a09      	ldr	r2, [pc, #36]	; (20001378 <set_ram_vt+0x80>)
20001352:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
20001356:	bf00      	nop
20001358:	3714      	adds	r7, #20
2000135a:	46bd      	mov	sp, r7
2000135c:	bc80      	pop	{r7}
2000135e:	4770      	bx	lr
20001360:	20003800 	.word	0x20003800
20001364:	e000ed00 	.word	0xe000ed00
20001368:	20001435 	.word	0x20001435
2000136c:	20001451 	.word	0x20001451
20001370:	200002d1 	.word	0x200002d1
20001374:	200002e9 	.word	0x200002e9
20001378:	200002bd 	.word	0x200002bd

2000137c <uart_init>:
2000137c:	b480      	push	{r7}
2000137e:	af00      	add	r7, sp, #0
20001380:	4b22      	ldr	r3, [pc, #136]	; (2000140c <uart_init+0x90>)
20001382:	2200      	movs	r2, #0
20001384:	601a      	str	r2, [r3, #0]
20001386:	4a22      	ldr	r2, [pc, #136]	; (20001410 <uart_init+0x94>)
20001388:	4b21      	ldr	r3, [pc, #132]	; (20001410 <uart_init+0x94>)
2000138a:	69db      	ldr	r3, [r3, #28]
2000138c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001390:	61d3      	str	r3, [r2, #28]
20001392:	4a1f      	ldr	r2, [pc, #124]	; (20001410 <uart_init+0x94>)
20001394:	4b1e      	ldr	r3, [pc, #120]	; (20001410 <uart_init+0x94>)
20001396:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20001398:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
2000139c:	6293      	str	r3, [r2, #40]	; 0x28
2000139e:	4b1d      	ldr	r3, [pc, #116]	; (20001414 <uart_init+0x98>)
200013a0:	2204      	movs	r2, #4
200013a2:	625a      	str	r2, [r3, #36]	; 0x24
200013a4:	4b1b      	ldr	r3, [pc, #108]	; (20001414 <uart_init+0x98>)
200013a6:	2200      	movs	r2, #0
200013a8:	629a      	str	r2, [r3, #40]	; 0x28
200013aa:	4a1a      	ldr	r2, [pc, #104]	; (20001414 <uart_init+0x98>)
200013ac:	4b19      	ldr	r3, [pc, #100]	; (20001414 <uart_init+0x98>)
200013ae:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013b0:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
200013b4:	6353      	str	r3, [r2, #52]	; 0x34
200013b6:	4a17      	ldr	r2, [pc, #92]	; (20001414 <uart_init+0x98>)
200013b8:	4b16      	ldr	r3, [pc, #88]	; (20001414 <uart_init+0x98>)
200013ba:	6b5b      	ldr	r3, [r3, #52]	; 0x34
200013bc:	f043 0312 	orr.w	r3, r3, #18
200013c0:	6353      	str	r3, [r2, #52]	; 0x34
200013c2:	4a14      	ldr	r2, [pc, #80]	; (20001414 <uart_init+0x98>)
200013c4:	4b13      	ldr	r3, [pc, #76]	; (20001414 <uart_init+0x98>)
200013c6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
200013c8:	f043 0310 	orr.w	r3, r3, #16
200013cc:	62d3      	str	r3, [r2, #44]	; 0x2c
200013ce:	4a11      	ldr	r2, [pc, #68]	; (20001414 <uart_init+0x98>)
200013d0:	4b10      	ldr	r3, [pc, #64]	; (20001414 <uart_init+0x98>)
200013d2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
200013d4:	f043 0360 	orr.w	r3, r3, #96	; 0x60
200013d8:	62d3      	str	r3, [r2, #44]	; 0x2c
200013da:	4a0e      	ldr	r2, [pc, #56]	; (20001414 <uart_init+0x98>)
200013dc:	4b0d      	ldr	r3, [pc, #52]	; (20001414 <uart_init+0x98>)
200013de:	6b1b      	ldr	r3, [r3, #48]	; 0x30
200013e0:	f443 7340 	orr.w	r3, r3, #768	; 0x300
200013e4:	f043 0301 	orr.w	r3, r3, #1
200013e8:	6313      	str	r3, [r2, #48]	; 0x30
200013ea:	4a0a      	ldr	r2, [pc, #40]	; (20001414 <uart_init+0x98>)
200013ec:	4b09      	ldr	r3, [pc, #36]	; (20001414 <uart_init+0x98>)
200013ee:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200013f0:	f043 0310 	orr.w	r3, r3, #16
200013f4:	6393      	str	r3, [r2, #56]	; 0x38
200013f6:	4a07      	ldr	r2, [pc, #28]	; (20001414 <uart_init+0x98>)
200013f8:	4b06      	ldr	r3, [pc, #24]	; (20001414 <uart_init+0x98>)
200013fa:	6b9b      	ldr	r3, [r3, #56]	; 0x38
200013fc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
20001400:	6393      	str	r3, [r2, #56]	; 0x38
20001402:	bf00      	nop
20001404:	46bd      	mov	sp, r7
20001406:	bc80      	pop	{r7}
20001408:	4770      	bx	lr
2000140a:	bf00      	nop
2000140c:	200038d0 	.word	0x200038d0
20001410:	40020000 	.word	0x40020000
20001414:	40030000 	.word	0x40030000

20001418 <system_init>:
20001418:	b580      	push	{r7, lr}
2000141a:	af00      	add	r7, sp, #0
2000141c:	f7ff ff6c 	bl	200012f8 <set_ram_vt>
20001420:	f7ff fdd4 	bl	20000fcc <ClkConfig>
20001424:	f7ff fcf8 	bl	20000e18 <PortConfig>
20001428:	f7ff fe06 	bl	20001038 <TimerConfig>
2000142c:	f7ff ffa6 	bl	2000137c <uart_init>
20001430:	bf00      	nop
20001432:	bd80      	pop	{r7, pc}

20001434 <SysTick_Handler>:
20001434:	b480      	push	{r7}
20001436:	af00      	add	r7, sp, #0
20001438:	4b04      	ldr	r3, [pc, #16]	; (2000144c <SysTick_Handler+0x18>)
2000143a:	681b      	ldr	r3, [r3, #0]
2000143c:	3301      	adds	r3, #1
2000143e:	4a03      	ldr	r2, [pc, #12]	; (2000144c <SysTick_Handler+0x18>)
20001440:	6013      	str	r3, [r2, #0]
20001442:	bf00      	nop
20001444:	46bd      	mov	sp, r7
20001446:	bc80      	pop	{r7}
20001448:	4770      	bx	lr
2000144a:	bf00      	nop
2000144c:	20003700 	.word	0x20003700

20001450 <UART1_Handler>:
20001450:	b480      	push	{r7}
20001452:	b083      	sub	sp, #12
20001454:	af00      	add	r7, sp, #0
20001456:	4b1d      	ldr	r3, [pc, #116]	; (200014cc <UART1_Handler+0x7c>)
20001458:	6c1b      	ldr	r3, [r3, #64]	; 0x40
2000145a:	f003 0310 	and.w	r3, r3, #16
2000145e:	2b00      	cmp	r3, #0
20001460:	d01f      	beq.n	200014a2 <UART1_Handler+0x52>
20001462:	e002      	b.n	2000146a <UART1_Handler+0x1a>
20001464:	4b19      	ldr	r3, [pc, #100]	; (200014cc <UART1_Handler+0x7c>)
20001466:	681b      	ldr	r3, [r3, #0]
20001468:	71fb      	strb	r3, [r7, #7]
2000146a:	4b18      	ldr	r3, [pc, #96]	; (200014cc <UART1_Handler+0x7c>)
2000146c:	699b      	ldr	r3, [r3, #24]
2000146e:	f003 0310 	and.w	r3, r3, #16
20001472:	2b00      	cmp	r3, #0
20001474:	d0f6      	beq.n	20001464 <UART1_Handler+0x14>
20001476:	4b16      	ldr	r3, [pc, #88]	; (200014d0 <UART1_Handler+0x80>)
20001478:	681b      	ldr	r3, [r3, #0]
2000147a:	80bb      	strh	r3, [r7, #4]
2000147c:	4b14      	ldr	r3, [pc, #80]	; (200014d0 <UART1_Handler+0x80>)
2000147e:	689b      	ldr	r3, [r3, #8]
20001480:	085b      	lsrs	r3, r3, #1
20001482:	807b      	strh	r3, [r7, #2]
20001484:	88ba      	ldrh	r2, [r7, #4]
20001486:	887b      	ldrh	r3, [r7, #2]
20001488:	429a      	cmp	r2, r3
2000148a:	d205      	bcs.n	20001498 <UART1_Handler+0x48>
2000148c:	4a10      	ldr	r2, [pc, #64]	; (200014d0 <UART1_Handler+0x80>)
2000148e:	4b10      	ldr	r3, [pc, #64]	; (200014d0 <UART1_Handler+0x80>)
20001490:	681b      	ldr	r3, [r3, #0]
20001492:	3b01      	subs	r3, #1
20001494:	6013      	str	r3, [r2, #0]
20001496:	e004      	b.n	200014a2 <UART1_Handler+0x52>
20001498:	4a0d      	ldr	r2, [pc, #52]	; (200014d0 <UART1_Handler+0x80>)
2000149a:	4b0d      	ldr	r3, [pc, #52]	; (200014d0 <UART1_Handler+0x80>)
2000149c:	681b      	ldr	r3, [r3, #0]
2000149e:	3301      	adds	r3, #1
200014a0:	6013      	str	r3, [r2, #0]
200014a2:	4b0a      	ldr	r3, [pc, #40]	; (200014cc <UART1_Handler+0x7c>)
200014a4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
200014a6:	f003 0340 	and.w	r3, r3, #64	; 0x40
200014aa:	2b00      	cmp	r3, #0
200014ac:	d009      	beq.n	200014c2 <UART1_Handler+0x72>
200014ae:	e002      	b.n	200014b6 <UART1_Handler+0x66>
200014b0:	4b06      	ldr	r3, [pc, #24]	; (200014cc <UART1_Handler+0x7c>)
200014b2:	681b      	ldr	r3, [r3, #0]
200014b4:	707b      	strb	r3, [r7, #1]
200014b6:	4b05      	ldr	r3, [pc, #20]	; (200014cc <UART1_Handler+0x7c>)
200014b8:	699b      	ldr	r3, [r3, #24]
200014ba:	f003 0310 	and.w	r3, r3, #16
200014be:	2b00      	cmp	r3, #0
200014c0:	d0f6      	beq.n	200014b0 <UART1_Handler+0x60>
200014c2:	bf00      	nop
200014c4:	370c      	adds	r7, #12
200014c6:	46bd      	mov	sp, r7
200014c8:	bc80      	pop	{r7}
200014ca:	4770      	bx	lr
200014cc:	40030000 	.word	0x40030000
200014d0:	40070000 	.word	0x40070000
