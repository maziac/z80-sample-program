;===========================================================================
; main.asm
;===========================================================================

NEX:    equ 0   ;  1=Create nex file, 0=create sna file

    IF NEX == 0
        DEVICE ZXSPECTRUM128
    ELSE
        DEVICE ZXSPECTRUMNEXT
    ENDIF

    ORG 0x4000
    defs 0x6000 - $    ; move after screen area
screen_top: defb    0   ; WPMEMx
    

;===========================================================================
; Persistent watchpoint.
; Change WPMEMx (remove the 'x' from WPMEMx) below to activate.
; If you do so the program will hit a breakpoint when it tries to
; write to the first byte of the 3rd line.
; When program breaks in the fill_memory sub routine please hover over hl
; to see that it contains 0x5804 or COLOR_SCREEN+64.
;===========================================================================

; WPMEMx 0x5840, 1, w


;===========================================================================
; Include modules
;===========================================================================
    include "utilities.asm"
    include "fill.asm"
    include "clearscreen.asm"

    ; Normally you would assemble the unit tests in a separate target
    ; in the makefile.
    ; As this is a very short program and for simplicity the
    ; unit tests and the main program are assembled in the same binary.
    include "unit_tests.asm"

;===========================================================================
; main routine - the code execution starts here.
; Sets up the new interrupt routine, the memory
; banks and jumps to the start loop.
;===========================================================================

 ORG $8000

main:
    ; Disable interrupts
    di
    ld sp,stack_top

    ; CLS
    call clear_screen
    call clear_backg

    ; Init
lbl1:    
    ld hl,fill_colors
    ld (fill_colors_ptr),hl
    ld de,COLOR_SCREEN
    
    ; Enable interrupts
    ;im 1
    ;ei
 
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

    ; Alternatively wait on vertical interrupt
 ;   halt

    ; next line
    call inc_fill_colors_ptr

 
    jr main_loop



;===========================================================================
; Stack. 
;===========================================================================

; Stack: this area is reserved for the stack
STACK_SIZE: equ 100    ; in words


; Reserve stack space
    defw 0  ; WPMEM, 2
stack_bottom:
    defs    STACK_SIZE*2, 0
stack_top:  
    defw 0  
    defw 0  ; WPMEM, 2



    IF NEX == 0
        SAVESNA "z80-sample-program.sna", main
    ELSE
        SAVENEX OPEN "z80-sample-program.nex", main, stack_top
        SAVENEX CORE 2, 0, 0        ; Next core 2.0.0 required as minimum
        SAVENEX CFG 7   ; Border color
        SAVENEX AUTO
        SAVENEX CLOSE
    ENDIF
   