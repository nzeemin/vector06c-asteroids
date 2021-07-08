
; Import declarations from asteroid0.asm
  INCLUDE "asteroid0.inc"

;----------------------------------------------------------------------------

  ORG $0240
Start:
;  ld sp,$0100

; Drawing two text strings under the title screen
  call DrawTitles
; Waiting on the title screen
  call WaitAnyKey

  call ClearPlane0123	; Clear the whole screen
  ld a,(CurrentPlaneHi)
  call SetPaletteGame

; ;TEST draw L-size rocks
;   ld a,$C0
;   call SetPaletteGame
;   ld c,4
; Test_1:
;   ld b,8
; Test_2:
;   push bc
;   ld hl,Test_4		; where to return
;   push hl
;   ld a,b		; 1..8
;   dec a			; 0..7
;   add a,a
;   add a,a
;   ld hl,CurrentPlaneHi
;   or (hl)
;   ld h,a		; now we have screen hi
;   ld a,c		; 1..4
;   add a,a
;   add a,a
;   add a,a
;   add a,a
;   add a,a
;   ld l,a		; now we have screen lo
;   ex de,hl
;   ld a,b		; 1..8
;   dec a			; 0..7 - shift
;   add a,a
;   ld b,a		; save shift * 2
;   inc hl		; now HL = object record + 1, at Type
;   ld a,c		; 1..4
;   dec a			; 0..3 - rock type
;   rla
;   rla
;   rla
;   rla			; -> bits 4..5
;   and $30
;   or b			; now A = draw procedure number * 2
;   ld hl,DrawRockLAddrs	; table address
;   add a,l
;   ld l,a
;   jp nc,Test_3
;   inc h
; Test_3:
;   ld c,(hl)		; get lo
;   inc hl
;   ld b,(hl)		; get hi; now BC = sprite drawing code address
;   push bc		; store the sprite drawing code address to call
;   ex de,hl		; now HL = screen address
;   ret			; jumping to the sprite drawing code
; Test_4:
;   pop bc
;   dec b
;   jp nz,Test_2
;   dec c
;   jp nz,Test_1
;   di
;   halt

; ;TEST HitTest
;   ld a,1
;   ld (AstPerWave),a
;   call InitWaveVars
;   ld a,$E0
;   ld (CurrentPlaneHi),a
;   call SwitchToPlane

;   ld b,8
; Test_H0:
;   push bc
;   call UpdateObjects		; Update position for all objects
;   call DrawObjects	; draw the asteroid
;   ei
;   halt
;   ei
;   halt
;   pop bc
;   dec b
;   jp nz,Test_H0
;   call ClearPlane012	; Clear the whole screen
;   call DrawObjects	; draw the asteroid

; Test_H1:
;   ld a,1
;   ld (ShipShotObjects),a
; Test_H1R:
;   call Random16
;   ld a,h
;   and $0F		; 0..$0FFF
;   ld h,a
;   ld de,$FAAB		; -$0555..$0AAA
;   add hl,de
;   jp m,Test_H1R		; less than 0 => repeat
;   ld (ShipShotObjects+2),hl	; X
;   call Random16
;   ld a,h
;   and 7
;   ld h,a
;   ld (ShipShotObjects+4),hl	; Y

;   ld hl,AstObjects+2
;   ld de,ShipShotObjects+2
;   ld a,128
;   call HitTest
;   jp c,Test_H2
;   ld a,$C0
;   jp Test_H3
; Test_H2:
;   ld a,$A0
; Test_H3:
;   ld (CurrentPlaneHi),a
;   call SwitchToPlane
;   call DrawObjects
;   jp Test_H1

InitGame:
  call InitGameVars	; Initialize various game variables

  call DrawTitles	; Draw the titles for demo mode
  ld hl,$86E0
  ld (TextAddr),hl
  ld hl,SPressToStart
  call DrawString

;  ld a,6			; Number of asteroids for the demo screen
;  ld (AstPerWave),a
  call InitWaveVars

;  call DrawShipLives	;TEST
;  call DrawPlayerScore	;TEST

; Game loop start
GameRunningLoop:
;DEBUG: Show frame count at right-top corner
  ld hl,$9FFF
  ld (TextAddr),hl
  ld a,(LastIntCount)
  add a,$30			; '0'
  call DrawChar			; show frame count
; Adjust procedures for the working plane
  ld a,(CurrentPlaneHi)
  call SwitchToPlane
; Clear the working plane
  ld a,(CurrentPlaneHi)
  call ClearPlaneA

  ld hl,$9DFF
  ld (TextAddr),hl
  ld a,(CurAsteroids)
  add a,$30			; '0'
  call DrawChar			; show CurAsteroids

  call ReadKeyboard
  call ProcessKeyboard

  ld a,(NumPlayers)
  or a				; if in game mode
  call nz,UpdateShipFire	; Update ship firing

  call UpdateObjects		; Update position for all objects

  ld a,(NumPlayers)
  or a				; if in game mode
  call nz,HitDectection		; Collision detection

  call DrawObjects

  ld a,(NumPlayers)
  or a
  jp z,GameRunningLoop_1	; jump if not in game mode
; In the demo mode, check if the wave ended
  ld a,(CurAsteroids)
  or a				; do we have any rocks on the screen?
  jp nz,GameRunningLoop_2
  call InitWaveVars		; start the next wave
  jp GameRunningLoop_2
GameRunningLoop_1:		; in the game mode
; Check if Fire button pressed to start the game
  ld a,(FireSw)
  or a
  call nz,PrepareNewGame	; Start the game
GameRunningLoop_2:

;TODO: if game mode
;TODO: Update score/lives indicators if needed
;TODO: end if game mode

; Save interrupt counter value
  ld a,(IntCount)
  ld (LastIntCount),a
  xor a
  ld (IntCount),a
; Switch working plane
  ld a,(CurrentPlaneHi)
  sub $20			; CurrentPlaneHi cycles $E0 -> $C0 -> $A0
  cp $80
  jp nz,Start_A
  ld a,$E0
Start_A:
  ld (CurrentPlaneHi),a
; Set palette to show already drawn plane
;  ld a,(CurrentPlaneHi)
  call SetPaletteGame
  jp GameRunningLoop		; continue the game loop

; Called from the game loop to start a new game
PrepareNewGame:
  call ClearPlane0123		; clear the whole screen
;TODO: Deactivate all rocks
  call InitGameVars
  call InitWaveVars
  ld a,1
  ld (ShipStatus),a		; activate the ship
  ld (NumPlayers),a		; set the game mode flag
  call CenterShip		; Center ship on display and zero velocity
  ret		; return to the game loop

LastIntCount:	db 0
CurrentPlaneHi:	db $E0	; Current plane address hi byte

STitle1:	DEFM "ORIGINAL GAME 1979 ATARI INC",0
STitle2:	DEFM "VECTOR-06C DEMO VERSION NZEEMIN",0
SPressToStart:	DEFM "PRESS FIRE TO START",0
SGameOver:	DEFM "GAME OVER",0

DrawTitles:
  ld hl,$821C
  ld (TextAddr),hl
  ld hl,STitle1
  call DrawString
  ld hl,$800C
  ld (TextAddr),hl
  ld hl,STitle2
  call DrawString
  ret

ProcessKeyboard:
  ld c,a
  and 1			; bit 0 - if Fire pressed
  ld (FireSw),a		; save the fire key status
  ld a,c
  rra
  rra			; bit 1 - if Left pressed
  jp nc,ProcessKeyboard_1
  ld c,a
  ld a,(ShipDir)
  dec a			; rotate left
  and $1F
  ld (ShipDir),a
  ld a,c
ProcessKeyboard_1:
  rra			; bit 2 - if Right pressed
  jp nc,ProcessKeyboard_2
  ld c,a
  ld a,(ShipDir)
  inc a			; rotate right
  and $1F
  ld (ShipDir),a
  ld a,c
ProcessKeyboard_2:
  ld c,a
  and 1			; bit 3 - if Thrust pressed
  ld (ThrustSw),a
  ld a,c
  and 2			; bit 4 - if Hyper pressed
  ld (HyprSpcSw),a
  ld a,c
  and 4			; bit 5 - if Enter/Esc pressed
;TODO
  ret

;----------------------------------------------------------------------------
AstroCodeBeg:

ThrustSw:		db	0
HyprSpcSw:		db	0
FireSw:			db	0	; Fire button status

NumPlayers:		db	0	; 0 = Not playing, 1 = In the Game
PlayerScore:		db	0,0	; Player score as two BCD bytes
ShipsPerGame:		db	3
PlayerShips:		db	3	; Current number of player ships
ShpShotTimer:		db	0
ShipDir:		db	8	; Ship direction 0..31; 0 = W, 8 = N, 16 = E, 24 = S
ShipBulletSR:		db	0	; Counter to limit ship fire rate
ShipXAccel:		db	0
ShipYAccel:		db	0
ScrTimer:		db	0	; Countdown timer for saucer spawn
ScrTmrReload:		db	0	; Reload value for saucer timer
AstPerWave:		db	2
CurAsteroids:		db	0	; Current number of asteroids

; Object record format:
; + 0:      Status byte: 0 = Not active
; + 1:      Type / Subtype
; + 2-3:    X position
; + 4-5:    Y position
; + 6:      X speed
; + 7:      Y speed
MaxObjects EQU 38	; Total 38 object records
Objects:
; Ship object record
ShipStatus:		db	0	; 0=No Ship Or In Hyperspace, 1=Alive, $A0-FF=Ship Exploding
			db	0	; Type = Ship
ShipXPos:		dw	1366
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
; Asteroid objects, 26 records
MaxAsteroids EQU 26
AstObjects:		db	0, 4, 0,0,0,0, 0,0
			db	0, 4, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
			db	0, 3, 0,0,0,0, 0,0
; Ship bullet objects, 4 records
ShipShotObjects:	db	0, 5, 0,0,0,0, 0,0
			db	0, 5, 0,0,0,0, 0,0
			db	0, 5, 0,0,0,0, 0,0
			db	0, 5, 0,0,0,0, 0,0
; Soucer bullet objects, 2 records
ScrShotObjects:		db	0, 5, 0,0,0,0, 0,0
			db	0, 5, 0,0,0,0, 0,0
; Ship debris objects, 4 records
ShipDebrisObjects:	db	0, $87, 0,0,0,0, 0,-2
			db	0, $07, 0,0,0,0, -2,1
			db	0, $07, 0,0,0,0, 2,-1
			db	0, $87, 0,0,0,0, 2,2
; End of the Objects array
;
; X,Y shifts from object's sprite left-top corner to the object center
DrawObjsXYShift:
  db	8, 8		; 0 - ship
  db	8, 7		; 1 - sauser
  db	4, 4		; 2 - S-size rock
  db	8, 8		; 3 - M-size rock
  db	12, 16		; 4 - L-size rock
  db	0, 0		; 5 - ship or sauser bullets
  db	8, 8		; 6 - shrapnel
  db	4, 4		; 7 - debris
;
; Object's hit radius table to use in collision detection
ObjectsHitRadius:
  db	64		; 0 - ship
  db	30		; 1 - sauser
  db	32		; 2 - S-size rock
  db	64		; 3 - M-size rock
  db	128		; 4 - L-size rock
  db	0		; 5 - ship or sauser bullets
  db	0		; 6 - shrapnel
  db	0		; 7 - debris

;----------------------------------------------------------------------------

; Initialize Game Variables
InitGameVars:
  ld a,4		; Prepare to start wave 1 with 4 asteroids (+2 later).
  ld (AstPerWave),a
  xor a
  ld (ShipStatus),a
  ld (ShpShotTimer),a
  ld (PlayerScore),a
  ld (PlayerScore+1),a
  ld (CurAsteroids),a
  ret

UpdateShipFire:
; Check ShipBulletSR counter first
  ld a,(ShipBulletSR)
  or a
  jp z,UpdateShipFire_1
  dec a
  ld (ShipBulletSR),a
  ret
UpdateShipFire_1:
  ld a,(FireSw)
  or a
  ret z
; Fire key pressed - creating new bullet
  ld a,8		; counter initial value
  ld (ShipBulletSR),a
; Find an empty bullet slot
  ld hl,ShipShotObjects
  ld b,4		; ship bullets max
  ld de,$0008		; object record size
UpdateShipFire_2:
  ld a,(hl)		; check the status
  or a
  jp z,UpdateShipFire_3	; inactive => use the slot
  add hl,de		; next record
  dec b
  jp nz,UpdateShipFire_2; continue the loop
  ret			; no free bullet slots => exit
UpdateShipFire_3:	; found free slot, HL = object record
; Create new bullet
  ld a,28		; active status + bullet timer value
  ld (hl),a		; activate the bullet
  inc hl
  inc hl		; now HL = object record + 2, at X lo
  ld de,ShipXPos
  ld a,(de)		; get X lo
  ld (hl),a		; set X lo
  inc de
  inc hl
  ld a,(de)		; get X hi
  ld (hl),a		; set X hi
  inc de
  inc hl
  ld a,(de)		; get Y lo
  ld (hl),a		; set Y lo
  inc de
  inc hl
  ld a,(de)		; get Y hi
  ld (hl),a		; set Y hi
  inc hl
  call GetShipDirSinCos
  ld a,c		; get Cos(ShipDir)
  ld (hl),a		; set X speed
  inc hl
  ld a,b		; get Sin(ShipDir)
  ld (hl),a		; set Y speed
  ret

; Get Sinus and Cosinus values for the ShipDir
; Returns: B = Sin(ShipDir), C = Cos(ShipDir)
GetShipDirSinCos:
  push hl
; Get Sin(ShipDir)
  ld a,(ShipDir)
  ld c,a		; save it for later
  ld hl,SineTbl
  add a,l
  ld l,a
  jp nc,GetShipDirSinCos_1
  inc h
GetShipDirSinCos_1:
  ld b,(hl)
; Get Cos(ShipDir)
  ld a,c		; restore ShipDir
  sub 8
  and $1F		; keep 0..31 value
  ld hl,SineTbl
  add a,l
  ld l,a
  jp nc,GetShipDirSinCos_2
  inc h
GetShipDirSinCos_2:
  ld c,(hl)
  pop hl
  ret

; ShipDir to Sine table
SineTbl:
  db	0,12,24,36,45,53,59,63,64,63,59,53,45,36,24,12
  db	0,-12,-24,-36,-45,-53,-59,-63,-64,-63,-59,-53,-45,-36,-24,-12

; Collision detection for all objects
HitDectection:
; Loop thru rock objects
  ld hl,AstObjects
  ld b,MaxAsteroids	; number of objects
HitDectection_R1:
  ld a,(hl)		; get rock object status
  or a
;TODO: skip shrapnel objects
  jp z,HitDectection_RS	; not alive, skipping
  push hl		; save the rock object address
;TODO: get hit box size for this rock type
  inc hl
  inc hl		; HL = rock object + 2, at X lo
  ex de,hl		; now DE = rock object + 2
;  push de		; save the rock object address + 2
; Check this rock against all bullets
;TODO: check UFO bullets too
  ld hl,ShipShotObjects
  ld c,4		; number of objects
HitDectection_B1:
  ld a,(hl)		; get bullet object status
  or a
  jp z,HitDectection_BS
  push bc		; save counters B, C
  push hl		; save the bullet object address
  inc hl
  inc hl		; HL = bullet object + 2, at X lo
; check if we have the hit
  ld a,128		;STUB for hit box size
  call HitTest		; returns Carry=1 for hit
  jp nc,HitDectection_BN
; We have a hit between the bullet and the rock
  xor a
  pop hl		; restore the bullet object address
  ld (hl),a		; deactivate the bullet object
  pop bc		; restore counters B, C
  pop hl		; restore the rock object address
  call BreakAsteroid    ; split the rock
  jp HitDectection_RS	; continue the loop by rocks
HitDectection_BN:
  pop hl		; restore the bullet object address
  pop bc		; restore counters B, C
HitDectection_BS:
  dec c
  jp z,HitDectection_BE
  ld de,$0008
  add hl,de		; to the next bullet record
  jp HitDectection_B1
HitDectection_BE:	; end of loop by bulets
;  pop de		; restore the rock object address + 2
; ; Check this rock against the ship object
;   ld hl,ShipXPos
;   ld a,128+64		;STUB for hit box size
;   call HitTest		; returns Carry=1 for hit
;   jp nc,HitDectection_SN
; ; We have a hit between the ship and the rock
; ;TODO: explode the ship
;   pop hl		; restore the rock object address
;   xor a
;   ld (hl),a		; deactivate the rock object
;   jp HitDectection_RS
HitDectection_SN:
  pop hl		; restore the rock object address
HitDectection_RS:
  ld de,$0008
  add hl,de		; to the next record
  dec b
  jp nz,HitDectection_R1  ; continue loop by rocks

  ret

; Check if we have a collision
;   HL = object 1 address + 2 - at X lo
;   DE = object 2 address + 2 - at X lo
;   A = hit distance
; Returns: Carry=1 - hit, Carry=0 - no hit
HitTest:
; get X1 and X2
  ex de,hl		; now DE = object1 + 2, HL = object2 + 2
  ld c,(hl)		; get X2 lo
  inc hl
  ld b,(hl)		; get X2 hi, now BC = X2
  inc hl		; now HL = object2 + 4
  push hl		; save HL = object2 + 4
  ex de,hl		; now HL = object1 + 2
  ld e,(hl)		; get X1 lo
  inc hl
  ld d,(hl)		; get X1 hi; now DE = X1
  inc hl
  push hl		; save HL = object1 + 4
; calculate dX = abs(X1 - X2)
  push af		; save A = hit distance
  call SubAbs		; HL = abs(X1 - X2); Z=1 if H is zero
  pop bc		; restore B = hit distance
; check if dX < hit distance
  jp nz,HitTest_1	; Z=0 => dX > 255 => not a hit
  ld a,l
  sub b
  jp c,HitTest_2	; dX < hit distance => within the hit box by X, let's check by Y
; distance >= hit distance => not a hit
HitTest_1:
  pop hl
  pop hl		; empty stack
  ret			; Carry=0 - no hit
HitTest_2:
; get Y1 and Y2
  pop hl		; HL = object1 + 4, at Y1 lo
  pop de		; DE = object2 + 4, at Y2 lo
  push bc		; save B = hit distance
  ld c,(hl)		; get Y1 lo
  inc hl
  ld b,(hl)		; get Y1 hi, now BC = Y1
  ex de,hl		; now HL = object2 + 4
  ld e,(hl)		; get Y2 lo
  inc hl
  ld d,(hl)		; get Y2 hi; now DE = Y2
; calculate dY = abd(Y2 - Y1)
  call SubAbs		; HL = abs(Y2 - Y1); Z=1 if H is zero
  pop bc		; restore B = hit distance
; check if dY < hit distance
  ret nz		; Z=0 => dY > 255 => not a hit
  ld a,l
  sub b
  ret nc		; dY >= hit distance => not a hit, Carry=0
  ret			; dy < hit distance => within the hit box, Carry=1

; Subtract and get absolute value
; Result HL = abs(DE - BC); returns Z=1 if H is zero - result is 0..255
SubAbs:
; calculate HL = DE - BC
  ld a,e
  sub c			; sub lo
  ld l,a
  ld a,d
  sbc a,b		; sub hi with carry
  ld h,a
  ret nc		; no Carry means we have a positive value
; calculate HL = BC - DE
  ld a,c
  sub e			; sub lo
  ld l,a
  ld a,b
  sbc a,d		; sub hi with carry
  ld h,a
  ret

DrawObjects:
  ld b,MaxObjects	; number of objects
  ld hl,Objects
DrawObjects_1:
  ld a,(hl)		; get status byte
  or a			; empty object?
  jp z,DrawObjects_next	; yes => skip it
  push bc
  push hl		; store object address
; get object type and call the draw procedure
  inc hl
  ld a,(hl)		; get object type
  push af		; store object type
  inc hl		; now HL points to the object coords
  call CalcScreenAddr
  ex de,hl		; now DE = screen address
  ld (DrawObjects_2+1),a  ; store the shift
; calculate draw procedure address
  pop af		; restore object type
  and 7			; 0..7
  add a,a
  ld c,a
  ld b,0
  ld hl,DrawProcTable
  add hl,bc
  ld a,(hl)
  inc hl
  ld h,(hl)
  ld l,a		; now HL = draw procedure address
; call the draw procedure
  ld (DrawObjects_3+1),hl  ; prepare the call parameter
DrawObjects_2:
  ld a,$00		; shift 0..7
  pop hl		; restore record address
  push hl		; and store again
DrawObjects_3:
  call $0000		; call the draw procedure; HL = object address, DE = screen address, A = shift 0..7
; finishing the iteration
  pop hl		; restore record address
  pop bc
DrawObjects_next:
  ld de,$0008		; record size
  add hl,de		; next object record
  dec b
  jp nz,DrawObjects_1	; continue the loop by objects
DrawNullProc:		; call point for a void draw procedure
  ret

DrawProcTable:
  dw DrawShipProc	; 0 - ship
  dw DrawSauserProc	; 1 - sauser
  dw DrawRockSProc	; 2 - S-size rock
  dw DrawRockMProc	; 3 - M-size rock
  dw DrawRockLProc	; 4 - L-size rock
  dw DrawBulletProc	; 5 - ship or sauser bullets
  dw DrawShrapnelProc	; 6 - shrapnel
  dw DrawDebrisProc	; 7 - debris

; For all draw procedures registers are:
; HL = object address, DE = screen address, A = shift 0..7

DrawShipProc:
  push af		; save A = shoft 0..7
  ld a,(ShipDir)	; get ship direction
  and $1F		; 0..31
  cp 16			; 0..15 or 16..31 ?
  ld hl,DrawSprite24x16	; draw sprite up-to-down
  jp c,DrawShipProc_2	; ShipDir = 0..15 => jump
; ShipDir = 16..31
  ld c,a
  ld a,32
  sub c			; A = 16..1
  ld hl,DrawSprite24x16R	; draw sprite down-to-up
DrawShipProc_2:
  ld (DrawShipProc_4+1),hl  ; put draw sprite call address
; Calculate sprite address, A = 0..16
  add a,a
  ld l,a
  ld h,0
  ld bc,TableMul384
  add hl,bc
  ld a,(hl)		; lo byte
  inc hl
  ld h,(hl)		; hi byte
  ld l,a
  ld bc,Ship00S0	; base sprite address
  add hl,bc		; now HL = base sprite address for the ship direction
; Chech the Thrust status, adjust the sprite if needed
  ld a,(ThrustSw)	; get Thrust button status
  or a
  jp z,DrawShipProc_3
  ld bc,384*17		; shift from Ship sprite to Ship+Fire sprite
  add hl,bc
DrawShipProc_3:
  pop af		; restore shift A = 0..7
  call Multiply48Base	; calculate sprite address based on shift A = 0..7
  ex de,hl		; now HL = screen address, DE = sprite address
DrawShipProc_4:
  call DrawSprite24x16
  ret

DrawSauserProc:
;TODO
  ret

DrawRockSProc:
  push af		; save shift
  inc hl		; now HL = object record + 1, at Type
  ld a,(hl)		; get type/subtype
  and $C0		; bits 6-7 = subtype
  ld l,a
  ld h,0
  add hl,hl		; subtype 0..3 * 128
  ld bc,RockS0S0	; base sprite address
  add hl,bc
  pop af		; restore shift
  call Multiply16Base	; calculate sprite address based on shift A = 0..7
  ex de,hl		; now HL = screen address, DE = sprite address
  call DrawSprite16x8
  ret

DrawRockMProc:
  push af		; save shift
  inc hl		; now HL = object record + 1, at Type
  ld a,(hl)		; get type/subtype
  rla
  rla
  and 3			; subtype 0..3
  add a,a
  ld l,a
  ld h,0
  ld bc,TableMul384
  add hl,bc
  ld a,(hl)		; lo byte
  inc hl
  ld h,(hl)		; hi byte
  ld l,a
  ld bc,RockM1S0	; base sprite address
  add hl,bc
  pop af
  call Multiply48Base	; calculate sprite address based on shift A = 0..7
  ex de,hl		; now HL = screen address, DE = sprite address
  call DrawSprite24x16
  ret

DrawRockLProc:
  add a,a
  ld c,a		; save shift * 2
  inc hl		; now HL = object record + 1, at Type
  ld a,(hl)		; get type/subtype
  rra
  rra			; subtype bits 6..7 -> bits 4..5
  and $30
  or c			; now A = draw procedure number * 2
  ld hl,DrawRockLAddrs	; table address
  add a,l
  ld l,a
  jp nc,DrawRockLProc_1
  inc h
DrawRockLProc_1:	; now HL = address in the table
  ld c,(hl)		; get lo
  inc hl
  ld b,(hl)		; get hi; now BC = sprite drawing code address
  push bc		; store the sprite drawing code address to call
  ex de,hl		; now HL = screen address
  ret			; jumping to the sprite drawing code
DrawRockLAddrs:
  dw	DrawRockL0S0, DrawRockL0S1, DrawRockL0S2, DrawRockL0S3
  dw	DrawRockL0S4, DrawRockL0S5, DrawRockL0S6, DrawRockL0S7
  dw	DrawRockL1S0, DrawRockL1S1, DrawRockL1S2, DrawRockL1S3
  dw	DrawRockL1S4, DrawRockL1S5, DrawRockL1S6, DrawRockL1S7
  dw	DrawRockL2S0, DrawRockL2S1, DrawRockL2S2, DrawRockL2S3
  dw	DrawRockL2S4, DrawRockL2S5, DrawRockL2S6, DrawRockL2S7
  dw	DrawRockL3S0, DrawRockL3S1, DrawRockL3S2, DrawRockL3S3
  dw	DrawRockL3S4, DrawRockL3S5, DrawRockL3S6, DrawRockL3S7

DrawShrapnelProc:
  ld hl,ShrapnelS0	; base sprite address - smaller sprite
  call Multiply48Base	; calculate sprite address based on shift A = 0..7
  ex de,hl		; now HL = screen address, DE = sprite address
  call DrawSprite24x16
  ret

DrawBulletProc:
  and 7
  ld c,a		; shift 0..7
  ld b,0
  ld hl,ShotSprite	; base sprite address
  add hl,bc
  ld a,(hl)		; bullet sprite byte
  ex de,hl		; now HL = screen address
  xor (hl)
  ld (hl),a
  ret

DrawDebrisProc:
  ld c,a		; save shift
  inc hl		; now HL = object record + 1, at Type
  ld a,(hl)
  ld hl,Debris1S0	; base sprite address
  rla			; check bit 7
  jp nc,DrawDebrisProc_1
  ld hl,Debris2S0	; base sprite address
DrawDebrisProc_1:
  ld a,c
  call Multiply16Base	; calculate sprite address based on shift A = 0..7
  ex de,hl		; now HL = screen address, DE = sprite address
  call DrawSprite16x8
;TODO: use Debris1/Debris2, use reflections
  ret

; Multiply A by 16; A = 0..7, HL = base address
; Result: HL = base address + A * 16
Multiply16Base:
  and 7
  add a,a
  add a,a
  add a,a
  add a,a
  ld c,a
  ld b,0
  add hl,bc
  ret

; Multiply A by 48; A = 0..7, HL = base address
; Result: HL = base address + A * 48
Multiply48Base:
  push hl		; store base address
  and 7
  add a,a
  ld c,a
  ld b,0
  ld hl,TableMul48
  add hl,bc		; now HL = address in the table
  ld c,(hl)		; get lo
  inc hl
  ld b,(hl)		; get hi; now HL = A * 48
  pop hl		; restore base address
  add hl,bc
  ret

TableMul48:
	dw	0, 48, 48*2, 48*3, 48*4, 48*5, 48*6, 48*7
TableMul384:
	dw	384*0,  384*1,  384*2,  384*3,  384*4,  384*5,  384*6,  384*7
	dw	384*8,  384*9,  384*10, 384*11, 384*12, 384*13, 384*14, 384*15
	dw	384*16, 384*17, 384*18, 384*19, 384*20, 384*21, 384*22, 384*23
	dw	384*24, 384*25, 384*26, 384*27, 384*28, 384*29, 384*30, 384*31


; Calculate screen address and shift from the object coordinates
;   A = object type
;   HL = object address + 2, points to X pos word, next one is Y pos word
; Returns:
;   HL = screen address
;   A = shift 0..7
CalcScreenAddr:
; calculate address for X,Y-shifts for the object
  and 7			; object type 0..7
  add a,a
  ld de,DrawObjsXYShift	; table address
  add a,e
  ld e,a
  jp nc,CalcScreenAddr_1
  inc d
CalcScreenAddr_1:	; now DE = address for X,Y-shifts
  push de		; save the address
; get X position
  ld e,(hl)		; get X lo
  inc hl		; now HL = object record + 3, at X hi
  ld d,(hl)		; get X hi
  ex de,hl		; now HL = X, DE = object addr + 3
; calculate X * 1.5, as X + X / 2
  ld a,h
  or a			; clear carry flag
  rra
  ld b,a
  ld a,l
  rra
  ld c,a		; now BC = X / 2
  add hl,bc		; now HL = X + X / 2
; divide X * 1.5 by 16
  ld a,h
  rra			; 1 hi
  ld h,a
  ld a,l
  rra			; 1 lo
  ld l,a
  ld a,h
  rra			; 2 hi
  ld h,a
  ld a,l
  rra			; 2 lo
  ld l,a
  ld a,h
  rra			; 3 hi
  ld h,a
  ld a,l
  rra			; 3 lo
  ld l,a
  ld a,h
  rra			; 4 hi
  ld h,a
  ld a,l
  rra			; 4 lo; now A = 0..255 screen X pos
; sub X-shift
  pop hl		; restore address for X,Y-shifts
  sub (hl)		; now A = 0..255 screen X pos, minus X-shift
  inc hl
  ld b,(hl)		; get Y-shift for later use
  push af		; save A for the shift
; divide A by 8
  rra
  rra
  rra
  and $1F		; now A = 0..31 screen column
  push af		; save A screen column
; get Y position
  ex de,hl		; now HL = object record + 3
  inc hl		; now HL = object record + 4, at Y lo
  ld e,(hl)		; get Y lo
  inc hl		; now HL = object record + 5, at Y hi
  ld a,(hl)		; get Y hi; we don't need HL value anymore
; divide Y position by 8
  rra			; 1 hi
  ld d,a
  ld a,e
  rra			; 1 lo
  ld e,a
  ld a,d
  rra			; 2 hi
  ld d,a
  ld a,e
  rra			; 2 lo
  ld e,a
  ld a,d
  rra			; 3 hi
  ld d,a
  ld a,e
  rra			; 3 lo, now A = 0..255 screen Y pos
  add a,b		; now A = 0..255 screen Y pos, plus Y-shift
; prepare results and return
  ld l,a
  pop af		; restore A screen column
CalcScreenAddr_P:
  or $E0		; plane start address, hi byte - mutable parameter
  ld h,a
  pop af		; restore A shift
  and 7			; keep 0..7 shift value
  ret

; Update all objetcs
UpdateObjects:
  ld b,MaxObjects	; number of objects
  ld hl,Objects
UpdateObjects_1:
  ld a,(hl)		; get status byte
  or a			; empty object?
  jp z,UpdateObjects_next	; yes => skip it
  push bc
  push hl		; store object address
  inc hl		; now HL = object address + 1, at Type
; check the object type
  ld a,(hl)		; get type
  and 7			; 0..7
  cp 5			; 5..7 ? these object types use Status as lifespan timer
  jp c,UpdateObjects_2
  dec hl		; go back to Status
  dec (hl)		; decrement the Status
  inc hl
UpdateObjects_2:
  inc hl
  inc hl
  inc hl
  inc hl
  inc hl		; now HL = object address + 6, at X speed
; update X
  ld a,(hl)		; get X speed
  or a
  jp z,UpdateObjects_skipX  ; zero SpeedX => skip
  ld b,0		; B will be hi byte for speed - sign extension
  jp p,UpdateObjects_X1	; skip if positive
  ld b,$FF		; sign extension
UpdateObjects_X1:
  ld c,a		; now BC = SpeedX
  push hl		; store HL = object address + 6
  dec hl
  dec hl
  dec hl		; now HL = object address + 3, at X hi
  ld d,(hl)
  dec hl		; now HL = object address + 2, at X lo
  ld e,(hl)		; now DE = X position
  ex de,hl		; now HL = X position, DE = object address + 2
  add hl,bc		; X = X + SpeedX
; for negative, add #0AAB to wrap into positive
  ld a,h
  or a
  jp p,UpdateObjects_XP
  ld bc,#0AAB
  add hl,bc
  jp UpdateObjects_XS
UpdateObjects_XP:	; new X is positive number
; check for upper bound, wrap on $0AAB = 2731
  ld a,h
  cp $0A		; check hi byte
  jp c,UpdateObjects_XS	; less than $0A00, no need to wrap => skip
  jp nz,UpdateObjects_X2  ; $AB00 or more, need to wrap => go wrap
  ld a,l		; for $0AXX need to check lo byte
  cp $AB
  jp c,UpdateObjects_XS	; less than $0AAB, no need to wrap => skip
UpdateObjects_X2:	; wrap by X
  ld a,l
  sub $AB		; subtract lo
  ld l,a
  ld a,h
  sbc a,$0A		; subtract hi
  ld h,a
UpdateObjects_XS:	; save new X
  ex de,hl		; now DE = new X position, HL = object address + 2, at X lo
  ld (hl),e		; save X lo
  inc hl		; now HL = object address + 3, at X hi
  ld (hl),d		; save X hi
  pop hl		; restore HL = object address + 6
UpdateObjects_skipX:
; update Y
  inc hl		; now HL = object address + 7, at Y speed
  ld a,(hl)		; get Y speed
  or a
  jp z,UpdateObjects_skipY
  ld b,0		; B will be hi byte for speed - sign extension
  jp p,UpdateObjects_Y1	; skip if positive
  ld b,$FF		; sign extension
UpdateObjects_Y1:
  ld c,a		; now BC = SpeedY
  dec hl
  dec hl		; now HL = object address + 4, at Y hi
  ld d,(hl)
  dec hl		; now HL = object address + 4, at Y lo
  ld e,(hl)		; now DE = Y position
  ex de,hl		; now HL = Y position, DE = object address + 4
  add hl,bc		; Y = Y + SpeedY
; check for upper bound, wrap
  ld a,h
  and $07		; max Y is $07FF = 2047
  ld h,a
UpdateObjects_YS:	; save new Y
  ex de,hl		; now DE = new Y position, HL = object address + 4, at Y lo
  ld (hl),e		; save Y lo
  inc hl		; now HL = object address + 5, at Y hi
  ld (hl),d		; save Y hi
; finishing the iteration
UpdateObjects_skipY:
  pop hl		; restore object address
  pop bc
UpdateObjects_next:
  dec b
  ret z
  ld de,$0008		; object record size
  add hl,de		; next object record
  jp UpdateObjects_1	; continue the loop

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
  ld de,AstObjects
  ld a,(AstPerWave)
  ld b,a		; counter
InitWaveVars_1:
  push bc
  ld hl,CurAsteroids
  inc (hl)		; adding one more now
  ld a,1		; 1 = active
  ld (de),a		; set asteroid state to Active
  inc de		; now DE = object record + 1
; set type and X position
  call Random16		; get HL = random number
  ex de,hl		; now HL = object record + 1, DE = random number
  ld a,d
  and $C0		; bits 6-7 for random rock subtype
  or 4			; type 4 - L-size rock
  ld (hl),a		; set asteroid type
  inc hl		; now DE = object record + 2, at X lo
  ld (hl),e		; set asteroid X lo
  inc hl
  ld a,d
  and 7 ;TODO: make it better:
  ;TODO: if upper bit = 0, X = random and $03FF         => X = 0..1023
  ;TODO: if upper bit = 1, X = $0AAA - random and $03FF => X = 2730..1707
  ld (hl),a		; set asteroid X hi
  inc hl
  ex de,hl
; set Y position
  call Random16		; get HL = random number
  ex de,hl		; now HL = object record + 4, DE = random number
  ld (hl),e		; set asteroid Y lo
  inc hl
  ld a,d
  and 7
  ld (hl),a		; set asteroid Y hi
  inc hl		; now HL = object record + 6, at X speed
; set X,Y velocity
  call SetRandomSpeed
  inc hl
  ex de,hl
; continue the loop
  pop bc
  dec b
  jp nz,InitWaveVars_1
  ret

; Center Ship on the screen
CenterShip:
  ld hl,1366
  ld (ShipXPos),hl
  ld hl,1024
  ld (ShipYPos),hl
  xor a
  ld hl,ShipXAccel
  ld (hl),a
  inc hl
  ld (hl),a
  ret

; Split the asteroid, only for M/L-sized rocks
;   HL = asteroid object record
;WARN! The procedure should NOT change HL and BC
BreakAsteroid:
  push bc
  push hl
; Get the rock type
  inc hl		; now HL = object record + 1, at Type
  ld a,(hl)		; get object type
  and 7			; 0..7
; Check for small rock
  cp 2			; small rock?
  jp z,BreakAsteroid_Sm	; yes => jump
;TODO: random-generate the rock sub-type
  ld a,(hl)		; get object type with sub-type
  dec a			; change the rock type: L -> M -> S
  ld (hl),a		; set the reduced Type
; Change the rock direction
  push hl		; save HL = object record + 1, at Type
; Create the second rock
  call GetFreeAstSlot
  pop de		; restore DE = object record + 1, at Type
  jp nz,BreakAsteroid_NS ; no slots available
  ld (hl),1		; set Status to activate the new object
  inc hl
; Copy over to the new rock - the Type, and X, Y position
  ld a,(de)		; get Type
  ld (hl),a		; set Type
  inc de
  inc hl
  ld a,(de)		; get X lo
  ld (hl),a		; set X lo
  inc de
  inc hl
  ld a,(de)		; get X hi
  ld (hl),a		; set X hi
  inc de
  inc hl
  ld a,(de)		; get Y lo
  ld (hl),a		; set Y lo
  inc de
  inc hl
  ld a,(de)		; get Y hi
  ld (hl),a		; set Y hi
  inc de		; now DE = object record + 6, at X speed
  inc hl		; now HL = object record + 6, at X speed
; Set new directions for the two rocks
  call SetRandomSpeed
  ex de,hl		; now HL = new rock + 6, DE = old rock + 7, at Y speed
  call SetRandomSpeed
;   dec de		; now DE = old rock + 6
;   ld a,(de)		; get speed X
;   cpl
;   ld (hl),a		; set speed X
;   inc de
;   inc hl
;   ld a,(de)		; get speed Y
;   cpl
;   ld (hl),a		; set speed Y
; Update number of asteroids
  ld hl,CurAsteroids
  inc (hl)		; one added
  jp BreakAsteroid_fin
BreakAsteroid_NS:	; no slot for second asteroid
  ex de,hl		; now HL = object record + 1
  inc hl
  inc hl
  inc hl
  inc hl
  inc hl		; now HL = object record + 6, at X speed
  call SetRandomSpeed
  jp BreakAsteroid_fin
; For a small rock, convert to shrapnel, set timer in Status
BreakAsteroid_Sm:
  ld a,6		; type = shrapnel
  ld (hl),a		; set Type
  dec hl		; now HL = object record + 0, at Status
  ld a,8		; timer value
  ld (hl),a		; set Status as a timer
  ld hl,CurAsteroids
  dec (hl)		; one less
BreakAsteroid_fin:
  pop hl
  pop bc
  ret

; Set X,Y velocity to random values
;   HL = object record + 6, at X speed
SetRandomSpeed:
  push de
  ex de,hl		; now DE = object record + 6
  call Random16		; get HL = random number
  ex de,hl		; now HL = object record + 6, DE = random number
  ld a,e
  and $8F		; keep the sign bit and lower nibble
  jp p,SetRandomSpeed_1	; jump if positive
  or $F0		; extend the sign for negative number
  sub 3			; -3..-18
  jp SetRandomSpeed_2
SetRandomSpeed_1:
  add a,3		; 3..18
SetRandomSpeed_2:
  ld (hl),a		; set X velocity
  inc hl
  ld a,d
  and $8F		; keep the sign bit and lower nibble
  jp p,SetRandomSpeed_3	; jump if positive
  or $F0		; extend the sign for negative number
  sub 3			; -3..-18
  jp SetRandomSpeed_4
SetRandomSpeed_3:
  add a,3		; 3..18
SetRandomSpeed_4:
  ld (hl),a		; set Y velocity
  pop de
  ret

; Find a free asteroid slot
; Returns: Z=1 - slot found, HL = object record address;
;          Z=0 - no empty slots
GetFreeAstSlot:
  ld hl,AstObjects	; address to start from
  ld de,$0008		; object record size
  ld b,MaxAsteroids	; number of asteroid object slots
GetFreeAstSlot_1:
  ld a,(hl)
  or a
  ret z			; found the empty slot; Z=1
  add hl,de		; next object record
  dec b
  jp nz,GetFreeAstSlot_1
  or a			; set Z=0
  ret

; Mark the ship not active; activate four debris objects;
; copy ship X,Y position to each debris object X,Y
DoShipExplosion:
  xor a
  ld (ShipStatus),a	; set not active
  ld bc,$0420		; B = number of debris objects, C = status value for debris objects
  ld hl,ShipDebrisObjects
DoShipExplosion_1:
  ld (hl),c		; set status value
  inc hl
  inc hl		; now HL = debris object + 2, at X lo
  ld de,ShipXPos	; start address for copying
REPT 4			; copy 4 bytes
  ld a,(de)
  inc de
  ld (hl),a
  inc hl
ENDM
  inc hl
  inc hl		; now HL points to the next object record
  dec b
  jp nz,DoShipExplosion_1
  ret

DrawPlayerScore:
  ld hl,$80FF		; screen address
  ld (TextAddr),hl
  ld hl,PlayerScore
  call DrawNumberString
  ret

DrawShipLives:
  ld a,(PlayerShips)
  ld b,a		; now B = ships to draw
  ld a,5		; max ships
  sub b
  ld c,a		; now C = spaces to draw
  ld hl,$81F0		; screen address
  ld (TextAddr),hl
DrawShipLives_1:
  ld a,$2F		; ship symbol
  call DrawChar
  dec b
  jp nz,DrawShipLives_1
DrawShipLives_2:
  ld a,$20		; space char
  call DrawChar
  dec c
  jp nz,DrawShipLives_2
  ret

; Draw BCD number as string "BBAA0", maximum is "99990"
;   HL = BCD number address, two bytes: AA BB
DrawNumberString:
  inc hl		; go to higher byte "BB"
  ld a,(hl)
  call DrawNumberBcdByteString
  dec hl		; go to lower byte "AA"
  ld a,(hl)
  call DrawNumberBcdByteString
  ld a,$30
  call DrawChar
  ret
; Draw BCD number as string "NN", maximum is "99"
DrawNumberBcdByteString:
  ld c,a
  rra
  rra
  rra
  rra
  and $0F
  add a,$30
  call DrawChar
  ld a,c
  and $0F
  add a,$30
  call DrawChar
  ret

;----------------------------------------------------------------------------

; Wait for any key
WaitAnyKey:
  call ReadKeyboard
  or a
  jp nz,WaitAnyKey	; Wait for unpress
WaitAnyKey_1:		; Wait for key press
  call ReadKeyboard
  or a
  ret nz		; pressed => return
; Increment the random seed
  ld hl,Random16_seed1
  inc (hl)		; increment lo
  jp nc,WaitAnyKey_1
  inc hl
  inc (hl)		; increment hi
  jp WaitAnyKey_1	; Wait for press

; Returns: A=key code, $00 no key; Z=0 for key, Z=1 for no key
; Key codes: Fire=$01, Left=$02, Right=$04, Thrust=$08, Hyper=$10, Enter/Esc=$20
ReadKeyboard:
  xor a
  ld (ReadKeyboard_3+1),a
  ld hl,ReadKeyboard_map  ; Point HL at the keyboard list
  ld b,2                  ; number of rows to check
ReadKeyboard_0:        
  ld e,(hl)               ; get address low
  inc hl
  ld d,(hl)               ; get address high
  inc hl
  ld a,(de)               ; get bits for keys
  ld c,8                  ; number of keys in a row
ReadKeyboard_1:
  rla			; shift A left; bit 0 sets carry bit
  jp c,ReadKeyboard_2	; if the bit is 1, the key's not pressed
  push af
  ld a,(ReadKeyboard_3+1)
  or (hl)               ; set bit for the key pressed
  ld (ReadKeyboard_3+1),a
  pop af
ReadKeyboard_2:
  inc hl		; next table address
  dec c
  jp nz,ReadKeyboard_1	; continue the loop by bits
  dec b
  jp nz,ReadKeyboard_0	; continue the loop by lines
ReadKeyboard_3:
  ld a,$00		; set the result
  or a			; set/reset Z flag
  ret

; Mapping: Arrows Left/Right - rotate the ship, Up - thrust,
;          US/SS/RusLat/ZB - fire, Tab - hyper
ReadKeyboard_map:
  DW KeyLineEx
  DB $01,$01,$01,$00,$00,$00,$00,$00  ; R/L SS  US
  DW KeyLine0
  DB $00,$04,$08,$02,$01,$20,$20,$10  ; Dn  Rt  Up  Lt  ZB  VK  PS  Tab

;----------------------------------------------------------------------------

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

; Draw character on the screen using Font
;   A = character to show
DrawChar:
  push hl
  push bc
;NOTE: Drawing a space char as a regular char to erase the place
; Calculate the symbol address
  cp $41
  jp c,DrawChar_2
  sub 7		; so 'A' comes right after '9'
DrawChar_2:
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
REPT 12
  ld a,(de)	; 0
  inc de
  ld (hl),a     ; put on the screen
  dec l		; one line lower
ENDM
DrawChar_next:
  ld hl,TextAddr+1   ; address of upper byte
  inc (hl)     ; increase column value
  pop bc
  pop hl
  ret

; Clear the whole screen
ClearPlane0123:
  ld hl,$0000
  call ClearPlane
  ld hl,$E000
  call ClearPlane
  ld hl,$C000
  call ClearPlane
ClearPlane3:
  ld hl,$A000
  jp ClearPlane
;
; Clear plane selected by A = plane address hi byte
ClearPlaneA:
  add a,$20
  ld h,a
  ld l,$00
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
  ld sp,$0000		; mutable parameter
ClearPlane_1:
REPT 256
  push de
ENDM
  dec b
  jp nz,ClearPlane_1
ClearPlane_fin:
  ld sp,$0000		; mutable parameter
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

; Get random number in A
GetRandNum:
  push bc
  call Random16
  pop bc
  ld a,h
  xor l
  ret

; Set mutable parameters to draw sprites on the given plane
;   A = plane address hi byte
SwitchToPlane:
  ld (NextColumn_P+1),a
  ld (CalcScreenAddr_P+1),a
  ret

; Draw sprite 16x8 by XOR - small rocks, ship debris
;   HL = address on the screen
;   DE = sprite address
DrawSprite16x8:
  ld a,h		; get column byte
  and $E0		; 3 top bits
  ld (DrawSprite16x8_3+1),a	; set the mutable parameter
  ld c,2		; 2 columns
DrawSprite16x8_1:
REPT 8
  ld a,(de)
  xor (hl)
  ld (hl),a
  inc de
  dec l
ENDM
  dec c
  ret z			; was last column => return
; back to the top row
  ld a,l
  add a,8
  ld l,a		; restore row L
; next column
  ld a,h
  inc a
  and $1F		; keep 0..31 column value
DrawSprite16x8_3:
  or $A0		; this parameter is mutable
  ld h,a
; continue the loop by columns
  jp DrawSprite16x8_1

; Draw sprite 24x16 by XOR
;   HL = address on the screen
;   DE = sprite address
DrawSprite24x16:
  ld a,h		; get column byte
  and $E0		; 3 top bits
  ld (DrawSprite24x16_3+1),a	; set the mutable parameter
  ld c,3		; 3 columns
DrawSprite24x16_1:
REPT 16
  ld a,(de)
  xor (hl)
  ld (hl),a
  inc de
  dec l
ENDM
  dec c
  ret z			; was last column => return
; back to the top row
  ld a,l
  add a,16
  ld l,a		; restore row L
; next column
  ld a,h
  inc a
  and $1F		; keep 0..31 column value
DrawSprite24x16_3:
  or $A0		; this parameter is mutable
  ld h,a
; continue the loop by columns
  jp DrawSprite24x16_1

; Draw ship sprite 24x16 by XOR reflected vertically
;   HL = address on the screen
;   DE = sprite address
DrawSprite24x16R:
  ld a,h		; get column byte
  and $E0		; 3 top bits
  ld (DrawSprite24x16R_3+1),a	; set the mutable parameter
  ld a,l
  sub 15		; 15 lines lower
  ld l,a
  ld c,3		; 3 columns
DrawSprite24x16R_1:
REPT 16
  ld a,(de)
  xor (hl)
  ld (hl),a
  inc de
  inc l
ENDM
  dec c
  ret z			; was last column => return
; back to the bottom row
  ld a,l
  sub 16
  ld l,a		; restore row L
; next column
  ld a,h
  inc a
  and $1F		; keep 0..31 column value
DrawSprite24x16R_3:
  or $A0		; this parameter is mutable
  ld h,a
; continue the loop by columns
  jp DrawSprite24x16R_1

NextColumn:
  ld a,h
  inc a
  and $1F		; keep 0..31 column value
NextColumn_P:
  or $E0		; this parameter is be mutable
  ld h,a
  ret

;----------------------------------------------------------------------------
AstroCodeEnd:

INCLUDE "astrofont.asm"

AstroSpriteBeg:
INCLUDE "astrosprs.asm"
ShotSprite:	db	$80,$40,$20,$10,$08,$04,$02,$01
AstroSpriteMid:
INCLUDE "astrosprt.asm"
AstroSpriteEnd:

AstroXSpaceTil8000 EQU $8000 - AstroSpriteEnd

  ORG $A000
INCLUDE "astrotscr.asm"

;----------------------------------------------------------------------------
END
