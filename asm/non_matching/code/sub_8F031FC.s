.syntax unified
.section .text
@	thumb_func_start sub_8F031FC
@sub_8F031FC: @ 0x08F031FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F032B4 @ =gUnknown_03000784
	ldr r3, [r0]
	ldr r2, _08F032B8 @ =gUnknown_03000788
	ldr r1, _08F032BC @ =0x0000FFFC
	adds r0, r1, #0
	ldrh r2, [r2]
	ands r0, r2
	ldrh r2, [r3, #4]
	subs r0, r2, r0
	subs r0, #0x40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, _08F032C0 @ =gUnknown_03001508
	ldrh r0, [r0]
	ands r1, r0
	ldrh r4, [r3, #6]
	subs r1, r4, r1
	subs r1, #0xa0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, [r3, #8]
	ldrb r7, [r0, #5]
	lsls r2, r7, #8
	ldrb r0, [r0, #4]
	orrs r2, r0
	ldr r0, _08F032C4 @ =gUnknown_08F1B628
	movs r1, #7
	ldrb r4, [r3, #0x15]
	ands r1, r4
	adds r1, r1, r0
	movs r0, #1
	ldrb r7, [r3, #3]
	ands r0, r7
	ldrb r1, [r1]
	adds r0, r1, r0
	lsls r0, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r4, _08F032C8 @ =gUnknown_030007B8
	ldrh r1, [r4]
	adds r5, r1, #0
	movs r2, #0x10
	adds r0, r2, #0
	ldrb r7, [r3, #0x14]
	ands r0, r7
	cmp r0, #0
	beq _08F0326C
	ldr r7, _08F032CC @ =0xFFFFFC00
	adds r0, r1, r7
	strh r0, [r4]
_08F0326C:
	adds r0, r2, #0
	ldrb r1, [r3, #0x18]
	ands r0, r1
	adds r1, r3, #0
	cmp r0, #0
	beq _08F03280
	ldrh r2, [r4]
	ldr r7, _08F032CC @ =0xFFFFFC00
	adds r0, r2, r7
	strh r0, [r4]
_08F03280:
	movs r0, #0x40
	ldrb r1, [r1, #0x18]
	ands r0, r1
	cmp r0, #0
	beq _08F03294
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, r2
	strh r0, [r4]
_08F03294:
	ldrb r1, [r3, #2]
	mov r7, ip
	lsls r2, r7, #0x10
	asrs r2, r2, #0x12
	mov r0, r8
	lsls r3, r0, #0x10
	asrs r3, r3, #0x12
	adds r0, r6, #0
	bl sub_8F01700
	strh r5, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F032B4: .4byte gUnknown_03000784
_08F032B8: .4byte gUnknown_03000788
_08F032BC: .4byte 0x0000FFFC
_08F032C0: .4byte gUnknown_03001508
_08F032C4: .4byte gUnknown_08F1B628
_08F032C8: .4byte gUnknown_030007B8
_08F032CC: .4byte 0xFFFFFC00

.syntax divided
