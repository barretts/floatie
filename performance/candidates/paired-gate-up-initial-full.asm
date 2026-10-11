
E:\poolside\build\ggml\src\CMakeFiles\ggml-cpu.dir\ggml-cpu\moe-iq.cpp.obj:     file format pe-bigobj-x86-64


Disassembly of section .drectve:

0000000000000000 <.drectve>:
   0:	20 20                	and    %ah,(%rax)
   2:	20 2f                	and    %ch,(%rdi)
   4:	46                   	rex.RX
   5:	41                   	rex.B
   6:	49                   	rex.WB
   7:	4c                   	rex.WR
   8:	49                   	rex.WB
   9:	46                   	rex.RX
   a:	4d                   	rex.WRB
   b:	49 53                	rex.WB push %r11
   d:	4d                   	rex.WRB
   e:	41 54                	push   %r12
  10:	43                   	rex.XB
  11:	48 3a 22             	rex.W cmp (%rdx),%spl
  14:	5f                   	pop    %rdi
  15:	43 52                	rex.XB push %r10
  17:	54                   	push   %rsp
  18:	5f                   	pop    %rdi
  19:	53                   	push   %rbx
  1a:	54                   	push   %rsp
  1b:	44                   	rex.R
  1c:	49                   	rex.WB
  1d:	4f 5f                	rex.WRXB pop %r15
  1f:	49 53                	rex.WB push %r11
  21:	4f 5f                	rex.WRXB pop %r15
  23:	57                   	push   %rdi
  24:	49                   	rex.WB
  25:	44                   	rex.R
  26:	45 5f                	rex.RB pop %r15
  28:	53                   	push   %rbx
  29:	50                   	push   %rax
  2a:	45                   	rex.RB
  2b:	43                   	rex.XB
  2c:	49                   	rex.WB
  2d:	46                   	rex.RX
  2e:	49                   	rex.WB
  2f:	45 52                	rex.RB push %r10
  31:	53                   	push   %rbx
  32:	3d 30 22 20 2f       	cmp    $0x2f202230,%eax
  37:	46                   	rex.RX
  38:	41                   	rex.B
  39:	49                   	rex.WB
  3a:	4c                   	rex.WR
  3b:	49                   	rex.WB
  3c:	46                   	rex.RX
  3d:	4d                   	rex.WRB
  3e:	49 53                	rex.WB push %r11
  40:	4d                   	rex.WRB
  41:	41 54                	push   %r12
  43:	43                   	rex.XB
  44:	48 3a 22             	rex.W cmp (%rdx),%spl
  47:	5f                   	pop    %rdi
  48:	4d 53                	rex.WRB push %r11
  4a:	43 5f                	rex.XB pop %r15
  4c:	56                   	push   %rsi
  4d:	45 52                	rex.RB push %r10
  4f:	3d 31 39 30 30       	cmp    $0x30303931,%eax
  54:	22 20                	and    (%rax),%ah
  56:	2f                   	(bad)
  57:	46                   	rex.RX
  58:	41                   	rex.B
  59:	49                   	rex.WB
  5a:	4c                   	rex.WR
  5b:	49                   	rex.WB
  5c:	46                   	rex.RX
  5d:	4d                   	rex.WRB
  5e:	49 53                	rex.WB push %r11
  60:	4d                   	rex.WRB
  61:	41 54                	push   %r12
  63:	43                   	rex.XB
  64:	48 3a 22             	rex.W cmp (%rdx),%spl
  67:	5f                   	pop    %rdi
  68:	49 54                	rex.WB push %r12
  6a:	45 52                	rex.RB push %r10
  6c:	41 54                	push   %r12
  6e:	4f 52                	rex.WRXB push %r10
  70:	5f                   	pop    %rdi
  71:	44                   	rex.R
  72:	45                   	rex.RB
  73:	42 55                	rex.X push %rbp
  75:	47 5f                	rex.RXB pop %r15
  77:	4c                   	rex.WR
  78:	45 56                	rex.RB push %r14
  7a:	45                   	rex.RB
  7b:	4c 3d 30 22 20 2f    	rex.WR cmp $0x2f202230,%rax
  81:	46                   	rex.RX
  82:	41                   	rex.B
  83:	49                   	rex.WB
  84:	4c                   	rex.WR
  85:	49                   	rex.WB
  86:	46                   	rex.RX
  87:	4d                   	rex.WRB
  88:	49 53                	rex.WB push %r11
  8a:	4d                   	rex.WRB
  8b:	41 54                	push   %r12
  8d:	43                   	rex.XB
  8e:	48 3a 22             	rex.W cmp (%rdx),%spl
  91:	52                   	push   %rdx
  92:	75 6e                	jne    102 <.drectve+0x102>
  94:	74 69                	je     ff <.drectve+0xff>
  96:	6d                   	insl   (%dx),(%rdi)
  97:	65 4c 69 62 72 61 72 	imul   $0x3d797261,%gs:0x72(%rdx),%r12
  9e:	79 3d 
  a0:	4d                   	rex.WRB
  a1:	44 5f                	rex.R pop %rdi
  a3:	44 79 6e             	rex.R jns 114 <@vol.md+0x111>
  a6:	61                   	(bad)
  a7:	6d                   	insl   (%dx),(%rdi)
  a8:	69 63 52 65 6c 65 61 	imul   $0x61656c65,0x52(%rbx),%esp
  af:	73 65                	jae    116 <@vol.md+0x113>
  b1:	22 20                	and    (%rax),%ah
  b3:	2f                   	(bad)
  b4:	44                   	rex.R
  b5:	45                   	rex.RB
  b6:	46                   	rex.RX
  b7:	41 55                	push   %r13
  b9:	4c 54                	rex.WR push %rsp
  bb:	4c                   	rex.WR
  bc:	49                   	rex.WB
  bd:	42 3a 22             	rex.X cmp (%rdx),%spl
  c0:	6d                   	insl   (%dx),(%rdi)
  c1:	73 76                	jae    139 <@vol.md+0x136>
  c3:	63 70 72             	movsxd 0x72(%rax),%esi
  c6:	74 22                	je     ea <.drectve+0xea>
  c8:	20 2f                	and    %ch,(%rdi)
  ca:	44                   	rex.R
  cb:	45                   	rex.RB
  cc:	46                   	rex.RX
  cd:	41 55                	push   %r13
  cf:	4c 54                	rex.WR push %rsp
  d1:	4c                   	rex.WR
  d2:	49                   	rex.WB
  d3:	42 3a 22             	rex.X cmp (%rdx),%spl
  d6:	4d 53                	rex.WRB push %r11
  d8:	56                   	push   %rsi
  d9:	43 52                	rex.XB push %r10
  db:	54                   	push   %rsp
  dc:	22 20                	and    (%rax),%ah
  de:	2f                   	(bad)
  df:	44                   	rex.R
  e0:	45                   	rex.RB
  e1:	46                   	rex.RX
  e2:	41 55                	push   %r13
  e4:	4c 54                	rex.WR push %rsp
  e6:	4c                   	rex.WR
  e7:	49                   	rex.WB
  e8:	42 3a 22             	rex.X cmp (%rdx),%spl
  eb:	4f                   	rex.WRXB
  ec:	4c                   	rex.WR
  ed:	44                   	rex.R
  ee:	4e                   	rex.WRX
  ef:	41                   	rex.B
  f0:	4d                   	rex.WRB
  f1:	45 53                	rex.RB push %r11
  f3:	22 20                	and    (%rax),%ah
  f5:	2f                   	(bad)
  f6:	44                   	rex.R
  f7:	45                   	rex.RB
  f8:	46                   	rex.RX
  f9:	41 55                	push   %r13
  fb:	4c 54                	rex.WR push %rsp
  fd:	4c                   	rex.WR
  fe:	49                   	rex.WB
  ff:	42 3a 22             	rex.X cmp (%rdx),%spl
 102:	56                   	push   %rsi
 103:	43                   	rex.XB
 104:	4f                   	rex.WRXB
 105:	4d 50                	rex.WRB push %r8
 107:	22 20                	and    (%rax),%ah

Disassembly of section .debug$S:

0000000000000000 <.debug$S>:
   0:	04 00                	add    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	f1                   	int1
   5:	00 00                	add    %al,(%rax)
   7:	00 8f 00 00 00 51    	add    %cl,0x51000000(%rdi)
   d:	00 01                	add    %al,(%rcx)
   f:	11 00                	adc    %eax,(%rax)
  11:	00 00                	add    %al,(%rax)
  13:	00 45 3a             	add    %al,0x3a(%rbp)
  16:	5c                   	pop    %rsp
  17:	70 6f                	jo     88 <.debug$S+0x88>
  19:	6f                   	outsl  (%rsi),(%dx)
  1a:	6c                   	insb   (%dx),(%rdi)
  1b:	73 69                	jae    86 <.debug$S+0x86>
  1d:	64 65 5c             	fs gs pop %rsp
  20:	62 75 69 6c 64       	(bad)
  25:	5c                   	pop    %rsp
  26:	67 67 6d             	addr32 insl (%dx),(%edi)
  29:	6c                   	insb   (%dx),(%rdi)
  2a:	5c                   	pop    %rsp
  2b:	73 72                	jae    9f <@vol.md+0x9c>
  2d:	63 5c 43 4d          	movsxd 0x4d(%rbx,%rax,2),%ebx
  31:	61                   	(bad)
  32:	6b 65 46 69          	imul   $0x69,0x46(%rbp),%esp
  36:	6c                   	insb   (%dx),(%rdi)
  37:	65 73 5c             	gs jae 96 <.debug$S+0x96>
  3a:	67 67 6d             	addr32 insl (%dx),(%edi)
  3d:	6c                   	insb   (%dx),(%rdi)
  3e:	2d 63 70 75 2e       	sub    $0x2e757063,%eax
  43:	64 69 72 5c 67 67 6d 	imul   $0x6c6d6767,%fs:0x5c(%rdx),%esi
  4a:	6c 
  4b:	2d 63 70 75 5c       	sub    $0x5c757063,%eax
  50:	6d                   	insl   (%dx),(%rdi)
  51:	6f                   	outsl  (%rsi),(%dx)
  52:	65 2d 69 71 2e 63    	gs sub $0x632e7169,%eax
  58:	70 70                	jo     ca <@vol.md+0xc7>
  5a:	2e 6f                	cs outsl (%rsi),(%dx)
  5c:	62 6a 00 3a 00       	(bad)
  61:	3c 11                	cmp    $0x11,%al
  63:	01 62 00             	add    %esp,0x0(%rdx)
  66:	00 d0                	add    %dl,%al
  68:	00 13                	add    %dl,(%rbx)
  6a:	00 2c 00             	add    %ch,(%rax,%rax,1)
  6d:	98                   	cwtl
  6e:	89 00                	mov    %eax,(%rax)
  70:	00 13                	add    %dl,(%rbx)
  72:	00 2c 00             	add    %ch,(%rax,%rax,1)
  75:	98                   	cwtl
  76:	89 00                	mov    %eax,(%rax)
  78:	00 4d 69             	add    %cl,0x69(%rbp)
  7b:	63 72 6f             	movsxd 0x6f(%rdx),%esi
  7e:	73 6f                	jae    ef <@vol.md+0xec>
  80:	66 74 20             	data16 je a3 <@vol.md+0xa0>
  83:	28 52 29             	sub    %dl,0x29(%rdx)
  86:	20 4f 70             	and    %cl,0x70(%rdi)
  89:	74 69                	je     f4 <@vol.md+0xf1>
  8b:	6d                   	insl   (%dx),(%rdi)
  8c:	69 7a 69 6e 67 20 43 	imul   $0x4320676e,0x69(%rdx),%edi
  93:	6f                   	outsl  (%rsi),(%dx)
  94:	6d                   	insl   (%dx),(%rdi)
  95:	70 69                	jo     100 <@vol.md+0xfd>
  97:	6c                   	insb   (%dx),(%rdi)
  98:	65 72 00             	gs jb  9b <.debug$S+0x9b>
	...

Disassembly of section .rdata:

0000000000000000 <?iq2s_grid@@3QB_KB>:
       0:	08 08                	or     %cl,(%rax)
       2:	08 08                	or     %cl,(%rax)
       4:	08 08                	or     %cl,(%rax)
       6:	08 08                	or     %cl,(%rax)
       8:	2b 08                	sub    (%rax),%ecx
       a:	08 08                	or     %cl,(%rax)
       c:	08 08                	or     %cl,(%rax)
       e:	08 08                	or     %cl,(%rax)
      10:	19 19                	sbb    %ebx,(%rcx)
      12:	08 08                	or     %cl,(%rax)
      14:	08 08                	or     %cl,(%rax)
      16:	08 08                	or     %cl,(%rax)
      18:	08 2b                	or     %ch,(%rbx)
      1a:	08 08                	or     %cl,(%rax)
      1c:	08 08                	or     %cl,(%rax)
      1e:	08 08                	or     %cl,(%rax)
      20:	2b 2b                	sub    (%rbx),%ebp
      22:	08 08                	or     %cl,(%rax)
      24:	08 08                	or     %cl,(%rax)
      26:	08 08                	or     %cl,(%rax)
      28:	19 08                	sbb    %ecx,(%rax)
      2a:	19 08                	sbb    %ecx,(%rax)
      2c:	08 08                	or     %cl,(%rax)
      2e:	08 08                	or     %cl,(%rax)
      30:	08 19                	or     %bl,(%rcx)
      32:	19 08                	sbb    %ecx,(%rax)
      34:	08 08                	or     %cl,(%rax)
      36:	08 08                	or     %cl,(%rax)
      38:	2b 19                	sub    (%rcx),%ebx
      3a:	19 08                	sbb    %ecx,(%rax)
      3c:	08 08                	or     %cl,(%rax)
      3e:	08 08                	or     %cl,(%rax)
      40:	19 2b                	sbb    %ebp,(%rbx)
      42:	19 08                	sbb    %ecx,(%rax)
      44:	08 08                	or     %cl,(%rax)
      46:	08 08                	or     %cl,(%rax)
      48:	08 08                	or     %cl,(%rax)
      4a:	2b 08                	sub    (%rax),%ecx
      4c:	08 08                	or     %cl,(%rax)
      4e:	08 08                	or     %cl,(%rax)
      50:	2b 08                	sub    (%rax),%ecx
      52:	2b 08                	sub    (%rax),%ecx
      54:	08 08                	or     %cl,(%rax)
      56:	08 08                	or     %cl,(%rax)
      58:	19 19                	sbb    %ebx,(%rcx)
      5a:	2b 08                	sub    (%rax),%ecx
      5c:	08 08                	or     %cl,(%rax)
      5e:	08 08                	or     %cl,(%rax)
      60:	08 2b                	or     %ch,(%rbx)
      62:	2b 08                	sub    (%rax),%ecx
      64:	08 08                	or     %cl,(%rax)
      66:	08 08                	or     %cl,(%rax)
      68:	19 08                	sbb    %ecx,(%rax)
      6a:	08 19                	or     %bl,(%rcx)
      6c:	08 08                	or     %cl,(%rax)
      6e:	08 08                	or     %cl,(%rax)
      70:	08 19                	or     %bl,(%rcx)
      72:	08 19                	or     %bl,(%rcx)
      74:	08 08                	or     %cl,(%rax)
      76:	08 08                	or     %cl,(%rax)
      78:	2b 19                	sub    (%rcx),%ebx
      7a:	08 19                	or     %bl,(%rcx)
      7c:	08 08                	or     %cl,(%rax)
      7e:	08 08                	or     %cl,(%rax)
      80:	19 2b                	sbb    %ebp,(%rbx)
      82:	08 19                	or     %bl,(%rcx)
      84:	08 08                	or     %cl,(%rax)
      86:	08 08                	or     %cl,(%rax)
      88:	08 08                	or     %cl,(%rax)
      8a:	19 19                	sbb    %ebx,(%rcx)
      8c:	08 08                	or     %cl,(%rax)
      8e:	08 08                	or     %cl,(%rax)
      90:	2b 08                	sub    (%rax),%ecx
      92:	19 19                	sbb    %ebx,(%rcx)
      94:	08 08                	or     %cl,(%rax)
      96:	08 08                	or     %cl,(%rax)
      98:	19 19                	sbb    %ebx,(%rcx)
      9a:	19 19                	sbb    %ebx,(%rcx)
      9c:	08 08                	or     %cl,(%rax)
      9e:	08 08                	or     %cl,(%rax)
      a0:	08 2b                	or     %ch,(%rbx)
      a2:	19 19                	sbb    %ebx,(%rcx)
      a4:	08 08                	or     %cl,(%rax)
      a6:	08 08                	or     %cl,(%rax)
      a8:	19 08                	sbb    %ecx,(%rax)
      aa:	2b 19                	sub    (%rcx),%ebx
      ac:	08 08                	or     %cl,(%rax)
      ae:	08 08                	or     %cl,(%rax)
      b0:	08 19                	or     %bl,(%rcx)
      b2:	2b 19                	sub    (%rcx),%ebx
      b4:	08 08                	or     %cl,(%rax)
      b6:	08 08                	or     %cl,(%rax)
      b8:	2b 19                	sub    (%rcx),%ebx
      ba:	2b 19                	sub    (%rcx),%ebx
      bc:	08 08                	or     %cl,(%rax)
      be:	08 08                	or     %cl,(%rax)
      c0:	19 2b                	sbb    %ebp,(%rbx)
      c2:	2b 19                	sub    (%rcx),%ebx
      c4:	08 08                	or     %cl,(%rax)
      c6:	08 08                	or     %cl,(%rax)
      c8:	08 08                	or     %cl,(%rax)
      ca:	08 2b                	or     %ch,(%rbx)
      cc:	08 08                	or     %cl,(%rax)
      ce:	08 08                	or     %cl,(%rax)
      d0:	2b 08                	sub    (%rax),%ecx
      d2:	08 2b                	or     %ch,(%rbx)
      d4:	08 08                	or     %cl,(%rax)
      d6:	08 08                	or     %cl,(%rax)
      d8:	19 19                	sbb    %ebx,(%rcx)
      da:	08 2b                	or     %ch,(%rbx)
      dc:	08 08                	or     %cl,(%rax)
      de:	08 08                	or     %cl,(%rax)
      e0:	08 2b                	or     %ch,(%rbx)
      e2:	08 2b                	or     %ch,(%rbx)
      e4:	08 08                	or     %cl,(%rax)
      e6:	08 08                	or     %cl,(%rax)
      e8:	19 08                	sbb    %ecx,(%rax)
      ea:	19 2b                	sbb    %ebp,(%rbx)
      ec:	08 08                	or     %cl,(%rax)
      ee:	08 08                	or     %cl,(%rax)
      f0:	08 19                	or     %bl,(%rcx)
      f2:	19 2b                	sbb    %ebp,(%rbx)
      f4:	08 08                	or     %cl,(%rax)
      f6:	08 08                	or     %cl,(%rax)
      f8:	08 08                	or     %cl,(%rax)
      fa:	2b 2b                	sub    (%rbx),%ebp
      fc:	08 08                	or     %cl,(%rax)
      fe:	08 08                	or     %cl,(%rax)
     100:	19 19                	sbb    %ebx,(%rcx)
     102:	2b 2b                	sub    (%rbx),%ebp
     104:	08 08                	or     %cl,(%rax)
     106:	08 08                	or     %cl,(%rax)
     108:	2b 2b                	sub    (%rbx),%ebp
     10a:	2b 2b                	sub    (%rbx),%ebp
     10c:	08 08                	or     %cl,(%rax)
     10e:	08 08                	or     %cl,(%rax)
     110:	19 08                	sbb    %ecx,(%rax)
     112:	08 08                	or     %cl,(%rax)
     114:	19 08                	sbb    %ecx,(%rax)
     116:	08 08                	or     %cl,(%rax)
     118:	08 19                	or     %bl,(%rcx)
     11a:	08 08                	or     %cl,(%rax)
     11c:	19 08                	sbb    %ecx,(%rax)
     11e:	08 08                	or     %cl,(%rax)
     120:	2b 19                	sub    (%rcx),%ebx
     122:	08 08                	or     %cl,(%rax)
     124:	19 08                	sbb    %ecx,(%rax)
     126:	08 08                	or     %cl,(%rax)
     128:	19 2b                	sbb    %ebp,(%rbx)
     12a:	08 08                	or     %cl,(%rax)
     12c:	19 08                	sbb    %ecx,(%rax)
     12e:	08 08                	or     %cl,(%rax)
     130:	08 08                	or     %cl,(%rax)
     132:	19 08                	sbb    %ecx,(%rax)
     134:	19 08                	sbb    %ecx,(%rax)
     136:	08 08                	or     %cl,(%rax)
     138:	2b 08                	sub    (%rax),%ecx
     13a:	19 08                	sbb    %ecx,(%rax)
     13c:	19 08                	sbb    %ecx,(%rax)
     13e:	08 08                	or     %cl,(%rax)
     140:	19 19                	sbb    %ebx,(%rcx)
     142:	19 08                	sbb    %ecx,(%rax)
     144:	19 08                	sbb    %ecx,(%rax)
     146:	08 08                	or     %cl,(%rax)
     148:	08 2b                	or     %ch,(%rbx)
     14a:	19 08                	sbb    %ecx,(%rax)
     14c:	19 08                	sbb    %ecx,(%rax)
     14e:	08 08                	or     %cl,(%rax)
     150:	19 08                	sbb    %ecx,(%rax)
     152:	2b 08                	sub    (%rax),%ecx
     154:	19 08                	sbb    %ecx,(%rax)
     156:	08 08                	or     %cl,(%rax)
     158:	08 19                	or     %bl,(%rcx)
     15a:	2b 08                	sub    (%rax),%ecx
     15c:	19 08                	sbb    %ecx,(%rax)
     15e:	08 08                	or     %cl,(%rax)
     160:	08 08                	or     %cl,(%rax)
     162:	08 19                	or     %bl,(%rcx)
     164:	19 08                	sbb    %ecx,(%rax)
     166:	08 08                	or     %cl,(%rax)
     168:	2b 08                	sub    (%rax),%ecx
     16a:	08 19                	or     %bl,(%rcx)
     16c:	19 08                	sbb    %ecx,(%rax)
     16e:	08 08                	or     %cl,(%rax)
     170:	19 19                	sbb    %ebx,(%rcx)
     172:	08 19                	or     %bl,(%rcx)
     174:	19 08                	sbb    %ecx,(%rax)
     176:	08 08                	or     %cl,(%rax)
     178:	08 2b                	or     %ch,(%rbx)
     17a:	08 19                	or     %bl,(%rcx)
     17c:	19 08                	sbb    %ecx,(%rax)
     17e:	08 08                	or     %cl,(%rax)
     180:	19 08                	sbb    %ecx,(%rax)
     182:	19 19                	sbb    %ebx,(%rcx)
     184:	19 08                	sbb    %ecx,(%rax)
     186:	08 08                	or     %cl,(%rax)
     188:	08 19                	or     %bl,(%rcx)
     18a:	19 19                	sbb    %ebx,(%rcx)
     18c:	19 08                	sbb    %ecx,(%rax)
     18e:	08 08                	or     %cl,(%rax)
     190:	2b 19                	sub    (%rcx),%ebx
     192:	19 19                	sbb    %ebx,(%rcx)
     194:	19 08                	sbb    %ecx,(%rax)
     196:	08 08                	or     %cl,(%rax)
     198:	19 2b                	sbb    %ebp,(%rbx)
     19a:	19 19                	sbb    %ebx,(%rcx)
     19c:	19 08                	sbb    %ecx,(%rax)
     19e:	08 08                	or     %cl,(%rax)
     1a0:	08 08                	or     %cl,(%rax)
     1a2:	2b 19                	sub    (%rcx),%ebx
     1a4:	19 08                	sbb    %ecx,(%rax)
     1a6:	08 08                	or     %cl,(%rax)
     1a8:	19 19                	sbb    %ebx,(%rcx)
     1aa:	2b 19                	sub    (%rcx),%ebx
     1ac:	19 08                	sbb    %ecx,(%rax)
     1ae:	08 08                	or     %cl,(%rax)
     1b0:	08 2b                	or     %ch,(%rbx)
     1b2:	2b 19                	sub    (%rcx),%ebx
     1b4:	19 08                	sbb    %ecx,(%rax)
     1b6:	08 08                	or     %cl,(%rax)
     1b8:	19 08                	sbb    %ecx,(%rax)
     1ba:	08 2b                	or     %ch,(%rbx)
     1bc:	19 08                	sbb    %ecx,(%rax)
     1be:	08 08                	or     %cl,(%rax)
     1c0:	08 19                	or     %bl,(%rcx)
     1c2:	08 2b                	or     %ch,(%rbx)
     1c4:	19 08                	sbb    %ecx,(%rax)
     1c6:	08 08                	or     %cl,(%rax)
     1c8:	08 08                	or     %cl,(%rax)
     1ca:	19 2b                	sbb    %ebp,(%rbx)
     1cc:	19 08                	sbb    %ecx,(%rax)
     1ce:	08 08                	or     %cl,(%rax)
     1d0:	2b 08                	sub    (%rax),%ecx
     1d2:	19 2b                	sbb    %ebp,(%rbx)
     1d4:	19 08                	sbb    %ecx,(%rax)
     1d6:	08 08                	or     %cl,(%rax)
     1d8:	19 19                	sbb    %ebx,(%rcx)
     1da:	19 2b                	sbb    %ebp,(%rbx)
     1dc:	19 08                	sbb    %ecx,(%rax)
     1de:	08 08                	or     %cl,(%rax)
     1e0:	19 08                	sbb    %ecx,(%rax)
     1e2:	2b 2b                	sub    (%rbx),%ebp
     1e4:	19 08                	sbb    %ecx,(%rax)
     1e6:	08 08                	or     %cl,(%rax)
     1e8:	08 19                	or     %bl,(%rcx)
     1ea:	2b 2b                	sub    (%rbx),%ebp
     1ec:	19 08                	sbb    %ecx,(%rax)
     1ee:	08 08                	or     %cl,(%rax)
     1f0:	08 08                	or     %cl,(%rax)
     1f2:	08 08                	or     %cl,(%rax)
     1f4:	2b 08                	sub    (%rax),%ecx
     1f6:	08 08                	or     %cl,(%rax)
     1f8:	2b 08                	sub    (%rax),%ecx
     1fa:	08 08                	or     %cl,(%rax)
     1fc:	2b 08                	sub    (%rax),%ecx
     1fe:	08 08                	or     %cl,(%rax)
     200:	19 19                	sbb    %ebx,(%rcx)
     202:	08 08                	or     %cl,(%rax)
     204:	2b 08                	sub    (%rax),%ecx
     206:	08 08                	or     %cl,(%rax)
     208:	08 2b                	or     %ch,(%rbx)
     20a:	08 08                	or     %cl,(%rax)
     20c:	2b 08                	sub    (%rax),%ecx
     20e:	08 08                	or     %cl,(%rax)
     210:	19 08                	sbb    %ecx,(%rax)
     212:	19 08                	sbb    %ecx,(%rax)
     214:	2b 08                	sub    (%rax),%ecx
     216:	08 08                	or     %cl,(%rax)
     218:	08 19                	or     %bl,(%rcx)
     21a:	19 08                	sbb    %ecx,(%rax)
     21c:	2b 08                	sub    (%rax),%ecx
     21e:	08 08                	or     %cl,(%rax)
     220:	08 08                	or     %cl,(%rax)
     222:	2b 08                	sub    (%rax),%ecx
     224:	2b 08                	sub    (%rax),%ecx
     226:	08 08                	or     %cl,(%rax)
     228:	2b 2b                	sub    (%rbx),%ebp
     22a:	2b 08                	sub    (%rax),%ecx
     22c:	2b 08                	sub    (%rax),%ecx
     22e:	08 08                	or     %cl,(%rax)
     230:	19 08                	sbb    %ecx,(%rax)
     232:	08 19                	or     %bl,(%rcx)
     234:	2b 08                	sub    (%rax),%ecx
     236:	08 08                	or     %cl,(%rax)
     238:	08 19                	or     %bl,(%rcx)
     23a:	08 19                	or     %bl,(%rcx)
     23c:	2b 08                	sub    (%rax),%ecx
     23e:	08 08                	or     %cl,(%rax)
     240:	2b 19                	sub    (%rcx),%ebx
     242:	08 19                	or     %bl,(%rcx)
     244:	2b 08                	sub    (%rax),%ecx
     246:	08 08                	or     %cl,(%rax)
     248:	19 2b                	sbb    %ebp,(%rbx)
     24a:	08 19                	or     %bl,(%rcx)
     24c:	2b 08                	sub    (%rax),%ecx
     24e:	08 08                	or     %cl,(%rax)
     250:	08 08                	or     %cl,(%rax)
     252:	19 19                	sbb    %ebx,(%rcx)
     254:	2b 08                	sub    (%rax),%ecx
     256:	08 08                	or     %cl,(%rax)
     258:	19 19                	sbb    %ebx,(%rcx)
     25a:	19 19                	sbb    %ebx,(%rcx)
     25c:	2b 08                	sub    (%rax),%ecx
     25e:	08 08                	or     %cl,(%rax)
     260:	08 08                	or     %cl,(%rax)
     262:	08 2b                	or     %ch,(%rbx)
     264:	2b 08                	sub    (%rax),%ecx
     266:	08 08                	or     %cl,(%rax)
     268:	19 19                	sbb    %ebx,(%rcx)
     26a:	08 2b                	or     %ch,(%rbx)
     26c:	2b 08                	sub    (%rax),%ecx
     26e:	08 08                	or     %cl,(%rax)
     270:	2b 2b                	sub    (%rbx),%ebp
     272:	08 2b                	or     %ch,(%rbx)
     274:	2b 08                	sub    (%rax),%ecx
     276:	08 08                	or     %cl,(%rax)
     278:	08 19                	or     %bl,(%rcx)
     27a:	19 2b                	sbb    %ebp,(%rbx)
     27c:	2b 08                	sub    (%rax),%ecx
     27e:	08 08                	or     %cl,(%rax)
     280:	2b 08                	sub    (%rax),%ecx
     282:	2b 2b                	sub    (%rbx),%ebp
     284:	2b 08                	sub    (%rax),%ecx
     286:	08 08                	or     %cl,(%rax)
     288:	19 08                	sbb    %ecx,(%rax)
     28a:	08 08                	or     %cl,(%rax)
     28c:	08 19                	or     %bl,(%rcx)
     28e:	08 08                	or     %cl,(%rax)
     290:	08 19                	or     %bl,(%rcx)
     292:	08 08                	or     %cl,(%rax)
     294:	08 19                	or     %bl,(%rcx)
     296:	08 08                	or     %cl,(%rax)
     298:	2b 19                	sub    (%rcx),%ebx
     29a:	08 08                	or     %cl,(%rax)
     29c:	08 19                	or     %bl,(%rcx)
     29e:	08 08                	or     %cl,(%rax)
     2a0:	19 2b                	sbb    %ebp,(%rbx)
     2a2:	08 08                	or     %cl,(%rax)
     2a4:	08 19                	or     %bl,(%rcx)
     2a6:	08 08                	or     %cl,(%rax)
     2a8:	08 08                	or     %cl,(%rax)
     2aa:	19 08                	sbb    %ecx,(%rax)
     2ac:	08 19                	or     %bl,(%rcx)
     2ae:	08 08                	or     %cl,(%rax)
     2b0:	2b 08                	sub    (%rax),%ecx
     2b2:	19 08                	sbb    %ecx,(%rax)
     2b4:	08 19                	or     %bl,(%rcx)
     2b6:	08 08                	or     %cl,(%rax)
     2b8:	19 19                	sbb    %ebx,(%rcx)
     2ba:	19 08                	sbb    %ecx,(%rax)
     2bc:	08 19                	or     %bl,(%rcx)
     2be:	08 08                	or     %cl,(%rax)
     2c0:	08 2b                	or     %ch,(%rbx)
     2c2:	19 08                	sbb    %ecx,(%rax)
     2c4:	08 19                	or     %bl,(%rcx)
     2c6:	08 08                	or     %cl,(%rax)
     2c8:	19 08                	sbb    %ecx,(%rax)
     2ca:	2b 08                	sub    (%rax),%ecx
     2cc:	08 19                	or     %bl,(%rcx)
     2ce:	08 08                	or     %cl,(%rax)
     2d0:	08 19                	or     %bl,(%rcx)
     2d2:	2b 08                	sub    (%rax),%ecx
     2d4:	08 19                	or     %bl,(%rcx)
     2d6:	08 08                	or     %cl,(%rax)
     2d8:	2b 19                	sub    (%rcx),%ebx
     2da:	2b 08                	sub    (%rax),%ecx
     2dc:	08 19                	or     %bl,(%rcx)
     2de:	08 08                	or     %cl,(%rax)
     2e0:	19 2b                	sbb    %ebp,(%rbx)
     2e2:	2b 08                	sub    (%rax),%ecx
     2e4:	08 19                	or     %bl,(%rcx)
     2e6:	08 08                	or     %cl,(%rax)
     2e8:	08 08                	or     %cl,(%rax)
     2ea:	08 19                	or     %bl,(%rcx)
     2ec:	08 19                	or     %bl,(%rcx)
     2ee:	08 08                	or     %cl,(%rax)
     2f0:	2b 08                	sub    (%rax),%ecx
     2f2:	08 19                	or     %bl,(%rcx)
     2f4:	08 19                	or     %bl,(%rcx)
     2f6:	08 08                	or     %cl,(%rax)
     2f8:	19 19                	sbb    %ebx,(%rcx)
     2fa:	08 19                	or     %bl,(%rcx)
     2fc:	08 19                	or     %bl,(%rcx)
     2fe:	08 08                	or     %cl,(%rax)
     300:	08 2b                	or     %ch,(%rbx)
     302:	08 19                	or     %bl,(%rcx)
     304:	08 19                	or     %bl,(%rcx)
     306:	08 08                	or     %cl,(%rax)
     308:	2b 2b                	sub    (%rbx),%ebp
     30a:	08 19                	or     %bl,(%rcx)
     30c:	08 19                	or     %bl,(%rcx)
     30e:	08 08                	or     %cl,(%rax)
     310:	19 08                	sbb    %ecx,(%rax)
     312:	19 19                	sbb    %ebx,(%rcx)
     314:	08 19                	or     %bl,(%rcx)
     316:	08 08                	or     %cl,(%rax)
     318:	08 19                	or     %bl,(%rcx)
     31a:	19 19                	sbb    %ebx,(%rcx)
     31c:	08 19                	or     %bl,(%rcx)
     31e:	08 08                	or     %cl,(%rax)
     320:	2b 19                	sub    (%rcx),%ebx
     322:	19 19                	sbb    %ebx,(%rcx)
     324:	08 19                	or     %bl,(%rcx)
     326:	08 08                	or     %cl,(%rax)
     328:	19 2b                	sbb    %ebp,(%rbx)
     32a:	19 19                	sbb    %ebx,(%rcx)
     32c:	08 19                	or     %bl,(%rcx)
     32e:	08 08                	or     %cl,(%rax)
     330:	08 08                	or     %cl,(%rax)
     332:	2b 19                	sub    (%rcx),%ebx
     334:	08 19                	or     %bl,(%rcx)
     336:	08 08                	or     %cl,(%rax)
     338:	2b 08                	sub    (%rax),%ecx
     33a:	2b 19                	sub    (%rcx),%ebx
     33c:	08 19                	or     %bl,(%rcx)
     33e:	08 08                	or     %cl,(%rax)
     340:	19 19                	sbb    %ebx,(%rcx)
     342:	2b 19                	sub    (%rcx),%ebx
     344:	08 19                	or     %bl,(%rcx)
     346:	08 08                	or     %cl,(%rax)
     348:	19 08                	sbb    %ecx,(%rax)
     34a:	08 2b                	or     %ch,(%rbx)
     34c:	08 19                	or     %bl,(%rcx)
     34e:	08 08                	or     %cl,(%rax)
     350:	08 19                	or     %bl,(%rcx)
     352:	08 2b                	or     %ch,(%rbx)
     354:	08 19                	or     %bl,(%rcx)
     356:	08 08                	or     %cl,(%rax)
     358:	2b 19                	sub    (%rcx),%ebx
     35a:	08 2b                	or     %ch,(%rbx)
     35c:	08 19                	or     %bl,(%rcx)
     35e:	08 08                	or     %cl,(%rax)
     360:	19 2b                	sbb    %ebp,(%rbx)
     362:	08 2b                	or     %ch,(%rbx)
     364:	08 19                	or     %bl,(%rcx)
     366:	08 08                	or     %cl,(%rax)
     368:	08 08                	or     %cl,(%rax)
     36a:	19 2b                	sbb    %ebp,(%rbx)
     36c:	08 19                	or     %bl,(%rcx)
     36e:	08 08                	or     %cl,(%rax)
     370:	19 19                	sbb    %ebx,(%rcx)
     372:	19 2b                	sbb    %ebp,(%rbx)
     374:	08 19                	or     %bl,(%rcx)
     376:	08 08                	or     %cl,(%rax)
     378:	08 2b                	or     %ch,(%rbx)
     37a:	19 2b                	sbb    %ebp,(%rbx)
     37c:	08 19                	or     %bl,(%rcx)
     37e:	08 08                	or     %cl,(%rax)
     380:	19 08                	sbb    %ecx,(%rax)
     382:	2b 2b                	sub    (%rbx),%ebp
     384:	08 19                	or     %bl,(%rcx)
     386:	08 08                	or     %cl,(%rax)
     388:	08 19                	or     %bl,(%rcx)
     38a:	2b 2b                	sub    (%rbx),%ebp
     38c:	08 19                	or     %bl,(%rcx)
     38e:	08 08                	or     %cl,(%rax)
     390:	08 08                	or     %cl,(%rax)
     392:	08 08                	or     %cl,(%rax)
     394:	19 19                	sbb    %ebx,(%rcx)
     396:	08 08                	or     %cl,(%rax)
     398:	2b 08                	sub    (%rax),%ecx
     39a:	08 08                	or     %cl,(%rax)
     39c:	19 19                	sbb    %ebx,(%rcx)
     39e:	08 08                	or     %cl,(%rax)
     3a0:	19 19                	sbb    %ebx,(%rcx)
     3a2:	08 08                	or     %cl,(%rax)
     3a4:	19 19                	sbb    %ebx,(%rcx)
     3a6:	08 08                	or     %cl,(%rax)
     3a8:	08 2b                	or     %ch,(%rbx)
     3aa:	08 08                	or     %cl,(%rax)
     3ac:	19 19                	sbb    %ebx,(%rcx)
     3ae:	08 08                	or     %cl,(%rax)
     3b0:	2b 2b                	sub    (%rbx),%ebp
     3b2:	08 08                	or     %cl,(%rax)
     3b4:	19 19                	sbb    %ebx,(%rcx)
     3b6:	08 08                	or     %cl,(%rax)
     3b8:	19 08                	sbb    %ecx,(%rax)
     3ba:	19 08                	sbb    %ecx,(%rax)
     3bc:	19 19                	sbb    %ebx,(%rcx)
     3be:	08 08                	or     %cl,(%rax)
     3c0:	08 19                	or     %bl,(%rcx)
     3c2:	19 08                	sbb    %ecx,(%rax)
     3c4:	19 19                	sbb    %ebx,(%rcx)
     3c6:	08 08                	or     %cl,(%rax)
     3c8:	2b 19                	sub    (%rcx),%ebx
     3ca:	19 08                	sbb    %ecx,(%rax)
     3cc:	19 19                	sbb    %ebx,(%rcx)
     3ce:	08 08                	or     %cl,(%rax)
     3d0:	19 2b                	sbb    %ebp,(%rbx)
     3d2:	19 08                	sbb    %ecx,(%rax)
     3d4:	19 19                	sbb    %ebx,(%rcx)
     3d6:	08 08                	or     %cl,(%rax)
     3d8:	08 08                	or     %cl,(%rax)
     3da:	2b 08                	sub    (%rax),%ecx
     3dc:	19 19                	sbb    %ebx,(%rcx)
     3de:	08 08                	or     %cl,(%rax)
     3e0:	19 19                	sbb    %ebx,(%rcx)
     3e2:	2b 08                	sub    (%rax),%ecx
     3e4:	19 19                	sbb    %ebx,(%rcx)
     3e6:	08 08                	or     %cl,(%rax)
     3e8:	08 2b                	or     %ch,(%rbx)
     3ea:	2b 08                	sub    (%rax),%ecx
     3ec:	19 19                	sbb    %ebx,(%rcx)
     3ee:	08 08                	or     %cl,(%rax)
     3f0:	19 08                	sbb    %ecx,(%rax)
     3f2:	08 19                	or     %bl,(%rcx)
     3f4:	19 19                	sbb    %ebx,(%rcx)
     3f6:	08 08                	or     %cl,(%rax)
     3f8:	08 19                	or     %bl,(%rcx)
     3fa:	08 19                	or     %bl,(%rcx)
     3fc:	19 19                	sbb    %ebx,(%rcx)
     3fe:	08 08                	or     %cl,(%rax)
     400:	2b 19                	sub    (%rcx),%ebx
     402:	08 19                	or     %bl,(%rcx)
     404:	19 19                	sbb    %ebx,(%rcx)
     406:	08 08                	or     %cl,(%rax)
     408:	19 2b                	sbb    %ebp,(%rbx)
     40a:	08 19                	or     %bl,(%rcx)
     40c:	19 19                	sbb    %ebx,(%rcx)
     40e:	08 08                	or     %cl,(%rax)
     410:	08 08                	or     %cl,(%rax)
     412:	19 19                	sbb    %ebx,(%rcx)
     414:	19 19                	sbb    %ebx,(%rcx)
     416:	08 08                	or     %cl,(%rax)
     418:	2b 08                	sub    (%rax),%ecx
     41a:	19 19                	sbb    %ebx,(%rcx)
     41c:	19 19                	sbb    %ebx,(%rcx)
     41e:	08 08                	or     %cl,(%rax)
     420:	19 19                	sbb    %ebx,(%rcx)
     422:	19 19                	sbb    %ebx,(%rcx)
     424:	19 19                	sbb    %ebx,(%rcx)
     426:	08 08                	or     %cl,(%rax)
     428:	08 2b                	or     %ch,(%rbx)
     42a:	19 19                	sbb    %ebx,(%rcx)
     42c:	19 19                	sbb    %ebx,(%rcx)
     42e:	08 08                	or     %cl,(%rax)
     430:	19 08                	sbb    %ecx,(%rax)
     432:	2b 19                	sub    (%rcx),%ebx
     434:	19 19                	sbb    %ebx,(%rcx)
     436:	08 08                	or     %cl,(%rax)
     438:	08 19                	or     %bl,(%rcx)
     43a:	2b 19                	sub    (%rcx),%ebx
     43c:	19 19                	sbb    %ebx,(%rcx)
     43e:	08 08                	or     %cl,(%rax)
     440:	08 08                	or     %cl,(%rax)
     442:	08 2b                	or     %ch,(%rbx)
     444:	19 19                	sbb    %ebx,(%rcx)
     446:	08 08                	or     %cl,(%rax)
     448:	2b 08                	sub    (%rax),%ecx
     44a:	08 2b                	or     %ch,(%rbx)
     44c:	19 19                	sbb    %ebx,(%rcx)
     44e:	08 08                	or     %cl,(%rax)
     450:	19 19                	sbb    %ebx,(%rcx)
     452:	08 2b                	or     %ch,(%rbx)
     454:	19 19                	sbb    %ebx,(%rcx)
     456:	08 08                	or     %cl,(%rax)
     458:	08 2b                	or     %ch,(%rbx)
     45a:	08 2b                	or     %ch,(%rbx)
     45c:	19 19                	sbb    %ebx,(%rcx)
     45e:	08 08                	or     %cl,(%rax)
     460:	19 08                	sbb    %ecx,(%rax)
     462:	19 2b                	sbb    %ebp,(%rbx)
     464:	19 19                	sbb    %ebx,(%rcx)
     466:	08 08                	or     %cl,(%rax)
     468:	08 19                	or     %bl,(%rcx)
     46a:	19 2b                	sbb    %ebp,(%rbx)
     46c:	19 19                	sbb    %ebx,(%rcx)
     46e:	08 08                	or     %cl,(%rax)
     470:	08 08                	or     %cl,(%rax)
     472:	2b 2b                	sub    (%rbx),%ebp
     474:	19 19                	sbb    %ebx,(%rcx)
     476:	08 08                	or     %cl,(%rax)
     478:	19 08                	sbb    %ecx,(%rax)
     47a:	08 08                	or     %cl,(%rax)
     47c:	2b 19                	sub    (%rcx),%ebx
     47e:	08 08                	or     %cl,(%rax)
     480:	08 19                	or     %bl,(%rcx)
     482:	08 08                	or     %cl,(%rax)
     484:	2b 19                	sub    (%rcx),%ebx
     486:	08 08                	or     %cl,(%rax)
     488:	2b 19                	sub    (%rcx),%ebx
     48a:	08 08                	or     %cl,(%rax)
     48c:	2b 19                	sub    (%rcx),%ebx
     48e:	08 08                	or     %cl,(%rax)
     490:	19 2b                	sbb    %ebp,(%rbx)
     492:	08 08                	or     %cl,(%rax)
     494:	2b 19                	sub    (%rcx),%ebx
     496:	08 08                	or     %cl,(%rax)
     498:	08 08                	or     %cl,(%rax)
     49a:	19 08                	sbb    %ecx,(%rax)
     49c:	2b 19                	sub    (%rcx),%ebx
     49e:	08 08                	or     %cl,(%rax)
     4a0:	19 19                	sbb    %ebx,(%rcx)
     4a2:	19 08                	sbb    %ecx,(%rax)
     4a4:	2b 19                	sub    (%rcx),%ebx
     4a6:	08 08                	or     %cl,(%rax)
     4a8:	08 08                	or     %cl,(%rax)
     4aa:	08 19                	or     %bl,(%rcx)
     4ac:	2b 19                	sub    (%rcx),%ebx
     4ae:	08 08                	or     %cl,(%rax)
     4b0:	19 19                	sbb    %ebx,(%rcx)
     4b2:	08 19                	or     %bl,(%rcx)
     4b4:	2b 19                	sub    (%rcx),%ebx
     4b6:	08 08                	or     %cl,(%rax)
     4b8:	08 2b                	or     %ch,(%rbx)
     4ba:	08 19                	or     %bl,(%rcx)
     4bc:	2b 19                	sub    (%rcx),%ebx
     4be:	08 08                	or     %cl,(%rax)
     4c0:	19 08                	sbb    %ecx,(%rax)
     4c2:	19 19                	sbb    %ebx,(%rcx)
     4c4:	2b 19                	sub    (%rcx),%ebx
     4c6:	08 08                	or     %cl,(%rax)
     4c8:	08 19                	or     %bl,(%rcx)
     4ca:	19 19                	sbb    %ebx,(%rcx)
     4cc:	2b 19                	sub    (%rcx),%ebx
     4ce:	08 08                	or     %cl,(%rax)
     4d0:	08 08                	or     %cl,(%rax)
     4d2:	2b 19                	sub    (%rcx),%ebx
     4d4:	2b 19                	sub    (%rcx),%ebx
     4d6:	08 08                	or     %cl,(%rax)
     4d8:	19 08                	sbb    %ecx,(%rax)
     4da:	08 2b                	or     %ch,(%rbx)
     4dc:	2b 19                	sub    (%rcx),%ebx
     4de:	08 08                	or     %cl,(%rax)
     4e0:	08 19                	or     %bl,(%rcx)
     4e2:	08 2b                	or     %ch,(%rbx)
     4e4:	2b 19                	sub    (%rcx),%ebx
     4e6:	08 08                	or     %cl,(%rax)
     4e8:	08 08                	or     %cl,(%rax)
     4ea:	19 2b                	sbb    %ebp,(%rbx)
     4ec:	2b 19                	sub    (%rcx),%ebx
     4ee:	08 08                	or     %cl,(%rax)
     4f0:	08 08                	or     %cl,(%rax)
     4f2:	08 08                	or     %cl,(%rax)
     4f4:	08 2b                	or     %ch,(%rbx)
     4f6:	08 08                	or     %cl,(%rax)
     4f8:	2b 08                	sub    (%rax),%ecx
     4fa:	08 08                	or     %cl,(%rax)
     4fc:	08 2b                	or     %ch,(%rbx)
     4fe:	08 08                	or     %cl,(%rax)
     500:	19 19                	sbb    %ebx,(%rcx)
     502:	08 08                	or     %cl,(%rax)
     504:	08 2b                	or     %ch,(%rbx)
     506:	08 08                	or     %cl,(%rax)
     508:	08 2b                	or     %ch,(%rbx)
     50a:	08 08                	or     %cl,(%rax)
     50c:	08 2b                	or     %ch,(%rbx)
     50e:	08 08                	or     %cl,(%rax)
     510:	19 08                	sbb    %ecx,(%rax)
     512:	19 08                	sbb    %ecx,(%rax)
     514:	08 2b                	or     %ch,(%rbx)
     516:	08 08                	or     %cl,(%rax)
     518:	08 19                	or     %bl,(%rcx)
     51a:	19 08                	sbb    %ecx,(%rax)
     51c:	08 2b                	or     %ch,(%rbx)
     51e:	08 08                	or     %cl,(%rax)
     520:	2b 19                	sub    (%rcx),%ebx
     522:	19 08                	sbb    %ecx,(%rax)
     524:	08 2b                	or     %ch,(%rbx)
     526:	08 08                	or     %cl,(%rax)
     528:	19 2b                	sbb    %ebp,(%rbx)
     52a:	19 08                	sbb    %ecx,(%rax)
     52c:	08 2b                	or     %ch,(%rbx)
     52e:	08 08                	or     %cl,(%rax)
     530:	08 08                	or     %cl,(%rax)
     532:	2b 08                	sub    (%rax),%ecx
     534:	08 2b                	or     %ch,(%rbx)
     536:	08 08                	or     %cl,(%rax)
     538:	19 19                	sbb    %ebx,(%rcx)
     53a:	2b 08                	sub    (%rax),%ecx
     53c:	08 2b                	or     %ch,(%rbx)
     53e:	08 08                	or     %cl,(%rax)
     540:	2b 2b                	sub    (%rbx),%ebp
     542:	2b 08                	sub    (%rax),%ecx
     544:	08 2b                	or     %ch,(%rbx)
     546:	08 08                	or     %cl,(%rax)
     548:	19 08                	sbb    %ecx,(%rax)
     54a:	08 19                	or     %bl,(%rcx)
     54c:	08 2b                	or     %ch,(%rbx)
     54e:	08 08                	or     %cl,(%rax)
     550:	08 19                	or     %bl,(%rcx)
     552:	08 19                	or     %bl,(%rcx)
     554:	08 2b                	or     %ch,(%rbx)
     556:	08 08                	or     %cl,(%rax)
     558:	2b 19                	sub    (%rcx),%ebx
     55a:	08 19                	or     %bl,(%rcx)
     55c:	08 2b                	or     %ch,(%rbx)
     55e:	08 08                	or     %cl,(%rax)
     560:	19 2b                	sbb    %ebp,(%rbx)
     562:	08 19                	or     %bl,(%rcx)
     564:	08 2b                	or     %ch,(%rbx)
     566:	08 08                	or     %cl,(%rax)
     568:	08 08                	or     %cl,(%rax)
     56a:	19 19                	sbb    %ebx,(%rcx)
     56c:	08 2b                	or     %ch,(%rbx)
     56e:	08 08                	or     %cl,(%rax)
     570:	2b 08                	sub    (%rax),%ecx
     572:	19 19                	sbb    %ebx,(%rcx)
     574:	08 2b                	or     %ch,(%rbx)
     576:	08 08                	or     %cl,(%rax)
     578:	19 19                	sbb    %ebx,(%rcx)
     57a:	19 19                	sbb    %ebx,(%rcx)
     57c:	08 2b                	or     %ch,(%rbx)
     57e:	08 08                	or     %cl,(%rax)
     580:	08 2b                	or     %ch,(%rbx)
     582:	19 19                	sbb    %ebx,(%rcx)
     584:	08 2b                	or     %ch,(%rbx)
     586:	08 08                	or     %cl,(%rax)
     588:	19 08                	sbb    %ecx,(%rax)
     58a:	2b 19                	sub    (%rcx),%ebx
     58c:	08 2b                	or     %ch,(%rbx)
     58e:	08 08                	or     %cl,(%rax)
     590:	08 19                	or     %bl,(%rcx)
     592:	2b 19                	sub    (%rcx),%ebx
     594:	08 2b                	or     %ch,(%rbx)
     596:	08 08                	or     %cl,(%rax)
     598:	08 08                	or     %cl,(%rax)
     59a:	08 2b                	or     %ch,(%rbx)
     59c:	08 2b                	or     %ch,(%rbx)
     59e:	08 08                	or     %cl,(%rax)
     5a0:	19 19                	sbb    %ebx,(%rcx)
     5a2:	08 2b                	or     %ch,(%rbx)
     5a4:	08 2b                	or     %ch,(%rbx)
     5a6:	08 08                	or     %cl,(%rax)
     5a8:	08 19                	or     %bl,(%rcx)
     5aa:	19 2b                	sbb    %ebp,(%rbx)
     5ac:	08 2b                	or     %ch,(%rbx)
     5ae:	08 08                	or     %cl,(%rax)
     5b0:	2b 2b                	sub    (%rbx),%ebp
     5b2:	2b 2b                	sub    (%rbx),%ebp
     5b4:	08 2b                	or     %ch,(%rbx)
     5b6:	08 08                	or     %cl,(%rax)
     5b8:	19 08                	sbb    %ecx,(%rax)
     5ba:	08 08                	or     %cl,(%rax)
     5bc:	19 2b                	sbb    %ebp,(%rbx)
     5be:	08 08                	or     %cl,(%rax)
     5c0:	08 19                	or     %bl,(%rcx)
     5c2:	08 08                	or     %cl,(%rax)
     5c4:	19 2b                	sbb    %ebp,(%rbx)
     5c6:	08 08                	or     %cl,(%rax)
     5c8:	08 08                	or     %cl,(%rax)
     5ca:	19 08                	sbb    %ecx,(%rax)
     5cc:	19 2b                	sbb    %ebp,(%rbx)
     5ce:	08 08                	or     %cl,(%rax)
     5d0:	2b 08                	sub    (%rax),%ecx
     5d2:	19 08                	sbb    %ecx,(%rax)
     5d4:	19 2b                	sbb    %ebp,(%rbx)
     5d6:	08 08                	or     %cl,(%rax)
     5d8:	19 19                	sbb    %ebx,(%rcx)
     5da:	19 08                	sbb    %ecx,(%rax)
     5dc:	19 2b                	sbb    %ebp,(%rbx)
     5de:	08 08                	or     %cl,(%rax)
     5e0:	08 2b                	or     %ch,(%rbx)
     5e2:	19 08                	sbb    %ecx,(%rax)
     5e4:	19 2b                	sbb    %ebp,(%rbx)
     5e6:	08 08                	or     %cl,(%rax)
     5e8:	19 08                	sbb    %ecx,(%rax)
     5ea:	2b 08                	sub    (%rax),%ecx
     5ec:	19 2b                	sbb    %ebp,(%rbx)
     5ee:	08 08                	or     %cl,(%rax)
     5f0:	08 08                	or     %cl,(%rax)
     5f2:	08 19                	or     %bl,(%rcx)
     5f4:	19 2b                	sbb    %ebp,(%rbx)
     5f6:	08 08                	or     %cl,(%rax)
     5f8:	19 19                	sbb    %ebx,(%rcx)
     5fa:	08 19                	or     %bl,(%rcx)
     5fc:	19 2b                	sbb    %ebp,(%rbx)
     5fe:	08 08                	or     %cl,(%rax)
     600:	08 2b                	or     %ch,(%rbx)
     602:	08 19                	or     %bl,(%rcx)
     604:	19 2b                	sbb    %ebp,(%rbx)
     606:	08 08                	or     %cl,(%rax)
     608:	19 08                	sbb    %ecx,(%rax)
     60a:	19 19                	sbb    %ebx,(%rcx)
     60c:	19 2b                	sbb    %ebp,(%rbx)
     60e:	08 08                	or     %cl,(%rax)
     610:	08 19                	or     %bl,(%rcx)
     612:	19 19                	sbb    %ebx,(%rcx)
     614:	19 2b                	sbb    %ebp,(%rbx)
     616:	08 08                	or     %cl,(%rax)
     618:	08 08                	or     %cl,(%rax)
     61a:	2b 19                	sub    (%rcx),%ebx
     61c:	19 2b                	sbb    %ebp,(%rbx)
     61e:	08 08                	or     %cl,(%rax)
     620:	19 08                	sbb    %ecx,(%rax)
     622:	08 2b                	or     %ch,(%rbx)
     624:	19 2b                	sbb    %ebp,(%rbx)
     626:	08 08                	or     %cl,(%rax)
     628:	08 08                	or     %cl,(%rax)
     62a:	19 2b                	sbb    %ebp,(%rbx)
     62c:	19 2b                	sbb    %ebp,(%rbx)
     62e:	08 08                	or     %cl,(%rax)
     630:	08 08                	or     %cl,(%rax)
     632:	08 08                	or     %cl,(%rax)
     634:	2b 2b                	sub    (%rbx),%ebp
     636:	08 08                	or     %cl,(%rax)
     638:	19 08                	sbb    %ecx,(%rax)
     63a:	19 08                	sbb    %ecx,(%rax)
     63c:	2b 2b                	sub    (%rbx),%ebp
     63e:	08 08                	or     %cl,(%rax)
     640:	08 19                	or     %bl,(%rcx)
     642:	19 08                	sbb    %ecx,(%rax)
     644:	2b 2b                	sub    (%rbx),%ebp
     646:	08 08                	or     %cl,(%rax)
     648:	2b 08                	sub    (%rax),%ecx
     64a:	2b 08                	sub    (%rax),%ecx
     64c:	2b 2b                	sub    (%rbx),%ebp
     64e:	08 08                	or     %cl,(%rax)
     650:	08 2b                	or     %ch,(%rbx)
     652:	2b 08                	sub    (%rax),%ecx
     654:	2b 2b                	sub    (%rbx),%ebp
     656:	08 08                	or     %cl,(%rax)
     658:	2b 2b                	sub    (%rbx),%ebp
     65a:	2b 08                	sub    (%rax),%ecx
     65c:	2b 2b                	sub    (%rbx),%ebp
     65e:	08 08                	or     %cl,(%rax)
     660:	08 08                	or     %cl,(%rax)
     662:	19 19                	sbb    %ebx,(%rcx)
     664:	2b 2b                	sub    (%rbx),%ebp
     666:	08 08                	or     %cl,(%rax)
     668:	19 2b                	sbb    %ebp,(%rbx)
     66a:	19 2b                	sbb    %ebp,(%rbx)
     66c:	2b 2b                	sub    (%rbx),%ebp
     66e:	08 08                	or     %cl,(%rax)
     670:	19 08                	sbb    %ecx,(%rax)
     672:	08 08                	or     %cl,(%rax)
     674:	08 08                	or     %cl,(%rax)
     676:	19 08                	sbb    %ecx,(%rax)
     678:	08 19                	or     %bl,(%rcx)
     67a:	08 08                	or     %cl,(%rax)
     67c:	08 08                	or     %cl,(%rax)
     67e:	19 08                	sbb    %ecx,(%rax)
     680:	2b 19                	sub    (%rcx),%ebx
     682:	08 08                	or     %cl,(%rax)
     684:	08 08                	or     %cl,(%rax)
     686:	19 08                	sbb    %ecx,(%rax)
     688:	19 2b                	sbb    %ebp,(%rbx)
     68a:	08 08                	or     %cl,(%rax)
     68c:	08 08                	or     %cl,(%rax)
     68e:	19 08                	sbb    %ecx,(%rax)
     690:	08 08                	or     %cl,(%rax)
     692:	19 08                	sbb    %ecx,(%rax)
     694:	08 08                	or     %cl,(%rax)
     696:	19 08                	sbb    %ecx,(%rax)
     698:	2b 08                	sub    (%rax),%ecx
     69a:	19 08                	sbb    %ecx,(%rax)
     69c:	08 08                	or     %cl,(%rax)
     69e:	19 08                	sbb    %ecx,(%rax)
     6a0:	19 19                	sbb    %ebx,(%rcx)
     6a2:	19 08                	sbb    %ecx,(%rax)
     6a4:	08 08                	or     %cl,(%rax)
     6a6:	19 08                	sbb    %ecx,(%rax)
     6a8:	08 2b                	or     %ch,(%rbx)
     6aa:	19 08                	sbb    %ecx,(%rax)
     6ac:	08 08                	or     %cl,(%rax)
     6ae:	19 08                	sbb    %ecx,(%rax)
     6b0:	19 08                	sbb    %ecx,(%rax)
     6b2:	2b 08                	sub    (%rax),%ecx
     6b4:	08 08                	or     %cl,(%rax)
     6b6:	19 08                	sbb    %ecx,(%rax)
     6b8:	08 19                	or     %bl,(%rcx)
     6ba:	2b 08                	sub    (%rax),%ecx
     6bc:	08 08                	or     %cl,(%rax)
     6be:	19 08                	sbb    %ecx,(%rax)
     6c0:	2b 19                	sub    (%rcx),%ebx
     6c2:	2b 08                	sub    (%rax),%ecx
     6c4:	08 08                	or     %cl,(%rax)
     6c6:	19 08                	sbb    %ecx,(%rax)
     6c8:	08 08                	or     %cl,(%rax)
     6ca:	08 19                	or     %bl,(%rcx)
     6cc:	08 08                	or     %cl,(%rax)
     6ce:	19 08                	sbb    %ecx,(%rax)
     6d0:	2b 08                	sub    (%rax),%ecx
     6d2:	08 19                	or     %bl,(%rcx)
     6d4:	08 08                	or     %cl,(%rax)
     6d6:	19 08                	sbb    %ecx,(%rax)
     6d8:	19 19                	sbb    %ebx,(%rcx)
     6da:	08 19                	or     %bl,(%rcx)
     6dc:	08 08                	or     %cl,(%rax)
     6de:	19 08                	sbb    %ecx,(%rax)
     6e0:	08 2b                	or     %ch,(%rbx)
     6e2:	08 19                	or     %bl,(%rcx)
     6e4:	08 08                	or     %cl,(%rax)
     6e6:	19 08                	sbb    %ecx,(%rax)
     6e8:	19 08                	sbb    %ecx,(%rax)
     6ea:	19 19                	sbb    %ebx,(%rcx)
     6ec:	08 08                	or     %cl,(%rax)
     6ee:	19 08                	sbb    %ecx,(%rax)
     6f0:	08 19                	or     %bl,(%rcx)
     6f2:	19 19                	sbb    %ebx,(%rcx)
     6f4:	08 08                	or     %cl,(%rax)
     6f6:	19 08                	sbb    %ecx,(%rax)
     6f8:	2b 19                	sub    (%rcx),%ebx
     6fa:	19 19                	sbb    %ebx,(%rcx)
     6fc:	08 08                	or     %cl,(%rax)
     6fe:	19 08                	sbb    %ecx,(%rax)
     700:	19 2b                	sbb    %ebp,(%rbx)
     702:	19 19                	sbb    %ebx,(%rcx)
     704:	08 08                	or     %cl,(%rax)
     706:	19 08                	sbb    %ecx,(%rax)
     708:	08 08                	or     %cl,(%rax)
     70a:	2b 19                	sub    (%rcx),%ebx
     70c:	08 08                	or     %cl,(%rax)
     70e:	19 08                	sbb    %ecx,(%rax)
     710:	2b 08                	sub    (%rax),%ecx
     712:	2b 19                	sub    (%rcx),%ebx
     714:	08 08                	or     %cl,(%rax)
     716:	19 08                	sbb    %ecx,(%rax)
     718:	19 19                	sbb    %ebx,(%rcx)
     71a:	2b 19                	sub    (%rcx),%ebx
     71c:	08 08                	or     %cl,(%rax)
     71e:	19 08                	sbb    %ecx,(%rax)
     720:	08 2b                	or     %ch,(%rbx)
     722:	2b 19                	sub    (%rcx),%ebx
     724:	08 08                	or     %cl,(%rax)
     726:	19 08                	sbb    %ecx,(%rax)
     728:	19 08                	sbb    %ecx,(%rax)
     72a:	08 2b                	or     %ch,(%rbx)
     72c:	08 08                	or     %cl,(%rax)
     72e:	19 08                	sbb    %ecx,(%rax)
     730:	08 19                	or     %bl,(%rcx)
     732:	08 2b                	or     %ch,(%rbx)
     734:	08 08                	or     %cl,(%rax)
     736:	19 08                	sbb    %ecx,(%rax)
     738:	2b 19                	sub    (%rcx),%ebx
     73a:	08 2b                	or     %ch,(%rbx)
     73c:	08 08                	or     %cl,(%rax)
     73e:	19 08                	sbb    %ecx,(%rax)
     740:	08 08                	or     %cl,(%rax)
     742:	19 2b                	sbb    %ebp,(%rbx)
     744:	08 08                	or     %cl,(%rax)
     746:	19 08                	sbb    %ecx,(%rax)
     748:	19 19                	sbb    %ebx,(%rcx)
     74a:	19 2b                	sbb    %ebp,(%rbx)
     74c:	08 08                	or     %cl,(%rax)
     74e:	19 08                	sbb    %ecx,(%rax)
     750:	08 2b                	or     %ch,(%rbx)
     752:	19 2b                	sbb    %ebp,(%rbx)
     754:	08 08                	or     %cl,(%rax)
     756:	19 08                	sbb    %ecx,(%rax)
     758:	19 08                	sbb    %ecx,(%rax)
     75a:	2b 2b                	sub    (%rbx),%ebp
     75c:	08 08                	or     %cl,(%rax)
     75e:	19 08                	sbb    %ecx,(%rax)
     760:	08 19                	or     %bl,(%rcx)
     762:	2b 2b                	sub    (%rbx),%ebp
     764:	08 08                	or     %cl,(%rax)
     766:	19 08                	sbb    %ecx,(%rax)
     768:	08 08                	or     %cl,(%rax)
     76a:	08 08                	or     %cl,(%rax)
     76c:	19 08                	sbb    %ecx,(%rax)
     76e:	19 08                	sbb    %ecx,(%rax)
     770:	2b 08                	sub    (%rax),%ecx
     772:	08 08                	or     %cl,(%rax)
     774:	19 08                	sbb    %ecx,(%rax)
     776:	19 08                	sbb    %ecx,(%rax)
     778:	19 19                	sbb    %ebx,(%rcx)
     77a:	08 08                	or     %cl,(%rax)
     77c:	19 08                	sbb    %ecx,(%rax)
     77e:	19 08                	sbb    %ecx,(%rax)
     780:	08 2b                	or     %ch,(%rbx)
     782:	08 08                	or     %cl,(%rax)
     784:	19 08                	sbb    %ecx,(%rax)
     786:	19 08                	sbb    %ecx,(%rax)
     788:	2b 2b                	sub    (%rbx),%ebp
     78a:	08 08                	or     %cl,(%rax)
     78c:	19 08                	sbb    %ecx,(%rax)
     78e:	19 08                	sbb    %ecx,(%rax)
     790:	19 08                	sbb    %ecx,(%rax)
     792:	19 08                	sbb    %ecx,(%rax)
     794:	19 08                	sbb    %ecx,(%rax)
     796:	19 08                	sbb    %ecx,(%rax)
     798:	08 19                	or     %bl,(%rcx)
     79a:	19 08                	sbb    %ecx,(%rax)
     79c:	19 08                	sbb    %ecx,(%rax)
     79e:	19 08                	sbb    %ecx,(%rax)
     7a0:	2b 19                	sub    (%rcx),%ebx
     7a2:	19 08                	sbb    %ecx,(%rax)
     7a4:	19 08                	sbb    %ecx,(%rax)
     7a6:	19 08                	sbb    %ecx,(%rax)
     7a8:	19 2b                	sbb    %ebp,(%rbx)
     7aa:	19 08                	sbb    %ecx,(%rax)
     7ac:	19 08                	sbb    %ecx,(%rax)
     7ae:	19 08                	sbb    %ecx,(%rax)
     7b0:	08 08                	or     %cl,(%rax)
     7b2:	2b 08                	sub    (%rax),%ecx
     7b4:	19 08                	sbb    %ecx,(%rax)
     7b6:	19 08                	sbb    %ecx,(%rax)
     7b8:	2b 08                	sub    (%rax),%ecx
     7ba:	2b 08                	sub    (%rax),%ecx
     7bc:	19 08                	sbb    %ecx,(%rax)
     7be:	19 08                	sbb    %ecx,(%rax)
     7c0:	19 19                	sbb    %ebx,(%rcx)
     7c2:	2b 08                	sub    (%rax),%ecx
     7c4:	19 08                	sbb    %ecx,(%rax)
     7c6:	19 08                	sbb    %ecx,(%rax)
     7c8:	08 2b                	or     %ch,(%rbx)
     7ca:	2b 08                	sub    (%rax),%ecx
     7cc:	19 08                	sbb    %ecx,(%rax)
     7ce:	19 08                	sbb    %ecx,(%rax)
     7d0:	19 08                	sbb    %ecx,(%rax)
     7d2:	08 19                	or     %bl,(%rcx)
     7d4:	19 08                	sbb    %ecx,(%rax)
     7d6:	19 08                	sbb    %ecx,(%rax)
     7d8:	08 19                	or     %bl,(%rcx)
     7da:	08 19                	or     %bl,(%rcx)
     7dc:	19 08                	sbb    %ecx,(%rax)
     7de:	19 08                	sbb    %ecx,(%rax)
     7e0:	2b 19                	sub    (%rcx),%ebx
     7e2:	08 19                	or     %bl,(%rcx)
     7e4:	19 08                	sbb    %ecx,(%rax)
     7e6:	19 08                	sbb    %ecx,(%rax)
     7e8:	19 2b                	sbb    %ebp,(%rbx)
     7ea:	08 19                	or     %bl,(%rcx)
     7ec:	19 08                	sbb    %ecx,(%rax)
     7ee:	19 08                	sbb    %ecx,(%rax)
     7f0:	08 08                	or     %cl,(%rax)
     7f2:	19 19                	sbb    %ebx,(%rcx)
     7f4:	19 08                	sbb    %ecx,(%rax)
     7f6:	19 08                	sbb    %ecx,(%rax)
     7f8:	2b 08                	sub    (%rax),%ecx
     7fa:	19 19                	sbb    %ebx,(%rcx)
     7fc:	19 08                	sbb    %ecx,(%rax)
     7fe:	19 08                	sbb    %ecx,(%rax)
     800:	19 19                	sbb    %ebx,(%rcx)
     802:	19 19                	sbb    %ebx,(%rcx)
     804:	19 08                	sbb    %ecx,(%rax)
     806:	19 08                	sbb    %ecx,(%rax)
     808:	08 2b                	or     %ch,(%rbx)
     80a:	19 19                	sbb    %ebx,(%rcx)
     80c:	19 08                	sbb    %ecx,(%rax)
     80e:	19 08                	sbb    %ecx,(%rax)
     810:	19 08                	sbb    %ecx,(%rax)
     812:	2b 19                	sub    (%rcx),%ebx
     814:	19 08                	sbb    %ecx,(%rax)
     816:	19 08                	sbb    %ecx,(%rax)
     818:	08 19                	or     %bl,(%rcx)
     81a:	2b 19                	sub    (%rcx),%ebx
     81c:	19 08                	sbb    %ecx,(%rax)
     81e:	19 08                	sbb    %ecx,(%rax)
     820:	08 08                	or     %cl,(%rax)
     822:	08 2b                	or     %ch,(%rbx)
     824:	19 08                	sbb    %ecx,(%rax)
     826:	19 08                	sbb    %ecx,(%rax)
     828:	2b 08                	sub    (%rax),%ecx
     82a:	08 2b                	or     %ch,(%rbx)
     82c:	19 08                	sbb    %ecx,(%rax)
     82e:	19 08                	sbb    %ecx,(%rax)
     830:	19 19                	sbb    %ebx,(%rcx)
     832:	08 2b                	or     %ch,(%rbx)
     834:	19 08                	sbb    %ecx,(%rax)
     836:	19 08                	sbb    %ecx,(%rax)
     838:	08 2b                	or     %ch,(%rbx)
     83a:	08 2b                	or     %ch,(%rbx)
     83c:	19 08                	sbb    %ecx,(%rax)
     83e:	19 08                	sbb    %ecx,(%rax)
     840:	19 08                	sbb    %ecx,(%rax)
     842:	19 2b                	sbb    %ebp,(%rbx)
     844:	19 08                	sbb    %ecx,(%rax)
     846:	19 08                	sbb    %ecx,(%rax)
     848:	08 19                	or     %bl,(%rcx)
     84a:	19 2b                	sbb    %ebp,(%rbx)
     84c:	19 08                	sbb    %ecx,(%rax)
     84e:	19 08                	sbb    %ecx,(%rax)
     850:	19 08                	sbb    %ecx,(%rax)
     852:	08 08                	or     %cl,(%rax)
     854:	2b 08                	sub    (%rax),%ecx
     856:	19 08                	sbb    %ecx,(%rax)
     858:	08 19                	or     %bl,(%rcx)
     85a:	08 08                	or     %cl,(%rax)
     85c:	2b 08                	sub    (%rax),%ecx
     85e:	19 08                	sbb    %ecx,(%rax)
     860:	19 2b                	sbb    %ebp,(%rbx)
     862:	08 08                	or     %cl,(%rax)
     864:	2b 08                	sub    (%rax),%ecx
     866:	19 08                	sbb    %ecx,(%rax)
     868:	08 08                	or     %cl,(%rax)
     86a:	19 08                	sbb    %ecx,(%rax)
     86c:	2b 08                	sub    (%rax),%ecx
     86e:	19 08                	sbb    %ecx,(%rax)
     870:	19 19                	sbb    %ebx,(%rcx)
     872:	19 08                	sbb    %ecx,(%rax)
     874:	2b 08                	sub    (%rax),%ecx
     876:	19 08                	sbb    %ecx,(%rax)
     878:	19 08                	sbb    %ecx,(%rax)
     87a:	2b 08                	sub    (%rax),%ecx
     87c:	2b 08                	sub    (%rax),%ecx
     87e:	19 08                	sbb    %ecx,(%rax)
     880:	08 19                	or     %bl,(%rcx)
     882:	2b 08                	sub    (%rax),%ecx
     884:	2b 08                	sub    (%rax),%ecx
     886:	19 08                	sbb    %ecx,(%rax)
     888:	08 08                	or     %cl,(%rax)
     88a:	08 19                	or     %bl,(%rcx)
     88c:	2b 08                	sub    (%rax),%ecx
     88e:	19 08                	sbb    %ecx,(%rax)
     890:	19 19                	sbb    %ebx,(%rcx)
     892:	08 19                	or     %bl,(%rcx)
     894:	2b 08                	sub    (%rax),%ecx
     896:	19 08                	sbb    %ecx,(%rax)
     898:	19 08                	sbb    %ecx,(%rax)
     89a:	19 19                	sbb    %ebx,(%rcx)
     89c:	2b 08                	sub    (%rax),%ecx
     89e:	19 08                	sbb    %ecx,(%rax)
     8a0:	08 19                	or     %bl,(%rcx)
     8a2:	19 19                	sbb    %ebx,(%rcx)
     8a4:	2b 08                	sub    (%rax),%ecx
     8a6:	19 08                	sbb    %ecx,(%rax)
     8a8:	19 08                	sbb    %ecx,(%rax)
     8aa:	08 2b                	or     %ch,(%rbx)
     8ac:	2b 08                	sub    (%rax),%ecx
     8ae:	19 08                	sbb    %ecx,(%rax)
     8b0:	08 19                	or     %bl,(%rcx)
     8b2:	08 2b                	or     %ch,(%rbx)
     8b4:	2b 08                	sub    (%rax),%ecx
     8b6:	19 08                	sbb    %ecx,(%rax)
     8b8:	08 08                	or     %cl,(%rax)
     8ba:	19 2b                	sbb    %ebp,(%rbx)
     8bc:	2b 08                	sub    (%rax),%ecx
     8be:	19 08                	sbb    %ecx,(%rax)
     8c0:	08 08                	or     %cl,(%rax)
     8c2:	08 08                	or     %cl,(%rax)
     8c4:	08 19                	or     %bl,(%rcx)
     8c6:	19 08                	sbb    %ecx,(%rax)
     8c8:	2b 08                	sub    (%rax),%ecx
     8ca:	08 08                	or     %cl,(%rax)
     8cc:	08 19                	or     %bl,(%rcx)
     8ce:	19 08                	sbb    %ecx,(%rax)
     8d0:	19 19                	sbb    %ebx,(%rcx)
     8d2:	08 08                	or     %cl,(%rax)
     8d4:	08 19                	or     %bl,(%rcx)
     8d6:	19 08                	sbb    %ecx,(%rax)
     8d8:	08 2b                	or     %ch,(%rbx)
     8da:	08 08                	or     %cl,(%rax)
     8dc:	08 19                	or     %bl,(%rcx)
     8de:	19 08                	sbb    %ecx,(%rax)
     8e0:	19 08                	sbb    %ecx,(%rax)
     8e2:	19 08                	sbb    %ecx,(%rax)
     8e4:	08 19                	or     %bl,(%rcx)
     8e6:	19 08                	sbb    %ecx,(%rax)
     8e8:	08 19                	or     %bl,(%rcx)
     8ea:	19 08                	sbb    %ecx,(%rax)
     8ec:	08 19                	or     %bl,(%rcx)
     8ee:	19 08                	sbb    %ecx,(%rax)
     8f0:	2b 19                	sub    (%rcx),%ebx
     8f2:	19 08                	sbb    %ecx,(%rax)
     8f4:	08 19                	or     %bl,(%rcx)
     8f6:	19 08                	sbb    %ecx,(%rax)
     8f8:	19 2b                	sbb    %ebp,(%rbx)
     8fa:	19 08                	sbb    %ecx,(%rax)
     8fc:	08 19                	or     %bl,(%rcx)
     8fe:	19 08                	sbb    %ecx,(%rax)
     900:	08 08                	or     %cl,(%rax)
     902:	2b 08                	sub    (%rax),%ecx
     904:	08 19                	or     %bl,(%rcx)
     906:	19 08                	sbb    %ecx,(%rax)
     908:	19 19                	sbb    %ebx,(%rcx)
     90a:	2b 08                	sub    (%rax),%ecx
     90c:	08 19                	or     %bl,(%rcx)
     90e:	19 08                	sbb    %ecx,(%rax)
     910:	08 2b                	or     %ch,(%rbx)
     912:	2b 08                	sub    (%rax),%ecx
     914:	08 19                	or     %bl,(%rcx)
     916:	19 08                	sbb    %ecx,(%rax)
     918:	19 08                	sbb    %ecx,(%rax)
     91a:	08 19                	or     %bl,(%rcx)
     91c:	08 19                	or     %bl,(%rcx)
     91e:	19 08                	sbb    %ecx,(%rax)
     920:	08 19                	or     %bl,(%rcx)
     922:	08 19                	or     %bl,(%rcx)
     924:	08 19                	or     %bl,(%rcx)
     926:	19 08                	sbb    %ecx,(%rax)
     928:	2b 19                	sub    (%rcx),%ebx
     92a:	08 19                	or     %bl,(%rcx)
     92c:	08 19                	or     %bl,(%rcx)
     92e:	19 08                	sbb    %ecx,(%rax)
     930:	19 2b                	sbb    %ebp,(%rbx)
     932:	08 19                	or     %bl,(%rcx)
     934:	08 19                	or     %bl,(%rcx)
     936:	19 08                	sbb    %ecx,(%rax)
     938:	08 08                	or     %cl,(%rax)
     93a:	19 19                	sbb    %ebx,(%rcx)
     93c:	08 19                	or     %bl,(%rcx)
     93e:	19 08                	sbb    %ecx,(%rax)
     940:	2b 08                	sub    (%rax),%ecx
     942:	19 19                	sbb    %ebx,(%rcx)
     944:	08 19                	or     %bl,(%rcx)
     946:	19 08                	sbb    %ecx,(%rax)
     948:	19 19                	sbb    %ebx,(%rcx)
     94a:	19 19                	sbb    %ebx,(%rcx)
     94c:	08 19                	or     %bl,(%rcx)
     94e:	19 08                	sbb    %ecx,(%rax)
     950:	08 2b                	or     %ch,(%rbx)
     952:	19 19                	sbb    %ebx,(%rcx)
     954:	08 19                	or     %bl,(%rcx)
     956:	19 08                	sbb    %ecx,(%rax)
     958:	19 08                	sbb    %ecx,(%rax)
     95a:	2b 19                	sub    (%rcx),%ebx
     95c:	08 19                	or     %bl,(%rcx)
     95e:	19 08                	sbb    %ecx,(%rax)
     960:	08 19                	or     %bl,(%rcx)
     962:	2b 19                	sub    (%rcx),%ebx
     964:	08 19                	or     %bl,(%rcx)
     966:	19 08                	sbb    %ecx,(%rax)
     968:	08 08                	or     %cl,(%rax)
     96a:	08 2b                	or     %ch,(%rbx)
     96c:	08 19                	or     %bl,(%rcx)
     96e:	19 08                	sbb    %ecx,(%rax)
     970:	2b 08                	sub    (%rax),%ecx
     972:	08 2b                	or     %ch,(%rbx)
     974:	08 19                	or     %bl,(%rcx)
     976:	19 08                	sbb    %ecx,(%rax)
     978:	19 19                	sbb    %ebx,(%rcx)
     97a:	08 2b                	or     %ch,(%rbx)
     97c:	08 19                	or     %bl,(%rcx)
     97e:	19 08                	sbb    %ecx,(%rax)
     980:	08 2b                	or     %ch,(%rbx)
     982:	08 2b                	or     %ch,(%rbx)
     984:	08 19                	or     %bl,(%rcx)
     986:	19 08                	sbb    %ecx,(%rax)
     988:	19 08                	sbb    %ecx,(%rax)
     98a:	19 2b                	sbb    %ebp,(%rbx)
     98c:	08 19                	or     %bl,(%rcx)
     98e:	19 08                	sbb    %ecx,(%rax)
     990:	08 19                	or     %bl,(%rcx)
     992:	19 2b                	sbb    %ebp,(%rbx)
     994:	08 19                	or     %bl,(%rcx)
     996:	19 08                	sbb    %ecx,(%rax)
     998:	08 08                	or     %cl,(%rax)
     99a:	2b 2b                	sub    (%rbx),%ebp
     99c:	08 19                	or     %bl,(%rcx)
     99e:	19 08                	sbb    %ecx,(%rax)
     9a0:	19 08                	sbb    %ecx,(%rax)
     9a2:	08 08                	or     %cl,(%rax)
     9a4:	19 19                	sbb    %ebx,(%rcx)
     9a6:	19 08                	sbb    %ecx,(%rax)
     9a8:	08 19                	or     %bl,(%rcx)
     9aa:	08 08                	or     %cl,(%rax)
     9ac:	19 19                	sbb    %ebx,(%rcx)
     9ae:	19 08                	sbb    %ecx,(%rax)
     9b0:	2b 19                	sub    (%rcx),%ebx
     9b2:	08 08                	or     %cl,(%rax)
     9b4:	19 19                	sbb    %ebx,(%rcx)
     9b6:	19 08                	sbb    %ecx,(%rax)
     9b8:	19 2b                	sbb    %ebp,(%rbx)
     9ba:	08 08                	or     %cl,(%rax)
     9bc:	19 19                	sbb    %ebx,(%rcx)
     9be:	19 08                	sbb    %ecx,(%rax)
     9c0:	08 08                	or     %cl,(%rax)
     9c2:	19 08                	sbb    %ecx,(%rax)
     9c4:	19 19                	sbb    %ebx,(%rcx)
     9c6:	19 08                	sbb    %ecx,(%rax)
     9c8:	2b 08                	sub    (%rax),%ecx
     9ca:	19 08                	sbb    %ecx,(%rax)
     9cc:	19 19                	sbb    %ebx,(%rcx)
     9ce:	19 08                	sbb    %ecx,(%rax)
     9d0:	19 19                	sbb    %ebx,(%rcx)
     9d2:	19 08                	sbb    %ecx,(%rax)
     9d4:	19 19                	sbb    %ebx,(%rcx)
     9d6:	19 08                	sbb    %ecx,(%rax)
     9d8:	08 2b                	or     %ch,(%rbx)
     9da:	19 08                	sbb    %ecx,(%rax)
     9dc:	19 19                	sbb    %ebx,(%rcx)
     9de:	19 08                	sbb    %ecx,(%rax)
     9e0:	19 08                	sbb    %ecx,(%rax)
     9e2:	2b 08                	sub    (%rax),%ecx
     9e4:	19 19                	sbb    %ebx,(%rcx)
     9e6:	19 08                	sbb    %ecx,(%rax)
     9e8:	08 19                	or     %bl,(%rcx)
     9ea:	2b 08                	sub    (%rax),%ecx
     9ec:	19 19                	sbb    %ebx,(%rcx)
     9ee:	19 08                	sbb    %ecx,(%rax)
     9f0:	08 08                	or     %cl,(%rax)
     9f2:	08 19                	or     %bl,(%rcx)
     9f4:	19 19                	sbb    %ebx,(%rcx)
     9f6:	19 08                	sbb    %ecx,(%rax)
     9f8:	2b 08                	sub    (%rax),%ecx
     9fa:	08 19                	or     %bl,(%rcx)
     9fc:	19 19                	sbb    %ebx,(%rcx)
     9fe:	19 08                	sbb    %ecx,(%rax)
     a00:	19 19                	sbb    %ebx,(%rcx)
     a02:	08 19                	or     %bl,(%rcx)
     a04:	19 19                	sbb    %ebx,(%rcx)
     a06:	19 08                	sbb    %ecx,(%rax)
     a08:	08 2b                	or     %ch,(%rbx)
     a0a:	08 19                	or     %bl,(%rcx)
     a0c:	19 19                	sbb    %ebx,(%rcx)
     a0e:	19 08                	sbb    %ecx,(%rax)
     a10:	19 08                	sbb    %ecx,(%rax)
     a12:	19 19                	sbb    %ebx,(%rcx)
     a14:	19 19                	sbb    %ebx,(%rcx)
     a16:	19 08                	sbb    %ecx,(%rax)
     a18:	08 19                	or     %bl,(%rcx)
     a1a:	19 19                	sbb    %ebx,(%rcx)
     a1c:	19 19                	sbb    %ebx,(%rcx)
     a1e:	19 08                	sbb    %ecx,(%rax)
     a20:	08 08                	or     %cl,(%rax)
     a22:	2b 19                	sub    (%rcx),%ebx
     a24:	19 19                	sbb    %ebx,(%rcx)
     a26:	19 08                	sbb    %ecx,(%rax)
     a28:	19 08                	sbb    %ecx,(%rax)
     a2a:	08 2b                	or     %ch,(%rbx)
     a2c:	19 19                	sbb    %ebx,(%rcx)
     a2e:	19 08                	sbb    %ecx,(%rax)
     a30:	08 19                	or     %bl,(%rcx)
     a32:	08 2b                	or     %ch,(%rbx)
     a34:	19 19                	sbb    %ebx,(%rcx)
     a36:	19 08                	sbb    %ecx,(%rax)
     a38:	08 08                	or     %cl,(%rax)
     a3a:	19 2b                	sbb    %ebp,(%rbx)
     a3c:	19 19                	sbb    %ebx,(%rcx)
     a3e:	19 08                	sbb    %ecx,(%rax)
     a40:	08 08                	or     %cl,(%rax)
     a42:	08 08                	or     %cl,(%rax)
     a44:	2b 19                	sub    (%rcx),%ebx
     a46:	19 08                	sbb    %ecx,(%rax)
     a48:	19 19                	sbb    %ebx,(%rcx)
     a4a:	08 08                	or     %cl,(%rax)
     a4c:	2b 19                	sub    (%rcx),%ebx
     a4e:	19 08                	sbb    %ecx,(%rax)
     a50:	08 2b                	or     %ch,(%rbx)
     a52:	08 08                	or     %cl,(%rax)
     a54:	2b 19                	sub    (%rcx),%ebx
     a56:	19 08                	sbb    %ecx,(%rax)
     a58:	19 08                	sbb    %ecx,(%rax)
     a5a:	19 08                	sbb    %ecx,(%rax)
     a5c:	2b 19                	sub    (%rcx),%ebx
     a5e:	19 08                	sbb    %ecx,(%rax)
     a60:	08 19                	or     %bl,(%rcx)
     a62:	19 08                	sbb    %ecx,(%rax)
     a64:	2b 19                	sub    (%rcx),%ebx
     a66:	19 08                	sbb    %ecx,(%rax)
     a68:	08 08                	or     %cl,(%rax)
     a6a:	2b 08                	sub    (%rax),%ecx
     a6c:	2b 19                	sub    (%rcx),%ebx
     a6e:	19 08                	sbb    %ecx,(%rax)
     a70:	19 08                	sbb    %ecx,(%rax)
     a72:	08 19                	or     %bl,(%rcx)
     a74:	2b 19                	sub    (%rcx),%ebx
     a76:	19 08                	sbb    %ecx,(%rax)
     a78:	08 19                	or     %bl,(%rcx)
     a7a:	08 19                	or     %bl,(%rcx)
     a7c:	2b 19                	sub    (%rcx),%ebx
     a7e:	19 08                	sbb    %ecx,(%rax)
     a80:	08 08                	or     %cl,(%rax)
     a82:	19 19                	sbb    %ebx,(%rcx)
     a84:	2b 19                	sub    (%rcx),%ebx
     a86:	19 08                	sbb    %ecx,(%rax)
     a88:	08 08                	or     %cl,(%rax)
     a8a:	08 2b                	or     %ch,(%rbx)
     a8c:	2b 19                	sub    (%rcx),%ebx
     a8e:	19 08                	sbb    %ecx,(%rax)
     a90:	2b 2b                	sub    (%rbx),%ebp
     a92:	2b 2b                	sub    (%rbx),%ebp
     a94:	2b 19                	sub    (%rcx),%ebx
     a96:	19 08                	sbb    %ecx,(%rax)
     a98:	19 08                	sbb    %ecx,(%rax)
     a9a:	08 08                	or     %cl,(%rax)
     a9c:	08 2b                	or     %ch,(%rbx)
     a9e:	19 08                	sbb    %ecx,(%rax)
     aa0:	08 19                	or     %bl,(%rcx)
     aa2:	08 08                	or     %cl,(%rax)
     aa4:	08 2b                	or     %ch,(%rbx)
     aa6:	19 08                	sbb    %ecx,(%rax)
     aa8:	2b 19                	sub    (%rcx),%ebx
     aaa:	08 08                	or     %cl,(%rax)
     aac:	08 2b                	or     %ch,(%rbx)
     aae:	19 08                	sbb    %ecx,(%rax)
     ab0:	19 2b                	sbb    %ebp,(%rbx)
     ab2:	08 08                	or     %cl,(%rax)
     ab4:	08 2b                	or     %ch,(%rbx)
     ab6:	19 08                	sbb    %ecx,(%rax)
     ab8:	08 08                	or     %cl,(%rax)
     aba:	19 08                	sbb    %ecx,(%rax)
     abc:	08 2b                	or     %ch,(%rbx)
     abe:	19 08                	sbb    %ecx,(%rax)
     ac0:	19 19                	sbb    %ebx,(%rcx)
     ac2:	19 08                	sbb    %ecx,(%rax)
     ac4:	08 2b                	or     %ch,(%rbx)
     ac6:	19 08                	sbb    %ecx,(%rax)
     ac8:	08 2b                	or     %ch,(%rbx)
     aca:	19 08                	sbb    %ecx,(%rax)
     acc:	08 2b                	or     %ch,(%rbx)
     ace:	19 08                	sbb    %ecx,(%rax)
     ad0:	19 08                	sbb    %ecx,(%rax)
     ad2:	2b 08                	sub    (%rax),%ecx
     ad4:	08 2b                	or     %ch,(%rbx)
     ad6:	19 08                	sbb    %ecx,(%rax)
     ad8:	08 08                	or     %cl,(%rax)
     ada:	08 19                	or     %bl,(%rcx)
     adc:	08 2b                	or     %ch,(%rbx)
     ade:	19 08                	sbb    %ecx,(%rax)
     ae0:	2b 08                	sub    (%rax),%ecx
     ae2:	08 19                	or     %bl,(%rcx)
     ae4:	08 2b                	or     %ch,(%rbx)
     ae6:	19 08                	sbb    %ecx,(%rax)
     ae8:	19 19                	sbb    %ebx,(%rcx)
     aea:	08 19                	or     %bl,(%rcx)
     aec:	08 2b                	or     %ch,(%rbx)
     aee:	19 08                	sbb    %ecx,(%rax)
     af0:	08 2b                	or     %ch,(%rbx)
     af2:	08 19                	or     %bl,(%rcx)
     af4:	08 2b                	or     %ch,(%rbx)
     af6:	19 08                	sbb    %ecx,(%rax)
     af8:	19 08                	sbb    %ecx,(%rax)
     afa:	19 19                	sbb    %ebx,(%rcx)
     afc:	08 2b                	or     %ch,(%rbx)
     afe:	19 08                	sbb    %ecx,(%rax)
     b00:	08 19                	or     %bl,(%rcx)
     b02:	19 19                	sbb    %ebx,(%rcx)
     b04:	08 2b                	or     %ch,(%rbx)
     b06:	19 08                	sbb    %ecx,(%rax)
     b08:	08 08                	or     %cl,(%rax)
     b0a:	2b 19                	sub    (%rcx),%ebx
     b0c:	08 2b                	or     %ch,(%rbx)
     b0e:	19 08                	sbb    %ecx,(%rax)
     b10:	19 08                	sbb    %ecx,(%rax)
     b12:	08 2b                	or     %ch,(%rbx)
     b14:	08 2b                	or     %ch,(%rbx)
     b16:	19 08                	sbb    %ecx,(%rax)
     b18:	08 19                	or     %bl,(%rcx)
     b1a:	08 2b                	or     %ch,(%rbx)
     b1c:	08 2b                	or     %ch,(%rbx)
     b1e:	19 08                	sbb    %ecx,(%rax)
     b20:	08 08                	or     %cl,(%rax)
     b22:	08 08                	or     %cl,(%rax)
     b24:	19 2b                	sbb    %ebp,(%rbx)
     b26:	19 08                	sbb    %ecx,(%rax)
     b28:	2b 08                	sub    (%rax),%ecx
     b2a:	08 08                	or     %cl,(%rax)
     b2c:	19 2b                	sbb    %ebp,(%rbx)
     b2e:	19 08                	sbb    %ecx,(%rax)
     b30:	19 19                	sbb    %ebx,(%rcx)
     b32:	08 08                	or     %cl,(%rax)
     b34:	19 2b                	sbb    %ebp,(%rbx)
     b36:	19 08                	sbb    %ecx,(%rax)
     b38:	08 2b                	or     %ch,(%rbx)
     b3a:	08 08                	or     %cl,(%rax)
     b3c:	19 2b                	sbb    %ebp,(%rbx)
     b3e:	19 08                	sbb    %ecx,(%rax)
     b40:	19 08                	sbb    %ecx,(%rax)
     b42:	19 08                	sbb    %ecx,(%rax)
     b44:	19 2b                	sbb    %ebp,(%rbx)
     b46:	19 08                	sbb    %ecx,(%rax)
     b48:	08 19                	or     %bl,(%rcx)
     b4a:	19 08                	sbb    %ecx,(%rax)
     b4c:	19 2b                	sbb    %ebp,(%rbx)
     b4e:	19 08                	sbb    %ecx,(%rax)
     b50:	08 08                	or     %cl,(%rax)
     b52:	2b 08                	sub    (%rax),%ecx
     b54:	19 2b                	sbb    %ebp,(%rbx)
     b56:	19 08                	sbb    %ecx,(%rax)
     b58:	19 08                	sbb    %ecx,(%rax)
     b5a:	08 19                	or     %bl,(%rcx)
     b5c:	19 2b                	sbb    %ebp,(%rbx)
     b5e:	19 08                	sbb    %ecx,(%rax)
     b60:	08 19                	or     %bl,(%rcx)
     b62:	08 19                	or     %bl,(%rcx)
     b64:	19 2b                	sbb    %ebp,(%rbx)
     b66:	19 08                	sbb    %ecx,(%rax)
     b68:	08 08                	or     %cl,(%rax)
     b6a:	19 19                	sbb    %ebx,(%rcx)
     b6c:	19 2b                	sbb    %ebp,(%rbx)
     b6e:	19 08                	sbb    %ecx,(%rax)
     b70:	19 2b                	sbb    %ebp,(%rbx)
     b72:	2b 19                	sub    (%rcx),%ebx
     b74:	19 2b                	sbb    %ebp,(%rbx)
     b76:	19 08                	sbb    %ecx,(%rax)
     b78:	2b 08                	sub    (%rax),%ecx
     b7a:	2b 2b                	sub    (%rbx),%ebp
     b7c:	19 2b                	sbb    %ebp,(%rbx)
     b7e:	19 08                	sbb    %ecx,(%rax)
     b80:	08 19                	or     %bl,(%rcx)
     b82:	08 08                	or     %cl,(%rax)
     b84:	2b 2b                	sub    (%rbx),%ebp
     b86:	19 08                	sbb    %ecx,(%rax)
     b88:	08 08                	or     %cl,(%rax)
     b8a:	19 08                	sbb    %ecx,(%rax)
     b8c:	2b 2b                	sub    (%rbx),%ebp
     b8e:	19 08                	sbb    %ecx,(%rax)
     b90:	08 08                	or     %cl,(%rax)
     b92:	08 19                	or     %bl,(%rcx)
     b94:	2b 2b                	sub    (%rbx),%ebp
     b96:	19 08                	sbb    %ecx,(%rax)
     b98:	2b 19                	sub    (%rcx),%ebx
     b9a:	19 19                	sbb    %ebx,(%rcx)
     b9c:	2b 2b                	sub    (%rbx),%ebp
     b9e:	19 08                	sbb    %ecx,(%rax)
     ba0:	08 08                	or     %cl,(%rax)
     ba2:	08 08                	or     %cl,(%rax)
     ba4:	08 08                	or     %cl,(%rax)
     ba6:	2b 08                	sub    (%rax),%ecx
     ba8:	2b 08                	sub    (%rax),%ecx
     baa:	08 08                	or     %cl,(%rax)
     bac:	08 08                	or     %cl,(%rax)
     bae:	2b 08                	sub    (%rax),%ecx
     bb0:	19 19                	sbb    %ebx,(%rcx)
     bb2:	08 08                	or     %cl,(%rax)
     bb4:	08 08                	or     %cl,(%rax)
     bb6:	2b 08                	sub    (%rax),%ecx
     bb8:	08 2b                	or     %ch,(%rbx)
     bba:	08 08                	or     %cl,(%rax)
     bbc:	08 08                	or     %cl,(%rax)
     bbe:	2b 08                	sub    (%rax),%ecx
     bc0:	19 08                	sbb    %ecx,(%rax)
     bc2:	19 08                	sbb    %ecx,(%rax)
     bc4:	08 08                	or     %cl,(%rax)
     bc6:	2b 08                	sub    (%rax),%ecx
     bc8:	08 19                	or     %bl,(%rcx)
     bca:	19 08                	sbb    %ecx,(%rax)
     bcc:	08 08                	or     %cl,(%rax)
     bce:	2b 08                	sub    (%rax),%ecx
     bd0:	2b 19                	sub    (%rcx),%ebx
     bd2:	19 08                	sbb    %ecx,(%rax)
     bd4:	08 08                	or     %cl,(%rax)
     bd6:	2b 08                	sub    (%rax),%ecx
     bd8:	19 2b                	sbb    %ebp,(%rbx)
     bda:	19 08                	sbb    %ecx,(%rax)
     bdc:	08 08                	or     %cl,(%rax)
     bde:	2b 08                	sub    (%rax),%ecx
     be0:	08 08                	or     %cl,(%rax)
     be2:	2b 08                	sub    (%rax),%ecx
     be4:	08 08                	or     %cl,(%rax)
     be6:	2b 08                	sub    (%rax),%ecx
     be8:	19 19                	sbb    %ebx,(%rcx)
     bea:	2b 08                	sub    (%rax),%ecx
     bec:	08 08                	or     %cl,(%rax)
     bee:	2b 08                	sub    (%rax),%ecx
     bf0:	2b 2b                	sub    (%rbx),%ebp
     bf2:	2b 08                	sub    (%rax),%ecx
     bf4:	08 08                	or     %cl,(%rax)
     bf6:	2b 08                	sub    (%rax),%ecx
     bf8:	19 08                	sbb    %ecx,(%rax)
     bfa:	08 19                	or     %bl,(%rcx)
     bfc:	08 08                	or     %cl,(%rax)
     bfe:	2b 08                	sub    (%rax),%ecx
     c00:	08 19                	or     %bl,(%rcx)
     c02:	08 19                	or     %bl,(%rcx)
     c04:	08 08                	or     %cl,(%rax)
     c06:	2b 08                	sub    (%rax),%ecx
     c08:	08 08                	or     %cl,(%rax)
     c0a:	19 19                	sbb    %ebx,(%rcx)
     c0c:	08 08                	or     %cl,(%rax)
     c0e:	2b 08                	sub    (%rax),%ecx
     c10:	2b 08                	sub    (%rax),%ecx
     c12:	19 19                	sbb    %ebx,(%rcx)
     c14:	08 08                	or     %cl,(%rax)
     c16:	2b 08                	sub    (%rax),%ecx
     c18:	19 19                	sbb    %ebx,(%rcx)
     c1a:	19 19                	sbb    %ebx,(%rcx)
     c1c:	08 08                	or     %cl,(%rax)
     c1e:	2b 08                	sub    (%rax),%ecx
     c20:	08 19                	or     %bl,(%rcx)
     c22:	2b 19                	sub    (%rcx),%ebx
     c24:	08 08                	or     %cl,(%rax)
     c26:	2b 08                	sub    (%rax),%ecx
     c28:	08 08                	or     %cl,(%rax)
     c2a:	08 2b                	or     %ch,(%rbx)
     c2c:	08 08                	or     %cl,(%rax)
     c2e:	2b 08                	sub    (%rax),%ecx
     c30:	2b 2b                	sub    (%rbx),%ebp
     c32:	08 2b                	or     %ch,(%rbx)
     c34:	08 08                	or     %cl,(%rax)
     c36:	2b 08                	sub    (%rax),%ecx
     c38:	08 19                	or     %bl,(%rcx)
     c3a:	19 2b                	sbb    %ebp,(%rbx)
     c3c:	08 08                	or     %cl,(%rax)
     c3e:	2b 08                	sub    (%rax),%ecx
     c40:	2b 2b                	sub    (%rbx),%ebp
     c42:	2b 2b                	sub    (%rbx),%ebp
     c44:	08 08                	or     %cl,(%rax)
     c46:	2b 08                	sub    (%rax),%ecx
     c48:	19 08                	sbb    %ecx,(%rax)
     c4a:	08 08                	or     %cl,(%rax)
     c4c:	19 08                	sbb    %ecx,(%rax)
     c4e:	2b 08                	sub    (%rax),%ecx
     c50:	08 19                	or     %bl,(%rcx)
     c52:	08 08                	or     %cl,(%rax)
     c54:	19 08                	sbb    %ecx,(%rax)
     c56:	2b 08                	sub    (%rax),%ecx
     c58:	08 08                	or     %cl,(%rax)
     c5a:	19 08                	sbb    %ecx,(%rax)
     c5c:	19 08                	sbb    %ecx,(%rax)
     c5e:	2b 08                	sub    (%rax),%ecx
     c60:	2b 08                	sub    (%rax),%ecx
     c62:	19 08                	sbb    %ecx,(%rax)
     c64:	19 08                	sbb    %ecx,(%rax)
     c66:	2b 08                	sub    (%rax),%ecx
     c68:	19 19                	sbb    %ebx,(%rcx)
     c6a:	19 08                	sbb    %ecx,(%rax)
     c6c:	19 08                	sbb    %ecx,(%rax)
     c6e:	2b 08                	sub    (%rax),%ecx
     c70:	19 08                	sbb    %ecx,(%rax)
     c72:	2b 08                	sub    (%rax),%ecx
     c74:	19 08                	sbb    %ecx,(%rax)
     c76:	2b 08                	sub    (%rax),%ecx
     c78:	08 08                	or     %cl,(%rax)
     c7a:	08 19                	or     %bl,(%rcx)
     c7c:	19 08                	sbb    %ecx,(%rax)
     c7e:	2b 08                	sub    (%rax),%ecx
     c80:	2b 08                	sub    (%rax),%ecx
     c82:	08 19                	or     %bl,(%rcx)
     c84:	19 08                	sbb    %ecx,(%rax)
     c86:	2b 08                	sub    (%rax),%ecx
     c88:	19 19                	sbb    %ebx,(%rcx)
     c8a:	08 19                	or     %bl,(%rcx)
     c8c:	19 08                	sbb    %ecx,(%rax)
     c8e:	2b 08                	sub    (%rax),%ecx
     c90:	19 08                	sbb    %ecx,(%rax)
     c92:	19 19                	sbb    %ebx,(%rcx)
     c94:	19 08                	sbb    %ecx,(%rax)
     c96:	2b 08                	sub    (%rax),%ecx
     c98:	08 19                	or     %bl,(%rcx)
     c9a:	19 19                	sbb    %ebx,(%rcx)
     c9c:	19 08                	sbb    %ecx,(%rax)
     c9e:	2b 08                	sub    (%rax),%ecx
     ca0:	08 08                	or     %cl,(%rax)
     ca2:	2b 19                	sub    (%rcx),%ebx
     ca4:	19 08                	sbb    %ecx,(%rax)
     ca6:	2b 08                	sub    (%rax),%ecx
     ca8:	19 08                	sbb    %ecx,(%rax)
     caa:	08 2b                	or     %ch,(%rbx)
     cac:	19 08                	sbb    %ecx,(%rax)
     cae:	2b 08                	sub    (%rax),%ecx
     cb0:	08 19                	or     %bl,(%rcx)
     cb2:	08 2b                	or     %ch,(%rbx)
     cb4:	19 08                	sbb    %ecx,(%rax)
     cb6:	2b 08                	sub    (%rax),%ecx
     cb8:	08 08                	or     %cl,(%rax)
     cba:	19 2b                	sbb    %ebp,(%rbx)
     cbc:	19 08                	sbb    %ecx,(%rax)
     cbe:	2b 08                	sub    (%rax),%ecx
     cc0:	08 08                	or     %cl,(%rax)
     cc2:	08 08                	or     %cl,(%rax)
     cc4:	2b 08                	sub    (%rax),%ecx
     cc6:	2b 08                	sub    (%rax),%ecx
     cc8:	2b 2b                	sub    (%rbx),%ebp
     cca:	08 08                	or     %cl,(%rax)
     ccc:	2b 08                	sub    (%rax),%ecx
     cce:	2b 08                	sub    (%rax),%ecx
     cd0:	2b 08                	sub    (%rax),%ecx
     cd2:	2b 08                	sub    (%rax),%ecx
     cd4:	2b 08                	sub    (%rax),%ecx
     cd6:	2b 08                	sub    (%rax),%ecx
     cd8:	08 2b                	or     %ch,(%rbx)
     cda:	2b 08                	sub    (%rax),%ecx
     cdc:	2b 08                	sub    (%rax),%ecx
     cde:	2b 08                	sub    (%rax),%ecx
     ce0:	2b 2b                	sub    (%rbx),%ebp
     ce2:	2b 08                	sub    (%rax),%ecx
     ce4:	2b 08                	sub    (%rax),%ecx
     ce6:	2b 08                	sub    (%rax),%ecx
     ce8:	08 19                	or     %bl,(%rcx)
     cea:	08 19                	or     %bl,(%rcx)
     cec:	2b 08                	sub    (%rax),%ecx
     cee:	2b 08                	sub    (%rax),%ecx
     cf0:	08 08                	or     %cl,(%rax)
     cf2:	19 19                	sbb    %ebx,(%rcx)
     cf4:	2b 08                	sub    (%rax),%ecx
     cf6:	2b 08                	sub    (%rax),%ecx
     cf8:	08 2b                	or     %ch,(%rbx)
     cfa:	08 2b                	or     %ch,(%rbx)
     cfc:	2b 08                	sub    (%rax),%ecx
     cfe:	2b 08                	sub    (%rax),%ecx
     d00:	2b 2b                	sub    (%rbx),%ebp
     d02:	08 2b                	or     %ch,(%rbx)
     d04:	2b 08                	sub    (%rax),%ecx
     d06:	2b 08                	sub    (%rax),%ecx
     d08:	08 2b                	or     %ch,(%rbx)
     d0a:	2b 2b                	sub    (%rbx),%ebp
     d0c:	2b 08                	sub    (%rax),%ecx
     d0e:	2b 08                	sub    (%rax),%ecx
     d10:	19 08                	sbb    %ecx,(%rax)
     d12:	08 08                	or     %cl,(%rax)
     d14:	08 19                	or     %bl,(%rcx)
     d16:	2b 08                	sub    (%rax),%ecx
     d18:	08 19                	or     %bl,(%rcx)
     d1a:	08 08                	or     %cl,(%rax)
     d1c:	08 19                	or     %bl,(%rcx)
     d1e:	2b 08                	sub    (%rax),%ecx
     d20:	2b 19                	sub    (%rcx),%ebx
     d22:	08 08                	or     %cl,(%rax)
     d24:	08 19                	or     %bl,(%rcx)
     d26:	2b 08                	sub    (%rax),%ecx
     d28:	19 2b                	sbb    %ebp,(%rbx)
     d2a:	08 08                	or     %cl,(%rax)
     d2c:	08 19                	or     %bl,(%rcx)
     d2e:	2b 08                	sub    (%rax),%ecx
     d30:	08 08                	or     %cl,(%rax)
     d32:	19 08                	sbb    %ecx,(%rax)
     d34:	08 19                	or     %bl,(%rcx)
     d36:	2b 08                	sub    (%rax),%ecx
     d38:	19 19                	sbb    %ebx,(%rcx)
     d3a:	19 08                	sbb    %ecx,(%rax)
     d3c:	08 19                	or     %bl,(%rcx)
     d3e:	2b 08                	sub    (%rax),%ecx
     d40:	08 2b                	or     %ch,(%rbx)
     d42:	19 08                	sbb    %ecx,(%rax)
     d44:	08 19                	or     %bl,(%rcx)
     d46:	2b 08                	sub    (%rax),%ecx
     d48:	19 08                	sbb    %ecx,(%rax)
     d4a:	2b 08                	sub    (%rax),%ecx
     d4c:	08 19                	or     %bl,(%rcx)
     d4e:	2b 08                	sub    (%rax),%ecx
     d50:	08 19                	or     %bl,(%rcx)
     d52:	2b 08                	sub    (%rax),%ecx
     d54:	08 19                	or     %bl,(%rcx)
     d56:	2b 08                	sub    (%rax),%ecx
     d58:	08 08                	or     %cl,(%rax)
     d5a:	08 19                	or     %bl,(%rcx)
     d5c:	08 19                	or     %bl,(%rcx)
     d5e:	2b 08                	sub    (%rax),%ecx
     d60:	2b 08                	sub    (%rax),%ecx
     d62:	08 19                	or     %bl,(%rcx)
     d64:	08 19                	or     %bl,(%rcx)
     d66:	2b 08                	sub    (%rax),%ecx
     d68:	19 19                	sbb    %ebx,(%rcx)
     d6a:	08 19                	or     %bl,(%rcx)
     d6c:	08 19                	or     %bl,(%rcx)
     d6e:	2b 08                	sub    (%rax),%ecx
     d70:	08 2b                	or     %ch,(%rbx)
     d72:	08 19                	or     %bl,(%rcx)
     d74:	08 19                	or     %bl,(%rcx)
     d76:	2b 08                	sub    (%rax),%ecx
     d78:	19 08                	sbb    %ecx,(%rax)
     d7a:	19 19                	sbb    %ebx,(%rcx)
     d7c:	08 19                	or     %bl,(%rcx)
     d7e:	2b 08                	sub    (%rax),%ecx
     d80:	08 19                	or     %bl,(%rcx)
     d82:	19 19                	sbb    %ebx,(%rcx)
     d84:	08 19                	or     %bl,(%rcx)
     d86:	2b 08                	sub    (%rax),%ecx
     d88:	08 08                	or     %cl,(%rax)
     d8a:	2b 19                	sub    (%rcx),%ebx
     d8c:	08 19                	or     %bl,(%rcx)
     d8e:	2b 08                	sub    (%rax),%ecx
     d90:	19 08                	sbb    %ecx,(%rax)
     d92:	08 2b                	or     %ch,(%rbx)
     d94:	08 19                	or     %bl,(%rcx)
     d96:	2b 08                	sub    (%rax),%ecx
     d98:	08 19                	or     %bl,(%rcx)
     d9a:	08 2b                	or     %ch,(%rbx)
     d9c:	08 19                	or     %bl,(%rcx)
     d9e:	2b 08                	sub    (%rax),%ecx
     da0:	08 08                	or     %cl,(%rax)
     da2:	19 2b                	sbb    %ebp,(%rbx)
     da4:	08 19                	or     %bl,(%rcx)
     da6:	2b 08                	sub    (%rax),%ecx
     da8:	08 08                	or     %cl,(%rax)
     daa:	08 08                	or     %cl,(%rax)
     dac:	19 19                	sbb    %ebx,(%rcx)
     dae:	2b 08                	sub    (%rax),%ecx
     db0:	19 19                	sbb    %ebx,(%rcx)
     db2:	08 08                	or     %cl,(%rax)
     db4:	19 19                	sbb    %ebx,(%rcx)
     db6:	2b 08                	sub    (%rax),%ecx
     db8:	08 2b                	or     %ch,(%rbx)
     dba:	08 08                	or     %cl,(%rax)
     dbc:	19 19                	sbb    %ebx,(%rcx)
     dbe:	2b 08                	sub    (%rax),%ecx
     dc0:	19 08                	sbb    %ecx,(%rax)
     dc2:	19 08                	sbb    %ecx,(%rax)
     dc4:	19 19                	sbb    %ebx,(%rcx)
     dc6:	2b 08                	sub    (%rax),%ecx
     dc8:	08 19                	or     %bl,(%rcx)
     dca:	19 08                	sbb    %ecx,(%rax)
     dcc:	19 19                	sbb    %ebx,(%rcx)
     dce:	2b 08                	sub    (%rax),%ecx
     dd0:	08 08                	or     %cl,(%rax)
     dd2:	2b 08                	sub    (%rax),%ecx
     dd4:	19 19                	sbb    %ebx,(%rcx)
     dd6:	2b 08                	sub    (%rax),%ecx
     dd8:	19 08                	sbb    %ecx,(%rax)
     dda:	08 19                	or     %bl,(%rcx)
     ddc:	19 19                	sbb    %ebx,(%rcx)
     dde:	2b 08                	sub    (%rax),%ecx
     de0:	08 19                	or     %bl,(%rcx)
     de2:	08 19                	or     %bl,(%rcx)
     de4:	19 19                	sbb    %ebx,(%rcx)
     de6:	2b 08                	sub    (%rax),%ecx
     de8:	08 08                	or     %cl,(%rax)
     dea:	19 19                	sbb    %ebx,(%rcx)
     dec:	19 19                	sbb    %ebx,(%rcx)
     dee:	2b 08                	sub    (%rax),%ecx
     df0:	2b 19                	sub    (%rcx),%ebx
     df2:	2b 19                	sub    (%rcx),%ebx
     df4:	19 19                	sbb    %ebx,(%rcx)
     df6:	2b 08                	sub    (%rax),%ecx
     df8:	08 08                	or     %cl,(%rax)
     dfa:	08 2b                	or     %ch,(%rbx)
     dfc:	19 19                	sbb    %ebx,(%rcx)
     dfe:	2b 08                	sub    (%rax),%ecx
     e00:	19 08                	sbb    %ecx,(%rax)
     e02:	08 08                	or     %cl,(%rax)
     e04:	2b 19                	sub    (%rcx),%ebx
     e06:	2b 08                	sub    (%rax),%ecx
     e08:	08 19                	or     %bl,(%rcx)
     e0a:	08 08                	or     %cl,(%rax)
     e0c:	2b 19                	sub    (%rcx),%ebx
     e0e:	2b 08                	sub    (%rax),%ecx
     e10:	08 08                	or     %cl,(%rax)
     e12:	19 08                	sbb    %ecx,(%rax)
     e14:	2b 19                	sub    (%rcx),%ebx
     e16:	2b 08                	sub    (%rax),%ecx
     e18:	08 08                	or     %cl,(%rax)
     e1a:	08 19                	or     %bl,(%rcx)
     e1c:	2b 19                	sub    (%rcx),%ebx
     e1e:	2b 08                	sub    (%rax),%ecx
     e20:	19 2b                	sbb    %ebp,(%rbx)
     e22:	19 19                	sbb    %ebx,(%rcx)
     e24:	2b 19                	sub    (%rcx),%ebx
     e26:	2b 08                	sub    (%rax),%ecx
     e28:	08 08                	or     %cl,(%rax)
     e2a:	08 08                	or     %cl,(%rax)
     e2c:	08 2b                	or     %ch,(%rbx)
     e2e:	2b 08                	sub    (%rax),%ecx
     e30:	19 19                	sbb    %ebx,(%rcx)
     e32:	08 08                	or     %cl,(%rax)
     e34:	08 2b                	or     %ch,(%rbx)
     e36:	2b 08                	sub    (%rax),%ecx
     e38:	19 08                	sbb    %ecx,(%rax)
     e3a:	19 08                	sbb    %ecx,(%rax)
     e3c:	08 2b                	or     %ch,(%rbx)
     e3e:	2b 08                	sub    (%rax),%ecx
     e40:	08 19                	or     %bl,(%rcx)
     e42:	19 08                	sbb    %ecx,(%rax)
     e44:	08 2b                	or     %ch,(%rbx)
     e46:	2b 08                	sub    (%rax),%ecx
     e48:	19 08                	sbb    %ecx,(%rax)
     e4a:	08 19                	or     %bl,(%rcx)
     e4c:	08 2b                	or     %ch,(%rbx)
     e4e:	2b 08                	sub    (%rax),%ecx
     e50:	08 19                	or     %bl,(%rcx)
     e52:	08 19                	or     %bl,(%rcx)
     e54:	08 2b                	or     %ch,(%rbx)
     e56:	2b 08                	sub    (%rax),%ecx
     e58:	08 08                	or     %cl,(%rax)
     e5a:	19 19                	sbb    %ebx,(%rcx)
     e5c:	08 2b                	or     %ch,(%rbx)
     e5e:	2b 08                	sub    (%rax),%ecx
     e60:	2b 2b                	sub    (%rbx),%ebp
     e62:	08 2b                	or     %ch,(%rbx)
     e64:	08 2b                	or     %ch,(%rbx)
     e66:	2b 08                	sub    (%rax),%ecx
     e68:	2b 2b                	sub    (%rbx),%ebp
     e6a:	2b 2b                	sub    (%rbx),%ebp
     e6c:	08 2b                	or     %ch,(%rbx)
     e6e:	2b 08                	sub    (%rax),%ecx
     e70:	19 08                	sbb    %ecx,(%rax)
     e72:	08 08                	or     %cl,(%rax)
     e74:	19 2b                	sbb    %ebp,(%rbx)
     e76:	2b 08                	sub    (%rax),%ecx
     e78:	08 19                	or     %bl,(%rcx)
     e7a:	08 08                	or     %cl,(%rax)
     e7c:	19 2b                	sbb    %ebp,(%rbx)
     e7e:	2b 08                	sub    (%rax),%ecx
     e80:	08 08                	or     %cl,(%rax)
     e82:	19 08                	sbb    %ecx,(%rax)
     e84:	19 2b                	sbb    %ebp,(%rbx)
     e86:	2b 08                	sub    (%rax),%ecx
     e88:	19 19                	sbb    %ebx,(%rcx)
     e8a:	19 2b                	sbb    %ebp,(%rbx)
     e8c:	19 2b                	sbb    %ebp,(%rbx)
     e8e:	2b 08                	sub    (%rax),%ecx
     e90:	2b 2b                	sub    (%rbx),%ebp
     e92:	08 08                	or     %cl,(%rax)
     e94:	2b 2b                	sub    (%rbx),%ebp
     e96:	2b 08                	sub    (%rax),%ecx
     e98:	2b 08                	sub    (%rax),%ecx
     e9a:	2b 08                	sub    (%rax),%ecx
     e9c:	2b 2b                	sub    (%rbx),%ebp
     e9e:	2b 08                	sub    (%rax),%ecx
     ea0:	08 19                	or     %bl,(%rcx)
     ea2:	2b 19                	sub    (%rcx),%ebx
     ea4:	2b 2b                	sub    (%rbx),%ebp
     ea6:	2b 08                	sub    (%rax),%ecx
     ea8:	08 2b                	or     %ch,(%rbx)
     eaa:	08 2b                	or     %ch,(%rbx)
     eac:	2b 2b                	sub    (%rbx),%ebp
     eae:	2b 08                	sub    (%rax),%ecx
     eb0:	2b 2b                	sub    (%rbx),%ebp
     eb2:	08 2b                	or     %ch,(%rbx)
     eb4:	2b 2b                	sub    (%rbx),%ebp
     eb6:	2b 08                	sub    (%rax),%ecx
     eb8:	19 08                	sbb    %ecx,(%rax)
     eba:	08 08                	or     %cl,(%rax)
     ebc:	08 08                	or     %cl,(%rax)
     ebe:	08 19                	or     %bl,(%rcx)
     ec0:	08 19                	or     %bl,(%rcx)
     ec2:	08 08                	or     %cl,(%rax)
     ec4:	08 08                	or     %cl,(%rax)
     ec6:	08 19                	or     %bl,(%rcx)
     ec8:	2b 19                	sub    (%rcx),%ebx
     eca:	08 08                	or     %cl,(%rax)
     ecc:	08 08                	or     %cl,(%rax)
     ece:	08 19                	or     %bl,(%rcx)
     ed0:	19 2b                	sbb    %ebp,(%rbx)
     ed2:	08 08                	or     %cl,(%rax)
     ed4:	08 08                	or     %cl,(%rax)
     ed6:	08 19                	or     %bl,(%rcx)
     ed8:	08 08                	or     %cl,(%rax)
     eda:	19 08                	sbb    %ecx,(%rax)
     edc:	08 08                	or     %cl,(%rax)
     ede:	08 19                	or     %bl,(%rcx)
     ee0:	2b 08                	sub    (%rax),%ecx
     ee2:	19 08                	sbb    %ecx,(%rax)
     ee4:	08 08                	or     %cl,(%rax)
     ee6:	08 19                	or     %bl,(%rcx)
     ee8:	19 19                	sbb    %ebx,(%rcx)
     eea:	19 08                	sbb    %ecx,(%rax)
     eec:	08 08                	or     %cl,(%rax)
     eee:	08 19                	or     %bl,(%rcx)
     ef0:	08 2b                	or     %ch,(%rbx)
     ef2:	19 08                	sbb    %ecx,(%rax)
     ef4:	08 08                	or     %cl,(%rax)
     ef6:	08 19                	or     %bl,(%rcx)
     ef8:	2b 2b                	sub    (%rbx),%ebp
     efa:	19 08                	sbb    %ecx,(%rax)
     efc:	08 08                	or     %cl,(%rax)
     efe:	08 19                	or     %bl,(%rcx)
     f00:	19 08                	sbb    %ecx,(%rax)
     f02:	2b 08                	sub    (%rax),%ecx
     f04:	08 08                	or     %cl,(%rax)
     f06:	08 19                	or     %bl,(%rcx)
     f08:	08 19                	or     %bl,(%rcx)
     f0a:	2b 08                	sub    (%rax),%ecx
     f0c:	08 08                	or     %cl,(%rax)
     f0e:	08 19                	or     %bl,(%rcx)
     f10:	2b 19                	sub    (%rcx),%ebx
     f12:	2b 08                	sub    (%rax),%ecx
     f14:	08 08                	or     %cl,(%rax)
     f16:	08 19                	or     %bl,(%rcx)
     f18:	08 08                	or     %cl,(%rax)
     f1a:	08 19                	or     %bl,(%rcx)
     f1c:	08 08                	or     %cl,(%rax)
     f1e:	08 19                	or     %bl,(%rcx)
     f20:	2b 08                	sub    (%rax),%ecx
     f22:	08 19                	or     %bl,(%rcx)
     f24:	08 08                	or     %cl,(%rax)
     f26:	08 19                	or     %bl,(%rcx)
     f28:	19 19                	sbb    %ebx,(%rcx)
     f2a:	08 19                	or     %bl,(%rcx)
     f2c:	08 08                	or     %cl,(%rax)
     f2e:	08 19                	or     %bl,(%rcx)
     f30:	08 2b                	or     %ch,(%rbx)
     f32:	08 19                	or     %bl,(%rcx)
     f34:	08 08                	or     %cl,(%rax)
     f36:	08 19                	or     %bl,(%rcx)
     f38:	2b 2b                	sub    (%rbx),%ebp
     f3a:	08 19                	or     %bl,(%rcx)
     f3c:	08 08                	or     %cl,(%rax)
     f3e:	08 19                	or     %bl,(%rcx)
     f40:	19 08                	sbb    %ecx,(%rax)
     f42:	19 19                	sbb    %ebx,(%rcx)
     f44:	08 08                	or     %cl,(%rax)
     f46:	08 19                	or     %bl,(%rcx)
     f48:	08 19                	or     %bl,(%rcx)
     f4a:	19 19                	sbb    %ebx,(%rcx)
     f4c:	08 08                	or     %cl,(%rax)
     f4e:	08 19                	or     %bl,(%rcx)
     f50:	2b 19                	sub    (%rcx),%ebx
     f52:	19 19                	sbb    %ebx,(%rcx)
     f54:	08 08                	or     %cl,(%rax)
     f56:	08 19                	or     %bl,(%rcx)
     f58:	19 2b                	sbb    %ebp,(%rbx)
     f5a:	19 19                	sbb    %ebx,(%rcx)
     f5c:	08 08                	or     %cl,(%rax)
     f5e:	08 19                	or     %bl,(%rcx)
     f60:	08 08                	or     %cl,(%rax)
     f62:	2b 19                	sub    (%rcx),%ebx
     f64:	08 08                	or     %cl,(%rax)
     f66:	08 19                	or     %bl,(%rcx)
     f68:	2b 08                	sub    (%rax),%ecx
     f6a:	2b 19                	sub    (%rcx),%ebx
     f6c:	08 08                	or     %cl,(%rax)
     f6e:	08 19                	or     %bl,(%rcx)
     f70:	19 19                	sbb    %ebx,(%rcx)
     f72:	2b 19                	sub    (%rcx),%ebx
     f74:	08 08                	or     %cl,(%rax)
     f76:	08 19                	or     %bl,(%rcx)
     f78:	19 08                	sbb    %ecx,(%rax)
     f7a:	08 2b                	or     %ch,(%rbx)
     f7c:	08 08                	or     %cl,(%rax)
     f7e:	08 19                	or     %bl,(%rcx)
     f80:	08 19                	or     %bl,(%rcx)
     f82:	08 2b                	or     %ch,(%rbx)
     f84:	08 08                	or     %cl,(%rax)
     f86:	08 19                	or     %bl,(%rcx)
     f88:	08 08                	or     %cl,(%rax)
     f8a:	19 2b                	sbb    %ebp,(%rbx)
     f8c:	08 08                	or     %cl,(%rax)
     f8e:	08 19                	or     %bl,(%rcx)
     f90:	19 19                	sbb    %ebx,(%rcx)
     f92:	19 2b                	sbb    %ebp,(%rbx)
     f94:	08 08                	or     %cl,(%rax)
     f96:	08 19                	or     %bl,(%rcx)
     f98:	08 2b                	or     %ch,(%rbx)
     f9a:	19 2b                	sbb    %ebp,(%rbx)
     f9c:	08 08                	or     %cl,(%rax)
     f9e:	08 19                	or     %bl,(%rcx)
     fa0:	19 08                	sbb    %ecx,(%rax)
     fa2:	2b 2b                	sub    (%rbx),%ebp
     fa4:	08 08                	or     %cl,(%rax)
     fa6:	08 19                	or     %bl,(%rcx)
     fa8:	08 19                	or     %bl,(%rcx)
     faa:	2b 2b                	sub    (%rbx),%ebp
     fac:	08 08                	or     %cl,(%rax)
     fae:	08 19                	or     %bl,(%rcx)
     fb0:	08 08                	or     %cl,(%rax)
     fb2:	08 08                	or     %cl,(%rax)
     fb4:	19 08                	sbb    %ecx,(%rax)
     fb6:	08 19                	or     %bl,(%rcx)
     fb8:	2b 08                	sub    (%rax),%ecx
     fba:	08 08                	or     %cl,(%rax)
     fbc:	19 08                	sbb    %ecx,(%rax)
     fbe:	08 19                	or     %bl,(%rcx)
     fc0:	19 19                	sbb    %ebx,(%rcx)
     fc2:	08 08                	or     %cl,(%rax)
     fc4:	19 08                	sbb    %ecx,(%rax)
     fc6:	08 19                	or     %bl,(%rcx)
     fc8:	08 2b                	or     %ch,(%rbx)
     fca:	08 08                	or     %cl,(%rax)
     fcc:	19 08                	sbb    %ecx,(%rax)
     fce:	08 19                	or     %bl,(%rcx)
     fd0:	19 08                	sbb    %ecx,(%rax)
     fd2:	19 08                	sbb    %ecx,(%rax)
     fd4:	19 08                	sbb    %ecx,(%rax)
     fd6:	08 19                	or     %bl,(%rcx)
     fd8:	08 19                	or     %bl,(%rcx)
     fda:	19 08                	sbb    %ecx,(%rax)
     fdc:	19 08                	sbb    %ecx,(%rax)
     fde:	08 19                	or     %bl,(%rcx)
     fe0:	2b 19                	sub    (%rcx),%ebx
     fe2:	19 08                	sbb    %ecx,(%rax)
     fe4:	19 08                	sbb    %ecx,(%rax)
     fe6:	08 19                	or     %bl,(%rcx)
     fe8:	19 2b                	sbb    %ebp,(%rbx)
     fea:	19 08                	sbb    %ecx,(%rax)
     fec:	19 08                	sbb    %ecx,(%rax)
     fee:	08 19                	or     %bl,(%rcx)
     ff0:	08 08                	or     %cl,(%rax)
     ff2:	2b 08                	sub    (%rax),%ecx
     ff4:	19 08                	sbb    %ecx,(%rax)
     ff6:	08 19                	or     %bl,(%rcx)
     ff8:	2b 08                	sub    (%rax),%ecx
     ffa:	2b 08                	sub    (%rax),%ecx
     ffc:	19 08                	sbb    %ecx,(%rax)
     ffe:	08 19                	or     %bl,(%rcx)
    1000:	19 19                	sbb    %ebx,(%rcx)
    1002:	2b 08                	sub    (%rax),%ecx
    1004:	19 08                	sbb    %ecx,(%rax)
    1006:	08 19                	or     %bl,(%rcx)
    1008:	19 08                	sbb    %ecx,(%rax)
    100a:	08 19                	or     %bl,(%rcx)
    100c:	19 08                	sbb    %ecx,(%rax)
    100e:	08 19                	or     %bl,(%rcx)
    1010:	08 19                	or     %bl,(%rcx)
    1012:	08 19                	or     %bl,(%rcx)
    1014:	19 08                	sbb    %ecx,(%rax)
    1016:	08 19                	or     %bl,(%rcx)
    1018:	2b 19                	sub    (%rcx),%ebx
    101a:	08 19                	or     %bl,(%rcx)
    101c:	19 08                	sbb    %ecx,(%rax)
    101e:	08 19                	or     %bl,(%rcx)
    1020:	19 2b                	sbb    %ebp,(%rbx)
    1022:	08 19                	or     %bl,(%rcx)
    1024:	19 08                	sbb    %ecx,(%rax)
    1026:	08 19                	or     %bl,(%rcx)
    1028:	08 08                	or     %cl,(%rax)
    102a:	19 19                	sbb    %ebx,(%rcx)
    102c:	19 08                	sbb    %ecx,(%rax)
    102e:	08 19                	or     %bl,(%rcx)
    1030:	2b 08                	sub    (%rax),%ecx
    1032:	19 19                	sbb    %ebx,(%rcx)
    1034:	19 08                	sbb    %ecx,(%rax)
    1036:	08 19                	or     %bl,(%rcx)
    1038:	19 19                	sbb    %ebx,(%rcx)
    103a:	19 19                	sbb    %ebx,(%rcx)
    103c:	19 08                	sbb    %ecx,(%rax)
    103e:	08 19                	or     %bl,(%rcx)
    1040:	08 2b                	or     %ch,(%rbx)
    1042:	19 19                	sbb    %ebx,(%rcx)
    1044:	19 08                	sbb    %ecx,(%rax)
    1046:	08 19                	or     %bl,(%rcx)
    1048:	19 08                	sbb    %ecx,(%rax)
    104a:	2b 19                	sub    (%rcx),%ebx
    104c:	19 08                	sbb    %ecx,(%rax)
    104e:	08 19                	or     %bl,(%rcx)
    1050:	08 19                	or     %bl,(%rcx)
    1052:	2b 19                	sub    (%rcx),%ebx
    1054:	19 08                	sbb    %ecx,(%rax)
    1056:	08 19                	or     %bl,(%rcx)
    1058:	08 08                	or     %cl,(%rax)
    105a:	08 2b                	or     %ch,(%rbx)
    105c:	19 08                	sbb    %ecx,(%rax)
    105e:	08 19                	or     %bl,(%rcx)
    1060:	2b 08                	sub    (%rax),%ecx
    1062:	08 2b                	or     %ch,(%rbx)
    1064:	19 08                	sbb    %ecx,(%rax)
    1066:	08 19                	or     %bl,(%rcx)
    1068:	19 19                	sbb    %ebx,(%rcx)
    106a:	08 2b                	or     %ch,(%rbx)
    106c:	19 08                	sbb    %ecx,(%rax)
    106e:	08 19                	or     %bl,(%rcx)
    1070:	08 2b                	or     %ch,(%rbx)
    1072:	08 2b                	or     %ch,(%rbx)
    1074:	19 08                	sbb    %ecx,(%rax)
    1076:	08 19                	or     %bl,(%rcx)
    1078:	19 08                	sbb    %ecx,(%rax)
    107a:	19 2b                	sbb    %ebp,(%rbx)
    107c:	19 08                	sbb    %ecx,(%rax)
    107e:	08 19                	or     %bl,(%rcx)
    1080:	08 19                	or     %bl,(%rcx)
    1082:	19 2b                	sbb    %ebp,(%rbx)
    1084:	19 08                	sbb    %ecx,(%rax)
    1086:	08 19                	or     %bl,(%rcx)
    1088:	08 08                	or     %cl,(%rax)
    108a:	2b 2b                	sub    (%rbx),%ebp
    108c:	19 08                	sbb    %ecx,(%rax)
    108e:	08 19                	or     %bl,(%rcx)
    1090:	19 08                	sbb    %ecx,(%rax)
    1092:	08 08                	or     %cl,(%rax)
    1094:	2b 08                	sub    (%rax),%ecx
    1096:	08 19                	or     %bl,(%rcx)
    1098:	08 19                	or     %bl,(%rcx)
    109a:	08 08                	or     %cl,(%rax)
    109c:	2b 08                	sub    (%rax),%ecx
    109e:	08 19                	or     %bl,(%rcx)
    10a0:	08 08                	or     %cl,(%rax)
    10a2:	19 08                	sbb    %ecx,(%rax)
    10a4:	2b 08                	sub    (%rax),%ecx
    10a6:	08 19                	or     %bl,(%rcx)
    10a8:	2b 08                	sub    (%rax),%ecx
    10aa:	19 08                	sbb    %ecx,(%rax)
    10ac:	2b 08                	sub    (%rax),%ecx
    10ae:	08 19                	or     %bl,(%rcx)
    10b0:	19 19                	sbb    %ebx,(%rcx)
    10b2:	19 08                	sbb    %ecx,(%rax)
    10b4:	2b 08                	sub    (%rax),%ecx
    10b6:	08 19                	or     %bl,(%rcx)
    10b8:	08 2b                	or     %ch,(%rbx)
    10ba:	19 08                	sbb    %ecx,(%rax)
    10bc:	2b 08                	sub    (%rax),%ecx
    10be:	08 19                	or     %bl,(%rcx)
    10c0:	08 19                	or     %bl,(%rcx)
    10c2:	2b 08                	sub    (%rax),%ecx
    10c4:	2b 08                	sub    (%rax),%ecx
    10c6:	08 19                	or     %bl,(%rcx)
    10c8:	08 08                	or     %cl,(%rax)
    10ca:	08 19                	or     %bl,(%rcx)
    10cc:	2b 08                	sub    (%rax),%ecx
    10ce:	08 19                	or     %bl,(%rcx)
    10d0:	19 19                	sbb    %ebx,(%rcx)
    10d2:	08 19                	or     %bl,(%rcx)
    10d4:	2b 08                	sub    (%rax),%ecx
    10d6:	08 19                	or     %bl,(%rcx)
    10d8:	08 2b                	or     %ch,(%rbx)
    10da:	08 19                	or     %bl,(%rcx)
    10dc:	2b 08                	sub    (%rax),%ecx
    10de:	08 19                	or     %bl,(%rcx)
    10e0:	19 08                	sbb    %ecx,(%rax)
    10e2:	19 19                	sbb    %ebx,(%rcx)
    10e4:	2b 08                	sub    (%rax),%ecx
    10e6:	08 19                	or     %bl,(%rcx)
    10e8:	08 19                	or     %bl,(%rcx)
    10ea:	19 19                	sbb    %ebx,(%rcx)
    10ec:	2b 08                	sub    (%rax),%ecx
    10ee:	08 19                	or     %bl,(%rcx)
    10f0:	08 08                	or     %cl,(%rax)
    10f2:	2b 19                	sub    (%rcx),%ebx
    10f4:	2b 08                	sub    (%rax),%ecx
    10f6:	08 19                	or     %bl,(%rcx)
    10f8:	19 08                	sbb    %ecx,(%rax)
    10fa:	08 2b                	or     %ch,(%rbx)
    10fc:	2b 08                	sub    (%rax),%ecx
    10fe:	08 19                	or     %bl,(%rcx)
    1100:	08 19                	or     %bl,(%rcx)
    1102:	08 2b                	or     %ch,(%rbx)
    1104:	2b 08                	sub    (%rax),%ecx
    1106:	08 19                	or     %bl,(%rcx)
    1108:	08 08                	or     %cl,(%rax)
    110a:	08 08                	or     %cl,(%rax)
    110c:	08 19                	or     %bl,(%rcx)
    110e:	08 19                	or     %bl,(%rcx)
    1110:	2b 08                	sub    (%rax),%ecx
    1112:	08 08                	or     %cl,(%rax)
    1114:	08 19                	or     %bl,(%rcx)
    1116:	08 19                	or     %bl,(%rcx)
    1118:	19 19                	sbb    %ebx,(%rcx)
    111a:	08 08                	or     %cl,(%rax)
    111c:	08 19                	or     %bl,(%rcx)
    111e:	08 19                	or     %bl,(%rcx)
    1120:	08 2b                	or     %ch,(%rbx)
    1122:	08 08                	or     %cl,(%rax)
    1124:	08 19                	or     %bl,(%rcx)
    1126:	08 19                	or     %bl,(%rcx)
    1128:	2b 2b                	sub    (%rbx),%ebp
    112a:	08 08                	or     %cl,(%rax)
    112c:	08 19                	or     %bl,(%rcx)
    112e:	08 19                	or     %bl,(%rcx)
    1130:	19 08                	sbb    %ecx,(%rax)
    1132:	19 08                	sbb    %ecx,(%rax)
    1134:	08 19                	or     %bl,(%rcx)
    1136:	08 19                	or     %bl,(%rcx)
    1138:	08 19                	or     %bl,(%rcx)
    113a:	19 08                	sbb    %ecx,(%rax)
    113c:	08 19                	or     %bl,(%rcx)
    113e:	08 19                	or     %bl,(%rcx)
    1140:	2b 19                	sub    (%rcx),%ebx
    1142:	19 08                	sbb    %ecx,(%rax)
    1144:	08 19                	or     %bl,(%rcx)
    1146:	08 19                	or     %bl,(%rcx)
    1148:	19 2b                	sbb    %ebp,(%rbx)
    114a:	19 08                	sbb    %ecx,(%rax)
    114c:	08 19                	or     %bl,(%rcx)
    114e:	08 19                	or     %bl,(%rcx)
    1150:	08 08                	or     %cl,(%rax)
    1152:	2b 08                	sub    (%rax),%ecx
    1154:	08 19                	or     %bl,(%rcx)
    1156:	08 19                	or     %bl,(%rcx)
    1158:	2b 08                	sub    (%rax),%ecx
    115a:	2b 08                	sub    (%rax),%ecx
    115c:	08 19                	or     %bl,(%rcx)
    115e:	08 19                	or     %bl,(%rcx)
    1160:	19 19                	sbb    %ebx,(%rcx)
    1162:	2b 08                	sub    (%rax),%ecx
    1164:	08 19                	or     %bl,(%rcx)
    1166:	08 19                	or     %bl,(%rcx)
    1168:	08 2b                	or     %ch,(%rbx)
    116a:	2b 08                	sub    (%rax),%ecx
    116c:	08 19                	or     %bl,(%rcx)
    116e:	08 19                	or     %bl,(%rcx)
    1170:	19 08                	sbb    %ecx,(%rax)
    1172:	08 19                	or     %bl,(%rcx)
    1174:	08 19                	or     %bl,(%rcx)
    1176:	08 19                	or     %bl,(%rcx)
    1178:	08 19                	or     %bl,(%rcx)
    117a:	08 19                	or     %bl,(%rcx)
    117c:	08 19                	or     %bl,(%rcx)
    117e:	08 19                	or     %bl,(%rcx)
    1180:	2b 19                	sub    (%rcx),%ebx
    1182:	08 19                	or     %bl,(%rcx)
    1184:	08 19                	or     %bl,(%rcx)
    1186:	08 19                	or     %bl,(%rcx)
    1188:	19 2b                	sbb    %ebp,(%rbx)
    118a:	08 19                	or     %bl,(%rcx)
    118c:	08 19                	or     %bl,(%rcx)
    118e:	08 19                	or     %bl,(%rcx)
    1190:	08 08                	or     %cl,(%rax)
    1192:	19 19                	sbb    %ebx,(%rcx)
    1194:	08 19                	or     %bl,(%rcx)
    1196:	08 19                	or     %bl,(%rcx)
    1198:	2b 08                	sub    (%rax),%ecx
    119a:	19 19                	sbb    %ebx,(%rcx)
    119c:	08 19                	or     %bl,(%rcx)
    119e:	08 19                	or     %bl,(%rcx)
    11a0:	19 19                	sbb    %ebx,(%rcx)
    11a2:	19 19                	sbb    %ebx,(%rcx)
    11a4:	08 19                	or     %bl,(%rcx)
    11a6:	08 19                	or     %bl,(%rcx)
    11a8:	08 2b                	or     %ch,(%rbx)
    11aa:	19 19                	sbb    %ebx,(%rcx)
    11ac:	08 19                	or     %bl,(%rcx)
    11ae:	08 19                	or     %bl,(%rcx)
    11b0:	19 08                	sbb    %ecx,(%rax)
    11b2:	2b 19                	sub    (%rcx),%ebx
    11b4:	08 19                	or     %bl,(%rcx)
    11b6:	08 19                	or     %bl,(%rcx)
    11b8:	08 19                	or     %bl,(%rcx)
    11ba:	2b 19                	sub    (%rcx),%ebx
    11bc:	08 19                	or     %bl,(%rcx)
    11be:	08 19                	or     %bl,(%rcx)
    11c0:	08 08                	or     %cl,(%rax)
    11c2:	08 2b                	or     %ch,(%rbx)
    11c4:	08 19                	or     %bl,(%rcx)
    11c6:	08 19                	or     %bl,(%rcx)
    11c8:	2b 08                	sub    (%rax),%ecx
    11ca:	08 2b                	or     %ch,(%rbx)
    11cc:	08 19                	or     %bl,(%rcx)
    11ce:	08 19                	or     %bl,(%rcx)
    11d0:	19 19                	sbb    %ebx,(%rcx)
    11d2:	08 2b                	or     %ch,(%rbx)
    11d4:	08 19                	or     %bl,(%rcx)
    11d6:	08 19                	or     %bl,(%rcx)
    11d8:	08 2b                	or     %ch,(%rbx)
    11da:	08 2b                	or     %ch,(%rbx)
    11dc:	08 19                	or     %bl,(%rcx)
    11de:	08 19                	or     %bl,(%rcx)
    11e0:	19 08                	sbb    %ecx,(%rax)
    11e2:	19 2b                	sbb    %ebp,(%rbx)
    11e4:	08 19                	or     %bl,(%rcx)
    11e6:	08 19                	or     %bl,(%rcx)
    11e8:	08 19                	or     %bl,(%rcx)
    11ea:	19 2b                	sbb    %ebp,(%rbx)
    11ec:	08 19                	or     %bl,(%rcx)
    11ee:	08 19                	or     %bl,(%rcx)
    11f0:	08 08                	or     %cl,(%rax)
    11f2:	2b 2b                	sub    (%rbx),%ebp
    11f4:	08 19                	or     %bl,(%rcx)
    11f6:	08 19                	or     %bl,(%rcx)
    11f8:	19 08                	sbb    %ecx,(%rax)
    11fa:	08 08                	or     %cl,(%rax)
    11fc:	19 19                	sbb    %ebx,(%rcx)
    11fe:	08 19                	or     %bl,(%rcx)
    1200:	08 19                	or     %bl,(%rcx)
    1202:	08 08                	or     %cl,(%rax)
    1204:	19 19                	sbb    %ebx,(%rcx)
    1206:	08 19                	or     %bl,(%rcx)
    1208:	2b 19                	sub    (%rcx),%ebx
    120a:	08 08                	or     %cl,(%rax)
    120c:	19 19                	sbb    %ebx,(%rcx)
    120e:	08 19                	or     %bl,(%rcx)
    1210:	19 2b                	sbb    %ebp,(%rbx)
    1212:	08 08                	or     %cl,(%rax)
    1214:	19 19                	sbb    %ebx,(%rcx)
    1216:	08 19                	or     %bl,(%rcx)
    1218:	08 08                	or     %cl,(%rax)
    121a:	19 08                	sbb    %ecx,(%rax)
    121c:	19 19                	sbb    %ebx,(%rcx)
    121e:	08 19                	or     %bl,(%rcx)
    1220:	2b 08                	sub    (%rax),%ecx
    1222:	19 08                	sbb    %ecx,(%rax)
    1224:	19 19                	sbb    %ebx,(%rcx)
    1226:	08 19                	or     %bl,(%rcx)
    1228:	19 19                	sbb    %ebx,(%rcx)
    122a:	19 08                	sbb    %ecx,(%rax)
    122c:	19 19                	sbb    %ebx,(%rcx)
    122e:	08 19                	or     %bl,(%rcx)
    1230:	08 2b                	or     %ch,(%rbx)
    1232:	19 08                	sbb    %ecx,(%rax)
    1234:	19 19                	sbb    %ebx,(%rcx)
    1236:	08 19                	or     %bl,(%rcx)
    1238:	19 08                	sbb    %ecx,(%rax)
    123a:	2b 08                	sub    (%rax),%ecx
    123c:	19 19                	sbb    %ebx,(%rcx)
    123e:	08 19                	or     %bl,(%rcx)
    1240:	08 19                	or     %bl,(%rcx)
    1242:	2b 08                	sub    (%rax),%ecx
    1244:	19 19                	sbb    %ebx,(%rcx)
    1246:	08 19                	or     %bl,(%rcx)
    1248:	08 08                	or     %cl,(%rax)
    124a:	08 19                	or     %bl,(%rcx)
    124c:	19 19                	sbb    %ebx,(%rcx)
    124e:	08 19                	or     %bl,(%rcx)
    1250:	2b 08                	sub    (%rax),%ecx
    1252:	08 19                	or     %bl,(%rcx)
    1254:	19 19                	sbb    %ebx,(%rcx)
    1256:	08 19                	or     %bl,(%rcx)
    1258:	19 19                	sbb    %ebx,(%rcx)
    125a:	08 19                	or     %bl,(%rcx)
    125c:	19 19                	sbb    %ebx,(%rcx)
    125e:	08 19                	or     %bl,(%rcx)
    1260:	08 2b                	or     %ch,(%rbx)
    1262:	08 19                	or     %bl,(%rcx)
    1264:	19 19                	sbb    %ebx,(%rcx)
    1266:	08 19                	or     %bl,(%rcx)
    1268:	19 08                	sbb    %ecx,(%rax)
    126a:	19 19                	sbb    %ebx,(%rcx)
    126c:	19 19                	sbb    %ebx,(%rcx)
    126e:	08 19                	or     %bl,(%rcx)
    1270:	08 19                	or     %bl,(%rcx)
    1272:	19 19                	sbb    %ebx,(%rcx)
    1274:	19 19                	sbb    %ebx,(%rcx)
    1276:	08 19                	or     %bl,(%rcx)
    1278:	08 08                	or     %cl,(%rax)
    127a:	2b 19                	sub    (%rcx),%ebx
    127c:	19 19                	sbb    %ebx,(%rcx)
    127e:	08 19                	or     %bl,(%rcx)
    1280:	2b 2b                	sub    (%rbx),%ebp
    1282:	2b 19                	sub    (%rcx),%ebx
    1284:	19 19                	sbb    %ebx,(%rcx)
    1286:	08 19                	or     %bl,(%rcx)
    1288:	19 08                	sbb    %ecx,(%rax)
    128a:	08 2b                	or     %ch,(%rbx)
    128c:	19 19                	sbb    %ebx,(%rcx)
    128e:	08 19                	or     %bl,(%rcx)
    1290:	08 19                	or     %bl,(%rcx)
    1292:	08 2b                	or     %ch,(%rbx)
    1294:	19 19                	sbb    %ebx,(%rcx)
    1296:	08 19                	or     %bl,(%rcx)
    1298:	08 08                	or     %cl,(%rax)
    129a:	19 2b                	sbb    %ebp,(%rbx)
    129c:	19 19                	sbb    %ebx,(%rcx)
    129e:	08 19                	or     %bl,(%rcx)
    12a0:	08 08                	or     %cl,(%rax)
    12a2:	08 08                	or     %cl,(%rax)
    12a4:	2b 19                	sub    (%rcx),%ebx
    12a6:	08 19                	or     %bl,(%rcx)
    12a8:	2b 08                	sub    (%rax),%ecx
    12aa:	08 08                	or     %cl,(%rax)
    12ac:	2b 19                	sub    (%rcx),%ebx
    12ae:	08 19                	or     %bl,(%rcx)
    12b0:	19 19                	sbb    %ebx,(%rcx)
    12b2:	08 08                	or     %cl,(%rax)
    12b4:	2b 19                	sub    (%rcx),%ebx
    12b6:	08 19                	or     %bl,(%rcx)
    12b8:	08 2b                	or     %ch,(%rbx)
    12ba:	08 08                	or     %cl,(%rax)
    12bc:	2b 19                	sub    (%rcx),%ebx
    12be:	08 19                	or     %bl,(%rcx)
    12c0:	19 08                	sbb    %ecx,(%rax)
    12c2:	19 08                	sbb    %ecx,(%rax)
    12c4:	2b 19                	sub    (%rcx),%ebx
    12c6:	08 19                	or     %bl,(%rcx)
    12c8:	08 19                	or     %bl,(%rcx)
    12ca:	19 08                	sbb    %ecx,(%rax)
    12cc:	2b 19                	sub    (%rcx),%ebx
    12ce:	08 19                	or     %bl,(%rcx)
    12d0:	08 08                	or     %cl,(%rax)
    12d2:	2b 08                	sub    (%rax),%ecx
    12d4:	2b 19                	sub    (%rcx),%ebx
    12d6:	08 19                	or     %bl,(%rcx)
    12d8:	19 08                	sbb    %ecx,(%rax)
    12da:	08 19                	or     %bl,(%rcx)
    12dc:	2b 19                	sub    (%rcx),%ebx
    12de:	08 19                	or     %bl,(%rcx)
    12e0:	08 19                	or     %bl,(%rcx)
    12e2:	08 19                	or     %bl,(%rcx)
    12e4:	2b 19                	sub    (%rcx),%ebx
    12e6:	08 19                	or     %bl,(%rcx)
    12e8:	08 08                	or     %cl,(%rax)
    12ea:	19 19                	sbb    %ebx,(%rcx)
    12ec:	2b 19                	sub    (%rcx),%ebx
    12ee:	08 19                	or     %bl,(%rcx)
    12f0:	08 08                	or     %cl,(%rax)
    12f2:	08 2b                	or     %ch,(%rbx)
    12f4:	2b 19                	sub    (%rcx),%ebx
    12f6:	08 19                	or     %bl,(%rcx)
    12f8:	19 19                	sbb    %ebx,(%rcx)
    12fa:	2b 2b                	sub    (%rbx),%ebp
    12fc:	2b 19                	sub    (%rcx),%ebx
    12fe:	08 19                	or     %bl,(%rcx)
    1300:	19 08                	sbb    %ecx,(%rax)
    1302:	08 08                	or     %cl,(%rax)
    1304:	08 2b                	or     %ch,(%rbx)
    1306:	08 19                	or     %bl,(%rcx)
    1308:	08 19                	or     %bl,(%rcx)
    130a:	08 08                	or     %cl,(%rax)
    130c:	08 2b                	or     %ch,(%rbx)
    130e:	08 19                	or     %bl,(%rcx)
    1310:	19 2b                	sbb    %ebp,(%rbx)
    1312:	08 08                	or     %cl,(%rax)
    1314:	08 2b                	or     %ch,(%rbx)
    1316:	08 19                	or     %bl,(%rcx)
    1318:	08 08                	or     %cl,(%rax)
    131a:	19 08                	sbb    %ecx,(%rax)
    131c:	08 2b                	or     %ch,(%rbx)
    131e:	08 19                	or     %bl,(%rcx)
    1320:	2b 08                	sub    (%rax),%ecx
    1322:	19 08                	sbb    %ecx,(%rax)
    1324:	08 2b                	or     %ch,(%rbx)
    1326:	08 19                	or     %bl,(%rcx)
    1328:	19 19                	sbb    %ebx,(%rcx)
    132a:	19 08                	sbb    %ecx,(%rax)
    132c:	08 2b                	or     %ch,(%rbx)
    132e:	08 19                	or     %bl,(%rcx)
    1330:	08 2b                	or     %ch,(%rbx)
    1332:	19 08                	sbb    %ecx,(%rax)
    1334:	08 2b                	or     %ch,(%rbx)
    1336:	08 19                	or     %bl,(%rcx)
    1338:	19 08                	sbb    %ecx,(%rax)
    133a:	2b 08                	sub    (%rax),%ecx
    133c:	08 2b                	or     %ch,(%rbx)
    133e:	08 19                	or     %bl,(%rcx)
    1340:	08 19                	or     %bl,(%rcx)
    1342:	2b 08                	sub    (%rax),%ecx
    1344:	08 2b                	or     %ch,(%rbx)
    1346:	08 19                	or     %bl,(%rcx)
    1348:	08 08                	or     %cl,(%rax)
    134a:	08 19                	or     %bl,(%rcx)
    134c:	08 2b                	or     %ch,(%rbx)
    134e:	08 19                	or     %bl,(%rcx)
    1350:	2b 08                	sub    (%rax),%ecx
    1352:	08 19                	or     %bl,(%rcx)
    1354:	08 2b                	or     %ch,(%rbx)
    1356:	08 19                	or     %bl,(%rcx)
    1358:	19 19                	sbb    %ebx,(%rcx)
    135a:	08 19                	or     %bl,(%rcx)
    135c:	08 2b                	or     %ch,(%rbx)
    135e:	08 19                	or     %bl,(%rcx)
    1360:	08 2b                	or     %ch,(%rbx)
    1362:	08 19                	or     %bl,(%rcx)
    1364:	08 2b                	or     %ch,(%rbx)
    1366:	08 19                	or     %bl,(%rcx)
    1368:	19 08                	sbb    %ecx,(%rax)
    136a:	19 19                	sbb    %ebx,(%rcx)
    136c:	08 2b                	or     %ch,(%rbx)
    136e:	08 19                	or     %bl,(%rcx)
    1370:	08 19                	or     %bl,(%rcx)
    1372:	19 19                	sbb    %ebx,(%rcx)
    1374:	08 2b                	or     %ch,(%rbx)
    1376:	08 19                	or     %bl,(%rcx)
    1378:	08 08                	or     %cl,(%rax)
    137a:	2b 19                	sub    (%rcx),%ebx
    137c:	08 2b                	or     %ch,(%rbx)
    137e:	08 19                	or     %bl,(%rcx)
    1380:	08 19                	or     %bl,(%rcx)
    1382:	08 2b                	or     %ch,(%rbx)
    1384:	08 2b                	or     %ch,(%rbx)
    1386:	08 19                	or     %bl,(%rcx)
    1388:	08 08                	or     %cl,(%rax)
    138a:	19 2b                	sbb    %ebp,(%rbx)
    138c:	08 2b                	or     %ch,(%rbx)
    138e:	08 19                	or     %bl,(%rcx)
    1390:	08 08                	or     %cl,(%rax)
    1392:	08 08                	or     %cl,(%rax)
    1394:	19 2b                	sbb    %ebp,(%rbx)
    1396:	08 19                	or     %bl,(%rcx)
    1398:	2b 08                	sub    (%rax),%ecx
    139a:	08 08                	or     %cl,(%rax)
    139c:	19 2b                	sbb    %ebp,(%rbx)
    139e:	08 19                	or     %bl,(%rcx)
    13a0:	19 19                	sbb    %ebx,(%rcx)
    13a2:	08 08                	or     %cl,(%rax)
    13a4:	19 2b                	sbb    %ebp,(%rbx)
    13a6:	08 19                	or     %bl,(%rcx)
    13a8:	08 2b                	or     %ch,(%rbx)
    13aa:	08 08                	or     %cl,(%rax)
    13ac:	19 2b                	sbb    %ebp,(%rbx)
    13ae:	08 19                	or     %bl,(%rcx)
    13b0:	19 08                	sbb    %ecx,(%rax)
    13b2:	19 08                	sbb    %ecx,(%rax)
    13b4:	19 2b                	sbb    %ebp,(%rbx)
    13b6:	08 19                	or     %bl,(%rcx)
    13b8:	08 19                	or     %bl,(%rcx)
    13ba:	19 08                	sbb    %ecx,(%rax)
    13bc:	19 2b                	sbb    %ebp,(%rbx)
    13be:	08 19                	or     %bl,(%rcx)
    13c0:	08 08                	or     %cl,(%rax)
    13c2:	2b 08                	sub    (%rax),%ecx
    13c4:	19 2b                	sbb    %ebp,(%rbx)
    13c6:	08 19                	or     %bl,(%rcx)
    13c8:	19 08                	sbb    %ecx,(%rax)
    13ca:	08 19                	or     %bl,(%rcx)
    13cc:	19 2b                	sbb    %ebp,(%rbx)
    13ce:	08 19                	or     %bl,(%rcx)
    13d0:	08 19                	or     %bl,(%rcx)
    13d2:	08 19                	or     %bl,(%rcx)
    13d4:	19 2b                	sbb    %ebp,(%rbx)
    13d6:	08 19                	or     %bl,(%rcx)
    13d8:	08 08                	or     %cl,(%rax)
    13da:	19 19                	sbb    %ebx,(%rcx)
    13dc:	19 2b                	sbb    %ebp,(%rbx)
    13de:	08 19                	or     %bl,(%rcx)
    13e0:	08 08                	or     %cl,(%rax)
    13e2:	08 2b                	or     %ch,(%rbx)
    13e4:	19 2b                	sbb    %ebp,(%rbx)
    13e6:	08 19                	or     %bl,(%rcx)
    13e8:	2b 19                	sub    (%rcx),%ebx
    13ea:	19 2b                	sbb    %ebp,(%rbx)
    13ec:	19 2b                	sbb    %ebp,(%rbx)
    13ee:	08 19                	or     %bl,(%rcx)
    13f0:	19 08                	sbb    %ecx,(%rax)
    13f2:	08 08                	or     %cl,(%rax)
    13f4:	2b 2b                	sub    (%rbx),%ebp
    13f6:	08 19                	or     %bl,(%rcx)
    13f8:	08 19                	or     %bl,(%rcx)
    13fa:	08 08                	or     %cl,(%rax)
    13fc:	2b 2b                	sub    (%rbx),%ebp
    13fe:	08 19                	or     %bl,(%rcx)
    1400:	08 08                	or     %cl,(%rax)
    1402:	19 08                	sbb    %ecx,(%rax)
    1404:	2b 2b                	sub    (%rbx),%ebp
    1406:	08 19                	or     %bl,(%rcx)
    1408:	08 08                	or     %cl,(%rax)
    140a:	08 19                	or     %bl,(%rcx)
    140c:	2b 2b                	sub    (%rbx),%ebp
    140e:	08 19                	or     %bl,(%rcx)
    1410:	08 08                	or     %cl,(%rax)
    1412:	08 08                	or     %cl,(%rax)
    1414:	08 08                	or     %cl,(%rax)
    1416:	19 19                	sbb    %ebx,(%rcx)
    1418:	2b 08                	sub    (%rax),%ecx
    141a:	08 08                	or     %cl,(%rax)
    141c:	08 08                	or     %cl,(%rax)
    141e:	19 19                	sbb    %ebx,(%rcx)
    1420:	19 19                	sbb    %ebx,(%rcx)
    1422:	08 08                	or     %cl,(%rax)
    1424:	08 08                	or     %cl,(%rax)
    1426:	19 19                	sbb    %ebx,(%rcx)
    1428:	08 2b                	or     %ch,(%rbx)
    142a:	08 08                	or     %cl,(%rax)
    142c:	08 08                	or     %cl,(%rax)
    142e:	19 19                	sbb    %ebx,(%rcx)
    1430:	19 08                	sbb    %ecx,(%rax)
    1432:	19 08                	sbb    %ecx,(%rax)
    1434:	08 08                	or     %cl,(%rax)
    1436:	19 19                	sbb    %ebx,(%rcx)
    1438:	08 19                	or     %bl,(%rcx)
    143a:	19 08                	sbb    %ecx,(%rax)
    143c:	08 08                	or     %cl,(%rax)
    143e:	19 19                	sbb    %ebx,(%rcx)
    1440:	2b 19                	sub    (%rcx),%ebx
    1442:	19 08                	sbb    %ecx,(%rax)
    1444:	08 08                	or     %cl,(%rax)
    1446:	19 19                	sbb    %ebx,(%rcx)
    1448:	19 2b                	sbb    %ebp,(%rbx)
    144a:	19 08                	sbb    %ecx,(%rax)
    144c:	08 08                	or     %cl,(%rax)
    144e:	19 19                	sbb    %ebx,(%rcx)
    1450:	08 08                	or     %cl,(%rax)
    1452:	2b 08                	sub    (%rax),%ecx
    1454:	08 08                	or     %cl,(%rax)
    1456:	19 19                	sbb    %ebx,(%rcx)
    1458:	2b 08                	sub    (%rax),%ecx
    145a:	2b 08                	sub    (%rax),%ecx
    145c:	08 08                	or     %cl,(%rax)
    145e:	19 19                	sbb    %ebx,(%rcx)
    1460:	19 19                	sbb    %ebx,(%rcx)
    1462:	2b 08                	sub    (%rax),%ecx
    1464:	08 08                	or     %cl,(%rax)
    1466:	19 19                	sbb    %ebx,(%rcx)
    1468:	08 2b                	or     %ch,(%rbx)
    146a:	2b 08                	sub    (%rax),%ecx
    146c:	08 08                	or     %cl,(%rax)
    146e:	19 19                	sbb    %ebx,(%rcx)
    1470:	19 08                	sbb    %ecx,(%rax)
    1472:	08 19                	or     %bl,(%rcx)
    1474:	08 08                	or     %cl,(%rax)
    1476:	19 19                	sbb    %ebx,(%rcx)
    1478:	08 19                	or     %bl,(%rcx)
    147a:	08 19                	or     %bl,(%rcx)
    147c:	08 08                	or     %cl,(%rax)
    147e:	19 19                	sbb    %ebx,(%rcx)
    1480:	2b 19                	sub    (%rcx),%ebx
    1482:	08 19                	or     %bl,(%rcx)
    1484:	08 08                	or     %cl,(%rax)
    1486:	19 19                	sbb    %ebx,(%rcx)
    1488:	19 2b                	sbb    %ebp,(%rbx)
    148a:	08 19                	or     %bl,(%rcx)
    148c:	08 08                	or     %cl,(%rax)
    148e:	19 19                	sbb    %ebx,(%rcx)
    1490:	08 08                	or     %cl,(%rax)
    1492:	19 19                	sbb    %ebx,(%rcx)
    1494:	08 08                	or     %cl,(%rax)
    1496:	19 19                	sbb    %ebx,(%rcx)
    1498:	2b 08                	sub    (%rax),%ecx
    149a:	19 19                	sbb    %ebx,(%rcx)
    149c:	08 08                	or     %cl,(%rax)
    149e:	19 19                	sbb    %ebx,(%rcx)
    14a0:	19 19                	sbb    %ebx,(%rcx)
    14a2:	19 19                	sbb    %ebx,(%rcx)
    14a4:	08 08                	or     %cl,(%rax)
    14a6:	19 19                	sbb    %ebx,(%rcx)
    14a8:	08 2b                	or     %ch,(%rbx)
    14aa:	19 19                	sbb    %ebx,(%rcx)
    14ac:	08 08                	or     %cl,(%rax)
    14ae:	19 19                	sbb    %ebx,(%rcx)
    14b0:	19 08                	sbb    %ecx,(%rax)
    14b2:	2b 19                	sub    (%rcx),%ebx
    14b4:	08 08                	or     %cl,(%rax)
    14b6:	19 19                	sbb    %ebx,(%rcx)
    14b8:	08 19                	or     %bl,(%rcx)
    14ba:	2b 19                	sub    (%rcx),%ebx
    14bc:	08 08                	or     %cl,(%rax)
    14be:	19 19                	sbb    %ebx,(%rcx)
    14c0:	08 08                	or     %cl,(%rax)
    14c2:	08 2b                	or     %ch,(%rbx)
    14c4:	08 08                	or     %cl,(%rax)
    14c6:	19 19                	sbb    %ebx,(%rcx)
    14c8:	2b 08                	sub    (%rax),%ecx
    14ca:	08 2b                	or     %ch,(%rbx)
    14cc:	08 08                	or     %cl,(%rax)
    14ce:	19 19                	sbb    %ebx,(%rcx)
    14d0:	19 19                	sbb    %ebx,(%rcx)
    14d2:	08 2b                	or     %ch,(%rbx)
    14d4:	08 08                	or     %cl,(%rax)
    14d6:	19 19                	sbb    %ebx,(%rcx)
    14d8:	08 2b                	or     %ch,(%rbx)
    14da:	08 2b                	or     %ch,(%rbx)
    14dc:	08 08                	or     %cl,(%rax)
    14de:	19 19                	sbb    %ebx,(%rcx)
    14e0:	19 08                	sbb    %ecx,(%rax)
    14e2:	19 2b                	sbb    %ebp,(%rbx)
    14e4:	08 08                	or     %cl,(%rax)
    14e6:	19 19                	sbb    %ebx,(%rcx)
    14e8:	08 19                	or     %bl,(%rcx)
    14ea:	19 2b                	sbb    %ebp,(%rbx)
    14ec:	08 08                	or     %cl,(%rax)
    14ee:	19 19                	sbb    %ebx,(%rcx)
    14f0:	19 08                	sbb    %ecx,(%rax)
    14f2:	08 08                	or     %cl,(%rax)
    14f4:	19 08                	sbb    %ecx,(%rax)
    14f6:	19 19                	sbb    %ebx,(%rcx)
    14f8:	08 19                	or     %bl,(%rcx)
    14fa:	08 08                	or     %cl,(%rax)
    14fc:	19 08                	sbb    %ecx,(%rax)
    14fe:	19 19                	sbb    %ebx,(%rcx)
    1500:	2b 19                	sub    (%rcx),%ebx
    1502:	08 08                	or     %cl,(%rax)
    1504:	19 08                	sbb    %ecx,(%rax)
    1506:	19 19                	sbb    %ebx,(%rcx)
    1508:	19 2b                	sbb    %ebp,(%rbx)
    150a:	08 08                	or     %cl,(%rax)
    150c:	19 08                	sbb    %ecx,(%rax)
    150e:	19 19                	sbb    %ebx,(%rcx)
    1510:	08 08                	or     %cl,(%rax)
    1512:	19 08                	sbb    %ecx,(%rax)
    1514:	19 08                	sbb    %ecx,(%rax)
    1516:	19 19                	sbb    %ebx,(%rcx)
    1518:	2b 08                	sub    (%rax),%ecx
    151a:	19 08                	sbb    %ecx,(%rax)
    151c:	19 08                	sbb    %ecx,(%rax)
    151e:	19 19                	sbb    %ebx,(%rcx)
    1520:	19 19                	sbb    %ebx,(%rcx)
    1522:	19 08                	sbb    %ecx,(%rax)
    1524:	19 08                	sbb    %ecx,(%rax)
    1526:	19 19                	sbb    %ebx,(%rcx)
    1528:	08 2b                	or     %ch,(%rbx)
    152a:	19 08                	sbb    %ecx,(%rax)
    152c:	19 08                	sbb    %ecx,(%rax)
    152e:	19 19                	sbb    %ebx,(%rcx)
    1530:	19 08                	sbb    %ecx,(%rax)
    1532:	2b 08                	sub    (%rax),%ecx
    1534:	19 08                	sbb    %ecx,(%rax)
    1536:	19 19                	sbb    %ebx,(%rcx)
    1538:	08 19                	or     %bl,(%rcx)
    153a:	2b 08                	sub    (%rax),%ecx
    153c:	19 08                	sbb    %ecx,(%rax)
    153e:	19 19                	sbb    %ebx,(%rcx)
    1540:	08 08                	or     %cl,(%rax)
    1542:	08 19                	or     %bl,(%rcx)
    1544:	19 08                	sbb    %ecx,(%rax)
    1546:	19 19                	sbb    %ebx,(%rcx)
    1548:	2b 08                	sub    (%rax),%ecx
    154a:	08 19                	or     %bl,(%rcx)
    154c:	19 08                	sbb    %ecx,(%rax)
    154e:	19 19                	sbb    %ebx,(%rcx)
    1550:	19 19                	sbb    %ebx,(%rcx)
    1552:	08 19                	or     %bl,(%rcx)
    1554:	19 08                	sbb    %ecx,(%rax)
    1556:	19 19                	sbb    %ebx,(%rcx)
    1558:	08 2b                	or     %ch,(%rbx)
    155a:	08 19                	or     %bl,(%rcx)
    155c:	19 08                	sbb    %ecx,(%rax)
    155e:	19 19                	sbb    %ebx,(%rcx)
    1560:	19 08                	sbb    %ecx,(%rax)
    1562:	19 19                	sbb    %ebx,(%rcx)
    1564:	19 08                	sbb    %ecx,(%rax)
    1566:	19 19                	sbb    %ebx,(%rcx)
    1568:	08 19                	or     %bl,(%rcx)
    156a:	19 19                	sbb    %ebx,(%rcx)
    156c:	19 08                	sbb    %ecx,(%rax)
    156e:	19 19                	sbb    %ebx,(%rcx)
    1570:	08 08                	or     %cl,(%rax)
    1572:	2b 19                	sub    (%rcx),%ebx
    1574:	19 08                	sbb    %ecx,(%rax)
    1576:	19 19                	sbb    %ebx,(%rcx)
    1578:	19 08                	sbb    %ecx,(%rax)
    157a:	08 2b                	or     %ch,(%rbx)
    157c:	19 08                	sbb    %ecx,(%rax)
    157e:	19 19                	sbb    %ebx,(%rcx)
    1580:	08 19                	or     %bl,(%rcx)
    1582:	08 2b                	or     %ch,(%rbx)
    1584:	19 08                	sbb    %ecx,(%rax)
    1586:	19 19                	sbb    %ebx,(%rcx)
    1588:	08 08                	or     %cl,(%rax)
    158a:	19 2b                	sbb    %ebp,(%rbx)
    158c:	19 08                	sbb    %ecx,(%rax)
    158e:	19 19                	sbb    %ebx,(%rcx)
    1590:	08 08                	or     %cl,(%rax)
    1592:	08 08                	or     %cl,(%rax)
    1594:	2b 08                	sub    (%rax),%ecx
    1596:	19 19                	sbb    %ebx,(%rcx)
    1598:	19 19                	sbb    %ebx,(%rcx)
    159a:	08 08                	or     %cl,(%rax)
    159c:	2b 08                	sub    (%rax),%ecx
    159e:	19 19                	sbb    %ebx,(%rcx)
    15a0:	08 2b                	or     %ch,(%rbx)
    15a2:	08 08                	or     %cl,(%rax)
    15a4:	2b 08                	sub    (%rax),%ecx
    15a6:	19 19                	sbb    %ebx,(%rcx)
    15a8:	19 08                	sbb    %ecx,(%rax)
    15aa:	19 08                	sbb    %ecx,(%rax)
    15ac:	2b 08                	sub    (%rax),%ecx
    15ae:	19 19                	sbb    %ebx,(%rcx)
    15b0:	08 19                	or     %bl,(%rcx)
    15b2:	19 08                	sbb    %ecx,(%rax)
    15b4:	2b 08                	sub    (%rax),%ecx
    15b6:	19 19                	sbb    %ebx,(%rcx)
    15b8:	08 08                	or     %cl,(%rax)
    15ba:	2b 08                	sub    (%rax),%ecx
    15bc:	2b 08                	sub    (%rax),%ecx
    15be:	19 19                	sbb    %ebx,(%rcx)
    15c0:	19 08                	sbb    %ecx,(%rax)
    15c2:	08 19                	or     %bl,(%rcx)
    15c4:	2b 08                	sub    (%rax),%ecx
    15c6:	19 19                	sbb    %ebx,(%rcx)
    15c8:	08 19                	or     %bl,(%rcx)
    15ca:	08 19                	or     %bl,(%rcx)
    15cc:	2b 08                	sub    (%rax),%ecx
    15ce:	19 19                	sbb    %ebx,(%rcx)
    15d0:	08 08                	or     %cl,(%rax)
    15d2:	19 19                	sbb    %ebx,(%rcx)
    15d4:	2b 08                	sub    (%rax),%ecx
    15d6:	19 19                	sbb    %ebx,(%rcx)
    15d8:	19 2b                	sbb    %ebp,(%rbx)
    15da:	2b 19                	sub    (%rcx),%ebx
    15dc:	2b 08                	sub    (%rax),%ecx
    15de:	19 19                	sbb    %ebx,(%rcx)
    15e0:	08 08                	or     %cl,(%rax)
    15e2:	08 2b                	or     %ch,(%rbx)
    15e4:	2b 08                	sub    (%rax),%ecx
    15e6:	19 19                	sbb    %ebx,(%rcx)
    15e8:	19 08                	sbb    %ecx,(%rax)
    15ea:	08 08                	or     %cl,(%rax)
    15ec:	08 19                	or     %bl,(%rcx)
    15ee:	19 19                	sbb    %ebx,(%rcx)
    15f0:	08 19                	or     %bl,(%rcx)
    15f2:	08 08                	or     %cl,(%rax)
    15f4:	08 19                	or     %bl,(%rcx)
    15f6:	19 19                	sbb    %ebx,(%rcx)
    15f8:	2b 19                	sub    (%rcx),%ebx
    15fa:	08 08                	or     %cl,(%rax)
    15fc:	08 19                	or     %bl,(%rcx)
    15fe:	19 19                	sbb    %ebx,(%rcx)
    1600:	19 2b                	sbb    %ebp,(%rbx)
    1602:	08 08                	or     %cl,(%rax)
    1604:	08 19                	or     %bl,(%rcx)
    1606:	19 19                	sbb    %ebx,(%rcx)
    1608:	08 08                	or     %cl,(%rax)
    160a:	19 08                	sbb    %ecx,(%rax)
    160c:	08 19                	or     %bl,(%rcx)
    160e:	19 19                	sbb    %ebx,(%rcx)
    1610:	2b 08                	sub    (%rax),%ecx
    1612:	19 08                	sbb    %ecx,(%rax)
    1614:	08 19                	or     %bl,(%rcx)
    1616:	19 19                	sbb    %ebx,(%rcx)
    1618:	19 19                	sbb    %ebx,(%rcx)
    161a:	19 08                	sbb    %ecx,(%rax)
    161c:	08 19                	or     %bl,(%rcx)
    161e:	19 19                	sbb    %ebx,(%rcx)
    1620:	08 2b                	or     %ch,(%rbx)
    1622:	19 08                	sbb    %ecx,(%rax)
    1624:	08 19                	or     %bl,(%rcx)
    1626:	19 19                	sbb    %ebx,(%rcx)
    1628:	19 08                	sbb    %ecx,(%rax)
    162a:	2b 08                	sub    (%rax),%ecx
    162c:	08 19                	or     %bl,(%rcx)
    162e:	19 19                	sbb    %ebx,(%rcx)
    1630:	08 19                	or     %bl,(%rcx)
    1632:	2b 08                	sub    (%rax),%ecx
    1634:	08 19                	or     %bl,(%rcx)
    1636:	19 19                	sbb    %ebx,(%rcx)
    1638:	08 08                	or     %cl,(%rax)
    163a:	08 19                	or     %bl,(%rcx)
    163c:	08 19                	or     %bl,(%rcx)
    163e:	19 19                	sbb    %ebx,(%rcx)
    1640:	2b 08                	sub    (%rax),%ecx
    1642:	08 19                	or     %bl,(%rcx)
    1644:	08 19                	or     %bl,(%rcx)
    1646:	19 19                	sbb    %ebx,(%rcx)
    1648:	19 19                	sbb    %ebx,(%rcx)
    164a:	08 19                	or     %bl,(%rcx)
    164c:	08 19                	or     %bl,(%rcx)
    164e:	19 19                	sbb    %ebx,(%rcx)
    1650:	08 2b                	or     %ch,(%rbx)
    1652:	08 19                	or     %bl,(%rcx)
    1654:	08 19                	or     %bl,(%rcx)
    1656:	19 19                	sbb    %ebx,(%rcx)
    1658:	19 08                	sbb    %ecx,(%rax)
    165a:	19 19                	sbb    %ebx,(%rcx)
    165c:	08 19                	or     %bl,(%rcx)
    165e:	19 19                	sbb    %ebx,(%rcx)
    1660:	08 19                	or     %bl,(%rcx)
    1662:	19 19                	sbb    %ebx,(%rcx)
    1664:	08 19                	or     %bl,(%rcx)
    1666:	19 19                	sbb    %ebx,(%rcx)
    1668:	08 08                	or     %cl,(%rax)
    166a:	2b 19                	sub    (%rcx),%ebx
    166c:	08 19                	or     %bl,(%rcx)
    166e:	19 19                	sbb    %ebx,(%rcx)
    1670:	19 08                	sbb    %ecx,(%rax)
    1672:	08 2b                	or     %ch,(%rbx)
    1674:	08 19                	or     %bl,(%rcx)
    1676:	19 19                	sbb    %ebx,(%rcx)
    1678:	08 19                	or     %bl,(%rcx)
    167a:	08 2b                	or     %ch,(%rbx)
    167c:	08 19                	or     %bl,(%rcx)
    167e:	19 19                	sbb    %ebx,(%rcx)
    1680:	08 08                	or     %cl,(%rax)
    1682:	19 2b                	sbb    %ebp,(%rbx)
    1684:	08 19                	or     %bl,(%rcx)
    1686:	19 19                	sbb    %ebx,(%rcx)
    1688:	08 08                	or     %cl,(%rax)
    168a:	08 08                	or     %cl,(%rax)
    168c:	19 19                	sbb    %ebx,(%rcx)
    168e:	19 19                	sbb    %ebx,(%rcx)
    1690:	2b 08                	sub    (%rax),%ecx
    1692:	08 08                	or     %cl,(%rax)
    1694:	19 19                	sbb    %ebx,(%rcx)
    1696:	19 19                	sbb    %ebx,(%rcx)
    1698:	19 19                	sbb    %ebx,(%rcx)
    169a:	08 08                	or     %cl,(%rax)
    169c:	19 19                	sbb    %ebx,(%rcx)
    169e:	19 19                	sbb    %ebx,(%rcx)
    16a0:	08 2b                	or     %ch,(%rbx)
    16a2:	08 08                	or     %cl,(%rax)
    16a4:	19 19                	sbb    %ebx,(%rcx)
    16a6:	19 19                	sbb    %ebx,(%rcx)
    16a8:	19 08                	sbb    %ecx,(%rax)
    16aa:	19 08                	sbb    %ecx,(%rax)
    16ac:	19 19                	sbb    %ebx,(%rcx)
    16ae:	19 19                	sbb    %ebx,(%rcx)
    16b0:	08 19                	or     %bl,(%rcx)
    16b2:	19 08                	sbb    %ecx,(%rax)
    16b4:	19 19                	sbb    %ebx,(%rcx)
    16b6:	19 19                	sbb    %ebx,(%rcx)
    16b8:	08 08                	or     %cl,(%rax)
    16ba:	2b 08                	sub    (%rax),%ecx
    16bc:	19 19                	sbb    %ebx,(%rcx)
    16be:	19 19                	sbb    %ebx,(%rcx)
    16c0:	19 08                	sbb    %ecx,(%rax)
    16c2:	08 19                	or     %bl,(%rcx)
    16c4:	19 19                	sbb    %ebx,(%rcx)
    16c6:	19 19                	sbb    %ebx,(%rcx)
    16c8:	08 19                	or     %bl,(%rcx)
    16ca:	08 19                	or     %bl,(%rcx)
    16cc:	19 19                	sbb    %ebx,(%rcx)
    16ce:	19 19                	sbb    %ebx,(%rcx)
    16d0:	08 08                	or     %cl,(%rax)
    16d2:	19 19                	sbb    %ebx,(%rcx)
    16d4:	19 19                	sbb    %ebx,(%rcx)
    16d6:	19 19                	sbb    %ebx,(%rcx)
    16d8:	08 08                	or     %cl,(%rax)
    16da:	08 2b                	or     %ch,(%rbx)
    16dc:	19 19                	sbb    %ebx,(%rcx)
    16de:	19 19                	sbb    %ebx,(%rcx)
    16e0:	19 08                	sbb    %ecx,(%rax)
    16e2:	08 08                	or     %cl,(%rax)
    16e4:	2b 19                	sub    (%rcx),%ebx
    16e6:	19 19                	sbb    %ebx,(%rcx)
    16e8:	08 19                	or     %bl,(%rcx)
    16ea:	08 08                	or     %cl,(%rax)
    16ec:	2b 19                	sub    (%rcx),%ebx
    16ee:	19 19                	sbb    %ebx,(%rcx)
    16f0:	08 08                	or     %cl,(%rax)
    16f2:	19 08                	sbb    %ecx,(%rax)
    16f4:	2b 19                	sub    (%rcx),%ebx
    16f6:	19 19                	sbb    %ebx,(%rcx)
    16f8:	2b 19                	sub    (%rcx),%ebx
    16fa:	2b 08                	sub    (%rax),%ecx
    16fc:	2b 19                	sub    (%rcx),%ebx
    16fe:	19 19                	sbb    %ebx,(%rcx)
    1700:	08 08                	or     %cl,(%rax)
    1702:	08 19                	or     %bl,(%rcx)
    1704:	2b 19                	sub    (%rcx),%ebx
    1706:	19 19                	sbb    %ebx,(%rcx)
    1708:	08 08                	or     %cl,(%rax)
    170a:	08 08                	or     %cl,(%rax)
    170c:	08 2b                	or     %ch,(%rbx)
    170e:	19 19                	sbb    %ebx,(%rcx)
    1710:	2b 08                	sub    (%rax),%ecx
    1712:	08 08                	or     %cl,(%rax)
    1714:	08 2b                	or     %ch,(%rbx)
    1716:	19 19                	sbb    %ebx,(%rcx)
    1718:	19 19                	sbb    %ebx,(%rcx)
    171a:	08 08                	or     %cl,(%rax)
    171c:	08 2b                	or     %ch,(%rbx)
    171e:	19 19                	sbb    %ebx,(%rcx)
    1720:	08 2b                	or     %ch,(%rbx)
    1722:	08 08                	or     %cl,(%rax)
    1724:	08 2b                	or     %ch,(%rbx)
    1726:	19 19                	sbb    %ebx,(%rcx)
    1728:	19 08                	sbb    %ecx,(%rax)
    172a:	19 08                	sbb    %ecx,(%rax)
    172c:	08 2b                	or     %ch,(%rbx)
    172e:	19 19                	sbb    %ebx,(%rcx)
    1730:	08 19                	or     %bl,(%rcx)
    1732:	19 08                	sbb    %ecx,(%rax)
    1734:	08 2b                	or     %ch,(%rbx)
    1736:	19 19                	sbb    %ebx,(%rcx)
    1738:	08 08                	or     %cl,(%rax)
    173a:	2b 08                	sub    (%rax),%ecx
    173c:	08 2b                	or     %ch,(%rbx)
    173e:	19 19                	sbb    %ebx,(%rcx)
    1740:	19 08                	sbb    %ecx,(%rax)
    1742:	08 19                	or     %bl,(%rcx)
    1744:	08 2b                	or     %ch,(%rbx)
    1746:	19 19                	sbb    %ebx,(%rcx)
    1748:	08 19                	or     %bl,(%rcx)
    174a:	08 19                	or     %bl,(%rcx)
    174c:	08 2b                	or     %ch,(%rbx)
    174e:	19 19                	sbb    %ebx,(%rcx)
    1750:	08 08                	or     %cl,(%rax)
    1752:	19 19                	sbb    %ebx,(%rcx)
    1754:	08 2b                	or     %ch,(%rbx)
    1756:	19 19                	sbb    %ebx,(%rcx)
    1758:	2b 2b                	sub    (%rbx),%ebp
    175a:	19 19                	sbb    %ebx,(%rcx)
    175c:	08 2b                	or     %ch,(%rbx)
    175e:	19 19                	sbb    %ebx,(%rcx)
    1760:	08 08                	or     %cl,(%rax)
    1762:	08 2b                	or     %ch,(%rbx)
    1764:	08 2b                	or     %ch,(%rbx)
    1766:	19 19                	sbb    %ebx,(%rcx)
    1768:	19 08                	sbb    %ecx,(%rax)
    176a:	08 08                	or     %cl,(%rax)
    176c:	19 2b                	sbb    %ebp,(%rbx)
    176e:	19 19                	sbb    %ebx,(%rcx)
    1770:	08 19                	or     %bl,(%rcx)
    1772:	08 08                	or     %cl,(%rax)
    1774:	19 2b                	sbb    %ebp,(%rbx)
    1776:	19 19                	sbb    %ebx,(%rcx)
    1778:	08 08                	or     %cl,(%rax)
    177a:	19 08                	sbb    %ecx,(%rax)
    177c:	19 2b                	sbb    %ebp,(%rbx)
    177e:	19 19                	sbb    %ebx,(%rcx)
    1780:	08 08                	or     %cl,(%rax)
    1782:	08 19                	or     %bl,(%rcx)
    1784:	19 2b                	sbb    %ebp,(%rbx)
    1786:	19 19                	sbb    %ebx,(%rcx)
    1788:	08 08                	or     %cl,(%rax)
    178a:	08 08                	or     %cl,(%rax)
    178c:	2b 2b                	sub    (%rbx),%ebp
    178e:	19 19                	sbb    %ebx,(%rcx)
    1790:	19 2b                	sbb    %ebp,(%rbx)
    1792:	19 08                	sbb    %ecx,(%rax)
    1794:	2b 2b                	sub    (%rbx),%ebp
    1796:	19 19                	sbb    %ebx,(%rcx)
    1798:	19 19                	sbb    %ebx,(%rcx)
    179a:	08 2b                	or     %ch,(%rbx)
    179c:	2b 2b                	sub    (%rbx),%ebp
    179e:	19 19                	sbb    %ebx,(%rcx)
    17a0:	08 2b                	or     %ch,(%rbx)
    17a2:	2b 2b                	sub    (%rbx),%ebp
    17a4:	2b 2b                	sub    (%rbx),%ebp
    17a6:	19 19                	sbb    %ebx,(%rcx)
    17a8:	19 08                	sbb    %ecx,(%rax)
    17aa:	08 08                	or     %cl,(%rax)
    17ac:	08 08                	or     %cl,(%rax)
    17ae:	2b 19                	sub    (%rcx),%ebx
    17b0:	08 19                	or     %bl,(%rcx)
    17b2:	08 08                	or     %cl,(%rax)
    17b4:	08 08                	or     %cl,(%rax)
    17b6:	2b 19                	sub    (%rcx),%ebx
    17b8:	2b 19                	sub    (%rcx),%ebx
    17ba:	08 08                	or     %cl,(%rax)
    17bc:	08 08                	or     %cl,(%rax)
    17be:	2b 19                	sub    (%rcx),%ebx
    17c0:	08 08                	or     %cl,(%rax)
    17c2:	19 08                	sbb    %ecx,(%rax)
    17c4:	08 08                	or     %cl,(%rax)
    17c6:	2b 19                	sub    (%rcx),%ebx
    17c8:	2b 08                	sub    (%rax),%ecx
    17ca:	19 08                	sbb    %ecx,(%rax)
    17cc:	08 08                	or     %cl,(%rax)
    17ce:	2b 19                	sub    (%rcx),%ebx
    17d0:	19 19                	sbb    %ebx,(%rcx)
    17d2:	19 08                	sbb    %ecx,(%rax)
    17d4:	08 08                	or     %cl,(%rax)
    17d6:	2b 19                	sub    (%rcx),%ebx
    17d8:	08 2b                	or     %ch,(%rbx)
    17da:	19 08                	sbb    %ecx,(%rax)
    17dc:	08 08                	or     %cl,(%rax)
    17de:	2b 19                	sub    (%rcx),%ebx
    17e0:	19 08                	sbb    %ecx,(%rax)
    17e2:	2b 08                	sub    (%rax),%ecx
    17e4:	08 08                	or     %cl,(%rax)
    17e6:	2b 19                	sub    (%rcx),%ebx
    17e8:	08 19                	or     %bl,(%rcx)
    17ea:	2b 08                	sub    (%rax),%ecx
    17ec:	08 08                	or     %cl,(%rax)
    17ee:	2b 19                	sub    (%rcx),%ebx
    17f0:	08 08                	or     %cl,(%rax)
    17f2:	08 19                	or     %bl,(%rcx)
    17f4:	08 08                	or     %cl,(%rax)
    17f6:	2b 19                	sub    (%rcx),%ebx
    17f8:	19 19                	sbb    %ebx,(%rcx)
    17fa:	08 19                	or     %bl,(%rcx)
    17fc:	08 08                	or     %cl,(%rax)
    17fe:	2b 19                	sub    (%rcx),%ebx
    1800:	08 2b                	or     %ch,(%rbx)
    1802:	08 19                	or     %bl,(%rcx)
    1804:	08 08                	or     %cl,(%rax)
    1806:	2b 19                	sub    (%rcx),%ebx
    1808:	19 08                	sbb    %ecx,(%rax)
    180a:	19 19                	sbb    %ebx,(%rcx)
    180c:	08 08                	or     %cl,(%rax)
    180e:	2b 19                	sub    (%rcx),%ebx
    1810:	08 19                	or     %bl,(%rcx)
    1812:	19 19                	sbb    %ebx,(%rcx)
    1814:	08 08                	or     %cl,(%rax)
    1816:	2b 19                	sub    (%rcx),%ebx
    1818:	08 08                	or     %cl,(%rax)
    181a:	2b 19                	sub    (%rcx),%ebx
    181c:	08 08                	or     %cl,(%rax)
    181e:	2b 19                	sub    (%rcx),%ebx
    1820:	08 19                	or     %bl,(%rcx)
    1822:	08 2b                	or     %ch,(%rbx)
    1824:	08 08                	or     %cl,(%rax)
    1826:	2b 19                	sub    (%rcx),%ebx
    1828:	08 08                	or     %cl,(%rax)
    182a:	19 2b                	sbb    %ebp,(%rbx)
    182c:	08 08                	or     %cl,(%rax)
    182e:	2b 19                	sub    (%rcx),%ebx
    1830:	08 08                	or     %cl,(%rax)
    1832:	08 08                	or     %cl,(%rax)
    1834:	19 08                	sbb    %ecx,(%rax)
    1836:	2b 19                	sub    (%rcx),%ebx
    1838:	2b 08                	sub    (%rax),%ecx
    183a:	08 08                	or     %cl,(%rax)
    183c:	19 08                	sbb    %ecx,(%rax)
    183e:	2b 19                	sub    (%rcx),%ebx
    1840:	19 19                	sbb    %ebx,(%rcx)
    1842:	08 08                	or     %cl,(%rax)
    1844:	19 08                	sbb    %ecx,(%rax)
    1846:	2b 19                	sub    (%rcx),%ebx
    1848:	08 2b                	or     %ch,(%rbx)
    184a:	08 08                	or     %cl,(%rax)
    184c:	19 08                	sbb    %ecx,(%rax)
    184e:	2b 19                	sub    (%rcx),%ebx
    1850:	19 08                	sbb    %ecx,(%rax)
    1852:	19 08                	sbb    %ecx,(%rax)
    1854:	19 08                	sbb    %ecx,(%rax)
    1856:	2b 19                	sub    (%rcx),%ebx
    1858:	08 19                	or     %bl,(%rcx)
    185a:	19 08                	sbb    %ecx,(%rax)
    185c:	19 08                	sbb    %ecx,(%rax)
    185e:	2b 19                	sub    (%rcx),%ebx
    1860:	08 08                	or     %cl,(%rax)
    1862:	2b 08                	sub    (%rax),%ecx
    1864:	19 08                	sbb    %ecx,(%rax)
    1866:	2b 19                	sub    (%rcx),%ebx
    1868:	19 08                	sbb    %ecx,(%rax)
    186a:	08 19                	or     %bl,(%rcx)
    186c:	19 08                	sbb    %ecx,(%rax)
    186e:	2b 19                	sub    (%rcx),%ebx
    1870:	08 19                	or     %bl,(%rcx)
    1872:	08 19                	or     %bl,(%rcx)
    1874:	19 08                	sbb    %ecx,(%rax)
    1876:	2b 19                	sub    (%rcx),%ebx
    1878:	08 08                	or     %cl,(%rax)
    187a:	19 19                	sbb    %ebx,(%rcx)
    187c:	19 08                	sbb    %ecx,(%rax)
    187e:	2b 19                	sub    (%rcx),%ebx
    1880:	08 08                	or     %cl,(%rax)
    1882:	08 2b                	or     %ch,(%rbx)
    1884:	19 08                	sbb    %ecx,(%rax)
    1886:	2b 19                	sub    (%rcx),%ebx
    1888:	19 2b                	sbb    %ebp,(%rbx)
    188a:	19 2b                	sbb    %ebp,(%rbx)
    188c:	19 08                	sbb    %ecx,(%rax)
    188e:	2b 19                	sub    (%rcx),%ebx
    1890:	08 19                	or     %bl,(%rcx)
    1892:	08 08                	or     %cl,(%rax)
    1894:	2b 08                	sub    (%rax),%ecx
    1896:	2b 19                	sub    (%rcx),%ebx
    1898:	08 08                	or     %cl,(%rax)
    189a:	19 08                	sbb    %ecx,(%rax)
    189c:	2b 08                	sub    (%rax),%ecx
    189e:	2b 19                	sub    (%rcx),%ebx
    18a0:	08 08                	or     %cl,(%rax)
    18a2:	08 19                	or     %bl,(%rcx)
    18a4:	2b 08                	sub    (%rax),%ecx
    18a6:	2b 19                	sub    (%rcx),%ebx
    18a8:	2b 19                	sub    (%rcx),%ebx
    18aa:	19 19                	sbb    %ebx,(%rcx)
    18ac:	2b 08                	sub    (%rax),%ecx
    18ae:	2b 19                	sub    (%rcx),%ebx
    18b0:	19 08                	sbb    %ecx,(%rax)
    18b2:	2b 2b                	sub    (%rbx),%ebp
    18b4:	2b 08                	sub    (%rax),%ecx
    18b6:	2b 19                	sub    (%rcx),%ebx
    18b8:	08 08                	or     %cl,(%rax)
    18ba:	08 08                	or     %cl,(%rax)
    18bc:	08 19                	or     %bl,(%rcx)
    18be:	2b 19                	sub    (%rcx),%ebx
    18c0:	19 19                	sbb    %ebx,(%rcx)
    18c2:	08 08                	or     %cl,(%rax)
    18c4:	08 19                	or     %bl,(%rcx)
    18c6:	2b 19                	sub    (%rcx),%ebx
    18c8:	08 2b                	or     %ch,(%rbx)
    18ca:	08 08                	or     %cl,(%rax)
    18cc:	08 19                	or     %bl,(%rcx)
    18ce:	2b 19                	sub    (%rcx),%ebx
    18d0:	19 08                	sbb    %ecx,(%rax)
    18d2:	19 08                	sbb    %ecx,(%rax)
    18d4:	08 19                	or     %bl,(%rcx)
    18d6:	2b 19                	sub    (%rcx),%ebx
    18d8:	08 19                	or     %bl,(%rcx)
    18da:	19 08                	sbb    %ecx,(%rax)
    18dc:	08 19                	or     %bl,(%rcx)
    18de:	2b 19                	sub    (%rcx),%ebx
    18e0:	08 08                	or     %cl,(%rax)
    18e2:	2b 08                	sub    (%rax),%ecx
    18e4:	08 19                	or     %bl,(%rcx)
    18e6:	2b 19                	sub    (%rcx),%ebx
    18e8:	19 08                	sbb    %ecx,(%rax)
    18ea:	08 19                	or     %bl,(%rcx)
    18ec:	08 19                	or     %bl,(%rcx)
    18ee:	2b 19                	sub    (%rcx),%ebx
    18f0:	08 19                	or     %bl,(%rcx)
    18f2:	08 19                	or     %bl,(%rcx)
    18f4:	08 19                	or     %bl,(%rcx)
    18f6:	2b 19                	sub    (%rcx),%ebx
    18f8:	08 08                	or     %cl,(%rax)
    18fa:	19 19                	sbb    %ebx,(%rcx)
    18fc:	08 19                	or     %bl,(%rcx)
    18fe:	2b 19                	sub    (%rcx),%ebx
    1900:	08 08                	or     %cl,(%rax)
    1902:	08 2b                	or     %ch,(%rbx)
    1904:	08 19                	or     %bl,(%rcx)
    1906:	2b 19                	sub    (%rcx),%ebx
    1908:	19 08                	sbb    %ecx,(%rax)
    190a:	08 08                	or     %cl,(%rax)
    190c:	19 19                	sbb    %ebx,(%rcx)
    190e:	2b 19                	sub    (%rcx),%ebx
    1910:	08 19                	or     %bl,(%rcx)
    1912:	08 08                	or     %cl,(%rax)
    1914:	19 19                	sbb    %ebx,(%rcx)
    1916:	2b 19                	sub    (%rcx),%ebx
    1918:	08 08                	or     %cl,(%rax)
    191a:	19 08                	sbb    %ecx,(%rax)
    191c:	19 19                	sbb    %ebx,(%rcx)
    191e:	2b 19                	sub    (%rcx),%ebx
    1920:	08 08                	or     %cl,(%rax)
    1922:	08 19                	or     %bl,(%rcx)
    1924:	19 19                	sbb    %ebx,(%rcx)
    1926:	2b 19                	sub    (%rcx),%ebx
    1928:	2b 2b                	sub    (%rbx),%ebp
    192a:	08 19                	or     %bl,(%rcx)
    192c:	19 19                	sbb    %ebx,(%rcx)
    192e:	2b 19                	sub    (%rcx),%ebx
    1930:	08 2b                	or     %ch,(%rbx)
    1932:	2b 19                	sub    (%rcx),%ebx
    1934:	19 19                	sbb    %ebx,(%rcx)
    1936:	2b 19                	sub    (%rcx),%ebx
    1938:	2b 08                	sub    (%rax),%ecx
    193a:	19 2b                	sbb    %ebp,(%rbx)
    193c:	19 19                	sbb    %ebx,(%rcx)
    193e:	2b 19                	sub    (%rcx),%ebx
    1940:	08 08                	or     %cl,(%rax)
    1942:	08 08                	or     %cl,(%rax)
    1944:	2b 19                	sub    (%rcx),%ebx
    1946:	2b 19                	sub    (%rcx),%ebx
    1948:	08 19                	or     %bl,(%rcx)
    194a:	19 2b                	sbb    %ebp,(%rbx)
    194c:	2b 19                	sub    (%rcx),%ebx
    194e:	2b 19                	sub    (%rcx),%ebx
    1950:	19 08                	sbb    %ecx,(%rax)
    1952:	08 08                	or     %cl,(%rax)
    1954:	08 2b                	or     %ch,(%rbx)
    1956:	2b 19                	sub    (%rcx),%ebx
    1958:	08 19                	or     %bl,(%rcx)
    195a:	08 08                	or     %cl,(%rax)
    195c:	08 2b                	or     %ch,(%rbx)
    195e:	2b 19                	sub    (%rcx),%ebx
    1960:	08 08                	or     %cl,(%rax)
    1962:	19 08                	sbb    %ecx,(%rax)
    1964:	08 2b                	or     %ch,(%rbx)
    1966:	2b 19                	sub    (%rcx),%ebx
    1968:	19 19                	sbb    %ebx,(%rcx)
    196a:	2b 19                	sub    (%rcx),%ebx
    196c:	08 2b                	or     %ch,(%rbx)
    196e:	2b 19                	sub    (%rcx),%ebx
    1970:	08 2b                	or     %ch,(%rbx)
    1972:	19 2b                	sbb    %ebp,(%rbx)
    1974:	08 2b                	or     %ch,(%rbx)
    1976:	2b 19                	sub    (%rcx),%ebx
    1978:	08 08                	or     %cl,(%rax)
    197a:	08 08                	or     %cl,(%rax)
    197c:	19 2b                	sbb    %ebp,(%rbx)
    197e:	2b 19                	sub    (%rcx),%ebx
    1980:	2b 2b                	sub    (%rbx),%ebp
    1982:	2b 08                	sub    (%rax),%ecx
    1984:	19 2b                	sbb    %ebp,(%rbx)
    1986:	2b 19                	sub    (%rcx),%ebx
    1988:	2b 08                	sub    (%rax),%ecx
    198a:	08 19                	or     %bl,(%rcx)
    198c:	2b 2b                	sub    (%rbx),%ebp
    198e:	2b 19                	sub    (%rcx),%ebx
    1990:	19 08                	sbb    %ecx,(%rax)
    1992:	2b 2b                	sub    (%rbx),%ebp
    1994:	2b 2b                	sub    (%rbx),%ebp
    1996:	2b 19                	sub    (%rcx),%ebx
    1998:	08 08                	or     %cl,(%rax)
    199a:	08 08                	or     %cl,(%rax)
    199c:	08 08                	or     %cl,(%rax)
    199e:	08 2b                	or     %ch,(%rbx)
    19a0:	2b 08                	sub    (%rax),%ecx
    19a2:	08 08                	or     %cl,(%rax)
    19a4:	08 08                	or     %cl,(%rax)
    19a6:	08 2b                	or     %ch,(%rbx)
    19a8:	19 19                	sbb    %ebx,(%rcx)
    19aa:	08 08                	or     %cl,(%rax)
    19ac:	08 08                	or     %cl,(%rax)
    19ae:	08 2b                	or     %ch,(%rbx)
    19b0:	08 2b                	or     %ch,(%rbx)
    19b2:	08 08                	or     %cl,(%rax)
    19b4:	08 08                	or     %cl,(%rax)
    19b6:	08 2b                	or     %ch,(%rbx)
    19b8:	19 08                	sbb    %ecx,(%rax)
    19ba:	19 08                	sbb    %ecx,(%rax)
    19bc:	08 08                	or     %cl,(%rax)
    19be:	08 2b                	or     %ch,(%rbx)
    19c0:	08 19                	or     %bl,(%rcx)
    19c2:	19 08                	sbb    %ecx,(%rax)
    19c4:	08 08                	or     %cl,(%rax)
    19c6:	08 2b                	or     %ch,(%rbx)
    19c8:	19 2b                	sbb    %ebp,(%rbx)
    19ca:	19 08                	sbb    %ecx,(%rax)
    19cc:	08 08                	or     %cl,(%rax)
    19ce:	08 2b                	or     %ch,(%rbx)
    19d0:	08 08                	or     %cl,(%rax)
    19d2:	2b 08                	sub    (%rax),%ecx
    19d4:	08 08                	or     %cl,(%rax)
    19d6:	08 2b                	or     %ch,(%rbx)
    19d8:	19 19                	sbb    %ebx,(%rcx)
    19da:	2b 08                	sub    (%rax),%ecx
    19dc:	08 08                	or     %cl,(%rax)
    19de:	08 2b                	or     %ch,(%rbx)
    19e0:	19 08                	sbb    %ecx,(%rax)
    19e2:	08 19                	or     %bl,(%rcx)
    19e4:	08 08                	or     %cl,(%rax)
    19e6:	08 2b                	or     %ch,(%rbx)
    19e8:	08 19                	or     %bl,(%rcx)
    19ea:	08 19                	or     %bl,(%rcx)
    19ec:	08 08                	or     %cl,(%rax)
    19ee:	08 2b                	or     %ch,(%rbx)
    19f0:	08 08                	or     %cl,(%rax)
    19f2:	19 19                	sbb    %ebx,(%rcx)
    19f4:	08 08                	or     %cl,(%rax)
    19f6:	08 2b                	or     %ch,(%rbx)
    19f8:	2b 08                	sub    (%rax),%ecx
    19fa:	19 19                	sbb    %ebx,(%rcx)
    19fc:	08 08                	or     %cl,(%rax)
    19fe:	08 2b                	or     %ch,(%rbx)
    1a00:	19 19                	sbb    %ebx,(%rcx)
    1a02:	19 19                	sbb    %ebx,(%rcx)
    1a04:	08 08                	or     %cl,(%rax)
    1a06:	08 2b                	or     %ch,(%rbx)
    1a08:	08 2b                	or     %ch,(%rbx)
    1a0a:	19 19                	sbb    %ebx,(%rcx)
    1a0c:	08 08                	or     %cl,(%rax)
    1a0e:	08 2b                	or     %ch,(%rbx)
    1a10:	19 08                	sbb    %ecx,(%rax)
    1a12:	2b 19                	sub    (%rcx),%ebx
    1a14:	08 08                	or     %cl,(%rax)
    1a16:	08 2b                	or     %ch,(%rbx)
    1a18:	08 08                	or     %cl,(%rax)
    1a1a:	08 2b                	or     %ch,(%rbx)
    1a1c:	08 08                	or     %cl,(%rax)
    1a1e:	08 2b                	or     %ch,(%rbx)
    1a20:	19 19                	sbb    %ebx,(%rcx)
    1a22:	08 2b                	or     %ch,(%rbx)
    1a24:	08 08                	or     %cl,(%rax)
    1a26:	08 2b                	or     %ch,(%rbx)
    1a28:	19 08                	sbb    %ecx,(%rax)
    1a2a:	19 2b                	sbb    %ebp,(%rbx)
    1a2c:	08 08                	or     %cl,(%rax)
    1a2e:	08 2b                	or     %ch,(%rbx)
    1a30:	08 19                	or     %bl,(%rcx)
    1a32:	19 2b                	sbb    %ebp,(%rbx)
    1a34:	08 08                	or     %cl,(%rax)
    1a36:	08 2b                	or     %ch,(%rbx)
    1a38:	19 08                	sbb    %ecx,(%rax)
    1a3a:	08 08                	or     %cl,(%rax)
    1a3c:	19 08                	sbb    %ecx,(%rax)
    1a3e:	08 2b                	or     %ch,(%rbx)
    1a40:	08 19                	or     %bl,(%rcx)
    1a42:	08 08                	or     %cl,(%rax)
    1a44:	19 08                	sbb    %ecx,(%rax)
    1a46:	08 2b                	or     %ch,(%rbx)
    1a48:	19 2b                	sbb    %ebp,(%rbx)
    1a4a:	08 08                	or     %cl,(%rax)
    1a4c:	19 08                	sbb    %ecx,(%rax)
    1a4e:	08 2b                	or     %ch,(%rbx)
    1a50:	08 08                	or     %cl,(%rax)
    1a52:	19 08                	sbb    %ecx,(%rax)
    1a54:	19 08                	sbb    %ecx,(%rax)
    1a56:	08 2b                	or     %ch,(%rbx)
    1a58:	2b 08                	sub    (%rax),%ecx
    1a5a:	19 08                	sbb    %ecx,(%rax)
    1a5c:	19 08                	sbb    %ecx,(%rax)
    1a5e:	08 2b                	or     %ch,(%rbx)
    1a60:	19 19                	sbb    %ebx,(%rcx)
    1a62:	19 08                	sbb    %ecx,(%rax)
    1a64:	19 08                	sbb    %ecx,(%rax)
    1a66:	08 2b                	or     %ch,(%rbx)
    1a68:	08 2b                	or     %ch,(%rbx)
    1a6a:	19 08                	sbb    %ecx,(%rax)
    1a6c:	19 08                	sbb    %ecx,(%rax)
    1a6e:	08 2b                	or     %ch,(%rbx)
    1a70:	19 08                	sbb    %ecx,(%rax)
    1a72:	2b 08                	sub    (%rax),%ecx
    1a74:	19 08                	sbb    %ecx,(%rax)
    1a76:	08 2b                	or     %ch,(%rbx)
    1a78:	08 19                	or     %bl,(%rcx)
    1a7a:	2b 08                	sub    (%rax),%ecx
    1a7c:	19 08                	sbb    %ecx,(%rax)
    1a7e:	08 2b                	or     %ch,(%rbx)
    1a80:	08 08                	or     %cl,(%rax)
    1a82:	08 19                	or     %bl,(%rcx)
    1a84:	19 08                	sbb    %ecx,(%rax)
    1a86:	08 2b                	or     %ch,(%rbx)
    1a88:	2b 08                	sub    (%rax),%ecx
    1a8a:	08 19                	or     %bl,(%rcx)
    1a8c:	19 08                	sbb    %ecx,(%rax)
    1a8e:	08 2b                	or     %ch,(%rbx)
    1a90:	19 19                	sbb    %ebx,(%rcx)
    1a92:	08 19                	or     %bl,(%rcx)
    1a94:	19 08                	sbb    %ecx,(%rax)
    1a96:	08 2b                	or     %ch,(%rbx)
    1a98:	08 2b                	or     %ch,(%rbx)
    1a9a:	08 19                	or     %bl,(%rcx)
    1a9c:	19 08                	sbb    %ecx,(%rax)
    1a9e:	08 2b                	or     %ch,(%rbx)
    1aa0:	19 08                	sbb    %ecx,(%rax)
    1aa2:	19 19                	sbb    %ebx,(%rcx)
    1aa4:	19 08                	sbb    %ecx,(%rax)
    1aa6:	08 2b                	or     %ch,(%rbx)
    1aa8:	08 19                	or     %bl,(%rcx)
    1aaa:	19 19                	sbb    %ebx,(%rcx)
    1aac:	19 08                	sbb    %ecx,(%rax)
    1aae:	08 2b                	or     %ch,(%rbx)
    1ab0:	19 08                	sbb    %ecx,(%rax)
    1ab2:	08 2b                	or     %ch,(%rbx)
    1ab4:	19 08                	sbb    %ecx,(%rax)
    1ab6:	08 2b                	or     %ch,(%rbx)
    1ab8:	08 19                	or     %bl,(%rcx)
    1aba:	08 2b                	or     %ch,(%rbx)
    1abc:	19 08                	sbb    %ecx,(%rax)
    1abe:	08 2b                	or     %ch,(%rbx)
    1ac0:	08 08                	or     %cl,(%rax)
    1ac2:	19 2b                	sbb    %ebp,(%rbx)
    1ac4:	19 08                	sbb    %ecx,(%rax)
    1ac6:	08 2b                	or     %ch,(%rbx)
    1ac8:	19 2b                	sbb    %ebp,(%rbx)
    1aca:	2b 2b                	sub    (%rbx),%ebp
    1acc:	19 08                	sbb    %ecx,(%rax)
    1ace:	08 2b                	or     %ch,(%rbx)
    1ad0:	08 08                	or     %cl,(%rax)
    1ad2:	08 08                	or     %cl,(%rax)
    1ad4:	2b 08                	sub    (%rax),%ecx
    1ad6:	08 2b                	or     %ch,(%rbx)
    1ad8:	19 19                	sbb    %ebx,(%rcx)
    1ada:	08 08                	or     %cl,(%rax)
    1adc:	2b 08                	sub    (%rax),%ecx
    1ade:	08 2b                	or     %ch,(%rbx)
    1ae0:	2b 2b                	sub    (%rbx),%ebp
    1ae2:	08 08                	or     %cl,(%rax)
    1ae4:	2b 08                	sub    (%rax),%ecx
    1ae6:	08 2b                	or     %ch,(%rbx)
    1ae8:	19 08                	sbb    %ecx,(%rax)
    1aea:	19 08                	sbb    %ecx,(%rax)
    1aec:	2b 08                	sub    (%rax),%ecx
    1aee:	08 2b                	or     %ch,(%rbx)
    1af0:	08 19                	or     %bl,(%rcx)
    1af2:	19 08                	sbb    %ecx,(%rax)
    1af4:	2b 08                	sub    (%rax),%ecx
    1af6:	08 2b                	or     %ch,(%rbx)
    1af8:	19 08                	sbb    %ecx,(%rax)
    1afa:	08 19                	or     %bl,(%rcx)
    1afc:	2b 08                	sub    (%rax),%ecx
    1afe:	08 2b                	or     %ch,(%rbx)
    1b00:	08 19                	or     %bl,(%rcx)
    1b02:	08 19                	or     %bl,(%rcx)
    1b04:	2b 08                	sub    (%rax),%ecx
    1b06:	08 2b                	or     %ch,(%rbx)
    1b08:	08 08                	or     %cl,(%rax)
    1b0a:	19 19                	sbb    %ebx,(%rcx)
    1b0c:	2b 08                	sub    (%rax),%ecx
    1b0e:	08 2b                	or     %ch,(%rbx)
    1b10:	19 08                	sbb    %ecx,(%rax)
    1b12:	08 08                	or     %cl,(%rax)
    1b14:	08 19                	or     %bl,(%rcx)
    1b16:	08 2b                	or     %ch,(%rbx)
    1b18:	08 19                	or     %bl,(%rcx)
    1b1a:	08 08                	or     %cl,(%rax)
    1b1c:	08 19                	or     %bl,(%rcx)
    1b1e:	08 2b                	or     %ch,(%rbx)
    1b20:	2b 19                	sub    (%rcx),%ebx
    1b22:	08 08                	or     %cl,(%rax)
    1b24:	08 19                	or     %bl,(%rcx)
    1b26:	08 2b                	or     %ch,(%rbx)
    1b28:	19 2b                	sbb    %ebp,(%rbx)
    1b2a:	08 08                	or     %cl,(%rax)
    1b2c:	08 19                	or     %bl,(%rcx)
    1b2e:	08 2b                	or     %ch,(%rbx)
    1b30:	08 08                	or     %cl,(%rax)
    1b32:	19 08                	sbb    %ecx,(%rax)
    1b34:	08 19                	or     %bl,(%rcx)
    1b36:	08 2b                	or     %ch,(%rbx)
    1b38:	2b 08                	sub    (%rax),%ecx
    1b3a:	19 08                	sbb    %ecx,(%rax)
    1b3c:	08 19                	or     %bl,(%rcx)
    1b3e:	08 2b                	or     %ch,(%rbx)
    1b40:	19 19                	sbb    %ebx,(%rcx)
    1b42:	19 08                	sbb    %ecx,(%rax)
    1b44:	08 19                	or     %bl,(%rcx)
    1b46:	08 2b                	or     %ch,(%rbx)
    1b48:	08 2b                	or     %ch,(%rbx)
    1b4a:	19 08                	sbb    %ecx,(%rax)
    1b4c:	08 19                	or     %bl,(%rcx)
    1b4e:	08 2b                	or     %ch,(%rbx)
    1b50:	19 08                	sbb    %ecx,(%rax)
    1b52:	2b 08                	sub    (%rax),%ecx
    1b54:	08 19                	or     %bl,(%rcx)
    1b56:	08 2b                	or     %ch,(%rbx)
    1b58:	08 08                	or     %cl,(%rax)
    1b5a:	08 19                	or     %bl,(%rcx)
    1b5c:	08 19                	or     %bl,(%rcx)
    1b5e:	08 2b                	or     %ch,(%rbx)
    1b60:	2b 08                	sub    (%rax),%ecx
    1b62:	08 19                	or     %bl,(%rcx)
    1b64:	08 19                	or     %bl,(%rcx)
    1b66:	08 2b                	or     %ch,(%rbx)
    1b68:	19 19                	sbb    %ebx,(%rcx)
    1b6a:	08 19                	or     %bl,(%rcx)
    1b6c:	08 19                	or     %bl,(%rcx)
    1b6e:	08 2b                	or     %ch,(%rbx)
    1b70:	08 2b                	or     %ch,(%rbx)
    1b72:	08 19                	or     %bl,(%rcx)
    1b74:	08 19                	or     %bl,(%rcx)
    1b76:	08 2b                	or     %ch,(%rbx)
    1b78:	19 08                	sbb    %ecx,(%rax)
    1b7a:	19 19                	sbb    %ebx,(%rcx)
    1b7c:	08 19                	or     %bl,(%rcx)
    1b7e:	08 2b                	or     %ch,(%rbx)
    1b80:	08 19                	or     %bl,(%rcx)
    1b82:	19 19                	sbb    %ebx,(%rcx)
    1b84:	08 19                	or     %bl,(%rcx)
    1b86:	08 2b                	or     %ch,(%rbx)
    1b88:	08 08                	or     %cl,(%rax)
    1b8a:	2b 19                	sub    (%rcx),%ebx
    1b8c:	08 19                	or     %bl,(%rcx)
    1b8e:	08 2b                	or     %ch,(%rbx)
    1b90:	19 08                	sbb    %ecx,(%rax)
    1b92:	08 2b                	or     %ch,(%rbx)
    1b94:	08 19                	or     %bl,(%rcx)
    1b96:	08 2b                	or     %ch,(%rbx)
    1b98:	08 19                	or     %bl,(%rcx)
    1b9a:	08 2b                	or     %ch,(%rbx)
    1b9c:	08 19                	or     %bl,(%rcx)
    1b9e:	08 2b                	or     %ch,(%rbx)
    1ba0:	08 08                	or     %cl,(%rax)
    1ba2:	19 2b                	sbb    %ebp,(%rbx)
    1ba4:	08 19                	or     %bl,(%rcx)
    1ba6:	08 2b                	or     %ch,(%rbx)
    1ba8:	08 08                	or     %cl,(%rax)
    1baa:	08 08                	or     %cl,(%rax)
    1bac:	19 19                	sbb    %ebx,(%rcx)
    1bae:	08 2b                	or     %ch,(%rbx)
    1bb0:	2b 08                	sub    (%rax),%ecx
    1bb2:	08 08                	or     %cl,(%rax)
    1bb4:	19 19                	sbb    %ebx,(%rcx)
    1bb6:	08 2b                	or     %ch,(%rbx)
    1bb8:	19 19                	sbb    %ebx,(%rcx)
    1bba:	08 08                	or     %cl,(%rax)
    1bbc:	19 19                	sbb    %ebx,(%rcx)
    1bbe:	08 2b                	or     %ch,(%rbx)
    1bc0:	08 2b                	or     %ch,(%rbx)
    1bc2:	08 08                	or     %cl,(%rax)
    1bc4:	19 19                	sbb    %ebx,(%rcx)
    1bc6:	08 2b                	or     %ch,(%rbx)
    1bc8:	19 08                	sbb    %ecx,(%rax)
    1bca:	19 08                	sbb    %ecx,(%rax)
    1bcc:	19 19                	sbb    %ebx,(%rcx)
    1bce:	08 2b                	or     %ch,(%rbx)
    1bd0:	08 19                	or     %bl,(%rcx)
    1bd2:	19 08                	sbb    %ecx,(%rax)
    1bd4:	19 19                	sbb    %ebx,(%rcx)
    1bd6:	08 2b                	or     %ch,(%rbx)
    1bd8:	08 08                	or     %cl,(%rax)
    1bda:	2b 08                	sub    (%rax),%ecx
    1bdc:	19 19                	sbb    %ebx,(%rcx)
    1bde:	08 2b                	or     %ch,(%rbx)
    1be0:	19 08                	sbb    %ecx,(%rax)
    1be2:	08 19                	or     %bl,(%rcx)
    1be4:	19 19                	sbb    %ebx,(%rcx)
    1be6:	08 2b                	or     %ch,(%rbx)
    1be8:	08 19                	or     %bl,(%rcx)
    1bea:	08 19                	or     %bl,(%rcx)
    1bec:	19 19                	sbb    %ebx,(%rcx)
    1bee:	08 2b                	or     %ch,(%rbx)
    1bf0:	08 08                	or     %cl,(%rax)
    1bf2:	19 19                	sbb    %ebx,(%rcx)
    1bf4:	19 19                	sbb    %ebx,(%rcx)
    1bf6:	08 2b                	or     %ch,(%rbx)
    1bf8:	08 08                	or     %cl,(%rax)
    1bfa:	08 2b                	or     %ch,(%rbx)
    1bfc:	19 19                	sbb    %ebx,(%rcx)
    1bfe:	08 2b                	or     %ch,(%rbx)
    1c00:	2b 2b                	sub    (%rbx),%ebp
    1c02:	08 2b                	or     %ch,(%rbx)
    1c04:	19 19                	sbb    %ebx,(%rcx)
    1c06:	08 2b                	or     %ch,(%rbx)
    1c08:	19 08                	sbb    %ecx,(%rax)
    1c0a:	08 08                	or     %cl,(%rax)
    1c0c:	2b 19                	sub    (%rcx),%ebx
    1c0e:	08 2b                	or     %ch,(%rbx)
    1c10:	08 19                	or     %bl,(%rcx)
    1c12:	08 08                	or     %cl,(%rax)
    1c14:	2b 19                	sub    (%rcx),%ebx
    1c16:	08 2b                	or     %ch,(%rbx)
    1c18:	08 08                	or     %cl,(%rax)
    1c1a:	19 08                	sbb    %ecx,(%rax)
    1c1c:	2b 19                	sub    (%rcx),%ebx
    1c1e:	08 2b                	or     %ch,(%rbx)
    1c20:	19 2b                	sbb    %ebp,(%rbx)
    1c22:	2b 08                	sub    (%rax),%ecx
    1c24:	2b 19                	sub    (%rcx),%ebx
    1c26:	08 2b                	or     %ch,(%rbx)
    1c28:	08 08                	or     %cl,(%rax)
    1c2a:	08 19                	or     %bl,(%rcx)
    1c2c:	2b 19                	sub    (%rcx),%ebx
    1c2e:	08 2b                	or     %ch,(%rbx)
    1c30:	08 08                	or     %cl,(%rax)
    1c32:	08 08                	or     %cl,(%rax)
    1c34:	08 2b                	or     %ch,(%rbx)
    1c36:	08 2b                	or     %ch,(%rbx)
    1c38:	19 19                	sbb    %ebx,(%rcx)
    1c3a:	08 08                	or     %cl,(%rax)
    1c3c:	08 2b                	or     %ch,(%rbx)
    1c3e:	08 2b                	or     %ch,(%rbx)
    1c40:	19 08                	sbb    %ecx,(%rax)
    1c42:	19 08                	sbb    %ecx,(%rax)
    1c44:	08 2b                	or     %ch,(%rbx)
    1c46:	08 2b                	or     %ch,(%rbx)
    1c48:	08 19                	or     %bl,(%rcx)
    1c4a:	19 08                	sbb    %ecx,(%rax)
    1c4c:	08 2b                	or     %ch,(%rbx)
    1c4e:	08 2b                	or     %ch,(%rbx)
    1c50:	19 08                	sbb    %ecx,(%rax)
    1c52:	08 19                	or     %bl,(%rcx)
    1c54:	08 2b                	or     %ch,(%rbx)
    1c56:	08 2b                	or     %ch,(%rbx)
    1c58:	08 19                	or     %bl,(%rcx)
    1c5a:	08 19                	or     %bl,(%rcx)
    1c5c:	08 2b                	or     %ch,(%rbx)
    1c5e:	08 2b                	or     %ch,(%rbx)
    1c60:	08 08                	or     %cl,(%rax)
    1c62:	19 19                	sbb    %ebx,(%rcx)
    1c64:	08 2b                	or     %ch,(%rbx)
    1c66:	08 2b                	or     %ch,(%rbx)
    1c68:	2b 08                	sub    (%rax),%ecx
    1c6a:	2b 2b                	sub    (%rbx),%ebp
    1c6c:	08 2b                	or     %ch,(%rbx)
    1c6e:	08 2b                	or     %ch,(%rbx)
    1c70:	19 08                	sbb    %ecx,(%rax)
    1c72:	08 08                	or     %cl,(%rax)
    1c74:	19 2b                	sbb    %ebp,(%rbx)
    1c76:	08 2b                	or     %ch,(%rbx)
    1c78:	08 19                	or     %bl,(%rcx)
    1c7a:	08 08                	or     %cl,(%rax)
    1c7c:	19 2b                	sbb    %ebp,(%rbx)
    1c7e:	08 2b                	or     %ch,(%rbx)
    1c80:	08 08                	or     %cl,(%rax)
    1c82:	08 19                	or     %bl,(%rcx)
    1c84:	19 2b                	sbb    %ebp,(%rbx)
    1c86:	08 2b                	or     %ch,(%rbx)
    1c88:	19 19                	sbb    %ebx,(%rcx)
    1c8a:	2b 19                	sub    (%rcx),%ebx
    1c8c:	19 2b                	sbb    %ebp,(%rbx)
    1c8e:	08 2b                	or     %ch,(%rbx)
    1c90:	2b 08                	sub    (%rax),%ecx
    1c92:	2b 08                	sub    (%rax),%ecx
    1c94:	2b 2b                	sub    (%rbx),%ebp
    1c96:	08 2b                	or     %ch,(%rbx)
    1c98:	08 2b                	or     %ch,(%rbx)
    1c9a:	19 19                	sbb    %ebx,(%rcx)
    1c9c:	2b 2b                	sub    (%rbx),%ebp
    1c9e:	08 2b                	or     %ch,(%rbx)
    1ca0:	2b 2b                	sub    (%rbx),%ebp
    1ca2:	19 19                	sbb    %ebx,(%rcx)
    1ca4:	2b 2b                	sub    (%rbx),%ebp
    1ca6:	08 2b                	or     %ch,(%rbx)
    1ca8:	2b 08                	sub    (%rax),%ecx
    1caa:	08 2b                	or     %ch,(%rbx)
    1cac:	2b 2b                	sub    (%rbx),%ebp
    1cae:	08 2b                	or     %ch,(%rbx)
    1cb0:	2b 08                	sub    (%rax),%ecx
    1cb2:	2b 2b                	sub    (%rbx),%ebp
    1cb4:	2b 2b                	sub    (%rbx),%ebp
    1cb6:	08 2b                	or     %ch,(%rbx)
    1cb8:	19 08                	sbb    %ecx,(%rax)
    1cba:	08 08                	or     %cl,(%rax)
    1cbc:	08 08                	or     %cl,(%rax)
    1cbe:	19 2b                	sbb    %ebp,(%rbx)
    1cc0:	08 19                	or     %bl,(%rcx)
    1cc2:	08 08                	or     %cl,(%rax)
    1cc4:	08 08                	or     %cl,(%rax)
    1cc6:	19 2b                	sbb    %ebp,(%rbx)
    1cc8:	19 2b                	sbb    %ebp,(%rbx)
    1cca:	08 08                	or     %cl,(%rax)
    1ccc:	08 08                	or     %cl,(%rax)
    1cce:	19 2b                	sbb    %ebp,(%rbx)
    1cd0:	08 08                	or     %cl,(%rax)
    1cd2:	19 08                	sbb    %ecx,(%rax)
    1cd4:	08 08                	or     %cl,(%rax)
    1cd6:	19 2b                	sbb    %ebp,(%rbx)
    1cd8:	2b 08                	sub    (%rax),%ecx
    1cda:	19 08                	sbb    %ecx,(%rax)
    1cdc:	08 08                	or     %cl,(%rax)
    1cde:	19 2b                	sbb    %ebp,(%rbx)
    1ce0:	19 19                	sbb    %ebx,(%rcx)
    1ce2:	19 08                	sbb    %ecx,(%rax)
    1ce4:	08 08                	or     %cl,(%rax)
    1ce6:	19 2b                	sbb    %ebp,(%rbx)
    1ce8:	08 2b                	or     %ch,(%rbx)
    1cea:	19 08                	sbb    %ecx,(%rax)
    1cec:	08 08                	or     %cl,(%rax)
    1cee:	19 2b                	sbb    %ebp,(%rbx)
    1cf0:	08 19                	or     %bl,(%rcx)
    1cf2:	2b 08                	sub    (%rax),%ecx
    1cf4:	08 08                	or     %cl,(%rax)
    1cf6:	19 2b                	sbb    %ebp,(%rbx)
    1cf8:	08 08                	or     %cl,(%rax)
    1cfa:	08 19                	or     %bl,(%rcx)
    1cfc:	08 08                	or     %cl,(%rax)
    1cfe:	19 2b                	sbb    %ebp,(%rbx)
    1d00:	2b 08                	sub    (%rax),%ecx
    1d02:	08 19                	or     %bl,(%rcx)
    1d04:	08 08                	or     %cl,(%rax)
    1d06:	19 2b                	sbb    %ebp,(%rbx)
    1d08:	19 19                	sbb    %ebx,(%rcx)
    1d0a:	08 19                	or     %bl,(%rcx)
    1d0c:	08 08                	or     %cl,(%rax)
    1d0e:	19 2b                	sbb    %ebp,(%rbx)
    1d10:	08 2b                	or     %ch,(%rbx)
    1d12:	08 19                	or     %bl,(%rcx)
    1d14:	08 08                	or     %cl,(%rax)
    1d16:	19 2b                	sbb    %ebp,(%rbx)
    1d18:	19 08                	sbb    %ecx,(%rax)
    1d1a:	19 19                	sbb    %ebx,(%rcx)
    1d1c:	08 08                	or     %cl,(%rax)
    1d1e:	19 2b                	sbb    %ebp,(%rbx)
    1d20:	08 19                	or     %bl,(%rcx)
    1d22:	19 19                	sbb    %ebx,(%rcx)
    1d24:	08 08                	or     %cl,(%rax)
    1d26:	19 2b                	sbb    %ebp,(%rbx)
    1d28:	08 08                	or     %cl,(%rax)
    1d2a:	2b 19                	sub    (%rcx),%ebx
    1d2c:	08 08                	or     %cl,(%rax)
    1d2e:	19 2b                	sbb    %ebp,(%rbx)
    1d30:	19 08                	sbb    %ecx,(%rax)
    1d32:	08 2b                	or     %ch,(%rbx)
    1d34:	08 08                	or     %cl,(%rax)
    1d36:	19 2b                	sbb    %ebp,(%rbx)
    1d38:	08 19                	or     %bl,(%rcx)
    1d3a:	08 2b                	or     %ch,(%rbx)
    1d3c:	08 08                	or     %cl,(%rax)
    1d3e:	19 2b                	sbb    %ebp,(%rbx)
    1d40:	08 08                	or     %cl,(%rax)
    1d42:	19 2b                	sbb    %ebp,(%rbx)
    1d44:	08 08                	or     %cl,(%rax)
    1d46:	19 2b                	sbb    %ebp,(%rbx)
    1d48:	08 08                	or     %cl,(%rax)
    1d4a:	08 08                	or     %cl,(%rax)
    1d4c:	19 08                	sbb    %ecx,(%rax)
    1d4e:	19 2b                	sbb    %ebp,(%rbx)
    1d50:	19 19                	sbb    %ebx,(%rcx)
    1d52:	08 08                	or     %cl,(%rax)
    1d54:	19 08                	sbb    %ecx,(%rax)
    1d56:	19 2b                	sbb    %ebp,(%rbx)
    1d58:	19 08                	sbb    %ecx,(%rax)
    1d5a:	19 08                	sbb    %ecx,(%rax)
    1d5c:	19 08                	sbb    %ecx,(%rax)
    1d5e:	19 2b                	sbb    %ebp,(%rbx)
    1d60:	08 19                	or     %bl,(%rcx)
    1d62:	19 08                	sbb    %ecx,(%rax)
    1d64:	19 08                	sbb    %ecx,(%rax)
    1d66:	19 2b                	sbb    %ebp,(%rbx)
    1d68:	19 08                	sbb    %ecx,(%rax)
    1d6a:	08 19                	or     %bl,(%rcx)
    1d6c:	19 08                	sbb    %ecx,(%rax)
    1d6e:	19 2b                	sbb    %ebp,(%rbx)
    1d70:	08 19                	or     %bl,(%rcx)
    1d72:	08 19                	or     %bl,(%rcx)
    1d74:	19 08                	sbb    %ecx,(%rax)
    1d76:	19 2b                	sbb    %ebp,(%rbx)
    1d78:	08 08                	or     %cl,(%rax)
    1d7a:	19 19                	sbb    %ebx,(%rcx)
    1d7c:	19 08                	sbb    %ecx,(%rax)
    1d7e:	19 2b                	sbb    %ebp,(%rbx)
    1d80:	2b 2b                	sub    (%rbx),%ebp
    1d82:	19 19                	sbb    %ebx,(%rcx)
    1d84:	19 08                	sbb    %ecx,(%rax)
    1d86:	19 2b                	sbb    %ebp,(%rbx)
    1d88:	19 08                	sbb    %ecx,(%rax)
    1d8a:	08 08                	or     %cl,(%rax)
    1d8c:	2b 08                	sub    (%rax),%ecx
    1d8e:	19 2b                	sbb    %ebp,(%rbx)
    1d90:	08 19                	or     %bl,(%rcx)
    1d92:	08 08                	or     %cl,(%rax)
    1d94:	2b 08                	sub    (%rax),%ecx
    1d96:	19 2b                	sbb    %ebp,(%rbx)
    1d98:	08 08                	or     %cl,(%rax)
    1d9a:	19 08                	sbb    %ecx,(%rax)
    1d9c:	2b 08                	sub    (%rax),%ecx
    1d9e:	19 2b                	sbb    %ebp,(%rbx)
    1da0:	08 08                	or     %cl,(%rax)
    1da2:	08 19                	or     %bl,(%rcx)
    1da4:	2b 08                	sub    (%rax),%ecx
    1da6:	19 2b                	sbb    %ebp,(%rbx)
    1da8:	2b 19                	sub    (%rcx),%ebx
    1daa:	2b 2b                	sub    (%rbx),%ebp
    1dac:	2b 08                	sub    (%rax),%ecx
    1dae:	19 2b                	sbb    %ebp,(%rbx)
    1db0:	08 08                	or     %cl,(%rax)
    1db2:	08 08                	or     %cl,(%rax)
    1db4:	08 19                	or     %bl,(%rcx)
    1db6:	19 2b                	sbb    %ebp,(%rbx)
    1db8:	2b 08                	sub    (%rax),%ecx
    1dba:	08 08                	or     %cl,(%rax)
    1dbc:	08 19                	or     %bl,(%rcx)
    1dbe:	19 2b                	sbb    %ebp,(%rbx)
    1dc0:	19 19                	sbb    %ebx,(%rcx)
    1dc2:	08 08                	or     %cl,(%rax)
    1dc4:	08 19                	or     %bl,(%rcx)
    1dc6:	19 2b                	sbb    %ebp,(%rbx)
    1dc8:	08 2b                	or     %ch,(%rbx)
    1dca:	08 08                	or     %cl,(%rax)
    1dcc:	08 19                	or     %bl,(%rcx)
    1dce:	19 2b                	sbb    %ebp,(%rbx)
    1dd0:	19 08                	sbb    %ecx,(%rax)
    1dd2:	19 08                	sbb    %ecx,(%rax)
    1dd4:	08 19                	or     %bl,(%rcx)
    1dd6:	19 2b                	sbb    %ebp,(%rbx)
    1dd8:	08 19                	or     %bl,(%rcx)
    1dda:	19 08                	sbb    %ecx,(%rax)
    1ddc:	08 19                	or     %bl,(%rcx)
    1dde:	19 2b                	sbb    %ebp,(%rbx)
    1de0:	08 08                	or     %cl,(%rax)
    1de2:	2b 08                	sub    (%rax),%ecx
    1de4:	08 19                	or     %bl,(%rcx)
    1de6:	19 2b                	sbb    %ebp,(%rbx)
    1de8:	19 08                	sbb    %ecx,(%rax)
    1dea:	08 19                	or     %bl,(%rcx)
    1dec:	08 19                	or     %bl,(%rcx)
    1dee:	19 2b                	sbb    %ebp,(%rbx)
    1df0:	08 19                	or     %bl,(%rcx)
    1df2:	08 19                	or     %bl,(%rcx)
    1df4:	08 19                	or     %bl,(%rcx)
    1df6:	19 2b                	sbb    %ebp,(%rbx)
    1df8:	08 08                	or     %cl,(%rax)
    1dfa:	19 19                	sbb    %ebx,(%rcx)
    1dfc:	08 19                	or     %bl,(%rcx)
    1dfe:	19 2b                	sbb    %ebp,(%rbx)
    1e00:	08 08                	or     %cl,(%rax)
    1e02:	08 2b                	or     %ch,(%rbx)
    1e04:	08 19                	or     %bl,(%rcx)
    1e06:	19 2b                	sbb    %ebp,(%rbx)
    1e08:	2b 19                	sub    (%rcx),%ebx
    1e0a:	19 2b                	sbb    %ebp,(%rbx)
    1e0c:	08 19                	or     %bl,(%rcx)
    1e0e:	19 2b                	sbb    %ebp,(%rbx)
    1e10:	19 08                	sbb    %ecx,(%rax)
    1e12:	08 08                	or     %cl,(%rax)
    1e14:	19 19                	sbb    %ebx,(%rcx)
    1e16:	19 2b                	sbb    %ebp,(%rbx)
    1e18:	08 19                	or     %bl,(%rcx)
    1e1a:	08 08                	or     %cl,(%rax)
    1e1c:	19 19                	sbb    %ebx,(%rcx)
    1e1e:	19 2b                	sbb    %ebp,(%rbx)
    1e20:	08 08                	or     %cl,(%rax)
    1e22:	19 08                	sbb    %ecx,(%rax)
    1e24:	19 19                	sbb    %ebx,(%rcx)
    1e26:	19 2b                	sbb    %ebp,(%rbx)
    1e28:	08 08                	or     %cl,(%rax)
    1e2a:	08 19                	or     %bl,(%rcx)
    1e2c:	19 19                	sbb    %ebx,(%rcx)
    1e2e:	19 2b                	sbb    %ebp,(%rbx)
    1e30:	08 2b                	or     %ch,(%rbx)
    1e32:	19 2b                	sbb    %ebp,(%rbx)
    1e34:	19 19                	sbb    %ebx,(%rcx)
    1e36:	19 2b                	sbb    %ebp,(%rbx)
    1e38:	19 08                	sbb    %ecx,(%rax)
    1e3a:	2b 2b                	sub    (%rbx),%ebp
    1e3c:	19 19                	sbb    %ebx,(%rcx)
    1e3e:	19 2b                	sbb    %ebp,(%rbx)
    1e40:	08 08                	or     %cl,(%rax)
    1e42:	08 08                	or     %cl,(%rax)
    1e44:	2b 19                	sub    (%rcx),%ebx
    1e46:	19 2b                	sbb    %ebp,(%rbx)
    1e48:	2b 19                	sub    (%rcx),%ebx
    1e4a:	08 19                	or     %bl,(%rcx)
    1e4c:	2b 19                	sub    (%rcx),%ebx
    1e4e:	19 2b                	sbb    %ebp,(%rbx)
    1e50:	08 19                	or     %bl,(%rcx)
    1e52:	2b 19                	sub    (%rcx),%ebx
    1e54:	2b 19                	sub    (%rcx),%ebx
    1e56:	19 2b                	sbb    %ebp,(%rbx)
    1e58:	19 08                	sbb    %ecx,(%rax)
    1e5a:	08 08                	or     %cl,(%rax)
    1e5c:	08 2b                	or     %ch,(%rbx)
    1e5e:	19 2b                	sbb    %ebp,(%rbx)
    1e60:	08 19                	or     %bl,(%rcx)
    1e62:	08 08                	or     %cl,(%rax)
    1e64:	08 2b                	or     %ch,(%rbx)
    1e66:	19 2b                	sbb    %ebp,(%rbx)
    1e68:	08 08                	or     %cl,(%rax)
    1e6a:	19 08                	sbb    %ecx,(%rax)
    1e6c:	08 2b                	or     %ch,(%rbx)
    1e6e:	19 2b                	sbb    %ebp,(%rbx)
    1e70:	2b 19                	sub    (%rcx),%ebx
    1e72:	2b 08                	sub    (%rax),%ecx
    1e74:	08 2b                	or     %ch,(%rbx)
    1e76:	19 2b                	sbb    %ebp,(%rbx)
    1e78:	08 08                	or     %cl,(%rax)
    1e7a:	08 19                	or     %bl,(%rcx)
    1e7c:	08 2b                	or     %ch,(%rbx)
    1e7e:	19 2b                	sbb    %ebp,(%rbx)
    1e80:	19 2b                	sbb    %ebp,(%rbx)
    1e82:	2b 2b                	sub    (%rbx),%ebp
    1e84:	08 2b                	or     %ch,(%rbx)
    1e86:	19 2b                	sbb    %ebp,(%rbx)
    1e88:	08 08                	or     %cl,(%rax)
    1e8a:	08 08                	or     %cl,(%rax)
    1e8c:	19 2b                	sbb    %ebp,(%rbx)
    1e8e:	19 2b                	sbb    %ebp,(%rbx)
    1e90:	19 2b                	sbb    %ebp,(%rbx)
    1e92:	08 19                	or     %bl,(%rcx)
    1e94:	19 2b                	sbb    %ebp,(%rbx)
    1e96:	19 2b                	sbb    %ebp,(%rbx)
    1e98:	2b 08                	sub    (%rax),%ecx
    1e9a:	19 19                	sbb    %ebx,(%rcx)
    1e9c:	19 2b                	sbb    %ebp,(%rbx)
    1e9e:	19 2b                	sbb    %ebp,(%rbx)
    1ea0:	08 08                	or     %cl,(%rax)
    1ea2:	19 2b                	sbb    %ebp,(%rbx)
    1ea4:	2b 2b                	sub    (%rbx),%ebp
    1ea6:	19 2b                	sbb    %ebp,(%rbx)
    1ea8:	08 08                	or     %cl,(%rax)
    1eaa:	08 08                	or     %cl,(%rax)
    1eac:	08 08                	or     %cl,(%rax)
    1eae:	2b 2b                	sub    (%rbx),%ebp
    1eb0:	19 19                	sbb    %ebx,(%rcx)
    1eb2:	08 08                	or     %cl,(%rax)
    1eb4:	08 08                	or     %cl,(%rax)
    1eb6:	2b 2b                	sub    (%rbx),%ebp
    1eb8:	2b 2b                	sub    (%rbx),%ebp
    1eba:	08 08                	or     %cl,(%rax)
    1ebc:	08 08                	or     %cl,(%rax)
    1ebe:	2b 2b                	sub    (%rbx),%ebp
    1ec0:	08 19                	or     %bl,(%rcx)
    1ec2:	19 08                	sbb    %ecx,(%rax)
    1ec4:	08 08                	or     %cl,(%rax)
    1ec6:	2b 2b                	sub    (%rbx),%ebp
    1ec8:	2b 08                	sub    (%rax),%ecx
    1eca:	2b 08                	sub    (%rax),%ecx
    1ecc:	08 08                	or     %cl,(%rax)
    1ece:	2b 2b                	sub    (%rbx),%ebp
    1ed0:	2b 2b                	sub    (%rbx),%ebp
    1ed2:	2b 08                	sub    (%rax),%ecx
    1ed4:	08 08                	or     %cl,(%rax)
    1ed6:	2b 2b                	sub    (%rbx),%ebp
    1ed8:	19 08                	sbb    %ecx,(%rax)
    1eda:	08 19                	or     %bl,(%rcx)
    1edc:	08 08                	or     %cl,(%rax)
    1ede:	2b 2b                	sub    (%rbx),%ebp
    1ee0:	08 19                	or     %bl,(%rcx)
    1ee2:	08 19                	or     %bl,(%rcx)
    1ee4:	08 08                	or     %cl,(%rax)
    1ee6:	2b 2b                	sub    (%rbx),%ebp
    1ee8:	08 08                	or     %cl,(%rax)
    1eea:	19 19                	sbb    %ebx,(%rcx)
    1eec:	08 08                	or     %cl,(%rax)
    1eee:	2b 2b                	sub    (%rbx),%ebp
    1ef0:	2b 08                	sub    (%rax),%ecx
    1ef2:	2b 2b                	sub    (%rbx),%ebp
    1ef4:	08 08                	or     %cl,(%rax)
    1ef6:	2b 2b                	sub    (%rbx),%ebp
    1ef8:	2b 2b                	sub    (%rbx),%ebp
    1efa:	2b 2b                	sub    (%rbx),%ebp
    1efc:	08 08                	or     %cl,(%rax)
    1efe:	2b 2b                	sub    (%rbx),%ebp
    1f00:	08 08                	or     %cl,(%rax)
    1f02:	08 19                	or     %bl,(%rcx)
    1f04:	19 08                	sbb    %ecx,(%rax)
    1f06:	2b 2b                	sub    (%rbx),%ebp
    1f08:	19 19                	sbb    %ebx,(%rcx)
    1f0a:	2b 19                	sub    (%rcx),%ebx
    1f0c:	19 08                	sbb    %ecx,(%rax)
    1f0e:	2b 2b                	sub    (%rbx),%ebp
    1f10:	2b 08                	sub    (%rax),%ecx
    1f12:	08 08                	or     %cl,(%rax)
    1f14:	2b 08                	sub    (%rax),%ecx
    1f16:	2b 2b                	sub    (%rbx),%ebp
    1f18:	2b 2b                	sub    (%rbx),%ebp
    1f1a:	08 08                	or     %cl,(%rax)
    1f1c:	2b 08                	sub    (%rax),%ecx
    1f1e:	2b 2b                	sub    (%rbx),%ebp
    1f20:	2b 08                	sub    (%rax),%ecx
    1f22:	2b 08                	sub    (%rax),%ecx
    1f24:	2b 08                	sub    (%rax),%ecx
    1f26:	2b 2b                	sub    (%rbx),%ebp
    1f28:	08 2b                	or     %ch,(%rbx)
    1f2a:	2b 08                	sub    (%rax),%ecx
    1f2c:	2b 08                	sub    (%rax),%ecx
    1f2e:	2b 2b                	sub    (%rbx),%ebp
    1f30:	2b 2b                	sub    (%rbx),%ebp
    1f32:	2b 08                	sub    (%rax),%ecx
    1f34:	2b 08                	sub    (%rax),%ecx
    1f36:	2b 2b                	sub    (%rbx),%ebp
    1f38:	2b 08                	sub    (%rax),%ecx
    1f3a:	08 2b                	or     %ch,(%rbx)
    1f3c:	2b 08                	sub    (%rax),%ecx
    1f3e:	2b 2b                	sub    (%rbx),%ebp
    1f40:	08 2b                	or     %ch,(%rbx)
    1f42:	08 2b                	or     %ch,(%rbx)
    1f44:	2b 08                	sub    (%rax),%ecx
    1f46:	2b 2b                	sub    (%rbx),%ebp
    1f48:	2b 2b                	sub    (%rbx),%ebp
    1f4a:	08 2b                	or     %ch,(%rbx)
    1f4c:	2b 08                	sub    (%rax),%ecx
    1f4e:	2b 2b                	sub    (%rbx),%ebp
    1f50:	08 2b                	or     %ch,(%rbx)
    1f52:	2b 2b                	sub    (%rbx),%ebp
    1f54:	2b 08                	sub    (%rax),%ecx
    1f56:	2b 2b                	sub    (%rbx),%ebp
    1f58:	19 08                	sbb    %ecx,(%rax)
    1f5a:	08 08                	or     %cl,(%rax)
    1f5c:	08 19                	or     %bl,(%rcx)
    1f5e:	2b 2b                	sub    (%rbx),%ebp
    1f60:	08 19                	or     %bl,(%rcx)
    1f62:	08 08                	or     %cl,(%rax)
    1f64:	08 19                	or     %bl,(%rcx)
    1f66:	2b 2b                	sub    (%rbx),%ebp
    1f68:	08 08                	or     %cl,(%rax)
    1f6a:	19 08                	sbb    %ecx,(%rax)
    1f6c:	08 19                	or     %bl,(%rcx)
    1f6e:	2b 2b                	sub    (%rbx),%ebp
    1f70:	08 08                	or     %cl,(%rax)
    1f72:	08 19                	or     %bl,(%rcx)
    1f74:	08 19                	or     %bl,(%rcx)
    1f76:	2b 2b                	sub    (%rbx),%ebp
    1f78:	19 2b                	sbb    %ebp,(%rbx)
    1f7a:	08 2b                	or     %ch,(%rbx)
    1f7c:	08 19                	or     %bl,(%rcx)
    1f7e:	2b 2b                	sub    (%rbx),%ebp
    1f80:	08 19                	or     %bl,(%rcx)
    1f82:	2b 2b                	sub    (%rbx),%ebp
    1f84:	08 19                	or     %bl,(%rcx)
    1f86:	2b 2b                	sub    (%rbx),%ebp
    1f88:	08 08                	or     %cl,(%rax)
    1f8a:	08 08                	or     %cl,(%rax)
    1f8c:	19 19                	sbb    %ebx,(%rcx)
    1f8e:	2b 2b                	sub    (%rbx),%ebp
    1f90:	19 2b                	sbb    %ebp,(%rbx)
    1f92:	19 08                	sbb    %ecx,(%rax)
    1f94:	19 19                	sbb    %ebx,(%rcx)
    1f96:	2b 2b                	sub    (%rbx),%ebp
    1f98:	19 08                	sbb    %ecx,(%rax)
    1f9a:	19 19                	sbb    %ebx,(%rcx)
    1f9c:	2b 19                	sub    (%rcx),%ebx
    1f9e:	2b 2b                	sub    (%rbx),%ebp
    1fa0:	2b 2b                	sub    (%rbx),%ebp
    1fa2:	08 08                	or     %cl,(%rax)
    1fa4:	08 2b                	or     %ch,(%rbx)
    1fa6:	2b 2b                	sub    (%rbx),%ebp
    1fa8:	08 2b                	or     %ch,(%rbx)
    1faa:	2b 08                	sub    (%rax),%ecx
    1fac:	08 2b                	or     %ch,(%rbx)
    1fae:	2b 2b                	sub    (%rbx),%ebp
    1fb0:	2b 08                	sub    (%rax),%ecx
    1fb2:	2b 2b                	sub    (%rbx),%ebp
    1fb4:	08 2b                	or     %ch,(%rbx)
    1fb6:	2b 2b                	sub    (%rbx),%ebp
    1fb8:	08 19                	or     %bl,(%rcx)
    1fba:	19 19                	sbb    %ebx,(%rcx)
    1fbc:	19 2b                	sbb    %ebp,(%rbx)
    1fbe:	2b 2b                	sub    (%rbx),%ebp
    1fc0:	2b 19                	sub    (%rcx),%ebx
    1fc2:	08 2b                	or     %ch,(%rbx)
    1fc4:	19 2b                	sbb    %ebp,(%rbx)
    1fc6:	2b 2b                	sub    (%rbx),%ebp
    1fc8:	08 2b                	or     %ch,(%rbx)
    1fca:	08 08                	or     %cl,(%rax)
    1fcc:	2b 2b                	sub    (%rbx),%ebp
    1fce:	2b 2b                	sub    (%rbx),%ebp
    1fd0:	2b 2b                	sub    (%rbx),%ebp
    1fd2:	08 08                	or     %cl,(%rax)
    1fd4:	2b 2b                	sub    (%rbx),%ebp
    1fd6:	2b 2b                	sub    (%rbx),%ebp
    1fd8:	08 08                	or     %cl,(%rax)
    1fda:	2b 08                	sub    (%rax),%ecx
    1fdc:	2b 2b                	sub    (%rbx),%ebp
    1fde:	2b 2b                	sub    (%rbx),%ebp
    1fe0:	2b 08                	sub    (%rax),%ecx
    1fe2:	2b 08                	sub    (%rax),%ecx
    1fe4:	2b 2b                	sub    (%rbx),%ebp
    1fe6:	2b 2b                	sub    (%rbx),%ebp
    1fe8:	08 2b                	or     %ch,(%rbx)
    1fea:	2b 08                	sub    (%rax),%ecx
    1fec:	2b 2b                	sub    (%rbx),%ebp
    1fee:	2b 2b                	sub    (%rbx),%ebp
    1ff0:	08 2b                	or     %ch,(%rbx)
    1ff2:	08 2b                	or     %ch,(%rbx)
    1ff4:	2b 2b                	sub    (%rbx),%ebp
    1ff6:	2b 2b                	sub    (%rbx),%ebp
    1ff8:	2b 2b                	sub    (%rbx),%ebp
    1ffa:	2b 2b                	sub    (%rbx),%ebp
    1ffc:	2b 2b                	sub    (%rbx),%ebp
    1ffe:	2b 2b                	sub    (%rbx),%ebp

0000000000002000 <?iq3s_grid@@3QBIB>:
    2000:	01 01                	add    %eax,(%rcx)
    2002:	01 01                	add    %eax,(%rcx)
    2004:	03 01                	add    (%rcx),%eax
    2006:	01 01                	add    %eax,(%rcx)
    2008:	05 01 01 01 0b       	add    $0xb010101,%eax
    200d:	01 01                	add    %eax,(%rcx)
    200f:	01 0f                	add    %ecx,(%rdi)
    2011:	01 01                	add    %eax,(%rcx)
    2013:	01 01                	add    %eax,(%rcx)
    2015:	03 01                	add    (%rcx),%eax
    2017:	01 03                	add    %eax,(%rbx)
    2019:	03 01                	add    (%rcx),%eax
    201b:	01 05 03 01 01 09    	add    %eax,0x9010103(%rip)        # 9012124 <@comp.id+0x7fb978c>
    2021:	03 01                	add    (%rcx),%eax
    2023:	01 0d 03 01 01 01    	add    %ecx,0x1010103(%rip)        # 101212c <?kvalues_iq4nl@@3QBCB+0x100f92c>
    2029:	05 01 01 03 05       	add    $0x5030101,%eax
    202e:	01 01                	add    %eax,(%rcx)
    2030:	0b 05 01 01 07 07    	or     0x7070101(%rip),%eax        # 7072137 <@comp.id+0x601979f>
    2036:	01 01                	add    %eax,(%rcx)
    2038:	01 09                	add    %ecx,(%rcx)
    203a:	01 01                	add    %eax,(%rcx)
    203c:	05 09 01 01 0b       	add    $0xb010109,%eax
    2041:	09 01                	or     %eax,(%rcx)
    2043:	01 0f                	add    %ecx,(%rdi)
    2045:	09 01                	or     %eax,(%rcx)
    2047:	01 03                	add    %eax,(%rbx)
    2049:	0b 01                	or     (%rcx),%eax
    204b:	01 07                	add    %eax,(%rdi)
    204d:	0b 01                	or     (%rcx),%eax
    204f:	01 01                	add    %eax,(%rcx)
    2051:	0d 01 01 05 0d       	or     $0xd050101,%eax
    2056:	01 01                	add    %eax,(%rcx)
    2058:	03 0f                	add    (%rdi),%ecx
    205a:	01 01                	add    %eax,(%rcx)
    205c:	09 0f                	or     %ecx,(%rdi)
    205e:	01 01                	add    %eax,(%rcx)
    2060:	0f                   	(bad)
    2061:	0f 01 01             	sgdt   (%rcx)
    2064:	01 01                	add    %eax,(%rcx)
    2066:	03 01                	add    (%rcx),%eax
    2068:	03 01                	add    (%rcx),%eax
    206a:	03 01                	add    (%rcx),%eax
    206c:	05 01 03 01 09       	add    $0x9010301,%eax
    2071:	01 03                	add    %eax,(%rbx)
    2073:	01 01                	add    %eax,(%rcx)
    2075:	03 03                	add    (%rbx),%eax
    2077:	01 03                	add    %eax,(%rbx)
    2079:	03 03                	add    (%rbx),%eax
    207b:	01 0b                	add    %ecx,(%rbx)
    207d:	03 03                	add    (%rbx),%eax
    207f:	01 01                	add    %eax,(%rcx)
    2081:	05 03 01 07 05       	add    $0x5070103,%eax
    2086:	03 01                	add    (%rcx),%eax
    2088:	0f 05                	syscall
    208a:	03 01                	add    (%rcx),%eax
    208c:	03 07                	add    (%rdi),%eax
    208e:	03 01                	add    (%rcx),%eax
    2090:	0b 07                	or     (%rdi),%eax
    2092:	03 01                	add    (%rcx),%eax
    2094:	09 09                	or     %ecx,(%rcx)
    2096:	03 01                	add    (%rcx),%eax
    2098:	03 0d 03 01 0b 0d    	add    0xd0b0103(%rip),%ecx        # d0b21a1 <@comp.id+0xc059809>
    209e:	03 01                	add    (%rcx),%eax
    20a0:	05 0f 03 01 01       	add    $0x101030f,%eax
    20a5:	01 05 01 03 01 05    	add    %eax,0x5010301(%rip)        # 50123ac <@comp.id+0x3fb9a14>
    20ab:	01 0b                	add    %ecx,(%rbx)
    20ad:	01 05 01 0f 01 05    	add    %eax,0x5010f01(%rip)        # 5012fb4 <@comp.id+0x3fba61c>
    20b3:	01 01                	add    %eax,(%rcx)
    20b5:	03 05 01 07 03 05    	add    0x5030701(%rip),%eax        # 50327bc <@comp.id+0x3fd9e24>
    20bb:	01 0d 03 05 01 03    	add    %ecx,0x3010503(%rip)        # 30125c4 <@comp.id+0x1fb9c2c>
    20c1:	05 05 01 0b 05       	add    $0x50b0105,%eax
    20c6:	05 01 01 07 05       	add    $0x5070101,%eax
    20cb:	01 09                	add    %ecx,(%rcx)
    20cd:	07                   	(bad)
    20ce:	05 01 05 09 05       	add    $0x5090501,%eax
    20d3:	01 0b                	add    %ecx,(%rbx)
    20d5:	09 05 01 0f 09 05    	or     %eax,0x5090f01(%rip)        # 5092fdc <@comp.id+0x403a644>
    20db:	01 03                	add    %eax,(%rbx)
    20dd:	0b 05 01 07 0b 05    	or     0x50b0701(%rip),%eax        # 50b27e4 <@comp.id+0x4059e4c>
    20e3:	01 01                	add    %eax,(%rcx)
    20e5:	0f 05                	syscall
    20e7:	01 07                	add    %eax,(%rdi)
    20e9:	0f 05                	syscall
    20eb:	01 07                	add    %eax,(%rdi)
    20ed:	01 07                	add    %eax,(%rdi)
    20ef:	01 03                	add    %eax,(%rbx)
    20f1:	03 07                	add    (%rdi),%eax
    20f3:	01 0b                	add    %ecx,(%rbx)
    20f5:	03 07                	add    (%rdi),%eax
    20f7:	01 01                	add    %eax,(%rcx)
    20f9:	05 07 01 05 05       	add    $0x5050107,%eax
    20fe:	07                   	(bad)
    20ff:	01 03                	add    %eax,(%rbx)
    2101:	07                   	(bad)
    2102:	07                   	(bad)
    2103:	01 07                	add    %eax,(%rdi)
    2105:	07                   	(bad)
    2106:	07                   	(bad)
    2107:	01 0d 07 07 01 09    	add    %ecx,0x9010707(%rip)        # 9012814 <@comp.id+0x7fb9e7c>
    210d:	09 07                	or     %eax,(%rdi)
    210f:	01 01                	add    %eax,(%rcx)
    2111:	0b 07                	or     (%rdi),%eax
    2113:	01 05 0b 07 01 0f    	add    %eax,0xf01070b(%rip)        # f012824 <@comp.id+0xdfb9e8c>
    2119:	0d 07 01 03 0f       	or     $0xf030107,%eax
    211e:	07                   	(bad)
    211f:	01 0b                	add    %ecx,(%rbx)
    2121:	0f 07                	sysretl
    2123:	01 01                	add    %eax,(%rcx)
    2125:	01 09                	add    %ecx,(%rcx)
    2127:	01 07                	add    %eax,(%rdi)
    2129:	03 09                	add    (%rcx),%ecx
    212b:	01 0f                	add    %ecx,(%rdi)
    212d:	03 09                	add    (%rcx),%ecx
    212f:	01 03                	add    %eax,(%rbx)
    2131:	05 09 01 09 05       	add    $0x5090109,%eax
    2136:	09 01                	or     %eax,(%rcx)
    2138:	05 07 09 01 01       	add    $0x1010907,%eax
    213d:	09 09                	or     %ecx,(%rcx)
    213f:	01 07                	add    %eax,(%rdi)
    2141:	09 09                	or     %ecx,(%rcx)
    2143:	01 03                	add    %eax,(%rbx)
    2145:	0b 09                	or     (%rcx),%ecx
    2147:	01 01                	add    %eax,(%rcx)
    2149:	0f 09                	wbinvd
    214b:	01 05 01 0b 01 09    	add    %eax,0x9010b01(%rip)        # 9012c52 <@comp.id+0x7fba2ba>
    2151:	01 0b                	add    %ecx,(%rbx)
    2153:	01 01                	add    %eax,(%rcx)
    2155:	05 0b 01 05 05       	add    $0x505010b,%eax
    215a:	0b 01                	or     (%rcx),%eax
    215c:	0d 05 0b 01 07       	or     $0x7010b05,%eax
    2161:	07                   	(bad)
    2162:	0b 01                	or     (%rcx),%eax
    2164:	03 09                	add    (%rcx),%ecx
    2166:	0b 01                	or     (%rcx),%eax
    2168:	0b 09                	or     (%rcx),%ecx
    216a:	0b 01                	or     (%rcx),%eax
    216c:	0f 09                	wbinvd
    216e:	0b 01                	or     (%rcx),%eax
    2170:	0d 0d 0b 01 07       	or     $0x7010b0d,%eax
    2175:	0f 0b                	ud2
    2177:	01 0d 01 0d 01 03    	add    %ecx,0x3010d01(%rip)        # 3012e7e <@comp.id+0x1fba4e6>
    217d:	03 0d 01 07 03 0d    	add    0xd030701(%rip),%ecx        # d032884 <@comp.id+0xbfd9eec>
    2183:	01 03                	add    %eax,(%rbx)
    2185:	07                   	(bad)
    2186:	0d 01 05 0b 0d       	or     $0xd0b0501,%eax
    218b:	01 03                	add    %eax,(%rbx)
    218d:	0f 0d 01             	prefetch (%rcx)
    2190:	01 01                	add    %eax,(%rcx)
    2192:	0f 01 05 01 0f 01 09 	sgdt   0x9010f01(%rip)        # 901309a <@comp.id+0x7fba702>
    2199:	01 0f                	add    %ecx,(%rdi)
    219b:	01 01                	add    %eax,(%rcx)
    219d:	05 0f 01 05 05       	add    $0x505010f,%eax
    21a2:	0f 01 0d 05 0f 01 07 	sidt   0x7010f05(%rip)        # 70130ae <@comp.id+0x5fba716>
    21a9:	07                   	(bad)
    21aa:	0f 01 01             	sgdt   (%rcx)
    21ad:	0b 0f                	or     (%rdi),%ecx
    21af:	01 09                	add    %ecx,(%rcx)
    21b1:	0b 0f                	or     (%rdi),%ecx
    21b3:	01 01                	add    %eax,(%rcx)
    21b5:	01 01                	add    %eax,(%rcx)
    21b7:	03 03                	add    (%rbx),%eax
    21b9:	01 01                	add    %eax,(%rcx)
    21bb:	03 05 01 01 03 09    	add    0x9030101(%rip),%eax        # 90322c2 <@comp.id+0x7fd992a>
    21c1:	01 01                	add    %eax,(%rcx)
    21c3:	03 01                	add    (%rcx),%eax
    21c5:	03 01                	add    (%rcx),%eax
    21c7:	03 03                	add    (%rbx),%eax
    21c9:	03 01                	add    (%rcx),%eax
    21cb:	03 07                	add    (%rdi),%eax
    21cd:	03 01                	add    (%rcx),%eax
    21cf:	03 0b                	add    (%rbx),%ecx
    21d1:	03 01                	add    (%rcx),%eax
    21d3:	03 0f                	add    (%rdi),%ecx
    21d5:	03 01                	add    (%rcx),%eax
    21d7:	03 01                	add    (%rcx),%eax
    21d9:	05 01 03 05 05       	add    $0x5050301,%eax
    21de:	01 03                	add    %eax,(%rbx)
    21e0:	03 07                	add    (%rdi),%eax
    21e2:	01 03                	add    %eax,(%rbx)
    21e4:	09 07                	or     %eax,(%rdi)
    21e6:	01 03                	add    %eax,(%rbx)
    21e8:	0d 07 01 03 09       	or     $0x9030107,%eax
    21ed:	0b 01                	or     (%rcx),%eax
    21ef:	03 0d 0b 01 03 03    	add    0x303010b(%rip),%ecx        # 3032300 <@comp.id+0x1fd9968>
    21f5:	0d 01 03 05 0f       	or     $0xf050301,%eax
    21fa:	01 03                	add    %eax,(%rbx)
    21fc:	01 01                	add    %eax,(%rcx)
    21fe:	03 03                	add    (%rbx),%eax
    2200:	03 01                	add    (%rcx),%eax
    2202:	03 03                	add    (%rbx),%eax
    2204:	07                   	(bad)
    2205:	01 03                	add    %eax,(%rbx)
    2207:	03 0d 01 03 03 01    	add    0x1030301(%rip),%ecx        # 103250e <?kvalues_iq4nl@@3QBCB+0x102fd0e>
    220d:	03 03                	add    (%rbx),%eax
    220f:	03 09                	add    (%rcx),%ecx
    2211:	03 03                	add    (%rbx),%eax
    2213:	03 03                	add    (%rbx),%eax
    2215:	05 03 03 01 07       	add    $0x7010303,%eax
    221a:	03 03                	add    (%rbx),%eax
    221c:	07                   	(bad)
    221d:	07                   	(bad)
    221e:	03 03                	add    (%rbx),%eax
    2220:	03 09                	add    (%rcx),%ecx
    2222:	03 03                	add    (%rbx),%eax
    2224:	01 0b                	add    %ecx,(%rbx)
    2226:	03 03                	add    (%rbx),%eax
    2228:	05 0b 03 03 01       	add    $0x103030b,%eax
    222d:	0f 03 03             	lsl    (%rbx),%eax
    2230:	0d 0f 03 03 01       	or     $0x103030f,%eax
    2235:	01 05 03 05 03 05    	add    %eax,0x5030503(%rip)        # 503273e <@comp.id+0x3fd9da6>
    223b:	03 0b                	add    (%rbx),%ecx
    223d:	03 05 03 0f 03 05    	add    0x5030f03(%rip),%eax        # 5033146 <@comp.id+0x3fda7ae>
    2243:	03 01                	add    (%rcx),%eax
    2245:	05 05 03 09 05       	add    $0x5090305,%eax
    224a:	05 03 05 07 05       	add    $0x5070503,%eax
    224f:	03 01                	add    (%rcx),%eax
    2251:	09 05 03 07 09 05    	or     %eax,0x5090703(%rip)        # 509295a <@comp.id+0x4039fc2>
    2257:	03 0b                	add    (%rbx),%ecx
    2259:	0b 05 03 01 0d 05    	or     0x50d0103(%rip),%eax        # 50d2362 <@comp.id+0x40799ca>
    225f:	03 05 0f 05 03 03    	add    0x303050f(%rip),%eax        # 3032774 <@comp.id+0x1fd9ddc>
    2265:	01 07                	add    %eax,(%rdi)
    2267:	03 09                	add    (%rcx),%ecx
    2269:	01 07                	add    %eax,(%rdi)
    226b:	03 0f                	add    (%rdi),%ecx
    226d:	01 07                	add    %eax,(%rdi)
    226f:	03 01                	add    (%rcx),%eax
    2271:	03 07                	add    (%rdi),%eax
    2273:	03 07                	add    (%rdi),%eax
    2275:	03 07                	add    (%rdi),%eax
    2277:	03 03                	add    (%rbx),%eax
    2279:	05 07 03 0f 05       	add    $0x50f0307,%eax
    227e:	07                   	(bad)
    227f:	03 01                	add    (%rcx),%eax
    2281:	07                   	(bad)
    2282:	07                   	(bad)
    2283:	03 09                	add    (%rcx),%ecx
    2285:	07                   	(bad)
    2286:	07                   	(bad)
    2287:	03 03                	add    (%rbx),%eax
    2289:	09 07                	or     %eax,(%rdi)
    228b:	03 05 0d 07 03 01    	add    0x103070d(%rip),%eax        # 103299e <?kvalues_iq4nl@@3QBCB+0x103019e>
    2291:	0f 07                	sysretl
    2293:	03 07                	add    (%rdi),%eax
    2295:	01 09                	add    %ecx,(%rcx)
    2297:	03 0b                	add    (%rbx),%ecx
    2299:	01 09                	add    %ecx,(%rcx)
    229b:	03 05 03 09 03 09    	add    0x9030903(%rip),%eax        # 9032ba4 <@comp.id+0x7fda20c>
    22a1:	03 09                	add    (%rcx),%ecx
    22a3:	03 03                	add    (%rbx),%eax
    22a5:	07                   	(bad)
    22a6:	09 03                	or     %eax,(%rbx)
    22a8:	07                   	(bad)
    22a9:	07                   	(bad)
    22aa:	09 03                	or     %eax,(%rbx)
    22ac:	05 09 09 03 0d       	add    $0xd030909,%eax
    22b1:	09 09                	or     %ecx,(%rcx)
    22b3:	03 01                	add    (%rcx),%eax
    22b5:	0b 09                	or     (%rcx),%ecx
    22b7:	03 09                	add    (%rcx),%ecx
    22b9:	0b 09                	or     (%rcx),%ecx
    22bb:	03 03                	add    (%rbx),%eax
    22bd:	01 0b                	add    %ecx,(%rbx)
    22bf:	03 01                	add    (%rcx),%eax
    22c1:	03 0b                	add    (%rbx),%ecx
    22c3:	03 07                	add    (%rdi),%eax
    22c5:	03 0b                	add    (%rbx),%ecx
    22c7:	03 03                	add    (%rbx),%eax
    22c9:	05 0b 03 01 07       	add    $0x701030b,%eax
    22ce:	0b 03                	or     (%rbx),%eax
    22d0:	05 07 0b 03 03       	add    $0x3030b07,%eax
    22d5:	0b 0b                	or     (%rbx),%ecx
    22d7:	03 01                	add    (%rcx),%eax
    22d9:	05 0d 03 09 05       	add    $0x509030d,%eax
    22de:	0d 03 0f 05 0d       	or     $0xd050f03,%eax
    22e3:	03 09                	add    (%rcx),%ecx
    22e5:	09 0d 03 0d 09 0d    	or     %ecx,0xd090d03(%rip)        # d092fee <@comp.id+0xc03a656>
    22eb:	03 03                	add    (%rbx),%eax
    22ed:	01 0f                	add    %ecx,(%rdi)
    22ef:	03 07                	add    (%rdi),%eax
    22f1:	01 0f                	add    %ecx,(%rdi)
    22f3:	03 01                	add    (%rcx),%eax
    22f5:	03 0f                	add    (%rdi),%ecx
    22f7:	03 05 03 0f 03 03    	add    0x3030f03(%rip),%eax        # 3033200 <@comp.id+0x1fda868>
    22fd:	05 0f 03 0b 07       	add    $0x70b030f,%eax
    2302:	0f 03 03             	lsl    (%rbx),%eax
    2305:	09 0f                	or     %ecx,(%rdi)
    2307:	03 05 0d 0f 03 01    	add    0x1030f0d(%rip),%eax        # 103321a <?kvalues_iq4nl@@3QBCB+0x1030a1a>
    230d:	0f                   	(bad)
    230e:	0f 03 01             	lsl    (%rcx),%eax
    2311:	01 01                	add    %eax,(%rcx)
    2313:	05 03 01 01 05       	add    $0x5010103,%eax
    2318:	07                   	(bad)
    2319:	01 01                	add    %eax,(%rcx)
    231b:	05 0b 01 01 05       	add    $0x501010b,%eax
    2320:	0f 01 01             	sgdt   (%rcx)
    2323:	05 01 03 01 05       	add    $0x5010301,%eax
    2328:	05 03 01 05 09       	add    $0x9050103,%eax
    232d:	03 01                	add    (%rcx),%eax
    232f:	05 0d 03 01 05       	add    $0x501030d,%eax
    2334:	03 05 01 05 07 05    	add    0x5070501(%rip),%eax        # 507283b <@comp.id+0x4019ea3>
    233a:	01 05 0f 05 01 05    	add    %eax,0x501050f(%rip)        # 501284f <@comp.id+0x3fb9eb7>
    2340:	01 07                	add    %eax,(%rdi)
    2342:	01 05 05 07 01 05    	add    %eax,0x5010705(%rip)        # 5012a4d <@comp.id+0x3fba0b5>
    2348:	03 09                	add    (%rcx),%ecx
    234a:	01 05 07 09 01 05    	add    %eax,0x5010907(%rip)        # 5012c57 <@comp.id+0x3fba2bf>
    2350:	0b 09                	or     (%rcx),%ecx
    2352:	01 05 01 0b 01 05    	add    %eax,0x5010b01(%rip)        # 5012e59 <@comp.id+0x3fba4c1>
    2358:	05 0b 01 05 0f       	add    $0xf05010b,%eax
    235d:	0d 01 05 01 0f       	or     $0xf010501,%eax
    2362:	01 05 07 0f 01 05    	add    %eax,0x5010f07(%rip)        # 501326f <@comp.id+0x3fba8d7>
    2368:	0b 0f                	or     (%rdi),%ecx
    236a:	01 05 01 01 03 05    	add    %eax,0x5030101(%rip)        # 5032471 <@comp.id+0x3fd9ad9>
    2370:	05 01 03 05 01       	add    $0x1050301,%eax
    2375:	03 03                	add    (%rbx),%eax
    2377:	05 07 03 03 05       	add    $0x5030307,%eax
    237c:	0f 03 03             	lsl    (%rbx),%eax
    237f:	05 05 05 03 05       	add    $0x5030505,%eax
    2384:	0b 05 03 05 03 07    	or     0x7030503(%rip),%eax        # 703288d <@comp.id+0x5fd9ef5>
    238a:	03 05 09 07 03 05    	add    0x5030709(%rip),%eax        # 5032a99 <@comp.id+0x3fda101>
    2390:	05 09 03 05 03       	add    $0x3050309,%eax
    2395:	0b 03                	or     (%rbx),%eax
    2397:	05 03 01 05 05       	add    $0x5050103,%eax
    239c:	09 01                	or     %eax,(%rcx)
    239e:	05 05 0f 01 05       	add    $0x5010f05,%eax
    23a3:	05 03 05 05 05       	add    $0x5050503,%eax
    23a8:	07                   	(bad)
    23a9:	05 05 05 01 07       	add    $0x7010505,%eax
    23ae:	05 05 0f 07 05       	add    $0x5070f05,%eax
    23b3:	05 03 09 05 05       	add    $0x5050903,%eax
    23b8:	07                   	(bad)
    23b9:	0b 05 05 0f 0b 05    	or     0x50b0f05(%rip),%eax        # 50b32c4 <@comp.id+0x405a92c>
    23bf:	05 03 0f 05 05       	add    $0x5050f03,%eax
    23c4:	09 0f                	or     %ecx,(%rdi)
    23c6:	05 05 01 01 07       	add    $0x7010105,%eax
    23cb:	05 05 01 07 05       	add    $0x5070105,%eax
    23d0:	0b 01                	or     (%rcx),%eax
    23d2:	07                   	(bad)
    23d3:	05 03 03 07 05       	add    $0x5070303,%eax
    23d8:	05 05 07 05 09       	add    $0x9050705,%eax
    23dd:	05 07 05 03 07       	add    $0x7030507,%eax
    23e2:	07                   	(bad)
    23e3:	05 07 07 07 05       	add    $0x5070707,%eax
    23e8:	05 09 07 05 01       	add    $0x1050709,%eax
    23ed:	0b 07                	or     (%rdi),%eax
    23ef:	05 0d 0d 07 05       	add    $0x5070d0d,%eax
    23f4:	03 01                	add    (%rcx),%eax
    23f6:	09 05 0f 01 09 05    	or     %eax,0x509010f(%rip)        # 509250b <@comp.id+0x4039b73>
    23fc:	01 05 09 05 07 05    	add    %eax,0x5070509(%rip)        # 507290b <@comp.id+0x4019f73>
    2402:	09 05 05 07 09 05    	or     %eax,0x5090705(%rip)        # 5092b0d <@comp.id+0x403a175>
    2408:	0b 07                	or     (%rdi),%eax
    240a:	09 05 03 09 09 05    	or     %eax,0x5090903(%rip)        # 5092d13 <@comp.id+0x403a37b>
    2410:	05 0f 09 05 0b       	add    $0xb05090f,%eax
    2415:	0f 09                	wbinvd
    2417:	05 09 01 0b 05       	add    $0x50b0109,%eax
    241c:	03 03                	add    (%rbx),%eax
    241e:	0b 05 05 05 0b 05    	or     0x50b0505(%rip),%eax        # 50b2929 <@comp.id+0x4059f91>
    2424:	0f 07                	sysretl
    2426:	0b 05 01 09 0b 05    	or     0x50b0901(%rip),%eax        # 50b2d2d <@comp.id+0x405a395>
    242c:	07                   	(bad)
    242d:	0b 0b                	or     (%rbx),%ecx
    242f:	05 01 0f 0b 05       	add    $0x50b0f01,%eax
    2434:	01 01                	add    %eax,(%rcx)
    2436:	0d 05 05 01 0d       	or     $0xd010505,%eax
    243b:	05 0f 01 0d 05       	add    $0x50d010f,%eax
    2440:	03 05 0d 05 0b 0b    	add    0xb0b050d(%rip),%eax        # b0b2953 <@comp.id+0xa059fbb>
    2446:	0d 05 03 0d 0d       	or     $0xd0d0305,%eax
    244b:	05 0b 01 0f 05       	add    $0x50f010b,%eax
    2450:	03 03                	add    (%rbx),%eax
    2452:	0f 05                	syscall
    2454:	0d 05 0f 05 01       	or     $0x1050f05,%eax
    2459:	07                   	(bad)
    245a:	0f 05                	syscall
    245c:	07                   	(bad)
    245d:	09 0f                	or     %ecx,(%rdi)
    245f:	05 01 0b 0f 05       	add    $0x50f0b01,%eax
    2464:	05 01 01 07 03       	add    $0x3070101,%eax
    2469:	03 01                	add    (%rcx),%eax
    246b:	07                   	(bad)
    246c:	07                   	(bad)
    246d:	03 01                	add    (%rcx),%eax
    246f:	07                   	(bad)
    2470:	0b 03                	or     (%rbx),%eax
    2472:	01 07                	add    %eax,(%rdi)
    2474:	0f 03 01             	lsl    (%rcx),%eax
    2477:	07                   	(bad)
    2478:	05 05 01 07 03       	add    $0x3070105,%eax
    247d:	07                   	(bad)
    247e:	01 07                	add    %eax,(%rdi)
    2480:	07                   	(bad)
    2481:	07                   	(bad)
    2482:	01 07                	add    %eax,(%rdi)
    2484:	0b 07                	or     (%rdi),%eax
    2486:	01 07                	add    %eax,(%rdi)
    2488:	05 09 01 07 09       	add    $0x9070109,%eax
    248d:	09 01                	or     %eax,(%rcx)
    248f:	07                   	(bad)
    2490:	0f 09                	wbinvd
    2492:	01 07                	add    %eax,(%rdi)
    2494:	03 0b                	add    (%rbx),%ecx
    2496:	01 07                	add    %eax,(%rdi)
    2498:	07                   	(bad)
    2499:	0d 01 07 03 0f       	or     $0xf030701,%eax
    249e:	01 07                	add    %eax,(%rdi)
    24a0:	03 01                	add    (%rcx),%eax
    24a2:	03 07                	add    (%rdi),%eax
    24a4:	07                   	(bad)
    24a5:	01 03                	add    %eax,(%rbx)
    24a7:	07                   	(bad)
    24a8:	0b 01                	or     (%rcx),%eax
    24aa:	03 07                	add    (%rdi),%eax
    24ac:	09 03                	or     %eax,(%rbx)
    24ae:	03 07                	add    (%rdi),%eax
    24b0:	03 05 03 07 07 05    	add    0x5070703(%rip),%eax        # 5072bb9 <@comp.id+0x401a221>
    24b6:	03 07                	add    (%rdi),%eax
    24b8:	01 09                	add    %ecx,(%rcx)
    24ba:	03 07                	add    (%rdi),%eax
    24bc:	01 0d 03 07 05 0f    	add    %ecx,0xf050703(%rip)        # f052bc5 <@comp.id+0xdffa22d>
    24c2:	03 07                	add    (%rdi),%eax
    24c4:	0d 0f 03 07 01       	or     $0x107030f,%eax
    24c9:	01 05 07 05 03 05    	add    %eax,0x5030507(%rip)        # 50329d6 <@comp.id+0x3fda03e>
    24cf:	07                   	(bad)
    24d0:	01 05 05 07 05 07    	add    %eax,0x7050705(%rip)        # 7052bdb <@comp.id+0x5ffa243>
    24d6:	05 07 09 07 05       	add    $0x5070907,%eax
    24db:	07                   	(bad)
    24dc:	01 0b                	add    %ecx,(%rbx)
    24de:	05 07 03 01 07       	add    $0x7010307,%eax
    24e3:	07                   	(bad)
    24e4:	01 03                	add    %eax,(%rbx)
    24e6:	07                   	(bad)
    24e7:	07                   	(bad)
    24e8:	09 03                	or     %eax,(%rbx)
    24ea:	07                   	(bad)
    24eb:	07                   	(bad)
    24ec:	03 05 07 07 07 05    	add    0x5070707(%rip),%eax        # 5072bf9 <@comp.id+0x401a261>
    24f2:	07                   	(bad)
    24f3:	07                   	(bad)
    24f4:	0f 05                	syscall
    24f6:	07                   	(bad)
    24f7:	07                   	(bad)
    24f8:	01 07                	add    %eax,(%rdi)
    24fa:	07                   	(bad)
    24fb:	07                   	(bad)
    24fc:	03 09                	add    (%rcx),%ecx
    24fe:	07                   	(bad)
    24ff:	07                   	(bad)
    2500:	07                   	(bad)
    2501:	09 07                	or     %eax,(%rdi)
    2503:	07                   	(bad)
    2504:	0f 09                	wbinvd
    2506:	07                   	(bad)
    2507:	07                   	(bad)
    2508:	0b 0b                	or     (%rbx),%ecx
    250a:	07                   	(bad)
    250b:	07                   	(bad)
    250c:	07                   	(bad)
    250d:	0f 07                	sysretl
    250f:	07                   	(bad)
    2510:	07                   	(bad)
    2511:	01 09                	add    %ecx,(%rcx)
    2513:	07                   	(bad)
    2514:	03 03                	add    (%rbx),%eax
    2516:	09 07                	or     %eax,(%rdi)
    2518:	0d 03 09 07 05       	or     $0x5070903,%eax
    251d:	05 09 07 03 07       	add    $0x7030709,%eax
    2522:	09 07                	or     %eax,(%rdi)
    2524:	05 0b 09 07 01       	add    $0x107090b,%eax
    2529:	0d 09 07 09 0d       	or     $0xd090709,%eax
    252e:	09 07                	or     %eax,(%rdi)
    2530:	03 01                	add    (%rcx),%eax
    2532:	0b 07                	or     (%rdi),%eax
    2534:	01 03                	add    %eax,(%rbx)
    2536:	0b 07                	or     (%rdi),%eax
    2538:	05 03 0b 07 0b       	add    $0xb070b03,%eax
    253d:	05 0b 07 05 07       	add    $0x705070b,%eax
    2542:	0b 07                	or     (%rdi),%eax
    2544:	09 09                	or     %ecx,(%rcx)
    2546:	0b 07                	or     (%rdi),%eax
    2548:	0d 0b 0b 07 07       	or     $0x7070b0b,%eax
    254d:	0f 0b                	ud2
    254f:	07                   	(bad)
    2550:	0d 03 0d 07 03       	or     $0x3070d03,%eax
    2555:	09 0d 07 03 01 0f    	or     %ecx,0xf010307(%rip)        # f012862 <@comp.id+0xdfb9eca>
    255b:	07                   	(bad)
    255c:	07                   	(bad)
    255d:	01 0f                	add    %ecx,(%rdi)
    255f:	07                   	(bad)
    2560:	01 05 0f 07 05 05    	add    %eax,0x505070f(%rip)        # 5052c75 <@comp.id+0x3ffa2dd>
    2566:	0f 07                	sysretl
    2568:	0b 07                	or     (%rdi),%eax
    256a:	0f 07                	sysretl
    256c:	01 01                	add    %eax,(%rcx)
    256e:	01 09                	add    %ecx,(%rcx)
    2570:	09 01                	or     %eax,(%rcx)
    2572:	01 09                	add    %ecx,(%rcx)
    2574:	05 03 01 09 01       	add    $0x1090103,%eax
    2579:	05 01 09 09 05       	add    $0x5090901,%eax
    257e:	01 09                	add    %ecx,(%rcx)
    2580:	0f 05                	syscall
    2582:	01 09                	add    %ecx,(%rcx)
    2584:	05 07 01 09 03       	add    $0x3090107,%eax
    2589:	09 01                	or     %eax,(%rcx)
    258b:	09 01                	or     %eax,(%rcx)
    258d:	0b 01                	or     (%rcx),%eax
    258f:	09 01                	or     %eax,(%rcx)
    2591:	0f 01 09             	sidt   (%rcx)
    2594:	05 01 03 09 0f       	add    $0xf090301,%eax
    2599:	01 03                	add    %eax,(%rbx)
    259b:	09 03                	or     %eax,(%rbx)
    259d:	03 03                	add    (%rbx),%eax
    259f:	09 07                	or     %eax,(%rdi)
    25a1:	03 03                	add    (%rbx),%eax
    25a3:	09 05 05 03 09 01    	or     %eax,0x1090305(%rip)        # 10928ae <@comp.id+0x39f16>
    25a9:	07                   	(bad)
    25aa:	03 09                	add    (%rcx),%ecx
    25ac:	0b 07                	or     (%rdi),%eax
    25ae:	03 09                	add    (%rcx),%ecx
    25b0:	07                   	(bad)
    25b1:	09 03                	or     %eax,(%rbx)
    25b3:	09 03                	or     %eax,(%rbx)
    25b5:	0b 03                	or     (%rbx),%eax
    25b7:	09 0b                	or     %ecx,(%rbx)
    25b9:	0b 03                	or     (%rbx),%eax
    25bb:	09 03                	or     %eax,(%rbx)
    25bd:	01 05 09 07 01 05    	add    %eax,0x5010709(%rip)        # 5012ccc <@comp.id+0x3fba334>
    25c3:	09 01                	or     %eax,(%rcx)
    25c5:	03 05 09 0b 03 05    	add    0x5030b09(%rip),%eax        # 50330d4 <@comp.id+0x3fda73c>
    25cb:	09 03                	or     %eax,(%rbx)
    25cd:	05 05 09 07 07       	add    $0x7070905,%eax
    25d2:	05 09 01 09 05       	add    $0x5090109,%eax
    25d7:	09 0f                	or     %ecx,(%rdi)
    25d9:	0b 05 09 05 0d 05    	or     0x50d0509(%rip),%eax        # 50d2ae8 <@comp.id+0x407a150>
    25df:	09 01                	or     %eax,(%rcx)
    25e1:	0f 05                	syscall
    25e3:	09 09                	or     %ecx,(%rcx)
    25e5:	01 07                	add    %eax,(%rdi)
    25e7:	09 03                	or     %eax,(%rbx)
    25e9:	03 07                	add    (%rdi),%eax
    25eb:	09 07                	or     %eax,(%rdi)
    25ed:	03 07                	add    (%rdi),%eax
    25ef:	09 01                	or     %eax,(%rcx)
    25f1:	05 07 09 05 05       	add    $0x5050907,%eax
    25f6:	07                   	(bad)
    25f7:	09 03                	or     %eax,(%rbx)
    25f9:	07                   	(bad)
    25fa:	07                   	(bad)
    25fb:	09 0b                	or     %ecx,(%rbx)
    25fd:	07                   	(bad)
    25fe:	07                   	(bad)
    25ff:	09 01                	or     %eax,(%rcx)
    2601:	01 09                	add    %ecx,(%rcx)
    2603:	09 05 01 09 09 09    	or     %eax,0x9090901(%rip)        # 9092f0a <@comp.id+0x803a572>
    2609:	05 09 09 0f 07       	add    $0x70f0909,%eax
    260e:	09 09                	or     %ecx,(%rcx)
    2610:	01 09                	add    %ecx,(%rcx)
    2612:	09 09                	or     %ecx,(%rcx)
    2614:	03 0f                	add    (%rdi),%ecx
    2616:	09 09                	or     %ecx,(%rcx)
    2618:	0b 01                	or     (%rcx),%eax
    261a:	0b 09                	or     (%rcx),%ecx
    261c:	0f 01 0b             	sidt   (%rbx)
    261f:	09 03                	or     %eax,(%rbx)
    2621:	05 0b 09 05 0d       	add    $0xd05090b,%eax
    2626:	0b 09                	or     (%rcx),%ecx
    2628:	07                   	(bad)
    2629:	03 0d 09 09 07 0d    	add    0xd070909(%rip),%ecx        # d072f38 <@comp.id+0xc01a5a0>
    262f:	09 01                	or     %eax,(%rcx)
    2631:	0d 0d 09 01 03       	or     $0x301090d,%eax
    2636:	0f 09                	wbinvd
    2638:	0b 03                	or     (%rbx),%eax
    263a:	0f 09                	wbinvd
    263c:	01 07                	add    %eax,(%rdi)
    263e:	0f 09                	wbinvd
    2640:	07                   	(bad)
    2641:	09 0f                	or     %ecx,(%rdi)
    2643:	09 03                	or     %eax,(%rbx)
    2645:	0b 0f                	or     (%rdi),%ecx
    2647:	09 05 01 01 0b 01    	or     %eax,0x10b0101(%rip)        # 10b274e <@comp.id+0x59db6>
    264d:	03 01                	add    (%rcx),%eax
    264f:	0b 09                	or     (%rcx),%ecx
    2651:	03 01                	add    (%rcx),%eax
    2653:	0b 05 05 01 0b 01    	or     0x10b0105(%rip),%eax        # 10b275e <@comp.id+0x59dc6>
    2659:	09 01                	or     %eax,(%rcx)
    265b:	0b 09                	or     (%rcx),%ecx
    265d:	09 01                	or     %eax,(%rcx)
    265f:	0b 0f                	or     (%rdi),%ecx
    2661:	09 01                	or     %eax,(%rcx)
    2663:	0b 05 0b 01 0b 0d    	or     0xd0b010b(%rip),%eax        # d0b2774 <@comp.id+0xc059ddc>
    2669:	0d 01 0b 09 0f       	or     $0xf090b01,%eax
    266e:	01 0b                	add    %ecx,(%rbx)
    2670:	03 01                	add    (%rcx),%eax
    2672:	03 0b                	add    (%rbx),%ecx
    2674:	07                   	(bad)
    2675:	01 03                	add    %eax,(%rbx)
    2677:	0b 0b                	or     (%rbx),%ecx
    2679:	01 03                	add    %eax,(%rbx)
    267b:	0b 05 03 03 0b 03    	or     0x30b0303(%rip),%eax        # 30b2984 <@comp.id+0x2059fec>
    2681:	05 03 0b 05 07       	add    $0x7050b03,%eax
    2686:	03 0b                	add    (%rbx),%ecx
    2688:	05 0f 03 0b 01       	add    $0x10b030f,%eax
    268d:	01 05 0b 03 03 05    	add    %eax,0x503030b(%rip)        # 503299e <@comp.id+0x3fda006>
    2693:	0b 07                	or     (%rdi),%eax
    2695:	05 05 0b 01 07       	add    $0x7010b05,%eax
    269a:	05 0b 0d 07 05       	add    $0x5070d0b,%eax
    269f:	0b 07                	or     (%rdi),%eax
    26a1:	0b 05 0b 05 01 07    	or     0x701050b(%rip),%eax        # 7012bb2 <@comp.id+0x5fba21a>
    26a7:	0b 0f                	or     (%rdi),%ecx
    26a9:	01 07                	add    %eax,(%rdi)
    26ab:	0b 01                	or     (%rcx),%eax
    26ad:	03 07                	add    (%rdi),%eax
    26af:	0b 0f                	or     (%rdi),%ecx
    26b1:	05 07 0b 09 09       	add    $0x9090b07,%eax
    26b6:	07                   	(bad)
    26b7:	0b 03                	or     (%rbx),%eax
    26b9:	0b 07                	or     (%rdi),%eax
    26bb:	0b 0b                	or     (%rbx),%ecx
    26bd:	0d 07 0b 07 0f       	or     $0xf070b07,%eax
    26c2:	07                   	(bad)
    26c3:	0b 03                	or     (%rbx),%eax
    26c5:	01 09                	add    %ecx,(%rcx)
    26c7:	0b 09                	or     (%rcx),%ecx
    26c9:	01 09                	add    %ecx,(%rcx)
    26cb:	0b 01                	or     (%rcx),%eax
    26cd:	05 09 0b 05 07       	add    $0x7050b09,%eax
    26d2:	09 0b                	or     %ecx,(%rbx)
    26d4:	0d 09 09 0b 05       	or     $0x50b0909,%eax
    26d9:	03 0b                	add    (%rbx),%ecx
    26db:	0b 0d 05 0b 0b 03    	or     0x30b0b05(%rip),%ecx        # 30b31e6 <@comp.id+0x205a84e>
    26e1:	0b 0b                	or     (%rbx),%ecx
    26e3:	0b 07                	or     (%rdi),%eax
    26e5:	0b 0b                	or     (%rbx),%ecx
    26e7:	0b 05 09 0d 0b 05    	or     0x50b0d09(%rip),%eax        # 50b33f6 <@comp.id+0x405aa5e>
    26ed:	01 0f                	add    %ecx,(%rdi)
    26ef:	0b 09                	or     (%rcx),%ecx
    26f1:	01 0f                	add    %ecx,(%rdi)
    26f3:	0b 05 05 0f 0b 03    	or     0x30b0f05(%rip),%eax        # 30b35fe <@comp.id+0x205ac66>
    26f9:	03 01                	add    (%rcx),%eax
    26fb:	0d 07 03 01 0d       	or     $0xd010307,%eax
    2700:	0b 03                	or     (%rbx),%eax
    2702:	01 0d 03 07 01 0d    	add    %ecx,0xd010703(%rip)        # d012e0b <@comp.id+0xbfba473>
    2708:	07                   	(bad)
    2709:	07                   	(bad)
    270a:	01 0d 01 0d 01 0d    	add    %ecx,0xd010d01(%rip)        # d013411 <@comp.id+0xbfbaa79>
    2710:	01 01                	add    %eax,(%rcx)
    2712:	03 0d 01 05 03 0d    	add    0xd030501(%rip),%ecx        # d032c19 <@comp.id+0xbfda281>
    2718:	0f 05                	syscall
    271a:	03 0d 09 0d 03 0d    	add    0xd030d09(%rip),%ecx        # d033429 <@comp.id+0xbfdaa91>
    2720:	05 03 05 0d 09       	add    $0x90d0503,%eax
    2725:	07                   	(bad)
    2726:	05 0d 05 09 05       	add    $0x509050d,%eax
    272b:	0d 0b 0b 05 0d       	or     $0xd050b0b,%eax
    2730:	05 0d 05 0d 01       	add    $0x10d050d,%eax
    2735:	0f 05                	syscall
    2737:	0d 01 01 07 0d       	or     $0xd070101,%eax
    273c:	09 03                	or     %eax,(%rbx)
    273e:	07                   	(bad)
    273f:	0d 03 05 07 0d       	or     $0xd070503,%eax
    2744:	01 09                	add    %ecx,(%rcx)
    2746:	07                   	(bad)
    2747:	0d 0b 05 09 0d       	or     $0xd09050b,%eax
    274c:	07                   	(bad)
    274d:	09 09                	or     %ecx,(%rcx)
    274f:	0d 05 0d 09 0d       	or     $0xd090d05,%eax
    2754:	01 01                	add    %eax,(%rcx)
    2756:	0b 0d 07 01 0b 0d    	or     0xd0b0107(%rip),%ecx        # d0b2863 <@comp.id+0xc059ecb>
    275c:	09 07                	or     %eax,(%rdi)
    275e:	0b 0d 01 0d 0b 0d    	or     0xd0b0d01(%rip),%ecx        # d0b3465 <@comp.id+0xc05aacd>
    2764:	0b 01                	or     (%rcx),%eax
    2766:	0d 0d 01 09 0d       	or     $0xd09010d,%eax
    276b:	0d 03 03 0f 0d       	or     $0xd0f0303,%eax
    2770:	07                   	(bad)
    2771:	03 0f                	add    (%rdi),%ecx
    2773:	0d 01 01 01 0f       	or     $0xf010101,%eax
    2778:	09 01                	or     %eax,(%rcx)
    277a:	01 0f                	add    %ecx,(%rdi)
    277c:	0f 01 01             	sgdt   (%rcx)
    277f:	0f 01 05 01 0f 05 05 	sgdt   0x5050f01(%rip)        # 5053687 <@comp.id+0x3ffacef>
    2786:	01 0f                	add    %ecx,(%rdi)
    2788:	0d 07 01 0f 01       	or     $0x10f0107,%eax
    278d:	09 01                	or     %eax,(%rcx)
    278f:	0f 09                	wbinvd
    2791:	0b 01                	or     (%rcx),%eax
    2793:	0f 05                	syscall
    2795:	0d 01 0f 05 01       	or     $0x1050f01,%eax
    279a:	03 0f                	add    (%rdi),%ecx
    279c:	03 03                	add    (%rbx),%eax
    279e:	03 0f                	add    (%rdi),%ecx
    27a0:	09 05 03 0f 07 09    	or     %eax,0x9070f03(%rip)        # 90736a9 <@comp.id+0x801ad11>
    27a6:	03 0f                	add    (%rdi),%ecx
    27a8:	0b 09                	or     (%rcx),%ecx
    27aa:	03 0f                	add    (%rdi),%ecx
    27ac:	03 01                	add    (%rcx),%eax
    27ae:	05 0f 09 01 05       	add    $0x501090f,%eax
    27b3:	0f 01 03             	sgdt   (%rbx)
    27b6:	05 0f 0d 03 05       	add    $0x5030d0f,%eax
    27bb:	0f 03 05 05 0f 01 07 	lsl    0x7010f05(%rip),%eax        # 70136c7 <@comp.id+0x5fbad2f>
    27c2:	05 0f 03 0b 05       	add    $0x50b030f,%eax
    27c7:	0f 05                	syscall
    27c9:	01 07                	add    %eax,(%rdi)
    27cb:	0f 05                	syscall
    27cd:	07                   	(bad)
    27ce:	07                   	(bad)
    27cf:	0f 0b                	ud2
    27d1:	07                   	(bad)
    27d2:	07                   	(bad)
    27d3:	0f 07                	sysretl
    27d5:	0b 07                	or     (%rdi),%eax
    27d7:	0f 03 01             	lsl    (%rcx),%eax
    27da:	09 0f                	or     %ecx,(%rdi)
    27dc:	0b 01                	or     (%rcx),%eax
    27de:	09 0f                	or     %ecx,(%rdi)
    27e0:	07                   	(bad)
    27e1:	03 09                	add    (%rcx),%ecx
    27e3:	0f 01 05 09 0f 01 0b 	sgdt   0xb010f09(%rip)        # b0136f3 <@comp.id+0x9fbad5b>
    27ea:	09 0f                	or     %ecx,(%rdi)
    27ec:	05 05 0b 0f 05       	add    $0x50f0b05,%eax
    27f1:	09 0b                	or     %ecx,(%rbx)
    27f3:	0f 05                	syscall
    27f5:	01 0d 0f 03 07 0d    	add    %ecx,0xd07030f(%rip)        # d072b0a <@comp.id+0xc01a172>
    27fb:	0f 01 01             	sgdt   (%rcx)
    27fe:	0f                   	(bad)
    27ff:	0f         	jno    ffffffffcfbfd59d <@feat.00+0xffffffff4fbed40d>

0000000000002800 <?kvalues_iq4nl@@3QBCB>:
    2800:	81 98 ad bf cf dd ea 	sbbl   $0xd01f6ea,-0x22304053(%rax)
    2807:	f6 01 0d 
    280a:	19 26                	sbb    %esp,(%rsi)
    280c:	35                   	.byte 0x35
    280d:	45 59                	rex.RB pop %r9
    280f:	71                   	.byte 0x71

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
 159:	33                 	xor    %ebx,%ebx

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
 217:	43 0f b6 44      	movzbl 0x7(%r14,%r15,1),%eax

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
 2b7:	c4         	vinserti128 $0x1,%xmm1,%ymm0,%ymm1

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
 2d4:	66 8d 04 55 01 00 00 	lea    0x1(,%rdx,2),%ax
 2db:	 

00000000000002db <$LN30>:
 2db:	00 98 c5 f9 6e d8    	add    %bl,-0x2791063b(%rax)
 2e1:	c4 e2 7d 08 cc       	vpsignb %ymm4,%ymm0,%ymm1
 2e6:	c4 e2 7d 79 db       	vpbroadcastw %xmm3,%ymm3
 2eb:	c4 e2 55 04 d1       	vpmaddubsw %ymm1,%ymm5,%ymm2
 2f0:	48 8b 55 00          	mov    0x0(%rbp),%rdx
 2f4:	49 ff              	inc    %r13

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
 158:	42 0f        	movzbl 0x42(%rax,%r13,1),%ecx

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
 217:	c4 c3 71 22    	vpinsrd $0x1,(%r14,%rdi,4),%xmm1,%xmm1

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
 2d9:	4c 89            	mov    %r13,0x10(%rbp)

00000000000002db <$LN30>:
 2db:	6d                   	insl   (%dx),(%rdi)
 2dc:	10 48 83             	adc    %cl,-0x7d(%rax)
 2df:	6d                   	insl   (%dx),(%rdi)
 2e0:	18 01                	sbb    %al,(%rcx)
 2e2:	0f 85 4a fe ff ff    	jne    132 <??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x132>
 2e8:	0f b7 02             	movzwl (%rdx),%eax
 2eb:	48 83 c2 6e          	add    $0x6e,%rdx
 2ef:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2f3:	c4 e2 79         	vcvtph2ps %xmm0,%xmm1

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
 158:	0f 85        	jne    d0 <??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd0>

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
 159:	49             	mov    0x10(%r14),%rax

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
 158:	c4 41          	vpxor  %xmm11,%xmm11,%xmm11

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
 217:	c4 e3 f9 22    	vpinsrq $0x1,(%rbx,%rcx,8),%xmm0,%xmm0

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
 2b7:	0f         	jl     1a0 <??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1a0>

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
 2d8:	c5 7c 10     	vmovups 0x80(%rbp),%ymm8
 2df:	 

00000000000002db <$LN30>:
 2db:	85 80 00 00 00 c5    	test   %eax,-0x3b000000(%rax)
 2e1:	fc                   	cld
 2e2:	5b                   	pop    %rbx
 2e3:	d7                   	xlat   (%rbx)
 2e4:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 2e8:	48 83 c1 52          	add    $0x52,%rcx
 2ec:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2f0:	48 8b 45 18          	mov    0x18(%rbp),%rax
 2f4:	c4 e2          	vcvtph2ps %xmm0,%xmm1

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
 156:	66 66 0f 1f    	data16 nopw 0x0(%rax,%rax,1)
 15d:	   

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
 217:	c4 e2 79 58        	vpbroadcastd %xmm2,%xmm2

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
 2b7:	c4           	vcvtph2ps %xmm0,%xmm1

00000000000002b8 <$LN99>:
 2b8:	e2 79                	loop   333 <??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x333>
 2ba:	13 c8                	adc    %eax,%ecx
 2bc:	c4 c1 72 59 ce       	vmulss %xmm14,%xmm1,%xmm1
 2c1:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
 2c5:	c5 f2 59 00          	vmulss (%rax),%xmm1,%xmm0
 2c9:	48 05 24 01 00 00    	add    $0x124,%rax
 2cf:	48 83 6d 10 01       	subq   $0x1,0x10(%rbp)
 2d4:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2d9:	c4 62          	vfmadd231ps %ymm2,%ymm0,%ymm9

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
 2f3:	20 4c 8b           	and    %cl,0x45(%rbx,%rcx,4)

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
 155:	0f 8e 61 02 00     	jle    3bc <??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3bc>

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
 21a:	42         	movzbl -0x4(%rdi,%r10,1),%eax

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
 2d9:	c4 c1        	vmovdqu -0x20(%r15),%ymm0

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
 2f5:	c4           	vpaddd %ymm8,%ymm3,%ymm8

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
 478:	c4 c1 78       	vmovaps -0x20(%r11),%xmm7

000000000000047b <$LN111>:
 47b:	28 7b              	sub    %bh,-0x20(%rbx)

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
 154:	48 c7 45 08 04 00  	movq   $0x4,0x8(%rbp)
 15b:	 

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
 2b7:	0f         	jl     190 <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x190>

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
 2d6:	0f 85 98 fe ff     	jne    174 <??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x174>

00000000000002db <$LN30>:
 2db:	ff 48 8b             	decl   -0x75(%rax)
 2de:	4d 10 48 8b          	rex.WRB adc %r9b,-0x75(%r8)
 2e2:	55                   	push   %rbp
 2e3:	60                   	(bad)
 2e4:	c5 fc 5b d7          	vcvtdq2ps %ymm7,%ymm2
 2e8:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 2ec:	48 83 c1 52          	add    $0x52,%rcx
 2f0:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2f4:	48 8b            	mov    0x18(%rbp),%rax

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
 158:	48 89            	mov    %rax,0x50(%rbp)

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
 219:	0f 1f      	nopl   0x0(%rax)

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
 2b5:	c4 e3 f9     	vpinsrq $0x1,(%rax,%rcx,8),%xmm0,%xmm0

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
 2f4:	c5 f5      	vpand  0x0(%rip),%ymm1,%ymm2        # 2fc <??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2fc>
 2fb:	 

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
 47a:	c5       	vmovups %ymm3,0xe0(%rbp)
 481:	 

000000000000047b <$LN111>:
 47b:	fc                   	cld
 47c:	11         	adc    %ebx,0xe0(%rbp)

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
 2b3:	c4 a1 7a 7e 0c     	vmovq  (%rax,%r9,8),%xmm1

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
 2da:	48             	shr    $0x20,%rcx

00000000000002db <$LN30>:
 2db:	c1 e9 20             	shr    $0x20,%ecx
 2de:	49 8b c4             	mov    %r12,%rax
 2e1:	45 85 f6             	test   %r14d,%r14d
 2e4:	48 0f 45 c1          	cmovne %rcx,%rax
 2e8:	41 ff c6             	inc    %r14d
 2eb:	c5 f9 6e c0          	vmovd  %eax,%xmm0
 2ef:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
 2f4:	c4 c2          	vpshufb %xmm11,%xmm0,%xmm1

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
 47a:	c4           	vbroadcastss %xmm0,%ymm0

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
 157:	41 c1 e0           	shl    $0x5,%r8d

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
 219:	c4 e2          	vcvtph2ps %xmm0,%xmm1

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
 2b7:	80               	and    $0x1,%cl

00000000000002b8 <$LN99>:
 2b8:	e1 01                	loope  2bb <??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2bb>
 2ba:	41 83 c1 10          	add    $0x10,%r9d
 2be:	c0 e1 02             	shl    $0x2,%cl
 2c1:	c5 fa 6f 54 30 08    	vmovdqu 0x8(%rax,%rsi,1),%xmm2
 2c7:	c5 f9 71 d2 04       	vpsrlw $0x4,%xmm2,%xmm0
 2cc:	c5 f9 db cf          	vpand  %xmm7,%xmm0,%xmm1
 2d0:	c4 e2 49 00 d9       	vpshufb %xmm1,%xmm6,%xmm3
 2d5:	c5 e9 db d7          	vpand  %xmm7,%xmm2,%xmm2
 2d9:	c4 e2          	vpshufb %xmm2,%xmm6,%xmm0

00000000000002db <$LN30>:
 2db:	49 00 c2             	rex.WB add %al,%r10b
 2de:	c4 e3 7d 38 e3 01    	vinserti128 $0x1,%xmm3,%ymm0,%ymm4
 2e4:	c4 c1 7e 6f 02       	vmovdqu (%r10),%ymm0
 2e9:	49 63 c3             	movslq %r11d,%rax
 2ec:	49 83 c2 20          	add    $0x20,%r10
 2f0:	48 d1 f8             	sar    $1,%rax
 2f3:	c4 e2 3d         	vpsignb %ymm4,%ymm8,%ymm1

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
 158:	48 63              	movslq %ebx,%rax

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
 21a:	c5             	vmovd  %eax,%xmm4

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
 2b5:	4c 8b 4d           	mov    0x0(%rbp),%r9

00000000000002b8 <$LN99>:
 2b8:	00 48 8b             	add    %cl,-0x75(%rax)
 2bb:	7d 08                	jge    2c5 <??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2c5>
 2bd:	48 8b 75 10          	mov    0x10(%rbp),%rsi
 2c1:	4c 8b 75 30          	mov    0x30(%rbp),%r14
 2c5:	4c 8b 7d 38          	mov    0x38(%rbp),%r15
 2c9:	c4 63 7d 19 e0 01    	vextractf128 $0x1,%ymm12,%xmm0
 2cf:	c4 c1 78 58 c4       	vaddps %xmm12,%xmm0,%xmm0
 2d4:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 2d8:	c4 63 7d       	vextractf128 $0x1,%ymm13,%xmm0

00000000000002db <$LN30>:
 2db:	19 e8                	sbb    %ebp,%eax
 2dd:	01 c4                	add    %eax,%esp
 2df:	c1 78 58 c5          	sarl   $0xc5,0x58(%rax)
 2e3:	c5 73 7c f9          	vhaddps %xmm1,%xmm1,%xmm15
 2e7:	c5 fb 7c c8          	vhaddps %xmm0,%xmm0,%xmm1
 2eb:	45 33 ed             	xor    %r13d,%r13d
 2ee:	c5 73 7c c1          	vhaddps %xmm1,%xmm1,%xmm8
 2f2:	c5 78 11 45        	vmovups %xmm8,0x50(%rbp)

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
 478:	4c 8b 75           	mov    0x30(%rbp),%r14

000000000000047b <$LN111>:
 47b:	30 4c            	xor    %cl,0x7d(%rbx,%rcx,4)

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
 158:	0f 1f      	nopl   0x0(%rax,%rax,1)
 15f:	 

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
 219:	c4 41          	vpaddd %ymm8,%ymm3,%ymm8

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
 2b7:	c4         	vmovss %xmm3,(%r8,%r9,1)

00000000000002b8 <$LN99>:
 2b8:	81 7a 11 1c 08 c4 63 	cmpl   $0x63c4081c,0x11(%rdx)
 2bf:	7d 19                	jge    2da <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2da>
 2c1:	e8 01 c4 c1 78       	call   78c1c6c7 <@comp.id+0x77bc3d2f>
 2c6:	58                   	pop    %rax
 2c7:	c5 c5 fb 7c c8 c5    	vpsubq -0x3b(%rax,%rcx,8),%ymm7,%ymm7
 2cd:	f3 7c d1             	repz jl 2a1 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2a1>
 2d0:	c4 c1 7a 11 10       	vmovss %xmm2,(%r8)
 2d5:	49 83 c0 04          	add    $0x4,%r8
 2d9:	48 89            	mov    %rdx,0x8(%rbp)

00000000000002db <$LN30>:
 2db:	55                   	push   %rbp
 2dc:	08 49 83             	or     %cl,-0x7d(%rcx)
 2df:	eb 01                	jmp    2e2 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2e2>
 2e1:	4c 89 45 10          	mov    %r8,0x10(%rbp)
 2e5:	4c 89 5d 18          	mov    %r11,0x18(%rbp)
 2e9:	0f 85 12 fe ff ff    	jne    101 <??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x101>
 2ef:	c5 f8 77             	vzeroupper
 2f2:	4c 8d 9c 24    	lea    0x100(%rsp),%r11
 2f9:	 

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
 158:	4d 8b              	mov    %r8,%r14

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
 21a:	0f           	movzbl 0x4(%rax,%rdi,1),%eax

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
 2b4:	c4 62 7d b8        	vfmadd231ps %ymm1,%ymm0,%ymm13

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
 2f5:	4c             	mov    0x48(%rbp),%r8

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
 479:	66 c1            	shl    $0x4,%ax

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
 157:	66 0f 1f     	nopw   0x0(%rax,%rax,1)
 15e:	  

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
 219:	66 c1            	shl    $0x4,%ax

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
 2b3:	49 81 c6 24 01   	add    $0x124,%r14

00000000000002b8 <$LN99>:
 2b8:	00 00                	add    %al,(%rax)
 2ba:	48 83 6d 00 01       	subq   $0x1,0x0(%rbp)
 2bf:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2c4:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 2c9:	c4 62 7d b8 f9       	vfmadd231ps %ymm1,%ymm0,%ymm15
 2ce:	0f 85 8c fe ff ff    	jne    160 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x160>
 2d4:	4c 8b 45 30          	mov    0x30(%rbp),%r8
 2d8:	48 8b 55           	mov    0x18(%rbp),%rdx

00000000000002db <$LN30>:
 2db:	18 4c 8b 5d          	sbb    %cl,0x5d(%rbx,%rcx,4)
 2df:	10 48 8b             	adc    %cl,-0x75(%rax)
 2e2:	5d                   	pop    %rbp
 2e3:	38 48 8b             	cmp    %cl,-0x75(%rax)
 2e6:	7d 20                	jge    308 <??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x308>
 2e8:	48 8b 75 40          	mov    0x40(%rbp),%rsi
 2ec:	4c 8b 75 08          	mov    0x8(%rbp),%r14
 2f0:	48 8b 4d 48          	mov    0x48(%rbp),%rcx
 2f4:	4c 8b            	mov    0x50(%rbp),%r10

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
 158:	c5 fc      	vmovups %ymm3,0x80(%rbp)
 15f:	 

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
 217:	c5 f9 71 d2        	vpsrlw $0x4,%xmm2,%xmm0

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
 2b7:	c4           	vpmaddubsw %ymm1,%ymm6,%ymm2

00000000000002b8 <$LN99>:
 2b8:	e2 4d                	loop   307 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x307>
 2ba:	04 d1                	add    $0xd1,%al
 2bc:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 2c1:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2c5:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 2ca:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2cf:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 2d4:	49 83 c2 20          	add    $0x20,%r10
 2d8:	c5 ed f5           	vpmaddwd %ymm4,%ymm2,%ymm3

00000000000002db <$LN30>:
 2db:	dc c4                	fadd   %st,%st(4)
 2dd:	41                   	rex.B
 2de:	65 fe                	gs (bad)
 2e0:	d2 48 83             	rorb   %cl,-0x7d(%rax)
 2e3:	eb 01                	jmp    2e6 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2e6>
 2e5:	0f 85 15 ff ff ff    	jne    200 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x200>
 2eb:	41 ff c0             	inc    %r8d
 2ee:	41 83 f8 04          	cmp    $0x4,%r8d
 2f2:	0f 8c f8 fe      	jl     1f0 <??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1f0>

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
 47b:	c4 c1          	vxorps %xmm10,%xmm6,%xmm0

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
 158:	c5 e8            	vxorps %xmm2,%xmm2,%xmm2

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
 217:	c5 f9 71 d2        	vpsrlw $0x4,%xmm2,%xmm0

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
 2b7:	c4           	vpmaddubsw %ymm1,%ymm6,%ymm2

00000000000002b8 <$LN99>:
 2b8:	e2 4d                	loop   307 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x307>
 2ba:	04 d1                	add    $0xd1,%al
 2bc:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 2c1:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2c5:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 2ca:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2cf:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 2d4:	49 83 c2 20          	add    $0x20,%r10
 2d8:	c5 ed f5           	vpmaddwd %ymm4,%ymm2,%ymm3

00000000000002db <$LN30>:
 2db:	dc c4                	fadd   %st,%st(4)
 2dd:	41                   	rex.B
 2de:	65 fe                	gs (bad)
 2e0:	d2 48 83             	rorb   %cl,-0x7d(%rax)
 2e3:	eb 01                	jmp    2e6 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2e6>
 2e5:	0f 85 15 ff ff ff    	jne    200 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x200>
 2eb:	41 ff c0             	inc    %r8d
 2ee:	41 83 f8 04          	cmp    $0x4,%r8d
 2f2:	0f 8c f8 fe      	jl     1f0 <??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1f0>

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
 479:	49 8b            	mov    0x40(%r11),%rdi

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
 158:	44 89          	mov    %r10d,0x20(%rsp)

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
 219:	8b 84      	mov    0xb0(%rsp),%eax

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
 2b5:	89 44 24           	mov    %eax,0x30(%rsp)

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
 159:	48       	add    $0x88,%rsp

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
 216:	8b 8c 24 e8 00   	mov    0xe8(%rsp),%ecx

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
 2b4:	48 89 44 24        	mov    %rax,0x60(%rsp)

00000000000002b8 <$LN99>:
 2b8:	60                   	(bad)
 2b9:	49 8b 41 08          	mov    0x8(%r9),%rax
 2bd:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
 2c2:	49 8b 41 10          	mov    0x10(%r9),%rax
 2c6:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
 2cb:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
 2d2:	3b c8                	cmp    %eax,%ecx
 2d4:	0f 8d 96 01 00 00    	jge    470 <??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x470>
 2da:	48       	mov    %rsi,0xb0(%rsp)
 2e1:	 

00000000000002db <$LN30>:
 2db:	89 b4 24 b0 00 00 00 	mov    %esi,0xb0(%rsp)
 2e2:	48 8d 3c 8d 00 00 00 	lea    0x0(,%rcx,4),%rdi
 2e9:	00 
 2ea:	48 8b f1             	mov    %rcx,%rsi
 2ed:	4c 89 b4 24 80 00 00 	mov    %r14,0x80(%rsp)
 2f4:	00 
 2f5:	48             	imul   %rbp,%rsi

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
 158:	e8 00          	call   15d <??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x15d>

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
 216:	48 81 c4 f8 00   	add    $0xf8,%rsp

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
 2d9:	c5 fa          	vmovss -0x7d(%rbp),%xmm6

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
 214:	4a 8d 3c 85 00 00 00 	lea    0x0(,%r8,4),%rdi
 21b:	 

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
 157:	c5 7a 10     	vmovss 0x0(%rip),%xmm8        # 15f <??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x15f>
 15e:	 

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
 215:	c4 c1 7a 11 5c 07  	vmovss %xmm3,-0x4(%r15,%rax,1)

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
 2b5:	8b 84 24     	mov    0x158(%rsp),%eax

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
 2da:	48           	mov    %rdx,0x28(%rsp)

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
 155:	c5 fa 10 44 24     	vmovss 0x58(%rsp),%xmm0

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
 159:	42         	movzbl 0x5(%rsi,%r14,1),%eax

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
 2b5:	c4 e2 7d         	vbroadcastss %xmm2,%ymm2

00000000000002b8 <$LN99>:
 2b8:	18 d2                	sbb    %dl,%dl
 2ba:	c5 fc 5b de          	vcvtdq2ps %ymm6,%ymm3
 2be:	c4 e2 6d b8 fb       	vfmadd231ps %ymm3,%ymm2,%ymm7
 2c3:	48 89 55 20          	mov    %rdx,0x20(%rbp)
 2c7:	0f 85 d3 fd ff ff    	jne    a0 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xa0>
 2cd:	0f 1f 00             	nopl   (%rax)
 2d0:	48 8b 45 40          	mov    0x40(%rbp),%rax
 2d4:	c4 e3 7d 19 f8 01    	vextractf128 $0x1,%ymm7,%xmm0
 2da:	c5             	vaddps %xmm7,%xmm0,%xmm0

00000000000002db <$LN30>:
 2db:	f8                   	clc
 2dc:	58                   	pop    %rax
 2dd:	c7 c5 fb 7c c8 c5    	mov    $0xc5c87cfb,%ebp
 2e3:	f3 7c d1             	repz jl 2b7 <??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x2b7>
 2e6:	c5 fa 11 10          	vmovss %xmm2,(%rax)
 2ea:	c5 f8 77             	vzeroupper
 2ed:	4c 8d 9c 24 e0 00 00 	lea    0xe0(%rsp),%r11
 2f4:	00 
 2f5:	49             	mov    0x30(%r11),%rbx

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
 159:	42         	movzbl 0x3(%rsi,%r14,1),%eax

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
 21a:	c4           	vpbroadcastd %xmm0,%xmm0

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
 2da:	48             	mov    0x48(%rbp),%rax

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
 156:	81 e1 80 00      	and    $0x80,%ecx

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
 219:	48 c1            	shr    $0x20,%rcx

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
 2b5:	c4 e2 4d         	vpmaddubsw %ymm1,%ymm6,%ymm2

00000000000002b8 <$LN99>:
 2b8:	04 d1                	add    $0xd1,%al
 2ba:	c5 e5 fe ff          	vpaddd %ymm7,%ymm3,%ymm7
 2be:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2c2:	c4 e2 7d 08 cd       	vpsignb %ymm5,%ymm0,%ymm1
 2c7:	c4 e2 4d 04 d1       	vpmaddubsw %ymm1,%ymm6,%ymm2
 2cc:	c4 41 65 fe c0       	vpaddd %ymm8,%ymm3,%ymm8
 2d1:	c5 ed f5 dc          	vpmaddwd %ymm4,%ymm2,%ymm3
 2d5:	c4 41 65 fe c9       	vpaddd %ymm9,%ymm3,%ymm9
 2da:	49             	cmp    $0x2,%r12

00000000000002db <$LN30>:
 2db:	83 fc 02             	cmp    $0x2,%esp
 2de:	0f 8c 4c fe ff ff    	jl     130 <??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x130>
 2e4:	4c 8b 7d 18          	mov    0x18(%rbp),%r15
 2e8:	49 83 c6 10          	add    $0x10,%r14
 2ec:	4c 8b 65 20          	mov    0x20(%rbp),%r12
 2f0:	49 83 c7 08          	add    $0x8,%r15
 2f4:	49 ff              	inc    %r12

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
 158:	4c 8b            	mov    0x50(%rbp),%r12

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
 216:	c4 e3 79 22 04   	vpinsrd $0x2,(%rsi,%rdx,4),%xmm0,%xmm0

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
 2b6:	c4 e2          	vpsignb %ymm5,%ymm0,%ymm1

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
 2d7:	c4 e2 4d 04        	vpmaddubsw %ymm1,%ymm6,%ymm2

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
 47b:	49 8b            	mov    0x30(%r11),%rbx

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
 155:	c4 83 f1 22 0c   	vpinsrq $0x1,(%r12,%r8,8),%xmm1,%xmm1

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
 21a:	48             	mov    0x8(%rbp),%rcx

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
 2b5:	c4 41 78       	vmovaps -0x40(%r11),%xmm9

00000000000002b8 <$LN99>:
 2b8:	28 4b c0             	sub    %cl,-0x40(%rbx)
 2bb:	c4 41 78 28 53 b0    	vmovaps -0x50(%r11),%xmm10
 2c1:	c4 41 78 28 5b a0    	vmovaps -0x60(%r11),%xmm11
 2c7:	c4 41 78 28 63 90    	vmovaps -0x70(%r11),%xmm12
 2cd:	c4 41 78 28 6b 80    	vmovaps -0x80(%r11),%xmm13
 2d3:	c5 78 28 74 24 50    	vmovaps 0x50(%rsp),%xmm14
 2d9:	49 8b              	mov    %r11,%rsp

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
 158:	42 0f        	movzbl -0x5(%rsi,%r10,1),%eax

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
 21a:	c4         	vmovdqu -0x20(%r13),%ymm1

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
 2b6:	c4 e2          	vbroadcastss %xmm0,%ymm0

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
 2d9:	48 83          	subq   $0x1,0x30(%rbp)

00000000000002db <$LN30>:
 2db:	6d                   	insl   (%dx),(%rdi)
 2dc:	30 01                	xor    %al,(%rcx)
 2de:	c4 e2 7d 18 c0       	vbroadcastss %xmm0,%ymm0
 2e3:	c4 c1 7c 5b c8       	vcvtdq2ps %ymm8,%ymm1
 2e8:	c4 62 7d b8 d9       	vfmadd231ps %ymm1,%ymm0,%ymm11
 2ed:	48 89 55 18          	mov    %rdx,0x18(%rbp)
 2f1:	4c 89 45 28          	mov    %r8,0x28(%rbp)
 2f5:	0f         	jne    d3 <??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xd3>

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
 2b6:	48 83            	add    $0x40,%rbx

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
 2d9:	48 8b            	mov    0x20(%rbp),%rcx

00000000000002db <$LN30>:
 2db:	4d 20 48 8b          	rex.WRB and %r9b,-0x75(%r8)
 2df:	55                   	push   %rbp
 2e0:	58                   	pop    %rax
 2e1:	4c 8b 4d 38          	mov    0x38(%rbp),%r9
 2e5:	4c 8b 45 40          	mov    0x40(%rbp),%r8
 2e9:	49 81 c1 24 01 00 00 	add    $0x124,%r9
 2f0:	0f b7 41 fe          	movzwl -0x2(%rcx),%eax
 2f4:	49 81      	add    $0x124,%r8

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
 158:	4c 8b              	mov    %rcx,%r10

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
 215:	c4 c3 f9 22 04 ce  	vpinsrq $0x1,(%r14,%rcx,8),%xmm0,%xmm0

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
 2b4:	c4 e2 4d 04        	vpmaddubsw %ymm1,%ymm6,%ymm2

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
 2da:	c4           	vpsignb %ymm5,%ymm0,%ymm1

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
 47b:	c5 f3            	vhaddps %xmm1,%xmm1,%xmm2

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
 158:	c4 e2          	vcvtph2ps %xmm0,%xmm1

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
 158:	66 d3              	shr    %cl,%ax

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
 218:	c5 f3 7c           	vhaddps %xmm1,%xmm1,%xmm2

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
 159:	c4           	vmovdqu (%r11),%ymm0

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
 217:	c4 a1 6a 59      	vmulss (%rax,%r13,1),%xmm2,%xmm0

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
 2b3:	c4 c1 7a 11 51     	vmovss %xmm2,0x4(%r9)

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
 2da:	c4         	vmovaps -0x10(%r11),%xmm6

00000000000002db <$LN30>:
 2db:	c1 78 28 73          	sarl   $0x73,0x28(%rax)
 2df:	f0 c4 c1 78 28 7b e0 	lock vmovaps -0x20(%r11),%xmm7
 2e6:	c4 41 78 28 43 d0    	vmovaps -0x30(%r11),%xmm8
 2ec:	c4 41 78 28 4b c0    	vmovaps -0x40(%r11),%xmm9
 2f2:	c4 41 78 28      	vmovaps -0x50(%r11),%xmm10

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
 158:	80 e1              	and    $0x1,%cl

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
 21a:	c5             	vpmaddwd %ymm4,%ymm2,%ymm3

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
 2b6:	c4 62          	vfmadd231ps %ymm1,%ymm0,%ymm13

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
 2da:	c4           	vbroadcastss %xmm0,%ymm0

00000000000002db <$LN30>:
 2db:	e2 7d                	loop   35a <??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x35a>
 2dd:	18 c0                	sbb    %al,%al
 2df:	c4 c1 7c 5b c9       	vcvtdq2ps %ymm9,%ymm1
 2e4:	c4 e2 7d b8 e1       	vfmadd231ps %ymm1,%ymm0,%ymm4
 2e9:	c4 a1 6a 59 04 28    	vmulss (%rax,%r13,1),%xmm2,%xmm0
 2ef:	48 8b 45 00          	mov    0x0(%rbp),%rax
 2f3:	49 81 c5     	add    $0x124,%r13

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
 154:	c4 e2 79 00 0d 00  	vpshufb 0x0(%rip),%xmm0,%xmm1        # 15d <?decode@?$Fmt32@$0BF@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x15d>
 15b:	  

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
 159:	c4           	vpbroadcastw %xmm1,%xmm1

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
 158:	44 89          	mov    %r10d,0x20(%rsp)

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
 219:	8b 84      	mov    0xb0(%rsp),%eax

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
 2b5:	89 44 24           	mov    %eax,0x30(%rsp)

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
 159:	c4           	vmovq  %rax,%xmm0

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
 218:	0f 1f 84     	nopl   0x0(%rax,%rax,1)
 21f:	 

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
 2b6:	41 0f            	movzbl (%r15),%ecx

00000000000002b8 <$LN99>:
 2b8:	b6 0f                	mov    $0xf,%dh
 2ba:	48 8b 55 08          	mov    0x8(%rbp),%rdx
 2be:	44 8b c9             	mov    %ecx,%r9d
 2c1:	c4 e3 75 18 c0 01    	vinsertf128 $0x1,%xmm0,%ymm1,%ymm0
 2c7:	c4 e2 7d 04 ca       	vpmaddubsw %ymm2,%ymm0,%ymm1
 2cc:	44 8b c1             	mov    %ecx,%r8d
 2cf:	41 83 e1 03          	and    $0x3,%r9d
 2d3:	0f b6 44 32 02       	movzbl 0x2(%rdx,%rsi,1),%eax
 2d8:	41 83 e0           	and    $0xc,%r8d

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
 2f5:	83               	and    $0x30,%edx

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
 479:	48 0b              	or     %rax,%rdx

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

Disassembly of section .xdata:

0000000000000000 <$unwind$?ggml_cpu_moe_iq2_s_paired_gate_up@@YA_NPEBX0_K1H0PEAMHH@Z>:
   0:	01 04 01             	add    %eax,(%rcx,%rax,1)
   3:	00 04 a2             	add    %al,(%rdx,%riz,4)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$?ggml_cpu_moe_iq2_s_paired_gate_up@@YA_NPEBX0_K1H0PEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	5e                   	pop    %rsi
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$?ggml_cpu_moe_iq_rows@@YAXW4ggml_type@@PEBX_KHPEBQEBXHPEBQEAMHH@Z>:
   0:	01 04 01             	add    %eax,(%rcx,%rax,1)
   3:	00 04 c2             	add    %al,(%rdx,%rax,8)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$?ggml_cpu_moe_iq_rows@@YAXW4ggml_type@@PEBX_KHPEBQEBXHPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	5d                   	pop    %rbp
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	01 0a                	add    %ecx,(%rdx)
   2:	04 00                	add    $0x0,%al
   4:	0a 34 0c             	or     (%rsp,%rcx,1),%dh
   7:	00 0a                	add    %cl,(%rdx)
   9:	92                   	xchg   %eax,%edx
   a:	06                   	(bad)
   b:	70                   	.byte 0x70

Disassembly of section .pdata:

0000000000000000 <$pdata$?ggml_cpu_moe_iq_gate_up@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	db 02                	fildl  (%rdx)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$?iq2_s_half_dot@?A0x5752bc9f@@YA?AT__m256i@@PEBEHT2@111@Z>:
   0:	01 0a                	add    %ecx,(%rdx)
   2:	04 00                	add    $0x0,%al
   4:	0a 74 02 00          	or     0x0(%rdx,%rax,1),%dh
   8:	05                   	.byte 0x5
   9:	34 01                	xor    $0x1,%al
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$?iq2_s_half_dot@?A0x5752bc9f@@YA?AT__m256i@@PEBEHT2@111@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	d4                   	(bad)
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z>:
   0:	01 6e 1f             	add    %ebp,0x1f(%rsi)
   3:	00 65 f8             	add    %ah,-0x8(%rbp)
   6:	14 00                	adc    $0x0,%al
   8:	5d                   	pop    %rbp
   9:	e8 15 00 55 d8       	call   ffffffffd8550023 <@feat.00+0xffffffff5853fe93>
   e:	16                   	(bad)
   f:	00 4d c8             	add    %cl,-0x38(%rbp)
  12:	17                   	(bad)
  13:	00 45 b8             	add    %al,-0x48(%rbp)
  16:	18 00                	sbb    %al,(%rax)
  18:	3d a8 19 00 35       	cmp    $0x350019a8,%eax
  1d:	98                   	cwtl
  1e:	1a 00                	sbb    (%rax),%al
  20:	30 88 1b 00 2b 78    	xor    %cl,0x782b001b(%rax)
  26:	1c 00                	sbb    $0x0,%al
  28:	26 68 1d 00 21 34    	es push $0x3421001d
  2e:	44 00 21             	add    %r12b,(%rcx)
  31:	01 3c 00             	add    %edi,(%rax,%rax,1)
  34:	1a f0                	sbb    %al,%dh
  36:	18 e0                	sbb    %ah,%al
  38:	16                   	(bad)
  39:	d0 14 c0             	rclb   $1,(%rax,%rax,8)
  3c:	12 70 11             	adc    0x11(%rax),%dh
  3f:	60                   	(bad)
  40:	10 50 00             	adc    %dl,0x0(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$?paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	d7                   	xlat   (%rbx)
   5:	06                   	(bad)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$?decode@?$Fmt32@$0BG@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z>:
   0:	01 18                	add    %ebx,(%rax)
   2:	0a 00                	or     (%rax),%al
   4:	18 c4                	sbb    %al,%ah
   6:	06                   	(bad)
   7:	00 18                	add    %bl,(%rax)
   9:	74 05                	je     10 <$unwind$?decode@?$Fmt32@$0BG@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z+0x10>
   b:	00 18                	add    %bl,(%rax)
   d:	64 04 00             	fs add $0x0,%al
  10:	18 34 03             	sbb    %dh,(%rbx,%rax,1)
  13:	00 18                	add    %bl,(%rax)
  15:	f0 16                	lock (bad)
  17:	e0                   	.byte 0xe0

Disassembly of section .pdata:

0000000000000000 <$pdata$?decode@?$Fmt32@$0BG@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	84 01                	test   %al,(%rcx)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$?decode@?$Fmt32@$0BF@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z>:
   0:	01 1c 0a             	add    %ebx,(%rdx,%rcx,1)
   3:	00 1c 74             	add    %bl,(%rsp,%rsi,2)
   6:	08 00                	or     %al,(%rax)
   8:	1c 64                	sbb    $0x64,%al
   a:	06                   	(bad)
   b:	00 1c 34             	add    %bl,(%rsp,%rsi,1)
   e:	05 00 1c f0 1a       	add    $0x1af01c00,%eax
  13:	e0 18                	loopne 2d <@vol.md+0x2a>
  15:	d0 16                	rclb   $1,(%rsi)
  17:	c0                   	.byte 0xc0

Disassembly of section .pdata:

0000000000000000 <$pdata$?decode@?$Fmt32@$0BF@@?A0x5752bc9f@@SAXPEBEHHAEAT__m256i@@11@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	d2 01                	rolb   %cl,(%rcx)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	01 0d 06 00 0d 01    	add    %ecx,0x10d0006(%rip)        # 10d000c <@comp.id+0x77674>
   6:	11 00                	adc    %eax,(%rax)
   8:	06                   	(bad)
   9:	f0 04 70             	lock add $0x70,%al
   c:	03 50 02             	add    0x2(%rax),%edx
   f:	30                   	.byte 0x30

Disassembly of section .pdata:

0000000000000000 <$pdata$??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	da 02                	fiaddl (%rdx)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$1$??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 1b                	and    %ebx,(%rbx)
   2:	04 00                	add    $0x0,%al
   4:	1b e4                	sbb    %esp,%esp
   6:	10 00                	adc    %al,(%rax)
   8:	08 64 16 00          	or     %ah,0x0(%rsi,%rdx,1)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	da 02                	fiaddl (%rdx)
  12:	00 00                	add    %al,(%rax)
  14:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$1$??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	da 02                	fiaddl (%rdx)
   2:	00 00                	add    %al,(%rax)
   4:	7e 03                	jle    9 <$pdata$1$??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x9>
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$2$??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	da 02                	fiaddl (%rdx)
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$2$??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	7e 03                	jle    5 <$pdata$2$??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0x5>
   2:	00 00                	add    %al,(%rax)
   4:	7d 04                	jge    a <$pdata$2$??$dispatch@$0A@@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z+0xa>
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	01 0a                	add    %ecx,(%rdx)
   2:	04 00                	add    $0x0,%al
   4:	0a 34 0c             	or     (%rsp,%rcx,1),%dh
   7:	00 0a                	add    %cl,(%rdx)
   9:	92                   	xchg   %eax,%edx
   a:	06                   	(bad)
   b:	70                   	.byte 0x70

Disassembly of section .pdata:

0000000000000000 <$pdata$??$dispatch@$00@?A0x5752bc9f@@YAXW4ggml_type@@PEBX1_K2HPEBQEBXHPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	db 02                	fildl  (%rdx)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	01 0a                	add    %ecx,(%rdx)
   2:	04 00                	add    $0x0,%al
   4:	0a 01                	or     (%rcx),%al
   6:	13 00                	adc    (%rax),%eax
   8:	03 70 02             	add    0x2(%rax),%esi
   b:	50                   	push   %rax

Disassembly of section .pdata:

0000000000000000 <$pdata$??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	d6                   	udb
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$3$??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 2c 08             	and    %ebp,(%rax,%rcx,1)
   3:	00 2c f4             	add    %ch,(%rsp,%rsi,8)
   6:	10 00                	adc    %al,(%rax)
   8:	21 e4                	and    %esp,%esp
   a:	11 00                	adc    %eax,(%rax)
   c:	11 64 12 00          	adc    %esp,0x0(%rdx,%rdx,1)
  10:	08 34 17             	or     %dh,(%rdi,%rdx,1)
  13:	00 00                	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 d6                	add    %dl,%dh
  19:	00 00                	add    %al,(%rax)
  1b:	00 00                	add    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$3$??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	d6                   	udb
   1:	00 00                	add    %al,(%rax)
   3:	00 9b 01 00 00 00    	add    %bl,0x1(%rbx)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$4$??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	d6                   	udb
   9:	00 00                	add    %al,(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$4$??$dispatch_count@$0BG@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	9b                   	fwait
   1:	01 00                	add    %eax,(%rax)
   3:	00 1b                	add    %bl,(%rbx)
   5:	02 00                	add    (%rax),%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	01 12                	add    %edx,(%rdx)
   2:	05 00 12 01 12       	add    $0x12011200,%eax
   7:	00 07                	add    %al,(%rdi)
   9:	e0 05                	loopne 10 <@vol.md+0xd>
   b:	30 04 50             	xor    %al,(%rax,%rdx,2)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	2e 00 00             	cs add %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$3$??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 10                	and    %edx,(%rax)
   2:	08 00                	or     %al,(%rax)
   4:	10 f4                	adc    %dh,%ah
   6:	10 00                	adc    %al,(%rax)
   8:	0c c4                	or     $0xc4,%al
   a:	11 00                	adc    %eax,(%rax)
   c:	08 74 19 00          	or     %dh,0x0(%rcx,%rbx,1)
  10:	04 64                	add    $0x64,%al
  12:	17                   	(bad)
  13:	00 00                	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 2e                	add    %ch,(%rsi)
  19:	00 00                	add    %al,(%rax)
  1b:	00 00                	add    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$3$??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	2e 00 00             	cs add %al,(%rax)
   3:	00 57 01             	add    %dl,0x1(%rdi)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$5$??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	08 00                	or     %al,(%rax)
   4:	00 f4                	add    %dh,%ah
   6:	10 00                	adc    %al,(%rax)
   8:	00 c4                	add    %al,%ah
   a:	11 00                	adc    %eax,(%rax)
   c:	00 74 19 00          	add    %dh,0x0(%rcx,%rbx,1)
  10:	00 64 17 00          	add    %ah,0x0(%rdi,%rdx,1)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	2e 00 00             	cs add %al,(%rax)
  1b:	00 00                	add    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$5$??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	57                   	push   %rdi
   1:	01 00                	add    %eax,(%rax)
   3:	00 82 02 00 00 00    	add    %al,0x2(%rdx)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$6$??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	2e 00 00             	cs add %al,(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$6$??$dispatch_count@$0BF@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	82                   	(bad)
   1:	02 00                	add    (%rax),%al
   3:	00 b8 02 00 00 00    	add    %bh,0x2(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	01 04 01             	add    %eax,(%rcx,%rax,1)
   3:	00 04 a2             	add    %al,(%rdx,%riz,4)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$dispatch_count@$0BH@$0A@@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	5a                   	pop    %rdx
   5:	01 00                	add    %eax,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	01 0b                	add    %ecx,(%rbx)
   2:	05 00 0b 01 1e       	add    $0x1e010b00,%eax
   7:	00 04 70             	add    %al,(%rax,%rsi,2)
   a:	03 60 02             	add    0x2(%rax),%esp
   d:	50                   	push   %rax
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	e1 00                	loope  6 <$pdata$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x6>
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$7$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 76 10             	and    %esi,0x10(%rsi)
   3:	00 76 88             	add    %dh,-0x78(%rsi)
   6:	09 00                	or     %eax,(%rax)
   8:	51                   	push   %rcx
   9:	78 0a                	js     15 <$chain$7$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x15>
   b:	00 48 68             	add    %cl,0x68(%rax)
   e:	0b 00                	or     (%rax),%eax
  10:	2f                   	(bad)
  11:	f4                   	hlt
  12:	19 00                	sbb    %eax,(%rax)
  14:	24 e4                	and    $0xe4,%al
  16:	1a 00                	sbb    (%rax),%al
  18:	1c d4                	sbb    $0xd4,%al
  1a:	1b 00                	sbb    (%rax),%eax
  1c:	11 c4                	adc    %eax,%esp
  1e:	1c 00                	sbb    $0x0,%al
  20:	08 34 1d 00 00 00 00 	or     %dh,0x0(,%rbx,1)
  27:	00 e1                	add    %ah,%cl
  29:	00 00                	add    %al,(%rax)
  2b:	00 00                	add    %al,(%rax)
  2d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$7$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	e1 00                	loope  2 <$pdata$7$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x2>
   2:	00 00                	add    %al,(%rax)
   4:	74 02                	je     8 <$pdata$7$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x8>
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$8$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	e1 00                	loope  a <$chain$8$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0xa>
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$8$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	74 02                	je     4 <$pdata$8$??$dispatch_count@$0BG@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x4>
   2:	00 00                	add    %al,(%rax)
   4:	f6 02 00             	testb  $0x0,(%rdx)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	01 14 06             	add    %edx,(%rsi,%rax,1)
   3:	00 14 01             	add    %dl,(%rcx,%rax,1)
   6:	1f                   	(bad)
   7:	00 09                	add    %cl,(%rcx)
   9:	f0 07                	lock (bad)
   b:	c0                   	.byte 0xc0
   c:	05                   	.byte 0x5
   d:	70 04                	jo     13 <@vol.md+0x10>
   f:	50                   	push   %rax

Disassembly of section .pdata:

0000000000000000 <$pdata$??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	34 00                	xor    $0x0,%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$6$??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 1f                	and    %ebx,(%rdi)
   2:	0e                   	(bad)
   3:	00 1f                	add    %bl,(%rdi)
   5:	88 0a                	mov    %cl,(%rdx)
   7:	00 1a                	add    %bl,(%rdx)
   9:	78 0b                	js     16 <$chain$6$??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x16>
   b:	00 15 68 0c 00 10    	add    %dl,0x10000c68(%rip)        # 10000c79 <@comp.id+0xefa82e1>
  11:	e4 1b                	in     $0x1b,%al
  13:	00 0c d4             	add    %cl,(%rsp,%rdx,8)
  16:	1c 00                	sbb    $0x0,%al
  18:	08 64 1d 00          	or     %ah,0x0(%rbp,%rbx,1)
  1c:	04 34                	add    $0x34,%al
  1e:	1e                   	(bad)
  1f:	00 00                	add    %al,(%rax)
  21:	00 00                	add    %al,(%rax)
  23:	00 34 00             	add    %dh,(%rax,%rax,1)
  26:	00 00                	add    %al,(%rax)
  28:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$6$??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	34 00                	xor    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	24 02                	and    $0x2,%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$8$??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	0e                   	(bad)
   3:	00 00                	add    %al,(%rax)
   5:	88 0a                	mov    %cl,(%rdx)
   7:	00 00                	add    %al,(%rax)
   9:	78 0b                	js     16 <$chain$8$??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z+0x16>
   b:	00 00                	add    %al,(%rax)
   d:	68 0c 00 00 e4       	push   $0xffffffffe400000c
  12:	1b 00                	sbb    (%rax),%eax
  14:	00 d4                	add    %dl,%ah
  16:	1c 00                	sbb    $0x0,%al
  18:	00 64 1d 00          	add    %ah,0x0(%rbp,%rbx,1)
  1c:	00 34 1e             	add    %dh,(%rsi,%rbx,1)
  1f:	00 00                	add    %al,(%rax)
  21:	00 00                	add    %al,(%rax)
  23:	00 34 00             	add    %dh,(%rax,%rax,1)
  26:	00 00                	add    %al,(%rax)
  28:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$8$??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	24 02                	and    $0x2,%al
   2:	00 00                	add    %al,(%rax)
   4:	43 04 00             	rex.XB add $0x0,%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$9$??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	34 00                	xor    $0x0,%al
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$9$??$dispatch_count@$0BF@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	43 04 00             	rex.XB add $0x0,%al
   3:	00 7b 04             	add    %bh,0x4(%rbx)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	01 04 01             	add    %eax,(%rcx,%rax,1)
   3:	00 04 a2             	add    %al,(%rdx,%riz,4)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$dispatch_count@$0BH@$00@?A0x5752bc9f@@YAXPEBX0_K1HPEBQEBXHPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	5a                   	pop    %rdx
   5:	01 00                	add    %eax,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 67 21             	add    %esp,0x21(%rdi)
   3:	00 5e f8             	add    %bl,-0x8(%rsi)
   6:	07                   	(bad)
   7:	00 58 e8             	add    %bl,-0x18(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	50                   	push   %rax
   d:	d8 09                	fmuls  (%rcx)
   f:	00 48 c8             	add    %cl,-0x38(%rax)
  12:	0a 00                	or     (%rax),%al
  14:	40 b8 0b 00 38 a8    	rex mov $0xa838000b,%eax
  1a:	0c 00                	or     $0x0,%al
  1c:	33 98 0d 00 2e 88    	xor    -0x77d1fff3(%rax),%ebx
  22:	0e                   	(bad)
  23:	00 29                	add    %ch,(%rcx)
  25:	78 0f                	js     36 <$unwind$??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x36>
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	10 00                	adc    %al,(%rax)
  2c:	1f                   	(bad)
  2d:	74 2a                	je     59 <@vol.md+0x56>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 29 00             	sub    %eax,%fs:(%rax)
  34:	1f                   	(bad)
  35:	34 28                	xor    $0x28,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 22                	add    %esp,(%rdx)
  3b:	00 18                	add    %bl,(%rax)
  3d:	f0 16                	lock (bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BG@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	97                   	xchg   %eax,%edi
   5:	03 00                	add    (%rax),%eax
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 69 21             	add    %ebp,0x21(%rcx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	0a 00                	or     (%rax),%al
   8:	58                   	pop    %rax
   9:	e8 0b 00 50 d8       	call   ffffffffd8500019 <@feat.00+0xffffffff584efe89>
   e:	0c 00                	or     $0x0,%al
  10:	48 c8 0d 00 40       	rex.W enter $0xd,$0x40
  15:	b8 0e 00 38 a8       	mov    $0xa838000e,%eax
  1a:	0f 00                	(bad)
  1c:	33 98 10 00 2e 88    	xor    -0x77d1fff0(%rax),%ebx
  22:	11 00                	adc    %eax,(%rax)
  24:	29 78 12             	sub    %edi,0x12(%rax)
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	13 00                	adc    (%rax),%eax
  2c:	1f                   	(bad)
  2d:	74 30                	je     5f <@vol.md+0x5c>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 2f                	fs (bad)
  33:	00 1f                	add    %bl,(%rdi)
  35:	34 2e                	xor    $0x2e,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 28                	add    %ebp,(%rax)
  3b:	00 18                	add    %bl,(%rax)
  3d:	f0 16                	lock (bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BG@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	12 04 00             	adc    (%rax,%rax,1),%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BG@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 0a                	add    %ecx,(%rdx)
   2:	03 00                	add    (%rax),%eax
   4:	0a c2                	or     %dl,%al
   6:	06                   	(bad)
   7:	e0 04                	loopne d <@vol.md+0xa>
   9:	60                   	(bad)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BG@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	56                   	push   %rsi
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$3$??$apply_rows@$0BG@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 1c 08             	and    %ebx,(%rax,%rcx,1)
   3:	00 1c f4             	add    %bl,(%rsp,%rsi,8)
   6:	0a 00                	or     (%rax),%al
   8:	15 74 0b 00 09       	adc    $0x9000b74,%eax
   d:	54                   	push   %rsp
   e:	0c 00                	or     $0x0,%al
  10:	04 34                	add    $0x34,%al
  12:	11 00                	adc    %eax,(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	56                   	push   %rsi
  19:	00 00                	add    %al,(%rax)
  1b:	00 00                	add    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$3$??$apply_rows@$0BG@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	56                   	push   %rsi
   1:	00 00                	add    %al,(%rax)
   3:	00 f8                	add    %bh,%al
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$4$??$apply_rows@$0BG@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	56                   	push   %rsi
   9:	00 00                	add    %al,(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$4$??$apply_rows@$0BG@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	f8                   	clc
   1:	00 00                	add    %al,(%rax)
   3:	00 00                	add    %al,(%rax)
   5:	01 00                	add    %eax,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	19 7a 21             	sbb    %edi,0x21(%rdx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	15 00 58 e8 16       	adc    $0x16e85800,%eax
   b:	00 50 d8             	add    %dl,-0x28(%rax)
   e:	17                   	(bad)
   f:	00 48 c8             	add    %cl,-0x38(%rax)
  12:	18 00                	sbb    %al,(%rax)
  14:	40 b8 19 00 38 a8    	rex mov $0xa8380019,%eax
  1a:	1a 00                	sbb    (%rax),%al
  1c:	33 98 1b 00 2e 88    	xor    -0x77d1ffe5(%rax),%ebx
  22:	1c 00                	sbb    $0x0,%al
  24:	29 78 1d             	sub    %edi,0x1d(%rax)
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	1e                   	(bad)
  2b:	00 1f                	add    %bl,(%rdi)
  2d:	74 46                	je     75 <@vol.md+0x72>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 45 00 1f          	add    %r11b,%fs:(%r15)
  35:	34 44                	xor    $0x44,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 3e                	add    %edi,(%rsi)
  3b:	00 18                	add    %bl,(%rax)
  3d:	f0 16                	lock (bad)
  3f:	e0 14                	loopne 55 <$unwind$??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x55>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
  46:	00 00                	add    %al,(%rax)
  48:	00 00                	add    %al,(%rax)
  4a:	00 00                	add    %al,(%rax)
  4c:	24 01                	and    $0x1,%al
  4e:	00 00                	add    %al,(%rax)
  50:	20 00                	and    %al,(%rax)
  52:	00 00                	add    %al,(%rax)
  54:	20 00                	and    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	de 05 00 00 00 00    	fiadds 0x0(%rip)        # a <$pdata$??$apply_rows@$0BG@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xa>
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 59 1d             	add    %ebx,0x1d(%rcx)
   3:	00 50 d8             	add    %dl,-0x28(%rax)
   6:	09 00                	or     %eax,(%rax)
   8:	48 c8 0a 00 40       	rex.W enter $0xa,$0x40
   d:	b8 0b 00 38 a8       	mov    $0xa838000b,%eax
  12:	0c 00                	or     $0x0,%al
  14:	33 98 0d 00 2e 88    	xor    -0x77d1fff3(%rax),%ebx
  1a:	0e                   	(bad)
  1b:	00 29                	add    %ch,(%rcx)
  1d:	78 0f                	js     2e <$unwind$??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x2e>
  1f:	00 24 68             	add    %ah,(%rax,%rbp,2)
  22:	10 00                	adc    %al,(%rax)
  24:	1f                   	(bad)
  25:	74 2a                	je     51 <@vol.md+0x4e>
  27:	00 1f                	add    %bl,(%rdi)
  29:	64 29 00             	sub    %eax,%fs:(%rax)
  2c:	1f                   	(bad)
  2d:	34 28                	xor    $0x28,%al
  2f:	00 1f                	add    %bl,(%rdi)
  31:	01 22                	add    %esp,(%rdx)
  33:	00 18                	add    %bl,(%rax)
  35:	f0 16                	lock (bad)
  37:	e0 14                	loopne 4d <@vol.md+0x4a>
  39:	d0 12                	rclb   $1,(%rdx)
  3b:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BF@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	c7 03 00 00 00 00    	movl   $0x0,(%rbx)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BF@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 06                	add    %eax,(%rsi)
   2:	02 00                	add    (%rax),%al
   4:	06                   	(bad)
   5:	92                   	xchg   %eax,%edx
   6:	02 e0                	add    %al,%ah

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BF@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	3b 00                	cmp    (%rax),%eax
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$4$??$apply_rows@$0BF@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 2d 0a 00 2d f4    	and    %ebp,-0xbd2fff6(%rip)        # fffffffff42d0010 <@feat.00+0xffffffff742bfe80>
   6:	08 00                	or     %al,(%rax)
   8:	25 74 09 00 18       	and    $0x18000974,%eax
   d:	64 0e                	fs (bad)
   f:	00 0b                	add    %cl,(%rbx)
  11:	54                   	push   %rsp
  12:	0d 00 05 34 0c       	or     $0xc340500,%eax
  17:	00 00                	add    %al,(%rax)
  19:	00 00                	add    %al,(%rax)
  1b:	00 3b                	add    %bh,(%rbx)
  1d:	00 00                	add    %al,(%rax)
  1f:	00 00                	add    %al,(%rax)
  21:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$4$??$apply_rows@$0BF@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	3b 00                	cmp    (%rax),%eax
   2:	00 00                	add    %al,(%rax)
   4:	da 00                	fiaddl (%rax)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$5$??$apply_rows@$0BF@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	3b 00                	cmp    (%rax),%eax
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$5$??$apply_rows@$0BF@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	da 00                	fiaddl (%rax)
   2:	00 00                	add    %al,(%rax)
   4:	e1 00                	loope  6 <$pdata$5$??$apply_rows@$0BF@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x6>
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BF@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 0a                	add    %ecx,(%rdx)
   2:	03 00                	add    (%rax),%eax
   4:	0a c2                	or     %dl,%al
   6:	06                   	(bad)
   7:	e0 04                	loopne d <@vol.md+0xa>
   9:	60                   	(bad)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BF@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	56                   	push   %rsi
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$3$??$apply_rows@$0BF@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 1c 08             	and    %ebx,(%rax,%rcx,1)
   3:	00 1c f4             	add    %bl,(%rsp,%rsi,8)
   6:	0a 00                	or     (%rax),%al
   8:	15 74 0b 00 09       	adc    $0x9000b74,%eax
   d:	54                   	push   %rsp
   e:	0c 00                	or     $0x0,%al
  10:	04 34                	add    $0x34,%al
  12:	11 00                	adc    %eax,(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	56                   	push   %rsi
  19:	00 00                	add    %al,(%rax)
  1b:	00 00                	add    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$3$??$apply_rows@$0BF@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	56                   	push   %rsi
   1:	00 00                	add    %al,(%rax)
   3:	00 f8                	add    %bh,%al
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$4$??$apply_rows@$0BF@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	56                   	push   %rsi
   9:	00 00                	add    %al,(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$4$??$apply_rows@$0BF@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	f8                   	clc
   1:	00 00                	add    %al,(%rax)
   3:	00 00                	add    %al,(%rax)
   5:	01 00                	add    %eax,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	19 19                	sbb    %ebx,(%rcx)
   2:	03 00                	add    (%rax),%eax
   4:	0a e2                	or     %dl,%ah
   6:	06                   	(bad)
   7:	e0 04                	loopne d <$unwind$??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xd>
   9:	60                   	(bad)
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	50                   	push   %rax
  11:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	56                   	push   %rsi
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$3$??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 1c 08             	and    %ebx,(%rax,%rcx,1)
   3:	00 1c f4             	add    %bl,(%rsp,%rsi,8)
   6:	0c 00                	or     $0x0,%al
   8:	15 74 0d 00 09       	adc    $0x9000d74,%eax
   d:	54                   	push   %rsp
   e:	0e                   	(bad)
   f:	00 04 34             	add    %al,(%rsp,%rsi,1)
  12:	13 00                	adc    (%rax),%eax
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	56                   	push   %rsi
  19:	00 00                	add    %al,(%rax)
  1b:	00 00                	add    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$3$??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	56                   	push   %rsi
   1:	00 00                	add    %al,(%rax)
   3:	00 0b                	add    %cl,(%rbx)
   5:	01 00                	add    %eax,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$4$??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	56                   	push   %rsi
   9:	00 00                	add    %al,(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$4$??$apply_rows@$0BF@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	0b 01                	or     (%rcx),%eax
   2:	00 00                	add    %al,(%rax)
   4:	23 01                	and    (%rcx),%eax
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 47 19             	add    %eax,0x19(%rdi)
   3:	00 3e                	add    %bh,(%rsi)
   5:	b8 04 00 38 a8       	mov    $0xa8380004,%eax
   a:	05 00 33 98 06       	add    $0x6983300,%eax
   f:	00 2e                	add    %ch,(%rsi)
  11:	88 07                	mov    %al,(%rdi)
  13:	00 29                	add    %ch,(%rcx)
  15:	78 08                	js     1f <$unwind$??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x1f>
  17:	00 24 68             	add    %ah,(%rax,%rbp,2)
  1a:	09 00                	or     %eax,(%rax)
  1c:	1f                   	(bad)
  1d:	74 1c                	je     3b <@vol.md+0x38>
  1f:	00 1f                	add    %bl,(%rdi)
  21:	64 1b 00             	sbb    %fs:(%rax),%eax
  24:	1f                   	(bad)
  25:	34 1a                	xor    $0x1a,%al
  27:	00 1f                	add    %bl,(%rdi)
  29:	01 14 00             	add    %edx,(%rax,%rax,1)
  2c:	18 f0                	sbb    %dh,%al
  2e:	16                   	(bad)
  2f:	e0 14                	loopne 45 <@vol.md+0x42>
  31:	d0 12                	rclb   $1,(%rdx)
  33:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BH@$00$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	88 02                	mov    %al,(%rdx)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 65 21             	add    %esp,0x21(%rbp)
   3:	00 5c f8 06          	add    %bl,0x6(%rax,%rdi,8)
   7:	00 56 e8             	add    %dl,-0x18(%rsi)
   a:	07                   	(bad)
   b:	00 50 d8             	add    %dl,-0x28(%rax)
   e:	08 00                	or     %al,(%rax)
  10:	48 c8 09 00 40       	rex.W enter $0x9,$0x40
  15:	b8 0a 00 38 a8       	mov    $0xa838000a,%eax
  1a:	0b 00                	or     (%rax),%eax
  1c:	33 98 0c 00 2e 88    	xor    -0x77d1fff4(%rax),%ebx
  22:	0d 00 29 78 0e       	or     $0xe782900,%eax
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	0f 00 1f             	ltr    (%rdi)
  2d:	74 28                	je     57 <@vol.md+0x54>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 27                	fs (bad)
  33:	00 1f                	add    %bl,(%rdi)
  35:	34 26                	xor    $0x26,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 20                	add    %esp,(%rax)
  3b:	00 18                	add    %bl,(%rax)
  3d:	f0 16                	lock (bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BH@$01$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	4f 03 00             	rex.WRXB add (%r8),%r8
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 69 21             	add    %ebp,0x21(%rcx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	08 00                	or     %al,(%rax)
   8:	58                   	pop    %rax
   9:	e8 09 00 50 d8       	call   ffffffffd8500017 <@feat.00+0xffffffff584efe87>
   e:	0a 00                	or     (%rax),%al
  10:	48 c8 0b 00 40       	rex.W enter $0xb,$0x40
  15:	b8 0c 00 38 a8       	mov    $0xa838000c,%eax
  1a:	0d 00 33 98 0e       	or     $0xe983300,%eax
  1f:	00 2e                	add    %ch,(%rsi)
  21:	88 0f                	mov    %cl,(%rdi)
  23:	00 29                	add    %ch,(%rcx)
  25:	78 10                	js     37 <$unwind$??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x37>
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	11 00                	adc    %eax,(%rax)
  2c:	1f                   	(bad)
  2d:	74 2c                	je     5b <@vol.md+0x58>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 2b 00             	sub    %fs:(%rax),%eax
  34:	1f                   	(bad)
  35:	34 2a                	xor    $0x2a,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 24 00             	add    %esp,(%rax,%rax,1)
  3c:	18 f0                	sbb    %dh,%al
  3e:	16                   	(bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BH@$02$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	c7 03 00 00 00 00    	movl   $0x0,(%rbx)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	19 7a 21             	sbb    %edi,0x21(%rdx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	11 00                	adc    %eax,(%rax)
   8:	58                   	pop    %rax
   9:	e8 12 00 50 d8       	call   ffffffffd8500020 <@feat.00+0xffffffff584efe90>
   e:	13 00                	adc    (%rax),%eax
  10:	48 c8 14 00 40       	rex.W enter $0x14,$0x40
  15:	b8 15 00 38 a8       	mov    $0xa8380015,%eax
  1a:	16                   	(bad)
  1b:	00 33                	add    %dh,(%rbx)
  1d:	98                   	cwtl
  1e:	17                   	(bad)
  1f:	00 2e                	add    %ch,(%rsi)
  21:	88 18                	mov    %bl,(%rax)
  23:	00 29                	add    %ch,(%rcx)
  25:	78 19                	js     40 <$unwind$??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x40>
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	1a 00                	sbb    (%rax),%al
  2c:	1f                   	(bad)
  2d:	74 3e                	je     6d <@vol.md+0x6a>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 3d 00 1f 34 3c    	fs cmp $0x3c341f00,%eax
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 36                	add    %esi,(%rsi)
  3b:	00 18                	add    %bl,(%rax)
  3d:	f0 16                	lock (bad)
  3f:	e0 14                	loopne 55 <$unwind$??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x55>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
  46:	00 00                	add    %al,(%rax)
  48:	00 00                	add    %al,(%rax)
  4a:	00 00                	add    %al,(%rax)
  4c:	e4 00                	in     $0x0,%al
  4e:	00 00                	add    %al,(%rax)
  50:	20 00                	and    %al,(%rax)
  52:	00 00                	add    %al,(%rax)
  54:	20 00                	and    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BH@$03$0A@@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	cc                   	int3
   5:	04 00                	add    $0x0,%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 5e 1d             	add    %ebx,0x1d(%rsi)
   3:	00 55 e8             	add    %dl,-0x18(%rbp)
   6:	0e                   	(bad)
   7:	00 4d d8             	add    %cl,-0x28(%rbp)
   a:	0f 00 45 c8          	sldt   -0x38(%rbp)
   e:	10 00                	adc    %al,(%rax)
  10:	3d b8 11 00 35       	cmp    $0x350011b8,%eax
  15:	a8 12                	test   $0x12,%al
  17:	00 2d 98 13 00 28    	add    %ch,0x28001398(%rip)        # 280013b5 <@comp.id+0x26fa8a1d>
  1d:	88 14 00             	mov    %dl,(%rax,%rax,1)
  20:	23 78 15             	and    0x15(%rax),%edi
  23:	00 1e                	add    %bl,(%rsi)
  25:	68 16 00 19 34       	push   $0x34190016
  2a:	36 00 19             	ss add %bl,(%rcx)
  2d:	01 2e                	add    %ebp,(%rsi)
  2f:	00 12                	add    %dl,(%rdx)
  31:	f0 10 e0             	lock adc %ah,%al
  34:	0e                   	(bad)
  35:	d0 0c c0             	rorb   $1,(%rax,%rax,8)
  38:	0a 70 09             	or     0x9(%rax),%dh
  3b:	60                   	(bad)
  3c:	08 50 00             	or     %dl,0x0(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BG@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	0f 04                	(bad)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 66 1f             	add    %esp,0x1f(%rsi)
   3:	00 5d f8             	add    %bl,-0x8(%rbp)
   6:	10 00                	adc    %al,(%rax)
   8:	55                   	push   %rbp
   9:	e8 11 00 4d d8       	call   ffffffffd84d001f <@feat.00+0xffffffff584bfe8f>
   e:	12 00                	adc    (%rax),%al
  10:	45 c8 13 00 3d       	rex.RB enter $0x13,$0x3d
  15:	b8 14 00 35 a8       	mov    $0xa8350014,%eax
  1a:	15 00 2d 98 16       	adc    $0x16982d00,%eax
  1f:	00 28                	add    %ch,(%rax)
  21:	88 17                	mov    %dl,(%rdi)
  23:	00 23                	add    %ah,(%rbx)
  25:	78 18                	js     3f <$unwind$??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3f>
  27:	00 1e                	add    %bl,(%rsi)
  29:	68 19 00 19 34       	push   $0x34190019
  2e:	3c 00                	cmp    $0x0,%al
  30:	19 01                	sbb    %eax,(%rcx)
  32:	34 00                	xor    $0x0,%al
  34:	12 f0                	adc    %al,%dh
  36:	10 e0                	adc    %ah,%al
  38:	0e                   	(bad)
  39:	d0 0c c0             	rorb   $1,(%rax,%rax,8)
  3c:	0a 70 09             	or     0x9(%rax),%dh
  3f:	60                   	(bad)
  40:	08 50 00             	or     %dl,0x0(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BG@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	c3                   	ret
   5:	04 00                	add    $0x0,%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 0f                	add    %ecx,(%rdi)
   2:	05 00 0f 01 18       	add    $0x18010f00,%eax
   7:	00 08                	add    %cl,(%rax)
   9:	f0 06                	lock (bad)
   b:	e0 04                	loopne 11 <@vol.md+0xe>
   d:	50                   	push   %rax
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	64 00 00             	add    %al,%fs:(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$7$??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 59 10             	and    %ebx,0x10(%rcx)
   3:	00 59 88             	add    %bl,-0x78(%rcx)
   6:	06                   	(bad)
   7:	00 37                	add    %dh,(%rdi)
   9:	78 07                	js     12 <$chain$7$??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x12>
   b:	00 31                	add    %dh,(%rcx)
   d:	68 08 00 23 d4       	push   $0xffffffffd4230008
  12:	13 00                	adc    (%rax),%eax
  14:	1c c4                	sbb    $0xc4,%al
  16:	14 00                	adc    $0x0,%al
  18:	10 74 15 00          	adc    %dh,0x0(%rbp,%rdx,1)
  1c:	09 64 16 00          	or     %esp,0x0(%rsi,%rdx,1)
  20:	04 34                	add    $0x34,%al
  22:	17                   	(bad)
  23:	00 00                	add    %al,(%rax)
  25:	00 00                	add    %al,(%rax)
  27:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
  2b:	00 00                	add    %al,(%rax)
  2d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$7$??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	64 00 00             	add    %al,%fs:(%rax)
   3:	00 c0                	add    %al,%al
   5:	01 00                	add    %eax,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$8$??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	64 00 00             	add    %al,%fs:(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$8$??$apply_rows@$0BG@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	c0 01 00             	rolb   $0x0,(%rcx)
   3:	00 cd                	add    %cl,%ch
   5:	01 00                	add    %eax,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	19 77 1f             	sbb    %esi,0x1f(%rdi)
   3:	00 5d f8             	add    %bl,-0x8(%rbp)
   6:	17                   	(bad)
   7:	00 55 e8             	add    %dl,-0x18(%rbp)
   a:	18 00                	sbb    %al,(%rax)
   c:	4d d8 19             	rex.WRB fcomps (%r9)
   f:	00 45 c8             	add    %al,-0x38(%rbp)
  12:	1a 00                	sbb    (%rax),%al
  14:	3d b8 1b 00 35       	cmp    $0x35001bb8,%eax
  19:	a8 1c                	test   $0x1c,%al
  1b:	00 2d 98 1d 00 28    	add    %ch,0x28001d98(%rip)        # 28001db9 <@comp.id+0x26fa9421>
  21:	88 1e                	mov    %bl,(%rsi)
  23:	00 23                	add    %ah,(%rbx)
  25:	78 1f                	js     46 <$unwind$??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x46>
  27:	00 1e                	add    %bl,(%rsi)
  29:	68 20 00 19 34       	push   $0x34190020
  2e:	4a 00 19             	rex.WX add %bl,(%rcx)
  31:	01 42 00             	add    %eax,0x0(%rdx)
  34:	12 f0                	adc    %al,%dh
  36:	10 e0                	adc    %ah,%al
  38:	0e                   	(bad)
  39:	d0 0c c0             	rorb   $1,(%rax,%rax,8)
  3c:	0a 70 09             	or     0x9(%rax),%dh
  3f:	60                   	(bad)
  40:	08 50 00             	or     %dl,0x0(%rax)
  43:	00 00                	add    %al,(%rax)
  45:	00 00                	add    %al,(%rax)
  47:	00 24 01             	add    %ah,(%rcx,%rax,1)
  4a:	00 00                	add    %al,(%rax)
  4c:	40 00 00             	rex add %al,(%rax)
  4f:	00 20                	add    %ah,(%rax)
  51:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BG@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	5e                   	pop    %rsi
   5:	06                   	(bad)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 4e 19             	add    %ecx,0x19(%rsi)
   3:	00 45 c8             	add    %al,-0x38(%rbp)
   6:	10 00                	adc    %al,(%rax)
   8:	3d b8 11 00 35       	cmp    $0x350011b8,%eax
   d:	a8 12                	test   $0x12,%al
   f:	00 2d 98 13 00 28    	add    %ch,0x28001398(%rip)        # 280013ad <@comp.id+0x26fa8a15>
  15:	88 14 00             	mov    %dl,(%rax,%rax,1)
  18:	23 78 15             	and    0x15(%rax),%edi
  1b:	00 1e                	add    %bl,(%rsi)
  1d:	68 16 00 19 34       	push   $0x34190016
  22:	36 00 19             	ss add %bl,(%rcx)
  25:	01 2e                	add    %ebp,(%rsi)
  27:	00 12                	add    %dl,(%rdx)
  29:	f0 10 e0             	lock adc %ah,%al
  2c:	0e                   	(bad)
  2d:	d0 0c c0             	rorb   $1,(%rax,%rax,8)
  30:	0a 70 09             	or     0x9(%rax),%dh
  33:	60                   	(bad)
  34:	08 50 00             	or     %dl,0x0(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BF@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	55                   	push   %rbp
   5:	04 00                	add    $0x0,%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 0b                	add    %ecx,(%rbx)
   2:	04 00                	add    $0x0,%al
   4:	0b 01                	or     (%rcx),%eax
   6:	11 00                	adc    %eax,(%rax)
   8:	04 e0                	add    $0xe0,%al
   a:	02                   	.byte 0x2
   b:	50                   	push   %rax

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	46 00 00             	rex.RX add %r8b,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$8$??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 77 12             	and    %esi,0x12(%rdi)
   3:	00 77 88             	add    %dh,-0x78(%rdi)
   6:	04 00                	add    $0x0,%al
   8:	55                   	push   %rbp
   9:	78 05                	js     10 <$chain$8$??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x10>
   b:	00 4f 68             	add    %cl,0x68(%rdi)
   e:	06                   	(bad)
   f:	00 41 f4             	add    %al,-0xc(%rcx)
  12:	0e                   	(bad)
  13:	00 3c d4             	add    %bh,(%rsp,%rdx,8)
  16:	0f 00 2c c4          	verw   (%rsp,%rax,8)
  1a:	10 00                	adc    %al,(%rax)
  1c:	1c 74                	sbb    $0x74,%al
  1e:	16                   	(bad)
  1f:	00 11                	add    %dl,(%rcx)
  21:	64 15 00 08 34 14    	fs adc $0x14340800,%eax
  27:	00 00                	add    %al,(%rax)
  29:	00 00                	add    %al,(%rax)
  2b:	00 46 00             	add    %al,0x0(%rsi)
  2e:	00 00                	add    %al,(%rax)
  30:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$8$??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	46 00 00             	rex.RX add %r8b,(%rax)
   3:	00 9a 01 00 00 00    	add    %bl,0x1(%rdx)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$9$??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	46 00 00             	rex.RX add %r8b,(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$9$??$apply_rows@$0BF@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	9a                   	(bad)
   1:	01 00                	add    %eax,(%rax)
   3:	00 a5 01 00 00 00    	add    %ah,0x1(%rbp)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 0f                	add    %ecx,(%rdi)
   2:	05 00 0f 01 18       	add    $0x18010f00,%eax
   7:	00 08                	add    %cl,(%rax)
   9:	f0 06                	lock (bad)
   b:	e0 04                	loopne 11 <@vol.md+0xe>
   d:	50                   	push   %rax
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	64 00 00             	add    %al,%fs:(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$7$??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 59 10             	and    %ebx,0x10(%rcx)
   3:	00 59 88             	add    %bl,-0x78(%rcx)
   6:	06                   	(bad)
   7:	00 37                	add    %dh,(%rdi)
   9:	78 07                	js     12 <$chain$7$??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x12>
   b:	00 31                	add    %dh,(%rcx)
   d:	68 08 00 23 d4       	push   $0xffffffffd4230008
  12:	13 00                	adc    (%rax),%eax
  14:	1c c4                	sbb    $0xc4,%al
  16:	14 00                	adc    $0x0,%al
  18:	10 74 15 00          	adc    %dh,0x0(%rbp,%rdx,1)
  1c:	09 64 16 00          	or     %esp,0x0(%rsi,%rdx,1)
  20:	04 34                	add    $0x34,%al
  22:	17                   	(bad)
  23:	00 00                	add    %al,(%rax)
  25:	00 00                	add    %al,(%rax)
  27:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
  2b:	00 00                	add    %al,(%rax)
  2d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$7$??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	64 00 00             	add    %al,%fs:(%rax)
   3:	00 c0                	add    %al,%al
   5:	01 00                	add    %eax,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$8$??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	64 00 00             	add    %al,%fs:(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$8$??$apply_rows@$0BF@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	c0 01 00             	rolb   $0x0,(%rcx)
   3:	00 cd                	add    %cl,%ch
   5:	01 00                	add    %eax,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	19 1e                	sbb    %ebx,(%rsi)
   2:	05 00 0f 01 1a       	add    $0x1a010f00,%eax
   7:	00 08                	add    %cl,(%rax)
   9:	f0 06                	lock (bad)
   b:	e0 04                	loopne 11 <$unwind$??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x11>
   d:	50                   	push   %rax
   e:	00 00                	add    %al,(%rax)
  10:	00 00                	add    %al,(%rax)
  12:	00 00                	add    %al,(%rax)
  14:	60                   	(bad)
  15:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	63 00                	movsxd (%rax),%eax
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$7$??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 59 10             	and    %ebx,0x10(%rcx)
   3:	00 59 88             	add    %bl,-0x78(%rcx)
   6:	07                   	(bad)
   7:	00 37                	add    %dh,(%rdi)
   9:	78 08                	js     13 <$chain$7$??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x13>
   b:	00 31                	add    %dh,(%rcx)
   d:	68 09 00 23 d4       	push   $0xffffffffd4230009
  12:	15 00 1c c4 16       	adc    $0x16c41c00,%eax
  17:	00 10                	add    %dl,(%rax)
  19:	74 17                	je     32 <@vol.md+0x2f>
  1b:	00 09                	add    %cl,(%rcx)
  1d:	64 18 00             	sbb    %al,%fs:(%rax)
  20:	04 34                	add    $0x34,%al
  22:	19 00                	sbb    %eax,(%rax)
  24:	00 00                	add    %al,(%rax)
  26:	00 00                	add    %al,(%rax)
  28:	63 00                	movsxd (%rax),%eax
  2a:	00 00                	add    %al,(%rax)
  2c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$7$??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	63 00                	movsxd (%rax),%eax
   2:	00 00                	add    %al,(%rax)
   4:	ed                   	in     (%dx),%eax
   5:	01 00                	add    %eax,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$chain$8$??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	21 00                	and    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	63 00                	movsxd (%rax),%eax
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$8$??$apply_rows@$0BF@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	ed                   	in     (%dx),%eax
   1:	01 00                	add    %eax,(%rax)
   3:	00 0a                	add    %cl,(%rdx)
   5:	02 00                	add    (%rax),%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 5f 1f             	add    %ebx,0x1f(%rdi)
   3:	00 56 e8             	add    %dl,-0x18(%rsi)
   6:	07                   	(bad)
   7:	00 50 d8             	add    %dl,-0x28(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	48 c8 09 00 40       	rex.W enter $0x9,$0x40
  11:	b8 0a 00 38 a8       	mov    $0xa838000a,%eax
  16:	0b 00                	or     (%rax),%eax
  18:	33 98 0c 00 2e 88    	xor    -0x77d1fff4(%rax),%ebx
  1e:	0d 00 29 78 0e       	or     $0xe782900,%eax
  23:	00 24 68             	add    %ah,(%rax,%rbp,2)
  26:	0f 00 1f             	ltr    (%rdi)
  29:	74 28                	je     53 <@vol.md+0x50>
  2b:	00 1f                	add    %bl,(%rdi)
  2d:	64 27                	fs (bad)
  2f:	00 1f                	add    %bl,(%rdi)
  31:	34 26                	xor    $0x26,%al
  33:	00 1f                	add    %bl,(%rdi)
  35:	01 20                	add    %esp,(%rax)
  37:	00 18                	add    %bl,(%rax)
  39:	f0 16                	lock (bad)
  3b:	e0 14                	loopne 51 <@vol.md+0x4e>
  3d:	d0 12                	rclb   $1,(%rdx)
  3f:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BH@$00$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	5c                   	pop    %rsp
   5:	04 00                	add    $0x0,%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 69 21             	add    %ebp,0x21(%rcx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	0a 00                	or     (%rax),%al
   8:	58                   	pop    %rax
   9:	e8 0b 00 50 d8       	call   ffffffffd8500019 <@feat.00+0xffffffff584efe89>
   e:	0c 00                	or     $0x0,%al
  10:	48 c8 0d 00 40       	rex.W enter $0xd,$0x40
  15:	b8 0e 00 38 a8       	mov    $0xa838000e,%eax
  1a:	0f 00                	(bad)
  1c:	33 98 10 00 2e 88    	xor    -0x77d1fff0(%rax),%ebx
  22:	11 00                	adc    %eax,(%rax)
  24:	29 78 12             	sub    %edi,0x12(%rax)
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	13 00                	adc    (%rax),%eax
  2c:	1f                   	(bad)
  2d:	74 30                	je     5f <@vol.md+0x5c>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 2f                	fs (bad)
  33:	00 1f                	add    %bl,(%rdi)
  35:	34 2e                	xor    $0x2e,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 28                	add    %ebp,(%rax)
  3b:	00 18                	add    %bl,(%rax)
  3d:	f0 16                	lock (bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	85 05 00 00 00 00    	test   %eax,0x0(%rip)        # a <$pdata$??$apply_rows@$0BH@$01$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0xa>
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	01 69 21             	add    %ebp,0x21(%rcx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	10 00                	adc    %al,(%rax)
   8:	58                   	pop    %rax
   9:	e8 11 00 50 d8       	call   ffffffffd850001f <@feat.00+0xffffffff584efe8f>
   e:	12 00                	adc    (%rax),%al
  10:	48 c8 13 00 40       	rex.W enter $0x13,$0x40
  15:	b8 14 00 38 a8       	mov    $0xa8380014,%eax
  1a:	15 00 33 98 16       	adc    $0x16983300,%eax
  1f:	00 2e                	add    %ch,(%rsi)
  21:	88 17                	mov    %dl,(%rdi)
  23:	00 29                	add    %ch,(%rcx)
  25:	78 18                	js     3f <$unwind$??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x3f>
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	19 00                	sbb    %eax,(%rax)
  2c:	1f                   	(bad)
  2d:	74 3c                	je     6b <@vol.md+0x68>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 3b 00             	cmp    %fs:(%rax),%eax
  34:	1f                   	(bad)
  35:	34 3a                	xor    $0x3a,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 34 00             	add    %esi,(%rax,%rax,1)
  3c:	18 f0                	sbb    %dh,%al
  3e:	16                   	(bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BH@$02$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	c1 06 00             	roll   $0x0,(%rsi)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	19 77 1f             	sbb    %esi,0x1f(%rdi)
   3:	00 5d f8             	add    %bl,-0x8(%rbp)
   6:	13 00                	adc    (%rax),%eax
   8:	55                   	push   %rbp
   9:	e8 14 00 4d d8       	call   ffffffffd84d0022 <@feat.00+0xffffffff584bfe92>
   e:	15 00 45 c8 16       	adc    $0x16c84500,%eax
  13:	00 3d b8 17 00 35    	add    %bh,0x350017b8(%rip)        # 350017d1 <@comp.id+0x33fa8e39>
  19:	a8 18                	test   $0x18,%al
  1b:	00 2d 98 19 00 28    	add    %ch,0x28001998(%rip)        # 280019b9 <@comp.id+0x26fa9021>
  21:	88 1a                	mov    %bl,(%rdx)
  23:	00 23                	add    %ah,(%rbx)
  25:	78 1b                	js     42 <$unwind$??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z+0x42>
  27:	00 1e                	add    %bl,(%rsi)
  29:	68 1c 00 19 34       	push   $0x3419001c
  2e:	42 00 19             	rex.X add %bl,(%rcx)
  31:	01 3a                	add    %edi,(%rdx)
  33:	00 12                	add    %dl,(%rdx)
  35:	f0 10 e0             	lock adc %ah,%al
  38:	0e                   	(bad)
  39:	d0 0c c0             	rorb   $1,(%rax,%rax,8)
  3c:	0a 70 09             	or     0x9(%rax),%dh
  3f:	60                   	(bad)
  40:	08 50 00             	or     %dl,0x0(%rax)
  43:	00 00                	add    %al,(%rax)
  45:	00 00                	add    %al,(%rax)
  47:	00 e4                	add    %ah,%ah
  49:	00 00                	add    %al,(%rax)
  4b:	00 40 00             	add    %al,0x0(%rax)
  4e:	00 00                	add    %al,(%rax)
  50:	20 00                	and    %al,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$apply_rows@$0BH@$03$00@?A0x5752bc9f@@YAXPEBE0_K1HPEBQEBXPEBQEAMHH@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	55                   	push   %rbp
   5:	05 00 00 00 00       	add    $0x0,%eax
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 5b 1f             	add    %ebx,0x1f(%rbx)
   3:	00 52 e8             	add    %dl,-0x18(%rdx)
   6:	05 00 4c d8 06       	add    $0x6d84c00,%eax
   b:	00 46 c8             	add    %al,-0x38(%rsi)
   e:	07                   	(bad)
   f:	00 40 b8             	add    %al,-0x48(%rax)
  12:	08 00                	or     %al,(%rax)
  14:	38 a8 09 00 33 98    	cmp    %ch,-0x67ccfff7(%rax)
  1a:	0a 00                	or     (%rax),%al
  1c:	2e 88 0b             	cs mov %cl,(%rbx)
  1f:	00 29                	add    %ch,(%rcx)
  21:	78 0c                	js     2f <$unwind$??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x2f>
  23:	00 24 68             	add    %ah,(%rax,%rbp,2)
  26:	0d 00 1f 74 24       	or     $0x24741f00,%eax
  2b:	00 1f                	add    %bl,(%rdi)
  2d:	64 23 00             	and    %fs:(%rax),%eax
  30:	1f                   	(bad)
  31:	34 22                	xor    $0x22,%al
  33:	00 1f                	add    %bl,(%rdi)
  35:	01 1c 00             	add    %ebx,(%rax,%rax,1)
  38:	18 f0                	sbb    %dh,%al
  3a:	16                   	(bad)
  3b:	e0 14                	loopne 51 <@vol.md+0x4e>
  3d:	d0 12                	rclb   $1,(%rdx)
  3f:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BG@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	e6 02                	out    %al,$0x2
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 67 21             	add    %esp,0x21(%rdi)
   3:	00 5e f8             	add    %bl,-0x8(%rsi)
   6:	07                   	(bad)
   7:	00 58 e8             	add    %bl,-0x18(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	50                   	push   %rax
   d:	d8 09                	fmuls  (%rcx)
   f:	00 48 c8             	add    %cl,-0x38(%rax)
  12:	0a 00                	or     (%rax),%al
  14:	40 b8 0b 00 38 a8    	rex mov $0xa838000b,%eax
  1a:	0c 00                	or     $0x0,%al
  1c:	33 98 0d 00 2e 88    	xor    -0x77d1fff3(%rax),%ebx
  22:	0e                   	(bad)
  23:	00 29                	add    %ch,(%rcx)
  25:	78 0f                	js     36 <$unwind$??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x36>
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	10 00                	adc    %al,(%rax)
  2c:	1f                   	(bad)
  2d:	74 2a                	je     59 <@vol.md+0x56>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 29 00             	sub    %eax,%fs:(%rax)
  34:	1f                   	(bad)
  35:	34 28                	xor    $0x28,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 22                	add    %esp,(%rdx)
  3b:	00 18                	add    %bl,(%rax)
  3d:	f0 16                	lock (bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BG@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	93                   	xchg   %eax,%ebx
   5:	03 00                	add    (%rax),%eax
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 69 21             	add    %ebp,0x21(%rcx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	0c 00                	or     $0x0,%al
   8:	58                   	pop    %rax
   9:	e8 0d 00 50 d8       	call   ffffffffd850001b <@feat.00+0xffffffff584efe8b>
   e:	0e                   	(bad)
   f:	00 48 c8             	add    %cl,-0x38(%rax)
  12:	0f 00 40 b8          	sldt   -0x48(%rax)
  16:	10 00                	adc    %al,(%rax)
  18:	38 a8 11 00 33 98    	cmp    %ch,-0x67ccffef(%rax)
  1e:	12 00                	adc    (%rax),%al
  20:	2e 88 13             	cs mov %dl,(%rbx)
  23:	00 29                	add    %ch,(%rcx)
  25:	78 14                	js     3b <$unwind$??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x3b>
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	15 00 1f 74 34       	adc    $0x34741f00,%eax
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 33 00             	xor    %fs:(%rax),%eax
  34:	1f                   	(bad)
  35:	34 32                	xor    $0x32,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 2c 00             	add    %ebp,(%rax,%rax,1)
  3c:	18 f0                	sbb    %dh,%al
  3e:	16                   	(bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BG@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	46 04 00             	rex.RX add $0x0,%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 69 21             	add    %ebp,0x21(%rcx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	12 00                	adc    (%rax),%al
   8:	58                   	pop    %rax
   9:	e8 13 00 50 d8       	call   ffffffffd8500021 <@feat.00+0xffffffff584efe91>
   e:	14 00                	adc    $0x0,%al
  10:	48 c8 15 00 40       	rex.W enter $0x15,$0x40
  15:	b8 16 00 38 a8       	mov    $0xa8380016,%eax
  1a:	17                   	(bad)
  1b:	00 33                	add    %dh,(%rbx)
  1d:	98                   	cwtl
  1e:	18 00                	sbb    %al,(%rax)
  20:	2e 88 19             	cs mov %bl,(%rcx)
  23:	00 29                	add    %ch,(%rcx)
  25:	78 1a                	js     41 <$unwind$??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x41>
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	1b 00                	sbb    (%rax),%eax
  2c:	1f                   	(bad)
  2d:	74 40                	je     6f <@vol.md+0x6c>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 3f                	fs (bad)
  33:	00 1f                	add    %bl,(%rdi)
  35:	34 3e                	xor    $0x3e,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 38                	add    %edi,(%rax)
  3b:	00 18                	add    %bl,(%rax)
  3d:	f0 16                	lock (bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BG@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	1c 05                	sbb    $0x5,%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 4f 1b             	add    %ecx,0x1b(%rdi)
   3:	00 46 c8             	add    %al,-0x38(%rsi)
   6:	07                   	(bad)
   7:	00 40 b8             	add    %al,-0x48(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	38 a8 09 00 33 98    	cmp    %ch,-0x67ccfff7(%rax)
  12:	0a 00                	or     (%rax),%al
  14:	2e 88 0b             	cs mov %cl,(%rbx)
  17:	00 29                	add    %ch,(%rcx)
  19:	78 0c                	js     27 <$unwind$??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x27>
  1b:	00 24 68             	add    %ah,(%rax,%rbp,2)
  1e:	0d 00 1f 74 24       	or     $0x24741f00,%eax
  23:	00 1f                	add    %bl,(%rdi)
  25:	64 23 00             	and    %fs:(%rax),%eax
  28:	1f                   	(bad)
  29:	34 22                	xor    $0x22,%al
  2b:	00 1f                	add    %bl,(%rdi)
  2d:	01 1c 00             	add    %ebx,(%rax,%rax,1)
  30:	18 f0                	sbb    %dh,%al
  32:	16                   	(bad)
  33:	e0 14                	loopne 49 <@vol.md+0x46>
  35:	d0 12                	rclb   $1,(%rdx)
  37:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BF@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	38 03                	cmp    %al,(%rbx)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 69 21             	add    %ebp,0x21(%rcx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	08 00                	or     %al,(%rax)
   8:	58                   	pop    %rax
   9:	e8 09 00 50 d8       	call   ffffffffd8500017 <@feat.00+0xffffffff584efe87>
   e:	0a 00                	or     (%rax),%al
  10:	48 c8 0b 00 40       	rex.W enter $0xb,$0x40
  15:	b8 0c 00 38 a8       	mov    $0xa838000c,%eax
  1a:	0d 00 33 98 0e       	or     $0xe983300,%eax
  1f:	00 2e                	add    %ch,(%rsi)
  21:	88 0f                	mov    %cl,(%rdi)
  23:	00 29                	add    %ch,(%rcx)
  25:	78 10                	js     37 <$unwind$??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x37>
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	11 00                	adc    %eax,(%rax)
  2c:	1f                   	(bad)
  2d:	74 2c                	je     5b <@vol.md+0x58>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 2b 00             	sub    %fs:(%rax),%eax
  34:	1f                   	(bad)
  35:	34 2a                	xor    $0x2a,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 24 00             	add    %esp,(%rax,%rax,1)
  3c:	18 f0                	sbb    %dh,%al
  3e:	16                   	(bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BF@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	be 03 00 00 00       	mov    $0x3,%esi
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 69 21             	add    %ebp,0x21(%rcx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	0a 00                	or     (%rax),%al
   8:	58                   	pop    %rax
   9:	e8 0b 00 50 d8       	call   ffffffffd8500019 <@feat.00+0xffffffff584efe89>
   e:	0c 00                	or     $0x0,%al
  10:	48 c8 0d 00 40       	rex.W enter $0xd,$0x40
  15:	b8 0e 00 38 a8       	mov    $0xa838000e,%eax
  1a:	0f 00                	(bad)
  1c:	33 98 10 00 2e 88    	xor    -0x77d1fff0(%rax),%ebx
  22:	11 00                	adc    %eax,(%rax)
  24:	29 78 12             	sub    %edi,0x12(%rax)
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	13 00                	adc    (%rax),%eax
  2c:	1f                   	(bad)
  2d:	74 30                	je     5f <@vol.md+0x5c>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 2f                	fs (bad)
  33:	00 1f                	add    %bl,(%rdi)
  35:	34 2e                	xor    $0x2e,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 28                	add    %ebp,(%rax)
  3b:	00 18                	add    %bl,(%rax)
  3d:	f0 16                	lock (bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BF@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	32 04 00             	xor    (%rax,%rax,1),%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 69 21             	add    %ebp,0x21(%rcx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	10 00                	adc    %al,(%rax)
   8:	58                   	pop    %rax
   9:	e8 11 00 50 d8       	call   ffffffffd850001f <@feat.00+0xffffffff584efe8f>
   e:	12 00                	adc    (%rax),%al
  10:	48 c8 13 00 40       	rex.W enter $0x13,$0x40
  15:	b8 14 00 38 a8       	mov    $0xa8380014,%eax
  1a:	15 00 33 98 16       	adc    $0x16983300,%eax
  1f:	00 2e                	add    %ch,(%rsi)
  21:	88 17                	mov    %dl,(%rdi)
  23:	00 29                	add    %ch,(%rcx)
  25:	78 18                	js     3f <$unwind$??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x3f>
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	19 00                	sbb    %eax,(%rax)
  2c:	1f                   	(bad)
  2d:	74 3c                	je     6b <@vol.md+0x68>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 3b 00             	cmp    %fs:(%rax),%eax
  34:	1f                   	(bad)
  35:	34 3a                	xor    $0x3a,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 34 00             	add    %esi,(%rax,%rax,1)
  3c:	18 f0                	sbb    %dh,%al
  3e:	16                   	(bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BF@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	d6                   	udb
   5:	04 00                	add    $0x0,%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 3d 16 00 35 a8    	add    %edi,-0x57caffea(%rip)        # ffffffffa835001c <@feat.00+0xffffffff2833fe8c>
   6:	02 00                	add    (%rax),%al
   8:	30 98 03 00 2b 88    	xor    %bl,-0x77d4fffd(%rax)
   e:	04 00                	add    $0x0,%al
  10:	26 78 05             	es js  18 <$unwind$??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0x18>
  13:	00 21                	add    %ah,(%rcx)
  15:	68 06 00 1c 74       	push   $0x741c0006
  1a:	16                   	(bad)
  1b:	00 1c 64             	add    %bl,(%rsp,%riz,2)
  1e:	15 00 1c 34 14       	adc    $0x14341c00,%eax
  23:	00 1c d2             	add    %bl,(%rdx,%rdx,8)
  26:	18 f0                	sbb    %dh,%al
  28:	16                   	(bad)
  29:	e0 14                	loopne 3f <@vol.md+0x3c>
  2b:	d0 12                	rclb   $1,(%rdx)
  2d:	c0 10 50             	rclb   $0x50,(%rax)

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	e8 01 00 00 00       	call   a <$pdata$??$row_dot@$0BH@$00@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z+0xa>
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BH@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 59 1f             	add    %ebx,0x1f(%rcx)
   3:	00 50 e8             	add    %dl,-0x18(%rax)
   6:	04 00                	add    $0x0,%al
   8:	4a d8 05 00 44 c8 06 	rex.WX fadds 0x6c84400(%rip)        # 6c8440f <@comp.id+0x5c2ba77>
   f:	00 3e                	add    %bh,(%rsi)
  11:	b8 07 00 38 a8       	mov    $0xa8380007,%eax
  16:	08 00                	or     %al,(%rax)
  18:	33 98 09 00 2e 88    	xor    -0x77d1fff7(%rax),%ebx
  1e:	0a 00                	or     (%rax),%al
  20:	29 78 0b             	sub    %edi,0xb(%rax)
  23:	00 24 68             	add    %ah,(%rax,%rbp,2)
  26:	0c 00                	or     $0x0,%al
  28:	1f                   	(bad)
  29:	74 22                	je     4d <@vol.md+0x4a>
  2b:	00 1f                	add    %bl,(%rdi)
  2d:	64 21 00             	and    %eax,%fs:(%rax)
  30:	1f                   	(bad)
  31:	34 20                	xor    $0x20,%al
  33:	00 1f                	add    %bl,(%rdi)
  35:	01 1a                	add    %ebx,(%rdx)
  37:	00 18                	add    %bl,(%rax)
  39:	f0 16                	lock (bad)
  3b:	e0 14                	loopne 51 <@vol.md+0x4e>
  3d:	d0 12                	rclb   $1,(%rdx)
  3f:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BH@$01@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	94                   	xchg   %eax,%esp
   5:	02 00                	add    (%rax),%al
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 63 21             	add    %esp,0x21(%rbx)
   3:	00 5a f8             	add    %bl,-0x8(%rdx)
   6:	05 00 54 e8 06       	add    $0x6e85400,%eax
   b:	00 4e d8             	add    %cl,-0x28(%rsi)
   e:	07                   	(bad)
   f:	00 48 c8             	add    %cl,-0x38(%rax)
  12:	08 00                	or     %al,(%rax)
  14:	40 b8 09 00 38 a8    	rex mov $0xa8380009,%eax
  1a:	0a 00                	or     (%rax),%al
  1c:	33 98 0b 00 2e 88    	xor    -0x77d1fff5(%rax),%ebx
  22:	0c 00                	or     $0x0,%al
  24:	29 78 0d             	sub    %edi,0xd(%rax)
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	0e                   	(bad)
  2b:	00 1f                	add    %bl,(%rdi)
  2d:	74 26                	je     55 <@vol.md+0x52>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 25 00 1f 34 24    	fs and $0x24341f00,%eax
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 1e                	add    %ebx,(%rsi)
  3b:	00 18                	add    %bl,(%rax)
  3d:	f0 16                	lock (bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BH@$02@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	23 03                	and    (%rbx),%eax
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <$unwind$??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	01 69 21             	add    %ebp,0x21(%rcx)
   3:	00 60 f8             	add    %ah,-0x8(%rax)
   6:	0e                   	(bad)
   7:	00 58 e8             	add    %bl,-0x18(%rax)
   a:	0f 00 50 d8          	lldt   -0x28(%rax)
   e:	10 00                	adc    %al,(%rax)
  10:	48 c8 11 00 40       	rex.W enter $0x11,$0x40
  15:	b8 12 00 38 a8       	mov    $0xa8380012,%eax
  1a:	13 00                	adc    (%rax),%eax
  1c:	33 98 14 00 2e 88    	xor    -0x77d1ffec(%rax),%ebx
  22:	15 00 29 78 16       	adc    $0x16782900,%eax
  27:	00 24 68             	add    %ah,(%rax,%rbp,2)
  2a:	17                   	(bad)
  2b:	00 1f                	add    %bl,(%rdi)
  2d:	74 38                	je     67 <@vol.md+0x64>
  2f:	00 1f                	add    %bl,(%rdi)
  31:	64 37                	fs (bad)
  33:	00 1f                	add    %bl,(%rdi)
  35:	34 36                	xor    $0x36,%al
  37:	00 1f                	add    %bl,(%rdi)
  39:	01 30                	add    %esi,(%rax)
  3b:	00 18                	add    %bl,(%rax)
  3d:	f0 16                	lock (bad)
  3f:	e0 14                	loopne 55 <@vol.md+0x52>
  41:	d0 12                	rclb   $1,(%rdx)
  43:	c0 10 50             	rclb   $0x50,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <$pdata$??$row_dot@$0BH@$03@?A0x5752bc9f@@YAXPEBEHPEBQEBUblock_q8_K@@PEAM@Z>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	05 04 00 00 00       	add    $0x4,%eax
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rdata:

0000000000000000 <?scale_shuffle@?1??paired_iq2_s_rows@?A0x5752bc9f@@YAXPEBE0_K1HPEBUblock_q8_K@@PEAMHH@Z@4QBGB>:
   0:	00 01                	add    %al,(%rcx)
   2:	02 03                	add    (%rbx),%al
   4:	04 05                	add    $0x5,%al
   6:	06                   	(bad)
   7:	07                   	(bad)
   8:	08 09                	or     %cl,(%rcx)
   a:	0a 0b                	or     (%rbx),%cl
   c:	0c 0d                	or     $0xd,%al
   e:	0e                   	(bad)
   f:	0f                   	.byte 0xf

Disassembly of section .rdata:

0000000000000000 <??_C@_0BC@LCBJGDHM@width?5?$CF?5QK_K?5?$DN?$DN?50@>:
   0:	77 69                	ja     6b <@vol.md+0x68>
   2:	64 74 68             	fs je  6d <@vol.md+0x6a>
   5:	20 25 20 51 4b 5f    	and    %ah,0x5f4b5120(%rip)        # 5f4b512b <@comp.id+0x5e45c793>
   b:	4b 20 3d 3d 20 30 00 	rex.WXB and %dil,0x30203d(%rip)        # 30204f <?kvalues_iq4nl@@3QBCB+0x2ff84f>

Disassembly of section .rdata:

0000000000000000 <??_C@_0BH@PEEGLED@GGML_ASSERT?$CI?$CFs?$CJ?5failed@>:
   0:	47                   	rex.RXB
   1:	47                   	rex.RXB
   2:	4d                   	rex.WRB
   3:	4c 5f                	rex.WR pop %rdi
   5:	41 53                	push   %r11
   7:	53                   	push   %rbx
   8:	45 52                	rex.RB push %r10
   a:	54                   	push   %rsp
   b:	28 25 73 29 20 66    	sub    %ah,0x66202973(%rip)        # 66202984 <@comp.id+0x651a9fec>
  11:	61                   	(bad)
  12:	69                   	.byte 0x69
  13:	6c                   	insb   (%dx),(%rdi)
  14:	65                   	gs
  15:	64                   	fs
	...

Disassembly of section .rdata:

0000000000000000 <??_C@_0DA@NMMPJODN@E?3?2poolside?2engine?2ggml?2src?2ggm@>:
   0:	45 3a 5c 70 6f       	cmp    0x6f(%r8,%rsi,2),%r11b
   5:	6f                   	outsl  (%rsi),(%dx)
   6:	6c                   	insb   (%dx),(%rdi)
   7:	73 69                	jae    72 <@vol.md+0x6f>
   9:	64 65 5c             	fs gs pop %rsp
   c:	65 6e                	outsb  %gs:(%rsi),(%dx)
   e:	67 69 6e 65 5c 67 67 	imul   $0x6d67675c,0x65(%esi),%ebp
  15:	6d 
  16:	6c                   	insb   (%dx),(%rdi)
  17:	5c                   	pop    %rsp
  18:	73 72                	jae    8c <@vol.md+0x89>
  1a:	63 5c 67 67          	movsxd 0x67(%rdi,%riz,2),%ebx
  1e:	6d                   	insl   (%dx),(%rdi)
  1f:	6c                   	insb   (%dx),(%rdi)
  20:	2d 63 70 75 5c       	sub    $0x5c757063,%eax
  25:	6d                   	insl   (%dx),(%rdi)
  26:	6f                   	outsl  (%rsi),(%dx)
  27:	65 2d 69 71 2e 63    	gs sub $0x632e7169,%eax
  2d:	70 70                	jo     9f <@vol.md+0x9c>
	...

Disassembly of section .rdata:

0000000000000000 <??_C@_0CM@MKLOINHI@unsupported?5multi?9token?5expert?5@>:
   0:	75 6e                	jne    70 <@vol.md+0x6d>
   2:	73 75                	jae    79 <@vol.md+0x76>
   4:	70 70                	jo     76 <@vol.md+0x73>
   6:	6f                   	outsl  (%rsi),(%dx)
   7:	72 74                	jb     7d <@vol.md+0x7a>
   9:	65 64 20 6d 75       	gs and %ch,%fs:0x75(%rbp)
   e:	6c                   	insb   (%dx),(%rdi)
   f:	74 69                	je     7a <@vol.md+0x77>
  11:	2d 74 6f 6b 65       	sub    $0x656b6f74,%eax
  16:	6e                   	outsb  (%rsi),(%dx)
  17:	20 65 78             	and    %ah,0x78(%rbp)
  1a:	70 65                	jo     81 <@vol.md+0x7e>
  1c:	72 74                	jb     92 <@vol.md+0x8f>
  1e:	20 71 75             	and    %dh,0x75(%rcx)
  21:	61                   	(bad)
  22:	6e                   	outsb  (%rsi),(%dx)
  23:	74 69                	je     8e <@vol.md+0x8b>
  25:	7a 61                	jp     88 <@vol.md+0x85>
  27:	74 69                	je     92 <@vol.md+0x8f>
  29:	6f                   	outsl  (%rsi),(%dx)
  2a:	6e                   	outsb  (%rsi),(%dx)
	...

Disassembly of section .rdata:

0000000000000000 <??_C@_0CB@KFODEBAO@invalid?5multi?9token?5expert?5grou@>:
   0:	69 6e 76 61 6c 69 64 	imul   $0x64696c61,0x76(%rsi),%ebp
   7:	20 6d 75             	and    %ch,0x75(%rbp)
   a:	6c                   	insb   (%dx),(%rdi)
   b:	74 69                	je     76 <@vol.md+0x73>
   d:	2d 74 6f 6b 65       	sub    $0x656b6f74,%eax
  12:	6e                   	outsb  (%rsi),(%dx)
  13:	20 65 78             	and    %ah,0x78(%rbp)
  16:	70 65                	jo     7d <@vol.md+0x7a>
  18:	72 74                	jb     8e <@vol.md+0x8b>
  1a:	20 67 72             	and    %ah,0x72(%rdi)
  1d:	6f                   	outsl  (%rsi),(%dx)
  1e:	75 70                	jne    90 <@vol.md+0x8d>
	...

Disassembly of section .rdata:

0000000000000000 <__real@3e000000>:
   0:	00 00                	add    %al,(%rax)
   2:	00 3e                	add    %bh,(%rsi)

Disassembly of section .rdata:

0000000000000000 <__real@3f800000>:
   0:	00 00                	add    %al,(%rax)
   2:	80                   	.byte 0x80
   3:	3f                   	(bad)

Disassembly of section .rdata:

0000000000000000 <__xmm@01010101010101010000000000000000>:
	...
   8:	01 01                	add    %eax,(%rcx)
   a:	01 01                	add    %eax,(%rcx)
   c:	01 01                	add    %eax,(%rcx)
   e:	01 01                	add    %eax,(%rcx)

Disassembly of section .rdata:

0000000000000000 <__xmm@01010101010101010101010101010101>:
   0:	01 01                	add    %eax,(%rcx)
   2:	01 01                	add    %eax,(%rcx)
   4:	01 01                	add    %eax,(%rcx)
   6:	01 01                	add    %eax,(%rcx)
   8:	01 01                	add    %eax,(%rcx)
   a:	01 01                	add    %eax,(%rcx)
   c:	01 01                	add    %eax,(%rcx)
   e:	01 01                	add    %eax,(%rcx)

Disassembly of section .rdata:

0000000000000000 <__xmm@03030303030303030202020202020202>:
   0:	02 02                	add    (%rdx),%al
   2:	02 02                	add    (%rdx),%al
   4:	02 02                	add    (%rdx),%al
   6:	02 02                	add    (%rdx),%al
   8:	03 03                	add    (%rbx),%eax
   a:	03 03                	add    (%rbx),%eax
   c:	03 03                	add    (%rbx),%eax
   e:	03 03                	add    (%rbx),%eax

Disassembly of section .rdata:

0000000000000000 <__xmm@0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f>:
   0:	0f                   	(bad)
   1:	0f                   	(bad)
   2:	0f                   	(bad)
   3:	0f                   	(bad)
   4:	0f                   	(bad)
   5:	0f                   	(bad)
   6:	0f                   	(bad)
   7:	0f                   	(bad)
   8:	0f                   	(bad)
   9:	0f                   	(bad)
   a:	0f                   	(bad)
   b:	0f                   	(bad)
   c:	0f                   	(bad)
   d:	0f                   	.byte 0xf
   e:	0f                   	.byte 0xf
   f:	0f                   	.byte 0xf

Disassembly of section .rdata:

0000000000000000 <__xmm@80000000800000008000000080000000>:
   0:	00 00                	add    %al,(%rax)
   2:	00 80 00 00 00 80    	add    %al,-0x80000000(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	00 80 00 00 00 80    	add    %al,-0x80000000(%rax)

Disassembly of section .rdata:

0000000000000000 <__ymm@0101010101010101010101010101010101010101010101010101010101010101>:
   0:	01 01                	add    %eax,(%rcx)
   2:	01 01                	add    %eax,(%rcx)
   4:	01 01                	add    %eax,(%rcx)
   6:	01 01                	add    %eax,(%rcx)
   8:	01 01                	add    %eax,(%rcx)
   a:	01 01                	add    %eax,(%rcx)
   c:	01 01                	add    %eax,(%rcx)
   e:	01 01                	add    %eax,(%rcx)
  10:	01 01                	add    %eax,(%rcx)
  12:	01 01                	add    %eax,(%rcx)
  14:	01 01                	add    %eax,(%rcx)
  16:	01 01                	add    %eax,(%rcx)
  18:	01 01                	add    %eax,(%rcx)
  1a:	01 01                	add    %eax,(%rcx)
  1c:	01 01                	add    %eax,(%rcx)
  1e:	01 01                	add    %eax,(%rcx)

Disassembly of section .rdata:

0000000000000000 <__ymm@0303030303030303020202020202020201010101010101010000000000000000>:
	...
   8:	01 01                	add    %eax,(%rcx)
   a:	01 01                	add    %eax,(%rcx)
   c:	01 01                	add    %eax,(%rcx)
   e:	01 01                	add    %eax,(%rcx)
  10:	02 02                	add    (%rdx),%al
  12:	02 02                	add    (%rdx),%al
  14:	02 02                	add    (%rdx),%al
  16:	02 02                	add    (%rdx),%al
  18:	03 03                	add    (%rbx),%eax
  1a:	03 03                	add    (%rbx),%eax
  1c:	03 03                	add    (%rbx),%eax
  1e:	03 03                	add    (%rbx),%eax

Disassembly of section .rdata:

0000000000000000 <__ymm@8040201008040201804020100804020180402010080402018040201008040201>:
   0:	01 02                	add    %eax,(%rdx)
   2:	04 08                	add    $0x8,%al
   4:	10 20                	adc    %ah,(%rax)
   6:	40 80 01 02          	rex addb $0x2,(%rcx)
   a:	04 08                	add    $0x8,%al
   c:	10 20                	adc    %ah,(%rax)
   e:	40 80 01 02          	rex addb $0x2,(%rcx)
  12:	04 08                	add    $0x8,%al
  14:	10 20                	adc    %ah,(%rax)
  16:	40 80 01 02          	rex addb $0x2,(%rcx)
  1a:	04 08                	add    $0x8,%al
  1c:	10 20                	adc    %ah,(%rax)
  1e:	40                   	rex
  1f:	80                   	.byte 0x80

Disassembly of section .chks64:

0000000000000000 <.chks64>:
   0:	cb                   	lret
   1:	d0 14 f2             	rclb   $1,(%rdx,%rsi,8)
   4:	41                   	rex.B
   5:	42 d4                	rex.X (bad)
   7:	04 02                	add    $0x2,%al
   9:	25 52 dc de 68       	and    $0x68dedc52,%eax
   e:	a7                   	cmpsl  (%rdi),(%rsi)
   f:	e9 d8 22 16 ba       	jmp    ffffffffba1622ec <@feat.00+0xffffffff3a15215c>
  14:	54                   	push   %rsp
  15:	3b e8                	cmp    %eax,%ebp
  17:	50                   	push   %rax
  18:	b1 53                	mov    $0x53,%cl
  1a:	6d                   	insl   (%dx),(%rdi)
  1b:	7b e8                	jnp    5 <.chks64+0x5>
  1d:	85 e3                	test   %esp,%ebx
  1f:	88 11                	mov    %dl,(%rcx)
  21:	ad                   	lods   (%rsi),%eax
  22:	d5 aa 22 25          	{rex2 0xaa} mov %rbp,%cr4
  26:	22 0b                	and    (%rbx),%cl
  28:	f8                   	clc
  29:	c4                   	(bad)
  2a:	33 98 a7 59 fc c6    	xor    -0x3903a659(%rax),%ebx
  30:	be 59 99 61 9c       	mov    $0x9c619959,%esi
  35:	b3 66                	mov    $0x66,%bl
  37:	a0 ea c7 13 31 56 33 	movabs 0x2cfe33563113c7ea,%al
  3e:	fe 2c 
  40:	6c                   	insb   (%dx),(%rdi)
  41:	bc be 40 3e 2f       	mov    $0x2f3e40be,%esp
  46:	32 ed                	xor    %ch,%ch
  48:	f9                   	stc
  49:	c9                   	leave
  4a:	88 2b                	mov    %ch,(%rbx)
  4c:	0e                   	(bad)
  4d:	c0 c8 e5             	ror    $0xe5,%al
  50:	7f 14                	jg     66 <.chks64+0x66>
  52:	19 65 b7             	sbb    %esp,-0x49(%rbp)
  55:	3e 41 c8 42 a4 7b    	ds rex.B enter $0xa442,$0x7b
  5b:	d2 59 f0             	rcrb   %cl,-0x10(%rcx)
  5e:	69 11 5e 1f 1f a8    	imul   $0xa81f1f5e,(%rcx),%edx
  64:	92                   	xchg   %eax,%edx
  65:	3a b5 5f 96 22 8b    	cmp    -0x74dd69a1(%rbp),%dh
  6b:	80 20 a5             	andb   $0xa5,(%rax)
  6e:	3b 90 3e aa ae c7    	cmp    -0x385155c2(%rax),%edx
  74:	63 de                	movsxd %esi,%ebx
  76:	c0 98 ea c7 13 31 56 	rcrb   $0x56,0x3113c7ea(%rax)
  7d:	33 fe                	xor    %esi,%edi
  7f:	2c 6c                	sub    $0x6c,%al
  81:	bc be 40 3e 2f       	mov    $0x2f3e40be,%esp
  86:	32 ed                	xor    %ch,%ch
  88:	8e 28                	mov    (%rax),%gs
  8a:	54                   	push   %rsp
  8b:	6f                   	outsl  (%rsi),(%dx)
  8c:	62 c1 9c 5c cb       	(bad)
  91:	e3 25                	jrcxz  b8 <.chks64+0xb8>
  93:	e7 58                	out    %eax,$0x58
  95:	7c 79                	jl     110 <.chks64+0x110>
  97:	d7                   	xlat   (%rbx)
  98:	dc ad 83 bd 34 f9    	fsubrl -0x6cb427d(%rbp)
  9e:	0c 84                	or     $0x84,%al
  a0:	76 59                	jbe    fb <.chks64+0xfb>
  a2:	9e                   	sahf
  a3:	d5 c0 da 74 3b 6a    	{rex2 0xc0} pminub 0x6a(%rbx,%rdi,1),%mm6
  a9:	3e 12 be 1a 86 f9 15 	ds adc 0x15f9861a(%rsi),%bh
  b0:	0d ac be 21 5e       	or     $0x5e21beac,%eax
  b5:	38 0d d4 bc 77 14    	cmp    %cl,0x1477bcd4(%rip)        # 1477bd8f <@comp.id+0x137233f7>
  bb:	48 f6 31             	rex.W divb (%rcx)
  be:	cb                   	lret
  bf:	7a 94                	jp     55 <.chks64+0x55>
  c1:	a1 0e 40 a5 62 d9 84 	movabs 0xf81284d962a5400e,%eax
  c8:	12 f8 
  ca:	e4 fe                	in     $0xfe,%al
  cc:	e8 da 35 02 90       	call   ffffffff900236ab <@feat.00+0xffffffff1001351b>
  d1:	4e 98                	rex.WRX cltq
  d3:	75 a3                	jne    78 <.chks64+0x78>
  d5:	fe                   	(bad)
  d6:	5d                   	pop    %rbp
  d7:	a8 c2                	test   $0xc2,%al
  d9:	4f aa                	rex.WRXB stos %al,(%rdi)
  db:	6d                   	insl   (%dx),(%rdi)
  dc:	9c                   	pushf
  dd:	b7 df                	mov    $0xdf,%bh
  df:	27                   	(bad)
  e0:	04 e7                	add    $0xe7,%al
  e2:	c3                   	ret
  e3:	77 eb                	ja     d0 <.chks64+0xd0>
  e5:	1f                   	(bad)
  e6:	5e                   	pop    %rsi
  e7:	2b f5                	sub    %ebp,%esi
  e9:	72 20                	jb     10b <.chks64+0x10b>
  eb:	24 e3                	and    $0xe3,%al
  ed:	f1                   	int1
  ee:	d3 7b 88             	sarl   %cl,-0x78(%rbx)
  f1:	06                   	(bad)
  f2:	62 d7 06 d3 df       	(bad)
  f7:	1e                   	(bad)
  f8:	48 99                	cqto
  fa:	78 9a                	js     96 <.chks64+0x96>
  fc:	9d                   	popf
  fd:	20 df                	and    %bl,%bh
  ff:	ac                   	lods   (%rsi),%al
 100:	1d 6c 27 70 e7       	sbb    $0xe770276c,%eax
 105:	d9 70 cd             	fnstenv -0x33(%rax)
 108:	f6 27                	mulb   (%rdi)
 10a:	4d e2 24             	rex.WRB loop 131 <.chks64+0x131>
 10d:	c1 0e f2             	rorl   $0xf2,(%rsi)
 110:	f6 27                	mulb   (%rdi)
 112:	4d e2 24             	rex.WRB loop 139 <.chks64+0x139>
 115:	c1 0e f2             	rorl   $0xf2,(%rsi)
 118:	70 97                	jo     b1 <.chks64+0xb1>
 11a:	d9 f6                	fdecstp
 11c:	cb                   	lret
 11d:	7f 3f                	jg     15e <.chks64+0x15e>
 11f:	5a                   	pop    %rdx
 120:	cc                   	int3
 121:	ce                   	(bad)
 122:	ae                   	scas   (%rdi),%al
 123:	6d                   	insl   (%dx),(%rdi)
 124:	be 77 28 42 3f       	mov    $0x3f422877,%esi
 129:	46 3b f4             	rex.RX cmp %esp,%r14d
 12c:	f6 45 26 49          	testb  $0x49,0x26(%rbp)
 130:	11 02                	adc    %eax,(%rdx)
 132:	20 f9                	and    %bh,%cl
 134:	76 41                	jbe    177 <.chks64+0x177>
 136:	cf                   	iret
 137:	c5 95 ec 4f 71       	vpaddsb 0x71(%rdi),%ymm13,%ymm1
 13c:	e8 c6 0a dd b4       	call   ffffffffb4dd0c07 <@feat.00+0xffffffff34dc0a77>
 141:	82                   	(bad)
 142:	80 9e ff 43 3b 24 51 	sbbb   $0x51,0x243b43ff(%rsi)
 149:	81 09 d1 e9 8f 2d    	orl    $0x2d8fe9d1,(%rcx)
 14f:	c7                   	(bad)
 150:	74 cd                	je     11f <.chks64+0x11f>
 152:	fc                   	cld
 153:	54                   	push   %rsp
 154:	6c                   	insb   (%dx),(%rdi)
 155:	31 5f f6             	xor    %ebx,-0xa(%rdi)
 158:	8e a7 41 44 d8 7d    	mov    0x7dd84441(%rdi),%fs
 15e:	57                   	push   %rdi
 15f:	1f                   	(bad)
 160:	e4 5f                	in     $0x5f,%al
 162:	c7 06 f3 d8 78 f9    	movl   $0xf978d8f3,(%rsi)
 168:	3b b6 fb 51 45 45    	cmp    0x454551fb(%rsi),%esi
 16e:	31 a1 e0 26 68 cc    	xor    %esp,-0x3397d920(%rcx)
 174:	d0 4d ce             	rorb   $1,-0x32(%rbp)
 177:	07                   	(bad)
 178:	5a                   	pop    %rdx
 179:	34 16                	xor    $0x16,%al
 17b:	94                   	xchg   %eax,%esp
 17c:	d4                   	(bad)
 17d:	c4                   	(bad)
 17e:	11 da                	adc    %ebx,%edx
 180:	9a                   	(bad)
 181:	50                   	push   %rax
 182:	dd 4e 84             	fisttpll -0x7c(%rsi)
 185:	ad                   	lods   (%rsi),%eax
 186:	ef                   	out    %eax,(%dx)
 187:	31 eb                	xor    %ebp,%ebx
 189:	67 91                	addr32 xchg %eax,%ecx
 18b:	74 6a                	je     1f7 <.chks64+0x1f7>
 18d:	2e a1 e9 e8 eb d8 27 	cs movabs 0x6df3d127d8ebe8e9,%eax
 194:	d1 f3 6d 
 197:	7c 36                	jl     1cf <.chks64+0x1cf>
 199:	8e c1                	mov    %ecx,%es
 19b:	42                   	rex.X
 19c:	41 94                	xchg   %eax,%r12d
 19e:	54                   	push   %rsp
 19f:	8c c2                	mov    %es,%edx
 1a1:	4f aa                	rex.WRXB stos %al,(%rdi)
 1a3:	6d                   	insl   (%dx),(%rdi)
 1a4:	9c                   	pushf
 1a5:	b7 df                	mov    $0xdf,%bh
 1a7:	27                   	(bad)
 1a8:	79 a5                	jns    14f <.chks64+0x14f>
 1aa:	22 20                	and    (%rax),%ah
 1ac:	15 6d a1 56 ce       	adc    $0xce56a16d,%eax
 1b1:	ac                   	lods   (%rsi),%al
 1b2:	fe                   	(bad)
 1b3:	74 b1                	je     166 <.chks64+0x166>
 1b5:	07                   	(bad)
 1b6:	94                   	xchg   %eax,%esp
 1b7:	0f 8c fa 95 62 15    	jl     156297b7 <@comp.id+0x145d0e1f>
 1bd:	c6                   	(bad)
 1be:	e2 fb                	loop   1bb <.chks64+0x1bb>
 1c0:	45 a8 32             	rex.RB test $0x32,%al
 1c3:	4d                   	rex.WRB
 1c4:	40 a5                	rex movsl (%rsi),(%rdi)
 1c6:	c4                   	(bad)
 1c7:	f4                   	hlt
 1c8:	26 fe                	es (bad)
 1ca:	ed                   	in     (%dx),%eax
 1cb:	36 58                	ss pop %rax
 1cd:	83 aa 9f 6a d0 23 ea 	subl   $0xffffffea,0x23d06a9f(%rdx)
 1d4:	fc                   	cld
 1d5:	4e bb 78 30 60 97 85 	rex.WRX movabs $0x40a6b18597603078,%rbx
 1dc:	b1 a6 40 
 1df:	82                   	(bad)
 1e0:	4f a7                	rex.WRXB cmpsq (%rdi),(%rsi)
 1e2:	69 03 97 45 9b b4    	imul   $0xb49b4597,(%rbx),%eax
 1e8:	e7 21                	out    %eax,$0x21
 1ea:	2a 2a                	sub    (%rdx),%ch
 1ec:	b6 8a                	mov    $0x8a,%dh
 1ee:	2b b9 df 0e 41 3d    	sub    0x3d410edf(%rcx),%edi
 1f4:	ba ac 3c 05 89       	mov    $0x89053cac,%edx
 1f9:	b2 58                	mov    $0x58,%dl
 1fb:	12 98 c4 ac c6 2b    	adc    0x2bc6acc4(%rax),%bl
 201:	e8 c4 f9 db f9       	call   fffffffff9dbfbca <@feat.00+0xffffffff79dafa3a>
 206:	27                   	(bad)
 207:	3a 19                	cmp    (%rcx),%bl
 209:	d2 00                	rolb   %cl,(%rax)
 20b:	19 4d 49             	sbb    %ecx,0x49(%rbp)
 20e:	b3 45                	mov    $0x45,%bl
 210:	92                   	xchg   %eax,%edx
 211:	ca 71 42             	lret   $0x4271
 214:	68 7b d5 51 13       	push   $0x1351d57b
 219:	dc e7                	fsub   %st,%st(7)
 21b:	ec                   	in     (%dx),%al
 21c:	94                   	xchg   %eax,%esp
 21d:	6d                   	insl   (%dx),(%rdi)
 21e:	29 f1                	sub    %esi,%ecx
 220:	c9                   	leave
 221:	11 80 c4 5b 36 32    	adc    %eax,0x32365bc4(%rax)
 227:	56                   	push   %rsi
 228:	58                   	pop    %rax
 229:	34 1f                	xor    $0x1f,%al
 22b:	ec                   	in     (%dx),%al
 22c:	b0 0a                	mov    $0xa,%al
 22e:	99                   	cltd
 22f:	13 be 92 f9 b2 46    	adc    0x46b2f992(%rsi),%edi
 235:	3d a4 41 95 f1       	cmp    $0xf19541a4,%eax
 23a:	98                   	cwtl
 23b:	e8 ea 9a 8e 3d       	call   3d8e9d2a <@comp.id+0x3c891392>
 240:	2d f6 f5 e2 17       	sub    $0x17e2f5f6,%eax
 245:	c1 c5 09             	rol    $0x9,%ebp
 248:	16                   	(bad)
 249:	54                   	push   %rsp
 24a:	71 9e                	jno    1ea <.chks64+0x1ea>
 24c:	1d 0e e5 0c 37       	sbb    $0x370ce50e,%eax
 251:	04 e6                	add    $0xe6,%al
 253:	74 07                	je     25c <.chks64+0x25c>
 255:	a6                   	cmpsb  (%rdi),(%rsi)
 256:	c6                   	(bad)
 257:	8e 9f 82 fe eb 21    	mov    0x21ebfe82(%rdi),%ds
 25d:	e2 32                	loop   291 <.chks64+0x291>
 25f:	3f                   	(bad)
 260:	e7 76                	out    %eax,$0x76
 262:	39 7d 57             	cmp    %edi,0x57(%rbp)
 265:	5a                   	pop    %rdx
 266:	13 1d 11 b7 7d 01    	adc    0x17db711(%rip),%ebx        # 17db97d <@comp.id+0x782fe5>
 26c:	df 43 d2             	filds  -0x2e(%rbx)
 26f:	47 90                	rex.RXB xchg %eax,%r8d
 271:	60                   	(bad)
 272:	8d 59 32             	lea    0x32(%rcx),%ebx
 275:	c8 9e 0a 8f          	enter  $0xa9e,$0x8f
 279:	10 0c 07             	adc    %cl,(%rdi,%rax,1)
 27c:	0a 6f c5             	or     -0x3b(%rdi),%ch
 27f:	81 1b ec 7b 84 be    	sbbl   $0xbe847bec,(%rbx)
 285:	63 7e 69             	movsxd 0x69(%rsi),%edi
 288:	5e                   	pop    %rsi
 289:	e4 06                	in     $0x6,%al
 28b:	ee                   	out    %al,(%dx)
 28c:	ec                   	in     (%dx),%al
 28d:	a9 0b c5 a9 cd       	test   $0xcda9c50b,%eax
 292:	be cb b3 ac 5e       	mov    $0x5eacb3cb,%esi
 297:	58                   	pop    %rax
 298:	da de                	fcmovu %st(6),%st
 29a:	7c 8b                	jl     227 <.chks64+0x227>
 29c:	0a 7e 75             	or     0x75(%rsi),%bh
 29f:	b3 5d                	mov    $0x5d,%bl
 2a1:	fe                   	(bad)
 2a2:	5f                   	pop    %rdi
 2a3:	7e ee                	jle    293 <.chks64+0x293>
 2a5:	af                   	scas   (%rdi),%eax
 2a6:	66 8e a5 2e 3d 8a cb 	data16 mov -0x3475c2d2(%rbp),%fs
 2ad:	1f                   	(bad)
 2ae:	a3 db 65 a5 55 7a 9e 	movabs %eax,0x2d99e7a55a565db
 2b5:	d9 02 
 2b7:	a6                   	cmpsb  (%rdi),(%rsi)
 2b8:	95                   	xchg   %eax,%ebp
 2b9:	f1                   	int1
 2ba:	98                   	cwtl
 2bb:	e8 ea 9a 8e 3d       	call   3d8e9daa <@comp.id+0x3c891412>
 2c0:	2d f6 f5 e2 17       	sub    $0x17e2f5f6,%eax
 2c5:	c1 c5 09             	rol    $0x9,%ebp
 2c8:	a5                   	movsl  (%rsi),(%rdi)
 2c9:	10 3c f6             	adc    %bh,(%rsi,%rsi,8)
 2cc:	52                   	push   %rdx
 2cd:	be a0 19 05 24       	mov    $0x240519a0,%esi
 2d2:	89 92 2d 1d bf 5a    	mov    %edx,0x5abf1d2d(%rdx)
 2d8:	45 9d                	rex.RB popf
 2da:	17                   	(bad)
 2db:	95                   	xchg   %eax,%ebp
 2dc:	14 74                	adc    $0x74,%al
 2de:	e2 9d                	loop   27d <.chks64+0x27d>
 2e0:	90                   	nop
 2e1:	6c                   	insb   (%dx),(%rdi)
 2e2:	46                   	rex.RX
 2e3:	f0 02 b2 2a b1 6f 73 	lock add 0x736fb12a(%rdx),%dh
 2ea:	66 d7                	data16 xlat (%rbx)
 2ec:	47 e0 e7             	rex.RXB loopne 2d6 <.chks64+0x2d6>
 2ef:	eb af                	jmp    2a0 <.chks64+0x2a0>
 2f1:	74 a2                	je     295 <.chks64+0x295>
 2f3:	71 cc                	jno    2c1 <.chks64+0x2c1>
 2f5:	be 62 be ab e7       	mov    $0xe7abbe62,%esi
 2fa:	f0 85 ce             	lock test %ecx,%esi
 2fd:	14 df                	adc    $0xdf,%al
 2ff:	38 9f 0a 2c 1f 7f    	cmp    %bl,0x7f1f2c0a(%rdi)
 305:	f2 6a 18             	repnz push $0x18
 308:	e0 78                	loopne 382 <.chks64+0x382>
 30a:	f6 a8 f4 d5 61 cd    	imulb  -0x329e2a0c(%rax)
 310:	fd                   	std
 311:	23 d0                	and    %eax,%edx
 313:	25 b5 55 a6 1a       	and    $0x1aa655b5,%eax
 318:	72 8a                	jb     2a4 <.chks64+0x2a4>
 31a:	06                   	(bad)
 31b:	2a e6                	sub    %dh,%ah
 31d:	47 cb                	rex.RXB lret
 31f:	1c cd                	sbb    $0xcd,%al
 321:	e0 34                	loopne 357 <.chks64+0x357>
 323:	1d 95 3f c2 ca       	sbb    $0xcac23f95,%eax
 328:	b5 59                	mov    $0x59,%ch
 32a:	83 60 83 6f          	andl   $0x6f,-0x7d(%rax)
 32e:	cb                   	lret
 32f:	90                   	nop
 330:	f2 54                	repnz push %rsp
 332:	e6 a0                	out    %al,$0xa0
 334:	18 5c 6a b5          	sbb    %bl,-0x4b(%rdx,%rbp,2)
 338:	13 dc                	adc    %esp,%ebx
 33a:	e7 ec                	out    %eax,$0xec
 33c:	94                   	xchg   %eax,%esp
 33d:	6d                   	insl   (%dx),(%rdi)
 33e:	29 f1                	sub    %esi,%ecx
 340:	8e 12                	mov    (%rdx),%ss
 342:	81 bd 74 6f 0c 75 7e 	cmpl   $0xc038cb7e,0x750c6f74(%rbp)
 349:	cb 38 c0 
 34c:	ad                   	lods   (%rsi),%eax
 34d:	81 2f 9d ce 85 51    	subl   $0x5185ce9d,(%rdi)
 353:	35 ba e9 6d 21       	xor    $0x216de9ba,%eax
 358:	dd 3d 6a 7f 1c 74    	fnstsw 0x741c7f6a(%rip)        # 741c82c8 <@comp.id+0x7316f930>
 35e:	38 fd                	cmp    %bh,%ch
 360:	66 9f                	data16 lahf
 362:	da cc                	fcmove %st(4),%st
 364:	5b                   	pop    %rbx
 365:	84 f5                	test   %dh,%ch
 367:	14 60                	adc    $0x60,%al
 369:	3f                   	(bad)
 36a:	c5 eb 7c 57 15       	vhaddps 0x15(%rdi),%xmm2,%xmm2
 36f:	5c                   	pop    %rsp
 370:	36 03 8c 8b a1 b5 44 	ss add 0x5244b5a1(%rbx,%rcx,4),%ecx
 377:	52 
 378:	40 8a 1f             	rex mov (%rdi),%bl
 37b:	9e                   	sahf
 37c:	7d e0                	jge    35e <.chks64+0x35e>
 37e:	9e                   	sahf
 37f:	07                   	(bad)
 380:	49 02 34 75 04 86 13 	rex.WB add 0x3d138604(,%rsi,2),%sil
 387:	3d 
 388:	ba e4 82 2d b9       	mov    $0xb92d82e4,%edx
 38d:	bb 50 98 c6 0f       	mov    $0xfc69850,%ebx
 392:	cb                   	lret
 393:	9e                   	sahf
 394:	43 7d 59             	rex.XB jge 3f0 <.chks64+0x3f0>
 397:	61                   	(bad)
 398:	be 53 23 0e 70       	mov    $0x700e2353,%esi
 39d:	e0 50                	loopne 3ef <.chks64+0x3ef>
 39f:	c5 bd a0             	(bad)
 3a2:	b2 87                	mov    $0x87,%dl
 3a4:	8d                   	lea    (bad),%edi
 3a5:	fd                   	std
 3a6:	8a 62 e7             	mov    -0x19(%rdx),%ah
 3a9:	39 44 67 54          	cmp    %eax,0x54(%rdi,%riz,2)
 3ad:	8e b1 72 8e 0a 4f    	mov    0x4f0a8e72(%rcx),%?
 3b3:	5d                   	pop    %rbp
 3b4:	dd 99 30 59 13 dc    	fstpl  -0x23eca6d0(%rcx)
 3ba:	e7 ec                	out    %eax,$0xec
 3bc:	94                   	xchg   %eax,%esp
 3bd:	6d                   	insl   (%dx),(%rdi)
 3be:	29 f1                	sub    %esi,%ecx
 3c0:	8e 12                	mov    (%rdx),%ss
 3c2:	81 bd 74 6f 0c 75 29 	cmpl   $0xe0fec829,0x750c6f74(%rbp)
 3c9:	c8 fe e0 
 3cc:	d1 13                	rcll   $1,(%rbx)
 3ce:	e1 b9                	loope  389 <.chks64+0x389>
 3d0:	d8 a6 3a 92 19 2a    	fsubs  0x2a19923a(%rsi)
 3d6:	a3 b5 c0 a5 6c 65 0c 	movabs %eax,0x121c0c656ca5c0b5
 3dd:	1c 12 
 3df:	5b                   	pop    %rbx
 3e0:	2d e7 23 33 3f       	sub    $0x3f3323e7,%eax
 3e5:	bf 38 1c 91 80       	mov    $0x80911c38,%edi
 3ea:	22 a6 26 ee 5b 7f    	and    0x7f5bee26(%rsi),%ah
 3f0:	57                   	push   %rdi
 3f1:	0e                   	(bad)
 3f2:	20 39                	and    %bh,(%rcx)
 3f4:	ed                   	in     (%dx),%eax
 3f5:	1b 7e 26             	sbb    0x26(%rsi),%edi
 3f8:	f1                   	int1
 3f9:	19 3a                	sbb    %edi,(%rdx)
 3fb:	3a 7d a8             	cmp    -0x58(%rbp),%bh
 3fe:	a0 03 70 12 f1 01 ef 	movabs 0x98aef01f1127003,%al
 405:	8a 09 
 407:	c8 a0 bd 1c          	enter  $0xbda0,$0x1c
 40b:	43 ea                	rex.XB (bad)
 40d:	c9                   	leave
 40e:	44 d0 47 20          	rex.R rolb $1,0x20(%rdi)
 412:	8f                   	(bad)
 413:	bd 8d c8 4a 4c       	mov    $0x4c4ac88d,%ebp
 418:	32 03                	xor    (%rbx),%al
 41a:	b1 5e                	mov    $0x5e,%cl
 41c:	c5 16 38             	(bad)
 41f:	12 24 3e             	adc    (%rsi,%rdi,1),%ah
 422:	57                   	push   %rdi
 423:	6d                   	insl   (%dx),(%rdi)
 424:	dc 4c f5 f6          	fmull  -0xa(%rbp,%rsi,8)
 428:	aa                   	stos   %al,(%rdi)
 429:	9a                   	(bad)
 42a:	a5                   	movsl  (%rsi),(%rdi)
 42b:	04 ff                	add    $0xff,%al
 42d:	e9 56 c4 67 69       	jmp    6967c888 <@comp.id+0x68623ef0>
 432:	0a 25 72 ef 97 79    	or     0x7997ef72(%rip),%ah        # 7997f3aa <@comp.id+0x78926a12>
 438:	7e f9                	jle    433 <.chks64+0x433>
 43a:	88 02                	mov    %al,(%rdx)
 43c:	30 f8                	xor    %bh,%al
 43e:	26 78 86             	es js  3c7 <.chks64+0x3c7>
 441:	92                   	xchg   %eax,%edx
 442:	13 8e a8 e3 72 00    	adc    0x72e3a8(%rsi),%ecx
 448:	61                   	(bad)
 449:	33 e2                	xor    %edx,%esp
 44b:	89 3e                	mov    %edi,(%rsi)
 44d:	1a b3 c2 04 78 18    	sbb    0x187804c2(%rbx),%dh
 453:	5b                   	pop    %rbx
 454:	bf c0 78 83 46       	mov    $0x468378c0,%edi
 459:	d6                   	udb
 45a:	19 b5 13 d2 0a 20    	sbb    %esi,0x200ad213(%rbp)
 460:	e6 d6                	out    %al,$0xd6
 462:	19 f8                	sbb    %edi,%eax
 464:	08 53 65             	or     %dl,0x65(%rbx)
 467:	f9                   	stc
 468:	91                   	xchg   %eax,%ecx
 469:	80 22 a6             	andb   $0xa6,(%rdx)
 46c:	26 ee                	es out %al,(%dx)
 46e:	5b                   	pop    %rbx
 46f:	7f 57                	jg     4c8 <.chks64+0x4c8>
 471:	0e                   	(bad)
 472:	20 39                	and    %bh,(%rcx)
 474:	ed                   	in     (%dx),%eax
 475:	1b 7e 26             	sbb    0x26(%rsi),%edi
 478:	f1                   	int1
 479:	19 3a                	sbb    %edi,(%rdx)
 47b:	3a 7d a8             	cmp    -0x58(%rbp),%bh
 47e:	a0 03 70 12 f1 01 ef 	movabs 0x98aef01f1127003,%al
 485:	8a 09 
 487:	c8 a0 bd 1c          	enter  $0xbda0,$0x1c
 48b:	43 ea                	rex.XB (bad)
 48d:	c9                   	leave
 48e:	44 d0 47 20          	rex.R rolb $1,0x20(%rdi)
 492:	8f                   	(bad)
 493:	bd 8d c8 4a 4c       	mov    $0x4c4ac88d,%ebp
 498:	2b f4                	sub    %esp,%esi
 49a:	0d 84 6b f6 38       	or     $0x38f66b84,%eax
 49f:	96                   	xchg   %eax,%esi
 4a0:	57                   	push   %rdi
 4a1:	0e                   	(bad)
 4a2:	20 39                	and    %bh,(%rcx)
 4a4:	ed                   	in     (%dx),%eax
 4a5:	1b 7e 26             	sbb    0x26(%rsi),%edi
 4a8:	b6 de                	mov    $0xde,%dh
 4aa:	bb 5f 6a 64 aa       	mov    $0xaa646a5f,%ebx
 4af:	01 03                	add    %eax,(%rbx)
 4b1:	17                   	(bad)
 4b2:	d1 57 44             	rcll   $1,0x44(%rdi)
 4b5:	22 fc                	and    %ah,%bh
 4b7:	a5                   	movsl  (%rsi),(%rdi)
 4b8:	a0 bd 1c 43 ea c9 44 	movabs 0x88d044c9ea431cbd,%al
 4bf:	d0 88 
 4c1:	63 80 75 e1 9f f5    	movsxd -0xa601e8b(%rax),%eax
 4c7:	72 73                	jb     53c <.chks64+0x53c>
 4c9:	2a b3 cd 07 cc 5b    	sub    0x5bcc07cd(%rbx),%dh
 4cf:	5a                   	pop    %rdx
 4d0:	1c 77                	sbb    $0x77,%al
 4d2:	d2 c4                	rol    %cl,%ah
 4d4:	22 da                	and    %dl,%bl
 4d6:	25 da 74 2f a1       	and    $0xa12f74da,%eax
 4db:	7d f5                	jge    4d2 <.chks64+0x4d2>
 4dd:	a6                   	cmpsb  (%rdi),(%rsi)
 4de:	32 63 f1             	xor    -0xf(%rbx),%ah
 4e1:	de b8 ea 53 f1 9e    	fidivrs -0x610eac16(%rax)
 4e7:	47 b6 3d             	rex.RXB mov $0x3d,%r14b
 4ea:	bb da 78 d5 39       	mov    $0x39d578da,%ebx
 4ef:	fe                   	(bad)
 4f0:	67 69 0a 25 72 ef 97 	imul   $0x97ef7225,(%edx),%ecx
 4f7:	79 84                	jns    47d <.chks64+0x47d>
 4f9:	2f                   	(bad)
 4fa:	3b f1                	cmp    %ecx,%esi
 4fc:	70 5a                	jo     558 <.chks64+0x558>
 4fe:	7d bd                	jge    4bd <.chks64+0x4bd>
 500:	1b 3e                	sbb    (%rsi),%edi
 502:	d7                   	xlat   (%rbx)
 503:	43 7e 27             	rex.XB jle 52d <.chks64+0x52d>
 506:	ed                   	in     (%dx),%eax
 507:	d3 b8 23 a0 de 8a    	sarl   %cl,-0x75215fdd(%rax)
 50d:	68 7e 8b b1 e6       	push   $0xffffffffe6b18b7e
 512:	70 e7                	jo     4fb <.chks64+0x4fb>
 514:	54                   	push   %rsp
 515:	f6 75 c7             	divb   -0x39(%rbp)
 518:	79 05                	jns    51f <.chks64+0x51f>
 51a:	b5 31                	mov    $0x31,%ch
 51c:	bd 29 26 6b e2       	mov    $0xe26b2629,%ebp
 521:	38 11                	cmp    %dl,(%rcx)
 523:	0e                   	(bad)
 524:	a4                   	movsb  (%rsi),(%rdi)
 525:	1e                   	(bad)
 526:	26 41 e0 05          	es rex.B loopne 52f <.chks64+0x52f>
 52a:	6f                   	outsl  (%rsi),(%dx)
 52b:	43 01 1e             	rex.XB add %ebx,(%r14)
 52e:	8e 72 06             	mov    0x6(%rdx),%?
 531:	8c 26                	mov    %fs,(%rsi)
 533:	39 bd 3d 4e 42 eb    	cmp    %edi,-0x14bdb1c3(%rbp)
 539:	43 58                	rex.XB pop %r8
 53b:	29 5b f9             	sub    %ebx,-0x7(%rbx)
 53e:	f1                   	int1
 53f:	ab                   	stos   %eax,(%rdi)
 540:	c8 30 76 04          	enter  $0x7630,$0x4
 544:	3f                   	(bad)
 545:	22 74 fb 31          	and    0x31(%rbx,%rdi,8),%dh
 549:	db 76 71             	(bad) 0x71(%rsi)
 54c:	9f                   	lahf
 54d:	54                   	push   %rsp
 54e:	41 e3 cb             	rex.B jrcxz 51c <.chks64+0x51c>
 551:	8d 99 33 aa 8e 18    	lea    0x188eaa33(%rcx),%ebx
 557:	f4                   	hlt
 558:	5c                   	pop    %rsp
 559:	96                   	xchg   %eax,%esi
 55a:	d0 e1                	shl    $1,%cl
 55c:	a6                   	cmpsb  (%rdi),(%rsi)
 55d:	9b                   	fwait
 55e:	e7 0e                	out    %eax,$0xe
 560:	fa                   	cli
 561:	93                   	xchg   %eax,%ebx
 562:	ac                   	lods   (%rsi),%al
 563:	b6 f7                	mov    $0xf7,%dh
 565:	29 32                	sub    %esi,(%rdx)
 567:	ee                   	out    %al,(%dx)
 568:	4f e6 76             	rex.WRXB out %al,$0x76
 56b:	9c                   	pushf
 56c:	c0 b7 a9 02 30 28 ac 	shlb   $0xac,0x283002a9(%rdi)
 573:	44 71 0b             	rex.R jno 581 <.chks64+0x581>
 576:	4e c6 41 1e ff       	rex.WRX movb $0xff,0x1e(%rcx)
 57b:	41 7f f0             	rex.B jg 56e <.chks64+0x56e>
 57e:	f1                   	int1
 57f:	47 14 c7             	rex.RXB adc $0xc7,%al
 582:	0c 2d                	or     $0x2d,%al
 584:	62 1c 28 c0 97       	(bad)
 589:	9e                   	sahf
 58a:	ba af 03 b1 a4       	mov    $0xa4b103af,%edx
 58f:	d6                   	udb
 590:	4e 50                	rex.WRX push %rax
 592:	69 65 5b 49 41 c2 61 	imul   $0x61c24149,0x5b(%rbp),%esp
 599:	d8 78 90             	fdivrs -0x70(%rax)
 59c:	13 31                	adc    (%rcx),%esi
 59e:	cb                   	lret
 59f:	06                   	(bad)
 5a0:	39 c5                	cmp    %eax,%ebp
 5a2:	a1 a4 3c 08 18 5a e0 	movabs 0x6f05e05a18083ca4,%eax
 5a9:	05 6f 
 5ab:	43 01 1e             	rex.XB add %ebx,(%r14)
 5ae:	8e 72 06             	mov    0x6(%rdx),%?
 5b1:	8c 26                	mov    %fs,(%rsi)
 5b3:	39 bd 3d 4e 42 eb    	cmp    %edi,-0x14bdb1c3(%rbp)
 5b9:	43 58                	rex.XB pop %r8
 5bb:	29 5b f9             	sub    %ebx,-0x7(%rbx)
 5be:	f1                   	int1
 5bf:	ab                   	stos   %eax,(%rdi)
 5c0:	c8 30 76 04          	enter  $0x7630,$0x4
 5c4:	3f                   	(bad)
 5c5:	22 74 fb 31          	and    0x31(%rbx,%rdi,8),%dh
 5c9:	db 76 71             	(bad) 0x71(%rsi)
 5cc:	9f                   	lahf
 5cd:	54                   	push   %rsp
 5ce:	41 e3 cb             	rex.B jrcxz 59c <.chks64+0x59c>
 5d1:	8d 99 33 aa 8e 18    	lea    0x188eaa33(%rcx),%ebx
 5d7:	f4                   	hlt
 5d8:	23 ee                	and    %esi,%ebp
 5da:	0d d7 48 29 06       	or     $0x62948d7,%eax
 5df:	5d                   	pop    %rbp
 5e0:	bd 86 04 f7 62       	mov    $0x62f70486,%ebp
 5e5:	32 a4 a9 7e 14 53 ef 	xor    -0x10aceb82(%rcx,%rbp,4),%ah
 5ec:	c5 97 46             	(bad)
 5ef:	79 5d                	jns    64e <.chks64+0x64e>
 5f1:	50                   	push   %rax
 5f2:	b7 bf                	mov    $0xbf,%bh
 5f4:	d1 2d 18 54 b2 54    	shrl   $1,0x54b25418(%rip)        # 54b25a12 <@comp.id+0x53acd07a>
 5fa:	96                   	xchg   %eax,%esi
 5fb:	8b c7                	mov    %edi,%eax
 5fd:	f9                   	stc
 5fe:	04 52                	add    $0x52,%al
 600:	8d b8 4a ab 13 4d    	lea    0x4d13ab4a(%rax),%edi
 606:	aa                   	stos   %al,(%rdi)
 607:	46                   	rex.RX
 608:	44 8d b0 ff a3 75 83 	lea    -0x7c8a5c01(%rax),%r14d
 60f:	11 b8 76 42 1f a1    	adc    %edi,-0x5ee0bd8a(%rax)
 615:	f4                   	hlt
 616:	ea                   	(bad)
 617:	e7 c0                	out    %eax,$0xc0
 619:	a5                   	movsl  (%rsi),(%rdi)
 61a:	6c                   	insb   (%dx),(%rdi)
 61b:	65 0c 1c             	gs or  $0x1c,%al
 61e:	12 5b c2             	adc    -0x3e(%rbx),%bl
 621:	fa                   	cli
 622:	51                   	push   %rcx
 623:	aa                   	stos   %al,(%rdi)
 624:	dc 91 13 5c 9e 4d    	fcoml  0x4d9e5c13(%rcx)
 62a:	e1 45                	loope  671 <.chks64+0x671>
 62c:	b5 93                	mov    $0x93,%ch
 62e:	bd 92 40 13 6b       	mov    $0x6b134092,%ebp
 633:	33 fc                	xor    %esp,%edi
 635:	fb                   	sti
 636:	f0 64 e3 24          	lock fs jrcxz 65e <.chks64+0x65e>
 63a:	21 e6                	and    %esp,%esi
 63c:	2e 1d 49 02 78 a2    	cs sbb $0xa2780249,%eax
 642:	8d 4a a1             	lea    -0x5f(%rdx),%ecx
 645:	28 6c 02 4c          	sub    %ch,0x4c(%rdx,%rax,1)
 649:	af                   	scas   (%rdi),%eax
 64a:	80 88 d1 fe 03 9f b7 	orb    $0xb7,-0x60fc012f(%rax)
 651:	53                   	push   %rbx
 652:	d2 bb 8f c3 ca 9f    	sarb   %cl,-0x60353c71(%rbx)
 658:	29 c8                	sub    %ecx,%eax
 65a:	fe                   	(bad)
 65b:	e0 d1                	loopne 62e <.chks64+0x62e>
 65d:	13 e1                	adc    %ecx,%esp
 65f:	b9 0f 42 bb ec       	mov    $0xecbb420f,%ecx
 664:	71 a7                	jno    60d <.chks64+0x60d>
 666:	cf                   	iret
 667:	26 44 7d 74          	es rex.R jge 6df <.chks64+0x6df>
 66b:	56                   	push   %rsi
 66c:	be 42 4f 7d 68       	mov    $0x687d4f42,%esi
 671:	2f                   	(bad)
 672:	82                   	(bad)
 673:	23 ff                	and    %edi,%edi
 675:	9f                   	lahf
 676:	aa                   	stos   %al,(%rdi)
 677:	00 ee                	add    %ch,%dh
 679:	4a 77 1f             	rex.WX ja 69b <.chks64+0x69b>
 67c:	16                   	(bad)
 67d:	2b ff                	sub    %edi,%edi
 67f:	59                   	pop    %rcx
 680:	d5 84 1e 5f cf       	{rex2 0x84} nopl -0x31(%rdi)
 685:	38 89 14 23 f5 6d    	cmp    %cl,0x6df52314(%rcx)
 68b:	65 c6                	gs (bad)
 68d:	ea                   	(bad)
 68e:	13 41 6f             	adc    0x6f(%rcx),%eax
 691:	46                   	rex.RX
 692:	4c c1 1e 8d          	rex.WR rcrq $0x8d,(%rsi)
 696:	9f                   	lahf
 697:	e6 b6                	out    %al,$0xb6
 699:	3d bb da 78 d5       	cmp    $0xd578dabb,%eax
 69e:	39 fe                	cmp    %edi,%esi
 6a0:	51                   	push   %rcx
 6a1:	bc 0c ca dd 24       	mov    $0x24ddca0c,%esp
 6a6:	28 ac c0 a5 6c 65 0c 	sub    %ch,0xc656ca5(%rax,%rax,8)
 6ad:	1c 12                	sbb    $0x12,%al
 6af:	5b                   	pop    %rbx
 6b0:	ce                   	(bad)
 6b1:	40 7a 15             	rex jp 6c9 <.chks64+0x6c9>
 6b4:	8c 4f 77             	mov    %cs,0x77(%rdi)
 6b7:	d0 9e 4d e1 45 b5    	rcrb   $1,-0x4aba1eb3(%rsi)
 6bd:	93                   	xchg   %eax,%ebx
 6be:	bd 92 51 21 cb       	mov    $0xcb215192,%ebp
 6c3:	a0 5f 88 21 b3 88 29 	movabs 0x15f82988b321885f,%al
 6ca:	f8 15 
 6cc:	1d 48 fc ac 5d       	sbb    $0x5dacfc48,%eax
 6d1:	94                   	xchg   %eax,%esp
 6d2:	9c                   	pushf
 6d3:	2c b1                	sub    $0xb1,%al
 6d5:	6e                   	outsb  (%rsi),(%dx)
 6d6:	95                   	xchg   %eax,%ebp
 6d7:	ca 21 82             	lret   $0x8221
 6da:	c4                   	(bad)
 6db:	1c cf                	sbb    $0xcf,%al
 6dd:	79 b5                	jns    694 <.chks64+0x694>
 6df:	3e 0f 85 29 19 fb cb 	jne,pt ffffffffcbfb200f <@feat.00+0xffffffff4bfa1e7f>
 6e6:	f1                   	int1
 6e7:	2b e5                	sub    %ebp,%esp
 6e9:	f7 66 43             	mull   0x43(%rsi)
 6ec:	74 c3                	je     6b1 <.chks64+0x6b1>
 6ee:	15 c1 38 fc 37       	adc    $0x37fc38c1,%eax
 6f3:	91                   	xchg   %eax,%ecx
 6f4:	9f                   	lahf
 6f5:	c1 de a7             	rcr    $0xa7,%esi
 6f8:	3b ec                	cmp    %esp,%ebp
 6fa:	b9 f0 66 fd 38       	mov    $0x38fd66f0,%ecx
 6ff:	e9 1c 1f c6 5a       	jmp    5ac62620 <@comp.id+0x59c09c88>
 704:	d5 80 62 30          	{rex2 0x80} punpckldq %mm6,(%rax)
 708:	be 45 cb 26 05       	mov    $0x526cb45,%esi
 70d:	bf 36 be d0 26       	mov    $0x26d0be36,%edi
 712:	d1 71 1d             	shll   $1,0x1d(%rcx)
 715:	54                   	push   %rsp
 716:	42 9e                	rex.X sahf
 718:	fa                   	cli
 719:	ec                   	in     (%dx),%al
 71a:	68 0f 9d 43 48       	push   $0x48439d0f
 71f:	d5 1e 38 67 ae       	{rex2 0x1e} cmp %r12b,-0x52(%r23)
 724:	5a                   	pop    %rdx
 725:	3e ac                	ds lods (%rsi),%al
 727:	9e                   	sahf
 728:	7b cd                	jnp    6f7 <.chks64+0x6f7>
 72a:	31 61 a9             	xor    %esp,-0x57(%rcx)
 72d:	ba 38 65 7e 69       	mov    $0x697e6538,%edx
 732:	71 65                	jno    799 <$LN67+0x31c>
 734:	41 c5 a7 b5          	(bad)
 738:	31 b6 7d ba 7c fd    	xor    %esi,-0x2834583(%rsi)
 73e:	6e                   	outsb  (%rsi),(%dx)
 73f:	2d e0 0e 5e b9       	sub    $0xb95e0ee0,%eax
 744:	44                   	rex.R
 745:	41 82                	rex.B (bad)
 747:	f3 25 c9 ae f8 3e    	repz and $0x3ef8aec9,%eax
 74d:	7b 6c                	jnp    7bb <$LN67+0x33e>
 74f:	3f                   	(bad)
 750:	cc                   	int3
 751:	8c d4                	mov    %ss,%esp
 753:	1c ef                	sbb    $0xef,%al
 755:	90                   	nop
 756:	7c 4d                	jl     7a5 <$LN67+0x328>
 758:	2c e4                	sub    $0xe4,%al
 75a:	a1 bc 56 53 31 1c f2 	movabs 0x3831f21c315356bc,%eax
 761:	31 38 
 763:	32 56 89             	xor    -0x77(%rsi),%dl
 766:	21 04 df             	and    %eax,(%rdi,%rbx,8)
 769:	14 17                	adc    $0x17,%al
 76b:	73 47                	jae    7b4 <$LN67+0x337>
 76d:	0b a9 6a 72 cd 6e    	or     0x6ecd726a(%rcx),%ebp
 773:	84 22                	test   %ah,(%rdx)
 775:	c4 07 fb 72          	(bad)
 779:	70 46                	jo     7c1 <$LN67+0x344>
 77b:	ff                   	ljmp   (bad)
 77c:	eb 12                	jmp    790 <$LN67+0x313>
 77e:	e8 3c ba 11 d1       	call   ffffffffd111c1bf <@feat.00+0xffffffff5110c02f>
 783:	61                   	(bad)
 784:	9c                   	pushf
 785:	42 e2 36             	rex.X loop 7be <$LN67+0x341>
	...
