.syntax unified
.section .text

@	thumb_func_start SCR_CMD_3E
@SCR_CMD_3E: @ 0x08F05C28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r5, _08F05D6C @ =gScriptPtr
	ldr r0, [r5]
	adds r2, r0, #1
	str r2, [r5]
	ldr r4, _08F05D70 @ =gUnknown_03000784
	ldr r3, [r4]
	ldrb r1, [r0, #1]
	movs r6, #0
	strh r1, [r3, #0x1e]
	adds r0, r2, #1
	str r0, [r5]
	ldrb r2, [r2, #1]
	lsls r0, r2, #8
	adds r1, r1, r0
	strh r1, [r3, #0x1e]
	ldr r0, _08F05D74 @ =gUnknown_0300349C
	ldr r0, [r0]
	adds r0, r1, r0
	ldr r1, _08F05D78 @ =0xFFFF8000
	adds r2, r0, r1
	ldr r1, _08F05D7C @ =gUnknown_03000818
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r0, _08F05D80 @ =gUnknown_03001500
	strb r6, [r0]
	ldr r1, _08F05D84 @ =gUnknown_030007A0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08F05C72
	strb r6, [r1]
_08F05C72:
	ldrb r7, [r2]
	cmp r7, #0xf
	bls _08F05D5C
	movs r0, #7
	strb r0, [r3]
	ldr r1, [r4]
	movs r0, #0xbf
	ldrb r3, [r1, #0x14]
	ands r0, r3
	strb r0, [r1, #0x14]
	ldr r0, [r4]
	strb r6, [r0, #3]
	ldr r1, [r4]
	ldrb r0, [r2, #1]
	strb r0, [r1, #0x1a]
	ldr r2, [r4]
	ldr r0, [r5]
	ldr r1, _08F05D88 @ =gScriptLR
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	strb r0, [r2, #0x1c]
	ldr r2, [r4]
	ldr r1, _08F05D8C @ =gUnknown_03001D30
	ldrb r0, [r1]
	strb r0, [r2, #0x1d]
	strb r6, [r1]
	ldr r4, [r4]
	mov r8, r4
	ldrh r4, [r4, #4]
	ldr r6, _08F05D90 @ =0xFFFFFE40
	adds r2, r4, r6
	movs r7, #4
	rsbs r7, r7, #0
	mov ip, r7
	mov r0, ip
	ands r2, r0
	ldr r5, _08F05D94 @ =gUnknown_03002850
	ldr r1, _08F05D98 @ =gUnknown_0300081C
	ldr r3, [r1]
	mov sb, r3
	lsls r3, r3, #2
	adds r4, r3, r5
	ldr r1, _08F05D9C @ =0x0000FFFC
	adds r0, r1, #0
	ldrh r4, [r4]
	ands r0, r4
	subs r2, r2, r0
	mov r4, r8
	ldrh r4, [r4, #6]
	adds r6, #0x80
	adds r0, r4, r6
	mov r7, ip
	ands r0, r7
	adds r4, r5, #2
	adds r3, r3, r4
	ldrh r3, [r3]
	ands r1, r3
	subs r0, r0, r1
	mov r3, sb
	movs r7, #0
	mov ip, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	mov sb, r4
_08F05CFC:
	adds r3, #1
	cmp r3, #0x43
	ble _08F05D04
	movs r3, #0
_08F05D04:
	lsls r4, r3, #2
	mov r0, ip
	adds r5, r4, r0
	ldr r1, _08F05D98 @ =gUnknown_0300081C
	ldr r0, [r1]
	lsls r6, r0, #2
	mov r2, ip
	adds r1, r6, r2
	ldr r2, [sp]
	adds r0, r2, #0
	muls r0, r7, r0
	cmp r0, #0
	bge _08F05D20
	adds r0, #0xf
_08F05D20:
	asrs r0, r0, #4
	movs r2, #4
	rsbs r2, r2, #0
	mov r8, r2
	mov r2, r8
	ands r0, r2
	ldrh r1, [r1]
	adds r0, r1, r0
	asrs r1, r7, #3
	movs r2, #1
	ands r1, r2
	eors r0, r1
	strh r0, [r5]
	mov r0, sb
	adds r2, r4, r0
	adds r1, r6, r0
	mov r0, sl
	muls r0, r7, r0
	cmp r0, #0
	bge _08F05D4A
	adds r0, #0xf
_08F05D4A:
	asrs r0, r0, #4
	mov r4, r8
	ands r0, r4
	ldrh r1, [r1]
	adds r0, r1, r0
	strh r0, [r2]
	adds r7, #1
	cmp r7, #0xf
	ble _08F05CFC
_08F05D5C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F05D6C: .4byte gScriptPtr
_08F05D70: .4byte gUnknown_03000784
_08F05D74: .4byte gUnknown_0300349C
_08F05D78: .4byte 0xFFFF8000
_08F05D7C: .4byte gUnknown_03000818
_08F05D80: .4byte gUnknown_03001500
_08F05D84: .4byte gUnknown_030007A0
_08F05D88: .4byte gScriptLR
_08F05D8C: .4byte gUnknown_03001D30
_08F05D90: .4byte 0xFFFFFE40
_08F05D94: .4byte gUnknown_03002850
_08F05D98: .4byte gUnknown_0300081C
_08F05D9C: .4byte 0x0000FFFC

    .syntax divided
