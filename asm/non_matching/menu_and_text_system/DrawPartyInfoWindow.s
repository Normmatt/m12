.syntax unified
.section .text
@	thumb_func_start DrawPartyInfoWindow
@DrawPartyInfoWindow: @ 0x08F0AE50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r1, _08F0AEF4 @ =gUnknown_03003198
_08F0AE62:
	adds r0, r6, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0AE7A
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08F0AE7A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08F0AE62
	movs r1, #0x12
	mov r0, r8
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl SetTextPosition
	ldr r0, _08F0AEF8 @ =gTextPlaySfx
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0AEA2
	ldr r0, _08F0AEFC @ =gMsg_StatBar_Top
	bl HandleControlCodes
_08F0AEA2:
	ldr r0, _08F0AF00 @ =gUnknown_030034C0
	ldrh r1, [r0]
	mov sl, r1
	movs r1, #0
	mov sb, r1
	movs r6, #0
	adds r7, r0, #0
_08F0AEB0:
	ldr r2, _08F0AF04 @ =gGameInfo
	adds r0, r2, #0
	adds r0, #8
	adds r0, r6, r0
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08F0AEC6
	b _08F0AFC8
_08F0AEC6:
	lsls r0, r1, #6
	adds r5, r0, r2
	mov r4, sb
	adds r4, #0x13
	mov r0, r8
	subs r1, r4, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl SetTextPosition
	ldr r0, _08F0AF08 @ =gMsg_StatBar_Middle
	bl HandleControlCodes
	ldrb r1, [r5, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0AF0C
	movs r1, #0xc0
	lsls r1, r1, #8
	b _08F0AF3C
	.align 2, 0
_08F0AEF4: .4byte gUnknown_03003198
_08F0AEF8: .4byte gTextPlaySfx
_08F0AEFC: .4byte gMsg_StatBar_Top
_08F0AF00: .4byte gUnknown_030034C0
_08F0AF04: .4byte gGameInfo
_08F0AF08: .4byte gMsg_StatBar_Middle
_08F0AF0C:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08F0AF1A
	movs r1, #0xd0
	lsls r1, r1, #8
	b _08F0AF3C
_08F0AF1A:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0AF28
	movs r1, #0xe0
	lsls r1, r1, #8
	b _08F0AF3C
_08F0AF28:
	ldrh r1, [r5, #2]
	lsrs r0, r1, #2
	ldrh r1, [r5, #0x14]
	cmp r0, r1
	bls _08F0AF38
	movs r1, #0xe0
	lsls r1, r1, #8
	b _08F0AF3C
_08F0AF38:
	movs r1, #0xf0
	lsls r1, r1, #8
_08F0AF3C:
	adds r0, r1, #0
	strh r0, [r7]
	mov r1, r8
	subs r0, r4, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #2
	adds r1, r4, #0
	bl SetTextPosition
	adds r0, r5, #0
	adds r0, #0x38
	bl HandleControlCodes
	ldr r0, _08F0AF94 @ =gTextPlaySfx
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0AFAC
	movs r0, #8
	adds r1, r4, #0
	bl SetTextPosition
	ldrh r0, [r5, #0x14]
	movs r1, #5
	bl DrawNumberWithMaxDigits
	ldrh r0, [r5, #0x16]
	movs r1, #4
	bl DrawNumberWithMaxDigits
	ldrb r0, [r5, #0x10]
	movs r1, #4
	bl DrawNumberWithMaxDigits
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08F0AF98
	movs r0, #2
	bl DrawSpaceTiles
	ldrb r0, [r5, #1]
	bl DrawPlayerCondition
	b _08F0AFAC
	.align 2, 0
_08F0AF94: .4byte gTextPlaySfx
_08F0AF98:
	ldrb r1, [r5, #0x12]
	lsls r0, r1, #8
	ldrb r1, [r5, #0x11]
	orrs r0, r1
	ldrb r5, [r5, #0x13]
	lsls r1, r5, #0x10
	adds r0, r0, r1
	movs r1, #8
	bl DrawNumberWithMaxDigits
_08F0AFAC:
	mov r0, sl
	strh r0, [r7]
	ldr r0, _08F0AFF8 @ =gTextPlaySfx
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0AFBE
	ldr r0, _08F0AFFC @ =0x000080DF
	bl WriteCharacterToTilemap
_08F0AFBE:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_08F0AFC8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08F0AFD4
	b _08F0AEB0
_08F0AFD4:
	movs r0, #0
	movs r1, #0x13
	bl SetTextPosition
	ldr r0, _08F0AFF8 @ =gTextPlaySfx
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0AFEA
	ldr r0, _08F0B000 @ =gMsg_StatBar_Bottom
	bl HandleControlCodes
_08F0AFEA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0AFF8: .4byte gTextPlaySfx
_08F0AFFC: .4byte 0x000080DF
_08F0B000: .4byte gMsg_StatBar_Bottom

.syntax divided
