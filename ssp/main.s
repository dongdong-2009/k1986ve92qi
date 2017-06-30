
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b580      	push	{r7, lr}
20000002:	b084      	sub	sp, #16
20000004:	af00      	add	r7, sp, #0
20000006:	2300      	movs	r3, #0
20000008:	60fb      	str	r3, [r7, #12]
2000000a:	2300      	movs	r3, #0
2000000c:	60bb      	str	r3, [r7, #8]
2000000e:	2300      	movs	r3, #0
20000010:	607b      	str	r3, [r7, #4]
20000012:	f000 f9e9 	bl	200003e8 <set_ram_vt>
20000016:	f000 f9ad 	bl	20000374 <ClkConfig>
2000001a:	f000 f8c1 	bl	200001a0 <PortConfig>
2000001e:	f000 f931 	bl	20000284 <ssi_init>
20000022:	f000 f991 	bl	20000348 <dac_init>
20000026:	f000 f977 	bl	20000318 <adc_init>
2000002a:	f000 fa1d 	bl	20000468 <TimerConfig>
2000002e:	f000 f833 	bl	20000098 <__WFI>
20000032:	4b15      	ldr	r3, [pc, #84]	; (20000088 <main+0x88>)
20000034:	68db      	ldr	r3, [r3, #12]
20000036:	f003 0308 	and.w	r3, r3, #8
2000003a:	2b00      	cmp	r3, #0
2000003c:	d021      	beq.n	20000082 <main+0x82>
2000003e:	4a13      	ldr	r2, [pc, #76]	; (2000008c <main+0x8c>)
20000040:	4b12      	ldr	r3, [pc, #72]	; (2000008c <main+0x8c>)
20000042:	681b      	ldr	r3, [r3, #0]
20000044:	f083 0301 	eor.w	r3, r3, #1
20000048:	6013      	str	r3, [r2, #0]
2000004a:	4b0f      	ldr	r3, [pc, #60]	; (20000088 <main+0x88>)
2000004c:	689b      	ldr	r3, [r3, #8]
2000004e:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000052:	4618      	mov	r0, r3
20000054:	f000 f946 	bl	200002e4 <g2b>
20000058:	6038      	str	r0, [r7, #0]
2000005a:	683a      	ldr	r2, [r7, #0]
2000005c:	68fb      	ldr	r3, [r7, #12]
2000005e:	429a      	cmp	r2, r3
20000060:	d904      	bls.n	2000006c <main+0x6c>
20000062:	683a      	ldr	r2, [r7, #0]
20000064:	68fb      	ldr	r3, [r7, #12]
20000066:	1ad3      	subs	r3, r2, r3
20000068:	60bb      	str	r3, [r7, #8]
2000006a:	e005      	b.n	20000078 <main+0x78>
2000006c:	683a      	ldr	r2, [r7, #0]
2000006e:	68fb      	ldr	r3, [r7, #12]
20000070:	1ad3      	subs	r3, r2, r3
20000072:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
20000076:	60bb      	str	r3, [r7, #8]
20000078:	683b      	ldr	r3, [r7, #0]
2000007a:	60fb      	str	r3, [r7, #12]
2000007c:	4a04      	ldr	r2, [pc, #16]	; (20000090 <main+0x90>)
2000007e:	683b      	ldr	r3, [r7, #0]
20000080:	6093      	str	r3, [r2, #8]
20000082:	4b04      	ldr	r3, [pc, #16]	; (20000094 <main+0x94>)
20000084:	6a1b      	ldr	r3, [r3, #32]
20000086:	e7d2      	b.n	2000002e <main+0x2e>
20000088:	40040000 	.word	0x40040000
2000008c:	400b0000 	.word	0x400b0000
20000090:	40090000 	.word	0x40090000
20000094:	40088000 	.word	0x40088000

20000098 <__WFI>:
20000098:	b480      	push	{r7}
2000009a:	af00      	add	r7, sp, #0
2000009c:	bf30      	wfi
2000009e:	bf00      	nop
200000a0:	46bd      	mov	sp, r7
200000a2:	bc80      	pop	{r7}
200000a4:	4770      	bx	lr
200000a6:	bf00      	nop

200000a8 <NVIC_EnableIRQ>:
200000a8:	b480      	push	{r7}
200000aa:	b083      	sub	sp, #12
200000ac:	af00      	add	r7, sp, #0
200000ae:	4603      	mov	r3, r0
200000b0:	71fb      	strb	r3, [r7, #7]
200000b2:	4908      	ldr	r1, [pc, #32]	; (200000d4 <NVIC_EnableIRQ+0x2c>)
200000b4:	f997 3007 	ldrsb.w	r3, [r7, #7]
200000b8:	095b      	lsrs	r3, r3, #5
200000ba:	79fa      	ldrb	r2, [r7, #7]
200000bc:	f002 021f 	and.w	r2, r2, #31
200000c0:	2001      	movs	r0, #1
200000c2:	fa00 f202 	lsl.w	r2, r0, r2
200000c6:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
200000ca:	bf00      	nop
200000cc:	370c      	adds	r7, #12
200000ce:	46bd      	mov	sp, r7
200000d0:	bc80      	pop	{r7}
200000d2:	4770      	bx	lr
200000d4:	e000e100 	.word	0xe000e100

200000d8 <NVIC_SetPriority>:
200000d8:	b480      	push	{r7}
200000da:	b083      	sub	sp, #12
200000dc:	af00      	add	r7, sp, #0
200000de:	4603      	mov	r3, r0
200000e0:	6039      	str	r1, [r7, #0]
200000e2:	71fb      	strb	r3, [r7, #7]
200000e4:	f997 3007 	ldrsb.w	r3, [r7, #7]
200000e8:	2b00      	cmp	r3, #0
200000ea:	da0b      	bge.n	20000104 <NVIC_SetPriority+0x2c>
200000ec:	490d      	ldr	r1, [pc, #52]	; (20000124 <NVIC_SetPriority+0x4c>)
200000ee:	79fb      	ldrb	r3, [r7, #7]
200000f0:	f003 030f 	and.w	r3, r3, #15
200000f4:	3b04      	subs	r3, #4
200000f6:	683a      	ldr	r2, [r7, #0]
200000f8:	b2d2      	uxtb	r2, r2
200000fa:	0152      	lsls	r2, r2, #5
200000fc:	b2d2      	uxtb	r2, r2
200000fe:	440b      	add	r3, r1
20000100:	761a      	strb	r2, [r3, #24]
20000102:	e009      	b.n	20000118 <NVIC_SetPriority+0x40>
20000104:	4908      	ldr	r1, [pc, #32]	; (20000128 <NVIC_SetPriority+0x50>)
20000106:	f997 3007 	ldrsb.w	r3, [r7, #7]
2000010a:	683a      	ldr	r2, [r7, #0]
2000010c:	b2d2      	uxtb	r2, r2
2000010e:	0152      	lsls	r2, r2, #5
20000110:	b2d2      	uxtb	r2, r2
20000112:	440b      	add	r3, r1
20000114:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
20000118:	bf00      	nop
2000011a:	370c      	adds	r7, #12
2000011c:	46bd      	mov	sp, r7
2000011e:	bc80      	pop	{r7}
20000120:	4770      	bx	lr
20000122:	bf00      	nop
20000124:	e000ed00 	.word	0xe000ed00
20000128:	e000e100 	.word	0xe000e100

2000012c <SysTick_Config>:
2000012c:	b580      	push	{r7, lr}
2000012e:	b082      	sub	sp, #8
20000130:	af00      	add	r7, sp, #0
20000132:	6078      	str	r0, [r7, #4]
20000134:	687b      	ldr	r3, [r7, #4]
20000136:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
2000013a:	d301      	bcc.n	20000140 <SysTick_Config+0x14>
2000013c:	2301      	movs	r3, #1
2000013e:	e011      	b.n	20000164 <SysTick_Config+0x38>
20000140:	4a0a      	ldr	r2, [pc, #40]	; (2000016c <SysTick_Config+0x40>)
20000142:	687b      	ldr	r3, [r7, #4]
20000144:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
20000148:	3b01      	subs	r3, #1
2000014a:	6053      	str	r3, [r2, #4]
2000014c:	2107      	movs	r1, #7
2000014e:	f04f 30ff 	mov.w	r0, #4294967295
20000152:	f7ff ffc1 	bl	200000d8 <NVIC_SetPriority>
20000156:	4b05      	ldr	r3, [pc, #20]	; (2000016c <SysTick_Config+0x40>)
20000158:	2200      	movs	r2, #0
2000015a:	609a      	str	r2, [r3, #8]
2000015c:	4b03      	ldr	r3, [pc, #12]	; (2000016c <SysTick_Config+0x40>)
2000015e:	2207      	movs	r2, #7
20000160:	601a      	str	r2, [r3, #0]
20000162:	2300      	movs	r3, #0
20000164:	4618      	mov	r0, r3
20000166:	3708      	adds	r7, #8
20000168:	46bd      	mov	sp, r7
2000016a:	bd80      	pop	{r7, pc}
2000016c:	e000e010 	.word	0xe000e010

20000170 <sleep>:
20000170:	b480      	push	{r7}
20000172:	b085      	sub	sp, #20
20000174:	af00      	add	r7, sp, #0
20000176:	6078      	str	r0, [r7, #4]
20000178:	4b08      	ldr	r3, [pc, #32]	; (2000019c <sleep+0x2c>)
2000017a:	681a      	ldr	r2, [r3, #0]
2000017c:	687b      	ldr	r3, [r7, #4]
2000017e:	4413      	add	r3, r2
20000180:	60fb      	str	r3, [r7, #12]
20000182:	bf00      	nop
20000184:	4b05      	ldr	r3, [pc, #20]	; (2000019c <sleep+0x2c>)
20000186:	681a      	ldr	r2, [r3, #0]
20000188:	68fb      	ldr	r3, [r7, #12]
2000018a:	429a      	cmp	r2, r3
2000018c:	d3fa      	bcc.n	20000184 <sleep+0x14>
2000018e:	bf00      	nop
20000190:	4618      	mov	r0, r3
20000192:	3714      	adds	r7, #20
20000194:	46bd      	mov	sp, r7
20000196:	bc80      	pop	{r7}
20000198:	4770      	bx	lr
2000019a:	bf00      	nop
2000019c:	20000500 	.word	0x20000500

200001a0 <PortConfig>:
200001a0:	b480      	push	{r7}
200001a2:	af00      	add	r7, sp, #0
200001a4:	4a32      	ldr	r2, [pc, #200]	; (20000270 <PortConfig+0xd0>)
200001a6:	4b32      	ldr	r3, [pc, #200]	; (20000270 <PortConfig+0xd0>)
200001a8:	69db      	ldr	r3, [r3, #28]
200001aa:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
200001ae:	61d3      	str	r3, [r2, #28]
200001b0:	4a30      	ldr	r2, [pc, #192]	; (20000274 <PortConfig+0xd4>)
200001b2:	4b30      	ldr	r3, [pc, #192]	; (20000274 <PortConfig+0xd4>)
200001b4:	689b      	ldr	r3, [r3, #8]
200001b6:	6093      	str	r3, [r2, #8]
200001b8:	4a2e      	ldr	r2, [pc, #184]	; (20000274 <PortConfig+0xd4>)
200001ba:	4b2e      	ldr	r3, [pc, #184]	; (20000274 <PortConfig+0xd4>)
200001bc:	681b      	ldr	r3, [r3, #0]
200001be:	6013      	str	r3, [r2, #0]
200001c0:	4a2c      	ldr	r2, [pc, #176]	; (20000274 <PortConfig+0xd4>)
200001c2:	4b2c      	ldr	r3, [pc, #176]	; (20000274 <PortConfig+0xd4>)
200001c4:	685b      	ldr	r3, [r3, #4]
200001c6:	f043 0301 	orr.w	r3, r3, #1
200001ca:	6053      	str	r3, [r2, #4]
200001cc:	4a29      	ldr	r2, [pc, #164]	; (20000274 <PortConfig+0xd4>)
200001ce:	4b29      	ldr	r3, [pc, #164]	; (20000274 <PortConfig+0xd4>)
200001d0:	68db      	ldr	r3, [r3, #12]
200001d2:	f043 0301 	orr.w	r3, r3, #1
200001d6:	60d3      	str	r3, [r2, #12]
200001d8:	4a26      	ldr	r2, [pc, #152]	; (20000274 <PortConfig+0xd4>)
200001da:	4b26      	ldr	r3, [pc, #152]	; (20000274 <PortConfig+0xd4>)
200001dc:	699b      	ldr	r3, [r3, #24]
200001de:	f043 0303 	orr.w	r3, r3, #3
200001e2:	6193      	str	r3, [r2, #24]
200001e4:	4a22      	ldr	r2, [pc, #136]	; (20000270 <PortConfig+0xd0>)
200001e6:	4b22      	ldr	r3, [pc, #136]	; (20000270 <PortConfig+0xd0>)
200001e8:	69db      	ldr	r3, [r3, #28]
200001ea:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
200001ee:	61d3      	str	r3, [r2, #28]
200001f0:	4a21      	ldr	r2, [pc, #132]	; (20000278 <PortConfig+0xd8>)
200001f2:	4b21      	ldr	r3, [pc, #132]	; (20000278 <PortConfig+0xd8>)
200001f4:	689b      	ldr	r3, [r3, #8]
200001f6:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
200001fa:	6093      	str	r3, [r2, #8]
200001fc:	4a1e      	ldr	r2, [pc, #120]	; (20000278 <PortConfig+0xd8>)
200001fe:	4b1e      	ldr	r3, [pc, #120]	; (20000278 <PortConfig+0xd8>)
20000200:	689b      	ldr	r3, [r3, #8]
20000202:	f043 03aa 	orr.w	r3, r3, #170	; 0xaa
20000206:	6093      	str	r3, [r2, #8]
20000208:	4a1b      	ldr	r2, [pc, #108]	; (20000278 <PortConfig+0xd8>)
2000020a:	4b1b      	ldr	r3, [pc, #108]	; (20000278 <PortConfig+0xd8>)
2000020c:	68db      	ldr	r3, [r3, #12]
2000020e:	f043 030f 	orr.w	r3, r3, #15
20000212:	60d3      	str	r3, [r2, #12]
20000214:	4a18      	ldr	r2, [pc, #96]	; (20000278 <PortConfig+0xd8>)
20000216:	4b18      	ldr	r3, [pc, #96]	; (20000278 <PortConfig+0xd8>)
20000218:	699b      	ldr	r3, [r3, #24]
2000021a:	f043 033f 	orr.w	r3, r3, #63	; 0x3f
2000021e:	6193      	str	r3, [r2, #24]
20000220:	4a15      	ldr	r2, [pc, #84]	; (20000278 <PortConfig+0xd8>)
20000222:	4b15      	ldr	r3, [pc, #84]	; (20000278 <PortConfig+0xd8>)
20000224:	685b      	ldr	r3, [r3, #4]
20000226:	f043 0307 	orr.w	r3, r3, #7
2000022a:	6053      	str	r3, [r2, #4]
2000022c:	4a12      	ldr	r2, [pc, #72]	; (20000278 <PortConfig+0xd8>)
2000022e:	4b12      	ldr	r3, [pc, #72]	; (20000278 <PortConfig+0xd8>)
20000230:	685b      	ldr	r3, [r3, #4]
20000232:	f023 0308 	bic.w	r3, r3, #8
20000236:	6053      	str	r3, [r2, #4]
20000238:	4a0f      	ldr	r2, [pc, #60]	; (20000278 <PortConfig+0xd8>)
2000023a:	4b0f      	ldr	r3, [pc, #60]	; (20000278 <PortConfig+0xd8>)
2000023c:	685b      	ldr	r3, [r3, #4]
2000023e:	f043 0301 	orr.w	r3, r3, #1
20000242:	6053      	str	r3, [r2, #4]
20000244:	4a0d      	ldr	r2, [pc, #52]	; (2000027c <PortConfig+0xdc>)
20000246:	4b0d      	ldr	r3, [pc, #52]	; (2000027c <PortConfig+0xdc>)
20000248:	68db      	ldr	r3, [r3, #12]
2000024a:	f023 0301 	bic.w	r3, r3, #1
2000024e:	60d3      	str	r3, [r2, #12]
20000250:	4a07      	ldr	r2, [pc, #28]	; (20000270 <PortConfig+0xd0>)
20000252:	4b07      	ldr	r3, [pc, #28]	; (20000270 <PortConfig+0xd0>)
20000254:	69db      	ldr	r3, [r3, #28]
20000256:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
2000025a:	61d3      	str	r3, [r2, #28]
2000025c:	4a08      	ldr	r2, [pc, #32]	; (20000280 <PortConfig+0xe0>)
2000025e:	4b08      	ldr	r3, [pc, #32]	; (20000280 <PortConfig+0xe0>)
20000260:	68db      	ldr	r3, [r3, #12]
20000262:	f023 0360 	bic.w	r3, r3, #96	; 0x60
20000266:	60d3      	str	r3, [r2, #12]
20000268:	bf00      	nop
2000026a:	46bd      	mov	sp, r7
2000026c:	bc80      	pop	{r7}
2000026e:	4770      	bx	lr
20000270:	40020000 	.word	0x40020000
20000274:	400b0000 	.word	0x400b0000
20000278:	400e8000 	.word	0x400e8000
2000027c:	400c8000 	.word	0x400c8000
20000280:	400c0000 	.word	0x400c0000

20000284 <ssi_init>:
20000284:	b480      	push	{r7}
20000286:	af00      	add	r7, sp, #0
20000288:	4a0c      	ldr	r2, [pc, #48]	; (200002bc <ssi_init+0x38>)
2000028a:	4b0c      	ldr	r3, [pc, #48]	; (200002bc <ssi_init+0x38>)
2000028c:	69db      	ldr	r3, [r3, #28]
2000028e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20000292:	61d3      	str	r3, [r2, #28]
20000294:	4b09      	ldr	r3, [pc, #36]	; (200002bc <ssi_init+0x38>)
20000296:	4a0a      	ldr	r2, [pc, #40]	; (200002c0 <ssi_init+0x3c>)
20000298:	62da      	str	r2, [r3, #44]	; 0x2c
2000029a:	4b0a      	ldr	r3, [pc, #40]	; (200002c4 <ssi_init+0x40>)
2000029c:	2200      	movs	r2, #0
2000029e:	605a      	str	r2, [r3, #4]
200002a0:	4b08      	ldr	r3, [pc, #32]	; (200002c4 <ssi_init+0x40>)
200002a2:	2210      	movs	r2, #16
200002a4:	611a      	str	r2, [r3, #16]
200002a6:	4b07      	ldr	r3, [pc, #28]	; (200002c4 <ssi_init+0x40>)
200002a8:	f240 221b 	movw	r2, #539	; 0x21b
200002ac:	601a      	str	r2, [r3, #0]
200002ae:	4b05      	ldr	r3, [pc, #20]	; (200002c4 <ssi_init+0x40>)
200002b0:	2202      	movs	r2, #2
200002b2:	605a      	str	r2, [r3, #4]
200002b4:	bf00      	nop
200002b6:	46bd      	mov	sp, r7
200002b8:	bc80      	pop	{r7}
200002ba:	4770      	bx	lr
200002bc:	40020000 	.word	0x40020000
200002c0:	0100000a 	.word	0x0100000a
200002c4:	40040000 	.word	0x40040000

200002c8 <b2g>:
200002c8:	b480      	push	{r7}
200002ca:	b083      	sub	sp, #12
200002cc:	af00      	add	r7, sp, #0
200002ce:	6078      	str	r0, [r7, #4]
200002d0:	687b      	ldr	r3, [r7, #4]
200002d2:	085a      	lsrs	r2, r3, #1
200002d4:	687b      	ldr	r3, [r7, #4]
200002d6:	4053      	eors	r3, r2
200002d8:	4618      	mov	r0, r3
200002da:	370c      	adds	r7, #12
200002dc:	46bd      	mov	sp, r7
200002de:	bc80      	pop	{r7}
200002e0:	4770      	bx	lr
200002e2:	bf00      	nop

200002e4 <g2b>:
200002e4:	b480      	push	{r7}
200002e6:	b085      	sub	sp, #20
200002e8:	af00      	add	r7, sp, #0
200002ea:	6078      	str	r0, [r7, #4]
200002ec:	2300      	movs	r3, #0
200002ee:	60fb      	str	r3, [r7, #12]
200002f0:	2300      	movs	r3, #0
200002f2:	60fb      	str	r3, [r7, #12]
200002f4:	e006      	b.n	20000304 <g2b+0x20>
200002f6:	68fa      	ldr	r2, [r7, #12]
200002f8:	687b      	ldr	r3, [r7, #4]
200002fa:	4053      	eors	r3, r2
200002fc:	60fb      	str	r3, [r7, #12]
200002fe:	687b      	ldr	r3, [r7, #4]
20000300:	085b      	lsrs	r3, r3, #1
20000302:	607b      	str	r3, [r7, #4]
20000304:	687b      	ldr	r3, [r7, #4]
20000306:	2b00      	cmp	r3, #0
20000308:	d1f5      	bne.n	200002f6 <g2b+0x12>
2000030a:	68fb      	ldr	r3, [r7, #12]
2000030c:	4618      	mov	r0, r3
2000030e:	3714      	adds	r7, #20
20000310:	46bd      	mov	sp, r7
20000312:	bc80      	pop	{r7}
20000314:	4770      	bx	lr
20000316:	bf00      	nop

20000318 <adc_init>:
20000318:	b480      	push	{r7}
2000031a:	af00      	add	r7, sp, #0
2000031c:	4a08      	ldr	r2, [pc, #32]	; (20000340 <adc_init+0x28>)
2000031e:	4b08      	ldr	r3, [pc, #32]	; (20000340 <adc_init+0x28>)
20000320:	69db      	ldr	r3, [r3, #28]
20000322:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000326:	61d3      	str	r3, [r2, #28]
20000328:	4b05      	ldr	r3, [pc, #20]	; (20000340 <adc_init+0x28>)
2000032a:	f242 0220 	movw	r2, #8224	; 0x2020
2000032e:	615a      	str	r2, [r3, #20]
20000330:	4b04      	ldr	r3, [pc, #16]	; (20000344 <adc_init+0x2c>)
20000332:	2265      	movs	r2, #101	; 0x65
20000334:	601a      	str	r2, [r3, #0]
20000336:	bf00      	nop
20000338:	46bd      	mov	sp, r7
2000033a:	bc80      	pop	{r7}
2000033c:	4770      	bx	lr
2000033e:	bf00      	nop
20000340:	40020000 	.word	0x40020000
20000344:	40088000 	.word	0x40088000

20000348 <dac_init>:
20000348:	b480      	push	{r7}
2000034a:	af00      	add	r7, sp, #0
2000034c:	4a07      	ldr	r2, [pc, #28]	; (2000036c <dac_init+0x24>)
2000034e:	4b07      	ldr	r3, [pc, #28]	; (2000036c <dac_init+0x24>)
20000350:	69db      	ldr	r3, [r3, #28]
20000352:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
20000356:	61d3      	str	r3, [r2, #28]
20000358:	4a05      	ldr	r2, [pc, #20]	; (20000370 <dac_init+0x28>)
2000035a:	4b05      	ldr	r3, [pc, #20]	; (20000370 <dac_init+0x28>)
2000035c:	681b      	ldr	r3, [r3, #0]
2000035e:	f043 0308 	orr.w	r3, r3, #8
20000362:	6013      	str	r3, [r2, #0]
20000364:	bf00      	nop
20000366:	46bd      	mov	sp, r7
20000368:	bc80      	pop	{r7}
2000036a:	4770      	bx	lr
2000036c:	40020000 	.word	0x40020000
20000370:	40090000 	.word	0x40090000

20000374 <ClkConfig>:
20000374:	b580      	push	{r7, lr}
20000376:	af00      	add	r7, sp, #0
20000378:	4a17      	ldr	r2, [pc, #92]	; (200003d8 <ClkConfig+0x64>)
2000037a:	4b17      	ldr	r3, [pc, #92]	; (200003d8 <ClkConfig+0x64>)
2000037c:	689b      	ldr	r3, [r3, #8]
2000037e:	f043 0301 	orr.w	r3, r3, #1
20000382:	6093      	str	r3, [r2, #8]
20000384:	bf00      	nop
20000386:	4b14      	ldr	r3, [pc, #80]	; (200003d8 <ClkConfig+0x64>)
20000388:	681b      	ldr	r3, [r3, #0]
2000038a:	f003 0304 	and.w	r3, r3, #4
2000038e:	2b00      	cmp	r3, #0
20000390:	d0f9      	beq.n	20000386 <ClkConfig+0x12>
20000392:	4b11      	ldr	r3, [pc, #68]	; (200003d8 <ClkConfig+0x64>)
20000394:	2206      	movs	r2, #6
20000396:	60da      	str	r2, [r3, #12]
20000398:	4b0f      	ldr	r3, [pc, #60]	; (200003d8 <ClkConfig+0x64>)
2000039a:	f640 1204 	movw	r2, #2308	; 0x904
2000039e:	605a      	str	r2, [r3, #4]
200003a0:	bf00      	nop
200003a2:	4b0d      	ldr	r3, [pc, #52]	; (200003d8 <ClkConfig+0x64>)
200003a4:	681b      	ldr	r3, [r3, #0]
200003a6:	f003 0302 	and.w	r3, r3, #2
200003aa:	2b00      	cmp	r3, #0
200003ac:	d0f9      	beq.n	200003a2 <ClkConfig+0x2e>
200003ae:	4a0a      	ldr	r2, [pc, #40]	; (200003d8 <ClkConfig+0x64>)
200003b0:	4b09      	ldr	r3, [pc, #36]	; (200003d8 <ClkConfig+0x64>)
200003b2:	68db      	ldr	r3, [r3, #12]
200003b4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200003b8:	60d3      	str	r3, [r2, #12]
200003ba:	4a08      	ldr	r2, [pc, #32]	; (200003dc <ClkConfig+0x68>)
200003bc:	4b07      	ldr	r3, [pc, #28]	; (200003dc <ClkConfig+0x68>)
200003be:	681b      	ldr	r3, [r3, #0]
200003c0:	f043 0320 	orr.w	r3, r3, #32
200003c4:	6013      	str	r3, [r2, #0]
200003c6:	4b06      	ldr	r3, [pc, #24]	; (200003e0 <ClkConfig+0x6c>)
200003c8:	2200      	movs	r2, #0
200003ca:	601a      	str	r2, [r3, #0]
200003cc:	4805      	ldr	r0, [pc, #20]	; (200003e4 <ClkConfig+0x70>)
200003ce:	f7ff fead 	bl	2000012c <SysTick_Config>
200003d2:	bf00      	nop
200003d4:	bd80      	pop	{r7, pc}
200003d6:	bf00      	nop
200003d8:	40020000 	.word	0x40020000
200003dc:	40018000 	.word	0x40018000
200003e0:	20000500 	.word	0x20000500
200003e4:	00013880 	.word	0x00013880

200003e8 <set_ram_vt>:
200003e8:	b480      	push	{r7}
200003ea:	b085      	sub	sp, #20
200003ec:	af00      	add	r7, sp, #0
200003ee:	2300      	movs	r3, #0
200003f0:	60fb      	str	r3, [r7, #12]
200003f2:	2300      	movs	r3, #0
200003f4:	607b      	str	r3, [r7, #4]
200003f6:	4b11      	ldr	r3, [pc, #68]	; (2000043c <set_ram_vt+0x54>)
200003f8:	60bb      	str	r3, [r7, #8]
200003fa:	2300      	movs	r3, #0
200003fc:	60fb      	str	r3, [r7, #12]
200003fe:	e00b      	b.n	20000418 <set_ram_vt+0x30>
20000400:	68bb      	ldr	r3, [r7, #8]
20000402:	1d1a      	adds	r2, r3, #4
20000404:	60ba      	str	r2, [r7, #8]
20000406:	68fa      	ldr	r2, [r7, #12]
20000408:	0092      	lsls	r2, r2, #2
2000040a:	6879      	ldr	r1, [r7, #4]
2000040c:	440a      	add	r2, r1
2000040e:	6812      	ldr	r2, [r2, #0]
20000410:	601a      	str	r2, [r3, #0]
20000412:	68fb      	ldr	r3, [r7, #12]
20000414:	3301      	adds	r3, #1
20000416:	60fb      	str	r3, [r7, #12]
20000418:	68fb      	ldr	r3, [r7, #12]
2000041a:	2b2f      	cmp	r3, #47	; 0x2f
2000041c:	d9f0      	bls.n	20000400 <set_ram_vt+0x18>
2000041e:	4b08      	ldr	r3, [pc, #32]	; (20000440 <set_ram_vt+0x58>)
20000420:	4a06      	ldr	r2, [pc, #24]	; (2000043c <set_ram_vt+0x54>)
20000422:	609a      	str	r2, [r3, #8]
20000424:	4b05      	ldr	r3, [pc, #20]	; (2000043c <set_ram_vt+0x54>)
20000426:	4a07      	ldr	r2, [pc, #28]	; (20000444 <set_ram_vt+0x5c>)
20000428:	63da      	str	r2, [r3, #60]	; 0x3c
2000042a:	4b04      	ldr	r3, [pc, #16]	; (2000043c <set_ram_vt+0x54>)
2000042c:	4a06      	ldr	r2, [pc, #24]	; (20000448 <set_ram_vt+0x60>)
2000042e:	679a      	str	r2, [r3, #120]	; 0x78
20000430:	bf00      	nop
20000432:	3714      	adds	r7, #20
20000434:	46bd      	mov	sp, r7
20000436:	bc80      	pop	{r7}
20000438:	4770      	bx	lr
2000043a:	bf00      	nop
2000043c:	20000600 	.word	0x20000600
20000440:	e000ed00 	.word	0xe000ed00
20000444:	2000044d 	.word	0x2000044d
20000448:	200004cd 	.word	0x200004cd

2000044c <SysTick_Handler>:
2000044c:	b480      	push	{r7}
2000044e:	af00      	add	r7, sp, #0
20000450:	4b04      	ldr	r3, [pc, #16]	; (20000464 <SysTick_Handler+0x18>)
20000452:	681b      	ldr	r3, [r3, #0]
20000454:	3301      	adds	r3, #1
20000456:	4a03      	ldr	r2, [pc, #12]	; (20000464 <SysTick_Handler+0x18>)
20000458:	6013      	str	r3, [r2, #0]
2000045a:	bf00      	nop
2000045c:	46bd      	mov	sp, r7
2000045e:	bc80      	pop	{r7}
20000460:	4770      	bx	lr
20000462:	bf00      	nop
20000464:	20000500 	.word	0x20000500

20000468 <TimerConfig>:
20000468:	b580      	push	{r7, lr}
2000046a:	af00      	add	r7, sp, #0
2000046c:	4a15      	ldr	r2, [pc, #84]	; (200004c4 <TimerConfig+0x5c>)
2000046e:	4b15      	ldr	r3, [pc, #84]	; (200004c4 <TimerConfig+0x5c>)
20000470:	69db      	ldr	r3, [r3, #28]
20000472:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
20000476:	61d3      	str	r3, [r2, #28]
20000478:	4a12      	ldr	r2, [pc, #72]	; (200004c4 <TimerConfig+0x5c>)
2000047a:	4b12      	ldr	r3, [pc, #72]	; (200004c4 <TimerConfig+0x5c>)
2000047c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000047e:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20000482:	6253      	str	r3, [r2, #36]	; 0x24
20000484:	4a0f      	ldr	r2, [pc, #60]	; (200004c4 <TimerConfig+0x5c>)
20000486:	4b0f      	ldr	r3, [pc, #60]	; (200004c4 <TimerConfig+0x5c>)
20000488:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000048a:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
2000048e:	6253      	str	r3, [r2, #36]	; 0x24
20000490:	4b0d      	ldr	r3, [pc, #52]	; (200004c8 <TimerConfig+0x60>)
20000492:	2200      	movs	r2, #0
20000494:	601a      	str	r2, [r3, #0]
20000496:	4b0c      	ldr	r3, [pc, #48]	; (200004c8 <TimerConfig+0x60>)
20000498:	224f      	movs	r2, #79	; 0x4f
2000049a:	605a      	str	r2, [r3, #4]
2000049c:	4b0a      	ldr	r3, [pc, #40]	; (200004c8 <TimerConfig+0x60>)
2000049e:	22c7      	movs	r2, #199	; 0xc7
200004a0:	609a      	str	r2, [r3, #8]
200004a2:	4a09      	ldr	r2, [pc, #36]	; (200004c8 <TimerConfig+0x60>)
200004a4:	4b08      	ldr	r3, [pc, #32]	; (200004c8 <TimerConfig+0x60>)
200004a6:	6d9b      	ldr	r3, [r3, #88]	; 0x58
200004a8:	f043 0302 	orr.w	r3, r3, #2
200004ac:	6593      	str	r3, [r2, #88]	; 0x58
200004ae:	4a06      	ldr	r2, [pc, #24]	; (200004c8 <TimerConfig+0x60>)
200004b0:	4b05      	ldr	r3, [pc, #20]	; (200004c8 <TimerConfig+0x60>)
200004b2:	68db      	ldr	r3, [r3, #12]
200004b4:	f043 0301 	orr.w	r3, r3, #1
200004b8:	60d3      	str	r3, [r2, #12]
200004ba:	200e      	movs	r0, #14
200004bc:	f7ff fdf4 	bl	200000a8 <NVIC_EnableIRQ>
200004c0:	bf00      	nop
200004c2:	bd80      	pop	{r7, pc}
200004c4:	40020000 	.word	0x40020000
200004c8:	40070000 	.word	0x40070000

200004cc <TIMER1_Handler>:
200004cc:	b480      	push	{r7}
200004ce:	af00      	add	r7, sp, #0
200004d0:	4b05      	ldr	r3, [pc, #20]	; (200004e8 <TIMER1_Handler+0x1c>)
200004d2:	2200      	movs	r2, #0
200004d4:	655a      	str	r2, [r3, #84]	; 0x54
200004d6:	4b05      	ldr	r3, [pc, #20]	; (200004ec <TIMER1_Handler+0x20>)
200004d8:	f240 5255 	movw	r2, #1365	; 0x555
200004dc:	609a      	str	r2, [r3, #8]
200004de:	bf00      	nop
200004e0:	46bd      	mov	sp, r7
200004e2:	bc80      	pop	{r7}
200004e4:	4770      	bx	lr
200004e6:	bf00      	nop
200004e8:	40070000 	.word	0x40070000
200004ec:	40040000 	.word	0x40040000
