.syntax unified
.section .text
@	thumb_func_start InitiateBattle
@InitiateBattle: @ 0x08F0E2F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08F0E4FC @ =gBattleEnemyGroupId
	strb r0, [r2]
	ldr r2, _08F0E500 @ =gUnknown_030034F8
	strb r1, [r2]
	cmp r0, #0xa2
	bne _08F0E314
	bl sub_8F09F84
_08F0E314:
	bl SetupEnemyGroups
	ldr r2, _08F0E504 @ =gEnemyMusic
	ldr r0, _08F0E508 @ =gMiscContainer
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	lsrs r0, r0, #4
	strb r0, [r2]
	cmp r0, #5
	bne _08F0E32C
	movs r0, #0x2c
	strb r0, [r2]
_08F0E32C:
	ldr r1, _08F0E50C @ =gOverworldMusic
	ldr r0, _08F0E510 @ =gCurrentBgMusic
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r2]
	bl ChangeBgMusic
	bl sub_8F1239C
	ldr r0, _08F0E514 @ =gKeysDown
	movs r2, #0
	strh r2, [r0]
	ldr r0, _08F0E518 @ =gUnknown_030036E8
	strb r2, [r0]
	ldr r0, _08F0E51C @ =gUnknown_030036EC
	strb r2, [r0]
	ldr r1, _08F0E520 @ =gExperiencePointsGained
	movs r0, #0
	str r0, [r1]
	ldr r1, _08F0E524 @ =gMoneyGained
	strh r0, [r1]
	str r0, [sp]
	ldr r1, _08F0E528 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r3, _08F0E52C @ =gBattlerData
	str r3, [r1, #4]
	ldr r0, _08F0E530 @ =0x85000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F0E534 @ =gUnknown_03003700
	strb r2, [r0]
	ldr r1, _08F0E538 @ =gGameInfo
	mov ip, r1
	adds r5, r0, #0
	adds r7, r3, #0
	ldr r2, _08F0E53C @ =gItemData
	mov sb, r2
	movs r3, #0x3f
	mov sl, r3
_08F0E37C:
	ldrb r6, [r5]
	ldr r1, _08F0E540 @ =gUnknown_03003198
	adds r0, r6, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _08F0E45A
	movs r2, #0
	subs r3, r4, #1
	mov r8, r3
	ldr r3, _08F0E534 @ =gUnknown_03003700
	ldr r6, _08F0E52C @ =gBattlerData
	lsls r4, r4, #6
_08F0E394:
	ldrb r0, [r3]
	lsls r1, r0, #5
	lsls r0, r2, #2
	adds r1, r1, r0
	adds r1, r1, r6
	adds r0, r4, r0
	add r0, ip
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F0E394
	ldrb r2, [r5]
	lsls r1, r2, #5
	adds r1, r1, r7
	mov r3, r8
	lsls r0, r3, #6
	mov r6, ip
	adds r4, r0, r6
	adds r0, r4, #0
	adds r0, #0x54
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldrb r0, [r5]
	lsls r1, r0, #5
	adds r1, r1, r7
	adds r0, r4, #0
	adds r0, #0x56
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldrb r1, [r5]
	lsls r2, r1, #5
	adds r2, r2, r7
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r1, r0, #3
	add r1, sb
	mov r0, sl
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r3, [r2, #6]
	adds r0, r3, r0
	strh r0, [r2, #6]
	ldrb r6, [r5]
	lsls r2, r6, #5
	adds r2, r2, r7
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r1, r0, #3
	add r1, sb
	mov r0, sl
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r1, [r2, #8]
	adds r0, r1, r0
	strh r0, [r2, #8]
	ldrb r3, [r5]
	lsls r2, r3, #5
	adds r2, r2, r7
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r1, r0, #3
	add r1, sb
	mov r0, sl
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r6, [r2, #8]
	adds r0, r6, r0
	strh r0, [r2, #8]
	ldrb r0, [r5]
	lsls r2, r0, #5
	adds r2, r2, r7
	adds r0, r4, #0
	adds r0, #0x6b
	ldrb r0, [r0]
	lsls r1, r0, #3
	add r1, sb
	mov r0, sl
	ldrb r1, [r1, #3]
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldrb r2, [r5]
	lsls r0, r2, #5
	adds r0, r0, r7
	movs r1, #0xff
	strb r1, [r0]
	ldrb r3, [r5]
	lsls r0, r3, #5
	adds r0, r0, r7
	mov r6, r8
	strb r6, [r0, #0x18]
_08F0E45A:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08F0E37C
	bl SetupEnemyGroups
	ldr r1, _08F0E534 @ =gUnknown_03003700
	movs r0, #4
	strb r0, [r1]
	movs r2, #0
	mov sb, r1
_08F0E476:
	ldr r0, _08F0E508 @ =gMiscContainer
	ldr r0, [r0]
	adds r0, r0, r2
	ldrb r4, [r0]
	adds r2, #2
	str r2, [sp, #4]
	cmp r4, #0xff
	beq _08F0E562
	ldrb r3, [r0, #1]
	movs r2, #0
	ldr r7, _08F0E4FC @ =gBattleEnemyGroupId
	mov sl, r7
	ldr r0, _08F0E52C @ =gBattlerData
	mov r8, r0
	ldr r1, _08F0E534 @ =gUnknown_03003700
	mov ip, r1
	lsls r5, r4, #5
	ldr r6, _08F0E544 @ =gEnemyData
_08F0E49A:
	mov r7, ip
	ldrb r7, [r7]
	lsls r1, r7, #5
	lsls r0, r2, #2
	adds r1, r1, r0
	ldr r7, _08F0E52C @ =gBattlerData
	adds r1, r1, r7
	adds r0, r5, r0
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bls _08F0E49A
	mov r1, sb
	ldrb r1, [r1]
	lsls r0, r1, #5
	adds r2, r7, #0
	adds r0, r0, r2
	mov r5, sl
	ldrb r1, [r5]
	adds r1, #1
	movs r5, #0
	movs r2, #0
	strb r1, [r0]
	mov r6, sb
	ldrb r6, [r6]
	lsls r0, r6, #5
	adds r0, r0, r7
	lsls r1, r3, #2
	strb r1, [r0, #0x1a]
	mov r1, sb
	ldrb r1, [r1]
	lsls r0, r1, #5
	adds r0, r0, r7
	strb r4, [r0, #0x18]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08F0E548
	ldr r2, _08F0E534 @ =gUnknown_03003700
	ldrb r2, [r2]
	lsls r0, r2, #5
	add r0, r8
	movs r1, #0x5e
	strb r1, [r0, #0x1d]
	b _08F0E562
	.align 2, 0
_08F0E4FC: .4byte gBattleEnemyGroupId
_08F0E500: .4byte gUnknown_030034F8
_08F0E504: .4byte gEnemyMusic
_08F0E508: .4byte gMiscContainer
_08F0E50C: .4byte gOverworldMusic
_08F0E510: .4byte gCurrentBgMusic
_08F0E514: .4byte gKeysDown
_08F0E518: .4byte gUnknown_030036E8
_08F0E51C: .4byte gUnknown_030036EC
_08F0E520: .4byte gExperiencePointsGained
_08F0E524: .4byte gMoneyGained
_08F0E528: .4byte 0x040000D4
_08F0E52C: .4byte gBattlerData
_08F0E530: .4byte 0x85000040
_08F0E534: .4byte gUnknown_03003700
_08F0E538: .4byte gGameInfo
_08F0E53C: .4byte gItemData
_08F0E540: .4byte gUnknown_03003198
_08F0E544: .4byte gEnemyData
_08F0E548:
	ldr r3, _08F0E638 @ =gUnknown_03003700
	ldrb r3, [r3]
	lsls r0, r3, #5
	add r0, r8
	strb r2, [r0, #0x1d]
	ldr r5, _08F0E638 @ =gUnknown_03003700
	ldrb r5, [r5]
	lsls r1, r5, #5
	add r1, r8
	movs r0, #1
	ldrb r6, [r1, #0x1e]
	orrs r0, r6
	strb r0, [r1, #0x1e]
_08F0E562:
	mov r7, sb
	ldrb r1, [r7]
	adds r1, #1
	strb r1, [r7]
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #7
	bhi _08F0E57A
	b _08F0E476
_08F0E57A:
	ldr r3, _08F0E63C @ =gMiscContainer
	ldr r1, [r3]
	ldrb r5, [r1, #8]
	lsrs r0, r5, #5
	ldr r6, _08F0E640 @ =gEnemyGroupSpecialEncounter
	strb r0, [r6]
	movs r0, #0x1f
	ldrb r7, [r1, #8]
	ands r0, r7
	ldr r2, _08F0E644 @ =gEnemyGroupPositioning
	strb r0, [r2]
	movs r0, #0xf
	ldrb r1, [r1, #9]
	ands r0, r1
	bl sub_8F0E9CC
	bl sub_8F0EA98
	ldr r2, _08F0E638 @ =gUnknown_03003700
	movs r0, #4
	strb r0, [r2]
	ldr r1, _08F0E648 @ =gUnknown_03003620
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08F0E64C @ =gBattlerData
	mov r8, r3
	mov sl, r2
_08F0E5B0:
	mov r5, sl
	ldrb r1, [r5]
	lsls r0, r1, #5
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0E5C4
	adds r0, r1, #0
	bl sub_8F0EB80
_08F0E5C4:
	movs r2, #0
	ldr r6, _08F0E648 @ =gUnknown_03003620
	ldr r7, _08F0E638 @ =gUnknown_03003700
	mov sb, r7
	ldr r3, _08F0E650 @ =gUnknown_03003502
	ldr r4, _08F0E654 @ =0x000003FF
_08F0E5D0:
	lsls r1, r2, #1
	mov r5, sb
	ldrb r5, [r5]
	lsls r0, r5, #5
	adds r1, r1, r0
	adds r1, r1, r3
	adds r0, r4, #0
	ldrh r7, [r1]
	ands r0, r7
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F0E5D0
	mov r0, sl
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #7
	bls _08F0E5B0
	ldr r0, _08F0E658 @ =gUnknown_03003600
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08F0E65C @ =gLastItemDropped
	strb r1, [r0]
	ldr r2, _08F0E640 @ =gEnemyGroupSpecialEncounter
	ldrb r2, [r2]
	cmp r2, #1
	bne _08F0E668
	ldr r2, _08F0E64C @ =gBattlerData
	adds r0, r2, #0
	adds r0, #0x60
	movs r1, #0
	strb r1, [r0]
	subs r0, #0x20
	strb r1, [r0]
	subs r0, #0x20
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x82
	ldr r0, _08F0E660 @ =0x0000FFFF
	strh r0, [r1]
	ldr r1, _08F0E664 @ =gUnknown_0300362C
	movs r0, #4
	strb r0, [r1]
	b _08F0E66C
	.align 2, 0
_08F0E638: .4byte gUnknown_03003700
_08F0E63C: .4byte gMiscContainer
_08F0E640: .4byte gEnemyGroupSpecialEncounter
_08F0E644: .4byte gEnemyGroupPositioning
_08F0E648: .4byte gUnknown_03003620
_08F0E64C: .4byte gBattlerData
_08F0E650: .4byte gUnknown_03003502
_08F0E654: .4byte 0x000003FF
_08F0E658: .4byte gUnknown_03003600
_08F0E65C: .4byte gLastItemDropped
_08F0E660: .4byte 0x0000FFFF
_08F0E664: .4byte gUnknown_0300362C
_08F0E668:
	ldr r0, _08F0E6C8 @ =gUnknown_0300362C
	strb r1, [r0]
_08F0E66C:
	ldr r0, _08F0E6CC @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0E69E
	movs r0, #0
	ldr r3, _08F0E6D0 @ =gEnemyGroupSpecialEncounter
	strb r0, [r3]
	ldr r5, _08F0E6D4 @ =gUnknown_03003700
	strb r0, [r5]
	ldr r4, _08F0E6D8 @ =gBattlerData
	adds r2, r5, #0
	movs r3, #4
_08F0E684:
	ldrb r6, [r2]
	lsls r0, r6, #5
	adds r0, r0, r4
	ldrb r1, [r0, #0x1e]
	orrs r1, r3
	strb r1, [r0, #0x1e]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08F0E684
_08F0E69E:
	ldr r7, _08F0E6D0 @ =gEnemyGroupSpecialEncounter
	ldrb r7, [r7]
	cmp r7, #5
	bne _08F0E6BA
	ldr r1, _08F0E6DC @ =gUnknown_030036FC
	movs r0, #0x96
	strb r0, [r1]
	ldr r0, _08F0E6D8 @ =gBattlerData
	ldrb r1, [r0, #0xc]
	adds r0, #0x8c
	movs r2, #0
	strb r1, [r0]
	ldr r0, _08F0E6E0 @ =gUnknown_030034F0
	strb r2, [r0]
_08F0E6BA:
	movs r0, #0x14
	bl sub_8F0E838
	bl sub_8F0EAF8
	ldr r5, _08F0E6E4 @ =gUnknown_030036B4
	b _08F0E70C
	.align 2, 0
_08F0E6C8: .4byte gUnknown_0300362C
_08F0E6CC: .4byte gUnknown_0300317C
_08F0E6D0: .4byte gEnemyGroupSpecialEncounter
_08F0E6D4: .4byte gUnknown_03003700
_08F0E6D8: .4byte gBattlerData
_08F0E6DC: .4byte gUnknown_030036FC
_08F0E6E0: .4byte gUnknown_030034F0
_08F0E6E4: .4byte gUnknown_030036B4
_08F0E6E8:
	movs r0, #0x14
	bl sub_8F0E838
	movs r0, #7
	bl sub_8F0EA64
	bl sub_8F12AC0
	strb r4, [r5]
	bl sub_8F10730
	movs r0, #1
	strb r0, [r5]
	movs r0, #3
	bl sub_8F0EA64
	bl sub_8F12B04
_08F0E70C:
	movs r0, #0
	bl sub_8F0EA64
	bl sub_8F0F2E8
	adds r4, r0, #0
	cmp r4, #0
	beq _08F0E6E8
	bl sub_8F0EB14
	ldr r0, _08F0E760 @ =gKeysDown
	movs r1, #0
	strh r1, [r0]
	bl sub_8F124F0
	ldr r0, _08F0E764 @ =gBattleEnemyGroupId
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F0E73E
	ldr r0, _08F0E768 @ =gUnknown_030034FC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0E73E
	bl InitiateEndingSequence
_08F0E73E:
	bl m4aMPlayAllStop
	ldr r0, _08F0E76C @ =gOverworldMusic
	ldrb r0, [r0]
	bl ChangeBgMusic
	ldr r0, _08F0E768 @ =gUnknown_030034FC
	ldrb r0, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0E760: .4byte gKeysDown
_08F0E764: .4byte gBattleEnemyGroupId
_08F0E768: .4byte gUnknown_030034FC
_08F0E76C: .4byte gOverworldMusic

.syntax divided
