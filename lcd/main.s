
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20000000 <main>:
20000000:	b580      	push	{r7, lr}
20000002:	af00      	add	r7, sp, #0
20000004:	f000 f820 	bl	20000048 <PortConfig>
20000008:	4b0b      	ldr	r3, [pc, #44]	; (20000038 <main+0x38>)
2000000a:	2200      	movs	r2, #0
2000000c:	601a      	str	r2, [r3, #0]
2000000e:	4a0b      	ldr	r2, [pc, #44]	; (2000003c <main+0x3c>)
20000010:	4b0a      	ldr	r3, [pc, #40]	; (2000003c <main+0x3c>)
20000012:	681b      	ldr	r3, [r3, #0]
20000014:	f083 0301 	eor.w	r3, r3, #1
20000018:	6013      	str	r3, [r2, #0]
2000001a:	4b09      	ldr	r3, [pc, #36]	; (20000040 <main+0x40>)
2000001c:	2200      	movs	r2, #0
2000001e:	601a      	str	r2, [r3, #0]
20000020:	e004      	b.n	2000002c <main+0x2c>
20000022:	4b07      	ldr	r3, [pc, #28]	; (20000040 <main+0x40>)
20000024:	681b      	ldr	r3, [r3, #0]
20000026:	3301      	adds	r3, #1
20000028:	4a05      	ldr	r2, [pc, #20]	; (20000040 <main+0x40>)
2000002a:	6013      	str	r3, [r2, #0]
2000002c:	4b04      	ldr	r3, [pc, #16]	; (20000040 <main+0x40>)
2000002e:	681b      	ldr	r3, [r3, #0]
20000030:	4a04      	ldr	r2, [pc, #16]	; (20000044 <main+0x44>)
20000032:	4293      	cmp	r3, r2
20000034:	d9f5      	bls.n	20000022 <main+0x22>
20000036:	e7ea      	b.n	2000000e <main+0xe>
20000038:	20000620 	.word	0x20000620
2000003c:	400b0000 	.word	0x400b0000
20000040:	20000624 	.word	0x20000624
20000044:	0001869f 	.word	0x0001869f

20000048 <PortConfig>:
20000048:	b480      	push	{r7}
2000004a:	af00      	add	r7, sp, #0
2000004c:	4a11      	ldr	r2, [pc, #68]	; (20000094 <PortConfig+0x4c>)
2000004e:	4b11      	ldr	r3, [pc, #68]	; (20000094 <PortConfig+0x4c>)
20000050:	69db      	ldr	r3, [r3, #28]
20000052:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
20000056:	61d3      	str	r3, [r2, #28]
20000058:	4a0f      	ldr	r2, [pc, #60]	; (20000098 <PortConfig+0x50>)
2000005a:	4b0f      	ldr	r3, [pc, #60]	; (20000098 <PortConfig+0x50>)
2000005c:	689b      	ldr	r3, [r3, #8]
2000005e:	6093      	str	r3, [r2, #8]
20000060:	4a0d      	ldr	r2, [pc, #52]	; (20000098 <PortConfig+0x50>)
20000062:	4b0d      	ldr	r3, [pc, #52]	; (20000098 <PortConfig+0x50>)
20000064:	681b      	ldr	r3, [r3, #0]
20000066:	6013      	str	r3, [r2, #0]
20000068:	4a0b      	ldr	r2, [pc, #44]	; (20000098 <PortConfig+0x50>)
2000006a:	4b0b      	ldr	r3, [pc, #44]	; (20000098 <PortConfig+0x50>)
2000006c:	685b      	ldr	r3, [r3, #4]
2000006e:	f043 0301 	orr.w	r3, r3, #1
20000072:	6053      	str	r3, [r2, #4]
20000074:	4a08      	ldr	r2, [pc, #32]	; (20000098 <PortConfig+0x50>)
20000076:	4b08      	ldr	r3, [pc, #32]	; (20000098 <PortConfig+0x50>)
20000078:	68db      	ldr	r3, [r3, #12]
2000007a:	f043 0301 	orr.w	r3, r3, #1
2000007e:	60d3      	str	r3, [r2, #12]
20000080:	4a05      	ldr	r2, [pc, #20]	; (20000098 <PortConfig+0x50>)
20000082:	4b05      	ldr	r3, [pc, #20]	; (20000098 <PortConfig+0x50>)
20000084:	699b      	ldr	r3, [r3, #24]
20000086:	f043 0303 	orr.w	r3, r3, #3
2000008a:	6193      	str	r3, [r2, #24]
2000008c:	bf00      	nop
2000008e:	46bd      	mov	sp, r7
20000090:	bc80      	pop	{r7}
20000092:	4770      	bx	lr
20000094:	40020000 	.word	0x40020000
20000098:	400b0000 	.word	0x400b0000

2000009c <cycle_delay>:
2000009c:	b480      	push	{r7}
2000009e:	b085      	sub	sp, #20
200000a0:	af00      	add	r7, sp, #0
200000a2:	6078      	str	r0, [r7, #4]
200000a4:	2300      	movs	r3, #0
200000a6:	60fb      	str	r3, [r7, #12]
200000a8:	e002      	b.n	200000b0 <cycle_delay+0x14>
200000aa:	68fb      	ldr	r3, [r7, #12]
200000ac:	3301      	adds	r3, #1
200000ae:	60fb      	str	r3, [r7, #12]
200000b0:	68fa      	ldr	r2, [r7, #12]
200000b2:	687b      	ldr	r3, [r7, #4]
200000b4:	429a      	cmp	r2, r3
200000b6:	d3f8      	bcc.n	200000aa <cycle_delay+0xe>
200000b8:	bf00      	nop
200000ba:	3714      	adds	r7, #20
200000bc:	46bd      	mov	sp, r7
200000be:	bc80      	pop	{r7}
200000c0:	4770      	bx	lr
200000c2:	bf00      	nop

200000c4 <DisplayInit>:
200000c4:	b580      	push	{r7, lr}
200000c6:	af00      	add	r7, sp, #0
200000c8:	4a18      	ldr	r2, [pc, #96]	; (2000012c <DisplayInit+0x68>)
200000ca:	4b18      	ldr	r3, [pc, #96]	; (2000012c <DisplayInit+0x68>)
200000cc:	681b      	ldr	r3, [r3, #0]
200000ce:	f023 0302 	bic.w	r3, r3, #2
200000d2:	6013      	str	r3, [r2, #0]
200000d4:	4a16      	ldr	r2, [pc, #88]	; (20000130 <DisplayInit+0x6c>)
200000d6:	4b16      	ldr	r3, [pc, #88]	; (20000130 <DisplayInit+0x6c>)
200000d8:	681b      	ldr	r3, [r3, #0]
200000da:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
200000de:	6013      	str	r3, [r2, #0]
200000e0:	4a13      	ldr	r2, [pc, #76]	; (20000130 <DisplayInit+0x6c>)
200000e2:	4b13      	ldr	r3, [pc, #76]	; (20000130 <DisplayInit+0x6c>)
200000e4:	681b      	ldr	r3, [r3, #0]
200000e6:	f443 7300 	orr.w	r3, r3, #512	; 0x200
200000ea:	6013      	str	r3, [r2, #0]
200000ec:	4a10      	ldr	r2, [pc, #64]	; (20000130 <DisplayInit+0x6c>)
200000ee:	4b10      	ldr	r3, [pc, #64]	; (20000130 <DisplayInit+0x6c>)
200000f0:	681b      	ldr	r3, [r3, #0]
200000f2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
200000f6:	6013      	str	r3, [r2, #0]
200000f8:	4a0d      	ldr	r2, [pc, #52]	; (20000130 <DisplayInit+0x6c>)
200000fa:	4b0d      	ldr	r3, [pc, #52]	; (20000130 <DisplayInit+0x6c>)
200000fc:	681b      	ldr	r3, [r3, #0]
200000fe:	f043 0380 	orr.w	r3, r3, #128	; 0x80
20000102:	6013      	str	r3, [r2, #0]
20000104:	4a0a      	ldr	r2, [pc, #40]	; (20000130 <DisplayInit+0x6c>)
20000106:	4b0a      	ldr	r3, [pc, #40]	; (20000130 <DisplayInit+0x6c>)
20000108:	681b      	ldr	r3, [r3, #0]
2000010a:	f423 7300 	bic.w	r3, r3, #512	; 0x200
2000010e:	6013      	str	r3, [r2, #0]
20000110:	4808      	ldr	r0, [pc, #32]	; (20000134 <DisplayInit+0x70>)
20000112:	f7ff ffc3 	bl	2000009c <cycle_delay>
20000116:	4a06      	ldr	r2, [pc, #24]	; (20000130 <DisplayInit+0x6c>)
20000118:	4b05      	ldr	r3, [pc, #20]	; (20000130 <DisplayInit+0x6c>)
2000011a:	681b      	ldr	r3, [r3, #0]
2000011c:	f443 7300 	orr.w	r3, r3, #512	; 0x200
20000120:	6013      	str	r3, [r2, #0]
20000122:	4804      	ldr	r0, [pc, #16]	; (20000134 <DisplayInit+0x70>)
20000124:	f7ff ffba 	bl	2000009c <cycle_delay>
20000128:	bf00      	nop
2000012a:	bd80      	pop	{r7, pc}
2000012c:	400b8000 	.word	0x400b8000
20000130:	400b0000 	.word	0x400b0000
20000134:	000186a0 	.word	0x000186a0

20000138 <write_bus>:
20000138:	b580      	push	{r7, lr}
2000013a:	b082      	sub	sp, #8
2000013c:	af00      	add	r7, sp, #0
2000013e:	4603      	mov	r3, r0
20000140:	71fb      	strb	r3, [r7, #7]
20000142:	4a27      	ldr	r2, [pc, #156]	; (200001e0 <write_bus+0xa8>)
20000144:	4b26      	ldr	r3, [pc, #152]	; (200001e0 <write_bus+0xa8>)
20000146:	681b      	ldr	r3, [r3, #0]
20000148:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
2000014c:	6013      	str	r3, [r2, #0]
2000014e:	4a25      	ldr	r2, [pc, #148]	; (200001e4 <write_bus+0xac>)
20000150:	4b24      	ldr	r3, [pc, #144]	; (200001e4 <write_bus+0xac>)
20000152:	681b      	ldr	r3, [r3, #0]
20000154:	f043 0302 	orr.w	r3, r3, #2
20000158:	6013      	str	r3, [r2, #0]
2000015a:	4a23      	ldr	r2, [pc, #140]	; (200001e8 <write_bus+0xb0>)
2000015c:	4b22      	ldr	r3, [pc, #136]	; (200001e8 <write_bus+0xb0>)
2000015e:	685b      	ldr	r3, [r3, #4]
20000160:	f043 033f 	orr.w	r3, r3, #63	; 0x3f
20000164:	6053      	str	r3, [r2, #4]
20000166:	4a21      	ldr	r2, [pc, #132]	; (200001ec <write_bus+0xb4>)
20000168:	4b20      	ldr	r3, [pc, #128]	; (200001ec <write_bus+0xb4>)
2000016a:	685b      	ldr	r3, [r3, #4]
2000016c:	f043 030c 	orr.w	r3, r3, #12
20000170:	6053      	str	r3, [r2, #4]
20000172:	4a1d      	ldr	r2, [pc, #116]	; (200001e8 <write_bus+0xb0>)
20000174:	4b1c      	ldr	r3, [pc, #112]	; (200001e8 <write_bus+0xb0>)
20000176:	681b      	ldr	r3, [r3, #0]
20000178:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
2000017c:	6013      	str	r3, [r2, #0]
2000017e:	4a1b      	ldr	r2, [pc, #108]	; (200001ec <write_bus+0xb4>)
20000180:	4b1a      	ldr	r3, [pc, #104]	; (200001ec <write_bus+0xb4>)
20000182:	681b      	ldr	r3, [r3, #0]
20000184:	f023 030c 	bic.w	r3, r3, #12
20000188:	6013      	str	r3, [r2, #0]
2000018a:	4917      	ldr	r1, [pc, #92]	; (200001e8 <write_bus+0xb0>)
2000018c:	4b16      	ldr	r3, [pc, #88]	; (200001e8 <write_bus+0xb0>)
2000018e:	681a      	ldr	r2, [r3, #0]
20000190:	79fb      	ldrb	r3, [r7, #7]
20000192:	f003 033f 	and.w	r3, r3, #63	; 0x3f
20000196:	4313      	orrs	r3, r2
20000198:	600b      	str	r3, [r1, #0]
2000019a:	4914      	ldr	r1, [pc, #80]	; (200001ec <write_bus+0xb4>)
2000019c:	4b13      	ldr	r3, [pc, #76]	; (200001ec <write_bus+0xb4>)
2000019e:	681a      	ldr	r2, [r3, #0]
200001a0:	79fb      	ldrb	r3, [r7, #7]
200001a2:	091b      	lsrs	r3, r3, #4
200001a4:	b2db      	uxtb	r3, r3
200001a6:	f003 030c 	and.w	r3, r3, #12
200001aa:	4313      	orrs	r3, r2
200001ac:	600b      	str	r3, [r1, #0]
200001ae:	4a0d      	ldr	r2, [pc, #52]	; (200001e4 <write_bus+0xac>)
200001b0:	4b0c      	ldr	r3, [pc, #48]	; (200001e4 <write_bus+0xac>)
200001b2:	681b      	ldr	r3, [r3, #0]
200001b4:	f023 0302 	bic.w	r3, r3, #2
200001b8:	6013      	str	r3, [r2, #0]
200001ba:	4a0b      	ldr	r2, [pc, #44]	; (200001e8 <write_bus+0xb0>)
200001bc:	4b0a      	ldr	r3, [pc, #40]	; (200001e8 <write_bus+0xb0>)
200001be:	685b      	ldr	r3, [r3, #4]
200001c0:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
200001c4:	6053      	str	r3, [r2, #4]
200001c6:	4a09      	ldr	r2, [pc, #36]	; (200001ec <write_bus+0xb4>)
200001c8:	4b08      	ldr	r3, [pc, #32]	; (200001ec <write_bus+0xb4>)
200001ca:	685b      	ldr	r3, [r3, #4]
200001cc:	f023 030c 	bic.w	r3, r3, #12
200001d0:	6053      	str	r3, [r2, #4]
200001d2:	201e      	movs	r0, #30
200001d4:	f7ff ff62 	bl	2000009c <cycle_delay>
200001d8:	bf00      	nop
200001da:	3708      	adds	r7, #8
200001dc:	46bd      	mov	sp, r7
200001de:	bd80      	pop	{r7, pc}
200001e0:	400b0000 	.word	0x400b0000
200001e4:	400b8000 	.word	0x400b8000
200001e8:	400a8000 	.word	0x400a8000
200001ec:	400e8000 	.word	0x400e8000

200001f0 <read_bus>:
200001f0:	b580      	push	{r7, lr}
200001f2:	b082      	sub	sp, #8
200001f4:	af00      	add	r7, sp, #0
200001f6:	4a1c      	ldr	r2, [pc, #112]	; (20000268 <read_bus+0x78>)
200001f8:	4b1b      	ldr	r3, [pc, #108]	; (20000268 <read_bus+0x78>)
200001fa:	685b      	ldr	r3, [r3, #4]
200001fc:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
20000200:	6053      	str	r3, [r2, #4]
20000202:	4a1a      	ldr	r2, [pc, #104]	; (2000026c <read_bus+0x7c>)
20000204:	4b19      	ldr	r3, [pc, #100]	; (2000026c <read_bus+0x7c>)
20000206:	685b      	ldr	r3, [r3, #4]
20000208:	f023 030c 	bic.w	r3, r3, #12
2000020c:	6053      	str	r3, [r2, #4]
2000020e:	4a18      	ldr	r2, [pc, #96]	; (20000270 <read_bus+0x80>)
20000210:	4b17      	ldr	r3, [pc, #92]	; (20000270 <read_bus+0x80>)
20000212:	681b      	ldr	r3, [r3, #0]
20000214:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
20000218:	6013      	str	r3, [r2, #0]
2000021a:	4a16      	ldr	r2, [pc, #88]	; (20000274 <read_bus+0x84>)
2000021c:	4b15      	ldr	r3, [pc, #84]	; (20000274 <read_bus+0x84>)
2000021e:	681b      	ldr	r3, [r3, #0]
20000220:	f043 0302 	orr.w	r3, r3, #2
20000224:	6013      	str	r3, [r2, #0]
20000226:	bf00      	nop
20000228:	bf00      	nop
2000022a:	bf00      	nop
2000022c:	4b0e      	ldr	r3, [pc, #56]	; (20000268 <read_bus+0x78>)
2000022e:	681b      	ldr	r3, [r3, #0]
20000230:	b2db      	uxtb	r3, r3
20000232:	f003 033f 	and.w	r3, r3, #63	; 0x3f
20000236:	b2da      	uxtb	r2, r3
20000238:	4b0c      	ldr	r3, [pc, #48]	; (2000026c <read_bus+0x7c>)
2000023a:	681b      	ldr	r3, [r3, #0]
2000023c:	b2db      	uxtb	r3, r3
2000023e:	011b      	lsls	r3, r3, #4
20000240:	b2db      	uxtb	r3, r3
20000242:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
20000246:	b2db      	uxtb	r3, r3
20000248:	4413      	add	r3, r2
2000024a:	71fb      	strb	r3, [r7, #7]
2000024c:	4a09      	ldr	r2, [pc, #36]	; (20000274 <read_bus+0x84>)
2000024e:	4b09      	ldr	r3, [pc, #36]	; (20000274 <read_bus+0x84>)
20000250:	681b      	ldr	r3, [r3, #0]
20000252:	f023 0302 	bic.w	r3, r3, #2
20000256:	6013      	str	r3, [r2, #0]
20000258:	201e      	movs	r0, #30
2000025a:	f7ff ff1f 	bl	2000009c <cycle_delay>
2000025e:	79fb      	ldrb	r3, [r7, #7]
20000260:	4618      	mov	r0, r3
20000262:	3708      	adds	r7, #8
20000264:	46bd      	mov	sp, r7
20000266:	bd80      	pop	{r7, pc}
20000268:	400a8000 	.word	0x400a8000
2000026c:	400e8000 	.word	0x400e8000
20000270:	400b0000 	.word	0x400b0000
20000274:	400b8000 	.word	0x400b8000

20000278 <DisplayOn>:
20000278:	b580      	push	{r7, lr}
2000027a:	af00      	add	r7, sp, #0
2000027c:	4a12      	ldr	r2, [pc, #72]	; (200002c8 <DisplayOn+0x50>)
2000027e:	4b12      	ldr	r3, [pc, #72]	; (200002c8 <DisplayOn+0x50>)
20000280:	681b      	ldr	r3, [r3, #0]
20000282:	f023 0301 	bic.w	r3, r3, #1
20000286:	6013      	str	r3, [r2, #0]
20000288:	4a10      	ldr	r2, [pc, #64]	; (200002cc <DisplayOn+0x54>)
2000028a:	4b10      	ldr	r3, [pc, #64]	; (200002cc <DisplayOn+0x54>)
2000028c:	681b      	ldr	r3, [r3, #0]
2000028e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
20000292:	6013      	str	r3, [r2, #0]
20000294:	4a0d      	ldr	r2, [pc, #52]	; (200002cc <DisplayOn+0x54>)
20000296:	4b0d      	ldr	r3, [pc, #52]	; (200002cc <DisplayOn+0x54>)
20000298:	681b      	ldr	r3, [r3, #0]
2000029a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
2000029e:	6013      	str	r3, [r2, #0]
200002a0:	203f      	movs	r0, #63	; 0x3f
200002a2:	f7ff ff49 	bl	20000138 <write_bus>
200002a6:	4a09      	ldr	r2, [pc, #36]	; (200002cc <DisplayOn+0x54>)
200002a8:	4b08      	ldr	r3, [pc, #32]	; (200002cc <DisplayOn+0x54>)
200002aa:	681b      	ldr	r3, [r3, #0]
200002ac:	f023 0380 	bic.w	r3, r3, #128	; 0x80
200002b0:	6013      	str	r3, [r2, #0]
200002b2:	4a06      	ldr	r2, [pc, #24]	; (200002cc <DisplayOn+0x54>)
200002b4:	4b05      	ldr	r3, [pc, #20]	; (200002cc <DisplayOn+0x54>)
200002b6:	681b      	ldr	r3, [r3, #0]
200002b8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200002bc:	6013      	str	r3, [r2, #0]
200002be:	203f      	movs	r0, #63	; 0x3f
200002c0:	f7ff ff3a 	bl	20000138 <write_bus>
200002c4:	bf00      	nop
200002c6:	bd80      	pop	{r7, pc}
200002c8:	400b8000 	.word	0x400b8000
200002cc:	400b0000 	.word	0x400b0000

200002d0 <DisplayOff>:
200002d0:	b580      	push	{r7, lr}
200002d2:	af00      	add	r7, sp, #0
200002d4:	4a12      	ldr	r2, [pc, #72]	; (20000320 <DisplayOff+0x50>)
200002d6:	4b12      	ldr	r3, [pc, #72]	; (20000320 <DisplayOff+0x50>)
200002d8:	681b      	ldr	r3, [r3, #0]
200002da:	f023 0301 	bic.w	r3, r3, #1
200002de:	6013      	str	r3, [r2, #0]
200002e0:	4a10      	ldr	r2, [pc, #64]	; (20000324 <DisplayOff+0x54>)
200002e2:	4b10      	ldr	r3, [pc, #64]	; (20000324 <DisplayOff+0x54>)
200002e4:	681b      	ldr	r3, [r3, #0]
200002e6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
200002ea:	6013      	str	r3, [r2, #0]
200002ec:	4a0d      	ldr	r2, [pc, #52]	; (20000324 <DisplayOff+0x54>)
200002ee:	4b0d      	ldr	r3, [pc, #52]	; (20000324 <DisplayOff+0x54>)
200002f0:	681b      	ldr	r3, [r3, #0]
200002f2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
200002f6:	6013      	str	r3, [r2, #0]
200002f8:	203e      	movs	r0, #62	; 0x3e
200002fa:	f7ff ff1d 	bl	20000138 <write_bus>
200002fe:	4a09      	ldr	r2, [pc, #36]	; (20000324 <DisplayOff+0x54>)
20000300:	4b08      	ldr	r3, [pc, #32]	; (20000324 <DisplayOff+0x54>)
20000302:	681b      	ldr	r3, [r3, #0]
20000304:	f023 0380 	bic.w	r3, r3, #128	; 0x80
20000308:	6013      	str	r3, [r2, #0]
2000030a:	4a06      	ldr	r2, [pc, #24]	; (20000324 <DisplayOff+0x54>)
2000030c:	4b05      	ldr	r3, [pc, #20]	; (20000324 <DisplayOff+0x54>)
2000030e:	681b      	ldr	r3, [r3, #0]
20000310:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20000314:	6013      	str	r3, [r2, #0]
20000316:	203e      	movs	r0, #62	; 0x3e
20000318:	f7ff ff0e 	bl	20000138 <write_bus>
2000031c:	bf00      	nop
2000031e:	bd80      	pop	{r7, pc}
20000320:	400b8000 	.word	0x400b8000
20000324:	400b0000 	.word	0x400b0000

20000328 <DisplaySelectChip>:
20000328:	b480      	push	{r7}
2000032a:	b083      	sub	sp, #12
2000032c:	af00      	add	r7, sp, #0
2000032e:	6078      	str	r0, [r7, #4]
20000330:	4a0b      	ldr	r2, [pc, #44]	; (20000360 <DisplaySelectChip+0x38>)
20000332:	4b0b      	ldr	r3, [pc, #44]	; (20000360 <DisplaySelectChip+0x38>)
20000334:	681b      	ldr	r3, [r3, #0]
20000336:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
2000033a:	6013      	str	r3, [r2, #0]
2000033c:	4908      	ldr	r1, [pc, #32]	; (20000360 <DisplaySelectChip+0x38>)
2000033e:	4b08      	ldr	r3, [pc, #32]	; (20000360 <DisplaySelectChip+0x38>)
20000340:	681b      	ldr	r3, [r3, #0]
20000342:	4808      	ldr	r0, [pc, #32]	; (20000364 <DisplaySelectChip+0x3c>)
20000344:	687a      	ldr	r2, [r7, #4]
20000346:	4402      	add	r2, r0
20000348:	7812      	ldrb	r2, [r2, #0]
2000034a:	4610      	mov	r0, r2
2000034c:	2201      	movs	r2, #1
2000034e:	4082      	lsls	r2, r0
20000350:	4313      	orrs	r3, r2
20000352:	600b      	str	r3, [r1, #0]
20000354:	bf00      	nop
20000356:	370c      	adds	r7, #12
20000358:	46bd      	mov	sp, r7
2000035a:	bc80      	pop	{r7}
2000035c:	4770      	bx	lr
2000035e:	bf00      	nop
20000360:	400b0000 	.word	0x400b0000
20000364:	2000061c 	.word	0x2000061c

20000368 <DisplaySTARTLine>:
20000368:	b580      	push	{r7, lr}
2000036a:	b082      	sub	sp, #8
2000036c:	af00      	add	r7, sp, #0
2000036e:	4603      	mov	r3, r0
20000370:	71fb      	strb	r3, [r7, #7]
20000372:	4a08      	ldr	r2, [pc, #32]	; (20000394 <DisplaySTARTLine+0x2c>)
20000374:	4b07      	ldr	r3, [pc, #28]	; (20000394 <DisplaySTARTLine+0x2c>)
20000376:	681b      	ldr	r3, [r3, #0]
20000378:	f023 0301 	bic.w	r3, r3, #1
2000037c:	6013      	str	r3, [r2, #0]
2000037e:	79fb      	ldrb	r3, [r7, #7]
20000380:	f063 033f 	orn	r3, r3, #63	; 0x3f
20000384:	b2db      	uxtb	r3, r3
20000386:	4618      	mov	r0, r3
20000388:	f7ff fed6 	bl	20000138 <write_bus>
2000038c:	bf00      	nop
2000038e:	3708      	adds	r7, #8
20000390:	46bd      	mov	sp, r7
20000392:	bd80      	pop	{r7, pc}
20000394:	400b8000 	.word	0x400b8000

20000398 <DisplaySetPage>:
20000398:	b580      	push	{r7, lr}
2000039a:	b082      	sub	sp, #8
2000039c:	af00      	add	r7, sp, #0
2000039e:	4603      	mov	r3, r0
200003a0:	71fb      	strb	r3, [r7, #7]
200003a2:	4a08      	ldr	r2, [pc, #32]	; (200003c4 <DisplaySetPage+0x2c>)
200003a4:	4b07      	ldr	r3, [pc, #28]	; (200003c4 <DisplaySetPage+0x2c>)
200003a6:	681b      	ldr	r3, [r3, #0]
200003a8:	f023 0301 	bic.w	r3, r3, #1
200003ac:	6013      	str	r3, [r2, #0]
200003ae:	79fb      	ldrb	r3, [r7, #7]
200003b0:	f063 0347 	orn	r3, r3, #71	; 0x47
200003b4:	b2db      	uxtb	r3, r3
200003b6:	4618      	mov	r0, r3
200003b8:	f7ff febe 	bl	20000138 <write_bus>
200003bc:	bf00      	nop
200003be:	3708      	adds	r7, #8
200003c0:	46bd      	mov	sp, r7
200003c2:	bd80      	pop	{r7, pc}
200003c4:	400b8000 	.word	0x400b8000

200003c8 <DisplaySetAddress>:
200003c8:	b580      	push	{r7, lr}
200003ca:	b082      	sub	sp, #8
200003cc:	af00      	add	r7, sp, #0
200003ce:	4603      	mov	r3, r0
200003d0:	71fb      	strb	r3, [r7, #7]
200003d2:	4a08      	ldr	r2, [pc, #32]	; (200003f4 <DisplaySetAddress+0x2c>)
200003d4:	4b07      	ldr	r3, [pc, #28]	; (200003f4 <DisplaySetAddress+0x2c>)
200003d6:	681b      	ldr	r3, [r3, #0]
200003d8:	f023 0301 	bic.w	r3, r3, #1
200003dc:	6013      	str	r3, [r2, #0]
200003de:	79fb      	ldrb	r3, [r7, #7]
200003e0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
200003e4:	b2db      	uxtb	r3, r3
200003e6:	4618      	mov	r0, r3
200003e8:	f7ff fea6 	bl	20000138 <write_bus>
200003ec:	bf00      	nop
200003ee:	3708      	adds	r7, #8
200003f0:	46bd      	mov	sp, r7
200003f2:	bd80      	pop	{r7, pc}
200003f4:	400b8000 	.word	0x400b8000

200003f8 <DisplayReadStatus>:
200003f8:	b580      	push	{r7, lr}
200003fa:	af00      	add	r7, sp, #0
200003fc:	4a05      	ldr	r2, [pc, #20]	; (20000414 <DisplayReadStatus+0x1c>)
200003fe:	4b05      	ldr	r3, [pc, #20]	; (20000414 <DisplayReadStatus+0x1c>)
20000400:	681b      	ldr	r3, [r3, #0]
20000402:	f023 0301 	bic.w	r3, r3, #1
20000406:	6013      	str	r3, [r2, #0]
20000408:	f7ff fef2 	bl	200001f0 <read_bus>
2000040c:	4603      	mov	r3, r0
2000040e:	4618      	mov	r0, r3
20000410:	bd80      	pop	{r7, pc}
20000412:	bf00      	nop
20000414:	400b8000 	.word	0x400b8000

20000418 <DisplayWriteData>:
20000418:	b580      	push	{r7, lr}
2000041a:	b082      	sub	sp, #8
2000041c:	af00      	add	r7, sp, #0
2000041e:	4603      	mov	r3, r0
20000420:	71fb      	strb	r3, [r7, #7]
20000422:	4a07      	ldr	r2, [pc, #28]	; (20000440 <DisplayWriteData+0x28>)
20000424:	4b06      	ldr	r3, [pc, #24]	; (20000440 <DisplayWriteData+0x28>)
20000426:	681b      	ldr	r3, [r3, #0]
20000428:	f043 0301 	orr.w	r3, r3, #1
2000042c:	6013      	str	r3, [r2, #0]
2000042e:	79fb      	ldrb	r3, [r7, #7]
20000430:	4618      	mov	r0, r3
20000432:	f7ff fe81 	bl	20000138 <write_bus>
20000436:	bf00      	nop
20000438:	3708      	adds	r7, #8
2000043a:	46bd      	mov	sp, r7
2000043c:	bd80      	pop	{r7, pc}
2000043e:	bf00      	nop
20000440:	400b8000 	.word	0x400b8000

20000444 <DisplayReadData>:
20000444:	b580      	push	{r7, lr}
20000446:	af00      	add	r7, sp, #0
20000448:	4a05      	ldr	r2, [pc, #20]	; (20000460 <DisplayReadData+0x1c>)
2000044a:	4b05      	ldr	r3, [pc, #20]	; (20000460 <DisplayReadData+0x1c>)
2000044c:	681b      	ldr	r3, [r3, #0]
2000044e:	f043 0301 	orr.w	r3, r3, #1
20000452:	6013      	str	r3, [r2, #0]
20000454:	f7ff fecc 	bl	200001f0 <read_bus>
20000458:	4603      	mov	r3, r0
2000045a:	4618      	mov	r0, r3
2000045c:	bd80      	pop	{r7, pc}
2000045e:	bf00      	nop
20000460:	400b8000 	.word	0x400b8000

20000464 <DisplayClear>:
20000464:	b580      	push	{r7, lr}
20000466:	b084      	sub	sp, #16
20000468:	af00      	add	r7, sp, #0
2000046a:	2300      	movs	r3, #0
2000046c:	607b      	str	r3, [r7, #4]
2000046e:	e01f      	b.n	200004b0 <DisplayClear+0x4c>
20000470:	6878      	ldr	r0, [r7, #4]
20000472:	f7ff ff59 	bl	20000328 <DisplaySelectChip>
20000476:	2300      	movs	r3, #0
20000478:	60fb      	str	r3, [r7, #12]
2000047a:	e013      	b.n	200004a4 <DisplayClear+0x40>
2000047c:	68fb      	ldr	r3, [r7, #12]
2000047e:	b2db      	uxtb	r3, r3
20000480:	4618      	mov	r0, r3
20000482:	f7ff ff89 	bl	20000398 <DisplaySetPage>
20000486:	2300      	movs	r3, #0
20000488:	60bb      	str	r3, [r7, #8]
2000048a:	e005      	b.n	20000498 <DisplayClear+0x34>
2000048c:	2000      	movs	r0, #0
2000048e:	f7ff ffc3 	bl	20000418 <DisplayWriteData>
20000492:	68bb      	ldr	r3, [r7, #8]
20000494:	3301      	adds	r3, #1
20000496:	60bb      	str	r3, [r7, #8]
20000498:	68bb      	ldr	r3, [r7, #8]
2000049a:	2b3f      	cmp	r3, #63	; 0x3f
2000049c:	ddf6      	ble.n	2000048c <DisplayClear+0x28>
2000049e:	68fb      	ldr	r3, [r7, #12]
200004a0:	3301      	adds	r3, #1
200004a2:	60fb      	str	r3, [r7, #12]
200004a4:	68fb      	ldr	r3, [r7, #12]
200004a6:	2b07      	cmp	r3, #7
200004a8:	dde8      	ble.n	2000047c <DisplayClear+0x18>
200004aa:	687b      	ldr	r3, [r7, #4]
200004ac:	3301      	adds	r3, #1
200004ae:	607b      	str	r3, [r7, #4]
200004b0:	687b      	ldr	r3, [r7, #4]
200004b2:	2b01      	cmp	r3, #1
200004b4:	dddc      	ble.n	20000470 <DisplayClear+0xc>
200004b6:	bf00      	nop
200004b8:	3710      	adds	r7, #16
200004ba:	46bd      	mov	sp, r7
200004bc:	bd80      	pop	{r7, pc}
200004be:	bf00      	nop

200004c0 <DisplayCopy>:
200004c0:	b580      	push	{r7, lr}
200004c2:	b084      	sub	sp, #16
200004c4:	af00      	add	r7, sp, #0
200004c6:	6078      	str	r0, [r7, #4]
200004c8:	4a4b      	ldr	r2, [pc, #300]	; (200005f8 <DisplayCopy+0x138>)
200004ca:	4b4b      	ldr	r3, [pc, #300]	; (200005f8 <DisplayCopy+0x138>)
200004cc:	681b      	ldr	r3, [r3, #0]
200004ce:	f423 7380 	bic.w	r3, r3, #256	; 0x100
200004d2:	6013      	str	r3, [r2, #0]
200004d4:	4a48      	ldr	r2, [pc, #288]	; (200005f8 <DisplayCopy+0x138>)
200004d6:	4b48      	ldr	r3, [pc, #288]	; (200005f8 <DisplayCopy+0x138>)
200004d8:	681b      	ldr	r3, [r3, #0]
200004da:	f043 0380 	orr.w	r3, r3, #128	; 0x80
200004de:	6013      	str	r3, [r2, #0]
200004e0:	2000      	movs	r0, #0
200004e2:	f7ff ff71 	bl	200003c8 <DisplaySetAddress>
200004e6:	4a44      	ldr	r2, [pc, #272]	; (200005f8 <DisplayCopy+0x138>)
200004e8:	4b43      	ldr	r3, [pc, #268]	; (200005f8 <DisplayCopy+0x138>)
200004ea:	681b      	ldr	r3, [r3, #0]
200004ec:	f023 0380 	bic.w	r3, r3, #128	; 0x80
200004f0:	6013      	str	r3, [r2, #0]
200004f2:	4a41      	ldr	r2, [pc, #260]	; (200005f8 <DisplayCopy+0x138>)
200004f4:	4b40      	ldr	r3, [pc, #256]	; (200005f8 <DisplayCopy+0x138>)
200004f6:	681b      	ldr	r3, [r3, #0]
200004f8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200004fc:	6013      	str	r3, [r2, #0]
200004fe:	2000      	movs	r0, #0
20000500:	f7ff ff62 	bl	200003c8 <DisplaySetAddress>
20000504:	2300      	movs	r3, #0
20000506:	60fb      	str	r3, [r7, #12]
20000508:	e04a      	b.n	200005a0 <DisplayCopy+0xe0>
2000050a:	4a3b      	ldr	r2, [pc, #236]	; (200005f8 <DisplayCopy+0x138>)
2000050c:	4b3a      	ldr	r3, [pc, #232]	; (200005f8 <DisplayCopy+0x138>)
2000050e:	681b      	ldr	r3, [r3, #0]
20000510:	f423 7380 	bic.w	r3, r3, #256	; 0x100
20000514:	6013      	str	r3, [r2, #0]
20000516:	4a38      	ldr	r2, [pc, #224]	; (200005f8 <DisplayCopy+0x138>)
20000518:	4b37      	ldr	r3, [pc, #220]	; (200005f8 <DisplayCopy+0x138>)
2000051a:	681b      	ldr	r3, [r3, #0]
2000051c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
20000520:	6013      	str	r3, [r2, #0]
20000522:	68fb      	ldr	r3, [r7, #12]
20000524:	b2db      	uxtb	r3, r3
20000526:	4618      	mov	r0, r3
20000528:	f7ff ff36 	bl	20000398 <DisplaySetPage>
2000052c:	2300      	movs	r3, #0
2000052e:	60bb      	str	r3, [r7, #8]
20000530:	e009      	b.n	20000546 <DisplayCopy+0x86>
20000532:	68bb      	ldr	r3, [r7, #8]
20000534:	687a      	ldr	r2, [r7, #4]
20000536:	4413      	add	r3, r2
20000538:	781b      	ldrb	r3, [r3, #0]
2000053a:	4618      	mov	r0, r3
2000053c:	f7ff ff6c 	bl	20000418 <DisplayWriteData>
20000540:	68bb      	ldr	r3, [r7, #8]
20000542:	3301      	adds	r3, #1
20000544:	60bb      	str	r3, [r7, #8]
20000546:	68bb      	ldr	r3, [r7, #8]
20000548:	2b3f      	cmp	r3, #63	; 0x3f
2000054a:	ddf2      	ble.n	20000532 <DisplayCopy+0x72>
2000054c:	687b      	ldr	r3, [r7, #4]
2000054e:	3340      	adds	r3, #64	; 0x40
20000550:	607b      	str	r3, [r7, #4]
20000552:	4a29      	ldr	r2, [pc, #164]	; (200005f8 <DisplayCopy+0x138>)
20000554:	4b28      	ldr	r3, [pc, #160]	; (200005f8 <DisplayCopy+0x138>)
20000556:	681b      	ldr	r3, [r3, #0]
20000558:	f023 0380 	bic.w	r3, r3, #128	; 0x80
2000055c:	6013      	str	r3, [r2, #0]
2000055e:	4a26      	ldr	r2, [pc, #152]	; (200005f8 <DisplayCopy+0x138>)
20000560:	4b25      	ldr	r3, [pc, #148]	; (200005f8 <DisplayCopy+0x138>)
20000562:	681b      	ldr	r3, [r3, #0]
20000564:	f443 7380 	orr.w	r3, r3, #256	; 0x100
20000568:	6013      	str	r3, [r2, #0]
2000056a:	68fb      	ldr	r3, [r7, #12]
2000056c:	b2db      	uxtb	r3, r3
2000056e:	4618      	mov	r0, r3
20000570:	f7ff ff12 	bl	20000398 <DisplaySetPage>
20000574:	2300      	movs	r3, #0
20000576:	60bb      	str	r3, [r7, #8]
20000578:	e009      	b.n	2000058e <DisplayCopy+0xce>
2000057a:	68bb      	ldr	r3, [r7, #8]
2000057c:	687a      	ldr	r2, [r7, #4]
2000057e:	4413      	add	r3, r2
20000580:	781b      	ldrb	r3, [r3, #0]
20000582:	4618      	mov	r0, r3
20000584:	f7ff ff48 	bl	20000418 <DisplayWriteData>
20000588:	68bb      	ldr	r3, [r7, #8]
2000058a:	3301      	adds	r3, #1
2000058c:	60bb      	str	r3, [r7, #8]
2000058e:	68bb      	ldr	r3, [r7, #8]
20000590:	2b3f      	cmp	r3, #63	; 0x3f
20000592:	ddf2      	ble.n	2000057a <DisplayCopy+0xba>
20000594:	687b      	ldr	r3, [r7, #4]
20000596:	3340      	adds	r3, #64	; 0x40
20000598:	607b      	str	r3, [r7, #4]
2000059a:	68fb      	ldr	r3, [r7, #12]
2000059c:	3301      	adds	r3, #1
2000059e:	60fb      	str	r3, [r7, #12]
200005a0:	68fb      	ldr	r3, [r7, #12]
200005a2:	2b07      	cmp	r3, #7
200005a4:	ddb1      	ble.n	2000050a <DisplayCopy+0x4a>
200005a6:	4a15      	ldr	r2, [pc, #84]	; (200005fc <DisplayCopy+0x13c>)
200005a8:	4b14      	ldr	r3, [pc, #80]	; (200005fc <DisplayCopy+0x13c>)
200005aa:	681b      	ldr	r3, [r3, #0]
200005ac:	f023 0301 	bic.w	r3, r3, #1
200005b0:	6013      	str	r3, [r2, #0]
200005b2:	4a11      	ldr	r2, [pc, #68]	; (200005f8 <DisplayCopy+0x138>)
200005b4:	4b10      	ldr	r3, [pc, #64]	; (200005f8 <DisplayCopy+0x138>)
200005b6:	681b      	ldr	r3, [r3, #0]
200005b8:	f423 7380 	bic.w	r3, r3, #256	; 0x100
200005bc:	6013      	str	r3, [r2, #0]
200005be:	4a0e      	ldr	r2, [pc, #56]	; (200005f8 <DisplayCopy+0x138>)
200005c0:	4b0d      	ldr	r3, [pc, #52]	; (200005f8 <DisplayCopy+0x138>)
200005c2:	681b      	ldr	r3, [r3, #0]
200005c4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
200005c8:	6013      	str	r3, [r2, #0]
200005ca:	203f      	movs	r0, #63	; 0x3f
200005cc:	f7ff fdb4 	bl	20000138 <write_bus>
200005d0:	4a09      	ldr	r2, [pc, #36]	; (200005f8 <DisplayCopy+0x138>)
200005d2:	4b09      	ldr	r3, [pc, #36]	; (200005f8 <DisplayCopy+0x138>)
200005d4:	681b      	ldr	r3, [r3, #0]
200005d6:	f023 0380 	bic.w	r3, r3, #128	; 0x80
200005da:	6013      	str	r3, [r2, #0]
200005dc:	4a06      	ldr	r2, [pc, #24]	; (200005f8 <DisplayCopy+0x138>)
200005de:	4b06      	ldr	r3, [pc, #24]	; (200005f8 <DisplayCopy+0x138>)
200005e0:	681b      	ldr	r3, [r3, #0]
200005e2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
200005e6:	6013      	str	r3, [r2, #0]
200005e8:	203f      	movs	r0, #63	; 0x3f
200005ea:	f7ff fda5 	bl	20000138 <write_bus>
200005ee:	bf00      	nop
200005f0:	3710      	adds	r7, #16
200005f2:	46bd      	mov	sp, r7
200005f4:	bd80      	pop	{r7, pc}
200005f6:	bf00      	nop
200005f8:	400b0000 	.word	0x400b0000
200005fc:	400b8000 	.word	0x400b8000

20000600 <DisplaySetPixel>:
20000600:	b480      	push	{r7}
20000602:	b083      	sub	sp, #12
20000604:	af00      	add	r7, sp, #0
20000606:	4603      	mov	r3, r0
20000608:	71fb      	strb	r3, [r7, #7]
2000060a:	460b      	mov	r3, r1
2000060c:	71bb      	strb	r3, [r7, #6]
2000060e:	4613      	mov	r3, r2
20000610:	717b      	strb	r3, [r7, #5]
20000612:	bf00      	nop
20000614:	370c      	adds	r7, #12
20000616:	46bd      	mov	sp, r7
20000618:	bc80      	pop	{r7}
2000061a:	4770      	bx	lr
