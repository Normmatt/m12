#ifdef NDS_VERSION
#include "macros.inc"
#else
.include "asm/macros.inc"
#endif

.syntax unified
.section .text

.extern crt0

	thumb_func_start sub_8F15384
sub_8F15384: @ 0x08F15384
	bx pc
    nop
    
	arm_func_start sub_8F15388
sub_8F15388: @ 0x08F15388
	b crt0

    .word 0 @why does the align get moved above the code here?
    @.align 3, 0