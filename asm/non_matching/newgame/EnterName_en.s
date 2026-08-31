.syntax unified
.section .text

@	thumb_func_start EnterName
@EnterName: @ 0x08F0DD0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08F0DE44 @ =0xFFFFFCB0
	add sp, r4
	str r0, [sp, #0x330]
	str r1, [sp, #0x334]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x338]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x33c]
	ldr r1, _08F0DE48 @ =gNameAlphabet
	movs r2, #0xc9
	lsls r2, r2, #2
	add r0, sp, #4
	bl memcpy
_08F0DD36:
	movs r4, #0
	ldr r0, [sp, #0x338]
	subs r0, #1
	str r0, [sp, #0x348]
	ldr r3, _08F0DE4C @ =gMsg_NameEntryAlphabet
	cmp r4, r0
	bge _08F0DD66
	ldr r1, [sp, #0x334]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0DD66
	ldr r1, [sp, #0x348]
_08F0DD4E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bhi _08F0DD66
	cmp r4, r1
	bge _08F0DD66
	ldr r2, [sp, #0x334]
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0DD4E
_08F0DD66:
	adds r5, r4, #0
	cmp r5, #5
	bhi _08F0DD88
	ldr r1, [sp, #0x348]
	cmp r5, r1
	bge _08F0DD88
	movs r2, #0xfc @change the question marks when typing a name to dots
_08F0DD74:
	ldr r6, [sp, #0x334]
	adds r0, r6, r5
	strb r2, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bhi _08F0DD88
	cmp r5, r1
	blt _08F0DD74
_08F0DD88:
	ldr r0, [sp, #0x334]
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
	cmp r4, #5
	bhi _08F0DD9A
	ldr r1, [sp, #0x348]
	cmp r4, r1
	blt _08F0DDA0
_08F0DD9A:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08F0DDA0:
	adds r0, r3, #0
	bl HandleControlCodes
	movs r0, #5
	movs r1, #2 @move desc. text up one row
	bl SetTextPosition
	ldr r0, [sp, #0x330]
	bl HandleControlCodes
	movs r0, #0x05 @move name to be below the text
	movs r1, #3
	bl SetTextPosition
	ldr r0, [sp, #0x334]
	bl HandleControlCodes
	ldr r5, _08F0DE50 @ =gUnknown_030007B8
	ldrh r6, [r5]
	movs r0, #0
	strh r0, [r5]
	bl sub_8F016EC
	ldr r2, [sp, #0x33c]
	cmp r2, #0
	beq _08F0DDEA
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #4
	rsbs r2, r2, #0
	movs r3, #0x10 @move the naming screen sprites up a few pixels
	rsbs r3, r3, #0
	movs r1, #4
	bl sub_8F01700
_08F0DDEA:
	bl sub_8F0191C
	ldr r1, _08F0DE54 @ =0x040000D4
	ldr r0, _08F0DE58 @ =gSpriteBuffer
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0DE5C @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	strh r6, [r5]
	movs r6, #0
	mov sl, r6
	add r0, sp, #4
	ldrb r0, [r0, #2]
	mov r8, r0
	add r0, sp, #4
	ldrb r7, [r0, #3]
	adds r5, r4, #0
	ldr r1, _08F0DE60 @ =gUnknown_030034D0
	movs r0, #0x80
	strb r0, [r1]
	mov sb, r6
	movs r0, #0xcb
	lsls r0, r0, #2
	add r0, sp
	str r0, [sp, #0x344]
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0x340]
_08F0DE28:
	mov r0, r8
	adds r1, r7, #0
	bl SetTextPosition
	movs r0, #8
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _08F0DE68
	ldr r0, _08F0DE64 @ =0x00008050
	bl WriteCharacterToTilemap
	b _08F0DE76
	.align 2, 0
_08F0DE44: .4byte 0xFFFFFCB0
_08F0DE48: .4byte gNameAlphabet
_08F0DE4C: .4byte gMsg_NameEntryAlphabet
_08F0DE50: .4byte gUnknown_030007B8
_08F0DE54: .4byte 0x040000D4
_08F0DE58: .4byte gSpriteBuffer
_08F0DE5C: .4byte 0x84000100
_08F0DE60: .4byte gUnknown_030034D0
_08F0DE64: .4byte 0x00008050
_08F0DE68:
	mov r4, sl
	lsls r0, r4, #2
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	bl WriteCharacterToTilemap
_08F0DE76:
	adds r4, r5, #0
	adds r4, #0x05 @move name to be below the text
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl SetTextPosition
	movs r0, #8
	mov r6, sb
	ands r0, r6
	cmp r0, #0
	beq _08F0DE9C
	ldr r0, _08F0DE98 @ =0x00008050
	bl WriteCharacterToTilemap
	b _08F0DEA6
	.align 2, 0
_08F0DE98: .4byte 0x00008050
_08F0DE9C:
	ldr r1, [sp, #0x334]
	adds r0, r1, r5
	ldrb r0, [r0]
	bl WriteCharacterToTilemap
_08F0DEA6:
	bl UpdateBg0Tilemap
	ldr r0, _08F0DEC4 @ =gKeysDown
	ldrh r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08F0DEC8
	movs r0, #5
	bl PlayPulse1Sfx
	mov r2, sl
	lsls r6, r2, #2
	b _08F0DF00
	.align 2, 0
_08F0DEC4: .4byte gKeysDown
_08F0DEC8:
	movs r0, #6
	ands r0, r2
	cmp r0, #0
	beq _08F0DED8
	movs r0, #5
	bl PlayPulse1Sfx
	b _08F0DF38
_08F0DED8:
	ldr r6, _08F0DF34 @ =0x00000201
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _08F0DFD0
	movs r0, #5
	bl PlayPulse1Sfx
	mov r1, sl
	lsls r0, r1, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldrh r2, [r1]
	adds r6, r0, #0
	cmp r2, #0xc0
	bne _08F0DF98
	ldrb r0, [r1, #3]
	cmp r0, #0x10
	bne _08F0DF38
_08F0DF00:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl SetTextPosition
	ldr r2, [sp, #0x334]
	adds r0, r2, r5
	ldrb r0, [r0]
	bl WriteCharacterToTilemap
	mov r0, r8
	adds r1, r7, #0
	bl SetTextPosition
	mov r0, sp
	adds r0, r0, r6
	adds r0, #4
	ldrh r0, [r0]
	bl WriteCharacterToTilemap
	movs r5, #0
	ldr r4, [sp, #0x348]
	cmp r5, r4
	blt _08F0DF32
	b _08F0E216
_08F0DF32:
	b _08F0E1F8
	.align 2, 0
_08F0DF34: .4byte 0x00000201
_08F0DF38:
	cmp r5, #0
	bne _08F0DF50
	ldr r6, [sp, #0x334]
	strb r5, [r6]
	ldr r0, _08F0DF4C @ =gUnknown_030034D0
	strb r5, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	b _08F0E2DA
	.align 2, 0
_08F0DF4C: .4byte gUnknown_030034D0
_08F0DF50:
	adds r0, r5, #0
	adds r0, #0x05 @move name to be below the text
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl SetTextPosition
	ldr r0, [sp, #0x334]
	adds r4, r0, r5
	ldrb r0, [r4]
	bl WriteCharacterToTilemap
	ldrb r4, [r4]
	cmp r4, #0xfc @change the question marks when typing a name to dots
	bne _08F0DF74
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08F0DF74:
	ldr r1, [sp, #0x334]
	adds r4, r1, r5
	movs r0, #0xfc @change the question marks when typing a name to dots
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x05 @move name to be below the text
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl SetTextPosition
	ldrb r0, [r4]
	bl WriteCharacterToTilemap
	mov r2, sb
	adds r2, #1
	str r2, [sp, #0x34c]
	b _08F0E1F2
_08F0DF98:
	ldr r6, [sp, #0x334]
	adds r4, r6, r5
	strb r2, [r4]
	adds r0, r5, #0
	adds r0, #0x05 @move name to be below the text
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl SetTextPosition
	ldrb r0, [r4]
	bl WriteCharacterToTilemap
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x34c]
	cmp r5, #4
	bls _08F0DFBE
	b _08F0E1F2
_08F0DFBE:
	ldr r0, [sp, #0x338]
	subs r0, #2
	cmp r5, r0
	blt _08F0DFC8
	b _08F0E1F2
_08F0DFC8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08F0E1F2
_08F0DFD0:
	movs r0, #0xf0
	ands r0, r2
	mov r1, sb
	adds r1, #1
	str r1, [sp, #0x34c]
	cmp r0, #0
	bne _08F0DFE0
	b _08F0E1F2
_08F0DFE0:
	movs r4, #1
	rsbs r4, r4, #0
	mov sb, r4
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r6, [sp, #0x344]
	str r1, [r6]
	add r0, sp, #0x328
	str r1, [r0]
	movs r6, #0
	adds r1, r2, #0
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0E068
	ldr r1, [sp, #0x340]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0E02E
	add r4, sp, #4
_08F0E008:
	ldrb r2, [r4, #3]
	cmp r2, r7
	bhs _08F0E024
	ldr r0, [sp, #0x344]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x328
	bl sub_8F0CFD0
	cmp r0, #0
	beq _08F0E024
	mov sb, r6
_08F0E024:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E008
_08F0E02E:
	mov r1, sb
	cmp r1, #0
	blt _08F0E036
	b _08F0E1C2
_08F0E036:
	movs r6, #0
	ldr r2, [sp, #0x344]
	str r6, [r2]
	ldr r4, [sp, #0x340]
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E046
	b _08F0E1BC
_08F0E046:
	add r3, sp, #0x32c
	add r2, sp, #4
_08F0E04A:
	ldrb r0, [r2, #2]
	cmp r0, r8
	bne _08F0E05C
	ldrb r1, [r2, #3]
	ldr r0, [r3]
	cmp r1, r0
	ble _08F0E05C
	str r1, [r3]
	mov sb, r6
_08F0E05C:
	adds r2, #4
	adds r6, #1
	ldrh r0, [r2]
	cmp r0, #0
	bne _08F0E04A
	b _08F0E1BC
_08F0E068:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0E0DE
	ldr r1, [sp, #0x340]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0E0A0
	add r4, sp, #4
_08F0E07A:
	ldrb r2, [r4, #3]
	cmp r2, r7
	bls _08F0E096
	ldr r0, [sp, #0x344]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x328
	bl sub_8F0CFD0
	cmp r0, #0
	beq _08F0E096
	mov sb, r6
_08F0E096:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E07A
_08F0E0A0:
	mov r1, sb
	cmp r1, #0
	blt _08F0E0A8
	b _08F0E1C2
_08F0E0A8:
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x344]
	str r0, [r2]
	ldr r4, [sp, #0x340]
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E0BC
	b _08F0E1BC
_08F0E0BC:
	add r3, sp, #0x32c
	add r2, sp, #4
_08F0E0C0:
	ldrb r0, [r2, #2]
	cmp r0, r8
	bne _08F0E0D2
	ldrb r1, [r2, #3]
	ldr r0, [r3]
	cmp r1, r0
	bge _08F0E0D2
	str r1, [r3]
	mov sb, r6
_08F0E0D2:
	adds r2, #4
	adds r6, #1
	ldrh r0, [r2]
	cmp r0, #0
	bne _08F0E0C0
	b _08F0E1BC
_08F0E0DE:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08F0E150
	ldr r1, [sp, #0x340]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0E116
	add r4, sp, #4
_08F0E0F0:
	ldrb r2, [r4, #2]
	cmp r2, r8
	bls _08F0E10C
	ldr r0, [sp, #0x344]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x328
	bl sub_8F0CF0C
	cmp r0, #0
	beq _08F0E10C
	mov sb, r6
_08F0E10C:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E0F0
_08F0E116:
	mov r1, sb
	cmp r1, #0
	bge _08F0E1C2
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #1
	add r1, sp, #0x328
	str r0, [r1]
	ldr r2, [sp, #0x340]
	ldrh r0, [r2]
	cmp r0, #0
	beq _08F0E1BC
	adds r3, r1, #0
	add r2, sp, #4
_08F0E132:
	ldrb r4, [r2, #3]
	cmp r4, r7
	bne _08F0E144
	ldrb r1, [r2, #2]
	ldr r0, [r3]
	cmp r1, r0
	bge _08F0E144
	str r1, [r3]
	mov sb, r6
_08F0E144:
	adds r2, #4
	adds r6, #1
	ldrh r0, [r2]
	cmp r0, #0
	bne _08F0E132
	b _08F0E1BC
_08F0E150:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08F0E1BC
	ldr r1, [sp, #0x340]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0E188
	add r4, sp, #4
_08F0E162:
	ldrb r2, [r4, #2]
	cmp r2, r8
	bhs _08F0E17E
	ldr r0, [sp, #0x344]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x328
	bl sub_8F0CF0C
	cmp r0, #0
	beq _08F0E17E
	mov sb, r6
_08F0E17E:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E162
_08F0E188:
	mov r1, sb
	cmp r1, #0
	bge _08F0E1C2
	movs r6, #0
	add r1, sp, #0x328
	str r6, [r1]
	ldr r2, [sp, #0x340]
	ldrh r0, [r2]
	cmp r0, #0
	beq _08F0E1BC
	adds r3, r1, #0
	add r2, sp, #4
_08F0E1A0:
	ldrb r4, [r2, #3]
	cmp r4, r7
	bne _08F0E1B2
	ldrb r1, [r2, #2]
	ldr r0, [r3]
	cmp r1, r0
	ble _08F0E1B2
	str r1, [r3]
	mov sb, r6
_08F0E1B2:
	adds r2, #4
	adds r6, #1
	ldrh r0, [r2]
	cmp r0, #0
	bne _08F0E1A0
_08F0E1BC:
	mov r6, sb
	cmp r6, #0
	blt _08F0E1F2
_08F0E1C2:
	movs r0, #0xd
	bl PlayPulse1Sfx
	mov r0, r8
	adds r1, r7, #0
	bl SetTextPosition
	mov r1, sl
	lsls r0, r1, #2
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	bl WriteCharacterToTilemap
	mov sl, sb
	mov r2, sl
	lsls r0, r2, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldrb r0, [r1, #2]
	mov r8, r0
	ldrb r0, [r1, #3]
	adds r7, r0, #0
_08F0E1F2:
	ldr r4, [sp, #0x34c]
	mov sb, r4
	b _08F0DE28
_08F0E1F8:
	ldr r6, [sp, #0x334]
	adds r1, r6, r5
	ldrb r0, [r1]
	cmp r0, #0xfc @change the question marks when typing a name to dots
	bne _08F0E206
	movs r0, #0
	strb r0, [r1]
_08F0E206:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bhi _08F0E216
	ldr r1, [sp, #0x348]
	cmp r5, r1
	blt _08F0E1F8
_08F0E216:
	ldr r2, [sp, #0x334]
	ldrb r0, [r2]
	adds r3, r0, #0
	cmp r3, #0
	bne _08F0E222
	b _08F0DD36
_08F0E222:
	movs r4, #0
	mov sl, r4
	ldr r1, _08F0E2A0 @ =gMsg_NameEntry_BannedNameList
	ldrb r0, [r1]
	adds r2, r1, #0
	cmp r0, #0
	beq _08F0E2D2
_08F0E230:
	movs r5, #0
	ldr r6, [sp, #0x348]
	cmp r5, r6
	bge _08F0E27C
	mov r4, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08F0E246
	cmp r3, #0
	beq _08F0E27C
_08F0E246:
	mov r6, sl
	adds r0, r6, r5
	adds r0, r0, r2
	ldr r4, [sp, #0x334]
	adds r1, r4, r5
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08F0E2A8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bhi _08F0E27C
	ldr r6, [sp, #0x348]
	cmp r5, r6
	bge _08F0E27C
	mov r1, sl
	adds r0, r1, r5
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _08F0E246
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0E246
_08F0E27C:
	ldr r0, _08F0E2A4 @ =gMsg_NameEntry_BannedName
	bl HandleControlCodes
	movs r5, #0
_08F0E284:
	movs r0, #5
	bl PlayPulse1Sfx
	movs r0, #2
	bl DelayByAmount
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xe
	bls _08F0E284
	bl WaitForActionButtonPress
	b _08F0DD36
	.align 2, 0
_08F0E2A0: .4byte gMsg_NameEntry_BannedNameList
_08F0E2A4: .4byte gMsg_NameEntry_BannedName
_08F0E2A8:
	mov r4, sl
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #2
	beq _08F0E2C2
	adds r1, r2, #0
_08F0E2B4:
	movs r6, #1
	add sl, r6
	mov r4, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08F0E2B4
_08F0E2C2:
	movs r6, #1
	add sl, r6
	adds r1, r2, #0
	mov r4, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0E230
_08F0E2D2:
	ldr r1, _08F0E2F0 @ =gUnknown_030034D0
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
_08F0E2DA:
	movs r3, #0xd4
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0E2F0: .4byte gUnknown_030034D0

.syntax divided
