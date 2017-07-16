Function Table
==============
Contains a list of _functions_ and _procedures_ that I was able to identify. The first section has a list of functions grouped by
their functions. Each function is referenced by its memory location. The second session has a list of the identified
functions with a brief description.

Functions Function
==================
No pun intended
---------------

### Initialization
* 0x028b
* 0x255d
* 0x26d7
* 0x27e9
* 0x69d6

### VBLANK
* 0x2240
* 0x2417
* 0x242c

### Gamepad
* 0x1c29
* 0x255d
* 0x29fa

### DMA
* 0xffb6

### LOGIC
* 0x0377

### RNG
* 0x2062

### Unknow
* 0x0355


Functions List
==============

* 0x01fd: Start of VBLANK routine
* 0x028b: Clears all of WRAM. Entry point leads here
* 0x0355: Changes `0xffa6` and `0xffa7`
* 0x0377: Reads from `0xffe1`. Possibly is related to the main game loop
* 0x1c29: Reads the Joystick State stored at `0xff80` and `0xff81`
* 0x2240: One of the many functions called after VBLANK
* 0x2417: Called after VBLANK
* 0x242c: Called after VBLANK
* 0x255d: Function that reads from `0xff80` and `0xff81`. Quite big, might be one of the games backbone
* 0x26d7: Initialize some values at HIRAM
* 0x27e9: Clears from 0x9800 to 0x9bff (BG/Window tilemaps)
* 0x29fa: The function that reads from `0xff00` and updates `0xff80` and `0xff81`
* 0x69d6: Some of the initialization routines run at boot (TODO: Confirm this)
* 0xffb6: Routine that waits for the DMA to finish. This function is in HIRAM, which means that something has to write it there first
* 0x2062: Updates the current piece, preview piece and the next preview piece. Calls the RNG function also
* 0x26ea: A Wrapper for function that updates the piece sprite
* 0x2ad1: The sprite update function called by 0x26ea

##### Reset Vector

* 0x0000: rst0     - Not used
* 0x0008: rst8     - Not used
* 0x0010: rst16    - Not used
* 0x0018: rst24    - Not used
* 0x0020: rst32    - Not used
* 0x0028: rst40    - 0x0377 leads here
* 0x0030: rst48    - C Not used but contains code, but isnt called upon. rst40 code just spills over its size
* 0x0038: rst56    - Not used
* 0x0040: VBLANK   - Jumps to 0xfd01
* 0x0048: LCD-STAT - Not used
* 0x0050: TIMER    - Not used
* 0x0058: SERIAL   - Not used
* 0x0060: JOYPAD   - Not used

