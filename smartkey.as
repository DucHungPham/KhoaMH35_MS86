opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F685
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_sys_init
	FNCALL	_main,_gpio_init
	FNCALL	_main,_timer_init
	FNCALL	_main,_int_init
	FNCALL	_main,_eepromWriteByte
	FNCALL	_main,_SET_EPWM_ON
	FNCALL	_main,_eepromReadByte
	FNCALL	_main,_eepromReadBlock
	FNCALL	_main,_setState
	FNCALL	_main,_beep
	FNCALL	_main,_get_RFID
	FNCALL	_main,_swUartSendString
	FNCALL	_main,_SendNum
	FNCALL	_main,_id_search
	FNCALL	_main,_id_clear
	FNCALL	_main,_id_replate
	FNCALL	_id_clear,_id_replate
	FNCALL	_id_replate,___bmul
	FNCALL	_id_replate,_eepromWriteBlock
	FNCALL	_SendNum,_swUartSendByte
	FNCALL	_swUartSendString,_swUartSendByte
	FNCALL	_beep,___wmul
	FNCALL	_beep,_delay_x10ms
	FNCALL	_eepromWriteBlock,_eepromWriteByte
	FNCALL	_id_search,_comArr
	FNCALL	_id_search,___lbdiv
	FNCALL	_get_RFID,_timerOut
	FNCALL	_get_RFID,___lbdiv
	FNCALL	_eepromReadBlock,_eepromReadByte
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	id_clear@F1108
	global	_buffTag
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"MAIN.C"
	line	136

;initializer for id_clear@F1108
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	line	11

;initializer for _buffTag
	retlw	0
	retlw	0
	retlw	011h
	retlw	0Bh
	retlw	04Fh
	retlw	0
	retlw	0
	retlw	081h
	retlw	02Fh
	retlw	022h
	retlw	0
	retlw	0
	retlw	07Dh
	retlw	067h
	retlw	05h
	retlw	0
	retlw	0
	retlw	07Eh
	retlw	031h
	retlw	0E7h
	retlw	0
	retlw	0
	retlw	07Eh
	retlw	051h
	retlw	0E6h
	global	_timeOut
	global	_timeTick
	global	_PwInNum
	global	_mtState
	global	_keyID
	global	_ANSEL
_ANSEL	set	286
	DABS	1,286,1	;_ANSEL

	global	_ANSELH
_ANSELH	set	287
	DABS	1,287,1	;_ANSELH

	global	_CM1CON0
_CM1CON0	set	281
	DABS	1,281,1	;_CM1CON0

	global	_CM2CON0
_CM2CON0	set	282
	DABS	1,282,1	;_CM2CON0

	global	_CM2CON1
_CM2CON1	set	283
	DABS	1,283,1	;_CM2CON1

	global	_EEADRH
_EEADRH	set	271
	DABS	1,271,1	;_EEADRH

	global	_EEDATH
_EEDATH	set	270
	DABS	1,270,1	;_EEDATH

	global	_IOCB
_IOCB	set	278
	DABS	1,278,1	;_IOCB

	global	_PSTRCON
_PSTRCON	set	413
	DABS	1,413,1	;_PSTRCON

	global	_SRCON
_SRCON	set	414
	DABS	1,414,1	;_SRCON

	global	_VRCON
_VRCON	set	280
	DABS	1,280,1	;_VRCON

	global	_WPUB
_WPUB	set	277
	DABS	1,277,1	;_WPUB

	global	_ANS0
_ANS0	set	2288
	DABS	1,286,1	;_ANS0

	global	_ANS1
_ANS1	set	2289
	DABS	1,286,1	;_ANS1

	global	_ANS10
_ANS10	set	2298
	DABS	1,287,1	;_ANS10

	global	_ANS11
_ANS11	set	2299
	DABS	1,287,1	;_ANS11

	global	_ANS2
_ANS2	set	2290
	DABS	1,286,1	;_ANS2

	global	_ANS3
_ANS3	set	2291
	DABS	1,286,1	;_ANS3

	global	_ANS4
_ANS4	set	2292
	DABS	1,286,1	;_ANS4

	global	_ANS5
_ANS5	set	2293
	DABS	1,286,1	;_ANS5

	global	_ANS6
_ANS6	set	2294
	DABS	1,286,1	;_ANS6

	global	_ANS7
_ANS7	set	2295
	DABS	1,286,1	;_ANS7

	global	_ANS8
_ANS8	set	2296
	DABS	1,287,1	;_ANS8

	global	_ANS9
_ANS9	set	2297
	DABS	1,287,1	;_ANS9

	global	_C1CH0
_C1CH0	set	2248
	DABS	1,281,1	;_C1CH0

	global	_C1CH1
_C1CH1	set	2249
	DABS	1,281,1	;_C1CH1

	global	_C1OE
_C1OE	set	2253
	DABS	1,281,1	;_C1OE

	global	_C1ON
_C1ON	set	2255
	DABS	1,281,1	;_C1ON

	global	_C1OUT
_C1OUT	set	2254
	DABS	1,281,1	;_C1OUT

	global	_C1POL
_C1POL	set	2252
	DABS	1,281,1	;_C1POL

	global	_C1R
_C1R	set	2250
	DABS	1,281,1	;_C1R

	global	_C1SEN
_C1SEN	set	3317
	DABS	1,414,1	;_C1SEN

	global	_C1VREN
_C1VREN	set	2247
	DABS	1,280,1	;_C1VREN

	global	_C2CH0
_C2CH0	set	2256
	DABS	1,282,1	;_C2CH0

	global	_C2CH1
_C2CH1	set	2257
	DABS	1,282,1	;_C2CH1

	global	_C2OE
_C2OE	set	2261
	DABS	1,282,1	;_C2OE

	global	_C2ON
_C2ON	set	2263
	DABS	1,282,1	;_C2ON

	global	_C2OUT
_C2OUT	set	2262
	DABS	1,282,1	;_C2OUT

	global	_C2POL
_C2POL	set	2260
	DABS	1,282,1	;_C2POL

	global	_C2R
_C2R	set	2258
	DABS	1,282,1	;_C2R

	global	_C2REN
_C2REN	set	3316
	DABS	1,414,1	;_C2REN

	global	_C2SYNC
_C2SYNC	set	2264
	DABS	1,283,1	;_C2SYNC

	global	_C2VREN
_C2VREN	set	2246
	DABS	1,280,1	;_C2VREN

	global	_EEPGD
_EEPGD	set	3175
	DABS	1,396,1	;_EEPGD

	global	_IOCB4
_IOCB4	set	2228
	DABS	1,278,1	;_IOCB4

	global	_IOCB5
_IOCB5	set	2229
	DABS	1,278,1	;_IOCB5

	global	_IOCB6
_IOCB6	set	2230
	DABS	1,278,1	;_IOCB6

	global	_IOCB7
_IOCB7	set	2231
	DABS	1,278,1	;_IOCB7

	global	_MC1OUT
_MC1OUT	set	2271
	DABS	1,283,1	;_MC1OUT

	global	_MC2OUT
_MC2OUT	set	2270
	DABS	1,283,1	;_MC2OUT

	global	_PULSR
_PULSR	set	3314
	DABS	1,414,1	;_PULSR

	global	_PULSS
_PULSS	set	3315
	DABS	1,414,1	;_PULSS

	global	_SR0
_SR0	set	3318
	DABS	1,414,1	;_SR0

	global	_SR1
_SR1	set	3319
	DABS	1,414,1	;_SR1

	global	_STRA
_STRA	set	3304
	DABS	1,413,1	;_STRA

	global	_STRB
_STRB	set	3305
	DABS	1,413,1	;_STRB

	global	_STRC
_STRC	set	3306
	DABS	1,413,1	;_STRC

	global	_STRD
_STRD	set	3307
	DABS	1,413,1	;_STRD

	global	_STRSYNC
_STRSYNC	set	3308
	DABS	1,413,1	;_STRSYNC

	global	_T1GSS
_T1GSS	set	2265
	DABS	1,283,1	;_T1GSS

	global	_VP6EN
_VP6EN	set	2244
	DABS	1,280,1	;_VP6EN

	global	_VR0
_VR0	set	2240
	DABS	1,280,1	;_VR0

	global	_VR1
_VR1	set	2241
	DABS	1,280,1	;_VR1

	global	_VR2
_VR2	set	2242
	DABS	1,280,1	;_VR2

	global	_VR3
_VR3	set	2243
	DABS	1,280,1	;_VR3

	global	_VRR
_VRR	set	2245
	DABS	1,280,1	;_VRR

	global	_WPUB4
_WPUB4	set	2220
	DABS	1,277,1	;_WPUB4

	global	_WPUB5
_WPUB5	set	2221
	DABS	1,277,1	;_WPUB5

	global	_WPUB6
_WPUB6	set	2222
	DABS	1,277,1	;_WPUB6

	global	_WPUB7
_WPUB7	set	2223
	DABS	1,277,1	;_WPUB7

	global	_WREN
_WREN	set	3170
	DABS	1,396,1	;_WREN

	global	_INTCON
_INTCON	set	11
	global	_P1ADTH
_P1ADTH	set	20
	global	_P1ADTL
_P1ADTL	set	14
	global	_P1CON
_P1CON	set	22
	global	_PIR1
_PIR1	set	12
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_T2CON0
_T2CON0	set	18
	global	_TMR2H
_TMR2H	set	19
	global	_TMR2L
_TMR2L	set	17
	global	_EEIF
_EEIF	set	103
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA5
_RA5	set	45
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_T0ON
_T0ON	set	251
	global	_TMR2IF
_TMR2IF	set	97
	global	_TMR2ON
_TMR2ON	set	146
	global	_EEADR
_EEADR	set	155
	global	_EECON1
_EECON1	set	156
	global	_EEDAT
_EEDAT	set	154
	global	_OPTION
_OPTION	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_P1OE
_P1OE	set	144
	global	_P1POL
_P1POL	set	153
	global	_PIE1
_PIE1	set	140
	global	_PR2H
_PR2H	set	146
	global	_PR2L
_PR2L	set	145
	global	_T2CON1
_T2CON1	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_WPUA
_WPUA	set	149
	global	_WPUC
_WPUC	set	147
	global	_HTS
_HTS	set	1146
	global	_RD
_RD	set	1248
	global	_TMR2IE
_TMR2IE	set	1121
	global	_WR
_WR	set	1256
	global	_TMR0
_TMR0	set	1
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	10
	retlw	84	;'T'
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"smartkey.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_timeOut:
       ds      2

_timeTick:
       ds      2

_PwInNum:
       ds      1

_mtState:
       ds      1

_keyID:
       ds      5

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"MAIN.C"
	line	136
id_clear@F1108:
       ds      5

psect	dataBANK0
	file	"MAIN.C"
	line	11
_buffTag:
       ds      25

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+30)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_swUartSendString
?_swUartSendString:	; 0 bytes @ 0x0
	global	?_SendNum
?_SendNum:	; 0 bytes @ 0x0
	global	?_sys_init
?_sys_init:	; 0 bytes @ 0x0
	global	?_gpio_init
?_gpio_init:	; 0 bytes @ 0x0
	global	?_timer_init
?_timer_init:	; 0 bytes @ 0x0
	global	?_int_init
?_int_init:	; 0 bytes @ 0x0
	global	?_SET_EPWM_ON
?_SET_EPWM_ON:	; 0 bytes @ 0x0
	global	?_delay_x10ms
?_delay_x10ms:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_swUartSendByte
?_swUartSendByte:	; 0 bytes @ 0x0
	global	?_eepromReadByte
?_eepromReadByte:	; 1 bytes @ 0x0
	global	?_get_RFID
?_get_RFID:	; 1 bytes @ 0x0
	ds	2
	global	??_sys_init
??_sys_init:	; 0 bytes @ 0x2
	global	??_gpio_init
??_gpio_init:	; 0 bytes @ 0x2
	global	??_timer_init
??_timer_init:	; 0 bytes @ 0x2
	global	??_int_init
??_int_init:	; 0 bytes @ 0x2
	global	??_eepromReadByte
??_eepromReadByte:	; 0 bytes @ 0x2
	global	?_eepromWriteByte
?_eepromWriteByte:	; 0 bytes @ 0x2
	global	??_SET_EPWM_ON
??_SET_EPWM_ON:	; 0 bytes @ 0x2
	global	??_delay_x10ms
??_delay_x10ms:	; 0 bytes @ 0x2
	global	?_setState
?_setState:	; 0 bytes @ 0x2
	global	??_swUartSendByte
??_swUartSendByte:	; 0 bytes @ 0x2
	global	?_comArr
?_comArr:	; 1 bytes @ 0x2
	global	?___bmul
?___bmul:	; 1 bytes @ 0x2
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x2
	global	?_timerOut
?_timerOut:	; 2 bytes @ 0x2
	global	?___wmul
?___wmul:	; 2 bytes @ 0x2
	global	eepromReadByte@EEAddr
eepromReadByte@EEAddr:	; 1 bytes @ 0x2
	global	eepromWriteByte@EEData
eepromWriteByte@EEData:	; 1 bytes @ 0x2
	global	comArr@arr2
comArr@arr2:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x2
	global	timerOut@time
timerOut@time:	; 2 bytes @ 0x2
	global	setState@_tOut
setState@_tOut:	; 2 bytes @ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	ds	1
	global	??_eepromWriteByte
??_eepromWriteByte:	; 0 bytes @ 0x3
	global	??___bmul
??___bmul:	; 0 bytes @ 0x3
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x3
	global	eepromReadByte@ReEepromData
eepromReadByte@ReEepromData:	; 1 bytes @ 0x3
	global	comArr@len1
comArr@len1:	; 1 bytes @ 0x3
	global	swUartSendByte@dat
swUartSendByte@dat:	; 1 bytes @ 0x3
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x3
	ds	1
	global	?_eepromReadBlock
?_eepromReadBlock:	; 0 bytes @ 0x4
	global	??_timerOut
??_timerOut:	; 0 bytes @ 0x4
	global	??_setState
??_setState:	; 0 bytes @ 0x4
	global	eepromReadBlock@buff
eepromReadBlock@buff:	; 1 bytes @ 0x4
	global	comArr@len2
comArr@len2:	; 1 bytes @ 0x4
	global	timerOut@Logic
timerOut@Logic:	; 1 bytes @ 0x4
	global	delay_x10ms@t
delay_x10ms@t:	; 1 bytes @ 0x4
	global	setState@stt
setState@stt:	; 1 bytes @ 0x4
	global	swUartSendByte@i
swUartSendByte@i:	; 1 bytes @ 0x4
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	ds	1
	global	??_swUartSendString
??_swUartSendString:	; 0 bytes @ 0x5
	global	??_SendNum
??_SendNum:	; 0 bytes @ 0x5
	global	??_comArr
??_comArr:	; 0 bytes @ 0x5
	global	eepromReadBlock@len
eepromReadBlock@len:	; 1 bytes @ 0x5
	global	eepromWriteByte@EEAddr
eepromWriteByte@EEAddr:	; 1 bytes @ 0x5
	global	swUartSendString@str
swUartSendString@str:	; 1 bytes @ 0x5
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x5
	global	timerOut@CurTimer
timerOut@CurTimer:	; 2 bytes @ 0x5
	global	_SendNum$5067
_SendNum$5067:	; 2 bytes @ 0x5
	ds	1
	global	??_eepromReadBlock
??_eepromReadBlock:	; 0 bytes @ 0x6
	global	?_eepromWriteBlock
?_eepromWriteBlock:	; 0 bytes @ 0x6
	global	??___wmul
??___wmul:	; 0 bytes @ 0x6
	global	eepromWriteBlock@buff
eepromWriteBlock@buff:	; 1 bytes @ 0x6
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x6
	ds	1
	global	??_get_RFID
??_get_RFID:	; 0 bytes @ 0x7
	global	eepromReadBlock@addStart
eepromReadBlock@addStart:	; 1 bytes @ 0x7
	global	eepromWriteBlock@len
eepromWriteBlock@len:	; 1 bytes @ 0x7
	global	_SendNum$5068
_SendNum$5068:	; 2 bytes @ 0x7
	ds	1
	global	??_eepromWriteBlock
??_eepromWriteBlock:	; 0 bytes @ 0x8
	global	?_beep
?_beep:	; 0 bytes @ 0x8
	global	eepromReadBlock@i
eepromReadBlock@i:	; 1 bytes @ 0x8
	global	comArr@arr1
comArr@arr1:	; 1 bytes @ 0x8
	global	beep@rep
beep@rep:	; 1 bytes @ 0x8
	ds	1
	global	??_beep
??_beep:	; 0 bytes @ 0x9
	global	eepromWriteBlock@addStart
eepromWriteBlock@addStart:	; 1 bytes @ 0x9
	global	comArr@i
comArr@i:	; 1 bytes @ 0x9
	global	SendNum@num
SendNum@num:	; 1 bytes @ 0x9
	ds	1
	global	?_id_search
?_id_search:	; 1 bytes @ 0xA
	global	eepromWriteBlock@i
eepromWriteBlock@i:	; 1 bytes @ 0xA
	global	id_search@buff
id_search@buff:	; 1 bytes @ 0xA
	global	SendNum@nib
SendNum@nib:	; 1 bytes @ 0xA
	ds	1
	global	??_id_search
??_id_search:	; 0 bytes @ 0xB
	global	id_replate@id
id_replate@id:	; 1 bytes @ 0xB
	ds	1
	global	??_id_clear
??_id_clear:	; 0 bytes @ 0xC
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_id_replate
?_id_replate:	; 0 bytes @ 0x0
	global	id_search@id_input
id_search@id_input:	; 1 bytes @ 0x0
	global	id_replate@Cont
id_replate@Cont:	; 1 bytes @ 0x0
	global	beep@t
beep@t:	; 2 bytes @ 0x0
	global	get_RFID@RF_serial_55bits
get_RFID@RF_serial_55bits:	; 11 bytes @ 0x0
	ds	1
	global	id_search@i
id_search@i:	; 1 bytes @ 0x1
	global	id_replate@buff
id_replate@buff:	; 1 bytes @ 0x1
	ds	1
	global	??_id_replate
??_id_replate:	; 0 bytes @ 0x2
	global	beep@delay
beep@delay:	; 1 bytes @ 0x2
	ds	2
	global	?_id_clear
?_id_clear:	; 0 bytes @ 0x4
	global	id_clear@idMax
id_clear@idMax:	; 1 bytes @ 0x4
	ds	1
	global	id_clear@tmp
id_clear@tmp:	; 5 bytes @ 0x5
	ds	5
	global	id_clear@idMin
id_clear@idMin:	; 1 bytes @ 0xA
	ds	1
	global	get_RFID@flag_RFID_syn
get_RFID@flag_RFID_syn:	; 1 bytes @ 0xB
	ds	1
	global	get_RFID@even_col
get_RFID@even_col:	; 1 bytes @ 0xC
	ds	1
	global	get_RFID@even_row
get_RFID@even_row:	; 1 bytes @ 0xD
	ds	1
	global	get_RFID@j
get_RFID@j:	; 1 bytes @ 0xE
	ds	1
	global	get_RFID@i
get_RFID@i:	; 1 bytes @ 0xF
	ds	1
	global	get_RFID@flag_RFID_last
get_RFID@flag_RFID_last:	; 1 bytes @ 0x10
	ds	1
	global	get_RFID@timeOutVal
get_RFID@timeOutVal:	; 2 bytes @ 0x11
	ds	2
	global	get_RFID@ii
get_RFID@ii:	; 1 bytes @ 0x13
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x14
	ds	3
	global	main@t
main@t:	; 2 bytes @ 0x17
	ds	2
	global	main@t1
main@t1:	; 1 bytes @ 0x19
	ds	1
	global	main@buzFre
main@buzFre:	; 1 bytes @ 0x1A
	ds	1
	global	main@idState
main@idState:	; 1 bytes @ 0x1B
	ds	1
	global	main@idop
main@idop:	; 1 bytes @ 0x1C
	ds	1
	global	main@tmp
main@tmp:	; 1 bytes @ 0x1D
	ds	1
;;Data sizes: Strings 7, constant 0, data 30, bss 11, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80     30      71
;; BANK1           32      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_timerOut	unsigned int  size(1) Largest target is 1
;;		 -> TMR0(BITSFR0[1]), 
;;
;; swUartSendString@str	PTR unsigned char  size(1) Largest target is 7
;;		 -> STR_1(CODE[7]), 
;;
;; id_replate@Cont	PTR unsigned char  size(1) Largest target is 5
;;		 -> id_clear@tmp(BANK0[5]), keyID(BANK0[5]), 
;;
;; id_replate@buff	PTR unsigned char  size(1) Largest target is 25
;;		 -> buffTag(BANK0[25]), 
;;
;; id_search@buff	PTR unsigned char  size(1) Largest target is 25
;;		 -> buffTag(BANK0[25]), 
;;
;; id_search@id_input	PTR unsigned char  size(1) Largest target is 5
;;		 -> keyID(BANK0[5]), 
;;
;; comArr@arr2	PTR unsigned char  size(1) Largest target is 25
;;		 -> buffTag(BANK0[25]), 
;;
;; comArr@arr1	PTR unsigned char  size(1) Largest target is 5
;;		 -> keyID(BANK0[5]), 
;;
;; eepromWriteBlock@buff	PTR unsigned char  size(1) Largest target is 25
;;		 -> buffTag(BANK0[25]), 
;;
;; eepromReadBlock@buff	PTR unsigned char  size(1) Largest target is 25
;;		 -> buffTag(BANK0[25]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_id_search
;;   _main->_id_replate
;;   _id_clear->_id_replate
;;   _id_replate->_eepromWriteBlock
;;   _SendNum->_swUartSendByte
;;   _swUartSendString->_swUartSendByte
;;   _beep->___wmul
;;   _eepromWriteBlock->_eepromWriteByte
;;   _id_search->_comArr
;;   _get_RFID->_timerOut
;;   _eepromReadBlock->_eepromReadByte
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_get_RFID
;;   _id_clear->_id_replate
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                10    10      0    5343
;;                                             20 BANK0     10    10      0
;;                           _sys_init
;;                          _gpio_init
;;                         _timer_init
;;                           _int_init
;;                    _eepromWriteByte
;;                        _SET_EPWM_ON
;;                     _eepromReadByte
;;                    _eepromReadBlock
;;                           _setState
;;                               _beep
;;                           _get_RFID
;;                   _swUartSendString
;;                            _SendNum
;;                          _id_search
;;                           _id_clear
;;                         _id_replate
;; ---------------------------------------------------------------------------------
;; (1) _id_clear                                             7     6      1     718
;;                                              4 BANK0      7     6      1
;;                         _id_replate
;; ---------------------------------------------------------------------------------
;; (1) _id_replate                                           5     3      2     623
;;                                             11 COMMON     1     1      0
;;                                              0 BANK0      4     2      2
;;                             ___bmul
;;                   _eepromWriteBlock
;; ---------------------------------------------------------------------------------
;; (1) _SendNum                                              6     6      0     300
;;                                              5 COMMON     6     6      0
;;                     _swUartSendByte
;; ---------------------------------------------------------------------------------
;; (1) _swUartSendString                                     1     1      0     114
;;                                              5 COMMON     1     1      0
;;                     _swUartSendByte
;; ---------------------------------------------------------------------------------
;; (1) _beep                                                 5     4      1     203
;;                                              8 COMMON     2     1      1
;;                                              0 BANK0      3     3      0
;;                             ___wmul
;;                        _delay_x10ms
;; ---------------------------------------------------------------------------------
;; (2) _eepromWriteBlock                                     5     3      2     178
;;                                              6 COMMON     5     3      2
;;                    _eepromWriteByte
;; ---------------------------------------------------------------------------------
;; (2) _swUartSendByte                                       3     3      0      69
;;                                              2 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _id_search                                            4     3      1     518
;;                                             10 COMMON     2     1      1
;;                                              0 BANK0      2     2      0
;;                             _comArr
;;                            ___lbdiv
;; ---------------------------------------------------------------------------------
;; (2) _delay_x10ms                                          3     3      0      22
;;                                              2 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _get_RFID                                            21    21      0    1917
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0     20    20      0
;;                           _timerOut
;;                            ___lbdiv
;; ---------------------------------------------------------------------------------
;; (3) _eepromWriteByte                                      4     3      1      44
;;                                              2 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (1) _eepromReadBlock                                      5     3      2     179
;;                                              4 COMMON     5     3      2
;;                     _eepromReadByte
;; ---------------------------------------------------------------------------------
;; (1) _sys_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) ___lbdiv                                              4     3      1     162
;;                                              2 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              2 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___bmul                                               3     2      1      92
;;                                              2 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (1) _setState                                             3     1      2      44
;;                                              2 COMMON     3     1      2
;; ---------------------------------------------------------------------------------
;; (1) _SET_EPWM_ON                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _timerOut                                             5     3      2      90
;;                                              2 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (2) _comArr                                               8     5      3     222
;;                                              2 COMMON     8     5      3
;; ---------------------------------------------------------------------------------
;; (2) _eepromReadByte                                       2     2      0      45
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _int_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _timer_init                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _gpio_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ISR                                                  2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _sys_init
;;   _gpio_init
;;   _timer_init
;;   _int_init
;;   _eepromWriteByte
;;   _SET_EPWM_ON
;;   _eepromReadByte
;;   _eepromReadBlock
;;     _eepromReadByte
;;   _setState
;;   _beep
;;     ___wmul
;;     _delay_x10ms
;;   _get_RFID
;;     _timerOut
;;     ___lbdiv
;;   _swUartSendString
;;     _swUartSendByte
;;   _SendNum
;;     _swUartSendByte
;;   _id_search
;;     _comArr
;;     ___lbdiv
;;   _id_clear
;;     _id_replate
;;       ___bmul
;;       _eepromWriteBlock
;;         _eepromWriteByte
;;   _id_replate
;;     ___bmul
;;     _eepromWriteBlock
;;       _eepromWriteByte
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               20      0       0       5        0.0%
;;BITBANK1            20      0       0       7        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      57       8        0.0%
;;ABS                  0      0      53       6        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50     1E      47       4       88.8%
;;BITBANK0            50      0       0       3        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 154 in file "MAIN.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  t               2   23[BANK0 ] unsigned int 
;;  tmp             1   29[BANK0 ] unsigned char 
;;  idop            1   28[BANK0 ] unsigned char 
;;  idState         1   27[BANK0 ] unsigned char 
;;  buzFre          1   26[BANK0 ] unsigned char 
;;  t1              1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 20/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       7       0
;;      Temps:          0       3       0
;;      Totals:         0      10       0
;;Total ram usage:       10 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_sys_init
;;		_gpio_init
;;		_timer_init
;;		_int_init
;;		_eepromWriteByte
;;		_SET_EPWM_ON
;;		_eepromReadByte
;;		_eepromReadBlock
;;		_setState
;;		_beep
;;		_get_RFID
;;		_swUartSendString
;;		_SendNum
;;		_id_search
;;		_id_clear
;;		_id_replate
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"MAIN.C"
	line	154
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	162
	
l7505:	
;MAIN.C: 162: unsigned char idop,tmp,idState=0;
	clrf	(main@idState)
	line	164
;MAIN.C: 163: unsigned char t1;
;MAIN.C: 164: unsigned char buzFre=0;
	clrf	(main@buzFre)
	line	166
	
l7507:	
# 166 "MAIN.C"
clrwdt ;#
psect	maintext
	line	168
	
l7509:	
;MAIN.C: 168: sys_init();
	fcall	_sys_init
	line	169
	
l7511:	
;MAIN.C: 169: gpio_init();
	fcall	_gpio_init
	line	171
	
l7513:	
;MAIN.C: 171: timer_init();
	fcall	_timer_init
	line	172
	
l7515:	
;MAIN.C: 172: int_init();
	fcall	_int_init
	line	178
	
l7517:	
;MAIN.C: 178: eepromWriteByte(0xFF,0xAA);
	movlw	(0AAh)
	movwf	(?_eepromWriteByte)
	movlw	(0FFh)
	fcall	_eepromWriteByte
	line	179
	
l7519:	
;MAIN.C: 179: eepromWriteByte(0xFF,0xAA);
	movlw	(0AAh)
	movwf	(?_eepromWriteByte)
	movlw	(0FFh)
	fcall	_eepromWriteByte
	line	182
	
l7521:	
;MAIN.C: 182: TRISC &=0xfe;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	184
	
l7523:	
;MAIN.C: 184: SET_EPWM_ON();
	fcall	_SET_EPWM_ON
	line	193
	
l7525:	
;MAIN.C: 193: if(eepromReadByte(0x02) == 0xff) eepromWriteByte(0x02,0);
	movlw	(02h)
	fcall	_eepromReadByte
	xorlw	0FFh
	skipz
	goto	u1921
	goto	u1920
u1921:
	goto	l7529
u1920:
	
l7527:	
	clrf	(?_eepromWriteByte)
	movlw	(02h)
	fcall	_eepromWriteByte
	line	194
	
l7529:	
;MAIN.C: 194: if(eepromReadByte(0x01)==0xff)eepromWriteByte(0x01,0);
	movlw	(01h)
	fcall	_eepromReadByte
	xorlw	0FFh
	skipz
	goto	u1931
	goto	u1930
u1931:
	goto	l7533
u1930:
	
l7531:	
	clrf	(?_eepromWriteByte)
	movlw	(01h)
	fcall	_eepromWriteByte
	line	196
	
l7533:	
;MAIN.C: 196: if(eepromReadByte(0x06)!=0){
	movlw	(06h)
	fcall	_eepromReadByte
	xorlw	0
	skipnz
	goto	u1941
	goto	u1940
u1941:
	goto	l7537
u1940:
	line	200
	
l7535:	
;MAIN.C: 200: eepromWriteByte(0x06,0);
	clrf	(?_eepromWriteByte)
	movlw	(06h)
	fcall	_eepromWriteByte
	line	201
;MAIN.C: 201: eepromWriteByte(0x06+1,0);
	clrf	(?_eepromWriteByte)
	movlw	(07h)
	fcall	_eepromWriteByte
	line	202
;MAIN.C: 202: eepromWriteByte(0x06+2,0x81);
	movlw	(081h)
	movwf	(?_eepromWriteByte)
	movlw	(08h)
	fcall	_eepromWriteByte
	line	203
;MAIN.C: 203: eepromWriteByte(0x06+3,0x2f);
	movlw	(02Fh)
	movwf	(?_eepromWriteByte)
	movlw	(09h)
	fcall	_eepromWriteByte
	line	204
;MAIN.C: 204: eepromWriteByte(0x06+4,0x22);
	movlw	(022h)
	movwf	(?_eepromWriteByte)
	movlw	(0Ah)
	fcall	_eepromWriteByte
	line	207
	
l7537:	
;MAIN.C: 206: }
;MAIN.C: 207: eepromReadBlock(0x06,buffTag,5*5);
	movlw	(_buffTag)&0ffh
	movwf	(?_eepromReadBlock)
	movlw	(019h)
	movwf	0+(?_eepromReadBlock)+01h
	movlw	(06h)
	fcall	_eepromReadBlock
	line	211
	
l7539:	
;MAIN.C: 210: {
;MAIN.C: 211: if( eepromReadByte(0x00) == 7){
	movlw	(0)
	fcall	_eepromReadByte
	xorlw	07h
	skipz
	goto	u1951
	goto	u1950
u1951:
	goto	l7565
u1950:
	line	212
	
l7541:	
;MAIN.C: 212: tmp = eepromReadByte(0x02);
	movlw	(02h)
	fcall	_eepromReadByte
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@tmp)
	line	213
	
l7543:	
;MAIN.C: 213: t1 = tmp;
	movf	(main@tmp),w
	movwf	(main@t1)
	line	215
	
l7545:	
;MAIN.C: 215: if(t1 == 3){
	movf	(main@t1),w
	xorlw	03h
	skipz
	goto	u1961
	goto	u1960
u1961:
	goto	l7557
u1960:
	line	220
	
l7547:	
;MAIN.C: 220: if((eepromReadByte(0x03)==8) && (eepromReadByte(0x04)==3)&&(eepromReadByte(0x05)==3)){
	movlw	(03h)
	fcall	_eepromReadByte
	xorlw	08h
	skipz
	goto	u1971
	goto	u1970
u1971:
	goto	l7555
u1970:
	
l7549:	
	movlw	(04h)
	fcall	_eepromReadByte
	xorlw	03h
	skipz
	goto	u1981
	goto	u1980
u1981:
	goto	l7555
u1980:
	
l7551:	
	movlw	(05h)
	fcall	_eepromReadByte
	xorlw	03h
	skipz
	goto	u1991
	goto	u1990
u1991:
	goto	l7555
u1990:
	line	221
	
l7553:	
;MAIN.C: 221: eepromWriteByte(0x01,1);
	clrf	(?_eepromWriteByte)
	incf	(?_eepromWriteByte),f
	movlw	(01h)
	fcall	_eepromWriteByte
	line	222
;MAIN.C: 222: setState(0,0);
	clrf	(?_setState)
	clrf	(?_setState+1)
	movlw	(0)
	fcall	_setState
	line	223
;MAIN.C: 223: beep(20,2);
	movlw	(02h)
	movwf	(?_beep)
	movlw	(014h)
	fcall	_beep
	line	224
;MAIN.C: 224: }
	goto	l4176
	line	226
	
l7555:	
;MAIN.C: 225: else{
;MAIN.C: 226: setState(1,12);
	movlw	0Ch
	movwf	(?_setState)
	clrf	(?_setState+1)
	movlw	(01h)
	fcall	_setState
	line	227
;MAIN.C: 227: beep(10,5);
	movlw	(05h)
	movwf	(?_beep)
	movlw	(0Ah)
	fcall	_beep
	line	228
	
l4176:	
	line	230
;MAIN.C: 228: }
;MAIN.C: 230: eepromWriteByte(0x00,0);
	clrf	(?_eepromWriteByte)
	movlw	(0)
	fcall	_eepromWriteByte
	line	231
;MAIN.C: 231: eepromWriteByte(0x02,0);
	clrf	(?_eepromWriteByte)
	movlw	(02h)
	fcall	_eepromWriteByte
	line	232
;MAIN.C: 232: eepromWriteByte(0x05,0);
	clrf	(?_eepromWriteByte)
	movlw	(05h)
	fcall	_eepromWriteByte
	line	233
;MAIN.C: 233: eepromWriteByte(0x04,0);
	clrf	(?_eepromWriteByte)
	movlw	(04h)
	fcall	_eepromWriteByte
	line	234
;MAIN.C: 234: eepromWriteByte(0x03,0);
	clrf	(?_eepromWriteByte)
	movlw	(03h)
	fcall	_eepromWriteByte
	line	236
;MAIN.C: 236: }
	goto	l7567
	line	238
	
l7557:	
;MAIN.C: 237: else{
;MAIN.C: 238: tmp = eepromReadByte(0x02) ;
	movlw	(02h)
	fcall	_eepromReadByte
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@tmp)
	line	239
	
l7559:	
;MAIN.C: 239: tmp++;
	incf	(main@tmp),f
	line	240
;MAIN.C: 240: eepromWriteByte(0x02,tmp);
	movf	(main@tmp),w
	movwf	(?_eepromWriteByte)
	movlw	(02h)
	fcall	_eepromWriteByte
	line	241
	
l7561:	
;MAIN.C: 241: PwInNum=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_PwInNum)
	line	242
	
l7563:	
;MAIN.C: 242: setState(7,1);
	clrf	(?_setState)
	incf	(?_setState),f
	clrf	(?_setState+1)
	movlw	(07h)
	fcall	_setState
	goto	l7567
	line	247
	
l7565:	
;MAIN.C: 246: else{
;MAIN.C: 247: setState(1,12);
	movlw	0Ch
	movwf	(?_setState)
	clrf	(?_setState+1)
	movlw	(01h)
	fcall	_setState
	line	250
	
l7567:	
;MAIN.C: 248: }
;MAIN.C: 250: if(eepromReadByte(0x01)== 1){
	movlw	(01h)
	fcall	_eepromReadByte
	xorlw	01h
	skipz
	goto	u2001
	goto	u2000
u2001:
	goto	l7571
u2000:
	line	251
	
l7569:	
;MAIN.C: 251: setState(0,0);
	clrf	(?_setState)
	clrf	(?_setState+1)
	movlw	(0)
	fcall	_setState
	line	258
	
l7571:	
;MAIN.C: 252: }
;MAIN.C: 253: }
;MAIN.C: 258: tmp=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(main@tmp)
	line	263
	
l7573:	
;MAIN.C: 263: idop = get_RFID();
	fcall	_get_RFID
	movwf	(main@idop)
	line	265
	
l7575:	
;MAIN.C: 265: if(idop){
	movf	(main@idop),w
	skipz
	goto	u2010
	goto	l7691
u2010:
	line	266
	
l7577:	
;MAIN.C: 266: swUartSendString("\nTag: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_swUartSendString
	line	268
	
l7579:	
;MAIN.C: 268: SendNum(keyID[1]);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_keyID)+01h,w
	fcall	_SendNum
	line	269
	
l7581:	
;MAIN.C: 269: SendNum(keyID[2]);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_keyID)+02h,w
	fcall	_SendNum
	line	270
	
l7583:	
;MAIN.C: 270: SendNum(keyID[3]);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_keyID)+03h,w
	fcall	_SendNum
	line	271
	
l7585:	
;MAIN.C: 271: SendNum(keyID[4]);
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_keyID)+04h,w
	fcall	_SendNum
	line	272
;MAIN.C: 272: idop = id_search(keyID,buffTag);
	movlw	(_buffTag)&0ffh
	movwf	(?_id_search)
	movlw	(_keyID)&0ffh
	fcall	_id_search
	movwf	(main@idop)
	line	273
;MAIN.C: 273: switch (mtState){
	goto	l7685
	line	279
	
l7587:	
;MAIN.C: 276: case 1:
;MAIN.C: 277: case 2:
;MAIN.C: 279: if((idop>1) && (idop <6))
	movlw	(02h)
	subwf	(main@idop),w
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l7599
u2020:
	
l7589:	
	movlw	(06h)
	subwf	(main@idop),w
	skipnc
	goto	u2031
	goto	u2030
u2031:
	goto	l7599
u2030:
	line	281
	
l7591:	
;MAIN.C: 280: {
;MAIN.C: 281: if( eepromReadByte(0x00) == 7) eepromWriteByte(0x00,0);
	movlw	(0)
	fcall	_eepromReadByte
	xorlw	07h
	skipz
	goto	u2041
	goto	u2040
u2041:
	goto	l7595
u2040:
	
l7593:	
	clrf	(?_eepromWriteByte)
	movlw	(0)
	fcall	_eepromWriteByte
	line	282
	
l7595:	
;MAIN.C: 282: if(mtState==7){
	bcf	status, 5	;RP0=0, select bank0
	movf	(_mtState),w
	xorlw	07h
	skipz
	goto	u2051
	goto	u2050
u2051:
	goto	l4188
u2050:
	line	283
	
l7597:	
;MAIN.C: 283: eepromWriteByte(0x02,0);
	clrf	(?_eepromWriteByte)
	movlw	(02h)
	fcall	_eepromWriteByte
	line	284
;MAIN.C: 284: eepromWriteByte(0x05,0);
	clrf	(?_eepromWriteByte)
	movlw	(05h)
	fcall	_eepromWriteByte
	line	285
;MAIN.C: 285: eepromWriteByte(0x04,0);
	clrf	(?_eepromWriteByte)
	movlw	(04h)
	fcall	_eepromWriteByte
	line	286
;MAIN.C: 286: eepromWriteByte(0x03,0);
	clrf	(?_eepromWriteByte)
	movlw	(03h)
	fcall	_eepromWriteByte
	line	287
	
l4188:	
	line	288
;MAIN.C: 287: }
;MAIN.C: 288: setState(0,0);
	clrf	(?_setState)
	clrf	(?_setState+1)
	movlw	(0)
	fcall	_setState
	line	289
;MAIN.C: 289: beep(10,1);
	clrf	(?_beep)
	incf	(?_beep),f
	movlw	(0Ah)
	fcall	_beep
	line	290
;MAIN.C: 290: }
	goto	l4191
	line	292
	
l7599:	
;MAIN.C: 292: else if(idop==1)
	decf	(main@idop),w
	skipz
	goto	u2061
	goto	u2060
u2061:
	goto	l4191
u2060:
	line	295
	
l7601:	
;MAIN.C: 293: {
;MAIN.C: 295: id_clear(2,5);
	movlw	(05h)
	movwf	(?_id_clear)
	movlw	(02h)
	fcall	_id_clear
	line	296
	
l7603:	
;MAIN.C: 296: setState(3,0);
	clrf	(?_setState)
	clrf	(?_setState+1)
	movlw	(03h)
	fcall	_setState
	line	297
	
l7605:	
;MAIN.C: 297: tmp=1;
	clrf	(main@tmp)
	incf	(main@tmp),f
	line	298
	
l7607:	
;MAIN.C: 298: beep(10,3);
	movlw	(03h)
	movwf	(?_beep)
	movlw	(0Ah)
	fcall	_beep
	goto	l4191
	line	304
	
l7609:	
;MAIN.C: 304: if(idop<=5 && idop!=1 ){
	movlw	(06h)
	subwf	(main@idop),w
	skipnc
	goto	u2071
	goto	u2070
u2071:
	goto	l7617
u2070:
	
l7611:	
	decf	(main@idop),w
	skipnz
	goto	u2081
	goto	u2080
u2081:
	goto	l7617
u2080:
	line	305
	
l7613:	
;MAIN.C: 305: if(eepromReadByte(0x01)==1){
	movlw	(01h)
	fcall	_eepromReadByte
	xorlw	01h
	skipz
	goto	u2091
	goto	u2090
u2091:
	goto	l4191
u2090:
	line	306
	
l7615:	
;MAIN.C: 306: eepromWriteByte(0x01,0);
	clrf	(?_eepromWriteByte)
	movlw	(01h)
	fcall	_eepromWriteByte
	line	307
;MAIN.C: 307: beep(10,2);
	movlw	(02h)
	movwf	(?_beep)
	movlw	(0Ah)
	fcall	_beep
	goto	l4191
	line	311
	
l7617:	
;MAIN.C: 311: else if(idop==1){
	decf	(main@idop),w
	skipz
	goto	u2101
	goto	u2100
u2101:
	goto	l4191
u2100:
	line	312
	
l7619:	
;MAIN.C: 312: id_clear(2,5);
	movlw	(05h)
	movwf	(?_id_clear)
	movlw	(02h)
	fcall	_id_clear
	line	313
	
l7621:	
;MAIN.C: 313: setState(3,0);
	clrf	(?_setState)
	clrf	(?_setState+1)
	movlw	(03h)
	fcall	_setState
	line	314
	
l7623:	
;MAIN.C: 314: tmp=1;
	clrf	(main@tmp)
	incf	(main@tmp),f
	line	315
	
l7625:	
;MAIN.C: 315: beep(10,3);
	movlw	(03h)
	movwf	(?_beep)
	movlw	(0Ah)
	fcall	_beep
	goto	l4191
	line	321
	
l7627:	
;MAIN.C: 321: if(idop==1 && idState == 0){
	decf	(main@idop),w
	skipz
	goto	u2111
	goto	u2110
u2111:
	goto	l7639
u2110:
	
l7629:	
	movf	(main@idState),f
	skipz
	goto	u2121
	goto	u2120
u2121:
	goto	l7639
u2120:
	line	323
	
l7631:	
;MAIN.C: 323: id_clear(2,5);
	movlw	(05h)
	movwf	(?_id_clear)
	movlw	(02h)
	fcall	_id_clear
	line	324
	
l7633:	
;MAIN.C: 324: setState(3,0);
	clrf	(?_setState)
	clrf	(?_setState+1)
	movlw	(03h)
	fcall	_setState
	line	325
	
l7635:	
;MAIN.C: 325: tmp=1;
	clrf	(main@tmp)
	incf	(main@tmp),f
	line	326
	
l7637:	
;MAIN.C: 326: beep(10,3);
	movlw	(03h)
	movwf	(?_beep)
	movlw	(0Ah)
	fcall	_beep
	line	327
;MAIN.C: 327: }
	goto	l4191
	line	329
	
l7639:	
;MAIN.C: 329: else if(idop==2 && idState == 0){
	movf	(main@idop),w
	xorlw	02h
	skipz
	goto	u2131
	goto	u2130
u2131:
	goto	l4191
u2130:
	
l7641:	
	movf	(main@idState),f
	skipz
	goto	u2141
	goto	u2140
u2141:
	goto	l4191
u2140:
	line	331
	
l7643:	
;MAIN.C: 331: id_clear(3,5);
	movlw	(05h)
	movwf	(?_id_clear)
	movlw	(03h)
	fcall	_id_clear
	line	332
	
l7645:	
;MAIN.C: 332: setState(5,0);
	clrf	(?_setState)
	clrf	(?_setState+1)
	movlw	(05h)
	fcall	_setState
	line	333
	
l7647:	
;MAIN.C: 333: tmp=2;
	movlw	(02h)
	movwf	(main@tmp)
	line	334
	
l7649:	
;MAIN.C: 334: beep(10,2);
	movlw	(02h)
	movwf	(?_beep)
	movlw	(0Ah)
	fcall	_beep
	goto	l4191
	line	340
	
l7651:	
;MAIN.C: 340: if (idState == 0){
	movf	(main@idState),f
	skipz
	goto	u2151
	goto	u2150
u2151:
	goto	l7665
u2150:
	line	347
	
l7653:	
;MAIN.C: 347: if( idop !=1){
	decf	(main@idop),w
	skipnz
	goto	u2161
	goto	u2160
u2161:
	goto	l4191
u2160:
	line	348
	
l7655:	
;MAIN.C: 348: tmp++;
	incf	(main@tmp),f
	line	350
	
l7657:	
;MAIN.C: 350: if(tmp <=5){
	movlw	(06h)
	subwf	(main@tmp),w
	skipnc
	goto	u2171
	goto	u2170
u2171:
	goto	l4191
u2170:
	line	351
	
l7659:	
;MAIN.C: 351: id_replate(tmp,keyID,buffTag);
	movlw	(_keyID)&0ffh
	movwf	(?_id_replate)
	movlw	(_buffTag)&0ffh
	movwf	(0+?_id_replate+01h)
	movf	(main@tmp),w
	fcall	_id_replate
	line	352
	
l7661:	
;MAIN.C: 352: timeTick=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_timeTick)
	clrf	(_timeTick+1)
	line	353
	
l7663:	
;MAIN.C: 353: beep(10,1);
	clrf	(?_beep)
	incf	(?_beep),f
	movlw	(0Ah)
	fcall	_beep
	goto	l4191
	line	359
	
l7665:	
;MAIN.C: 359: beep(10,1);
	clrf	(?_beep)
	incf	(?_beep),f
	movlw	(0Ah)
	fcall	_beep
	goto	l4191
	line	365
	
l7667:	
;MAIN.C: 365: if(idState == 0){
	movf	(main@idState),f
	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l7681
u2180:
	line	366
	
l7669:	
;MAIN.C: 366: if( idop >2){
	movlw	(03h)
	subwf	(main@idop),w
	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l4191
u2190:
	line	367
	
l7671:	
;MAIN.C: 367: tmp++;
	incf	(main@tmp),f
	line	369
	
l7673:	
;MAIN.C: 369: if(tmp <=5){
	movlw	(06h)
	subwf	(main@tmp),w
	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l4191
u2200:
	line	370
	
l7675:	
;MAIN.C: 370: id_replate(tmp,keyID,buffTag);
	movlw	(_keyID)&0ffh
	movwf	(?_id_replate)
	movlw	(_buffTag)&0ffh
	movwf	(0+?_id_replate+01h)
	movf	(main@tmp),w
	fcall	_id_replate
	line	371
	
l7677:	
;MAIN.C: 371: timeTick=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_timeTick)
	clrf	(_timeTick+1)
	line	372
	
l7679:	
;MAIN.C: 372: beep(10,1);
	clrf	(?_beep)
	incf	(?_beep),f
	movlw	(0Ah)
	fcall	_beep
	goto	l4191
	line	378
	
l7681:	
;MAIN.C: 378: beep(10,1);
	clrf	(?_beep)
	incf	(?_beep),f
	movlw	(0Ah)
	fcall	_beep
	goto	l4191
	line	273
	
l7685:	
	movf	(_mtState),w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           14     6 (fixed)
; simple_byte           22    12 (average)
; jumptable            260     6 (fixed)
; rangetable            12     6 (fixed)
; spacedrange           22     9 (fixed)
; locatedrange           8     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	8
	subwf	fsr,w
skipnc
goto l4191
movlw high(S7787)
movwf pclath
	movlw low(S7787)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S7787:
	ljmp	l7609
	ljmp	l7587
	ljmp	l7587
	ljmp	l7651
	ljmp	l4191
	ljmp	l7667
	ljmp	l7627
	ljmp	l7587
psect	maintext

	line	382
	
l4191:	
	line	384
;MAIN.C: 384: idState = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(main@idState)
	incf	(main@idState),f
	line	385
	
l7687:	
;MAIN.C: 385: if(mtState != 2) _delay((unsigned long)((61)*(8000000/4000.0)));
	movf	(_mtState),w
	xorlw	02h
	skipnz
	goto	u2211
	goto	u2210
u2211:
	goto	l4214
u2210:
	
l7689:	
	opt asmopt_off
movlw	159
movwf	((??_main+0)+0+1),f
	movlw	111
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	nop2
opt asmopt_on

	goto	l4214
	line	388
	
l7691:	
;MAIN.C: 387: else{
;MAIN.C: 388: idState =0;
	clrf	(main@idState)
	line	389
	
l7693:	
;MAIN.C: 389: if(mtState != 2) _delay((unsigned long)((150)*(8000000/4000.0)));
	movf	(_mtState),w
	xorlw	02h
	skipnz
	goto	u2221
	goto	u2220
u2221:
	goto	l4214
u2220:
	
l7695:	
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	134
movwf	((??_main+0)+0+1),f
	movlw	153
movwf	((??_main+0)+0),f
u2347:
	decfsz	((??_main+0)+0),f
	goto	u2347
	decfsz	((??_main+0)+0+1),f
	goto	u2347
	decfsz	((??_main+0)+0+2),f
	goto	u2347
opt asmopt_on

	line	390
	
l4214:	
	line	394
;MAIN.C: 390: }
;MAIN.C: 394: if((timeOut!=0)&&( timeTick > timeOut)){
	bcf	status, 5	;RP0=0, select bank0
	movf	(_timeOut+1),w
	iorwf	(_timeOut),w
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l7727
u2230:
	
l7697:	
	movf	(_timeTick+1),w
	subwf	(_timeOut+1),w
	skipz
	goto	u2245
	movf	(_timeTick),w
	subwf	(_timeOut),w
u2245:
	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l7727
u2240:
	goto	l7725
	line	399
	
l7701:	
;MAIN.C: 399: setState(2,15);
	movlw	0Fh
	movwf	(?_setState)
	clrf	(?_setState+1)
	movlw	(02h)
	fcall	_setState
	line	401
;MAIN.C: 401: break;
	goto	l7727
	line	403
	
l7703:	
;MAIN.C: 403: setState(6,7);
	movlw	07h
	movwf	(?_setState)
	clrf	(?_setState+1)
	movlw	(06h)
	fcall	_setState
	line	404
;MAIN.C: 404: break;
	goto	l7727
	line	406
	
l7705:	
;MAIN.C: 406: setState(2,0);
	clrf	(?_setState)
	clrf	(?_setState+1)
	movlw	(02h)
	fcall	_setState
	line	408
;MAIN.C: 408: eepromWriteByte(0x00,7);
	movlw	(07h)
	movwf	(?_eepromWriteByte)
	movlw	(0)
	fcall	_eepromWriteByte
	line	409
;MAIN.C: 409: eepromWriteByte(0x02,0);
	clrf	(?_eepromWriteByte)
	movlw	(02h)
	fcall	_eepromWriteByte
	line	410
;MAIN.C: 410: break;
	goto	l7727
	line	411
;MAIN.C: 411: case 7:
	
l4222:	
	line	413
;MAIN.C: 413: if(RC1==1){
	btfss	(57/8),(57)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l7727
u2250:
	line	414
	
l7707:	
;MAIN.C: 414: PwInNum++;
	incf	(_PwInNum),f
	line	415
	
l7709:	
;MAIN.C: 415: tmp = eepromReadByte(0x02);
	movlw	(02h)
	fcall	_eepromReadByte
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@tmp)
	line	416
	
l7711:	
;MAIN.C: 416: if(tmp>0&&tmp<4){
	movf	(main@tmp),w
	skipz
	goto	u2260
	goto	l7719
u2260:
	
l7713:	
	movlw	(04h)
	subwf	(main@tmp),w
	skipnc
	goto	u2271
	goto	u2270
u2271:
	goto	l7719
u2270:
	line	417
	
l7715:	
;MAIN.C: 417: tmp--;
	decf	(main@tmp),f
	line	418
	
l7717:	
;MAIN.C: 418: eepromWriteByte(0x03+tmp,PwInNum);
	movf	(_PwInNum),w
	movwf	(?_eepromWriteByte)
	movf	(main@tmp),w
	addlw	03h
	fcall	_eepromWriteByte
	line	421
	
l7719:	
;MAIN.C: 419: }
;MAIN.C: 421: beep(10,1);
	clrf	(?_beep)
	incf	(?_beep),f
	movlw	(0Ah)
	fcall	_beep
	line	422
	
l7721:	
;MAIN.C: 422: setState(7,1);
	clrf	(?_setState)
	incf	(?_setState),f
	clrf	(?_setState+1)
	movlw	(07h)
	fcall	_setState
	goto	l7727
	line	396
	
l7725:	
	movf	(_mtState),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           16     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l7701
	xorlw	2^1	; case 2
	skipnz
	goto	l7703
	xorlw	6^2	; case 6
	skipnz
	goto	l7705
	xorlw	7^6	; case 7
	skipnz
	goto	l4222
	goto	l7727
	opt asmopt_on

	line	445
	
l7727:	
;MAIN.C: 442: }
;MAIN.C: 445: if(mtState==0) RA3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_mtState),f
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l4225
u2280:
	
l7729:	
	bsf	(43/8),(43)&7
	goto	l7731
	line	446
	
l4225:	
;MAIN.C: 446: else RA3 =0;
	bcf	(43/8),(43)&7
	line	452
	
l7731:	
;MAIN.C: 452: if(mtState == 2) {
	movf	(_mtState),w
	xorlw	02h
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l7747
u2290:
	line	456
	
l7733:	
;MAIN.C: 456: if(buzFre) t = 1600;
	movf	(main@buzFre),w
	skipz
	goto	u2300
	goto	l7737
u2300:
	
l7735:	
	movlw	low(0640h)
	movwf	(main@t)
	movlw	high(0640h)
	movwf	((main@t))+1
	goto	l4230
	line	457
	
l7737:	
;MAIN.C: 457: else t = 2666;
	movlw	low(0A6Ah)
	movwf	(main@t)
	movlw	high(0A6Ah)
	movwf	((main@t))+1
	goto	l4230
	line	460
	
l7739:	
;MAIN.C: 460: RC0 = ~RC0;
	movlw	1<<((56)&7)
	xorwf	((56)/8),f
	line	461
;MAIN.C: 461: if(buzFre) {_delay((unsigned long)((480)*(8000000/4000000.0)));}
	movf	(main@buzFre),w
	skipz
	goto	u2310
	goto	l7743
u2310:
	
l7741:	
	opt asmopt_off
movlw	137
movwf	(??_main+0)+0,f
u2357:
	nop2
	nop2
decfsz	(??_main+0)+0,f
	goto	u2357
opt asmopt_on

	goto	l4230
	line	462
	
l7743:	
;MAIN.C: 462: else {_delay((unsigned long)((290)*(8000000/4000000.0)));}
	opt asmopt_off
movlw	193
movwf	(??_main+0)+0,f
u2367:
decfsz	(??_main+0)+0,f
	goto	u2367
opt asmopt_on

	line	463
	
l4230:	
	line	459
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(main@t),f
	movlw	high(01h)
	skipc
	decf	(main@t+1),f
	subwf	(main@t+1),f
	incf	((main@t)),w
	skipnz
	incf	((main@t+1)),w

	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l7739
u2320:
	line	464
	
l7745:	
;MAIN.C: 463: }
;MAIN.C: 464: buzFre =~buzFre;
	movlw	(0FFh)
	xorwf	(main@buzFre),f
	line	466
;MAIN.C: 466: }
	goto	l7749
	line	467
	
l7747:	
;MAIN.C: 467: else {_delay((unsigned long)((800)*(8000000/4000.0)));}
	opt asmopt_off
movlw  9
movwf	((??_main+0)+0+2),f
movlw	30
movwf	((??_main+0)+0+1),f
	movlw	235
movwf	((??_main+0)+0),f
u2377:
	decfsz	((??_main+0)+0),f
	goto	u2377
	decfsz	((??_main+0)+0+1),f
	goto	u2377
	decfsz	((??_main+0)+0+2),f
	goto	u2377
	clrwdt
opt asmopt_on

	line	470
	
l7749:	
;MAIN.C: 470: timeTick++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_timeTick),f
	skipnz
	incf	(_timeTick+1),f
	goto	l7573
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	473
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_id_clear
psect	text560,local,class=CODE,delta=2
global __ptext560
__ptext560:

;; *************** function _id_clear *****************
;; Defined at:
;;		line 135 in file "MAIN.C"
;; Parameters:    Size  Location     Type
;;  idMin           1    wreg     unsigned char 
;;  idMax           1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  idMin           1   10[BANK0 ] unsigned char 
;;  tmp             5    5[BANK0 ] unsigned char [5]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       1       0
;;      Locals:         0       6       0
;;      Temps:          0       0       0
;;      Totals:         0       7       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_id_replate
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text560
	file	"MAIN.C"
	line	135
	global	__size_of_id_clear
	__size_of_id_clear	equ	__end_of_id_clear-_id_clear
	
_id_clear:	
	opt	stack 3
; Regs used in _id_clear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;id_clear@idMin stored from wreg
	line	136
	movwf	(id_clear@idMin)
	
l7497:	
;MAIN.C: 136: unsigned char tmp[5]={0xff,0xff,0xff,0xff,0xff};
	movlw	(id_clear@tmp)&0ffh
	movwf	fsr0
	movf	(id_clear@F1108),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(id_clear@F1108)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(id_clear@F1108)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(id_clear@F1108)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(id_clear@F1108)+4,w
	movwf	indf
	line	137
	goto	l7503
	line	138
	
l7499:	
;MAIN.C: 138: id_replate(idMin,tmp,buffTag);
	movlw	(id_clear@tmp)&0ffh
	movwf	(?_id_replate)
	movlw	(_buffTag)&0ffh
	movwf	(0+?_id_replate+01h)
	movf	(id_clear@idMin),w
	fcall	_id_replate
	line	137
	
l7501:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(id_clear@idMin),f
	
l7503:	
	movf	(id_clear@idMin),w
	subwf	(id_clear@idMax),w
	skipnc
	goto	u1911
	goto	u1910
u1911:
	goto	l7499
u1910:
	line	139
	
l4157:	
	return
	opt stack 0
GLOBAL	__end_of_id_clear
	__end_of_id_clear:
;; =============== function _id_clear ends ============

	signat	_id_clear,8312
	global	_id_replate
psect	text561,local,class=CODE,delta=2
global __ptext561
__ptext561:

;; *************** function _id_replate *****************
;; Defined at:
;;		line 121 in file "MAIN.C"
;; Parameters:    Size  Location     Type
;;  id              1    wreg     unsigned char 
;;  Cont            1    0[BANK0 ] PTR unsigned char 
;;		 -> id_clear@tmp(5), keyID(5), 
;;  buff            1    1[BANK0 ] PTR unsigned char 
;;		 -> buffTag(25), 
;; Auto vars:     Size  Location     Type
;;  id              1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         1       0       0
;;      Temps:          0       2       0
;;      Totals:         1       4       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___bmul
;;		_eepromWriteBlock
;; This function is called by:
;;		_id_clear
;;		_main
;; This function uses a non-reentrant model
;;
psect	text561
	file	"MAIN.C"
	line	121
	global	__size_of_id_replate
	__size_of_id_replate	equ	__end_of_id_replate-_id_replate
	
_id_replate:	
	opt	stack 4
; Regs used in _id_replate: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;id_replate@id stored from wreg
	movwf	(id_replate@id)
	line	122
	
l7483:	
;MAIN.C: 122: id=(id-1)*5;
	movlw	(05h)
	movwf	(?___bmul)
	movf	(id_replate@id),w
	addlw	0FFh
	fcall	___bmul
	movwf	(id_replate@id)
	line	125
	
l7485:	
;MAIN.C: 123: {
;MAIN.C: 124: {
;MAIN.C: 125: *(buff+id) = *Cont;
	movf	(id_replate@Cont),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_id_replate+0)+0
	movf	(id_replate@id),w
	addwf	(id_replate@buff),w
	movwf	(??_id_replate+1)+0
	movf	0+(??_id_replate+1)+0,w
	movwf	fsr0
	movf	(??_id_replate+0)+0,w
	movwf	indf
	line	126
	
l7487:	
;MAIN.C: 126: *(buff+1+id) = *(Cont+1);
	movf	(id_replate@Cont),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_id_replate+0)+0
	movf	(id_replate@id),w
	addwf	(id_replate@buff),w
	movwf	(??_id_replate+1)+0
	movf	0+(??_id_replate+1)+0,w
	addlw	01h
	movwf	fsr0
	movf	(??_id_replate+0)+0,w
	movwf	indf
	line	127
	
l7489:	
;MAIN.C: 127: *(buff+2+id) = *(Cont+2);
	movf	(id_replate@Cont),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	movwf	(??_id_replate+0)+0
	movf	(id_replate@id),w
	addwf	(id_replate@buff),w
	movwf	(??_id_replate+1)+0
	movf	0+(??_id_replate+1)+0,w
	addlw	02h
	movwf	fsr0
	movf	(??_id_replate+0)+0,w
	movwf	indf
	line	128
	
l7491:	
;MAIN.C: 128: *(buff+3+id) = *(Cont+3);
	movf	(id_replate@Cont),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_id_replate+0)+0
	movf	(id_replate@id),w
	addwf	(id_replate@buff),w
	movwf	(??_id_replate+1)+0
	movf	0+(??_id_replate+1)+0,w
	addlw	03h
	movwf	fsr0
	movf	(??_id_replate+0)+0,w
	movwf	indf
	line	129
	
l7493:	
;MAIN.C: 129: *(buff+4+id) = *(Cont+4);
	movf	(id_replate@Cont),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	movwf	(??_id_replate+0)+0
	movf	(id_replate@id),w
	addwf	(id_replate@buff),w
	movwf	(??_id_replate+1)+0
	movf	0+(??_id_replate+1)+0,w
	addlw	04h
	movwf	fsr0
	movf	(??_id_replate+0)+0,w
	movwf	indf
	line	133
	
l7495:	
;MAIN.C: 130: }
;MAIN.C: 131: }
;MAIN.C: 133: eepromWriteBlock(0x06,buffTag,25);
	movlw	(_buffTag)&0ffh
	movwf	(?_eepromWriteBlock)
	movlw	(019h)
	movwf	0+(?_eepromWriteBlock)+01h
	movlw	(06h)
	fcall	_eepromWriteBlock
	line	134
	
l4149:	
	return
	opt stack 0
GLOBAL	__end_of_id_replate
	__end_of_id_replate:
;; =============== function _id_replate ends ============

	signat	_id_replate,12408
	global	_SendNum
psect	text562,local,class=CODE,delta=2
global __ptext562
__ptext562:

;; *************** function _SendNum *****************
;; Defined at:
;;		line 42 in file "SWUART.C"
;; Parameters:    Size  Location     Type
;;  num             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  num             1    9[COMMON] unsigned char 
;;  nib             1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         6       0       0
;;      Temps:          0       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_swUartSendByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text562
	file	"SWUART.C"
	line	42
	global	__size_of_SendNum
	__size_of_SendNum	equ	__end_of_SendNum-_SendNum
	
_SendNum:	
	opt	stack 5
; Regs used in _SendNum: [wreg+status,2+status,0+pclath+cstack]
;SendNum@num stored from wreg
	movwf	(SendNum@num)
	line	43
	
l7461:	
;SWUART.C: 43: unsigned char nib = num>>4;
	swapf	(SendNum@num),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(SendNum@nib)
	line	44
	
l7463:	
;SWUART.C: 44: swUartSendByte(nib <10 ? (nib+'0') :(nib+'A'-10));
	movlw	(0Ah)
	subwf	(SendNum@nib),w
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l7467
u1890:
	
l7465:	
	movf	(SendNum@nib),w
	movwf	(_SendNum$5067)
	clrf	(_SendNum$5067+1)
	movlw	037h
	addwf	(_SendNum$5067),f
	skipnc
	incf	(_SendNum$5067+1),f
	goto	l7469
	
l7467:	
	movf	(SendNum@nib),w
	movwf	(_SendNum$5067)
	clrf	(_SendNum$5067+1)
	movlw	030h
	addwf	(_SendNum$5067),f
	skipnc
	incf	(_SendNum$5067+1),f
	
l7469:	
	movf	(_SendNum$5067),w
	fcall	_swUartSendByte
	line	45
	
l7471:	
;SWUART.C: 45: nib = num&0x0f;
	movf	(SendNum@num),w
	movwf	(SendNum@nib)
	
l7473:	
	movlw	(0Fh)
	andwf	(SendNum@nib),f
	line	46
	
l7475:	
;SWUART.C: 46: swUartSendByte(nib <10 ? (nib+'0') :(nib+'A'-10));
	movlw	(0Ah)
	subwf	(SendNum@nib),w
	skipc
	goto	u1901
	goto	u1900
u1901:
	goto	l7479
u1900:
	
l7477:	
	movf	(SendNum@nib),w
	movwf	(_SendNum$5068)
	clrf	(_SendNum$5068+1)
	movlw	037h
	addwf	(_SendNum$5068),f
	skipnc
	incf	(_SendNum$5068+1),f
	goto	l7481
	
l7479:	
	movf	(SendNum@nib),w
	movwf	(_SendNum$5068)
	clrf	(_SendNum$5068+1)
	movlw	030h
	addwf	(_SendNum$5068),f
	skipnc
	incf	(_SendNum$5068+1),f
	
l7481:	
	movf	(_SendNum$5068),w
	fcall	_swUartSendByte
	line	47
	
l5050:	
	return
	opt stack 0
GLOBAL	__end_of_SendNum
	__end_of_SendNum:
;; =============== function _SendNum ends ============

	signat	_SendNum,4216
	global	_swUartSendString
psect	text563,local,class=CODE,delta=2
global __ptext563
__ptext563:

;; *************** function _swUartSendString *****************
;; Defined at:
;;		line 35 in file "SWUART.C"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  str             1    5[COMMON] PTR unsigned char 
;;		 -> STR_1(7), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_swUartSendByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text563
	file	"SWUART.C"
	line	35
	global	__size_of_swUartSendString
	__size_of_swUartSendString	equ	__end_of_swUartSendString-_swUartSendString
	
_swUartSendString:	
	opt	stack 5
; Regs used in _swUartSendString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;swUartSendString@str stored from wreg
	movwf	(swUartSendString@str)
	line	36
	
l7453:	
;SWUART.C: 36: while(*str){
	goto	l7459
	line	37
	
l7455:	
;SWUART.C: 37: swUartSendByte((char)*str);
	movf	(swUartSendString@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_swUartSendByte
	line	38
	
l7457:	
;SWUART.C: 38: str++;
	incf	(swUartSendString@str),f
	line	36
	
l7459:	
	movf	(swUartSendString@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u1881
	goto	u1880
u1881:
	goto	l7455
u1880:
	line	40
	
l5039:	
	return
	opt stack 0
GLOBAL	__end_of_swUartSendString
	__end_of_swUartSendString:
;; =============== function _swUartSendString ends ============

	signat	_swUartSendString,4216
	global	_beep
psect	text564,local,class=CODE,delta=2
global __ptext564
__ptext564:

;; *************** function _beep *****************
;; Defined at:
;;		line 28 in file "MAIN.C"
;; Parameters:    Size  Location     Type
;;  delay           1    wreg     unsigned char 
;;  rep             1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  delay           1    2[BANK0 ] unsigned char 
;;  t               2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         0       3       0
;;      Temps:          1       0       0
;;      Totals:         2       3       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___wmul
;;		_delay_x10ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text564
	file	"MAIN.C"
	line	28
	global	__size_of_beep
	__size_of_beep	equ	__end_of_beep-_beep
	
_beep:	
	opt	stack 5
; Regs used in _beep: [wreg+status,2+status,0+pclath+cstack]
;beep@delay stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(beep@delay)
	line	31
	
l7443:	
;MAIN.C: 29: unsigned int t;
;MAIN.C: 31: while(rep--){
	goto	l7451
	line	32
	
l7445:	
;MAIN.C: 32: t=25*delay;
	bcf	status, 5	;RP0=0, select bank0
	movf	(beep@delay),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	019h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(beep@t+1)
	movf	(0+(?___wmul)),w
	movwf	(beep@t)
	line	33
;MAIN.C: 33: while(t--){
	goto	l4130
	line	34
	
l7447:	
;MAIN.C: 34: RC0 = ~RC0;
	movlw	1<<((56)&7)
	xorwf	((56)/8),f
	line	35
;MAIN.C: 35: _delay((unsigned long)((428)*(8000000/4000000.0)));
	opt asmopt_off
movlw	171
movwf	(??_beep+0)+0,f
u2387:
	nop2
decfsz	(??_beep+0)+0,f
	goto	u2387
opt asmopt_on

	line	37
	
l4130:	
	line	33
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(beep@t),f
	movlw	high(01h)
	skipc
	decf	(beep@t+1),f
	subwf	(beep@t+1),f
	incf	((beep@t)),w
	skipnz
	incf	((beep@t+1)),w

	skipz
	goto	u1861
	goto	u1860
u1861:
	goto	l7447
u1860:
	
l4132:	
	line	38
;MAIN.C: 37: }
;MAIN.C: 38: RC0 =0;
	bcf	(56/8),(56)&7
	line	39
	
l7449:	
;MAIN.C: 39: delay_x10ms(delay);
	movf	(beep@delay),w
	fcall	_delay_x10ms
	line	31
	
l7451:	
	decf	(beep@rep),f
	movf	((beep@rep)),w
	xorlw	0FFh
	skipz
	goto	u1871
	goto	u1870
u1871:
	goto	l7445
u1870:
	line	43
	
l4134:	
	return
	opt stack 0
GLOBAL	__end_of_beep
	__end_of_beep:
;; =============== function _beep ends ============

	signat	_beep,8312
	global	_eepromWriteBlock
psect	text565,local,class=CODE,delta=2
global __ptext565
__ptext565:

;; *************** function _eepromWriteBlock *****************
;; Defined at:
;;		line 43 in file "ms82_eeprom.c"
;; Parameters:    Size  Location     Type
;;  addStart        1    wreg     unsigned char 
;;  buff            1    6[COMMON] PTR unsigned char 
;;		 -> buffTag(25), 
;;  len             1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addStart        1    9[COMMON] unsigned char 
;;  i               1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 120/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          1       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_eepromWriteByte
;; This function is called by:
;;		_id_replate
;; This function uses a non-reentrant model
;;
psect	text565
	file	"ms82_eeprom.c"
	global	__size_of_eepromWriteBlock
	__size_of_eepromWriteBlock	equ	__end_of_eepromWriteBlock-_eepromWriteBlock
	
_eepromWriteBlock:	
	opt	stack 4
; Regs used in _eepromWriteBlock: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;eepromWriteBlock@addStart stored from wreg
	line	45
	movwf	(eepromWriteBlock@addStart)
	
l7435:	
;ms82_eeprom.c: 44: unsigned char i;
;ms82_eeprom.c: 45: for(i=0;i<len;i++){
	clrf	(eepromWriteBlock@i)
	goto	l7441
	line	46
	
l7437:	
;ms82_eeprom.c: 46: eepromWriteByte(addStart+i,buff[i]);
	movf	(eepromWriteBlock@i),w
	addwf	(eepromWriteBlock@buff),w
	movwf	(??_eepromWriteBlock+0)+0
	movf	0+(??_eepromWriteBlock+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(?_eepromWriteByte)
	movf	(eepromWriteBlock@i),w
	addwf	(eepromWriteBlock@addStart),w
	fcall	_eepromWriteByte
	line	45
	
l7439:	
	incf	(eepromWriteBlock@i),f
	
l7441:	
	movf	(eepromWriteBlock@len),w
	subwf	(eepromWriteBlock@i),w
	skipc
	goto	u1851
	goto	u1850
u1851:
	goto	l7437
u1850:
	line	49
	
l1609:	
	return
	opt stack 0
GLOBAL	__end_of_eepromWriteBlock
	__end_of_eepromWriteBlock:
;; =============== function _eepromWriteBlock ends ============

	signat	_eepromWriteBlock,12408
	global	_swUartSendByte
psect	text566,local,class=CODE,delta=2
global __ptext566
__ptext566:

;; *************** function _swUartSendByte *****************
;; Defined at:
;;		line 13 in file "SWUART.C"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    3[COMMON] unsigned char 
;;  i               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          1       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_swUartSendString
;;		_SendNum
;; This function uses a non-reentrant model
;;
psect	text566
	file	"SWUART.C"
	line	13
	global	__size_of_swUartSendByte
	__size_of_swUartSendByte	equ	__end_of_swUartSendByte-_swUartSendByte
	
_swUartSendByte:	
	opt	stack 5
; Regs used in _swUartSendByte: [wreg+status,2+status,0]
;swUartSendByte@dat stored from wreg
	line	16
	movwf	(swUartSendByte@dat)
	
l7417:	
;SWUART.C: 14: unsigned char i;
;SWUART.C: 16: RA2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7
	line	18
	
l7419:	
;SWUART.C: 18: _delay((unsigned long)(((2000000/9600))*(8000000/4000000.0)));
	opt asmopt_off
movlw	138
movwf	(??_swUartSendByte+0)+0,f
u2397:
decfsz	(??_swUartSendByte+0)+0,f
	goto	u2397
	clrwdt
opt asmopt_on

	line	19
	
l7421:	
;SWUART.C: 19: for(i=0;i<8;i++){
	clrf	(swUartSendByte@i)
	
l5031:	
	line	20
;SWUART.C: 20: RA2 = (dat&1);
	btfsc	(swUartSendByte@dat),0
	goto	u1821
	goto	u1820
	
u1821:
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7
	goto	u1834
u1820:
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7
u1834:
	line	21
;SWUART.C: 21: dat=dat>>1;
	clrc
	rrf	(swUartSendByte@dat),f
	line	23
	
l7427:	
;SWUART.C: 23: _delay((unsigned long)(((2000000/9600))*(8000000/4000000.0)));
	opt asmopt_off
movlw	138
movwf	(??_swUartSendByte+0)+0,f
u2407:
decfsz	(??_swUartSendByte+0)+0,f
	goto	u2407
	clrwdt
opt asmopt_on

	line	19
	
l7429:	
	incf	(swUartSendByte@i),f
	
l7431:	
	movlw	(08h)
	subwf	(swUartSendByte@i),w
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l5031
u1840:
	
l5032:	
	line	29
;SWUART.C: 24: }
;SWUART.C: 29: RA2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7
	line	31
	
l7433:	
;SWUART.C: 31: _delay((unsigned long)(((2000000/9600))*(8000000/4000000.0)));
	opt asmopt_off
movlw	138
movwf	(??_swUartSendByte+0)+0,f
u2417:
decfsz	(??_swUartSendByte+0)+0,f
	goto	u2417
	clrwdt
opt asmopt_on

	line	33
	
l5033:	
	return
	opt stack 0
GLOBAL	__end_of_swUartSendByte
	__end_of_swUartSendByte:
;; =============== function _swUartSendByte ends ============

	signat	_swUartSendByte,4216
	global	_id_search
psect	text567,local,class=CODE,delta=2
global __ptext567
__ptext567:

;; *************** function _id_search *****************
;; Defined at:
;;		line 113 in file "MAIN.C"
;; Parameters:    Size  Location     Type
;;  id_input        1    wreg     PTR unsigned char 
;;		 -> keyID(5), 
;;  buff            1   10[COMMON] PTR unsigned char 
;;		 -> buffTag(25), 
;; Auto vars:     Size  Location     Type
;;  id_input        1    0[BANK0 ] PTR unsigned char 
;;		 -> keyID(5), 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 20/0
;;		Unchanged: FFEDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         0       2       0
;;      Temps:          1       0       0
;;      Totals:         2       2       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_comArr
;;		___lbdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text567
	file	"MAIN.C"
	line	113
	global	__size_of_id_search
	__size_of_id_search	equ	__end_of_id_search-_id_search
	
_id_search:	
	opt	stack 5
; Regs used in _id_search: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;id_search@id_input stored from wreg
	line	115
	bcf	status, 5	;RP0=0, select bank0
	movwf	(id_search@id_input)
	
l7397:	
;MAIN.C: 114: unsigned char i;
;MAIN.C: 115: for(i=0;i<21;i+=5){
	clrf	(id_search@i)
	line	116
	
l7403:	
;MAIN.C: 116: if(comArr(id_input,buff+i,5,5))
	movf	(id_search@i),w
	addwf	(id_search@buff),w
	movwf	(?_comArr)
	movlw	(05h)
	movwf	0+(?_comArr)+01h
	movlw	(05h)
	movwf	0+(?_comArr)+02h
	movf	(id_search@id_input),w
	fcall	_comArr
	xorlw	0
	skipnz
	goto	u1801
	goto	u1800
u1801:
	goto	l7409
u1800:
	line	117
	
l7405:	
;MAIN.C: 117: return i/5 +1;
	movlw	(05h)
	movwf	(?___lbdiv)
	movf	(id_search@i),w
	fcall	___lbdiv
	movwf	(??_id_search+0)+0
	incf	0+(??_id_search+0)+0,w
	goto	l4146
	line	115
	
l7409:	
	movlw	(05h)
	addwf	(id_search@i),f
	
l7411:	
	movlw	(015h)
	subwf	(id_search@i),w
	skipc
	goto	u1811
	goto	u1810
u1811:
	goto	l7403
u1810:
	line	119
	
l7413:	
;MAIN.C: 118: }
;MAIN.C: 119: return 255;
	movlw	(0FFh)
	line	120
	
l4146:	
	return
	opt stack 0
GLOBAL	__end_of_id_search
	__end_of_id_search:
;; =============== function _id_search ends ============

	signat	_id_search,8313
	global	_delay_x10ms
psect	text568,local,class=CODE,delta=2
global __ptext568
__ptext568:

;; *************** function _delay_x10ms *****************
;; Defined at:
;;		line 24 in file "MAIN.C"
;; Parameters:    Size  Location     Type
;;  t               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  t               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          2       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_beep
;; This function uses a non-reentrant model
;;
psect	text568
	file	"MAIN.C"
	line	24
	global	__size_of_delay_x10ms
	__size_of_delay_x10ms	equ	__end_of_delay_x10ms-_delay_x10ms
	
_delay_x10ms:	
	opt	stack 5
; Regs used in _delay_x10ms: [wreg+status,2+status,0]
;delay_x10ms@t stored from wreg
	movwf	(delay_x10ms@t)
	line	25
	
l7391:	
;MAIN.C: 25: while(t--)
	goto	l7395
	line	26
	
l7393:	
;MAIN.C: 26: _delay((unsigned long)((10)*(8000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_delay_x10ms+0)+0+1),f
	movlw	248
movwf	((??_delay_x10ms+0)+0),f
u2427:
	decfsz	((??_delay_x10ms+0)+0),f
	goto	u2427
	decfsz	((??_delay_x10ms+0)+0+1),f
	goto	u2427
	clrwdt
opt asmopt_on

	line	25
	
l7395:	
	decf	(delay_x10ms@t),f
	movf	((delay_x10ms@t)),w
	xorlw	0FFh
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l7393
u1790:
	line	27
	
l4125:	
	return
	opt stack 0
GLOBAL	__end_of_delay_x10ms
	__end_of_delay_x10ms:
;; =============== function _delay_x10ms ends ============

	signat	_delay_x10ms,4216
	global	_get_RFID
psect	text569,local,class=CODE,delta=2
global __ptext569
__ptext569:

;; *************** function _get_RFID *****************
;; Defined at:
;;		line 21 in file "rfid125.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  RF_serial_55   11    0[BANK0 ] unsigned char [11]
;;  timeOutVal      2   17[BANK0 ] unsigned int 
;;  ii              1   19[BANK0 ] unsigned char 
;;  flag_RFID_la    1   16[BANK0 ] unsigned char 
;;  i               1   15[BANK0 ] unsigned char 
;;  j               1   14[BANK0 ] unsigned char 
;;  even_row        1   13[BANK0 ] unsigned char 
;;  even_col        1   12[BANK0 ] unsigned char 
;;  flag_RFID_sy    1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/0
;;		Unchanged: FFEDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0      20       0
;;      Temps:          1       0       0
;;      Totals:         1      20       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_timerOut
;;		___lbdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text569
	file	"rfid125.c"
	line	21
	global	__size_of_get_RFID
	__size_of_get_RFID	equ	__end_of_get_RFID-_get_RFID
	
_get_RFID:	
	opt	stack 5
; Regs used in _get_RFID: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	30
	
l7169:	
;rfid125.c: 23: unsigned char RF_serial_55bits[11];
;rfid125.c: 24: unsigned int timeOutVal;
;rfid125.c: 25: unsigned char i,ii,j;
;rfid125.c: 26: unsigned char flag_RFID_syn, flag_RFID_last;
;rfid125.c: 27: unsigned char even_row, even_col;
;rfid125.c: 30: flag_RFID_syn = 0;
	clrf	(get_RFID@flag_RFID_syn)
	line	33
	
l7171:	
;rfid125.c: 33: i=16;
	movlw	(010h)
	movwf	(get_RFID@i)
	line	36
	
l7173:	
;rfid125.c: 35: {
;rfid125.c: 36: timeOutVal=timerOut(1,150);
	movlw	096h
	movwf	(?_timerOut)
	clrf	(?_timerOut+1)
	movlw	(01h)
	fcall	_timerOut
	movf	(1+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal+1)
	movf	(0+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal)
	line	37
	
l7175:	
;rfid125.c: 37: if(timeOutVal==0) return 0;
	movf	((get_RFID@timeOutVal+1)),w
	iorwf	((get_RFID@timeOutVal)),w
	skipz
	goto	u1361
	goto	u1360
u1361:
	goto	l7181
u1360:
	
l7177:	
	movlw	(0)
	goto	l2455
	line	39
	
l7181:	
;rfid125.c: 39: timeOutVal=timerOut(0,150);
	movlw	096h
	movwf	(?_timerOut)
	clrf	(?_timerOut+1)
	movlw	(0)
	fcall	_timerOut
	movf	(1+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal+1)
	movf	(0+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal)
	line	40
	
l7183:	
;rfid125.c: 40: if(timeOutVal==0) return 0;
	movf	((get_RFID@timeOutVal+1)),w
	iorwf	((get_RFID@timeOutVal)),w
	skipz
	goto	u1371
	goto	u1370
u1371:
	goto	l7189
u1370:
	goto	l7177
	line	42
	
l7189:	
;rfid125.c: 42: i--;
	decf	(get_RFID@i),f
	line	44
	
l7191:	
;rfid125.c: 43: }
;rfid125.c: 44: while(timeOutVal<72 && i>0);
	movlw	high(048h)
	subwf	(get_RFID@timeOutVal+1),w
	movlw	low(048h)
	skipnz
	subwf	(get_RFID@timeOutVal),w
	skipnc
	goto	u1381
	goto	u1380
u1381:
	goto	l2459
u1380:
	
l7193:	
	movf	(get_RFID@i),f
	skipz
	goto	u1391
	goto	u1390
u1391:
	goto	l7173
u1390:
	
l2459:	
	line	45
;rfid125.c: 45: flag_RFID_last = 1;
	clrf	(get_RFID@flag_RFID_last)
	incf	(get_RFID@flag_RFID_last),f
	line	46
	
l7195:	
;rfid125.c: 46: i = 0;
	clrf	(get_RFID@i)
	line	47
;rfid125.c: 47: while(i<64)
	goto	l7261
	line	49
	
l7197:	
;rfid125.c: 48: {
;rfid125.c: 49: for(ii=0;ii<9;ii++)
	clrf	(get_RFID@ii)
	line	51
	
l7203:	
;rfid125.c: 50: {
;rfid125.c: 51: timeOutVal=timerOut(flag_RFID_last,150);
	movlw	096h
	movwf	(?_timerOut)
	clrf	(?_timerOut+1)
	movf	(get_RFID@flag_RFID_last),w
	fcall	_timerOut
	movf	(1+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal+1)
	movf	(0+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal)
	line	52
	
l7205:	
;rfid125.c: 52: if(timeOutVal==0) return 0;
	movf	((get_RFID@timeOutVal+1)),w
	iorwf	((get_RFID@timeOutVal)),w
	skipz
	goto	u1401
	goto	u1400
u1401:
	goto	l7211
u1400:
	goto	l7177
	line	55
	
l7211:	
;rfid125.c: 54: if(0==flag_RFID_last && timeOutVal<=72 ||
;rfid125.c: 55: 1==flag_RFID_last && timeOutVal>72)
	movf	(get_RFID@flag_RFID_last),f
	skipz
	goto	u1411
	goto	u1410
u1411:
	goto	l7215
u1410:
	
l7213:	
	movlw	high(049h)
	subwf	(get_RFID@timeOutVal+1),w
	movlw	low(049h)
	skipnz
	subwf	(get_RFID@timeOutVal),w
	skipc
	goto	u1421
	goto	u1420
u1421:
	goto	l7219
u1420:
	
l7215:	
	decf	(get_RFID@flag_RFID_last),w
	skipz
	goto	u1431
	goto	u1430
u1431:
	goto	l7233
u1430:
	
l7217:	
	movlw	high(049h)
	subwf	(get_RFID@timeOutVal+1),w
	movlw	low(049h)
	skipnz
	subwf	(get_RFID@timeOutVal),w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l7233
u1440:
	line	57
	
l7219:	
;rfid125.c: 56: {
;rfid125.c: 57: if(!flag_RFID_last)
	movf	(get_RFID@flag_RFID_last),f
	skipz
	goto	u1451
	goto	u1450
u1451:
	goto	l7229
u1450:
	line	59
	
l7221:	
;rfid125.c: 58: {
;rfid125.c: 59: timeOutVal=timerOut(1,72);
	movlw	048h
	movwf	(?_timerOut)
	clrf	(?_timerOut+1)
	movlw	(01h)
	fcall	_timerOut
	movf	(1+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal+1)
	movf	(0+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal)
	line	60
	
l7223:	
;rfid125.c: 60: if(timeOutVal==0) return 0;
	movf	((get_RFID@timeOutVal+1)),w
	iorwf	((get_RFID@timeOutVal)),w
	skipz
	goto	u1461
	goto	u1460
u1461:
	goto	l7229
u1460:
	goto	l7177
	line	62
	
l7229:	
;rfid125.c: 61: }
;rfid125.c: 62: flag_RFID_last = 0;
	clrf	(get_RFID@flag_RFID_last)
	line	63
	
l7231:	
;rfid125.c: 63: i++;
	incf	(get_RFID@i),f
	line	64
;rfid125.c: 64: }
	goto	l7253
	line	67
	
l7233:	
;rfid125.c: 65: else
;rfid125.c: 66: if(0==flag_RFID_last && timeOutVal>72 ||
;rfid125.c: 67: 1==flag_RFID_last && timeOutVal<=72)
	movf	(get_RFID@flag_RFID_last),f
	skipz
	goto	u1471
	goto	u1470
u1471:
	goto	l7237
u1470:
	
l7235:	
	movlw	high(049h)
	subwf	(get_RFID@timeOutVal+1),w
	movlw	low(049h)
	skipnz
	subwf	(get_RFID@timeOutVal),w
	skipnc
	goto	u1481
	goto	u1480
u1481:
	goto	l7241
u1480:
	
l7237:	
	decf	(get_RFID@flag_RFID_last),w
	skipz
	goto	u1491
	goto	u1490
u1491:
	goto	l7253
u1490:
	
l7239:	
	movlw	high(049h)
	subwf	(get_RFID@timeOutVal+1),w
	movlw	low(049h)
	skipnz
	subwf	(get_RFID@timeOutVal),w
	skipnc
	goto	u1501
	goto	u1500
u1501:
	goto	l7253
u1500:
	line	69
	
l7241:	
;rfid125.c: 68: {
;rfid125.c: 69: if(flag_RFID_last)
	movf	(get_RFID@flag_RFID_last),w
	skipz
	goto	u1510
	goto	l2478
u1510:
	line	71
	
l7243:	
;rfid125.c: 70: {
;rfid125.c: 71: timeOutVal=timerOut(0,72);
	movlw	048h
	movwf	(?_timerOut)
	clrf	(?_timerOut+1)
	movlw	(0)
	fcall	_timerOut
	movf	(1+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal+1)
	movf	(0+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal)
	line	72
	
l7245:	
;rfid125.c: 72: if(timeOutVal==0) return 0;
	movf	((get_RFID@timeOutVal+1)),w
	iorwf	((get_RFID@timeOutVal)),w
	skipz
	goto	u1521
	goto	u1520
u1521:
	goto	l2478
u1520:
	goto	l7177
	line	73
	
l2478:	
	line	74
;rfid125.c: 73: }
;rfid125.c: 74: flag_RFID_last = 1;
	clrf	(get_RFID@flag_RFID_last)
	incf	(get_RFID@flag_RFID_last),f
	line	75
	
l7251:	
;rfid125.c: 75: i++;
	incf	(get_RFID@i),f
	line	77
;rfid125.c: 77: break;
	goto	l7257
	line	49
	
l7253:	
	incf	(get_RFID@ii),f
	
l7255:	
	movlw	(09h)
	subwf	(get_RFID@ii),w
	skipc
	goto	u1531
	goto	u1530
u1531:
	goto	l7203
u1530:
	line	81
	
l7257:	
;rfid125.c: 78: }
;rfid125.c: 80: }
;rfid125.c: 81: if(9==ii)
	movf	(get_RFID@ii),w
	xorlw	09h
	skipz
	goto	u1541
	goto	u1540
u1541:
	goto	l7261
u1540:
	line	83
	
l7259:	
;rfid125.c: 82: {
;rfid125.c: 83: flag_RFID_syn = 1;
	clrf	(get_RFID@flag_RFID_syn)
	incf	(get_RFID@flag_RFID_syn),f
	line	84
;rfid125.c: 84: break;
	goto	l7263
	line	47
	
l7261:	
	movlw	(040h)
	subwf	(get_RFID@i),w
	skipc
	goto	u1551
	goto	u1550
u1551:
	goto	l7197
u1550:
	line	88
	
l7263:	
;rfid125.c: 85: }
;rfid125.c: 86: }
;rfid125.c: 88: if(!flag_RFID_syn)
	movf	(get_RFID@flag_RFID_syn),f
	skipz
	goto	u1561
	goto	u1560
u1561:
	goto	l7269
u1560:
	goto	l7177
	line	92
	
l7269:	
;rfid125.c: 91: }
;rfid125.c: 92: for(ii=0;ii<55;ii++)
	clrf	(get_RFID@ii)
	line	94
	
l7275:	
;rfid125.c: 93: {
;rfid125.c: 94: i = ii/5;
	movlw	(05h)
	movwf	(?___lbdiv)
	movf	(get_RFID@ii),w
	fcall	___lbdiv
	movwf	(get_RFID@i)
	line	95
	
l7277:	
;rfid125.c: 95: timeOutVal=timerOut(flag_RFID_last,150);
	movlw	096h
	movwf	(?_timerOut)
	clrf	(?_timerOut+1)
	movf	(get_RFID@flag_RFID_last),w
	fcall	_timerOut
	movf	(1+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal+1)
	movf	(0+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal)
	line	96
	
l7279:	
;rfid125.c: 96: if(timeOutVal==0) return 0;
	movf	((get_RFID@timeOutVal+1)),w
	iorwf	((get_RFID@timeOutVal)),w
	skipz
	goto	u1571
	goto	u1570
u1571:
	goto	l7285
u1570:
	goto	l7177
	line	99
	
l7285:	
;rfid125.c: 98: if(0==flag_RFID_last && timeOutVal<=72 ||
;rfid125.c: 99: 1==flag_RFID_last && timeOutVal>72)
	movf	(get_RFID@flag_RFID_last),f
	skipz
	goto	u1581
	goto	u1580
u1581:
	goto	l7289
u1580:
	
l7287:	
	movlw	high(049h)
	subwf	(get_RFID@timeOutVal+1),w
	movlw	low(049h)
	skipnz
	subwf	(get_RFID@timeOutVal),w
	skipc
	goto	u1591
	goto	u1590
u1591:
	goto	l7293
u1590:
	
l7289:	
	decf	(get_RFID@flag_RFID_last),w
	skipz
	goto	u1601
	goto	u1600
u1601:
	goto	l7309
u1600:
	
l7291:	
	movlw	high(049h)
	subwf	(get_RFID@timeOutVal+1),w
	movlw	low(049h)
	skipnz
	subwf	(get_RFID@timeOutVal),w
	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l7309
u1610:
	line	101
	
l7293:	
;rfid125.c: 100: {
;rfid125.c: 101: if(!flag_RFID_last)
	movf	(get_RFID@flag_RFID_last),f
	skipz
	goto	u1621
	goto	u1620
u1621:
	goto	l7303
u1620:
	line	103
	
l7295:	
;rfid125.c: 102: {
;rfid125.c: 103: timeOutVal=timerOut(1,72);
	movlw	048h
	movwf	(?_timerOut)
	clrf	(?_timerOut+1)
	movlw	(01h)
	fcall	_timerOut
	movf	(1+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal+1)
	movf	(0+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal)
	line	104
	
l7297:	
;rfid125.c: 104: if(timeOutVal==0) return 0;
	movf	((get_RFID@timeOutVal+1)),w
	iorwf	((get_RFID@timeOutVal)),w
	skipz
	goto	u1631
	goto	u1630
u1631:
	goto	l7303
u1630:
	goto	l7177
	line	106
	
l7303:	
;rfid125.c: 105: }
;rfid125.c: 106: flag_RFID_last = 0;
	clrf	(get_RFID@flag_RFID_last)
	line	107
	
l7305:	
;rfid125.c: 107: RF_serial_55bits[i] <<= 1;
	movf	(get_RFID@i),w
	addlw	get_RFID@RF_serial_55bits&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrc
	rlf	indf,f
	line	108
	
l7307:	
;rfid125.c: 108: RF_serial_55bits[i] |= 0x01;
	movf	(get_RFID@i),w
	addlw	get_RFID@RF_serial_55bits&0ffh
	movwf	fsr0
	bsf	indf+(0/8),(0)&7
	line	109
;rfid125.c: 109: }
	goto	l7329
	line	112
	
l7309:	
;rfid125.c: 110: else
;rfid125.c: 111: if(0==flag_RFID_last && timeOutVal>72 ||
;rfid125.c: 112: 1==flag_RFID_last && timeOutVal<=72)
	movf	(get_RFID@flag_RFID_last),f
	skipz
	goto	u1641
	goto	u1640
u1641:
	goto	l7313
u1640:
	
l7311:	
	movlw	high(049h)
	subwf	(get_RFID@timeOutVal+1),w
	movlw	low(049h)
	skipnz
	subwf	(get_RFID@timeOutVal),w
	skipnc
	goto	u1651
	goto	u1650
u1651:
	goto	l7317
u1650:
	
l7313:	
	decf	(get_RFID@flag_RFID_last),w
	skipz
	goto	u1661
	goto	u1660
u1661:
	goto	l7329
u1660:
	
l7315:	
	movlw	high(049h)
	subwf	(get_RFID@timeOutVal+1),w
	movlw	low(049h)
	skipnz
	subwf	(get_RFID@timeOutVal),w
	skipnc
	goto	u1671
	goto	u1670
u1671:
	goto	l7329
u1670:
	line	114
	
l7317:	
;rfid125.c: 113: {
;rfid125.c: 114: if(flag_RFID_last)
	movf	(get_RFID@flag_RFID_last),w
	skipz
	goto	u1680
	goto	l2499
u1680:
	line	116
	
l7319:	
;rfid125.c: 115: {
;rfid125.c: 116: timeOutVal=timerOut(0,150);
	movlw	096h
	movwf	(?_timerOut)
	clrf	(?_timerOut+1)
	movlw	(0)
	fcall	_timerOut
	movf	(1+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal+1)
	movf	(0+(?_timerOut)),w
	movwf	(get_RFID@timeOutVal)
	line	117
	
l7321:	
;rfid125.c: 117: if(timeOutVal==0) return 0;
	movf	((get_RFID@timeOutVal+1)),w
	iorwf	((get_RFID@timeOutVal)),w
	skipz
	goto	u1691
	goto	u1690
u1691:
	goto	l2499
u1690:
	goto	l7177
	line	118
	
l2499:	
	line	119
;rfid125.c: 118: }
;rfid125.c: 119: flag_RFID_last = 1;
	clrf	(get_RFID@flag_RFID_last)
	incf	(get_RFID@flag_RFID_last),f
	line	120
	
l7327:	
;rfid125.c: 120: RF_serial_55bits[i] <<= 1;
	movf	(get_RFID@i),w
	addlw	get_RFID@RF_serial_55bits&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrc
	rlf	indf,f
	line	92
	
l7329:	
	incf	(get_RFID@ii),f
	
l7331:	
	movlw	(037h)
	subwf	(get_RFID@ii),w
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l7275
u1700:
	line	123
	
l7333:	
;rfid125.c: 121: }
;rfid125.c: 122: }
;rfid125.c: 123: if(55==ii)
	movf	(get_RFID@ii),w
	xorlw	037h
	skipz
	goto	u1711
	goto	u1710
u1711:
	goto	l7177
u1710:
	line	125
	
l7335:	
;rfid125.c: 124: {
;rfid125.c: 125: even_col = 0;
	clrf	(get_RFID@even_col)
	line	126
;rfid125.c: 126: for(ii=0;ii<10;ii++)
	clrf	(get_RFID@ii)
	line	128
	
l7341:	
;rfid125.c: 127: {
;rfid125.c: 128: even_row = (RF_serial_55bits[ii] & 0x01);
	movf	(get_RFID@ii),w
	addlw	get_RFID@RF_serial_55bits&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(get_RFID@even_row)
	
l7343:	
	movlw	(01h)
	andwf	(get_RFID@even_row),f
	line	129
	
l7345:	
;rfid125.c: 129: for(j=1;j<5;j++)
	clrf	(get_RFID@j)
	incf	(get_RFID@j),f
	line	131
	
l7351:	
;rfid125.c: 130: {
;rfid125.c: 131: even_row = even_row ^ ((RF_serial_55bits[ii]>>j) & 0x01);
	movf	(get_RFID@ii),w
	addlw	get_RFID@RF_serial_55bits&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_get_RFID+0)+0
	incf	(get_RFID@j),w
	goto	u1724
u1725:
	clrc
	rrf	(??_get_RFID+0)+0,f
u1724:
	addlw	-1
	skipz
	goto	u1725
	movf	0+(??_get_RFID+0)+0,w
	andlw	01h
	xorwf	(get_RFID@even_row),f
	line	129
	
l7353:	
	incf	(get_RFID@j),f
	
l7355:	
	movlw	(05h)
	subwf	(get_RFID@j),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l7351
u1730:
	
l2505:	
	line	133
;rfid125.c: 132: }
;rfid125.c: 133: if(even_row & 0x01)
	btfss	(get_RFID@even_row),(0)&7
	goto	u1741
	goto	u1740
u1741:
	goto	l7361
u1740:
	goto	l7177
	line	138
	
l7361:	
;rfid125.c: 136: }
;rfid125.c: 138: RF_serial_55bits[ii] <<= 3;
	movf	(get_RFID@ii),w
	addlw	get_RFID@RF_serial_55bits&0ffh
	movwf	fsr0
	rlf	indf,f
	rlf	indf,f
	rlf	indf,w
	andlw	0f8h
	movwf	indf
	line	140
;rfid125.c: 140: i = RF_serial_55bits[ii];
	movf	(get_RFID@ii),w
	addlw	get_RFID@RF_serial_55bits&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(get_RFID@i)
	line	141
	
l7363:	
;rfid125.c: 141: if( 0==ii%2 )
	btfsc	(get_RFID@ii),(0)&7
	goto	u1751
	goto	u1750
u1751:
	goto	l7367
u1750:
	line	143
	
l7365:	
;rfid125.c: 142: {
;rfid125.c: 143: keyID[ii/2] = (i & 0xF0);
	clrc
	rrf	(get_RFID@ii),w
	addlw	_keyID&0ffh
	movwf	fsr0
	movf	(get_RFID@i),w
	movwf	indf
	clrc
	rrf	(get_RFID@ii),w
	addlw	_keyID&0ffh
	movwf	fsr0
	movlw	(0F0h)
	andwf	indf,f
	line	144
;rfid125.c: 144: }
	goto	l7371
	line	147
	
l7367:	
;rfid125.c: 145: else
;rfid125.c: 146: {
;rfid125.c: 147: i >>=4;
swapf	(get_RFID@i),f
	movlw	15
	andwf	(get_RFID@i),f

	line	148
	
l7369:	
;rfid125.c: 148: keyID[ii/2] |= (i & 0x0F);
	clrc
	rrf	(get_RFID@ii),w
	addlw	_keyID&0ffh
	movwf	fsr0
	movf	(get_RFID@i),w
	andlw	0Fh
	iorwf	indf,f
	line	150
	
l7371:	
;rfid125.c: 149: }
;rfid125.c: 150: even_col ^= RF_serial_55bits[ii];
	movf	(get_RFID@ii),w
	addlw	get_RFID@RF_serial_55bits&0ffh
	movwf	fsr0
	movf	indf,w
	xorwf	(get_RFID@even_col),f
	line	126
	
l7373:	
	incf	(get_RFID@ii),f
	
l7375:	
	movlw	(0Ah)
	subwf	(get_RFID@ii),w
	skipc
	goto	u1761
	goto	u1760
u1761:
	goto	l7341
u1760:
	
l2503:	
	line	152
;rfid125.c: 151: }
;rfid125.c: 152: RF_serial_55bits[10] <<= 3;
	rlf	0+(get_RFID@RF_serial_55bits)+0Ah,f
	rlf	0+(get_RFID@RF_serial_55bits)+0Ah,f
	rlf	0+(get_RFID@RF_serial_55bits)+0Ah,w
	andlw	0f8h
	movwf	0+(get_RFID@RF_serial_55bits)+0Ah
	line	153
	
l7377:	
;rfid125.c: 153: keyID[0] =0x00;
	clrf	(_keyID)
	line	154
	
l7379:	
;rfid125.c: 154: if(((RF_serial_55bits[10] & 0xf0)==(even_col & 0xf0)) && (0==(RF_serial_55bits[10]&0x08)))
	movlw	(0F0h)
	andwf	(get_RFID@even_col),w
	movwf	(??_get_RFID+0)+0
	movf	0+(get_RFID@RF_serial_55bits)+0Ah,w
	andlw	0F0h
	xorwf	0+(??_get_RFID+0)+0,w
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l7177
u1770:
	
l7381:	
	btfsc	0+(get_RFID@RF_serial_55bits)+0Ah,(3)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l7177
u1780:
	line	157
	
l7383:	
;rfid125.c: 155: {
;rfid125.c: 157: return 1;
	movlw	(01h)
	line	161
	
l2455:	
	return
	opt stack 0
GLOBAL	__end_of_get_RFID
	__end_of_get_RFID:
;; =============== function _get_RFID ends ============

	signat	_get_RFID,89
	global	_eepromWriteByte
psect	text570,local,class=CODE,delta=2
global __ptext570
__ptext570:

;; *************** function _eepromWriteByte *****************
;; Defined at:
;;		line 26 in file "ms82_eeprom.c"
;; Parameters:    Size  Location     Type
;;  EEAddr          1    wreg     unsigned char 
;;  EEData          1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddr          1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         1       0       0
;;      Temps:          2       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eepromWriteBlock
;;		_main
;; This function uses a non-reentrant model
;;
psect	text570
	file	"ms82_eeprom.c"
	line	26
	global	__size_of_eepromWriteByte
	__size_of_eepromWriteByte	equ	__end_of_eepromWriteByte-_eepromWriteByte
	
_eepromWriteByte:	
	opt	stack 4
; Regs used in _eepromWriteByte: [wreg]
;eepromWriteByte@EEAddr stored from wreg
	movwf	(eepromWriteByte@EEAddr)
	line	27
	
l7157:	
;ms82_eeprom.c: 27: GIE = 0;
	bcf	(95/8),(95)&7
	line	30
;ms82_eeprom.c: 29: {
;ms82_eeprom.c: 30: while(GIE) asm("clrwdt");
	goto	l1597
	
l1598:	
# 30 "ms82_eeprom.c"
clrwdt ;#
psect	text570
	
l1597:	
	btfsc	(95/8),(95)&7
	goto	u1341
	goto	u1340
u1341:
	goto	l1598
u1340:
	line	31
	
l7159:	
;ms82_eeprom.c: 31: EEADR = EEAddr;
	movf	(eepromWriteByte@EEAddr),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	32
;ms82_eeprom.c: 32: EEDAT = EEData;
	movf	(eepromWriteByte@EEData),w
	movwf	(154)^080h	;volatile
	line	33
	
l7161:	
;ms82_eeprom.c: 33: EEIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(103/8),(103)&7
	line	34
;ms82_eeprom.c: 34: EECON1 = 0x34;
	movlw	(034h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	35
	
l7163:	
;ms82_eeprom.c: 35: WR = 1;
	bsf	(1256/8)^080h,(1256)&7
	line	36
;ms82_eeprom.c: 36: while(WR) asm("clrwdt");
	goto	l1600
	
l1601:	
# 36 "ms82_eeprom.c"
clrwdt ;#
psect	text570
	
l1600:	
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1256/8)^080h,(1256)&7
	goto	u1351
	goto	u1350
u1351:
	goto	l1601
u1350:
	line	37
	
l7165:	
;ms82_eeprom.c: 37: _delay((unsigned long)((2)*(8000000/4000.0)));
	opt asmopt_off
movlw	6
movwf	((??_eepromWriteByte+0)+0+1),f
	movlw	48
movwf	((??_eepromWriteByte+0)+0),f
u2437:
	decfsz	((??_eepromWriteByte+0)+0),f
	goto	u2437
	decfsz	((??_eepromWriteByte+0)+0+1),f
	goto	u2437
	clrwdt
opt asmopt_on

	line	39
	
l7167:	
;ms82_eeprom.c: 38: }
;ms82_eeprom.c: 39: GIE = 1;
	bsf	(95/8),(95)&7
	line	40
	
l1603:	
	return
	opt stack 0
GLOBAL	__end_of_eepromWriteByte
	__end_of_eepromWriteByte:
;; =============== function _eepromWriteByte ends ============

	signat	_eepromWriteByte,8312
	global	_eepromReadBlock
psect	text571,local,class=CODE,delta=2
global __ptext571
__ptext571:

;; *************** function _eepromReadBlock *****************
;; Defined at:
;;		line 18 in file "ms82_eeprom.c"
;; Parameters:    Size  Location     Type
;;  addStart        1    wreg     unsigned char 
;;  buff            1    4[COMMON] PTR unsigned char 
;;		 -> buffTag(25), 
;;  len             1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addStart        1    7[COMMON] unsigned char 
;;  i               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: FFEDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          1       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_eepromReadByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text571
	file	"ms82_eeprom.c"
	line	18
	global	__size_of_eepromReadBlock
	__size_of_eepromReadBlock	equ	__end_of_eepromReadBlock-_eepromReadBlock
	
_eepromReadBlock:	
	opt	stack 5
; Regs used in _eepromReadBlock: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;eepromReadBlock@addStart stored from wreg
	line	20
	movwf	(eepromReadBlock@addStart)
	
l7149:	
;ms82_eeprom.c: 19: unsigned char i;
;ms82_eeprom.c: 20: for(i=0;i<len;i++){
	clrf	(eepromReadBlock@i)
	goto	l7155
	line	21
	
l7151:	
;ms82_eeprom.c: 21: buff[i] = eepromReadByte(addStart+i);
	movf	(eepromReadBlock@i),w
	addwf	(eepromReadBlock@buff),w
	movwf	(??_eepromReadBlock+0)+0
	movf	0+(??_eepromReadBlock+0)+0,w
	movwf	fsr0
	movf	(eepromReadBlock@i),w
	addwf	(eepromReadBlock@addStart),w
	fcall	_eepromReadByte
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	20
	
l7153:	
	incf	(eepromReadBlock@i),f
	
l7155:	
	movf	(eepromReadBlock@len),w
	subwf	(eepromReadBlock@i),w
	skipc
	goto	u1331
	goto	u1330
u1331:
	goto	l7151
u1330:
	line	23
	
l1594:	
	return
	opt stack 0
GLOBAL	__end_of_eepromReadBlock
	__end_of_eepromReadBlock:
;; =============== function _eepromReadBlock ends ============

	signat	_eepromReadBlock,12408
	global	_sys_init
psect	text572,local,class=CODE,delta=2
global __ptext572
__ptext572:

;; *************** function _sys_init *****************
;; Defined at:
;;		line 3 in file "sysinit.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 20/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text572
	file	"sysinit.c"
	line	3
	global	__size_of_sys_init
	__size_of_sys_init	equ	__end_of_sys_init-_sys_init
	
_sys_init:	
	opt	stack 6
; Regs used in _sys_init: [wreg]
	line	21
	
l7145:	
;sysinit.c: 21: OSCCON = 0B01100001;
	movlw	(061h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	22
	
l7147:	
;sysinit.c: 22: _nop();
	nop
	line	28
;sysinit.c: 28: while(HTS==0);
	
l787:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1146/8)^080h,(1146)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l787
u1320:
	line	30
	
l790:	
	return
	opt stack 0
GLOBAL	__end_of_sys_init
	__end_of_sys_init:
;; =============== function _sys_init ends ============

	signat	_sys_init,88
	global	___lbdiv
psect	text573,local,class=CODE,delta=2
global __ptext573
__ptext573:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "D:\OneDrive\SmarRF\MCU\MC82\IDE\ORIGINIDE_V2.0.9\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    3[COMMON] unsigned char 
;;  quotient        1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/0
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_RFID
;;		_id_search
;; This function uses a non-reentrant model
;;
psect	text573
	file	"D:\OneDrive\SmarRF\MCU\MC82\IDE\ORIGINIDE_V2.0.9\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 5
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l7121:	
	clrf	(___lbdiv@quotient)
	line	10
	
l7123:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u1280
	goto	l7141
u1280:
	line	11
	
l7125:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l7129
	
l5747:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l7127:	
	incf	(___lbdiv@counter),f
	line	12
	
l7129:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1291
	goto	u1290
u1291:
	goto	l5747
u1290:
	line	16
	
l5749:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l7131:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l7137
u1300:
	line	19
	
l7133:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l7135:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l7137:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l7139:	
	decfsz	(___lbdiv@counter),f
	goto	u1311
	goto	u1310
u1311:
	goto	l5749
u1310:
	line	25
	
l7141:	
	movf	(___lbdiv@quotient),w
	line	26
	
l5752:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text574,local,class=CODE,delta=2
global __ptext574
__ptext574:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "D:\OneDrive\SmarRF\MCU\MC82\IDE\ORIGINIDE_V2.0.9\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    2[COMMON] unsigned int 
;;  multiplicand    2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/0
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_beep
;; This function uses a non-reentrant model
;;
psect	text574
	file	"D:\OneDrive\SmarRF\MCU\MC82\IDE\ORIGINIDE_V2.0.9\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l7105:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l7107:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1261
	goto	u1260
u1261:
	goto	l7111
u1260:
	line	8
	
l7109:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l7111:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l7113:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l7115:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1271
	goto	u1270
u1271:
	goto	l7107
u1270:
	line	12
	
l7117:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l5722:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text575,local,class=CODE,delta=2
global __ptext575
__ptext575:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "D:\OneDrive\SmarRF\MCU\MC82\IDE\ORIGINIDE_V2.0.9\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[COMMON] unsigned char 
;;  product         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/0
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_id_replate
;; This function uses a non-reentrant model
;;
psect	text575
	file	"D:\OneDrive\SmarRF\MCU\MC82\IDE\ORIGINIDE_V2.0.9\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l7089:	
	clrf	(___bmul@product)
	line	7
	
l7091:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1241
	goto	u1240
u1241:
	goto	l7095
u1240:
	line	8
	
l7093:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l7095:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l7097:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l7099:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u1251
	goto	u1250
u1251:
	goto	l7091
u1250:
	line	12
	
l7101:	
	movf	(___bmul@product),w
	line	13
	
l5716:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_setState
psect	text576,local,class=CODE,delta=2
global __ptext576
__ptext576:

;; *************** function _setState *****************
;; Defined at:
;;		line 106 in file "MAIN.C"
;; Parameters:    Size  Location     Type
;;  stt             1    wreg     unsigned char 
;;  _tOut           2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  stt             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 20/0
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text576
	file	"MAIN.C"
	line	106
	global	__size_of_setState
	__size_of_setState	equ	__end_of_setState-_setState
	
_setState:	
	opt	stack 6
; Regs used in _setState: [wreg+status,2]
;setState@stt stored from wreg
	line	108
	movwf	(setState@stt)
	
l7083:	
;MAIN.C: 108: mtState = stt;
	movf	(setState@stt),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_mtState)
	line	109
	
l7085:	
;MAIN.C: 109: timeTick =0;
	clrf	(_timeTick)
	clrf	(_timeTick+1)
	line	110
	
l7087:	
;MAIN.C: 110: timeOut = _tOut;
	movf	(setState@_tOut+1),w
	movwf	(_timeOut+1)
	movf	(setState@_tOut),w
	movwf	(_timeOut)
	line	111
	
l4140:	
	return
	opt stack 0
GLOBAL	__end_of_setState
	__end_of_setState:
;; =============== function _setState ends ============

	signat	_setState,8312
	global	_SET_EPWM_ON
psect	text577,local,class=CODE,delta=2
global __ptext577
__ptext577:

;; *************** function _SET_EPWM_ON *****************
;; Defined at:
;;		line 11 in file "ms82_pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 20/20
;;		On exit  : 20/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text577
	file	"ms82_pwm.c"
	line	11
	global	__size_of_SET_EPWM_ON
	__size_of_SET_EPWM_ON	equ	__end_of_SET_EPWM_ON-_SET_EPWM_ON
	
_SET_EPWM_ON:	
	opt	stack 6
; Regs used in _SET_EPWM_ON: [wreg+status,2]
	line	12
	
l7057:	
;ms82_pwm.c: 12: TRISC |= 0B00100000;
	bsf	(135)^080h+(5/8),(5)&7	;volatile
	line	13
	
l7059:	
;ms82_pwm.c: 13: T2CON0 = 0B00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	14
	
l7061:	
;ms82_pwm.c: 14: T2CON1 = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	15
	
l7063:	
;ms82_pwm.c: 15: PR2H = 0;
	clrf	(146)^080h	;volatile
	line	16
;ms82_pwm.c: 16: PR2L = 7;
	movlw	(07h)
	movwf	(145)^080h	;volatile
	line	17
	
l7065:	
;ms82_pwm.c: 17: P1ADTH = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(20)	;volatile
	line	18
	
l7067:	
;ms82_pwm.c: 18: P1ADTL = 4;
	movlw	(04h)
	movwf	(14)	;volatile
	line	20
	
l7069:	
;ms82_pwm.c: 20: P1OE = 0B00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(144)^080h	;volatile
	line	21
	
l7071:	
;ms82_pwm.c: 21: P1POL = 0B00000000;
	clrf	(153)^080h	;volatile
	line	22
	
l7073:	
;ms82_pwm.c: 22: P1CON = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(22)	;volatile
	line	24
	
l7075:	
;ms82_pwm.c: 24: TMR2H = 0;
	clrf	(19)	;volatile
	line	25
	
l7077:	
;ms82_pwm.c: 25: TMR2L = 0;
	clrf	(17)	;volatile
	line	26
	
l7079:	
;ms82_pwm.c: 26: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	27
	
l7081:	
;ms82_pwm.c: 27: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	28
;ms82_pwm.c: 28: while(TMR2IF==0) asm("clrwdt");
	goto	l3294
	
l3295:	
# 28 "ms82_pwm.c"
clrwdt ;#
psect	text577
	
l3294:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(97/8),(97)&7
	goto	u1231
	goto	u1230
u1231:
	goto	l3295
u1230:
	
l3296:	
	line	29
;ms82_pwm.c: 29: TRISC &= 0B11011111;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(5/8),(5)&7	;volatile
	line	30
	
l3297:	
	return
	opt stack 0
GLOBAL	__end_of_SET_EPWM_ON
	__end_of_SET_EPWM_ON:
;; =============== function _SET_EPWM_ON ends ============

	signat	_SET_EPWM_ON,88
	global	_timerOut
psect	text578,local,class=CODE,delta=2
global __ptext578
__ptext578:

;; *************** function _timerOut *****************
;; Defined at:
;;		line 6 in file "rfid125.c"
;; Parameters:    Size  Location     Type
;;  Logic           1    wreg     unsigned char 
;;  time            2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  Logic           1    4[COMMON] unsigned char 
;;  CurTimer        2    5[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/0
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_RFID
;; This function uses a non-reentrant model
;;
psect	text578
	file	"rfid125.c"
	line	6
	global	__size_of_timerOut
	__size_of_timerOut	equ	__end_of_timerOut-_timerOut
	
_timerOut:	
	opt	stack 5
; Regs used in _timerOut: [wreg+status,2]
;timerOut@Logic stored from wreg
	line	8
	movwf	(timerOut@Logic)
	
l7033:	
;rfid125.c: 7: unsigned int CurTimer;
;rfid125.c: 8: T0ON = 0;
	bcf	(251/8),(251)&7
	line	10
	
l7035:	
;rfid125.c: 10: TMR0 = 0;
	clrf	(1)	;volatile
	line	11
	
l7037:	
;rfid125.c: 11: T0IF = 0;
	bcf	(90/8),(90)&7
	line	12
	
l7039:	
;rfid125.c: 12: T0ON = 1;
	bsf	(251/8),(251)&7
	line	13
;rfid125.c: 13: while(RA5==Logic){
	goto	l7051
	line	14
	
l7041:	
;rfid125.c: 14: CurTimer= (0 <<8 )| TMR0;
	clrf	(timerOut@CurTimer)
	clrf	(timerOut@CurTimer+1)
	
l7043:	
	movf	(1),w	;volatile
	iorwf	(timerOut@CurTimer),f
	line	15
	
l7045:	
;rfid125.c: 15: if(CurTimer>time)
	movf	(timerOut@CurTimer+1),w
	subwf	(timerOut@time+1),w
	skipz
	goto	u1215
	movf	(timerOut@CurTimer),w
	subwf	(timerOut@time),w
u1215:
	skipnc
	goto	u1211
	goto	u1210
u1211:
	goto	l7051
u1210:
	line	16
	
l7047:	
;rfid125.c: 16: return 0;
	clrf	(?_timerOut)
	clrf	(?_timerOut+1)
	goto	l2449
	line	13
	
l7051:	
	movlw	0
	btfsc	(45/8),(45)&7
	movlw	1
	xorwf	(timerOut@Logic),w
	skipnz
	goto	u1221
	goto	u1220
u1221:
	goto	l7041
u1220:
	line	18
	
l7053:	
;rfid125.c: 17: }
;rfid125.c: 18: return CurTimer;
	movf	(timerOut@CurTimer+1),w
	movwf	(?_timerOut+1)
	movf	(timerOut@CurTimer),w
	movwf	(?_timerOut)
	line	19
	
l2449:	
	return
	opt stack 0
GLOBAL	__end_of_timerOut
	__end_of_timerOut:
;; =============== function _timerOut ends ============

	signat	_timerOut,8314
	global	_comArr
psect	text579,local,class=CODE,delta=2
global __ptext579
__ptext579:

;; *************** function _comArr *****************
;; Defined at:
;;		line 52 in file "ms82_eeprom.c"
;; Parameters:    Size  Location     Type
;;  arr1            1    wreg     PTR unsigned char 
;;		 -> keyID(5), 
;;  arr2            1    2[COMMON] PTR unsigned char 
;;		 -> buffTag(25), 
;;  len1            1    3[COMMON] unsigned char 
;;  len2            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  arr1            1    8[COMMON] PTR unsigned char 
;;		 -> keyID(5), 
;;  i               1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/0
;;		Unchanged: FFEDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         3       0       0
;;      Locals:         2       0       0
;;      Temps:          3       0       0
;;      Totals:         8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_id_search
;; This function uses a non-reentrant model
;;
psect	text579
	file	"ms82_eeprom.c"
	line	52
	global	__size_of_comArr
	__size_of_comArr	equ	__end_of_comArr-_comArr
	
_comArr:	
	opt	stack 5
; Regs used in _comArr: [wreg-fsr0h+status,2+status,0]
;comArr@arr1 stored from wreg
	line	55
	movwf	(comArr@arr1)
	
l7001:	
;ms82_eeprom.c: 53: unsigned char i;
;ms82_eeprom.c: 55: if(len1!=len2)
	movf	(comArr@len1),w
	xorwf	(comArr@len2),w
	skipnz
	goto	u1171
	goto	u1170
u1171:
	goto	l7009
u1170:
	line	56
	
l7003:	
;ms82_eeprom.c: 56: return 0;
	movlw	(0)
	goto	l1613
	line	58
	
l7009:	
;ms82_eeprom.c: 57: else{
;ms82_eeprom.c: 58: for(i=0;i<len1;i++){
	clrf	(comArr@i)
	goto	l7019
	line	59
	
l7011:	
;ms82_eeprom.c: 59: if(*(arr1+i) != *(arr2+i)){
	movf	(comArr@i),w
	addwf	(comArr@arr2),w
	movwf	(??_comArr+0)+0
	movf	0+(??_comArr+0)+0,w
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_comArr+1)+0
	movf	(comArr@i),w
	addwf	(comArr@arr1),w
	movwf	(??_comArr+2)+0
	movf	0+(??_comArr+2)+0,w
	movwf	fsr0
	movf	indf,w
	xorwf	(??_comArr+1)+0,w
	skipnz
	goto	u1181
	goto	u1180
u1181:
	goto	l7017
u1180:
	goto	l7003
	line	58
	
l7017:	
	incf	(comArr@i),f
	
l7019:	
	movf	(comArr@len1),w
	subwf	(comArr@i),w
	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l7011
u1190:
	line	63
	
l7021:	
;ms82_eeprom.c: 61: }
;ms82_eeprom.c: 62: }
;ms82_eeprom.c: 63: if(i==len1)
	movf	(comArr@i),w
	xorwf	(comArr@len1),w
	skipz
	goto	u1201
	goto	u1200
u1201:
	goto	l7003
u1200:
	line	64
	
l7023:	
;ms82_eeprom.c: 64: return 1;
	movlw	(01h)
	line	68
	
l1613:	
	return
	opt stack 0
GLOBAL	__end_of_comArr
	__end_of_comArr:
;; =============== function _comArr ends ============

	signat	_comArr,16505
	global	_eepromReadByte
psect	text580,local,class=CODE,delta=2
global __ptext580
__ptext580:

;; *************** function _eepromReadByte *****************
;; Defined at:
;;		line 7 in file "ms82_eeprom.c"
;; Parameters:    Size  Location     Type
;;  EEAddr          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddr          1    2[COMMON] unsigned char 
;;  ReEepromData    1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 20/20
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eepromReadBlock
;;		_main
;; This function uses a non-reentrant model
;;
psect	text580
	file	"ms82_eeprom.c"
	line	7
	global	__size_of_eepromReadByte
	__size_of_eepromReadByte	equ	__end_of_eepromReadByte-_eepromReadByte
	
_eepromReadByte:	
	opt	stack 5
; Regs used in _eepromReadByte: [wreg]
;eepromReadByte@EEAddr stored from wreg
	line	10
	movwf	(eepromReadByte@EEAddr)
	
l6993:	
;ms82_eeprom.c: 8: unsigned char ReEepromData;
;ms82_eeprom.c: 10: EEADR = EEAddr;
	movf	(eepromReadByte@EEAddr),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	11
	
l6995:	
;ms82_eeprom.c: 11: RD = 1;
	bsf	(1248/8)^080h,(1248)&7
	line	12
;ms82_eeprom.c: 12: ReEepromData = EEDAT;
	movf	(154)^080h,w	;volatile
	movwf	(eepromReadByte@ReEepromData)
	line	13
	
l6997:	
;ms82_eeprom.c: 13: RD = 0;
	bcf	(1248/8)^080h,(1248)&7
	line	14
;ms82_eeprom.c: 14: return ReEepromData;
	movf	(eepromReadByte@ReEepromData),w
	line	15
	
l1588:	
	return
	opt stack 0
GLOBAL	__end_of_eepromReadByte
	__end_of_eepromReadByte:
;; =============== function _eepromReadByte ends ============

	signat	_eepromReadByte,4217
	global	_int_init
psect	text581,local,class=CODE,delta=2
global __ptext581
__ptext581:

;; *************** function _int_init *****************
;; Defined at:
;;		line 67 in file "sysinit.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 20/20
;;		On exit  : 20/20
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text581
	file	"sysinit.c"
	line	67
	global	__size_of_int_init
	__size_of_int_init	equ	__end_of_int_init-_int_init
	
_int_init:	
	opt	stack 6
; Regs used in _int_init: [status,2]
	line	72
	
l6979:	
;sysinit.c: 72: INTCON = 0B00000000;
	clrf	(11)	;volatile
	line	73
;sysinit.c: 73: PIE1 = 0B00000000;
	clrf	(140)^080h	;volatile
	line	74
;sysinit.c: 74: PIR1 = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	87
	
l6981:	
;sysinit.c: 87: T0IF = 0;
	bcf	(90/8),(90)&7
	line	88
	
l6983:	
;sysinit.c: 88: T0IE = 0;
	bcf	(93/8),(93)&7
	line	92
	
l6985:	
;sysinit.c: 92: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	93
	
l6987:	
;sysinit.c: 93: TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	99
	
l6989:	
;sysinit.c: 99: PEIE = 0;
	bcf	(94/8),(94)&7
	line	101
	
l6991:	
;sysinit.c: 101: GIE = 1;
	bsf	(95/8),(95)&7
	line	102
	
l799:	
	return
	opt stack 0
GLOBAL	__end_of_int_init
	__end_of_int_init:
;; =============== function _int_init ends ============

	signat	_int_init,88
	global	_timer_init
psect	text582,local,class=CODE,delta=2
global __ptext582
__ptext582:

;; *************** function _timer_init *****************
;; Defined at:
;;		line 44 in file "sysinit.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 20/20
;;		On exit  : 20/20
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text582
	file	"sysinit.c"
	line	44
	global	__size_of_timer_init
	__size_of_timer_init	equ	__end_of_timer_init-_timer_init
	
_timer_init:	
	opt	stack 6
; Regs used in _timer_init: [wreg]
	line	46
	
l6977:	
;sysinit.c: 46: OPTION = 0B00000011;
	movlw	(03h)
	movwf	(129)^080h	;volatile
	line	64
	
l796:	
	return
	opt stack 0
GLOBAL	__end_of_timer_init
	__end_of_timer_init:
;; =============== function _timer_init ends ============

	signat	_timer_init,88
	global	_gpio_init
psect	text583,local,class=CODE,delta=2
global __ptext583
__ptext583:

;; *************** function _gpio_init *****************
;; Defined at:
;;		line 32 in file "sysinit.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 20/20
;;		On exit  : 20/20
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text583
	file	"sysinit.c"
	line	32
	global	__size_of_gpio_init
	__size_of_gpio_init	equ	__end_of_gpio_init-_gpio_init
	
_gpio_init:	
	opt	stack 6
; Regs used in _gpio_init: [wreg+status,2]
	line	34
	
l6967:	
;sysinit.c: 34: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	35
	
l6969:	
;sysinit.c: 35: TRISA = 0B01110011;
	movlw	(073h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	36
	
l6971:	
;sysinit.c: 36: WPUA = 0B10000000;
	movlw	(080h)
	movwf	(149)^080h	;volatile
	line	37
	
l6973:	
;sysinit.c: 37: PORTC = 0B00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(7)	;volatile
	line	38
	
l6975:	
;sysinit.c: 38: TRISC = 0B11111110;
	movlw	(0FEh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	line	39
;sysinit.c: 39: WPUC = 0B00000000;
	clrf	(147)^080h	;volatile
	line	41
	
l793:	
	return
	opt stack 0
GLOBAL	__end_of_gpio_init
	__end_of_gpio_init:
;; =============== function _gpio_init ends ============

	signat	_gpio_init,88
	global	_ISR
psect	text584,local,class=CODE,delta=2
global __ptext584
__ptext584:

;; *************** function _ISR *****************
;; Defined at:
;;		line 46 in file "MAIN.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text584
	file	"MAIN.C"
	line	46
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 3
; Regs used in _ISR: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	pclath,w
	movwf	(??_ISR+1)
	ljmp	_ISR
psect	text584
	line	103
	
i1l4137:	
	movf	(??_ISR+1),w
	movwf	pclath
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text585,local,class=CODE,delta=2
global __ptext585
__ptext585:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
