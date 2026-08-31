.syntax unified
.section .text
@	thumb_func_start sub_8F021F8
@sub_8F021F8: @ 0x08F021F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	movs r0, #0
	str r0, [sp]
	ldr r3, _08F022D0 @ =gUnknown_03000850
	str r0, [r3]
	mov sb, r0
	ldr r1, _08F022D4 @ =gUnknown_03000784
	ldr r0, _08F022D8 @ =gObjectMemory
	str r0, [r1]
	ldrb r2, [r0]
	mov ip, r1
	cmp r2, #0
	bne _08F0222A
	b _08F02458
_08F0222A:
	mov r1, ip
	ldr r4, [r1]
	movs r6, #0x80
	adds r0, r6, #0
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	beq _08F0223C
	b _08F0243C
_08F0223C:
	ldr r1, _08F022DC @ =gUnknown_03000788
	movs r0, #0xf0
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08F022E0 @ =gUnknown_03001508
	movs r0, #0xb0
	lsls r0, r0, #1
	add r0, sl
	ldrh r1, [r1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r5, [r4, #0x18]
	adds r0, r6, #0
	ands r0, r5
	cmp r0, #0
	beq _08F0226E
	adds r0, r1, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08F0226E:
	movs r7, #0x40
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08F02280
	adds r0, r1, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08F02280:
	ldrb r3, [r4, #0x14]
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	beq _08F0237C
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08F022E4
	adds r0, r2, #0
	subs r0, #8
	ldrh r3, [r4, #4]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #0
	subs r0, #8
	ldrh r4, [r4, #6]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r2, #0x2f
	bls _08F022B0
	b _08F0243C
_08F022B0:
	cmp r1, #0x2f
	bls _08F022B6
	b _08F0243C
_08F022B6:
	mov r4, r8
	subs r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r6, sl
	subs r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r2, #0x2f
	bhi _08F02358
	cmp r1, #0x2f
	bls _08F0235C
	b _08F02358
	.align 2, 0
_08F022D0: .4byte gUnknown_03000850
_08F022D4: .4byte gUnknown_03000784
_08F022D8: .4byte gObjectMemory
_08F022DC: .4byte gUnknown_03000788
_08F022E0: .4byte gUnknown_03001508
_08F022E4:
	adds r0, r2, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r3, [r4, #4]
	subs r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #0xf0
	lsls r6, r6, #0xe
	adds r0, r0, r6
	lsrs r3, r0, #0x10
	ldrh r4, [r4, #6]
	subs r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r4, #0xb0
	lsls r4, r4, #0xe
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r2, #0x3f
	bls _08F0231E
	cmp r3, #0x3f
	bls _08F0231E
	b _08F0243C
_08F0231E:
	cmp r1, #0x2f
	bls _08F02328
	cmp r0, #0x2f
	bls _08F02328
	b _08F0243C
_08F02328:
	mov r6, r8
	adds r0, r2, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r3, #0xf0
	lsls r3, r3, #0xe
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	mov r4, sl
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r6, #0xb0
	lsls r6, r6, #0xe
	adds r0, r0, r6
	lsrs r0, r0, #0x10
	cmp r2, #0x3f
	bls _08F02350
	cmp r3, #0x3f
	bhi _08F02358
_08F02350:
	cmp r1, #0x2f
	bls _08F0235C
	cmp r0, #0x2f
	bls _08F0235C
_08F02358:
	movs r0, #1
	str r0, [sp]
_08F0235C:
	ldr r1, _08F02378 @ =gUnknown_03000850
	ldr r0, [r1]
	cmp r0, #0
	bne _08F02458
	mov r2, ip
	ldr r1, [r2]
	movs r0, #0x40
	ldrb r3, [r1, #0x14]
	ands r0, r3
	cmp r0, #0
	beq _08F02458
	ldr r4, _08F02378 @ =gUnknown_03000850
	str r1, [r4]
	b _08F02458
	.align 2, 0
_08F02378: .4byte gUnknown_03000850
_08F0237C:
	ldr r0, _08F023C4 @ =gUnknown_030007A0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08F0243C
	ldr r6, _08F023C8 @ =gUnknown_03000850
	ldr r0, [r6]
	cmp r0, #0
	bne _08F0243C
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _08F0243C
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08F023CC
	adds r0, r2, #0
	subs r0, #8
	ldrh r2, [r4, #4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #0
	subs r0, #8
	ldrh r4, [r4, #6]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r2, #0x2f
	bhi _08F02430
	cmp r1, #0x2f
	bls _08F0240C
	b _08F02430
	.align 2, 0
_08F023C4: .4byte gUnknown_030007A0
_08F023C8: .4byte gUnknown_03000850
_08F023CC:
	adds r0, r2, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r3, [r4, #4]
	subs r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #0xf0
	lsls r6, r6, #0xe
	adds r0, r0, r6
	lsrs r3, r0, #0x10
	ldrh r4, [r4, #6]
	subs r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r4, #0xb0
	lsls r4, r4, #0xe
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r2, #0x3f
	bls _08F02404
	cmp r3, #0x3f
	bhi _08F02430
_08F02404:
	cmp r1, #0x2f
	bls _08F0240C
	cmp r0, #0x2f
	bhi _08F02430
_08F0240C:
	mov r6, ip
	ldr r2, [r6]
	ldrb r1, [r2, #0x18]
	movs r4, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08F0243C
	adds r0, r4, #0
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldr r0, [r6]
	ldr r1, _08F0242C @ =gUnknown_03000850
	str r0, [r1]
	b _08F0243C
	.align 2, 0
_08F0242C: .4byte gUnknown_03000850
_08F02430:
	mov r2, ip
	ldr r1, [r2]
	movs r0, #0xfe
	ldrb r3, [r1, #0x18]
	ands r0, r3
	strb r0, [r1, #0x18]
_08F0243C:
	movs r4, #1
	add sb, r4
	mov r6, sb
	cmp r6, #0x27
	bgt _08F02458
	lsls r0, r6, #5
	ldr r1, _08F0246C @ =gObjectMemory
	adds r0, r0, r1
	mov r2, ip
	str r0, [r2]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F02458
	b _08F0222A
_08F02458:
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0246C: .4byte gObjectMemory

.syntax divided
