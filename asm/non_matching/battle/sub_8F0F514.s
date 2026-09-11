.syntax unified
.section .text
@	thumb_func_start sub_8F0F514
@sub_8F0F514: @ 0x08F0F514
	push {r4, r5, lr}
	sub sp, #0x34
	ldr r1, _08F0F550 @ =gUnknown_08F66FD8
	mov r0, sp
	movs r2, #0x34
	bl memcpy
	ldr r4, _08F0F554 @ =gUnknown_03003604
	ldr r5, _08F0F558 @ =gBattleActionData
_08F0F526:
	ldr r0, _08F0F55C @ =gUnknown_03003690
	ldrh r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsrs r0, r0, #4
	strb r0, [r4]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F0F526
	ldr r1, _08F0F554 @ =gUnknown_03003604
	movs r0, #0xff
	strb r0, [r1]
	add sp, #0x34
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F550: .4byte gUnknown_08F66FD8
_08F0F554: .4byte gUnknown_03003604
_08F0F558: .4byte gBattleActionData
_08F0F55C: .4byte gUnknown_03003690

.syntax divided
