.syntax unified
.section .text
@	thumb_func_start sub_8F10C08
@sub_8F10C08: @ 0x08F10C08
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
	ldr r1, _08F10CFC @ =gBattlerData
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
_08F10CFC: .4byte gBattlerData
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
	ldr r1, _08F10D58 @ =gBattlerData
	ldr r0, _08F10D5C @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #0x59
	strb r1, [r0, #0x1d]
	b _08F10E60
	.align 2, 0
_08F10D58: .4byte gBattlerData
_08F10D5C: .4byte gUnknown_03003700
_08F10D60:
	ldr r2, _08F10D9C @ =gMiscContainer
	ldr r1, _08F10DA0 @ =gBattlerData
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
_08F10DA0: .4byte gBattlerData
_08F10DA4: .4byte gUnknown_03003700
_08F10DA8: .4byte gUnknown_030031F0
_08F10DAC:
	ldr r1, _08F10DBC @ =gBattlerData
	ldr r0, _08F10DC0 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #0x48
	strb r1, [r0, #0x1d]
	b _08F10E60
	.align 2, 0
_08F10DBC: .4byte gBattlerData
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
	ldr r3, _08F10DF4 @ =gBattlerData
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
_08F10DF4: .4byte gBattlerData
_08F10DF8: .4byte gUnknown_03003700
_08F10DFC:
	bl sub_8F12BC4
	b _08F10C40
_08F10E02:
	ldr r1, _08F10E14 @ =gBattlerData
	ldr r0, _08F10E18 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #0x1c
	strb r1, [r0, #0x1d]
	b _08F10E60
	.align 2, 0
_08F10E14: .4byte gBattlerData
_08F10E18: .4byte gUnknown_03003700
_08F10E1C:
	ldr r3, _08F10E58 @ =gUnknown_03003700
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F10E52
	adds r2, r3, #0
	ldr r4, _08F10E5C @ =gBattlerData
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
_08F10E5C: .4byte gBattlerData
_08F10E60:
	movs r0, #0
_08F10E62:
	add sp, #0x54
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
