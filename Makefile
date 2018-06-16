# Makefile for Star Warrior.
#
# There are 2 targets (+ clean targets)
# - dasm: Creates an *.re.asm file from (original) sna file. This file should be changed to *.asm and
#   manipulated, i.e. to create hooks.
# - sna: Assembles the *_ext.asm file plus the *.asm file and generates a new sna file out of it.
#
# The resulting file can be started with:
# > emulator.scrpt zxspectrum starwarrior -window -resolution 640x480 -debugscript dbg_main.script -debug



PROJ = z80-sample-program
# Path to the Z80 Assembler, http://savannah.nongnu.org/projects/z80asm/
ASM = "/Volumes/Macintosh HD 2/Projects/zesarux/z80asm/z80asm"
#ASM = "/Volumes/Macintosh HD 2/Projects/zesarux/test/z80asm/src/z80asm"
SNA_FILE = $(PROJ).sna
SNA_HDR = $(PROJ).snahdr
SNA_SYMS = $(PROJ).symbols
SNA_BLOCK = $(PROJ).blocks
SNA_OBJ = $(PROJ).re.obj
SNA_ASM = $(PROJ).re.asm
MAIN_ASM = main.asm
MAIN_OBJ = main.obj
ASM_FILES = $(MAIN_ASM) clearscreen.asm fill.asm utilities.asm
LABELS_OUT = $(PROJ).labels
LIST_OUT = $(PROJ).list


default:	sna


clean:
	-rm -f $(EXT_OBJ)


$(MAIN_OBJ):	$(ASM_FILES) Makefile
	$(ASM) --input=$(MAIN_ASM) --output=$(MAIN_OBJ) --label=$(LABELS_OUT) --list=$(LIST_OUT)


sna:	$(MAIN_OBJ) $(SNA_HDR)
	cat $(SNA_HDR) $(MAIN_OBJ) > $(SNA_FILE)

