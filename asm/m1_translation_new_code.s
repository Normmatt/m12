#ifdef NDS_VERSION
#include "macros.inc"
#else
.include "asm/macros.inc"
#endif

.syntax unified
.section .text

#ifdef ENGLISH

	thumb_func_start increase_offense
increase_offense:
  push {lr}                   // this function was the prank used on the live stream
  push {r2-r7}

  movs  r3,r0
  ldr  r0,=gUnknown_030031F0         // see if the Easy Ring is equipped on Ninten
  ldrb r0,[r0,#0x0A]
  cmp  r0,#0x37               // if it isn't, do normal stuff
  bne  increase_offense_end   // else change enemy stats in ways I don't fully understand

  movs  r0,r3
  ldr  r2,=0xFF00
  orrs  r0, r0, r2
  movs  r3,r0

increase_offense_end:
  movs  r0,r3
  ands  r0,r7
  strh r0,[r1,#0]
  pop  {r2-r7}
  pop  {pc}

  .pool

//----------------------------------------------------------------------------------------

	thumb_func_start increaseexp
increaseexp:
  movs  r3,r0
  ldr  r0,=gUnknown_030031F0  // see if the Easy Ring is equipped on Ninten
  ldrb r0,[r0,#0x0A]
  cmp  r0,#0x37        // if it isn't, do normal stuff
  bne  increaseexp_end               // else quadruple experience gained
  movs  r0,r3
  lsls  r3,r3,#2
#ifdef DEBUG
  // increase even more if debug mode is on
  lsls  r3,r3,#4
#endif

increaseexp_end:
  movs r0,r4
  bx  lr

  .pool

//----------------------------------------------------------------------------------------

	thumb_func_start increasemoney
increasemoney:
  push {r1}
  ldr  r1,=gUnknown_030031F0
  ldrb r1,[r1,#0x0A]
  cmp  r1,#0x37
  bne  increasemoney_end
  lsls r0,r0,#1        // double money if easy ring is equipped
#ifdef DEBUG
  // increase even more if debug mode is on
  lsls r0,r0,#3
#endif

increasemoney_end:
  pop  {r1}
  adds r0,r3,r0
  strh r0,[r1,#0]
  bx   lr

  .pool
//----------------------------------------------------------------------------------------

	thumb_func_start lowerencounterrate
lowerencounterrate:
  ldr  r1,=gUnknown_08F1BB48

  ldr  r0,=gUnknown_030031F0    // see if the Easy Ring is equipped on Ninten
  ldrb r0,[r0,#0x0A]
  cmp  r0,#0x37          // if it isn't, do normal stuff
  bne  lowerencounterrate_end                 // else do our easy-making stuff
#ifdef DEBUG
  // load no-enemies data if debug mode is on
  ldr  r1,=enratetable2
#else 
  ldr  r1,=enratetable1
#endif

lowerencounterrate_end:
  mov r0, r13
  bx  lr

enratetable:
  .byte 0x08,0x07,0x06,0x06,0x05,0x04,0x03,0x02
enratetable2:
  .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

  .pool
//----------------------------------------------------------------------------------------

	thumb_func_start producescreen1
producescreen1:
  push {r6}
  movs r0,#0xC8
  strb r0,[r6,#0x0D]
  movs r0,#0xC9
  strb r0,[r6,#0x0E]
  movs r0,#0xCA
  strb r0,[r6,#0x0F]
  movs r0,#0xCB
  strb r0,[r6,#0x10]
  movs r0,#0xCD
  strb r0,[r6,#0x11]
  movs r0,#0xCE
  strb r0,[r6,#0x12]
  movs r0,#0xCF
  strb r0,[r6,#0x13]
  adds r6,#0x33
  movs r0,#0xDF
  strb r0,[r6,#0x0]
  subs r6,#0x6
  movs r0,#0xD8
  strb r0,[r6,#0x0]
  pop  {r6}
  bx   lr

	thumb_func_start producescreen2
producescreen2:
  movs r0,#0xE3
  strb r0,[r1,#0]
  adds r1,#1
  movs r0,#0xE4
  strb r0,[r1,#0]
  adds r1,#1
  movs r0,#0xE5
  strb r0,[r1,#0]
  adds r1,#1
  movs r0,#0xE6
  strb r0,[r1,#0]
  adds r1,#1
  movs r0,#0xE7
  strb r0,[r1,#0]
  adds r1,#1
  movs r0,#0xE8
  strb r0,[r1,#0]
  adds r1,#1
  bx   lr

  .pool
//----------------------------------------------------------------------------------------

// this determines if the game should use the original size text box or the expanded one
	thumb_func_start choose_text_window_type
choose_text_window_type:
  push {lr}
  push {r4}
  ldr  r0,=gUnknown_08F26D4A_small      // load original, small text box window

  // sometimes r4 doesn't have the actual line number, usually when doing non-dialog stuff
  // like when you use items. So we check for that now here
  ldr  r4,=0x2014300      // since we're doing an unusual line, let's check our custom
  ldrh r4,[r4,#0]          // variable to see what the actual line # is
  cmp  r4,#0
  beq  choose_text_window_type_2
  

  // if we're here, we're looking at a standard dialog line, with the line number in r4
  // so we'll load from a custom table to see if this line needs a small window or not

  .load_table_entry:
  ldr  r1,=m1_window_data      // this is the start of our custom table
  adds r1,r1,r4
  ldrb r1,[r1,#0]          // if the value in the table is 1, then use small window
  cmp  r1,#0x1
  beq  choose_text_window_type_2

  ldr  r0,=gUnknown_08F26D4A  // load wide text box window

choose_text_window_type_2:
  movs r4,#0               // unset our custom "current line #" variable
  ldr  r1,=0x2014300
  strh r4,[r1,#0]

  pop  {r4}
  bl   HandleControlCodes
  ldr  r1,=gUnknown_030034B0
  movs r0,#0x80
  strb r0,[r1,#0]
  pop  {r0}
  bx   r0

  .pool
//----------------------------------------------------------------------------------------
// the yes/no selection is weird, so we gotta make it fit the window size too

	thumb_func_start choose_yes_no_size
choose_yes_no_size:
   push {lr}
   push {r1-r7}
   strb r1,[r0,#0x0]

   ldr  r0, =m1_window_yes_no_small    // load small-sized yes/no window address
   ldr  r4,=0x2014300      // let's get the line #, making sure it's not null
   ldrh r4,[r4,#0]
   cmp  r4,#0
   beq  choose_yes_no_size_end

   // if we're here, we're looking at a standard dialog line, with the line number in r4
   // so we'll load from a custom table to see if this line needs a small yes/no or not
   .load_table_entry2:
   ldr  r1,=m1_window_data      // this is the start of our custom table
   adds r1,r1,r4
   ldrb r1,[r1,#0]          // if the value in the table is 1, then use small window
   cmp  r1,#0x1
   beq  choose_yes_no_size_end

   ldr  r0, =m1_window_yes_no      // load wide yes/no window

choose_yes_no_size_end:
   pop  {r1-r7}
   pop  {pc}

  .pool

.align 2
m1_window_yes_no:
   .incbin "data/english/m1_window_yes_no.bin"
.align 2
m1_window_yes_no_small:
   .incbin "data/english/m1_window_yes_no_small.bin"
.align 2
m1_window_data:
   .incbin "data/english/m1_window_data.bin"

//----------------------------------------------------------------------------------------

// In Japanese, the word for drink is the same for swallow, which makes it weird when
// you try to use an HP capsule or something and it says you drank it. This little hack
// will make it say "swallow" if it's appropriate.

	thumb_func_start swallow_item
swallow_item:
   ldr  r1,=gUnknown_030007D4  // this has the current item # (hopefully all the time)
   ldrb r1,[r1,#0]             // load item #
   cmp  r1,#0x4E               // see if the item is between 4E and 52, which are capsules
   blt  .drink                 // if not, then load the normal "drink" line
   cmp  r1,#0x52               // if it is, then load the "swallow" line
   bgt  .drink
   ldr  r1,=0x6AE
   b    swallow_item_end

   .drink:
   ldr r1,=0x6B0

swallow_item_end:
   bx lr

  .pool
//----------------------------------------------------------------------------------------

// saves the current text line number to a custom area of RAM for use in other hacks here

	thumb_func_start save_line_number_a
save_line_number_a:
  ldr  r1,=0x2014300
  strh r0,[r1,#0]

  lsls r0,r0,#0x10
  ldr r1,=gUnknown_030034E8
  bx  lr

  .pool
//----------------------------------------------------------------------------------------
// basic string copy, r0 is the source address, r1 is the target address, 00 = end of line
// upon return, r0 has the number of bytes copied, r1 has the address of the end of line

	thumb_func_start strcopy
strcopy:
   push {r2,r3,lr}
   
strcopy_loop:
   ldrb r2,[r0,#0x0]
   strb r2,[r1,#0x0]
   adds r0,#0x1
   adds r1,#0x1
   cmp  r2,#0x0
   beq  strcopy_end
   adds r3,#0x1
   b    strcopy_loop

strcopy_end:
   movs r0,r3
   pop  {r2,r3,pc}

  .pool
//----------------------------------------------------------------------------------------
// copies a string (meant for battle text) to RAM, parsing control codes when possible
// this is done so we can add in auto line breaks as necessary later on
// r0 is source address, r1 is target address, line needs to be terminated with 00

	thumb_func_start parsecopy
parsecopy:

  push {r0-r7,lr}

  .loop_start:
  ldrb r2,[r0,#0x0]      // load character from ROM string
  cmp  r2,#0x3           // see if it's a control code, if so, let's do control code stuff
  bne  .copy_character

  .parse_control_code:
  ldrb r3,[r0,#0x1]      // load control code argument
  cmp  r3,#0x10; 
  bne parse_control_code_11
  bl control_code_10
  b .loop_start
parse_control_code_11:
  cmp  r3,#0x11
  bne parse_control_code_12
  bl control_code_11
  b .loop_start
parse_control_code_12:
  cmp  r3,#0x12
  bne parse_control_code_13
  bl control_code_12
  b .loop_start
parse_control_code_13:
  cmp  r3,#0x13
  bne parse_control_code_16
  bl control_code_13
  b .loop_start
parse_control_code_16:
  cmp  r3,#0x16
  bne parse_control_code_17
  bl control_code_16
  b .loop_start
parse_control_code_17:
  cmp  r3,#0x17
  bne parse_control_code_1D
  bl control_code_17
  b .loop_start
parse_control_code_1D:
  cmp  r3,#0x1D
  bne parse_control_code_20
  bl control_code_1D
  b .loop_start
parse_control_code_20:
  cmp  r3,#0x20
  bne parse_control_code_21
  bl control_code_20
  b .loop_start
parse_control_code_21:
  cmp  r3,#0x21
  bne parse_control_code_22
  bl control_code_21
  b .loop_start
parse_control_code_22:
  cmp  r3,#0x22
  bne parse_control_code_23
  bl control_code_22
  b .loop_start
parse_control_code_23:
  cmp  r3,#0x23
  bne parse_control_code_F0
  bl control_code_23
  b .loop_start
parse_control_code_F0:
  cmp  r3,#0xF0
  bne parse_control_code_F1
  bl control_code_F0
  b .loop_start
parse_control_code_F1:
  cmp  r3,#0xF1
  bne .copy_control_code
  bl control_code_F1
  b .loop_start

  .copy_control_code:
  movs r3,#0x3
  strb r3,[r1,#0x0]
  ldrb r3,[r0,#0x1]
  strb r3,[r1,#0x1]
  adds r0,#0x2
  adds r1,#0x2
  b    .loop_start

  .copy_character:
  strb r2,[r1,#0x00]
  adds r0,#0x1
  adds r1,#0x1
  cmp  r2,#0x0
  beq  parsecopy_end
  b    .loop_start  

parsecopy_end:
  pop  {r0-r7,pc}

  .pool
//----------------------------------------------------------------------------------------

// r0 has the text line number

	thumb_func_start copy_battle_line_to_ram
copy_battle_line_to_ram:
   push {lr}

   // now find the ROM address of the line in question, place in r0

   lsls r0,r0,#0x10
   ldr  r1,=gUnknown_030034E8
   ldr  r1,[r1,#0x0]
   lsrs r0,r0,#0xE
   adds r0,r0,r1
   ldr  r0,[r0,#0x0]
   cmp  r0,#0x0
   beq  battle_calling

   // now we store the target in r1 and execute a custom string copy
   ldr  r1,=0x2014310
   bl   parsecopy

   // now we scan the final string and add [BREAK]s as necessary to create auto-wrapping
   ldr  r0,=0x2014310
   bl   perform_auto_wrap

   // now we send the game's display routine on its merry way
   bl   HandleControlCodes

   battle_calling:  // this line is referenced by the auto-indent hack
   pop {pc}

  .pool
//----------------------------------------------------------------------------------------

perform_auto_wrap:
   push {r0-r7,lr}
   movs r2,r0      // load r2 with the start address of the string
   movs r1,r2      // r1 is the current character's address
   movs r7,r2      // r7 is last_space, the spot where the last space was
   movs r4,#0      // char_loc = 0

   //-------------------------------------------------------------------------------
   // Now we do the meat of the auto word wrap stuff
   .word_wrap_loop:
   ldrb r0,[r1,#0x0]            // load current character

   cmp  r0,#0x0
   beq  .word_wrap_end          // jump to the end if we're at the end of the string

   cmp  r0,#0x1                 // is the current character a space?
   beq  .space_found
   cmp  r0,#0x2                 // is the current character a [BREAK]?
   beq  .newline_found

   cmp  r0,#0x03                // if r0 == 0x03, this is a CC, so skip the width adding junk
   beq  .no_wrap_needed
   b    .main_wrap_code

   pop  {r0-r7,pc}

   //-------------------------------------------------------------------------------
   // We found a space or a space-like character, so reset some values

   .newline_found:
   movs r4,#0                   // this was a [WAIT] or [BREAK], so reset the width
   movs r7,r1                   // last_space = curr_char_address
   b    .no_wrap_needed

   .space_found:
   movs r7,r1                    // last_space = curr_char_address
                     
   //--------------------------------------------------------------------------------------------
   // Here is the real meat of the auto word wrap routine

   .main_wrap_code:
   adds r4,#0x1                 // char_loc++
   cmp  r4,#0x1B
   blt  .no_wrap_needed         // if curr_width < box_width, go to no_wrap_needed to update the width and such

   movs r4,#0                   // if we're executing this, then width >= box_width, so do curr_width = 0 now

   movs r1,r7                   // curr_char_address = last_space_address// we're gonna recheck earlier stuff

   movs r0,#0x02
   strb r0,[r7,#0x0]            // replace the last space-ish character with a newline code

   //--------------------------------------------------------------------------------------------
   // Get ready for the next loop iteration

   .no_wrap_needed:
   adds r1,#1                   // curr_char_address++
   b    .word_wrap_loop         // do the next loop iteration

   //--------------------------------------------------------------------------------------------
   // Let's get out of here!

   .word_wrap_end:
   pop  {r0-r7,pc}

  .pool
//----------------------------------------------------------------------------------------

control_code_10:
  push {r0,lr}
  ldr  r0,=gUnknown_03003208
  bl   strcopy
  pop  {r0}
  adds r0,#0x2
  subs r1,#1
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------

control_code_11:
  push {r0,lr}
  ldr  r0,=gUnknown_03003288
  bl   strcopy
  pop  {r0}
  adds r0,#0x2
  subs r1,#1
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------

control_code_12:
  push {r0,lr}
  ldr  r0,=gUnknown_03003248
  bl   strcopy
  pop  {r0}
  adds r0,#0x2
  subs r1,#1
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------

control_code_13:
  push {r0,lr}
  ldr  r0,=gUnknown_030032C8
  bl   strcopy
  pop  {r0}
  adds r0,#0x2
  subs r1,#1
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------

control_code_16:
  push {lr}
  push {r0,r2}
  push {r1}
  ldr  r1,=gUnknown_03003190
  ldrb r2,[r1,#0x8]
  lsls  r0,r2,#0x6
  adds r1,#0x38
  adds r0,r0,r1
  pop  {r1}
  bl   strcopy
  pop  {r0,r2}
  adds r0,#0x2
  subs r1,#1
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------
// this adds "'s party" if there's more than one character in the party

control_code_17:
  push {r0,lr}
  ldr  r0,=gUnknown_03003190
  ldrb r0,[r0,#0x9]
  cmp  r0,#0x0
  beq  control_code_17_end

  ldr  r0,=gUnknown_08F278F5
  bl   strcopy
  subs r1,#1

control_code_17_end:
  pop  {r0}
  adds r0,#0x2
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------
// this prints an item name

control_code_1D:
  push {lr}
  push {r0,r2-r7}
  push {r1}

  ldr  r1,=gUnknown_030007D4
  ldrb r2,[r1,#0x0]
  lsls  r0,r2,#0x18
  cmp  r0,#0
  blt  line434
  movs r1,r2
  movs r2,#0xFA
  lsls  r2,r2,#2
  b    line456

  line434:
  lsrs r0,r0,#0x18
  cmp  r0,#0xBF
  bhi  line450
  ldr  r0,=gUnknown_08F29EB0
  ldrb r1,[r1,#0]
  subs r1,#0x80
  lsls r1,r1,#1
  adds r1,r1,r0
  ldrh r0,[r1,#0]
  b    control_code_1D_end

  line450:
  ldrb r1,[r1,#0]
  movs r2,#0xEA
  lsls  r2,r2,#2
  line456:
  adds r0,r1,r2
  lsls r0,r0,#0x10
  ldr  r1,=gUnknown_030034E8
  ldr  r1,[r1,#0]
  lsrs r0,r0,#0xE
  adds r0,r0,r1
  ldr  r0,[r0,#0]

control_code_1D_end:
  pop  {r1}
  bl   strcopy
  subs r1,#1
  pop  {r0,r2-r7}

  adds r0,#0x2
  pop {pc}

  .pool
//----------------------------------------------------------------------------------------

control_code_20:
  push {r0,lr}
  ldr  r0,=gUnknown_03003640
  bl   strcopy
  pop  {r0}
  adds r0,#0x2
  subs r1,#1
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------

control_code_21:
  push {r0,lr}
  ldr  r0,=gUnknown_03003610
  bl   strcopy
  pop  {r0}
  adds r0,#0x2
  subs r1,#1
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------

control_code_22:
  push {r0,lr}
  ldr  r0,=gUnknown_030036A0
  bl   strcopy
  pop  {r0}
  adds r0,#0x2
  subs r1,#1
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------
// this is a custom battle control code that selects a/an/the for when an item is used

control_code_F0:
  push {lr}
  push {r2-r7}
  push {r0}

  ldr  r5,=gUnknown_08F70840
  ldr  r4,=gUnknown_03003690
  ldrh r0,[r4,#0x0]
  adds r0,#0x1
  adds r0,r0,r5
  ldrb r0,[r0,#0x0]      // this now has the item number being used
  lsls  r0,r0,#0x4
  ldr  r5,=m1_item_articles
  adds r0,r0,r5          // we now have the address of the custom article string to copy

  bl   strcopy
  pop  {r0}
  adds r0,#0x2
  subs r1,#1

  pop  {r2-r7}
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------
// this is a custom battle control code that selects a/an/the when an item is won in battle

control_code_F1:
  push {lr}
  push {r2-r7}
  push {r0}

  ldr  r4,=gUnknown_030007D4
  ldrb r0,[r4,#0x0]      // this now has the item number being used
  lsls  r0,r0,#0x4
  ldr  r5,=m1_item_articles
  adds r0,r0,r5          // we now have the address of the custom article string to copy

  bl   strcopy
  pop  {r0}
  adds r0,#0x2
  subs r1,#1

  pop  {r2-r7}
  pop  {pc}

  .pool

  .align 2
m1_item_articles:
  .incbin "data/english/m1_item_articles.bin"

//----------------------------------------------------------------------------------------
// this is used to display numbers

control_code_23:
  push {r0,lr}
  push {r7}
  movs r7,r1
  ldr  r0,=gUnknown_03003708
  ldr  r0,[r0,#0]         // r0 now has the number to be displayed, but we gotta convert it
  movs r5,r0              // copy number to r5 for easy retrieval
  movs r6,#0              // initialize counter
  push {r4-r6}

  .loop_start2:
  ldr  r0,=0x20142F0     // this is the write address in our custom area in RAM
  adds r4,r0,r6
  movs r0,r5
  movs r1,#0xA
  bl   __umodsi3          // calling the division routine
  adds r0,#0xB0           // r0 now has the tile # for the digit to be printed
  strb r0,[r4,#0x0]       // store digit tile # to RAM
  adds r6,#1              // increment counter
  movs r0,r5
  movs r1,#0xA
  bl   __udivsi3          // call remainder routine
  movs r5,r0
  cmp  r5,#0x0
  bne  .loop_start2


  .reverse_string:        // the number string is actually stored in reverse, so we gotta fix that
  ldr  r4,=0x20142F0
  movs r1,r7              // we're gonna reverse the number string into the main string
  cmp  r6,#0              // make sure we actually have a string to copy, this is the # of bytes
  ble  .end_routine

  subs r6,#1              // we want to start just before the end of the string
  .reverse_string_loop:
  adds r5,r4,r6           // give r5 the address of the byte to load
  ldrb r0,[r5,#0x0]       // load byte
  strb r0,[r1,#0x0]       // store byte in main string and increment position
  adds r1,#1

  subs r6,#1              // decrement counter, do another loop if necessary
  cmp  r6,#0
  blt  .end_routine
  b    .reverse_string_loop

  .end_routine:           // r1 needs to return the current address in the main string
  pop  {r4-r6}
  pop  {r7}
  pop  {r0}
  adds r0,#0x2
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------
// if there are multiple enemies, this will add a space between the names and the end letters

	thumb_func_start add_space_to_enemy_name
add_space_to_enemy_name:
  push {lr}
  movs r4,#0x01
  strb r4,[r5,#0x0]
  strb r0,[r5,#0x1]
  adds r5,#0x2
  pop  {pc}

  .pool
//----------------------------------------------------------------------------------------
// only ignore auto-indenting if we're in battle

	thumb_func_start possibly_ignore_auto_indents
possibly_ignore_auto_indents:
   push {lr}
   push {r2-r7}
   movs r0,r1
   
   mov  r3,sp
   adds r3,#0x2C
   ldr  r3,[r3,#0]
   ldr  r2,=battle_calling
   adds r2,#1
   cmp  r3,r2
   beq  possibly_ignore_auto_indents_end

   adds r0,#1

possibly_ignore_auto_indents_end:
   pop  {r2-r7}
   strb r0,[r2,#0x0]
   pop  {pc}

  .pool

#endif