.syntax unified
.section .text
@	thumb_func_start DrawTextWithId
@DrawTextWithId: @ 0x08F0CB1C
	push {lr}
	bl save_line_number_a
	ldr r1, [r1]
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08F0CB32
	bl DrawTextWithIdWaitForButton
_08F0CB32:
	pop {r0}
	bx r0
	.align 2, 0
_08F0CB38: .4byte gUnknown_030034E8

.syntax divided
