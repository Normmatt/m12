.syntax unified
.section .text

@	thumb_func_start SCR_CMD_69_Quake
@SCR_CMD_69_Quake: @ 0x08F06C2C
	push {r4, r5, lr}
	movs r4, #3
	ldr r5, _08F06C58 @ =0x04000018
_08F06C32:
	ldr r0, _08F06C5C @ =gUnknown_03000788
	ldrh r0, [r0]
	lsrs r2, r0, #2
	movs r0, #0xf
	ands r2, r0
	lsls r0, r4, #1
	movs r1, #4
	ands r0, r1
	eors r2, r0
	strh r2, [r5]
	bl sub_8F040E0
	subs r4, #1
	cmp r4, #0
	bge _08F06C32
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F06C58: .4byte 0x04000018
_08F06C5C: .4byte gUnknown_03000788

    .syntax divided
