.syntax unified
.section .text

@	thumb_func_start SCR_CMD_6A
@SCR_CMD_6A: @ 0x08F06C60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	bl sub_8F0B040
	movs r0, #0x6a
	bl sub_8F03F3C
	ldr r0, _08F06DDC @ =gUnknown_03000784
	ldr r3, [r0]
	ldr r0, _08F06DE0 @ =gUnknown_03000788
	ldr r1, _08F06DE4 @ =0x0000FFFC
	adds r2, r1, #0
	ldrh r0, [r0]
	ands r2, r0
	ldrh r0, [r3, #4]
	subs r2, r0, r2
	subs r2, #0x40
	ldr r0, _08F06DE8 @ =gUnknown_03001508
	ldrh r0, [r0]
	ands r1, r0
	ldrh r3, [r3, #6]
	subs r1, r3, r1
	subs r1, #0xc0
	mov r0, sp
	ldr r3, _08F06DEC @ =0xFFFFFE40
	adds r5, r3, #0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	adds r4, r6, r5
	strh r4, [r0]
	add r0, sp, #8
	mov r8, r0
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	adds r5, r3, r5
	strh r5, [r0]
	mov r0, sp
	strh r4, [r0, #2]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r4, r0, #0
	adds r3, r3, r4
	mov r0, r8
	strh r3, [r0, #2]
	mov r0, sp
	adds r6, r6, r4
	strh r6, [r0, #4]
	mov r0, r8
	strh r5, [r0, #4]
	mov r0, sp
	strh r6, [r0, #6]
	mov r0, r8
	strh r3, [r0, #6]
	movs r3, #0
	mov sb, r3
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r4, sp
	add r7, sp, #8
_08F06CDE:
	bl sub_8F016EC
	movs r0, #1
	bl sub_8F02BBC
	ldr r0, _08F06DF0 @ =gUnknown_030007B8
	ldrh r6, [r0]
	ldr r1, _08F06DF4 @ =0xFFFFFC00
	adds r0, r6, r1
	ldr r2, _08F06DF0 @ =gUnknown_030007B8
	strh r0, [r2]
	movs r5, #0
	movs r3, #1
	add sb, r3
_08F06CFA:
	lsls r1, r5, #1
	mov r2, sp
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x12
	add r1, sp
	adds r1, #8
	ldrh r1, [r1]
	lsls r3, r1, #0x10
	asrs r3, r3, #0x12
	ldr r0, _08F06DF8 @ =0x000099F8
	movs r1, #4
	bl sub_8F01700
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F06CFA
	ldr r3, _08F06DF0 @ =gUnknown_030007B8
	strh r6, [r3]
	ldrh r0, [r4]
	adds r0, #4
	strh r0, [r4]
	ldrh r0, [r7]
	adds r0, #4
	strh r0, [r7]
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r4, #2]
	ldrh r0, [r7, #2]
	subs r0, #4
	strh r0, [r7, #2]
	ldrh r0, [r4, #4]
	subs r0, #4
	strh r0, [r4, #4]
	ldrh r0, [r7, #4]
	adds r0, #4
	strh r0, [r7, #4]
	ldrh r0, [r4, #6]
	subs r0, #4
	strh r0, [r4, #6]
	ldrh r0, [r7, #6]
	subs r0, #4
	strh r0, [r7, #6]
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r5, _08F06DFC @ =0x040000D4
	ldr r0, _08F06E00 @ =gSpriteBuffer
	str r0, [r5]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	mov sl, r1
	str r1, [r5, #4]
	ldr r2, _08F06E04 @ =0x84000100
	mov r8, r2
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	mov r3, sb
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0x6f
	bls _08F06CDE
	movs r0, #0x30
	bl sub_8F011E4
	bl sub_8F016EC
	movs r0, #1
	bl sub_8F02BBC
	ldr r4, _08F06DF0 @ =gUnknown_030007B8
	ldrh r6, [r4]
	ldr r1, _08F06DF4 @ =0xFFFFFC00
	adds r0, r6, r1
	strh r0, [r4]
	ldr r0, _08F06E08 @ =0x000099FC
	ldr r3, [sp, #0x10]
	asrs r2, r3, #0x12
	ldr r1, [sp, #0x14]
	asrs r3, r1, #0x12
	movs r1, #4
	bl sub_8F01700
	strh r6, [r4]
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r2, _08F06E00 @ =gSpriteBuffer
	str r2, [r5]
	mov r3, sl
	str r3, [r5, #4]
	mov r0, r8
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	bl sub_8F01208
	movs r0, #0x3c
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
_08F06DDC: .4byte gUnknown_03000784
_08F06DE0: .4byte gUnknown_03000788
_08F06DE4: .4byte 0x0000FFFC
_08F06DE8: .4byte gUnknown_03001508
_08F06DEC: .4byte 0xFFFFFE40
_08F06DF0: .4byte gUnknown_030007B8
_08F06DF4: .4byte 0xFFFFFC00
_08F06DF8: .4byte 0x000099F8
_08F06DFC: .4byte 0x040000D4
_08F06E00: .4byte gSpriteBuffer
_08F06E04: .4byte 0x84000100
_08F06E08: .4byte 0x000099FC

    .syntax divided
