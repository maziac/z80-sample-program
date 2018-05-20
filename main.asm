;===========================================================================
; main.asm
;===========================================================================


    ORG 0x4000
    defs 0x6000 - $    ; move after screen area
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
    ld hl,fill_colors
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
; Stack. The stack mustn't be in the area 0xC000-0xFFFF.
; It is also put in not contended memory area (>= 0x8000).
;===========================================================================

; Stack: this area is reserved for the stack
STACK_SIZE: equ 100d    ; in words


; Reserve stack space
stack_check:
    defb    0   ; this is check on write in the debug.scpt, to check if the stack is overwritten,
stack_bottom:
    defs    STACK_SIZE*2, 0
stack_top:


;===========================================================================
; After loading the stackpointer is pointing here.
; The value is used as starting point.
;===========================================================================
    defs    0xFDFA - $, 0
; address is 0xFDFA
    defw    main ; The .sna format expects the starting address on the stack.


; Fill up to 65535
    defs 0x10000 - $
