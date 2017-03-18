Memory Locations
================

 * 0xff80: The current keypress on the joypad
   * bit 4 A
   * bit 5 B
   * bit 6 Select
   * bit 7 Start
   * bit 0 Right
   * bit 1 Left
   * bit 2 Up
   * bit 3 Down
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


 * 0xff93: The X position for the falling piece
 * 0xff92: The Y position for the falling piece

 * 0xffb2: The Y position for the falling piece
 * 0xffb3: The X position for the falling piece

 * 0xffa6: Seems to be a generic counter for some screen transistions, like 0xffe1 = 0x0d
 * 0xffa7: Is a timer for the softdrop, might be used to control how fast it falls

 * 0xc203: Stores the piece ID and Rotation at the same number. The first id is the default rotation, the others are the next 3 CCW rotations (B press)
   * 0x0c, 0x0d, 0x0e, 0x0f: The Square Piece
   * 0x04, 0x05, 0x06, 0x07: The J Piece
   * 0x00, 0x01, 0x02, 0x03: The L Piece
   * 0x08, 0x09, 0x0a, 0x0b: The I Piece
   * 0x14, 0x15, 0x16, 0x17: The S Piece
   * 0x10, 0x11, 0x12, 0x13: The Z Piece
   * 0x18, 0x19, 0x1a, 0x1b: The T Piece

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
