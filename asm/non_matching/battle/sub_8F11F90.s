.syntax unified
.section .text
@	thumb_func_start sub_8F11F90
@sub_8F11F90: @ 0x08F11F90
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldr r1, _08F11FBC @ =gBattlerData
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #0
	ldr r0, _08F11FC0 @ =gActionPpRequired
	ldrh r0, [r0]
	subs r0, r2, r0
	cmp r0, #0
	bge _08F11FAE
	movs r0, #0
_08F11FAE:
	strb r0, [r1]
	ldr r1, _08F11FC4 @ =gUnknown_03003708
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r1]
	bx lr
	.align 2, 0
_08F11FBC: .4byte gBattlerData
_08F11FC0: .4byte gActionPpRequired
_08F11FC4: .4byte gUnknown_03003708

.syntax divided
