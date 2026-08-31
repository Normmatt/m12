.syntax unified
.section .text
@	thumb_func_start sub_8F0F3B0
@sub_8F0F3B0: @ 0x08F0F3B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08F0F3E8 @ =gBattlerData
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
_08F0F3E8: .4byte gBattlerData
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
	ldr r2, _08F0F508 @ =gBattleActionData
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
_08F0F508: .4byte gBattleActionData
_08F0F50C: .4byte 0x00006805
_08F0F510: .4byte gUnknown_030034F0

.syntax divided
