.syntax unified
.section .text

@	thumb_func_start sub_8F07EB4
@sub_8F07EB4: @ 0x08F07EB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, _08F07F2C @ =gPositionBuffer
	mov r8, r0
	adds r0, r6, #0
	adds r0, #0x44
	movs r1, #0x44
	bl __modsi3
	lsls r0, r0, #2
	movs r1, #2
	add r1, r8
	mov sl, r1
	adds r1, r0, r1
	ldrh r1, [r1]
	mov sb, r1
	movs r1, #3
	mov r2, sb
	ands r1, r2
	lsls r7, r1, #1
	add r0, r8
	ldr r5, _08F07F30 @ =0x0000FFFC
	adds r4, r5, #0
	ldrh r0, [r0]
	ands r4, r0
	adds r6, #0x43
	adds r0, r6, #0
	movs r1, #0x44
	bl __modsi3
	lsls r0, r0, #2
	add r8, r0
	adds r1, r5, #0
	mov r3, r8
	ldrh r3, [r3]
	ands r1, r3
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r5, #0
	mov r2, sb
	ands r1, r2
	add r0, sl
	ldrh r0, [r0]
	ands r5, r0
	subs r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r7, #2
	beq _08F07F48
	cmp r7, #2
	bgt _08F07F34
	cmp r7, #0
	beq _08F07F3E
	b _08F07F7A
	.align 2, 0
_08F07F2C: .4byte gPositionBuffer
_08F07F30: .4byte 0x0000FFFC
_08F07F34:
	cmp r7, #4
	beq _08F07F58
	cmp r7, #6
	beq _08F07F6C
	b _08F07F7A
_08F07F3E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _08F07F54
	b _08F07F74
_08F07F48:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _08F07F60
	cmp r0, #0
	bge _08F07F7A
_08F07F54:
	movs r7, #1
	b _08F07F7A
_08F07F58:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08F07F64
_08F07F60:
	movs r7, #3
	b _08F07F7A
_08F07F64:
	cmp r0, #0
	bge _08F07F7A
_08F07F68:
	movs r7, #5
	b _08F07F7A
_08F07F6C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _08F07F68
_08F07F74:
	cmp r0, #0
	bge _08F07F7A
	movs r7, #7
_08F07F7A:
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.syntax divided
