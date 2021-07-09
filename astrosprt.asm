DrawRockL0S0:
  dec l
  ld bc,$0506
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 1 = $06
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 2 = $05
  dec l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 3 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 4 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 5 = $10
  dec l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 6 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 7 = $40
  dec l
  ld bc,$2080
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 9 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 10 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 11 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 12 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 13 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 14 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 15 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 16 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 17 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 18 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 19 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 20 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 21 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 22 = $80
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 23 = $80
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 24 = $40
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 25 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 26 = $20
  dec l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 27 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 28 = $08
  dec l
  ld de,$0304
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 29 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 30 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 31 = $03
  call NextColumn	; col 1
  ld de,$01FE
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 31 = $FE
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 30 = $01
  ld a,l
  add a,$17		; skip 23 rows
  ld l,a
  ld de,$2418
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 7 = $18
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 6 = $24
  inc l
  ld de,$8242
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 5 = $42
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 4 = $82
  inc l
  ld de,$6081
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $81
  inc l
  inc l
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 1 = $60
  dec l
  ld de,$10A0
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $A0
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $10
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 5 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 6 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 7 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 8 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 9 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 10 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 11 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 12 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 13 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 14 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 15 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 16 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 17 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 18 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 19 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 20 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 21 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 22 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 23 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 24 = $02
  dec l
  ld de,$1804
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 25 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 26 = $18
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 27 = $20
  dec l
  ld de,$0040
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 29 = $80
  ret
DrawRockL0S1:
  dec l
  ld bc,$0203
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 1 = $03
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 2 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 3 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 4 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 5 = $08
  dec l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 6 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 7 = $20
  dec l
  ld bc,$1040
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 9 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 10 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 11 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 12 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 13 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 14 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 15 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 16 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 17 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 18 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 19 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 20 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 21 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 22 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 23 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 24 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 25 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 26 = $10
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 27 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 28 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 29 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 30 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 31 = $01
  call NextColumn	; col 1
  ld de,$0CFF
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 31 = $FF
  ld a,l
  add a,$18		; skip 24 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 7 = $0C
  inc l
  ld de,$2112
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 6 = $12
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 5 = $21
  inc l
  ld de,$8041
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $41
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 3 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $80
  inc l
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld de,$5030
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $30
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 2 = $50
  dec l
  ld de,$0488
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 3 = $88
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 4 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 5 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 6 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 7 = $01
  dec l
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 9 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 10 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 11 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 12 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 13 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 14 = $02
  dec l
  ld bc,$0104
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 15 = $04
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 16 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 17 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 18 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 19 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 20 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 21 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 22 = $01
  dec l
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 24 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 25 = $02
  dec l
  ld de,$100C
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 26 = $0C
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $10
  dec l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 29 = $40
  dec l
  ld de,$0080
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $80
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  ld a,l
  add a,$07		; skip 7 rows
  ld l,a
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 23 = $80
  ld a,l
  add a,$0F		; skip 15 rows
  ld l,a
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 8 = $80
  ret
DrawRockL0S2:
  dec l
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 1 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 2 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 3 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 4 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 5 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 6 = $08
  dec l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 7 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 8 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 9 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 10 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 11 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 12 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 13 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 14 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 15 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 16 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 17 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 18 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 19 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 20 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 21 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 22 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 23 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 24 = $10
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 25 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 26 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 27 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 28 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 29 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 30 = $01
  dec l
  call NextColumn	; col 1
  ld de,$06FF
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 31 = $FF
  ld a,l
  add a,$18		; skip 24 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 7 = $06
  inc l
  ld de,$1009
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 6 = $09
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 5 = $10
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $40
  inc l
  ld de,$1880
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 1 = $80
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 1 = $18
  dec l
  ld de,$4428
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $28
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $44
  dec l
  ld de,$8182
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $82
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 5 = $81
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 6 = $01
  ld a,l
  sub $06		; skip 6 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 12 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 13 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 14 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 15 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 16 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 17 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 18 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 19 = $01
  ld a,l
  sub $06		; skip 6 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 25 = $01
  dec l
  ld de,$0806
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 26 = $06
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $08
  dec l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 29 = $20
  dec l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 31 = $80
  call NextColumn	; col 3
  ld a,l
  add a,$07		; skip 7 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 23 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 22 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $80
  ld a,l
  add a,$09		; skip 9 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 11 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 9 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 8 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 7 = $80
  ret
DrawRockL0S3:
  dec l
  dec l
  dec l
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 3 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 4 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 5 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 6 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 7 = $08
  dec l
  ld bc,$0410
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 9 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 10 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 11 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 12 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 13 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 14 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 15 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 16 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 17 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 18 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 19 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 20 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 21 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 22 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 23 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 24 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 25 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 26 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 27 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 28 = $01
  dec l
  dec l
  dec l
  call NextColumn	; col 1
  ld de,$807F
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 31 = $7F
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 30 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $80
  ld a,l
  add a,$16		; skip 22 rows
  ld l,a
  ld de,$0803
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 7 = $03
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 6 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 5 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 4 = $10
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 3 = $10
  inc l
  ld de,$C0A0
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 2 = $A0
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $C0
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld de,$140C
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $0C
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 2 = $14
  dec l
  ld de,$4122
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 3 = $22
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 4 = $41
  dec l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 5 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 6 = $80
  ld a,l
  sub $09		; skip 9 rows
  ld l,a
  ld de,$0301
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 15 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 16 = $01
  ld a,l
  sub $0A		; skip 10 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 26 = $03
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 27 = $04
  dec l
  ld de,$2008
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $08
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 29 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $20
  dec l
  ld de,$80C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 31 = $C0
  call NextColumn	; col 3
  ld a,l
  add a,$06		; skip 6 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $80
  inc l
  ld de,$2040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 24 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 23 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 21 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 20 = $40
  inc l
  ld bc,$2080
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 19 = $80
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 18 = $80
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 17 = $80
  inc l
  inc l
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 14 = $80
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 13 = $80
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 12 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 11 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 10 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 9 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 8 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 6 = $80
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 5 = $80
  ret
DrawRockL0S4:
  dec l
  dec l
  dec l
  dec l
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 4 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 5 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 6 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 7 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 8 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 9 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 10 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 11 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 12 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 13 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 14 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 15 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 16 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 17 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 18 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 19 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 20 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 21 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 22 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 23 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 24 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 25 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 26 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 27 = $01
  dec l
  dec l
  dec l
  dec l
  call NextColumn	; col 1
  ld de,$403F
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 31 = $3F
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 30 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $40
  inc l
  ld de,$0280
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $80
  ld a,l
  add a,$15		; skip 21 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 7 = $01
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 6 = $02
  inc l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 5 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 4 = $08
  inc l
  ld de,$5088
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $88
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $50
  inc l
  ld de,$0660
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 1 = $60
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 1 = $06
  dec l
  ld de,$110A
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $0A
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $11
  dec l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 5 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 6 = $40
  dec l
  ld de,$0280
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 7 = $80
  ld a,l
  sub $13		; skip 19 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 26 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 27 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 29 = $08
  dec l
  ld de,$E010
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 31 = $E0
  call NextColumn	; col 3
  ld a,l
  add a,$05		; skip 5 rows
  ld l,a
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 26 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 24 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 23 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 21 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 20 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 19 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 18 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 17 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 16 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 15 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 14 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 13 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 12 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 11 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 10 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 9 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 8 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 6 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 5 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 4 = $80
  ret
DrawRockL0S5:
  ld a,l
  sub $06		; skip 6 rows
  ld l,a
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 6 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 7 = $02
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 8 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 9 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 10 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 11 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 12 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 13 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 14 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 15 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 16 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 17 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 18 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 19 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 20 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 21 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 22 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 23 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 24 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 25 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 26 = $01
  ld a,l
  sub $05		; skip 5 rows
  ld l,a
  call NextColumn	; col 1
  ld de,$201F
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 31 = $1F
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 30 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $80
  ld a,l
  add a,$15		; skip 21 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 6 = $01
  inc l
  ld de,$8482
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 5 = $82
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 4 = $84
  inc l
  ld de,$2844
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $44
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $28
  inc l
  ld de,$0330
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 1 = $30
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 1 = $03
  dec l
  ld de,$0805
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $05
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $08
  dec l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 5 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 6 = $20
  dec l
  ld de,$02C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 7 = $C0
  ld a,l
  sub $14		; skip 20 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 27 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 28 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $08
  dec l
  ld de,$C0F0
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 31 = $F0
  call NextColumn	; col 3
  ld a,l
  add a,$05		; skip 5 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 26 = $C0
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 25 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $10
  inc l
  ld bc,$2008
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 23 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 22 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 19 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 18 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 17 = $20
  inc l
  ld bc,$1040
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 16 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 15 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 14 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 13 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 12 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 11 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 10 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 9 = $10
  inc l
  ld bc,$2008
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 8 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 7 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 6 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 5 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 4 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 3 = $80
  ret
DrawRockL0S6:
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 7 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 8 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 9 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 10 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 11 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 12 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 13 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 15 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 16 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 17 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 18 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 19 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 20 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 21 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 22 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 23 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 24 = $01
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  call NextColumn	; col 1
  ld de,$100F
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 31 = $0F
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 30 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $10
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $40
  inc l
  ld de,$4180
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 26 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 25 = $80
  ld a,l
  add a,$13		; skip 19 rows
  ld l,a
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 6 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 5 = $41
  inc l
  ld de,$2242
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $42
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 3 = $22
  inc l
  ld de,$1814
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 2 = $14
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $18
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 1 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 2 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 3 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 4 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 5 = $08
  dec l
  ld de,$6090
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 6 = $90
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 7 = $60
  ld a,l
  sub $15		; skip 21 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 28 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 29 = $02
  dec l
  ld de,$F804
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 31 = $F8
  call NextColumn	; col 3
  inc l
  inc l
  inc l
  inc l
  ld de,$6080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 27 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 26 = $60
  inc l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 25 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $08
  inc l
  ld bc,$1004
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 23 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 22 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $08
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 19 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 18 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 17 = $10
  inc l
  ld bc,$0820
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 16 = $20
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 15 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 14 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 13 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 12 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 11 = $08
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 10 = $08
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 9 = $08
  inc l
  ld bc,$1004
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 8 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 7 = $08
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 6 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 5 = $10
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 4 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 3 = $40
  inc l
  ld de,$0080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 2 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 1 = $80
  ret
DrawRockL0S7:
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld bc,$0701
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 9 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 10 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 11 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 12 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 13 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 14 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 15 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 16 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 17 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 18 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 19 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 20 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 21 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 22 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 23 = $01
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  call NextColumn	; col 1
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 31 = $07
  inc l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 29 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 28 = $10
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 26 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 25 = $40
  inc l
  ld bc,$2080
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 24 = $80
  ld a,l
  add a,$11		; skip 17 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 7 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 6 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 5 = $20
  inc l
  ld de,$1121
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $21
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 3 = $11
  inc l
  ld de,$0C0A
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 2 = $0A
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $0C
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  dec l
  ld de,$0201
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $02
  dec l
  ld de,$8404
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 5 = $84
  dec l
  ld de,$3048
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 6 = $48
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 7 = $30
  ld a,l
  sub $16		; skip 22 rows
  ld l,a
  ld de,$0201
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $02
  dec l
  ld de,$40FC
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 31 = $FC
  call NextColumn	; col 3
  inc l
  inc l
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 28 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 27 = $40
  inc l
  ld de,$0830
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 26 = $30
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $08
  inc l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 24 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 23 = $02
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $04
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 21 = $04
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 20 = $04
  inc l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 19 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 18 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 17 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 16 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 15 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 14 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 13 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 12 = $08
  inc l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 11 = $04
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 10 = $04
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 9 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 8 = $02
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $04
  inc l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 6 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 5 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 4 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 3 = $20
  inc l
  ld de,$C040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 2 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 1 = $C0
  ret
DrawRockL1S0:
  dec l
  ld bc,$0407
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 1 = $07
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 2 = $04
  dec l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 3 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 4 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 5 = $10
  dec l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 6 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 7 = $40
  dec l
  ld bc,$2080
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $80
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 9 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 10 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 11 = $40
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 12 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 13 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $20
  dec l
  ld bc,$4010
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 15 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 16 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 17 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 18 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 19 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 20 = $40
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 21 = $40
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 22 = $40
  dec l
  ld bc,$2080
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 23 = $80
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 24 = $40
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 25 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 26 = $20
  dec l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 27 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 28 = $08
  dec l
  ld de,$0605
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 29 = $05
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 30 = $06
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld bc,$9801
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 30 = $01
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $06
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 28 = $98
  inc l
  ld de,$18E0
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $E0
  ld a,l
  add a,$17		; skip 23 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 4 = $18
  inc l
  ld de,$8166
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $66
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $81
  inc l
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld de,$20E0
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $E0
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 2 = $20
  dec l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 3 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 4 = $08
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 5 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 6 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 7 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 8 = $01
  dec l
  ld de,$0806
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 9 = $06
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 10 = $08
  dec l
  ld de,$4030
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 11 = $30
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 12 = $40
  dec l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 13 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 14 = $10
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 15 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 16 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 17 = $04
  dec l
  ld de,$0402
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 18 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 19 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 20 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 21 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 22 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 23 = $04
  dec l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 24 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 25 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 26 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $10
  dec l
  ld de,$C020
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $C0
  ret
DrawRockL1S1:
  dec l
  ld bc,$0203
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 1 = $03
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 2 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 3 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 4 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 5 = $08
  dec l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 6 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 7 = $20
  dec l
  ld bc,$1040
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 9 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 10 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 11 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 12 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 13 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $10
  dec l
  ld bc,$2008
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 15 = $08
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 16 = $08
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 17 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 18 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 19 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 20 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 21 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 22 = $20
  dec l
  ld bc,$1040
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 23 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 24 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 25 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 26 = $10
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 27 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 28 = $04
  dec l
  ld de,$0302
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 29 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 30 = $03
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  inc l
  ld de,$4C83
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 29 = $83
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 28 = $4C
  inc l
  ld de,$0C70
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $70
  ld a,l
  add a,$17		; skip 23 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 4 = $0C
  inc l
  ld de,$8033
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $33
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 2 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $80
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld de,$9070
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $70
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 2 = $90
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 3 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 4 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 5 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 6 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 7 = $01
  dec l
  dec l
  ld de,$0403
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 9 = $03
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 10 = $04
  dec l
  ld de,$2018
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 11 = $18
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 12 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 13 = $10
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 14 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 15 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 16 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 17 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 18 = $01
  dec l
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 20 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 21 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 22 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 23 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 24 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 25 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 26 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 28 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 29 = $10
  dec l
  ld de,$80E0
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $E0
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  ld a,l
  add a,$0B		; skip 11 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 19 = $80
  ld a,l
  add a,$0B		; skip 11 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 8 = $80
  ret
DrawRockL1S2:
  dec l
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 1 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 2 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 3 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 4 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 5 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 6 = $08
  dec l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 7 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 8 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 9 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 10 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 11 = $10
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 12 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 13 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 14 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 15 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 16 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 17 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 18 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 19 = $08
  dec l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 20 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 21 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 22 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 23 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 24 = $10
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 25 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 26 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 27 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 28 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 29 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 30 = $01
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld de,$4180
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $41
  inc l
  ld de,$3826
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $26
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $38
  ld a,l
  add a,$17		; skip 23 rows
  ld l,a
  ld de,$1906
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $06
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 3 = $19
  inc l
  ld de,$C020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 2 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $C0
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld de,$4838
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $38
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 2 = $48
  dec l
  ld de,$0184
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 3 = $84
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 4 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 5 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 6 = $01
  dec l
  dec l
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 9 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 10 = $02
  dec l
  ld de,$100C
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 11 = $0C
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 12 = $10
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 13 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 14 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 15 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 16 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 17 = $01
  ld a,l
  sub $05		; skip 5 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 22 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 23 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 24 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 25 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 26 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $08
  dec l
  ld de,$7088
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $88
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $70
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  ld a,l
  add a,$09		; skip 9 rows
  ld l,a
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 21 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 20 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 19 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 18 = $80
  ld a,l
  add a,$09		; skip 9 rows
  ld l,a
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 9 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 8 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $80
  ret
DrawRockL1S3:
  dec l
  dec l
  dec l
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 3 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 4 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 5 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 6 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 7 = $08
  dec l
  ld bc,$0410
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 9 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 10 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 11 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 12 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 13 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $04
  dec l
  ld bc,$0802
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 15 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 16 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 17 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 18 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 19 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 20 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 21 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 22 = $08
  dec l
  ld bc,$0410
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 23 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 24 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 25 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 26 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 27 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 28 = $01
  dec l
  dec l
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld de,$A0C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $C0
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $A0
  inc l
  ld de,$1C13
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $13
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $1C
  ld a,l
  add a,$17		; skip 23 rows
  ld l,a
  ld de,$0C03
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $03
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 3 = $0C
  inc l
  ld de,$E090
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 2 = $90
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $E0
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld de,$241C
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $1C
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 2 = $24
  dec l
  ld de,$01C2
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 3 = $C2
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 4 = $01
  ld a,l
  sub $06		; skip 6 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 10 = $01
  dec l
  ld de,$0806
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 11 = $06
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 12 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 13 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 14 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 15 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 16 = $01
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 24 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 25 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 26 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 27 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 28 = $04
  dec l
  ld de,$38C4
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $C4
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $38
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  ld a,l
  add a,$07		; skip 7 rows
  ld l,a
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 23 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $40
  inc l
  ld bc,$8020
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 19 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 18 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 17 = $80
  ld a,l
  add a,$08		; skip 8 rows
  ld l,a
  ld de,$40C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 9 = $C0
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 8 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 7 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 6 = $80
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 5 = $80
  ret
DrawRockL1S4:
  dec l
  dec l
  dec l
  dec l
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 4 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 5 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 6 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 7 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 8 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 9 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 10 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 11 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 12 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 13 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 15 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 16 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 17 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 18 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 19 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 20 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 21 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 22 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 23 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 24 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 25 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 26 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 27 = $01
  dec l
  dec l
  dec l
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld de,$5060
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $60
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $50
  inc l
  ld de,$0E89
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $89
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $0E
  ld a,l
  add a,$17		; skip 23 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 4 = $01
  inc l
  ld de,$4886
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $86
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $48
  inc l
  ld de,$0E70
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 1 = $70
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 1 = $0E
  dec l
  ld de,$6112
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $12
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $61
  dec l
  ld de,$0380
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $80
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 11 = $03
  dec l
  ld de,$0104
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 12 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 13 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 14 = $01
  ld a,l
  sub $0C		; skip 12 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 26 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 27 = $01
  dec l
  ld de,$6282
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $82
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 29 = $62
  dec l
  ld de,$801C
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $1C
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  ld a,l
  add a,$05		; skip 5 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $80
  inc l
  ld de,$2040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 23 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $20
  inc l
  ld bc,$4010
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 19 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 18 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 17 = $40
  inc l
  ld de,$6080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 16 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 15 = $80
  ld a,l
  add a,$05		; skip 5 rows
  ld l,a
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 10 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 9 = $60
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 8 = $10
  inc l
  ld de,$8020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 6 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 5 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 4 = $80
  ret
DrawRockL1S5:
  ld a,l
  sub $06		; skip 6 rows
  ld l,a
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 6 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 7 = $02
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 8 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 9 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 10 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 11 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 12 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 13 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 14 = $01
  dec l
  dec l
  dec l
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 18 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 19 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 20 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 21 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 22 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 23 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 24 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 25 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 26 = $01
  dec l
  dec l
  dec l
  dec l
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld de,$2830
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $30
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $28
  inc l
  ld de,$8744
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $44
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $87
  ld a,l
  add a,$0A		; skip 10 rows
  ld l,a
  ld de,$4380
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 17 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 16 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 15 = $80
  ld a,l
  add a,$0A		; skip 10 rows
  ld l,a
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 5 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 3 = $43
  inc l
  ld de,$3824
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 2 = $24
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $38
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld de,$0907
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $07
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 2 = $09
  dec l
  ld de,$C030
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 3 = $30
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 4 = $C0
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 11 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 12 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 13 = $01
  ld a,l
  sub $0F		; skip 15 rows
  ld l,a
  ld de,$31C1
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $C1
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 29 = $31
  dec l
  ld de,$800E
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $0E
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  inc l
  inc l
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 27 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 26 = $80
  inc l
  ld de,$2040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 25 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 24 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 23 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 22 = $20
  inc l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 21 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 20 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 19 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 18 = $10
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 17 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 16 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 15 = $40
  inc l
  ld bc,$3080
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 14 = $80
  inc l
  inc l
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 11 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 9 = $30
  inc l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 8 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 7 = $10
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 6 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 5 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 4 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 3 = $80
  ret
DrawRockL1S6:
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 7 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 8 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 9 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 10 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 11 = $01
  ld a,l
  sub $09		; skip 9 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 20 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 21 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 22 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 23 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 24 = $01
  ld a,l
  sub $06		; skip 6 rows
  ld l,a
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld de,$1418
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $18
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $14
  inc l
  ld de,$4322
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $22
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $43
  inc l
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 26 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 25 = $80
  ld a,l
  add a,$06		; skip 6 rows
  ld l,a
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 19 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 18 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 17 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 16 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 15 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 14 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 13 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 12 = $80
  ld a,l
  add a,$06		; skip 6 rows
  ld l,a
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 6 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 5 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 4 = $40
  inc l
  ld de,$1221
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $21
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $12
  inc l
  ld de,$031C
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 1 = $1C
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 1 = $03
  dec l
  ld de,$9804
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $98
  dec l
  ld de,$8060
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $60
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 12 = $01
  ld a,l
  sub $0F		; skip 15 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $60
  dec l
  ld de,$0718
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $18
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $07
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  inc l
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 29 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 28 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 27 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 26 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 25 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 24 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 23 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 22 = $10
  inc l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 21 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 20 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 19 = $04
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 18 = $08
  inc l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 17 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 16 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 15 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 14 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 13 = $80
  inc l
  inc l
  ld de,$20C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 11 = $C0
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $20
  inc l
  ld de,$0418
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 9 = $18
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 8 = $04
  inc l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 6 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 5 = $10
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 4 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 3 = $40
  inc l
  ld de,$0080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 2 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 1 = $80
  ret
DrawRockL1S7:
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld bc,$0C01
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $01
  ld a,l
  sub $0F		; skip 15 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 23 = $01
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 30 = $0C
  inc l
  ld de,$110A
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 29 = $0A
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 28 = $11
  inc l
  ld de,$4021
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $21
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 26 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 25 = $40
  inc l
  ld bc,$2080
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 24 = $80
  inc l
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 22 = $80
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 21 = $80
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 20 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 19 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 18 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 17 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 16 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 15 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 14 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 13 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 12 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 11 = $80
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 10 = $80
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 9 = $80
  inc l
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 7 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 6 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 5 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 4 = $20
  inc l
  ld de,$0910
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $09
  inc l
  ld de,$010E
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 1 = $0E
  			; skipping zero byte
  call NextColumn	; col 2
  			; skipping zero byte
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 1 = $01
  dec l
  ld de,$CC02
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $CC
  dec l
  ld de,$C030
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $30
  ld a,l
  sub $17		; skip 23 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $C0
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $30
  dec l
  ld de,$030C
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $0C
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $03
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 30 = $80
  inc l
  ld de,$1040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 29 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 28 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 27 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 26 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $10
  inc l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 23 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $04
  inc l
  ld bc,$0802
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 19 = $02
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 18 = $04
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 17 = $08
  inc l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 16 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 15 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 14 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 13 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 12 = $80
  inc l
  ld de,$1060
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 11 = $60
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $10
  inc l
  ld de,$040C
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 9 = $0C
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 8 = $02
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 7 = $04
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 6 = $08
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 5 = $08
  inc l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 4 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 3 = $20
  inc l
  ld de,$C040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 2 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 1 = $C0
  ret
DrawRockL2S0:
  dec l
  dec l
  dec l
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 3 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 4 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 5 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 6 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 7 = $08
  dec l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 8 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 9 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 10 = $20
  dec l
  ld bc,$1840
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 11 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 12 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 13 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $18
  dec l
  ld de,$2004
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 15 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 16 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 17 = $18
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 18 = $20
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 19 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 20 = $40
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 21 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 22 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 23 = $20
  dec l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 24 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 25 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 26 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 27 = $08
  dec l
  ld de,$0205
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 28 = $05
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 29 = $05
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 30 = $02
  dec l
  call NextColumn	; col 1
  ld de,$100F
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 31 = $0F
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 30 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 28 = $10
  inc l
  ld de,$5090
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $90
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 26 = $90
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 25 = $50
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 24 = $50
  inc l
  ld de,$1030
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 23 = $30
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 22 = $30
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 21 = $10
  ld a,l
  add a,$13		; skip 19 rows
  ld l,a
  ld de,$7F80
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 2 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 1 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 0 = $7F
  call NextColumn	; col 2
  ld de,$20C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 0 = $C0
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 1 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 2 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $20
  dec l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 5 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 6 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 7 = $08
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 8 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 9 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 10 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 11 = $02
  dec l
  ld bc,$0401
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 12 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 13 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 14 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 15 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 16 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 17 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 18 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 19 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 20 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 21 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 22 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 23 = $04
  dec l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 24 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 25 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 26 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $10
  dec l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $40
  dec l
  ld de,$00C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 31 = $C0
  ret
DrawRockL2S1:
  dec l
  dec l
  dec l
  dec l
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 4 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 5 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 6 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 7 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 8 = $08
  dec l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 9 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 10 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 11 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 12 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 13 = $10
  dec l
  ld de,$100C
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 14 = $0C
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 15 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 16 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 17 = $0C
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 18 = $10
  dec l
  ld bc,$0820
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 19 = $20
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 20 = $20
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 21 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 22 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 23 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 24 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 25 = $08
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 26 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 27 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 28 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 29 = $02
  dec l
  ld de,$0701
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 30 = $01
  dec l
  call NextColumn	; col 1
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 31 = $07
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 30 = $08
  inc l
  ld de,$4888
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 29 = $88
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $88
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $48
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 26 = $48
  inc l
  ld de,$1828
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 25 = $28
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 24 = $28
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 23 = $18
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 22 = $18
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 21 = $08
  ld a,l
  add a,$12		; skip 18 rows
  ld l,a
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $40
  inc l
  ld de,$E03F
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 0 = $3F
  call NextColumn	; col 2
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 0 = $E0
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 1 = $20
  dec l
  ld de,$0410
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 3 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 4 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 5 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 6 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 7 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 8 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 9 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 10 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 11 = $01
  ld a,l
  sub $09		; skip 9 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 20 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 21 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 22 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 23 = $02
  dec l
  ld de,$1004
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 24 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 25 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 26 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 27 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 28 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 29 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 30 = $20
  dec l
  ld de,$80E0
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 31 = $E0
  call NextColumn	; col 3
  ld a,l
  add a,$0C		; skip 12 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 19 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 18 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 17 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 16 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 15 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 14 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 13 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 12 = $80
  ret
DrawRockL2S2:
  ld a,l
  sub $05		; skip 5 rows
  ld l,a
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 5 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 6 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 7 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 8 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 9 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 10 = $08
  dec l
  ld bc,$0610
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 11 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 12 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 13 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $06
  dec l
  ld de,$0801
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 15 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 16 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 17 = $06
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 18 = $08
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 19 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 20 = $10
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 21 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 22 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 23 = $08
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 24 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 25 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 26 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 27 = $02
  dec l
  ld de,$0301
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 28 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 29 = $01
  dec l
  dec l
  call NextColumn	; col 1
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 31 = $03
  inc l
  ld de,$4484
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $84
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $44
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 28 = $44
  inc l
  ld de,$1424
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $24
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 26 = $24
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 25 = $14
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 24 = $14
  inc l
  ld de,$040C
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 23 = $0C
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 22 = $0C
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 21 = $04
  ld a,l
  add a,$11		; skip 17 rows
  ld l,a
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 3 = $40
  inc l
  ld de,$1F20
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 2 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 1 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 0 = $1F
  call NextColumn	; col 2
  ld de,$08F0
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 0 = $F0
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 1 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 2 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $08
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 5 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 6 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 7 = $02
  dec l
  ld bc,$0401
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 8 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 9 = $01
  ld a,l
  sub $0D		; skip 13 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 22 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 23 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 24 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 25 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 26 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 27 = $04
  dec l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $10
  dec l
  ld de,$80F0
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 31 = $F0
  call NextColumn	; col 3
  ld a,l
  add a,$0A		; skip 10 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $80
  inc l
  ld bc,$0040
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 19 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 18 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 17 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 16 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 15 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 14 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 13 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 12 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 11 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $80
  ret
DrawRockL2S3:
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 7 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 8 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 9 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 10 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 11 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 12 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 13 = $04
  dec l
  ld bc,$0803
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 14 = $03
  dec l
  dec l
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 17 = $03
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 18 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 19 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 20 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 21 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 22 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 23 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 24 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 25 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 26 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 27 = $01
  dec l
  dec l
  dec l
  dec l
  call NextColumn	; col 1
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 31 = $01
  inc l
  ld de,$A242
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $42
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $A2
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 28 = $A2
  inc l
  ld de,$0A12
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $12
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 26 = $12
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 25 = $0A
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 24 = $0A
  inc l
  ld de,$0206
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 23 = $06
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 22 = $06
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 21 = $02
  ld a,l
  add a,$05		; skip 5 rows
  ld l,a
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 16 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 15 = $80
  ld a,l
  add a,$09		; skip 9 rows
  ld l,a
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 6 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 5 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 4 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $10
  inc l
  ld de,$F80F
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 0 = $0F
  call NextColumn	; col 2
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 0 = $F8
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 1 = $08
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 3 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 4 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 5 = $02
  dec l
  ld bc,$0401
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 6 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 7 = $01
  ld a,l
  sub $11		; skip 17 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 24 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 25 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 26 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 28 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 29 = $04
  dec l
  ld de,$F808
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 31 = $F8
  call NextColumn	; col 3
  ld a,l
  add a,$08		; skip 8 rows
  ld l,a
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 23 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $40
  inc l
  ld bc,$8020
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 19 = $20
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 18 = $20
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 17 = $20
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 16 = $20
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 15 = $20
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 14 = $20
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 13 = $20
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 12 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 11 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 9 = $80
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 8 = $80
  ret
DrawRockL2S4:
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 9 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 10 = $02
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 11 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 12 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 13 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 14 = $01
  dec l
  dec l
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 17 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 18 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 19 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 20 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 21 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 22 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 23 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 24 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 25 = $01
  ld a,l
  sub $05		; skip 5 rows
  ld l,a
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld de,$5121
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $21
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $51
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 28 = $51
  inc l
  ld de,$0589
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $89
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 26 = $89
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 25 = $05
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 24 = $05
  inc l
  ld de,$8003
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 23 = $03
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 22 = $03
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 21 = $01
  inc l
  inc l
  inc l
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 17 = $80
  inc l
  ld bc,$2040
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 16 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 15 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 14 = $80
  ld a,l
  add a,$07		; skip 7 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 7 = $80
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 6 = $40
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 5 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 4 = $20
  inc l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $08
  inc l
  ld de,$FC07
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 0 = $07
  call NextColumn	; col 2
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 0 = $FC
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 2 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $02
  dec l
  ld bc,$0401
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 4 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 5 = $01
  ld a,l
  sub $15		; skip 21 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 26 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 27 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 28 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 29 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 30 = $04
  dec l
  ld de,$80FC
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 31 = $FC
  call NextColumn	; col 3
  ld a,l
  add a,$06		; skip 6 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $80
  inc l
  ld de,$2040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 23 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $20
  inc l
  ld bc,$4010
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 19 = $10
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 18 = $10
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 17 = $10
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 16 = $10
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 15 = $10
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 14 = $10
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 13 = $10
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 12 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 11 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 9 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 8 = $40
  inc l
  ld de,$0080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 6 = $80
  ret
DrawRockL2S5:
  ld a,l
  sub $09		; skip 9 rows
  ld l,a
  ld bc,$0201
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 9 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 10 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 11 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 12 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 13 = $01
  ld a,l
  sub $05		; skip 5 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 18 = $01
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 19 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 20 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 21 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 22 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 23 = $01
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld de,$2810
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $28
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 28 = $28
  inc l
  ld de,$8244
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $44
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 26 = $44
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 25 = $82
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 24 = $82
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 23 = $01
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 22 = $01
  ld a,l
  add a,$05		; skip 5 rows
  ld l,a
  ld de,$20C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 17 = $C0
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 16 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 15 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 14 = $C0
  ld a,l
  add a,$06		; skip 6 rows
  ld l,a
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 8 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 7 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 6 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 5 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 4 = $10
  inc l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $04
  inc l
  ld de,$FE03
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 0 = $03
  call NextColumn	; col 2
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 0 = $FE
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 1 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 2 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 3 = $01
  ld a,l
  sub $12		; skip 18 rows
  ld l,a
  ld de,$8180
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 21 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 22 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 23 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 24 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 25 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 26 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 27 = $80
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 28 = $81
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 29 = $81
  dec l
  ld de,$7E82
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $82
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 31 = $7E
  call NextColumn	; col 3
  inc l
  inc l
  inc l
  inc l
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 27 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 26 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 23 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $10
  inc l
  ld bc,$2008
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 19 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 18 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 17 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 16 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 15 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 14 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 13 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 12 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 11 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 9 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 8 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 6 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 5 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 4 = $80
  ret
DrawRockL2S6:
  ld a,l
  sub $0B		; skip 11 rows
  ld l,a
  ld bc,$0801
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 11 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 12 = $01
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 19 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 20 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 21 = $01
  ld a,l
  sub $09		; skip 9 rows
  ld l,a
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 30 = $08
  inc l
  ld de,$2214
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 29 = $14
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $14
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $22
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 26 = $22
  inc l
  ld de,$8041
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 25 = $41
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 24 = $41
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 23 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 22 = $80
  inc l
  inc l
  inc l
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 18 = $80
  inc l
  ld de,$1060
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 17 = $60
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 16 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 15 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 14 = $60
  inc l
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 13 = $80
  inc l
  inc l
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 10 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 9 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 8 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 7 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 6 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 5 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 4 = $08
  inc l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $02
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $02
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 0 = $01
  call NextColumn	; col 2
  ld de,$40FF
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 0 = $FF
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 1 = $01
  ld a,l
  sub $14		; skip 20 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 21 = $40
  dec l
  ld bc,$41C0
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 22 = $C0
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 23 = $C0
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 24 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 25 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 26 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 28 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 29 = $40
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 30 = $41
  dec l
  ld de,$803F
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 31 = $3F
  call NextColumn	; col 3
  inc l
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 29 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 28 = $80
  inc l
  ld de,$2040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 27 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 26 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $20
  inc l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 23 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $08
  inc l
  ld bc,$1004
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 19 = $04
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 18 = $04
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 17 = $04
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 16 = $04
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 15 = $04
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 14 = $04
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 13 = $04
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 12 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 11 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $08
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 9 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 8 = $10
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 6 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 5 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 4 = $40
  inc l
  ld de,$0080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 3 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 2 = $80
  ret
DrawRockL2S7:
  ld a,l
  sub $1E		; skip 30 rows
  ld l,a
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld bc,$0A04
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 30 = $04
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 29 = $0A
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 28 = $0A
  inc l
  ld de,$2011
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $11
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 26 = $11
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 25 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 24 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 23 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 22 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 21 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 20 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 19 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 18 = $40
  inc l
  ld de,$0830
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 17 = $30
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 16 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 15 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 14 = $30
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 13 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 12 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 11 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 10 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 9 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 8 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 7 = $10
  inc l
  ld de,$0208
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 6 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 5 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 4 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 3 = $02
  inc l
  ld de,$FF01
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 2 = $01
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 1 = $01
  inc l
  call NextColumn	; col 2
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 0 = $FF
  ld a,l
  sub $15		; skip 21 rows
  ld l,a
  ld de,$6020
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 21 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 22 = $60
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 23 = $60
  dec l
  ld bc,$1FA0
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 24 = $A0
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 25 = $A0
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 26 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 27 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 31 = $1F
  call NextColumn	; col 3
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 31 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 30 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 29 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 28 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 27 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 26 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $10
  inc l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 23 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 21 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $04
  inc l
  ld bc,$0802
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 19 = $02
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 18 = $02
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 17 = $02
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 16 = $02
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 15 = $02
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 14 = $02
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 13 = $02
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 12 = $02
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 11 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $04
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 9 = $08
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 8 = $08
  inc l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 6 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 5 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 4 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 3 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 2 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 1 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 0 = $80
  ret
DrawRockL3S0:
  ld bc,$0203
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 0 = $03
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 1 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 2 = $02
  dec l
  ld de,$FF01
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 3 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 4 = $01
  dec l
  dec l
  dec l
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 8 = $FF
  dec l
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 9 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 10 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 11 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 12 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 13 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 14 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 15 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 16 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 17 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 18 = $80
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 19 = $80
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 20 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 21 = $40
  dec l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 22 = $20
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 23 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 24 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 25 = $10
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 26 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 27 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 28 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 29 = $04
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 30 = $03
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld de,$6080
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $60
  inc l
  ld de,$0619
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $19
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $06
  ld a,l
  add a,$0B		; skip 11 rows
  ld l,a
  ld de,$8001
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 16 = $01
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 15 = $01
  ld a,l
  add a,$07		; skip 7 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 8 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 7 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 6 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 5 = $80
  inc l
  inc l
  inc l
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 1 = $01
  inc l
  ld bc,$40FE
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 0 = $FE
  call NextColumn	; col 2
  dec l
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 2 = $80
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 3 = $40
  dec l
  ld de,$1820
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 5 = $18
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 6 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 7 = $02
  dec l
  ld de,$0301
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 8 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 9 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 10 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 11 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 12 = $03
  dec l
  ld de,$601C
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 13 = $1C
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 14 = $60
  dec l
  ld de,$2080
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 15 = $80
  dec l
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 17 = $80
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 18 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 19 = $20
  dec l
  ld de,$0418
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 20 = $18
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 21 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 22 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 23 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 24 = $02
  dec l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 25 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 26 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $08
  dec l
  ld de,$A010
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 29 = $A0
  dec l
  ld de,$0060
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $60
  ret
DrawRockL3S1:
  ld bc,$7F01
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 0 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 1 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 2 = $01
  ld a,l
  sub $06		; skip 6 rows
  ld l,a
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 8 = $7F
  dec l
  ld de,$2040
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 9 = $40
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 10 = $40
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 11 = $40
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 12 = $40
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 13 = $40
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 14 = $40
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 15 = $40
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 16 = $40
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 17 = $40
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 18 = $40
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 19 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 20 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 21 = $20
  dec l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 22 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 23 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 24 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 25 = $08
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 26 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 27 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 28 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 29 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 30 = $01
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld de,$30C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $C0
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $30
  inc l
  ld de,$030C
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $0C
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $03
  ld a,l
  add a,$13		; skip 19 rows
  ld l,a
  ld de,$40C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 8 = $C0
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 7 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 6 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 5 = $40
  inc l
  ld de,$FF80
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $80
  inc l
  inc l
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 0 = $FF
  call NextColumn	; col 2
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $80
  dec l
  ld de,$2040
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $40
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $20
  dec l
  ld de,$0C10
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 5 = $0C
  dec l
  ld de,$0E02
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 6 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 7 = $01
  ld a,l
  sub $05		; skip 5 rows
  ld l,a
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 12 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 13 = $0E
  dec l
  ld de,$C030
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 14 = $30
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 15 = $C0
  dec l
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 16 = $80
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 17 = $40
  dec l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 18 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 19 = $10
  dec l
  ld de,$020C
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 20 = $0C
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 21 = $02
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 22 = $01
  dec l
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 24 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 25 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 26 = $02
  dec l
  ld de,$8804
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 27 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 28 = $88
  dec l
  ld de,$3050
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $50
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $30
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  ld a,l
  add a,$07		; skip 7 rows
  ld l,a
  ld de,$0080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 23 = $80
  ld a,l
  add a,$0B		; skip 11 rows
  ld l,a
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 12 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 11 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 10 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 9 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 8 = $80
  ret
DrawRockL3S2:
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld bc,$203F
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $3F
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 9 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 10 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 11 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 12 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 13 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 15 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 16 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 17 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 18 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 19 = $20
  dec l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 20 = $10
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 21 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 22 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 23 = $08
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 24 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 25 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 26 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 27 = $02
  dec l
  ld de,$E001
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 28 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 29 = $01
  dec l
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 30 = $E0
  inc l
  ld de,$0618
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 29 = $18
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 28 = $06
  inc l
  ld de,$E001
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $01
  ld a,l
  add a,$13		; skip 19 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 8 = $E0
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 7 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 6 = $20
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 5 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $40
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $80
  inc l
  ld bc,$40FF
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 0 = $FF
  call NextColumn	; col 2
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 0 = $80
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 1 = $40
  dec l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 2 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $10
  dec l
  ld de,$0608
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 5 = $06
  dec l
  ld de,$0701
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 6 = $01
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 13 = $07
  dec l
  ld de,$6018
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 14 = $18
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 15 = $60
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 16 = $40
  dec l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 17 = $20
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 18 = $10
  dec l
  ld de,$0608
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 19 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 20 = $06
  dec l
  ld de,$8201
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 21 = $01
  dec l
  dec l
  dec l
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 25 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 26 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 27 = $82
  dec l
  ld de,$2844
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 28 = $44
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 29 = $28
  dec l
  ld de,$8018
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 30 = $18
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  ld a,l
  add a,$06		; skip 6 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $80
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 23 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 22 = $80
  ld a,l
  add a,$0A		; skip 10 rows
  ld l,a
  ld de,$80C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 12 = $C0
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 11 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 10 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 9 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 8 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 7 = $80
  ret
DrawRockL3S3:
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld bc,$101F
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $1F
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 9 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 10 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 11 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 12 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 13 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 15 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 16 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 17 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 18 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 19 = $10
  dec l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 20 = $08
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 21 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 22 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 23 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 24 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 25 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 26 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 27 = $01
  dec l
  dec l
  dec l
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld de,$8C70
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $70
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $8C
  inc l
  ld de,$F083
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $83
  ld a,l
  add a,$14		; skip 20 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 8 = $F0
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 7 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 6 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 5 = $10
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $40
  inc l
  ld de,$C07F
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 0 = $7F
  call NextColumn	; col 2
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 0 = $C0
  dec l
  ld de,$0820
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 2 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $08
  dec l
  ld de,$0304
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 5 = $03
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 13 = $03
  dec l
  ld de,$300C
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 14 = $0C
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 15 = $30
  dec l
  ld de,$0820
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 16 = $20
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 17 = $10
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 18 = $08
  dec l
  ld de,$0304
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 19 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 20 = $03
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  ld de,$22C1
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 27 = $C1
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 28 = $22
  dec l
  ld de,$0C14
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $14
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $0C
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  inc l
  inc l
  inc l
  inc l
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 26 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 25 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $40
  inc l
  ld bc,$8020
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 23 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 22 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 21 = $80
  ld a,l
  add a,$08		; skip 8 rows
  ld l,a
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 13 = $80
  inc l
  ld de,$4060
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 12 = $60
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 11 = $20
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 10 = $20
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 9 = $20
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 8 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 7 = $40
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 6 = $80
  ret
DrawRockL3S4:
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld bc,$080F
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $0F
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 9 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 10 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 11 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 12 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 13 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 15 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 16 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 17 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 18 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 19 = $08
  dec l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 20 = $04
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 21 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 22 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 23 = $02
  dec l
  ld de,$3801
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 24 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 25 = $01
  ld a,l
  sub $05		; skip 5 rows
  ld l,a
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 30 = $38
  inc l
  ld de,$4146
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 29 = $46
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 28 = $41
  inc l
  ld de,$F880
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 26 = $80
  ld a,l
  add a,$12		; skip 18 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 8 = $F8
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 7 = $08
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 6 = $08
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 5 = $08
  inc l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $20
  inc l
  ld de,$E03F
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 0 = $3F
  call NextColumn	; col 2
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 0 = $E0
  dec l
  ld de,$0410
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 2 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 5 = $01
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 13 = $01
  dec l
  ld de,$1806
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 14 = $06
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 15 = $18
  dec l
  ld de,$0410
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 16 = $10
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 17 = $08
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 18 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 19 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 20 = $01
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  ld de,$9160
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 27 = $60
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 28 = $91
  dec l
  ld de,$060A
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $0A
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $06
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  inc l
  inc l
  inc l
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 27 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 26 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 24 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 23 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 21 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $80
  ld a,l
  add a,$07		; skip 7 rows
  ld l,a
  ld de,$30C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 13 = $C0
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 12 = $30
  inc l
  ld de,$2010
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 11 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 10 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 9 = $10
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 8 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 7 = $20
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 6 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 5 = $80
  ret
DrawRockL3S5:
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld bc,$0407
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $07
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 9 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 10 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 11 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 12 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 13 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 15 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 16 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 17 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 18 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 19 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 20 = $02
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 21 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 22 = $01
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 0 row 23 = $01
  ld a,l
  sub $07		; skip 7 rows
  ld l,a
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld de,$231C
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 30 = $1C
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 29 = $23
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 26 = $40
  inc l
  ld de,$FC80
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 25 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 24 = $80
  ld a,l
  add a,$10		; skip 16 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 8 = $FC
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 7 = $04
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 6 = $04
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 5 = $04
  inc l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $10
  inc l
  ld de,$F01F
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 0 = $1F
  call NextColumn	; col 2
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 0 = $F0
  dec l
  ld de,$0208
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 2 = $04
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $02
  dec l
  ld de,$0301
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 4 = $01
  ld a,l
  sub $0A		; skip 10 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 14 = $03
  dec l
  ld de,$080C
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 15 = $0C
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 16 = $08
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 17 = $04
  dec l
  ld de,$0102
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 18 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 19 = $01
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld de,$C830
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 27 = $30
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 28 = $C8
  dec l
  ld de,$0305
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $05
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $03
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  inc l
  inc l
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 28 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 27 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 26 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 25 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 24 = $10
  inc l
  ld bc,$2008
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 23 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 22 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 21 = $20
  inc l
  ld de,$E0C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 20 = $C0
  ld a,l
  add a,$07		; skip 7 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 13 = $E0
  inc l
  ld de,$1018
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 12 = $18
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 11 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 10 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 9 = $08
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 3 row 8 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 7 = $10
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 3 row 6 = $20
  inc l
  ld de,$00C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 5 = $C0
  ret
DrawRockL3S6:
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld bc,$0203
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $03
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 9 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 10 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 11 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 12 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 13 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 14 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 15 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 16 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 17 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 18 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 0 row 19 = $02
  dec l
  ld de,$0E01
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 20 = $01
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 0 row 21 = $01
  ld a,l
  sub $09		; skip 9 rows
  ld l,a
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 30 = $0E
  inc l
  ld de,$1011
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 29 = $11
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 28 = $10
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 27 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 26 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 25 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 24 = $40
  inc l
  ld de,$FE80
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 23 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 22 = $80
  ld a,l
  add a,$0E		; skip 14 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 8 = $FE
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 7 = $02
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 6 = $02
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 5 = $02
  inc l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $04
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $08
  inc l
  ld de,$F80F
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 0 = $0F
  call NextColumn	; col 2
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 0 = $F8
  dec l
  ld de,$0104
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 2 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 3 = $01
  ld a,l
  sub $0B		; skip 11 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 14 = $01
  dec l
  ld bc,$0206
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 15 = $06
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 16 = $04
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 17 = $02
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 18 = $01
  ld a,l
  sub $09		; skip 9 rows
  ld l,a
  ld de,$6418
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 27 = $18
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 28 = $64
  dec l
  ld de,$0182
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $82
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 30 = $01
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  ld de,$4080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 30 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 29 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 28 = $40
  inc l
  ld de,$1020
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 27 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 26 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $10
  inc l
  ld de,$0408
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 24 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 23 = $04
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $08
  inc l
  ld de,$6010
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 21 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $60
  inc l
  ld de,$7080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 19 = $80
  ld a,l
  add a,$05		; skip 5 rows
  ld l,a
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 14 = $80
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 13 = $70
  inc l
  ld de,$040C
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 12 = $0C
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 11 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 9 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 8 = $04
  inc l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 6 = $10
  inc l
  ld de,$8060
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 5 = $60
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 4 = $80
  ret
DrawRockL3S7:
  ld a,l
  sub $08		; skip 8 rows
  ld l,a
  ld bc,$0701
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 8 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 9 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 10 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 11 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 12 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 13 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 14 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 15 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 16 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 17 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 18 = $01
  dec l
  ld a,c
  xor (hl)
  ld (hl),a		; col 0 row 19 = $01
  ld a,l
  sub $0B		; skip 11 rows
  ld l,a
  			; skipping zero byte
  call NextColumn	; col 1
  			; skipping zero byte
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 30 = $07
  inc l
  ld de,$1008
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 29 = $08
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 28 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 27 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 26 = $10
  inc l
  ld de,$4020
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 25 = $20
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 24 = $20
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 23 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 22 = $40
  inc l
  ld de,$FF80
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 21 = $80
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 20 = $80
  ld a,l
  add a,$0C		; skip 12 rows
  ld l,a
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 8 = $FF
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 7 = $01
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 6 = $01
  inc l
  ld a,c
  xor (hl)
  ld (hl),a		; col 1 row 5 = $01
  inc l
  ld de,$0402
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 4 = $02
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 1 row 3 = $02
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 2 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 1 row 1 = $04
  inc l
  ld a,b
  xor (hl)
  ld (hl),a		; col 1 row 0 = $07
  call NextColumn	; col 2
  ld bc,$01FC
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 0 = $FC
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 1 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 2 = $01
  ld a,l
  sub $0D		; skip 13 rows
  ld l,a
  ld bc,$0103
  ld a,c
  xor (hl)
  ld (hl),a		; col 2 row 15 = $03
  dec l
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 16 = $02
  dec l
  ld a,b
  xor (hl)
  ld (hl),a		; col 2 row 17 = $01
  ld a,l
  sub $0A		; skip 10 rows
  ld l,a
  ld de,$320C
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 27 = $0C
  dec l
  ld a,d
  xor (hl)
  ld (hl),a		; col 2 row 28 = $32
  dec l
  ld de,$C0C1
  ld a,e
  xor (hl)
  ld (hl),a		; col 2 row 29 = $C1
  dec l
  			; skipping zero byte
  call NextColumn	; col 3
  			; skipping zero byte
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 30 = $C0
  inc l
  ld de,$2040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 29 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 28 = $20
  inc l
  ld de,$0810
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 27 = $10
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 26 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 25 = $08
  inc l
  ld de,$0204
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 24 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 23 = $02
  inc l
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 22 = $04
  inc l
  ld de,$3008
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 21 = $08
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 20 = $30
  inc l
  ld de,$8040
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 19 = $40
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 18 = $80
  inc l
  inc l
  inc l
  inc l
  ld de,$38C0
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 14 = $C0
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 13 = $38
  inc l
  ld de,$0206
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 12 = $06
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 11 = $02
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 10 = $02
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 9 = $02
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 8 = $02
  inc l
  ld de,$0804
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 7 = $04
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 6 = $08
  inc l
  ld de,$4030
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 5 = $30
  inc l
  ld a,d
  xor (hl)
  ld (hl),a		; col 3 row 4 = $40
  inc l
  ld de,$0080
  ld a,e
  xor (hl)
  ld (hl),a		; col 3 row 3 = $80
  ret
