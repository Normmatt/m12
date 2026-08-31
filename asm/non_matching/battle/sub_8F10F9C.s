.syntax unified
.section .text
@	thumb_func_start sub_8F10F9C
@sub_8F10F9C: @ 0x08F10F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	movs r0, #0xe
	bl sub_8F0EA64
	movs r3, #0
	ldr r6, _08F11008 @ =gMiscContainer
_08F10FAA:
	ldr r0, [r6]
	adds r0, r0, r3
	ldrb r5, [r0]
	cmp r5, #0
	beq _08F10FEC
	lsls r0, r3, #2
	mov r1, sp
	adds r2, r1, r0
	adds r4, r3, #1
	strh r4, [r2]
	movs r1, #1
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, #5
	strb r1, [r2, #2]
	lsrs r1, r3, #1
	adds r1, #0x15
	strb r1, [r2, #3]
	adds r0, #6
	ldrb r1, [r2, #3]
	bl SetTextPosition
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r5, r2
	bl DrawTextWithIdNoWait
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	cmp r3, #7
	bls _08F10FAA
_08F10FEC:
	lsls r0, r3, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	adds r1, r0, #0
	cmp r1, #0
	bge _08F1100C
	movs r0, #1
	b _08F1108E
	.align 2, 0
_08F11008: .4byte gMiscContainer
_08F1100C:
	ldr r0, [r6]
	adds r0, r0, r1
	subs r0, #1
	ldrb r5, [r0]
	ldr r6, _08F1104C @ =gBattlerData
	ldr r4, _08F11050 @ =gUnknown_03003700
	ldrb r2, [r4]
	lsls r0, r2, #5
	adds r0, r0, r6
	strb r5, [r0, #0x1b]
	ldrb r2, [r4]
	lsls r0, r2, #5
	adds r0, r0, r6
	subs r1, #1
	strb r1, [r0, #0x19]
	ldr r7, _08F11054 @ =off_30036F0
	lsls r0, r5, #3
	ldr r1, _08F11058 @ =gItemData
	adds r0, r0, r1
	str r0, [r7]
	ldrb r0, [r4]
	bl sub_8F11268
	cmp r0, #0
	beq _08F1105C
	bl sub_8F0F244
	movs r0, #0x14
	bl sub_8F0EA64
	b _08F11078
	.align 2, 0
_08F1104C: .4byte gBattlerData
_08F11050: .4byte gUnknown_03003700
_08F11054: .4byte off_30036F0
_08F11058: .4byte gItemData
_08F1105C:
	ldr r0, [r7]
	ldrb r5, [r0, #5]
	cmp r5, #0
	bne _08F11080
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08F11072
	movs r0, #0x11
	bl sub_8F0EA64
	b _08F11078
_08F11072:
	movs r0, #0x10
	bl sub_8F0EA64
_08F11078:
	bl sub_8F0E8AC
	movs r0, #1
	b _08F1108E
_08F11080:
	ldrb r4, [r4]
	lsls r0, r4, #5
	adds r0, r0, r6
	strb r5, [r0, #0x1d]
	adds r0, r5, #0
	bl sub_8F10E94
_08F1108E:
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
