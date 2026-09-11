.syntax unified
.section .text
@	thumb_func_start DarkenPalette
@DarkenPalette: @ 0x08F01104
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x19
	lsrs r5, r3, #0x18
	cmp r2, #0
	beq _08F011D4
	lsls r3, r1, #1
	movs r1, #0x3e
	ands r1, r3
	str r1, [sp, #4]
	lsrs r3, r0, #0x1f
	movs r1, #0x3e
	mov r8, r1
	adds r7, r4, #0
	lsrs r0, r0, #0x14
	ands r0, r1
	orrs r3, r0
	mov sl, r3
	rsbs r3, r5, #0
	mov ip, r3
	mov sb, r2
_08F01142:
	ldr r4, [sp]
	lsrs r6, r4, #9
	mov r0, r8
	ands r6, r0
	ldrh r1, [r7]
	lsls r4, r1, #1
	movs r3, #0x3e
	ands r4, r3
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x1f
	lsrs r0, r1, #0x14
	mov r3, r8
	ands r0, r3
	orrs r2, r0
	lsrs r3, r1, #0x19
	mov r0, r8
	ands r3, r0
	ldr r1, [sp, #4]
	subs r0, r1, r4
	cmp r0, r5
	blt _08F01170
	adds r0, r4, r5
	b _08F01176
_08F01170:
	cmp r0, ip
	bgt _08F0117C
	subs r0, r4, r5
_08F01176:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08F0117E
_08F0117C:
	ldr r4, [sp, #4]
_08F0117E:
	mov r1, sl
	subs r0, r1, r2
	cmp r0, r5
	blt _08F0118A
	adds r0, r2, r5
	b _08F01190
_08F0118A:
	cmp r0, ip
	bgt _08F01196
	subs r0, r2, r5
_08F01190:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _08F01198
_08F01196:
	mov r2, sl
_08F01198:
	subs r0, r6, r3
	cmp r0, r5
	blt _08F011A2
	adds r0, r3, r5
	b _08F011A8
_08F011A2:
	cmp r0, ip
	bgt _08F011AE
	subs r0, r3, r5
_08F011A8:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	b _08F011B0
_08F011AE:
	adds r3, r6, #0
_08F011B0:
	lsrs r1, r4, #1
	adds r0, r2, #0
	mov r4, r8
	ands r0, r4
	lsls r0, r0, #4
	adds r1, r1, r0
	lsls r0, r2, #0xf
	adds r1, r1, r0
	lsls r0, r3, #9
	adds r1, r1, r0
	strh r1, [r7]
	adds r7, #2
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	bne _08F01142
_08F011D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
