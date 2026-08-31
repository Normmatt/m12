.syntax unified
.section .text
@	thumb_func_start SelectPSI
@SelectPSI: @ 0x08F0B504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r0, #0
	str r0, [sp, #0x28]
_08F0B514:
	ldr r1, [sp, #0x28]
	cmp r1, #3
	ble _08F0B51E
	movs r2, #0
	str r2, [sp, #0x28]
_08F0B51E:
	ldr r5, _08F0B634 @ =gGameInfo
	adds r0, r5, #0
	adds r0, #8
	ldr r3, [sp, #0x28]
	adds r0, r3, r0
	ldrb r0, [r0]
	mov sb, r0
	mov r6, sb
	subs r6, #1
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08F0B53A
	b _08F0B654
_08F0B53A:
	ldr r0, _08F0B638 @ =gMsg_Window8Entries
	bl HandleControlCodes
	movs r0, #7
	movs r1, #2
	bl SetTextPosition
	mov r7, sb
	lsls r0, r7, #6
	adds r1, r5, #0
	adds r1, #0x38
	adds r0, r0, r1
	bl HandleControlCodes
	ldr r0, _08F0B63C @ =gUnknown_08F29E88
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #1
	mov r8, r0
	movs r3, #0
	movs r4, #0
	mov sl, r6
	add r5, sp, #4
_08F0B568:
	lsls r0, r4, #3
	ldr r2, _08F0B640 @ =gPsiData
	adds r1, r0, r2
	ldrb r0, [r1, #4]
	ldr r6, _08F0B634 @ =gGameInfo
	mov r7, r8
	lsls r2, r7, #2
	cmp r0, #0
	bne _08F0B588
_08F0B57A:
	adds r1, #8
	adds r4, #1
	cmp r4, #0x3f
	bgt _08F0B5E6
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08F0B57A
_08F0B588:
	asrs r1, r4, #3
	mov r2, sl
	lsls r0, r2, #6
	adds r1, r1, r0
	ldr r7, _08F0B644 @ =gUnknown_03003200
	adds r1, r1, r7
	movs r0, #7
	ands r0, r4
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	movs r1, #0x80
	ands r0, r1
	adds r7, r4, #1
	adds r6, r3, #1
	cmp r0, #0
	beq _08F0B5D8
	ldr r1, _08F0B63C @ =gUnknown_08F29E88
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5]
	strh r7, [r5]
	ldrb r0, [r5, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #3]
	bl SetTextPosition
	movs r1, #0x8d
	lsls r1, r1, #3
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl DrawTextWithIdNoWait
	adds r5, #4
	movs r2, #1
	add r8, r2
_08F0B5D8:
	adds r3, r6, #0
	adds r4, r7, #0
	ldr r6, _08F0B634 @ =gGameInfo
	mov r7, r8
	lsls r2, r7, #2
	cmp r3, #7
	ble _08F0B568
_08F0B5E6:
	mov r1, sp
	adds r0, r1, r2
	movs r2, #0
	strh r2, [r0]
	mov r3, sl
	lsls r1, r3, #6
	adds r1, r1, r6
	adds r1, #0x41
	movs r0, #0xc0
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F0B604
	mov r0, sp
	strh r2, [r0, #4]
_08F0B604:
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	adds r2, r0, #0
	cmp r2, #0xff
	bgt _08F0B654
	cmp r2, #0
	ble _08F0B65C
	subs r2, #1
	ldr r1, _08F0B648 @ =gUnknown_030007D8
	movs r7, #1
	rsbs r7, r7, #0
	adds r0, r7, #0
	strh r0, [r1]
	ldr r0, _08F0B64C @ =gUnknown_03003174
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08F0B650 @ =gUnknown_03003188
	adds r0, r2, #0
	subs r0, #0x40
	strb r0, [r1]
	b _08F0B65C
	.align 2, 0
_08F0B634: .4byte gGameInfo
_08F0B638: .4byte gMsg_Window8Entries
_08F0B63C: .4byte gUnknown_08F29E88
_08F0B640: .4byte gPsiData
_08F0B644: .4byte gUnknown_03003200
_08F0B648: .4byte gUnknown_030007D8
_08F0B64C: .4byte gUnknown_03003174
_08F0B650: .4byte gUnknown_03003188
_08F0B654:
	ldr r2, [sp, #0x28]
	adds r2, #1
	str r2, [sp, #0x28]
	b _08F0B514
_08F0B65C:
	adds r0, r2, #0
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
