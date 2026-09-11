.syntax unified
.section .text
@	thumb_func_start sub_8F107D8
@sub_8F107D8: @ 0x08F107D8
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
	ldr r5, _08F1088C @ =gBattlerData
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
	ldr r7, _08F1088C @ =gBattlerData
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
_08F1088C: .4byte gBattlerData
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
	ldr r4, _08F1091C @ =gBattlerData
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
	ldr r2, _08F1091C @ =gBattlerData
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
	ldr r1, _08F1091C @ =gBattlerData
	ldr r0, _08F10920 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	strb r4, [r0, #0x1c]
	b _08F10B06
	.align 2, 0
_08F10918: .4byte gUnknown_030036EC
_08F1091C: .4byte gBattlerData
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
	ldr r2, _08F109A8 @ =gBattlerData
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
_08F109A8: .4byte gBattlerData
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
	ldr r2, _08F10A44 @ =gBattlerData
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
_08F10A44: .4byte gBattlerData
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
	ldr r1, _08F10B14 @ =gBattlerData
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
_08F10B14: .4byte gBattlerData
_08F10B18: .4byte gUnknown_03003700

.syntax divided
