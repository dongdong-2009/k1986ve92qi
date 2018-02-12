
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
20000012:	f000 f9f7 	bl	20000404 <set_ram_vt>
20000016:	f000 f9bb 	bl	20000390 <ClkConfig>
2000001a:	f000 f8af 	bl	2000017c <PortConfig>
2000001e:	f000 f93f 	bl	200002a0 <ssi_init>
20000022:	f000 f99f 	bl	20000364 <dac_init>
20000026:	f000 f985 	bl	20000334 <adc_init>
2000002a:	f000 fa31 	bl	20000490 <TimerConfig>
2000002e:	4b12      	ldr	r3, [pc, #72]	; (20000078 <main+0x78>)
20000030:	68db      	ldr	r3, [r3, #12]
20000032:	f003 0308 	and.w	r3, r3, #8
20000036:	2b00      	cmp	r3, #0
20000038:	d01b      	beq.n	20000072 <main+0x72>
2000003a:	4b0f      	ldr	r3, [pc, #60]	; (20000078 <main+0x78>)
2000003c:	689b      	ldr	r3, [r3, #8]
2000003e:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000042:	4618      	mov	r0, r3
20000044:	f000 f95c 	bl	20000300 <g2b>
20000048:	6038      	str	r0, [r7, #0]
2000004a:	683a      	ldr	r2, [r7, #0]
2000004c:	68fb      	ldr	r3, [r7, #12]
2000004e:	429a      	cmp	r2, r3
20000050:	d904      	bls.n	2000005c <main+0x5c>
20000052:	683a      	ldr	r2, [r7, #0]
20000054:	68fb      	ldr	r3, [r7, #12]
20000056:	1ad3      	subs	r3, r2, r3
20000058:	60bb      	str	r3, [r7, #8]
2000005a:	e005      	b.n	20000068 <main+0x68>
2000005c:	683a      	ldr	r2, [r7, #0]
2000005e:	68fb      	ldr	r3, [r7, #12]
20000060:	1ad3      	subs	r3, r2, r3
20000062:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
20000066:	60bb      	str	r3, [r7, #8]
20000068:	683b      	ldr	r3, [r7, #0]
2000006a:	60fb      	str	r3, [r7, #12]
2000006c:	4a03      	ldr	r2, [pc, #12]	; (2000007c <main+0x7c>)
2000006e:	683b      	ldr	r3, [r7, #0]
20000070:	6093      	str	r3, [r2, #8]
20000072:	4b03      	ldr	r3, [pc, #12]	; (20000080 <main+0x80>)
20000074:	6a1b      	ldr	r3, [r3, #32]
20000076:	e7da      	b.n	2000002e <main+0x2e>
20000078:	40040000 	.word	0x40040000
2000007c:	40090000 	.word	0x40090000
20000080:	40088000 	.word	0x40088000

20000084 <NVIC_EnableIRQ>:
20000084:	b480      	push	{r7}
20000086:	b083      	sub	sp, #12
20000088:	af00      	add	r7, sp, #0
2000008a:	4603      	mov	r3, r0
2000008c:	71fb      	strb	r3, [r7, #7]
2000008e:	4908      	ldr	r1, [pc, #32]	; (200000b0 <NVIC_EnableIRQ+0x2c>)
20000090:	f997 3007 	ldrsb.w	r3, [r7, #7]
20000094:	095b      	lsrs	r3, r3, #5
20000096:	79fa      	ldrb	r2, [r7, #7]
20000098:	f002 021f 	and.w	r2, r2, #31
2000009c:	2001      	movs	r0, #1
2000009e:	fa00 f202 	lsl.w	r2, r0, r2
200000a2:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
200000a6:	bf00      	nop
200000a8:	370c      	adds	r7, #12
200000aa:	46bd      	mov	sp, r7
200000ac:	bc80      	pop	{r7}
200000ae:	4770      	bx	lr
200000b0:	e000e100 	.word	0xe000e100

200000b4 <NVIC_SetPriority>:
200000b4:	b480      	push	{r7}
200000b6:	b083      	sub	sp, #12
200000b8:	af00      	add	r7, sp, #0
200000ba:	4603      	mov	r3, r0
200000bc:	6039      	str	r1, [r7, #0]
200000be:	71fb      	strb	r3, [r7, #7]
200000c0:	f997 3007 	ldrsb.w	r3, [r7, #7]
200000c4:	2b00      	cmp	r3, #0
200000c6:	da0b      	bge.n	200000e0 <NVIC_SetPriority+0x2c>
200000c8:	490d      	ldr	r1, [pc, #52]	; (20000100 <NVIC_SetPriority+0x4c>)
200000ca:	79fb      	ldrb	r3, [r7, #7]
200000cc:	f003 030f 	and.w	r3, r3, #15
200000d0:	3b04      	subs	r3, #4
200000d2:	683a      	ldr	r2, [r7, #0]
200000d4:	b2d2      	uxtb	r2, r2
200000d6:	0152      	lsls	r2, r2, #5
200000d8:	b2d2      	uxtb	r2, r2
200000da:	440b      	add	r3, r1
200000dc:	761a      	strb	r2, [r3, #24]
200000de:	e009      	b.n	200000f4 <NVIC_SetPriority+0x40>
200000e0:	4908      	ldr	r1, [pc, #32]	; (20000104 <NVIC_SetPriority+0x50>)
200000e2:	f997 3007 	ldrsb.w	r3, [r7, #7]
200000e6:	683a      	ldr	r2, [r7, #0]
200000e8:	b2d2      	uxtb	r2, r2
200000ea:	0152      	lsls	r2, r2, #5
200000ec:	b2d2      	uxtb	r2, r2
200000ee:	440b      	add	r3, r1
200000f0:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
200000f4:	bf00      	nop
200000f6:	370c      	adds	r7, #12
200000f8:	46bd      	mov	sp, r7
200000fa:	bc80      	pop	{r7}
200000fc:	4770      	bx	lr
200000fe:	bf00      	nop
20000100:	e000ed00 	.word	0xe000ed00
20000104:	e000e100 	.word	0xe000e100

20000108 <SysTick_Config>:
20000108:	b580      	push	{r7, lr}
2000010a:	b082      	sub	sp, #8
2000010c:	af00      	add	r7, sp, #0
2000010e:	6078      	str	r0, [r7, #4]
20000110:	687b      	ldr	r3, [r7, #4]
20000112:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
20000116:	d301      	bcc.n	2000011c <SysTick_Config+0x14>
20000118:	2301      	movs	r3, #1
2000011a:	e011      	b.n	20000140 <SysTick_Config+0x38>
2000011c:	4a0a      	ldr	r2, [pc, #40]	; (20000148 <SysTick_Config+0x40>)
2000011e:	687b      	ldr	r3, [r7, #4]
20000120:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
20000124:	3b01      	subs	r3, #1
20000126:	6053      	str	r3, [r2, #4]
20000128:	2107      	movs	r1, #7
2000012a:	f04f 30ff 	mov.w	r0, #4294967295
2000012e:	f7ff ffc1 	bl	200000b4 <NVIC_SetPriority>
20000132:	4b05      	ldr	r3, [pc, #20]	; (20000148 <SysTick_Config+0x40>)
20000134:	2200      	movs	r2, #0
20000136:	609a      	str	r2, [r3, #8]
20000138:	4b03      	ldr	r3, [pc, #12]	; (20000148 <SysTick_Config+0x40>)
2000013a:	2207      	movs	r2, #7
2000013c:	601a      	str	r2, [r3, #0]
2000013e:	2300      	movs	r3, #0
20000140:	4618      	mov	r0, r3
20000142:	3708      	adds	r7, #8
20000144:	46bd      	mov	sp, r7
20000146:	bd80      	pop	{r7, pc}
20000148:	e000e010 	.word	0xe000e010

2000014c <sleep>:
2000014c:	b480      	push	{r7}
2000014e:	b085      	sub	sp, #20
20000150:	af00      	add	r7, sp, #0
20000152:	6078      	str	r0, [r7, #4]
20000154:	4b08      	ldr	r3, [pc, #32]	; (20000178 <sleep+0x2c>)
20000156:	681a      	ldr	r2, [r3, #0]
20000158:	687b      	ldr	r3, [r7, #4]
2000015a:	4413      	add	r3, r2
2000015c:	60fb      	str	r3, [r7, #12]
2000015e:	bf00      	nop
20000160:	4b05      	ldr	r3, [pc, #20]	; (20000178 <sleep+0x2c>)
20000162:	681a      	ldr	r2, [r3, #0]
20000164:	68fb      	ldr	r3, [r7, #12]
20000166:	429a      	cmp	r2, r3
20000168:	d3fa      	bcc.n	20000160 <sleep+0x14>
2000016a:	bf00      	nop
2000016c:	4618      	mov	r0, r3
2000016e:	3714      	adds	r7, #20
20000170:	46bd      	mov	sp, r7
20000172:	bc80      	pop	{r7}
20000174:	4770      	bx	lr
20000176:	bf00      	nop
20000178:	20000600 	.word	0x20000600

2000017c <PortConfig>:
2000017c:	b480      	push	{r7}
2000017e:	af00      	add	r7, sp, #0
20000180:	4a41      	ldr	r2, [pc, #260]	; (20000288 <PortConfig+0x10c>)
20000182:	4b41      	ldr	r3, [pc, #260]	; (20000288 <PortConfig+0x10c>)
20000184:	69db      	ldr	r3, [r3, #28]
20000186:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
2000018a:	61d3      	str	r3, [r2, #28]
2000018c:	4b3f      	ldr	r3, [pc, #252]	; (2000028c <PortConfig+0x110>)
2000018e:	2200      	movs	r2, #0
20000190:	609a      	str	r2, [r3, #8]
20000192:	4b3e      	ldr	r3, [pc, #248]	; (2000028c <PortConfig+0x110>)
20000194:	2200      	movs	r2, #0
20000196:	601a      	str	r2, [r3, #0]
20000198:	4b3c      	ldr	r3, [pc, #240]	; (2000028c <PortConfig+0x110>)
2000019a:	22ff      	movs	r2, #255	; 0xff
2000019c:	605a      	str	r2, [r3, #4]
2000019e:	4b3b      	ldr	r3, [pc, #236]	; (2000028c <PortConfig+0x110>)
200001a0:	22ff      	movs	r2, #255	; 0xff
200001a2:	60da      	str	r2, [r3, #12]
200001a4:	4b39      	ldr	r3, [pc, #228]	; (2000028c <PortConfig+0x110>)
200001a6:	f64f 72ff 	movw	r2, #65535	; 0xffff
200001aa:	619a      	str	r2, [r3, #24]
200001ac:	4a36      	ldr	r2, [pc, #216]	; (20000288 <PortConfig+0x10c>)
200001ae:	4b36      	ldr	r3, [pc, #216]	; (20000288 <PortConfig+0x10c>)
200001b0:	69db      	ldr	r3, [r3, #28]
200001b2:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
200001b6:	61d3      	str	r3, [r2, #28]
200001b8:	4a35      	ldr	r2, [pc, #212]	; (20000290 <PortConfig+0x114>)
200001ba:	4b35      	ldr	r3, [pc, #212]	; (20000290 <PortConfig+0x114>)
200001bc:	689b      	ldr	r3, [r3, #8]
200001be:	f023 5370 	bic.w	r3, r3, #1006632960	; 0x3c000000
200001c2:	6093      	str	r3, [r2, #8]
200001c4:	4a32      	ldr	r2, [pc, #200]	; (20000290 <PortConfig+0x114>)
200001c6:	4b32      	ldr	r3, [pc, #200]	; (20000290 <PortConfig+0x114>)
200001c8:	689b      	ldr	r3, [r3, #8]
200001ca:	f043 5320 	orr.w	r3, r3, #671088640	; 0x28000000
200001ce:	6093      	str	r3, [r2, #8]
200001d0:	4a2f      	ldr	r2, [pc, #188]	; (20000290 <PortConfig+0x114>)
200001d2:	4b2f      	ldr	r3, [pc, #188]	; (20000290 <PortConfig+0x114>)
200001d4:	68db      	ldr	r3, [r3, #12]
200001d6:	f443 43c0 	orr.w	r3, r3, #24576	; 0x6000
200001da:	60d3      	str	r3, [r2, #12]
200001dc:	4a2c      	ldr	r2, [pc, #176]	; (20000290 <PortConfig+0x114>)
200001de:	4b2c      	ldr	r3, [pc, #176]	; (20000290 <PortConfig+0x114>)
200001e0:	699b      	ldr	r3, [r3, #24]
200001e2:	f043 5370 	orr.w	r3, r3, #1006632960	; 0x3c000000
200001e6:	6193      	str	r3, [r2, #24]
200001e8:	4a29      	ldr	r2, [pc, #164]	; (20000290 <PortConfig+0x114>)
200001ea:	4b29      	ldr	r3, [pc, #164]	; (20000290 <PortConfig+0x114>)
200001ec:	685b      	ldr	r3, [r3, #4]
200001ee:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
200001f2:	6053      	str	r3, [r2, #4]
200001f4:	4a26      	ldr	r2, [pc, #152]	; (20000290 <PortConfig+0x114>)
200001f6:	4b26      	ldr	r3, [pc, #152]	; (20000290 <PortConfig+0x114>)
200001f8:	685b      	ldr	r3, [r3, #4]
200001fa:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
200001fe:	6053      	str	r3, [r2, #4]
20000200:	4a21      	ldr	r2, [pc, #132]	; (20000288 <PortConfig+0x10c>)
20000202:	4b21      	ldr	r3, [pc, #132]	; (20000288 <PortConfig+0x10c>)
20000204:	69db      	ldr	r3, [r3, #28]
20000206:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
2000020a:	61d3      	str	r3, [r2, #28]
2000020c:	4b21      	ldr	r3, [pc, #132]	; (20000294 <PortConfig+0x118>)
2000020e:	2200      	movs	r2, #0
20000210:	609a      	str	r2, [r3, #8]
20000212:	4a20      	ldr	r2, [pc, #128]	; (20000294 <PortConfig+0x118>)
20000214:	4b1f      	ldr	r3, [pc, #124]	; (20000294 <PortConfig+0x118>)
20000216:	68db      	ldr	r3, [r3, #12]
20000218:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000021c:	f043 0303 	orr.w	r3, r3, #3
20000220:	60d3      	str	r3, [r2, #12]
20000222:	4a1c      	ldr	r2, [pc, #112]	; (20000294 <PortConfig+0x118>)
20000224:	4b1b      	ldr	r3, [pc, #108]	; (20000294 <PortConfig+0x118>)
20000226:	699b      	ldr	r3, [r3, #24]
20000228:	f043 4370 	orr.w	r3, r3, #4026531840	; 0xf0000000
2000022c:	f043 030f 	orr.w	r3, r3, #15
20000230:	6193      	str	r3, [r2, #24]
20000232:	4a18      	ldr	r2, [pc, #96]	; (20000294 <PortConfig+0x118>)
20000234:	4b17      	ldr	r3, [pc, #92]	; (20000294 <PortConfig+0x118>)
20000236:	685b      	ldr	r3, [r3, #4]
20000238:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
2000023c:	f043 0303 	orr.w	r3, r3, #3
20000240:	6053      	str	r3, [r2, #4]
20000242:	4a14      	ldr	r2, [pc, #80]	; (20000294 <PortConfig+0x118>)
20000244:	4b13      	ldr	r3, [pc, #76]	; (20000294 <PortConfig+0x118>)
20000246:	681b      	ldr	r3, [r3, #0]
20000248:	f023 0303 	bic.w	r3, r3, #3
2000024c:	6013      	str	r3, [r2, #0]
2000024e:	4a11      	ldr	r2, [pc, #68]	; (20000294 <PortConfig+0x118>)
20000250:	4b10      	ldr	r3, [pc, #64]	; (20000294 <PortConfig+0x118>)
20000252:	681b      	ldr	r3, [r3, #0]
20000254:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
20000258:	6013      	str	r3, [r2, #0]
2000025a:	4a0f      	ldr	r2, [pc, #60]	; (20000298 <PortConfig+0x11c>)
2000025c:	4b0e      	ldr	r3, [pc, #56]	; (20000298 <PortConfig+0x11c>)
2000025e:	68db      	ldr	r3, [r3, #12]
20000260:	f023 0301 	bic.w	r3, r3, #1
20000264:	60d3      	str	r3, [r2, #12]
20000266:	4a08      	ldr	r2, [pc, #32]	; (20000288 <PortConfig+0x10c>)
20000268:	4b07      	ldr	r3, [pc, #28]	; (20000288 <PortConfig+0x10c>)
2000026a:	69db      	ldr	r3, [r3, #28]
2000026c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20000270:	61d3      	str	r3, [r2, #28]
20000272:	4a0a      	ldr	r2, [pc, #40]	; (2000029c <PortConfig+0x120>)
20000274:	4b09      	ldr	r3, [pc, #36]	; (2000029c <PortConfig+0x120>)
20000276:	68db      	ldr	r3, [r3, #12]
20000278:	f023 0360 	bic.w	r3, r3, #96	; 0x60
2000027c:	60d3      	str	r3, [r2, #12]
2000027e:	bf00      	nop
20000280:	46bd      	mov	sp, r7
20000282:	bc80      	pop	{r7}
20000284:	4770      	bx	lr
20000286:	bf00      	nop
20000288:	40020000 	.word	0x40020000
2000028c:	400a8000 	.word	0x400a8000
20000290:	400b0000 	.word	0x400b0000
20000294:	400b8000 	.word	0x400b8000
20000298:	400c8000 	.word	0x400c8000
2000029c:	400c0000 	.word	0x400c0000

200002a0 <ssi_init>:
200002a0:	b480      	push	{r7}
200002a2:	af00      	add	r7, sp, #0
200002a4:	4a0c      	ldr	r2, [pc, #48]	; (200002d8 <ssi_init+0x38>)
200002a6:	4b0c      	ldr	r3, [pc, #48]	; (200002d8 <ssi_init+0x38>)
200002a8:	69db      	ldr	r3, [r3, #28]
200002aa:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200002ae:	61d3      	str	r3, [r2, #28]
200002b0:	4b09      	ldr	r3, [pc, #36]	; (200002d8 <ssi_init+0x38>)
200002b2:	4a0a      	ldr	r2, [pc, #40]	; (200002dc <ssi_init+0x3c>)
200002b4:	62da      	str	r2, [r3, #44]	; 0x2c
200002b6:	4b0a      	ldr	r3, [pc, #40]	; (200002e0 <ssi_init+0x40>)
200002b8:	2200      	movs	r2, #0
200002ba:	605a      	str	r2, [r3, #4]
200002bc:	4b08      	ldr	r3, [pc, #32]	; (200002e0 <ssi_init+0x40>)
200002be:	220a      	movs	r2, #10
200002c0:	611a      	str	r2, [r3, #16]
200002c2:	4b07      	ldr	r3, [pc, #28]	; (200002e0 <ssi_init+0x40>)
200002c4:	f240 221f 	movw	r2, #543	; 0x21f
200002c8:	601a      	str	r2, [r3, #0]
200002ca:	4b05      	ldr	r3, [pc, #20]	; (200002e0 <ssi_init+0x40>)
200002cc:	2202      	movs	r2, #2
200002ce:	605a      	str	r2, [r3, #4]
200002d0:	bf00      	nop
200002d2:	46bd      	mov	sp, r7
200002d4:	bc80      	pop	{r7}
200002d6:	4770      	bx	lr
200002d8:	40020000 	.word	0x40020000
200002dc:	0100000a 	.word	0x0100000a
200002e0:	40040000 	.word	0x40040000

200002e4 <b2g>:
200002e4:	b480      	push	{r7}
200002e6:	b083      	sub	sp, #12
200002e8:	af00      	add	r7, sp, #0
200002ea:	6078      	str	r0, [r7, #4]
200002ec:	687b      	ldr	r3, [r7, #4]
200002ee:	085a      	lsrs	r2, r3, #1
200002f0:	687b      	ldr	r3, [r7, #4]
200002f2:	4053      	eors	r3, r2
200002f4:	4618      	mov	r0, r3
200002f6:	370c      	adds	r7, #12
200002f8:	46bd      	mov	sp, r7
200002fa:	bc80      	pop	{r7}
200002fc:	4770      	bx	lr
200002fe:	bf00      	nop

20000300 <g2b>:
20000300:	b480      	push	{r7}
20000302:	b085      	sub	sp, #20
20000304:	af00      	add	r7, sp, #0
20000306:	6078      	str	r0, [r7, #4]
20000308:	2300      	movs	r3, #0
2000030a:	60fb      	str	r3, [r7, #12]
2000030c:	2300      	movs	r3, #0
2000030e:	60fb      	str	r3, [r7, #12]
20000310:	e006      	b.n	20000320 <g2b+0x20>
20000312:	68fa      	ldr	r2, [r7, #12]
20000314:	687b      	ldr	r3, [r7, #4]
20000316:	4053      	eors	r3, r2
20000318:	60fb      	str	r3, [r7, #12]
2000031a:	687b      	ldr	r3, [r7, #4]
2000031c:	085b      	lsrs	r3, r3, #1
2000031e:	607b      	str	r3, [r7, #4]
20000320:	687b      	ldr	r3, [r7, #4]
20000322:	2b00      	cmp	r3, #0
20000324:	d1f5      	bne.n	20000312 <g2b+0x12>
20000326:	68fb      	ldr	r3, [r7, #12]
20000328:	4618      	mov	r0, r3
2000032a:	3714      	adds	r7, #20
2000032c:	46bd      	mov	sp, r7
2000032e:	bc80      	pop	{r7}
20000330:	4770      	bx	lr
20000332:	bf00      	nop

20000334 <adc_init>:
20000334:	b480      	push	{r7}
20000336:	af00      	add	r7, sp, #0
20000338:	4a08      	ldr	r2, [pc, #32]	; (2000035c <adc_init+0x28>)
2000033a:	4b08      	ldr	r3, [pc, #32]	; (2000035c <adc_init+0x28>)
2000033c:	69db      	ldr	r3, [r3, #28]
2000033e:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
20000342:	61d3      	str	r3, [r2, #28]
20000344:	4b05      	ldr	r3, [pc, #20]	; (2000035c <adc_init+0x28>)
20000346:	f242 0220 	movw	r2, #8224	; 0x2020
2000034a:	615a      	str	r2, [r3, #20]
2000034c:	4b04      	ldr	r3, [pc, #16]	; (20000360 <adc_init+0x2c>)
2000034e:	2255      	movs	r2, #85	; 0x55
20000350:	601a      	str	r2, [r3, #0]
20000352:	bf00      	nop
20000354:	46bd      	mov	sp, r7
20000356:	bc80      	pop	{r7}
20000358:	4770      	bx	lr
2000035a:	bf00      	nop
2000035c:	40020000 	.word	0x40020000
20000360:	40088000 	.word	0x40088000

20000364 <dac_init>:
20000364:	b480      	push	{r7}
20000366:	af00      	add	r7, sp, #0
20000368:	4a07      	ldr	r2, [pc, #28]	; (20000388 <dac_init+0x24>)
2000036a:	4b07      	ldr	r3, [pc, #28]	; (20000388 <dac_init+0x24>)
2000036c:	69db      	ldr	r3, [r3, #28]
2000036e:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
20000372:	61d3      	str	r3, [r2, #28]
20000374:	4a05      	ldr	r2, [pc, #20]	; (2000038c <dac_init+0x28>)
20000376:	4b05      	ldr	r3, [pc, #20]	; (2000038c <dac_init+0x28>)
20000378:	681b      	ldr	r3, [r3, #0]
2000037a:	f043 0308 	orr.w	r3, r3, #8
2000037e:	6013      	str	r3, [r2, #0]
20000380:	bf00      	nop
20000382:	46bd      	mov	sp, r7
20000384:	bc80      	pop	{r7}
20000386:	4770      	bx	lr
20000388:	40020000 	.word	0x40020000
2000038c:	40090000 	.word	0x40090000

20000390 <ClkConfig>:
20000390:	b580      	push	{r7, lr}
20000392:	af00      	add	r7, sp, #0
20000394:	4a17      	ldr	r2, [pc, #92]	; (200003f4 <ClkConfig+0x64>)
20000396:	4b17      	ldr	r3, [pc, #92]	; (200003f4 <ClkConfig+0x64>)
20000398:	689b      	ldr	r3, [r3, #8]
2000039a:	f043 0301 	orr.w	r3, r3, #1
2000039e:	6093      	str	r3, [r2, #8]
200003a0:	bf00      	nop
200003a2:	4b14      	ldr	r3, [pc, #80]	; (200003f4 <ClkConfig+0x64>)
200003a4:	681b      	ldr	r3, [r3, #0]
200003a6:	f003 0304 	and.w	r3, r3, #4
200003aa:	2b00      	cmp	r3, #0
200003ac:	d0f9      	beq.n	200003a2 <ClkConfig+0x12>
200003ae:	4b11      	ldr	r3, [pc, #68]	; (200003f4 <ClkConfig+0x64>)
200003b0:	2206      	movs	r2, #6
200003b2:	60da      	str	r2, [r3, #12]
200003b4:	4b0f      	ldr	r3, [pc, #60]	; (200003f4 <ClkConfig+0x64>)
200003b6:	f640 1204 	movw	r2, #2308	; 0x904
200003ba:	605a      	str	r2, [r3, #4]
200003bc:	bf00      	nop
200003be:	4b0d      	ldr	r3, [pc, #52]	; (200003f4 <ClkConfig+0x64>)
200003c0:	681b      	ldr	r3, [r3, #0]
200003c2:	f003 0302 	and.w	r3, r3, #2
200003c6:	2b00      	cmp	r3, #0
200003c8:	d0f9      	beq.n	200003be <ClkConfig+0x2e>
200003ca:	4a0a      	ldr	r2, [pc, #40]	; (200003f4 <ClkConfig+0x64>)
200003cc:	4b09      	ldr	r3, [pc, #36]	; (200003f4 <ClkConfig+0x64>)
200003ce:	68db      	ldr	r3, [r3, #12]
200003d0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200003d4:	60d3      	str	r3, [r2, #12]
200003d6:	4a08      	ldr	r2, [pc, #32]	; (200003f8 <ClkConfig+0x68>)
200003d8:	4b07      	ldr	r3, [pc, #28]	; (200003f8 <ClkConfig+0x68>)
200003da:	681b      	ldr	r3, [r3, #0]
200003dc:	f043 0320 	orr.w	r3, r3, #32
200003e0:	6013      	str	r3, [r2, #0]
200003e2:	4b06      	ldr	r3, [pc, #24]	; (200003fc <ClkConfig+0x6c>)
200003e4:	2200      	movs	r2, #0
200003e6:	601a      	str	r2, [r3, #0]
200003e8:	4805      	ldr	r0, [pc, #20]	; (20000400 <ClkConfig+0x70>)
200003ea:	f7ff fe8d 	bl	20000108 <SysTick_Config>
200003ee:	bf00      	nop
200003f0:	bd80      	pop	{r7, pc}
200003f2:	bf00      	nop
200003f4:	40020000 	.word	0x40020000
200003f8:	40018000 	.word	0x40018000
200003fc:	20000600 	.word	0x20000600
20000400:	00013880 	.word	0x00013880

20000404 <set_ram_vt>:
20000404:	b480      	push	{r7}
20000406:	b085      	sub	sp, #20
20000408:	af00      	add	r7, sp, #0
2000040a:	2300      	movs	r3, #0
2000040c:	60fb      	str	r3, [r7, #12]
2000040e:	2300      	movs	r3, #0
20000410:	607b      	str	r3, [r7, #4]
20000412:	4b13      	ldr	r3, [pc, #76]	; (20000460 <set_ram_vt+0x5c>)
20000414:	60bb      	str	r3, [r7, #8]
20000416:	2300      	movs	r3, #0
20000418:	60fb      	str	r3, [r7, #12]
2000041a:	e00b      	b.n	20000434 <set_ram_vt+0x30>
2000041c:	68bb      	ldr	r3, [r7, #8]
2000041e:	1d1a      	adds	r2, r3, #4
20000420:	60ba      	str	r2, [r7, #8]
20000422:	68fa      	ldr	r2, [r7, #12]
20000424:	0092      	lsls	r2, r2, #2
20000426:	6879      	ldr	r1, [r7, #4]
20000428:	440a      	add	r2, r1
2000042a:	6812      	ldr	r2, [r2, #0]
2000042c:	601a      	str	r2, [r3, #0]
2000042e:	68fb      	ldr	r3, [r7, #12]
20000430:	3301      	adds	r3, #1
20000432:	60fb      	str	r3, [r7, #12]
20000434:	68fb      	ldr	r3, [r7, #12]
20000436:	2b2f      	cmp	r3, #47	; 0x2f
20000438:	d9f0      	bls.n	2000041c <set_ram_vt+0x18>
2000043a:	4b0a      	ldr	r3, [pc, #40]	; (20000464 <set_ram_vt+0x60>)
2000043c:	4a08      	ldr	r2, [pc, #32]	; (20000460 <set_ram_vt+0x5c>)
2000043e:	609a      	str	r2, [r3, #8]
20000440:	4b07      	ldr	r3, [pc, #28]	; (20000460 <set_ram_vt+0x5c>)
20000442:	4a09      	ldr	r2, [pc, #36]	; (20000468 <set_ram_vt+0x64>)
20000444:	63da      	str	r2, [r3, #60]	; 0x3c
20000446:	4b06      	ldr	r3, [pc, #24]	; (20000460 <set_ram_vt+0x5c>)
20000448:	4a08      	ldr	r2, [pc, #32]	; (2000046c <set_ram_vt+0x68>)
2000044a:	679a      	str	r2, [r3, #120]	; 0x78
2000044c:	4b04      	ldr	r3, [pc, #16]	; (20000460 <set_ram_vt+0x5c>)
2000044e:	4a08      	ldr	r2, [pc, #32]	; (20000470 <set_ram_vt+0x6c>)
20000450:	f8c3 20bc 	str.w	r2, [r3, #188]	; 0xbc
20000454:	bf00      	nop
20000456:	3714      	adds	r7, #20
20000458:	46bd      	mov	sp, r7
2000045a:	bc80      	pop	{r7}
2000045c:	4770      	bx	lr
2000045e:	bf00      	nop
20000460:	20000700 	.word	0x20000700
20000464:	e000ed00 	.word	0xe000ed00
20000468:	20000475 	.word	0x20000475
2000046c:	200004f5 	.word	0x200004f5
20000470:	20000539 	.word	0x20000539

20000474 <SysTick_Handler>:
20000474:	b480      	push	{r7}
20000476:	af00      	add	r7, sp, #0
20000478:	4b04      	ldr	r3, [pc, #16]	; (2000048c <SysTick_Handler+0x18>)
2000047a:	681b      	ldr	r3, [r3, #0]
2000047c:	3301      	adds	r3, #1
2000047e:	4a03      	ldr	r2, [pc, #12]	; (2000048c <SysTick_Handler+0x18>)
20000480:	6013      	str	r3, [r2, #0]
20000482:	bf00      	nop
20000484:	46bd      	mov	sp, r7
20000486:	bc80      	pop	{r7}
20000488:	4770      	bx	lr
2000048a:	bf00      	nop
2000048c:	20000600 	.word	0x20000600

20000490 <TimerConfig>:
20000490:	b580      	push	{r7, lr}
20000492:	af00      	add	r7, sp, #0
20000494:	4a15      	ldr	r2, [pc, #84]	; (200004ec <TimerConfig+0x5c>)
20000496:	4b15      	ldr	r3, [pc, #84]	; (200004ec <TimerConfig+0x5c>)
20000498:	69db      	ldr	r3, [r3, #28]
2000049a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
2000049e:	61d3      	str	r3, [r2, #28]
200004a0:	4a12      	ldr	r2, [pc, #72]	; (200004ec <TimerConfig+0x5c>)
200004a2:	4b12      	ldr	r3, [pc, #72]	; (200004ec <TimerConfig+0x5c>)
200004a4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200004a6:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
200004aa:	6253      	str	r3, [r2, #36]	; 0x24
200004ac:	4a0f      	ldr	r2, [pc, #60]	; (200004ec <TimerConfig+0x5c>)
200004ae:	4b0f      	ldr	r3, [pc, #60]	; (200004ec <TimerConfig+0x5c>)
200004b0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
200004b2:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
200004b6:	6253      	str	r3, [r2, #36]	; 0x24
200004b8:	4b0d      	ldr	r3, [pc, #52]	; (200004f0 <TimerConfig+0x60>)
200004ba:	2200      	movs	r2, #0
200004bc:	601a      	str	r2, [r3, #0]
200004be:	4b0c      	ldr	r3, [pc, #48]	; (200004f0 <TimerConfig+0x60>)
200004c0:	224f      	movs	r2, #79	; 0x4f
200004c2:	605a      	str	r2, [r3, #4]
200004c4:	4b0a      	ldr	r3, [pc, #40]	; (200004f0 <TimerConfig+0x60>)
200004c6:	22c7      	movs	r2, #199	; 0xc7
200004c8:	609a      	str	r2, [r3, #8]
200004ca:	4a09      	ldr	r2, [pc, #36]	; (200004f0 <TimerConfig+0x60>)
200004cc:	4b08      	ldr	r3, [pc, #32]	; (200004f0 <TimerConfig+0x60>)
200004ce:	6d9b      	ldr	r3, [r3, #88]	; 0x58
200004d0:	f043 0302 	orr.w	r3, r3, #2
200004d4:	6593      	str	r3, [r2, #88]	; 0x58
200004d6:	4a06      	ldr	r2, [pc, #24]	; (200004f0 <TimerConfig+0x60>)
200004d8:	4b05      	ldr	r3, [pc, #20]	; (200004f0 <TimerConfig+0x60>)
200004da:	68db      	ldr	r3, [r3, #12]
200004dc:	f043 0301 	orr.w	r3, r3, #1
200004e0:	60d3      	str	r3, [r2, #12]
200004e2:	200e      	movs	r0, #14
200004e4:	f7ff fdce 	bl	20000084 <NVIC_EnableIRQ>
200004e8:	bf00      	nop
200004ea:	bd80      	pop	{r7, pc}
200004ec:	40020000 	.word	0x40020000
200004f0:	40070000 	.word	0x40070000

200004f4 <TIMER1_Handler>:
200004f4:	b480      	push	{r7}
200004f6:	af00      	add	r7, sp, #0
200004f8:	4a0b      	ldr	r2, [pc, #44]	; (20000528 <TIMER1_Handler+0x34>)
200004fa:	4b0b      	ldr	r3, [pc, #44]	; (20000528 <TIMER1_Handler+0x34>)
200004fc:	681b      	ldr	r3, [r3, #0]
200004fe:	f083 0301 	eor.w	r3, r3, #1
20000502:	6013      	str	r3, [r2, #0]
20000504:	4b09      	ldr	r3, [pc, #36]	; (2000052c <TIMER1_Handler+0x38>)
20000506:	2200      	movs	r2, #0
20000508:	655a      	str	r2, [r3, #84]	; 0x54
2000050a:	4b09      	ldr	r3, [pc, #36]	; (20000530 <TIMER1_Handler+0x3c>)
2000050c:	f240 5255 	movw	r2, #1365	; 0x555
20000510:	609a      	str	r2, [r3, #8]
20000512:	4a08      	ldr	r2, [pc, #32]	; (20000534 <TIMER1_Handler+0x40>)
20000514:	4b07      	ldr	r3, [pc, #28]	; (20000534 <TIMER1_Handler+0x40>)
20000516:	681b      	ldr	r3, [r3, #0]
20000518:	f043 0302 	orr.w	r3, r3, #2
2000051c:	6013      	str	r3, [r2, #0]
2000051e:	bf00      	nop
20000520:	46bd      	mov	sp, r7
20000522:	bc80      	pop	{r7}
20000524:	4770      	bx	lr
20000526:	bf00      	nop
20000528:	400a8000 	.word	0x400a8000
2000052c:	40070000 	.word	0x40070000
20000530:	40040000 	.word	0x40040000
20000534:	40088000 	.word	0x40088000

20000538 <EXTINT4_Handler>:
20000538:	b480      	push	{r7}
2000053a:	af00      	add	r7, sp, #0
2000053c:	4a04      	ldr	r2, [pc, #16]	; (20000550 <EXTINT4_Handler+0x18>)
2000053e:	4b04      	ldr	r3, [pc, #16]	; (20000550 <EXTINT4_Handler+0x18>)
20000540:	681b      	ldr	r3, [r3, #0]
20000542:	f043 0301 	orr.w	r3, r3, #1
20000546:	6013      	str	r3, [r2, #0]
20000548:	bf00      	nop
2000054a:	46bd      	mov	sp, r7
2000054c:	bc80      	pop	{r7}
2000054e:	4770      	bx	lr
20000550:	400a8000 	.word	0x400a8000

20000554 <get_phase>:
20000554:	b580      	push	{r7, lr}
20000556:	af00      	add	r7, sp, #0
20000558:	4b0a      	ldr	r3, [pc, #40]	; (20000584 <get_phase+0x30>)
2000055a:	f240 5255 	movw	r2, #1365	; 0x555
2000055e:	609a      	str	r2, [r3, #8]
20000560:	bf00      	nop
20000562:	4b08      	ldr	r3, [pc, #32]	; (20000584 <get_phase+0x30>)
20000564:	68db      	ldr	r3, [r3, #12]
20000566:	f003 0304 	and.w	r3, r3, #4
2000056a:	2b00      	cmp	r3, #0
2000056c:	d0f9      	beq.n	20000562 <get_phase+0xe>
2000056e:	4b05      	ldr	r3, [pc, #20]	; (20000584 <get_phase+0x30>)
20000570:	689b      	ldr	r3, [r3, #8]
20000572:	f3c3 030b 	ubfx	r3, r3, #0, #12
20000576:	4618      	mov	r0, r3
20000578:	f7ff fec2 	bl	20000300 <g2b>
2000057c:	4603      	mov	r3, r0
2000057e:	4618      	mov	r0, r3
20000580:	bd80      	pop	{r7, pc}
20000582:	bf00      	nop
20000584:	40040000 	.word	0x40040000
