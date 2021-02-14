                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module rtc
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _READ_RTC_ADDR
                                     12 	.globl _sprintf
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
                                    109 	.globl _getRTC
                                    110 	.globl _read
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
      000008                        226 _getRTC_time_65536_43:
      000008                        227 	.ds 7
      00000F                        228 _getRTC_result_65537_46:
      00000F                        229 	.ds 30
      00002D                        230 _getRTC_sloc0_1_0:
      00002D                        231 	.ds 2
      00002F                        232 _getRTC_sloc1_1_0:
      00002F                        233 	.ds 2
      000031                        234 _getRTC_sloc2_1_0:
      000031                        235 	.ds 2
      000033                        236 _getRTC_sloc3_1_0:
      000033                        237 	.ds 2
                                    238 ;--------------------------------------------------------
                                    239 ; overlayable items in internal ram 
                                    240 ;--------------------------------------------------------
                                    241 	.area	OSEG    (OVR,DATA)
                                    242 ;--------------------------------------------------------
                                    243 ; indirectly addressable internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area ISEG    (DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; absolute internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area IABS    (ABS,DATA)
                                    250 	.area IABS    (ABS,DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; bit data
                                    253 ;--------------------------------------------------------
                                    254 	.area BSEG    (BIT)
                                    255 ;--------------------------------------------------------
                                    256 ; paged external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area PSEG    (PAG,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XSEG    (XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XABS    (ABS,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; external initialized ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XISEG   (XDATA)
                                    271 	.area HOME    (CODE)
                                    272 	.area GSINIT0 (CODE)
                                    273 	.area GSINIT1 (CODE)
                                    274 	.area GSINIT2 (CODE)
                                    275 	.area GSINIT3 (CODE)
                                    276 	.area GSINIT4 (CODE)
                                    277 	.area GSINIT5 (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area CSEG    (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; global & static initialisations
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; Home
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area HOME    (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; code
                                    295 ;--------------------------------------------------------
                                    296 	.area CSEG    (CODE)
                                    297 ;------------------------------------------------------------
                                    298 ;Allocation info for local variables in function 'getRTC'
                                    299 ;------------------------------------------------------------
                                    300 ;time                      Allocated with name '_getRTC_time_65536_43'
                                    301 ;i                         Allocated to registers r7 
                                    302 ;result                    Allocated with name '_getRTC_result_65537_46'
                                    303 ;sloc0                     Allocated with name '_getRTC_sloc0_1_0'
                                    304 ;sloc1                     Allocated with name '_getRTC_sloc1_1_0'
                                    305 ;sloc2                     Allocated with name '_getRTC_sloc2_1_0'
                                    306 ;sloc3                     Allocated with name '_getRTC_sloc3_1_0'
                                    307 ;------------------------------------------------------------
                                    308 ;	src/rtc.c:7: char *getRTC() {
                                    309 ;	-----------------------------------------
                                    310 ;	 function getRTC
                                    311 ;	-----------------------------------------
      0000D4                        312 _getRTC:
                           000007   313 	ar7 = 0x07
                           000006   314 	ar6 = 0x06
                           000005   315 	ar5 = 0x05
                           000004   316 	ar4 = 0x04
                           000003   317 	ar3 = 0x03
                           000002   318 	ar2 = 0x02
                           000001   319 	ar1 = 0x01
                           000000   320 	ar0 = 0x00
                                    321 ;	src/rtc.c:12: for (i = 0; i < 7; ++i) {
      0000D4 7F 00            [12]  322 	mov	r7,#0x00
      0000D6                        323 00102$:
                                    324 ;	src/rtc.c:13: time[i] = read(READ_RTC_ADDR[i]);
      0000D6 EF               [12]  325 	mov	a,r7
      0000D7 24 08            [12]  326 	add	a,#_getRTC_time_65536_43
      0000D9 F9               [12]  327 	mov	r1,a
      0000DA EF               [12]  328 	mov	a,r7
      0000DB 90 0B A2         [24]  329 	mov	dptr,#_READ_RTC_ADDR
      0000DE 93               [24]  330 	movc	a,@a+dptr
      0000DF F5 82            [12]  331 	mov	dpl,a
      0000E1 C0 07            [24]  332 	push	ar7
      0000E3 C0 01            [24]  333 	push	ar1
      0000E5 12 01 59         [24]  334 	lcall	_read
      0000E8 E5 82            [12]  335 	mov	a,dpl
      0000EA D0 01            [24]  336 	pop	ar1
      0000EC D0 07            [24]  337 	pop	ar7
      0000EE F7               [12]  338 	mov	@r1,a
                                    339 ;	src/rtc.c:12: for (i = 0; i < 7; ++i) {
      0000EF 0F               [12]  340 	inc	r7
      0000F0 BF 07 00         [24]  341 	cjne	r7,#0x07,00115$
      0000F3                        342 00115$:
      0000F3 40 E1            [24]  343 	jc	00102$
                                    344 ;	src/rtc.c:19: time[3], time[4], time[5], time[6]);
      0000F5 AE 0E            [24]  345 	mov	r6,(_getRTC_time_65536_43 + 0x0006)
      0000F7 7F 00            [12]  346 	mov	r7,#0x00
      0000F9 AC 0D            [24]  347 	mov	r4,(_getRTC_time_65536_43 + 0x0005)
      0000FB 7D 00            [12]  348 	mov	r5,#0x00
      0000FD 85 0C 2D         [24]  349 	mov	_getRTC_sloc0_1_0,(_getRTC_time_65536_43 + 0x0004)
                                    350 ;	1-genFromRTrack replaced	mov	(_getRTC_sloc0_1_0 + 1),#0x00
      000100 8F 2E            [24]  351 	mov	(_getRTC_sloc0_1_0 + 1),r7
      000102 85 0B 2F         [24]  352 	mov	_getRTC_sloc1_1_0,(_getRTC_time_65536_43 + 0x0003)
                                    353 ;	1-genFromRTrack replaced	mov	(_getRTC_sloc1_1_0 + 1),#0x00
      000105 8F 30            [24]  354 	mov	(_getRTC_sloc1_1_0 + 1),r7
                                    355 ;	src/rtc.c:18: sprintf(result, "%x %x %x %x %x %x %x\r\n", time[0], time[1], time[2],
      000107 85 0A 31         [24]  356 	mov	_getRTC_sloc2_1_0,(_getRTC_time_65536_43 + 0x0002)
                                    357 ;	1-genFromRTrack replaced	mov	(_getRTC_sloc2_1_0 + 1),#0x00
      00010A 8F 32            [24]  358 	mov	(_getRTC_sloc2_1_0 + 1),r7
      00010C 85 09 33         [24]  359 	mov	_getRTC_sloc3_1_0,(_getRTC_time_65536_43 + 0x0001)
                                    360 ;	1-genFromRTrack replaced	mov	(_getRTC_sloc3_1_0 + 1),#0x00
      00010F 8F 34            [24]  361 	mov	(_getRTC_sloc3_1_0 + 1),r7
      000111 AA 08            [24]  362 	mov	r2,_getRTC_time_65536_43
      000113 7B 00            [12]  363 	mov	r3,#0x00
      000115 C0 06            [24]  364 	push	ar6
      000117 C0 07            [24]  365 	push	ar7
      000119 C0 04            [24]  366 	push	ar4
      00011B C0 05            [24]  367 	push	ar5
      00011D C0 2D            [24]  368 	push	_getRTC_sloc0_1_0
      00011F C0 2E            [24]  369 	push	(_getRTC_sloc0_1_0 + 1)
      000121 C0 2F            [24]  370 	push	_getRTC_sloc1_1_0
      000123 C0 30            [24]  371 	push	(_getRTC_sloc1_1_0 + 1)
      000125 C0 31            [24]  372 	push	_getRTC_sloc2_1_0
      000127 C0 32            [24]  373 	push	(_getRTC_sloc2_1_0 + 1)
      000129 C0 33            [24]  374 	push	_getRTC_sloc3_1_0
      00012B C0 34            [24]  375 	push	(_getRTC_sloc3_1_0 + 1)
      00012D C0 02            [24]  376 	push	ar2
      00012F C0 03            [24]  377 	push	ar3
      000131 74 A9            [12]  378 	mov	a,#___str_0
      000133 C0 E0            [24]  379 	push	acc
      000135 74 0B            [12]  380 	mov	a,#(___str_0 >> 8)
      000137 C0 E0            [24]  381 	push	acc
      000139 74 80            [12]  382 	mov	a,#0x80
      00013B C0 E0            [24]  383 	push	acc
      00013D 74 0F            [12]  384 	mov	a,#_getRTC_result_65537_46
      00013F C0 E0            [24]  385 	push	acc
      000141 74 00            [12]  386 	mov	a,#(_getRTC_result_65537_46 >> 8)
      000143 C0 E0            [24]  387 	push	acc
      000145 74 40            [12]  388 	mov	a,#0x40
      000147 C0 E0            [24]  389 	push	acc
      000149 12 02 5F         [24]  390 	lcall	_sprintf
      00014C E5 81            [12]  391 	mov	a,sp
      00014E 24 EC            [12]  392 	add	a,#0xec
      000150 F5 81            [12]  393 	mov	sp,a
                                    394 ;	src/rtc.c:20: return result;
      000152 90 00 0F         [24]  395 	mov	dptr,#_getRTC_result_65537_46
      000155 75 F0 40         [24]  396 	mov	b,#0x40
                                    397 ;	src/rtc.c:21: }
      000158 22               [24]  398 	ret
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'read'
                                    401 ;------------------------------------------------------------
                                    402 ;addr                      Allocated to registers r7 
                                    403 ;result                    Allocated to registers r6 
                                    404 ;i                         Allocated to registers r5 
                                    405 ;bit                       Allocated to registers r5 
                                    406 ;------------------------------------------------------------
                                    407 ;	src/rtc.c:23: byte read(byte addr) {
                                    408 ;	-----------------------------------------
                                    409 ;	 function read
                                    410 ;	-----------------------------------------
      000159                        411 _read:
      000159 AF 82            [24]  412 	mov	r7,dpl
                                    413 ;	src/rtc.c:24: byte result = 0;
      00015B 7E 00            [12]  414 	mov	r6,#0x00
                                    415 ;	src/rtc.c:29: RST = 0;
                                    416 ;	assignBit
      00015D C2 B5            [12]  417 	clr	_P3_5
                                    418 ;	src/rtc.c:30: _nop_();
      00015F 00               [12]  419 	NOP	
                                    420 ;	src/rtc.c:32: SCLK = 0;
                                    421 ;	assignBit
      000160 C2 B6            [12]  422 	clr	_P3_6
                                    423 ;	src/rtc.c:33: _nop_();
      000162 00               [12]  424 	NOP	
                                    425 ;	src/rtc.c:35: RST = 1;
                                    426 ;	assignBit
      000163 D2 B5            [12]  427 	setb	_P3_5
                                    428 ;	src/rtc.c:36: _nop_();
      000165 00               [12]  429 	NOP	
                                    430 ;	src/rtc.c:38: for (i = 0; i < 8; ++i) {
      000166 7D 00            [12]  431 	mov	r5,#0x00
      000168                        432 00103$:
                                    433 ;	src/rtc.c:39: DSIO = addr & 0x01;
      000168 EF               [12]  434 	mov	a,r7
      000169 54 01            [12]  435 	anl	a,#0x01
      00016B FC               [12]  436 	mov	r4,a
      00016C 24 FF            [12]  437 	add	a,#0xff
      00016E 92 B4            [24]  438 	mov	_P3_4,c
                                    439 ;	src/rtc.c:40: addr >>= 1;
      000170 EF               [12]  440 	mov	a,r7
      000171 C3               [12]  441 	clr	c
      000172 13               [12]  442 	rrc	a
      000173 FF               [12]  443 	mov	r7,a
                                    444 ;	src/rtc.c:41: SCLK = 1;
                                    445 ;	assignBit
      000174 D2 B6            [12]  446 	setb	_P3_6
                                    447 ;	src/rtc.c:42: _nop_();
      000176 00               [12]  448 	NOP	
                                    449 ;	src/rtc.c:43: SCLK = 0;
                                    450 ;	assignBit
      000177 C2 B6            [12]  451 	clr	_P3_6
                                    452 ;	src/rtc.c:44: _nop_();
      000179 00               [12]  453 	NOP	
                                    454 ;	src/rtc.c:38: for (i = 0; i < 8; ++i) {
      00017A 0D               [12]  455 	inc	r5
      00017B BD 08 00         [24]  456 	cjne	r5,#0x08,00127$
      00017E                        457 00127$:
      00017E 40 E8            [24]  458 	jc	00103$
                                    459 ;	src/rtc.c:47: _nop_();
      000180 00               [12]  460 	NOP	
                                    461 ;	src/rtc.c:49: for (i = 0; i < 8; ++i) {
      000181 7F 00            [12]  462 	mov	r7,#0x00
      000183                        463 00105$:
                                    464 ;	src/rtc.c:50: bit = DSIO;
      000183 A2 B4            [12]  465 	mov	c,_P3_4
      000185 E4               [12]  466 	clr	a
      000186 33               [12]  467 	rlc	a
      000187 FD               [12]  468 	mov	r5,a
                                    469 ;	src/rtc.c:51: result |= bit << i;
      000188 8F F0            [24]  470 	mov	b,r7
      00018A 05 F0            [12]  471 	inc	b
      00018C ED               [12]  472 	mov	a,r5
      00018D 80 02            [24]  473 	sjmp	00131$
      00018F                        474 00129$:
      00018F 25 E0            [12]  475 	add	a,acc
      000191                        476 00131$:
      000191 D5 F0 FB         [24]  477 	djnz	b,00129$
      000194 FD               [12]  478 	mov	r5,a
      000195 42 06            [12]  479 	orl	ar6,a
                                    480 ;	src/rtc.c:52: SCLK = 1;
                                    481 ;	assignBit
      000197 D2 B6            [12]  482 	setb	_P3_6
                                    483 ;	src/rtc.c:53: _nop_();
      000199 00               [12]  484 	NOP	
                                    485 ;	src/rtc.c:54: SCLK = 0;
                                    486 ;	assignBit
      00019A C2 B6            [12]  487 	clr	_P3_6
                                    488 ;	src/rtc.c:55: _nop_();
      00019C 00               [12]  489 	NOP	
                                    490 ;	src/rtc.c:49: for (i = 0; i < 8; ++i) {
      00019D 0F               [12]  491 	inc	r7
      00019E BF 08 00         [24]  492 	cjne	r7,#0x08,00132$
      0001A1                        493 00132$:
      0001A1 40 E0            [24]  494 	jc	00105$
                                    495 ;	src/rtc.c:58: RST = 0;
                                    496 ;	assignBit
      0001A3 C2 B5            [12]  497 	clr	_P3_5
                                    498 ;	src/rtc.c:59: _nop_();
      0001A5 00               [12]  499 	NOP	
                                    500 ;	src/rtc.c:60: SCLK = 1;
                                    501 ;	assignBit
      0001A6 D2 B6            [12]  502 	setb	_P3_6
                                    503 ;	src/rtc.c:61: _nop_();
      0001A8 00               [12]  504 	NOP	
                                    505 ;	src/rtc.c:62: DSIO = 0;
                                    506 ;	assignBit
      0001A9 C2 B4            [12]  507 	clr	_P3_4
                                    508 ;	src/rtc.c:63: _nop_();
      0001AB 00               [12]  509 	NOP	
                                    510 ;	src/rtc.c:64: DSIO = 1;
                                    511 ;	assignBit
      0001AC D2 B4            [12]  512 	setb	_P3_4
                                    513 ;	src/rtc.c:65: _nop_();
      0001AE 00               [12]  514 	NOP	
                                    515 ;	src/rtc.c:66: return result;
      0001AF 8E 82            [24]  516 	mov	dpl,r6
                                    517 ;	src/rtc.c:67: }
      0001B1 22               [24]  518 	ret
                                    519 	.area CSEG    (CODE)
                                    520 	.area CONST   (CODE)
      000BA2                        521 _READ_RTC_ADDR:
      000BA2 81                     522 	.db #0x81	; 129
      000BA3 83                     523 	.db #0x83	; 131
      000BA4 85                     524 	.db #0x85	; 133
      000BA5 87                     525 	.db #0x87	; 135
      000BA6 89                     526 	.db #0x89	; 137
      000BA7 8B                     527 	.db #0x8b	; 139
      000BA8 8D                     528 	.db #0x8d	; 141
                                    529 	.area CONST   (CODE)
      000BA9                        530 ___str_0:
      000BA9 25 78 20 25 78 20 25   531 	.ascii "%x %x %x %x %x %x %x"
             78 20 25 78 20 25 78
             20 25 78 20 25 78
      000BBD 0D                     532 	.db 0x0d
      000BBE 0A                     533 	.db 0x0a
      000BBF 00                     534 	.db 0x00
                                    535 	.area CSEG    (CODE)
                                    536 	.area XINIT   (CODE)
                                    537 	.area CABS    (ABS,CODE)
