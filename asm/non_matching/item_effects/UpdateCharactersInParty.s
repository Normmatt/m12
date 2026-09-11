.syntax unified
.section .text

@	thumb_func_start UpdateCharactersInParty
@UpdateCharactersInParty: @ 0x08F09588
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r4, sp
	mov r3, sp
	mov r2, sp
	mov r1, sp
	movs r0, #0
	strb r0, [r1, #3]
	strb r0, [r2, #2]
	strb r0, [r3, #1]
	strb r0, [r4]
	movs r5, #1
	movs r4, #0
	ldr r6, _08F095C0 @ =gGameInfo
	adds r7, r6, #0
	adds r7, #8
_08F095A8:
	movs r2, #0
	adds r3, r5, #1
_08F095AC:
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, r5
	beq _08F095C4
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F095AC
	b _08F095D0
	.align 2, 0
_08F095C0: .4byte gGameInfo
_08F095C4:
	adds r0, r4, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	add r0, sp
	strb r5, [r0]
_08F095D0:
	lsls r0, r3, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08F095A8
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r6, #8]
	mov r0, sp
	ldrb r0, [r0, #1]
	strb r0, [r6, #9]
	mov r0, sp
	ldrb r0, [r0, #2]
	strb r0, [r6, #0xa]
	mov r0, sp
	ldrb r0, [r0, #3]
	strb r0, [r6, #0xb]
	movs r4, #0
	movs r2, #0
	ldrb r1, [r6, #8]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F09636
	adds r7, r6, #0
	adds r3, r6, #0
	adds r3, #8
	movs r5, #0x80
_08F09608:
	lsls r1, r1, #6
	adds r1, r1, r7
	adds r1, #0x41
	adds r0, r5, #0
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F0961E
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08F0961E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _08F09636
	adds r0, r2, r3
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08F09608
_08F09636:
	cmp r4, #0
	beq _08F0968C
	ldrb r5, [r6, #8]
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F0968C
	subs r7, r2, #1
	movs r0, #8
	adds r0, r0, r6
	mov ip, r0
_08F09656:
	movs r4, #0
	cmp r4, r7
	bge _08F09670
	mov r3, ip
_08F0965E:
	adds r2, r4, r3
	adds r1, r4, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r4, r7
	blt _08F0965E
_08F09670:
	adds r0, r6, #0
	adds r0, #8
	adds r0, r4, r0
	strb r5, [r0]
	ldrb r5, [r6, #8]
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F09656
_08F0968C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
