.syntax unified
.section .text
@	thumb_func_start sub_8F0FA90
@sub_8F0FA90: @ 0x08F0FA90
	push {r4, r5, r6, lr}
	ldr r2, _08F0FAB8 @ =gBattleActionData
	ldr r0, _08F0FABC @ =gUnknown_03003690
	ldrh r1, [r0]
	adds r0, r1, #1
	adds r0, r0, r2
	ldrb r3, [r0]
	adds r1, r1, r2
	movs r0, #0xf
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #9
	bls _08F0FAAC
	b _08F0FD12
_08F0FAAC:
	lsls r0, r0, #2
	ldr r1, _08F0FAC0 @ =_08F0FAC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0FAB8: .4byte gBattleActionData
_08F0FABC: .4byte gUnknown_03003690
_08F0FAC0: .4byte _08F0FAC4
_08F0FAC4: @ jump table
	.4byte _08F0FAEC @ case 0
	.4byte _08F0FB50 @ case 1
	.4byte _08F0FB88 @ case 2
	.4byte _08F0FBC8 @ case 3
	.4byte _08F0FBFC @ case 4
	.4byte _08F0FC0C @ case 5
	.4byte _08F0FCE0 @ case 6
	.4byte _08F0FCF8 @ case 7
	.4byte _08F0FD04 @ case 8
	.4byte _08F0FD0C @ case 9
_08F0FAEC:
	ldr r1, _08F0FB0C @ =gBattlerData
	ldr r0, _08F0FB10 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _08F0FB14 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0, #8]
	cmp r2, r1
	blt _08F0FB18
	lsrs r0, r1, #1
	subs r1, r2, r0
	b _08F0FB2C
	.align 2, 0
_08F0FB0C: .4byte gBattlerData
_08F0FB10: .4byte gUnknown_03003700
_08F0FB14: .4byte gUnknown_030036EC
_08F0FB18:
	lsls r0, r2, #1
	adds r0, r0, r2
	subs r0, r0, r1
	cmp r0, #0
	bge _08F0FB24
	adds r0, #3
_08F0FB24:
	asrs r1, r0, #2
	cmp r1, #0
	bge _08F0FB2C
	movs r1, #0
_08F0FB2C:
	ldr r0, _08F0FB48 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	bne _08F0FB3C
	bl Random
	lsrs r0, r0, #0x1e
	adds r1, r0, #4
_08F0FB3C:
	cmp r1, #0
	bne _08F0FB42
	movs r1, #1
_08F0FB42:
	ldr r0, _08F0FB4C @ =gActionPpRequired
	strh r1, [r0]
	b _08F0FD12
	.align 2, 0
_08F0FB48: .4byte gEnemyGroupSpecialEncounter
_08F0FB4C: .4byte gActionPpRequired
_08F0FB50:
	ldr r4, _08F0FB78 @ =gActionPpRequired
	ldr r1, _08F0FB7C @ =gBattlerData
	ldr r0, _08F0FB80 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	strh r0, [r4]
	ldr r0, _08F0FB84 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	beq _08F0FB6A
	b _08F0FD12
_08F0FB6A:
	bl Random
	lsrs r0, r0, #0x1d
	adds r0, #8
	strh r0, [r4]
	b _08F0FD12
	.align 2, 0
_08F0FB78: .4byte gActionPpRequired
_08F0FB7C: .4byte gBattlerData
_08F0FB80: .4byte gUnknown_03003700
_08F0FB84: .4byte gEnemyGroupSpecialEncounter
_08F0FB88:
	ldr r2, _08F0FBB8 @ =gActionPpRequired
	strh r3, [r2]
	ldr r0, _08F0FBBC @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #5
	beq _08F0FB96
	b _08F0FD12
_08F0FB96:
	ldr r0, _08F0FBC0 @ =gUnknown_03003700
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0FBA0
	b _08F0FD12
_08F0FBA0:
	ldr r1, _08F0FBC4 @ =gUnknown_030034F0
	ldrb r4, [r1]
	lsls r0, r4, #2
	adds r0, r0, r4
	subs r0, r3, r0
	strh r0, [r2]
	cmp r0, #0
	ble _08F0FBB2
	b _08F0FD12
_08F0FBB2:
	movs r0, #1
	strh r0, [r2]
	b _08F0FD12
	.align 2, 0
_08F0FBB8: .4byte gActionPpRequired
_08F0FBBC: .4byte gEnemyGroupSpecialEncounter
_08F0FBC0: .4byte gUnknown_03003700
_08F0FBC4: .4byte gUnknown_030034F0
_08F0FBC8:
	ldr r5, _08F0FBF4 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r5]
	cmp r0, #5
	beq _08F0FBD2
	b _08F0FD12
_08F0FBD2:
	ldr r4, _08F0FBF8 @ =gUnknown_030036FC
	ldrb r0, [r4]
	bl DrawBattleStatusTextById
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9e
	beq _08F0FBEA
	b _08F0FD12
_08F0FBEA:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _08F0FD12
	.align 2, 0
_08F0FBF4: .4byte gEnemyGroupSpecialEncounter
_08F0FBF8: .4byte gUnknown_030036FC
_08F0FBFC:
	ldr r0, _08F0FC08 @ =gUnknown_03003654
	ldrb r1, [r0]
	orrs r3, r1
	strb r3, [r0]
	b _08F0FD12
	.align 2, 0
_08F0FC08: .4byte gUnknown_03003654
_08F0FC0C:
	movs r0, #0x6a
	bl DrawBattleStatusTextById
	ldr r0, _08F0FC24 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #2
	bne _08F0FC28
	movs r0, #0x95
	bl DrawBattleStatusTextById
	b _08F0FD12
	.align 2, 0
_08F0FC24: .4byte gEnemyGroupSpecialEncounter
_08F0FC28:
	cmp r0, #3
	bne _08F0FC34
	movs r0, #0x94
	bl DrawBattleStatusTextById
	b _08F0FD12
_08F0FC34:
	cmp r0, #4
	bne _08F0FC40
	movs r0, #0x93
	bl DrawBattleStatusTextById
	b _08F0FD12
_08F0FC40:
	cmp r0, #5
	beq _08F0FC48
	cmp r0, #6
	bne _08F0FC50
_08F0FC48:
	movs r0, #1
	bl DrawBattleStatusTextById
	b _08F0FD12
_08F0FC50:
	ldr r6, _08F0FC60 @ =gUnknown_030036EC
	ldrb r4, [r6]
	cmp r4, #3
	bhi _08F0FC64
	movs r0, #0x90
	bl DrawBattleStatusTextById
	b _08F0FD12
	.align 2, 0
_08F0FC60: .4byte gUnknown_030036EC
_08F0FC64:
	ldr r5, _08F0FCD8 @ =gUnknown_03003708
	ldr r4, _08F0FCDC @ =gBattlerData
	ldrb r1, [r6]
	lsls r0, r1, #5
	adds r0, r0, r4
	ldrh r0, [r0, #6]
	str r0, [r5]
	movs r0, #0x24
	bl DrawBattleStatusTextById
	ldrb r1, [r6]
	lsls r0, r1, #5
	adds r0, r0, r4
	ldrh r0, [r0, #8]
	str r0, [r5]
	movs r0, #0x25
	bl DrawBattleStatusTextById
	ldrb r6, [r6]
	lsls r0, r6, #5
	adds r0, r0, r4
	ldrb r4, [r0, #0xa]
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08F0FC9E
	movs r0, #0x6b
	bl DrawBattleStatusTextById
_08F0FC9E:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08F0FCAC
	movs r0, #0x6c
	bl DrawBattleStatusTextById
_08F0FCAC:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08F0FCBA
	movs r0, #0x6d
	bl DrawBattleStatusTextById
_08F0FCBA:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _08F0FCD0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08F0FCD0
	movs r0, #0x6f
	bl DrawBattleStatusTextById
_08F0FCD0:
	movs r0, #0xff
	bl DrawBattleStatusTextById
	b _08F0FD12
	.align 2, 0
_08F0FCD8: .4byte gUnknown_03003708
_08F0FCDC: .4byte gBattlerData
_08F0FCE0:
	ldr r0, _08F0FCF4 @ =gUnknown_03003700
	movs r4, #1
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0FCEC
	movs r4, #0xf
_08F0FCEC:
	adds r0, r4, #0
	bl sub_8F0E770
	b _08F0FD12
	.align 2, 0
_08F0FCF4: .4byte gUnknown_03003700
_08F0FCF8:
	ldr r0, _08F0FD00 @ =gUnknown_03003668
	strb r3, [r0]
	b _08F0FD12
	.align 2, 0
_08F0FD00: .4byte gUnknown_03003668
_08F0FD04:
	adds r0, r3, #0
	bl DrawBattleStatusTextById
	b _08F0FD12
_08F0FD0C:
	adds r0, r3, #0
	bl sub_8F0E770
_08F0FD12:
	ldr r1, _08F0FD20 @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F0FD20: .4byte gUnknown_03003690

.syntax divided
