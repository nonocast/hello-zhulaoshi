                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module app
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer0
                                     12 	.globl _main
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _count
                                    110 	.globl _init
                                    111 	.globl _loop
                                    112 	.globl _delay
                                    113 ;--------------------------------------------------------
                                    114 ; special function registers
                                    115 ;--------------------------------------------------------
                                    116 	.area RSEG    (ABS,DATA)
      000000                        117 	.org 0x0000
                           000080   118 _P0	=	0x0080
                           000081   119 _SP	=	0x0081
                           000082   120 _DPL	=	0x0082
                           000083   121 _DPH	=	0x0083
                           000087   122 _PCON	=	0x0087
                           000088   123 _TCON	=	0x0088
                           000089   124 _TMOD	=	0x0089
                           00008A   125 _TL0	=	0x008a
                           00008B   126 _TL1	=	0x008b
                           00008C   127 _TH0	=	0x008c
                           00008D   128 _TH1	=	0x008d
                           000090   129 _P1	=	0x0090
                           000098   130 _SCON	=	0x0098
                           000099   131 _SBUF	=	0x0099
                           0000A0   132 _P2	=	0x00a0
                           0000A8   133 _IE	=	0x00a8
                           0000B0   134 _P3	=	0x00b0
                           0000B8   135 _IP	=	0x00b8
                           0000D0   136 _PSW	=	0x00d0
                           0000E0   137 _ACC	=	0x00e0
                           0000F0   138 _B	=	0x00f0
                                    139 ;--------------------------------------------------------
                                    140 ; special function bits
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0_0	=	0x0080
                           000081   145 _P0_1	=	0x0081
                           000082   146 _P0_2	=	0x0082
                           000083   147 _P0_3	=	0x0083
                           000084   148 _P0_4	=	0x0084
                           000085   149 _P0_5	=	0x0085
                           000086   150 _P0_6	=	0x0086
                           000087   151 _P0_7	=	0x0087
                           000088   152 _IT0	=	0x0088
                           000089   153 _IE0	=	0x0089
                           00008A   154 _IT1	=	0x008a
                           00008B   155 _IE1	=	0x008b
                           00008C   156 _TR0	=	0x008c
                           00008D   157 _TF0	=	0x008d
                           00008E   158 _TR1	=	0x008e
                           00008F   159 _TF1	=	0x008f
                           000090   160 _P1_0	=	0x0090
                           000091   161 _P1_1	=	0x0091
                           000092   162 _P1_2	=	0x0092
                           000093   163 _P1_3	=	0x0093
                           000094   164 _P1_4	=	0x0094
                           000095   165 _P1_5	=	0x0095
                           000096   166 _P1_6	=	0x0096
                           000097   167 _P1_7	=	0x0097
                           000098   168 _RI	=	0x0098
                           000099   169 _TI	=	0x0099
                           00009A   170 _RB8	=	0x009a
                           00009B   171 _TB8	=	0x009b
                           00009C   172 _REN	=	0x009c
                           00009D   173 _SM2	=	0x009d
                           00009E   174 _SM1	=	0x009e
                           00009F   175 _SM0	=	0x009f
                           0000A0   176 _P2_0	=	0x00a0
                           0000A1   177 _P2_1	=	0x00a1
                           0000A2   178 _P2_2	=	0x00a2
                           0000A3   179 _P2_3	=	0x00a3
                           0000A4   180 _P2_4	=	0x00a4
                           0000A5   181 _P2_5	=	0x00a5
                           0000A6   182 _P2_6	=	0x00a6
                           0000A7   183 _P2_7	=	0x00a7
                           0000A8   184 _EX0	=	0x00a8
                           0000A9   185 _ET0	=	0x00a9
                           0000AA   186 _EX1	=	0x00aa
                           0000AB   187 _ET1	=	0x00ab
                           0000AC   188 _ES	=	0x00ac
                           0000AF   189 _EA	=	0x00af
                           0000B0   190 _P3_0	=	0x00b0
                           0000B1   191 _P3_1	=	0x00b1
                           0000B2   192 _P3_2	=	0x00b2
                           0000B3   193 _P3_3	=	0x00b3
                           0000B4   194 _P3_4	=	0x00b4
                           0000B5   195 _P3_5	=	0x00b5
                           0000B6   196 _P3_6	=	0x00b6
                           0000B7   197 _P3_7	=	0x00b7
                           0000B0   198 _RXD	=	0x00b0
                           0000B1   199 _TXD	=	0x00b1
                           0000B2   200 _INT0	=	0x00b2
                           0000B3   201 _INT1	=	0x00b3
                           0000B4   202 _T0	=	0x00b4
                           0000B5   203 _T1	=	0x00b5
                           0000B6   204 _WR	=	0x00b6
                           0000B7   205 _RD	=	0x00b7
                           0000B8   206 _PX0	=	0x00b8
                           0000B9   207 _PT0	=	0x00b9
                           0000BA   208 _PX1	=	0x00ba
                           0000BB   209 _PT1	=	0x00bb
                           0000BC   210 _PS	=	0x00bc
                           0000D0   211 _P	=	0x00d0
                           0000D1   212 _F1	=	0x00d1
                           0000D2   213 _OV	=	0x00d2
                           0000D3   214 _RS0	=	0x00d3
                           0000D4   215 _RS1	=	0x00d4
                           0000D5   216 _F0	=	0x00d5
                           0000D6   217 _AC	=	0x00d6
                           0000D7   218 _CY	=	0x00d7
                                    219 ;--------------------------------------------------------
                                    220 ; overlayable register banks
                                    221 ;--------------------------------------------------------
                                    222 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        223 	.ds 8
                                    224 ;--------------------------------------------------------
                                    225 ; internal ram data
                                    226 ;--------------------------------------------------------
                                    227 	.area DSEG    (DATA)
      000008                        228 _count::
      000008                        229 	.ds 2
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable items in internal ram 
                                    232 ;--------------------------------------------------------
                                    233 	.area	OSEG    (OVR,DATA)
                                    234 ;--------------------------------------------------------
                                    235 ; Stack segment in internal ram 
                                    236 ;--------------------------------------------------------
                                    237 	.area	SSEG
      00000A                        238 __start__stack:
      00000A                        239 	.ds	1
                                    240 
                                    241 ;--------------------------------------------------------
                                    242 ; indirectly addressable internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area ISEG    (DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; absolute internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area IABS    (ABS,DATA)
                                    249 	.area IABS    (ABS,DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; bit data
                                    252 ;--------------------------------------------------------
                                    253 	.area BSEG    (BIT)
                                    254 ;--------------------------------------------------------
                                    255 ; paged external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area PSEG    (PAG,XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XSEG    (XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; absolute external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XABS    (ABS,XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; external initialized ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XISEG   (XDATA)
                                    270 	.area HOME    (CODE)
                                    271 	.area GSINIT0 (CODE)
                                    272 	.area GSINIT1 (CODE)
                                    273 	.area GSINIT2 (CODE)
                                    274 	.area GSINIT3 (CODE)
                                    275 	.area GSINIT4 (CODE)
                                    276 	.area GSINIT5 (CODE)
                                    277 	.area GSINIT  (CODE)
                                    278 	.area GSFINAL (CODE)
                                    279 	.area CSEG    (CODE)
                                    280 ;--------------------------------------------------------
                                    281 ; interrupt vector 
                                    282 ;--------------------------------------------------------
                                    283 	.area HOME    (CODE)
      000000                        284 __interrupt_vect:
      000000 02 00 11         [24]  285 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  286 	reti
      000004                        287 	.ds	7
      00000B 02 00 85         [24]  288 	ljmp	_timer0
                                    289 ;--------------------------------------------------------
                                    290 ; global & static initialisations
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 	.area GSFINAL (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.globl __sdcc_gsinit_startup
                                    297 	.globl __sdcc_program_startup
                                    298 	.globl __start__stack
                                    299 	.globl __mcs51_genXINIT
                                    300 	.globl __mcs51_genXRAMCLEAR
                                    301 	.globl __mcs51_genRAMCLEAR
                                    302 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  303 	ljmp	__sdcc_program_startup
                                    304 ;--------------------------------------------------------
                                    305 ; Home
                                    306 ;--------------------------------------------------------
                                    307 	.area HOME    (CODE)
                                    308 	.area HOME    (CODE)
      00000E                        309 __sdcc_program_startup:
      00000E 02 00 6D         [24]  310 	ljmp	_main
                                    311 ;	return from main will return to caller
                                    312 ;--------------------------------------------------------
                                    313 ; code
                                    314 ;--------------------------------------------------------
                                    315 	.area CSEG    (CODE)
                                    316 ;------------------------------------------------------------
                                    317 ;Allocation info for local variables in function 'main'
                                    318 ;------------------------------------------------------------
                                    319 ;	src/app.c:15: void main() {
                                    320 ;	-----------------------------------------
                                    321 ;	 function main
                                    322 ;	-----------------------------------------
      00006D                        323 _main:
                           000007   324 	ar7 = 0x07
                           000006   325 	ar6 = 0x06
                           000005   326 	ar5 = 0x05
                           000004   327 	ar4 = 0x04
                           000003   328 	ar3 = 0x03
                           000002   329 	ar2 = 0x02
                           000001   330 	ar1 = 0x01
                           000000   331 	ar0 = 0x00
                                    332 ;	src/app.c:16: init();
      00006D 12 00 75         [24]  333 	lcall	_init
                                    334 ;	src/app.c:17: while (true) {
      000070                        335 00102$:
                                    336 ;	src/app.c:18: loop();
      000070 12 00 BF         [24]  337 	lcall	_loop
                                    338 ;	src/app.c:20: }
      000073 80 FB            [24]  339 	sjmp	00102$
                                    340 ;------------------------------------------------------------
                                    341 ;Allocation info for local variables in function 'init'
                                    342 ;------------------------------------------------------------
                                    343 ;	src/app.c:22: void init() {
                                    344 ;	-----------------------------------------
                                    345 ;	 function init
                                    346 ;	-----------------------------------------
      000075                        347 _init:
                                    348 ;	src/app.c:24: TMOD = 0x01;
      000075 75 89 01         [24]  349 	mov	_TMOD,#0x01
                                    350 ;	src/app.c:26: TH0 = 0xfc;
      000078 75 8C FC         [24]  351 	mov	_TH0,#0xfc
                                    352 ;	src/app.c:27: TL0 = 0x18;
      00007B 75 8A 18         [24]  353 	mov	_TL0,#0x18
                                    354 ;	src/app.c:28: TR0 = 1;
                                    355 ;	assignBit
      00007E D2 8C            [12]  356 	setb	_TR0
                                    357 ;	src/app.c:29: ET0 = 1;
                                    358 ;	assignBit
      000080 D2 A9            [12]  359 	setb	_ET0
                                    360 ;	src/app.c:30: EA = 1;
                                    361 ;	assignBit
      000082 D2 AF            [12]  362 	setb	_EA
                                    363 ;	src/app.c:31: }
      000084 22               [24]  364 	ret
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'timer0'
                                    367 ;------------------------------------------------------------
                                    368 ;	src/app.c:33: void timer0() __interrupt(1) {
                                    369 ;	-----------------------------------------
                                    370 ;	 function timer0
                                    371 ;	-----------------------------------------
      000085                        372 _timer0:
      000085 C0 E0            [24]  373 	push	acc
      000087 C0 D0            [24]  374 	push	psw
                                    375 ;	src/app.c:34: TH0 = 0xfc;
      000089 75 8C FC         [24]  376 	mov	_TH0,#0xfc
                                    377 ;	src/app.c:35: TL0 = 0x18;
      00008C 75 8A 18         [24]  378 	mov	_TL0,#0x18
                                    379 ;	src/app.c:37: ++count;
      00008F 05 08            [12]  380 	inc	_count
      000091 E4               [12]  381 	clr	a
      000092 B5 08 02         [24]  382 	cjne	a,_count,00117$
      000095 05 09            [12]  383 	inc	(_count + 1)
      000097                        384 00117$:
                                    385 ;	src/app.c:38: if (count < 1000) {
      000097 C3               [12]  386 	clr	c
      000098 E5 08            [12]  387 	mov	a,_count
      00009A 94 E8            [12]  388 	subb	a,#0xe8
      00009C E5 09            [12]  389 	mov	a,(_count + 1)
      00009E 94 03            [12]  390 	subb	a,#0x03
      0000A0 50 04            [24]  391 	jnc	00105$
                                    392 ;	src/app.c:39: P0_0 = !P0_0;
      0000A2 B2 80            [12]  393 	cpl	_P0_0
      0000A4 80 14            [24]  394 	sjmp	00107$
      0000A6                        395 00105$:
                                    396 ;	src/app.c:40: } else if (count < 2000) {
      0000A6 C3               [12]  397 	clr	c
      0000A7 E5 08            [12]  398 	mov	a,_count
      0000A9 94 D0            [12]  399 	subb	a,#0xd0
      0000AB E5 09            [12]  400 	mov	a,(_count + 1)
      0000AD 94 07            [12]  401 	subb	a,#0x07
      0000AF 50 04            [24]  402 	jnc	00102$
                                    403 ;	src/app.c:41: P0_0 = 0;
                                    404 ;	assignBit
      0000B1 C2 80            [12]  405 	clr	_P0_0
      0000B3 80 05            [24]  406 	sjmp	00107$
      0000B5                        407 00102$:
                                    408 ;	src/app.c:43: count = 0;
      0000B5 E4               [12]  409 	clr	a
      0000B6 F5 08            [12]  410 	mov	_count,a
      0000B8 F5 09            [12]  411 	mov	(_count + 1),a
      0000BA                        412 00107$:
                                    413 ;	src/app.c:45: }
      0000BA D0 D0            [24]  414 	pop	psw
      0000BC D0 E0            [24]  415 	pop	acc
      0000BE 32               [24]  416 	reti
                                    417 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    418 ;	eliminated unneeded push/pop dpl
                                    419 ;	eliminated unneeded push/pop dph
                                    420 ;	eliminated unneeded push/pop b
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'loop'
                                    423 ;------------------------------------------------------------
                                    424 ;	src/app.c:47: void loop() {}
                                    425 ;	-----------------------------------------
                                    426 ;	 function loop
                                    427 ;	-----------------------------------------
      0000BF                        428 _loop:
      0000BF 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'delay'
                                    432 ;------------------------------------------------------------
                                    433 ;i                         Allocated to registers 
                                    434 ;------------------------------------------------------------
                                    435 ;	src/app.c:49: void delay(word i) {
                                    436 ;	-----------------------------------------
                                    437 ;	 function delay
                                    438 ;	-----------------------------------------
      0000C0                        439 _delay:
      0000C0 AE 82            [24]  440 	mov	r6,dpl
      0000C2 AF 83            [24]  441 	mov	r7,dph
                                    442 ;	src/app.c:50: while (i--)
      0000C4                        443 00101$:
      0000C4 8E 04            [24]  444 	mov	ar4,r6
      0000C6 8F 05            [24]  445 	mov	ar5,r7
      0000C8 1E               [12]  446 	dec	r6
      0000C9 BE FF 01         [24]  447 	cjne	r6,#0xff,00111$
      0000CC 1F               [12]  448 	dec	r7
      0000CD                        449 00111$:
      0000CD EC               [12]  450 	mov	a,r4
      0000CE 4D               [12]  451 	orl	a,r5
      0000CF 70 F3            [24]  452 	jnz	00101$
                                    453 ;	src/app.c:52: }
      0000D1 22               [24]  454 	ret
                                    455 	.area CSEG    (CODE)
                                    456 	.area CONST   (CODE)
                                    457 	.area XINIT   (CODE)
                                    458 	.area CABS    (ABS,CODE)
