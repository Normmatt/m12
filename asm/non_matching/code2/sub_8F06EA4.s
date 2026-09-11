.syntax unified
.section .text

@	thumb_func_start sub_8F06EA4
@sub_8F06EA4: @ 0x08F06EA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0x3c
	bl DelayByAmount
	movs r0, #0x12
	bl PlayPulse1Sfx
	movs r0, #0x30
	bl sub_8F011E4
	bl sub_8F040E0
	bl sub_8F01208
	ldr r0, _08F06FC8 @ =gUnknown_03000784
	ldr r3, [r0]
	ldr r2, _08F06FCC @ =gUnknown_03000788
	ldr r0, _08F06FD0 @ =0x0000FFFC
	adds r1, r0, #0
	ldrh r2, [r2]
	ands r1, r2
	ldrh r2, [r3, #4]
	subs r1, r2, r1
	subs r1, #0x40
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08F06FD4 @ =gUnknown_03001508
	ldrh r2, [r2]
	ands r0, r2
	ldrh r3, [r3, #6]
	subs r0, r3, r0
	subs r0, #0xc0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r5, sp
	mov r4, sp
	mov r3, sp
	mov r2, sp
	strh r1, [r2, #6]
	strh r1, [r3, #4]
	strh r1, [r4, #2]
	strh r1, [r5]
	add r1, sp, #8
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	strh r0, [r1]
	movs r0, #0
	mov r8, r0
	ldr r1, _08F06FD8 @ =gUnknown_030007B8
	mov sl, r1
	add r6, sp, #8
	ldr r2, _08F06FDC @ =0x040000D4
	mov sb, r2
_08F06F1A:
	bl sub_8F016EC
	movs r0, #1
	bl sub_8F02BBC
	mov r0, sl
	ldrh r7, [r0]
	ldr r1, _08F06FE0 @ =0xFFFFFC00
	adds r0, r7, r1
	mov r2, sl
	strh r0, [r2]
	movs r5, #0
	movs r0, #1
	add r8, r0
_08F06F36:
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
	ldr r0, _08F06FE4 @ =0x000099F8
	movs r1, #4
	bl sub_8F01700
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F06F36
	mov r0, sl
	strh r7, [r0]
	ldrh r0, [r4]
	adds r0, #4
	strh r0, [r4]
	ldrh r0, [r6]
	adds r0, #4
	strh r0, [r6]
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r4, #2]
	ldrh r0, [r6, #2]
	subs r0, #4
	strh r0, [r6, #2]
	ldrh r0, [r4, #4]
	subs r0, #4
	strh r0, [r4, #4]
	ldrh r0, [r6, #4]
	adds r0, #4
	strh r0, [r6, #4]
	ldrh r0, [r4, #6]
	subs r0, #4
	strh r0, [r4, #6]
	ldrh r0, [r6, #6]
	subs r0, #4
	strh r0, [r6, #6]
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r0, _08F06FE8 @ =gSpriteBuffer
	mov r1, sb
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F06FEC @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x6f
	bls _08F06F1A
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F06FC8: .4byte gUnknown_03000784
_08F06FCC: .4byte gUnknown_03000788
_08F06FD0: .4byte 0x0000FFFC
_08F06FD4: .4byte gUnknown_03001508
_08F06FD8: .4byte gUnknown_030007B8
_08F06FDC: .4byte 0x040000D4
_08F06FE0: .4byte 0xFFFFFC00
_08F06FE4: .4byte 0x000099F8
_08F06FE8: .4byte gSpriteBuffer
_08F06FEC: .4byte 0x84000100
.syntax divided
