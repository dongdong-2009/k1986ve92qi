
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 80 00 20 61 04 00 08 c1 04 00 08 c1 04 00 08     ... a...........
 8000010:	c1 04 00 08 c1 04 00 08 c1 04 00 08 00 00 00 00     ................
	...
 800002c:	c1 04 00 08 c1 04 00 08 00 00 00 00 c1 04 00 08     ................
 800003c:	c1 04 00 08 c1 04 00 08 c1 04 00 08 c1 04 00 08     ................
	...
 8000054:	c1 04 00 08 c1 04 00 08 c1 04 00 08 c1 04 00 08     ................
 8000064:	00 00 00 00 c1 04 00 08 c1 04 00 08 c1 04 00 08     ................
 8000074:	00 00 00 00 c1 04 00 08 c1 04 00 08 c1 04 00 08     ................
 8000084:	c1 04 00 08 00 00 00 00 c1 04 00 08 c1 04 00 08     ................
	...
 80000ac:	c1 04 00 08 c1 04 00 08 c1 04 00 08 c1 04 00 08     ................
 80000bc:	c1 04 00 08                                         ....

080000c0 <main>:
 80000c0:	b598      	push	{r3, r4, r7, lr}
 80000c2:	af00      	add	r7, sp, #0
 80000c4:	f000 fa00 	bl	80004c8 <RST_CLK_DeInit>
 80000c8:	2100      	movs	r1, #0
 80000ca:	2001      	movs	r0, #1
 80000cc:	f000 fb78 	bl	80007c0 <RST_CLK_CPU_PLLconfig>
 80000d0:	2101      	movs	r1, #1
 80000d2:	4887      	ldr	r0, [pc, #540]	; (80002f0 <main+0x230>)
 80000d4:	f000 fd58 	bl	8000b88 <RST_CLK_PCLKcmd>
 80000d8:	2101      	movs	r1, #1
 80000da:	f04f 5004 	mov.w	r0, #553648128	; 0x21000000
 80000de:	f000 fd53 	bl	8000b88 <RST_CLK_PCLKcmd>
 80000e2:	4b84      	ldr	r3, [pc, #528]	; (80002f4 <main+0x234>)
 80000e4:	4a84      	ldr	r2, [pc, #528]	; (80002f8 <main+0x238>)
 80000e6:	60da      	str	r2, [r3, #12]
 80000e8:	4b82      	ldr	r3, [pc, #520]	; (80002f4 <main+0x234>)
 80000ea:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80000ee:	609a      	str	r2, [r3, #8]
 80000f0:	4b82      	ldr	r3, [pc, #520]	; (80002fc <main+0x23c>)
 80000f2:	f04f 32ff 	mov.w	r2, #4294967295
 80000f6:	f8c3 2180 	str.w	r2, [r3, #384]	; 0x180
 80000fa:	4b80      	ldr	r3, [pc, #512]	; (80002fc <main+0x23c>)
 80000fc:	f04f 32ff 	mov.w	r2, #4294967295
 8000100:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
 8000104:	4b7e      	ldr	r3, [pc, #504]	; (8000300 <main+0x240>)
 8000106:	f04f 32ff 	mov.w	r2, #4294967295
 800010a:	625a      	str	r2, [r3, #36]	; 0x24
 800010c:	4b7c      	ldr	r3, [pc, #496]	; (8000300 <main+0x240>)
 800010e:	f04f 32ff 	mov.w	r2, #4294967295
 8000112:	61da      	str	r2, [r3, #28]
 8000114:	487b      	ldr	r0, [pc, #492]	; (8000304 <main+0x244>)
 8000116:	f000 fe9f 	bl	8000e58 <PORT_DeInit>
 800011a:	487b      	ldr	r0, [pc, #492]	; (8000308 <main+0x248>)
 800011c:	f000 fe9c 	bl	8000e58 <PORT_DeInit>
 8000120:	4b7a      	ldr	r3, [pc, #488]	; (800030c <main+0x24c>)
 8000122:	222c      	movs	r2, #44	; 0x2c
 8000124:	801a      	strh	r2, [r3, #0]
 8000126:	4b79      	ldr	r3, [pc, #484]	; (800030c <main+0x24c>)
 8000128:	2200      	movs	r2, #0
 800012a:	709a      	strb	r2, [r3, #2]
 800012c:	4b77      	ldr	r3, [pc, #476]	; (800030c <main+0x24c>)
 800012e:	2202      	movs	r2, #2
 8000130:	721a      	strb	r2, [r3, #8]
 8000132:	4b76      	ldr	r3, [pc, #472]	; (800030c <main+0x24c>)
 8000134:	2201      	movs	r2, #1
 8000136:	729a      	strb	r2, [r3, #10]
 8000138:	4b74      	ldr	r3, [pc, #464]	; (800030c <main+0x24c>)
 800013a:	2202      	movs	r2, #2
 800013c:	725a      	strb	r2, [r3, #9]
 800013e:	4973      	ldr	r1, [pc, #460]	; (800030c <main+0x24c>)
 8000140:	4870      	ldr	r0, [pc, #448]	; (8000304 <main+0x244>)
 8000142:	f000 feab 	bl	8000e9c <PORT_Init>
 8000146:	4b71      	ldr	r3, [pc, #452]	; (800030c <main+0x24c>)
 8000148:	2201      	movs	r2, #1
 800014a:	709a      	strb	r2, [r3, #2]
 800014c:	4b6f      	ldr	r3, [pc, #444]	; (800030c <main+0x24c>)
 800014e:	2240      	movs	r2, #64	; 0x40
 8000150:	801a      	strh	r2, [r3, #0]
 8000152:	496e      	ldr	r1, [pc, #440]	; (800030c <main+0x24c>)
 8000154:	486b      	ldr	r0, [pc, #428]	; (8000304 <main+0x244>)
 8000156:	f000 fea1 	bl	8000e9c <PORT_Init>
 800015a:	4b6c      	ldr	r3, [pc, #432]	; (800030c <main+0x24c>)
 800015c:	2208      	movs	r2, #8
 800015e:	801a      	strh	r2, [r3, #0]
 8000160:	4b6a      	ldr	r3, [pc, #424]	; (800030c <main+0x24c>)
 8000162:	2200      	movs	r2, #0
 8000164:	709a      	strb	r2, [r3, #2]
 8000166:	4969      	ldr	r1, [pc, #420]	; (800030c <main+0x24c>)
 8000168:	4867      	ldr	r0, [pc, #412]	; (8000308 <main+0x248>)
 800016a:	f000 fe97 	bl	8000e9c <PORT_Init>
 800016e:	4b67      	ldr	r3, [pc, #412]	; (800030c <main+0x24c>)
 8000170:	2207      	movs	r2, #7
 8000172:	801a      	strh	r2, [r3, #0]
 8000174:	4b65      	ldr	r3, [pc, #404]	; (800030c <main+0x24c>)
 8000176:	2201      	movs	r2, #1
 8000178:	709a      	strb	r2, [r3, #2]
 800017a:	4964      	ldr	r1, [pc, #400]	; (800030c <main+0x24c>)
 800017c:	4862      	ldr	r0, [pc, #392]	; (8000308 <main+0x248>)
 800017e:	f000 fe8d 	bl	8000e9c <PORT_Init>
 8000182:	2120      	movs	r1, #32
 8000184:	4862      	ldr	r0, [pc, #392]	; (8000310 <main+0x250>)
 8000186:	f000 f8d9 	bl	800033c <Init_RAM>
 800018a:	2120      	movs	r1, #32
 800018c:	4861      	ldr	r0, [pc, #388]	; (8000314 <main+0x254>)
 800018e:	f000 f8d5 	bl	800033c <Init_RAM>
 8000192:	2120      	movs	r1, #32
 8000194:	4860      	ldr	r0, [pc, #384]	; (8000318 <main+0x258>)
 8000196:	f000 f8d1 	bl	800033c <Init_RAM>
 800019a:	2120      	movs	r1, #32
 800019c:	485f      	ldr	r0, [pc, #380]	; (800031c <main+0x25c>)
 800019e:	f000 f8cd 	bl	800033c <Init_RAM>
 80001a2:	485f      	ldr	r0, [pc, #380]	; (8000320 <main+0x260>)
 80001a4:	f001 f846 	bl	8001234 <SSP_DeInit>
 80001a8:	485e      	ldr	r0, [pc, #376]	; (8000324 <main+0x264>)
 80001aa:	f001 f843 	bl	8001234 <SSP_DeInit>
 80001ae:	2104      	movs	r1, #4
 80001b0:	485b      	ldr	r0, [pc, #364]	; (8000320 <main+0x260>)
 80001b2:	f001 f96d 	bl	8001490 <SSP_BRGInit>
 80001b6:	2104      	movs	r1, #4
 80001b8:	485a      	ldr	r0, [pc, #360]	; (8000324 <main+0x264>)
 80001ba:	f001 f969 	bl	8001490 <SSP_BRGInit>
 80001be:	485a      	ldr	r0, [pc, #360]	; (8000328 <main+0x268>)
 80001c0:	f001 f880 	bl	80012c4 <SSP_StructInit>
 80001c4:	4b58      	ldr	r3, [pc, #352]	; (8000328 <main+0x268>)
 80001c6:	2210      	movs	r2, #16
 80001c8:	801a      	strh	r2, [r3, #0]
 80001ca:	4b57      	ldr	r3, [pc, #348]	; (8000328 <main+0x268>)
 80001cc:	2202      	movs	r2, #2
 80001ce:	805a      	strh	r2, [r3, #2]
 80001d0:	4b55      	ldr	r3, [pc, #340]	; (8000328 <main+0x268>)
 80001d2:	2200      	movs	r2, #0
 80001d4:	809a      	strh	r2, [r3, #4]
 80001d6:	4b54      	ldr	r3, [pc, #336]	; (8000328 <main+0x268>)
 80001d8:	220f      	movs	r2, #15
 80001da:	80da      	strh	r2, [r3, #6]
 80001dc:	4b52      	ldr	r3, [pc, #328]	; (8000328 <main+0x268>)
 80001de:	2200      	movs	r2, #0
 80001e0:	811a      	strh	r2, [r3, #8]
 80001e2:	4b51      	ldr	r3, [pc, #324]	; (8000328 <main+0x268>)
 80001e4:	2200      	movs	r2, #0
 80001e6:	815a      	strh	r2, [r3, #10]
 80001e8:	4b4f      	ldr	r3, [pc, #316]	; (8000328 <main+0x268>)
 80001ea:	2200      	movs	r2, #0
 80001ec:	819a      	strh	r2, [r3, #12]
 80001ee:	4b4e      	ldr	r3, [pc, #312]	; (8000328 <main+0x268>)
 80001f0:	2202      	movs	r2, #2
 80001f2:	81da      	strh	r2, [r3, #14]
 80001f4:	494c      	ldr	r1, [pc, #304]	; (8000328 <main+0x268>)
 80001f6:	484a      	ldr	r0, [pc, #296]	; (8000320 <main+0x260>)
 80001f8:	f001 f838 	bl	800126c <SSP_Init>
 80001fc:	4b4a      	ldr	r3, [pc, #296]	; (8000328 <main+0x268>)
 80001fe:	2200      	movs	r2, #0
 8000200:	811a      	strh	r2, [r3, #8]
 8000202:	4b49      	ldr	r3, [pc, #292]	; (8000328 <main+0x268>)
 8000204:	2200      	movs	r2, #0
 8000206:	815a      	strh	r2, [r3, #10]
 8000208:	4b47      	ldr	r3, [pc, #284]	; (8000328 <main+0x268>)
 800020a:	220c      	movs	r2, #12
 800020c:	805a      	strh	r2, [r3, #2]
 800020e:	4b46      	ldr	r3, [pc, #280]	; (8000328 <main+0x268>)
 8000210:	2204      	movs	r2, #4
 8000212:	809a      	strh	r2, [r3, #4]
 8000214:	4944      	ldr	r1, [pc, #272]	; (8000328 <main+0x268>)
 8000216:	4843      	ldr	r0, [pc, #268]	; (8000324 <main+0x264>)
 8000218:	f001 f828 	bl	800126c <SSP_Init>
 800021c:	2101      	movs	r1, #1
 800021e:	4840      	ldr	r0, [pc, #256]	; (8000320 <main+0x260>)
 8000220:	f001 f86e 	bl	8001300 <SSP_Cmd>
 8000224:	2101      	movs	r1, #1
 8000226:	483f      	ldr	r0, [pc, #252]	; (8000324 <main+0x264>)
 8000228:	f001 f86a 	bl	8001300 <SSP_Cmd>
 800022c:	e049      	b.n	80002c2 <main+0x202>
 800022e:	bf00      	nop
 8000230:	2101      	movs	r1, #1
 8000232:	483b      	ldr	r0, [pc, #236]	; (8000320 <main+0x260>)
 8000234:	f001 f916 	bl	8001464 <SSP_GetFlagStatus>
 8000238:	4603      	mov	r3, r0
 800023a:	2b00      	cmp	r3, #0
 800023c:	d0f8      	beq.n	8000230 <main+0x170>
 800023e:	4b3b      	ldr	r3, [pc, #236]	; (800032c <main+0x26c>)
 8000240:	781b      	ldrb	r3, [r3, #0]
 8000242:	461a      	mov	r2, r3
 8000244:	4b33      	ldr	r3, [pc, #204]	; (8000314 <main+0x254>)
 8000246:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
 800024a:	4619      	mov	r1, r3
 800024c:	4834      	ldr	r0, [pc, #208]	; (8000320 <main+0x260>)
 800024e:	f001 f8ef 	bl	8001430 <SSP_SendData>
 8000252:	4b36      	ldr	r3, [pc, #216]	; (800032c <main+0x26c>)
 8000254:	781b      	ldrb	r3, [r3, #0]
 8000256:	1c5a      	adds	r2, r3, #1
 8000258:	b2d1      	uxtb	r1, r2
 800025a:	4a34      	ldr	r2, [pc, #208]	; (800032c <main+0x26c>)
 800025c:	7011      	strb	r1, [r2, #0]
 800025e:	461a      	mov	r2, r3
 8000260:	4b2e      	ldr	r3, [pc, #184]	; (800031c <main+0x25c>)
 8000262:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
 8000266:	4619      	mov	r1, r3
 8000268:	482e      	ldr	r0, [pc, #184]	; (8000324 <main+0x264>)
 800026a:	f001 f8e1 	bl	8001430 <SSP_SendData>
 800026e:	bf00      	nop
 8000270:	2104      	movs	r1, #4
 8000272:	482b      	ldr	r0, [pc, #172]	; (8000320 <main+0x260>)
 8000274:	f001 f8f6 	bl	8001464 <SSP_GetFlagStatus>
 8000278:	4603      	mov	r3, r0
 800027a:	2b00      	cmp	r3, #0
 800027c:	d0f8      	beq.n	8000270 <main+0x1b0>
 800027e:	4b2c      	ldr	r3, [pc, #176]	; (8000330 <main+0x270>)
 8000280:	781b      	ldrb	r3, [r3, #0]
 8000282:	461c      	mov	r4, r3
 8000284:	4826      	ldr	r0, [pc, #152]	; (8000320 <main+0x260>)
 8000286:	f001 f8e1 	bl	800144c <SSP_ReceiveData>
 800028a:	4603      	mov	r3, r0
 800028c:	461a      	mov	r2, r3
 800028e:	4b20      	ldr	r3, [pc, #128]	; (8000310 <main+0x250>)
 8000290:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8000294:	bf00      	nop
 8000296:	2104      	movs	r1, #4
 8000298:	4822      	ldr	r0, [pc, #136]	; (8000324 <main+0x264>)
 800029a:	f001 f8e3 	bl	8001464 <SSP_GetFlagStatus>
 800029e:	4603      	mov	r3, r0
 80002a0:	2b00      	cmp	r3, #0
 80002a2:	d0f8      	beq.n	8000296 <main+0x1d6>
 80002a4:	4b22      	ldr	r3, [pc, #136]	; (8000330 <main+0x270>)
 80002a6:	781b      	ldrb	r3, [r3, #0]
 80002a8:	1c5a      	adds	r2, r3, #1
 80002aa:	b2d1      	uxtb	r1, r2
 80002ac:	4a20      	ldr	r2, [pc, #128]	; (8000330 <main+0x270>)
 80002ae:	7011      	strb	r1, [r2, #0]
 80002b0:	461c      	mov	r4, r3
 80002b2:	481c      	ldr	r0, [pc, #112]	; (8000324 <main+0x264>)
 80002b4:	f001 f8ca 	bl	800144c <SSP_ReceiveData>
 80002b8:	4603      	mov	r3, r0
 80002ba:	461a      	mov	r2, r3
 80002bc:	4b16      	ldr	r3, [pc, #88]	; (8000318 <main+0x258>)
 80002be:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 80002c2:	4b1a      	ldr	r3, [pc, #104]	; (800032c <main+0x26c>)
 80002c4:	781b      	ldrb	r3, [r3, #0]
 80002c6:	2b1f      	cmp	r3, #31
 80002c8:	d9b1      	bls.n	800022e <main+0x16e>
 80002ca:	4a13      	ldr	r2, [pc, #76]	; (8000318 <main+0x258>)
 80002cc:	4911      	ldr	r1, [pc, #68]	; (8000314 <main+0x254>)
 80002ce:	2020      	movs	r0, #32
 80002d0:	f000 f8a4 	bl	800041c <Verif_mem>
 80002d4:	4603      	mov	r3, r0
 80002d6:	461a      	mov	r2, r3
 80002d8:	4b16      	ldr	r3, [pc, #88]	; (8000334 <main+0x274>)
 80002da:	701a      	strb	r2, [r3, #0]
 80002dc:	4a0c      	ldr	r2, [pc, #48]	; (8000310 <main+0x250>)
 80002de:	490f      	ldr	r1, [pc, #60]	; (800031c <main+0x25c>)
 80002e0:	2020      	movs	r0, #32
 80002e2:	f000 f89b 	bl	800041c <Verif_mem>
 80002e6:	4603      	mov	r3, r0
 80002e8:	461a      	mov	r2, r3
 80002ea:	4b13      	ldr	r3, [pc, #76]	; (8000338 <main+0x278>)
 80002ec:	701a      	strb	r2, [r3, #0]
 80002ee:	e7fe      	b.n	80002ee <main+0x22e>
 80002f0:	00100110 	.word	0x00100110
 80002f4:	e000ed00 	.word	0xe000ed00
 80002f8:	05fa0500 	.word	0x05fa0500
 80002fc:	e000e100 	.word	0xe000e100
 8000300:	40028000 	.word	0x40028000
 8000304:	400c0000 	.word	0x400c0000
 8000308:	400e8000 	.word	0x400e8000
 800030c:	20000010 	.word	0x20000010
 8000310:	2000009c 	.word	0x2000009c
 8000314:	2000001c 	.word	0x2000001c
 8000318:	200000dc 	.word	0x200000dc
 800031c:	2000005c 	.word	0x2000005c
 8000320:	40040000 	.word	0x40040000
 8000324:	400a0000 	.word	0x400a0000
 8000328:	20000000 	.word	0x20000000
 800032c:	2000011c 	.word	0x2000011c
 8000330:	2000011d 	.word	0x2000011d
 8000334:	2000011e 	.word	0x2000011e
 8000338:	2000011f 	.word	0x2000011f

0800033c <Init_RAM>:
 800033c:	b590      	push	{r4, r7, lr}
 800033e:	b085      	sub	sp, #20
 8000340:	af00      	add	r7, sp, #0
 8000342:	6078      	str	r0, [r7, #4]
 8000344:	6039      	str	r1, [r7, #0]
 8000346:	2300      	movs	r3, #0
 8000348:	60fb      	str	r3, [r7, #12]
 800034a:	e012      	b.n	8000372 <Init_RAM+0x36>
 800034c:	687c      	ldr	r4, [r7, #4]
 800034e:	1ca3      	adds	r3, r4, #2
 8000350:	607b      	str	r3, [r7, #4]
 8000352:	687b      	ldr	r3, [r7, #4]
 8000354:	4618      	mov	r0, r3
 8000356:	f000 f815 	bl	8000384 <ps_rand>
 800035a:	4603      	mov	r3, r0
 800035c:	b29a      	uxth	r2, r3
 800035e:	68fb      	ldr	r3, [r7, #12]
 8000360:	b29b      	uxth	r3, r3
 8000362:	009b      	lsls	r3, r3, #2
 8000364:	b29b      	uxth	r3, r3
 8000366:	4413      	add	r3, r2
 8000368:	b29b      	uxth	r3, r3
 800036a:	8023      	strh	r3, [r4, #0]
 800036c:	68fb      	ldr	r3, [r7, #12]
 800036e:	3301      	adds	r3, #1
 8000370:	60fb      	str	r3, [r7, #12]
 8000372:	68fa      	ldr	r2, [r7, #12]
 8000374:	683b      	ldr	r3, [r7, #0]
 8000376:	429a      	cmp	r2, r3
 8000378:	d3e8      	bcc.n	800034c <Init_RAM+0x10>
 800037a:	bf00      	nop
 800037c:	3714      	adds	r7, #20
 800037e:	46bd      	mov	sp, r7
 8000380:	bd90      	pop	{r4, r7, pc}
 8000382:	bf00      	nop

08000384 <ps_rand>:
 8000384:	b480      	push	{r7}
 8000386:	b087      	sub	sp, #28
 8000388:	af00      	add	r7, sp, #0
 800038a:	6078      	str	r0, [r7, #4]
 800038c:	2300      	movs	r3, #0
 800038e:	617b      	str	r3, [r7, #20]
 8000390:	1d3b      	adds	r3, r7, #4
 8000392:	60fb      	str	r3, [r7, #12]
 8000394:	2300      	movs	r3, #0
 8000396:	613b      	str	r3, [r7, #16]
 8000398:	e014      	b.n	80003c4 <ps_rand+0x40>
 800039a:	68fa      	ldr	r2, [r7, #12]
 800039c:	693b      	ldr	r3, [r7, #16]
 800039e:	4413      	add	r3, r2
 80003a0:	781b      	ldrb	r3, [r3, #0]
 80003a2:	461a      	mov	r2, r3
 80003a4:	697b      	ldr	r3, [r7, #20]
 80003a6:	4413      	add	r3, r2
 80003a8:	617b      	str	r3, [r7, #20]
 80003aa:	697b      	ldr	r3, [r7, #20]
 80003ac:	029b      	lsls	r3, r3, #10
 80003ae:	697a      	ldr	r2, [r7, #20]
 80003b0:	4413      	add	r3, r2
 80003b2:	617b      	str	r3, [r7, #20]
 80003b4:	697b      	ldr	r3, [r7, #20]
 80003b6:	099b      	lsrs	r3, r3, #6
 80003b8:	697a      	ldr	r2, [r7, #20]
 80003ba:	4053      	eors	r3, r2
 80003bc:	617b      	str	r3, [r7, #20]
 80003be:	693b      	ldr	r3, [r7, #16]
 80003c0:	3301      	adds	r3, #1
 80003c2:	613b      	str	r3, [r7, #16]
 80003c4:	693b      	ldr	r3, [r7, #16]
 80003c6:	2b03      	cmp	r3, #3
 80003c8:	d9e7      	bls.n	800039a <ps_rand+0x16>
 80003ca:	2300      	movs	r3, #0
 80003cc:	613b      	str	r3, [r7, #16]
 80003ce:	e00c      	b.n	80003ea <ps_rand+0x66>
 80003d0:	697b      	ldr	r3, [r7, #20]
 80003d2:	029b      	lsls	r3, r3, #10
 80003d4:	697a      	ldr	r2, [r7, #20]
 80003d6:	4413      	add	r3, r2
 80003d8:	617b      	str	r3, [r7, #20]
 80003da:	697b      	ldr	r3, [r7, #20]
 80003dc:	099b      	lsrs	r3, r3, #6
 80003de:	697a      	ldr	r2, [r7, #20]
 80003e0:	4053      	eors	r3, r2
 80003e2:	617b      	str	r3, [r7, #20]
 80003e4:	693b      	ldr	r3, [r7, #16]
 80003e6:	3301      	adds	r3, #1
 80003e8:	613b      	str	r3, [r7, #16]
 80003ea:	693b      	ldr	r3, [r7, #16]
 80003ec:	2bff      	cmp	r3, #255	; 0xff
 80003ee:	d9ef      	bls.n	80003d0 <ps_rand+0x4c>
 80003f0:	697b      	ldr	r3, [r7, #20]
 80003f2:	00db      	lsls	r3, r3, #3
 80003f4:	697a      	ldr	r2, [r7, #20]
 80003f6:	4413      	add	r3, r2
 80003f8:	617b      	str	r3, [r7, #20]
 80003fa:	697b      	ldr	r3, [r7, #20]
 80003fc:	0adb      	lsrs	r3, r3, #11
 80003fe:	697a      	ldr	r2, [r7, #20]
 8000400:	4053      	eors	r3, r2
 8000402:	617b      	str	r3, [r7, #20]
 8000404:	697b      	ldr	r3, [r7, #20]
 8000406:	03db      	lsls	r3, r3, #15
 8000408:	697a      	ldr	r2, [r7, #20]
 800040a:	4413      	add	r3, r2
 800040c:	617b      	str	r3, [r7, #20]
 800040e:	697b      	ldr	r3, [r7, #20]
 8000410:	4618      	mov	r0, r3
 8000412:	371c      	adds	r7, #28
 8000414:	46bd      	mov	sp, r7
 8000416:	bc80      	pop	{r7}
 8000418:	4770      	bx	lr
 800041a:	bf00      	nop

0800041c <Verif_mem>:
 800041c:	b480      	push	{r7}
 800041e:	b087      	sub	sp, #28
 8000420:	af00      	add	r7, sp, #0
 8000422:	60f8      	str	r0, [r7, #12]
 8000424:	60b9      	str	r1, [r7, #8]
 8000426:	607a      	str	r2, [r7, #4]
 8000428:	2300      	movs	r3, #0
 800042a:	617b      	str	r3, [r7, #20]
 800042c:	e00e      	b.n	800044c <Verif_mem+0x30>
 800042e:	68bb      	ldr	r3, [r7, #8]
 8000430:	1c9a      	adds	r2, r3, #2
 8000432:	60ba      	str	r2, [r7, #8]
 8000434:	881a      	ldrh	r2, [r3, #0]
 8000436:	687b      	ldr	r3, [r7, #4]
 8000438:	1c99      	adds	r1, r3, #2
 800043a:	6079      	str	r1, [r7, #4]
 800043c:	881b      	ldrh	r3, [r3, #0]
 800043e:	429a      	cmp	r2, r3
 8000440:	d001      	beq.n	8000446 <Verif_mem+0x2a>
 8000442:	2300      	movs	r3, #0
 8000444:	e007      	b.n	8000456 <Verif_mem+0x3a>
 8000446:	697b      	ldr	r3, [r7, #20]
 8000448:	3301      	adds	r3, #1
 800044a:	617b      	str	r3, [r7, #20]
 800044c:	697a      	ldr	r2, [r7, #20]
 800044e:	68fb      	ldr	r3, [r7, #12]
 8000450:	429a      	cmp	r2, r3
 8000452:	d3ec      	bcc.n	800042e <Verif_mem+0x12>
 8000454:	2301      	movs	r3, #1
 8000456:	4618      	mov	r0, r3
 8000458:	371c      	adds	r7, #28
 800045a:	46bd      	mov	sp, r7
 800045c:	bc80      	pop	{r7}
 800045e:	4770      	bx	lr

08000460 <handler_reset>:
 8000460:	b580      	push	{r7, lr}
 8000462:	b082      	sub	sp, #8
 8000464:	af00      	add	r7, sp, #0
 8000466:	4b11      	ldr	r3, [pc, #68]	; (80004ac <handler_reset+0x4c>)
 8000468:	607b      	str	r3, [r7, #4]
 800046a:	4b11      	ldr	r3, [pc, #68]	; (80004b0 <handler_reset+0x50>)
 800046c:	603b      	str	r3, [r7, #0]
 800046e:	e007      	b.n	8000480 <handler_reset+0x20>
 8000470:	683b      	ldr	r3, [r7, #0]
 8000472:	1d1a      	adds	r2, r3, #4
 8000474:	603a      	str	r2, [r7, #0]
 8000476:	687a      	ldr	r2, [r7, #4]
 8000478:	1d11      	adds	r1, r2, #4
 800047a:	6079      	str	r1, [r7, #4]
 800047c:	6812      	ldr	r2, [r2, #0]
 800047e:	601a      	str	r2, [r3, #0]
 8000480:	683b      	ldr	r3, [r7, #0]
 8000482:	4a0c      	ldr	r2, [pc, #48]	; (80004b4 <handler_reset+0x54>)
 8000484:	4293      	cmp	r3, r2
 8000486:	d3f3      	bcc.n	8000470 <handler_reset+0x10>
 8000488:	4b0b      	ldr	r3, [pc, #44]	; (80004b8 <handler_reset+0x58>)
 800048a:	603b      	str	r3, [r7, #0]
 800048c:	e004      	b.n	8000498 <handler_reset+0x38>
 800048e:	683b      	ldr	r3, [r7, #0]
 8000490:	1d1a      	adds	r2, r3, #4
 8000492:	603a      	str	r2, [r7, #0]
 8000494:	2200      	movs	r2, #0
 8000496:	601a      	str	r2, [r3, #0]
 8000498:	683b      	ldr	r3, [r7, #0]
 800049a:	4a08      	ldr	r2, [pc, #32]	; (80004bc <handler_reset+0x5c>)
 800049c:	4293      	cmp	r3, r2
 800049e:	d3f6      	bcc.n	800048e <handler_reset+0x2e>
 80004a0:	f7ff fe0e 	bl	80000c0 <main>
 80004a4:	bf00      	nop
 80004a6:	3708      	adds	r7, #8
 80004a8:	46bd      	mov	sp, r7
 80004aa:	bd80      	pop	{r7, pc}
 80004ac:	08001500 	.word	0x08001500
 80004b0:	20000000 	.word	0x20000000
 80004b4:	20000000 	.word	0x20000000
 80004b8:	20000000 	.word	0x20000000
 80004bc:	20000120 	.word	0x20000120

080004c0 <default_handler>:
 80004c0:	b480      	push	{r7}
 80004c2:	af00      	add	r7, sp, #0
 80004c4:	e7fe      	b.n	80004c4 <default_handler+0x4>
 80004c6:	bf00      	nop

080004c8 <RST_CLK_DeInit>:
 80004c8:	b580      	push	{r7, lr}
 80004ca:	af00      	add	r7, sp, #0
 80004cc:	f000 f816 	bl	80004fc <RST_CLK_WarmDeInit>
 80004d0:	2101      	movs	r1, #1
 80004d2:	f04f 6000 	mov.w	r0, #134217728	; 0x8000000
 80004d6:	f000 fb57 	bl	8000b88 <RST_CLK_PCLKcmd>
 80004da:	4a07      	ldr	r2, [pc, #28]	; (80004f8 <RST_CLK_DeInit+0x30>)
 80004dc:	4b06      	ldr	r3, [pc, #24]	; (80004f8 <RST_CLK_DeInit+0x30>)
 80004de:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80004e0:	f443 0381 	orr.w	r3, r3, #4227072	; 0x408000
 80004e4:	63d3      	str	r3, [r2, #60]	; 0x3c
 80004e6:	4a04      	ldr	r2, [pc, #16]	; (80004f8 <RST_CLK_DeInit+0x30>)
 80004e8:	4b03      	ldr	r3, [pc, #12]	; (80004f8 <RST_CLK_DeInit+0x30>)
 80004ea:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80004ec:	f403 0381 	and.w	r3, r3, #4227072	; 0x408000
 80004f0:	63d3      	str	r3, [r2, #60]	; 0x3c
 80004f2:	bf00      	nop
 80004f4:	bd80      	pop	{r7, pc}
 80004f6:	bf00      	nop
 80004f8:	400d8000 	.word	0x400d8000

080004fc <RST_CLK_WarmDeInit>:
 80004fc:	b580      	push	{r7, lr}
 80004fe:	af00      	add	r7, sp, #0
 8000500:	2001      	movs	r0, #1
 8000502:	f000 f8c1 	bl	8000688 <RST_CLK_HSIcmd>
 8000506:	f000 f8e9 	bl	80006dc <RST_CLK_HSIstatus>
 800050a:	2000      	movs	r0, #0
 800050c:	f000 f9ee 	bl	80008ec <RST_CLK_CPUclkSelection>
 8000510:	4b11      	ldr	r3, [pc, #68]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 8000512:	68db      	ldr	r3, [r3, #12]
 8000514:	4b10      	ldr	r3, [pc, #64]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 8000516:	2200      	movs	r2, #0
 8000518:	60da      	str	r2, [r3, #12]
 800051a:	4b0f      	ldr	r3, [pc, #60]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 800051c:	685b      	ldr	r3, [r3, #4]
 800051e:	4b0e      	ldr	r3, [pc, #56]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 8000520:	2200      	movs	r2, #0
 8000522:	605a      	str	r2, [r3, #4]
 8000524:	4b0c      	ldr	r3, [pc, #48]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 8000526:	689b      	ldr	r3, [r3, #8]
 8000528:	4b0b      	ldr	r3, [pc, #44]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 800052a:	2200      	movs	r2, #0
 800052c:	609a      	str	r2, [r3, #8]
 800052e:	4b0a      	ldr	r3, [pc, #40]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 8000530:	691b      	ldr	r3, [r3, #16]
 8000532:	4b09      	ldr	r3, [pc, #36]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 8000534:	2200      	movs	r2, #0
 8000536:	611a      	str	r2, [r3, #16]
 8000538:	4b07      	ldr	r3, [pc, #28]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 800053a:	695b      	ldr	r3, [r3, #20]
 800053c:	4b06      	ldr	r3, [pc, #24]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 800053e:	2200      	movs	r2, #0
 8000540:	615a      	str	r2, [r3, #20]
 8000542:	4b05      	ldr	r3, [pc, #20]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 8000544:	699b      	ldr	r3, [r3, #24]
 8000546:	4b04      	ldr	r3, [pc, #16]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 8000548:	2200      	movs	r2, #0
 800054a:	619a      	str	r2, [r3, #24]
 800054c:	4b02      	ldr	r3, [pc, #8]	; (8000558 <RST_CLK_WarmDeInit+0x5c>)
 800054e:	4a03      	ldr	r2, [pc, #12]	; (800055c <RST_CLK_WarmDeInit+0x60>)
 8000550:	61da      	str	r2, [r3, #28]
 8000552:	bf00      	nop
 8000554:	bd80      	pop	{r7, pc}
 8000556:	bf00      	nop
 8000558:	40020000 	.word	0x40020000
 800055c:	08000010 	.word	0x08000010

08000560 <RST_CLK_HSEconfig>:
 8000560:	b480      	push	{r7}
 8000562:	b083      	sub	sp, #12
 8000564:	af00      	add	r7, sp, #0
 8000566:	6078      	str	r0, [r7, #4]
 8000568:	4a0f      	ldr	r2, [pc, #60]	; (80005a8 <RST_CLK_HSEconfig+0x48>)
 800056a:	4b0f      	ldr	r3, [pc, #60]	; (80005a8 <RST_CLK_HSEconfig+0x48>)
 800056c:	689b      	ldr	r3, [r3, #8]
 800056e:	f023 0303 	bic.w	r3, r3, #3
 8000572:	6093      	str	r3, [r2, #8]
 8000574:	687b      	ldr	r3, [r7, #4]
 8000576:	2b01      	cmp	r3, #1
 8000578:	d002      	beq.n	8000580 <RST_CLK_HSEconfig+0x20>
 800057a:	2b02      	cmp	r3, #2
 800057c:	d007      	beq.n	800058e <RST_CLK_HSEconfig+0x2e>
 800057e:	e00d      	b.n	800059c <RST_CLK_HSEconfig+0x3c>
 8000580:	4a09      	ldr	r2, [pc, #36]	; (80005a8 <RST_CLK_HSEconfig+0x48>)
 8000582:	4b09      	ldr	r3, [pc, #36]	; (80005a8 <RST_CLK_HSEconfig+0x48>)
 8000584:	689b      	ldr	r3, [r3, #8]
 8000586:	f043 0301 	orr.w	r3, r3, #1
 800058a:	6093      	str	r3, [r2, #8]
 800058c:	e006      	b.n	800059c <RST_CLK_HSEconfig+0x3c>
 800058e:	4a06      	ldr	r2, [pc, #24]	; (80005a8 <RST_CLK_HSEconfig+0x48>)
 8000590:	4b05      	ldr	r3, [pc, #20]	; (80005a8 <RST_CLK_HSEconfig+0x48>)
 8000592:	689b      	ldr	r3, [r3, #8]
 8000594:	f043 0303 	orr.w	r3, r3, #3
 8000598:	6093      	str	r3, [r2, #8]
 800059a:	bf00      	nop
 800059c:	bf00      	nop
 800059e:	370c      	adds	r7, #12
 80005a0:	46bd      	mov	sp, r7
 80005a2:	bc80      	pop	{r7}
 80005a4:	4770      	bx	lr
 80005a6:	bf00      	nop
 80005a8:	40020000 	.word	0x40020000

080005ac <RST_CLK_HSEstatus>:
 80005ac:	b580      	push	{r7, lr}
 80005ae:	b082      	sub	sp, #8
 80005b0:	af00      	add	r7, sp, #0
 80005b2:	2300      	movs	r3, #0
 80005b4:	603b      	str	r3, [r7, #0]
 80005b6:	2022      	movs	r0, #34	; 0x22
 80005b8:	f000 fc26 	bl	8000e08 <RST_CLK_GetFlagStatus>
 80005bc:	4603      	mov	r3, r0
 80005be:	71bb      	strb	r3, [r7, #6]
 80005c0:	683b      	ldr	r3, [r7, #0]
 80005c2:	3301      	adds	r3, #1
 80005c4:	603b      	str	r3, [r7, #0]
 80005c6:	683b      	ldr	r3, [r7, #0]
 80005c8:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 80005cc:	d202      	bcs.n	80005d4 <RST_CLK_HSEstatus+0x28>
 80005ce:	79bb      	ldrb	r3, [r7, #6]
 80005d0:	2b00      	cmp	r3, #0
 80005d2:	d0f0      	beq.n	80005b6 <RST_CLK_HSEstatus+0xa>
 80005d4:	2022      	movs	r0, #34	; 0x22
 80005d6:	f000 fc17 	bl	8000e08 <RST_CLK_GetFlagStatus>
 80005da:	4603      	mov	r3, r0
 80005dc:	2b00      	cmp	r3, #0
 80005de:	d002      	beq.n	80005e6 <RST_CLK_HSEstatus+0x3a>
 80005e0:	2301      	movs	r3, #1
 80005e2:	71fb      	strb	r3, [r7, #7]
 80005e4:	e001      	b.n	80005ea <RST_CLK_HSEstatus+0x3e>
 80005e6:	2300      	movs	r3, #0
 80005e8:	71fb      	strb	r3, [r7, #7]
 80005ea:	79fb      	ldrb	r3, [r7, #7]
 80005ec:	4618      	mov	r0, r3
 80005ee:	3708      	adds	r7, #8
 80005f0:	46bd      	mov	sp, r7
 80005f2:	bd80      	pop	{r7, pc}

080005f4 <RST_CLK_LSEconfig>:
 80005f4:	b480      	push	{r7}
 80005f6:	b083      	sub	sp, #12
 80005f8:	af00      	add	r7, sp, #0
 80005fa:	6078      	str	r0, [r7, #4]
 80005fc:	4a0f      	ldr	r2, [pc, #60]	; (800063c <RST_CLK_LSEconfig+0x48>)
 80005fe:	4b0f      	ldr	r3, [pc, #60]	; (800063c <RST_CLK_LSEconfig+0x48>)
 8000600:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000602:	f023 0303 	bic.w	r3, r3, #3
 8000606:	63d3      	str	r3, [r2, #60]	; 0x3c
 8000608:	687b      	ldr	r3, [r7, #4]
 800060a:	2b01      	cmp	r3, #1
 800060c:	d002      	beq.n	8000614 <RST_CLK_LSEconfig+0x20>
 800060e:	2b02      	cmp	r3, #2
 8000610:	d007      	beq.n	8000622 <RST_CLK_LSEconfig+0x2e>
 8000612:	e00d      	b.n	8000630 <RST_CLK_LSEconfig+0x3c>
 8000614:	4a09      	ldr	r2, [pc, #36]	; (800063c <RST_CLK_LSEconfig+0x48>)
 8000616:	4b09      	ldr	r3, [pc, #36]	; (800063c <RST_CLK_LSEconfig+0x48>)
 8000618:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 800061a:	f043 0301 	orr.w	r3, r3, #1
 800061e:	63d3      	str	r3, [r2, #60]	; 0x3c
 8000620:	e006      	b.n	8000630 <RST_CLK_LSEconfig+0x3c>
 8000622:	4a06      	ldr	r2, [pc, #24]	; (800063c <RST_CLK_LSEconfig+0x48>)
 8000624:	4b05      	ldr	r3, [pc, #20]	; (800063c <RST_CLK_LSEconfig+0x48>)
 8000626:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000628:	f043 0303 	orr.w	r3, r3, #3
 800062c:	63d3      	str	r3, [r2, #60]	; 0x3c
 800062e:	bf00      	nop
 8000630:	bf00      	nop
 8000632:	370c      	adds	r7, #12
 8000634:	46bd      	mov	sp, r7
 8000636:	bc80      	pop	{r7}
 8000638:	4770      	bx	lr
 800063a:	bf00      	nop
 800063c:	400d8000 	.word	0x400d8000

08000640 <RST_CLK_LSEstatus>:
 8000640:	b580      	push	{r7, lr}
 8000642:	b082      	sub	sp, #8
 8000644:	af00      	add	r7, sp, #0
 8000646:	2300      	movs	r3, #0
 8000648:	603b      	str	r3, [r7, #0]
 800064a:	200d      	movs	r0, #13
 800064c:	f000 fbdc 	bl	8000e08 <RST_CLK_GetFlagStatus>
 8000650:	4603      	mov	r3, r0
 8000652:	71bb      	strb	r3, [r7, #6]
 8000654:	683b      	ldr	r3, [r7, #0]
 8000656:	3301      	adds	r3, #1
 8000658:	603b      	str	r3, [r7, #0]
 800065a:	683b      	ldr	r3, [r7, #0]
 800065c:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 8000660:	d202      	bcs.n	8000668 <RST_CLK_LSEstatus+0x28>
 8000662:	79bb      	ldrb	r3, [r7, #6]
 8000664:	2b00      	cmp	r3, #0
 8000666:	d0f0      	beq.n	800064a <RST_CLK_LSEstatus+0xa>
 8000668:	200d      	movs	r0, #13
 800066a:	f000 fbcd 	bl	8000e08 <RST_CLK_GetFlagStatus>
 800066e:	4603      	mov	r3, r0
 8000670:	2b00      	cmp	r3, #0
 8000672:	d002      	beq.n	800067a <RST_CLK_LSEstatus+0x3a>
 8000674:	2301      	movs	r3, #1
 8000676:	71fb      	strb	r3, [r7, #7]
 8000678:	e001      	b.n	800067e <RST_CLK_LSEstatus+0x3e>
 800067a:	2300      	movs	r3, #0
 800067c:	71fb      	strb	r3, [r7, #7]
 800067e:	79fb      	ldrb	r3, [r7, #7]
 8000680:	4618      	mov	r0, r3
 8000682:	3708      	adds	r7, #8
 8000684:	46bd      	mov	sp, r7
 8000686:	bd80      	pop	{r7, pc}

08000688 <RST_CLK_HSIcmd>:
 8000688:	b480      	push	{r7}
 800068a:	b083      	sub	sp, #12
 800068c:	af00      	add	r7, sp, #0
 800068e:	4603      	mov	r3, r0
 8000690:	71fb      	strb	r3, [r7, #7]
 8000692:	4a04      	ldr	r2, [pc, #16]	; (80006a4 <RST_CLK_HSIcmd+0x1c>)
 8000694:	79fb      	ldrb	r3, [r7, #7]
 8000696:	6013      	str	r3, [r2, #0]
 8000698:	bf00      	nop
 800069a:	370c      	adds	r7, #12
 800069c:	46bd      	mov	sp, r7
 800069e:	bc80      	pop	{r7}
 80006a0:	4770      	bx	lr
 80006a2:	bf00      	nop
 80006a4:	43b007d8 	.word	0x43b007d8

080006a8 <RST_CLK_HSIadjust>:
 80006a8:	b480      	push	{r7}
 80006aa:	b085      	sub	sp, #20
 80006ac:	af00      	add	r7, sp, #0
 80006ae:	6078      	str	r0, [r7, #4]
 80006b0:	4b09      	ldr	r3, [pc, #36]	; (80006d8 <RST_CLK_HSIadjust+0x30>)
 80006b2:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80006b4:	60fb      	str	r3, [r7, #12]
 80006b6:	68fb      	ldr	r3, [r7, #12]
 80006b8:	f023 537c 	bic.w	r3, r3, #1056964608	; 0x3f000000
 80006bc:	60fb      	str	r3, [r7, #12]
 80006be:	687b      	ldr	r3, [r7, #4]
 80006c0:	061b      	lsls	r3, r3, #24
 80006c2:	68fa      	ldr	r2, [r7, #12]
 80006c4:	4313      	orrs	r3, r2
 80006c6:	60fb      	str	r3, [r7, #12]
 80006c8:	4a03      	ldr	r2, [pc, #12]	; (80006d8 <RST_CLK_HSIadjust+0x30>)
 80006ca:	68fb      	ldr	r3, [r7, #12]
 80006cc:	63d3      	str	r3, [r2, #60]	; 0x3c
 80006ce:	bf00      	nop
 80006d0:	3714      	adds	r7, #20
 80006d2:	46bd      	mov	sp, r7
 80006d4:	bc80      	pop	{r7}
 80006d6:	4770      	bx	lr
 80006d8:	400d8000 	.word	0x400d8000

080006dc <RST_CLK_HSIstatus>:
 80006dc:	b580      	push	{r7, lr}
 80006de:	b082      	sub	sp, #8
 80006e0:	af00      	add	r7, sp, #0
 80006e2:	2300      	movs	r3, #0
 80006e4:	603b      	str	r3, [r7, #0]
 80006e6:	2017      	movs	r0, #23
 80006e8:	f000 fb8e 	bl	8000e08 <RST_CLK_GetFlagStatus>
 80006ec:	4603      	mov	r3, r0
 80006ee:	71bb      	strb	r3, [r7, #6]
 80006f0:	683b      	ldr	r3, [r7, #0]
 80006f2:	3301      	adds	r3, #1
 80006f4:	603b      	str	r3, [r7, #0]
 80006f6:	683b      	ldr	r3, [r7, #0]
 80006f8:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 80006fc:	d202      	bcs.n	8000704 <RST_CLK_HSIstatus+0x28>
 80006fe:	79bb      	ldrb	r3, [r7, #6]
 8000700:	2b00      	cmp	r3, #0
 8000702:	d0f0      	beq.n	80006e6 <RST_CLK_HSIstatus+0xa>
 8000704:	2017      	movs	r0, #23
 8000706:	f000 fb7f 	bl	8000e08 <RST_CLK_GetFlagStatus>
 800070a:	4603      	mov	r3, r0
 800070c:	2b00      	cmp	r3, #0
 800070e:	d002      	beq.n	8000716 <RST_CLK_HSIstatus+0x3a>
 8000710:	2301      	movs	r3, #1
 8000712:	71fb      	strb	r3, [r7, #7]
 8000714:	e001      	b.n	800071a <RST_CLK_HSIstatus+0x3e>
 8000716:	2300      	movs	r3, #0
 8000718:	71fb      	strb	r3, [r7, #7]
 800071a:	79fb      	ldrb	r3, [r7, #7]
 800071c:	4618      	mov	r0, r3
 800071e:	3708      	adds	r7, #8
 8000720:	46bd      	mov	sp, r7
 8000722:	bd80      	pop	{r7, pc}

08000724 <RST_CLK_LSIcmd>:
 8000724:	b480      	push	{r7}
 8000726:	b083      	sub	sp, #12
 8000728:	af00      	add	r7, sp, #0
 800072a:	4603      	mov	r3, r0
 800072c:	71fb      	strb	r3, [r7, #7]
 800072e:	4a04      	ldr	r2, [pc, #16]	; (8000740 <RST_CLK_LSIcmd+0x1c>)
 8000730:	79fb      	ldrb	r3, [r7, #7]
 8000732:	6013      	str	r3, [r2, #0]
 8000734:	bf00      	nop
 8000736:	370c      	adds	r7, #12
 8000738:	46bd      	mov	sp, r7
 800073a:	bc80      	pop	{r7}
 800073c:	4770      	bx	lr
 800073e:	bf00      	nop
 8000740:	43b007bc 	.word	0x43b007bc

08000744 <RST_CLK_LSIadjust>:
 8000744:	b480      	push	{r7}
 8000746:	b085      	sub	sp, #20
 8000748:	af00      	add	r7, sp, #0
 800074a:	6078      	str	r0, [r7, #4]
 800074c:	4b09      	ldr	r3, [pc, #36]	; (8000774 <RST_CLK_LSIadjust+0x30>)
 800074e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000750:	60fb      	str	r3, [r7, #12]
 8000752:	68fb      	ldr	r3, [r7, #12]
 8000754:	f423 13f8 	bic.w	r3, r3, #2031616	; 0x1f0000
 8000758:	60fb      	str	r3, [r7, #12]
 800075a:	687b      	ldr	r3, [r7, #4]
 800075c:	041b      	lsls	r3, r3, #16
 800075e:	68fa      	ldr	r2, [r7, #12]
 8000760:	4313      	orrs	r3, r2
 8000762:	60fb      	str	r3, [r7, #12]
 8000764:	4a03      	ldr	r2, [pc, #12]	; (8000774 <RST_CLK_LSIadjust+0x30>)
 8000766:	68fb      	ldr	r3, [r7, #12]
 8000768:	63d3      	str	r3, [r2, #60]	; 0x3c
 800076a:	bf00      	nop
 800076c:	3714      	adds	r7, #20
 800076e:	46bd      	mov	sp, r7
 8000770:	bc80      	pop	{r7}
 8000772:	4770      	bx	lr
 8000774:	400d8000 	.word	0x400d8000

08000778 <RST_CLK_LSIstatus>:
 8000778:	b580      	push	{r7, lr}
 800077a:	b082      	sub	sp, #8
 800077c:	af00      	add	r7, sp, #0
 800077e:	2300      	movs	r3, #0
 8000780:	603b      	str	r3, [r7, #0]
 8000782:	2015      	movs	r0, #21
 8000784:	f000 fb40 	bl	8000e08 <RST_CLK_GetFlagStatus>
 8000788:	4603      	mov	r3, r0
 800078a:	71bb      	strb	r3, [r7, #6]
 800078c:	683b      	ldr	r3, [r7, #0]
 800078e:	3301      	adds	r3, #1
 8000790:	603b      	str	r3, [r7, #0]
 8000792:	683b      	ldr	r3, [r7, #0]
 8000794:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 8000798:	d202      	bcs.n	80007a0 <RST_CLK_LSIstatus+0x28>
 800079a:	79bb      	ldrb	r3, [r7, #6]
 800079c:	2b00      	cmp	r3, #0
 800079e:	d0f0      	beq.n	8000782 <RST_CLK_LSIstatus+0xa>
 80007a0:	2015      	movs	r0, #21
 80007a2:	f000 fb31 	bl	8000e08 <RST_CLK_GetFlagStatus>
 80007a6:	4603      	mov	r3, r0
 80007a8:	2b00      	cmp	r3, #0
 80007aa:	d002      	beq.n	80007b2 <RST_CLK_LSIstatus+0x3a>
 80007ac:	2301      	movs	r3, #1
 80007ae:	71fb      	strb	r3, [r7, #7]
 80007b0:	e001      	b.n	80007b6 <RST_CLK_LSIstatus+0x3e>
 80007b2:	2300      	movs	r3, #0
 80007b4:	71fb      	strb	r3, [r7, #7]
 80007b6:	79fb      	ldrb	r3, [r7, #7]
 80007b8:	4618      	mov	r0, r3
 80007ba:	3708      	adds	r7, #8
 80007bc:	46bd      	mov	sp, r7
 80007be:	bd80      	pop	{r7, pc}

080007c0 <RST_CLK_CPU_PLLconfig>:
 80007c0:	b480      	push	{r7}
 80007c2:	b085      	sub	sp, #20
 80007c4:	af00      	add	r7, sp, #0
 80007c6:	6078      	str	r0, [r7, #4]
 80007c8:	6039      	str	r1, [r7, #0]
 80007ca:	4b16      	ldr	r3, [pc, #88]	; (8000824 <RST_CLK_CPU_PLLconfig+0x64>)
 80007cc:	68db      	ldr	r3, [r3, #12]
 80007ce:	60fb      	str	r3, [r7, #12]
 80007d0:	68fb      	ldr	r3, [r7, #12]
 80007d2:	f023 0303 	bic.w	r3, r3, #3
 80007d6:	60fb      	str	r3, [r7, #12]
 80007d8:	68fa      	ldr	r2, [r7, #12]
 80007da:	687b      	ldr	r3, [r7, #4]
 80007dc:	4313      	orrs	r3, r2
 80007de:	60fb      	str	r3, [r7, #12]
 80007e0:	4a10      	ldr	r2, [pc, #64]	; (8000824 <RST_CLK_CPU_PLLconfig+0x64>)
 80007e2:	68fb      	ldr	r3, [r7, #12]
 80007e4:	60d3      	str	r3, [r2, #12]
 80007e6:	4b0f      	ldr	r3, [pc, #60]	; (8000824 <RST_CLK_CPU_PLLconfig+0x64>)
 80007e8:	685b      	ldr	r3, [r3, #4]
 80007ea:	60fb      	str	r3, [r7, #12]
 80007ec:	68fb      	ldr	r3, [r7, #12]
 80007ee:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80007f2:	60fb      	str	r3, [r7, #12]
 80007f4:	683b      	ldr	r3, [r7, #0]
 80007f6:	021b      	lsls	r3, r3, #8
 80007f8:	68fa      	ldr	r2, [r7, #12]
 80007fa:	4313      	orrs	r3, r2
 80007fc:	60fb      	str	r3, [r7, #12]
 80007fe:	4a09      	ldr	r2, [pc, #36]	; (8000824 <RST_CLK_CPU_PLLconfig+0x64>)
 8000800:	68fb      	ldr	r3, [r7, #12]
 8000802:	6053      	str	r3, [r2, #4]
 8000804:	4b08      	ldr	r3, [pc, #32]	; (8000828 <RST_CLK_CPU_PLLconfig+0x68>)
 8000806:	681b      	ldr	r3, [r3, #0]
 8000808:	2b00      	cmp	r3, #0
 800080a:	d005      	beq.n	8000818 <RST_CLK_CPU_PLLconfig+0x58>
 800080c:	4b07      	ldr	r3, [pc, #28]	; (800082c <RST_CLK_CPU_PLLconfig+0x6c>)
 800080e:	2201      	movs	r2, #1
 8000810:	601a      	str	r2, [r3, #0]
 8000812:	4b06      	ldr	r3, [pc, #24]	; (800082c <RST_CLK_CPU_PLLconfig+0x6c>)
 8000814:	2200      	movs	r2, #0
 8000816:	601a      	str	r2, [r3, #0]
 8000818:	bf00      	nop
 800081a:	3714      	adds	r7, #20
 800081c:	46bd      	mov	sp, r7
 800081e:	bc80      	pop	{r7}
 8000820:	4770      	bx	lr
 8000822:	bf00      	nop
 8000824:	40020000 	.word	0x40020000
 8000828:	42400088 	.word	0x42400088
 800082c:	4240008c 	.word	0x4240008c

08000830 <RST_CLK_CPU_PLLuse>:
 8000830:	b480      	push	{r7}
 8000832:	b083      	sub	sp, #12
 8000834:	af00      	add	r7, sp, #0
 8000836:	4603      	mov	r3, r0
 8000838:	71fb      	strb	r3, [r7, #7]
 800083a:	4a04      	ldr	r2, [pc, #16]	; (800084c <RST_CLK_CPU_PLLuse+0x1c>)
 800083c:	79fb      	ldrb	r3, [r7, #7]
 800083e:	6013      	str	r3, [r2, #0]
 8000840:	bf00      	nop
 8000842:	370c      	adds	r7, #12
 8000844:	46bd      	mov	sp, r7
 8000846:	bc80      	pop	{r7}
 8000848:	4770      	bx	lr
 800084a:	bf00      	nop
 800084c:	42400188 	.word	0x42400188

08000850 <RST_CLK_CPU_PLLcmd>:
 8000850:	b480      	push	{r7}
 8000852:	b083      	sub	sp, #12
 8000854:	af00      	add	r7, sp, #0
 8000856:	4603      	mov	r3, r0
 8000858:	71fb      	strb	r3, [r7, #7]
 800085a:	4a04      	ldr	r2, [pc, #16]	; (800086c <RST_CLK_CPU_PLLcmd+0x1c>)
 800085c:	79fb      	ldrb	r3, [r7, #7]
 800085e:	6013      	str	r3, [r2, #0]
 8000860:	bf00      	nop
 8000862:	370c      	adds	r7, #12
 8000864:	46bd      	mov	sp, r7
 8000866:	bc80      	pop	{r7}
 8000868:	4770      	bx	lr
 800086a:	bf00      	nop
 800086c:	42400088 	.word	0x42400088

08000870 <RST_CLK_CPU_PLLstatus>:
 8000870:	b580      	push	{r7, lr}
 8000872:	b082      	sub	sp, #8
 8000874:	af00      	add	r7, sp, #0
 8000876:	2300      	movs	r3, #0
 8000878:	603b      	str	r3, [r7, #0]
 800087a:	2021      	movs	r0, #33	; 0x21
 800087c:	f000 fac4 	bl	8000e08 <RST_CLK_GetFlagStatus>
 8000880:	4603      	mov	r3, r0
 8000882:	71bb      	strb	r3, [r7, #6]
 8000884:	683b      	ldr	r3, [r7, #0]
 8000886:	3301      	adds	r3, #1
 8000888:	603b      	str	r3, [r7, #0]
 800088a:	683b      	ldr	r3, [r7, #0]
 800088c:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 8000890:	d202      	bcs.n	8000898 <RST_CLK_CPU_PLLstatus+0x28>
 8000892:	79bb      	ldrb	r3, [r7, #6]
 8000894:	2b00      	cmp	r3, #0
 8000896:	d0f0      	beq.n	800087a <RST_CLK_CPU_PLLstatus+0xa>
 8000898:	2021      	movs	r0, #33	; 0x21
 800089a:	f000 fab5 	bl	8000e08 <RST_CLK_GetFlagStatus>
 800089e:	4603      	mov	r3, r0
 80008a0:	2b00      	cmp	r3, #0
 80008a2:	d002      	beq.n	80008aa <RST_CLK_CPU_PLLstatus+0x3a>
 80008a4:	2301      	movs	r3, #1
 80008a6:	71fb      	strb	r3, [r7, #7]
 80008a8:	e001      	b.n	80008ae <RST_CLK_CPU_PLLstatus+0x3e>
 80008aa:	2300      	movs	r3, #0
 80008ac:	71fb      	strb	r3, [r7, #7]
 80008ae:	79fb      	ldrb	r3, [r7, #7]
 80008b0:	4618      	mov	r0, r3
 80008b2:	3708      	adds	r7, #8
 80008b4:	46bd      	mov	sp, r7
 80008b6:	bd80      	pop	{r7, pc}

080008b8 <RST_CLK_CPUclkPrescaler>:
 80008b8:	b480      	push	{r7}
 80008ba:	b085      	sub	sp, #20
 80008bc:	af00      	add	r7, sp, #0
 80008be:	6078      	str	r0, [r7, #4]
 80008c0:	4b09      	ldr	r3, [pc, #36]	; (80008e8 <RST_CLK_CPUclkPrescaler+0x30>)
 80008c2:	68db      	ldr	r3, [r3, #12]
 80008c4:	60fb      	str	r3, [r7, #12]
 80008c6:	68fb      	ldr	r3, [r7, #12]
 80008c8:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 80008cc:	60fb      	str	r3, [r7, #12]
 80008ce:	687b      	ldr	r3, [r7, #4]
 80008d0:	011b      	lsls	r3, r3, #4
 80008d2:	68fa      	ldr	r2, [r7, #12]
 80008d4:	4313      	orrs	r3, r2
 80008d6:	60fb      	str	r3, [r7, #12]
 80008d8:	4a03      	ldr	r2, [pc, #12]	; (80008e8 <RST_CLK_CPUclkPrescaler+0x30>)
 80008da:	68fb      	ldr	r3, [r7, #12]
 80008dc:	60d3      	str	r3, [r2, #12]
 80008de:	bf00      	nop
 80008e0:	3714      	adds	r7, #20
 80008e2:	46bd      	mov	sp, r7
 80008e4:	bc80      	pop	{r7}
 80008e6:	4770      	bx	lr
 80008e8:	40020000 	.word	0x40020000

080008ec <RST_CLK_CPUclkSelection>:
 80008ec:	b480      	push	{r7}
 80008ee:	b085      	sub	sp, #20
 80008f0:	af00      	add	r7, sp, #0
 80008f2:	6078      	str	r0, [r7, #4]
 80008f4:	4b09      	ldr	r3, [pc, #36]	; (800091c <RST_CLK_CPUclkSelection+0x30>)
 80008f6:	68db      	ldr	r3, [r3, #12]
 80008f8:	60fb      	str	r3, [r7, #12]
 80008fa:	68fb      	ldr	r3, [r7, #12]
 80008fc:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8000900:	60fb      	str	r3, [r7, #12]
 8000902:	68fa      	ldr	r2, [r7, #12]
 8000904:	687b      	ldr	r3, [r7, #4]
 8000906:	4313      	orrs	r3, r2
 8000908:	60fb      	str	r3, [r7, #12]
 800090a:	4a04      	ldr	r2, [pc, #16]	; (800091c <RST_CLK_CPUclkSelection+0x30>)
 800090c:	68fb      	ldr	r3, [r7, #12]
 800090e:	60d3      	str	r3, [r2, #12]
 8000910:	bf00      	nop
 8000912:	3714      	adds	r7, #20
 8000914:	46bd      	mov	sp, r7
 8000916:	bc80      	pop	{r7}
 8000918:	4770      	bx	lr
 800091a:	bf00      	nop
 800091c:	40020000 	.word	0x40020000

08000920 <RST_CLK_USB_PLLconfig>:
 8000920:	b480      	push	{r7}
 8000922:	b085      	sub	sp, #20
 8000924:	af00      	add	r7, sp, #0
 8000926:	6078      	str	r0, [r7, #4]
 8000928:	6039      	str	r1, [r7, #0]
 800092a:	4b16      	ldr	r3, [pc, #88]	; (8000984 <RST_CLK_USB_PLLconfig+0x64>)
 800092c:	691b      	ldr	r3, [r3, #16]
 800092e:	60fb      	str	r3, [r7, #12]
 8000930:	68fb      	ldr	r3, [r7, #12]
 8000932:	f023 0303 	bic.w	r3, r3, #3
 8000936:	60fb      	str	r3, [r7, #12]
 8000938:	68fa      	ldr	r2, [r7, #12]
 800093a:	687b      	ldr	r3, [r7, #4]
 800093c:	4313      	orrs	r3, r2
 800093e:	60fb      	str	r3, [r7, #12]
 8000940:	4a10      	ldr	r2, [pc, #64]	; (8000984 <RST_CLK_USB_PLLconfig+0x64>)
 8000942:	68fb      	ldr	r3, [r7, #12]
 8000944:	6113      	str	r3, [r2, #16]
 8000946:	4b0f      	ldr	r3, [pc, #60]	; (8000984 <RST_CLK_USB_PLLconfig+0x64>)
 8000948:	685b      	ldr	r3, [r3, #4]
 800094a:	60fb      	str	r3, [r7, #12]
 800094c:	68fb      	ldr	r3, [r7, #12]
 800094e:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8000952:	60fb      	str	r3, [r7, #12]
 8000954:	683b      	ldr	r3, [r7, #0]
 8000956:	011b      	lsls	r3, r3, #4
 8000958:	68fa      	ldr	r2, [r7, #12]
 800095a:	4313      	orrs	r3, r2
 800095c:	60fb      	str	r3, [r7, #12]
 800095e:	4a09      	ldr	r2, [pc, #36]	; (8000984 <RST_CLK_USB_PLLconfig+0x64>)
 8000960:	68fb      	ldr	r3, [r7, #12]
 8000962:	6053      	str	r3, [r2, #4]
 8000964:	4b08      	ldr	r3, [pc, #32]	; (8000988 <RST_CLK_USB_PLLconfig+0x68>)
 8000966:	681b      	ldr	r3, [r3, #0]
 8000968:	2b00      	cmp	r3, #0
 800096a:	d005      	beq.n	8000978 <RST_CLK_USB_PLLconfig+0x58>
 800096c:	4b07      	ldr	r3, [pc, #28]	; (800098c <RST_CLK_USB_PLLconfig+0x6c>)
 800096e:	2201      	movs	r2, #1
 8000970:	601a      	str	r2, [r3, #0]
 8000972:	4b06      	ldr	r3, [pc, #24]	; (800098c <RST_CLK_USB_PLLconfig+0x6c>)
 8000974:	2200      	movs	r2, #0
 8000976:	601a      	str	r2, [r3, #0]
 8000978:	bf00      	nop
 800097a:	3714      	adds	r7, #20
 800097c:	46bd      	mov	sp, r7
 800097e:	bc80      	pop	{r7}
 8000980:	4770      	bx	lr
 8000982:	bf00      	nop
 8000984:	40020000 	.word	0x40020000
 8000988:	42400080 	.word	0x42400080
 800098c:	42400084 	.word	0x42400084

08000990 <RST_CLK_USB_PLLuse>:
 8000990:	b480      	push	{r7}
 8000992:	b083      	sub	sp, #12
 8000994:	af00      	add	r7, sp, #0
 8000996:	4603      	mov	r3, r0
 8000998:	71fb      	strb	r3, [r7, #7]
 800099a:	4a04      	ldr	r2, [pc, #16]	; (80009ac <RST_CLK_USB_PLLuse+0x1c>)
 800099c:	79fb      	ldrb	r3, [r7, #7]
 800099e:	6013      	str	r3, [r2, #0]
 80009a0:	bf00      	nop
 80009a2:	370c      	adds	r7, #12
 80009a4:	46bd      	mov	sp, r7
 80009a6:	bc80      	pop	{r7}
 80009a8:	4770      	bx	lr
 80009aa:	bf00      	nop
 80009ac:	42400208 	.word	0x42400208

080009b0 <RST_CLK_USB_PLLcmd>:
 80009b0:	b480      	push	{r7}
 80009b2:	b083      	sub	sp, #12
 80009b4:	af00      	add	r7, sp, #0
 80009b6:	4603      	mov	r3, r0
 80009b8:	71fb      	strb	r3, [r7, #7]
 80009ba:	4a04      	ldr	r2, [pc, #16]	; (80009cc <RST_CLK_USB_PLLcmd+0x1c>)
 80009bc:	79fb      	ldrb	r3, [r7, #7]
 80009be:	6013      	str	r3, [r2, #0]
 80009c0:	bf00      	nop
 80009c2:	370c      	adds	r7, #12
 80009c4:	46bd      	mov	sp, r7
 80009c6:	bc80      	pop	{r7}
 80009c8:	4770      	bx	lr
 80009ca:	bf00      	nop
 80009cc:	42400080 	.word	0x42400080

080009d0 <RST_CLK_USB_PLLstatus>:
 80009d0:	b580      	push	{r7, lr}
 80009d2:	b082      	sub	sp, #8
 80009d4:	af00      	add	r7, sp, #0
 80009d6:	2300      	movs	r3, #0
 80009d8:	603b      	str	r3, [r7, #0]
 80009da:	2020      	movs	r0, #32
 80009dc:	f000 fa14 	bl	8000e08 <RST_CLK_GetFlagStatus>
 80009e0:	4603      	mov	r3, r0
 80009e2:	71bb      	strb	r3, [r7, #6]
 80009e4:	683b      	ldr	r3, [r7, #0]
 80009e6:	3301      	adds	r3, #1
 80009e8:	603b      	str	r3, [r7, #0]
 80009ea:	683b      	ldr	r3, [r7, #0]
 80009ec:	f5b3 6fc0 	cmp.w	r3, #1536	; 0x600
 80009f0:	d202      	bcs.n	80009f8 <RST_CLK_USB_PLLstatus+0x28>
 80009f2:	79bb      	ldrb	r3, [r7, #6]
 80009f4:	2b00      	cmp	r3, #0
 80009f6:	d0f0      	beq.n	80009da <RST_CLK_USB_PLLstatus+0xa>
 80009f8:	2020      	movs	r0, #32
 80009fa:	f000 fa05 	bl	8000e08 <RST_CLK_GetFlagStatus>
 80009fe:	4603      	mov	r3, r0
 8000a00:	2b00      	cmp	r3, #0
 8000a02:	d002      	beq.n	8000a0a <RST_CLK_USB_PLLstatus+0x3a>
 8000a04:	2301      	movs	r3, #1
 8000a06:	71fb      	strb	r3, [r7, #7]
 8000a08:	e001      	b.n	8000a0e <RST_CLK_USB_PLLstatus+0x3e>
 8000a0a:	2300      	movs	r3, #0
 8000a0c:	71fb      	strb	r3, [r7, #7]
 8000a0e:	79fb      	ldrb	r3, [r7, #7]
 8000a10:	4618      	mov	r0, r3
 8000a12:	3708      	adds	r7, #8
 8000a14:	46bd      	mov	sp, r7
 8000a16:	bd80      	pop	{r7, pc}

08000a18 <RST_CLK_USBclkPrescaler>:
 8000a18:	b480      	push	{r7}
 8000a1a:	b083      	sub	sp, #12
 8000a1c:	af00      	add	r7, sp, #0
 8000a1e:	4603      	mov	r3, r0
 8000a20:	71fb      	strb	r3, [r7, #7]
 8000a22:	4a04      	ldr	r2, [pc, #16]	; (8000a34 <RST_CLK_USBclkPrescaler+0x1c>)
 8000a24:	79fb      	ldrb	r3, [r7, #7]
 8000a26:	6013      	str	r3, [r2, #0]
 8000a28:	bf00      	nop
 8000a2a:	370c      	adds	r7, #12
 8000a2c:	46bd      	mov	sp, r7
 8000a2e:	bc80      	pop	{r7}
 8000a30:	4770      	bx	lr
 8000a32:	bf00      	nop
 8000a34:	42400220 	.word	0x42400220

08000a38 <RST_CLK_USBclkEnable>:
 8000a38:	b480      	push	{r7}
 8000a3a:	b083      	sub	sp, #12
 8000a3c:	af00      	add	r7, sp, #0
 8000a3e:	4603      	mov	r3, r0
 8000a40:	71fb      	strb	r3, [r7, #7]
 8000a42:	4a04      	ldr	r2, [pc, #16]	; (8000a54 <RST_CLK_USBclkEnable+0x1c>)
 8000a44:	79fb      	ldrb	r3, [r7, #7]
 8000a46:	6013      	str	r3, [r2, #0]
 8000a48:	bf00      	nop
 8000a4a:	370c      	adds	r7, #12
 8000a4c:	46bd      	mov	sp, r7
 8000a4e:	bc80      	pop	{r7}
 8000a50:	4770      	bx	lr
 8000a52:	bf00      	nop
 8000a54:	42400210 	.word	0x42400210

08000a58 <RST_CLK_ADCclkSelection>:
 8000a58:	b480      	push	{r7}
 8000a5a:	b085      	sub	sp, #20
 8000a5c:	af00      	add	r7, sp, #0
 8000a5e:	6078      	str	r0, [r7, #4]
 8000a60:	4b09      	ldr	r3, [pc, #36]	; (8000a88 <RST_CLK_ADCclkSelection+0x30>)
 8000a62:	695b      	ldr	r3, [r3, #20]
 8000a64:	60fb      	str	r3, [r7, #12]
 8000a66:	68fb      	ldr	r3, [r7, #12]
 8000a68:	f023 0333 	bic.w	r3, r3, #51	; 0x33
 8000a6c:	60fb      	str	r3, [r7, #12]
 8000a6e:	68fa      	ldr	r2, [r7, #12]
 8000a70:	687b      	ldr	r3, [r7, #4]
 8000a72:	4313      	orrs	r3, r2
 8000a74:	60fb      	str	r3, [r7, #12]
 8000a76:	4a04      	ldr	r2, [pc, #16]	; (8000a88 <RST_CLK_ADCclkSelection+0x30>)
 8000a78:	68fb      	ldr	r3, [r7, #12]
 8000a7a:	6153      	str	r3, [r2, #20]
 8000a7c:	bf00      	nop
 8000a7e:	3714      	adds	r7, #20
 8000a80:	46bd      	mov	sp, r7
 8000a82:	bc80      	pop	{r7}
 8000a84:	4770      	bx	lr
 8000a86:	bf00      	nop
 8000a88:	40020000 	.word	0x40020000

08000a8c <RST_CLK_ADCclkPrescaler>:
 8000a8c:	b480      	push	{r7}
 8000a8e:	b085      	sub	sp, #20
 8000a90:	af00      	add	r7, sp, #0
 8000a92:	6078      	str	r0, [r7, #4]
 8000a94:	4b09      	ldr	r3, [pc, #36]	; (8000abc <RST_CLK_ADCclkPrescaler+0x30>)
 8000a96:	695b      	ldr	r3, [r3, #20]
 8000a98:	60fb      	str	r3, [r7, #12]
 8000a9a:	68fb      	ldr	r3, [r7, #12]
 8000a9c:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8000aa0:	60fb      	str	r3, [r7, #12]
 8000aa2:	687b      	ldr	r3, [r7, #4]
 8000aa4:	021b      	lsls	r3, r3, #8
 8000aa6:	68fa      	ldr	r2, [r7, #12]
 8000aa8:	4313      	orrs	r3, r2
 8000aaa:	60fb      	str	r3, [r7, #12]
 8000aac:	4a03      	ldr	r2, [pc, #12]	; (8000abc <RST_CLK_ADCclkPrescaler+0x30>)
 8000aae:	68fb      	ldr	r3, [r7, #12]
 8000ab0:	6153      	str	r3, [r2, #20]
 8000ab2:	bf00      	nop
 8000ab4:	3714      	adds	r7, #20
 8000ab6:	46bd      	mov	sp, r7
 8000ab8:	bc80      	pop	{r7}
 8000aba:	4770      	bx	lr
 8000abc:	40020000 	.word	0x40020000

08000ac0 <RST_CLK_ADCclkEnable>:
 8000ac0:	b480      	push	{r7}
 8000ac2:	b083      	sub	sp, #12
 8000ac4:	af00      	add	r7, sp, #0
 8000ac6:	4603      	mov	r3, r0
 8000ac8:	71fb      	strb	r3, [r7, #7]
 8000aca:	4a04      	ldr	r2, [pc, #16]	; (8000adc <RST_CLK_ADCclkEnable+0x1c>)
 8000acc:	79fb      	ldrb	r3, [r7, #7]
 8000ace:	6013      	str	r3, [r2, #0]
 8000ad0:	bf00      	nop
 8000ad2:	370c      	adds	r7, #12
 8000ad4:	46bd      	mov	sp, r7
 8000ad6:	bc80      	pop	{r7}
 8000ad8:	4770      	bx	lr
 8000ada:	bf00      	nop
 8000adc:	424002b4 	.word	0x424002b4

08000ae0 <RST_CLK_HSIclkPrescaler>:
 8000ae0:	b480      	push	{r7}
 8000ae2:	b085      	sub	sp, #20
 8000ae4:	af00      	add	r7, sp, #0
 8000ae6:	6078      	str	r0, [r7, #4]
 8000ae8:	4b09      	ldr	r3, [pc, #36]	; (8000b10 <RST_CLK_HSIclkPrescaler+0x30>)
 8000aea:	699b      	ldr	r3, [r3, #24]
 8000aec:	60fb      	str	r3, [r7, #12]
 8000aee:	68fb      	ldr	r3, [r7, #12]
 8000af0:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8000af4:	60fb      	str	r3, [r7, #12]
 8000af6:	687b      	ldr	r3, [r7, #4]
 8000af8:	011b      	lsls	r3, r3, #4
 8000afa:	68fa      	ldr	r2, [r7, #12]
 8000afc:	4313      	orrs	r3, r2
 8000afe:	60fb      	str	r3, [r7, #12]
 8000b00:	4a03      	ldr	r2, [pc, #12]	; (8000b10 <RST_CLK_HSIclkPrescaler+0x30>)
 8000b02:	68fb      	ldr	r3, [r7, #12]
 8000b04:	6193      	str	r3, [r2, #24]
 8000b06:	bf00      	nop
 8000b08:	3714      	adds	r7, #20
 8000b0a:	46bd      	mov	sp, r7
 8000b0c:	bc80      	pop	{r7}
 8000b0e:	4770      	bx	lr
 8000b10:	40020000 	.word	0x40020000

08000b14 <RST_CLK_RTC_HSIclkEnable>:
 8000b14:	b480      	push	{r7}
 8000b16:	b083      	sub	sp, #12
 8000b18:	af00      	add	r7, sp, #0
 8000b1a:	4603      	mov	r3, r0
 8000b1c:	71fb      	strb	r3, [r7, #7]
 8000b1e:	4a04      	ldr	r2, [pc, #16]	; (8000b30 <RST_CLK_RTC_HSIclkEnable+0x1c>)
 8000b20:	79fb      	ldrb	r3, [r7, #7]
 8000b22:	6013      	str	r3, [r2, #0]
 8000b24:	bf00      	nop
 8000b26:	370c      	adds	r7, #12
 8000b28:	46bd      	mov	sp, r7
 8000b2a:	bc80      	pop	{r7}
 8000b2c:	4770      	bx	lr
 8000b2e:	bf00      	nop
 8000b30:	42400324 	.word	0x42400324

08000b34 <RST_CLK_HSEclkPrescaler>:
 8000b34:	b480      	push	{r7}
 8000b36:	b085      	sub	sp, #20
 8000b38:	af00      	add	r7, sp, #0
 8000b3a:	6078      	str	r0, [r7, #4]
 8000b3c:	4b09      	ldr	r3, [pc, #36]	; (8000b64 <RST_CLK_HSEclkPrescaler+0x30>)
 8000b3e:	699b      	ldr	r3, [r3, #24]
 8000b40:	60fb      	str	r3, [r7, #12]
 8000b42:	68fb      	ldr	r3, [r7, #12]
 8000b44:	f023 030f 	bic.w	r3, r3, #15
 8000b48:	60fb      	str	r3, [r7, #12]
 8000b4a:	68fa      	ldr	r2, [r7, #12]
 8000b4c:	687b      	ldr	r3, [r7, #4]
 8000b4e:	4313      	orrs	r3, r2
 8000b50:	60fb      	str	r3, [r7, #12]
 8000b52:	4a04      	ldr	r2, [pc, #16]	; (8000b64 <RST_CLK_HSEclkPrescaler+0x30>)
 8000b54:	68fb      	ldr	r3, [r7, #12]
 8000b56:	6193      	str	r3, [r2, #24]
 8000b58:	bf00      	nop
 8000b5a:	3714      	adds	r7, #20
 8000b5c:	46bd      	mov	sp, r7
 8000b5e:	bc80      	pop	{r7}
 8000b60:	4770      	bx	lr
 8000b62:	bf00      	nop
 8000b64:	40020000 	.word	0x40020000

08000b68 <RST_CLK_RTC_HSEclkEnable>:
 8000b68:	b480      	push	{r7}
 8000b6a:	b083      	sub	sp, #12
 8000b6c:	af00      	add	r7, sp, #0
 8000b6e:	4603      	mov	r3, r0
 8000b70:	71fb      	strb	r3, [r7, #7]
 8000b72:	4a04      	ldr	r2, [pc, #16]	; (8000b84 <RST_CLK_RTC_HSEclkEnable+0x1c>)
 8000b74:	79fb      	ldrb	r3, [r7, #7]
 8000b76:	6013      	str	r3, [r2, #0]
 8000b78:	bf00      	nop
 8000b7a:	370c      	adds	r7, #12
 8000b7c:	46bd      	mov	sp, r7
 8000b7e:	bc80      	pop	{r7}
 8000b80:	4770      	bx	lr
 8000b82:	bf00      	nop
 8000b84:	42400320 	.word	0x42400320

08000b88 <RST_CLK_PCLKcmd>:
 8000b88:	b480      	push	{r7}
 8000b8a:	b083      	sub	sp, #12
 8000b8c:	af00      	add	r7, sp, #0
 8000b8e:	6078      	str	r0, [r7, #4]
 8000b90:	460b      	mov	r3, r1
 8000b92:	70fb      	strb	r3, [r7, #3]
 8000b94:	78fb      	ldrb	r3, [r7, #3]
 8000b96:	2b00      	cmp	r3, #0
 8000b98:	d006      	beq.n	8000ba8 <RST_CLK_PCLKcmd+0x20>
 8000b9a:	4909      	ldr	r1, [pc, #36]	; (8000bc0 <RST_CLK_PCLKcmd+0x38>)
 8000b9c:	4b08      	ldr	r3, [pc, #32]	; (8000bc0 <RST_CLK_PCLKcmd+0x38>)
 8000b9e:	69da      	ldr	r2, [r3, #28]
 8000ba0:	687b      	ldr	r3, [r7, #4]
 8000ba2:	4313      	orrs	r3, r2
 8000ba4:	61cb      	str	r3, [r1, #28]
 8000ba6:	e006      	b.n	8000bb6 <RST_CLK_PCLKcmd+0x2e>
 8000ba8:	4905      	ldr	r1, [pc, #20]	; (8000bc0 <RST_CLK_PCLKcmd+0x38>)
 8000baa:	4b05      	ldr	r3, [pc, #20]	; (8000bc0 <RST_CLK_PCLKcmd+0x38>)
 8000bac:	69da      	ldr	r2, [r3, #28]
 8000bae:	687b      	ldr	r3, [r7, #4]
 8000bb0:	43db      	mvns	r3, r3
 8000bb2:	4013      	ands	r3, r2
 8000bb4:	61cb      	str	r3, [r1, #28]
 8000bb6:	bf00      	nop
 8000bb8:	370c      	adds	r7, #12
 8000bba:	46bd      	mov	sp, r7
 8000bbc:	bc80      	pop	{r7}
 8000bbe:	4770      	bx	lr
 8000bc0:	40020000 	.word	0x40020000

08000bc4 <RST_CLK_GetClocksFreq>:
 8000bc4:	b480      	push	{r7}
 8000bc6:	b091      	sub	sp, #68	; 0x44
 8000bc8:	af00      	add	r7, sp, #0
 8000bca:	6078      	str	r0, [r7, #4]
 8000bcc:	4b85      	ldr	r3, [pc, #532]	; (8000de4 <RST_CLK_GetClocksFreq+0x220>)
 8000bce:	681b      	ldr	r3, [r3, #0]
 8000bd0:	2b00      	cmp	r3, #0
 8000bd2:	d002      	beq.n	8000bda <RST_CLK_GetClocksFreq+0x16>
 8000bd4:	4b84      	ldr	r3, [pc, #528]	; (8000de8 <RST_CLK_GetClocksFreq+0x224>)
 8000bd6:	63fb      	str	r3, [r7, #60]	; 0x3c
 8000bd8:	e001      	b.n	8000bde <RST_CLK_GetClocksFreq+0x1a>
 8000bda:	4b83      	ldr	r3, [pc, #524]	; (8000de8 <RST_CLK_GetClocksFreq+0x224>)
 8000bdc:	63fb      	str	r3, [r7, #60]	; 0x3c
 8000bde:	4b83      	ldr	r3, [pc, #524]	; (8000dec <RST_CLK_GetClocksFreq+0x228>)
 8000be0:	681b      	ldr	r3, [r3, #0]
 8000be2:	2b00      	cmp	r3, #0
 8000be4:	d002      	beq.n	8000bec <RST_CLK_GetClocksFreq+0x28>
 8000be6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8000be8:	085b      	lsrs	r3, r3, #1
 8000bea:	63fb      	str	r3, [r7, #60]	; 0x3c
 8000bec:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8000bee:	63bb      	str	r3, [r7, #56]	; 0x38
 8000bf0:	4b7f      	ldr	r3, [pc, #508]	; (8000df0 <RST_CLK_GetClocksFreq+0x22c>)
 8000bf2:	681b      	ldr	r3, [r3, #0]
 8000bf4:	2b00      	cmp	r3, #0
 8000bf6:	d00b      	beq.n	8000c10 <RST_CLK_GetClocksFreq+0x4c>
 8000bf8:	4b7e      	ldr	r3, [pc, #504]	; (8000df4 <RST_CLK_GetClocksFreq+0x230>)
 8000bfa:	685b      	ldr	r3, [r3, #4]
 8000bfc:	0a1b      	lsrs	r3, r3, #8
 8000bfe:	f003 030f 	and.w	r3, r3, #15
 8000c02:	3301      	adds	r3, #1
 8000c04:	613b      	str	r3, [r7, #16]
 8000c06:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8000c08:	693a      	ldr	r2, [r7, #16]
 8000c0a:	fb02 f303 	mul.w	r3, r2, r3
 8000c0e:	63bb      	str	r3, [r7, #56]	; 0x38
 8000c10:	4b78      	ldr	r3, [pc, #480]	; (8000df4 <RST_CLK_GetClocksFreq+0x230>)
 8000c12:	68db      	ldr	r3, [r3, #12]
 8000c14:	0a1b      	lsrs	r3, r3, #8
 8000c16:	f003 0303 	and.w	r3, r3, #3
 8000c1a:	2b01      	cmp	r3, #1
 8000c1c:	d008      	beq.n	8000c30 <RST_CLK_GetClocksFreq+0x6c>
 8000c1e:	2b01      	cmp	r3, #1
 8000c20:	d302      	bcc.n	8000c28 <RST_CLK_GetClocksFreq+0x64>
 8000c22:	2b02      	cmp	r3, #2
 8000c24:	d01c      	beq.n	8000c60 <RST_CLK_GetClocksFreq+0x9c>
 8000c26:	e020      	b.n	8000c6a <RST_CLK_GetClocksFreq+0xa6>
 8000c28:	687b      	ldr	r3, [r7, #4]
 8000c2a:	4a6f      	ldr	r2, [pc, #444]	; (8000de8 <RST_CLK_GetClocksFreq+0x224>)
 8000c2c:	601a      	str	r2, [r3, #0]
 8000c2e:	e021      	b.n	8000c74 <RST_CLK_GetClocksFreq+0xb0>
 8000c30:	4b70      	ldr	r3, [pc, #448]	; (8000df4 <RST_CLK_GetClocksFreq+0x230>)
 8000c32:	68db      	ldr	r3, [r3, #12]
 8000c34:	091b      	lsrs	r3, r3, #4
 8000c36:	f003 0308 	and.w	r3, r3, #8
 8000c3a:	2b00      	cmp	r3, #0
 8000c3c:	d102      	bne.n	8000c44 <RST_CLK_GetClocksFreq+0x80>
 8000c3e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8000c40:	637b      	str	r3, [r7, #52]	; 0x34
 8000c42:	e009      	b.n	8000c58 <RST_CLK_GetClocksFreq+0x94>
 8000c44:	4b6b      	ldr	r3, [pc, #428]	; (8000df4 <RST_CLK_GetClocksFreq+0x230>)
 8000c46:	68db      	ldr	r3, [r3, #12]
 8000c48:	091b      	lsrs	r3, r3, #4
 8000c4a:	f003 0307 	and.w	r3, r3, #7
 8000c4e:	3301      	adds	r3, #1
 8000c50:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8000c52:	fa22 f303 	lsr.w	r3, r2, r3
 8000c56:	637b      	str	r3, [r7, #52]	; 0x34
 8000c58:	687b      	ldr	r3, [r7, #4]
 8000c5a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8000c5c:	601a      	str	r2, [r3, #0]
 8000c5e:	e009      	b.n	8000c74 <RST_CLK_GetClocksFreq+0xb0>
 8000c60:	687b      	ldr	r3, [r7, #4]
 8000c62:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8000c66:	601a      	str	r2, [r3, #0]
 8000c68:	e004      	b.n	8000c74 <RST_CLK_GetClocksFreq+0xb0>
 8000c6a:	687b      	ldr	r3, [r7, #4]
 8000c6c:	f649 4240 	movw	r2, #40000	; 0x9c40
 8000c70:	601a      	str	r2, [r3, #0]
 8000c72:	bf00      	nop
 8000c74:	4b60      	ldr	r3, [pc, #384]	; (8000df8 <RST_CLK_GetClocksFreq+0x234>)
 8000c76:	681b      	ldr	r3, [r3, #0]
 8000c78:	2b00      	cmp	r3, #0
 8000c7a:	d002      	beq.n	8000c82 <RST_CLK_GetClocksFreq+0xbe>
 8000c7c:	4b5a      	ldr	r3, [pc, #360]	; (8000de8 <RST_CLK_GetClocksFreq+0x224>)
 8000c7e:	633b      	str	r3, [r7, #48]	; 0x30
 8000c80:	e001      	b.n	8000c86 <RST_CLK_GetClocksFreq+0xc2>
 8000c82:	4b59      	ldr	r3, [pc, #356]	; (8000de8 <RST_CLK_GetClocksFreq+0x224>)
 8000c84:	633b      	str	r3, [r7, #48]	; 0x30
 8000c86:	4b5d      	ldr	r3, [pc, #372]	; (8000dfc <RST_CLK_GetClocksFreq+0x238>)
 8000c88:	681b      	ldr	r3, [r3, #0]
 8000c8a:	2b00      	cmp	r3, #0
 8000c8c:	d002      	beq.n	8000c94 <RST_CLK_GetClocksFreq+0xd0>
 8000c8e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000c90:	085b      	lsrs	r3, r3, #1
 8000c92:	633b      	str	r3, [r7, #48]	; 0x30
 8000c94:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000c96:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000c98:	4b59      	ldr	r3, [pc, #356]	; (8000e00 <RST_CLK_GetClocksFreq+0x23c>)
 8000c9a:	681b      	ldr	r3, [r3, #0]
 8000c9c:	2b00      	cmp	r3, #0
 8000c9e:	d00b      	beq.n	8000cb8 <RST_CLK_GetClocksFreq+0xf4>
 8000ca0:	4b54      	ldr	r3, [pc, #336]	; (8000df4 <RST_CLK_GetClocksFreq+0x230>)
 8000ca2:	685b      	ldr	r3, [r3, #4]
 8000ca4:	091b      	lsrs	r3, r3, #4
 8000ca6:	f003 030f 	and.w	r3, r3, #15
 8000caa:	3301      	adds	r3, #1
 8000cac:	613b      	str	r3, [r7, #16]
 8000cae:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000cb0:	693a      	ldr	r2, [r7, #16]
 8000cb2:	fb02 f303 	mul.w	r3, r2, r3
 8000cb6:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000cb8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000cba:	62bb      	str	r3, [r7, #40]	; 0x28
 8000cbc:	4b51      	ldr	r3, [pc, #324]	; (8000e04 <RST_CLK_GetClocksFreq+0x240>)
 8000cbe:	681b      	ldr	r3, [r3, #0]
 8000cc0:	2b00      	cmp	r3, #0
 8000cc2:	d002      	beq.n	8000cca <RST_CLK_GetClocksFreq+0x106>
 8000cc4:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8000cc6:	085b      	lsrs	r3, r3, #1
 8000cc8:	62bb      	str	r3, [r7, #40]	; 0x28
 8000cca:	687b      	ldr	r3, [r7, #4]
 8000ccc:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000cce:	605a      	str	r2, [r3, #4]
 8000cd0:	4b48      	ldr	r3, [pc, #288]	; (8000df4 <RST_CLK_GetClocksFreq+0x230>)
 8000cd2:	699b      	ldr	r3, [r3, #24]
 8000cd4:	091b      	lsrs	r3, r3, #4
 8000cd6:	60fb      	str	r3, [r7, #12]
 8000cd8:	68fb      	ldr	r3, [r7, #12]
 8000cda:	f003 0308 	and.w	r3, r3, #8
 8000cde:	2b00      	cmp	r3, #0
 8000ce0:	d102      	bne.n	8000ce8 <RST_CLK_GetClocksFreq+0x124>
 8000ce2:	4b41      	ldr	r3, [pc, #260]	; (8000de8 <RST_CLK_GetClocksFreq+0x224>)
 8000ce4:	61bb      	str	r3, [r7, #24]
 8000ce6:	e00c      	b.n	8000d02 <RST_CLK_GetClocksFreq+0x13e>
 8000ce8:	68fb      	ldr	r3, [r7, #12]
 8000cea:	f003 0307 	and.w	r3, r3, #7
 8000cee:	3301      	adds	r3, #1
 8000cf0:	2201      	movs	r2, #1
 8000cf2:	fa02 f303 	lsl.w	r3, r2, r3
 8000cf6:	60fb      	str	r3, [r7, #12]
 8000cf8:	4a3b      	ldr	r2, [pc, #236]	; (8000de8 <RST_CLK_GetClocksFreq+0x224>)
 8000cfa:	68fb      	ldr	r3, [r7, #12]
 8000cfc:	fbb2 f3f3 	udiv	r3, r2, r3
 8000d00:	61bb      	str	r3, [r7, #24]
 8000d02:	687b      	ldr	r3, [r7, #4]
 8000d04:	69ba      	ldr	r2, [r7, #24]
 8000d06:	60da      	str	r2, [r3, #12]
 8000d08:	4b3a      	ldr	r3, [pc, #232]	; (8000df4 <RST_CLK_GetClocksFreq+0x230>)
 8000d0a:	699b      	ldr	r3, [r3, #24]
 8000d0c:	60fb      	str	r3, [r7, #12]
 8000d0e:	68fb      	ldr	r3, [r7, #12]
 8000d10:	f003 0308 	and.w	r3, r3, #8
 8000d14:	2b00      	cmp	r3, #0
 8000d16:	d102      	bne.n	8000d1e <RST_CLK_GetClocksFreq+0x15a>
 8000d18:	4b33      	ldr	r3, [pc, #204]	; (8000de8 <RST_CLK_GetClocksFreq+0x224>)
 8000d1a:	617b      	str	r3, [r7, #20]
 8000d1c:	e00c      	b.n	8000d38 <RST_CLK_GetClocksFreq+0x174>
 8000d1e:	68fb      	ldr	r3, [r7, #12]
 8000d20:	f003 0307 	and.w	r3, r3, #7
 8000d24:	3301      	adds	r3, #1
 8000d26:	2201      	movs	r2, #1
 8000d28:	fa02 f303 	lsl.w	r3, r2, r3
 8000d2c:	60fb      	str	r3, [r7, #12]
 8000d2e:	4a2e      	ldr	r2, [pc, #184]	; (8000de8 <RST_CLK_GetClocksFreq+0x224>)
 8000d30:	68fb      	ldr	r3, [r7, #12]
 8000d32:	fbb2 f3f3 	udiv	r3, r2, r3
 8000d36:	617b      	str	r3, [r7, #20]
 8000d38:	687b      	ldr	r3, [r7, #4]
 8000d3a:	697a      	ldr	r2, [r7, #20]
 8000d3c:	611a      	str	r2, [r3, #16]
 8000d3e:	4b2d      	ldr	r3, [pc, #180]	; (8000df4 <RST_CLK_GetClocksFreq+0x230>)
 8000d40:	695b      	ldr	r3, [r3, #20]
 8000d42:	f003 0303 	and.w	r3, r3, #3
 8000d46:	2b01      	cmp	r3, #1
 8000d48:	d007      	beq.n	8000d5a <RST_CLK_GetClocksFreq+0x196>
 8000d4a:	2b01      	cmp	r3, #1
 8000d4c:	d302      	bcc.n	8000d54 <RST_CLK_GetClocksFreq+0x190>
 8000d4e:	2b02      	cmp	r3, #2
 8000d50:	d006      	beq.n	8000d60 <RST_CLK_GetClocksFreq+0x19c>
 8000d52:	e008      	b.n	8000d66 <RST_CLK_GetClocksFreq+0x1a2>
 8000d54:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8000d56:	627b      	str	r3, [r7, #36]	; 0x24
 8000d58:	e008      	b.n	8000d6c <RST_CLK_GetClocksFreq+0x1a8>
 8000d5a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000d5c:	627b      	str	r3, [r7, #36]	; 0x24
 8000d5e:	e005      	b.n	8000d6c <RST_CLK_GetClocksFreq+0x1a8>
 8000d60:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8000d62:	627b      	str	r3, [r7, #36]	; 0x24
 8000d64:	e002      	b.n	8000d6c <RST_CLK_GetClocksFreq+0x1a8>
 8000d66:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000d68:	627b      	str	r3, [r7, #36]	; 0x24
 8000d6a:	bf00      	nop
 8000d6c:	4b21      	ldr	r3, [pc, #132]	; (8000df4 <RST_CLK_GetClocksFreq+0x230>)
 8000d6e:	695b      	ldr	r3, [r3, #20]
 8000d70:	091b      	lsrs	r3, r3, #4
 8000d72:	f003 0303 	and.w	r3, r3, #3
 8000d76:	2b01      	cmp	r3, #1
 8000d78:	d008      	beq.n	8000d8c <RST_CLK_GetClocksFreq+0x1c8>
 8000d7a:	2b01      	cmp	r3, #1
 8000d7c:	d302      	bcc.n	8000d84 <RST_CLK_GetClocksFreq+0x1c0>
 8000d7e:	2b02      	cmp	r3, #2
 8000d80:	d008      	beq.n	8000d94 <RST_CLK_GetClocksFreq+0x1d0>
 8000d82:	e00a      	b.n	8000d9a <RST_CLK_GetClocksFreq+0x1d6>
 8000d84:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8000d88:	623b      	str	r3, [r7, #32]
 8000d8a:	e009      	b.n	8000da0 <RST_CLK_GetClocksFreq+0x1dc>
 8000d8c:	f649 4340 	movw	r3, #40000	; 0x9c40
 8000d90:	623b      	str	r3, [r7, #32]
 8000d92:	e005      	b.n	8000da0 <RST_CLK_GetClocksFreq+0x1dc>
 8000d94:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000d96:	623b      	str	r3, [r7, #32]
 8000d98:	e002      	b.n	8000da0 <RST_CLK_GetClocksFreq+0x1dc>
 8000d9a:	69bb      	ldr	r3, [r7, #24]
 8000d9c:	623b      	str	r3, [r7, #32]
 8000d9e:	bf00      	nop
 8000da0:	4b14      	ldr	r3, [pc, #80]	; (8000df4 <RST_CLK_GetClocksFreq+0x230>)
 8000da2:	695b      	ldr	r3, [r3, #20]
 8000da4:	0a1b      	lsrs	r3, r3, #8
 8000da6:	60fb      	str	r3, [r7, #12]
 8000da8:	68fb      	ldr	r3, [r7, #12]
 8000daa:	f003 0308 	and.w	r3, r3, #8
 8000dae:	2b00      	cmp	r3, #0
 8000db0:	d102      	bne.n	8000db8 <RST_CLK_GetClocksFreq+0x1f4>
 8000db2:	6a3b      	ldr	r3, [r7, #32]
 8000db4:	61fb      	str	r3, [r7, #28]
 8000db6:	e00c      	b.n	8000dd2 <RST_CLK_GetClocksFreq+0x20e>
 8000db8:	68fb      	ldr	r3, [r7, #12]
 8000dba:	f003 0307 	and.w	r3, r3, #7
 8000dbe:	3301      	adds	r3, #1
 8000dc0:	2201      	movs	r2, #1
 8000dc2:	fa02 f303 	lsl.w	r3, r2, r3
 8000dc6:	60fb      	str	r3, [r7, #12]
 8000dc8:	6a3a      	ldr	r2, [r7, #32]
 8000dca:	68fb      	ldr	r3, [r7, #12]
 8000dcc:	fbb2 f3f3 	udiv	r3, r2, r3
 8000dd0:	61fb      	str	r3, [r7, #28]
 8000dd2:	687b      	ldr	r3, [r7, #4]
 8000dd4:	69fa      	ldr	r2, [r7, #28]
 8000dd6:	609a      	str	r2, [r3, #8]
 8000dd8:	bf00      	nop
 8000dda:	3744      	adds	r7, #68	; 0x44
 8000ddc:	46bd      	mov	sp, r7
 8000dde:	bc80      	pop	{r7}
 8000de0:	4770      	bx	lr
 8000de2:	bf00      	nop
 8000de4:	42400184 	.word	0x42400184
 8000de8:	007a1200 	.word	0x007a1200
 8000dec:	42400180 	.word	0x42400180
 8000df0:	42400188 	.word	0x42400188
 8000df4:	40020000 	.word	0x40020000
 8000df8:	42400204 	.word	0x42400204
 8000dfc:	42400200 	.word	0x42400200
 8000e00:	42400208 	.word	0x42400208
 8000e04:	42400210 	.word	0x42400210

08000e08 <RST_CLK_GetFlagStatus>:
 8000e08:	b480      	push	{r7}
 8000e0a:	b085      	sub	sp, #20
 8000e0c:	af00      	add	r7, sp, #0
 8000e0e:	6078      	str	r0, [r7, #4]
 8000e10:	687b      	ldr	r3, [r7, #4]
 8000e12:	f003 03e0 	and.w	r3, r3, #224	; 0xe0
 8000e16:	2b20      	cmp	r3, #32
 8000e18:	d103      	bne.n	8000e22 <RST_CLK_GetFlagStatus+0x1a>
 8000e1a:	4b0d      	ldr	r3, [pc, #52]	; (8000e50 <RST_CLK_GetFlagStatus+0x48>)
 8000e1c:	681b      	ldr	r3, [r3, #0]
 8000e1e:	60fb      	str	r3, [r7, #12]
 8000e20:	e002      	b.n	8000e28 <RST_CLK_GetFlagStatus+0x20>
 8000e22:	4b0c      	ldr	r3, [pc, #48]	; (8000e54 <RST_CLK_GetFlagStatus+0x4c>)
 8000e24:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000e26:	60fb      	str	r3, [r7, #12]
 8000e28:	687b      	ldr	r3, [r7, #4]
 8000e2a:	f003 031f 	and.w	r3, r3, #31
 8000e2e:	2201      	movs	r2, #1
 8000e30:	409a      	lsls	r2, r3
 8000e32:	68fb      	ldr	r3, [r7, #12]
 8000e34:	4013      	ands	r3, r2
 8000e36:	2b00      	cmp	r3, #0
 8000e38:	d002      	beq.n	8000e40 <RST_CLK_GetFlagStatus+0x38>
 8000e3a:	2301      	movs	r3, #1
 8000e3c:	72fb      	strb	r3, [r7, #11]
 8000e3e:	e001      	b.n	8000e44 <RST_CLK_GetFlagStatus+0x3c>
 8000e40:	2300      	movs	r3, #0
 8000e42:	72fb      	strb	r3, [r7, #11]
 8000e44:	7afb      	ldrb	r3, [r7, #11]
 8000e46:	4618      	mov	r0, r3
 8000e48:	3714      	adds	r7, #20
 8000e4a:	46bd      	mov	sp, r7
 8000e4c:	bc80      	pop	{r7}
 8000e4e:	4770      	bx	lr
 8000e50:	40020000 	.word	0x40020000
 8000e54:	400d8000 	.word	0x400d8000

08000e58 <PORT_DeInit>:
 8000e58:	b480      	push	{r7}
 8000e5a:	b083      	sub	sp, #12
 8000e5c:	af00      	add	r7, sp, #0
 8000e5e:	6078      	str	r0, [r7, #4]
 8000e60:	687b      	ldr	r3, [r7, #4]
 8000e62:	2200      	movs	r2, #0
 8000e64:	60da      	str	r2, [r3, #12]
 8000e66:	687b      	ldr	r3, [r7, #4]
 8000e68:	2200      	movs	r2, #0
 8000e6a:	611a      	str	r2, [r3, #16]
 8000e6c:	687b      	ldr	r3, [r7, #4]
 8000e6e:	2200      	movs	r2, #0
 8000e70:	605a      	str	r2, [r3, #4]
 8000e72:	687b      	ldr	r3, [r7, #4]
 8000e74:	2200      	movs	r2, #0
 8000e76:	601a      	str	r2, [r3, #0]
 8000e78:	687b      	ldr	r3, [r7, #4]
 8000e7a:	2200      	movs	r2, #0
 8000e7c:	609a      	str	r2, [r3, #8]
 8000e7e:	687b      	ldr	r3, [r7, #4]
 8000e80:	2200      	movs	r2, #0
 8000e82:	615a      	str	r2, [r3, #20]
 8000e84:	687b      	ldr	r3, [r7, #4]
 8000e86:	2200      	movs	r2, #0
 8000e88:	619a      	str	r2, [r3, #24]
 8000e8a:	687b      	ldr	r3, [r7, #4]
 8000e8c:	2200      	movs	r2, #0
 8000e8e:	61da      	str	r2, [r3, #28]
 8000e90:	bf00      	nop
 8000e92:	370c      	adds	r7, #12
 8000e94:	46bd      	mov	sp, r7
 8000e96:	bc80      	pop	{r7}
 8000e98:	4770      	bx	lr
 8000e9a:	bf00      	nop

08000e9c <PORT_Init>:
 8000e9c:	b480      	push	{r7}
 8000e9e:	b08f      	sub	sp, #60	; 0x3c
 8000ea0:	af00      	add	r7, sp, #0
 8000ea2:	6078      	str	r0, [r7, #4]
 8000ea4:	6039      	str	r1, [r7, #0]
 8000ea6:	687b      	ldr	r3, [r7, #4]
 8000ea8:	685b      	ldr	r3, [r3, #4]
 8000eaa:	637b      	str	r3, [r7, #52]	; 0x34
 8000eac:	687b      	ldr	r3, [r7, #4]
 8000eae:	689b      	ldr	r3, [r3, #8]
 8000eb0:	633b      	str	r3, [r7, #48]	; 0x30
 8000eb2:	687b      	ldr	r3, [r7, #4]
 8000eb4:	68db      	ldr	r3, [r3, #12]
 8000eb6:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000eb8:	687b      	ldr	r3, [r7, #4]
 8000eba:	691b      	ldr	r3, [r3, #16]
 8000ebc:	62bb      	str	r3, [r7, #40]	; 0x28
 8000ebe:	687b      	ldr	r3, [r7, #4]
 8000ec0:	695b      	ldr	r3, [r3, #20]
 8000ec2:	627b      	str	r3, [r7, #36]	; 0x24
 8000ec4:	687b      	ldr	r3, [r7, #4]
 8000ec6:	699b      	ldr	r3, [r3, #24]
 8000ec8:	623b      	str	r3, [r7, #32]
 8000eca:	687b      	ldr	r3, [r7, #4]
 8000ecc:	69db      	ldr	r3, [r3, #28]
 8000ece:	61fb      	str	r3, [r7, #28]
 8000ed0:	2300      	movs	r3, #0
 8000ed2:	617b      	str	r3, [r7, #20]
 8000ed4:	2301      	movs	r3, #1
 8000ed6:	613b      	str	r3, [r7, #16]
 8000ed8:	2303      	movs	r3, #3
 8000eda:	60fb      	str	r3, [r7, #12]
 8000edc:	f04f 1301 	mov.w	r3, #65537	; 0x10001
 8000ee0:	60bb      	str	r3, [r7, #8]
 8000ee2:	683b      	ldr	r3, [r7, #0]
 8000ee4:	881b      	ldrh	r3, [r3, #0]
 8000ee6:	61bb      	str	r3, [r7, #24]
 8000ee8:	e079      	b.n	8000fde <PORT_Init+0x142>
 8000eea:	69bb      	ldr	r3, [r7, #24]
 8000eec:	f003 0301 	and.w	r3, r3, #1
 8000ef0:	2b00      	cmp	r3, #0
 8000ef2:	d065      	beq.n	8000fc0 <PORT_Init+0x124>
 8000ef4:	693b      	ldr	r3, [r7, #16]
 8000ef6:	43da      	mvns	r2, r3
 8000ef8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000efa:	4013      	ands	r3, r2
 8000efc:	683a      	ldr	r2, [r7, #0]
 8000efe:	7892      	ldrb	r2, [r2, #2]
 8000f00:	4611      	mov	r1, r2
 8000f02:	697a      	ldr	r2, [r7, #20]
 8000f04:	fa01 f202 	lsl.w	r2, r1, r2
 8000f08:	4313      	orrs	r3, r2
 8000f0a:	637b      	str	r3, [r7, #52]	; 0x34
 8000f0c:	68fb      	ldr	r3, [r7, #12]
 8000f0e:	43da      	mvns	r2, r3
 8000f10:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000f12:	4013      	ands	r3, r2
 8000f14:	683a      	ldr	r2, [r7, #0]
 8000f16:	7a12      	ldrb	r2, [r2, #8]
 8000f18:	4611      	mov	r1, r2
 8000f1a:	697a      	ldr	r2, [r7, #20]
 8000f1c:	0052      	lsls	r2, r2, #1
 8000f1e:	fa01 f202 	lsl.w	r2, r1, r2
 8000f22:	4313      	orrs	r3, r2
 8000f24:	633b      	str	r3, [r7, #48]	; 0x30
 8000f26:	693b      	ldr	r3, [r7, #16]
 8000f28:	43da      	mvns	r2, r3
 8000f2a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000f2c:	4013      	ands	r3, r2
 8000f2e:	683a      	ldr	r2, [r7, #0]
 8000f30:	7a92      	ldrb	r2, [r2, #10]
 8000f32:	4611      	mov	r1, r2
 8000f34:	697a      	ldr	r2, [r7, #20]
 8000f36:	fa01 f202 	lsl.w	r2, r1, r2
 8000f3a:	4313      	orrs	r3, r2
 8000f3c:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000f3e:	68bb      	ldr	r3, [r7, #8]
 8000f40:	43da      	mvns	r2, r3
 8000f42:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8000f44:	4013      	ands	r3, r2
 8000f46:	683a      	ldr	r2, [r7, #0]
 8000f48:	78d2      	ldrb	r2, [r2, #3]
 8000f4a:	4611      	mov	r1, r2
 8000f4c:	697a      	ldr	r2, [r7, #20]
 8000f4e:	3210      	adds	r2, #16
 8000f50:	fa01 f202 	lsl.w	r2, r1, r2
 8000f54:	4313      	orrs	r3, r2
 8000f56:	683a      	ldr	r2, [r7, #0]
 8000f58:	7912      	ldrb	r2, [r2, #4]
 8000f5a:	4611      	mov	r1, r2
 8000f5c:	697a      	ldr	r2, [r7, #20]
 8000f5e:	fa01 f202 	lsl.w	r2, r1, r2
 8000f62:	4313      	orrs	r3, r2
 8000f64:	62bb      	str	r3, [r7, #40]	; 0x28
 8000f66:	68bb      	ldr	r3, [r7, #8]
 8000f68:	43da      	mvns	r2, r3
 8000f6a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000f6c:	4013      	ands	r3, r2
 8000f6e:	683a      	ldr	r2, [r7, #0]
 8000f70:	7952      	ldrb	r2, [r2, #5]
 8000f72:	4611      	mov	r1, r2
 8000f74:	697a      	ldr	r2, [r7, #20]
 8000f76:	3210      	adds	r2, #16
 8000f78:	fa01 f202 	lsl.w	r2, r1, r2
 8000f7c:	4313      	orrs	r3, r2
 8000f7e:	683a      	ldr	r2, [r7, #0]
 8000f80:	7992      	ldrb	r2, [r2, #6]
 8000f82:	4611      	mov	r1, r2
 8000f84:	697a      	ldr	r2, [r7, #20]
 8000f86:	fa01 f202 	lsl.w	r2, r1, r2
 8000f8a:	4313      	orrs	r3, r2
 8000f8c:	627b      	str	r3, [r7, #36]	; 0x24
 8000f8e:	68fb      	ldr	r3, [r7, #12]
 8000f90:	43da      	mvns	r2, r3
 8000f92:	6a3b      	ldr	r3, [r7, #32]
 8000f94:	4013      	ands	r3, r2
 8000f96:	683a      	ldr	r2, [r7, #0]
 8000f98:	7a52      	ldrb	r2, [r2, #9]
 8000f9a:	4611      	mov	r1, r2
 8000f9c:	697a      	ldr	r2, [r7, #20]
 8000f9e:	0052      	lsls	r2, r2, #1
 8000fa0:	fa01 f202 	lsl.w	r2, r1, r2
 8000fa4:	4313      	orrs	r3, r2
 8000fa6:	623b      	str	r3, [r7, #32]
 8000fa8:	693b      	ldr	r3, [r7, #16]
 8000faa:	43da      	mvns	r2, r3
 8000fac:	69fb      	ldr	r3, [r7, #28]
 8000fae:	4013      	ands	r3, r2
 8000fb0:	683a      	ldr	r2, [r7, #0]
 8000fb2:	79d2      	ldrb	r2, [r2, #7]
 8000fb4:	4611      	mov	r1, r2
 8000fb6:	697a      	ldr	r2, [r7, #20]
 8000fb8:	fa01 f202 	lsl.w	r2, r1, r2
 8000fbc:	4313      	orrs	r3, r2
 8000fbe:	61fb      	str	r3, [r7, #28]
 8000fc0:	693b      	ldr	r3, [r7, #16]
 8000fc2:	005b      	lsls	r3, r3, #1
 8000fc4:	613b      	str	r3, [r7, #16]
 8000fc6:	68fb      	ldr	r3, [r7, #12]
 8000fc8:	009b      	lsls	r3, r3, #2
 8000fca:	60fb      	str	r3, [r7, #12]
 8000fcc:	68bb      	ldr	r3, [r7, #8]
 8000fce:	005b      	lsls	r3, r3, #1
 8000fd0:	60bb      	str	r3, [r7, #8]
 8000fd2:	697b      	ldr	r3, [r7, #20]
 8000fd4:	3301      	adds	r3, #1
 8000fd6:	617b      	str	r3, [r7, #20]
 8000fd8:	69bb      	ldr	r3, [r7, #24]
 8000fda:	085b      	lsrs	r3, r3, #1
 8000fdc:	61bb      	str	r3, [r7, #24]
 8000fde:	69bb      	ldr	r3, [r7, #24]
 8000fe0:	2b00      	cmp	r3, #0
 8000fe2:	d182      	bne.n	8000eea <PORT_Init+0x4e>
 8000fe4:	687b      	ldr	r3, [r7, #4]
 8000fe6:	4a2f      	ldr	r2, [pc, #188]	; (80010a4 <PORT_Init+0x208>)
 8000fe8:	4293      	cmp	r3, r2
 8000fea:	d102      	bne.n	8000ff2 <PORT_Init+0x156>
 8000fec:	f06f 021f 	mvn.w	r2, #31
 8000ff0:	e001      	b.n	8000ff6 <PORT_Init+0x15a>
 8000ff2:	f04f 32ff 	mov.w	r2, #4294967295
 8000ff6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000ff8:	401a      	ands	r2, r3
 8000ffa:	687b      	ldr	r3, [r7, #4]
 8000ffc:	605a      	str	r2, [r3, #4]
 8000ffe:	687b      	ldr	r3, [r7, #4]
 8001000:	4a28      	ldr	r2, [pc, #160]	; (80010a4 <PORT_Init+0x208>)
 8001002:	4293      	cmp	r3, r2
 8001004:	d102      	bne.n	800100c <PORT_Init+0x170>
 8001006:	f06f 021f 	mvn.w	r2, #31
 800100a:	e001      	b.n	8001010 <PORT_Init+0x174>
 800100c:	f04f 32ff 	mov.w	r2, #4294967295
 8001010:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001012:	401a      	ands	r2, r3
 8001014:	687b      	ldr	r3, [r7, #4]
 8001016:	609a      	str	r2, [r3, #8]
 8001018:	687b      	ldr	r3, [r7, #4]
 800101a:	4a22      	ldr	r2, [pc, #136]	; (80010a4 <PORT_Init+0x208>)
 800101c:	4293      	cmp	r3, r2
 800101e:	d102      	bne.n	8001026 <PORT_Init+0x18a>
 8001020:	f06f 021f 	mvn.w	r2, #31
 8001024:	e001      	b.n	800102a <PORT_Init+0x18e>
 8001026:	f04f 32ff 	mov.w	r2, #4294967295
 800102a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800102c:	401a      	ands	r2, r3
 800102e:	687b      	ldr	r3, [r7, #4]
 8001030:	60da      	str	r2, [r3, #12]
 8001032:	687b      	ldr	r3, [r7, #4]
 8001034:	4a1b      	ldr	r2, [pc, #108]	; (80010a4 <PORT_Init+0x208>)
 8001036:	4293      	cmp	r3, r2
 8001038:	d102      	bne.n	8001040 <PORT_Init+0x1a4>
 800103a:	f06f 021f 	mvn.w	r2, #31
 800103e:	e001      	b.n	8001044 <PORT_Init+0x1a8>
 8001040:	f04f 32ff 	mov.w	r2, #4294967295
 8001044:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001046:	401a      	ands	r2, r3
 8001048:	687b      	ldr	r3, [r7, #4]
 800104a:	611a      	str	r2, [r3, #16]
 800104c:	687b      	ldr	r3, [r7, #4]
 800104e:	4a15      	ldr	r2, [pc, #84]	; (80010a4 <PORT_Init+0x208>)
 8001050:	4293      	cmp	r3, r2
 8001052:	d102      	bne.n	800105a <PORT_Init+0x1be>
 8001054:	f06f 021f 	mvn.w	r2, #31
 8001058:	e001      	b.n	800105e <PORT_Init+0x1c2>
 800105a:	f04f 32ff 	mov.w	r2, #4294967295
 800105e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001060:	401a      	ands	r2, r3
 8001062:	687b      	ldr	r3, [r7, #4]
 8001064:	615a      	str	r2, [r3, #20]
 8001066:	687b      	ldr	r3, [r7, #4]
 8001068:	4a0e      	ldr	r2, [pc, #56]	; (80010a4 <PORT_Init+0x208>)
 800106a:	4293      	cmp	r3, r2
 800106c:	d102      	bne.n	8001074 <PORT_Init+0x1d8>
 800106e:	f06f 021f 	mvn.w	r2, #31
 8001072:	e001      	b.n	8001078 <PORT_Init+0x1dc>
 8001074:	f04f 32ff 	mov.w	r2, #4294967295
 8001078:	6a3b      	ldr	r3, [r7, #32]
 800107a:	401a      	ands	r2, r3
 800107c:	687b      	ldr	r3, [r7, #4]
 800107e:	619a      	str	r2, [r3, #24]
 8001080:	687b      	ldr	r3, [r7, #4]
 8001082:	4a08      	ldr	r2, [pc, #32]	; (80010a4 <PORT_Init+0x208>)
 8001084:	4293      	cmp	r3, r2
 8001086:	d102      	bne.n	800108e <PORT_Init+0x1f2>
 8001088:	f06f 021f 	mvn.w	r2, #31
 800108c:	e001      	b.n	8001092 <PORT_Init+0x1f6>
 800108e:	f04f 32ff 	mov.w	r2, #4294967295
 8001092:	69fb      	ldr	r3, [r7, #28]
 8001094:	401a      	ands	r2, r3
 8001096:	687b      	ldr	r3, [r7, #4]
 8001098:	61da      	str	r2, [r3, #28]
 800109a:	bf00      	nop
 800109c:	373c      	adds	r7, #60	; 0x3c
 800109e:	46bd      	mov	sp, r7
 80010a0:	bc80      	pop	{r7}
 80010a2:	4770      	bx	lr
 80010a4:	400c0000 	.word	0x400c0000

080010a8 <PORT_StructInit>:
 80010a8:	b480      	push	{r7}
 80010aa:	b083      	sub	sp, #12
 80010ac:	af00      	add	r7, sp, #0
 80010ae:	6078      	str	r0, [r7, #4]
 80010b0:	687b      	ldr	r3, [r7, #4]
 80010b2:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80010b6:	801a      	strh	r2, [r3, #0]
 80010b8:	687b      	ldr	r3, [r7, #4]
 80010ba:	2200      	movs	r2, #0
 80010bc:	709a      	strb	r2, [r3, #2]
 80010be:	687b      	ldr	r3, [r7, #4]
 80010c0:	2200      	movs	r2, #0
 80010c2:	70da      	strb	r2, [r3, #3]
 80010c4:	687b      	ldr	r3, [r7, #4]
 80010c6:	2200      	movs	r2, #0
 80010c8:	711a      	strb	r2, [r3, #4]
 80010ca:	687b      	ldr	r3, [r7, #4]
 80010cc:	2200      	movs	r2, #0
 80010ce:	715a      	strb	r2, [r3, #5]
 80010d0:	687b      	ldr	r3, [r7, #4]
 80010d2:	2200      	movs	r2, #0
 80010d4:	719a      	strb	r2, [r3, #6]
 80010d6:	687b      	ldr	r3, [r7, #4]
 80010d8:	2200      	movs	r2, #0
 80010da:	71da      	strb	r2, [r3, #7]
 80010dc:	687b      	ldr	r3, [r7, #4]
 80010de:	2200      	movs	r2, #0
 80010e0:	721a      	strb	r2, [r3, #8]
 80010e2:	687b      	ldr	r3, [r7, #4]
 80010e4:	2200      	movs	r2, #0
 80010e6:	725a      	strb	r2, [r3, #9]
 80010e8:	687b      	ldr	r3, [r7, #4]
 80010ea:	2200      	movs	r2, #0
 80010ec:	729a      	strb	r2, [r3, #10]
 80010ee:	bf00      	nop
 80010f0:	370c      	adds	r7, #12
 80010f2:	46bd      	mov	sp, r7
 80010f4:	bc80      	pop	{r7}
 80010f6:	4770      	bx	lr

080010f8 <PORT_ReadInputDataBit>:
 80010f8:	b480      	push	{r7}
 80010fa:	b085      	sub	sp, #20
 80010fc:	af00      	add	r7, sp, #0
 80010fe:	6078      	str	r0, [r7, #4]
 8001100:	6039      	str	r1, [r7, #0]
 8001102:	687b      	ldr	r3, [r7, #4]
 8001104:	681a      	ldr	r2, [r3, #0]
 8001106:	683b      	ldr	r3, [r7, #0]
 8001108:	4013      	ands	r3, r2
 800110a:	2b00      	cmp	r3, #0
 800110c:	d002      	beq.n	8001114 <PORT_ReadInputDataBit+0x1c>
 800110e:	2301      	movs	r3, #1
 8001110:	73fb      	strb	r3, [r7, #15]
 8001112:	e001      	b.n	8001118 <PORT_ReadInputDataBit+0x20>
 8001114:	2300      	movs	r3, #0
 8001116:	73fb      	strb	r3, [r7, #15]
 8001118:	7bfb      	ldrb	r3, [r7, #15]
 800111a:	4618      	mov	r0, r3
 800111c:	3714      	adds	r7, #20
 800111e:	46bd      	mov	sp, r7
 8001120:	bc80      	pop	{r7}
 8001122:	4770      	bx	lr

08001124 <PORT_ReadInputData>:
 8001124:	b480      	push	{r7}
 8001126:	b083      	sub	sp, #12
 8001128:	af00      	add	r7, sp, #0
 800112a:	6078      	str	r0, [r7, #4]
 800112c:	687b      	ldr	r3, [r7, #4]
 800112e:	681b      	ldr	r3, [r3, #0]
 8001130:	4618      	mov	r0, r3
 8001132:	370c      	adds	r7, #12
 8001134:	46bd      	mov	sp, r7
 8001136:	bc80      	pop	{r7}
 8001138:	4770      	bx	lr
 800113a:	bf00      	nop

0800113c <PORT_SetBits>:
 800113c:	b480      	push	{r7}
 800113e:	b083      	sub	sp, #12
 8001140:	af00      	add	r7, sp, #0
 8001142:	6078      	str	r0, [r7, #4]
 8001144:	6039      	str	r1, [r7, #0]
 8001146:	687b      	ldr	r3, [r7, #4]
 8001148:	681a      	ldr	r2, [r3, #0]
 800114a:	687b      	ldr	r3, [r7, #4]
 800114c:	4908      	ldr	r1, [pc, #32]	; (8001170 <PORT_SetBits+0x34>)
 800114e:	428b      	cmp	r3, r1
 8001150:	d102      	bne.n	8001158 <PORT_SetBits+0x1c>
 8001152:	f06f 031f 	mvn.w	r3, #31
 8001156:	e001      	b.n	800115c <PORT_SetBits+0x20>
 8001158:	f04f 33ff 	mov.w	r3, #4294967295
 800115c:	401a      	ands	r2, r3
 800115e:	683b      	ldr	r3, [r7, #0]
 8001160:	431a      	orrs	r2, r3
 8001162:	687b      	ldr	r3, [r7, #4]
 8001164:	601a      	str	r2, [r3, #0]
 8001166:	bf00      	nop
 8001168:	370c      	adds	r7, #12
 800116a:	46bd      	mov	sp, r7
 800116c:	bc80      	pop	{r7}
 800116e:	4770      	bx	lr
 8001170:	400c0000 	.word	0x400c0000

08001174 <PORT_ResetBits>:
 8001174:	b480      	push	{r7}
 8001176:	b083      	sub	sp, #12
 8001178:	af00      	add	r7, sp, #0
 800117a:	6078      	str	r0, [r7, #4]
 800117c:	6039      	str	r1, [r7, #0]
 800117e:	687b      	ldr	r3, [r7, #4]
 8001180:	681a      	ldr	r2, [r3, #0]
 8001182:	687b      	ldr	r3, [r7, #4]
 8001184:	4908      	ldr	r1, [pc, #32]	; (80011a8 <PORT_ResetBits+0x34>)
 8001186:	428b      	cmp	r3, r1
 8001188:	d101      	bne.n	800118e <PORT_ResetBits+0x1a>
 800118a:	211f      	movs	r1, #31
 800118c:	e000      	b.n	8001190 <PORT_ResetBits+0x1c>
 800118e:	2100      	movs	r1, #0
 8001190:	683b      	ldr	r3, [r7, #0]
 8001192:	430b      	orrs	r3, r1
 8001194:	43db      	mvns	r3, r3
 8001196:	401a      	ands	r2, r3
 8001198:	687b      	ldr	r3, [r7, #4]
 800119a:	601a      	str	r2, [r3, #0]
 800119c:	bf00      	nop
 800119e:	370c      	adds	r7, #12
 80011a0:	46bd      	mov	sp, r7
 80011a2:	bc80      	pop	{r7}
 80011a4:	4770      	bx	lr
 80011a6:	bf00      	nop
 80011a8:	400c0000 	.word	0x400c0000

080011ac <PORT_WriteBit>:
 80011ac:	b480      	push	{r7}
 80011ae:	b087      	sub	sp, #28
 80011b0:	af00      	add	r7, sp, #0
 80011b2:	60f8      	str	r0, [r7, #12]
 80011b4:	60b9      	str	r1, [r7, #8]
 80011b6:	4613      	mov	r3, r2
 80011b8:	71fb      	strb	r3, [r7, #7]
 80011ba:	68fb      	ldr	r3, [r7, #12]
 80011bc:	681a      	ldr	r2, [r3, #0]
 80011be:	68fb      	ldr	r3, [r7, #12]
 80011c0:	490e      	ldr	r1, [pc, #56]	; (80011fc <PORT_WriteBit+0x50>)
 80011c2:	428b      	cmp	r3, r1
 80011c4:	d102      	bne.n	80011cc <PORT_WriteBit+0x20>
 80011c6:	f06f 031f 	mvn.w	r3, #31
 80011ca:	e001      	b.n	80011d0 <PORT_WriteBit+0x24>
 80011cc:	f04f 33ff 	mov.w	r3, #4294967295
 80011d0:	4013      	ands	r3, r2
 80011d2:	617b      	str	r3, [r7, #20]
 80011d4:	79fb      	ldrb	r3, [r7, #7]
 80011d6:	2b00      	cmp	r3, #0
 80011d8:	d005      	beq.n	80011e6 <PORT_WriteBit+0x3a>
 80011da:	697a      	ldr	r2, [r7, #20]
 80011dc:	68bb      	ldr	r3, [r7, #8]
 80011de:	431a      	orrs	r2, r3
 80011e0:	68fb      	ldr	r3, [r7, #12]
 80011e2:	601a      	str	r2, [r3, #0]
 80011e4:	e005      	b.n	80011f2 <PORT_WriteBit+0x46>
 80011e6:	68bb      	ldr	r3, [r7, #8]
 80011e8:	43da      	mvns	r2, r3
 80011ea:	697b      	ldr	r3, [r7, #20]
 80011ec:	401a      	ands	r2, r3
 80011ee:	68fb      	ldr	r3, [r7, #12]
 80011f0:	601a      	str	r2, [r3, #0]
 80011f2:	bf00      	nop
 80011f4:	371c      	adds	r7, #28
 80011f6:	46bd      	mov	sp, r7
 80011f8:	bc80      	pop	{r7}
 80011fa:	4770      	bx	lr
 80011fc:	400c0000 	.word	0x400c0000

08001200 <PORT_Write>:
 8001200:	b480      	push	{r7}
 8001202:	b083      	sub	sp, #12
 8001204:	af00      	add	r7, sp, #0
 8001206:	6078      	str	r0, [r7, #4]
 8001208:	6039      	str	r1, [r7, #0]
 800120a:	687b      	ldr	r3, [r7, #4]
 800120c:	4a08      	ldr	r2, [pc, #32]	; (8001230 <PORT_Write+0x30>)
 800120e:	4293      	cmp	r3, r2
 8001210:	d102      	bne.n	8001218 <PORT_Write+0x18>
 8001212:	f06f 021f 	mvn.w	r2, #31
 8001216:	e001      	b.n	800121c <PORT_Write+0x1c>
 8001218:	f04f 32ff 	mov.w	r2, #4294967295
 800121c:	683b      	ldr	r3, [r7, #0]
 800121e:	401a      	ands	r2, r3
 8001220:	687b      	ldr	r3, [r7, #4]
 8001222:	601a      	str	r2, [r3, #0]
 8001224:	bf00      	nop
 8001226:	370c      	adds	r7, #12
 8001228:	46bd      	mov	sp, r7
 800122a:	bc80      	pop	{r7}
 800122c:	4770      	bx	lr
 800122e:	bf00      	nop
 8001230:	400c0000 	.word	0x400c0000

08001234 <SSP_DeInit>:
 8001234:	b480      	push	{r7}
 8001236:	b083      	sub	sp, #12
 8001238:	af00      	add	r7, sp, #0
 800123a:	6078      	str	r0, [r7, #4]
 800123c:	687b      	ldr	r3, [r7, #4]
 800123e:	2200      	movs	r2, #0
 8001240:	601a      	str	r2, [r3, #0]
 8001242:	687b      	ldr	r3, [r7, #4]
 8001244:	2200      	movs	r2, #0
 8001246:	605a      	str	r2, [r3, #4]
 8001248:	687b      	ldr	r3, [r7, #4]
 800124a:	2200      	movs	r2, #0
 800124c:	611a      	str	r2, [r3, #16]
 800124e:	687b      	ldr	r3, [r7, #4]
 8001250:	2200      	movs	r2, #0
 8001252:	615a      	str	r2, [r3, #20]
 8001254:	687b      	ldr	r3, [r7, #4]
 8001256:	2200      	movs	r2, #0
 8001258:	625a      	str	r2, [r3, #36]	; 0x24
 800125a:	687b      	ldr	r3, [r7, #4]
 800125c:	2203      	movs	r2, #3
 800125e:	621a      	str	r2, [r3, #32]
 8001260:	bf00      	nop
 8001262:	370c      	adds	r7, #12
 8001264:	46bd      	mov	sp, r7
 8001266:	bc80      	pop	{r7}
 8001268:	4770      	bx	lr
 800126a:	bf00      	nop

0800126c <SSP_Init>:
 800126c:	b480      	push	{r7}
 800126e:	b085      	sub	sp, #20
 8001270:	af00      	add	r7, sp, #0
 8001272:	6078      	str	r0, [r7, #4]
 8001274:	6039      	str	r1, [r7, #0]
 8001276:	683b      	ldr	r3, [r7, #0]
 8001278:	885b      	ldrh	r3, [r3, #2]
 800127a:	461a      	mov	r2, r3
 800127c:	687b      	ldr	r3, [r7, #4]
 800127e:	611a      	str	r2, [r3, #16]
 8001280:	683b      	ldr	r3, [r7, #0]
 8001282:	881b      	ldrh	r3, [r3, #0]
 8001284:	021b      	lsls	r3, r3, #8
 8001286:	683a      	ldr	r2, [r7, #0]
 8001288:	8912      	ldrh	r2, [r2, #8]
 800128a:	4413      	add	r3, r2
 800128c:	683a      	ldr	r2, [r7, #0]
 800128e:	8952      	ldrh	r2, [r2, #10]
 8001290:	4413      	add	r3, r2
 8001292:	683a      	ldr	r2, [r7, #0]
 8001294:	8992      	ldrh	r2, [r2, #12]
 8001296:	4413      	add	r3, r2
 8001298:	683a      	ldr	r2, [r7, #0]
 800129a:	88d2      	ldrh	r2, [r2, #6]
 800129c:	4413      	add	r3, r2
 800129e:	60fb      	str	r3, [r7, #12]
 80012a0:	687b      	ldr	r3, [r7, #4]
 80012a2:	68fa      	ldr	r2, [r7, #12]
 80012a4:	601a      	str	r2, [r3, #0]
 80012a6:	683b      	ldr	r3, [r7, #0]
 80012a8:	89db      	ldrh	r3, [r3, #14]
 80012aa:	461a      	mov	r2, r3
 80012ac:	683b      	ldr	r3, [r7, #0]
 80012ae:	889b      	ldrh	r3, [r3, #4]
 80012b0:	4413      	add	r3, r2
 80012b2:	60fb      	str	r3, [r7, #12]
 80012b4:	687b      	ldr	r3, [r7, #4]
 80012b6:	68fa      	ldr	r2, [r7, #12]
 80012b8:	605a      	str	r2, [r3, #4]
 80012ba:	bf00      	nop
 80012bc:	3714      	adds	r7, #20
 80012be:	46bd      	mov	sp, r7
 80012c0:	bc80      	pop	{r7}
 80012c2:	4770      	bx	lr

080012c4 <SSP_StructInit>:
 80012c4:	b480      	push	{r7}
 80012c6:	b083      	sub	sp, #12
 80012c8:	af00      	add	r7, sp, #0
 80012ca:	6078      	str	r0, [r7, #4]
 80012cc:	687b      	ldr	r3, [r7, #4]
 80012ce:	2200      	movs	r2, #0
 80012d0:	809a      	strh	r2, [r3, #4]
 80012d2:	687b      	ldr	r3, [r7, #4]
 80012d4:	2207      	movs	r2, #7
 80012d6:	80da      	strh	r2, [r3, #6]
 80012d8:	687b      	ldr	r3, [r7, #4]
 80012da:	2200      	movs	r2, #0
 80012dc:	815a      	strh	r2, [r3, #10]
 80012de:	687b      	ldr	r3, [r7, #4]
 80012e0:	2200      	movs	r2, #0
 80012e2:	811a      	strh	r2, [r3, #8]
 80012e4:	687b      	ldr	r3, [r7, #4]
 80012e6:	2200      	movs	r2, #0
 80012e8:	819a      	strh	r2, [r3, #12]
 80012ea:	687b      	ldr	r3, [r7, #4]
 80012ec:	2202      	movs	r2, #2
 80012ee:	805a      	strh	r2, [r3, #2]
 80012f0:	687b      	ldr	r3, [r7, #4]
 80012f2:	2200      	movs	r2, #0
 80012f4:	801a      	strh	r2, [r3, #0]
 80012f6:	bf00      	nop
 80012f8:	370c      	adds	r7, #12
 80012fa:	46bd      	mov	sp, r7
 80012fc:	bc80      	pop	{r7}
 80012fe:	4770      	bx	lr

08001300 <SSP_Cmd>:
 8001300:	b480      	push	{r7}
 8001302:	b083      	sub	sp, #12
 8001304:	af00      	add	r7, sp, #0
 8001306:	6078      	str	r0, [r7, #4]
 8001308:	460b      	mov	r3, r1
 800130a:	70fb      	strb	r3, [r7, #3]
 800130c:	78fb      	ldrb	r3, [r7, #3]
 800130e:	2b00      	cmp	r3, #0
 8001310:	d006      	beq.n	8001320 <SSP_Cmd+0x20>
 8001312:	687b      	ldr	r3, [r7, #4]
 8001314:	685b      	ldr	r3, [r3, #4]
 8001316:	f043 0202 	orr.w	r2, r3, #2
 800131a:	687b      	ldr	r3, [r7, #4]
 800131c:	605a      	str	r2, [r3, #4]
 800131e:	e006      	b.n	800132e <SSP_Cmd+0x2e>
 8001320:	687b      	ldr	r3, [r7, #4]
 8001322:	685a      	ldr	r2, [r3, #4]
 8001324:	f64f 73fd 	movw	r3, #65533	; 0xfffd
 8001328:	4013      	ands	r3, r2
 800132a:	687a      	ldr	r2, [r7, #4]
 800132c:	6053      	str	r3, [r2, #4]
 800132e:	bf00      	nop
 8001330:	370c      	adds	r7, #12
 8001332:	46bd      	mov	sp, r7
 8001334:	bc80      	pop	{r7}
 8001336:	4770      	bx	lr

08001338 <SSP_ITConfig>:
 8001338:	b480      	push	{r7}
 800133a:	b085      	sub	sp, #20
 800133c:	af00      	add	r7, sp, #0
 800133e:	60f8      	str	r0, [r7, #12]
 8001340:	60b9      	str	r1, [r7, #8]
 8001342:	4613      	mov	r3, r2
 8001344:	71fb      	strb	r3, [r7, #7]
 8001346:	79fb      	ldrb	r3, [r7, #7]
 8001348:	2b00      	cmp	r3, #0
 800134a:	d006      	beq.n	800135a <SSP_ITConfig+0x22>
 800134c:	68fb      	ldr	r3, [r7, #12]
 800134e:	695a      	ldr	r2, [r3, #20]
 8001350:	68bb      	ldr	r3, [r7, #8]
 8001352:	431a      	orrs	r2, r3
 8001354:	68fb      	ldr	r3, [r7, #12]
 8001356:	615a      	str	r2, [r3, #20]
 8001358:	e006      	b.n	8001368 <SSP_ITConfig+0x30>
 800135a:	68fb      	ldr	r3, [r7, #12]
 800135c:	695a      	ldr	r2, [r3, #20]
 800135e:	68bb      	ldr	r3, [r7, #8]
 8001360:	43db      	mvns	r3, r3
 8001362:	401a      	ands	r2, r3
 8001364:	68fb      	ldr	r3, [r7, #12]
 8001366:	615a      	str	r2, [r3, #20]
 8001368:	bf00      	nop
 800136a:	3714      	adds	r7, #20
 800136c:	46bd      	mov	sp, r7
 800136e:	bc80      	pop	{r7}
 8001370:	4770      	bx	lr
 8001372:	bf00      	nop

08001374 <SSP_GetITStatus>:
 8001374:	b480      	push	{r7}
 8001376:	b085      	sub	sp, #20
 8001378:	af00      	add	r7, sp, #0
 800137a:	6078      	str	r0, [r7, #4]
 800137c:	6039      	str	r1, [r7, #0]
 800137e:	687b      	ldr	r3, [r7, #4]
 8001380:	699a      	ldr	r2, [r3, #24]
 8001382:	683b      	ldr	r3, [r7, #0]
 8001384:	401a      	ands	r2, r3
 8001386:	683b      	ldr	r3, [r7, #0]
 8001388:	429a      	cmp	r2, r3
 800138a:	d102      	bne.n	8001392 <SSP_GetITStatus+0x1e>
 800138c:	2301      	movs	r3, #1
 800138e:	73fb      	strb	r3, [r7, #15]
 8001390:	e001      	b.n	8001396 <SSP_GetITStatus+0x22>
 8001392:	2300      	movs	r3, #0
 8001394:	73fb      	strb	r3, [r7, #15]
 8001396:	7bfb      	ldrb	r3, [r7, #15]
 8001398:	4618      	mov	r0, r3
 800139a:	3714      	adds	r7, #20
 800139c:	46bd      	mov	sp, r7
 800139e:	bc80      	pop	{r7}
 80013a0:	4770      	bx	lr
 80013a2:	bf00      	nop

080013a4 <SSP_GetITStatusMasked>:
 80013a4:	b480      	push	{r7}
 80013a6:	b085      	sub	sp, #20
 80013a8:	af00      	add	r7, sp, #0
 80013aa:	6078      	str	r0, [r7, #4]
 80013ac:	6039      	str	r1, [r7, #0]
 80013ae:	687b      	ldr	r3, [r7, #4]
 80013b0:	69da      	ldr	r2, [r3, #28]
 80013b2:	683b      	ldr	r3, [r7, #0]
 80013b4:	4013      	ands	r3, r2
 80013b6:	2b00      	cmp	r3, #0
 80013b8:	d002      	beq.n	80013c0 <SSP_GetITStatusMasked+0x1c>
 80013ba:	2301      	movs	r3, #1
 80013bc:	73fb      	strb	r3, [r7, #15]
 80013be:	e001      	b.n	80013c4 <SSP_GetITStatusMasked+0x20>
 80013c0:	2300      	movs	r3, #0
 80013c2:	73fb      	strb	r3, [r7, #15]
 80013c4:	7bfb      	ldrb	r3, [r7, #15]
 80013c6:	4618      	mov	r0, r3
 80013c8:	3714      	adds	r7, #20
 80013ca:	46bd      	mov	sp, r7
 80013cc:	bc80      	pop	{r7}
 80013ce:	4770      	bx	lr

080013d0 <SSP_ClearITPendingBit>:
 80013d0:	b480      	push	{r7}
 80013d2:	b083      	sub	sp, #12
 80013d4:	af00      	add	r7, sp, #0
 80013d6:	6078      	str	r0, [r7, #4]
 80013d8:	6039      	str	r1, [r7, #0]
 80013da:	687b      	ldr	r3, [r7, #4]
 80013dc:	6a1a      	ldr	r2, [r3, #32]
 80013de:	683b      	ldr	r3, [r7, #0]
 80013e0:	431a      	orrs	r2, r3
 80013e2:	687b      	ldr	r3, [r7, #4]
 80013e4:	621a      	str	r2, [r3, #32]
 80013e6:	bf00      	nop
 80013e8:	370c      	adds	r7, #12
 80013ea:	46bd      	mov	sp, r7
 80013ec:	bc80      	pop	{r7}
 80013ee:	4770      	bx	lr

080013f0 <SSP_DMACmd>:
 80013f0:	b480      	push	{r7}
 80013f2:	b085      	sub	sp, #20
 80013f4:	af00      	add	r7, sp, #0
 80013f6:	60f8      	str	r0, [r7, #12]
 80013f8:	60b9      	str	r1, [r7, #8]
 80013fa:	4613      	mov	r3, r2
 80013fc:	71fb      	strb	r3, [r7, #7]
 80013fe:	79fb      	ldrb	r3, [r7, #7]
 8001400:	2b00      	cmp	r3, #0
 8001402:	d006      	beq.n	8001412 <SSP_DMACmd+0x22>
 8001404:	68fb      	ldr	r3, [r7, #12]
 8001406:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 8001408:	68bb      	ldr	r3, [r7, #8]
 800140a:	431a      	orrs	r2, r3
 800140c:	68fb      	ldr	r3, [r7, #12]
 800140e:	625a      	str	r2, [r3, #36]	; 0x24
 8001410:	e008      	b.n	8001424 <SSP_DMACmd+0x34>
 8001412:	68fb      	ldr	r3, [r7, #12]
 8001414:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001416:	68ba      	ldr	r2, [r7, #8]
 8001418:	b292      	uxth	r2, r2
 800141a:	43d2      	mvns	r2, r2
 800141c:	b292      	uxth	r2, r2
 800141e:	401a      	ands	r2, r3
 8001420:	68fb      	ldr	r3, [r7, #12]
 8001422:	625a      	str	r2, [r3, #36]	; 0x24
 8001424:	bf00      	nop
 8001426:	3714      	adds	r7, #20
 8001428:	46bd      	mov	sp, r7
 800142a:	bc80      	pop	{r7}
 800142c:	4770      	bx	lr
 800142e:	bf00      	nop

08001430 <SSP_SendData>:
 8001430:	b480      	push	{r7}
 8001432:	b083      	sub	sp, #12
 8001434:	af00      	add	r7, sp, #0
 8001436:	6078      	str	r0, [r7, #4]
 8001438:	460b      	mov	r3, r1
 800143a:	807b      	strh	r3, [r7, #2]
 800143c:	887a      	ldrh	r2, [r7, #2]
 800143e:	687b      	ldr	r3, [r7, #4]
 8001440:	609a      	str	r2, [r3, #8]
 8001442:	bf00      	nop
 8001444:	370c      	adds	r7, #12
 8001446:	46bd      	mov	sp, r7
 8001448:	bc80      	pop	{r7}
 800144a:	4770      	bx	lr

0800144c <SSP_ReceiveData>:
 800144c:	b480      	push	{r7}
 800144e:	b083      	sub	sp, #12
 8001450:	af00      	add	r7, sp, #0
 8001452:	6078      	str	r0, [r7, #4]
 8001454:	687b      	ldr	r3, [r7, #4]
 8001456:	689b      	ldr	r3, [r3, #8]
 8001458:	b29b      	uxth	r3, r3
 800145a:	4618      	mov	r0, r3
 800145c:	370c      	adds	r7, #12
 800145e:	46bd      	mov	sp, r7
 8001460:	bc80      	pop	{r7}
 8001462:	4770      	bx	lr

08001464 <SSP_GetFlagStatus>:
 8001464:	b480      	push	{r7}
 8001466:	b085      	sub	sp, #20
 8001468:	af00      	add	r7, sp, #0
 800146a:	6078      	str	r0, [r7, #4]
 800146c:	6039      	str	r1, [r7, #0]
 800146e:	687b      	ldr	r3, [r7, #4]
 8001470:	68da      	ldr	r2, [r3, #12]
 8001472:	683b      	ldr	r3, [r7, #0]
 8001474:	4013      	ands	r3, r2
 8001476:	2b00      	cmp	r3, #0
 8001478:	d002      	beq.n	8001480 <SSP_GetFlagStatus+0x1c>
 800147a:	2301      	movs	r3, #1
 800147c:	73fb      	strb	r3, [r7, #15]
 800147e:	e001      	b.n	8001484 <SSP_GetFlagStatus+0x20>
 8001480:	2300      	movs	r3, #0
 8001482:	73fb      	strb	r3, [r7, #15]
 8001484:	7bfb      	ldrb	r3, [r7, #15]
 8001486:	4618      	mov	r0, r3
 8001488:	3714      	adds	r7, #20
 800148a:	46bd      	mov	sp, r7
 800148c:	bc80      	pop	{r7}
 800148e:	4770      	bx	lr

08001490 <SSP_BRGInit>:
 8001490:	b480      	push	{r7}
 8001492:	b085      	sub	sp, #20
 8001494:	af00      	add	r7, sp, #0
 8001496:	6078      	str	r0, [r7, #4]
 8001498:	6039      	str	r1, [r7, #0]
 800149a:	4b16      	ldr	r3, [pc, #88]	; (80014f4 <SSP_BRGInit+0x64>)
 800149c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800149e:	60fb      	str	r3, [r7, #12]
 80014a0:	687b      	ldr	r3, [r7, #4]
 80014a2:	4a15      	ldr	r2, [pc, #84]	; (80014f8 <SSP_BRGInit+0x68>)
 80014a4:	4293      	cmp	r3, r2
 80014a6:	d10c      	bne.n	80014c2 <SSP_BRGInit+0x32>
 80014a8:	68fb      	ldr	r3, [r7, #12]
 80014aa:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80014ae:	60fb      	str	r3, [r7, #12]
 80014b0:	68fb      	ldr	r3, [r7, #12]
 80014b2:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 80014b6:	60fb      	str	r3, [r7, #12]
 80014b8:	68fa      	ldr	r2, [r7, #12]
 80014ba:	683b      	ldr	r3, [r7, #0]
 80014bc:	4313      	orrs	r3, r2
 80014be:	60fb      	str	r3, [r7, #12]
 80014c0:	e010      	b.n	80014e4 <SSP_BRGInit+0x54>
 80014c2:	687b      	ldr	r3, [r7, #4]
 80014c4:	4a0d      	ldr	r2, [pc, #52]	; (80014fc <SSP_BRGInit+0x6c>)
 80014c6:	4293      	cmp	r3, r2
 80014c8:	d10c      	bne.n	80014e4 <SSP_BRGInit+0x54>
 80014ca:	68fb      	ldr	r3, [r7, #12]
 80014cc:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 80014d0:	60fb      	str	r3, [r7, #12]
 80014d2:	68fb      	ldr	r3, [r7, #12]
 80014d4:	f423 437f 	bic.w	r3, r3, #65280	; 0xff00
 80014d8:	60fb      	str	r3, [r7, #12]
 80014da:	683b      	ldr	r3, [r7, #0]
 80014dc:	021b      	lsls	r3, r3, #8
 80014de:	68fa      	ldr	r2, [r7, #12]
 80014e0:	4313      	orrs	r3, r2
 80014e2:	60fb      	str	r3, [r7, #12]
 80014e4:	4a03      	ldr	r2, [pc, #12]	; (80014f4 <SSP_BRGInit+0x64>)
 80014e6:	68fb      	ldr	r3, [r7, #12]
 80014e8:	62d3      	str	r3, [r2, #44]	; 0x2c
 80014ea:	bf00      	nop
 80014ec:	3714      	adds	r7, #20
 80014ee:	46bd      	mov	sp, r7
 80014f0:	bc80      	pop	{r7}
 80014f2:	4770      	bx	lr
 80014f4:	40020000 	.word	0x40020000
 80014f8:	40040000 	.word	0x40040000
 80014fc:	400a0000 	.word	0x400a0000
