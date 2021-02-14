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
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _init
                                    109 	.globl _loop
                                    110 	.globl _sendByte
                                    111 	.globl _sendString
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
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable items in internal ram 
                                    230 ;--------------------------------------------------------
                                    231 	.area	OSEG    (OVR,DATA)
                                    232 	.area	OSEG    (OVR,DATA)
                                    233 ;--------------------------------------------------------
                                    234 ; Stack segment in internal ram 
                                    235 ;--------------------------------------------------------
                                    236 	.area	SSEG
      000008                        237 __start__stack:
      000008                        238 	.ds	1
                                    239 
                                    240 ;--------------------------------------------------------
                                    241 ; indirectly addressable internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area ISEG    (DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; absolute internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area IABS    (ABS,DATA)
                                    248 	.area IABS    (ABS,DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; bit data
                                    251 ;--------------------------------------------------------
                                    252 	.area BSEG    (BIT)
                                    253 ;--------------------------------------------------------
                                    254 ; paged external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area PSEG    (PAG,XDATA)
                                    257 ;--------------------------------------------------------
                                    258 ; external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area XSEG    (XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; absolute external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XABS    (ABS,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external initialized ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XISEG   (XDATA)
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT0 (CODE)
                                    271 	.area GSINIT1 (CODE)
                                    272 	.area GSINIT2 (CODE)
                                    273 	.area GSINIT3 (CODE)
                                    274 	.area GSINIT4 (CODE)
                                    275 	.area GSINIT5 (CODE)
                                    276 	.area GSINIT  (CODE)
                                    277 	.area GSFINAL (CODE)
                                    278 	.area CSEG    (CODE)
                                    279 ;--------------------------------------------------------
                                    280 ; interrupt vector 
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
      000000                        283 __interrupt_vect:
      000000 02 00 06         [24]  284 	ljmp	__sdcc_gsinit_startup
                                    285 ;--------------------------------------------------------
                                    286 ; global & static initialisations
                                    287 ;--------------------------------------------------------
                                    288 	.area HOME    (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.area GSFINAL (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.globl __sdcc_gsinit_startup
                                    293 	.globl __sdcc_program_startup
                                    294 	.globl __start__stack
                                    295 	.globl __mcs51_genXINIT
                                    296 	.globl __mcs51_genXRAMCLEAR
                                    297 	.globl __mcs51_genRAMCLEAR
                                    298 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  299 	ljmp	__sdcc_program_startup
                                    300 ;--------------------------------------------------------
                                    301 ; Home
                                    302 ;--------------------------------------------------------
                                    303 	.area HOME    (CODE)
                                    304 	.area HOME    (CODE)
      000003                        305 __sdcc_program_startup:
      000003 02 00 62         [24]  306 	ljmp	_main
                                    307 ;	return from main will return to caller
                                    308 ;--------------------------------------------------------
                                    309 ; code
                                    310 ;--------------------------------------------------------
                                    311 	.area CSEG    (CODE)
                                    312 ;------------------------------------------------------------
                                    313 ;Allocation info for local variables in function 'main'
                                    314 ;------------------------------------------------------------
                                    315 ;	src/app.c:15: void main() {
                                    316 ;	-----------------------------------------
                                    317 ;	 function main
                                    318 ;	-----------------------------------------
      000062                        319 _main:
                           000007   320 	ar7 = 0x07
                           000006   321 	ar6 = 0x06
                           000005   322 	ar5 = 0x05
                           000004   323 	ar4 = 0x04
                           000003   324 	ar3 = 0x03
                           000002   325 	ar2 = 0x02
                           000001   326 	ar1 = 0x01
                           000000   327 	ar0 = 0x00
                                    328 ;	src/app.c:16: init();
      000062 12 00 6A         [24]  329 	lcall	_init
                                    330 ;	src/app.c:17: while (true) {
      000065                        331 00102$:
                                    332 ;	src/app.c:18: loop();
      000065 12 00 80         [24]  333 	lcall	_loop
                                    334 ;	src/app.c:20: }
      000068 80 FB            [24]  335 	sjmp	00102$
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'init'
                                    338 ;------------------------------------------------------------
                                    339 ;	src/app.c:22: void init() {
                                    340 ;	-----------------------------------------
                                    341 ;	 function init
                                    342 ;	-----------------------------------------
      00006A                        343 _init:
                                    344 ;	src/app.c:23: SCON = 0x50; // 0b 0101 0000
      00006A 75 98 50         [24]  345 	mov	_SCON,#0x50
                                    346 ;	src/app.c:24: TMOD = 0x20; // set timer1 as 8-bit auto reload mode
      00006D 75 89 20         [24]  347 	mov	_TMOD,#0x20
                                    348 ;	src/app.c:25: PCON = 0x80;
      000070 75 87 80         [24]  349 	mov	_PCON,#0x80
                                    350 ;	src/app.c:26: TH1 = TL1 = 0xf3; // means 4800
      000073 75 8B F3         [24]  351 	mov	_TL1,#0xf3
      000076 75 8D F3         [24]  352 	mov	_TH1,#0xf3
                                    353 ;	src/app.c:28: TR1 = 1; // timer1 start run
                                    354 ;	assignBit
      000079 D2 8E            [12]  355 	setb	_TR1
                                    356 ;	src/app.c:29: ES = 1;  // enable uart interrupt
                                    357 ;	assignBit
      00007B D2 AC            [12]  358 	setb	_ES
                                    359 ;	src/app.c:30: EA = 1;  // open master inerrupt switch
                                    360 ;	assignBit
      00007D D2 AF            [12]  361 	setb	_EA
                                    362 ;	src/app.c:31: }
      00007F 22               [24]  363 	ret
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'loop'
                                    366 ;------------------------------------------------------------
                                    367 ;	src/app.c:33: void loop() {
                                    368 ;	-----------------------------------------
                                    369 ;	 function loop
                                    370 ;	-----------------------------------------
      000080                        371 _loop:
                                    372 ;	src/app.c:34: sendString("hello world\n");
      000080 90 00 F7         [24]  373 	mov	dptr,#___str_0
      000083 75 F0 80         [24]  374 	mov	b,#0x80
      000086 12 00 9A         [24]  375 	lcall	_sendString
                                    376 ;	src/app.c:35: P0_0 = !P0_0;
      000089 B2 80            [12]  377 	cpl	_P0_0
                                    378 ;	src/app.c:36: delay(50000);
      00008B 90 C3 50         [24]  379 	mov	dptr,#0xc350
                                    380 ;	src/app.c:37: }
      00008E 02 00 C5         [24]  381 	ljmp	_delay
                                    382 ;------------------------------------------------------------
                                    383 ;Allocation info for local variables in function 'sendByte'
                                    384 ;------------------------------------------------------------
                                    385 ;data                      Allocated to registers 
                                    386 ;------------------------------------------------------------
                                    387 ;	src/app.c:39: void sendByte(byte data) {
                                    388 ;	-----------------------------------------
                                    389 ;	 function sendByte
                                    390 ;	-----------------------------------------
      000091                        391 _sendByte:
      000091 85 82 99         [24]  392 	mov	_SBUF,dpl
                                    393 ;	src/app.c:41: while (!TI)
      000094                        394 00101$:
                                    395 ;	src/app.c:43: TI = 0;
                                    396 ;	assignBit
      000094 10 99 02         [24]  397 	jbc	_TI,00114$
      000097 80 FB            [24]  398 	sjmp	00101$
      000099                        399 00114$:
                                    400 ;	src/app.c:44: }
      000099 22               [24]  401 	ret
                                    402 ;------------------------------------------------------------
                                    403 ;Allocation info for local variables in function 'sendString'
                                    404 ;------------------------------------------------------------
                                    405 ;string                    Allocated to registers 
                                    406 ;------------------------------------------------------------
                                    407 ;	src/app.c:46: void sendString(char *string) {
                                    408 ;	-----------------------------------------
                                    409 ;	 function sendString
                                    410 ;	-----------------------------------------
      00009A                        411 _sendString:
      00009A AD 82            [24]  412 	mov	r5,dpl
      00009C AE 83            [24]  413 	mov	r6,dph
      00009E AF F0            [24]  414 	mov	r7,b
                                    415 ;	src/app.c:47: while (*string) {
      0000A0                        416 00101$:
      0000A0 8D 82            [24]  417 	mov	dpl,r5
      0000A2 8E 83            [24]  418 	mov	dph,r6
      0000A4 8F F0            [24]  419 	mov	b,r7
      0000A6 12 00 D7         [24]  420 	lcall	__gptrget
      0000A9 FC               [12]  421 	mov	r4,a
      0000AA 60 18            [24]  422 	jz	00104$
                                    423 ;	src/app.c:48: sendByte(*string++);
      0000AC 8C 82            [24]  424 	mov	dpl,r4
      0000AE 0D               [12]  425 	inc	r5
      0000AF BD 00 01         [24]  426 	cjne	r5,#0x00,00116$
      0000B2 0E               [12]  427 	inc	r6
      0000B3                        428 00116$:
      0000B3 C0 07            [24]  429 	push	ar7
      0000B5 C0 06            [24]  430 	push	ar6
      0000B7 C0 05            [24]  431 	push	ar5
      0000B9 12 00 91         [24]  432 	lcall	_sendByte
      0000BC D0 05            [24]  433 	pop	ar5
      0000BE D0 06            [24]  434 	pop	ar6
      0000C0 D0 07            [24]  435 	pop	ar7
      0000C2 80 DC            [24]  436 	sjmp	00101$
      0000C4                        437 00104$:
                                    438 ;	src/app.c:50: }
      0000C4 22               [24]  439 	ret
                                    440 ;------------------------------------------------------------
                                    441 ;Allocation info for local variables in function 'delay'
                                    442 ;------------------------------------------------------------
                                    443 ;i                         Allocated to registers 
                                    444 ;------------------------------------------------------------
                                    445 ;	src/app.c:52: void delay(word i) {
                                    446 ;	-----------------------------------------
                                    447 ;	 function delay
                                    448 ;	-----------------------------------------
      0000C5                        449 _delay:
      0000C5 AE 82            [24]  450 	mov	r6,dpl
      0000C7 AF 83            [24]  451 	mov	r7,dph
                                    452 ;	src/app.c:53: while (i--)
      0000C9                        453 00101$:
      0000C9 8E 04            [24]  454 	mov	ar4,r6
      0000CB 8F 05            [24]  455 	mov	ar5,r7
      0000CD 1E               [12]  456 	dec	r6
      0000CE BE FF 01         [24]  457 	cjne	r6,#0xff,00111$
      0000D1 1F               [12]  458 	dec	r7
      0000D2                        459 00111$:
      0000D2 EC               [12]  460 	mov	a,r4
      0000D3 4D               [12]  461 	orl	a,r5
      0000D4 70 F3            [24]  462 	jnz	00101$
                                    463 ;	src/app.c:55: }
      0000D6 22               [24]  464 	ret
                                    465 	.area CSEG    (CODE)
                                    466 	.area CONST   (CODE)
                                    467 	.area CONST   (CODE)
      0000F7                        468 ___str_0:
      0000F7 68 65 6C 6C 6F 20 77   469 	.ascii "hello world"
             6F 72 6C 64
      000102 0A                     470 	.db 0x0a
      000103 00                     471 	.db 0x00
                                    472 	.area CSEG    (CODE)
                                    473 	.area XINIT   (CODE)
                                    474 	.area CABS    (ABS,CODE)
