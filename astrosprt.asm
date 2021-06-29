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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  dec l
  dec l
  dec l
  call NextColumn	; col 3
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  dec l
  dec l
  call NextColumn	; col 3
  ld a,l
  add a,$08		; skip 8 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  ld a,l
  sub $05		; skip 5 rows
  ld l,a
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  sub $06		; skip 6 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  sub $08		; skip 8 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  sub $09		; skip 9 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  dec l
  dec l
  dec l
  call NextColumn	; col 3
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  dec l
  dec l
  call NextColumn	; col 3
  ld a,l
  add a,$08		; skip 8 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  ld a,l
  sub $05		; skip 5 rows
  ld l,a
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  sub $06		; skip 6 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  sub $08		; skip 8 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL1S7:
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
  sub $09		; skip 9 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL2S0:
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  dec l
  dec l
  dec l
  call NextColumn	; col 3
  ret
DrawRockL2S1:
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  dec l
  dec l
  call NextColumn	; col 3
  ld a,l
  add a,$08		; skip 8 rows
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
DrawRockL2S2:
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL2S3:
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL2S4:
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
  ld a,l
  sub $05		; skip 5 rows
  ld l,a
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL2S5:
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
  sub $06		; skip 6 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL2S6:
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
  sub $08		; skip 8 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL2S7:
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
  sub $09		; skip 9 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL3S0:
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  dec l
  dec l
  dec l
  call NextColumn	; col 3
  ret
DrawRockL3S1:
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  dec l
  dec l
  call NextColumn	; col 3
  ld a,l
  add a,$08		; skip 8 rows
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
DrawRockL3S2:
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL3S3:
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL3S4:
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
  ld a,l
  sub $05		; skip 5 rows
  ld l,a
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL3S5:
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
  sub $06		; skip 6 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
DrawRockL3S6:
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
  sub $08		; skip 8 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
  sub $09		; skip 9 rows
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
  inc l
  inc l
  call NextColumn	; col 2
  dec l
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
