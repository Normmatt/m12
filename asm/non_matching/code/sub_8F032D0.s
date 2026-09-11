.syntax unified
.section .text
@	thumb_func_start sub_8F032D0
@sub_8F032D0: @ 0x08F032D0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08F033BC @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F033B4
	ldr r6, _08F033C0 @ =gUnknown_030007A0
	movs r5, #0
	ldrsb r5, [r6, r5]
	cmp r5, #0
	bne _08F033B4
	ldr r0, _08F033C4 @ =gUnknown_03000818
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08F033B4
	ldr r2, _08F033C8 @ =gUnknown_03000788
	ldr r0, _08F033CC @ =gUnknown_08F1B670
	ldr r1, _08F033D0 @ =gUnknown_030007A4
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
	lsrs r3, r0, #0x10
	ldr r2, _08F033D4 @ =gUnknown_03001508
	ldr r0, _08F033D8 @ =gUnknown_08F1B674
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x58
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08F033DC @ =gUnknown_03000784
	ldr r4, [r0]
	ldrb r0, [r4]
	cmp r0, #1
	bne _08F03334
	adds r0, r2, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08F03334:
	ldrh r0, [r4, #4]
	subs r1, r3, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r3, [r4, #6]
	subs r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bhi _08F033B4
	cmp r0, #0x3f
	bhi _08F033B4
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	ldr r2, [r4, #8]
	subs r1, #0xff
	ldr r0, [sp]
	ands r0, r1
	ldrb r2, [r2, #4]
	orrs r0, r2
	str r0, [sp]
	mov r1, sp
	ldr r0, [r4, #8]
	ldrb r0, [r0, #5]
	strb r0, [r1, #1]
	ldr r0, [r4, #8]
	ldrb r0, [r0, #6]
	strb r0, [r1, #2]
	ldr r0, [r4, #8]
	ldrb r0, [r0, #7]
	strb r0, [r1, #3]
	ldr r3, _08F033E0 @ =gPlayerX
	ldr r2, [sp]
	ldr r1, _08F033E4 @ =0x0000FFC0
	ands r1, r2
	ldr r0, _08F033E8 @ =0x0000FE40
	adds r1, r1, r0
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	strh r0, [r3]
	ldr r1, _08F033EC @ =gPlayerY
	lsrs r0, r2, #0x16
	lsls r0, r0, #6
	ldr r3, _08F033F0 @ =0x0000FEC0
	adds r0, r0, r3
	lsls r2, r2, #0xa
	lsrs r2, r2, #0x1a
	adds r2, r2, r0
	strh r2, [r1]
	ldr r0, _08F033F4 @ =gUnknown_03000840
	ldr r1, _08F033F8 @ =gUnknown_030034A8
	strb r5, [r1]
	strb r5, [r0]
	movs r0, #0x20
	ldrb r4, [r4, #0x18]
	ands r0, r4
	cmp r0, #0
	beq _08F033B4
	adds r0, r5, #0
	subs r0, #0x10
	strb r0, [r1]
_08F033B4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F033BC: .4byte gUnknown_030007C8
_08F033C0: .4byte gUnknown_030007A0
_08F033C4: .4byte gUnknown_03000818
_08F033C8: .4byte gUnknown_03000788
_08F033CC: .4byte gUnknown_08F1B670
_08F033D0: .4byte gUnknown_030007A4
_08F033D4: .4byte gUnknown_03001508
_08F033D8: .4byte gUnknown_08F1B674
_08F033DC: .4byte gUnknown_03000784
_08F033E0: .4byte gPlayerX
_08F033E4: .4byte 0x0000FFC0
_08F033E8: .4byte 0x0000FE40
_08F033EC: .4byte gPlayerY
_08F033F0: .4byte 0x0000FEC0
_08F033F4: .4byte gUnknown_03000840
_08F033F8: .4byte gUnknown_030034A8

.syntax divided
