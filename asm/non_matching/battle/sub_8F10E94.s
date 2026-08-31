.syntax unified
.section .text
@	thumb_func_start sub_8F10E94
@sub_8F10E94: @ 0x08F10E94
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8F11230
	cmp r0, #0
	bne _08F10EA6
	movs r0, #0
	b _08F10EE6
_08F10EA6:
	movs r1, #0
	cmp r0, #2
	bne _08F10EAE
	movs r1, #4
_08F10EAE:
	ldr r4, _08F10ED8 @ =gUnknown_030036EC
	ldr r5, _08F10EDC @ =gUnknown_03003700
	movs r0, #4
	ldrb r2, [r5]
	ands r0, r2
	eors r1, r0
	strb r1, [r4]
	bl sub_8F10EEC
	cmp r0, #0
	blt _08F10EE4
	subs r2, r0, #1
	strb r2, [r4]
	ldr r1, _08F10EE0 @ =gBattlerData
	ldrb r5, [r5]
	lsls r0, r5, #5
	adds r0, r0, r1
	strb r2, [r0, #0x1c]
	movs r0, #0
	b _08F10EE6
	.align 2, 0
_08F10ED8: .4byte gUnknown_030036EC
_08F10EDC: .4byte gUnknown_03003700
_08F10EE0: .4byte gBattlerData
_08F10EE4:
	movs r0, #1
_08F10EE6:
	pop {r4, r5}
	pop {r1}
	bx r1

.syntax divided
