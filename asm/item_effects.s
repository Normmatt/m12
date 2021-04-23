
#ifdef NDS_VERSION
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	thumb_func_start NothingHappened
NothingHappened: @ 0x08F08094
	push {lr}
	movs r0, #0xe6
	lsls r0, r0, #2
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F080A4
sub_8F080A4: @ 0x08F080A4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08F0817C @ =gUnknown_03000788
	ldr r0, _08F08180 @ =gUnknown_08F1B670
	ldr r1, _08F08184 @ =gUnknown_030007A4
	ldrb r1, [r1]
	lsrs r1, r1, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x78
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, _08F08188 @ =gUnknown_03001508
	ldr r0, _08F0818C @ =gUnknown_08F1B674
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x58
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
_08F080DC:
	ldr r1, _08F08190 @ =gUnknown_03003170
	movs r0, #0
	strb r0, [r1]
	movs r5, #0
	ldr r1, _08F08194 @ =gUnknown_03000784
	ldr r0, _08F08198 @ =gUnknown_03001D40
	str r0, [r1]
	ldrb r0, [r0]
	lsls r7, r2, #0x18
	cmp r0, #0
	beq _08F08150
_08F080F2:
	ldr r2, [r1]
	movs r0, #0x80
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08F0812E
	movs r0, #0x40
	ldrb r1, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08F0812E
	ldrh r0, [r2, #4]
	subs r1, r6, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r2, #6]
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bhi _08F0812E
	cmp r0, #0x3f
	bhi _08F0812E
	movs r0, #0xd
	bl ExecuteScript
	ldr r0, _08F08190 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F08150
_08F0812E:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F08150
	ldr r2, _08F08194 @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F08198 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	adds r1, r2, #0
	cmp r0, #0
	bne _08F080F2
_08F08150:
	cmp r7, #0
	bne _08F0819C
	ldr r0, _08F08190 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F081A8
	ldr r0, _08F08184 @ =gUnknown_030007A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0819C
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F0819C
	adds r0, r4, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #1
	b _08F080DC
	.align 2, 0
_08F0817C: .4byte gUnknown_03000788
_08F08180: .4byte gUnknown_08F1B670
_08F08184: .4byte gUnknown_030007A4
_08F08188: .4byte gUnknown_03001508
_08F0818C: .4byte gUnknown_08F1B674
_08F08190: .4byte gUnknown_03003170
_08F08194: .4byte gUnknown_03000784
_08F08198: .4byte gUnknown_03001D40
_08F0819C:
	ldr r0, _08F081B0 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F081A8
	bl NothingHappened
_08F081A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F081B0: .4byte gUnknown_03003170

	thumb_func_start UseBread
UseBread: @ 0x08F081B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F081CC @ =gConsumableType
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F081DC
	movs r0, #0x14
	bl sub_8F08E24
	b _08F08284
	.align 2, 0
_08F081CC: .4byte gConsumableType
_08F081D0:
	ldr r0, _08F081D8 @ =0x000006BC
	bl DrawTextWithId
	b _08F08284
	.align 2, 0
_08F081D8: .4byte 0x000006BC
_08F081DC:
	movs r2, #0
	ldr r7, _08F08290 @ =gUnknown_03003174
	ldr r1, _08F08294 @ =gGameInfo
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #6
	adds r1, #0x60
	adds r0, r0, r1
_08F081EC:
	ldrb r1, [r0]
	cmp r1, #3
	beq _08F081D0
	adds r0, #1
	adds r2, #1
	cmp r2, #7
	ble _08F081EC
	ldrb r0, [r7]
	bl GetPositionOfCurrentItemFromInventoryOrCloset
	adds r2, r0, #0
	cmp r2, #0
	blt _08F08284
	ldr r6, _08F08294 @ =gGameInfo
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r2, r0
	adds r1, r6, #0
	adds r1, #0x60
	adds r0, r0, r1
	movs r1, #3
	strb r1, [r0]
	ldrb r1, [r7]
	subs r1, #1
	lsls r1, r1, #6
	adds r1, r1, r6
	ldr r0, _08F08298 @ =gUnknown_03000788
	ldrh r0, [r0]
	mov r8, r0
	ldr r4, _08F0829C @ =0x0000FFC0
	adds r2, r4, #0
	mov r0, r8
	ands r2, r0
	ldr r5, _08F082A0 @ =gCurrentBgMusic
	movs r3, #0x3f
	adds r0, r3, #0
	ldrb r5, [r5]
	ands r0, r5
	adds r0, r0, r2
	adds r1, #0x6c
	strh r0, [r1]
	ldrb r1, [r7]
	subs r1, #1
	lsls r1, r1, #6
	adds r1, r1, r6
	ldr r5, _08F082A4 @ =gUnknown_03001508
	ldrh r2, [r5]
	ands r4, r2
	ldr r2, _08F082A8 @ =gUnknown_030007A4
	movs r0, #7
	ldrb r2, [r2]
	ands r0, r2
	adds r0, r0, r4
	adds r1, #0x6e
	strh r0, [r1]
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	adds r1, r3, #0
	mov r2, r8
	ands r1, r2
	adds r0, #0x5a
	strb r1, [r0]
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	ldrb r5, [r5]
	ands r3, r5
	adds r0, #0x5b
	strb r3, [r0]
	ldr r0, _08F082AC @ =0x000006BB
	bl DrawTextWithId
_08F08284:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08290: .4byte gUnknown_03003174
_08F08294: .4byte gGameInfo
_08F08298: .4byte gUnknown_03000788
_08F0829C: .4byte 0x0000FFC0
_08F082A0: .4byte gCurrentBgMusic
_08F082A4: .4byte gUnknown_03001508
_08F082A8: .4byte gUnknown_030007A4
_08F082AC: .4byte 0x000006BB

	thumb_func_start sub_8F082B0
sub_8F082B0: @ 0x08F082B0
	push {lr}
	ldr r0, _08F082C4 @ =gConsumableType
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F082C8
	movs r0, #0xf
	bl sub_8F08E24
	b _08F082CC
	.align 2, 0
_08F082C4: .4byte gConsumableType
_08F082C8:
	bl sub_8F080A4
_08F082CC:
	pop {r0}
	bx r0

	thumb_func_start sub_8F082D0
sub_8F082D0: @ 0x08F082D0
	push {lr}
	ldr r1, _08F082EC @ =gGameInfo
	movs r0, #0xa
	strb r0, [r1, #0x19]
	ldr r0, _08F082F0 @ =gUnknown_03003174
	ldrb r0, [r0]
	bl RemoveItemFromInventory
	ldr r0, _08F082F4 @ =0x0000038E
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0
_08F082EC: .4byte gGameInfo
_08F082F0: .4byte gUnknown_03003174
_08F082F4: .4byte 0x0000038E

	thumb_func_start sub_8F082F8
sub_8F082F8: @ 0x08F082F8
	push {lr}
	ldr r1, _08F0830C @ =gConsumableType
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xa
	bl sub_8F08E24
	pop {r0}
	bx r0
	.align 2, 0
_08F0830C: .4byte gConsumableType

	thumb_func_start sub_8F08310
sub_8F08310: @ 0x08F08310
	push {lr}
	movs r0, #0x14
	bl sub_8F08E24
	pop {r0}
	bx r0

	thumb_func_start sub_8F0831C
sub_8F0831C: @ 0x08F0831C
	push {lr}
	ldr r1, _08F08330 @ =gConsumableType
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x1e
	bl sub_8F08E24
	pop {r0}
	bx r0
	.align 2, 0
_08F08330: .4byte gConsumableType

	thumb_func_start sub_8F08334
sub_8F08334: @ 0x08F08334
	push {lr}
	movs r0, #0x3c
	bl sub_8F08E24
	pop {r0}
	bx r0

	thumb_func_start sub_8F08340
sub_8F08340: @ 0x08F08340
	push {lr}
	ldr r1, _08F08354 @ =gConsumableType
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x64
	bl sub_8F08E24
	pop {r0}
	bx r0
	.align 2, 0
_08F08354: .4byte gConsumableType

	thumb_func_start sub_8F08358
sub_8F08358: @ 0x08F08358
	push {lr}
	ldr r0, _08F0836C @ =gConsumableType
	movs r1, #3
	strb r1, [r0]
	ldr r0, _08F08370 @ =0x0000FFFF
	bl sub_8F08E24
	pop {r0}
	bx r0
	.align 2, 0
_08F0836C: .4byte gConsumableType
_08F08370: .4byte 0x0000FFFF

	thumb_func_start sub_8F08374
sub_8F08374: @ 0x08F08374
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F08398 @ =gUnknown_030007D8
	ldrh r0, [r0]
	mov r8, r0
	ldr r5, _08F0839C @ =gUnknown_03003174
	ldrb r7, [r5]
	bl sub_8F0BA2C
	adds r2, r0, #0
	cmp r2, #0
	bgt _08F083A4
	ldr r1, _08F083A0 @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F0844E
	.align 2, 0
_08F08398: .4byte gUnknown_030007D8
_08F0839C: .4byte gUnknown_03003174
_08F083A0: .4byte gUnknown_03001504
_08F083A4:
	ldr r0, _08F083CC @ =gGameInfo
	subs r1, r2, #1
	lsls r1, r1, #6
	adds r4, r1, r0
	adds r1, r4, #0
	adds r1, #0x41
	movs r6, #0x80
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F083D8
	ldr r0, _08F083D0 @ =gCurrentCharacterId
	strb r2, [r0]
	ldr r0, _08F083D4 @ =0x000006A6
	bl DrawTextWithId
	bl NothingHappened
	b _08F0842E
	.align 2, 0
_08F083CC: .4byte gGameInfo
_08F083D0: .4byte gCurrentCharacterId
_08F083D4: .4byte 0x000006A6
_08F083D8:
	strb r2, [r5]
	movs r0, #0x1e
	bl sub_8F021C4
	ldr r5, _08F08458 @ =gTempNumber
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x42
	adds r4, #0x54
	ldrh r3, [r4]
	ldrh r1, [r1]
	subs r1, r1, r3
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r1, #0x10
	cmp r0, r1
	bls _08F083FC
	strh r2, [r5]
_08F083FC:
	ldrh r5, [r5]
	adds r0, r5, r3
	strh r0, [r4]
	ldr r0, _08F0845C @ =0x000006BA
	bl DrawTextWithId
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F08460 @ =gUnknown_03003170
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	ldr r0, _08F08464 @ =0x000006B3
	bl DrawTextWithId
	ldr r1, _08F08468 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	ldr r0, _08F0846C @ =0x000006B1
	bl DrawTextWithId
_08F0842E:
	ldr r1, _08F08470 @ =gGameInfo
	ldrb r0, [r1, #0x1f]
	subs r0, #1
	strb r0, [r1, #0x1f]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08F0844E
	ldr r0, _08F08474 @ =0x000006C1
	bl DrawTextWithId
	ldr r0, _08F08478 @ =gUnknown_030007D8
	mov r1, r8
	strh r1, [r0]
	adds r0, r7, #0
	bl RemoveItemFromInventory
_08F0844E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08458: .4byte gTempNumber
_08F0845C: .4byte 0x000006BA
_08F08460: .4byte gUnknown_03003170
_08F08464: .4byte 0x000006B3
_08F08468: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0846C: .4byte 0x000006B1
_08F08470: .4byte gGameInfo
_08F08474: .4byte 0x000006C1
_08F08478: .4byte gUnknown_030007D8

	thumb_func_start sub_8F0847C
sub_8F0847C: @ 0x08F0847C
	push {lr}
	ldr r1, _08F0848C @ =0x000006C3
	movs r0, #2
	bl AttemptRemovalOfCondition
	pop {r0}
	bx r0
	.align 2, 0
_08F0848C: .4byte 0x000006C3

	thumb_func_start sub_8F08490
sub_8F08490: @ 0x08F08490
	push {lr}
	ldr r1, _08F084A0 @ =0x000006C4
	movs r0, #1
	bl AttemptRemovalOfCondition
	pop {r0}
	bx r0
	.align 2, 0
_08F084A0: .4byte 0x000006C4

	thumb_func_start sub_8F084A4
sub_8F084A4: @ 0x08F084A4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08F08528 @ =0x000006C5
	bl DrawTextWithId
	movs r0, #0x14
	bl sub_8F021C4
	ldr r5, _08F0852C @ =gTempNumber
	strh r0, [r5]
	ldr r7, _08F08530 @ =gGameInfo
	ldr r6, _08F08534 @ =gUnknown_03003174
	ldrb r1, [r6]
	subs r1, #1
	lsls r1, r1, #6
	adds r1, r1, r7
	adds r2, r1, #0
	adds r2, #0x44
	adds r1, #0x56
	ldrh r2, [r2]
	ldrh r1, [r1]
	subs r1, r2, r1
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r1, #0x10
	cmp r0, r1
	bls _08F084DA
	strh r2, [r5]
_08F084DA:
	ldr r1, _08F08538 @ =gUnknown_03003170
	movs r4, #0x80
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldr r0, _08F0853C @ =0x000006B4
	bl DrawTextWithId
	ldr r0, _08F08540 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r1, [r0]
	orrs r4, r1
	strb r4, [r0]
	ldr r0, _08F08544 @ =0x000006B1
	bl DrawTextWithId
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r7
	adds r0, #0x56
	ldrh r2, [r0]
	ldrh r5, [r5]
	adds r1, r2, r5
	strh r1, [r0]
	bl Random
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bhi _08F08520
	ldr r0, _08F08548 @ =0x000006C6
	bl DrawTextWithId
	ldrb r0, [r6]
	bl RemoveItemFromInventory
_08F08520:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08528: .4byte 0x000006C5
_08F0852C: .4byte gTempNumber
_08F08530: .4byte gGameInfo
_08F08534: .4byte gUnknown_03003174
_08F08538: .4byte gUnknown_03003170
_08F0853C: .4byte 0x000006B4
_08F08540: .4byte gTextDelayAfterWriteCharacterEnabled
_08F08544: .4byte 0x000006B1
_08F08548: .4byte 0x000006C6

	thumb_func_start sub_8F0854C
sub_8F0854C: @ 0x08F0854C
	push {lr}
	ldr r1, _08F0855C @ =0x000006BE
	movs r0, #0xf
	bl sub_8F0922C
	pop {r0}
	bx r0
	.align 2, 0
_08F0855C: .4byte 0x000006BE

	thumb_func_start sub_8F08560
sub_8F08560: @ 0x08F08560
	push {lr}
	ldr r1, _08F08570 @ =0x000006AF
	movs r0, #0xb
	bl sub_8F0922C
	pop {r0}
	bx r0
	.align 2, 0
_08F08570: .4byte 0x000006AF

	thumb_func_start sub_8F08574
sub_8F08574: @ 0x08F08574
	push {lr}
#ifdef JAPANESE
	movs r1, #0xd6
	lsls r1, r1, #3
#elif ENGLISH
	@let capsule items be "swallowed" instead of "drank"
	bl swallow_item
#endif
	movs r0, #0xc
	bl sub_8F0922C
	pop {r0}
	bx r0

	thumb_func_start sub_8F08584
sub_8F08584: @ 0x08F08584
	push {lr}
#ifdef JAPANESE
	movs r1, #0xd6
	lsls r1, r1, #3
#elif ENGLISH
	@let capsule items be "swallowed" instead of "drank"
	bl swallow_item
#endif
	movs r0, #0xd
	bl sub_8F0922C
	pop {r0}
	bx r0

	thumb_func_start sub_8F08594
sub_8F08594: @ 0x08F08594
	push {lr}
#ifdef JAPANESE
	movs r1, #0xd6
	lsls r1, r1, #3
#elif ENGLISH
	@let capsule items be "swallowed" instead of "drank"
	bl swallow_item
#endif
	movs r0, #0xe
	bl sub_8F0922C
	pop {r0}
	bx r0

	thumb_func_start sub_8F085A4
sub_8F085A4: @ 0x08F085A4
	push {lr}
#ifdef JAPANESE
	movs r1, #0xd6
	lsls r1, r1, #3
#elif ENGLISH
	@let capsule items be "swallowed" instead of "drank"
	bl swallow_item
#endif
	movs r0, #0xf
	bl sub_8F0922C
	pop {r0}
	bx r0

	thumb_func_start sub_8F085B4
sub_8F085B4: @ 0x08F085B4
	push {lr}
#ifdef JAPANESE
	movs r1, #0xd6
	lsls r1, r1, #3
#elif ENGLISH
	@let capsule items be "swallowed" instead of "drank"
	bl swallow_item
#endif
	movs r0, #0xb
	bl sub_8F0922C
	pop {r0}
	bx r0

	thumb_func_start GrandFatherDiary
GrandFatherDiary: @ 0x08F085C4
	push {lr}
	ldr r0, _08F085D0 @ =0x000006CA
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0
_08F085D0: .4byte 0x000006CA

	thumb_func_start sub_8F085D4
sub_8F085D4: @ 0x08F085D4
	push {r4, lr}
	bl CanTeleport
	cmp r0, #0
	beq _08F08638
	ldr r1, _08F085FC @ =gGameInfo
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08F08600
	bl NothingHappened
	b _08F08638
	.align 2, 0
_08F085FC: .4byte gGameInfo
_08F08600:
	movs r0, #6
	bl sub_8F09484
	ldr r0, _08F08640 @ =0x0000038E
	bl DrawTextWithId
	ldr r1, _08F08644 @ =gUnknown_030007A0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r1, _08F08648 @ =gUnknown_030007E8
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08F0864C @ =gPlayerX
	ldr r2, _08F08650 @ =0x00009E89
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F08654 @ =gPlayerY
	ldr r2, _08F08658 @ =0x0000A8C4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F0865C @ =gUnknown_03000840
	ldr r0, _08F08660 @ =gUnknown_030034A8
	strb r4, [r0]
	strb r4, [r1]
	bl UpdatePartyLocationsAfterTeleport
_08F08638:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F08640: .4byte 0x0000038E
_08F08644: .4byte gUnknown_030007A0
_08F08648: .4byte gUnknown_030007E8
_08F0864C: .4byte gPlayerX
_08F08650: .4byte 0x00009E89
_08F08654: .4byte gPlayerY
_08F08658: .4byte 0x0000A8C4
_08F0865C: .4byte gUnknown_03000840
_08F08660: .4byte gUnknown_030034A8

	thumb_func_start sub_8F08664
sub_8F08664: @ 0x08F08664
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08F0878C @ =gUnknown_03003174
	ldrb r0, [r4]
	bl RemoveItemFromInventory
	ldr r0, _08F08790 @ =0x000006BD
	bl DrawTextWithId
	ldr r1, _08F08794 @ =gUnknown_030007A0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r1, _08F08798 @ =gUnknown_030007E8
	movs r0, #1
	strb r0, [r1]
	ldr r6, _08F0879C @ =gPlayerX
	ldr r1, _08F087A0 @ =gGameInfo
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r5, _08F087A4 @ =gPlayerY
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r3, _08F087A8 @ =gUnknown_03000840
	mov ip, r3
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x5a
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r7, _08F087AC @ =gUnknown_030034A8
	mov r8, r7
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x5b
	ldrb r0, [r0]
	mov r1, r8
	strb r0, [r1]
	ldrh r2, [r6]
	ldr r3, _08F087B0 @ =0xFFFFFDC0
	adds r0, r2, r3
	cmp r0, #0
	bge _08F086DE
	ldr r7, _08F087B4 @ =0x000001BF
	adds r0, r2, r7
_08F086DE:
	asrs r0, r0, #0xa
	cmp r0, #0x38
	bne _08F0873C
	ldrh r1, [r5]
	ldr r4, _08F087B8 @ =0xFFFFFD40
	adds r0, r1, r4
	cmp r0, #0
	bge _08F086F2
	ldr r7, _08F087BC @ =0x0000013F
	adds r0, r1, r7
_08F086F2:
	asrs r0, r0, #0xa
	cmp r0, #7
	bne _08F0873C
	ldr r0, _08F087C0 @ =gUnknown_03000788
	ldrh r1, [r0]
	adds r0, r1, r3
	cmp r0, #0
	bge _08F08706
	ldr r3, _08F087B4 @ =0x000001BF
	adds r0, r1, r3
_08F08706:
	asrs r0, r0, #0xa
	cmp r0, #0x38
	beq _08F0873C
	ldr r0, _08F087C4 @ =gUnknown_03001508
	ldrh r1, [r0]
	adds r0, r1, r4
	cmp r0, #0
	bge _08F0871A
	ldr r7, _08F087BC @ =0x0000013F
	adds r0, r1, r7
_08F0871A:
	asrs r0, r0, #0xa
	cmp r0, #7
	beq _08F0873C
	movs r0, #0x3f
	ands r2, r0
	ldr r1, _08F087C8 @ =0x0000A980
	adds r0, r1, #0
	adds r0, r2, r0
	strh r0, [r6]
	ldr r2, _08F087CC @ =0x0000F446
	adds r0, r2, #0
	strh r0, [r5]
	movs r0, #0
	mov r3, ip
	strb r0, [r3]
	mov r6, r8
	strb r0, [r6]
_08F0873C:
	ldr r5, _08F0879C @ =gPlayerX
	ldrh r2, [r5]
	adds r0, r2, #0
	subs r0, #0x60
	movs r3, #0xff
	lsls r3, r3, #8
	ands r0, r3
	movs r1, #0x9c
	lsls r1, r1, #7
	cmp r0, r1
	bne _08F08782
	ldr r4, _08F087A4 @ =gPlayerY
	ldrh r7, [r4]
	ldr r1, _08F087D0 @ =0xFFFFFF00
	adds r0, r7, r1
	ands r0, r3
	movs r1, #0xb2
	lsls r1, r1, #7
	cmp r0, r1
	bne _08F08782
	movs r0, #0x3f
	ands r2, r0
	movs r3, #0x9d
	lsls r3, r3, #7
	adds r0, r3, #0
	adds r0, r2, r0
	strh r0, [r5]
	ldr r6, _08F087D4 @ =0x00005AC4
	adds r0, r6, #0
	strh r0, [r4]
	ldr r0, _08F087A8 @ =gUnknown_03000840
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08F087AC @ =gUnknown_030034A8
	strb r1, [r0]
_08F08782:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0878C: .4byte gUnknown_03003174
_08F08790: .4byte 0x000006BD
_08F08794: .4byte gUnknown_030007A0
_08F08798: .4byte gUnknown_030007E8
_08F0879C: .4byte gPlayerX
_08F087A0: .4byte gGameInfo
_08F087A4: .4byte gPlayerY
_08F087A8: .4byte gUnknown_03000840
_08F087AC: .4byte gUnknown_030034A8
_08F087B0: .4byte 0xFFFFFDC0
_08F087B4: .4byte 0x000001BF
_08F087B8: .4byte 0xFFFFFD40
_08F087BC: .4byte 0x0000013F
_08F087C0: .4byte gUnknown_03000788
_08F087C4: .4byte gUnknown_03001508
_08F087C8: .4byte 0x0000A980
_08F087CC: .4byte 0x0000F446
_08F087D0: .4byte 0xFFFFFF00
_08F087D4: .4byte 0x00005AC4

	thumb_func_start JustTurnThePowerOff
JustTurnThePowerOff: @ 0x08F087D8
	push {lr}
	ldr r0, _08F087E4 @ =0x000006BF
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0
_08F087E4: .4byte 0x000006BF

	thumb_func_start FigureOutLengthsOfManyThings
FigureOutLengthsOfManyThings: @ 0x08F087E8
	push {lr}
	movs r0, #0xd8
	lsls r0, r0, #3
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start HandleMap
HandleMap: @ 0x08F087F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	ldr r1, _08F08848 @ =gUnknown_08F1BB28
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r0, _08F0884C @ =gUnknown_030007F8
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08F0885C
	ldr r0, _08F08850 @ =0x000006CE
	bl DrawTextWithId
	ldr r2, _08F08854 @ =gKeysDown
	ldr r1, _08F08858 @ =0x0000020F
	adds r0, r1, #0
	ldrh r3, [r2]
	ands r0, r3
	cmp r0, #0
	bne _08F08840
	adds r5, r2, #0
	adds r4, r1, #0
_08F08830:
	bl sub_8F040E0
	bl UpdateInput
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08F08830
_08F08840:
	bl sub_8F0B040
	b _08F08AAC
	.align 2, 0
_08F08848: .4byte gUnknown_08F1BB28
_08F0884C: .4byte gUnknown_030007F8
_08F08850: .4byte 0x000006CE
_08F08854: .4byte gKeysDown
_08F08858: .4byte 0x0000020F
_08F0885C:
	bl FadeOut
	bl sub_8F0B040
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08F088B4 @ =0x05000080
	mov r0, sp
	bl LoadPalette
	add r0, sp, #0x10
	ldr r1, _08F088B8 @ =0x05000280
	bl LoadPalette
	ldr r0, _08F088BC @ =gMapTiles
	ldr r1, _08F088C0 @ =0x0600E000
	movs r2, #0xc0
	bl BitUnpack
	ldr r1, _08F088C4 @ =gUnknown_03000808
	movs r2, #0x86
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08F088C8 @ =gUnknown_08F5C71C
	ldr r1, _08F088CC @ =0x06002000
	bl sub_8F00EE0
	ldr r1, _08F088D0 @ =gUnknown_03000788
	ldr r0, _08F088D4 @ =0x0000EFFF
	movs r7, #8
	ldrh r1, [r1]
	cmp r1, r0
	bhi _08F088A6
	movs r7, #4
_08F088A6:
	ldr r0, _08F088D8 @ =gUnknown_03001508
	ldrh r1, [r0]
	ldr r0, _08F088DC @ =0x00003DFF
	cmp r1, r0
	bhi _08F088E0
	movs r6, #0
	b _08F088EA
	.align 2, 0
_08F088B4: .4byte 0x05000080
_08F088B8: .4byte 0x05000280
_08F088BC: .4byte gMapTiles
_08F088C0: .4byte 0x0600E000
_08F088C4: .4byte gUnknown_03000808
_08F088C8: .4byte gUnknown_08F5C71C
_08F088CC: .4byte 0x06002000
_08F088D0: .4byte gUnknown_03000788
_08F088D4: .4byte 0x0000EFFF
_08F088D8: .4byte gUnknown_03001508
_08F088DC: .4byte 0x00003DFF
_08F088E0:
	ldr r0, _08F08A58 @ =0x0000A5FF
	movs r6, #0x50
	cmp r1, r0
	bhi _08F088EA
	movs r6, #0x20
_08F088EA:
	ldr r0, _08F08A5C @ =0x0400001C
	strh r7, [r0]
	adds r0, #2
	strh r6, [r0]
	bl sub_8F019B8
	ldr r4, _08F08A60 @ =gUnknown_03002450
	ldr r0, _08F08A64 @ =gUnknown_03000788
	ldrh r0, [r0]
	lsrs r1, r0, #8
	lsls r5, r7, #0x10
	asrs r0, r5, #0x10
	subs r1, r1, r0
	subs r1, #6
	ldr r3, _08F08A68 @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	ldr r0, _08F08A6C @ =0xFFFFFE00
	ldrh r2, [r4, #2]
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r0, _08F08A70 @ =gUnknown_03001508
	ldrh r0, [r0]
	lsrs r0, r0, #8
	subs r0, r0, r6
	subs r0, #0x16
	strb r0, [r4]
	movs r1, #0xf
	ldrb r3, [r4, #5]
	ands r1, r3
	movs r0, #0x40
	orrs r1, r0
	movs r0, #0x11
	rsbs r0, r0, #0
	ldrb r2, [r4, #3]
	ands r0, r2
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	strb r0, [r4, #3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r4, #5]
	ldr r0, _08F08A74 @ =0xFFFFFC00
	ldrh r3, [r4, #4]
	ands r0, r3
	ldr r2, _08F08A78 @ =0x0000015F
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	bl FadeIn
	movs r0, #0
	mov r8, r0
_08F08966:
	ldr r0, _08F08A64 @ =gUnknown_03000788
	ldrh r0, [r0]
	lsrs r1, r0, #8
	asrs r5, r5, #0x10
	subs r1, r1, r5
	subs r1, #6
	ldr r2, _08F08A68 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldr r3, _08F08A6C @ =0xFFFFFE00
	adds r0, r3, #0
	ldrh r2, [r4, #2]
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r0, _08F08A70 @ =gUnknown_03001508
	ldrh r0, [r0]
	lsrs r0, r0, #8
	subs r0, r0, r6
	subs r0, #0x16
	strb r0, [r4]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08F089B0
	ldrb r2, [r4, #5]
	lsrs r1, r2, #4
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #5]
_08F089B0:
	bl sub_8F040E0
	ldr r1, _08F08A7C @ =0x040000D4
	str r4, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F08A80 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F08A5C @ =0x0400001C
	strh r7, [r0]
	adds r0, #2
	strh r6, [r0]
	bl UpdateInput
	ldr r1, _08F08A84 @ =gKeysDown
	ldr r2, _08F08A88 @ =0x0000020F
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F08A94
	ldr r1, _08F08A8C @ =gKeysRepeat
	movs r0, #0x10
	ldrh r3, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08F089F8
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08F089F8
	movs r7, #8
_08F089F8:
	movs r0, #0x20
	ldrh r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08F08A10
	lsls r0, r7, #0x10
	ldr r3, _08F08A90 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r7, r0, #0x10
	cmp r0, #0
	bge _08F08A10
	movs r7, #0
_08F08A10:
	movs r0, #0x40
	ldrh r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08F08A28
	lsls r0, r6, #0x10
	ldr r3, _08F08A90 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	cmp r0, #0
	bge _08F08A28
	movs r6, #0
_08F08A28:
	movs r0, #0x80
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F08A44
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x50
	ble _08F08A44
	movs r6, #0x50
_08F08A44:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r7, #0x10
	b _08F08966
	.align 2, 0
_08F08A58: .4byte 0x0000A5FF
_08F08A5C: .4byte 0x0400001C
_08F08A60: .4byte gUnknown_03002450
_08F08A64: .4byte gUnknown_03000788
_08F08A68: .4byte 0x000001FF
_08F08A6C: .4byte 0xFFFFFE00
_08F08A70: .4byte gUnknown_03001508
_08F08A74: .4byte 0xFFFFFC00
_08F08A78: .4byte 0x0000015F
_08F08A7C: .4byte 0x040000D4
_08F08A80: .4byte 0x84000100
_08F08A84: .4byte gKeysDown
_08F08A88: .4byte 0x0000020F
_08F08A8C: .4byte gKeysRepeat
_08F08A90: .4byte 0xFFFF0000
_08F08A94:
	bl FadeOut
	bl sub_8F03128
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xa8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bl FadeIn
_08F08AAC:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start PlayOcarinaOfHope
PlayOcarinaOfHope: @ 0x08F08AB8
	push {r4, lr}
	ldr r0, _08F08ADC @ =0x000006CC
	bl DrawTextWithId
	ldr r0, _08F08AE0 @ =gCurrentBgMusic
	ldrb r4, [r0]
	movs r0, #1
	bl ChangeBgMusic
	ldr r0, _08F08AE4 @ =0x000006CD
	bl DrawTextWithId
	adds r0, r4, #0
	bl ChangeBgMusic
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F08ADC: .4byte 0x000006CC
_08F08AE0: .4byte gCurrentBgMusic
_08F08AE4: .4byte 0x000006CD

	thumb_func_start sub_8F08AE8
sub_8F08AE8: @ 0x08F08AE8
	push {r4, r5, r6, lr}
	ldr r0, _08F08B64 @ =0x0000038E
	bl DrawTextWithId
	movs r3, #0
	ldr r4, _08F08B68 @ =gGameInfo
	movs r6, #0
	adds r5, r4, #0
	adds r5, #8
_08F08AFA:
	adds r0, r3, r5
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F08B26
	lsls r0, r1, #6
	adds r2, r0, r4
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r0]
	adds r0, #0x12
	strh r1, [r0]
	subs r0, #0x10
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x56
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x41
	strb r6, [r0]
_08F08B26:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F08AFA
	movs r0, #0xdb
	lsls r0, r0, #3
	bl DrawTextWithId
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F08B6C @ =gUnknown_03003170
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bl UpdateCharactersInParty
	bl sub_8F03128
	ldr r0, _08F08B70 @ =gUnknown_03003174
	ldrb r0, [r0]
	bl RemoveItemFromInventory
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F08B64: .4byte 0x0000038E
_08F08B68: .4byte gGameInfo
_08F08B6C: .4byte gUnknown_03003170
_08F08B70: .4byte gUnknown_03003174

	thumb_func_start sub_8F08B74
sub_8F08B74: @ 0x08F08B74
	push {r4, lr}
	bl CanTeleport
	cmp r0, #0
	beq _08F08C26
	ldr r0, _08F08BA0 @ =0x0000038E
	bl DrawTextWithId
	ldr r4, _08F08BA4 @ =gGameInfo
	adds r1, r4, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F08BA8
	movs r0, #0xe6
	lsls r0, r0, #2
	bl DrawTextWithId
	b _08F08C26
	.align 2, 0
_08F08BA0: .4byte 0x0000038E
_08F08BA4: .4byte gGameInfo
_08F08BA8:
	ldr r0, _08F08BE8 @ =0x000006D9
	bl DrawTextWithId
	movs r0, #7
	bl sub_8F09484
	movs r0, #6
	bl sub_8F09484
	ldr r1, _08F08BEC @ =gUnknown_030007A0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r1, _08F08BF0 @ =gUnknown_030007E8
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08F08BF4 @ =0x00000212
	adds r1, r4, r0
	movs r0, #0x20
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F08C08
	ldr r1, _08F08BF8 @ =gPlayerX
	ldr r2, _08F08BFC @ =0x0000EF0B
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F08C00 @ =gPlayerY
	ldr r2, _08F08C04 @ =0x000099C4
	b _08F08C14
	.align 2, 0
_08F08BE8: .4byte 0x000006D9
_08F08BEC: .4byte gUnknown_030007A0
_08F08BF0: .4byte gUnknown_030007E8
_08F08BF4: .4byte 0x00000212
_08F08BF8: .4byte gPlayerX
_08F08BFC: .4byte 0x0000EF0B
_08F08C00: .4byte gPlayerY
_08F08C04: .4byte 0x000099C4
_08F08C08:
	ldr r1, _08F08C2C @ =gPlayerX
	ldr r2, _08F08C30 @ =0x0000EACB
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F08C34 @ =gPlayerY
	ldr r2, _08F08C38 @ =0x0000C884
_08F08C14:
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08F08C3C @ =gUnknown_03000840
	ldr r1, _08F08C40 @ =gUnknown_030034A8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	bl UpdatePartyLocationsAfterTeleport
_08F08C26:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F08C2C: .4byte gPlayerX
_08F08C30: .4byte 0x0000EACB
_08F08C34: .4byte gPlayerY
_08F08C38: .4byte 0x0000C884
_08F08C3C: .4byte gUnknown_03000840
_08F08C40: .4byte gUnknown_030034A8

	thumb_func_start ItemNothingHappened
ItemNothingHappened: @ 0x08F08C44
	push {lr}
	ldr r0, _08F08C58 @ =0x000006C7
	bl DrawTextWithId
	movs r0, #0xe6
	lsls r0, r0, #2
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0
_08F08C58: .4byte 0x000006C7

	thumb_func_start sub_8F08C5C
sub_8F08C5C: @ 0x08F08C5C
	push {r4, r5, r6, r7, lr}
	bl sub_8F09320
	ldr r2, _08F08D38 @ =gUnknown_03000788
	ldr r0, _08F08D3C @ =gUnknown_08F1B670
	ldr r1, _08F08D40 @ =gUnknown_030007A4
	ldrb r1, [r1]
	lsrs r1, r1, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x78
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, _08F08D44 @ =gUnknown_03001508
	ldr r0, _08F08D48 @ =gUnknown_08F1B674
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x58
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
_08F08C98:
	ldr r1, _08F08D4C @ =gUnknown_03003170
	movs r0, #0
	strb r0, [r1]
	movs r5, #0
	ldr r1, _08F08D50 @ =gUnknown_03000784
	ldr r0, _08F08D54 @ =gUnknown_03001D40
	str r0, [r1]
	ldrb r0, [r0]
	lsls r7, r2, #0x18
	cmp r0, #0
	beq _08F08D0C
_08F08CAE:
	ldr r2, [r1]
	movs r0, #0x80
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08F08CEA
	movs r0, #0x40
	ldrb r1, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08F08CEA
	ldrh r0, [r2, #4]
	subs r1, r6, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r2, #6]
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bhi _08F08CEA
	cmp r0, #0x3f
	bhi _08F08CEA
	movs r0, #0xc
	bl ExecuteScript
	ldr r0, _08F08D4C @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F08D0C
_08F08CEA:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F08D0C
	ldr r2, _08F08D50 @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F08D54 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	adds r1, r2, #0
	cmp r0, #0
	bne _08F08CAE
_08F08D0C:
	cmp r7, #0
	bne _08F08D58
	ldr r0, _08F08D4C @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F08D64
	ldr r0, _08F08D40 @ =gUnknown_030007A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F08D58
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F08D58
	adds r0, r4, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #1
	b _08F08C98
	.align 2, 0
_08F08D38: .4byte gUnknown_03000788
_08F08D3C: .4byte gUnknown_08F1B670
_08F08D40: .4byte gUnknown_030007A4
_08F08D44: .4byte gUnknown_03001508
_08F08D48: .4byte gUnknown_08F1B674
_08F08D4C: .4byte gUnknown_03003170
_08F08D50: .4byte gUnknown_03000784
_08F08D54: .4byte gUnknown_03001D40
_08F08D58:
	ldr r0, _08F08D6C @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F08D64
	bl ItemNothingHappened
_08F08D64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08D6C: .4byte gUnknown_03003170

	thumb_func_start sub_8F08D70
sub_8F08D70: @ 0x08F08D70
	push {r4, lr}
	bl CanTeleport
	cmp r0, #0
	beq _08F08DB0
	bl SelectTeleportDestination
	adds r4, r0, #0
	cmp r4, #0
	bgt _08F08D90
	ldr r1, _08F08D8C @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	b _08F08DAE
	.align 2, 0
_08F08D8C: .4byte gUnknown_03001504
_08F08D90:
	bl sub_8F09320
	ldr r0, _08F08DB8 @ =0x000006C7
	bl DrawTextWithId
	bl WaitForAnyButtonPress
	bl sub_8F0B040
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_8F076B8
	ldr r1, _08F08DBC @ =gUnknown_030007A8
	movs r0, #1
_08F08DAE:
	strb r0, [r1]
_08F08DB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F08DB8: .4byte 0x000006C7
_08F08DBC: .4byte gUnknown_030007A8

	thumb_func_start sub_8F08DC0
sub_8F08DC0: @ 0x08F08DC0
	push {lr}
	movs r0, #0x1e
	bl sub_8F08F48
	pop {r0}
	bx r0

	thumb_func_start sub_8F08DCC
sub_8F08DCC: @ 0x08F08DCC
	push {lr}
	movs r0, #0x50
	bl sub_8F08F48
	pop {r0}
	bx r0

	thumb_func_start sub_8F08DD8
sub_8F08DD8: @ 0x08F08DD8
	push {lr}
	ldr r0, _08F08DE4 @ =0x0000FFFF
	bl sub_8F08F48
	pop {r0}
	bx r0
	.align 2, 0
_08F08DE4: .4byte 0x0000FFFF

	thumb_func_start sub_8F08DE8
sub_8F08DE8: @ 0x08F08DE8
	push {lr}
	ldr r1, _08F08DF8 @ =0x000006CB
	movs r0, #0x40
	bl CureConditionByItem
	pop {r0}
	bx r0
	.align 2, 0
_08F08DF8: .4byte 0x000006CB

	thumb_func_start sub_8F08DFC
sub_8F08DFC: @ 0x08F08DFC
	push {lr}
	ldr r1, _08F08E0C @ =0x000006C3
	movs r0, #2
	bl CureConditionByItem
	pop {r0}
	bx r0
	.align 2, 0
_08F08E0C: .4byte 0x000006C3

	thumb_func_start sub_8F08E10
sub_8F08E10: @ 0x08F08E10
	push {lr}
	ldr r1, _08F08E20 @ =0x000006C9
	movs r0, #0x80
	bl CureConditionByItem
	pop {r0}
	bx r0
	.align 2, 0
_08F08E20: .4byte 0x000006C9

	thumb_func_start sub_8F08E24
sub_8F08E24: @ 0x08F08E24
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _08F08E50 @ =gUnknown_030007D8
	ldrh r0, [r0]
	mov sb, r0
	ldr r4, _08F08E54 @ =gUnknown_03003174
	ldrb r0, [r4]
	mov r8, r0
	bl sub_8F0BA2C
	adds r3, r0, #0
	cmp r3, #0
	bgt _08F08E5C
	ldr r1, _08F08E58 @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F08F20
	.align 2, 0
_08F08E50: .4byte gUnknown_030007D8
_08F08E54: .4byte gUnknown_03003174
_08F08E58: .4byte gUnknown_03001504
_08F08E5C:
	ldr r1, _08F08E84 @ =gGameInfo
	subs r2, r3, #1
	lsls r0, r2, #6
	adds r0, r0, r1
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	adds r7, r2, #0
	cmp r1, #0
	beq _08F08E90
	ldr r0, _08F08E88 @ =gCurrentCharacterId
	strb r3, [r0]
	ldr r0, _08F08E8C @ =0x000006A6
	bl DrawTextWithId
	bl NothingHappened
	b _08F08F14
	.align 2, 0
_08F08E84: .4byte gGameInfo
_08F08E88: .4byte gCurrentCharacterId
_08F08E8C: .4byte 0x000006A6
_08F08E90:
	strb r3, [r4]
	ldr r0, _08F08EA4 @ =gConsumableType
	ldrb r0, [r0]
	cmp r0, #1
	beq _08F08EAC
	cmp r0, #2
	beq _08F08EB4
	ldr r0, _08F08EA8 @ =0x0000038E
	b _08F08EB8
	.align 2, 0
_08F08EA4: .4byte gConsumableType
_08F08EA8: .4byte 0x0000038E
_08F08EAC:
	ldr r0, _08F08EB0 @ =0x000006AF
	b _08F08EB8
	.align 2, 0
_08F08EB0: .4byte 0x000006AF
_08F08EB4:
	movs r0, #0xd6
	lsls r0, r0, #3
_08F08EB8:
	bl DrawTextWithId
	adds r0, r6, #0
	bl sub_8F021C4
	ldr r5, _08F08F2C @ =gTempNumber
	strh r0, [r5]
	ldr r2, _08F08F30 @ =gGameInfo
	lsls r1, r7, #6
	adds r1, r1, r2
	adds r3, r1, #0
	adds r3, #0x42
	adds r2, r1, #0
	adds r2, #0x54
	ldrh r4, [r2]
	ldrh r3, [r3]
	subs r1, r3, r4
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r1, #0x10
	cmp r0, r1
	bls _08F08EE6
	strh r6, [r5]
_08F08EE6:
	ldrh r5, [r5]
	adds r0, r5, r4
	strh r0, [r2]
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F08F34 @ =gUnknown_03003170
	movs r4, #0x80
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldr r0, _08F08F38 @ =0x000006B3
	bl DrawTextWithId
	ldr r0, _08F08F3C @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r1, [r0]
	orrs r4, r1
	strb r4, [r0]
	ldr r0, _08F08F40 @ =0x000006B1
	bl DrawTextWithId
_08F08F14:
	ldr r0, _08F08F44 @ =gUnknown_030007D8
	mov r1, sb
	strh r1, [r0]
	mov r0, r8
	bl RemoveItemFromInventory
_08F08F20:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08F2C: .4byte gTempNumber
_08F08F30: .4byte gGameInfo
_08F08F34: .4byte gUnknown_03003170
_08F08F38: .4byte 0x000006B3
_08F08F3C: .4byte gTextDelayAfterWriteCharacterEnabled
_08F08F40: .4byte 0x000006B1
_08F08F44: .4byte gUnknown_030007D8

	thumb_func_start sub_8F08F48
sub_8F08F48: @ 0x08F08F48
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_8F0BA2C
	adds r4, r0, #0
	cmp r4, #0
	bgt _08F08F68
	ldr r1, _08F08F64 @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F08FEA
	.align 2, 0
_08F08F64: .4byte gUnknown_03001504
_08F08F68:
	bl sub_8F09320
	ldr r0, _08F08F8C @ =gGameInfo
	subs r1, r4, #1
	lsls r1, r1, #6
	adds r5, r1, r0
	adds r1, r5, #0
	adds r1, #0x41
	movs r7, #0x80
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F08F90
	bl ItemNothingHappened
	b _08F08FEA
	.align 2, 0
_08F08F8C: .4byte gGameInfo
_08F08F90:
	ldr r0, _08F08FF0 @ =0x000006C7
	bl DrawTextWithId
	ldr r0, _08F08FF4 @ =gUnknown_03003174
	strb r4, [r0]
	adds r0, r6, #0
	bl sub_8F021C4
	ldr r3, _08F08FF8 @ =gTempNumber
	strh r0, [r3]
	adds r1, r5, #0
	adds r1, #0x42
	adds r4, r5, #0
	adds r4, #0x54
	ldrh r2, [r4]
	ldrh r1, [r1]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r1, #0x10
	cmp r0, r1
	bls _08F08FBE
	strh r6, [r3]
_08F08FBE:
	ldrh r3, [r3]
	adds r0, r3, r2
	strh r0, [r4]
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F08FFC @ =gUnknown_03003170
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	ldr r0, _08F09000 @ =0x000006B3
	bl DrawTextWithId
	ldr r1, _08F09004 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	ldr r0, _08F09008 @ =0x000006B1
	bl DrawTextWithId
_08F08FEA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08FF0: .4byte 0x000006C7
_08F08FF4: .4byte gUnknown_03003174
_08F08FF8: .4byte gTempNumber
_08F08FFC: .4byte gUnknown_03003170
_08F09000: .4byte 0x000006B3
_08F09004: .4byte gTextDelayAfterWriteCharacterEnabled
_08F09008: .4byte 0x000006B1

	thumb_func_start AttemptRemovalOfCondition
AttemptRemovalOfCondition: @ 0x08F0900C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08F09038 @ =gUnknown_030007D8
	ldrh r0, [r0]
	mov r8, r0
	ldr r0, _08F0903C @ =gUnknown_03003174
	ldrb r7, [r0]
	bl sub_8F0BA2C
	adds r2, r0, #0
	cmp r2, #0
	bgt _08F09044
	ldr r1, _08F09040 @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F090E0
	.align 2, 0
_08F09038: .4byte gUnknown_030007D8
_08F0903C: .4byte gUnknown_03003174
_08F09040: .4byte gUnknown_03001504
_08F09044:
	movs r3, #0x80
	adds r0, r4, #0
	ands r0, r3
	subs r5, r2, #1
	cmp r0, #0
	bne _08F09080
	ldr r0, _08F09074 @ =gGameInfo
	lsls r1, r5, #6
	adds r1, r1, r0
	adds r1, #0x41
	adds r0, r3, #0
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F09080
	ldr r0, _08F09078 @ =gCurrentCharacterId
	strb r2, [r0]
	ldr r0, _08F0907C @ =0x000006A6
	bl DrawTextWithId
	bl NothingHappened
	b _08F090D4
	.align 2, 0
_08F09074: .4byte gGameInfo
_08F09078: .4byte gCurrentCharacterId
_08F0907C: .4byte 0x000006A6
_08F09080:
	ldr r0, _08F090C0 @ =gUnknown_03003174
	strb r2, [r0]
	ldr r0, _08F090C4 @ =0x0000038E
	bl DrawTextWithId
	ldr r1, _08F090C8 @ =gGameInfo
	lsls r0, r5, #6
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x41
	ldrb r2, [r1]
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _08F090D0
	adds r0, r2, #0
	bics r0, r4
	strb r0, [r1]
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F090CC @ =gUnknown_03003170
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	adds r0, r6, #0
	bl DrawTextWithId
	b _08F090D4
	.align 2, 0
_08F090C0: .4byte gUnknown_03003174
_08F090C4: .4byte 0x0000038E
_08F090C8: .4byte gGameInfo
_08F090CC: .4byte gUnknown_03003170
_08F090D0:
	bl NothingHappened
_08F090D4:
	ldr r0, _08F090EC @ =gUnknown_030007D8
	mov r1, r8
	strh r1, [r0]
	adds r0, r7, #0
	bl RemoveItemFromInventory
_08F090E0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F090EC: .4byte gUnknown_030007D8

	thumb_func_start CureConditionByItem
CureConditionByItem: @ 0x08F090F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r6, r5, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r8, r7
	bl sub_8F0BA2C
	adds r4, r0, #0
	cmp r4, #0
	bgt _08F0911C
	ldr r1, _08F09118 @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F091C4
	.align 2, 0
_08F09118: .4byte gUnknown_03001504
_08F0911C:
	bl sub_8F09320
	ldr r0, _08F09168 @ =gGameInfo
	subs r1, r4, #1
	lsls r1, r1, #6
	adds r1, r1, r0
	adds r1, #0x41
	ldrb r2, [r1]
	movs r0, #0x80
	mov sb, r0
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08F0917E
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _08F09178
	ldr r0, _08F0916C @ =0x000006C7
	bl DrawTextWithId
	ldr r0, _08F09170 @ =gUnknown_03003174
	strb r4, [r0]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_8F091D0
	ldr r1, _08F09174 @ =gUnknown_03003170
	mov r0, sb
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	adds r0, r7, #0
	bl DrawTextWithId
	b _08F091C4
	.align 2, 0
_08F09168: .4byte gGameInfo
_08F0916C: .4byte 0x000006C7
_08F09170: .4byte gUnknown_03003174
_08F09174: .4byte gUnknown_03003170
_08F09178:
	bl ItemNothingHappened
	b _08F091C4
_08F0917E:
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _08F091C0
	adds r0, r2, #0
	bics r0, r6
	strb r0, [r1]
	ldr r0, _08F091B4 @ =0x000006C7
	bl DrawTextWithId
	ldr r0, _08F091B8 @ =gUnknown_03003174
	strb r4, [r0]
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F091BC @ =gUnknown_03003170
	mov r0, sb
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	mov r0, r8
	bl DrawTextWithId
	b _08F091C4
	.align 2, 0
_08F091B4: .4byte 0x000006C7
_08F091B8: .4byte gUnknown_03003174
_08F091BC: .4byte gUnknown_03003170
_08F091C0:
	bl ItemNothingHappened
_08F091C4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8F091D0
sub_8F091D0: @ 0x08F091D0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r4, _08F09200 @ =gGameInfo
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r2, r0, r4
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x7f
	ldrb r3, [r1]
	ands r0, r3
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r0]
	adds r0, #0x12
	strh r1, [r0]
	bl UpdateCharactersInParty
	movs r1, #0
	adds r4, #8
	b _08F0920A
	.align 2, 0
_08F09200: .4byte gGameInfo
_08F09204:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08F0920A:
	cmp r1, #3
	bhi _08F09224
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, r5
	bne _08F09204
	bl sub_8F0B004
	bl sub_8F03128
	movs r0, #0x1d
	bl sub_8F0088C
_08F09224:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F0922C
sub_8F0922C: @ 0x08F0922C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _08F09264 @ =gUnknown_030007D8
	ldrh r0, [r0]
	mov sb, r0
	ldr r0, _08F09268 @ =gUnknown_03003174
	ldrb r0, [r0]
	mov r8, r0
	movs r0, #0xd6
	lsls r0, r0, #3
	cmp r5, r0
	bne _08F09270
	bl sub_8F0BA2C
	adds r4, r0, #0
	cmp r4, #0
	bgt _08F09272
	ldr r1, _08F0926C @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F092FC
	.align 2, 0
_08F09264: .4byte gUnknown_030007D8
_08F09268: .4byte gUnknown_03003174
_08F0926C: .4byte gUnknown_03001504
_08F09270:
	mov r4, r8
_08F09272:
	ldr r6, _08F09298 @ =gGameInfo
	subs r0, r4, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F092A4
	ldr r0, _08F0929C @ =gCurrentCharacterId
	strb r4, [r0]
	ldr r0, _08F092A0 @ =0x000006A6
	bl DrawTextWithId
	bl NothingHappened
	b _08F092F0
	.align 2, 0
_08F09298: .4byte gGameInfo
_08F0929C: .4byte gCurrentCharacterId
_08F092A0: .4byte 0x000006A6
_08F092A4:
	ldr r0, _08F09308 @ =gUnknown_03003174
	strb r4, [r0]
	adds r0, r5, #0
	bl DrawTextWithId
	movs r0, #5
	bl sub_8F021C4
	ldr r5, _08F0930C @ =gTempNumber
	strh r0, [r5]
	lsls r1, r4, #6
	adds r1, r1, r7
	adds r4, r1, r6
	movs r1, #0xff
	ldrb r2, [r4]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r1, #0x10
	cmp r0, r1
	bls _08F092D0
	strh r2, [r5]
_08F092D0:
	ldr r1, _08F09310 @ =0x000006AA
	adds r0, r7, r1
	bl DrawTextWithId
	ldr r1, _08F09314 @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _08F09318 @ =0x000006B2
	bl DrawTextWithId
	ldrb r1, [r4]
	ldrb r5, [r5]
	adds r0, r1, r5
	strb r0, [r4]
_08F092F0:
	ldr r0, _08F0931C @ =gUnknown_030007D8
	mov r2, sb
	strh r2, [r0]
	mov r0, r8
	bl RemoveItemFromInventory
_08F092FC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F09308: .4byte gUnknown_03003174
_08F0930C: .4byte gTempNumber
_08F09310: .4byte 0x000006AA
_08F09314: .4byte gTextDelayAfterWriteCharacterEnabled
_08F09318: .4byte 0x000006B2
_08F0931C: .4byte gUnknown_030007D8

	thumb_func_start sub_8F09320
sub_8F09320: @ 0x08F09320
	ldr r1, _08F09344 @ =gGameInfo
	ldr r0, _08F09348 @ =gUnknown_03003174
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x56
	ldr r1, _08F0934C @ =gUnknown_03003188
	ldrb r1, [r1]
	lsls r1, r1, #3
	ldr r2, _08F09350 @ =gTeleportLocations
	adds r1, r1, r2
	ldrh r2, [r0]
	ldrb r1, [r1, #7]
	subs r1, r2, r1
	strh r1, [r0]
	bx lr
	.align 2, 0
_08F09344: .4byte gGameInfo
_08F09348: .4byte gUnknown_03003174
_08F0934C: .4byte gUnknown_03003188
_08F09350: .4byte gTeleportLocations

	thumb_func_start CanTeleport
CanTeleport: @ 0x08F09354
	push {lr}
	ldr r1, _08F09374 @ =gGameInfo
	ldr r0, _08F09378 @ =0x0000021F
	adds r1, r1, r0
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F0937C
	movs r0, #0xda
	lsls r0, r0, #3
	bl DrawTextWithId
	movs r0, #0
	b _08F0937E
	.align 2, 0
_08F09374: .4byte gGameInfo
_08F09378: .4byte 0x0000021F
_08F0937C:
	movs r0, #1
_08F0937E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F09384
sub_8F09384: @ 0x08F09384
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #0
	ldr r0, _08F09408 @ =gGameInfo
	mov r8, r0
	movs r1, #8
	add r1, r8
	mov sb, r1
	ldr r7, _08F0940C @ =0x0000FFC0
	movs r5, #0x3f
	ldr r6, _08F09410 @ =gUnknown_03001508
_08F0939E:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F093F2
	subs r0, #1
	lsls r0, r0, #6
	add r0, r8
	mov ip, r0
	ldr r0, _08F09414 @ =gUnknown_03000788
	ldrh r3, [r0]
	adds r1, r7, #0
	ands r1, r3
	ldr r2, _08F09418 @ =gCurrentBgMusic
	adds r0, r5, #0
	ldrb r2, [r2]
	ands r0, r2
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x6c
	strh r0, [r1]
	adds r1, r7, #0
	ldrh r0, [r6]
	ands r1, r0
	ldr r2, _08F0941C @ =gUnknown_030007A4
	movs r0, #7
	ldrb r2, [r2]
	ands r0, r2
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x6e
	strh r0, [r1]
	adds r0, r5, #0
	ands r0, r3
	subs r1, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	ldrb r1, [r6]
	ands r0, r1
	mov r1, ip
	adds r1, #0x5b
	strb r0, [r1]
_08F093F2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08F0939E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F09408: .4byte gGameInfo
_08F0940C: .4byte 0x0000FFC0
_08F09410: .4byte gUnknown_03001508
_08F09414: .4byte gUnknown_03000788
_08F09418: .4byte gCurrentBgMusic
_08F0941C: .4byte gUnknown_030007A4

	thumb_func_start UpdatePartyLocationsAfterTeleport
UpdatePartyLocationsAfterTeleport: @ 0x08F09420
	push {r4, r5, lr}
	movs r3, #0
	ldr r4, _08F09470 @ =gGameInfo
	adds r5, r4, #0
	adds r5, #8
_08F0942A:
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0945E
	subs r0, #1
	lsls r0, r0, #6
	adds r2, r0, r4
	ldr r0, _08F09474 @ =gPlayerX
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x6c
	strh r1, [r0]
	ldr r0, _08F09478 @ =gPlayerY
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x6e
	strh r0, [r1]
	ldr r0, _08F0947C @ =gUnknown_03000840
	ldrb r0, [r0]
	subs r1, #0x14
	strb r0, [r1]
	ldr r0, _08F09480 @ =gUnknown_030034A8
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x5b
	strb r1, [r0]
_08F0945E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F0942A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F09470: .4byte gGameInfo
_08F09474: .4byte gPlayerX
_08F09478: .4byte gPlayerY
_08F0947C: .4byte gUnknown_03000840
_08F09480: .4byte gUnknown_030034A8

	thumb_func_start sub_8F09484
sub_8F09484: @ 0x08F09484
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r1, #0
	ldr r4, _08F094B8 @ =gUnknown_03003198
	adds r3, r4, #0
_08F09490:
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r2, r0
	bne _08F094BC
	cmp r1, #2
	bhi _08F094AE
_08F0949C:
	adds r2, r1, r3
	adds r1, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bls _08F0949C
_08F094AE:
	adds r1, r1, r4
	movs r0, #0
	strb r0, [r1]
	b _08F094C6
	.align 2, 0
_08F094B8: .4byte gUnknown_03003198
_08F094BC:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08F09490
_08F094C6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8F094CC
sub_8F094CC: @ 0x08F094CC
	push {lr}
	movs r0, #7
	bl sub_8F09484
	movs r0, #6
	bl sub_8F09484
	ldr r3, _08F09520 @ =gGameInfo
	adds r1, r3, #0
	adds r1, #0x41
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x15
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x42
	ldrh r1, [r0]
	adds r0, #0x12
	strh r1, [r0]
	ldrh r2, [r3, #0x10]
	lsrs r1, r2, #1
	movs r0, #1
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r0, _08F09524 @ =gUnknown_03003600
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08F09538
	ldr r1, _08F09528 @ =gPlayerX
	ldr r2, _08F0952C @ =0x0000DF9C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F09530 @ =gPlayerY
	movs r2, #0x92
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F09534 @ =gUnknown_030007E8
	movs r0, #8
	strb r0, [r1]
	b _08F09548
	.align 2, 0
_08F09520: .4byte gGameInfo
_08F09524: .4byte gUnknown_03003600
_08F09528: .4byte gPlayerX
_08F0952C: .4byte 0x0000DF9C
_08F09530: .4byte gPlayerY
_08F09534: .4byte gUnknown_030007E8
_08F09538:
	ldr r1, _08F09568 @ =gPlayerX
	ldr r2, _08F0956C @ =0x0000DFCB
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F09570 @ =gPlayerY
	ldr r2, _08F09574 @ =0x0000DBC0
	adds r0, r2, #0
	strh r0, [r1]
_08F09548:
	ldr r2, _08F09578 @ =gUnknown_03000840
	ldr r1, _08F0957C @ =gUnknown_030034A8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	ldr r1, _08F09580 @ =gUnknown_030007A0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r1, _08F09584 @ =gUnknown_03000818
	movs r0, #0xf8
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08F09568: .4byte gPlayerX
_08F0956C: .4byte 0x0000DFCB
_08F09570: .4byte gPlayerY
_08F09574: .4byte 0x0000DBC0
_08F09578: .4byte gUnknown_03000840
_08F0957C: .4byte gUnknown_030034A8
_08F09580: .4byte gUnknown_030007A0
_08F09584: .4byte gUnknown_03000818

	thumb_func_start UpdateCharactersInParty
UpdateCharactersInParty: @ 0x08F09588
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r4, sp
	mov r3, sp
	mov r2, sp
	mov r1, sp
	movs r0, #0
	strb r0, [r1, #3]
	strb r0, [r2, #2]
	strb r0, [r3, #1]
	strb r0, [r4]
	movs r5, #1
	movs r4, #0
	ldr r6, _08F095C0 @ =gGameInfo
	adds r7, r6, #0
	adds r7, #8
_08F095A8:
	movs r2, #0
	adds r3, r5, #1
_08F095AC:
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, r5
	beq _08F095C4
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F095AC
	b _08F095D0
	.align 2, 0
_08F095C0: .4byte gGameInfo
_08F095C4:
	adds r0, r4, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	add r0, sp
	strb r5, [r0]
_08F095D0:
	lsls r0, r3, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08F095A8
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r6, #8]
	mov r0, sp
	ldrb r0, [r0, #1]
	strb r0, [r6, #9]
	mov r0, sp
	ldrb r0, [r0, #2]
	strb r0, [r6, #0xa]
	mov r0, sp
	ldrb r0, [r0, #3]
	strb r0, [r6, #0xb]
	movs r4, #0
	movs r2, #0
	ldrb r1, [r6, #8]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F09636
	adds r7, r6, #0
	adds r3, r6, #0
	adds r3, #8
	movs r5, #0x80
_08F09608:
	lsls r1, r1, #6
	adds r1, r1, r7
	adds r1, #0x41
	adds r0, r5, #0
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F0961E
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08F0961E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _08F09636
	adds r0, r2, r3
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08F09608
_08F09636:
	cmp r4, #0
	beq _08F0968C
	ldrb r5, [r6, #8]
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F0968C
	subs r7, r2, #1
	movs r0, #8
	adds r0, r0, r6
	mov ip, r0
_08F09656:
	movs r4, #0
	cmp r4, r7
	bge _08F09670
	mov r3, ip
_08F0965E:
	adds r2, r4, r3
	adds r1, r4, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r4, r7
	blt _08F0965E
_08F09670:
	adds r0, r6, #0
	adds r0, #8
	adds r0, r4, r0
	strb r5, [r0]
	ldrb r5, [r6, #8]
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F09656
_08F0968C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TriggerEncounter
TriggerEncounter: @ 0x08F09694
	push {r4, r5, r6, r7, lr}
	sub sp, #0x110
	ldr r1, _08F096F4 @ =gEncounterRates
	mov r0, sp
	movs r2, #8
	bl memcpy
	add r4, sp, #8
	ldr r1, _08F096F8 @ =gUnknown_08F1BB50
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	add r5, sp, #0x48
	ldr r1, _08F096FC @ =gUnknown_08F1BB90
	adds r0, r5, #0
	movs r2, #0xc8
	bl memcpy
	ldr r1, _08F09700 @ =gUnknown_03002440
	ldr r0, _08F09704 @ =gUnknown_03000830
	ldrb r0, [r0]
	adds r4, r0, r4
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r0, _08F09708 @ =gUnknown_03000818
	ldrb r0, [r0]
	adds r7, r5, #0
	cmp r0, #0
	bne _08F096F0
	ldr r0, _08F0970C @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F096F0
	ldr r0, _08F09710 @ =gUnknown_03001500
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F096F0
_08F096E0:
	ldr r3, _08F09700 @ =gUnknown_03002440
	ldrb r2, [r3]
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08F09718
	ldr r0, _08F09714 @ =gUnknown_0300082C
	strb r1, [r0]
_08F096F0:
	movs r0, #0
	b _08F0981A
	.align 2, 0
_08F096F4: .4byte gEncounterRates
_08F096F8: .4byte gUnknown_08F1BB50
_08F096FC: .4byte gUnknown_08F1BB90
_08F09700: .4byte gUnknown_03002440
_08F09704: .4byte gUnknown_03000830
_08F09708: .4byte gUnknown_03000818
_08F0970C: .4byte gUnknown_0300317C
_08F09710: .4byte gUnknown_03001500
_08F09714: .4byte gUnknown_0300082C
_08F09718:
	movs r4, #7
	ands r4, r2
	cmp r4, #0
	bne _08F09730
	lsrs r0, r0, #0x1b
	ldr r1, _08F0972C @ =gGameInfo
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	b _08F096E0
	.align 2, 0
_08F0972C: .4byte gGameInfo
_08F09730:
	ldr r6, _08F09800 @ =gUnknown_08F593A0
_08F09732:
	bl Random
	ldr r2, _08F09804 @ =gUnknown_03002440
	movs r1, #0xf8
	ldrb r3, [r2]
	ands r1, r3
	lsls r1, r1, #1
	lsrs r0, r0, #0x1c
	adds r1, r1, r0
	adds r1, r1, r6
	ldrb r5, [r1]
	cmp r5, #0
	beq _08F09732
	strb r5, [r2]
	ldr r6, _08F09808 @ =gUnknown_0300082C
	ldrb r1, [r6]
	adds r0, r1, r4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #8
	bls _08F0975E
	movs r4, #8
_08F0975E:
	bl Random
	lsrs r0, r0, #0x14
	subs r1, r4, #1
	add r1, sp
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08F096F0
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08F09780
	movs r0, #2
	strb r0, [r6]
_08F09780:
	ldr r0, _08F0980C @ =gGameInfo
	ldrb r1, [r0, #0x19]
	adds r3, r0, #0
	cmp r1, #0
	beq _08F09818
	adds r1, r7, r5
	adds r0, #0x50
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	blo _08F097DE
	movs r4, #0
	movs r2, #0
	adds r6, r3, #0
	adds r6, #8
_08F0979E:
	adds r0, r2, r6
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F097CA
	lsls r0, r1, #6
	adds r0, r0, r3
	adds r1, r0, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r4, r1, r4
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, _08F09810 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x3f
	ldrb r1, [r1, #3]
	ands r0, r1
	adds r4, r4, r0
_08F097CA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F0979E
	adds r0, r5, #0
	bl sub_8F12C1C
	cmp r4, r0
	blt _08F09818
_08F097DE:
	ldr r1, _08F0980C @ =gGameInfo
	ldrb r0, [r1, #0x19]
	subs r0, #1
	strb r0, [r1, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08F097EE
	b _08F096F0
_08F097EE:
	ldr r0, _08F09814 @ =0x000006D1
	bl DrawTextWithId
	bl WaitForActionButtonPress
	bl sub_8F0B040
	b _08F096F0
	.align 2, 0
_08F09800: .4byte gUnknown_08F593A0
_08F09804: .4byte gUnknown_03002440
_08F09808: .4byte gUnknown_0300082C
_08F0980C: .4byte gGameInfo
_08F09810: .4byte gItemData
_08F09814: .4byte 0x000006D1
_08F09818:
	adds r0, r5, #0
_08F0981A:
	add sp, #0x110
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F09824
sub_8F09824: @ 0x08F09824
	push {lr}
	ldr r0, _08F09880 @ =gUnknown_03000804
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08F0987A
	lsrs r1, r1, #4
	movs r0, #7
	ands r1, r0
	cmp r1, #3
	bhi _08F0987A
	ldr r2, _08F09884 @ =gGameInfo
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0987A
	subs r0, #1
	lsls r0, r0, #6
	adds r2, r0, r2
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #3
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F0987A
	adds r1, r2, #0
	adds r1, #0x54
	ldrh r0, [r1]
	cmp r0, #1
	bls _08F0986C
	subs r0, #1
	strh r0, [r1]
_08F0986C:
	movs r0, #0x16
	bl sub_8F011E4
	bl sub_8F040E0
	bl sub_8F01208
_08F0987A:
	pop {r0}
	bx r0
	.align 2, 0
_08F09880: .4byte gUnknown_03000804
_08F09884: .4byte gGameInfo

	thumb_func_start sub_8F09888
sub_8F09888: @ 0x08F09888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _08F09948 @ =gUnknown_08F1BC58
	mov r0, sp
	movs r2, #8
	bl memcpy
	ldr r0, _08F0994C @ =0xF301F300
	str r0, [sp, #8]
	ldr r1, _08F09950 @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	ldr r0, _08F09954 @ =0x06002000
	str r0, [r1, #4]
	ldr r0, _08F09958 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F0995C @ =0x0600E000
	movs r3, #0
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	ldr r4, _08F09960 @ =0x00000111
	str r4, [r0]
	adds r0, #4
	ldr r1, _08F09964 @ =0x11111111
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	ldr r2, _08F09968 @ =0x11111000
	str r2, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xc8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	cmp r4, r6
	bhs _08F099B2
	movs r0, #0x3c
	mov sl, r0
	ldr r5, _08F0996C @ =0x0400001C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	mov sb, r1
	ldr r2, _08F09970 @ =0x0400001E
	mov r8, r2
	ldr r7, _08F09974 @ =gNESPalette
_08F09922:
	adds r0, r4, #0
	movs r1, #0x3c
	bl __udivsi3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08F09978
	adds r0, r4, #0
	movs r1, #0x3c
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sl
	subs r0, r1, r0
	asrs r0, r0, #2
	b _08F09984
	.align 2, 0
_08F09948: .4byte gUnknown_08F1BC58
_08F0994C: .4byte 0xF301F300
_08F09950: .4byte 0x040000D4
_08F09954: .4byte 0x06002000
_08F09958: .4byte 0x85000200
_08F0995C: .4byte 0x0600E000
_08F09960: .4byte 0x00000111
_08F09964: .4byte 0x11111111
_08F09968: .4byte 0x11111000
_08F0996C: .4byte 0x0400001C
_08F09970: .4byte 0x0400001E
_08F09974: .4byte gNESPalette
_08F09978:
	adds r0, r4, #0
	movs r1, #0x3c
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
_08F09984:
	strh r0, [r5]
	rsbs r0, r4, #0
	asrs r0, r0, #1
	movs r1, #7
	ands r0, r1
	mov r2, r8
	strh r0, [r2]
	lsrs r0, r4, #3
	ands r0, r1
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	mov r1, sb
	strh r0, [r1]
	bl UpdateBg0Tilemap
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _08F09922
_08F099B2:
	bl sub_8F01208
	ldr r0, _08F099D4 @ =gCurrentBgMusic
	ldrb r0, [r0]
	cmp r0, #0x2b
	bne _08F099C2
	bl sub_8F06EA4
_08F099C2:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F099D4: .4byte gCurrentBgMusic

	thumb_func_start sub_8F099D8
sub_8F099D8: @ 0x08F099D8
	push {r4, lr}
	ldr r0, _08F09A34 @ =gUnknown_03001520
	ldr r1, _08F09A38 @ =gUnknown_03001480
	bl LoadPalette
	movs r0, #2
	bl PlaySfxById0
	movs r0, #0x34
	bl sub_8F09A44
	movs r0, #0x36
	bl sub_8F09A44
	movs r0, #0x38
	bl sub_8F09A44
	movs r0, #0x34
	bl sub_8F09A44
	movs r0, #0x36
	bl sub_8F09A44
	movs r0, #0x38
	bl sub_8F09A44
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r1, _08F09A3C @ =gNESPalette
	adds r1, #0x60
	ldrh r4, [r1]
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x20
	bl DarkenPalette
	ldr r0, _08F09A40 @ =0x05000200
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x20
	bl DarkenPalette
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F09A34: .4byte gUnknown_03001520
_08F09A38: .4byte gUnknown_03001480
_08F09A3C: .4byte gNESPalette
_08F09A40: .4byte 0x05000200

	thumb_func_start sub_8F09A44
sub_8F09A44: @ 0x08F09A44
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	movs r6, #0xa0
	lsls r6, r6, #0x13
	ldr r1, _08F09A9C @ =gNESPalette
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x20
	bl DarkenPalette
	ldr r5, _08F09AA0 @ =0x05000200
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x20
	bl DarkenPalette
	movs r0, #3
	bl DelayByAmount
	ldr r4, _08F09AA4 @ =gUnknown_03001480
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x10
	bl sub_8F01020
	adds r4, #8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x10
	bl sub_8F01020
	movs r0, #3
	bl DelayByAmount
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F09A9C: .4byte gNESPalette
_08F09AA0: .4byte 0x05000200
_08F09AA4: .4byte gUnknown_03001480

	thumb_func_start sub_8F09AA8
sub_8F09AA8: @ 0x08F09AA8
	push {r4, r5, lr}
	ldr r5, _08F09ADC @ =gUnknown_03001480
	movs r4, #0x1f
_08F09AAE:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r5, #0
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	ldr r0, _08F09AE0 @ =0x05000200
	adds r1, r5, #0
	adds r1, #8
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	movs r0, #0xa
	bl DelayByAmount
	subs r4, #1
	cmp r4, #0
	bge _08F09AAE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F09ADC: .4byte gUnknown_03001480
_08F09AE0: .4byte 0x05000200

	thumb_func_start sub_8F09AE4
sub_8F09AE4: @ 0x08F09AE4
	push {r4, r5, lr}
	sub sp, #0x20
	ldr r1, _08F09B70 @ =gUnknown_08F1BC60
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	add r5, sp, #0x10
	ldr r1, _08F09B74 @ =gUnknown_08F1BC70
	adds r0, r5, #0
	movs r2, #0x10
	bl memcpy
	ldr r0, _08F09B78 @ =0x04000018
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r4, _08F09B7C @ =gUnknown_03001480
	mov r0, sp
	adds r1, r4, #0
	bl LoadPalette
	adds r1, r4, #0
	adds r1, #8
	adds r0, r5, #0
	bl LoadPalette
	ldr r0, _08F09B80 @ =gUnknown_08F5DB1C
	ldr r1, _08F09B84 @ =0x0600C000
	movs r2, #0x40
	bl BitUnpack
	ldr r1, _08F09B88 @ =gUnknown_03000808
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08F09B8C @ =gUnknown_08F5D71C
	ldr r1, _08F09B90 @ =0x06001000
	bl sub_8F00EE0
	movs r5, #0
_08F09B3A:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	ldr r0, _08F09B94 @ =0x05000200
	adds r1, r4, #0
	adds r1, #8
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	movs r0, #1
	bl DelayByAmount
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _08F09B3A
	add sp, #0x20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F09B70: .4byte gUnknown_08F1BC60
_08F09B74: .4byte gUnknown_08F1BC70
_08F09B78: .4byte 0x04000018
_08F09B7C: .4byte gUnknown_03001480
_08F09B80: .4byte gUnknown_08F5DB1C
_08F09B84: .4byte 0x0600C000
_08F09B88: .4byte gUnknown_03000808
_08F09B8C: .4byte gUnknown_08F5D71C
_08F09B90: .4byte 0x06001000
_08F09B94: .4byte 0x05000200

	thumb_func_start sub_8F09B98
sub_8F09B98: @ 0x08F09B98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #9
	bl PlaySfxById0
	bl sub_8F019B8
	movs r7, #0
	add r0, sp, #8
	mov sl, r0
	add r1, sp, #0x10
	mov sb, r1
	ldr r0, _08F09CE4 @ =gNESPalette
	ldrh r4, [r0, #0x22]
_08F09BC2:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl DarkenPalette
	ldr r0, _08F09CE8 @ =0x05000200
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl DarkenPalette
	movs r0, #1
	bl DelayByAmount
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x1f
	bls _08F09BC2
	bl sub_8F09AE4
	mov r2, sp
	movs r3, #0
	movs r1, #0
	movs r0, #0xa0
	strh r0, [r2, #6]
	mov r2, sl
	strh r1, [r2, #6]
	mov r0, sb
	strb r3, [r0, #3]
	mov r1, sp
	ldr r0, _08F09CEC @ =0x0000FF60
	strh r0, [r1, #4]
	movs r0, #0x20
	strh r0, [r2, #4]
	mov r1, sb
	strb r3, [r1, #2]
	mov r1, sp
	ldr r0, _08F09CF0 @ =0x0000FFB0
	strh r0, [r1, #2]
	movs r0, #0x40
	strh r0, [r2, #2]
	movs r2, #1
	mov r0, sb
	strb r2, [r0, #1]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0x60
	mov r1, sl
	strh r0, [r1]
	mov r0, sb
	strb r2, [r0]
	movs r1, #0
	mov r8, r1
_08F09C32:
	bl sub_8F016EC
	movs r7, #0
	mov r2, r8
	lsrs r2, r2, #3
	str r2, [sp, #0x18]
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0x14]
_08F09C44:
	ldr r0, _08F09CF4 @ =gGameInfo
	adds r0, #8
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F09D24
	subs r0, #1
	lsls r0, r0, #6
	ldr r1, _08F09CF4 @ =gGameInfo
	adds r2, r0, r1
	adds r3, r2, #0
	adds r3, #0x5e
	lsls r4, r7, #1
	mov r1, r8
	lsrs r0, r1, #2
	adds r0, r4, r0
	movs r1, #6
	ands r0, r1
	lsls r0, r0, #2
	ldrh r3, [r3]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F09C88
	adds r0, r6, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F09C88:
	adds r0, r2, #0
	adds r0, #0x5d
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	mov r2, sp
	adds r5, r2, r4
	ldrh r0, [r5]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x12
	adds r2, #0x60
	add r4, sl
	ldrh r0, [r4]
	lsls r3, r0, #0x10
	asrs r3, r3, #0x12
	subs r3, #0x30
	adds r0, r6, #0
	bl sub_8F01700
	ldrh r0, [r4]
	adds r0, #2
	movs r6, #0
	strh r0, [r4]
	mov r1, sb
	adds r3, r1, r7
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _08F09CFC
	movs r0, #0
	ldrsh r2, [r5, r0]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0xa0
	lsls r0, r0, #2
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	bge _08F09CF8
	ldrh r0, [r5]
	adds r0, #8
	strh r0, [r5]
	b _08F09D24
	.align 2, 0
_08F09CE4: .4byte gNESPalette
_08F09CE8: .4byte 0x05000200
_08F09CEC: .4byte 0x0000FF60
_08F09CF0: .4byte 0x0000FFB0
_08F09CF4: .4byte gGameInfo
_08F09CF8:
	strb r6, [r3]
	b _08F09D24
_08F09CFC:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, _08F09D1C @ =0xFFFFFD80
	adds r1, r1, r2
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	cmp r0, r1
	ble _08F09D20
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r5]
	b _08F09D24
	.align 2, 0
_08F09D1C: .4byte 0xFFFFFD80
_08F09D20:
	movs r0, #1
	strb r0, [r3]
_08F09D24:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08F09C44
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r1, _08F09D8C @ =0x040000D4
	ldr r0, _08F09D90 @ =gUnknown_03002450
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F09D94 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F09D98 @ =0x0400001A
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r0]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08F09D9C @ =0x000001FF
	cmp r8, r0
	bhi _08F09D60
	b _08F09C32
_08F09D60:
	bl FadeOut
	ldr r4, _08F09DA0 @ =gUnknown_08F64564
	ldr r1, _08F09DA4 @ =0x05000200
	adds r0, r4, #0
	bl LoadPalette
	ldr r1, _08F09DA8 @ =gUnknown_03001488
	adds r0, r4, #0
	bl LoadPalette
	movs r0, #0x5a
	bl DelayByAmount
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F09D8C: .4byte 0x040000D4
_08F09D90: .4byte gUnknown_03002450
_08F09D94: .4byte 0x84000100
_08F09D98: .4byte 0x0400001A
_08F09D9C: .4byte 0x000001FF
_08F09DA0: .4byte gUnknown_08F64564
_08F09DA4: .4byte 0x05000200
_08F09DA8: .4byte gUnknown_03001488

	thumb_func_start sub_8F09DAC
sub_8F09DAC: @ 0x08F09DAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #3
	bl PlaySfxById0
	ldr r2, _08F09F54 @ =0x0400000C
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r7, #0
	add r0, sp, #8
	mov sl, r0
	add r1, sp, #0x10
	mov sb, r1
	ldr r0, _08F09F58 @ =gNESPalette
	ldrh r4, [r0, #0x22]
	ldr r5, _08F09F5C @ =0x0400004C
_08F09DDE:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #2
	bl DarkenPalette
	ldr r0, _08F09F60 @ =0x05000200
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #2
	bl DarkenPalette
	lsls r0, r7, #0xc
	lsls r1, r7, #8
	adds r0, r0, r1
	lsls r1, r7, #4
	adds r0, r0, r1
	adds r0, r0, r7
	strh r0, [r5]
	movs r0, #4
	bl DelayByAmount
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xf
	bls _08F09DDE
	ldr r2, _08F09F54 @ =0x0400000C
	ldrh r1, [r2]
	ldr r0, _08F09F64 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08F09F5C @ =0x0400004C
	movs r4, #0
	strh r4, [r0]
	bl sub_8F019B8
	bl sub_8F09AE4
	mov r1, sp
	movs r2, #0
	ldr r0, _08F09F68 @ =0x0000FFE0
	strh r0, [r1, #6]
	movs r0, #0xa0
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1, #6]
	mov r0, sb
	strb r4, [r0, #3]
	mov r1, sp
	movs r0, #0x20
	strh r0, [r1, #4]
	movs r0, #0xa8
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1, #4]
	mov r0, sb
	strb r4, [r0, #2]
	mov r0, sp
	strh r2, [r0, #2]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r1, #2]
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1, #1]
	mov r0, sp
	strh r2, [r0]
	movs r0, #0xb8
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1]
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	movs r4, #0
	ldr r0, _08F09F6C @ =0x040000D4
	mov r8, r0
_08F09E7C:
	bl sub_8F016EC
	movs r7, #0
	adds r4, #1
	str r4, [sp, #0x14]
_08F09E86:
	movs r0, #3
	subs r0, r0, r7
	ldr r1, _08F09F70 @ =gGameInfo
	adds r1, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F09EF8
	subs r0, #1
	lsls r0, r0, #6
	ldr r1, _08F09F70 @ =gGameInfo
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x5e
	ldrh r6, [r0]
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F09EBA
	adds r0, r6, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F09EBA:
	adds r0, r2, #0
	adds r0, #0x5d
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	lsls r4, r7, #1
	mov r0, sp
	adds r5, r0, r4
	ldrh r0, [r5]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x12
	adds r2, #0x68
	add r4, sl
	ldrh r0, [r4]
	lsls r3, r0, #0x10
	asrs r3, r3, #0x12
	subs r3, #0x40
	adds r0, r6, #0
	bl sub_8F01700
	ldrh r0, [r4]
	subs r0, #4
	strh r0, [r4]
	mov r1, sb
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5]
	adds r0, r1, r0
	strh r0, [r5]
_08F09EF8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08F09E86
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r0, _08F09F74 @ =gUnknown_03002450
	mov r1, r8
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F09F78 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xc7
	bls _08F09E7C
	bl FadeOut
	ldr r4, _08F09F7C @ =gUnknown_08F64564
	ldr r1, _08F09F60 @ =0x05000200
	adds r0, r4, #0
	bl LoadPalette
	ldr r1, _08F09F80 @ =gUnknown_03001488
	adds r0, r4, #0
	bl LoadPalette
	movs r0, #0x5a
	bl DelayByAmount
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F09F54: .4byte 0x0400000C
_08F09F58: .4byte gNESPalette
_08F09F5C: .4byte 0x0400004C
_08F09F60: .4byte 0x05000200
_08F09F64: .4byte 0x0000FFBF
_08F09F68: .4byte 0x0000FFE0
_08F09F6C: .4byte 0x040000D4
_08F09F70: .4byte gGameInfo
_08F09F74: .4byte gUnknown_03002450
_08F09F78: .4byte 0x84000100
_08F09F7C: .4byte gUnknown_08F64564
_08F09F80: .4byte gUnknown_03001488

	thumb_func_start sub_8F09F84
sub_8F09F84: @ 0x08F09F84
	push {r4, r5, lr}
	movs r5, #0
	ldr r0, _08F09FDC @ =gNESPalette+0x70
	ldrh r4, [r0]
_08F09F8C:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl DarkenPalette
	ldr r0, _08F09FE0 @ =0x05000200
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl DarkenPalette
	movs r0, #1
	bl DelayByAmount
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _08F09F8C
	movs r0, #0x50
	bl sub_8F0A04C
	movs r0, #1
	bl sub_8F0A2A8
	ldr r0, _08F09FE4 @ =MusicPlayer0Info
	movs r1, #5
	bl m4aMPlayFadeOut
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #0xb4
	bl DelayByAmount
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F09FDC: .4byte gNESPalette+0x70
_08F09FE0: .4byte 0x05000200
_08F09FE4: .4byte MusicPlayer0Info

	thumb_func_start InitiateEndingSequence
InitiateEndingSequence: @ 0x08F09FE8
	push {lr}
	ldr r0, _08F0A040 @ =gGameInfo
	adds r2, r0, #0
	adds r2, #0x41
	movs r1, #0
	strb r1, [r2]
	adds r2, #0x40
	strb r1, [r2]
	adds r2, #0x40
	strb r1, [r2]
	ldr r2, _08F0A044 @ =0x00000101
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, _08F0A048 @ =0x04000054
	strh r1, [r0]
	subs r0, #4
	strh r1, [r0]
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_8F0A04C
	movs r0, #2
	bl sub_8F0A2A8
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #3
	bl sub_8F0A2A8
	movs r0, #9
	bl PlaySfxById0
	movs r0, #1
	bl PlaySfxById3
	movs r0, #4
	bl sub_8F0A2A8
	bl ProcessEndingScript
	pop {r0}
	bx r0
	.align 2, 0
_08F0A040: .4byte gGameInfo
_08F0A044: .4byte 0x00000101
_08F0A048: .4byte 0x04000054

	thumb_func_start sub_8F0A04C
sub_8F0A04C: @ 0x08F0A04C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _08F0A22C @ =gUnknown_08F1BC80
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	add r4, sp, #0x10
	ldr r1, _08F0A230 @ =gUnknown_08F1BC90
	adds r0, r4, #0
	movs r2, #0x20
	bl memcpy
	add r5, sp, #0x30
	ldr r1, _08F0A234 @ =gUnknown_08F1BCB0
	adds r0, r5, #0
	movs r2, #8
	bl memcpy
	movs r0, #0xb
	bl ChangeBgMusic
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08F0A238 @ =gUnknown_08F5EF1C
	ldr r1, _08F0A23C @ =0x0600E000
	movs r2, #0x80
	lsls r2, r2, #1
	bl BitUnpack
	ldr r1, _08F0A240 @ =0x0600D020
	adds r0, r4, #0
	movs r2, #2
	bl BitUnpack
	ldr r1, _08F0A244 @ =gUnknown_03000808
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	ldr r6, _08F0A248 @ =0xFF900000
_08F0A0AC:
	asrs r1, r6, #0x10
	movs r2, #0xf8
	ands r2, r4
	lsls r2, r2, #3
	ldr r3, _08F0A24C @ =0x06003000
	adds r2, r2, r3
	ldr r0, _08F0A250 @ =gUnknown_08F5DF1C
	bl sub_8F00F48
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r6, r6, r0
	adds r4, #8
	cmp r4, #0x9f
	ble _08F0A0AC
	ldr r0, _08F0A254 @ =0x06003340
	ldr r1, _08F0A258 @ =0x00002281
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, #2
	ldr r3, _08F0A25C @ =0x00002282
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0x3a
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r4, #0
	ldr r3, _08F0A260 @ =0x0000037F
	lsls r7, r7, #0x10
	ldr r2, _08F0A264 @ =0x06001000
	movs r1, #0
_08F0A0EC:
	adds r0, r4, r2
	strh r1, [r0]
	adds r4, #2
	cmp r4, r3
	ble _08F0A0EC
	ldr r2, _08F0A268 @ =0x000004FF
	cmp r4, r2
	bgt _08F0A10E
	ldr r6, _08F0A264 @ =0x06001000
	ldr r3, _08F0A26C @ =gUnknown_030034C0
_08F0A100:
	adds r1, r4, r6
	ldrh r0, [r3]
	adds r0, #0x10
	strh r0, [r1]
	adds r4, #2
	cmp r4, r2
	ble _08F0A100
_08F0A10E:
	movs r4, #0
_08F0A110:
	asrs r6, r7, #0x10
	adds r2, r6, r4
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r0, #0xf8
	ands r2, r0
	lsls r2, r2, #3
	ldr r0, _08F0A270 @ =0x06002000
	adds r2, r2, r0
	ldr r0, _08F0A250 @ =gUnknown_08F5DF1C
	bl sub_8F00F48
	adds r4, #8
	cmp r4, #0x9f
	ble _08F0A110
	ldr r0, _08F0A274 @ =0x04000014
	movs r2, #8
	strh r2, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08F0A278 @ =0x0400001A
	ldr r3, _08F0A27C @ =0x0000FFFC
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08F0A280 @ =0x0400001C
	strh r2, [r0]
	adds r1, #4
	movs r0, #0xff
	ands r0, r6
	strh r0, [r1]
	bl sub_8F016EC
	ldr r1, _08F0A284 @ =gUnknown_030007B8
	ldrh r0, [r1]
	mov r8, r0
	ldr r0, _08F0A288 @ =0xFFFFFC00
	add r0, r8
	strh r0, [r1]
	movs r4, #0
	ldr r7, _08F0A28C @ =gGameInfo
	adds r6, r5, #0
_08F0A168:
	adds r0, r7, #0
	adds r0, #8
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0A1AE
	subs r0, #1
	lsls r0, r0, #6
	adds r2, r0, r7
	adds r0, r2, #0
	adds r0, #0x5e
	ldrh r5, [r0]
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F0A196
	adds r0, r5, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08F0A196:
	adds r0, r2, #0
	adds r0, #0x5d
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	ldrb r2, [r6]
	subs r2, #8
	ldrb r3, [r6, #1]
	subs r3, #0x30
	adds r0, r5, #0
	bl sub_8F01700
_08F0A1AE:
	adds r6, #2
	adds r4, #1
	cmp r4, #3
	ble _08F0A168
	ldr r0, _08F0A284 @ =gUnknown_030007B8
	mov r1, r8
	strh r1, [r0]
	bl sub_8F0191C
	ldr r1, _08F0A290 @ =0x040000D4
	ldr r0, _08F0A294 @ =gUnknown_03002450
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0A298 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _08F0A29C @ =gUnknown_03001480
	mov r0, sp
	adds r1, r4, #0
	bl LoadPalette
	ldr r0, _08F0A2A0 @ =gUnknown_08F64564
	adds r1, r4, #0
	adds r1, #8
	bl LoadPalette
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xf0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r5, r4, #0
	movs r4, #0x1f
_08F0A1F6:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r5, #0
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	ldr r0, _08F0A2A4 @ =0x05000200
	adds r1, r5, #0
	adds r1, #8
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	movs r0, #1
	bl DelayByAmount
	subs r4, #1
	cmp r4, #0
	bge _08F0A1F6
	add sp, #0x38
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0A22C: .4byte gUnknown_08F1BC80
_08F0A230: .4byte gUnknown_08F1BC90
_08F0A234: .4byte gUnknown_08F1BCB0
_08F0A238: .4byte gUnknown_08F5EF1C
_08F0A23C: .4byte 0x0600E000
_08F0A240: .4byte 0x0600D020
_08F0A244: .4byte gUnknown_03000808
_08F0A248: .4byte 0xFF900000
_08F0A24C: .4byte 0x06003000
_08F0A250: .4byte gUnknown_08F5DF1C
_08F0A254: .4byte 0x06003340
_08F0A258: .4byte 0x00002281
_08F0A25C: .4byte 0x00002282
_08F0A260: .4byte 0x0000037F
_08F0A264: .4byte 0x06001000
_08F0A268: .4byte 0x000004FF
_08F0A26C: .4byte gUnknown_030034C0
_08F0A270: .4byte 0x06002000
_08F0A274: .4byte 0x04000014
_08F0A278: .4byte 0x0400001A
_08F0A27C: .4byte 0x0000FFFC
_08F0A280: .4byte 0x0400001C
_08F0A284: .4byte gUnknown_030007B8
_08F0A288: .4byte 0xFFFFFC00
_08F0A28C: .4byte gGameInfo
_08F0A290: .4byte 0x040000D4
_08F0A294: .4byte gUnknown_03002450
_08F0A298: .4byte 0x84000100
_08F0A29C: .4byte gUnknown_03001480
_08F0A2A0: .4byte gUnknown_08F64564
_08F0A2A4: .4byte 0x05000200

	thumb_func_start sub_8F0A2A8
sub_8F0A2A8: @ 0x08F0A2A8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08F0A32E
	cmp r0, #2
	bgt _08F0A2BE
	cmp r0, #1
	beq _08F0A2CA
	b _08F0A44E
_08F0A2BE:
	cmp r1, #3
	beq _08F0A390
	cmp r1, #4
	bne _08F0A2C8
	b _08F0A3E6
_08F0A2C8:
	b _08F0A44E
_08F0A2CA:
	movs r5, #0x50
	ldr r7, _08F0A308 @ =0x00000157
	ldr r6, _08F0A30C @ =0x0400001E
_08F0A2D0:
	lsls r5, r5, #0x10
	asrs r4, r5, #0x10
	adds r2, r4, #0
	adds r2, #0xa0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r0, #0xf8
	ands r2, r0
	lsls r2, r2, #3
	ldr r0, _08F0A310 @ =0x06002000
	adds r2, r2, r0
	ldr r0, _08F0A314 @ =gUnknown_08F5DF1C
	bl sub_8F00F48
	movs r0, #0xff
	ands r0, r4
	strh r0, [r6]
	bl Random
	lsrs r0, r0, #0x1b
	cmp r0, #0
	bne _08F0A318
	bl sub_8F0A464
	movs r0, #3
	bl DelayByAmount
	b _08F0A31E
	.align 2, 0
_08F0A308: .4byte 0x00000157
_08F0A30C: .4byte 0x0400001E
_08F0A310: .4byte 0x06002000
_08F0A314: .4byte gUnknown_08F5DF1C
_08F0A318:
	movs r0, #4
	bl DelayByAmount
_08F0A31E:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	ble _08F0A2D0
	b _08F0A44E
_08F0A32E:
	movs r5, #0x88
	lsls r5, r5, #1
	lsls r4, r5, #0x10
	ldr r6, _08F0A368 @ =0x0400001E
_08F0A336:
	asrs r4, r4, #0x10
	movs r2, #0xf8
	ands r2, r4
	lsls r2, r2, #3
	ldr r0, _08F0A36C @ =0x06002000
	adds r2, r2, r0
	ldr r0, _08F0A370 @ =gUnknown_08F5DF1C
	adds r1, r4, #0
	bl sub_8F00F48
	movs r0, #0xff
	ands r0, r4
	strh r0, [r6]
	bl Random
	lsrs r0, r0, #0x1b
	cmp r0, #0
	bne _08F0A374
	bl sub_8F0A464
	movs r0, #3
	bl DelayByAmount
	b _08F0A37A
	.align 2, 0
_08F0A368: .4byte 0x0400001E
_08F0A36C: .4byte 0x06002000
_08F0A370: .4byte gUnknown_08F5DF1C
_08F0A374:
	movs r0, #4
	bl DelayByAmount
_08F0A37A:
	lsls r0, r5, #0x10
	ldr r1, _08F0A38C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	lsls r4, r5, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0x98
	bgt _08F0A336
	b _08F0A44E
	.align 2, 0
_08F0A38C: .4byte 0xFFFF0000
_08F0A390:
	movs r0, #0x3c
	bl DelayByAmount
	movs r4, #0
	ldr r5, _08F0A3CC @ =0x04000014
_08F0A39A:
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08F0A3AA
	movs r0, #0xa
	bl PlaySfxById0
_08F0A3AA:
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	movs r0, #2
	ands r1, r0
	lsls r1, r1, #1
	movs r0, #8
	subs r0, r0, r1
	strh r0, [r5]
	bl Random
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _08F0A3D0
	bl sub_8F0A464
	b _08F0A3D6
	.align 2, 0
_08F0A3CC: .4byte 0x04000014
_08F0A3D0:
	movs r0, #1
	bl DelayByAmount
_08F0A3D6:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _08F0A39A
	b _08F0A44E
_08F0A3E6:
	movs r4, #0
_08F0A3E8:
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08F0A3F6
	bl sub_8F0A464
_08F0A3F6:
	movs r0, #1
	bl DelayByAmount
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _08F0A3E8
	movs r5, #0x98
	ldr r7, _08F0A454 @ =0x0400001E
	ldr r6, _08F0A458 @ =0x000003FF
_08F0A412:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	adds r2, r4, #0
	adds r2, #0xa0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r0, #0xf8
	ands r2, r0
	lsls r2, r2, #3
	ldr r0, _08F0A45C @ =0x06002000
	adds r2, r2, r0
	ldr r0, _08F0A460 @ =gUnknown_08F5DF1C
	bl sub_8F00F48
	movs r0, #0xff
	ands r0, r4
	strh r0, [r7]
	movs r0, #1
	bl DelayByAmount
	adds r4, #4
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r6
	ble _08F0A412
	movs r0, #0x96
	lsls r0, r0, #1
	bl DelayByAmount
_08F0A44E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0A454: .4byte 0x0400001E
_08F0A458: .4byte 0x000003FF
_08F0A45C: .4byte 0x06002000
_08F0A460: .4byte gUnknown_08F5DF1C

	thumb_func_start sub_8F0A464
sub_8F0A464: @ 0x08F0A464
	push {r4, lr}
	sub sp, #4
	ldr r1, _08F0A4AC @ =gUnknown_08F1BCB8
	mov r0, sp
	movs r2, #3
	bl memcpy
	ldr r2, _08F0A4B0 @ =gUnknown_03000000
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08F0A486
	movs r0, #0
	strb r0, [r2]
_08F0A486:
	movs r4, #0xa0
	lsls r4, r4, #0x13
	ldr r1, _08F0A4B4 @ =gNESPalette
	ldrb r0, [r2]
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	bl DelayByAmount
	movs r0, #0
	strh r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0A4AC: .4byte gUnknown_08F1BCB8
_08F0A4B0: .4byte gUnknown_03000000
_08F0A4B4: .4byte gNESPalette

	thumb_func_start ProcessEndingScript
ProcessEndingScript: @ 0x08F0A4B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	bl sub_8F0AB60
	movs r0, #0xff
	bl ChangeBgMusic
	ldr r1, _08F0A4FC @ =0x04000018
	movs r0, #0x18
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1]
	subs r1, #0x1a
	movs r2, #0xa8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _08F0A500 @ =m1_data_ending_script
_08F0A4E6:
	ldrb r0, [r4]
	subs r0, #1
	cmp r0, #0x12
	bls _08F0A4F0
	b _08F0A9D4
_08F0A4F0:
	lsls r0, r0, #2
	ldr r1, _08F0A504 @ =_08F0A508
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0A4FC: .4byte 0x04000018
_08F0A500: .4byte m1_data_ending_script
_08F0A504: .4byte _08F0A508
_08F0A508: @ jump table
	.4byte _08F0A554 @ case 0
	.4byte _08F0A572 @ case 1
	.4byte _08F0A57A @ case 2
	.4byte _08F0A582 @ case 3
	.4byte _08F0A5C0 @ case 4
	.4byte _08F0A62C @ case 5
	.4byte _08F0A804 @ case 6
	.4byte _08F0A9A4 @ case 7
	.4byte _08F0A84C @ case 8
	.4byte _08F0A8B0 @ case 9
	.4byte _08F0A8DC @ case 10
	.4byte _08F0A8F8 @ case 11
	.4byte _08F0A908 @ case 12
	.4byte _08F0A960 @ case 13
	.4byte _08F0A96A @ case 14
	.4byte _08F0A97C @ case 15
	.4byte _08F0A990 @ case 16
	.4byte _08F0A9A8 @ case 17
	.4byte _08F0A9C6 @ case 18
_08F0A554:
	ldrb r5, [r4, #1]
	adds r4, #2
	cmp r5, #0
	beq _08F0A4E6
_08F0A55C:
	bl sub_8F040E0
	movs r0, #1
	bl sub_8F0AAA4
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08F0A55C
	b _08F0A4E6
_08F0A572:
	bl WaitForActionButtonPress
_08F0A576:
	adds r4, #2
	b _08F0A4E6
_08F0A57A:
	bl sub_8F0AB60
	adds r4, #1
	b _08F0A4E6
_08F0A582:
	ldrb r0, [r4, #1]
	ldr r1, _08F0A5B0 @ =0x0600C000
	movs r2, #0x40
	bl BitUnpackById
	ldrb r0, [r4, #2]
	ldr r1, _08F0A5B4 @ =0x0600C800
	movs r2, #0x40
	bl BitUnpackById
	ldrb r0, [r4, #3]
	ldr r1, _08F0A5B8 @ =0x06010000
	movs r2, #0x80
	bl BitUnpackById
	ldrb r0, [r4, #4]
	ldr r1, _08F0A5BC @ =0x06011000
	movs r2, #0x80
	bl BitUnpackById
	adds r4, #5
	b _08F0A4E6
	.align 2, 0
_08F0A5B0: .4byte 0x0600C000
_08F0A5B4: .4byte 0x0600C800
_08F0A5B8: .4byte 0x06000000+OAM_VRAM_OFFSET
_08F0A5BC: .4byte 0x06001000+OAM_VRAM_OFFSET
_08F0A5C0:
	ldrb r3, [r4, #2]
	lsls r0, r3, #8
	ldrb r1, [r4, #1]
	orrs r0, r1
	ldr r2, _08F0A624 @ =0xFFFFE000
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r7, [r4, #3]
	ldrb r3, [r4, #4]
	mov ip, r3
	adds r4, #5
	movs r5, #0
	cmp r5, ip
	blo _08F0A5E2
	b _08F0A4E6
_08F0A5E2:
	lsls r0, r0, #1
	mov r8, r0
_08F0A5E6:
	movs r6, #0
	adds r0, r5, #1
	str r0, [sp, #0xc]
	cmp r6, r7
	bhs _08F0A616
	lsls r0, r5, #6
	mov r1, r8
	adds r2, r1, r0
	ldr r5, _08F0A628 @ =0x06001000
	movs r0, #0x80
	lsls r0, r0, #2
	adds r3, r0, #0
_08F0A5FE:
	lsls r0, r6, #1
	adds r0, r0, r2
	adds r0, r0, r5
	ldrb r1, [r4]
	orrs r1, r3
	strh r1, [r0]
	adds r4, #1
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r7
	blo _08F0A5FE
_08F0A616:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, ip
	blo _08F0A5E6
	b _08F0A4E6
	.align 2, 0
_08F0A624: .4byte 0xFFFFE000
_08F0A628: .4byte 0x06001000
_08F0A62C:
	ldrb r2, [r4, #2]
	lsls r0, r2, #8
	ldrb r3, [r4, #1]
	orrs r0, r3
	ldr r1, _08F0A7C0 @ =0xFFFFDC40
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r7, [r4, #3]
	ldrb r2, [r4, #4]
	mov ip, r2
	adds r4, #5
	movs r5, #0
	cmp r5, ip
	blo _08F0A64E
	b _08F0A4E6
_08F0A64E:
	movs r6, #0
	adds r3, r5, #1
	str r3, [sp, #0xc]
	cmp r6, r7
	blo _08F0A65A
	b _08F0A7B0
_08F0A65A:
	movs r0, #0xc
	mov sl, r0
	movs r1, #0x30
	mov sb, r1
	movs r2, #0xc0
	mov r8, r2
_08F0A666:
	lsls r1, r5, #3
	ldr r3, [sp, #8]
	adds r1, r3, r1
	adds r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #7
	ands r3, r1
	lsls r3, r3, #2
	movs r0, #0x38
	ands r0, r1
	lsls r0, r0, #4
	orrs r3, r0
	lsls r3, r3, #1
	ldr r2, _08F0A7C4 @ =0x06001000
	adds r2, r3, r2
	movs r1, #3
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xc
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7C8 @ =0x06001002
	adds r2, r3, r2
	movs r1, #3
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xc
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7CC @ =0x06001040
	adds r2, r3, r2
	movs r1, #3
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xc
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7D0 @ =0x06001042
	adds r2, r3, r2
	movs r1, #3
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xc
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7D4 @ =0x06001004
	adds r2, r3, r2
	mov r1, sl
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xa
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7D8 @ =0x06001006
	adds r2, r3, r2
	mov r1, sl
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xa
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7DC @ =0x06001044
	adds r2, r3, r2
	mov r1, sl
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xa
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7E0 @ =0x06001046
	adds r2, r3, r2
	mov r1, sl
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xa
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7E4 @ =0x06001080
	adds r2, r3, r2
	mov r1, sb
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7E8 @ =0x06001082
	adds r2, r3, r2
	mov r1, sb
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7EC @ =0x060010C0
	adds r2, r3, r2
	mov r1, sb
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7F0 @ =0x060010C2
	adds r2, r3, r2
	mov r1, sb
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7F4 @ =0x06001084
	adds r2, r3, r2
	mov r1, r8
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #6
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7F8 @ =0x06001086
	adds r2, r3, r2
	mov r1, r8
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #6
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7FC @ =0x060010C4
	adds r2, r3, r2
	mov r1, r8
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #6
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r0, _08F0A800 @ =0x060010C6
	adds r3, r3, r0
	mov r1, r8
	ldrb r2, [r4]
	ands r1, r2
	lsls r1, r1, #6
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r4, #1
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r7
	bhs _08F0A7B0
	b _08F0A666
_08F0A7B0:
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x18
	lsrs r5, r0, #0x18
	cmp r5, ip
	bhs _08F0A7BC
	b _08F0A64E
_08F0A7BC:
	b _08F0A4E6
	.align 2, 0
_08F0A7C0: .4byte 0xFFFFDC40
_08F0A7C4: .4byte 0x06001000
_08F0A7C8: .4byte 0x06001002
_08F0A7CC: .4byte 0x06001040
_08F0A7D0: .4byte 0x06001042
_08F0A7D4: .4byte 0x06001004
_08F0A7D8: .4byte 0x06001006
_08F0A7DC: .4byte 0x06001044
_08F0A7E0: .4byte 0x06001046
_08F0A7E4: .4byte 0x06001080
_08F0A7E8: .4byte 0x06001082
_08F0A7EC: .4byte 0x060010C0
_08F0A7F0: .4byte 0x060010C2
_08F0A7F4: .4byte 0x06001084
_08F0A7F8: .4byte 0x06001086
_08F0A7FC: .4byte 0x060010C4
_08F0A800: .4byte 0x060010C6
_08F0A804:
	adds r0, r4, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette
	ldr r1, _08F0A840 @ =0x050001E0
	ldr r2, _08F0A844 @ =gNESPalette
	ldrb r3, [r4, #1]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldrb r3, [r4, #1]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0
	bl sub_8F0AAA4
	ldr r0, _08F0A848 @ =0x04000050
	ldrh r0, [r0]
	cmp r0, #0
	beq _08F0A83A
	bl FadeIn
_08F0A83A:
	adds r4, #0x11
	b _08F0A4E6
	.align 2, 0
_08F0A840: .4byte 0x050001E0
_08F0A844: .4byte gNESPalette
_08F0A848: .4byte 0x04000050
_08F0A84C:
	ldrb r2, [r4, #1]
	movs r0, #0x7f
	adds r5, r0, #0
	ands r5, r2
	ldrb r1, [r4, #2]
	adds r6, r0, #0
	ands r6, r1
	ldrb r7, [r4, #3]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08F0A86E
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r7, r0
_08F0A86E:
	ldrb r0, [r4, #4]
	mov ip, r0
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08F0A886
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	mov r2, ip
	orrs r2, r0
	mov ip, r2
_08F0A886:
	ldrb r3, [r4, #6]
	lsls r2, r3, #8
	ldrb r0, [r4, #5]
	orrs r2, r0
	ldr r1, _08F0A8AC @ =gUnknown_03001D40
	lsls r0, r5, #5
	adds r0, r0, r1
	adds r1, r5, #1
	strb r1, [r0]
	strb r6, [r0, #2]
	movs r1, #0
	strh r7, [r0, #4]
	mov r3, ip
	strh r3, [r0, #6]
	strh r2, [r0, #0x16]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	adds r4, #7
	b _08F0A4E6
	.align 2, 0
_08F0A8AC: .4byte gUnknown_03001D40
_08F0A8B0:
	ldrb r1, [r4, #3]
	lsls r0, r1, #8
	ldrb r2, [r4, #2]
	orrs r0, r2
	ldrb r7, [r4, #4]
	ldrb r3, [r4, #5]
	mov ip, r3
	ldr r2, _08F0A8D8 @ =gUnknown_03001D40
	ldrb r3, [r4, #1]
	lsls r1, r3, #5
	adds r1, r1, r2
	ldrh r2, [r1, #0x16]
	adds r0, r2, r0
	strh r0, [r1, #0x16]
	strb r7, [r1, #0xc]
	mov r3, ip
	strb r3, [r1, #0xd]
	adds r4, #6
	b _08F0A4E6
	.align 2, 0
_08F0A8D8: .4byte gUnknown_03001D40
_08F0A8DC:
	ldrb r0, [r4, #1]
	cmp r0, #0xfe
	bne _08F0A8F0
	ldr r0, _08F0A8EC @ =MusicPlayer0Info
	movs r1, #0xa
	bl m4aMPlayFadeOut
	b _08F0A576
	.align 2, 0
_08F0A8EC: .4byte MusicPlayer0Info
_08F0A8F0:
	ldrb r0, [r4, #1]
	bl ChangeBgMusic
	b _08F0A576
_08F0A8F8:
	ldrb r0, [r4, #1]
	ldr r1, _08F0A904 @ =0x06011000
	movs r2, #0x80
	bl BitUnpackById
	b _08F0A576
	.align 2, 0
_08F0A904: .4byte 0x06001000+OAM_VRAM_OFFSET
_08F0A908:
	ldrb r0, [r4, #1]
	ldr r1, _08F0A948 @ =0x0600D000
	movs r2, #0x40
	bl BitUnpackById
	ldrb r0, [r4, #2]
	ldr r1, _08F0A94C @ =0x0600D800
	movs r2, #0x40
	bl BitUnpackById
	ldrb r0, [r4, #3]
	ldr r1, _08F0A950 @ =0x0600C000
	movs r2, #0x40
	bl BitUnpackById
	ldrb r0, [r4, #4]
	ldr r1, _08F0A954 @ =0x0600C800
	movs r2, #0x40
	bl BitUnpackById
	ldrb r0, [r4, #5]
	ldr r1, _08F0A958 @ =0x06010000
	movs r2, #0x80
	bl BitUnpackById
	ldrb r0, [r4, #6]
	ldr r1, _08F0A95C @ =0x06011000
	movs r2, #0x80
	bl BitUnpackById
	adds r4, #7
	b _08F0A4E6
	.align 2, 0
_08F0A948: .4byte 0x0600D000
_08F0A94C: .4byte 0x0600D800
_08F0A950: .4byte 0x0600C000
_08F0A954: .4byte 0x0600C800
_08F0A958: .4byte 0x06000000+OAM_VRAM_OFFSET
_08F0A95C: .4byte 0x06001000+OAM_VRAM_OFFSET
_08F0A960:
	ldrb r1, [r4, #1]
	str r1, [sp, #4]
	adds r4, #2
	str r4, [sp]
	b _08F0A4E6
_08F0A96A:
	ldr r0, [sp, #4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #0
	beq _08F0A9A4
	ldr r4, [sp]
	b _08F0A4E6
_08F0A97C:
	ldr r0, _08F0A98C @ =gUnknown_03001D40
	ldrb r2, [r4, #1]
	lsls r1, r2, #5
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	b _08F0A576
	.align 2, 0
_08F0A98C: .4byte gUnknown_03001D40
_08F0A990:
	movs r0, #1
	movs r1, #0x10
	bl SetTextPosition
	ldrb r3, [r4, #2]
	lsls r0, r3, #8
	ldrb r1, [r4, #1]
	orrs r0, r1
	bl DrawTextWithIdNoWait
_08F0A9A4:
	adds r4, #3
	b _08F0A4E6
_08F0A9A8:
	ldrb r0, [r4, #3]
	ldrb r1, [r4, #4]
	bl SetTextPosition
	ldrb r2, [r4, #2]
	lsls r0, r2, #8
	ldrb r3, [r4, #1]
	orrs r0, r3
	adds r0, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl DrawTextWithIdNoWait
	adds r4, #5
	b _08F0A4E6
_08F0A9C6:
	movs r0, #0
	bl sub_8F0AAA4
	bl FadeIn
	adds r4, #1
	b _08F0A4E6
_08F0A9D4:
	bl M1_SoftReset
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
