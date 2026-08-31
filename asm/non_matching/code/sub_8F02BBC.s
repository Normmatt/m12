.syntax unified
.section .text
@	thumb_func_start sub_8F02BBC
@sub_8F02BBC: @ 0x08F02BBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r6, _08F02C84 @ =gGameInfo
	ldr r1, _08F02C88 @ =0x0000021F
	adds r0, r6, r1
	movs r4, #1
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _08F02BDA
	b _08F02FFE
_08F02BDA:
	ldr r0, _08F02C8C @ =gUnknown_0300317C
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _08F02BE6
	b _08F02E00
_08F02BE6:
	cmp r1, #0xf
	bne _08F02CA8
	ldr r0, _08F02C90 @ =gUnknown_0300081C
	ldr r0, [r0]
	movs r2, #0x10
	adds r2, r2, r0
	mov r8, r2
	cmp r2, #0x43
	ble _08F02BFC
	subs r0, #0x34
	mov r8, r0
_08F02BFC:
	ldr r5, _08F02C94 @ =gUnknown_03000788
	ldr r2, _08F02C98 @ =gPositionBuffer
	mov r4, r8
	lsls r3, r4, #2
	adds r4, r3, r2
	ldr r1, _08F02C9C @ =0x0000FFFC
	adds r0, r1, #0
	ldrh r4, [r4]
	ands r0, r4
	strh r0, [r5]
	ldr r0, _08F02CA0 @ =gUnknown_03001508
	adds r2, #2
	adds r3, r3, r2
	ldrh r3, [r3]
	ands r1, r3
	strh r1, [r0]
	movs r7, #0
	mov sl, r7
	adds r4, r6, #0
_08F02C22:
	adds r0, r4, #0
	adds r0, #8
	add r0, sl
	ldrb r0, [r0]
	mov ip, r0
	cmp r0, #0
	beq _08F02C72
	subs r0, #1
	lsls r0, r0, #6
	adds r2, r0, r4
	adds r1, r2, #0
	adds r1, #0x5e
	ldr r0, _08F02CA4 @ =gUnknown_030007A4
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldrh r1, [r1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F02C5E
	adds r0, r6, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F02C5E:
	adds r0, r2, #0
	adds r0, #0x5d
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	adds r0, r6, #0
	movs r2, #0x60
	movs r3, #0x28
	bl sub_8F01700
_08F02C72:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bls _08F02C22
	b _08F02FFE
	.align 2, 0
_08F02C84: .4byte gGameInfo
_08F02C88: .4byte 0x0000021F
_08F02C8C: .4byte gUnknown_0300317C
_08F02C90: .4byte gUnknown_0300081C
_08F02C94: .4byte gUnknown_03000788
_08F02C98: .4byte gPositionBuffer
_08F02C9C: .4byte 0x0000FFFC
_08F02CA0: .4byte gUnknown_03001508
_08F02CA4: .4byte gUnknown_030007A4
_08F02CA8:
	ldr r0, _08F02CD4 @ =gUnknown_03000800
	ldrh r6, [r0]
	cmp r6, #0
	bne _08F02CEC
	ldr r5, _08F02CD8 @ =gUnknown_03000788
	ldr r3, _08F02CDC @ =gPositionBuffer
	ldr r0, _08F02CE0 @ =gUnknown_0300081C
	ldr r2, [r0]
	lsls r2, r2, #2
	adds r4, r2, r3
	ldr r1, _08F02CE4 @ =0x0000FFFC
	adds r0, r1, #0
	ldrh r4, [r4]
	ands r0, r4
	strh r0, [r5]
	ldr r0, _08F02CE8 @ =gUnknown_03001508
	adds r3, #2
	adds r2, r2, r3
	ldrh r2, [r2]
	ands r1, r2
	strh r1, [r0]
	b _08F02FFE
	.align 2, 0
_08F02CD4: .4byte gUnknown_03000800
_08F02CD8: .4byte gUnknown_03000788
_08F02CDC: .4byte gPositionBuffer
_08F02CE0: .4byte gUnknown_0300081C
_08F02CE4: .4byte 0x0000FFFC
_08F02CE8: .4byte gUnknown_03001508
_08F02CEC:
	ldr r0, _08F02D28 @ =gObject_Configs
	ldrb r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrb r1, [r1]
	str r1, [sp]
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [sp, #4]
	movs r1, #0xa0
	str r1, [sp, #8]
	cmp r2, #9
	bne _08F02D4A
	ldr r3, _08F02D2C @ =gUnknown_030034A4
	ldrh r1, [r3]
	movs r7, #0
	ldrsh r2, [r3, r7]
	cmp r2, #0
	ble _08F02D30
	ldr r4, [sp, #8]
	subs r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	cmp r2, #0xff
	bgt _08F02D4A
	adds r0, r1, #4
	strh r0, [r3]
	b _08F02D4A
	.align 2, 0
_08F02D28: .4byte gObject_Configs
_08F02D2C: .4byte gUnknown_030034A4
_08F02D30:
	cmp r2, #0
	bge _08F02D4A
	adds r0, r1, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r1, #4
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08F02D4A
	strh r4, [r3]
_08F02D4A:
	ldrb r5, [r5]
	cmp r5, #0xb
	bne _08F02D64
	ldr r1, _08F02D84 @ =gUnknown_03000C64
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F02D64
	ldr r1, _08F02D88 @ =gUnknown_03000804
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08F02D64:
	ldr r0, _08F02D8C @ =gUnknown_03000818
	ldrb r1, [r0]
	cmp r1, #0
	beq _08F02D74
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F02D94
_08F02D74:
	ldr r2, _08F02D90 @ =gUnknown_030007A4
	ldr r0, _08F02D88 @ =gUnknown_03000804
	ldrb r0, [r0]
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	b _08F02DC6
	.align 2, 0
_08F02D84: .4byte gUnknown_03000C64
_08F02D88: .4byte gUnknown_03000804
_08F02D8C: .4byte gUnknown_03000818
_08F02D90: .4byte gUnknown_030007A4
_08F02D94:
	ldr r4, _08F02DE8 @ =gUnknown_03000788
	ldr r3, _08F02DEC @ =gPositionBuffer
	ldr r0, _08F02DF0 @ =gUnknown_0300081C
	ldr r1, [r0]
	lsls r1, r1, #2
	adds r5, r1, r3
	ldr r2, _08F02DF4 @ =0x0000FFFC
	adds r0, r2, #0
	ldrh r7, [r5]
	ands r0, r7
	strh r0, [r4]
	ldr r0, _08F02DF8 @ =gUnknown_03001508
	adds r3, #2
	adds r1, r1, r3
	ldrh r1, [r1]
	ands r2, r1
	strh r2, [r0]
	ldr r2, _08F02DFC @ =gUnknown_030007A4
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #1
	strb r0, [r2]
	movs r0, #1
	ldrh r5, [r5]
	ands r0, r5
_08F02DC6:
	ldrb r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x12
	ldr r1, [sp, #8]
	lsls r3, r1, #0x10
	asrs r3, r3, #0x12
	adds r0, r6, #0
	ldr r1, [sp]
	bl sub_8F01700
	b _08F02FFE
	.align 2, 0
_08F02DE8: .4byte gUnknown_03000788
_08F02DEC: .4byte gPositionBuffer
_08F02DF0: .4byte gUnknown_0300081C
_08F02DF4: .4byte 0x0000FFFC
_08F02DF8: .4byte gUnknown_03001508
_08F02DFC: .4byte gUnknown_030007A4
_08F02E00:
	ldr r0, _08F02EB8 @ =gUnknown_0300081C
	ldr r0, [r0]
	mov r8, r0
	movs r2, #0
	mov sl, r2
	ldr r1, _08F02EBC @ =gPositionBuffer
	lsls r0, r0, #2
	adds r7, r0, r1
	mov sb, r0
_08F02E12:
	ldr r2, _08F02EC0 @ =gGameInfo
	adds r0, r2, #0
	adds r0, #8
	add r0, sl
	ldrb r0, [r0]
	mov ip, r0
	cmp r0, #0
	bne _08F02E24
	b _08F02FEE
_08F02E24:
	subs r0, #1
	lsls r1, r0, #6
	adds r2, r1, r2
	adds r1, r2, #0
	adds r1, #0x5e
	ldrh r6, [r1]
	adds r4, r2, #0
	adds r4, #0x41
	ldrb r3, [r4]
	movs r1, #0x80
	ands r1, r3
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _08F02E48
	adds r0, r6, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F02E48:
	adds r0, r2, #0
	adds r0, #0x5d
	movs r1, #0xf
	ldrb r0, [r0]
	ands r0, r1
	str r0, [sp]
	movs r2, #0xc0
	lsls r2, r2, #1
	str r2, [sp, #4]
	movs r0, #0xa0
	str r0, [sp, #8]
	mov r1, sl
	cmp r1, #0
	bne _08F02F28
	ldr r0, _08F02EC4 @ =gUnknown_03000818
	ldrb r1, [r0]
	cmp r1, #0
	beq _08F02E76
	movs r5, #0x40
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08F02ED8
_08F02E76:
	ldr r0, _08F02EC8 @ =gUnknown_030007A4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	bne _08F02E9C
	ldr r0, _08F02ECC @ =gUnknown_03000804
	ldrb r0, [r0]
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F02E9C:
	ldr r0, _08F02ED0 @ =gUnknown_03000844
	ldrh r0, [r0]
	ldr r2, [sp, #4]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _08F02ED4 @ =gUnknown_0300318C
	ldrh r0, [r0]
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	b _08F02F86
	.align 2, 0
_08F02EB8: .4byte gUnknown_0300081C
_08F02EBC: .4byte gPositionBuffer
_08F02EC0: .4byte gGameInfo
_08F02EC4: .4byte gUnknown_03000818
_08F02EC8: .4byte gUnknown_030007A4
_08F02ECC: .4byte gUnknown_03000804
_08F02ED0: .4byte gUnknown_03000844
_08F02ED4: .4byte gUnknown_0300318C
_08F02ED8:
	ldr r1, _08F02F18 @ =gUnknown_03000788
	ldr r0, _08F02F1C @ =0x0000FFFC
	ldrh r2, [r7]
	ands r0, r2
	strh r0, [r1]
	ldr r1, _08F02F20 @ =gUnknown_03001508
	ldrh r2, [r7, #2]
	ldr r0, _08F02F1C @ =0x0000FFFC
	ands r0, r2
	strh r0, [r1]
	ldr r1, _08F02F24 @ =gUnknown_030007A4
	movs r0, #3
	ands r0, r2
	lsls r0, r0, #1
	strb r0, [r1]
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	ldrb r4, [r4]
	ands r0, r4
	cmp r0, #0
	bne _08F02F86
	movs r0, #1
	ldrh r4, [r7]
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _08F02F86
	.align 2, 0
_08F02F18: .4byte gUnknown_03000788
_08F02F1C: .4byte 0x0000FFFC
_08F02F20: .4byte gUnknown_03001508
_08F02F24: .4byte gUnknown_030007A4
_08F02F28:
	ldr r2, _08F03010 @ =gPositionBuffer
	ldrh r4, [r7, #2]
	movs r0, #3
	ands r0, r4
	lsls r0, r0, #3
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	bne _08F02F52
	mov r0, sb
	adds r1, r0, r2
	movs r0, #1
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F02F52:
	mov r1, sb
	adds r0, r1, r2
	ldr r1, _08F03014 @ =0x0000FFFC
	ldrh r0, [r0]
	ands r1, r0
	ldr r2, _08F03018 @ =gUnknown_03000788
	ldr r0, _08F03014 @ =0x0000FFFC
	ldrh r2, [r2]
	ands r0, r2
	subs r1, r1, r0
	ldr r2, [sp, #4]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, _08F03014 @ =0x0000FFFC
	ands r1, r4
	ldr r2, _08F0301C @ =gUnknown_03001508
	ldr r0, _08F03014 @ =0x0000FFFC
	ldrh r2, [r2]
	ands r0, r2
	subs r1, r1, r0
	adds r1, #0xa0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
_08F02F86:
	ldr r4, [sp, #0xc]
	lsls r1, r4, #6
	ldr r0, _08F03020 @ =gGameInfo
	adds r1, r1, r0
	adds r1, #0x41
	movs r0, #0x20
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F02F9C
	ldr r6, _08F03024 @ =0x00008180
_08F02F9C:
	ldr r5, _08F03028 @ =gUnknown_030007B8
	ldrh r4, [r5]
	mov r1, ip
	cmp r1, #6
	bne _08F02FB8
	movs r0, #2
	ldrh r2, [r7]
	ands r0, r2
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r4, r0
	strh r0, [r5]
_08F02FB8:
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x12
	ldr r1, [sp, #8]
	lsls r3, r1, #0x10
	asrs r3, r3, #0x12
	adds r0, r6, #0
	ldr r1, [sp]
	bl sub_8F01700
	strh r4, [r5]
	subs r7, #0x40
	movs r2, #0x40
	rsbs r2, r2, #0
	add sb, r2
	movs r4, #0x10
	rsbs r4, r4, #0
	add r8, r4
	mov r0, r8
	cmp r0, #0
	bge _08F02FEE
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r7, r1
	add sb, r1
	movs r2, #0x44
	add r8, r2
_08F02FEE:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bhi _08F02FFE
	b _08F02E12
_08F02FFE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F03010: .4byte gPositionBuffer
_08F03014: .4byte 0x0000FFFC
_08F03018: .4byte gUnknown_03000788
_08F0301C: .4byte gUnknown_03001508
_08F03020: .4byte gGameInfo
_08F03024: .4byte 0x00008180
_08F03028: .4byte gUnknown_030007B8

.syntax divided
