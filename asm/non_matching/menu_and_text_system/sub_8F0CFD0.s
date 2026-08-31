.syntax unified
.section .text
@	thumb_func_start sub_8F0CFD0
@sub_8F0CFD0: @ 0x08F0CFD0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r0, _08F0CFF8 @ =gUnknown_030034D0
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0CFFC
	ldrb r0, [r4, #2]
	cmp r0, r2
	beq _08F0D02C
	movs r0, #0
	b _08F0D03A
	.align 2, 0
_08F0CFF8: .4byte gUnknown_030034D0
_08F0CFFC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08F0D014
	str r6, [sp]
	movs r0, #0
	adds r1, r3, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8F0CF80
	b _08F0D03A
_08F0D014:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0D02C
	str r6, [sp]
	adds r0, r2, #0
	adds r1, r3, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8F0CF80
	b _08F0D03A
_08F0D02C:
	str r6, [sp]
	adds r0, r2, #0
	adds r1, r3, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8F0D044
_08F0D03A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
