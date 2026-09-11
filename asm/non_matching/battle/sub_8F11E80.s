.syntax unified
.section .text
@	thumb_func_start sub_8F11E80
@sub_8F11E80: @ 0x08F11E80
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r1, r1, #0x19
	lsls r2, r4, #5
	lsls r3, r1, #1
	adds r0, r2, r3
	ldr r1, _08F11EAC @ =gBattlerData
	adds r0, r0, r1
	ldrh r6, [r0]
	cmp r4, #3
	bhi _08F11EB0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F12074
	lsls r0, r0, #0x10
	lsrs r1, r0, #0xf
	b _08F11EC4
	.align 2, 0
_08F11EAC: .4byte gBattlerData
_08F11EB0:
	adds r0, r2, r1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #5
	adds r1, r1, r3
	ldr r0, _08F11EF8 @ =gEnemyData
	adds r1, r1, r0
	ldr r0, _08F11EFC @ =0x000003FF
	ldrh r1, [r1]
	ands r0, r1
	lsls r1, r0, #1
_08F11EC4:
	ldr r0, _08F11F00 @ =gActionPpRequired
	ldrh r0, [r0]
	adds r2, r0, r6
	ldr r0, _08F11F04 @ =0x0000FFFF
	cmp r2, r0
	ble _08F11ED2
	adds r2, r0, #0
_08F11ED2:
	cmp r2, r1
	bls _08F11ED8
	adds r2, r1, #0
_08F11ED8:
	lsrs r0, r5, #1
	lsls r1, r4, #5
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08F11F08 @ =gBattlerData
	adds r1, r1, r0
	strh r2, [r1]
	ldr r1, _08F11F0C @ =gUnknown_03003708
	subs r0, r2, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F11EF8: .4byte gEnemyData
_08F11EFC: .4byte 0x000003FF
_08F11F00: .4byte gActionPpRequired
_08F11F04: .4byte 0x0000FFFF
_08F11F08: .4byte gBattlerData
_08F11F0C: .4byte gUnknown_03003708

.syntax divided
