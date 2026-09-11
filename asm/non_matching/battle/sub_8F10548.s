.syntax unified
.section .text
@	thumb_func_start sub_8F10548
@sub_8F10548: @ 0x08F10548
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #0x10
	bl sub_8F0E770
	ldrb r1, [r5]
	adds r5, #1
	ldrb r7, [r5]
	adds r5, #1
	ldr r0, _08F10584 @ =0x04000012
	mov sl, r0
	subs r0, #2
	mov sb, r0
_08F10570:
	movs r4, #0
	subs r6, r1, #1
_08F10574:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08F10588
	mov r0, r8
	bl sub_8F0EA18
	b _08F1058E
	.align 2, 0
_08F10584: .4byte 0x04000012
_08F10588:
	movs r0, #0xf
	bl sub_8F0EA18
_08F1058E:
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r4, #0
	adds r1, r5, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r1, sl
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, r2
	movs r0, #0
	ldrsb r0, [r2, r0]
	mov r1, sb
	strh r0, [r1]
	bl sub_8F0E7F0
	cmp r4, r7
	blo _08F10574
	lsls r0, r6, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08F10570
	ldr r0, _08F105E0 @ =0x04000012
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	movs r0, #0xf
	bl sub_8F0EA18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F105E0: .4byte 0x04000012

.syntax divided
