.syntax unified
.section .text

@	thumb_func_start SCR_CMD_43
@SCR_CMD_43: @ 0x08F05EB4
	push {r4, lr}
	ldr r1, _08F05EE8 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F05EEC @ =gCurrentCharacterId
	ldrb r0, [r2, #1]
	strb r0, [r1]
	movs r1, #0
	ldr r4, _08F05EF0 @ =gGameInfo
	adds r3, r4, #0
	adds r3, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08F05ED0:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r2, r0
	beq _08F05EF4
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08F05ED0
	bl SCR_CMD_01_Jump
	b _08F05F22
	.align 2, 0
_08F05EE8: .4byte gScriptPtr
_08F05EEC: .4byte gCurrentCharacterId
_08F05EF0: .4byte gGameInfo
_08F05EF4:
	cmp r1, #2
	bhi _08F05F0C
	ldr r3, _08F05F28 @ =gUnknown_03003198
_08F05EFA:
	adds r2, r1, r3
	adds r1, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bls _08F05EFA
_08F05F0C:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r1, r0
	movs r1, #0
	strb r1, [r0]
	bl UpdateCharactersInParty
	ldr r1, _08F05F2C @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05F22:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F05F28: .4byte gUnknown_03003198
_08F05F2C: .4byte gScriptPtr

    .syntax divided
