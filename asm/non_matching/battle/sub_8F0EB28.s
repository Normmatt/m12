.syntax unified
.section .text
@	thumb_func_start sub_8F0EB28
@sub_8F0EB28: @ 0x08F0EB28
	push {lr}
	ldr r0, _08F0EB68 @ =gUnknown_03003650
	ldr r0, [r0]
	cmp r0, #0
	beq _08F0EB36
	bl _call_via_r0
_08F0EB36:
	ldr r3, _08F0EB6C @ =gUnknown_030036E8
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F0EB64
	ldr r0, _08F0EB70 @ =gUnknown_030036B4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0EB64
	ldr r2, _08F0EB74 @ =gKeysDown
	ldrh r1, [r2]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08F0EB64
	ldr r0, _08F0EB78 @ =0x0000FFF9
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08F0EB7C @ =gUnknown_030036C0
	adds r0, #0x20
	movs r1, #0
	strb r1, [r0]
_08F0EB64:
	pop {r0}
	bx r0
	.align 2, 0
_08F0EB68: .4byte gUnknown_03003650
_08F0EB6C: .4byte gUnknown_030036E8
_08F0EB70: .4byte gUnknown_030036B4
_08F0EB74: .4byte gKeysDown
_08F0EB78: .4byte 0x0000FFF9
_08F0EB7C: .4byte gUnknown_030036C0

.syntax divided
