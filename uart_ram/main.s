
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b590      	push	{r4, r7, lr}
20000002:	b091      	sub	sp, #68	; 0x44
20000004:	af00      	add	r7, sp, #0
20000006:	2300      	movs	r3, #0
20000008:	637b      	str	r3, [r7, #52]	; 0x34
2000000a:	2300      	movs	r3, #0
2000000c:	633b      	str	r3, [r7, #48]	; 0x30
2000000e:	2300      	movs	r3, #0
20000010:	63fb      	str	r3, [r7, #60]	; 0x3c
20000012:	4b20      	ldr	r3, [pc, #128]	; (20000094 <main+0x94>)
20000014:	463c      	mov	r4, r7
20000016:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
20000018:	c407      	stmia	r4!, {r0, r1, r2}
2000001a:	8023      	strh	r3, [r4, #0]
2000001c:	f000 f8ba 	bl	20000194 <set_ram_vt>
20000020:	f000 f882 	bl	20000128 <ClkConfig>
20000024:	f000 f852 	bl	200000cc <PortConfig>
20000028:	f000 f8fe 	bl	20000228 <TimerConfig>
2000002c:	f000 f956 	bl	200002dc <uart_init>
20000030:	bf00      	nop
20000032:	4b19      	ldr	r3, [pc, #100]	; (20000098 <main+0x98>)
20000034:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000036:	f003 0340 	and.w	r3, r3, #64	; 0x40
2000003a:	2b00      	cmp	r3, #0
2000003c:	d0f9      	beq.n	20000032 <main+0x32>
2000003e:	2300      	movs	r3, #0
20000040:	63fb      	str	r3, [r7, #60]	; 0x3c
20000042:	e00d      	b.n	20000060 <main+0x60>
20000044:	4b14      	ldr	r3, [pc, #80]	; (20000098 <main+0x98>)
20000046:	681b      	ldr	r3, [r3, #0]
20000048:	b259      	sxtb	r1, r3
2000004a:	f107 0210 	add.w	r2, r7, #16
2000004e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
20000050:	4413      	add	r3, r2
20000052:	460a      	mov	r2, r1
20000054:	701a      	strb	r2, [r3, #0]
20000056:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
20000058:	3301      	adds	r3, #1
2000005a:	f003 0307 	and.w	r3, r3, #7
2000005e:	63fb      	str	r3, [r7, #60]	; 0x3c
20000060:	4b0d      	ldr	r3, [pc, #52]	; (20000098 <main+0x98>)
20000062:	699b      	ldr	r3, [r3, #24]
20000064:	f003 0310 	and.w	r3, r3, #16
20000068:	2b00      	cmp	r3, #0
2000006a:	d0eb      	beq.n	20000044 <main+0x44>
2000006c:	f997 3010 	ldrsb.w	r3, [r7, #16]
20000070:	2b71      	cmp	r3, #113	; 0x71
20000072:	d1dd      	bne.n	20000030 <main+0x30>
20000074:	463b      	mov	r3, r7
20000076:	63bb      	str	r3, [r7, #56]	; 0x38
20000078:	e006      	b.n	20000088 <main+0x88>
2000007a:	4907      	ldr	r1, [pc, #28]	; (20000098 <main+0x98>)
2000007c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
2000007e:	1c5a      	adds	r2, r3, #1
20000080:	63ba      	str	r2, [r7, #56]	; 0x38
20000082:	f993 3000 	ldrsb.w	r3, [r3]
20000086:	600b      	str	r3, [r1, #0]
20000088:	6bbb      	ldr	r3, [r7, #56]	; 0x38
2000008a:	f993 3000 	ldrsb.w	r3, [r3]
2000008e:	2b00      	cmp	r3, #0
20000090:	d1f3      	bne.n	2000007a <main+0x7a>
20000092:	e7cd      	b.n	20000030 <main+0x30>
20000094:	20000398 	.word	0x20000398
20000098:	40038000 	.word	0x40038000

2000009c <sleep>:
2000009c:	b480      	push	{r7}
2000009e:	b085      	sub	sp, #20
200000a0:	af00      	add	r7, sp, #0
200000a2:	6078      	str	r0, [r7, #4]
200000a4:	4b08      	ldr	r3, [pc, #32]	; (200000c8 <sleep+0x2c>)
200000a6:	681a      	ldr	r2, [r3, #0]
200000a8:	687b      	ldr	r3, [r7, #4]
200000aa:	4413      	add	r3, r2
200000ac:	60fb      	str	r3, [r7, #12]
200000ae:	bf00      	nop
200000b0:	4b05      	ldr	r3, [pc, #20]	; (200000c8 <sleep+0x2c>)
200000b2:	681a      	ldr	r2, [r3, #0]
200000b4:	68fb      	ldr	r3, [r7, #12]
200000b6:	429a      	cmp	r2, r3
200000b8:	d3fa      	bcc.n	200000b0 <sleep+0x14>
200000ba:	bf00      	nop
200000bc:	4618      	mov	r0, r3
200000be:	3714      	adds	r7, #20
200000c0:	46bd      	mov	sp, r7
200000c2:	bc80      	pop	{r7}
200000c4:	4770      	bx	lr
200000c6:	bf00      	nop
200000c8:	20000400 	.word	0x20000400

200000cc <PortConfig>:
200000cc:	b480      	push	{r7}
200000ce:	af00      	add	r7, sp, #0
200000d0:	4a13      	ldr	r2, [pc, #76]	; (20000120 <PortConfig+0x54>)
200000d2:	4b13      	ldr	r3, [pc, #76]	; (20000120 <PortConfig+0x54>)
200000d4:	69db      	ldr	r3, [r3, #28]
200000d6:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
200000da:	61d3      	str	r3, [r2, #28]
200000dc:	4a11      	ldr	r2, [pc, #68]	; (20000124 <PortConfig+0x58>)
200000de:	4b11      	ldr	r3, [pc, #68]	; (20000124 <PortConfig+0x58>)
200000e0:	689b      	ldr	r3, [r3, #8]
200000e2:	f023 030f 	bic.w	r3, r3, #15
200000e6:	6093      	str	r3, [r2, #8]
200000e8:	4a0e      	ldr	r2, [pc, #56]	; (20000124 <PortConfig+0x58>)
200000ea:	4b0e      	ldr	r3, [pc, #56]	; (20000124 <PortConfig+0x58>)
200000ec:	689b      	ldr	r3, [r3, #8]
200000ee:	f043 030f 	orr.w	r3, r3, #15
200000f2:	6093      	str	r3, [r2, #8]
200000f4:	4a0b      	ldr	r2, [pc, #44]	; (20000124 <PortConfig+0x58>)
200000f6:	4b0b      	ldr	r3, [pc, #44]	; (20000124 <PortConfig+0x58>)
200000f8:	68db      	ldr	r3, [r3, #12]
200000fa:	f043 0303 	orr.w	r3, r3, #3
200000fe:	60d3      	str	r3, [r2, #12]
20000100:	4a08      	ldr	r2, [pc, #32]	; (20000124 <PortConfig+0x58>)
20000102:	4b08      	ldr	r3, [pc, #32]	; (20000124 <PortConfig+0x58>)
20000104:	699b      	ldr	r3, [r3, #24]
20000106:	f043 030f 	orr.w	r3, r3, #15
2000010a:	6193      	str	r3, [r2, #24]
2000010c:	4a05      	ldr	r2, [pc, #20]	; (20000124 <PortConfig+0x58>)
2000010e:	4b05      	ldr	r3, [pc, #20]	; (20000124 <PortConfig+0x58>)
20000110:	685b      	ldr	r3, [r3, #4]
20000112:	f043 0302 	orr.w	r3, r3, #2
20000116:	6053      	str	r3, [r2, #4]
20000118:	bf00      	nop
2000011a:	46bd      	mov	sp, r7
2000011c:	bc80      	pop	{r7}
2000011e:	4770      	bx	lr
20000120:	40020000 	.word	0x40020000
20000124:	400e8000 	.word	0x400e8000

20000128 <ClkConfig>:
20000128:	b480      	push	{r7}
2000012a:	af00      	add	r7, sp, #0
2000012c:	4a16      	ldr	r2, [pc, #88]	; (20000188 <ClkConfig+0x60>)
2000012e:	4b16      	ldr	r3, [pc, #88]	; (20000188 <ClkConfig+0x60>)
20000130:	689b      	ldr	r3, [r3, #8]
20000132:	f043 0301 	orr.w	r3, r3, #1
20000136:	6093      	str	r3, [r2, #8]
20000138:	bf00      	nop
2000013a:	4b13      	ldr	r3, [pc, #76]	; (20000188 <ClkConfig+0x60>)
2000013c:	681b      	ldr	r3, [r3, #0]
2000013e:	f003 0304 	and.w	r3, r3, #4
20000142:	2b00      	cmp	r3, #0
20000144:	d0f9      	beq.n	2000013a <ClkConfig+0x12>
20000146:	4b10      	ldr	r3, [pc, #64]	; (20000188 <ClkConfig+0x60>)
20000148:	2206      	movs	r2, #6
2000014a:	60da      	str	r2, [r3, #12]
2000014c:	4b0e      	ldr	r3, [pc, #56]	; (20000188 <ClkConfig+0x60>)
2000014e:	f640 1204 	movw	r2, #2308	; 0x904
20000152:	605a      	str	r2, [r3, #4]
20000154:	bf00      	nop
20000156:	4b0c      	ldr	r3, [pc, #48]	; (20000188 <ClkConfig+0x60>)
20000158:	681b      	ldr	r3, [r3, #0]
2000015a:	f003 0302 	and.w	r3, r3, #2
2000015e:	2b00      	cmp	r3, #0
20000160:	d0f9      	beq.n	20000156 <ClkConfig+0x2e>
20000162:	4a09      	ldr	r2, [pc, #36]	; (20000188 <ClkConfig+0x60>)
20000164:	4b08      	ldr	r3, [pc, #32]	; (20000188 <ClkConfig+0x60>)
20000166:	68db      	ldr	r3, [r3, #12]
20000168:	f443 7380 	orr.w	r3, r3, #256	; 0x100
2000016c:	60d3      	str	r3, [r2, #12]
2000016e:	4a07      	ldr	r2, [pc, #28]	; (2000018c <ClkConfig+0x64>)
20000170:	4b06      	ldr	r3, [pc, #24]	; (2000018c <ClkConfig+0x64>)
20000172:	681b      	ldr	r3, [r3, #0]
20000174:	f043 0320 	orr.w	r3, r3, #32
20000178:	6013      	str	r3, [r2, #0]
2000017a:	4b05      	ldr	r3, [pc, #20]	; (20000190 <ClkConfig+0x68>)
2000017c:	2200      	movs	r2, #0
2000017e:	601a      	str	r2, [r3, #0]
20000180:	bf00      	nop
20000182:	46bd      	mov	sp, r7
20000184:	bc80      	pop	{r7}
20000186:	4770      	bx	lr
20000188:	40020000 	.word	0x40020000
2000018c:	40018000 	.word	0x40018000
20000190:	20000400 	.word	0x20000400

20000194 <set_ram_vt>:
20000194:	b480      	push	{r7}
20000196:	b085      	sub	sp, #20
20000198:	af00      	add	r7, sp, #0
2000019a:	2300      	movs	r3, #0
2000019c:	60fb      	str	r3, [r7, #12]
2000019e:	2300      	movs	r3, #0
200001a0:	607b      	str	r3, [r7, #4]
200001a2:	4b14      	ldr	r3, [pc, #80]	; (200001f4 <set_ram_vt+0x60>)
200001a4:	60bb      	str	r3, [r7, #8]
200001a6:	2300      	movs	r3, #0
200001a8:	60fb      	str	r3, [r7, #12]
200001aa:	e00b      	b.n	200001c4 <set_ram_vt+0x30>
200001ac:	68bb      	ldr	r3, [r7, #8]
200001ae:	1d1a      	adds	r2, r3, #4
200001b0:	60ba      	str	r2, [r7, #8]
200001b2:	68fa      	ldr	r2, [r7, #12]
200001b4:	0092      	lsls	r2, r2, #2
200001b6:	6879      	ldr	r1, [r7, #4]
200001b8:	440a      	add	r2, r1
200001ba:	6812      	ldr	r2, [r2, #0]
200001bc:	601a      	str	r2, [r3, #0]
200001be:	68fb      	ldr	r3, [r7, #12]
200001c0:	3301      	adds	r3, #1
200001c2:	60fb      	str	r3, [r7, #12]
200001c4:	68fb      	ldr	r3, [r7, #12]
200001c6:	2b2f      	cmp	r3, #47	; 0x2f
200001c8:	d9f0      	bls.n	200001ac <set_ram_vt+0x18>
200001ca:	4b0b      	ldr	r3, [pc, #44]	; (200001f8 <set_ram_vt+0x64>)
200001cc:	4a09      	ldr	r2, [pc, #36]	; (200001f4 <set_ram_vt+0x60>)
200001ce:	609a      	str	r2, [r3, #8]
200001d0:	4b08      	ldr	r3, [pc, #32]	; (200001f4 <set_ram_vt+0x60>)
200001d2:	4a0a      	ldr	r2, [pc, #40]	; (200001fc <set_ram_vt+0x68>)
200001d4:	63da      	str	r2, [r3, #60]	; 0x3c
200001d6:	4b07      	ldr	r3, [pc, #28]	; (200001f4 <set_ram_vt+0x60>)
200001d8:	4a09      	ldr	r2, [pc, #36]	; (20000200 <set_ram_vt+0x6c>)
200001da:	679a      	str	r2, [r3, #120]	; 0x78
200001dc:	4b05      	ldr	r3, [pc, #20]	; (200001f4 <set_ram_vt+0x60>)
200001de:	4a09      	ldr	r2, [pc, #36]	; (20000204 <set_ram_vt+0x70>)
200001e0:	f8c3 20bc 	str.w	r2, [r3, #188]	; 0xbc
200001e4:	4b03      	ldr	r3, [pc, #12]	; (200001f4 <set_ram_vt+0x60>)
200001e6:	4a08      	ldr	r2, [pc, #32]	; (20000208 <set_ram_vt+0x74>)
200001e8:	65da      	str	r2, [r3, #92]	; 0x5c
200001ea:	bf00      	nop
200001ec:	3714      	adds	r7, #20
200001ee:	46bd      	mov	sp, r7
200001f0:	bc80      	pop	{r7}
200001f2:	4770      	bx	lr
200001f4:	20000500 	.word	0x20000500
200001f8:	e000ed00 	.word	0xe000ed00
200001fc:	2000020d 	.word	0x2000020d
20000200:	2000028d 	.word	0x2000028d
20000204:	200002c1 	.word	0x200002c1
20000208:	20000361 	.word	0x20000361

2000020c <SysTick_Handler>:
2000020c:	b480      	push	{r7}
2000020e:	af00      	add	r7, sp, #0
20000210:	4b04      	ldr	r3, [pc, #16]	; (20000224 <SysTick_Handler+0x18>)
20000212:	681b      	ldr	r3, [r3, #0]
20000214:	3301      	adds	r3, #1
20000216:	4a03      	ldr	r2, [pc, #12]	; (20000224 <SysTick_Handler+0x18>)
20000218:	6013      	str	r3, [r2, #0]
2000021a:	bf00      	nop
2000021c:	46bd      	mov	sp, r7
2000021e:	bc80      	pop	{r7}
20000220:	4770      	bx	lr
20000222:	bf00      	nop
20000224:	20000400 	.word	0x20000400

20000228 <TimerConfig>:
20000228:	b480      	push	{r7}
2000022a:	af00      	add	r7, sp, #0
2000022c:	4a15      	ldr	r2, [pc, #84]	; (20000284 <TimerConfig+0x5c>)
2000022e:	4b15      	ldr	r3, [pc, #84]	; (20000284 <TimerConfig+0x5c>)
20000230:	69db      	ldr	r3, [r3, #28]
20000232:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
20000236:	61d3      	str	r3, [r2, #28]
20000238:	4a12      	ldr	r2, [pc, #72]	; (20000284 <TimerConfig+0x5c>)
2000023a:	4b12      	ldr	r3, [pc, #72]	; (20000284 <TimerConfig+0x5c>)
2000023c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000023e:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
20000242:	6253      	str	r3, [r2, #36]	; 0x24
20000244:	4a0f      	ldr	r2, [pc, #60]	; (20000284 <TimerConfig+0x5c>)
20000246:	4b0f      	ldr	r3, [pc, #60]	; (20000284 <TimerConfig+0x5c>)
20000248:	6a5b      	ldr	r3, [r3, #36]	; 0x24
2000024a:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
2000024e:	6253      	str	r3, [r2, #36]	; 0x24
20000250:	4b0d      	ldr	r3, [pc, #52]	; (20000288 <TimerConfig+0x60>)
20000252:	2200      	movs	r2, #0
20000254:	601a      	str	r2, [r3, #0]
20000256:	4b0c      	ldr	r3, [pc, #48]	; (20000288 <TimerConfig+0x60>)
20000258:	224f      	movs	r2, #79	; 0x4f
2000025a:	605a      	str	r2, [r3, #4]
2000025c:	4b0a      	ldr	r3, [pc, #40]	; (20000288 <TimerConfig+0x60>)
2000025e:	22c7      	movs	r2, #199	; 0xc7
20000260:	609a      	str	r2, [r3, #8]
20000262:	4a09      	ldr	r2, [pc, #36]	; (20000288 <TimerConfig+0x60>)
20000264:	4b08      	ldr	r3, [pc, #32]	; (20000288 <TimerConfig+0x60>)
20000266:	6d9b      	ldr	r3, [r3, #88]	; 0x58
20000268:	f043 0302 	orr.w	r3, r3, #2
2000026c:	6593      	str	r3, [r2, #88]	; 0x58
2000026e:	4a06      	ldr	r2, [pc, #24]	; (20000288 <TimerConfig+0x60>)
20000270:	4b05      	ldr	r3, [pc, #20]	; (20000288 <TimerConfig+0x60>)
20000272:	68db      	ldr	r3, [r3, #12]
20000274:	f043 0301 	orr.w	r3, r3, #1
20000278:	60d3      	str	r3, [r2, #12]
2000027a:	bf00      	nop
2000027c:	46bd      	mov	sp, r7
2000027e:	bc80      	pop	{r7}
20000280:	4770      	bx	lr
20000282:	bf00      	nop
20000284:	40020000 	.word	0x40020000
20000288:	40070000 	.word	0x40070000

2000028c <TIMER1_Handler>:
2000028c:	b480      	push	{r7}
2000028e:	af00      	add	r7, sp, #0
20000290:	4b08      	ldr	r3, [pc, #32]	; (200002b4 <TIMER1_Handler+0x28>)
20000292:	2200      	movs	r2, #0
20000294:	655a      	str	r2, [r3, #84]	; 0x54
20000296:	4b08      	ldr	r3, [pc, #32]	; (200002b8 <TIMER1_Handler+0x2c>)
20000298:	f240 5255 	movw	r2, #1365	; 0x555
2000029c:	609a      	str	r2, [r3, #8]
2000029e:	4a07      	ldr	r2, [pc, #28]	; (200002bc <TIMER1_Handler+0x30>)
200002a0:	4b06      	ldr	r3, [pc, #24]	; (200002bc <TIMER1_Handler+0x30>)
200002a2:	681b      	ldr	r3, [r3, #0]
200002a4:	f043 0302 	orr.w	r3, r3, #2
200002a8:	6013      	str	r3, [r2, #0]
200002aa:	bf00      	nop
200002ac:	46bd      	mov	sp, r7
200002ae:	bc80      	pop	{r7}
200002b0:	4770      	bx	lr
200002b2:	bf00      	nop
200002b4:	40070000 	.word	0x40070000
200002b8:	40040000 	.word	0x40040000
200002bc:	40088000 	.word	0x40088000

200002c0 <EXTINT4_Handler>:
200002c0:	b480      	push	{r7}
200002c2:	af00      	add	r7, sp, #0
200002c4:	4a04      	ldr	r2, [pc, #16]	; (200002d8 <EXTINT4_Handler+0x18>)
200002c6:	4b04      	ldr	r3, [pc, #16]	; (200002d8 <EXTINT4_Handler+0x18>)
200002c8:	681b      	ldr	r3, [r3, #0]
200002ca:	f043 0301 	orr.w	r3, r3, #1
200002ce:	6013      	str	r3, [r2, #0]
200002d0:	bf00      	nop
200002d2:	46bd      	mov	sp, r7
200002d4:	bc80      	pop	{r7}
200002d6:	4770      	bx	lr
200002d8:	400a8000 	.word	0x400a8000

200002dc <uart_init>:
200002dc:	b480      	push	{r7}
200002de:	af00      	add	r7, sp, #0
200002e0:	4a1d      	ldr	r2, [pc, #116]	; (20000358 <uart_init+0x7c>)
200002e2:	4b1d      	ldr	r3, [pc, #116]	; (20000358 <uart_init+0x7c>)
200002e4:	69db      	ldr	r3, [r3, #28]
200002e6:	f043 0380 	orr.w	r3, r3, #128	; 0x80
200002ea:	61d3      	str	r3, [r2, #28]
200002ec:	4a1a      	ldr	r2, [pc, #104]	; (20000358 <uart_init+0x7c>)
200002ee:	4b1a      	ldr	r3, [pc, #104]	; (20000358 <uart_init+0x7c>)
200002f0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200002f2:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
200002f6:	6293      	str	r3, [r2, #40]	; 0x28
200002f8:	4b18      	ldr	r3, [pc, #96]	; (2000035c <uart_init+0x80>)
200002fa:	222b      	movs	r2, #43	; 0x2b
200002fc:	625a      	str	r2, [r3, #36]	; 0x24
200002fe:	4b17      	ldr	r3, [pc, #92]	; (2000035c <uart_init+0x80>)
20000300:	221a      	movs	r2, #26
20000302:	629a      	str	r2, [r3, #40]	; 0x28
20000304:	4a15      	ldr	r2, [pc, #84]	; (2000035c <uart_init+0x80>)
20000306:	4b15      	ldr	r3, [pc, #84]	; (2000035c <uart_init+0x80>)
20000308:	6b5b      	ldr	r3, [r3, #52]	; 0x34
2000030a:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
2000030e:	6353      	str	r3, [r2, #52]	; 0x34
20000310:	4a12      	ldr	r2, [pc, #72]	; (2000035c <uart_init+0x80>)
20000312:	4b12      	ldr	r3, [pc, #72]	; (2000035c <uart_init+0x80>)
20000314:	6b5b      	ldr	r3, [r3, #52]	; 0x34
20000316:	f043 0312 	orr.w	r3, r3, #18
2000031a:	6353      	str	r3, [r2, #52]	; 0x34
2000031c:	4a0f      	ldr	r2, [pc, #60]	; (2000035c <uart_init+0x80>)
2000031e:	4b0f      	ldr	r3, [pc, #60]	; (2000035c <uart_init+0x80>)
20000320:	6adb      	ldr	r3, [r3, #44]	; 0x2c
20000322:	f043 0310 	orr.w	r3, r3, #16
20000326:	62d3      	str	r3, [r2, #44]	; 0x2c
20000328:	4a0c      	ldr	r2, [pc, #48]	; (2000035c <uart_init+0x80>)
2000032a:	4b0c      	ldr	r3, [pc, #48]	; (2000035c <uart_init+0x80>)
2000032c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
2000032e:	f043 0360 	orr.w	r3, r3, #96	; 0x60
20000332:	62d3      	str	r3, [r2, #44]	; 0x2c
20000334:	4a09      	ldr	r2, [pc, #36]	; (2000035c <uart_init+0x80>)
20000336:	4b09      	ldr	r3, [pc, #36]	; (2000035c <uart_init+0x80>)
20000338:	6b1b      	ldr	r3, [r3, #48]	; 0x30
2000033a:	f443 7340 	orr.w	r3, r3, #768	; 0x300
2000033e:	f043 0301 	orr.w	r3, r3, #1
20000342:	6313      	str	r3, [r2, #48]	; 0x30
20000344:	4a05      	ldr	r2, [pc, #20]	; (2000035c <uart_init+0x80>)
20000346:	4b05      	ldr	r3, [pc, #20]	; (2000035c <uart_init+0x80>)
20000348:	6b9b      	ldr	r3, [r3, #56]	; 0x38
2000034a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
2000034e:	6393      	str	r3, [r2, #56]	; 0x38
20000350:	bf00      	nop
20000352:	46bd      	mov	sp, r7
20000354:	bc80      	pop	{r7}
20000356:	4770      	bx	lr
20000358:	40020000 	.word	0x40020000
2000035c:	40038000 	.word	0x40038000

20000360 <UART2_Handler>:
20000360:	b480      	push	{r7}
20000362:	af00      	add	r7, sp, #0
20000364:	4b0a      	ldr	r3, [pc, #40]	; (20000390 <UART2_Handler+0x30>)
20000366:	6c1b      	ldr	r3, [r3, #64]	; 0x40
20000368:	f003 0340 	and.w	r3, r3, #64	; 0x40
2000036c:	2b00      	cmp	r3, #0
2000036e:	d00b      	beq.n	20000388 <UART2_Handler+0x28>
20000370:	e004      	b.n	2000037c <UART2_Handler+0x1c>
20000372:	4b07      	ldr	r3, [pc, #28]	; (20000390 <UART2_Handler+0x30>)
20000374:	681b      	ldr	r3, [r3, #0]
20000376:	461a      	mov	r2, r3
20000378:	4b06      	ldr	r3, [pc, #24]	; (20000394 <UART2_Handler+0x34>)
2000037a:	601a      	str	r2, [r3, #0]
2000037c:	4b04      	ldr	r3, [pc, #16]	; (20000390 <UART2_Handler+0x30>)
2000037e:	699b      	ldr	r3, [r3, #24]
20000380:	f003 0310 	and.w	r3, r3, #16
20000384:	2b00      	cmp	r3, #0
20000386:	d0f4      	beq.n	20000372 <UART2_Handler+0x12>
20000388:	bf00      	nop
2000038a:	46bd      	mov	sp, r7
2000038c:	bc80      	pop	{r7}
2000038e:	4770      	bx	lr
20000390:	40038000 	.word	0x40038000
20000394:	20000404 	.word	0x20000404
