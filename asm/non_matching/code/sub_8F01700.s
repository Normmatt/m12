.syntax unified
.section .text
@	thumb_func_start sub_8F01700
@sub_8F01700: @ 0x08F01700
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _08F018BC @ =gMapData7+0x1400
	adds r0, r0, r1
	mov sl, r0
	ldrh r0, [r0]
	adds r4, r0, r1
	ldr r1, _08F018C0 @ =gUnknown_03001D34
	ldrb r6, [r1]
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	cmp r7, r5
	blt _08F01736
	b _08F0187A
_08F01736:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r6, r1, #0
	movs r0, #1
	mov sb, r0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
_08F01748:
	ldrb r1, [r4]
	ldr r3, [sp, #8]
	adds r2, r1, r3
	ldrb r7, [r4, #1]
	ldr r0, [sp, #0xc]
	adds r7, r7, r0
	mov r8, r7
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _08F01760
	b _08F01870
_08F01760:
	movs r0, #8
	rsbs r0, r0, #0
	cmp r2, r0
	bgt _08F0176A
	b _08F01870
_08F0176A:
	cmp r2, #0xef
	ble _08F01770
	b _08F01870
_08F01770:
	cmp r8, r0
	ble _08F01870
	cmp r7, #0x9f
	bgt _08F01870
	ldr r3, _08F018C4 @ =gSprites
	ldrb r7, [r6]
	lsls r1, r7, #3
	adds r1, r1, r3
	ldr r7, _08F018C8 @ =0x000001FF
	adds r0, r7, #0
	ands r2, r0
	ldr r0, _08F018CC @ =0xFFFFFE00
	ldrh r7, [r1, #2]
	ands r0, r7
	orrs r0, r2
	strh r0, [r1, #2]
	ldrb r1, [r6]
	lsls r0, r1, #3
	adds r0, r0, r3
	mov r2, r8
	strb r2, [r0]
	ldrb r7, [r6]
	lsls r2, r7, #3
	adds r2, r2, r3
	movs r1, #3
	ldrb r0, [r4, #2]
	ands r1, r0
	lsls r1, r1, #1
	mov r7, sl
	ldrb r0, [r7, #3]
	asrs r0, r1
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ldrb r7, [r2, #5]
	ands r0, r7
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r0, [r6]
	lsls r2, r0, #3
	adds r2, r2, r3
	ldrb r7, [r4, #2]
	lsrs r1, r7, #6
	mov r0, sb
	ands r1, r0
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x11
	rsbs r0, r0, #0
	ldrb r7, [r2, #3]
	ands r0, r7
	orrs r0, r1
	strb r0, [r2, #3]
	ldrb r0, [r6]
	lsls r2, r0, #3
	adds r2, r2, r3
	ldrb r7, [r4, #2]
	lsrs r1, r7, #7
	mov r0, sb
	ands r1, r0
	ands r1, r0
	lsls r1, r1, #5
	movs r0, #0x21
	rsbs r0, r0, #0
	ldrb r7, [r2, #3]
	ands r0, r7
	orrs r0, r1
	strb r0, [r2, #3]
	ldrb r0, [r6]
	lsls r1, r0, #3
	adds r1, r1, r3
	ldr r2, _08F018D0 @ =0x000003FF
	str r2, [sp, #0x10]
	ldr r7, _08F018D4 @ =0xFFFFFC00
	mov ip, r7
	mov r0, ip
	ldrh r2, [r1, #4]
	ands r0, r2
	ldrb r7, [r4, #3]
	orrs r0, r7
	strh r0, [r1, #4]
	movs r0, #0x10
	ldrb r1, [r4, #2]
	ands r0, r1
	cmp r0, #0
	beq _08F0183E
	ldrb r7, [r6]
	lsls r2, r7, #3
	adds r2, r2, r3
	ldrh r3, [r2, #4]
	lsls r1, r3, #0x16
	lsrs r1, r1, #0x16
	mov r0, sl
	ldrb r0, [r0, #2]
	adds r1, r0, r1
	ldr r7, [sp, #0x10]
	ands r1, r7
	mov r0, ip
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #4]
_08F0183E:
	ldrb r0, [r6]
	lsls r1, r0, #3
	ldr r2, _08F018C4 @ =gSprites
	adds r1, r1, r2
	movs r0, #0xd
	rsbs r0, r0, #0
	ldrb r3, [r1, #5]
	ands r0, r3
	strb r0, [r1, #5]
	ldrb r7, [r6]
	lsls r1, r7, #3
	adds r0, r2, #0
	adds r0, #4
	adds r1, r1, r0
	ldrh r3, [r1]
	ldr r2, _08F018D8 @ =gUnknown_030007B8
	ldrh r2, [r2]
	adds r0, r3, r2
	strh r0, [r1]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldr r3, [sp, #4]
	adds r3, #1
	str r3, [sp, #4]
_08F01870:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	beq _08F0187A
	b _08F01748
_08F0187A:
	ldr r6, [sp, #4]
	cmp r6, #0
	beq _08F0190A
	movs r7, #8
	add r8, r7
	movs r5, #0
	ldr r3, _08F018DC @ =gUnknown_03003180
	adds r4, r3, #0
	ldr r1, _08F018E0 @ =gUnknown_03002240
	ldrb r0, [r3]
	cmp r5, r0
	bge _08F018F0
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	adds r2, r1, #0
	adds r6, r1, #0
_08F0189C:
	ldrh r7, [r2]
	cmp r0, r7
	bls _08F018E4
	ldrb r3, [r3]
	subs r3, #1
	cmp r3, r5
	blt _08F018F0
	lsls r0, r3, #2
	adds r2, r0, r6
_08F018AE:
	ldr r0, [r2]
	str r0, [r2, #4]
	subs r2, #4
	subs r3, #1
	cmp r3, r5
	bge _08F018AE
	b _08F018F0
	.align 2, 0
_08F018BC: .4byte gMapData7+0x1400
_08F018C0: .4byte gUnknown_03001D34
_08F018C4: .4byte gSprites
_08F018C8: .4byte 0x000001FF
_08F018CC: .4byte 0xFFFFFE00
_08F018D0: .4byte 0x000003FF
_08F018D4: .4byte 0xFFFFFC00
_08F018D8: .4byte gUnknown_030007B8
_08F018DC: .4byte gUnknown_03003180
_08F018E0: .4byte gUnknown_03002240
_08F018E4:
	adds r2, #4
	adds r5, #1
	adds r3, r4, #0
	ldrb r7, [r4]
	cmp r5, r7
	blt _08F0189C
_08F018F0:
	lsls r0, r5, #2
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0]
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0, #2]
	mov r3, sp
	ldrb r3, [r3]
	strb r3, [r0, #3]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_08F0190A:
	ldr r0, [sp, #4]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided
