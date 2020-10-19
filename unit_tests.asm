;========================================================
; unit_tests.asm
;
; Collects and executes all unit tests.
;========================================================

    include "unit_tests.inc"


; Initialization routine called before all unit tests are
; started.
    UNITTEST_INITIALIZE
    ; Do your initialization here ...
    ; ...
    ; ...
    ; For this simple example we don't need any special initialization.
    ; So we simply return.
    ; Please note: the stack pointer does not need to be setup explicitly
    ; for the unit tests.
    ret


    MODULE TestSuite_ClearScreen

; A unit testcase needs to start with "UT_" (upper case letters).
; DeZog will collect all these labels and offer them for execution.
UT_clear_screen:
    ; Write some bytes to the screen area
    ld a,0xFF
    ld (SCREEN),a
    ld (SCREEN+SCREEN_SIZE/2),a
    ld (SCREEN+SCREEN_SIZE-1),a
    ld (SCREEN+SCREEN_SIZE),a

    ; Now clear the screen
    call clear_screen

    ; Test that all values inside the screen area are cleared
    TEST_MEMORY_BYTE SCREEN, 0
    TEST_MEMORY_BYTE SCREEN+SCREEN_SIZE/2, 0
    TEST_MEMORY_BYTE SCREEN+SCREEN_SIZE-1, 0

    TEST_MEMORY_BYTE SCREEN+SCREEN_SIZE, 0xFF
 TC_END


; Tests filling the background.
UT_fill_backg:
    ; Write some bytes to the screen area
    ld a,0xFF
    ld (COLOR_SCREEN),a
    ld (COLOR_SCREEN+COLOR_SCREEN_SIZE/2),a
    ld (COLOR_SCREEN+COLOR_SCREEN_SIZE-1),a
    ld (COLOR_SCREEN+COLOR_SCREEN_SIZE),a

    ; Now fill the background with 128
    ld a,128
    call fill_backg

    ; Test that all values inside the screen area are cleared
    TEST_MEMORY_BYTE COLOR_SCREEN, 128
    TEST_MEMORY_BYTE COLOR_SCREEN+COLOR_SCREEN_SIZE/2, 128
    TEST_MEMORY_BYTE COLOR_SCREEN+COLOR_SCREEN_SIZE-1, 128

    TEST_MEMORY_BYTE COLOR_SCREEN+COLOR_SCREEN_SIZE, 0xFF
 TC_END


; Tests clearing the background.
UT_clear_backg:
    ; Write some bytes to the screen area
    ld a,0xFF
    ld (COLOR_SCREEN),a
    ld (COLOR_SCREEN+COLOR_SCREEN_SIZE/2),a
    ld (COLOR_SCREEN+COLOR_SCREEN_SIZE-1),a
    ld (COLOR_SCREEN+COLOR_SCREEN_SIZE),a

    ; Now clear the background
    call clear_backg

    ; Test that all values inside the screen area are cleared
    TEST_MEMORY_BYTE COLOR_SCREEN, 0
    TEST_MEMORY_BYTE COLOR_SCREEN+COLOR_SCREEN_SIZE/2, 0
    TEST_MEMORY_BYTE COLOR_SCREEN+COLOR_SCREEN_SIZE-1, 0

    TEST_MEMORY_BYTE COLOR_SCREEN+COLOR_SCREEN_SIZE, 0xFF
 TC_END

    ENDMODULE



    MODULE TestSuite_Fill

; Tests filling a memory area
UT_fill_memory:
    ; Write some bytes
    ld a,0xFF
    ld (fill_memory_data-1),a
    ld (fill_memory_data),a
    ld (fill_memory_data+FILL_MEMORY_SIZE/2),a
    ld (fill_memory_data+FILL_MEMORY_SIZE-1),a
    ld (fill_memory_data+FILL_MEMORY_SIZE),a

    ; Now fill the memory area
    ld a,22
    ld hl,fill_memory_data
    ld bc,FILL_MEMORY_SIZE
    call fill_memory

    ; Test that all values inside the screen area are cleared
    TEST_MEMORY_BYTE fill_memory_data-1, 0xFF
    TEST_MEMORY_BYTE fill_memory_data, 22
    TEST_MEMORY_BYTE fill_memory_data+FILL_MEMORY_SIZE/2, 22
    TEST_MEMORY_BYTE fill_memory_data+FILL_MEMORY_SIZE-1, 22

    TEST_MEMORY_BYTE fill_memory_data+FILL_MEMORY_SIZE, 0xFF
 TC_END


FILL_MEMORY_SIZE:   equ 10
    defb 0
fill_memory_data:
    defs 10
    defb 0


; Tests filling a line in the background color screen.
UT_fill_bckg_line_normal:
    ; Initialize background
    call clear_backg

    ; Fill line with color
    ld a,MAGENTA
    ld de,COLOR_SCREEN
    call fill_bckg_line

    ; Test that line is filled
    TEST_MEMORY_BYTE COLOR_SCREEN, MAGENTA
    TEST_MEMORY_BYTE COLOR_SCREEN+16, MAGENTA
    TEST_MEMORY_BYTE COLOR_SCREEN+31, MAGENTA
    TEST_MEMORY_BYTE COLOR_SCREEN+32, 0

    ; Test that de points to the next line
    TEST_DREG de, COLOR_SCREEN+32
 TC_END

; Test wrap around.
UT_fill_bckg_line_wrap_around:
    ; Initialize background
    call clear_backg

    ; Fill line with color
    ld a,MAGENTA
    ld de,COLOR_SCREEN+23*32
    call fill_bckg_line

    ; Test that line is filled
    TEST_MEMORY_BYTE COLOR_SCREEN+23*32, MAGENTA
    TEST_MEMORY_BYTE COLOR_SCREEN+23*32+16, MAGENTA
    TEST_MEMORY_BYTE COLOR_SCREEN+23*32+31, MAGENTA
    TEST_MEMORY_BYTE COLOR_SCREEN+23*32-1, 0

    ; Test that de points to the first line (wrap around)
    TEST_DREG de, COLOR_SCREEN
 TC_END


; Test wrap around.
UT_fill_colors_ptr:
    ; Start value
    ld hl,fill_colors
    ld (fill_colors_ptr),hl

    ; Test increment
    call inc_fill_colors_ptr
    ; Test that pointer is moved to next line
    TEST_MEMORY_WORD fill_colors_ptr, fill_colors+1

    ; Test increment
    call inc_fill_colors_ptr
    ; Test that pointer is moved to next line
    TEST_MEMORY_WORD fill_colors_ptr, fill_colors+2

    ; Last value
    ld hl,fill_colors_end-1
    ld (fill_colors_ptr),hl

    ; Test increment
    call inc_fill_colors_ptr
    ; Test that pointer wraps around and points to first line
    TEST_MEMORY_WORD fill_colors_ptr, fill_colors
 TC_END

    ENDMODULE


