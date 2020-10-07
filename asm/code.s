#ifdef NDS_VERSION
#include "macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	thumb_func_start sub_8F00F48
sub_8F00F48: @ 0x08F00F48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r2
	lsls r1, r1, #0x10
	ldr r0, _08F00F74 @ =0x03BF0000
	cmp r1, r0
	bls _08F00F78
	movs r4, #0
	movs r1, #0
_08F00F62:
	lsls r0, r4, #1
	add r0, sl
	strh r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bls _08F00F62
	b _08F0100E
	.align 2, 0
_08F00F74: .4byte 0x03BF0000
_08F00F78:
	asrs r4, r1, #0x10
	adds r0, r4, #0
	movs r1, #0xf0
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r5, r0, #6
	adds r0, r4, #0
	movs r1, #0xf0
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08F00F98
	adds r0, #7
_08F00F98:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r2, r5
	lsrs r0, r0, #0x14
	movs r3, #0x38
	adds r1, r0, #0
	ands r1, r3
	movs r4, #0xf0
	lsls r4, r4, #2
	adds r3, r4, #0
	adds r1, r1, r3
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r4, #0
	ldr r7, _08F0101C @ =gUnknown_03000808
	mov sb, r7
	movs r1, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
_08F00FD0:
	lsls r3, r4, #1
	add r3, sl
	adds r0, r5, r4
	adds r0, r6, r0
	mov r1, sb
	ldrh r1, [r1]
	ldrb r0, [r0]
	adds r2, r1, r0
	lsrs r1, r4, #2
	movs r0, #7
	ands r1, r0
	add r1, r8
	adds r1, r6, r1
	movs r0, #2
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, ip
	ldrb r1, [r1]
	asrs r1, r0
	adds r0, r1, #0
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #0xc
	adds r2, r2, r0
	strh r2, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bls _08F00FD0
_08F0100E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0101C: .4byte gUnknown_03000808

	thumb_func_start sub_8F01020
sub_8F01020: @ 0x08F01020
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x19
	lsrs r5, r3, #0x18
	cmp r2, #0
	beq _08F010F2
	movs r3, #0x3e
	mov sb, r3
	rsbs r4, r5, #0
	str r4, [sp, #4]
	mov r8, r0
	mov sl, r1
	str r2, [sp]
_08F01046:
	mov r0, sl
	ldrh r1, [r0]
	lsls r0, r1, #1
	movs r2, #0x3e
	ands r0, r2
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x1f
	lsrs r0, r1, #0x14
	mov r3, sb
	ands r0, r3
	orrs r6, r0
	lsrs r7, r1, #0x19
	ands r7, r3
	mov r4, r8
	ldrh r1, [r4]
	lsls r4, r1, #1
	ands r4, r2
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x1f
	lsrs r0, r1, #0x14
	ands r0, r3
	orrs r2, r0
	lsrs r3, r1, #0x19
	mov r0, sb
	ands r3, r0
	mov r1, ip
	subs r0, r1, r4
	cmp r0, r5
	blt _08F01086
	adds r0, r4, r5
	b _08F0108E
_08F01086:
	ldr r1, [sp, #4]
	cmp r0, r1
	bgt _08F01094
	subs r0, r4, r5
_08F0108E:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08F01096
_08F01094:
	mov r4, ip
_08F01096:
	subs r0, r6, r2
	cmp r0, r5
	blt _08F010A0
	adds r0, r2, r5
	b _08F010A8
_08F010A0:
	ldr r1, [sp, #4]
	cmp r0, r1
	bgt _08F010AE
	subs r0, r2, r5
_08F010A8:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _08F010B0
_08F010AE:
	adds r2, r6, #0
_08F010B0:
	subs r0, r7, r3
	cmp r0, r5
	blt _08F010BA
	adds r0, r3, r5
	b _08F010C2
_08F010BA:
	ldr r1, [sp, #4]
	cmp r0, r1
	bgt _08F010C8
	subs r0, r3, r5
_08F010C2:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	b _08F010CA
_08F010C8:
	adds r3, r7, #0
_08F010CA:
	lsrs r1, r4, #1
	adds r0, r2, #0
	mov r4, sb
	ands r0, r4
	lsls r0, r0, #4
	adds r1, r1, r0
	lsls r0, r2, #0xf
	adds r1, r1, r0
	lsls r0, r3, #9
	adds r1, r1, r0
	mov r0, r8
	strh r1, [r0]
	movs r1, #2
	add r8, r1
	add sl, r1
	ldr r2, [sp]
	subs r2, #1
	str r2, [sp]
	cmp r2, #0
	bne _08F01046
_08F010F2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start DarkenPalette
DarkenPalette: @ 0x08F01104
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x19
	lsrs r5, r3, #0x18
	cmp r2, #0
	beq _08F011D4
	lsls r3, r1, #1
	movs r1, #0x3e
	ands r1, r3
	str r1, [sp, #4]
	lsrs r3, r0, #0x1f
	movs r1, #0x3e
	mov r8, r1
	adds r7, r4, #0
	lsrs r0, r0, #0x14
	ands r0, r1
	orrs r3, r0
	mov sl, r3
	rsbs r3, r5, #0
	mov ip, r3
	mov sb, r2
_08F01142:
	ldr r4, [sp]
	lsrs r6, r4, #9
	mov r0, r8
	ands r6, r0
	ldrh r1, [r7]
	lsls r4, r1, #1
	movs r3, #0x3e
	ands r4, r3
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x1f
	lsrs r0, r1, #0x14
	mov r3, r8
	ands r0, r3
	orrs r2, r0
	lsrs r3, r1, #0x19
	mov r0, r8
	ands r3, r0
	ldr r1, [sp, #4]
	subs r0, r1, r4
	cmp r0, r5
	blt _08F01170
	adds r0, r4, r5
	b _08F01176
_08F01170:
	cmp r0, ip
	bgt _08F0117C
	subs r0, r4, r5
_08F01176:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08F0117E
_08F0117C:
	ldr r4, [sp, #4]
_08F0117E:
	mov r1, sl
	subs r0, r1, r2
	cmp r0, r5
	blt _08F0118A
	adds r0, r2, r5
	b _08F01190
_08F0118A:
	cmp r0, ip
	bgt _08F01196
	subs r0, r2, r5
_08F01190:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _08F01198
_08F01196:
	mov r2, sl
_08F01198:
	subs r0, r6, r3
	cmp r0, r5
	blt _08F011A2
	adds r0, r3, r5
	b _08F011A8
_08F011A2:
	cmp r0, ip
	bgt _08F011AE
	subs r0, r3, r5
_08F011A8:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	b _08F011B0
_08F011AE:
	adds r3, r6, #0
_08F011B0:
	lsrs r1, r4, #1
	adds r0, r2, #0
	mov r4, r8
	ands r0, r4
	lsls r0, r0, #4
	adds r1, r1, r0
	lsls r0, r2, #0xf
	adds r1, r1, r0
	lsls r0, r3, #9
	adds r1, r1, r0
	strh r1, [r7]
	adds r7, #2
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	bne _08F01142
_08F011D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8F011E4
sub_8F011E4: @ 0x08F011E4
	lsls r0, r0, #0x18
	movs r2, #0xa0
	lsls r2, r2, #0x13
	ldr r1, _08F01204 @ =gNESPalette
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x88
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08F01204: .4byte gNESPalette

	thumb_func_start sub_8F01208
sub_8F01208: @ 0x08F01208
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xa8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_8F01220
sub_8F01220: @ 0x08F01220
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08F01250 @ =gUnknown_08F6451C
	lsrs r0, r1, #0xd
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r2, #0xe0
	lsls r2, r2, #5
	ands r2, r1
	lsrs r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	movs r1, #0xfc
	lsls r1, r1, #0x18
	ands r1, r3
	lsrs r1, r1, #0x18
	adds r0, r0, r1
	movs r1, #0xe0
	lsls r1, r1, #6
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08F01250: .4byte gUnknown_08F6451C

	thumb_func_start sub_8F01254
sub_8F01254: @ 0x08F01254
	push {r4, lr}
	ldr r0, _08F012E0 @ =gUnknown_03000788
	ldrh r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08F012E4 @ =gUnknown_03001508
	ldrh r1, [r1]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_8F01220
	ldr r3, _08F012E8 @ =gUnknown_030007F8
	movs r1, #0x1f
	ldrb r0, [r0]
	ands r1, r0
	strb r1, [r3]
	ldr r4, _08F012EC @ =gUnknown_03001520
	lsls r0, r1, #4
	ldr r2, _08F012F0 @ =gUnknown_08F591A0
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4]
	ldrb r1, [r3]
	lsls r0, r1, #4
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #4]
	ldrb r1, [r3]
	lsls r0, r1, #4
	adds r1, r2, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #8]
	ldrb r3, [r3]
	lsls r0, r3, #4
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0xc]
	ldr r1, _08F012F4 @ =gUnknown_030007B4
	ldrb r0, [r4, #0xc]
	strb r0, [r1]
	ldr r1, _08F012F8 @ =gUnknown_03000820
	ldrb r0, [r4, #0xe]
	strb r0, [r1]
	movs r0, #0xf
	strb r0, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	ldr r0, _08F012FC @ =gUnknown_030007E8
	ldrb r0, [r0]
	cmp r0, #2
	blt _08F01304
	cmp r0, #3
	ble _08F012D6
	cmp r0, #9
	bne _08F01304
_08F012D6:
	ldr r1, _08F01300 @ =gUnknown_03001480
	adds r0, r4, #0
	bl LoadPalette
	b _08F0130E
	.align 2, 0
_08F012E0: .4byte gUnknown_03000788
_08F012E4: .4byte gUnknown_03001508
_08F012E8: .4byte gUnknown_030007F8
_08F012EC: .4byte gUnknown_03001520
_08F012F0: .4byte gUnknown_08F591A0
_08F012F4: .4byte gUnknown_030007B4
_08F012F8: .4byte gUnknown_03000820
_08F012FC: .4byte gUnknown_030007E8
_08F01300: .4byte gUnknown_03001480
_08F01304:
	ldr r0, _08F01350 @ =gUnknown_03001520
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette
_08F0130E:
	bl sub_8F029E0
	ldr r4, _08F01354 @ =gUnknown_03000830
	ldr r3, _08F01358 @ =gUnknown_03000810
	ldr r2, _08F0135C @ =gUnknown_03000C68
	ldr r0, _08F01360 @ =gUnknown_030007D0
	movs r1, #0xff
	strb r1, [r0]
	strb r1, [r2]
	strb r1, [r3]
	strb r1, [r4]
	ldr r3, _08F01364 @ =gUnknown_0300080C
	ldr r2, _08F01368 @ =gUnknown_03003184
	ldr r4, _08F0136C @ =0x0000FFFF
	adds r0, r4, #0
	strh r0, [r2]
	strh r0, [r3]
	ldr r2, _08F01370 @ =gUnknown_0300079C
	ldr r0, _08F01374 @ =gUnknown_0300083C
	strb r1, [r0]
	strb r1, [r2]
	ldr r2, _08F01378 @ =gUnknown_03002440
	ldr r0, _08F0137C @ =gUnknown_0300082C
	movs r1, #0
	strb r1, [r0]
	strb r1, [r2]
	ldr r2, _08F01380 @ =gUnknown_030007E0
	ldr r0, _08F01384 @ =gUnknown_03000848
	strb r1, [r0]
	strb r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F01350: .4byte gUnknown_03001520
_08F01354: .4byte gUnknown_03000830
_08F01358: .4byte gUnknown_03000810
_08F0135C: .4byte gUnknown_03000C68
_08F01360: .4byte gUnknown_030007D0
_08F01364: .4byte gUnknown_0300080C
_08F01368: .4byte gUnknown_03003184
_08F0136C: .4byte 0x0000FFFF
_08F01370: .4byte gUnknown_0300079C
_08F01374: .4byte gUnknown_0300083C
_08F01378: .4byte gUnknown_03002440
_08F0137C: .4byte gUnknown_0300082C
_08F01380: .4byte gUnknown_030007E0
_08F01384: .4byte gUnknown_03000848

	thumb_func_start sub_8F01388
sub_8F01388: @ 0x08F01388
	push {r4, r5, lr}
	ldr r0, _08F01458 @ =gUnknown_03000788
	ldrh r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08F0145C @ =gUnknown_03001508
	ldrh r1, [r1]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_8F01220
	adds r4, r0, #0
	ldr r2, _08F01460 @ =gUnknown_03000810
	movs r5, #0x1f
	adds r0, r5, #0
	ldrb r3, [r4, #2]
	ands r0, r3
	ldrb r1, [r2]
	cmp r1, r0
	beq _08F013CE
	strb r0, [r2]
	ldr r1, _08F01464 @ =gUnknown_08F6449C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08F01468 @ =0x0600C000
	movs r2, #0x40
	bl BitUnpack
_08F013CE:
	ldr r0, _08F0146C @ =gUnknown_03000848
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F013F6
	ldr r2, _08F01470 @ =gUnknown_03000C68
	adds r0, r5, #0
	ldrb r3, [r4, #3]
	ands r0, r3
	ldrb r1, [r2]
	cmp r1, r0
	beq _08F013F6
	strb r0, [r2]
	ldr r1, _08F01464 @ =gUnknown_08F6449C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08F01474 @ =0x0600C800
	movs r2, #0x40
	bl BitUnpack
_08F013F6:
	ldr r0, _08F01478 @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F01450
	ldr r1, _08F0147C @ =gUnknown_030007F8
	movs r0, #0x1f
	ldrb r2, [r4]
	ands r0, r2
	ldrb r1, [r1]
	cmp r1, r0
	bne _08F01450
	ldr r1, _08F01480 @ =gUnknown_03000830
	movs r0, #0x3f
	ldrb r4, [r4, #1]
	ands r0, r4
	ldrb r3, [r1]
	cmp r3, r0
	beq _08F01450
	strb r0, [r1]
	ldr r0, _08F01484 @ =gUnknown_08F64574
	ldrb r1, [r1]
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r2, r0, #0
	cmp r2, #0
	beq _08F0144C
	ldr r1, _08F01488 @ =gUnknown_030007D0
	ldrb r3, [r1]
	cmp r3, r2
	beq _08F0144C
	strb r0, [r1]
	ldr r2, _08F0148C @ =gUnknown_08F6453C
	subs r0, #0x62
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _08F01490 @ =0x06011000
	movs r2, #0x80
	bl BitUnpack
_08F0144C:
	bl LoadMapObjects
_08F01450:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F01458: .4byte gUnknown_03000788
_08F0145C: .4byte gUnknown_03001508
_08F01460: .4byte gUnknown_03000810
_08F01464: .4byte gUnknown_08F6449C
_08F01468: .4byte 0x0600C000
_08F0146C: .4byte gUnknown_03000848
_08F01470: .4byte gUnknown_03000C68
_08F01474: .4byte 0x0600C800
_08F01478: .4byte gUnknown_0300317C
_08F0147C: .4byte gUnknown_030007F8
_08F01480: .4byte gUnknown_03000830
_08F01484: .4byte gUnknown_08F64574
_08F01488: .4byte gUnknown_030007D0
_08F0148C: .4byte gUnknown_08F6453C
_08F01490: .4byte 0x06001000+OAM_VRAM_OFFSET

	thumb_func_start DrawBg2Tilemap
DrawBg2Tilemap: @ 0x08F01494
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08F0151C @ =gUnknown_03000788
	ldrh r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #4]
	ldr r0, _08F01520 @ =gUnknown_03001508
	ldrh r6, [r0]
	ldr r0, _08F01524 @ =gUnknown_03000848
	strb r2, [r0]
	movs r1, #0
_08F014BE:
	ldr r0, _08F0151C @ =gUnknown_03000788
	ldrh r5, [r0]
	adds r4, r6, #0
	adds r4, #0x40
	str r4, [sp, #0xc]
	adds r1, #0x10
	str r1, [sp, #0x10]
	movs r0, #0xf0
	str r0, [sp]
	ldr r2, [sp, #4]
	lsls r1, r2, #1
	adds r0, r1, #0
	adds r0, #0x40
	ldr r3, _08F01528 @ =gBg2TilemapBuffer
	adds r0, r0, r3
	mov sb, r0
	adds r1, r1, r3
	mov r8, r1
_08F014E2:
	adds r0, r5, #0
	ldr r4, [sp, #8]
	eors r0, r4
	str r5, [sp, #8]
	movs r1, #0xff
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08F01588
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8F01220
	movs r1, #0x1f
	ldr r2, _08F0152C @ =gUnknown_030007F8
	ldrb r0, [r0]
	ands r1, r0
	ldrb r2, [r2]
	cmp r1, r2
	beq _08F01538
	ldr r0, _08F01524 @ =gUnknown_03000848
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08F01530 @ =gUnknown_030007B4
	ldrb r0, [r0]
	mov sl, r0
	ldr r2, _08F01534 @ =gUnknown_03000820
	b _08F01560
	.align 2, 0
_08F0151C: .4byte gUnknown_03000788
_08F01520: .4byte gUnknown_03001508
_08F01524: .4byte gUnknown_03000848
_08F01528: .4byte gBg2TilemapBuffer
_08F0152C: .4byte gUnknown_030007F8
_08F01530: .4byte gUnknown_030007B4
_08F01534: .4byte gUnknown_03000820
_08F01538:
	ldr r0, _08F01578 @ =gUnknown_03000C68
	ldrb r0, [r0]
	mov sl, r0
	lsrs r0, r6, #0xd
	lsls r0, r0, #2
	ldr r2, _08F0157C @ =gUnknown_08F6451C
	adds r0, r0, r2
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r2, r3, #0
	adds r1, r6, #0
	ands r1, r2
	ldr r2, [r0]
	adds r2, r2, r1
	adds r0, r5, #0
	movs r4, #0xff
	lsls r4, r4, #8
	ands r0, r4
	lsrs r0, r0, #8
	adds r2, r2, r0
_08F01560:
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F01584
	movs r0, #0x3f
	ands r0, r1
	ldr r1, _08F01580 @ =gGameInfo
	adds r0, r0, r1
	ldrb r0, [r0]
	mov ip, r0
	b _08F01588
	.align 2, 0
_08F01578: .4byte gUnknown_03000C68
_08F0157C: .4byte gUnknown_08F6451C
_08F01580: .4byte gGameInfo
_08F01584:
	ldrb r2, [r2]
	mov ip, r2
_08F01588:
	movs r0, #0x40
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08F0159A
	mov r2, sl
	b _08F0159E
_08F0159A:
	ldr r0, _08F015F8 @ =gUnknown_03000810
	ldrb r2, [r0]
_08F0159E:
	asrs r1, r2, #2
	lsls r1, r1, #2
	ldr r4, _08F015FC @ =gUnknown_08F6451C
	adds r1, r1, r4
	movs r0, #3
	ands r0, r2
	lsls r0, r0, #0xa
	ldr r1, [r1]
	adds r1, r1, r0
	mov r0, ip
	movs r4, #0x3f
	ands r0, r4
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r6, #0
	movs r4, #0xc0
	ands r0, r4
	lsrs r0, r0, #4
	adds r1, r1, r0
	adds r0, r5, #0
	ands r0, r4
	lsrs r0, r0, #6
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r4, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	movs r0, #0xc0
	ldrb r1, [r1]
	ands r0, r1
	lsls r7, r0, #6
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	ldr r1, _08F015FC @ =gUnknown_08F6451C
	cmp r0, #0
	beq _08F01604
	movs r0, #0x40
	eors r3, r0
	cmp r3, #0
	beq _08F01600
	mov r2, sl
	b _08F01604
	.align 2, 0
_08F015F8: .4byte gUnknown_03000810
_08F015FC: .4byte gUnknown_08F6451C
_08F01600:
	ldr r0, _08F016D0 @ =gUnknown_03000810
	ldrb r2, [r0]
_08F01604:
	asrs r0, r2, #2
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #3
	ands r2, r1
	lsls r2, r2, #9
	ldr r1, [r0]
	adds r1, r1, r2
	movs r0, #0x7f
	ldrb r4, [r4]
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r3, r4
	adds r2, r7, r2
	movs r0, #0x3f
	ldrb r3, [r1]
	ands r0, r3
	adds r0, r0, r2
	mov r4, r8
	strh r0, [r4]
	movs r0, #0x3f
	ldrb r3, [r1, #1]
	ands r0, r3
	adds r0, r0, r2
	strh r0, [r4, #2]
	movs r0, #0x3f
	ldrb r4, [r1, #2]
	ands r0, r4
	adds r0, r0, r2
	mov r3, sb
	strh r0, [r3]
	movs r0, #0x3f
	ldrb r1, [r1, #3]
	ands r0, r1
	adds r0, r0, r2
	strh r0, [r3, #2]
	movs r4, #4
	add sb, r4
	add r8, r4
	ldr r0, [sp, #4]
	adds r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [sp]
	subs r1, #0x10
	str r1, [sp]
	cmp r1, #0
	blt _08F01678
	b _08F014E2
_08F01678:
	ldr r2, [sp, #4]
	adds r2, #0x20
	str r2, [sp, #4]
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0x10]
#ifdef NDS_VERSION
	cmp r1, #0xfb
#else
	cmp r1, #0xab
#endif
	bgt _08F0168C
	b _08F014BE
_08F0168C:
	ldr r0, _08F016D4 @ =gUnknown_03000848
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F016C0
	ldr r2, _08F016D8 @ =gUnknown_03000C68
	ldr r0, _08F016DC @ =gUnknown_030007B4
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _08F016C0
	cmp r0, #0x1e
	beq _08F016C0
	ldr r0, _08F016E0 @ =gUnknown_030007F8
	ldrb r0, [r0]
	cmp r0, #8
	beq _08F016C0
	strb r1, [r2]
	ldr r1, _08F016E4 @ =gUnknown_08F6449C
	ldrb r2, [r2]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08F016E8 @ =0x0600C800
	movs r2, #0x40
	bl BitUnpack
_08F016C0:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F016D0: .4byte gUnknown_03000810
_08F016D4: .4byte gUnknown_03000848
_08F016D8: .4byte gUnknown_03000C68
_08F016DC: .4byte gUnknown_030007B4
_08F016E0: .4byte gUnknown_030007F8
_08F016E4: .4byte gUnknown_08F6449C
_08F016E8: .4byte 0x0600C800

	thumb_func_start sub_8F016EC
sub_8F016EC: @ 0x08F016EC
	ldr r2, _08F016F8 @ =gUnknown_03001D34
	ldr r1, _08F016FC @ =gUnknown_03003180
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	bx lr
	.align 2, 0
_08F016F8: .4byte gUnknown_03001D34
_08F016FC: .4byte gUnknown_03003180

	thumb_func_start sub_8F01700
sub_8F01700: @ 0x08F01700
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _08F018BC @ =gUnknown_08F525A0
	adds r0, r0, r1
	mov sl, r0
	ldrh r0, [r0]
	adds r4, r0, r1
	ldr r1, _08F018C0 @ =gUnknown_03001D34
	ldrb r6, [r1]
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	cmp r7, r5
	blt _08F01736
	b _08F0187A
_08F01736:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r6, r1, #0
	movs r0, #1
	mov sb, r0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
_08F01748:
	ldrb r1, [r4]
	ldr r3, [sp, #8]
	adds r2, r1, r3
	ldrb r7, [r4, #1]
	ldr r0, [sp, #0xc]
	adds r7, r7, r0
	mov r8, r7
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _08F01760
	b _08F01870
_08F01760:
	movs r0, #8
	rsbs r0, r0, #0
	cmp r2, r0
	bgt _08F0176A
	b _08F01870
_08F0176A:
	cmp r2, #0xef
	ble _08F01770
	b _08F01870
_08F01770:
	cmp r8, r0
	ble _08F01870
	cmp r7, #0x9f
	bgt _08F01870
	ldr r3, _08F018C4 @ =gSprites
	ldrb r7, [r6]
	lsls r1, r7, #3
	adds r1, r1, r3
	ldr r7, _08F018C8 @ =0x000001FF
	adds r0, r7, #0
	ands r2, r0
	ldr r0, _08F018CC @ =0xFFFFFE00
	ldrh r7, [r1, #2]
	ands r0, r7
	orrs r0, r2
	strh r0, [r1, #2]
	ldrb r1, [r6]
	lsls r0, r1, #3
	adds r0, r0, r3
	mov r2, r8
	strb r2, [r0]
	ldrb r7, [r6]
	lsls r2, r7, #3
	adds r2, r2, r3
	movs r1, #3
	ldrb r0, [r4, #2]
	ands r1, r0
	lsls r1, r1, #1
	mov r7, sl
	ldrb r0, [r7, #3]
	asrs r0, r1
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ldrb r7, [r2, #5]
	ands r0, r7
	orrs r0, r1
	strb r0, [r2, #5]
	ldrb r0, [r6]
	lsls r2, r0, #3
	adds r2, r2, r3
	ldrb r7, [r4, #2]
	lsrs r1, r7, #6
	mov r0, sb
	ands r1, r0
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x11
	rsbs r0, r0, #0
	ldrb r7, [r2, #3]
	ands r0, r7
	orrs r0, r1
	strb r0, [r2, #3]
	ldrb r0, [r6]
	lsls r2, r0, #3
	adds r2, r2, r3
	ldrb r7, [r4, #2]
	lsrs r1, r7, #7
	mov r0, sb
	ands r1, r0
	ands r1, r0
	lsls r1, r1, #5
	movs r0, #0x21
	rsbs r0, r0, #0
	ldrb r7, [r2, #3]
	ands r0, r7
	orrs r0, r1
	strb r0, [r2, #3]
	ldrb r0, [r6]
	lsls r1, r0, #3
	adds r1, r1, r3
	ldr r2, _08F018D0 @ =0x000003FF
	str r2, [sp, #0x10]
	ldr r7, _08F018D4 @ =0xFFFFFC00
	mov ip, r7
	mov r0, ip
	ldrh r2, [r1, #4]
	ands r0, r2
	ldrb r7, [r4, #3]
	orrs r0, r7
	strh r0, [r1, #4]
	movs r0, #0x10
	ldrb r1, [r4, #2]
	ands r0, r1
	cmp r0, #0
	beq _08F0183E
	ldrb r7, [r6]
	lsls r2, r7, #3
	adds r2, r2, r3
	ldrh r3, [r2, #4]
	lsls r1, r3, #0x16
	lsrs r1, r1, #0x16
	mov r0, sl
	ldrb r0, [r0, #2]
	adds r1, r0, r1
	ldr r7, [sp, #0x10]
	ands r1, r7
	mov r0, ip
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #4]
_08F0183E:
	ldrb r0, [r6]
	lsls r1, r0, #3
	ldr r2, _08F018C4 @ =gSprites
	adds r1, r1, r2
	movs r0, #0xd
	rsbs r0, r0, #0
	ldrb r3, [r1, #5]
	ands r0, r3
	strb r0, [r1, #5]
	ldrb r7, [r6]
	lsls r1, r7, #3
	adds r0, r2, #0
	adds r0, #4
	adds r1, r1, r0
	ldrh r3, [r1]
	ldr r2, _08F018D8 @ =gUnknown_030007B8
	ldrh r2, [r2]
	adds r0, r3, r2
	strh r0, [r1]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldr r3, [sp, #4]
	adds r3, #1
	str r3, [sp, #4]
_08F01870:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	beq _08F0187A
	b _08F01748
_08F0187A:
	ldr r6, [sp, #4]
	cmp r6, #0
	beq _08F0190A
	movs r7, #8
	add r8, r7
	movs r5, #0
	ldr r3, _08F018DC @ =gUnknown_03003180
	adds r4, r3, #0
	ldr r1, _08F018E0 @ =gUnknown_03002240
	ldrb r0, [r3]
	cmp r5, r0
	bge _08F018F0
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	adds r2, r1, #0
	adds r6, r1, #0
_08F0189C:
	ldrh r7, [r2]
	cmp r0, r7
	bls _08F018E4
	ldrb r3, [r3]
	subs r3, #1
	cmp r3, r5
	blt _08F018F0
	lsls r0, r3, #2
	adds r2, r0, r6
_08F018AE:
	ldr r0, [r2]
	str r0, [r2, #4]
	subs r2, #4
	subs r3, #1
	cmp r3, r5
	bge _08F018AE
	b _08F018F0
	.align 2, 0
_08F018BC: .4byte gUnknown_08F525A0
_08F018C0: .4byte gUnknown_03001D34
_08F018C4: .4byte gSprites
_08F018C8: .4byte 0x000001FF
_08F018CC: .4byte 0xFFFFFE00
_08F018D0: .4byte 0x000003FF
_08F018D4: .4byte 0xFFFFFC00
_08F018D8: .4byte gUnknown_030007B8
_08F018DC: .4byte gUnknown_03003180
_08F018E0: .4byte gUnknown_03002240
_08F018E4:
	adds r2, #4
	adds r5, #1
	adds r3, r4, #0
	ldrb r7, [r4]
	cmp r5, r7
	blt _08F0189C
_08F018F0:
	lsls r0, r5, #2
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0]
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0, #2]
	mov r3, sp
	ldrb r3, [r3]
	strb r3, [r0, #3]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_08F0190A:
	ldr r0, [sp, #4]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8F0191C
sub_8F0191C: @ 0x08F0191C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	movs r2, #0
	ldr r0, _08F019A4 @ =gUnknown_03003180
	ldrb r0, [r0]
	cmp r2, r0
	bge _08F01972
	ldr r1, _08F019A8 @ =gUnknown_03002240
	mov sl, r1
	mov ip, r0
	ldr r4, _08F019AC @ =gUnknown_03002450
	mov sb, r4
	ldr r0, _08F019B0 @ =gSprites
	mov r8, r0
_08F01940:
	movs r3, #0
	lsls r0, r2, #2
	add r0, sl
	ldrb r1, [r0, #3]
	adds r6, r2, #1
	ldrb r2, [r0, #2]
	cmp r3, r2
	bge _08F0196C
	adds r5, r0, #0
	lsls r0, r1, #3
	mov r1, r8
	adds r4, r0, r1
	lsls r0, r7, #3
	mov r1, sb
	adds r2, r0, r1
_08F0195E:
	ldm r4!, {r0, r1}
	stm r2!, {r0, r1}
	adds r7, #1
	adds r3, #1
	ldrb r0, [r5, #2]
	cmp r3, r0
	blt _08F0195E
_08F0196C:
	adds r2, r6, #0
	cmp r2, ip
	blt _08F01940
_08F01972:
	ldr r1, _08F019B4 @ =gUnknown_03001D34
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08F01994
	ldr r3, _08F019AC @ =gUnknown_03002450
#ifdef NDS_VERSION
	movs r2, #0xc0
#else
	movs r2, #0xa0
#endif
_08F01980:
	ldrb r4, [r1]
	lsls r0, r4, #3
	adds r0, r0, r3
	strb r2, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08F01980
_08F01994:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F019A4: .4byte gUnknown_03003180
_08F019A8: .4byte gUnknown_03002240
_08F019AC: .4byte gUnknown_03002450
_08F019B0: .4byte gSprites
_08F019B4: .4byte gUnknown_03001D34

	thumb_func_start sub_8F019B8
sub_8F019B8: @ 0x08F019B8
	push {lr}
	bl sub_8F016EC
	bl sub_8F0191C
	ldr r1, _08F019D8 @ =0x040000D4
	ldr r0, _08F019DC @ =gUnknown_03002450
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F019E0 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08F019D8: .4byte 0x040000D4
_08F019DC: .4byte gUnknown_03002450
_08F019E0: .4byte 0x84000100

	thumb_func_start sub_8F019E4
sub_8F019E4: @ 0x08F019E4
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
	ldr r2, _08F01C54 @ =gUnknown_03002850
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
_08F01C54: .4byte gUnknown_03002850
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

	thumb_func_start sub_8F01CBC
sub_8F01CBC: @ 0x08F01CBC
	push {r4, r5, r6, lr}
	lsls r5, r0, #0x10
	lsrs r0, r5, #0x10
	lsls r6, r1, #0x10
	lsrs r1, r6, #0x10
	movs r4, #0
	bl sub_8F02020
	adds r1, r0, #0
	ldr r0, _08F01CF0 @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F01CF4
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08F01CE2
	b _08F02016
_08F01CE2:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x40
	bne _08F01CEC
	b _08F02016
_08F01CEC:
	b _08F02012
	.align 2, 0
_08F01CF0: .4byte gUnknown_0300317C
_08F01CF4:
	lsrs r2, r5, #0x12
	movs r0, #0xf
	ands r2, r0
	lsrs r3, r6, #0x12
	ands r3, r0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F01D24
	cmp r1, #0x82
	bne _08F01D16
	adds r0, r2, r3
	subs r0, #4
	cmp r0, #0x12
	bhi _08F01D14
	b _08F02016
_08F01D14:
	b _08F02012
_08F01D16:
	cmp r1, #0xad
	bne _08F01D24
	adds r0, r2, r3
	cmp r0, #0x13
	ble _08F01D22
	b _08F02016
_08F01D22:
	b _08F02012
_08F01D24:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x3f
	bls _08F01D2E
	b _08F02016
_08F01D2E:
	lsls r0, r0, #2
	ldr r1, _08F01D38 @ =_08F01D3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F01D38: .4byte _08F01D3C
_08F01D3C: @ jump table
	.4byte _08F02016 @ case 0
	.4byte _08F01E3C @ case 1
	.4byte _08F01E48 @ case 2
	.4byte _08F01E40 @ case 3
	.4byte _08F01E64 @ case 4
	.4byte _08F01E52 @ case 5
	.4byte _08F01E5C @ case 6
	.4byte _08F01E6E @ case 7
	.4byte _08F01EAE @ case 8
	.4byte _08F01E7C @ case 9
	.4byte _08F01E80 @ case 10
	.4byte _08F01E8C @ case 11
	.4byte _08F01EA6 @ case 12
	.4byte _08F01E9E @ case 13
	.4byte _08F01EB8 @ case 14
	.4byte _08F01EC6 @ case 15
	.4byte _08F01EE6 @ case 16
	.4byte _08F01EEE @ case 17
	.4byte _08F01F06 @ case 18
	.4byte _08F01F0E @ case 19
	.4byte _08F01F1E @ case 20
	.4byte _08F01F2C @ case 21
	.4byte _08F01F36 @ case 22
	.4byte _08F01F16 @ case 23
	.4byte _08F01F3A @ case 24
	.4byte _08F01F40 @ case 25
	.4byte _08F01F4E @ case 26
	.4byte _08F01F46 @ case 27
	.4byte _08F01F56 @ case 28
	.4byte _08F01F5C @ case 29
	.4byte _08F01F64 @ case 30
	.4byte _08F02012 @ case 31
	.4byte _08F01F68 @ case 32
	.4byte _08F01F70 @ case 33
	.4byte _08F01F78 @ case 34
	.4byte _08F01F7E @ case 35
	.4byte _08F01F84 @ case 36
	.4byte _08F02012 @ case 37
	.4byte _08F01F8C @ case 38
	.4byte _08F01F92 @ case 39
	.4byte _08F01F9A @ case 40
	.4byte _08F01FA6 @ case 41
	.4byte _08F02012 @ case 42
	.4byte _08F01FAC @ case 43
	.4byte _08F01FA0 @ case 44
	.4byte _08F01FB4 @ case 45
	.4byte _08F01FBC @ case 46
	.4byte _08F02012 @ case 47
	.4byte _08F01FC4 @ case 48
	.4byte _08F01FC8 @ case 49
	.4byte _08F01FCE @ case 50
	.4byte _08F01E74 @ case 51
	.4byte _08F01FD4 @ case 52
	.4byte _08F01FDA @ case 53
	.4byte _08F0200E @ case 54
	.4byte _08F01FE4 @ case 55
	.4byte _08F01FEA @ case 56
	.4byte _08F02004 @ case 57
	.4byte _08F01FF0 @ case 58
	.4byte _08F01FFA @ case 59
	.4byte _08F01EBE @ case 60
	.4byte _08F02000 @ case 61
	.4byte _08F0200A @ case 62
	.4byte _08F02012 @ case 63
_08F01E3C:
	subs r0, r2, r3
	b _08F01E66
_08F01E40:
	subs r0, r2, r3
	cmp r0, #7
	ble _08F01E48
	b _08F02012
_08F01E48:
	adds r0, r2, r3
	cmp r0, #0x16
	bgt _08F01E50
	b _08F02016
_08F01E50:
	b _08F02012
_08F01E52:
	subs r0, r2, r3
	cmp r0, #7
	ble _08F01E5A
	b _08F02012
_08F01E5A:
	b _08F01E64
_08F01E5C:
	adds r0, r2, r3
	cmp r0, #0x16
	ble _08F01E64
	b _08F02012
_08F01E64:
	subs r0, r3, r2
_08F01E66:
	cmp r0, #7
	bgt _08F01E6C
	b _08F02016
_08F01E6C:
	b _08F02012
_08F01E6E:
	cmp r3, #0xb
	ble _08F01E74
	b _08F02012
_08F01E74:
	cmp r2, #7
	bgt _08F01E7A
	b _08F02016
_08F01E7A:
	b _08F02012
_08F01E7C:
	subs r0, r2, r3
	b _08F01EA8
_08F01E80:
	adds r0, r2, r3
	subs r0, #8
	cmp r0, #0xe
	bhi _08F01E8A
	b _08F02016
_08F01E8A:
	b _08F02012
_08F01E8C:
	subs r0, r2, r3
	cmp r0, #7
	ble _08F01E94
	b _08F02012
_08F01E94:
	adds r0, r2, r3
	cmp r0, #0x16
	ble _08F01E9C
	b _08F02012
_08F01E9C:
	b _08F01EB0
_08F01E9E:
	subs r0, r2, r3
	cmp r0, #7
	ble _08F01EA6
	b _08F02012
_08F01EA6:
	subs r0, r3, r2
_08F01EA8:
	cmp r0, #7
	ble _08F01EAE
	b _08F02012
_08F01EAE:
	adds r0, r2, r3
_08F01EB0:
	cmp r0, #7
	ble _08F01EB6
	b _08F02016
_08F01EB6:
	b _08F02012
_08F01EB8:
	cmp r3, #0xb
	ble _08F01EBE
	b _08F02012
_08F01EBE:
	cmp r2, #7
	ble _08F01EC4
	b _08F02016
_08F01EC4:
	b _08F02012
_08F01EC6:
	subs r0, r2, r3
	cmp r0, #7
	ble _08F01ECE
	b _08F02012
_08F01ECE:
	adds r1, r2, r3
	cmp r1, #0x16
	ble _08F01ED6
	b _08F02012
_08F01ED6:
	subs r0, r3, r2
	cmp r0, #7
	ble _08F01EDE
	b _08F02012
_08F01EDE:
	cmp r1, #7
	ble _08F01EE4
	b _08F02016
_08F01EE4:
	b _08F02012
_08F01EE6:
	subs r0, r2, r3
	cmp r0, #8
	ble _08F01EEE
	b _08F02016
_08F01EEE:
	adds r1, r2, r3
	cmp r1, #0x17
	ble _08F01EF6
	b _08F02016
_08F01EF6:
	subs r0, r3, r2
	cmp r0, #8
	ble _08F01EFE
	b _08F02016
_08F01EFE:
	cmp r1, #6
	bgt _08F01F04
	b _08F02016
_08F01F04:
	b _08F02012
_08F01F06:
	subs r0, r2, r3
	cmp r0, #8
	ble _08F01F0E
	b _08F02016
_08F01F0E:
	subs r0, r3, r2
_08F01F10:
	cmp r0, #8
	ble _08F01F16
	b _08F02016
_08F01F16:
	adds r0, r2, r3
_08F01F18:
	cmp r0, #6
	ble _08F02016
	b _08F02012
_08F01F1E:
	subs r0, r2, r3
	cmp r0, #8
	bgt _08F02016
	adds r0, r2, r3
	cmp r0, #0x17
	bgt _08F02016
	b _08F01F18
_08F01F2C:
	adds r0, r2, r3
	subs r0, #7
	cmp r0, #0x10
	bhi _08F02016
	b _08F02012
_08F01F36:
	subs r0, r2, r3
	b _08F01F10
_08F01F3A:
	subs r0, r2, r3
	cmp r0, #8
	bgt _08F02016
_08F01F40:
	adds r0, r2, r3
	cmp r0, #0x17
	bgt _08F02016
_08F01F46:
	subs r0, r3, r2
_08F01F48:
	cmp r0, #8
	bgt _08F02016
	b _08F02012
_08F01F4E:
	subs r0, r2, r3
	cmp r0, #8
	bgt _08F02016
	b _08F01F46
_08F01F56:
	subs r0, r2, r3
	cmp r0, #8
	bgt _08F02016
_08F01F5C:
	adds r0, r2, r3
	cmp r0, #0x17
	bgt _08F02016
	b _08F02012
_08F01F64:
	subs r0, r2, r3
	b _08F01F48
_08F01F68:
	subs r0, r2, #4
_08F01F6A:
	cmp r0, #7
	bhi _08F02016
	b _08F02012
_08F01F70:
	subs r0, r2, r3
	cmp r0, #7
	bgt _08F02012
	b _08F01F7E
_08F01F78:
	adds r0, r2, r3
	cmp r0, #0x16
	bgt _08F02012
_08F01F7E:
	cmp r2, #0xb
	ble _08F02016
	b _08F02012
_08F01F84:
	subs r0, r3, r2
	cmp r0, #7
	bgt _08F02012
	b _08F01FA0
_08F01F8C:
	cmp r3, #0xb
	ble _08F02016
	b _08F02012
_08F01F92:
	adds r0, r2, r3
	cmp r0, #0xe
	ble _08F02016
	b _08F02012
_08F01F9A:
	adds r0, r2, r3
	cmp r0, #7
	ble _08F02012
_08F01FA0:
	cmp r2, #3
	bgt _08F02016
	b _08F02012
_08F01FA6:
	cmp r3, #3
	bgt _08F02016
	b _08F02012
_08F01FAC:
	subs r0, r2, r3
	cmp r0, #0
	blt _08F02016
	b _08F02012
_08F01FB4:
	adds r0, r2, r3
	cmp r0, #0xf
	bgt _08F02016
	b _08F02012
_08F01FBC:
	subs r0, r2, r3
	cmp r0, #0
	bgt _08F02016
	b _08F02012
_08F01FC4:
	subs r0, r3, #4
	b _08F01F6A
_08F01FC8:
	cmp r2, #7
	ble _08F02016
	b _08F02004
_08F01FCE:
	cmp r2, #7
	ble _08F02016
	b _08F0200E
_08F01FD4:
	cmp r2, #7
	bgt _08F02016
	b _08F0200E
_08F01FDA:
	cmp r2, #7
	ble _08F0200E
	cmp r3, #7
	ble _08F02012
	b _08F02016
_08F01FE4:
	cmp r2, #7
	bgt _08F02012
	b _08F0200E
_08F01FEA:
	cmp r2, #7
	bgt _08F02016
	b _08F02004
_08F01FF0:
	cmp r2, #7
	ble _08F02004
	cmp r3, #7
	bgt _08F02012
	b _08F02016
_08F01FFA:
	cmp r2, #7
	bgt _08F02012
	b _08F02004
_08F02000:
	cmp r2, #7
	ble _08F02012
_08F02004:
	cmp r3, #7
	bgt _08F02016
	b _08F02012
_08F0200A:
	cmp r2, #7
	ble _08F02012
_08F0200E:
	cmp r3, #7
	ble _08F02016
_08F02012:
	movs r4, #1
	rsbs r4, r4, #0
_08F02016:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F02020
sub_8F02020: @ 0x08F02020
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r3, _08F02088 @ =gUnknown_0300080C
	adds r1, r6, #0
	ldrh r0, [r3]
	eors r1, r0
	ldr r2, _08F0208C @ =gUnknown_03003184
	adds r0, r5, #0
	ldrh r4, [r2]
	eors r0, r4
	orrs r1, r0
	ldr r7, _08F02090 @ =0x0000FFC0
	adds r0, r7, #0
	ands r1, r0
	ldr r0, _08F02094 @ =gUnknown_0300079C
	ldr r4, _08F02098 @ =gUnknown_030007F8
	mov r8, r4
	ldrb r4, [r0]
	mov r7, r8
	ldrb r7, [r7]
	eors r4, r7
	movs r0, #0x1f
	ands r4, r0
	orrs r4, r1
	strh r6, [r3]
	strh r5, [r2]
	cmp r4, #0
	bne _08F02064
	b _08F02194
_08F02064:
	ldr r0, _08F0209C @ =0x0000FF3F
	ands r4, r0
	cmp r4, #0
	beq _08F020F8
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_8F01220
	movs r1, #0x1f
	ldrb r0, [r0]
	ands r1, r0
	mov r0, r8
	ldrb r0, [r0]
	cmp r1, r0
	beq _08F020A8
	ldr r1, _08F020A0 @ =gUnknown_03000820
	ldr r2, _08F020A4 @ =gUnknown_08F6451C
	b _08F020BE
	.align 2, 0
_08F02088: .4byte gUnknown_0300080C
_08F0208C: .4byte gUnknown_03003184
_08F02090: .4byte 0x0000FFC0
_08F02094: .4byte gUnknown_0300079C
_08F02098: .4byte gUnknown_030007F8
_08F0209C: .4byte 0x0000FF3F
_08F020A0: .4byte gUnknown_03000820
_08F020A4: .4byte gUnknown_08F6451C
_08F020A8:
	ldr r2, _08F020D4 @ =gUnknown_08F6451C
	lsrs r1, r5, #0xd
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r5
	ldr r1, [r1]
	adds r1, r1, r0
	lsrs r0, r6, #8
	adds r1, r1, r0
_08F020BE:
	ldrb r3, [r1]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08F020DC
	movs r0, #0x3f
	ands r0, r3
	ldr r1, _08F020D8 @ =gGameInfo
	adds r0, r0, r1
	ldrb r3, [r0]
	b _08F020DE
	.align 2, 0
_08F020D4: .4byte gUnknown_08F6451C
_08F020D8: .4byte gGameInfo
_08F020DC:
	ldrb r3, [r1]
_08F020DE:
	ldr r1, _08F020EC @ =gUnknown_0300079C
	ldr r0, _08F020F0 @ =gUnknown_030007F8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08F020F4 @ =gUnknown_0300083C
	strb r3, [r0]
	b _08F020FE
	.align 2, 0
_08F020EC: .4byte gUnknown_0300079C
_08F020F0: .4byte gUnknown_030007F8
_08F020F4: .4byte gUnknown_0300083C
_08F020F8:
	ldr r0, _08F02110 @ =gUnknown_0300083C
	ldrb r3, [r0]
	ldr r2, _08F02114 @ =gUnknown_08F6451C
_08F020FE:
	movs r0, #0x40
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _08F0211C
	ldr r0, _08F02118 @ =gUnknown_03000C68
	b _08F0211E
	.align 2, 0
_08F02110: .4byte gUnknown_0300083C
_08F02114: .4byte gUnknown_08F6451C
_08F02118: .4byte gUnknown_03000C68
_08F0211C:
	ldr r0, _08F02164 @ =gUnknown_03000810
_08F0211E:
	ldrb r4, [r0]
	asrs r1, r4, #2
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r0, #3
	ands r0, r4
	lsls r0, r0, #0xa
	ldr r1, [r1]
	adds r1, r1, r0
	movs r0, #0x3f
	ands r3, r0
	lsls r0, r3, #4
	adds r1, r1, r0
	movs r2, #0xc0
	adds r0, r5, #0
	ands r0, r2
	lsrs r0, r0, #4
	adds r1, r1, r0
	adds r0, r6, #0
	ands r0, r2
	lsrs r0, r0, #6
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #6
	adds r3, r1, r2
	movs r0, #0x80
	ldrb r1, [r3]
	ands r0, r1
	cmp r0, #0
	beq _08F02170
	cmp r7, #0x40
	beq _08F0216C
	ldr r0, _08F02168 @ =gUnknown_03000C68
	b _08F0216E
	.align 2, 0
_08F02164: .4byte gUnknown_03000810
_08F02168: .4byte gUnknown_03000C68
_08F0216C:
	ldr r0, _08F02188 @ =gUnknown_03000810
_08F0216E:
	ldrb r4, [r0]
_08F02170:
	ldr r2, _08F0218C @ =gUnknown_08F595A0
	lsls r1, r4, #7
	movs r0, #0x7f
	ldrb r3, [r3]
	ands r0, r3
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r0, _08F02190 @ =gUnknown_030034A0
	strb r1, [r0]
	b _08F02198
	.align 2, 0
_08F02188: .4byte gUnknown_03000810
_08F0218C: .4byte gUnknown_08F595A0
_08F02190: .4byte gUnknown_030034A0
_08F02194:
	ldr r0, _08F021A4 @ =gUnknown_030034A0
	ldrb r1, [r0]
_08F02198:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F021A4: .4byte gUnknown_030034A0

	thumb_func_start Random
Random: @ 0x08F021A8
	ldr r2, _08F021B8 @ =gUnknown_030007FC
	ldr r1, [r2]
	ldr r0, _08F021BC @ =0x0001C97D
	muls r0, r1, r0
	ldr r1, _08F021C0 @ =0x0021F6ED
	adds r0, r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08F021B8: .4byte gUnknown_030007FC
_08F021BC: .4byte 0x0001C97D
_08F021C0: .4byte 0x0021F6ED

	thumb_func_start sub_8F021C4
sub_8F021C4: @ 0x08F021C4
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl Random
	asrs r0, r0, #0x10
	muls r0, r4, r0
	ldr r1, _08F021F0 @ =0x0001FFFC
	bl __divsi3
	adds r0, r0, r4
	ldr r1, _08F021F4 @ =0x0000FFFF
	cmp r0, r1
	ble _08F021E4
	adds r0, r1, #0
_08F021E4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08F021F0: .4byte 0x0001FFFC
_08F021F4: .4byte 0x0000FFFF

	thumb_func_start sub_8F021F8
sub_8F021F8: @ 0x08F021F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	movs r0, #0
	str r0, [sp]
	ldr r3, _08F022D0 @ =gUnknown_03000850
	str r0, [r3]
	mov sb, r0
	ldr r1, _08F022D4 @ =gUnknown_03000784
	ldr r0, _08F022D8 @ =gUnknown_03001D40
	str r0, [r1]
	ldrb r2, [r0]
	mov ip, r1
	cmp r2, #0
	bne _08F0222A
	b _08F02458
_08F0222A:
	mov r1, ip
	ldr r4, [r1]
	movs r6, #0x80
	adds r0, r6, #0
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	beq _08F0223C
	b _08F0243C
_08F0223C:
	ldr r1, _08F022DC @ =gUnknown_03000788
	movs r0, #0xf0
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08F022E0 @ =gUnknown_03001508
	movs r0, #0xb0
	lsls r0, r0, #1
	add r0, sl
	ldrh r1, [r1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r5, [r4, #0x18]
	adds r0, r6, #0
	ands r0, r5
	cmp r0, #0
	beq _08F0226E
	adds r0, r1, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08F0226E:
	movs r7, #0x40
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08F02280
	adds r0, r1, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08F02280:
	ldrb r3, [r4, #0x14]
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	beq _08F0237C
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08F022E4
	adds r0, r2, #0
	subs r0, #8
	ldrh r3, [r4, #4]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #0
	subs r0, #8
	ldrh r4, [r4, #6]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r2, #0x2f
	bls _08F022B0
	b _08F0243C
_08F022B0:
	cmp r1, #0x2f
	bls _08F022B6
	b _08F0243C
_08F022B6:
	mov r4, r8
	subs r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r6, sl
	subs r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r2, #0x2f
	bhi _08F02358
	cmp r1, #0x2f
	bls _08F0235C
	b _08F02358
	.align 2, 0
_08F022D0: .4byte gUnknown_03000850
_08F022D4: .4byte gUnknown_03000784
_08F022D8: .4byte gUnknown_03001D40
_08F022DC: .4byte gUnknown_03000788
_08F022E0: .4byte gUnknown_03001508
_08F022E4:
	adds r0, r2, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r3, [r4, #4]
	subs r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #0xf0
	lsls r6, r6, #0xe
	adds r0, r0, r6
	lsrs r3, r0, #0x10
	ldrh r4, [r4, #6]
	subs r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r4, #0xb0
	lsls r4, r4, #0xe
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r2, #0x3f
	bls _08F0231E
	cmp r3, #0x3f
	bls _08F0231E
	b _08F0243C
_08F0231E:
	cmp r1, #0x2f
	bls _08F02328
	cmp r0, #0x2f
	bls _08F02328
	b _08F0243C
_08F02328:
	mov r6, r8
	adds r0, r2, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r3, #0xf0
	lsls r3, r3, #0xe
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	mov r4, sl
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r6, #0xb0
	lsls r6, r6, #0xe
	adds r0, r0, r6
	lsrs r0, r0, #0x10
	cmp r2, #0x3f
	bls _08F02350
	cmp r3, #0x3f
	bhi _08F02358
_08F02350:
	cmp r1, #0x2f
	bls _08F0235C
	cmp r0, #0x2f
	bls _08F0235C
_08F02358:
	movs r0, #1
	str r0, [sp]
_08F0235C:
	ldr r1, _08F02378 @ =gUnknown_03000850
	ldr r0, [r1]
	cmp r0, #0
	bne _08F02458
	mov r2, ip
	ldr r1, [r2]
	movs r0, #0x40
	ldrb r3, [r1, #0x14]
	ands r0, r3
	cmp r0, #0
	beq _08F02458
	ldr r4, _08F02378 @ =gUnknown_03000850
	str r1, [r4]
	b _08F02458
	.align 2, 0
_08F02378: .4byte gUnknown_03000850
_08F0237C:
	ldr r0, _08F023C4 @ =gUnknown_030007A0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08F0243C
	ldr r6, _08F023C8 @ =gUnknown_03000850
	ldr r0, [r6]
	cmp r0, #0
	bne _08F0243C
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _08F0243C
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08F023CC
	adds r0, r2, #0
	subs r0, #8
	ldrh r2, [r4, #4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #0
	subs r0, #8
	ldrh r4, [r4, #6]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r2, #0x2f
	bhi _08F02430
	cmp r1, #0x2f
	bls _08F0240C
	b _08F02430
	.align 2, 0
_08F023C4: .4byte gUnknown_030007A0
_08F023C8: .4byte gUnknown_03000850
_08F023CC:
	adds r0, r2, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r3, [r4, #4]
	subs r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #0xf0
	lsls r6, r6, #0xe
	adds r0, r0, r6
	lsrs r3, r0, #0x10
	ldrh r4, [r4, #6]
	subs r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r4, #0xb0
	lsls r4, r4, #0xe
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r2, #0x3f
	bls _08F02404
	cmp r3, #0x3f
	bhi _08F02430
_08F02404:
	cmp r1, #0x2f
	bls _08F0240C
	cmp r0, #0x2f
	bhi _08F02430
_08F0240C:
	mov r6, ip
	ldr r2, [r6]
	ldrb r1, [r2, #0x18]
	movs r4, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08F0243C
	adds r0, r4, #0
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldr r0, [r6]
	ldr r1, _08F0242C @ =gUnknown_03000850
	str r0, [r1]
	b _08F0243C
	.align 2, 0
_08F0242C: .4byte gUnknown_03000850
_08F02430:
	mov r2, ip
	ldr r1, [r2]
	movs r0, #0xfe
	ldrb r3, [r1, #0x18]
	ands r0, r3
	strb r0, [r1, #0x18]
_08F0243C:
	movs r4, #1
	add sb, r4
	mov r6, sb
	cmp r6, #0x27
	bgt _08F02458
	lsls r0, r6, #5
	ldr r1, _08F0246C @ =gUnknown_03001D40
	adds r0, r0, r1
	mov r2, ip
	str r0, [r2]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F02458
	b _08F0222A
_08F02458:
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0246C: .4byte gUnknown_03001D40

	thumb_func_start sub_8F02470
sub_8F02470: @ 0x08F02470
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r4
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r8, r5
	ldr r0, _08F02518 @ =gUnknown_03000818
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F02514
	ldr r0, _08F0251C @ =gUnknown_03000784
	ldr r0, [r0]
	ldr r2, [r0, #8]
	movs r3, #0xc0
	adds r0, r3, #0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r6, [r2, #1]
	lsls r1, r6, #8
	orrs r0, r1
	ldrb r1, [r2, #2]
	ands r3, r1
	ldrb r2, [r2, #3]
	lsls r1, r2, #8
	orrs r3, r1
	subs r0, r4, r0
	ldr r6, _08F02520 @ =0xFFFFFE20
	adds r2, r6, #0
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08F02524 @ =0x0000FC40
	cmp r0, r1
	bls _08F02514
	subs r0, r5, r3
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08F02514
	adds r0, r5, #0
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F02514
	adds r0, r4, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x2c
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F02514
	adds r0, r4, #0
	adds r0, #0x3c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F02514
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F02528
_08F02514:
	movs r0, #1
	b _08F02530
	.align 2, 0
_08F02518: .4byte gUnknown_03000818
_08F0251C: .4byte gUnknown_03000784
_08F02520: .4byte 0xFFFFFE20
_08F02524: .4byte 0x0000FC40
_08F02528:
	mov r0, sb
	mov r1, r8
	bl sub_8F0253C
_08F02530:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8F0253C
sub_8F0253C: @ 0x08F0253C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _08F02628 @ =gUnknown_03000788
	ldrh r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08F0262C @ =gUnknown_03001508
	ldrh r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r4, ip
	subs r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #0xf0
	lsls r6, r6, #0xe
	adds r0, r0, r6
	lsrs r2, r0, #0x10
	subs r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r4, #0xb0
	lsls r4, r4, #0xe
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r3, #0x3f
	bls _08F02592
	cmp r2, #0x3f
	bhi _08F0259A
_08F02592:
	cmp r1, #0x2f
	bls _08F02622
	cmp r0, #0x2f
	bls _08F02622
_08F0259A:
	ldr r0, _08F02630 @ =gUnknown_0300081C
	ldrb r4, [r0]
	movs r5, #1
	ldr r6, _08F02634 @ =gUnknown_03003198
	mov sl, r6
	ldr r0, _08F02638 @ =gUnknown_03002850
	mov r8, r0
	movs r1, #2
	add r1, r8
	mov sb, r1
_08F025AE:
	mov r2, sl
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F02640
	adds r0, r4, #0
	subs r0, #0x10
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F025CC
	adds r0, r4, #0
	adds r0, #0x44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08F025CC:
	lsls r2, r4, #2
	mov r6, r8
	adds r1, r2, r6
	ldr r0, _08F0263C @ =0x0000FFFC
	ldrh r1, [r1]
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r2, sb
	ldr r0, _08F0263C @ =0x0000FFFC
	ldrh r2, [r2]
	ands r0, r2
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r6, ip
	subs r0, r6, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	subs r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r6, #0xb0
	lsls r6, r6, #0xe
	adds r0, r0, r6
	lsrs r0, r0, #0x10
	cmp r3, #0x3f
	bls _08F0261A
	cmp r2, #0x3f
	bhi _08F02640
_08F0261A:
	cmp r1, #0x2f
	bls _08F02622
	cmp r0, #0x2f
	bhi _08F02640
_08F02622:
	movs r0, #1
	b _08F026CC
	.align 2, 0
_08F02628: .4byte gUnknown_03000788
_08F0262C: .4byte gUnknown_03001508
_08F02630: .4byte gUnknown_0300081C
_08F02634: .4byte gUnknown_03003198
_08F02638: .4byte gUnknown_03002850
_08F0263C: .4byte 0x0000FFFC
_08F02640:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F025AE
	movs r5, #0
	ldr r4, _08F026A8 @ =gUnknown_03001D40
	ldrb r1, [r4]
	mov r8, r4
	cmp r1, #0
	beq _08F026CA
	ldr r0, _08F026AC @ =gUnknown_03000784
	ldr r6, [r0]
_08F0265A:
	cmp r4, r6
	beq _08F026B4
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08F026B4
	adds r0, r2, #0
	ldrb r1, [r4, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08F026B4
	ldrh r2, [r4, #4]
	mov r1, ip
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	ldrh r4, [r4, #6]
	subs r0, r4, r7
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r4, #0xb0
	lsls r4, r4, #0xe
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r3, #0x3f
	bls _08F0269C
	cmp r2, #0x3f
	bhi _08F026B4
_08F0269C:
	cmp r1, #0x2f
	bls _08F026A4
	cmp r0, #0x2f
	bhi _08F026B4
_08F026A4:
	ldr r0, _08F026B0 @ =0x00000309
	b _08F026CC
	.align 2, 0
_08F026A8: .4byte gUnknown_03001D40
_08F026AC: .4byte gUnknown_03000784
_08F026B0: .4byte 0x00000309
_08F026B4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bhi _08F026CA
	lsls r0, r5, #5
	mov r1, r8
	adds r4, r0, r1
	ldrb r1, [r4]
	cmp r1, #0
	bne _08F0265A
_08F026CA:
	movs r0, #0
_08F026CC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F026DC
sub_8F026DC: @ 0x08F026DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r5, #0
	ldr r4, _08F0274C @ =gUnknown_03001D40
	ldrb r1, [r4]
	mov r8, r4
	cmp r1, #0
	beq _08F0276E
	ldr r0, _08F02750 @ =gUnknown_03000784
	ldr r6, [r0]
_08F026FC:
	cmp r4, r6
	beq _08F02758
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08F02758
	adds r0, r2, #0
	ldrb r1, [r4, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08F02758
	ldrh r2, [r4, #4]
	mov r1, ip
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	ldrh r4, [r4, #6]
	subs r0, r4, r7
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r4, #0xb0
	lsls r4, r4, #0xe
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bls _08F0273E
	cmp r3, #0x3f
	bhi _08F02758
_08F0273E:
	cmp r2, #0x2f
	bls _08F02746
	cmp r0, #0x2f
	bhi _08F02758
_08F02746:
	ldr r0, _08F02754 @ =0x00000309
	b _08F02770
	.align 2, 0
_08F0274C: .4byte gUnknown_03001D40
_08F02750: .4byte gUnknown_03000784
_08F02754: .4byte 0x00000309
_08F02758:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bhi _08F0276E
	lsls r0, r5, #5
	mov r1, r8
	adds r4, r0, r1
	ldrb r1, [r4]
	cmp r1, #0
	bne _08F026FC
_08F0276E:
	movs r0, #0
_08F02770:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start LoadMapObjects
LoadMapObjects: @ 0x08F0277C
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
	ldr r3, _08F027AC @ =gUnknown_03000830
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
_08F027AC: .4byte gUnknown_03000830
_08F027B0: .4byte gUnknown_0300349C
_08F027B4: .4byte m1_data_object_table_1
_08F027B8:
	cmp r0, #0x2a
	bhi _08F027D0
	ldr r2, _08F027C8 @ =gUnknown_0300349C
	ldr r1, _08F027CC @ =gUnknown_08F17385
	str r1, [r2]
	ldrb r0, [r3]
	subs r0, #0x1a
	b _08F027DA
	.align 2, 0
_08F027C8: .4byte gUnknown_0300349C
_08F027CC: .4byte gUnknown_08F17385
_08F027D0:
	ldr r2, _08F02804 @ =gUnknown_0300349C
	ldr r1, _08F02808 @ =gUnknown_08F19252
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
	ldr r1, _08F02814 @ =gUnknown_03000830
	b _08F02830
	.align 2, 0
_08F02804: .4byte gUnknown_0300349C
_08F02808: .4byte gUnknown_08F19252
_08F0280C: .4byte 0xFFFF8000
_08F02810: .4byte gUnknown_03000784
_08F02814: .4byte gUnknown_03000830
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
	ldr r3, _08F02928 @ =gUnknown_03001D40
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
	ldr r0, _08F02938 @ =gUnknown_03000830
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
	ldr r2, _08F02940 @ =gUnknown_08F645B4
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
_08F02928: .4byte gUnknown_03001D40
_08F0292C: .4byte gUnknown_0300349C
_08F02930: .4byte 0xFFFF8000
_08F02934: .4byte 0xFFFFFF00
_08F02938: .4byte gUnknown_03000830
_08F0293C: .4byte 0x0000FFC0
_08F02940: .4byte gUnknown_08F645B4
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

	thumb_func_start sub_8F029E0
sub_8F029E0: @ 0x08F029E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08F02A40 @ =gUnknown_03000788
	ldr r0, _08F02A44 @ =gUnknown_03001508
	ldrh r5, [r0]
	ldr r4, _08F02A48 @ =gUnknown_03002850
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
	ldr r0, _08F02A50 @ =gUnknown_030007E8
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
_08F02A48: .4byte gUnknown_03002850
_08F02A4C: .4byte gUnknown_030007A4
_08F02A50: .4byte gUnknown_030007E8
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
	ldr r1, _08F02AF0 @ =gUnknown_03002850
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
_08F02AF0: .4byte gUnknown_03002850
_08F02AF4: .4byte gUnknown_03002852
_08F02AF8: .4byte gUnknown_030007A4

	thumb_func_start sub_8F02AFC
sub_8F02AFC: @ 0x08F02AFC
	push {r4, r5, r6, lr}
	ldr r1, _08F02B60 @ =gUnknown_030007C8
	strb r0, [r1]
	movs r4, #0
	ldr r1, _08F02B64 @ =gUnknown_03000784
	ldr r0, _08F02B68 @ =gUnknown_03001D40
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
_08F02B68: .4byte gUnknown_03001D40
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
	ldr r1, _08F02BB4 @ =gUnknown_03001D40
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
_08F02BB4: .4byte gUnknown_03001D40
_08F02BB8: .4byte gUnknown_03000784

	thumb_func_start sub_8F02BBC
sub_8F02BBC: @ 0x08F02BBC
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
	ldr r2, _08F02C98 @ =gUnknown_03002850
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
_08F02C98: .4byte gUnknown_03002850
_08F02C9C: .4byte 0x0000FFFC
_08F02CA0: .4byte gUnknown_03001508
_08F02CA4: .4byte gUnknown_030007A4
_08F02CA8:
	ldr r0, _08F02CD4 @ =gUnknown_03000800
	ldrh r6, [r0]
	cmp r6, #0
	bne _08F02CEC
	ldr r5, _08F02CD8 @ =gUnknown_03000788
	ldr r3, _08F02CDC @ =gUnknown_03002850
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
_08F02CDC: .4byte gUnknown_03002850
_08F02CE0: .4byte gUnknown_0300081C
_08F02CE4: .4byte 0x0000FFFC
_08F02CE8: .4byte gUnknown_03001508
_08F02CEC:
	ldr r0, _08F02D28 @ =gUnknown_08F645B4
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
_08F02D28: .4byte gUnknown_08F645B4
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
	ldr r3, _08F02DEC @ =gUnknown_03002850
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
_08F02DEC: .4byte gUnknown_03002850
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
	ldr r1, _08F02EBC @ =gUnknown_03002850
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
_08F02EBC: .4byte gUnknown_03002850
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
	ldr r2, _08F03010 @ =gUnknown_03002850
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
_08F03010: .4byte gUnknown_03002850
_08F03014: .4byte 0x0000FFFC
_08F03018: .4byte gUnknown_03000788
_08F0301C: .4byte gUnknown_03001508
_08F03020: .4byte gGameInfo
_08F03024: .4byte 0x00008180
_08F03028: .4byte gUnknown_030007B8

	thumb_func_start sub_8F0302C
sub_8F0302C: @ 0x08F0302C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	mov r1, sp
	ldr r2, _08F03118 @ =gGameInfo
	ldrb r0, [r2, #8]
	strb r0, [r1]
	ldrb r0, [r2, #9]
	strb r0, [r1, #1]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #2]
	ldrb r0, [r2, #0xb]
	strb r0, [r1, #3]
	movs r1, #0
_08F03054:
	movs r2, #0x42
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r2, r1
	blt _08F030C0
	ldr r7, _08F0311C @ =gUnknown_03002850
	adds r0, r7, #2
	mov ip, r0
	mov r8, r1
	ldr r1, _08F03120 @ =gUnknown_0300081C
	mov sb, r1
_08F0306C:
	mov r0, sb
	ldr r1, [r0]
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	subs r1, r1, r5
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08F03088
	lsls r0, r4, #0x10
	movs r2, #0x88
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r4, r0, #0x10
_08F03088:
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08F0309C
	lsls r0, r2, #0x10
	movs r1, #0x88
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r2, r0, #0x10
_08F0309C:
	lsls r2, r2, #0x10
	asrs r2, r2, #0xe
	adds r3, r2, r7
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	adds r1, r0, r7
	ldrh r1, [r1]
	strh r1, [r3]
	add r2, ip
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r2]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	bge _08F0306C
_08F030C0:
	bl sub_8F03128
	mov r2, sl
	cmp r2, #0
	bne _08F030E0
	asrs r0, r6, #0x10
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _08F030E0
	cmp r0, #0x3f
	bgt _08F030E0
	asrs r0, r6, #0x14
	ldr r2, _08F03124 @ =gUnknown_03003198
	adds r0, r0, r2
	strb r1, [r0]
_08F030E0:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x43
	ble _08F03054
	ldr r1, _08F03118 @ =gGameInfo
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r1, #8]
	mov r0, sp
	ldrb r0, [r0, #1]
	strb r0, [r1, #9]
	mov r0, sp
	ldrb r0, [r0, #2]
	strb r0, [r1, #0xa]
	mov r0, sp
	ldrb r0, [r0, #3]
	strb r0, [r1, #0xb]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F03118: .4byte gGameInfo
_08F0311C: .4byte gUnknown_03002850
_08F03120: .4byte gUnknown_0300081C
_08F03124: .4byte gUnknown_03003198

	thumb_func_start sub_8F03128
sub_8F03128: @ 0x08F03128
	push {r4, r5, lr}
	ldr r4, _08F03160 @ =gUnknown_03000784
	ldr r5, [r4]
	bl sub_8F016EC
	movs r0, #1
	bl sub_8F02BBC
	movs r0, #1
	bl sub_8F02AFC
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r1, _08F03164 @ =0x040000D4
	ldr r0, _08F03168 @ =gUnknown_03002450
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0316C @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F03160: .4byte gUnknown_03000784
_08F03164: .4byte 0x040000D4
_08F03168: .4byte gUnknown_03002450
_08F0316C: .4byte 0x84000100

	thumb_func_start sub_8F03170
sub_8F03170: @ 0x08F03170
	push {r4, lr}
	ldr r2, _08F031B0 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #0xf
	ldrb r3, [r1, #0x14]
	ands r0, r3
	ldr r1, [r1, #8]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r3, r2, #0
	cmp r0, #5
	bne _08F031B8
	ldr r0, _08F031B4 @ =gGameInfo
	ldrb r2, [r1, #1]
	lsrs r1, r2, #3
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r1, r1, r0
	movs r0, #7
	ands r0, r2
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	movs r1, #0x80
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _08F031E6
	movs r2, #0
	b _08F031EA
	.align 2, 0
_08F031B0: .4byte gUnknown_03000784
_08F031B4: .4byte gGameInfo
_08F031B8:
	cmp r0, #6
	bne _08F031E4
	ldr r0, _08F031E0 @ =gGameInfo
	ldrb r2, [r1, #1]
	lsrs r1, r2, #3
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r1, r1, r0
	movs r0, #7
	ands r0, r2
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
	b _08F031E6
	.align 2, 0
_08F031E0: .4byte gGameInfo
_08F031E4:
	movs r2, #1
_08F031E6:
	cmp r2, #0
	bne _08F031F4
_08F031EA:
	ldr r0, [r3]
	movs r1, #0x80
	ldrb r3, [r0]
	orrs r1, r3
	strb r1, [r0]
_08F031F4:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8F031FC
sub_8F031FC: @ 0x08F031FC
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

	thumb_func_start sub_8F032D0
sub_8F032D0: @ 0x08F032D0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08F033BC @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F033B4
	ldr r6, _08F033C0 @ =gUnknown_030007A0
	movs r5, #0
	ldrsb r5, [r6, r5]
	cmp r5, #0
	bne _08F033B4
	ldr r0, _08F033C4 @ =gUnknown_03000818
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08F033B4
	ldr r2, _08F033C8 @ =gUnknown_03000788
	ldr r0, _08F033CC @ =gUnknown_08F1B670
	ldr r1, _08F033D0 @ =gUnknown_030007A4
	ldrb r1, [r1]
	lsrs r1, r1, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x78
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08F033D4 @ =gUnknown_03001508
	ldr r0, _08F033D8 @ =gUnknown_08F1B674
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x58
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08F033DC @ =gUnknown_03000784
	ldr r4, [r0]
	ldrb r0, [r4]
	cmp r0, #1
	bne _08F03334
	adds r0, r2, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08F03334:
	ldrh r0, [r4, #4]
	subs r1, r3, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r3, [r4, #6]
	subs r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bhi _08F033B4
	cmp r0, #0x3f
	bhi _08F033B4
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	ldr r2, [r4, #8]
	subs r1, #0xff
	ldr r0, [sp]
	ands r0, r1
	ldrb r2, [r2, #4]
	orrs r0, r2
	str r0, [sp]
	mov r1, sp
	ldr r0, [r4, #8]
	ldrb r0, [r0, #5]
	strb r0, [r1, #1]
	ldr r0, [r4, #8]
	ldrb r0, [r0, #6]
	strb r0, [r1, #2]
	ldr r0, [r4, #8]
	ldrb r0, [r0, #7]
	strb r0, [r1, #3]
	ldr r3, _08F033E0 @ =gPlayerX
	ldr r2, [sp]
	ldr r1, _08F033E4 @ =0x0000FFC0
	ands r1, r2
	ldr r0, _08F033E8 @ =0x0000FE40
	adds r1, r1, r0
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	strh r0, [r3]
	ldr r1, _08F033EC @ =gPlayerY
	lsrs r0, r2, #0x16
	lsls r0, r0, #6
	ldr r3, _08F033F0 @ =0x0000FEC0
	adds r0, r0, r3
	lsls r2, r2, #0xa
	lsrs r2, r2, #0x1a
	adds r2, r2, r0
	strh r2, [r1]
	ldr r0, _08F033F4 @ =gUnknown_03000840
	ldr r1, _08F033F8 @ =gUnknown_030034A8
	strb r5, [r1]
	strb r5, [r0]
	movs r0, #0x20
	ldrb r4, [r4, #0x18]
	ands r0, r4
	cmp r0, #0
	beq _08F033B4
	adds r0, r5, #0
	subs r0, #0x10
	strb r0, [r1]
_08F033B4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F033BC: .4byte gUnknown_030007C8
_08F033C0: .4byte gUnknown_030007A0
_08F033C4: .4byte gUnknown_03000818
_08F033C8: .4byte gUnknown_03000788
_08F033CC: .4byte gUnknown_08F1B670
_08F033D0: .4byte gUnknown_030007A4
_08F033D4: .4byte gUnknown_03001508
_08F033D8: .4byte gUnknown_08F1B674
_08F033DC: .4byte gUnknown_03000784
_08F033E0: .4byte gPlayerX
_08F033E4: .4byte 0x0000FFC0
_08F033E8: .4byte 0x0000FE40
_08F033EC: .4byte gPlayerY
_08F033F0: .4byte 0x0000FEC0
_08F033F4: .4byte gUnknown_03000840
_08F033F8: .4byte gUnknown_030034A8

	thumb_func_start sub_8F033FC
sub_8F033FC: @ 0x08F033FC
	bx lr
	.align 2, 0

	thumb_func_start sub_8F03400
sub_8F03400: @ 0x08F03400
	push {lr}
	ldr r0, _08F03424 @ =gUnknown_03000784
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0x3f
	ldrb r1, [r1, #2]
	ands r0, r1
	ldr r1, _08F03428 @ =gUnknown_030007A4
	ldrb r1, [r1]
	cmp r0, r1
	bne _08F03420
	ldr r1, _08F0342C @ =gUnknown_030007E8
	movs r0, #0
	strb r0, [r1]
	bl sub_8F032D0
_08F03420:
	pop {r0}
	bx r0
	.align 2, 0
_08F03424: .4byte gUnknown_03000784
_08F03428: .4byte gUnknown_030007A4
_08F0342C: .4byte gUnknown_030007E8

	thumb_func_start sub_8F03430
sub_8F03430: @ 0x08F03430
	push {lr}
	ldr r0, _08F03454 @ =gUnknown_03000784
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0x3f
	ldrb r1, [r1, #2]
	ands r0, r1
	ldr r1, _08F03458 @ =gUnknown_030007A4
	ldrb r1, [r1]
	cmp r0, r1
	bne _08F03450
	ldr r1, _08F0345C @ =gUnknown_030007E8
	movs r0, #1
	strb r0, [r1]
	bl sub_8F032D0
_08F03450:
	pop {r0}
	bx r0
	.align 2, 0
_08F03454: .4byte gUnknown_03000784
_08F03458: .4byte gUnknown_030007A4
_08F0345C: .4byte gUnknown_030007E8

	thumb_func_start sub_8F03460
sub_8F03460: @ 0x08F03460
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08F03518 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F03510
	ldr r5, _08F0351C @ =gUnknown_030007A0
	movs r4, #0
	ldrsb r4, [r5, r4]
	cmp r4, #0
	bne _08F03510
	ldr r0, _08F03520 @ =gUnknown_03000818
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08F03510
	ldr r0, _08F03524 @ =gUnknown_03000788
	ldrh r0, [r0]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r0, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08F03528 @ =gUnknown_03001508
	ldrh r0, [r0]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, #0x10
	ldr r2, _08F0352C @ =gUnknown_03000784
	ldr r3, [r2]
	ldrh r2, [r3, #4]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r3, #6]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x1f
	bhi _08F03510
	cmp r0, #0x1f
	bhi _08F03510
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	ldr r2, [r3, #8]
	subs r1, #0xff
	ldr r0, [sp]
	ands r0, r1
	ldrb r2, [r2, #4]
	orrs r0, r2
	str r0, [sp]
	mov r1, sp
	ldr r0, [r3, #8]
	ldrb r0, [r0, #5]
	strb r0, [r1, #1]
	ldr r0, [r3, #8]
	ldrb r0, [r0, #6]
	strb r0, [r1, #2]
	ldr r0, [r3, #8]
	ldrb r0, [r0, #7]
	strb r0, [r1, #3]
	ldr r3, _08F03530 @ =gPlayerX
	ldr r2, [sp]
	ldr r1, _08F03534 @ =0x0000FFC0
	ands r1, r2
	ldr r0, _08F03538 @ =0x0000FE40
	adds r1, r1, r0
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	strh r0, [r3]
	ldr r1, _08F0353C @ =gPlayerY
	lsrs r0, r2, #0x16
	lsls r0, r0, #6
	ldr r3, _08F03540 @ =0x0000FEC0
	adds r0, r0, r3
	lsls r2, r2, #0xa
	lsrs r2, r2, #0x1a
	adds r2, r2, r0
	strh r2, [r1]
	ldr r1, _08F03544 @ =gUnknown_03000840
	ldr r0, _08F03548 @ =gUnknown_030034A8
	strb r4, [r0]
	strb r4, [r1]
_08F03510:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F03518: .4byte gUnknown_030007C8
_08F0351C: .4byte gUnknown_030007A0
_08F03520: .4byte gUnknown_03000818
_08F03524: .4byte gUnknown_03000788
_08F03528: .4byte gUnknown_03001508
_08F0352C: .4byte gUnknown_03000784
_08F03530: .4byte gPlayerX
_08F03534: .4byte 0x0000FFC0
_08F03538: .4byte 0x0000FE40
_08F0353C: .4byte gPlayerY
_08F03540: .4byte 0x0000FEC0
_08F03544: .4byte gUnknown_03000840
_08F03548: .4byte gUnknown_030034A8

	thumb_func_start sub_8F0354C
sub_8F0354C: @ 0x08F0354C
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
	ldr r2, _08F0372C @ =gUnknown_03002850
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
	ldr r2, _08F03740 @ =gUnknown_08F645B4
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
_08F0372C: .4byte gUnknown_03002850
_08F03730: .4byte 0xFFFFFE40
_08F03734: .4byte 0xFFFFFEC0
_08F03738: .4byte gUnknown_08F1B628
_08F0373C: .4byte gUnknown_03000818
_08F03740: .4byte gUnknown_08F645B4
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
	ldr r2, _08F03798 @ =gUnknown_08F645B4
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
_08F03798: .4byte gUnknown_08F645B4
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

	thumb_func_start sub_8F037BC
sub_8F037BC: @ 0x08F037BC
	bx lr
	.align 2, 0

	thumb_func_start sub_8F037C0
sub_8F037C0: @ 0x08F037C0
	push {lr}
	movs r0, #0x74
	bl sub_8F03F3C
	bl sub_8F031FC
	pop {r0}
	bx r0

	thumb_func_start sub_8F037D0
sub_8F037D0: @ 0x08F037D0
	push {lr}
	movs r0, #0x74
	bl sub_8F03F3C
	bl sub_8F031FC
	pop {r0}
	bx r0

	thumb_func_start sub_8F037E0
sub_8F037E0: @ 0x08F037E0
	push {lr}
	movs r0, #0x74
	bl sub_8F03F3C
	ldr r0, _08F03810 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F03806
	ldr r1, _08F03814 @ =gUnknown_03000780
	movs r0, #7
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F03806
	ldr r0, _08F03818 @ =gUnknown_03000784
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_08F03806:
	bl sub_8F031FC
	pop {r0}
	bx r0
	.align 2, 0
_08F03810: .4byte gUnknown_030007C8
_08F03814: .4byte gUnknown_03000780
_08F03818: .4byte gUnknown_03000784

	thumb_func_start sub_8F0381C
sub_8F0381C: @ 0x08F0381C
	bx lr
	.align 2, 0

	thumb_func_start sub_8F03820
sub_8F03820: @ 0x08F03820
	push {lr}
	movs r0, #0x74
	bl sub_8F03F3C
	bl sub_8F031FC
	pop {r0}
	bx r0

	thumb_func_start sub_8F03830
sub_8F03830: @ 0x08F03830
	push {lr}
	movs r0, #0x74
	bl sub_8F03F3C
	bl sub_8F031FC
	pop {r0}
	bx r0

	thumb_func_start sub_8F03840
sub_8F03840: @ 0x08F03840
	bx lr
	.align 2, 0

	thumb_func_start sub_8F03844
sub_8F03844: @ 0x08F03844
	push {lr}
	bl sub_8F031FC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03850
sub_8F03850: @ 0x08F03850
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F03890 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0394C
	ldr r0, _08F03894 @ =gUnknown_03000780
	movs r4, #7
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08F038D4
	bl Random
	lsrs r0, r0, #0x1b
	cmp r0, #1
	beq _08F038AC
	cmp r0, #1
	blo _08F0389C
	cmp r0, #2
	beq _08F038B8
	cmp r0, #3
	beq _08F038C4
	ldr r0, _08F03898 @ =gUnknown_03000784
	ldr r1, [r0]
	movs r0, #0x80
	ldrb r2, [r1, #0x15]
	orrs r0, r2
	strb r0, [r1, #0x15]
	b _08F038D4
	.align 2, 0
_08F03890: .4byte gUnknown_030007C8
_08F03894: .4byte gUnknown_03000780
_08F03898: .4byte gUnknown_03000784
_08F0389C:
	ldr r1, _08F038A8 @ =gUnknown_03000784
	ldr r0, [r1]
	strb r4, [r0, #0x15]
	ldr r1, [r1]
	b _08F038CE
	.align 2, 0
_08F038A8: .4byte gUnknown_03000784
_08F038AC:
	ldr r2, _08F038B4 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #2
	b _08F038CA
	.align 2, 0
_08F038B4: .4byte gUnknown_03000784
_08F038B8:
	ldr r2, _08F038C0 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #4
	b _08F038CA
	.align 2, 0
_08F038C0: .4byte gUnknown_03000784
_08F038C4:
	ldr r2, _08F03924 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #6
_08F038CA:
	strb r0, [r1, #0x15]
	ldr r1, [r2]
_08F038CE:
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_08F038D4:
	ldr r6, _08F03924 @ =gUnknown_03000784
	ldr r2, [r6]
	ldrb r3, [r2, #0x15]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08F0394C
	ldr r0, _08F03928 @ =gUnknown_08F1B630
	movs r1, #7
	ands r1, r3
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r8, r5
	ldr r0, _08F0392C @ =gUnknown_08F1B648
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r2, #6]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r7, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8F02470
	adds r1, r0, #0
	cmp r1, #0
	bne _08F03930
	ldr r0, [r6]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	b _08F0394C
	.align 2, 0
_08F03924: .4byte gUnknown_03000784
_08F03928: .4byte gUnknown_08F1B630
_08F0392C: .4byte gUnknown_08F1B648
_08F03930:
	ldr r0, _08F0395C @ =0x00000309
	cmp r1, r0
	bne _08F0394C
	ldr r1, [r6]
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #6]
	bl sub_8F026DC
	cmp r0, #0
	beq _08F0394C
	ldr r0, [r6]
	mov r1, r8
	strh r1, [r0, #4]
	strh r7, [r0, #6]
_08F0394C:
	bl sub_8F031FC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0395C: .4byte 0x00000309

	thumb_func_start sub_8F03960
sub_8F03960: @ 0x08F03960
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F039A0 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F03A5C
	ldr r0, _08F039A4 @ =gUnknown_03000780
	movs r4, #7
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08F039E4
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _08F039BC
	cmp r0, #1
	blo _08F039AC
	cmp r0, #2
	beq _08F039C8
	cmp r0, #3
	beq _08F039D4
	ldr r0, _08F039A8 @ =gUnknown_03000784
	ldr r1, [r0]
	movs r0, #0x80
	ldrb r2, [r1, #0x15]
	orrs r0, r2
	strb r0, [r1, #0x15]
	b _08F039E4
	.align 2, 0
_08F039A0: .4byte gUnknown_030007C8
_08F039A4: .4byte gUnknown_03000780
_08F039A8: .4byte gUnknown_03000784
_08F039AC:
	ldr r1, _08F039B8 @ =gUnknown_03000784
	ldr r0, [r1]
	strb r4, [r0, #0x15]
	ldr r1, [r1]
	b _08F039DE
	.align 2, 0
_08F039B8: .4byte gUnknown_03000784
_08F039BC:
	ldr r2, _08F039C4 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #2
	b _08F039DA
	.align 2, 0
_08F039C4: .4byte gUnknown_03000784
_08F039C8:
	ldr r2, _08F039D0 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #4
	b _08F039DA
	.align 2, 0
_08F039D0: .4byte gUnknown_03000784
_08F039D4:
	ldr r2, _08F03A34 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #6
_08F039DA:
	strb r0, [r1, #0x15]
	ldr r1, [r2]
_08F039DE:
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_08F039E4:
	ldr r6, _08F03A34 @ =gUnknown_03000784
	ldr r2, [r6]
	ldrb r3, [r2, #0x15]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08F03A5C
	ldr r0, _08F03A38 @ =gUnknown_08F1B630
	movs r1, #7
	ands r1, r3
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r8, r5
	ldr r0, _08F03A3C @ =gUnknown_08F1B648
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r2, #6]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r7, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8F02470
	adds r1, r0, #0
	cmp r1, #0
	bne _08F03A40
	ldr r0, [r6]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	b _08F03A5C
	.align 2, 0
_08F03A34: .4byte gUnknown_03000784
_08F03A38: .4byte gUnknown_08F1B630
_08F03A3C: .4byte gUnknown_08F1B648
_08F03A40:
	ldr r0, _08F03A6C @ =0x00000309
	cmp r1, r0
	bne _08F03A5C
	ldr r1, [r6]
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #6]
	bl sub_8F026DC
	cmp r0, #0
	beq _08F03A5C
	ldr r0, [r6]
	mov r1, r8
	strh r1, [r0, #4]
	strh r7, [r0, #6]
_08F03A5C:
	bl sub_8F031FC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F03A6C: .4byte 0x00000309

	thumb_func_start sub_8F03A70
sub_8F03A70: @ 0x08F03A70
	push {r4, lr}
	ldr r0, _08F03AA0 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F03AE0
	ldr r0, _08F03AA4 @ =gUnknown_03000780
	movs r4, #7
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08F03AE0
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _08F03AB8
	cmp r0, #1
	blo _08F03AA8
	cmp r0, #2
	beq _08F03AC4
	cmp r0, #3
	beq _08F03AD0
	b _08F03AE0
	.align 2, 0
_08F03AA0: .4byte gUnknown_030007C8
_08F03AA4: .4byte gUnknown_03000780
_08F03AA8:
	ldr r1, _08F03AB4 @ =gUnknown_03000784
	ldr r0, [r1]
	strb r4, [r0, #0x15]
	ldr r1, [r1]
	b _08F03ADA
	.align 2, 0
_08F03AB4: .4byte gUnknown_03000784
_08F03AB8:
	ldr r2, _08F03AC0 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #2
	b _08F03AD6
	.align 2, 0
_08F03AC0: .4byte gUnknown_03000784
_08F03AC4:
	ldr r2, _08F03ACC @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #4
	b _08F03AD6
	.align 2, 0
_08F03ACC: .4byte gUnknown_03000784
_08F03AD0:
	ldr r2, _08F03AEC @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #6
_08F03AD6:
	strb r0, [r1, #0x15]
	ldr r1, [r2]
_08F03ADA:
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_08F03AE0:
	bl sub_8F031FC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F03AEC: .4byte gUnknown_03000784

	thumb_func_start sub_8F03AF0
sub_8F03AF0: @ 0x08F03AF0
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03AFE
	bl sub_8F03844
_08F03AFE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03B04
sub_8F03B04: @ 0x08F03B04
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03B12
	bl sub_8F03850
_08F03B12:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03B18
sub_8F03B18: @ 0x08F03B18
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03B26
	bl sub_8F03960
_08F03B26:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03B2C
sub_8F03B2C: @ 0x08F03B2C
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03B3A
	bl sub_8F03A70
_08F03B3A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03B40
sub_8F03B40: @ 0x08F03B40
	push {r4, r5, lr}
	ldr r5, _08F03B5C @ =gUnknown_03000784
	ldr r1, [r5]
	ldrb r4, [r1, #0x15]
	movs r0, #0xf8
	ands r0, r4
	strb r0, [r1, #0x15]
	bl sub_8F031FC
	ldr r0, [r5]
	strb r4, [r0, #0x15]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F03B5C: .4byte gUnknown_03000784

	thumb_func_start sub_8F03B60
sub_8F03B60: @ 0x08F03B60
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03B6E
	bl sub_8F03B40
_08F03B6E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03B74
sub_8F03B74: @ 0x08F03B74
	push {r4, r5, r6, r7, lr}
	ldr r1, _08F03C04 @ =gUnknown_03000784
	ldr r2, [r1]
	ldr r0, [r2, #8]
	ldrb r5, [r0, #6]
	ldrb r4, [r0, #7]
	ldrb r3, [r0, #5]
	lsls r6, r3, #8
	ldrb r0, [r0, #4]
	orrs r6, r0
	ldr r0, _08F03C08 @ =gUnknown_030007C8
	ldrb r0, [r0]
	adds r7, r1, #0
	cmp r0, #0
	beq _08F03BA2
	cmp r4, #0x49
	bne _08F03BA2
	ldr r0, _08F03C0C @ =gUnknown_0300150C
	ldr r0, [r0]
	cmp r0, #0
	beq _08F03BA2
	cmp r0, r2
	bne _08F03BD0
_08F03BA2:
	ldr r2, _08F03C10 @ =gGameInfo
	movs r3, #0x80
	ands r5, r3
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x1a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r4, #3
	adds r0, r0, r1
	movs r1, #0x88
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r0, r0, r2
	movs r1, #7
	ands r4, r1
	ldrb r0, [r0]
	lsls r0, r4
	ands r0, r3
	cmp r0, #0
	beq _08F03BD0
	adds r0, r6, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F03BD0:
	ldr r1, [r7]
	ldr r0, _08F03C14 @ =gUnknown_03000788
	ldr r3, _08F03C18 @ =0x0000FFFC
	adds r2, r3, #0
	ldrh r0, [r0]
	ands r2, r0
	ldrh r0, [r1, #4]
	subs r2, r0, r2
	subs r2, #0x40
	ldr r0, _08F03C1C @ =gUnknown_03001508
	ldrh r0, [r0]
	ands r3, r0
	ldrh r0, [r1, #6]
	subs r3, r0, r3
	subs r3, #0xa0
	ldrb r1, [r1, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x12
	lsls r3, r3, #0x10
	asrs r3, r3, #0x12
	adds r0, r6, #0
	bl sub_8F01700
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F03C04: .4byte gUnknown_03000784
_08F03C08: .4byte gUnknown_030007C8
_08F03C0C: .4byte gUnknown_0300150C
_08F03C10: .4byte gGameInfo
_08F03C14: .4byte gUnknown_03000788
_08F03C18: .4byte 0x0000FFFC
_08F03C1C: .4byte gUnknown_03001508

	thumb_func_start sub_8F03C20
sub_8F03C20: @ 0x08F03C20
	push {r4, r5, r6, lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03CB0
	ldr r0, _08F03C84 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F03CAC
	ldr r0, _08F03C88 @ =gUnknown_03000780
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08F03CAC
	ldr r6, _08F03C8C @ =gUnknown_03000784
	ldr r0, [r6]
	ldrh r5, [r0, #4]
	ldrh r4, [r0, #6]
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08F03C56
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08F03C56:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08F03C98
	bl Random
	lsrs r2, r0, #0x1d
	movs r0, #0xfe
	ands r0, r2
	cmp r0, #0
	bne _08F03C98
	ldr r0, [r6]
	ldrb r1, [r0, #3]
	adds r1, #1
	strb r1, [r0, #3]
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08F03C90
	movs r0, #8
	eors r5, r0
	b _08F03C98
	.align 2, 0
_08F03C84: .4byte gUnknown_030007C8
_08F03C88: .4byte gUnknown_03000780
_08F03C8C: .4byte gUnknown_03000784
_08F03C90:
	adds r0, r4, #0
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08F03C98:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8F0253C
	cmp r0, #0
	bne _08F03CAC
	ldr r0, _08F03CB8 @ =gUnknown_03000784
	ldr r0, [r0]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
_08F03CAC:
	bl sub_8F031FC
_08F03CB0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F03CB8: .4byte gUnknown_03000784

	thumb_func_start sub_8F03CBC
sub_8F03CBC: @ 0x08F03CBC
	push {lr}
	ldr r3, _08F03CD4 @ =gUnknown_03000784
	ldr r1, [r3]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _08F03CD8
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	b _08F03D46
	.align 2, 0
_08F03CD4: .4byte gUnknown_03000784
_08F03CD8:
	ldr r0, _08F03D4C @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F03D32
	ldr r2, _08F03D50 @ =gUnknown_03000818
	ldrb r0, [r2]
	cmp r0, #0
	bne _08F03CF4
	movs r0, #0xf8
	strb r0, [r2]
	movs r0, #4
	ldrb r2, [r1, #0x15]
	eors r0, r2
	strb r0, [r1, #0x15]
_08F03CF4:
	ldr r1, _08F03D54 @ =gUnknown_03000780
	movs r0, #3
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F03D08
	ldr r1, [r3]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_08F03D08:
	ldr r1, [r3]
	ldr r0, _08F03D58 @ =gUnknown_08F1B630
	ldrb r2, [r1, #0x15]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	ldrh r2, [r1, #4]
	adds r0, r2, r0
	strh r0, [r1, #4]
	ldr r0, _08F03D5C @ =gUnknown_08F1B648
	ldrb r2, [r1, #0x15]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	ldrh r2, [r1, #6]
	adds r0, r2, r0
	strh r0, [r1, #6]
_08F03D32:
	bl sub_8F031FC
	adds r1, r0, #0
	cmp r1, #0
	bne _08F03D46
	ldr r0, _08F03D50 @ =gUnknown_03000818
	strb r1, [r0]
	ldr r0, _08F03D60 @ =gUnknown_03000784
	ldr r0, [r0]
	strb r1, [r0, #0x14]
_08F03D46:
	pop {r0}
	bx r0
	.align 2, 0
_08F03D4C: .4byte gUnknown_030007C8
_08F03D50: .4byte gUnknown_03000818
_08F03D54: .4byte gUnknown_03000780
_08F03D58: .4byte gUnknown_08F1B630
_08F03D5C: .4byte gUnknown_08F1B648
_08F03D60: .4byte gUnknown_03000784

	thumb_func_start sub_8F03D64
sub_8F03D64: @ 0x08F03D64
	push {r4, r5, r6, lr}
	bl sub_8F03170
	cmp r0, #0
	bne _08F03D70
	b _08F03E8E
_08F03D70:
	ldr r0, _08F03DC0 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F03D7A
	b _08F03E8A
_08F03D7A:
	ldr r2, _08F03DC4 @ =gUnknown_03000784
	ldr r3, [r2]
	ldrh r4, [r3, #4]
	ldrh r5, [r3, #6]
	ldr r1, _08F03DC8 @ =gUnknown_03000780
	movs r0, #3
	ldrb r6, [r1]
	ands r0, r6
	adds r6, r2, #0
	cmp r0, #0
	bne _08F03DA0
	movs r0, #0x80
	ldrb r3, [r3, #0x19]
	ands r0, r3
	cmp r0, #0
	beq _08F03DA0
	ldr r0, _08F03DCC @ =0x0000FFF7
	ands r4, r0
	ands r5, r0
_08F03DA0:
	movs r0, #7
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F03E4A
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bhi _08F03E34
	lsls r0, r0, #2
	ldr r1, _08F03DD0 @ =_08F03DD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F03DC0: .4byte gUnknown_030007C8
_08F03DC4: .4byte gUnknown_03000784
_08F03DC8: .4byte gUnknown_03000780
_08F03DCC: .4byte 0x0000FFF7
_08F03DD0: .4byte _08F03DD4
_08F03DD4: @ jump table
	.4byte _08F03DEC @ case 0
	.4byte _08F03DF8 @ case 1
	.4byte _08F03E04 @ case 2
	.4byte _08F03E10 @ case 3
	.4byte _08F03E1C @ case 4
	.4byte _08F03E1C @ case 5
_08F03DEC:
	ldr r2, _08F03DF4 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #0
	b _08F03E46
	.align 2, 0
_08F03DF4: .4byte gUnknown_03000784
_08F03DF8:
	ldr r2, _08F03E00 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #2
	b _08F03E46
	.align 2, 0
_08F03E00: .4byte gUnknown_03000784
_08F03E04:
	ldr r2, _08F03E0C @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #4
	b _08F03E46
	.align 2, 0
_08F03E0C: .4byte gUnknown_03000784
_08F03E10:
	ldr r2, _08F03E18 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #6
	b _08F03E46
	.align 2, 0
_08F03E18: .4byte gUnknown_03000784
_08F03E1C:
	movs r0, #8
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _08F03E30 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #0x80
	ldrb r3, [r1, #0x19]
	orrs r0, r3
	b _08F03E46
	.align 2, 0
_08F03E30: .4byte gUnknown_03000784
_08F03E34:
	movs r0, #8
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _08F03E94 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #0x80
	ldrb r6, [r1, #0x19]
	orrs r0, r6
_08F03E46:
	strb r0, [r1, #0x19]
	adds r6, r2, #0
_08F03E4A:
	ldr r0, [r6]
	ldrb r2, [r0, #0x19]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08F03E78
	ldr r0, _08F03E98 @ =gUnknown_08F1B630
	movs r1, #7
	ands r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08F03E9C @ =gUnknown_08F1B648
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08F03E78:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F02470
	cmp r0, #0
	bne _08F03E8A
	ldr r0, [r6]
	strh r4, [r0, #4]
	strh r5, [r0, #6]
_08F03E8A:
	bl sub_8F031FC
_08F03E8E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F03E94: .4byte gUnknown_03000784
_08F03E98: .4byte gUnknown_08F1B630
_08F03E9C: .4byte gUnknown_08F1B648

	thumb_func_start sub_8F03EA0
sub_8F03EA0: @ 0x08F03EA0
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03EAE
	bl sub_8F037E0
_08F03EAE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SetFlag
SetFlag: @ 0x08F03EB4
	ldr r0, _08F03ED8 @ =gUnknown_03000784
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldrb r1, [r0, #4]
	ldr r0, _08F03EDC @ =gGameInfo
	lsrs r2, r1, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r2, r0
	movs r0, #7
	ands r1, r0
	movs r0, #0x80
	asrs r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08F03ED8: .4byte gUnknown_03000784
_08F03EDC: .4byte gGameInfo

	thumb_func_start ClearFlag
ClearFlag: @ 0x08F03EE0
	ldr r0, _08F03F08 @ =gUnknown_03000784
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldrb r1, [r0, #4]
	ldr r0, _08F03F0C @ =gGameInfo
	lsrs r2, r1, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r2, r0
	movs r0, #7
	ands r1, r0
	movs r0, #0x80
	asrs r0, r1
	ldrb r1, [r2]
	bics r1, r0
	adds r0, r1, #0
	strb r0, [r2]
	bx lr
	.align 2, 0
_08F03F08: .4byte gUnknown_03000784
_08F03F0C: .4byte gGameInfo

	thumb_func_start sub_8F03F10
sub_8F03F10: @ 0x08F03F10
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03F24
	movs r0, #0x72
	bl sub_8F03F3C
	bl sub_8F031FC
_08F03F24:
	pop {r0}
	bx r0

	thumb_func_start sub_8F03F28
sub_8F03F28: @ 0x08F03F28
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03F36
	bl sub_8F037D0
_08F03F36:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03F3C
sub_8F03F3C: @ 0x08F03F3C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08F03F68 @ =gUnknown_030007D0
	ldrb r2, [r1]
	cmp r2, r0
	beq _08F03F64
	strb r0, [r1]
	ldr r2, _08F03F6C @ =gUnknown_08F6453C
	subs r0, #0x62
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _08F03F70 @ =0x06011000
	movs r2, #0x80
	bl BitUnpack
_08F03F64:
	pop {r0}
	bx r0
	.align 2, 0
_08F03F68: .4byte gUnknown_030007D0
_08F03F6C: .4byte gUnknown_08F6453C
_08F03F70: .4byte 0x06001000+OAM_VRAM_OFFSET

	thumb_func_start sub_8F03F74
sub_8F03F74: @ 0x08F03F74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08F03FC0 @ =gUnknown_03000784
	mov sb, r0
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldrb r7, [r0, #6]
	ldrb r6, [r0, #7]
	ldr r1, _08F03FC4 @ =gGameInfo
	mov r8, r1
	movs r4, #0x80
	adds r0, r7, #0
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r6, #3
	adds r0, r0, r1
	movs r1, #0x88
	lsls r1, r1, #2
	add r1, r8
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r2, #7
	ands r2, r6
	adds r5, r1, #0
	lsls r5, r2
	ands r5, r4
	cmp r5, #0
	beq _08F03FCC
	ldr r0, _08F03FC8 @ =0x000003A1
	bl DrawTextWithId
	b _08F040C2
	.align 2, 0
_08F03FC0: .4byte gUnknown_03000784
_08F03FC4: .4byte gGameInfo
_08F03FC8: .4byte 0x000003A1
_08F03FCC:
	adds r0, r4, #0
	asrs r0, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0xa
	bl PlaySfxById1
	ldr r4, _08F04074 @ =gUnknown_0300150C
	mov r2, sb
	ldr r0, [r2]
	str r0, [r4]
	bl sub_8F03128
	str r5, [r4]
	ldr r0, _08F04078 @ =0x00000399
	bl DrawTextWithId
	movs r0, #0x7f
	ands r0, r7
	cmp r0, #0
	beq _08F040BC
	bl SelectItem
	ldr r0, _08F0407C @ =gUnknown_030007D8
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08F04080 @ =0x0000039A
	bl DrawTextWithId
	movs r3, #0
	movs r0, #8
	add r0, r8
	mov ip, r0
_08F04012:
	mov r1, ip
	adds r0, r3, r1
	ldrb r4, [r0]
	subs r1, r4, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0403C
	movs r2, #0
	lsls r1, r1, #6
	ldr r5, _08F04084 @ =gUnknown_030031F0
_08F04028:
	adds r0, r2, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0408C
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F04028
_08F0403C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F04012
	movs r2, #0x80
	ands r7, r2
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x1a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r6, #3
	adds r0, r0, r1
	movs r1, #0x88
	lsls r1, r1, #2
	add r1, r8
	adds r0, r0, r1
	movs r1, #7
	ands r6, r1
	asrs r2, r6
	ldrb r1, [r0]
	bics r1, r2
	strb r1, [r0]
	ldr r0, _08F04088 @ =0x0000039D
	bl DrawTextWithId
	b _08F040C2
	.align 2, 0
_08F04074: .4byte gUnknown_0300150C
_08F04078: .4byte 0x00000399
_08F0407C: .4byte gUnknown_030007D8
_08F04080: .4byte 0x0000039A
_08F04084: .4byte gUnknown_030031F0
_08F04088: .4byte 0x0000039D
_08F0408C:
	ldr r0, _08F040B0 @ =gCurrentCharacterId
	strb r4, [r0]
	adds r0, r4, #0
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r2, r0
	adds r0, r0, r5
	ldr r1, _08F040B4 @ =gCurrentItemId
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _08F040B8 @ =0x0000039B
	bl DrawTextWithId
	movs r0, #6
	bl PlaySfxById1
	b _08F040C2
	.align 2, 0
_08F040B0: .4byte gCurrentCharacterId
_08F040B4: .4byte gCurrentItemId
_08F040B8: .4byte 0x0000039B
_08F040BC:
	ldr r0, _08F040D8 @ =0x000003A1
	bl DrawTextWithId
_08F040C2:
	ldr r1, _08F040DC @ =gUnknown_03003170
	movs r0, #1
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F040D8: .4byte 0x000003A1
_08F040DC: .4byte gUnknown_03003170

	thumb_func_start sub_8F040E0
sub_8F040E0: @ 0x08F040E0
	push {r4, r5, lr}
	ldr r0, _08F04120 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _08F04124 @ =0x000003FF
	adds r0, r2, #0
	adds r4, r0, #0
	bics r4, r1
	adds r5, r4, #0
	cmp r4, #0xf
	bne _08F040F8
	bl sub_8F0ACB8
_08F040F8:
	movs r0, #0xc1
	lsls r0, r0, #2
	cmp r4, r0
	bne _08F04104
	bl sub_8F0ABD8
_08F04104:
	ldr r1, _08F04128 @ =gUnknown_030007CC
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	cmp r5, #0
	beq _08F04134
	ldr r1, _08F0412C @ =gUnknown_03002964
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08F04130 @ =gUnknown_030007C4
	movs r0, #0
	strh r0, [r1]
	b _08F0414A
	.align 2, 0
_08F04120: .4byte 0x04000130
_08F04124: .4byte 0x000003FF
_08F04128: .4byte gUnknown_030007CC
_08F0412C: .4byte gUnknown_03002964
_08F04130: .4byte gUnknown_030007C4
_08F04134:
	ldr r3, _08F04158 @ =gUnknown_030007C4
	ldrh r2, [r3]
	ldr r0, _08F0415C @ =0x00002A2F
	cmp r2, r0
	bhi _08F0414A
	ldr r0, _08F04160 @ =gUnknown_03002964
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	adds r0, r2, #1
	strh r0, [r3]
_08F0414A:
	bl m4aSoundMain
	bl VBlankIntrWait
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F04158: .4byte gUnknown_030007C4
_08F0415C: .4byte 0x00002A2F
_08F04160: .4byte gUnknown_03002964

	thumb_func_start DelayByAmount
DelayByAmount: @ 0x08F04164
	push {r4, r5, lr}
	adds r4, r0, #0
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08F04182
	adds r5, r0, #0
_08F04174:
	bl sub_8F040E0
	bl UpdateInput
	subs r4, #1
	cmp r4, r5
	bne _08F04174
_08F04182:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start UpdateBg0Tilemap
UpdateBg0Tilemap: @ 0x08F04188
	push {lr}
	bl sub_8F040E0
	ldr r1, _08F041A8 @ =0x040000D4
	ldr r0, _08F041AC @ =gBg0TilemapBuffer
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F041B0 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl UpdateInput
	pop {r0}
	bx r0
	.align 2, 0
_08F041A8: .4byte 0x040000D4
_08F041AC: .4byte gBg0TilemapBuffer
_08F041B0: .4byte 0x84000200

	thumb_func_start WaitForAnyButtonPress
WaitForAnyButtonPress: @ 0x08F041B4
	push {r4, r5, lr}
	ldr r4, _08F041DC @ =gUnknown_030007A8
	ldr r0, _08F041E0 @ =0x000003FF
	adds r5, r0, #0
_08F041BC:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F041D0
	bl UpdateBg0Tilemap
	ldr r0, _08F041E4 @ =gKeysDown
	ldrh r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _08F041BC
_08F041D0:
	movs r0, #0
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F041DC: .4byte gUnknown_030007A8
_08F041E0: .4byte 0x000003FF
_08F041E4: .4byte gKeysDown

	thumb_func_start WaitForActionButtonPress
WaitForActionButtonPress: @ 0x08F041E8
	push {r4, r5, lr}
	ldr r4, _08F04210 @ =gUnknown_030007A8
	ldr r0, _08F04214 @ =0x00000207
	adds r5, r0, #0
_08F041F0:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F04204
	bl UpdateBg0Tilemap
	ldr r0, _08F04218 @ =gKeysDown
	ldrh r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _08F041F0
_08F04204:
	movs r0, #0
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F04210: .4byte gUnknown_030007A8
_08F04214: .4byte 0x00000207
_08F04218: .4byte gKeysDown

	thumb_func_start OpenCommandMenu
OpenCommandMenu: @ 0x08F0421C
	push {lr}
	ldr r0, _08F0423C @ =gUnknown_03001504
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl HandleCommandMenu
	subs r0, #1
	cmp r0, #5
	bhi _08F04298
	lsls r0, r0, #2
	ldr r1, _08F04240 @ =_08F04244
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0423C: .4byte gUnknown_03001504
_08F04240: .4byte _08F04244
_08F04244: @ jump table
	.4byte _08F0425C @ case 0
	.4byte _08F0427C @ case 1
	.4byte _08F04282 @ case 2
	.4byte _08F04288 @ case 3
	.4byte _08F0428E @ case 4
	.4byte _08F04294 @ case 5
_08F0425C:
	bl TalkAction
	ldr r0, _08F04274 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0426E
	ldr r0, _08F04278 @ =0x00000385
	bl DrawTextWithId
_08F0426E:
	bl WaitForActionButtonPress
	b _08F04298
	.align 2, 0
_08F04274: .4byte gUnknown_03003170
_08F04278: .4byte 0x00000385
_08F0427C:
	bl CheckAction
	b _08F04298
_08F04282:
	bl PSIMenu
	b _08F04298
_08F04288:
	bl GoodsMenu
	b _08F04298
_08F0428E:
	bl HandleStatusMenu
	b _08F04298
_08F04294:
	bl HandleMap
_08F04298:
	bl sub_8F0B040
	pop {r0}
	bx r0

	thumb_func_start HandleLButtonPress
HandleLButtonPress: @ 0x08F042A0
	push {lr}
	movs r0, #1
	bl HandleCommandMenu
	bl TalkAction
	ldr r0, _08F042C0 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F042C4
	movs r0, #2
	bl HandleCommandMenu
	bl CheckAction
	b _08F042C8
	.align 2, 0
_08F042C0: .4byte gUnknown_03003170
_08F042C4:
	bl WaitForActionButtonPress
_08F042C8:
	bl sub_8F0B040
	pop {r0}
	bx r0

	thumb_func_start TalkAction
TalkAction: @ 0x08F042D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08F043C8 @ =gUnknown_03000788
	ldr r0, _08F043CC @ =gUnknown_08F1B670
	ldr r1, _08F043D0 @ =gUnknown_030007A4
	ldrb r1, [r1]
	lsrs r1, r1, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x78
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, _08F043D4 @ =gUnknown_03001508
	ldr r0, _08F043D8 @ =gUnknown_08F1B674
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x58
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
_08F0430C:
	ldr r1, _08F043DC @ =gUnknown_03003170
	movs r0, #0
	strb r0, [r1]
	movs r5, #0
	ldr r1, _08F043E0 @ =gUnknown_03000784
	ldr r0, _08F043E4 @ =gUnknown_03001D40
	str r0, [r1]
	ldrb r0, [r0]
	lsls r2, r2, #0x18
	mov r8, r2
	cmp r0, #0
	beq _08F04398
_08F04324:
	ldr r2, [r1]
	movs r0, #0x80
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08F04376
	ldrb r3, [r2, #0x14]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08F04376
	ldrh r7, [r2, #4]
	subs r1, r6, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r7, [r2, #6]
	subs r0, r4, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bhi _08F04376
	cmp r0, #0x3f
	bhi _08F04376
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08F04364
	ldr r1, _08F043D0 @ =gUnknown_030007A4
	movs r0, #4
	ldrb r1, [r1]
	eors r0, r1
	strb r0, [r2, #0x15]
_08F04364:
	bl sub_8F03128
	movs r0, #0xa
	bl ExecuteScript
	ldr r0, _08F043DC @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F04398
_08F04376:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F04398
	ldr r2, _08F043E0 @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F043E4 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	adds r1, r2, #0
	cmp r0, #0
	bne _08F04324
_08F04398:
	mov r7, r8
	cmp r7, #0
	bne _08F043E8
	ldr r0, _08F043DC @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F043E8
	ldr r0, _08F043D0 @ =gUnknown_030007A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F043E8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F043E8
	adds r0, r4, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #1
	b _08F0430C
	.align 2, 0
_08F043C8: .4byte gUnknown_03000788
_08F043CC: .4byte gUnknown_08F1B670
_08F043D0: .4byte gUnknown_030007A4
_08F043D4: .4byte gUnknown_03001508
_08F043D8: .4byte gUnknown_08F1B674
_08F043DC: .4byte gUnknown_03003170
_08F043E0: .4byte gUnknown_03000784
_08F043E4: .4byte gUnknown_03001D40
_08F043E8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CheckAction
CheckAction: @ 0x08F043F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08F0448C @ =gUnknown_03000788
	ldr r0, _08F04490 @ =gUnknown_08F1B670
	ldr r1, _08F04494 @ =gUnknown_030007A4
	ldrb r1, [r1]
	lsrs r1, r1, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x78
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, _08F04498 @ =gUnknown_03001508
	ldr r0, _08F0449C @ =gUnknown_08F1B674
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x58
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
_08F04430:
	ldr r2, _08F044A0 @ =gUnknown_03003170
	movs r0, #0
	strb r0, [r2]
	movs r5, #0
	ldr r1, _08F044A4 @ =gUnknown_03000784
	ldr r0, _08F044A8 @ =gUnknown_03001D40
	str r0, [r1]
	ldrb r0, [r0]
	adds r7, r2, #0
	adds r2, r1, #0
	lsls r3, r3, #0x18
	mov r8, r3
	cmp r0, #0
	beq _08F044DA
_08F0444C:
	ldr r2, [r2]
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08F044BA
	adds r3, r1, #0
	cmp r3, #0x20
	beq _08F04468
	movs r0, #0x40
	ldrb r1, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08F044BA
_08F04468:
	ldrh r0, [r2, #4]
	subs r1, r6, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r2, #6]
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bhi _08F044BA
	cmp r0, #0x3f
	bhi _08F044BA
	cmp r3, #0x20
	beq _08F044AC
	movs r0, #0xb
	bl ExecuteScript
	b _08F044B0
	.align 2, 0
_08F0448C: .4byte gUnknown_03000788
_08F04490: .4byte gUnknown_08F1B670
_08F04494: .4byte gUnknown_030007A4
_08F04498: .4byte gUnknown_03001508
_08F0449C: .4byte gUnknown_08F1B674
_08F044A0: .4byte gUnknown_03003170
_08F044A4: .4byte gUnknown_03000784
_08F044A8: .4byte gUnknown_03001D40
_08F044AC:
	bl sub_8F03F74
_08F044B0:
	ldr r0, _08F04508 @ =gUnknown_03003170
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _08F044DA
_08F044BA:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F044DA
	ldr r2, _08F0450C @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F04510 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0444C
_08F044DA:
	mov r3, r8
	cmp r3, #0
	bne _08F04518
	ldrb r0, [r7]
	cmp r0, #0
	beq _08F044E8
	b _08F045F2
_08F044E8:
	ldr r0, _08F04514 @ =gUnknown_030007A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F04518
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F04518
	adds r0, r4, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #1
	b _08F04430
	.align 2, 0
_08F04508: .4byte gUnknown_03003170
_08F0450C: .4byte gUnknown_03000784
_08F04510: .4byte gUnknown_03001D40
_08F04514: .4byte gUnknown_030007A4
_08F04518:
	ldr r0, _08F045B0 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F045F2
	movs r5, #0
	ldr r0, _08F045B4 @ =gUnknown_03000784
	ldr r1, _08F045B8 @ =gUnknown_03001D40
	str r1, [r0]
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	beq _08F04596
_08F04530:
	ldr r2, [r2]
	movs r0, #0x80
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08F04576
	movs r0, #0x40
	ldrb r3, [r2, #0x14]
	ands r0, r3
	cmp r0, #0
	beq _08F04576
	ldr r0, _08F045BC @ =gUnknown_03000788
	ldrh r3, [r2, #4]
	ldrh r0, [r0]
	subs r1, r3, r0
	adds r1, #0x40
	lsls r1, r1, #0x10
	ldr r0, _08F045C0 @ =gUnknown_03001508
	ldrh r2, [r2, #6]
	ldrh r0, [r0]
	subs r0, r2, r0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x13
	cmp r1, r0
	bhi _08F04576
	movs r0, #0xb0
	lsls r0, r0, #2
	cmp r4, r0
	bhi _08F04576
	movs r0, #0x34
	bl ExecuteScript
_08F04576:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F04596
	ldr r2, _08F045B4 @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F045B8 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F04530
_08F04596:
	ldr r0, _08F045B0 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F045F2
	ldr r0, _08F045C4 @ =gUnknown_03002440
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F045C8
	movs r0, #0xdc
	lsls r0, r0, #3
	bl DrawTextWithId
	b _08F045F2
	.align 2, 0
_08F045B0: .4byte gUnknown_03003170
_08F045B4: .4byte gUnknown_03000784
_08F045B8: .4byte gUnknown_03001D40
_08F045BC: .4byte gUnknown_03000788
_08F045C0: .4byte gUnknown_03001508
_08F045C4: .4byte gUnknown_03002440
_08F045C8:
	ldr r1, _08F045E0 @ =gGameInfo
	ldr r3, _08F045E4 @ =0x0000021F
	adds r1, r1, r3
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F045EC
	ldr r0, _08F045E8 @ =0x000006E1
	bl DrawTextWithId
	b _08F045F2
	.align 2, 0
_08F045E0: .4byte gGameInfo
_08F045E4: .4byte 0x0000021F
_08F045E8: .4byte 0x000006E1
_08F045EC:
	ldr r0, _08F04600 @ =0x00000387
	bl DrawTextWithId
_08F045F2:
	bl WaitForActionButtonPress
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F04600: .4byte 0x00000387

	thumb_func_start PSIMenu
PSIMenu: @ 0x08F04604
	push {r4, r5, lr}
_08F04606:
	ldr r4, _08F04620 @ =gUnknown_03001504
	movs r0, #0
	strb r0, [r4]
	bl SelectPSI
	adds r2, r0, #0
	cmp r2, #0
	bgt _08F04624
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _08F046A8
	.align 2, 0
_08F04620: .4byte gUnknown_03001504
_08F04624:
	ldr r5, _08F04648 @ =gGameInfo
	ldr r3, _08F0464C @ =gUnknown_03003174
	ldrb r0, [r3]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r5
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04654
	ldr r0, _08F04650 @ =0x000006D7
	bl DrawTextWithId
	bl WaitForActionButtonPress
	b _08F046A8
	.align 2, 0
_08F04648: .4byte gGameInfo
_08F0464C: .4byte gUnknown_03003174
_08F04650: .4byte 0x000006D7
_08F04654:
	ldr r1, _08F04690 @ =gCurrentItemId
	adds r0, r2, #0
	subs r0, #0x40
	strb r0, [r1]
	lsls r1, r2, #3
	ldr r0, _08F04694 @ =gUnknown_08F5C51C
	adds r1, r1, r0
	ldrb r0, [r3]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r5
	adds r0, #0x56
	ldr r2, [r1]
	ldr r3, [r1, #4]
	ldrb r1, [r1, #7]
	ldrh r0, [r0]
	cmp r1, r0
	bhi _08F0469C
	ldr r1, _08F04698 @ =gItemEffectHandlers
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F04606
	b _08F046A4
	.align 2, 0
_08F04690: .4byte gCurrentItemId
_08F04694: .4byte gUnknown_08F5C51C
_08F04698: .4byte gItemEffectHandlers
_08F0469C:
	movs r0, #0xd9
	lsls r0, r0, #3
	bl DrawTextWithId
_08F046A4:
	bl WaitForActionButtonPress
_08F046A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start GoodsMenu
GoodsMenu: @ 0x08F046B0
	push {r4, lr}
_08F046B2:
	ldr r4, _08F046C8 @ =gUnknown_03001504
	movs r0, #0
	strb r0, [r4]
	bl PickAnItemFromInventory
	cmp r0, #0
	bgt _08F046CC
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _08F0476C
	.align 2, 0
_08F046C8: .4byte gUnknown_03001504
_08F046CC:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SelectItem
	ldr r1, _08F046F8 @ =gCurrentCharacterId
	ldr r0, _08F046FC @ =gUnknown_03003174
	ldrb r0, [r0]
_08F046DA:
	strb r0, [r1]
_08F046DC:
	ldr r0, _08F04700 @ =gUnknown_03001504
	movs r1, #0
	strb r1, [r0]
	bl HandleGoodsMenuInput
	subs r0, #1
	cmp r0, #4
	bhi _08F046B2
	lsls r0, r0, #2
	ldr r1, _08F04704 @ =_08F04708
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F046F8: .4byte gCurrentCharacterId
_08F046FC: .4byte gUnknown_03003174
_08F04700: .4byte gUnknown_03001504
_08F04704: .4byte _08F04708
_08F04708: @ jump table
	.4byte _08F0471C @ case 0
	.4byte _08F04722 @ case 1
	.4byte _08F04728 @ case 2
	.4byte _08F0472E @ case 3
	.4byte _08F04734 @ case 4
_08F0471C:
	bl Goods_Use
	b _08F04764
_08F04722:
	bl Goods_Eat
	b _08F04764
_08F04728:
	bl Goods_Give
	b _08F04764
_08F0472E:
	bl Goods_Drop
	b _08F04764
_08F04734:
	ldr r0, _08F04758 @ =gCurrentItemId
	ldrb r0, [r0]
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r0, r1
	bl DrawTextWithId
	bl WaitForActionButtonPress
	ldr r1, _08F0475C @ =gKeysDown
	movs r0, #6
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F04764
	ldr r1, _08F04760 @ =gTextPlaySfx
	movs r0, #0
	b _08F046DA
	.align 2, 0
_08F04758: .4byte gCurrentItemId
_08F0475C: .4byte gKeysDown
_08F04760: .4byte gTextPlaySfx
_08F04764:
	ldr r0, _08F04774 @ =gUnknown_03001504
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F046DC
_08F0476C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F04774: .4byte gUnknown_03001504

	thumb_func_start sub_8F04778
sub_8F04778: @ 0x08F04778
	push {r4, lr}
	bl sub_8F03128
	ldr r2, _08F047A8 @ =gUnknown_03000784
	ldr r1, _08F047AC @ =gUnknown_03000850
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
	ldr r4, _08F047B0 @ =gUnknown_03003170
	strb r0, [r4]
	movs r0, #0x35
	bl ExecuteScript
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F047A2
	bl WaitForActionButtonPress
	bl sub_8F0B040
_08F047A2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F047A8: .4byte gUnknown_03000784
_08F047AC: .4byte gUnknown_03000850
_08F047B0: .4byte gUnknown_03003170

	thumb_func_start sub_8F047B4
sub_8F047B4: @ 0x08F047B4
	push {r4, lr}
	ldr r4, _08F047D8 @ =gUnknown_03003170
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x40
	bl ExecuteScript
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F047D0
	bl WaitForActionButtonPress
	bl sub_8F0B040
_08F047D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F047D8: .4byte gUnknown_03003170

	thumb_func_start Goods_Use
Goods_Use: @ 0x08F047DC
	push {r4, r5, r6, r7, lr}
	ldr r1, _08F0480C @ =gGameInfo
	ldr r2, _08F04810 @ =gUnknown_03003174
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	adds r6, r2, #0
	ldr r7, _08F04814 @ =gCurrentItemId
	cmp r1, #0
	beq _08F0481C
	ldrb r0, [r7]
	cmp r0, #3
	beq _08F0481C
	ldr r0, _08F04818 @ =0x000006D7
	bl DrawTextWithId
	bl WaitForActionButtonPress
	b _08F0490A
	.align 2, 0
_08F0480C: .4byte gGameInfo
_08F04810: .4byte gUnknown_03003174
_08F04814: .4byte gCurrentItemId
_08F04818: .4byte 0x000006D7
_08F0481C:
	ldrb r1, [r7]
	lsls r0, r1, #3
	ldr r1, _08F04878 @ =gItemData
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r5, [r0, #4]
	lsrs r3, r4, #0x18
	cmp r3, #0
	beq _08F048A8
	lsrs r1, r4, #0x10
	ldr r0, _08F0487C @ =gCanEquipItemMask
	ldrb r2, [r6]
	adds r0, r2, r0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F0489C
	adds r0, r2, #0
	bl GetPositionOfCurrentItemFromInventoryOrCloset
	adds r3, r0, #0
	cmp r3, #0
	blt _08F04906
	lsrs r1, r4, #0x1e
	ldr r4, _08F04880 @ =gGameInfo
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x68
	adds r1, r1, r0
	ldrb r2, [r1]
	ldrb r0, [r7]
	strb r0, [r1]
	cmp r2, #0
	beq _08F04884
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r3, r0
	adds r1, r4, #0
	adds r1, #0x60
	adds r0, r0, r1
	strb r2, [r0]
	b _08F0488A
	.align 2, 0
_08F04878: .4byte gItemData
_08F0487C: .4byte gCanEquipItemMask
_08F04880: .4byte gGameInfo
_08F04884:
	ldrb r0, [r6]
	bl RemoveItemFromInventory
_08F0488A:
	movs r0, #4
	bl PlaySfxById2
	ldr r0, _08F04898 @ =0x00000391
	bl DrawTextWithId
	b _08F04906
	.align 2, 0
_08F04898: .4byte 0x00000391
_08F0489C:
	ldr r0, _08F048A4 @ =0x00000392
	bl DrawTextWithId
	b _08F04906
	.align 2, 0
_08F048A4: .4byte 0x00000392
_08F048A8:
	lsls r2, r4, #8
	lsrs r1, r2, #0x18
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _08F048FC
	ldr r0, _08F048E0 @ =gCanEquipItemMask
	ldrb r6, [r6]
	adds r0, r6, r0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F048F0
	ldr r0, _08F048E4 @ =gConsumableType
	strb r3, [r0]
	ldr r1, _08F048E8 @ =gItemEffectHandlers
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _08F048EC @ =gUnknown_03001504
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0490A
	b _08F04906
	.align 2, 0
_08F048E0: .4byte gCanEquipItemMask
_08F048E4: .4byte gConsumableType
_08F048E8: .4byte gItemEffectHandlers
_08F048EC: .4byte gUnknown_03001504
_08F048F0:
	ldr r0, _08F048F8 @ =0x0000038F
	bl DrawTextWithId
	b _08F04906
	.align 2, 0
_08F048F8: .4byte 0x0000038F
_08F048FC:
	ldr r0, _08F04910 @ =0x0000038E
	bl DrawTextWithId
	bl NothingHappened
_08F04906:
	bl WaitForActionButtonPress
_08F0490A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F04910: .4byte 0x0000038E

	thumb_func_start Goods_Eat
Goods_Eat: @ 0x08F04914
	push {r4, r5, lr}
	ldr r1, _08F0493C @ =gGameInfo
	ldr r0, _08F04940 @ =gUnknown_03003174
	ldrb r5, [r0]
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04948
	ldr r0, _08F04944 @ =0x000006D7
	bl DrawTextWithId
	bl WaitForActionButtonPress
	b _08F049BC
	.align 2, 0
_08F0493C: .4byte gGameInfo
_08F04940: .4byte gUnknown_03003174
_08F04944: .4byte 0x000006D7
_08F04948:
	ldr r0, _08F0498C @ =gCurrentItemId
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08F04990 @ =gItemData
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r4, [r0, #4]
	lsls r2, r3, #8
	lsrs r1, r2, #0x18
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F049B0
	ldr r0, _08F04994 @ =gCanEquipItemMask
	adds r0, r5, r0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F049A4
	ldr r1, _08F04998 @ =gConsumableType
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08F0499C @ =gItemEffectHandlers
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _08F049A0 @ =gUnknown_03001504
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F049BC
	b _08F049B8
	.align 2, 0
_08F0498C: .4byte gCurrentItemId
_08F04990: .4byte gItemData
_08F04994: .4byte gCanEquipItemMask
_08F04998: .4byte gConsumableType
_08F0499C: .4byte gItemEffectHandlers
_08F049A0: .4byte gUnknown_03001504
_08F049A4:
	ldr r0, _08F049AC @ =0x0000038F
	bl DrawTextWithId
	b _08F049B8
	.align 2, 0
_08F049AC: .4byte 0x0000038F
_08F049B0:
	movs r0, #0xe4
	lsls r0, r0, #2
	bl DrawTextWithId
_08F049B8:
	bl WaitForActionButtonPress
_08F049BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Goods_Give
Goods_Give: @ 0x08F049C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F049DC @ =gCurrentItemId
	ldrb r0, [r0]
	cmp r0, #3
	bne _08F049E4
	ldr r0, _08F049E0 @ =0x00000396
	bl DrawTextWithId
	b _08F04B2A
	.align 2, 0
_08F049DC: .4byte gCurrentItemId
_08F049E0: .4byte 0x00000396
_08F049E4:
	bl SelectCharacter
	adds r4, r0, #0
	subs r0, r4, #1
	cmp r0, #4
	bls _08F04A00
	ldr r1, _08F049FC @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F04B2E
	.align 2, 0
_08F049FC: .4byte gUnknown_03001504
_08F04A00:
	ldr r1, _08F04A80 @ =gCurrentCharacterId
	strb r4, [r1]
	movs r4, #0
	ldr r2, _08F04A84 @ =gGameInfo
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #6
	adds r3, r2, #0
	adds r3, #0x60
	adds r0, r0, r3
	ldrb r0, [r0]
	mov r8, r1
	adds r7, r2, #0
	ldr r6, _08F04A88 @ =gUnknown_03003174
	cmp r0, #0
	beq _08F04A38
	adds r2, r3, #0
_08F04A22:
	adds r4, #1
	cmp r4, #7
	bgt _08F04A38
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F04A22
_08F04A38:
	adds r0, r6, #0
	mov r5, r8
	ldrb r1, [r0]
	ldrb r2, [r5]
	cmp r1, r2
	bne _08F04A94
	ldrb r0, [r0]
	bl RemoveItemFromInventory
	cmp r0, #0
	blt _08F04B2A
	ldr r2, _08F04A84 @ =gGameInfo
	ldrb r1, [r5]
	lsls r0, r1, #6
	subs r0, #0x41
	adds r0, r4, r0
	adds r1, r2, #0
	adds r1, #0x60
	adds r0, r0, r1
	ldr r1, _08F04A8C @ =gCurrentItemId
	ldrb r1, [r1]
	strb r1, [r0]
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r2
	adds r0, #0x41
	movs r1, #0xc0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F04ADC
	ldr r0, _08F04A90 @ =0x000006D6
	bl DrawTextWithId
	b _08F04B2A
	.align 2, 0
_08F04A80: .4byte gCurrentCharacterId
_08F04A84: .4byte gGameInfo
_08F04A88: .4byte gUnknown_03003174
_08F04A8C: .4byte gCurrentItemId
_08F04A90: .4byte 0x000006D6
_08F04A94:
	cmp r4, #7
	bgt _08F04B24
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r1, r7, #0
	adds r1, #0x60
	adds r0, r0, r1
	ldr r1, _08F04AE4 @ =gCurrentItemId
	ldrb r1, [r1]
	strb r1, [r0]
	ldrb r0, [r6]
	bl RemoveItemFromInventory
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r7
	adds r0, #0x41
	movs r2, #0xc0
	adds r1, r2, #0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04AF6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r7
	adds r0, #0x41
	adds r1, r2, #0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04AEC
_08F04ADC:
	ldr r0, _08F04AE8 @ =0x000006AA
	bl DrawTextWithId
	b _08F04B2A
	.align 2, 0
_08F04AE4: .4byte gCurrentItemId
_08F04AE8: .4byte 0x000006AA
_08F04AEC:
	movs r0, #0xd5
	lsls r0, r0, #3
	bl DrawTextWithId
	b _08F04B2A
_08F04AF6:
	mov r1, r8
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r7
	adds r0, #0x41
	adds r1, r2, #0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04B18
	ldr r0, _08F04B14 @ =0x000006A7
	bl DrawTextWithId
	b _08F04B2A
	.align 2, 0
_08F04B14: .4byte 0x000006A7
_08F04B18:
	ldr r0, _08F04B20 @ =0x00000395
	bl DrawTextWithId
	b _08F04B2A
	.align 2, 0
_08F04B20: .4byte 0x00000395
_08F04B24:
	ldr r0, _08F04B38 @ =0x00000397
	bl DrawTextWithId
_08F04B2A:
	bl WaitForActionButtonPress
_08F04B2E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F04B38: .4byte 0x00000397

	thumb_func_start Goods_Drop
Goods_Drop: @ 0x08F04B3C
	push {r4, lr}
	ldr r0, _08F04B5C @ =gCurrentItemId
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, _08F04B60 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x80
	ldrb r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _08F04B64
	movs r0, #0xe5
	lsls r0, r0, #2
	bl DrawTextWithId
	b _08F04B9E
	.align 2, 0
_08F04B5C: .4byte gCurrentItemId
_08F04B60: .4byte gItemData
_08F04B64:
	ldr r4, _08F04B8C @ =gUnknown_03003174
	ldrb r0, [r4]
	bl RemoveItemFromInventory
	ldr r1, _08F04B90 @ =gGameInfo
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	movs r1, #0xc0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04B98
	ldr r0, _08F04B94 @ =0x000006A9
	bl DrawTextWithId
	b _08F04B9E
	.align 2, 0
_08F04B8C: .4byte gUnknown_03003174
_08F04B90: .4byte gGameInfo
_08F04B94: .4byte 0x000006A9
_08F04B98:
	ldr r0, _08F04BA8 @ =0x00000393
	bl DrawTextWithId
_08F04B9E:
	bl WaitForActionButtonPress
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F04BA8: .4byte 0x00000393

	thumb_func_start RemoveItemFromInventory
RemoveItemFromInventory: @ 0x08F04BAC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	bl GetPositionOfCurrentItemFromInventoryOrCloset
	adds r2, r0, #0
	cmp r2, #0
	blt _08F04BF2
	ldr r5, _08F04BFC @ =gGameInfo
	subs r3, r4, #1
	ldr r4, _08F04C00 @ =gUnknown_030007D8
	cmp r2, #6
	bgt _08F04BDE
	lsls r0, r3, #6
	adds r1, r5, #0
	adds r1, #0x60
	adds r0, r0, r1
	adds r1, r2, r0
_08F04BD2:
	ldrb r0, [r1, #1]
	strb r0, [r1]
	adds r1, #1
	adds r2, #1
	cmp r2, #6
	ble _08F04BD2
_08F04BDE:
	lsls r0, r3, #6
	adds r0, r2, r0
	adds r1, r5, #0
	adds r1, #0x60
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	subs r1, #1
	adds r0, r1, #0
	strh r0, [r4]
_08F04BF2:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08F04BFC: .4byte gGameInfo
_08F04C00: .4byte gUnknown_030007D8

	thumb_func_start SelectItem
SelectItem: @ 0x08F04C04
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08F04C1C @ =gCurrentItemId
	strb r1, [r0]
	lsls r0, r1, #0x18
	cmp r0, #0
	blt _08F04C28
	ldr r2, _08F04C20 @ =gTempNumber
	lsls r0, r1, #3
	ldr r1, _08F04C24 @ =gItemData
	b _08F04C2E
	.align 2, 0
_08F04C1C: .4byte gCurrentItemId
_08F04C20: .4byte gTempNumber
_08F04C24: .4byte gItemData
_08F04C28:
	ldr r2, _08F04C38 @ =gTempNumber
	lsls r0, r1, #3
	ldr r1, _08F04C3C @ =gTeleportLocations
_08F04C2E:
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	strh r0, [r2]
	bx lr
	.align 2, 0
_08F04C38: .4byte gTempNumber
_08F04C3C: .4byte gTeleportLocations

	thumb_func_start GetPositionOfCurrentItemFromInventoryOrCloset
GetPositionOfCurrentItemFromInventoryOrCloset: @ 0x08F04C40
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08F04C94
	ldr r2, _08F04C6C @ =gCurrentItemId
	ldr r1, _08F04C70 @ =gGameInfo
	ldr r6, _08F04C74 @ =gUnknown_030007D8
	movs r3, #0
	ldrsh r4, [r6, r3]
	subs r0, #1
	lsls r5, r0, #6
	adds r0, r4, r5
	adds r1, #0x60
	adds r0, r0, r1
	ldrb r3, [r2]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08F04C78
	adds r0, r4, #0
	b _08F04CDC
	.align 2, 0
_08F04C6C: .4byte gCurrentItemId
_08F04C70: .4byte gGameInfo
_08F04C74: .4byte gUnknown_030007D8
_08F04C78:
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r6]
	movs r2, #0
	adds r0, r5, r1
_08F04C84:
	ldrb r5, [r0]
	cmp r3, r5
	beq _08F04CAE
	adds r0, #1
	adds r2, #1
	cmp r2, #7
	ble _08F04C84
	b _08F04CD8
_08F04C94:
	ldr r1, _08F04CB4 @ =gCurrentItemId
	ldr r0, _08F04CB8 @ =gGameInfo
	ldr r4, _08F04CBC @ =gUnknown_030007D8
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r5, #0xac
	lsls r5, r5, #2
	adds r3, r0, r5
	adds r0, r2, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08F04CC0
_08F04CAE:
	adds r0, r2, #0
	b _08F04CDC
	.align 2, 0
_08F04CB4: .4byte gCurrentItemId
_08F04CB8: .4byte gGameInfo
_08F04CBC: .4byte gUnknown_030007D8
_08F04CC0:
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r4]
	movs r2, #0
_08F04CCA:
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, r0
	beq _08F04CAE
	adds r2, #1
	cmp r2, #0x4f
	ble _08F04CCA
_08F04CD8:
	movs r0, #1
	rsbs r0, r0, #0
_08F04CDC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
