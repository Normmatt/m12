.syntax unified
.section .text
@	thumb_func_start sub_8F10490
@sub_8F10490: @ 0x08F10490
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_8F10420
	ldr r0, _08F104E8 @ =gBattlerData
	lsls r6, r4, #5
	adds r6, r6, r0
	movs r5, #0
	strb r5, [r6]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8F0F014
	adds r0, r4, #0
	bl sub_8F0EF4C
	ldr r0, _08F104EC @ =gUnknown_030036C0
	subs r4, #4
	lsls r4, r4, #3
	adds r4, r4, r0
	strb r5, [r4]
	str r5, [sp]
	ldr r2, _08F104F0 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	movs r0, #3
	ldrb r6, [r6, #0x1a]
	ands r0, r6
	lsls r0, r0, #0xb
	ldr r1, _08F104F4 @ =0x0600E000
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08F104F8 @ =0x85000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F104E8: .4byte gBattlerData
_08F104EC: .4byte gUnknown_030036C0
_08F104F0: .4byte 0x040000D4
_08F104F4: .4byte 0x0600E000
_08F104F8: .4byte 0x85000200

.syntax divided
