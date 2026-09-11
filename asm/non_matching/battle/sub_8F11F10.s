.syntax unified
.section .text
@	thumb_func_start sub_8F11F10
@sub_8F11F10: @ 0x08F11F10
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r1, r1, #0x19
	lsls r2, r4, #5
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r3, _08F11F3C @ =gBattlerData
	adds r0, r0, r3
	ldrh r6, [r0]
	cmp r4, #3
	bhi _08F11F40
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F12074
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08F11F52
	.align 2, 0
_08F11F3C: .4byte gBattlerData
_08F11F40:
	adds r0, r2, r3
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _08F11F7C @ =gEnemyData
	adds r0, r0, r1
	ldr r2, _08F11F80 @ =0x000003FF
	ldrh r0, [r0]
	ands r2, r0
_08F11F52:
	ldr r0, _08F11F84 @ =gActionPpRequired
	ldrh r0, [r0]
	adds r3, r0, r6
	cmp r3, r2
	ble _08F11F5E
	adds r3, r2, #0
_08F11F5E:
	lsrs r0, r5, #1
	lsls r1, r4, #5
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08F11F88 @ =gBattlerData
	adds r1, r1, r0
	strh r3, [r1]
	ldr r1, _08F11F8C @ =gUnknown_03003708
	subs r0, r3, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F11F7C: .4byte gEnemyData
_08F11F80: .4byte 0x000003FF
_08F11F84: .4byte gActionPpRequired
_08F11F88: .4byte gBattlerData
_08F11F8C: .4byte gUnknown_03003708

.syntax divided
