.syntax unified
.section .text
@	thumb_func_start ResetVariablesUponEnteringTown
@ResetVariablesUponEnteringTown: @ 0x08F01254
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
	ldr r2, _08F012F0 @ =gMapPalettes
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
	ldr r1, _08F012F4 @ =gNullTileset
	ldrb r0, [r4, #0xc]
	strb r0, [r1]
	ldr r1, _08F012F8 @ =gNullChunk
	ldrb r0, [r4, #0xe]
	strb r0, [r1]
	movs r0, #0xf
	strb r0, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	ldr r0, _08F012FC @ =gFade_Type
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
_08F012F0: .4byte gMapPalettes
_08F012F4: .4byte gNullTileset
_08F012F8: .4byte gNullChunk
_08F012FC: .4byte gFade_Type
_08F01300: .4byte gUnknown_03001480
_08F01304:
	ldr r0, _08F01350 @ =gUnknown_03001520
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette
_08F0130E:
	bl sub_8F029E0
	ldr r4, _08F01354 @ =gCurrentArea
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
_08F01354: .4byte gCurrentArea
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

.syntax divided
