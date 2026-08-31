.syntax unified
.section .text
@	thumb_func_start sub_8F121C4
@sub_8F121C4: @ 0x08F121C4
	push {lr}
	ldr r2, _08F121E4 @ =gBattlerData
	ldr r0, _08F121E8 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xd]
	ldr r1, _08F121EC @ =gUnknown_030036EC
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r1, r1, r2
	ldrb r1, [r1, #0xf]
	bl sub_8F12228
	pop {r1}
	bx r1
	.align 2, 0
_08F121E4: .4byte gBattlerData
_08F121E8: .4byte gUnknown_03003700
_08F121EC: .4byte gUnknown_030036EC

.syntax divided
