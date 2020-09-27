.syntax unified
.section .text

@	thumb_func_start SCR_CMD_23
@SCR_CMD_23: @ 0x08F054BC
	push {r4, lr}
	ldr r1, _08F05500 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r0, [r2, #1]
	bl SelectItem
	ldr r1, _08F05504 @ =gUnknown_030007D8
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0
	ldr r1, _08F05508 @ =gCurrentItemId
	ldr r0, _08F0550C @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r3, r0, #6
	ldr r4, _08F05510 @ =gUnknown_030031F0
	ldrb r1, [r1]
_08F054E6:
	adds r0, r2, r3
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r1, r0
	beq _08F05514
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F054E6
	bl SCR_CMD_01_Jump
	b _08F05520
	.align 2, 0
_08F05500: .4byte gScriptPtr
_08F05504: .4byte gUnknown_030007D8
_08F05508: .4byte gCurrentItemId
_08F0550C: .4byte gCurrentCharacterId
_08F05510: .4byte gUnknown_030031F0
_08F05514:
	ldr r0, _08F05528 @ =gUnknown_030007D8
	strh r2, [r0]
	ldr r1, _08F0552C @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05520:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F05528: .4byte gUnknown_030007D8
_08F0552C: .4byte gScriptPtr

    .syntax divided
