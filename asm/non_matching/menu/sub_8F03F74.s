.syntax unified
.section .text

@	thumb_func_start sub_8F03F74
@sub_8F03F74: @ 0x08F03F74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08F03FC0 @ =gUnknown_03000784
	mov sb, r0
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldrb r7, [r0, #6]
	ldrb r6, [r0, #7]
	ldr r1, _08F03FC4 @ =gGameInfo
	mov r8, r1
	movs r4, #0x80
	adds r0, r7, #0
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r6, #3
	adds r0, r0, r1
	movs r1, #0x88
	lsls r1, r1, #2
	add r1, r8
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r2, #7
	ands r2, r6
	adds r5, r1, #0
	lsls r5, r2
	ands r5, r4
	cmp r5, #0
	beq _08F03FCC
	ldr r0, _08F03FC8 @ =0x000003A1
	bl DrawTextWithId
	b _08F040C2
	.align 2, 0
_08F03FC0: .4byte gUnknown_03000784
_08F03FC4: .4byte gGameInfo
_08F03FC8: .4byte 0x000003A1
_08F03FCC:
	adds r0, r4, #0
	asrs r0, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0xa
	bl PlaySfxById1
	ldr r4, _08F04074 @ =gUnknown_0300150C
	mov r2, sb
	ldr r0, [r2]
	str r0, [r4]
	bl sub_8F03128
	str r5, [r4]
	ldr r0, _08F04078 @ =0x00000399
	bl DrawTextWithId
	movs r0, #0x7f
	ands r0, r7
	cmp r0, #0
	beq _08F040BC
	bl SelectItem
	ldr r0, _08F0407C @ =gUnknown_030007D8
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08F04080 @ =0x0000039A
	bl DrawTextWithId
	movs r3, #0
	movs r0, #8
	add r0, r8
	mov ip, r0
_08F04012:
	mov r1, ip
	adds r0, r3, r1
	ldrb r4, [r0]
	subs r1, r4, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0403C
	movs r2, #0
	lsls r1, r1, #6
	ldr r5, _08F04084 @ =gUnknown_030031F0
_08F04028:
	adds r0, r2, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0408C
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F04028
_08F0403C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F04012
	movs r2, #0x80
	ands r7, r2
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x1a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r6, #3
	adds r0, r0, r1
	movs r1, #0x88
	lsls r1, r1, #2
	add r1, r8
	adds r0, r0, r1
	movs r1, #7
	ands r6, r1
	asrs r2, r6
	ldrb r1, [r0]
	bics r1, r2
	strb r1, [r0]
	ldr r0, _08F04088 @ =0x0000039D
	bl DrawTextWithId
	b _08F040C2
	.align 2, 0
_08F04074: .4byte gUnknown_0300150C
_08F04078: .4byte 0x00000399
_08F0407C: .4byte gUnknown_030007D8
_08F04080: .4byte 0x0000039A
_08F04084: .4byte gUnknown_030031F0
_08F04088: .4byte 0x0000039D
_08F0408C:
	ldr r0, _08F040B0 @ =gCurrentCharacterId
	strb r4, [r0]
	adds r0, r4, #0
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r2, r0
	adds r0, r0, r5
	ldr r1, _08F040B4 @ =gCurrentItemId
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _08F040B8 @ =0x0000039B
	bl DrawTextWithId
	movs r0, #6
	bl PlaySfxById1
	b _08F040C2
	.align 2, 0
_08F040B0: .4byte gCurrentCharacterId
_08F040B4: .4byte gCurrentItemId
_08F040B8: .4byte 0x0000039B
_08F040BC:
	ldr r0, _08F040D8 @ =0x000003A1
	bl DrawTextWithId
_08F040C2:
	ldr r1, _08F040DC @ =gUnknown_03003170
	movs r0, #1
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F040D8: .4byte 0x000003A1
_08F040DC: .4byte gUnknown_03003170

    .syntax divided
