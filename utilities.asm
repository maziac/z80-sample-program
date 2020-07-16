;===========================================================================
; utilities.asm
; Submodule for some common routines.
;===========================================================================

; Some constants
PAUSE_TIME:     equ 500   ; 0.5 sec


; Pauses for a while.
; de: wait time, ca. de*0.1ms
pause:
;	ret	; comment this line if you would like to see a pause between drawing of the lines.

	push af
	push bc

 IF 01
        ld      bc,0x243B
        ld      a,0x1F
        out     (c),a       ; select NextReg $1F
        inc     b           ; BC = TBBLUE_REGISTER_ACCESS_P_253B
    ; if already at scanline 192, then wait extra whole frame (for super-fast game loops)
.cantStartAt192:
        in      a,(c)       ; read the raster line LSB
        cp      192
        jr      z,.cantStartAt192
    ; if not yet at scanline 192, wait for it ... wait for it ...
.waitLoop:
        in      a,(c)       ; read the raster line LSB
        cp      192
        jr      nz,.waitLoop


	pop bc
	pop af
	ret

 ENDIF

pause_loop_l2:
	ld b,26
pause_loop_l1:
	djnz pause_loop_l1 ; 1 cycle should be roughly 100us=0.1ms

	dec de
	ld a,d
	or e
	jr nz,pause_loop_l2

	pop bc
	pop af
	ret




;===========================================================================
; Writes a color to the border and waits on keypress
; of SPACE.
; Used for visual debugging.
; Changes:
;   A
;===========================================================================
	MACRO WAIT_SPACE color?
	ld a,color?
	out (BORDER),a
	; Wait on key press
.not_pressed:
	ld a,HIGH PORT_KEYB_BNMSHIFTSPACE
	in a,(LOW PORT_KEYB_BNMSHIFTSPACE)
	bit 0,a	; SPACE
	jr nz,.not_pressed
	; Wait on key release
.pressed:
	ld a,HIGH PORT_KEYB_BNMSHIFTSPACE
	in a,(LOW PORT_KEYB_BNMSHIFTSPACE)
	bit 0,a	; SPACE
	jr z,.pressed
	ENDM

