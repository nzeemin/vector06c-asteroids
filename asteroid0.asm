
;----------------------------------------------------------------------------

	.EXPORT Start
	.EXPORT KeyLineEx, KeyLine0, JoystickP
	.EXPORT IntCount, SetPaletteGame

;----------------------------------------------------------------------------

	.org	100h

	di
	xra	a
	out	10h			; turn off the quasi-disk
	lxi	sp,0100h
	lxi	h,0C3F3h
	shld	0
	mov	a,h
	lxi	h,Restart
	shld	2
	sta	38h
	lxi	h,KEYINT		; interrupt handler address
	shld	38h+1

; Move encoded block from Start to 8000h, LZSASIZES+LZSASIZE1 bytes
	lxi	d,Start			; source addr
	lxi	b,08000h		; destination addr
	lxi	h,LZSASIZES+LZSASIZE1	; size
	inr	h
Init_1:
	ldax	d
	inx	d
	stax	b
	inx	b
	dcr	l
	jnz	Init_1
	dcr	h
	jnz	Init_1
; Decompress the code and sprites from 08000h+LZSASIZES to Start
	lxi	d,08000h+LZSASIZES	; source addr
	lxi	b,Start			; destination addr
	call	dzx0
; Decompress 24K of the title screen from 8000h to A000h
	lxi	d,08000h		; source addr
	lxi	b,0A000h		; destination addr
	call	dzx0

Restart:
	lxi	sp,100h
	mvi	a, 88h
	out	4		; initialize R-Sound 2
; Joystick init
	mvi	a, 83h		; control byte
	out	4		; initialize the I/O controller
	mvi	a, 9Fh		; bits to check Joystick-P, both P1 and P2
	out	5		; set Joystick-P query bits
	in	6		; read Joystick-P initial value
	sta	KEYINT_J+1	; store as xra instruction parameter

; Set palette for the title screen
	lxi	h, PaletteTitle+15
	call	SetPalette

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
; Joystick scan
	in	6		; read Joystick-P
KEYINT_J:
	xri	0		; XOR with initial value - mutable param!
	cma
	sta	JoystickP	; save to analyze later

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
JoystickP:	.db 11111111b

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
	.db	ColorText ;8
	.db	$C0	;9
	.db	$07	;10
	.db	$C7	;11
	.db	$38	;12
	.db	$F8	;13
	.db	$3F	;14
	.db	$FF	;15

;----------------------------------------------------------------------------

; ZX0 decompressor code by Ivan Gorodetsky
; https://github.com/ivagorRetrocomp/DeZX/blob/main/ZX0/8080/OLD_V1/dzx0_CLASSIC.asm
; input: 	de=compressed data start
;			bc=uncompressed destination start

#ifdef BACKWARD
#define NEXT_HL dcx h
#define NEXT_DE dcx d
#define NEXT_BC dcx b
#else
#define NEXT_HL inx h
#define NEXT_DE inx d
#define NEXT_BC inx b
#endif

dzx0:
#ifdef BACKWARD
		lxi h,1
		push h
		dcr l
#else
		lxi h,0FFFFh
		push h
		inx h
#endif
		mvi a,080h
dzx0_literals:
		call dzx0_elias
		call dzx0_ldir
		jc dzx0_new_offset
		call dzx0_elias
dzx0_copy:
		xchg
		xthl
		push h
		dad b
		xchg
		call dzx0_ldir
		xchg
		pop h
		xthl
		xchg
		jnc dzx0_literals
dzx0_new_offset:
		call dzx0_elias
#ifdef BACKWARD
		inx sp
		inx sp
		dcr h
		rz
		dcr l
		push psw
		mov a,l
#else
		mov h,a
		pop psw
		xra a
		sub l
		rz
		push h
#endif
		rar\ mov h,a
		ldax d
		rar\ mov l,a
		NEXT_DE
#ifdef BACKWARD
		inx h
#endif
		xthl
		mov a,h
		lxi h,1
#ifdef BACKWARD
		cc dzx0_elias_backtrack
#else
		cnc dzx0_elias_backtrack
#endif
		inx h
		jmp dzx0_copy
dzx0_elias:
		inr l
dzx0_elias_loop:	
		add a
		jnz dzx0_elias_skip
		ldax d
		NEXT_DE
		ral
dzx0_elias_skip:
#ifdef BACKWARD
		rnc
#else
		rc
#endif
dzx0_elias_backtrack:
		dad h
		add a
		jnc dzx0_elias_loop
		jmp dzx0_elias

dzx0_ldir:
		push psw
dzx0_ldir1:
		ldax d
		stax b
		NEXT_DE
		NEXT_BC
		dcx h
		mov a,h
		ora l
		jnz dzx0_ldir1
		pop psw
		add a
		ret 

;----------------------------------------------------------------------------

Start:
	.end

;----------------------------------------------------------------------------
