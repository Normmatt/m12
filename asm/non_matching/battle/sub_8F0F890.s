.syntax unified
.section .text
@	thumb_func_start sub_8F0F890
@sub_8F0F890: @ 0x08F0F890
	push {r4, r5, lr}
	ldr r5, _08F0F8CC @ =gBattleActionData
	ldr r4, _08F0F8D0 @ =gUnknown_03003690
	ldrh r0, [r4]
	adds r0, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	ldr r3, _08F0F8D4 @ =off_30036F0
	lsls r1, r0, #3
	ldr r2, _08F0F8D8 @ =gItemData
	adds r1, r1, r2
	str r1, [r3]
	bl sub_8F11098
	ldr r0, _08F0F8DC @ =gUnknown_03003700
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F92A
	ldrh r4, [r4]
	adds r0, r4, r5
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #1
	beq _08F0F8FC
	cmp r1, #1
	bgt _08F0F8E0
	cmp r1, #0
	beq _08F0F8E6
	b _08F0F92A
	.align 2, 0
_08F0F8CC: .4byte gBattleActionData
_08F0F8D0: .4byte gUnknown_03003690
_08F0F8D4: .4byte off_30036F0
_08F0F8D8: .4byte gItemData
_08F0F8DC: .4byte gUnknown_03003700
_08F0F8E0:
	cmp r1, #2
	beq _08F0F912
	b _08F0F92A
_08F0F8E6:
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08F0F92A
	bl sub_8F10398
	movs r0, #0x75
	bl DrawBattleStatusTextById
	b _08F0F92A
_08F0F8FC:
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08F0F92A
	bl sub_8F10398
	movs r0, #0x78
	bl DrawBattleStatusTextById
	b _08F0F92A
_08F0F912:
	ldr r1, _08F0F938 @ =gGameInfo
	ldrb r0, [r1, #0x1f]
	subs r0, #1
	strb r0, [r1, #0x1f]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08F0F92A
	bl sub_8F10398
	movs r0, #0x91
	bl DrawBattleStatusTextById
_08F0F92A:
	ldr r1, _08F0F93C @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F938: .4byte gGameInfo
_08F0F93C: .4byte gUnknown_03003690

.syntax divided
