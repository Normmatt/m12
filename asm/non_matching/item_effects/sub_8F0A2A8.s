.syntax unified
.section .text

@	thumb_func_start sub_8F0A2A8
@sub_8F0A2A8: @ 0x08F0A2A8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08F0A32E
	cmp r0, #2
	bgt _08F0A2BE
	cmp r0, #1
	beq _08F0A2CA
	b _08F0A44E
_08F0A2BE:
	cmp r1, #3
	beq _08F0A390
	cmp r1, #4
	bne _08F0A2C8
	b _08F0A3E6
_08F0A2C8:
	b _08F0A44E
_08F0A2CA:
	movs r5, #0x50
	ldr r7, _08F0A308 @ =0x00000157
	ldr r6, _08F0A30C @ =0x0400001E
_08F0A2D0:
	lsls r5, r5, #0x10
	asrs r4, r5, #0x10
	adds r2, r4, #0
	adds r2, #0xa0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r0, #0xf8
	ands r2, r0
	lsls r2, r2, #3
	ldr r0, _08F0A310 @ =0x06002000
	adds r2, r2, r0
	ldr r0, _08F0A314 @ =gGiegueShipTilemap
	bl sub_8F00F48
	movs r0, #0xff
	ands r0, r4
	strh r0, [r6]
	bl Random
	lsrs r0, r0, #0x1b
	cmp r0, #0
	bne _08F0A318
	bl sub_8F0A464
	movs r0, #3
	bl DelayByAmount
	b _08F0A31E
	.align 2, 0
_08F0A308: .4byte 0x00000157
_08F0A30C: .4byte 0x0400001E
_08F0A310: .4byte 0x06002000
_08F0A314: .4byte gGiegueShipTilemap
_08F0A318:
	movs r0, #4
	bl DelayByAmount
_08F0A31E:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	ble _08F0A2D0
	b _08F0A44E
_08F0A32E:
	movs r5, #0x88
	lsls r5, r5, #1
	lsls r4, r5, #0x10
	ldr r6, _08F0A368 @ =0x0400001E
_08F0A336:
	asrs r4, r4, #0x10
	movs r2, #0xf8
	ands r2, r4
	lsls r2, r2, #3
	ldr r0, _08F0A36C @ =0x06002000
	adds r2, r2, r0
	ldr r0, _08F0A370 @ =gGiegueShipTilemap
	adds r1, r4, #0
	bl sub_8F00F48
	movs r0, #0xff
	ands r0, r4
	strh r0, [r6]
	bl Random
	lsrs r0, r0, #0x1b
	cmp r0, #0
	bne _08F0A374
	bl sub_8F0A464
	movs r0, #3
	bl DelayByAmount
	b _08F0A37A
	.align 2, 0
_08F0A368: .4byte 0x0400001E
_08F0A36C: .4byte 0x06002000
_08F0A370: .4byte gGiegueShipTilemap
_08F0A374:
	movs r0, #4
	bl DelayByAmount
_08F0A37A:
	lsls r0, r5, #0x10
	ldr r1, _08F0A38C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	lsls r4, r5, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0x98
	bgt _08F0A336
	b _08F0A44E
	.align 2, 0
_08F0A38C: .4byte 0xFFFF0000
_08F0A390:
	movs r0, #0x3c
	bl DelayByAmount
	movs r4, #0
	ldr r5, _08F0A3CC @ =0x04000014
_08F0A39A:
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08F0A3AA
	movs r0, #0xa
	bl PlayNoiseSfx
_08F0A3AA:
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	movs r0, #2
	ands r1, r0
	lsls r1, r1, #1
	movs r0, #8
	subs r0, r0, r1
	strh r0, [r5]
	bl Random
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _08F0A3D0
	bl sub_8F0A464
	b _08F0A3D6
	.align 2, 0
_08F0A3CC: .4byte 0x04000014
_08F0A3D0:
	movs r0, #1
	bl DelayByAmount
_08F0A3D6:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _08F0A39A
	b _08F0A44E
_08F0A3E6:
	movs r4, #0
_08F0A3E8:
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08F0A3F6
	bl sub_8F0A464
_08F0A3F6:
	movs r0, #1
	bl DelayByAmount
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _08F0A3E8
	movs r5, #0x98
	ldr r7, _08F0A454 @ =0x0400001E
	ldr r6, _08F0A458 @ =0x000003FF
_08F0A412:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	adds r2, r4, #0
	adds r2, #0xa0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r0, #0xf8
	ands r2, r0
	lsls r2, r2, #3
	ldr r0, _08F0A45C @ =0x06002000
	adds r2, r2, r0
	ldr r0, _08F0A460 @ =gGiegueShipTilemap
	bl sub_8F00F48
	movs r0, #0xff
	ands r0, r4
	strh r0, [r7]
	movs r0, #1
	bl DelayByAmount
	adds r4, #4
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r6
	ble _08F0A412
	movs r0, #0x96
	lsls r0, r0, #1
	bl DelayByAmount
_08F0A44E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0A454: .4byte 0x0400001E
_08F0A458: .4byte 0x000003FF
_08F0A45C: .4byte 0x06002000
_08F0A460: .4byte gGiegueShipTilemap

.syntax divided
