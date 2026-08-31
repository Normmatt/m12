.syntax unified
.section .text
@	thumb_func_start sub_8F103C4
@sub_8F103C4: @ 0x08F103C4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r1, r2, #3
	ldr r0, _08F10400 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x80
	ldrb r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	bne _08F1041A
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, r2
	beq _08F10410
	movs r3, #0
_08F103EA:
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, r2
	beq _08F10410
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08F103EA
	b _08F1041A
	.align 2, 0
_08F10400: .4byte gItemData
_08F10404:
	adds r1, r4, r3
	ldrb r0, [r1, #1]
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08F10410:
	cmp r3, #6
	bls _08F10404
	adds r1, r4, r3
	movs r0, #0
	strb r0, [r1]
_08F1041A:
	pop {r4}
	pop {r0}
	bx r0

.syntax divided
