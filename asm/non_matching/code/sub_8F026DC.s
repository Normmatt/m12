.syntax unified
.section .text
@	thumb_func_start sub_8F026DC
@sub_8F026DC: @ 0x08F026DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r5, #0
	ldr r4, _08F0274C @ =gObjectMemory
	ldrb r1, [r4]
	mov r8, r4
	cmp r1, #0
	beq _08F0276E
	ldr r0, _08F02750 @ =gUnknown_03000784
	ldr r6, [r0]
_08F026FC:
	cmp r4, r6
	beq _08F02758
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08F02758
	adds r0, r2, #0
	ldrb r1, [r4, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08F02758
	ldrh r2, [r4, #4]
	mov r1, ip
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	ldrh r4, [r4, #6]
	subs r0, r4, r7
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r4, #0xb0
	lsls r4, r4, #0xe
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bls _08F0273E
	cmp r3, #0x3f
	bhi _08F02758
_08F0273E:
	cmp r2, #0x2f
	bls _08F02746
	cmp r0, #0x2f
	bhi _08F02758
_08F02746:
	ldr r0, _08F02754 @ =0x00000309
	b _08F02770
	.align 2, 0
_08F0274C: .4byte gObjectMemory
_08F02750: .4byte gUnknown_03000784
_08F02754: .4byte 0x00000309
_08F02758:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bhi _08F0276E
	lsls r0, r5, #5
	mov r1, r8
	adds r4, r0, r1
	ldrb r1, [r4]
	cmp r1, #0
	bne _08F026FC
_08F0276E:
	movs r0, #0
_08F02770:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
