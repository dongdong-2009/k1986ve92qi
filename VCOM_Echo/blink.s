
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 75 03 00 08 d5 03 00 08 d5 03 00 08     ... u...........
 8000010:	d5 03 00 08 d5 03 00 08 d5 03 00 08 00 00 00 00     ................
	...
 800002c:	d5 03 00 08 d5 03 00 08 00 00 00 00 d5 03 00 08     ................
 800003c:	d5 03 00 08 d5 03 00 08 d5 03 00 08 71 14 00 08     ............q...
	...
 8000054:	d5 03 00 08 d5 03 00 08 d5 03 00 08 d5 03 00 08     ................
 8000064:	00 00 00 00 d5 03 00 08 d5 03 00 08 d5 03 00 08     ................
 8000074:	00 00 00 00 d5 03 00 08 d5 03 00 08 d5 03 00 08     ................
 8000084:	d5 03 00 08 00 00 00 00 d5 03 00 08 d5 03 00 08     ................
	...
 80000ac:	d5 03 00 08 d5 03 00 08 d5 03 00 08 d5 03 00 08     ................
 80000bc:	d5 03 00 08                                         ....

080000c0 <NVIC_EnableIRQ>:
 80000c0:	b480      	push	{r7}
 80000c2:	b083      	sub	sp, #12
 80000c4:	af00      	add	r7, sp, #0
 80000c6:	4603      	mov	r3, r0
 80000c8:	71fb      	strb	r3, [r7, #7]
 80000ca:	4908      	ldr	r1, [pc, #32]	; (80000ec <NVIC_EnableIRQ+0x2c>)
 80000cc:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80000d0:	095b      	lsrs	r3, r3, #5
 80000d2:	79fa      	ldrb	r2, [r7, #7]
 80000d4:	f002 021f 	and.w	r2, r2, #31
 80000d8:	2001      	movs	r0, #1
 80000da:	fa00 f202 	lsl.w	r2, r0, r2
 80000de:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80000e2:	bf00      	nop
 80000e4:	370c      	adds	r7, #12
 80000e6:	46bd      	mov	sp, r7
 80000e8:	bc80      	pop	{r7}
 80000ea:	4770      	bx	lr
 80000ec:	e000e100 	.word	0xe000e100

080000f0 <main>:
 80000f0:	b580      	push	{r7, lr}
 80000f2:	af00      	add	r7, sp, #0
 80000f4:	f000 f85a 	bl	80001ac <VCom_Configuration>
 80000f8:	2201      	movs	r2, #1
 80000fa:	2101      	movs	r1, #1
 80000fc:	4803      	ldr	r0, [pc, #12]	; (800010c <main+0x1c>)
 80000fe:	f000 f96d 	bl	80003dc <USB_CDC_Init>
 8000102:	f000 f805 	bl	8000110 <Setup_CPU_Clock>
 8000106:	f000 f827 	bl	8000158 <Setup_USB>
 800010a:	e7fe      	b.n	800010a <main+0x1a>
 800010c:	2000006c 	.word	0x2000006c

08000110 <Setup_CPU_Clock>:
 8000110:	b580      	push	{r7, lr}
 8000112:	af00      	add	r7, sp, #0
 8000114:	2001      	movs	r0, #1
 8000116:	f001 febd 	bl	8001e94 <RST_CLK_HSEconfig>
 800011a:	f001 fee1 	bl	8001ee0 <RST_CLK_HSEstatus>
 800011e:	4603      	mov	r3, r0
 8000120:	2b01      	cmp	r3, #1
 8000122:	d000      	beq.n	8000126 <Setup_CPU_Clock+0x16>
 8000124:	e7fe      	b.n	8000124 <Setup_CPU_Clock+0x14>
 8000126:	2109      	movs	r1, #9
 8000128:	2002      	movs	r0, #2
 800012a:	f001 ffe3 	bl	80020f4 <RST_CLK_CPU_PLLconfig>
 800012e:	2001      	movs	r0, #1
 8000130:	f002 f828 	bl	8002184 <RST_CLK_CPU_PLLcmd>
 8000134:	f002 f836 	bl	80021a4 <RST_CLK_CPU_PLLstatus>
 8000138:	4603      	mov	r3, r0
 800013a:	2b01      	cmp	r3, #1
 800013c:	d000      	beq.n	8000140 <Setup_CPU_Clock+0x30>
 800013e:	e7fe      	b.n	800013e <Setup_CPU_Clock+0x2e>
 8000140:	2000      	movs	r0, #0
 8000142:	f002 f853 	bl	80021ec <RST_CLK_CPUclkPrescaler>
 8000146:	2001      	movs	r0, #1
 8000148:	f002 f80c 	bl	8002164 <RST_CLK_CPU_PLLuse>
 800014c:	f44f 7080 	mov.w	r0, #256	; 0x100
 8000150:	f002 f866 	bl	8002220 <RST_CLK_CPUclkSelection>
 8000154:	bf00      	nop
 8000156:	bd80      	pop	{r7, pc}

08000158 <Setup_USB>:
 8000158:	b580      	push	{r7, lr}
 800015a:	af00      	add	r7, sp, #0
 800015c:	2101      	movs	r1, #1
 800015e:	2004      	movs	r0, #4
 8000160:	f002 f9ac 	bl	80024bc <RST_CLK_PCLKcmd>
 8000164:	4b0f      	ldr	r3, [pc, #60]	; (80001a4 <Setup_USB+0x4c>)
 8000166:	2203      	movs	r2, #3
 8000168:	601a      	str	r2, [r3, #0]
 800016a:	4b0e      	ldr	r3, [pc, #56]	; (80001a4 <Setup_USB+0x4c>)
 800016c:	220b      	movs	r2, #11
 800016e:	605a      	str	r2, [r3, #4]
 8000170:	4b0d      	ldr	r3, [pc, #52]	; (80001a8 <Setup_USB+0x50>)
 8000172:	2210      	movs	r2, #16
 8000174:	609a      	str	r2, [r3, #8]
 8000176:	4b0c      	ldr	r3, [pc, #48]	; (80001a8 <Setup_USB+0x50>)
 8000178:	2220      	movs	r2, #32
 800017a:	605a      	str	r2, [r3, #4]
 800017c:	4b0a      	ldr	r3, [pc, #40]	; (80001a8 <Setup_USB+0x50>)
 800017e:	2210      	movs	r2, #16
 8000180:	601a      	str	r2, [r3, #0]
 8000182:	4909      	ldr	r1, [pc, #36]	; (80001a8 <Setup_USB+0x50>)
 8000184:	4807      	ldr	r0, [pc, #28]	; (80001a4 <Setup_USB+0x4c>)
 8000186:	f000 fed7 	bl	8000f38 <USB_DeviceInit>
 800018a:	201f      	movs	r0, #31
 800018c:	f001 fd2e 	bl	8001bec <USB_SetSIM>
 8000190:	f000 ff0a 	bl	8000fa8 <USB_DevicePowerOn>
 8000194:	2002      	movs	r0, #2
 8000196:	f7ff ff93 	bl	80000c0 <NVIC_EnableIRQ>
 800019a:	f000 f995 	bl	80004c8 <USB_CDC_Reset>
 800019e:	bf00      	nop
 80001a0:	bd80      	pop	{r7, pc}
 80001a2:	bf00      	nop
 80001a4:	20000058 	.word	0x20000058
 80001a8:	20000060 	.word	0x20000060

080001ac <VCom_Configuration>:
 80001ac:	b480      	push	{r7}
 80001ae:	af00      	add	r7, sp, #0
 80001b0:	4b08      	ldr	r3, [pc, #32]	; (80001d4 <VCom_Configuration+0x28>)
 80001b2:	f44f 32e1 	mov.w	r2, #115200	; 0x1c200
 80001b6:	601a      	str	r2, [r3, #0]
 80001b8:	4b06      	ldr	r3, [pc, #24]	; (80001d4 <VCom_Configuration+0x28>)
 80001ba:	2200      	movs	r2, #0
 80001bc:	711a      	strb	r2, [r3, #4]
 80001be:	4b05      	ldr	r3, [pc, #20]	; (80001d4 <VCom_Configuration+0x28>)
 80001c0:	2200      	movs	r2, #0
 80001c2:	715a      	strb	r2, [r3, #5]
 80001c4:	4b03      	ldr	r3, [pc, #12]	; (80001d4 <VCom_Configuration+0x28>)
 80001c6:	2208      	movs	r2, #8
 80001c8:	719a      	strb	r2, [r3, #6]
 80001ca:	bf00      	nop
 80001cc:	46bd      	mov	sp, r7
 80001ce:	bc80      	pop	{r7}
 80001d0:	4770      	bx	lr
 80001d2:	bf00      	nop
 80001d4:	200000d0 	.word	0x200000d0

080001d8 <USB_CDC_RecieveData>:
 80001d8:	b580      	push	{r7, lr}
 80001da:	b084      	sub	sp, #16
 80001dc:	af00      	add	r7, sp, #0
 80001de:	6078      	str	r0, [r7, #4]
 80001e0:	6039      	str	r1, [r7, #0]
 80001e2:	4b10      	ldr	r3, [pc, #64]	; (8000224 <USB_CDC_RecieveData+0x4c>)
 80001e4:	681a      	ldr	r2, [r3, #0]
 80001e6:	683b      	ldr	r3, [r7, #0]
 80001e8:	4413      	add	r3, r2
 80001ea:	4a0e      	ldr	r2, [pc, #56]	; (8000224 <USB_CDC_RecieveData+0x4c>)
 80001ec:	6013      	str	r3, [r2, #0]
 80001ee:	6839      	ldr	r1, [r7, #0]
 80001f0:	6878      	ldr	r0, [r7, #4]
 80001f2:	f000 f949 	bl	8000488 <USB_CDC_SendData>
 80001f6:	4603      	mov	r3, r0
 80001f8:	81fb      	strh	r3, [r7, #14]
 80001fa:	89fb      	ldrh	r3, [r7, #14]
 80001fc:	2b00      	cmp	r3, #0
 80001fe:	d105      	bne.n	800020c <USB_CDC_RecieveData+0x34>
 8000200:	4b09      	ldr	r3, [pc, #36]	; (8000228 <USB_CDC_RecieveData+0x50>)
 8000202:	681a      	ldr	r2, [r3, #0]
 8000204:	683b      	ldr	r3, [r7, #0]
 8000206:	4413      	add	r3, r2
 8000208:	4a07      	ldr	r2, [pc, #28]	; (8000228 <USB_CDC_RecieveData+0x50>)
 800020a:	6013      	str	r3, [r2, #0]
 800020c:	89fb      	ldrh	r3, [r7, #14]
 800020e:	2b00      	cmp	r3, #0
 8000210:	d002      	beq.n	8000218 <USB_CDC_RecieveData+0x40>
 8000212:	4a06      	ldr	r2, [pc, #24]	; (800022c <USB_CDC_RecieveData+0x54>)
 8000214:	683b      	ldr	r3, [r7, #0]
 8000216:	6013      	str	r3, [r2, #0]
 8000218:	89fb      	ldrh	r3, [r7, #14]
 800021a:	4618      	mov	r0, r3
 800021c:	3710      	adds	r7, #16
 800021e:	46bd      	mov	sp, r7
 8000220:	bd80      	pop	{r7, pc}
 8000222:	bf00      	nop
 8000224:	20000590 	.word	0x20000590
 8000228:	20000594 	.word	0x20000594
 800022c:	200000d8 	.word	0x200000d8

08000230 <USB_CDC_DataSent>:
 8000230:	b580      	push	{r7, lr}
 8000232:	b082      	sub	sp, #8
 8000234:	af00      	add	r7, sp, #0
 8000236:	2300      	movs	r3, #0
 8000238:	80fb      	strh	r3, [r7, #6]
 800023a:	4b14      	ldr	r3, [pc, #80]	; (800028c <USB_CDC_DataSent+0x5c>)
 800023c:	681b      	ldr	r3, [r3, #0]
 800023e:	2b00      	cmp	r3, #0
 8000240:	d01e      	beq.n	8000280 <USB_CDC_DataSent+0x50>
 8000242:	4b12      	ldr	r3, [pc, #72]	; (800028c <USB_CDC_DataSent+0x5c>)
 8000244:	681b      	ldr	r3, [r3, #0]
 8000246:	4619      	mov	r1, r3
 8000248:	4811      	ldr	r0, [pc, #68]	; (8000290 <USB_CDC_DataSent+0x60>)
 800024a:	f000 f91d 	bl	8000488 <USB_CDC_SendData>
 800024e:	4603      	mov	r3, r0
 8000250:	80fb      	strh	r3, [r7, #6]
 8000252:	88fb      	ldrh	r3, [r7, #6]
 8000254:	2b00      	cmp	r3, #0
 8000256:	d107      	bne.n	8000268 <USB_CDC_DataSent+0x38>
 8000258:	4b0c      	ldr	r3, [pc, #48]	; (800028c <USB_CDC_DataSent+0x5c>)
 800025a:	681a      	ldr	r2, [r3, #0]
 800025c:	4b0d      	ldr	r3, [pc, #52]	; (8000294 <USB_CDC_DataSent+0x64>)
 800025e:	681b      	ldr	r3, [r3, #0]
 8000260:	4413      	add	r3, r2
 8000262:	4a0c      	ldr	r2, [pc, #48]	; (8000294 <USB_CDC_DataSent+0x64>)
 8000264:	6013      	str	r3, [r2, #0]
 8000266:	e006      	b.n	8000276 <USB_CDC_DataSent+0x46>
 8000268:	4b08      	ldr	r3, [pc, #32]	; (800028c <USB_CDC_DataSent+0x5c>)
 800026a:	681a      	ldr	r2, [r3, #0]
 800026c:	4b0a      	ldr	r3, [pc, #40]	; (8000298 <USB_CDC_DataSent+0x68>)
 800026e:	681b      	ldr	r3, [r3, #0]
 8000270:	4413      	add	r3, r2
 8000272:	4a09      	ldr	r2, [pc, #36]	; (8000298 <USB_CDC_DataSent+0x68>)
 8000274:	6013      	str	r3, [r2, #0]
 8000276:	4b05      	ldr	r3, [pc, #20]	; (800028c <USB_CDC_DataSent+0x5c>)
 8000278:	2200      	movs	r2, #0
 800027a:	601a      	str	r2, [r3, #0]
 800027c:	f000 f8e0 	bl	8000440 <USB_CDC_ReceiveStart>
 8000280:	2300      	movs	r3, #0
 8000282:	4618      	mov	r0, r3
 8000284:	3708      	adds	r7, #8
 8000286:	46bd      	mov	sp, r7
 8000288:	bd80      	pop	{r7, pc}
 800028a:	bf00      	nop
 800028c:	200000d8 	.word	0x200000d8
 8000290:	2000006c 	.word	0x2000006c
 8000294:	20000594 	.word	0x20000594
 8000298:	20000598 	.word	0x20000598

0800029c <USB_CDC_GetLineCoding>:
 800029c:	b480      	push	{r7}
 800029e:	b083      	sub	sp, #12
 80002a0:	af00      	add	r7, sp, #0
 80002a2:	4603      	mov	r3, r0
 80002a4:	6039      	str	r1, [r7, #0]
 80002a6:	80fb      	strh	r3, [r7, #6]
 80002a8:	88fb      	ldrh	r3, [r7, #6]
 80002aa:	2b00      	cmp	r3, #0
 80002ac:	d001      	beq.n	80002b2 <USB_CDC_GetLineCoding+0x16>
 80002ae:	2302      	movs	r3, #2
 80002b0:	e006      	b.n	80002c0 <USB_CDC_GetLineCoding+0x24>
 80002b2:	683b      	ldr	r3, [r7, #0]
 80002b4:	4a05      	ldr	r2, [pc, #20]	; (80002cc <USB_CDC_GetLineCoding+0x30>)
 80002b6:	e892 0003 	ldmia.w	r2, {r0, r1}
 80002ba:	e883 0003 	stmia.w	r3, {r0, r1}
 80002be:	2300      	movs	r3, #0
 80002c0:	4618      	mov	r0, r3
 80002c2:	370c      	adds	r7, #12
 80002c4:	46bd      	mov	sp, r7
 80002c6:	bc80      	pop	{r7}
 80002c8:	4770      	bx	lr
 80002ca:	bf00      	nop
 80002cc:	200000d0 	.word	0x200000d0

080002d0 <USB_CDC_SetLineCoding>:
 80002d0:	b480      	push	{r7}
 80002d2:	b083      	sub	sp, #12
 80002d4:	af00      	add	r7, sp, #0
 80002d6:	4603      	mov	r3, r0
 80002d8:	6039      	str	r1, [r7, #0]
 80002da:	80fb      	strh	r3, [r7, #6]
 80002dc:	88fb      	ldrh	r3, [r7, #6]
 80002de:	2b00      	cmp	r3, #0
 80002e0:	d001      	beq.n	80002e6 <USB_CDC_SetLineCoding+0x16>
 80002e2:	2302      	movs	r3, #2
 80002e4:	e006      	b.n	80002f4 <USB_CDC_SetLineCoding+0x24>
 80002e6:	4b06      	ldr	r3, [pc, #24]	; (8000300 <USB_CDC_SetLineCoding+0x30>)
 80002e8:	683a      	ldr	r2, [r7, #0]
 80002ea:	e892 0003 	ldmia.w	r2, {r0, r1}
 80002ee:	e883 0003 	stmia.w	r3, {r0, r1}
 80002f2:	2300      	movs	r3, #0
 80002f4:	4618      	mov	r0, r3
 80002f6:	370c      	adds	r7, #12
 80002f8:	46bd      	mov	sp, r7
 80002fa:	bc80      	pop	{r7}
 80002fc:	4770      	bx	lr
 80002fe:	bf00      	nop
 8000300:	200000d0 	.word	0x200000d0

08000304 <USB_DeviceSetupPacket_Debug>:
 8000304:	b590      	push	{r4, r7, lr}
 8000306:	b083      	sub	sp, #12
 8000308:	af00      	add	r7, sp, #0
 800030a:	4603      	mov	r3, r0
 800030c:	6039      	str	r1, [r7, #0]
 800030e:	71fb      	strb	r3, [r7, #7]
 8000310:	4b16      	ldr	r3, [pc, #88]	; (800036c <USB_DeviceSetupPacket_Debug+0x68>)
 8000312:	681a      	ldr	r2, [r3, #0]
 8000314:	4916      	ldr	r1, [pc, #88]	; (8000370 <USB_DeviceSetupPacket_Debug+0x6c>)
 8000316:	4613      	mov	r3, r2
 8000318:	005b      	lsls	r3, r3, #1
 800031a:	4413      	add	r3, r2
 800031c:	009b      	lsls	r3, r3, #2
 800031e:	440b      	add	r3, r1
 8000320:	683a      	ldr	r2, [r7, #0]
 8000322:	6810      	ldr	r0, [r2, #0]
 8000324:	6851      	ldr	r1, [r2, #4]
 8000326:	c303      	stmia	r3!, {r0, r1}
 8000328:	4b10      	ldr	r3, [pc, #64]	; (800036c <USB_DeviceSetupPacket_Debug+0x68>)
 800032a:	681c      	ldr	r4, [r3, #0]
 800032c:	f001 fc7c 	bl	8001c28 <USB_GetSA>
 8000330:	4601      	mov	r1, r0
 8000332:	4a0f      	ldr	r2, [pc, #60]	; (8000370 <USB_DeviceSetupPacket_Debug+0x6c>)
 8000334:	4623      	mov	r3, r4
 8000336:	005b      	lsls	r3, r3, #1
 8000338:	4423      	add	r3, r4
 800033a:	009b      	lsls	r3, r3, #2
 800033c:	4413      	add	r3, r2
 800033e:	3308      	adds	r3, #8
 8000340:	6019      	str	r1, [r3, #0]
 8000342:	4b0a      	ldr	r3, [pc, #40]	; (800036c <USB_DeviceSetupPacket_Debug+0x68>)
 8000344:	681b      	ldr	r3, [r3, #0]
 8000346:	2b63      	cmp	r3, #99	; 0x63
 8000348:	d803      	bhi.n	8000352 <USB_DeviceSetupPacket_Debug+0x4e>
 800034a:	4b08      	ldr	r3, [pc, #32]	; (800036c <USB_DeviceSetupPacket_Debug+0x68>)
 800034c:	681b      	ldr	r3, [r3, #0]
 800034e:	3301      	adds	r3, #1
 8000350:	e000      	b.n	8000354 <USB_DeviceSetupPacket_Debug+0x50>
 8000352:	2300      	movs	r3, #0
 8000354:	4a05      	ldr	r2, [pc, #20]	; (800036c <USB_DeviceSetupPacket_Debug+0x68>)
 8000356:	6013      	str	r3, [r2, #0]
 8000358:	79fb      	ldrb	r3, [r7, #7]
 800035a:	6839      	ldr	r1, [r7, #0]
 800035c:	4618      	mov	r0, r3
 800035e:	f000 fe5b 	bl	8001018 <USB_DeviceSetupPacket>
 8000362:	4603      	mov	r3, r0
 8000364:	4618      	mov	r0, r3
 8000366:	370c      	adds	r7, #12
 8000368:	46bd      	mov	sp, r7
 800036a:	bd90      	pop	{r4, r7, pc}
 800036c:	2000058c 	.word	0x2000058c
 8000370:	200000dc 	.word	0x200000dc

08000374 <handler_reset>:
 8000374:	b580      	push	{r7, lr}
 8000376:	b082      	sub	sp, #8
 8000378:	af00      	add	r7, sp, #0
 800037a:	4b11      	ldr	r3, [pc, #68]	; (80003c0 <handler_reset+0x4c>)
 800037c:	607b      	str	r3, [r7, #4]
 800037e:	4b11      	ldr	r3, [pc, #68]	; (80003c4 <handler_reset+0x50>)
 8000380:	603b      	str	r3, [r7, #0]
 8000382:	e007      	b.n	8000394 <handler_reset+0x20>
 8000384:	683b      	ldr	r3, [r7, #0]
 8000386:	1d1a      	adds	r2, r3, #4
 8000388:	603a      	str	r2, [r7, #0]
 800038a:	687a      	ldr	r2, [r7, #4]
 800038c:	1d11      	adds	r1, r2, #4
 800038e:	6079      	str	r1, [r7, #4]
 8000390:	6812      	ldr	r2, [r2, #0]
 8000392:	601a      	str	r2, [r3, #0]
 8000394:	683b      	ldr	r3, [r7, #0]
 8000396:	4a0c      	ldr	r2, [pc, #48]	; (80003c8 <handler_reset+0x54>)
 8000398:	4293      	cmp	r3, r2
 800039a:	d3f3      	bcc.n	8000384 <handler_reset+0x10>
 800039c:	4b0b      	ldr	r3, [pc, #44]	; (80003cc <handler_reset+0x58>)
 800039e:	603b      	str	r3, [r7, #0]
 80003a0:	e004      	b.n	80003ac <handler_reset+0x38>
 80003a2:	683b      	ldr	r3, [r7, #0]
 80003a4:	1d1a      	adds	r2, r3, #4
 80003a6:	603a      	str	r2, [r7, #0]
 80003a8:	2200      	movs	r2, #0
 80003aa:	601a      	str	r2, [r3, #0]
 80003ac:	683b      	ldr	r3, [r7, #0]
 80003ae:	4a08      	ldr	r2, [pc, #32]	; (80003d0 <handler_reset+0x5c>)
 80003b0:	4293      	cmp	r3, r2
 80003b2:	d3f6      	bcc.n	80003a2 <handler_reset+0x2e>
 80003b4:	f7ff fe9c 	bl	80000f0 <main>
 80003b8:	bf00      	nop
 80003ba:	3708      	adds	r7, #8
 80003bc:	46bd      	mov	sp, r7
 80003be:	bd80      	pop	{r7, pc}
 80003c0:	0800278c 	.word	0x0800278c
 80003c4:	20000000 	.word	0x20000000
 80003c8:	20000058 	.word	0x20000058
 80003cc:	20000058 	.word	0x20000058
 80003d0:	2000067c 	.word	0x2000067c

080003d4 <default_handler>:
 80003d4:	b480      	push	{r7}
 80003d6:	af00      	add	r7, sp, #0
 80003d8:	e7fe      	b.n	80003d8 <default_handler+0x4>
 80003da:	bf00      	nop

080003dc <USB_CDC_Init>:
 80003dc:	b580      	push	{r7, lr}
 80003de:	b084      	sub	sp, #16
 80003e0:	af00      	add	r7, sp, #0
 80003e2:	60f8      	str	r0, [r7, #12]
 80003e4:	60b9      	str	r1, [r7, #8]
 80003e6:	4613      	mov	r3, r2
 80003e8:	71fb      	strb	r3, [r7, #7]
 80003ea:	68b9      	ldr	r1, [r7, #8]
 80003ec:	68f8      	ldr	r0, [r7, #12]
 80003ee:	f000 f813 	bl	8000418 <USB_CDC_SetReceiveBuffer>
 80003f2:	4b08      	ldr	r3, [pc, #32]	; (8000414 <USB_CDC_Init+0x38>)
 80003f4:	2200      	movs	r2, #0
 80003f6:	811a      	strh	r2, [r3, #8]
 80003f8:	79fb      	ldrb	r3, [r7, #7]
 80003fa:	2b00      	cmp	r3, #0
 80003fc:	d001      	beq.n	8000402 <USB_CDC_Init+0x26>
 80003fe:	2200      	movs	r2, #0
 8000400:	e001      	b.n	8000406 <USB_CDC_Init+0x2a>
 8000402:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000406:	4b03      	ldr	r3, [pc, #12]	; (8000414 <USB_CDC_Init+0x38>)
 8000408:	815a      	strh	r2, [r3, #10]
 800040a:	2300      	movs	r3, #0
 800040c:	4618      	mov	r0, r3
 800040e:	3710      	adds	r7, #16
 8000410:	46bd      	mov	sp, r7
 8000412:	bd80      	pop	{r7, pc}
 8000414:	2000059c 	.word	0x2000059c

08000418 <USB_CDC_SetReceiveBuffer>:
 8000418:	b480      	push	{r7}
 800041a:	b083      	sub	sp, #12
 800041c:	af00      	add	r7, sp, #0
 800041e:	6078      	str	r0, [r7, #4]
 8000420:	6039      	str	r1, [r7, #0]
 8000422:	4a06      	ldr	r2, [pc, #24]	; (800043c <USB_CDC_SetReceiveBuffer+0x24>)
 8000424:	687b      	ldr	r3, [r7, #4]
 8000426:	6013      	str	r3, [r2, #0]
 8000428:	4a04      	ldr	r2, [pc, #16]	; (800043c <USB_CDC_SetReceiveBuffer+0x24>)
 800042a:	683b      	ldr	r3, [r7, #0]
 800042c:	6053      	str	r3, [r2, #4]
 800042e:	2300      	movs	r3, #0
 8000430:	4618      	mov	r0, r3
 8000432:	370c      	adds	r7, #12
 8000434:	46bd      	mov	sp, r7
 8000436:	bc80      	pop	{r7}
 8000438:	4770      	bx	lr
 800043a:	bf00      	nop
 800043c:	2000059c 	.word	0x2000059c

08000440 <USB_CDC_ReceiveStart>:
 8000440:	b580      	push	{r7, lr}
 8000442:	af00      	add	r7, sp, #0
 8000444:	4b06      	ldr	r3, [pc, #24]	; (8000460 <USB_CDC_ReceiveStart+0x20>)
 8000446:	2200      	movs	r2, #0
 8000448:	815a      	strh	r2, [r3, #10]
 800044a:	4b05      	ldr	r3, [pc, #20]	; (8000460 <USB_CDC_ReceiveStart+0x20>)
 800044c:	6819      	ldr	r1, [r3, #0]
 800044e:	4b04      	ldr	r3, [pc, #16]	; (8000460 <USB_CDC_ReceiveStart+0x20>)
 8000450:	685a      	ldr	r2, [r3, #4]
 8000452:	4b04      	ldr	r3, [pc, #16]	; (8000464 <USB_CDC_ReceiveStart+0x24>)
 8000454:	2003      	movs	r0, #3
 8000456:	f000 fad7 	bl	8000a08 <USB_EP_doDataOut>
 800045a:	4603      	mov	r3, r0
 800045c:	4618      	mov	r0, r3
 800045e:	bd80      	pop	{r7, pc}
 8000460:	2000059c 	.word	0x2000059c
 8000464:	080006b1 	.word	0x080006b1

08000468 <USB_CDC_ReceiveStop>:
 8000468:	b580      	push	{r7, lr}
 800046a:	af00      	add	r7, sp, #0
 800046c:	4b05      	ldr	r3, [pc, #20]	; (8000484 <USB_CDC_ReceiveStop+0x1c>)
 800046e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000472:	815a      	strh	r2, [r3, #10]
 8000474:	2100      	movs	r1, #0
 8000476:	2003      	movs	r0, #3
 8000478:	f000 fa5c 	bl	8000934 <USB_EP_Stall>
 800047c:	4603      	mov	r3, r0
 800047e:	4618      	mov	r0, r3
 8000480:	bd80      	pop	{r7, pc}
 8000482:	bf00      	nop
 8000484:	2000059c 	.word	0x2000059c

08000488 <USB_CDC_SendData>:
 8000488:	b580      	push	{r7, lr}
 800048a:	b084      	sub	sp, #16
 800048c:	af00      	add	r7, sp, #0
 800048e:	6078      	str	r0, [r7, #4]
 8000490:	6039      	str	r1, [r7, #0]
 8000492:	4b0b      	ldr	r3, [pc, #44]	; (80004c0 <USB_CDC_SendData+0x38>)
 8000494:	891b      	ldrh	r3, [r3, #8]
 8000496:	81fb      	strh	r3, [r7, #14]
 8000498:	89fb      	ldrh	r3, [r7, #14]
 800049a:	2b00      	cmp	r3, #0
 800049c:	d10b      	bne.n	80004b6 <USB_CDC_SendData+0x2e>
 800049e:	4b08      	ldr	r3, [pc, #32]	; (80004c0 <USB_CDC_SendData+0x38>)
 80004a0:	f44f 7200 	mov.w	r2, #512	; 0x200
 80004a4:	811a      	strh	r2, [r3, #8]
 80004a6:	4b07      	ldr	r3, [pc, #28]	; (80004c4 <USB_CDC_SendData+0x3c>)
 80004a8:	683a      	ldr	r2, [r7, #0]
 80004aa:	6879      	ldr	r1, [r7, #4]
 80004ac:	2001      	movs	r0, #1
 80004ae:	f000 fa75 	bl	800099c <USB_EP_doDataIn>
 80004b2:	4603      	mov	r3, r0
 80004b4:	81fb      	strh	r3, [r7, #14]
 80004b6:	89fb      	ldrh	r3, [r7, #14]
 80004b8:	4618      	mov	r0, r3
 80004ba:	3710      	adds	r7, #16
 80004bc:	46bd      	mov	sp, r7
 80004be:	bd80      	pop	{r7, pc}
 80004c0:	2000059c 	.word	0x2000059c
 80004c4:	08000689 	.word	0x08000689

080004c8 <USB_CDC_Reset>:
 80004c8:	b580      	push	{r7, lr}
 80004ca:	b082      	sub	sp, #8
 80004cc:	af00      	add	r7, sp, #0
 80004ce:	f000 fd87 	bl	8000fe0 <USB_DeviceReset>
 80004d2:	4603      	mov	r3, r0
 80004d4:	80fb      	strh	r3, [r7, #6]
 80004d6:	88fb      	ldrh	r3, [r7, #6]
 80004d8:	2b00      	cmp	r3, #0
 80004da:	d11d      	bne.n	8000518 <USB_CDC_Reset+0x50>
 80004dc:	2200      	movs	r2, #0
 80004de:	2105      	movs	r1, #5
 80004e0:	2001      	movs	r0, #1
 80004e2:	f000 f997 	bl	8000814 <USB_EP_Init>
 80004e6:	2200      	movs	r2, #0
 80004e8:	2105      	movs	r1, #5
 80004ea:	2002      	movs	r0, #2
 80004ec:	f000 f992 	bl	8000814 <USB_EP_Init>
 80004f0:	2200      	movs	r2, #0
 80004f2:	2101      	movs	r1, #1
 80004f4:	2003      	movs	r0, #3
 80004f6:	f000 f98d 	bl	8000814 <USB_EP_Init>
 80004fa:	4b0a      	ldr	r3, [pc, #40]	; (8000524 <USB_CDC_Reset+0x5c>)
 80004fc:	895b      	ldrh	r3, [r3, #10]
 80004fe:	b29b      	uxth	r3, r3
 8000500:	2b00      	cmp	r3, #0
 8000502:	d109      	bne.n	8000518 <USB_CDC_Reset+0x50>
 8000504:	4b07      	ldr	r3, [pc, #28]	; (8000524 <USB_CDC_Reset+0x5c>)
 8000506:	6819      	ldr	r1, [r3, #0]
 8000508:	4b06      	ldr	r3, [pc, #24]	; (8000524 <USB_CDC_Reset+0x5c>)
 800050a:	685a      	ldr	r2, [r3, #4]
 800050c:	4b06      	ldr	r3, [pc, #24]	; (8000528 <USB_CDC_Reset+0x60>)
 800050e:	2003      	movs	r0, #3
 8000510:	f000 fa7a 	bl	8000a08 <USB_EP_doDataOut>
 8000514:	4603      	mov	r3, r0
 8000516:	80fb      	strh	r3, [r7, #6]
 8000518:	88fb      	ldrh	r3, [r7, #6]
 800051a:	4618      	mov	r0, r3
 800051c:	3708      	adds	r7, #8
 800051e:	46bd      	mov	sp, r7
 8000520:	bd80      	pop	{r7, pc}
 8000522:	bf00      	nop
 8000524:	2000059c 	.word	0x2000059c
 8000528:	080006b1 	.word	0x080006b1

0800052c <USB_CDC_GetDescriptor>:
 800052c:	b580      	push	{r7, lr}
 800052e:	b086      	sub	sp, #24
 8000530:	af00      	add	r7, sp, #0
 8000532:	4603      	mov	r3, r0
 8000534:	80fb      	strh	r3, [r7, #6]
 8000536:	460b      	mov	r3, r1
 8000538:	80bb      	strh	r3, [r7, #4]
 800053a:	4613      	mov	r3, r2
 800053c:	807b      	strh	r3, [r7, #2]
 800053e:	2300      	movs	r3, #0
 8000540:	617b      	str	r3, [r7, #20]
 8000542:	2300      	movs	r3, #0
 8000544:	81fb      	strh	r3, [r7, #14]
 8000546:	88fb      	ldrh	r3, [r7, #6]
 8000548:	b2db      	uxtb	r3, r3
 800054a:	2b00      	cmp	r3, #0
 800054c:	d002      	beq.n	8000554 <USB_CDC_GetDescriptor+0x28>
 800054e:	2301      	movs	r3, #1
 8000550:	81fb      	strh	r3, [r7, #14]
 8000552:	e013      	b.n	800057c <USB_CDC_GetDescriptor+0x50>
 8000554:	88fb      	ldrh	r3, [r7, #6]
 8000556:	0a1b      	lsrs	r3, r3, #8
 8000558:	b29b      	uxth	r3, r3
 800055a:	2b01      	cmp	r3, #1
 800055c:	d002      	beq.n	8000564 <USB_CDC_GetDescriptor+0x38>
 800055e:	2b02      	cmp	r3, #2
 8000560:	d005      	beq.n	800056e <USB_CDC_GetDescriptor+0x42>
 8000562:	e009      	b.n	8000578 <USB_CDC_GetDescriptor+0x4c>
 8000564:	4b10      	ldr	r3, [pc, #64]	; (80005a8 <USB_CDC_GetDescriptor+0x7c>)
 8000566:	617b      	str	r3, [r7, #20]
 8000568:	2312      	movs	r3, #18
 800056a:	613b      	str	r3, [r7, #16]
 800056c:	e006      	b.n	800057c <USB_CDC_GetDescriptor+0x50>
 800056e:	4b0f      	ldr	r3, [pc, #60]	; (80005ac <USB_CDC_GetDescriptor+0x80>)
 8000570:	617b      	str	r3, [r7, #20]
 8000572:	2343      	movs	r3, #67	; 0x43
 8000574:	613b      	str	r3, [r7, #16]
 8000576:	e001      	b.n	800057c <USB_CDC_GetDescriptor+0x50>
 8000578:	2301      	movs	r3, #1
 800057a:	81fb      	strh	r3, [r7, #14]
 800057c:	89fb      	ldrh	r3, [r7, #14]
 800057e:	2b00      	cmp	r3, #0
 8000580:	d10d      	bne.n	800059e <USB_CDC_GetDescriptor+0x72>
 8000582:	887a      	ldrh	r2, [r7, #2]
 8000584:	693b      	ldr	r3, [r7, #16]
 8000586:	429a      	cmp	r2, r3
 8000588:	d201      	bcs.n	800058e <USB_CDC_GetDescriptor+0x62>
 800058a:	887b      	ldrh	r3, [r7, #2]
 800058c:	613b      	str	r3, [r7, #16]
 800058e:	4b08      	ldr	r3, [pc, #32]	; (80005b0 <USB_CDC_GetDescriptor+0x84>)
 8000590:	693a      	ldr	r2, [r7, #16]
 8000592:	6979      	ldr	r1, [r7, #20]
 8000594:	2000      	movs	r0, #0
 8000596:	f000 fa01 	bl	800099c <USB_EP_doDataIn>
 800059a:	4603      	mov	r3, r0
 800059c:	81fb      	strh	r3, [r7, #14]
 800059e:	89fb      	ldrh	r3, [r7, #14]
 80005a0:	4618      	mov	r0, r3
 80005a2:	3718      	adds	r7, #24
 80005a4:	46bd      	mov	sp, r7
 80005a6:	bd80      	pop	{r7, pc}
 80005a8:	20000000 	.word	0x20000000
 80005ac:	20000014 	.word	0x20000014
 80005b0:	08001399 	.word	0x08001399

080005b4 <USB_CDC_ClassRequest>:
 80005b4:	b580      	push	{r7, lr}
 80005b6:	b082      	sub	sp, #8
 80005b8:	af00      	add	r7, sp, #0
 80005ba:	2300      	movs	r3, #0
 80005bc:	80fb      	strh	r3, [r7, #6]
 80005be:	4b2e      	ldr	r3, [pc, #184]	; (8000678 <USB_CDC_ClassRequest+0xc4>)
 80005c0:	885b      	ldrh	r3, [r3, #2]
 80005c2:	80bb      	strh	r3, [r7, #4]
 80005c4:	4b2c      	ldr	r3, [pc, #176]	; (8000678 <USB_CDC_ClassRequest+0xc4>)
 80005c6:	889b      	ldrh	r3, [r3, #4]
 80005c8:	807b      	strh	r3, [r7, #2]
 80005ca:	4b2b      	ldr	r3, [pc, #172]	; (8000678 <USB_CDC_ClassRequest+0xc4>)
 80005cc:	88db      	ldrh	r3, [r3, #6]
 80005ce:	803b      	strh	r3, [r7, #0]
 80005d0:	4b29      	ldr	r3, [pc, #164]	; (8000678 <USB_CDC_ClassRequest+0xc4>)
 80005d2:	785b      	ldrb	r3, [r3, #1]
 80005d4:	2b20      	cmp	r3, #32
 80005d6:	d002      	beq.n	80005de <USB_CDC_ClassRequest+0x2a>
 80005d8:	2b21      	cmp	r3, #33	; 0x21
 80005da:	d00f      	beq.n	80005fc <USB_CDC_ClassRequest+0x48>
 80005dc:	e027      	b.n	800062e <USB_CDC_ClassRequest+0x7a>
 80005de:	883b      	ldrh	r3, [r7, #0]
 80005e0:	2b07      	cmp	r3, #7
 80005e2:	d108      	bne.n	80005f6 <USB_CDC_ClassRequest+0x42>
 80005e4:	883a      	ldrh	r2, [r7, #0]
 80005e6:	4b25      	ldr	r3, [pc, #148]	; (800067c <USB_CDC_ClassRequest+0xc8>)
 80005e8:	4925      	ldr	r1, [pc, #148]	; (8000680 <USB_CDC_ClassRequest+0xcc>)
 80005ea:	2000      	movs	r0, #0
 80005ec:	f000 fa0c 	bl	8000a08 <USB_EP_doDataOut>
 80005f0:	4603      	mov	r3, r0
 80005f2:	80fb      	strh	r3, [r7, #6]
 80005f4:	e01f      	b.n	8000636 <USB_CDC_ClassRequest+0x82>
 80005f6:	2302      	movs	r3, #2
 80005f8:	80fb      	strh	r3, [r7, #6]
 80005fa:	e01c      	b.n	8000636 <USB_CDC_ClassRequest+0x82>
 80005fc:	883b      	ldrh	r3, [r7, #0]
 80005fe:	2b07      	cmp	r3, #7
 8000600:	d112      	bne.n	8000628 <USB_CDC_ClassRequest+0x74>
 8000602:	887b      	ldrh	r3, [r7, #2]
 8000604:	491e      	ldr	r1, [pc, #120]	; (8000680 <USB_CDC_ClassRequest+0xcc>)
 8000606:	4618      	mov	r0, r3
 8000608:	f7ff fe48 	bl	800029c <USB_CDC_GetLineCoding>
 800060c:	4603      	mov	r3, r0
 800060e:	80fb      	strh	r3, [r7, #6]
 8000610:	88fb      	ldrh	r3, [r7, #6]
 8000612:	2b00      	cmp	r3, #0
 8000614:	d10e      	bne.n	8000634 <USB_CDC_ClassRequest+0x80>
 8000616:	883a      	ldrh	r2, [r7, #0]
 8000618:	4b1a      	ldr	r3, [pc, #104]	; (8000684 <USB_CDC_ClassRequest+0xd0>)
 800061a:	4919      	ldr	r1, [pc, #100]	; (8000680 <USB_CDC_ClassRequest+0xcc>)
 800061c:	2000      	movs	r0, #0
 800061e:	f000 f9bd 	bl	800099c <USB_EP_doDataIn>
 8000622:	4603      	mov	r3, r0
 8000624:	80fb      	strh	r3, [r7, #6]
 8000626:	e005      	b.n	8000634 <USB_CDC_ClassRequest+0x80>
 8000628:	2302      	movs	r3, #2
 800062a:	80fb      	strh	r3, [r7, #6]
 800062c:	e002      	b.n	8000634 <USB_CDC_ClassRequest+0x80>
 800062e:	2301      	movs	r3, #1
 8000630:	80fb      	strh	r3, [r7, #6]
 8000632:	e000      	b.n	8000636 <USB_CDC_ClassRequest+0x82>
 8000634:	bf00      	nop
 8000636:	88fb      	ldrh	r3, [r7, #6]
 8000638:	2b00      	cmp	r3, #0
 800063a:	d117      	bne.n	800066c <USB_CDC_ClassRequest+0xb8>
 800063c:	883b      	ldrh	r3, [r7, #0]
 800063e:	2b00      	cmp	r3, #0
 8000640:	d114      	bne.n	800066c <USB_CDC_ClassRequest+0xb8>
 8000642:	4b0d      	ldr	r3, [pc, #52]	; (8000678 <USB_CDC_ClassRequest+0xc4>)
 8000644:	781b      	ldrb	r3, [r3, #0]
 8000646:	b25b      	sxtb	r3, r3
 8000648:	2b00      	cmp	r3, #0
 800064a:	da07      	bge.n	800065c <USB_CDC_ClassRequest+0xa8>
 800064c:	2300      	movs	r3, #0
 800064e:	2200      	movs	r2, #0
 8000650:	2100      	movs	r1, #0
 8000652:	2000      	movs	r0, #0
 8000654:	f000 f9d8 	bl	8000a08 <USB_EP_doDataOut>
 8000658:	4603      	mov	r3, r0
 800065a:	e006      	b.n	800066a <USB_CDC_ClassRequest+0xb6>
 800065c:	2300      	movs	r3, #0
 800065e:	2200      	movs	r2, #0
 8000660:	2100      	movs	r1, #0
 8000662:	2000      	movs	r0, #0
 8000664:	f000 f99a 	bl	800099c <USB_EP_doDataIn>
 8000668:	4603      	mov	r3, r0
 800066a:	80fb      	strh	r3, [r7, #6]
 800066c:	88fb      	ldrh	r3, [r7, #6]
 800066e:	4618      	mov	r0, r3
 8000670:	3708      	adds	r7, #8
 8000672:	46bd      	mov	sp, r7
 8000674:	bd80      	pop	{r7, pc}
 8000676:	bf00      	nop
 8000678:	20000660 	.word	0x20000660
 800067c:	08000709 	.word	0x08000709
 8000680:	200005a8 	.word	0x200005a8
 8000684:	08001399 	.word	0x08001399

08000688 <USB_CDC_OnDataSent>:
 8000688:	b580      	push	{r7, lr}
 800068a:	b084      	sub	sp, #16
 800068c:	af00      	add	r7, sp, #0
 800068e:	4603      	mov	r3, r0
 8000690:	60b9      	str	r1, [r7, #8]
 8000692:	607a      	str	r2, [r7, #4]
 8000694:	73fb      	strb	r3, [r7, #15]
 8000696:	4b05      	ldr	r3, [pc, #20]	; (80006ac <USB_CDC_OnDataSent+0x24>)
 8000698:	2200      	movs	r2, #0
 800069a:	811a      	strh	r2, [r3, #8]
 800069c:	f7ff fdc8 	bl	8000230 <USB_CDC_DataSent>
 80006a0:	4603      	mov	r3, r0
 80006a2:	4618      	mov	r0, r3
 80006a4:	3710      	adds	r7, #16
 80006a6:	46bd      	mov	sp, r7
 80006a8:	bd80      	pop	{r7, pc}
 80006aa:	bf00      	nop
 80006ac:	2000059c 	.word	0x2000059c

080006b0 <USB_CDC_OnDataReceive>:
 80006b0:	b580      	push	{r7, lr}
 80006b2:	b086      	sub	sp, #24
 80006b4:	af00      	add	r7, sp, #0
 80006b6:	4603      	mov	r3, r0
 80006b8:	60b9      	str	r1, [r7, #8]
 80006ba:	607a      	str	r2, [r7, #4]
 80006bc:	73fb      	strb	r3, [r7, #15]
 80006be:	6879      	ldr	r1, [r7, #4]
 80006c0:	68b8      	ldr	r0, [r7, #8]
 80006c2:	f7ff fd89 	bl	80001d8 <USB_CDC_RecieveData>
 80006c6:	4603      	mov	r3, r0
 80006c8:	82fb      	strh	r3, [r7, #22]
 80006ca:	8afb      	ldrh	r3, [r7, #22]
 80006cc:	2b00      	cmp	r3, #0
 80006ce:	d003      	beq.n	80006d8 <USB_CDC_OnDataReceive+0x28>
 80006d0:	4b0b      	ldr	r3, [pc, #44]	; (8000700 <USB_CDC_OnDataReceive+0x50>)
 80006d2:	f44f 7200 	mov.w	r2, #512	; 0x200
 80006d6:	815a      	strh	r2, [r3, #10]
 80006d8:	4b09      	ldr	r3, [pc, #36]	; (8000700 <USB_CDC_OnDataReceive+0x50>)
 80006da:	895b      	ldrh	r3, [r3, #10]
 80006dc:	b29b      	uxth	r3, r3
 80006de:	2b00      	cmp	r3, #0
 80006e0:	d109      	bne.n	80006f6 <USB_CDC_OnDataReceive+0x46>
 80006e2:	4b07      	ldr	r3, [pc, #28]	; (8000700 <USB_CDC_OnDataReceive+0x50>)
 80006e4:	6819      	ldr	r1, [r3, #0]
 80006e6:	4b06      	ldr	r3, [pc, #24]	; (8000700 <USB_CDC_OnDataReceive+0x50>)
 80006e8:	685a      	ldr	r2, [r3, #4]
 80006ea:	4b06      	ldr	r3, [pc, #24]	; (8000704 <USB_CDC_OnDataReceive+0x54>)
 80006ec:	2003      	movs	r0, #3
 80006ee:	f000 f98b 	bl	8000a08 <USB_EP_doDataOut>
 80006f2:	4603      	mov	r3, r0
 80006f4:	e000      	b.n	80006f8 <USB_CDC_OnDataReceive+0x48>
 80006f6:	2300      	movs	r3, #0
 80006f8:	4618      	mov	r0, r3
 80006fa:	3718      	adds	r7, #24
 80006fc:	46bd      	mov	sp, r7
 80006fe:	bd80      	pop	{r7, pc}
 8000700:	2000059c 	.word	0x2000059c
 8000704:	080006b1 	.word	0x080006b1

08000708 <USB_CDC_DoDataOut>:
 8000708:	b580      	push	{r7, lr}
 800070a:	b086      	sub	sp, #24
 800070c:	af00      	add	r7, sp, #0
 800070e:	4603      	mov	r3, r0
 8000710:	60b9      	str	r1, [r7, #8]
 8000712:	607a      	str	r2, [r7, #4]
 8000714:	73fb      	strb	r3, [r7, #15]
 8000716:	4b0f      	ldr	r3, [pc, #60]	; (8000754 <USB_CDC_DoDataOut+0x4c>)
 8000718:	785b      	ldrb	r3, [r3, #1]
 800071a:	2b20      	cmp	r3, #32
 800071c:	d108      	bne.n	8000730 <USB_CDC_DoDataOut+0x28>
 800071e:	4b0d      	ldr	r3, [pc, #52]	; (8000754 <USB_CDC_DoDataOut+0x4c>)
 8000720:	889b      	ldrh	r3, [r3, #4]
 8000722:	68b9      	ldr	r1, [r7, #8]
 8000724:	4618      	mov	r0, r3
 8000726:	f7ff fdd3 	bl	80002d0 <USB_CDC_SetLineCoding>
 800072a:	4603      	mov	r3, r0
 800072c:	82fb      	strh	r3, [r7, #22]
 800072e:	e001      	b.n	8000734 <USB_CDC_DoDataOut+0x2c>
 8000730:	2302      	movs	r3, #2
 8000732:	82fb      	strh	r3, [r7, #22]
 8000734:	8afb      	ldrh	r3, [r7, #22]
 8000736:	2b00      	cmp	r3, #0
 8000738:	d107      	bne.n	800074a <USB_CDC_DoDataOut+0x42>
 800073a:	7bf8      	ldrb	r0, [r7, #15]
 800073c:	2300      	movs	r3, #0
 800073e:	2200      	movs	r2, #0
 8000740:	2100      	movs	r1, #0
 8000742:	f000 f92b 	bl	800099c <USB_EP_doDataIn>
 8000746:	4603      	mov	r3, r0
 8000748:	e000      	b.n	800074c <USB_CDC_DoDataOut+0x44>
 800074a:	8afb      	ldrh	r3, [r7, #22]
 800074c:	4618      	mov	r0, r3
 800074e:	3718      	adds	r7, #24
 8000750:	46bd      	mov	sp, r7
 8000752:	bd80      	pop	{r7, pc}
 8000754:	20000660 	.word	0x20000660

08000758 <USB_CDC_DummyDataReceive>:
 8000758:	b480      	push	{r7}
 800075a:	b083      	sub	sp, #12
 800075c:	af00      	add	r7, sp, #0
 800075e:	6078      	str	r0, [r7, #4]
 8000760:	6039      	str	r1, [r7, #0]
 8000762:	2301      	movs	r3, #1
 8000764:	4618      	mov	r0, r3
 8000766:	370c      	adds	r7, #12
 8000768:	46bd      	mov	sp, r7
 800076a:	bc80      	pop	{r7}
 800076c:	4770      	bx	lr
 800076e:	bf00      	nop

08000770 <USB_CDC_DummyDataSent>:
 8000770:	b480      	push	{r7}
 8000772:	af00      	add	r7, sp, #0
 8000774:	2301      	movs	r3, #1
 8000776:	4618      	mov	r0, r3
 8000778:	46bd      	mov	sp, r7
 800077a:	bc80      	pop	{r7}
 800077c:	4770      	bx	lr
 800077e:	bf00      	nop

08000780 <USB_CDC_DummyGetLineCoding>:
 8000780:	b480      	push	{r7}
 8000782:	b083      	sub	sp, #12
 8000784:	af00      	add	r7, sp, #0
 8000786:	4603      	mov	r3, r0
 8000788:	6039      	str	r1, [r7, #0]
 800078a:	80fb      	strh	r3, [r7, #6]
 800078c:	2301      	movs	r3, #1
 800078e:	4618      	mov	r0, r3
 8000790:	370c      	adds	r7, #12
 8000792:	46bd      	mov	sp, r7
 8000794:	bc80      	pop	{r7}
 8000796:	4770      	bx	lr

08000798 <USB_CDC_DummySetLineCoding>:
 8000798:	b480      	push	{r7}
 800079a:	b083      	sub	sp, #12
 800079c:	af00      	add	r7, sp, #0
 800079e:	4603      	mov	r3, r0
 80007a0:	6039      	str	r1, [r7, #0]
 80007a2:	80fb      	strh	r3, [r7, #6]
 80007a4:	2301      	movs	r3, #1
 80007a6:	4618      	mov	r0, r3
 80007a8:	370c      	adds	r7, #12
 80007aa:	46bd      	mov	sp, r7
 80007ac:	bc80      	pop	{r7}
 80007ae:	4770      	bx	lr

080007b0 <NVIC_EnableIRQ>:
 80007b0:	b480      	push	{r7}
 80007b2:	b083      	sub	sp, #12
 80007b4:	af00      	add	r7, sp, #0
 80007b6:	4603      	mov	r3, r0
 80007b8:	71fb      	strb	r3, [r7, #7]
 80007ba:	4908      	ldr	r1, [pc, #32]	; (80007dc <NVIC_EnableIRQ+0x2c>)
 80007bc:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80007c0:	095b      	lsrs	r3, r3, #5
 80007c2:	79fa      	ldrb	r2, [r7, #7]
 80007c4:	f002 021f 	and.w	r2, r2, #31
 80007c8:	2001      	movs	r0, #1
 80007ca:	fa00 f202 	lsl.w	r2, r0, r2
 80007ce:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80007d2:	bf00      	nop
 80007d4:	370c      	adds	r7, #12
 80007d6:	46bd      	mov	sp, r7
 80007d8:	bc80      	pop	{r7}
 80007da:	4770      	bx	lr
 80007dc:	e000e100 	.word	0xe000e100

080007e0 <NVIC_DisableIRQ>:
 80007e0:	b480      	push	{r7}
 80007e2:	b083      	sub	sp, #12
 80007e4:	af00      	add	r7, sp, #0
 80007e6:	4603      	mov	r3, r0
 80007e8:	71fb      	strb	r3, [r7, #7]
 80007ea:	4909      	ldr	r1, [pc, #36]	; (8000810 <NVIC_DisableIRQ+0x30>)
 80007ec:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80007f0:	095b      	lsrs	r3, r3, #5
 80007f2:	79fa      	ldrb	r2, [r7, #7]
 80007f4:	f002 021f 	and.w	r2, r2, #31
 80007f8:	2001      	movs	r0, #1
 80007fa:	fa00 f202 	lsl.w	r2, r0, r2
 80007fe:	3320      	adds	r3, #32
 8000800:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000804:	bf00      	nop
 8000806:	370c      	adds	r7, #12
 8000808:	46bd      	mov	sp, r7
 800080a:	bc80      	pop	{r7}
 800080c:	4770      	bx	lr
 800080e:	bf00      	nop
 8000810:	e000e100 	.word	0xe000e100

08000814 <USB_EP_Init>:
 8000814:	b580      	push	{r7, lr}
 8000816:	b086      	sub	sp, #24
 8000818:	af00      	add	r7, sp, #0
 800081a:	4603      	mov	r3, r0
 800081c:	60b9      	str	r1, [r7, #8]
 800081e:	607a      	str	r2, [r7, #4]
 8000820:	73fb      	strb	r3, [r7, #15]
 8000822:	7bfb      	ldrb	r3, [r7, #15]
 8000824:	222c      	movs	r2, #44	; 0x2c
 8000826:	fb02 f303 	mul.w	r3, r2, r3
 800082a:	4a18      	ldr	r2, [pc, #96]	; (800088c <USB_EP_Init+0x78>)
 800082c:	4413      	add	r3, r2
 800082e:	617b      	str	r3, [r7, #20]
 8000830:	697b      	ldr	r3, [r7, #20]
 8000832:	2200      	movs	r2, #0
 8000834:	605a      	str	r2, [r3, #4]
 8000836:	697b      	ldr	r3, [r7, #20]
 8000838:	2200      	movs	r2, #0
 800083a:	609a      	str	r2, [r3, #8]
 800083c:	697b      	ldr	r3, [r7, #20]
 800083e:	2200      	movs	r2, #0
 8000840:	611a      	str	r2, [r3, #16]
 8000842:	697b      	ldr	r3, [r7, #20]
 8000844:	2200      	movs	r2, #0
 8000846:	60da      	str	r2, [r3, #12]
 8000848:	697b      	ldr	r3, [r7, #20]
 800084a:	2200      	movs	r2, #0
 800084c:	615a      	str	r2, [r3, #20]
 800084e:	697b      	ldr	r3, [r7, #20]
 8000850:	2200      	movs	r2, #0
 8000852:	61da      	str	r2, [r3, #28]
 8000854:	697b      	ldr	r3, [r7, #20]
 8000856:	2200      	movs	r2, #0
 8000858:	621a      	str	r2, [r3, #32]
 800085a:	697b      	ldr	r3, [r7, #20]
 800085c:	2200      	movs	r2, #0
 800085e:	625a      	str	r2, [r3, #36]	; 0x24
 8000860:	697b      	ldr	r3, [r7, #20]
 8000862:	687a      	ldr	r2, [r7, #4]
 8000864:	629a      	str	r2, [r3, #40]	; 0x28
 8000866:	697b      	ldr	r3, [r7, #20]
 8000868:	2200      	movs	r2, #0
 800086a:	705a      	strb	r2, [r3, #1]
 800086c:	697b      	ldr	r3, [r7, #20]
 800086e:	2200      	movs	r2, #0
 8000870:	701a      	strb	r2, [r3, #0]
 8000872:	697b      	ldr	r3, [r7, #20]
 8000874:	2200      	movs	r2, #0
 8000876:	761a      	strb	r2, [r3, #24]
 8000878:	7bfb      	ldrb	r3, [r7, #15]
 800087a:	68b9      	ldr	r1, [r7, #8]
 800087c:	4618      	mov	r0, r3
 800087e:	f001 f8f5 	bl	8001a6c <USB_SetSEPxCTRL>
 8000882:	2300      	movs	r3, #0
 8000884:	4618      	mov	r0, r3
 8000886:	3718      	adds	r7, #24
 8000888:	46bd      	mov	sp, r7
 800088a:	bd80      	pop	{r7, pc}
 800088c:	200005b0 	.word	0x200005b0

08000890 <USB_EP_Reset>:
 8000890:	b580      	push	{r7, lr}
 8000892:	b084      	sub	sp, #16
 8000894:	af00      	add	r7, sp, #0
 8000896:	4603      	mov	r3, r0
 8000898:	71fb      	strb	r3, [r7, #7]
 800089a:	79fb      	ldrb	r3, [r7, #7]
 800089c:	222c      	movs	r2, #44	; 0x2c
 800089e:	fb02 f303 	mul.w	r3, r2, r3
 80008a2:	4a09      	ldr	r2, [pc, #36]	; (80008c8 <USB_EP_Reset+0x38>)
 80008a4:	4413      	add	r3, r2
 80008a6:	60fb      	str	r3, [r7, #12]
 80008a8:	68fb      	ldr	r3, [r7, #12]
 80008aa:	2200      	movs	r2, #0
 80008ac:	701a      	strb	r2, [r3, #0]
 80008ae:	68fb      	ldr	r3, [r7, #12]
 80008b0:	2200      	movs	r2, #0
 80008b2:	761a      	strb	r2, [r3, #24]
 80008b4:	79fb      	ldrb	r3, [r7, #7]
 80008b6:	4905      	ldr	r1, [pc, #20]	; (80008cc <USB_EP_Reset+0x3c>)
 80008b8:	4618      	mov	r0, r3
 80008ba:	f001 f8d7 	bl	8001a6c <USB_SetSEPxCTRL>
 80008be:	2300      	movs	r3, #0
 80008c0:	4618      	mov	r0, r3
 80008c2:	3710      	adds	r7, #16
 80008c4:	46bd      	mov	sp, r7
 80008c6:	bd80      	pop	{r7, pc}
 80008c8:	200005b0 	.word	0x200005b0
 80008cc:	00120001 	.word	0x00120001

080008d0 <USB_EP_Idle>:
 80008d0:	b580      	push	{r7, lr}
 80008d2:	b084      	sub	sp, #16
 80008d4:	af00      	add	r7, sp, #0
 80008d6:	4603      	mov	r3, r0
 80008d8:	71fb      	strb	r3, [r7, #7]
 80008da:	79fb      	ldrb	r3, [r7, #7]
 80008dc:	222c      	movs	r2, #44	; 0x2c
 80008de:	fb02 f303 	mul.w	r3, r2, r3
 80008e2:	4a13      	ldr	r2, [pc, #76]	; (8000930 <USB_EP_Idle+0x60>)
 80008e4:	4413      	add	r3, r2
 80008e6:	60bb      	str	r3, [r7, #8]
 80008e8:	f44f 2300 	mov.w	r3, #524288	; 0x80000
 80008ec:	60fb      	str	r3, [r7, #12]
 80008ee:	68bb      	ldr	r3, [r7, #8]
 80008f0:	7e5b      	ldrb	r3, [r3, #25]
 80008f2:	2b00      	cmp	r3, #0
 80008f4:	d103      	bne.n	80008fe <USB_EP_Idle+0x2e>
 80008f6:	68bb      	ldr	r3, [r7, #8]
 80008f8:	7e9b      	ldrb	r3, [r3, #26]
 80008fa:	2b00      	cmp	r3, #0
 80008fc:	d007      	beq.n	800090e <USB_EP_Idle+0x3e>
 80008fe:	68bb      	ldr	r3, [r7, #8]
 8000900:	2201      	movs	r2, #1
 8000902:	701a      	strb	r2, [r3, #0]
 8000904:	68fb      	ldr	r3, [r7, #12]
 8000906:	f043 0302 	orr.w	r3, r3, #2
 800090a:	60fb      	str	r3, [r7, #12]
 800090c:	e002      	b.n	8000914 <USB_EP_Idle+0x44>
 800090e:	68bb      	ldr	r3, [r7, #8]
 8000910:	2200      	movs	r2, #0
 8000912:	701a      	strb	r2, [r3, #0]
 8000914:	68bb      	ldr	r3, [r7, #8]
 8000916:	2200      	movs	r2, #0
 8000918:	705a      	strb	r2, [r3, #1]
 800091a:	79fb      	ldrb	r3, [r7, #7]
 800091c:	68f9      	ldr	r1, [r7, #12]
 800091e:	4618      	mov	r0, r3
 8000920:	f000 faec 	bl	8000efc <USB_EP_SetReady>
 8000924:	2300      	movs	r3, #0
 8000926:	4618      	mov	r0, r3
 8000928:	3710      	adds	r7, #16
 800092a:	46bd      	mov	sp, r7
 800092c:	bd80      	pop	{r7, pc}
 800092e:	bf00      	nop
 8000930:	200005b0 	.word	0x200005b0

08000934 <USB_EP_Stall>:
 8000934:	b580      	push	{r7, lr}
 8000936:	b084      	sub	sp, #16
 8000938:	af00      	add	r7, sp, #0
 800093a:	4603      	mov	r3, r0
 800093c:	460a      	mov	r2, r1
 800093e:	71fb      	strb	r3, [r7, #7]
 8000940:	4613      	mov	r3, r2
 8000942:	71bb      	strb	r3, [r7, #6]
 8000944:	79fb      	ldrb	r3, [r7, #7]
 8000946:	222c      	movs	r2, #44	; 0x2c
 8000948:	fb02 f303 	mul.w	r3, r2, r3
 800094c:	4a12      	ldr	r2, [pc, #72]	; (8000998 <USB_EP_Stall+0x64>)
 800094e:	4413      	add	r3, r2
 8000950:	60bb      	str	r3, [r7, #8]
 8000952:	2300      	movs	r3, #0
 8000954:	60fb      	str	r3, [r7, #12]
 8000956:	79bb      	ldrb	r3, [r7, #6]
 8000958:	2b01      	cmp	r3, #1
 800095a:	d104      	bne.n	8000966 <USB_EP_Stall+0x32>
 800095c:	79fb      	ldrb	r3, [r7, #7]
 800095e:	2b00      	cmp	r3, #0
 8000960:	d101      	bne.n	8000966 <USB_EP_Stall+0x32>
 8000962:	2301      	movs	r3, #1
 8000964:	e014      	b.n	8000990 <USB_EP_Stall+0x5c>
 8000966:	79bb      	ldrb	r3, [r7, #6]
 8000968:	2b01      	cmp	r3, #1
 800096a:	d003      	beq.n	8000974 <USB_EP_Stall+0x40>
 800096c:	68bb      	ldr	r3, [r7, #8]
 800096e:	7e9b      	ldrb	r3, [r3, #26]
 8000970:	2b00      	cmp	r3, #0
 8000972:	d007      	beq.n	8000984 <USB_EP_Stall+0x50>
 8000974:	68bb      	ldr	r3, [r7, #8]
 8000976:	79ba      	ldrb	r2, [r7, #6]
 8000978:	705a      	strb	r2, [r3, #1]
 800097a:	68bb      	ldr	r3, [r7, #8]
 800097c:	2205      	movs	r2, #5
 800097e:	701a      	strb	r2, [r3, #0]
 8000980:	230a      	movs	r3, #10
 8000982:	60fb      	str	r3, [r7, #12]
 8000984:	79fb      	ldrb	r3, [r7, #7]
 8000986:	68f9      	ldr	r1, [r7, #12]
 8000988:	4618      	mov	r0, r3
 800098a:	f000 fab7 	bl	8000efc <USB_EP_SetReady>
 800098e:	2300      	movs	r3, #0
 8000990:	4618      	mov	r0, r3
 8000992:	3710      	adds	r7, #16
 8000994:	46bd      	mov	sp, r7
 8000996:	bd80      	pop	{r7, pc}
 8000998:	200005b0 	.word	0x200005b0

0800099c <USB_EP_doDataIn>:
 800099c:	b580      	push	{r7, lr}
 800099e:	b086      	sub	sp, #24
 80009a0:	af00      	add	r7, sp, #0
 80009a2:	60b9      	str	r1, [r7, #8]
 80009a4:	607a      	str	r2, [r7, #4]
 80009a6:	603b      	str	r3, [r7, #0]
 80009a8:	4603      	mov	r3, r0
 80009aa:	73fb      	strb	r3, [r7, #15]
 80009ac:	7bfb      	ldrb	r3, [r7, #15]
 80009ae:	222c      	movs	r2, #44	; 0x2c
 80009b0:	fb02 f303 	mul.w	r3, r2, r3
 80009b4:	4a13      	ldr	r2, [pc, #76]	; (8000a04 <USB_EP_doDataIn+0x68>)
 80009b6:	4413      	add	r3, r2
 80009b8:	617b      	str	r3, [r7, #20]
 80009ba:	697b      	ldr	r3, [r7, #20]
 80009bc:	7e9b      	ldrb	r3, [r3, #26]
 80009be:	2b00      	cmp	r3, #0
 80009c0:	d001      	beq.n	80009c6 <USB_EP_doDataIn+0x2a>
 80009c2:	2302      	movs	r3, #2
 80009c4:	e000      	b.n	80009c8 <USB_EP_doDataIn+0x2c>
 80009c6:	2301      	movs	r3, #1
 80009c8:	74fb      	strb	r3, [r7, #19]
 80009ca:	697b      	ldr	r3, [r7, #20]
 80009cc:	68ba      	ldr	r2, [r7, #8]
 80009ce:	605a      	str	r2, [r3, #4]
 80009d0:	697b      	ldr	r3, [r7, #20]
 80009d2:	687a      	ldr	r2, [r7, #4]
 80009d4:	609a      	str	r2, [r3, #8]
 80009d6:	697b      	ldr	r3, [r7, #20]
 80009d8:	2220      	movs	r2, #32
 80009da:	611a      	str	r2, [r3, #16]
 80009dc:	697b      	ldr	r3, [r7, #20]
 80009de:	2200      	movs	r2, #0
 80009e0:	60da      	str	r2, [r3, #12]
 80009e2:	697b      	ldr	r3, [r7, #20]
 80009e4:	683a      	ldr	r2, [r7, #0]
 80009e6:	61da      	str	r2, [r3, #28]
 80009e8:	697b      	ldr	r3, [r7, #20]
 80009ea:	2202      	movs	r2, #2
 80009ec:	701a      	strb	r2, [r3, #0]
 80009ee:	7cfa      	ldrb	r2, [r7, #19]
 80009f0:	7bfb      	ldrb	r3, [r7, #15]
 80009f2:	4611      	mov	r1, r2
 80009f4:	4618      	mov	r0, r3
 80009f6:	f000 fa2f 	bl	8000e58 <USB_EP_sendInDataPortion>
 80009fa:	2300      	movs	r3, #0
 80009fc:	4618      	mov	r0, r3
 80009fe:	3718      	adds	r7, #24
 8000a00:	46bd      	mov	sp, r7
 8000a02:	bd80      	pop	{r7, pc}
 8000a04:	200005b0 	.word	0x200005b0

08000a08 <USB_EP_doDataOut>:
 8000a08:	b580      	push	{r7, lr}
 8000a0a:	b086      	sub	sp, #24
 8000a0c:	af00      	add	r7, sp, #0
 8000a0e:	60b9      	str	r1, [r7, #8]
 8000a10:	607a      	str	r2, [r7, #4]
 8000a12:	603b      	str	r3, [r7, #0]
 8000a14:	4603      	mov	r3, r0
 8000a16:	73fb      	strb	r3, [r7, #15]
 8000a18:	7bfb      	ldrb	r3, [r7, #15]
 8000a1a:	222c      	movs	r2, #44	; 0x2c
 8000a1c:	fb02 f303 	mul.w	r3, r2, r3
 8000a20:	4a0e      	ldr	r2, [pc, #56]	; (8000a5c <USB_EP_doDataOut+0x54>)
 8000a22:	4413      	add	r3, r2
 8000a24:	617b      	str	r3, [r7, #20]
 8000a26:	697b      	ldr	r3, [r7, #20]
 8000a28:	68ba      	ldr	r2, [r7, #8]
 8000a2a:	605a      	str	r2, [r3, #4]
 8000a2c:	697b      	ldr	r3, [r7, #20]
 8000a2e:	687a      	ldr	r2, [r7, #4]
 8000a30:	609a      	str	r2, [r3, #8]
 8000a32:	697b      	ldr	r3, [r7, #20]
 8000a34:	2200      	movs	r2, #0
 8000a36:	611a      	str	r2, [r3, #16]
 8000a38:	697b      	ldr	r3, [r7, #20]
 8000a3a:	2200      	movs	r2, #0
 8000a3c:	60da      	str	r2, [r3, #12]
 8000a3e:	697b      	ldr	r3, [r7, #20]
 8000a40:	683a      	ldr	r2, [r7, #0]
 8000a42:	621a      	str	r2, [r3, #32]
 8000a44:	697b      	ldr	r3, [r7, #20]
 8000a46:	2201      	movs	r2, #1
 8000a48:	765a      	strb	r2, [r3, #25]
 8000a4a:	7bfb      	ldrb	r3, [r7, #15]
 8000a4c:	4618      	mov	r0, r3
 8000a4e:	f7ff ff3f 	bl	80008d0 <USB_EP_Idle>
 8000a52:	2300      	movs	r3, #0
 8000a54:	4618      	mov	r0, r3
 8000a56:	3718      	adds	r7, #24
 8000a58:	46bd      	mov	sp, r7
 8000a5a:	bd80      	pop	{r7, pc}
 8000a5c:	200005b0 	.word	0x200005b0

08000a60 <USB_EP_setSetupHandler>:
 8000a60:	b580      	push	{r7, lr}
 8000a62:	b086      	sub	sp, #24
 8000a64:	af00      	add	r7, sp, #0
 8000a66:	4603      	mov	r3, r0
 8000a68:	60b9      	str	r1, [r7, #8]
 8000a6a:	607a      	str	r2, [r7, #4]
 8000a6c:	73fb      	strb	r3, [r7, #15]
 8000a6e:	7bfb      	ldrb	r3, [r7, #15]
 8000a70:	222c      	movs	r2, #44	; 0x2c
 8000a72:	fb02 f303 	mul.w	r3, r2, r3
 8000a76:	4a12      	ldr	r2, [pc, #72]	; (8000ac0 <USB_EP_setSetupHandler+0x60>)
 8000a78:	4413      	add	r3, r2
 8000a7a:	617b      	str	r3, [r7, #20]
 8000a7c:	697b      	ldr	r3, [r7, #20]
 8000a7e:	68ba      	ldr	r2, [r7, #8]
 8000a80:	615a      	str	r2, [r3, #20]
 8000a82:	697b      	ldr	r3, [r7, #20]
 8000a84:	2200      	movs	r2, #0
 8000a86:	609a      	str	r2, [r3, #8]
 8000a88:	697b      	ldr	r3, [r7, #20]
 8000a8a:	2200      	movs	r2, #0
 8000a8c:	611a      	str	r2, [r3, #16]
 8000a8e:	697b      	ldr	r3, [r7, #20]
 8000a90:	2200      	movs	r2, #0
 8000a92:	60da      	str	r2, [r3, #12]
 8000a94:	697b      	ldr	r3, [r7, #20]
 8000a96:	687a      	ldr	r2, [r7, #4]
 8000a98:	625a      	str	r2, [r3, #36]	; 0x24
 8000a9a:	687b      	ldr	r3, [r7, #4]
 8000a9c:	2b00      	cmp	r3, #0
 8000a9e:	bf14      	ite	ne
 8000aa0:	2301      	movne	r3, #1
 8000aa2:	2300      	moveq	r3, #0
 8000aa4:	b2db      	uxtb	r3, r3
 8000aa6:	461a      	mov	r2, r3
 8000aa8:	697b      	ldr	r3, [r7, #20]
 8000aaa:	769a      	strb	r2, [r3, #26]
 8000aac:	7bfb      	ldrb	r3, [r7, #15]
 8000aae:	4618      	mov	r0, r3
 8000ab0:	f7ff ff0e 	bl	80008d0 <USB_EP_Idle>
 8000ab4:	2300      	movs	r3, #0
 8000ab6:	4618      	mov	r0, r3
 8000ab8:	3718      	adds	r7, #24
 8000aba:	46bd      	mov	sp, r7
 8000abc:	bd80      	pop	{r7, pc}
 8000abe:	bf00      	nop
 8000ac0:	200005b0 	.word	0x200005b0

08000ac4 <USB_EP_dispatchEvent>:
 8000ac4:	b590      	push	{r4, r7, lr}
 8000ac6:	b08b      	sub	sp, #44	; 0x2c
 8000ac8:	af00      	add	r7, sp, #0
 8000aca:	4603      	mov	r3, r0
 8000acc:	6039      	str	r1, [r7, #0]
 8000ace:	71fb      	strb	r3, [r7, #7]
 8000ad0:	2300      	movs	r3, #0
 8000ad2:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 8000ad6:	2300      	movs	r3, #0
 8000ad8:	84bb      	strh	r3, [r7, #36]	; 0x24
 8000ada:	79fb      	ldrb	r3, [r7, #7]
 8000adc:	4618      	mov	r0, r3
 8000ade:	f000 ffeb 	bl	8001ab8 <USB_GetSEPxSTS>
 8000ae2:	61f8      	str	r0, [r7, #28]
 8000ae4:	79fb      	ldrb	r3, [r7, #7]
 8000ae6:	4618      	mov	r0, r3
 8000ae8:	f000 fffa 	bl	8001ae0 <USB_GetSEPxTS>
 8000aec:	4603      	mov	r3, r0
 8000aee:	f003 0303 	and.w	r3, r3, #3
 8000af2:	61bb      	str	r3, [r7, #24]
 8000af4:	79fb      	ldrb	r3, [r7, #7]
 8000af6:	4618      	mov	r0, r3
 8000af8:	f000 ffa6 	bl	8001a48 <USB_GetSEPxCTRL>
 8000afc:	6178      	str	r0, [r7, #20]
 8000afe:	79fb      	ldrb	r3, [r7, #7]
 8000b00:	222c      	movs	r2, #44	; 0x2c
 8000b02:	fb02 f303 	mul.w	r3, r2, r3
 8000b06:	4a9f      	ldr	r2, [pc, #636]	; (8000d84 <USB_EP_dispatchEvent+0x2c0>)
 8000b08:	4413      	add	r3, r2
 8000b0a:	613b      	str	r3, [r7, #16]
 8000b0c:	683b      	ldr	r3, [r7, #0]
 8000b0e:	f003 0301 	and.w	r3, r3, #1
 8000b12:	2b00      	cmp	r3, #0
 8000b14:	d002      	beq.n	8000b1c <USB_EP_dispatchEvent+0x58>
 8000b16:	693b      	ldr	r3, [r7, #16]
 8000b18:	2201      	movs	r2, #1
 8000b1a:	761a      	strb	r2, [r3, #24]
 8000b1c:	693b      	ldr	r3, [r7, #16]
 8000b1e:	781b      	ldrb	r3, [r3, #0]
 8000b20:	2b05      	cmp	r3, #5
 8000b22:	f200 818e 	bhi.w	8000e42 <USB_EP_dispatchEvent+0x37e>
 8000b26:	a201      	add	r2, pc, #4	; (adr r2, 8000b2c <USB_EP_dispatchEvent+0x68>)
 8000b28:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000b2c:	08000b45 	.word	0x08000b45
 8000b30:	08000b49 	.word	0x08000b49
 8000b34:	08000baf 	.word	0x08000baf
 8000b38:	08000c9b 	.word	0x08000c9b
 8000b3c:	08000d65 	.word	0x08000d65
 8000b40:	08000e0d 	.word	0x08000e0d
 8000b44:	2300      	movs	r3, #0
 8000b46:	e182      	b.n	8000e4e <USB_EP_dispatchEvent+0x38a>
 8000b48:	697b      	ldr	r3, [r7, #20]
 8000b4a:	f003 0302 	and.w	r3, r3, #2
 8000b4e:	2b00      	cmp	r3, #0
 8000b50:	f040 8170 	bne.w	8000e34 <USB_EP_dispatchEvent+0x370>
 8000b54:	693b      	ldr	r3, [r7, #16]
 8000b56:	7e1b      	ldrb	r3, [r3, #24]
 8000b58:	2b00      	cmp	r3, #0
 8000b5a:	f000 816b 	beq.w	8000e34 <USB_EP_dispatchEvent+0x370>
 8000b5e:	69bb      	ldr	r3, [r7, #24]
 8000b60:	2b02      	cmp	r3, #2
 8000b62:	d10d      	bne.n	8000b80 <USB_EP_dispatchEvent+0xbc>
 8000b64:	693b      	ldr	r3, [r7, #16]
 8000b66:	7e5b      	ldrb	r3, [r3, #25]
 8000b68:	2b00      	cmp	r3, #0
 8000b6a:	d009      	beq.n	8000b80 <USB_EP_dispatchEvent+0xbc>
 8000b6c:	693b      	ldr	r3, [r7, #16]
 8000b6e:	2203      	movs	r2, #3
 8000b70:	701a      	strb	r2, [r3, #0]
 8000b72:	693b      	ldr	r3, [r7, #16]
 8000b74:	2200      	movs	r2, #0
 8000b76:	765a      	strb	r2, [r3, #25]
 8000b78:	2301      	movs	r3, #1
 8000b7a:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 8000b7e:	e015      	b.n	8000bac <USB_EP_dispatchEvent+0xe8>
 8000b80:	69bb      	ldr	r3, [r7, #24]
 8000b82:	2b00      	cmp	r3, #0
 8000b84:	d10a      	bne.n	8000b9c <USB_EP_dispatchEvent+0xd8>
 8000b86:	693b      	ldr	r3, [r7, #16]
 8000b88:	7e9b      	ldrb	r3, [r3, #26]
 8000b8a:	2b00      	cmp	r3, #0
 8000b8c:	d006      	beq.n	8000b9c <USB_EP_dispatchEvent+0xd8>
 8000b8e:	693b      	ldr	r3, [r7, #16]
 8000b90:	2204      	movs	r2, #4
 8000b92:	701a      	strb	r2, [r3, #0]
 8000b94:	2301      	movs	r3, #1
 8000b96:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 8000b9a:	e007      	b.n	8000bac <USB_EP_dispatchEvent+0xe8>
 8000b9c:	2301      	movs	r3, #1
 8000b9e:	84bb      	strh	r3, [r7, #36]	; 0x24
 8000ba0:	79fb      	ldrb	r3, [r7, #7]
 8000ba2:	2100      	movs	r1, #0
 8000ba4:	4618      	mov	r0, r3
 8000ba6:	f7ff fec5 	bl	8000934 <USB_EP_Stall>
 8000baa:	e143      	b.n	8000e34 <USB_EP_dispatchEvent+0x370>
 8000bac:	e142      	b.n	8000e34 <USB_EP_dispatchEvent+0x370>
 8000bae:	697b      	ldr	r3, [r7, #20]
 8000bb0:	f003 0302 	and.w	r3, r3, #2
 8000bb4:	2b00      	cmp	r3, #0
 8000bb6:	d141      	bne.n	8000c3c <USB_EP_dispatchEvent+0x178>
 8000bb8:	693b      	ldr	r3, [r7, #16]
 8000bba:	7e1b      	ldrb	r3, [r3, #24]
 8000bbc:	2b00      	cmp	r3, #0
 8000bbe:	d03d      	beq.n	8000c3c <USB_EP_dispatchEvent+0x178>
 8000bc0:	69bb      	ldr	r3, [r7, #24]
 8000bc2:	2b01      	cmp	r3, #1
 8000bc4:	d13a      	bne.n	8000c3c <USB_EP_dispatchEvent+0x178>
 8000bc6:	69fb      	ldr	r3, [r7, #28]
 8000bc8:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000bcc:	2b00      	cmp	r3, #0
 8000bce:	d035      	beq.n	8000c3c <USB_EP_dispatchEvent+0x178>
 8000bd0:	693b      	ldr	r3, [r7, #16]
 8000bd2:	68da      	ldr	r2, [r3, #12]
 8000bd4:	693b      	ldr	r3, [r7, #16]
 8000bd6:	691b      	ldr	r3, [r3, #16]
 8000bd8:	441a      	add	r2, r3
 8000bda:	693b      	ldr	r3, [r7, #16]
 8000bdc:	60da      	str	r2, [r3, #12]
 8000bde:	693b      	ldr	r3, [r7, #16]
 8000be0:	68da      	ldr	r2, [r3, #12]
 8000be2:	693b      	ldr	r3, [r7, #16]
 8000be4:	689b      	ldr	r3, [r3, #8]
 8000be6:	429a      	cmp	r2, r3
 8000be8:	d322      	bcc.n	8000c30 <USB_EP_dispatchEvent+0x16c>
 8000bea:	693b      	ldr	r3, [r7, #16]
 8000bec:	2200      	movs	r2, #0
 8000bee:	701a      	strb	r2, [r3, #0]
 8000bf0:	693b      	ldr	r3, [r7, #16]
 8000bf2:	69db      	ldr	r3, [r3, #28]
 8000bf4:	2b00      	cmp	r3, #0
 8000bf6:	d009      	beq.n	8000c0c <USB_EP_dispatchEvent+0x148>
 8000bf8:	693b      	ldr	r3, [r7, #16]
 8000bfa:	69db      	ldr	r3, [r3, #28]
 8000bfc:	693a      	ldr	r2, [r7, #16]
 8000bfe:	6851      	ldr	r1, [r2, #4]
 8000c00:	693a      	ldr	r2, [r7, #16]
 8000c02:	6892      	ldr	r2, [r2, #8]
 8000c04:	79f8      	ldrb	r0, [r7, #7]
 8000c06:	4798      	blx	r3
 8000c08:	4603      	mov	r3, r0
 8000c0a:	84bb      	strh	r3, [r7, #36]	; 0x24
 8000c0c:	8cbb      	ldrh	r3, [r7, #36]	; 0x24
 8000c0e:	2b00      	cmp	r3, #0
 8000c10:	d108      	bne.n	8000c24 <USB_EP_dispatchEvent+0x160>
 8000c12:	693b      	ldr	r3, [r7, #16]
 8000c14:	781b      	ldrb	r3, [r3, #0]
 8000c16:	2b00      	cmp	r3, #0
 8000c18:	d13d      	bne.n	8000c96 <USB_EP_dispatchEvent+0x1d2>
 8000c1a:	79fb      	ldrb	r3, [r7, #7]
 8000c1c:	4618      	mov	r0, r3
 8000c1e:	f7ff fe57 	bl	80008d0 <USB_EP_Idle>
 8000c22:	e038      	b.n	8000c96 <USB_EP_dispatchEvent+0x1d2>
 8000c24:	79fb      	ldrb	r3, [r7, #7]
 8000c26:	2100      	movs	r1, #0
 8000c28:	4618      	mov	r0, r3
 8000c2a:	f7ff fe83 	bl	8000934 <USB_EP_Stall>
 8000c2e:	e032      	b.n	8000c96 <USB_EP_dispatchEvent+0x1d2>
 8000c30:	79fb      	ldrb	r3, [r7, #7]
 8000c32:	2101      	movs	r1, #1
 8000c34:	4618      	mov	r0, r3
 8000c36:	f000 f90f 	bl	8000e58 <USB_EP_sendInDataPortion>
 8000c3a:	e02c      	b.n	8000c96 <USB_EP_dispatchEvent+0x1d2>
 8000c3c:	69fb      	ldr	r3, [r7, #28]
 8000c3e:	f003 030f 	and.w	r3, r3, #15
 8000c42:	2b00      	cmp	r3, #0
 8000c44:	f000 80f8 	beq.w	8000e38 <USB_EP_dispatchEvent+0x374>
 8000c48:	693b      	ldr	r3, [r7, #16]
 8000c4a:	2200      	movs	r2, #0
 8000c4c:	701a      	strb	r2, [r3, #0]
 8000c4e:	693b      	ldr	r3, [r7, #16]
 8000c50:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8000c52:	2b00      	cmp	r3, #0
 8000c54:	d008      	beq.n	8000c68 <USB_EP_dispatchEvent+0x1a4>
 8000c56:	693b      	ldr	r3, [r7, #16]
 8000c58:	6a9c      	ldr	r4, [r3, #40]	; 0x28
 8000c5a:	79f8      	ldrb	r0, [r7, #7]
 8000c5c:	697b      	ldr	r3, [r7, #20]
 8000c5e:	69ba      	ldr	r2, [r7, #24]
 8000c60:	69f9      	ldr	r1, [r7, #28]
 8000c62:	47a0      	blx	r4
 8000c64:	4603      	mov	r3, r0
 8000c66:	84bb      	strh	r3, [r7, #36]	; 0x24
 8000c68:	8cbb      	ldrh	r3, [r7, #36]	; 0x24
 8000c6a:	2b00      	cmp	r3, #0
 8000c6c:	d10d      	bne.n	8000c8a <USB_EP_dispatchEvent+0x1c6>
 8000c6e:	693b      	ldr	r3, [r7, #16]
 8000c70:	781b      	ldrb	r3, [r3, #0]
 8000c72:	2b00      	cmp	r3, #0
 8000c74:	f040 80e0 	bne.w	8000e38 <USB_EP_dispatchEvent+0x374>
 8000c78:	693b      	ldr	r3, [r7, #16]
 8000c7a:	2202      	movs	r2, #2
 8000c7c:	701a      	strb	r2, [r3, #0]
 8000c7e:	79fb      	ldrb	r3, [r7, #7]
 8000c80:	2100      	movs	r1, #0
 8000c82:	4618      	mov	r0, r3
 8000c84:	f000 f8e8 	bl	8000e58 <USB_EP_sendInDataPortion>
 8000c88:	e0d6      	b.n	8000e38 <USB_EP_dispatchEvent+0x374>
 8000c8a:	79fb      	ldrb	r3, [r7, #7]
 8000c8c:	2100      	movs	r1, #0
 8000c8e:	4618      	mov	r0, r3
 8000c90:	f7ff fe50 	bl	8000934 <USB_EP_Stall>
 8000c94:	e0d0      	b.n	8000e38 <USB_EP_dispatchEvent+0x374>
 8000c96:	bf00      	nop
 8000c98:	e0ce      	b.n	8000e38 <USB_EP_dispatchEvent+0x374>
 8000c9a:	697b      	ldr	r3, [r7, #20]
 8000c9c:	f003 0302 	and.w	r3, r3, #2
 8000ca0:	2b00      	cmp	r3, #0
 8000ca2:	f040 80cb 	bne.w	8000e3c <USB_EP_dispatchEvent+0x378>
 8000ca6:	693b      	ldr	r3, [r7, #16]
 8000ca8:	7e1b      	ldrb	r3, [r3, #24]
 8000caa:	2b00      	cmp	r3, #0
 8000cac:	f000 80c6 	beq.w	8000e3c <USB_EP_dispatchEvent+0x378>
 8000cb0:	2300      	movs	r3, #0
 8000cb2:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 8000cb6:	79fb      	ldrb	r3, [r7, #7]
 8000cb8:	4618      	mov	r0, r3
 8000cba:	f000 ffef 	bl	8001c9c <USB_GetSEPxRXFDC>
 8000cbe:	60f8      	str	r0, [r7, #12]
 8000cc0:	2300      	movs	r3, #0
 8000cc2:	623b      	str	r3, [r7, #32]
 8000cc4:	e010      	b.n	8000ce8 <USB_EP_dispatchEvent+0x224>
 8000cc6:	693b      	ldr	r3, [r7, #16]
 8000cc8:	685a      	ldr	r2, [r3, #4]
 8000cca:	693b      	ldr	r3, [r7, #16]
 8000ccc:	68d9      	ldr	r1, [r3, #12]
 8000cce:	6a3b      	ldr	r3, [r7, #32]
 8000cd0:	440b      	add	r3, r1
 8000cd2:	18d4      	adds	r4, r2, r3
 8000cd4:	79fb      	ldrb	r3, [r7, #7]
 8000cd6:	4618      	mov	r0, r3
 8000cd8:	f000 ffce 	bl	8001c78 <USB_GetSEPxRXFD>
 8000cdc:	4603      	mov	r3, r0
 8000cde:	b2db      	uxtb	r3, r3
 8000ce0:	7023      	strb	r3, [r4, #0]
 8000ce2:	6a3b      	ldr	r3, [r7, #32]
 8000ce4:	3301      	adds	r3, #1
 8000ce6:	623b      	str	r3, [r7, #32]
 8000ce8:	6a3a      	ldr	r2, [r7, #32]
 8000cea:	68fb      	ldr	r3, [r7, #12]
 8000cec:	429a      	cmp	r2, r3
 8000cee:	d3ea      	bcc.n	8000cc6 <USB_EP_dispatchEvent+0x202>
 8000cf0:	79fb      	ldrb	r3, [r7, #7]
 8000cf2:	2101      	movs	r1, #1
 8000cf4:	4618      	mov	r0, r3
 8000cf6:	f000 fff9 	bl	8001cec <USB_SetSEPxRXFC>
 8000cfa:	693b      	ldr	r3, [r7, #16]
 8000cfc:	68da      	ldr	r2, [r3, #12]
 8000cfe:	68fb      	ldr	r3, [r7, #12]
 8000d00:	441a      	add	r2, r3
 8000d02:	693b      	ldr	r3, [r7, #16]
 8000d04:	60da      	str	r2, [r3, #12]
 8000d06:	693b      	ldr	r3, [r7, #16]
 8000d08:	68da      	ldr	r2, [r3, #12]
 8000d0a:	693b      	ldr	r3, [r7, #16]
 8000d0c:	689b      	ldr	r3, [r3, #8]
 8000d0e:	429a      	cmp	r2, r3
 8000d10:	d322      	bcc.n	8000d58 <USB_EP_dispatchEvent+0x294>
 8000d12:	693b      	ldr	r3, [r7, #16]
 8000d14:	2200      	movs	r2, #0
 8000d16:	701a      	strb	r2, [r3, #0]
 8000d18:	693b      	ldr	r3, [r7, #16]
 8000d1a:	6a1b      	ldr	r3, [r3, #32]
 8000d1c:	2b00      	cmp	r3, #0
 8000d1e:	d009      	beq.n	8000d34 <USB_EP_dispatchEvent+0x270>
 8000d20:	693b      	ldr	r3, [r7, #16]
 8000d22:	6a1b      	ldr	r3, [r3, #32]
 8000d24:	693a      	ldr	r2, [r7, #16]
 8000d26:	6851      	ldr	r1, [r2, #4]
 8000d28:	693a      	ldr	r2, [r7, #16]
 8000d2a:	68d2      	ldr	r2, [r2, #12]
 8000d2c:	79f8      	ldrb	r0, [r7, #7]
 8000d2e:	4798      	blx	r3
 8000d30:	4603      	mov	r3, r0
 8000d32:	84bb      	strh	r3, [r7, #36]	; 0x24
 8000d34:	8cbb      	ldrh	r3, [r7, #36]	; 0x24
 8000d36:	2b00      	cmp	r3, #0
 8000d38:	d108      	bne.n	8000d4c <USB_EP_dispatchEvent+0x288>
 8000d3a:	693b      	ldr	r3, [r7, #16]
 8000d3c:	781b      	ldrb	r3, [r3, #0]
 8000d3e:	2b00      	cmp	r3, #0
 8000d40:	d17c      	bne.n	8000e3c <USB_EP_dispatchEvent+0x378>
 8000d42:	79fb      	ldrb	r3, [r7, #7]
 8000d44:	4618      	mov	r0, r3
 8000d46:	f7ff fdc3 	bl	80008d0 <USB_EP_Idle>
 8000d4a:	e077      	b.n	8000e3c <USB_EP_dispatchEvent+0x378>
 8000d4c:	79fb      	ldrb	r3, [r7, #7]
 8000d4e:	2100      	movs	r1, #0
 8000d50:	4618      	mov	r0, r3
 8000d52:	f7ff fdef 	bl	8000934 <USB_EP_Stall>
 8000d56:	e071      	b.n	8000e3c <USB_EP_dispatchEvent+0x378>
 8000d58:	79fb      	ldrb	r3, [r7, #7]
 8000d5a:	2102      	movs	r1, #2
 8000d5c:	4618      	mov	r0, r3
 8000d5e:	f000 f8cd 	bl	8000efc <USB_EP_SetReady>
 8000d62:	e06b      	b.n	8000e3c <USB_EP_dispatchEvent+0x378>
 8000d64:	693b      	ldr	r3, [r7, #16]
 8000d66:	7e1b      	ldrb	r3, [r3, #24]
 8000d68:	2b00      	cmp	r3, #0
 8000d6a:	d04b      	beq.n	8000e04 <USB_EP_dispatchEvent+0x340>
 8000d6c:	79fb      	ldrb	r3, [r7, #7]
 8000d6e:	4618      	mov	r0, r3
 8000d70:	f000 ff94 	bl	8001c9c <USB_GetSEPxRXFDC>
 8000d74:	60f8      	str	r0, [r7, #12]
 8000d76:	68fb      	ldr	r3, [r7, #12]
 8000d78:	2b08      	cmp	r3, #8
 8000d7a:	d137      	bne.n	8000dec <USB_EP_dispatchEvent+0x328>
 8000d7c:	2300      	movs	r3, #0
 8000d7e:	623b      	str	r3, [r7, #32]
 8000d80:	e010      	b.n	8000da4 <USB_EP_dispatchEvent+0x2e0>
 8000d82:	bf00      	nop
 8000d84:	200005b0 	.word	0x200005b0
 8000d88:	693b      	ldr	r3, [r7, #16]
 8000d8a:	695a      	ldr	r2, [r3, #20]
 8000d8c:	6a3b      	ldr	r3, [r7, #32]
 8000d8e:	18d4      	adds	r4, r2, r3
 8000d90:	79fb      	ldrb	r3, [r7, #7]
 8000d92:	4618      	mov	r0, r3
 8000d94:	f000 ff70 	bl	8001c78 <USB_GetSEPxRXFD>
 8000d98:	4603      	mov	r3, r0
 8000d9a:	b2db      	uxtb	r3, r3
 8000d9c:	7023      	strb	r3, [r4, #0]
 8000d9e:	6a3b      	ldr	r3, [r7, #32]
 8000da0:	3301      	adds	r3, #1
 8000da2:	623b      	str	r3, [r7, #32]
 8000da4:	6a3a      	ldr	r2, [r7, #32]
 8000da6:	68fb      	ldr	r3, [r7, #12]
 8000da8:	429a      	cmp	r2, r3
 8000daa:	d3ed      	bcc.n	8000d88 <USB_EP_dispatchEvent+0x2c4>
 8000dac:	79fb      	ldrb	r3, [r7, #7]
 8000dae:	2101      	movs	r1, #1
 8000db0:	4618      	mov	r0, r3
 8000db2:	f000 ff9b 	bl	8001cec <USB_SetSEPxRXFC>
 8000db6:	693b      	ldr	r3, [r7, #16]
 8000db8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000dba:	693a      	ldr	r2, [r7, #16]
 8000dbc:	6951      	ldr	r1, [r2, #20]
 8000dbe:	79fa      	ldrb	r2, [r7, #7]
 8000dc0:	4610      	mov	r0, r2
 8000dc2:	4798      	blx	r3
 8000dc4:	4603      	mov	r3, r0
 8000dc6:	84bb      	strh	r3, [r7, #36]	; 0x24
 8000dc8:	8cbb      	ldrh	r3, [r7, #36]	; 0x24
 8000dca:	2b00      	cmp	r3, #0
 8000dcc:	d108      	bne.n	8000de0 <USB_EP_dispatchEvent+0x31c>
 8000dce:	693b      	ldr	r3, [r7, #16]
 8000dd0:	781b      	ldrb	r3, [r3, #0]
 8000dd2:	2b04      	cmp	r3, #4
 8000dd4:	d116      	bne.n	8000e04 <USB_EP_dispatchEvent+0x340>
 8000dd6:	79fb      	ldrb	r3, [r7, #7]
 8000dd8:	4618      	mov	r0, r3
 8000dda:	f7ff fd79 	bl	80008d0 <USB_EP_Idle>
 8000dde:	e011      	b.n	8000e04 <USB_EP_dispatchEvent+0x340>
 8000de0:	79fb      	ldrb	r3, [r7, #7]
 8000de2:	2100      	movs	r1, #0
 8000de4:	4618      	mov	r0, r3
 8000de6:	f7ff fda5 	bl	8000934 <USB_EP_Stall>
 8000dea:	e00b      	b.n	8000e04 <USB_EP_dispatchEvent+0x340>
 8000dec:	79fb      	ldrb	r3, [r7, #7]
 8000dee:	2101      	movs	r1, #1
 8000df0:	4618      	mov	r0, r3
 8000df2:	f000 ff7b 	bl	8001cec <USB_SetSEPxRXFC>
 8000df6:	2301      	movs	r3, #1
 8000df8:	84bb      	strh	r3, [r7, #36]	; 0x24
 8000dfa:	79fb      	ldrb	r3, [r7, #7]
 8000dfc:	2100      	movs	r1, #0
 8000dfe:	4618      	mov	r0, r3
 8000e00:	f7ff fd98 	bl	8000934 <USB_EP_Stall>
 8000e04:	2300      	movs	r3, #0
 8000e06:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 8000e0a:	e01a      	b.n	8000e42 <USB_EP_dispatchEvent+0x37e>
 8000e0c:	697b      	ldr	r3, [r7, #20]
 8000e0e:	f003 0302 	and.w	r3, r3, #2
 8000e12:	2b00      	cmp	r3, #0
 8000e14:	d114      	bne.n	8000e40 <USB_EP_dispatchEvent+0x37c>
 8000e16:	693b      	ldr	r3, [r7, #16]
 8000e18:	785b      	ldrb	r3, [r3, #1]
 8000e1a:	2b01      	cmp	r3, #1
 8000e1c:	d105      	bne.n	8000e2a <USB_EP_dispatchEvent+0x366>
 8000e1e:	79fb      	ldrb	r3, [r7, #7]
 8000e20:	2101      	movs	r1, #1
 8000e22:	4618      	mov	r0, r3
 8000e24:	f7ff fd86 	bl	8000934 <USB_EP_Stall>
 8000e28:	e00a      	b.n	8000e40 <USB_EP_dispatchEvent+0x37c>
 8000e2a:	79fb      	ldrb	r3, [r7, #7]
 8000e2c:	4618      	mov	r0, r3
 8000e2e:	f7ff fd4f 	bl	80008d0 <USB_EP_Idle>
 8000e32:	e005      	b.n	8000e40 <USB_EP_dispatchEvent+0x37c>
 8000e34:	bf00      	nop
 8000e36:	e004      	b.n	8000e42 <USB_EP_dispatchEvent+0x37e>
 8000e38:	bf00      	nop
 8000e3a:	e002      	b.n	8000e42 <USB_EP_dispatchEvent+0x37e>
 8000e3c:	bf00      	nop
 8000e3e:	e000      	b.n	8000e42 <USB_EP_dispatchEvent+0x37e>
 8000e40:	bf00      	nop
 8000e42:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
 8000e46:	2b00      	cmp	r3, #0
 8000e48:	f47f ae68 	bne.w	8000b1c <USB_EP_dispatchEvent+0x58>
 8000e4c:	8cbb      	ldrh	r3, [r7, #36]	; 0x24
 8000e4e:	4618      	mov	r0, r3
 8000e50:	372c      	adds	r7, #44	; 0x2c
 8000e52:	46bd      	mov	sp, r7
 8000e54:	bd90      	pop	{r4, r7, pc}
 8000e56:	bf00      	nop

08000e58 <USB_EP_sendInDataPortion>:
 8000e58:	b580      	push	{r7, lr}
 8000e5a:	b086      	sub	sp, #24
 8000e5c:	af00      	add	r7, sp, #0
 8000e5e:	4603      	mov	r3, r0
 8000e60:	460a      	mov	r2, r1
 8000e62:	71fb      	strb	r3, [r7, #7]
 8000e64:	4613      	mov	r3, r2
 8000e66:	71bb      	strb	r3, [r7, #6]
 8000e68:	79fb      	ldrb	r3, [r7, #7]
 8000e6a:	222c      	movs	r2, #44	; 0x2c
 8000e6c:	fb02 f303 	mul.w	r3, r2, r3
 8000e70:	4a21      	ldr	r2, [pc, #132]	; (8000ef8 <USB_EP_sendInDataPortion+0xa0>)
 8000e72:	4413      	add	r3, r2
 8000e74:	613b      	str	r3, [r7, #16]
 8000e76:	79fb      	ldrb	r3, [r7, #7]
 8000e78:	2101      	movs	r1, #1
 8000e7a:	4618      	mov	r0, r3
 8000e7c:	f000 ff8a 	bl	8001d94 <USB_SetSEPxTXFDC>
 8000e80:	79bb      	ldrb	r3, [r7, #6]
 8000e82:	2b01      	cmp	r3, #1
 8000e84:	d003      	beq.n	8000e8e <USB_EP_sendInDataPortion+0x36>
 8000e86:	2b02      	cmp	r3, #2
 8000e88:	d006      	beq.n	8000e98 <USB_EP_sendInDataPortion+0x40>
 8000e8a:	2b00      	cmp	r3, #0
 8000e8c:	e00a      	b.n	8000ea4 <USB_EP_sendInDataPortion+0x4c>
 8000e8e:	79fb      	ldrb	r3, [r7, #7]
 8000e90:	4618      	mov	r0, r3
 8000e92:	f000 ff95 	bl	8001dc0 <USB_SEPxToggleEPDATASEQ>
 8000e96:	e005      	b.n	8000ea4 <USB_EP_sendInDataPortion+0x4c>
 8000e98:	79fb      	ldrb	r3, [r7, #7]
 8000e9a:	2104      	movs	r1, #4
 8000e9c:	4618      	mov	r0, r3
 8000e9e:	f000 fde5 	bl	8001a6c <USB_SetSEPxCTRL>
 8000ea2:	bf00      	nop
 8000ea4:	693b      	ldr	r3, [r7, #16]
 8000ea6:	689a      	ldr	r2, [r3, #8]
 8000ea8:	693b      	ldr	r3, [r7, #16]
 8000eaa:	68d9      	ldr	r1, [r3, #12]
 8000eac:	693b      	ldr	r3, [r7, #16]
 8000eae:	691b      	ldr	r3, [r3, #16]
 8000eb0:	440b      	add	r3, r1
 8000eb2:	4293      	cmp	r3, r2
 8000eb4:	bf28      	it	cs
 8000eb6:	4613      	movcs	r3, r2
 8000eb8:	60fb      	str	r3, [r7, #12]
 8000eba:	693b      	ldr	r3, [r7, #16]
 8000ebc:	68db      	ldr	r3, [r3, #12]
 8000ebe:	617b      	str	r3, [r7, #20]
 8000ec0:	e00d      	b.n	8000ede <USB_EP_sendInDataPortion+0x86>
 8000ec2:	693b      	ldr	r3, [r7, #16]
 8000ec4:	685a      	ldr	r2, [r3, #4]
 8000ec6:	697b      	ldr	r3, [r7, #20]
 8000ec8:	4413      	add	r3, r2
 8000eca:	781b      	ldrb	r3, [r3, #0]
 8000ecc:	461a      	mov	r2, r3
 8000ece:	79fb      	ldrb	r3, [r7, #7]
 8000ed0:	4611      	mov	r1, r2
 8000ed2:	4618      	mov	r0, r3
 8000ed4:	f000 ff34 	bl	8001d40 <USB_SetSEPxTXFD>
 8000ed8:	697b      	ldr	r3, [r7, #20]
 8000eda:	3301      	adds	r3, #1
 8000edc:	617b      	str	r3, [r7, #20]
 8000ede:	697a      	ldr	r2, [r7, #20]
 8000ee0:	68fb      	ldr	r3, [r7, #12]
 8000ee2:	429a      	cmp	r2, r3
 8000ee4:	d3ed      	bcc.n	8000ec2 <USB_EP_sendInDataPortion+0x6a>
 8000ee6:	79fb      	ldrb	r3, [r7, #7]
 8000ee8:	2102      	movs	r1, #2
 8000eea:	4618      	mov	r0, r3
 8000eec:	f000 f806 	bl	8000efc <USB_EP_SetReady>
 8000ef0:	bf00      	nop
 8000ef2:	3718      	adds	r7, #24
 8000ef4:	46bd      	mov	sp, r7
 8000ef6:	bd80      	pop	{r7, pc}
 8000ef8:	200005b0 	.word	0x200005b0

08000efc <USB_EP_SetReady>:
 8000efc:	b580      	push	{r7, lr}
 8000efe:	b084      	sub	sp, #16
 8000f00:	af00      	add	r7, sp, #0
 8000f02:	4603      	mov	r3, r0
 8000f04:	6039      	str	r1, [r7, #0]
 8000f06:	71fb      	strb	r3, [r7, #7]
 8000f08:	79fb      	ldrb	r3, [r7, #7]
 8000f0a:	222c      	movs	r2, #44	; 0x2c
 8000f0c:	fb02 f303 	mul.w	r3, r2, r3
 8000f10:	4a08      	ldr	r2, [pc, #32]	; (8000f34 <USB_EP_SetReady+0x38>)
 8000f12:	4413      	add	r3, r2
 8000f14:	60fb      	str	r3, [r7, #12]
 8000f16:	201f      	movs	r0, #31
 8000f18:	f000 fe4c 	bl	8001bb4 <USB_SetSIS>
 8000f1c:	68fb      	ldr	r3, [r7, #12]
 8000f1e:	2200      	movs	r2, #0
 8000f20:	761a      	strb	r2, [r3, #24]
 8000f22:	79fb      	ldrb	r3, [r7, #7]
 8000f24:	6839      	ldr	r1, [r7, #0]
 8000f26:	4618      	mov	r0, r3
 8000f28:	f000 fda0 	bl	8001a6c <USB_SetSEPxCTRL>
 8000f2c:	bf00      	nop
 8000f2e:	3710      	adds	r7, #16
 8000f30:	46bd      	mov	sp, r7
 8000f32:	bd80      	pop	{r7, pc}
 8000f34:	200005b0 	.word	0x200005b0

08000f38 <USB_DeviceInit>:
 8000f38:	b580      	push	{r7, lr}
 8000f3a:	b082      	sub	sp, #8
 8000f3c:	af00      	add	r7, sp, #0
 8000f3e:	6078      	str	r0, [r7, #4]
 8000f40:	6039      	str	r1, [r7, #0]
 8000f42:	6878      	ldr	r0, [r7, #4]
 8000f44:	f000 fb2c 	bl	80015a0 <USB_BRGInit>
 8000f48:	f000 fb60 	bl	800160c <USB_Reset>
 8000f4c:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8000f50:	f000 fb80 	bl	8001654 <USB_SetHSCR>
 8000f54:	683b      	ldr	r3, [r7, #0]
 8000f56:	681b      	ldr	r3, [r3, #0]
 8000f58:	4618      	mov	r0, r3
 8000f5a:	f000 fb7b 	bl	8001654 <USB_SetHSCR>
 8000f5e:	683b      	ldr	r3, [r7, #0]
 8000f60:	685a      	ldr	r2, [r3, #4]
 8000f62:	683b      	ldr	r3, [r7, #0]
 8000f64:	689b      	ldr	r3, [r3, #8]
 8000f66:	4313      	orrs	r3, r2
 8000f68:	f043 0301 	orr.w	r3, r3, #1
 8000f6c:	4618      	mov	r0, r3
 8000f6e:	f000 fdeb 	bl	8001b48 <USB_SetSC>
 8000f72:	2200      	movs	r2, #0
 8000f74:	2105      	movs	r1, #5
 8000f76:	2000      	movs	r0, #0
 8000f78:	f7ff fc4c 	bl	8000814 <USB_EP_Init>
 8000f7c:	4a07      	ldr	r2, [pc, #28]	; (8000f9c <USB_DeviceInit+0x64>)
 8000f7e:	4908      	ldr	r1, [pc, #32]	; (8000fa0 <USB_DeviceInit+0x68>)
 8000f80:	2000      	movs	r0, #0
 8000f82:	f7ff fd6d 	bl	8000a60 <USB_EP_setSetupHandler>
 8000f86:	4b07      	ldr	r3, [pc, #28]	; (8000fa4 <USB_DeviceInit+0x6c>)
 8000f88:	2200      	movs	r2, #0
 8000f8a:	701a      	strb	r2, [r3, #0]
 8000f8c:	4b05      	ldr	r3, [pc, #20]	; (8000fa4 <USB_DeviceInit+0x6c>)
 8000f8e:	2200      	movs	r2, #0
 8000f90:	609a      	str	r2, [r3, #8]
 8000f92:	2300      	movs	r3, #0
 8000f94:	4618      	mov	r0, r3
 8000f96:	3708      	adds	r7, #8
 8000f98:	46bd      	mov	sp, r7
 8000f9a:	bd80      	pop	{r7, pc}
 8000f9c:	08000305 	.word	0x08000305
 8000fa0:	20000660 	.word	0x20000660
 8000fa4:	20000668 	.word	0x20000668

08000fa8 <USB_DevicePowerOn>:
 8000fa8:	b580      	push	{r7, lr}
 8000faa:	af00      	add	r7, sp, #0
 8000fac:	200c      	movs	r0, #12
 8000fae:	f000 fb51 	bl	8001654 <USB_SetHSCR>
 8000fb2:	4b03      	ldr	r3, [pc, #12]	; (8000fc0 <USB_DevicePowerOn+0x18>)
 8000fb4:	2202      	movs	r2, #2
 8000fb6:	701a      	strb	r2, [r3, #0]
 8000fb8:	2300      	movs	r3, #0
 8000fba:	4618      	mov	r0, r3
 8000fbc:	bd80      	pop	{r7, pc}
 8000fbe:	bf00      	nop
 8000fc0:	20000668 	.word	0x20000668

08000fc4 <USB_DevicePowerOff>:
 8000fc4:	b580      	push	{r7, lr}
 8000fc6:	af00      	add	r7, sp, #0
 8000fc8:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8000fcc:	f000 fb42 	bl	8001654 <USB_SetHSCR>
 8000fd0:	4b02      	ldr	r3, [pc, #8]	; (8000fdc <USB_DevicePowerOff+0x18>)
 8000fd2:	2200      	movs	r2, #0
 8000fd4:	701a      	strb	r2, [r3, #0]
 8000fd6:	2300      	movs	r3, #0
 8000fd8:	4618      	mov	r0, r3
 8000fda:	bd80      	pop	{r7, pc}
 8000fdc:	20000668 	.word	0x20000668

08000fe0 <USB_DeviceReset>:
 8000fe0:	b480      	push	{r7}
 8000fe2:	af00      	add	r7, sp, #0
 8000fe4:	4b03      	ldr	r3, [pc, #12]	; (8000ff4 <USB_DeviceReset+0x14>)
 8000fe6:	2203      	movs	r2, #3
 8000fe8:	701a      	strb	r2, [r3, #0]
 8000fea:	2300      	movs	r3, #0
 8000fec:	4618      	mov	r0, r3
 8000fee:	46bd      	mov	sp, r7
 8000ff0:	bc80      	pop	{r7}
 8000ff2:	4770      	bx	lr
 8000ff4:	20000668 	.word	0x20000668

08000ff8 <USB_DeviceSuspend>:
 8000ff8:	b480      	push	{r7}
 8000ffa:	af00      	add	r7, sp, #0
 8000ffc:	2300      	movs	r3, #0
 8000ffe:	4618      	mov	r0, r3
 8001000:	46bd      	mov	sp, r7
 8001002:	bc80      	pop	{r7}
 8001004:	4770      	bx	lr
 8001006:	bf00      	nop

08001008 <USB_DeviceResume>:
 8001008:	b480      	push	{r7}
 800100a:	af00      	add	r7, sp, #0
 800100c:	2300      	movs	r3, #0
 800100e:	4618      	mov	r0, r3
 8001010:	46bd      	mov	sp, r7
 8001012:	bc80      	pop	{r7}
 8001014:	4770      	bx	lr
 8001016:	bf00      	nop

08001018 <USB_DeviceSetupPacket>:
 8001018:	b580      	push	{r7, lr}
 800101a:	b088      	sub	sp, #32
 800101c:	af00      	add	r7, sp, #0
 800101e:	4603      	mov	r3, r0
 8001020:	6039      	str	r1, [r7, #0]
 8001022:	71fb      	strb	r3, [r7, #7]
 8001024:	2300      	movs	r3, #0
 8001026:	83fb      	strh	r3, [r7, #30]
 8001028:	683b      	ldr	r3, [r7, #0]
 800102a:	781b      	ldrb	r3, [r3, #0]
 800102c:	f003 0360 	and.w	r3, r3, #96	; 0x60
 8001030:	75fb      	strb	r3, [r7, #23]
 8001032:	683b      	ldr	r3, [r7, #0]
 8001034:	781b      	ldrb	r3, [r3, #0]
 8001036:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
 800103a:	75bb      	strb	r3, [r7, #22]
 800103c:	7dfb      	ldrb	r3, [r7, #23]
 800103e:	2b20      	cmp	r3, #32
 8001040:	f000 814a 	beq.w	80012d8 <USB_DeviceSetupPacket+0x2c0>
 8001044:	2b40      	cmp	r3, #64	; 0x40
 8001046:	f000 814c 	beq.w	80012e2 <USB_DeviceSetupPacket+0x2ca>
 800104a:	2b00      	cmp	r3, #0
 800104c:	f040 814c 	bne.w	80012e8 <USB_DeviceSetupPacket+0x2d0>
 8001050:	2300      	movs	r3, #0
 8001052:	61bb      	str	r3, [r7, #24]
 8001054:	683b      	ldr	r3, [r7, #0]
 8001056:	885b      	ldrh	r3, [r3, #2]
 8001058:	82bb      	strh	r3, [r7, #20]
 800105a:	683b      	ldr	r3, [r7, #0]
 800105c:	889b      	ldrh	r3, [r3, #4]
 800105e:	827b      	strh	r3, [r7, #18]
 8001060:	683b      	ldr	r3, [r7, #0]
 8001062:	88db      	ldrh	r3, [r3, #6]
 8001064:	823b      	strh	r3, [r7, #16]
 8001066:	683b      	ldr	r3, [r7, #0]
 8001068:	781b      	ldrb	r3, [r3, #0]
 800106a:	f003 031f 	and.w	r3, r3, #31
 800106e:	73fb      	strb	r3, [r7, #15]
 8001070:	7bfb      	ldrb	r3, [r7, #15]
 8001072:	2b03      	cmp	r3, #3
 8001074:	d902      	bls.n	800107c <USB_DeviceSetupPacket+0x64>
 8001076:	2302      	movs	r3, #2
 8001078:	83fb      	strh	r3, [r7, #30]
 800107a:	e139      	b.n	80012f0 <USB_DeviceSetupPacket+0x2d8>
 800107c:	683b      	ldr	r3, [r7, #0]
 800107e:	785b      	ldrb	r3, [r3, #1]
 8001080:	2b0c      	cmp	r3, #12
 8001082:	f200 8105 	bhi.w	8001290 <USB_DeviceSetupPacket+0x278>
 8001086:	a201      	add	r2, pc, #4	; (adr r2, 800108c <USB_DeviceSetupPacket+0x74>)
 8001088:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800108c:	080010c1 	.word	0x080010c1
 8001090:	0800113f 	.word	0x0800113f
 8001094:	08001291 	.word	0x08001291
 8001098:	08001171 	.word	0x08001171
 800109c:	08001291 	.word	0x08001291
 80010a0:	080011a3 	.word	0x080011a3
 80010a4:	080011b3 	.word	0x080011b3
 80010a8:	080011c5 	.word	0x080011c5
 80010ac:	080011cb 	.word	0x080011cb
 80010b0:	080011f3 	.word	0x080011f3
 80010b4:	0800121d 	.word	0x0800121d
 80010b8:	08001243 	.word	0x08001243
 80010bc:	08001267 	.word	0x08001267
 80010c0:	7dbb      	ldrb	r3, [r7, #22]
 80010c2:	2b80      	cmp	r3, #128	; 0x80
 80010c4:	d10c      	bne.n	80010e0 <USB_DeviceSetupPacket+0xc8>
 80010c6:	4b8d      	ldr	r3, [pc, #564]	; (80012fc <USB_DeviceSetupPacket+0x2e4>)
 80010c8:	781b      	ldrb	r3, [r3, #0]
 80010ca:	2b04      	cmp	r3, #4
 80010cc:	d10b      	bne.n	80010e6 <USB_DeviceSetupPacket+0xce>
 80010ce:	7bfb      	ldrb	r3, [r7, #15]
 80010d0:	2b01      	cmp	r3, #1
 80010d2:	d005      	beq.n	80010e0 <USB_DeviceSetupPacket+0xc8>
 80010d4:	7bfb      	ldrb	r3, [r7, #15]
 80010d6:	2b02      	cmp	r3, #2
 80010d8:	d105      	bne.n	80010e6 <USB_DeviceSetupPacket+0xce>
 80010da:	8a7b      	ldrh	r3, [r7, #18]
 80010dc:	2b03      	cmp	r3, #3
 80010de:	d902      	bls.n	80010e6 <USB_DeviceSetupPacket+0xce>
 80010e0:	2301      	movs	r3, #1
 80010e2:	83fb      	strh	r3, [r7, #30]
 80010e4:	e0d7      	b.n	8001296 <USB_DeviceSetupPacket+0x27e>
 80010e6:	2300      	movs	r3, #0
 80010e8:	83fb      	strh	r3, [r7, #30]
 80010ea:	8bfb      	ldrh	r3, [r7, #30]
 80010ec:	2b00      	cmp	r3, #0
 80010ee:	f040 80d2 	bne.w	8001296 <USB_DeviceSetupPacket+0x27e>
 80010f2:	7bfb      	ldrb	r3, [r7, #15]
 80010f4:	2b01      	cmp	r3, #1
 80010f6:	d007      	beq.n	8001108 <USB_DeviceSetupPacket+0xf0>
 80010f8:	2b02      	cmp	r3, #2
 80010fa:	d009      	beq.n	8001110 <USB_DeviceSetupPacket+0xf8>
 80010fc:	2b00      	cmp	r3, #0
 80010fe:	d112      	bne.n	8001126 <USB_DeviceSetupPacket+0x10e>
 8001100:	4b7f      	ldr	r3, [pc, #508]	; (8001300 <USB_DeviceSetupPacket+0x2e8>)
 8001102:	2200      	movs	r2, #0
 8001104:	701a      	strb	r2, [r3, #0]
 8001106:	e00e      	b.n	8001126 <USB_DeviceSetupPacket+0x10e>
 8001108:	4b7d      	ldr	r3, [pc, #500]	; (8001300 <USB_DeviceSetupPacket+0x2e8>)
 800110a:	2200      	movs	r2, #0
 800110c:	701a      	strb	r2, [r3, #0]
 800110e:	e00a      	b.n	8001126 <USB_DeviceSetupPacket+0x10e>
 8001110:	8a7b      	ldrh	r3, [r7, #18]
 8001112:	4a7c      	ldr	r2, [pc, #496]	; (8001304 <USB_DeviceSetupPacket+0x2ec>)
 8001114:	212c      	movs	r1, #44	; 0x2c
 8001116:	fb01 f303 	mul.w	r3, r1, r3
 800111a:	4413      	add	r3, r2
 800111c:	3301      	adds	r3, #1
 800111e:	781a      	ldrb	r2, [r3, #0]
 8001120:	4b77      	ldr	r3, [pc, #476]	; (8001300 <USB_DeviceSetupPacket+0x2e8>)
 8001122:	701a      	strb	r2, [r3, #0]
 8001124:	bf00      	nop
 8001126:	4b76      	ldr	r3, [pc, #472]	; (8001300 <USB_DeviceSetupPacket+0x2e8>)
 8001128:	2200      	movs	r2, #0
 800112a:	705a      	strb	r2, [r3, #1]
 800112c:	79f8      	ldrb	r0, [r7, #7]
 800112e:	2300      	movs	r3, #0
 8001130:	2202      	movs	r2, #2
 8001132:	4973      	ldr	r1, [pc, #460]	; (8001300 <USB_DeviceSetupPacket+0x2e8>)
 8001134:	f7ff fc32 	bl	800099c <USB_EP_doDataIn>
 8001138:	4603      	mov	r3, r0
 800113a:	83fb      	strh	r3, [r7, #30]
 800113c:	e0ab      	b.n	8001296 <USB_DeviceSetupPacket+0x27e>
 800113e:	4b6f      	ldr	r3, [pc, #444]	; (80012fc <USB_DeviceSetupPacket+0x2e4>)
 8001140:	781b      	ldrb	r3, [r3, #0]
 8001142:	2b04      	cmp	r3, #4
 8001144:	d10b      	bne.n	800115e <USB_DeviceSetupPacket+0x146>
 8001146:	7bfb      	ldrb	r3, [r7, #15]
 8001148:	2b01      	cmp	r3, #1
 800114a:	d005      	beq.n	8001158 <USB_DeviceSetupPacket+0x140>
 800114c:	7bfb      	ldrb	r3, [r7, #15]
 800114e:	2b02      	cmp	r3, #2
 8001150:	d105      	bne.n	800115e <USB_DeviceSetupPacket+0x146>
 8001152:	8a7b      	ldrh	r3, [r7, #18]
 8001154:	2b03      	cmp	r3, #3
 8001156:	d902      	bls.n	800115e <USB_DeviceSetupPacket+0x146>
 8001158:	2301      	movs	r3, #1
 800115a:	83fb      	strh	r3, [r7, #30]
 800115c:	e0a0      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 800115e:	8a7a      	ldrh	r2, [r7, #18]
 8001160:	8ab9      	ldrh	r1, [r7, #20]
 8001162:	7bfb      	ldrb	r3, [r7, #15]
 8001164:	4618      	mov	r0, r3
 8001166:	f000 f8d1 	bl	800130c <USB_DeviceClearFeature>
 800116a:	4603      	mov	r3, r0
 800116c:	83fb      	strh	r3, [r7, #30]
 800116e:	e097      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 8001170:	4b62      	ldr	r3, [pc, #392]	; (80012fc <USB_DeviceSetupPacket+0x2e4>)
 8001172:	781b      	ldrb	r3, [r3, #0]
 8001174:	2b04      	cmp	r3, #4
 8001176:	d10b      	bne.n	8001190 <USB_DeviceSetupPacket+0x178>
 8001178:	7bfb      	ldrb	r3, [r7, #15]
 800117a:	2b01      	cmp	r3, #1
 800117c:	d005      	beq.n	800118a <USB_DeviceSetupPacket+0x172>
 800117e:	7bfb      	ldrb	r3, [r7, #15]
 8001180:	2b02      	cmp	r3, #2
 8001182:	d105      	bne.n	8001190 <USB_DeviceSetupPacket+0x178>
 8001184:	8a7b      	ldrh	r3, [r7, #18]
 8001186:	2b03      	cmp	r3, #3
 8001188:	d902      	bls.n	8001190 <USB_DeviceSetupPacket+0x178>
 800118a:	2301      	movs	r3, #1
 800118c:	83fb      	strh	r3, [r7, #30]
 800118e:	e087      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 8001190:	8a7a      	ldrh	r2, [r7, #18]
 8001192:	8ab9      	ldrh	r1, [r7, #20]
 8001194:	7bfb      	ldrb	r3, [r7, #15]
 8001196:	4618      	mov	r0, r3
 8001198:	f000 f8d4 	bl	8001344 <USB_DeviceSetFeature>
 800119c:	4603      	mov	r3, r0
 800119e:	83fb      	strh	r3, [r7, #30]
 80011a0:	e07e      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 80011a2:	2300      	movs	r3, #0
 80011a4:	83fb      	strh	r3, [r7, #30]
 80011a6:	8abb      	ldrh	r3, [r7, #20]
 80011a8:	4a54      	ldr	r2, [pc, #336]	; (80012fc <USB_DeviceSetupPacket+0x2e4>)
 80011aa:	6093      	str	r3, [r2, #8]
 80011ac:	4b56      	ldr	r3, [pc, #344]	; (8001308 <USB_DeviceSetupPacket+0x2f0>)
 80011ae:	61bb      	str	r3, [r7, #24]
 80011b0:	e076      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 80011b2:	8a3a      	ldrh	r2, [r7, #16]
 80011b4:	8a79      	ldrh	r1, [r7, #18]
 80011b6:	8abb      	ldrh	r3, [r7, #20]
 80011b8:	4618      	mov	r0, r3
 80011ba:	f7ff f9b7 	bl	800052c <USB_CDC_GetDescriptor>
 80011be:	4603      	mov	r3, r0
 80011c0:	83fb      	strh	r3, [r7, #30]
 80011c2:	e06d      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 80011c4:	2301      	movs	r3, #1
 80011c6:	83fb      	strh	r3, [r7, #30]
 80011c8:	e06a      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 80011ca:	4b4c      	ldr	r3, [pc, #304]	; (80012fc <USB_DeviceSetupPacket+0x2e4>)
 80011cc:	781b      	ldrb	r3, [r3, #0]
 80011ce:	2b04      	cmp	r3, #4
 80011d0:	d103      	bne.n	80011da <USB_DeviceSetupPacket+0x1c2>
 80011d2:	4b4b      	ldr	r3, [pc, #300]	; (8001300 <USB_DeviceSetupPacket+0x2e8>)
 80011d4:	2200      	movs	r2, #0
 80011d6:	701a      	strb	r2, [r3, #0]
 80011d8:	e002      	b.n	80011e0 <USB_DeviceSetupPacket+0x1c8>
 80011da:	4b49      	ldr	r3, [pc, #292]	; (8001300 <USB_DeviceSetupPacket+0x2e8>)
 80011dc:	2201      	movs	r2, #1
 80011de:	701a      	strb	r2, [r3, #0]
 80011e0:	79f8      	ldrb	r0, [r7, #7]
 80011e2:	2300      	movs	r3, #0
 80011e4:	2201      	movs	r2, #1
 80011e6:	4946      	ldr	r1, [pc, #280]	; (8001300 <USB_DeviceSetupPacket+0x2e8>)
 80011e8:	f7ff fbd8 	bl	800099c <USB_EP_doDataIn>
 80011ec:	4603      	mov	r3, r0
 80011ee:	83fb      	strh	r3, [r7, #30]
 80011f0:	e056      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 80011f2:	8abb      	ldrh	r3, [r7, #20]
 80011f4:	2b00      	cmp	r3, #0
 80011f6:	d103      	bne.n	8001200 <USB_DeviceSetupPacket+0x1e8>
 80011f8:	4b40      	ldr	r3, [pc, #256]	; (80012fc <USB_DeviceSetupPacket+0x2e4>)
 80011fa:	2204      	movs	r2, #4
 80011fc:	701a      	strb	r2, [r3, #0]
 80011fe:	e04c      	b.n	800129a <USB_DeviceSetupPacket+0x282>
 8001200:	8abb      	ldrh	r3, [r7, #20]
 8001202:	2b01      	cmp	r3, #1
 8001204:	bf14      	ite	ne
 8001206:	2301      	movne	r3, #1
 8001208:	2300      	moveq	r3, #0
 800120a:	b2db      	uxtb	r3, r3
 800120c:	83fb      	strh	r3, [r7, #30]
 800120e:	8bfb      	ldrh	r3, [r7, #30]
 8001210:	2b00      	cmp	r3, #0
 8001212:	d142      	bne.n	800129a <USB_DeviceSetupPacket+0x282>
 8001214:	4b39      	ldr	r3, [pc, #228]	; (80012fc <USB_DeviceSetupPacket+0x2e4>)
 8001216:	2205      	movs	r2, #5
 8001218:	701a      	strb	r2, [r3, #0]
 800121a:	e03e      	b.n	800129a <USB_DeviceSetupPacket+0x282>
 800121c:	4b37      	ldr	r3, [pc, #220]	; (80012fc <USB_DeviceSetupPacket+0x2e4>)
 800121e:	781b      	ldrb	r3, [r3, #0]
 8001220:	2b04      	cmp	r3, #4
 8001222:	d102      	bne.n	800122a <USB_DeviceSetupPacket+0x212>
 8001224:	2301      	movs	r3, #1
 8001226:	83fb      	strh	r3, [r7, #30]
 8001228:	e03a      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 800122a:	4b35      	ldr	r3, [pc, #212]	; (8001300 <USB_DeviceSetupPacket+0x2e8>)
 800122c:	2200      	movs	r2, #0
 800122e:	701a      	strb	r2, [r3, #0]
 8001230:	79f8      	ldrb	r0, [r7, #7]
 8001232:	2300      	movs	r3, #0
 8001234:	2201      	movs	r2, #1
 8001236:	4932      	ldr	r1, [pc, #200]	; (8001300 <USB_DeviceSetupPacket+0x2e8>)
 8001238:	f7ff fbb0 	bl	800099c <USB_EP_doDataIn>
 800123c:	4603      	mov	r3, r0
 800123e:	83fb      	strh	r3, [r7, #30]
 8001240:	e02e      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 8001242:	4b2e      	ldr	r3, [pc, #184]	; (80012fc <USB_DeviceSetupPacket+0x2e4>)
 8001244:	781b      	ldrb	r3, [r3, #0]
 8001246:	2b04      	cmp	r3, #4
 8001248:	d102      	bne.n	8001250 <USB_DeviceSetupPacket+0x238>
 800124a:	2301      	movs	r3, #1
 800124c:	83fb      	strh	r3, [r7, #30]
 800124e:	e027      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 8001250:	8a7b      	ldrh	r3, [r7, #18]
 8001252:	2b00      	cmp	r3, #0
 8001254:	d102      	bne.n	800125c <USB_DeviceSetupPacket+0x244>
 8001256:	8abb      	ldrh	r3, [r7, #20]
 8001258:	2b00      	cmp	r3, #0
 800125a:	d001      	beq.n	8001260 <USB_DeviceSetupPacket+0x248>
 800125c:	2301      	movs	r3, #1
 800125e:	e000      	b.n	8001262 <USB_DeviceSetupPacket+0x24a>
 8001260:	2300      	movs	r3, #0
 8001262:	83fb      	strh	r3, [r7, #30]
 8001264:	e01c      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 8001266:	4b25      	ldr	r3, [pc, #148]	; (80012fc <USB_DeviceSetupPacket+0x2e4>)
 8001268:	781b      	ldrb	r3, [r3, #0]
 800126a:	2b04      	cmp	r3, #4
 800126c:	d102      	bne.n	8001274 <USB_DeviceSetupPacket+0x25c>
 800126e:	2301      	movs	r3, #1
 8001270:	83fb      	strh	r3, [r7, #30]
 8001272:	e014      	b.n	800129e <USB_DeviceSetupPacket+0x286>
 8001274:	2301      	movs	r3, #1
 8001276:	83fb      	strh	r3, [r7, #30]
 8001278:	8bfb      	ldrh	r3, [r7, #30]
 800127a:	2b00      	cmp	r3, #0
 800127c:	d10f      	bne.n	800129e <USB_DeviceSetupPacket+0x286>
 800127e:	79f8      	ldrb	r0, [r7, #7]
 8001280:	2300      	movs	r3, #0
 8001282:	2202      	movs	r2, #2
 8001284:	491e      	ldr	r1, [pc, #120]	; (8001300 <USB_DeviceSetupPacket+0x2e8>)
 8001286:	f7ff fb89 	bl	800099c <USB_EP_doDataIn>
 800128a:	4603      	mov	r3, r0
 800128c:	83fb      	strh	r3, [r7, #30]
 800128e:	e006      	b.n	800129e <USB_DeviceSetupPacket+0x286>
 8001290:	2302      	movs	r3, #2
 8001292:	83fb      	strh	r3, [r7, #30]
 8001294:	e004      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 8001296:	bf00      	nop
 8001298:	e002      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 800129a:	bf00      	nop
 800129c:	e000      	b.n	80012a0 <USB_DeviceSetupPacket+0x288>
 800129e:	bf00      	nop
 80012a0:	8bfb      	ldrh	r3, [r7, #30]
 80012a2:	2b00      	cmp	r3, #0
 80012a4:	d123      	bne.n	80012ee <USB_DeviceSetupPacket+0x2d6>
 80012a6:	8a3b      	ldrh	r3, [r7, #16]
 80012a8:	2b00      	cmp	r3, #0
 80012aa:	d120      	bne.n	80012ee <USB_DeviceSetupPacket+0x2d6>
 80012ac:	683b      	ldr	r3, [r7, #0]
 80012ae:	781b      	ldrb	r3, [r3, #0]
 80012b0:	b25b      	sxtb	r3, r3
 80012b2:	2b00      	cmp	r3, #0
 80012b4:	da07      	bge.n	80012c6 <USB_DeviceSetupPacket+0x2ae>
 80012b6:	79f8      	ldrb	r0, [r7, #7]
 80012b8:	69bb      	ldr	r3, [r7, #24]
 80012ba:	2200      	movs	r2, #0
 80012bc:	2100      	movs	r1, #0
 80012be:	f7ff fba3 	bl	8000a08 <USB_EP_doDataOut>
 80012c2:	4603      	mov	r3, r0
 80012c4:	e006      	b.n	80012d4 <USB_DeviceSetupPacket+0x2bc>
 80012c6:	79f8      	ldrb	r0, [r7, #7]
 80012c8:	69bb      	ldr	r3, [r7, #24]
 80012ca:	2200      	movs	r2, #0
 80012cc:	2100      	movs	r1, #0
 80012ce:	f7ff fb65 	bl	800099c <USB_EP_doDataIn>
 80012d2:	4603      	mov	r3, r0
 80012d4:	83fb      	strh	r3, [r7, #30]
 80012d6:	e00a      	b.n	80012ee <USB_DeviceSetupPacket+0x2d6>
 80012d8:	f7ff f96c 	bl	80005b4 <USB_CDC_ClassRequest>
 80012dc:	4603      	mov	r3, r0
 80012de:	83fb      	strh	r3, [r7, #30]
 80012e0:	e006      	b.n	80012f0 <USB_DeviceSetupPacket+0x2d8>
 80012e2:	2301      	movs	r3, #1
 80012e4:	83fb      	strh	r3, [r7, #30]
 80012e6:	e003      	b.n	80012f0 <USB_DeviceSetupPacket+0x2d8>
 80012e8:	2302      	movs	r3, #2
 80012ea:	83fb      	strh	r3, [r7, #30]
 80012ec:	e000      	b.n	80012f0 <USB_DeviceSetupPacket+0x2d8>
 80012ee:	bf00      	nop
 80012f0:	8bfb      	ldrh	r3, [r7, #30]
 80012f2:	4618      	mov	r0, r3
 80012f4:	3720      	adds	r7, #32
 80012f6:	46bd      	mov	sp, r7
 80012f8:	bd80      	pop	{r7, pc}
 80012fa:	bf00      	nop
 80012fc:	20000668 	.word	0x20000668
 8001300:	20000674 	.word	0x20000674
 8001304:	200005b0 	.word	0x200005b0
 8001308:	080013bd 	.word	0x080013bd

0800130c <USB_DeviceClearFeature>:
 800130c:	b580      	push	{r7, lr}
 800130e:	b082      	sub	sp, #8
 8001310:	af00      	add	r7, sp, #0
 8001312:	4603      	mov	r3, r0
 8001314:	71fb      	strb	r3, [r7, #7]
 8001316:	460b      	mov	r3, r1
 8001318:	80bb      	strh	r3, [r7, #4]
 800131a:	4613      	mov	r3, r2
 800131c:	807b      	strh	r3, [r7, #2]
 800131e:	79fb      	ldrb	r3, [r7, #7]
 8001320:	2b02      	cmp	r3, #2
 8001322:	d109      	bne.n	8001338 <USB_DeviceClearFeature+0x2c>
 8001324:	88bb      	ldrh	r3, [r7, #4]
 8001326:	2b00      	cmp	r3, #0
 8001328:	d106      	bne.n	8001338 <USB_DeviceClearFeature+0x2c>
 800132a:	887b      	ldrh	r3, [r7, #2]
 800132c:	b2db      	uxtb	r3, r3
 800132e:	4618      	mov	r0, r3
 8001330:	f7ff face 	bl	80008d0 <USB_EP_Idle>
 8001334:	4603      	mov	r3, r0
 8001336:	e000      	b.n	800133a <USB_DeviceClearFeature+0x2e>
 8001338:	2301      	movs	r3, #1
 800133a:	4618      	mov	r0, r3
 800133c:	3708      	adds	r7, #8
 800133e:	46bd      	mov	sp, r7
 8001340:	bd80      	pop	{r7, pc}
 8001342:	bf00      	nop

08001344 <USB_DeviceSetFeature>:
 8001344:	b580      	push	{r7, lr}
 8001346:	b082      	sub	sp, #8
 8001348:	af00      	add	r7, sp, #0
 800134a:	4603      	mov	r3, r0
 800134c:	71fb      	strb	r3, [r7, #7]
 800134e:	460b      	mov	r3, r1
 8001350:	80bb      	strh	r3, [r7, #4]
 8001352:	4613      	mov	r3, r2
 8001354:	807b      	strh	r3, [r7, #2]
 8001356:	79fb      	ldrb	r3, [r7, #7]
 8001358:	2b02      	cmp	r3, #2
 800135a:	d10a      	bne.n	8001372 <USB_DeviceSetFeature+0x2e>
 800135c:	88bb      	ldrh	r3, [r7, #4]
 800135e:	2b00      	cmp	r3, #0
 8001360:	d107      	bne.n	8001372 <USB_DeviceSetFeature+0x2e>
 8001362:	887b      	ldrh	r3, [r7, #2]
 8001364:	b2db      	uxtb	r3, r3
 8001366:	2101      	movs	r1, #1
 8001368:	4618      	mov	r0, r3
 800136a:	f7ff fae3 	bl	8000934 <USB_EP_Stall>
 800136e:	4603      	mov	r3, r0
 8001370:	e000      	b.n	8001374 <USB_DeviceSetFeature+0x30>
 8001372:	2301      	movs	r3, #1
 8001374:	4618      	mov	r0, r3
 8001376:	3708      	adds	r7, #8
 8001378:	46bd      	mov	sp, r7
 800137a:	bd80      	pop	{r7, pc}

0800137c <USB_DeviceDoStatusInAck>:
 800137c:	b480      	push	{r7}
 800137e:	b085      	sub	sp, #20
 8001380:	af00      	add	r7, sp, #0
 8001382:	4603      	mov	r3, r0
 8001384:	60b9      	str	r1, [r7, #8]
 8001386:	607a      	str	r2, [r7, #4]
 8001388:	73fb      	strb	r3, [r7, #15]
 800138a:	2300      	movs	r3, #0
 800138c:	4618      	mov	r0, r3
 800138e:	3714      	adds	r7, #20
 8001390:	46bd      	mov	sp, r7
 8001392:	bc80      	pop	{r7}
 8001394:	4770      	bx	lr
 8001396:	bf00      	nop

08001398 <USB_DeviceDoStatusOutAck>:
 8001398:	b580      	push	{r7, lr}
 800139a:	b084      	sub	sp, #16
 800139c:	af00      	add	r7, sp, #0
 800139e:	4603      	mov	r3, r0
 80013a0:	60b9      	str	r1, [r7, #8]
 80013a2:	607a      	str	r2, [r7, #4]
 80013a4:	73fb      	strb	r3, [r7, #15]
 80013a6:	7bf8      	ldrb	r0, [r7, #15]
 80013a8:	2300      	movs	r3, #0
 80013aa:	2200      	movs	r2, #0
 80013ac:	2100      	movs	r1, #0
 80013ae:	f7ff fb2b 	bl	8000a08 <USB_EP_doDataOut>
 80013b2:	4603      	mov	r3, r0
 80013b4:	4618      	mov	r0, r3
 80013b6:	3710      	adds	r7, #16
 80013b8:	46bd      	mov	sp, r7
 80013ba:	bd80      	pop	{r7, pc}

080013bc <USB_Device_setAddressWork>:
 80013bc:	b580      	push	{r7, lr}
 80013be:	b084      	sub	sp, #16
 80013c0:	af00      	add	r7, sp, #0
 80013c2:	4603      	mov	r3, r0
 80013c4:	60b9      	str	r1, [r7, #8]
 80013c6:	607a      	str	r2, [r7, #4]
 80013c8:	73fb      	strb	r3, [r7, #15]
 80013ca:	4b09      	ldr	r3, [pc, #36]	; (80013f0 <USB_Device_setAddressWork+0x34>)
 80013cc:	689b      	ldr	r3, [r3, #8]
 80013ce:	4618      	mov	r0, r3
 80013d0:	f000 fc36 	bl	8001c40 <USB_SetSA>
 80013d4:	4b06      	ldr	r3, [pc, #24]	; (80013f0 <USB_Device_setAddressWork+0x34>)
 80013d6:	689b      	ldr	r3, [r3, #8]
 80013d8:	2b00      	cmp	r3, #0
 80013da:	d001      	beq.n	80013e0 <USB_Device_setAddressWork+0x24>
 80013dc:	2204      	movs	r2, #4
 80013de:	e000      	b.n	80013e2 <USB_Device_setAddressWork+0x26>
 80013e0:	2203      	movs	r2, #3
 80013e2:	4b03      	ldr	r3, [pc, #12]	; (80013f0 <USB_Device_setAddressWork+0x34>)
 80013e4:	701a      	strb	r2, [r3, #0]
 80013e6:	2300      	movs	r3, #0
 80013e8:	4618      	mov	r0, r3
 80013ea:	3710      	adds	r7, #16
 80013ec:	46bd      	mov	sp, r7
 80013ee:	bd80      	pop	{r7, pc}
 80013f0:	20000668 	.word	0x20000668

080013f4 <USB_DeviceDispatchEvent>:
 80013f4:	b580      	push	{r7, lr}
 80013f6:	b084      	sub	sp, #16
 80013f8:	af00      	add	r7, sp, #0
 80013fa:	2300      	movs	r3, #0
 80013fc:	817b      	strh	r3, [r7, #10]
 80013fe:	2002      	movs	r0, #2
 8001400:	f7ff f9ee 	bl	80007e0 <NVIC_DisableIRQ>
 8001404:	4b19      	ldr	r3, [pc, #100]	; (800146c <USB_DeviceDispatchEvent+0x78>)
 8001406:	681b      	ldr	r3, [r3, #0]
 8001408:	2b00      	cmp	r3, #0
 800140a:	d129      	bne.n	8001460 <USB_DeviceDispatchEvent+0x6c>
 800140c:	4b17      	ldr	r3, [pc, #92]	; (800146c <USB_DeviceDispatchEvent+0x78>)
 800140e:	2201      	movs	r2, #1
 8001410:	601a      	str	r2, [r3, #0]
 8001412:	f000 fbc3 	bl	8001b9c <USB_GetSIS>
 8001416:	6078      	str	r0, [r7, #4]
 8001418:	687b      	ldr	r3, [r7, #4]
 800141a:	f003 0304 	and.w	r3, r3, #4
 800141e:	2b00      	cmp	r3, #0
 8001420:	d003      	beq.n	800142a <USB_DeviceDispatchEvent+0x36>
 8001422:	f7ff fddd 	bl	8000fe0 <USB_DeviceReset>
 8001426:	4603      	mov	r3, r0
 8001428:	817b      	strh	r3, [r7, #10]
 800142a:	2300      	movs	r3, #0
 800142c:	60fb      	str	r3, [r7, #12]
 800142e:	e008      	b.n	8001442 <USB_DeviceDispatchEvent+0x4e>
 8001430:	68fb      	ldr	r3, [r7, #12]
 8001432:	b2db      	uxtb	r3, r3
 8001434:	6879      	ldr	r1, [r7, #4]
 8001436:	4618      	mov	r0, r3
 8001438:	f7ff fb44 	bl	8000ac4 <USB_EP_dispatchEvent>
 800143c:	68fb      	ldr	r3, [r7, #12]
 800143e:	3301      	adds	r3, #1
 8001440:	60fb      	str	r3, [r7, #12]
 8001442:	68fb      	ldr	r3, [r7, #12]
 8001444:	2b03      	cmp	r3, #3
 8001446:	d9f3      	bls.n	8001430 <USB_DeviceDispatchEvent+0x3c>
 8001448:	687b      	ldr	r3, [r7, #4]
 800144a:	f023 0301 	bic.w	r3, r3, #1
 800144e:	4618      	mov	r0, r3
 8001450:	f000 fbb0 	bl	8001bb4 <USB_SetSIS>
 8001454:	4b05      	ldr	r3, [pc, #20]	; (800146c <USB_DeviceDispatchEvent+0x78>)
 8001456:	2200      	movs	r2, #0
 8001458:	601a      	str	r2, [r3, #0]
 800145a:	2002      	movs	r0, #2
 800145c:	f7ff f9a8 	bl	80007b0 <NVIC_EnableIRQ>
 8001460:	897b      	ldrh	r3, [r7, #10]
 8001462:	4618      	mov	r0, r3
 8001464:	3710      	adds	r7, #16
 8001466:	46bd      	mov	sp, r7
 8001468:	bd80      	pop	{r7, pc}
 800146a:	bf00      	nop
 800146c:	20000678 	.word	0x20000678

08001470 <USB_IRQHandler>:
 8001470:	b580      	push	{r7, lr}
 8001472:	af00      	add	r7, sp, #0
 8001474:	f7ff ffbe 	bl	80013f4 <USB_DeviceDispatchEvent>
 8001478:	bf00      	nop
 800147a:	bd80      	pop	{r7, pc}

0800147c <USB_DeviceDummyGetStatus>:
 800147c:	b480      	push	{r7}
 800147e:	b083      	sub	sp, #12
 8001480:	af00      	add	r7, sp, #0
 8001482:	4603      	mov	r3, r0
 8001484:	460a      	mov	r2, r1
 8001486:	71fb      	strb	r3, [r7, #7]
 8001488:	4613      	mov	r3, r2
 800148a:	80bb      	strh	r3, [r7, #4]
 800148c:	2300      	movs	r3, #0
 800148e:	4618      	mov	r0, r3
 8001490:	370c      	adds	r7, #12
 8001492:	46bd      	mov	sp, r7
 8001494:	bc80      	pop	{r7}
 8001496:	4770      	bx	lr

08001498 <USB_DeviceDummySetAddress>:
 8001498:	b480      	push	{r7}
 800149a:	b083      	sub	sp, #12
 800149c:	af00      	add	r7, sp, #0
 800149e:	4603      	mov	r3, r0
 80014a0:	80fb      	strh	r3, [r7, #6]
 80014a2:	2300      	movs	r3, #0
 80014a4:	4618      	mov	r0, r3
 80014a6:	370c      	adds	r7, #12
 80014a8:	46bd      	mov	sp, r7
 80014aa:	bc80      	pop	{r7}
 80014ac:	4770      	bx	lr
 80014ae:	bf00      	nop

080014b0 <USB_DeviceDummyGetDescriptor>:
 80014b0:	b480      	push	{r7}
 80014b2:	b083      	sub	sp, #12
 80014b4:	af00      	add	r7, sp, #0
 80014b6:	4603      	mov	r3, r0
 80014b8:	80fb      	strh	r3, [r7, #6]
 80014ba:	460b      	mov	r3, r1
 80014bc:	80bb      	strh	r3, [r7, #4]
 80014be:	4613      	mov	r3, r2
 80014c0:	807b      	strh	r3, [r7, #2]
 80014c2:	2301      	movs	r3, #1
 80014c4:	4618      	mov	r0, r3
 80014c6:	370c      	adds	r7, #12
 80014c8:	46bd      	mov	sp, r7
 80014ca:	bc80      	pop	{r7}
 80014cc:	4770      	bx	lr
 80014ce:	bf00      	nop

080014d0 <USB_DeviceDummySetDescriptor>:
 80014d0:	b480      	push	{r7}
 80014d2:	b083      	sub	sp, #12
 80014d4:	af00      	add	r7, sp, #0
 80014d6:	4603      	mov	r3, r0
 80014d8:	80fb      	strh	r3, [r7, #6]
 80014da:	460b      	mov	r3, r1
 80014dc:	80bb      	strh	r3, [r7, #4]
 80014de:	4613      	mov	r3, r2
 80014e0:	807b      	strh	r3, [r7, #2]
 80014e2:	2301      	movs	r3, #1
 80014e4:	4618      	mov	r0, r3
 80014e6:	370c      	adds	r7, #12
 80014e8:	46bd      	mov	sp, r7
 80014ea:	bc80      	pop	{r7}
 80014ec:	4770      	bx	lr
 80014ee:	bf00      	nop

080014f0 <USB_DeviceDummyGetConfiguration>:
 80014f0:	b480      	push	{r7}
 80014f2:	af00      	add	r7, sp, #0
 80014f4:	2301      	movs	r3, #1
 80014f6:	4618      	mov	r0, r3
 80014f8:	46bd      	mov	sp, r7
 80014fa:	bc80      	pop	{r7}
 80014fc:	4770      	bx	lr
 80014fe:	bf00      	nop

08001500 <USB_DeviceDummySetConfiguration>:
 8001500:	b480      	push	{r7}
 8001502:	b083      	sub	sp, #12
 8001504:	af00      	add	r7, sp, #0
 8001506:	4603      	mov	r3, r0
 8001508:	80fb      	strh	r3, [r7, #6]
 800150a:	2301      	movs	r3, #1
 800150c:	4618      	mov	r0, r3
 800150e:	370c      	adds	r7, #12
 8001510:	46bd      	mov	sp, r7
 8001512:	bc80      	pop	{r7}
 8001514:	4770      	bx	lr
 8001516:	bf00      	nop

08001518 <USB_DeviceDummyGetInterface>:
 8001518:	b480      	push	{r7}
 800151a:	b083      	sub	sp, #12
 800151c:	af00      	add	r7, sp, #0
 800151e:	4603      	mov	r3, r0
 8001520:	80fb      	strh	r3, [r7, #6]
 8001522:	2300      	movs	r3, #0
 8001524:	4618      	mov	r0, r3
 8001526:	370c      	adds	r7, #12
 8001528:	46bd      	mov	sp, r7
 800152a:	bc80      	pop	{r7}
 800152c:	4770      	bx	lr
 800152e:	bf00      	nop

08001530 <USB_DeviceDummySetInterface>:
 8001530:	b480      	push	{r7}
 8001532:	b083      	sub	sp, #12
 8001534:	af00      	add	r7, sp, #0
 8001536:	4603      	mov	r3, r0
 8001538:	460a      	mov	r2, r1
 800153a:	80fb      	strh	r3, [r7, #6]
 800153c:	4613      	mov	r3, r2
 800153e:	80bb      	strh	r3, [r7, #4]
 8001540:	2300      	movs	r3, #0
 8001542:	4618      	mov	r0, r3
 8001544:	370c      	adds	r7, #12
 8001546:	46bd      	mov	sp, r7
 8001548:	bc80      	pop	{r7}
 800154a:	4770      	bx	lr

0800154c <USB_DeviceDummySyncFrame>:
 800154c:	b480      	push	{r7}
 800154e:	b083      	sub	sp, #12
 8001550:	af00      	add	r7, sp, #0
 8001552:	4603      	mov	r3, r0
 8001554:	6039      	str	r1, [r7, #0]
 8001556:	80fb      	strh	r3, [r7, #6]
 8001558:	2301      	movs	r3, #1
 800155a:	4618      	mov	r0, r3
 800155c:	370c      	adds	r7, #12
 800155e:	46bd      	mov	sp, r7
 8001560:	bc80      	pop	{r7}
 8001562:	4770      	bx	lr

08001564 <USB_DeviceDummyClassRequest>:
 8001564:	b480      	push	{r7}
 8001566:	af00      	add	r7, sp, #0
 8001568:	2301      	movs	r3, #1
 800156a:	4618      	mov	r0, r3
 800156c:	46bd      	mov	sp, r7
 800156e:	bc80      	pop	{r7}
 8001570:	4770      	bx	lr
 8001572:	bf00      	nop

08001574 <USB_DeviceDummyVendorRequest>:
 8001574:	b480      	push	{r7}
 8001576:	af00      	add	r7, sp, #0
 8001578:	2301      	movs	r3, #1
 800157a:	4618      	mov	r0, r3
 800157c:	46bd      	mov	sp, r7
 800157e:	bc80      	pop	{r7}
 8001580:	4770      	bx	lr
 8001582:	bf00      	nop

08001584 <USB_DeviceDummyDataError>:
 8001584:	b480      	push	{r7}
 8001586:	b085      	sub	sp, #20
 8001588:	af00      	add	r7, sp, #0
 800158a:	60b9      	str	r1, [r7, #8]
 800158c:	607a      	str	r2, [r7, #4]
 800158e:	603b      	str	r3, [r7, #0]
 8001590:	4603      	mov	r3, r0
 8001592:	73fb      	strb	r3, [r7, #15]
 8001594:	2301      	movs	r3, #1
 8001596:	4618      	mov	r0, r3
 8001598:	3714      	adds	r7, #20
 800159a:	46bd      	mov	sp, r7
 800159c:	bc80      	pop	{r7}
 800159e:	4770      	bx	lr

080015a0 <USB_BRGInit>:
 80015a0:	b480      	push	{r7}
 80015a2:	b085      	sub	sp, #20
 80015a4:	af00      	add	r7, sp, #0
 80015a6:	6078      	str	r0, [r7, #4]
 80015a8:	4b17      	ldr	r3, [pc, #92]	; (8001608 <USB_BRGInit+0x68>)
 80015aa:	691b      	ldr	r3, [r3, #16]
 80015ac:	60fb      	str	r3, [r7, #12]
 80015ae:	68fb      	ldr	r3, [r7, #12]
 80015b0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80015b4:	60fb      	str	r3, [r7, #12]
 80015b6:	687b      	ldr	r3, [r7, #4]
 80015b8:	681b      	ldr	r3, [r3, #0]
 80015ba:	68fa      	ldr	r2, [r7, #12]
 80015bc:	4313      	orrs	r3, r2
 80015be:	60fb      	str	r3, [r7, #12]
 80015c0:	68fb      	ldr	r3, [r7, #12]
 80015c2:	f043 0304 	orr.w	r3, r3, #4
 80015c6:	60fb      	str	r3, [r7, #12]
 80015c8:	4a0f      	ldr	r2, [pc, #60]	; (8001608 <USB_BRGInit+0x68>)
 80015ca:	68fb      	ldr	r3, [r7, #12]
 80015cc:	6113      	str	r3, [r2, #16]
 80015ce:	4b0e      	ldr	r3, [pc, #56]	; (8001608 <USB_BRGInit+0x68>)
 80015d0:	685b      	ldr	r3, [r3, #4]
 80015d2:	60fb      	str	r3, [r7, #12]
 80015d4:	68fb      	ldr	r3, [r7, #12]
 80015d6:	f043 0301 	orr.w	r3, r3, #1
 80015da:	60fb      	str	r3, [r7, #12]
 80015dc:	687b      	ldr	r3, [r7, #4]
 80015de:	685b      	ldr	r3, [r3, #4]
 80015e0:	011b      	lsls	r3, r3, #4
 80015e2:	68fa      	ldr	r2, [r7, #12]
 80015e4:	4313      	orrs	r3, r2
 80015e6:	60fb      	str	r3, [r7, #12]
 80015e8:	4a07      	ldr	r2, [pc, #28]	; (8001608 <USB_BRGInit+0x68>)
 80015ea:	68fb      	ldr	r3, [r7, #12]
 80015ec:	6053      	str	r3, [r2, #4]
 80015ee:	bf00      	nop
 80015f0:	4b05      	ldr	r3, [pc, #20]	; (8001608 <USB_BRGInit+0x68>)
 80015f2:	681b      	ldr	r3, [r3, #0]
 80015f4:	f003 0301 	and.w	r3, r3, #1
 80015f8:	2b00      	cmp	r3, #0
 80015fa:	d0f9      	beq.n	80015f0 <USB_BRGInit+0x50>
 80015fc:	bf00      	nop
 80015fe:	3714      	adds	r7, #20
 8001600:	46bd      	mov	sp, r7
 8001602:	bc80      	pop	{r7}
 8001604:	4770      	bx	lr
 8001606:	bf00      	nop
 8001608:	40020000 	.word	0x40020000

0800160c <USB_Reset>:
 800160c:	b580      	push	{r7, lr}
 800160e:	b082      	sub	sp, #8
 8001610:	af00      	add	r7, sp, #0
 8001612:	2002      	movs	r0, #2
 8001614:	f000 f81e 	bl	8001654 <USB_SetHSCR>
 8001618:	2300      	movs	r3, #0
 800161a:	607b      	str	r3, [r7, #4]
 800161c:	e002      	b.n	8001624 <USB_Reset+0x18>
 800161e:	687b      	ldr	r3, [r7, #4]
 8001620:	3301      	adds	r3, #1
 8001622:	607b      	str	r3, [r7, #4]
 8001624:	687b      	ldr	r3, [r7, #4]
 8001626:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 800162a:	d3f8      	bcc.n	800161e <USB_Reset+0x12>
 800162c:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001630:	f000 f810 	bl	8001654 <USB_SetHSCR>
 8001634:	bf00      	nop
 8001636:	3708      	adds	r7, #8
 8001638:	46bd      	mov	sp, r7
 800163a:	bd80      	pop	{r7, pc}

0800163c <USB_GetHSCR>:
 800163c:	b480      	push	{r7}
 800163e:	af00      	add	r7, sp, #0
 8001640:	4b03      	ldr	r3, [pc, #12]	; (8001650 <USB_GetHSCR+0x14>)
 8001642:	f8d3 3380 	ldr.w	r3, [r3, #896]	; 0x380
 8001646:	4618      	mov	r0, r3
 8001648:	46bd      	mov	sp, r7
 800164a:	bc80      	pop	{r7}
 800164c:	4770      	bx	lr
 800164e:	bf00      	nop
 8001650:	40010000 	.word	0x40010000

08001654 <USB_SetHSCR>:
 8001654:	b480      	push	{r7}
 8001656:	b085      	sub	sp, #20
 8001658:	af00      	add	r7, sp, #0
 800165a:	6078      	str	r0, [r7, #4]
 800165c:	4b0b      	ldr	r3, [pc, #44]	; (800168c <USB_SetHSCR+0x38>)
 800165e:	f8d3 3380 	ldr.w	r3, [r3, #896]	; 0x380
 8001662:	60fb      	str	r3, [r7, #12]
 8001664:	687b      	ldr	r3, [r7, #4]
 8001666:	b29b      	uxth	r3, r3
 8001668:	68fa      	ldr	r2, [r7, #12]
 800166a:	4313      	orrs	r3, r2
 800166c:	60fb      	str	r3, [r7, #12]
 800166e:	687b      	ldr	r3, [r7, #4]
 8001670:	0c1b      	lsrs	r3, r3, #16
 8001672:	43db      	mvns	r3, r3
 8001674:	68fa      	ldr	r2, [r7, #12]
 8001676:	4013      	ands	r3, r2
 8001678:	60fb      	str	r3, [r7, #12]
 800167a:	4a04      	ldr	r2, [pc, #16]	; (800168c <USB_SetHSCR+0x38>)
 800167c:	68fb      	ldr	r3, [r7, #12]
 800167e:	f8c2 3380 	str.w	r3, [r2, #896]	; 0x380
 8001682:	bf00      	nop
 8001684:	3714      	adds	r7, #20
 8001686:	46bd      	mov	sp, r7
 8001688:	bc80      	pop	{r7}
 800168a:	4770      	bx	lr
 800168c:	40010000 	.word	0x40010000

08001690 <USB_GetHSVR>:
 8001690:	b480      	push	{r7}
 8001692:	b085      	sub	sp, #20
 8001694:	af00      	add	r7, sp, #0
 8001696:	4b0f      	ldr	r3, [pc, #60]	; (80016d4 <USB_GetHSVR+0x44>)
 8001698:	f8d3 3384 	ldr.w	r3, [r3, #900]	; 0x384
 800169c:	60fb      	str	r3, [r7, #12]
 800169e:	68fb      	ldr	r3, [r7, #12]
 80016a0:	b2db      	uxtb	r3, r3
 80016a2:	f003 030f 	and.w	r3, r3, #15
 80016a6:	b2db      	uxtb	r3, r3
 80016a8:	713b      	strb	r3, [r7, #4]
 80016aa:	68fb      	ldr	r3, [r7, #12]
 80016ac:	091b      	lsrs	r3, r3, #4
 80016ae:	b2db      	uxtb	r3, r3
 80016b0:	f003 030f 	and.w	r3, r3, #15
 80016b4:	b2db      	uxtb	r3, r3
 80016b6:	717b      	strb	r3, [r7, #5]
 80016b8:	88bb      	ldrh	r3, [r7, #4]
 80016ba:	813b      	strh	r3, [r7, #8]
 80016bc:	2300      	movs	r3, #0
 80016be:	7a3a      	ldrb	r2, [r7, #8]
 80016c0:	f362 0307 	bfi	r3, r2, #0, #8
 80016c4:	7a7a      	ldrb	r2, [r7, #9]
 80016c6:	f362 230f 	bfi	r3, r2, #8, #8
 80016ca:	4618      	mov	r0, r3
 80016cc:	3714      	adds	r7, #20
 80016ce:	46bd      	mov	sp, r7
 80016d0:	bc80      	pop	{r7}
 80016d2:	4770      	bx	lr
 80016d4:	40010000 	.word	0x40010000

080016d8 <USB_GetHTXC>:
 80016d8:	b480      	push	{r7}
 80016da:	af00      	add	r7, sp, #0
 80016dc:	4b02      	ldr	r3, [pc, #8]	; (80016e8 <USB_GetHTXC+0x10>)
 80016de:	681b      	ldr	r3, [r3, #0]
 80016e0:	4618      	mov	r0, r3
 80016e2:	46bd      	mov	sp, r7
 80016e4:	bc80      	pop	{r7}
 80016e6:	4770      	bx	lr
 80016e8:	40010000 	.word	0x40010000

080016ec <USB_SetHTXC>:
 80016ec:	b480      	push	{r7}
 80016ee:	b085      	sub	sp, #20
 80016f0:	af00      	add	r7, sp, #0
 80016f2:	6078      	str	r0, [r7, #4]
 80016f4:	4b0a      	ldr	r3, [pc, #40]	; (8001720 <USB_SetHTXC+0x34>)
 80016f6:	681b      	ldr	r3, [r3, #0]
 80016f8:	60fb      	str	r3, [r7, #12]
 80016fa:	687b      	ldr	r3, [r7, #4]
 80016fc:	b29b      	uxth	r3, r3
 80016fe:	68fa      	ldr	r2, [r7, #12]
 8001700:	4313      	orrs	r3, r2
 8001702:	60fb      	str	r3, [r7, #12]
 8001704:	687b      	ldr	r3, [r7, #4]
 8001706:	0c1b      	lsrs	r3, r3, #16
 8001708:	43db      	mvns	r3, r3
 800170a:	68fa      	ldr	r2, [r7, #12]
 800170c:	4013      	ands	r3, r2
 800170e:	60fb      	str	r3, [r7, #12]
 8001710:	4a03      	ldr	r2, [pc, #12]	; (8001720 <USB_SetHTXC+0x34>)
 8001712:	68fb      	ldr	r3, [r7, #12]
 8001714:	6013      	str	r3, [r2, #0]
 8001716:	bf00      	nop
 8001718:	3714      	adds	r7, #20
 800171a:	46bd      	mov	sp, r7
 800171c:	bc80      	pop	{r7}
 800171e:	4770      	bx	lr
 8001720:	40010000 	.word	0x40010000

08001724 <USB_GetHTXT>:
 8001724:	b480      	push	{r7}
 8001726:	af00      	add	r7, sp, #0
 8001728:	4b02      	ldr	r3, [pc, #8]	; (8001734 <USB_GetHTXT+0x10>)
 800172a:	685b      	ldr	r3, [r3, #4]
 800172c:	4618      	mov	r0, r3
 800172e:	46bd      	mov	sp, r7
 8001730:	bc80      	pop	{r7}
 8001732:	4770      	bx	lr
 8001734:	40010000 	.word	0x40010000

08001738 <USB_SetHTXT>:
 8001738:	b480      	push	{r7}
 800173a:	b083      	sub	sp, #12
 800173c:	af00      	add	r7, sp, #0
 800173e:	6078      	str	r0, [r7, #4]
 8001740:	4a03      	ldr	r2, [pc, #12]	; (8001750 <USB_SetHTXT+0x18>)
 8001742:	687b      	ldr	r3, [r7, #4]
 8001744:	6053      	str	r3, [r2, #4]
 8001746:	bf00      	nop
 8001748:	370c      	adds	r7, #12
 800174a:	46bd      	mov	sp, r7
 800174c:	bc80      	pop	{r7}
 800174e:	4770      	bx	lr
 8001750:	40010000 	.word	0x40010000

08001754 <USB_GetHTXLC>:
 8001754:	b480      	push	{r7}
 8001756:	af00      	add	r7, sp, #0
 8001758:	4b02      	ldr	r3, [pc, #8]	; (8001764 <USB_GetHTXLC+0x10>)
 800175a:	689b      	ldr	r3, [r3, #8]
 800175c:	4618      	mov	r0, r3
 800175e:	46bd      	mov	sp, r7
 8001760:	bc80      	pop	{r7}
 8001762:	4770      	bx	lr
 8001764:	40010000 	.word	0x40010000

08001768 <USB_SetHTXLC>:
 8001768:	b480      	push	{r7}
 800176a:	b085      	sub	sp, #20
 800176c:	af00      	add	r7, sp, #0
 800176e:	6078      	str	r0, [r7, #4]
 8001770:	4b0a      	ldr	r3, [pc, #40]	; (800179c <USB_SetHTXLC+0x34>)
 8001772:	689b      	ldr	r3, [r3, #8]
 8001774:	60fb      	str	r3, [r7, #12]
 8001776:	687b      	ldr	r3, [r7, #4]
 8001778:	b29b      	uxth	r3, r3
 800177a:	68fa      	ldr	r2, [r7, #12]
 800177c:	4313      	orrs	r3, r2
 800177e:	60fb      	str	r3, [r7, #12]
 8001780:	687b      	ldr	r3, [r7, #4]
 8001782:	0c1b      	lsrs	r3, r3, #16
 8001784:	43db      	mvns	r3, r3
 8001786:	68fa      	ldr	r2, [r7, #12]
 8001788:	4013      	ands	r3, r2
 800178a:	60fb      	str	r3, [r7, #12]
 800178c:	4a03      	ldr	r2, [pc, #12]	; (800179c <USB_SetHTXLC+0x34>)
 800178e:	68fb      	ldr	r3, [r7, #12]
 8001790:	6093      	str	r3, [r2, #8]
 8001792:	bf00      	nop
 8001794:	3714      	adds	r7, #20
 8001796:	46bd      	mov	sp, r7
 8001798:	bc80      	pop	{r7}
 800179a:	4770      	bx	lr
 800179c:	40010000 	.word	0x40010000

080017a0 <USB_GetHTXSE>:
 80017a0:	b480      	push	{r7}
 80017a2:	af00      	add	r7, sp, #0
 80017a4:	4b02      	ldr	r3, [pc, #8]	; (80017b0 <USB_GetHTXSE+0x10>)
 80017a6:	68db      	ldr	r3, [r3, #12]
 80017a8:	4618      	mov	r0, r3
 80017aa:	46bd      	mov	sp, r7
 80017ac:	bc80      	pop	{r7}
 80017ae:	4770      	bx	lr
 80017b0:	40010000 	.word	0x40010000

080017b4 <USB_SetHTXSE>:
 80017b4:	b480      	push	{r7}
 80017b6:	b085      	sub	sp, #20
 80017b8:	af00      	add	r7, sp, #0
 80017ba:	6078      	str	r0, [r7, #4]
 80017bc:	4b0a      	ldr	r3, [pc, #40]	; (80017e8 <USB_SetHTXSE+0x34>)
 80017be:	68db      	ldr	r3, [r3, #12]
 80017c0:	60fb      	str	r3, [r7, #12]
 80017c2:	687b      	ldr	r3, [r7, #4]
 80017c4:	b29b      	uxth	r3, r3
 80017c6:	68fa      	ldr	r2, [r7, #12]
 80017c8:	4313      	orrs	r3, r2
 80017ca:	60fb      	str	r3, [r7, #12]
 80017cc:	687b      	ldr	r3, [r7, #4]
 80017ce:	0c1b      	lsrs	r3, r3, #16
 80017d0:	43db      	mvns	r3, r3
 80017d2:	68fa      	ldr	r2, [r7, #12]
 80017d4:	4013      	ands	r3, r2
 80017d6:	60fb      	str	r3, [r7, #12]
 80017d8:	4a03      	ldr	r2, [pc, #12]	; (80017e8 <USB_SetHTXSE+0x34>)
 80017da:	68fb      	ldr	r3, [r7, #12]
 80017dc:	60d3      	str	r3, [r2, #12]
 80017de:	bf00      	nop
 80017e0:	3714      	adds	r7, #20
 80017e2:	46bd      	mov	sp, r7
 80017e4:	bc80      	pop	{r7}
 80017e6:	4770      	bx	lr
 80017e8:	40010000 	.word	0x40010000

080017ec <USB_GetHTXA>:
 80017ec:	b480      	push	{r7}
 80017ee:	af00      	add	r7, sp, #0
 80017f0:	4b02      	ldr	r3, [pc, #8]	; (80017fc <USB_GetHTXA+0x10>)
 80017f2:	691b      	ldr	r3, [r3, #16]
 80017f4:	4618      	mov	r0, r3
 80017f6:	46bd      	mov	sp, r7
 80017f8:	bc80      	pop	{r7}
 80017fa:	4770      	bx	lr
 80017fc:	40010000 	.word	0x40010000

08001800 <USB_SetHTXA>:
 8001800:	b480      	push	{r7}
 8001802:	b083      	sub	sp, #12
 8001804:	af00      	add	r7, sp, #0
 8001806:	6078      	str	r0, [r7, #4]
 8001808:	4a03      	ldr	r2, [pc, #12]	; (8001818 <USB_SetHTXA+0x18>)
 800180a:	687b      	ldr	r3, [r7, #4]
 800180c:	6113      	str	r3, [r2, #16]
 800180e:	bf00      	nop
 8001810:	370c      	adds	r7, #12
 8001812:	46bd      	mov	sp, r7
 8001814:	bc80      	pop	{r7}
 8001816:	4770      	bx	lr
 8001818:	40010000 	.word	0x40010000

0800181c <USB_GetHTXE>:
 800181c:	b480      	push	{r7}
 800181e:	af00      	add	r7, sp, #0
 8001820:	4b02      	ldr	r3, [pc, #8]	; (800182c <USB_GetHTXE+0x10>)
 8001822:	695b      	ldr	r3, [r3, #20]
 8001824:	4618      	mov	r0, r3
 8001826:	46bd      	mov	sp, r7
 8001828:	bc80      	pop	{r7}
 800182a:	4770      	bx	lr
 800182c:	40010000 	.word	0x40010000

08001830 <USB_SetHTXE>:
 8001830:	b480      	push	{r7}
 8001832:	b083      	sub	sp, #12
 8001834:	af00      	add	r7, sp, #0
 8001836:	6078      	str	r0, [r7, #4]
 8001838:	4a03      	ldr	r2, [pc, #12]	; (8001848 <USB_SetHTXE+0x18>)
 800183a:	687b      	ldr	r3, [r7, #4]
 800183c:	6153      	str	r3, [r2, #20]
 800183e:	bf00      	nop
 8001840:	370c      	adds	r7, #12
 8001842:	46bd      	mov	sp, r7
 8001844:	bc80      	pop	{r7}
 8001846:	4770      	bx	lr
 8001848:	40010000 	.word	0x40010000

0800184c <USB_GetHFN>:
 800184c:	b480      	push	{r7}
 800184e:	af00      	add	r7, sp, #0
 8001850:	4b02      	ldr	r3, [pc, #8]	; (800185c <USB_GetHFN+0x10>)
 8001852:	69db      	ldr	r3, [r3, #28]
 8001854:	4618      	mov	r0, r3
 8001856:	46bd      	mov	sp, r7
 8001858:	bc80      	pop	{r7}
 800185a:	4770      	bx	lr
 800185c:	40010000 	.word	0x40010000

08001860 <USB_GetHIS>:
 8001860:	b480      	push	{r7}
 8001862:	af00      	add	r7, sp, #0
 8001864:	4b02      	ldr	r3, [pc, #8]	; (8001870 <USB_GetHIS+0x10>)
 8001866:	6a1b      	ldr	r3, [r3, #32]
 8001868:	4618      	mov	r0, r3
 800186a:	46bd      	mov	sp, r7
 800186c:	bc80      	pop	{r7}
 800186e:	4770      	bx	lr
 8001870:	40010000 	.word	0x40010000

08001874 <USB_SetHIS>:
 8001874:	b480      	push	{r7}
 8001876:	b085      	sub	sp, #20
 8001878:	af00      	add	r7, sp, #0
 800187a:	6078      	str	r0, [r7, #4]
 800187c:	4b0a      	ldr	r3, [pc, #40]	; (80018a8 <USB_SetHIS+0x34>)
 800187e:	6a1b      	ldr	r3, [r3, #32]
 8001880:	60fb      	str	r3, [r7, #12]
 8001882:	687b      	ldr	r3, [r7, #4]
 8001884:	b29b      	uxth	r3, r3
 8001886:	68fa      	ldr	r2, [r7, #12]
 8001888:	4313      	orrs	r3, r2
 800188a:	60fb      	str	r3, [r7, #12]
 800188c:	687b      	ldr	r3, [r7, #4]
 800188e:	0c1b      	lsrs	r3, r3, #16
 8001890:	43db      	mvns	r3, r3
 8001892:	68fa      	ldr	r2, [r7, #12]
 8001894:	4013      	ands	r3, r2
 8001896:	60fb      	str	r3, [r7, #12]
 8001898:	4a03      	ldr	r2, [pc, #12]	; (80018a8 <USB_SetHIS+0x34>)
 800189a:	68fb      	ldr	r3, [r7, #12]
 800189c:	6213      	str	r3, [r2, #32]
 800189e:	bf00      	nop
 80018a0:	3714      	adds	r7, #20
 80018a2:	46bd      	mov	sp, r7
 80018a4:	bc80      	pop	{r7}
 80018a6:	4770      	bx	lr
 80018a8:	40010000 	.word	0x40010000

080018ac <USB_GetHIM>:
 80018ac:	b480      	push	{r7}
 80018ae:	af00      	add	r7, sp, #0
 80018b0:	4b02      	ldr	r3, [pc, #8]	; (80018bc <USB_GetHIM+0x10>)
 80018b2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80018b4:	4618      	mov	r0, r3
 80018b6:	46bd      	mov	sp, r7
 80018b8:	bc80      	pop	{r7}
 80018ba:	4770      	bx	lr
 80018bc:	40010000 	.word	0x40010000

080018c0 <USB_SetHIM>:
 80018c0:	b480      	push	{r7}
 80018c2:	b085      	sub	sp, #20
 80018c4:	af00      	add	r7, sp, #0
 80018c6:	6078      	str	r0, [r7, #4]
 80018c8:	4b0a      	ldr	r3, [pc, #40]	; (80018f4 <USB_SetHIM+0x34>)
 80018ca:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80018cc:	60fb      	str	r3, [r7, #12]
 80018ce:	687b      	ldr	r3, [r7, #4]
 80018d0:	b29b      	uxth	r3, r3
 80018d2:	68fa      	ldr	r2, [r7, #12]
 80018d4:	4313      	orrs	r3, r2
 80018d6:	60fb      	str	r3, [r7, #12]
 80018d8:	687b      	ldr	r3, [r7, #4]
 80018da:	0c1b      	lsrs	r3, r3, #16
 80018dc:	43db      	mvns	r3, r3
 80018de:	68fa      	ldr	r2, [r7, #12]
 80018e0:	4013      	ands	r3, r2
 80018e2:	60fb      	str	r3, [r7, #12]
 80018e4:	4a03      	ldr	r2, [pc, #12]	; (80018f4 <USB_SetHIM+0x34>)
 80018e6:	68fb      	ldr	r3, [r7, #12]
 80018e8:	6253      	str	r3, [r2, #36]	; 0x24
 80018ea:	bf00      	nop
 80018ec:	3714      	adds	r7, #20
 80018ee:	46bd      	mov	sp, r7
 80018f0:	bc80      	pop	{r7}
 80018f2:	4770      	bx	lr
 80018f4:	40010000 	.word	0x40010000

080018f8 <USB_GetHRXS>:
 80018f8:	b480      	push	{r7}
 80018fa:	af00      	add	r7, sp, #0
 80018fc:	4b02      	ldr	r3, [pc, #8]	; (8001908 <USB_GetHRXS+0x10>)
 80018fe:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001900:	4618      	mov	r0, r3
 8001902:	46bd      	mov	sp, r7
 8001904:	bc80      	pop	{r7}
 8001906:	4770      	bx	lr
 8001908:	40010000 	.word	0x40010000

0800190c <USB_GetHRXP>:
 800190c:	b480      	push	{r7}
 800190e:	af00      	add	r7, sp, #0
 8001910:	4b02      	ldr	r3, [pc, #8]	; (800191c <USB_GetHRXP+0x10>)
 8001912:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001914:	4618      	mov	r0, r3
 8001916:	46bd      	mov	sp, r7
 8001918:	bc80      	pop	{r7}
 800191a:	4770      	bx	lr
 800191c:	40010000 	.word	0x40010000

08001920 <USB_GetHRXA>:
 8001920:	b480      	push	{r7}
 8001922:	af00      	add	r7, sp, #0
 8001924:	4b02      	ldr	r3, [pc, #8]	; (8001930 <USB_GetHRXA+0x10>)
 8001926:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001928:	4618      	mov	r0, r3
 800192a:	46bd      	mov	sp, r7
 800192c:	bc80      	pop	{r7}
 800192e:	4770      	bx	lr
 8001930:	40010000 	.word	0x40010000

08001934 <USB_GetHRXE>:
 8001934:	b480      	push	{r7}
 8001936:	af00      	add	r7, sp, #0
 8001938:	4b02      	ldr	r3, [pc, #8]	; (8001944 <USB_GetHRXE+0x10>)
 800193a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800193c:	4618      	mov	r0, r3
 800193e:	46bd      	mov	sp, r7
 8001940:	bc80      	pop	{r7}
 8001942:	4770      	bx	lr
 8001944:	40010000 	.word	0x40010000

08001948 <USB_GetHRXCS>:
 8001948:	b480      	push	{r7}
 800194a:	af00      	add	r7, sp, #0
 800194c:	4b02      	ldr	r3, [pc, #8]	; (8001958 <USB_GetHRXCS+0x10>)
 800194e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8001950:	4618      	mov	r0, r3
 8001952:	46bd      	mov	sp, r7
 8001954:	bc80      	pop	{r7}
 8001956:	4770      	bx	lr
 8001958:	40010000 	.word	0x40010000

0800195c <USB_GetHSTM>:
 800195c:	b480      	push	{r7}
 800195e:	af00      	add	r7, sp, #0
 8001960:	4b02      	ldr	r3, [pc, #8]	; (800196c <USB_GetHSTM+0x10>)
 8001962:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001964:	4618      	mov	r0, r3
 8001966:	46bd      	mov	sp, r7
 8001968:	bc80      	pop	{r7}
 800196a:	4770      	bx	lr
 800196c:	40010000 	.word	0x40010000

08001970 <USB_GetHRXFD>:
 8001970:	b480      	push	{r7}
 8001972:	af00      	add	r7, sp, #0
 8001974:	4b03      	ldr	r3, [pc, #12]	; (8001984 <USB_GetHRXFD+0x14>)
 8001976:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
 800197a:	4618      	mov	r0, r3
 800197c:	46bd      	mov	sp, r7
 800197e:	bc80      	pop	{r7}
 8001980:	4770      	bx	lr
 8001982:	bf00      	nop
 8001984:	40010000 	.word	0x40010000

08001988 <USB_GetHRXFDC>:
 8001988:	b480      	push	{r7}
 800198a:	af00      	add	r7, sp, #0
 800198c:	4b03      	ldr	r3, [pc, #12]	; (800199c <USB_GetHRXFDC+0x14>)
 800198e:	f8d3 308c 	ldr.w	r3, [r3, #140]	; 0x8c
 8001992:	4618      	mov	r0, r3
 8001994:	46bd      	mov	sp, r7
 8001996:	bc80      	pop	{r7}
 8001998:	4770      	bx	lr
 800199a:	bf00      	nop
 800199c:	40010000 	.word	0x40010000

080019a0 <USB_GetHRXFC>:
 80019a0:	b480      	push	{r7}
 80019a2:	af00      	add	r7, sp, #0
 80019a4:	4b03      	ldr	r3, [pc, #12]	; (80019b4 <USB_GetHRXFC+0x14>)
 80019a6:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80019aa:	4618      	mov	r0, r3
 80019ac:	46bd      	mov	sp, r7
 80019ae:	bc80      	pop	{r7}
 80019b0:	4770      	bx	lr
 80019b2:	bf00      	nop
 80019b4:	40010000 	.word	0x40010000

080019b8 <USB_SetHRXFC>:
 80019b8:	b480      	push	{r7}
 80019ba:	b083      	sub	sp, #12
 80019bc:	af00      	add	r7, sp, #0
 80019be:	6078      	str	r0, [r7, #4]
 80019c0:	4a04      	ldr	r2, [pc, #16]	; (80019d4 <USB_SetHRXFC+0x1c>)
 80019c2:	687b      	ldr	r3, [r7, #4]
 80019c4:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 80019c8:	bf00      	nop
 80019ca:	370c      	adds	r7, #12
 80019cc:	46bd      	mov	sp, r7
 80019ce:	bc80      	pop	{r7}
 80019d0:	4770      	bx	lr
 80019d2:	bf00      	nop
 80019d4:	40010000 	.word	0x40010000

080019d8 <USB_GetHTXFD>:
 80019d8:	b480      	push	{r7}
 80019da:	af00      	add	r7, sp, #0
 80019dc:	4b03      	ldr	r3, [pc, #12]	; (80019ec <USB_GetHTXFD+0x14>)
 80019de:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
 80019e2:	4618      	mov	r0, r3
 80019e4:	46bd      	mov	sp, r7
 80019e6:	bc80      	pop	{r7}
 80019e8:	4770      	bx	lr
 80019ea:	bf00      	nop
 80019ec:	40010000 	.word	0x40010000

080019f0 <USB_SetHTXFD>:
 80019f0:	b480      	push	{r7}
 80019f2:	b083      	sub	sp, #12
 80019f4:	af00      	add	r7, sp, #0
 80019f6:	6078      	str	r0, [r7, #4]
 80019f8:	4a04      	ldr	r2, [pc, #16]	; (8001a0c <USB_SetHTXFD+0x1c>)
 80019fa:	687b      	ldr	r3, [r7, #4]
 80019fc:	f8c2 30c0 	str.w	r3, [r2, #192]	; 0xc0
 8001a00:	bf00      	nop
 8001a02:	370c      	adds	r7, #12
 8001a04:	46bd      	mov	sp, r7
 8001a06:	bc80      	pop	{r7}
 8001a08:	4770      	bx	lr
 8001a0a:	bf00      	nop
 8001a0c:	40010000 	.word	0x40010000

08001a10 <USB_GetHTXFC>:
 8001a10:	b480      	push	{r7}
 8001a12:	af00      	add	r7, sp, #0
 8001a14:	4b03      	ldr	r3, [pc, #12]	; (8001a24 <USB_GetHTXFC+0x14>)
 8001a16:	f8d3 30d0 	ldr.w	r3, [r3, #208]	; 0xd0
 8001a1a:	4618      	mov	r0, r3
 8001a1c:	46bd      	mov	sp, r7
 8001a1e:	bc80      	pop	{r7}
 8001a20:	4770      	bx	lr
 8001a22:	bf00      	nop
 8001a24:	40010000 	.word	0x40010000

08001a28 <USB_SetHTXFC>:
 8001a28:	b480      	push	{r7}
 8001a2a:	b083      	sub	sp, #12
 8001a2c:	af00      	add	r7, sp, #0
 8001a2e:	6078      	str	r0, [r7, #4]
 8001a30:	4a04      	ldr	r2, [pc, #16]	; (8001a44 <USB_SetHTXFC+0x1c>)
 8001a32:	687b      	ldr	r3, [r7, #4]
 8001a34:	f8c2 30d0 	str.w	r3, [r2, #208]	; 0xd0
 8001a38:	bf00      	nop
 8001a3a:	370c      	adds	r7, #12
 8001a3c:	46bd      	mov	sp, r7
 8001a3e:	bc80      	pop	{r7}
 8001a40:	4770      	bx	lr
 8001a42:	bf00      	nop
 8001a44:	40010000 	.word	0x40010000

08001a48 <USB_GetSEPxCTRL>:
 8001a48:	b480      	push	{r7}
 8001a4a:	b083      	sub	sp, #12
 8001a4c:	af00      	add	r7, sp, #0
 8001a4e:	4603      	mov	r3, r0
 8001a50:	71fb      	strb	r3, [r7, #7]
 8001a52:	4a05      	ldr	r2, [pc, #20]	; (8001a68 <USB_GetSEPxCTRL+0x20>)
 8001a54:	79fb      	ldrb	r3, [r7, #7]
 8001a56:	3310      	adds	r3, #16
 8001a58:	011b      	lsls	r3, r3, #4
 8001a5a:	4413      	add	r3, r2
 8001a5c:	681b      	ldr	r3, [r3, #0]
 8001a5e:	4618      	mov	r0, r3
 8001a60:	370c      	adds	r7, #12
 8001a62:	46bd      	mov	sp, r7
 8001a64:	bc80      	pop	{r7}
 8001a66:	4770      	bx	lr
 8001a68:	40010000 	.word	0x40010000

08001a6c <USB_SetSEPxCTRL>:
 8001a6c:	b480      	push	{r7}
 8001a6e:	b085      	sub	sp, #20
 8001a70:	af00      	add	r7, sp, #0
 8001a72:	4603      	mov	r3, r0
 8001a74:	6039      	str	r1, [r7, #0]
 8001a76:	71fb      	strb	r3, [r7, #7]
 8001a78:	4a0e      	ldr	r2, [pc, #56]	; (8001ab4 <USB_SetSEPxCTRL+0x48>)
 8001a7a:	79fb      	ldrb	r3, [r7, #7]
 8001a7c:	3310      	adds	r3, #16
 8001a7e:	011b      	lsls	r3, r3, #4
 8001a80:	4413      	add	r3, r2
 8001a82:	681b      	ldr	r3, [r3, #0]
 8001a84:	60fb      	str	r3, [r7, #12]
 8001a86:	683b      	ldr	r3, [r7, #0]
 8001a88:	b29b      	uxth	r3, r3
 8001a8a:	68fa      	ldr	r2, [r7, #12]
 8001a8c:	4313      	orrs	r3, r2
 8001a8e:	60fb      	str	r3, [r7, #12]
 8001a90:	683b      	ldr	r3, [r7, #0]
 8001a92:	0c1b      	lsrs	r3, r3, #16
 8001a94:	43db      	mvns	r3, r3
 8001a96:	68fa      	ldr	r2, [r7, #12]
 8001a98:	4013      	ands	r3, r2
 8001a9a:	60fb      	str	r3, [r7, #12]
 8001a9c:	4a05      	ldr	r2, [pc, #20]	; (8001ab4 <USB_SetSEPxCTRL+0x48>)
 8001a9e:	79fb      	ldrb	r3, [r7, #7]
 8001aa0:	3310      	adds	r3, #16
 8001aa2:	011b      	lsls	r3, r3, #4
 8001aa4:	4413      	add	r3, r2
 8001aa6:	68fa      	ldr	r2, [r7, #12]
 8001aa8:	601a      	str	r2, [r3, #0]
 8001aaa:	bf00      	nop
 8001aac:	3714      	adds	r7, #20
 8001aae:	46bd      	mov	sp, r7
 8001ab0:	bc80      	pop	{r7}
 8001ab2:	4770      	bx	lr
 8001ab4:	40010000 	.word	0x40010000

08001ab8 <USB_GetSEPxSTS>:
 8001ab8:	b480      	push	{r7}
 8001aba:	b083      	sub	sp, #12
 8001abc:	af00      	add	r7, sp, #0
 8001abe:	4603      	mov	r3, r0
 8001ac0:	71fb      	strb	r3, [r7, #7]
 8001ac2:	4a06      	ldr	r2, [pc, #24]	; (8001adc <USB_GetSEPxSTS+0x24>)
 8001ac4:	79fb      	ldrb	r3, [r7, #7]
 8001ac6:	3310      	adds	r3, #16
 8001ac8:	011b      	lsls	r3, r3, #4
 8001aca:	4413      	add	r3, r2
 8001acc:	3304      	adds	r3, #4
 8001ace:	681b      	ldr	r3, [r3, #0]
 8001ad0:	4618      	mov	r0, r3
 8001ad2:	370c      	adds	r7, #12
 8001ad4:	46bd      	mov	sp, r7
 8001ad6:	bc80      	pop	{r7}
 8001ad8:	4770      	bx	lr
 8001ada:	bf00      	nop
 8001adc:	40010000 	.word	0x40010000

08001ae0 <USB_GetSEPxTS>:
 8001ae0:	b480      	push	{r7}
 8001ae2:	b083      	sub	sp, #12
 8001ae4:	af00      	add	r7, sp, #0
 8001ae6:	4603      	mov	r3, r0
 8001ae8:	71fb      	strb	r3, [r7, #7]
 8001aea:	4a06      	ldr	r2, [pc, #24]	; (8001b04 <USB_GetSEPxTS+0x24>)
 8001aec:	79fb      	ldrb	r3, [r7, #7]
 8001aee:	011b      	lsls	r3, r3, #4
 8001af0:	4413      	add	r3, r2
 8001af2:	f503 7384 	add.w	r3, r3, #264	; 0x108
 8001af6:	681b      	ldr	r3, [r3, #0]
 8001af8:	4618      	mov	r0, r3
 8001afa:	370c      	adds	r7, #12
 8001afc:	46bd      	mov	sp, r7
 8001afe:	bc80      	pop	{r7}
 8001b00:	4770      	bx	lr
 8001b02:	bf00      	nop
 8001b04:	40010000 	.word	0x40010000

08001b08 <USB_GetSEPxNTS>:
 8001b08:	b480      	push	{r7}
 8001b0a:	b083      	sub	sp, #12
 8001b0c:	af00      	add	r7, sp, #0
 8001b0e:	4603      	mov	r3, r0
 8001b10:	71fb      	strb	r3, [r7, #7]
 8001b12:	4a06      	ldr	r2, [pc, #24]	; (8001b2c <USB_GetSEPxNTS+0x24>)
 8001b14:	79fb      	ldrb	r3, [r7, #7]
 8001b16:	011b      	lsls	r3, r3, #4
 8001b18:	4413      	add	r3, r2
 8001b1a:	f503 7386 	add.w	r3, r3, #268	; 0x10c
 8001b1e:	681b      	ldr	r3, [r3, #0]
 8001b20:	4618      	mov	r0, r3
 8001b22:	370c      	adds	r7, #12
 8001b24:	46bd      	mov	sp, r7
 8001b26:	bc80      	pop	{r7}
 8001b28:	4770      	bx	lr
 8001b2a:	bf00      	nop
 8001b2c:	40010000 	.word	0x40010000

08001b30 <USB_GetSC>:
 8001b30:	b480      	push	{r7}
 8001b32:	af00      	add	r7, sp, #0
 8001b34:	4b03      	ldr	r3, [pc, #12]	; (8001b44 <USB_GetSC+0x14>)
 8001b36:	f8d3 3140 	ldr.w	r3, [r3, #320]	; 0x140
 8001b3a:	4618      	mov	r0, r3
 8001b3c:	46bd      	mov	sp, r7
 8001b3e:	bc80      	pop	{r7}
 8001b40:	4770      	bx	lr
 8001b42:	bf00      	nop
 8001b44:	40010000 	.word	0x40010000

08001b48 <USB_SetSC>:
 8001b48:	b480      	push	{r7}
 8001b4a:	b085      	sub	sp, #20
 8001b4c:	af00      	add	r7, sp, #0
 8001b4e:	6078      	str	r0, [r7, #4]
 8001b50:	4b0b      	ldr	r3, [pc, #44]	; (8001b80 <USB_SetSC+0x38>)
 8001b52:	f8d3 3140 	ldr.w	r3, [r3, #320]	; 0x140
 8001b56:	60fb      	str	r3, [r7, #12]
 8001b58:	687b      	ldr	r3, [r7, #4]
 8001b5a:	b29b      	uxth	r3, r3
 8001b5c:	68fa      	ldr	r2, [r7, #12]
 8001b5e:	4313      	orrs	r3, r2
 8001b60:	60fb      	str	r3, [r7, #12]
 8001b62:	687b      	ldr	r3, [r7, #4]
 8001b64:	0c1b      	lsrs	r3, r3, #16
 8001b66:	43db      	mvns	r3, r3
 8001b68:	68fa      	ldr	r2, [r7, #12]
 8001b6a:	4013      	ands	r3, r2
 8001b6c:	60fb      	str	r3, [r7, #12]
 8001b6e:	4a04      	ldr	r2, [pc, #16]	; (8001b80 <USB_SetSC+0x38>)
 8001b70:	68fb      	ldr	r3, [r7, #12]
 8001b72:	f8c2 3140 	str.w	r3, [r2, #320]	; 0x140
 8001b76:	bf00      	nop
 8001b78:	3714      	adds	r7, #20
 8001b7a:	46bd      	mov	sp, r7
 8001b7c:	bc80      	pop	{r7}
 8001b7e:	4770      	bx	lr
 8001b80:	40010000 	.word	0x40010000

08001b84 <USB_GetSLS>:
 8001b84:	b480      	push	{r7}
 8001b86:	af00      	add	r7, sp, #0
 8001b88:	4b03      	ldr	r3, [pc, #12]	; (8001b98 <USB_GetSLS+0x14>)
 8001b8a:	f8d3 3144 	ldr.w	r3, [r3, #324]	; 0x144
 8001b8e:	4618      	mov	r0, r3
 8001b90:	46bd      	mov	sp, r7
 8001b92:	bc80      	pop	{r7}
 8001b94:	4770      	bx	lr
 8001b96:	bf00      	nop
 8001b98:	40010000 	.word	0x40010000

08001b9c <USB_GetSIS>:
 8001b9c:	b480      	push	{r7}
 8001b9e:	af00      	add	r7, sp, #0
 8001ba0:	4b03      	ldr	r3, [pc, #12]	; (8001bb0 <USB_GetSIS+0x14>)
 8001ba2:	f8d3 3148 	ldr.w	r3, [r3, #328]	; 0x148
 8001ba6:	4618      	mov	r0, r3
 8001ba8:	46bd      	mov	sp, r7
 8001baa:	bc80      	pop	{r7}
 8001bac:	4770      	bx	lr
 8001bae:	bf00      	nop
 8001bb0:	40010000 	.word	0x40010000

08001bb4 <USB_SetSIS>:
 8001bb4:	b480      	push	{r7}
 8001bb6:	b083      	sub	sp, #12
 8001bb8:	af00      	add	r7, sp, #0
 8001bba:	6078      	str	r0, [r7, #4]
 8001bbc:	4a04      	ldr	r2, [pc, #16]	; (8001bd0 <USB_SetSIS+0x1c>)
 8001bbe:	687b      	ldr	r3, [r7, #4]
 8001bc0:	f8c2 3148 	str.w	r3, [r2, #328]	; 0x148
 8001bc4:	bf00      	nop
 8001bc6:	370c      	adds	r7, #12
 8001bc8:	46bd      	mov	sp, r7
 8001bca:	bc80      	pop	{r7}
 8001bcc:	4770      	bx	lr
 8001bce:	bf00      	nop
 8001bd0:	40010000 	.word	0x40010000

08001bd4 <USB_GetSIM>:
 8001bd4:	b480      	push	{r7}
 8001bd6:	af00      	add	r7, sp, #0
 8001bd8:	4b03      	ldr	r3, [pc, #12]	; (8001be8 <USB_GetSIM+0x14>)
 8001bda:	f8d3 314c 	ldr.w	r3, [r3, #332]	; 0x14c
 8001bde:	4618      	mov	r0, r3
 8001be0:	46bd      	mov	sp, r7
 8001be2:	bc80      	pop	{r7}
 8001be4:	4770      	bx	lr
 8001be6:	bf00      	nop
 8001be8:	40010000 	.word	0x40010000

08001bec <USB_SetSIM>:
 8001bec:	b480      	push	{r7}
 8001bee:	b085      	sub	sp, #20
 8001bf0:	af00      	add	r7, sp, #0
 8001bf2:	6078      	str	r0, [r7, #4]
 8001bf4:	4b0b      	ldr	r3, [pc, #44]	; (8001c24 <USB_SetSIM+0x38>)
 8001bf6:	f8d3 314c 	ldr.w	r3, [r3, #332]	; 0x14c
 8001bfa:	60fb      	str	r3, [r7, #12]
 8001bfc:	687b      	ldr	r3, [r7, #4]
 8001bfe:	b29b      	uxth	r3, r3
 8001c00:	68fa      	ldr	r2, [r7, #12]
 8001c02:	4313      	orrs	r3, r2
 8001c04:	60fb      	str	r3, [r7, #12]
 8001c06:	687b      	ldr	r3, [r7, #4]
 8001c08:	0c1b      	lsrs	r3, r3, #16
 8001c0a:	43db      	mvns	r3, r3
 8001c0c:	68fa      	ldr	r2, [r7, #12]
 8001c0e:	4013      	ands	r3, r2
 8001c10:	60fb      	str	r3, [r7, #12]
 8001c12:	4a04      	ldr	r2, [pc, #16]	; (8001c24 <USB_SetSIM+0x38>)
 8001c14:	68fb      	ldr	r3, [r7, #12]
 8001c16:	f8c2 314c 	str.w	r3, [r2, #332]	; 0x14c
 8001c1a:	bf00      	nop
 8001c1c:	3714      	adds	r7, #20
 8001c1e:	46bd      	mov	sp, r7
 8001c20:	bc80      	pop	{r7}
 8001c22:	4770      	bx	lr
 8001c24:	40010000 	.word	0x40010000

08001c28 <USB_GetSA>:
 8001c28:	b480      	push	{r7}
 8001c2a:	af00      	add	r7, sp, #0
 8001c2c:	4b03      	ldr	r3, [pc, #12]	; (8001c3c <USB_GetSA+0x14>)
 8001c2e:	f8d3 3150 	ldr.w	r3, [r3, #336]	; 0x150
 8001c32:	4618      	mov	r0, r3
 8001c34:	46bd      	mov	sp, r7
 8001c36:	bc80      	pop	{r7}
 8001c38:	4770      	bx	lr
 8001c3a:	bf00      	nop
 8001c3c:	40010000 	.word	0x40010000

08001c40 <USB_SetSA>:
 8001c40:	b480      	push	{r7}
 8001c42:	b083      	sub	sp, #12
 8001c44:	af00      	add	r7, sp, #0
 8001c46:	6078      	str	r0, [r7, #4]
 8001c48:	4a04      	ldr	r2, [pc, #16]	; (8001c5c <USB_SetSA+0x1c>)
 8001c4a:	687b      	ldr	r3, [r7, #4]
 8001c4c:	f8c2 3150 	str.w	r3, [r2, #336]	; 0x150
 8001c50:	bf00      	nop
 8001c52:	370c      	adds	r7, #12
 8001c54:	46bd      	mov	sp, r7
 8001c56:	bc80      	pop	{r7}
 8001c58:	4770      	bx	lr
 8001c5a:	bf00      	nop
 8001c5c:	40010000 	.word	0x40010000

08001c60 <USB_GetSFN>:
 8001c60:	b480      	push	{r7}
 8001c62:	af00      	add	r7, sp, #0
 8001c64:	4b03      	ldr	r3, [pc, #12]	; (8001c74 <USB_GetSFN+0x14>)
 8001c66:	f8d3 3158 	ldr.w	r3, [r3, #344]	; 0x158
 8001c6a:	4618      	mov	r0, r3
 8001c6c:	46bd      	mov	sp, r7
 8001c6e:	bc80      	pop	{r7}
 8001c70:	4770      	bx	lr
 8001c72:	bf00      	nop
 8001c74:	40010000 	.word	0x40010000

08001c78 <USB_GetSEPxRXFD>:
 8001c78:	b480      	push	{r7}
 8001c7a:	b083      	sub	sp, #12
 8001c7c:	af00      	add	r7, sp, #0
 8001c7e:	4603      	mov	r3, r0
 8001c80:	71fb      	strb	r3, [r7, #7]
 8001c82:	4a05      	ldr	r2, [pc, #20]	; (8001c98 <USB_GetSEPxRXFD+0x20>)
 8001c84:	79fb      	ldrb	r3, [r7, #7]
 8001c86:	3303      	adds	r3, #3
 8001c88:	01db      	lsls	r3, r3, #7
 8001c8a:	4413      	add	r3, r2
 8001c8c:	681b      	ldr	r3, [r3, #0]
 8001c8e:	4618      	mov	r0, r3
 8001c90:	370c      	adds	r7, #12
 8001c92:	46bd      	mov	sp, r7
 8001c94:	bc80      	pop	{r7}
 8001c96:	4770      	bx	lr
 8001c98:	40010000 	.word	0x40010000

08001c9c <USB_GetSEPxRXFDC>:
 8001c9c:	b480      	push	{r7}
 8001c9e:	b083      	sub	sp, #12
 8001ca0:	af00      	add	r7, sp, #0
 8001ca2:	4603      	mov	r3, r0
 8001ca4:	71fb      	strb	r3, [r7, #7]
 8001ca6:	4a06      	ldr	r2, [pc, #24]	; (8001cc0 <USB_GetSEPxRXFDC+0x24>)
 8001ca8:	79fb      	ldrb	r3, [r7, #7]
 8001caa:	01db      	lsls	r3, r3, #7
 8001cac:	4413      	add	r3, r2
 8001cae:	f503 73c6 	add.w	r3, r3, #396	; 0x18c
 8001cb2:	681b      	ldr	r3, [r3, #0]
 8001cb4:	4618      	mov	r0, r3
 8001cb6:	370c      	adds	r7, #12
 8001cb8:	46bd      	mov	sp, r7
 8001cba:	bc80      	pop	{r7}
 8001cbc:	4770      	bx	lr
 8001cbe:	bf00      	nop
 8001cc0:	40010000 	.word	0x40010000

08001cc4 <USB_GetSEPxRXFC>:
 8001cc4:	b480      	push	{r7}
 8001cc6:	b083      	sub	sp, #12
 8001cc8:	af00      	add	r7, sp, #0
 8001cca:	4603      	mov	r3, r0
 8001ccc:	71fb      	strb	r3, [r7, #7]
 8001cce:	4a06      	ldr	r2, [pc, #24]	; (8001ce8 <USB_GetSEPxRXFC+0x24>)
 8001cd0:	79fb      	ldrb	r3, [r7, #7]
 8001cd2:	01db      	lsls	r3, r3, #7
 8001cd4:	4413      	add	r3, r2
 8001cd6:	f503 73c8 	add.w	r3, r3, #400	; 0x190
 8001cda:	681b      	ldr	r3, [r3, #0]
 8001cdc:	4618      	mov	r0, r3
 8001cde:	370c      	adds	r7, #12
 8001ce0:	46bd      	mov	sp, r7
 8001ce2:	bc80      	pop	{r7}
 8001ce4:	4770      	bx	lr
 8001ce6:	bf00      	nop
 8001ce8:	40010000 	.word	0x40010000

08001cec <USB_SetSEPxRXFC>:
 8001cec:	b480      	push	{r7}
 8001cee:	b083      	sub	sp, #12
 8001cf0:	af00      	add	r7, sp, #0
 8001cf2:	4603      	mov	r3, r0
 8001cf4:	6039      	str	r1, [r7, #0]
 8001cf6:	71fb      	strb	r3, [r7, #7]
 8001cf8:	4a06      	ldr	r2, [pc, #24]	; (8001d14 <USB_SetSEPxRXFC+0x28>)
 8001cfa:	79fb      	ldrb	r3, [r7, #7]
 8001cfc:	01db      	lsls	r3, r3, #7
 8001cfe:	4413      	add	r3, r2
 8001d00:	f503 73c8 	add.w	r3, r3, #400	; 0x190
 8001d04:	683a      	ldr	r2, [r7, #0]
 8001d06:	601a      	str	r2, [r3, #0]
 8001d08:	bf00      	nop
 8001d0a:	370c      	adds	r7, #12
 8001d0c:	46bd      	mov	sp, r7
 8001d0e:	bc80      	pop	{r7}
 8001d10:	4770      	bx	lr
 8001d12:	bf00      	nop
 8001d14:	40010000 	.word	0x40010000

08001d18 <USB_GetSEPxTXFD>:
 8001d18:	b480      	push	{r7}
 8001d1a:	b083      	sub	sp, #12
 8001d1c:	af00      	add	r7, sp, #0
 8001d1e:	4603      	mov	r3, r0
 8001d20:	71fb      	strb	r3, [r7, #7]
 8001d22:	4a06      	ldr	r2, [pc, #24]	; (8001d3c <USB_GetSEPxTXFD+0x24>)
 8001d24:	79fb      	ldrb	r3, [r7, #7]
 8001d26:	01db      	lsls	r3, r3, #7
 8001d28:	4413      	add	r3, r2
 8001d2a:	f503 73e0 	add.w	r3, r3, #448	; 0x1c0
 8001d2e:	681b      	ldr	r3, [r3, #0]
 8001d30:	4618      	mov	r0, r3
 8001d32:	370c      	adds	r7, #12
 8001d34:	46bd      	mov	sp, r7
 8001d36:	bc80      	pop	{r7}
 8001d38:	4770      	bx	lr
 8001d3a:	bf00      	nop
 8001d3c:	40010000 	.word	0x40010000

08001d40 <USB_SetSEPxTXFD>:
 8001d40:	b480      	push	{r7}
 8001d42:	b083      	sub	sp, #12
 8001d44:	af00      	add	r7, sp, #0
 8001d46:	4603      	mov	r3, r0
 8001d48:	6039      	str	r1, [r7, #0]
 8001d4a:	71fb      	strb	r3, [r7, #7]
 8001d4c:	4a06      	ldr	r2, [pc, #24]	; (8001d68 <USB_SetSEPxTXFD+0x28>)
 8001d4e:	79fb      	ldrb	r3, [r7, #7]
 8001d50:	01db      	lsls	r3, r3, #7
 8001d52:	4413      	add	r3, r2
 8001d54:	f503 73e0 	add.w	r3, r3, #448	; 0x1c0
 8001d58:	683a      	ldr	r2, [r7, #0]
 8001d5a:	601a      	str	r2, [r3, #0]
 8001d5c:	bf00      	nop
 8001d5e:	370c      	adds	r7, #12
 8001d60:	46bd      	mov	sp, r7
 8001d62:	bc80      	pop	{r7}
 8001d64:	4770      	bx	lr
 8001d66:	bf00      	nop
 8001d68:	40010000 	.word	0x40010000

08001d6c <USB_GetSEPxTXFDC>:
 8001d6c:	b480      	push	{r7}
 8001d6e:	b083      	sub	sp, #12
 8001d70:	af00      	add	r7, sp, #0
 8001d72:	4603      	mov	r3, r0
 8001d74:	71fb      	strb	r3, [r7, #7]
 8001d76:	4a06      	ldr	r2, [pc, #24]	; (8001d90 <USB_GetSEPxTXFDC+0x24>)
 8001d78:	79fb      	ldrb	r3, [r7, #7]
 8001d7a:	01db      	lsls	r3, r3, #7
 8001d7c:	4413      	add	r3, r2
 8001d7e:	f503 73e8 	add.w	r3, r3, #464	; 0x1d0
 8001d82:	681b      	ldr	r3, [r3, #0]
 8001d84:	4618      	mov	r0, r3
 8001d86:	370c      	adds	r7, #12
 8001d88:	46bd      	mov	sp, r7
 8001d8a:	bc80      	pop	{r7}
 8001d8c:	4770      	bx	lr
 8001d8e:	bf00      	nop
 8001d90:	40010000 	.word	0x40010000

08001d94 <USB_SetSEPxTXFDC>:
 8001d94:	b480      	push	{r7}
 8001d96:	b083      	sub	sp, #12
 8001d98:	af00      	add	r7, sp, #0
 8001d9a:	4603      	mov	r3, r0
 8001d9c:	6039      	str	r1, [r7, #0]
 8001d9e:	71fb      	strb	r3, [r7, #7]
 8001da0:	4a06      	ldr	r2, [pc, #24]	; (8001dbc <USB_SetSEPxTXFDC+0x28>)
 8001da2:	79fb      	ldrb	r3, [r7, #7]
 8001da4:	01db      	lsls	r3, r3, #7
 8001da6:	4413      	add	r3, r2
 8001da8:	f503 73e8 	add.w	r3, r3, #464	; 0x1d0
 8001dac:	683a      	ldr	r2, [r7, #0]
 8001dae:	601a      	str	r2, [r3, #0]
 8001db0:	bf00      	nop
 8001db2:	370c      	adds	r7, #12
 8001db4:	46bd      	mov	sp, r7
 8001db6:	bc80      	pop	{r7}
 8001db8:	4770      	bx	lr
 8001dba:	bf00      	nop
 8001dbc:	40010000 	.word	0x40010000

08001dc0 <USB_SEPxToggleEPDATASEQ>:
 8001dc0:	b480      	push	{r7}
 8001dc2:	b085      	sub	sp, #20
 8001dc4:	af00      	add	r7, sp, #0
 8001dc6:	4603      	mov	r3, r0
 8001dc8:	71fb      	strb	r3, [r7, #7]
 8001dca:	4a0b      	ldr	r2, [pc, #44]	; (8001df8 <USB_SEPxToggleEPDATASEQ+0x38>)
 8001dcc:	79fb      	ldrb	r3, [r7, #7]
 8001dce:	3310      	adds	r3, #16
 8001dd0:	011b      	lsls	r3, r3, #4
 8001dd2:	4413      	add	r3, r2
 8001dd4:	681b      	ldr	r3, [r3, #0]
 8001dd6:	60fb      	str	r3, [r7, #12]
 8001dd8:	68fb      	ldr	r3, [r7, #12]
 8001dda:	f083 0304 	eor.w	r3, r3, #4
 8001dde:	60fb      	str	r3, [r7, #12]
 8001de0:	4a05      	ldr	r2, [pc, #20]	; (8001df8 <USB_SEPxToggleEPDATASEQ+0x38>)
 8001de2:	79fb      	ldrb	r3, [r7, #7]
 8001de4:	3310      	adds	r3, #16
 8001de6:	011b      	lsls	r3, r3, #4
 8001de8:	4413      	add	r3, r2
 8001dea:	68fa      	ldr	r2, [r7, #12]
 8001dec:	601a      	str	r2, [r3, #0]
 8001dee:	bf00      	nop
 8001df0:	3714      	adds	r7, #20
 8001df2:	46bd      	mov	sp, r7
 8001df4:	bc80      	pop	{r7}
 8001df6:	4770      	bx	lr
 8001df8:	40010000 	.word	0x40010000

08001dfc <RST_CLK_DeInit>:
 8001dfc:	b580      	push	{r7, lr}
 8001dfe:	af00      	add	r7, sp, #0
 8001e00:	f000 f816 	bl	8001e30 <RST_CLK_WarmDeInit>
 8001e04:	2101      	movs	r1, #1
 8001e06:	f04f 6000 	mov.w	r0, #134217728	; 0x8000000
 8001e0a:	f000 fb57 	bl	80024bc <RST_CLK_PCLKcmd>
 8001e0e:	4a07      	ldr	r2, [pc, #28]	; (8001e2c <RST_CLK_DeInit+0x30>)
 8001e10:	4b06      	ldr	r3, [pc, #24]	; (8001e2c <RST_CLK_DeInit+0x30>)
 8001e12:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001e14:	f443 0381 	orr.w	r3, r3, #4227072	; 0x408000
 8001e18:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001e1a:	4a04      	ldr	r2, [pc, #16]	; (8001e2c <RST_CLK_DeInit+0x30>)
 8001e1c:	4b03      	ldr	r3, [pc, #12]	; (8001e2c <RST_CLK_DeInit+0x30>)
 8001e1e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001e20:	f403 0381 	and.w	r3, r3, #4227072	; 0x408000
 8001e24:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001e26:	bf00      	nop
 8001e28:	bd80      	pop	{r7, pc}
 8001e2a:	bf00      	nop
 8001e2c:	400d8000 	.word	0x400d8000

08001e30 <RST_CLK_WarmDeInit>:
 8001e30:	b580      	push	{r7, lr}
 8001e32:	af00      	add	r7, sp, #0
 8001e34:	2001      	movs	r0, #1
 8001e36:	f000 f8c1 	bl	8001fbc <RST_CLK_HSIcmd>
 8001e3a:	f000 f8e9 	bl	8002010 <RST_CLK_HSIstatus>
 8001e3e:	2000      	movs	r0, #0
 8001e40:	f000 f9ee 	bl	8002220 <RST_CLK_CPUclkSelection>
 8001e44:	4b11      	ldr	r3, [pc, #68]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e46:	68db      	ldr	r3, [r3, #12]
 8001e48:	4b10      	ldr	r3, [pc, #64]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e4a:	2200      	movs	r2, #0
 8001e4c:	60da      	str	r2, [r3, #12]
 8001e4e:	4b0f      	ldr	r3, [pc, #60]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e50:	685b      	ldr	r3, [r3, #4]
 8001e52:	4b0e      	ldr	r3, [pc, #56]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e54:	2200      	movs	r2, #0
 8001e56:	605a      	str	r2, [r3, #4]
 8001e58:	4b0c      	ldr	r3, [pc, #48]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e5a:	689b      	ldr	r3, [r3, #8]
 8001e5c:	4b0b      	ldr	r3, [pc, #44]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e5e:	2200      	movs	r2, #0
 8001e60:	609a      	str	r2, [r3, #8]
 8001e62:	4b0a      	ldr	r3, [pc, #40]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e64:	691b      	ldr	r3, [r3, #16]
 8001e66:	4b09      	ldr	r3, [pc, #36]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e68:	2200      	movs	r2, #0
 8001e6a:	611a      	str	r2, [r3, #16]
 8001e6c:	4b07      	ldr	r3, [pc, #28]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e6e:	695b      	ldr	r3, [r3, #20]
 8001e70:	4b06      	ldr	r3, [pc, #24]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e72:	2200      	movs	r2, #0
 8001e74:	615a      	str	r2, [r3, #20]
 8001e76:	4b05      	ldr	r3, [pc, #20]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e78:	699b      	ldr	r3, [r3, #24]
 8001e7a:	4b04      	ldr	r3, [pc, #16]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e7c:	2200      	movs	r2, #0
 8001e7e:	619a      	str	r2, [r3, #24]
 8001e80:	4b02      	ldr	r3, [pc, #8]	; (8001e8c <RST_CLK_WarmDeInit+0x5c>)
 8001e82:	4a03      	ldr	r2, [pc, #12]	; (8001e90 <RST_CLK_WarmDeInit+0x60>)
 8001e84:	61da      	str	r2, [r3, #28]
 8001e86:	bf00      	nop
 8001e88:	bd80      	pop	{r7, pc}
 8001e8a:	bf00      	nop
 8001e8c:	40020000 	.word	0x40020000
 8001e90:	08000010 	.word	0x08000010

08001e94 <RST_CLK_HSEconfig>:
 8001e94:	b480      	push	{r7}
 8001e96:	b083      	sub	sp, #12
 8001e98:	af00      	add	r7, sp, #0
 8001e9a:	6078      	str	r0, [r7, #4]
 8001e9c:	4a0f      	ldr	r2, [pc, #60]	; (8001edc <RST_CLK_HSEconfig+0x48>)
 8001e9e:	4b0f      	ldr	r3, [pc, #60]	; (8001edc <RST_CLK_HSEconfig+0x48>)
 8001ea0:	689b      	ldr	r3, [r3, #8]
 8001ea2:	f023 0303 	bic.w	r3, r3, #3
 8001ea6:	6093      	str	r3, [r2, #8]
 8001ea8:	687b      	ldr	r3, [r7, #4]
 8001eaa:	2b01      	cmp	r3, #1
 8001eac:	d002      	beq.n	8001eb4 <RST_CLK_HSEconfig+0x20>
 8001eae:	2b02      	cmp	r3, #2
 8001eb0:	d007      	beq.n	8001ec2 <RST_CLK_HSEconfig+0x2e>
 8001eb2:	e00d      	b.n	8001ed0 <RST_CLK_HSEconfig+0x3c>
 8001eb4:	4a09      	ldr	r2, [pc, #36]	; (8001edc <RST_CLK_HSEconfig+0x48>)
 8001eb6:	4b09      	ldr	r3, [pc, #36]	; (8001edc <RST_CLK_HSEconfig+0x48>)
 8001eb8:	689b      	ldr	r3, [r3, #8]
 8001eba:	f043 0301 	orr.w	r3, r3, #1
 8001ebe:	6093      	str	r3, [r2, #8]
 8001ec0:	e006      	b.n	8001ed0 <RST_CLK_HSEconfig+0x3c>
 8001ec2:	4a06      	ldr	r2, [pc, #24]	; (8001edc <RST_CLK_HSEconfig+0x48>)
 8001ec4:	4b05      	ldr	r3, [pc, #20]	; (8001edc <RST_CLK_HSEconfig+0x48>)
 8001ec6:	689b      	ldr	r3, [r3, #8]
 8001ec8:	f043 0303 	orr.w	r3, r3, #3
 8001ecc:	6093      	str	r3, [r2, #8]
 8001ece:	bf00      	nop
 8001ed0:	bf00      	nop
 8001ed2:	370c      	adds	r7, #12
 8001ed4:	46bd      	mov	sp, r7
 8001ed6:	bc80      	pop	{r7}
 8001ed8:	4770      	bx	lr
 8001eda:	bf00      	nop
 8001edc:	40020000 	.word	0x40020000

08001ee0 <RST_CLK_HSEstatus>:
 8001ee0:	b580      	push	{r7, lr}
 8001ee2:	b082      	sub	sp, #8
 8001ee4:	af00      	add	r7, sp, #0
 8001ee6:	2300      	movs	r3, #0
 8001ee8:	603b      	str	r3, [r7, #0]
 8001eea:	2022      	movs	r0, #34	; 0x22
 8001eec:	f000 fc26 	bl	800273c <RST_CLK_GetFlagStatus>
 8001ef0:	4603      	mov	r3, r0
 8001ef2:	71bb      	strb	r3, [r7, #6]
 8001ef4:	683b      	ldr	r3, [r7, #0]
 8001ef6:	3301      	adds	r3, #1
 8001ef8:	603b      	str	r3, [r7, #0]
 8001efa:	683b      	ldr	r3, [r7, #0]
 8001efc:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 8001f00:	d202      	bcs.n	8001f08 <RST_CLK_HSEstatus+0x28>
 8001f02:	79bb      	ldrb	r3, [r7, #6]
 8001f04:	2b00      	cmp	r3, #0
 8001f06:	d0f0      	beq.n	8001eea <RST_CLK_HSEstatus+0xa>
 8001f08:	2022      	movs	r0, #34	; 0x22
 8001f0a:	f000 fc17 	bl	800273c <RST_CLK_GetFlagStatus>
 8001f0e:	4603      	mov	r3, r0
 8001f10:	2b00      	cmp	r3, #0
 8001f12:	d002      	beq.n	8001f1a <RST_CLK_HSEstatus+0x3a>
 8001f14:	2301      	movs	r3, #1
 8001f16:	71fb      	strb	r3, [r7, #7]
 8001f18:	e001      	b.n	8001f1e <RST_CLK_HSEstatus+0x3e>
 8001f1a:	2300      	movs	r3, #0
 8001f1c:	71fb      	strb	r3, [r7, #7]
 8001f1e:	79fb      	ldrb	r3, [r7, #7]
 8001f20:	4618      	mov	r0, r3
 8001f22:	3708      	adds	r7, #8
 8001f24:	46bd      	mov	sp, r7
 8001f26:	bd80      	pop	{r7, pc}

08001f28 <RST_CLK_LSEconfig>:
 8001f28:	b480      	push	{r7}
 8001f2a:	b083      	sub	sp, #12
 8001f2c:	af00      	add	r7, sp, #0
 8001f2e:	6078      	str	r0, [r7, #4]
 8001f30:	4a0f      	ldr	r2, [pc, #60]	; (8001f70 <RST_CLK_LSEconfig+0x48>)
 8001f32:	4b0f      	ldr	r3, [pc, #60]	; (8001f70 <RST_CLK_LSEconfig+0x48>)
 8001f34:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001f36:	f023 0303 	bic.w	r3, r3, #3
 8001f3a:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001f3c:	687b      	ldr	r3, [r7, #4]
 8001f3e:	2b01      	cmp	r3, #1
 8001f40:	d002      	beq.n	8001f48 <RST_CLK_LSEconfig+0x20>
 8001f42:	2b02      	cmp	r3, #2
 8001f44:	d007      	beq.n	8001f56 <RST_CLK_LSEconfig+0x2e>
 8001f46:	e00d      	b.n	8001f64 <RST_CLK_LSEconfig+0x3c>
 8001f48:	4a09      	ldr	r2, [pc, #36]	; (8001f70 <RST_CLK_LSEconfig+0x48>)
 8001f4a:	4b09      	ldr	r3, [pc, #36]	; (8001f70 <RST_CLK_LSEconfig+0x48>)
 8001f4c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001f4e:	f043 0301 	orr.w	r3, r3, #1
 8001f52:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001f54:	e006      	b.n	8001f64 <RST_CLK_LSEconfig+0x3c>
 8001f56:	4a06      	ldr	r2, [pc, #24]	; (8001f70 <RST_CLK_LSEconfig+0x48>)
 8001f58:	4b05      	ldr	r3, [pc, #20]	; (8001f70 <RST_CLK_LSEconfig+0x48>)
 8001f5a:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001f5c:	f043 0303 	orr.w	r3, r3, #3
 8001f60:	63d3      	str	r3, [r2, #60]	; 0x3c
 8001f62:	bf00      	nop
 8001f64:	bf00      	nop
 8001f66:	370c      	adds	r7, #12
 8001f68:	46bd      	mov	sp, r7
 8001f6a:	bc80      	pop	{r7}
 8001f6c:	4770      	bx	lr
 8001f6e:	bf00      	nop
 8001f70:	400d8000 	.word	0x400d8000

08001f74 <RST_CLK_LSEstatus>:
 8001f74:	b580      	push	{r7, lr}
 8001f76:	b082      	sub	sp, #8
 8001f78:	af00      	add	r7, sp, #0
 8001f7a:	2300      	movs	r3, #0
 8001f7c:	603b      	str	r3, [r7, #0]
 8001f7e:	200d      	movs	r0, #13
 8001f80:	f000 fbdc 	bl	800273c <RST_CLK_GetFlagStatus>
 8001f84:	4603      	mov	r3, r0
 8001f86:	71bb      	strb	r3, [r7, #6]
 8001f88:	683b      	ldr	r3, [r7, #0]
 8001f8a:	3301      	adds	r3, #1
 8001f8c:	603b      	str	r3, [r7, #0]
 8001f8e:	683b      	ldr	r3, [r7, #0]
 8001f90:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 8001f94:	d202      	bcs.n	8001f9c <RST_CLK_LSEstatus+0x28>
 8001f96:	79bb      	ldrb	r3, [r7, #6]
 8001f98:	2b00      	cmp	r3, #0
 8001f9a:	d0f0      	beq.n	8001f7e <RST_CLK_LSEstatus+0xa>
 8001f9c:	200d      	movs	r0, #13
 8001f9e:	f000 fbcd 	bl	800273c <RST_CLK_GetFlagStatus>
 8001fa2:	4603      	mov	r3, r0
 8001fa4:	2b00      	cmp	r3, #0
 8001fa6:	d002      	beq.n	8001fae <RST_CLK_LSEstatus+0x3a>
 8001fa8:	2301      	movs	r3, #1
 8001faa:	71fb      	strb	r3, [r7, #7]
 8001fac:	e001      	b.n	8001fb2 <RST_CLK_LSEstatus+0x3e>
 8001fae:	2300      	movs	r3, #0
 8001fb0:	71fb      	strb	r3, [r7, #7]
 8001fb2:	79fb      	ldrb	r3, [r7, #7]
 8001fb4:	4618      	mov	r0, r3
 8001fb6:	3708      	adds	r7, #8
 8001fb8:	46bd      	mov	sp, r7
 8001fba:	bd80      	pop	{r7, pc}

08001fbc <RST_CLK_HSIcmd>:
 8001fbc:	b480      	push	{r7}
 8001fbe:	b083      	sub	sp, #12
 8001fc0:	af00      	add	r7, sp, #0
 8001fc2:	4603      	mov	r3, r0
 8001fc4:	71fb      	strb	r3, [r7, #7]
 8001fc6:	4a04      	ldr	r2, [pc, #16]	; (8001fd8 <RST_CLK_HSIcmd+0x1c>)
 8001fc8:	79fb      	ldrb	r3, [r7, #7]
 8001fca:	6013      	str	r3, [r2, #0]
 8001fcc:	bf00      	nop
 8001fce:	370c      	adds	r7, #12
 8001fd0:	46bd      	mov	sp, r7
 8001fd2:	bc80      	pop	{r7}
 8001fd4:	4770      	bx	lr
 8001fd6:	bf00      	nop
 8001fd8:	43b007d8 	.word	0x43b007d8

08001fdc <RST_CLK_HSIadjust>:
 8001fdc:	b480      	push	{r7}
 8001fde:	b085      	sub	sp, #20
 8001fe0:	af00      	add	r7, sp, #0
 8001fe2:	6078      	str	r0, [r7, #4]
 8001fe4:	4b09      	ldr	r3, [pc, #36]	; (800200c <RST_CLK_HSIadjust+0x30>)
 8001fe6:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8001fe8:	60fb      	str	r3, [r7, #12]
 8001fea:	68fb      	ldr	r3, [r7, #12]
 8001fec:	f023 537c 	bic.w	r3, r3, #1056964608	; 0x3f000000
 8001ff0:	60fb      	str	r3, [r7, #12]
 8001ff2:	687b      	ldr	r3, [r7, #4]
 8001ff4:	061b      	lsls	r3, r3, #24
 8001ff6:	68fa      	ldr	r2, [r7, #12]
 8001ff8:	4313      	orrs	r3, r2
 8001ffa:	60fb      	str	r3, [r7, #12]
 8001ffc:	4a03      	ldr	r2, [pc, #12]	; (800200c <RST_CLK_HSIadjust+0x30>)
 8001ffe:	68fb      	ldr	r3, [r7, #12]
 8002000:	63d3      	str	r3, [r2, #60]	; 0x3c
 8002002:	bf00      	nop
 8002004:	3714      	adds	r7, #20
 8002006:	46bd      	mov	sp, r7
 8002008:	bc80      	pop	{r7}
 800200a:	4770      	bx	lr
 800200c:	400d8000 	.word	0x400d8000

08002010 <RST_CLK_HSIstatus>:
 8002010:	b580      	push	{r7, lr}
 8002012:	b082      	sub	sp, #8
 8002014:	af00      	add	r7, sp, #0
 8002016:	2300      	movs	r3, #0
 8002018:	603b      	str	r3, [r7, #0]
 800201a:	2017      	movs	r0, #23
 800201c:	f000 fb8e 	bl	800273c <RST_CLK_GetFlagStatus>
 8002020:	4603      	mov	r3, r0
 8002022:	71bb      	strb	r3, [r7, #6]
 8002024:	683b      	ldr	r3, [r7, #0]
 8002026:	3301      	adds	r3, #1
 8002028:	603b      	str	r3, [r7, #0]
 800202a:	683b      	ldr	r3, [r7, #0]
 800202c:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 8002030:	d202      	bcs.n	8002038 <RST_CLK_HSIstatus+0x28>
 8002032:	79bb      	ldrb	r3, [r7, #6]
 8002034:	2b00      	cmp	r3, #0
 8002036:	d0f0      	beq.n	800201a <RST_CLK_HSIstatus+0xa>
 8002038:	2017      	movs	r0, #23
 800203a:	f000 fb7f 	bl	800273c <RST_CLK_GetFlagStatus>
 800203e:	4603      	mov	r3, r0
 8002040:	2b00      	cmp	r3, #0
 8002042:	d002      	beq.n	800204a <RST_CLK_HSIstatus+0x3a>
 8002044:	2301      	movs	r3, #1
 8002046:	71fb      	strb	r3, [r7, #7]
 8002048:	e001      	b.n	800204e <RST_CLK_HSIstatus+0x3e>
 800204a:	2300      	movs	r3, #0
 800204c:	71fb      	strb	r3, [r7, #7]
 800204e:	79fb      	ldrb	r3, [r7, #7]
 8002050:	4618      	mov	r0, r3
 8002052:	3708      	adds	r7, #8
 8002054:	46bd      	mov	sp, r7
 8002056:	bd80      	pop	{r7, pc}

08002058 <RST_CLK_LSIcmd>:
 8002058:	b480      	push	{r7}
 800205a:	b083      	sub	sp, #12
 800205c:	af00      	add	r7, sp, #0
 800205e:	4603      	mov	r3, r0
 8002060:	71fb      	strb	r3, [r7, #7]
 8002062:	4a04      	ldr	r2, [pc, #16]	; (8002074 <RST_CLK_LSIcmd+0x1c>)
 8002064:	79fb      	ldrb	r3, [r7, #7]
 8002066:	6013      	str	r3, [r2, #0]
 8002068:	bf00      	nop
 800206a:	370c      	adds	r7, #12
 800206c:	46bd      	mov	sp, r7
 800206e:	bc80      	pop	{r7}
 8002070:	4770      	bx	lr
 8002072:	bf00      	nop
 8002074:	43b007bc 	.word	0x43b007bc

08002078 <RST_CLK_LSIadjust>:
 8002078:	b480      	push	{r7}
 800207a:	b085      	sub	sp, #20
 800207c:	af00      	add	r7, sp, #0
 800207e:	6078      	str	r0, [r7, #4]
 8002080:	4b09      	ldr	r3, [pc, #36]	; (80020a8 <RST_CLK_LSIadjust+0x30>)
 8002082:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8002084:	60fb      	str	r3, [r7, #12]
 8002086:	68fb      	ldr	r3, [r7, #12]
 8002088:	f423 13f8 	bic.w	r3, r3, #2031616	; 0x1f0000
 800208c:	60fb      	str	r3, [r7, #12]
 800208e:	687b      	ldr	r3, [r7, #4]
 8002090:	041b      	lsls	r3, r3, #16
 8002092:	68fa      	ldr	r2, [r7, #12]
 8002094:	4313      	orrs	r3, r2
 8002096:	60fb      	str	r3, [r7, #12]
 8002098:	4a03      	ldr	r2, [pc, #12]	; (80020a8 <RST_CLK_LSIadjust+0x30>)
 800209a:	68fb      	ldr	r3, [r7, #12]
 800209c:	63d3      	str	r3, [r2, #60]	; 0x3c
 800209e:	bf00      	nop
 80020a0:	3714      	adds	r7, #20
 80020a2:	46bd      	mov	sp, r7
 80020a4:	bc80      	pop	{r7}
 80020a6:	4770      	bx	lr
 80020a8:	400d8000 	.word	0x400d8000

080020ac <RST_CLK_LSIstatus>:
 80020ac:	b580      	push	{r7, lr}
 80020ae:	b082      	sub	sp, #8
 80020b0:	af00      	add	r7, sp, #0
 80020b2:	2300      	movs	r3, #0
 80020b4:	603b      	str	r3, [r7, #0]
 80020b6:	2015      	movs	r0, #21
 80020b8:	f000 fb40 	bl	800273c <RST_CLK_GetFlagStatus>
 80020bc:	4603      	mov	r3, r0
 80020be:	71bb      	strb	r3, [r7, #6]
 80020c0:	683b      	ldr	r3, [r7, #0]
 80020c2:	3301      	adds	r3, #1
 80020c4:	603b      	str	r3, [r7, #0]
 80020c6:	683b      	ldr	r3, [r7, #0]
 80020c8:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 80020cc:	d202      	bcs.n	80020d4 <RST_CLK_LSIstatus+0x28>
 80020ce:	79bb      	ldrb	r3, [r7, #6]
 80020d0:	2b00      	cmp	r3, #0
 80020d2:	d0f0      	beq.n	80020b6 <RST_CLK_LSIstatus+0xa>
 80020d4:	2015      	movs	r0, #21
 80020d6:	f000 fb31 	bl	800273c <RST_CLK_GetFlagStatus>
 80020da:	4603      	mov	r3, r0
 80020dc:	2b00      	cmp	r3, #0
 80020de:	d002      	beq.n	80020e6 <RST_CLK_LSIstatus+0x3a>
 80020e0:	2301      	movs	r3, #1
 80020e2:	71fb      	strb	r3, [r7, #7]
 80020e4:	e001      	b.n	80020ea <RST_CLK_LSIstatus+0x3e>
 80020e6:	2300      	movs	r3, #0
 80020e8:	71fb      	strb	r3, [r7, #7]
 80020ea:	79fb      	ldrb	r3, [r7, #7]
 80020ec:	4618      	mov	r0, r3
 80020ee:	3708      	adds	r7, #8
 80020f0:	46bd      	mov	sp, r7
 80020f2:	bd80      	pop	{r7, pc}

080020f4 <RST_CLK_CPU_PLLconfig>:
 80020f4:	b480      	push	{r7}
 80020f6:	b085      	sub	sp, #20
 80020f8:	af00      	add	r7, sp, #0
 80020fa:	6078      	str	r0, [r7, #4]
 80020fc:	6039      	str	r1, [r7, #0]
 80020fe:	4b16      	ldr	r3, [pc, #88]	; (8002158 <RST_CLK_CPU_PLLconfig+0x64>)
 8002100:	68db      	ldr	r3, [r3, #12]
 8002102:	60fb      	str	r3, [r7, #12]
 8002104:	68fb      	ldr	r3, [r7, #12]
 8002106:	f023 0303 	bic.w	r3, r3, #3
 800210a:	60fb      	str	r3, [r7, #12]
 800210c:	68fa      	ldr	r2, [r7, #12]
 800210e:	687b      	ldr	r3, [r7, #4]
 8002110:	4313      	orrs	r3, r2
 8002112:	60fb      	str	r3, [r7, #12]
 8002114:	4a10      	ldr	r2, [pc, #64]	; (8002158 <RST_CLK_CPU_PLLconfig+0x64>)
 8002116:	68fb      	ldr	r3, [r7, #12]
 8002118:	60d3      	str	r3, [r2, #12]
 800211a:	4b0f      	ldr	r3, [pc, #60]	; (8002158 <RST_CLK_CPU_PLLconfig+0x64>)
 800211c:	685b      	ldr	r3, [r3, #4]
 800211e:	60fb      	str	r3, [r7, #12]
 8002120:	68fb      	ldr	r3, [r7, #12]
 8002122:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8002126:	60fb      	str	r3, [r7, #12]
 8002128:	683b      	ldr	r3, [r7, #0]
 800212a:	021b      	lsls	r3, r3, #8
 800212c:	68fa      	ldr	r2, [r7, #12]
 800212e:	4313      	orrs	r3, r2
 8002130:	60fb      	str	r3, [r7, #12]
 8002132:	4a09      	ldr	r2, [pc, #36]	; (8002158 <RST_CLK_CPU_PLLconfig+0x64>)
 8002134:	68fb      	ldr	r3, [r7, #12]
 8002136:	6053      	str	r3, [r2, #4]
 8002138:	4b08      	ldr	r3, [pc, #32]	; (800215c <RST_CLK_CPU_PLLconfig+0x68>)
 800213a:	681b      	ldr	r3, [r3, #0]
 800213c:	2b00      	cmp	r3, #0
 800213e:	d005      	beq.n	800214c <RST_CLK_CPU_PLLconfig+0x58>
 8002140:	4b07      	ldr	r3, [pc, #28]	; (8002160 <RST_CLK_CPU_PLLconfig+0x6c>)
 8002142:	2201      	movs	r2, #1
 8002144:	601a      	str	r2, [r3, #0]
 8002146:	4b06      	ldr	r3, [pc, #24]	; (8002160 <RST_CLK_CPU_PLLconfig+0x6c>)
 8002148:	2200      	movs	r2, #0
 800214a:	601a      	str	r2, [r3, #0]
 800214c:	bf00      	nop
 800214e:	3714      	adds	r7, #20
 8002150:	46bd      	mov	sp, r7
 8002152:	bc80      	pop	{r7}
 8002154:	4770      	bx	lr
 8002156:	bf00      	nop
 8002158:	40020000 	.word	0x40020000
 800215c:	42400088 	.word	0x42400088
 8002160:	4240008c 	.word	0x4240008c

08002164 <RST_CLK_CPU_PLLuse>:
 8002164:	b480      	push	{r7}
 8002166:	b083      	sub	sp, #12
 8002168:	af00      	add	r7, sp, #0
 800216a:	4603      	mov	r3, r0
 800216c:	71fb      	strb	r3, [r7, #7]
 800216e:	4a04      	ldr	r2, [pc, #16]	; (8002180 <RST_CLK_CPU_PLLuse+0x1c>)
 8002170:	79fb      	ldrb	r3, [r7, #7]
 8002172:	6013      	str	r3, [r2, #0]
 8002174:	bf00      	nop
 8002176:	370c      	adds	r7, #12
 8002178:	46bd      	mov	sp, r7
 800217a:	bc80      	pop	{r7}
 800217c:	4770      	bx	lr
 800217e:	bf00      	nop
 8002180:	42400188 	.word	0x42400188

08002184 <RST_CLK_CPU_PLLcmd>:
 8002184:	b480      	push	{r7}
 8002186:	b083      	sub	sp, #12
 8002188:	af00      	add	r7, sp, #0
 800218a:	4603      	mov	r3, r0
 800218c:	71fb      	strb	r3, [r7, #7]
 800218e:	4a04      	ldr	r2, [pc, #16]	; (80021a0 <RST_CLK_CPU_PLLcmd+0x1c>)
 8002190:	79fb      	ldrb	r3, [r7, #7]
 8002192:	6013      	str	r3, [r2, #0]
 8002194:	bf00      	nop
 8002196:	370c      	adds	r7, #12
 8002198:	46bd      	mov	sp, r7
 800219a:	bc80      	pop	{r7}
 800219c:	4770      	bx	lr
 800219e:	bf00      	nop
 80021a0:	42400088 	.word	0x42400088

080021a4 <RST_CLK_CPU_PLLstatus>:
 80021a4:	b580      	push	{r7, lr}
 80021a6:	b082      	sub	sp, #8
 80021a8:	af00      	add	r7, sp, #0
 80021aa:	2300      	movs	r3, #0
 80021ac:	603b      	str	r3, [r7, #0]
 80021ae:	2021      	movs	r0, #33	; 0x21
 80021b0:	f000 fac4 	bl	800273c <RST_CLK_GetFlagStatus>
 80021b4:	4603      	mov	r3, r0
 80021b6:	71bb      	strb	r3, [r7, #6]
 80021b8:	683b      	ldr	r3, [r7, #0]
 80021ba:	3301      	adds	r3, #1
 80021bc:	603b      	str	r3, [r7, #0]
 80021be:	683b      	ldr	r3, [r7, #0]
 80021c0:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 80021c4:	d202      	bcs.n	80021cc <RST_CLK_CPU_PLLstatus+0x28>
 80021c6:	79bb      	ldrb	r3, [r7, #6]
 80021c8:	2b00      	cmp	r3, #0
 80021ca:	d0f0      	beq.n	80021ae <RST_CLK_CPU_PLLstatus+0xa>
 80021cc:	2021      	movs	r0, #33	; 0x21
 80021ce:	f000 fab5 	bl	800273c <RST_CLK_GetFlagStatus>
 80021d2:	4603      	mov	r3, r0
 80021d4:	2b00      	cmp	r3, #0
 80021d6:	d002      	beq.n	80021de <RST_CLK_CPU_PLLstatus+0x3a>
 80021d8:	2301      	movs	r3, #1
 80021da:	71fb      	strb	r3, [r7, #7]
 80021dc:	e001      	b.n	80021e2 <RST_CLK_CPU_PLLstatus+0x3e>
 80021de:	2300      	movs	r3, #0
 80021e0:	71fb      	strb	r3, [r7, #7]
 80021e2:	79fb      	ldrb	r3, [r7, #7]
 80021e4:	4618      	mov	r0, r3
 80021e6:	3708      	adds	r7, #8
 80021e8:	46bd      	mov	sp, r7
 80021ea:	bd80      	pop	{r7, pc}

080021ec <RST_CLK_CPUclkPrescaler>:
 80021ec:	b480      	push	{r7}
 80021ee:	b085      	sub	sp, #20
 80021f0:	af00      	add	r7, sp, #0
 80021f2:	6078      	str	r0, [r7, #4]
 80021f4:	4b09      	ldr	r3, [pc, #36]	; (800221c <RST_CLK_CPUclkPrescaler+0x30>)
 80021f6:	68db      	ldr	r3, [r3, #12]
 80021f8:	60fb      	str	r3, [r7, #12]
 80021fa:	68fb      	ldr	r3, [r7, #12]
 80021fc:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8002200:	60fb      	str	r3, [r7, #12]
 8002202:	687b      	ldr	r3, [r7, #4]
 8002204:	011b      	lsls	r3, r3, #4
 8002206:	68fa      	ldr	r2, [r7, #12]
 8002208:	4313      	orrs	r3, r2
 800220a:	60fb      	str	r3, [r7, #12]
 800220c:	4a03      	ldr	r2, [pc, #12]	; (800221c <RST_CLK_CPUclkPrescaler+0x30>)
 800220e:	68fb      	ldr	r3, [r7, #12]
 8002210:	60d3      	str	r3, [r2, #12]
 8002212:	bf00      	nop
 8002214:	3714      	adds	r7, #20
 8002216:	46bd      	mov	sp, r7
 8002218:	bc80      	pop	{r7}
 800221a:	4770      	bx	lr
 800221c:	40020000 	.word	0x40020000

08002220 <RST_CLK_CPUclkSelection>:
 8002220:	b480      	push	{r7}
 8002222:	b085      	sub	sp, #20
 8002224:	af00      	add	r7, sp, #0
 8002226:	6078      	str	r0, [r7, #4]
 8002228:	4b09      	ldr	r3, [pc, #36]	; (8002250 <RST_CLK_CPUclkSelection+0x30>)
 800222a:	68db      	ldr	r3, [r3, #12]
 800222c:	60fb      	str	r3, [r7, #12]
 800222e:	68fb      	ldr	r3, [r7, #12]
 8002230:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8002234:	60fb      	str	r3, [r7, #12]
 8002236:	68fa      	ldr	r2, [r7, #12]
 8002238:	687b      	ldr	r3, [r7, #4]
 800223a:	4313      	orrs	r3, r2
 800223c:	60fb      	str	r3, [r7, #12]
 800223e:	4a04      	ldr	r2, [pc, #16]	; (8002250 <RST_CLK_CPUclkSelection+0x30>)
 8002240:	68fb      	ldr	r3, [r7, #12]
 8002242:	60d3      	str	r3, [r2, #12]
 8002244:	bf00      	nop
 8002246:	3714      	adds	r7, #20
 8002248:	46bd      	mov	sp, r7
 800224a:	bc80      	pop	{r7}
 800224c:	4770      	bx	lr
 800224e:	bf00      	nop
 8002250:	40020000 	.word	0x40020000

08002254 <RST_CLK_USB_PLLconfig>:
 8002254:	b480      	push	{r7}
 8002256:	b085      	sub	sp, #20
 8002258:	af00      	add	r7, sp, #0
 800225a:	6078      	str	r0, [r7, #4]
 800225c:	6039      	str	r1, [r7, #0]
 800225e:	4b16      	ldr	r3, [pc, #88]	; (80022b8 <RST_CLK_USB_PLLconfig+0x64>)
 8002260:	691b      	ldr	r3, [r3, #16]
 8002262:	60fb      	str	r3, [r7, #12]
 8002264:	68fb      	ldr	r3, [r7, #12]
 8002266:	f023 0303 	bic.w	r3, r3, #3
 800226a:	60fb      	str	r3, [r7, #12]
 800226c:	68fa      	ldr	r2, [r7, #12]
 800226e:	687b      	ldr	r3, [r7, #4]
 8002270:	4313      	orrs	r3, r2
 8002272:	60fb      	str	r3, [r7, #12]
 8002274:	4a10      	ldr	r2, [pc, #64]	; (80022b8 <RST_CLK_USB_PLLconfig+0x64>)
 8002276:	68fb      	ldr	r3, [r7, #12]
 8002278:	6113      	str	r3, [r2, #16]
 800227a:	4b0f      	ldr	r3, [pc, #60]	; (80022b8 <RST_CLK_USB_PLLconfig+0x64>)
 800227c:	685b      	ldr	r3, [r3, #4]
 800227e:	60fb      	str	r3, [r7, #12]
 8002280:	68fb      	ldr	r3, [r7, #12]
 8002282:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8002286:	60fb      	str	r3, [r7, #12]
 8002288:	683b      	ldr	r3, [r7, #0]
 800228a:	011b      	lsls	r3, r3, #4
 800228c:	68fa      	ldr	r2, [r7, #12]
 800228e:	4313      	orrs	r3, r2
 8002290:	60fb      	str	r3, [r7, #12]
 8002292:	4a09      	ldr	r2, [pc, #36]	; (80022b8 <RST_CLK_USB_PLLconfig+0x64>)
 8002294:	68fb      	ldr	r3, [r7, #12]
 8002296:	6053      	str	r3, [r2, #4]
 8002298:	4b08      	ldr	r3, [pc, #32]	; (80022bc <RST_CLK_USB_PLLconfig+0x68>)
 800229a:	681b      	ldr	r3, [r3, #0]
 800229c:	2b00      	cmp	r3, #0
 800229e:	d005      	beq.n	80022ac <RST_CLK_USB_PLLconfig+0x58>
 80022a0:	4b07      	ldr	r3, [pc, #28]	; (80022c0 <RST_CLK_USB_PLLconfig+0x6c>)
 80022a2:	2201      	movs	r2, #1
 80022a4:	601a      	str	r2, [r3, #0]
 80022a6:	4b06      	ldr	r3, [pc, #24]	; (80022c0 <RST_CLK_USB_PLLconfig+0x6c>)
 80022a8:	2200      	movs	r2, #0
 80022aa:	601a      	str	r2, [r3, #0]
 80022ac:	bf00      	nop
 80022ae:	3714      	adds	r7, #20
 80022b0:	46bd      	mov	sp, r7
 80022b2:	bc80      	pop	{r7}
 80022b4:	4770      	bx	lr
 80022b6:	bf00      	nop
 80022b8:	40020000 	.word	0x40020000
 80022bc:	42400080 	.word	0x42400080
 80022c0:	42400084 	.word	0x42400084

080022c4 <RST_CLK_USB_PLLuse>:
 80022c4:	b480      	push	{r7}
 80022c6:	b083      	sub	sp, #12
 80022c8:	af00      	add	r7, sp, #0
 80022ca:	4603      	mov	r3, r0
 80022cc:	71fb      	strb	r3, [r7, #7]
 80022ce:	4a04      	ldr	r2, [pc, #16]	; (80022e0 <RST_CLK_USB_PLLuse+0x1c>)
 80022d0:	79fb      	ldrb	r3, [r7, #7]
 80022d2:	6013      	str	r3, [r2, #0]
 80022d4:	bf00      	nop
 80022d6:	370c      	adds	r7, #12
 80022d8:	46bd      	mov	sp, r7
 80022da:	bc80      	pop	{r7}
 80022dc:	4770      	bx	lr
 80022de:	bf00      	nop
 80022e0:	42400208 	.word	0x42400208

080022e4 <RST_CLK_USB_PLLcmd>:
 80022e4:	b480      	push	{r7}
 80022e6:	b083      	sub	sp, #12
 80022e8:	af00      	add	r7, sp, #0
 80022ea:	4603      	mov	r3, r0
 80022ec:	71fb      	strb	r3, [r7, #7]
 80022ee:	4a04      	ldr	r2, [pc, #16]	; (8002300 <RST_CLK_USB_PLLcmd+0x1c>)
 80022f0:	79fb      	ldrb	r3, [r7, #7]
 80022f2:	6013      	str	r3, [r2, #0]
 80022f4:	bf00      	nop
 80022f6:	370c      	adds	r7, #12
 80022f8:	46bd      	mov	sp, r7
 80022fa:	bc80      	pop	{r7}
 80022fc:	4770      	bx	lr
 80022fe:	bf00      	nop
 8002300:	42400080 	.word	0x42400080

08002304 <RST_CLK_USB_PLLstatus>:
 8002304:	b580      	push	{r7, lr}
 8002306:	b082      	sub	sp, #8
 8002308:	af00      	add	r7, sp, #0
 800230a:	2300      	movs	r3, #0
 800230c:	603b      	str	r3, [r7, #0]
 800230e:	2020      	movs	r0, #32
 8002310:	f000 fa14 	bl	800273c <RST_CLK_GetFlagStatus>
 8002314:	4603      	mov	r3, r0
 8002316:	71bb      	strb	r3, [r7, #6]
 8002318:	683b      	ldr	r3, [r7, #0]
 800231a:	3301      	adds	r3, #1
 800231c:	603b      	str	r3, [r7, #0]
 800231e:	683b      	ldr	r3, [r7, #0]
 8002320:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 8002324:	d202      	bcs.n	800232c <RST_CLK_USB_PLLstatus+0x28>
 8002326:	79bb      	ldrb	r3, [r7, #6]
 8002328:	2b00      	cmp	r3, #0
 800232a:	d0f0      	beq.n	800230e <RST_CLK_USB_PLLstatus+0xa>
 800232c:	2020      	movs	r0, #32
 800232e:	f000 fa05 	bl	800273c <RST_CLK_GetFlagStatus>
 8002332:	4603      	mov	r3, r0
 8002334:	2b00      	cmp	r3, #0
 8002336:	d002      	beq.n	800233e <RST_CLK_USB_PLLstatus+0x3a>
 8002338:	2301      	movs	r3, #1
 800233a:	71fb      	strb	r3, [r7, #7]
 800233c:	e001      	b.n	8002342 <RST_CLK_USB_PLLstatus+0x3e>
 800233e:	2300      	movs	r3, #0
 8002340:	71fb      	strb	r3, [r7, #7]
 8002342:	79fb      	ldrb	r3, [r7, #7]
 8002344:	4618      	mov	r0, r3
 8002346:	3708      	adds	r7, #8
 8002348:	46bd      	mov	sp, r7
 800234a:	bd80      	pop	{r7, pc}

0800234c <RST_CLK_USBclkPrescaler>:
 800234c:	b480      	push	{r7}
 800234e:	b083      	sub	sp, #12
 8002350:	af00      	add	r7, sp, #0
 8002352:	4603      	mov	r3, r0
 8002354:	71fb      	strb	r3, [r7, #7]
 8002356:	4a04      	ldr	r2, [pc, #16]	; (8002368 <RST_CLK_USBclkPrescaler+0x1c>)
 8002358:	79fb      	ldrb	r3, [r7, #7]
 800235a:	6013      	str	r3, [r2, #0]
 800235c:	bf00      	nop
 800235e:	370c      	adds	r7, #12
 8002360:	46bd      	mov	sp, r7
 8002362:	bc80      	pop	{r7}
 8002364:	4770      	bx	lr
 8002366:	bf00      	nop
 8002368:	42400220 	.word	0x42400220

0800236c <RST_CLK_USBclkEnable>:
 800236c:	b480      	push	{r7}
 800236e:	b083      	sub	sp, #12
 8002370:	af00      	add	r7, sp, #0
 8002372:	4603      	mov	r3, r0
 8002374:	71fb      	strb	r3, [r7, #7]
 8002376:	4a04      	ldr	r2, [pc, #16]	; (8002388 <RST_CLK_USBclkEnable+0x1c>)
 8002378:	79fb      	ldrb	r3, [r7, #7]
 800237a:	6013      	str	r3, [r2, #0]
 800237c:	bf00      	nop
 800237e:	370c      	adds	r7, #12
 8002380:	46bd      	mov	sp, r7
 8002382:	bc80      	pop	{r7}
 8002384:	4770      	bx	lr
 8002386:	bf00      	nop
 8002388:	42400210 	.word	0x42400210

0800238c <RST_CLK_ADCclkSelection>:
 800238c:	b480      	push	{r7}
 800238e:	b085      	sub	sp, #20
 8002390:	af00      	add	r7, sp, #0
 8002392:	6078      	str	r0, [r7, #4]
 8002394:	4b09      	ldr	r3, [pc, #36]	; (80023bc <RST_CLK_ADCclkSelection+0x30>)
 8002396:	695b      	ldr	r3, [r3, #20]
 8002398:	60fb      	str	r3, [r7, #12]
 800239a:	68fb      	ldr	r3, [r7, #12]
 800239c:	f023 0333 	bic.w	r3, r3, #51	; 0x33
 80023a0:	60fb      	str	r3, [r7, #12]
 80023a2:	68fa      	ldr	r2, [r7, #12]
 80023a4:	687b      	ldr	r3, [r7, #4]
 80023a6:	4313      	orrs	r3, r2
 80023a8:	60fb      	str	r3, [r7, #12]
 80023aa:	4a04      	ldr	r2, [pc, #16]	; (80023bc <RST_CLK_ADCclkSelection+0x30>)
 80023ac:	68fb      	ldr	r3, [r7, #12]
 80023ae:	6153      	str	r3, [r2, #20]
 80023b0:	bf00      	nop
 80023b2:	3714      	adds	r7, #20
 80023b4:	46bd      	mov	sp, r7
 80023b6:	bc80      	pop	{r7}
 80023b8:	4770      	bx	lr
 80023ba:	bf00      	nop
 80023bc:	40020000 	.word	0x40020000

080023c0 <RST_CLK_ADCclkPrescaler>:
 80023c0:	b480      	push	{r7}
 80023c2:	b085      	sub	sp, #20
 80023c4:	af00      	add	r7, sp, #0
 80023c6:	6078      	str	r0, [r7, #4]
 80023c8:	4b09      	ldr	r3, [pc, #36]	; (80023f0 <RST_CLK_ADCclkPrescaler+0x30>)
 80023ca:	695b      	ldr	r3, [r3, #20]
 80023cc:	60fb      	str	r3, [r7, #12]
 80023ce:	68fb      	ldr	r3, [r7, #12]
 80023d0:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80023d4:	60fb      	str	r3, [r7, #12]
 80023d6:	687b      	ldr	r3, [r7, #4]
 80023d8:	021b      	lsls	r3, r3, #8
 80023da:	68fa      	ldr	r2, [r7, #12]
 80023dc:	4313      	orrs	r3, r2
 80023de:	60fb      	str	r3, [r7, #12]
 80023e0:	4a03      	ldr	r2, [pc, #12]	; (80023f0 <RST_CLK_ADCclkPrescaler+0x30>)
 80023e2:	68fb      	ldr	r3, [r7, #12]
 80023e4:	6153      	str	r3, [r2, #20]
 80023e6:	bf00      	nop
 80023e8:	3714      	adds	r7, #20
 80023ea:	46bd      	mov	sp, r7
 80023ec:	bc80      	pop	{r7}
 80023ee:	4770      	bx	lr
 80023f0:	40020000 	.word	0x40020000

080023f4 <RST_CLK_ADCclkEnable>:
 80023f4:	b480      	push	{r7}
 80023f6:	b083      	sub	sp, #12
 80023f8:	af00      	add	r7, sp, #0
 80023fa:	4603      	mov	r3, r0
 80023fc:	71fb      	strb	r3, [r7, #7]
 80023fe:	4a04      	ldr	r2, [pc, #16]	; (8002410 <RST_CLK_ADCclkEnable+0x1c>)
 8002400:	79fb      	ldrb	r3, [r7, #7]
 8002402:	6013      	str	r3, [r2, #0]
 8002404:	bf00      	nop
 8002406:	370c      	adds	r7, #12
 8002408:	46bd      	mov	sp, r7
 800240a:	bc80      	pop	{r7}
 800240c:	4770      	bx	lr
 800240e:	bf00      	nop
 8002410:	424002b4 	.word	0x424002b4

08002414 <RST_CLK_HSIclkPrescaler>:
 8002414:	b480      	push	{r7}
 8002416:	b085      	sub	sp, #20
 8002418:	af00      	add	r7, sp, #0
 800241a:	6078      	str	r0, [r7, #4]
 800241c:	4b09      	ldr	r3, [pc, #36]	; (8002444 <RST_CLK_HSIclkPrescaler+0x30>)
 800241e:	699b      	ldr	r3, [r3, #24]
 8002420:	60fb      	str	r3, [r7, #12]
 8002422:	68fb      	ldr	r3, [r7, #12]
 8002424:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8002428:	60fb      	str	r3, [r7, #12]
 800242a:	687b      	ldr	r3, [r7, #4]
 800242c:	011b      	lsls	r3, r3, #4
 800242e:	68fa      	ldr	r2, [r7, #12]
 8002430:	4313      	orrs	r3, r2
 8002432:	60fb      	str	r3, [r7, #12]
 8002434:	4a03      	ldr	r2, [pc, #12]	; (8002444 <RST_CLK_HSIclkPrescaler+0x30>)
 8002436:	68fb      	ldr	r3, [r7, #12]
 8002438:	6193      	str	r3, [r2, #24]
 800243a:	bf00      	nop
 800243c:	3714      	adds	r7, #20
 800243e:	46bd      	mov	sp, r7
 8002440:	bc80      	pop	{r7}
 8002442:	4770      	bx	lr
 8002444:	40020000 	.word	0x40020000

08002448 <RST_CLK_RTC_HSIclkEnable>:
 8002448:	b480      	push	{r7}
 800244a:	b083      	sub	sp, #12
 800244c:	af00      	add	r7, sp, #0
 800244e:	4603      	mov	r3, r0
 8002450:	71fb      	strb	r3, [r7, #7]
 8002452:	4a04      	ldr	r2, [pc, #16]	; (8002464 <RST_CLK_RTC_HSIclkEnable+0x1c>)
 8002454:	79fb      	ldrb	r3, [r7, #7]
 8002456:	6013      	str	r3, [r2, #0]
 8002458:	bf00      	nop
 800245a:	370c      	adds	r7, #12
 800245c:	46bd      	mov	sp, r7
 800245e:	bc80      	pop	{r7}
 8002460:	4770      	bx	lr
 8002462:	bf00      	nop
 8002464:	42400324 	.word	0x42400324

08002468 <RST_CLK_HSEclkPrescaler>:
 8002468:	b480      	push	{r7}
 800246a:	b085      	sub	sp, #20
 800246c:	af00      	add	r7, sp, #0
 800246e:	6078      	str	r0, [r7, #4]
 8002470:	4b09      	ldr	r3, [pc, #36]	; (8002498 <RST_CLK_HSEclkPrescaler+0x30>)
 8002472:	699b      	ldr	r3, [r3, #24]
 8002474:	60fb      	str	r3, [r7, #12]
 8002476:	68fb      	ldr	r3, [r7, #12]
 8002478:	f023 030f 	bic.w	r3, r3, #15
 800247c:	60fb      	str	r3, [r7, #12]
 800247e:	68fa      	ldr	r2, [r7, #12]
 8002480:	687b      	ldr	r3, [r7, #4]
 8002482:	4313      	orrs	r3, r2
 8002484:	60fb      	str	r3, [r7, #12]
 8002486:	4a04      	ldr	r2, [pc, #16]	; (8002498 <RST_CLK_HSEclkPrescaler+0x30>)
 8002488:	68fb      	ldr	r3, [r7, #12]
 800248a:	6193      	str	r3, [r2, #24]
 800248c:	bf00      	nop
 800248e:	3714      	adds	r7, #20
 8002490:	46bd      	mov	sp, r7
 8002492:	bc80      	pop	{r7}
 8002494:	4770      	bx	lr
 8002496:	bf00      	nop
 8002498:	40020000 	.word	0x40020000

0800249c <RST_CLK_RTC_HSEclkEnable>:
 800249c:	b480      	push	{r7}
 800249e:	b083      	sub	sp, #12
 80024a0:	af00      	add	r7, sp, #0
 80024a2:	4603      	mov	r3, r0
 80024a4:	71fb      	strb	r3, [r7, #7]
 80024a6:	4a04      	ldr	r2, [pc, #16]	; (80024b8 <RST_CLK_RTC_HSEclkEnable+0x1c>)
 80024a8:	79fb      	ldrb	r3, [r7, #7]
 80024aa:	6013      	str	r3, [r2, #0]
 80024ac:	bf00      	nop
 80024ae:	370c      	adds	r7, #12
 80024b0:	46bd      	mov	sp, r7
 80024b2:	bc80      	pop	{r7}
 80024b4:	4770      	bx	lr
 80024b6:	bf00      	nop
 80024b8:	42400320 	.word	0x42400320

080024bc <RST_CLK_PCLKcmd>:
 80024bc:	b480      	push	{r7}
 80024be:	b083      	sub	sp, #12
 80024c0:	af00      	add	r7, sp, #0
 80024c2:	6078      	str	r0, [r7, #4]
 80024c4:	460b      	mov	r3, r1
 80024c6:	70fb      	strb	r3, [r7, #3]
 80024c8:	78fb      	ldrb	r3, [r7, #3]
 80024ca:	2b00      	cmp	r3, #0
 80024cc:	d006      	beq.n	80024dc <RST_CLK_PCLKcmd+0x20>
 80024ce:	4909      	ldr	r1, [pc, #36]	; (80024f4 <RST_CLK_PCLKcmd+0x38>)
 80024d0:	4b08      	ldr	r3, [pc, #32]	; (80024f4 <RST_CLK_PCLKcmd+0x38>)
 80024d2:	69da      	ldr	r2, [r3, #28]
 80024d4:	687b      	ldr	r3, [r7, #4]
 80024d6:	4313      	orrs	r3, r2
 80024d8:	61cb      	str	r3, [r1, #28]
 80024da:	e006      	b.n	80024ea <RST_CLK_PCLKcmd+0x2e>
 80024dc:	4905      	ldr	r1, [pc, #20]	; (80024f4 <RST_CLK_PCLKcmd+0x38>)
 80024de:	4b05      	ldr	r3, [pc, #20]	; (80024f4 <RST_CLK_PCLKcmd+0x38>)
 80024e0:	69da      	ldr	r2, [r3, #28]
 80024e2:	687b      	ldr	r3, [r7, #4]
 80024e4:	43db      	mvns	r3, r3
 80024e6:	4013      	ands	r3, r2
 80024e8:	61cb      	str	r3, [r1, #28]
 80024ea:	bf00      	nop
 80024ec:	370c      	adds	r7, #12
 80024ee:	46bd      	mov	sp, r7
 80024f0:	bc80      	pop	{r7}
 80024f2:	4770      	bx	lr
 80024f4:	40020000 	.word	0x40020000

080024f8 <RST_CLK_GetClocksFreq>:
 80024f8:	b480      	push	{r7}
 80024fa:	b091      	sub	sp, #68	; 0x44
 80024fc:	af00      	add	r7, sp, #0
 80024fe:	6078      	str	r0, [r7, #4]
 8002500:	4b85      	ldr	r3, [pc, #532]	; (8002718 <RST_CLK_GetClocksFreq+0x220>)
 8002502:	681b      	ldr	r3, [r3, #0]
 8002504:	2b00      	cmp	r3, #0
 8002506:	d002      	beq.n	800250e <RST_CLK_GetClocksFreq+0x16>
 8002508:	4b84      	ldr	r3, [pc, #528]	; (800271c <RST_CLK_GetClocksFreq+0x224>)
 800250a:	63fb      	str	r3, [r7, #60]	; 0x3c
 800250c:	e001      	b.n	8002512 <RST_CLK_GetClocksFreq+0x1a>
 800250e:	4b83      	ldr	r3, [pc, #524]	; (800271c <RST_CLK_GetClocksFreq+0x224>)
 8002510:	63fb      	str	r3, [r7, #60]	; 0x3c
 8002512:	4b83      	ldr	r3, [pc, #524]	; (8002720 <RST_CLK_GetClocksFreq+0x228>)
 8002514:	681b      	ldr	r3, [r3, #0]
 8002516:	2b00      	cmp	r3, #0
 8002518:	d002      	beq.n	8002520 <RST_CLK_GetClocksFreq+0x28>
 800251a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800251c:	085b      	lsrs	r3, r3, #1
 800251e:	63fb      	str	r3, [r7, #60]	; 0x3c
 8002520:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002522:	63bb      	str	r3, [r7, #56]	; 0x38
 8002524:	4b7f      	ldr	r3, [pc, #508]	; (8002724 <RST_CLK_GetClocksFreq+0x22c>)
 8002526:	681b      	ldr	r3, [r3, #0]
 8002528:	2b00      	cmp	r3, #0
 800252a:	d00b      	beq.n	8002544 <RST_CLK_GetClocksFreq+0x4c>
 800252c:	4b7e      	ldr	r3, [pc, #504]	; (8002728 <RST_CLK_GetClocksFreq+0x230>)
 800252e:	685b      	ldr	r3, [r3, #4]
 8002530:	0a1b      	lsrs	r3, r3, #8
 8002532:	f003 030f 	and.w	r3, r3, #15
 8002536:	3301      	adds	r3, #1
 8002538:	613b      	str	r3, [r7, #16]
 800253a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 800253c:	693a      	ldr	r2, [r7, #16]
 800253e:	fb02 f303 	mul.w	r3, r2, r3
 8002542:	63bb      	str	r3, [r7, #56]	; 0x38
 8002544:	4b78      	ldr	r3, [pc, #480]	; (8002728 <RST_CLK_GetClocksFreq+0x230>)
 8002546:	68db      	ldr	r3, [r3, #12]
 8002548:	0a1b      	lsrs	r3, r3, #8
 800254a:	f003 0303 	and.w	r3, r3, #3
 800254e:	2b01      	cmp	r3, #1
 8002550:	d008      	beq.n	8002564 <RST_CLK_GetClocksFreq+0x6c>
 8002552:	2b01      	cmp	r3, #1
 8002554:	d302      	bcc.n	800255c <RST_CLK_GetClocksFreq+0x64>
 8002556:	2b02      	cmp	r3, #2
 8002558:	d01c      	beq.n	8002594 <RST_CLK_GetClocksFreq+0x9c>
 800255a:	e020      	b.n	800259e <RST_CLK_GetClocksFreq+0xa6>
 800255c:	687b      	ldr	r3, [r7, #4]
 800255e:	4a6f      	ldr	r2, [pc, #444]	; (800271c <RST_CLK_GetClocksFreq+0x224>)
 8002560:	601a      	str	r2, [r3, #0]
 8002562:	e021      	b.n	80025a8 <RST_CLK_GetClocksFreq+0xb0>
 8002564:	4b70      	ldr	r3, [pc, #448]	; (8002728 <RST_CLK_GetClocksFreq+0x230>)
 8002566:	68db      	ldr	r3, [r3, #12]
 8002568:	091b      	lsrs	r3, r3, #4
 800256a:	f003 0308 	and.w	r3, r3, #8
 800256e:	2b00      	cmp	r3, #0
 8002570:	d102      	bne.n	8002578 <RST_CLK_GetClocksFreq+0x80>
 8002572:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8002574:	637b      	str	r3, [r7, #52]	; 0x34
 8002576:	e009      	b.n	800258c <RST_CLK_GetClocksFreq+0x94>
 8002578:	4b6b      	ldr	r3, [pc, #428]	; (8002728 <RST_CLK_GetClocksFreq+0x230>)
 800257a:	68db      	ldr	r3, [r3, #12]
 800257c:	091b      	lsrs	r3, r3, #4
 800257e:	f003 0307 	and.w	r3, r3, #7
 8002582:	3301      	adds	r3, #1
 8002584:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8002586:	fa22 f303 	lsr.w	r3, r2, r3
 800258a:	637b      	str	r3, [r7, #52]	; 0x34
 800258c:	687b      	ldr	r3, [r7, #4]
 800258e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002590:	601a      	str	r2, [r3, #0]
 8002592:	e009      	b.n	80025a8 <RST_CLK_GetClocksFreq+0xb0>
 8002594:	687b      	ldr	r3, [r7, #4]
 8002596:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 800259a:	601a      	str	r2, [r3, #0]
 800259c:	e004      	b.n	80025a8 <RST_CLK_GetClocksFreq+0xb0>
 800259e:	687b      	ldr	r3, [r7, #4]
 80025a0:	f649 4240 	movw	r2, #40000	; 0x9c40
 80025a4:	601a      	str	r2, [r3, #0]
 80025a6:	bf00      	nop
 80025a8:	4b60      	ldr	r3, [pc, #384]	; (800272c <RST_CLK_GetClocksFreq+0x234>)
 80025aa:	681b      	ldr	r3, [r3, #0]
 80025ac:	2b00      	cmp	r3, #0
 80025ae:	d002      	beq.n	80025b6 <RST_CLK_GetClocksFreq+0xbe>
 80025b0:	4b5a      	ldr	r3, [pc, #360]	; (800271c <RST_CLK_GetClocksFreq+0x224>)
 80025b2:	633b      	str	r3, [r7, #48]	; 0x30
 80025b4:	e001      	b.n	80025ba <RST_CLK_GetClocksFreq+0xc2>
 80025b6:	4b59      	ldr	r3, [pc, #356]	; (800271c <RST_CLK_GetClocksFreq+0x224>)
 80025b8:	633b      	str	r3, [r7, #48]	; 0x30
 80025ba:	4b5d      	ldr	r3, [pc, #372]	; (8002730 <RST_CLK_GetClocksFreq+0x238>)
 80025bc:	681b      	ldr	r3, [r3, #0]
 80025be:	2b00      	cmp	r3, #0
 80025c0:	d002      	beq.n	80025c8 <RST_CLK_GetClocksFreq+0xd0>
 80025c2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80025c4:	085b      	lsrs	r3, r3, #1
 80025c6:	633b      	str	r3, [r7, #48]	; 0x30
 80025c8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80025ca:	62fb      	str	r3, [r7, #44]	; 0x2c
 80025cc:	4b59      	ldr	r3, [pc, #356]	; (8002734 <RST_CLK_GetClocksFreq+0x23c>)
 80025ce:	681b      	ldr	r3, [r3, #0]
 80025d0:	2b00      	cmp	r3, #0
 80025d2:	d00b      	beq.n	80025ec <RST_CLK_GetClocksFreq+0xf4>
 80025d4:	4b54      	ldr	r3, [pc, #336]	; (8002728 <RST_CLK_GetClocksFreq+0x230>)
 80025d6:	685b      	ldr	r3, [r3, #4]
 80025d8:	091b      	lsrs	r3, r3, #4
 80025da:	f003 030f 	and.w	r3, r3, #15
 80025de:	3301      	adds	r3, #1
 80025e0:	613b      	str	r3, [r7, #16]
 80025e2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80025e4:	693a      	ldr	r2, [r7, #16]
 80025e6:	fb02 f303 	mul.w	r3, r2, r3
 80025ea:	62fb      	str	r3, [r7, #44]	; 0x2c
 80025ec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80025ee:	62bb      	str	r3, [r7, #40]	; 0x28
 80025f0:	4b51      	ldr	r3, [pc, #324]	; (8002738 <RST_CLK_GetClocksFreq+0x240>)
 80025f2:	681b      	ldr	r3, [r3, #0]
 80025f4:	2b00      	cmp	r3, #0
 80025f6:	d002      	beq.n	80025fe <RST_CLK_GetClocksFreq+0x106>
 80025f8:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80025fa:	085b      	lsrs	r3, r3, #1
 80025fc:	62bb      	str	r3, [r7, #40]	; 0x28
 80025fe:	687b      	ldr	r3, [r7, #4]
 8002600:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8002602:	605a      	str	r2, [r3, #4]
 8002604:	4b48      	ldr	r3, [pc, #288]	; (8002728 <RST_CLK_GetClocksFreq+0x230>)
 8002606:	699b      	ldr	r3, [r3, #24]
 8002608:	091b      	lsrs	r3, r3, #4
 800260a:	60fb      	str	r3, [r7, #12]
 800260c:	68fb      	ldr	r3, [r7, #12]
 800260e:	f003 0308 	and.w	r3, r3, #8
 8002612:	2b00      	cmp	r3, #0
 8002614:	d102      	bne.n	800261c <RST_CLK_GetClocksFreq+0x124>
 8002616:	4b41      	ldr	r3, [pc, #260]	; (800271c <RST_CLK_GetClocksFreq+0x224>)
 8002618:	61bb      	str	r3, [r7, #24]
 800261a:	e00c      	b.n	8002636 <RST_CLK_GetClocksFreq+0x13e>
 800261c:	68fb      	ldr	r3, [r7, #12]
 800261e:	f003 0307 	and.w	r3, r3, #7
 8002622:	3301      	adds	r3, #1
 8002624:	2201      	movs	r2, #1
 8002626:	fa02 f303 	lsl.w	r3, r2, r3
 800262a:	60fb      	str	r3, [r7, #12]
 800262c:	4a3b      	ldr	r2, [pc, #236]	; (800271c <RST_CLK_GetClocksFreq+0x224>)
 800262e:	68fb      	ldr	r3, [r7, #12]
 8002630:	fbb2 f3f3 	udiv	r3, r2, r3
 8002634:	61bb      	str	r3, [r7, #24]
 8002636:	687b      	ldr	r3, [r7, #4]
 8002638:	69ba      	ldr	r2, [r7, #24]
 800263a:	60da      	str	r2, [r3, #12]
 800263c:	4b3a      	ldr	r3, [pc, #232]	; (8002728 <RST_CLK_GetClocksFreq+0x230>)
 800263e:	699b      	ldr	r3, [r3, #24]
 8002640:	60fb      	str	r3, [r7, #12]
 8002642:	68fb      	ldr	r3, [r7, #12]
 8002644:	f003 0308 	and.w	r3, r3, #8
 8002648:	2b00      	cmp	r3, #0
 800264a:	d102      	bne.n	8002652 <RST_CLK_GetClocksFreq+0x15a>
 800264c:	4b33      	ldr	r3, [pc, #204]	; (800271c <RST_CLK_GetClocksFreq+0x224>)
 800264e:	617b      	str	r3, [r7, #20]
 8002650:	e00c      	b.n	800266c <RST_CLK_GetClocksFreq+0x174>
 8002652:	68fb      	ldr	r3, [r7, #12]
 8002654:	f003 0307 	and.w	r3, r3, #7
 8002658:	3301      	adds	r3, #1
 800265a:	2201      	movs	r2, #1
 800265c:	fa02 f303 	lsl.w	r3, r2, r3
 8002660:	60fb      	str	r3, [r7, #12]
 8002662:	4a2e      	ldr	r2, [pc, #184]	; (800271c <RST_CLK_GetClocksFreq+0x224>)
 8002664:	68fb      	ldr	r3, [r7, #12]
 8002666:	fbb2 f3f3 	udiv	r3, r2, r3
 800266a:	617b      	str	r3, [r7, #20]
 800266c:	687b      	ldr	r3, [r7, #4]
 800266e:	697a      	ldr	r2, [r7, #20]
 8002670:	611a      	str	r2, [r3, #16]
 8002672:	4b2d      	ldr	r3, [pc, #180]	; (8002728 <RST_CLK_GetClocksFreq+0x230>)
 8002674:	695b      	ldr	r3, [r3, #20]
 8002676:	f003 0303 	and.w	r3, r3, #3
 800267a:	2b01      	cmp	r3, #1
 800267c:	d007      	beq.n	800268e <RST_CLK_GetClocksFreq+0x196>
 800267e:	2b01      	cmp	r3, #1
 8002680:	d302      	bcc.n	8002688 <RST_CLK_GetClocksFreq+0x190>
 8002682:	2b02      	cmp	r3, #2
 8002684:	d006      	beq.n	8002694 <RST_CLK_GetClocksFreq+0x19c>
 8002686:	e008      	b.n	800269a <RST_CLK_GetClocksFreq+0x1a2>
 8002688:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800268a:	627b      	str	r3, [r7, #36]	; 0x24
 800268c:	e008      	b.n	80026a0 <RST_CLK_GetClocksFreq+0x1a8>
 800268e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002690:	627b      	str	r3, [r7, #36]	; 0x24
 8002692:	e005      	b.n	80026a0 <RST_CLK_GetClocksFreq+0x1a8>
 8002694:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8002696:	627b      	str	r3, [r7, #36]	; 0x24
 8002698:	e002      	b.n	80026a0 <RST_CLK_GetClocksFreq+0x1a8>
 800269a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800269c:	627b      	str	r3, [r7, #36]	; 0x24
 800269e:	bf00      	nop
 80026a0:	4b21      	ldr	r3, [pc, #132]	; (8002728 <RST_CLK_GetClocksFreq+0x230>)
 80026a2:	695b      	ldr	r3, [r3, #20]
 80026a4:	091b      	lsrs	r3, r3, #4
 80026a6:	f003 0303 	and.w	r3, r3, #3
 80026aa:	2b01      	cmp	r3, #1
 80026ac:	d008      	beq.n	80026c0 <RST_CLK_GetClocksFreq+0x1c8>
 80026ae:	2b01      	cmp	r3, #1
 80026b0:	d302      	bcc.n	80026b8 <RST_CLK_GetClocksFreq+0x1c0>
 80026b2:	2b02      	cmp	r3, #2
 80026b4:	d008      	beq.n	80026c8 <RST_CLK_GetClocksFreq+0x1d0>
 80026b6:	e00a      	b.n	80026ce <RST_CLK_GetClocksFreq+0x1d6>
 80026b8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80026bc:	623b      	str	r3, [r7, #32]
 80026be:	e009      	b.n	80026d4 <RST_CLK_GetClocksFreq+0x1dc>
 80026c0:	f649 4340 	movw	r3, #40000	; 0x9c40
 80026c4:	623b      	str	r3, [r7, #32]
 80026c6:	e005      	b.n	80026d4 <RST_CLK_GetClocksFreq+0x1dc>
 80026c8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80026ca:	623b      	str	r3, [r7, #32]
 80026cc:	e002      	b.n	80026d4 <RST_CLK_GetClocksFreq+0x1dc>
 80026ce:	69bb      	ldr	r3, [r7, #24]
 80026d0:	623b      	str	r3, [r7, #32]
 80026d2:	bf00      	nop
 80026d4:	4b14      	ldr	r3, [pc, #80]	; (8002728 <RST_CLK_GetClocksFreq+0x230>)
 80026d6:	695b      	ldr	r3, [r3, #20]
 80026d8:	0a1b      	lsrs	r3, r3, #8
 80026da:	60fb      	str	r3, [r7, #12]
 80026dc:	68fb      	ldr	r3, [r7, #12]
 80026de:	f003 0308 	and.w	r3, r3, #8
 80026e2:	2b00      	cmp	r3, #0
 80026e4:	d102      	bne.n	80026ec <RST_CLK_GetClocksFreq+0x1f4>
 80026e6:	6a3b      	ldr	r3, [r7, #32]
 80026e8:	61fb      	str	r3, [r7, #28]
 80026ea:	e00c      	b.n	8002706 <RST_CLK_GetClocksFreq+0x20e>
 80026ec:	68fb      	ldr	r3, [r7, #12]
 80026ee:	f003 0307 	and.w	r3, r3, #7
 80026f2:	3301      	adds	r3, #1
 80026f4:	2201      	movs	r2, #1
 80026f6:	fa02 f303 	lsl.w	r3, r2, r3
 80026fa:	60fb      	str	r3, [r7, #12]
 80026fc:	6a3a      	ldr	r2, [r7, #32]
 80026fe:	68fb      	ldr	r3, [r7, #12]
 8002700:	fbb2 f3f3 	udiv	r3, r2, r3
 8002704:	61fb      	str	r3, [r7, #28]
 8002706:	687b      	ldr	r3, [r7, #4]
 8002708:	69fa      	ldr	r2, [r7, #28]
 800270a:	609a      	str	r2, [r3, #8]
 800270c:	bf00      	nop
 800270e:	3744      	adds	r7, #68	; 0x44
 8002710:	46bd      	mov	sp, r7
 8002712:	bc80      	pop	{r7}
 8002714:	4770      	bx	lr
 8002716:	bf00      	nop
 8002718:	42400184 	.word	0x42400184
 800271c:	007a1200 	.word	0x007a1200
 8002720:	42400180 	.word	0x42400180
 8002724:	42400188 	.word	0x42400188
 8002728:	40020000 	.word	0x40020000
 800272c:	42400204 	.word	0x42400204
 8002730:	42400200 	.word	0x42400200
 8002734:	42400208 	.word	0x42400208
 8002738:	42400210 	.word	0x42400210

0800273c <RST_CLK_GetFlagStatus>:
 800273c:	b480      	push	{r7}
 800273e:	b085      	sub	sp, #20
 8002740:	af00      	add	r7, sp, #0
 8002742:	6078      	str	r0, [r7, #4]
 8002744:	687b      	ldr	r3, [r7, #4]
 8002746:	f003 03e0 	and.w	r3, r3, #224	; 0xe0
 800274a:	2b20      	cmp	r3, #32
 800274c:	d103      	bne.n	8002756 <RST_CLK_GetFlagStatus+0x1a>
 800274e:	4b0d      	ldr	r3, [pc, #52]	; (8002784 <RST_CLK_GetFlagStatus+0x48>)
 8002750:	681b      	ldr	r3, [r3, #0]
 8002752:	60fb      	str	r3, [r7, #12]
 8002754:	e002      	b.n	800275c <RST_CLK_GetFlagStatus+0x20>
 8002756:	4b0c      	ldr	r3, [pc, #48]	; (8002788 <RST_CLK_GetFlagStatus+0x4c>)
 8002758:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 800275a:	60fb      	str	r3, [r7, #12]
 800275c:	687b      	ldr	r3, [r7, #4]
 800275e:	f003 031f 	and.w	r3, r3, #31
 8002762:	2201      	movs	r2, #1
 8002764:	409a      	lsls	r2, r3
 8002766:	68fb      	ldr	r3, [r7, #12]
 8002768:	4013      	ands	r3, r2
 800276a:	2b00      	cmp	r3, #0
 800276c:	d002      	beq.n	8002774 <RST_CLK_GetFlagStatus+0x38>
 800276e:	2301      	movs	r3, #1
 8002770:	72fb      	strb	r3, [r7, #11]
 8002772:	e001      	b.n	8002778 <RST_CLK_GetFlagStatus+0x3c>
 8002774:	2300      	movs	r3, #0
 8002776:	72fb      	strb	r3, [r7, #11]
 8002778:	7afb      	ldrb	r3, [r7, #11]
 800277a:	4618      	mov	r0, r3
 800277c:	3714      	adds	r7, #20
 800277e:	46bd      	mov	sp, r7
 8002780:	bc80      	pop	{r7}
 8002782:	4770      	bx	lr
 8002784:	40020000 	.word	0x40020000
 8002788:	400d8000 	.word	0x400d8000
