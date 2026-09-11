.syntax unified
.section .text
@	thumb_func_start sub_8F105E4
@sub_8F105E4: @ 0x08F105E4
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
	ldr r1, _08F10620 @ =gBattlerData
	b _08F10650
	.align 2, 0
_08F10610: .4byte gUnknown_03003600
_08F10614: .4byte gUnknown_0300362C
_08F10618: .4byte gEnemyGroupSpecialEncounter
_08F1061C: .4byte gUnknown_03003700
_08F10620: .4byte gBattlerData
_08F10624:
	movs r3, #0
	ldr r4, _08F1067C @ =gBattlerData
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
_08F1067C: .4byte gBattlerData
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

.syntax divided
