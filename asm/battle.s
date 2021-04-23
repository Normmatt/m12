
#ifdef NDS_VERSION
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	thumb_func_start InitiateBattle
InitiateBattle: @ 0x08F0E2F4
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
	ldr r3, _08F0E52C @ =gUnknown_03003500
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
	ldr r6, _08F0E52C @ =gUnknown_03003500
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
	ldr r0, _08F0E52C @ =gUnknown_03003500
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
	ldr r7, _08F0E52C @ =gUnknown_03003500
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
_08F0E52C: .4byte gUnknown_03003500
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
	ldr r3, _08F0E64C @ =gUnknown_03003500
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
	ldr r2, _08F0E64C @ =gUnknown_03003500
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
_08F0E64C: .4byte gUnknown_03003500
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
	ldr r4, _08F0E6D8 @ =gUnknown_03003500
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
	ldr r0, _08F0E6D8 @ =gUnknown_03003500
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
_08F0E6D8: .4byte gUnknown_03003500
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

	thumb_func_start sub_8F0E770
sub_8F0E770: @ 0x08F0E770
	push {r4, r5, lr}
	sub sp, #0x44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _08F0E7A0 @ =gUnknown_08F66304
	mov r0, sp
	movs r2, #0x42
	bl memcpy
	cmp r4, #0
	beq _08F0E7E8
	lsls r1, r4, #1
	adds r2, r1, r4
	mov r3, sp
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #1
	beq _08F0E7BA
	cmp r0, #1
	bgt _08F0E7A4
	cmp r0, #0
	beq _08F0E7AE
	b _08F0E7DC
	.align 2, 0
_08F0E7A0: .4byte gUnknown_08F66304
_08F0E7A4:
	cmp r0, #2
	beq _08F0E7C6
	cmp r0, #3
	beq _08F0E7D2
	b _08F0E7DC
_08F0E7AE:
	adds r0, r2, #1
	add r0, sp
	ldrb r0, [r0]
	bl PlaySfxById0
	b _08F0E7DC
_08F0E7BA:
	adds r0, r2, #1
	add r0, sp
	ldrb r0, [r0]
	bl PlaySfxById1
	b _08F0E7DC
_08F0E7C6:
	adds r0, r2, #1
	add r0, sp
	ldrb r0, [r0]
	bl PlaySfxById2
	b _08F0E7DC
_08F0E7D2:
	adds r0, r2, #1
	add r0, sp
	ldrb r0, [r0]
	bl PlaySfxById3
_08F0E7DC:
	adds r0, r5, r4
	adds r0, #2
	add r0, sp
	ldrb r0, [r0]
	bl sub_8F0E838
_08F0E7E8:
	add sp, #0x44
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8F0E7F0
sub_8F0E7F0: @ 0x08F0E7F0
	push {lr}
	bl sub_8F12338
	bl sub_8F040E0
	ldr r1, _08F0E824 @ =0x040000D4
	ldr r0, _08F0E828 @ =gBg0TilemapBuffer
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0E82C @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F0E830 @ =gUnknown_03002450
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0E834 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl UpdateInput
	pop {r0}
	bx r0
	.align 2, 0
_08F0E824: .4byte 0x040000D4
_08F0E828: .4byte gBg0TilemapBuffer
_08F0E82C: .4byte 0x84000200
_08F0E830: .4byte gUnknown_03002450
_08F0E834: .4byte 0x84000100

	thumb_func_start sub_8F0E838
sub_8F0E838: @ 0x08F0E838
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _08F0E84A
_08F0E840:
	bl sub_8F0E7F0
	subs r4, #1
	cmp r4, #0
	bne _08F0E840
_08F0E84A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8F0E850
sub_8F0E850: @ 0x08F0E850
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #1
	cmp r4, #0
	beq _08F0E864
_08F0E85A:
	bl sub_8F0E874
	subs r4, #1
	cmp r4, #0
	bne _08F0E85A
_08F0E864:
	bl sub_8F0E874
	movs r0, #0xf
	bl sub_8F0EA18
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8F0E874
sub_8F0E874: @ 0x08F0E874
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08F0E8A8 @ =gUnknown_08F66346
	mov r0, sp
	movs r2, #8
	bl memcpy
	movs r4, #0x2f
	movs r5, #7
_08F0E886:
	asrs r0, r4, #1
	ands r0, r5
	add r0, sp
	ldrb r0, [r0]
	bl sub_8F0EA18
	bl sub_8F0E7F0
	bl sub_8F0E7F0
	subs r4, #1
	cmp r4, #0
	bgt _08F0E886
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0E8A8: .4byte gUnknown_08F66346

	thumb_func_start sub_8F0E8AC
sub_8F0E8AC: @ 0x08F0E8AC
	push {r4, r5, lr}
	ldr r1, _08F0E8D4 @ =gKeysDown
	movs r0, #0
	strh r0, [r1]
	adds r5, r1, #0
	ldr r0, _08F0E8D8 @ =0x00000207
	adds r4, r0, #0
_08F0E8BA:
	bl sub_8F0E7F0
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08F0E8BA
	ldr r1, _08F0E8D4 @ =gKeysDown
	movs r0, #0
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0E8D4: .4byte gKeysDown
_08F0E8D8: .4byte 0x00000207

	thumb_func_start sub_8F0E8DC
sub_8F0E8DC: @ 0x08F0E8DC
	push {r4, lr}
	sub sp, #0x80
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08F0E90C @ =gUnknown_08F6634E
	mov r0, sp
	movs r2, #0x80
	bl memcpy
	bl Random
	adds r2, r0, #0
	lsrs r0, r2, #0x18
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08F0E910
	lsrs r0, r2, #0x19
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0x64
	ldrb r1, [r1]
	subs r0, r0, r1
	b _08F0E918
	.align 2, 0
_08F0E90C: .4byte gUnknown_08F6634E
_08F0E910:
	lsrs r0, r2, #0x19
	add r0, sp
	ldrb r0, [r0]
	adds r0, #0x64
_08F0E918:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08F0E948 @ =0x000003FF
	ands r0, r4
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	adds r1, r0, #0
	movs r0, #0xfc
	lsls r0, r0, #8
	ands r0, r4
	adds r1, r1, r0
	ldr r0, _08F0E94C @ =0x0000FFFF
	cmp r1, r0
	ble _08F0E93A
	adds r1, r0, #0
_08F0E93A:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	add sp, #0x80
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08F0E948: .4byte 0x000003FF
_08F0E94C: .4byte 0x0000FFFF

	thumb_func_start sub_8F0E950
sub_8F0E950: @ 0x08F0E950
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8F0E8DC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	ble _08F0E964
	movs r0, #0xff
_08F0E964:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1

	thumb_func_start sub_8F0E96C
sub_8F0E96C: @ 0x08F0E96C
	push {r4, lr}
	movs r4, #0xf
_08F0E970:
	movs r0, #5
	bl PlaySfxById1
	movs r0, #2
	bl sub_8F0E838
	subs r4, #1
	cmp r4, #0
	bgt _08F0E970
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start SetupEnemyGroups
SetupEnemyGroups: @ 0x08F0E988
	push {lr}
	mov ip, r4
	ldr r4, _08F0E9B4 @ =0xFFFFF98C
	add sp, r4
	mov r4, ip
	ldr r1, _08F0E9B8 @ =gEnemyGroupsData
	ldr r2, _08F0E9BC @ =0x00000672
	mov r0, sp
	bl memcpy
	ldr r2, _08F0E9C0 @ =gMiscContainer
	ldr r1, _08F0E9C4 @ =gBattleEnemyGroupId
	ldrb r3, [r1]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #1
	add r0, sp
	str r0, [r2]
	ldr r3, _08F0E9C8 @ =0x00000674
	add sp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08F0E9B4: .4byte 0xFFFFF98C
_08F0E9B8: .4byte gEnemyGroupsData
_08F0E9BC: .4byte 0x00000672
_08F0E9C0: .4byte gMiscContainer
_08F0E9C4: .4byte gBattleEnemyGroupId
_08F0E9C8: .4byte 0x00000674

	thumb_func_start sub_8F0E9CC
sub_8F0E9CC: @ 0x08F0E9CC
	push {r4, lr}
	ldr r4, _08F0EA08 @ =0xFFFFFE00
	add sp, r4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08F0EA0C @ =gUnknown_08F66A40
	movs r2, #0x80
	lsls r2, r2, #2
	mov r0, sp
	bl memcpy
	lsls r4, r4, #5
	mov r1, sp
	adds r0, r1, r4
	ldr r1, _08F0EA10 @ =0x05000080
	bl LoadPalette
	adds r4, #0x10
	mov r1, sp
	adds r0, r1, r4
	ldr r1, _08F0EA14 @ =0x05000280
	bl LoadPalette
	movs r3, #0x80
	lsls r3, r3, #2
	add sp, r3
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0EA08: .4byte 0xFFFFFE00
_08F0EA0C: .4byte gUnknown_08F66A40
_08F0EA10: .4byte 0x05000080
_08F0EA14: .4byte 0x05000280

	thumb_func_start sub_8F0EA18
sub_8F0EA18: @ 0x08F0EA18
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08F0EA5C @ =gNESPalette
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	cmp r0, #0x3c
	bhi _08F0EA40
	movs r0, #0xe7
	lsls r0, r0, #7
	ands r0, r2
	lsrs r0, r0, #2
	movs r1, #0x1c
	ands r1, r2
	lsrs r1, r1, #2
	adds r0, r0, r1
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08F0EA40:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r2, [r0]
	ldr r1, _08F0EA60 @ =0x05000182
	movs r0, #3
_08F0EA4A:
	strh r2, [r1]
	adds r1, #0x20
	subs r0, #1
	cmp r0, #0
	bge _08F0EA4A
	bl sub_8F0E7F0
	pop {r0}
	bx r0
	.align 2, 0
_08F0EA5C: .4byte gNESPalette
_08F0EA60: .4byte 0x05000182

	thumb_func_start sub_8F0EA64
sub_8F0EA64: @ 0x08F0EA64
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _08F0EA78 @ =gUnknown_08F29F00
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bl HandleControlCodes
	pop {r0}
	bx r0
	.align 2, 0
_08F0EA78: .4byte gUnknown_08F29F00

	thumb_func_start sub_8F0EA7C
sub_8F0EA7C: @ 0x08F0EA7C
	push {r4, r5, lr}
	ldr r4, _08F0EA94 @ =gUnknown_030036B4
	ldrb r5, [r4]
	movs r0, #0
	strb r0, [r4]
	bl WaitForButtonPress
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0EA94: .4byte gUnknown_030036B4

	thumb_func_start sub_8F0EA98
sub_8F0EA98: @ 0x08F0EA98
	push {lr}
	movs r0, #0xff
	bl sub_8F12B48
	bl sub_8F0EAA8
	pop {r0}
	bx r0

	thumb_func_start sub_8F0EAA8
sub_8F0EAA8: @ 0x08F0EAA8
	bx lr
	.align 2, 0

	thumb_func_start sub_8F0EAAC
sub_8F0EAAC: @ 0x08F0EAAC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08F0EAD0
	ldr r2, _08F0EAC8 @ =gGameInfo
	ldr r0, _08F0EACC @ =gUnknown_03003500
	lsls r1, r1, #5
	adds r1, r1, r0
	ldrb r3, [r1, #0x18]
	lsls r0, r3, #6
	adds r0, r0, r2
	adds r0, #0x42
	ldrh r0, [r0]
	b _08F0EAE0
	.align 2, 0
_08F0EAC8: .4byte gGameInfo
_08F0EACC: .4byte gUnknown_03003500
_08F0EAD0:
	ldr r2, _08F0EAEC @ =gEnemyData
	ldr r0, _08F0EAF0 @ =gUnknown_03003500
	lsls r1, r1, #5
	adds r1, r1, r0
	ldrb r3, [r1, #0x18]
	lsls r0, r3, #5
	adds r0, r0, r2
	ldrh r0, [r0, #2]
_08F0EAE0:
	lsrs r0, r0, #2
	ldrh r1, [r1, #2]
	cmp r0, r1
	bls _08F0EAF4
	movs r0, #0
	b _08F0EAF6
	.align 2, 0
_08F0EAEC: .4byte gEnemyData
_08F0EAF0: .4byte gUnknown_03003500
_08F0EAF4:
	movs r0, #1
_08F0EAF6:
	bx lr

	thumb_func_start sub_8F0EAF8
sub_8F0EAF8: @ 0x08F0EAF8
	ldr r2, _08F0EB08 @ =gUnknown_03003650
	ldr r1, _08F0EB0C @ =v_blank_fnc
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _08F0EB10 @ =sub_8F0EB28
	str r0, [r1]
	bx lr
	.align 2, 0
_08F0EB08: .4byte gUnknown_03003650
_08F0EB0C: .4byte v_blank_fnc
_08F0EB10: .4byte sub_8F0EB28

	thumb_func_start sub_8F0EB14
sub_8F0EB14: @ 0x08F0EB14
	ldr r0, _08F0EB20 @ =v_blank_fnc
	ldr r1, _08F0EB24 @ =gUnknown_03003650
	ldr r1, [r1]
	str r1, [r0]
	bx lr
	.align 2, 0
_08F0EB20: .4byte v_blank_fnc
_08F0EB24: .4byte gUnknown_03003650

	thumb_func_start sub_8F0EB28
sub_8F0EB28: @ 0x08F0EB28
	push {lr}
	ldr r0, _08F0EB68 @ =gUnknown_03003650
	ldr r0, [r0]
	cmp r0, #0
	beq _08F0EB36
	bl _call_via_r0
_08F0EB36:
	ldr r3, _08F0EB6C @ =gUnknown_030036E8
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F0EB64
	ldr r0, _08F0EB70 @ =gUnknown_030036B4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0EB64
	ldr r2, _08F0EB74 @ =gKeysDown
	ldrh r1, [r2]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08F0EB64
	ldr r0, _08F0EB78 @ =0x0000FFF9
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08F0EB7C @ =gUnknown_030036C0
	adds r0, #0x20
	movs r1, #0
	strb r1, [r0]
_08F0EB64:
	pop {r0}
	bx r0
	.align 2, 0
_08F0EB68: .4byte gUnknown_03003650
_08F0EB6C: .4byte gUnknown_030036E8
_08F0EB70: .4byte gUnknown_030036B4
_08F0EB74: .4byte gKeysDown
_08F0EB78: .4byte 0x0000FFF9
_08F0EB7C: .4byte gUnknown_030036C0

	thumb_func_start sub_8F0EB80
sub_8F0EB80: @ 0x08F0EB80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08F0EE24 @ =0xFFFFFD40
	add sp, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x288]
	ldr r1, _08F0EE28 @ =gUnknown_08F66C40
	mov r0, sp
	movs r2, #0x43
	bl memcpy
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0x28c]
	ldr r1, _08F0EE2C @ =gUnknown_08F66C83
	movs r2, #0x33
	bl memcpy
	mov r1, sp
	adds r1, #0x78
	str r1, [sp, #0x290]
	ldr r1, _08F0EE30 @ =gUnknown_08F66CB6
	ldr r0, [sp, #0x290]
	movs r2, #0x33
	bl memcpy
	mov r2, sp
	adds r2, #0xac
	str r2, [sp, #0x294]
	ldr r1, _08F0EE34 @ =gUnknown_08F66CE9
	adds r0, r2, #0
	movs r2, #0x27
	bl memcpy
	mov r3, sp
	adds r3, #0xd4
	str r3, [sp, #0x298]
	ldr r1, _08F0EE38 @ =gUnknown_08F66D10
	adds r0, r3, #0
	movs r2, #0x1f
	bl memcpy
	mov r5, sp
	adds r5, #0xf4
	str r5, [sp, #0x29c]
	ldr r1, _08F0EE3C @ =gUnknown_08F66D2F
	adds r0, r5, #0
	movs r2, #0x1b
	bl memcpy
	movs r6, #0x88
	lsls r6, r6, #1
	add r6, sp
	str r6, [sp, #0x2a0]
	ldr r1, _08F0EE40 @ =gUnknown_08F66D4A
	adds r0, r6, #0
	movs r2, #0x1b
	bl memcpy
	movs r7, #0x96
	lsls r7, r7, #1
	add r7, sp
	str r7, [sp, #0x2a4]
	ldr r1, _08F0EE44 @ =gUnknown_08F66D65
	adds r0, r7, #0
	movs r2, #0x1b
	bl memcpy
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, sp
	mov sl, r0
	ldr r1, _08F0EE48 @ =gUnknown_08F66D80
	movs r2, #0x13
	bl memcpy
	movs r1, #0xae
	lsls r1, r1, #1
	add r1, sp
	mov sb, r1
	ldr r1, _08F0EE4C @ =gUnknown_08F66D93
	mov r0, sb
	movs r2, #0xf
	bl memcpy
	movs r2, #0xb6
	lsls r2, r2, #1
	add r2, sp
	mov r8, r2
	ldr r1, _08F0EE50 @ =gUnknown_08F66DA2
	mov r0, r8
	movs r2, #0xf
	bl memcpy
	add r6, sp, #0x17c
	ldr r1, _08F0EE54 @ =gUnknown_08F66DB1
	adds r0, r6, #0
	movs r2, #0xf
	bl memcpy
	add r5, sp, #0x18c
	ldr r1, _08F0EE58 @ =gUnknown_08F66DC0
	adds r0, r5, #0
	movs r2, #0xb
	bl memcpy
	add r4, sp, #0x198
	ldr r1, _08F0EE5C @ =gUnknown_08F66DCB
	adds r0, r4, #0
	movs r2, #0x13
	bl memcpy
	add r7, sp, #0x1ac
	mov r3, sp
	str r3, [r7]
	str r3, [r7, #4]
	ldr r0, [sp, #0x28c]
	str r0, [r7, #8]
	ldr r1, [sp, #0x290]
	str r1, [r7, #0xc]
	ldr r2, [sp, #0x294]
	str r2, [r7, #0x10]
	ldr r3, [sp, #0x298]
	str r3, [r7, #0x14]
	mov r0, sp
	str r0, [r7, #0x18]
	ldr r1, [sp, #0x29c]
	str r1, [r7, #0x1c]
	ldr r2, [sp, #0x2a0]
	str r2, [r7, #0x20]
	ldr r3, [sp, #0x2a4]
	str r3, [r7, #0x24]
	mov r0, sl
	str r0, [r7, #0x28]
	mov r1, sb
	str r1, [r7, #0x2c]
	mov r2, r8
	str r2, [r7, #0x30]
	str r6, [r7, #0x34]
	str r5, [r7, #0x38]
	str r4, [r7, #0x3c]
	add r4, sp, #0x1ec
	ldr r1, _08F0EE60 @ =gUnknown_08F66DDE
	adds r0, r4, #0
	movs r2, #0x58
	bl memcpy
	add r0, sp, #0x244
	ldr r1, _08F0EE64 @ =gUnknown_08F66E38
	movs r2, #0x44
	bl memcpy
	ldr r2, _08F0EE68 @ =gUnknown_03003500
	ldr r3, [sp, #0x288]
	lsls r6, r3, #5
	adds r1, r6, r2
	movs r0, #1
	ldrb r5, [r1, #0x1e]
	ands r0, r5
	cmp r0, #0
	beq _08F0ECCE
	movs r0, #0
	strb r0, [r1]
_08F0ECCE:
	ldr r0, _08F0EE6C @ =gUnknown_03003620
	mov r8, r0
	ldrb r0, [r1, #0x1a]
	mov r3, r8
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r1, #0x1a]
	adds r0, r2, #3
	adds r0, r6, r0
	ldrb r1, [r0]
	lsrs r0, r1, #4
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r5, [r0]
	ldrb r7, [r5]
	mov sl, r7
	adds r5, #1
	ldrb r0, [r5]
	mov sb, r0
	adds r5, #1
	adds r0, r2, #7
	adds r0, r6, r0
	ldrb r0, [r0]
	lsrs r0, r0, #5
	ldrb r2, [r5]
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2a8]
	adds r5, #1
	ldr r0, _08F0EE70 @ =gEnemyGroupPositioning
	ldrb r0, [r0]
	lsls r0, r0, #2
	mov r3, r8
	ldrb r3, [r3]
	adds r0, r3, r0
	adds r0, r4, r0
	ldrb r0, [r0]
	str r0, [sp, #0x2ac]
	movs r0, #0xc
	ands r0, r1
	lsrs r0, r0, #2
	str r0, [sp, #0x2b0]
	ldr r1, _08F0EE74 @ =gUnknown_03003670
	ldr r4, [sp, #0x288]
	subs r4, #4
	lsls r0, r4, #2
	adds r0, r0, r1
	strb r7, [r0]
	mov r7, sb
	strb r7, [r0, #1]
	add r1, sp, #0x2a8
	ldrb r1, [r1]
	strb r1, [r0, #2]
	add r2, sp, #0x2ac
	ldrb r2, [r2]
	strb r2, [r0, #3]
	ldr r0, [sp, #0x288]
	bl sub_8F0EF4C
	movs r0, #0
	str r6, [sp, #0x2b8]
	str r4, [sp, #0x2b4]
	cmp r0, sl
	bhs _08F0ED9E
	mov ip, r8
_08F0ED52:
	movs r2, #0
	adds r3, r0, #1
	str r3, [sp, #0x2bc]
	cmp r2, sb
	bhs _08F0ED94
	ldr r6, [sp, #0x2a8]
	adds r0, r6, r0
	lsls r4, r0, #6
	ldr r7, _08F0EE78 @ =0x0600217E
	mov r8, r7
	ldr r0, [sp, #0x2b0]
	lsls r3, r0, #0xc
_08F0ED6A:
	ldr r1, [sp, #0x2ac]
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r4, r0
	add r0, r8
	mov r6, ip
	ldrb r6, [r6]
	lsls r1, r6, #6
	ldrb r7, [r5]
	adds r1, r7, r1
	adds r1, r1, r3
	movs r6, #0x86
	lsls r6, r6, #7
	adds r1, r1, r6
	strh r1, [r0]
	adds r5, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, sb
	blo _08F0ED6A
_08F0ED94:
	ldr r7, [sp, #0x2bc]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, sl
	blo _08F0ED52
_08F0ED9E:
	ldr r2, _08F0EE7C @ =gUnknown_08F6F880
	ldr r1, _08F0EE80 @ =gEnemyData
	ldr r4, _08F0EE68 @ =gUnknown_03003500
	ldr r3, [sp, #0x2b8]
	adds r0, r3, r4
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _08F0EE6C @ =gUnknown_03003620
	ldrb r1, [r1]
	lsls r1, r1, #0xb
	ldr r5, _08F0EE84 @ =0x0600E000
	adds r1, r1, r5
	movs r2, #0x40
	bl BitUnpack
	adds r4, #5
	ldr r6, [sp, #0x2b8]
	adds r3, r6, r4
	movs r4, #0xfc
	adds r0, r4, #0
	ldrb r7, [r3]
	ands r0, r7
	cmp r0, #0
	beq _08F0EE10
	ldr r0, _08F0EE88 @ =gUnknown_030036C0
	ldr r2, [sp, #0x2b4]
	lsls r1, r2, #3
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	add r2, sp, #0x244
	adds r0, r4, #0
	ldrb r5, [r3]
	ands r0, r5
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	adds r0, r4, #0
	ldrb r3, [r3]
	ands r0, r3
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1, #1]
	ldr r0, [sp, #0x2ac]
	subs r0, #3
	lsls r0, r0, #3
	strh r0, [r1, #4]
	ldr r0, [sp, #0x2a8]
	adds r0, #4
	lsls r0, r0, #3
	strh r0, [r1, #6]
_08F0EE10:
	movs r3, #0xb0
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0EE24: .4byte 0xFFFFFD40
_08F0EE28: .4byte gUnknown_08F66C40
_08F0EE2C: .4byte gUnknown_08F66C83
_08F0EE30: .4byte gUnknown_08F66CB6
_08F0EE34: .4byte gUnknown_08F66CE9
_08F0EE38: .4byte gUnknown_08F66D10
_08F0EE3C: .4byte gUnknown_08F66D2F
_08F0EE40: .4byte gUnknown_08F66D4A
_08F0EE44: .4byte gUnknown_08F66D65
_08F0EE48: .4byte gUnknown_08F66D80
_08F0EE4C: .4byte gUnknown_08F66D93
_08F0EE50: .4byte gUnknown_08F66DA2
_08F0EE54: .4byte gUnknown_08F66DB1
_08F0EE58: .4byte gUnknown_08F66DC0
_08F0EE5C: .4byte gUnknown_08F66DCB
_08F0EE60: .4byte gUnknown_08F66DDE
_08F0EE64: .4byte gUnknown_08F66E38
_08F0EE68: .4byte gUnknown_03003500
_08F0EE6C: .4byte gUnknown_03003620
_08F0EE70: .4byte gEnemyGroupPositioning
_08F0EE74: .4byte gUnknown_03003670
_08F0EE78: .4byte 0x0600217E
_08F0EE7C: .4byte gUnknown_08F6F880
_08F0EE80: .4byte gEnemyData
_08F0EE84: .4byte 0x0600E000
_08F0EE88: .4byte gUnknown_030036C0

	thumb_func_start sub_8F0EE8C
sub_8F0EE8C: @ 0x08F0EE8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08F0EEB0 @ =gBattleEnemyGroupId
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F0EEB4
	movs r0, #4
	str r0, [sp]
	movs r2, #3
	str r2, [sp, #4]
	b _08F0EEBC
	.align 2, 0
_08F0EEB0: .4byte gBattleEnemyGroupId
_08F0EEB4:
	movs r4, #2
	str r4, [sp]
	movs r7, #2
	str r7, [sp, #4]
_08F0EEBC:
	movs r6, #0
	ldr r3, _08F0EF44 @ =gUnknown_03003670
	subs r2, r1, #4
	lsls r0, r2, #2
	adds r1, r0, r3
	ldrb r0, [r1]
	adds r0, #2
	cmp r6, r0
	bge _08F0EF34
	str r2, [sp, #0xc]
	mov sl, r1
	mov r0, sl
	str r0, [sp, #8]
_08F0EED6:
	movs r3, #0
	ldr r5, [sp, #0xc]
	mov r1, sl
	ldrb r1, [r1, #1]
	ldr r2, [sp]
	adds r0, r1, r2
	adds r4, r6, #1
	str r4, [sp, #0x10]
	cmp r3, r0
	bge _08F0EF24
	ldr r7, _08F0EF44 @ =gUnknown_03003670
	mov sb, r7
	ldr r0, [sp, #4]
	rsbs r4, r0, #0
	ldr r1, _08F0EF48 @ =0x06003140
	mov r8, r1
	movs r2, #0
	mov ip, r2
_08F0EEFA:
	lsls r2, r5, #2
	add r2, sb
	adds r1, r4, r3
	ldrb r7, [r2, #3]
	adds r1, r7, r1
	ldrb r7, [r2, #2]
	adds r0, r7, r6
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	add r0, r8
	mov r1, ip
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r2, [r2, #1]
	ldr r7, [sp]
	adds r0, r2, r7
	cmp r3, r0
	blt _08F0EEFA
_08F0EF24:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	adds r0, #2
	cmp r6, r0
	blt _08F0EED6
_08F0EF34:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0EF44: .4byte gUnknown_03003670
_08F0EF48: .4byte 0x06003140

	thumb_func_start sub_8F0EF4C
sub_8F0EF4C: @ 0x08F0EF4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08F0EF70 @ =gBattleEnemyGroupId
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F0EF74
	movs r0, #4
	str r0, [sp]
	movs r2, #3
	str r2, [sp, #4]
	b _08F0EF7C
	.align 2, 0
_08F0EF70: .4byte gBattleEnemyGroupId
_08F0EF74:
	movs r4, #2
	str r4, [sp]
	movs r7, #2
	str r7, [sp, #4]
_08F0EF7C:
	movs r6, #0
	ldr r3, _08F0F008 @ =gUnknown_03003670
	subs r2, r1, #4
	lsls r0, r2, #2
	adds r1, r0, r3
	ldrb r0, [r1]
	adds r0, #2
	cmp r6, r0
	bge _08F0EFF8
	str r2, [sp, #0xc]
	mov sl, r1
	mov r0, sl
	str r0, [sp, #8]
_08F0EF96:
	movs r3, #0
	ldr r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r2, sl
	ldrb r2, [r2, #1]
	ldr r4, [sp]
	adds r0, r2, r4
	adds r7, r6, #1
	mov ip, r7
	cmp r3, r0
	bge _08F0EFE8
	ldr r0, _08F0F008 @ =gUnknown_03003670
	mov sb, r0
	ldr r1, [sp, #4]
	rsbs r5, r1, #0
	ldr r4, _08F0F00C @ =gUnknown_030034C0
	ldr r2, _08F0F010 @ =0x06003140
	mov r8, r2
_08F0EFBA:
	ldr r7, [sp, #0x10]
	lsls r2, r7, #2
	add r2, sb
	adds r1, r5, r3
	ldrb r0, [r2, #3]
	adds r1, r0, r1
	ldrb r7, [r2, #2]
	adds r0, r7, r6
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	add r0, r8
	ldrh r1, [r4]
	adds r1, #0x10
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r2, [r2, #1]
	ldr r1, [sp]
	adds r0, r2, r1
	cmp r3, r0
	blt _08F0EFBA
_08F0EFE8:
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	ldr r4, [sp, #8]
	ldrb r0, [r4]
	adds r0, #2
	cmp r6, r0
	blt _08F0EF96
_08F0EFF8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F008: .4byte gUnknown_03003670
_08F0F00C: .4byte gUnknown_030034C0
_08F0F010: .4byte 0x06003140

	thumb_func_start sub_8F0F014
sub_8F0F014: @ 0x08F0F014
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08F0F03C @ =gBattleEnemyGroupId
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F0F040
	movs r0, #4
	str r0, [sp]
	movs r3, #3
	str r3, [sp, #4]
	b _08F0F048
	.align 2, 0
_08F0F03C: .4byte gBattleEnemyGroupId
_08F0F040:
	movs r6, #2
	str r6, [sp]
	movs r7, #2
	str r7, [sp, #4]
_08F0F048:
	cmp r1, #0
	beq _08F0F064
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08F0F060 @ =gUnknown_030034C0
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	b _08F0F074
	.align 2, 0
_08F0F060: .4byte gUnknown_030034C0
_08F0F064:
	movs r1, #0
	str r1, [sp, #0xc]
	ldr r0, _08F0F19C @ =gUnknown_030034C0
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
_08F0F074:
	movs r4, #0
	ldr r3, _08F0F1A0 @ =gUnknown_03003670
	subs r2, #4
	lsls r0, r2, #2
	adds r0, r0, r3
	str r2, [sp, #0x1c]
	ldrb r0, [r0]
	cmp r4, r0
	blt _08F0F088
	b _08F0F18C
_08F0F088:
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrb r1, [r0]
	subs r1, #1
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r0, r4, #0x18
	mov sb, r0
	cmp r1, sb
	blt _08F0F172
	ldr r1, _08F0F1A0 @ =gUnknown_03003670
	ldr r3, [sp, #0x1c]
	str r3, [sp, #0x10]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r6, [sp]
	lsls r6, r6, #0x18
	str r6, [sp, #0x18]
	asrs r6, r6, #0x18
	mov r8, r6
	ldr r7, [sp, #4]
	mov sl, r7
_08F0F0B6:
	movs r1, #0
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x20]
	ldr r3, [sp, #0x14]
	ldrb r0, [r3, #1]
	add r0, r8
	lsls r4, r2, #0x18
	cmp r1, r0
	bge _08F0F106
	asrs r6, r4, #0x18
	ldr r7, _08F0F1A0 @ =gUnknown_03003670
	mov ip, r7
	mov r0, sl
	rsbs r5, r0, #0
_08F0F0D2:
	ldr r7, [sp, #0x20]
	lsls r3, r7, #2
	add r3, ip
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	adds r1, r5, r2
	ldrb r0, [r3, #3]
	adds r1, r0, r1
	ldrb r7, [r3, #2]
	adds r0, r7, r6
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F0F1A4 @ =0x06003180
	adds r0, r0, r1
	mov r7, sp
	ldrh r7, [r7, #8]
	strh r7, [r0]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	asrs r2, r2, #0x18
	ldrb r0, [r3, #1]
	add r0, r8
	cmp r2, r0
	blt _08F0F0D2
_08F0F106:
	bl sub_8F0E7F0
	asrs r2, r4, #0x18
	cmp r4, sb
	beq _08F0F172
	movs r1, #0
	ldr r0, [sp, #0x10]
	mov ip, r0
	ldr r3, [sp, #0x14]
	ldrb r0, [r3, #1]
	add r0, r8
	cmp r1, r0
	bge _08F0F166
	str r2, [sp, #0x20]
	mov r6, sl
	rsbs r6, r6, #0
	str r6, [sp, #0x24]
	ldr r7, [sp, #0x18]
	asrs r5, r7, #0x18
_08F0F12C:
	mov r0, ip
	lsls r3, r0, #2
	ldr r6, _08F0F1A0 @ =gUnknown_03003670
	adds r3, r3, r6
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	ldr r7, [sp, #0x24]
	adds r1, r7, r2
	ldrb r0, [r3, #3]
	adds r1, r0, r1
	ldrb r6, [r3, #2]
	ldr r7, [sp, #0x20]
	adds r0, r6, r7
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F0F1A4 @ =0x06003180
	adds r0, r0, r1
	mov r6, sp
	ldrh r6, [r6, #0xc]
	strh r6, [r0]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	asrs r2, r2, #0x18
	ldrb r3, [r3, #1]
	adds r0, r3, r5
	cmp r2, r0
	blt _08F0F12C
_08F0F166:
	movs r7, #0xff
	lsls r7, r7, #0x18
	adds r0, r4, r7
	lsrs r2, r0, #0x18
	cmp r0, sb
	bge _08F0F0B6
_08F0F172:
	movs r1, #0x80
	lsls r1, r1, #0x11
	add r1, sb
	lsrs r4, r1, #0x18
	asrs r1, r1, #0x18
	ldr r3, _08F0F1A0 @ =gUnknown_03003670
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r1, r0
	bge _08F0F18C
	b _08F0F088
_08F0F18C:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F19C: .4byte gUnknown_030034C0
_08F0F1A0: .4byte gUnknown_03003670
_08F0F1A4: .4byte 0x06003180

	thumb_func_start DrawBattleStatusTextById
DrawBattleStatusTextById: @ 0x08F0F1A8
	push {r4, r5, lr}
	sub sp, #0x160
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	ldr r1, _08F0F1E8 @ =gUnknown_08F66E7C
	movs r2, #0xad
	lsls r2, r2, #1
	mov r0, sp
	bl memcpy
	add r0, sp, #0x15c
	ldr r1, _08F0F1EC @ =gUnknown_08F66FD6
	movs r2, #2
	bl memcpy
	cmp r4, #0
	beq _08F0F238
	bl sub_8F0F244
	cmp r4, #0xff
	bne _08F0F1FC
	ldr r1, _08F0F1F0 @ =gUnknown_03003500
	ldr r0, _08F0F1F4 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	ldr r1, _08F0F1F8 @ =0x00000514
	adds r4, r0, r1
	b _08F0F20C
	.align 2, 0
_08F0F1E8: .4byte gUnknown_08F66E7C
_08F0F1EC: .4byte gUnknown_08F66FD6
_08F0F1F0: .4byte gUnknown_03003500
_08F0F1F4: .4byte gUnknown_030036EC
_08F0F1F8: .4byte 0x00000514
_08F0F1FC:
	lsls r0, r5, #1
	add r0, sp
	ldrh r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08F0F20C:
	ldr r1, _08F0F21C @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0F220
	bl HandleTextWrapping
	b _08F0F224
	.align 2, 0
_08F0F21C: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0F220:
	movs r0, #1
	strb r0, [r1]
_08F0F224:
	adds r0, r4, #0
#ifdef JAPANESE
	bl DrawTextWithIdNoWait
#elif ENGLISH
	@get pre-parsing stuff to work so we can do auto line wraps
	bl copy_battle_line_to_ram
#endif
	add r0, sp, #0x15c
	bl HandleControlCodes
	ldr r0, _08F0F240 @ =gGameInfo
	ldrb r0, [r0, #0x18]
	bl sub_8F0E838
_08F0F238:
	add sp, #0x160
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F240: .4byte gGameInfo

	thumb_func_start sub_8F0F244
sub_8F0F244: @ 0x08F0F244
	push {lr}
	ldr r0, _08F0F260 @ =gUnknown_03003700
	ldrb r0, [r0]
	ldr r1, _08F0F264 @ =gUnknown_03003640
	bl CopyName
	ldr r0, _08F0F268 @ =gUnknown_030036EC
	ldrb r0, [r0]
	ldr r1, _08F0F26C @ =gUnknown_03003610
	bl CopyName
	pop {r0}
	bx r0
	.align 2, 0
_08F0F260: .4byte gUnknown_03003700
_08F0F264: .4byte gUnknown_03003640
_08F0F268: .4byte gUnknown_030036EC
_08F0F26C: .4byte gUnknown_03003610

	thumb_func_start CopyName
CopyName: @ 0x08F0F270
	push {r4, r5, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08F0F294
	ldr r2, _08F0F28C @ =gUnknown_03003500
	lsls r3, r0, #5
	adds r0, r3, r2
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F0F290 @ =gUnknown_03003208
	adds r1, r1, r0
	b _08F0F2C2
	.align 2, 0
_08F0F28C: .4byte gUnknown_03003500
_08F0F290: .4byte gUnknown_03003208
_08F0F294:
	ldr r3, _08F0F2B0 @ =gUnknown_03003500
	lsls r4, r0, #5
	adds r2, r4, r3
	ldr r0, _08F0F2B4 @ =gUnknown_030034E8
	ldr r1, [r0]
	ldrb r2, [r2, #0x18]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, _08F0F2B8 @ =0x00001770
	adds r0, r0, r1
	ldr r1, [r0]
	adds r2, r3, #0
	adds r3, r4, #0
	b _08F0F2C2
	.align 2, 0
_08F0F2B0: .4byte gUnknown_03003500
_08F0F2B4: .4byte gUnknown_030034E8
_08F0F2B8: .4byte 0x00001770
_08F0F2BC:
	strb r0, [r5]
	adds r1, #1
	adds r5, #1
_08F0F2C2:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0F2BC
	adds r1, r3, r2
	movs r0, #0x1c
	ldrb r1, [r1, #0x1a]
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08F0F2DE
	lsrs r0, r0, #0x1a
	adds r0, #0xc0
#ifdef JAPANESE
	strb r0, [r5]
	adds r5, #1
#elif ENGLISH
	@add a space between the enemy name and the suffix letters if there are multiple enemies
	bl add_space_to_enemy_name
#endif
_08F0F2DE:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8F0F2E8
sub_8F0F2E8: @ 0x08F0F2E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_8F105E4
	cmp r0, #0
	beq _08F0F2FA
_08F0F2F6:
	movs r0, #1
	b _08F0F3A6
_08F0F2FA:
	movs r0, #0
	mov r8, r0
	ldr r7, _08F0F394 @ =gUnknown_03003500
_08F0F300:
	movs r4, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	ldrb r0, [r7, #0x1d]
	ldr r1, _08F0F394 @ =gUnknown_03003500
	cmp r0, #0xff
	beq _08F0F32A
	cmp r0, #0x5e
	beq _08F0F346
_08F0F314:
	lsls r0, r4, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	bl sub_8F0E950
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	ble _08F0F32A
	adds r6, r0, #0
	adds r5, r4, #0
_08F0F32A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bhi _08F0F346
	lsls r0, r4, #5
	adds r0, r0, r7
	ldrb r0, [r0, #0x1d]
	ldr r1, _08F0F394 @ =gUnknown_03003500
	cmp r0, #0xff
	beq _08F0F32A
	cmp r0, #0x5e
	bne _08F0F314
	adds r5, r4, #0
_08F0F346:
	ldr r4, _08F0F398 @ =gUnknown_03003700
	strb r5, [r4]
	bl sub_8F0F3B0
	ldrb r4, [r4]
	lsls r0, r4, #5
	adds r0, r0, r7
	movs r1, #0xff
	strb r1, [r0, #0x1d]
	bl sub_8F105E4
	cmp r0, #0
	bne _08F0F2F6
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #7
	bls _08F0F300
	ldr r1, _08F0F39C @ =gUnknown_0300362C
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08F0F3A4
	ldr r0, _08F0F3A0 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	beq _08F0F2F6
	movs r0, #0x64
	bl sub_8F0E838
	movs r0, #0x92
	bl DrawBattleStatusTextById
	b _08F0F2F6
	.align 2, 0
_08F0F394: .4byte gUnknown_03003500
_08F0F398: .4byte gUnknown_03003700
_08F0F39C: .4byte gUnknown_0300362C
_08F0F3A0: .4byte gEnemyGroupSpecialEncounter
_08F0F3A4:
	movs r0, #0
_08F0F3A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8F0F3B0
sub_8F0F3B0: @ 0x08F0F3B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08F0F3E8 @ =gUnknown_03003500
	ldr r2, _08F0F3EC @ =gUnknown_03003700
	ldrb r3, [r2]
	lsls r0, r3, #5
	adds r3, r0, r1
	ldrb r0, [r3]
	mov r8, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _08F0F3CC
	b _08F0F4FA
_08F0F3CC:
	ldrb r1, [r3, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0F3D8
	b _08F0F4FA
_08F0F3D8:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0F3F0
	movs r0, #0x47
	bl DrawBattleStatusTextById
	b _08F0F4FA
	.align 2, 0
_08F0F3E8: .4byte gUnknown_03003500
_08F0F3EC: .4byte gUnknown_03003700
_08F0F3F0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08F0F400
	movs r0, #0x46
	bl DrawBattleStatusTextById
	b _08F0F4FA
_08F0F400:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08F0F440
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _08F0F41A
	movs r0, #0x3c
	bl DrawBattleStatusTextById
	b _08F0F4FA
_08F0F41A:
	ldrb r4, [r6]
	lsls r1, r4, #5
	add r1, r8
	movs r0, #0xef
	ldrb r2, [r1, #1]
	ands r0, r2
	strb r0, [r1, #1]
	ldr r1, _08F0F43C @ =gUnknown_030036EC
	ldrb r0, [r6]
	strb r0, [r1]
	bl sub_8F0EA98
	movs r0, #0x8e
	bl DrawBattleStatusTextById
	b _08F0F4FA
	.align 2, 0
_08F0F43C: .4byte gUnknown_030036EC
_08F0F440:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08F0F450
	movs r0, #0x68
	bl DrawBattleStatusTextById
	b _08F0F4FA
_08F0F450:
	movs r0, #2
	ldrb r4, [r3, #0x1e]
	ands r0, r4
	cmp r0, #0
	beq _08F0F468
	ldrb r3, [r3, #0x1d]
	cmp r3, #0x76
	beq _08F0F468
	movs r0, #0x56
	bl DrawBattleStatusTextById
	b _08F0F4FA
_08F0F468:
	mov r5, r8
	adds r4, r6, #0
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r1, r0, r5
	movs r0, #0x20
	ldrb r2, [r1, #0x1e]
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _08F0F4A8
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	beq _08F0F492
	movs r0, #0x1c
	bl DrawBattleStatusTextById
	b _08F0F4FA
_08F0F492:
	ldrb r4, [r4]
	lsls r1, r4, #5
	adds r1, r1, r5
	movs r0, #0xdf
	ldrb r3, [r1, #0x1e]
	ands r0, r3
	strb r0, [r1, #0x1e]
	movs r0, #0x8b
	bl DrawBattleStatusTextById
	b _08F0F4FA
_08F0F4A8:
	movs r0, #8
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F0F4B8
	movs r0, #0x3a
	bl DrawBattleStatusTextById
_08F0F4B8:
	ldr r3, _08F0F504 @ =gUnknown_03003690
	ldr r2, _08F0F508 @ =gUnknown_08F70840
	ldrb r4, [r6]
	lsls r0, r4, #5
	add r0, r8
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r1, [r0]
	strh r1, [r3]
	ldrb r4, [r6]
	lsls r0, r4, #5
	add r0, r8
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08F0F50C @ =0x00006805
	adds r1, r1, r0
	strh r1, [r3]
	bl sub_8F0F514
	ldrb r6, [r6]
	lsls r0, r6, #5
	add r0, r8
	ldrb r0, [r0, #0x1d]
	cmp r0, #8
	bne _08F0F4FA
	ldr r0, _08F0F510 @ =gUnknown_030034F0
	strb r7, [r0]
_08F0F4FA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F504: .4byte gUnknown_03003690
_08F0F508: .4byte gUnknown_08F70840
_08F0F50C: .4byte 0x00006805
_08F0F510: .4byte gUnknown_030034F0

	thumb_func_start sub_8F0F514
sub_8F0F514: @ 0x08F0F514
	push {r4, r5, lr}
	sub sp, #0x34
	ldr r1, _08F0F550 @ =gUnknown_08F66FD8
	mov r0, sp
	movs r2, #0x34
	bl memcpy
	ldr r4, _08F0F554 @ =gUnknown_03003604
	ldr r5, _08F0F558 @ =gUnknown_08F70840
_08F0F526:
	ldr r0, _08F0F55C @ =gUnknown_03003690
	ldrh r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsrs r0, r0, #4
	strb r0, [r4]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F0F526
	ldr r1, _08F0F554 @ =gUnknown_03003604
	movs r0, #0xff
	strb r0, [r1]
	add sp, #0x34
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F550: .4byte gUnknown_08F66FD8
_08F0F554: .4byte gUnknown_03003604
_08F0F558: .4byte gUnknown_08F70840
_08F0F55C: .4byte gUnknown_03003690

	thumb_func_start sub_8F0F560
sub_8F0F560: @ 0x08F0F560
	ldr r1, _08F0F56C @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_08F0F56C: .4byte gUnknown_03003690

	thumb_func_start sub_8F0F570
sub_8F0F570: @ 0x08F0F570
	push {r4, lr}
	ldr r0, _08F0F590 @ =gUnknown_08F70840
	ldr r1, _08F0F594 @ =gUnknown_03003690
	ldrh r1, [r1]
	adds r0, r1, r0
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0xb
	bls _08F0F586
	b _08F0F720
_08F0F586:
	lsls r0, r1, #2
	ldr r1, _08F0F598 @ =_08F0F59C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0F590: .4byte gUnknown_08F70840
_08F0F594: .4byte gUnknown_03003690
_08F0F598: .4byte _08F0F59C
_08F0F59C: @ jump table
	.4byte _08F0F5CC @ case 0
	.4byte _08F0F5DC @ case 1
	.4byte _08F0F5FC @ case 2
	.4byte _08F0F614 @ case 3
	.4byte _08F0F63E @ case 4
	.4byte _08F0F654 @ case 5
	.4byte _08F0F66A @ case 6
	.4byte _08F0F678 @ case 7
	.4byte _08F0F698 @ case 8
	.4byte _08F0F6B8 @ case 9
	.4byte _08F0F6D8 @ case 10
	.4byte _08F0F6FE @ case 11
_08F0F5CC:
	ldr r0, _08F0F5D8 @ =gUnknown_03003700
	ldrb r0, [r0]
	bl sub_8F1045C
	b _08F0F720
	.align 2, 0
_08F0F5D8: .4byte gUnknown_03003700
_08F0F5DC:
	ldr r0, _08F0F5EC @ =gUnknown_030036EC
	ldrb r1, [r0]
	cmp r1, #3
	bhi _08F0F5F4
	ldr r1, _08F0F5F0 @ =gUnknown_03003600
	movs r0, #1
	strb r0, [r1]
	b _08F0F720
	.align 2, 0
_08F0F5EC: .4byte gUnknown_030036EC
_08F0F5F0: .4byte gUnknown_03003600
_08F0F5F4:
	ldrb r0, [r0]
	bl sub_8F10490
	b _08F0F720
_08F0F5FC:
	ldr r0, _08F0F608 @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F610
	ldr r1, _08F0F60C @ =gUnknown_08F662C0
	b _08F0F61E
	.align 2, 0
_08F0F608: .4byte gUnknown_030036EC
_08F0F60C: .4byte gUnknown_08F662C0
_08F0F610:
	movs r0, #0xf
	b _08F0F6F6
_08F0F614:
	ldr r4, _08F0F628 @ =gUnknown_030036EC
	ldrb r0, [r4]
	cmp r0, #3
	bhi _08F0F630
	ldr r1, _08F0F62C @ =gUnknown_08F662CA
_08F0F61E:
	movs r0, #0xf
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F628: .4byte gUnknown_030036EC
_08F0F62C: .4byte gUnknown_08F662CA
_08F0F630:
	movs r0, #2
	bl sub_8F0E770
	ldrb r0, [r4]
	bl sub_8F1045C
	b _08F0F720
_08F0F63E:
	movs r0, #0x2d
	bl DrawBattleStatusTextById
	bl sub_8F10130
	cmp r0, #0
	bne _08F0F720
	movs r0, #0x40
	bl DrawBattleStatusTextById
	b _08F0F720
_08F0F654:
	movs r0, #0x2e
	bl DrawBattleStatusTextById
	bl sub_8F10130
	cmp r0, #0
	bne _08F0F720
	movs r0, #0x41
	bl DrawBattleStatusTextById
	b _08F0F720
_08F0F66A:
	ldr r1, _08F0F674 @ =gUnknown_03003600
	movs r0, #2
	strb r0, [r1]
	b _08F0F720
	.align 2, 0
_08F0F674: .4byte gUnknown_03003600
_08F0F678:
	ldr r0, _08F0F68C @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F694
	ldr r1, _08F0F690 @ =gUnknown_08F662C0
	movs r0, #0x16
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F68C: .4byte gUnknown_030036EC
_08F0F690: .4byte gUnknown_08F662C0
_08F0F694:
	movs r0, #0x16
	b _08F0F6F6
_08F0F698:
	ldr r0, _08F0F6AC @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F6B4
	ldr r1, _08F0F6B0 @ =gUnknown_08F662C0
	movs r0, #0x12
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F6AC: .4byte gUnknown_030036EC
_08F0F6B0: .4byte gUnknown_08F662C0
_08F0F6B4:
	movs r0, #0x12
	b _08F0F6F6
_08F0F6B8:
	ldr r0, _08F0F6CC @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F6D4
	ldr r1, _08F0F6D0 @ =gUnknown_08F662C0
	movs r0, #0x3d
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F6CC: .4byte gUnknown_030036EC
_08F0F6D0: .4byte gUnknown_08F662C0
_08F0F6D4:
	movs r0, #0x3d
	b _08F0F6F6
_08F0F6D8:
	ldr r0, _08F0F6EC @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F6F4
	ldr r1, _08F0F6F0 @ =gUnknown_08F662C0
	movs r0, #0x28
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F6EC: .4byte gUnknown_030036EC
_08F0F6F0: .4byte gUnknown_08F662C0
_08F0F6F4:
	movs r0, #0x28
_08F0F6F6:
	movs r1, #3
	bl sub_8F104FC
	b _08F0F720
_08F0F6FE:
	ldr r0, _08F0F710 @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F718
	ldr r1, _08F0F714 @ =gUnknown_08F662E0
	movs r0, #0x2a
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F710: .4byte gUnknown_030036EC
_08F0F714: .4byte gUnknown_08F662E0
_08F0F718:
	movs r0, #0x2a
	movs r1, #3
	bl sub_8F104FC
_08F0F720:
	ldr r1, _08F0F730 @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F730: .4byte gUnknown_03003690

	thumb_func_start sub_8F0F734
sub_8F0F734: @ 0x08F0F734
	push {r4, lr}
	ldr r1, _08F0F798 @ =gUnknown_08F70840
	ldr r0, _08F0F79C @ =gUnknown_03003690
	ldrh r0, [r0]
	adds r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r3, _08F0F7A0 @ =gUnknown_03003688
	lsls r0, r1, #3
	ldr r2, _08F0F7A4 @ =gUnknown_08F5C51C
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
_08F0F798: .4byte gUnknown_08F70840
_08F0F79C: .4byte gUnknown_03003690
_08F0F7A0: .4byte gUnknown_03003688
_08F0F7A4: .4byte gUnknown_08F5C51C
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
	ldr r0, _08F0F7EC @ =gUnknown_03003500
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
_08F0F7EC: .4byte gUnknown_03003500
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

	thumb_func_start sub_8F0F820
sub_8F0F820: @ 0x08F0F820
	push {r4, r5, lr}
	ldr r5, _08F0F878 @ =gUnknown_08F70840
	ldr r4, _08F0F87C @ =gUnknown_03003690
	ldrh r0, [r4]
	adds r0, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	ldr r3, _08F0F880 @ =gUnknown_030036F0
	lsls r1, r0, #3
	ldr r2, _08F0F884 @ =gItemData
	adds r1, r1, r2
	str r1, [r3]
	bl sub_8F11098
	ldr r0, _08F0F888 @ =gUnknown_03003700
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F856
	ldrh r4, [r4]
	adds r1, r4, r5
	movs r0, #0xf
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #1
	bne _08F0F856
	bl sub_8F10398
_08F0F856:
	movs r0, #0x63
	bl DrawBattleStatusTextById
	ldr r4, _08F0F88C @ =gUnknown_03003668
	ldrb r0, [r4]
	bl sub_8F0E770
	movs r0, #0
	strb r0, [r4]
	ldr r1, _08F0F87C @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F878: .4byte gUnknown_08F70840
_08F0F87C: .4byte gUnknown_03003690
_08F0F880: .4byte gUnknown_030036F0
_08F0F884: .4byte gItemData
_08F0F888: .4byte gUnknown_03003700
_08F0F88C: .4byte gUnknown_03003668

	thumb_func_start sub_8F0F890
sub_8F0F890: @ 0x08F0F890
	push {r4, r5, lr}
	ldr r5, _08F0F8CC @ =gUnknown_08F70840
	ldr r4, _08F0F8D0 @ =gUnknown_03003690
	ldrh r0, [r4]
	adds r0, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	ldr r3, _08F0F8D4 @ =gUnknown_030036F0
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
_08F0F8CC: .4byte gUnknown_08F70840
_08F0F8D0: .4byte gUnknown_03003690
_08F0F8D4: .4byte gUnknown_030036F0
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

	thumb_func_start sub_8F0F940
sub_8F0F940: @ 0x08F0F940
	push {r4, lr}
	ldr r0, _08F0F964 @ =gUnknown_08F70840
	ldr r2, _08F0F968 @ =gUnknown_03003690
	ldrh r1, [r2]
	adds r0, r1, r0
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	subs r0, r1, #1
	adds r3, r2, #0
	cmp r0, #5
	bls _08F0F95A
	b _08F0FA80
_08F0F95A:
	lsls r0, r0, #2
	ldr r1, _08F0F96C @ =_08F0F970
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0F964: .4byte gUnknown_08F70840
_08F0F968: .4byte gUnknown_03003690
_08F0F96C: .4byte _08F0F970
_08F0F970: @ jump table
	.4byte _08F0F988 @ case 0
	.4byte _08F0F9DC @ case 1
	.4byte _08F0FA10 @ case 2
	.4byte _08F0FA4C @ case 3
	.4byte _08F0FA5C @ case 4
	.4byte _08F0FA74 @ case 5
_08F0F988:
	ldr r1, _08F0F9C0 @ =gUnknown_03003500
	ldr r0, _08F0F9C4 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r2, r0, r1
	movs r0, #8
	ldrb r4, [r2, #1]
	ands r0, r4
	cmp r0, #0
	beq _08F0F9D0
	adds r4, r1, #0
_08F0F99E:
	bl Random
	lsrs r2, r0, #0x1d
	lsls r0, r2, #5
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0F99E
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	bne _08F0F99E
	ldr r0, _08F0F9C8 @ =gUnknown_030036EC
	strb r2, [r0]
	ldr r3, _08F0F9CC @ =gUnknown_03003690
	b _08F0FA80
	.align 2, 0
_08F0F9C0: .4byte gUnknown_03003500
_08F0F9C4: .4byte gUnknown_03003700
_08F0F9C8: .4byte gUnknown_030036EC
_08F0F9CC: .4byte gUnknown_03003690
_08F0F9D0:
	ldr r1, _08F0F9D8 @ =gUnknown_030036EC
	ldrb r0, [r2, #0x1c]
	strb r0, [r1]
	b _08F0FA80
	.align 2, 0
_08F0F9D8: .4byte gUnknown_030036EC
_08F0F9DC:
	ldr r2, _08F0FA04 @ =gUnknown_03003500
	ldr r0, _08F0FA08 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r1, r0, #5
	adds r1, r1, r2
	movs r0, #8
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F0F9F8
	bl Random
	cmp r0, #0
	blt _08F0FA2C
_08F0F9F8:
	ldr r2, _08F0FA0C @ =gUnknown_030036EC
	ldr r0, _08F0FA08 @ =gUnknown_03003700
	ldrb r0, [r0]
	adds r0, #4
	movs r1, #4
	b _08F0FA34
	.align 2, 0
_08F0FA04: .4byte gUnknown_03003500
_08F0FA08: .4byte gUnknown_03003700
_08F0FA0C: .4byte gUnknown_030036EC
_08F0FA10:
	ldr r2, _08F0FA3C @ =gUnknown_03003500
	ldr r0, _08F0FA40 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r1, r0, #5
	adds r1, r1, r2
	movs r0, #8
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F0FA2C
	bl Random
	cmp r0, #0
	blt _08F0F9F8
_08F0FA2C:
	ldr r2, _08F0FA44 @ =gUnknown_030036EC
	ldr r1, _08F0FA40 @ =gUnknown_03003700
	movs r0, #4
	ldrb r1, [r1]
_08F0FA34:
	ands r0, r1
	strb r0, [r2]
	ldr r3, _08F0FA48 @ =gUnknown_03003690
	b _08F0FA80
	.align 2, 0
_08F0FA3C: .4byte gUnknown_03003500
_08F0FA40: .4byte gUnknown_03003700
_08F0FA44: .4byte gUnknown_030036EC
_08F0FA48: .4byte gUnknown_03003690
_08F0FA4C:
	ldr r0, _08F0FA54 @ =gUnknown_030036EC
	ldr r1, _08F0FA58 @ =gUnknown_03003700
	ldrb r1, [r1]
	b _08F0FA7E
	.align 2, 0
_08F0FA54: .4byte gUnknown_030036EC
_08F0FA58: .4byte gUnknown_03003700
_08F0FA5C:
	ldr r2, _08F0FA6C @ =gUnknown_030036EC
	ldr r1, _08F0FA70 @ =gUnknown_03003700
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	strb r0, [r2]
	b _08F0FA80
	.align 2, 0
_08F0FA6C: .4byte gUnknown_030036EC
_08F0FA70: .4byte gUnknown_03003700
_08F0FA74:
	ldr r0, _08F0FA8C @ =gUnknown_030036EC
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #7
	ands r1, r2
_08F0FA7E:
	strb r1, [r0]
_08F0FA80:
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0FA8C: .4byte gUnknown_030036EC

	thumb_func_start sub_8F0FA90
sub_8F0FA90: @ 0x08F0FA90
	push {r4, r5, r6, lr}
	ldr r2, _08F0FAB8 @ =gUnknown_08F70840
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
_08F0FAB8: .4byte gUnknown_08F70840
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
	ldr r1, _08F0FB0C @ =gUnknown_03003500
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
_08F0FB0C: .4byte gUnknown_03003500
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
	ldr r1, _08F0FB7C @ =gUnknown_03003500
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
_08F0FB7C: .4byte gUnknown_03003500
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
	ldr r4, _08F0FCDC @ =gUnknown_03003500
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
_08F0FCDC: .4byte gUnknown_03003500
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

	thumb_func_start sub_8F0FD24
sub_8F0FD24: @ 0x08F0FD24
	push {lr}
	bl sub_8F0FD64
	cmp r0, #0
	bne _08F0FD34
	bl sub_8F100C8
	b _08F0FD3C
_08F0FD34:
	ldr r1, _08F0FD40 @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
_08F0FD3C:
	pop {r0}
	bx r0
	.align 2, 0
_08F0FD40: .4byte gUnknown_03003690

	thumb_func_start sub_8F0FD44
sub_8F0FD44: @ 0x08F0FD44
	push {lr}
	bl sub_8F0FD64
	cmp r0, #0
	beq _08F0FD54
	bl sub_8F100C8
	b _08F0FD5C
_08F0FD54:
	ldr r1, _08F0FD60 @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
_08F0FD5C:
	pop {r0}
	bx r0
	.align 2, 0
_08F0FD60: .4byte gUnknown_03003690

	thumb_func_start sub_8F0FD64
sub_8F0FD64: @ 0x08F0FD64
	push {r4, r5, lr}
	ldr r0, _08F0FD84 @ =gUnknown_08F70840
	ldr r1, _08F0FD88 @ =gUnknown_03003690
	ldrh r1, [r1]
	adds r0, r1, r0
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0xd
	bls _08F0FD7A
	b _08F10058
_08F0FD7A:
	lsls r0, r1, #2
	ldr r1, _08F0FD8C @ =_08F0FD90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0FD84: .4byte gUnknown_08F70840
_08F0FD88: .4byte gUnknown_03003690
_08F0FD8C: .4byte _08F0FD90
_08F0FD90: @ jump table
	.4byte _08F0FDC8 @ case 0
	.4byte _08F0FE08 @ case 1
	.4byte _08F0FE74 @ case 2
	.4byte _08F0FEC4 @ case 3
	.4byte _08F0FEE4 @ case 4
	.4byte _08F0FF00 @ case 5
	.4byte _08F0FF44 @ case 6
	.4byte _08F0FF70 @ case 7
	.4byte _08F0FF94 @ case 8
	.4byte _08F0FF9C @ case 9
	.4byte _08F0FFEE @ case 10
	.4byte _08F10010 @ case 11
	.4byte _08F10020 @ case 12
	.4byte _08F10040 @ case 13
_08F0FDC8:
	ldr r3, _08F0FDFC @ =gUnknown_03003500
	ldr r0, _08F0FE00 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0FDDA
	b _08F10058
_08F0FDDA:
	movs r2, #0x80
	adds r0, r2, #0
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F0FDE8
	b _08F10058
_08F0FDE8:
	ldr r0, _08F0FE04 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0FDF8
	b _08F10058
_08F0FDF8:
	adds r0, r2, #0
	b _08F0FF58
	.align 2, 0
_08F0FDFC: .4byte gUnknown_03003500
_08F0FE00: .4byte gUnknown_03003700
_08F0FE04: .4byte gUnknown_030036EC
_08F0FE08:
	ldr r0, _08F0FE5C @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0FE12
	b _08F0FF40
_08F0FE12:
	ldr r2, _08F0FE60 @ =gUnknown_03003500
	ldr r0, _08F0FE64 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r1, r0, r2
	movs r0, #0x70
	ldrb r3, [r1, #1]
	ands r0, r3
	cmp r0, #0
	beq _08F0FE28
	b _08F0FF40
_08F0FE28:
	movs r0, #0x80
	ldrb r3, [r1, #0x1e]
	ands r0, r3
	cmp r0, #0
	beq _08F0FE34
	b _08F0FF40
_08F0FE34:
	ldr r5, _08F0FE68 @ =gUnknown_0300365C
	ldrb r0, [r1, #0xb]
	strb r0, [r5]
	ldr r4, _08F0FE6C @ =gUnknown_03003660
	ldr r0, _08F0FE70 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xb]
	strb r0, [r4]
	bl sub_8F10064
	movs r2, #0
	ldrb r5, [r5]
	ldrb r4, [r4]
	cmp r5, r4
	bhs _08F0FE58
	b _08F1005A
_08F0FE58:
	b _08F10058
	.align 2, 0
_08F0FE5C: .4byte gUnknown_0300317C
_08F0FE60: .4byte gUnknown_03003500
_08F0FE64: .4byte gUnknown_030036EC
_08F0FE68: .4byte gUnknown_0300365C
_08F0FE6C: .4byte gUnknown_03003660
_08F0FE70: .4byte gUnknown_03003700
_08F0FE74:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F0FE7E
	b _08F10058
_08F0FE7E:
	ldr r5, _08F0FEB0 @ =gUnknown_0300365C
	ldr r1, _08F0FEB4 @ =gUnknown_03003500
	ldr r0, _08F0FEB8 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0xb]
	strb r0, [r5]
	ldr r4, _08F0FEBC @ =gUnknown_03003660
	ldr r0, _08F0FEC0 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0xb]
	strb r0, [r4]
	bl sub_8F10064
	movs r2, #0
	ldrb r4, [r4]
	ldrb r5, [r5]
	cmp r4, r5
	bhs _08F0FEAC
	b _08F1005A
_08F0FEAC:
	b _08F10058
	.align 2, 0
_08F0FEB0: .4byte gUnknown_0300365C
_08F0FEB4: .4byte gUnknown_03003500
_08F0FEB8: .4byte gUnknown_03003700
_08F0FEBC: .4byte gUnknown_03003660
_08F0FEC0: .4byte gUnknown_030036EC
_08F0FEC4:
	ldr r2, _08F0FEDC @ =gUnknown_03003500
	ldr r0, _08F0FEE0 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r1, r0, #5
	adds r1, r1, r2
	movs r0, #0x80
	ldrb r1, [r1, #0x1e]
	ands r0, r1
	cmp r0, #0
	bne _08F0FEDA
	b _08F10058
_08F0FEDA:
	b _08F0FF94
	.align 2, 0
_08F0FEDC: .4byte gUnknown_03003500
_08F0FEE0: .4byte gUnknown_03003700
_08F0FEE4:
	ldr r0, _08F0FEF8 @ =gUnknown_03003700
	movs r2, #1
	ldrb r0, [r0]
	cmp r0, #3
	bls _08F0FEF0
	b _08F1005A
_08F0FEF0:
	ldr r0, _08F0FEFC @ =gUnknown_0300317C
	ldrb r0, [r0]
	b _08F10016
	.align 2, 0
_08F0FEF8: .4byte gUnknown_03003700
_08F0FEFC: .4byte gUnknown_0300317C
_08F0FF00:
	movs r2, #1
	ldr r0, _08F0FF20 @ =gUnknown_030036EC
	ldrb r1, [r0]
	cmp r1, #3
	bls _08F0FF0C
	b _08F1005A
_08F0FF0C:
	ldr r1, _08F0FF24 @ =gUnknown_03003500
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F0FF28 @ =gUnknown_030031F0
	adds r1, r1, r0
	movs r0, #0
	b _08F0FF3A
	.align 2, 0
_08F0FF20: .4byte gUnknown_030036EC
_08F0FF24: .4byte gUnknown_03003500
_08F0FF28: .4byte gUnknown_030031F0
_08F0FF2C:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #1
	cmp r0, #7
	bls _08F0FF3A
	b _08F1005A
_08F0FF3A:
	ldrb r3, [r1]
	cmp r3, #0x68
	bne _08F0FF2C
_08F0FF40:
	movs r2, #0
	b _08F1005A
_08F0FF44:
	ldr r1, _08F0FF68 @ =gUnknown_03003500
	ldr r0, _08F0FF6C @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0FF56
	b _08F10058
_08F0FF56:
	movs r0, #0x80
_08F0FF58:
	ldrb r1, [r1, #1]
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
	b _08F1005A
	.align 2, 0
_08F0FF68: .4byte gUnknown_03003500
_08F0FF6C: .4byte gUnknown_030036EC
_08F0FF70:
	ldr r1, _08F0FF8C @ =gUnknown_03003500
	ldr r0, _08F0FF90 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r1, [r0, #0xa]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08F10058
	movs r0, #1
	ands r0, r1
	b _08F10014
	.align 2, 0
_08F0FF8C: .4byte gUnknown_03003500
_08F0FF90: .4byte gUnknown_030036EC
_08F0FF94:
	bl Random
	lsrs r2, r0, #0x1f
	b _08F1005A
_08F0FF9C:
	ldr r0, _08F0FFD4 @ =gUnknown_03003500
	ldr r1, _08F0FFD8 @ =gUnknown_03003700
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r1, r1, r0
	adds r3, r0, #0
	ldr r2, _08F0FFDC @ =gUnknown_030036EC
	ldrb r1, [r1, #0x1d]
	cmp r1, #0x60
	bne _08F0FFE4
	ldrb r1, [r2]
	lsls r0, r1, #5
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0FFC6
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F0FFE4
_08F0FFC6:
	ldr r1, _08F0FFE0 @ =gUnknown_03003604
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x11
	bl DrawBattleStatusTextById
	b _08F10058
	.align 2, 0
_08F0FFD4: .4byte gUnknown_03003500
_08F0FFD8: .4byte gUnknown_03003700
_08F0FFDC: .4byte gUnknown_030036EC
_08F0FFE0: .4byte gUnknown_03003604
_08F0FFE4:
	ldrb r2, [r2]
	lsls r0, r2, #5
	adds r0, r0, r3
	movs r1, #0x80
	b _08F0FFFA
_08F0FFEE:
	ldr r1, _08F10008 @ =gUnknown_03003500
	ldr r0, _08F1000C @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #4
_08F0FFFA:
	ldrb r0, [r0, #0xa]
	ands r1, r0
	movs r2, #1
	cmp r1, #0
	beq _08F1005A
	b _08F0FF40
	.align 2, 0
_08F10008: .4byte gUnknown_03003500
_08F1000C: .4byte gUnknown_030036EC
_08F10010:
	ldr r0, _08F1001C @ =gUnknown_030034F8
	ldrb r0, [r0]
_08F10014:
	movs r2, #1
_08F10016:
	cmp r0, #0
	beq _08F1005A
	b _08F0FF40
	.align 2, 0
_08F1001C: .4byte gUnknown_030034F8
_08F10020:
	ldr r0, _08F10038 @ =gUnknown_030036EC
	movs r2, #1
	ldrb r3, [r0]
	cmp r3, #3
	bhi _08F1005A
	ldr r1, _08F1003C @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	cmp r0, #4
	bls _08F1005A
	b _08F0FF40
	.align 2, 0
_08F10038: .4byte gUnknown_030036EC
_08F1003C: .4byte gUnknown_03003500
_08F10040:
	ldr r0, _08F10054 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #1
	cmp r0, #1
	bhi _08F1005A
	b _08F0FF40
	.align 2, 0
_08F10054: .4byte gEnemyGroupSpecialEncounter
_08F10058:
	movs r2, #1
_08F1005A:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F10064
sub_8F10064: @ 0x08F10064
	push {r4, lr}
	ldr r2, _08F10094 @ =gUnknown_0300365C
	ldr r4, _08F10098 @ =gUnknown_03003660
	ldr r0, _08F1009C @ =0xFFFFFF00
	ldrb r1, [r4]
	orrs r0, r1
	ldrb r1, [r2]
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, #0x66
	cmp r0, #0
	bge _08F10082
	movs r0, #0
_08F10082:
	strb r0, [r2]
	bl Random
	lsrs r0, r0, #0x18
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F10094: .4byte gUnknown_0300365C
_08F10098: .4byte gUnknown_03003660
_08F1009C: .4byte 0xFFFFFF00

	thumb_func_start sub_8F100A0
sub_8F100A0: @ 0x08F100A0
	push {r4, r5, lr}
	ldr r5, _08F100B8 @ =gUnknown_03003690
	ldrh r4, [r5]
	bl sub_8F100C8
	bl sub_8F0F514
	adds r4, #3
	strh r4, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F100B8: .4byte gUnknown_03003690

	thumb_func_start sub_8F100BC
sub_8F100BC: @ 0x08F100BC
	push {lr}
	bl sub_8F100C8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F100C8
sub_8F100C8: @ 0x08F100C8
	ldr r2, _08F100E8 @ =gUnknown_08F70840
	ldr r3, _08F100EC @ =gUnknown_03003690
	ldrh r0, [r3]
	adds r1, r0, #1
	adds r1, r1, r2
	adds r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrb r1, [r1]
	orrs r0, r1
	ldr r1, _08F100F0 @ =0x00006805
	adds r0, r0, r1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08F100E8: .4byte gUnknown_08F70840
_08F100EC: .4byte gUnknown_03003690
_08F100F0: .4byte 0x00006805

	thumb_func_start sub_8F100F4
sub_8F100F4: @ 0x08F100F4
	push {r4, r5, r6, lr}
	ldr r0, _08F10128 @ =gUnknown_08F70840
	ldr r2, _08F1012C @ =gUnknown_03003690
	ldrh r1, [r2]
	adds r0, r1, r0
	movs r4, #0xf
	ldrb r0, [r0]
	ands r4, r0
	adds r1, #1
	strh r1, [r2]
	ldrh r6, [r2]
	adds r5, r2, #0
_08F1010C:
	bl sub_8F0F514
	ldrh r1, [r5]
	strh r6, [r5]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08F1010C
	ldr r0, _08F1012C @ =gUnknown_03003690
	strh r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F10128: .4byte gUnknown_08F70840
_08F1012C: .4byte gUnknown_03003690

	thumb_func_start sub_8F10130
sub_8F10130: @ 0x08F10130
	push {r4, r5, r6, lr}
	movs r2, #4
	ldr r6, _08F1015C @ =gUnknown_03003700
	ldrb r3, [r6]
	movs r4, #1
_08F1013A:
	cmp r2, r3
	beq _08F1014E
	ldr r5, _08F10160 @ =gUnknown_03003500
	lsls r1, r2, #5
	adds r1, r1, r5
	adds r0, r4, #0
	ldrb r1, [r1, #0x1e]
	ands r0, r1
	cmp r0, #0
	bne _08F10164
_08F1014E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F1013A
	movs r0, #0
	b _08F1019E
	.align 2, 0
_08F1015C: .4byte gUnknown_03003700
_08F10160: .4byte gUnknown_03003500
_08F10164:
	ldr r4, _08F101A4 @ =gUnknown_030036EC
	strb r2, [r4]
	ldrb r0, [r4]
	bl sub_8F1045C
	ldrb r0, [r4]
	lsls r1, r0, #5
	adds r1, r1, r5
	movs r0, #0xfe
	ldrb r2, [r1, #0x1e]
	ands r0, r2
	movs r2, #0
	strb r0, [r1, #0x1e]
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r0, r0, r5
	strb r2, [r0, #0x1d]
	ldrb r4, [r4]
	lsls r1, r4, #5
	adds r1, r1, r5
	ldrb r6, [r6]
	lsls r0, r6, #5
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0x42
	bl DrawBattleStatusTextById
	movs r0, #1
_08F1019E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08F101A4: .4byte gUnknown_030036EC

	thumb_func_start CanUsePsi
CanUsePsi: @ 0x08F101A8
	ldr r2, _08F101C0 @ =gUnknown_03003500
	ldr r0, _08F101C4 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r1, r0, #5
	adds r1, r1, r2
	movs r0, #0x40
	ldrb r1, [r1, #0x1e]
	ands r0, r1
	cmp r0, #0
	bne _08F101C8
	movs r0, #1
	b _08F101CA
	.align 2, 0
_08F101C0: .4byte gUnknown_03003500
_08F101C4: .4byte gUnknown_03003700
_08F101C8:
	movs r0, #0
_08F101CA:
	bx lr

	thumb_func_start AttackerHasEnoughPP
AttackerHasEnoughPP: @ 0x08F101CC
	ldr r1, _08F101E4 @ =gUnknown_03003500
	ldr r0, _08F101E8 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _08F101EC @ =gActionPpRequired
	ldrh r0, [r0, #4]
	ldrh r1, [r1]
	cmp r0, r1
	blo _08F101F0
	movs r0, #1
	b _08F101F2
	.align 2, 0
_08F101E4: .4byte gUnknown_03003500
_08F101E8: .4byte gUnknown_03003700
_08F101EC: .4byte gActionPpRequired
_08F101F0:
	movs r0, #0
_08F101F2:
	bx lr

	thumb_func_start sub_8F101F4
sub_8F101F4: @ 0x08F101F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08F10224 @ =gUnknown_03003500
	lsls r0, r7, #5
	adds r1, r0, r1
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08F102F6
	movs r0, #0
	strh r0, [r1, #2]
	cmp r7, #3
	bhi _08F1022C
	ldrb r1, [r1, #0x18]
	cmp r1, #5
	bne _08F1024C
	ldr r1, _08F10228 @ =gEnemyGroupSpecialEncounter
	strb r0, [r1]
	movs r0, #0x88
	b _08F10256
	.align 2, 0
_08F10224: .4byte gUnknown_03003500
_08F10228: .4byte gEnemyGroupSpecialEncounter
_08F1022C:
	ldrb r1, [r1, #0x18]
	lsls r0, r1, #5
	ldr r1, _08F10244 @ =gEnemyData+7
	adds r0, r0, r1
	movs r1, #0x1c
	ldrb r0, [r0]
	ands r1, r0
	lsrs r1, r1, #2
	cmp r1, #1
	bne _08F10248
	movs r0, #0x19
	b _08F10256
	.align 2, 0
_08F10244: .4byte gEnemyData+7
_08F10248:
	cmp r1, #2
	beq _08F10254
_08F1024C:
	adds r0, r7, #0
	bl Maybe_WinBattle
	b _08F10296
_08F10254:
	movs r0, #0x1a
_08F10256:
	ldr r6, _08F102B8 @ =gUnknown_030036EC
	ldrb r1, [r6]
	mov sl, r1
	ldr r5, _08F102BC @ =gUnknown_03003700
	ldrb r1, [r5]
	mov sb, r1
	ldr r4, _08F102C0 @ =gUnknown_03003690
	ldrh r1, [r4]
	mov r8, r1
	strb r7, [r5]
	ldr r2, _08F102C4 @ =gUnknown_08F70840
	lsls r0, r0, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	strh r1, [r4]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08F102C8 @ =0x00006805
	adds r1, r1, r0
	strh r1, [r4]
	bl sub_8F0F514
	mov r1, sl
	strb r1, [r6]
	mov r0, sb
	strb r0, [r5]
	mov r1, r8
	strh r1, [r4]
	ldrb r7, [r6]
_08F10296:
	ldr r0, _08F102B8 @ =gUnknown_030036EC
	ldrb r1, [r0]
	mov sl, r1
	strb r7, [r0]
	cmp r7, #3
	bhi _08F102D0
	ldr r1, _08F102CC @ =gUnknown_03003500
	lsls r0, r7, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	cmp r0, #5
	beq _08F102F0
	movs r0, #0x10
	bl DrawBattleStatusTextById
	b _08F102F0
	.align 2, 0
_08F102B8: .4byte gUnknown_030036EC
_08F102BC: .4byte gUnknown_03003700
_08F102C0: .4byte gUnknown_03003690
_08F102C4: .4byte gUnknown_08F70840
_08F102C8: .4byte 0x00006805
_08F102CC: .4byte gUnknown_03003500
_08F102D0:
	ldr r0, _08F10304 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #6
	beq _08F102F0
	ldr r1, _08F10308 @ =gUnknown_03003500
	lsls r0, r7, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	ldr r1, _08F1030C @ =gEnemyData+9
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #2
	adds r0, #0x79
	bl DrawBattleStatusTextById
_08F102F0:
	ldr r0, _08F10310 @ =gUnknown_030036EC
	mov r1, sl
	strb r1, [r0]
_08F102F6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F10304: .4byte gEnemyGroupSpecialEncounter
_08F10308: .4byte gUnknown_03003500
_08F1030C: .4byte gEnemyData+9
_08F10310: .4byte gUnknown_030036EC

	thumb_func_start Maybe_WinBattle
Maybe_WinBattle: @ 0x08F10314
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	ldr r1, _08F10374 @ =gUnknown_03003500
	lsls r0, r5, #5
	adds r4, r0, r1
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #0x80
	strb r0, [r4, #1]
	cmp r5, #3
	bls _08F10388
	movs r0, #0
	strb r0, [r4]
	ldr r3, _08F10378 @ =gExperiencePointsGained
	ldr r2, _08F1037C @ =gEnemyData
	ldrb r0, [r4, #0x18]
	lsls r1, r0, #5
	adds r1, r1, r2
	ldr r0, [r3]
	ldrh r1, [r1, #0x1a]
	adds r0, r1, r0
	str r0, [r3]
	ldr r1, _08F10380 @ =gMoneyGained
	ldrb r3, [r4, #0x18]
	lsls r0, r3, #5
	adds r0, r0, r2
	ldrh r3, [r1]
	ldrh r0, [r0, #0x1c]
	adds r0, r3, r0
	strh r0, [r1]
	ldrb r4, [r4, #0x18]
	lsls r0, r4, #5
	adds r0, r0, r2
	ldrb r1, [r0, #0x1e]
	cmp r1, #0
	beq _08F10364
	ldr r0, _08F10384 @ =gLastItemDropped
	strb r1, [r0]
_08F10364:
	movs r0, #6
	bl PlaySfxById0
	adds r0, r5, #0
	bl sub_8F10490
	b _08F1038E
	.align 2, 0
_08F10374: .4byte gUnknown_03003500
_08F10378: .4byte gExperiencePointsGained
_08F1037C: .4byte gEnemyData
_08F10380: .4byte gMoneyGained
_08F10384: .4byte gLastItemDropped
_08F10388:
	movs r0, #0x15
	bl sub_8F0E770
_08F1038E:
	bl sub_8F0EA98
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8F10398
sub_8F10398: @ 0x08F10398
	push {lr}
	ldr r1, _08F103B8 @ =gUnknown_03003500
	ldr r0, _08F103BC @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r2, r0, #5
	adds r2, r2, r1
	ldrb r1, [r2, #0x18]
	lsls r0, r1, #6
	ldr r1, _08F103C0 @ =gUnknown_030031F0
	adds r0, r0, r1
	ldrb r1, [r2, #0x19]
	ldrb r2, [r2, #0x1b]
	bl sub_8F103C4
	pop {r0}
	bx r0
	.align 2, 0
_08F103B8: .4byte gUnknown_03003500
_08F103BC: .4byte gUnknown_03003700
_08F103C0: .4byte gUnknown_030031F0

	thumb_func_start sub_8F103C4
sub_8F103C4: @ 0x08F103C4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r1, r2, #3
	ldr r0, _08F10400 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x80
	ldrb r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	bne _08F1041A
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, r2
	beq _08F10410
	movs r3, #0
_08F103EA:
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, r2
	beq _08F10410
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08F103EA
	b _08F1041A
	.align 2, 0
_08F10400: .4byte gItemData
_08F10404:
	adds r1, r4, r3
	ldrb r0, [r1, #1]
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08F10410:
	cmp r3, #6
	bls _08F10404
	adds r1, r4, r3
	movs r0, #0
	strb r0, [r1]
_08F1041A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8F10420
sub_8F10420: @ 0x08F10420
	lsls r0, r0, #0x18
	ldr r3, _08F10448 @ =gMiscContainer
	ldr r1, _08F1044C @ =gUnknown_03003500
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldrb r2, [r0, #0x18]
	lsls r1, r2, #5
	ldr r2, _08F10450 @ =gEnemyData
	adds r1, r1, r2
	str r1, [r3]
	ldr r2, _08F10454 @ =gUnknown_03003684
	movs r1, #3
	ldrb r0, [r0, #0x1a]
	ands r1, r0
	strb r1, [r2]
	ldr r0, _08F10458 @ =gUnknown_030034F4
	lsls r1, r1, #3
	strb r1, [r0]
	bx lr
	.align 2, 0
_08F10448: .4byte gMiscContainer
_08F1044C: .4byte gUnknown_03003500
_08F10450: .4byte gEnemyData
_08F10454: .4byte gUnknown_03003684
_08F10458: .4byte gUnknown_030034F4

	thumb_func_start sub_8F1045C
sub_8F1045C: @ 0x08F1045C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_8F10420
	ldr r0, _08F1048C @ =gUnknown_03003500
	lsls r1, r4, #5
	adds r1, r1, r0
	movs r0, #0x7f
	ldrb r2, [r1, #1]
	ands r0, r2
	strb r0, [r1, #1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_8F0F014
	adds r0, r4, #0
	bl sub_8F0EE8C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F1048C: .4byte gUnknown_03003500

	thumb_func_start sub_8F10490
sub_8F10490: @ 0x08F10490
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_8F10420
	ldr r0, _08F104E8 @ =gUnknown_03003500
	lsls r6, r4, #5
	adds r6, r6, r0
	movs r5, #0
	strb r5, [r6]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8F0F014
	adds r0, r4, #0
	bl sub_8F0EF4C
	ldr r0, _08F104EC @ =gUnknown_030036C0
	subs r4, #4
	lsls r4, r4, #3
	adds r4, r4, r0
	strb r5, [r4]
	str r5, [sp]
	ldr r2, _08F104F0 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	movs r0, #3
	ldrb r6, [r6, #0x1a]
	ands r0, r6
	lsls r0, r0, #0xb
	ldr r1, _08F104F4 @ =0x0600E000
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08F104F8 @ =0x85000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F104E8: .4byte gUnknown_03003500
_08F104EC: .4byte gUnknown_030036C0
_08F104F0: .4byte 0x040000D4
_08F104F4: .4byte 0x0600E000
_08F104F8: .4byte 0x85000200

	thumb_func_start sub_8F104FC
sub_8F104FC: @ 0x08F104FC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r0, #2
	bl sub_8F0E770
	ldr r4, _08F10544 @ =gUnknown_030036EC
	ldrb r0, [r4]
	bl sub_8F10420
_08F10514:
	ldrb r0, [r4]
	bl sub_8F0EF4C
	adds r0, r6, #0
	bl sub_8F0EA18
	bl sub_8F0E7F0
	ldrb r0, [r4]
	bl sub_8F0EE8C
	movs r0, #0xf
	bl sub_8F0EA18
	bl sub_8F0E7F0
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08F10514
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F10544: .4byte gUnknown_030036EC

	thumb_func_start sub_8F10548
sub_8F10548: @ 0x08F10548
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #0x10
	bl sub_8F0E770
	ldrb r1, [r5]
	adds r5, #1
	ldrb r7, [r5]
	adds r5, #1
	ldr r0, _08F10584 @ =0x04000012
	mov sl, r0
	subs r0, #2
	mov sb, r0
_08F10570:
	movs r4, #0
	subs r6, r1, #1
_08F10574:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08F10588
	mov r0, r8
	bl sub_8F0EA18
	b _08F1058E
	.align 2, 0
_08F10584: .4byte 0x04000012
_08F10588:
	movs r0, #0xf
	bl sub_8F0EA18
_08F1058E:
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r4, #0
	adds r1, r5, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r1, sl
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, r2
	movs r0, #0
	ldrsb r0, [r2, r0]
	mov r1, sb
	strh r0, [r1]
	bl sub_8F0E7F0
	cmp r4, r7
	blo _08F10574
	lsls r0, r6, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08F10570
	ldr r0, _08F105E0 @ =0x04000012
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	movs r0, #0xf
	bl sub_8F0EA18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F105E0: .4byte 0x04000012

	thumb_func_start sub_8F105E4
sub_8F105E4: @ 0x08F105E4
	push {r4, r5, r6, lr}
	ldr r1, _08F10610 @ =gUnknown_03003600
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r1, #0
	cmp r0, #1
	bhi _08F105F8
	b _08F10720
_08F105F8:
	ldr r0, _08F10614 @ =gUnknown_0300362C
	ldrb r0, [r0]
	cmp r0, #1
	bne _08F10624
	ldr r0, _08F10618 @ =gEnemyGroupSpecialEncounter
	ldrb r1, [r0]
	cmp r1, #4
	bne _08F10624
	ldr r0, _08F1061C @ =gUnknown_03003700
	strb r1, [r0]
	ldr r1, _08F10620 @ =gUnknown_03003500
	b _08F10650
	.align 2, 0
_08F10610: .4byte gUnknown_03003600
_08F10614: .4byte gUnknown_0300362C
_08F10618: .4byte gEnemyGroupSpecialEncounter
_08F1061C: .4byte gUnknown_03003700
_08F10620: .4byte gUnknown_03003500
_08F10624:
	movs r3, #0
	ldr r4, _08F1067C @ =gUnknown_03003500
	adds r1, r4, #0
	movs r5, #0xe0
_08F1062C:
	lsls r0, r3, #5
	adds r2, r0, r4
	ldrb r0, [r2]
	cmp r0, #0
	beq _08F10646
	ldrb r0, [r2, #0x18]
	cmp r0, #4
	bhi _08F10646
	adds r0, r5, #0
	ldrb r2, [r2, #1]
	ands r0, r2
	cmp r0, #0
	beq _08F10698
_08F10646:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F1062C
_08F10650:
	movs r0, #0x80
	strb r0, [r1, #1]
	adds r2, r1, #0
	adds r2, #0x21
	strb r0, [r2]
	adds r2, #0x20
	strb r0, [r2]
	adds r1, #0x61
	strb r0, [r1]
	ldr r0, _08F10680 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #4
	bne _08F10684
	movs r0, #3
	strb r0, [r6]
	movs r0, #4
	bl sub_8F0E770
	movs r0, #0x8f
	bl DrawBattleStatusTextById
	b _08F10720
	.align 2, 0
_08F1067C: .4byte gUnknown_03003500
_08F10680: .4byte gEnemyGroupSpecialEncounter
_08F10684:
	ldr r1, _08F10694 @ =gUnknown_03003700
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xe
	bl DrawBattleStatusTextById
	b _08F10720
	.align 2, 0
_08F10694: .4byte gUnknown_03003700
_08F10698:
	adds r1, r4, #0
	adds r1, #0x80
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r5, [r1]
	ldrb r0, [r0]
	orrs r5, r0
	adds r0, r4, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	orrs r5, r0
	adds r0, r4, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	orrs r5, r0
	cmp r5, #0
	bne _08F1070E
	ldr r0, _08F106F4 @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F106C8
	movs r0, #0x31
	bl DrawBattleStatusTextById
_08F106C8:
	ldr r0, _08F106F8 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #6
	bne _08F10700
	ldr r4, _08F106FC @ =gUnknown_030036EC
	strb r5, [r4]
	bl sub_8F11C34
	movs r0, #1
	strb r0, [r4]
	bl sub_8F11C34
	movs r0, #2
	strb r0, [r4]
	bl sub_8F11C34
	movs r0, #3
	strb r0, [r4]
	bl sub_8F11C34
	b _08F10720
	.align 2, 0
_08F106F4: .4byte gUnknown_0300317C
_08F106F8: .4byte gEnemyGroupSpecialEncounter
_08F106FC: .4byte gUnknown_030036EC
_08F10700:
	movs r0, #5
	bl ChangeBgMusic
	movs r0, #0xd
	bl DrawBattleStatusTextById
	b _08F10720
_08F1070E:
	ldr r0, _08F10724 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	bne _08F10728
	movs r0, #0
	bl sub_8F0EAAC
	cmp r0, #0
	bne _08F10728
_08F10720:
	movs r0, #1
	b _08F1072A
	.align 2, 0
_08F10724: .4byte gEnemyGroupSpecialEncounter
_08F10728:
	movs r0, #0
_08F1072A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8F10730
sub_8F10730: @ 0x08F10730
	push {r4, r5, r6, lr}
	ldr r1, _08F1079C @ =gUnknown_03003700
	movs r0, #0
	strb r0, [r1]
	ldr r6, _08F107A0 @ =gUnknown_03003500
	adds r5, r1, #0
_08F1073C:
	ldrb r1, [r5]
	lsls r0, r1, #5
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0, #0x1d]
	ldrb r2, [r5]
	lsls r1, r2, #5
	adds r1, r1, r6
	movs r0, #0xf7
	ldrb r3, [r1, #0x1e]
	ands r0, r3
	strb r0, [r1, #0x1e]
	ldrb r2, [r5]
	lsls r0, r2, #5
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F107C4
	movs r0, #0xf4
	ldrb r3, [r1, #1]
	ands r0, r3
	cmp r0, #0
	bne _08F107C4
	movs r0, #0x20
	ldrb r3, [r1, #0x1e]
	ands r0, r3
	cmp r0, #0
	bne _08F107C4
	ldr r4, _08F107A4 @ =gUnknown_030036E8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F107A8
	cmp r2, #3
	bhi _08F107A8
	ldrb r1, [r1, #0x18]
	cmp r1, #4
	bhi _08F107A8
	bl sub_8F10C08
	cmp r0, #0
	bne _08F1073C
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F107AC
	bl sub_8F107D8
	b _08F107AC
	.align 2, 0
_08F1079C: .4byte gUnknown_03003700
_08F107A0: .4byte gUnknown_03003500
_08F107A4: .4byte gUnknown_030036E8
_08F107A8:
	bl sub_8F107D8
_08F107AC:
	ldrb r1, [r5]
	lsls r0, r1, #5
	adds r1, r0, r6
	ldrb r0, [r1, #0x1d]
	cmp r0, #0x53
	beq _08F107BC
	cmp r0, #0x59
	bne _08F107C4
_08F107BC:
	movs r0, #8
	ldrb r2, [r1, #0x1e]
	orrs r0, r2
	strb r0, [r1, #0x1e]
_08F107C4:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08F1073C
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8F107D8
sub_8F107D8: @ 0x08F107D8
	push {r4, r5, r6, r7, lr}
	ldr r4, _08F10884 @ =gUnknown_03003700
	ldrb r0, [r4]
	cmp r0, #3
	bls _08F107E4
	b _08F10A14
_08F107E4:
	ldr r1, _08F10888 @ =gUnknown_030036EC
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08F1088C @ =gUnknown_03003500
	adds r4, r1, #0
_08F107EE:
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F1080C
	ldrb r2, [r1, #0x18]
	cmp r2, #4
	bhi _08F1080C
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F1080C
	b _08F109F6
_08F1080C:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08F107EE
_08F1081A:
	ldr r1, _08F10888 @ =gUnknown_030036EC
	movs r0, #0
	strb r0, [r1]
	ldr r7, _08F1088C @ =gUnknown_03003500
	adds r6, r1, #0
_08F10824:
	ldrb r1, [r1]
	lsls r0, r1, #5
	adds r2, r0, r7
	ldrb r0, [r2]
	cmp r0, #0
	beq _08F10890
	movs r0, #0x80
	ldrb r3, [r2, #1]
	ands r0, r3
	cmp r0, #0
	bne _08F10890
	ldrb r2, [r2, #0x18]
	cmp r2, #4
	bhi _08F10890
	adds r0, r1, #0
	bl sub_8F0EAAC
	cmp r0, #0
	bne _08F10890
	movs r4, #0
	movs r5, #0
_08F1084E:
	lsls r0, r4, #5
	adds r1, r0, r7
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F10874
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	bne _08F10874
	adds r0, r4, #0
	bl sub_8F0EAAC
	cmp r0, #0
	bne _08F10874
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	strb r4, [r6]
_08F10874:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08F1084E
	cmp r5, #1
	bhi _08F10924
	b _08F1093C
	.align 2, 0
_08F10884: .4byte gUnknown_03003700
_08F10888: .4byte gUnknown_030036EC
_08F1088C: .4byte gUnknown_03003500
_08F10890:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08F10918 @ =gUnknown_030036EC
	cmp r0, #3
	bls _08F10824
_08F108A0:
	ldr r1, _08F10918 @ =gUnknown_030036EC
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08F1091C @ =gUnknown_03003500
_08F108A8:
	ldrb r2, [r1]
	lsls r0, r2, #5
	adds r3, r0, r4
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F108CC
	ldrb r0, [r3, #0x18]
	cmp r0, #4
	bhi _08F108CC
	ldrb r2, [r3, #1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08F108CC
	movs r0, #0x70
	ands r0, r2
	cmp r0, #0
	bne _08F109B4
_08F108CC:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08F108A8
_08F108DA:
	ldr r2, _08F1091C @ =gUnknown_03003500
	ldr r0, _08F10920 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0x1d]
	adds r5, r2, #0
_08F108EA:
	bl Random
	lsrs r0, r0, #0x1e
	adds r0, #4
	adds r4, r0, #0
	lsls r0, r4, #5
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F108EA
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	bne _08F108EA
	ldr r1, _08F1091C @ =gUnknown_03003500
	ldr r0, _08F10920 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	strb r4, [r0, #0x1c]
	b _08F10B06
	.align 2, 0
_08F10918: .4byte gUnknown_030036EC
_08F1091C: .4byte gUnknown_03003500
_08F10920: .4byte gUnknown_03003700
_08F10924:
	movs r0, #0xc
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F10930
	b _08F10B06
_08F10930:
	movs r0, #0xb
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F1093C
	b _08F10B06
_08F1093C:
	movs r0, #0xa
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F10948
	b _08F10AF6
_08F10948:
	movs r0, #9
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F10954
	b _08F10AF6
_08F10954:
	movs r0, #8
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F10960
	b _08F10AF6
_08F10960:
	ldr r4, _08F109A0 @ =gUnknown_03003700
	ldrb r0, [r4]
	bl sub_8F1225C
	cmp r0, #0
	bne _08F108A0
	ldr r3, _08F109A4 @ =gBattleItemId
	ldrb r0, [r3]
	cmp r0, #0x43
	beq _08F108A0
	cmp r0, #0x47
	beq _08F108A0
	ldr r2, _08F109A8 @ =gUnknown_03003500
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r0, r0, r2
	ldr r1, _08F109AC @ =gBattleItemInventoryIdx
	ldrb r1, [r1]
	strb r1, [r0, #0x19]
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r0, r0, r2
	ldr r1, _08F109B0 @ =gUnknown_03003694
	ldrb r1, [r1]
	strb r1, [r0, #0x1d]
	ldrb r4, [r4]
	lsls r0, r4, #5
	adds r0, r0, r2
	ldrb r1, [r3]
	strb r1, [r0, #0x1b]
	b _08F10AF6
	.align 2, 0
_08F109A0: .4byte gUnknown_03003700
_08F109A4: .4byte gBattleItemId
_08F109A8: .4byte gUnknown_03003500
_08F109AC: .4byte gBattleItemInventoryIdx
_08F109B0: .4byte gUnknown_03003694
_08F109B4:
	ldrb r5, [r3, #1]
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	bne _08F109D0
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	bne _08F109DC
	movs r0, #0x40
	ands r5, r0
	cmp r5, #0
	bne _08F109E8
	b _08F108DA
_08F109D0:
	movs r0, #0x11
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F109DC
	b _08F10AF6
_08F109DC:
	movs r0, #0x13
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F109E8
	b _08F10AF6
_08F109E8:
	movs r0, #0x12
	bl sub_8F10B1C
	cmp r0, #0
	beq _08F109F4
	b _08F108DA
_08F109F4:
	b _08F10AF6
_08F109F6:
	movs r0, #0x14
	bl sub_8F10B1C
	cmp r0, #0
	beq _08F10A02
	b _08F1081A
_08F10A02:
	ldr r0, _08F10A10 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r5
	ldrb r1, [r4]
	b _08F10B04
	.align 2, 0
_08F10A10: .4byte gUnknown_03003700
_08F10A14:
	bl Random
	ldr r2, _08F10A44 @ =gUnknown_03003500
	ldrb r3, [r4]
	lsls r1, r3, #5
	adds r3, r1, r2
	lsrs r0, r0, #0x1d
	adds r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3, #0x1d]
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0x1d]
	bl sub_8F11230
	cmp r0, #1
	beq _08F10A48
	cmp r0, #2
	beq _08F10A5C
	b _08F10AF6
	.align 2, 0
_08F10A44: .4byte gUnknown_03003500
_08F10A48:
	ldr r4, _08F10A58 @ =gUnknown_030036EC
_08F10A4A:
	bl sub_8F10B94
	ldrb r2, [r4]
	cmp r2, #3
	bls _08F10A4A
	b _08F10AF6
	.align 2, 0
_08F10A58: .4byte gUnknown_030036EC
_08F10A5C:
	ldrb r4, [r4]
	cmp r4, #3
	bls _08F10AEA
	ldr r0, _08F10B0C @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #3
	bne _08F10A82
	movs r4, #3
_08F10A6C:
	adds r0, r4, #0
	movs r1, #6
	bl sub_8F10BC4
	cmp r0, #0
	bne _08F10AF6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F10A6C
_08F10A82:
	ldr r0, _08F10B0C @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #4
	bne _08F10AD2
	movs r4, #3
_08F10A8C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8F10BC4
	cmp r0, #0
	bne _08F10AF6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F10A8C
	movs r4, #3
_08F10AA4:
	adds r0, r4, #0
	movs r1, #2
	bl sub_8F10BC4
	cmp r0, #0
	bne _08F10AF6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F10AA4
	movs r4, #3
_08F10ABC:
	adds r0, r4, #0
	movs r1, #4
	bl sub_8F10BC4
	cmp r0, #0
	bne _08F10AF6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F10ABC
_08F10AD2:
	movs r4, #3
_08F10AD4:
	adds r0, r4, #0
	movs r1, #7
	bl sub_8F10BC4
	cmp r0, #0
	bne _08F10AF6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F10AD4
_08F10AEA:
	ldr r4, _08F10B10 @ =gUnknown_030036EC
_08F10AEC:
	bl sub_8F10B94
	ldrb r3, [r4]
	cmp r3, #3
	bhi _08F10AEC
_08F10AF6:
	ldr r1, _08F10B14 @ =gUnknown_03003500
	ldr r0, _08F10B18 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _08F10B10 @ =gUnknown_030036EC
	ldrb r1, [r1]
_08F10B04:
	strb r1, [r0, #0x1c]
_08F10B06:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F10B0C: .4byte gEnemyGroupSpecialEncounter
_08F10B10: .4byte gUnknown_030036EC
_08F10B14: .4byte gUnknown_03003500
_08F10B18: .4byte gUnknown_03003700

	thumb_func_start sub_8F10B1C
sub_8F10B1C: @ 0x08F10B1C
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
	ldr r0, _08F10B7C @ =gUnknown_08F5C51C
	adds r1, r1, r0
	str r1, [r3]
	ldr r2, _08F10B80 @ =gUnknown_03003500
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
_08F10B7C: .4byte gUnknown_08F5C51C
_08F10B80: .4byte gUnknown_03003500
_08F10B84: .4byte gUnknown_03003700
_08F10B88: .4byte gActionPpRequired
_08F10B8C:
	movs r0, #1
_08F10B8E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8F10B94
sub_8F10B94: @ 0x08F10B94
	push {r4, lr}
	ldr r4, _08F10BBC @ =gUnknown_03003500
_08F10B98:
	bl Random
	lsrs r2, r0, #0x1d
	lsls r0, r2, #5
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F10B98
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	bne _08F10B98
	ldr r0, _08F10BC0 @ =gUnknown_030036EC
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F10BBC: .4byte gUnknown_03003500
_08F10BC0: .4byte gUnknown_030036EC

	thumb_func_start sub_8F10BC4
sub_8F10BC4: @ 0x08F10BC4
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
	ldr r0, _08F10BFC @ =gUnknown_03003500
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
_08F10BFC: .4byte gUnknown_03003500
_08F10C00: .4byte gUnknown_030036EC
_08F10C04:
	movs r0, #0
_08F10C06:
	bx lr

	thumb_func_start sub_8F10C08
sub_8F10C08: @ 0x08F10C08
	push {r4, r5, r6, lr}
	sub sp, #0x54
	mov r1, sp
	ldr r0, _08F10C64 @ =gUnknown_08F6700C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldr r0, _08F10C68 @ =gUnknown_08F67030
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	add r2, sp, #0x24
	adds r1, r2, #0
	ldr r0, _08F10C6C @ =gUnknown_08F67038
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	movs r0, #0
	str r0, [sp, #0x50]
	adds r6, r2, #0
	add r5, sp, #0x50
_08F10C40:
	movs r0, #0
	str r0, [sp, #0x50]
	movs r0, #0xa
	bl sub_8F0EA64
	bl sub_8F0F244
	ldr r0, _08F10C70 @ =gUnknown_08F27886
	bl HandleControlCodes
	ldr r0, _08F10C74 @ =gEnemyGroupSpecialEncounter
	ldrb r2, [r0]
	cmp r2, #1
	bne _08F10C78
	movs r2, #2
	add r4, sp, #0x48
	b _08F10C9C
	.align 2, 0
_08F10C64: .4byte gUnknown_08F6700C
_08F10C68: .4byte gUnknown_08F67030
_08F10C6C: .4byte gUnknown_08F67038
_08F10C70: .4byte gUnknown_08F27886
_08F10C74: .4byte gEnemyGroupSpecialEncounter
_08F10C78:
	ldr r1, _08F10C94 @ =gGameInfo
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F10C98
	cmp r2, #6
	bne _08F10C98
	movs r2, #0x13
	adds r4, r6, #0
	b _08F10C9C
	.align 2, 0
_08F10C94: .4byte gGameInfo
_08F10C98:
	movs r2, #2
	mov r4, sp
_08F10C9C:
	adds r0, r2, #0
	bl sub_8F0EA64
	adds r0, r4, #0
	adds r1, r5, #0
	bl HandleSelectMenuInput
	subs r0, #1
	cmp r0, #8
	bls _08F10CB2
	b _08F10E1C
_08F10CB2:
	lsls r0, r0, #2
	ldr r1, _08F10CBC @ =_08F10CC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F10CBC: .4byte _08F10CC0
_08F10CC0: @ jump table
	.4byte _08F10CE4 @ case 0
	.4byte _08F10D04 @ case 1
	.4byte _08F10D1C @ case 2
	.4byte _08F10D48 @ case 3
	.4byte _08F10D60 @ case 4
	.4byte _08F10DAC @ case 5
	.4byte _08F10DC4 @ case 6
	.4byte _08F10DFC @ case 7
	.4byte _08F10E02 @ case 8
_08F10CE4:
	ldr r1, _08F10CFC @ =gUnknown_03003500
	ldr r0, _08F10D00 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0x1d]
	movs r0, #1
	bl sub_8F10E94
	b _08F10D94
	.align 2, 0
_08F10CFC: .4byte gUnknown_03003500
_08F10D00: .4byte gUnknown_03003700
_08F10D04:
	ldr r1, _08F10D14 @ =gUnknown_030036E8
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08F10D18 @ =gUnknown_030036C0
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	b _08F10E60
	.align 2, 0
_08F10D14: .4byte gUnknown_030036E8
_08F10D18: .4byte gUnknown_030036C0
_08F10D1C:
	bl sub_8F10E6C
	movs r2, #1
	movs r3, #0
	ldr r0, _08F10D44 @ =gMiscContainer
	ldr r1, [r0]
_08F10D28:
	adds r0, r1, r2
	ldrb r0, [r0]
	orrs r3, r0
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F10D28
	cmp r3, #0
	bne _08F10D3E
	b _08F10C40
_08F10D3E:
	bl sub_8F110CC
	b _08F10D94
	.align 2, 0
_08F10D44: .4byte gMiscContainer
_08F10D48:
	ldr r1, _08F10D58 @ =gUnknown_03003500
	ldr r0, _08F10D5C @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #0x59
	strb r1, [r0, #0x1d]
	b _08F10E60
	.align 2, 0
_08F10D58: .4byte gUnknown_03003500
_08F10D5C: .4byte gUnknown_03003700
_08F10D60:
	ldr r2, _08F10D9C @ =gMiscContainer
	ldr r1, _08F10DA0 @ =gUnknown_03003500
	ldr r0, _08F10DA4 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F10DA8 @ =gUnknown_030031F0
	adds r1, r1, r0
	str r1, [r2]
	movs r2, #0
	movs r3, #0
_08F10D7A:
	adds r0, r1, r2
	ldrb r0, [r0]
	orrs r3, r0
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F10D7A
	cmp r3, #0
	bne _08F10D90
	b _08F10C40
_08F10D90:
	bl sub_8F10F9C
_08F10D94:
	cmp r0, #0
	beq _08F10D9A
	b _08F10C40
_08F10D9A:
	b _08F10E60
	.align 2, 0
_08F10D9C: .4byte gMiscContainer
_08F10DA0: .4byte gUnknown_03003500
_08F10DA4: .4byte gUnknown_03003700
_08F10DA8: .4byte gUnknown_030031F0
_08F10DAC:
	ldr r1, _08F10DBC @ =gUnknown_03003500
	ldr r0, _08F10DC0 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #0x48
	strb r1, [r0, #0x1d]
	b _08F10E60
	.align 2, 0
_08F10DBC: .4byte gUnknown_03003500
_08F10DC0: .4byte gUnknown_03003700
_08F10DC4:
	ldr r4, _08F10DF0 @ =gUnknown_030036EC
	movs r0, #4
	strb r0, [r4]
	bl sub_8F10EEC
	cmp r0, #0
	bge _08F10DD4
	b _08F10C40
_08F10DD4:
	subs r2, r0, #1
	strb r2, [r4]
	ldr r3, _08F10DF4 @ =gUnknown_03003500
	ldr r1, _08F10DF8 @ =gUnknown_03003700
	ldrb r4, [r1]
	lsls r0, r4, #5
	adds r0, r0, r3
	strb r2, [r0, #0x1c]
	ldrb r1, [r1]
	lsls r0, r1, #5
	adds r0, r0, r3
	movs r1, #0x6f
	strb r1, [r0, #0x1d]
	b _08F10E60
	.align 2, 0
_08F10DF0: .4byte gUnknown_030036EC
_08F10DF4: .4byte gUnknown_03003500
_08F10DF8: .4byte gUnknown_03003700
_08F10DFC:
	bl sub_8F12BC4
	b _08F10C40
_08F10E02:
	ldr r1, _08F10E14 @ =gUnknown_03003500
	ldr r0, _08F10E18 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #0x1c
	strb r1, [r0, #0x1d]
	b _08F10E60
	.align 2, 0
_08F10E14: .4byte gUnknown_03003500
_08F10E18: .4byte gUnknown_03003700
_08F10E1C:
	ldr r3, _08F10E58 @ =gUnknown_03003700
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F10E52
	adds r2, r3, #0
	ldr r4, _08F10E5C @ =gUnknown_03003500
_08F10E28:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #5
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F10E4C
	movs r0, #0xf4
	ldrb r5, [r1, #1]
	ands r0, r5
	cmp r0, #0
	bne _08F10E4C
	movs r0, #0x20
	ldrb r1, [r1, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _08F10E52
_08F10E4C:
	ldrb r0, [r3]
	cmp r0, #0
	bne _08F10E28
_08F10E52:
	movs r0, #1
	b _08F10E62
	.align 2, 0
_08F10E58: .4byte gUnknown_03003700
_08F10E5C: .4byte gUnknown_03003500
_08F10E60:
	movs r0, #0
_08F10E62:
	add sp, #0x54
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F10E6C
sub_8F10E6C: @ 0x08F10E6C
	ldr r2, _08F10E84 @ =gMiscContainer
	ldr r1, _08F10E88 @ =gUnknown_03003500
	ldr r0, _08F10E8C @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	ldr r1, _08F10E90 @ =gUnknown_03003200
	adds r0, r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08F10E84: .4byte gMiscContainer
_08F10E88: .4byte gUnknown_03003500
_08F10E8C: .4byte gUnknown_03003700
_08F10E90: .4byte gUnknown_03003200

	thumb_func_start sub_8F10E94
sub_8F10E94: @ 0x08F10E94
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8F11230
	cmp r0, #0
	bne _08F10EA6
	movs r0, #0
	b _08F10EE6
_08F10EA6:
	movs r1, #0
	cmp r0, #2
	bne _08F10EAE
	movs r1, #4
_08F10EAE:
	ldr r4, _08F10ED8 @ =gUnknown_030036EC
	ldr r5, _08F10EDC @ =gUnknown_03003700
	movs r0, #4
	ldrb r2, [r5]
	ands r0, r2
	eors r1, r0
	strb r1, [r4]
	bl sub_8F10EEC
	cmp r0, #0
	blt _08F10EE4
	subs r2, r0, #1
	strb r2, [r4]
	ldr r1, _08F10EE0 @ =gUnknown_03003500
	ldrb r5, [r5]
	lsls r0, r5, #5
	adds r0, r0, r1
	strb r2, [r0, #0x1c]
	movs r0, #0
	b _08F10EE6
	.align 2, 0
_08F10ED8: .4byte gUnknown_030036EC
_08F10EDC: .4byte gUnknown_03003700
_08F10EE0: .4byte gUnknown_03003500
_08F10EE4:
	movs r0, #1
_08F10EE6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8F10EEC
sub_8F10EEC: @ 0x08F10EEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _08F10F94 @ =gUnknown_030036EC
	ldrb r0, [r4]
	mov r8, r0
	movs r0, #0xb
	bl sub_8F0EA64
	movs r7, #0
	movs r5, #0
	ldr r1, _08F10F98 @ =gUnknown_03003500
	mov sb, r1
	mov sl, r4
	mov r6, sl
_08F10F10:
	ldrb r1, [r6]
	lsls r0, r1, #5
	mov r3, sb
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _08F10F5A
	cmp r1, #3
	bhi _08F10F28
	ldrb r2, [r2, #0x18]
	cmp r2, #4
	bhi _08F10F5A
_08F10F28:
	lsls r0, r5, #2
	mov r2, sp
	adds r4, r2, r0
	adds r0, r1, #1
	strh r0, [r4]
	movs r0, #0x10
	strb r0, [r4, #2]
	adds r0, r5, #0
	adds r0, #0x15
	strb r0, [r4, #3]
	bl sub_8F0F244
	ldrb r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r4, #3]
	bl SetTextPosition
	movs r0, #0xc
	bl sub_8F0EA64
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08F10F5A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	cmp r7, #3
	bls _08F10F10
	lsls r0, r5, #2
	mov r3, sp
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1]
	mov r1, r8
	mov r0, sl
	strb r1, [r0]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F10F94: .4byte gUnknown_030036EC
_08F10F98: .4byte gUnknown_03003500

	thumb_func_start sub_8F10F9C
sub_8F10F9C: @ 0x08F10F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	movs r0, #0xe
	bl sub_8F0EA64
	movs r3, #0
	ldr r6, _08F11008 @ =gMiscContainer
_08F10FAA:
	ldr r0, [r6]
	adds r0, r0, r3
	ldrb r5, [r0]
	cmp r5, #0
	beq _08F10FEC
	lsls r0, r3, #2
	mov r1, sp
	adds r2, r1, r0
	adds r4, r3, #1
	strh r4, [r2]
	movs r1, #1
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, #5
	strb r1, [r2, #2]
	lsrs r1, r3, #1
	adds r1, #0x15
	strb r1, [r2, #3]
	adds r0, #6
	ldrb r1, [r2, #3]
	bl SetTextPosition
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r5, r2
	bl DrawTextWithIdNoWait
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	cmp r3, #7
	bls _08F10FAA
_08F10FEC:
	lsls r0, r3, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	adds r1, r0, #0
	cmp r1, #0
	bge _08F1100C
	movs r0, #1
	b _08F1108E
	.align 2, 0
_08F11008: .4byte gMiscContainer
_08F1100C:
	ldr r0, [r6]
	adds r0, r0, r1
	subs r0, #1
	ldrb r5, [r0]
	ldr r6, _08F1104C @ =gUnknown_03003500
	ldr r4, _08F11050 @ =gUnknown_03003700
	ldrb r2, [r4]
	lsls r0, r2, #5
	adds r0, r0, r6
	strb r5, [r0, #0x1b]
	ldrb r2, [r4]
	lsls r0, r2, #5
	adds r0, r0, r6
	subs r1, #1
	strb r1, [r0, #0x19]
	ldr r7, _08F11054 @ =gUnknown_030036F0
	lsls r0, r5, #3
	ldr r1, _08F11058 @ =gItemData
	adds r0, r0, r1
	str r0, [r7]
	ldrb r0, [r4]
	bl sub_8F11268
	cmp r0, #0
	beq _08F1105C
	bl sub_8F0F244
	movs r0, #0x14
	bl sub_8F0EA64
	b _08F11078
	.align 2, 0
_08F1104C: .4byte gUnknown_03003500
_08F11050: .4byte gUnknown_03003700
_08F11054: .4byte gUnknown_030036F0
_08F11058: .4byte gItemData
_08F1105C:
	ldr r0, [r7]
	ldrb r5, [r0, #5]
	cmp r5, #0
	bne _08F11080
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08F11072
	movs r0, #0x11
	bl sub_8F0EA64
	b _08F11078
_08F11072:
	movs r0, #0x10
	bl sub_8F0EA64
_08F11078:
	bl sub_8F0E8AC
	movs r0, #1
	b _08F1108E
_08F11080:
	ldrb r4, [r4]
	lsls r0, r4, #5
	adds r0, r0, r6
	strb r5, [r0, #0x1d]
	adds r0, r5, #0
	bl sub_8F10E94
_08F1108E:
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F11098
sub_8F11098: @ 0x08F11098
	lsls r0, r0, #0x18
	ldr r1, _08F110B0 @ =gUnknown_030034E8
	ldr r1, [r1]
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	movs r1, #0xfa
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _08F110B4 @ =gUnknown_030036A0
	b _08F110BE
	.align 2, 0
_08F110B0: .4byte gUnknown_030034E8
_08F110B4: .4byte gUnknown_030036A0
_08F110B8:
	strb r1, [r2]
	adds r0, #1
	adds r2, #1
_08F110BE:
	ldrb r1, [r0]
	cmp r1, #0
	bne _08F110B8
	movs r0, #0
	strb r0, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_8F110CC
sub_8F110CC: @ 0x08F110CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r7, #8
	movs r3, #0
	ldr r0, _08F11110 @ =gMiscContainer
	ldr r4, [r0]
	movs r5, #7
	movs r6, #0x80
_08F110E4:
	lsrs r2, r7, #3
	adds r2, r4, r2
	adds r1, r7, #0
	ands r1, r5
	adds r0, r6, #0
	asrs r0, r1
	ldrb r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _08F110FE
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08F110FE:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x3f
	bls _08F110E4
	cmp r3, #0
	bne _08F11114
_08F1110C:
	movs r0, #1
	b _08F11218
	.align 2, 0
_08F11110: .4byte gMiscContainer
_08F11114:
	movs r7, #8
	movs r0, #0
	str r0, [sp, #0x28]
	add r0, sp, #0x28
	mov sb, r0
	movs r1, #0
	mov sl, r1
_08F11122:
	cmp r7, #0x3f
	bls _08F11128
	movs r7, #8
_08F11128:
	lsrs r4, r7, #3
	ldr r0, _08F111F0 @ =gMiscContainer
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F111FC
	movs r0, #0xe
	bl sub_8F0EA64
	movs r0, #0x12
	bl sub_8F0EA64
	movs r5, #0
	movs r6, #0
	mov r8, r4
_08F11148:
	ldr r0, _08F111F0 @ =gMiscContainer
	ldr r1, [r0]
	add r1, r8
	movs r0, #0x80
	asrs r0, r5
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F11194
	lsls r0, r6, #2
	mov r1, sp
	adds r2, r1, r0
	adds r4, r7, r5
	adds r0, r4, #1
	strh r0, [r2]
	movs r1, #1
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, #5
	strb r1, [r2, #2]
	lsrs r1, r5, #1
	adds r1, #0x15
	strb r1, [r2, #3]
	adds r0, #6
	ldrb r1, [r2, #3]
	bl SetTextPosition
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r4, r4, r2
	adds r0, r4, #0
	bl DrawTextWithIdNoWait
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08F11194:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08F11148
	lsls r0, r6, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #5
	strb r0, [r1, #2]
	movs r0, #0x14
	strb r0, [r1, #3]
	str r6, [sp, #0x28]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sp
	mov r1, sl
	strh r1, [r0]
	mov r0, sp
	mov r1, sb
	bl HandleSelectMenuInput
	cmp r0, #0
	blt _08F1110C
	cmp r0, #0xff
	bgt _08F111FC
	subs r0, #1
	lsls r0, r0, #0x18
	ldr r2, _08F111F4 @ =gUnknown_03003688
	lsrs r0, r0, #0x15
	ldr r1, _08F111F8 @ =gUnknown_08F5C51C
	adds r0, r0, r1
	str r0, [r2]
	ldrb r2, [r0, #5]
	cmp r2, #0
	bne _08F11206
	movs r0, #0x10
	bl sub_8F0EA64
	bl sub_8F0E8AC
	b _08F1110C
	.align 2, 0
_08F111F0: .4byte gMiscContainer
_08F111F4: .4byte gUnknown_03003688
_08F111F8: .4byte gUnknown_08F5C51C
_08F111FC:
	adds r0, r7, #0
	adds r0, #8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	b _08F11122
_08F11206:
	ldr r1, _08F11228 @ =gUnknown_03003500
	ldr r0, _08F1122C @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	strb r2, [r0, #0x1d]
	adds r0, r2, #0
	bl sub_8F10E94
_08F11218:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F11228: .4byte gUnknown_03003500
_08F1122C: .4byte gUnknown_03003700

	thumb_func_start sub_8F11230
sub_8F11230: @ 0x08F11230
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x18
	ldr r1, _08F11264 @ =gUnknown_08F6705C
	mov r0, sp
	movs r2, #0x23
	bl memcpy
	lsrs r4, r4, #0x1a
	mov r0, sp
	adds r2, r0, r4
	movs r1, #3
	ands r5, r1
	lsls r5, r5, #1
	movs r0, #6
	subs r0, r0, r5
	ldrb r2, [r2]
	asrs r2, r0
	adds r0, r2, #0
	ands r0, r1
	add sp, #0x24
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08F11264: .4byte gUnknown_08F6705C

	thumb_func_start sub_8F11268
sub_8F11268: @ 0x08F11268
	lsls r0, r0, #0x18
	ldr r1, _08F1128C @ =gUnknown_030036F0
	ldr r3, [r1]
	ldr r2, _08F11290 @ =gCanEquipItemMask
	ldr r1, _08F11294 @ =gUnknown_03003500
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	adds r0, #1
	adds r0, r0, r2
	ldrb r3, [r3, #2]
	ldrb r0, [r0]
	ands r3, r0
	adds r0, r3, #0
	cmp r0, #0
	bne _08F11298
	movs r0, #1
	b _08F1129A
	.align 2, 0
_08F1128C: .4byte gUnknown_030036F0
_08F11290: .4byte gCanEquipItemMask
_08F11294: .4byte gUnknown_03003500
_08F11298:
	movs r0, #0
_08F1129A:
	bx lr

	thumb_func_start sub_8F1129C
sub_8F1129C: @ 0x08F1129C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F112C8 @ =gActionPpRequired
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, _08F112CC @ =gUnknown_08F70840
	ldr r0, _08F112D0 @ =gUnknown_03003690
	ldrh r0, [r0]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x2b
	bls _08F112BC
	bl _08F11C06
_08F112BC:
	lsls r0, r0, #2
	ldr r1, _08F112D4 @ =_08F112D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F112C8: .4byte gActionPpRequired
_08F112CC: .4byte gUnknown_08F70840
_08F112D0: .4byte gUnknown_03003690
_08F112D4: .4byte _08F112D8
_08F112D8: @ jump table
	.4byte _08F11388 @ case 0
	.4byte _08F1138E @ case 1
	.4byte _08F113A4 @ case 2
	.4byte _08F113C4 @ case 3
	.4byte _08F113E0 @ case 4
	.4byte _08F113FC @ case 5
	.4byte _08F11428 @ case 6
	.4byte _08F11590 @ case 7
	.4byte _08F115AC @ case 8
	.4byte _08F115C8 @ case 9
	.4byte _08F115EC @ case 10
	.4byte _08F11630 @ case 11
	.4byte _08F11648 @ case 12
	.4byte _08F11660 @ case 13
	.4byte _08F116C0 @ case 14
	.4byte _08F116D0 @ case 15
	.4byte _08F11714 @ case 16
	.4byte _08F11730 @ case 17
	.4byte _08F1174C @ case 18
	.4byte _08F1176C @ case 19
	.4byte _08F1178C @ case 20
	.4byte _08F117B6 @ case 21
	.4byte _08F117E0 @ case 22
	.4byte _08F1180A @ case 23
	.4byte _08F11868 @ case 24
	.4byte _08F11884 @ case 25
	.4byte _08F11890 @ case 26
	.4byte _08F118A6 @ case 27
	.4byte _08F118C6 @ case 28
	.4byte _08F118FC @ case 29
	.4byte _08F11938 @ case 30
	.4byte _08F1194E @ case 31
	.4byte _08F1195A @ case 32
	.4byte _08F11966 @ case 33
	.4byte _08F11972 @ case 34
	.4byte _08F1197E @ case 35
	.4byte _08F1198A @ case 36
	.4byte _08F11996 @ case 37
	.4byte _08F119D8 @ case 38
	.4byte _08F119E4 @ case 39
	.4byte _08F11A48 @ case 40
	.4byte _08F11AA0 @ case 41
	.4byte _08F11B9C @ case 42
	.4byte _08F11BC8 @ case 43
_08F11388:
	bl sub_8F11DF0
	b _08F11404
_08F1138E:
	bl sub_8F11DF0
	ldr r0, _08F113A0 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #4
	bl sub_8F11F10
	b _08F11A20
	.align 2, 0
_08F113A0: .4byte gUnknown_030036EC
_08F113A4:
	bl sub_8F11DF0
	ldr r0, _08F113C0 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #0xc
	bl sub_8F11E08
	movs r0, #9
	movs r1, #0x23
	bl DrawBattleStatusTextByIdWithSfx
	bl _08F11C06
	.align 2, 0
_08F113C0: .4byte gUnknown_030036EC
_08F113C4:
	ldr r0, _08F113DC @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #6
	bl sub_8F12000
	movs r0, #9
	movs r1, #0x20
	bl DrawBattleStatusTextByIdWithSfx
	bl _08F11C06
	.align 2, 0
_08F113DC: .4byte gUnknown_030036EC
_08F113E0:
	ldr r0, _08F113F8 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #8
	bl sub_8F12000
	movs r0, #9
	movs r1, #0x22
	bl DrawBattleStatusTextByIdWithSfx
	bl _08F11C06
	.align 2, 0
_08F113F8: .4byte gUnknown_030036EC
_08F113FC:
	ldr r1, _08F1141C @ =gActionPpRequired
	ldr r2, _08F11420 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
_08F11404:
	ldr r0, _08F11424 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #2
	bl sub_8F11F10
	movs r0, #0xa
	movs r1, #0x3e
	bl DrawBattleStatusTextByIdWithSfx
	bl _08F11C06
	.align 2, 0
_08F1141C: .4byte gActionPpRequired
_08F11420: .4byte 0x0000FFFF
_08F11424: .4byte gUnknown_030036EC
_08F11428:
	ldr r0, _08F11500 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08F11460
	bl sub_8F122DC
	cmp r0, #0
	beq _08F11460
_08F1143E:
	ldr r0, _08F11504 @ =gUnknown_03003700
	movs r5, #0x1e
	ldrb r3, [r0]
	cmp r3, #3
	bhi _08F11456
	ldr r1, _08F11508 @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	cmp r0, #5
	bne _08F11456
	movs r5, #0x1a
_08F11456:
	ldr r4, _08F1150C @ =gActionPpRequired
	bl Random
	lsrs r0, r5
	strh r0, [r4]
_08F11460:
	ldr r5, _08F11510 @ =gUnknown_030036EC
	ldrb r7, [r5]
	bl sub_8F11DF0
	ldr r6, _08F11508 @ =gUnknown_03003500
	ldrb r4, [r5]
	lsls r1, r4, #5
	adds r1, r1, r6
	movs r0, #4
	ldrb r1, [r1, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _08F11486
	movs r0, #0x53
	bl DrawBattleStatusTextById
	ldr r0, _08F11504 @ =gUnknown_03003700
	ldrb r0, [r0]
	strb r0, [r5]
_08F11486:
	ldrb r3, [r5]
	lsls r0, r3, #5
	adds r2, r0, r6
	movs r0, #0x10
	ldrb r1, [r2, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _08F1149E
	ldr r1, _08F1150C @ =gActionPpRequired
	ldrh r4, [r1]
	lsrs r0, r4, #1
	strh r0, [r1]
_08F1149E:
	movs r0, #8
	ldrb r2, [r2, #0x1e]
	ands r0, r2
	cmp r0, #0
	beq _08F114B0
	ldr r1, _08F1150C @ =gActionPpRequired
	ldrh r2, [r1]
	lsrs r0, r2, #1
	strh r0, [r1]
_08F114B0:
	adds r0, r3, #0
	bl sub_8F121F0
	ldr r4, _08F1150C @ =gActionPpRequired
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F114C2
	adds r0, #1
	strh r0, [r4]
_08F114C2:
	ldr r0, _08F11514 @ =gUnknown_03003708
	ldrh r1, [r4]
	str r1, [r0]
	movs r0, #0xc
	bl DrawBattleStatusTextById
	ldr r0, _08F11500 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #3
	beq _08F114DE
	bl sub_8F12310
	cmp r0, #0
	bne _08F1151A
_08F114DE:
	bl sub_8F122DC
	cmp r0, #0
	bne _08F1151A
	ldrb r1, [r5]
	lsls r0, r1, #5
	adds r0, r0, r6
	ldrh r3, [r0, #2]
	ldrh r4, [r4]
	subs r4, r3, r4
	cmp r4, #0
	bgt _08F11518
	adds r0, r1, #0
	bl sub_8F101F4
	b _08F11582
	.align 2, 0
_08F11500: .4byte gEnemyGroupSpecialEncounter
_08F11504: .4byte gUnknown_03003700
_08F11508: .4byte gUnknown_03003500
_08F1150C: .4byte gActionPpRequired
_08F11510: .4byte gUnknown_030036EC
_08F11514: .4byte gUnknown_03003708
_08F11518:
	strh r4, [r0, #2]
_08F1151A:
	ldr r5, _08F11588 @ =gUnknown_03003500
	ldr r4, _08F1158C @ =gUnknown_030036EC
	ldrb r0, [r4]
	lsls r1, r0, #5
	adds r1, r1, r5
	movs r0, #0xc
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F1154C
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08F1154C
	ldrb r4, [r4]
	lsls r1, r4, #5
	adds r1, r1, r5
	movs r0, #0xf3
	ldrb r2, [r1, #1]
	ands r0, r2
	strb r0, [r1, #1]
	movs r0, #0x8d
	bl DrawBattleStatusTextById
_08F1154C:
	ldr r5, _08F11588 @ =gUnknown_03003500
	ldr r4, _08F1158C @ =gUnknown_030036EC
	ldrb r3, [r4]
	lsls r1, r3, #5
	adds r1, r1, r5
	movs r0, #0x10
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F1157E
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08F1157E
	ldrb r4, [r4]
	lsls r1, r4, #5
	adds r1, r1, r5
	movs r0, #0xef
	ldrb r4, [r1, #1]
	ands r0, r4
	strb r0, [r1, #1]
	movs r0, #0x61
	bl DrawBattleStatusTextById
_08F1157E:
	bl sub_8F0EA98
_08F11582:
	ldr r0, _08F1158C @ =gUnknown_030036EC
	strb r7, [r0]
	b _08F11C06
	.align 2, 0
_08F11588: .4byte gUnknown_03003500
_08F1158C: .4byte gUnknown_030036EC
_08F11590:
	bl sub_8F11DF0
	ldr r4, _08F115A8 @ =gUnknown_030036EC
	ldrb r0, [r4]
	bl sub_8F121F0
	ldrb r0, [r4]
	movs r1, #8
	bl sub_8F11FC8
	b _08F11652
	.align 2, 0
_08F115A8: .4byte gUnknown_030036EC
_08F115AC:
	bl sub_8F11DF0
	ldr r0, _08F115C4 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #0xb
	bl sub_8F11F90
	movs r0, #0x26
	bl DrawBattleStatusTextById
	b _08F11C06
	.align 2, 0
_08F115C4: .4byte gUnknown_030036EC
_08F115C8:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F115D2
	b _08F1143E
_08F115D2:
	bl sub_8F12310
	cmp r0, #0
	beq _08F115DC
	b _08F1143E
_08F115DC:
	ldr r0, _08F115E8 @ =gUnknown_030036EC
	ldrb r0, [r0]
	bl sub_8F101F4
	b _08F11C06
	.align 2, 0
_08F115E8: .4byte gUnknown_030036EC
_08F115EC:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F115F6
	b _08F11A40
_08F115F6:
	bl sub_8F12310
	cmp r0, #0
	beq _08F11600
	b _08F11A40
_08F11600:
	bl Random
	lsrs r0, r0, #0x1e
	adds r4, r0, #1
	ldr r1, _08F11628 @ =gUnknown_03003500
	ldr r0, _08F1162C @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	cmp r4, r1
	blt _08F1161A
	b _08F11C06
_08F1161A:
	strh r4, [r0, #2]
	movs r0, #0
	movs r1, #0x38
	bl DrawBattleStatusTextByIdWithSfx
	b _08F11C06
	.align 2, 0
_08F11628: .4byte gUnknown_03003500
_08F1162C: .4byte gUnknown_030036EC
_08F11630:
	ldr r0, _08F11644 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #6
	bl sub_8F12038
	movs r0, #0x21
	bl DrawBattleStatusTextById
	b _08F11C06
	.align 2, 0
_08F11644: .4byte gUnknown_030036EC
_08F11648:
	ldr r0, _08F1165C @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #8
	bl sub_8F12038
_08F11652:
	movs r0, #0x27
	bl DrawBattleStatusTextById
	b _08F11C06
	.align 2, 0
_08F1165C: .4byte gUnknown_030036EC
_08F11660:
	bl sub_8F11DF0
	ldr r0, _08F116AC @ =gUnknown_030036EC
	ldrb r2, [r0]
	cmp r2, #3
	bhi _08F116A0
	ldr r1, _08F116B0 @ =gUnknown_03003500
	lsls r0, r2, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F116B4 @ =gUnknown_030031E1
	adds r1, r1, r0
	ldrb r3, [r1, #1]
	lsls r4, r3, #8
	ldrb r0, [r1]
	orrs r4, r0
	ldrb r2, [r1, #2]
	lsls r0, r2, #0x10
	adds r4, r4, r0
	ldr r0, _08F116B8 @ =gActionPpRequired
	ldrh r0, [r0]
	adds r4, r0, r4
	ldr r0, _08F116BC @ =0x00FFFFFF
	cmp r4, r0
	ble _08F11696
	adds r4, r0, #0
_08F11696:
	strb r4, [r1]
	asrs r0, r4, #8
	strb r0, [r1, #1]
	asrs r0, r4, #0x10
	strb r0, [r1, #2]
_08F116A0:
	movs r0, #0xa
	movs r1, #0x2f
	bl DrawBattleStatusTextByIdWithSfx
	b _08F11C06
	.align 2, 0
_08F116AC: .4byte gUnknown_030036EC
_08F116B0: .4byte gUnknown_03003500
_08F116B4: .4byte gUnknown_030031E1
_08F116B8: .4byte gActionPpRequired
_08F116BC: .4byte 0x00FFFFFF
_08F116C0:
	ldr r0, _08F116CC @ =gUnknown_03003700
	ldrb r0, [r0]
	bl Maybe_WinBattle
	b _08F11C06
	.align 2, 0
_08F116CC: .4byte gUnknown_03003700
_08F116D0:
	ldr r0, _08F116FC @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F116DA
	b _08F11C06
_08F116DA:
	bl sub_8F11DF0
	ldr r1, _08F11700 @ =gUnknown_03003500
	ldr r0, _08F11704 @ =gUnknown_03003700
	ldrb r2, [r0]
	lsls r0, r2, #5
	adds r1, r0, r1
	ldr r0, _08F11708 @ =gActionPpRequired
	ldrh r3, [r1, #2]
	ldrh r0, [r0]
	subs r4, r3, r0
	cmp r4, #0
	bgt _08F1170C
	adds r0, r2, #0
	bl sub_8F101F4
	b _08F11C06
	.align 2, 0
_08F116FC: .4byte gUnknown_0300317C
_08F11700: .4byte gUnknown_03003500
_08F11704: .4byte gUnknown_03003700
_08F11708: .4byte gActionPpRequired
_08F1170C:
	strh r4, [r1, #2]
	bl sub_8F0EA98
	b _08F11C06
_08F11714:
	bl sub_8F11DF0
	ldr r0, _08F1172C @ =gUnknown_03003700
	ldrb r0, [r0]
	movs r1, #6
	bl sub_8F11E80
	movs r0, #0x5c
	bl DrawBattleStatusTextById
	b _08F11C06
	.align 2, 0
_08F1172C: .4byte gUnknown_03003700
_08F11730:
	bl sub_8F11DF0
	ldr r0, _08F11748 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #6
	bl sub_8F11E80
	movs r0, #0x20
	bl DrawBattleStatusTextById
	b _08F11C06
	.align 2, 0
_08F11748: .4byte gUnknown_030036EC
_08F1174C:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F11756
	b _08F11A40
_08F11756:
	bl sub_8F12198
	cmp r0, #0
	beq _08F11760
	b _08F11A40
_08F11760:
	movs r0, #0x80
	movs r1, #0
	movs r2, #0x1b
	bl InflictStatus2DuringBattle
	b _08F11C06
_08F1176C:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F11776
	b _08F11A40
_08F11776:
	bl sub_8F12198
	cmp r0, #0
	beq _08F11780
	b _08F11A40
_08F11780:
	movs r0, #2
	movs r1, #0
	movs r2, #0x4b
	bl InflictStatusDuringBattle
	b _08F11C06
_08F1178C:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F11796
	b _08F11A40
_08F11796:
	bl sub_8F12310
	cmp r0, #0
	beq _08F117A0
	b _08F11A40
_08F117A0:
	bl sub_8F121C4
	cmp r0, #0
	beq _08F117AA
	b _08F11A40
_08F117AA:
	movs r0, #8
	movs r1, #0
	movs r2, #0x39
	bl InflictStatusDuringBattle
	b _08F11C06
_08F117B6:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F117C0
	b _08F11A40
_08F117C0:
	bl sub_8F12310
	cmp r0, #0
	beq _08F117CA
	b _08F11A40
_08F117CA:
	bl sub_8F121C4
	cmp r0, #0
	beq _08F117D4
	b _08F11A40
_08F117D4:
	movs r0, #0x10
	movs r1, #0
	movs r2, #0x3b
	bl InflictStatusDuringBattle
	b _08F11C06
_08F117E0:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F117EA
	b _08F11A40
_08F117EA:
	bl sub_8F12310
	cmp r0, #0
	beq _08F117F4
	b _08F11A40
_08F117F4:
	bl sub_8F12198
	cmp r0, #0
	beq _08F117FE
	b _08F11A40
_08F117FE:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x49
	bl InflictStatusDuringBattle
	b _08F11C06
_08F1180A:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F11814
	b _08F11A40
_08F11814:
	ldr r0, _08F11830 @ =gUnknown_030036EC
	ldrb r4, [r0]
	cmp r4, #3
	bhi _08F1183C
	ldr r2, _08F11834 @ =gGameInfo
	ldr r1, _08F11838 @ =gUnknown_03003500
	lsls r0, r4, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	adds r0, r0, r2
	adds r0, #0x44
	ldrh r4, [r0]
	b _08F1184E
	.align 2, 0
_08F11830: .4byte gUnknown_030036EC
_08F11834: .4byte gGameInfo
_08F11838: .4byte gUnknown_03003500
_08F1183C:
	ldr r2, _08F11860 @ =gEnemyData
	ldr r1, _08F11864 @ =gUnknown_03003500
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrh r4, [r0, #4]
_08F1184E:
	cmp r4, #0
	bne _08F11854
	b _08F11A40
_08F11854:
	movs r0, #0x40
	movs r1, #0
	movs r2, #0x4d
	bl InflictStatus2DuringBattle
	b _08F11C06
	.align 2, 0
_08F11860: .4byte gEnemyData
_08F11864: .4byte gUnknown_03003500
_08F11868:
	ldr r1, _08F1187C @ =gUnknown_03003500
	ldr r0, _08F11880 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #8
	ldrb r2, [r0, #0x1e]
	orrs r1, r2
	strb r1, [r0, #0x1e]
	b _08F11C06
	.align 2, 0
_08F1187C: .4byte gUnknown_03003500
_08F11880: .4byte gUnknown_030036EC
_08F11884:
	movs r0, #0x10
	movs r1, #0xa
	movs r2, #0x4f
	bl InflictStatus2DuringBattle
	b _08F11C06
_08F11890:
	bl sub_8F122FC
	cmp r0, #0
	beq _08F1189A
	b _08F11A40
_08F1189A:
	movs r0, #4
	movs r1, #0xa
	movs r2, #0x17
	bl InflictStatus2DuringBattle
	b _08F11C06
_08F118A6:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F118B0
	b _08F11A40
_08F118B0:
	bl sub_8F12310
	cmp r0, #0
	beq _08F118BA
	b _08F11A40
_08F118BA:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x4e
	bl InflictStatus2DuringBattle
	b _08F11C06
_08F118C6:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F118D0
	b _08F11A40
_08F118D0:
	bl sub_8F12310
	cmp r0, #0
	beq _08F118DA
	b _08F11A40
_08F118DA:
	movs r0, #0x40
	movs r1, #0
	movs r2, #0x19
	bl InflictStatusDuringBattle
	cmp r0, #0
	beq _08F118EA
	b _08F11C06
_08F118EA:
	ldr r0, _08F118F8 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #8
	bl sub_8F12000
	b _08F11C06
	.align 2, 0
_08F118F8: .4byte gUnknown_030036EC
_08F118FC:
	ldr r1, _08F11930 @ =gUnknown_030036EC
	ldrb r3, [r1]
	cmp r3, #3
	bls _08F11906
	b _08F11C06
_08F11906:
	ldr r0, _08F11934 @ =gUnknown_03003500
	lsls r1, r3, #5
	adds r1, r1, r0
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _08F11914
	b _08F11C06
_08F11914:
	ldrb r2, [r1, #0x1e]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08F11920
	b _08F11C06
_08F11920:
	movs r0, #2
	orrs r0, r2
	strb r0, [r1, #0x1e]
	movs r0, #0x74
	bl DrawBattleStatusTextById
	b _08F11C06
	.align 2, 0
_08F11930: .4byte gUnknown_030036EC
_08F11934: .4byte gUnknown_03003500
_08F11938:
	bl sub_8F121C4
	cmp r0, #0
	beq _08F11942
	b _08F11A40
_08F11942:
	movs r0, #4
	movs r1, #0
	movs r2, #0x67
	bl InflictStatusDuringBattle
	b _08F11C06
_08F1194E:
	movs r0, #2
	movs r1, #0xa
	movs r2, #0x5d
	bl RemoveStatusDuringBattle
	b _08F11C06
_08F1195A:
	movs r0, #0x10
	movs r1, #0xa
	movs r2, #0x61
	bl RemoveStatusDuringBattle
	b _08F11C06
_08F11966:
	movs r0, #0x20
	movs r1, #0xa
	movs r2, #0x60
	bl RemoveStatusDuringBattle
	b _08F11C06
_08F11972:
	movs r0, #2
	movs r1, #0xa
	movs r2, #0x70
	bl RemoveStatus2DuringBattle
	b _08F11C06
_08F1197E:
	movs r0, #0xc
	movs r1, #0xa
	movs r2, #0x5e
	bl RemoveStatusDuringBattle
	b _08F11C06
_08F1198A:
	movs r0, #0x10
	movs r1, #2
	movs r2, #0x69
	bl RemoveStatus2DuringBattle
	b _08F11C06
_08F11996:
	ldr r1, _08F119C8 @ =gUnknown_03003500
	ldr r2, _08F119CC @ =gUnknown_030036EC
	ldrb r4, [r2]
	lsls r0, r4, #5
	adds r1, r0, r1
	movs r0, #0x80
	ldrb r3, [r1, #1]
	ands r0, r3
	cmp r0, #0
	beq _08F11A40
	movs r0, #0
	strb r0, [r1, #1]
	ldr r1, _08F119D0 @ =gActionPpRequired
	ldr r4, _08F119D4 @ =0x0000FFFF
	adds r0, r4, #0
	strh r0, [r1]
	ldrb r0, [r2]
	movs r1, #2
	bl sub_8F11F10
	movs r0, #0xa
	movs r1, #0x62
	bl DrawBattleStatusTextByIdWithSfx
	b _08F11C06
	.align 2, 0
_08F119C8: .4byte gUnknown_03003500
_08F119CC: .4byte gUnknown_030036EC
_08F119D0: .4byte gActionPpRequired
_08F119D4: .4byte 0x0000FFFF
_08F119D8:
	movs r0, #0x40
	movs r1, #0xa
	movs r2, #0x71
	bl RemoveStatusDuringBattle
	b _08F11C06
_08F119E4:
	ldr r1, _08F11A2C @ =gUnknown_03003500
	ldr r5, _08F11A30 @ =gUnknown_030036EC
	ldrb r2, [r5]
	lsls r0, r2, #5
	adds r1, r0, r1
	ldrh r4, [r1, #4]
	adds r0, r4, #0
	cmp r4, #0
	beq _08F11A40
	cmp r4, #0xa
	ble _08F119FC
	movs r4, #0xa
_08F119FC:
	subs r0, r0, r4
	strh r0, [r1, #4]
	ldr r1, _08F11A34 @ =gUnknown_03003708
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	movs r0, #0x48
	bl DrawBattleStatusTextById
	ldr r0, _08F11A38 @ =gActionPpRequired
	strh r4, [r0]
	ldr r4, _08F11A3C @ =gUnknown_03003700
	ldrb r0, [r4]
	movs r1, #4
	bl sub_8F11F10
	ldrb r0, [r4]
	strb r0, [r5]
_08F11A20:
	movs r0, #0xa
	movs r1, #0x3d
	bl DrawBattleStatusTextByIdWithSfx
	b _08F11C06
	.align 2, 0
_08F11A2C: .4byte gUnknown_03003500
_08F11A30: .4byte gUnknown_030036EC
_08F11A34: .4byte gUnknown_03003708
_08F11A38: .4byte gActionPpRequired
_08F11A3C: .4byte gUnknown_03003700
_08F11A40:
	movs r0, #0x55
	bl DrawBattleStatusTextById
	b _08F11C06
_08F11A48:
	ldr r4, _08F11A84 @ =gUnknown_030036EC
	ldrb r3, [r4]
	cmp r3, #3
	bhi _08F11A98
	ldrb r0, [r4]
	bl sub_8F1225C
	cmp r0, #0
	bne _08F11A98
	ldr r1, _08F11A88 @ =gUnknown_03003500
	ldrb r4, [r4]
	lsls r0, r4, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	ldr r1, _08F11A8C @ =gUnknown_030031F0
	adds r0, r0, r1
	ldr r1, _08F11A90 @ =gBattleItemInventoryIdx
	ldrb r1, [r1]
	ldr r4, _08F11A94 @ =gBattleItemId
	ldrb r2, [r4]
	bl sub_8F103C4
	ldrb r0, [r4]
	bl sub_8F11098
	movs r0, #0x81
	bl DrawBattleStatusTextById
	b _08F11C06
	.align 2, 0
_08F11A84: .4byte gUnknown_030036EC
_08F11A88: .4byte gUnknown_03003500
_08F11A8C: .4byte gUnknown_030031F0
_08F11A90: .4byte gBattleItemInventoryIdx
_08F11A94: .4byte gBattleItemId
_08F11A98:
	movs r0, #0x59
	bl DrawBattleStatusTextById
	b _08F11C06
_08F11AA0:
	ldr r0, _08F11AE0 @ =gUnknown_030034F0
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r0, _08F11AE4 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #6
	beq _08F11AF0
	ldr r4, _08F11AE8 @ =gEnemyMusic
	ldr r0, _08F11AEC @ =gCurrentBgMusic
	ldrb r0, [r0]
	strb r0, [r4]
	movs r0, #0x19
	bl ChangeBgMusic
	movs r0, #0
	bl sub_8F0E850
	movs r0, #3
	bl PlaySfxById0
	movs r0, #0x38
	bl sub_8F0E838
	movs r0, #0x1e
	bl sub_8F0E838
	ldrb r0, [r4]
	bl ChangeBgMusic
	b _08F11C06
	.align 2, 0
_08F11AE0: .4byte gUnknown_030034F0
_08F11AE4: .4byte gEnemyGroupSpecialEncounter
_08F11AE8: .4byte gEnemyMusic
_08F11AEC: .4byte gCurrentBgMusic
_08F11AF0:
	movs r0, #0x19
	bl ChangeBgMusic
	ldr r4, _08F11B94 @ =gUnknown_030036FC
	ldrb r0, [r4]
	subs r0, #0x9e
	bl sub_8F0E850
	movs r0, #3
	bl PlaySfxById0
	ldr r1, _08F11B98 @ =gUnknown_08F662E0
	movs r0, #0xf
	bl sub_8F10548
	ldrb r0, [r4]
	bl DrawBattleStatusTextById
	movs r0, #0x1e
	bl sub_8F0E838
	movs r0, #0x2c
	bl ChangeBgMusic
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa9
	bne _08F11C06
	movs r5, #3
_08F11B30:
	movs r0, #5
	bl PlaySfxById0
	bl Random
	lsrs r0, r0, #0x1e
	adds r4, r0, #1
	subs r5, #1
	cmp r4, #0
	beq _08F11B5C
_08F11B44:
	movs r0, #1
	bl PlaySfxById0
	adds r0, r4, #0
	movs r1, #3
	bl sub_8F104FC
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08F11B44
_08F11B5C:
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08F11B30
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #0xc8
	bl sub_8F0E838
	ldr r1, _08F11B94 @ =gUnknown_030036FC
	movs r0, #0xa9
	strb r0, [r1]
	adds r4, r1, #0
_08F11B78:
	ldrb r0, [r4]
	bl DrawBattleStatusTextById
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xab
	bls _08F11B78
	movs r0, #4
	bl sub_8F101F4
	b _08F11C06
	.align 2, 0
_08F11B94: .4byte gUnknown_030036FC
_08F11B98: .4byte gUnknown_08F662E0
_08F11B9C:
	ldr r1, _08F11BC0 @ =gUnknown_03003500
	ldr r0, _08F11BC4 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r2, r0, r1
	ldrb r1, [r2, #1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08F11C06
	movs r0, #8
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #0x39
	bl DrawBattleStatusTextById
	b _08F11C06
	.align 2, 0
_08F11BC0: .4byte gUnknown_03003500
_08F11BC4: .4byte gUnknown_030036EC
_08F11BC8:
	ldr r0, _08F11C20 @ =gUnknown_03003500
	ldr r4, _08F11C24 @ =gUnknown_030036EC
	ldrb r2, [r4]
	lsls r1, r2, #5
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F11C06
	cmp r2, #3
	bhi _08F11C06
	ldrb r0, [r1, #0x18]
	cmp r0, #4
	bhi _08F11C06
	movs r0, #0
	strb r0, [r1, #1]
	ldr r1, _08F11C28 @ =gActionPpRequired
	ldr r2, _08F11C2C @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	ldrb r0, [r4]
	movs r1, #2
	bl sub_8F11F10
	ldrb r0, [r4]
	movs r1, #4
	bl sub_8F11F10
	movs r0, #0xa
	movs r1, #0xac
	bl DrawBattleStatusTextByIdWithSfx
_08F11C06:
	ldr r0, _08F11C28 @ =gActionPpRequired
	mov r3, r8
	strh r3, [r0]
	ldr r1, _08F11C30 @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F11C20: .4byte gUnknown_03003500
_08F11C24: .4byte gUnknown_030036EC
_08F11C28: .4byte gActionPpRequired
_08F11C2C: .4byte 0x0000FFFF
_08F11C30: .4byte gUnknown_03003690

	thumb_func_start sub_8F11C34
sub_8F11C34: @ 0x08F11C34
	push {lr}
	ldr r0, _08F11C6C @ =gUnknown_03003500
	ldr r2, _08F11C70 @ =gUnknown_030036EC
	ldrb r3, [r2]
	lsls r1, r3, #5
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F11C68
	movs r0, #0
	strb r0, [r1, #1]
	ldr r1, _08F11C74 @ =gActionPpRequired
	ldr r3, _08F11C78 @ =0x0000FFFF
	adds r0, r3, #0
	strh r0, [r1]
	ldrb r0, [r2]
	movs r1, #2
	bl sub_8F11F10
	movs r0, #0xa
	movs r1, #0
	bl DrawBattleStatusTextByIdWithSfx
	movs r0, #0x14
	bl sub_8F0E838
_08F11C68:
	pop {r0}
	bx r0
	.align 2, 0
_08F11C6C: .4byte gUnknown_03003500
_08F11C70: .4byte gUnknown_030036EC
_08F11C74: .4byte gActionPpRequired
_08F11C78: .4byte 0x0000FFFF

	thumb_func_start DrawBattleStatusTextByIdWithSfx
DrawBattleStatusTextByIdWithSfx: @ 0x08F11C7C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r0, #0
	beq _08F11C8E
	bl sub_8F0E770
_08F11C8E:
	bl sub_8F0EA98
	adds r0, r4, #0
	bl DrawBattleStatusTextById
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start InflictStatusDuringBattle
InflictStatusDuringBattle: @ 0x08F11CA0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08F11CD8 @ =gUnknown_03003668
	strb r4, [r0]
	ldr r1, _08F11CDC @ =gUnknown_03003500
	ldr r0, _08F11CE0 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r3, r0, r1
	ldrb r1, [r3, #1]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08F11CE4
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r3, #1]
	adds r0, r4, #0
	adds r1, r2, #0
	bl DrawBattleStatusTextByIdWithSfx
	movs r0, #0
	b _08F11CEC
	.align 2, 0
_08F11CD8: .4byte gUnknown_03003668
_08F11CDC: .4byte gUnknown_03003500
_08F11CE0: .4byte gUnknown_030036EC
_08F11CE4:
	movs r0, #0x55
	bl DrawBattleStatusTextById
	movs r0, #1
_08F11CEC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start InflictStatus2DuringBattle
InflictStatus2DuringBattle: @ 0x08F11CF4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08F11D2C @ =gUnknown_03003668
	strb r4, [r0]
	ldr r1, _08F11D30 @ =gUnknown_03003500
	ldr r0, _08F11D34 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r3, r0, r1
	ldrb r1, [r3, #0x1e]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08F11D38
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r3, #0x1e]
	adds r0, r4, #0
	adds r1, r2, #0
	bl DrawBattleStatusTextByIdWithSfx
	movs r0, #0
	b _08F11D40
	.align 2, 0
_08F11D2C: .4byte gUnknown_03003668
_08F11D30: .4byte gUnknown_03003500
_08F11D34: .4byte gUnknown_030036EC
_08F11D38:
	movs r0, #0x55
	bl DrawBattleStatusTextById
	movs r0, #1
_08F11D40:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start RemoveStatusDuringBattle
RemoveStatusDuringBattle: @ 0x08F11D48
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08F11D80 @ =gUnknown_03003668
	strb r5, [r0]
	ldr r1, _08F11D84 @ =gUnknown_03003500
	ldr r0, _08F11D88 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r3, r0, r1
	ldrb r1, [r3, #1]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08F11D8C
	adds r0, r1, #0
	bics r0, r4
	strb r0, [r3, #1]
	adds r0, r5, #0
	adds r1, r2, #0
	bl DrawBattleStatusTextByIdWithSfx
	movs r0, #0
	b _08F11D94
	.align 2, 0
_08F11D80: .4byte gUnknown_03003668
_08F11D84: .4byte gUnknown_03003500
_08F11D88: .4byte gUnknown_030036EC
_08F11D8C:
	movs r0, #0x55
	bl DrawBattleStatusTextById
	movs r0, #1
_08F11D94:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start RemoveStatus2DuringBattle
RemoveStatus2DuringBattle: @ 0x08F11D9C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08F11DD4 @ =gUnknown_03003668
	strb r5, [r0]
	ldr r1, _08F11DD8 @ =gUnknown_03003500
	ldr r0, _08F11DDC @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r3, r0, r1
	ldrb r1, [r3, #0x1e]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08F11DE0
	adds r0, r1, #0
	bics r0, r4
	strb r0, [r3, #0x1e]
	adds r0, r5, #0
	adds r1, r2, #0
	bl DrawBattleStatusTextByIdWithSfx
	movs r0, #0
	b _08F11DE8
	.align 2, 0
_08F11DD4: .4byte gUnknown_03003668
_08F11DD8: .4byte gUnknown_03003500
_08F11DDC: .4byte gUnknown_030036EC
_08F11DE0:
	movs r0, #0x55
	bl DrawBattleStatusTextById
	movs r0, #1
_08F11DE8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F11DF0
sub_8F11DF0: @ 0x08F11DF0
	push {r4, lr}
	ldr r4, _08F11E04 @ =gActionPpRequired
	ldrh r0, [r4]
	bl sub_8F0E8DC
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F11E04: .4byte gActionPpRequired

	thumb_func_start sub_8F11E08
sub_8F11E08: @ 0x08F11E08
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r1, r5, #5
	adds r0, r1, r4
	ldr r2, _08F11E30 @ =gUnknown_03003500
	adds r0, r0, r2
	ldrb r6, [r0]
	cmp r5, #3
	bhi _08F11E34
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8F12074
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x17
	b _08F11E44
	.align 2, 0
_08F11E30: .4byte gUnknown_03003500
_08F11E34:
	adds r0, r1, r2
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08F11E70 @ =gEnemyData
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #1
_08F11E44:
	ldr r0, _08F11E74 @ =gActionPpRequired
	ldrh r0, [r0]
	adds r2, r0, r6
	cmp r2, #0xff
	ble _08F11E50
	movs r2, #0xff
_08F11E50:
	cmp r2, r1
	ble _08F11E56
	adds r2, r1, #0
_08F11E56:
	lsls r0, r5, #5
	adds r0, r0, r4
	ldr r1, _08F11E78 @ =gUnknown_03003500
	adds r0, r0, r1
	strb r2, [r0]
	ldr r1, _08F11E7C @ =gUnknown_03003708
	subs r0, r2, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F11E70: .4byte gEnemyData
_08F11E74: .4byte gActionPpRequired
_08F11E78: .4byte gUnknown_03003500
_08F11E7C: .4byte gUnknown_03003708

	thumb_func_start sub_8F11E80
sub_8F11E80: @ 0x08F11E80
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r1, r1, #0x19
	lsls r2, r4, #5
	lsls r3, r1, #1
	adds r0, r2, r3
	ldr r1, _08F11EAC @ =gUnknown_03003500
	adds r0, r0, r1
	ldrh r6, [r0]
	cmp r4, #3
	bhi _08F11EB0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F12074
	lsls r0, r0, #0x10
	lsrs r1, r0, #0xf
	b _08F11EC4
	.align 2, 0
_08F11EAC: .4byte gUnknown_03003500
_08F11EB0:
	adds r0, r2, r1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #5
	adds r1, r1, r3
	ldr r0, _08F11EF8 @ =gEnemyData
	adds r1, r1, r0
	ldr r0, _08F11EFC @ =0x000003FF
	ldrh r1, [r1]
	ands r0, r1
	lsls r1, r0, #1
_08F11EC4:
	ldr r0, _08F11F00 @ =gActionPpRequired
	ldrh r0, [r0]
	adds r2, r0, r6
	ldr r0, _08F11F04 @ =0x0000FFFF
	cmp r2, r0
	ble _08F11ED2
	adds r2, r0, #0
_08F11ED2:
	cmp r2, r1
	bls _08F11ED8
	adds r2, r1, #0
_08F11ED8:
	lsrs r0, r5, #1
	lsls r1, r4, #5
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08F11F08 @ =gUnknown_03003500
	adds r1, r1, r0
	strh r2, [r1]
	ldr r1, _08F11F0C @ =gUnknown_03003708
	subs r0, r2, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F11EF8: .4byte gEnemyData
_08F11EFC: .4byte 0x000003FF
_08F11F00: .4byte gActionPpRequired
_08F11F04: .4byte 0x0000FFFF
_08F11F08: .4byte gUnknown_03003500
_08F11F0C: .4byte gUnknown_03003708

	thumb_func_start sub_8F11F10
sub_8F11F10: @ 0x08F11F10
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r1, r1, #0x19
	lsls r2, r4, #5
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r3, _08F11F3C @ =gUnknown_03003500
	adds r0, r0, r3
	ldrh r6, [r0]
	cmp r4, #3
	bhi _08F11F40
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F12074
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08F11F52
	.align 2, 0
_08F11F3C: .4byte gUnknown_03003500
_08F11F40:
	adds r0, r2, r3
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _08F11F7C @ =gEnemyData
	adds r0, r0, r1
	ldr r2, _08F11F80 @ =0x000003FF
	ldrh r0, [r0]
	ands r2, r0
_08F11F52:
	ldr r0, _08F11F84 @ =gActionPpRequired
	ldrh r0, [r0]
	adds r3, r0, r6
	cmp r3, r2
	ble _08F11F5E
	adds r3, r2, #0
_08F11F5E:
	lsrs r0, r5, #1
	lsls r1, r4, #5
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08F11F88 @ =gUnknown_03003500
	adds r1, r1, r0
	strh r3, [r1]
	ldr r1, _08F11F8C @ =gUnknown_03003708
	subs r0, r3, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F11F7C: .4byte gEnemyData
_08F11F80: .4byte 0x000003FF
_08F11F84: .4byte gActionPpRequired
_08F11F88: .4byte gUnknown_03003500
_08F11F8C: .4byte gUnknown_03003708

	thumb_func_start sub_8F11F90
sub_8F11F90: @ 0x08F11F90
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldr r1, _08F11FBC @ =gUnknown_03003500
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #0
	ldr r0, _08F11FC0 @ =gActionPpRequired
	ldrh r0, [r0]
	subs r0, r2, r0
	cmp r0, #0
	bge _08F11FAE
	movs r0, #0
_08F11FAE:
	strb r0, [r1]
	ldr r1, _08F11FC4 @ =gUnknown_03003708
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r1]
	bx lr
	.align 2, 0
_08F11FBC: .4byte gUnknown_03003500
_08F11FC0: .4byte gActionPpRequired
_08F11FC4: .4byte gUnknown_03003708

	thumb_func_start sub_8F11FC8
sub_8F11FC8: @ 0x08F11FC8
	lsls r0, r0, #0x18
	movs r2, #0xfe
	lsrs r0, r0, #0x13
	ands r2, r1
	adds r0, r0, r2
	ldr r1, _08F11FF4 @ =gUnknown_03003500
	adds r1, r0, r1
	ldrh r0, [r1]
	adds r2, r0, #0
	ldr r0, _08F11FF8 @ =gActionPpRequired
	ldrh r0, [r0]
	subs r0, r2, r0
	cmp r0, #0
	bge _08F11FE6
	movs r0, #0
_08F11FE6:
	strh r0, [r1]
	ldr r1, _08F11FFC @ =gUnknown_03003708
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	bx lr
	.align 2, 0
_08F11FF4: .4byte gUnknown_03003500
_08F11FF8: .4byte gActionPpRequired
_08F11FFC: .4byte gUnknown_03003708

	thumb_func_start sub_8F12000
sub_8F12000: @ 0x08F12000
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r1, r1, #0x19
	lsls r0, r4, #5
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F12030 @ =gUnknown_03003500
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8F0E8DC
	ldr r1, _08F12034 @ =gActionPpRequired
	strh r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F11E80
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F12030: .4byte gUnknown_03003500
_08F12034: .4byte gActionPpRequired

	thumb_func_start sub_8F12038
sub_8F12038: @ 0x08F12038
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r1, r1, #0x19
	lsls r0, r4, #5
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F1206C @ =gUnknown_03003500
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	bl sub_8F0E8DC
	ldr r1, _08F12070 @ =gActionPpRequired
	strh r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F11FC8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F1206C: .4byte gUnknown_03003500
_08F12070: .4byte gActionPpRequired

	thumb_func_start sub_8F12074
sub_8F12074: @ 0x08F12074
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	subs r0, r2, #2
	cmp r0, #0xd
	bls _08F12086
	b _08F1218C
_08F12086:
	lsls r0, r0, #2
	ldr r1, _08F12090 @ =_08F12094
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F12090: .4byte _08F12094
_08F12094: @ jump table
	.4byte _08F12150 @ case 0
	.4byte _08F1218C @ case 1
	.4byte _08F12150 @ case 2
	.4byte _08F1218C @ case 3
	.4byte _08F120CC @ case 4
	.4byte _08F1218C @ case 5
	.4byte _08F12104 @ case 6
	.4byte _08F1218C @ case 7
	.4byte _08F1218C @ case 8
	.4byte _08F12170 @ case 9
	.4byte _08F12170 @ case 10
	.4byte _08F12170 @ case 11
	.4byte _08F12170 @ case 12
	.4byte _08F12170 @ case 13
_08F120CC:
	ldr r1, _08F120F8 @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	lsrs r2, r2, #1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	lsls r2, r2, #1
	adds r2, r1, r2
	ldr r0, _08F120FC @ =gUnknown_030031D0
	adds r2, r2, r0
	adds r0, r0, r1
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, _08F12100 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x3f
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r2, [r2]
	adds r1, r2, r0
	b _08F1218E
	.align 2, 0
_08F120F8: .4byte gUnknown_03003500
_08F120FC: .4byte gUnknown_030031D0
_08F12100: .4byte gItemData
_08F12104:
	ldr r1, _08F12144 @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	lsrs r1, r2, #1
	ldrb r0, [r0, #0x18]
	lsls r4, r0, #6
	lsls r1, r1, #1
	adds r1, r4, r1
	ldr r0, _08F12148 @ =gUnknown_030031D0
	adds r1, r1, r0
	subs r0, #0x40
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r2, r0, #3
	ldr r5, _08F1214C @ =gItemData
	adds r2, r2, r5
	movs r3, #0x3f
	adds r0, r3, #0
	ldrb r2, [r2, #3]
	ands r0, r2
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r4, #0x6a
	ldrb r4, [r4]
	lsls r0, r4, #3
	adds r0, r0, r5
	ldrb r0, [r0, #3]
	ands r3, r0
	adds r1, r1, r3
	b _08F1218E
	.align 2, 0
_08F12144: .4byte gUnknown_03003500
_08F12148: .4byte gUnknown_030031D0
_08F1214C: .4byte gItemData
_08F12150:
	ldr r1, _08F12168 @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	lsrs r1, r2, #1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F1216C @ =gUnknown_030031D0
	adds r0, r0, r1
	ldrh r1, [r0]
	b _08F1218E
	.align 2, 0
_08F12168: .4byte gUnknown_03003500
_08F1216C: .4byte gUnknown_030031D0
_08F12170:
	ldr r1, _08F12184 @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	adds r0, r0, r2
	ldr r1, _08F12188 @ =gUnknown_030031D0
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08F1218E
	.align 2, 0
_08F12184: .4byte gUnknown_03003500
_08F12188: .4byte gUnknown_030031D0
_08F1218C:
	movs r1, #0
_08F1218E:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F12198
sub_8F12198: @ 0x08F12198
	push {lr}
	ldr r2, _08F121B8 @ =gUnknown_03003500
	ldr r0, _08F121BC @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xd]
	ldr r1, _08F121C0 @ =gUnknown_030036EC
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r1, r1, r2
	ldrb r1, [r1, #0xe]
	bl sub_8F12228
	pop {r1}
	bx r1
	.align 2, 0
_08F121B8: .4byte gUnknown_03003500
_08F121BC: .4byte gUnknown_03003700
_08F121C0: .4byte gUnknown_030036EC

	thumb_func_start sub_8F121C4
sub_8F121C4: @ 0x08F121C4
	push {lr}
	ldr r2, _08F121E4 @ =gUnknown_03003500
	ldr r0, _08F121E8 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xd]
	ldr r1, _08F121EC @ =gUnknown_030036EC
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r1, r1, r2
	ldrb r1, [r1, #0xf]
	bl sub_8F12228
	pop {r1}
	bx r1
	.align 2, 0
_08F121E4: .4byte gUnknown_03003500
_08F121E8: .4byte gUnknown_03003700
_08F121EC: .4byte gUnknown_030036EC

	thumb_func_start sub_8F121F0
sub_8F121F0: @ 0x08F121F0
	lsls r0, r0, #0x18
	ldr r1, _08F1221C @ =gUnknown_03003500
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldr r1, _08F12220 @ =gUnknown_03003654
	ldrb r0, [r0, #0xa]
	ldrb r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08F12214
	ldr r2, _08F12224 @ =gActionPpRequired
	ldrh r3, [r2]
	lsrs r0, r3, #1
	strh r0, [r2]
	cmp r0, #0
	bne _08F12214
	movs r0, #1
	strh r0, [r2]
_08F12214:
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08F1221C: .4byte gUnknown_03003500
_08F12220: .4byte gUnknown_03003654
_08F12224: .4byte gActionPpRequired

	thumb_func_start sub_8F12228
sub_8F12228: @ 0x08F12228
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x19
	subs r4, r2, r1
	cmp r4, #0
	bge _08F1223A
	movs r4, #0
_08F1223A:
	lsls r0, r4, #8
	adds r1, r2, #0
	bl __divsi3
	adds r4, r0, #0
	bl Random
	lsrs r0, r0, #0x18
	cmp r0, r4
	blo _08F12252
	movs r0, #1
	b _08F12254
_08F12252:
	movs r0, #0
_08F12254:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F1225C
sub_8F1225C: @ 0x08F1225C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	ldr r1, _08F122A8 @ =gUnknown_03003500
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
	ldr r6, _08F122B8 @ =gUnknown_030036F0
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
_08F122A8: .4byte gUnknown_03003500
_08F122AC: .4byte gUnknown_030031F0
_08F122B0: .4byte gBattleItemInventoryIdx
_08F122B4: .4byte gBattleItemId
_08F122B8: .4byte gUnknown_030036F0
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

	thumb_func_start sub_8F122DC
sub_8F122DC: @ 0x08F122DC
	ldr r0, _08F122F0 @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bls _08F122F8
	ldr r0, _08F122F4 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	bls _08F122F8
	movs r0, #1
	b _08F122FA
	.align 2, 0
_08F122F0: .4byte gUnknown_030036EC
_08F122F4: .4byte gEnemyGroupSpecialEncounter
_08F122F8:
	movs r0, #0
_08F122FA:
	bx lr

	thumb_func_start sub_8F122FC
sub_8F122FC: @ 0x08F122FC
	ldr r0, _08F12308 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08F1230C
	movs r0, #0
	b _08F1230E
	.align 2, 0
_08F12308: .4byte gEnemyGroupSpecialEncounter
_08F1230C:
	movs r0, #1
_08F1230E:
	bx lr

	thumb_func_start sub_8F12310
sub_8F12310: @ 0x08F12310
	ldr r0, _08F1232C @ =gUnknown_030036EC
	ldrb r1, [r0]
	cmp r1, #3
	bhi _08F12334
	ldr r1, _08F12330 @ =gUnknown_03003500
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	cmp r0, #5
	bne _08F12334
	movs r0, #1
	b _08F12336
	.align 2, 0
_08F1232C: .4byte gUnknown_030036EC
_08F12330: .4byte gUnknown_03003500
_08F12334:
	movs r0, #0
_08F12336:
	bx lr
