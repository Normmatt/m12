.syntax unified
.section .text
@	thumb_func_start sub_8F01020
@sub_8F01020: @ 0x08F01020
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x19
	lsrs r5, r3, #0x18
	cmp r2, #0
	beq _08F010F2
	movs r3, #0x3e
	mov sb, r3
	rsbs r4, r5, #0
	str r4, [sp, #4]
	mov r8, r0
	mov sl, r1
	str r2, [sp]
_08F01046:
	mov r0, sl
	ldrh r1, [r0]
	lsls r0, r1, #1
	movs r2, #0x3e
	ands r0, r2
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x1f
	lsrs r0, r1, #0x14
	mov r3, sb
	ands r0, r3
	orrs r6, r0
	lsrs r7, r1, #0x19
	ands r7, r3
	mov r4, r8
	ldrh r1, [r4]
	lsls r4, r1, #1
	ands r4, r2
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x1f
	lsrs r0, r1, #0x14
	ands r0, r3
	orrs r2, r0
	lsrs r3, r1, #0x19
	mov r0, sb
	ands r3, r0
	mov r1, ip
	subs r0, r1, r4
	cmp r0, r5
	blt _08F01086
	adds r0, r4, r5
	b _08F0108E
_08F01086:
	ldr r1, [sp, #4]
	cmp r0, r1
	bgt _08F01094
	subs r0, r4, r5
_08F0108E:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08F01096
_08F01094:
	mov r4, ip
_08F01096:
	subs r0, r6, r2
	cmp r0, r5
	blt _08F010A0
	adds r0, r2, r5
	b _08F010A8
_08F010A0:
	ldr r1, [sp, #4]
	cmp r0, r1
	bgt _08F010AE
	subs r0, r2, r5
_08F010A8:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _08F010B0
_08F010AE:
	adds r2, r6, #0
_08F010B0:
	subs r0, r7, r3
	cmp r0, r5
	blt _08F010BA
	adds r0, r3, r5
	b _08F010C2
_08F010BA:
	ldr r1, [sp, #4]
	cmp r0, r1
	bgt _08F010C8
	subs r0, r3, r5
_08F010C2:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	b _08F010CA
_08F010C8:
	adds r3, r7, #0
_08F010CA:
	lsrs r1, r4, #1
	adds r0, r2, #0
	mov r4, sb
	ands r0, r4
	lsls r0, r0, #4
	adds r1, r1, r0
	lsls r0, r2, #0xf
	adds r1, r1, r0
	lsls r0, r3, #9
	adds r1, r1, r0
	mov r0, r8
	strh r1, [r0]
	movs r1, #2
	add r8, r1
	add sl, r1
	ldr r2, [sp]
	subs r2, #1
	str r2, [sp]
	cmp r2, #0
	bne _08F01046
_08F010F2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
