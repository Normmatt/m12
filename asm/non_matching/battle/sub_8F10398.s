.syntax unified
.section .text
@	thumb_func_start sub_8F10398
@sub_8F10398: @ 0x08F10398
	push {lr}
	ldr r1, _08F103B8 @ =gBattlerData
	ldr r0, _08F103BC @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r2, r0, #5
	adds r2, r2, r1
	ldrb r1, [r2, #0x18]
	lsls r0, r1, #6
	ldr r1, _08F103C0 @ =gUnknown_030031F0
	adds r0, r0, r1
	ldrb r1, [r2, #0x19]
	ldrb r2, [r2, #0x1b]
	bl sub_8F103C4
	pop {r0}
	bx r0
	.align 2, 0
_08F103B8: .4byte gBattlerData
_08F103BC: .4byte gUnknown_03003700
_08F103C0: .4byte gUnknown_030031F0

.syntax divided
