#ifdef NDS_VERSION
.equ OAM_VRAM_OFFSET, 0x00400000
#else
.equ OAM_VRAM_OFFSET, 0x00010000
#endif

.syntax unified
.section .text
@	thumb_func_start sub_8F01388
@sub_8F01388: @ 0x08F01388
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
	ldr r1, _08F01464 @ =tileset_gfxs
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
	ldr r1, _08F01464 @ =tileset_gfxs
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
	ldr r1, _08F01480 @ =gCurrentArea
	movs r0, #0x3f
	ldrb r4, [r4, #1]
	ands r0, r4
	ldrb r3, [r1]
	cmp r3, r0
	beq _08F01450
	strb r0, [r1]
	ldr r0, _08F01484 @ =gAreaChrTable
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
	ldr r2, _08F0148C @ =characters_gfxs
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
_08F01464: .4byte tileset_gfxs
_08F01468: .4byte 0x0600C000
_08F0146C: .4byte gUnknown_03000848
_08F01470: .4byte gUnknown_03000C68
_08F01474: .4byte 0x0600C800
_08F01478: .4byte gUnknown_0300317C
_08F0147C: .4byte gUnknown_030007F8
_08F01480: .4byte gCurrentArea
_08F01484: .4byte gAreaChrTable
_08F01488: .4byte gUnknown_030007D0
_08F0148C: .4byte characters_gfxs
_08F01490: .4byte 0x06001000+OAM_VRAM_OFFSET

.syntax divided
