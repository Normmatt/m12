.syntax unified
.section .text
@	thumb_func_start PickAnItemFromCloset
@PickAnItemFromCloset: @ 0x08F0B7E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r0, #0
	str r0, [sp, #0x28]
_08F0B7F0:
	ldr r1, [sp, #0x28]
	cmp r1, #9
	bgt _08F0B802
	lsls r0, r1, #3
	ldr r2, _08F0B830 @ =gUnknown_03003440
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0B806
_08F0B802:
	movs r3, #0
	str r3, [sp, #0x28]
_08F0B806:
	ldr r0, _08F0B834 @ =gMsg_Window8Entries
	bl HandleControlCodes
	movs r0, #7
	movs r1, #2
	bl SetTextPosition
	ldr r0, _08F0B838 @ =gMsg_Closet_Label
	bl HandleControlCodes
	movs r7, #0
	ldr r1, _08F0B83C @ =gUnknown_03003448
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0B844
	ldr r0, _08F0B840 @ =gUnknown_08F29E88
	ldr r0, [r0]
	str r0, [sp]
	movs r7, #1
	b _08F0B858
	.align 2, 0
_08F0B830: .4byte gUnknown_03003440
_08F0B834: .4byte gMsg_Window8Entries
_08F0B838: .4byte gMsg_Closet_Label
_08F0B83C: .4byte gUnknown_03003448
_08F0B840: .4byte gUnknown_08F29E88
_08F0B844:
	movs r0, #5
	movs r1, #2
	bl SetTextPosition
	ldr r0, _08F0B8C4 @ =0x000080DC
	bl WriteCharacterToTilemap
	ldr r0, _08F0B8C8 @ =0x000080FE
	bl WriteCharacterToTilemap
_08F0B858:
	movs r4, #0
	ldr r2, [sp, #0x28]
	lsls r2, r2, #3
	mov r8, r2
	ldr r3, _08F0B8CC @ =gUnknown_03003440
	mov sl, r3
	lsls r0, r7, #2
	mov r1, sp
	adds r5, r0, r1
	ldr r2, _08F0B8D0 @ =gUnknown_08F29E88
	mov sb, r2
_08F0B86E:
	mov r3, r8
	adds r0, r3, r4
	add r0, sl
	ldrb r6, [r0]
	cmp r6, #0
	beq _08F0B8A4
	adds r4, #1
	lsls r0, r4, #2
	add r0, sb
	ldr r0, [r0]
	str r0, [r5]
	ldrb r0, [r5, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #3]
	bl SetTextPosition
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r6, r1
	bl DrawTextWithIdNoWait
	adds r5, #4
	adds r7, #1
	cmp r4, #7
	ble _08F0B86E
_08F0B8A4:
	lsls r0, r7, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	cmp r0, #0xff
	ble _08F0B8D4
	ldr r3, [sp, #0x28]
	adds r3, #1
	str r3, [sp, #0x28]
	b _08F0B7F0
	.align 2, 0
_08F0B8C4: .4byte 0x000080DC
_08F0B8C8: .4byte 0x000080FE
_08F0B8CC: .4byte gUnknown_03003440
_08F0B8D0: .4byte gUnknown_08F29E88
_08F0B8D4:
	cmp r0, #0
	ble _08F0B8F6
	ldr r1, _08F0B908 @ =gUnknown_030007D8
	add r0, r8
	subs r0, #1
	strh r0, [r1]
	ldr r2, _08F0B90C @ =gUnknown_03003188
	ldr r0, _08F0B910 @ =gGameInfo
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	ldrb r0, [r2]
_08F0B8F6:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0B908: .4byte gUnknown_030007D8
_08F0B90C: .4byte gUnknown_03003188
_08F0B910: .4byte gGameInfo

.syntax divided
