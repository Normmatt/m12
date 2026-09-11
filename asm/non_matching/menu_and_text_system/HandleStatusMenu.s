.syntax unified
.section .text
@	thumb_func_start HandleStatusMenu
@HandleStatusMenu: @ 0x08F0B0AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov r1, sp
	ldr r0, _08F0B17C @ =gUnknown_08F29F78
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	mov r8, r0
	add r1, sp, #0xc
	mov sb, r1
_08F0B0C6:
	mov r2, r8
	cmp r2, #3
	bls _08F0B0D0
	movs r3, #0
	mov r8, r3
_08F0B0D0:
	ldr r5, _08F0B180 @ =gCurrentCharacterId
	ldr r4, _08F0B184 @ =gGameInfo
	adds r0, r4, #0
	adds r0, #8
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08F0B0EA
	b _08F0B20C
_08F0B0EA:
	ldr r0, _08F0B188 @ =gMsg_WindowStateMenu
	bl HandleControlCodes
	movs r0, #0xb
	movs r1, #1
	bl SetTextPosition
	ldrb r5, [r5]
	lsls r0, r5, #6
	adds r1, r4, #0
	adds r1, #0x38
	adds r0, r0, r1
	bl HandleControlCodes
	movs r5, #0
	adds r4, #0x68
_08F0B10A:
	adds r1, r5, #0
	adds r1, #0xb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x12
	bl SetTextPosition
	ldr r0, _08F0B180 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r5, r0
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0B134
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r0, r1
	bl DrawTextWithIdNoWait
_08F0B134:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F0B10A
	movs r4, #0
	str r4, [sp, #0xc]
_08F0B142:
	ldr r0, _08F0B180 @ =gCurrentCharacterId
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08F0B1FA
	cmp r4, #0x3f
	bls _08F0B150
	movs r4, #0
_08F0B150:
	ldr r0, _08F0B18C @ =gMsg_WindowStateMenu_PsiClear
	bl HandleControlCodes
_08F0B156:
	movs r6, #0
	movs r5, #0
	ldr r7, _08F0B190 @ =gUnknown_03003200
_08F0B15C:
	lsls r0, r4, #3
	ldr r1, _08F0B194 @ =gPsiData
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _08F0B1AA
	adds r2, r1, #0
	ldr r3, _08F0B198 @ =0x0000FFFF
_08F0B16C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x3f
	bls _08F0B19C
	movs r4, #0
	b _08F0B1F6
	.align 2, 0
_08F0B17C: .4byte gUnknown_08F29F78
_08F0B180: .4byte gCurrentCharacterId
_08F0B184: .4byte gGameInfo
_08F0B188: .4byte gMsg_WindowStateMenu
_08F0B18C: .4byte gMsg_WindowStateMenu_PsiClear
_08F0B190: .4byte gUnknown_03003200
_08F0B194: .4byte gPsiData
_08F0B198: .4byte 0x0000FFFF
_08F0B19C:
	lsls r1, r4, #3
	adds r1, r1, r2
	adds r0, r3, #0
	ldrh r1, [r1, #4]
	ands r0, r1
	cmp r0, #0
	beq _08F0B16C
_08F0B1AA:
	lsrs r1, r4, #3
	ldr r0, _08F0B218 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r1, r1, r7
	movs r0, #7
	ands r0, r4
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0B1E6
	adds r1, r5, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x12
	bl SetTextPosition
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r0, r4, r2
	bl DrawTextWithIdNoWait
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08F0B1E6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r5, #4
	bls _08F0B15C
_08F0B1F6:
	cmp r6, #0
	beq _08F0B156
_08F0B1FA:
	mov r0, sp
	mov r1, sb
	bl HandleSelectMenuInput
	ldr r1, _08F0B21C @ =0x00008001
	cmp r0, r1
	bgt _08F0B142
	cmp r0, r1
	bne _08F0B220
_08F0B20C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b _08F0B0C6
	.align 2, 0
_08F0B218: .4byte gCurrentCharacterId
_08F0B21C: .4byte 0x00008001
_08F0B220:
	ldr r1, _08F0B234 @ =gTextPlaySfx
	movs r0, #0
	strb r0, [r1]
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0B234: .4byte gTextPlaySfx

.syntax divided
