.syntax unified
.section .text
@	thumb_func_start PickAnItemFromInventory
@PickAnItemFromInventory: @ 0x08F0B670
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r0, #0
	str r0, [sp, #0x28]
_08F0B680:
	ldr r1, [sp, #0x28]
	cmp r1, #3
	ble _08F0B68A
	movs r2, #0
	str r2, [sp, #0x28]
_08F0B68A:
	ldr r5, _08F0B74C @ =gGameInfo
	adds r0, r5, #0
	adds r0, #8
	ldr r1, [sp, #0x28]
	adds r0, r1, r0
	ldrb r0, [r0]
	mov r8, r0
	mov r6, r8
	subs r6, #1
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0B764
	ldr r0, _08F0B750 @ =gMsg_Window8Entries
	bl HandleControlCodes
	movs r0, #7
	movs r1, #2
	bl SetTextPosition
	mov r2, r8
	lsls r0, r2, #6
	adds r1, r5, #0
	adds r1, #0x38
	adds r0, r0, r1
	bl HandleControlCodes
	ldr r1, _08F0B754 @ =gUnknown_08F29E88
	ldr r0, [r1]
	str r0, [sp]
	movs r7, #1
	movs r4, #0
	mov sb, r6
	adds r5, #0x60
	mov sl, r5
	add r5, sp, #4
_08F0B6D2:
	mov r2, sb
	lsls r0, r2, #6
	adds r0, r4, r0
	add r0, sl
	ldrb r6, [r0]
	cmp r6, #0
	beq _08F0B70C
	adds r4, #1
	lsls r0, r4, #2
	ldr r1, _08F0B754 @ =gUnknown_08F29E88
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5]
	ldrb r0, [r5, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #3]
	bl SetTextPosition
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	bl DrawTextWithIdNoWait
	adds r5, #4
	adds r7, #1
	cmp r4, #7
	ble _08F0B6D2
_08F0B70C:
	lsls r0, r7, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	cmp r0, #0xff
	bgt _08F0B764
	cmp r0, #0
	ble _08F0B76C
	ldr r1, _08F0B758 @ =gUnknown_030007D8
	subs r0, #1
	strh r0, [r1]
	ldr r0, _08F0B75C @ =gUnknown_03003174
	mov r2, r8
	strb r2, [r0]
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r1, r1, r0
	add r1, sl
	ldrb r0, [r1]
	ldr r1, _08F0B760 @ =gUnknown_03003188
	strb r0, [r1]
	ldrb r0, [r1]
	b _08F0B76C
	.align 2, 0
_08F0B74C: .4byte gGameInfo
_08F0B750: .4byte gMsg_Window8Entries
_08F0B754: .4byte gUnknown_08F29E88
_08F0B758: .4byte gUnknown_030007D8
_08F0B75C: .4byte gUnknown_03003174
_08F0B760: .4byte gUnknown_03003188
_08F0B764:
	ldr r2, [sp, #0x28]
	adds r2, #1
	str r2, [sp, #0x28]
	b _08F0B680
_08F0B76C:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided
