.syntax unified
.section .text
@	thumb_func_start WriteCharacterToTilemap
@WriteCharacterToTilemap: @ 0x08F0C7BC
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08F0C7D4
	ldr r0, _08F0C7D0 @ =0xFFFF7FFF
	ands r3, r0
	b _08F0C7DC
	.align 2, 0
_08F0C7D0: .4byte 0xFFFF7FFF
_08F0C7D4:
	adds r0, r3, #0
	bl GetFontCharTileId
	adds r3, r0, #0
_08F0C7DC:
	ldr r1, _08F0C814 @ =gBg0TilemapBuffer
	ldr r2, _08F0C818 @ =gTextX
	ldr r0, _08F0C81C @ =gTextY
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldrb r4, [r2]
	adds r0, r4, r0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, _08F0C820 @ =gUnknown_030034C0
	ldrh r1, [r1]
	adds r1, r1, r3
	strh r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r0, _08F0C824 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0C834
	cmp r3, #5
	bne _08F0C82C
	ldr r0, _08F0C828 @ =gTextDelayAfterWritePeriod
	ldrb r0, [r0]
	bl UpdateBg0TilemapMultipleTimes
	b _08F0C834
	.align 2, 0
_08F0C814: .4byte gBg0TilemapBuffer
_08F0C818: .4byte gTextX
_08F0C81C: .4byte gTextY
_08F0C820: .4byte gUnknown_030034C0
_08F0C824: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0C828: .4byte gTextDelayAfterWritePeriod
_08F0C82C:
	ldr r0, _08F0C83C @ =gTextDelayAfterWriteCharacter
	ldrb r0, [r0]
	bl UpdateBg0TilemapMultipleTimes
_08F0C834:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0C83C: .4byte gTextDelayAfterWriteCharacter

.syntax divided
