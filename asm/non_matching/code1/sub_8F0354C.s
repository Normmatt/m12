.syntax unified
.section .text

@	thumb_func_start sub_8F0354C
@sub_8F0354C: @ 0x08F0354C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08F03588 @ =gUnknown_0300349C
	ldr r2, _08F0358C @ =gUnknown_03000784
	ldr r1, [r2]
	ldr r0, [r0]
	ldrh r1, [r1, #0x1e]
	adds r0, r1, r0
	ldr r1, _08F03590 @ =0xFFFF8000
	adds r7, r0, r1
	ldr r0, _08F03594 @ =gUnknown_030007C8
	ldrb r0, [r0]
	mov ip, r2
	cmp r0, #0
	beq _08F03570
	b _08F03772
_08F03570:
	ldr r0, _08F03598 @ =gUnknown_0300317C
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _08F035A4
	ldr r0, _08F0359C @ =gUnknown_0300078C
	ldr r1, _08F035A0 @ =gUnknown_030007C0
	ldrb r1, [r1]
	strb r1, [r0]
	mov r8, r0
	b _08F035AC
	.align 2, 0
_08F03588: .4byte gUnknown_0300349C
_08F0358C: .4byte gUnknown_03000784
_08F03590: .4byte 0xFFFF8000
_08F03594: .4byte gUnknown_030007C8
_08F03598: .4byte gUnknown_0300317C
_08F0359C: .4byte gUnknown_0300078C
_08F035A0: .4byte gUnknown_030007C0
_08F035A4:
	ldr r1, _08F03640 @ =gUnknown_0300078C
	movs r0, #1
	strb r0, [r1]
	mov r8, r1
_08F035AC:
	ldrb r2, [r7]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _08F035C0
	mov r3, ip
	ldr r1, [r3]
	movs r0, #7
	ands r0, r2
	strb r0, [r1, #0x15]
_08F035C0:
	ldrb r4, [r7]
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _08F036A0
	mov r6, ip
	ldr r2, [r6]
	ldr r3, _08F03644 @ =gUnknown_08F1B660
	movs r1, #7
	adds r0, r1, #0
	ands r0, r4
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, r8
	ldrb r3, [r3]
	muls r0, r3, r0
	ldrh r4, [r2, #4]
	adds r0, r4, r0
	strh r0, [r2, #4]
	ldr r0, _08F03648 @ =gUnknown_08F1B668
	ldrb r6, [r7]
	ands r1, r6
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r1, r8
	ldrb r1, [r1]
	muls r0, r1, r0
	ldrh r3, [r2, #6]
	adds r0, r3, r0
	strh r0, [r2, #6]
	movs r0, #0xfe
	ldrb r4, [r2, #3]
	ands r0, r4
	strb r0, [r2, #3]
	mov r6, ip
	ldr r3, [r6]
	ldrb r2, [r3, #3]
	lsrs r0, r2, #4
	movs r1, #1
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #3]
	movs r0, #0x40
	ldrb r1, [r7]
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08F036A0
	ldr r4, _08F0364C @ =gUnknown_0300081C
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	cmp r0, #0x43
	ble _08F03636
	str r1, [r4]
_08F03636:
	ldrb r5, [r5]
	cmp r5, #9
	bne _08F03650
	ldr r0, [r4]
	b _08F0365C
	.align 2, 0
_08F03640: .4byte gUnknown_0300078C
_08F03644: .4byte gUnknown_08F1B660
_08F03648: .4byte gUnknown_08F1B668
_08F0364C: .4byte gUnknown_0300081C
_08F03650:
	ldr r4, [r4]
	adds r0, r4, #0
	adds r0, #0x10
	cmp r0, #0x43
	ble _08F0365C
	subs r0, #0x44
_08F0365C:
	ldr r2, _08F0372C @ =gPositionBuffer
	lsls r4, r0, #2
	adds r3, r4, r2
	mov sb, r3
	mov r5, ip
	ldr r3, [r5]
	ldrh r6, [r3, #4]
	ldr r0, _08F03730 @ =0xFFFFFE40
	adds r1, r6, r0
	movs r6, #4
	rsbs r6, r6, #0
	adds r5, r6, #0
	ands r1, r5
	movs r0, #3
	ldrb r6, [r3, #3]
	ands r0, r6
	adds r0, r0, r1
	mov r1, sb
	strh r0, [r1]
	adds r2, #2
	adds r4, r4, r2
	ldrh r3, [r3, #6]
	ldr r2, _08F03734 @ =0xFFFFFEC0
	adds r1, r3, r2
	ands r1, r5
	ldr r2, _08F03738 @ =gUnknown_08F1B628
	movs r0, #7
	ldrb r3, [r7]
	ands r0, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #1
	adds r0, r0, r1
	strh r0, [r4]
_08F036A0:
	mov r4, ip
	ldr r1, [r4]
	movs r0, #0x1e
	ldrb r5, [r1, #3]
	ands r0, r5
	cmp r0, #0
	bne _08F03762
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _08F03758
	adds r7, #2
	ldrh r0, [r1, #0x1e]
	adds r0, #2
	strh r0, [r1, #0x1e]
	ldr r2, _08F0373C @ =gUnknown_03000818
	ldrb r0, [r7]
	strb r0, [r2]
	ldrb r0, [r7]
	cmp r0, #0xf
	bhi _08F03754
	cmp r0, #2
	bhi _08F036D0
	movs r0, #0
	strb r0, [r2]
_08F036D0:
	mov r6, ip
	ldr r2, [r6]
	ldr r1, [r2, #8]
	movs r0, #0x3f
	ldrb r1, [r1]
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	ldr r2, _08F03740 @ =gObject_Configs
	ldrb r3, [r1]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #8
	strb r0, [r1, #0x14]
	ldrb r0, [r7]
	cmp r0, #0
	bne _08F03700
	ldr r0, [r6]
	ldrb r4, [r0]
	lsls r1, r4, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strb r1, [r0, #2]
_08F03700:
	ldr r0, _08F03744 @ =gUnknown_030007EC
	mov r5, ip
	ldr r2, [r5]
	str r2, [r0]
	ldr r1, _08F03748 @ =gUnknown_03001510
	ldrb r0, [r2, #0x1c]
	strb r0, [r1]
	ldr r1, _08F0374C @ =gUnknown_03001514
	ldrb r0, [r2, #0x1d]
	strb r0, [r1]
	ldrb r0, [r7]
	cmp r0, #0
	bne _08F037A2
	ldr r0, _08F03750 @ =gUnknown_08F1B6B8
	ldrb r2, [r2]
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	b _08F037B0
	.align 2, 0
_08F0372C: .4byte gPositionBuffer
_08F03730: .4byte 0xFFFFFE40
_08F03734: .4byte 0xFFFFFEC0
_08F03738: .4byte gUnknown_08F1B628
_08F0373C: .4byte gUnknown_03000818
_08F03740: .4byte gObject_Configs
_08F03744: .4byte gUnknown_030007EC
_08F03748: .4byte gUnknown_03001510
_08F0374C: .4byte gUnknown_03001514
_08F03750: .4byte gUnknown_08F1B6B8
_08F03754:
	ldrb r0, [r7, #1]
	strb r0, [r1, #0x1a]
_08F03758:
	mov r6, ip
	ldr r1, [r6]
	ldrb r0, [r1, #0x1a]
	subs r0, #1
	strb r0, [r1, #0x1a]
_08F03762:
	mov r0, ip
	ldr r1, [r0]
	mov r2, r8
	ldrb r2, [r2]
	lsls r0, r2, #1
	ldrb r3, [r1, #3]
	adds r0, r3, r0
	strb r0, [r1, #3]
_08F03772:
	movs r0, #0x20
	ldrb r7, [r7]
	ands r0, r7
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08F0379C
	mov r4, ip
	ldr r3, [r4]
	ldr r2, _08F03798 @ =gObject_Configs
	ldr r1, [r3, #8]
	movs r0, #0x3f
	ldrb r1, [r1]
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r3, #2]
	b _08F037A2
	.align 2, 0
_08F03798: .4byte gObject_Configs
_08F0379C:
	mov r5, ip
	ldr r0, [r5]
	strb r1, [r0, #2]
_08F037A2:
	mov r6, ip
	ldr r0, [r6]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08F037B0
	bl sub_8F031FC
_08F037B0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
