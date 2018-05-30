;===========================================================================
; fill.asm
; Submodule with memory fill routines.
;===========================================================================

; Some constants
BCKG_LINE_SIZE:  equ     32

; Colors 
BLACK:          equ 0<<3
BLUE:           equ 1<<3
RED:            equ 2<<3
MAGENTA:        equ 3<<3
GREEN:          equ 4<<3
CYAN:           equ 5<<3
YELLOW:         equ 6<<3
WHITE:          equ 7<<3


; Fills a memory area with a certain value.
; a = contains the fill value.
; hl = address to fill
; bc = size
fill_memory:
    ld (hl),a
    ld e,l
    ld d,h
    inc de
    dec bc
    ldir
    ret	


; Fills a background line with a color. 
; a = color
; de = points to background screen
fill_bckg_line:
    ld bc,BCKG_LINE_SIZE
    ld l,e
    ld h,d
    call fill_memory
    ; check that destination address is still in screen background 
    ld hl,COLOR_SCREEN+COLOR_SCREEN_SIZE-1
    or a    ; clear carry
    sbc hl,de ; compare 
    ret p
    ; ld start address
    ld de,COLOR_SCREEN 
    ret


; Increments the fill_colors_ptr and resets it if necessary.
inc_fill_colors_ptr:
    ld hl,(fill_colors_ptr)
    inc hl
    ld (fill_colors_ptr),hl 
    
    ; check if out of range
    ld bc,fill_colors_end
    or a    ; clear carry
    sbc hl,bc ; compare 
    ret m
    
    ; reset
    ld hl,fill_colors
    ld (fill_colors_ptr),hl
    ret


; Pointer to fill colors.
fill_colors_ptr:    defw 0

; Contains the colors for the lines. Each entry represnts the color for one line.
fill_colors:
    defb RED, YELLOW, BLUE, GREEN, MAGENTA
fill_colors_end:    
    defb 0  ; WPMEM
    

