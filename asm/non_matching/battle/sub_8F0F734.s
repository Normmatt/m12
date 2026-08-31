.syntax unified
.section .text
@	thumb_func_start sub_8F0F734
@sub_8F0F734: @ 0x08F0F734
	push {r4, lr}
	ldr r1, _08F0F798 @ =gBattleActionData
	ldr r0, _08F0F79C @ =gUnknown_03003690
	ldrh r0, [r0]
	adds r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r3, _08F0F7A0 @ =gUnknown_03003688
	lsls r0, r1, #3
	ldr r2, _08F0F7A4 @ =gPsiData
	adds r0, r0, r2
	str r0, [r3]
	ldr r0, _08F0F7A8 @ =gUnknown_030034E8
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0x8d
	lsls r0, r0, #5
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r2, _08F0F7AC @ =gUnknown_030036A0
	ldrb r0, [r1]
	ldr r4, _08F0F7B0 @ =gActionPpRequired
	cmp r0, #0
	beq _08F0F772
_08F0F766:
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0F766
_08F0F772:
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r3]
	ldrb r0, [r0, #7]
	strh r0, [r4]
	movs r0, #0x64
	bl DrawBattleStatusTextById
	bl CanUsePsi
	adds r1, r0, #0
	cmp r1, #0
	bne _08F0F7B8
	ldr r0, _08F0F7B4 @ =gUnknown_03003604
	strb r1, [r0]
	movs r0, #0x51
	bl DrawBattleStatusTextById
	b _08F0F810
	.align 2, 0
_08F0F798: .4byte gBattleActionData
_08F0F79C: .4byte gUnknown_03003690
_08F0F7A0: .4byte gUnknown_03003688
_08F0F7A4: .4byte gPsiData
_08F0F7A8: .4byte gUnknown_030034E8
_08F0F7AC: .4byte gUnknown_030036A0
_08F0F7B0: .4byte gActionPpRequired
_08F0F7B4: .4byte gUnknown_03003604
_08F0F7B8:
	bl AttackerHasEnoughPP
	adds r1, r0, #0
	cmp r1, #0
	bne _08F0F7D4
	ldr r0, _08F0F7D0 @ =gUnknown_03003604
	strb r1, [r0]
	movs r0, #0x54
	bl DrawBattleStatusTextById
	b _08F0F810
	.align 2, 0
_08F0F7D0: .4byte gUnknown_03003604
_08F0F7D4:
	ldr r0, _08F0F7EC @ =gBattlerData
	ldr r1, _08F0F7F0 @ =gUnknown_03003700
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r1, r1, r0
	ldrh r2, [r1, #4]
	ldrh r0, [r4]
	cmp r2, r0
	bhs _08F0F7F4
	movs r0, #0
	b _08F0F7F6
	.align 2, 0
_08F0F7EC: .4byte gBattlerData
_08F0F7F0: .4byte gUnknown_03003700
_08F0F7F4:
	subs r0, r2, r0
_08F0F7F6:
	strh r0, [r1, #4]
	bl sub_8F0EA98
	ldr r4, _08F0F818 @ =gUnknown_03003668
	ldrb r0, [r4]
	bl sub_8F0E770
	movs r0, #0
	strb r0, [r4]
	ldr r1, _08F0F81C @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
_08F0F810:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F818: .4byte gUnknown_03003668
_08F0F81C: .4byte gUnknown_03003690

.syntax divided
