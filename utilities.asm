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

