# z80-sample-program

# Introduction

This is a small Z80 assembler program that just puts some colored lines on the ZX Spectrum's screen.

The intention is to use this as a kind of tutorial for [DeZog (Z80 debugger)](https://github.com/maziac/DeZog).


# Prerequisites

- Visual Studio Code (vscode)
- [DeZog](https://github.com/maziac/DeZog) (>= v1.0.1)

The program runs in the internal Z80 simulator but you can **optionally** run it on the ZEsarUX emulator:
- The ZEsarUX emulator, https://github.com/chernandezba/zesarux  (>= v8.1)

If you want to build yourself (not required if you just want to test debugging): 
- Z80 Assembler: sjasmplus, https://github.com/z00m128/sjasmplus


# Building

First if you just want to test debugging with the 'DeZog' extension there is no need to build/assemble the required files.
The binaries are included in this repository so that you could also directly start to debug.

However, if you would like to do some changes you need to compile.
From the menu choose "Terminal->Run Build Task..."
tasks.json is configured such that it will call sjasmplus with the required parameters.

There are several .asm files which are all included in the main.asm file. This file is the one being assembled.

After the build is ready a z80-sample-program.sna file is created which can be used with ZEsarUX.


# Running the Debugger with the Internal Z80 Simulator

The project comes with 3 configurations. one for ZEsarUX, one for the internal Z80 simulator and one for Z80 unit tests.

Choose the Z80 simulator first:
![](documentation/images/dbg_select_zsim.jpg)

Now start the debug session by pressing the green arrow:
![](documentation/images/dbg_start_session.jpg)


You should be left with a stopped program. 
![](documentation/images/dbg_session_started.jpg)

To the right you see the Z80 simulator. The black rectangle is the ZX Spectrum screen.

From here you can:
- step into, step over, step-out
![](documentation/images/dbg_step_buttons.jpg)
- click on the call stack: It will navigate directly to the asm file.
- hover over register in the asm file: It will show the values and also (if available) the corresponding labels.
- change register values: a double click on the value of a register in the REGISTER area will allow you to enter a different value.

The internal Z80 simulator does allow only basic Z80 or ZX 48K/128K debugging and is slow.
For real emulation and other features (like ZXNext HW emulation) setup [ZEsarUX](#debug-with-zesarux).


# The Program Itself

The program is only for educational purposes. It does nothing more than drawing colored lines on the screen.

![](documentation/images/z80_sample_prg_run.gif)


It does so by manipulating the color screen area (0x5800).

The action takes place in the 'main_loop':
1. it draws a one color line
2. it waits for half a second
3. it proceeds to the next line
4. loop from 1


# Debug with ZEsarUX

![](documentation/images/dbg_select_zesarux.jpg)

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

You should be left with a stopped program like for the Z80 simulator. 

From here you can:
- step into, step over, step-out
- click on the call stack: It will navigate directly to the asm file.
- hover over register in the asm file: It will show the values and also (if available) the corresponding labels.
- change register values: a double click on the value of a register in the REGISTER area will allow you to enter a different value.



# Unit Tests

The program also includes some unit tests to test the different memory fill subroutines.
Details how to setup unit tests can be found [here](https://github.com/maziac/DeZog/blob/master/documentation/UnitTests.md).

To run the unit test from a graphical UI (the test explorer) you additionally require the [z80-unit-tests](https://github.com/maziac/z80-unit-tests) extension.

![](documentation/images/unittest_test_explorer.jpg)

