.syntax unified
.section .text
@	thumb_func_start WaitForButtonPress
@WaitForButtonPress: @ 0x08F0C9B0
	push {r4, r5, lr}
	ldr r4, _08F0C9D4 @ =gTextX
	ldr r1, _08F0C9D8 @ =gTextOriginX
	ldr r0, _08F0C9DC @ =gTextMaxCharsPerLine
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4]
	ldr r0, _08F0C9E0 @ =0x00008093
	bl WriteCharacterToTilemap
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r5, #1
	b _08F0CA0E
	.align 2, 0
_08F0C9D4: .4byte gTextX
_08F0C9D8: .4byte gTextOriginX
_08F0C9DC: .4byte gTextMaxCharsPerLine
_08F0C9E0: .4byte 0x00008093
_08F0C9E4:
	movs r0, #7
	ands r0, r5
	cmp r0, #0
	bne _08F0CA0C
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08F0CA00
	ldr r0, _08F0C9FC @ =0x00008010
	bl WriteCharacterToTilemap
	b _08F0CA06
	.align 2, 0
_08F0C9FC: .4byte 0x00008010
_08F0CA00:
	ldr r0, _08F0CA3C @ =0x00008093
	bl WriteCharacterToTilemap
_08F0CA06:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
_08F0CA0C:
	adds r5, #1
_08F0CA0E:
	bl UpdateBg0Tilemap
	ldr r0, _08F0CA40 @ =gKeysDown
	ldr r2, _08F0CA44 @ =0x00000207
	adds r1, r2, #0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08F0C9E4
	movs r0, #5
	bl PlayPulse1Sfx
	ldr r0, _08F0CA48 @ =0x00008010
	bl WriteCharacterToTilemap
	ldr r1, _08F0CA4C @ =gTextX
	ldr r0, _08F0CA50 @ =gTextOriginX
	ldrb r0, [r0]
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0CA3C: .4byte 0x00008093
_08F0CA40: .4byte gKeysDown
_08F0CA44: .4byte 0x00000207
_08F0CA48: .4byte 0x00008010
_08F0CA4C: .4byte gTextX
_08F0CA50: .4byte gTextOriginX

.syntax divided
