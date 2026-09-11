.syntax unified
.section .text
@	thumb_func_start sub_8F0253C
@sub_8F0253C: @ 0x08F0253C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _08F02628 @ =gUnknown_03000788
	ldrh r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08F0262C @ =gUnknown_03001508
	ldrh r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r4, ip
	subs r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #0xf0
	lsls r6, r6, #0xe
	adds r0, r0, r6
	lsrs r2, r0, #0x10
	subs r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r4, #0xb0
	lsls r4, r4, #0xe
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r3, #0x3f
	bls _08F02592
	cmp r2, #0x3f
	bhi _08F0259A
_08F02592:
	cmp r1, #0x2f
	bls _08F02622
	cmp r0, #0x2f
	bls _08F02622
_08F0259A:
	ldr r0, _08F02630 @ =gUnknown_0300081C
	ldrb r4, [r0]
	movs r5, #1
	ldr r6, _08F02634 @ =gUnknown_03003198
	mov sl, r6
	ldr r0, _08F02638 @ =gPositionBuffer
	mov r8, r0
	movs r1, #2
	add r1, r8
	mov sb, r1
_08F025AE:
	mov r2, sl
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F02640
	adds r0, r4, #0
	subs r0, #0x10
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F025CC
	adds r0, r4, #0
	adds r0, #0x44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08F025CC:
	lsls r2, r4, #2
	mov r6, r8
	adds r1, r2, r6
	ldr r0, _08F0263C @ =0x0000FFFC
	ldrh r1, [r1]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r2, sb
	ldr r0, _08F0263C @ =0x0000FFFC
	ldrh r2, [r2]
	ands r0, r2
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r6, ip
	subs r0, r6, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	subs r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r6, #0xb0
	lsls r6, r6, #0xe
	adds r0, r0, r6
	lsrs r0, r0, #0x10
	cmp r3, #0x3f
	bls _08F0261A
	cmp r2, #0x3f
	bhi _08F02640
_08F0261A:
	cmp r1, #0x2f
	bls _08F02622
	cmp r0, #0x2f
	bhi _08F02640
_08F02622:
	movs r0, #1
	b _08F026CC
	.align 2, 0
_08F02628: .4byte gUnknown_03000788
_08F0262C: .4byte gUnknown_03001508
_08F02630: .4byte gUnknown_0300081C
_08F02634: .4byte gUnknown_03003198
_08F02638: .4byte gPositionBuffer
_08F0263C: .4byte 0x0000FFFC
_08F02640:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F025AE
	movs r5, #0
	ldr r4, _08F026A8 @ =gObjectMemory
	ldrb r1, [r4]
	mov r8, r4
	cmp r1, #0
	beq _08F026CA
	ldr r0, _08F026AC @ =gUnknown_03000784
	ldr r6, [r0]
_08F0265A:
	cmp r4, r6
	beq _08F026B4
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08F026B4
	adds r0, r2, #0
	ldrb r1, [r4, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08F026B4
	ldrh r2, [r4, #4]
	mov r1, ip
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	ldrh r4, [r4, #6]
	subs r0, r4, r7
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r4, #0xb0
	lsls r4, r4, #0xe
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r3, #0x3f
	bls _08F0269C
	cmp r2, #0x3f
	bhi _08F026B4
_08F0269C:
	cmp r1, #0x2f
	bls _08F026A4
	cmp r0, #0x2f
	bhi _08F026B4
_08F026A4:
	ldr r0, _08F026B0 @ =0x00000309
	b _08F026CC
	.align 2, 0
_08F026A8: .4byte gObjectMemory
_08F026AC: .4byte gUnknown_03000784
_08F026B0: .4byte 0x00000309
_08F026B4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bhi _08F026CA
	lsls r0, r5, #5
	mov r1, r8
	adds r4, r0, r1
	ldrb r1, [r4]
	cmp r1, #0
	bne _08F0265A
_08F026CA:
	movs r0, #0
_08F026CC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
