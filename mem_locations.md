Memory Locations
================

--------------------------
### Gamepad

 * 0xff80: The current keypress on the joypad
 * 0xff81: The joypad keypess for the past frame

The bits at both address have the same meaning and are listed below:

 * bit 0 Right
 * bit 1 Left
 * bit 2 Up
 * bit 3 Down
 * bit 4 A
 * bit 5 B
 * bit 6 Select
 * bit 7 Start

--------------------------
### Game State

 * 0xff9a: The Level Frame Delay for piece drops i.e. how fast a piece falls
 * 0xff99: The remaining Frame Delay
 * 0xffe1: The screen state;
   * 0xff this seems to be the initial value, maybe it is just junk from my RAM
   * 0x24 a pre credits menu frame
   * 0x25 is the credits screen
   * 0x06 the transition between the credits and menu
   * 0x07 is the main menu
   * 0x08 transition to the gametype screen
   * 0x0e the gametype menu
   * 0x10 transition to the A-Type game screen
   * 0x11 A-Type level select screen
   * 0x00 The game screen
   * 0x01 transition screen
   * 0x0d the animation to the gameover screen
   * 0x04 the gameover screen, or the waiting screen after the B-Type game score screen
   * 0x10 transition to the A-Type game screen
   * 0x15 A/B-Type score screen, where you can enter your name for a high score. The id is the same for every position on the highscore list
   * 0x12 transition to the A/B-Type game screen
   * 0x13 B-Type game screen
   * 0x05 Transition to the B-Type game score screen
   * 0x0b B-Type game score screen
   * 0x34 This is one of the winning screens. I was afk when I got it, so I am not sure what code corresponds to what part
   * 0x2e same as ab:ve
   * 0x2f same as ab:ve
   * 0x30 same as above
   * 0x31 same as above
   * 0x32 same as above
   * 0x33 same as above

--------------------------
### Points and such

 * 0xff9e: The number of lines cleared. This value is shown in hexadecimal, but it skips 0xa to 0xe, so the hexadecimal value can be read as decimal. This is incremented as soon as the piece lands.
 * 0xff9f: The next numbers of cleared lines.
 * 0xffe7: Is the last digit of the total lines cleared. Maybe the rest is in another address. This is incremented as soon as the piece lands.
 * 0x9951: The first digit of the total of lines cleared that is show at the screen.
 * 0x9950: The second digit of the total of lines cleared that is show at the screen. This has the default value of 0x2f, which means "Dont print me"
 * 0x994f: The third digit of the total of lines cleared that is show at the screen. This has the default value of 0x2f, which means "Dont print me"
 * 0xffa6: Seems to be a generic counter for some screen transistions, like 0xffe1 = 0x0d

--------------------------
### Pieces

 * 0xc203: Stores the piece ID and Rotation at the same number. The first id is the default rotation, the others are the next 3 CCW rotations (B press)
   * 0x00, 0x01, 0x02, 0x03: The L Piece
   * 0x04, 0x05, 0x06, 0x07: The J Piece
   * 0x08, 0x09, 0x0a, 0x0b: The I Piece
   * 0x0c, 0x0d, 0x0e, 0x0f: The Square Piece
   * 0x10, 0x11, 0x12, 0x13: The Z Piece
   * 0x14, 0x15, 0x16, 0x17: The S Piece
   * 0x18, 0x19, 0x1a, 0x1b: The T Piece

 * 0xc213: The preview piece
 * 0xffae: The next preview piece

 * 0xc202: The X position for the center of the piece
 * 0xc201: The Y position for the center of the piece
 * 0xff92: The X position of the rightmost lowest piece block
 * 0xff93: The Y position for the same of above
 * 0xffb3: A mirror for `0xff92`, but only updated after the first piece moves
 * 0xffb2: Same as above, but for `0xff93`

Gravity measured by frames spent at each line. Version 1.0 and 1.1 have the same values but at different locations. For 1.0 it is at `0x1b06` and for 1.0 it is at `0x1b06`.
The hexdump for 1.0 is:


```
0x00001b61  3430 2c28 2420 1b15 100a 0908 0706 0505  40,($ ..........
0x00001b71  0404 0303                                ....
```

and for 1.1 is:

```
0x00001b06  3430 2c28 2420 1b15 100a 0908 0706 0505  40,($ ..........
0x00001b16  0404 0303                                ....
```

 * 0xffa7: Is a timer for the softdrop, might be used to control how fast it falls

---------------------------
### TODO
All of the address below are somehow related to the falling piece ID

 * 0xc012
 * 0xc016
 * 0xc01a
 * 0xc01e
 * 0xc203
 * 0xfe12
 * 0xfe16
 * 0xfe1a
 * 0xfe1e
 * 0xff89

---------------------------
### Board

The board is stored as follows:
 * 0xc822 0xc823 0xc824 ... 0xc82b
 * 0xc842 0xc843 0xc844 ... 0xc84b
 * 0xc862 0xc863 0xc864 ... 0xc86b
 * 0xc882 0xc883 0xc884 ... 0xc88b
 * 0xc8a2 0xc8a3 0xc8a4 ... 0xc8ab
 * 0xc8c2 0xc8c3 0xc8c4 ... 0xc8cb
 * 0xc8e2 0xc8e3 0xc8e4 ... 0xc8eb
 * 0xc902 0xc903 0xc904 ... 0xc90b
 * 0xc922 0xc923 0xc924 ... 0xc92b
 * 0xc942 0xc943 0xc944 ... 0xc94b
 * 0xc962 0xc963 0xc964 ... 0xc96b
 * 0xc982 0xc983 0xc984 ... 0xc98b
 * 0xc9a2 0xc9a3 0xc9a4 ... 0xc9ab
 * 0xc9c2 0xc9c3 0xc9c4 ... 0xc9cb
 * 0xc9e2 0xc9e3 0xc9e4 ... 0xc9eb
 * 0xca02 0xca03 0xca04 ... 0xca0b
 * 0xca22 0xca23 0xca24 ... 0xca2b

That maps the whole board. A value of `0x2f` symbols that the board is empty. TODO: Specify the other values.

The address `0xc0a3` and `0xc0a4` contains a pointer to the topmost line cleared. The address `0xc0a5` - `0xc0a6`, `0xc0a7` - `0xc0a8` and `0xc0a9` - `0xc0a1` contains the pointer to the other cleared lines, if any. A value of 0 represents that
there was no line clerared.
The possible values are anything between `0xc822` and `0xca22` with a step of `0x20`. e.g `0xc9e2` is possible but not `0xc9e3` or `0xc9f2`. The image bellow helps understand it.

![Board in-memory and Cleared Line pointers](images/board.png?raw=true "In memory Board")

The text matrix on the rop right is the ingame board. The values on the left are the points, on top, and the pointers to the cleared lines right below.
The blue sections shows that the board and the inmemory board are the same.
