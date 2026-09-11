.syntax unified
.section .text

@	thumb_func_start sub_8F09DAC
@sub_8F09DAC: @ 0x08F09DAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #3
	bl PlayNoiseSfx
	ldr r2, _08F09F54 @ =0x0400000C
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r7, #0
	add r0, sp, #8
	mov sl, r0
	add r1, sp, #0x10
	mov sb, r1
	ldr r0, _08F09F58 @ =gNESPalette
	ldrh r4, [r0, #0x22]
	ldr r5, _08F09F5C @ =0x0400004C
_08F09DDE:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #2
	bl DarkenPalette
	ldr r0, _08F09F60 @ =0x05000200
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #2
	bl DarkenPalette
	lsls r0, r7, #0xc
	lsls r1, r7, #8
	adds r0, r0, r1
	lsls r1, r7, #4
	adds r0, r0, r1
	adds r0, r0, r7
	strh r0, [r5]
	movs r0, #4
	bl DelayByAmount
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xf
	bls _08F09DDE
	ldr r2, _08F09F54 @ =0x0400000C
	ldrh r1, [r2]
	ldr r0, _08F09F64 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08F09F5C @ =0x0400004C
	movs r4, #0
	strh r4, [r0]
	bl sub_8F019B8
	bl sub_8F09AE4
	mov r1, sp
	movs r2, #0
	ldr r0, _08F09F68 @ =0x0000FFE0
	strh r0, [r1, #6]
	movs r0, #0xa0
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1, #6]
	mov r0, sb
	strb r4, [r0, #3]
	mov r1, sp
	movs r0, #0x20
	strh r0, [r1, #4]
	movs r0, #0xa8
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1, #4]
	mov r0, sb
	strb r4, [r0, #2]
	mov r0, sp
	strh r2, [r0, #2]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r1, #2]
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1, #1]
	mov r0, sp
	strh r2, [r0]
	movs r0, #0xb8
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1]
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	movs r4, #0
	ldr r0, _08F09F6C @ =0x040000D4
	mov r8, r0
_08F09E7C:
	bl sub_8F016EC
	movs r7, #0
	adds r4, #1
	str r4, [sp, #0x14]
_08F09E86:
	movs r0, #3
	subs r0, r0, r7
	ldr r1, _08F09F70 @ =gGameInfo
	adds r1, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F09EF8
	subs r0, #1
	lsls r0, r0, #6
	ldr r1, _08F09F70 @ =gGameInfo
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x5e
	ldrh r6, [r0]
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F09EBA
	adds r0, r6, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F09EBA:
	adds r0, r2, #0
	adds r0, #0x5d
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	lsls r4, r7, #1
	mov r0, sp
	adds r5, r0, r4
	ldrh r0, [r5]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x12
	adds r2, #0x68
	add r4, sl
	ldrh r0, [r4]
	lsls r3, r0, #0x10
	asrs r3, r3, #0x12
	subs r3, #0x40
	adds r0, r6, #0
	bl sub_8F01700
	ldrh r0, [r4]
	subs r0, #4
	strh r0, [r4]
	mov r1, sb
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5]
	adds r0, r1, r0
	strh r0, [r5]
_08F09EF8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08F09E86
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r0, _08F09F74 @ =gSpriteBuffer
	mov r1, r8
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F09F78 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xc7
	bls _08F09E7C
	bl FadeOut
	ldr r4, _08F09F7C @ =gUnknown_08F64564
	ldr r1, _08F09F60 @ =0x05000200
	adds r0, r4, #0
	bl LoadPalette
	ldr r1, _08F09F80 @ =gUnknown_03001488
	adds r0, r4, #0
	bl LoadPalette
	movs r0, #0x5a
	bl DelayByAmount
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F09F54: .4byte 0x0400000C
_08F09F58: .4byte gNESPalette
_08F09F5C: .4byte 0x0400004C
_08F09F60: .4byte 0x05000200
_08F09F64: .4byte 0x0000FFBF
_08F09F68: .4byte 0x0000FFE0
_08F09F6C: .4byte 0x040000D4
_08F09F70: .4byte gGameInfo
_08F09F74: .4byte gSpriteBuffer
_08F09F78: .4byte 0x84000100
_08F09F7C: .4byte gUnknown_08F64564
_08F09F80: .4byte gUnknown_03001488

.syntax divided
