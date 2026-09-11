.syntax unified
.section .text
@	thumb_func_start sub_8F121F0
@sub_8F121F0: @ 0x08F121F0
	lsls r0, r0, #0x18
	ldr r1, _08F1221C @ =gBattlerData
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldr r1, _08F12220 @ =gUnknown_03003654
	ldrb r0, [r0, #0xa]
	ldrb r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08F12214
	ldr r2, _08F12224 @ =gActionPpRequired
	ldrh r3, [r2]
	lsrs r0, r3, #1
	strh r0, [r2]
	cmp r0, #0
	bne _08F12214
	movs r0, #1
	strh r0, [r2]
_08F12214:
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08F1221C: .4byte gBattlerData
_08F12220: .4byte gUnknown_03003654
_08F12224: .4byte gActionPpRequired

.syntax divided
