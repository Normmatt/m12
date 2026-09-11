.syntax unified
.section .text
@	thumb_func_start sub_8F0EAAC
@sub_8F0EAAC: @ 0x08F0EAAC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08F0EAD0
	ldr r2, _08F0EAC8 @ =gGameInfo
	ldr r0, _08F0EACC @ =gBattlerData
	lsls r1, r1, #5
	adds r1, r1, r0
	ldrb r3, [r1, #0x18]
	lsls r0, r3, #6
	adds r0, r0, r2
	adds r0, #0x42
	ldrh r0, [r0]
	b _08F0EAE0
	.align 2, 0
_08F0EAC8: .4byte gGameInfo
_08F0EACC: .4byte gBattlerData
_08F0EAD0:
	ldr r2, _08F0EAEC @ =gEnemyData
	ldr r0, _08F0EAF0 @ =gBattlerData
	lsls r1, r1, #5
	adds r1, r1, r0
	ldrb r3, [r1, #0x18]
	lsls r0, r3, #5
	adds r0, r0, r2
	ldrh r0, [r0, #2]
_08F0EAE0:
	lsrs r0, r0, #2
	ldrh r1, [r1, #2]
	cmp r0, r1
	bls _08F0EAF4
	movs r0, #0
	b _08F0EAF6
	.align 2, 0
_08F0EAEC: .4byte gEnemyData
_08F0EAF0: .4byte gBattlerData
_08F0EAF4:
	movs r0, #1
_08F0EAF6:
	bx lr

.syntax divided
