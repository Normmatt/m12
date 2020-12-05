.syntax unified
.section .text

@	thumb_func_start SCR_CMD_3D
@SCR_CMD_3D: @ 0x08F05B8C
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _08F05C00 @ =gUnknown_030007A0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r5, _08F05C04 @ =gScriptPtr
	ldr r2, [r5]
	adds r3, r2, #1
	str r3, [r5]
	ldr r1, _08F05C08 @ =0xFFFFFF00
	ldr r0, [sp]
	ands r0, r1
	ldrb r2, [r2, #1]
	orrs r0, r2
	str r0, [sp]
	adds r2, r3, #1
	str r2, [r5]
	mov r4, sp
	ldrb r0, [r3, #1]
	strb r0, [r4, #1]
	adds r1, r2, #1
	str r1, [r5]
	ldrb r0, [r2, #1]
	strb r0, [r4, #2]
	adds r0, r1, #1
	str r0, [r5]
	ldrb r0, [r1, #1]
	strb r0, [r4, #3]
	ldr r3, _08F05C0C @ =gPlayerX
	ldr r2, [sp]
	ldr r1, _08F05C10 @ =0x0000FFC0
	ands r1, r2
	ldr r0, _08F05C14 @ =0x0000FE40
	adds r1, r1, r0
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	strh r0, [r3]
	ldr r1, _08F05C18 @ =gPlayerY
	lsrs r0, r2, #0x16
	lsls r0, r0, #6
	ldr r3, _08F05C1C @ =0x0000FEC0
	adds r0, r0, r3
	lsls r2, r2, #0xa
	lsrs r2, r2, #0x1a
	adds r2, r2, r0
	strh r2, [r1]
	ldr r2, _08F05C20 @ =gUnknown_03000840
	ldr r1, _08F05C24 @ =gUnknown_030034A8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F05C00: .4byte gUnknown_030007A0
_08F05C04: .4byte gScriptPtr
_08F05C08: .4byte 0xFFFFFF00
_08F05C0C: .4byte gPlayerX
_08F05C10: .4byte 0x0000FFC0
_08F05C14: .4byte 0x0000FE40
_08F05C18: .4byte gPlayerY
_08F05C1C: .4byte 0x0000FEC0
_08F05C20: .4byte gUnknown_03000840
_08F05C24: .4byte gUnknown_030034A8

    .syntax divided
