;===========================================================================
; utilities.asm
; Submodule for some common routines.
;===========================================================================

; Some constants
PAUSE_TIME:     equ 5000   ; 0.5 sec


; Pauses for a while.
; de: wait time, ca: de*0.1ms
pause:
	ret	; comment this line if you would like to see a pause between drawing of the lines.

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
