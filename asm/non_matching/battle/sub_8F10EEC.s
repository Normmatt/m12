.syntax unified
.section .text
@	thumb_func_start sub_8F10EEC
@sub_8F10EEC: @ 0x08F10EEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _08F10F94 @ =gUnknown_030036EC
	ldrb r0, [r4]
	mov r8, r0
	movs r0, #0xb
	bl sub_8F0EA64
	movs r7, #0
	movs r5, #0
	ldr r1, _08F10F98 @ =gBattlerData
	mov sb, r1
	mov sl, r4
	mov r6, sl
_08F10F10:
	ldrb r1, [r6]
	lsls r0, r1, #5
	mov r3, sb
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _08F10F5A
	cmp r1, #3
	bhi _08F10F28
	ldrb r2, [r2, #0x18]
	cmp r2, #4
	bhi _08F10F5A
_08F10F28:
	lsls r0, r5, #2
	mov r2, sp
	adds r4, r2, r0
	adds r0, r1, #1
	strh r0, [r4]
	movs r0, #0x10
	strb r0, [r4, #2]
	adds r0, r5, #0
	adds r0, #0x15
	strb r0, [r4, #3]
	bl sub_8F0F244
	ldrb r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r4, #3]
	bl SetTextPosition
	movs r0, #0xc
	bl sub_8F0EA64
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08F10F5A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	cmp r7, #3
	bls _08F10F10
	lsls r0, r5, #2
	mov r3, sp
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1]
	mov r1, r8
	mov r0, sl
	strb r1, [r0]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F10F94: .4byte gUnknown_030036EC
_08F10F98: .4byte gBattlerData

.syntax divided
