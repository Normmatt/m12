.syntax unified
.section .text
@	thumb_func_start sub_8F0B350
@sub_8F0B350: @ 0x08F0B350
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	add r6, sp, #8
	ldr r1, _08F0B408 @ =gUnknown_08F29FAC
	adds r0, r6, #0
	movs r2, #5
	bl memcpy
	mov r5, sp
	mov r3, sp
	mov r2, sp
	mov r1, sp
	movs r4, #0
	movs r0, #0xb0
	strb r0, [r1, #3]
	strb r0, [r2, #2]
	strb r0, [r3, #1]
	strb r0, [r5]
	mov r0, sp
	strb r4, [r0, #4]
	adds r0, r6, #0
	bl HandleControlCodes
	ldr r0, _08F0B40C @ =gTextDelayAfterWriteCharacterEnabled
	strb r4, [r0]
	movs r7, #0
	movs r5, #0
	ldr r0, _08F0B410 @ =gTextX
	mov r8, r0
	mov r4, sp
_08F0B390:
	mov r0, sp
	bl HandleControlCodes
	mov r1, r8
	ldrb r0, [r1]
	subs r0, #4
	strb r0, [r1]
	movs r0, #8
	ands r0, r7
	cmp r0, #0
	beq _08F0B3C0
	ldr r2, _08F0B414 @ =gBg0TilemapBuffer
	ldrb r3, [r1]
	adds r0, r3, r5
	ldr r1, _08F0B418 @ =gTextY
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldr r1, _08F0B41C @ =gUnknown_030034C0
	ldrh r1, [r1]
	adds r1, #0x10
	strh r1, [r0]
_08F0B3C0:
	bl UpdateBg0Tilemap
	ldr r6, _08F0B420 @ =gKeysDown
	ldrh r1, [r6]
	ldr r2, _08F0B424 @ =0x00000201
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08F0B492
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08F0B482
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08F0B470
	movs r0, #0xd
	bl PlayPulse1Sfx
	ldrh r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0B428
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb9
	bls _08F0B470
	movs r0, #0xb0
	strb r0, [r4]
	b _08F0B470
	.align 2, 0
_08F0B408: .4byte gUnknown_08F29FAC
_08F0B40C: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0B410: .4byte gTextX
_08F0B414: .4byte gBg0TilemapBuffer
_08F0B418: .4byte gTextY
_08F0B41C: .4byte gUnknown_030034C0
_08F0B420: .4byte gKeysDown
_08F0B424: .4byte 0x00000201
_08F0B428:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0B444
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xaf
	bhi _08F0B470
	movs r0, #0xb9
	strb r0, [r4]
	b _08F0B470
_08F0B444:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08F0B45C
	adds r4, #1
	adds r5, #1
	cmp r5, #3
	ble _08F0B470
	mov r4, sp
	adds r4, #3
	movs r5, #3
	b _08F0B470
_08F0B45C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08F0B470
	subs r4, #1
	subs r5, #1
	cmp r5, #0
	bge _08F0B470
	mov r4, sp
	movs r5, #0
_08F0B470:
	adds r7, #1
	b _08F0B390
_08F0B474:
	mov r0, sp
	bl HandleControlCodes
	cmp r7, #0
	bge _08F0B49C
	adds r2, r7, #0
	b _08F0B4D6
_08F0B482:
	movs r0, #5
	bl PlayPulse1Sfx
	movs r7, #0x80
	lsls r7, r7, #0x18
	ldrh r6, [r6]
	orrs r7, r6
	b _08F0B474
_08F0B492:
	movs r0, #5
	bl PlayPulse1Sfx
	movs r7, #0
	b _08F0B474
_08F0B49C:
	mov r1, sp
	movs r3, #0xf
	adds r0, r3, #0
	ldrb r1, [r1]
	ands r0, r1
	lsls r2, r0, #5
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r0
	lsls r2, r2, #3
	mov r0, sp
	ldrb r1, [r0, #1]
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0x64
	muls r0, r1, r0
	adds r2, r2, r0
	mov r0, sp
	ldrb r0, [r0, #2]
	adds r1, r3, #0
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	mov r0, sp
	ldrb r0, [r0, #3]
	ands r3, r0
	adds r2, r2, r3
_08F0B4D6:
	ldr r1, _08F0B4F8 @ =gTextX
	ldr r0, _08F0B4FC @ =gTextOriginX
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08F0B500 @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0x80
	ldrb r3, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r0, r2, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0B4F8: .4byte gTextX
_08F0B4FC: .4byte gTextOriginX
_08F0B500: .4byte gTextDelayAfterWriteCharacterEnabled

.syntax divided
