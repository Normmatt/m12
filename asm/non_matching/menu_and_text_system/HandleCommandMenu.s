.syntax unified
.section .text
@	thumb_func_start HandleCommandMenu
@HandleCommandMenu: @ 0x08F0B238
	push {r4, r5, r6, lr}
	sub sp, #0x38
	adds r5, r0, #0
	mov r0, sp
	ldr r1, _08F0B28C @ =gUnknown_08F29F84
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	add r4, sp, #0x1c
	ldr r6, _08F0B290 @ =gMsg_CommandBox
	mov r2, sp
	adds r3, r4, #0
	movs r1, #6
_08F0B258:
	ldm r2!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bge _08F0B258
	adds r0, r6, #0
	bl HandleControlCodes
	movs r1, #0
	str r1, [r4, #0x10]
	ldr r0, _08F0B294 @ =gTextPlaySfx
	strb r1, [r0]
	bl DrawMoneyWindow
	bl DrawPartyInfoWindow
	cmp r5, #0
	bne _08F0B298
	bl UpdateBg0Tilemap
	adds r0, r4, #0
	movs r1, #0
	bl HandleSelectMenuInput
	b _08F0B2B6
	.align 2, 0
_08F0B28C: .4byte gUnknown_08F29F84
_08F0B290: .4byte gMsg_CommandBox
_08F0B294: .4byte gTextPlaySfx
_08F0B298:
	ldr r2, _08F0B2C0 @ =gBg0TilemapBuffer
	subs r0, r5, #1
	lsls r0, r0, #2
	add r0, sp
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldr r0, _08F0B2C4 @ =gUnknown_030034C0
	ldrh r0, [r0]
	adds r0, #0xff
	strh r0, [r1]
	adds r0, r5, #0
_08F0B2B6:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08F0B2C0: .4byte gBg0TilemapBuffer
_08F0B2C4: .4byte gUnknown_030034C0

.syntax divided
