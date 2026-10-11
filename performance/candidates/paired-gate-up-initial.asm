
E:\poolside\build\ggml\src\CMakeFiles\ggml-cpu.dir\ggml-cpu\moe-iq.cpp.obj:     file format pe-bigobj-x86-64


Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	55                   	push   %rbp
   8:	56                   	push   %rsi
   9:	57                   	push   %rdi
   a:	41 54                	push   %r12
   c:	41 55                	push   %r13
   e:	41 56                	push   %r14
  10:	41 57                	push   %r15
  12:	48 81 ec 70 01 00 00 	sub    $0x170,%rsp
  19:	c5 f8 29 70 b8       	vmovaps %xmm6,-0x48(%rax)
  1e:	c5 f8 29 78 a8       	vmovaps %xmm7,-0x58(%rax)
  23:	c5 78 29 40 98       	vmovaps %xmm8,-0x68(%rax)
  28:	c5 78 29 48 88       	vmovaps %xmm9,-0x78(%rax)
  2d:	c5 78 29 90 78 ff ff 	vmovaps %xmm10,-0x88(%rax)
  34:	ff 
  35:	c5 78 29 98 68 ff ff 	vmovaps %xmm11,-0x98(%rax)
  3c:	ff 
  3d:	c5 78 29 a0 58 ff ff 	vmovaps %xmm12,-0xa8(%rax)
  44:	ff 
  45:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  4a:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  4e:	48 8b 9c 24 d8 01 00 	mov    0x1d8(%rsp),%rbx
  55:	00 
  56:	4d 8b f1             	mov    %r9,%r14
  59:	4c 63 9c 24 e8 01 00 	movslq 0x1e8(%rsp),%r11
  60:	00 
  61:	48 8b fa             	mov    %rdx,%rdi
  64:	48 8b 84 24 e0 01 00 	mov    0x1e0(%rsp),%rax
  6b:	00 
  6c:	44 8b 94 24 f0 01 00 	mov    0x1f0(%rsp),%r10d
  73:	00 
  74:	48 8b 1b             	mov    (%rbx),%rbx
  77:	4c 89 4d 68          	mov    %r9,0x68(%rbp)
  7b:	4d 8b c8             	mov    %r8,%r9
  7e:	48 89 5d 60          	mov    %rbx,0x60(%rbp)
  82:	48 89 5d 70          	mov    %rbx,0x70(%rbp)
  86:	4c 89 85 80 00 00 00 	mov    %r8,0x80(%rbp)
  8d:	48 89 45 78          	mov    %rax,0x78(%rbp)
  91:	45 3b da             	cmp    %r10d,%r11d
  94:	0f 8d 76 03 00 00    	jge    410 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x410>
  9a:	8b 84 24 d0 01 00 00 	mov    0x1d0(%rsp),%eax
  a1:	49 8b f3             	mov    %r11,%rsi
  a4:	c5 7a 10 1d 00 00 00 	vmovss 0x0(%rip),%xmm11        # ac <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xac>
  ab:	00 
  ac:	c5 7a 6f 05 00 00 00 	vmovdqu 0x0(%rip),%xmm8        # b4 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xb4>
  b3:	00 
  b4:	c5 7a 6f 0d 00 00 00 	vmovdqu 0x0(%rip),%xmm9        # bc <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xbc>
  bb:	00 
  bc:	c5 7a 10 25 00 00 00 	vmovss 0x0(%rip),%xmm12        # c4 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc4>
  c3:	00 
  c4:	99                   	cltd
  c5:	0f b6 d2             	movzbl %dl,%edx
  c8:	03 c2                	add    %edx,%eax
  ca:	4a 8d 14 9d 00 00 00 	lea    0x0(,%r11,4),%rdx
  d1:	00 
  d2:	c1 f8 08             	sar    $0x8,%eax
  d5:	4c 63 c0             	movslq %eax,%r8
  d8:	89 45 0c             	mov    %eax,0xc(%rbp)
  db:	49 8b c3             	mov    %r11,%rax
  de:	49 0f af c1          	imul   %r9,%rax
  e2:	49 0f af f6          	imul   %r14,%rsi
  e6:	48 03 c1             	add    %rcx,%rax
  e9:	4c 89 85 88 00 00 00 	mov    %r8,0x88(%rbp)
  f0:	48 89 55 48          	mov    %rdx,0x48(%rbp)
  f4:	48 89 45 40          	mov    %rax,0x40(%rbp)
  f8:	48 03 f7             	add    %rdi,%rsi
  fb:	45 2b d3             	sub    %r11d,%r10d
  fe:	48 89 75 38          	mov    %rsi,0x38(%rbp)
 102:	41 8b ca             	mov    %r10d,%ecx
 105:	48 89 4d 50          	mov    %rcx,0x50(%rbp)
 109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 110:	c5 c0 57 ff          	vxorps %xmm7,%xmm7,%xmm7
 114:	c5 fc 11 bd a0 00 00 	vmovups %ymm7,0xa0(%rbp)
 11b:	00 
 11c:	4d 85 c0             	test   %r8,%r8
 11f:	0f 8e 6b 02 00 00    	jle    390 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x390>
 125:	c4 41 29 ef d2       	vpxor  %xmm10,%xmm10,%xmm10
 12a:	48 89 5d 28          	mov    %rbx,0x28(%rbp)
 12e:	48 8b d0             	mov    %rax,%rdx
 131:	48 89 45 00          	mov    %rax,0x0(%rbp)
 135:	4c 89 45 30          	mov    %r8,0x30(%rbp)
 139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 140:	c5 fe 6f 3d 00 00 00 	vmovdqu 0x0(%rip),%ymm7        # 148 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x148>
 147:	00 
 148:	4c 8d 62 4a          	lea    0x4a(%rdx),%r12
 14c:	48 c7 45 20 04 00 00 	movq   $0x4,0x20(%rbp)
 153:	00 
 154:	4d 8d 6c 24 20       	lea    0x20(%r12),%r13
 159:	33                   	.byte 0x33

000000000000015a <$LN10>:
 15a:	db 4c 89 6d          	fisttpl 0x6d(%rcx,%rcx,4)
 15e:	18 45 33             	sbb    %al,0x33(%rbp)
 161:	ff c4                	inc    %esp
 163:	c1 7e 6f f2          	sarl   $0xf2,0x6f(%rsi)
 167:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 16e:	00 00 
 170:	41 0f b6 4d 00       	movzbl 0x0(%r13),%ecx
 175:	48 c7 45 58 00 00 00 	movq   $0x0,0x58(%rbp)
 17c:	00 
 17d:	4c 8b 6d 58          	mov    0x58(%rbp),%r13
 181:	89 4d 08             	mov    %ecx,0x8(%rbp)
 184:	0f 1f 40 00          	nopl   0x0(%rax)
 188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 18f:	00 
 190:	4e 8d 34 ea          	lea    (%rdx,%r13,8),%r14
 194:	48 8d 04 13          	lea    (%rbx,%rdx,1),%rax
 198:	42 0f b6 4c 28 42    	movzbl 0x42(%rax,%r13,1),%ecx
 19e:	43 0f b6 44 3e 02    	movzbl 0x2(%r14,%r15,1),%eax
 1a4:	8b f1                	mov    %ecx,%esi
 1a6:	8b f9                	mov    %ecx,%edi
 1a8:	44 8b d9             	mov    %ecx,%r11d
 1ab:	44 8b d1             	mov    %ecx,%r10d
 1ae:	44 8b c9             	mov    %ecx,%r9d
 1b1:	44 8b c1             	mov    %ecx,%r8d
 1b4:	8b d1                	mov    %ecx,%edx
 1b6:	81 e1 80 00 00 00    	and    $0x80,%ecx
 1bc:	83 e2 40             	and    $0x40,%edx
 1bf:	03 c9                	add    %ecx,%ecx
 1c1:	c1 e2 02             	shl    $0x2,%edx
 1c4:	41 83 e0 20          	and    $0x20,%r8d
 1c8:	83 e6 01             	and    $0x1,%esi
 1cb:	83 e7 02             	and    $0x2,%edi
 1ce:	41 c1 e0 03          	shl    $0x3,%r8d
 1d2:	41 83 e3 04          	and    $0x4,%r11d
 1d6:	c1 e6 08             	shl    $0x8,%esi
 1d9:	48 0b f0             	or     %rax,%rsi
 1dc:	c1 e7 07             	shl    $0x7,%edi
 1df:	43 0f b6 44 3e 03    	movzbl 0x3(%r14,%r15,1),%eax
 1e5:	41 83 e2 08          	and    $0x8,%r10d
 1e9:	48 0b f8             	or     %rax,%rdi
 1ec:	41 c1 e3 06          	shl    $0x6,%r11d
 1f0:	43 0f b6 44 3e 04    	movzbl 0x4(%r14,%r15,1),%eax
 1f6:	41 83 e1 10          	and    $0x10,%r9d
 1fa:	4c 0b d8             	or     %rax,%r11
 1fd:	41 c1 e2 05          	shl    $0x5,%r10d
 201:	43 0f b6 44 3e 05    	movzbl 0x5(%r14,%r15,1),%eax
 207:	4c 0b d0             	or     %rax,%r10
 20a:	41 c1 e1 04          	shl    $0x4,%r9d
 20e:	43 0f b6 44 3e 06    	movzbl 0x6(%r14,%r15,1),%eax
 214:	4c 0b c8             	or     %rax,%r9
 217:	43                   	rex.XB
 218:	0f                   	.byte 0xf
 219:	b6 44                	mov    $0x44,%dh

000000000000021b <$LN41>:
 21b:	3e 07                	ds (bad)
 21d:	4c 0b c0             	or     %rax,%r8
 220:	43 0f b6 44 3e 08    	movzbl 0x8(%r14,%r15,1),%eax
 226:	48 0b d0             	or     %rax,%rdx
 229:	43 0f b6 44 3e 09    	movzbl 0x9(%r14,%r15,1),%eax
 22f:	48 0b c8             	or     %rax,%rcx
 232:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 239 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x239>
 239:	c5 f9 6e 0c b0       	vmovd  (%rax,%rsi,4),%xmm1
 23e:	c4 e3 71 22 0c b8 01 	vpinsrd $0x1,(%rax,%rdi,4),%xmm1,%xmm1
 245:	c4 a3 71 22 0c 98 02 	vpinsrd $0x2,(%rax,%r11,4),%xmm1,%xmm1
 24c:	c4 a3 71 22 0c 90 03 	vpinsrd $0x3,(%rax,%r10,4),%xmm1,%xmm1
 253:	c4 a1 79 6e 04 88    	vmovd  (%rax,%r9,4),%xmm0
 259:	c4 a3 79 22 04 80 01 	vpinsrd $0x1,(%rax,%r8,4),%xmm0,%xmm0
 260:	c4 e3 79 22 04 90 02 	vpinsrd $0x2,(%rax,%rdx,4),%xmm0,%xmm0
 267:	c4 e3 79 22 04 88 03 	vpinsrd $0x3,(%rax,%rcx,4),%xmm0,%xmm0
 26e:	49 8b 04 24          	mov    (%r12),%rax
 272:	8b 55 08             	mov    0x8(%rbp),%edx
 275:	48 8b c8             	mov    %rax,%rcx
 278:	4c 8b 45 28          	mov    0x28(%rbp),%r8
 27c:	c4 e3 75 18 e8 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm5
 282:	48 c1 e9 20          	shr    $0x20,%rcx
 286:	4d 85 ed             	test   %r13,%r13
 289:	48 0f 45 c1          	cmovne %rcx,%rax
 28d:	83 e2 0f             	and    $0xf,%edx
 290:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 294:	8b 45 08             	mov    0x8(%rbp),%eax
 297:	4a 8d 0c 2b          	lea    (%rbx,%r13,1),%rcx
 29b:	c1 e8 04             	shr    $0x4,%eax
 29e:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 2a3:	c4 c2 79 00 c8       	vpshufb %xmm8,%xmm0,%xmm1
 2a8:	4d 85 ed             	test   %r13,%r13
 2ab:	c4 c2 79 00 c1       	vpshufb %xmm9,%xmm0,%xmm0
 2b0:	0f 45 d0             	cmovne %eax,%edx
 2b3:	48 c1 e1 05          	shl    $0x5,%rcx
 2b7:	c4                   	.byte 0xc4

00000000000002b8 <$LN99>:
 2b8:	e3 7d                	jrcxz  337 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x337>
 2ba:	38 c9                	cmp    %cl,%cl
 2bc:	01 c5                	add    %eax,%ebp
 2be:	f5                   	cmc
 2bf:	db d7                	fcmovnbe %st(7),%st
 2c1:	c5 ed 74 df          	vpcmpeqb %ymm7,%ymm2,%ymm3
 2c5:	c5 e5 eb 25 00 00 00 	vpor   0x0(%rip),%ymm3,%ymm4        # 2cd <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2cd>
 2cc:	00 
 2cd:	c4 c1 7e 6f 44 08 04 	vmovdqu 0x4(%r8,%rcx,1),%ymm0
 2d4:	66                   	data16
 2d5:	8d                   	.byte 0x8d
 2d6:	04 55                	add    $0x55,%al
 2d8:	01 00                	add    %eax,(%rax)
	...

00000000000002db <$LN30>:
 2db:	00 98 c5 f9 6e d8    	add    %bl,-0x2791063b(%rax)
 2e1:	c4 e2 7d 08 cc       	vpsignb %ymm4,%ymm0,%ymm1
 2e6:	c4 e2 7d 79 db       	vpbroadcastw %xmm3,%ymm3
 2eb:	c4 e2 55 04 d1       	vpmaddubsw %ymm1,%ymm5,%ymm2
 2f0:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 2f4:	49                   	rex.WB
 2f5:	ff                   	.byte 0xff

00000000000002f6 <$LN44>:
 2f6:	c5 c5 ed f5          	vpaddsw %ymm5,%ymm7,%ymm6
 2fa:	db c5                	fcmovnb %st(5),%st
 2fc:	e5 fe                	in     $0xfe,%eax
 2fe:	f6 49 83 fd          	testb  $0xfd,-0x7d(%rcx)
 302:	02 0f                	add    (%rdi),%cl
 304:	8c 87 fe ff ff 4c    	mov    %es,0x4cfffffe(%rdi)
 30a:	8b 6d 18             	mov    0x18(%rbp),%ebp
 30d:	49 83 c4 08          	add    $0x8,%r12
 311:	49 ff c5             	inc    %r13
 314:	49 83 c7 10          	add    $0x10,%r15
 318:	48 83 c3 02          	add    $0x2,%rbx
 31c:	4c 89 6d 18          	mov    %r13,0x18(%rbp)
 320:	48 83 6d 20 01       	subq   $0x1,0x20(%rbp)
 325:	0f 85 45 fe ff ff    	jne    170 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x170>
 32b:	0f b7 02             	movzwl (%rdx),%eax
 32e:	48 83 c2 6e          	add    $0x6e,%rdx
 332:	c5 fc 10 bd a0 00 00 	vmovups 0xa0(%rbp),%ymm7
 339:	00 
 33a:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 33e:	c4 e2 79 13 c8       	vcvtph2ps %xmm0,%xmm1
 343:	c4 c1 72 59 10       	vmulss (%r8),%xmm1,%xmm2
 348:	49 81 c0 24 01 00 00 	add    $0x124,%r8
 34f:	48 89 55 00          	mov    %rdx,0x0(%rbp)
 353:	48 83 6d 30 01       	subq   $0x1,0x30(%rbp)
 358:	c4 e2 7d 18 d2       	vbroadcastss %xmm2,%ymm2
 35d:	c5 fc 5b de          	vcvtdq2ps %ymm6,%ymm3
 361:	c4 e2 6d b8 fb       	vfmadd231ps %ymm3,%ymm2,%ymm7
 366:	c5 fc 11 bd a0 00 00 	vmovups %ymm7,0xa0(%rbp)
 36d:	00 
 36e:	4c 89 45 28          	mov    %r8,0x28(%rbp)
 372:	0f 85 c8 fd ff ff    	jne    140 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x140>
 378:	48 8b 5d 60          	mov    0x60(%rbp),%rbx
 37c:	48 8b 75 38          	mov    0x38(%rbp),%rsi
 380:	4c 8b 75 68          	mov    0x68(%rbp),%r14
 384:	0f 1f 40 00          	nopl   0x0(%rax)
 388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 38f:	00 
 390:	8b 55 0c             	mov    0xc(%rbp),%edx
 393:	4c 8d 4d 10          	lea    0x10(%rbp),%r9
 397:	c4 e3 7d 19 f8 01    	vextractf128 $0x1,%ymm7,%xmm0
 39d:	c5 f8 58 c7          	vaddps %xmm7,%xmm0,%xmm0
 3a1:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3a5:	c5 f3 7c f1          	vhaddps %xmm1,%xmm1,%xmm6
 3a9:	4c 8d 45 70          	lea    0x70(%rbp),%r8
 3ad:	48 8b ce             	mov    %rsi,%rcx
 3b0:	c5 f8 77             	vzeroupper
 3b3:	e8 00 00 00 00       	call   3b8 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3b8>
 3b8:	c4 c1 48 57 c3       	vxorps %xmm11,%xmm6,%xmm0
 3bd:	e8 00 00 00 00       	call   3c2 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3c2>
 3c2:	48 8b 55 48          	mov    0x48(%rbp),%rdx
 3c6:	49 03 f6             	add    %r14,%rsi
 3c9:	48 8b 45 78          	mov    0x78(%rbp),%rax
 3cd:	4c 8b 85 88 00 00 00 	mov    0x88(%rbp),%r8
 3d4:	c4 c1 7a 58 cc       	vaddss %xmm12,%xmm0,%xmm1
 3d9:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 3dd:	48 8b 00             	mov    (%rax),%rax
 3e0:	c5 ea 59 5d 10       	vmulss 0x10(%rbp),%xmm2,%xmm3
 3e5:	48 89 75 38          	mov    %rsi,0x38(%rbp)
 3e9:	c5 fa 11 1c 02       	vmovss %xmm3,(%rdx,%rax,1)
 3ee:	48 8b 45 40          	mov    0x40(%rbp),%rax
 3f2:	48 83 c2 04          	add    $0x4,%rdx
 3f6:	48 03 85 80 00 00 00 	add    0x80(%rbp),%rax
 3fd:	48 83 6d 50 01       	subq   $0x1,0x50(%rbp)
 402:	48 89 45 40          	mov    %rax,0x40(%rbp)
 406:	48 89 55 48          	mov    %rdx,0x48(%rbp)
 40a:	0f 85 00 fd ff ff    	jne    110 <??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x110>
 410:	4c 8d 9c 24 70 01 00 	lea    0x170(%rsp),%r11
 417:	00 
 418:	49 8b 5b 40          	mov    0x40(%r11),%rbx
 41c:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 422:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 428:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 42e:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 434:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 43a:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 440:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 446:	49 8b e3             	mov    %r11,%rsp
 449:	41 5f                	pop    %r15
 44b:	41 5e                	pop    %r14
 44d:	41 5d                	pop    %r13
 44f:	41 5c                	pop    %r12
 451:	5f                   	pop    %rdi
 452:	5e                   	pop    %rsi
 453:	5d                   	pop    %rbp
 454:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  55:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  59:	4c 8b 8c 24 68 01 00 	mov    0x168(%rsp),%r9
  60:	00 
  61:	49 8b f8             	mov    %r8,%rdi
  64:	4c 63 94 24 78 01 00 	movslq 0x178(%rsp),%r10
  6b:	00 
  6c:	4c 8b 9c 24 70 01 00 	mov    0x170(%rsp),%r11
  73:	00 
  74:	4c 89 45 60          	mov    %r8,0x60(%rbp)
  78:	4c 63 84 24 80 01 00 	movslq 0x180(%rsp),%r8
  7f:	00 
  80:	4d 8b 09             	mov    (%r9),%r9
  83:	4c 89 4d 50          	mov    %r9,0x50(%rbp)
  87:	4d 3b d0             	cmp    %r8,%r10
  8a:	0f 8d e3 02 00 00    	jge    373 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x373>
  90:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
  97:	c5 7a 6f 0d 00 00 00 	vmovdqu 0x0(%rip),%xmm9        # 9f <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x9f>
  9e:	00 
  9f:	c5 7e 6f 15 00 00 00 	vmovdqu 0x0(%rip),%ymm10        # a7 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xa7>
  a6:	00 
  a7:	c5 7e 6f 05 00 00 00 	vmovdqu 0x0(%rip),%ymm8        # af <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xaf>
  ae:	00 
  af:	c5 7a 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%xmm11        # b7 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xb7>
  b6:	00 
  b7:	99                   	cltd
  b8:	0f b6 d2             	movzbl %dl,%edx
  bb:	03 c2                	add    %edx,%eax
  bd:	c1 f8 08             	sar    $0x8,%eax
  c0:	48 63 d8             	movslq %eax,%rbx
  c3:	49 8b 03             	mov    (%r11),%rax
  c6:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
  cb:	48 89 5d 58          	mov    %rbx,0x58(%rbp)
  cf:	4a 8d 14 90          	lea    (%rax,%r10,4),%rdx
  d3:	49 8b c2             	mov    %r10,%rax
  d6:	48 0f af c7          	imul   %rdi,%rax
  da:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  de:	48 03 c1             	add    %rcx,%rax
  e1:	4d 2b c2             	sub    %r10,%r8
  e4:	48 89 45 30          	mov    %rax,0x30(%rbp)
  e8:	4c 89 45 40          	mov    %r8,0x40(%rbp)
  ec:	0f 1f 40 00          	nopl   0x0(%rax)
  f0:	c4 c1 7c 10 fd       	vmovups %ymm13,%ymm7
  f5:	48 85 db             	test   %rbx,%rbx
  f8:	0f 8e 42 02 00 00    	jle    340 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x340>
  fe:	c4 41 19 ef e4       	vpxor  %xmm12,%xmm12,%xmm12
 103:	4c 89 4d 20          	mov    %r9,0x20(%rbp)
 107:	48 8b d0             	mov    %rax,%rdx
 10a:	48 89 45 00          	mov    %rax,0x0(%rbp)
 10e:	48 89 5d 28          	mov    %rbx,0x28(%rbp)
 112:	4c 8d 62 4a          	lea    0x4a(%rdx),%r12
 116:	48 c7 45 18 04 00 00 	movq   $0x4,0x18(%rbp)
 11d:	00 
 11e:	4d 8d 6c 24 20       	lea    0x20(%r12),%r13
 123:	45 33 c9             	xor    %r9d,%r9d
 126:	4c 89 6d 10          	mov    %r13,0x10(%rbp)
 12a:	45 33 ff             	xor    %r15d,%r15d
 12d:	c4 c1 7e 6f f4       	vmovdqu %ymm12,%ymm6
 132:	41 0f b6 4d 00       	movzbl 0x0(%r13),%ecx
 137:	48 c7 45 48 00 00 00 	movq   $0x0,0x48(%rbp)
 13e:	00 
 13f:	4c 8b 6d 48          	mov    0x48(%rbp),%r13
 143:	89 4d 08             	mov    %ecx,0x8(%rbp)
 146:	66 66 0f 1f 84 00 00 	data16 nopw 0x0(%rax,%rax,1)
 14d:	00 00 00 
 150:	4e 8d 34 ea          	lea    (%rdx,%r13,8),%r14
 154:	49 8d 04 11          	lea    (%r9,%rdx,1),%rax
 158:	42                   	rex.X
 159:	0f                   	.byte 0xf

000000000000015a <$LN10>:
 15a:	b6 4c                	mov    $0x4c,%dh
 15c:	28 42 43             	sub    %al,0x43(%rdx)
 15f:	0f b6 44 3e 02       	movzbl 0x2(%rsi,%rdi,1),%eax
 164:	8b f1                	mov    %ecx,%esi
 166:	8b f9                	mov    %ecx,%edi
 168:	8b d9                	mov    %ecx,%ebx
 16a:	44 8b d9             	mov    %ecx,%r11d
 16d:	44 8b d1             	mov    %ecx,%r10d
 170:	44 8b c1             	mov    %ecx,%r8d
 173:	8b d1                	mov    %ecx,%edx
 175:	81 e1 80 00 00 00    	and    $0x80,%ecx
 17b:	83 e2 40             	and    $0x40,%edx
 17e:	03 c9                	add    %ecx,%ecx
 180:	c1 e2 02             	shl    $0x2,%edx
 183:	41 83 e0 20          	and    $0x20,%r8d
 187:	83 e6 01             	and    $0x1,%esi
 18a:	83 e7 02             	and    $0x2,%edi
 18d:	41 c1 e0 03          	shl    $0x3,%r8d
 191:	83 e3 04             	and    $0x4,%ebx
 194:	c1 e6 08             	shl    $0x8,%esi
 197:	48 0b f0             	or     %rax,%rsi
 19a:	c1 e7 07             	shl    $0x7,%edi
 19d:	43 0f b6 44 3e 03    	movzbl 0x3(%r14,%r15,1),%eax
 1a3:	41 83 e3 08          	and    $0x8,%r11d
 1a7:	48 0b f8             	or     %rax,%rdi
 1aa:	c1 e3 06             	shl    $0x6,%ebx
 1ad:	43 0f b6 44 3e 04    	movzbl 0x4(%r14,%r15,1),%eax
 1b3:	41 83 e2 10          	and    $0x10,%r10d
 1b7:	48 0b d8             	or     %rax,%rbx
 1ba:	41 c1 e3 05          	shl    $0x5,%r11d
 1be:	43 0f b6 44 3e 05    	movzbl 0x5(%r14,%r15,1),%eax
 1c4:	4c 0b d8             	or     %rax,%r11
 1c7:	41 c1 e2 04          	shl    $0x4,%r10d
 1cb:	43 0f b6 44 3e 06    	movzbl 0x6(%r14,%r15,1),%eax
 1d1:	4c 0b d0             	or     %rax,%r10
 1d4:	43 0f b6 44 3e 07    	movzbl 0x7(%r14,%r15,1),%eax
 1da:	4c 0b c0             	or     %rax,%r8
 1dd:	43 0f b6 44 3e 08    	movzbl 0x8(%r14,%r15,1),%eax
 1e3:	48 0b d0             	or     %rax,%rdx
 1e6:	43 0f b6 44 3e 09    	movzbl 0x9(%r14,%r15,1),%eax
 1ec:	48 0b c8             	or     %rax,%rcx
 1ef:	4c 8d 35 00 00 00 00 	lea    0x0(%rip),%r14        # 1f6 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1f6>
 1f6:	c4 81 79 6e 04 96    	vmovd  (%r14,%r10,4),%xmm0
 1fc:	c4 83 79 22 04 86 01 	vpinsrd $0x1,(%r14,%r8,4),%xmm0,%xmm0
 203:	c4 c3 79 22 04 96 02 	vpinsrd $0x2,(%r14,%rdx,4),%xmm0,%xmm0
 20a:	c4 c3 79 22 04 8e 03 	vpinsrd $0x3,(%r14,%rcx,4),%xmm0,%xmm0
 211:	c4 c1 79 6e 0c b6    	vmovd  (%r14,%rsi,4),%xmm1
 217:	c4                   	.byte 0xc4
 218:	c3                   	ret
 219:	71 22                	jno    23d <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x23d>

000000000000021b <$LN41>:
 21b:	0c be                	or     $0xbe,%al
 21d:	01 c4                	add    %eax,%esp
 21f:	c3                   	ret
 220:	71 22                	jno    244 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x244>
 222:	0c 9e                	or     $0x9e,%al
 224:	02 c4                	add    %ah,%al
 226:	83 71 22 0c          	xorl   $0xc,0x22(%rcx)
 22a:	9e                   	sahf
 22b:	03 49 8b             	add    -0x75(%rcx),%ecx
 22e:	04 24                	add    $0x24,%al
 230:	8b 55 08             	mov    0x8(%rbp),%edx
 233:	48 8b c8             	mov    %rax,%rcx
 236:	4c 8b 45 20          	mov    0x20(%rbp),%r8
 23a:	c4 e3 75 18 e8 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm5
 240:	48 c1 e9 20          	shr    $0x20,%rcx
 244:	4d 85 ed             	test   %r13,%r13
 247:	48 0f 45 c1          	cmovne %rcx,%rax
 24b:	83 e2 0f             	and    $0xf,%edx
 24e:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 252:	8b 45 08             	mov    0x8(%rbp),%eax
 255:	4b 8d 0c 29          	lea    (%r9,%r13,1),%rcx
 259:	c1 e8 04             	shr    $0x4,%eax
 25c:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 261:	c4 c2 79 00 c9       	vpshufb %xmm9,%xmm0,%xmm1
 266:	4d 85 ed             	test   %r13,%r13
 269:	c4 c2 79 00 c3       	vpshufb %xmm11,%xmm0,%xmm0
 26e:	0f 45 d0             	cmovne %eax,%edx
 271:	48 c1 e1 05          	shl    $0x5,%rcx
 275:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 27b:	c4 c1 75 db d0       	vpand  %ymm8,%ymm1,%ymm2
 280:	c4 c1 6d 74 d8       	vpcmpeqb %ymm8,%ymm2,%ymm3
 285:	c4 c1 7e 6f 44 08 04 	vmovdqu 0x4(%r8,%rcx,1),%ymm0
 28c:	c4 c1 65 eb e2       	vpor   %ymm10,%ymm3,%ymm4
 291:	66 8d 04 55 01 00 00 	lea    0x1(,%rdx,2),%ax
 298:	00 
 299:	98                   	cwtl
 29a:	c5 f9 6e d8          	vmovd  %eax,%xmm3
 29e:	c4 e2 7d 08 cc       	vpsignb %ymm4,%ymm0,%ymm1
 2a3:	c4 e2 7d 79 db       	vpbroadcastw %xmm3,%ymm3
 2a8:	c4 e2 55 04 d1       	vpmaddubsw %ymm1,%ymm5,%ymm2
 2ad:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 2b1:	49 ff c5             	inc    %r13
 2b4:	c5 ed f5 db          	vpmaddwd %ymm3,%ymm2,%ymm3

00000000000002b8 <$LN99>:
 2b8:	c5 e5 fe f6          	vpaddd %ymm6,%ymm3,%ymm6
 2bc:	49 83 fd 02          	cmp    $0x2,%r13
 2c0:	0f 8c 8a fe ff ff    	jl     150 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x150>
 2c6:	4c 8b 6d 10          	mov    0x10(%rbp),%r13
 2ca:	49 83 c4 08          	add    $0x8,%r12
 2ce:	49 ff c5             	inc    %r13
 2d1:	49 83 c7 10          	add    $0x10,%r15
 2d5:	49 83 c1 02          	add    $0x2,%r9
 2d9:	4c                   	rex.WR
 2da:	89                   	.byte 0x89

00000000000002db <$LN30>:
 2db:	6d                   	insl   (%dx),(%rdi)
 2dc:	10 48 83             	adc    %cl,-0x7d(%rax)
 2df:	6d                   	insl   (%dx),(%rdi)
 2e0:	18 01                	sbb    %al,(%rcx)
 2e2:	0f 85 4a fe ff ff    	jne    132 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x132>
 2e8:	0f b7 02             	movzwl (%rdx),%eax
 2eb:	48 83 c2 6e          	add    $0x6e,%rdx
 2ef:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2f3:	c4                   	.byte 0xc4
 2f4:	e2 79                	loop   36f <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x36f>

00000000000002f6 <$LN44>:
 2f6:	13 c8                	adc    %eax,%ecx
 2f8:	c4 c1 72 59 10       	vmulss (%r8),%xmm1,%xmm2
 2fd:	49 81 c0 24 01 00 00 	add    $0x124,%r8
 304:	48 89 55 00          	mov    %rdx,0x0(%rbp)
 308:	48 83 6d 28 01       	subq   $0x1,0x28(%rbp)
 30d:	c4 e2 7d 18 d2       	vbroadcastss %xmm2,%ymm2
 312:	c5 fc 5b de          	vcvtdq2ps %ymm6,%ymm3
 316:	c4 e2 6d b8 fb       	vfmadd231ps %ymm3,%ymm2,%ymm7
 31b:	4c 89 45 20          	mov    %r8,0x20(%rbp)
 31f:	0f 85 ed fd ff ff    	jne    112 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x112>
 325:	4c 8b 4d 50          	mov    0x50(%rbp),%r9
 329:	48 8b 45 30          	mov    0x30(%rbp),%rax
 32d:	48 8b 55 38          	mov    0x38(%rbp),%rdx
 331:	4c 8b 45 40          	mov    0x40(%rbp),%r8
 335:	48 8b 5d 58          	mov    0x58(%rbp),%rbx
 339:	48 8b 7d 60          	mov    0x60(%rbp),%rdi
 33d:	0f 1f 00             	nopl   (%rax)
 340:	48 03 c7             	add    %rdi,%rax
 343:	c4 e3 7d 19 f8 01    	vextractf128 $0x1,%ymm7,%xmm0
 349:	c5 f8 58 c7          	vaddps %xmm7,%xmm0,%xmm0
 34d:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 351:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 355:	c5 fa 11 12          	vmovss %xmm2,(%rdx)
 359:	48 83 c2 04          	add    $0x4,%rdx
 35d:	48 89 45 30          	mov    %rax,0x30(%rbp)
 361:	49 83 e8 01          	sub    $0x1,%r8
 365:	48 89 55 38          	mov    %rdx,0x38(%rbp)
 369:	4c 89 45 40          	mov    %r8,0x40(%rbp)
 36d:	0f 85 7d fd ff ff    	jne    f0 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xf0>
 373:	c5 f8 77             	vzeroupper
 376:	4c 8d 9c 24 10 01 00 	lea    0x110(%rsp),%r11
 37d:	00 
 37e:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 382:	49 8b 73 38          	mov    0x38(%r11),%rsi
 386:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 38a:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 390:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 396:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 39c:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 3a2:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 3a8:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 3ae:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 3b4:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 3ba:	49 8b e3             	mov    %r11,%rsp
 3bd:	41 5f                	pop    %r15
 3bf:	41 5e                	pop    %r14
 3c1:	41 5d                	pop    %r13
 3c3:	41 5c                	pop    %r12
 3c5:	5d                   	pop    %rbp
 3c6:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	40 55                	rex push %rbp
   2:	41 56                	push   %r14
   4:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
   b:	48 8b 84 24 c8 00 00 	mov    0xc8(%rsp),%rax
  12:	00 
  13:	4d 8b f0             	mov    %r8,%r14
  16:	4c 63 9c 24 d8 00 00 	movslq 0xd8(%rsp),%r11
  1d:	00 
  1e:	49 8b e9             	mov    %r9,%rbp
  21:	44 8b 94 24 e0 00 00 	mov    0xe0(%rsp),%r10d
  28:	00 
  29:	4c 8b c2             	mov    %rdx,%r8
  2c:	c5 f8 10 00          	vmovups (%rax),%xmm0
  30:	c5 f8 11 44 24 30    	vmovups %xmm0,0x30(%rsp)
  36:	45 3b da             	cmp    %r10d,%r11d
  39:	0f 8d 5b 01 00 00    	jge    19a <??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x19a>
  3f:	8b 84 24 c0 00 00 00 	mov    0xc0(%rsp),%eax
  46:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
  4d:	00 
  4e:	99                   	cltd
  4f:	48 89 b4 24 a8 00 00 	mov    %rsi,0xa8(%rsp)
  56:	00 
  57:	49 8b db             	mov    %r11,%rbx
  5a:	48 89 bc 24 b0 00 00 	mov    %rdi,0xb0(%rsp)
  61:	00 
  62:	4a 8d 34 9d 00 00 00 	lea    0x0(,%r11,4),%rsi
  69:	00 
  6a:	4c 89 a4 24 80 00 00 	mov    %r12,0x80(%rsp)
  71:	00 
  72:	49 8b fb             	mov    %r11,%rdi
  75:	4c 8b a4 24 d0 00 00 	mov    0xd0(%rsp),%r12
  7c:	00 
  7d:	4c 89 6c 24 78       	mov    %r13,0x78(%rsp)
  82:	4c 89 7c 24 70       	mov    %r15,0x70(%rsp)
  87:	48 0f af fd          	imul   %rbp,%rdi
  8b:	49 0f af de          	imul   %r14,%rbx
  8f:	c5 f8 29 74 24 60    	vmovaps %xmm6,0x60(%rsp)
  95:	c5 f8 29 7c 24 50    	vmovaps %xmm7,0x50(%rsp)
  9b:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # a3 <??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xa3>
  a2:	00 
  a3:	44 0f b6 fa          	movzbl %dl,%r15d
  a7:	49 03 f8             	add    %r8,%rdi
  aa:	44 03 f8             	add    %eax,%r15d
  ad:	41 c1 ff 08          	sar    $0x8,%r15d
  b1:	48 03 d9             	add    %rcx,%rbx
  b4:	45 2b d3             	sub    %r11d,%r10d
  b7:	c5 78 29 44 24 40    	vmovaps %xmm8,0x40(%rsp)
  bd:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # c5 <??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc5>
  c4:	00 
  c5:	45 8b ea             	mov    %r10d,%r13d
  c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  cf:	00 
  d0:	4c 8d 4c 24 20       	lea    0x20(%rsp),%r9
  d5:	41 8b d7             	mov    %r15d,%edx
  d8:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
  dd:	48 8b cb             	mov    %rbx,%rcx
  e0:	e8 00 00 00 00       	call   e5 <??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xe5>
  e5:	4c 8d 4c 24 28       	lea    0x28(%rsp),%r9
  ea:	41 8b d7             	mov    %r15d,%edx
  ed:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
  f2:	48 8b cf             	mov    %rdi,%rcx
  f5:	e8 00 00 00 00       	call   fa <??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xfa>
  fa:	c5 fa 10 74 24 20    	vmovss 0x20(%rsp),%xmm6
 100:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 104:	e8 00 00 00 00       	call   109 <??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x109>
 109:	49 8b 04 24          	mov    (%r12),%rax
 10d:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 112:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 116:	c5 ea 59 5c 24 28    	vmulss 0x28(%rsp),%xmm2,%xmm3
 11c:	c5 fa 10 74 24 24    	vmovss 0x24(%rsp),%xmm6
 122:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 126:	c5 fa 11 1c 06       	vmovss %xmm3,(%rsi,%rax,1)
 12b:	e8 00 00 00 00       	call   130 <??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x130>
 130:	49 8b 44 24 08       	mov    0x8(%r12),%rax
 135:	48 8d 76 04          	lea    0x4(%rsi),%rsi
 139:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 13e:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 142:	c5 ea 59 5c 24 2c    	vmulss 0x2c(%rsp),%xmm2,%xmm3
 148:	49 03 de             	add    %r14,%rbx
 14b:	48 03 fd             	add    %rbp,%rdi
 14e:	c5 fa 11 5c 06 fc    	vmovss %xmm3,-0x4(%rsi,%rax,1)
 154:	49 83 ed 01          	sub    $0x1,%r13
 158:	0f                   	.byte 0xf
 159:	85                   	.byte 0x85

000000000000015a <$LN10>:
 15a:	72 ff                	jb     15b <??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x15b>
 15c:	ff                   	(bad)
 15d:	ff c5                	inc    %ebp
 15f:	78 28                	js     189 <??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x189>
 161:	44 24 40             	rex.R and $0x40,%al
 164:	c5 f8 28 7c 24 50    	vmovaps 0x50(%rsp),%xmm7
 16a:	c5 f8 28 74 24 60    	vmovaps 0x60(%rsp),%xmm6
 170:	4c 8b 7c 24 70       	mov    0x70(%rsp),%r15
 175:	4c 8b 6c 24 78       	mov    0x78(%rsp),%r13
 17a:	4c 8b a4 24 80 00 00 	mov    0x80(%rsp),%r12
 181:	00 
 182:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
 189:	00 
 18a:	48 8b b4 24 a8 00 00 	mov    0xa8(%rsp),%rsi
 191:	00 
 192:	48 8b 9c 24 a0 00 00 	mov    0xa0(%rsp),%rbx
 199:	00 
 19a:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 1a1:	41 5e                	pop    %r14
 1a3:	5d                   	pop    %rbp
 1a4:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BF@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	41 56                	push   %r14
   2:	48 83 ec 50          	sub    $0x50,%rsp
   6:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
   d:	00 
   e:	4d 8b f0             	mov    %r8,%r14
  11:	4c 63 8c 24 98 00 00 	movslq 0x98(%rsp),%r9
  18:	00 
  19:	44 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%r8d
  20:	00 
  21:	c5 f8 10 00          	vmovups (%rax),%xmm0
  25:	c5 f8 11 44 24 28    	vmovups %xmm0,0x28(%rsp)
  2b:	45 3b c8             	cmp    %r8d,%r9d
  2e:	0f 8d a6 00 00 00    	jge    da <??$apply_rows@$0BF@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xda>
  34:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
  3b:	48 89 5c 24 60       	mov    %rbx,0x60(%rsp)
  40:	99                   	cltd
  41:	48 89 6c 24 68       	mov    %rbp,0x68(%rsp)
  46:	4a 8d 1c 8d 00 00 00 	lea    0x0(,%r9,4),%rbx
  4d:	00 
  4e:	48 89 74 24 70       	mov    %rsi,0x70(%rsp)
  53:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
  5a:	00 
  5b:	48 89 7c 24 48       	mov    %rdi,0x48(%rsp)
  60:	49 8b f9             	mov    %r9,%rdi
  63:	4c 89 7c 24 40       	mov    %r15,0x40(%rsp)
  68:	49 0f af fe          	imul   %r14,%rdi
  6c:	44 0f b6 fa          	movzbl %dl,%r15d
  70:	44 03 f8             	add    %eax,%r15d
  73:	48 03 f9             	add    %rcx,%rdi
  76:	41 c1 ff 08          	sar    $0x8,%r15d
  7a:	45 2b c1             	sub    %r9d,%r8d
  7d:	41 8b e8             	mov    %r8d,%ebp
  80:	4c 8d 4c 24 20       	lea    0x20(%rsp),%r9
  85:	41 8b d7             	mov    %r15d,%edx
  88:	4c 8d 44 24 28       	lea    0x28(%rsp),%r8
  8d:	48 8b cf             	mov    %rdi,%rcx
  90:	e8 00 00 00 00       	call   95 <??$apply_rows@$0BF@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x95>
  95:	48 8b 06             	mov    (%rsi),%rax
  98:	48 8d 5b 04          	lea    0x4(%rbx),%rbx
  9c:	c5 fa 10 44 24 20    	vmovss 0x20(%rsp),%xmm0
  a2:	c5 fa 10 4c 24 24    	vmovss 0x24(%rsp),%xmm1
  a8:	49 03 fe             	add    %r14,%rdi
  ab:	c5 fa 11 44 03 fc    	vmovss %xmm0,-0x4(%rbx,%rax,1)
  b1:	48 8b 46 08          	mov    0x8(%rsi),%rax
  b5:	c5 fa 11 4c 03 fc    	vmovss %xmm1,-0x4(%rbx,%rax,1)
  bb:	48 83 ed 01          	sub    $0x1,%rbp
  bf:	75 bf                	jne    80 <??$apply_rows@$0BF@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x80>
  c1:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
  c6:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
  cb:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
  d0:	48 8b 6c 24 68       	mov    0x68(%rsp),%rbp
  d5:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
  da:	48 83 c4 50          	add    $0x50,%rsp
  de:	41 5e                	pop    %r14
  e0:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	4c 8b dc             	mov    %rsp,%r11
   3:	55                   	push   %rbp
   4:	41 56                	push   %r14
   6:	41 57                	push   %r15
   8:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
   f:	4c 8b b4 24 10 01 00 	mov    0x110(%rsp),%r14
  16:	00 
  17:	49 8b e8             	mov    %r8,%rbp
  1a:	4c 8b 84 24 08 01 00 	mov    0x108(%rsp),%r8
  21:	00 
  22:	4d 8b f9             	mov    %r9,%r15
  25:	4c 8b c9             	mov    %rcx,%r9
  28:	4c 8b d2             	mov    %rdx,%r10
  2b:	8b 8c 24 20 01 00 00 	mov    0x120(%rsp),%ecx
  32:	49 8b 00             	mov    (%r8),%rax
  35:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  3a:	49 8b 40 08          	mov    0x8(%r8),%rax
  3e:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  43:	49 8b 40 10          	mov    0x10(%r8),%rax
  47:	4c 63 84 24 18 01 00 	movslq 0x118(%rsp),%r8
  4e:	00 
  4f:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  54:	44 3b c1             	cmp    %ecx,%r8d
  57:	0f 8d 63 01 00 00    	jge    1c0 <??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1c0>
  5d:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
  64:	49 89 5b e0          	mov    %rbx,-0x20(%r11)
  68:	99                   	cltd
  69:	49 89 73 d8          	mov    %rsi,-0x28(%r11)
  6d:	49 8b d8             	mov    %r8,%rbx
  70:	49 89 7b d0          	mov    %rdi,-0x30(%r11)
  74:	4a 8d 34 85 00 00 00 	lea    0x0(,%r8,4),%rsi
  7b:	00 
  7c:	4d 89 63 c8          	mov    %r12,-0x38(%r11)
  80:	49 8b f8             	mov    %r8,%rdi
  83:	4d 89 6b c0          	mov    %r13,-0x40(%r11)
  87:	49 0f af ff          	imul   %r15,%rdi
  8b:	48 0f af dd          	imul   %rbp,%rbx
  8f:	c4 c1 78 29 73 a8    	vmovaps %xmm6,-0x58(%r11)
  95:	c5 f8 29 7c 24 70    	vmovaps %xmm7,0x70(%rsp)
  9b:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # a3 <??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xa3>
  a2:	00 
  a3:	44 0f b6 e2          	movzbl %dl,%r12d
  a7:	49 03 fa             	add    %r10,%rdi
  aa:	44 03 e0             	add    %eax,%r12d
  ad:	41 c1 fc 08          	sar    $0x8,%r12d
  b1:	49 03 d9             	add    %r9,%rbx
  b4:	41 2b c8             	sub    %r8d,%ecx
  b7:	c4 41 78 29 43 88    	vmovaps %xmm8,-0x78(%r11)
  bd:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # c5 <??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc5>
  c4:	00 
  c5:	44 8b e9             	mov    %ecx,%r13d
  c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  cf:	00 
  d0:	4c 8d 4c 24 20       	lea    0x20(%rsp),%r9
  d5:	41 8b d4             	mov    %r12d,%edx
  d8:	4c 8d 44 24 40       	lea    0x40(%rsp),%r8
  dd:	48 8b cb             	mov    %rbx,%rcx
  e0:	e8 00 00 00 00       	call   e5 <??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xe5>
  e5:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
  ea:	41 8b d4             	mov    %r12d,%edx
  ed:	4c 8d 44 24 40       	lea    0x40(%rsp),%r8
  f2:	48 8b cf             	mov    %rdi,%rcx
  f5:	e8 00 00 00 00       	call   fa <??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xfa>
  fa:	c5 fa 10 74 24 20    	vmovss 0x20(%rsp),%xmm6
 100:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 104:	e8 00 00 00 00       	call   109 <??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x109>
 109:	49 8b 06             	mov    (%r14),%rax
 10c:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 111:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 115:	c5 ea 59 5c 24 30    	vmulss 0x30(%rsp),%xmm2,%xmm3
 11b:	c5 fa 10 74 24 24    	vmovss 0x24(%rsp),%xmm6
 121:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 125:	c5 fa 11 1c 06       	vmovss %xmm3,(%rsi,%rax,1)
 12a:	e8 00 00 00 00       	call   12f <??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x12f>
 12f:	49 8b 46 08          	mov    0x8(%r14),%rax
 133:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 138:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 13c:	c5 ea 59 5c 24 34    	vmulss 0x34(%rsp),%xmm2,%xmm3
 142:	c5 fa 10 74 24 28    	vmovss 0x28(%rsp),%xmm6
 148:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 14c:	c5 fa 11 1c 06       	vmovss %xmm3,(%rsi,%rax,1)
 151:	e8 00 00 00 00       	call   156 <??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x156>
 156:	49 8b 46 10          	mov    0x10(%r14),%rax

000000000000015a <$LN10>:
 15a:	48 8d 76 04          	lea    0x4(%rsi),%rsi
 15e:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 163:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 167:	c5 ea 59 5c 24 38    	vmulss 0x38(%rsp),%xmm2,%xmm3
 16d:	48 03 dd             	add    %rbp,%rbx
 170:	49 03 ff             	add    %r15,%rdi
 173:	c5 fa 11 5c 06 fc    	vmovss %xmm3,-0x4(%rsi,%rax,1)
 179:	49 83 ed 01          	sub    $0x1,%r13
 17d:	0f 85 4d ff ff ff    	jne    d0 <??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd0>
 183:	c5 78 28 44 24 60    	vmovaps 0x60(%rsp),%xmm8
 189:	c5 f8 28 7c 24 70    	vmovaps 0x70(%rsp),%xmm7
 18f:	c5 f8 28 b4 24 80 00 	vmovaps 0x80(%rsp),%xmm6
 196:	00 00 
 198:	4c 8b ac 24 98 00 00 	mov    0x98(%rsp),%r13
 19f:	00 
 1a0:	4c 8b a4 24 a0 00 00 	mov    0xa0(%rsp),%r12
 1a7:	00 
 1a8:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
 1af:	00 
 1b0:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
 1b7:	00 
 1b8:	48 8b 9c 24 b8 00 00 	mov    0xb8(%rsp),%rbx
 1bf:	00 
 1c0:	48 81 c4 c0 00 00 00 	add    $0xc0,%rsp
 1c7:	41 5f                	pop    %r15
 1c9:	41 5e                	pop    %r14
 1cb:	5d                   	pop    %rbp
 1cc:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BF@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	4c 8b dc             	mov    %rsp,%r11
   3:	56                   	push   %rsi
   4:	41 56                	push   %r14
   6:	48 83 ec 68          	sub    $0x68,%rsp
   a:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
  11:	00 
  12:	4d 8b f0             	mov    %r8,%r14
  15:	4c 63 84 24 b8 00 00 	movslq 0xb8(%rsp),%r8
  1c:	00 
  1d:	4c 8b c9             	mov    %rcx,%r9
  20:	8b 8c 24 c0 00 00 00 	mov    0xc0(%rsp),%ecx
  27:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  2e:	00 
  2f:	48 8b 02             	mov    (%rdx),%rax
  32:	49 89 43 b8          	mov    %rax,-0x48(%r11)
  36:	48 8b 42 08          	mov    0x8(%rdx),%rax
  3a:	49 89 43 c0          	mov    %rax,-0x40(%r11)
  3e:	48 8b 42 10          	mov    0x10(%rdx),%rax
  42:	49 89 43 c8          	mov    %rax,-0x38(%r11)
  46:	44 3b c1             	cmp    %ecx,%r8d
  49:	0f 8d a9 00 00 00    	jge    f8 <??$apply_rows@$0BF@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xf8>
  4f:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
  56:	49 89 5b 10          	mov    %rbx,0x10(%r11)
  5a:	99                   	cltd
  5b:	49 89 6b e8          	mov    %rbp,-0x18(%r11)
  5f:	4a 8d 1c 85 00 00 00 	lea    0x0(,%r8,4),%rbx
  66:	00 
  67:	49 89 7b e0          	mov    %rdi,-0x20(%r11)
  6b:	49 8b f8             	mov    %r8,%rdi
  6e:	4d 89 7b d8          	mov    %r15,-0x28(%r11)
  72:	49 0f af fe          	imul   %r14,%rdi
  76:	44 0f b6 fa          	movzbl %dl,%r15d
  7a:	44 03 f8             	add    %eax,%r15d
  7d:	49 03 f9             	add    %r9,%rdi
  80:	41 c1 ff 08          	sar    $0x8,%r15d
  84:	41 2b c8             	sub    %r8d,%ecx
  87:	8b e9                	mov    %ecx,%ebp
  89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  90:	4c 8d 4c 24 20       	lea    0x20(%rsp),%r9
  95:	41 8b d7             	mov    %r15d,%edx
  98:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
  9d:	48 8b cf             	mov    %rdi,%rcx
  a0:	e8 00 00 00 00       	call   a5 <??$apply_rows@$0BF@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xa5>
  a5:	48 8b 06             	mov    (%rsi),%rax
  a8:	48 8d 5b 04          	lea    0x4(%rbx),%rbx
  ac:	c5 fa 10 44 24 20    	vmovss 0x20(%rsp),%xmm0
  b2:	c5 fa 10 4c 24 24    	vmovss 0x24(%rsp),%xmm1
  b8:	49 03 fe             	add    %r14,%rdi
  bb:	c5 fa 11 44 03 fc    	vmovss %xmm0,-0x4(%rbx,%rax,1)
  c1:	48 8b 46 08          	mov    0x8(%rsi),%rax
  c5:	c5 fa 10 44 24 28    	vmovss 0x28(%rsp),%xmm0
  cb:	c5 fa 11 4c 03 fc    	vmovss %xmm1,-0x4(%rbx,%rax,1)
  d1:	48 8b 46 10          	mov    0x10(%rsi),%rax
  d5:	c5 fa 11 44 03 fc    	vmovss %xmm0,-0x4(%rbx,%rax,1)
  db:	48 83 ed 01          	sub    $0x1,%rbp
  df:	75 af                	jne    90 <??$apply_rows@$0BF@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x90>
  e1:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
  e6:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  eb:	48 8b 6c 24 60       	mov    0x60(%rsp),%rbp
  f0:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
  f7:	00 
  f8:	48 83 c4 68          	add    $0x68,%rsp
  fc:	41 5e                	pop    %r14
  fe:	5e                   	pop    %rsi
  ff:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	4c 8b dc             	mov    %rsp,%r11
   3:	55                   	push   %rbp
   4:	41 56                	push   %r14
   6:	41 57                	push   %r15
   8:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
   f:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 16 <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x16>
  16:	48 33 c4             	xor    %rsp,%rax
  19:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  1e:	48 8b 84 24 18 01 00 	mov    0x118(%rsp),%rax
  25:	00 
  26:	4d 8b f9             	mov    %r9,%r15
  29:	4c 8b b4 24 20 01 00 	mov    0x120(%rsp),%r14
  30:	00 
  31:	49 8b e8             	mov    %r8,%rbp
  34:	4c 63 84 24 28 01 00 	movslq 0x128(%rsp),%r8
  3b:	00 
  3c:	4c 8b c9             	mov    %rcx,%r9
  3f:	8b 8c 24 30 01 00 00 	mov    0x130(%rsp),%ecx
  46:	4c 8b d2             	mov    %rdx,%r10
  49:	c5 fc 10 00          	vmovups (%rax),%ymm0
  4d:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
  53:	44 3b c1             	cmp    %ecx,%r8d
  56:	0f 8d 91 01 00 00    	jge    1ed <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1ed>
  5c:	8b 84 24 10 01 00 00 	mov    0x110(%rsp),%eax
  63:	49 89 5b e0          	mov    %rbx,-0x20(%r11)
  67:	99                   	cltd
  68:	49 89 73 d8          	mov    %rsi,-0x28(%r11)
  6c:	49 8b d8             	mov    %r8,%rbx
  6f:	49 89 7b d0          	mov    %rdi,-0x30(%r11)
  73:	4a 8d 34 85 00 00 00 	lea    0x0(,%r8,4),%rsi
  7a:	00 
  7b:	4d 89 63 c8          	mov    %r12,-0x38(%r11)
  7f:	49 8b f8             	mov    %r8,%rdi
  82:	4d 89 6b c0          	mov    %r13,-0x40(%r11)
  86:	49 0f af ff          	imul   %r15,%rdi
  8a:	48 0f af dd          	imul   %rbp,%rbx
  8e:	c4 c1 78 29 73 a8    	vmovaps %xmm6,-0x58(%r11)
  94:	c4 c1 78 29 7b 98    	vmovaps %xmm7,-0x68(%r11)
  9a:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # a2 <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xa2>
  a1:	00 
  a2:	44 0f b6 e2          	movzbl %dl,%r12d
  a6:	49 03 fa             	add    %r10,%rdi
  a9:	44 03 e0             	add    %eax,%r12d
  ac:	41 c1 fc 08          	sar    $0x8,%r12d
  b0:	49 03 d9             	add    %r9,%rbx
  b3:	41 2b c8             	sub    %r8d,%ecx
  b6:	c4 41 78 29 43 88    	vmovaps %xmm8,-0x78(%r11)
  bc:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # c4 <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc4>
  c3:	00 
  c4:	44 8b e9             	mov    %ecx,%r13d
  c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  ce:	00 00 
  d0:	4c 8d 4c 24 20       	lea    0x20(%rsp),%r9
  d5:	41 8b d4             	mov    %r12d,%edx
  d8:	4c 8d 44 24 40       	lea    0x40(%rsp),%r8
  dd:	48 8b cb             	mov    %rbx,%rcx
  e0:	c5 f8 77             	vzeroupper
  e3:	e8 00 00 00 00       	call   e8 <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xe8>
  e8:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
  ed:	41 8b d4             	mov    %r12d,%edx
  f0:	4c 8d 44 24 40       	lea    0x40(%rsp),%r8
  f5:	48 8b cf             	mov    %rdi,%rcx
  f8:	e8 00 00 00 00       	call   fd <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xfd>
  fd:	c5 fa 10 74 24 20    	vmovss 0x20(%rsp),%xmm6
 103:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 107:	e8 00 00 00 00       	call   10c <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x10c>
 10c:	49 8b 06             	mov    (%r14),%rax
 10f:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 114:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 118:	c5 ea 59 5c 24 30    	vmulss 0x30(%rsp),%xmm2,%xmm3
 11e:	c5 fa 10 74 24 24    	vmovss 0x24(%rsp),%xmm6
 124:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 128:	c5 fa 11 1c 06       	vmovss %xmm3,(%rsi,%rax,1)
 12d:	e8 00 00 00 00       	call   132 <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x132>
 132:	49 8b 46 08          	mov    0x8(%r14),%rax
 136:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 13b:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 13f:	c5 ea 59 5c 24 34    	vmulss 0x34(%rsp),%xmm2,%xmm3
 145:	c5 fa 10 74 24 28    	vmovss 0x28(%rsp),%xmm6
 14b:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 14f:	c5 fa 11 1c 06       	vmovss %xmm3,(%rsi,%rax,1)
 154:	e8 00 00 00 00       	call   159 <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x159>
 159:	49                   	rex.WB

000000000000015a <$LN10>:
 15a:	8b 46 10             	mov    0x10(%rsi),%eax
 15d:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 162:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 166:	c5 ea 59 5c 24 38    	vmulss 0x38(%rsp),%xmm2,%xmm3
 16c:	c5 fa 10 74 24 2c    	vmovss 0x2c(%rsp),%xmm6
 172:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 176:	c5 fa 11 1c 06       	vmovss %xmm3,(%rsi,%rax,1)
 17b:	e8 00 00 00 00       	call   180 <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x180>
 180:	49 8b 46 18          	mov    0x18(%r14),%rax
 184:	48 8d 76 04          	lea    0x4(%rsi),%rsi
 188:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 18d:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 191:	c5 ea 59 5c 24 3c    	vmulss 0x3c(%rsp),%xmm2,%xmm3
 197:	48 03 dd             	add    %rbp,%rbx
 19a:	49 03 ff             	add    %r15,%rdi
 19d:	c5 fa 11 5c 06 fc    	vmovss %xmm3,-0x4(%rsi,%rax,1)
 1a3:	49 83 ed 01          	sub    $0x1,%r13
 1a7:	0f 85 23 ff ff ff    	jne    d0 <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd0>
 1ad:	c5 78 28 44 24 70    	vmovaps 0x70(%rsp),%xmm8
 1b3:	c5 f8 28 bc 24 80 00 	vmovaps 0x80(%rsp),%xmm7
 1ba:	00 00 
 1bc:	c5 f8 28 b4 24 90 00 	vmovaps 0x90(%rsp),%xmm6
 1c3:	00 00 
 1c5:	4c 8b ac 24 a8 00 00 	mov    0xa8(%rsp),%r13
 1cc:	00 
 1cd:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
 1d4:	00 
 1d5:	48 8b bc 24 b8 00 00 	mov    0xb8(%rsp),%rdi
 1dc:	00 
 1dd:	48 8b b4 24 c0 00 00 	mov    0xc0(%rsp),%rsi
 1e4:	00 
 1e5:	48 8b 9c 24 c8 00 00 	mov    0xc8(%rsp),%rbx
 1ec:	00 
 1ed:	c5 f8 77             	vzeroupper
 1f0:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
 1f5:	48 33 cc             	xor    %rsp,%rcx
 1f8:	e8 00 00 00 00       	call   1fd <??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1fd>
 1fd:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
 204:	41 5f                	pop    %r15
 206:	41 5e                	pop    %r14
 208:	5d                   	pop    %rbp
 209:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	4c 8b dc             	mov    %rsp,%r11
   3:	56                   	push   %rsi
   4:	41 56                	push   %r14
   6:	48 83 ec 78          	sub    $0x78,%rsp
   a:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 11 <??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x11>
  11:	48 33 c4             	xor    %rsp,%rax
  14:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  19:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
  20:	00 
  21:	4d 8b f0             	mov    %r8,%r14
  24:	4c 63 8c 24 c8 00 00 	movslq 0xc8(%rsp),%r9
  2b:	00 
  2c:	44 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%r8d
  33:	00 
  34:	48 8b b4 24 c0 00 00 	mov    0xc0(%rsp),%rsi
  3b:	00 
  3c:	c5 fc 10 00          	vmovups (%rax),%ymm0
  40:	c5 fc 11 44 24 30    	vmovups %ymm0,0x30(%rsp)
  46:	45 3b c8             	cmp    %r8d,%r9d
  49:	0f 8d bc 00 00 00    	jge    10b <??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x10b>
  4f:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
  56:	49 89 5b 10          	mov    %rbx,0x10(%r11)
  5a:	99                   	cltd
  5b:	49 89 6b e8          	mov    %rbp,-0x18(%r11)
  5f:	4a 8d 1c 8d 00 00 00 	lea    0x0(,%r9,4),%rbx
  66:	00 
  67:	49 89 7b e0          	mov    %rdi,-0x20(%r11)
  6b:	49 8b f9             	mov    %r9,%rdi
  6e:	4d 89 7b d8          	mov    %r15,-0x28(%r11)
  72:	49 0f af fe          	imul   %r14,%rdi
  76:	44 0f b6 fa          	movzbl %dl,%r15d
  7a:	44 03 f8             	add    %eax,%r15d
  7d:	48 03 f9             	add    %rcx,%rdi
  80:	41 c1 ff 08          	sar    $0x8,%r15d
  84:	45 2b c1             	sub    %r9d,%r8d
  87:	41 8b e8             	mov    %r8d,%ebp
  8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  90:	4c 8d 4c 24 20       	lea    0x20(%rsp),%r9
  95:	41 8b d7             	mov    %r15d,%edx
  98:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
  9d:	48 8b cf             	mov    %rdi,%rcx
  a0:	c5 f8 77             	vzeroupper
  a3:	e8 00 00 00 00       	call   a8 <??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xa8>
  a8:	48 8b 06             	mov    (%rsi),%rax
  ab:	48 8d 5b 04          	lea    0x4(%rbx),%rbx
  af:	c5 fa 10 44 24 20    	vmovss 0x20(%rsp),%xmm0
  b5:	c5 fa 10 4c 24 24    	vmovss 0x24(%rsp),%xmm1
  bb:	49 03 fe             	add    %r14,%rdi
  be:	c5 fa 11 44 03 fc    	vmovss %xmm0,-0x4(%rbx,%rax,1)
  c4:	48 8b 46 08          	mov    0x8(%rsi),%rax
  c8:	c5 fa 10 44 24 28    	vmovss 0x28(%rsp),%xmm0
  ce:	c5 fa 11 4c 03 fc    	vmovss %xmm1,-0x4(%rbx,%rax,1)
  d4:	48 8b 46 10          	mov    0x10(%rsi),%rax
  d8:	c5 fa 10 4c 24 2c    	vmovss 0x2c(%rsp),%xmm1
  de:	c5 fa 11 44 03 fc    	vmovss %xmm0,-0x4(%rbx,%rax,1)
  e4:	48 8b 46 18          	mov    0x18(%rsi),%rax
  e8:	c5 fa 11 4c 03 fc    	vmovss %xmm1,-0x4(%rbx,%rax,1)
  ee:	48 83 ed 01          	sub    $0x1,%rbp
  f2:	75 9c                	jne    90 <??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x90>
  f4:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
  f9:	48 8b 7c 24 68       	mov    0x68(%rsp),%rdi
  fe:	48 8b 6c 24 70       	mov    0x70(%rsp),%rbp
 103:	48 8b 9c 24 98 00 00 	mov    0x98(%rsp),%rbx
 10a:	00 
 10b:	c5 f8 77             	vzeroupper
 10e:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
 113:	48 33 cc             	xor    %rsp,%rcx
 116:	e8 00 00 00 00       	call   11b <??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x11b>
 11b:	48 83 c4 78          	add    $0x78,%rsp
 11f:	41 5e                	pop    %r14
 121:	5e                   	pop    %rsi
 122:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	55                   	push   %rbp
   8:	56                   	push   %rsi
   9:	57                   	push   %rdi
   a:	41 54                	push   %r12
   c:	41 55                	push   %r13
   e:	41 56                	push   %r14
  10:	41 57                	push   %r15
  12:	48 81 ec 70 01 00 00 	sub    $0x170,%rsp
  19:	c5 f8 29 70 b8       	vmovaps %xmm6,-0x48(%rax)
  1e:	c5 f8 29 78 a8       	vmovaps %xmm7,-0x58(%rax)
  23:	c5 78 29 40 98       	vmovaps %xmm8,-0x68(%rax)
  28:	c5 78 29 48 88       	vmovaps %xmm9,-0x78(%rax)
  2d:	c5 78 29 90 78 ff ff 	vmovaps %xmm10,-0x88(%rax)
  34:	ff 
  35:	c5 78 29 98 68 ff ff 	vmovaps %xmm11,-0x98(%rax)
  3c:	ff 
  3d:	c5 78 29 a0 58 ff ff 	vmovaps %xmm12,-0xa8(%rax)
  44:	ff 
  45:	c5 78 29 a8 48 ff ff 	vmovaps %xmm13,-0xb8(%rax)
  4c:	ff 
  4d:	c5 78 29 b0 38 ff ff 	vmovaps %xmm14,-0xc8(%rax)
  54:	ff 
  55:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  5a:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  5e:	48 8b 9c 24 d8 01 00 	mov    0x1d8(%rsp),%rbx
  65:	00 
  66:	4d 8b f9             	mov    %r9,%r15
  69:	4c 63 9c 24 e8 01 00 	movslq 0x1e8(%rsp),%r11
  70:	00 
  71:	48 8b f2             	mov    %rdx,%rsi
  74:	48 8b 84 24 e0 01 00 	mov    0x1e0(%rsp),%rax
  7b:	00 
  7c:	48 8b f9             	mov    %rcx,%rdi
  7f:	44 8b 94 24 f0 01 00 	mov    0x1f0(%rsp),%r10d
  86:	00 
  87:	48 8b 1b             	mov    (%rbx),%rbx
  8a:	4c 89 4d 50          	mov    %r9,0x50(%rbp)
  8e:	4d 8b c8             	mov    %r8,%r9
  91:	48 89 5d 48          	mov    %rbx,0x48(%rbp)
  95:	48 89 5d 58          	mov    %rbx,0x58(%rbp)
  99:	4c 89 45 68          	mov    %r8,0x68(%rbp)
  9d:	48 89 45 60          	mov    %rax,0x60(%rbp)
  a1:	45 3b da             	cmp    %r10d,%r11d
  a4:	0f 8d 11 03 00 00    	jge    3bb <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3bb>
  aa:	8b 84 24 d0 01 00 00 	mov    0x1d0(%rsp),%eax
  b1:	49 8b cb             	mov    %r11,%rcx
  b4:	c5 7a 10 2d 00 00 00 	vmovss 0x0(%rip),%xmm13        # bc <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xbc>
  bb:	00 
  bc:	c5 7a 6f 0d 00 00 00 	vmovdqu 0x0(%rip),%xmm9        # c4 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc4>
  c3:	00 
  c4:	c5 7a 6f 15 00 00 00 	vmovdqu 0x0(%rip),%xmm10        # cc <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xcc>
  cb:	00 
  cc:	c5 7a 10 25 00 00 00 	vmovss 0x0(%rip),%xmm12        # d4 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd4>
  d3:	00 
  d4:	c5 7a 10 35 00 00 00 	vmovss 0x0(%rip),%xmm14        # dc <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xdc>
  db:	00 
  dc:	99                   	cltd
  dd:	4d 8b f3             	mov    %r11,%r14
  e0:	49 0f af c9          	imul   %r9,%rcx
  e4:	4d 0f af f7          	imul   %r15,%r14
  e8:	0f b6 d2             	movzbl %dl,%edx
  eb:	48 83 c1 02          	add    $0x2,%rcx
  ef:	03 c2                	add    %edx,%eax
  f1:	48 03 cf             	add    %rdi,%rcx
  f4:	c1 f8 08             	sar    $0x8,%eax
  f7:	4a 8d 14 9d 00 00 00 	lea    0x0(,%r11,4),%rdx
  fe:	00 
  ff:	4c 63 c0             	movslq %eax,%r8
 102:	89 45 00             	mov    %eax,0x0(%rbp)
 105:	4c 03 f6             	add    %rsi,%r14
 108:	4c 89 45 70          	mov    %r8,0x70(%rbp)
 10c:	45 2b d3             	sub    %r11d,%r10d
 10f:	48 89 55 38          	mov    %rdx,0x38(%rbp)
 113:	41 8b c2             	mov    %r10d,%eax
 116:	48 89 45 40          	mov    %rax,0x40(%rbp)
 11a:	4c 89 75 28          	mov    %r14,0x28(%rbp)
 11e:	48 89 4d 30          	mov    %rcx,0x30(%rbp)
 122:	0f 1f 40 00          	nopl   0x0(%rax)
 126:	66 66 0f 1f 84 00 00 	data16 nopw 0x0(%rax,%rax,1)
 12d:	00 00 00 
 130:	c4 41 38 57 c0       	vxorps %xmm8,%xmm8,%xmm8
 135:	c5 7c 11 85 80 00 00 	vmovups %ymm8,0x80(%rbp)
 13c:	00 
 13d:	4d 85 c0             	test   %r8,%r8
 140:	0f 8e fa 01 00 00    	jle    340 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x340>
 146:	48 8b c3             	mov    %rbx,%rax
 149:	48 89 5d 18          	mov    %rbx,0x18(%rbp)
 14d:	48 8d 1d 00 00 00 00 	lea    0x0(%rip),%rbx        # 154 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x154>
 154:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
 158:	c4                   	.byte 0xc4
 159:	41                   	rex.B

000000000000015a <$LN10>:
 15a:	21 ef                	and    %ebp,%edi
 15c:	db 4c 89 45          	fisttpl 0x45(%rcx,%rcx,4)
 160:	20 c5                	and    %al,%ch
 162:	7e 6f                	jle    1d3 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1d3>
 164:	05 00 00 00 00       	add    $0x0,%eax
 169:	c4 c1 7e 6f fb       	vmovdqu %ymm11,%ymm7
 16e:	4c 8d 59 48          	lea    0x48(%rcx),%r11
 172:	48 c7 45 08 04 00 00 	movq   $0x4,0x8(%rbp)
 179:	00 
 17a:	4c 8b d1             	mov    %rcx,%r10
 17d:	48 8d 78 04          	lea    0x4(%rax),%rdi
 181:	4d 8b 6a 20          	mov    0x20(%r10),%r13
 185:	45 33 f6             	xor    %r14d,%r14d
 188:	4d 8b fb             	mov    %r11,%r15
 18b:	be 02 00 00 00       	mov    $0x2,%esi
 190:	4c 8b e7             	mov    %rdi,%r12
 193:	0f 1f 40 00          	nopl   0x0(%rax)
 197:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 19e:	00 00 
 1a0:	41 0f b6 4f f8       	movzbl -0x8(%r15),%ecx
 1a5:	4d 8d 64 24 20       	lea    0x20(%r12),%r12
 1aa:	42 0f b6 44 16 fe    	movzbl -0x2(%rsi,%r10,1),%eax
 1b0:	48 8d 76 04          	lea    0x4(%rsi),%rsi
 1b4:	44 8b c9             	mov    %ecx,%r9d
 1b7:	4d 8d 7f 01          	lea    0x1(%r15),%r15
 1bb:	44 8b c1             	mov    %ecx,%r8d
 1be:	8b d1                	mov    %ecx,%edx
 1c0:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 1c6:	83 e2 30             	and    $0x30,%edx
 1c9:	c1 e1 02             	shl    $0x2,%ecx
 1cc:	41 83 e1 03          	and    $0x3,%r9d
 1d0:	c1 e2 04             	shl    $0x4,%edx
 1d3:	41 83 e0 0c          	and    $0xc,%r8d
 1d7:	41 c1 e1 08          	shl    $0x8,%r9d
 1db:	4c 0b c8             	or     %rax,%r9
 1de:	41 c1 e0 06          	shl    $0x6,%r8d
 1e2:	42 0f b6 44 16 fb    	movzbl -0x5(%rsi,%r10,1),%eax
 1e8:	4c 0b c0             	or     %rax,%r8
 1eb:	42 0f b6 44 16 fc    	movzbl -0x4(%rsi,%r10,1),%eax
 1f1:	48 0b d0             	or     %rax,%rdx
 1f4:	42 0f b6 44 16 fd    	movzbl -0x3(%rsi,%r10,1),%eax
 1fa:	c4 a1 7a 7e 0c cb    	vmovq  (%rbx,%r9,8),%xmm1
 200:	48 0b c8             	or     %rax,%rcx
 203:	49 8b c5             	mov    %r13,%rax
 206:	c4 a3 f1 22 0c c3 01 	vpinsrq $0x1,(%rbx,%r8,8),%xmm1,%xmm1
 20d:	c5 fa 7e 04 d3       	vmovq  (%rbx,%rdx,8),%xmm0
 212:	41 0f b6 57 ff       	movzbl -0x1(%r15),%edx
 217:	c4                   	.byte 0xc4
 218:	e3 f9                	jrcxz  213 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x213>
 21a:	22                   	.byte 0x22

000000000000021b <$LN41>:
 21b:	04 cb                	add    $0xcb,%al
 21d:	01 c4                	add    %eax,%esp
 21f:	e3 75                	jrcxz  296 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x296>
 221:	18 f0                	sbb    %dh,%al
 223:	01 49 8b             	add    %ecx,-0x75(%rcx)
 226:	cd 48                	int    $0x48
 228:	c1 e9 20             	shr    $0x20,%ecx
 22b:	45 85 f6             	test   %r14d,%r14d
 22e:	48 0f 45 c1          	cmovne %rcx,%rax
 232:	41 ff c6             	inc    %r14d
 235:	c5 f9 6e d0          	vmovd  %eax,%xmm2
 239:	0f b6 c2             	movzbl %dl,%eax
 23c:	80 e2 0f             	and    $0xf,%dl
 23f:	c0 e8 04             	shr    $0x4,%al
 242:	0f b6 c8             	movzbl %al,%ecx
 245:	c4 e2 79 58 d2       	vpbroadcastd %xmm2,%xmm2
 24a:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 251:	00 
 252:	98                   	cwtl
 253:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 257:	c4 e2 79 79 c9       	vpbroadcastw %xmm1,%xmm1
 25c:	0f b6 c2             	movzbl %dl,%eax
 25f:	66 03 c0             	add    %ax,%ax
 262:	66 ff c0             	inc    %ax
 265:	98                   	cwtl
 266:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 26a:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
 26f:	c4 e3 7d 38 e9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm5
 275:	c4 c2 69 00 c2       	vpshufb %xmm10,%xmm2,%xmm0
 27a:	c4 c2 69 00 c9       	vpshufb %xmm9,%xmm2,%xmm1
 27f:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 285:	c5 f5 db 15 00 00 00 	vpand  0x0(%rip),%ymm1,%ymm2        # 28d <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x28d>
 28c:	00 
 28d:	c5 ed 74 1d 00 00 00 	vpcmpeqb 0x0(%rip),%ymm2,%ymm3        # 295 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x295>
 294:	00 
 295:	c4 c1 7e 6f 44 24 e0 	vmovdqu -0x20(%r12),%ymm0
 29c:	c4 c1 65 eb e0       	vpor   %ymm8,%ymm3,%ymm4
 2a1:	c4 e2 7d 08 cc       	vpsignb %ymm4,%ymm0,%ymm1
 2a6:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2ab:	c5 ed f5 dd          	vpmaddwd %ymm5,%ymm2,%ymm3
 2af:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 2b3:	41 83 fe 02          	cmp    $0x2,%r14d
 2b7:	0f                   	.byte 0xf

00000000000002b8 <$LN99>:
 2b8:	8c e3                	mov    %fs,%ebx
 2ba:	fe                   	(bad)
 2bb:	ff                   	(bad)
 2bc:	ff 49 83             	decl   -0x7d(%rcx)
 2bf:	c3                   	ret
 2c0:	02 49 83             	add    -0x7d(%rcx),%cl
 2c3:	c2 08 48             	ret    $0x4808
 2c6:	83 c7 40             	add    $0x40,%edi
 2c9:	48 83 6d 08 01       	subq   $0x1,0x8(%rbp)
 2ce:	0f 85 ad fe ff ff    	jne    181 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x181>
 2d4:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
 2d8:	c5                   	.byte 0xc5
 2d9:	7c 10                	jl     2eb <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2eb>

00000000000002db <$LN30>:
 2db:	85 80 00 00 00 c5    	test   %eax,-0x3b000000(%rax)
 2e1:	fc                   	cld
 2e2:	5b                   	pop    %rbx
 2e3:	d7                   	xlat   (%rbx)
 2e4:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 2e8:	48 83 c1 52          	add    $0x52,%rcx
 2ec:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2f0:	48 8b 45 18          	mov    0x18(%rbp),%rax
 2f4:	c4                   	.byte 0xc4
 2f5:	e2                   	.byte 0xe2

00000000000002f6 <$LN44>:
 2f6:	79 13                	jns    30b <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x30b>
 2f8:	c8 c4 c1 72          	enter  $0xc1c4,$0x72
 2fc:	59                   	pop    %rcx
 2fd:	cc                   	int3
 2fe:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
 302:	c5 f2 59 00          	vmulss (%rax),%xmm1,%xmm0
 306:	48 05 24 01 00 00    	add    $0x124,%rax
 30c:	48 83 6d 20 01       	subq   $0x1,0x20(%rbp)
 311:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 316:	c4 62 7d b8 c2       	vfmadd231ps %ymm2,%ymm0,%ymm8
 31b:	c5 7c 11 85 80 00 00 	vmovups %ymm8,0x80(%rbp)
 322:	00 
 323:	48 89 45 18          	mov    %rax,0x18(%rbp)
 327:	0f 85 34 fe ff ff    	jne    161 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x161>
 32d:	48 8b 5d 48          	mov    0x48(%rbp),%rbx
 331:	4c 8b 75 28          	mov    0x28(%rbp),%r14
 335:	4c 8b 7d 50          	mov    0x50(%rbp),%r15
 339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 340:	8b 55 00             	mov    0x0(%rbp),%edx
 343:	4c 8d 4d 04          	lea    0x4(%rbp),%r9
 347:	c4 63 7d 19 c0 01    	vextractf128 $0x1,%ymm8,%xmm0
 34d:	c4 c1 78 58 c0       	vaddps %xmm8,%xmm0,%xmm0
 352:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 356:	c5 f3 7c f1          	vhaddps %xmm1,%xmm1,%xmm6
 35a:	4c 8d 45 58          	lea    0x58(%rbp),%r8
 35e:	49 8b ce             	mov    %r14,%rcx
 361:	c5 f8 77             	vzeroupper
 364:	e8 00 00 00 00       	call   369 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x369>
 369:	c4 c1 48 57 c5       	vxorps %xmm13,%xmm6,%xmm0
 36e:	e8 00 00 00 00       	call   373 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x373>
 373:	48 8b 55 38          	mov    0x38(%rbp),%rdx
 377:	4d 03 f7             	add    %r15,%r14
 37a:	48 8b 4d 30          	mov    0x30(%rbp),%rcx
 37e:	48 03 4d 68          	add    0x68(%rbp),%rcx
 382:	48 8b 45 60          	mov    0x60(%rbp),%rax
 386:	4c 8b 45 70          	mov    0x70(%rbp),%r8
 38a:	c4 c1 7a 58 ce       	vaddss %xmm14,%xmm0,%xmm1
 38f:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 393:	48 8b 00             	mov    (%rax),%rax
 396:	c5 ea 59 5d 04       	vmulss 0x4(%rbp),%xmm2,%xmm3
 39b:	4c 89 75 28          	mov    %r14,0x28(%rbp)
 39f:	48 89 4d 30          	mov    %rcx,0x30(%rbp)
 3a3:	c5 fa 11 1c 02       	vmovss %xmm3,(%rdx,%rax,1)
 3a8:	48 83 c2 04          	add    $0x4,%rdx
 3ac:	48 83 6d 40 01       	subq   $0x1,0x40(%rbp)
 3b1:	48 89 55 38          	mov    %rdx,0x38(%rbp)
 3b5:	0f 85 75 fd ff ff    	jne    130 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x130>
 3bb:	4c 8d 9c 24 70 01 00 	lea    0x170(%rsp),%r11
 3c2:	00 
 3c3:	49 8b 5b 40          	mov    0x40(%r11),%rbx
 3c7:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 3cd:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 3d3:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 3d9:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 3df:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 3e5:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 3eb:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 3f1:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 3f7:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 3fe:	ff ff 
 400:	49 8b e3             	mov    %r11,%rsp
 403:	41 5f                	pop    %r15
 405:	41 5e                	pop    %r14
 407:	41 5d                	pop    %r13
 409:	41 5c                	pop    %r12
 40b:	5f                   	pop    %rdi
 40c:	5e                   	pop    %rsi
 40d:	5d                   	pop    %rbp
 40e:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 7c 24 70    	vmovaps %xmm15,0x70(%rsp)
  5e:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  63:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  67:	4c 8b 8c 24 68 01 00 	mov    0x168(%rsp),%r9
  6e:	00 
  6f:	49 8b f8             	mov    %r8,%rdi
  72:	4c 63 94 24 78 01 00 	movslq 0x178(%rsp),%r10
  79:	00 
  7a:	4c 8b 9c 24 70 01 00 	mov    0x170(%rsp),%r11
  81:	00 
  82:	4c 89 45 40          	mov    %r8,0x40(%rbp)
  86:	4c 63 84 24 80 01 00 	movslq 0x180(%rsp),%r8
  8d:	00 
  8e:	4d 8b 09             	mov    (%r9),%r9
  91:	4c 89 4d 30          	mov    %r9,0x30(%rbp)
  95:	4d 3b d0             	cmp    %r8,%r10
  98:	0f 8d 96 02 00 00    	jge    334 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x334>
  9e:	8b 84 24 60 01 00 00 	mov    0x160(%rsp),%eax
  a5:	48 83 c1 02          	add    $0x2,%rcx
  a9:	c5 7a 6f 15 00 00 00 	vmovdqu 0x0(%rip),%xmm10        # b1 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xb1>
  b0:	00 
  b1:	c5 7e 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%ymm11        # b9 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xb9>
  b8:	00 
  b9:	c5 7e 6f 05 00 00 00 	vmovdqu 0x0(%rip),%ymm8        # c1 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc1>
  c0:	00 
  c1:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # c9 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc9>
  c8:	00 
  c9:	c5 7a 10 35 00 00 00 	vmovss 0x0(%rip),%xmm14        # d1 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd1>
  d0:	00 
  d1:	99                   	cltd
  d2:	0f b6 d2             	movzbl %dl,%edx
  d5:	03 c2                	add    %edx,%eax
  d7:	c1 f8 08             	sar    $0x8,%eax
  da:	48 63 d8             	movslq %eax,%rbx
  dd:	49 8b 03             	mov    (%r11),%rax
  e0:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
  e5:	48 89 5d 38          	mov    %rbx,0x38(%rbp)
  e9:	4a 8d 14 90          	lea    (%rax,%r10,4),%rdx
  ed:	49 8b c2             	mov    %r10,%rax
  f0:	48 0f af c7          	imul   %rdi,%rax
  f4:	48 89 55 20          	mov    %rdx,0x20(%rbp)
  f8:	48 03 c8             	add    %rax,%rcx
  fb:	4d 2b c2             	sub    %r10,%r8
  fe:	48 89 4d 18          	mov    %rcx,0x18(%rbp)
 102:	4c 89 45 28          	mov    %r8,0x28(%rbp)
 106:	66 66 0f 1f 84 00 00 	data16 nopw 0x0(%rax,%rax,1)
 10d:	00 00 00 
 110:	c4 41 7c 10 cf       	vmovups %ymm15,%ymm9
 115:	48 85 db             	test   %rbx,%rbx
 118:	0f 8e e2 01 00 00    	jle    300 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x300>
 11e:	49 8b c1             	mov    %r9,%rax
 121:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
 125:	48 89 45 08          	mov    %rax,0x8(%rbp)
 129:	4c 8d 0d 00 00 00 00 	lea    0x0(%rip),%r9        # 130 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x130>
 130:	c4 41 11 ef ed       	vpxor  %xmm13,%xmm13,%xmm13
 135:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 140:	c4 c1 7e 6f fd       	vmovdqu %ymm13,%ymm7
 145:	48 8d 59 48          	lea    0x48(%rcx),%rbx
 149:	4c 8b d9             	mov    %rcx,%r11
 14c:	48 8d 78 04          	lea    0x4(%rax),%rdi
 150:	41 bd 04 00 00 00    	mov    $0x4,%r13d
 156:	66                   	data16
 157:	66                   	data16
 158:	0f                   	.byte 0xf
 159:	1f                   	(bad)

000000000000015a <$LN10>:
 15a:	84 00                	test   %al,(%rax)
 15c:	00 00                	add    %al,(%rax)
 15e:	00 00                	add    %al,(%rax)
 160:	45 33 f6             	xor    %r14d,%r14d
 163:	4c 8b fb             	mov    %rbx,%r15
 166:	be 02 00 00 00       	mov    $0x2,%esi
 16b:	4c 8b e7             	mov    %rdi,%r12
 16e:	66 90                	xchg   %ax,%ax
 170:	41 0f b6 4f f8       	movzbl -0x8(%r15),%ecx
 175:	4d 8d 64 24 20       	lea    0x20(%r12),%r12
 17a:	42 0f b6 44 1e fe    	movzbl -0x2(%rsi,%r11,1),%eax
 180:	48 8d 76 04          	lea    0x4(%rsi),%rsi
 184:	44 8b d1             	mov    %ecx,%r10d
 187:	4d 8d 7f 01          	lea    0x1(%r15),%r15
 18b:	44 8b c1             	mov    %ecx,%r8d
 18e:	8b d1                	mov    %ecx,%edx
 190:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 196:	83 e2 30             	and    $0x30,%edx
 199:	c1 e1 02             	shl    $0x2,%ecx
 19c:	41 83 e2 03          	and    $0x3,%r10d
 1a0:	c1 e2 04             	shl    $0x4,%edx
 1a3:	41 83 e0 0c          	and    $0xc,%r8d
 1a7:	41 c1 e2 08          	shl    $0x8,%r10d
 1ab:	4c 0b d0             	or     %rax,%r10
 1ae:	41 c1 e0 06          	shl    $0x6,%r8d
 1b2:	42 0f b6 44 1e fb    	movzbl -0x5(%rsi,%r11,1),%eax
 1b8:	4c 0b c0             	or     %rax,%r8
 1bb:	42 0f b6 44 1e fc    	movzbl -0x4(%rsi,%r11,1),%eax
 1c1:	48 0b d0             	or     %rax,%rdx
 1c4:	42 0f b6 44 1e fd    	movzbl -0x3(%rsi,%r11,1),%eax
 1ca:	c4 81 7a 7e 0c d1    	vmovq  (%r9,%r10,8),%xmm1
 1d0:	48 0b c8             	or     %rax,%rcx
 1d3:	49 8b 43 20          	mov    0x20(%r11),%rax
 1d7:	c4 83 f1 22 0c c1 01 	vpinsrq $0x1,(%r9,%r8,8),%xmm1,%xmm1
 1de:	c4 c1 7a 7e 04 d1    	vmovq  (%r9,%rdx,8),%xmm0
 1e4:	41 0f b6 57 ff       	movzbl -0x1(%r15),%edx
 1e9:	c4 c3 f9 22 04 c9 01 	vpinsrq $0x1,(%r9,%rcx,8),%xmm0,%xmm0
 1f0:	48 8b c8             	mov    %rax,%rcx
 1f3:	c4 e3 75 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm6
 1f9:	48 c1 e9 20          	shr    $0x20,%rcx
 1fd:	45 85 f6             	test   %r14d,%r14d
 200:	48 0f 45 c1          	cmovne %rcx,%rax
 204:	41 ff c6             	inc    %r14d
 207:	c5 f9 6e d0          	vmovd  %eax,%xmm2
 20b:	0f b6 c2             	movzbl %dl,%eax
 20e:	80 e2 0f             	and    $0xf,%dl
 211:	c0 e8 04             	shr    $0x4,%al
 214:	0f b6 c8             	movzbl %al,%ecx
 217:	c4                   	.byte 0xc4
 218:	e2 79                	loop   293 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x293>
 21a:	58                   	pop    %rax

000000000000021b <$LN41>:
 21b:	d2 66 8d             	shlb   %cl,-0x73(%rsi)
 21e:	04 4d                	add    $0x4d,%al
 220:	01 00                	add    %eax,(%rax)
 222:	00 00                	add    %al,(%rax)
 224:	98                   	cwtl
 225:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 229:	c4 e2 79 79 c9       	vpbroadcastw %xmm1,%xmm1
 22e:	0f b6 c2             	movzbl %dl,%eax
 231:	66 03 c0             	add    %ax,%ax
 234:	66 ff c0             	inc    %ax
 237:	98                   	cwtl
 238:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 23c:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
 241:	c4 e3 7d 38 e9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm5
 247:	c4 c2 69 00 c4       	vpshufb %xmm12,%xmm2,%xmm0
 24c:	c4 c2 69 00 ca       	vpshufb %xmm10,%xmm2,%xmm1
 251:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 257:	c4 c1 7e 6f 44 24 e0 	vmovdqu -0x20(%r12),%ymm0
 25e:	c4 c1 75 db d0       	vpand  %ymm8,%ymm1,%ymm2
 263:	c4 c1 6d 74 d8       	vpcmpeqb %ymm8,%ymm2,%ymm3
 268:	c4 c1 65 eb e3       	vpor   %ymm11,%ymm3,%ymm4
 26d:	c4 e2 7d 08 cc       	vpsignb %ymm4,%ymm0,%ymm1
 272:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 277:	c5 ed f5 dd          	vpmaddwd %ymm5,%ymm2,%ymm3
 27b:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 27f:	41 83 fe 02          	cmp    $0x2,%r14d
 283:	0f 8c e7 fe ff ff    	jl     170 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x170>
 289:	48 83 c3 02          	add    $0x2,%rbx
 28d:	49 83 c3 08          	add    $0x8,%r11
 291:	48 83 c7 40          	add    $0x40,%rdi
 295:	49 83 ed 01          	sub    $0x1,%r13
 299:	0f 85 c1 fe ff ff    	jne    160 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x160>
 29f:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
 2a3:	c5 fc 5b d7          	vcvtdq2ps %ymm7,%ymm2
 2a7:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 2ab:	48 83 c1 52          	add    $0x52,%rcx
 2af:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2b3:	48 8b 45 08          	mov    0x8(%rbp),%rax
 2b7:	c4                   	.byte 0xc4

00000000000002b8 <$LN99>:
 2b8:	e2 79                	loop   333 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x333>
 2ba:	13 c8                	adc    %eax,%ecx
 2bc:	c4 c1 72 59 ce       	vmulss %xmm14,%xmm1,%xmm1
 2c1:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
 2c5:	c5 f2 59 00          	vmulss (%rax),%xmm1,%xmm0
 2c9:	48 05 24 01 00 00    	add    $0x124,%rax
 2cf:	48 83 6d 10 01       	subq   $0x1,0x10(%rbp)
 2d4:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2d9:	c4                   	.byte 0xc4
 2da:	62                   	.byte 0x62

00000000000002db <$LN30>:
 2db:	7d b8                	jge    295 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x295>
 2dd:	ca 48 89             	lret   $0x8948
 2e0:	45 08 0f             	or     %r9b,(%r15)
 2e3:	85 58 fe             	test   %ebx,-0x2(%rax)
 2e6:	ff                   	(bad)
 2e7:	ff 4c 8b 4d          	decl   0x4d(%rbx,%rcx,4)
 2eb:	30 48 8b             	xor    %cl,-0x75(%rax)
 2ee:	4d 18 48 8b          	rex.WRB sbb %r9b,-0x75(%r8)
 2f2:	55                   	push   %rbp
 2f3:	20                   	.byte 0x20
 2f4:	4c                   	rex.WR
 2f5:	8b                   	.byte 0x8b

00000000000002f6 <$LN44>:
 2f6:	45 28 48 8b          	sub    %r9b,-0x75(%r8)
 2fa:	5d                   	pop    %rbp
 2fb:	38 48 8b             	cmp    %cl,-0x75(%rax)
 2fe:	7d 40                	jge    340 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x340>
 300:	48 03 cf             	add    %rdi,%rcx
 303:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
 309:	c4 c1 78 58 c1       	vaddps %xmm9,%xmm0,%xmm0
 30e:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 312:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 316:	c5 fa 11 12          	vmovss %xmm2,(%rdx)
 31a:	48 83 c2 04          	add    $0x4,%rdx
 31e:	48 89 4d 18          	mov    %rcx,0x18(%rbp)
 322:	49 83 e8 01          	sub    $0x1,%r8
 326:	48 89 55 20          	mov    %rdx,0x20(%rbp)
 32a:	4c 89 45 28          	mov    %r8,0x28(%rbp)
 32e:	0f 85 dc fd ff ff    	jne    110 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x110>
 334:	c5 f8 77             	vzeroupper
 337:	4c 8d 9c 24 10 01 00 	lea    0x110(%rsp),%r11
 33e:	00 
 33f:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 343:	49 8b 73 38          	mov    0x38(%r11),%rsi
 347:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 34b:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 351:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 357:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 35d:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 363:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 369:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 36f:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 375:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 37b:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 382:	ff ff 
 384:	c5 78 28 7c 24 70    	vmovaps 0x70(%rsp),%xmm15
 38a:	49 8b e3             	mov    %r11,%rsp
 38d:	41 5f                	pop    %r15
 38f:	41 5e                	pop    %r14
 391:	41 5d                	pop    %r13
 393:	41 5c                	pop    %r12
 395:	5d                   	pop    %rbp
 396:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	55                   	push   %rbp
   8:	56                   	push   %rsi
   9:	57                   	push   %rdi
   a:	41 54                	push   %r12
   c:	41 55                	push   %r13
   e:	41 56                	push   %r14
  10:	41 57                	push   %r15
  12:	48 81 ec a0 01 00 00 	sub    $0x1a0,%rsp
  19:	c5 f8 29 70 b8       	vmovaps %xmm6,-0x48(%rax)
  1e:	c5 f8 29 78 a8       	vmovaps %xmm7,-0x58(%rax)
  23:	c5 78 29 40 98       	vmovaps %xmm8,-0x68(%rax)
  28:	c5 78 29 48 88       	vmovaps %xmm9,-0x78(%rax)
  2d:	c5 78 29 90 78 ff ff 	vmovaps %xmm10,-0x88(%rax)
  34:	ff 
  35:	c5 78 29 98 68 ff ff 	vmovaps %xmm11,-0x98(%rax)
  3c:	ff 
  3d:	c5 78 29 a0 58 ff ff 	vmovaps %xmm12,-0xa8(%rax)
  44:	ff 
  45:	c5 78 29 a8 48 ff ff 	vmovaps %xmm13,-0xb8(%rax)
  4c:	ff 
  4d:	c5 78 29 b0 38 ff ff 	vmovaps %xmm14,-0xc8(%rax)
  54:	ff 
  55:	c5 78 29 b8 28 ff ff 	vmovaps %xmm15,-0xd8(%rax)
  5c:	ff 
  5d:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  62:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  66:	48 8b 84 24 08 02 00 	mov    0x208(%rsp),%rax
  6d:	00 
  6e:	4d 8b e1             	mov    %r9,%r12
  71:	4c 8b b4 24 10 02 00 	mov    0x210(%rsp),%r14
  78:	00 
  79:	4d 8b f8             	mov    %r8,%r15
  7c:	4c 89 8d 90 00 00 00 	mov    %r9,0x90(%rbp)
  83:	4c 8b da             	mov    %rdx,%r11
  86:	4c 63 8c 24 18 02 00 	movslq 0x218(%rsp),%r9
  8d:	00 
  8e:	4c 8b d1             	mov    %rcx,%r10
  91:	c5 f8 10 00          	vmovups (%rax),%xmm0
  95:	4c 89 85 88 00 00 00 	mov    %r8,0x88(%rbp)
  9c:	44 8b 84 24 20 02 00 	mov    0x220(%rsp),%r8d
  a3:	00 
  a4:	4c 89 b5 80 00 00 00 	mov    %r14,0x80(%rbp)
  ab:	c5 f8 11 45 58       	vmovups %xmm0,0x58(%rbp)
  b0:	45 3b c8             	cmp    %r8d,%r9d
  b3:	0f 8d ad 03 00 00    	jge    466 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x466>
  b9:	8b 84 24 00 02 00 00 	mov    0x200(%rsp),%eax
  c0:	4a 8d 3c 8d 00 00 00 	lea    0x0(,%r9,4),%rdi
  c7:	00 
  c8:	c5 7a 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm15        # d0 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd0>
  cf:	00 
  d0:	c5 7a 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%xmm11        # d8 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd8>
  d7:	00 
  d8:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # e0 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xe0>
  df:	00 
  e0:	c5 7a 10 35 00 00 00 	vmovss 0x0(%rip),%xmm14        # e8 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xe8>
  e7:	00 
  e8:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # f0 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xf0>
  ef:	00 
  f0:	99                   	cltd
  f1:	48 89 7d 48          	mov    %rdi,0x48(%rbp)
  f5:	0f b6 d2             	movzbl %dl,%edx
  f8:	49 8b c9             	mov    %r9,%rcx
  fb:	03 c2                	add    %edx,%eax
  fd:	49 8b d9             	mov    %r9,%rbx
 100:	48 8b 55 60          	mov    0x60(%rbp),%rdx
 104:	c1 f8 08             	sar    $0x8,%eax
 107:	49 0f af cf          	imul   %r15,%rcx
 10b:	49 0f af dc          	imul   %r12,%rbx
 10f:	48 83 c1 02          	add    $0x2,%rcx
 113:	48 63 f0             	movslq %eax,%rsi
 116:	49 03 ca             	add    %r10,%rcx
 119:	89 45 00             	mov    %eax,0x0(%rbp)
 11c:	48 89 75 78          	mov    %rsi,0x78(%rbp)
 120:	48 89 4d 40          	mov    %rcx,0x40(%rbp)
 124:	49 03 db             	add    %r11,%rbx
 127:	45 2b c1             	sub    %r9d,%r8d
 12a:	48 89 5d 38          	mov    %rbx,0x38(%rbp)
 12e:	41 8b c0             	mov    %r8d,%eax
 131:	4c 8b 45 58          	mov    0x58(%rbp),%r8
 135:	48 89 45 50          	mov    %rax,0x50(%rbp)
 139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 140:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
 145:	c5 7c 11 95 a0 00 00 	vmovups %ymm10,0xa0(%rbp)
 14c:	00 
 14d:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
 152:	48 85 f6             	test   %rsi,%rsi
 155:	0f                   	.byte 0xf
 156:	8e 61 02             	mov    0x2(%rcx),%fs
	...

000000000000015a <$LN10>:
 15a:	00 49 8b             	add    %cl,-0x75(%rcx)
 15d:	c0 48 89 4d          	rorb   $0x4d,-0x77(%rax)
 161:	18 48 2b             	sbb    %cl,0x2b(%rax)
 164:	c2 48 89             	ret    $0x8948
 167:	75 28                	jne    191 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x191>
 169:	48 89 45 68          	mov    %rax,0x68(%rbp)
 16d:	49 2b d0             	sub    %r8,%rdx
 170:	49 8b c0             	mov    %r8,%rax
 173:	48 89 55 70          	mov    %rdx,0x70(%rbp)
 177:	48 89 45 20          	mov    %rax,0x20(%rbp)
 17b:	c4 41 11 ef ed       	vpxor  %xmm13,%xmm13,%xmm13
 180:	c5 7e 6f 15 00 00 00 	vmovdqu 0x0(%rip),%ymm10        # 188 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x188>
 187:	00 
 188:	4c 8d 59 48          	lea    0x48(%rcx),%r11
 18c:	48 c7 45 10 04 00 00 	movq   $0x4,0x10(%rbp)
 193:	00 
 194:	48 8d 58 04          	lea    0x4(%rax),%rbx
 198:	4c 89 5d 08          	mov    %r11,0x8(%rbp)
 19c:	48 03 da             	add    %rdx,%rbx
 19f:	4c 8b d1             	mov    %rcx,%r10
 1a2:	c4 c1 7e 6f fd       	vmovdqu %ymm13,%ymm7
 1a7:	c4 41 7e 6f c5       	vmovdqu %ymm13,%ymm8
 1ac:	0f 1f 40 00          	nopl   0x0(%rax)
 1b0:	4d 8b 62 20          	mov    0x20(%r10),%r12
 1b4:	4d 8b f3             	mov    %r11,%r14
 1b7:	4c 8b 6d 68          	mov    0x68(%rbp),%r13
 1bb:	4c 8d 1d 00 00 00 00 	lea    0x0(%rip),%r11        # 1c2 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1c2>
 1c2:	33 f6                	xor    %esi,%esi
 1c4:	bf 02 00 00 00       	mov    $0x2,%edi
 1c9:	4c 8b fb             	mov    %rbx,%r15
 1cc:	0f 1f 40 00          	nopl   0x0(%rax)
 1d0:	41 0f b6 4e f8       	movzbl -0x8(%r14),%ecx
 1d5:	4d 8d 7f 20          	lea    0x20(%r15),%r15
 1d9:	42 0f b6 44 17 fe    	movzbl -0x2(%rdi,%r10,1),%eax
 1df:	48 8d 7f 04          	lea    0x4(%rdi),%rdi
 1e3:	44 8b c9             	mov    %ecx,%r9d
 1e6:	4d 8d 76 01          	lea    0x1(%r14),%r14
 1ea:	44 8b c1             	mov    %ecx,%r8d
 1ed:	8b d1                	mov    %ecx,%edx
 1ef:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 1f5:	83 e2 30             	and    $0x30,%edx
 1f8:	c1 e1 02             	shl    $0x2,%ecx
 1fb:	41 83 e1 03          	and    $0x3,%r9d
 1ff:	c1 e2 04             	shl    $0x4,%edx
 202:	41 83 e0 0c          	and    $0xc,%r8d
 206:	41 c1 e1 08          	shl    $0x8,%r9d
 20a:	4c 0b c8             	or     %rax,%r9
 20d:	41 c1 e0 06          	shl    $0x6,%r8d
 211:	42 0f b6 44 17 fb    	movzbl -0x5(%rdi,%r10,1),%eax
 217:	4c 0b c0             	or     %rax,%r8
 21a:	42                   	rex.X

000000000000021b <$LN41>:
 21b:	0f b6 44 17 fc       	movzbl -0x4(%rdi,%rdx,1),%eax
 220:	48 0b d0             	or     %rax,%rdx
 223:	42 0f b6 44 17 fd    	movzbl -0x3(%rdi,%r10,1),%eax
 229:	c4 81 7a 7e 0c cb    	vmovq  (%r11,%r9,8),%xmm1
 22f:	48 0b c8             	or     %rax,%rcx
 232:	49 8b c4             	mov    %r12,%rax
 235:	c4 83 f1 22 0c c3 01 	vpinsrq $0x1,(%r11,%r8,8),%xmm1,%xmm1
 23c:	c4 c1 7a 7e 04 d3    	vmovq  (%r11,%rdx,8),%xmm0
 242:	41 0f b6 56 ff       	movzbl -0x1(%r14),%edx
 247:	c4 c3 f9 22 04 cb 01 	vpinsrq $0x1,(%r11,%rcx,8),%xmm0,%xmm0
 24e:	c4 e3 75 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm6
 254:	49 8b cc             	mov    %r12,%rcx
 257:	48 c1 e9 20          	shr    $0x20,%rcx
 25b:	85 f6                	test   %esi,%esi
 25d:	48 0f 45 c1          	cmovne %rcx,%rax
 261:	ff c6                	inc    %esi
 263:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 267:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 26c:	c4 c2 79 00 cb       	vpshufb %xmm11,%xmm0,%xmm1
 271:	c4 c2 79 00 c4       	vpshufb %xmm12,%xmm0,%xmm0
 276:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 27c:	c5 f5 db 15 00 00 00 	vpand  0x0(%rip),%ymm1,%ymm2        # 284 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x284>
 283:	00 
 284:	c5 ed 74 1d 00 00 00 	vpcmpeqb 0x0(%rip),%ymm2,%ymm3        # 28c <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x28c>
 28b:	00 
 28c:	0f b6 c2             	movzbl %dl,%eax
 28f:	80 e2 0f             	and    $0xf,%dl
 292:	c0 e8 04             	shr    $0x4,%al
 295:	0f b6 c8             	movzbl %al,%ecx
 298:	c4 c1 65 eb ea       	vpor   %ymm10,%ymm3,%ymm5
 29d:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 2a4:	00 
 2a5:	98                   	cwtl
 2a6:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 2aa:	c4 e2 79 79 c9       	vpbroadcastw %xmm1,%xmm1
 2af:	0f b6 c2             	movzbl %dl,%eax
 2b2:	66 03 c0             	add    %ax,%ax
 2b5:	66 ff c0             	inc    %ax

00000000000002b8 <$LN99>:
 2b8:	98                   	cwtl
 2b9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2bd:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
 2c2:	c4 e3 7d 38 e1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm4
 2c8:	c4 81 7e 6f 4c 2f e0 	vmovdqu -0x20(%r15,%r13,1),%ymm1
 2cf:	c4 e2 75 08 c5       	vpsignb %ymm5,%ymm1,%ymm0
 2d4:	c4 e2 4d 04 d0       	vpmaddubsw %ymm0,%ymm6,%ymm2
 2d9:	c4                   	.byte 0xc4
 2da:	c1                   	.byte 0xc1

00000000000002db <$LN30>:
 2db:	7e 6f                	jle    34c <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x34c>
 2dd:	47 e0 c5             	rex.RXB loopne 2a5 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2a5>
 2e0:	ed                   	in     (%dx),%eax
 2e1:	f5                   	cmc
 2e2:	dc c4                	fadd   %st,%st(4)
 2e4:	e2 7d                	loop   363 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x363>
 2e6:	08 cd                	or     %cl,%ch
 2e8:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2ed:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 2f1:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2f5:	c4                   	.byte 0xc4

00000000000002f6 <$LN44>:
 2f6:	41                   	rex.B
 2f7:	65 fe c0             	gs inc %al
 2fa:	83 fe 02             	cmp    $0x2,%esi
 2fd:	0f 8c cd fe ff ff    	jl     1d0 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1d0>
 303:	4c 8b 5d 08          	mov    0x8(%rbp),%r11
 307:	49 83 c2 08          	add    $0x8,%r10
 30b:	49 83 c3 02          	add    $0x2,%r11
 30f:	48 83 c3 40          	add    $0x40,%rbx
 313:	48 83 6d 10 01       	subq   $0x1,0x10(%rbp)
 318:	4c 89 5d 08          	mov    %r11,0x8(%rbp)
 31c:	0f 85 8e fe ff ff    	jne    1b0 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1b0>
 322:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
 326:	c5 7c 10 95 a0 00 00 	vmovups 0xa0(%rbp),%ymm10
 32d:	00 
 32e:	48 8b 55 70          	mov    0x70(%rbp),%rdx
 332:	c5 fc 5b d7          	vcvtdq2ps %ymm7,%ymm2
 336:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 33a:	48 83 c1 52          	add    $0x52,%rcx
 33e:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 342:	48 8b 45 20          	mov    0x20(%rbp),%rax
 346:	c4 e2 79 13 c8       	vcvtph2ps %xmm0,%xmm1
 34b:	c4 c1 72 59 de       	vmulss %xmm14,%xmm1,%xmm3
 350:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 355:	c5 e2 59 00          	vmulss (%rax),%xmm3,%xmm0
 359:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 35e:	c4 62 7d b8 ca       	vfmadd231ps %ymm2,%ymm0,%ymm9
 363:	c5 e2 59 04 10       	vmulss (%rax,%rdx,1),%xmm3,%xmm0
 368:	48 05 24 01 00 00    	add    $0x124,%rax
 36e:	48 89 4d 18          	mov    %rcx,0x18(%rbp)
 372:	48 83 6d 28 01       	subq   $0x1,0x28(%rbp)
 377:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 37c:	c4 62 7d b8 d1       	vfmadd231ps %ymm1,%ymm0,%ymm10
 381:	c5 7c 11 95 a0 00 00 	vmovups %ymm10,0xa0(%rbp)
 388:	00 
 389:	48 89 45 20          	mov    %rax,0x20(%rbp)
 38d:	0f 85 ed fd ff ff    	jne    180 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x180>
 393:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # 39b <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x39b>
 39a:	00 
 39b:	48 8b 5d 38          	mov    0x38(%rbp),%rbx
 39f:	48 8b 7d 48          	mov    0x48(%rbp),%rdi
 3a3:	48 8b 75 78          	mov    0x78(%rbp),%rsi
 3a7:	4c 8b b5 80 00 00 00 	mov    0x80(%rbp),%r14
 3ae:	4c 8b bd 88 00 00 00 	mov    0x88(%rbp),%r15
 3b5:	4c 8b a5 90 00 00 00 	mov    0x90(%rbp),%r12
 3bc:	8b 55 00             	mov    0x0(%rbp),%edx
 3bf:	4c 8d 4d 30          	lea    0x30(%rbp),%r9
 3c3:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
 3c9:	c4 c1 78 58 c1       	vaddps %xmm9,%xmm0,%xmm0
 3ce:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3d2:	c4 63 7d 19 d0 01    	vextractf128 $0x1,%ymm10,%xmm0
 3d8:	c4 c1 78 58 c2       	vaddps %xmm10,%xmm0,%xmm0
 3dd:	c5 f3 7c f9          	vhaddps %xmm1,%xmm1,%xmm7
 3e1:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3e5:	c5 f3 7c f1          	vhaddps %xmm1,%xmm1,%xmm6
 3e9:	4c 8d 45 58          	lea    0x58(%rbp),%r8
 3ed:	48 8b cb             	mov    %rbx,%rcx
 3f0:	c5 f8 77             	vzeroupper
 3f3:	e8 00 00 00 00       	call   3f8 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3f8>
 3f8:	c4 c1 40 57 c7       	vxorps %xmm15,%xmm7,%xmm0
 3fd:	e8 00 00 00 00       	call   402 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x402>
 402:	49 8b 06             	mov    (%r14),%rax
 405:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 40a:	c5 c2 5e d1          	vdivss %xmm1,%xmm7,%xmm2
 40e:	c5 ea 59 5d 30       	vmulss 0x30(%rbp),%xmm2,%xmm3
 413:	c4 c1 48 57 c7       	vxorps %xmm15,%xmm6,%xmm0
 418:	c5 fa 11 1c 07       	vmovss %xmm3,(%rdi,%rax,1)
 41d:	e8 00 00 00 00       	call   422 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x422>
 422:	48 8b 4d 40          	mov    0x40(%rbp),%rcx
 426:	49 03 dc             	add    %r12,%rbx
 429:	49 8b 46 08          	mov    0x8(%r14),%rax
 42d:	49 03 cf             	add    %r15,%rcx
 430:	48 8b 55 60          	mov    0x60(%rbp),%rdx
 434:	4c 8b 45 58          	mov    0x58(%rbp),%r8
 438:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 43d:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 441:	c5 ea 59 5d 34       	vmulss 0x34(%rbp),%xmm2,%xmm3
 446:	c5 fa 11 1c 07       	vmovss %xmm3,(%rdi,%rax,1)
 44b:	48 83 c7 04          	add    $0x4,%rdi
 44f:	48 89 5d 38          	mov    %rbx,0x38(%rbp)
 453:	48 83 6d 50 01       	subq   $0x1,0x50(%rbp)
 458:	48 89 4d 40          	mov    %rcx,0x40(%rbp)
 45c:	48 89 7d 48          	mov    %rdi,0x48(%rbp)
 460:	0f 85 da fc ff ff    	jne    140 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x140>
 466:	4c 8d 9c 24 a0 01 00 	lea    0x1a0(%rsp),%r11
 46d:	00 
 46e:	49 8b 5b 40          	mov    0x40(%r11),%rbx
 472:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 478:	c4                   	.byte 0xc4
 479:	c1                   	.byte 0xc1
 47a:	78                   	.byte 0x78

000000000000047b <$LN111>:
 47b:	28                   	.byte 0x28
 47c:	7b                   	.byte 0x7b

000000000000047d <$LN67>:
 47d:	e0 c4                	loopne 443 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x443>
 47f:	41 78 28             	rex.B js 4aa <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4aa>
 482:	43 d0 c4             	rex.XB rol $1,%r12b
 485:	41 78 28             	rex.B js 4b0 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4b0>
 488:	4b c0 c4 41          	rex.WXB rol $0x41,%r12b
 48c:	78 28                	js     4b6 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4b6>
 48e:	53                   	push   %rbx
 48f:	b0 c4                	mov    $0xc4,%al
 491:	41 78 28             	rex.B js 4bc <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4bc>
 494:	5b                   	pop    %rbx
 495:	a0 c4 41 78 28 63 90 	movabs 0x41c49063287841c4,%al
 49c:	c4 41 
 49e:	78 28                	js     4c8 <$LN67+0x4b>
 4a0:	6b 80 c4 41 78 28 b3 	imul   $0xffffffb3,0x287841c4(%rax),%eax
 4a7:	70 ff                	jo     4a8 <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4a8>
 4a9:	ff                   	(bad)
 4aa:	ff c4                	inc    %esp
 4ac:	41 78 28             	rex.B js 4d7 <$LN67+0x5a>
 4af:	bb 60 ff ff ff       	mov    $0xffffff60,%ebx
 4b4:	49 8b e3             	mov    %r11,%rsp
 4b7:	41 5f                	pop    %r15
 4b9:	41 5e                	pop    %r14
 4bb:	41 5d                	pop    %r13
 4bd:	41 5c                	pop    %r12
 4bf:	5f                   	pop    %rdi
 4c0:	5e                   	pop    %rsi
 4c1:	5d                   	pop    %rbp
 4c2:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 8b 84 24 98 01 00 	mov    0x198(%rsp),%rax
  70:	00 
  71:	4c 8b d9             	mov    %rcx,%r11
  74:	4c 63 8c 24 a8 01 00 	movslq 0x1a8(%rsp),%r9
  7b:	00 
  7c:	48 63 9c 24 b0 01 00 	movslq 0x1b0(%rsp),%rbx
  83:	00 
  84:	4c 8b 94 24 a0 01 00 	mov    0x1a0(%rsp),%r10
  8b:	00 
  8c:	4c 89 45 28          	mov    %r8,0x28(%rbp)
  90:	c5 f8 10 00          	vmovups (%rax),%xmm0
  94:	c5 f8 11 45 48       	vmovups %xmm0,0x48(%rbp)
  99:	4c 3b cb             	cmp    %rbx,%r9
  9c:	0f 8d 0a 03 00 00    	jge    3ac <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3ac>
  a2:	49 8b 4a 08          	mov    0x8(%r10),%rcx
  a6:	8b 84 24 90 01 00 00 	mov    0x190(%rsp),%eax
  ad:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # b5 <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xb5>
  b4:	00 
  b5:	c5 7e 6f 2d 00 00 00 	vmovdqu 0x0(%rip),%ymm13        # bd <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xbd>
  bc:	00 
  bd:	c5 7e 6f 0d 00 00 00 	vmovdqu 0x0(%rip),%ymm9        # c5 <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc5>
  c4:	00 
  c5:	c5 7a 6f 35 00 00 00 	vmovdqu 0x0(%rip),%xmm14        # cd <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xcd>
  cc:	00 
  cd:	99                   	cltd
  ce:	4d 0f af c1          	imul   %r9,%r8
  d2:	0f b6 d2             	movzbl %dl,%edx
  d5:	03 c2                	add    %edx,%eax
  d7:	49 83 c0 02          	add    $0x2,%r8
  db:	c1 f8 08             	sar    $0x8,%eax
  de:	4a 8d 14 89          	lea    (%rcx,%r9,4),%rdx
  e2:	48 63 f8             	movslq %eax,%rdi
  e5:	4d 03 c3             	add    %r11,%r8
  e8:	49 8b 02             	mov    (%r10),%rax
  eb:	4c 8b 55 28          	mov    0x28(%rbp),%r10
  ef:	48 2b c1             	sub    %rcx,%rax
  f2:	48 8b 4d 48          	mov    0x48(%rbp),%rcx
  f6:	49 2b d9             	sub    %r9,%rbx
  f9:	4c 8b 4d 50          	mov    0x50(%rbp),%r9
  fd:	48 89 5d 40          	mov    %rbx,0x40(%rbp)
 101:	48 89 7d 68          	mov    %rdi,0x68(%rbp)
 105:	48 89 55 38          	mov    %rdx,0x38(%rbp)
 109:	4c 89 45 30          	mov    %r8,0x30(%rbp)
 10d:	48 89 45 70          	mov    %rax,0x70(%rbp)
 111:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
 116:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
 11b:	48 85 ff             	test   %rdi,%rdi
 11e:	0f 8e 3c 02 00 00    	jle    360 <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x360>
 124:	48 8b c1             	mov    %rcx,%rax
 127:	48 89 4d 18          	mov    %rcx,0x18(%rbp)
 12b:	49 2b c1             	sub    %r9,%rax
 12e:	48 89 7d 20          	mov    %rdi,0x20(%rbp)
 132:	48 89 45 58          	mov    %rax,0x58(%rbp)
 136:	49 8b d1             	mov    %r9,%rdx
 139:	48 8b c1             	mov    %rcx,%rax
 13c:	49 8b c8             	mov    %r8,%rcx
 13f:	48 2b d0             	sub    %rax,%rdx
 142:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
 146:	48 89 55 60          	mov    %rdx,0x60(%rbp)
 14a:	c4 41 01 ef ff       	vpxor  %xmm15,%xmm15,%xmm15
 14f:	90                   	nop
 150:	4c 8d 59 48          	lea    0x48(%rcx),%r11
 154:	48                   	rex.W
 155:	c7                   	.byte 0xc7
 156:	45 08 04 00          	or     %r8b,(%r8,%rax,1)

000000000000015a <$LN10>:
 15a:	00 00                	add    %al,(%rax)
 15c:	48 8d 58 04          	lea    0x4(%rax),%rbx
 160:	4c 89 5d 00          	mov    %r11,0x0(%rbp)
 164:	48 03 da             	add    %rdx,%rbx
 167:	4c 8b d1             	mov    %rcx,%r10
 16a:	c4 c1 7e 6f ff       	vmovdqu %ymm15,%ymm7
 16f:	c4 41 7e 6f c7       	vmovdqu %ymm15,%ymm8
 174:	4d 8b 6a 20          	mov    0x20(%r10),%r13
 178:	4d 8b f3             	mov    %r11,%r14
 17b:	4c 8b 65 58          	mov    0x58(%rbp),%r12
 17f:	4c 8d 1d 00 00 00 00 	lea    0x0(%rip),%r11        # 186 <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x186>
 186:	33 f6                	xor    %esi,%esi
 188:	bf 02 00 00 00       	mov    $0x2,%edi
 18d:	4c 8b fb             	mov    %rbx,%r15
 190:	41 0f b6 4e f8       	movzbl -0x8(%r14),%ecx
 195:	4d 8d 7f 20          	lea    0x20(%r15),%r15
 199:	42 0f b6 44 17 fe    	movzbl -0x2(%rdi,%r10,1),%eax
 19f:	48 8d 7f 04          	lea    0x4(%rdi),%rdi
 1a3:	44 8b c9             	mov    %ecx,%r9d
 1a6:	4d 8d 76 01          	lea    0x1(%r14),%r14
 1aa:	44 8b c1             	mov    %ecx,%r8d
 1ad:	8b d1                	mov    %ecx,%edx
 1af:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 1b5:	83 e2 30             	and    $0x30,%edx
 1b8:	c1 e1 02             	shl    $0x2,%ecx
 1bb:	41 83 e1 03          	and    $0x3,%r9d
 1bf:	c1 e2 04             	shl    $0x4,%edx
 1c2:	41 83 e0 0c          	and    $0xc,%r8d
 1c6:	41 c1 e1 08          	shl    $0x8,%r9d
 1ca:	4c 0b c8             	or     %rax,%r9
 1cd:	41 c1 e0 06          	shl    $0x6,%r8d
 1d1:	42 0f b6 44 17 fb    	movzbl -0x5(%rdi,%r10,1),%eax
 1d7:	4c 0b c0             	or     %rax,%r8
 1da:	42 0f b6 44 17 fc    	movzbl -0x4(%rdi,%r10,1),%eax
 1e0:	48 0b d0             	or     %rax,%rdx
 1e3:	42 0f b6 44 17 fd    	movzbl -0x3(%rdi,%r10,1),%eax
 1e9:	c4 81 7a 7e 0c cb    	vmovq  (%r11,%r9,8),%xmm1
 1ef:	48 0b c8             	or     %rax,%rcx
 1f2:	49 8b c5             	mov    %r13,%rax
 1f5:	c4 83 f1 22 0c c3 01 	vpinsrq $0x1,(%r11,%r8,8),%xmm1,%xmm1
 1fc:	c4 c1 7a 7e 04 d3    	vmovq  (%r11,%rdx,8),%xmm0
 202:	41 0f b6 56 ff       	movzbl -0x1(%r14),%edx
 207:	c4 c3 f9 22 04 cb 01 	vpinsrq $0x1,(%r11,%rcx,8),%xmm0,%xmm0
 20e:	c4 e3 75 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm6
 214:	49 8b cd             	mov    %r13,%rcx
 217:	48 c1 e9 20          	shr    $0x20,%rcx

000000000000021b <$LN41>:
 21b:	85 f6                	test   %esi,%esi
 21d:	48 0f 45 c1          	cmovne %rcx,%rax
 221:	ff c6                	inc    %esi
 223:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 227:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 22c:	c4 c2 79 00 cc       	vpshufb %xmm12,%xmm0,%xmm1
 231:	c4 c2 79 00 c6       	vpshufb %xmm14,%xmm0,%xmm0
 236:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 23c:	c4 c1 75 db d1       	vpand  %ymm9,%ymm1,%ymm2
 241:	0f b6 c2             	movzbl %dl,%eax
 244:	80 e2 0f             	and    $0xf,%dl
 247:	c0 e8 04             	shr    $0x4,%al
 24a:	0f b6 c8             	movzbl %al,%ecx
 24d:	c4 c1 6d 74 d9       	vpcmpeqb %ymm9,%ymm2,%ymm3
 252:	c4 c1 65 eb ed       	vpor   %ymm13,%ymm3,%ymm5
 257:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 25e:	00 
 25f:	98                   	cwtl
 260:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 264:	c4 e2 79 79 c9       	vpbroadcastw %xmm1,%xmm1
 269:	0f b6 c2             	movzbl %dl,%eax
 26c:	66 03 c0             	add    %ax,%ax
 26f:	66 ff c0             	inc    %ax
 272:	98                   	cwtl
 273:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 277:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
 27c:	c4 e3 7d 38 e1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm4
 282:	c4 81 7e 6f 4c 3c e0 	vmovdqu -0x20(%r12,%r15,1),%ymm1
 289:	c4 e2 75 08 c5       	vpsignb %ymm5,%ymm1,%ymm0
 28e:	c4 e2 4d 04 d0       	vpmaddubsw %ymm0,%ymm6,%ymm2
 293:	c4 c1 7e 6f 47 e0    	vmovdqu -0x20(%r15),%ymm0
 299:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 29d:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 2a2:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2a7:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 2ab:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2af:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 2b4:	83 fe 02             	cmp    $0x2,%esi
 2b7:	0f                   	.byte 0xf

00000000000002b8 <$LN99>:
 2b8:	8c d3                	mov    %ss,%ebx
 2ba:	fe                   	(bad)
 2bb:	ff                   	(bad)
 2bc:	ff 4c 8b 5d          	decl   0x5d(%rbx,%rcx,4)
 2c0:	00 49 83             	add    %cl,-0x7d(%rcx)
 2c3:	c2 08 49             	ret    $0x4908
 2c6:	83 c3 02             	add    $0x2,%ebx
 2c9:	48 83 c3 40          	add    $0x40,%rbx
 2cd:	48 83 6d 08 01       	subq   $0x1,0x8(%rbp)
 2d2:	4c 89 5d 00          	mov    %r11,0x0(%rbp)
 2d6:	0f                   	.byte 0xf
 2d7:	85                   	.byte 0x85
 2d8:	98                   	cwtl
 2d9:	fe                   	(bad)
 2da:	ff                   	.byte 0xff

00000000000002db <$LN30>:
 2db:	ff 48 8b             	decl   -0x75(%rax)
 2de:	4d 10 48 8b          	rex.WRB adc %r9b,-0x75(%r8)
 2e2:	55                   	push   %rbp
 2e3:	60                   	(bad)
 2e4:	c5 fc 5b d7          	vcvtdq2ps %ymm7,%ymm2
 2e8:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 2ec:	48 83 c1 52          	add    $0x52,%rcx
 2f0:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2f4:	48                   	rex.W
 2f5:	8b                   	.byte 0x8b

00000000000002f6 <$LN44>:
 2f6:	45 18 c4             	sbb    %r8b,%r12b
 2f9:	e2 79                	loop   374 <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x374>
 2fb:	13 c8                	adc    %eax,%ecx
 2fd:	c5 f2 59 1d 00 00 00 	vmulss 0x0(%rip),%xmm1,%xmm3        # 305 <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x305>
 304:	00 
 305:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 30a:	c5 e2 59 00          	vmulss (%rax),%xmm3,%xmm0
 30e:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 313:	c4 62 7d b8 d2       	vfmadd231ps %ymm2,%ymm0,%ymm10
 318:	c5 e2 59 04 10       	vmulss (%rax,%rdx,1),%xmm3,%xmm0
 31d:	48 05 24 01 00 00    	add    $0x124,%rax
 323:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
 327:	48 83 6d 20 01       	subq   $0x1,0x20(%rbp)
 32c:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 331:	c4 62 7d b8 d9       	vfmadd231ps %ymm1,%ymm0,%ymm11
 336:	48 89 45 18          	mov    %rax,0x18(%rbp)
 33a:	0f 85 10 fe ff ff    	jne    150 <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x150>
 340:	48 8b 55 38          	mov    0x38(%rbp),%rdx
 344:	4c 8b 45 30          	mov    0x30(%rbp),%r8
 348:	48 8b 5d 40          	mov    0x40(%rbp),%rbx
 34c:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 350:	4c 8b 4d 50          	mov    0x50(%rbp),%r9
 354:	48 8b 4d 48          	mov    0x48(%rbp),%rcx
 358:	48 8b 45 70          	mov    0x70(%rbp),%rax
 35c:	4c 8b 55 28          	mov    0x28(%rbp),%r10
 360:	4d 03 c2             	add    %r10,%r8
 363:	c4 63 7d 19 d0 01    	vextractf128 $0x1,%ymm10,%xmm0
 369:	c4 c1 78 58 c2       	vaddps %xmm10,%xmm0,%xmm0
 36e:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 372:	c5 f3 7c d9          	vhaddps %xmm1,%xmm1,%xmm3
 376:	c5 fa 11 1c 02       	vmovss %xmm3,(%rdx,%rax,1)
 37b:	c4 63 7d 19 d8 01    	vextractf128 $0x1,%ymm11,%xmm0
 381:	c4 c1 78 58 c3       	vaddps %xmm11,%xmm0,%xmm0
 386:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 38a:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 38e:	c5 fa 11 12          	vmovss %xmm2,(%rdx)
 392:	48 83 c2 04          	add    $0x4,%rdx
 396:	4c 89 45 30          	mov    %r8,0x30(%rbp)
 39a:	48 83 eb 01          	sub    $0x1,%rbx
 39e:	48 89 55 38          	mov    %rdx,0x38(%rbp)
 3a2:	48 89 5d 40          	mov    %rbx,0x40(%rbp)
 3a6:	0f 85 65 fd ff ff    	jne    111 <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x111>
 3ac:	c5 f8 77             	vzeroupper
 3af:	4c 8d 9c 24 40 01 00 	lea    0x140(%rsp),%r11
 3b6:	00 
 3b7:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 3bb:	49 8b 73 38          	mov    0x38(%r11),%rsi
 3bf:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 3c3:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 3c9:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 3cf:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 3d5:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 3db:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 3e1:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 3e7:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 3ed:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 3f3:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 3fa:	ff ff 
 3fc:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 403:	ff ff 
 405:	49 8b e3             	mov    %r11,%rsp
 408:	41 5f                	pop    %r15
 40a:	41 5e                	pop    %r14
 40c:	41 5d                	pop    %r13
 40e:	41 5c                	pop    %r12
 410:	5d                   	pop    %rbp
 411:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	4c 8b dc             	mov    %rsp,%r11
   3:	55                   	push   %rbp
   4:	41 56                	push   %r14
   6:	41 57                	push   %r15
   8:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
   f:	4c 8b b4 24 10 01 00 	mov    0x110(%rsp),%r14
  16:	00 
  17:	49 8b e8             	mov    %r8,%rbp
  1a:	4c 8b 84 24 08 01 00 	mov    0x108(%rsp),%r8
  21:	00 
  22:	4d 8b f9             	mov    %r9,%r15
  25:	4c 8b c9             	mov    %rcx,%r9
  28:	4c 8b d2             	mov    %rdx,%r10
  2b:	8b 8c 24 20 01 00 00 	mov    0x120(%rsp),%ecx
  32:	49 8b 00             	mov    (%r8),%rax
  35:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  3a:	49 8b 40 08          	mov    0x8(%r8),%rax
  3e:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  43:	49 8b 40 10          	mov    0x10(%r8),%rax
  47:	4c 63 84 24 18 01 00 	movslq 0x118(%rsp),%r8
  4e:	00 
  4f:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  54:	44 3b c1             	cmp    %ecx,%r8d
  57:	0f 8d 63 01 00 00    	jge    1c0 <??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1c0>
  5d:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
  64:	49 89 5b e0          	mov    %rbx,-0x20(%r11)
  68:	99                   	cltd
  69:	49 89 73 d8          	mov    %rsi,-0x28(%r11)
  6d:	49 8b d8             	mov    %r8,%rbx
  70:	49 89 7b d0          	mov    %rdi,-0x30(%r11)
  74:	4a 8d 34 85 00 00 00 	lea    0x0(,%r8,4),%rsi
  7b:	00 
  7c:	4d 89 63 c8          	mov    %r12,-0x38(%r11)
  80:	49 8b f8             	mov    %r8,%rdi
  83:	4d 89 6b c0          	mov    %r13,-0x40(%r11)
  87:	49 0f af ff          	imul   %r15,%rdi
  8b:	48 0f af dd          	imul   %rbp,%rbx
  8f:	c4 c1 78 29 73 a8    	vmovaps %xmm6,-0x58(%r11)
  95:	c5 f8 29 7c 24 70    	vmovaps %xmm7,0x70(%rsp)
  9b:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # a3 <??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xa3>
  a2:	00 
  a3:	44 0f b6 e2          	movzbl %dl,%r12d
  a7:	49 03 fa             	add    %r10,%rdi
  aa:	44 03 e0             	add    %eax,%r12d
  ad:	41 c1 fc 08          	sar    $0x8,%r12d
  b1:	49 03 d9             	add    %r9,%rbx
  b4:	41 2b c8             	sub    %r8d,%ecx
  b7:	c4 41 78 29 43 88    	vmovaps %xmm8,-0x78(%r11)
  bd:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # c5 <??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc5>
  c4:	00 
  c5:	44 8b e9             	mov    %ecx,%r13d
  c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  cf:	00 
  d0:	4c 8d 4c 24 20       	lea    0x20(%rsp),%r9
  d5:	41 8b d4             	mov    %r12d,%edx
  d8:	4c 8d 44 24 40       	lea    0x40(%rsp),%r8
  dd:	48 8b cb             	mov    %rbx,%rcx
  e0:	e8 00 00 00 00       	call   e5 <??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xe5>
  e5:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
  ea:	41 8b d4             	mov    %r12d,%edx
  ed:	4c 8d 44 24 40       	lea    0x40(%rsp),%r8
  f2:	48 8b cf             	mov    %rdi,%rcx
  f5:	e8 00 00 00 00       	call   fa <??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xfa>
  fa:	c5 fa 10 74 24 20    	vmovss 0x20(%rsp),%xmm6
 100:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 104:	e8 00 00 00 00       	call   109 <??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x109>
 109:	49 8b 06             	mov    (%r14),%rax
 10c:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 111:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 115:	c5 ea 59 5c 24 30    	vmulss 0x30(%rsp),%xmm2,%xmm3
 11b:	c5 fa 10 74 24 24    	vmovss 0x24(%rsp),%xmm6
 121:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 125:	c5 fa 11 1c 06       	vmovss %xmm3,(%rsi,%rax,1)
 12a:	e8 00 00 00 00       	call   12f <??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x12f>
 12f:	49 8b 46 08          	mov    0x8(%r14),%rax
 133:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 138:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 13c:	c5 ea 59 5c 24 34    	vmulss 0x34(%rsp),%xmm2,%xmm3
 142:	c5 fa 10 74 24 28    	vmovss 0x28(%rsp),%xmm6
 148:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 14c:	c5 fa 11 1c 06       	vmovss %xmm3,(%rsi,%rax,1)
 151:	e8 00 00 00 00       	call   156 <??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x156>
 156:	49 8b 46 10          	mov    0x10(%r14),%rax

000000000000015a <$LN10>:
 15a:	48 8d 76 04          	lea    0x4(%rsi),%rsi
 15e:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 163:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 167:	c5 ea 59 5c 24 38    	vmulss 0x38(%rsp),%xmm2,%xmm3
 16d:	48 03 dd             	add    %rbp,%rbx
 170:	49 03 ff             	add    %r15,%rdi
 173:	c5 fa 11 5c 06 fc    	vmovss %xmm3,-0x4(%rsi,%rax,1)
 179:	49 83 ed 01          	sub    $0x1,%r13
 17d:	0f 85 4d ff ff ff    	jne    d0 <??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd0>
 183:	c5 78 28 44 24 60    	vmovaps 0x60(%rsp),%xmm8
 189:	c5 f8 28 7c 24 70    	vmovaps 0x70(%rsp),%xmm7
 18f:	c5 f8 28 b4 24 80 00 	vmovaps 0x80(%rsp),%xmm6
 196:	00 00 
 198:	4c 8b ac 24 98 00 00 	mov    0x98(%rsp),%r13
 19f:	00 
 1a0:	4c 8b a4 24 a0 00 00 	mov    0xa0(%rsp),%r12
 1a7:	00 
 1a8:	48 8b bc 24 a8 00 00 	mov    0xa8(%rsp),%rdi
 1af:	00 
 1b0:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
 1b7:	00 
 1b8:	48 8b 9c 24 b8 00 00 	mov    0xb8(%rsp),%rbx
 1bf:	00 
 1c0:	48 81 c4 c0 00 00 00 	add    $0xc0,%rsp
 1c7:	41 5f                	pop    %r15
 1c9:	41 5e                	pop    %r14
 1cb:	5d                   	pop    %rbp
 1cc:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BG@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	4c 8b dc             	mov    %rsp,%r11
   3:	56                   	push   %rsi
   4:	41 56                	push   %r14
   6:	48 83 ec 68          	sub    $0x68,%rsp
   a:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
  11:	00 
  12:	4d 8b f0             	mov    %r8,%r14
  15:	4c 63 84 24 b8 00 00 	movslq 0xb8(%rsp),%r8
  1c:	00 
  1d:	4c 8b c9             	mov    %rcx,%r9
  20:	8b 8c 24 c0 00 00 00 	mov    0xc0(%rsp),%ecx
  27:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  2e:	00 
  2f:	48 8b 02             	mov    (%rdx),%rax
  32:	49 89 43 b8          	mov    %rax,-0x48(%r11)
  36:	48 8b 42 08          	mov    0x8(%rdx),%rax
  3a:	49 89 43 c0          	mov    %rax,-0x40(%r11)
  3e:	48 8b 42 10          	mov    0x10(%rdx),%rax
  42:	49 89 43 c8          	mov    %rax,-0x38(%r11)
  46:	44 3b c1             	cmp    %ecx,%r8d
  49:	0f 8d a9 00 00 00    	jge    f8 <??$apply_rows@$0BG@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xf8>
  4f:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
  56:	49 89 5b 10          	mov    %rbx,0x10(%r11)
  5a:	99                   	cltd
  5b:	49 89 6b e8          	mov    %rbp,-0x18(%r11)
  5f:	4a 8d 1c 85 00 00 00 	lea    0x0(,%r8,4),%rbx
  66:	00 
  67:	49 89 7b e0          	mov    %rdi,-0x20(%r11)
  6b:	49 8b f8             	mov    %r8,%rdi
  6e:	4d 89 7b d8          	mov    %r15,-0x28(%r11)
  72:	49 0f af fe          	imul   %r14,%rdi
  76:	44 0f b6 fa          	movzbl %dl,%r15d
  7a:	44 03 f8             	add    %eax,%r15d
  7d:	49 03 f9             	add    %r9,%rdi
  80:	41 c1 ff 08          	sar    $0x8,%r15d
  84:	41 2b c8             	sub    %r8d,%ecx
  87:	8b e9                	mov    %ecx,%ebp
  89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  90:	4c 8d 4c 24 20       	lea    0x20(%rsp),%r9
  95:	41 8b d7             	mov    %r15d,%edx
  98:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
  9d:	48 8b cf             	mov    %rdi,%rcx
  a0:	e8 00 00 00 00       	call   a5 <??$apply_rows@$0BG@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xa5>
  a5:	48 8b 06             	mov    (%rsi),%rax
  a8:	48 8d 5b 04          	lea    0x4(%rbx),%rbx
  ac:	c5 fa 10 44 24 20    	vmovss 0x20(%rsp),%xmm0
  b2:	c5 fa 10 4c 24 24    	vmovss 0x24(%rsp),%xmm1
  b8:	49 03 fe             	add    %r14,%rdi
  bb:	c5 fa 11 44 03 fc    	vmovss %xmm0,-0x4(%rbx,%rax,1)
  c1:	48 8b 46 08          	mov    0x8(%rsi),%rax
  c5:	c5 fa 10 44 24 28    	vmovss 0x28(%rsp),%xmm0
  cb:	c5 fa 11 4c 03 fc    	vmovss %xmm1,-0x4(%rbx,%rax,1)
  d1:	48 8b 46 10          	mov    0x10(%rsi),%rax
  d5:	c5 fa 11 44 03 fc    	vmovss %xmm0,-0x4(%rbx,%rax,1)
  db:	48 83 ed 01          	sub    $0x1,%rbp
  df:	75 af                	jne    90 <??$apply_rows@$0BG@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x90>
  e1:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
  e6:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  eb:	48 8b 6c 24 60       	mov    0x60(%rsp),%rbp
  f0:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
  f7:	00 
  f8:	48 83 c4 68          	add    $0x68,%rsp
  fc:	41 5e                	pop    %r14
  fe:	5e                   	pop    %rsi
  ff:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	55                   	push   %rbp
   8:	56                   	push   %rsi
   9:	57                   	push   %rdi
   a:	41 54                	push   %r12
   c:	41 55                	push   %r13
   e:	41 56                	push   %r14
  10:	41 57                	push   %r15
  12:	48 81 ec 10 02 00 00 	sub    $0x210,%rsp
  19:	c5 f8 29 70 b8       	vmovaps %xmm6,-0x48(%rax)
  1e:	c5 f8 29 78 a8       	vmovaps %xmm7,-0x58(%rax)
  23:	c5 78 29 40 98       	vmovaps %xmm8,-0x68(%rax)
  28:	c5 78 29 48 88       	vmovaps %xmm9,-0x78(%rax)
  2d:	c5 78 29 90 78 ff ff 	vmovaps %xmm10,-0x88(%rax)
  34:	ff 
  35:	c5 78 29 98 68 ff ff 	vmovaps %xmm11,-0x98(%rax)
  3c:	ff 
  3d:	c5 78 29 a0 58 ff ff 	vmovaps %xmm12,-0xa8(%rax)
  44:	ff 
  45:	c5 78 29 a8 48 ff ff 	vmovaps %xmm13,-0xb8(%rax)
  4c:	ff 
  4d:	c5 78 29 b0 38 ff ff 	vmovaps %xmm14,-0xc8(%rax)
  54:	ff 
  55:	c5 78 29 b8 28 ff ff 	vmovaps %xmm15,-0xd8(%rax)
  5c:	ff 
  5d:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  62:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  66:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 6d <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x6d>
  6d:	48 33 c4             	xor    %rsp,%rax
  70:	48 89 85 20 01 00 00 	mov    %rax,0x120(%rbp)
  77:	48 8b 84 24 78 02 00 	mov    0x278(%rsp),%rax
  7e:	00 
  7f:	4d 8b e1             	mov    %r9,%r12
  82:	4c 8b b4 24 80 02 00 	mov    0x280(%rsp),%r14
  89:	00 
  8a:	4d 8b f8             	mov    %r8,%r15
  8d:	4c 89 8d b0 00 00 00 	mov    %r9,0xb0(%rbp)
  94:	4c 8b da             	mov    %rdx,%r11
  97:	4c 63 8c 24 88 02 00 	movslq 0x288(%rsp),%r9
  9e:	00 
  9f:	4c 8b d1             	mov    %rcx,%r10
  a2:	c5 fc 10 00          	vmovups (%rax),%ymm0
  a6:	4c 89 85 a8 00 00 00 	mov    %r8,0xa8(%rbp)
  ad:	44 8b 84 24 90 02 00 	mov    0x290(%rsp),%r8d
  b4:	00 
  b5:	4c 89 b5 a0 00 00 00 	mov    %r14,0xa0(%rbp)
  bc:	c5 fc 11 85 00 01 00 	vmovups %ymm0,0x100(%rbp)
  c3:	00 
  c4:	45 3b c8             	cmp    %r8d,%r9d
  c7:	0f 8d 22 05 00 00    	jge    5ef <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x5ef>
  cd:	8b 84 24 70 02 00 00 	mov    0x270(%rsp),%eax
  d4:	4a 8d 1c 8d 00 00 00 	lea    0x0(,%r9,4),%rbx
  db:	00 
  dc:	c5 7a 10 15 00 00 00 	vmovss 0x0(%rip),%xmm10        # e4 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xe4>
  e3:	00 
  e4:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # ec <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xec>
  eb:	00 
  ec:	c5 7a 6f 2d 00 00 00 	vmovdqu 0x0(%rip),%xmm13        # f4 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xf4>
  f3:	00 
  f4:	c5 7a 10 1d 00 00 00 	vmovss 0x0(%rip),%xmm11        # fc <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xfc>
  fb:	00 
  fc:	99                   	cltd
  fd:	48 89 5d 48          	mov    %rbx,0x48(%rbp)
 101:	49 83 c2 02          	add    $0x2,%r10
 105:	0f b6 d2             	movzbl %dl,%edx
 108:	03 c2                	add    %edx,%eax
 10a:	49 8b c9             	mov    %r9,%rcx
 10d:	48 8b 95 08 01 00 00 	mov    0x108(%rbp),%rdx
 114:	49 8b f9             	mov    %r9,%rdi
 117:	c1 f8 08             	sar    $0x8,%eax
 11a:	49 0f af fc          	imul   %r12,%rdi
 11e:	49 0f af cf          	imul   %r15,%rcx
 122:	49 03 fb             	add    %r11,%rdi
 125:	48 63 f0             	movslq %eax,%rsi
 128:	89 45 00             	mov    %eax,0x0(%rbp)
 12b:	48 89 b5 98 00 00 00 	mov    %rsi,0x98(%rbp)
 132:	48 89 7d 38          	mov    %rdi,0x38(%rbp)
 136:	49 03 ca             	add    %r10,%rcx
 139:	4c 8b 95 00 01 00 00 	mov    0x100(%rbp),%r10
 140:	45 2b c1             	sub    %r9d,%r8d
 143:	48 89 4d 40          	mov    %rcx,0x40(%rbp)
 147:	4c 8b 8d 18 01 00 00 	mov    0x118(%rbp),%r9
 14e:	41 8b c0             	mov    %r8d,%eax
 151:	4c 8b 85 10 01 00 00 	mov    0x110(%rbp),%r8
 158:	48                   	rex.W
 159:	89                   	.byte 0x89

000000000000015a <$LN10>:
 15a:	45 50                	rex.RB push %r8
 15c:	0f 1f 40 00          	nopl   0x0(%rax)
 160:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
 164:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 168:	c5 fc 11 95 c0 00 00 	vmovups %ymm2,0xc0(%rbp)
 16f:	00 
 170:	c5 fc 11 9d e0 00 00 	vmovups %ymm3,0xe0(%rbp)
 177:	00 
 178:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
 17d:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
 182:	48 85 f6             	test   %rsi,%rsi
 185:	0f 8e 3d 03 00 00    	jle    4c8 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4c8>
 18b:	49 8b c2             	mov    %r10,%rax
 18e:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
 192:	48 2b c2             	sub    %rdx,%rax
 195:	48 89 75 30          	mov    %rsi,0x30(%rbp)
 199:	48 89 45 68          	mov    %rax,0x68(%rbp)
 19d:	49 8b c0             	mov    %r8,%rax
 1a0:	48 2b c2             	sub    %rdx,%rax
 1a3:	4d 2b c2             	sub    %r10,%r8
 1a6:	48 89 45 70          	mov    %rax,0x70(%rbp)
 1aa:	49 8b c1             	mov    %r9,%rax
 1ad:	48 2b c2             	sub    %rdx,%rax
 1b0:	4c 89 85 88 00 00 00 	mov    %r8,0x88(%rbp)
 1b7:	49 2b d2             	sub    %r10,%rdx
 1ba:	48 89 45 78          	mov    %rax,0x78(%rbp)
 1be:	4d 8b c1             	mov    %r9,%r8
 1c1:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
 1c8:	49 8b c2             	mov    %r10,%rax
 1cb:	4d 2b c2             	sub    %r10,%r8
 1ce:	48 89 45 28          	mov    %rax,0x28(%rbp)
 1d2:	4c 89 85 90 00 00 00 	mov    %r8,0x90(%rbp)
 1d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 1e0:	c5 7e 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%ymm11        # 1e8 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1e8>
 1e7:	00 
 1e8:	48 8d 58 04          	lea    0x4(%rax),%rbx
 1ec:	48 c7 45 18 04 00 00 	movq   $0x4,0x18(%rbp)
 1f3:	00 
 1f4:	48 03 da             	add    %rdx,%rbx
 1f7:	4c 8d 59 48          	lea    0x48(%rcx),%r11
 1fb:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 1ff:	4c 8b d1             	mov    %rcx,%r10
 202:	c5 c1 ef ff          	vpxor  %xmm7,%xmm7,%xmm7
 206:	c4 41 39 ef c0       	vpxor  %xmm8,%xmm8,%xmm8
 20b:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
 210:	c4 41 29 ef d2       	vpxor  %xmm10,%xmm10,%xmm10
 215:	4c 89 5d 08          	mov    %r11,0x8(%rbp)
 219:	0f                   	.byte 0xf
 21a:	1f                   	(bad)

000000000000021b <$LN41>:
 21b:	80 00 00             	addb   $0x0,(%rax)
 21e:	00 00                	add    %al,(%rax)
 220:	4d 8b 62 20          	mov    0x20(%r10),%r12
 224:	4d 8b fb             	mov    %r11,%r15
 227:	4c 8b 5d 70          	mov    0x70(%rbp),%r11
 22b:	48 8b f3             	mov    %rbx,%rsi
 22e:	48 8b 5d 78          	mov    0x78(%rbp),%rbx
 232:	45 33 f6             	xor    %r14d,%r14d
 235:	4c 8b 6d 68          	mov    0x68(%rbp),%r13
 239:	bf 02 00 00 00       	mov    $0x2,%edi
 23e:	66 90                	xchg   %ax,%ax
 240:	41 0f b6 4f f8       	movzbl -0x8(%r15),%ecx
 245:	48 8d 76 20          	lea    0x20(%rsi),%rsi
 249:	41 0f b6 44 3a fe    	movzbl -0x2(%r10,%rdi,1),%eax
 24f:	48 8d 7f 04          	lea    0x4(%rdi),%rdi
 253:	44 8b c9             	mov    %ecx,%r9d
 256:	4d 8d 7f 01          	lea    0x1(%r15),%r15
 25a:	44 8b c1             	mov    %ecx,%r8d
 25d:	8b d1                	mov    %ecx,%edx
 25f:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 265:	83 e2 30             	and    $0x30,%edx
 268:	c1 e1 02             	shl    $0x2,%ecx
 26b:	41 83 e1 03          	and    $0x3,%r9d
 26f:	c1 e2 04             	shl    $0x4,%edx
 272:	41 83 e0 0c          	and    $0xc,%r8d
 276:	41 c1 e1 08          	shl    $0x8,%r9d
 27a:	4c 0b c8             	or     %rax,%r9
 27d:	41 c1 e0 06          	shl    $0x6,%r8d
 281:	41 0f b6 44 3a fb    	movzbl -0x5(%r10,%rdi,1),%eax
 287:	4c 0b c0             	or     %rax,%r8
 28a:	41 0f b6 44 3a fc    	movzbl -0x4(%r10,%rdi,1),%eax
 290:	48 0b d0             	or     %rax,%rdx
 293:	41 0f b6 44 3a fd    	movzbl -0x3(%r10,%rdi,1),%eax
 299:	48 0b c8             	or     %rax,%rcx
 29c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2a3 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2a3>
 2a3:	c4 a1 7a 7e 0c c8    	vmovq  (%rax,%r9,8),%xmm1
 2a9:	c4 a3 f1 22 0c c0 01 	vpinsrq $0x1,(%rax,%r8,8),%xmm1,%xmm1
 2b0:	c5 fa 7e 04 d0       	vmovq  (%rax,%rdx,8),%xmm0
 2b5:	c4                   	.byte 0xc4
 2b6:	e3 f9                	jrcxz  2b1 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2b1>

00000000000002b8 <$LN99>:
 2b8:	22 04 c8             	and    (%rax,%rcx,8),%al
 2bb:	01 41 0f             	add    %eax,0xf(%rcx)
 2be:	b6 57                	mov    $0x57,%dh
 2c0:	ff 49 8b             	decl   -0x75(%rcx)
 2c3:	cc                   	int3
 2c4:	c4 e3 75 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm6
 2ca:	48 c1 e9 20          	shr    $0x20,%rcx
 2ce:	49 8b c4             	mov    %r12,%rax
 2d1:	45 85 f6             	test   %r14d,%r14d
 2d4:	48 0f 45 c1          	cmovne %rcx,%rax
 2d8:	41 ff c6             	inc    %r14d

00000000000002db <$LN30>:
 2db:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2df:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 2e4:	c4 c2 79 00 cc       	vpshufb %xmm12,%xmm0,%xmm1
 2e9:	c4 c2 79 00 c5       	vpshufb %xmm13,%xmm0,%xmm0
 2ee:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 2f4:	c5                   	.byte 0xc5
 2f5:	f5                   	cmc

00000000000002f6 <$LN44>:
 2f6:	db 15 00 00 00 00    	fistl  0x0(%rip)        # 2fc <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2fc>
 2fc:	c5 ed 74 1d 00 00 00 	vpcmpeqb 0x0(%rip),%ymm2,%ymm3        # 304 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x304>
 303:	00 
 304:	c4 c1 65 eb eb       	vpor   %ymm11,%ymm3,%ymm5
 309:	0f b6 c2             	movzbl %dl,%eax
 30c:	80 e2 0f             	and    $0xf,%dl
 30f:	c0 e8 04             	shr    $0x4,%al
 312:	0f b6 c8             	movzbl %al,%ecx
 315:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 31c:	00 
 31d:	98                   	cwtl
 31e:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 322:	c4 e2 79 79 c9       	vpbroadcastw %xmm1,%xmm1
 327:	0f b6 c2             	movzbl %dl,%eax
 32a:	66 03 c0             	add    %ax,%ax
 32d:	66 ff c0             	inc    %ax
 330:	98                   	cwtl
 331:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 335:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
 33a:	c4 e3 7d 38 e1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm4
 340:	c4 a1 7e 6f 4c 2e e0 	vmovdqu -0x20(%rsi,%r13,1),%ymm1
 347:	c4 e2 75 08 c5       	vpsignb %ymm5,%ymm1,%ymm0
 34c:	c4 e2 4d 04 d0       	vpmaddubsw %ymm0,%ymm6,%ymm2
 351:	c5 fe 6f 46 e0       	vmovdqu -0x20(%rsi),%ymm0
 356:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 35a:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 35f:	c4 a1 7e 6f 44 1e e0 	vmovdqu -0x20(%rsi,%r11,1),%ymm0
 366:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 36b:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 370:	c5 fe 6f 44 1e e0    	vmovdqu -0x20(%rsi,%rbx,1),%ymm0
 376:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 37a:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 37e:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 383:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 388:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 38c:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 391:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 396:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 39b:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 39f:	c4 41 65 fe d2       	vpaddd %ymm10,%ymm3,%ymm10
 3a4:	41 83 fe 02          	cmp    $0x2,%r14d
 3a8:	0f 8c 92 fe ff ff    	jl     240 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x240>
 3ae:	4c 8b 5d 08          	mov    0x8(%rbp),%r11
 3b2:	49 83 c2 08          	add    $0x8,%r10
 3b6:	48 8b 5d 10          	mov    0x10(%rbp),%rbx
 3ba:	49 83 c3 02          	add    $0x2,%r11
 3be:	48 83 c3 40          	add    $0x40,%rbx
 3c2:	4c 89 5d 08          	mov    %r11,0x8(%rbp)
 3c6:	48 83 6d 18 01       	subq   $0x1,0x18(%rbp)
 3cb:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 3cf:	0f 85 4b fe ff ff    	jne    220 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x220>
 3d5:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
 3d9:	4c 8b 85 88 00 00 00 	mov    0x88(%rbp),%r8
 3e0:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
 3e7:	c5 fc 5b d7          	vcvtdq2ps %ymm7,%ymm2
 3eb:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 3ef:	48 83 c1 52          	add    $0x52,%rcx
 3f3:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 3f7:	48 8b 45 28          	mov    0x28(%rbp),%rax
 3fb:	c4 e2 79 13 c8       	vcvtph2ps %xmm0,%xmm1
 400:	c5 f2 59 1d 00 00 00 	vmulss 0x0(%rip),%xmm1,%xmm3        # 408 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x408>
 407:	00 
 408:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 40d:	c5 e2 59 00          	vmulss (%rax),%xmm3,%xmm0
 411:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 416:	c4 62 7d b8 f2       	vfmadd231ps %ymm2,%ymm0,%ymm14
 41b:	c5 e2 59 04 10       	vmulss (%rax,%rdx,1),%xmm3,%xmm0
 420:	c5 fc 10 95 c0 00 00 	vmovups 0xc0(%rbp),%ymm2
 427:	00 
 428:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 42d:	c4 62 7d b8 f9       	vfmadd231ps %ymm1,%ymm0,%ymm15
 432:	c4 c1 62 59 04 00    	vmulss (%r8,%rax,1),%xmm3,%xmm0
 438:	4c 8b 85 90 00 00 00 	mov    0x90(%rbp),%r8
 43f:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 444:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 449:	c4 e2 7d b8 d1       	vfmadd231ps %ymm1,%ymm0,%ymm2
 44e:	c4 c1 62 59 04 00    	vmulss (%r8,%rax,1),%xmm3,%xmm0
 454:	c5 fc 10 9d e0 00 00 	vmovups 0xe0(%rbp),%ymm3
 45b:	00 
 45c:	48 05 24 01 00 00    	add    $0x124,%rax
 462:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
 466:	48 83 6d 30 01       	subq   $0x1,0x30(%rbp)
 46b:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 470:	c4 c1 7c 5b ca       	vcvtdq2ps %ymm10,%ymm1
 475:	c4 e2 7d b8 d9       	vfmadd231ps %ymm1,%ymm0,%ymm3
 47a:	c5                   	.byte 0xc5

000000000000047b <$LN111>:
 47b:	fc                   	cld
 47c:	11                   	.byte 0x11

000000000000047d <$LN67>:
 47d:	9d                   	popf
 47e:	e0 00                	loopne 480 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x480>
 480:	00 00                	add    %al,(%rax)
 482:	c5 fc 11 95 c0 00 00 	vmovups %ymm2,0xc0(%rbp)
 489:	00 
 48a:	48 89 45 28          	mov    %rax,0x28(%rbp)
 48e:	0f 85 4c fd ff ff    	jne    1e0 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1e0>
 494:	c5 7a 10 15 00 00 00 	vmovss 0x0(%rip),%xmm10        # 49c <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x49c>
 49b:	00 
 49c:	c5 7a 10 1d 00 00 00 	vmovss 0x0(%rip),%xmm11        # 4a4 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4a4>
 4a3:	00 
 4a4:	48 8b 5d 48          	mov    0x48(%rbp),%rbx
 4a8:	48 8b 7d 38          	mov    0x38(%rbp),%rdi
 4ac:	48 8b b5 98 00 00 00 	mov    0x98(%rbp),%rsi
 4b3:	4c 8b b5 a0 00 00 00 	mov    0xa0(%rbp),%r14
 4ba:	4c 8b bd a8 00 00 00 	mov    0xa8(%rbp),%r15
 4c1:	4c 8b a5 b0 00 00 00 	mov    0xb0(%rbp),%r12
 4c8:	8b 55 00             	mov    0x0(%rbp),%edx
 4cb:	4c 8d 4d 58          	lea    0x58(%rbp),%r9
 4cf:	c4 63 7d 19 f0 01    	vextractf128 $0x1,%ymm14,%xmm0
 4d5:	c4 c1 78 58 c6       	vaddps %xmm14,%xmm0,%xmm0
 4da:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 4de:	c5 73 7c c9          	vhaddps %xmm1,%xmm1,%xmm9
 4e2:	c4 63 7d 19 f8 01    	vextractf128 $0x1,%ymm15,%xmm0
 4e8:	c4 c1 78 58 c7       	vaddps %xmm15,%xmm0,%xmm0
 4ed:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 4f1:	c5 73 7c c1          	vhaddps %xmm1,%xmm1,%xmm8
 4f5:	c4 e3 7d 19 d0 01    	vextractf128 $0x1,%ymm2,%xmm0
 4fb:	c5 f8 58 c2          	vaddps %xmm2,%xmm0,%xmm0
 4ff:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 503:	c4 e3 7d 19 d8 01    	vextractf128 $0x1,%ymm3,%xmm0
 509:	c5 f8 58 c3          	vaddps %xmm3,%xmm0,%xmm0
 50d:	c5 f3 7c f9          	vhaddps %xmm1,%xmm1,%xmm7
 511:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 515:	c5 f3 7c f1          	vhaddps %xmm1,%xmm1,%xmm6
 519:	4c 8d 85 00 01 00 00 	lea    0x100(%rbp),%r8
 520:	48 8b cf             	mov    %rdi,%rcx
 523:	c5 f8 77             	vzeroupper
 526:	e8 00 00 00 00       	call   52b <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x52b>
 52b:	c4 c1 30 57 c2       	vxorps %xmm10,%xmm9,%xmm0
 530:	e8 00 00 00 00       	call   535 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x535>
 535:	49 8b 06             	mov    (%r14),%rax
 538:	c4 c1 7a 58 cb       	vaddss %xmm11,%xmm0,%xmm1
 53d:	c5 b2 5e d1          	vdivss %xmm1,%xmm9,%xmm2
 541:	c5 ea 59 5d 58       	vmulss 0x58(%rbp),%xmm2,%xmm3
 546:	c4 c1 38 57 c2       	vxorps %xmm10,%xmm8,%xmm0
 54b:	c5 fa 11 1c 03       	vmovss %xmm3,(%rbx,%rax,1)
 550:	e8 00 00 00 00       	call   555 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x555>
 555:	49 8b 46 08          	mov    0x8(%r14),%rax
 559:	c4 c1 7a 58 cb       	vaddss %xmm11,%xmm0,%xmm1
 55e:	c5 ba 5e d1          	vdivss %xmm1,%xmm8,%xmm2
 562:	c5 ea 59 5d 5c       	vmulss 0x5c(%rbp),%xmm2,%xmm3
 567:	c4 c1 40 57 c2       	vxorps %xmm10,%xmm7,%xmm0
 56c:	c5 fa 11 1c 03       	vmovss %xmm3,(%rbx,%rax,1)
 571:	e8 00 00 00 00       	call   576 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x576>
 576:	49 8b 46 10          	mov    0x10(%r14),%rax
 57a:	c4 c1 7a 58 cb       	vaddss %xmm11,%xmm0,%xmm1
 57f:	c5 c2 5e d1          	vdivss %xmm1,%xmm7,%xmm2
 583:	c5 ea 59 5d 60       	vmulss 0x60(%rbp),%xmm2,%xmm3
 588:	c4 c1 48 57 c2       	vxorps %xmm10,%xmm6,%xmm0
 58d:	c5 fa 11 1c 03       	vmovss %xmm3,(%rbx,%rax,1)
 592:	e8 00 00 00 00       	call   597 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x597>
 597:	48 8b 4d 40          	mov    0x40(%rbp),%rcx
 59b:	49 03 fc             	add    %r12,%rdi
 59e:	49 8b 46 18          	mov    0x18(%r14),%rax
 5a2:	49 03 cf             	add    %r15,%rcx
 5a5:	48 8b 95 08 01 00 00 	mov    0x108(%rbp),%rdx
 5ac:	4c 8b 8d 18 01 00 00 	mov    0x118(%rbp),%r9
 5b3:	4c 8b 85 10 01 00 00 	mov    0x110(%rbp),%r8
 5ba:	4c 8b 95 00 01 00 00 	mov    0x100(%rbp),%r10
 5c1:	c4 c1 7a 58 cb       	vaddss %xmm11,%xmm0,%xmm1
 5c6:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 5ca:	c5 ea 59 5d 64       	vmulss 0x64(%rbp),%xmm2,%xmm3
 5cf:	c5 fa 11 1c 03       	vmovss %xmm3,(%rbx,%rax,1)
 5d4:	48 83 c3 04          	add    $0x4,%rbx
 5d8:	48 89 7d 38          	mov    %rdi,0x38(%rbp)
 5dc:	48 83 6d 50 01       	subq   $0x1,0x50(%rbp)
 5e1:	48 89 4d 40          	mov    %rcx,0x40(%rbp)
 5e5:	48 89 5d 48          	mov    %rbx,0x48(%rbp)
 5e9:	0f 85 71 fb ff ff    	jne    160 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x160>
 5ef:	c5 f8 77             	vzeroupper
 5f2:	48 8b 8d 20 01 00 00 	mov    0x120(%rbp),%rcx
 5f9:	48 33 cc             	xor    %rsp,%rcx
 5fc:	e8 00 00 00 00       	call   601 <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x601>
 601:	4c 8d 9c 24 10 02 00 	lea    0x210(%rsp),%r11
 608:	00 
 609:	49 8b 5b 40          	mov    0x40(%r11),%rbx
 60d:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 613:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 619:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 61f:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 625:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 62b:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 631:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 637:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 63d:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 644:	ff ff 
 646:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 64d:	ff ff 
 64f:	49 8b e3             	mov    %r11,%rsp
 652:	41 5f                	pop    %r15
 654:	41 5e                	pop    %r14
 656:	41 5d                	pop    %r13
 658:	41 5c                	pop    %r12
 65a:	5f                   	pop    %rdi
 65b:	5e                   	pop    %rsi
 65c:	5d                   	pop    %rbp
 65d:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec f0 01 00 00 	sub    $0x1f0,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 70 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x70>
  70:	48 33 c4             	xor    %rsp,%rax
  73:	48 89 85 20 01 00 00 	mov    %rax,0x120(%rbp)
  7a:	48 8b 84 24 48 02 00 	mov    0x248(%rsp),%rax
  81:	00 
  82:	4c 8b d9             	mov    %rcx,%r11
  85:	4c 63 8c 24 58 02 00 	movslq 0x258(%rsp),%r9
  8c:	00 
  8d:	48 63 9c 24 60 02 00 	movslq 0x260(%rsp),%rbx
  94:	00 
  95:	4c 8b 94 24 50 02 00 	mov    0x250(%rsp),%r10
  9c:	00 
  9d:	4c 89 45 40          	mov    %r8,0x40(%rbp)
  a1:	c5 fc 10 00          	vmovups (%rax),%ymm0
  a5:	c5 fc 11 85 00 01 00 	vmovups %ymm0,0x100(%rbp)
  ac:	00 
  ad:	4c 3b cb             	cmp    %rbx,%r9
  b0:	0f 8d b3 04 00 00    	jge    569 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x569>
  b6:	49 8b 4a 08          	mov    0x8(%r10),%rcx
  ba:	49 83 c3 02          	add    $0x2,%r11
  be:	8b 84 24 40 02 00 00 	mov    0x240(%rsp),%eax
  c5:	c5 7e 6f 25 00 00 00 	vmovdqu 0x0(%rip),%ymm12        # cd <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xcd>
  cc:	00 
  cd:	4c 8b 7d 40          	mov    0x40(%rbp),%r15
  d1:	99                   	cltd
  d2:	0f b6 d2             	movzbl %dl,%edx
  d5:	03 c2                	add    %edx,%eax
  d7:	4a 8d 14 89          	lea    (%rcx,%r9,4),%rdx
  db:	c1 f8 08             	sar    $0x8,%eax
  de:	48 63 f8             	movslq %eax,%rdi
  e1:	49 8b c1             	mov    %r9,%rax
  e4:	49 0f af c0          	imul   %r8,%rax
  e8:	4d 8b 42 10          	mov    0x10(%r10),%r8
  ec:	4c 2b c1             	sub    %rcx,%r8
  ef:	48 89 bd 90 00 00 00 	mov    %rdi,0x90(%rbp)
  f6:	4c 03 d8             	add    %rax,%r11
  f9:	4c 89 45 30          	mov    %r8,0x30(%rbp)
  fd:	49 8b 02             	mov    (%r10),%rax
 100:	4d 8b 42 18          	mov    0x18(%r10),%r8
 104:	48 2b c1             	sub    %rcx,%rax
 107:	4c 8b 95 10 01 00 00 	mov    0x110(%rbp),%r10
 10e:	4c 2b c1             	sub    %rcx,%r8
 111:	48 8b 8d 00 01 00 00 	mov    0x100(%rbp),%rcx
 118:	49 2b d9             	sub    %r9,%rbx
 11b:	4c 8b 8d 18 01 00 00 	mov    0x118(%rbp),%r9
 122:	48 8b 75 30          	mov    0x30(%rbp),%rsi
 126:	4c 89 45 38          	mov    %r8,0x38(%rbp)
 12a:	4c 8b 85 08 01 00 00 	mov    0x108(%rbp),%r8
 131:	4c 8b 75 38          	mov    0x38(%rbp),%r14
 135:	48 89 5d 58          	mov    %rbx,0x58(%rbp)
 139:	48 89 55 50          	mov    %rdx,0x50(%rbp)
 13d:	4c 89 5d 48          	mov    %r11,0x48(%rbp)
 141:	48 89 85 98 00 00 00 	mov    %rax,0x98(%rbp)
 148:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 14f:	00 
 150:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
 155:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15

000000000000015a <$LN10>:
 15a:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
 15e:	c5 7c 11 b5 a0 00 00 	vmovups %ymm14,0xa0(%rbp)
 165:	00 
 166:	c5 7c 11 bd c0 00 00 	vmovups %ymm15,0xc0(%rbp)
 16d:	00 
 16e:	c5 fc 11 95 e0 00 00 	vmovups %ymm2,0xe0(%rbp)
 175:	00 
 176:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
 17b:	48 85 ff             	test   %rdi,%rdi
 17e:	0f 8e 69 03 00 00    	jle    4ed <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4ed>
 184:	49 8b d0             	mov    %r8,%rdx
 187:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
 18b:	48 8b c1             	mov    %rcx,%rax
 18e:	48 89 7d 28          	mov    %rdi,0x28(%rbp)
 192:	49 2b c0             	sub    %r8,%rax
 195:	48 89 45 60          	mov    %rax,0x60(%rbp)
 199:	49 8b c2             	mov    %r10,%rax
 19c:	49 2b c0             	sub    %r8,%rax
 19f:	48 89 45 68          	mov    %rax,0x68(%rbp)
 1a3:	49 8b c1             	mov    %r9,%rax
 1a6:	49 2b c0             	sub    %r8,%rax
 1a9:	4d 8b c2             	mov    %r10,%r8
 1ac:	48 89 45 70          	mov    %rax,0x70(%rbp)
 1b0:	48 8b c1             	mov    %rcx,%rax
 1b3:	4c 2b c0             	sub    %rax,%r8
 1b6:	48 2b d0             	sub    %rax,%rdx
 1b9:	4c 89 85 80 00 00 00 	mov    %r8,0x80(%rbp)
 1c0:	49 8b cb             	mov    %r11,%rcx
 1c3:	4d 8b c1             	mov    %r9,%r8
 1c6:	48 89 4d 18          	mov    %rcx,0x18(%rbp)
 1ca:	4c 2b c0             	sub    %rax,%r8
 1cd:	48 89 55 78          	mov    %rdx,0x78(%rbp)
 1d1:	4c 89 85 88 00 00 00 	mov    %r8,0x88(%rbp)
 1d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 1df:	00 
 1e0:	c5 7a 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%xmm11        # 1e8 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1e8>
 1e7:	00 
 1e8:	c5 7e 6f 3d 00 00 00 	vmovdqu 0x0(%rip),%ymm15        # 1f0 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1f0>
 1ef:	00 
 1f0:	c5 7a 6f 35 00 00 00 	vmovdqu 0x0(%rip),%xmm14        # 1f8 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1f8>
 1f7:	00 
 1f8:	48 8d 58 04          	lea    0x4(%rax),%rbx
 1fc:	48 c7 45 10 04 00 00 	movq   $0x4,0x10(%rbp)
 203:	00 
 204:	48 03 da             	add    %rdx,%rbx
 207:	4c 8d 59 48          	lea    0x48(%rcx),%r11
 20b:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
 20f:	4c 8b d1             	mov    %rcx,%r10
 212:	c5 c1 ef ff          	vpxor  %xmm7,%xmm7,%xmm7
 216:	c4 41 39 ef c0       	vpxor  %xmm8,%xmm8,%xmm8

000000000000021b <$LN41>:
 21b:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
 220:	c4 41 29 ef d2       	vpxor  %xmm10,%xmm10,%xmm10
 225:	4c 89 5d 00          	mov    %r11,0x0(%rbp)
 229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 230:	4d 8b 62 20          	mov    0x20(%r10),%r12
 234:	4d 8b fb             	mov    %r11,%r15
 237:	4c 8b 5d 68          	mov    0x68(%rbp),%r11
 23b:	48 8b f3             	mov    %rbx,%rsi
 23e:	48 8b 5d 70          	mov    0x70(%rbp),%rbx
 242:	45 33 f6             	xor    %r14d,%r14d
 245:	4c 8b 6d 60          	mov    0x60(%rbp),%r13
 249:	bf 02 00 00 00       	mov    $0x2,%edi
 24e:	66 90                	xchg   %ax,%ax
 250:	41 0f b6 4f f8       	movzbl -0x8(%r15),%ecx
 255:	48 8d 76 20          	lea    0x20(%rsi),%rsi
 259:	41 0f b6 44 3a fe    	movzbl -0x2(%r10,%rdi,1),%eax
 25f:	48 8d 7f 04          	lea    0x4(%rdi),%rdi
 263:	44 8b c9             	mov    %ecx,%r9d
 266:	4d 8d 7f 01          	lea    0x1(%r15),%r15
 26a:	44 8b c1             	mov    %ecx,%r8d
 26d:	8b d1                	mov    %ecx,%edx
 26f:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 275:	83 e2 30             	and    $0x30,%edx
 278:	c1 e1 02             	shl    $0x2,%ecx
 27b:	41 83 e1 03          	and    $0x3,%r9d
 27f:	c1 e2 04             	shl    $0x4,%edx
 282:	41 83 e0 0c          	and    $0xc,%r8d
 286:	41 c1 e1 08          	shl    $0x8,%r9d
 28a:	4c 0b c8             	or     %rax,%r9
 28d:	41 c1 e0 06          	shl    $0x6,%r8d
 291:	41 0f b6 44 3a fb    	movzbl -0x5(%r10,%rdi,1),%eax
 297:	4c 0b c0             	or     %rax,%r8
 29a:	41 0f b6 44 3a fc    	movzbl -0x4(%r10,%rdi,1),%eax
 2a0:	48 0b d0             	or     %rax,%rdx
 2a3:	41 0f b6 44 3a fd    	movzbl -0x3(%r10,%rdi,1),%eax
 2a9:	48 0b c8             	or     %rax,%rcx
 2ac:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2b3 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2b3>
 2b3:	c4                   	.byte 0xc4
 2b4:	a1                   	.byte 0xa1
 2b5:	7a 7e                	jp     335 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x335>
 2b7:	0c                   	.byte 0xc

00000000000002b8 <$LN99>:
 2b8:	c8 c4 a3 f1          	enter  $0xa3c4,$0xf1
 2bc:	22 0c c0             	and    (%rax,%rax,8),%cl
 2bf:	01 c5                	add    %eax,%ebp
 2c1:	fa                   	cli
 2c2:	7e 04                	jle    2c8 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2c8>
 2c4:	d0 c4                	rol    $1,%ah
 2c6:	e3 f9                	jrcxz  2c1 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2c1>
 2c8:	22 04 c8             	and    (%rax,%rcx,8),%al
 2cb:	01 41 0f             	add    %eax,0xf(%rcx)
 2ce:	b6 57                	mov    $0x57,%dh
 2d0:	ff 49 8b             	decl   -0x75(%rcx)
 2d3:	cc                   	int3
 2d4:	c4 e3 75 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm6
 2da:	48                   	rex.W

00000000000002db <$LN30>:
 2db:	c1 e9 20             	shr    $0x20,%ecx
 2de:	49 8b c4             	mov    %r12,%rax
 2e1:	45 85 f6             	test   %r14d,%r14d
 2e4:	48 0f 45 c1          	cmovne %rcx,%rax
 2e8:	41 ff c6             	inc    %r14d
 2eb:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2ef:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 2f4:	c4                   	.byte 0xc4
 2f5:	c2                   	.byte 0xc2

00000000000002f6 <$LN44>:
 2f6:	79 00                	jns    2f8 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2f8>
 2f8:	cb                   	lret
 2f9:	c4 c2 79 00 c6       	vpshufb %xmm14,%xmm0,%xmm0
 2fe:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 304:	c4 c1 75 db d4       	vpand  %ymm12,%ymm1,%ymm2
 309:	c4 c1 6d 74 dc       	vpcmpeqb %ymm12,%ymm2,%ymm3
 30e:	c4 c1 65 eb ef       	vpor   %ymm15,%ymm3,%ymm5
 313:	0f b6 c2             	movzbl %dl,%eax
 316:	80 e2 0f             	and    $0xf,%dl
 319:	c0 e8 04             	shr    $0x4,%al
 31c:	0f b6 c8             	movzbl %al,%ecx
 31f:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 326:	00 
 327:	98                   	cwtl
 328:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 32c:	c4 e2 79 79 c9       	vpbroadcastw %xmm1,%xmm1
 331:	0f b6 c2             	movzbl %dl,%eax
 334:	66 03 c0             	add    %ax,%ax
 337:	66 ff c0             	inc    %ax
 33a:	98                   	cwtl
 33b:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 33f:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
 344:	c4 e3 7d 38 e1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm4
 34a:	c4 a1 7e 6f 4c 2e e0 	vmovdqu -0x20(%rsi,%r13,1),%ymm1
 351:	c4 e2 75 08 c5       	vpsignb %ymm5,%ymm1,%ymm0
 356:	c4 e2 4d 04 d0       	vpmaddubsw %ymm0,%ymm6,%ymm2
 35b:	c5 fe 6f 46 e0       	vmovdqu -0x20(%rsi),%ymm0
 360:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 364:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 369:	c4 c1 7e 6f 44 33 e0 	vmovdqu -0x20(%r11,%rsi,1),%ymm0
 370:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 375:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 37a:	c5 fe 6f 44 33 e0    	vmovdqu -0x20(%rbx,%rsi,1),%ymm0
 380:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 384:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 388:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 38d:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 392:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 396:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 39b:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 3a0:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 3a5:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 3a9:	c4 41 65 fe d2       	vpaddd %ymm10,%ymm3,%ymm10
 3ae:	41 83 fe 02          	cmp    $0x2,%r14d
 3b2:	0f 8c 98 fe ff ff    	jl     250 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x250>
 3b8:	4c 8b 5d 00          	mov    0x0(%rbp),%r11
 3bc:	49 83 c2 08          	add    $0x8,%r10
 3c0:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
 3c4:	49 83 c3 02          	add    $0x2,%r11
 3c8:	48 83 c3 40          	add    $0x40,%rbx
 3cc:	4c 89 5d 00          	mov    %r11,0x0(%rbp)
 3d0:	48 83 6d 10 01       	subq   $0x1,0x10(%rbp)
 3d5:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
 3d9:	0f 85 51 fe ff ff    	jne    230 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x230>
 3df:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
 3e3:	4c 8b 85 80 00 00 00 	mov    0x80(%rbp),%r8
 3ea:	c5 7c 10 b5 a0 00 00 	vmovups 0xa0(%rbp),%ymm14
 3f1:	00 
 3f2:	c5 7c 10 bd c0 00 00 	vmovups 0xc0(%rbp),%ymm15
 3f9:	00 
 3fa:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 3fe:	48 83 c1 52          	add    $0x52,%rcx
 402:	48 8b 55 78          	mov    0x78(%rbp),%rdx
 406:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 40a:	48 8b 45 20          	mov    0x20(%rbp),%rax
 40e:	c4 e2 79 13 c8       	vcvtph2ps %xmm0,%xmm1
 413:	c5 f2 59 1d 00 00 00 	vmulss 0x0(%rip),%xmm1,%xmm3        # 41b <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x41b>
 41a:	00 
 41b:	c5 fc 5b d7          	vcvtdq2ps %ymm7,%ymm2
 41f:	c5 e2 59 00          	vmulss (%rax),%xmm3,%xmm0
 423:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 428:	c4 62 7d b8 ea       	vfmadd231ps %ymm2,%ymm0,%ymm13
 42d:	c5 e2 59 04 10       	vmulss (%rax,%rdx,1),%xmm3,%xmm0
 432:	c5 fc 10 95 e0 00 00 	vmovups 0xe0(%rbp),%ymm2
 439:	00 
 43a:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 43f:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 444:	c4 62 7d b8 f1       	vfmadd231ps %ymm1,%ymm0,%ymm14
 449:	c4 c1 62 59 04 00    	vmulss (%r8,%rax,1),%xmm3,%xmm0
 44f:	4c 8b 85 88 00 00 00 	mov    0x88(%rbp),%r8
 456:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 45b:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 460:	c4 62 7d b8 f9       	vfmadd231ps %ymm1,%ymm0,%ymm15
 465:	c4 c1 62 59 04 00    	vmulss (%r8,%rax,1),%xmm3,%xmm0
 46b:	48 05 24 01 00 00    	add    $0x124,%rax
 471:	48 89 4d 18          	mov    %rcx,0x18(%rbp)
 475:	48 83 6d 28 01       	subq   $0x1,0x28(%rbp)
 47a:	c4                   	.byte 0xc4

000000000000047b <$LN111>:
 47b:	e2 7d                	loop   4fa <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4fa>

000000000000047d <$LN67>:
 47d:	18 c0                	sbb    %al,%al
 47f:	c4 c1 7c 5b ca       	vcvtdq2ps %ymm10,%ymm1
 484:	c4 e2 7d b8 d1       	vfmadd231ps %ymm1,%ymm0,%ymm2
 489:	c5 fc 11 95 e0 00 00 	vmovups %ymm2,0xe0(%rbp)
 490:	00 
 491:	c5 7c 11 b5 a0 00 00 	vmovups %ymm14,0xa0(%rbp)
 498:	00 
 499:	c5 7c 11 bd c0 00 00 	vmovups %ymm15,0xc0(%rbp)
 4a0:	00 
 4a1:	48 89 45 20          	mov    %rax,0x20(%rbp)
 4a5:	0f 85 35 fd ff ff    	jne    1e0 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1e0>
 4ab:	48 8b 55 50          	mov    0x50(%rbp),%rdx
 4af:	4c 8b 85 08 01 00 00 	mov    0x108(%rbp),%r8
 4b6:	4c 8b 5d 48          	mov    0x48(%rbp),%r11
 4ba:	48 8b 5d 58          	mov    0x58(%rbp),%rbx
 4be:	48 8b bd 90 00 00 00 	mov    0x90(%rbp),%rdi
 4c5:	4c 8b 8d 18 01 00 00 	mov    0x118(%rbp),%r9
 4cc:	4c 8b 95 10 01 00 00 	mov    0x110(%rbp),%r10
 4d3:	48 8b 8d 00 01 00 00 	mov    0x100(%rbp),%rcx
 4da:	48 8b 85 98 00 00 00 	mov    0x98(%rbp),%rax
 4e1:	48 8b 75 30          	mov    0x30(%rbp),%rsi
 4e5:	4c 8b 75 38          	mov    0x38(%rbp),%r14
 4e9:	4c 8b 7d 40          	mov    0x40(%rbp),%r15
 4ed:	4d 03 df             	add    %r15,%r11
 4f0:	c4 63 7d 19 e8 01    	vextractf128 $0x1,%ymm13,%xmm0
 4f6:	c4 c1 78 58 c5       	vaddps %xmm13,%xmm0,%xmm0
 4fb:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 4ff:	c5 f3 7c e9          	vhaddps %xmm1,%xmm1,%xmm5
 503:	c5 fa 11 2c 02       	vmovss %xmm5,(%rdx,%rax,1)
 508:	c4 63 7d 19 f0 01    	vextractf128 $0x1,%ymm14,%xmm0
 50e:	c4 c1 78 58 c6       	vaddps %xmm14,%xmm0,%xmm0
 513:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 517:	c5 f3 7c e1          	vhaddps %xmm1,%xmm1,%xmm4
 51b:	c5 fa 11 22          	vmovss %xmm4,(%rdx)
 51f:	c4 63 7d 19 f8 01    	vextractf128 $0x1,%ymm15,%xmm0
 525:	c4 c1 78 58 c7       	vaddps %xmm15,%xmm0,%xmm0
 52a:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 52e:	c4 e3 7d 19 d0 01    	vextractf128 $0x1,%ymm2,%xmm0
 534:	c5 f8 58 c2          	vaddps %xmm2,%xmm0,%xmm0
 538:	c5 f3 7c d9          	vhaddps %xmm1,%xmm1,%xmm3
 53c:	c5 fa 11 1c 16       	vmovss %xmm3,(%rsi,%rdx,1)
 541:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 545:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 549:	c4 c1 7a 11 14 16    	vmovss %xmm2,(%r14,%rdx,1)
 54f:	48 83 c2 04          	add    $0x4,%rdx
 553:	4c 89 5d 48          	mov    %r11,0x48(%rbp)
 557:	48 83 eb 01          	sub    $0x1,%rbx
 55b:	48 89 55 50          	mov    %rdx,0x50(%rbp)
 55f:	48 89 5d 58          	mov    %rbx,0x58(%rbp)
 563:	0f 85 e7 fb ff ff    	jne    150 <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x150>
 569:	c5 f8 77             	vzeroupper
 56c:	48 8b 8d 20 01 00 00 	mov    0x120(%rbp),%rcx
 573:	48 33 cc             	xor    %rsp,%rcx
 576:	e8 00 00 00 00       	call   57b <??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x57b>
 57b:	4c 8d 9c 24 f0 01 00 	lea    0x1f0(%rsp),%r11
 582:	00 
 583:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 587:	49 8b 73 38          	mov    0x38(%r11),%rsi
 58b:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 58f:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 595:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 59b:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 5a1:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 5a7:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 5ad:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 5b3:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 5b9:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 5bf:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 5c6:	ff ff 
 5c8:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 5cf:	ff ff 
 5d1:	49 8b e3             	mov    %r11,%rsp
 5d4:	41 5f                	pop    %r15
 5d6:	41 5e                	pop    %r14
 5d8:	41 5d                	pop    %r13
 5da:	41 5c                	pop    %r12
 5dc:	5d                   	pop    %rbp
 5dd:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 74 24 70    	vmovaps %xmm14,0x70(%rsp)
  56:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  5b:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  5f:	48 8b 9c 24 58 01 00 	mov    0x158(%rsp),%rbx
  66:	00 
  67:	49 8b f0             	mov    %r8,%rsi
  6a:	4c 63 94 24 68 01 00 	movslq 0x168(%rsp),%r10
  71:	00 
  72:	4c 8b da             	mov    %rdx,%r11
  75:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  7c:	00 
  7d:	4c 89 45 08          	mov    %r8,0x8(%rbp)
  81:	4c 63 84 24 70 01 00 	movslq 0x170(%rsp),%r8
  88:	00 
  89:	48 8b 1b             	mov    (%rbx),%rbx
  8c:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
  90:	4d 3b d0             	cmp    %r8,%r10
  93:	0f 8d 6c 03 00 00    	jge    405 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x405>
  99:	8b 84 24 50 01 00 00 	mov    0x150(%rsp),%eax
  a0:	c5 7a 10 2d 00 00 00 	vmovss 0x0(%rip),%xmm13        # a8 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xa8>
  a7:	00 
  a8:	c5 fa 6f 3d 00 00 00 	vmovdqu 0x0(%rip),%xmm7        # b0 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xb0>
  af:	00 
  b0:	c5 7a 10 35 00 00 00 	vmovss 0x0(%rip),%xmm14        # b8 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xb8>
  b7:	00 
  b8:	99                   	cltd
  b9:	0f b6 d2             	movzbl %dl,%edx
  bc:	03 c2                	add    %edx,%eax
  be:	c1 f8 08             	sar    $0x8,%eax
  c1:	4c 63 e8             	movslq %eax,%r13
  c4:	48 8b 07             	mov    (%rdi),%rax
  c7:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
  cc:	4a 8d 14 90          	lea    (%rax,%r10,4),%rdx
  d0:	49 8b c2             	mov    %r10,%rax
  d3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  d7:	49 8b d2             	mov    %r10,%rdx
  da:	49 0f af d1          	imul   %r9,%rdx
  de:	48 0f af c6          	imul   %rsi,%rax
  e2:	49 03 d3             	add    %r11,%rdx
  e5:	48 89 55 00          	mov    %rdx,0x0(%rbp)
  e9:	48 03 c1             	add    %rcx,%rax
  ec:	4d 2b c2             	sub    %r10,%r8
  ef:	48 89 45 10          	mov    %rax,0x10(%rbp)
  f3:	4c 89 45 20          	mov    %r8,0x20(%rbp)
  f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  fe:	00 00 
 100:	c5 fa 6f 35 00 00 00 	vmovdqu 0x0(%rip),%xmm6        # 108 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x108>
 107:	00 
 108:	c5 7e 6f 05 00 00 00 	vmovdqu 0x0(%rip),%ymm8        # 110 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x110>
 10f:	00 
 110:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
 115:	4d 85 ed             	test   %r13,%r13
 118:	0f 8e 32 01 00 00    	jle    250 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x250>
 11e:	c4 41 29 ef d2       	vpxor  %xmm10,%xmm10,%xmm10
 123:	4c 8b fb             	mov    %rbx,%r15
 126:	48 8b f0             	mov    %rax,%rsi
 129:	4d 8b e5             	mov    %r13,%r12
 12c:	0f 1f 40 00          	nopl   0x0(%rax)
 130:	44 0f b7 76 02       	movzwl 0x2(%rsi),%r14d
 135:	4d 8d 5f 04          	lea    0x4(%r15),%r11
 139:	45 33 c9             	xor    %r9d,%r9d
 13c:	c4 c1 7e 6f ea       	vmovdqu %ymm10,%ymm5
 141:	0f 1f 40 00          	nopl   0x0(%rax)
 145:	66 66 66 0f 1f 84 00 	data16 data16 nopw 0x0(%rax,%rax,1)
 14c:	00 00 00 00 
 150:	45 8b c1             	mov    %r9d,%r8d
 153:	47 8d 14 09          	lea    (%r9,%r9,1),%r10d
 157:	41                   	rex.B
 158:	c1                   	.byte 0xc1
 159:	e0                   	.byte 0xe0

000000000000015a <$LN10>:
 15a:	05 bf 02 00 00       	add    $0x2bf,%eax
 15f:	00 49 63             	add    %cl,0x63(%rcx)
 162:	c0 41 0f b6          	rolb   $0xb6,0xf(%rcx)
 166:	ca 80 e1             	lret   $0xe180
 169:	01 41 83             	add    %eax,-0x7d(%rcx)
 16c:	c0 10 c0             	rclb   $0xc0,(%rax)
 16f:	e1 02                	loope  173 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x173>
 171:	c5 fa 6f 54 30 08    	vmovdqu 0x8(%rax,%rsi,1),%xmm2
 177:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 17c:	c5 f9 db cf          	vpand  %xmm7,%xmm0,%xmm1
 180:	c4 e2 49 00 d9       	vpshufb %xmm1,%xmm6,%xmm3
 185:	c5 e9 db d7          	vpand  %xmm7,%xmm2,%xmm2
 189:	c4 e2 49 00 c2       	vpshufb %xmm2,%xmm6,%xmm0
 18e:	c4 e3 7d 38 e3 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm4
 194:	c4 c1 7e 6f 03       	vmovdqu (%r11),%ymm0
 199:	49 63 c2             	movslq %r10d,%rax
 19c:	49 83 c3 20          	add    $0x20,%r11
 1a0:	48 d1 f8             	sar    $1,%rax
 1a3:	c4 e2 3d 08 cc       	vpsignb %ymm4,%ymm8,%ymm1
 1a8:	c4 e2 7d 08 d1       	vpsignb %ymm1,%ymm0,%ymm2
 1ad:	c4 e2 5d 08 cc       	vpsignb %ymm4,%ymm4,%ymm1
 1b2:	0f b6 44 30 04       	movzbl 0x4(%rax,%rsi,1),%eax
 1b7:	d2 e8                	shr    %cl,%al
 1b9:	41 0f b6 ca          	movzbl %r10b,%ecx
 1bd:	24 0f                	and    $0xf,%al
 1bf:	02 c9                	add    %cl,%cl
 1c1:	0f b6 d0             	movzbl %al,%edx
 1c4:	41 ff c2             	inc    %r10d
 1c7:	41 0f b7 c6          	movzwl %r14w,%eax
 1cb:	66 d3 e8             	shr    %cl,%ax
 1ce:	66 83 e0 03          	and    $0x3,%ax
 1d2:	66 c1 e0 04          	shl    $0x4,%ax
 1d6:	66 0b c2             	or     %dx,%ax
 1d9:	66 83 e8 20          	sub    $0x20,%ax
 1dd:	98                   	cwtl
 1de:	c5 f9 6e d8          	vmovd  %eax,%xmm3
 1e2:	c4 e2 7d 79 db       	vpbroadcastw %xmm3,%ymm3
 1e7:	c4 e2 75 04 d2       	vpmaddubsw %ymm2,%ymm1,%ymm2
 1ec:	c5 ed f5 c3          	vpmaddwd %ymm3,%ymm2,%ymm0
 1f0:	c5 fd fe ed          	vpaddd %ymm5,%ymm0,%ymm5
 1f4:	48 83 ef 01          	sub    $0x1,%rdi
 1f8:	0f 85 62 ff ff ff    	jne    160 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x160>
 1fe:	41 ff c1             	inc    %r9d
 201:	41 83 f9 04          	cmp    $0x4,%r9d
 205:	0f 8c 45 ff ff ff    	jl     150 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x150>
 20b:	0f b7 06             	movzwl (%rsi),%eax
 20e:	48 81 c6 88 00 00 00 	add    $0x88,%rsi
 215:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 219:	c4                   	.byte 0xc4
 21a:	e2                   	.byte 0xe2

000000000000021b <$LN41>:
 21b:	79 13                	jns    230 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x230>
 21d:	c8 c4 c1 72          	enter  $0xc1c4,$0x72
 221:	59                   	pop    %rcx
 222:	17                   	(bad)
 223:	49 81 c7 24 01 00 00 	add    $0x124,%r15
 22a:	c4 e2 7d 18 d2       	vbroadcastss %xmm2,%ymm2
 22f:	c5 fc 5b dd          	vcvtdq2ps %ymm5,%ymm3
 233:	c4 62 6d b8 cb       	vfmadd231ps %ymm3,%ymm2,%ymm9
 238:	49 83 ec 01          	sub    $0x1,%r12
 23c:	0f 85 ee fe ff ff    	jne    130 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x130>
 242:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 246:	48 8b 75 08          	mov    0x8(%rbp),%rsi
 24a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 250:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
 256:	c4 c1 78 58 c1       	vaddps %xmm9,%xmm0,%xmm0
 25b:	45 33 e4             	xor    %r12d,%r12d
 25e:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 262:	c5 73 7c d9          	vhaddps %xmm1,%xmm1,%xmm11
 266:	c4 41 7c 10 cc       	vmovups %ymm12,%ymm9
 26b:	4d 85 ed             	test   %r13,%r13
 26e:	0f 8e 2c 01 00 00    	jle    3a0 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3a0>
 274:	c4 41 29 ef d2       	vpxor  %xmm10,%xmm10,%xmm10
 279:	4c 8b fb             	mov    %rbx,%r15
 27c:	48 8b f2             	mov    %rdx,%rsi
 27f:	90                   	nop
 280:	44 0f b7 76 02       	movzwl 0x2(%rsi),%r14d
 285:	4d 8d 57 04          	lea    0x4(%r15),%r10
 289:	45 33 c0             	xor    %r8d,%r8d
 28c:	c4 c1 7e 6f ea       	vmovdqu %ymm10,%ymm5
 291:	0f 1f 40 00          	nopl   0x0(%rax)
 295:	66 66 66 0f 1f 84 00 	data16 data16 nopw 0x0(%rax,%rax,1)
 29c:	00 00 00 00 
 2a0:	45 8b c8             	mov    %r8d,%r9d
 2a3:	47 8d 1c 00          	lea    (%r8,%r8,1),%r11d
 2a7:	41 c1 e1 05          	shl    $0x5,%r9d
 2ab:	bf 02 00 00 00       	mov    $0x2,%edi
 2b0:	49 63 c1             	movslq %r9d,%rax
 2b3:	41 0f b6 cb          	movzbl %r11b,%ecx
 2b7:	80                   	.byte 0x80

00000000000002b8 <$LN99>:
 2b8:	e1 01                	loope  2bb <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2bb>
 2ba:	41 83 c1 10          	add    $0x10,%r9d
 2be:	c0 e1 02             	shl    $0x2,%cl
 2c1:	c5 fa 6f 54 30 08    	vmovdqu 0x8(%rax,%rsi,1),%xmm2
 2c7:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 2cc:	c5 f9 db cf          	vpand  %xmm7,%xmm0,%xmm1
 2d0:	c4 e2 49 00 d9       	vpshufb %xmm1,%xmm6,%xmm3
 2d5:	c5 e9 db d7          	vpand  %xmm7,%xmm2,%xmm2
 2d9:	c4                   	.byte 0xc4
 2da:	e2                   	.byte 0xe2

00000000000002db <$LN30>:
 2db:	49 00 c2             	rex.WB add %al,%r10b
 2de:	c4 e3 7d 38 e3 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm4
 2e4:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 2e9:	49 63 c3             	movslq %r11d,%rax
 2ec:	49 83 c2 20          	add    $0x20,%r10
 2f0:	48 d1 f8             	sar    $1,%rax
 2f3:	c4                   	.byte 0xc4
 2f4:	e2 3d                	loop   333 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x333>

00000000000002f6 <$LN44>:
 2f6:	08 cc                	or     %cl,%ah
 2f8:	c4 e2 7d 08 d1       	vpsignb %ymm1,%ymm0,%ymm2
 2fd:	c4 e2 5d 08 cc       	vpsignb %ymm4,%ymm4,%ymm1
 302:	0f b6 44 30 04       	movzbl 0x4(%rax,%rsi,1),%eax
 307:	d2 e8                	shr    %cl,%al
 309:	41 0f b6 cb          	movzbl %r11b,%ecx
 30d:	24 0f                	and    $0xf,%al
 30f:	02 c9                	add    %cl,%cl
 311:	0f b6 d0             	movzbl %al,%edx
 314:	41 ff c3             	inc    %r11d
 317:	41 0f b7 c6          	movzwl %r14w,%eax
 31b:	66 d3 e8             	shr    %cl,%ax
 31e:	66 83 e0 03          	and    $0x3,%ax
 322:	66 c1 e0 04          	shl    $0x4,%ax
 326:	66 0b c2             	or     %dx,%ax
 329:	66 83 e8 20          	sub    $0x20,%ax
 32d:	98                   	cwtl
 32e:	c5 f9 6e d8          	vmovd  %eax,%xmm3
 332:	c4 e2 7d 79 db       	vpbroadcastw %xmm3,%ymm3
 337:	c4 e2 75 04 d2       	vpmaddubsw %ymm2,%ymm1,%ymm2
 33c:	c5 ed f5 c3          	vpmaddwd %ymm3,%ymm2,%ymm0
 340:	c5 fd fe ed          	vpaddd %ymm5,%ymm0,%ymm5
 344:	48 83 ef 01          	sub    $0x1,%rdi
 348:	0f 85 62 ff ff ff    	jne    2b0 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2b0>
 34e:	41 ff c0             	inc    %r8d
 351:	41 83 f8 04          	cmp    $0x4,%r8d
 355:	0f 8c 45 ff ff ff    	jl     2a0 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2a0>
 35b:	0f b7 06             	movzwl (%rsi),%eax
 35e:	49 ff c4             	inc    %r12
 361:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 365:	c4 e2 79 13 c8       	vcvtph2ps %xmm0,%xmm1
 36a:	c4 c1 72 59 17       	vmulss (%r15),%xmm1,%xmm2
 36f:	49 81 c7 24 01 00 00 	add    $0x124,%r15
 376:	48 81 c6 88 00 00 00 	add    $0x88,%rsi
 37d:	c4 e2 7d 18 d2       	vbroadcastss %xmm2,%ymm2
 382:	c5 fc 5b dd          	vcvtdq2ps %ymm5,%ymm3
 386:	c4 62 6d b8 cb       	vfmadd231ps %ymm3,%ymm2,%ymm9
 38b:	4d 3b e5             	cmp    %r13,%r12
 38e:	0f 8c ec fe ff ff    	jl     280 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x280>
 394:	48 8b 75 08          	mov    0x8(%rbp),%rsi
 398:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 39f:	00 
 3a0:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
 3a6:	c4 c1 78 58 c1       	vaddps %xmm9,%xmm0,%xmm0
 3ab:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3af:	c5 f3 7c f1          	vhaddps %xmm1,%xmm1,%xmm6
 3b3:	c4 c1 20 57 c5       	vxorps %xmm13,%xmm11,%xmm0
 3b8:	c5 f8 77             	vzeroupper
 3bb:	e8 00 00 00 00       	call   3c0 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3c0>
 3c0:	4c 8b 4d 18          	mov    0x18(%rbp),%r9
 3c4:	48 8b 45 10          	mov    0x10(%rbp),%rax
 3c8:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 3cc:	48 03 c6             	add    %rsi,%rax
 3cf:	48 03 55 28          	add    0x28(%rbp),%rdx
 3d3:	c4 c1 7a 58 ce       	vaddss %xmm14,%xmm0,%xmm1
 3d8:	c5 a2 5e d1          	vdivss %xmm1,%xmm11,%xmm2
 3dc:	c5 ea 59 de          	vmulss %xmm6,%xmm2,%xmm3
 3e0:	c4 c1 7a 11 19       	vmovss %xmm3,(%r9)
 3e5:	49 83 c1 04          	add    $0x4,%r9
 3e9:	48 89 45 10          	mov    %rax,0x10(%rbp)
 3ed:	48 83 6d 20 01       	subq   $0x1,0x20(%rbp)
 3f2:	48 89 55 00          	mov    %rdx,0x0(%rbp)
 3f6:	4c 89 4d 18          	mov    %r9,0x18(%rbp)
 3fa:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
 3ff:	0f 85 fb fc ff ff    	jne    100 <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x100>
 405:	4c 8d 9c 24 00 01 00 	lea    0x100(%rsp),%r11
 40c:	00 
 40d:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 411:	49 8b 73 38          	mov    0x38(%r11),%rsi
 415:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 419:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 41f:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 425:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 42b:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 431:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 437:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 43d:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 443:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 449:	c5 78 28 74 24 70    	vmovaps 0x70(%rsp),%xmm14
 44f:	49 8b e3             	mov    %r11,%rsp
 452:	41 5f                	pop    %r15
 454:	41 5e                	pop    %r14
 456:	41 5d                	pop    %r13
 458:	41 5c                	pop    %r12
 45a:	5d                   	pop    %rbp
 45b:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 5c 24 40    	vmovaps %xmm11,0x40(%rsp)
  3e:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  43:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  47:	4c 8b 8c 24 f8 00 00 	mov    0xf8(%rsp),%r9
  4e:	00 
  4f:	49 8b d8             	mov    %r8,%rbx
  52:	4c 63 94 24 08 01 00 	movslq 0x108(%rsp),%r10
  59:	00 
  5a:	4c 63 84 24 10 01 00 	movslq 0x110(%rsp),%r8
  61:	00 
  62:	4c 8b 9c 24 00 01 00 	mov    0x100(%rsp),%r11
  69:	00 
  6a:	4d 8b 09             	mov    (%r9),%r9
  6d:	48 89 5d 18          	mov    %rbx,0x18(%rbp)
  71:	4d 3b d0             	cmp    %r8,%r10
  74:	0f 8d c6 01 00 00    	jge    240 <??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x240>
  7a:	8b 84 24 f0 00 00 00 	mov    0xf0(%rsp),%eax
  81:	4d 8b ea             	mov    %r10,%r13
  84:	c5 7e 6f 05 00 00 00 	vmovdqu 0x0(%rip),%ymm8        # 8c <??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x8c>
  8b:	00 
  8c:	c5 fa 6f 3d 00 00 00 	vmovdqu 0x0(%rip),%xmm7        # 94 <??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x94>
  93:	00 
  94:	99                   	cltd
  95:	4c 0f af eb          	imul   %rbx,%r13
  99:	0f b6 d2             	movzbl %dl,%edx
  9c:	03 c2                	add    %edx,%eax
  9e:	4c 03 e9             	add    %rcx,%r13
  a1:	c1 f8 08             	sar    $0x8,%eax
  a4:	48 63 d0             	movslq %eax,%rdx
  a7:	4d 2b c2             	sub    %r10,%r8
  aa:	49 8b 03             	mov    (%r11),%rax
  ad:	4c 89 45 08          	mov    %r8,0x8(%rbp)
  b1:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
  b6:	48 89 55 10          	mov    %rdx,0x10(%rbp)
  ba:	4a 8d 04 90          	lea    (%rax,%r10,4),%rax
  be:	48 89 45 00          	mov    %rax,0x0(%rbp)
  c2:	c4 41 7c 10 cb       	vmovups %ymm11,%ymm9
  c7:	48 85 d2             	test   %rdx,%rdx
  ca:	0f 8e 40 01 00 00    	jle    210 <??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x210>
  d0:	c5 fa 6f 35 00 00 00 	vmovdqu 0x0(%rip),%xmm6        # d8 <??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd8>
  d7:	00 
  d8:	c4 41 29 ef d2       	vpxor  %xmm10,%xmm10,%xmm10
  dd:	4d 8b f9             	mov    %r9,%r15
  e0:	49 8b f5             	mov    %r13,%rsi
  e3:	4c 8b e2             	mov    %rdx,%r12
  e6:	66 66 0f 1f 84 00 00 	data16 nopw 0x0(%rax,%rax,1)
  ed:	00 00 00 
  f0:	44 0f b7 76 02       	movzwl 0x2(%rsi),%r14d
  f5:	4d 8d 5f 04          	lea    0x4(%r15),%r11
  f9:	45 33 c0             	xor    %r8d,%r8d
  fc:	c4 c1 7e 6f ea       	vmovdqu %ymm10,%ymm5
 101:	0f 1f 40 00          	nopl   0x0(%rax)
 105:	66 66 66 0f 1f 84 00 	data16 data16 nopw 0x0(%rax,%rax,1)
 10c:	00 00 00 00 
 110:	45 8b d0             	mov    %r8d,%r10d
 113:	43 8d 1c 00          	lea    (%r8,%r8,1),%ebx
 117:	41 c1 e2 05          	shl    $0x5,%r10d
 11b:	bf 02 00 00 00       	mov    $0x2,%edi
 120:	49 63 c2             	movslq %r10d,%rax
 123:	0f b6 cb             	movzbl %bl,%ecx
 126:	80 e1 01             	and    $0x1,%cl
 129:	41 83 c2 10          	add    $0x10,%r10d
 12d:	c0 e1 02             	shl    $0x2,%cl
 130:	c5 fa 6f 54 30 08    	vmovdqu 0x8(%rax,%rsi,1),%xmm2
 136:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 13b:	c5 f9 db cf          	vpand  %xmm7,%xmm0,%xmm1
 13f:	c4 e2 49 00 d9       	vpshufb %xmm1,%xmm6,%xmm3
 144:	c5 e9 db d7          	vpand  %xmm7,%xmm2,%xmm2
 148:	c4 e2 49 00 c2       	vpshufb %xmm2,%xmm6,%xmm0
 14d:	c4 e3 7d 38 e3 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm4
 153:	c4 c1 7e 6f 03       	vmovdqu (%r11),%ymm0
 158:	48                   	rex.W
 159:	63                   	.byte 0x63

000000000000015a <$LN10>:
 15a:	c3                   	ret
 15b:	49 83 c3 20          	add    $0x20,%r11
 15f:	48 d1 f8             	sar    $1,%rax
 162:	c4 e2 3d 08 cc       	vpsignb %ymm4,%ymm8,%ymm1
 167:	c4 e2 7d 08 d1       	vpsignb %ymm1,%ymm0,%ymm2
 16c:	c4 e2 5d 08 cc       	vpsignb %ymm4,%ymm4,%ymm1
 171:	0f b6 44 30 04       	movzbl 0x4(%rax,%rsi,1),%eax
 176:	d2 e8                	shr    %cl,%al
 178:	0f b6 cb             	movzbl %bl,%ecx
 17b:	24 0f                	and    $0xf,%al
 17d:	02 c9                	add    %cl,%cl
 17f:	0f b6 d0             	movzbl %al,%edx
 182:	ff c3                	inc    %ebx
 184:	41 0f b7 c6          	movzwl %r14w,%eax
 188:	66 d3 e8             	shr    %cl,%ax
 18b:	66 83 e0 03          	and    $0x3,%ax
 18f:	66 c1 e0 04          	shl    $0x4,%ax
 193:	66 0b c2             	or     %dx,%ax
 196:	66 83 e8 20          	sub    $0x20,%ax
 19a:	98                   	cwtl
 19b:	c5 f9 6e d8          	vmovd  %eax,%xmm3
 19f:	c4 e2 7d 79 db       	vpbroadcastw %xmm3,%ymm3
 1a4:	c4 e2 75 04 d2       	vpmaddubsw %ymm2,%ymm1,%ymm2
 1a9:	c5 ed f5 c3          	vpmaddwd %ymm3,%ymm2,%ymm0
 1ad:	c5 fd fe ed          	vpaddd %ymm5,%ymm0,%ymm5
 1b1:	48 83 ef 01          	sub    $0x1,%rdi
 1b5:	0f 85 65 ff ff ff    	jne    120 <??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x120>
 1bb:	41 ff c0             	inc    %r8d
 1be:	41 83 f8 04          	cmp    $0x4,%r8d
 1c2:	0f 8c 48 ff ff ff    	jl     110 <??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x110>
 1c8:	0f b7 06             	movzwl (%rsi),%eax
 1cb:	48 81 c6 88 00 00 00 	add    $0x88,%rsi
 1d2:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 1d6:	c4 e2 79 13 c8       	vcvtph2ps %xmm0,%xmm1
 1db:	c4 c1 72 59 17       	vmulss (%r15),%xmm1,%xmm2
 1e0:	49 81 c7 24 01 00 00 	add    $0x124,%r15
 1e7:	c4 e2 7d 18 d2       	vbroadcastss %xmm2,%ymm2
 1ec:	c5 fc 5b dd          	vcvtdq2ps %ymm5,%ymm3
 1f0:	c4 62 6d b8 cb       	vfmadd231ps %ymm3,%ymm2,%ymm9
 1f5:	49 83 ec 01          	sub    $0x1,%r12
 1f9:	0f 85 f1 fe ff ff    	jne    f0 <??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xf0>
 1ff:	48 8b 45 00          	mov    0x0(%rbp),%rax
 203:	4c 8b 45 08          	mov    0x8(%rbp),%r8
 207:	48 8b 55 10          	mov    0x10(%rbp),%rdx
 20b:	48 8b 5d 18          	mov    0x18(%rbp),%rbx
 20f:	90                   	nop
 210:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
 216:	c4 c1 78 58 c1       	vaddps %xmm9,%xmm0,%xmm0

000000000000021b <$LN41>:
 21b:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 21f:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 223:	c5 fa 11 10          	vmovss %xmm2,(%rax)
 227:	48 83 c0 04          	add    $0x4,%rax
 22b:	4c 03 eb             	add    %rbx,%r13
 22e:	49 83 e8 01          	sub    $0x1,%r8
 232:	48 89 45 00          	mov    %rax,0x0(%rbp)
 236:	4c 89 45 08          	mov    %r8,0x8(%rbp)
 23a:	0f 85 82 fe ff ff    	jne    c2 <??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc2>
 240:	c5 f8 77             	vzeroupper
 243:	4c 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%r11
 24a:	00 
 24b:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 24f:	49 8b 73 38          	mov    0x38(%r11),%rsi
 253:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 257:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 25d:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 263:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 269:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 26f:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 275:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 27b:	49 8b e3             	mov    %r11,%rsp
 27e:	41 5f                	pop    %r15
 280:	41 5e                	pop    %r14
 282:	41 5d                	pop    %r13
 284:	41 5c                	pop    %r12
 286:	5d                   	pop    %rbp
 287:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 8b 84 24 98 01 00 	mov    0x198(%rsp),%rax
  70:	00 
  71:	4d 8b f1             	mov    %r9,%r14
  74:	4c 63 94 24 a8 01 00 	movslq 0x1a8(%rsp),%r10
  7b:	00 
  7c:	4d 8b f8             	mov    %r8,%r15
  7f:	48 63 b4 24 b0 01 00 	movslq 0x1b0(%rsp),%rsi
  86:	00 
  87:	48 8b da             	mov    %rdx,%rbx
  8a:	4c 8b 9c 24 a0 01 00 	mov    0x1a0(%rsp),%r11
  91:	00 
  92:	4c 89 4d 30          	mov    %r9,0x30(%rbp)
  96:	4c 89 45 38          	mov    %r8,0x38(%rbp)
  9a:	c5 f8 10 00          	vmovups (%rax),%xmm0
  9e:	c5 f8 11 45 20       	vmovups %xmm0,0x20(%rbp)
  a3:	4c 3b d6             	cmp    %rsi,%r10
  a6:	0f 8d 76 04 00 00    	jge    522 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x522>
  ac:	8b 84 24 90 01 00 00 	mov    0x190(%rsp),%eax
  b3:	4d 8b c2             	mov    %r10,%r8
  b6:	c5 7a 6f 15 00 00 00 	vmovdqu 0x0(%rip),%xmm10        # be <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xbe>
  bd:	00 
  be:	c5 7a 10 35 00 00 00 	vmovss 0x0(%rip),%xmm14        # c6 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc6>
  c5:	00 
  c6:	99                   	cltd
  c7:	4d 8b ca             	mov    %r10,%r9
  ca:	4d 0f af c7          	imul   %r15,%r8
  ce:	4d 0f af ce          	imul   %r14,%r9
  d2:	4c 03 c1             	add    %rcx,%r8
  d5:	0f b6 d2             	movzbl %dl,%edx
  d8:	49 8b 0b             	mov    (%r11),%rcx
  db:	03 c2                	add    %edx,%eax
  dd:	c1 f8 08             	sar    $0x8,%eax
  e0:	48 63 d0             	movslq %eax,%rdx
  e3:	49 8b 43 08          	mov    0x8(%r11),%rax
  e7:	48 2b c8             	sub    %rax,%rcx
  ea:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  ee:	4c 03 cb             	add    %rbx,%r9
  f1:	48 89 4d 48          	mov    %rcx,0x48(%rbp)
  f5:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
  f9:	49 2b f2             	sub    %r10,%rsi
  fc:	4a 8d 3c 90          	lea    (%rax,%r10,4),%rdi
 100:	48 89 75 10          	mov    %rsi,0x10(%rbp)
 104:	48 8b 45 28          	mov    0x28(%rbp),%rax
 108:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
 10c:	4c 89 4d 00          	mov    %r9,0x0(%rbp)
 110:	4c 89 45 40          	mov    %r8,0x40(%rbp)
 114:	0f 1f 40 00          	nopl   0x0(%rax)
 118:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 11f:	00 
 120:	c5 7a 6f 0d 00 00 00 	vmovdqu 0x0(%rip),%xmm9        # 128 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x128>
 127:	00 
 128:	c5 7e 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%ymm11        # 130 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x130>
 12f:	00 
 130:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
 135:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
 13a:	48 85 d2             	test   %rdx,%rdx
 13d:	0f 8e 86 01 00 00    	jle    2c9 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2c9>
 143:	4c 8b f1             	mov    %rcx,%r14
 146:	4c 8b e0             	mov    %rax,%r12
 149:	4c 2b f0             	sub    %rax,%r14
 14c:	4c 8b f9             	mov    %rcx,%r15
 14f:	4c 2b e1             	sub    %rcx,%r12
 152:	49 8b f8             	mov    %r8,%rdi
 155:	c4 41 09 ef f6       	vpxor  %xmm14,%xmm14,%xmm14

000000000000015a <$LN10>:
 15a:	4c 8b ea             	mov    %rdx,%r13
 15d:	0f 1f 00             	nopl   (%rax)
 160:	0f b7 77 02          	movzwl 0x2(%rdi),%esi
 164:	4d 8d 57 04          	lea    0x4(%r15),%r10
 168:	45 33 c9             	xor    %r9d,%r9d
 16b:	4d 03 d4             	add    %r12,%r10
 16e:	c4 c1 7e 6f fe       	vmovdqu %ymm14,%ymm7
 173:	c4 41 7e 6f c6       	vmovdqu %ymm14,%ymm8
 178:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 17f:	00 
 180:	45 8b c1             	mov    %r9d,%r8d
 183:	47 8d 1c 09          	lea    (%r9,%r9,1),%r11d
 187:	41 c1 e0 05          	shl    $0x5,%r8d
 18b:	bb 02 00 00 00       	mov    $0x2,%ebx
 190:	49 63 c0             	movslq %r8d,%rax
 193:	41 0f b6 cb          	movzbl %r11b,%ecx
 197:	80 e1 01             	and    $0x1,%cl
 19a:	41 83 c0 10          	add    $0x10,%r8d
 19e:	c0 e1 02             	shl    $0x2,%cl
 1a1:	c5 fa 6f 54 38 08    	vmovdqu 0x8(%rax,%rdi,1),%xmm2
 1a7:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 1ac:	c4 c1 79 db ca       	vpand  %xmm10,%xmm0,%xmm1
 1b1:	c4 e2 31 00 d9       	vpshufb %xmm1,%xmm9,%xmm3
 1b6:	c4 c1 69 db d2       	vpand  %xmm10,%xmm2,%xmm2
 1bb:	c4 e2 31 00 c2       	vpshufb %xmm2,%xmm9,%xmm0
 1c0:	c4 e3 7d 38 cb 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm1
 1c6:	c4 81 7e 6f 04 32    	vmovdqu (%r10,%r14,1),%ymm0
 1cc:	c4 e2 75 08 f1       	vpsignb %ymm1,%ymm1,%ymm6
 1d1:	49 63 c3             	movslq %r11d,%rax
 1d4:	48 d1 f8             	sar    $1,%rax
 1d7:	c4 e2 25 08 e9       	vpsignb %ymm1,%ymm11,%ymm5
 1dc:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 1e1:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 1e6:	0f b6 44 38 04       	movzbl 0x4(%rax,%rdi,1),%eax
 1eb:	49 83 c2 20          	add    $0x20,%r10
 1ef:	d2 e8                	shr    %cl,%al
 1f1:	41 0f b6 cb          	movzbl %r11b,%ecx
 1f5:	24 0f                	and    $0xf,%al
 1f7:	02 c9                	add    %cl,%cl
 1f9:	0f b6 d0             	movzbl %al,%edx
 1fc:	41 ff c3             	inc    %r11d
 1ff:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 204:	0f b7 c6             	movzwl %si,%eax
 207:	66 d3 e8             	shr    %cl,%ax
 20a:	66 83 e0 03          	and    $0x3,%ax
 20e:	66 c1 e0 04          	shl    $0x4,%ax
 212:	66 0b c2             	or     %dx,%ax
 215:	66 83 e8 20          	sub    $0x20,%ax
 219:	98                   	cwtl
 21a:	c5                   	.byte 0xc5

000000000000021b <$LN41>:
 21b:	f9                   	stc
 21c:	6e                   	outsb  (%rsi),(%dx)
 21d:	e0 c4                	loopne 1e3 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1e3>
 21f:	e2 7d                	loop   29e <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x29e>
 221:	79 e4                	jns    207 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x207>
 223:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 227:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 22c:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 231:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 235:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 239:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 23e:	48 83 eb 01          	sub    $0x1,%rbx
 242:	0f 85 48 ff ff ff    	jne    190 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x190>
 248:	41 ff c1             	inc    %r9d
 24b:	41 83 f9 04          	cmp    $0x4,%r9d
 24f:	0f 8c 2b ff ff ff    	jl     180 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x180>
 255:	0f b7 07             	movzwl (%rdi),%eax
 258:	48 81 c7 88 00 00 00 	add    $0x88,%rdi
 25f:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 263:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 268:	c4 c1 6a 59 07       	vmulss (%r15),%xmm2,%xmm0
 26d:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 272:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 276:	c4 62 7d b8 e1       	vfmadd231ps %ymm1,%ymm0,%ymm12
 27b:	c4 81 6a 59 04 3c    	vmulss (%r12,%r15,1),%xmm2,%xmm0
 281:	49 81 c7 24 01 00 00 	add    $0x124,%r15
 288:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 28d:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 292:	c4 62 7d b8 e9       	vfmadd231ps %ymm1,%ymm0,%ymm13
 297:	49 83 ed 01          	sub    $0x1,%r13
 29b:	0f 85 bf fe ff ff    	jne    160 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x160>
 2a1:	c5 7a 10 35 00 00 00 	vmovss 0x0(%rip),%xmm14        # 2a9 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2a9>
 2a8:	00 
 2a9:	48 8b 55 18          	mov    0x18(%rbp),%rdx
 2ad:	48 8b 45 28          	mov    0x28(%rbp),%rax
 2b1:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
 2b5:	4c                   	rex.WR
 2b6:	8b                   	.byte 0x8b
 2b7:	4d                   	rex.WRB

00000000000002b8 <$LN99>:
 2b8:	00 48 8b             	add    %cl,-0x75(%rax)
 2bb:	7d 08                	jge    2c5 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2c5>
 2bd:	48 8b 75 10          	mov    0x10(%rbp),%rsi
 2c1:	4c 8b 75 30          	mov    0x30(%rbp),%r14
 2c5:	4c 8b 7d 38          	mov    0x38(%rbp),%r15
 2c9:	c4 63 7d 19 e0 01    	vextractf128 $0x1,%ymm12,%xmm0
 2cf:	c4 c1 78 58 c4       	vaddps %xmm12,%xmm0,%xmm0
 2d4:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 2d8:	c4                   	.byte 0xc4
 2d9:	63                   	.byte 0x63
 2da:	7d                   	.byte 0x7d

00000000000002db <$LN30>:
 2db:	19 e8                	sbb    %ebp,%eax
 2dd:	01 c4                	add    %eax,%esp
 2df:	c1 78 58 c5          	sarl   $0xc5,0x58(%rax)
 2e3:	c5 73 7c f9          	vhaddps %xmm1,%xmm1,%xmm15
 2e7:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 2eb:	45 33 ed             	xor    %r13d,%r13d
 2ee:	c5 73 7c c1          	vhaddps %xmm1,%xmm1,%xmm8
 2f2:	c5                   	.byte 0xc5
 2f3:	78 11                	js     306 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x306>
 2f5:	45                   	rex.RB

00000000000002f6 <$LN44>:
 2f6:	50                   	push   %rax
 2f7:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
 2fc:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
 301:	48 85 d2             	test   %rdx,%rdx
 304:	0f 8e 76 01 00 00    	jle    480 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x480>
 30a:	4c 8b f1             	mov    %rcx,%r14
 30d:	4c 8b e0             	mov    %rax,%r12
 310:	4c 2b f0             	sub    %rax,%r14
 313:	4c 8b f9             	mov    %rcx,%r15
 316:	4c 2b e1             	sub    %rcx,%r12
 319:	49 8b f9             	mov    %r9,%rdi
 31c:	c4 41 09 ef f6       	vpxor  %xmm14,%xmm14,%xmm14
 321:	0f b7 77 02          	movzwl 0x2(%rdi),%esi
 325:	4d 8d 57 04          	lea    0x4(%r15),%r10
 329:	45 33 c0             	xor    %r8d,%r8d
 32c:	4d 03 d4             	add    %r12,%r10
 32f:	c4 c1 7e 6f fe       	vmovdqu %ymm14,%ymm7
 334:	c4 41 7e 6f c6       	vmovdqu %ymm14,%ymm8
 339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 340:	45 8b c8             	mov    %r8d,%r9d
 343:	47 8d 1c 00          	lea    (%r8,%r8,1),%r11d
 347:	41 c1 e1 05          	shl    $0x5,%r9d
 34b:	bb 02 00 00 00       	mov    $0x2,%ebx
 350:	49 63 c1             	movslq %r9d,%rax
 353:	41 0f b6 cb          	movzbl %r11b,%ecx
 357:	80 e1 01             	and    $0x1,%cl
 35a:	41 83 c1 10          	add    $0x10,%r9d
 35e:	c0 e1 02             	shl    $0x2,%cl
 361:	c5 fa 6f 54 38 08    	vmovdqu 0x8(%rax,%rdi,1),%xmm2
 367:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 36c:	c4 c1 79 db ca       	vpand  %xmm10,%xmm0,%xmm1
 371:	c4 e2 31 00 d9       	vpshufb %xmm1,%xmm9,%xmm3
 376:	c5 a9 db d2          	vpand  %xmm2,%xmm10,%xmm2
 37a:	c4 e2 31 00 c2       	vpshufb %xmm2,%xmm9,%xmm0
 37f:	c4 e3 7d 38 cb 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm1
 385:	c4 81 7e 6f 04 32    	vmovdqu (%r10,%r14,1),%ymm0
 38b:	c4 e2 75 08 f1       	vpsignb %ymm1,%ymm1,%ymm6
 390:	49 63 c3             	movslq %r11d,%rax
 393:	48 d1 f8             	sar    $1,%rax
 396:	c4 e2 25 08 e9       	vpsignb %ymm1,%ymm11,%ymm5
 39b:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 3a0:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 3a5:	0f b6 44 38 04       	movzbl 0x4(%rax,%rdi,1),%eax
 3aa:	49 83 c2 20          	add    $0x20,%r10
 3ae:	d2 e8                	shr    %cl,%al
 3b0:	41 0f b6 cb          	movzbl %r11b,%ecx
 3b4:	24 0f                	and    $0xf,%al
 3b6:	02 c9                	add    %cl,%cl
 3b8:	0f b6 d0             	movzbl %al,%edx
 3bb:	41 ff c3             	inc    %r11d
 3be:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 3c3:	0f b7 c6             	movzwl %si,%eax
 3c6:	66 d3 e8             	shr    %cl,%ax
 3c9:	66 83 e0 03          	and    $0x3,%ax
 3cd:	66 c1 e0 04          	shl    $0x4,%ax
 3d1:	66 0b c2             	or     %dx,%ax
 3d4:	66 83 e8 20          	sub    $0x20,%ax
 3d8:	98                   	cwtl
 3d9:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 3dd:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 3e2:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 3e6:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 3eb:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 3f0:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 3f4:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 3f8:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 3fd:	48 83 eb 01          	sub    $0x1,%rbx
 401:	0f 85 49 ff ff ff    	jne    350 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x350>
 407:	41 ff c0             	inc    %r8d
 40a:	41 83 f8 04          	cmp    $0x4,%r8d
 40e:	0f 8c 2c ff ff ff    	jl     340 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x340>
 414:	0f b7 07             	movzwl (%rdi),%eax
 417:	49 ff c5             	inc    %r13
 41a:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 41e:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 423:	c4 c1 6a 59 07       	vmulss (%r15),%xmm2,%xmm0
 428:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 42d:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 431:	c4 62 7d b8 e1       	vfmadd231ps %ymm1,%ymm0,%ymm12
 436:	c4 81 6a 59 04 27    	vmulss (%r15,%r12,1),%xmm2,%xmm0
 43c:	49 81 c7 24 01 00 00 	add    $0x124,%r15
 443:	48 81 c7 88 00 00 00 	add    $0x88,%rdi
 44a:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 44f:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 454:	c4 62 7d b8 e9       	vfmadd231ps %ymm1,%ymm0,%ymm13
 459:	4c 3b 6d 18          	cmp    0x18(%rbp),%r13
 45d:	0f 8c be fe ff ff    	jl     321 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x321>
 463:	c5 78 10 45 50       	vmovups 0x50(%rbp),%xmm8
 468:	c5 7a 10 35 00 00 00 	vmovss 0x0(%rip),%xmm14        # 470 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x470>
 46f:	00 
 470:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
 474:	48 8b 75 10          	mov    0x10(%rbp),%rsi
 478:	4c                   	rex.WR
 479:	8b                   	.byte 0x8b
 47a:	75                   	.byte 0x75

000000000000047b <$LN111>:
 47b:	30                   	.byte 0x30
 47c:	4c                   	rex.WR

000000000000047d <$LN67>:
 47d:	8b 7d 38             	mov    0x38(%rbp),%edi
 480:	c4 63 7d 19 e0 01    	vextractf128 $0x1,%ymm12,%xmm0
 486:	c4 c1 78 58 c4       	vaddps %xmm12,%xmm0,%xmm0
 48b:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 48f:	c4 63 7d 19 e8 01    	vextractf128 $0x1,%ymm13,%xmm0
 495:	c4 c1 78 58 c5       	vaddps %xmm13,%xmm0,%xmm0
 49a:	c5 f3 7c f9          	vhaddps %xmm1,%xmm1,%xmm7
 49e:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 4a2:	c5 80 57 05 00 00 00 	vxorps 0x0(%rip),%xmm15,%xmm0        # 4aa <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4aa>
 4a9:	00 
 4aa:	c5 f3 7c f1          	vhaddps %xmm1,%xmm1,%xmm6
 4ae:	c5 f8 77             	vzeroupper
 4b1:	e8 00 00 00 00       	call   4b6 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4b6>
 4b6:	48 8b 45 48          	mov    0x48(%rbp),%rax
 4ba:	c4 c1 7a 58 ce       	vaddss %xmm14,%xmm0,%xmm1
 4bf:	c5 b8 57 05 00 00 00 	vxorps 0x0(%rip),%xmm8,%xmm0        # 4c7 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4c7>
 4c6:	00 
 4c7:	c5 82 5e d1          	vdivss %xmm1,%xmm15,%xmm2
 4cb:	c5 ea 59 df          	vmulss %xmm7,%xmm2,%xmm3
 4cf:	c5 fa 11 1c 07       	vmovss %xmm3,(%rdi,%rax,1)
 4d4:	e8 00 00 00 00       	call   4d9 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4d9>
 4d9:	4c 8b 45 40          	mov    0x40(%rbp),%r8
 4dd:	4c 8b 4d 00          	mov    0x0(%rbp),%r9
 4e1:	4d 03 c7             	add    %r15,%r8
 4e4:	48 8b 55 18          	mov    0x18(%rbp),%rdx
 4e8:	4d 03 ce             	add    %r14,%r9
 4eb:	48 8b 45 28          	mov    0x28(%rbp),%rax
 4ef:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
 4f3:	c4 c1 7a 58 ce       	vaddss %xmm14,%xmm0,%xmm1
 4f8:	c5 ba 5e d1          	vdivss %xmm1,%xmm8,%xmm2
 4fc:	c5 ea 59 de          	vmulss %xmm6,%xmm2,%xmm3
 500:	c5 fa 11 1f          	vmovss %xmm3,(%rdi)
 504:	48 83 c7 04          	add    $0x4,%rdi
 508:	4c 89 45 40          	mov    %r8,0x40(%rbp)
 50c:	48 83 ee 01          	sub    $0x1,%rsi
 510:	4c 89 4d 00          	mov    %r9,0x0(%rbp)
 514:	48 89 75 10          	mov    %rsi,0x10(%rbp)
 518:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
 51c:	0f 85 fe fb ff ff    	jne    120 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x120>
 522:	4c 8d 9c 24 40 01 00 	lea    0x140(%rsp),%r11
 529:	00 
 52a:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 52e:	49 8b 73 38          	mov    0x38(%r11),%rsi
 532:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 536:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 53c:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 542:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 548:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 54e:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 554:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 55a:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 560:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 566:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 56d:	ff ff 
 56f:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 576:	ff ff 
 578:	49 8b e3             	mov    %r11,%rsp
 57b:	41 5f                	pop    %r15
 57d:	41 5e                	pop    %r14
 57f:	41 5d                	pop    %r13
 581:	41 5c                	pop    %r12
 583:	5d                   	pop    %rbp
 584:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 74 24 70    	vmovaps %xmm14,0x70(%rsp)
  56:	c5 78 29 7c 24 60    	vmovaps %xmm15,0x60(%rsp)
  5c:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  61:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  65:	48 8b 84 24 58 01 00 	mov    0x158(%rsp),%rax
  6c:	00 
  6d:	49 8b f8             	mov    %r8,%rdi
  70:	4c 63 8c 24 68 01 00 	movslq 0x168(%rsp),%r9
  77:	00 
  78:	4c 63 9c 24 70 01 00 	movslq 0x170(%rsp),%r11
  7f:	00 
  80:	4c 8b 94 24 60 01 00 	mov    0x160(%rsp),%r10
  87:	00 
  88:	4c 89 45 38          	mov    %r8,0x38(%rbp)
  8c:	c5 f8 10 00          	vmovups (%rax),%xmm0
  90:	c5 f8 11 45 20       	vmovups %xmm0,0x20(%rbp)
  95:	4d 3b cb             	cmp    %r11,%r9
  98:	0f 8d 51 02 00 00    	jge    2ef <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2ef>
  9e:	8b 84 24 50 01 00 00 	mov    0x150(%rsp),%eax
  a5:	c5 7e 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%ymm11        # ad <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xad>
  ac:	00 
  ad:	c5 7a 6f 15 00 00 00 	vmovdqu 0x0(%rip),%xmm10        # b5 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xb5>
  b4:	00 
  b5:	99                   	cltd
  b6:	0f b6 d2             	movzbl %dl,%edx
  b9:	03 c2                	add    %edx,%eax
  bb:	49 8b d1             	mov    %r9,%rdx
  be:	c1 f8 08             	sar    $0x8,%eax
  c1:	48 63 d8             	movslq %eax,%rbx
  c4:	49 8b 42 08          	mov    0x8(%r10),%rax
  c8:	48 0f af d7          	imul   %rdi,%rdx
  cc:	4e 8d 04 88          	lea    (%rax,%r9,4),%r8
  d0:	48 89 5d 30          	mov    %rbx,0x30(%rbp)
  d4:	48 03 d1             	add    %rcx,%rdx
  d7:	4c 89 45 10          	mov    %r8,0x10(%rbp)
  db:	49 8b 0a             	mov    (%r10),%rcx
  de:	48 2b c8             	sub    %rax,%rcx
  e1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  e5:	48 8b 45 28          	mov    0x28(%rbp),%rax
  e9:	4d 2b d9             	sub    %r9,%r11
  ec:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
  f0:	4c 8b 4d 00          	mov    0x0(%rbp),%r9
  f4:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
  f8:	4c 89 5d 18          	mov    %r11,0x18(%rbp)
  fc:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
 101:	c4 41 7c 10 e7       	vmovups %ymm15,%ymm12
 106:	c4 41 7c 10 ef       	vmovups %ymm15,%ymm13
 10b:	48 85 db             	test   %rbx,%rbx
 10e:	0f 8e 8d 01 00 00    	jle    2a1 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2a1>
 114:	c5 7a 6f 0d 00 00 00 	vmovdqu 0x0(%rip),%xmm9        # 11c <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x11c>
 11b:	00 
 11c:	4c 8b f1             	mov    %rcx,%r14
 11f:	4c 8b e0             	mov    %rax,%r12
 122:	4c 2b f0             	sub    %rax,%r14
 125:	4c 8b f9             	mov    %rcx,%r15
 128:	4c 2b e1             	sub    %rcx,%r12
 12b:	48 8b fa             	mov    %rdx,%rdi
 12e:	c4 41 09 ef f6       	vpxor  %xmm14,%xmm14,%xmm14
 133:	4c 8b eb             	mov    %rbx,%r13
 136:	66 66 0f 1f 84 00 00 	data16 nopw 0x0(%rax,%rax,1)
 13d:	00 00 00 
 140:	0f b7 77 02          	movzwl 0x2(%rdi),%esi
 144:	4d 8d 57 04          	lea    0x4(%r15),%r10
 148:	45 33 c0             	xor    %r8d,%r8d
 14b:	4d 03 d4             	add    %r12,%r10
 14e:	c4 c1 7e 6f fe       	vmovdqu %ymm14,%ymm7
 153:	c4 41 7e 6f c6       	vmovdqu %ymm14,%ymm8
 158:	0f                   	.byte 0xf
 159:	1f                   	(bad)

000000000000015a <$LN10>:
 15a:	84 00                	test   %al,(%rax)
 15c:	00 00                	add    %al,(%rax)
 15e:	00 00                	add    %al,(%rax)
 160:	45 8b c8             	mov    %r8d,%r9d
 163:	47 8d 1c 00          	lea    (%r8,%r8,1),%r11d
 167:	41 c1 e1 05          	shl    $0x5,%r9d
 16b:	bb 02 00 00 00       	mov    $0x2,%ebx
 170:	49 63 c1             	movslq %r9d,%rax
 173:	41 0f b6 cb          	movzbl %r11b,%ecx
 177:	80 e1 01             	and    $0x1,%cl
 17a:	41 83 c1 10          	add    $0x10,%r9d
 17e:	c0 e1 02             	shl    $0x2,%cl
 181:	c5 fa 6f 54 38 08    	vmovdqu 0x8(%rax,%rdi,1),%xmm2
 187:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 18c:	c4 c1 79 db ca       	vpand  %xmm10,%xmm0,%xmm1
 191:	c4 e2 31 00 d9       	vpshufb %xmm1,%xmm9,%xmm3
 196:	c4 c1 69 db d2       	vpand  %xmm10,%xmm2,%xmm2
 19b:	c4 e2 31 00 c2       	vpshufb %xmm2,%xmm9,%xmm0
 1a0:	c4 e3 7d 38 cb 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm1
 1a6:	c4 81 7e 6f 04 16    	vmovdqu (%r14,%r10,1),%ymm0
 1ac:	c4 e2 75 08 f1       	vpsignb %ymm1,%ymm1,%ymm6
 1b1:	49 63 c3             	movslq %r11d,%rax
 1b4:	48 d1 f8             	sar    $1,%rax
 1b7:	c4 e2 25 08 e9       	vpsignb %ymm1,%ymm11,%ymm5
 1bc:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 1c1:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 1c6:	0f b6 44 38 04       	movzbl 0x4(%rax,%rdi,1),%eax
 1cb:	49 83 c2 20          	add    $0x20,%r10
 1cf:	d2 e8                	shr    %cl,%al
 1d1:	41 0f b6 cb          	movzbl %r11b,%ecx
 1d5:	24 0f                	and    $0xf,%al
 1d7:	02 c9                	add    %cl,%cl
 1d9:	0f b6 d0             	movzbl %al,%edx
 1dc:	41 ff c3             	inc    %r11d
 1df:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 1e4:	0f b7 c6             	movzwl %si,%eax
 1e7:	66 d3 e8             	shr    %cl,%ax
 1ea:	66 83 e0 03          	and    $0x3,%ax
 1ee:	66 c1 e0 04          	shl    $0x4,%ax
 1f2:	66 0b c2             	or     %dx,%ax
 1f5:	66 83 e8 20          	sub    $0x20,%ax
 1f9:	98                   	cwtl
 1fa:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 1fe:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 203:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 207:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 20c:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 211:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 215:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 219:	c4                   	.byte 0xc4
 21a:	41                   	rex.B

000000000000021b <$LN41>:
 21b:	65 fe c0             	gs inc %al
 21e:	48 83 eb 01          	sub    $0x1,%rbx
 222:	0f 85 48 ff ff ff    	jne    170 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x170>
 228:	41 ff c0             	inc    %r8d
 22b:	41 83 f8 04          	cmp    $0x4,%r8d
 22f:	0f 8c 2b ff ff ff    	jl     160 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x160>
 235:	0f b7 07             	movzwl (%rdi),%eax
 238:	48 81 c7 88 00 00 00 	add    $0x88,%rdi
 23f:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 243:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 248:	c4 c1 6a 59 07       	vmulss (%r15),%xmm2,%xmm0
 24d:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 252:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 256:	c4 62 7d b8 e1       	vfmadd231ps %ymm1,%ymm0,%ymm12
 25b:	c4 81 6a 59 04 3c    	vmulss (%r12,%r15,1),%xmm2,%xmm0
 261:	49 81 c7 24 01 00 00 	add    $0x124,%r15
 268:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 26d:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 272:	c4 62 7d b8 e9       	vfmadd231ps %ymm1,%ymm0,%ymm13
 277:	49 83 ed 01          	sub    $0x1,%r13
 27b:	0f 85 bf fe ff ff    	jne    140 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x140>
 281:	48 8b 55 08          	mov    0x8(%rbp),%rdx
 285:	4c 8b 45 10          	mov    0x10(%rbp),%r8
 289:	4c 8b 5d 18          	mov    0x18(%rbp),%r11
 28d:	48 8b 5d 30          	mov    0x30(%rbp),%rbx
 291:	48 8b 45 28          	mov    0x28(%rbp),%rax
 295:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
 299:	4c 8b 4d 00          	mov    0x0(%rbp),%r9
 29d:	48 8b 7d 38          	mov    0x38(%rbp),%rdi
 2a1:	48 03 d7             	add    %rdi,%rdx
 2a4:	c4 63 7d 19 e0 01    	vextractf128 $0x1,%ymm12,%xmm0
 2aa:	c4 c1 78 58 c4       	vaddps %xmm12,%xmm0,%xmm0
 2af:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 2b3:	c5 f3 7c d9          	vhaddps %xmm1,%xmm1,%xmm3
 2b7:	c4                   	.byte 0xc4

00000000000002b8 <$LN99>:
 2b8:	81 7a 11 1c 08 c4 63 	cmpl   $0x63c4081c,0x11(%rdx)
 2bf:	7d 19                	jge    2da <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2da>
 2c1:	e8 01 c4 c1 78       	call   78c1c6c7 <@comp.id+0x77bc3d2f>
 2c6:	58                   	pop    %rax
 2c7:	c5 c5 fb 7c c8 c5    	vpsubq -0x3b(%rax,%rcx,8),%ymm7,%ymm7
 2cd:	f3 7c d1             	repz jl 2a1 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2a1>
 2d0:	c4 c1 7a 11 10       	vmovss %xmm2,(%r8)
 2d5:	49 83 c0 04          	add    $0x4,%r8
 2d9:	48                   	rex.W
 2da:	89                   	.byte 0x89

00000000000002db <$LN30>:
 2db:	55                   	push   %rbp
 2dc:	08 49 83             	or     %cl,-0x7d(%rcx)
 2df:	eb 01                	jmp    2e2 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2e2>
 2e1:	4c 89 45 10          	mov    %r8,0x10(%rbp)
 2e5:	4c 89 5d 18          	mov    %r11,0x18(%rbp)
 2e9:	0f 85 12 fe ff ff    	jne    101 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x101>
 2ef:	c5 f8 77             	vzeroupper
 2f2:	4c                   	rex.WR
 2f3:	8d                   	.byte 0x8d
 2f4:	9c                   	pushf
 2f5:	24                   	.byte 0x24

00000000000002f6 <$LN44>:
 2f6:	00 01                	add    %al,(%rcx)
 2f8:	00 00                	add    %al,(%rax)
 2fa:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 2fe:	49 8b 73 38          	mov    0x38(%r11),%rsi
 302:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 306:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 30c:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 312:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 318:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 31e:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 324:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 32a:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 330:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 336:	c5 78 28 74 24 70    	vmovaps 0x70(%rsp),%xmm14
 33c:	c5 78 28 7c 24 60    	vmovaps 0x60(%rsp),%xmm15
 342:	49 8b e3             	mov    %r11,%rsp
 345:	41 5f                	pop    %r15
 347:	41 5e                	pop    %r14
 349:	41 5d                	pop    %r13
 34b:	41 5c                	pop    %r12
 34d:	5d                   	pop    %rbp
 34e:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec a0 01 00 00 	sub    $0x1a0,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 8b 84 24 f8 01 00 	mov    0x1f8(%rsp),%rax
  70:	00 
  71:	4d 8b e1             	mov    %r9,%r12
  74:	4c 63 94 24 08 02 00 	movslq 0x208(%rsp),%r10
  7b:	00 
  7c:	4d 8b e8             	mov    %r8,%r13
  7f:	4c 63 bc 24 10 02 00 	movslq 0x210(%rsp),%r15
  86:	00 
  87:	48 8b da             	mov    %rdx,%rbx
  8a:	4c 8b 9c 24 00 02 00 	mov    0x200(%rsp),%r11
  91:	00 
  92:	48 8b 70 10          	mov    0x10(%rax),%rsi
  96:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
  9a:	4c 8b 48 08          	mov    0x8(%rax),%r9
  9e:	4c 89 45 40          	mov    %r8,0x40(%rbp)
  a2:	4c 8b 00             	mov    (%rax),%r8
  a5:	4c 89 45 48          	mov    %r8,0x48(%rbp)
  a9:	4c 89 4d 50          	mov    %r9,0x50(%rbp)
  ad:	48 89 75 58          	mov    %rsi,0x58(%rbp)
  b1:	4d 3b d7             	cmp    %r15,%r10
  b4:	0f 8d a4 05 00 00    	jge    65e <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x65e>
  ba:	8b 84 24 f0 01 00 00 	mov    0x1f0(%rsp),%eax
  c1:	49 8b fa             	mov    %r10,%rdi
  c4:	c5 7a 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%xmm11        # cc <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xcc>
  cb:	00 
  cc:	99                   	cltd
  cd:	49 0f af fc          	imul   %r12,%rdi
  d1:	0f b6 d2             	movzbl %dl,%edx
  d4:	48 03 fb             	add    %rbx,%rdi
  d7:	03 c2                	add    %edx,%eax
  d9:	c1 f8 08             	sar    $0x8,%eax
  dc:	49 8b da             	mov    %r10,%rbx
  df:	49 0f af dd          	imul   %r13,%rbx
  e3:	48 63 d0             	movslq %eax,%rdx
  e6:	49 8b 43 08          	mov    0x8(%r11),%rax
  ea:	48 03 d9             	add    %rcx,%rbx
  ed:	49 8b 0b             	mov    (%r11),%rcx
  f0:	48 2b c8             	sub    %rax,%rcx
  f3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  f7:	48 89 4d 60          	mov    %rcx,0x60(%rbp)
  fb:	49 8b 4b 10          	mov    0x10(%r11),%rcx
  ff:	4e 8d 34 90          	lea    (%rax,%r10,4),%r14
 103:	48 2b c8             	sub    %rax,%rcx
 106:	4c 89 75 18          	mov    %r14,0x18(%rbp)
 10a:	4d 2b fa             	sub    %r10,%r15
 10d:	48 89 7d 10          	mov    %rdi,0x10(%rbp)
 111:	4c 89 7d 20          	mov    %r15,0x20(%rbp)
 115:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
 119:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
 11d:	48 89 4d 68          	mov    %rcx,0x68(%rbp)
 121:	0f 1f 40 00          	nopl   0x0(%rax)
 125:	66 66 66 0f 1f 84 00 	data16 data16 nopw 0x0(%rax,%rax,1)
 12c:	00 00 00 00 
 130:	c5 7a 6f 15 00 00 00 	vmovdqu 0x0(%rip),%xmm10        # 138 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x138>
 137:	00 
 138:	c5 7e 6f 25 00 00 00 	vmovdqu 0x0(%rip),%ymm12        # 140 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x140>
 13f:	00 
 140:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
 145:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
 14a:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
 14f:	48 85 d2             	test   %rdx,%rdx
 152:	0f 8e c9 01 00 00    	jle    321 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x321>
 158:	4d                   	rex.WRB
 159:	8b                   	.byte 0x8b

000000000000015a <$LN10>:
 15a:	f0 48 89 55 00       	lock mov %rdx,0x0(%rbp)
 15f:	4c 8b fe             	mov    %rsi,%r15
 162:	4d 8b e9             	mov    %r9,%r13
 165:	4d 2b f1             	sub    %r9,%r14
 168:	4d 2b f9             	sub    %r9,%r15
 16b:	4d 2b e8             	sub    %r8,%r13
 16e:	48 8b c6             	mov    %rsi,%rax
 171:	49 2b c0             	sub    %r8,%rax
 174:	4d 8b e0             	mov    %r8,%r12
 177:	48 89 45 30          	mov    %rax,0x30(%rbp)
 17b:	48 8b fb             	mov    %rbx,%rdi
 17e:	66 90                	xchg   %ax,%ax
 180:	0f b7 77 02          	movzwl 0x2(%rdi),%esi
 184:	4d 8d 44 24 04       	lea    0x4(%r12),%r8
 189:	45 33 d2             	xor    %r10d,%r10d
 18c:	4d 03 c5             	add    %r13,%r8
 18f:	c5 c1 ef ff          	vpxor  %xmm7,%xmm7,%xmm7
 193:	c4 41 39 ef c0       	vpxor  %xmm8,%xmm8,%xmm8
 198:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
 19d:	0f 1f 00             	nopl   (%rax)
 1a0:	45 8b ca             	mov    %r10d,%r9d
 1a3:	47 8d 1c 12          	lea    (%r10,%r10,1),%r11d
 1a7:	41 c1 e1 05          	shl    $0x5,%r9d
 1ab:	bb 02 00 00 00       	mov    $0x2,%ebx
 1b0:	49 63 c1             	movslq %r9d,%rax
 1b3:	41 0f b6 cb          	movzbl %r11b,%ecx
 1b7:	80 e1 01             	and    $0x1,%cl
 1ba:	41 83 c1 10          	add    $0x10,%r9d
 1be:	c0 e1 02             	shl    $0x2,%cl
 1c1:	c5 fa 6f 54 38 08    	vmovdqu 0x8(%rax,%rdi,1),%xmm2
 1c7:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 1cc:	c4 c1 79 db cb       	vpand  %xmm11,%xmm0,%xmm1
 1d1:	c4 e2 29 00 d9       	vpshufb %xmm1,%xmm10,%xmm3
 1d6:	c4 c1 69 db d3       	vpand  %xmm11,%xmm2,%xmm2
 1db:	c4 e2 29 00 c2       	vpshufb %xmm2,%xmm10,%xmm0
 1e0:	c4 e3 7d 38 cb 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm1
 1e6:	c4 81 7e 6f 04 06    	vmovdqu (%r14,%r8,1),%ymm0
 1ec:	c4 e2 75 08 f1       	vpsignb %ymm1,%ymm1,%ymm6
 1f1:	c4 e2 1d 08 e9       	vpsignb %ymm1,%ymm12,%ymm5
 1f6:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 1fb:	c4 c1 7e 6f 00       	vmovdqu (%r8),%ymm0
 200:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 205:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 20a:	c4 81 7e 6f 04 07    	vmovdqu (%r15,%r8,1),%ymm0
 210:	49 63 c3             	movslq %r11d,%rax
 213:	49 83 c0 20          	add    $0x20,%r8
 217:	48 d1 f8             	sar    $1,%rax
 21a:	0f                   	.byte 0xf

000000000000021b <$LN41>:
 21b:	b6 44                	mov    $0x44,%dh
 21d:	38 04 d2             	cmp    %al,(%rdx,%rdx,8)
 220:	e8 41 0f b6 cb       	call   ffffffffcbb61166 <@feat.00+0xffffffff4bb50fd6>
 225:	24 0f                	and    $0xf,%al
 227:	02 c9                	add    %cl,%cl
 229:	0f b6 d0             	movzbl %al,%edx
 22c:	41 ff c3             	inc    %r11d
 22f:	0f b7 c6             	movzwl %si,%eax
 232:	66 d3 e8             	shr    %cl,%ax
 235:	66 83 e0 03          	and    $0x3,%ax
 239:	66 c1 e0 04          	shl    $0x4,%ax
 23d:	66 0b c2             	or     %dx,%ax
 240:	66 83 e8 20          	sub    $0x20,%ax
 244:	98                   	cwtl
 245:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 249:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 24e:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 252:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 257:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 25b:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 25f:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 264:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 269:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 26e:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 272:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 277:	48 83 eb 01          	sub    $0x1,%rbx
 27b:	0f 85 2f ff ff ff    	jne    1b0 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1b0>
 281:	41 ff c2             	inc    %r10d
 284:	41 83 fa 04          	cmp    $0x4,%r10d
 288:	0f 8c 12 ff ff ff    	jl     1a0 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1a0>
 28e:	0f b7 07             	movzwl (%rdi),%eax
 291:	48 81 c7 88 00 00 00 	add    $0x88,%rdi
 298:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 29c:	48 8b 45 30          	mov    0x30(%rbp),%rax
 2a0:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 2a5:	c4 c1 6a 59 04 24    	vmulss (%r12),%xmm2,%xmm0
 2ab:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2b0:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 2b4:	c4                   	.byte 0xc4
 2b5:	62                   	.byte 0x62
 2b6:	7d b8                	jge    270 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x270>

00000000000002b8 <$LN99>:
 2b8:	e9 c4 81 6a 59       	jmp    596a8481 <@comp.id+0x5864fae9>
 2bd:	04 2c                	add    $0x2c,%al
 2bf:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2c4:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 2c9:	c4 62 7d b8 f1       	vfmadd231ps %ymm1,%ymm0,%ymm14
 2ce:	c4 c1 6a 59 04 04    	vmulss (%r12,%rax,1),%xmm2,%xmm0
 2d4:	49 81 c4 24 01 00 00 	add    $0x124,%r12

00000000000002db <$LN30>:
 2db:	48 83 6d 00 01       	subq   $0x1,0x0(%rbp)
 2e0:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2e5:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 2ea:	c4 62 7d b8 f9       	vfmadd231ps %ymm1,%ymm0,%ymm15
 2ef:	0f 85 8b fe ff ff    	jne    180 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x180>
 2f5:	4c                   	rex.WR

00000000000002f6 <$LN44>:
 2f6:	8b 45 48             	mov    0x48(%rbp),%eax
 2f9:	48 8b 55 28          	mov    0x28(%rbp),%rdx
 2fd:	4c 8b 4d 50          	mov    0x50(%rbp),%r9
 301:	48 8b 75 58          	mov    0x58(%rbp),%rsi
 305:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
 309:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
 30d:	4c 8b 75 18          	mov    0x18(%rbp),%r14
 311:	4c 8b 7d 20          	mov    0x20(%rbp),%r15
 315:	4c 8b 65 38          	mov    0x38(%rbp),%r12
 319:	4c 8b 6d 40          	mov    0x40(%rbp),%r13
 31d:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
 321:	48 c7 45 00 00 00 00 	movq   $0x0,0x0(%rbp)
 328:	00 
 329:	c4 63 7d 19 e8 01    	vextractf128 $0x1,%ymm13,%xmm0
 32f:	c4 c1 78 58 c5       	vaddps %xmm13,%xmm0,%xmm0
 334:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 338:	c5 73 7c c9          	vhaddps %xmm1,%xmm1,%xmm9
 33c:	c4 63 7d 19 f0 01    	vextractf128 $0x1,%ymm14,%xmm0
 342:	c4 c1 78 58 c6       	vaddps %xmm14,%xmm0,%xmm0
 347:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 34b:	c4 63 7d 19 f8 01    	vextractf128 $0x1,%ymm15,%xmm0
 351:	c4 c1 78 58 c7       	vaddps %xmm15,%xmm0,%xmm0
 356:	c5 73 7c e9          	vhaddps %xmm1,%xmm1,%xmm13
 35a:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 35e:	c5 f3 7c c1          	vhaddps %xmm1,%xmm1,%xmm0
 362:	c5 f8 11 85 90 00 00 	vmovups %xmm0,0x90(%rbp)
 369:	00 
 36a:	c5 78 11 4d 70       	vmovups %xmm9,0x70(%rbp)
 36f:	c5 78 11 ad 80 00 00 	vmovups %xmm13,0x80(%rbp)
 376:	00 
 377:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
 37c:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
 381:	c5 fc 11 95 a0 00 00 	vmovups %ymm2,0xa0(%rbp)
 388:	00 
 389:	48 85 d2             	test   %rdx,%rdx
 38c:	0f 8e e2 01 00 00    	jle    574 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x574>
 392:	4d 8b f0             	mov    %r8,%r14
 395:	4c 8b fe             	mov    %rsi,%r15
 398:	4d 8b e9             	mov    %r9,%r13
 39b:	4d 2b f1             	sub    %r9,%r14
 39e:	4d 2b f9             	sub    %r9,%r15
 3a1:	4d 2b e8             	sub    %r8,%r13
 3a4:	48 8b c6             	mov    %rsi,%rax
 3a7:	4d 8b e0             	mov    %r8,%r12
 3aa:	49 2b c0             	sub    %r8,%rax
 3ad:	48 89 45 30          	mov    %rax,0x30(%rbp)
 3b1:	c4 41 11 ef ed       	vpxor  %xmm13,%xmm13,%xmm13
 3b6:	66 66 0f 1f 84 00 00 	data16 nopw 0x0(%rax,%rax,1)
 3bd:	00 00 00 
 3c0:	0f b7 77 02          	movzwl 0x2(%rdi),%esi
 3c4:	4d 8d 54 24 04       	lea    0x4(%r12),%r10
 3c9:	45 33 c0             	xor    %r8d,%r8d
 3cc:	4d 03 d5             	add    %r13,%r10
 3cf:	c4 c1 7e 6f fd       	vmovdqu %ymm13,%ymm7
 3d4:	c4 41 7e 6f c5       	vmovdqu %ymm13,%ymm8
 3d9:	c4 41 7e 6f cd       	vmovdqu %ymm13,%ymm9
 3de:	66 90                	xchg   %ax,%ax
 3e0:	45 8b c8             	mov    %r8d,%r9d
 3e3:	47 8d 1c 00          	lea    (%r8,%r8,1),%r11d
 3e7:	41 c1 e1 05          	shl    $0x5,%r9d
 3eb:	bb 02 00 00 00       	mov    $0x2,%ebx
 3f0:	49 63 c1             	movslq %r9d,%rax
 3f3:	41 0f b6 cb          	movzbl %r11b,%ecx
 3f7:	80 e1 01             	and    $0x1,%cl
 3fa:	41 83 c1 10          	add    $0x10,%r9d
 3fe:	c0 e1 02             	shl    $0x2,%cl
 401:	c5 fa 6f 54 38 08    	vmovdqu 0x8(%rax,%rdi,1),%xmm2
 407:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 40c:	c4 c1 79 db cb       	vpand  %xmm11,%xmm0,%xmm1
 411:	c4 e2 29 00 d9       	vpshufb %xmm1,%xmm10,%xmm3
 416:	c4 c1 69 db d3       	vpand  %xmm11,%xmm2,%xmm2
 41b:	c4 e2 29 00 c2       	vpshufb %xmm2,%xmm10,%xmm0
 420:	c4 e3 7d 38 cb 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm1
 426:	c4 81 7e 6f 04 16    	vmovdqu (%r14,%r10,1),%ymm0
 42c:	c4 e2 75 08 f1       	vpsignb %ymm1,%ymm1,%ymm6
 431:	c4 e2 1d 08 e9       	vpsignb %ymm1,%ymm12,%ymm5
 436:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 43b:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 440:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 445:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 44a:	c4 81 7e 6f 04 17    	vmovdqu (%r15,%r10,1),%ymm0
 450:	49 63 c3             	movslq %r11d,%rax
 453:	49 83 c2 20          	add    $0x20,%r10
 457:	48 d1 f8             	sar    $1,%rax
 45a:	0f b6 44 38 04       	movzbl 0x4(%rax,%rdi,1),%eax
 45f:	d2 e8                	shr    %cl,%al
 461:	41 0f b6 cb          	movzbl %r11b,%ecx
 465:	24 0f                	and    $0xf,%al
 467:	02 c9                	add    %cl,%cl
 469:	0f b6 d0             	movzbl %al,%edx
 46c:	41 ff c3             	inc    %r11d
 46f:	0f b7 c6             	movzwl %si,%eax
 472:	66 d3 e8             	shr    %cl,%ax
 475:	66 83 e0 03          	and    $0x3,%ax
 479:	66                   	data16
 47a:	c1                   	.byte 0xc1

000000000000047b <$LN111>:
 47b:	e0 04                	loopne 481 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x481>

000000000000047d <$LN67>:
 47d:	66 0b c2             	or     %dx,%ax
 480:	66 83 e8 20          	sub    $0x20,%ax
 484:	98                   	cwtl
 485:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 489:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 48e:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 492:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 497:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 49b:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 49f:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 4a4:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 4a9:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 4ae:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 4b2:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 4b7:	48 83 eb 01          	sub    $0x1,%rbx
 4bb:	0f 85 2f ff ff ff    	jne    3f0 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3f0>
 4c1:	41 ff c0             	inc    %r8d
 4c4:	41 83 f8 04          	cmp    $0x4,%r8d
 4c8:	0f 8c 12 ff ff ff    	jl     3e0 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3e0>
 4ce:	0f b7 07             	movzwl (%rdi),%eax
 4d1:	48 81 c7 88 00 00 00 	add    $0x88,%rdi
 4d8:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 4dc:	48 8b 45 30          	mov    0x30(%rbp),%rax
 4e0:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 4e5:	c4 c1 6a 59 04 24    	vmulss (%r12),%xmm2,%xmm0
 4eb:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 4f0:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 4f4:	c4 62 7d b8 f1       	vfmadd231ps %ymm1,%ymm0,%ymm14
 4f9:	c4 81 6a 59 04 2c    	vmulss (%r12,%r13,1),%xmm2,%xmm0
 4ff:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 504:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 509:	c4 62 7d b8 f9       	vfmadd231ps %ymm1,%ymm0,%ymm15
 50e:	c4 a1 6a 59 04 20    	vmulss (%rax,%r12,1),%xmm2,%xmm0
 514:	48 8b 45 00          	mov    0x0(%rbp),%rax
 518:	49 81 c4 24 01 00 00 	add    $0x124,%r12
 51f:	c5 fc 10 95 a0 00 00 	vmovups 0xa0(%rbp),%ymm2
 526:	00 
 527:	48 ff c0             	inc    %rax
 52a:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 52f:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 534:	c4 e2 7d b8 d1       	vfmadd231ps %ymm1,%ymm0,%ymm2
 539:	c5 fc 11 95 a0 00 00 	vmovups %ymm2,0xa0(%rbp)
 540:	00 
 541:	48 89 45 00          	mov    %rax,0x0(%rbp)
 545:	48 3b 45 28          	cmp    0x28(%rbp),%rax
 549:	0f 8c 71 fe ff ff    	jl     3c0 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3c0>
 54f:	c5 78 10 4d 70       	vmovups 0x70(%rbp),%xmm9
 554:	c5 78 10 ad 80 00 00 	vmovups 0x80(%rbp),%xmm13
 55b:	00 
 55c:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
 560:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
 564:	4c 8b 75 18          	mov    0x18(%rbp),%r14
 568:	4c 8b 7d 20          	mov    0x20(%rbp),%r15
 56c:	4c 8b 65 38          	mov    0x38(%rbp),%r12
 570:	4c 8b 6d 40          	mov    0x40(%rbp),%r13
 574:	c5 7a 10 25 00 00 00 	vmovss 0x0(%rip),%xmm12        # 57c <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x57c>
 57b:	00 
 57c:	c4 63 7d 19 f0 01    	vextractf128 $0x1,%ymm14,%xmm0
 582:	c4 c1 78 58 c6       	vaddps %xmm14,%xmm0,%xmm0
 587:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 58b:	c5 73 7c c1          	vhaddps %xmm1,%xmm1,%xmm8
 58f:	c4 63 7d 19 f8 01    	vextractf128 $0x1,%ymm15,%xmm0
 595:	c4 c1 78 58 c7       	vaddps %xmm15,%xmm0,%xmm0
 59a:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 59e:	c4 e3 7d 19 d0 01    	vextractf128 $0x1,%ymm2,%xmm0
 5a4:	c5 f8 58 c2          	vaddps %xmm2,%xmm0,%xmm0
 5a8:	c5 f3 7c f9          	vhaddps %xmm1,%xmm1,%xmm7
 5ac:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 5b0:	c5 f3 7c f1          	vhaddps %xmm1,%xmm1,%xmm6
 5b4:	c4 c1 30 57 c4       	vxorps %xmm12,%xmm9,%xmm0
 5b9:	c5 f8 77             	vzeroupper
 5bc:	e8 00 00 00 00       	call   5c1 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x5c1>
 5c1:	48 8b 45 60          	mov    0x60(%rbp),%rax
 5c5:	c5 7a 10 15 00 00 00 	vmovss 0x0(%rip),%xmm10        # 5cd <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x5cd>
 5cc:	00 
 5cd:	c4 c1 7a 58 ca       	vaddss %xmm10,%xmm0,%xmm1
 5d2:	c5 b2 5e d1          	vdivss %xmm1,%xmm9,%xmm2
 5d6:	c4 c1 6a 59 d8       	vmulss %xmm8,%xmm2,%xmm3
 5db:	c4 c1 10 57 c4       	vxorps %xmm12,%xmm13,%xmm0
 5e0:	c4 c1 7a 11 1c 06    	vmovss %xmm3,(%r14,%rax,1)
 5e6:	e8 00 00 00 00       	call   5eb <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x5eb>
 5eb:	c4 c1 7a 58 ca       	vaddss %xmm10,%xmm0,%xmm1
 5f0:	c5 92 5e d1          	vdivss %xmm1,%xmm13,%xmm2
 5f4:	c5 ea 59 df          	vmulss %xmm7,%xmm2,%xmm3
 5f8:	c5 f8 10 bd 90 00 00 	vmovups 0x90(%rbp),%xmm7
 5ff:	00 
 600:	c4 c1 40 57 c4       	vxorps %xmm12,%xmm7,%xmm0
 605:	c4 c1 7a 11 1e       	vmovss %xmm3,(%r14)
 60a:	e8 00 00 00 00       	call   60f <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x60f>
 60f:	48 8b 45 68          	mov    0x68(%rbp),%rax
 613:	49 03 dd             	add    %r13,%rbx
 616:	4c 8b 45 48          	mov    0x48(%rbp),%r8
 61a:	49 03 fc             	add    %r12,%rdi
 61d:	48 8b 55 28          	mov    0x28(%rbp),%rdx
 621:	4c 8b 4d 50          	mov    0x50(%rbp),%r9
 625:	48 8b 75 58          	mov    0x58(%rbp),%rsi
 629:	c4 c1 7a 58 ca       	vaddss %xmm10,%xmm0,%xmm1
 62e:	c5 c2 5e d1          	vdivss %xmm1,%xmm7,%xmm2
 632:	c5 ea 59 de          	vmulss %xmm6,%xmm2,%xmm3
 636:	c4 a1 7a 11 1c 30    	vmovss %xmm3,(%rax,%r14,1)
 63c:	49 83 c6 04          	add    $0x4,%r14
 640:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
 644:	49 83 ef 01          	sub    $0x1,%r15
 648:	48 89 7d 10          	mov    %rdi,0x10(%rbp)
 64c:	4c 89 7d 20          	mov    %r15,0x20(%rbp)
 650:	4c 89 75 18          	mov    %r14,0x18(%rbp)
 654:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
 658:	0f 85 d2 fa ff ff    	jne    130 <??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x130>
 65e:	4c 8d 9c 24 a0 01 00 	lea    0x1a0(%rsp),%r11
 665:	00 
 666:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 66a:	49 8b 73 38          	mov    0x38(%r11),%rsi
 66e:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 672:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 678:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 67e:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 684:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 68a:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 690:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 696:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 69c:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 6a2:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 6a9:	ff ff 
 6ab:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 6b2:	ff ff 
 6b4:	49 8b e3             	mov    %r11,%rsp
 6b7:	41 5f                	pop    %r15
 6b9:	41 5e                	pop    %r14
 6bb:	41 5d                	pop    %r13
 6bd:	41 5c                	pop    %r12
 6bf:	5d                   	pop    %rbp
 6c0:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 8b 84 24 78 01 00 	mov    0x178(%rsp),%rax
  70:	00 
  71:	4d 8b f8             	mov    %r8,%r15
  74:	4c 63 8c 24 88 01 00 	movslq 0x188(%rsp),%r9
  7b:	00 
  7c:	48 63 bc 24 90 01 00 	movslq 0x190(%rsp),%rdi
  83:	00 
  84:	4c 8b 94 24 80 01 00 	mov    0x180(%rsp),%r10
  8b:	00 
  8c:	48 8b 58 08          	mov    0x8(%rax),%rbx
  90:	4c 8b 70 10          	mov    0x10(%rax),%r14
  94:	4c 89 45 58          	mov    %r8,0x58(%rbp)
  98:	4c 8b 00             	mov    (%rax),%r8
  9b:	4c 89 45 30          	mov    %r8,0x30(%rbp)
  9f:	48 89 5d 38          	mov    %rbx,0x38(%rbp)
  a3:	4c 89 75 08          	mov    %r14,0x8(%rbp)
  a7:	4c 3b cf             	cmp    %rdi,%r9
  aa:	0f 8d b1 02 00 00    	jge    361 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x361>
  b0:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
  b7:	4d 8b d9             	mov    %r9,%r11
  ba:	c5 7e 6f 25 00 00 00 	vmovdqu 0x0(%rip),%ymm12        # c2 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc2>
  c1:	00 
  c2:	c5 7a 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%xmm11        # ca <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xca>
  c9:	00 
  ca:	99                   	cltd
  cb:	4d 0f af df          	imul   %r15,%r11
  cf:	0f b6 d2             	movzbl %dl,%edx
  d2:	03 c2                	add    %edx,%eax
  d4:	4c 03 d9             	add    %rcx,%r11
  d7:	49 8b 0a             	mov    (%r10),%rcx
  da:	c1 f8 08             	sar    $0x8,%eax
  dd:	48 63 f0             	movslq %eax,%rsi
  e0:	49 8b 42 08          	mov    0x8(%r10),%rax
  e4:	4d 8b 52 10          	mov    0x10(%r10),%r10
  e8:	48 2b c8             	sub    %rax,%rcx
  eb:	4c 2b d0             	sub    %rax,%r10
  ee:	48 89 75 40          	mov    %rsi,0x40(%rbp)
  f2:	49 2b f9             	sub    %r9,%rdi
  f5:	4c 89 5d 10          	mov    %r11,0x10(%rbp)
  f9:	4a 8d 14 88          	lea    (%rax,%r9,4),%rdx
  fd:	48 89 7d 20          	mov    %rdi,0x20(%rbp)
 101:	48 89 55 18          	mov    %rdx,0x18(%rbp)
 105:	48 89 4d 48          	mov    %rcx,0x48(%rbp)
 109:	4c 89 55 50          	mov    %r10,0x50(%rbp)
 10d:	0f 1f 00             	nopl   (%rax)
 110:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
 115:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
 11a:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
 11f:	48 85 f6             	test   %rsi,%rsi
 122:	0f 8e d4 01 00 00    	jle    2fc <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2fc>
 128:	48 8b 45 08          	mov    0x8(%rbp),%rax
 12c:	4d 8b e6             	mov    %r14,%r12
 12f:	c5 7a 6f 15 00 00 00 	vmovdqu 0x0(%rip),%xmm10        # 137 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x137>
 136:	00 
 137:	4d 8b f8             	mov    %r8,%r15
 13a:	48 89 75 00          	mov    %rsi,0x0(%rbp)
 13e:	4c 8b eb             	mov    %rbx,%r13
 141:	4c 2b fb             	sub    %rbx,%r15
 144:	4c 2b e3             	sub    %rbx,%r12
 147:	4d 2b e8             	sub    %r8,%r13
 14a:	49 2b c0             	sub    %r8,%rax
 14d:	4d 8b f0             	mov    %r8,%r14
 150:	48 89 45 28          	mov    %rax,0x28(%rbp)
 154:	49 8b fb             	mov    %r11,%rdi
 157:	66                   	data16
 158:	0f                   	.byte 0xf
 159:	1f                   	(bad)

000000000000015a <$LN10>:
 15a:	84 00                	test   %al,(%rax)
 15c:	00 00                	add    %al,(%rax)
 15e:	00 00                	add    %al,(%rax)
 160:	0f b7 77 02          	movzwl 0x2(%rdi),%esi
 164:	4d 8d 56 04          	lea    0x4(%r14),%r10
 168:	45 33 c0             	xor    %r8d,%r8d
 16b:	4d 03 d5             	add    %r13,%r10
 16e:	c5 c1 ef ff          	vpxor  %xmm7,%xmm7,%xmm7
 172:	c4 41 39 ef c0       	vpxor  %xmm8,%xmm8,%xmm8
 177:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
 17c:	0f 1f 40 00          	nopl   0x0(%rax)
 180:	45 8b c8             	mov    %r8d,%r9d
 183:	47 8d 1c 00          	lea    (%r8,%r8,1),%r11d
 187:	41 c1 e1 05          	shl    $0x5,%r9d
 18b:	bb 02 00 00 00       	mov    $0x2,%ebx
 190:	49 63 c1             	movslq %r9d,%rax
 193:	41 0f b6 cb          	movzbl %r11b,%ecx
 197:	80 e1 01             	and    $0x1,%cl
 19a:	41 83 c1 10          	add    $0x10,%r9d
 19e:	c0 e1 02             	shl    $0x2,%cl
 1a1:	c5 fa 6f 54 38 08    	vmovdqu 0x8(%rax,%rdi,1),%xmm2
 1a7:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 1ac:	c4 c1 79 db cb       	vpand  %xmm11,%xmm0,%xmm1
 1b1:	c4 e2 29 00 d9       	vpshufb %xmm1,%xmm10,%xmm3
 1b6:	c4 c1 69 db d3       	vpand  %xmm11,%xmm2,%xmm2
 1bb:	c4 e2 29 00 c2       	vpshufb %xmm2,%xmm10,%xmm0
 1c0:	c4 e3 7d 38 cb 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm1
 1c6:	c4 81 7e 6f 04 3a    	vmovdqu (%r10,%r15,1),%ymm0
 1cc:	c4 e2 75 08 f1       	vpsignb %ymm1,%ymm1,%ymm6
 1d1:	c4 e2 1d 08 e9       	vpsignb %ymm1,%ymm12,%ymm5
 1d6:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 1db:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 1e0:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 1e5:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 1ea:	c4 81 7e 6f 04 14    	vmovdqu (%r12,%r10,1),%ymm0
 1f0:	49 63 c3             	movslq %r11d,%rax
 1f3:	49 83 c2 20          	add    $0x20,%r10
 1f7:	48 d1 f8             	sar    $1,%rax
 1fa:	0f b6 44 38 04       	movzbl 0x4(%rax,%rdi,1),%eax
 1ff:	d2 e8                	shr    %cl,%al
 201:	41 0f b6 cb          	movzbl %r11b,%ecx
 205:	24 0f                	and    $0xf,%al
 207:	02 c9                	add    %cl,%cl
 209:	0f b6 d0             	movzbl %al,%edx
 20c:	41 ff c3             	inc    %r11d
 20f:	0f b7 c6             	movzwl %si,%eax
 212:	66 d3 e8             	shr    %cl,%ax
 215:	66 83 e0 03          	and    $0x3,%ax
 219:	66                   	data16
 21a:	c1                   	.byte 0xc1

000000000000021b <$LN41>:
 21b:	e0 04                	loopne 221 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x221>
 21d:	66 0b c2             	or     %dx,%ax
 220:	66 83 e8 20          	sub    $0x20,%ax
 224:	98                   	cwtl
 225:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 229:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 22e:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 232:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 237:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 23b:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 23f:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 244:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 249:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 24e:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 252:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 257:	48 83 eb 01          	sub    $0x1,%rbx
 25b:	0f 85 2f ff ff ff    	jne    190 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x190>
 261:	41 ff c0             	inc    %r8d
 264:	41 83 f8 04          	cmp    $0x4,%r8d
 268:	0f 8c 12 ff ff ff    	jl     180 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x180>
 26e:	0f b7 07             	movzwl (%rdi),%eax
 271:	48 81 c7 88 00 00 00 	add    $0x88,%rdi
 278:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 27c:	48 8b 45 28          	mov    0x28(%rbp),%rax
 280:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 285:	c4 c1 6a 59 06       	vmulss (%r14),%xmm2,%xmm0
 28a:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 28f:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 293:	c4 62 7d b8 e9       	vfmadd231ps %ymm1,%ymm0,%ymm13
 298:	c4 81 6a 59 04 2e    	vmulss (%r14,%r13,1),%xmm2,%xmm0
 29e:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2a3:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 2a8:	c4 62 7d b8 f1       	vfmadd231ps %ymm1,%ymm0,%ymm14
 2ad:	c4 a1 6a 59 04 30    	vmulss (%rax,%r14,1),%xmm2,%xmm0
 2b3:	49                   	rex.WB
 2b4:	81                   	.byte 0x81
 2b5:	c6                   	(bad)
 2b6:	24 01                	and    $0x1,%al

00000000000002b8 <$LN99>:
 2b8:	00 00                	add    %al,(%rax)
 2ba:	48 83 6d 00 01       	subq   $0x1,0x0(%rbp)
 2bf:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2c4:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 2c9:	c4 62 7d b8 f9       	vfmadd231ps %ymm1,%ymm0,%ymm15
 2ce:	0f 85 8c fe ff ff    	jne    160 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x160>
 2d4:	4c 8b 45 30          	mov    0x30(%rbp),%r8
 2d8:	48                   	rex.W
 2d9:	8b                   	.byte 0x8b
 2da:	55                   	push   %rbp

00000000000002db <$LN30>:
 2db:	18 4c 8b 5d          	sbb    %cl,0x5d(%rbx,%rcx,4)
 2df:	10 48 8b             	adc    %cl,-0x75(%rax)
 2e2:	5d                   	pop    %rbp
 2e3:	38 48 8b             	cmp    %cl,-0x75(%rax)
 2e6:	7d 20                	jge    308 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x308>
 2e8:	48 8b 75 40          	mov    0x40(%rbp),%rsi
 2ec:	4c 8b 75 08          	mov    0x8(%rbp),%r14
 2f0:	48 8b 4d 48          	mov    0x48(%rbp),%rcx
 2f4:	4c                   	rex.WR
 2f5:	8b                   	.byte 0x8b

00000000000002f6 <$LN44>:
 2f6:	55                   	push   %rbp
 2f7:	50                   	push   %rax
 2f8:	4c 8b 7d 58          	mov    0x58(%rbp),%r15
 2fc:	4d 03 df             	add    %r15,%r11
 2ff:	c4 63 7d 19 e8 01    	vextractf128 $0x1,%ymm13,%xmm0
 305:	c4 c1 78 58 c5       	vaddps %xmm13,%xmm0,%xmm0
 30a:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 30e:	c5 f3 7c e1          	vhaddps %xmm1,%xmm1,%xmm4
 312:	c5 fa 11 24 0a       	vmovss %xmm4,(%rdx,%rcx,1)
 317:	c4 63 7d 19 f0 01    	vextractf128 $0x1,%ymm14,%xmm0
 31d:	c4 c1 78 58 c6       	vaddps %xmm14,%xmm0,%xmm0
 322:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 326:	c5 f3 7c d9          	vhaddps %xmm1,%xmm1,%xmm3
 32a:	c5 fa 11 1a          	vmovss %xmm3,(%rdx)
 32e:	c4 63 7d 19 f8 01    	vextractf128 $0x1,%ymm15,%xmm0
 334:	c4 c1 78 58 c7       	vaddps %xmm15,%xmm0,%xmm0
 339:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 33d:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 341:	c4 c1 7a 11 14 12    	vmovss %xmm2,(%r10,%rdx,1)
 347:	48 83 c2 04          	add    $0x4,%rdx
 34b:	4c 89 5d 10          	mov    %r11,0x10(%rbp)
 34f:	48 83 ef 01          	sub    $0x1,%rdi
 353:	48 89 55 18          	mov    %rdx,0x18(%rbp)
 357:	48 89 7d 20          	mov    %rdi,0x20(%rbp)
 35b:	0f 85 af fd ff ff    	jne    110 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x110>
 361:	c5 f8 77             	vzeroupper
 364:	4c 8d 9c 24 20 01 00 	lea    0x120(%rsp),%r11
 36b:	00 
 36c:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 370:	49 8b 73 38          	mov    0x38(%r11),%rsi
 374:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 378:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 37e:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 384:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 38a:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 390:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 396:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 39c:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 3a2:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 3a8:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 3af:	ff ff 
 3b1:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 3b8:	ff ff 
 3ba:	49 8b e3             	mov    %r11,%rsp
 3bd:	41 5f                	pop    %r15
 3bf:	41 5e                	pop    %r14
 3c1:	41 5d                	pop    %r13
 3c3:	41 5c                	pop    %r12
 3c5:	5d                   	pop    %rbp
 3c6:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	55                   	push   %rbp
   8:	56                   	push   %rsi
   9:	57                   	push   %rdi
   a:	41 54                	push   %r12
   c:	41 55                	push   %r13
   e:	41 56                	push   %r14
  10:	41 57                	push   %r15
  12:	48 81 ec d0 01 00 00 	sub    $0x1d0,%rsp
  19:	c5 f8 29 70 b8       	vmovaps %xmm6,-0x48(%rax)
  1e:	c5 f8 29 78 a8       	vmovaps %xmm7,-0x58(%rax)
  23:	c5 78 29 40 98       	vmovaps %xmm8,-0x68(%rax)
  28:	c5 78 29 48 88       	vmovaps %xmm9,-0x78(%rax)
  2d:	c5 78 29 90 78 ff ff 	vmovaps %xmm10,-0x88(%rax)
  34:	ff 
  35:	c5 78 29 98 68 ff ff 	vmovaps %xmm11,-0x98(%rax)
  3c:	ff 
  3d:	c5 78 29 a0 58 ff ff 	vmovaps %xmm12,-0xa8(%rax)
  44:	ff 
  45:	c5 78 29 a8 48 ff ff 	vmovaps %xmm13,-0xb8(%rax)
  4c:	ff 
  4d:	c5 78 29 b0 38 ff ff 	vmovaps %xmm14,-0xc8(%rax)
  54:	ff 
  55:	c5 78 29 b8 28 ff ff 	vmovaps %xmm15,-0xd8(%rax)
  5c:	ff 
  5d:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  62:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  66:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 6d <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x6d>
  6d:	48 33 c4             	xor    %rsp,%rax
  70:	48 89 85 e0 00 00 00 	mov    %rax,0xe0(%rbp)
  77:	48 8b 84 24 38 02 00 	mov    0x238(%rsp),%rax
  7e:	00 
  7f:	4d 8b f9             	mov    %r9,%r15
  82:	48 8b b4 24 40 02 00 	mov    0x240(%rsp),%rsi
  89:	00 
  8a:	4d 8b f0             	mov    %r8,%r14
  8d:	4c 89 4d 68          	mov    %r9,0x68(%rbp)
  91:	4c 8b d2             	mov    %rdx,%r10
  94:	4c 63 8c 24 48 02 00 	movslq 0x248(%rsp),%r9
  9b:	00 
  9c:	c5 fc 10 00          	vmovups (%rax),%ymm0
  a0:	4c 89 45 60          	mov    %r8,0x60(%rbp)
  a4:	44 8b 84 24 50 02 00 	mov    0x250(%rsp),%r8d
  ab:	00 
  ac:	48 89 75 58          	mov    %rsi,0x58(%rbp)
  b0:	c5 fc 11 85 c0 00 00 	vmovups %ymm0,0xc0(%rbp)
  b7:	00 
  b8:	45 3b c8             	cmp    %r8d,%r9d
  bb:	0f 8d 25 04 00 00    	jge    4e6 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4e6>
  c1:	8b 84 24 30 02 00 00 	mov    0x230(%rsp),%eax
  c8:	4a 8d 3c 8d 00 00 00 	lea    0x0(,%r9,4),%rdi
  cf:	00 
  d0:	c5 7a 10 15 00 00 00 	vmovss 0x0(%rip),%xmm10        # d8 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd8>
  d7:	00 
  d8:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # e0 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xe0>
  df:	00 
  e0:	c5 7a 10 1d 00 00 00 	vmovss 0x0(%rip),%xmm11        # e8 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xe8>
  e7:	00 
  e8:	99                   	cltd
  e9:	48 89 7d 20          	mov    %rdi,0x20(%rbp)
  ed:	0f b6 d2             	movzbl %dl,%edx
  f0:	49 8b d9             	mov    %r9,%rbx
  f3:	03 c2                	add    %edx,%eax
  f5:	49 8b d1             	mov    %r9,%rdx
  f8:	c1 f8 08             	sar    $0x8,%eax
  fb:	4c 63 d8             	movslq %eax,%r11
  fe:	49 0f af d6          	imul   %r14,%rdx
 102:	49 0f af df          	imul   %r15,%rbx
 106:	48 03 d1             	add    %rcx,%rdx
 109:	89 45 00             	mov    %eax,0x0(%rbp)
 10c:	48 8b 8d d0 00 00 00 	mov    0xd0(%rbp),%rcx
 113:	4c 89 5d 70          	mov    %r11,0x70(%rbp)
 117:	48 89 55 18          	mov    %rdx,0x18(%rbp)
 11b:	49 03 da             	add    %r10,%rbx
 11e:	45 2b c1             	sub    %r9d,%r8d
 121:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 125:	4c 8b 8d c0 00 00 00 	mov    0xc0(%rbp),%r9
 12c:	41 8b c0             	mov    %r8d,%eax
 12f:	4c 8b 85 d8 00 00 00 	mov    0xd8(%rbp),%r8
 136:	48 89 45 28          	mov    %rax,0x28(%rbp)
 13a:	48 8b 85 c8 00 00 00 	mov    0xc8(%rbp),%rax
 141:	0f 1f 40 00          	nopl   0x0(%rax)
 145:	66 66 66 0f 1f 84 00 	data16 data16 nopw 0x0(%rax,%rax,1)
 14c:	00 00 00 00 
 150:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 154:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
 158:	c5                   	.byte 0xc5
 159:	fc                   	cld

000000000000015a <$LN10>:
 15a:	11 9d 80 00 00 00    	adc    %ebx,0x80(%rbp)
 160:	c5 fc 11 95 a0 00 00 	vmovups %ymm2,0xa0(%rbp)
 167:	00 
 168:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
 16d:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
 172:	4d 85 db             	test   %r11,%r11
 175:	0f 8e 40 02 00 00    	jle    3bb <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3bb>
 17b:	c5 7a 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%xmm11        # 183 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x183>
 182:	00 
 183:	4c 8b e1             	mov    %rcx,%r12
 186:	4c 89 5d 08          	mov    %r11,0x8(%rbp)
 18a:	49 2b c9             	sub    %r9,%rcx
 18d:	4c 2b e0             	sub    %rax,%r12
 190:	48 89 4d 48          	mov    %rcx,0x48(%rbp)
 194:	4d 8b f9             	mov    %r9,%r15
 197:	4c 2b f8             	sub    %rax,%r15
 19a:	4d 8b e8             	mov    %r8,%r13
 19d:	4c 2b e8             	sub    %rax,%r13
 1a0:	49 8b c8             	mov    %r8,%rcx
 1a3:	49 2b c1             	sub    %r9,%rax
 1a6:	49 8b f1             	mov    %r9,%rsi
 1a9:	49 2b c9             	sub    %r9,%rcx
 1ac:	48 89 45 40          	mov    %rax,0x40(%rbp)
 1b0:	48 89 4d 50          	mov    %rcx,0x50(%rbp)
 1b4:	48 8b fa             	mov    %rdx,%rdi
 1b7:	44 0f b7 77 02       	movzwl 0x2(%rdi),%r14d
 1bc:	4c 8d 56 04          	lea    0x4(%rsi),%r10
 1c0:	c5 7e 6f 2d 00 00 00 	vmovdqu 0x0(%rip),%ymm13        # 1c8 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1c8>
 1c7:	00 
 1c8:	45 33 c0             	xor    %r8d,%r8d
 1cb:	4c 03 d0             	add    %rax,%r10
 1ce:	c5 c1 ef ff          	vpxor  %xmm7,%xmm7,%xmm7
 1d2:	c4 41 39 ef c0       	vpxor  %xmm8,%xmm8,%xmm8
 1d7:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
 1dc:	c4 41 29 ef d2       	vpxor  %xmm10,%xmm10,%xmm10
 1e1:	0f 1f 40 00          	nopl   0x0(%rax)
 1e5:	66 66 66 0f 1f 84 00 	data16 data16 nopw 0x0(%rax,%rax,1)
 1ec:	00 00 00 00 
 1f0:	45 8b c8             	mov    %r8d,%r9d
 1f3:	47 8d 1c 00          	lea    (%r8,%r8,1),%r11d
 1f7:	41 c1 e1 05          	shl    $0x5,%r9d
 1fb:	bb 02 00 00 00       	mov    $0x2,%ebx
 200:	49 63 c1             	movslq %r9d,%rax
 203:	41 0f b6 cb          	movzbl %r11b,%ecx
 207:	80 e1 01             	and    $0x1,%cl
 20a:	41 83 c1 10          	add    $0x10,%r9d
 20e:	c0 e1 02             	shl    $0x2,%cl
 211:	c5 fa 6f 54 38 08    	vmovdqu 0x8(%rax,%rdi,1),%xmm2
 217:	c5                   	.byte 0xc5
 218:	f9                   	stc
 219:	71 d2                	jno    1ed <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1ed>

000000000000021b <$LN41>:
 21b:	04 c4                	add    $0xc4,%al
 21d:	c1 79 db cc          	sarl   $0xcc,-0x25(%rcx)
 221:	c4 e2 21 00 d9       	vpshufb %xmm1,%xmm11,%xmm3
 226:	c4 c1 69 db d4       	vpand  %xmm12,%xmm2,%xmm2
 22b:	c4 e2 21 00 c2       	vpshufb %xmm2,%xmm11,%xmm0
 230:	c4 e3 7d 38 cb 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm1
 236:	c4 81 7e 6f 04 17    	vmovdqu (%r15,%r10,1),%ymm0
 23c:	c4 e2 75 08 f1       	vpsignb %ymm1,%ymm1,%ymm6
 241:	c4 e2 15 08 e9       	vpsignb %ymm1,%ymm13,%ymm5
 246:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 24b:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 250:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 255:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 25a:	c4 81 7e 6f 04 14    	vmovdqu (%r12,%r10,1),%ymm0
 260:	49 63 c3             	movslq %r11d,%rax
 263:	48 d1 f8             	sar    $1,%rax
 266:	0f b6 44 38 04       	movzbl 0x4(%rax,%rdi,1),%eax
 26b:	d2 e8                	shr    %cl,%al
 26d:	41 0f b6 cb          	movzbl %r11b,%ecx
 271:	24 0f                	and    $0xf,%al
 273:	02 c9                	add    %cl,%cl
 275:	0f b6 d0             	movzbl %al,%edx
 278:	41 ff c3             	inc    %r11d
 27b:	41 0f b7 c6          	movzwl %r14w,%eax
 27f:	66 d3 e8             	shr    %cl,%ax
 282:	66 83 e0 03          	and    $0x3,%ax
 286:	66 c1 e0 04          	shl    $0x4,%ax
 28a:	66 0b c2             	or     %dx,%ax
 28d:	66 83 e8 20          	sub    $0x20,%ax
 291:	98                   	cwtl
 292:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 296:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 29b:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 29f:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2a4:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 2a8:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2ac:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 2b1:	c4 81 7e 6f 04 2a    	vmovdqu (%r10,%r13,1),%ymm0
 2b7:	c4                   	.byte 0xc4

00000000000002b8 <$LN99>:
 2b8:	e2 4d                	loop   307 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x307>
 2ba:	04 d1                	add    $0xd1,%al
 2bc:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 2c1:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2c5:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 2ca:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2cf:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 2d4:	49 83 c2 20          	add    $0x20,%r10
 2d8:	c5                   	.byte 0xc5
 2d9:	ed                   	in     (%dx),%eax
 2da:	f5                   	cmc

00000000000002db <$LN30>:
 2db:	dc c4                	fadd   %st,%st(4)
 2dd:	41                   	rex.B
 2de:	65 fe                	gs (bad)
 2e0:	d2 48 83             	rorb   %cl,-0x7d(%rax)
 2e3:	eb 01                	jmp    2e6 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2e6>
 2e5:	0f 85 15 ff ff ff    	jne    200 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x200>
 2eb:	41 ff c0             	inc    %r8d
 2ee:	41 83 f8 04          	cmp    $0x4,%r8d
 2f2:	0f                   	.byte 0xf
 2f3:	8c f8                	mov    %?,%eax
 2f5:	fe                   	.byte 0xfe

00000000000002f6 <$LN44>:
 2f6:	ff                   	(bad)
 2f7:	ff 0f                	decl   (%rdi)
 2f9:	b7 07                	mov    $0x7,%bh
 2fb:	48 81 c7 88 00 00 00 	add    $0x88,%rdi
 302:	48 8b 4d 48          	mov    0x48(%rbp),%rcx
 306:	c5 fc 10 9d 80 00 00 	vmovups 0x80(%rbp),%ymm3
 30d:	00 
 30e:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 312:	48 8b 45 40          	mov    0x40(%rbp),%rax
 316:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 31b:	c5 ea 59 06          	vmulss (%rsi),%xmm2,%xmm0
 31f:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 324:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 328:	c4 62 7d b8 f1       	vfmadd231ps %ymm1,%ymm0,%ymm14
 32d:	c5 ea 59 04 30       	vmulss (%rax,%rsi,1),%xmm2,%xmm0
 332:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 337:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 33c:	c4 62 7d b8 f9       	vfmadd231ps %ymm1,%ymm0,%ymm15
 341:	c5 ea 59 04 31       	vmulss (%rcx,%rsi,1),%xmm2,%xmm0
 346:	48 8b 4d 50          	mov    0x50(%rbp),%rcx
 34a:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 34f:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 354:	c4 e2 7d b8 d9       	vfmadd231ps %ymm1,%ymm0,%ymm3
 359:	c5 ea 59 04 31       	vmulss (%rcx,%rsi,1),%xmm2,%xmm0
 35e:	c5 fc 10 95 a0 00 00 	vmovups 0xa0(%rbp),%ymm2
 365:	00 
 366:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 36b:	c4 c1 7c 5b ca       	vcvtdq2ps %ymm10,%ymm1
 370:	48 81 c6 24 01 00 00 	add    $0x124,%rsi
 377:	48 83 6d 08 01       	subq   $0x1,0x8(%rbp)
 37c:	c4 e2 7d b8 d1       	vfmadd231ps %ymm1,%ymm0,%ymm2
 381:	c5 fc 11 95 a0 00 00 	vmovups %ymm2,0xa0(%rbp)
 388:	00 
 389:	c5 fc 11 9d 80 00 00 	vmovups %ymm3,0x80(%rbp)
 390:	00 
 391:	0f 85 20 fe ff ff    	jne    1b7 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1b7>
 397:	c5 7a 10 15 00 00 00 	vmovss 0x0(%rip),%xmm10        # 39f <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x39f>
 39e:	00 
 39f:	c5 7a 10 1d 00 00 00 	vmovss 0x0(%rip),%xmm11        # 3a7 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3a7>
 3a6:	00 
 3a7:	48 8b 5d 10          	mov    0x10(%rbp),%rbx
 3ab:	48 8b 7d 20          	mov    0x20(%rbp),%rdi
 3af:	48 8b 75 58          	mov    0x58(%rbp),%rsi
 3b3:	4c 8b 75 60          	mov    0x60(%rbp),%r14
 3b7:	4c 8b 7d 68          	mov    0x68(%rbp),%r15
 3bb:	8b 55 00             	mov    0x0(%rbp),%edx
 3be:	4c 8d 4d 30          	lea    0x30(%rbp),%r9
 3c2:	c4 63 7d 19 f0 01    	vextractf128 $0x1,%ymm14,%xmm0
 3c8:	c4 c1 78 58 c6       	vaddps %xmm14,%xmm0,%xmm0
 3cd:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3d1:	c5 73 7c c9          	vhaddps %xmm1,%xmm1,%xmm9
 3d5:	c4 63 7d 19 f8 01    	vextractf128 $0x1,%ymm15,%xmm0
 3db:	c4 c1 78 58 c7       	vaddps %xmm15,%xmm0,%xmm0
 3e0:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3e4:	c5 73 7c c1          	vhaddps %xmm1,%xmm1,%xmm8
 3e8:	c4 e3 7d 19 d8 01    	vextractf128 $0x1,%ymm3,%xmm0
 3ee:	c5 f8 58 c3          	vaddps %xmm3,%xmm0,%xmm0
 3f2:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3f6:	c4 e3 7d 19 d0 01    	vextractf128 $0x1,%ymm2,%xmm0
 3fc:	c5 f8 58 c2          	vaddps %xmm2,%xmm0,%xmm0
 400:	c5 f3 7c f9          	vhaddps %xmm1,%xmm1,%xmm7
 404:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 408:	c5 f3 7c f1          	vhaddps %xmm1,%xmm1,%xmm6
 40c:	4c 8d 85 c0 00 00 00 	lea    0xc0(%rbp),%r8
 413:	48 8b cb             	mov    %rbx,%rcx
 416:	c5 f8 77             	vzeroupper
 419:	e8 00 00 00 00       	call   41e <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x41e>
 41e:	c4 c1 30 57 c2       	vxorps %xmm10,%xmm9,%xmm0
 423:	e8 00 00 00 00       	call   428 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x428>
 428:	48 8b 06             	mov    (%rsi),%rax
 42b:	c4 c1 7a 58 cb       	vaddss %xmm11,%xmm0,%xmm1
 430:	c5 b2 5e d1          	vdivss %xmm1,%xmm9,%xmm2
 434:	c5 ea 59 5d 30       	vmulss 0x30(%rbp),%xmm2,%xmm3
 439:	c4 c1 38 57 c2       	vxorps %xmm10,%xmm8,%xmm0
 43e:	c5 fa 11 1c 07       	vmovss %xmm3,(%rdi,%rax,1)
 443:	e8 00 00 00 00       	call   448 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x448>
 448:	48 8b 46 08          	mov    0x8(%rsi),%rax
 44c:	c4 c1 7a 58 cb       	vaddss %xmm11,%xmm0,%xmm1
 451:	c5 ba 5e d1          	vdivss %xmm1,%xmm8,%xmm2
 455:	c5 ea 59 5d 34       	vmulss 0x34(%rbp),%xmm2,%xmm3
 45a:	c4 c1 40 57 c2       	vxorps %xmm10,%xmm7,%xmm0
 45f:	c5 fa 11 1c 07       	vmovss %xmm3,(%rdi,%rax,1)
 464:	e8 00 00 00 00       	call   469 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x469>
 469:	48 8b 46 10          	mov    0x10(%rsi),%rax
 46d:	c4 c1 7a 58 cb       	vaddss %xmm11,%xmm0,%xmm1
 472:	c5 c2 5e d1          	vdivss %xmm1,%xmm7,%xmm2
 476:	c5 ea 59 5d 38       	vmulss 0x38(%rbp),%xmm2,%xmm3

000000000000047b <$LN111>:
 47b:	c4                   	.byte 0xc4
 47c:	c1                   	.byte 0xc1

000000000000047d <$LN67>:
 47d:	48 57                	rex.W push %rdi
 47f:	c2 c5 fa             	ret    $0xfac5
 482:	11 1c 07             	adc    %ebx,(%rdi,%rax,1)
 485:	e8 00 00 00 00       	call   48a <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x48a>
 48a:	48 8b 46 18          	mov    0x18(%rsi),%rax
 48e:	49 03 df             	add    %r15,%rbx
 491:	48 8b 55 18          	mov    0x18(%rbp),%rdx
 495:	4c 8b 5d 70          	mov    0x70(%rbp),%r11
 499:	49 03 d6             	add    %r14,%rdx
 49c:	4c 8b 85 d8 00 00 00 	mov    0xd8(%rbp),%r8
 4a3:	48 8b 8d d0 00 00 00 	mov    0xd0(%rbp),%rcx
 4aa:	4c 8b 8d c0 00 00 00 	mov    0xc0(%rbp),%r9
 4b1:	c4 c1 7a 58 cb       	vaddss %xmm11,%xmm0,%xmm1
 4b6:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 4ba:	c5 ea 59 5d 3c       	vmulss 0x3c(%rbp),%xmm2,%xmm3
 4bf:	c5 fa 11 1c 07       	vmovss %xmm3,(%rdi,%rax,1)
 4c4:	48 8b 85 c8 00 00 00 	mov    0xc8(%rbp),%rax
 4cb:	48 83 c7 04          	add    $0x4,%rdi
 4cf:	48 83 6d 28 01       	subq   $0x1,0x28(%rbp)
 4d4:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 4d8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
 4dc:	48 89 7d 20          	mov    %rdi,0x20(%rbp)
 4e0:	0f 85 6a fc ff ff    	jne    150 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x150>
 4e6:	c5 f8 77             	vzeroupper
 4e9:	48 8b 8d e0 00 00 00 	mov    0xe0(%rbp),%rcx
 4f0:	48 33 cc             	xor    %rsp,%rcx
 4f3:	e8 00 00 00 00       	call   4f8 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4f8>
 4f8:	4c 8d 9c 24 d0 01 00 	lea    0x1d0(%rsp),%r11
 4ff:	00 
 500:	49 8b 5b 40          	mov    0x40(%r11),%rbx
 504:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 50a:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 510:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 516:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 51c:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 522:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 528:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 52e:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 534:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 53b:	ff ff 
 53d:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 544:	ff ff 
 546:	49 8b e3             	mov    %r11,%rsp
 549:	41 5f                	pop    %r15
 54b:	41 5e                	pop    %r14
 54d:	41 5d                	pop    %r13
 54f:	41 5c                	pop    %r12
 551:	5f                   	pop    %rdi
 552:	5e                   	pop    %rsi
 553:	5d                   	pop    %rbp
 554:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec b0 01 00 00 	sub    $0x1b0,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 70 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x70>
  70:	48 33 c4             	xor    %rsp,%rax
  73:	48 89 85 e0 00 00 00 	mov    %rax,0xe0(%rbp)
  7a:	48 8b 84 24 08 02 00 	mov    0x208(%rsp),%rax
  81:	00 
  82:	49 8b f8             	mov    %r8,%rdi
  85:	4c 63 8c 24 18 02 00 	movslq 0x218(%rsp),%r9
  8c:	00 
  8d:	4c 63 9c 24 20 02 00 	movslq 0x220(%rsp),%r11
  94:	00 
  95:	4c 8b 94 24 10 02 00 	mov    0x210(%rsp),%r10
  9c:	00 
  9d:	4c 89 45 20          	mov    %r8,0x20(%rbp)
  a1:	c5 fc 10 00          	vmovups (%rax),%ymm0
  a5:	c5 fc 11 85 c0 00 00 	vmovups %ymm0,0xc0(%rbp)
  ac:	00 
  ad:	4d 3b cb             	cmp    %r11,%r9
  b0:	0f 8d a1 03 00 00    	jge    457 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x457>
  b6:	8b 84 24 00 02 00 00 	mov    0x200(%rsp),%eax
  bd:	4d 8b c1             	mov    %r9,%r8
  c0:	c5 7e 6f 35 00 00 00 	vmovdqu 0x0(%rip),%ymm14        # c8 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xc8>
  c7:	00 
  c8:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # d0 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd0>
  cf:	00 
  d0:	4c 8b 7d 20          	mov    0x20(%rbp),%r15
  d4:	99                   	cltd
  d5:	4c 0f af c7          	imul   %rdi,%r8
  d9:	0f b6 d2             	movzbl %dl,%edx
  dc:	4c 03 c1             	add    %rcx,%r8
  df:	03 c2                	add    %edx,%eax
  e1:	49 8b 0a             	mov    (%r10),%rcx
  e4:	c1 f8 08             	sar    $0x8,%eax
  e7:	48 63 d8             	movslq %eax,%rbx
  ea:	49 8b 42 08          	mov    0x8(%r10),%rax
  ee:	48 2b c8             	sub    %rax,%rcx
  f1:	48 89 5d 58          	mov    %rbx,0x58(%rbp)
  f5:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
  f9:	49 8b 4a 10          	mov    0x10(%r10),%rcx
  fd:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
 101:	4a 8d 14 88          	lea    (%rax,%r9,4),%rdx
 105:	48 2b c8             	sub    %rax,%rcx
 108:	48 89 55 30          	mov    %rdx,0x30(%rbp)
 10c:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
 110:	49 8b 4a 18          	mov    0x18(%r10),%rcx
 114:	4c 8b 95 c0 00 00 00 	mov    0xc0(%rbp),%r10
 11b:	48 2b c8             	sub    %rax,%rcx
 11e:	48 8b 85 c8 00 00 00 	mov    0xc8(%rbp),%rax
 125:	4d 2b d9             	sub    %r9,%r11
 128:	4c 8b 8d d8 00 00 00 	mov    0xd8(%rbp),%r9
 12f:	48 8b 75 10          	mov    0x10(%rbp),%rsi
 133:	48 89 4d 18          	mov    %rcx,0x18(%rbp)
 137:	4c 8b 75 18          	mov    0x18(%rbp),%r14
 13b:	48 8b 8d d0 00 00 00 	mov    0xd0(%rbp),%rcx
 142:	4c 89 5d 38          	mov    %r11,0x38(%rbp)
 146:	4c 89 45 28          	mov    %r8,0x28(%rbp)
 14a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 150:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
 154:	c5 c8 57 f6          	vxorps %xmm6,%xmm6,%xmm6
 158:	c5                   	.byte 0xc5
 159:	e8                   	.byte 0xe8

000000000000015a <$LN10>:
 15a:	57                   	push   %rdi
 15b:	d2 c5                	rol    %cl,%ch
 15d:	fc                   	cld
 15e:	11 5d 60             	adc    %ebx,0x60(%rbp)
 161:	c5 fc 11 b5 80 00 00 	vmovups %ymm6,0x80(%rbp)
 168:	00 
 169:	c5 fc 11 95 a0 00 00 	vmovups %ymm2,0xa0(%rbp)
 170:	00 
 171:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
 176:	48 85 db             	test   %rbx,%rbx
 179:	0f 8e 5e 02 00 00    	jle    3dd <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3dd>
 17f:	c5 7a 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%xmm11        # 187 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x187>
 186:	00 
 187:	4c 8b e1             	mov    %rcx,%r12
 18a:	48 89 5d 00          	mov    %rbx,0x0(%rbp)
 18e:	49 2b ca             	sub    %r10,%rcx
 191:	4c 2b e0             	sub    %rax,%r12
 194:	48 89 4d 48          	mov    %rcx,0x48(%rbp)
 198:	4d 8b fa             	mov    %r10,%r15
 19b:	4c 2b f8             	sub    %rax,%r15
 19e:	4d 8b e9             	mov    %r9,%r13
 1a1:	4c 2b e8             	sub    %rax,%r13
 1a4:	49 8b c9             	mov    %r9,%rcx
 1a7:	49 2b c2             	sub    %r10,%rax
 1aa:	49 8b f2             	mov    %r10,%rsi
 1ad:	49 2b ca             	sub    %r10,%rcx
 1b0:	48 89 45 40          	mov    %rax,0x40(%rbp)
 1b4:	48 89 4d 50          	mov    %rcx,0x50(%rbp)
 1b8:	49 8b f8             	mov    %r8,%rdi
 1bb:	c4 41 11 ef ed       	vpxor  %xmm13,%xmm13,%xmm13
 1c0:	44 0f b7 77 02       	movzwl 0x2(%rdi),%r14d
 1c5:	4c 8d 56 04          	lea    0x4(%rsi),%r10
 1c9:	45 33 c0             	xor    %r8d,%r8d
 1cc:	4c 03 d0             	add    %rax,%r10
 1cf:	c4 c1 7e 6f fd       	vmovdqu %ymm13,%ymm7
 1d4:	c4 41 7e 6f c5       	vmovdqu %ymm13,%ymm8
 1d9:	c4 41 7e 6f cd       	vmovdqu %ymm13,%ymm9
 1de:	c4 41 7e 6f d5       	vmovdqu %ymm13,%ymm10
 1e3:	0f 1f 40 00          	nopl   0x0(%rax)
 1e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 1ee:	00 00 
 1f0:	45 8b c8             	mov    %r8d,%r9d
 1f3:	47 8d 1c 00          	lea    (%r8,%r8,1),%r11d
 1f7:	41 c1 e1 05          	shl    $0x5,%r9d
 1fb:	bb 02 00 00 00       	mov    $0x2,%ebx
 200:	49 63 c1             	movslq %r9d,%rax
 203:	41 0f b6 cb          	movzbl %r11b,%ecx
 207:	80 e1 01             	and    $0x1,%cl
 20a:	41 83 c1 10          	add    $0x10,%r9d
 20e:	c0 e1 02             	shl    $0x2,%cl
 211:	c5 fa 6f 54 38 08    	vmovdqu 0x8(%rax,%rdi,1),%xmm2
 217:	c5                   	.byte 0xc5
 218:	f9                   	stc
 219:	71 d2                	jno    1ed <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1ed>

000000000000021b <$LN41>:
 21b:	04 c4                	add    $0xc4,%al
 21d:	c1 79 db cc          	sarl   $0xcc,-0x25(%rcx)
 221:	c4 e2 21 00 d9       	vpshufb %xmm1,%xmm11,%xmm3
 226:	c4 c1 69 db d4       	vpand  %xmm12,%xmm2,%xmm2
 22b:	c4 e2 21 00 c2       	vpshufb %xmm2,%xmm11,%xmm0
 230:	c4 e3 7d 38 cb 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm1
 236:	c4 81 7e 6f 04 3a    	vmovdqu (%r10,%r15,1),%ymm0
 23c:	c4 e2 75 08 f1       	vpsignb %ymm1,%ymm1,%ymm6
 241:	c4 e2 0d 08 e9       	vpsignb %ymm1,%ymm14,%ymm5
 246:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 24b:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 250:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 255:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 25a:	c4 81 7e 6f 04 22    	vmovdqu (%r10,%r12,1),%ymm0
 260:	49 63 c3             	movslq %r11d,%rax
 263:	48 d1 f8             	sar    $1,%rax
 266:	0f b6 44 38 04       	movzbl 0x4(%rax,%rdi,1),%eax
 26b:	d2 e8                	shr    %cl,%al
 26d:	41 0f b6 cb          	movzbl %r11b,%ecx
 271:	24 0f                	and    $0xf,%al
 273:	02 c9                	add    %cl,%cl
 275:	0f b6 d0             	movzbl %al,%edx
 278:	41 ff c3             	inc    %r11d
 27b:	41 0f b7 c6          	movzwl %r14w,%eax
 27f:	66 d3 e8             	shr    %cl,%ax
 282:	66 83 e0 03          	and    $0x3,%ax
 286:	66 c1 e0 04          	shl    $0x4,%ax
 28a:	66 0b c2             	or     %dx,%ax
 28d:	66 83 e8 20          	sub    $0x20,%ax
 291:	98                   	cwtl
 292:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 296:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 29b:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 29f:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2a4:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 2a8:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2ac:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 2b1:	c4 81 7e 6f 04 2a    	vmovdqu (%r10,%r13,1),%ymm0
 2b7:	c4                   	.byte 0xc4

00000000000002b8 <$LN99>:
 2b8:	e2 4d                	loop   307 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x307>
 2ba:	04 d1                	add    $0xd1,%al
 2bc:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 2c1:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2c5:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 2ca:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2cf:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 2d4:	49 83 c2 20          	add    $0x20,%r10
 2d8:	c5                   	.byte 0xc5
 2d9:	ed                   	in     (%dx),%eax
 2da:	f5                   	cmc

00000000000002db <$LN30>:
 2db:	dc c4                	fadd   %st,%st(4)
 2dd:	41                   	rex.B
 2de:	65 fe                	gs (bad)
 2e0:	d2 48 83             	rorb   %cl,-0x7d(%rax)
 2e3:	eb 01                	jmp    2e6 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2e6>
 2e5:	0f 85 15 ff ff ff    	jne    200 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x200>
 2eb:	41 ff c0             	inc    %r8d
 2ee:	41 83 f8 04          	cmp    $0x4,%r8d
 2f2:	0f                   	.byte 0xf
 2f3:	8c f8                	mov    %?,%eax
 2f5:	fe                   	.byte 0xfe

00000000000002f6 <$LN44>:
 2f6:	ff                   	(bad)
 2f7:	ff 0f                	decl   (%rdi)
 2f9:	b7 07                	mov    $0x7,%bh
 2fb:	48 81 c7 88 00 00 00 	add    $0x88,%rdi
 302:	48 8b 4d 48          	mov    0x48(%rbp),%rcx
 306:	c5 fc 10 5d 60       	vmovups 0x60(%rbp),%ymm3
 30b:	c5 fc 10 b5 80 00 00 	vmovups 0x80(%rbp),%ymm6
 312:	00 
 313:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 317:	48 8b 45 40          	mov    0x40(%rbp),%rax
 31b:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 320:	c5 ea 59 06          	vmulss (%rsi),%xmm2,%xmm0
 324:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 329:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 32d:	c4 62 7d b8 f9       	vfmadd231ps %ymm1,%ymm0,%ymm15
 332:	c5 ea 59 04 06       	vmulss (%rsi,%rax,1),%xmm2,%xmm0
 337:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 33c:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 341:	c4 e2 7d b8 d9       	vfmadd231ps %ymm1,%ymm0,%ymm3
 346:	c5 ea 59 04 31       	vmulss (%rcx,%rsi,1),%xmm2,%xmm0
 34b:	48 8b 4d 50          	mov    0x50(%rbp),%rcx
 34f:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 354:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 359:	c4 e2 7d b8 f1       	vfmadd231ps %ymm1,%ymm0,%ymm6
 35e:	c5 ea 59 04 31       	vmulss (%rcx,%rsi,1),%xmm2,%xmm0
 363:	c5 fc 10 95 a0 00 00 	vmovups 0xa0(%rbp),%ymm2
 36a:	00 
 36b:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 370:	c4 c1 7c 5b ca       	vcvtdq2ps %ymm10,%ymm1
 375:	48 81 c6 24 01 00 00 	add    $0x124,%rsi
 37c:	48 83 6d 00 01       	subq   $0x1,0x0(%rbp)
 381:	c4 e2 7d b8 d1       	vfmadd231ps %ymm1,%ymm0,%ymm2
 386:	c5 fc 11 95 a0 00 00 	vmovups %ymm2,0xa0(%rbp)
 38d:	00 
 38e:	c5 fc 11 5d 60       	vmovups %ymm3,0x60(%rbp)
 393:	c5 fc 11 b5 80 00 00 	vmovups %ymm6,0x80(%rbp)
 39a:	00 
 39b:	0f 85 1f fe ff ff    	jne    1c0 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1c0>
 3a1:	48 8b 55 30          	mov    0x30(%rbp),%rdx
 3a5:	48 8b 85 c8 00 00 00 	mov    0xc8(%rbp),%rax
 3ac:	4c 8b 45 28          	mov    0x28(%rbp),%r8
 3b0:	4c 8b 5d 38          	mov    0x38(%rbp),%r11
 3b4:	48 8b 5d 58          	mov    0x58(%rbp),%rbx
 3b8:	4c 8b 8d d8 00 00 00 	mov    0xd8(%rbp),%r9
 3bf:	48 8b 8d d0 00 00 00 	mov    0xd0(%rbp),%rcx
 3c6:	4c 8b 95 c0 00 00 00 	mov    0xc0(%rbp),%r10
 3cd:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
 3d1:	48 8b 75 10          	mov    0x10(%rbp),%rsi
 3d5:	4c 8b 75 18          	mov    0x18(%rbp),%r14
 3d9:	4c 8b 7d 20          	mov    0x20(%rbp),%r15
 3dd:	4d 03 c7             	add    %r15,%r8
 3e0:	c4 63 7d 19 f8 01    	vextractf128 $0x1,%ymm15,%xmm0
 3e6:	c4 c1 78 58 c7       	vaddps %xmm15,%xmm0,%xmm0
 3eb:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3ef:	c5 f3 7c e9          	vhaddps %xmm1,%xmm1,%xmm5
 3f3:	c5 fa 11 2c 3a       	vmovss %xmm5,(%rdx,%rdi,1)
 3f8:	c4 e3 7d 19 d8 01    	vextractf128 $0x1,%ymm3,%xmm0
 3fe:	c5 f8 58 c3          	vaddps %xmm3,%xmm0,%xmm0
 402:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 406:	c5 f3 7c e1          	vhaddps %xmm1,%xmm1,%xmm4
 40a:	c5 fa 11 22          	vmovss %xmm4,(%rdx)
 40e:	c4 e3 7d 19 f0 01    	vextractf128 $0x1,%ymm6,%xmm0
 414:	c5 f8 58 c6          	vaddps %xmm6,%xmm0,%xmm0
 418:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 41c:	c4 e3 7d 19 d0 01    	vextractf128 $0x1,%ymm2,%xmm0
 422:	c5 f8 58 c2          	vaddps %xmm2,%xmm0,%xmm0
 426:	c5 f3 7c d9          	vhaddps %xmm1,%xmm1,%xmm3
 42a:	c5 fa 11 1c 16       	vmovss %xmm3,(%rsi,%rdx,1)
 42f:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 433:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 437:	c4 c1 7a 11 14 16    	vmovss %xmm2,(%r14,%rdx,1)
 43d:	48 83 c2 04          	add    $0x4,%rdx
 441:	4c 89 45 28          	mov    %r8,0x28(%rbp)
 445:	49 83 eb 01          	sub    $0x1,%r11
 449:	48 89 55 30          	mov    %rdx,0x30(%rbp)
 44d:	4c 89 5d 38          	mov    %r11,0x38(%rbp)
 451:	0f 85 f9 fc ff ff    	jne    150 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x150>
 457:	c5 f8 77             	vzeroupper
 45a:	48 8b 8d e0 00 00 00 	mov    0xe0(%rbp),%rcx
 461:	48 33 cc             	xor    %rsp,%rcx
 464:	e8 00 00 00 00       	call   469 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x469>
 469:	4c 8d 9c 24 b0 01 00 	lea    0x1b0(%rsp),%r11
 470:	00 
 471:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 475:	49 8b 73 38          	mov    0x38(%r11),%rsi
 479:	49                   	rex.WB
 47a:	8b                   	.byte 0x8b

000000000000047b <$LN111>:
 47b:	7b 40                	jnp    4bd <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x4bd>

000000000000047d <$LN67>:
 47d:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 483:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 489:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 48f:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 495:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 49b:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 4a1:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 4a7:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 4ad:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 4b4:	ff ff 
 4b6:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 4bd:	ff ff 
 4bf:	49 8b e3             	mov    %r11,%rsp
 4c2:	41 5f                	pop    %r15
 4c4:	41 5e                	pop    %r14
 4c6:	41 5d                	pop    %r13
 4c8:	41 5c                	pop    %r12
 4ca:	5d                   	pop    %rbp
 4cb:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   5:	57                   	push   %rdi
   6:	48 83 ec 50          	sub    $0x50,%rsp
   a:	44 8b 94 24 88 00 00 	mov    0x88(%rsp),%r10d
  11:	00 
  12:	4d 8b d9             	mov    %r9,%r11
  15:	41 8b c2             	mov    %r10d,%eax
  18:	49 8b d8             	mov    %r8,%rbx
  1b:	48 8b fa             	mov    %rdx,%rdi
  1e:	25 ff 00 00 80       	and    $0x800000ff,%eax
  23:	7d 09                	jge    2e <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x2e>
  25:	ff c8                	dec    %eax
  27:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  2c:	ff c0                	inc    %eax
  2e:	85 c0                	test   %eax,%eax
  30:	74 21                	je     53 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x53>
  32:	4c 8d 0d 00 00 00 00 	lea    0x0(%rip),%r9        # 39 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x39>
  39:	ba 0e 01 00 00       	mov    $0x10e,%edx
  3e:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 45 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x45>
  45:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 4c <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x4c>
  4c:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 52 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x52>
  52:	cc                   	int3
  53:	83 e9 15             	sub    $0x15,%ecx
  56:	0f 84 1e 02 00 00    	je     27a <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x27a>
  5c:	83 e9 01             	sub    $0x1,%ecx
  5f:	0f 84 b4 01 00 00    	je     219 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x219>
  65:	83 f9 01             	cmp    $0x1,%ecx
  68:	74 1a                	je     84 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x84>
  6a:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 71 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x71>
  71:	ba 13 01 00 00       	mov    $0x113,%edx
  76:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 7d <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x7d>
  7d:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 83 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x83>
  83:	cc                   	int3
  84:	8b 8c 24 98 00 00 00 	mov    0x98(%rsp),%ecx
  8b:	83 e9 01             	sub    $0x1,%ecx
  8e:	0f 84 2f 01 00 00    	je     1c3 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x1c3>
  94:	83 e9 01             	sub    $0x1,%ecx
  97:	0f 84 d0 00 00 00    	je     16d <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x16d>
  9d:	83 e9 01             	sub    $0x1,%ecx
  a0:	74 75                	je     117 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x117>
  a2:	83 f9 01             	cmp    $0x1,%ecx
  a5:	74 1a                	je     c1 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0xc1>
  a7:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # ae <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0xae>
  ae:	ba 07 01 00 00       	mov    $0x107,%edx
  b3:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ba <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0xba>
  ba:	ff 15 00 00 00 00    	call   *0x0(%rip)        # c0 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0xc0>
  c0:	cc                   	int3
  c1:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
  c8:	4d 8b c3             	mov    %r11,%r8
  cb:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
  d2:	00 
  d3:	48 8b d3             	mov    %rbx,%rdx
  d6:	89 44 24 40          	mov    %eax,0x40(%rsp)
  da:	48 8b cf             	mov    %rdi,%rcx
  dd:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
  e4:	89 44 24 38          	mov    %eax,0x38(%rsp)
  e8:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  ef:	00 
  f0:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  f5:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  fc:	00 
  fd:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 102:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
 107:	e8 00 00 00 00       	call   10c <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x10c>
 10c:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 111:	48 83 c4 50          	add    $0x50,%rsp
 115:	5f                   	pop    %rdi
 116:	c3                   	ret
 117:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
 11e:	4d 8b c3             	mov    %r11,%r8
 121:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
 128:	00 
 129:	48 8b d3             	mov    %rbx,%rdx
 12c:	89 44 24 40          	mov    %eax,0x40(%rsp)
 130:	48 8b cf             	mov    %rdi,%rcx
 133:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 13a:	89 44 24 38          	mov    %eax,0x38(%rsp)
 13e:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
 145:	00 
 146:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
 14b:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
 152:	00 
 153:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 158:	44                   	rex.R
 159:	89                   	.byte 0x89

000000000000015a <$LN10>:
 15a:	54                   	push   %rsp
 15b:	24 20                	and    $0x20,%al
 15d:	e8 00 00 00 00       	call   162 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x162>
 162:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 167:	48 83 c4 50          	add    $0x50,%rsp
 16b:	5f                   	pop    %rdi
 16c:	c3                   	ret
 16d:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
 174:	4d 8b c3             	mov    %r11,%r8
 177:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
 17e:	00 
 17f:	48 8b d3             	mov    %rbx,%rdx
 182:	89 44 24 40          	mov    %eax,0x40(%rsp)
 186:	48 8b cf             	mov    %rdi,%rcx
 189:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 190:	89 44 24 38          	mov    %eax,0x38(%rsp)
 194:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
 19b:	00 
 19c:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
 1a1:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
 1a8:	00 
 1a9:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 1ae:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
 1b3:	e8 00 00 00 00       	call   1b8 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x1b8>
 1b8:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 1bd:	48 83 c4 50          	add    $0x50,%rsp
 1c1:	5f                   	pop    %rdi
 1c2:	c3                   	ret
 1c3:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
 1ca:	4d 8b c3             	mov    %r11,%r8
 1cd:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
 1d4:	00 
 1d5:	48 8b d3             	mov    %rbx,%rdx
 1d8:	89 44 24 40          	mov    %eax,0x40(%rsp)
 1dc:	48 8b cf             	mov    %rdi,%rcx
 1df:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 1e6:	89 44 24 38          	mov    %eax,0x38(%rsp)
 1ea:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
 1f1:	00 
 1f2:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
 1f7:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
 1fe:	00 
 1ff:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 204:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
 209:	e8 00 00 00 00       	call   20e <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x20e>
 20e:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 213:	48 83 c4 50          	add    $0x50,%rsp
 217:	5f                   	pop    %rdi
 218:	c3                   	ret
 219:	8b                   	.byte 0x8b
 21a:	84                   	.byte 0x84

000000000000021b <$LN41>:
 21b:	24 b0                	and    $0xb0,%al
 21d:	00 00                	add    %al,(%rax)
 21f:	00 4d 8b             	add    %cl,-0x75(%rbp)
 222:	c3                   	ret
 223:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
 22a:	00 
 22b:	48 8b d3             	mov    %rbx,%rdx
 22e:	89 44 24 48          	mov    %eax,0x48(%rsp)
 232:	48 8b cf             	mov    %rdi,%rcx
 235:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 23c:	89 44 24 40          	mov    %eax,0x40(%rsp)
 240:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
 247:	00 
 248:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
 24d:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
 254:	89 44 24 30          	mov    %eax,0x30(%rsp)
 258:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
 25f:	00 
 260:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 265:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
 26a:	e8 00 00 00 00       	call   26f <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x26f>
 26f:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 274:	48 83 c4 50          	add    $0x50,%rsp
 278:	5f                   	pop    %rdi
 279:	c3                   	ret
 27a:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
 281:	4d 8b c3             	mov    %r11,%r8
 284:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
 28b:	00 
 28c:	48 8b d3             	mov    %rbx,%rdx
 28f:	89 44 24 48          	mov    %eax,0x48(%rsp)
 293:	48 8b cf             	mov    %rdi,%rcx
 296:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 29d:	89 44 24 40          	mov    %eax,0x40(%rsp)
 2a1:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
 2a8:	00 
 2a9:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
 2ae:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
 2b5:	89                   	.byte 0x89
 2b6:	44                   	rex.R
 2b7:	24                   	.byte 0x24

00000000000002b8 <$LN99>:
 2b8:	30 48 8b             	xor    %cl,-0x75(%rax)
 2bb:	84 24 90             	test   %ah,(%rax,%rdx,4)
 2be:	00 00                	add    %al,(%rax)
 2c0:	00 48 89             	add    %cl,-0x77(%rax)
 2c3:	44 24 28             	rex.R and $0x28,%al
 2c6:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
 2cb:	e8 00 00 00 00       	call   2d0 <??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x2d0>
 2d0:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 2d5:	48 83 c4 50          	add    $0x50,%rsp
 2d9:	5f                   	pop    %rdi
 2da:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	40 53                	rex push %rbx
   2:	55                   	push   %rbp
   3:	57                   	push   %rdi
   4:	41 57                	push   %r15
   6:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
   d:	44 8b 9c 24 d8 00 00 	mov    0xd8(%rsp),%r11d
  14:	00 
  15:	4c 8b d2             	mov    %rdx,%r10
  18:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
  1f:	00 
  20:	41 8b c3             	mov    %r11d,%eax
  23:	99                   	cltd
  24:	49 8b e9             	mov    %r9,%rbp
  27:	4c 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%r9
  2e:	00 
  2f:	49 8b f8             	mov    %r8,%rdi
  32:	0f b6 d2             	movzbl %dl,%edx
  35:	03 c2                	add    %edx,%eax
  37:	44 8b f8             	mov    %eax,%r15d
  3a:	0f b6 c0             	movzbl %al,%eax
  3d:	41 c1 ff 08          	sar    $0x8,%r15d
  41:	3b c2                	cmp    %edx,%eax
  43:	74 21                	je     66 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x66>
  45:	4c 8d 0d 00 00 00 00 	lea    0x0(%rip),%r9        # 4c <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x4c>
  4c:	ba 0e 01 00 00       	mov    $0x10e,%edx
  51:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 58 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x58>
  58:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 5f <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x5f>
  5f:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 65 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x65>
  65:	cc                   	int3
  66:	83 e9 15             	sub    $0x15,%ecx
  69:	0f 84 bb 03 00 00    	je     42a <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x42a>
  6f:	83 e9 01             	sub    $0x1,%ecx
  72:	0f 84 9e 01 00 00    	je     216 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x216>
  78:	83 f9 01             	cmp    $0x1,%ecx
  7b:	74 1a                	je     97 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x97>
  7d:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 84 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x84>
  84:	ba 13 01 00 00       	mov    $0x113,%edx
  89:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 90 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x90>
  90:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 96 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x96>
  96:	cc                   	int3
  97:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
  9e:	83 ea 01             	sub    $0x1,%edx
  a1:	0f 84 19 01 00 00    	je     1c0 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x1c0>
  a7:	83 ea 01             	sub    $0x1,%edx
  aa:	0f 84 ba 00 00 00    	je     16a <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x16a>
  b0:	83 ea 01             	sub    $0x1,%edx
  b3:	74 5f                	je     114 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x114>
  b5:	83 fa 01             	cmp    $0x1,%edx
  b8:	0f 85 7b 01 00 00    	jne    239 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x239>
  be:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
  c5:	4c 8b c5             	mov    %rbp,%r8
  c8:	89 84 24 f0 00 00 00 	mov    %eax,0xf0(%rsp)
  cf:	48 8b d7             	mov    %rdi,%rdx
  d2:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
  d9:	49 8b ca             	mov    %r10,%rcx
  dc:	89 84 24 e8 00 00 00 	mov    %eax,0xe8(%rsp)
  e3:	48 89 9c 24 e0 00 00 	mov    %rbx,0xe0(%rsp)
  ea:	00 
  eb:	4c 89 8c 24 d8 00 00 	mov    %r9,0xd8(%rsp)
  f2:	00 
  f3:	4c 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%r9
  fa:	00 
  fb:	44 89 9c 24 d0 00 00 	mov    %r11d,0xd0(%rsp)
 102:	00 
 103:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 10a:	41 5f                	pop    %r15
 10c:	5f                   	pop    %rdi
 10d:	5d                   	pop    %rbp
 10e:	5b                   	pop    %rbx
 10f:	e9 00 00 00 00       	jmp    114 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x114>
 114:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
 11b:	4c 8b c5             	mov    %rbp,%r8
 11e:	89 84 24 f0 00 00 00 	mov    %eax,0xf0(%rsp)
 125:	48 8b d7             	mov    %rdi,%rdx
 128:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
 12f:	49 8b ca             	mov    %r10,%rcx
 132:	89 84 24 e8 00 00 00 	mov    %eax,0xe8(%rsp)
 139:	48 89 9c 24 e0 00 00 	mov    %rbx,0xe0(%rsp)
 140:	00 
 141:	4c 89 8c 24 d8 00 00 	mov    %r9,0xd8(%rsp)
 148:	00 
 149:	4c 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%r9
 150:	00 
 151:	44 89 9c 24 d0 00 00 	mov    %r11d,0xd0(%rsp)
 158:	00 
 159:	48                   	rex.W

000000000000015a <$LN10>:
 15a:	81 c4 88 00 00 00    	add    $0x88,%esp
 160:	41 5f                	pop    %r15
 162:	5f                   	pop    %rdi
 163:	5d                   	pop    %rbp
 164:	5b                   	pop    %rbx
 165:	e9 00 00 00 00       	jmp    16a <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x16a>
 16a:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
 171:	4c 8b c5             	mov    %rbp,%r8
 174:	89 84 24 f0 00 00 00 	mov    %eax,0xf0(%rsp)
 17b:	48 8b d7             	mov    %rdi,%rdx
 17e:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
 185:	49 8b ca             	mov    %r10,%rcx
 188:	89 84 24 e8 00 00 00 	mov    %eax,0xe8(%rsp)
 18f:	48 89 9c 24 e0 00 00 	mov    %rbx,0xe0(%rsp)
 196:	00 
 197:	4c 89 8c 24 d8 00 00 	mov    %r9,0xd8(%rsp)
 19e:	00 
 19f:	4c 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%r9
 1a6:	00 
 1a7:	44 89 9c 24 d0 00 00 	mov    %r11d,0xd0(%rsp)
 1ae:	00 
 1af:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 1b6:	41 5f                	pop    %r15
 1b8:	5f                   	pop    %rdi
 1b9:	5d                   	pop    %rbp
 1ba:	5b                   	pop    %rbx
 1bb:	e9 00 00 00 00       	jmp    1c0 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x1c0>
 1c0:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
 1c7:	4c 8b c5             	mov    %rbp,%r8
 1ca:	89 84 24 f0 00 00 00 	mov    %eax,0xf0(%rsp)
 1d1:	48 8b d7             	mov    %rdi,%rdx
 1d4:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
 1db:	49 8b ca             	mov    %r10,%rcx
 1de:	89 84 24 e8 00 00 00 	mov    %eax,0xe8(%rsp)
 1e5:	48 89 9c 24 e0 00 00 	mov    %rbx,0xe0(%rsp)
 1ec:	00 
 1ed:	4c 89 8c 24 d8 00 00 	mov    %r9,0xd8(%rsp)
 1f4:	00 
 1f5:	4c 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%r9
 1fc:	00 
 1fd:	44 89 9c 24 d0 00 00 	mov    %r11d,0xd0(%rsp)
 204:	00 
 205:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 20c:	41 5f                	pop    %r15
 20e:	5f                   	pop    %rdi
 20f:	5d                   	pop    %rbp
 210:	5b                   	pop    %rbx
 211:	e9 00 00 00 00       	jmp    216 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x216>
 216:	8b                   	.byte 0x8b
 217:	8c 24 e8             	mov    %fs,(%rax,%rbp,8)
	...

000000000000021b <$LN41>:
 21b:	00 00                	add    %al,(%rax)
 21d:	83 e9 01             	sub    $0x1,%ecx
 220:	0f 84 ae 01 00 00    	je     3d4 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x3d4>
 226:	83 e9 01             	sub    $0x1,%ecx
 229:	0f 84 4f 01 00 00    	je     37e <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x37e>
 22f:	83 e9 01             	sub    $0x1,%ecx
 232:	74 75                	je     2a9 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x2a9>
 234:	83 f9 01             	cmp    $0x1,%ecx
 237:	74 1a                	je     253 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x253>
 239:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 240 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x240>
 240:	ba 07 01 00 00       	mov    $0x107,%edx
 245:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 24c <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x24c>
 24c:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 252 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x252>
 252:	cc                   	int3
 253:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
 25a:	4c 8b c5             	mov    %rbp,%r8
 25d:	89 84 24 f0 00 00 00 	mov    %eax,0xf0(%rsp)
 264:	48 8b d7             	mov    %rdi,%rdx
 267:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
 26e:	49 8b ca             	mov    %r10,%rcx
 271:	89 84 24 e8 00 00 00 	mov    %eax,0xe8(%rsp)
 278:	48 89 9c 24 e0 00 00 	mov    %rbx,0xe0(%rsp)
 27f:	00 
 280:	4c 89 8c 24 d8 00 00 	mov    %r9,0xd8(%rsp)
 287:	00 
 288:	4c 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%r9
 28f:	00 
 290:	44 89 9c 24 d0 00 00 	mov    %r11d,0xd0(%rsp)
 297:	00 
 298:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 29f:	41 5f                	pop    %r15
 2a1:	5f                   	pop    %rdi
 2a2:	5d                   	pop    %rbp
 2a3:	5b                   	pop    %rbx
 2a4:	e9 00 00 00 00       	jmp    2a9 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x2a9>
 2a9:	49 8b 01             	mov    (%r9),%rax
 2ac:	48 63 8c 24 f8 00 00 	movslq 0xf8(%rsp),%rcx
 2b3:	00 
 2b4:	48                   	rex.W
 2b5:	89                   	.byte 0x89
 2b6:	44                   	rex.R
 2b7:	24                   	.byte 0x24

00000000000002b8 <$LN99>:
 2b8:	60                   	(bad)
 2b9:	49 8b 41 08          	mov    0x8(%r9),%rax
 2bd:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
 2c2:	49 8b 41 10          	mov    0x10(%r9),%rax
 2c6:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
 2cb:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
 2d2:	3b c8                	cmp    %eax,%ecx
 2d4:	0f 8d 96 01 00 00    	jge    470 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x470>
 2da:	48                   	rex.W

00000000000002db <$LN30>:
 2db:	89 b4 24 b0 00 00 00 	mov    %esi,0xb0(%rsp)
 2e2:	48 8d 3c 8d 00 00 00 	lea    0x0(,%rcx,4),%rdi
 2e9:	00 
 2ea:	48 8b f1             	mov    %rcx,%rsi
 2ed:	4c 89 b4 24 80 00 00 	mov    %r14,0x80(%rsp)
 2f4:	00 
 2f5:	48                   	rex.W

00000000000002f6 <$LN44>:
 2f6:	0f af f5             	imul   %ebp,%esi
 2f9:	49 03 f2             	add    %r10,%rsi
 2fc:	2b c1                	sub    %ecx,%eax
 2fe:	44 8b f0             	mov    %eax,%r14d
 301:	0f 1f 40 00          	nopl   0x0(%rax)
 305:	66 66 66 0f 1f 84 00 	data16 data16 nopw 0x0(%rax,%rax,1)
 30c:	00 00 00 00 
 310:	4c 8d 4c 24 50       	lea    0x50(%rsp),%r9
 315:	41 8b d7             	mov    %r15d,%edx
 318:	4c 8d 44 24 60       	lea    0x60(%rsp),%r8
 31d:	48 8b ce             	mov    %rsi,%rcx
 320:	e8 00 00 00 00       	call   325 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x325>
 325:	48 8b 03             	mov    (%rbx),%rax
 328:	48 8d 7f 04          	lea    0x4(%rdi),%rdi
 32c:	c5 fa 10 44 24 50    	vmovss 0x50(%rsp),%xmm0
 332:	c5 fa 10 4c 24 54    	vmovss 0x54(%rsp),%xmm1
 338:	48 03 f5             	add    %rbp,%rsi
 33b:	c5 fa 11 44 07 fc    	vmovss %xmm0,-0x4(%rdi,%rax,1)
 341:	48 8b 43 08          	mov    0x8(%rbx),%rax
 345:	c5 fa 10 44 24 58    	vmovss 0x58(%rsp),%xmm0
 34b:	c5 fa 11 4c 07 fc    	vmovss %xmm1,-0x4(%rdi,%rax,1)
 351:	48 8b 43 10          	mov    0x10(%rbx),%rax
 355:	c5 fa 11 44 07 fc    	vmovss %xmm0,-0x4(%rdi,%rax,1)
 35b:	49 83 ee 01          	sub    $0x1,%r14
 35f:	75 af                	jne    310 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x310>
 361:	4c 8b b4 24 80 00 00 	mov    0x80(%rsp),%r14
 368:	00 
 369:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
 370:	00 
 371:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 378:	41 5f                	pop    %r15
 37a:	5f                   	pop    %rdi
 37b:	5d                   	pop    %rbp
 37c:	5b                   	pop    %rbx
 37d:	c3                   	ret
 37e:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
 385:	4c 8b c5             	mov    %rbp,%r8
 388:	89 84 24 f0 00 00 00 	mov    %eax,0xf0(%rsp)
 38f:	48 8b d7             	mov    %rdi,%rdx
 392:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
 399:	49 8b ca             	mov    %r10,%rcx
 39c:	89 84 24 e8 00 00 00 	mov    %eax,0xe8(%rsp)
 3a3:	48 89 9c 24 e0 00 00 	mov    %rbx,0xe0(%rsp)
 3aa:	00 
 3ab:	4c 89 8c 24 d8 00 00 	mov    %r9,0xd8(%rsp)
 3b2:	00 
 3b3:	4c 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%r9
 3ba:	00 
 3bb:	44 89 9c 24 d0 00 00 	mov    %r11d,0xd0(%rsp)
 3c2:	00 
 3c3:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 3ca:	41 5f                	pop    %r15
 3cc:	5f                   	pop    %rdi
 3cd:	5d                   	pop    %rbp
 3ce:	5b                   	pop    %rbx
 3cf:	e9 00 00 00 00       	jmp    3d4 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x3d4>
 3d4:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
 3db:	4c 8b c5             	mov    %rbp,%r8
 3de:	89 84 24 f0 00 00 00 	mov    %eax,0xf0(%rsp)
 3e5:	48 8b d7             	mov    %rdi,%rdx
 3e8:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
 3ef:	49 8b ca             	mov    %r10,%rcx
 3f2:	89 84 24 e8 00 00 00 	mov    %eax,0xe8(%rsp)
 3f9:	48 89 9c 24 e0 00 00 	mov    %rbx,0xe0(%rsp)
 400:	00 
 401:	4c 89 8c 24 d8 00 00 	mov    %r9,0xd8(%rsp)
 408:	00 
 409:	4c 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%r9
 410:	00 
 411:	44 89 9c 24 d0 00 00 	mov    %r11d,0xd0(%rsp)
 418:	00 
 419:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 420:	41 5f                	pop    %r15
 422:	5f                   	pop    %rdi
 423:	5d                   	pop    %rbp
 424:	5b                   	pop    %rbx
 425:	e9 00 00 00 00       	jmp    42a <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x42a>
 42a:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
 431:	4c 8b c5             	mov    %rbp,%r8
 434:	89 44 24 48          	mov    %eax,0x48(%rsp)
 438:	48 8b d7             	mov    %rdi,%rdx
 43b:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
 442:	49 8b ca             	mov    %r10,%rcx
 445:	89 44 24 40          	mov    %eax,0x40(%rsp)
 449:	8b 84 24 e8 00 00 00 	mov    0xe8(%rsp),%eax
 450:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
 455:	89 44 24 30          	mov    %eax,0x30(%rsp)
 459:	4c 89 4c 24 28       	mov    %r9,0x28(%rsp)
 45e:	4c 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%r9
 465:	00 
 466:	44 89 5c 24 20       	mov    %r11d,0x20(%rsp)
 46b:	e8 00 00 00 00       	call   470 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x470>
 470:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 477:	41 5f                	pop    %r15
 479:	5f                   	pop    %rdi
 47a:	5d                   	pop    %rbp

000000000000047b <$LN111>:
 47b:	5b                   	pop    %rbx
 47c:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	55                   	push   %rbp
   4:	57                   	push   %rdi
   5:	41 54                	push   %r12
   7:	41 57                	push   %r15
   9:	48 8d 68 d1          	lea    -0x2f(%rax),%rbp
   d:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
  14:	48 8b 7d 6f          	mov    0x6f(%rbp),%rdi
  18:	4c 8b da             	mov    %rdx,%r11
  1b:	8b 55 67             	mov    0x67(%rbp),%edx
  1e:	4c 8b d1             	mov    %rcx,%r10
  21:	48 8b 4d 5f          	mov    0x5f(%rbp),%rcx
  25:	4d 8b e1             	mov    %r9,%r12
  28:	4d 8b f8             	mov    %r8,%r15
  2b:	83 ea 01             	sub    $0x1,%edx
  2e:	0f 84 0f 04 00 00    	je     443 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x443>
  34:	48 89 58 d8          	mov    %rbx,-0x28(%rax)
  38:	48 89 70 d0          	mov    %rsi,-0x30(%rax)
  3c:	4c 89 68 c8          	mov    %r13,-0x38(%rax)
  40:	4c 89 70 c0          	mov    %r14,-0x40(%rax)
  44:	c5 f8 29 70 a8       	vmovaps %xmm6,-0x58(%rax)
  49:	c5 f8 29 78 98       	vmovaps %xmm7,-0x68(%rax)
  4e:	c5 78 29 40 88       	vmovaps %xmm8,-0x78(%rax)
  53:	83 ea 01             	sub    $0x1,%edx
  56:	0f 84 ed 02 00 00    	je     349 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x349>
  5c:	83 ea 01             	sub    $0x1,%edx
  5f:	0f 84 bf 01 00 00    	je     224 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x224>
  65:	83 fa 01             	cmp    $0x1,%edx
  68:	74 1a                	je     84 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x84>
  6a:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 71 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x71>
  71:	ba 07 01 00 00       	mov    $0x107,%edx
  76:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 7d <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x7d>
  7d:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 83 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x83>
  83:	cc                   	int3
  84:	48 8b 01             	mov    (%rcx),%rax
  87:	4c 63 45 77          	movslq 0x77(%rbp),%r8
  8b:	48 89 45 8f          	mov    %rax,-0x71(%rbp)
  8f:	48 8b 41 08          	mov    0x8(%rcx),%rax
  93:	48 89 45 97          	mov    %rax,-0x69(%rbp)
  97:	48 8b 41 10          	mov    0x10(%rcx),%rax
  9b:	48 89 45 9f          	mov    %rax,-0x61(%rbp)
  9f:	48 8b 41 18          	mov    0x18(%rcx),%rax
  a3:	8b 4d 7f             	mov    0x7f(%rbp),%ecx
  a6:	48 89 45 a7          	mov    %rax,-0x59(%rbp)
  aa:	44 3b c1             	cmp    %ecx,%r8d
  ad:	0f 8d 28 01 00 00    	jge    1db <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1db>
  b3:	8b 45 57             	mov    0x57(%rbp),%eax
  b6:	4e 8d 34 85 00 00 00 	lea    0x0(,%r8,4),%r14
  bd:	00 
  be:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # c6 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0xc6>
  c5:	00 
  c6:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # ce <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0xce>
  cd:	00 
  ce:	99                   	cltd
  cf:	49 8b d8             	mov    %r8,%rbx
  d2:	49 0f af df          	imul   %r15,%rbx
  d6:	49 8b f0             	mov    %r8,%rsi
  d9:	44 0f b6 ea          	movzbl %dl,%r13d
  dd:	44 03 e8             	add    %eax,%r13d
  e0:	49 03 da             	add    %r10,%rbx
  e3:	49 0f af f4          	imul   %r12,%rsi
  e7:	41 c1 fd 08          	sar    $0x8,%r13d
  eb:	49 03 f3             	add    %r11,%rsi
  ee:	41 2b c8             	sub    %r8d,%ecx
  f1:	8b c1                	mov    %ecx,%eax
  f3:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  ff:	00 
 100:	4c 8d 4c 24 68       	lea    0x68(%rsp),%r9
 105:	41 8b d5             	mov    %r13d,%edx
 108:	4c 8d 45 8f          	lea    -0x71(%rbp),%r8
 10c:	48 8b cb             	mov    %rbx,%rcx
 10f:	e8 00 00 00 00       	call   114 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x114>
 114:	4c 8d 4c 24 58       	lea    0x58(%rsp),%r9
 119:	41 8b d5             	mov    %r13d,%edx
 11c:	4c 8d 45 8f          	lea    -0x71(%rbp),%r8
 120:	48 8b ce             	mov    %rsi,%rcx
 123:	e8 00 00 00 00       	call   128 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x128>
 128:	c5 fa 10 74 24 68    	vmovss 0x68(%rsp),%xmm6
 12e:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 132:	e8 00 00 00 00       	call   137 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x137>
 137:	48 8b 07             	mov    (%rdi),%rax
 13a:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 13f:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 143:	c5 ea 59 5c 24 58    	vmulss 0x58(%rsp),%xmm2,%xmm3
 149:	c5 fa 10 75 83       	vmovss -0x7d(%rbp),%xmm6
 14e:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 152:	c4 c1 7a 11 1c 06    	vmovss %xmm3,(%r14,%rax,1)
 158:	e8                   	.byte 0xe8
	...

000000000000015a <$LN10>:
 15a:	00 00                	add    %al,(%rax)
 15c:	00 48 8b             	add    %cl,-0x75(%rax)
 15f:	47 08 c4             	rex.RXB or %r8b,%r12b
 162:	c1 7a 58 c8          	sarl   $0xc8,0x58(%rdx)
 166:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 16a:	c5 ea 59 5c 24 5c    	vmulss 0x5c(%rsp),%xmm2,%xmm3
 170:	c5 fa 10 75 87       	vmovss -0x79(%rbp),%xmm6
 175:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 179:	c4 c1 7a 11 1c 06    	vmovss %xmm3,(%r14,%rax,1)
 17f:	e8 00 00 00 00       	call   184 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x184>
 184:	48 8b 47 10          	mov    0x10(%rdi),%rax
 188:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 18d:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 191:	c5 ea 59 5c 24 60    	vmulss 0x60(%rsp),%xmm2,%xmm3
 197:	c5 fa 10 75 8b       	vmovss -0x75(%rbp),%xmm6
 19c:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 1a0:	c4 c1 7a 11 1c 06    	vmovss %xmm3,(%r14,%rax,1)
 1a6:	e8 00 00 00 00       	call   1ab <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1ab>
 1ab:	48 8b 47 18          	mov    0x18(%rdi),%rax
 1af:	4d 8d 76 04          	lea    0x4(%r14),%r14
 1b3:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 1b8:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 1bc:	c5 ea 59 5c 24 64    	vmulss 0x64(%rsp),%xmm2,%xmm3
 1c2:	49 03 df             	add    %r15,%rbx
 1c5:	49 03 f4             	add    %r12,%rsi
 1c8:	48 83 6c 24 50 01    	subq   $0x1,0x50(%rsp)
 1ce:	c4 c1 7a 11 5c 06 fc 	vmovss %xmm3,-0x4(%r14,%rax,1)
 1d5:	0f 85 25 ff ff ff    	jne    100 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x100>
 1db:	c5 f8 28 bc 24 b0 00 	vmovaps 0xb0(%rsp),%xmm7
 1e2:	00 00 
 1e4:	c5 f8 28 b4 24 c0 00 	vmovaps 0xc0(%rsp),%xmm6
 1eb:	00 00 
 1ed:	4c 8b b4 24 d8 00 00 	mov    0xd8(%rsp),%r14
 1f4:	00 
 1f5:	4c 8b ac 24 e0 00 00 	mov    0xe0(%rsp),%r13
 1fc:	00 
 1fd:	48 8b b4 24 e8 00 00 	mov    0xe8(%rsp),%rsi
 204:	00 
 205:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
 20c:	00 
 20d:	c5 78 28 84 24 a0 00 	vmovaps 0xa0(%rsp),%xmm8
 214:	00 00 
 216:	48                   	rex.W
 217:	81                   	.byte 0x81
 218:	c4                   	.byte 0xc4
 219:	f8                   	clc
	...

000000000000021b <$LN41>:
 21b:	00 00                	add    %al,(%rax)
 21d:	41 5f                	pop    %r15
 21f:	41 5c                	pop    %r12
 221:	5f                   	pop    %rdi
 222:	5d                   	pop    %rbp
 223:	c3                   	ret
 224:	48 8b 01             	mov    (%rcx),%rax
 227:	4c 63 45 77          	movslq 0x77(%rbp),%r8
 22b:	48 89 45 8f          	mov    %rax,-0x71(%rbp)
 22f:	48 8b 41 08          	mov    0x8(%rcx),%rax
 233:	48 89 45 97          	mov    %rax,-0x69(%rbp)
 237:	48 8b 41 10          	mov    0x10(%rcx),%rax
 23b:	8b 4d 7f             	mov    0x7f(%rbp),%ecx
 23e:	48 89 45 9f          	mov    %rax,-0x61(%rbp)
 242:	44 3b c1             	cmp    %ecx,%r8d
 245:	7d 94                	jge    1db <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1db>
 247:	8b 45 57             	mov    0x57(%rbp),%eax
 24a:	4e 8d 34 85 00 00 00 	lea    0x0(,%r8,4),%r14
 251:	00 
 252:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # 25a <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x25a>
 259:	00 
 25a:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # 262 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x262>
 261:	00 
 262:	99                   	cltd
 263:	49 8b d8             	mov    %r8,%rbx
 266:	49 0f af df          	imul   %r15,%rbx
 26a:	49 8b f0             	mov    %r8,%rsi
 26d:	44 0f b6 ea          	movzbl %dl,%r13d
 271:	44 03 e8             	add    %eax,%r13d
 274:	49 03 da             	add    %r10,%rbx
 277:	49 0f af f4          	imul   %r12,%rsi
 27b:	41 c1 fd 08          	sar    $0x8,%r13d
 27f:	49 03 f3             	add    %r11,%rsi
 282:	41 2b c8             	sub    %r8d,%ecx
 285:	8b c1                	mov    %ecx,%eax
 287:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
 28c:	0f 1f 40 00          	nopl   0x0(%rax)
 290:	4c 8d 4c 24 68       	lea    0x68(%rsp),%r9
 295:	41 8b d5             	mov    %r13d,%edx
 298:	4c 8d 45 8f          	lea    -0x71(%rbp),%r8
 29c:	48 8b cb             	mov    %rbx,%rcx
 29f:	e8 00 00 00 00       	call   2a4 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x2a4>
 2a4:	4c 8d 4c 24 58       	lea    0x58(%rsp),%r9
 2a9:	41 8b d5             	mov    %r13d,%edx
 2ac:	4c 8d 45 8f          	lea    -0x71(%rbp),%r8
 2b0:	48 8b ce             	mov    %rsi,%rcx
 2b3:	e8 00 00 00 00       	call   2b8 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x2b8>

00000000000002b8 <$LN99>:
 2b8:	c5 fa 10 74 24 68    	vmovss 0x68(%rsp),%xmm6
 2be:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 2c2:	e8 00 00 00 00       	call   2c7 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x2c7>
 2c7:	48 8b 07             	mov    (%rdi),%rax
 2ca:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 2cf:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 2d3:	c5 ea 59 5c 24 58    	vmulss 0x58(%rsp),%xmm2,%xmm3
 2d9:	c5                   	.byte 0xc5
 2da:	fa                   	cli

00000000000002db <$LN30>:
 2db:	10 75 83             	adc    %dh,-0x7d(%rbp)
 2de:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 2e2:	c4 c1 7a 11 1c 06    	vmovss %xmm3,(%r14,%rax,1)
 2e8:	e8 00 00 00 00       	call   2ed <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x2ed>
 2ed:	48 8b 47 08          	mov    0x8(%rdi),%rax
 2f1:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1

00000000000002f6 <$LN44>:
 2f6:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 2fa:	c5 ea 59 5c 24 5c    	vmulss 0x5c(%rsp),%xmm2,%xmm3
 300:	c5 fa 10 75 87       	vmovss -0x79(%rbp),%xmm6
 305:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 309:	c4 c1 7a 11 1c 06    	vmovss %xmm3,(%r14,%rax,1)
 30f:	e8 00 00 00 00       	call   314 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x314>
 314:	48 8b 47 10          	mov    0x10(%rdi),%rax
 318:	4d 8d 76 04          	lea    0x4(%r14),%r14
 31c:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 321:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 325:	c5 ea 59 5c 24 60    	vmulss 0x60(%rsp),%xmm2,%xmm3
 32b:	49 03 df             	add    %r15,%rbx
 32e:	49 03 f4             	add    %r12,%rsi
 331:	48 83 6c 24 50 01    	subq   $0x1,0x50(%rsp)
 337:	c4 c1 7a 11 5c 06 fc 	vmovss %xmm3,-0x4(%r14,%rax,1)
 33e:	0f 85 4c ff ff ff    	jne    290 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x290>
 344:	e9 92 fe ff ff       	jmp    1db <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1db>
 349:	48 8b 01             	mov    (%rcx),%rax
 34c:	4c 63 45 77          	movslq 0x77(%rbp),%r8
 350:	48 89 45 8f          	mov    %rax,-0x71(%rbp)
 354:	48 8b 41 08          	mov    0x8(%rcx),%rax
 358:	8b 4d 7f             	mov    0x7f(%rbp),%ecx
 35b:	48 89 45 97          	mov    %rax,-0x69(%rbp)
 35f:	44 3b c1             	cmp    %ecx,%r8d
 362:	0f 8d 73 fe ff ff    	jge    1db <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1db>
 368:	8b 45 57             	mov    0x57(%rbp),%eax
 36b:	4e 8d 34 85 00 00 00 	lea    0x0(,%r8,4),%r14
 372:	00 
 373:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # 37b <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x37b>
 37a:	00 
 37b:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # 383 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x383>
 382:	00 
 383:	99                   	cltd
 384:	49 8b d8             	mov    %r8,%rbx
 387:	49 0f af df          	imul   %r15,%rbx
 38b:	49 8b f0             	mov    %r8,%rsi
 38e:	44 0f b6 ea          	movzbl %dl,%r13d
 392:	44 03 e8             	add    %eax,%r13d
 395:	49 03 da             	add    %r10,%rbx
 398:	49 0f af f4          	imul   %r12,%rsi
 39c:	41 c1 fd 08          	sar    $0x8,%r13d
 3a0:	49 03 f3             	add    %r11,%rsi
 3a3:	41 2b c8             	sub    %r8d,%ecx
 3a6:	8b c1                	mov    %ecx,%eax
 3a8:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
 3ad:	0f 1f 00             	nopl   (%rax)
 3b0:	4c 8d 4c 24 50       	lea    0x50(%rsp),%r9
 3b5:	41 8b d5             	mov    %r13d,%edx
 3b8:	4c 8d 45 8f          	lea    -0x71(%rbp),%r8
 3bc:	48 8b cb             	mov    %rbx,%rcx
 3bf:	e8 00 00 00 00       	call   3c4 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x3c4>
 3c4:	4c 8d 4c 24 58       	lea    0x58(%rsp),%r9
 3c9:	41 8b d5             	mov    %r13d,%edx
 3cc:	4c 8d 45 8f          	lea    -0x71(%rbp),%r8
 3d0:	48 8b ce             	mov    %rsi,%rcx
 3d3:	e8 00 00 00 00       	call   3d8 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x3d8>
 3d8:	c5 fa 10 74 24 50    	vmovss 0x50(%rsp),%xmm6
 3de:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 3e2:	e8 00 00 00 00       	call   3e7 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x3e7>
 3e7:	48 8b 07             	mov    (%rdi),%rax
 3ea:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 3ef:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 3f3:	c5 ea 59 5c 24 58    	vmulss 0x58(%rsp),%xmm2,%xmm3
 3f9:	c5 fa 10 74 24 54    	vmovss 0x54(%rsp),%xmm6
 3ff:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 403:	c4 c1 7a 11 1c 06    	vmovss %xmm3,(%r14,%rax,1)
 409:	e8 00 00 00 00       	call   40e <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x40e>
 40e:	48 8b 47 08          	mov    0x8(%rdi),%rax
 412:	4d 8d 76 04          	lea    0x4(%r14),%r14
 416:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 41b:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 41f:	c5 ea 59 5c 24 5c    	vmulss 0x5c(%rsp),%xmm2,%xmm3
 425:	49 03 df             	add    %r15,%rbx
 428:	49 03 f4             	add    %r12,%rsi
 42b:	48 83 6c 24 68 01    	subq   $0x1,0x68(%rsp)
 431:	c4 c1 7a 11 5c 06 fc 	vmovss %xmm3,-0x4(%r14,%rax,1)
 438:	0f 85 72 ff ff ff    	jne    3b0 <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x3b0>
 43e:	e9 98 fd ff ff       	jmp    1db <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1db>
 443:	8b 45 7f             	mov    0x7f(%rbp),%eax
 446:	49 8b d3             	mov    %r11,%rdx
 449:	89 44 24 40          	mov    %eax,0x40(%rsp)
 44d:	8b 45 77             	mov    0x77(%rbp),%eax
 450:	89 44 24 38          	mov    %eax,0x38(%rsp)
 454:	8b 45 57             	mov    0x57(%rbp),%eax
 457:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
 45c:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
 461:	49 8b ca             	mov    %r10,%rcx
 464:	89 44 24 20          	mov    %eax,0x20(%rsp)
 468:	e8 00 00 00 00       	call   46d <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x46d>
 46d:	48 81 c4 f8 00 00 00 	add    $0xf8,%rsp
 474:	41 5f                	pop    %r15
 476:	41 5c                	pop    %r12
 478:	5f                   	pop    %rdi
 479:	5d                   	pop    %rbp
 47a:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	55                   	push   %rbp
   4:	53                   	push   %rbx
   5:	41 56                	push   %r14
   7:	48 8d 68 d1          	lea    -0x2f(%rax),%rbp
   b:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  12:	48 8b 5d 6f          	mov    0x6f(%rbp),%rbx
  16:	4d 8b f0             	mov    %r8,%r14
  19:	44 8b 45 67          	mov    0x67(%rbp),%r8d
  1d:	4c 8b d1             	mov    %rcx,%r10
  20:	48 8b 4d 5f          	mov    0x5f(%rbp),%rcx
  24:	41 83 e8 01          	sub    $0x1,%r8d
  28:	0f 84 54 02 00 00    	je     282 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x282>
  2e:	48 89 70 10          	mov    %rsi,0x10(%rax)
  32:	48 89 78 20          	mov    %rdi,0x20(%rax)
  36:	4c 89 60 e0          	mov    %r12,-0x20(%rax)
  3a:	4c 89 78 d8          	mov    %r15,-0x28(%rax)
  3e:	41 83 e8 01          	sub    $0x1,%r8d
  42:	0f 84 aa 01 00 00    	je     1f2 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1f2>
  48:	41 83 e8 01          	sub    $0x1,%r8d
  4c:	0f 84 05 01 00 00    	je     157 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x157>
  52:	41 83 f8 01          	cmp    $0x1,%r8d
  56:	74 1a                	je     72 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x72>
  58:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 5f <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x5f>
  5f:	ba 07 01 00 00       	mov    $0x107,%edx
  64:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 6b <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x6b>
  6b:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 71 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x71>
  71:	cc                   	int3
  72:	48 8b 01             	mov    (%rcx),%rax
  75:	4c 63 45 77          	movslq 0x77(%rbp),%r8
  79:	48 89 45 e7          	mov    %rax,-0x19(%rbp)
  7d:	48 8b 41 08          	mov    0x8(%rcx),%rax
  81:	48 89 45 ef          	mov    %rax,-0x11(%rbp)
  85:	48 8b 41 10          	mov    0x10(%rcx),%rax
  89:	48 89 45 f7          	mov    %rax,-0x9(%rbp)
  8d:	48 8b 41 18          	mov    0x18(%rcx),%rax
  91:	8b 4d 7f             	mov    0x7f(%rbp),%ecx
  94:	48 89 45 ff          	mov    %rax,-0x1(%rbp)
  98:	44 3b c1             	cmp    %ecx,%r8d
  9b:	0f 8d 8a 00 00 00    	jge    12b <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x12b>
  a1:	8b 45 57             	mov    0x57(%rbp),%eax
  a4:	4a 8d 3c 85 00 00 00 	lea    0x0(,%r8,4),%rdi
  ab:	00 
  ac:	99                   	cltd
  ad:	49 8b f0             	mov    %r8,%rsi
  b0:	49 0f af f6          	imul   %r14,%rsi
  b4:	44 0f b6 e2          	movzbl %dl,%r12d
  b8:	44 03 e0             	add    %eax,%r12d
  bb:	49 03 f2             	add    %r10,%rsi
  be:	41 c1 fc 08          	sar    $0x8,%r12d
  c2:	41 2b c8             	sub    %r8d,%ecx
  c5:	44 8b f9             	mov    %ecx,%r15d
  c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  cf:	00 
  d0:	4c 8d 4d d7          	lea    -0x29(%rbp),%r9
  d4:	41 8b d4             	mov    %r12d,%edx
  d7:	4c 8d 45 e7          	lea    -0x19(%rbp),%r8
  db:	48 8b ce             	mov    %rsi,%rcx
  de:	e8 00 00 00 00       	call   e3 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0xe3>
  e3:	48 8b 03             	mov    (%rbx),%rax
  e6:	48 8d 7f 04          	lea    0x4(%rdi),%rdi
  ea:	c5 fa 10 45 d7       	vmovss -0x29(%rbp),%xmm0
  ef:	c5 fa 10 4d db       	vmovss -0x25(%rbp),%xmm1
  f4:	49 03 f6             	add    %r14,%rsi
  f7:	c5 fa 11 44 07 fc    	vmovss %xmm0,-0x4(%rdi,%rax,1)
  fd:	48 8b 43 08          	mov    0x8(%rbx),%rax
 101:	c5 fa 10 45 df       	vmovss -0x21(%rbp),%xmm0
 106:	c5 fa 11 4c 07 fc    	vmovss %xmm1,-0x4(%rdi,%rax,1)
 10c:	48 8b 43 10          	mov    0x10(%rbx),%rax
 110:	c5 fa 10 4d e3       	vmovss -0x1d(%rbp),%xmm1
 115:	c5 fa 11 44 07 fc    	vmovss %xmm0,-0x4(%rdi,%rax,1)
 11b:	48 8b 43 18          	mov    0x18(%rbx),%rax
 11f:	c5 fa 11 4c 07 fc    	vmovss %xmm1,-0x4(%rdi,%rax,1)
 125:	49 83 ef 01          	sub    $0x1,%r15
 129:	75 a5                	jne    d0 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0xd0>
 12b:	4c 8b a4 24 88 00 00 	mov    0x88(%rsp),%r12
 132:	00 
 133:	48 8b bc 24 c8 00 00 	mov    0xc8(%rsp),%rdi
 13a:	00 
 13b:	48 8b b4 24 b8 00 00 	mov    0xb8(%rsp),%rsi
 142:	00 
 143:	4c 8b bc 24 80 00 00 	mov    0x80(%rsp),%r15
 14a:	00 
 14b:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
 152:	41 5e                	pop    %r14
 154:	5b                   	pop    %rbx
 155:	5d                   	pop    %rbp
 156:	c3                   	ret
 157:	48 8b 01             	mov    (%rcx),%rax

000000000000015a <$LN10>:
 15a:	4c 63 45 77          	movslq 0x77(%rbp),%r8
 15e:	48 89 45 e7          	mov    %rax,-0x19(%rbp)
 162:	48 8b 41 08          	mov    0x8(%rcx),%rax
 166:	48 89 45 ef          	mov    %rax,-0x11(%rbp)
 16a:	48 8b 41 10          	mov    0x10(%rcx),%rax
 16e:	8b 4d 7f             	mov    0x7f(%rbp),%ecx
 171:	48 89 45 f7          	mov    %rax,-0x9(%rbp)
 175:	44 3b c1             	cmp    %ecx,%r8d
 178:	7d b1                	jge    12b <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x12b>
 17a:	8b 45 57             	mov    0x57(%rbp),%eax
 17d:	4a 8d 3c 85 00 00 00 	lea    0x0(,%r8,4),%rdi
 184:	00 
 185:	99                   	cltd
 186:	49 8b f0             	mov    %r8,%rsi
 189:	49 0f af f6          	imul   %r14,%rsi
 18d:	44 0f b6 e2          	movzbl %dl,%r12d
 191:	44 03 e0             	add    %eax,%r12d
 194:	49 03 f2             	add    %r10,%rsi
 197:	41 c1 fc 08          	sar    $0x8,%r12d
 19b:	41 2b c8             	sub    %r8d,%ecx
 19e:	44 8b f9             	mov    %ecx,%r15d
 1a1:	4c 8d 4d d7          	lea    -0x29(%rbp),%r9
 1a5:	41 8b d4             	mov    %r12d,%edx
 1a8:	4c 8d 45 e7          	lea    -0x19(%rbp),%r8
 1ac:	48 8b ce             	mov    %rsi,%rcx
 1af:	e8 00 00 00 00       	call   1b4 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1b4>
 1b4:	48 8b 03             	mov    (%rbx),%rax
 1b7:	48 8d 7f 04          	lea    0x4(%rdi),%rdi
 1bb:	c5 fa 10 45 d7       	vmovss -0x29(%rbp),%xmm0
 1c0:	c5 fa 10 4d db       	vmovss -0x25(%rbp),%xmm1
 1c5:	49 03 f6             	add    %r14,%rsi
 1c8:	c5 fa 11 44 07 fc    	vmovss %xmm0,-0x4(%rdi,%rax,1)
 1ce:	48 8b 43 08          	mov    0x8(%rbx),%rax
 1d2:	c5 fa 10 45 df       	vmovss -0x21(%rbp),%xmm0
 1d7:	c5 fa 11 4c 07 fc    	vmovss %xmm1,-0x4(%rdi,%rax,1)
 1dd:	48 8b 43 10          	mov    0x10(%rbx),%rax
 1e1:	c5 fa 11 44 07 fc    	vmovss %xmm0,-0x4(%rdi,%rax,1)
 1e7:	49 83 ef 01          	sub    $0x1,%r15
 1eb:	75 b4                	jne    1a1 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1a1>
 1ed:	e9 39 ff ff ff       	jmp    12b <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x12b>
 1f2:	48 8b 01             	mov    (%rcx),%rax
 1f5:	4c 63 45 77          	movslq 0x77(%rbp),%r8
 1f9:	48 89 45 e7          	mov    %rax,-0x19(%rbp)
 1fd:	48 8b 41 08          	mov    0x8(%rcx),%rax
 201:	8b 4d 7f             	mov    0x7f(%rbp),%ecx
 204:	48 89 45 ef          	mov    %rax,-0x11(%rbp)
 208:	44 3b c1             	cmp    %ecx,%r8d
 20b:	0f 8d 1a ff ff ff    	jge    12b <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x12b>
 211:	8b 45 57             	mov    0x57(%rbp),%eax
 214:	4a                   	rex.WX
 215:	8d                   	.byte 0x8d
 216:	3c 85                	cmp    $0x85,%al
 218:	00 00                	add    %al,(%rax)
	...

000000000000021b <$LN41>:
 21b:	00 99 49 8b f0 49    	add    %bl,0x49f08b49(%rcx)
 221:	0f af f6             	imul   %esi,%esi
 224:	44 0f b6 e2          	movzbl %dl,%r12d
 228:	44 03 e0             	add    %eax,%r12d
 22b:	49 03 f2             	add    %r10,%rsi
 22e:	41 c1 fc 08          	sar    $0x8,%r12d
 232:	41 2b c8             	sub    %r8d,%ecx
 235:	44 8b f9             	mov    %ecx,%r15d
 238:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 23f:	00 
 240:	4c 8d 4d d7          	lea    -0x29(%rbp),%r9
 244:	41 8b d4             	mov    %r12d,%edx
 247:	4c 8d 45 e7          	lea    -0x19(%rbp),%r8
 24b:	48 8b ce             	mov    %rsi,%rcx
 24e:	e8 00 00 00 00       	call   253 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x253>
 253:	48 8b 03             	mov    (%rbx),%rax
 256:	48 8d 7f 04          	lea    0x4(%rdi),%rdi
 25a:	c5 fa 10 45 d7       	vmovss -0x29(%rbp),%xmm0
 25f:	c5 fa 10 4d db       	vmovss -0x25(%rbp),%xmm1
 264:	49 03 f6             	add    %r14,%rsi
 267:	c5 fa 11 44 07 fc    	vmovss %xmm0,-0x4(%rdi,%rax,1)
 26d:	48 8b 43 08          	mov    0x8(%rbx),%rax
 271:	c5 fa 11 4c 07 fc    	vmovss %xmm1,-0x4(%rdi,%rax,1)
 277:	49 83 ef 01          	sub    $0x1,%r15
 27b:	75 c3                	jne    240 <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x240>
 27d:	e9 a9 fe ff ff       	jmp    12b <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x12b>
 282:	8b 45 7f             	mov    0x7f(%rbp),%eax
 285:	4d 8b c6             	mov    %r14,%r8
 288:	89 44 24 40          	mov    %eax,0x40(%rsp)
 28c:	8b 45 77             	mov    0x77(%rbp),%eax
 28f:	89 44 24 38          	mov    %eax,0x38(%rsp)
 293:	8b 45 57             	mov    0x57(%rbp),%eax
 296:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
 29b:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
 2a0:	49 8b ca             	mov    %r10,%rcx
 2a3:	89 44 24 20          	mov    %eax,0x20(%rsp)
 2a7:	e8 00 00 00 00       	call   2ac <??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x2ac>
 2ac:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
 2b3:	41 5e                	pop    %r14
 2b5:	5b                   	pop    %rbx
 2b6:	5d                   	pop    %rbp
 2b7:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	40 55                	rex push %rbp
   2:	56                   	push   %rsi
   3:	57                   	push   %rdi
   4:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
   b:	48 8b bc 24 48 01 00 	mov    0x148(%rsp),%rdi
  12:	00 
  13:	4c 8b d1             	mov    %rcx,%r10
  16:	8b 8c 24 40 01 00 00 	mov    0x140(%rsp),%ecx
  1d:	4c 8b da             	mov    %rdx,%r11
  20:	48 8b 94 24 38 01 00 	mov    0x138(%rsp),%rdx
  27:	00 
  28:	49 8b e9             	mov    %r9,%rbp
  2b:	49 8b f0             	mov    %r8,%rsi
  2e:	83 e9 01             	sub    $0x1,%ecx
  31:	0f 84 7e 02 00 00    	je     2b5 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x2b5>
  37:	83 e9 01             	sub    $0x1,%ecx
  3a:	0f 84 34 02 00 00    	je     274 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x274>
  40:	83 e9 01             	sub    $0x1,%ecx
  43:	74 60                	je     a5 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0xa5>
  45:	83 f9 01             	cmp    $0x1,%ecx
  48:	74 1a                	je     64 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x64>
  4a:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 51 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x51>
  51:	ba 07 01 00 00       	mov    $0x107,%edx
  56:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 5d <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x5d>
  5d:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 63 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x63>
  63:	cc                   	int3
  64:	8b 84 24 58 01 00 00 	mov    0x158(%rsp),%eax
  6b:	49 8b ca             	mov    %r10,%rcx
  6e:	89 44 24 40          	mov    %eax,0x40(%rsp)
  72:	8b 84 24 50 01 00 00 	mov    0x150(%rsp),%eax
  79:	89 44 24 38          	mov    %eax,0x38(%rsp)
  7d:	8b 84 24 30 01 00 00 	mov    0x130(%rsp),%eax
  84:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
  89:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  8e:	49 8b d3             	mov    %r11,%rdx
  91:	89 44 24 20          	mov    %eax,0x20(%rsp)
  95:	e8 00 00 00 00       	call   9a <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x9a>
  9a:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
  a1:	5f                   	pop    %rdi
  a2:	5e                   	pop    %rsi
  a3:	5d                   	pop    %rbp
  a4:	c3                   	ret
  a5:	48 8b 02             	mov    (%rdx),%rax
  a8:	4c 63 84 24 50 01 00 	movslq 0x150(%rsp),%r8
  af:	00 
  b0:	8b 8c 24 58 01 00 00 	mov    0x158(%rsp),%ecx
  b7:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  bc:	48 8b 42 08          	mov    0x8(%rdx),%rax
  c0:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  c5:	48 8b 42 10          	mov    0x10(%rdx),%rax
  c9:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
  d0:	00 
  d1:	44 3b c1             	cmp    %ecx,%r8d
  d4:	0f 8d 11 02 00 00    	jge    2eb <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x2eb>
  da:	8b 84 24 30 01 00 00 	mov    0x130(%rsp),%eax
  e1:	48 89 9c 24 e8 00 00 	mov    %rbx,0xe8(%rsp)
  e8:	00 
  e9:	99                   	cltd
  ea:	4c 89 a4 24 e0 00 00 	mov    %r12,0xe0(%rsp)
  f1:	00 
  f2:	49 8b d8             	mov    %r8,%rbx
  f5:	4c 89 ac 24 d8 00 00 	mov    %r13,0xd8(%rsp)
  fc:	00 
  fd:	4c 89 b4 24 d0 00 00 	mov    %r14,0xd0(%rsp)
 104:	00 
 105:	4d 8b f0             	mov    %r8,%r14
 108:	4c 89 bc 24 c8 00 00 	mov    %r15,0xc8(%rsp)
 10f:	00 
 110:	4e 8d 3c 85 00 00 00 	lea    0x0(,%r8,4),%r15
 117:	00 
 118:	4c 0f af f5          	imul   %rbp,%r14
 11c:	48 0f af de          	imul   %rsi,%rbx
 120:	c5 f8 29 b4 24 b0 00 	vmovaps %xmm6,0xb0(%rsp)
 127:	00 00 
 129:	c5 f8 29 bc 24 a0 00 	vmovaps %xmm7,0xa0(%rsp)
 130:	00 00 
 132:	c5 fa 10 3d 00 00 00 	vmovss 0x0(%rip),%xmm7        # 13a <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x13a>
 139:	00 
 13a:	44 0f b6 e2          	movzbl %dl,%r12d
 13e:	4d 03 f3             	add    %r11,%r14
 141:	44 03 e0             	add    %eax,%r12d
 144:	41 c1 fc 08          	sar    $0x8,%r12d
 148:	49 03 da             	add    %r10,%rbx
 14b:	41 2b c8             	sub    %r8d,%ecx
 14e:	c5 78 29 84 24 90 00 	vmovaps %xmm8,0x90(%rsp)
 155:	00 00 
 157:	c5                   	.byte 0xc5
 158:	7a 10                	jp     16a <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x16a>

000000000000015a <$LN10>:
 15a:	05 00 00 00 00       	add    $0x0,%eax
 15f:	44 8b e9             	mov    %ecx,%r13d
 162:	0f 1f 40 00          	nopl   0x0(%rax)
 166:	66 66 0f 1f 84 00 00 	data16 nopw 0x0(%rax,%rax,1)
 16d:	00 00 00 
 170:	4c 8d 4c 24 50       	lea    0x50(%rsp),%r9
 175:	41 8b d4             	mov    %r12d,%edx
 178:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
 17d:	48 8b cb             	mov    %rbx,%rcx
 180:	e8 00 00 00 00       	call   185 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x185>
 185:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
 18a:	41 8b d4             	mov    %r12d,%edx
 18d:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
 192:	49 8b ce             	mov    %r14,%rcx
 195:	e8 00 00 00 00       	call   19a <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x19a>
 19a:	c5 fa 10 74 24 50    	vmovss 0x50(%rsp),%xmm6
 1a0:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 1a4:	e8 00 00 00 00       	call   1a9 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1a9>
 1a9:	48 8b 07             	mov    (%rdi),%rax
 1ac:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 1b1:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 1b5:	c5 ea 59 5c 24 60    	vmulss 0x60(%rsp),%xmm2,%xmm3
 1bb:	c5 fa 10 74 24 54    	vmovss 0x54(%rsp),%xmm6
 1c1:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 1c5:	c4 c1 7a 11 1c 07    	vmovss %xmm3,(%r15,%rax,1)
 1cb:	e8 00 00 00 00       	call   1d0 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1d0>
 1d0:	48 8b 47 08          	mov    0x8(%rdi),%rax
 1d4:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 1d9:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 1dd:	c5 ea 59 5c 24 64    	vmulss 0x64(%rsp),%xmm2,%xmm3
 1e3:	c5 fa 10 74 24 58    	vmovss 0x58(%rsp),%xmm6
 1e9:	c5 c8 57 c7          	vxorps %xmm7,%xmm6,%xmm0
 1ed:	c4 c1 7a 11 1c 07    	vmovss %xmm3,(%r15,%rax,1)
 1f3:	e8 00 00 00 00       	call   1f8 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1f8>
 1f8:	48 8b 47 10          	mov    0x10(%rdi),%rax
 1fc:	4d 8d 7f 04          	lea    0x4(%r15),%r15
 200:	c4 c1 7a 58 c8       	vaddss %xmm8,%xmm0,%xmm1
 205:	c5 ca 5e d1          	vdivss %xmm1,%xmm6,%xmm2
 209:	c5 ea 59 5c 24 68    	vmulss 0x68(%rsp),%xmm2,%xmm3
 20f:	48 03 de             	add    %rsi,%rbx
 212:	4c 03 f5             	add    %rbp,%r14
 215:	c4                   	.byte 0xc4
 216:	c1 7a 11 5c          	sarl   $0x5c,0x11(%rdx)
 21a:	07                   	(bad)

000000000000021b <$LN41>:
 21b:	fc                   	cld
 21c:	49 83 ed 01          	sub    $0x1,%r13
 220:	0f 85 4a ff ff ff    	jne    170 <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x170>
 226:	c5 78 28 84 24 90 00 	vmovaps 0x90(%rsp),%xmm8
 22d:	00 00 
 22f:	c5 f8 28 bc 24 a0 00 	vmovaps 0xa0(%rsp),%xmm7
 236:	00 00 
 238:	c5 f8 28 b4 24 b0 00 	vmovaps 0xb0(%rsp),%xmm6
 23f:	00 00 
 241:	4c 8b bc 24 c8 00 00 	mov    0xc8(%rsp),%r15
 248:	00 
 249:	4c 8b b4 24 d0 00 00 	mov    0xd0(%rsp),%r14
 250:	00 
 251:	4c 8b ac 24 d8 00 00 	mov    0xd8(%rsp),%r13
 258:	00 
 259:	4c 8b a4 24 e0 00 00 	mov    0xe0(%rsp),%r12
 260:	00 
 261:	48 8b 9c 24 e8 00 00 	mov    0xe8(%rsp),%rbx
 268:	00 
 269:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
 270:	5f                   	pop    %rdi
 271:	5e                   	pop    %rsi
 272:	5d                   	pop    %rbp
 273:	c3                   	ret
 274:	8b 84 24 58 01 00 00 	mov    0x158(%rsp),%eax
 27b:	49 8b ca             	mov    %r10,%rcx
 27e:	89 44 24 40          	mov    %eax,0x40(%rsp)
 282:	8b 84 24 50 01 00 00 	mov    0x150(%rsp),%eax
 289:	89 44 24 38          	mov    %eax,0x38(%rsp)
 28d:	8b 84 24 30 01 00 00 	mov    0x130(%rsp),%eax
 294:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
 299:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
 29e:	49 8b d3             	mov    %r11,%rdx
 2a1:	89 44 24 20          	mov    %eax,0x20(%rsp)
 2a5:	e8 00 00 00 00       	call   2aa <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x2aa>
 2aa:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
 2b1:	5f                   	pop    %rdi
 2b2:	5e                   	pop    %rsi
 2b3:	5d                   	pop    %rbp
 2b4:	c3                   	ret
 2b5:	8b                   	.byte 0x8b
 2b6:	84                   	.byte 0x84
 2b7:	24                   	.byte 0x24

00000000000002b8 <$LN99>:
 2b8:	58                   	pop    %rax
 2b9:	01 00                	add    %eax,(%rax)
 2bb:	00 49 8b             	add    %cl,-0x75(%rcx)
 2be:	ca 89 44             	lret   $0x4489
 2c1:	24 40                	and    $0x40,%al
 2c3:	8b 84 24 50 01 00 00 	mov    0x150(%rsp),%eax
 2ca:	89 44 24 38          	mov    %eax,0x38(%rsp)
 2ce:	8b 84 24 30 01 00 00 	mov    0x130(%rsp),%eax
 2d5:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
 2da:	48                   	rex.W

00000000000002db <$LN30>:
 2db:	89 54 24 28          	mov    %edx,0x28(%rsp)
 2df:	49 8b d3             	mov    %r11,%rdx
 2e2:	89 44 24 20          	mov    %eax,0x20(%rsp)
 2e6:	e8 00 00 00 00       	call   2eb <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x2eb>
 2eb:	48 81 c4 f0 00 00 00 	add    $0xf0,%rsp
 2f2:	5f                   	pop    %rdi
 2f3:	5e                   	pop    %rsi
 2f4:	5d                   	pop    %rbp
 2f5:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	40 55                	rex push %rbp
   2:	57                   	push   %rdi
   3:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   a:	48 8b bc 24 e8 00 00 	mov    0xe8(%rsp),%rdi
  11:	00 
  12:	4c 8b d1             	mov    %rcx,%r10
  15:	8b 8c 24 e0 00 00 00 	mov    0xe0(%rsp),%ecx
  1c:	49 8b e8             	mov    %r8,%rbp
  1f:	4c 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%r8
  26:	00 
  27:	83 e9 01             	sub    $0x1,%ecx
  2a:	0f 84 ab 01 00 00    	je     1db <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1db>
  30:	83 e9 01             	sub    $0x1,%ecx
  33:	0f 84 62 01 00 00    	je     19b <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x19b>
  39:	83 e9 01             	sub    $0x1,%ecx
  3c:	74 5f                	je     9d <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x9d>
  3e:	83 f9 01             	cmp    $0x1,%ecx
  41:	74 1a                	je     5d <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x5d>
  43:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 4a <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x4a>
  4a:	ba 07 01 00 00       	mov    $0x107,%edx
  4f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 56 <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x56>
  56:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 5c <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x5c>
  5c:	cc                   	int3
  5d:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
  64:	49 8b ca             	mov    %r10,%rcx
  67:	89 44 24 40          	mov    %eax,0x40(%rsp)
  6b:	8b 84 24 f0 00 00 00 	mov    0xf0(%rsp),%eax
  72:	89 44 24 38          	mov    %eax,0x38(%rsp)
  76:	8b 84 24 d0 00 00 00 	mov    0xd0(%rsp),%eax
  7d:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
  82:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
  87:	4c 8b c5             	mov    %rbp,%r8
  8a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  8e:	e8 00 00 00 00       	call   93 <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x93>
  93:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  9a:	5f                   	pop    %rdi
  9b:	5d                   	pop    %rbp
  9c:	c3                   	ret
  9d:	49 8b 00             	mov    (%r8),%rax
  a0:	8b 8c 24 f8 00 00 00 	mov    0xf8(%rsp),%ecx
  a7:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  ac:	49 8b 40 08          	mov    0x8(%r8),%rax
  b0:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  b5:	49 8b 40 10          	mov    0x10(%r8),%rax
  b9:	4c 63 84 24 f0 00 00 	movslq 0xf0(%rsp),%r8
  c0:	00 
  c1:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  c6:	44 3b c1             	cmp    %ecx,%r8d
  c9:	0f 8d 42 01 00 00    	jge    211 <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x211>
  cf:	8b 84 24 d0 00 00 00 	mov    0xd0(%rsp),%eax
  d6:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
  dd:	00 
  de:	99                   	cltd
  df:	48 89 b4 24 90 00 00 	mov    %rsi,0x90(%rsp)
  e6:	00 
  e7:	4a 8d 1c 85 00 00 00 	lea    0x0(,%r8,4),%rbx
  ee:	00 
  ef:	4c 89 b4 24 88 00 00 	mov    %r14,0x88(%rsp)
  f6:	00 
  f7:	49 8b f0             	mov    %r8,%rsi
  fa:	4c 89 bc 24 80 00 00 	mov    %r15,0x80(%rsp)
 101:	00 
 102:	48 0f af f5          	imul   %rbp,%rsi
 106:	44 0f b6 fa          	movzbl %dl,%r15d
 10a:	44 03 f8             	add    %eax,%r15d
 10d:	49 03 f2             	add    %r10,%rsi
 110:	41 c1 ff 08          	sar    $0x8,%r15d
 114:	41 2b c8             	sub    %r8d,%ecx
 117:	44 8b f1             	mov    %ecx,%r14d
 11a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 120:	4c 8d 4c 24 50       	lea    0x50(%rsp),%r9
 125:	41 8b d7             	mov    %r15d,%edx
 128:	4c 8d 44 24 60       	lea    0x60(%rsp),%r8
 12d:	48 8b ce             	mov    %rsi,%rcx
 130:	e8 00 00 00 00       	call   135 <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x135>
 135:	48 8b 07             	mov    (%rdi),%rax
 138:	48 8d 5b 04          	lea    0x4(%rbx),%rbx
 13c:	c5 fa 10 44 24 50    	vmovss 0x50(%rsp),%xmm0
 142:	c5 fa 10 4c 24 54    	vmovss 0x54(%rsp),%xmm1
 148:	48 03 f5             	add    %rbp,%rsi
 14b:	c5 fa 11 44 03 fc    	vmovss %xmm0,-0x4(%rbx,%rax,1)
 151:	48 8b 47 08          	mov    0x8(%rdi),%rax
 155:	c5                   	.byte 0xc5
 156:	fa                   	cli
 157:	10                   	.byte 0x10
 158:	44                   	rex.R
 159:	24                   	.byte 0x24

000000000000015a <$LN10>:
 15a:	58                   	pop    %rax
 15b:	c5 fa 11 4c 03 fc    	vmovss %xmm1,-0x4(%rbx,%rax,1)
 161:	48 8b 47 10          	mov    0x10(%rdi),%rax
 165:	c5 fa 11 44 03 fc    	vmovss %xmm0,-0x4(%rbx,%rax,1)
 16b:	49 83 ee 01          	sub    $0x1,%r14
 16f:	75 af                	jne    120 <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x120>
 171:	4c 8b bc 24 80 00 00 	mov    0x80(%rsp),%r15
 178:	00 
 179:	4c 8b b4 24 88 00 00 	mov    0x88(%rsp),%r14
 180:	00 
 181:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
 188:	00 
 189:	48 8b 9c 24 b8 00 00 	mov    0xb8(%rsp),%rbx
 190:	00 
 191:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
 198:	5f                   	pop    %rdi
 199:	5d                   	pop    %rbp
 19a:	c3                   	ret
 19b:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
 1a2:	49 8b ca             	mov    %r10,%rcx
 1a5:	89 44 24 40          	mov    %eax,0x40(%rsp)
 1a9:	8b 84 24 f0 00 00 00 	mov    0xf0(%rsp),%eax
 1b0:	89 44 24 38          	mov    %eax,0x38(%rsp)
 1b4:	8b 84 24 d0 00 00 00 	mov    0xd0(%rsp),%eax
 1bb:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
 1c0:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
 1c5:	4c 8b c5             	mov    %rbp,%r8
 1c8:	89 44 24 20          	mov    %eax,0x20(%rsp)
 1cc:	e8 00 00 00 00       	call   1d1 <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x1d1>
 1d1:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
 1d8:	5f                   	pop    %rdi
 1d9:	5d                   	pop    %rbp
 1da:	c3                   	ret
 1db:	8b 84 24 f8 00 00 00 	mov    0xf8(%rsp),%eax
 1e2:	49 8b ca             	mov    %r10,%rcx
 1e5:	89 44 24 40          	mov    %eax,0x40(%rsp)
 1e9:	8b 84 24 f0 00 00 00 	mov    0xf0(%rsp),%eax
 1f0:	89 44 24 38          	mov    %eax,0x38(%rsp)
 1f4:	8b 84 24 d0 00 00 00 	mov    0xd0(%rsp),%eax
 1fb:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
 200:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
 205:	4c 8b c5             	mov    %rbp,%r8
 208:	89 44 24 20          	mov    %eax,0x20(%rsp)
 20c:	e8 00 00 00 00       	call   211 <??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x211>
 211:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
 218:	5f                   	pop    %rdi
 219:	5d                   	pop    %rbp
 21a:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	48 83 ec 58          	sub    $0x58,%rsp
   4:	44 8b 94 24 90 00 00 	mov    0x90(%rsp),%r10d
   b:	00 
   c:	41 83 ea 01          	sub    $0x1,%r10d
  10:	0f 84 ff 00 00 00    	je     115 <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x115>
  16:	41 83 ea 01          	sub    $0x1,%r10d
  1a:	0f 84 b0 00 00 00    	je     d0 <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0xd0>
  20:	41 83 ea 01          	sub    $0x1,%r10d
  24:	74 65                	je     8b <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x8b>
  26:	41 83 fa 01          	cmp    $0x1,%r10d
  2a:	74 1a                	je     46 <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x46>
  2c:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 33 <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x33>
  33:	ba 07 01 00 00       	mov    $0x107,%edx
  38:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 3f <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x3f>
  3f:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 45 <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x45>
  45:	cc                   	int3
  46:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
  4d:	89 44 24 40          	mov    %eax,0x40(%rsp)
  51:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
  58:	89 44 24 38          	mov    %eax,0x38(%rsp)
  5c:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
  63:	00 
  64:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  69:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
  70:	00 
  71:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  76:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
  7d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  81:	e8 00 00 00 00       	call   86 <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x86>
  86:	48 83 c4 58          	add    $0x58,%rsp
  8a:	c3                   	ret
  8b:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
  92:	89 44 24 40          	mov    %eax,0x40(%rsp)
  96:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
  9d:	89 44 24 38          	mov    %eax,0x38(%rsp)
  a1:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
  a8:	00 
  a9:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  ae:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
  b5:	00 
  b6:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  bb:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
  c2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  c6:	e8 00 00 00 00       	call   cb <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0xcb>
  cb:	48 83 c4 58          	add    $0x58,%rsp
  cf:	c3                   	ret
  d0:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
  d7:	89 44 24 40          	mov    %eax,0x40(%rsp)
  db:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
  e2:	89 44 24 38          	mov    %eax,0x38(%rsp)
  e6:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
  ed:	00 
  ee:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  f3:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
  fa:	00 
  fb:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 100:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
 107:	89 44 24 20          	mov    %eax,0x20(%rsp)
 10b:	e8 00 00 00 00       	call   110 <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x110>
 110:	48 83 c4 58          	add    $0x58,%rsp
 114:	c3                   	ret
 115:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 11c:	89 44 24 40          	mov    %eax,0x40(%rsp)
 120:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
 127:	89 44 24 38          	mov    %eax,0x38(%rsp)
 12b:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
 132:	00 
 133:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
 138:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
 13f:	00 
 140:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 145:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
 14c:	89 44 24 20          	mov    %eax,0x20(%rsp)
 150:	e8 00 00 00 00       	call   155 <??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x155>
 155:	48 83 c4 58          	add    $0x58,%rsp
 159:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	48 83 ec 58          	sub    $0x58,%rsp
   4:	44 8b 94 24 90 00 00 	mov    0x90(%rsp),%r10d
   b:	00 
   c:	41 83 ea 01          	sub    $0x1,%r10d
  10:	0f 84 ff 00 00 00    	je     115 <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x115>
  16:	41 83 ea 01          	sub    $0x1,%r10d
  1a:	0f 84 b0 00 00 00    	je     d0 <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0xd0>
  20:	41 83 ea 01          	sub    $0x1,%r10d
  24:	74 65                	je     8b <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x8b>
  26:	41 83 fa 01          	cmp    $0x1,%r10d
  2a:	74 1a                	je     46 <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x46>
  2c:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 33 <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x33>
  33:	ba 07 01 00 00       	mov    $0x107,%edx
  38:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 3f <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x3f>
  3f:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 45 <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x45>
  45:	cc                   	int3
  46:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
  4d:	89 44 24 40          	mov    %eax,0x40(%rsp)
  51:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
  58:	89 44 24 38          	mov    %eax,0x38(%rsp)
  5c:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
  63:	00 
  64:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  69:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
  70:	00 
  71:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  76:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
  7d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  81:	e8 00 00 00 00       	call   86 <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x86>
  86:	48 83 c4 58          	add    $0x58,%rsp
  8a:	c3                   	ret
  8b:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
  92:	89 44 24 40          	mov    %eax,0x40(%rsp)
  96:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
  9d:	89 44 24 38          	mov    %eax,0x38(%rsp)
  a1:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
  a8:	00 
  a9:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  ae:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
  b5:	00 
  b6:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  bb:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
  c2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  c6:	e8 00 00 00 00       	call   cb <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0xcb>
  cb:	48 83 c4 58          	add    $0x58,%rsp
  cf:	c3                   	ret
  d0:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
  d7:	89 44 24 40          	mov    %eax,0x40(%rsp)
  db:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
  e2:	89 44 24 38          	mov    %eax,0x38(%rsp)
  e6:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
  ed:	00 
  ee:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  f3:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
  fa:	00 
  fb:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 100:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
 107:	89 44 24 20          	mov    %eax,0x20(%rsp)
 10b:	e8 00 00 00 00       	call   110 <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x110>
 110:	48 83 c4 58          	add    $0x58,%rsp
 114:	c3                   	ret
 115:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 11c:	89 44 24 40          	mov    %eax,0x40(%rsp)
 120:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
 127:	89 44 24 38          	mov    %eax,0x38(%rsp)
 12b:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
 132:	00 
 133:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
 138:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
 13f:	00 
 140:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 145:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
 14c:	89 44 24 20          	mov    %eax,0x20(%rsp)
 150:	e8 00 00 00 00       	call   155 <??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x155>
 155:	48 83 c4 58          	add    $0x58,%rsp
 159:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 64 24 70    	vmovaps %xmm12,0x70(%rsp)
  46:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  4b:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  4f:	48 63 c2             	movslq %edx,%rax
  52:	48 89 45 28          	mov    %rax,0x28(%rbp)
  56:	4c 89 4d 40          	mov    %r9,0x40(%rbp)
  5a:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
  5e:	c5 c0 57 ff          	vxorps %xmm7,%xmm7,%xmm7
  62:	85 d2                	test   %edx,%edx
  64:	0f 8e 66 02 00 00    	jle    2d0 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x2d0>
  6a:	49 8b 00             	mov    (%r8),%rax
  6d:	c5 7a 6f 0d 00 00 00 	vmovdqu 0x0(%rip),%xmm9        # 75 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x75>
  74:	00 
  75:	c5 7e 6f 05 00 00 00 	vmovdqu 0x0(%rip),%ymm8        # 7d <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x7d>
  7c:	00 
  7d:	c5 7e 6f 15 00 00 00 	vmovdqu 0x0(%rip),%ymm10        # 85 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x85>
  84:	00 
  85:	c5 7a 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%xmm11        # 8d <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x8d>
  8c:	00 
  8d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  91:	c4 41 19 ef e4       	vpxor  %xmm12,%xmm12,%xmm12
  96:	66 66 0f 1f 84 00 00 	data16 nopw 0x0(%rax,%rax,1)
  9d:	00 00 00 
  a0:	4c 8d 79 4a          	lea    0x4a(%rcx),%r15
  a4:	48 c7 45 18 04 00 00 	movq   $0x4,0x18(%rbp)
  ab:	00 
  ac:	4d 8d 67 20          	lea    0x20(%r15),%r12
  b0:	4c 89 7d 08          	mov    %r15,0x8(%rbp)
  b4:	45 33 ed             	xor    %r13d,%r13d
  b7:	4c 89 65 10          	mov    %r12,0x10(%rbp)
  bb:	c4 c1 7e 6f f4       	vmovdqu %ymm12,%ymm6
  c0:	45 33 f6             	xor    %r14d,%r14d
  c3:	0f 1f 40 00          	nopl   0x0(%rax)
  c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  ce:	00 00 
  d0:	49 8b 07             	mov    (%r15),%rax
  d3:	45 0f b6 3c 24       	movzbl (%r12),%r15d
  d8:	48 c7 45 30 00 00 00 	movq   $0x0,0x30(%rbp)
  df:	00 
  e0:	4c 8b 65 30          	mov    0x30(%rbp),%r12
  e4:	48 89 45 38          	mov    %rax,0x38(%rbp)
  e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  ef:	00 
  f0:	4a 8d 34 e1          	lea    (%rcx,%r12,8),%rsi
  f4:	4a 8d 04 29          	lea    (%rcx,%r13,1),%rax
  f8:	42 0f b6 4c 20 42    	movzbl 0x42(%rax,%r12,1),%ecx
  fe:	42 0f b6 44 36 02    	movzbl 0x2(%rsi,%r14,1),%eax
 104:	8b f9                	mov    %ecx,%edi
 106:	8b d9                	mov    %ecx,%ebx
 108:	44 8b d9             	mov    %ecx,%r11d
 10b:	44 8b d1             	mov    %ecx,%r10d
 10e:	44 8b c9             	mov    %ecx,%r9d
 111:	44 8b c1             	mov    %ecx,%r8d
 114:	8b d1                	mov    %ecx,%edx
 116:	83 e2 40             	and    $0x40,%edx
 119:	81 e1 80 00 00 00    	and    $0x80,%ecx
 11f:	c1 e2 02             	shl    $0x2,%edx
 122:	03 c9                	add    %ecx,%ecx
 124:	83 e7 01             	and    $0x1,%edi
 127:	83 e3 02             	and    $0x2,%ebx
 12a:	41 83 e3 04          	and    $0x4,%r11d
 12e:	c1 e7 08             	shl    $0x8,%edi
 131:	48 0b f8             	or     %rax,%rdi
 134:	c1 e3 07             	shl    $0x7,%ebx
 137:	42 0f b6 44 36 03    	movzbl 0x3(%rsi,%r14,1),%eax
 13d:	41 83 e2 08          	and    $0x8,%r10d
 141:	48 0b d8             	or     %rax,%rbx
 144:	41 c1 e3 06          	shl    $0x6,%r11d
 148:	42 0f b6 44 36 04    	movzbl 0x4(%rsi,%r14,1),%eax
 14e:	41 83 e1 10          	and    $0x10,%r9d
 152:	4c 0b d8             	or     %rax,%r11
 155:	41 c1 e2 05          	shl    $0x5,%r10d
 159:	42                   	rex.X

000000000000015a <$LN10>:
 15a:	0f b6 44 36 05       	movzbl 0x5(%rsi,%rsi,1),%eax
 15f:	41 83 e0 20          	and    $0x20,%r8d
 163:	4c 0b d0             	or     %rax,%r10
 166:	41 c1 e1 04          	shl    $0x4,%r9d
 16a:	42 0f b6 44 36 06    	movzbl 0x6(%rsi,%r14,1),%eax
 170:	4c 0b c8             	or     %rax,%r9
 173:	41 c1 e0 03          	shl    $0x3,%r8d
 177:	42 0f b6 44 36 07    	movzbl 0x7(%rsi,%r14,1),%eax
 17d:	4c 0b c0             	or     %rax,%r8
 180:	42 0f b6 44 36 08    	movzbl 0x8(%rsi,%r14,1),%eax
 186:	48 0b d0             	or     %rax,%rdx
 189:	42 0f b6 44 36 09    	movzbl 0x9(%rsi,%r14,1),%eax
 18f:	48 0b c8             	or     %rax,%rcx
 192:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 199 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x199>
 199:	c4 a1 79 6e 04 8e    	vmovd  (%rsi,%r9,4),%xmm0
 19f:	c4 a3 79 22 04 86 01 	vpinsrd $0x1,(%rsi,%r8,4),%xmm0,%xmm0
 1a6:	c4 e3 79 22 04 96 02 	vpinsrd $0x2,(%rsi,%rdx,4),%xmm0,%xmm0
 1ad:	c4 e3 79 22 04 8e 03 	vpinsrd $0x3,(%rsi,%rcx,4),%xmm0,%xmm0
 1b4:	c5 f9 6e 0c be       	vmovd  (%rsi,%rdi,4),%xmm1
 1b9:	c4 e3 71 22 0c 9e 01 	vpinsrd $0x1,(%rsi,%rbx,4),%xmm1,%xmm1
 1c0:	c4 a3 71 22 0c 9e 02 	vpinsrd $0x2,(%rsi,%r11,4),%xmm1,%xmm1
 1c7:	c4 a3 71 22 0c 96 03 	vpinsrd $0x3,(%rsi,%r10,4),%xmm1,%xmm1
 1ce:	48 8b 45 38          	mov    0x38(%rbp),%rax
 1d2:	41 8b d7             	mov    %r15d,%edx
 1d5:	c4 e3 75 18 e8 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm5
 1db:	48 8b c8             	mov    %rax,%rcx
 1de:	48 c1 e9 20          	shr    $0x20,%rcx
 1e2:	4d 85 e4             	test   %r12,%r12
 1e5:	48 0f 45 c1          	cmovne %rcx,%rax
 1e9:	83 e2 0f             	and    $0xf,%edx
 1ec:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 1f0:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 1f5:	c4 c2 79 00 cb       	vpshufb %xmm11,%xmm0,%xmm1
 1fa:	c4 c2 79 00 c1       	vpshufb %xmm9,%xmm0,%xmm0
 1ff:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 205:	c4 c1 75 db d0       	vpand  %ymm8,%ymm1,%ymm2
 20a:	c4 c1 6d 74 d8       	vpcmpeqb %ymm8,%ymm2,%ymm3
 20f:	c4 c1 65 eb e2       	vpor   %ymm10,%ymm3,%ymm4
 214:	41 8b c7             	mov    %r15d,%eax
 217:	4b 8d 0c 2c          	lea    (%r12,%r13,1),%rcx

000000000000021b <$LN41>:
 21b:	c1 e8 04             	shr    $0x4,%eax
 21e:	4d 85 e4             	test   %r12,%r12
 221:	0f 45 d0             	cmovne %eax,%edx
 224:	48 c1 e1 05          	shl    $0x5,%rcx
 228:	66 8d 04 55 01 00 00 	lea    0x1(,%rdx,2),%ax
 22f:	00 
 230:	48 8b 55 20          	mov    0x20(%rbp),%rdx
 234:	98                   	cwtl
 235:	c5 f9 6e d8          	vmovd  %eax,%xmm3
 239:	c4 e2 7d 79 db       	vpbroadcastw %xmm3,%ymm3
 23e:	c5 fe 6f 44 0a 04    	vmovdqu 0x4(%rdx,%rcx,1),%ymm0
 244:	c4 e2 7d 08 cc       	vpsignb %ymm4,%ymm0,%ymm1
 249:	c4 e2 55 04 d1       	vpmaddubsw %ymm1,%ymm5,%ymm2
 24e:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
 252:	49 ff c4             	inc    %r12
 255:	c5 ed f5 db          	vpmaddwd %ymm3,%ymm2,%ymm3
 259:	c5 e5 fe f6          	vpaddd %ymm6,%ymm3,%ymm6
 25d:	49 83 fc 02          	cmp    $0x2,%r12
 261:	0f 8c 89 fe ff ff    	jl     f0 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xf0>
 267:	4c 8b 7d 08          	mov    0x8(%rbp),%r15
 26b:	49 83 c6 10          	add    $0x10,%r14
 26f:	4c 8b 65 10          	mov    0x10(%rbp),%r12
 273:	49 83 c7 08          	add    $0x8,%r15
 277:	49 ff c4             	inc    %r12
 27a:	4c 89 7d 08          	mov    %r15,0x8(%rbp)
 27e:	49 83 c5 02          	add    $0x2,%r13
 282:	4c 89 65 10          	mov    %r12,0x10(%rbp)
 286:	48 83 6d 18 01       	subq   $0x1,0x18(%rbp)
 28b:	0f 85 3f fe ff ff    	jne    d0 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xd0>
 291:	0f b7 01             	movzwl (%rcx),%eax
 294:	48 83 c1 6e          	add    $0x6e,%rcx
 298:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 29c:	c4 e2 79 13 c8       	vcvtph2ps %xmm0,%xmm1
 2a1:	c5 f2 59 12          	vmulss (%rdx),%xmm1,%xmm2
 2a5:	48 81 c2 24 01 00 00 	add    $0x124,%rdx
 2ac:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
 2b0:	48 83 6d 28 01       	subq   $0x1,0x28(%rbp)
 2b5:	c4                   	.byte 0xc4
 2b6:	e2 7d                	loop   335 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x335>

00000000000002b8 <$LN99>:
 2b8:	18 d2                	sbb    %dl,%dl
 2ba:	c5 fc 5b de          	vcvtdq2ps %ymm6,%ymm3
 2be:	c4 e2 6d b8 fb       	vfmadd231ps %ymm3,%ymm2,%ymm7
 2c3:	48 89 55 20          	mov    %rdx,0x20(%rbp)
 2c7:	0f 85 d3 fd ff ff    	jne    a0 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xa0>
 2cd:	0f 1f 00             	nopl   (%rax)
 2d0:	48 8b 45 40          	mov    0x40(%rbp),%rax
 2d4:	c4 e3 7d 19 f8 01    	vextractf128 $0x1,%ymm7,%xmm0
 2da:	c5                   	.byte 0xc5

00000000000002db <$LN30>:
 2db:	f8                   	clc
 2dc:	58                   	pop    %rax
 2dd:	c7 c5 fb 7c c8 c5    	mov    $0xc5c87cfb,%ebp
 2e3:	f3 7c d1             	repz jl 2b7 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x2b7>
 2e6:	c5 fa 11 10          	vmovss %xmm2,(%rax)
 2ea:	c5 f8 77             	vzeroupper
 2ed:	4c 8d 9c 24 e0 00 00 	lea    0xe0(%rsp),%r11
 2f4:	00 
 2f5:	49                   	rex.WB

00000000000002f6 <$LN44>:
 2f6:	8b 5b 30             	mov    0x30(%rbx),%ebx
 2f9:	49 8b 73 38          	mov    0x38(%r11),%rsi
 2fd:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 301:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 307:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 30d:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 313:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 319:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 31f:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 325:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 32b:	49 8b e3             	mov    %r11,%rsp
 32e:	41 5f                	pop    %r15
 330:	41 5e                	pop    %r14
 332:	41 5d                	pop    %r13
 334:	41 5c                	pop    %r12
 336:	5d                   	pop    %rbp
 337:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 63 c2             	movslq %edx,%rax
  6c:	48 89 45 28          	mov    %rax,0x28(%rbp)
  70:	4c 89 4d 50          	mov    %r9,0x50(%rbp)
  74:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
  78:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
  7d:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
  82:	85 d2                	test   %edx,%edx
  84:	0f 8e 9d 02 00 00    	jle    327 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x327>
  8a:	49 8b 50 08          	mov    0x8(%r8),%rdx
  8e:	49 8b 00             	mov    (%r8),%rax
  91:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # 99 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x99>
  98:	00 
  99:	c5 7e 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%ymm11        # a1 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xa1>
  a0:	00 
  a1:	c5 7e 6f 2d 00 00 00 	vmovdqu 0x0(%rip),%ymm13        # a9 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xa9>
  a8:	00 
  a9:	c5 7a 6f 35 00 00 00 	vmovdqu 0x0(%rip),%xmm14        # b1 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xb1>
  b0:	00 
  b1:	48 2b c2             	sub    %rdx,%rax
  b4:	48 89 55 20          	mov    %rdx,0x20(%rbp)
  b8:	48 89 45 48          	mov    %rax,0x48(%rbp)
  bc:	c4 41 01 ef ff       	vpxor  %xmm15,%xmm15,%xmm15
  c1:	4c 8d 79 4a          	lea    0x4a(%rcx),%r15
  c5:	48 c7 45 18 04 00 00 	movq   $0x4,0x18(%rbp)
  cc:	00 
  cd:	45 33 ed             	xor    %r13d,%r13d
  d0:	4c 89 7d 08          	mov    %r15,0x8(%rbp)
  d4:	45 33 f6             	xor    %r14d,%r14d
  d7:	4d 8d 67 20          	lea    0x20(%r15),%r12
  db:	48 03 c2             	add    %rdx,%rax
  de:	4c 89 65 10          	mov    %r12,0x10(%rbp)
  e2:	48 89 45 40          	mov    %rax,0x40(%rbp)
  e6:	c4 c1 7e 6f ff       	vmovdqu %ymm15,%ymm7
  eb:	c4 41 7e 6f c7       	vmovdqu %ymm15,%ymm8
  f0:	49 8b 07             	mov    (%r15),%rax
  f3:	45 0f b6 3c 24       	movzbl (%r12),%r15d
  f8:	48 c7 45 30 00 00 00 	movq   $0x0,0x30(%rbp)
  ff:	00 
 100:	4c 8b 65 30          	mov    0x30(%rbp),%r12
 104:	48 89 45 38          	mov    %rax,0x38(%rbp)
 108:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 10f:	00 
 110:	4a 8d 34 e1          	lea    (%rcx,%r12,8),%rsi
 114:	4a 8d 04 29          	lea    (%rcx,%r13,1),%rax
 118:	42 0f b6 4c 20 42    	movzbl 0x42(%rax,%r12,1),%ecx
 11e:	42 0f b6 44 36 02    	movzbl 0x2(%rsi,%r14,1),%eax
 124:	8b f9                	mov    %ecx,%edi
 126:	8b d9                	mov    %ecx,%ebx
 128:	44 8b d9             	mov    %ecx,%r11d
 12b:	44 8b d1             	mov    %ecx,%r10d
 12e:	44 8b c9             	mov    %ecx,%r9d
 131:	44 8b c1             	mov    %ecx,%r8d
 134:	8b d1                	mov    %ecx,%edx
 136:	81 e1 80 00 00 00    	and    $0x80,%ecx
 13c:	41 83 e0 20          	and    $0x20,%r8d
 140:	03 c9                	add    %ecx,%ecx
 142:	41 c1 e0 03          	shl    $0x3,%r8d
 146:	83 e7 01             	and    $0x1,%edi
 149:	83 e3 02             	and    $0x2,%ebx
 14c:	41 83 e3 04          	and    $0x4,%r11d
 150:	c1 e7 08             	shl    $0x8,%edi
 153:	48 0b f8             	or     %rax,%rdi
 156:	c1 e3 07             	shl    $0x7,%ebx
 159:	42                   	rex.X

000000000000015a <$LN10>:
 15a:	0f b6 44 36 03       	movzbl 0x3(%rsi,%rsi,1),%eax
 15f:	41 83 e2 08          	and    $0x8,%r10d
 163:	48 0b d8             	or     %rax,%rbx
 166:	41 c1 e3 06          	shl    $0x6,%r11d
 16a:	42 0f b6 44 36 04    	movzbl 0x4(%rsi,%r14,1),%eax
 170:	41 83 e1 10          	and    $0x10,%r9d
 174:	4c 0b d8             	or     %rax,%r11
 177:	41 c1 e2 05          	shl    $0x5,%r10d
 17b:	42 0f b6 44 36 05    	movzbl 0x5(%rsi,%r14,1),%eax
 181:	83 e2 40             	and    $0x40,%edx
 184:	4c 0b d0             	or     %rax,%r10
 187:	41 c1 e1 04          	shl    $0x4,%r9d
 18b:	42 0f b6 44 36 06    	movzbl 0x6(%rsi,%r14,1),%eax
 191:	4c 0b c8             	or     %rax,%r9
 194:	c1 e2 02             	shl    $0x2,%edx
 197:	42 0f b6 44 36 07    	movzbl 0x7(%rsi,%r14,1),%eax
 19d:	4c 0b c0             	or     %rax,%r8
 1a0:	42 0f b6 44 36 08    	movzbl 0x8(%rsi,%r14,1),%eax
 1a6:	48 0b d0             	or     %rax,%rdx
 1a9:	42 0f b6 44 36 09    	movzbl 0x9(%rsi,%r14,1),%eax
 1af:	48 0b c8             	or     %rax,%rcx
 1b2:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1b9 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x1b9>
 1b9:	c4 a1 79 6e 04 8e    	vmovd  (%rsi,%r9,4),%xmm0
 1bf:	c4 a3 79 22 04 86 01 	vpinsrd $0x1,(%rsi,%r8,4),%xmm0,%xmm0
 1c6:	c4 e3 79 22 04 96 02 	vpinsrd $0x2,(%rsi,%rdx,4),%xmm0,%xmm0
 1cd:	c4 e3 79 22 04 8e 03 	vpinsrd $0x3,(%rsi,%rcx,4),%xmm0,%xmm0
 1d4:	c5 f9 6e 0c be       	vmovd  (%rsi,%rdi,4),%xmm1
 1d9:	c4 e3 71 22 0c 9e 01 	vpinsrd $0x1,(%rsi,%rbx,4),%xmm1,%xmm1
 1e0:	c4 a3 71 22 0c 9e 02 	vpinsrd $0x2,(%rsi,%r11,4),%xmm1,%xmm1
 1e7:	c4 a3 71 22 0c 96 03 	vpinsrd $0x3,(%rsi,%r10,4),%xmm1,%xmm1
 1ee:	48 8b 45 38          	mov    0x38(%rbp),%rax
 1f2:	4c 8b 45 40          	mov    0x40(%rbp),%r8
 1f6:	48 8b c8             	mov    %rax,%rcx
 1f9:	48 c1 e9 20          	shr    $0x20,%rcx
 1fd:	c4 e3 75 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm6
 203:	4d 85 e4             	test   %r12,%r12
 206:	48 0f 45 c1          	cmovne %rcx,%rax
 20a:	41 8b cf             	mov    %r15d,%ecx
 20d:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 211:	83 e1 0f             	and    $0xf,%ecx
 214:	41 8b c7             	mov    %r15d,%eax
 217:	c1 e8 04             	shr    $0x4,%eax
 21a:	c4                   	.byte 0xc4

000000000000021b <$LN41>:
 21b:	e2 79                	loop   296 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x296>
 21d:	58                   	pop    %rax
 21e:	c0 c4 c2             	rol    $0xc2,%ah
 221:	79 00                	jns    223 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x223>
 223:	ce                   	(bad)
 224:	4d 85 e4             	test   %r12,%r12
 227:	c4 c2 79 00 c4       	vpshufb %xmm12,%xmm0,%xmm0
 22c:	0f 45 c8             	cmovne %eax,%ecx
 22f:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 235:	c4 c1 75 db d3       	vpand  %ymm11,%ymm1,%ymm2
 23a:	c4 c1 6d 74 db       	vpcmpeqb %ymm11,%ymm2,%ymm3
 23f:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 246:	00 
 247:	98                   	cwtl
 248:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 24c:	4b 8d 04 2c          	lea    (%r12,%r13,1),%rax
 250:	48 c1 e0 05          	shl    $0x5,%rax
 254:	c4 c1 65 eb ed       	vpor   %ymm13,%ymm3,%ymm5
 259:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 25e:	c4 a1 7e 6f 44 00 04 	vmovdqu 0x4(%rax,%r8,1),%ymm0
 265:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 26a:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 26f:	48 8b 55 20          	mov    0x20(%rbp),%rdx
 273:	49 ff c4             	inc    %r12
 276:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
 27a:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 27e:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 282:	c5 fe 6f 44 02 04    	vmovdqu 0x4(%rdx,%rax,1),%ymm0
 288:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 28d:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 292:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 296:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 29b:	49 83 fc 02          	cmp    $0x2,%r12
 29f:	0f 8c 6b fe ff ff    	jl     110 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x110>
 2a5:	4c 8b 7d 08          	mov    0x8(%rbp),%r15
 2a9:	49 83 c6 10          	add    $0x10,%r14
 2ad:	4c 8b 65 10          	mov    0x10(%rbp),%r12
 2b1:	49 83 c7 08          	add    $0x8,%r15
 2b5:	49 ff c4             	inc    %r12

00000000000002b8 <$LN99>:
 2b8:	4c 89 7d 08          	mov    %r15,0x8(%rbp)
 2bc:	49 83 c5 02          	add    $0x2,%r13
 2c0:	4c 89 65 10          	mov    %r12,0x10(%rbp)
 2c4:	48 83 6d 18 01       	subq   $0x1,0x18(%rbp)
 2c9:	0f 85 21 fe ff ff    	jne    f0 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xf0>
 2cf:	0f b7 01             	movzwl (%rcx),%eax
 2d2:	48 83 c1 6e          	add    $0x6e,%rcx
 2d6:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2da:	48                   	rex.W

00000000000002db <$LN30>:
 2db:	8b 45 48             	mov    0x48(%rbp),%eax
 2de:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 2e3:	c4 c1 6a 59 00       	vmulss (%r8),%xmm2,%xmm0
 2e8:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2ed:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 2f1:	c4 62 7d b8 c9       	vfmadd231ps %ymm1,%ymm0,%ymm9

00000000000002f6 <$LN44>:
 2f6:	c5 ea 59 02          	vmulss (%rdx),%xmm2,%xmm0
 2fa:	48 81 c2 24 01 00 00 	add    $0x124,%rdx
 301:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
 305:	48 83 6d 28 01       	subq   $0x1,0x28(%rbp)
 30a:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 30f:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 314:	c4 62 7d b8 d1       	vfmadd231ps %ymm1,%ymm0,%ymm10
 319:	48 89 55 20          	mov    %rdx,0x20(%rbp)
 31d:	0f 85 9e fd ff ff    	jne    c1 <??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xc1>
 323:	4c 8b 4d 50          	mov    0x50(%rbp),%r9
 327:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
 32d:	c4 c1 78 58 c1       	vaddps %xmm9,%xmm0,%xmm0
 332:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 336:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 33a:	c4 63 7d 19 d0 01    	vextractf128 $0x1,%ymm10,%xmm0
 340:	c4 c1 78 58 c2       	vaddps %xmm10,%xmm0,%xmm0
 345:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 349:	c4 c1 7a 11 11       	vmovss %xmm2,(%r9)
 34e:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 352:	c4 c1 7a 11 51 04    	vmovss %xmm2,0x4(%r9)
 358:	c5 f8 77             	vzeroupper
 35b:	4c 8d 9c 24 20 01 00 	lea    0x120(%rsp),%r11
 362:	00 
 363:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 367:	49 8b 73 38          	mov    0x38(%r11),%rsi
 36b:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 36f:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 375:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 37b:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 381:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 387:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 38d:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 393:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 399:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 39f:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 3a6:	ff ff 
 3a8:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 3af:	ff ff 
 3b1:	49 8b e3             	mov    %r11,%rsp
 3b4:	41 5f                	pop    %r15
 3b6:	41 5e                	pop    %r14
 3b8:	41 5d                	pop    %r13
 3ba:	41 5c                	pop    %r12
 3bc:	5d                   	pop    %rbp
 3bd:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 63 c2             	movslq %edx,%rax
  6c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  70:	4c 89 4d 58          	mov    %r9,0x58(%rbp)
  74:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
  78:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
  7d:	c5 7c 11 65 60       	vmovups %ymm12,0x60(%rbp)
  82:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
  87:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
  8c:	85 d2                	test   %edx,%edx
  8e:	0f 8e ee 02 00 00    	jle    382 <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x382>
  94:	49 8b 40 08          	mov    0x8(%r8),%rax
  98:	49 8b 10             	mov    (%r8),%rdx
  9b:	4d 8b 40 10          	mov    0x10(%r8),%r8
  9f:	48 2b d0             	sub    %rax,%rdx
  a2:	c5 7a 6f 35 00 00 00 	vmovdqu 0x0(%rip),%xmm14        # aa <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xaa>
  a9:	00 
  aa:	c5 7e 6f 2d 00 00 00 	vmovdqu 0x0(%rip),%ymm13        # b2 <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xb2>
  b1:	00 
  b2:	c5 7e 6f 3d 00 00 00 	vmovdqu 0x0(%rip),%ymm15        # ba <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xba>
  b9:	00 
  ba:	4c 2b c0             	sub    %rax,%r8
  bd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  c1:	4c 89 45 40          	mov    %r8,0x40(%rbp)
  c5:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  d0:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # d8 <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xd8>
  d7:	00 
  d8:	4c 8d 79 4a          	lea    0x4a(%rcx),%r15
  dc:	48 c7 45 28 04 00 00 	movq   $0x4,0x28(%rbp)
  e3:	00 
  e4:	4d 8d 67 20          	lea    0x20(%r15),%r12
  e8:	4c 89 7d 18          	mov    %r15,0x18(%rbp)
  ec:	45 33 ed             	xor    %r13d,%r13d
  ef:	4c 89 65 20          	mov    %r12,0x20(%rbp)
  f3:	c5 c1 ef ff          	vpxor  %xmm7,%xmm7,%xmm7
  f7:	c4 41 39 ef c0       	vpxor  %xmm8,%xmm8,%xmm8
  fc:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
 101:	45 33 f6             	xor    %r14d,%r14d
 104:	0f 1f 40 00          	nopl   0x0(%rax)
 108:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 10f:	00 
 110:	49 8b 07             	mov    (%r15),%rax
 113:	4c 8b 7d 10          	mov    0x10(%rbp),%r15
 117:	48 89 45 50          	mov    %rax,0x50(%rbp)
 11b:	41 0f b6 04 24       	movzbl (%r12),%eax
 120:	48 c7 45 48 00 00 00 	movq   $0x0,0x48(%rbp)
 127:	00 
 128:	4c 8b 65 48          	mov    0x48(%rbp),%r12
 12c:	89 45 08             	mov    %eax,0x8(%rbp)
 12f:	90                   	nop
 130:	4a 8d 34 e1          	lea    (%rcx,%r12,8),%rsi
 134:	4a 8d 04 29          	lea    (%rcx,%r13,1),%rax
 138:	42 0f b6 4c 20 42    	movzbl 0x42(%rax,%r12,1),%ecx
 13e:	42 0f b6 44 36 02    	movzbl 0x2(%rsi,%r14,1),%eax
 144:	8b f9                	mov    %ecx,%edi
 146:	8b d9                	mov    %ecx,%ebx
 148:	44 8b d9             	mov    %ecx,%r11d
 14b:	44 8b d1             	mov    %ecx,%r10d
 14e:	44 8b c9             	mov    %ecx,%r9d
 151:	44 8b c1             	mov    %ecx,%r8d
 154:	8b d1                	mov    %ecx,%edx
 156:	81                   	.byte 0x81
 157:	e1 80                	loope  d9 <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xd9>
	...

000000000000015a <$LN10>:
 15a:	00 00                	add    %al,(%rax)
 15c:	83 e2 40             	and    $0x40,%edx
 15f:	03 c9                	add    %ecx,%ecx
 161:	c1 e2 02             	shl    $0x2,%edx
 164:	83 e7 01             	and    $0x1,%edi
 167:	83 e3 02             	and    $0x2,%ebx
 16a:	41 83 e3 04          	and    $0x4,%r11d
 16e:	c1 e7 08             	shl    $0x8,%edi
 171:	48 0b f8             	or     %rax,%rdi
 174:	c1 e3 07             	shl    $0x7,%ebx
 177:	42 0f b6 44 36 03    	movzbl 0x3(%rsi,%r14,1),%eax
 17d:	41 83 e2 08          	and    $0x8,%r10d
 181:	48 0b d8             	or     %rax,%rbx
 184:	41 c1 e3 06          	shl    $0x6,%r11d
 188:	42 0f b6 44 36 04    	movzbl 0x4(%rsi,%r14,1),%eax
 18e:	41 83 e1 10          	and    $0x10,%r9d
 192:	4c 0b d8             	or     %rax,%r11
 195:	41 c1 e2 05          	shl    $0x5,%r10d
 199:	42 0f b6 44 36 05    	movzbl 0x5(%rsi,%r14,1),%eax
 19f:	41 83 e0 20          	and    $0x20,%r8d
 1a3:	4c 0b d0             	or     %rax,%r10
 1a6:	41 c1 e1 04          	shl    $0x4,%r9d
 1aa:	42 0f b6 44 36 06    	movzbl 0x6(%rsi,%r14,1),%eax
 1b0:	4c 0b c8             	or     %rax,%r9
 1b3:	41 c1 e0 03          	shl    $0x3,%r8d
 1b7:	42 0f b6 44 36 07    	movzbl 0x7(%rsi,%r14,1),%eax
 1bd:	4c 0b c0             	or     %rax,%r8
 1c0:	42 0f b6 44 36 08    	movzbl 0x8(%rsi,%r14,1),%eax
 1c6:	48 0b d0             	or     %rax,%rdx
 1c9:	42 0f b6 44 36 09    	movzbl 0x9(%rsi,%r14,1),%eax
 1cf:	48 0b c8             	or     %rax,%rcx
 1d2:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1d9 <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x1d9>
 1d9:	c4 a1 79 6e 04 8e    	vmovd  (%rsi,%r9,4),%xmm0
 1df:	c4 a3 79 22 04 86 01 	vpinsrd $0x1,(%rsi,%r8,4),%xmm0,%xmm0
 1e6:	c4 e3 79 22 04 96 02 	vpinsrd $0x2,(%rsi,%rdx,4),%xmm0,%xmm0
 1ed:	c4 e3 79 22 04 8e 03 	vpinsrd $0x3,(%rsi,%rcx,4),%xmm0,%xmm0
 1f4:	c5 f9 6e 0c be       	vmovd  (%rsi,%rdi,4),%xmm1
 1f9:	c4 e3 71 22 0c 9e 01 	vpinsrd $0x1,(%rsi,%rbx,4),%xmm1,%xmm1
 200:	c4 a3 71 22 0c 9e 02 	vpinsrd $0x2,(%rsi,%r11,4),%xmm1,%xmm1
 207:	c4 a3 71 22 0c 96 03 	vpinsrd $0x3,(%rsi,%r10,4),%xmm1,%xmm1
 20e:	48 8b 45 50          	mov    0x50(%rbp),%rax
 212:	48 8b 55 38          	mov    0x38(%rbp),%rdx
 216:	48 8b c8             	mov    %rax,%rcx
 219:	48                   	rex.W
 21a:	c1                   	.byte 0xc1

000000000000021b <$LN41>:
 21b:	e9 20 c4 e3 75       	jmp    75e3c640 <@comp.id+0x74de3ca8>
 220:	18 f0                	sbb    %dh,%al
 222:	01 4d 85             	add    %ecx,-0x7b(%rbp)
 225:	e4 48                	in     $0x48,%al
 227:	0f 45 c1             	cmovne %ecx,%eax
 22a:	8b 4d 08             	mov    0x8(%rbp),%ecx
 22d:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 231:	8b c1                	mov    %ecx,%eax
 233:	83 e1 0f             	and    $0xf,%ecx
 236:	c1 e8 04             	shr    $0x4,%eax
 239:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 23e:	c4 c2 79 00 cc       	vpshufb %xmm12,%xmm0,%xmm1
 243:	4d 85 e4             	test   %r12,%r12
 246:	c4 c2 79 00 c6       	vpshufb %xmm14,%xmm0,%xmm0
 24b:	0f 45 c8             	cmovne %eax,%ecx
 24e:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 254:	c4 c1 75 db d5       	vpand  %ymm13,%ymm1,%ymm2
 259:	c4 c1 6d 74 dd       	vpcmpeqb %ymm13,%ymm2,%ymm3
 25e:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 265:	00 
 266:	98                   	cwtl
 267:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 26b:	4b 8d 04 2c          	lea    (%r12,%r13,1),%rax
 26f:	48 c1 e0 05          	shl    $0x5,%rax
 273:	49 03 d7             	add    %r15,%rdx
 276:	c4 c1 65 eb ef       	vpor   %ymm15,%ymm3,%ymm5
 27b:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 280:	c5 fe 6f 44 10 04    	vmovdqu 0x4(%rax,%rdx,1),%ymm0
 286:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 28b:	c4 c1 7e 6f 44 07 04 	vmovdqu 0x4(%r15,%rax,1),%ymm0
 292:	4c 8b 45 40          	mov    0x40(%rbp),%r8
 296:	49 ff c4             	inc    %r12
 299:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
 29d:	4d 03 c7             	add    %r15,%r8
 2a0:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2a5:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2a9:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 2ae:	c4 a1 7e 6f 44 00 04 	vmovdqu 0x4(%rax,%r8,1),%ymm0
 2b5:	c4                   	.byte 0xc4
 2b6:	e2 4d                	loop   305 <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x305>

00000000000002b8 <$LN99>:
 2b8:	04 d1                	add    $0xd1,%al
 2ba:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 2be:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2c2:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 2c7:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2cc:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 2d1:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2d5:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 2da:	49                   	rex.WB

00000000000002db <$LN30>:
 2db:	83 fc 02             	cmp    $0x2,%esp
 2de:	0f 8c 4c fe ff ff    	jl     130 <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x130>
 2e4:	4c 8b 7d 18          	mov    0x18(%rbp),%r15
 2e8:	49 83 c6 10          	add    $0x10,%r14
 2ec:	4c 8b 65 20          	mov    0x20(%rbp),%r12
 2f0:	49 83 c7 08          	add    $0x8,%r15
 2f4:	49                   	rex.WB
 2f5:	ff                   	.byte 0xff

00000000000002f6 <$LN44>:
 2f6:	c4                   	(bad)
 2f7:	4c 89 7d 18          	mov    %r15,0x18(%rbp)
 2fb:	49 83 c5 02          	add    $0x2,%r13
 2ff:	4c 89 65 20          	mov    %r12,0x20(%rbp)
 303:	48 83 6d 28 01       	subq   $0x1,0x28(%rbp)
 308:	0f 85 02 fe ff ff    	jne    110 <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x110>
 30e:	0f b7 01             	movzwl (%rcx),%eax
 311:	48 83 c1 6e          	add    $0x6e,%rcx
 315:	c5 7c 10 65 60       	vmovups 0x60(%rbp),%ymm12
 31a:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 31e:	48 8b 45 10          	mov    0x10(%rbp),%rax
 322:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 327:	c5 ea 59 02          	vmulss (%rdx),%xmm2,%xmm0
 32b:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 330:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 334:	c4 62 7d b8 d1       	vfmadd231ps %ymm1,%ymm0,%ymm10
 339:	c5 ea 59 00          	vmulss (%rax),%xmm2,%xmm0
 33d:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 342:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 347:	c4 62 7d b8 d9       	vfmadd231ps %ymm1,%ymm0,%ymm11
 34c:	c4 c1 6a 59 00       	vmulss (%r8),%xmm2,%xmm0
 351:	48 05 24 01 00 00    	add    $0x124,%rax
 357:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
 35b:	48 83 6d 30 01       	subq   $0x1,0x30(%rbp)
 360:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 365:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 36a:	c4 62 7d b8 e1       	vfmadd231ps %ymm1,%ymm0,%ymm12
 36f:	c5 7c 11 65 60       	vmovups %ymm12,0x60(%rbp)
 374:	48 89 45 10          	mov    %rax,0x10(%rbp)
 378:	0f 85 52 fd ff ff    	jne    d0 <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xd0>
 37e:	4c 8b 4d 58          	mov    0x58(%rbp),%r9
 382:	c4 63 7d 19 d0 01    	vextractf128 $0x1,%ymm10,%xmm0
 388:	c4 c1 78 58 c2       	vaddps %xmm10,%xmm0,%xmm0
 38d:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 391:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 395:	c4 c1 7a 11 11       	vmovss %xmm2,(%r9)
 39a:	c4 63 7d 19 d8 01    	vextractf128 $0x1,%ymm11,%xmm0
 3a0:	c4 c1 78 58 c3       	vaddps %xmm11,%xmm0,%xmm0
 3a5:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3a9:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 3ad:	c4 63 7d 19 e0 01    	vextractf128 $0x1,%ymm12,%xmm0
 3b3:	c4 c1 78 58 c4       	vaddps %xmm12,%xmm0,%xmm0
 3b8:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3bc:	c4 c1 7a 11 51 04    	vmovss %xmm2,0x4(%r9)
 3c2:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 3c6:	c4 c1 7a 11 51 08    	vmovss %xmm2,0x8(%r9)
 3cc:	c5 f8 77             	vzeroupper
 3cf:	4c 8d 9c 24 40 01 00 	lea    0x140(%rsp),%r11
 3d6:	00 
 3d7:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 3db:	49 8b 73 38          	mov    0x38(%r11),%rsi
 3df:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 3e3:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 3e9:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 3ef:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 3f5:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 3fb:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 401:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 407:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 40d:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 413:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 41a:	ff ff 
 41c:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 423:	ff ff 
 425:	49 8b e3             	mov    %r11,%rsp
 428:	41 5f                	pop    %r15
 42a:	41 5e                	pop    %r14
 42c:	41 5d                	pop    %r13
 42e:	41 5c                	pop    %r12
 430:	5d                   	pop    %rbp
 431:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec a0 01 00 00 	sub    $0x1a0,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 63 c2             	movslq %edx,%rax
  6c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  70:	4c 89 4d 60          	mov    %r9,0x60(%rbp)
  74:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
  78:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
  7d:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
  82:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
  87:	c5 7c 11 a5 80 00 00 	vmovups %ymm12,0x80(%rbp)
  8e:	00 
  8f:	c5 7c 11 ad a0 00 00 	vmovups %ymm13,0xa0(%rbp)
  96:	00 
  97:	c5 7c 11 b5 c0 00 00 	vmovups %ymm14,0xc0(%rbp)
  9e:	00 
  9f:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
  a4:	85 d2                	test   %edx,%edx
  a6:	0f 8e 61 03 00 00    	jle    40d <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x40d>
  ac:	49 8b 40 08          	mov    0x8(%r8),%rax
  b0:	49 8b 10             	mov    (%r8),%rdx
  b3:	4d 8b 48 10          	mov    0x10(%r8),%r9
  b7:	48 2b d0             	sub    %rax,%rdx
  ba:	4d 8b 40 18          	mov    0x18(%r8),%r8
  be:	4c 2b c8             	sub    %rax,%r9
  c1:	4c 2b c0             	sub    %rax,%r8
  c4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  c8:	4c 89 45 48          	mov    %r8,0x48(%rbp)
  cc:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  d0:	4c 89 4d 40          	mov    %r9,0x40(%rbp)
  d4:	0f 1f 40 00          	nopl   0x0(%rax)
  d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  df:	00 
  e0:	c5 7e 6f 3d 00 00 00 	vmovdqu 0x0(%rip),%ymm15        # e8 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xe8>
  e7:	00 
  e8:	c5 7a 6f 35 00 00 00 	vmovdqu 0x0(%rip),%xmm14        # f0 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xf0>
  ef:	00 
  f0:	c5 7e 6f 2d 00 00 00 	vmovdqu 0x0(%rip),%ymm13        # f8 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xf8>
  f7:	00 
  f8:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # 100 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x100>
  ff:	00 
 100:	4c 8d 79 4a          	lea    0x4a(%rcx),%r15
 104:	48 c7 45 28 04 00 00 	movq   $0x4,0x28(%rbp)
 10b:	00 
 10c:	4d 8d 67 20          	lea    0x20(%r15),%r12
 110:	4c 89 7d 18          	mov    %r15,0x18(%rbp)
 114:	45 33 ed             	xor    %r13d,%r13d
 117:	4c 89 65 20          	mov    %r12,0x20(%rbp)
 11b:	c5 c1 ef ff          	vpxor  %xmm7,%xmm7,%xmm7
 11f:	c4 41 39 ef c0       	vpxor  %xmm8,%xmm8,%xmm8
 124:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
 129:	c4 41 29 ef d2       	vpxor  %xmm10,%xmm10,%xmm10
 12e:	45 33 f6             	xor    %r14d,%r14d
 131:	0f 1f 40 00          	nopl   0x0(%rax)
 135:	66 66 66 0f 1f 84 00 	data16 data16 nopw 0x0(%rax,%rax,1)
 13c:	00 00 00 00 
 140:	49 8b 07             	mov    (%r15),%rax
 143:	4c 8b 7d 10          	mov    0x10(%rbp),%r15
 147:	48 89 45 58          	mov    %rax,0x58(%rbp)
 14b:	41 0f b6 04 24       	movzbl (%r12),%eax
 150:	48 c7 45 50 00 00 00 	movq   $0x0,0x50(%rbp)
 157:	00 
 158:	4c                   	rex.WR
 159:	8b                   	.byte 0x8b

000000000000015a <$LN10>:
 15a:	65 50                	gs push %rax
 15c:	89 45 08             	mov    %eax,0x8(%rbp)
 15f:	90                   	nop
 160:	4a 8d 34 e1          	lea    (%rcx,%r12,8),%rsi
 164:	4a 8d 04 29          	lea    (%rcx,%r13,1),%rax
 168:	42 0f b6 4c 20 42    	movzbl 0x42(%rax,%r12,1),%ecx
 16e:	42 0f b6 44 36 02    	movzbl 0x2(%rsi,%r14,1),%eax
 174:	8b f9                	mov    %ecx,%edi
 176:	8b d9                	mov    %ecx,%ebx
 178:	44 8b d9             	mov    %ecx,%r11d
 17b:	44 8b d1             	mov    %ecx,%r10d
 17e:	44 8b c9             	mov    %ecx,%r9d
 181:	44 8b c1             	mov    %ecx,%r8d
 184:	8b d1                	mov    %ecx,%edx
 186:	81 e1 80 00 00 00    	and    $0x80,%ecx
 18c:	83 e2 40             	and    $0x40,%edx
 18f:	03 c9                	add    %ecx,%ecx
 191:	c1 e2 02             	shl    $0x2,%edx
 194:	83 e7 01             	and    $0x1,%edi
 197:	83 e3 02             	and    $0x2,%ebx
 19a:	41 83 e3 04          	and    $0x4,%r11d
 19e:	c1 e7 08             	shl    $0x8,%edi
 1a1:	48 0b f8             	or     %rax,%rdi
 1a4:	c1 e3 07             	shl    $0x7,%ebx
 1a7:	42 0f b6 44 36 03    	movzbl 0x3(%rsi,%r14,1),%eax
 1ad:	41 83 e2 08          	and    $0x8,%r10d
 1b1:	48 0b d8             	or     %rax,%rbx
 1b4:	41 c1 e3 06          	shl    $0x6,%r11d
 1b8:	42 0f b6 44 36 04    	movzbl 0x4(%rsi,%r14,1),%eax
 1be:	41 83 e1 10          	and    $0x10,%r9d
 1c2:	4c 0b d8             	or     %rax,%r11
 1c5:	41 c1 e2 05          	shl    $0x5,%r10d
 1c9:	42 0f b6 44 36 05    	movzbl 0x5(%rsi,%r14,1),%eax
 1cf:	41 83 e0 20          	and    $0x20,%r8d
 1d3:	4c 0b d0             	or     %rax,%r10
 1d6:	41 c1 e1 04          	shl    $0x4,%r9d
 1da:	42 0f b6 44 36 06    	movzbl 0x6(%rsi,%r14,1),%eax
 1e0:	4c 0b c8             	or     %rax,%r9
 1e3:	41 c1 e0 03          	shl    $0x3,%r8d
 1e7:	42 0f b6 44 36 07    	movzbl 0x7(%rsi,%r14,1),%eax
 1ed:	4c 0b c0             	or     %rax,%r8
 1f0:	42 0f b6 44 36 08    	movzbl 0x8(%rsi,%r14,1),%eax
 1f6:	48 0b d0             	or     %rax,%rdx
 1f9:	42 0f b6 44 36 09    	movzbl 0x9(%rsi,%r14,1),%eax
 1ff:	48 0b c8             	or     %rax,%rcx
 202:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 209 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x209>
 209:	c4 a1 79 6e 04 8e    	vmovd  (%rsi,%r9,4),%xmm0
 20f:	c4 a3 79 22 04 86 01 	vpinsrd $0x1,(%rsi,%r8,4),%xmm0,%xmm0
 216:	c4                   	.byte 0xc4
 217:	e3 79                	jrcxz  292 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x292>
 219:	22                   	.byte 0x22
 21a:	04                   	.byte 0x4

000000000000021b <$LN41>:
 21b:	96                   	xchg   %eax,%esi
 21c:	02 c4                	add    %ah,%al
 21e:	e3 79                	jrcxz  299 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x299>
 220:	22 04 8e             	and    (%rsi,%rcx,4),%al
 223:	03 c5                	add    %ebp,%eax
 225:	f9                   	stc
 226:	6e                   	outsb  (%rsi),(%dx)
 227:	0c be                	or     $0xbe,%al
 229:	c4 e3 71 22 0c 9e 01 	vpinsrd $0x1,(%rsi,%rbx,4),%xmm1,%xmm1
 230:	c4 a3 71 22 0c 9e 02 	vpinsrd $0x2,(%rsi,%r11,4),%xmm1,%xmm1
 237:	c4 a3 71 22 0c 96 03 	vpinsrd $0x3,(%rsi,%r10,4),%xmm1,%xmm1
 23e:	48 8b 45 58          	mov    0x58(%rbp),%rax
 242:	48 8b 55 38          	mov    0x38(%rbp),%rdx
 246:	48 8b c8             	mov    %rax,%rcx
 249:	48 c1 e9 20          	shr    $0x20,%rcx
 24d:	c4 e3 75 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm6
 253:	4d 85 e4             	test   %r12,%r12
 256:	48 0f 45 c1          	cmovne %rcx,%rax
 25a:	8b 4d 08             	mov    0x8(%rbp),%ecx
 25d:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 261:	8b c1                	mov    %ecx,%eax
 263:	83 e1 0f             	and    $0xf,%ecx
 266:	c1 e8 04             	shr    $0x4,%eax
 269:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 26e:	c4 c2 79 00 cc       	vpshufb %xmm12,%xmm0,%xmm1
 273:	4d 85 e4             	test   %r12,%r12
 276:	c4 c2 79 00 c6       	vpshufb %xmm14,%xmm0,%xmm0
 27b:	0f 45 c8             	cmovne %eax,%ecx
 27e:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 284:	c4 c1 75 db d7       	vpand  %ymm15,%ymm1,%ymm2
 289:	c4 c1 6d 74 df       	vpcmpeqb %ymm15,%ymm2,%ymm3
 28e:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 295:	00 
 296:	98                   	cwtl
 297:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 29b:	4b 8d 04 2c          	lea    (%r12,%r13,1),%rax
 29f:	48 c1 e0 05          	shl    $0x5,%rax
 2a3:	49 03 d7             	add    %r15,%rdx
 2a6:	c4 c1 65 eb ed       	vpor   %ymm13,%ymm3,%ymm5
 2ab:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 2b0:	c5 fe 6f 44 10 04    	vmovdqu 0x4(%rax,%rdx,1),%ymm0
 2b6:	c4                   	.byte 0xc4
 2b7:	e2                   	.byte 0xe2

00000000000002b8 <$LN99>:
 2b8:	7d 08                	jge    2c2 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x2c2>
 2ba:	cd c4                	int    $0xc4
 2bc:	c1 7e 6f 44          	sarl   $0x44,0x6f(%rsi)
 2c0:	07                   	(bad)
 2c1:	04 4c                	add    $0x4c,%al
 2c3:	8b 45 40             	mov    0x40(%rbp),%eax
 2c6:	49 ff c4             	inc    %r12
 2c9:	4c 8b 4d 48          	mov    0x48(%rbp),%r9
 2cd:	4d 03 c7             	add    %r15,%r8
 2d0:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
 2d4:	4d 03 cf             	add    %r15,%r9
 2d7:	c4                   	.byte 0xc4
 2d8:	e2 4d                	loop   327 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x327>
 2da:	04                   	.byte 0x4

00000000000002db <$LN30>:
 2db:	d1 c5                	rol    $1,%ebp
 2dd:	ed                   	in     (%dx),%eax
 2de:	f5                   	cmc
 2df:	dc c4                	fadd   %st,%st(4)
 2e1:	e2 7d                	loop   360 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x360>
 2e3:	08 cd                	or     %cl,%ch
 2e5:	c4 a1 7e 6f 44 00 04 	vmovdqu 0x4(%rax,%r8,1),%ymm0
 2ec:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2f1:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1

00000000000002f6 <$LN44>:
 2f6:	c4 a1 7e 6f 44 08 04 	vmovdqu 0x4(%rax,%r9,1),%ymm0
 2fd:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 301:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 305:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 30a:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 30f:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 313:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 318:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 31d:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 322:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 326:	c4 41 65 fe d2       	vpaddd %ymm10,%ymm3,%ymm10
 32b:	49 83 fc 02          	cmp    $0x2,%r12
 32f:	0f 8c 2b fe ff ff    	jl     160 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x160>
 335:	4c 8b 7d 18          	mov    0x18(%rbp),%r15
 339:	49 83 c6 10          	add    $0x10,%r14
 33d:	4c 8b 65 20          	mov    0x20(%rbp),%r12
 341:	49 83 c7 08          	add    $0x8,%r15
 345:	49 ff c4             	inc    %r12
 348:	4c 89 7d 18          	mov    %r15,0x18(%rbp)
 34c:	49 83 c5 02          	add    $0x2,%r13
 350:	4c 89 65 20          	mov    %r12,0x20(%rbp)
 354:	48 83 6d 28 01       	subq   $0x1,0x28(%rbp)
 359:	0f 85 e1 fd ff ff    	jne    140 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x140>
 35f:	0f b7 01             	movzwl (%rcx),%eax
 362:	48 83 c1 6e          	add    $0x6e,%rcx
 366:	c5 7c 10 a5 80 00 00 	vmovups 0x80(%rbp),%ymm12
 36d:	00 
 36e:	c5 7c 10 ad a0 00 00 	vmovups 0xa0(%rbp),%ymm13
 375:	00 
 376:	c5 7c 10 b5 c0 00 00 	vmovups 0xc0(%rbp),%ymm14
 37d:	00 
 37e:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 382:	48 8b 45 10          	mov    0x10(%rbp),%rax
 386:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 38b:	c5 ea 59 02          	vmulss (%rdx),%xmm2,%xmm0
 38f:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 394:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 398:	c4 62 7d b8 d9       	vfmadd231ps %ymm1,%ymm0,%ymm11
 39d:	c5 ea 59 00          	vmulss (%rax),%xmm2,%xmm0
 3a1:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 3a6:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 3ab:	c4 62 7d b8 e1       	vfmadd231ps %ymm1,%ymm0,%ymm12
 3b0:	c4 c1 6a 59 00       	vmulss (%r8),%xmm2,%xmm0
 3b5:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 3ba:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 3bf:	c4 62 7d b8 e9       	vfmadd231ps %ymm1,%ymm0,%ymm13
 3c4:	c4 c1 6a 59 01       	vmulss (%r9),%xmm2,%xmm0
 3c9:	48 05 24 01 00 00    	add    $0x124,%rax
 3cf:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
 3d3:	48 83 6d 30 01       	subq   $0x1,0x30(%rbp)
 3d8:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 3dd:	c4 c1 7c 5b ca       	vcvtdq2ps %ymm10,%ymm1
 3e2:	c4 62 7d b8 f1       	vfmadd231ps %ymm1,%ymm0,%ymm14
 3e7:	c5 7c 11 b5 c0 00 00 	vmovups %ymm14,0xc0(%rbp)
 3ee:	00 
 3ef:	c5 7c 11 a5 80 00 00 	vmovups %ymm12,0x80(%rbp)
 3f6:	00 
 3f7:	c5 7c 11 ad a0 00 00 	vmovups %ymm13,0xa0(%rbp)
 3fe:	00 
 3ff:	48 89 45 10          	mov    %rax,0x10(%rbp)
 403:	0f 85 d7 fc ff ff    	jne    e0 <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xe0>
 409:	4c 8b 4d 60          	mov    0x60(%rbp),%r9
 40d:	c4 63 7d 19 d8 01    	vextractf128 $0x1,%ymm11,%xmm0
 413:	c4 c1 78 58 c3       	vaddps %xmm11,%xmm0,%xmm0
 418:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 41c:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 420:	c4 c1 7a 11 11       	vmovss %xmm2,(%r9)
 425:	c4 63 7d 19 e0 01    	vextractf128 $0x1,%ymm12,%xmm0
 42b:	c4 c1 78 58 c4       	vaddps %xmm12,%xmm0,%xmm0
 430:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 434:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 438:	c4 c1 7a 11 51 04    	vmovss %xmm2,0x4(%r9)
 43e:	c4 63 7d 19 e8 01    	vextractf128 $0x1,%ymm13,%xmm0
 444:	c4 c1 78 58 c5       	vaddps %xmm13,%xmm0,%xmm0
 449:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 44d:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 451:	c4 63 7d 19 f0 01    	vextractf128 $0x1,%ymm14,%xmm0
 457:	c4 c1 78 58 c6       	vaddps %xmm14,%xmm0,%xmm0
 45c:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 460:	c4 c1 7a 11 51 08    	vmovss %xmm2,0x8(%r9)
 466:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 46a:	c4 c1 7a 11 51 0c    	vmovss %xmm2,0xc(%r9)
 470:	c5 f8 77             	vzeroupper
 473:	4c 8d 9c 24 a0 01 00 	lea    0x1a0(%rsp),%r11
 47a:	00 

000000000000047b <$LN111>:
 47b:	49                   	rex.WB
 47c:	8b                   	.byte 0x8b

000000000000047d <$LN67>:
 47d:	5b                   	pop    %rbx
 47e:	30 49 8b             	xor    %cl,-0x75(%rcx)
 481:	73 38                	jae    4bb <??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x4bb>
 483:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 487:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 48d:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 493:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 499:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 49f:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 4a5:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 4ab:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 4b1:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 4b7:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 4be:	ff ff 
 4c0:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 4c7:	ff ff 
 4c9:	49 8b e3             	mov    %r11,%rsp
 4cc:	41 5f                	pop    %r15
 4ce:	41 5e                	pop    %r14
 4d0:	41 5d                	pop    %r13
 4d2:	41 5c                	pop    %r12
 4d4:	5d                   	pop    %rbp
 4d5:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 64 24 70    	vmovaps %xmm12,0x70(%rsp)
  46:	c5 78 29 6c 24 60    	vmovaps %xmm13,0x60(%rsp)
  4c:	c5 78 29 74 24 50    	vmovaps %xmm14,0x50(%rsp)
  52:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  57:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  5b:	48 63 c2             	movslq %edx,%rax
  5e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  62:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
  66:	c4 41 38 57 c0       	vxorps %xmm8,%xmm8,%xmm8
  6b:	85 d2                	test   %edx,%edx
  6d:	0f 8e fe 01 00 00    	jle    271 <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x271>
  73:	49 8b 00             	mov    (%r8),%rax
  76:	c5 7a 6f 15 00 00 00 	vmovdqu 0x0(%rip),%xmm10        # 7e <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x7e>
  7d:	00 
  7e:	c5 7e 6f 0d 00 00 00 	vmovdqu 0x0(%rip),%ymm9        # 86 <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x86>
  85:	00 
  86:	c5 7e 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%ymm11        # 8e <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x8e>
  8d:	00 
  8e:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # 96 <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x96>
  95:	00 
  96:	c5 7a 10 35 00 00 00 	vmovss 0x0(%rip),%xmm14        # 9e <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x9e>
  9d:	00 
  9e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  a2:	48 83 c0 04          	add    $0x4,%rax
  a6:	48 83 c1 02          	add    $0x2,%rcx
  aa:	48 89 45 18          	mov    %rax,0x18(%rbp)
  ae:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
  b2:	c4 41 11 ef ed       	vpxor  %xmm13,%xmm13,%xmm13
  b7:	c4 c1 7e 6f fd       	vmovdqu %ymm13,%ymm7
  bc:	4c 8d 59 48          	lea    0x48(%rcx),%r11
  c0:	48 c7 45 00 04 00 00 	movq   $0x4,0x0(%rbp)
  c7:	00 
  c8:	4c 8b d1             	mov    %rcx,%r10
  cb:	48 8b d8             	mov    %rax,%rbx
  ce:	66 90                	xchg   %ax,%ax
  d0:	4d 8b 6a 20          	mov    0x20(%r10),%r13
  d4:	4c 8d 25 00 00 00 00 	lea    0x0(%rip),%r12        # db <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xdb>
  db:	33 f6                	xor    %esi,%esi
  dd:	4d 8b f3             	mov    %r11,%r14
  e0:	bf 02 00 00 00       	mov    $0x2,%edi
  e5:	4c 8b fb             	mov    %rbx,%r15
  e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  ef:	00 
  f0:	41 0f b6 4e f8       	movzbl -0x8(%r14),%ecx
  f5:	4d 8d 7f 20          	lea    0x20(%r15),%r15
  f9:	41 0f b6 44 3a fe    	movzbl -0x2(%r10,%rdi,1),%eax
  ff:	48 8d 7f 04          	lea    0x4(%rdi),%rdi
 103:	44 8b c9             	mov    %ecx,%r9d
 106:	4d 8d 76 01          	lea    0x1(%r14),%r14
 10a:	44 8b c1             	mov    %ecx,%r8d
 10d:	8b d1                	mov    %ecx,%edx
 10f:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 115:	83 e2 30             	and    $0x30,%edx
 118:	c1 e1 02             	shl    $0x2,%ecx
 11b:	41 83 e1 03          	and    $0x3,%r9d
 11f:	c1 e2 04             	shl    $0x4,%edx
 122:	41 83 e0 0c          	and    $0xc,%r8d
 126:	41 c1 e1 08          	shl    $0x8,%r9d
 12a:	4c 0b c8             	or     %rax,%r9
 12d:	41 c1 e0 06          	shl    $0x6,%r8d
 131:	41 0f b6 44 3a fb    	movzbl -0x5(%r10,%rdi,1),%eax
 137:	4c 0b c0             	or     %rax,%r8
 13a:	41 0f b6 44 3a fc    	movzbl -0x4(%r10,%rdi,1),%eax
 140:	48 0b d0             	or     %rax,%rdx
 143:	41 0f b6 44 3a fd    	movzbl -0x3(%r10,%rdi,1),%eax
 149:	c4 81 7a 7e 0c cc    	vmovq  (%r12,%r9,8),%xmm1
 14f:	48 0b c8             	or     %rax,%rcx
 152:	49 8b c5             	mov    %r13,%rax
 155:	c4                   	.byte 0xc4
 156:	83 f1 22             	xor    $0x22,%ecx
 159:	0c                   	.byte 0xc

000000000000015a <$LN10>:
 15a:	c4 01 c4 c1          	(bad)
 15e:	7a 7e                	jp     1de <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x1de>
 160:	04 d4                	add    $0xd4,%al
 162:	41 0f b6 56 ff       	movzbl -0x1(%r14),%edx
 167:	c4 c3 f9 22 04 cc 01 	vpinsrq $0x1,(%r12,%rcx,8),%xmm0,%xmm0
 16e:	c4 e3 75 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm6
 174:	49 8b cd             	mov    %r13,%rcx
 177:	48 c1 e9 20          	shr    $0x20,%rcx
 17b:	85 f6                	test   %esi,%esi
 17d:	48 0f 45 c1          	cmovne %rcx,%rax
 181:	ff c6                	inc    %esi
 183:	c5 f9 6e d0          	vmovd  %eax,%xmm2
 187:	0f b6 c2             	movzbl %dl,%eax
 18a:	80 e2 0f             	and    $0xf,%dl
 18d:	c0 e8 04             	shr    $0x4,%al
 190:	0f b6 c8             	movzbl %al,%ecx
 193:	c4 e2 79 58 d2       	vpbroadcastd %xmm2,%xmm2
 198:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 19f:	00 
 1a0:	98                   	cwtl
 1a1:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 1a5:	c4 e2 79 79 c9       	vpbroadcastw %xmm1,%xmm1
 1aa:	0f b6 c2             	movzbl %dl,%eax
 1ad:	66 03 c0             	add    %ax,%ax
 1b0:	66 ff c0             	inc    %ax
 1b3:	98                   	cwtl
 1b4:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 1b8:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
 1bd:	c4 e3 7d 38 e9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm5
 1c3:	c4 c2 69 00 c2       	vpshufb %xmm10,%xmm2,%xmm0
 1c8:	c4 c2 69 00 cc       	vpshufb %xmm12,%xmm2,%xmm1
 1cd:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 1d3:	c4 c1 7e 6f 47 e0    	vmovdqu -0x20(%r15),%ymm0
 1d9:	c4 c1 75 db d1       	vpand  %ymm9,%ymm1,%ymm2
 1de:	c4 c1 6d 74 d9       	vpcmpeqb %ymm9,%ymm2,%ymm3
 1e3:	c4 c1 65 eb e3       	vpor   %ymm11,%ymm3,%ymm4
 1e8:	c4 e2 7d 08 cc       	vpsignb %ymm4,%ymm0,%ymm1
 1ed:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 1f2:	c5 ed f5 dd          	vpmaddwd %ymm5,%ymm2,%ymm3
 1f6:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 1fa:	83 fe 02             	cmp    $0x2,%esi
 1fd:	0f 8c ed fe ff ff    	jl     f0 <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xf0>
 203:	49 83 c3 02          	add    $0x2,%r11
 207:	49 83 c2 08          	add    $0x8,%r10
 20b:	48 83 c3 40          	add    $0x40,%rbx
 20f:	48 83 6d 00 01       	subq   $0x1,0x0(%rbp)
 214:	0f 85 b6 fe ff ff    	jne    d0 <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xd0>
 21a:	48                   	rex.W

000000000000021b <$LN41>:
 21b:	8b 4d 08             	mov    0x8(%rbp),%ecx
 21e:	c5 fc 5b d7          	vcvtdq2ps %ymm7,%ymm2
 222:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 226:	48 83 c1 52          	add    $0x52,%rcx
 22a:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 22e:	48 8b 45 10          	mov    0x10(%rbp),%rax
 232:	c4 e2 79 13 c8       	vcvtph2ps %xmm0,%xmm1
 237:	c4 c1 72 59 ce       	vmulss %xmm14,%xmm1,%xmm1
 23c:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
 240:	c5 f2 59 00          	vmulss (%rax),%xmm1,%xmm0
 244:	48 05 24 01 00 00    	add    $0x124,%rax
 24a:	48 89 45 10          	mov    %rax,0x10(%rbp)
 24e:	48 8b 45 18          	mov    0x18(%rbp),%rax
 252:	48 05 24 01 00 00    	add    $0x124,%rax
 258:	48 83 6d 20 01       	subq   $0x1,0x20(%rbp)
 25d:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 262:	c4 62 7d b8 c2       	vfmadd231ps %ymm2,%ymm0,%ymm8
 267:	48 89 45 18          	mov    %rax,0x18(%rbp)
 26b:	0f 85 46 fe ff ff    	jne    b7 <??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xb7>
 271:	48 8b 45 28          	mov    0x28(%rbp),%rax
 275:	c4 63 7d 19 c0 01    	vextractf128 $0x1,%ymm8,%xmm0
 27b:	c4 c1 78 58 c0       	vaddps %xmm8,%xmm0,%xmm0
 280:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 284:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 288:	c5 fa 11 10          	vmovss %xmm2,(%rax)
 28c:	c5 f8 77             	vzeroupper
 28f:	4c 8d 9c 24 e0 00 00 	lea    0xe0(%rsp),%r11
 296:	00 
 297:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 29b:	49 8b 73 38          	mov    0x38(%r11),%rsi
 29f:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 2a3:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 2a9:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 2af:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 2b5:	c4                   	.byte 0xc4
 2b6:	41                   	rex.B
 2b7:	78                   	.byte 0x78

00000000000002b8 <$LN99>:
 2b8:	28 4b c0             	sub    %cl,-0x40(%rbx)
 2bb:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 2c1:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 2c7:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 2cd:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 2d3:	c5 78 28 74 24 50    	vmovaps 0x50(%rsp),%xmm14
 2d9:	49                   	rex.WB
 2da:	8b                   	.byte 0x8b

00000000000002db <$LN30>:
 2db:	e3 41                	jrcxz  31e <$LN44+0x28>
 2dd:	5f                   	pop    %rdi
 2de:	41 5e                	pop    %r14
 2e0:	41 5d                	pop    %r13
 2e2:	41 5c                	pop    %r12
 2e4:	5d                   	pop    %rbp
 2e5:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 7c 24 70    	vmovaps %xmm15,0x70(%rsp)
  5e:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  63:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  67:	48 63 c2             	movslq %edx,%rax
  6a:	48 89 45 30          	mov    %rax,0x30(%rbp)
  6e:	4c 89 4d 40          	mov    %r9,0x40(%rbp)
  72:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
  77:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
  7c:	85 d2                	test   %edx,%edx
  7e:	0f 8e 7b 02 00 00    	jle    2ff <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x2ff>
  84:	4d 8b 08             	mov    (%r8),%r9
  87:	48 83 c1 02          	add    $0x2,%rcx
  8b:	49 8b 40 08          	mov    0x8(%r8),%rax
  8f:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # 97 <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x97>
  96:	00 
  97:	c5 7e 6f 15 00 00 00 	vmovdqu 0x0(%rip),%ymm10        # 9f <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x9f>
  9e:	00 
  9f:	c5 7e 6f 2d 00 00 00 	vmovdqu 0x0(%rip),%ymm13        # a7 <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xa7>
  a6:	00 
  a7:	c5 7a 6f 35 00 00 00 	vmovdqu 0x0(%rip),%xmm14        # af <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xaf>
  ae:	00 
  af:	49 8d 51 04          	lea    0x4(%r9),%rdx
  b3:	48 89 45 20          	mov    %rax,0x20(%rbp)
  b7:	4c 2b c8             	sub    %rax,%r9
  ba:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  be:	4c 8d 40 04          	lea    0x4(%rax),%r8
  c2:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
  c6:	c4 41 01 ef ff       	vpxor  %xmm15,%xmm15,%xmm15
  cb:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  cf:	4c 89 45 28          	mov    %r8,0x28(%rbp)
  d3:	c4 c1 7e 6f ff       	vmovdqu %ymm15,%ymm7
  d8:	c4 41 7e 6f c7       	vmovdqu %ymm15,%ymm8
  dd:	4d 8b d8             	mov    %r8,%r11
  e0:	4c 89 45 00          	mov    %r8,0x0(%rbp)
  e4:	48 8d 59 48          	lea    0x48(%rcx),%rbx
  e8:	48 c7 45 08 04 00 00 	movq   $0x4,0x8(%rbp)
  ef:	00 
  f0:	4c 8b d1             	mov    %rcx,%r10
  f3:	48 8b fa             	mov    %rdx,%rdi
  f6:	66 66 0f 1f 84 00 00 	data16 nopw 0x0(%rax,%rax,1)
  fd:	00 00 00 
 100:	4d 8b e3             	mov    %r11,%r12
 103:	45 33 f6             	xor    %r14d,%r14d
 106:	4c 8d 1d 00 00 00 00 	lea    0x0(%rip),%r11        # 10d <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x10d>
 10d:	4c 8b fb             	mov    %rbx,%r15
 110:	be 02 00 00 00       	mov    $0x2,%esi
 115:	4c 8b ef             	mov    %rdi,%r13
 118:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 11f:	00 
 120:	41 0f b6 4f f8       	movzbl -0x8(%r15),%ecx
 125:	4d 8d 6d 20          	lea    0x20(%r13),%r13
 129:	42 0f b6 44 16 fe    	movzbl -0x2(%rsi,%r10,1),%eax
 12f:	4d 8d 64 24 20       	lea    0x20(%r12),%r12
 134:	44 8b c9             	mov    %ecx,%r9d
 137:	48 8d 76 04          	lea    0x4(%rsi),%rsi
 13b:	44 8b c1             	mov    %ecx,%r8d
 13e:	4d 8d 7f 01          	lea    0x1(%r15),%r15
 142:	8b d1                	mov    %ecx,%edx
 144:	41 83 e1 03          	and    $0x3,%r9d
 148:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 14e:	41 c1 e1 08          	shl    $0x8,%r9d
 152:	4c 0b c8             	or     %rax,%r9
 155:	c1 e1 02             	shl    $0x2,%ecx
 158:	42                   	rex.X
 159:	0f                   	.byte 0xf

000000000000015a <$LN10>:
 15a:	b6 44                	mov    $0x44,%dh
 15c:	16                   	(bad)
 15d:	fb                   	sti
 15e:	83 e2 30             	and    $0x30,%edx
 161:	c1 e2 04             	shl    $0x4,%edx
 164:	41 83 e0 0c          	and    $0xc,%r8d
 168:	41 c1 e0 06          	shl    $0x6,%r8d
 16c:	c4 81 7a 7e 0c cb    	vmovq  (%r11,%r9,8),%xmm1
 172:	4c 0b c0             	or     %rax,%r8
 175:	42 0f b6 44 16 fc    	movzbl -0x4(%rsi,%r10,1),%eax
 17b:	48 0b d0             	or     %rax,%rdx
 17e:	42 0f b6 44 16 fd    	movzbl -0x3(%rsi,%r10,1),%eax
 184:	48 0b c8             	or     %rax,%rcx
 187:	49 8b 42 20          	mov    0x20(%r10),%rax
 18b:	c4 83 f1 22 0c c3 01 	vpinsrq $0x1,(%r11,%r8,8),%xmm1,%xmm1
 192:	c4 c1 7a 7e 04 d3    	vmovq  (%r11,%rdx,8),%xmm0
 198:	c4 c3 f9 22 04 cb 01 	vpinsrq $0x1,(%r11,%rcx,8),%xmm0,%xmm0
 19f:	41 0f b6 57 ff       	movzbl -0x1(%r15),%edx
 1a4:	48 8b c8             	mov    %rax,%rcx
 1a7:	c4 e3 75 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm6
 1ad:	48 c1 e9 20          	shr    $0x20,%rcx
 1b1:	45 85 f6             	test   %r14d,%r14d
 1b4:	48 0f 45 c1          	cmovne %rcx,%rax
 1b8:	41 ff c6             	inc    %r14d
 1bb:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 1bf:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 1c4:	c4 c2 79 00 ce       	vpshufb %xmm14,%xmm0,%xmm1
 1c9:	c4 c2 79 00 c4       	vpshufb %xmm12,%xmm0,%xmm0
 1ce:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 1d4:	c4 c1 75 db d2       	vpand  %ymm10,%ymm1,%ymm2
 1d9:	0f b6 c2             	movzbl %dl,%eax
 1dc:	80 e2 0f             	and    $0xf,%dl
 1df:	c0 e8 04             	shr    $0x4,%al
 1e2:	0f b6 c8             	movzbl %al,%ecx
 1e5:	c4 c1 6d 74 da       	vpcmpeqb %ymm10,%ymm2,%ymm3
 1ea:	c4 c1 65 eb ed       	vpor   %ymm13,%ymm3,%ymm5
 1ef:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 1f6:	00 
 1f7:	98                   	cwtl
 1f8:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 1fc:	c4 e2 79 79 c9       	vpbroadcastw %xmm1,%xmm1
 201:	0f b6 c2             	movzbl %dl,%eax
 204:	66 03 c0             	add    %ax,%ax
 207:	66 ff c0             	inc    %ax
 20a:	98                   	cwtl
 20b:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 20f:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
 214:	c4 e3 7d 38 e1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm4
 21a:	c4                   	.byte 0xc4

000000000000021b <$LN41>:
 21b:	c1 7e 6f 4d          	sarl   $0x4d,0x6f(%rsi)
 21f:	e0 c4                	loopne 1e5 <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x1e5>
 221:	e2 75                	loop   298 <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x298>
 223:	08 c5                	or     %al,%ch
 225:	c4 e2 4d 04 d0       	vpmaddubsw %ymm0,%ymm6,%ymm2
 22a:	c4 c1 7e 6f 44 24 e0 	vmovdqu -0x20(%r12),%ymm0
 231:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 235:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 23a:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 23f:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 243:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 247:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 24c:	41 83 fe 02          	cmp    $0x2,%r14d
 250:	0f 8c ca fe ff ff    	jl     120 <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x120>
 256:	4c 8b 5d 00          	mov    0x0(%rbp),%r11
 25a:	48 83 c3 02          	add    $0x2,%rbx
 25e:	49 83 c3 40          	add    $0x40,%r11
 262:	49 83 c2 08          	add    $0x8,%r10
 266:	48 83 c7 40          	add    $0x40,%rdi
 26a:	4c 89 5d 00          	mov    %r11,0x0(%rbp)
 26e:	48 83 6d 08 01       	subq   $0x1,0x8(%rbp)
 273:	0f 85 87 fe ff ff    	jne    100 <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x100>
 279:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
 27d:	48 8b 55 38          	mov    0x38(%rbp),%rdx
 281:	4c 8b 45 28          	mov    0x28(%rbp),%r8
 285:	49 81 c0 24 01 00 00 	add    $0x124,%r8
 28c:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 290:	48 83 c1 52          	add    $0x52,%rcx
 294:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 298:	48 8b 45 20          	mov    0x20(%rbp),%rax
 29c:	c4 e2 79 13 c8       	vcvtph2ps %xmm0,%xmm1
 2a1:	c5 f2 59 1d 00 00 00 	vmulss 0x0(%rip),%xmm1,%xmm3        # 2a9 <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x2a9>
 2a8:	00 
 2a9:	c5 fc 5b d7          	vcvtdq2ps %ymm7,%ymm2
 2ad:	c5 e2 59 04 10       	vmulss (%rax,%rdx,1),%xmm3,%xmm0
 2b2:	48 8b 55 18          	mov    0x18(%rbp),%rdx
 2b6:	c4                   	.byte 0xc4
 2b7:	e2                   	.byte 0xe2

00000000000002b8 <$LN99>:
 2b8:	7d 18                	jge    2d2 <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x2d2>
 2ba:	c0 c4 62             	rol    $0x62,%ah
 2bd:	7d b8                	jge    277 <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x277>
 2bf:	ca c5 e2             	lret   $0xe2c5
 2c2:	59                   	pop    %rcx
 2c3:	00 48 05             	add    %cl,0x5(%rax)
 2c6:	24 01                	and    $0x1,%al
 2c8:	00 00                	add    %al,(%rax)
 2ca:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
 2ce:	48 81 c2 24 01 00 00 	add    $0x124,%rdx
 2d5:	48 89 45 20          	mov    %rax,0x20(%rbp)
 2d9:	48                   	rex.W
 2da:	83                   	.byte 0x83

00000000000002db <$LN30>:
 2db:	6d                   	insl   (%dx),(%rdi)
 2dc:	30 01                	xor    %al,(%rcx)
 2de:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2e3:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 2e8:	c4 62 7d b8 d9       	vfmadd231ps %ymm1,%ymm0,%ymm11
 2ed:	48 89 55 18          	mov    %rdx,0x18(%rbp)
 2f1:	4c 89 45 28          	mov    %r8,0x28(%rbp)
 2f5:	0f                   	.byte 0xf

00000000000002f6 <$LN44>:
 2f6:	85 d8                	test   %ebx,%eax
 2f8:	fd                   	std
 2f9:	ff                   	(bad)
 2fa:	ff 4c 8b 4d          	decl   0x4d(%rbx,%rcx,4)
 2fe:	40 c4 63 7d 19 c8 01 	rex vextractf128 $0x1,%ymm9,%xmm0
 305:	c4 c1 78 58 c1       	vaddps %xmm9,%xmm0,%xmm0
 30a:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 30e:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 312:	c4 63 7d 19 d8 01    	vextractf128 $0x1,%ymm11,%xmm0
 318:	c4 c1 78 58 c3       	vaddps %xmm11,%xmm0,%xmm0
 31d:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 321:	c4 c1 7a 11 11       	vmovss %xmm2,(%r9)
 326:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 32a:	c4 c1 7a 11 51 04    	vmovss %xmm2,0x4(%r9)
 330:	c5 f8 77             	vzeroupper
 333:	4c 8d 9c 24 10 01 00 	lea    0x110(%rsp),%r11
 33a:	00 
 33b:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 33f:	49 8b 73 38          	mov    0x38(%r11),%rsi
 343:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 347:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 34d:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 353:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 359:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 35f:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 365:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 36b:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 371:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 377:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 37e:	ff ff 
 380:	c5 78 28 7c 24 70    	vmovaps 0x70(%rsp),%xmm15
 386:	49 8b e3             	mov    %r11,%rsp
 389:	41 5f                	pop    %r15
 38b:	41 5e                	pop    %r14
 38d:	41 5d                	pop    %r13
 38f:	41 5c                	pop    %r12
 391:	5d                   	pop    %rbp
 392:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 60 01 00 00 	sub    $0x160,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 63 c2             	movslq %edx,%rax
  6c:	48 89 45 48          	mov    %rax,0x48(%rbp)
  70:	4c 89 4d 68          	mov    %r9,0x68(%rbp)
  74:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
  79:	c5 7c 11 ad 80 00 00 	vmovups %ymm13,0x80(%rbp)
  80:	00 
  81:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
  86:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
  8b:	85 d2                	test   %edx,%edx
  8d:	0f 8e 03 03 00 00    	jle    396 <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x396>
  93:	49 8b 40 08          	mov    0x8(%r8),%rax
  97:	48 83 c1 02          	add    $0x2,%rcx
  9b:	4d 8b 10             	mov    (%r8),%r10
  9e:	4d 8b 58 10          	mov    0x10(%r8),%r11
  a2:	c5 7a 6f 35 00 00 00 	vmovdqu 0x0(%rip),%xmm14        # aa <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xaa>
  a9:	00 
  aa:	c5 7e 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%ymm11        # b2 <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xb2>
  b1:	00 
  b2:	c5 7e 6f 3d 00 00 00 	vmovdqu 0x0(%rip),%ymm15        # ba <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xba>
  b9:	00 
  ba:	49 8d 52 04          	lea    0x4(%r10),%rdx
  be:	48 89 45 30          	mov    %rax,0x30(%rbp)
  c2:	4c 2b d0             	sub    %rax,%r10
  c5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  c9:	4d 8d 43 04          	lea    0x4(%r11),%r8
  cd:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
  d1:	4c 2b d8             	sub    %rax,%r11
  d4:	4c 89 45 40          	mov    %r8,0x40(%rbp)
  d8:	4c 8d 48 04          	lea    0x4(%rax),%r9
  dc:	4c 89 5d 60          	mov    %r11,0x60(%rbp)
  e0:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
  e4:	4c 89 55 58          	mov    %r10,0x58(%rbp)
  e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  ef:	00 
  f0:	c5 7a 6f 2d 00 00 00 	vmovdqu 0x0(%rip),%xmm13        # f8 <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xf8>
  f7:	00 
  f8:	49 8b d8             	mov    %r8,%rbx
  fb:	4c 89 4d 10          	mov    %r9,0x10(%rbp)
  ff:	48 8d 79 48          	lea    0x48(%rcx),%rdi
 103:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
 107:	48 89 7d 00          	mov    %rdi,0x0(%rbp)
 10b:	4d 8b d9             	mov    %r9,%r11
 10e:	c5 c1 ef ff          	vpxor  %xmm7,%xmm7,%xmm7
 112:	c4 41 39 ef c0       	vpxor  %xmm8,%xmm8,%xmm8
 117:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
 11c:	4c 8b d1             	mov    %rcx,%r10
 11f:	48 c7 45 18 04 00 00 	movq   $0x4,0x18(%rbp)
 126:	00 
 127:	48 8b f2             	mov    %rdx,%rsi
 12a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 130:	4c 8b e7             	mov    %rdi,%r12
 133:	4c 8b eb             	mov    %rbx,%r13
 136:	48 8b de             	mov    %rsi,%rbx
 139:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 140 <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x140>
 140:	45 33 ff             	xor    %r15d,%r15d
 143:	41 be 02 00 00 00    	mov    $0x2,%r14d
 149:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 150:	41 0f b6 4c 24 f8    	movzbl -0x8(%r12),%ecx
 156:	48 8d 5b 20          	lea    0x20(%rbx),%rbx

000000000000015a <$LN10>:
 15a:	43 0f b6 44 16 fe    	movzbl -0x2(%r14,%r10,1),%eax
 160:	4d 8d 5b 20          	lea    0x20(%r11),%r11
 164:	44 8b c9             	mov    %ecx,%r9d
 167:	4d 8d 6d 20          	lea    0x20(%r13),%r13
 16b:	44 8b c1             	mov    %ecx,%r8d
 16e:	4d 8d 76 04          	lea    0x4(%r14),%r14
 172:	8b d1                	mov    %ecx,%edx
 174:	4d 8d 64 24 01       	lea    0x1(%r12),%r12
 179:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 17f:	83 e2 30             	and    $0x30,%edx
 182:	c1 e1 02             	shl    $0x2,%ecx
 185:	41 83 e1 03          	and    $0x3,%r9d
 189:	c1 e2 04             	shl    $0x4,%edx
 18c:	41 83 e0 0c          	and    $0xc,%r8d
 190:	41 c1 e1 08          	shl    $0x8,%r9d
 194:	4c 0b c8             	or     %rax,%r9
 197:	41 c1 e0 06          	shl    $0x6,%r8d
 19b:	43 0f b6 44 16 fb    	movzbl -0x5(%r14,%r10,1),%eax
 1a1:	4c 0b c0             	or     %rax,%r8
 1a4:	43 0f b6 44 16 fc    	movzbl -0x4(%r14,%r10,1),%eax
 1aa:	48 0b d0             	or     %rax,%rdx
 1ad:	43 0f b6 44 16 fd    	movzbl -0x3(%r14,%r10,1),%eax
 1b3:	c4 a1 7a 7e 0c cf    	vmovq  (%rdi,%r9,8),%xmm1
 1b9:	48 0b c8             	or     %rax,%rcx
 1bc:	49 8b 42 20          	mov    0x20(%r10),%rax
 1c0:	c4 a3 f1 22 0c c7 01 	vpinsrq $0x1,(%rdi,%r8,8),%xmm1,%xmm1
 1c7:	c5 fa 7e 04 d7       	vmovq  (%rdi,%rdx,8),%xmm0
 1cc:	41 0f b6 54 24 ff    	movzbl -0x1(%r12),%edx
 1d2:	c4 e3 f9 22 04 cf 01 	vpinsrq $0x1,(%rdi,%rcx,8),%xmm0,%xmm0
 1d9:	c4 e3 75 18 f0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm6
 1df:	48 8b c8             	mov    %rax,%rcx
 1e2:	48 c1 e9 20          	shr    $0x20,%rcx
 1e6:	45 85 ff             	test   %r15d,%r15d
 1e9:	48 0f 45 c1          	cmovne %rcx,%rax
 1ed:	41 ff c7             	inc    %r15d
 1f0:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 1f4:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 1f9:	c4 c2 79 00 cd       	vpshufb %xmm13,%xmm0,%xmm1
 1fe:	c4 c2 79 00 c6       	vpshufb %xmm14,%xmm0,%xmm0
 203:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 209:	c4 c1 75 db d3       	vpand  %ymm11,%ymm1,%ymm2
 20e:	c4 c1 6d 74 db       	vpcmpeqb %ymm11,%ymm2,%ymm3
 213:	c4 c1 65 eb ef       	vpor   %ymm15,%ymm3,%ymm5
 218:	0f b6 c2             	movzbl %dl,%eax

000000000000021b <$LN41>:
 21b:	80 e2 0f             	and    $0xf,%dl
 21e:	c0 e8 04             	shr    $0x4,%al
 221:	0f b6 c8             	movzbl %al,%ecx
 224:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 22b:	00 
 22c:	98                   	cwtl
 22d:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 231:	c4 e2 79 79 c9       	vpbroadcastw %xmm1,%xmm1
 236:	0f b6 c2             	movzbl %dl,%eax
 239:	66 03 c0             	add    %ax,%ax
 23c:	66 ff c0             	inc    %ax
 23f:	98                   	cwtl
 240:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 244:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
 249:	c4 e3 7d 38 e1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm4
 24f:	c5 fe 6f 4b e0       	vmovdqu -0x20(%rbx),%ymm1
 254:	c4 e2 75 08 c5       	vpsignb %ymm5,%ymm1,%ymm0
 259:	c4 e2 4d 04 d0       	vpmaddubsw %ymm0,%ymm6,%ymm2
 25e:	c4 c1 7e 6f 43 e0    	vmovdqu -0x20(%r11),%ymm0
 264:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 268:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 26d:	c4 c1 7e 6f 45 e0    	vmovdqu -0x20(%r13),%ymm0
 273:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 278:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 27c:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 280:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 285:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 28a:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 28f:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 293:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 298:	41 83 ff 02          	cmp    $0x2,%r15d
 29c:	0f 8c ae fe ff ff    	jl     150 <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x150>
 2a2:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
 2a6:	49 83 c2 08          	add    $0x8,%r10
 2aa:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
 2ae:	48 83 c7 02          	add    $0x2,%rdi
 2b2:	4c 8b 5d 10          	mov    0x10(%rbp),%r11
 2b6:	48                   	rex.W
 2b7:	83                   	.byte 0x83

00000000000002b8 <$LN99>:
 2b8:	c3                   	ret
 2b9:	40                   	rex
 2ba:	49 83 c3 40          	add    $0x40,%r11
 2be:	48 89 7d 00          	mov    %rdi,0x0(%rbp)
 2c2:	48 83 c6 40          	add    $0x40,%rsi
 2c6:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
 2ca:	48 83 6d 18 01       	subq   $0x1,0x18(%rbp)
 2cf:	4c 89 5d 10          	mov    %r11,0x10(%rbp)
 2d3:	0f 85 57 fe ff ff    	jne    130 <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x130>
 2d9:	48                   	rex.W
 2da:	8b                   	.byte 0x8b

00000000000002db <$LN30>:
 2db:	4d 20 48 8b          	rex.WRB and %r9b,-0x75(%r8)
 2df:	55                   	push   %rbp
 2e0:	58                   	pop    %rax
 2e1:	4c 8b 4d 38          	mov    0x38(%rbp),%r9
 2e5:	4c 8b 45 40          	mov    0x40(%rbp),%r8
 2e9:	49 81 c1 24 01 00 00 	add    $0x124,%r9
 2f0:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 2f4:	49                   	rex.WB
 2f5:	81                   	.byte 0x81

00000000000002f6 <$LN44>:
 2f6:	c0 24 01 00          	shlb   $0x0,(%rcx,%rax,1)
 2fa:	00 c5                	add    %al,%ch
 2fc:	7c 10                	jl     30e <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x30e>
 2fe:	ad                   	lods   (%rsi),%eax
 2ff:	80 00 00             	addb   $0x0,(%rax)
 302:	00 c5                	add    %al,%ch
 304:	f9                   	stc
 305:	6e                   	outsb  (%rsi),(%dx)
 306:	c0 48 8b 45          	rorb   $0x45,-0x75(%rax)
 30a:	30 48 83             	xor    %cl,-0x7d(%rax)
 30d:	c1 52 c4 e2          	rcll   $0xe2,-0x3c(%rdx)
 311:	79 13                	jns    326 <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x326>
 313:	c8 c5 f2 59          	enter  $0xf2c5,$0x59
 317:	1d 00 00 00 00       	sbb    $0x0,%eax
 31c:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 321:	c5 e2 59 04 02       	vmulss (%rdx,%rax,1),%xmm3,%xmm0
 326:	48 8b 55 60          	mov    0x60(%rbp),%rdx
 32a:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 32f:	c5 fc 5b d7          	vcvtdq2ps %ymm7,%ymm2
 333:	c4 62 7d b8 d2       	vfmadd231ps %ymm2,%ymm0,%ymm10
 338:	c5 e2 59 00          	vmulss (%rax),%xmm3,%xmm0
 33c:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 341:	c4 62 7d b8 e1       	vfmadd231ps %ymm1,%ymm0,%ymm12
 346:	c5 e2 59 04 10       	vmulss (%rax,%rdx,1),%xmm3,%xmm0
 34b:	48 8b 55 28          	mov    0x28(%rbp),%rdx
 34f:	48 05 24 01 00 00    	add    $0x124,%rax
 355:	48 81 c2 24 01 00 00 	add    $0x124,%rdx
 35c:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
 360:	48 83 6d 48 01       	subq   $0x1,0x48(%rbp)
 365:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 36a:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 36f:	c4 62 7d b8 e9       	vfmadd231ps %ymm1,%ymm0,%ymm13
 374:	c5 7c 11 ad 80 00 00 	vmovups %ymm13,0x80(%rbp)
 37b:	00 
 37c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
 380:	48 89 45 30          	mov    %rax,0x30(%rbp)
 384:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
 388:	4c 89 45 40          	mov    %r8,0x40(%rbp)
 38c:	0f 85 5e fd ff ff    	jne    f0 <??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xf0>
 392:	4c 8b 4d 68          	mov    0x68(%rbp),%r9
 396:	c4 63 7d 19 d0 01    	vextractf128 $0x1,%ymm10,%xmm0
 39c:	c4 c1 78 58 c2       	vaddps %xmm10,%xmm0,%xmm0
 3a1:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3a5:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 3a9:	c4 c1 7a 11 11       	vmovss %xmm2,(%r9)
 3ae:	c4 63 7d 19 e0 01    	vextractf128 $0x1,%ymm12,%xmm0
 3b4:	c4 c1 78 58 c4       	vaddps %xmm12,%xmm0,%xmm0
 3b9:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3bd:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 3c1:	c4 63 7d 19 e8 01    	vextractf128 $0x1,%ymm13,%xmm0
 3c7:	c4 c1 78 58 c5       	vaddps %xmm13,%xmm0,%xmm0
 3cc:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 3d0:	c4 c1 7a 11 51 04    	vmovss %xmm2,0x4(%r9)
 3d6:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 3da:	c4 c1 7a 11 51 08    	vmovss %xmm2,0x8(%r9)
 3e0:	c5 f8 77             	vzeroupper
 3e3:	4c 8d 9c 24 60 01 00 	lea    0x160(%rsp),%r11
 3ea:	00 
 3eb:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 3ef:	49 8b 73 38          	mov    0x38(%r11),%rsi
 3f3:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 3f7:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 3fd:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 403:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 409:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 40f:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 415:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 41b:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 421:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 427:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 42e:	ff ff 
 430:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 437:	ff ff 
 439:	49 8b e3             	mov    %r11,%rsp
 43c:	41 5f                	pop    %r15
 43e:	41 5e                	pop    %r14
 440:	41 5d                	pop    %r13
 442:	41 5c                	pop    %r12
 444:	5d                   	pop    %rbp
 445:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec c0 01 00 00 	sub    $0x1c0,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 63 c2             	movslq %edx,%rax
  6c:	48 89 45 60          	mov    %rax,0x60(%rbp)
  70:	4c 89 8d 90 00 00 00 	mov    %r9,0x90(%rbp)
  77:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
  7c:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
  81:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
  85:	c5 7c 11 b5 a0 00 00 	vmovups %ymm14,0xa0(%rbp)
  8c:	00 
  8d:	c5 7c 11 bd c0 00 00 	vmovups %ymm15,0xc0(%rbp)
  94:	00 
  95:	c5 fc 11 9d e0 00 00 	vmovups %ymm3,0xe0(%rbp)
  9c:	00 
  9d:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
  a2:	85 d2                	test   %edx,%edx
  a4:	0f 8e aa 03 00 00    	jle    454 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x454>
  aa:	49 8b 40 08          	mov    0x8(%r8),%rax
  ae:	48 83 c1 02          	add    $0x2,%rcx
  b2:	4d 8b 18             	mov    (%r8),%r11
  b5:	49 8b 78 18          	mov    0x18(%r8),%rdi
  b9:	49 8b 58 10          	mov    0x10(%r8),%rbx
  bd:	c5 7e 6f 2d 00 00 00 	vmovdqu 0x0(%rip),%ymm13        # c5 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xc5>
  c4:	00 
  c5:	49 8d 53 04          	lea    0x4(%r11),%rdx
  c9:	48 89 45 40          	mov    %rax,0x40(%rbp)
  cd:	4c 2b d8             	sub    %rax,%r11
  d0:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  d4:	4c 8d 43 04          	lea    0x4(%rbx),%r8
  d8:	48 89 4d 30          	mov    %rcx,0x30(%rbp)
  dc:	48 2b d8             	sub    %rax,%rbx
  df:	4c 89 45 50          	mov    %r8,0x50(%rbp)
  e3:	4c 8d 4f 04          	lea    0x4(%rdi),%r9
  e7:	4c 89 5d 78          	mov    %r11,0x78(%rbp)
  eb:	48 2b f8             	sub    %rax,%rdi
  ee:	4c 89 4d 58          	mov    %r9,0x58(%rbp)
  f2:	4c 8d 50 04          	lea    0x4(%rax),%r10
  f6:	48 89 bd 88 00 00 00 	mov    %rdi,0x88(%rbp)
  fd:	4c 89 55 48          	mov    %r10,0x48(%rbp)
 101:	48 89 9d 80 00 00 00 	mov    %rbx,0x80(%rbp)
 108:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 10f:	00 
 110:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # 118 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x118>
 117:	00 
 118:	c5 7e 6f 3d 00 00 00 	vmovdqu 0x0(%rip),%ymm15        # 120 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x120>
 11f:	00 
 120:	c5 7a 6f 35 00 00 00 	vmovdqu 0x0(%rip),%xmm14        # 128 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x128>
 127:	00 
 128:	49 8b d8             	mov    %r8,%rbx
 12b:	4c 89 55 18          	mov    %r10,0x18(%rbp)
 12f:	48 8d 71 48          	lea    0x48(%rcx),%rsi
 133:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 137:	4d 8b da             	mov    %r10,%r11
 13a:	48 89 75 00          	mov    %rsi,0x0(%rbp)
 13e:	c5 c1 ef ff          	vpxor  %xmm7,%xmm7,%xmm7
 142:	c4 41 39 ef c0       	vpxor  %xmm8,%xmm8,%xmm8
 147:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
 14c:	c4 41 29 ef d2       	vpxor  %xmm10,%xmm10,%xmm10
 151:	49 8b f9             	mov    %r9,%rdi
 154:	4c 89 4d 08          	mov    %r9,0x8(%rbp)
 158:	4c                   	rex.WR
 159:	8b                   	.byte 0x8b

000000000000015a <$LN10>:
 15a:	d1 48 89             	rorl   $1,-0x77(%rax)
 15d:	55                   	push   %rbp
 15e:	20 4c 8b f2          	and    %cl,-0xe(%rbx,%rcx,4)
 162:	48 c7 45 28 04 00 00 	movq   $0x4,0x28(%rbp)
 169:	00 
 16a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 170:	48 89 7d 68          	mov    %rdi,0x68(%rbp)
 174:	4c 8b ee             	mov    %rsi,%r13
 177:	49 8b fb             	mov    %r11,%rdi
 17a:	49 8b f6             	mov    %r14,%rsi
 17d:	4c 8b 5d 68          	mov    0x68(%rbp),%r11
 181:	4c 8d 35 00 00 00 00 	lea    0x0(%rip),%r14        # 188 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x188>
 188:	45 33 e4             	xor    %r12d,%r12d
 18b:	41 bf 02 00 00 00    	mov    $0x2,%r15d
 191:	41 0f b6 4d f8       	movzbl -0x8(%r13),%ecx
 196:	48 8d 76 20          	lea    0x20(%rsi),%rsi
 19a:	43 0f b6 44 3a fe    	movzbl -0x2(%r10,%r15,1),%eax
 1a0:	48 8d 7f 20          	lea    0x20(%rdi),%rdi
 1a4:	44 8b c9             	mov    %ecx,%r9d
 1a7:	48 8d 5b 20          	lea    0x20(%rbx),%rbx
 1ab:	44 8b c1             	mov    %ecx,%r8d
 1ae:	4d 8d 5b 20          	lea    0x20(%r11),%r11
 1b2:	8b d1                	mov    %ecx,%edx
 1b4:	4d 8d 7f 04          	lea    0x4(%r15),%r15
 1b8:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 1be:	4d 8d 6d 01          	lea    0x1(%r13),%r13
 1c2:	83 e2 30             	and    $0x30,%edx
 1c5:	c1 e1 02             	shl    $0x2,%ecx
 1c8:	c1 e2 04             	shl    $0x4,%edx
 1cb:	41 83 e1 03          	and    $0x3,%r9d
 1cf:	41 83 e0 0c          	and    $0xc,%r8d
 1d3:	41 c1 e1 08          	shl    $0x8,%r9d
 1d7:	4c 0b c8             	or     %rax,%r9
 1da:	41 c1 e0 06          	shl    $0x6,%r8d
 1de:	43 0f b6 44 3a fb    	movzbl -0x5(%r10,%r15,1),%eax
 1e4:	4c 0b c0             	or     %rax,%r8
 1e7:	43 0f b6 44 3a fc    	movzbl -0x4(%r10,%r15,1),%eax
 1ed:	48 0b d0             	or     %rax,%rdx
 1f0:	43 0f b6 44 3a fd    	movzbl -0x3(%r10,%r15,1),%eax
 1f6:	c4 81 7a 7e 0c ce    	vmovq  (%r14,%r9,8),%xmm1
 1fc:	48 0b c8             	or     %rax,%rcx
 1ff:	49 8b 42 20          	mov    0x20(%r10),%rax
 203:	c4 83 f1 22 0c c6 01 	vpinsrq $0x1,(%r14,%r8,8),%xmm1,%xmm1
 20a:	c4 c1 7a 7e 04 d6    	vmovq  (%r14,%rdx,8),%xmm0
 210:	41 0f b6 55 ff       	movzbl -0x1(%r13),%edx
 215:	c4                   	.byte 0xc4
 216:	c3                   	ret
 217:	f9                   	stc
 218:	22 04 ce             	and    (%rsi,%rcx,8),%al

000000000000021b <$LN41>:
 21b:	01 c4                	add    %eax,%esp
 21d:	e3 75                	jrcxz  294 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x294>
 21f:	18 f0                	sbb    %dh,%al
 221:	01 48 8b             	add    %ecx,-0x75(%rax)
 224:	c8 48 c1 e9          	enter  $0xc148,$0xe9
 228:	20 45 85             	and    %al,-0x7b(%rbp)
 22b:	e4 48                	in     $0x48,%al
 22d:	0f 45 c1             	cmovne %ecx,%eax
 230:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 234:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 239:	c4 c2 79 00 ce       	vpshufb %xmm14,%xmm0,%xmm1
 23e:	c4 c2 79 00 c4       	vpshufb %xmm12,%xmm0,%xmm0
 243:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 249:	c4 c1 75 db d5       	vpand  %ymm13,%ymm1,%ymm2
 24e:	c4 c1 6d 74 dd       	vpcmpeqb %ymm13,%ymm2,%ymm3
 253:	c4 c1 65 eb ef       	vpor   %ymm15,%ymm3,%ymm5
 258:	0f b6 c2             	movzbl %dl,%eax
 25b:	80 e2 0f             	and    $0xf,%dl
 25e:	c0 e8 04             	shr    $0x4,%al
 261:	0f b6 c8             	movzbl %al,%ecx
 264:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 26b:	00 
 26c:	98                   	cwtl
 26d:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 271:	c4 e2 79 79 c9       	vpbroadcastw %xmm1,%xmm1
 276:	0f b6 c2             	movzbl %dl,%eax
 279:	66 03 c0             	add    %ax,%ax
 27c:	66 ff c0             	inc    %ax
 27f:	98                   	cwtl
 280:	41 ff c4             	inc    %r12d
 283:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 287:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
 28c:	c4 e3 7d 38 e1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm4
 292:	c5 fe 6f 4e e0       	vmovdqu -0x20(%rsi),%ymm1
 297:	c4 e2 75 08 c5       	vpsignb %ymm5,%ymm1,%ymm0
 29c:	c4 e2 4d 04 d0       	vpmaddubsw %ymm0,%ymm6,%ymm2
 2a1:	c5 fe 6f 47 e0       	vmovdqu -0x20(%rdi),%ymm0
 2a6:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2aa:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 2af:	c5 fe 6f 43 e0       	vmovdqu -0x20(%rbx),%ymm0
 2b4:	c4                   	.byte 0xc4
 2b5:	e2 4d                	loop   304 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x304>
 2b7:	04                   	.byte 0x4

00000000000002b8 <$LN99>:
 2b8:	d1 c4                	rol    $1,%esp
 2ba:	e2 7d                	loop   339 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x339>
 2bc:	08 cd                	or     %cl,%ch
 2be:	c4 c1 7e 6f 43 e0    	vmovdqu -0x20(%r11),%ymm0
 2c4:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 2c8:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2cc:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2d1:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 2d6:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2da:	c4                   	.byte 0xc4

00000000000002db <$LN30>:
 2db:	e2 7d                	loop   35a <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x35a>
 2dd:	08 cd                	or     %cl,%ch
 2df:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2e4:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 2e9:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2ed:	c4 41 65 fe d2       	vpaddd %ymm10,%ymm3,%ymm10
 2f2:	41 83 fc 02          	cmp    $0x2,%r12d

00000000000002f6 <$LN44>:
 2f6:	0f 8c 95 fe ff ff    	jl     191 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x191>
 2fc:	48 8b 75 00          	mov    0x0(%rbp),%rsi
 300:	49 83 c2 08          	add    $0x8,%r10
 304:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
 308:	48 83 c6 02          	add    $0x2,%rsi
 30c:	48 8b 5d 10          	mov    0x10(%rbp),%rbx
 310:	48 83 c7 40          	add    $0x40,%rdi
 314:	4c 8b 5d 18          	mov    0x18(%rbp),%r11
 318:	48 83 c3 40          	add    $0x40,%rbx
 31c:	4c 8b 75 20          	mov    0x20(%rbp),%r14
 320:	49 83 c3 40          	add    $0x40,%r11
 324:	49 83 c6 40          	add    $0x40,%r14
 328:	48 89 75 00          	mov    %rsi,0x0(%rbp)
 32c:	48 83 6d 28 01       	subq   $0x1,0x28(%rbp)
 331:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
 335:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 339:	4c 89 5d 18          	mov    %r11,0x18(%rbp)
 33d:	4c 89 75 20          	mov    %r14,0x20(%rbp)
 341:	0f 85 29 fe ff ff    	jne    170 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x170>
 347:	48 8b 4d 30          	mov    0x30(%rbp),%rcx
 34b:	48 8b 55 78          	mov    0x78(%rbp),%rdx
 34f:	c5 7c 10 b5 a0 00 00 	vmovups 0xa0(%rbp),%ymm14
 356:	00 
 357:	c5 7c 10 bd c0 00 00 	vmovups 0xc0(%rbp),%ymm15
 35e:	00 
 35f:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 363:	48 83 c1 52          	add    $0x52,%rcx
 367:	4c 8b 55 48          	mov    0x48(%rbp),%r10
 36b:	4c 8b 45 50          	mov    0x50(%rbp),%r8
 36f:	49 81 c2 24 01 00 00 	add    $0x124,%r10
 376:	4c 8b 4d 58          	mov    0x58(%rbp),%r9
 37a:	49 81 c0 24 01 00 00 	add    $0x124,%r8
 381:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 385:	48 8b 45 40          	mov    0x40(%rbp),%rax
 389:	49 81 c1 24 01 00 00 	add    $0x124,%r9
 390:	c4 e2 79 13 c8       	vcvtph2ps %xmm0,%xmm1
 395:	c5 f2 59 1d 00 00 00 	vmulss 0x0(%rip),%xmm1,%xmm3        # 39d <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x39d>
 39c:	00 
 39d:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 3a2:	c5 e2 59 04 02       	vmulss (%rdx,%rax,1),%xmm3,%xmm0
 3a7:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
 3ae:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 3b3:	c5 fc 5b d7          	vcvtdq2ps %ymm7,%ymm2
 3b7:	c4 62 7d b8 da       	vfmadd231ps %ymm2,%ymm0,%ymm11
 3bc:	c5 e2 59 00          	vmulss (%rax),%xmm3,%xmm0
 3c0:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 3c5:	c4 62 7d b8 f1       	vfmadd231ps %ymm1,%ymm0,%ymm14
 3ca:	c5 e2 59 04 10       	vmulss (%rax,%rdx,1),%xmm3,%xmm0
 3cf:	48 8b 95 88 00 00 00 	mov    0x88(%rbp),%rdx
 3d6:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 3db:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 3e0:	c4 62 7d b8 f9       	vfmadd231ps %ymm1,%ymm0,%ymm15
 3e5:	c5 e2 59 04 10       	vmulss (%rax,%rdx,1),%xmm3,%xmm0
 3ea:	48 8b 55 38          	mov    0x38(%rbp),%rdx
 3ee:	48 05 24 01 00 00    	add    $0x124,%rax
 3f4:	c5 fc 10 9d e0 00 00 	vmovups 0xe0(%rbp),%ymm3
 3fb:	00 
 3fc:	48 81 c2 24 01 00 00 	add    $0x124,%rdx
 403:	48 89 4d 30          	mov    %rcx,0x30(%rbp)
 407:	48 83 6d 60 01       	subq   $0x1,0x60(%rbp)
 40c:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 411:	c4 c1 7c 5b ca       	vcvtdq2ps %ymm10,%ymm1
 416:	c4 e2 7d b8 d9       	vfmadd231ps %ymm1,%ymm0,%ymm3
 41b:	c5 fc 11 9d e0 00 00 	vmovups %ymm3,0xe0(%rbp)
 422:	00 
 423:	c5 7c 11 b5 a0 00 00 	vmovups %ymm14,0xa0(%rbp)
 42a:	00 
 42b:	c5 7c 11 bd c0 00 00 	vmovups %ymm15,0xc0(%rbp)
 432:	00 
 433:	48 89 55 38          	mov    %rdx,0x38(%rbp)
 437:	48 89 45 40          	mov    %rax,0x40(%rbp)
 43b:	4c 89 55 48          	mov    %r10,0x48(%rbp)
 43f:	4c 89 45 50          	mov    %r8,0x50(%rbp)
 443:	4c 89 4d 58          	mov    %r9,0x58(%rbp)
 447:	0f 85 c3 fc ff ff    	jne    110 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x110>
 44d:	4c 8b 8d 90 00 00 00 	mov    0x90(%rbp),%r9
 454:	c4 63 7d 19 d8 01    	vextractf128 $0x1,%ymm11,%xmm0
 45a:	c4 c1 78 58 c3       	vaddps %xmm11,%xmm0,%xmm0
 45f:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 463:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 467:	c4 c1 7a 11 11       	vmovss %xmm2,(%r9)
 46c:	c4 63 7d 19 f0 01    	vextractf128 $0x1,%ymm14,%xmm0
 472:	c4 c1 78 58 c6       	vaddps %xmm14,%xmm0,%xmm0
 477:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1

000000000000047b <$LN111>:
 47b:	c5                   	.byte 0xc5
 47c:	f3                   	repz

000000000000047d <$LN67>:
 47d:	7c d1                	jl     450 <??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x450>
 47f:	c4 c1 7a 11 51 04    	vmovss %xmm2,0x4(%r9)
 485:	c4 63 7d 19 f8 01    	vextractf128 $0x1,%ymm15,%xmm0
 48b:	c4 c1 78 58 c7       	vaddps %xmm15,%xmm0,%xmm0
 490:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 494:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 498:	c4 e3 7d 19 d8 01    	vextractf128 $0x1,%ymm3,%xmm0
 49e:	c5 f8 58 c3          	vaddps %xmm3,%xmm0,%xmm0
 4a2:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 4a6:	c4 c1 7a 11 51 08    	vmovss %xmm2,0x8(%r9)
 4ac:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 4b0:	c4 c1 7a 11 51 0c    	vmovss %xmm2,0xc(%r9)
 4b6:	c5 f8 77             	vzeroupper
 4b9:	4c 8d 9c 24 c0 01 00 	lea    0x1c0(%rsp),%r11
 4c0:	00 
 4c1:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 4c5:	49 8b 73 38          	mov    0x38(%r11),%rsi
 4c9:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 4cd:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 4d3:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 4d9:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 4df:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 4e5:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 4eb:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 4f1:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 4f7:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 4fd:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 504:	ff ff 
 506:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 50d:	ff ff 
 50f:	49 8b e3             	mov    %r11,%rsp
 512:	41 5f                	pop    %r15
 514:	41 5e                	pop    %r14
 516:	41 5d                	pop    %r13
 518:	41 5c                	pop    %r12
 51a:	5d                   	pop    %rbp
 51b:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 83 ec 70          	sub    $0x70,%rsp
  1c:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  21:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  26:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2b:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  30:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  35:	48 8d 68 88          	lea    -0x78(%rax),%rbp
  39:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  3d:	4c 63 e2             	movslq %edx,%r12
  40:	4d 8b e9             	mov    %r9,%r13
  43:	48 8b f9             	mov    %rcx,%rdi
  46:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
  4b:	85 d2                	test   %edx,%edx
  4d:	0f 8e 3d 01 00 00    	jle    190 <??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x190>
  53:	4d 8b 30             	mov    (%r8),%r14
  56:	c5 fa 6f 35 00 00 00 	vmovdqu 0x0(%rip),%xmm6        # 5e <??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x5e>
  5d:	00 
  5e:	c5 7e 6f 05 00 00 00 	vmovdqu 0x0(%rip),%ymm8        # 66 <??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x66>
  65:	00 
  66:	c5 fa 6f 3d 00 00 00 	vmovdqu 0x0(%rip),%xmm7        # 6e <??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x6e>
  6d:	00 
  6e:	4d 8d 7e 04          	lea    0x4(%r14),%r15
  72:	c4 41 29 ef d2       	vpxor  %xmm10,%xmm10,%xmm10
  77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  7e:	00 00 
  80:	0f b7 77 02          	movzwl 0x2(%rdi),%esi
  84:	45 33 c0             	xor    %r8d,%r8d
  87:	4d 8b d7             	mov    %r15,%r10
  8a:	c4 c1 7e 6f ea       	vmovdqu %ymm10,%ymm5
  8f:	90                   	nop
  90:	45 8b c8             	mov    %r8d,%r9d
  93:	47 8d 1c 00          	lea    (%r8,%r8,1),%r11d
  97:	41 c1 e1 05          	shl    $0x5,%r9d
  9b:	bb 02 00 00 00       	mov    $0x2,%ebx
  a0:	49 63 c1             	movslq %r9d,%rax
  a3:	41 0f b6 cb          	movzbl %r11b,%ecx
  a7:	80 e1 01             	and    $0x1,%cl
  aa:	41 83 c1 10          	add    $0x10,%r9d
  ae:	c0 e1 02             	shl    $0x2,%cl
  b1:	c5 fa 6f 54 38 08    	vmovdqu 0x8(%rax,%rdi,1),%xmm2
  b7:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
  bc:	c5 f9 db ce          	vpand  %xmm6,%xmm0,%xmm1
  c0:	c4 e2 41 00 d9       	vpshufb %xmm1,%xmm7,%xmm3
  c5:	c5 e9 db d6          	vpand  %xmm6,%xmm2,%xmm2
  c9:	c4 e2 41 00 c2       	vpshufb %xmm2,%xmm7,%xmm0
  ce:	c4 e3 7d 38 e3 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm4
  d4:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
  d9:	49 63 c3             	movslq %r11d,%rax
  dc:	49 83 c2 20          	add    $0x20,%r10
  e0:	48 d1 f8             	sar    $1,%rax
  e3:	c4 e2 3d 08 cc       	vpsignb %ymm4,%ymm8,%ymm1
  e8:	c4 e2 7d 08 d1       	vpsignb %ymm1,%ymm0,%ymm2
  ed:	c4 e2 5d 08 cc       	vpsignb %ymm4,%ymm4,%ymm1
  f2:	0f b6 44 38 04       	movzbl 0x4(%rax,%rdi,1),%eax
  f7:	d2 e8                	shr    %cl,%al
  f9:	41 0f b6 cb          	movzbl %r11b,%ecx
  fd:	24 0f                	and    $0xf,%al
  ff:	02 c9                	add    %cl,%cl
 101:	0f b6 d0             	movzbl %al,%edx
 104:	41 ff c3             	inc    %r11d
 107:	0f b7 c6             	movzwl %si,%eax
 10a:	66 d3 e8             	shr    %cl,%ax
 10d:	66 83 e0 03          	and    $0x3,%ax
 111:	66 c1 e0 04          	shl    $0x4,%ax
 115:	66 0b c2             	or     %dx,%ax
 118:	66 83 e8 20          	sub    $0x20,%ax
 11c:	98                   	cwtl
 11d:	c5 f9 6e d8          	vmovd  %eax,%xmm3
 121:	c4 e2 7d 79 db       	vpbroadcastw %xmm3,%ymm3
 126:	c4 e2 75 04 d2       	vpmaddubsw %ymm2,%ymm1,%ymm2
 12b:	c5 ed f5 c3          	vpmaddwd %ymm3,%ymm2,%ymm0
 12f:	c5 fd fe ed          	vpaddd %ymm5,%ymm0,%ymm5
 133:	48 83 eb 01          	sub    $0x1,%rbx
 137:	0f 85 63 ff ff ff    	jne    a0 <??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xa0>
 13d:	41 ff c0             	inc    %r8d
 140:	41 83 f8 04          	cmp    $0x4,%r8d
 144:	0f 8c 46 ff ff ff    	jl     90 <??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x90>
 14a:	0f b7 07             	movzwl (%rdi),%eax
 14d:	49 81 c7 24 01 00 00 	add    $0x124,%r15
 154:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 158:	c4                   	.byte 0xc4
 159:	e2                   	.byte 0xe2

000000000000015a <$LN10>:
 15a:	79 13                	jns    16f <??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x16f>
 15c:	c8 c4 c1 72          	enter  $0xc1c4,$0x72
 160:	59                   	pop    %rcx
 161:	16                   	(bad)
 162:	49 81 c6 24 01 00 00 	add    $0x124,%r14
 169:	48 81 c7 88 00 00 00 	add    $0x88,%rdi
 170:	c4 e2 7d 18 d2       	vbroadcastss %xmm2,%ymm2
 175:	c5 fc 5b dd          	vcvtdq2ps %ymm5,%ymm3
 179:	c4 62 6d b8 cb       	vfmadd231ps %ymm3,%ymm2,%ymm9
 17e:	49 83 ec 01          	sub    $0x1,%r12
 182:	0f 85 f8 fe ff ff    	jne    80 <??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x80>
 188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 18f:	00 
 190:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
 196:	c4 c1 78 58 c1       	vaddps %xmm9,%xmm0,%xmm0
 19b:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 19f:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 1a3:	c4 c1 7a 11 55 00    	vmovss %xmm2,0x0(%r13)
 1a9:	c5 f8 77             	vzeroupper
 1ac:	4c 8d 5c 24 70       	lea    0x70(%rsp),%r11
 1b1:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 1b5:	49 8b 73 38          	mov    0x38(%r11),%rsi
 1b9:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 1bd:	c5 f8 28 74 24 60    	vmovaps 0x60(%rsp),%xmm6
 1c3:	c5 f8 28 7c 24 50    	vmovaps 0x50(%rsp),%xmm7
 1c9:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 1cf:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 1d5:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 1db:	49 8b e3             	mov    %r11,%rsp
 1de:	41 5f                	pop    %r15
 1e0:	41 5e                	pop    %r14
 1e2:	41 5d                	pop    %r13
 1e4:	41 5c                	pop    %r12
 1e6:	5d                   	pop    %rbp
 1e7:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BH@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 5c 24 70    	vmovaps %xmm11,0x70(%rsp)
  3e:	c5 78 29 64 24 60    	vmovaps %xmm12,0x60(%rsp)
  44:	c5 78 29 6c 24 50    	vmovaps %xmm13,0x50(%rsp)
  4a:	c5 78 29 74 24 40    	vmovaps %xmm14,0x40(%rsp)
  50:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  55:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  59:	48 63 c2             	movslq %edx,%rax
  5c:	48 8b f1             	mov    %rcx,%rsi
  5f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  63:	4c 89 4d 10          	mov    %r9,0x10(%rbp)
  67:	c4 41 20 57 db       	vxorps %xmm11,%xmm11,%xmm11
  6c:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
  71:	85 d2                	test   %edx,%edx
  73:	0f 8e 90 01 00 00    	jle    209 <??$row_dot@$0BH@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x209>
  79:	49 8b 00             	mov    (%r8),%rax
  7c:	4d 8b 78 08          	mov    0x8(%r8),%r15
  80:	c5 7a 6f 0d 00 00 00 	vmovdqu 0x0(%rip),%xmm9        # 88 <??$row_dot@$0BH@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x88>
  87:	00 
  88:	c5 7e 6f 25 00 00 00 	vmovdqu 0x0(%rip),%ymm12        # 90 <??$row_dot@$0BH@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x90>
  8f:	00 
  90:	c5 7a 6f 15 00 00 00 	vmovdqu 0x0(%rip),%xmm10        # 98 <??$row_dot@$0BH@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x98>
  97:	00 
  98:	4c 8d 60 04          	lea    0x4(%rax),%r12
  9c:	49 2b c7             	sub    %r15,%rax
  9f:	48 89 45 08          	mov    %rax,0x8(%rbp)
  a3:	4d 8d 6f 04          	lea    0x4(%r15),%r13
  a7:	c4 41 09 ef f6       	vpxor  %xmm14,%xmm14,%xmm14
  ac:	0f 1f 40 00          	nopl   0x0(%rax)
  b0:	44 0f b7 76 02       	movzwl 0x2(%rsi),%r14d
  b5:	45 33 c0             	xor    %r8d,%r8d
  b8:	4d 8b d5             	mov    %r13,%r10
  bb:	4d 8b dc             	mov    %r12,%r11
  be:	c4 c1 7e 6f fe       	vmovdqu %ymm14,%ymm7
  c3:	c4 41 7e 6f c6       	vmovdqu %ymm14,%ymm8
  c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  cf:	00 
  d0:	45 8b c8             	mov    %r8d,%r9d
  d3:	43 8d 1c 00          	lea    (%r8,%r8,1),%ebx
  d7:	41 c1 e1 05          	shl    $0x5,%r9d
  db:	bf 02 00 00 00       	mov    $0x2,%edi
  e0:	49 63 c1             	movslq %r9d,%rax
  e3:	0f b6 cb             	movzbl %bl,%ecx
  e6:	80 e1 01             	and    $0x1,%cl
  e9:	41 83 c1 10          	add    $0x10,%r9d
  ed:	c0 e1 02             	shl    $0x2,%cl
  f0:	c5 fa 6f 54 30 08    	vmovdqu 0x8(%rax,%rsi,1),%xmm2
  f6:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
  fb:	c4 c1 79 db c9       	vpand  %xmm9,%xmm0,%xmm1
 100:	c4 e2 29 00 d9       	vpshufb %xmm1,%xmm10,%xmm3
 105:	c4 c1 69 db d1       	vpand  %xmm9,%xmm2,%xmm2
 10a:	c4 e2 29 00 c2       	vpshufb %xmm2,%xmm10,%xmm0
 10f:	c4 e3 7d 38 cb 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm1
 115:	c4 c1 7e 6f 03       	vmovdqu (%r11),%ymm0
 11a:	c4 e2 75 08 f1       	vpsignb %ymm1,%ymm1,%ymm6
 11f:	48 63 c3             	movslq %ebx,%rax
 122:	49 83 c3 20          	add    $0x20,%r11
 126:	48 d1 f8             	sar    $1,%rax
 129:	c4 e2 1d 08 e9       	vpsignb %ymm1,%ymm12,%ymm5
 12e:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 133:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 138:	0f b6 44 30 04       	movzbl 0x4(%rax,%rsi,1),%eax
 13d:	49 83 c2 20          	add    $0x20,%r10
 141:	d2 e8                	shr    %cl,%al
 143:	0f b6 cb             	movzbl %bl,%ecx
 146:	24 0f                	and    $0xf,%al
 148:	02 c9                	add    %cl,%cl
 14a:	0f b6 d0             	movzbl %al,%edx
 14d:	ff c3                	inc    %ebx
 14f:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 154:	41 0f b7 c6          	movzwl %r14w,%eax
 158:	66                   	data16
 159:	d3                   	.byte 0xd3

000000000000015a <$LN10>:
 15a:	e8 66 83 e0 03       	call   3e084c5 <@comp.id+0x2dafb2d>
 15f:	66 c1 e0 04          	shl    $0x4,%ax
 163:	66 0b c2             	or     %dx,%ax
 166:	66 83 e8 20          	sub    $0x20,%ax
 16a:	98                   	cwtl
 16b:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 16f:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 174:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 178:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 17d:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 182:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 186:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 18a:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 18f:	48 83 ef 01          	sub    $0x1,%rdi
 193:	0f 85 47 ff ff ff    	jne    e0 <??$row_dot@$0BH@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xe0>
 199:	41 ff c0             	inc    %r8d
 19c:	41 83 f8 04          	cmp    $0x4,%r8d
 1a0:	0f 8c 2a ff ff ff    	jl     d0 <??$row_dot@$0BH@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xd0>
 1a6:	0f b7 06             	movzwl (%rsi),%eax
 1a9:	49 81 c4 24 01 00 00 	add    $0x124,%r12
 1b0:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 1b4:	48 8b 45 08          	mov    0x8(%rbp),%rax
 1b8:	48 81 c6 88 00 00 00 	add    $0x88,%rsi
 1bf:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 1c4:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 1c8:	49 81 c5 24 01 00 00 	add    $0x124,%r13
 1cf:	c4 c1 6a 59 04 07    	vmulss (%r15,%rax,1),%xmm2,%xmm0
 1d5:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 1da:	c4 62 7d b8 d9       	vfmadd231ps %ymm1,%ymm0,%ymm11
 1df:	c4 c1 6a 59 07       	vmulss (%r15),%xmm2,%xmm0
 1e4:	49 81 c7 24 01 00 00 	add    $0x124,%r15
 1eb:	48 83 6d 00 01       	subq   $0x1,0x0(%rbp)
 1f0:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 1f5:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 1fa:	c4 62 7d b8 e9       	vfmadd231ps %ymm1,%ymm0,%ymm13
 1ff:	0f 85 ab fe ff ff    	jne    b0 <??$row_dot@$0BH@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xb0>
 205:	4c 8b 4d 10          	mov    0x10(%rbp),%r9
 209:	c4 63 7d 19 d8 01    	vextractf128 $0x1,%ymm11,%xmm0
 20f:	c4 c1 78 58 c3       	vaddps %xmm11,%xmm0,%xmm0
 214:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 218:	c5                   	.byte 0xc5
 219:	f3                   	repz
 21a:	7c                   	.byte 0x7c

000000000000021b <$LN41>:
 21b:	d1 c4                	rol    $1,%esp
 21d:	63 7d 19             	movsxd 0x19(%rbp),%edi
 220:	e8 01 c4 c1 78       	call   78c1c626 <@comp.id+0x77bc3c8e>
 225:	58                   	pop    %rax
 226:	c5 c5 fb 7c c8 c4    	vpsubq -0x3c(%rax,%rcx,8),%ymm7,%ymm7
 22c:	c1 7a 11 11          	sarl   $0x11,0x11(%rdx)
 230:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 234:	c4 c1 7a 11 51 04    	vmovss %xmm2,0x4(%r9)
 23a:	c5 f8 77             	vzeroupper
 23d:	4c 8d 9c 24 d0 00 00 	lea    0xd0(%rsp),%r11
 244:	00 
 245:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 249:	49 8b 73 38          	mov    0x38(%r11),%rsi
 24d:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 251:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 257:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 25d:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 263:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 269:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 26f:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 275:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 27b:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 281:	c5 78 28 74 24 40    	vmovaps 0x40(%rsp),%xmm14
 287:	49 8b e3             	mov    %r11,%rsp
 28a:	41 5f                	pop    %r15
 28c:	41 5e                	pop    %r14
 28e:	41 5d                	pop    %r13
 290:	41 5c                	pop    %r12
 292:	5d                   	pop    %rbp
 293:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 6c 24 70    	vmovaps %xmm13,0x70(%rsp)
  4e:	c5 78 29 74 24 60    	vmovaps %xmm14,0x60(%rsp)
  54:	c5 78 29 7c 24 50    	vmovaps %xmm15,0x50(%rsp)
  5a:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  5f:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  63:	48 63 c2             	movslq %edx,%rax
  66:	4c 8b f1             	mov    %rcx,%r14
  69:	48 89 45 10          	mov    %rax,0x10(%rbp)
  6d:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
  71:	c4 41 18 57 e4       	vxorps %xmm12,%xmm12,%xmm12
  76:	c4 41 08 57 f6       	vxorps %xmm14,%xmm14,%xmm14
  7b:	c4 41 00 57 ff       	vxorps %xmm15,%xmm15,%xmm15
  80:	85 d2                	test   %edx,%edx
  82:	0f 8e f1 01 00 00    	jle    279 <??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x279>
  88:	49 8b 10             	mov    (%r8),%rdx
  8b:	4d 8b 68 08          	mov    0x8(%r8),%r13
  8f:	4d 8b 40 10          	mov    0x10(%r8),%r8
  93:	c5 7a 6f 15 00 00 00 	vmovdqu 0x0(%rip),%xmm10        # 9b <??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x9b>
  9a:	00 
  9b:	c5 7e 6f 2d 00 00 00 	vmovdqu 0x0(%rip),%ymm13        # a3 <??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xa3>
  a2:	00 
  a3:	c5 7a 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%xmm11        # ab <??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xab>
  aa:	00 
  ab:	49 8d 40 04          	lea    0x4(%r8),%rax
  af:	4c 8d 62 04          	lea    0x4(%rdx),%r12
  b3:	48 89 45 08          	mov    %rax,0x8(%rbp)
  b7:	49 2b d5             	sub    %r13,%rdx
  ba:	49 8d 4d 04          	lea    0x4(%r13),%rcx
  be:	4d 2b c5             	sub    %r13,%r8
  c1:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
  c5:	4c 89 45 20          	mov    %r8,0x20(%rbp)
  c9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  cd:	0f 1f 00             	nopl   (%rax)
  d0:	45 0f b7 7e 02       	movzwl 0x2(%r14),%r15d
  d5:	45 33 c0             	xor    %r8d,%r8d
  d8:	4c 8b d1             	mov    %rcx,%r10
  db:	4c 8b d8             	mov    %rax,%r11
  de:	49 8b dc             	mov    %r12,%rbx
  e1:	c5 c1 ef ff          	vpxor  %xmm7,%xmm7,%xmm7
  e5:	c4 41 39 ef c0       	vpxor  %xmm8,%xmm8,%xmm8
  ea:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
  ef:	90                   	nop
  f0:	45 8b c8             	mov    %r8d,%r9d
  f3:	43 8d 3c 00          	lea    (%r8,%r8,1),%edi
  f7:	41 c1 e1 05          	shl    $0x5,%r9d
  fb:	be 02 00 00 00       	mov    $0x2,%esi
 100:	49 63 c1             	movslq %r9d,%rax
 103:	40 0f b6 cf          	movzbl %dil,%ecx
 107:	80 e1 01             	and    $0x1,%cl
 10a:	41 83 c1 10          	add    $0x10,%r9d
 10e:	c0 e1 02             	shl    $0x2,%cl
 111:	c4 a1 7a 6f 54 30 08 	vmovdqu 0x8(%rax,%r14,1),%xmm2
 118:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 11d:	c4 c1 79 db ca       	vpand  %xmm10,%xmm0,%xmm1
 122:	c4 e2 21 00 d9       	vpshufb %xmm1,%xmm11,%xmm3
 127:	c4 c1 69 db d2       	vpand  %xmm10,%xmm2,%xmm2
 12c:	c4 e2 21 00 c2       	vpshufb %xmm2,%xmm11,%xmm0
 131:	c4 e3 7d 38 cb 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm1
 137:	c5 fe 6f 03          	vmovdqu (%rbx),%ymm0
 13b:	c4 e2 75 08 f1       	vpsignb %ymm1,%ymm1,%ymm6
 140:	c4 e2 15 08 e9       	vpsignb %ymm1,%ymm13,%ymm5
 145:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 14a:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 14f:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 154:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 159:	c4                   	.byte 0xc4

000000000000015a <$LN10>:
 15a:	c1 7e 6f 03          	sarl   $0x3,0x6f(%rsi)
 15e:	48 63 c7             	movslq %edi,%rax
 161:	48 83 c3 20          	add    $0x20,%rbx
 165:	48 d1 f8             	sar    $1,%rax
 168:	49 83 c2 20          	add    $0x20,%r10
 16c:	49 83 c3 20          	add    $0x20,%r11
 170:	42 0f b6 44 30 04    	movzbl 0x4(%rax,%r14,1),%eax
 176:	d2 e8                	shr    %cl,%al
 178:	40 0f b6 cf          	movzbl %dil,%ecx
 17c:	24 0f                	and    $0xf,%al
 17e:	02 c9                	add    %cl,%cl
 180:	0f b6 d0             	movzbl %al,%edx
 183:	ff c7                	inc    %edi
 185:	41 0f b7 c7          	movzwl %r15w,%eax
 189:	66 d3 e8             	shr    %cl,%ax
 18c:	66 83 e0 03          	and    $0x3,%ax
 190:	66 c1 e0 04          	shl    $0x4,%ax
 194:	66 0b c2             	or     %dx,%ax
 197:	66 83 e8 20          	sub    $0x20,%ax
 19b:	98                   	cwtl
 19c:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 1a0:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 1a5:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 1a9:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 1ae:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 1b2:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 1b6:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 1bb:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 1c0:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 1c5:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 1c9:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 1ce:	48 83 ee 01          	sub    $0x1,%rsi
 1d2:	0f 85 28 ff ff ff    	jne    100 <??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x100>
 1d8:	41 ff c0             	inc    %r8d
 1db:	41 83 f8 04          	cmp    $0x4,%r8d
 1df:	0f 8c 0b ff ff ff    	jl     f0 <??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xf0>
 1e5:	41 0f b7 06          	movzwl (%r14),%eax
 1e9:	49 81 c4 24 01 00 00 	add    $0x124,%r12
 1f0:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
 1f4:	49 81 c6 88 00 00 00 	add    $0x88,%r14
 1fb:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 1ff:	48 8b 45 18          	mov    0x18(%rbp),%rax
 203:	48 81 c1 24 01 00 00 	add    $0x124,%rcx
 20a:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 20f:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 213:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
 217:	c4                   	.byte 0xc4
 218:	a1                   	.byte 0xa1
 219:	6a 59                	push   $0x59

000000000000021b <$LN41>:
 21b:	04 28                	add    $0x28,%al
 21d:	48 8b 45 20          	mov    0x20(%rbp),%rax
 221:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 226:	c4 62 7d b8 e1       	vfmadd231ps %ymm1,%ymm0,%ymm12
 22b:	c4 c1 6a 59 45 00    	vmulss 0x0(%r13),%xmm2,%xmm0
 231:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 236:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 23b:	c4 62 7d b8 f1       	vfmadd231ps %ymm1,%ymm0,%ymm14
 240:	c4 a1 6a 59 04 28    	vmulss (%rax,%r13,1),%xmm2,%xmm0
 246:	48 8b 45 08          	mov    0x8(%rbp),%rax
 24a:	49 81 c5 24 01 00 00 	add    $0x124,%r13
 251:	48 05 24 01 00 00    	add    $0x124,%rax
 257:	48 83 6d 10 01       	subq   $0x1,0x10(%rbp)
 25c:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 261:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 266:	c4 62 7d b8 f9       	vfmadd231ps %ymm1,%ymm0,%ymm15
 26b:	48 89 45 08          	mov    %rax,0x8(%rbp)
 26f:	0f 85 5b fe ff ff    	jne    d0 <??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xd0>
 275:	4c 8b 4d 28          	mov    0x28(%rbp),%r9
 279:	c4 63 7d 19 e0 01    	vextractf128 $0x1,%ymm12,%xmm0
 27f:	c4 c1 78 58 c4       	vaddps %xmm12,%xmm0,%xmm0
 284:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 288:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 28c:	c4 c1 7a 11 11       	vmovss %xmm2,(%r9)
 291:	c4 63 7d 19 f0 01    	vextractf128 $0x1,%ymm14,%xmm0
 297:	c4 c1 78 58 c6       	vaddps %xmm14,%xmm0,%xmm0
 29c:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 2a0:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 2a4:	c4 63 7d 19 f8 01    	vextractf128 $0x1,%ymm15,%xmm0
 2aa:	c4 c1 78 58 c7       	vaddps %xmm15,%xmm0,%xmm0
 2af:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 2b3:	c4                   	.byte 0xc4
 2b4:	c1 7a 11 51          	sarl   $0x51,0x11(%rdx)

00000000000002b8 <$LN99>:
 2b8:	04 c5                	add    $0xc5,%al
 2ba:	f3 7c d1             	repz jl 28e <??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x28e>
 2bd:	c4 c1 7a 11 51 08    	vmovss %xmm2,0x8(%r9)
 2c3:	c5 f8 77             	vzeroupper
 2c6:	4c 8d 9c 24 f0 00 00 	lea    0xf0(%rsp),%r11
 2cd:	00 
 2ce:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 2d2:	49 8b 73 38          	mov    0x38(%r11),%rsi
 2d6:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 2da:	c4                   	.byte 0xc4

00000000000002db <$LN30>:
 2db:	c1 78 28 73          	sarl   $0x73,0x28(%rax)
 2df:	f0 c4 c1 78 28 7b e0 	lock vmovaps -0x20(%r11),%xmm7
 2e6:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 2ec:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 2f2:	c4                   	.byte 0xc4
 2f3:	41 78 28             	rex.B js 31e <??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x31e>

00000000000002f6 <$LN44>:
 2f6:	53                   	push   %rbx
 2f7:	b0 c4                	mov    $0xc4,%al
 2f9:	41 78 28             	rex.B js 324 <$LN44+0x2e>
 2fc:	5b                   	pop    %rbx
 2fd:	a0 c4 41 78 28 63 90 	movabs 0x41c49063287841c4,%al
 304:	c4 41 
 306:	78 28                	js     330 <$LN44+0x3a>
 308:	6b 80 c5 78 28 74 24 	imul   $0x24,0x742878c5(%rax),%eax
 30f:	60                   	(bad)
 310:	c5 78 28 7c 24 50    	vmovaps 0x50(%rsp),%xmm15
 316:	49 8b e3             	mov    %r11,%rsp
 319:	41 5f                	pop    %r15
 31b:	41 5e                	pop    %r14
 31d:	41 5d                	pop    %r13
 31f:	41 5c                	pop    %r12
 321:	5d                   	pop    %rbp
 322:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	48 89 70 10          	mov    %rsi,0x10(%rax)
   b:	48 89 78 18          	mov    %rdi,0x18(%rax)
   f:	55                   	push   %rbp
  10:	41 54                	push   %r12
  12:	41 55                	push   %r13
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	48 81 ec 80 01 00 00 	sub    $0x180,%rsp
  1f:	c5 f8 29 70 c8       	vmovaps %xmm6,-0x38(%rax)
  24:	c5 f8 29 78 b8       	vmovaps %xmm7,-0x48(%rax)
  29:	c5 78 29 40 a8       	vmovaps %xmm8,-0x58(%rax)
  2e:	c5 78 29 48 98       	vmovaps %xmm9,-0x68(%rax)
  33:	c5 78 29 50 88       	vmovaps %xmm10,-0x78(%rax)
  38:	c5 78 29 98 78 ff ff 	vmovaps %xmm11,-0x88(%rax)
  3f:	ff 
  40:	c5 78 29 a0 68 ff ff 	vmovaps %xmm12,-0x98(%rax)
  47:	ff 
  48:	c5 78 29 a8 58 ff ff 	vmovaps %xmm13,-0xa8(%rax)
  4f:	ff 
  50:	c5 78 29 b0 48 ff ff 	vmovaps %xmm14,-0xb8(%rax)
  57:	ff 
  58:	c5 78 29 b8 38 ff ff 	vmovaps %xmm15,-0xc8(%rax)
  5f:	ff 
  60:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  65:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  69:	48 63 c2             	movslq %edx,%rax
  6c:	4c 8b f9             	mov    %rcx,%r15
  6f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  73:	4c 89 4d 40          	mov    %r9,0x40(%rbp)
  77:	c5 e0 57 db          	vxorps %xmm3,%xmm3,%xmm3
  7b:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
  7f:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
  83:	c5 fc 11 5d 60       	vmovups %ymm3,0x60(%rbp)
  88:	c5 fc 11 a5 80 00 00 	vmovups %ymm4,0x80(%rbp)
  8f:	00 
  90:	c5 fc 11 ad a0 00 00 	vmovups %ymm5,0xa0(%rbp)
  97:	00 
  98:	c4 41 10 57 ed       	vxorps %xmm13,%xmm13,%xmm13
  9d:	85 d2                	test   %edx,%edx
  9f:	0f 8e 9a 02 00 00    	jle    33f <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x33f>
  a5:	4d 8b 68 08          	mov    0x8(%r8),%r13
  a9:	4d 8b 10             	mov    (%r8),%r10
  ac:	4d 8b 58 18          	mov    0x18(%r8),%r11
  b0:	4d 8b 40 10          	mov    0x10(%r8),%r8
  b4:	c5 7a 6f 1d 00 00 00 	vmovdqu 0x0(%rip),%xmm11        # bc <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xbc>
  bb:	00 
  bc:	c5 7e 6f 3d 00 00 00 	vmovdqu 0x0(%rip),%ymm15        # c4 <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xc4>
  c3:	00 
  c4:	c5 7a 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm12        # cc <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xcc>
  cb:	00 
  cc:	49 8d 50 04          	lea    0x4(%r8),%rdx
  d0:	4d 2b c5             	sub    %r13,%r8
  d3:	49 8d 42 04          	lea    0x4(%r10),%rax
  d7:	48 89 55 10          	mov    %rdx,0x10(%rbp)
  db:	4d 2b d5             	sub    %r13,%r10
  de:	48 89 45 00          	mov    %rax,0x0(%rbp)
  e2:	49 8d 4b 04          	lea    0x4(%r11),%rcx
  e6:	4c 89 55 28          	mov    %r10,0x28(%rbp)
  ea:	4d 2b dd             	sub    %r13,%r11
  ed:	48 89 4d 18          	mov    %rcx,0x18(%rbp)
  f1:	4d 8d 4d 04          	lea    0x4(%r13),%r9
  f5:	4c 89 5d 38          	mov    %r11,0x38(%rbp)
  f9:	c4 41 09 ef f6       	vpxor  %xmm14,%xmm14,%xmm14
  fe:	4c 89 4d 08          	mov    %r9,0x8(%rbp)
 102:	4c 89 45 30          	mov    %r8,0x30(%rbp)
 106:	66 66 0f 1f 84 00 00 	data16 nopw 0x0(%rax,%rax,1)
 10d:	00 00 00 
 110:	45 0f b7 67 02       	movzwl 0x2(%r15),%r12d
 115:	45 33 c0             	xor    %r8d,%r8d
 118:	4d 8b d1             	mov    %r9,%r10
 11b:	4c 8b da             	mov    %rdx,%r11
 11e:	48 8b d9             	mov    %rcx,%rbx
 121:	48 8b f8             	mov    %rax,%rdi
 124:	c4 c1 7e 6f fe       	vmovdqu %ymm14,%ymm7
 129:	c4 41 7e 6f c6       	vmovdqu %ymm14,%ymm8
 12e:	c4 41 7e 6f ce       	vmovdqu %ymm14,%ymm9
 133:	c4 41 7e 6f d6       	vmovdqu %ymm14,%ymm10
 138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 13f:	00 
 140:	45 8b c8             	mov    %r8d,%r9d
 143:	43 8d 34 00          	lea    (%r8,%r8,1),%esi
 147:	41 c1 e1 05          	shl    $0x5,%r9d
 14b:	41 be 02 00 00 00    	mov    $0x2,%r14d
 151:	49 63 c1             	movslq %r9d,%rax
 154:	40 0f b6 ce          	movzbl %sil,%ecx
 158:	80                   	.byte 0x80
 159:	e1                   	.byte 0xe1

000000000000015a <$LN10>:
 15a:	01 41 83             	add    %eax,-0x7d(%rcx)
 15d:	c1 10 c0             	rcll   $0xc0,(%rax)
 160:	e1 02                	loope  164 <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x164>
 162:	c4 a1 7a 6f 54 38 08 	vmovdqu 0x8(%rax,%r15,1),%xmm2
 169:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 16e:	c4 c1 79 db cb       	vpand  %xmm11,%xmm0,%xmm1
 173:	c4 e2 19 00 d9       	vpshufb %xmm1,%xmm12,%xmm3
 178:	c4 c1 69 db d3       	vpand  %xmm11,%xmm2,%xmm2
 17d:	c4 e2 19 00 c2       	vpshufb %xmm2,%xmm12,%xmm0
 182:	c4 e3 7d 38 cb 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm1
 188:	c5 fe 6f 07          	vmovdqu (%rdi),%ymm0
 18c:	c4 e2 75 08 f1       	vpsignb %ymm1,%ymm1,%ymm6
 191:	c4 e2 05 08 e9       	vpsignb %ymm1,%ymm15,%ymm5
 196:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 19b:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 1a0:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 1a5:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 1aa:	c4 c1 7e 6f 03       	vmovdqu (%r11),%ymm0
 1af:	48 63 c6             	movslq %esi,%rax
 1b2:	48 83 c7 20          	add    $0x20,%rdi
 1b6:	48 d1 f8             	sar    $1,%rax
 1b9:	49 83 c2 20          	add    $0x20,%r10
 1bd:	49 83 c3 20          	add    $0x20,%r11
 1c1:	42 0f b6 44 38 04    	movzbl 0x4(%rax,%r15,1),%eax
 1c7:	d2 e8                	shr    %cl,%al
 1c9:	40 0f b6 ce          	movzbl %sil,%ecx
 1cd:	24 0f                	and    $0xf,%al
 1cf:	02 c9                	add    %cl,%cl
 1d1:	0f b6 d0             	movzbl %al,%edx
 1d4:	ff c6                	inc    %esi
 1d6:	41 0f b7 c4          	movzwl %r12w,%eax
 1da:	66 d3 e8             	shr    %cl,%ax
 1dd:	66 83 e0 03          	and    $0x3,%ax
 1e1:	66 c1 e0 04          	shl    $0x4,%ax
 1e5:	66 0b c2             	or     %dx,%ax
 1e8:	66 83 e8 20          	sub    $0x20,%ax
 1ec:	98                   	cwtl
 1ed:	c5 f9 6e e0          	vmovd  %eax,%xmm4
 1f1:	c4 e2 7d 79 e4       	vpbroadcastw %xmm4,%ymm4
 1f6:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 1fa:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 1ff:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 203:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 207:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 20c:	c5 fe 6f 03          	vmovdqu (%rbx),%ymm0
 210:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 215:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 21a:	c5                   	.byte 0xc5

000000000000021b <$LN41>:
 21b:	ed                   	in     (%dx),%eax
 21c:	f5                   	cmc
 21d:	dc c4                	fadd   %st,%st(4)
 21f:	e2 7d                	loop   29e <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x29e>
 221:	08 cd                	or     %cl,%ch
 223:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 228:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 22d:	48 83 c3 20          	add    $0x20,%rbx
 231:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 235:	c4 41 65 fe d2       	vpaddd %ymm10,%ymm3,%ymm10
 23a:	49 83 ee 01          	sub    $0x1,%r14
 23e:	0f 85 0d ff ff ff    	jne    151 <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x151>
 244:	41 ff c0             	inc    %r8d
 247:	41 83 f8 04          	cmp    $0x4,%r8d
 24b:	0f 8c ef fe ff ff    	jl     140 <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x140>
 251:	41 0f b7 07          	movzwl (%r15),%eax
 255:	49 81 c7 88 00 00 00 	add    $0x88,%r15
 25c:	c5 fc 10 5d 60       	vmovups 0x60(%rbp),%ymm3
 261:	c5 fc 10 a5 80 00 00 	vmovups 0x80(%rbp),%ymm4
 268:	00 
 269:	4c 8b 4d 08          	mov    0x8(%rbp),%r9
 26d:	48 8b 55 10          	mov    0x10(%rbp),%rdx
 271:	49 81 c1 24 01 00 00 	add    $0x124,%r9
 278:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
 27c:	48 81 c2 24 01 00 00 	add    $0x124,%rdx
 283:	c5 fc 10 ad a0 00 00 	vmovups 0xa0(%rbp),%ymm5
 28a:	00 
 28b:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 28f:	48 8b 45 28          	mov    0x28(%rbp),%rax
 293:	48 81 c1 24 01 00 00 	add    $0x124,%rcx
 29a:	c4 e2 79 13 d0       	vcvtph2ps %xmm0,%xmm2
 29f:	c5 fc 5b cf          	vcvtdq2ps %ymm7,%ymm1
 2a3:	4c 89 4d 08          	mov    %r9,0x8(%rbp)
 2a7:	c4 a1 6a 59 04 28    	vmulss (%rax,%r13,1),%xmm2,%xmm0
 2ad:	48 8b 45 30          	mov    0x30(%rbp),%rax
 2b1:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2b6:	c4                   	.byte 0xc4
 2b7:	62                   	.byte 0x62

00000000000002b8 <$LN99>:
 2b8:	7d b8                	jge    272 <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x272>
 2ba:	e9 c4 c1 6a 59       	jmp    596ac483 <@comp.id+0x58653aeb>
 2bf:	45 00 c4             	add    %r8b,%r12b
 2c2:	e2 7d                	loop   341 <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x341>
 2c4:	18 c0                	sbb    %al,%al
 2c6:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 2cb:	c4 e2 7d b8 d9       	vfmadd231ps %ymm1,%ymm0,%ymm3
 2d0:	c4 a1 6a 59 04 28    	vmulss (%rax,%r13,1),%xmm2,%xmm0
 2d6:	48 8b 45 38          	mov    0x38(%rbp),%rax
 2da:	c4                   	.byte 0xc4

00000000000002db <$LN30>:
 2db:	e2 7d                	loop   35a <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x35a>
 2dd:	18 c0                	sbb    %al,%al
 2df:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 2e4:	c4 e2 7d b8 e1       	vfmadd231ps %ymm1,%ymm0,%ymm4
 2e9:	c4 a1 6a 59 04 28    	vmulss (%rax,%r13,1),%xmm2,%xmm0
 2ef:	48 8b 45 00          	mov    0x0(%rbp),%rax
 2f3:	49                   	rex.WB
 2f4:	81                   	.byte 0x81
 2f5:	c5                   	.byte 0xc5

00000000000002f6 <$LN44>:
 2f6:	24 01                	and    $0x1,%al
 2f8:	00 00                	add    %al,(%rax)
 2fa:	48 05 24 01 00 00    	add    $0x124,%rax
 300:	48 89 55 10          	mov    %rdx,0x10(%rbp)
 304:	48 83 6d 20 01       	subq   $0x1,0x20(%rbp)
 309:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 30e:	c4 c1 7c 5b ca       	vcvtdq2ps %ymm10,%ymm1
 313:	c4 e2 7d b8 e9       	vfmadd231ps %ymm1,%ymm0,%ymm5
 318:	c5 fc 11 ad a0 00 00 	vmovups %ymm5,0xa0(%rbp)
 31f:	00 
 320:	c5 fc 11 5d 60       	vmovups %ymm3,0x60(%rbp)
 325:	c5 fc 11 a5 80 00 00 	vmovups %ymm4,0x80(%rbp)
 32c:	00 
 32d:	48 89 45 00          	mov    %rax,0x0(%rbp)
 331:	48 89 4d 18          	mov    %rcx,0x18(%rbp)
 335:	0f 85 d5 fd ff ff    	jne    110 <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x110>
 33b:	4c 8b 4d 40          	mov    0x40(%rbp),%r9
 33f:	c4 63 7d 19 e8 01    	vextractf128 $0x1,%ymm13,%xmm0
 345:	c4 c1 78 58 c5       	vaddps %xmm13,%xmm0,%xmm0
 34a:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 34e:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 352:	c4 c1 7a 11 11       	vmovss %xmm2,(%r9)
 357:	c4 e3 7d 19 d8 01    	vextractf128 $0x1,%ymm3,%xmm0
 35d:	c5 f8 58 c3          	vaddps %xmm3,%xmm0,%xmm0
 361:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 365:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 369:	c4 c1 7a 11 51 04    	vmovss %xmm2,0x4(%r9)
 36f:	c4 e3 7d 19 e0 01    	vextractf128 $0x1,%ymm4,%xmm0
 375:	c5 f8 58 c4          	vaddps %xmm4,%xmm0,%xmm0
 379:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 37d:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 381:	c4 e3 7d 19 e8 01    	vextractf128 $0x1,%ymm5,%xmm0
 387:	c5 f8 58 c5          	vaddps %xmm5,%xmm0,%xmm0
 38b:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 38f:	c4 c1 7a 11 51 08    	vmovss %xmm2,0x8(%r9)
 395:	c5 f3 7c d1          	vhaddps %xmm1,%xmm1,%xmm2
 399:	c4 c1 7a 11 51 0c    	vmovss %xmm2,0xc(%r9)
 39f:	c5 f8 77             	vzeroupper
 3a2:	4c 8d 9c 24 80 01 00 	lea    0x180(%rsp),%r11
 3a9:	00 
 3aa:	49 8b 5b 30          	mov    0x30(%r11),%rbx
 3ae:	49 8b 73 38          	mov    0x38(%r11),%rsi
 3b2:	49 8b 7b 40          	mov    0x40(%r11),%rdi
 3b6:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 3bc:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 3c2:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 3c8:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 3ce:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 3d4:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 3da:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 3e0:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 3e6:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 3ed:	ff ff 
 3ef:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 3f6:	ff ff 
 3f8:	49 8b e3             	mov    %r11,%rsp
 3fb:	41 5f                	pop    %r15
 3fd:	41 5e                	pop    %r14
 3ff:	41 5d                	pop    %r13
 401:	41 5c                	pop    %r12
 403:	5d                   	pop    %rbp
 404:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?decode@?$Fmt32@$0BF@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z>:
   0:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   5:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
   a:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   f:	44 89 44 24 18       	mov    %r8d,0x18(%rsp)
  14:	41 54                	push   %r12
  16:	41 55                	push   %r13
  18:	41 56                	push   %r14
  1a:	41 57                	push   %r15
  1c:	4c 63 e2             	movslq %edx,%r12
  1f:	4d 8b f9             	mov    %r9,%r15
  22:	4c 8b e9             	mov    %rcx,%r13
  25:	41 8b c4             	mov    %r12d,%eax
  28:	c1 e0 04             	shl    $0x4,%eax
  2b:	4c 63 d8             	movslq %eax,%r11
  2e:	42 8d 04 c5 00 00 00 	lea    0x0(,%r8,8),%eax
  35:	00 
  36:	4c 63 f0             	movslq %eax,%r14
  39:	49 8d 04 0b          	lea    (%r11,%rcx,1),%rax
  3d:	4c 03 f0             	add    %rax,%r14
  40:	41 8d 40 42          	lea    0x42(%r8),%eax
  44:	42 8d 04 60          	lea    (%rax,%r12,2),%eax
  48:	4c 63 d0             	movslq %eax,%r10
  4b:	41 0f b6 46 02       	movzbl 0x2(%r14),%eax
  50:	41 0f b6 34 0a       	movzbl (%r10,%rcx,1),%esi
  55:	8b fe                	mov    %esi,%edi
  57:	8b de                	mov    %esi,%ebx
  59:	83 e7 01             	and    $0x1,%edi
  5c:	83 e3 02             	and    $0x2,%ebx
  5f:	44 8b de             	mov    %esi,%r11d
  62:	c1 e7 08             	shl    $0x8,%edi
  65:	48 0b f8             	or     %rax,%rdi
  68:	c1 e3 07             	shl    $0x7,%ebx
  6b:	41 0f b6 46 03       	movzbl 0x3(%r14),%eax
  70:	41 83 e3 04          	and    $0x4,%r11d
  74:	48 0b d8             	or     %rax,%rbx
  77:	41 c1 e3 06          	shl    $0x6,%r11d
  7b:	41 0f b6 46 04       	movzbl 0x4(%r14),%eax
  80:	44 8b d6             	mov    %esi,%r10d
  83:	4c 0b d8             	or     %rax,%r11
  86:	41 83 e2 08          	and    $0x8,%r10d
  8a:	41 0f b6 46 05       	movzbl 0x5(%r14),%eax
  8f:	44 8b ce             	mov    %esi,%r9d
  92:	41 83 e1 10          	and    $0x10,%r9d
  96:	41 c1 e2 05          	shl    $0x5,%r10d
  9a:	4c 0b d0             	or     %rax,%r10
  9d:	41 c1 e1 04          	shl    $0x4,%r9d
  a1:	41 0f b6 46 06       	movzbl 0x6(%r14),%eax
  a6:	44 8b c6             	mov    %esi,%r8d
  a9:	4c 0b c8             	or     %rax,%r9
  ac:	41 83 e0 20          	and    $0x20,%r8d
  b0:	41 0f b6 46 07       	movzbl 0x7(%r14),%eax
  b5:	8b d6                	mov    %esi,%edx
  b7:	83 e2 40             	and    $0x40,%edx
  ba:	41 c1 e0 03          	shl    $0x3,%r8d
  be:	4c 0b c0             	or     %rax,%r8
  c1:	c1 e2 02             	shl    $0x2,%edx
  c4:	41 0f b6 46 08       	movzbl 0x8(%r14),%eax
  c9:	81 e6 80 00 00 00    	and    $0x80,%esi
  cf:	48 0b d0             	or     %rax,%rdx
  d2:	41 0f b6 46 09       	movzbl 0x9(%r14),%eax
  d7:	8d 0c 36             	lea    (%rsi,%rsi,1),%ecx
  da:	48 0b c8             	or     %rax,%rcx
  dd:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # e4 <?decode@?$Fmt32@$0BF@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0xe4>
  e4:	c5 f9 6e 0c b8       	vmovd  (%rax,%rdi,4),%xmm1
  e9:	c4 e3 71 22 0c 98 01 	vpinsrd $0x1,(%rax,%rbx,4),%xmm1,%xmm1
  f0:	c4 a3 71 22 0c 98 02 	vpinsrd $0x2,(%rax,%r11,4),%xmm1,%xmm1
  f7:	c4 a3 71 22 0c 90 03 	vpinsrd $0x3,(%rax,%r10,4),%xmm1,%xmm1
  fe:	c4 a1 79 6e 04 88    	vmovd  (%rax,%r9,4),%xmm0
 104:	c4 a3 79 22 04 80 01 	vpinsrd $0x1,(%rax,%r8,4),%xmm0,%xmm0
 10b:	c4 e3 79 22 04 90 02 	vpinsrd $0x2,(%rax,%rdx,4),%xmm0,%xmm0
 112:	c4 e3 79 22 04 88 03 	vpinsrd $0x3,(%rax,%rcx,4),%xmm0,%xmm0
 119:	44 8b 44 24 38       	mov    0x38(%rsp),%r8d
 11e:	42 8d 04 e5 00 00 00 	lea    0x0(,%r12,8),%eax
 125:	00 
 126:	c4 e3 75 18 c0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm0
 12c:	48 63 c8             	movslq %eax,%rcx
 12f:	c4 c1 7e 7f 07       	vmovdqu %ymm0,(%r15)
 134:	4a 8b 54 29 4a       	mov    0x4a(%rcx,%r13,1),%rdx
 139:	48 8b c2             	mov    %rdx,%rax
 13c:	48 c1 e8 20          	shr    $0x20,%rax
 140:	45 85 c0             	test   %r8d,%r8d
 143:	0f 44 c2             	cmove  %edx,%eax
 146:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 14a:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
 14f:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 154:	c4                   	.byte 0xc4
 155:	e2 79                	loop   1d0 <?decode@?$Fmt32@$0BF@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x1d0>
 157:	00                   	.byte 0
 158:	0d                   	.byte 0xd
	...

000000000000015a <$LN10>:
 15a:	00 00                	add    %al,(%rax)
 15c:	00 c4                	add    %al,%ah
 15e:	e2 79                	loop   1d9 <$LN10+0x7f>
 160:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 166 <?decode@?$Fmt32@$0BF@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x166>
 166:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 16c:	c5 f5 db 15 00 00 00 	vpand  0x0(%rip),%ymm1,%ymm2        # 174 <?decode@?$Fmt32@$0BF@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x174>
 173:	00 
 174:	c5 ed 74 1d 00 00 00 	vpcmpeqb 0x0(%rip),%ymm2,%ymm3        # 17c <?decode@?$Fmt32@$0BF@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x17c>
 17b:	00 
 17c:	c5 e5 eb 05 00 00 00 	vpor   0x0(%rip),%ymm3,%ymm0        # 184 <?decode@?$Fmt32@$0BF@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x184>
 183:	00 
 184:	c5 fe 7f 00          	vmovdqu %ymm0,(%rax)
 188:	43 0f b6 4c 2c 6a    	movzbl 0x6a(%r12,%r13,1),%ecx
 18e:	8b c1                	mov    %ecx,%eax
 190:	83 e1 0f             	and    $0xf,%ecx
 193:	c1 e8 04             	shr    $0x4,%eax
 196:	45 85 c0             	test   %r8d,%r8d
 199:	0f 45 c8             	cmovne %eax,%ecx
 19c:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 1a3:	00 
 1a4:	98                   	cwtl
 1a5:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 1a9:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
 1ae:	c4 e2 7d 79 c0       	vpbroadcastw %xmm0,%ymm0
 1b3:	c5 fe 7f 00          	vmovdqu %ymm0,(%rax)
 1b7:	c5 f8 77             	vzeroupper
 1ba:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 1bf:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
 1c4:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
 1c9:	41 5f                	pop    %r15
 1cb:	41 5e                	pop    %r14
 1cd:	41 5d                	pop    %r13
 1cf:	41 5c                	pop    %r12
 1d1:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?decode@?$Fmt32@$0BG@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z>:
   0:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   5:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
   a:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
   f:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
  14:	41 56                	push   %r14
  16:	41 57                	push   %r15
  18:	8d 04 d5 00 00 00 00 	lea    0x0(,%rdx,8),%eax
  1f:	8b f2                	mov    %edx,%esi
  21:	48 63 d8             	movslq %eax,%rbx
  24:	4c 8d 25 00 00 00 00 	lea    0x0(%rip),%r12        # 2b <?decode@?$Fmt32@$0BG@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x2b>
  2b:	48 03 d9             	add    %rcx,%rbx
  2e:	8d 42 21             	lea    0x21(%rdx),%eax
  31:	41 8d 04 40          	lea    (%r8,%rax,2),%eax
  35:	45 8b f0             	mov    %r8d,%r14d
  38:	4c 63 d0             	movslq %eax,%r10
  3b:	4c 8b f9             	mov    %rcx,%r15
  3e:	42 8d 04 85 00 00 00 	lea    0x0(,%r8,4),%eax
  45:	00 
  46:	49 8b f9             	mov    %r9,%rdi
  49:	45 0f b6 1c 0a       	movzbl (%r10,%rcx,1),%r11d
  4e:	4c 63 d0             	movslq %eax,%r10
  51:	45 8b cb             	mov    %r11d,%r9d
  54:	41 83 e1 03          	and    $0x3,%r9d
  58:	45 8b c3             	mov    %r11d,%r8d
  5b:	41 83 e0 0c          	and    $0xc,%r8d
  5f:	41 c1 e1 08          	shl    $0x8,%r9d
  63:	41 8b d3             	mov    %r11d,%edx
  66:	41 c1 e0 06          	shl    $0x6,%r8d
  6a:	41 0f b6 44 1a 02    	movzbl 0x2(%r10,%rbx,1),%eax
  70:	83 e2 30             	and    $0x30,%edx
  73:	4c 0b c8             	or     %rax,%r9
  76:	c1 e2 04             	shl    $0x4,%edx
  79:	41 0f b6 44 1a 03    	movzbl 0x3(%r10,%rbx,1),%eax
  7f:	41 81 e3 c0 00 00 00 	and    $0xc0,%r11d
  86:	4c 0b c0             	or     %rax,%r8
  89:	41 c1 e3 02          	shl    $0x2,%r11d
  8d:	41 0f b6 44 1a 04    	movzbl 0x4(%r10,%rbx,1),%eax
  93:	c4 81 7a 7e 0c cc    	vmovq  (%r12,%r9,8),%xmm1
  99:	48 0b d0             	or     %rax,%rdx
  9c:	41 8b cb             	mov    %r11d,%ecx
  9f:	c4 83 f1 22 0c c4 01 	vpinsrq $0x1,(%r12,%r8,8),%xmm1,%xmm1
  a6:	41 0f b6 44 1a 05    	movzbl 0x5(%r10,%rbx,1),%eax
  ac:	48 0b c8             	or     %rax,%rcx
  af:	c4 c1 7a 7e 04 d4    	vmovq  (%r12,%rdx,8),%xmm0
  b5:	c4 c3 f9 22 04 cc 01 	vpinsrq $0x1,(%r12,%rcx,8),%xmm0,%xmm0
  bc:	c4 e3 75 18 c0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm0
  c2:	c5 fe 7f 07          	vmovdqu %ymm0,(%rdi)
  c6:	48 8b 4b 22          	mov    0x22(%rbx),%rcx
  ca:	48 8b c1             	mov    %rcx,%rax
  cd:	48 c1 e8 20          	shr    $0x20,%rax
  d1:	45 85 f6             	test   %r14d,%r14d
  d4:	0f 44 c1             	cmove  %ecx,%eax
  d7:	83 c6 25             	add    $0x25,%esi
  da:	c5 f9 6e c0          	vmovd  %eax,%xmm0
  de:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  e3:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
  e8:	c4 e2 79 00 0d 00 00 	vpshufb 0x0(%rip),%xmm0,%xmm1        # f1 <?decode@?$Fmt32@$0BG@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0xf1>
  ef:	00 00 
  f1:	c4 e2 79 00 05 00 00 	vpshufb 0x0(%rip),%xmm0,%xmm0        # fa <?decode@?$Fmt32@$0BG@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0xfa>
  f8:	00 00 
  fa:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 100:	c5 f5 db 15 00 00 00 	vpand  0x0(%rip),%ymm1,%ymm2        # 108 <?decode@?$Fmt32@$0BG@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x108>
 107:	00 
 108:	c5 ed 74 1d 00 00 00 	vpcmpeqb 0x0(%rip),%ymm2,%ymm3        # 110 <?decode@?$Fmt32@$0BG@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x110>
 10f:	00 
 110:	c5 e5 eb 05 00 00 00 	vpor   0x0(%rip),%ymm3,%ymm0        # 118 <?decode@?$Fmt32@$0BG@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x118>
 117:	00 
 118:	c5 fe 7f 00          	vmovdqu %ymm0,(%rax)
 11c:	41 8d 04 76          	lea    (%r14,%rsi,2),%eax
 120:	48 63 c8             	movslq %eax,%rcx
 123:	42 0f b6 14 39       	movzbl (%rcx,%r15,1),%edx
 128:	0f b6 c2             	movzbl %dl,%eax
 12b:	80 e2 0f             	and    $0xf,%dl
 12e:	c0 e8 04             	shr    $0x4,%al
 131:	0f b6 c8             	movzbl %al,%ecx
 134:	66 8d 04 4d 01 00 00 	lea    0x1(,%rcx,2),%ax
 13b:	00 
 13c:	98                   	cwtl
 13d:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 141:	0f b6 c2             	movzbl %dl,%eax
 144:	66 03 c0             	add    %ax,%ax
 147:	66 ff c0             	inc    %ax
 14a:	98                   	cwtl
 14b:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 14f:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
 154:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
 159:	c4                   	.byte 0xc4

000000000000015a <$LN10>:
 15a:	e2 79                	loop   1d5 <$LN10+0x7b>
 15c:	79 c9                	jns    127 <?decode@?$Fmt32@$0BG@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x127>
 15e:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
 164:	c5 fe 7f 08          	vmovdqu %ymm1,(%rax)
 168:	c5 f8 77             	vzeroupper
 16b:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 170:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
 175:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
 17a:	4c 8b 64 24 30       	mov    0x30(%rsp),%r12
 17f:	41 5f                	pop    %r15
 181:	41 5e                	pop    %r14
 183:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?decode@?$Fmt32@$0BH@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z>:
   0:	c5 fa 6f 15 00 00 00 	vmovdqu 0x0(%rip),%xmm2        # 8 <?decode@?$Fmt32@$0BH@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x8>
   7:	00 
   8:	c5 fa 6f 25 00 00 00 	vmovdqu 0x0(%rip),%xmm4        # 10 <?decode@?$Fmt32@$0BH@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x10>
   f:	00 
  10:	4c 8b d9             	mov    %rcx,%r11
  13:	45 8d 14 50          	lea    (%r8,%rdx,2),%r10d
  17:	41 8b c2             	mov    %r10d,%eax
  1a:	c1 e0 04             	shl    $0x4,%eax
  1d:	48 98                	cltq
  1f:	c5 fa 6f 6c 08 08    	vmovdqu 0x8(%rax,%rcx,1),%xmm5
  25:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  2a:	41 0f b6 ca          	movzbl %r10b,%ecx
  2e:	c5 f9 71 d5 04       	vpsrlw $0x4,%xmm5,%xmm0
  33:	c5 f9 db cc          	vpand  %xmm4,%xmm0,%xmm1
  37:	c5 d9 db c5          	vpand  %xmm5,%xmm4,%xmm0
  3b:	c4 e2 69 00 d9       	vpshufb %xmm1,%xmm2,%xmm3
  40:	c4 e2 69 00 c8       	vpshufb %xmm0,%xmm2,%xmm1
  45:	c4 e3 75 38 e3 01    	vinserti128 $0x1,%xmm3,%ymm1,%ymm4
  4b:	c5 fe 6f 0d 00 00 00 	vmovdqu 0x0(%rip),%ymm1        # 53 <?decode@?$Fmt32@$0BH@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x53>
  52:	00 
  53:	c4 e2 5d 08 c4       	vpsignb %ymm4,%ymm4,%ymm0
  58:	c4 c1 7e 7f 01       	vmovdqu %ymm0,(%r9)
  5d:	c4 e2 75 08 c4       	vpsignb %ymm4,%ymm1,%ymm0
  62:	c5 fe 7f 00          	vmovdqu %ymm0,(%rax)
  66:	80 e1 01             	and    $0x1,%cl
  69:	49 63 c2             	movslq %r10d,%rax
  6c:	48 d1 f8             	sar    $1,%rax
  6f:	c0 e1 02             	shl    $0x2,%cl
  72:	42 0f b6 44 18 04    	movzbl 0x4(%rax,%r11,1),%eax
  78:	d2 e8                	shr    %cl,%al
  7a:	41 0f b6 ca          	movzbl %r10b,%ecx
  7e:	24 0f                	and    $0xf,%al
  80:	02 c9                	add    %cl,%cl
  82:	0f b6 d0             	movzbl %al,%edx
  85:	41 0f b7 43 02       	movzwl 0x2(%r11),%eax
  8a:	66 d3 e8             	shr    %cl,%ax
  8d:	66 83 e0 03          	and    $0x3,%ax
  91:	66 c1 e0 04          	shl    $0x4,%ax
  95:	66 0b c2             	or     %dx,%ax
  98:	66 83 e8 20          	sub    $0x20,%ax
  9c:	98                   	cwtl
  9d:	c5 f9 6e c0          	vmovd  %eax,%xmm0
  a1:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  a6:	c4 e2 7d 79 c0       	vpbroadcastw %xmm0,%ymm0
  ab:	c5 fe 7f 00          	vmovdqu %ymm0,(%rax)
  af:	c5 f8 77             	vzeroupper
  b2:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?exp@@YAMM@Z>:
   0:	e9 00 00 00 00       	jmp    5 <@vol.md+0x2>

Disassembly of section .text$mn:

0000000000000000 <?ggml_cpu_moe_iq2_s_paired_gate_up@@YA_NPEBX0_K1H0PEAMHH@Z>:
   0:	48 83 ec 58          	sub    $0x58,%rsp
   4:	44 8b 94 24 80 00 00 	mov    0x80(%rsp),%r10d
   b:	00 
   c:	45 85 d2             	test   %r10d,%r10d
   f:	7e 46                	jle    57 <?ggml_cpu_moe_iq2_s_paired_gate_up@@YA_NPEBX0_K1H0PEAMHH@Z+0x57>
  11:	45 84 d2             	test   %r10b,%r10b
  14:	75 41                	jne    57 <?ggml_cpu_moe_iq2_s_paired_gate_up@@YA_NPEBX0_K1H0PEAMHH@Z+0x57>
  16:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
  1d:	89 44 24 40          	mov    %eax,0x40(%rsp)
  21:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
  28:	89 44 24 38          	mov    %eax,0x38(%rsp)
  2c:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  33:	00 
  34:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  39:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
  40:	00 
  41:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  46:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
  4b:	e8 00 00 00 00       	call   50 <?ggml_cpu_moe_iq2_s_paired_gate_up@@YA_NPEBX0_K1H0PEAMHH@Z+0x50>
  50:	b0 01                	mov    $0x1,%al
  52:	48 83 c4 58          	add    $0x58,%rsp
  56:	c3                   	ret
  57:	32 c0                	xor    %al,%al
  59:	48 83 c4 58          	add    $0x58,%rsp
  5d:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   5:	57                   	push   %rdi
   6:	48 83 ec 50          	sub    $0x50,%rsp
   a:	44 8b 94 24 88 00 00 	mov    0x88(%rsp),%r10d
  11:	00 
  12:	4d 8b d9             	mov    %r9,%r11
  15:	41 8b c2             	mov    %r10d,%eax
  18:	49 8b d8             	mov    %r8,%rbx
  1b:	48 8b fa             	mov    %rdx,%rdi
  1e:	25 ff 00 00 80       	and    $0x800000ff,%eax
  23:	7d 09                	jge    2e <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x2e>
  25:	ff c8                	dec    %eax
  27:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  2c:	ff c0                	inc    %eax
  2e:	85 c0                	test   %eax,%eax
  30:	74 21                	je     53 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x53>
  32:	4c 8d 0d 00 00 00 00 	lea    0x0(%rip),%r9        # 39 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x39>
  39:	ba 0e 01 00 00       	mov    $0x10e,%edx
  3e:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 45 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x45>
  45:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 4c <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x4c>
  4c:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 52 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x52>
  52:	cc                   	int3
  53:	83 e9 15             	sub    $0x15,%ecx
  56:	0f 84 1e 02 00 00    	je     27a <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x27a>
  5c:	83 e9 01             	sub    $0x1,%ecx
  5f:	0f 84 b4 01 00 00    	je     219 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x219>
  65:	83 f9 01             	cmp    $0x1,%ecx
  68:	74 1a                	je     84 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x84>
  6a:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 71 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x71>
  71:	ba 13 01 00 00       	mov    $0x113,%edx
  76:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 7d <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x7d>
  7d:	ff 15 00 00 00 00    	call   *0x0(%rip)        # 83 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x83>
  83:	cc                   	int3
  84:	8b 8c 24 98 00 00 00 	mov    0x98(%rsp),%ecx
  8b:	83 e9 01             	sub    $0x1,%ecx
  8e:	0f 84 2f 01 00 00    	je     1c3 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x1c3>
  94:	83 e9 01             	sub    $0x1,%ecx
  97:	0f 84 d0 00 00 00    	je     16d <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x16d>
  9d:	83 e9 01             	sub    $0x1,%ecx
  a0:	74 75                	je     117 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x117>
  a2:	83 f9 01             	cmp    $0x1,%ecx
  a5:	74 1a                	je     c1 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0xc1>
  a7:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # ae <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0xae>
  ae:	ba 07 01 00 00       	mov    $0x107,%edx
  b3:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ba <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0xba>
  ba:	ff 15 00 00 00 00    	call   *0x0(%rip)        # c0 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0xc0>
  c0:	cc                   	int3
  c1:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
  c8:	4d 8b c3             	mov    %r11,%r8
  cb:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
  d2:	00 
  d3:	48 8b d3             	mov    %rbx,%rdx
  d6:	89 44 24 40          	mov    %eax,0x40(%rsp)
  da:	48 8b cf             	mov    %rdi,%rcx
  dd:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
  e4:	89 44 24 38          	mov    %eax,0x38(%rsp)
  e8:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  ef:	00 
  f0:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  f5:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  fc:	00 
  fd:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 102:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
 107:	e8 00 00 00 00       	call   10c <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x10c>
 10c:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 111:	48 83 c4 50          	add    $0x50,%rsp
 115:	5f                   	pop    %rdi
 116:	c3                   	ret
 117:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
 11e:	4d 8b c3             	mov    %r11,%r8
 121:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
 128:	00 
 129:	48 8b d3             	mov    %rbx,%rdx
 12c:	89 44 24 40          	mov    %eax,0x40(%rsp)
 130:	48 8b cf             	mov    %rdi,%rcx
 133:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 13a:	89 44 24 38          	mov    %eax,0x38(%rsp)
 13e:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
 145:	00 
 146:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
 14b:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
 152:	00 
 153:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 158:	44                   	rex.R
 159:	89                   	.byte 0x89

000000000000015a <$LN10>:
 15a:	54                   	push   %rsp
 15b:	24 20                	and    $0x20,%al
 15d:	e8 00 00 00 00       	call   162 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x162>
 162:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 167:	48 83 c4 50          	add    $0x50,%rsp
 16b:	5f                   	pop    %rdi
 16c:	c3                   	ret
 16d:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
 174:	4d 8b c3             	mov    %r11,%r8
 177:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
 17e:	00 
 17f:	48 8b d3             	mov    %rbx,%rdx
 182:	89 44 24 40          	mov    %eax,0x40(%rsp)
 186:	48 8b cf             	mov    %rdi,%rcx
 189:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 190:	89 44 24 38          	mov    %eax,0x38(%rsp)
 194:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
 19b:	00 
 19c:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
 1a1:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
 1a8:	00 
 1a9:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 1ae:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
 1b3:	e8 00 00 00 00       	call   1b8 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x1b8>
 1b8:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 1bd:	48 83 c4 50          	add    $0x50,%rsp
 1c1:	5f                   	pop    %rdi
 1c2:	c3                   	ret
 1c3:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
 1ca:	4d 8b c3             	mov    %r11,%r8
 1cd:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
 1d4:	00 
 1d5:	48 8b d3             	mov    %rbx,%rdx
 1d8:	89 44 24 40          	mov    %eax,0x40(%rsp)
 1dc:	48 8b cf             	mov    %rdi,%rcx
 1df:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 1e6:	89 44 24 38          	mov    %eax,0x38(%rsp)
 1ea:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
 1f1:	00 
 1f2:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
 1f7:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
 1fe:	00 
 1ff:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 204:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
 209:	e8 00 00 00 00       	call   20e <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x20e>
 20e:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 213:	48 83 c4 50          	add    $0x50,%rsp
 217:	5f                   	pop    %rdi
 218:	c3                   	ret
 219:	8b                   	.byte 0x8b
 21a:	84                   	.byte 0x84

000000000000021b <$LN41>:
 21b:	24 b0                	and    $0xb0,%al
 21d:	00 00                	add    %al,(%rax)
 21f:	00 4d 8b             	add    %cl,-0x75(%rbp)
 222:	c3                   	ret
 223:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
 22a:	00 
 22b:	48 8b d3             	mov    %rbx,%rdx
 22e:	89 44 24 48          	mov    %eax,0x48(%rsp)
 232:	48 8b cf             	mov    %rdi,%rcx
 235:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 23c:	89 44 24 40          	mov    %eax,0x40(%rsp)
 240:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
 247:	00 
 248:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
 24d:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
 254:	89 44 24 30          	mov    %eax,0x30(%rsp)
 258:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
 25f:	00 
 260:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 265:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
 26a:	e8 00 00 00 00       	call   26f <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x26f>
 26f:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 274:	48 83 c4 50          	add    $0x50,%rsp
 278:	5f                   	pop    %rdi
 279:	c3                   	ret
 27a:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
 281:	4d 8b c3             	mov    %r11,%r8
 284:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
 28b:	00 
 28c:	48 8b d3             	mov    %rbx,%rdx
 28f:	89 44 24 48          	mov    %eax,0x48(%rsp)
 293:	48 8b cf             	mov    %rdi,%rcx
 296:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
 29d:	89 44 24 40          	mov    %eax,0x40(%rsp)
 2a1:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
 2a8:	00 
 2a9:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
 2ae:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
 2b5:	89                   	.byte 0x89
 2b6:	44                   	rex.R
 2b7:	24                   	.byte 0x24

00000000000002b8 <$LN99>:
 2b8:	30 48 8b             	xor    %cl,-0x75(%rax)
 2bb:	84 24 90             	test   %ah,(%rax,%rdx,4)
 2be:	00 00                	add    %al,(%rax)
 2c0:	00 48 89             	add    %cl,-0x77(%rax)
 2c3:	44 24 28             	rex.R and $0x28,%al
 2c6:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
 2cb:	e8 00 00 00 00       	call   2d0 <?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x2d0>
 2d0:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
 2d5:	48 83 c4 50          	add    $0x50,%rsp
 2d9:	5f                   	pop    %rdi
 2da:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?ggml_cpu_moe_iq_rows@@YAXW4ggml_type@@PEBX_KHPEBQEBXHPEBQEAMHH@Z>:
   0:	48 83 ec 68          	sub    $0x68,%rsp
   4:	8b 84 24 b0 00 00 00 	mov    0xb0(%rsp),%eax
   b:	89 44 24 50          	mov    %eax,0x50(%rsp)
   f:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
  16:	89 44 24 48          	mov    %eax,0x48(%rsp)
  1a:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  21:	00 
  22:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  27:	8b 84 24 98 00 00 00 	mov    0x98(%rsp),%eax
  2e:	89 44 24 38          	mov    %eax,0x38(%rsp)
  32:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  39:	00 
  3a:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  3f:	44 89 4c 24 28       	mov    %r9d,0x28(%rsp)
  44:	4d 8b c8             	mov    %r8,%r9
  47:	45 33 c0             	xor    %r8d,%r8d
  4a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  51:	00 00 
  53:	e8 00 00 00 00       	call   58 <?ggml_cpu_moe_iq_rows@@YAXW4ggml_type@@PEBX_KHPEBQEBXHPEBQEAMHH@Z+0x58>
  58:	48 83 c4 68          	add    $0x68,%rsp
  5c:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?ggml_cpu_moe_iq_supported@@YA_NW4ggml_type@@@Z>:
   0:	8d 41 eb             	lea    -0x15(%rcx),%eax
   3:	83 f8 02             	cmp    $0x2,%eax
   6:	0f 96 c0             	setbe  %al
   9:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?h2f@?A0x5752bc9f@@YAMG@Z>:
   0:	0f b7 c1             	movzwl %cx,%eax
   3:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   7:	c4 e2 79 13 c0       	vcvtph2ps %xmm0,%xmm0
   c:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?hsum8@?A0x5752bc9f@@YAMT__m256@@@Z>:
   0:	c5 fc 10 09          	vmovups (%rcx),%ymm1
   4:	c4 e3 7d 19 c8 01    	vextractf128 $0x1,%ymm1,%xmm0
   a:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
   e:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
  12:	c5 f3 7c c1          	vhaddps %xmm1,%xmm1,%xmm0
  16:	c5 f8 77             	vzeroupper
  19:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?hsum8_ggml@?A0x5752bc9f@@YAMT__m256@@@Z>:
   0:	c5 fc 10 09          	vmovups (%rcx),%ymm1
   4:	c4 e3 7d 19 c8 01    	vextractf128 $0x1,%ymm1,%xmm0
   a:	c5 f8 58 c9          	vaddps %xmm1,%xmm0,%xmm1
   e:	c5 f0 12 c1          	vmovhlps %xmm1,%xmm1,%xmm0
  12:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
  16:	c5 fa 16 c8          	vmovshdup %xmm0,%xmm1
  1a:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
  1e:	c5 f8 77             	vzeroupper
  21:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?iq2_s_half_dot@?A0x5752bc9f@@YA?AT__m256i@@PEBEHT2@111@Z>:
   0:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
   5:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
   a:	8d 04 95 00 00 00 00 	lea    0x0(,%rdx,4),%eax
  11:	49 8b d9             	mov    %r9,%rbx
  14:	4c 63 d8             	movslq %eax,%r11
  17:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1e <?iq2_s_half_dot@?A0x5752bc9f@@YA?AT__m256i@@PEBEHT2@111@Z+0x1e>
  1e:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  23:	4c 03 d9             	add    %rcx,%r11
  26:	c5 fe 6f 10          	vmovdqu (%rax),%ymm2
  2a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  2f:	c4 c2 7d 58 43 22    	vpbroadcastd 0x22(%r11),%ymm0
  35:	c4 e2 7d 00 00       	vpshufb (%rax),%ymm0,%ymm0
  3a:	c5 fd db ca          	vpand  %ymm2,%ymm0,%ymm1
  3e:	48 63 c2             	movslq %edx,%rax
  41:	c5 f5 74 da          	vpcmpeqb %ymm2,%ymm1,%ymm3
  45:	c4 c1 65 ef 08       	vpxor  (%r8),%ymm3,%ymm1
  4a:	c5 f5 f8 d3          	vpsubb %ymm3,%ymm1,%ymm2
  4e:	44 0f b6 54 08 42    	movzbl 0x42(%rax,%rcx,1),%r10d
  54:	41 0f b6 43 02       	movzbl 0x2(%r11),%eax
  59:	45 8b ca             	mov    %r10d,%r9d
  5c:	45 8b c2             	mov    %r10d,%r8d
  5f:	41 8b d2             	mov    %r10d,%edx
  62:	41 83 e1 03          	and    $0x3,%r9d
  66:	41 83 e0 0c          	and    $0xc,%r8d
  6a:	83 e2 30             	and    $0x30,%edx
  6d:	41 c1 e1 08          	shl    $0x8,%r9d
  71:	4c 0b c8             	or     %rax,%r9
  74:	41 c1 e0 06          	shl    $0x6,%r8d
  78:	41 0f b6 43 03       	movzbl 0x3(%r11),%eax
  7d:	41 81 e2 c0 00 00 00 	and    $0xc0,%r10d
  84:	4c 0b c0             	or     %rax,%r8
  87:	c1 e2 04             	shl    $0x4,%edx
  8a:	41 0f b6 43 04       	movzbl 0x4(%r11),%eax
  8f:	c4 a1 7a 7e 0c cf    	vmovq  (%rdi,%r9,8),%xmm1
  95:	48 0b d0             	or     %rax,%rdx
  98:	41 c1 e2 02          	shl    $0x2,%r10d
  9c:	c4 a3 f1 22 0c c7 01 	vpinsrq $0x1,(%rdi,%r8,8),%xmm1,%xmm1
  a3:	41 0f b6 43 05       	movzbl 0x5(%r11),%eax
  a8:	41 8b ca             	mov    %r10d,%ecx
  ab:	c5 fa 7e 04 d7       	vmovq  (%rdi,%rdx,8),%xmm0
  b0:	48 0b c8             	or     %rax,%rcx
  b3:	c4 e3 f9 22 04 cf 01 	vpinsrq $0x1,(%rdi,%rcx,8),%xmm0,%xmm0
  ba:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  bf:	c4 e3 75 18 c0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm0
  c5:	c4 e2 7d 04 ca       	vpmaddubsw %ymm2,%ymm0,%ymm1
  ca:	c5 f5 f5 03          	vpmaddwd (%rbx),%ymm1,%ymm0
  ce:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  d3:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?iq2_s_scales@?A0x5752bc9f@@YA?AT__m256i@@PEBE@Z>:
   0:	48 8b 41 4a          	mov    0x4a(%rcx),%rax
   4:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
   9:	48 8b c8             	mov    %rax,%rcx
   c:	48 c1 e9 04          	shr    $0x4,%rcx
  10:	c4 e3 f9 22 c1 01    	vpinsrq $0x1,%rcx,%xmm0,%xmm0
  16:	c5 f9 db 05 00 00 00 	vpand  0x0(%rip),%xmm0,%xmm0        # 1e <?iq2_s_scales@?A0x5752bc9f@@YA?AT__m256i@@PEBE@Z+0x1e>
  1d:	00 
  1e:	c5 f1 71 f0 01       	vpsllw $0x1,%xmm0,%xmm1
  23:	c5 f1 fc 05 00 00 00 	vpaddb 0x0(%rip),%xmm1,%xmm0        # 2b <?iq2_s_scales@?A0x5752bc9f@@YA?AT__m256i@@PEBE@Z+0x2b>
  2a:	00 
  2b:	c4 e2 7d 20 c0       	vpmovsxbw %xmm0,%ymm0
  30:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z>:
   0:	48 8b c4             	mov    %rsp,%rax
   3:	48 89 58 08          	mov    %rbx,0x8(%rax)
   7:	4c 89 48 20          	mov    %r9,0x20(%rax)
   b:	4c 89 40 18          	mov    %r8,0x18(%rax)
   f:	55                   	push   %rbp
  10:	56                   	push   %rsi
  11:	57                   	push   %rdi
  12:	41 54                	push   %r12
  14:	41 55                	push   %r13
  16:	41 56                	push   %r14
  18:	41 57                	push   %r15
  1a:	48 81 ec e0 01 00 00 	sub    $0x1e0,%rsp
  21:	c5 f8 29 70 b8       	vmovaps %xmm6,-0x48(%rax)
  26:	c5 f8 29 78 a8       	vmovaps %xmm7,-0x58(%rax)
  2b:	c5 78 29 40 98       	vmovaps %xmm8,-0x68(%rax)
  30:	c5 78 29 48 88       	vmovaps %xmm9,-0x78(%rax)
  35:	c5 78 29 90 78 ff ff 	vmovaps %xmm10,-0x88(%rax)
  3c:	ff 
  3d:	c5 78 29 98 68 ff ff 	vmovaps %xmm11,-0x98(%rax)
  44:	ff 
  45:	c5 78 29 a0 58 ff ff 	vmovaps %xmm12,-0xa8(%rax)
  4c:	ff 
  4d:	c5 78 29 a8 48 ff ff 	vmovaps %xmm13,-0xb8(%rax)
  54:	ff 
  55:	c5 78 29 b0 38 ff ff 	vmovaps %xmm14,-0xc8(%rax)
  5c:	ff 
  5d:	c5 78 29 b8 28 ff ff 	vmovaps %xmm15,-0xd8(%rax)
  64:	ff 
  65:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  6a:	48 83 e5 e0          	and    $0xffffffffffffffe0,%rbp
  6e:	4c 63 94 24 58 02 00 	movslq 0x258(%rsp),%r10
  75:	00 
  76:	49 8b f8             	mov    %r8,%rdi
  79:	48 63 84 24 60 02 00 	movslq 0x260(%rsp),%rax
  80:	00 
  81:	4c 8b da             	mov    %rdx,%r11
  84:	4c 89 55 50          	mov    %r10,0x50(%rbp)
  88:	48 8b d9             	mov    %rcx,%rbx
  8b:	4c 3b d0             	cmp    %rax,%r10
  8e:	0f 8d e6 05 00 00    	jge    67a <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x67a>
  94:	8b 84 24 40 02 00 00 	mov    0x240(%rsp),%eax
  9b:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # a2 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0xa2>
  a2:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # aa <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0xaa>
  a9:	00 
  aa:	99                   	cltd
  ab:	49 8b ca             	mov    %r10,%rcx
  ae:	48 0f af cf          	imul   %rdi,%rcx
  b2:	4d 8b c2             	mov    %r10,%r8
  b5:	0f b6 d2             	movzbl %dl,%edx
  b8:	4d 0f af c1          	imul   %r9,%r8
  bc:	48 03 d9             	add    %rcx,%rbx
  bf:	03 c2                	add    %edx,%eax
  c1:	c1 f8 08             	sar    $0x8,%eax
  c4:	4d 03 c3             	add    %r11,%r8
  c7:	4c 8b cb             	mov    %rbx,%r9
  ca:	89 45 00             	mov    %eax,0x0(%rbp)
  cd:	49 f7 d9             	neg    %r9
  d0:	4c 89 45 20          	mov    %r8,0x20(%rbp)
  d4:	4c 89 4d 18          	mov    %r9,0x18(%rbp)
  d8:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
  dc:	0f 1f 40 00          	nopl   0x0(%rax)
  e0:	c4 41 30 57 c9       	vxorps %xmm9,%xmm9,%xmm9
  e5:	c4 41 28 57 d2       	vxorps %xmm10,%xmm10,%xmm10
  ea:	c5 7c 11 8d 80 00 00 	vmovups %ymm9,0x80(%rbp)
  f1:	00 
  f2:	c5 7c 11 95 a0 00 00 	vmovups %ymm10,0xa0(%rbp)
  f9:	00 
  fa:	85 c0                	test   %eax,%eax
  fc:	0f 8e c9 04 00 00    	jle    5cb <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x5cb>
 102:	48 8b bc 24 48 02 00 	mov    0x248(%rsp),%rdi
 109:	00 
 10a:	4c 8b fb             	mov    %rbx,%r15
 10d:	4d 2b f8             	sub    %r8,%r15
 110:	48 89 45 38          	mov    %rax,0x38(%rbp)
 114:	4a 8d 04 0b          	lea    (%rbx,%r9,1),%rax
 118:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
 11c:	4d 8b d8             	mov    %r8,%r11
 11f:	48 89 7d 30          	mov    %rdi,0x30(%rbp)
 123:	4c 2b db             	sub    %rbx,%r11
 126:	48 89 5d 28          	mov    %rbx,0x28(%rbp)
 12a:	4c 8b d3             	mov    %rbx,%r10
 12d:	48 89 45 08          	mov    %rax,0x8(%rbp)
 131:	4c 8b e8             	mov    %rax,%r13
 134:	48 89 45 40          	mov    %rax,0x40(%rbp)
 138:	4d 8b e0             	mov    %r8,%r12
 13b:	4c 89 45 48          	mov    %r8,0x48(%rbp)
 13f:	90                   	nop
 140:	c5 7e 6f 0d 00 00 00 	vmovdqu 0x0(%rip),%ymm9        # 148 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x148>
 147:	00 
 148:	48 89 75 60          	mov    %rsi,0x60(%rbp)
 14c:	4b 8d 14 13          	lea    (%r11,%r10,1),%rdx
 150:	4a 8b 44 3a 4a       	mov    0x4a(%rdx,%r15,1),%rax
 155:	49 8d 77 04          	lea    0x4(%r15),%rsi
 159:	c4                   	.byte 0xc4

000000000000015a <$LN10>:
 15a:	e1 f9                	loope  155 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x155>
 15c:	6e                   	outsb  (%rsi),(%dx)
 15d:	c0 49 2b da          	rorb   $0xda,0x2b(%rcx)
 161:	48 c7 45 70 04 00 00 	movq   $0x4,0x70(%rbp)
 168:	00 
 169:	48 8b c8             	mov    %rax,%rcx
 16c:	4d 8b f4             	mov    %r12,%r14
 16f:	48 8b 42 4a          	mov    0x4a(%rdx),%rax
 173:	49 03 dd             	add    %r13,%rbx
 176:	4c 8b 65 60          	mov    0x60(%rbp),%r12
 17a:	4f 8d 2c 08          	lea    (%r8,%r9,1),%r13
 17e:	48 c1 e9 04          	shr    $0x4,%rcx
 182:	4d 2b f2             	sub    %r10,%r14
 185:	c4 e3 f9 22 c1 01    	vpinsrq $0x1,%rcx,%xmm0,%xmm0
 18b:	c5 f9 db 05 00 00 00 	vpand  0x0(%rip),%xmm0,%xmm0        # 193 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x193>
 192:	00 
 193:	c5 f1 71 f0 01       	vpsllw $0x1,%xmm0,%xmm1
 198:	c5 f1 fc 15 00 00 00 	vpaddb 0x0(%rip),%xmm1,%xmm2        # 1a0 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x1a0>
 19f:	00 
 1a0:	c4 e2 7d 20 da       	vpmovsxbw %xmm2,%ymm3
 1a5:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
 1aa:	49 03 f2             	add    %r10,%rsi
 1ad:	48 8b c8             	mov    %rax,%rcx
 1b0:	48 c1 e9 04          	shr    $0x4,%rcx
 1b4:	48 83 c7 24          	add    $0x24,%rdi
 1b8:	c4 e3 f9 22 c1 01    	vpinsrq $0x1,%rcx,%xmm0,%xmm0
 1be:	c5 f9 db 05 00 00 00 	vpand  0x0(%rip),%xmm0,%xmm0        # 1c6 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x1c6>
 1c5:	00 
 1c6:	c5 f1 71 f0 01       	vpsllw $0x1,%xmm0,%xmm1
 1cb:	c5 f1 fc 15 00 00 00 	vpaddb 0x0(%rip),%xmm1,%xmm2        # 1d3 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x1d3>
 1d2:	00 
 1d3:	49 8d 4f 43          	lea    0x43(%r15),%rcx
 1d7:	49 03 ca             	add    %r10,%rcx
 1da:	4c 8b 55 70          	mov    0x70(%rbp),%r10
 1de:	c4 e2 7d 20 c2       	vpmovsxbw %xmm2,%ymm0
 1e3:	49 03 cb             	add    %r11,%rcx
 1e6:	c5 fe 7f 85 e0 00 00 	vmovdqu %ymm0,0xe0(%rbp)
 1ed:	00 
 1ee:	c5 7e 6f d0          	vmovdqu %ymm0,%ymm10
 1f2:	c5 fe 7f 9d c0 00 00 	vmovdqu %ymm3,0xc0(%rbp)
 1f9:	00 
 1fa:	c4 41 19 ef e4       	vpxor  %xmm12,%xmm12,%xmm12
 1ff:	c4 41 11 ef ed       	vpxor  %xmm13,%xmm13,%xmm13
 204:	c4 41 09 ef f6       	vpxor  %xmm14,%xmm14,%xmm14
 209:	c4 41 01 ef ff       	vpxor  %xmm15,%xmm15,%xmm15
 20e:	49 03 f3             	add    %r11,%rsi
 211:	4c 8b f9             	mov    %rcx,%r15
 214:	c5 7e 6f db          	vmovdqu %ymm3,%ymm11
 218:	0f                   	.byte 0xf
 219:	1f                   	(bad)
 21a:	84                   	.byte 0x84

000000000000021b <$LN41>:
 21b:	00 00                	add    %al,(%rax)
 21d:	00 00                	add    %al,(%rax)
 21f:	00 41 0f             	add    %al,0xf(%rcx)
 222:	b6 4f                	mov    $0x4f,%dh
 224:	ff 0f                	decl   (%rdi)
 226:	b6 46                	mov    $0x46,%dh
 228:	fe 44 8b c9          	incb   -0x37(%rbx,%rcx,4)
 22c:	c4 e2 7d 58 46 1e    	vpbroadcastd 0x1e(%rsi),%ymm0
 232:	c4 e2 7d 00 0d 00 00 	vpshufb 0x0(%rip),%ymm0,%ymm1        # 23b <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x23b>
 239:	00 00 
 23b:	c4 c2 7d 79 2c 24    	vpbroadcastw (%r12),%ymm5
 241:	c4 c2 7d 79 7c 24 02 	vpbroadcastw 0x2(%r12),%ymm7
 248:	c4 c1 75 db d1       	vpand  %ymm9,%ymm1,%ymm2
 24d:	44 8b c1             	mov    %ecx,%r8d
 250:	8b d1                	mov    %ecx,%edx
 252:	83 e2 30             	and    $0x30,%edx
 255:	41 83 e1 03          	and    $0x3,%r9d
 259:	c4 c1 6d 74 d9       	vpcmpeqb %ymm9,%ymm2,%ymm3
 25e:	c5 e5 ef 47 e0       	vpxor  -0x20(%rdi),%ymm3,%ymm0
 263:	c5 fd f8 d3          	vpsubb %ymm3,%ymm0,%ymm2
 267:	41 83 e0 0c          	and    $0xc,%r8d
 26b:	c1 e2 04             	shl    $0x4,%edx
 26e:	41 c1 e1 08          	shl    $0x8,%r9d
 272:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 278:	4c 0b c8             	or     %rax,%r9
 27b:	41 c1 e0 06          	shl    $0x6,%r8d
 27f:	0f b6 46 ff          	movzbl -0x1(%rsi),%eax
 283:	4c 0b c0             	or     %rax,%r8
 286:	c1 e1 02             	shl    $0x2,%ecx
 289:	0f b6 06             	movzbl (%rsi),%eax
 28c:	48 0b d0             	or     %rax,%rdx
 28f:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
 293:	48 0b c8             	or     %rax,%rcx
 296:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 29d <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x29d>
 29d:	c4 a1 7a 7e 0c c8    	vmovq  (%rax,%r9,8),%xmm1
 2a3:	c4 a3 f1 22 0c c0 01 	vpinsrq $0x1,(%rax,%r8,8),%xmm1,%xmm1
 2aa:	c5 fa 7e 04 d0       	vmovq  (%rax,%rdx,8),%xmm0
 2af:	c4 e3 f9 22 04 c8 01 	vpinsrq $0x1,(%rax,%rcx,8),%xmm0,%xmm0
 2b6:	41                   	rex.B
 2b7:	0f                   	.byte 0xf

00000000000002b8 <$LN99>:
 2b8:	b6 0f                	mov    $0xf,%dh
 2ba:	48 8b 55 08          	mov    0x8(%rbp),%rdx
 2be:	44 8b c9             	mov    %ecx,%r9d
 2c1:	c4 e3 75 18 c0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm0
 2c7:	c4 e2 7d 04 ca       	vpmaddubsw %ymm2,%ymm0,%ymm1
 2cc:	44 8b c1             	mov    %ecx,%r8d
 2cf:	41 83 e1 03          	and    $0x3,%r9d
 2d3:	0f b6 44 32 02       	movzbl 0x2(%rdx,%rsi,1),%eax
 2d8:	41                   	rex.B
 2d9:	83                   	.byte 0x83
 2da:	e0                   	.byte 0xe0

00000000000002db <$LN30>:
 2db:	0c c4                	or     $0xc4,%al
 2dd:	e2 7d                	loop   35c <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x35c>
 2df:	58                   	pop    %rax
 2e0:	44 32 22             	xor    (%rdx),%r12b
 2e3:	8b d1                	mov    %ecx,%edx
 2e5:	41 c1 e1 08          	shl    $0x8,%r9d
 2e9:	4c 0b c8             	or     %rax,%r9
 2ec:	41 c1 e0 06          	shl    $0x6,%r8d
 2f0:	0f b6 44 33 03       	movzbl 0x3(%rbx,%rsi,1),%eax
 2f5:	83                   	.byte 0x83

00000000000002f6 <$LN44>:
 2f6:	e2 30                	loop   328 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x328>
 2f8:	4c 0b c0             	or     %rax,%r8
 2fb:	c1 e2 04             	shl    $0x4,%edx
 2fe:	48 8b 45 08          	mov    0x8(%rbp),%rax
 302:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 308:	c4 e2 25 00 e5       	vpshufb %ymm5,%ymm11,%ymm4
 30d:	c5 f5 f5 d4          	vpmaddwd %ymm4,%ymm1,%ymm2
 311:	c4 e2 7d 00 0d 00 00 	vpshufb 0x0(%rip),%ymm0,%ymm1        # 31a <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x31a>
 318:	00 00 
 31a:	0f b6 44 30 04       	movzbl 0x4(%rax,%rsi,1),%eax
 31f:	48 0b d0             	or     %rax,%rdx
 322:	c1 e1 02             	shl    $0x2,%ecx
 325:	48 8b 45 08          	mov    0x8(%rbp),%rax
 329:	c4 41 6d fe e4       	vpaddd %ymm12,%ymm2,%ymm12
 32e:	c4 c1 75 db d1       	vpand  %ymm9,%ymm1,%ymm2
 333:	c4 c1 6d 74 d9       	vpcmpeqb %ymm9,%ymm2,%ymm3
 338:	c5 e5 ef 07          	vpxor  (%rdi),%ymm3,%ymm0
 33c:	0f b6 44 30 05       	movzbl 0x5(%rax,%rsi,1),%eax
 341:	c5 fd f8 d3          	vpsubb %ymm3,%ymm0,%ymm2
 345:	48 0b c8             	or     %rax,%rcx
 348:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 34f <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x34f>
 34f:	c4 a1 7a 7e 0c c8    	vmovq  (%rax,%r9,8),%xmm1
 355:	c4 a3 f1 22 0c c0 01 	vpinsrq $0x1,(%rax,%r8,8),%xmm1,%xmm1
 35c:	c5 fa 7e 04 d0       	vmovq  (%rax,%rdx,8),%xmm0
 361:	c4 e3 f9 22 04 c8 01 	vpinsrq $0x1,(%rax,%rcx,8),%xmm0,%xmm0
 368:	c4 e3 75 18 c0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm0
 36e:	c4 e2 7d 04 ca       	vpmaddubsw %ymm2,%ymm0,%ymm1
 373:	c4 c2 7d 58 44 33 1e 	vpbroadcastd 0x1e(%r11,%rsi,1),%ymm0
 37a:	c4 e2 25 00 e7       	vpshufb %ymm7,%ymm11,%ymm4
 37f:	c5 f5 f5 d4          	vpmaddwd %ymm4,%ymm1,%ymm2
 383:	c4 e2 7d 00 0d 00 00 	vpshufb 0x0(%rip),%ymm0,%ymm1        # 38c <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x38c>
 38a:	00 00 
 38c:	c4 41 6d fe ed       	vpaddd %ymm13,%ymm2,%ymm13
 391:	c4 c1 75 db d1       	vpand  %ymm9,%ymm1,%ymm2
 396:	c4 c1 6d 74 d9       	vpcmpeqb %ymm9,%ymm2,%ymm3
 39b:	43 0f b6 4c 3b ff    	movzbl -0x1(%r11,%r15,1),%ecx
 3a1:	4d 8d 64 24 04       	lea    0x4(%r12),%r12
 3a6:	41 0f b6 44 33 fe    	movzbl -0x2(%r11,%rsi,1),%eax
 3ac:	44 8b c9             	mov    %ecx,%r9d
 3af:	44 8b c1             	mov    %ecx,%r8d
 3b2:	8b d1                	mov    %ecx,%edx
 3b4:	41 83 e1 03          	and    $0x3,%r9d
 3b8:	41 83 e0 0c          	and    $0xc,%r8d
 3bc:	41 c1 e1 08          	shl    $0x8,%r9d
 3c0:	83 e2 30             	and    $0x30,%edx
 3c3:	41 c1 e0 06          	shl    $0x6,%r8d
 3c7:	4c 0b c8             	or     %rax,%r9
 3ca:	41 0f b6 44 33 ff    	movzbl -0x1(%r11,%rsi,1),%eax
 3d0:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 3d6:	c1 e2 04             	shl    $0x4,%edx
 3d9:	4c 0b c0             	or     %rax,%r8
 3dc:	41 0f b6 04 33       	movzbl (%r11,%rsi,1),%eax
 3e1:	48 8d 76 08          	lea    0x8(%rsi),%rsi
 3e5:	c1 e1 02             	shl    $0x2,%ecx
 3e8:	48 0b d0             	or     %rax,%rdx
 3eb:	41 0f b6 44 36 f9    	movzbl -0x7(%r14,%rsi,1),%eax
 3f1:	4d 8d 7f 02          	lea    0x2(%r15),%r15
 3f5:	48 0b c8             	or     %rax,%rcx
 3f8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3ff <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x3ff>
 3ff:	c4 a1 7a 7e 0c c8    	vmovq  (%rax,%r9,8),%xmm1
 405:	c4 a3 f1 22 0c c0 01 	vpinsrq $0x1,(%rax,%r8,8),%xmm1,%xmm1
 40c:	c5 e5 ef 47 e0       	vpxor  -0x20(%rdi),%ymm3,%ymm0
 411:	48 8d 7f 40          	lea    0x40(%rdi),%rdi
 415:	c5 fd f8 d3          	vpsubb %ymm3,%ymm0,%ymm2
 419:	c5 fa 7e 04 d0       	vmovq  (%rax,%rdx,8),%xmm0
 41e:	c4 e3 f9 22 04 c8 01 	vpinsrq $0x1,(%rax,%rcx,8),%xmm0,%xmm0
 425:	43 0f b6 4c 3b fe    	movzbl -0x2(%r11,%r15,1),%ecx
 42b:	42 0f b6 44 2e fa    	movzbl -0x6(%rsi,%r13,1),%eax
 431:	44 8b c9             	mov    %ecx,%r9d
 434:	c4 e3 75 18 c0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm0
 43a:	c4 e2 7d 04 ca       	vpmaddubsw %ymm2,%ymm0,%ymm1
 43f:	c4 a2 7d 58 44 2e 1a 	vpbroadcastd 0x1a(%rsi,%r13,1),%ymm0
 446:	44 8b c1             	mov    %ecx,%r8d
 449:	8b d1                	mov    %ecx,%edx
 44b:	41 83 e1 03          	and    $0x3,%r9d
 44f:	41 83 e0 0c          	and    $0xc,%r8d
 453:	83 e2 30             	and    $0x30,%edx
 456:	41 c1 e1 08          	shl    $0x8,%r9d
 45a:	4c 0b c8             	or     %rax,%r9
 45d:	41 c1 e0 06          	shl    $0x6,%r8d
 461:	42 0f b6 44 2e fb    	movzbl -0x5(%rsi,%r13,1),%eax
 467:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
 46d:	4c 0b c0             	or     %rax,%r8
 470:	c1 e2 04             	shl    $0x4,%edx
 473:	42 0f b6 44 2e fc    	movzbl -0x4(%rsi,%r13,1),%eax
 479:	48                   	rex.W
 47a:	0b                   	.byte 0xb

000000000000047b <$LN111>:
 47b:	d0 c1                	rol    $1,%cl

000000000000047d <$LN67>:
 47d:	e1 02                	loope  481 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x481>
 47f:	42 0f b6 44 2e fd    	movzbl -0x3(%rsi,%r13,1),%eax
 485:	48 0b c8             	or     %rax,%rcx
 488:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 48f <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x48f>
 48f:	c4 e2 2d 00 e5       	vpshufb %ymm5,%ymm10,%ymm4
 494:	c5 f5 f5 d4          	vpmaddwd %ymm4,%ymm1,%ymm2
 498:	c4 e2 7d 00 0d 00 00 	vpshufb 0x0(%rip),%ymm0,%ymm1        # 4a1 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x4a1>
 49f:	00 00 
 4a1:	c4 41 6d fe f6       	vpaddd %ymm14,%ymm2,%ymm14
 4a6:	c4 c1 75 db d1       	vpand  %ymm9,%ymm1,%ymm2
 4ab:	c4 a1 7a 7e 0c c8    	vmovq  (%rax,%r9,8),%xmm1
 4b1:	c4 a3 f1 22 0c c0 01 	vpinsrq $0x1,(%rax,%r8,8),%xmm1,%xmm1
 4b8:	c4 c1 6d 74 d9       	vpcmpeqb %ymm9,%ymm2,%ymm3
 4bd:	c5 e5 ef 47 c0       	vpxor  -0x40(%rdi),%ymm3,%ymm0
 4c2:	c5 fd f8 d3          	vpsubb %ymm3,%ymm0,%ymm2
 4c6:	c5 fa 7e 04 d0       	vmovq  (%rax,%rdx,8),%xmm0
 4cb:	c4 e3 f9 22 04 c8 01 	vpinsrq $0x1,(%rax,%rcx,8),%xmm0,%xmm0
 4d2:	c4 e3 75 18 c0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm0
 4d8:	c4 e2 7d 04 ca       	vpmaddubsw %ymm2,%ymm0,%ymm1
 4dd:	c4 e2 2d 00 e7       	vpshufb %ymm7,%ymm10,%ymm4
 4e2:	c5 f5 f5 d4          	vpmaddwd %ymm4,%ymm1,%ymm2
 4e6:	c4 41 6d fe ff       	vpaddd %ymm15,%ymm2,%ymm15
 4eb:	49 83 ea 01          	sub    $0x1,%r10
 4ef:	0f 85 2b fd ff ff    	jne    220 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x220>
 4f5:	4c 8b 55 28          	mov    0x28(%rbp),%r10
 4f9:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 500 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x500>
 500:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
 504:	c5 7c 10 8d 80 00 00 	vmovups 0x80(%rbp),%ymm9
 50b:	00 
 50c:	4c 8b 6d 40          	mov    0x40(%rbp),%r13
 510:	41 0f b7 02          	movzwl (%r10),%eax
 514:	4c 8b 65 48          	mov    0x48(%rbp),%r12
 518:	c5 7c 10 95 a0 00 00 	vmovups 0xa0(%rbp),%ymm10
 51f:	00 
 520:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
 524:	4d 8d 6d 52          	lea    0x52(%r13),%r13
 528:	4c 8b 45 20          	mov    0x20(%rbp),%r8
 52c:	4c 8b 4d 18          	mov    0x18(%rbp),%r9
 530:	4d 8d 64 24 52       	lea    0x52(%r12),%r12
 535:	48 8b 5d 10          	mov    0x10(%rbp),%rbx
 539:	c4 c1 15 fe c4       	vpaddd %ymm12,%ymm13,%ymm0
 53e:	c5 fc 5b d8          	vcvtdq2ps %ymm0,%ymm3
 542:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 546:	43 0f b7 04 1a       	movzwl (%r10,%r11,1),%eax
 54b:	49 83 c2 52          	add    $0x52,%r10
 54f:	c4 e2 79 13 c1       	vcvtph2ps %xmm1,%xmm0
 554:	c5 fa 59 17          	vmulss (%rdi),%xmm0,%xmm2
 558:	c4 e2 7d 18 d2       	vbroadcastss %xmm2,%ymm2
 55d:	c4 62 6d b8 cb       	vfmadd231ps %ymm3,%ymm2,%ymm9
 562:	c4 c1 05 fe c6       	vpaddd %ymm14,%ymm15,%ymm0
 567:	c5 fc 5b d8          	vcvtdq2ps %ymm0,%ymm3
 56b:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 56f:	c4 e2 79 13 c1       	vcvtph2ps %xmm1,%xmm0
 574:	c5 fa 59 17          	vmulss (%rdi),%xmm0,%xmm2
 578:	48 81 c7 24 01 00 00 	add    $0x124,%rdi
 57f:	4c 89 55 28          	mov    %r10,0x28(%rbp)
 583:	48 83 6d 38 01       	subq   $0x1,0x38(%rbp)
 588:	c4 e2 7d 18 d2       	vbroadcastss %xmm2,%ymm2
 58d:	c4 62 6d b8 d3       	vfmadd231ps %ymm3,%ymm2,%ymm10
 592:	c5 7c 11 95 a0 00 00 	vmovups %ymm10,0xa0(%rbp)
 599:	00 
 59a:	c5 7c 11 8d 80 00 00 	vmovups %ymm9,0x80(%rbp)
 5a1:	00 
 5a2:	48 89 7d 30          	mov    %rdi,0x30(%rbp)
 5a6:	4c 89 6d 40          	mov    %r13,0x40(%rbp)
 5aa:	4c 89 65 48          	mov    %r12,0x48(%rbp)
 5ae:	0f 85 8c fb ff ff    	jne    140 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x140>
 5b4:	c5 7a 10 05 00 00 00 	vmovss 0x0(%rip),%xmm8        # 5bc <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x5bc>
 5bb:	00 
 5bc:	48 8b bc 24 30 02 00 	mov    0x230(%rsp),%rdi
 5c3:	00 
 5c4:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 5cb <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x5cb>
 5cb:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
 5d1:	c4 c1 78 58 c9       	vaddps %xmm9,%xmm0,%xmm1
 5d6:	c5 f0 12 c1          	vmovhlps %xmm1,%xmm1,%xmm0
 5da:	c5 f8 58 d1          	vaddps %xmm1,%xmm0,%xmm2
 5de:	c5 fa 16 ca          	vmovshdup %xmm2,%xmm1
 5e2:	c5 ea 58 d1          	vaddss %xmm1,%xmm2,%xmm2
 5e6:	c4 63 7d 19 d0 01    	vextractf128 $0x1,%ymm10,%xmm0
 5ec:	c4 c1 78 58 ca       	vaddps %xmm10,%xmm0,%xmm1
 5f1:	c5 f0 12 c1          	vmovhlps %xmm1,%xmm1,%xmm0
 5f5:	c5 f8 58 f1          	vaddps %xmm1,%xmm0,%xmm6
 5f9:	c5 fa 16 ce          	vmovshdup %xmm6,%xmm1
 5fd:	c4 c1 6a 59 f8       	vmulss %xmm8,%xmm2,%xmm7
 602:	c5 c0 57 05 00 00 00 	vxorps 0x0(%rip),%xmm7,%xmm0        # 60a <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x60a>
 609:	00 
 60a:	c5 ca 58 f1          	vaddss %xmm1,%xmm6,%xmm6
 60e:	c5 f8 77             	vzeroupper
 611:	e8 00 00 00 00       	call   616 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x616>
 616:	4c 8b 55 50          	mov    0x50(%rbp),%r10
 61a:	48 03 df             	add    %rdi,%rbx
 61d:	c5 fa 58 0d 00 00 00 	vaddss 0x0(%rip),%xmm0,%xmm1        # 625 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0x625>
 624:	00 
 625:	48 8b 84 24 50 02 00 	mov    0x250(%rsp),%rax
 62c:	00 
 62d:	4c 8b 4d 18          	mov    0x18(%rbp),%r9
 631:	4c 8b 45 20          	mov    0x20(%rbp),%r8
 635:	4c 2b cf             	sub    %rdi,%r9
 638:	4c 03 84 24 38 02 00 	add    0x238(%rsp),%r8
 63f:	00 
 640:	c5 c2 5e d9          	vdivss %xmm1,%xmm7,%xmm3
 644:	c4 c1 4a 59 d0       	vmulss %xmm8,%xmm6,%xmm2
 649:	c5 e2 59 c2          	vmulss %xmm2,%xmm3,%xmm0
 64d:	c4 a1 7a 11 04 90    	vmovss %xmm0,(%rax,%r10,4)
 653:	48 63 84 24 60 02 00 	movslq 0x260(%rsp),%rax
 65a:	00 
 65b:	49 ff c2             	inc    %r10
 65e:	4c 3b d0             	cmp    %rax,%r10
 661:	4c 89 55 50          	mov    %r10,0x50(%rbp)
 665:	8b 45 00             	mov    0x0(%rbp),%eax
 668:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
 66c:	4c 89 4d 18          	mov    %r9,0x18(%rbp)
 670:	4c 89 45 20          	mov    %r8,0x20(%rbp)
 674:	0f 8c 66 fa ff ff    	jl     e0 <?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z+0xe0>
 67a:	4c 8d 9c 24 e0 01 00 	lea    0x1e0(%rsp),%r11
 681:	00 
 682:	49 8b 5b 40          	mov    0x40(%r11),%rbx
 686:	c4 c1 78 28 73 f0    	vmovaps -0x10(%r11),%xmm6
 68c:	c4 c1 78 28 7b e0    	vmovaps -0x20(%r11),%xmm7
 692:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 698:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 69e:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 6a4:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 6aa:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 6b0:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 6b6:	c4 41 78 28 b3 70 ff 	vmovaps -0x90(%r11),%xmm14
 6bd:	ff ff 
 6bf:	c4 41 78 28 bb 60 ff 	vmovaps -0xa0(%r11),%xmm15
 6c6:	ff ff 
 6c8:	49 8b e3             	mov    %r11,%rsp
 6cb:	41 5f                	pop    %r15
 6cd:	41 5e                	pop    %r14
 6cf:	41 5d                	pop    %r13
 6d1:	41 5c                	pop    %r12
 6d3:	5f                   	pop    %rdi
 6d4:	5e                   	pop    %rsi
 6d5:	5d                   	pop    %rbp
 6d6:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?sc16@?A0x5752bc9f@@YA?AT__m256i@@HH@Z>:
   0:	0f bf c2             	movswl %dx,%eax
   3:	c5 f9 6e c8          	vmovd  %eax,%xmm1
   7:	0f bf c1             	movswl %cx,%eax
   a:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   e:	c4 e2 79 79 c0       	vpbroadcastw %xmm0,%xmm0
  13:	c4 e2 79 79 c9       	vpbroadcastw %xmm1,%xmm1
  18:	c4 e3 7d 38 c1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm0
  1e:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?sc32@?A0x5752bc9f@@YA?AT__m256i@@H@Z>:
   0:	0f bf c1             	movswl %cx,%eax
   3:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   7:	c4 e2 7d 79 c0       	vpbroadcastw %xmm0,%ymm0
   c:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?sgn_vec@?A0x5752bc9f@@YA?AT__m256i@@I@Z>:
   0:	c5 f9 6e c1          	vmovd  %ecx,%xmm0
   4:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
   9:	c4 e2 79 00 0d 00 00 	vpshufb 0x0(%rip),%xmm0,%xmm1        # 12 <?sgn_vec@?A0x5752bc9f@@YA?AT__m256i@@I@Z+0x12>
  10:	00 00 
  12:	c4 e2 79 00 05 00 00 	vpshufb 0x0(%rip),%xmm0,%xmm0        # 1b <?sgn_vec@?A0x5752bc9f@@YA?AT__m256i@@I@Z+0x1b>
  19:	00 00 
  1b:	c4 e3 7d 38 c9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm1
  21:	c5 f5 db 15 00 00 00 	vpand  0x0(%rip),%ymm1,%ymm2        # 29 <?sgn_vec@?A0x5752bc9f@@YA?AT__m256i@@I@Z+0x29>
  28:	00 
  29:	c5 ed 74 1d 00 00 00 	vpcmpeqb 0x0(%rip),%ymm2,%ymm3        # 31 <?sgn_vec@?A0x5752bc9f@@YA?AT__m256i@@I@Z+0x31>
  30:	00 
  31:	c5 e5 eb 05 00 00 00 	vpor   0x0(%rip),%ymm3,%ymm0        # 39 <?sgn_vec@?A0x5752bc9f@@YA?AT__m256i@@I@Z+0x39>
  38:	00 
  39:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?u16@?A0x5752bc9f@@YAGPEBE@Z>:
   0:	0f b7 01             	movzwl (%rcx),%eax
   3:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?u32@?A0x5752bc9f@@YAIPEBE@Z>:
   0:	8b 01                	mov    (%rcx),%eax
   2:	c3                   	ret

Disassembly of section .text$mn:

0000000000000000 <?u64@?A0x5752bc9f@@YA_KPEBE@Z>:
   0:	48 8b 01             	mov    (%rcx),%rax
   3:	c3                   	ret
