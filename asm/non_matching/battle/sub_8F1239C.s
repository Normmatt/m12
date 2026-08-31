.syntax unified
.section .text
@	thumb_func_start sub_8F1239C
@sub_8F1239C: @ 0x08F1239C
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08F123FC @ =gBattleEnemyGroupId
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F12410
	ldr r1, _08F12400 @ =0x0400000C
	ldrh r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	movs r4, #0
	ldr r5, _08F12404 @ =0x0400004C
_08F123BE:
	lsls r0, r4, #0xc
	lsls r1, r4, #8
	adds r0, r0, r1
	lsls r1, r4, #4
	adds r0, r0, r1
	adds r0, r0, r4
	strh r0, [r5]
	movs r0, #4
	bl DelayByAmount
	adds r4, #1
	cmp r4, #0xf
	ble _08F123BE
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r4, #0
	strh r4, [r0]
	ldr r3, _08F12400 @ =0x0400000C
	ldrh r2, [r3]
	ldr r1, _08F12408 @ =0x0000FFBF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldr r2, _08F1240C @ =0x0400000E
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	ldr r0, _08F12404 @ =0x0400004C
	strh r4, [r0]
	b _08F12446
	.align 2, 0
_08F123FC: .4byte gBattleEnemyGroupId
_08F12400: .4byte 0x0400000C
_08F12404: .4byte 0x0400004C
_08F12408: .4byte 0x0000FFBF
_08F1240C: .4byte 0x0400000E
_08F12410:
	ldr r0, _08F124C8 @ =0x0400000C
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
	movs r4, #0
	ldr r5, _08F124CC @ =0x0400004C
_08F1241E:
	lsls r0, r4, #4
	adds r0, r0, r4
	strh r0, [r5]
	movs r0, #4
	bl DelayByAmount
	adds r4, #1
	cmp r4, #0xf
	ble _08F1241E
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r3, #0
	strh r3, [r0]
	ldr r2, _08F124C8 @ =0x0400000C
	ldrh r1, [r2]
	ldr r0, _08F124D0 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08F124CC @ =0x0400004C
	strh r3, [r0]
_08F12446:
	bl sub_8F0B040
	movs r3, #0
	str r3, [sp]
	ldr r0, _08F124D4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08F124D8 @ =0x06002000
	str r1, [r0, #4]
	ldr r2, _08F124DC @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08F124E0 @ =0x06003000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08F124E4 @ =gUnknown_030036C0
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0x20
_08F12474:
	strb r3, [r0]
	subs r0, #8
	cmp r0, r1
	bge _08F12474
	movs r4, #0
	adds r0, r2, #0
	adds r0, #0x20
	strb r4, [r0]
	ldr r0, _08F124E8 @ =0x00009714
	strh r0, [r2, #0x22]
	adds r1, r2, #0
	adds r1, #0x21
	movs r0, #4
	strb r0, [r1]
	movs r0, #0xcc
	strh r0, [r2, #0x24]
	movs r0, #0x6c
	strh r0, [r2, #0x26]
	bl sub_8F0E7F0
	ldr r0, _08F124EC @ =0x04000010
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #6
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F124C8: .4byte 0x0400000C
_08F124CC: .4byte 0x0400004C
_08F124D0: .4byte 0x0000FFBF
_08F124D4: .4byte 0x040000D4
_08F124D8: .4byte 0x06002000
_08F124DC: .4byte 0x85000200
_08F124E0: .4byte 0x06003000
_08F124E4: .4byte gUnknown_030036C0
_08F124E8: .4byte 0x00009714
_08F124EC: .4byte 0x04000010

.syntax divided
