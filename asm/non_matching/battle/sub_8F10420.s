.syntax unified
.section .text
@	thumb_func_start sub_8F10420
@sub_8F10420: @ 0x08F10420
	lsls r0, r0, #0x18
	ldr r3, _08F10448 @ =gMiscContainer
	ldr r1, _08F1044C @ =gBattlerData
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldrb r2, [r0, #0x18]
	lsls r1, r2, #5
	ldr r2, _08F10450 @ =gEnemyData
	adds r1, r1, r2
	str r1, [r3]
	ldr r2, _08F10454 @ =gUnknown_03003684
	movs r1, #3
	ldrb r0, [r0, #0x1a]
	ands r1, r0
	strb r1, [r2]
	ldr r0, _08F10458 @ =gUnknown_030034F4
	lsls r1, r1, #3
	strb r1, [r0]
	bx lr
	.align 2, 0
_08F10448: .4byte gMiscContainer
_08F1044C: .4byte gBattlerData
_08F10450: .4byte gEnemyData
_08F10454: .4byte gUnknown_03003684
_08F10458: .4byte gUnknown_030034F4

.syntax divided
