.syntax unified
.section .text
@	thumb_func_start sub_8F1225C
@sub_8F1225C: @ 0x08F1225C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	ldr r1, _08F122A8 @ =gBattlerData
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F122AC @ =gUnknown_030031F0
	adds r4, r1, r0
	ldr r1, _08F122B0 @ =gBattleItemInventoryIdx
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08F122B4 @ =gBattleItemId
	adds r7, r3, #0
	adds r2, r1, #0
	ldr r6, _08F122B8 @ =off_30036F0
	ldr r5, _08F122BC @ =gUnknown_03003694
_08F1227E:
	ldrb r1, [r2]
	adds r0, r1, r4
	ldrb r0, [r0]
	strb r0, [r7]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08F122C4
	ldrb r0, [r3]
	lsls r1, r0, #3
	ldr r0, _08F122C0 @ =gItemData
	adds r1, r1, r0
	str r1, [r6]
	ldrb r0, [r1, #5]
	strb r0, [r5]
	movs r0, #0x40
	ldrb r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _08F122C4
	movs r0, #0
	b _08F122D4
	.align 2, 0
_08F122A8: .4byte gBattlerData
_08F122AC: .4byte gUnknown_030031F0
_08F122B0: .4byte gBattleItemInventoryIdx
_08F122B4: .4byte gBattleItemId
_08F122B8: .4byte off_30036F0
_08F122BC: .4byte gUnknown_03003694
_08F122C0: .4byte gItemData
_08F122C4:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08F1227E
	movs r0, #1
_08F122D4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
