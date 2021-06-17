
;----------------------------------------------------------------------------

Start	.equ	280h

	.EXPORT KeyLineEx, KeyLine0
	.EXPORT IntCount, SetPaletteGame

;----------------------------------------------------------------------------

	.org	100h

	di
	xra	a
	out	10h
	lxi	sp,0100h
	lxi	h,0C3F3h
	shld	0
	mov	a,h
	lxi	h,Restart
	shld	2
	sta	38h
	lxi	h,KEYINT
	shld	38h+1

;TODO: Decompress the screen

; ; Move encoded block from Start to A000h
; 	xra	a
; 	lxi	d,Start		; source addr
; 	lxi	b,0A000h	; destination addr
; Init_1:
; 	ldax	d
; 	inx	d
; 	stax	b
; 	inr	c
; 	jnz	Init_1
; 	inr	b
; 	jnz	Init_1

; ; Decompress the encoded block from A000h to Start
; 	lxi	h,0A000h
; 	lxi	d,Start
; 	call	unlzsa1

	call	SetPaletteTitle

Restart:
	lxi	sp,100h
	mvi	a, 88h
	out	4		; initialize R-Sound 2

	ei
	jp Start

; Programming the Palette
SetPaletteTitle:
	lxi	h, PaletteTitle+15
	jp	SetPalette
SetPaletteGame:
	lxi	h, PaletteGame+15
SetPalette:
	ei
	hlt
	lxi	d, 100Fh
PaletLoop:
	mov	a, e
	out	2
	mov	a, m
	out	0Ch
	out	0Ch
	out	0Ch
	out	0Ch
	out	0Ch
	dcx	h
	out	0Ch
	dcr	e
	out	0Ch
	dcr	d
	out	0Ch
	jnz	PaletLoop
	ret

;----------------------------------------------------------------------------

KEYINT:
	push	psw
	mvi	a, 8Ah
	out	0
; Keyboard scan
	in	1
	ori	00011111b
	sta	KeyLineEx
	mvi	a, 0FEh
	out	3
	in	2
	sta	KeyLine0
; Scrolling, screen mode, border
	mvi	a, 88h
	out	0
	mvi	a, 2
	out	1
	mvi	a, $FF
	out	3		; scrolling
	xra	a
	out	2		; screen mode and border
;
	lda	IntCount
	inr	a
	sta	IntCount
;
	pop	psw
	ei
	ret

KeyLineEx:	.db 11111111b
KeyLine0:	.db 11111111b

IntCount:	.db 0		; interrupt counter

;----------------------------------------------------------------------------

ColorNone .equ 00000000b
ColorGame .equ 11111110b    ; Color for game
ColorText .equ 10111111b    ; Color for text
ColorBoth .equ 11111111b    ; Color for game and text
; Palette colors, game
PaletteGame:
	.db	ColorNone	;0
	.db	ColorGame	;1
	.db	ColorGame	;2
	.db	ColorGame	;3
	.db	ColorText	;4
	.db	ColorBoth	;5
	.db	ColorBoth	;6
	.db	ColorBoth	;7
	.db	ColorNone	;8
	.db	ColorGame	;9
	.db	ColorGame	;10
	.db	ColorGame	;11
	.db	ColorText	;12
	.db	ColorBoth	;13
	.db	ColorBoth	;14
	.db	ColorBoth	;15
; Palette colors, title screen
PaletteTitle:
	.db	$00	;0
	.db	$C0	;1
	.db	$07	;2
	.db	$C7	;3
	.db	$38	;4
	.db	$F8	;5
	.db	$3F	;6
	.db	$FF	;7
	.db	$00	;8
	.db	$00	;9
	.db	$00	;10
	.db	$00	;11
	.db	$00	;12
	.db	$00	;13
	.db	$00	;14
	.db	$00	;15

;----------------------------------------------------------------------------

; LZSA1 decompressor code by Ivan Gorodetsky
; https://gitlab.com/ivagor/lzsa8080/-/blob/master/LZSA1/unlzsa1_small.asm
; input: 	hl=compressed data start
;		de=uncompressed destination start

.DEFINE NEXT_HL inx h
.DEFINE ADD_OFFSET xchg\ dad d
.DEFINE NEXT_DE inx d

unlzsa1:
	mvi b,0
ReadToken:
	mov a,m
	push psw
	NEXT_HL
	ani 70h
	jz NoLiterals 
	rrc\ rrc\ rrc\ rrc
	cpi 7
	cz ReadLongBA
	mov c,a
	call BLOCKCOPY
NoLiterals:
	pop psw
	push d
	mov e,m
	NEXT_HL
	mvi d,0FFh
	ora a
	jp ShortOffset
LongOffset:
	mov d,m
	NEXT_HL
ShortOffset:
	ani 0Fh
	adi 3
	cpi 15+3
	cz ReadLongBA
	mov c,a
	xthl
	ADD_OFFSET
	call BLOCKCOPY
	pop h
	jmp ReadToken
ReadLongBA:
	add m
	NEXT_HL
	rnc
	mov b,a\ mov a,m\ NEXT_HL\ rnz
	mov c,a\ mov b,m\ NEXT_HL
	ora b
	mov a,c
	rnz
	pop d
	pop d
	ret
BLOCKCOPY:
	mov a,m
	stax d
	NEXT_HL
	NEXT_DE
	dcx b
	mov a,b
	ora c
	jnz $-7
	ret

;----------------------------------------------------------------------------

; Filler
	.org	Start-1
	.db 0

	.end

;----------------------------------------------------------------------------
