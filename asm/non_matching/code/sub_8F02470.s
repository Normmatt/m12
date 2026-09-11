.syntax unified
.section .text
@	thumb_func_start sub_8F02470
@sub_8F02470: @ 0x08F02470
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r4
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r8, r5
	ldr r0, _08F02518 @ =gUnknown_03000818
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F02514
	ldr r0, _08F0251C @ =gUnknown_03000784
	ldr r0, [r0]
	ldr r2, [r0, #8]
	movs r3, #0xc0
	adds r0, r3, #0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r6, [r2, #1]
	lsls r1, r6, #8
	orrs r0, r1
	ldrb r1, [r2, #2]
	ands r3, r1
	ldrb r2, [r2, #3]
	lsls r1, r2, #8
	orrs r3, r1
	subs r0, r4, r0
	ldr r6, _08F02520 @ =0xFFFFFE20
	adds r2, r6, #0
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08F02524 @ =0x0000FC40
	cmp r0, r1
	bls _08F02514
	subs r0, r5, r3
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08F02514
	adds r0, r5, #0
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F02514
	adds r0, r4, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x2c
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F02514
	adds r0, r4, #0
	adds r0, #0x3c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F02514
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F02528
_08F02514:
	movs r0, #1
	b _08F02530
	.align 2, 0
_08F02518: .4byte gUnknown_03000818
_08F0251C: .4byte gUnknown_03000784
_08F02520: .4byte 0xFFFFFE20
_08F02524: .4byte 0x0000FC40
_08F02528:
	mov r0, sb
	mov r1, r8
	bl sub_8F0253C
_08F02530:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided
