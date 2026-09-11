.syntax unified
.section .text
@	thumb_func_start HandleGoodsMenuInput
@HandleGoodsMenuInput: @ 0x08F0B77C
	push {r4, r5, lr}
	sub sp, #0x28
	mov r1, sp
	ldr r0, _08F0B7BC @ =gUnknown_08F29FB4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	add r4, sp, #0x18
	adds r1, r4, #0
	ldr r0, _08F0B7C0 @ =gUnknown_08F29FCC
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08F0B7C4 @ =gMsg_WindowItemActions
	bl HandleControlCodes
	ldr r1, _08F0B7C8 @ =gGameInfo
	ldr r0, _08F0B7CC @ =gUnknown_03003174
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	movs r1, #0xc0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F0B7D0
	mov r0, sp
	b _08F0B7D2
	.align 2, 0
_08F0B7BC: .4byte gUnknown_08F29FB4
_08F0B7C0: .4byte gUnknown_08F29FCC
_08F0B7C4: .4byte gMsg_WindowItemActions
_08F0B7C8: .4byte gGameInfo
_08F0B7CC: .4byte gUnknown_03003174
_08F0B7D0:
	adds r0, r4, #0
_08F0B7D2:
	movs r1, #0
	bl HandleSelectMenuInput
	add sp, #0x28
	pop {r4, r5}
	pop {r1}
	bx r1

.syntax divided
