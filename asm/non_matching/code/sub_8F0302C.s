.syntax unified
.section .text
@	thumb_func_start sub_8F0302C
@sub_8F0302C: @ 0x08F0302C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	mov r1, sp
	ldr r2, _08F03118 @ =gGameInfo
	ldrb r0, [r2, #8]
	strb r0, [r1]
	ldrb r0, [r2, #9]
	strb r0, [r1, #1]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #2]
	ldrb r0, [r2, #0xb]
	strb r0, [r1, #3]
	movs r1, #0
_08F03054:
	movs r2, #0x42
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r2, r1
	blt _08F030C0
	ldr r7, _08F0311C @ =gPositionBuffer
	adds r0, r7, #2
	mov ip, r0
	mov r8, r1
	ldr r1, _08F03120 @ =gUnknown_0300081C
	mov sb, r1
_08F0306C:
	mov r0, sb
	ldr r1, [r0]
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	subs r1, r1, r5
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08F03088
	lsls r0, r4, #0x10
	movs r2, #0x88
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r4, r0, #0x10
_08F03088:
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08F0309C
	lsls r0, r2, #0x10
	movs r1, #0x88
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r2, r0, #0x10
_08F0309C:
	lsls r2, r2, #0x10
	asrs r2, r2, #0xe
	adds r3, r2, r7
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	adds r1, r0, r7
	ldrh r1, [r1]
	strh r1, [r3]
	add r2, ip
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r2]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	bge _08F0306C
_08F030C0:
	bl sub_8F03128
	mov r2, sl
	cmp r2, #0
	bne _08F030E0
	asrs r0, r6, #0x10
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _08F030E0
	cmp r0, #0x3f
	bgt _08F030E0
	asrs r0, r6, #0x14
	ldr r2, _08F03124 @ =gUnknown_03003198
	adds r0, r0, r2
	strb r1, [r0]
_08F030E0:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x43
	ble _08F03054
	ldr r1, _08F03118 @ =gGameInfo
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r1, #8]
	mov r0, sp
	ldrb r0, [r0, #1]
	strb r0, [r1, #9]
	mov r0, sp
	ldrb r0, [r0, #2]
	strb r0, [r1, #0xa]
	mov r0, sp
	ldrb r0, [r0, #3]
	strb r0, [r1, #0xb]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F03118: .4byte gGameInfo
_08F0311C: .4byte gPositionBuffer
_08F03120: .4byte gUnknown_0300081C
_08F03124: .4byte gUnknown_03003198

.syntax divided
