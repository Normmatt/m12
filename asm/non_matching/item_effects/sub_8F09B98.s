.syntax unified
.section .text

@	thumb_func_start sub_8F09B98
@sub_8F09B98: @ 0x08F09B98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #9
	bl PlayNoiseSfx
	bl sub_8F019B8
	movs r7, #0
	add r0, sp, #8
	mov sl, r0
	add r1, sp, #0x10
	mov sb, r1
	ldr r0, _08F09CE4 @ =gNESPalette
	ldrh r4, [r0, #0x22]
_08F09BC2:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl DarkenPalette
	ldr r0, _08F09CE8 @ =0x05000200
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl DarkenPalette
	movs r0, #1
	bl DelayByAmount
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x1f
	bls _08F09BC2
	bl sub_8F09AE4
	mov r2, sp
	movs r3, #0
	movs r1, #0
	movs r0, #0xa0
	strh r0, [r2, #6]
	mov r2, sl
	strh r1, [r2, #6]
	mov r0, sb
	strb r3, [r0, #3]
	mov r1, sp
	ldr r0, _08F09CEC @ =0x0000FF60
	strh r0, [r1, #4]
	movs r0, #0x20
	strh r0, [r2, #4]
	mov r1, sb
	strb r3, [r1, #2]
	mov r1, sp
	ldr r0, _08F09CF0 @ =0x0000FFB0
	strh r0, [r1, #2]
	movs r0, #0x40
	strh r0, [r2, #2]
	movs r2, #1
	mov r0, sb
	strb r2, [r0, #1]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0x60
	mov r1, sl
	strh r0, [r1]
	mov r0, sb
	strb r2, [r0]
	movs r1, #0
	mov r8, r1
_08F09C32:
	bl sub_8F016EC
	movs r7, #0
	mov r2, r8
	lsrs r2, r2, #3
	str r2, [sp, #0x18]
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0x14]
_08F09C44:
	ldr r0, _08F09CF4 @ =gGameInfo
	adds r0, #8
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F09D24
	subs r0, #1
	lsls r0, r0, #6
	ldr r1, _08F09CF4 @ =gGameInfo
	adds r2, r0, r1
	adds r3, r2, #0
	adds r3, #0x5e
	lsls r4, r7, #1
	mov r1, r8
	lsrs r0, r1, #2
	adds r0, r4, r0
	movs r1, #6
	ands r0, r1
	lsls r0, r0, #2
	ldrh r3, [r3]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F09C88
	adds r0, r6, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F09C88:
	adds r0, r2, #0
	adds r0, #0x5d
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	mov r2, sp
	adds r5, r2, r4
	ldrh r0, [r5]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x12
	adds r2, #0x60
	add r4, sl
	ldrh r0, [r4]
	lsls r3, r0, #0x10
	asrs r3, r3, #0x12
	subs r3, #0x30
	adds r0, r6, #0
	bl sub_8F01700
	ldrh r0, [r4]
	adds r0, #2
	movs r6, #0
	strh r0, [r4]
	mov r1, sb
	adds r3, r1, r7
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _08F09CFC
	movs r0, #0
	ldrsh r2, [r5, r0]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0xa0
	lsls r0, r0, #2
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	bge _08F09CF8
	ldrh r0, [r5]
	adds r0, #8
	strh r0, [r5]
	b _08F09D24
	.align 2, 0
_08F09CE4: .4byte gNESPalette
_08F09CE8: .4byte 0x05000200
_08F09CEC: .4byte 0x0000FF60
_08F09CF0: .4byte 0x0000FFB0
_08F09CF4: .4byte gGameInfo
_08F09CF8:
	strb r6, [r3]
	b _08F09D24
_08F09CFC:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, _08F09D1C @ =0xFFFFFD80
	adds r1, r1, r2
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	cmp r0, r1
	ble _08F09D20
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r5]
	b _08F09D24
	.align 2, 0
_08F09D1C: .4byte 0xFFFFFD80
_08F09D20:
	movs r0, #1
	strb r0, [r3]
_08F09D24:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08F09C44
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r1, _08F09D8C @ =0x040000D4
	ldr r0, _08F09D90 @ =gSpriteBuffer
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F09D94 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F09D98 @ =0x0400001A
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r0]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08F09D9C @ =0x000001FF
	cmp r8, r0
	bhi _08F09D60
	b _08F09C32
_08F09D60:
	bl FadeOut
	ldr r4, _08F09DA0 @ =gUnknown_08F64564
	ldr r1, _08F09DA4 @ =0x05000200
	adds r0, r4, #0
	bl LoadPalette
	ldr r1, _08F09DA8 @ =gUnknown_03001488
	adds r0, r4, #0
	bl LoadPalette
	movs r0, #0x5a
	bl DelayByAmount
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F09D8C: .4byte 0x040000D4
_08F09D90: .4byte gSpriteBuffer
_08F09D94: .4byte 0x84000100
_08F09D98: .4byte 0x0400001A
_08F09D9C: .4byte 0x000001FF
_08F09DA0: .4byte gUnknown_08F64564
_08F09DA4: .4byte 0x05000200
_08F09DA8: .4byte gUnknown_03001488

.syntax divided
