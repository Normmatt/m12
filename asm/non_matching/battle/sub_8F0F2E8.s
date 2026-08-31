.syntax unified
.section .text
@	thumb_func_start sub_8F0F2E8
@sub_8F0F2E8: @ 0x08F0F2E8
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
	ldr r7, _08F0F394 @ =gBattlerData
_08F0F300:
	movs r4, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	ldrb r0, [r7, #0x1d]
	ldr r1, _08F0F394 @ =gBattlerData
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
	ldr r1, _08F0F394 @ =gBattlerData
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
_08F0F394: .4byte gBattlerData
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

.syntax divided
