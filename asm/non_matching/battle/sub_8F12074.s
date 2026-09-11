.syntax unified
.section .text
@	thumb_func_start sub_8F12074
@sub_8F12074: @ 0x08F12074
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	subs r0, r2, #2
	cmp r0, #0xd
	bls _08F12086
	b _08F1218C
_08F12086:
	lsls r0, r0, #2
	ldr r1, _08F12090 @ =_08F12094
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F12090: .4byte _08F12094
_08F12094: @ jump table
	.4byte _08F12150 @ case 0
	.4byte _08F1218C @ case 1
	.4byte _08F12150 @ case 2
	.4byte _08F1218C @ case 3
	.4byte _08F120CC @ case 4
	.4byte _08F1218C @ case 5
	.4byte _08F12104 @ case 6
	.4byte _08F1218C @ case 7
	.4byte _08F1218C @ case 8
	.4byte _08F12170 @ case 9
	.4byte _08F12170 @ case 10
	.4byte _08F12170 @ case 11
	.4byte _08F12170 @ case 12
	.4byte _08F12170 @ case 13
_08F120CC:
	ldr r1, _08F120F8 @ =gBattlerData
	lsls r0, r3, #5
	adds r0, r0, r1
	lsrs r2, r2, #1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	lsls r2, r2, #1
	adds r2, r1, r2
	ldr r0, _08F120FC @ =gUnknown_030031D0
	adds r2, r2, r0
	adds r0, r0, r1
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, _08F12100 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x3f
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r2, [r2]
	adds r1, r2, r0
	b _08F1218E
	.align 2, 0
_08F120F8: .4byte gBattlerData
_08F120FC: .4byte gUnknown_030031D0
_08F12100: .4byte gItemData
_08F12104:
	ldr r1, _08F12144 @ =gBattlerData
	lsls r0, r3, #5
	adds r0, r0, r1
	lsrs r1, r2, #1
	ldrb r0, [r0, #0x18]
	lsls r4, r0, #6
	lsls r1, r1, #1
	adds r1, r4, r1
	ldr r0, _08F12148 @ =gUnknown_030031D0
	adds r1, r1, r0
	subs r0, #0x40
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r2, r0, #3
	ldr r5, _08F1214C @ =gItemData
	adds r2, r2, r5
	movs r3, #0x3f
	adds r0, r3, #0
	ldrb r2, [r2, #3]
	ands r0, r2
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r4, #0x6a
	ldrb r4, [r4]
	lsls r0, r4, #3
	adds r0, r0, r5
	ldrb r0, [r0, #3]
	ands r3, r0
	adds r1, r1, r3
	b _08F1218E
	.align 2, 0
_08F12144: .4byte gBattlerData
_08F12148: .4byte gUnknown_030031D0
_08F1214C: .4byte gItemData
_08F12150:
	ldr r1, _08F12168 @ =gBattlerData
	lsls r0, r3, #5
	adds r0, r0, r1
	lsrs r1, r2, #1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F1216C @ =gUnknown_030031D0
	adds r0, r0, r1
	ldrh r1, [r0]
	b _08F1218E
	.align 2, 0
_08F12168: .4byte gBattlerData
_08F1216C: .4byte gUnknown_030031D0
_08F12170:
	ldr r1, _08F12184 @ =gBattlerData
	lsls r0, r3, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	adds r0, r0, r2
	ldr r1, _08F12188 @ =gUnknown_030031D0
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08F1218E
	.align 2, 0
_08F12184: .4byte gBattlerData
_08F12188: .4byte gUnknown_030031D0
_08F1218C:
	movs r1, #0
_08F1218E:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
