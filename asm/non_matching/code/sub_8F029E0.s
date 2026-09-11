.syntax unified
.section .text
@	thumb_func_start sub_8F029E0
@sub_8F029E0: @ 0x08F029E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08F02A40 @ =gUnknown_03000788
	ldr r0, _08F02A44 @ =gUnknown_03001508
	ldrh r5, [r0]
	ldr r4, _08F02A48 @ =gPositionBuffer
	ldrh r0, [r1]
	mov r8, r0
	movs r3, #4
	rsbs r3, r3, #0
	adds r0, r3, #0
	ldrh r1, [r1]
	ands r0, r1
	strh r0, [r4]
	lsls r0, r5, #0x10
	asrs r7, r0, #0x10
	adds r2, r7, #0
	ands r2, r3
	ldr r3, _08F02A4C @ =gUnknown_030007A4
	ldrb r6, [r3]
	lsrs r0, r6, #1
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	strh r0, [r4, #2]
	ldr r0, _08F02A50 @ =gFade_Type
	ldrb r0, [r0]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08F02A5C
	ldr r1, _08F02A54 @ =gUnknown_08F1B630
	movs r0, #4
	eors r0, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, r1
	ldrb r2, [r1]
	ldr r1, _08F02A58 @ =gUnknown_08F1B648
	adds r0, r0, r1
	ldrb r3, [r0]
	b _08F02A66
	.align 2, 0
_08F02A40: .4byte gUnknown_03000788
_08F02A44: .4byte gUnknown_03001508
_08F02A48: .4byte gPositionBuffer
_08F02A4C: .4byte gUnknown_030007A4
_08F02A50: .4byte gFade_Type
_08F02A54: .4byte gUnknown_08F1B630
_08F02A58: .4byte gUnknown_08F1B648
_08F02A5C:
	movs r3, #0
	movs r2, #0
	subs r0, r7, #4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08F02A66:
	ldr r1, _08F02AEC @ =gUnknown_0300081C
	movs r0, #0x43
	str r0, [r1]
	lsls r0, r2, #0x18
	lsls r1, r3, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	asrs r1, r1, #0x18
	mov sl, r1
	ldr r1, _08F02AF0 @ =gPositionBuffer
	mov sb, r1
	ldr r7, _08F02AEC @ =gUnknown_0300081C
	mov ip, r7
	movs r6, #3
_08F02A82:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r7, [sp]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	add r2, sl
	lsls r2, r2, #0x10
	mov r0, ip
	ldr r3, [r0]
	lsls r4, r3, #2
	mov r7, sb
	adds r5, r4, r7
	lsrs r0, r1, #0x10
	mov r8, r0
	asrs r1, r1, #0x10
	movs r7, #4
	rsbs r7, r7, #0
	ands r1, r7
	asrs r0, r3, #3
	ands r0, r6
	adds r1, r1, r0
	strh r1, [r5]
	ldr r0, _08F02AF4 @ =gUnknown_03002852
	adds r4, r4, r0
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	ands r2, r7
	ldr r1, _08F02AF8 @ =gUnknown_030007A4
	ldrb r1, [r1]
	lsrs r0, r1, #1
	ands r0, r6
	adds r0, r0, r2
	strh r0, [r4]
	subs r3, #1
	mov r7, ip
	str r3, [r7]
	cmp r3, #0
	bgt _08F02A82
	movs r0, #0
	ldr r1, _08F02AEC @ =gUnknown_0300081C
	str r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F02AEC: .4byte gUnknown_0300081C
_08F02AF0: .4byte gPositionBuffer
_08F02AF4: .4byte gUnknown_03002852
_08F02AF8: .4byte gUnknown_030007A4

.syntax divided
