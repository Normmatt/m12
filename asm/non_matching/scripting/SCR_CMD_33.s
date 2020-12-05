.syntax unified
.section .text

@	thumb_func_start SCR_CMD_33
@SCR_CMD_33: @ 0x08F05974
	push {r4, lr}
	ldr r1, _08F059A8 @ =gScriptPtr
	ldr r3, [r1]
	adds r0, r3, #1
	str r0, [r1]
	ldr r2, _08F059AC @ =gCurrentCharacterId
	ldrb r0, [r3, #1]
	strb r0, [r2]
	movs r2, #0
	adds r4, r1, #0
	ldr r1, _08F059B0 @ =gUnknown_03003198
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08F0598E:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r3, r0
	beq _08F059B4
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F0598E
	bl SCR_CMD_01_Jump
	b _08F059BA
	.align 2, 0
_08F059A8: .4byte gScriptPtr
_08F059AC: .4byte gCurrentCharacterId
_08F059B0: .4byte gUnknown_03003198
_08F059B4:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_08F059BA:
	pop {r4}
	pop {r0}
	bx r0

    .syntax divided
