.syntax unified
.section .text
@	thumb_func_start LoadMapObjects
@LoadMapObjects: @ 0x08F0277C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	ldr r1, _08F027A8 @ =gUnknown_08F1BA5B
	mov r0, sp
	movs r2, #0x6d
	bl memcpy
	ldr r3, _08F027AC @ =gCurrentArea
	ldrb r0, [r3]
	cmp r0, #0x19
	bhi _08F027B8
	ldr r2, _08F027B0 @ =gUnknown_0300349C
	ldr r1, _08F027B4 @ =m1_data_object_table_1
	str r1, [r2]
	ldrb r3, [r3]
	lsls r0, r3, #1
	b _08F027DC
	.align 2, 0
_08F027A8: .4byte gUnknown_08F1BA5B
_08F027AC: .4byte gCurrentArea
_08F027B0: .4byte gUnknown_0300349C
_08F027B4: .4byte m1_data_object_table_1
_08F027B8:
	cmp r0, #0x2a
	bhi _08F027D0
	ldr r2, _08F027C8 @ =gUnknown_0300349C
	ldr r1, _08F027CC @ =m1_data_object_table_2
	str r1, [r2]
	ldrb r0, [r3]
	subs r0, #0x1a
	b _08F027DA
	.align 2, 0
_08F027C8: .4byte gUnknown_0300349C
_08F027CC: .4byte m1_data_object_table_2
_08F027D0:
	ldr r2, _08F02804 @ =gUnknown_0300349C
	ldr r1, _08F02808 @ =m1_data_object_table_3
	str r1, [r2]
	ldrb r0, [r3]
	subs r0, #0x2b
_08F027DA:
	lsls r0, r0, #1
_08F027DC:
	adds r4, r0, r1
	ldr r1, _08F02804 @ =gUnknown_0300349C
	ldr r0, [r1]
	ldrb r2, [r4]
	adds r0, r2, r0
	ldrb r4, [r4, #1]
	lsls r1, r4, #8
	adds r0, r0, r1
	ldr r3, _08F0280C @ =0xFFFF8000
	adds r4, r0, r3
	movs r0, #0
	mov sb, r0
	mov r0, sp
	ldrb r0, [r0]
	ldr r1, _08F02810 @ =gUnknown_03000784
	mov sl, r1
	cmp r0, #0x3f
	bhi _08F02836
	ldr r1, _08F02814 @ =gCurrentArea
	b _08F02830
	.align 2, 0
_08F02804: .4byte gUnknown_0300349C
_08F02808: .4byte m1_data_object_table_3
_08F0280C: .4byte 0xFFFF8000
_08F02810: .4byte gUnknown_03000784
_08F02814: .4byte gCurrentArea
_08F02818:
	mov r3, sb
	lsls r0, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0x3f
	bhi _08F02836
_08F02830:
	ldrb r2, [r1]
	cmp r0, r2
	blo _08F02818
_08F02836:
	movs r1, #0
	ldr r6, _08F02924 @ =gUnknown_03000784
_08F0283A:
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	lsls r0, r7, #5
	ldr r3, _08F02928 @ =gObjectMemory
	adds r0, r0, r3
	str r0, [r6]
	ldrb r2, [r4, #1]
	mov r8, r1
	cmp r2, #0
	bne _08F02850
	b _08F0297E
_08F02850:
	ldr r1, _08F0292C @ =gUnknown_0300349C
	ldr r0, [r1]
	ldrb r2, [r4]
	adds r0, r2, r0
	ldrb r3, [r4, #1]
	lsls r1, r3, #8
	adds r0, r0, r1
	ldr r1, _08F02930 @ =0xFFFF8000
	adds r3, r0, r1
	ldr r1, _08F02934 @ =0xFFFFFF00
	ldr r0, [sp, #0x70]
	ands r0, r1
	ldrb r2, [r3]
	orrs r0, r2
	str r0, [sp, #0x70]
	add r1, sp, #0x70
	ldrb r0, [r3, #1]
	strb r0, [r1, #1]
	ldrb r0, [r3, #2]
	strb r0, [r1, #2]
	ldrb r0, [r3, #3]
	strb r0, [r1, #3]
	mov r0, sl
	ldr r1, [r0]
	ldr r0, [sp, #0x70]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	strb r0, [r1]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _08F02938 @ =gCurrentArea
	mov ip, r0
	ldrb r0, [r0]
	strb r0, [r1, #1]
	ldr r2, [r2]
	ldr r1, [sp, #0x70]
	ldr r0, _08F0293C @ =0x0000FFC0
	ands r1, r0
	movs r5, #0
	strh r1, [r2, #4]
	ldr r0, [sp, #0x70]
	lsrs r0, r0, #0x16
	lsls r0, r0, #6
	strh r0, [r2, #6]
	ldrb r1, [r2]
	cmp r1, #1
	bne _08F028B2
	subs r0, #0x10
	strh r0, [r2, #6]
_08F028B2:
	ldr r1, [r6]
	ldr r0, [sp, #0x70]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x1a
	strb r0, [r1, #0x15]
	ldr r1, [r6]
	str r3, [r1, #8]
	ldr r0, [sp, #0x70]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x19
	ldr r2, _08F02940 @ =gObject_Configs
	adds r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r1, #2]
	ldr r1, [r6]
	ldr r0, [sp, #0x70]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x19
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #8
	strb r0, [r1, #0x14]
	ldr r0, [r6]
	strb r5, [r0, #3]
	ldr r0, [r6]
	strb r5, [r0, #0x1a]
	ldr r0, [r6]
	strb r5, [r0, #0x18]
	ldr r0, [r6]
	strb r5, [r0, #0x19]
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r0, r2, #0x10
	add r0, sp
	ldrb r0, [r0]
	adds r5, r4, #2
	mov r1, ip
	ldrb r1, [r1]
	cmp r0, r1
	bne _08F02920
	adds r1, r7, #0
	adds r4, r0, #0
_08F02906:
	asrs r3, r2, #0x10
	adds r0, r3, #1
	add r0, sp
	ldrb r0, [r0]
	cmp r0, r1
	beq _08F02944
	adds r0, r3, #4
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	add r0, sp
	ldrb r0, [r0]
	cmp r0, r4
	beq _08F02906
_08F02920:
	adds r4, r5, #0
	b _08F02980
	.align 2, 0
_08F02924: .4byte gUnknown_03000784
_08F02928: .4byte gObjectMemory
_08F0292C: .4byte gUnknown_0300349C
_08F02930: .4byte 0xFFFF8000
_08F02934: .4byte 0xFFFFFF00
_08F02938: .4byte gCurrentArea
_08F0293C: .4byte 0x0000FFC0
_08F02940: .4byte gObject_Configs
_08F02944:
	ldr r2, [r6]
	adds r0, r3, #2
	mov r1, sp
	adds r4, r1, r0
	ldrb r1, [r4]
	lsls r0, r1, #0x1b
	asrs r0, r0, #0x19
	ldrh r1, [r2, #4]
	adds r0, r1, r0
	strh r0, [r2, #4]
	adds r0, r3, #3
	mov r1, sp
	adds r3, r1, r0
	ldrb r1, [r3]
	lsls r0, r1, #0x1b
	asrs r0, r0, #0x19
	ldrh r1, [r2, #6]
	adds r0, r1, r0
	strh r0, [r2, #6]
	movs r0, #0xe0
	adds r1, r0, #0
	ldrb r4, [r4]
	ands r1, r4
	ldrb r3, [r3]
	ands r0, r3
	lsrs r0, r0, #3
	adds r1, r1, r0
	strb r1, [r2, #0x18]
	b _08F02920
_08F0297E:
	strb r2, [r0]
_08F02980:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x27
	bgt _08F02990
	b _08F0283A
_08F02990:
	ldr r2, _08F029A4 @ =gUnknown_03000818
	ldrb r0, [r2]
	cmp r0, #0
	beq _08F029AC
	movs r0, #0
	strb r0, [r2]
	movs r0, #0xf
	ldr r3, _08F029A8 @ =gUnknown_03001500
	strb r0, [r3]
	b _08F029B0
	.align 2, 0
_08F029A4: .4byte gUnknown_03000818
_08F029A8: .4byte gUnknown_03001500
_08F029AC:
	ldr r1, _08F029D0 @ =gUnknown_03001500
	strb r0, [r1]
_08F029B0:
	movs r0, #0
	ldr r2, _08F029D4 @ =gUnknown_0300150C
	str r0, [r2]
	ldr r3, _08F029D8 @ =gUnknown_030007EC
	str r0, [r3]
	ldr r1, _08F029DC @ =gUnknown_03000850
	str r0, [r1]
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F029D0: .4byte gUnknown_03001500
_08F029D4: .4byte gUnknown_0300150C
_08F029D8: .4byte gUnknown_030007EC
_08F029DC: .4byte gUnknown_03000850

.syntax divided
