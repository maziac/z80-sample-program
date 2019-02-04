# Makefile for the z80 sample program.
# It uses the sjasmplus assembler.


PROJ = z80-sample-program

ASM = sjasmplus
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


all:	default

default:	main

clean:
	-rm -f $(EXT_OBJ)

main:	$(SNA_FILE)

$(SNA_FILE):	$(ASM_FILES) Makefile 
	$(ASM) --lst=$(LIST_OUT) --sym=$(LABELS_OUT) --fullpath $(MAIN_ASM)




