.syntax unified
.section .text
@	thumb_func_start sub_8F10730
@sub_8F10730: @ 0x08F10730
	push {r4, r5, r6, lr}
	ldr r1, _08F1079C @ =gUnknown_03003700
	movs r0, #0
	strb r0, [r1]
	ldr r6, _08F107A0 @ =gBattlerData
	adds r5, r1, #0
_08F1073C:
	ldrb r1, [r5]
	lsls r0, r1, #5
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0, #0x1d]
	ldrb r2, [r5]
	lsls r1, r2, #5
	adds r1, r1, r6
	movs r0, #0xf7
	ldrb r3, [r1, #0x1e]
	ands r0, r3
	strb r0, [r1, #0x1e]
	ldrb r2, [r5]
	lsls r0, r2, #5
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F107C4
	movs r0, #0xf4
	ldrb r3, [r1, #1]
	ands r0, r3
	cmp r0, #0
	bne _08F107C4
	movs r0, #0x20
	ldrb r3, [r1, #0x1e]
	ands r0, r3
	cmp r0, #0
	bne _08F107C4
	ldr r4, _08F107A4 @ =gUnknown_030036E8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F107A8
	cmp r2, #3
	bhi _08F107A8
	ldrb r1, [r1, #0x18]
	cmp r1, #4
	bhi _08F107A8
	bl sub_8F10C08
	cmp r0, #0
	bne _08F1073C
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F107AC
	bl sub_8F107D8
	b _08F107AC
	.align 2, 0
_08F1079C: .4byte gUnknown_03003700
_08F107A0: .4byte gBattlerData
_08F107A4: .4byte gUnknown_030036E8
_08F107A8:
	bl sub_8F107D8
_08F107AC:
	ldrb r1, [r5]
	lsls r0, r1, #5
	adds r1, r0, r6
	ldrb r0, [r1, #0x1d]
	cmp r0, #0x53
	beq _08F107BC
	cmp r0, #0x59
	bne _08F107C4
_08F107BC:
	movs r0, #8
	ldrb r2, [r1, #0x1e]
	orrs r0, r2
	strb r0, [r1, #0x1e]
_08F107C4:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08F1073C
	pop {r4, r5, r6}
	pop {r0}
	bx r0

.syntax divided
