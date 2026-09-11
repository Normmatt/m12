.syntax unified
.section .text
@	thumb_func_start sub_8F0EB80
@sub_8F0EB80: @ 0x08F0EB80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08F0EE24 @ =0xFFFFFD40
	add sp, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x288]
	ldr r1, _08F0EE28 @ =gUnknown_08F66C40
	mov r0, sp
	movs r2, #0x43
	bl memcpy
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0x28c]
	ldr r1, _08F0EE2C @ =gUnknown_08F66C83
	movs r2, #0x33
	bl memcpy
	mov r1, sp
	adds r1, #0x78
	str r1, [sp, #0x290]
	ldr r1, _08F0EE30 @ =gUnknown_08F66CB6
	ldr r0, [sp, #0x290]
	movs r2, #0x33
	bl memcpy
	mov r2, sp
	adds r2, #0xac
	str r2, [sp, #0x294]
	ldr r1, _08F0EE34 @ =gUnknown_08F66CE9
	adds r0, r2, #0
	movs r2, #0x27
	bl memcpy
	mov r3, sp
	adds r3, #0xd4
	str r3, [sp, #0x298]
	ldr r1, _08F0EE38 @ =gUnknown_08F66D10
	adds r0, r3, #0
	movs r2, #0x1f
	bl memcpy
	mov r5, sp
	adds r5, #0xf4
	str r5, [sp, #0x29c]
	ldr r1, _08F0EE3C @ =gUnknown_08F66D2F
	adds r0, r5, #0
	movs r2, #0x1b
	bl memcpy
	movs r6, #0x88
	lsls r6, r6, #1
	add r6, sp
	str r6, [sp, #0x2a0]
	ldr r1, _08F0EE40 @ =gUnknown_08F66D4A
	adds r0, r6, #0
	movs r2, #0x1b
	bl memcpy
	movs r7, #0x96
	lsls r7, r7, #1
	add r7, sp
	str r7, [sp, #0x2a4]
	ldr r1, _08F0EE44 @ =gUnknown_08F66D65
	adds r0, r7, #0
	movs r2, #0x1b
	bl memcpy
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, sp
	mov sl, r0
	ldr r1, _08F0EE48 @ =gUnknown_08F66D80
	movs r2, #0x13
	bl memcpy
	movs r1, #0xae
	lsls r1, r1, #1
	add r1, sp
	mov sb, r1
	ldr r1, _08F0EE4C @ =gUnknown_08F66D93
	mov r0, sb
	movs r2, #0xf
	bl memcpy
	movs r2, #0xb6
	lsls r2, r2, #1
	add r2, sp
	mov r8, r2
	ldr r1, _08F0EE50 @ =gUnknown_08F66DA2
	mov r0, r8
	movs r2, #0xf
	bl memcpy
	add r6, sp, #0x17c
	ldr r1, _08F0EE54 @ =gUnknown_08F66DB1
	adds r0, r6, #0
	movs r2, #0xf
	bl memcpy
	add r5, sp, #0x18c
	ldr r1, _08F0EE58 @ =gUnknown_08F66DC0
	adds r0, r5, #0
	movs r2, #0xb
	bl memcpy
	add r4, sp, #0x198
	ldr r1, _08F0EE5C @ =gUnknown_08F66DCB
	adds r0, r4, #0
	movs r2, #0x13
	bl memcpy
	add r7, sp, #0x1ac
	mov r3, sp
	str r3, [r7]
	str r3, [r7, #4]
	ldr r0, [sp, #0x28c]
	str r0, [r7, #8]
	ldr r1, [sp, #0x290]
	str r1, [r7, #0xc]
	ldr r2, [sp, #0x294]
	str r2, [r7, #0x10]
	ldr r3, [sp, #0x298]
	str r3, [r7, #0x14]
	mov r0, sp
	str r0, [r7, #0x18]
	ldr r1, [sp, #0x29c]
	str r1, [r7, #0x1c]
	ldr r2, [sp, #0x2a0]
	str r2, [r7, #0x20]
	ldr r3, [sp, #0x2a4]
	str r3, [r7, #0x24]
	mov r0, sl
	str r0, [r7, #0x28]
	mov r1, sb
	str r1, [r7, #0x2c]
	mov r2, r8
	str r2, [r7, #0x30]
	str r6, [r7, #0x34]
	str r5, [r7, #0x38]
	str r4, [r7, #0x3c]
	add r4, sp, #0x1ec
	ldr r1, _08F0EE60 @ =gUnknown_08F66DDE
	adds r0, r4, #0
	movs r2, #0x58
	bl memcpy
	add r0, sp, #0x244
	ldr r1, _08F0EE64 @ =gUnknown_08F66E38
	movs r2, #0x44
	bl memcpy
	ldr r2, _08F0EE68 @ =gBattlerData
	ldr r3, [sp, #0x288]
	lsls r6, r3, #5
	adds r1, r6, r2
	movs r0, #1
	ldrb r5, [r1, #0x1e]
	ands r0, r5
	cmp r0, #0
	beq _08F0ECCE
	movs r0, #0
	strb r0, [r1]
_08F0ECCE:
	ldr r0, _08F0EE6C @ =gUnknown_03003620
	mov r8, r0
	ldrb r0, [r1, #0x1a]
	mov r3, r8
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r1, #0x1a]
	adds r0, r2, #3
	adds r0, r6, r0
	ldrb r1, [r0]
	lsrs r0, r1, #4
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r5, [r0]
	ldrb r7, [r5]
	mov sl, r7
	adds r5, #1
	ldrb r0, [r5]
	mov sb, r0
	adds r5, #1
	adds r0, r2, #7
	adds r0, r6, r0
	ldrb r0, [r0]
	lsrs r0, r0, #5
	ldrb r2, [r5]
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2a8]
	adds r5, #1
	ldr r0, _08F0EE70 @ =gEnemyGroupPositioning
	ldrb r0, [r0]
	lsls r0, r0, #2
	mov r3, r8
	ldrb r3, [r3]
	adds r0, r3, r0
	adds r0, r4, r0
	ldrb r0, [r0]
	str r0, [sp, #0x2ac]
	movs r0, #0xc
	ands r0, r1
	lsrs r0, r0, #2
	str r0, [sp, #0x2b0]
	ldr r1, _08F0EE74 @ =gUnknown_03003670
	ldr r4, [sp, #0x288]
	subs r4, #4
	lsls r0, r4, #2
	adds r0, r0, r1
	strb r7, [r0]
	mov r7, sb
	strb r7, [r0, #1]
	add r1, sp, #0x2a8
	ldrb r1, [r1]
	strb r1, [r0, #2]
	add r2, sp, #0x2ac
	ldrb r2, [r2]
	strb r2, [r0, #3]
	ldr r0, [sp, #0x288]
	bl sub_8F0EF4C
	movs r0, #0
	str r6, [sp, #0x2b8]
	str r4, [sp, #0x2b4]
	cmp r0, sl
	bhs _08F0ED9E
	mov ip, r8
_08F0ED52:
	movs r2, #0
	adds r3, r0, #1
	str r3, [sp, #0x2bc]
	cmp r2, sb
	bhs _08F0ED94
	ldr r6, [sp, #0x2a8]
	adds r0, r6, r0
	lsls r4, r0, #6
	ldr r7, _08F0EE78 @ =0x0600217E
	mov r8, r7
	ldr r0, [sp, #0x2b0]
	lsls r3, r0, #0xc
_08F0ED6A:
	ldr r1, [sp, #0x2ac]
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r4, r0
	add r0, r8
	mov r6, ip
	ldrb r6, [r6]
	lsls r1, r6, #6
	ldrb r7, [r5]
	adds r1, r7, r1
	adds r1, r1, r3
	movs r6, #0x86
	lsls r6, r6, #7
	adds r1, r1, r6
	strh r1, [r0]
	adds r5, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, sb
	blo _08F0ED6A
_08F0ED94:
	ldr r7, [sp, #0x2bc]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, sl
	blo _08F0ED52
_08F0ED9E:
	ldr r2, _08F0EE7C @ =gUnknown_08F6F880
	ldr r1, _08F0EE80 @ =gEnemyData
	ldr r4, _08F0EE68 @ =gBattlerData
	ldr r3, [sp, #0x2b8]
	adds r0, r3, r4
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _08F0EE6C @ =gUnknown_03003620
	ldrb r1, [r1]
	lsls r1, r1, #0xb
	ldr r5, _08F0EE84 @ =0x0600E000
	adds r1, r1, r5
	movs r2, #0x40
	bl BitUnpack
	adds r4, #5
	ldr r6, [sp, #0x2b8]
	adds r3, r6, r4
	movs r4, #0xfc
	adds r0, r4, #0
	ldrb r7, [r3]
	ands r0, r7
	cmp r0, #0
	beq _08F0EE10
	ldr r0, _08F0EE88 @ =gUnknown_030036C0
	ldr r2, [sp, #0x2b4]
	lsls r1, r2, #3
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	add r2, sp, #0x244
	adds r0, r4, #0
	ldrb r5, [r3]
	ands r0, r5
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	adds r0, r4, #0
	ldrb r3, [r3]
	ands r0, r3
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1, #1]
	ldr r0, [sp, #0x2ac]
	subs r0, #3
	lsls r0, r0, #3
	strh r0, [r1, #4]
	ldr r0, [sp, #0x2a8]
	adds r0, #4
	lsls r0, r0, #3
	strh r0, [r1, #6]
_08F0EE10:
	movs r3, #0xb0
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0EE24: .4byte 0xFFFFFD40
_08F0EE28: .4byte gUnknown_08F66C40
_08F0EE2C: .4byte gUnknown_08F66C83
_08F0EE30: .4byte gUnknown_08F66CB6
_08F0EE34: .4byte gUnknown_08F66CE9
_08F0EE38: .4byte gUnknown_08F66D10
_08F0EE3C: .4byte gUnknown_08F66D2F
_08F0EE40: .4byte gUnknown_08F66D4A
_08F0EE44: .4byte gUnknown_08F66D65
_08F0EE48: .4byte gUnknown_08F66D80
_08F0EE4C: .4byte gUnknown_08F66D93
_08F0EE50: .4byte gUnknown_08F66DA2
_08F0EE54: .4byte gUnknown_08F66DB1
_08F0EE58: .4byte gUnknown_08F66DC0
_08F0EE5C: .4byte gUnknown_08F66DCB
_08F0EE60: .4byte gUnknown_08F66DDE
_08F0EE64: .4byte gUnknown_08F66E38
_08F0EE68: .4byte gBattlerData
_08F0EE6C: .4byte gUnknown_03003620
_08F0EE70: .4byte gEnemyGroupPositioning
_08F0EE74: .4byte gUnknown_03003670
_08F0EE78: .4byte 0x0600217E
_08F0EE7C: .4byte gUnknown_08F6F880
_08F0EE80: .4byte gEnemyData
_08F0EE84: .4byte 0x0600E000
_08F0EE88: .4byte gUnknown_030036C0

.syntax divided
