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
                                     11 	.globl _main
                                     12 	.globl _getRTC
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
                                    109 	.globl _init
                                    110 	.globl _loop
                                    111 	.globl _sendByte
                                    112 	.globl _sendString
                                    113 	.globl _delay
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable items in internal ram 
                                    231 ;--------------------------------------------------------
                                    232 	.area	OSEG    (OVR,DATA)
                                    233 	.area	OSEG    (OVR,DATA)
                                    234 ;--------------------------------------------------------
                                    235 ; Stack segment in internal ram 
                                    236 ;--------------------------------------------------------
                                    237 	.area	SSEG
      000073                        238 __start__stack:
      000073                        239 	.ds	1
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
      000000 02 00 06         [24]  285 	ljmp	__sdcc_gsinit_startup
                                    286 ;--------------------------------------------------------
                                    287 ; global & static initialisations
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.area GSFINAL (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 	.globl __sdcc_gsinit_startup
                                    294 	.globl __sdcc_program_startup
                                    295 	.globl __start__stack
                                    296 	.globl __mcs51_genXINIT
                                    297 	.globl __mcs51_genXRAMCLEAR
                                    298 	.globl __mcs51_genRAMCLEAR
                                    299 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  300 	ljmp	__sdcc_program_startup
                                    301 ;--------------------------------------------------------
                                    302 ; Home
                                    303 ;--------------------------------------------------------
                                    304 	.area HOME    (CODE)
                                    305 	.area HOME    (CODE)
      000003                        306 __sdcc_program_startup:
      000003 02 00 62         [24]  307 	ljmp	_main
                                    308 ;	return from main will return to caller
                                    309 ;--------------------------------------------------------
                                    310 ; code
                                    311 ;--------------------------------------------------------
                                    312 	.area CSEG    (CODE)
                                    313 ;------------------------------------------------------------
                                    314 ;Allocation info for local variables in function 'main'
                                    315 ;------------------------------------------------------------
                                    316 ;	src/app.c:18: void main() {
                                    317 ;	-----------------------------------------
                                    318 ;	 function main
                                    319 ;	-----------------------------------------
      000062                        320 _main:
                           000007   321 	ar7 = 0x07
                           000006   322 	ar6 = 0x06
                           000005   323 	ar5 = 0x05
                           000004   324 	ar4 = 0x04
                           000003   325 	ar3 = 0x03
                           000002   326 	ar2 = 0x02
                           000001   327 	ar1 = 0x01
                           000000   328 	ar0 = 0x00
                                    329 ;	src/app.c:19: init();
      000062 12 00 6A         [24]  330 	lcall	_init
                                    331 ;	src/app.c:20: while (true) {
      000065                        332 00102$:
                                    333 ;	src/app.c:21: loop();
      000065 12 00 80         [24]  334 	lcall	_loop
                                    335 ;	src/app.c:23: }
      000068 80 FB            [24]  336 	sjmp	00102$
                                    337 ;------------------------------------------------------------
                                    338 ;Allocation info for local variables in function 'init'
                                    339 ;------------------------------------------------------------
                                    340 ;	src/app.c:25: void init() {
                                    341 ;	-----------------------------------------
                                    342 ;	 function init
                                    343 ;	-----------------------------------------
      00006A                        344 _init:
                                    345 ;	src/app.c:26: SCON = 0x50; // 0b 0101 0000
      00006A 75 98 50         [24]  346 	mov	_SCON,#0x50
                                    347 ;	src/app.c:27: TMOD = 0x20; // set timer1 as 8-bit auto reload mode
      00006D 75 89 20         [24]  348 	mov	_TMOD,#0x20
                                    349 ;	src/app.c:28: PCON = 0x80;
      000070 75 87 80         [24]  350 	mov	_PCON,#0x80
                                    351 ;	src/app.c:29: TH1 = TL1 = 0xf3;
      000073 75 8B F3         [24]  352 	mov	_TL1,#0xf3
      000076 75 8D F3         [24]  353 	mov	_TH1,#0xf3
                                    354 ;	src/app.c:31: TR1 = 1; // timer1 start run
                                    355 ;	assignBit
      000079 D2 8E            [12]  356 	setb	_TR1
                                    357 ;	src/app.c:32: ES = 1;  // enable uart interrupt
                                    358 ;	assignBit
      00007B D2 AC            [12]  359 	setb	_ES
                                    360 ;	src/app.c:33: EA = 1;  // open master inerrupt switch
                                    361 ;	assignBit
      00007D D2 AF            [12]  362 	setb	_EA
                                    363 ;	src/app.c:34: }
      00007F 22               [24]  364 	ret
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'loop'
                                    367 ;------------------------------------------------------------
                                    368 ;datetime                  Allocated to registers r5 r6 r7 
                                    369 ;------------------------------------------------------------
                                    370 ;	src/app.c:36: void loop() {
                                    371 ;	-----------------------------------------
                                    372 ;	 function loop
                                    373 ;	-----------------------------------------
      000080                        374 _loop:
                                    375 ;	src/app.c:38: char* datetime = getRTC();
      000080 12 00 D4         [24]  376 	lcall	_getRTC
                                    377 ;	src/app.c:39: sendString(datetime);
      000083 12 00 97         [24]  378 	lcall	_sendString
                                    379 ;	src/app.c:41: P1_0 = !P1_0;
      000086 B2 90            [12]  380 	cpl	_P1_0
                                    381 ;	src/app.c:42: delay(65535);
      000088 90 FF FF         [24]  382 	mov	dptr,#0xffff
                                    383 ;	src/app.c:43: }
      00008B 02 00 C2         [24]  384 	ljmp	_delay
                                    385 ;------------------------------------------------------------
                                    386 ;Allocation info for local variables in function 'sendByte'
                                    387 ;------------------------------------------------------------
                                    388 ;data                      Allocated to registers 
                                    389 ;------------------------------------------------------------
                                    390 ;	src/app.c:45: void sendByte(byte data) {
                                    391 ;	-----------------------------------------
                                    392 ;	 function sendByte
                                    393 ;	-----------------------------------------
      00008E                        394 _sendByte:
      00008E 85 82 99         [24]  395 	mov	_SBUF,dpl
                                    396 ;	src/app.c:47: while (!TI)
      000091                        397 00101$:
                                    398 ;	src/app.c:49: TI = 0;
                                    399 ;	assignBit
      000091 10 99 02         [24]  400 	jbc	_TI,00114$
      000094 80 FB            [24]  401 	sjmp	00101$
      000096                        402 00114$:
                                    403 ;	src/app.c:50: }
      000096 22               [24]  404 	ret
                                    405 ;------------------------------------------------------------
                                    406 ;Allocation info for local variables in function 'sendString'
                                    407 ;------------------------------------------------------------
                                    408 ;string                    Allocated to registers 
                                    409 ;------------------------------------------------------------
                                    410 ;	src/app.c:52: void sendString(char *string) {
                                    411 ;	-----------------------------------------
                                    412 ;	 function sendString
                                    413 ;	-----------------------------------------
      000097                        414 _sendString:
      000097 AD 82            [24]  415 	mov	r5,dpl
      000099 AE 83            [24]  416 	mov	r6,dph
      00009B AF F0            [24]  417 	mov	r7,b
                                    418 ;	src/app.c:53: while (*string) {
      00009D                        419 00101$:
      00009D 8D 82            [24]  420 	mov	dpl,r5
      00009F 8E 83            [24]  421 	mov	dph,r6
      0000A1 8F F0            [24]  422 	mov	b,r7
      0000A3 12 0B 67         [24]  423 	lcall	__gptrget
      0000A6 FC               [12]  424 	mov	r4,a
      0000A7 60 18            [24]  425 	jz	00104$
                                    426 ;	src/app.c:54: sendByte(*string++);
      0000A9 8C 82            [24]  427 	mov	dpl,r4
      0000AB 0D               [12]  428 	inc	r5
      0000AC BD 00 01         [24]  429 	cjne	r5,#0x00,00116$
      0000AF 0E               [12]  430 	inc	r6
      0000B0                        431 00116$:
      0000B0 C0 07            [24]  432 	push	ar7
      0000B2 C0 06            [24]  433 	push	ar6
      0000B4 C0 05            [24]  434 	push	ar5
      0000B6 12 00 8E         [24]  435 	lcall	_sendByte
      0000B9 D0 05            [24]  436 	pop	ar5
      0000BB D0 06            [24]  437 	pop	ar6
      0000BD D0 07            [24]  438 	pop	ar7
      0000BF 80 DC            [24]  439 	sjmp	00101$
      0000C1                        440 00104$:
                                    441 ;	src/app.c:56: }
      0000C1 22               [24]  442 	ret
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'delay'
                                    445 ;------------------------------------------------------------
                                    446 ;i                         Allocated to registers 
                                    447 ;------------------------------------------------------------
                                    448 ;	src/app.c:58: void delay(word i) {
                                    449 ;	-----------------------------------------
                                    450 ;	 function delay
                                    451 ;	-----------------------------------------
      0000C2                        452 _delay:
      0000C2 AE 82            [24]  453 	mov	r6,dpl
      0000C4 AF 83            [24]  454 	mov	r7,dph
                                    455 ;	src/app.c:59: while (i--)
      0000C6                        456 00101$:
      0000C6 8E 04            [24]  457 	mov	ar4,r6
      0000C8 8F 05            [24]  458 	mov	ar5,r7
      0000CA 1E               [12]  459 	dec	r6
      0000CB BE FF 01         [24]  460 	cjne	r6,#0xff,00111$
      0000CE 1F               [12]  461 	dec	r7
      0000CF                        462 00111$:
      0000CF EC               [12]  463 	mov	a,r4
      0000D0 4D               [12]  464 	orl	a,r5
      0000D1 70 F3            [24]  465 	jnz	00101$
                                    466 ;	src/app.c:61: }
      0000D3 22               [24]  467 	ret
                                    468 	.area CSEG    (CODE)
                                    469 	.area CONST   (CODE)
                                    470 	.area XINIT   (CODE)
                                    471 	.area CABS    (ABS,CODE)
