;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Mac OS X x86_64)
;--------------------------------------------------------
	.module rtc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _READ_RTC_ADDR
	.globl _sprintf
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _getRTC
	.globl _read
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_getRTC_time_65536_43:
	.ds 7
_getRTC_result_65537_46:
	.ds 30
_getRTC_sloc0_1_0:
	.ds 2
_getRTC_sloc1_1_0:
	.ds 2
_getRTC_sloc2_1_0:
	.ds 2
_getRTC_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'getRTC'
;------------------------------------------------------------
;time                      Allocated with name '_getRTC_time_65536_43'
;i                         Allocated to registers r7 
;result                    Allocated with name '_getRTC_result_65537_46'
;sloc0                     Allocated with name '_getRTC_sloc0_1_0'
;sloc1                     Allocated with name '_getRTC_sloc1_1_0'
;sloc2                     Allocated with name '_getRTC_sloc2_1_0'
;sloc3                     Allocated with name '_getRTC_sloc3_1_0'
;------------------------------------------------------------
;	src/rtc.c:7: char *getRTC() {
;	-----------------------------------------
;	 function getRTC
;	-----------------------------------------
_getRTC:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/rtc.c:12: for (i = 0; i < 7; ++i) {
	mov	r7,#0x00
00102$:
;	src/rtc.c:13: time[i] = read(READ_RTC_ADDR[i]);
	mov	a,r7
	add	a,#_getRTC_time_65536_43
	mov	r1,a
	mov	a,r7
	mov	dptr,#_READ_RTC_ADDR
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar1
	lcall	_read
	mov	a,dpl
	pop	ar1
	pop	ar7
	mov	@r1,a
;	src/rtc.c:12: for (i = 0; i < 7; ++i) {
	inc	r7
	cjne	r7,#0x07,00115$
00115$:
	jc	00102$
;	src/rtc.c:19: time[3], time[4], time[5], time[6]);
	mov	r6,(_getRTC_time_65536_43 + 0x0006)
	mov	r7,#0x00
	mov	r4,(_getRTC_time_65536_43 + 0x0005)
	mov	r5,#0x00
	mov	_getRTC_sloc0_1_0,(_getRTC_time_65536_43 + 0x0004)
;	1-genFromRTrack replaced	mov	(_getRTC_sloc0_1_0 + 1),#0x00
	mov	(_getRTC_sloc0_1_0 + 1),r7
	mov	_getRTC_sloc1_1_0,(_getRTC_time_65536_43 + 0x0003)
;	1-genFromRTrack replaced	mov	(_getRTC_sloc1_1_0 + 1),#0x00
	mov	(_getRTC_sloc1_1_0 + 1),r7
;	src/rtc.c:18: sprintf(result, "%x %x %x %x %x %x %x\r\n", time[0], time[1], time[2],
	mov	_getRTC_sloc2_1_0,(_getRTC_time_65536_43 + 0x0002)
;	1-genFromRTrack replaced	mov	(_getRTC_sloc2_1_0 + 1),#0x00
	mov	(_getRTC_sloc2_1_0 + 1),r7
	mov	_getRTC_sloc3_1_0,(_getRTC_time_65536_43 + 0x0001)
;	1-genFromRTrack replaced	mov	(_getRTC_sloc3_1_0 + 1),#0x00
	mov	(_getRTC_sloc3_1_0 + 1),r7
	mov	r2,_getRTC_time_65536_43
	mov	r3,#0x00
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	_getRTC_sloc0_1_0
	push	(_getRTC_sloc0_1_0 + 1)
	push	_getRTC_sloc1_1_0
	push	(_getRTC_sloc1_1_0 + 1)
	push	_getRTC_sloc2_1_0
	push	(_getRTC_sloc2_1_0 + 1)
	push	_getRTC_sloc3_1_0
	push	(_getRTC_sloc3_1_0 + 1)
	push	ar2
	push	ar3
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_getRTC_result_65537_46
	push	acc
	mov	a,#(_getRTC_result_65537_46 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xec
	mov	sp,a
;	src/rtc.c:20: return result;
	mov	dptr,#_getRTC_result_65537_46
	mov	b,#0x40
;	src/rtc.c:21: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;result                    Allocated to registers r6 
;i                         Allocated to registers r5 
;bit                       Allocated to registers r5 
;------------------------------------------------------------
;	src/rtc.c:23: byte read(byte addr) {
;	-----------------------------------------
;	 function read
;	-----------------------------------------
_read:
	mov	r7,dpl
;	src/rtc.c:24: byte result = 0;
	mov	r6,#0x00
;	src/rtc.c:29: RST = 0;
;	assignBit
	clr	_P3_5
;	src/rtc.c:30: _nop_();
	NOP	
;	src/rtc.c:32: SCLK = 0;
;	assignBit
	clr	_P3_6
;	src/rtc.c:33: _nop_();
	NOP	
;	src/rtc.c:35: RST = 1;
;	assignBit
	setb	_P3_5
;	src/rtc.c:36: _nop_();
	NOP	
;	src/rtc.c:38: for (i = 0; i < 8; ++i) {
	mov	r5,#0x00
00103$:
;	src/rtc.c:39: DSIO = addr & 0x01;
	mov	a,r7
	anl	a,#0x01
	mov	r4,a
	add	a,#0xff
	mov	_P3_4,c
;	src/rtc.c:40: addr >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	src/rtc.c:41: SCLK = 1;
;	assignBit
	setb	_P3_6
;	src/rtc.c:42: _nop_();
	NOP	
;	src/rtc.c:43: SCLK = 0;
;	assignBit
	clr	_P3_6
;	src/rtc.c:44: _nop_();
	NOP	
;	src/rtc.c:38: for (i = 0; i < 8; ++i) {
	inc	r5
	cjne	r5,#0x08,00127$
00127$:
	jc	00103$
;	src/rtc.c:47: _nop_();
	NOP	
;	src/rtc.c:49: for (i = 0; i < 8; ++i) {
	mov	r7,#0x00
00105$:
;	src/rtc.c:50: bit = DSIO;
	mov	c,_P3_4
	clr	a
	rlc	a
	mov	r5,a
;	src/rtc.c:51: result |= bit << i;
	mov	b,r7
	inc	b
	mov	a,r5
	sjmp	00131$
00129$:
	add	a,acc
00131$:
	djnz	b,00129$
	mov	r5,a
	orl	ar6,a
;	src/rtc.c:52: SCLK = 1;
;	assignBit
	setb	_P3_6
;	src/rtc.c:53: _nop_();
	NOP	
;	src/rtc.c:54: SCLK = 0;
;	assignBit
	clr	_P3_6
;	src/rtc.c:55: _nop_();
	NOP	
;	src/rtc.c:49: for (i = 0; i < 8; ++i) {
	inc	r7
	cjne	r7,#0x08,00132$
00132$:
	jc	00105$
;	src/rtc.c:58: RST = 0;
;	assignBit
	clr	_P3_5
;	src/rtc.c:59: _nop_();
	NOP	
;	src/rtc.c:60: SCLK = 1;
;	assignBit
	setb	_P3_6
;	src/rtc.c:61: _nop_();
	NOP	
;	src/rtc.c:62: DSIO = 0;
;	assignBit
	clr	_P3_4
;	src/rtc.c:63: _nop_();
	NOP	
;	src/rtc.c:64: DSIO = 1;
;	assignBit
	setb	_P3_4
;	src/rtc.c:65: _nop_();
	NOP	
;	src/rtc.c:66: return result;
	mov	dpl,r6
;	src/rtc.c:67: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_READ_RTC_ADDR:
	.db #0x81	; 129
	.db #0x83	; 131
	.db #0x85	; 133
	.db #0x87	; 135
	.db #0x89	; 137
	.db #0x8b	; 139
	.db #0x8d	; 141
	.area CONST   (CODE)
___str_0:
	.ascii "%x %x %x %x %x %x %x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
