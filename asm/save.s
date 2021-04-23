
#ifdef NDS_VERSION
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	thumb_func_start LoadSaveGame
LoadSaveGame: @ 0x08F0D094
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	mov sb, r0
	add r6, sp, #0x38
	ldr r1, _08F0D1F4 @ =gUnknown_08F2A074
	adds r0, r6, #0
	movs r2, #0x40
	bl memcpy
	add r5, sp, #0x78
	adds r1, r5, #0
	ldr r0, _08F0D1F8 @ =gUnknown_08F2A0B4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r4, sp, #0x88
	adds r1, r4, #0
	ldr r0, _08F0D1FC @ =gUnknown_08F2A0C4
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	bl sub_8F0D510
	str r0, [sp, #0x9c]
	mov r4, sp
	adds r4, #0x94
	str r4, [sp, #0xa4]
	mov r6, sp
	adds r6, #4
	str r6, [sp, #0xa8]
	cmp r0, #0
	ble _08F0D0E2
	adds r7, r0, #0
	subs r7, #1
	str r7, [sp, #0x9c]
_08F0D0E2:
	movs r0, #0
	ldr r1, [sp, #0xa4]
	str r0, [r1]
	movs r0, #0xf
	ldr r2, [sp, #0x9c]
	ands r2, r0
	str r2, [sp, #0x9c]
_08F0D0F0:
	ldr r0, _08F0D200 @ =gUnknown_08F2713B
	bl HandleControlCodes
	movs r3, #0
	mov r8, r3
	movs r7, #0
	ldr r4, [sp, #0xa8]
	str r4, [sp, #0xa0]
	add r6, sp, #0x38
	mov sl, r6
_08F0D104:
	mov r0, r8
	mov r1, sb
	bl ReadSave
	ldr r0, _08F0D204 @ =0x0000E9B0
	mov r1, sb
	ldrh r1, [r1, #2]
	cmp r1, r0
	beq _08F0D118
	b _08F0D214
_08F0D118:
	mov r1, sp
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	mov r2, r8
	lsls r6, r2, #2
	adds r5, r6, r2
	adds r4, r5, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r1, r4, #0
	bl SetTextPosition
	ldr r0, _08F0D208 @ =gUnknown_08F270CC
	bl HandleControlCodes
#ifdef JAPANESE
	movs r0, #6
#elif ENGLISH
	movs r0, #3	
#endif
	adds r1, r4, #0
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x78
	bl HandleControlCodes
	movs r0, #0xe
	adds r1, r4, #0
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x50
	ldrb r0, [r0]
	movs r1, #2
	bl DrawNumberWithMaxDigits
	adds r5, #3
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
#ifdef JAPANESE
	movs r0, #0x14
#elif ENGLISH
	movs r0, #0x17	
#endif
	adds r1, r5, #0
	bl SetTextPosition
	movs r2, #0
	ldr r0, _08F0D20C @ =gUnknown_08F662EC
	str r6, [sp, #0xac]
	adds r4, r7, #1
	mov r5, r8
	adds r5, #1
	ldrh r6, [r0]
	mov r3, sb
	ldrb r3, [r3, #0x18]
	cmp r6, r3
	bls _08F0D192
_08F0D180:
	adds r0, #4
	adds r2, #1
	cmp r2, #3
	bgt _08F0D192
	ldrh r1, [r0]
	mov r6, sb
	ldrb r6, [r6, #0x18]
	cmp r1, r6
	bhi _08F0D180
_08F0D192:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _08F0D210 @ =gUnknown_08F2711C
	adds r0, r0, r1
	bl HandleControlCodes
	ldr r0, [sp, #0x9c]
	cmp r0, r8
	bne _08F0D1AA
	ldr r1, [sp, #0xa4]
	str r7, [r1]
_08F0D1AA:
	lsls r1, r7, #2
	ldr r2, [sp, #0xa0]
	adds r1, r2, r1
	ldr r2, [sp, #0xac]
	add r2, r8
	adds r0, r2, #1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	str r0, [r1]
	adds r7, r4, #0
	lsls r1, r7, #2
	ldr r3, [sp, #0xa0]
	adds r1, r3, r1
	adds r0, r2, #2
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	str r0, [r1]
	adds r7, #1
	lsls r1, r7, #2
	adds r1, r3, r1
	adds r0, r2, #3
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	str r0, [r1]
	adds r7, #1
	lsls r1, r7, #2
	adds r1, r3, r1
	adds r2, #4
	lsls r2, r2, #2
	add r2, sl
	ldr r0, [r2]
	str r0, [r1]
	adds r7, #1
	b _08F0D25E
	.align 2, 0
_08F0D1F4: .4byte gUnknown_08F2A074
_08F0D1F8: .4byte gUnknown_08F2A0B4
_08F0D1FC: .4byte gUnknown_08F2A0C4
_08F0D200: .4byte gUnknown_08F2713B
_08F0D204: .4byte 0x0000E9B0
_08F0D208: .4byte gUnknown_08F270CC
_08F0D20C: .4byte gUnknown_08F662EC
_08F0D210: .4byte gUnknown_08F2711C
_08F0D214:
	mov r1, sp
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	mov r4, r8
	lsls r5, r4, #2
	add r5, r8
	adds r4, r5, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #1
	adds r1, r4, #0
	bl SetTextPosition
	ldr r0, _08F0D2A4 @ =gUnknown_08F27085
	bl HandleControlCodes
#ifdef JAPANESE
	movs r0, #0xb
#elif ENGLISH
	movs r0, #0x8
#endif
	adds r1, r4, #0
	bl SetTextPosition
	mov r4, r8
	adds r4, #1
	adds r0, r4, #0
	movs r1, #1
	bl DrawNumberWithMaxDigits
	lsls r1, r7, #2
	ldr r6, [sp, #0xa8]
	adds r1, r6, r1
	lsls r5, r5, #2
	add r5, sp
	adds r5, #0x38
	ldr r0, [r5]
	str r0, [r1]
	adds r7, #1
	adds r5, r4, #0
_08F0D25E:
	mov r8, r5
	cmp r5, #2
	bgt _08F0D266
	b _08F0D104
_08F0D266:
	lsls r0, r7, #2
	ldr r7, [sp, #0xa8]
	adds r0, r7, r0
	movs r1, #0
	strh r1, [r0]
	ldr r4, _08F0D2A8 @ =gUnknown_030034D0
	movs r0, #0xa0
	strb r0, [r4]
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xa4]
	bl HandleSelectMenuInput
	adds r1, r0, #0
	cmp r1, #0
	bgt _08F0D286
	b _08F0D0E2
_08F0D286:
	movs r0, #0
	strb r0, [r4]
	asrs r0, r1, #4
	mov r8, r0
	movs r0, #0xf
	ands r0, r1
	subs r0, #1
	cmp r0, #4
	bls _08F0D29A
	b _08F0D0E2
_08F0D29A:
	lsls r0, r0, #2
	ldr r1, _08F0D2AC @ =_08F0D2B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0D2A4: .4byte gUnknown_08F27085
_08F0D2A8: .4byte gUnknown_030034D0
_08F0D2AC: .4byte _08F0D2B0
_08F0D2B0: @ jump table
	.4byte _08F0D2C4 @ case 0
	.4byte _08F0D2D0 @ case 1
	.4byte _08F0D2DC @ case 2
	.4byte _08F0D384 @ case 3
	.4byte _08F0D3E0 @ case 4
_08F0D2C4:
	movs r0, #0x80
	lsls r0, r0, #8
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	b _08F0D438
_08F0D2D0:
	mov r0, r8
	subs r0, #1
	mov r1, sb
	bl ReadSave
	b _08F0D438
_08F0D2DC:
	movs r2, #0
	movs r7, #0
	mov r6, r8
	subs r6, #1
	ldr r5, _08F0D37C @ =gUnknown_08F27159
	adds r4, r6, #0
	add r1, sp, #0x78
	ldr r3, [sp, #0xa8]
_08F0D2EC:
	cmp r2, r4
	beq _08F0D2F6
	ldr r0, [r1]
	stm r3!, {r0}
	adds r7, #1
_08F0D2F6:
	adds r1, #4
	adds r2, #1
	cmp r2, #2
	ble _08F0D2EC
	lsls r0, r7, #2
	ldr r2, [sp, #0xa8]
	adds r0, r2, r0
	movs r1, #0
	strh r1, [r0]
	adds r0, r5, #0
	bl HandleControlCodes
	ldr r0, [sp, #0xa8]
	movs r1, #0
	bl HandleSelectMenuInput
	adds r1, r0, #0
	cmp r1, #0
	bgt _08F0D31E
	b _08F0D0E2
_08F0D31E:
	asrs r1, r1, #4
	subs r4, r1, #1
	mov r3, sp
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0D370
	ldr r0, _08F0D380 @ =gUnknown_08F27181
	bl HandleControlCodes
	adds r0, r4, #0
	mov r1, sb
	bl ReadSave
	movs r0, #7
	movs r1, #0x10
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x78
	bl HandleControlCodes
	movs r0, #0xf
	movs r1, #0x10
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x50
	ldrb r0, [r0]
	movs r1, #2
	bl DrawNumberWithMaxDigits
	movs r0, #1
	add r1, sp, #0x98
	str r0, [r1]
	add r0, sp, #0x88
	bl HandleSelectMenuInput
	cmp r0, #1
	beq _08F0D370
	b _08F0D0E2
_08F0D370:
	adds r0, r6, #0
	mov r1, sb
	bl ReadSave
	b _08F0D3D2
	.align 2, 0
_08F0D37C: .4byte gUnknown_08F27159
_08F0D380: .4byte gUnknown_08F27181
_08F0D384:
	ldr r0, _08F0D3DC @ =gUnknown_08F271DC
	bl HandleControlCodes
	mov r4, r8
	subs r4, #1
	adds r0, r4, #0
	mov r1, sb
	bl ReadSave
#ifdef JAPANESE
	movs r0, #7
#elif ENGLISH
	movs r0, #5 @X coordinate of the name and level number
#endif
	movs r1, #0x10
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x78
	bl HandleControlCodes
	movs r0, #0xf
	movs r1, #0x10
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x50
	ldrb r0, [r0]
	movs r1, #2
	bl DrawNumberWithMaxDigits
	movs r0, #1
	add r1, sp, #0x98
	str r0, [r1]
	add r0, sp, #0x88
	bl HandleSelectMenuInput
	cmp r0, #1
	beq _08F0D3CC
	b _08F0D0E2
_08F0D3CC:
	movs r0, #0
	mov r6, sb
	strh r0, [r6, #2]
_08F0D3D2:
	mov r0, sb
	adds r1, r4, #0
	bl M1_WriteSave
	b _08F0D0E2
	.align 2, 0
_08F0D3DC: .4byte gUnknown_08F271DC
_08F0D3E0:
	mov r0, r8
	subs r0, #1
	mov r1, sb
	bl ReadSave
	movs r2, #0
	ldr r0, _08F0D434 @ =gUnknown_08F662EC
	ldrh r1, [r0]
	mov r7, sb
	ldrb r7, [r7, #0x18]
	cmp r1, r7
	bls _08F0D40A
_08F0D3F8:
	adds r0, #4
	adds r2, #1
	cmp r2, #3
	bgt _08F0D40A
	ldrh r3, [r0]
	mov r1, sb
	ldrb r1, [r1, #0x18]
	cmp r3, r1
	bhi _08F0D3F8
_08F0D40A:
	subs r2, #1
	cmp r2, #0
	bge _08F0D412
	movs r2, #4
_08F0D412:
	ldr r1, _08F0D434 @ =gUnknown_08F662EC
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r2, sb
	strb r0, [r2, #0x18]
	mov r0, sb
	mov r1, r8
	bl M1_CalculateChecksumAndWriteSave
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r3, [sp, #0x9c]
	orrs r3, r0
	str r3, [sp, #0x9c]
	b _08F0D0F0
	.align 2, 0
_08F0D434: .4byte gUnknown_08F662EC
_08F0D438:
	movs r0, #0xf
	mov r4, r8
	ands r0, r4
	bl sub_8F0D574
	bl sub_8F0B040
	mov r0, r8
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start M1_CalculateChecksumAndWriteSave
M1_CalculateChecksumAndWriteSave: @ 0x08F0D458
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r7, r1, #0
	movs r4, #0
	movs r2, #2
	ldr r6, _08F0D48C @ =0x000002FF
	movs r5, #7
_08F0D466:
	adds r1, r3, r2
	adds r0, r2, #0
	ands r0, r5
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	adds r4, r4, r0
	adds r2, #1
	cmp r2, r6
	ble _08F0D466
	strh r4, [r3]
	subs r1, r7, #1
	adds r0, r3, #0
	bl M1_WriteSave
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0D48C: .4byte 0x000002FF

	thumb_func_start M1_ValidateChecksum
M1_ValidateChecksum: @ 0x08F0D490
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r4, #0
	movs r2, #2
	ldr r6, _08F0D4C0 @ =0x000002FF
	movs r5, #7
_08F0D49C:
	adds r1, r3, r2
	adds r0, r2, #0
	ands r0, r5
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	adds r4, r4, r0
	adds r2, #1
	cmp r2, r6
	ble _08F0D49C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r3]
	cmp r3, r0
	beq _08F0D4C4
	movs r0, #1
	b _08F0D4C6
	.align 2, 0
_08F0D4C0: .4byte 0x000002FF
_08F0D4C4:
	movs r0, #0
_08F0D4C6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start ReadSave
ReadSave: @ 0x08F0D4CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	cmp r4, #5
	bgt _08F0D504
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #8
	movs r1, #0xe0
	lsls r1, r1, #0x14
	adds r5, r0, r1
_08F0D4E2:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xc0
	lsls r2, r2, #2
#ifdef NDS_VERSION
	bl ReadSram_DS
#else
	bl ReadSram
#endif
	adds r0, r6, #0
	bl M1_ValidateChecksum
	cmp r0, #0
	beq _08F0D508
	movs r0, #0x90
	lsls r0, r0, #4
	adds r5, r5, r0
	adds r4, #3
	cmp r4, #5
	ble _08F0D4E2
_08F0D504:
	movs r0, #0
	strh r0, [r6, #2]
_08F0D508:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F0D510
sub_8F0D510: @ 0x08F0D510
	push {lr}
	sub sp, #4
	ldr r0, _08F0D530 @ =0x0E001200
	mov r1, sp
	movs r2, #4
#ifdef NDS_VERSION
	bl ReadSram_DS
#else
	bl ReadSram
#endif
	mov r1, sp
	ldr r0, _08F0D534 @ =0x0000E9B0
	ldrh r1, [r1]
	cmp r1, r0
	bne _08F0D538
	mov r0, sp
	ldrh r0, [r0, #2]
	b _08F0D53A
	.align 2, 0
_08F0D530: .4byte 0x0E001200
_08F0D534: .4byte 0x0000E9B0
_08F0D538:
	movs r0, #0
_08F0D53A:
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start M1_WriteSave
M1_WriteSave: @ 0x08F0D540
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r4, #5
	bgt _08F0D56E
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #8
	movs r1, #0xe0
	lsls r1, r1, #0x14
	adds r5, r0, r1
_08F0D556:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xc0
	lsls r2, r2, #2
#ifdef NDS_VERSION
	bl WriteSramEx_DS
#else
	bl WriteSramEx
#endif
	movs r0, #0x90
	lsls r0, r0, #4
	adds r5, r5, r0
	adds r4, #3
	cmp r4, #5
	ble _08F0D556
_08F0D56E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8F0D574
sub_8F0D574: @ 0x08F0D574
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08F0D594 @ =0x0000E9B0
	adds r1, r3, #0
	strh r1, [r2]
	mov r1, sp
	strh r0, [r1, #2]
	ldr r1, _08F0D598 @ =0x0E001200
	mov r0, sp
	movs r2, #4
#ifdef NDS_VERSION
	bl WriteSramEx_DS
#else
	bl WriteSramEx
#endif
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08F0D594: .4byte 0x0000E9B0
_08F0D598: .4byte 0x0E001200
