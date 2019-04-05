opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_I2C_Init
	FNCALL	_main,_USART_Init
	FNCALL	_main,_USART_WriteString
	FNCALL	_USART_WriteString,_USART_WriteChar
	FNCALL	_USART_Init,___aldiv
	FNROOT	_main
	FNCALL	_ISR,_I2C_Idle
	FNCALL	_ISR,_I2C_NACK
	FNCALL	_ISR,_I2C_Read
	FNCALL	_ISR,_I2C_Restart
	FNCALL	_ISR,_I2C_Start
	FNCALL	_ISR,_I2C_Stop
	FNCALL	_ISR,_I2C_Write
	FNCALL	_ISR,_USART_ReceiveChar
	FNCALL	_ISR,i1_USART_WriteChar
	FNCALL	_ISR,i1_USART_WriteString
	FNCALL	_USART_ReceiveChar,i1_USART_WriteString
	FNCALL	i1_USART_WriteString,i1_USART_WriteChar
	FNCALL	_I2C_Write,_I2C_Idle
	FNCALL	_I2C_Stop,_I2C_Idle
	FNCALL	_I2C_Start,_I2C_Idle
	FNCALL	_I2C_Restart,_I2C_Idle
	FNCALL	_I2C_Read,_I2C_Idle
	FNCALL	_I2C_NACK,_I2C_Idle
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_banco
	global	_entrada
	global	_posicao
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTC
_PORTC	set	0x7
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCONbits
_SSPCONbits	set	0x14
	global	_TXREG
_TXREG	set	0x19
	global	_OERR
_OERR	set	0xC1
	global	_PIE1bits
_PIE1bits	set	0x8C
	global	_SPBRG
_SPBRG	set	0x99
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPCON2bits
_SSPCON2bits	set	0x91
	global	_SSPSTATbits
_SSPSTATbits	set	0x94
	global	_TRISC
_TRISC	set	0x87
	global	_TXSTAbits
_TXSTAbits	set	0x98
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	10
	retlw	13
	retlw	32	;' '
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	76	;'L'
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	10
	retlw	13
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_9:	
	retlw	10
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	40	;'('
	retlw	101	;'e'
	retlw	44	;','
	retlw	32	;' '
	retlw	108	;'l'
	retlw	44	;','
	retlw	32	;' '
	retlw	119	;'w'
	retlw	44	;','
	retlw	32	;' '
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	114	;'r'
	retlw	41	;')'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	10
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	103	;'g'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	10
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	10
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	40	;'('
	retlw	48	;'0'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	32	;' '
	retlw	55	;'7'
	retlw	41	;')'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_10:	
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	90	;'Z'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	10
	retlw	0
psect	strings
	
STR_8:	
	retlw	10
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
STR_7	equ	STR_3+0
STR_11	equ	STR_9+1
STR_4	equ	STR_2+0
STR_6	equ	STR_2+0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"I2C.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_banco:
       ds      1

_entrada:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_posicao:
       ds      1

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_USART_WriteChar:	; 0 bytes @ 0x0
?_USART_WriteString:	; 0 bytes @ 0x0
?_I2C_Init:	; 0 bytes @ 0x0
?_I2C_Idle:	; 0 bytes @ 0x0
??_I2C_Idle:	; 0 bytes @ 0x0
?_I2C_Start:	; 0 bytes @ 0x0
?_I2C_Restart:	; 0 bytes @ 0x0
?_I2C_Write:	; 0 bytes @ 0x0
?_I2C_Stop:	; 0 bytes @ 0x0
?_I2C_NACK:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?i1_USART_WriteChar:	; 0 bytes @ 0x0
??i1_USART_WriteChar:	; 0 bytes @ 0x0
?i1_USART_WriteString:	; 0 bytes @ 0x0
?_USART_ReceiveChar:	; 1 bytes @ 0x0
?_I2C_Read:	; 1 bytes @ 0x0
	global	i1USART_WriteChar@USART_Data
i1USART_WriteChar@USART_Data:	; 1 bytes @ 0x0
	ds	1
??i1_USART_WriteString:	; 0 bytes @ 0x1
	ds	1
??_I2C_Start:	; 0 bytes @ 0x2
??_I2C_Restart:	; 0 bytes @ 0x2
??_I2C_Write:	; 0 bytes @ 0x2
??_I2C_Read:	; 0 bytes @ 0x2
??_I2C_Stop:	; 0 bytes @ 0x2
??_I2C_NACK:	; 0 bytes @ 0x2
	global	I2C_Write@Byte
I2C_Write@Byte:	; 1 bytes @ 0x2
	global	i1USART_WriteString@str
i1USART_WriteString@str:	; 1 bytes @ 0x2
	ds	1
??_USART_ReceiveChar:	; 0 bytes @ 0x3
	ds	1
	global	USART_ReceiveChar@USART_Data
USART_ReceiveChar@USART_Data:	; 1 bytes @ 0x4
	ds	1
??_ISR:	; 0 bytes @ 0x5
	ds	5
	global	ISR@j
ISR@j:	; 1 bytes @ 0xA
	ds	1
	global	ISR@i
ISR@i:	; 1 bytes @ 0xB
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_USART_WriteChar:	; 0 bytes @ 0x0
??_I2C_Init:	; 0 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	USART_WriteChar@USART_Data
USART_WriteChar@USART_Data:	; 1 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	1
??_USART_WriteString:	; 0 bytes @ 0x1
	ds	1
	global	USART_WriteString@str
USART_WriteString@str:	; 1 bytes @ 0x2
	ds	2
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	4
??___aldiv:	; 0 bytes @ 0x8
	ds	1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x9
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0xA
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xB
	ds	4
?_USART_Init:	; 0 bytes @ 0xF
	global	USART_Init@BaudRate
USART_Init@BaudRate:	; 4 bytes @ 0xF
	ds	4
	global	USART_Init@Mode
USART_Init@Mode:	; 2 bytes @ 0x13
	ds	2
??_USART_Init:	; 0 bytes @ 0x15
	ds	4
	global	USART_Init@BR
USART_Init@BR:	; 2 bytes @ 0x19
	ds	2
??_main:	; 0 bytes @ 0x1B
	ds	3
;!
;!Data Sizes:
;!    Strings     217
;!    Constant    0
;!    Data        0
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80     30      31
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    USART_WriteString@str	PTR const unsigned char  size(1) Largest target is 40
;!		 -> STR_11(CODE[37]), STR_10(CODE[24]), STR_9(CODE[38]), STR_8(CODE[21]), 
;!		 -> STR_7(CODE[37]), STR_6(CODE[27]), STR_5(CODE[30]), STR_4(CODE[27]), 
;!		 -> STR_3(CODE[37]), STR_2(CODE[27]), STR_1(CODE[40]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_USART_ReceiveChar
;!    _USART_ReceiveChar->i1_USART_WriteString
;!    i1_USART_WriteString->i1_USART_WriteChar
;!    _I2C_Write->_I2C_Idle
;!    _I2C_Stop->_I2C_Idle
;!    _I2C_Start->_I2C_Idle
;!    _I2C_Restart->_I2C_Idle
;!    _I2C_Read->_I2C_Idle
;!    _I2C_NACK->_I2C_Idle
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_USART_Init
;!    _USART_WriteString->_USART_WriteChar
;!    _USART_Init->___aldiv
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0    1216
;!                                             27 BANK0      3     3      0
;!                           _I2C_Init
;!                         _USART_Init
;!                  _USART_WriteString
;! ---------------------------------------------------------------------------------
;! (1) _USART_WriteString                                    2     2      0     397
;!                                              1 BANK0      2     2      0
;!                    _USART_WriteChar
;! ---------------------------------------------------------------------------------
;! (2) _USART_WriteChar                                      1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _USART_Init                                          12     6      6     819
;!                                             15 BANK0     12     6      6
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     556
;!                                              0 BANK0     15     7      8
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _ISR                                                  7     7      0     294
;!                                              5 COMMON     7     7      0
;!                           _I2C_Idle
;!                           _I2C_NACK
;!                           _I2C_Read
;!                        _I2C_Restart
;!                          _I2C_Start
;!                           _I2C_Stop
;!                          _I2C_Write
;!                  _USART_ReceiveChar
;!                  i1_USART_WriteChar
;!                i1_USART_WriteString
;! ---------------------------------------------------------------------------------
;! (4) _USART_ReceiveChar                                    2     2      0      91
;!                                              3 COMMON     2     2      0
;!                i1_USART_WriteString
;! ---------------------------------------------------------------------------------
;! (4) i1_USART_WriteString                                  2     2      0      67
;!                                              1 COMMON     2     2      0
;!                  i1_USART_WriteChar
;! ---------------------------------------------------------------------------------
;! (5) i1_USART_WriteChar                                    1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _I2C_Write                                            1     1      0      22
;!                                              2 COMMON     1     1      0
;!                           _I2C_Idle
;! ---------------------------------------------------------------------------------
;! (4) _I2C_Stop                                             0     0      0       0
;!                           _I2C_Idle
;! ---------------------------------------------------------------------------------
;! (4) _I2C_Start                                            0     0      0       0
;!                           _I2C_Idle
;! ---------------------------------------------------------------------------------
;! (4) _I2C_Restart                                          0     0      0       0
;!                           _I2C_Idle
;! ---------------------------------------------------------------------------------
;! (4) _I2C_Read                                             0     0      0       0
;!                           _I2C_Idle
;! ---------------------------------------------------------------------------------
;! (4) _I2C_NACK                                             0     0      0       0
;!                           _I2C_Idle
;! ---------------------------------------------------------------------------------
;! (5) _I2C_Idle                                             2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2C_Init
;!   _USART_Init
;!     ___aldiv
;!   _USART_WriteString
;!     _USART_WriteChar
;!
;! _ISR (ROOT)
;!   _I2C_Idle
;!   _I2C_NACK
;!     _I2C_Idle
;!   _I2C_Read
;!     _I2C_Idle
;!   _I2C_Restart
;!     _I2C_Idle
;!   _I2C_Start
;!     _I2C_Idle
;!   _I2C_Stop
;!     _I2C_Idle
;!   _I2C_Write
;!     _I2C_Idle
;!   _USART_ReceiveChar
;!     i1_USART_WriteString
;!       i1_USART_WriteChar
;!   i1_USART_WriteChar
;!   i1_USART_WriteString
;!     i1_USART_WriteChar
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      C       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      2D       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     1E      1F       5       38.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      2D      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 395 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byte            1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_I2C_Init
;;		_USART_Init
;;		_USART_WriteString
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	395
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	395
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	399
	
l1399:	
;I2C.c: 397: unsigned char byte;
;I2C.c: 399: TRISC = 0b10011000;
	movlw	(098h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	400
;I2C.c: 400: PORTC = 0b11011000;
	movlw	(0D8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	402
	
l1401:	
;I2C.c: 402: I2C_Init();
	fcall	_I2C_Init
	line	403
	
l1403:	
;I2C.c: 403: USART_Init(19200,1);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USART_Init@BaudRate+3)
	movlw	0
	movwf	(USART_Init@BaudRate+2)
	movlw	04Bh
	movwf	(USART_Init@BaudRate+1)
	movlw	0
	movwf	(USART_Init@BaudRate)

	movlw	low(01h)
	movwf	(USART_Init@Mode)
	movlw	high(01h)
	movwf	((USART_Init@Mode))+1
	fcall	_USART_Init
	line	405
	
l1405:	
;I2C.c: 405: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	406
	
l1407:	
;I2C.c: 406: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	408
	
l1409:	
;I2C.c: 408: USART_WriteString("INICIALIZANDO O PIC...\n");
	movlw	((STR_10)-__stringbase)&0ffh
	fcall	_USART_WriteString
	line	409
	
l1411:	
;I2C.c: 409: USART_WriteString("Informe um comando (e, l, w, d, r): ");
	movlw	((STR_11)-__stringbase)&0ffh
	fcall	_USART_WriteString
	line	411
;I2C.c: 411: _delay((unsigned long)((1000)*(18432000/4000.0)));
	opt asmopt_off
movlw  24
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	97
movwf	((??_main+0)+0+1),f
	movlw	110
movwf	((??_main+0)+0),f
u837:
	decfsz	((??_main+0)+0),f
	goto	u837
	decfsz	((??_main+0)+0+1),f
	goto	u837
	decfsz	((??_main+0)+0+2),f
	goto	u837
	nop
opt asmopt_on

	line	413
;I2C.c: 413: while(1)
	
l153:	
	line	415
;I2C.c: 414: {
;I2C.c: 415: _delay((unsigned long)((2000)*(18432000/4000.0)));
	opt asmopt_off
movlw  47
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	193
movwf	((??_main+0)+0+1),f
	movlw	224
movwf	((??_main+0)+0),f
u847:
	decfsz	((??_main+0)+0),f
	goto	u847
	decfsz	((??_main+0)+0+1),f
	goto	u847
	decfsz	((??_main+0)+0+2),f
	goto	u847
	nop2
opt asmopt_on

	goto	l153
	line	416
	
l154:	
	line	413
	goto	l153
	
l155:	
	line	417
	
l156:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_USART_WriteString

;; *************** function _USART_WriteString *****************
;; Defined at:
;;		line 62 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_11(37), STR_10(24), STR_9(38), STR_8(21), 
;;		 -> STR_7(37), STR_6(27), STR_5(30), STR_4(27), 
;;		 -> STR_3(37), STR_2(27), STR_1(40), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_11(37), STR_10(24), STR_9(38), STR_8(21), 
;;		 -> STR_7(37), STR_6(27), STR_5(30), STR_4(27), 
;;		 -> STR_3(37), STR_2(27), STR_1(40), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USART_WriteChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	62
global __ptext1
__ptext1:	;psect for function _USART_WriteString
psect	text1
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	62
	global	__size_of_USART_WriteString
	__size_of_USART_WriteString	equ	__end_of_USART_WriteString-_USART_WriteString
	
_USART_WriteString:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_WriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;USART_WriteString@str stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USART_WriteString@str)
	line	65
	
l1121:	
;I2C.c: 65: while(*str != '\0')
	goto	l1127
	
l57:	
	line	68
	
l1123:	
;I2C.c: 66: {
;I2C.c: 68: USART_WriteChar(*str);
	movf	(USART_WriteString@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_USART_WriteChar
	line	69
	
l1125:	
;I2C.c: 69: str++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USART_WriteString+0)+0
	movf	(??_USART_WriteString+0)+0,w
	addwf	(USART_WriteString@str),f
	goto	l1127
	line	70
	
l56:	
	line	65
	
l1127:	
	movf	(USART_WriteString@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u591
	goto	u590
u591:
	goto	l1123
u590:
	goto	l59
	
l58:	
	line	71
	
l59:	
	return
	opt stack 0
GLOBAL	__end_of_USART_WriteString
	__end_of_USART_WriteString:
	signat	_USART_WriteString,4216
	global	_USART_WriteChar

;; *************** function _USART_WriteChar *****************
;; Defined at:
;;		line 56 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;  USART_Data      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  USART_Data      1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USART_WriteString
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	56
global __ptext2
__ptext2:	;psect for function _USART_WriteChar
psect	text2
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	56
	global	__size_of_USART_WriteChar
	__size_of_USART_WriteChar	equ	__end_of_USART_WriteChar-_USART_WriteChar
	
_USART_WriteChar:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_WriteChar: [wreg]
;USART_WriteChar@USART_Data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USART_WriteChar@USART_Data)
	line	58
	
l1019:	
;I2C.c: 58: while(!PIR1bits.TXIF);
	goto	l50
	
l51:	
	
l50:	
	btfss	(12),4	;volatile
	goto	u431
	goto	u430
u431:
	goto	l50
u430:
	goto	l1021
	
l52:	
	line	59
	
l1021:	
;I2C.c: 59: TXREG = USART_Data;
	movf	(USART_WriteChar@USART_Data),w
	movwf	(25)	;volatile
	line	60
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_USART_WriteChar
	__end_of_USART_WriteChar:
	signat	_USART_WriteChar,4216
	global	_USART_Init

;; *************** function _USART_Init *****************
;; Defined at:
;;		line 16 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;  BaudRate        4   15[BANK0 ] long 
;;  Mode            2   19[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  BR              2   25[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	16
global __ptext3
__ptext3:	;psect for function _USART_Init
psect	text3
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	16
	global	__size_of_USART_Init
	__size_of_USART_Init	equ	__end_of_USART_Init-_USART_Init
	
_USART_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l1075:	
;I2C.c: 18: int BR = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(USART_Init@BR)
	clrf	(USART_Init@BR+1)
	line	21
	
l1077:	
;I2C.c: 21: if (Mode == 0)
	movf	((USART_Init@Mode+1)),w
	iorwf	((USART_Init@Mode)),w
	skipz
	goto	u561
	goto	u560
u561:
	goto	l1083
u560:
	line	23
	
l1079:	
;I2C.c: 22: {
;I2C.c: 23: BR = (18432000 / (64 * BaudRate)) - 1;
	movf	(USART_Init@BaudRate),w
	movwf	(??_USART_Init+0)+0
	movf	(USART_Init@BaudRate+1),w
	movwf	((??_USART_Init+0)+0+1)
	movf	(USART_Init@BaudRate+2),w
	movwf	((??_USART_Init+0)+0+2)
	movf	(USART_Init@BaudRate+3),w
	movwf	((??_USART_Init+0)+0+3)
	movlw	06h
u575:
	clrc
	rlf	(??_USART_Init+0)+0,f
	rlf	(??_USART_Init+0)+1,f
	rlf	(??_USART_Init+0)+2,f
	rlf	(??_USART_Init+0)+3,f
u570:
	addlw	-1
	skipz
	goto	u575
	movf	3+(??_USART_Init+0)+0,w
	movwf	(___aldiv@divisor+3)
	movf	2+(??_USART_Init+0)+0,w
	movwf	(___aldiv@divisor+2)
	movf	1+(??_USART_Init+0)+0,w
	movwf	(___aldiv@divisor+1)
	movf	0+(??_USART_Init+0)+0,w
	movwf	(___aldiv@divisor)

	movlw	01h
	movwf	(___aldiv@dividend+3)
	movlw	019h
	movwf	(___aldiv@dividend+2)
	movlw	040h
	movwf	(___aldiv@dividend+1)
	movlw	0
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___aldiv)))),w
	addlw	low(-1)
	movwf	(USART_Init@BR)
	movf	1+(((0+(?___aldiv)))),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(USART_Init@BR)
	line	24
	
l1081:	
;I2C.c: 24: SPBRG = BR;
	movf	(USART_Init@BR),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	25
;I2C.c: 25: }
	goto	l1087
	line	26
	
l45:	
	line	28
	
l1083:	
;I2C.c: 26: else
;I2C.c: 27: {
;I2C.c: 28: BR = (18432000 / (16 * BaudRate)) - 1;
	bcf	status, 5	;RP0=0, select bank0
	movf	(USART_Init@BaudRate),w
	movwf	(??_USART_Init+0)+0
	movf	(USART_Init@BaudRate+1),w
	movwf	((??_USART_Init+0)+0+1)
	movf	(USART_Init@BaudRate+2),w
	movwf	((??_USART_Init+0)+0+2)
	movf	(USART_Init@BaudRate+3),w
	movwf	((??_USART_Init+0)+0+3)
	movlw	04h
u585:
	clrc
	rlf	(??_USART_Init+0)+0,f
	rlf	(??_USART_Init+0)+1,f
	rlf	(??_USART_Init+0)+2,f
	rlf	(??_USART_Init+0)+3,f
u580:
	addlw	-1
	skipz
	goto	u585
	movf	3+(??_USART_Init+0)+0,w
	movwf	(___aldiv@divisor+3)
	movf	2+(??_USART_Init+0)+0,w
	movwf	(___aldiv@divisor+2)
	movf	1+(??_USART_Init+0)+0,w
	movwf	(___aldiv@divisor+1)
	movf	0+(??_USART_Init+0)+0,w
	movwf	(___aldiv@divisor)

	movlw	01h
	movwf	(___aldiv@dividend+3)
	movlw	019h
	movwf	(___aldiv@dividend+2)
	movlw	040h
	movwf	(___aldiv@dividend+1)
	movlw	0
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___aldiv)))),w
	addlw	low(-1)
	movwf	(USART_Init@BR)
	movf	1+(((0+(?___aldiv)))),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(USART_Init@BR)
	line	29
	
l1085:	
;I2C.c: 29: SPBRG = BR;
	movf	(USART_Init@BR),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	goto	l1087
	line	30
	
l46:	
	line	33
	
l1087:	
;I2C.c: 30: }
;I2C.c: 33: TXSTAbits.CSRC = 1;
	bsf	(152)^080h,7	;volatile
	line	34
	
l1089:	
;I2C.c: 34: TXSTAbits.TX9 = 0;
	bcf	(152)^080h,6	;volatile
	line	35
	
l1091:	
;I2C.c: 35: TXSTAbits.TXEN = 1;
	bsf	(152)^080h,5	;volatile
	line	36
	
l1093:	
;I2C.c: 36: TXSTAbits.SYNC = 0;
	bcf	(152)^080h,4	;volatile
	line	37
	
l1095:	
;I2C.c: 37: TXSTAbits.BRGH = Mode;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(USART_Init@Mode),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	skipz
	bsf	(152)^080h,2	;volatile
	skipnz
	bcf	(152)^080h,2	;volatile
	line	38
	
l1097:	
;I2C.c: 38: TXSTAbits.TRMT = 1;
	bsf	(152)^080h,1	;volatile
	line	39
	
l1099:	
;I2C.c: 39: TXSTAbits.TX9D = 0;
	bcf	(152)^080h,0	;volatile
	line	42
	
l1101:	
;I2C.c: 42: RCSTAbits.SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	43
	
l1103:	
;I2C.c: 43: RCSTAbits.RX9 = 0;
	bcf	(24),6	;volatile
	line	44
	
l1105:	
;I2C.c: 44: RCSTAbits.SREN = 0;
	bcf	(24),5	;volatile
	line	45
	
l1107:	
;I2C.c: 45: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	46
	
l1109:	
;I2C.c: 46: RCSTAbits.ADDEN = 0;
	bcf	(24),3	;volatile
	line	47
	
l1111:	
;I2C.c: 47: RCSTAbits.FERR = 0;
	bcf	(24),2	;volatile
	line	48
	
l1113:	
;I2C.c: 48: RCSTAbits.OERR = 0;
	bcf	(24),1	;volatile
	line	49
	
l1115:	
;I2C.c: 49: RCSTAbits.RX9D = 0;
	bcf	(24),0	;volatile
	line	52
	
l1117:	
;I2C.c: 52: PIE1bits.RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,5	;volatile
	line	53
	
l1119:	
;I2C.c: 53: PIR1bits.RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),5	;volatile
	line	54
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_USART_Init
	__end_of_USART_Init:
	signat	_USART_Init,8312
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] long 
;;  dividend        4    4[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   11[BANK0 ] long 
;;  sign            1   10[BANK0 ] unsigned char 
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USART_Init
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___aldiv
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	14
	
l1027:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	15
	
l1029:	
	btfss	(___aldiv@divisor+3),7
	goto	u451
	goto	u450
u451:
	goto	l295
u450:
	line	16
	
l1031:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	17
	clrf	(___aldiv@sign)
	incf	(___aldiv@sign),f
	line	18
	
l295:	
	line	19
	btfss	(___aldiv@dividend+3),7
	goto	u461
	goto	u460
u461:
	goto	l1037
u460:
	line	20
	
l1033:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	21
	
l1035:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	l1037
	line	22
	
l296:	
	line	23
	
l1037:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	24
	
l1039:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u471
	goto	u470
u471:
	goto	l1059
u470:
	line	25
	
l1041:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	26
	goto	l1045
	
l299:	
	line	27
	
l1043:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u485:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u485
	line	28
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	l1045
	line	29
	
l298:	
	line	26
	
l1045:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u491
	goto	u490
u491:
	goto	l1043
u490:
	goto	l1047
	
l300:	
	goto	l1047
	line	30
	
l301:	
	line	31
	
l1047:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u505:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u505
	line	32
	
l1049:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u515
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u515
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u515
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u515:
	skipc
	goto	u511
	goto	u510
u511:
	goto	l1055
u510:
	line	33
	
l1051:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	34
	
l1053:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	l1055
	line	35
	
l302:	
	line	36
	
l1055:	
	movlw	01h
u525:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u525

	line	37
	
l1057:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u531
	goto	u530
u531:
	goto	l1047
u530:
	goto	l1059
	
l303:	
	goto	l1059
	line	38
	
l297:	
	line	39
	
l1059:	
	movf	(___aldiv@sign),w
	skipz
	goto	u540
	goto	l1063
u540:
	line	40
	
l1061:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	goto	l1063
	
l304:	
	line	41
	
l1063:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	l305
	
l1065:	
	line	42
	
l305:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_I2C_Init

;; *************** function _I2C_Init *****************
;; Defined at:
;;		line 94 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	94
global __ptext5
__ptext5:	;psect for function _I2C_Init
psect	text5
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	94
	global	__size_of_I2C_Init
	__size_of_I2C_Init	equ	__end_of_I2C_Init-_I2C_Init
	
_I2C_Init:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_Init: [wreg]
	line	97
	
l1149:	
;I2C.c: 97: SSPCON2bits.GCEN = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(145)^080h,7	;volatile
	line	98
;I2C.c: 98: SSPCON2bits.ACKSTAT = 0;
	bcf	(145)^080h,6	;volatile
	line	99
;I2C.c: 99: SSPCON2bits.ACKDT = 0;
	bcf	(145)^080h,5	;volatile
	line	100
;I2C.c: 100: SSPCON2bits.ACKEN = 0;
	bcf	(145)^080h,4	;volatile
	line	101
;I2C.c: 101: SSPCON2bits.RCEN = 0;
	bcf	(145)^080h,3	;volatile
	line	102
;I2C.c: 102: SSPCON2bits.PEN = 0;
	bcf	(145)^080h,2	;volatile
	line	103
;I2C.c: 103: SSPCON2bits.RSEN = 0;
	bcf	(145)^080h,1	;volatile
	line	104
;I2C.c: 104: SSPCON2bits.SEN = 0;
	bcf	(145)^080h,0	;volatile
	line	107
	
l1151:	
;I2C.c: 107: SSPADD = 10;
	movlw	(0Ah)
	movwf	(147)^080h	;volatile
	line	109
	
l1153:	
;I2C.c: 109: SSPSTATbits.SMP = 1;
	bsf	(148)^080h,7	;volatile
	line	110
	
l1155:	
;I2C.c: 110: SSPSTATbits.CKE = 0;
	bcf	(148)^080h,6	;volatile
	line	111
	
l1157:	
;I2C.c: 111: SSPSTATbits.D_A = 0;
	bcf	(148)^080h,5	;volatile
	line	112
	
l1159:	
;I2C.c: 112: SSPSTATbits.P = 0;
	bcf	(148)^080h,4	;volatile
	line	113
	
l1161:	
;I2C.c: 113: SSPSTATbits.S = 0;
	bcf	(148)^080h,3	;volatile
	line	114
	
l1163:	
;I2C.c: 114: SSPSTATbits.R_W = 0;
	bcf	(148)^080h,2	;volatile
	line	115
	
l1165:	
;I2C.c: 115: SSPSTATbits.UA = 0;
	bcf	(148)^080h,1	;volatile
	line	116
	
l1167:	
;I2C.c: 116: SSPSTATbits.BF = 0;
	bcf	(148)^080h,0	;volatile
	line	118
	
l1169:	
;I2C.c: 118: SSPCONbits.WCOL = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(20),7	;volatile
	line	119
	
l1171:	
;I2C.c: 119: SSPCONbits.SSPOV = 0;
	bcf	(20),6	;volatile
	line	120
	
l1173:	
;I2C.c: 120: SSPCONbits.SSPEN = 1;
	bsf	(20),5	;volatile
	line	121
	
l1175:	
;I2C.c: 121: SSPCONbits.CKP = 0;
	bcf	(20),4	;volatile
	line	122
	
l1177:	
;I2C.c: 122: SSPCONbits.SSPM3 = 1;
	bsf	(20),3	;volatile
	line	123
	
l1179:	
;I2C.c: 123: SSPCONbits.SSPM2 = 0;
	bcf	(20),2	;volatile
	line	124
	
l1181:	
;I2C.c: 124: SSPCONbits.SSPM1 = 0;
	bcf	(20),1	;volatile
	line	125
	
l1183:	
;I2C.c: 125: SSPCONbits.SSPM0 = 0;
	bcf	(20),0	;volatile
	line	126
	
l67:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Init
	__end_of_I2C_Init:
	signat	_I2C_Init,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 192 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   11[COMMON] unsigned char 
;;  j               1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_Idle
;;		_I2C_NACK
;;		_I2C_Read
;;		_I2C_Restart
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Write
;;		_USART_ReceiveChar
;;		i1_USART_WriteChar
;;		i1_USART_WriteString
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	192
global __ptext6
__ptext6:	;psect for function _ISR
psect	text6
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	192
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text6
	line	195
	
i1l1221:	
;I2C.c: 195: if (PIR1bits.RCIF == 1)
	btfss	(12),5	;volatile
	goto	u66_21
	goto	u66_20
u66_21:
	goto	i1l150
u66_20:
	line	198
	
i1l1223:	
;I2C.c: 196: {
;I2C.c: 198: entrada = USART_ReceiveChar();
	fcall	_USART_ReceiveChar
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_entrada)
	line	199
	
i1l1225:	
;I2C.c: 199: USART_WriteChar(entrada);
	movf	(_entrada),w
	fcall	i1_USART_WriteChar
	line	202
	
i1l1227:	
;I2C.c: 202: if(entrada == 'e'){
	movf	(_entrada),w
	xorlw	065h
	skipz
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l1259
u67_20:
	line	204
	
i1l1229:	
;I2C.c: 204: USART_WriteString("\nInforme o banco (0 - 7): ");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	i1_USART_WriteString
	line	205
;I2C.c: 205: banco = USART_ReceiveChar();
	fcall	_USART_ReceiveChar
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_banco)
	line	206
	
i1l1231:	
;I2C.c: 206: USART_WriteChar(banco);
	movf	(_banco),w
	fcall	i1_USART_WriteChar
	line	208
	
i1l1233:	
;I2C.c: 208: posicao = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_posicao)
	line	211
	
i1l1235:	
;I2C.c: 211: USART_WriteString("\nInforme os dados a serem gravados: ");
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	i1_USART_WriteString
	goto	i1l1237
	line	212
;I2C.c: 212: while(1){
	
i1l114:	
	line	214
	
i1l1237:	
;I2C.c: 214: entrada = USART_ReceiveChar();
	fcall	_USART_ReceiveChar
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_entrada)
	line	215
	
i1l1239:	
;I2C.c: 215: USART_WriteChar(entrada);
	movf	(_entrada),w
	fcall	i1_USART_WriteChar
	line	218
	
i1l1241:	
;I2C.c: 218: if(entrada == '\n'){
	movf	(_entrada),w
	xorlw	0Ah
	skipz
	goto	u68_21
	goto	u68_20
u68_21:
	goto	i1l1245
u68_20:
	goto	i1l1259
	line	219
	
i1l1243:	
;I2C.c: 219: break;
	goto	i1l1259
	line	220
	
i1l115:	
	line	223
	
i1l1245:	
;I2C.c: 220: }
;I2C.c: 223: I2C_Idle();
	fcall	_I2C_Idle
	line	224
;I2C.c: 224: I2C_Start();
	fcall	_I2C_Start
	line	225
;I2C.c: 225: I2C_Write(160+(banco<<1));
	movf	(_banco),w
	movwf	(??_ISR+0)+0
	addwf	(??_ISR+0)+0,w
	addlw	0A0h
	fcall	_I2C_Write
	line	226
;I2C.c: 226: I2C_Write(posicao);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_posicao),w
	fcall	_I2C_Write
	line	227
;I2C.c: 227: I2C_Write(entrada);
	movf	(_entrada),w
	fcall	_I2C_Write
	line	228
;I2C.c: 228: I2C_Idle();
	fcall	_I2C_Idle
	line	229
;I2C.c: 229: I2C_Stop();
	fcall	_I2C_Stop
	line	232
	
i1l1247:	
;I2C.c: 232: if(posicao == 255){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_posicao),w
	xorlw	0FFh
	skipz
	goto	u69_21
	goto	u69_20
u69_21:
	goto	i1l1257
u69_20:
	line	233
	
i1l1249:	
;I2C.c: 233: posicao = 0;
	clrf	(_posicao)
	line	235
	
i1l1251:	
;I2C.c: 235: if(banco == 7){
	movf	(_banco),w
	xorlw	07h
	skipz
	goto	u70_21
	goto	u70_20
u70_21:
	goto	i1l1255
u70_20:
	line	236
	
i1l1253:	
;I2C.c: 236: banco = 0;
	clrf	(_banco)
	line	237
;I2C.c: 237: }
	goto	i1l1237
	line	238
	
i1l118:	
	line	239
	
i1l1255:	
;I2C.c: 238: else{
;I2C.c: 239: banco++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_banco),f
	goto	i1l1237
	line	240
	
i1l119:	
	line	241
;I2C.c: 240: }
;I2C.c: 241: }
	goto	i1l1237
	line	242
	
i1l117:	
	line	243
	
i1l1257:	
;I2C.c: 242: else{
;I2C.c: 243: posicao++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_posicao),f
	goto	i1l1237
	line	244
	
i1l120:	
	goto	i1l1237
	line	245
	
i1l121:	
	line	212
	goto	i1l1237
	
i1l116:	
	goto	i1l1259
	line	246
	
i1l113:	
	line	249
	
i1l1259:	
;I2C.c: 244: }
;I2C.c: 245: }
;I2C.c: 246: }
;I2C.c: 249: if(entrada == 'l'){
	movf	(_entrada),w
	xorlw	06Ch
	skipz
	goto	u71_21
	goto	u71_20
u71_21:
	goto	i1l1299
u71_20:
	line	251
	
i1l1261:	
;I2C.c: 251: USART_WriteString("\nInforme o banco (0 - 7): ");
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	i1_USART_WriteString
	line	252
;I2C.c: 252: banco = USART_ReceiveChar();
	fcall	_USART_ReceiveChar
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_banco)
	line	253
	
i1l1263:	
;I2C.c: 253: USART_WriteChar(banco);
	movf	(_banco),w
	fcall	i1_USART_WriteChar
	line	255
	
i1l1265:	
;I2C.c: 255: posicao = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_posicao)
	line	258
	
i1l1267:	
;I2C.c: 258: USART_WriteString("\nDados encontrados no banco: ");
	movlw	((STR_5)-__stringbase)&0ffh
	fcall	i1_USART_WriteString
	goto	i1l1269
	line	259
;I2C.c: 259: while(1){
	
i1l123:	
	line	260
	
i1l1269:	
;I2C.c: 260: I2C_Idle();
	fcall	_I2C_Idle
	line	261
	
i1l1271:	
;I2C.c: 261: I2C_Start();
	fcall	_I2C_Start
	line	262
	
i1l1273:	
;I2C.c: 262: I2C_Write(0xA0);
	movlw	(0A0h)
	fcall	_I2C_Write
	line	263
	
i1l1275:	
;I2C.c: 263: I2C_Write(0x00);
	movlw	(0)
	fcall	_I2C_Write
	line	265
	
i1l1277:	
;I2C.c: 265: I2C_Restart();
	fcall	_I2C_Restart
	line	267
	
i1l1279:	
;I2C.c: 267: I2C_Write(0xA1);
	movlw	(0A1h)
	fcall	_I2C_Write
	line	268
	
i1l1281:	
;I2C.c: 268: entrada = I2C_Read();
	fcall	_I2C_Read
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_entrada)
	line	269
	
i1l1283:	
;I2C.c: 269: I2C_NACK();
	fcall	_I2C_NACK
	line	270
	
i1l1285:	
;I2C.c: 270: I2C_Idle();
	fcall	_I2C_Idle
	line	271
	
i1l1287:	
;I2C.c: 271: I2C_Stop();
	fcall	_I2C_Stop
	line	273
	
i1l1289:	
;I2C.c: 273: USART_WriteChar(entrada);
	movf	(_entrada),w
	fcall	i1_USART_WriteChar
	line	275
	
i1l1291:	
;I2C.c: 275: if(posicao == 255){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_posicao),w
	xorlw	0FFh
	skipz
	goto	u72_21
	goto	u72_20
u72_21:
	goto	i1l1297
u72_20:
	goto	i1l1299
	line	276
	
i1l1293:	
;I2C.c: 276: break;
	goto	i1l1299
	line	277
	
i1l1295:	
;I2C.c: 277: }
	goto	i1l1269
	line	278
	
i1l124:	
	line	279
	
i1l1297:	
;I2C.c: 278: else{
;I2C.c: 279: posicao++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_posicao),f
	goto	i1l1269
	line	280
	
i1l126:	
	goto	i1l1269
	line	281
	
i1l127:	
	line	259
	goto	i1l1269
	
i1l125:	
	goto	i1l1299
	line	282
	
i1l122:	
	line	285
	
i1l1299:	
;I2C.c: 280: }
;I2C.c: 281: }
;I2C.c: 282: }
;I2C.c: 285: if(entrada == 'w'){
	movf	(_entrada),w
	xorlw	077h
	skipz
	goto	u73_21
	goto	u73_20
u73_21:
	goto	i1l1331
u73_20:
	line	287
	
i1l1301:	
;I2C.c: 287: USART_WriteString("\nInforme o banco (0 - 7): ");
	movlw	((STR_6)-__stringbase)&0ffh
	fcall	i1_USART_WriteString
	line	288
;I2C.c: 288: banco = USART_ReceiveChar();
	fcall	_USART_ReceiveChar
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_banco)
	line	289
	
i1l1303:	
;I2C.c: 289: USART_WriteChar(banco);
	movf	(_banco),w
	fcall	i1_USART_WriteChar
	line	291
	
i1l1305:	
;I2C.c: 291: posicao = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_posicao)
	line	294
	
i1l1307:	
;I2C.c: 294: USART_WriteString("\nInforme os dados a serem gravados: ");
	movlw	((STR_7)-__stringbase)&0ffh
	fcall	i1_USART_WriteString
	goto	i1l1309
	line	295
;I2C.c: 295: while(1){
	
i1l129:	
	line	297
	
i1l1309:	
;I2C.c: 297: entrada = USART_ReceiveChar();
	fcall	_USART_ReceiveChar
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_entrada)
	line	298
	
i1l1311:	
;I2C.c: 298: USART_WriteChar(entrada);
	movf	(_entrada),w
	fcall	i1_USART_WriteChar
	line	301
	
i1l1313:	
;I2C.c: 301: if(entrada == '\n'){
	movf	(_entrada),w
	xorlw	0Ah
	skipz
	goto	u74_21
	goto	u74_20
u74_21:
	goto	i1l1317
u74_20:
	goto	i1l1331
	line	302
	
i1l1315:	
;I2C.c: 302: break;
	goto	i1l1331
	line	303
	
i1l130:	
	line	306
	
i1l1317:	
;I2C.c: 303: }
;I2C.c: 306: I2C_Idle();
	fcall	_I2C_Idle
	line	307
;I2C.c: 307: I2C_Start();
	fcall	_I2C_Start
	line	308
;I2C.c: 308: I2C_Write(160+(banco<<1));
	movf	(_banco),w
	movwf	(??_ISR+0)+0
	addwf	(??_ISR+0)+0,w
	addlw	0A0h
	fcall	_I2C_Write
	line	309
;I2C.c: 309: I2C_Write(posicao);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_posicao),w
	fcall	_I2C_Write
	line	310
;I2C.c: 310: I2C_Write(entrada);
	movf	(_entrada),w
	fcall	_I2C_Write
	line	311
;I2C.c: 311: I2C_Idle();
	fcall	_I2C_Idle
	line	312
;I2C.c: 312: I2C_Stop();
	fcall	_I2C_Stop
	line	315
	
i1l1319:	
;I2C.c: 315: if(posicao == 255){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_posicao),w
	xorlw	0FFh
	skipz
	goto	u75_21
	goto	u75_20
u75_21:
	goto	i1l1329
u75_20:
	line	316
	
i1l1321:	
;I2C.c: 316: posicao = 0;
	clrf	(_posicao)
	line	318
	
i1l1323:	
;I2C.c: 318: if(banco == 7){
	movf	(_banco),w
	xorlw	07h
	skipz
	goto	u76_21
	goto	u76_20
u76_21:
	goto	i1l1327
u76_20:
	line	319
	
i1l1325:	
;I2C.c: 319: banco = 0;
	clrf	(_banco)
	line	320
;I2C.c: 320: }
	goto	i1l1309
	line	321
	
i1l133:	
	line	322
	
i1l1327:	
;I2C.c: 321: else{
;I2C.c: 322: banco++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_banco),f
	goto	i1l1309
	line	323
	
i1l134:	
	line	324
;I2C.c: 323: }
;I2C.c: 324: }
	goto	i1l1309
	line	325
	
i1l132:	
	line	326
	
i1l1329:	
;I2C.c: 325: else{
;I2C.c: 326: posicao++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_posicao),f
	goto	i1l1309
	line	327
	
i1l135:	
	goto	i1l1309
	line	328
	
i1l136:	
	line	295
	goto	i1l1309
	
i1l131:	
	goto	i1l1331
	line	329
	
i1l128:	
	line	332
	
i1l1331:	
;I2C.c: 327: }
;I2C.c: 328: }
;I2C.c: 329: }
;I2C.c: 332: if(entrada == 'd'){
	movf	(_entrada),w
	xorlw	064h
	skipz
	goto	u77_21
	goto	u77_20
u77_21:
	goto	i1l1355
u77_20:
	line	334
	
i1l1333:	
;I2C.c: 334: I2C_Idle();
	fcall	_I2C_Idle
	line	335
;I2C.c: 335: I2C_Start();
	fcall	_I2C_Start
	line	338
	
i1l1335:	
;I2C.c: 337: unsigned char i, j;
;I2C.c: 338: for(i = 0; i < 8; i++){
	clrf	(ISR@i)
	
i1l1337:	
	movlw	(08h)
	subwf	(ISR@i),w
	skipc
	goto	u78_21
	goto	u78_20
u78_21:
	goto	i1l1341
u78_20:
	goto	i1l1353
	
i1l1339:	
	goto	i1l1353
	
i1l138:	
	line	339
	
i1l1341:	
;I2C.c: 339: for(j = 0; j < 256; j++){
	clrf	(ISR@j)
	goto	i1l1345
	
i1l1343:	
	goto	i1l1349
	
i1l140:	
	line	340
	
i1l1345:	
;I2C.c: 340: I2C_Write(160+(i<<1));
	movf	(ISR@i),w
	movwf	(??_ISR+0)+0
	addwf	(??_ISR+0)+0,w
	addlw	0A0h
	fcall	_I2C_Write
	line	341
;I2C.c: 341: I2C_Write(j);
	movf	(ISR@j),w
	fcall	_I2C_Write
	line	342
;I2C.c: 342: I2C_Write('0');
	movlw	(030h)
	fcall	_I2C_Write
	line	339
	
i1l1347:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(ISR@j),f
	goto	i1l1345
	
i1l141:	
	line	338
	
i1l1349:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(ISR@i),f
	
i1l1351:	
	movlw	(08h)
	subwf	(ISR@i),w
	skipc
	goto	u79_21
	goto	u79_20
u79_21:
	goto	i1l1341
u79_20:
	goto	i1l1353
	
i1l139:	
	line	346
	
i1l1353:	
;I2C.c: 343: }
;I2C.c: 344: }
;I2C.c: 346: I2C_Idle();
	fcall	_I2C_Idle
	line	347
;I2C.c: 347: I2C_Stop();
	fcall	_I2C_Stop
	goto	i1l1355
	line	348
	
i1l137:	
	line	351
	
i1l1355:	
;I2C.c: 348: }
;I2C.c: 351: if(entrada == 'r'){
	movf	(_entrada),w
	xorlw	072h
	skipz
	goto	u80_21
	goto	u80_20
u80_21:
	goto	i1l1397
u80_20:
	line	353
	
i1l1357:	
;I2C.c: 353: banco = 0;
	clrf	(_banco)
	line	355
;I2C.c: 355: posicao = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_posicao)
	line	358
	
i1l1359:	
;I2C.c: 358: USART_WriteString("\nDados encontrados: ");
	movlw	((STR_8)-__stringbase)&0ffh
	fcall	i1_USART_WriteString
	goto	i1l1361
	line	359
;I2C.c: 359: while(1){
	
i1l143:	
	line	360
	
i1l1361:	
;I2C.c: 360: I2C_Idle();
	fcall	_I2C_Idle
	line	361
	
i1l1363:	
;I2C.c: 361: I2C_Start();
	fcall	_I2C_Start
	line	362
	
i1l1365:	
;I2C.c: 362: I2C_Write(0xA0);
	movlw	(0A0h)
	fcall	_I2C_Write
	line	363
	
i1l1367:	
;I2C.c: 363: I2C_Write(0x00);
	movlw	(0)
	fcall	_I2C_Write
	line	365
	
i1l1369:	
;I2C.c: 365: I2C_Restart();
	fcall	_I2C_Restart
	line	367
	
i1l1371:	
;I2C.c: 367: I2C_Write(0xA1);
	movlw	(0A1h)
	fcall	_I2C_Write
	line	368
	
i1l1373:	
;I2C.c: 368: entrada = I2C_Read();
	fcall	_I2C_Read
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_entrada)
	line	369
	
i1l1375:	
;I2C.c: 369: I2C_NACK();
	fcall	_I2C_NACK
	line	370
	
i1l1377:	
;I2C.c: 370: I2C_Idle();
	fcall	_I2C_Idle
	line	371
	
i1l1379:	
;I2C.c: 371: I2C_Stop();
	fcall	_I2C_Stop
	line	373
	
i1l1381:	
;I2C.c: 373: USART_WriteChar(entrada);
	movf	(_entrada),w
	fcall	i1_USART_WriteChar
	line	376
	
i1l1383:	
;I2C.c: 376: if(posicao == 255){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_posicao),w
	xorlw	0FFh
	skipz
	goto	u81_21
	goto	u81_20
u81_21:
	goto	i1l1395
u81_20:
	line	377
	
i1l1385:	
;I2C.c: 377: posicao = 0;
	clrf	(_posicao)
	line	378
	
i1l1387:	
;I2C.c: 378: if(banco == 7){
	movf	(_banco),w
	xorlw	07h
	skipz
	goto	u82_21
	goto	u82_20
u82_21:
	goto	i1l1393
u82_20:
	goto	i1l1397
	line	379
	
i1l1389:	
;I2C.c: 379: break;
	goto	i1l1397
	line	380
	
i1l1391:	
;I2C.c: 380: }
	goto	i1l1361
	line	381
	
i1l145:	
	line	382
	
i1l1393:	
;I2C.c: 381: else{
;I2C.c: 382: banco++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_banco),f
	goto	i1l1361
	line	383
	
i1l147:	
	line	384
;I2C.c: 383: }
;I2C.c: 384: }
	goto	i1l1361
	line	385
	
i1l144:	
	line	386
	
i1l1395:	
;I2C.c: 385: else{
;I2C.c: 386: posicao++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_posicao),f
	goto	i1l1361
	line	387
	
i1l148:	
	goto	i1l1361
	line	388
	
i1l149:	
	line	359
	goto	i1l1361
	
i1l146:	
	goto	i1l1397
	line	389
	
i1l142:	
	line	391
	
i1l1397:	
;I2C.c: 387: }
;I2C.c: 388: }
;I2C.c: 389: }
;I2C.c: 391: USART_WriteString("\nInforme um comando (e, l, w, d, r): ");
	movlw	((STR_9)-__stringbase)&0ffh
	fcall	i1_USART_WriteString
	goto	i1l150
	line	392
	
i1l112:	
	line	393
	
i1l150:	
	movf	(??_ISR+4),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_USART_ReceiveChar

;; *************** function _USART_ReceiveChar *****************
;; Defined at:
;;		line 73 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  USART_Data      1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_USART_WriteString
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	73
global __ptext7
__ptext7:	;psect for function _USART_ReceiveChar
psect	text7
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	73
	global	__size_of_USART_ReceiveChar
	__size_of_USART_ReceiveChar	equ	__end_of_USART_ReceiveChar-_USART_ReceiveChar
	
_USART_ReceiveChar:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_ReceiveChar: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	77
	
i1l1129:	
;I2C.c: 75: unsigned char USART_Data;
;I2C.c: 77: if (!OERR)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(193/8),(193)&7	;volatile
	goto	u60_21
	goto	u60_20
u60_21:
	goto	i1l1135
u60_20:
	line	79
	
i1l1131:	
;I2C.c: 78: {
;I2C.c: 79: USART_Data = RCREG;
	movf	(26),w	;volatile
	movwf	(??_USART_ReceiveChar+0)+0
	movf	(??_USART_ReceiveChar+0)+0,w
	movwf	(USART_ReceiveChar@USART_Data)
	line	80
	
i1l1133:	
;I2C.c: 80: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	line	81
;I2C.c: 81: }
	goto	i1l1145
	line	82
	
i1l62:	
	line	84
	
i1l1135:	
;I2C.c: 82: else
;I2C.c: 83: {
;I2C.c: 84: USART_WriteString("\n\r ------- ESTOURO DE PILHA ------- \n\r ");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	i1_USART_WriteString
	line	86
	
i1l1137:	
;I2C.c: 86: RCSTAbits.CREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24),4	;volatile
	line	87
	
i1l1139:	
;I2C.c: 87: USART_Data = RCREG;
	movf	(26),w	;volatile
	movwf	(??_USART_ReceiveChar+0)+0
	movf	(??_USART_ReceiveChar+0)+0,w
	movwf	(USART_ReceiveChar@USART_Data)
	line	88
	
i1l1141:	
;I2C.c: 88: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	89
	
i1l1143:	
;I2C.c: 89: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	goto	i1l1145
	line	90
	
i1l63:	
	line	91
	
i1l1145:	
;I2C.c: 90: }
;I2C.c: 91: return(USART_Data);
	movf	(USART_ReceiveChar@USART_Data),w
	goto	i1l64
	
i1l1147:	
	line	92
	
i1l64:	
	return
	opt stack 0
GLOBAL	__end_of_USART_ReceiveChar
	__end_of_USART_ReceiveChar:
	signat	_USART_ReceiveChar,89
	global	i1_USART_WriteString

;; *************** function i1_USART_WriteString *****************
;; Defined at:
;;		line 62 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_11(37), STR_10(24), STR_9(38), STR_8(21), 
;;		 -> STR_7(37), STR_6(27), STR_5(30), STR_4(27), 
;;		 -> STR_3(37), STR_2(27), STR_1(40), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR const unsigned char 
;;		 -> STR_11(37), STR_10(24), STR_9(38), STR_8(21), 
;;		 -> STR_7(37), STR_6(27), STR_5(30), STR_4(27), 
;;		 -> STR_3(37), STR_2(27), STR_1(40), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_USART_WriteChar
;; This function is called by:
;;		_USART_ReceiveChar
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	62
global __ptext8
__ptext8:	;psect for function i1_USART_WriteString
psect	text8
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	62
	global	__size_ofi1_USART_WriteString
	__size_ofi1_USART_WriteString	equ	__end_ofi1_USART_WriteString-i1_USART_WriteString
	
i1_USART_WriteString:	
;incstack = 0
	opt	stack 3
; Regs used in i1_USART_WriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;i1USART_WriteString@str stored from wreg
	movwf	(i1USART_WriteString@str)
	line	65
	
i1l1067:	
;I2C.c: 65: while(*str != '\0')
	goto	i1l1073
	
i1l57:	
	line	68
	
i1l1069:	
;I2C.c: 66: {
;I2C.c: 68: USART_WriteChar(*str);
	movf	(i1USART_WriteString@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	i1_USART_WriteChar
	line	69
	
i1l1071:	
;I2C.c: 69: str++;
	movlw	(01h)
	movwf	(??i1_USART_WriteString+0)+0
	movf	(??i1_USART_WriteString+0)+0,w
	addwf	(i1USART_WriteString@str),f
	goto	i1l1073
	line	70
	
i1l56:	
	line	65
	
i1l1073:	
	movf	(i1USART_WriteString@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u55_21
	goto	u55_20
u55_21:
	goto	i1l1069
u55_20:
	goto	i1l59
	
i1l58:	
	line	71
	
i1l59:	
	return
	opt stack 0
GLOBAL	__end_ofi1_USART_WriteString
	__end_ofi1_USART_WriteString:
	signat	i1_USART_WriteString,88
	global	i1_USART_WriteChar

;; *************** function i1_USART_WriteChar *****************
;; Defined at:
;;		line 56 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;  USART_Data      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  USART_Data      1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;;		i1_USART_WriteString
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	56
global __ptext9
__ptext9:	;psect for function i1_USART_WriteChar
psect	text9
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	56
	global	__size_ofi1_USART_WriteChar
	__size_ofi1_USART_WriteChar	equ	__end_ofi1_USART_WriteChar-i1_USART_WriteChar
	
i1_USART_WriteChar:	
;incstack = 0
	opt	stack 3
; Regs used in i1_USART_WriteChar: [wreg]
;i1USART_WriteChar@USART_Data stored from wreg
	movwf	(i1USART_WriteChar@USART_Data)
	line	58
	
i1l1015:	
;I2C.c: 58: while(!PIR1bits.TXIF);
	goto	i1l50
	
i1l51:	
	
i1l50:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u42_21
	goto	u42_20
u42_21:
	goto	i1l50
u42_20:
	goto	i1l1017
	
i1l52:	
	line	59
	
i1l1017:	
;I2C.c: 59: TXREG = USART_Data;
	movf	(i1USART_WriteChar@USART_Data),w
	movwf	(25)	;volatile
	line	60
	
i1l53:	
	return
	opt stack 0
GLOBAL	__end_ofi1_USART_WriteChar
	__end_ofi1_USART_WriteChar:
	signat	i1_USART_WriteChar,88
	global	_I2C_Write

;; *************** function _I2C_Write *****************
;; Defined at:
;;		line 150 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Idle
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	150
global __ptext10
__ptext10:	;psect for function _I2C_Write
psect	text10
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	150
	global	__size_of_I2C_Write
	__size_of_I2C_Write	equ	__end_of_I2C_Write-_I2C_Write
	
_I2C_Write:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_Write: [wreg+status,2+status,0+pclath+cstack]
;I2C_Write@Byte stored from wreg
	movwf	(I2C_Write@Byte)
	line	153
	
i1l1193:	
;I2C.c: 153: I2C_Idle();
	fcall	_I2C_Idle
	line	154
	
i1l1195:	
;I2C.c: 154: SSPBUF = Byte;
	movf	(I2C_Write@Byte),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	155
;I2C.c: 155: while(SSPSTATbits.BF);
	goto	i1l88
	
i1l89:	
	
i1l88:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(148)^080h,0	;volatile
	goto	u63_21
	goto	u63_20
u63_21:
	goto	i1l88
u63_20:
	goto	i1l91
	
i1l90:	
	line	156
	
i1l91:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Write
	__end_of_I2C_Write:
	signat	_I2C_Write,4216
	global	_I2C_Stop

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 168 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Idle
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	168
global __ptext11
__ptext11:	;psect for function _I2C_Stop
psect	text11
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	168
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	171
	
i1l1205:	
;I2C.c: 171: I2C_Idle();
	fcall	_I2C_Idle
	line	172
	
i1l1207:	
;I2C.c: 172: SSPCON2bits.PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(145)^080h,2	;volatile
	line	173
;I2C.c: 173: while(SSPCON2bits.PEN);
	goto	i1l100
	
i1l101:	
	
i1l100:	
	btfsc	(145)^080h,2	;volatile
	goto	u65_21
	goto	u65_20
u65_21:
	goto	i1l100
u65_20:
	goto	i1l103
	
i1l102:	
	line	174
	
i1l103:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
	signat	_I2C_Stop,88
	global	_I2C_Start

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 134 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Idle
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	134
global __ptext12
__ptext12:	;psect for function _I2C_Start
psect	text12
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	134
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_Start: [wreg+status,2+status,0+pclath+cstack]
	line	137
	
i1l1185:	
;I2C.c: 137: I2C_Idle();
	fcall	_I2C_Idle
	line	138
	
i1l1187:	
;I2C.c: 138: SSPCON2bits.SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(145)^080h,0	;volatile
	line	139
;I2C.c: 139: while(SSPCON2bits.SEN);
	goto	i1l76
	
i1l77:	
	
i1l76:	
	btfsc	(145)^080h,0	;volatile
	goto	u61_21
	goto	u61_20
u61_21:
	goto	i1l76
u61_20:
	goto	i1l79
	
i1l78:	
	line	140
	
i1l79:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
	signat	_I2C_Start,88
	global	_I2C_Restart

;; *************** function _I2C_Restart *****************
;; Defined at:
;;		line 142 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Idle
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	142
global __ptext13
__ptext13:	;psect for function _I2C_Restart
psect	text13
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	142
	global	__size_of_I2C_Restart
	__size_of_I2C_Restart	equ	__end_of_I2C_Restart-_I2C_Restart
	
_I2C_Restart:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_Restart: [wreg+status,2+status,0+pclath+cstack]
	line	145
	
i1l1189:	
;I2C.c: 145: I2C_Idle();
	fcall	_I2C_Idle
	line	146
	
i1l1191:	
;I2C.c: 146: SSPCON2bits.RSEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(145)^080h,1	;volatile
	line	147
;I2C.c: 147: while(SSPCON2bits.RSEN);
	goto	i1l82
	
i1l83:	
	
i1l82:	
	btfsc	(145)^080h,1	;volatile
	goto	u62_21
	goto	u62_20
u62_21:
	goto	i1l82
u62_20:
	goto	i1l85
	
i1l84:	
	line	148
	
i1l85:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Restart
	__end_of_I2C_Restart:
	signat	_I2C_Restart,88
	global	_I2C_Read

;; *************** function _I2C_Read *****************
;; Defined at:
;;		line 158 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Idle
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	158
global __ptext14
__ptext14:	;psect for function _I2C_Read
psect	text14
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	158
	global	__size_of_I2C_Read
	__size_of_I2C_Read	equ	__end_of_I2C_Read-_I2C_Read
	
_I2C_Read:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_Read: [wreg+status,2+status,0+pclath+cstack]
	line	161
	
i1l1197:	
;I2C.c: 161: I2C_Idle();
	fcall	_I2C_Idle
	line	162
	
i1l1199:	
;I2C.c: 162: SSPCON2bits.RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(145)^080h,3	;volatile
	line	163
;I2C.c: 163: while(!SSPSTATbits.BF);
	goto	i1l94
	
i1l95:	
	
i1l94:	
	btfss	(148)^080h,0	;volatile
	goto	u64_21
	goto	u64_20
u64_21:
	goto	i1l94
u64_20:
	goto	i1l1201
	
i1l96:	
	line	165
	
i1l1201:	
;I2C.c: 165: return(SSPBUF);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	goto	i1l97
	
i1l1203:	
	line	166
	
i1l97:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read
	__end_of_I2C_Read:
	signat	_I2C_Read,89
	global	_I2C_NACK

;; *************** function _I2C_NACK *****************
;; Defined at:
;;		line 184 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Idle
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	184
global __ptext15
__ptext15:	;psect for function _I2C_NACK
psect	text15
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	184
	global	__size_of_I2C_NACK
	__size_of_I2C_NACK	equ	__end_of_I2C_NACK-_I2C_NACK
	
_I2C_NACK:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_NACK: [wreg+status,2+status,0+pclath+cstack]
	line	187
	
i1l1209:	
;I2C.c: 187: I2C_Idle();
	fcall	_I2C_Idle
	line	188
	
i1l1211:	
;I2C.c: 188: SSPCON2bits.ACKDT = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(145)^080h,5	;volatile
	line	189
	
i1l1213:	
;I2C.c: 189: SSPCON2bits.ACKEN = 1;
	bsf	(145)^080h,4	;volatile
	line	190
	
i1l109:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_NACK
	__end_of_I2C_NACK:
	signat	_I2C_NACK,88
	global	_I2C_Idle

;; *************** function _I2C_Idle *****************
;; Defined at:
;;		line 128 in file "D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Start
;;		_I2C_Restart
;;		_I2C_Write
;;		_I2C_Read
;;		_I2C_Stop
;;		_I2C_NACK
;;		_ISR
;;		_I2C_ACK
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	128
global __ptext16
__ptext16:	;psect for function _I2C_Idle
psect	text16
	file	"D:\Engenharia da computação\2017-2\MICROCONTROLADORES\trabalho micro\I2C - 24C16\Código em C no MPLAB\I2C.c"
	line	128
	global	__size_of_I2C_Idle
	__size_of_I2C_Idle	equ	__end_of_I2C_Idle-_I2C_Idle
	
_I2C_Idle:	
;incstack = 0
	opt	stack 3
; Regs used in _I2C_Idle: [wreg+status,2+status,0]
	line	131
	
i1l1023:	
;I2C.c: 131: while ((SSPCON2 & 0x1F) | (SSPSTATbits.R_W));
	goto	i1l1025
	
i1l71:	
	goto	i1l1025
	
i1l70:	
	
i1l1025:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rrf	(148)^080h,w	;volatile
	movwf	(??_I2C_Idle+0)+0
	rrf	(??_I2C_Idle+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_I2C_Idle+1)+0
	movf	(145)^080h,w	;volatile
	andlw	01Fh
	iorwf	(??_I2C_Idle+1)+0,w
	btfss	status,2
	goto	u44_21
	goto	u44_20
u44_21:
	goto	i1l1025
u44_20:
	goto	i1l73
	
i1l72:	
	line	132
	
i1l73:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Idle
	__end_of_I2C_Idle:
	signat	_I2C_Idle,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
