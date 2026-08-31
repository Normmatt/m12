.syntax unified
.section .text
@	thumb_func_start sub_8F02AFC
@sub_8F02AFC: @ 0x08F02AFC
	push {r4, r5, r6, lr}
	ldr r1, _08F02B60 @ =gUnknown_030007C8
	strb r0, [r1]
	movs r4, #0
	ldr r1, _08F02B64 @ =gUnknown_03000784
	ldr r0, _08F02B68 @ =gObjectMemory
	str r0, [r1]
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _08F02BAC
	adds r5, r6, #0
_08F02B14:
	ldr r2, [r5]
	ldr r0, _08F02B6C @ =gUnknown_03000788
	ldrh r3, [r2, #4]
	ldrh r0, [r0]
	subs r1, r3, r0
	adds r1, #0x80
	lsls r1, r1, #0x10
	ldr r0, _08F02B70 @ =gUnknown_03001508
	ldrh r3, [r2, #6]
	ldrh r0, [r0]
	subs r0, r3, r0
	adds r0, #0xc0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08F02B74 @ =0x047F0000
	cmp r1, r0
	bhi _08F02B88
	ldr r0, _08F02B78 @ =0x0000037F
	cmp r3, r0
	bhi _08F02B88
	movs r0, #0x7f
	ldrb r1, [r2]
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08F02B7C @ =gUnknown_03000780
	ldr r0, _08F02B80 @ =gUnknown_030007CC
	ldrb r0, [r0]
	adds r0, r0, r4
	strb r0, [r1]
	ldr r1, _08F02B84 @ =gUnknown_08F1B6B8
	ldr r0, [r5]
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	b _08F02B92
	.align 2, 0
_08F02B60: .4byte gUnknown_030007C8
_08F02B64: .4byte gUnknown_03000784
_08F02B68: .4byte gObjectMemory
_08F02B6C: .4byte gUnknown_03000788
_08F02B70: .4byte gUnknown_03001508
_08F02B74: .4byte 0x047F0000
_08F02B78: .4byte 0x0000037F
_08F02B7C: .4byte gUnknown_03000780
_08F02B80: .4byte gUnknown_030007CC
_08F02B84: .4byte gUnknown_08F1B6B8
_08F02B88:
	ldr r0, [r6]
	movs r1, #0x80
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_08F02B92:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bhi _08F02BAC
	lsls r0, r4, #5
	ldr r1, _08F02BB4 @ =gObjectMemory
	adds r0, r0, r1
	str r0, [r5]
	ldrb r0, [r0]
	ldr r6, _08F02BB8 @ =gUnknown_03000784
	cmp r0, #0
	bne _08F02B14
_08F02BAC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F02BB4: .4byte gObjectMemory
_08F02BB8: .4byte gUnknown_03000784

.syntax divided
