.syntax unified
.section .text
@	thumb_func_start sub_8F10B94
@sub_8F10B94: @ 0x08F10B94
	push {r4, lr}
	ldr r4, _08F10BBC @ =gBattlerData
_08F10B98:
	bl Random
	lsrs r2, r0, #0x1d
	lsls r0, r2, #5
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F10B98
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	bne _08F10B98
	ldr r0, _08F10BC0 @ =gUnknown_030036EC
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F10BBC: .4byte gBattlerData
_08F10BC0: .4byte gUnknown_030036EC

.syntax divided
