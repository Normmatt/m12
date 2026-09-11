.syntax unified
.section .text

@	thumb_func_start sub_8F07374
@sub_8F07374: @ 0x08F07374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	ldr r1, _08F07528 @ =gUnknown_08F1BAC8
	mov r0, sp
	movs r2, #8
	bl memcpy
	add r0, sp, #8
	mov sl, r0
	ldr r1, _08F0752C @ =gUnknown_08F1BAD0
	movs r2, #8
	bl memcpy
	add r1, sp, #0x10
	mov sb, r1
	ldr r1, _08F07530 @ =gUnknown_08F1BAD8
	mov r0, sb
	movs r2, #0x10
	bl memcpy
	add r2, sp, #0x20
	mov r8, r2
	ldr r1, _08F07534 @ =gUnknown_08F1BAE8
	mov r0, r8
	movs r2, #0x10
	bl memcpy
	add r6, sp, #0x30
	ldr r1, _08F07538 @ =gUnknown_08F1BAF8
	adds r0, r6, #0
	movs r2, #0x10
	bl memcpy
	add r5, sp, #0x40
	ldr r1, _08F0753C @ =gUnknown_08F1BB08
	adds r0, r5, #0
	movs r2, #0x10
	bl memcpy
	ldr r1, _08F07540 @ =gUnknown_0300317C
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #4
	ldr r3, _08F07544 @ =gUnknown_030007C0
	strb r0, [r3]
	ldr r7, _08F07548 @ =m1_data_object_table_3+0x28
	ldrb r1, [r7, #1]
	lsls r0, r1, #8
	adds r3, r7, #0
	subs r3, #0x28
	adds r0, r0, r3
	ldrb r7, [r7]
	adds r0, r7, r0
	ldr r1, _08F0754C @ =0xFFFF8000
	adds r7, r0, r1
	ldr r4, _08F07550 @ =gCurrentItemId
	ldrb r2, [r4]
	lsls r0, r2, #1
	adds r0, r0, r7
	ldr r7, _08F07554 @ =0xFFFFFEE2
	adds r7, r7, r0
	mov ip, r7
	ldr r7, _08F07558 @ =0xFFFFFEE3
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r0, r0, r3
	mov r3, ip
	ldrb r3, [r3]
	adds r0, r3, r0
	adds r7, r0, r1
	ldr r0, _08F0755C @ =gPlayerX
	mov ip, r0
	lsls r2, r2, #3
	ldr r1, _08F07560 @ =gSpriteData+2+0x197C
	adds r2, r2, r1
	ldrh r2, [r2]
	ldr r3, _08F07564 @ =0xFFFFFE00
	adds r0, r2, r3
	mov r2, ip
	strh r0, [r2]
	ldr r2, _08F07568 @ =gPlayerY
	ldrb r4, [r4]
	lsls r0, r4, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, #0xc0
	adds r0, r0, r3
	strh r0, [r2]
	ldr r2, _08F0756C @ =gUnknown_03000840
	ldr r1, _08F07570 @ =gUnknown_030034A8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	bl sub_8F00ADC
	bl sub_8F0B040
	movs r0, #0x1e
	bl DelayByAmount
	movs r0, #0x70
	bl sub_8F03F3C
	movs r0, #0
	str r0, [sp, #0x50]
	ldrb r4, [r7, #1]
	ldrb r0, [r7]
	cmp r0, #0
	bne _08F0745C
	b _08F0766C
_08F0745C:
	ldr r1, _08F07574 @ =gUnknown_03000C64
	mov r8, r1
	movs r2, #7
	mov sb, r2
	ldr r5, _08F07578 @ =gUnknown_03000788
	ldr r3, _08F0757C @ =0xFFFF8A28
	mov sl, r3
_08F0746A:
	ldr r0, _08F07580 @ =gUnknown_030007E0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F07476
	bl ResetVariablesUponEnteringTown
_08F07476:
	bl sub_8F01388
	bl sub_8F016EC
	mov r2, sb
	ldrb r6, [r7]
	ands r2, r6
	mov r0, r8
	strb r2, [r0]
	ldr r1, _08F07584 @ =gUnknown_08F1B660
	mov r0, sb
	ldrb r3, [r7]
	ands r0, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r6, _08F07544 @ =gUnknown_030007C0
	ldrb r6, [r6]
	muls r0, r6, r0
	ldrh r1, [r5]
	adds r0, r1, r0
	strh r0, [r5]
	ldr r3, _08F07588 @ =gUnknown_03001508
	ldr r1, _08F0758C @ =gUnknown_08F1B668
	mov r0, sb
	ldrb r6, [r7]
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08F07544 @ =gUnknown_030007C0
	ldrb r1, [r1]
	muls r0, r1, r0
	ldrh r6, [r3]
	adds r1, r6, r0
	strh r1, [r3]
	cmp r2, #2
	beq _08F074CA
	cmp r2, #6
	bne _08F074D2
_08F074CA:
	ldr r2, _08F07590 @ =0x0000FFC0
	adds r0, r2, #0
	ands r1, r0
	strh r1, [r3]
_08F074D2:
	movs r0, #0x1e
	ldr r3, [sp, #0x50]
	ands r0, r3
	cmp r0, #0
	bne _08F0759C
	cmp r4, #0
	bne _08F07596
	adds r7, #2
	ldrb r6, [r7]
	cmp r6, #0xf
	bhi _08F07594
	ldr r2, _08F0755C @ =gPlayerX
	ldrb r0, [r7, #1]
	strh r0, [r2]
	ldrb r3, [r7, #2]
	lsls r1, r3, #8
	adds r0, r0, r1
	ldr r6, _08F07564 @ =0xFFFFFE00
	adds r0, r0, r6
	strh r0, [r2]
	ldr r2, _08F07568 @ =gPlayerY
	ldrb r0, [r7, #3]
	strh r0, [r2]
	ldrb r3, [r7, #4]
	lsls r1, r3, #8
	adds r0, r0, r1
	adds r6, #0xc0
	adds r0, r0, r6
	strh r0, [r2]
	ldr r1, _08F0756C @ =gUnknown_03000840
	ldr r0, _08F07570 @ =gUnknown_030034A8
	strb r4, [r0]
	strb r4, [r1]
	ldrb r0, [r7]
	cmp r0, #0
	bne _08F0751C
	b _08F0766C
_08F0751C:
	adds r7, #5
	bl sub_8F00ADC
	ldrb r4, [r7, #1]
	b _08F07664
	.align 2, 0
_08F07528: .4byte gUnknown_08F1BAC8
_08F0752C: .4byte gUnknown_08F1BAD0
_08F07530: .4byte gUnknown_08F1BAD8
_08F07534: .4byte gUnknown_08F1BAE8
_08F07538: .4byte gUnknown_08F1BAF8
_08F0753C: .4byte gUnknown_08F1BB08
_08F07540: .4byte gUnknown_0300317C
_08F07544: .4byte gUnknown_030007C0
_08F07548: .4byte m1_data_object_table_3+0x28
_08F0754C: .4byte 0xFFFF8000
_08F07550: .4byte gCurrentItemId
_08F07554: .4byte 0xFFFFFEE2
_08F07558: .4byte 0xFFFFFEE3
_08F0755C: .4byte gPlayerX
_08F07560: .4byte gSpriteData+2+0x197C
_08F07564: .4byte 0xFFFFFE00
_08F07568: .4byte gPlayerY
_08F0756C: .4byte gUnknown_03000840
_08F07570: .4byte gUnknown_030034A8
_08F07574: .4byte gUnknown_03000C64
_08F07578: .4byte gUnknown_03000788
_08F0757C: .4byte 0xFFFF8A28
_08F07580: .4byte gUnknown_030007E0
_08F07584: .4byte gUnknown_08F1B660
_08F07588: .4byte gUnknown_03001508
_08F0758C: .4byte gUnknown_08F1B668
_08F07590: .4byte 0x0000FFC0
_08F07594:
	ldrb r4, [r7, #1]
_08F07596:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08F0759C:
	ldr r1, _08F07690 @ =gUnknown_030007C0
	ldrb r1, [r1]
	lsls r0, r1, #1
	ldr r2, [sp, #0x50]
	adds r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x50]
	mov r6, r8
	ldrb r3, [r6]
	mov r1, sp
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r1, #0x10
	movs r6, #0
	ldrsh r2, [r1, r6]
	mov ip, r2
	add r3, sp
	adds r3, #0x20
	movs r1, #0
	ldrsh r3, [r3, r1]
	movs r1, #9
	bl sub_8F01700
	mov r2, r8
	ldrb r3, [r2]
	mov r0, sp
	adds r0, r0, r3
	adds r0, #8
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r3, #1
	mov r1, sp
	adds r1, r1, r3
	adds r1, #0x30
	movs r2, #0
	ldrsh r6, [r1, r2]
	mov ip, r6
	add r3, sp
	adds r3, #0x40
	movs r6, #0
	ldrsh r3, [r3, r6]
	movs r1, #9
	mov r2, ip
	bl sub_8F01700
	bl sub_8F0191C
	bl DrawBg2Tilemap
	bl sub_8F040E0
	ldr r1, _08F07694 @ =0x040000D4
	ldr r0, _08F07698 @ =gBg2TilemapBuffer
	str r0, [r1]
	ldr r0, _08F0769C @ =0x06001000
	str r0, [r1, #4]
	ldr r0, _08F076A0 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F076A4 @ =gSpriteBuffer
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F076A8 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r1, #0xbc
	ldrh r2, [r5]
	lsrs r0, r2, #2
	movs r2, #0xf
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08F076AC @ =gUnknown_03001508
	ldrh r0, [r0]
	lsrs r0, r0, #2
	ands r0, r2
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08F07664
	bl sub_8F00C64
_08F07664:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08F0766C
	b _08F0746A
_08F0766C:
	ldr r1, _08F076B0 @ =gUnknown_0300317C
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08F076B4 @ =gUnknown_030007A0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	strb r0, [r1]
	bl UpdatePartyLocationsAfterTeleport
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F07690: .4byte gUnknown_030007C0
_08F07694: .4byte 0x040000D4
_08F07698: .4byte gBg2TilemapBuffer
_08F0769C: .4byte 0x06001000
_08F076A0: .4byte 0x84000200
_08F076A4: .4byte gSpriteBuffer
_08F076A8: .4byte 0x84000100
_08F076AC: .4byte gUnknown_03001508
_08F076B0: .4byte gUnknown_0300317C
_08F076B4: .4byte gUnknown_030007A0
.syntax divided
