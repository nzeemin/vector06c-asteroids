
; Import declarations from asteroid0.asm
  INCLUDE "asteroid0.inc"

;----------------------------------------------------------------------------

  ORG $0280
Start:
  ld sp,$0100

; Drawing two text strings under the title screen
  ld hl,$A01C
  ld (TextAddr),hl
  ld hl,String
  call DrawString
  ld hl,$A00C
  ld (TextAddr),hl
  ld hl,String2
  call DrawString

  call WaitAnyKey
  call ClearPlane0
  call ClearPlane1
  call ClearPlane2
  call SetPaletteGame

InitGame:
  call InitGameVars	; Initialize various game variables.

  call CenterShip	; Center ship on display and zero velocity.

InitWaves:
  call InitWaveVars

Start_1:
;  ld hl,12345
;  ld (Random16_seed1),hl
;  ld hl,54321
;  ld (Random16_seed2),hl

  ld hl,$BFFF
  ld (TextAddr),hl
  ld a,(LastIntCount)
  add a,$30		; '0'
  call DrawChar

;  ld hl,$A0FF
;  ld (TextAddr),hl
;  ld hl,54321
;  call DrawNumber5

;  ld hl,$A1F0
;  ld (TextAddr),hl
;  ld a,$40
;  call DrawChar
;  ld a,$40
;  call DrawChar
;  ld a,$40
;  call DrawChar

;  ld hl,$ABB0
;  ld (TextAddr),hl
;  ld hl,SGameOver
;  call DrawString

  call ClearPlane0

  ld b,2
Start_A:
  push bc
  call Random16
  ld e,l
  ld a,h
  and $0F
  or  $E0
  ld h,a		; we have screen address
  ld a,e
  and $3F
  ld e,a
  add a,a
  add a,e		; now A = N * 3
  ex de,hl
  ld h,$00
  ld l,a
  add hl,hl		; now HL = N * 6
  add hl,hl		; now HL = N * 12
  add hl,hl		; now HL = N * 24
  add hl,hl		; now HL = N * 48
  ld bc,Ship00S0
  add hl,bc		; we have sprite address
  ex de,hl
  call DrawSprite24x16
  pop bc
  dec b
  jp nz,Start_A

  ld a,(IntCount)
  ld (LastIntCount),a
  xor a
  ld (IntCount),a
  halt
  jp Start_1

LastIntCount: db 0
String:  DEFM " ORIGINAL GAME 1979 ATARI INC",0
String2: DEFM "VECTOR-06C DEMO VERSION NZEEMIN",0
SGameOver:  DEFM "GAME OVER",0

;----------------------------------------------------------------------------
AstroCodeBeg:

NumPlayers:		db	0	; 0 = Not playing, 1 = In the Game
PlayerScores:		db	0
ShipsPerGame:		db	3
ShpShotTimer:		db	0
ShipDir:		db	0	; Ship direction
ShipXAccel:		db	0
ShipYAccel:		db	0
ScrTimer:		db	0	; Countdown timer for saucer spawn.
ScrTmrReload:		db	0	; Reload value for saucer timer.
AstPerWave:		db	2
CurAsteroids:		db	0

; Object record format:
; +00:      Status byte: 0 = Not active
; +01:      Type
; +02-03:   X position
; +04-05:   Y position
; +06:      X speed
; +07:      Y speed
Objects:		; Total 32 object records
; Ship object record
ShipStatus:		db	0	; 0=No Ship Or In Hyperspace, 1=Alive, $A0-FF=Ship Exploding
			db	0	; Type = Ship
ShipXPos:		dw	1365
ShipYPos:		dw	1024
ShipXSpeed:		db	0
ShipYSpeed:		db	0
; Soucer object record
ScrStatus:		db	0
			db	1	; Type = Soucer
ScrXPos:		dw	0
ScrYPos:		dw	0
SaucerXSpeed:		db	0
SaucerYSpeed:		db	0
; Asteroid object records, 26 records
AstObjects:		ds 8 * 26
; Ship bullet objects, 4 records
ShipShotObjects:	ds 8 * 4
; Soucer bullet objects, 2 records
ScrShotObjects:		ds 8 * 2


;----------------------------------------------------------------------------

; Initialize Game Variables
InitGameVars:
  ld a,2		; Prepare to start wave 1 with 4 asteroids (+2 later).
  ld (AstPerWave),a
InitShipsPerGame:
  xor a
  ld (ShipStatus),a
  ld (ShpShotTimer),a
  ld (PlayerScores),a
  ld (CurAsteroids),a
  ret

UpdateObjects:
;TODO
  ret

; Saucer Reset
SaucerReset:
  ld a,(ScrTmrReload)
  ld (ScrTimer),a	; Reset saucer timer.
  xor a
  ld (ScrStatus),a	; Clear other saucer variables.
  ld (SaucerXSpeed),a
  ld (SaucerYSpeed),a
  ret

; Initialize Asteroid Wave Variables
InitWaveVars:
;TODO
  ret

; Center Ship On Screen
CenterShip:
  ld hl,1365
  ld (ShipXPos),hl
  ld hl,1024
  ld (ShipYPos),hl
  xor a
  ld (ShipXAccel),a
  ld (ShipYAccel),a
  ret

;----------------------------------------------------------------------------

; Wait for any key
WaitAnyKey:
  call ReadKeyboard
  or a
  jp nz,WaitAnyKey	; Wait for unpress
WaitAnyKey_1:
  call ReadKeyboard
  or a
  jp z,WaitAnyKey_1	; Wait for press
  ret

; Wait until no key pressed - to put after ReadKeyboard calls to prevent double-reads of the same key
WaitKeyUp:
  call ReadKeyboard
  or a
  jp nz,WaitKeyUp	; Wait for unpress
  ret

; Returns: A=key code, $00 no key; Z=0 for key, Z=1 for no key
; Key codes: Down=$01, Left=$02, Right=$03, Up=$04, Look/shoot=$05
;            Inventory=$06, Escape=$07, Switch look/shoot=$08, Enter=$09, Menu=$0F
ReadKeyboard:
  ld hl,ReadKeyboard_map  ; Point HL at the keyboard list
  ld b,6                  ; number of rows to check
ReadKeyboard_0:        
  ld e,(hl)               ; get address low
  inc hl
  ld d,(hl)               ; get address high
  inc hl
  ld a,(de)               ; get bits for keys
  ld c,8                  ; number of keys in a row
ReadKeyboard_1:
  rla                     ; shift A left; bit 0 sets carry bit
  jp nc,ReadKeyboard_2    ; if the bit is 0, we've found our key
  inc hl                  ; next table address
  dec c
  jp nz,ReadKeyboard_1    ; continue the loop by bits
  dec b
  jp nz,ReadKeyboard_0    ; continue the loop by lines
  xor a                   ; clear A, no key found
  ret
ReadKeyboard_2:
  ld a,(hl)               ; We've found a key, fetch the character code
  or a
  ret
; Mapping: Arrows; US/Space - look/shoot, Tab/RusLat - switch look/shoot,
;          AR2/ZB/PS - escape, I/M - inventory; P/R - menu, Enter=Enter
ReadKeyboard_map:
  DW KeyLineEx
  DB $08,$00,$05,$00,$00,$00,$00,$00  ; R/L SS  US
  DW KeyLine0
  DB $01,$03,$04,$02,$07,$09,$07,$08  ; Dn  Rt  Up  Lt  ZB  VK  PS  Tab
  DW KeyLine1
  DB $00,$00,$00,$00,$00,$07,$00,$00  ; F5  F4  F3  F2  F1  AR2 Str  ^\
  DW KeyLine5
  DB $00,$00,$06,$00,$00,$00,$06,$00  ;  O   N   M   L   K   J   I   H
  DW KeyLine6
  DB $00,$00,$00,$00,$00,$0F,$00,$0F  ;  W   V   U   T   S   R   Q   P
  DW KeyLine7
  DB $05,$00,$00,$00,$00,$00,$00,$00  ; Spc  ^   ]   \   [   Z   Y   X

TextAddr:  DW  $A0FF  ; Address on the screen to draw next char

; Draw string on screen using Font
;   HL = string addr
DrawString:
  ld a,(hl)
  inc hl
  or a
  ret z
  push hl
  call DrawChar
  pop hl
  jp DrawString

; Draw character on the screen using FontProto
;   A = character to show: $00-$1F space with A width; $20 space
DrawChar:
  push hl
  push bc
  cp $20        ; symbol $00-$1F ?
  jp c,DrawChar_skip  ; yes => skip A positions
  jp z,DrawChar_next  ; space char => jump
; Calculate the symbol address
  sub $20       ; font starts from ' '
  ld e,a        ; calculating the symbol address
  ld l,a        ;
  ld h,$00      ;
  ld d,h        ;
  add hl,hl     ; now hl = a * 2
  add hl,de     ; now hl = a * 3
  add hl,hl     ; now hl = a * 6
  add hl,hl     ; now hl = a * 12
  ld de,Font
  add hl,de     ; now hl = addr of the symbol
  ex de,hl      ; now de=symbol addr
DrawChar_3:
  ld hl,(TextAddr)
  ld b,12       ; 12 lines
DrawChar_4:     ; loop by lines
  ld a,(de)
  inc de
  ld (hl),a     ; put on the screen
  dec l		; one line lower
  dec b
  jp nz,DrawChar_4
DrawChar_next:
  ld a,1
DrawChar_skip:
  ld hl,TextAddr+1   ; address of upper byte
  add a,(hl)
  ld (hl),a     ; updating TextAddr
  pop bc
  pop hl
  ret

; Draw decimal number HL in 5 digits
DrawNumber5:
	ld	bc,-10000
	call	DrawNumber_1
	ld	bc,-1000
	call	DrawNumber_1
; Draw decimal number HL in 3 digits
DrawNumber3:
	ld	bc,-100
	call	DrawNumber_1
	ld	c,-10
	call	DrawNumber_1
	ld	c,-1
DrawNumber_1:
	ld	a,'0'-1
DrawNumber_2:
	inc	a
	ld (DrawNumber_3+1),hl
	add	hl,bc
	jp	c,DrawNumber_2
DrawNumber_3:
	ld	hl,$0000
	call DrawChar
	ret 

ClearPlane2:
  ld hl,$C000
  jp ClearPlane
ClearPlane1:
  ld hl,$E000
  jp ClearPlane
ClearPlane0:
  ld hl,$0000
ClearPlane:
  ld (ClearPlane_0+1),hl
  xor a
  ld h,a
  ld l,a
  ld d,a
  ld e,a
  add hl,sp
  ld (ClearPlane_fin+1),hl
  ld b,$10
ClearPlane_0:
  ld sp,$0000
ClearPlane_1:
REPT 256
  push de
ENDM
  dec b
  jp nz,ClearPlane_1
ClearPlane_fin:
  ld sp,0
  ret

;Inputs:
;   (seed1) contains a 16-bit seed value
;   (seed2) contains a NON-ZERO 16-bit seed value
;Outputs:
;   HL is the result
;   BC is the result of the LCG, so not that great of quality
;   DE is preserved
;Destroys:
;   AF
;cycle: 4,294,901,760 (almost 4.3 billion)
; https://wikiti.brandonw.net/index.php?title=Z80_Routines:Math:Random#Combined_LFSR.2FLCG.2C_16-bit_seeds
Random16:
    ld hl,(Random16_seed1)
    ld b,h
    ld c,l
    add hl,hl
    add hl,hl
    inc l
    add hl,bc
    ld (Random16_seed1),hl
    ld hl,(Random16_seed2)
    add hl,hl
    sbc a,a
    and %00101101
    xor l
    ld l,a
    ld (Random16_seed2),hl
    add hl,bc
    ret
Random16_seed1: dw 12345
Random16_seed2: dw 54321

GetRandomByte:
  push bc
  call Random16
  pop bc
  ld a,h
  xor l
  ret

; Draw sprite 24x16 by XOR
;   HL = address on the screen
;   DE = sprite address
;TODO: Check for out-of-screen by L
DrawSprite24x16:
  ld b,16		; 16 rows
DrawSprite24x16_1:
  ld c,h		; save H
  ld a,(de)		; 0
  xor (hl)
  ld (hl),a
  inc de
  inc h
  ld a,(de)		; 1
  xor (hl)
  ld (hl),a
  inc de
  inc h
  ld a,(de)		; 2
  xor (hl)
  ld (hl),a
  inc de
  ld h,c		; restore H
  dec l			; next line
; Continue the loop
  dec b
  jp nz,DrawSprite24x16_1
  ret

; Draw sprite 24x16 by XOR reflected vertically
;   HL = address on the screen
;   DE = sprite address
;TODO: Check for out-of-screen by L
DrawSprite24x16R:
  ld a,l
  sub 15		; 15 lines lower
  ld l,a
  ld b,16		; 16 rows
DrawSprite24x16R_1:
  ld c,h		; save H
  ld a,(de)		; 0
  xor (hl)
  ld (hl),a
  inc de
  inc h
  ld a,(de)		; 1
  xor (hl)
  ld (hl),a
  inc de
  inc h
  ld a,(de)		; 2
  xor (hl)
  ld (hl),a
  inc de
  ld h,c		; restore H
  inc l			; next line, going up
; Continue the loop
  dec b
  jp nz,DrawSprite24x16R_1
  ret

; Draw sprite 32x32 by XOR
;   HL = address on the screen
;   DE = sprite address
;TODO: Check for out-of-screen by L
DrawSprite32x32:
  ld b,32		; 32 rows
DrawSprite32x32_1:
  ld c,h		; save H
  ld a,(de)		; 0
  xor (hl)
  ld (hl),a
  inc de
  inc h
  ld a,(de)		; 1
  xor (hl)
  ld (hl),a
  inc de
  inc h
  ld a,(de)		; 2
  xor (hl)
  ld (hl),a
  inc de
  inc h
  ld a,(de)		; 3
  xor (hl)
  ld (hl),a
  inc de
  ld h,c		; restore H
  dec l			; next line
; Continue the loop
  dec b
  jp nz,DrawSprite32x32_1
  ret

;----------------------------------------------------------------------------
AstroCodeEnd:

INCLUDE "astrofont.asm"

INCLUDE "astrosprs.asm"

  ORG $A000
INCLUDE "astrotscr.asm"

;----------------------------------------------------------------------------
END
