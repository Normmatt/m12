.syntax unified
.section .text

@	thumb_func_start SCR_CMD_2D
@SCR_CMD_2D: @ 0x08F057D4
	push {lr}
	ldr r0, _08F05804 @ =gCurrentCharacterId
	ldrb r1, [r0]
	cmp r1, #5
	bhi _08F057FC
	movs r3, #0
	ldr r1, _08F05808 @ =gGameInfo
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r1, #0x60
	adds r2, r0, r1
_08F057EC:
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0580C
	adds r2, r1, #1
	adds r3, #1
	cmp r3, #7
	ble _08F057EC
_08F057FC:
	bl SCR_CMD_01_Jump
	b _08F0581A
	.align 2, 0
_08F05804: .4byte gCurrentCharacterId
_08F05808: .4byte gGameInfo
_08F0580C:
	ldr r0, _08F05820 @ =gCurrentItemId
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r1, _08F05824 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F0581A:
	pop {r0}
	bx r0
	.align 2, 0
_08F05820: .4byte gCurrentItemId
_08F05824: .4byte gScriptPtr

    .syntax divided
