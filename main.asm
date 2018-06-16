;===========================================================================
; main.asm
;===========================================================================


    ORG 0x4000
    defs 0x6000 - $    ; move after screen area
screen_top: defb    0   ; WPMEM
    

;===========================================================================
; Persistent watchpoint.
; Change WPMEMx to WPMEM to activate.
; If you do so the program will hit a breakpoint when it is tried to
; write to the first byte of the 3rd line.
; If you are not able to compile these sources, you can also change WPMEMx
; to WPMEM directly in teh .list file and start the debugger again.
; When program breaks in the fill_memory sub routine please hover over hl
; to see that it contsin 0x5804 or COLOR_SCREEN+64.
;===========================================================================

; WPMEMx 0x5840, 1, w


;===========================================================================
; Include modules
;===========================================================================
include "utilities.asm"
include "fill.asm"
include "clearscreen.asm"


;===========================================================================
; main routine - the code execution starts here.
; Sets up the new interrupt routine, the memory
; banks and jumps to the start loop.
;===========================================================================
main:
    ; Disable interrupts
    di
 
    ; Setup stack
    ld sp,stack_top

if 0
    ld b,1
start_wait_loop:
    ld de,PAUSE_TIME
    call pause
    nop
    djnz start_wait_loop
endif
 
    ; CLS
    call clear_screen
    call clear_backg

    ; Init
lbl1:    ld hl,fill_colors
    ld (fill_colors_ptr),hl
    ld de,COLOR_SCREEN
    
main_loop:
    ; fill line with color
    ld hl,(fill_colors_ptr)
    ld a,(hl)
    call fill_bckg_line
    
    ; break
    push de
    ld de,PAUSE_TIME
    call pause
    pop de

    ; next line
    call inc_fill_colors_ptr

    jr main_loop



;===========================================================================
; Stack. 
;===========================================================================

; Stack: this area is reserved for the stack
STACK_SIZE: equ 10    ; in words


; Reserve stack space
stack_bottom:
    defs    STACK_SIZE*2, 0
stack_top:  defb 0  ; WPMEM


;===========================================================================
; After loading the snapshot file (.sna) the stackpointer is pointing here.
; The value is used as starting point.
;===========================================================================
    defs    0xFDFA - $, 0
; address is 0xFDFA
    defw    main ; The .sna format expects the starting address on the stack.


; Fill up to 65535
    defs 0x10000 - $
