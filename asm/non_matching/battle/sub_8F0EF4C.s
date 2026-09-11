.syntax unified
.section .text
@	thumb_func_start sub_8F0EF4C
@sub_8F0EF4C: @ 0x08F0EF4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08F0EF70 @ =gBattleEnemyGroupId
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F0EF74
	movs r0, #4
	str r0, [sp]
	movs r2, #3
	str r2, [sp, #4]
	b _08F0EF7C
	.align 2, 0
_08F0EF70: .4byte gBattleEnemyGroupId
_08F0EF74:
	movs r4, #2
	str r4, [sp]
	movs r7, #2
	str r7, [sp, #4]
_08F0EF7C:
	movs r6, #0
	ldr r3, _08F0F008 @ =gUnknown_03003670
	subs r2, r1, #4
	lsls r0, r2, #2
	adds r1, r0, r3
	ldrb r0, [r1]
	adds r0, #2
	cmp r6, r0
	bge _08F0EFF8
	str r2, [sp, #0xc]
	mov sl, r1
	mov r0, sl
	str r0, [sp, #8]
_08F0EF96:
	movs r3, #0
	ldr r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r2, sl
	ldrb r2, [r2, #1]
	ldr r4, [sp]
	adds r0, r2, r4
	adds r7, r6, #1
	mov ip, r7
	cmp r3, r0
	bge _08F0EFE8
	ldr r0, _08F0F008 @ =gUnknown_03003670
	mov sb, r0
	ldr r1, [sp, #4]
	rsbs r5, r1, #0
	ldr r4, _08F0F00C @ =gUnknown_030034C0
	ldr r2, _08F0F010 @ =0x06003140
	mov r8, r2
_08F0EFBA:
	ldr r7, [sp, #0x10]
	lsls r2, r7, #2
	add r2, sb
	adds r1, r5, r3
	ldrb r0, [r2, #3]
	adds r1, r0, r1
	ldrb r7, [r2, #2]
	adds r0, r7, r6
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	add r0, r8
	ldrh r1, [r4]
	adds r1, #0x10
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r2, [r2, #1]
	ldr r1, [sp]
	adds r0, r2, r1
	cmp r3, r0
	blt _08F0EFBA
_08F0EFE8:
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	ldr r4, [sp, #8]
	ldrb r0, [r4]
	adds r0, #2
	cmp r6, r0
	blt _08F0EF96
_08F0EFF8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F008: .4byte gUnknown_03003670
_08F0F00C: .4byte gUnknown_030034C0
_08F0F010: .4byte 0x06003140

.syntax divided
