.syntax unified
.section .text
@	thumb_func_start sub_8F10B1C
@sub_8F10B1C: @ 0x08F10B1C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x18
	bl sub_8F10E6C
	lsrs r4, r4, #0x1b
	movs r0, #7
	ands r0, r5
	movs r1, #0x80
	asrs r1, r0
	ldr r0, _08F10B74 @ =gMiscContainer
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F10B8C
	ldr r3, _08F10B78 @ =gUnknown_03003688
	lsls r1, r5, #3
	ldr r0, _08F10B7C @ =gPsiData
	adds r1, r1, r0
	str r1, [r3]
	ldr r2, _08F10B80 @ =gBattlerData
	ldr r0, _08F10B84 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r1, [r1, #5]
	strb r1, [r0, #0x1d]
	ldr r1, _08F10B88 @ =gActionPpRequired
	ldr r0, [r3]
	ldrb r0, [r0, #7]
	strh r0, [r1]
	bl AttackerHasEnoughPP
	cmp r0, #0
	beq _08F10B8C
	bl CanUsePsi
	cmp r0, #0
	beq _08F10B8C
	movs r0, #0
	b _08F10B8E
	.align 2, 0
_08F10B74: .4byte gMiscContainer
_08F10B78: .4byte gUnknown_03003688
_08F10B7C: .4byte gPsiData
_08F10B80: .4byte gBattlerData
_08F10B84: .4byte gUnknown_03003700
_08F10B88: .4byte gActionPpRequired
_08F10B8C:
	movs r0, #1
_08F10B8E:
	pop {r4, r5}
	pop {r1}
	bx r1

.syntax divided
