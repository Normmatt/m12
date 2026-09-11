.syntax unified
.section .text
@	thumb_func_start sub_8F0F014
@sub_8F0F014: @ 0x08F0F014
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08F0F03C @ =gBattleEnemyGroupId
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F0F040
	movs r0, #4
	str r0, [sp]
	movs r3, #3
	str r3, [sp, #4]
	b _08F0F048
	.align 2, 0
_08F0F03C: .4byte gBattleEnemyGroupId
_08F0F040:
	movs r6, #2
	str r6, [sp]
	movs r7, #2
	str r7, [sp, #4]
_08F0F048:
	cmp r1, #0
	beq _08F0F064
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08F0F060 @ =gUnknown_030034C0
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	b _08F0F074
	.align 2, 0
_08F0F060: .4byte gUnknown_030034C0
_08F0F064:
	movs r1, #0
	str r1, [sp, #0xc]
	ldr r0, _08F0F19C @ =gUnknown_030034C0
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
_08F0F074:
	movs r4, #0
	ldr r3, _08F0F1A0 @ =gUnknown_03003670
	subs r2, #4
	lsls r0, r2, #2
	adds r0, r0, r3
	str r2, [sp, #0x1c]
	ldrb r0, [r0]
	cmp r4, r0
	blt _08F0F088
	b _08F0F18C
_08F0F088:
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrb r1, [r0]
	subs r1, #1
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r0, r4, #0x18
	mov sb, r0
	cmp r1, sb
	blt _08F0F172
	ldr r1, _08F0F1A0 @ =gUnknown_03003670
	ldr r3, [sp, #0x1c]
	str r3, [sp, #0x10]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r6, [sp]
	lsls r6, r6, #0x18
	str r6, [sp, #0x18]
	asrs r6, r6, #0x18
	mov r8, r6
	ldr r7, [sp, #4]
	mov sl, r7
_08F0F0B6:
	movs r1, #0
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x20]
	ldr r3, [sp, #0x14]
	ldrb r0, [r3, #1]
	add r0, r8
	lsls r4, r2, #0x18
	cmp r1, r0
	bge _08F0F106
	asrs r6, r4, #0x18
	ldr r7, _08F0F1A0 @ =gUnknown_03003670
	mov ip, r7
	mov r0, sl
	rsbs r5, r0, #0
_08F0F0D2:
	ldr r7, [sp, #0x20]
	lsls r3, r7, #2
	add r3, ip
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	adds r1, r5, r2
	ldrb r0, [r3, #3]
	adds r1, r0, r1
	ldrb r7, [r3, #2]
	adds r0, r7, r6
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F0F1A4 @ =0x06003180
	adds r0, r0, r1
	mov r7, sp
	ldrh r7, [r7, #8]
	strh r7, [r0]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	asrs r2, r2, #0x18
	ldrb r0, [r3, #1]
	add r0, r8
	cmp r2, r0
	blt _08F0F0D2
_08F0F106:
	bl sub_8F0E7F0
	asrs r2, r4, #0x18
	cmp r4, sb
	beq _08F0F172
	movs r1, #0
	ldr r0, [sp, #0x10]
	mov ip, r0
	ldr r3, [sp, #0x14]
	ldrb r0, [r3, #1]
	add r0, r8
	cmp r1, r0
	bge _08F0F166
	str r2, [sp, #0x20]
	mov r6, sl
	rsbs r6, r6, #0
	str r6, [sp, #0x24]
	ldr r7, [sp, #0x18]
	asrs r5, r7, #0x18
_08F0F12C:
	mov r0, ip
	lsls r3, r0, #2
	ldr r6, _08F0F1A0 @ =gUnknown_03003670
	adds r3, r3, r6
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	ldr r7, [sp, #0x24]
	adds r1, r7, r2
	ldrb r0, [r3, #3]
	adds r1, r0, r1
	ldrb r6, [r3, #2]
	ldr r7, [sp, #0x20]
	adds r0, r6, r7
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F0F1A4 @ =0x06003180
	adds r0, r0, r1
	mov r6, sp
	ldrh r6, [r6, #0xc]
	strh r6, [r0]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	asrs r2, r2, #0x18
	ldrb r3, [r3, #1]
	adds r0, r3, r5
	cmp r2, r0
	blt _08F0F12C
_08F0F166:
	movs r7, #0xff
	lsls r7, r7, #0x18
	adds r0, r4, r7
	lsrs r2, r0, #0x18
	cmp r0, sb
	bge _08F0F0B6
_08F0F172:
	movs r1, #0x80
	lsls r1, r1, #0x11
	add r1, sb
	lsrs r4, r1, #0x18
	asrs r1, r1, #0x18
	ldr r3, _08F0F1A0 @ =gUnknown_03003670
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r1, r0
	bge _08F0F18C
	b _08F0F088
_08F0F18C:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F19C: .4byte gUnknown_030034C0
_08F0F1A0: .4byte gUnknown_03003670
_08F0F1A4: .4byte 0x06003180

.syntax divided
