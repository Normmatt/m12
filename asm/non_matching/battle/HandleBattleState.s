.syntax unified
.section .text
@	thumb_func_start HandleBattleState
@HandleBattleState: @ 0x08F1129C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F112C8 @ =gActionPpRequired
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, _08F112CC @ =gBattleActionData
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
_08F112CC: .4byte gBattleActionData
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
	ldr r1, _08F11508 @ =gBattlerData
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
	ldr r6, _08F11508 @ =gBattlerData
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
_08F11508: .4byte gBattlerData
_08F1150C: .4byte gActionPpRequired
_08F11510: .4byte gUnknown_030036EC
_08F11514: .4byte gUnknown_03003708
_08F11518:
	strh r4, [r0, #2]
_08F1151A:
	ldr r5, _08F11588 @ =gBattlerData
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
	ldr r5, _08F11588 @ =gBattlerData
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
_08F11588: .4byte gBattlerData
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
	ldr r1, _08F11628 @ =gBattlerData
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
_08F11628: .4byte gBattlerData
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
	ldr r1, _08F116B0 @ =gBattlerData
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
_08F116B0: .4byte gBattlerData
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
	ldr r1, _08F11700 @ =gBattlerData
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
_08F11700: .4byte gBattlerData
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
	ldr r1, _08F11838 @ =gBattlerData
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
_08F11838: .4byte gBattlerData
_08F1183C:
	ldr r2, _08F11860 @ =gEnemyData
	ldr r1, _08F11864 @ =gBattlerData
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
_08F11864: .4byte gBattlerData
_08F11868:
	ldr r1, _08F1187C @ =gBattlerData
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
_08F1187C: .4byte gBattlerData
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
	ldr r0, _08F11934 @ =gBattlerData
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
_08F11934: .4byte gBattlerData
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
	ldr r1, _08F119C8 @ =gBattlerData
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
_08F119C8: .4byte gBattlerData
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
	ldr r1, _08F11A2C @ =gBattlerData
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
_08F11A2C: .4byte gBattlerData
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
	ldr r1, _08F11A88 @ =gBattlerData
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
_08F11A88: .4byte gBattlerData
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
	bl PlayNoiseSfx
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
	bl PlayNoiseSfx
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
	bl PlayNoiseSfx
	bl Random
	lsrs r0, r0, #0x1e
	adds r4, r0, #1
	subs r5, #1
	cmp r4, #0
	beq _08F11B5C
_08F11B44:
	movs r0, #1
	bl PlayNoiseSfx
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
	ldr r1, _08F11BC0 @ =gBattlerData
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
_08F11BC0: .4byte gBattlerData
_08F11BC4: .4byte gUnknown_030036EC
_08F11BC8:
	ldr r0, _08F11C20 @ =gBattlerData
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
_08F11C20: .4byte gBattlerData
_08F11C24: .4byte gUnknown_030036EC
_08F11C28: .4byte gActionPpRequired
_08F11C2C: .4byte 0x0000FFFF
_08F11C30: .4byte gUnknown_03003690

.syntax divided
