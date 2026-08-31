.syntax unified
.section .text
@	thumb_func_start sub_8F101F4
@sub_8F101F4: @ 0x08F101F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08F10224 @ =gBattlerData
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
_08F10224: .4byte gBattlerData
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
	ldr r2, _08F102C4 @ =gBattleActionData
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
	ldr r1, _08F102CC @ =gBattlerData
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
_08F102C4: .4byte gBattleActionData
_08F102C8: .4byte 0x00006805
_08F102CC: .4byte gBattlerData
_08F102D0:
	ldr r0, _08F10304 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #6
	beq _08F102F0
	ldr r1, _08F10308 @ =gBattlerData
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
_08F10308: .4byte gBattlerData
_08F1030C: .4byte gEnemyData+9
_08F10310: .4byte gUnknown_030036EC

.syntax divided
