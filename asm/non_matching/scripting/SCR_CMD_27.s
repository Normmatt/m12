.syntax unified
.section .text

@	thumb_func_start SCR_CMD_27
@SCR_CMD_27: @ 0x08F055F8
	push {r4, r5, r6, r7, lr}
	ldr r1, _08F05658 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r0, [r2, #1]
	bl SelectItem
	ldr r1, _08F0565C @ =gUnknown_030007D8
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	ldr r0, _08F05660 @ =gUnknown_03003198
	mov ip, r0
	ldr r7, _08F05664 @ =gCurrentItemId
_08F0561A:
	mov r1, ip
	adds r0, r4, r1
	ldrb r5, [r0]
	subs r1, r5, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F05646
	movs r2, #0
	lsls r3, r1, #6
	ldr r6, _08F05668 @ =gUnknown_030031F0
	ldrb r1, [r7]
_08F05632:
	adds r0, r2, r3
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r1, r0
	beq _08F0566C
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F05632
_08F05646:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08F0561A
	bl SCR_CMD_01_Jump
	b _08F0567C
	.align 2, 0
_08F05658: .4byte gScriptPtr
_08F0565C: .4byte gUnknown_030007D8
_08F05660: .4byte gUnknown_03003198
_08F05664: .4byte gCurrentItemId
_08F05668: .4byte gUnknown_030031F0
_08F0566C:
	ldr r0, _08F05684 @ =gCurrentCharacterId
	strb r5, [r0]
	ldr r0, _08F05688 @ =gUnknown_030007D8
	strh r2, [r0]
	ldr r1, _08F0568C @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F0567C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F05684: .4byte gCurrentCharacterId
_08F05688: .4byte gUnknown_030007D8
_08F0568C: .4byte gScriptPtr

    .syntax divided
