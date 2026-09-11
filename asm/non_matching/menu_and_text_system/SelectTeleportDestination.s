.syntax unified
.section .text
@	thumb_func_start SelectTeleportDestination
@SelectTeleportDestination: @ 0x08F0BB5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r0, _08F0BBEC @ =gMsg_Window8Entries
	bl HandleControlCodes
	movs r0, #5
	movs r1, #2
	bl SetTextPosition
	ldr r0, _08F0BBF0 @ =gMsg_Teleport_Label
	bl HandleControlCodes
	ldr r0, _08F0BBF4 @ =gGameInfo
	ldr r1, _08F0BBF8 @ =0x0000021D
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r2, #0
	mov r8, r2
	movs r5, #0
	ldr r0, _08F0BBFC @ =gUnknown_08F29E88
	mov sb, r0
	mov r4, sp
_08F0BB8E:
	movs r0, #0x80
	ands r0, r7
	adds r6, r5, #1
	cmp r0, #0
	beq _08F0BBC0
	lsls r0, r6, #2
	add r0, sb
	ldr r0, [r0]
	str r0, [r4]
	ldrb r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r4, #3]
	bl SetTextPosition
	ldr r1, _08F0BC00 @ =0x000004CF
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl DrawTextWithIdNoWait
	adds r4, #4
	movs r2, #1
	add r8, r2
_08F0BBC0:
	lsls r0, r7, #0x19
	lsrs r7, r0, #0x18
	adds r5, r6, #0
	cmp r5, #7
	ble _08F0BB8E
	mov r1, r8
	lsls r0, r1, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0BBEC: .4byte gMsg_Window8Entries
_08F0BBF0: .4byte gMsg_Teleport_Label
_08F0BBF4: .4byte gGameInfo
_08F0BBF8: .4byte 0x0000021D
_08F0BBFC: .4byte gUnknown_08F29E88
_08F0BC00: .4byte 0x000004CF

.syntax divided
