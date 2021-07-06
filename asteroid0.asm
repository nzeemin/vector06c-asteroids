
;----------------------------------------------------------------------------

Start	.equ	240h

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

; Set palette for the title screen
	lxi	h, PaletteTitle+15
	call	SetPalette

Restart:
	lxi	sp,100h
	mvi	a, 88h
	out	4		; initialize R-Sound 2

	ei
	jp Start

; Set game palette; A = game plane address hi = $A0,$C0,$E0
SetPaletteGame:
	rrc			; A = $50,$60,$70
	sui	50h		; A = $00,$10,$20
	lxi	h, PaletteGame1+15
	mov	e, a
	mvi	d, 0
	dad	d		; now HL = PaletteGame2 + 15 + (one of $00,$10,$20)
; Programming the Palette
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
ColorEcho .equ 10000000b    ; Color for game echo
ColorText .equ 10111111b    ; Color for text
ColorBoth .equ 11111111b    ; Color for game and text
; Palette colors, game
PaletteGame1:		; Palette for Plane 1 game + Plane 0 echo + Plane 3 text
	.db	ColorNone, ColorEcho, ColorGame, ColorGame	; 0..3
	.db	ColorNone, ColorEcho, ColorGame, ColorGame	; 4..7
	.db	ColorText, ColorText, ColorBoth, ColorBoth	; 8..11
	.db	ColorText, ColorText, ColorBoth, ColorBoth	; 12..15
PaletteGame0:		; Palette for Plane 0 game + Plane 2 echo + Plane 3 text
	.db	ColorNone, ColorGame, ColorNone, ColorGame	; 0..3
	.db	ColorEcho, ColorGame, ColorEcho, ColorGame	; 4..7
	.db	ColorText, ColorBoth, ColorText, ColorBoth	; 8..11
	.db	ColorText, ColorBoth, ColorText, ColorBoth	; 12..15
PaletteGame2:		; Palette for Plane 2 game + Plane 1 echo + Plane 3 text
	.db	ColorNone, ColorNone, ColorEcho, ColorEcho	; 0..3
	.db	ColorGame, ColorGame, ColorGame, ColorGame	; 4..7
	.db	ColorText, ColorText, ColorText, ColorText	; 8..11
	.db	ColorBoth, ColorBoth, ColorBoth, ColorBoth	; 12..15
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
	.db	$C0	;9
	.db	$07	;10
	.db	$C7	;11
	.db	$38	;12
	.db	$F8	;13
	.db	$3F	;14
	.db	$FF	;15

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
