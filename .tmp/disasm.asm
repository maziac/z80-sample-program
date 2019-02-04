; EQU:
; Data addresses used by the opcodes that point to uninitialized memory areas.
L6001:       equ  6001h	; 24577. Subroutine. Called by: L6062[6080h].
L6018:       equ  6018h	; 24600. Subroutine. Called by: L6062[6079h].
L602B:       equ  602Bh	; 24619. Subroutine. Called by: L6062[6084h].
L6040:       equ  6040h	; 24640. Data accessed by: 606Fh(in L6062), 6075h(in L6062)
L6048:       equ  6048h	; 24648. Subroutine. Called by: L6062[6066h].
L6053:       equ  6053h	; 24659. Subroutine. Called by: L6062[6069h].


             org 6062h ; 6062h


; Label not accessed.
6062 L6062:
6062 F3           DI          
6063 31 9D 60     LD   SP,L609B+2 	; 609Dh, top of stack
6066 CD 48 60     CALL L6048  	; 6048h
6069 CD 53 60     CALL L6053  	; 6053h
606C 21 42 60     LD   HL,6042h 	; 24642
606F 22 40 60     LD   (L6040),HL 	; 6040h
6072 11 00 58     LD   DE,5800h 	; 22528
6075 L6075:
6075 2A 40 60     LD   HL,(L6040) 	; 6040h
6078 7E           LD   A,(HL) 
6079 CD 18 60     CALL L6018  	; 6018h
607C D5           PUSH DE     
607D 11 88 13     LD   DE,1388h 	; 5000
6080 CD 01 60     CALL L6001  	; 6001h
6083 D1           POP  DE     
6084 CD 2B 60     CALL L602B  	; 602Bh
6087 18 EC        JR   L6075  	; 6075h


6089 00           defb 00h    	; 0
608A 00           defb 00h    	; 0
608B 00           defb 00h    	; 0
608C 00           defb 00h    	; 0
608D 00           defb 00h    	; 0
608E 00           defb 00h    	; 0
608F 00           defb 00h    	; 0
6090 00           defb 00h    	; 0
6091 00           defb 00h    	; 0
6092 00           defb 00h    	; 0
6093 00           defb 00h    	; 0
6094 00           defb 00h    	; 0
6095 00           defb 00h    	; 0
6096 00           defb 00h    	; 0
6097 00           defb 00h    	; 0
6098 00           defb 00h    	; 0
6099 00           defb 00h    	; 0
609A 00           defb 00h    	; 0


; Last element of stack:
609B L609B:
609B 00           defb 00h    	; 0
609C 00           defb 00h    	; 0
609D 00           defb 00h    	; 0
609E 00           defb 00h    	; 0
609F 00           defb 00h    	; 0
60A0 00           defb 00h    	; 0
60A1 00           defb 00h    	; 0
60A2 00           defb 00h    	; 0
60A3 00           defb 00h    	; 0
60A4 00           defb 00h    	; 0
60A5 00           defb 00h    	; 0
60A6 00           defb 00h    	; 0
60A7 00           defb 00h    	; 0
60A8 00           defb 00h    	; 0
60A9 00           defb 00h    	; 0
60AA 00           defb 00h    	; 0
60AB 00           defb 00h    	; 0
60AC 00           defb 00h    	; 0
60AD 00           defb 00h    	; 0
60AE 00           defb 00h    	; 0
60AF 00           defb 00h    	; 0
60B0 00           defb 00h    	; 0
60B1 00           defb 00h    	; 0
60B2 00           defb 00h    	; 0
60B3 00           defb 00h    	; 0
60B4 00           defb 00h    	; 0
60B5 00           defb 00h    	; 0
60B6 00           defb 00h    	; 0
60B7 00           defb 00h    	; 0
60B8 00           defb 00h    	; 0
60B9 00           defb 00h    	; 0
60BA 00           defb 00h    	; 0
60BB 00           defb 00h    	; 0
60BC 00           defb 00h    	; 0
60BD 00           defb 00h    	; 0
60BE 00           defb 00h    	; 0
60BF 00           defb 00h    	; 0
60C0 00           defb 00h    	; 0
60C1 00           defb 00h    	; 0
60C2 00           defb 00h    	; 0
60C3 00           defb 00h    	; 0
60C4 00           defb 00h    	; 0
60C5 00           defb 00h    	; 0
; ...
; ...
; ...