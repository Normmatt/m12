.syntax unified
.section .text
@	thumb_func_start sub_8F0FD64
@sub_8F0FD64: @ 0x08F0FD64
	push {r4, r5, lr}
	ldr r0, _08F0FD84 @ =gBattleActionData
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
_08F0FD84: .4byte gBattleActionData
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
	ldr r3, _08F0FDFC @ =gBattlerData
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
_08F0FDFC: .4byte gBattlerData
_08F0FE00: .4byte gUnknown_03003700
_08F0FE04: .4byte gUnknown_030036EC
_08F0FE08:
	ldr r0, _08F0FE5C @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0FE12
	b _08F0FF40
_08F0FE12:
	ldr r2, _08F0FE60 @ =gBattlerData
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
_08F0FE60: .4byte gBattlerData
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
	ldr r1, _08F0FEB4 @ =gBattlerData
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
_08F0FEB4: .4byte gBattlerData
_08F0FEB8: .4byte gUnknown_03003700
_08F0FEBC: .4byte gUnknown_03003660
_08F0FEC0: .4byte gUnknown_030036EC
_08F0FEC4:
	ldr r2, _08F0FEDC @ =gBattlerData
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
_08F0FEDC: .4byte gBattlerData
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
	ldr r1, _08F0FF24 @ =gBattlerData
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
_08F0FF24: .4byte gBattlerData
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
	ldr r1, _08F0FF68 @ =gBattlerData
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
_08F0FF68: .4byte gBattlerData
_08F0FF6C: .4byte gUnknown_030036EC
_08F0FF70:
	ldr r1, _08F0FF8C @ =gBattlerData
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
_08F0FF8C: .4byte gBattlerData
_08F0FF90: .4byte gUnknown_030036EC
_08F0FF94:
	bl Random
	lsrs r2, r0, #0x1f
	b _08F1005A
_08F0FF9C:
	ldr r0, _08F0FFD4 @ =gBattlerData
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
_08F0FFD4: .4byte gBattlerData
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
	ldr r1, _08F10008 @ =gBattlerData
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
_08F10008: .4byte gBattlerData
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
	ldr r1, _08F1003C @ =gBattlerData
	lsls r0, r3, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	cmp r0, #4
	bls _08F1005A
	b _08F0FF40
	.align 2, 0
_08F10038: .4byte gUnknown_030036EC
_08F1003C: .4byte gBattlerData
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

.syntax divided
