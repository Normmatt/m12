.syntax unified
.section .text

@	thumb_func_start CheckAction
@CheckAction: @ 0x08F043F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08F0448C @ =gUnknown_03000788
	ldr r0, _08F04490 @ =gUnknown_08F1B670
	ldr r1, _08F04494 @ =gUnknown_030007A4
	ldrb r1, [r1]
	lsrs r1, r1, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x78
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, _08F04498 @ =gUnknown_03001508
	ldr r0, _08F0449C @ =gUnknown_08F1B674
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x58
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
_08F04430:
	ldr r2, _08F044A0 @ =gUnknown_03003170
	movs r0, #0
	strb r0, [r2]
	movs r5, #0
	ldr r1, _08F044A4 @ =gUnknown_03000784
	ldr r0, _08F044A8 @ =gUnknown_03001D40
	str r0, [r1]
	ldrb r0, [r0]
	adds r7, r2, #0
	adds r2, r1, #0
	lsls r3, r3, #0x18
	mov r8, r3
	cmp r0, #0
	beq _08F044DA
_08F0444C:
	ldr r2, [r2]
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08F044BA
	adds r3, r1, #0
	cmp r3, #0x20
	beq _08F04468
	movs r0, #0x40
	ldrb r1, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08F044BA
_08F04468:
	ldrh r0, [r2, #4]
	subs r1, r6, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r2, #6]
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bhi _08F044BA
	cmp r0, #0x3f
	bhi _08F044BA
	cmp r3, #0x20
	beq _08F044AC
	movs r0, #0xb
	bl ExecuteScript
	b _08F044B0
	.align 2, 0
_08F0448C: .4byte gUnknown_03000788
_08F04490: .4byte gUnknown_08F1B670
_08F04494: .4byte gUnknown_030007A4
_08F04498: .4byte gUnknown_03001508
_08F0449C: .4byte gUnknown_08F1B674
_08F044A0: .4byte gUnknown_03003170
_08F044A4: .4byte gUnknown_03000784
_08F044A8: .4byte gUnknown_03001D40
_08F044AC:
	bl sub_8F03F74
_08F044B0:
	ldr r0, _08F04508 @ =gUnknown_03003170
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _08F044DA
_08F044BA:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F044DA
	ldr r2, _08F0450C @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F04510 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0444C
_08F044DA:
	mov r3, r8
	cmp r3, #0
	bne _08F04518
	ldrb r0, [r7]
	cmp r0, #0
	beq _08F044E8
	b _08F045F2
_08F044E8:
	ldr r0, _08F04514 @ =gUnknown_030007A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F04518
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F04518
	adds r0, r4, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #1
	b _08F04430
	.align 2, 0
_08F04508: .4byte gUnknown_03003170
_08F0450C: .4byte gUnknown_03000784
_08F04510: .4byte gUnknown_03001D40
_08F04514: .4byte gUnknown_030007A4
_08F04518:
	ldr r0, _08F045B0 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F045F2
	movs r5, #0
	ldr r0, _08F045B4 @ =gUnknown_03000784
	ldr r1, _08F045B8 @ =gUnknown_03001D40
	str r1, [r0]
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	beq _08F04596
_08F04530:
	ldr r2, [r2]
	movs r0, #0x80
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08F04576
	movs r0, #0x40
	ldrb r3, [r2, #0x14]
	ands r0, r3
	cmp r0, #0
	beq _08F04576
	ldr r0, _08F045BC @ =gUnknown_03000788
	ldrh r3, [r2, #4]
	ldrh r0, [r0]
	subs r1, r3, r0
	adds r1, #0x40
	lsls r1, r1, #0x10
	ldr r0, _08F045C0 @ =gUnknown_03001508
	ldrh r2, [r2, #6]
	ldrh r0, [r0]
	subs r0, r2, r0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x13
	cmp r1, r0
	bhi _08F04576
	movs r0, #0xb0
	lsls r0, r0, #2
	cmp r4, r0
	bhi _08F04576
	movs r0, #0x34
	bl ExecuteScript
_08F04576:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F04596
	ldr r2, _08F045B4 @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F045B8 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F04530
_08F04596:
	ldr r0, _08F045B0 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F045F2
	ldr r0, _08F045C4 @ =gUnknown_03002440
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F045C8
	movs r0, #0xdc
	lsls r0, r0, #3
	bl DrawTextWithId
	b _08F045F2
	.align 2, 0
_08F045B0: .4byte gUnknown_03003170
_08F045B4: .4byte gUnknown_03000784
_08F045B8: .4byte gUnknown_03001D40
_08F045BC: .4byte gUnknown_03000788
_08F045C0: .4byte gUnknown_03001508
_08F045C4: .4byte gUnknown_03002440
_08F045C8:
	ldr r1, _08F045E0 @ =gGameInfo
	ldr r3, _08F045E4 @ =0x0000021F
	adds r1, r1, r3
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F045EC
	ldr r0, _08F045E8 @ =0x000006E1
	bl DrawTextWithId
	b _08F045F2
	.align 2, 0
_08F045E0: .4byte gGameInfo
_08F045E4: .4byte 0x0000021F
_08F045E8: .4byte 0x000006E1
_08F045EC:
	ldr r0, _08F04600 @ =0x00000387
	bl DrawTextWithId
_08F045F2:
	bl WaitForActionButtonPress
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F04600: .4byte 0x00000387

    .syntax divided
