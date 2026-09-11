.syntax unified
.section .text
@	thumb_func_start sub_8F100F4
@sub_8F100F4: @ 0x08F100F4
	push {r4, r5, r6, lr}
	ldr r0, _08F10128 @ =gBattleActionData
	ldr r2, _08F1012C @ =gUnknown_03003690
	ldrh r1, [r2]
	adds r0, r1, r0
	movs r4, #0xf
	ldrb r0, [r0]
	ands r4, r0
	adds r1, #1
	strh r1, [r2]
	ldrh r6, [r2]
	adds r5, r2, #0
_08F1010C:
	bl sub_8F0F514
	ldrh r1, [r5]
	strh r6, [r5]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08F1010C
	ldr r0, _08F1012C @ =gUnknown_03003690
	strh r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F10128: .4byte gBattleActionData
_08F1012C: .4byte gUnknown_03003690

.syntax divided
