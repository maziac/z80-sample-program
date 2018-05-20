;===========================================================================
; clearscreen.asm
; Submodule to clear the entire screen.
;===========================================================================

; Some constants
SCREEN:         equ 0x4000
SCREEN_SIZE:    equ 0x1800

COLOR_SCREEN:       equ 0x5800
COLOR_SCREEN_SIZE:  equ 0x0300


; Clears the screen
clear_screen:
    xor a
    ld bc,SCREEN_SIZE
    ld hl,SCREEN
    call fill_memory
    ret	
    

; Clears the background
clear_backg:
    xor a
    call fill_backg
    ret	


; Fills the background with fore and background color.
; a contains the fill color.
fill_backg:
    ld bc,COLOR_SCREEN_SIZE
    ld hl,COLOR_SCREEN
    call fill_memory
    ret	
    

    
