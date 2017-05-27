Reverse Engineering the GameBoy Tetris
======================================

This is my first attempt at rever engineering something "big".

The tools and documentations that I used are listed below:

#### Tools:
 - [My own emulator:](https://github.com/h3nnn4n/garapa) with some custom hacks
 - [Radare2](https://github.com/radare/radare2)

#### Documentation:
 - [Harddrop page on the GMB Tetris](http://harddrop.com/wiki/Tetris_(Game_Boy))
 - [MrWint docs on his TAS](https://github.com/MrWint/gb-tas-gen)

Structure
---------

There data folder contains a dump from my own emulator with the code that was executed during a test.

Each line corresponds to one byte at the address space of the gameboy. Empty lines mean:
 - That there is code that wasnt executed
 - That there is data there
 - Or that in the line before there was an instruction that was more than 1 byte long

All the code related comments is stored as a comment in the respective line. For functions I added a small header with some info.

[This file](mem_locations.md) has some information on some memory locations.
[This file](function_table.md) has a list of the functions.


Contribuiting
------------

If you want to do so, plase do a pull request. You can also findme on [EmuDev's Slack](https://slofile.com/slack/emudev).


License
-------

This work is released in a CC-BY-SA license.
