.syntax unified
.section .text

@	thumb_func_start sub_8F0DA58
@sub_8F0DA58: @ 0x08F0DA58
	push {r4, lr}
	b _08F0DA7A
_08F0DA5C:
	bl sub_8F040E0
	bl UpdateInput
	ldr r1, _08F0DA74 @ =gKeysDown
	movs r0, #9
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F0DA78
	movs r0, #1
	b _08F0DA84
	.align 2, 0
_08F0DA74: .4byte gKeysDown
_08F0DA78:
	subs r0, r4, #1
_08F0DA7A:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08F0DA5C
	movs r0, #0
_08F0DA84:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
