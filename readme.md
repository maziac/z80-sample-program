# z80-sample-program

## Introduction

This is a small Z80 assembler program that just puts some colored lines on the ZX Spectrum's screen.

The intention is to use this as a kind of tutorial for the z80-debug extension for vscode/ZEsarUX.


## Prerequisites

- Visual Studio Code (vscode)
- The z80-debug adapter extension
- The ZEsarUX emulator, https://github.com/chernandezba/zesarux

If you want to build yourself (not required if you just want to test debugging): 
- Z80 Assembler: http://savannah.nongnu.org/projects/z80asm/
- Following utilities are required: make, cat


## Building

First if you just want to test debugging with the 'z80-debug' extension there is no need to build/assemble the required files.
The binaries are included in this repository so that you could also directly start to debug.

However, if you would like to do some changes you need to compile and here is the explanation:

The project includes a 'Makefile'.

To run it just use 'make' in the project's directory or from vscode 'Run build task...'. A .vscode/tasks.json is also included.

For make to be successful you need:

- The z80asm assembler
- cat: to add the .sna header file to the compiled binary.

There are several .asm files which are all included in the main.asm file. This file is the one being assembled.
Afterwards an already assembled .sna header is added to it.

Before you run 'make' change the 'ASM' path in the 'Makefile' to the location on your hard disk.


## Running the debugger

To debug the project first start ZEsarUx and enable the remote port (RCP) either by commandline (--enable-remoteprotocol) or from the UI ('Settings->Debug->Remote protocol' to 'Enabled').
The debug adapter uses the port 10000 which is ZEsarUX default, so you can leave this unchanged.


When ZEsarUX is up and running start debugging from vscode. The "Z80 Debugger" is already configured so pressing the green debug arrow should be enough.

Now the following happens:

1. A socket RCP connection is opened to ZEsarUX.
2. The snapshot (z80-sample-program.sna) is loaded to ZEsarUX.
3. The breakpoints are reset.
4. The .list and .label files are read
5. vscode requests the 'CALL STACK' and the 'VARIABLES'
6. call stack, disassembly and the registers values are requested from ZEsarUX.

You should be left with a stopped program. Currently it is not possible
to start exactly at the start of the assembly program, so you find the PC somewhat after the 'main' entry point.

From here you can:
- step into, step over, step-out
- click on the call stack: It will navigate directly to the asm file.
- hover over register in the asm file: It will show the values and also (if available) the corresponding labels.
- change register values: a double click on the value of a register in the REGISTER area will allow you to enter a different value.


## The program itself

The program is only for educational purposes. It does nothing more than drawing colored lines on the screen.
It does so by manipulating the color screen area (0x5800).

The action takes place in the 'main_loop':
1. it draws a one color line
2. it waits for half a second
3. it proceeds to the next line
4. loop from 1

