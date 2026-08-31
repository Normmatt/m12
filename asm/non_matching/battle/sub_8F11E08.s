.syntax unified
.section .text
@	thumb_func_start sub_8F11E08
@sub_8F11E08: @ 0x08F11E08
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r1, r5, #5
	adds r0, r1, r4
	ldr r2, _08F11E30 @ =gBattlerData
	adds r0, r0, r2
	ldrb r6, [r0]
	cmp r5, #3
	bhi _08F11E34
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8F12074
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x17
	b _08F11E44
	.align 2, 0
_08F11E30: .4byte gBattlerData
_08F11E34:
	adds r0, r1, r2
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08F11E70 @ =gEnemyData
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #1
_08F11E44:
	ldr r0, _08F11E74 @ =gActionPpRequired
	ldrh r0, [r0]
	adds r2, r0, r6
	cmp r2, #0xff
	ble _08F11E50
	movs r2, #0xff
_08F11E50:
	cmp r2, r1
	ble _08F11E56
	adds r2, r1, #0
_08F11E56:
	lsls r0, r5, #5
	adds r0, r0, r4
	ldr r1, _08F11E78 @ =gBattlerData
	adds r0, r0, r1
	strb r2, [r0]
	ldr r1, _08F11E7C @ =gUnknown_03003708
	subs r0, r2, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F11E70: .4byte gEnemyData
_08F11E74: .4byte gActionPpRequired
_08F11E78: .4byte gBattlerData
_08F11E7C: .4byte gUnknown_03003708

.syntax divided
