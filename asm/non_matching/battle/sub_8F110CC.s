.syntax unified
.section .text
@	thumb_func_start sub_8F110CC
@sub_8F110CC: @ 0x08F110CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r7, #8
	movs r3, #0
	ldr r0, _08F11110 @ =gMiscContainer
	ldr r4, [r0]
	movs r5, #7
	movs r6, #0x80
_08F110E4:
	lsrs r2, r7, #3
	adds r2, r4, r2
	adds r1, r7, #0
	ands r1, r5
	adds r0, r6, #0
	asrs r0, r1
	ldrb r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _08F110FE
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08F110FE:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x3f
	bls _08F110E4
	cmp r3, #0
	bne _08F11114
_08F1110C:
	movs r0, #1
	b _08F11218
	.align 2, 0
_08F11110: .4byte gMiscContainer
_08F11114:
	movs r7, #8
	movs r0, #0
	str r0, [sp, #0x28]
	add r0, sp, #0x28
	mov sb, r0
	movs r1, #0
	mov sl, r1
_08F11122:
	cmp r7, #0x3f
	bls _08F11128
	movs r7, #8
_08F11128:
	lsrs r4, r7, #3
	ldr r0, _08F111F0 @ =gMiscContainer
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F111FC
	movs r0, #0xe
	bl sub_8F0EA64
	movs r0, #0x12
	bl sub_8F0EA64
	movs r5, #0
	movs r6, #0
	mov r8, r4
_08F11148:
	ldr r0, _08F111F0 @ =gMiscContainer
	ldr r1, [r0]
	add r1, r8
	movs r0, #0x80
	asrs r0, r5
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F11194
	lsls r0, r6, #2
	mov r1, sp
	adds r2, r1, r0
	adds r4, r7, r5
	adds r0, r4, #1
	strh r0, [r2]
	movs r1, #1
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, #5
	strb r1, [r2, #2]
	lsrs r1, r5, #1
	adds r1, #0x15
	strb r1, [r2, #3]
	adds r0, #6
	ldrb r1, [r2, #3]
	bl SetTextPosition
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r4, r4, r2
	adds r0, r4, #0
	bl DrawTextWithIdNoWait
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08F11194:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08F11148
	lsls r0, r6, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #5
	strb r0, [r1, #2]
	movs r0, #0x14
	strb r0, [r1, #3]
	str r6, [sp, #0x28]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sp
	mov r1, sl
	strh r1, [r0]
	mov r0, sp
	mov r1, sb
	bl HandleSelectMenuInput
	cmp r0, #0
	blt _08F1110C
	cmp r0, #0xff
	bgt _08F111FC
	subs r0, #1
	lsls r0, r0, #0x18
	ldr r2, _08F111F4 @ =gUnknown_03003688
	lsrs r0, r0, #0x15
	ldr r1, _08F111F8 @ =gPsiData
	adds r0, r0, r1
	str r0, [r2]
	ldrb r2, [r0, #5]
	cmp r2, #0
	bne _08F11206
	movs r0, #0x10
	bl sub_8F0EA64
	bl sub_8F0E8AC
	b _08F1110C
	.align 2, 0
_08F111F0: .4byte gMiscContainer
_08F111F4: .4byte gUnknown_03003688
_08F111F8: .4byte gPsiData
_08F111FC:
	adds r0, r7, #0
	adds r0, #8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	b _08F11122
_08F11206:
	ldr r1, _08F11228 @ =gBattlerData
	ldr r0, _08F1122C @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	strb r2, [r0, #0x1d]
	adds r0, r2, #0
	bl sub_8F10E94
_08F11218:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F11228: .4byte gBattlerData
_08F1122C: .4byte gUnknown_03003700

.syntax divided
