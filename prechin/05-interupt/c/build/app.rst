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
                                    108 	.globl _status
                                    109 	.globl _init
                                    110 	.globl _int0
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
      000008                        228 _status::
      000008                        229 	.ds 1
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable items in internal ram 
                                    232 ;--------------------------------------------------------
                                    233 	.area	OSEG    (OVR,DATA)
                                    234 ;--------------------------------------------------------
                                    235 ; Stack segment in internal ram 
                                    236 ;--------------------------------------------------------
                                    237 	.area	SSEG
      000009                        238 __start__stack:
      000009                        239 	.ds	1
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
      000000 02 00 09         [24]  285 	ljmp	__sdcc_gsinit_startup
      000003 02 00 73         [24]  286 	ljmp	_int0
                                    287 ;--------------------------------------------------------
                                    288 ; global & static initialisations
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 	.globl __sdcc_gsinit_startup
                                    295 	.globl __sdcc_program_startup
                                    296 	.globl __start__stack
                                    297 	.globl __mcs51_genXINIT
                                    298 	.globl __mcs51_genXRAMCLEAR
                                    299 	.globl __mcs51_genRAMCLEAR
                                    300 	.area GSFINAL (CODE)
      000062 02 00 06         [24]  301 	ljmp	__sdcc_program_startup
                                    302 ;--------------------------------------------------------
                                    303 ; Home
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
                                    306 	.area HOME    (CODE)
      000006                        307 __sdcc_program_startup:
      000006 02 00 65         [24]  308 	ljmp	_main
                                    309 ;	return from main will return to caller
                                    310 ;--------------------------------------------------------
                                    311 ; code
                                    312 ;--------------------------------------------------------
                                    313 	.area CSEG    (CODE)
                                    314 ;------------------------------------------------------------
                                    315 ;Allocation info for local variables in function 'main'
                                    316 ;------------------------------------------------------------
                                    317 ;	src/app.c:15: void main() {
                                    318 ;	-----------------------------------------
                                    319 ;	 function main
                                    320 ;	-----------------------------------------
      000065                        321 _main:
                           000007   322 	ar7 = 0x07
                           000006   323 	ar6 = 0x06
                           000005   324 	ar5 = 0x05
                           000004   325 	ar4 = 0x04
                           000003   326 	ar3 = 0x03
                           000002   327 	ar2 = 0x02
                           000001   328 	ar1 = 0x01
                           000000   329 	ar0 = 0x00
                                    330 ;	src/app.c:16: init();
      000065 12 00 6A         [24]  331 	lcall	_init
                                    332 ;	src/app.c:17: while (true) {
      000068                        333 00102$:
                                    334 ;	src/app.c:20: }
      000068 80 FE            [24]  335 	sjmp	00102$
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'init'
                                    338 ;------------------------------------------------------------
                                    339 ;	src/app.c:22: void init() {
                                    340 ;	-----------------------------------------
                                    341 ;	 function init
                                    342 ;	-----------------------------------------
      00006A                        343 _init:
                                    344 ;	src/app.c:23: IT0 = 1;  // set INT0 interrupt type: (1: falling, 0: low level)
                                    345 ;	assignBit
      00006A D2 88            [12]  346 	setb	_IT0
                                    347 ;	src/app.c:24: EX0 = 1;  // enable INT0 interrupt
                                    348 ;	assignBit
      00006C D2 A8            [12]  349 	setb	_EX0
                                    350 ;	src/app.c:25: EA = 1;   // open global interrupt switch
                                    351 ;	assignBit
      00006E D2 AF            [12]  352 	setb	_EA
                                    353 ;	src/app.c:26: P2_1 = 1;
                                    354 ;	assignBit
      000070 D2 A1            [12]  355 	setb	_P2_1
                                    356 ;	src/app.c:27: }
      000072 22               [24]  357 	ret
                                    358 ;------------------------------------------------------------
                                    359 ;Allocation info for local variables in function 'int0'
                                    360 ;------------------------------------------------------------
                                    361 ;	src/app.c:29: void int0() __interrupt(0) {
                                    362 ;	-----------------------------------------
                                    363 ;	 function int0
                                    364 ;	-----------------------------------------
      000073                        365 _int0:
                                    366 ;	src/app.c:30: P2_1 = 0;
                                    367 ;	assignBit
      000073 C2 A1            [12]  368 	clr	_P2_1
                                    369 ;	src/app.c:31: }
      000075 32               [24]  370 	reti
                                    371 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    372 ;	eliminated unneeded push/pop psw
                                    373 ;	eliminated unneeded push/pop dpl
                                    374 ;	eliminated unneeded push/pop dph
                                    375 ;	eliminated unneeded push/pop b
                                    376 ;	eliminated unneeded push/pop acc
                                    377 ;------------------------------------------------------------
                                    378 ;Allocation info for local variables in function 'loop'
                                    379 ;------------------------------------------------------------
                                    380 ;	src/app.c:33: void loop() {}
                                    381 ;	-----------------------------------------
                                    382 ;	 function loop
                                    383 ;	-----------------------------------------
      000076                        384 _loop:
      000076 22               [24]  385 	ret
                                    386 ;------------------------------------------------------------
                                    387 ;Allocation info for local variables in function 'delay'
                                    388 ;------------------------------------------------------------
                                    389 ;i                         Allocated to registers 
                                    390 ;------------------------------------------------------------
                                    391 ;	src/app.c:35: void delay(u16 i) {
                                    392 ;	-----------------------------------------
                                    393 ;	 function delay
                                    394 ;	-----------------------------------------
      000077                        395 _delay:
      000077 AE 82            [24]  396 	mov	r6,dpl
      000079 AF 83            [24]  397 	mov	r7,dph
                                    398 ;	src/app.c:36: while (i--)
      00007B                        399 00101$:
      00007B 8E 04            [24]  400 	mov	ar4,r6
      00007D 8F 05            [24]  401 	mov	ar5,r7
      00007F 1E               [12]  402 	dec	r6
      000080 BE FF 01         [24]  403 	cjne	r6,#0xff,00111$
      000083 1F               [12]  404 	dec	r7
      000084                        405 00111$:
      000084 EC               [12]  406 	mov	a,r4
      000085 4D               [12]  407 	orl	a,r5
      000086 70 F3            [24]  408 	jnz	00101$
                                    409 ;	src/app.c:38: }
      000088 22               [24]  410 	ret
                                    411 	.area CSEG    (CODE)
                                    412 	.area CONST   (CODE)
                                    413 	.area XINIT   (CODE)
                                    414 	.area CABS    (ABS,CODE)
