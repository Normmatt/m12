.syntax unified
.section .text
@	thumb_func_start sub_8F03170
@sub_8F03170: @ 0x08F03170
	push {r4, lr}
	ldr r2, _08F031B0 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #0xf
	ldrb r3, [r1, #0x14]
	ands r0, r3
	ldr r1, [r1, #8]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r3, r2, #0
	cmp r0, #5
	bne _08F031B8
	ldr r0, _08F031B4 @ =gGameInfo
	ldrb r2, [r1, #1]
	lsrs r1, r2, #3
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r1, r1, r0
	movs r0, #7
	ands r0, r2
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	movs r1, #0x80
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _08F031E6
	movs r2, #0
	b _08F031EA
	.align 2, 0
_08F031B0: .4byte gUnknown_03000784
_08F031B4: .4byte gGameInfo
_08F031B8:
	cmp r0, #6
	bne _08F031E4
	ldr r0, _08F031E0 @ =gGameInfo
	ldrb r2, [r1, #1]
	lsrs r1, r2, #3
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r1, r1, r0
	movs r0, #7
	ands r0, r2
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
	b _08F031E6
	.align 2, 0
_08F031E0: .4byte gGameInfo
_08F031E4:
	movs r2, #1
_08F031E6:
	cmp r2, #0
	bne _08F031F4
_08F031EA:
	ldr r0, [r3]
	movs r1, #0x80
	ldrb r3, [r0]
	orrs r1, r3
	strb r1, [r0]
_08F031F4:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1

.syntax divided
