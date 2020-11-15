
#ifdef NDS_VERSION
#include "macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	thumb_func_start sub_8F12338
sub_8F12338: @ 0x08F12338
	push {r4, r5, r6, lr}
	bl sub_8F016EC
	movs r4, #0
	ldr r5, _08F12350 @ =gUnknown_030007B8
_08F12342:
	cmp r4, #3
	bgt _08F12354
	movs r1, #0x92
	lsls r1, r1, #7
	adds r0, r1, #0
	b _08F1235A
	.align 2, 0
_08F12350: .4byte gUnknown_030007B8
_08F12354:
	movs r2, #0x82
	lsls r2, r2, #7
	adds r0, r2, #0
_08F1235A:
	strh r0, [r5]
	ldr r0, _08F12394 @ =gUnknown_030036C0
	lsls r1, r4, #3
	adds r3, r1, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F12378
	ldrh r0, [r3, #2]
	ldrb r1, [r3, #1]
	movs r6, #4
	ldrsh r2, [r3, r6]
	movs r6, #6
	ldrsh r3, [r3, r6]
	bl sub_8F01700
_08F12378:
	adds r4, #1
	cmp r4, #4
	ble _08F12342
	ldr r1, _08F12398 @ =gUnknown_030007B8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8F0191C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F12394: .4byte gUnknown_030036C0
_08F12398: .4byte gUnknown_030007B8

	thumb_func_start sub_8F1239C
sub_8F1239C: @ 0x08F1239C
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08F123FC @ =gBattleEnemyGroupId
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F12410
	ldr r1, _08F12400 @ =0x0400000C
	ldrh r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	movs r4, #0
	ldr r5, _08F12404 @ =0x0400004C
_08F123BE:
	lsls r0, r4, #0xc
	lsls r1, r4, #8
	adds r0, r0, r1
	lsls r1, r4, #4
	adds r0, r0, r1
	adds r0, r0, r4
	strh r0, [r5]
	movs r0, #4
	bl DelayByAmount
	adds r4, #1
	cmp r4, #0xf
	ble _08F123BE
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r4, #0
	strh r4, [r0]
	ldr r3, _08F12400 @ =0x0400000C
	ldrh r2, [r3]
	ldr r1, _08F12408 @ =0x0000FFBF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldr r2, _08F1240C @ =0x0400000E
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	ldr r0, _08F12404 @ =0x0400004C
	strh r4, [r0]
	b _08F12446
	.align 2, 0
_08F123FC: .4byte gBattleEnemyGroupId
_08F12400: .4byte 0x0400000C
_08F12404: .4byte 0x0400004C
_08F12408: .4byte 0x0000FFBF
_08F1240C: .4byte 0x0400000E
_08F12410:
	ldr r0, _08F124C8 @ =0x0400000C
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
	movs r4, #0
	ldr r5, _08F124CC @ =0x0400004C
_08F1241E:
	lsls r0, r4, #4
	adds r0, r0, r4
	strh r0, [r5]
	movs r0, #4
	bl DelayByAmount
	adds r4, #1
	cmp r4, #0xf
	ble _08F1241E
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r3, #0
	strh r3, [r0]
	ldr r2, _08F124C8 @ =0x0400000C
	ldrh r1, [r2]
	ldr r0, _08F124D0 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08F124CC @ =0x0400004C
	strh r3, [r0]
_08F12446:
	bl sub_8F0B040
	movs r3, #0
	str r3, [sp]
	ldr r0, _08F124D4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08F124D8 @ =0x06002000
	str r1, [r0, #4]
	ldr r2, _08F124DC @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08F124E0 @ =0x06003000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08F124E4 @ =gUnknown_030036C0
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0x20
_08F12474:
	strb r3, [r0]
	subs r0, #8
	cmp r0, r1
	bge _08F12474
	movs r4, #0
	adds r0, r2, #0
	adds r0, #0x20
	strb r4, [r0]
	ldr r0, _08F124E8 @ =0x00009714
	strh r0, [r2, #0x22]
	adds r1, r2, #0
	adds r1, #0x21
	movs r0, #4
	strb r0, [r1]
	movs r0, #0xcc
	strh r0, [r2, #0x24]
	movs r0, #0x6c
	strh r0, [r2, #0x26]
	bl sub_8F0E7F0
	ldr r0, _08F124EC @ =0x04000010
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #6
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F124C8: .4byte 0x0400000C
_08F124CC: .4byte 0x0400004C
_08F124D0: .4byte 0x0000FFBF
_08F124D4: .4byte 0x040000D4
_08F124D8: .4byte 0x06002000
_08F124DC: .4byte 0x85000200
_08F124E0: .4byte 0x06003000
_08F124E4: .4byte gUnknown_030036C0
_08F124E8: .4byte 0x00009714
_08F124EC: .4byte 0x04000010

	thumb_func_start sub_8F124F0
sub_8F124F0: @ 0x08F124F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0xc3
	bl sub_8F12B48
	movs r0, #0x1e
	bl sub_8F0E838
	movs r5, #0
	ldr r0, _08F12540 @ =gUnknown_030034FC
	strb r5, [r0]
	ldr r4, _08F12544 @ =gGameInfo
	movs r6, #0x80
_08F12512:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r8, r0
	cmp r0, #0
	beq _08F12564
	cmp r0, #5
	bls _08F12548
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r4
	adds r0, #0x41
	adds r1, r6, #0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F12564
	mov r0, r8
	bl sub_8F09484
	b _08F12564
	.align 2, 0
_08F12540: .4byte gUnknown_030034FC
_08F12544: .4byte gGameInfo
_08F12548:
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r4
	adds r0, #0x41
	adds r1, r6, #0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F12564
	ldr r1, _08F12748 @ =gUnknown_030034FC
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08F12564:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F12512
	ldr r1, _08F12748 @ =gUnknown_030034FC
	ldrb r4, [r1]
	cmp r4, #0
	bne _08F12578
	b _08F1297C
_08F12578:
	ldr r0, _08F1274C @ =gUnknown_03003600
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F125F8
	ldr r0, _08F12750 @ =gExperiencePointsGained
	adds r5, r4, #0
	ldr r4, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl __udivsi3
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	str r3, [sp, #0xc]
	bl __umodsi3
	ldr r3, [sp, #0xc]
	cmp r0, #0
	beq _08F125A2
	adds r3, #1
_08F125A2:
	movs r5, #0
	ldr r4, _08F12754 @ =gGameInfo
	adds r6, r4, #0
	adds r6, #0x11
_08F125AA:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r8, r0
	cmp r0, #0
	beq _08F125EE
	cmp r0, #5
	bhi _08F125EE
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r4
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F125EE
	mov r1, r8
	lsls r0, r1, #6
	adds r7, r0, r6
	ldrb r0, [r7]
	adds r2, r0, r3
	ldrb r1, [r7, #1]
	lsls r0, r1, #8
	adds r2, r2, r0
	ldrb r1, [r7, #2]
	lsls r0, r1, #0x10
	adds r2, r2, r0
	strb r2, [r7]
	lsrs r0, r2, #8
	strb r0, [r7, #1]
	lsrs r0, r2, #0x10
	strb r0, [r7, #2]
_08F125EE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F125AA
_08F125F8:
	bl sub_8F12B9C
	ldr r1, _08F12758 @ =gUnknown_03003700
	movs r0, #0
	strb r0, [r1]
_08F12602:
	ldr r1, _08F1275C @ =gUnknown_03003500
	ldr r0, _08F12758 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F12614
	b _08F12868
_08F12614:
	ldrb r0, [r1, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #5
	bls _08F12624
	b _08F12868
_08F12624:
	ldr r5, _08F12754 @ =gGameInfo
	mov r2, r8
	subs r2, #1
	lsls r0, r2, #6
	adds r3, r0, r5
	adds r1, r3, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _08F12640
	b _08F12868
_08F12640:
	ldr r0, _08F1274C @ =gUnknown_03003600
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x38
	str r1, [sp, #8]
	ldr r1, _08F12760 @ =gUnknown_08F5C31C
	cmp r0, #0
	beq _08F12652
	b _08F127F4
_08F12652:
	adds r0, r3, #0
	adds r0, #0x50
	ldrb r4, [r0]
	cmp r4, #0x62
	bls _08F1265E
	b _08F127F4
_08F1265E:
	ldr r3, [sp, #8]
	lsls r0, r3, #3
	adds r7, r0, r1
	mov r0, r8
	lsls r0, r0, #6
	mov sb, r0
	str r5, [sp, #4]
_08F1266C:
	lsls r0, r2, #6
	adds r6, r0, r5
	adds r0, r6, #0
	adds r0, #0x51
	adds r1, r6, #0
	adds r1, #0x52
	ldrb r1, [r1]
	lsls r2, r1, #8
	ldrb r0, [r0]
	orrs r2, r0
	adds r0, r6, #0
	adds r0, #0x53
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	adds r1, r4, #2
	adds r0, r4, #1
	muls r1, r0, r1
	muls r0, r1, r0
	ldrb r1, [r7]
	muls r0, r1, r0
	asrs r3, r0, #8
	ldr r1, _08F12760 @ =gUnknown_08F5C31C
	cmp r3, r2
	bls _08F126A0
	b _08F127F4
_08F126A0:
	adds r0, r6, #0
	adds r0, #0x50
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	bl sub_8F12B9C
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #0x1f
	bl ChangeBgMusic
	movs r0, #0x82
	bl DrawBattleStatusTextById
	adds r0, r5, #0
	adds r0, #0xb
	ldrb r1, [r7, #3]
	add r0, sb
	movs r2, #0x86
	bl sub_8F12A0C
	adds r0, r5, #6
	ldr r2, _08F12764 @ =gUnknown_03003708
	ldrh r1, [r2]
	add r0, sb
	movs r2, #0
	bl sub_8F12A50
	adds r0, r5, #0
	adds r0, #0xc
	ldrb r1, [r7, #4]
	add r0, sb
	movs r2, #0x87
	bl sub_8F12A0C
	adds r0, r5, #0
	adds r0, #8
	ldr r3, _08F12764 @ =gUnknown_03003708
	ldrh r1, [r3]
	add r0, sb
	movs r2, #0
	bl sub_8F12A50
	adds r0, r5, #0
	adds r0, #0xd
	ldrb r1, [r7, #5]
	add r0, sb
	movs r2, #0x88
	bl sub_8F12A0C
	adds r0, r5, #0
	adds r0, #0xe
	ldrb r1, [r7, #6]
	add r0, sb
	movs r2, #0x89
	bl sub_8F12A0C
	adds r0, r5, #0
	adds r0, #0xf
	ldrb r1, [r7, #7]
	add r0, sb
	movs r2, #0x8a
	bl sub_8F12A0C
	adds r0, r6, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r4, r0, #0
	adds r4, #0x14
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r1, [r0]
	subs r0, r4, r1
	mov r2, r8
	lsls r5, r2, #6
	cmp r0, #7
	ble _08F12768
	bl Random
	lsrs r4, r0, #0x1c
	b _08F1277A
	.align 2, 0
_08F12748: .4byte gUnknown_030034FC
_08F1274C: .4byte gUnknown_03003600
_08F12750: .4byte gExperiencePointsGained
_08F12754: .4byte gGameInfo
_08F12758: .4byte gUnknown_03003700
_08F1275C: .4byte gUnknown_03003500
_08F12760: .4byte gUnknown_08F5C31C
_08F12764: .4byte gUnknown_03003708
_08F12768:
	cmp r4, r1
	ble _08F12774
	bl Random
	lsrs r4, r0, #0x1d
	b _08F1277A
_08F12774:
	bl Random
	lsrs r4, r0, #0x1f
_08F1277A:
	ldr r0, _08F127B4 @ =gUnknown_03003192
	adds r0, r5, r0
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x84
	bl sub_8F12A50
	mov r3, r8
	cmp r3, #2
	bhi _08F127D8
	mov r1, sl
	lsls r0, r1, #6
	ldr r2, [sp, #4]
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x4f
	ldrb r3, [r2]
	lsls r1, r3, #1
	adds r1, r3, r1
	asrs r4, r1, #1
	adds r0, #0x44
	ldrh r1, [r0]
	subs r0, r4, r1
	cmp r0, #7
	ble _08F127B8
	bl Random
	lsrs r4, r0, #0x1c
	b _08F127CA
	.align 2, 0
_08F127B4: .4byte gUnknown_03003192
_08F127B8:
	cmp r4, r1
	ble _08F127C4
	bl Random
	lsrs r4, r0, #0x1d
	b _08F127CA
_08F127C4:
	bl Random
	lsrs r4, r0, #0x1f
_08F127CA:
	ldr r0, _08F128BC @ =gUnknown_03003194
	adds r0, r5, r0
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x85
	bl sub_8F12A50
_08F127D8:
	ldr r0, _08F128C0 @ =gUnknown_03003600
	ldrb r0, [r0]
	ldr r1, _08F128C4 @ =gUnknown_08F5C31C
	cmp r0, #0
	bne _08F127F4
	ldr r5, _08F128C8 @ =gGameInfo
	mov r2, sl
	lsls r0, r2, #6
	adds r0, r0, r5
	adds r0, #0x50
	ldrb r4, [r0]
	cmp r4, #0x62
	bhi _08F127F4
	b _08F1266C
_08F127F4:
	ldr r2, [sp, #8]
	lsls r0, r2, #3
	adds r7, r0, r1
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _08F12868
	movs r4, #0
	ldr r3, _08F128C8 @ =gGameInfo
	mov sb, r3
	mov r0, sl
	lsls r0, r0, #6
	mov r8, r0
	add r0, sb
	adds r0, #0x50
	mov sl, r0
_08F12812:
	lsrs r0, r4, #3
	add r0, r8
	mov r1, sb
	adds r1, #0x70
	adds r6, r0, r1
	movs r0, #7
	ands r0, r4
	movs r5, #0x80
	asrs r5, r0
	adds r0, r5, #0
	ldrb r1, [r6]
	ands r0, r1
	cmp r0, #0
	bne _08F1285E
	lsls r0, r4, #3
	ldrb r2, [r7, #2]
	adds r0, r2, r0
	ldr r3, _08F128CC @ =gUnknown_08F5C51C
	adds r0, r0, r3
	mov r1, sl
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	blo _08F1285E
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08F1285E
	ldrb r2, [r6]
	orrs r5, r2
	strb r5, [r6]
	movs r0, #9
	bl PlaySfxById1
	movs r0, #0x83
	bl DrawBattleStatusTextById
_08F1285E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x3f
	bls _08F12812
_08F12868:
	ldr r1, _08F128D0 @ =gUnknown_03003700
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08F1287A
	b _08F12602
_08F1287A:
	ldr r0, _08F128C0 @ =gUnknown_03003600
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F1296C
	ldr r4, _08F128D4 @ =gUnknown_030031A2
	ldr r5, _08F128D8 @ =gMoneyGained
	ldrh r1, [r5]
	adds r0, r4, #0
	bl GainMoney
	adds r4, #3
	ldrh r1, [r5]
	adds r0, r4, #0
	bl GainMoney
	ldr r2, _08F128DC @ =gLastItemDropped
	ldrb r1, [r2]
	cmp r1, #0
	beq _08F1296C
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F128E0
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	bl Random
	lsrs r0, r0, #0x13
	cmp r0, #0
	bne _08F1296C
	b _08F1290A
	.align 2, 0
_08F128BC: .4byte gUnknown_03003194
_08F128C0: .4byte gUnknown_03003600
_08F128C4: .4byte gUnknown_08F5C31C
_08F128C8: .4byte gGameInfo
_08F128CC: .4byte gUnknown_08F5C51C
_08F128D0: .4byte gUnknown_03003700
_08F128D4: .4byte gUnknown_030031A2
_08F128D8: .4byte gMoneyGained
_08F128DC: .4byte gLastItemDropped
_08F128E0:
	ldrb r2, [r2]
	lsls r0, r2, #3
	ldr r1, _08F12944 @ =gItemData
	adds r0, r0, r1
	ldr r3, _08F12948 @ =0x00001FFF
	adds r1, r3, #0
	ldrh r4, [r0, #6]
	orrs r4, r1
	movs r1, #0x80
	lsls r1, r1, #9
_08F128F4:
	lsls r4, r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08F128F4
	bl Random
	lsls r1, r4, #0x18
	ands r1, r0
	cmp r1, #0
	bne _08F1296C
_08F1290A:
	movs r5, #0
	ldr r6, _08F1294C @ =gUnknown_03003198
_08F1290E:
	adds r0, r5, r6
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F12936
	movs r4, #0
	lsls r2, r1, #6
	ldr r3, _08F12950 @ =gUnknown_030031F0
_08F12922:
	adds r0, r4, r2
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F12954
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08F12922
_08F12936:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F1290E
	b _08F1296C
	.align 2, 0
_08F12944: .4byte gItemData
_08F12948: .4byte 0x00001FFF
_08F1294C: .4byte gUnknown_03003198
_08F12950: .4byte gUnknown_030031F0
_08F12954:
	ldr r2, _08F12974 @ =gLastItemDropped
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _08F12978 @ =gCurrentItemId
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #6
	bl PlaySfxById1
	movs r0, #0x8c
	bl DrawBattleStatusTextById
_08F1296C:
	bl FadeOut
	b _08F129B2
	.align 2, 0
_08F12974: .4byte gLastItemDropped
_08F12978: .4byte gCurrentItemId
_08F1297C:
	bl sub_8F094CC
	bl sub_8F00ADC
	str r4, [sp]
	ldr r1, _08F129EC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08F129F0 @ =0x06001000
	str r0, [r1, #4]
	ldr r0, _08F129F4 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r5, #0
	ldr r2, _08F129F8 @ =gUnknown_030036C0
	movs r1, #0
_08F1299C:
	lsls r0, r5, #3
	adds r0, r0, r2
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08F1299C
	ldr r1, _08F129FC @ =gOverworldMusic
	movs r0, #0xff
	strb r0, [r1]
_08F129B2:
	bl UpdateCharactersInParty
	ldr r0, _08F12A00 @ =0x04000012
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08F129F8 @ =gUnknown_030036C0
	adds r0, #0x20
	strb r1, [r0]
	bl sub_8F0B040
	bl sub_8F0E7F0
	ldr r0, _08F12A04 @ =gUnknown_030007A0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08F129DC
	ldr r1, _08F12A08 @ =gUnknown_03000824
	movs r0, #1
	strb r0, [r1]
_08F129DC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F129EC: .4byte 0x040000D4
_08F129F0: .4byte 0x06001000
_08F129F4: .4byte 0x85000200
_08F129F8: .4byte gUnknown_030036C0
_08F129FC: .4byte gOverworldMusic
_08F12A00: .4byte 0x04000012
_08F12A04: .4byte gUnknown_030007A0
_08F12A08: .4byte gUnknown_03000824

	thumb_func_start sub_8F12A0C
sub_8F12A0C: @ 0x08F12A0C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldrb r5, [r6]
	bl Random
	lsrs r0, r0, #0x1e
	adds r0, r0, r4
	lsrs r0, r0, #1
	adds r2, r5, r0
	cmp r2, #0xff
	ble _08F12A2E
	movs r2, #0xff
_08F12A2E:
	ldr r1, _08F12A4C @ =gUnknown_03003708
	subs r0, r2, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	cmp r0, #0
	beq _08F12A44
	strb r2, [r6]
	adds r0, r7, #0
	bl DrawBattleStatusTextById
_08F12A44:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F12A4C: .4byte gUnknown_03003708

	thumb_func_start sub_8F12A50
sub_8F12A50: @ 0x08F12A50
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrh r0, [r4]
	adds r3, r0, r1
	ldr r1, _08F12A84 @ =0x000003E7
	cmp r3, r1
	ble _08F12A68
	adds r3, r1, #0
_08F12A68:
	ldr r1, _08F12A88 @ =gUnknown_03003708
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	cmp r0, #0
	beq _08F12A7E
	strh r3, [r4]
	adds r0, r2, #0
	bl DrawBattleStatusTextById
_08F12A7E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F12A84: .4byte 0x000003E7
_08F12A88: .4byte gUnknown_03003708

	thumb_func_start GainMoney
GainMoney: @ 0x08F12A8C
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r3, #1]
	lsls r0, r2, #8
	ldrb r4, [r3]
	orrs r0, r4
	ldrb r4, [r3, #2]
	lsls r2, r4, #0x10
	adds r0, r0, r2
	adds r1, r0, r1
	ldr r0, _08F12ABC @ =0x00FFFFFF
	cmp r1, r0
	ble _08F12AAC
	adds r1, r0, #0
_08F12AAC:
	strb r1, [r3]
	asrs r0, r1, #8
	strb r0, [r3, #1]
	asrs r0, r1, #0x10
	strb r0, [r3, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F12ABC: .4byte 0x00FFFFFF

	thumb_func_start sub_8F12AC0
sub_8F12AC0: @ 0x08F12AC0
	push {r4, r5, r6, lr}
	movs r4, #4
	ldr r6, _08F12AFC @ =gUnknown_030036C0
_08F12AC6:
	movs r2, #0
	adds r5, r4, #4
_08F12ACA:
	lsls r0, r2, #3
	adds r0, r0, r6
	ldrh r1, [r0, #6]
	subs r1, #4
	strh r1, [r0, #6]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _08F12ACA
	bl sub_8F0E7F0
	ldr r0, _08F12B00 @ =0x04000012
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #8
	strh r4, [r0]
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x30
	bls _08F12AC6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F12AFC: .4byte gUnknown_030036C0
_08F12B00: .4byte 0x04000012

	thumb_func_start sub_8F12B04
sub_8F12B04: @ 0x08F12B04
	push {r4, r5, r6, lr}
	movs r4, #0x2c
	ldr r6, _08F12B40 @ =gUnknown_030036C0
_08F12B0A:
	movs r2, #0
	subs r5, r4, #4
_08F12B0E:
	lsls r0, r2, #3
	adds r0, r0, r6
	ldrh r1, [r0, #6]
	adds r1, #4
	strh r1, [r0, #6]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _08F12B0E
	bl sub_8F0E7F0
	ldr r0, _08F12B44 @ =0x04000012
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #8
	strh r4, [r0]
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08F12B0A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F12B40: .4byte gUnknown_030036C0
_08F12B44: .4byte 0x04000012

	thumb_func_start sub_8F12B48
sub_8F12B48: @ 0x08F12B48
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, _08F12B78 @ =gUnknown_03003500
	mov ip, r3
_08F12B52:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F12B88
	ldrb r0, [r3, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F12B7C @ =gUnknown_030031D0
	adds r2, r1, r0
	adds r1, r5, #0
	ldrb r0, [r3, #1]
	ands r1, r0
	movs r4, #0
	strb r1, [r2, #1]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08F12B80
	strh r4, [r2, #0x14]
	b _08F12B84
	.align 2, 0
_08F12B78: .4byte gUnknown_03003500
_08F12B7C: .4byte gUnknown_030031D0
_08F12B80:
	ldrh r0, [r3, #2]
	strh r0, [r2, #0x14]
_08F12B84:
	ldrh r0, [r3, #4]
	strh r0, [r2, #0x16]
_08F12B88:
	adds r3, #0x20
	mov r0, ip
	adds r0, #0x60
	cmp r3, r0
	ble _08F12B52
	bl sub_8F12B9C
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8F12B9C
sub_8F12B9C: @ 0x08F12B9C
	push {lr}
	sub sp, #8
	mov r0, sp
	bl SaveTextSystemState
	ldr r1, _08F12BC0 @ =gTextPlaySfx
	movs r0, #0
	strb r0, [r1]
	bl DrawPartyInfoWindow
	mov r0, sp
	bl LoadTextSystemState
	bl sub_8F0E7F0
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08F12BC0: .4byte gTextPlaySfx

	thumb_func_start sub_8F12BC4
sub_8F12BC4: @ 0x08F12BC4
	push {r4, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r0, _08F12C14 @ =gUnknown_08F662EC
	ldr r1, _08F12C18 @ =gGameInfo
	ldrh r2, [r0]
	ldrb r3, [r1, #0x18]
	cmp r2, r3
	bls _08F12BF2
	adds r3, r0, #0
	adds r2, r1, #0
	movs r1, #0
_08F12BDE:
	adds r1, #1
	cmp r1, #3
	bgt _08F12BF0
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrb r4, [r2, #0x18]
	cmp r0, r4
	bhi _08F12BDE
_08F12BF0:
	str r1, [sp]
_08F12BF2:
	movs r0, #0x15
	bl sub_8F0EA64
	ldr r0, _08F12C14 @ =gUnknown_08F662EC
	mov r1, sp
	bl HandleSelectMenuInput
	adds r1, r0, #0
	cmp r1, #0
	ble _08F12C0A
	ldr r0, _08F12C18 @ =gGameInfo
	strb r1, [r0, #0x18]
_08F12C0A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F12C14: .4byte gUnknown_08F662EC
_08F12C18: .4byte gGameInfo

	thumb_func_start sub_8F12C1C
sub_8F12C1C: @ 0x08F12C1C
	push {r4, r5, r6, r7, lr}
	ldr r1, _08F12C64 @ =gBattleEnemyGroupId
	strb r0, [r1]
	bl SetupEnemyGroups
	movs r3, #0
	movs r2, #0
	ldr r0, _08F12C68 @ =gMiscContainer
	ldr r5, [r0]
	ldr r6, _08F12C6C @ =gEnemyData
	ldr r4, _08F12C70 @ =0x000003FF
_08F12C32:
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08F12C50
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r1, r4, #0
	ldrh r7, [r0, #2]
	ands r1, r7
	adds r3, r3, r1
	adds r1, r4, #0
	ldrh r0, [r0, #8]
	ands r1, r0
	lsrs r1, r1, #1
	adds r3, r3, r1
_08F12C50:
	adds r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F12C32
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F12C64: .4byte gBattleEnemyGroupId
_08F12C68: .4byte gMiscContainer
_08F12C6C: .4byte gEnemyData
_08F12C70: .4byte 0x000003FF
