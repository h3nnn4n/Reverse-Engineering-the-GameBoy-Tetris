Memory Locations
================

 * 0xff80: The current keypress on the joypad
   * bit 0 A
   * bit 1 B
   * bit 2 Select
   * bit 3 Start
   * bit 4 Right
   * bit 5 Left
   * bit 6 Up
   * bit 7 Down
 * 0xff81: The joypad keypess for the past frame
 * 0xffb4: Something Related to the Y pos of the falling piece
 * 0xffb5: No idea what this does, but it is related to the falling piece
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


 * 0xff92: The X position for the falling piece
 * 0xff93: The Y position for the falling piece

 * 0xffb2: The Y position for the falling piece
 * 0xffb3: The X position for the falling piece
