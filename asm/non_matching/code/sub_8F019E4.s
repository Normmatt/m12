.syntax unified
.section .text
@	thumb_func_start sub_8F019E4
@sub_8F019E4: @ 0x08F019E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r1, _08F01A30 @ =gUnknown_03000C64
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08F01A08
	b _08F01B9C
_08F01A08:
	ldr r1, _08F01A34 @ =gUnknown_030007A0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08F01A18
	subs r0, r2, #1
	strb r0, [r1]
_08F01A18:
	ldr r0, _08F01A38 @ =gUnknown_03003170
	strb r3, [r0]
	ldr r0, _08F01A3C @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F01A5C
	ldr r0, _08F01A40 @ =gUnknown_0300078C
	ldr r1, _08F01A44 @ =gUnknown_030007C0
	ldrb r1, [r1]
	strb r1, [r0]
	b _08F01A62
	.align 2, 0
_08F01A30: .4byte gUnknown_03000C64
_08F01A34: .4byte gUnknown_030007A0
_08F01A38: .4byte gUnknown_03003170
_08F01A3C: .4byte gUnknown_0300317C
_08F01A40: .4byte gUnknown_0300078C
_08F01A44: .4byte gUnknown_030007C0
_08F01A48:
	ldr r1, _08F01A54 @ =gUnknown_0300078C
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08F01A58 @ =gUnknown_03000C64
	b _08F01B3C
	.align 2, 0
_08F01A54: .4byte gUnknown_0300078C
_08F01A58: .4byte gUnknown_03000C64
_08F01A5C:
	ldr r1, _08F01A70 @ =gUnknown_0300078C
	movs r0, #1
	strb r0, [r1]
_08F01A62:
	ldr r0, _08F01A74 @ =gUnknown_03000C64
	ldrb r4, [r0]
	movs r7, #0
	ldr r1, _08F01A78 @ =gUnknown_03000788
	mov sl, r1
	mov sb, r0
	b _08F01AA2
	.align 2, 0
_08F01A70: .4byte gUnknown_0300078C
_08F01A74: .4byte gUnknown_03000C64
_08F01A78: .4byte gUnknown_03000788
_08F01A7C:
	cmp r7, #0
	bne _08F01A8E
	mov r2, sb
	ldrb r4, [r2]
	adds r4, #1
	movs r0, #7
	ands r4, r0
	movs r0, #8
	b _08F01A9E
_08F01A8E:
	cmp r7, #1
	bne _08F01A48
	mov r3, sb
	ldrb r4, [r3]
	subs r4, #1
	movs r0, #7
	ands r4, r0
	movs r0, #0x10
_08F01A9E:
	orrs r4, r0
	adds r7, #1
_08F01AA2:
	ldr r0, _08F01BA0 @ =gUnknown_08F1B630
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08F01BA4 @ =gUnknown_0300078C
	mov r8, r1
	ldrb r2, [r1]
	muls r0, r2, r0
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r0, r0, r3
	mov r1, sl
	ldrh r1, [r1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	ldr r3, _08F01BA8 @ =gUnknown_03001508
	ldr r1, _08F01BAC @ =gUnknown_08F1B648
	adds r1, r4, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	muls r1, r2, r1
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r3, [r3]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsrs r6, r0, #0x10
	ldr r3, _08F01BB0 @ =0xFFE40000
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F01A7C
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F01A7C
	adds r0, r6, #0
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F01A7C
	adds r1, r5, #0
	subs r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8F01CBC
	adds r2, r0, #0
	cmp r2, #0
	bne _08F01A7C
	mov r0, sb
	strb r4, [r0]
	ldr r0, _08F01BB4 @ =gUnknown_030034A0
	ldr r3, _08F01BB8 @ =gUnknown_03000C64
	mov r1, r8
	ldrb r0, [r0]
	cmp r0, #0xbf
	bls _08F01B3C
	ldr r0, _08F01BBC @ =gUnknown_030007A4
	strb r2, [r0]
_08F01B3C:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F01B44
	b _08F01C68
_08F01B44:
	ldr r0, _08F01BA0 @ =gUnknown_08F1B630
	ldrb r2, [r3]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1]
	muls r0, r3, r0
	lsls r0, r0, #0x10
	ldr r1, _08F01BAC @ =gUnknown_08F1B648
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	muls r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_8F021F8
	cmp r0, #0
	bne _08F01C36
	ldr r1, [sp]
	cmp r1, #0
	bne _08F01BDA
	bl TriggerEncounter
	cmp r0, #0
	beq _08F01BC4
_08F01B80:
	ldr r0, _08F01BC0 @ =gUnknown_03002440
	ldrb r0, [r0]
	movs r1, #0
	bl InitiateBattle
	bl sub_8F00D24
	ldr r2, _08F01BB8 @ =gUnknown_03000C64
	movs r0, #0x87
	ldrb r3, [r2]
	ands r0, r3
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
_08F01B9C:
	movs r0, #1
	b _08F01C9C
	.align 2, 0
_08F01BA0: .4byte gUnknown_08F1B630
_08F01BA4: .4byte gUnknown_0300078C
_08F01BA8: .4byte gUnknown_03001508
_08F01BAC: .4byte gUnknown_08F1B648
_08F01BB0: .4byte 0xFFE40000
_08F01BB4: .4byte gUnknown_030034A0
_08F01BB8: .4byte gUnknown_03000C64
_08F01BBC: .4byte gUnknown_030007A4
_08F01BC0: .4byte gUnknown_03002440
_08F01BC4:
	ldr r1, _08F01C44 @ =gKeysRepeat
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F01BDA
	bl TriggerEncounter
	cmp r0, #0
	bne _08F01B80
_08F01BDA:
	ldr r0, _08F01C48 @ =gUnknown_03000788
	ldrh r1, [r0]
	adds r7, r1, r5
	strh r7, [r0]
	ldr r0, _08F01C4C @ =gUnknown_03001508
	ldrh r2, [r0]
	adds r2, r2, r4
	mov ip, r2
	strh r2, [r0]
	ldr r1, _08F01C50 @ =gUnknown_0300081C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x43
	ble _08F01BFC
	movs r0, #0
	str r0, [r1]
_08F01BFC:
	ldr r2, _08F01C54 @ =gPositionBuffer
	ldr r1, [r1]
	lsls r1, r1, #2
	adds r6, r1, r2
	ldr r5, _08F01C58 @ =0x0000FFFC
	ands r7, r5
	ldr r3, _08F01C5C @ =gUnknown_03000804
	ldrb r4, [r3]
	lsrs r0, r4, #3
	movs r4, #3
	ands r0, r4
	adds r0, r0, r7
	strh r0, [r6]
	adds r2, #2
	adds r1, r1, r2
	mov r0, ip
	ands r0, r5
	mov ip, r0
	ldr r0, _08F01C60 @ =gUnknown_030007A4
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ands r0, r4
	add r0, ip
	strh r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	bl sub_8F09824
_08F01C36:
	ldr r0, _08F01C64 @ =gUnknown_03000850
	ldr r0, [r0]
	cmp r0, #0
	beq _08F01C72
	bl sub_8F04778
	b _08F01C72
	.align 2, 0
_08F01C44: .4byte gKeysRepeat
_08F01C48: .4byte gUnknown_03000788
_08F01C4C: .4byte gUnknown_03001508
_08F01C50: .4byte gUnknown_0300081C
_08F01C54: .4byte gPositionBuffer
_08F01C58: .4byte 0x0000FFFC
_08F01C5C: .4byte gUnknown_03000804
_08F01C60: .4byte gUnknown_030007A4
_08F01C64: .4byte gUnknown_03000850
_08F01C68:
	ldr r1, _08F01CAC @ =gUnknown_03000C64
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
_08F01C72:
	ldr r1, _08F01CAC @ =gUnknown_03000C64
	movs r0, #0x87
	ldrb r3, [r1]
	ands r0, r3
	strb r0, [r1]
	ldr r0, _08F01CB0 @ =gUnknown_03000818
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F01B9C
	ldr r0, _08F01CB4 @ =gUnknown_030007A0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _08F01B9C
	ldr r0, _08F01CB8 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F01C9A
	b _08F01B9C
_08F01C9A:
	movs r0, #0
_08F01C9C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F01CAC: .4byte gUnknown_03000C64
_08F01CB0: .4byte gUnknown_03000818
_08F01CB4: .4byte gUnknown_030007A0
_08F01CB8: .4byte gUnknown_03003170

.syntax divided
