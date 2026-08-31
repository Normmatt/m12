.syntax unified
.section .text
@	thumb_func_start sub_8F0F570
@sub_8F0F570: @ 0x08F0F570
	push {r4, lr}
	ldr r0, _08F0F590 @ =gBattleActionData
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
_08F0F590: .4byte gBattleActionData
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

.syntax divided
