.syntax unified
.section .text
@	thumb_func_start sub_8F10BC4
@sub_8F10BC4: @ 0x08F10BC4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08F10BF8 @ =gGameInfo
	adds r0, #8
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r1
	bne _08F10C04
	ldr r0, _08F10BFC @ =gBattlerData
	lsls r1, r2, #5
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F10C04
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	bne _08F10C04
	ldr r0, _08F10C00 @ =gUnknown_030036EC
	strb r2, [r0]
	movs r0, #1
	b _08F10C06
	.align 2, 0
_08F10BF8: .4byte gGameInfo
_08F10BFC: .4byte gBattlerData
_08F10C00: .4byte gUnknown_030036EC
_08F10C04:
	movs r0, #0
_08F10C06:
	bx lr

.syntax divided
