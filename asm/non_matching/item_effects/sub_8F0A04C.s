.syntax unified
.section .text

@	thumb_func_start sub_8F0A04C
@sub_8F0A04C: @ 0x08F0A04C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _08F0A22C @ =gGiegueCliff_BGPal
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	add r4, sp, #0x10
	ldr r1, _08F0A230 @ =giegue_rock_gfx
	adds r0, r4, #0
	movs r2, #0x20
	bl memcpy
	add r5, sp, #0x30
	ldr r1, _08F0A234 @ =gGiegueCliff_PartyPos
	adds r0, r5, #0
	movs r2, #8
	bl memcpy
	movs r0, #0xb
	bl ChangeBgMusic
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08F0A238 @ =giegueship_gfx
	ldr r1, _08F0A23C @ =0x0600E000
	movs r2, #0x80
	lsls r2, r2, #1
	bl BitUnpack
	ldr r1, _08F0A240 @ =0x0600D020
	adds r0, r4, #0
	movs r2, #2
	bl BitUnpack
	ldr r1, _08F0A244 @ =gUnknown_03000808
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	ldr r6, _08F0A248 @ =0xFF900000
_08F0A0AC:
	asrs r1, r6, #0x10
	movs r2, #0xf8
	ands r2, r4
	lsls r2, r2, #3
	ldr r3, _08F0A24C @ =0x06003000
	adds r2, r2, r3
	ldr r0, _08F0A250 @ =gGiegueShipTilemap
	bl sub_8F00F48
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r6, r6, r0
	adds r4, #8
	cmp r4, #0x9f
	ble _08F0A0AC
	ldr r0, _08F0A254 @ =0x06003340
	ldr r1, _08F0A258 @ =0x00002281
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, #2
	ldr r3, _08F0A25C @ =0x00002282
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0x3a
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r4, #0
	ldr r3, _08F0A260 @ =0x0000037F
	lsls r7, r7, #0x10
	ldr r2, _08F0A264 @ =0x06001000
	movs r1, #0
_08F0A0EC:
	adds r0, r4, r2
	strh r1, [r0]
	adds r4, #2
	cmp r4, r3
	ble _08F0A0EC
	ldr r2, _08F0A268 @ =0x000004FF
	cmp r4, r2
	bgt _08F0A10E
	ldr r6, _08F0A264 @ =0x06001000
	ldr r3, _08F0A26C @ =gUnknown_030034C0
_08F0A100:
	adds r1, r4, r6
	ldrh r0, [r3]
	adds r0, #0x10
	strh r0, [r1]
	adds r4, #2
	cmp r4, r2
	ble _08F0A100
_08F0A10E:
	movs r4, #0
_08F0A110:
	asrs r6, r7, #0x10
	adds r2, r6, r4
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r0, #0xf8
	ands r2, r0
	lsls r2, r2, #3
	ldr r0, _08F0A270 @ =0x06002000
	adds r2, r2, r0
	ldr r0, _08F0A250 @ =gGiegueShipTilemap
	bl sub_8F00F48
	adds r4, #8
	cmp r4, #0x9f
	ble _08F0A110
	ldr r0, _08F0A274 @ =0x04000014
	movs r2, #8
	strh r2, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08F0A278 @ =0x0400001A
	ldr r3, _08F0A27C @ =0x0000FFFC
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08F0A280 @ =0x0400001C
	strh r2, [r0]
	adds r1, #4
	movs r0, #0xff
	ands r0, r6
	strh r0, [r1]
	bl sub_8F016EC
	ldr r1, _08F0A284 @ =gUnknown_030007B8
	ldrh r0, [r1]
	mov r8, r0
	ldr r0, _08F0A288 @ =0xFFFFFC00
	add r0, r8
	strh r0, [r1]
	movs r4, #0
	ldr r7, _08F0A28C @ =gGameInfo
	adds r6, r5, #0
_08F0A168:
	adds r0, r7, #0
	adds r0, #8
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0A1AE
	subs r0, #1
	lsls r0, r0, #6
	adds r2, r0, r7
	adds r0, r2, #0
	adds r0, #0x5e
	ldrh r5, [r0]
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F0A196
	adds r0, r5, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08F0A196:
	adds r0, r2, #0
	adds r0, #0x5d
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	ldrb r2, [r6]
	subs r2, #8
	ldrb r3, [r6, #1]
	subs r3, #0x30
	adds r0, r5, #0
	bl sub_8F01700
_08F0A1AE:
	adds r6, #2
	adds r4, #1
	cmp r4, #3
	ble _08F0A168
	ldr r0, _08F0A284 @ =gUnknown_030007B8
	mov r1, r8
	strh r1, [r0]
	bl sub_8F0191C
	ldr r1, _08F0A290 @ =0x040000D4
	ldr r0, _08F0A294 @ =gSpriteBuffer
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0A298 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _08F0A29C @ =gUnknown_03001480
	mov r0, sp
	adds r1, r4, #0
	bl LoadPalette
	ldr r0, _08F0A2A0 @ =gUnknown_08F64564
	adds r1, r4, #0
	adds r1, #8
	bl LoadPalette
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xf0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r5, r4, #0
	movs r4, #0x1f
_08F0A1F6:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r5, #0
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	ldr r0, _08F0A2A4 @ =0x05000200
	adds r1, r5, #0
	adds r1, #8
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	movs r0, #1
	bl DelayByAmount
	subs r4, #1
	cmp r4, #0
	bge _08F0A1F6
	add sp, #0x38
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0A22C: .4byte gGiegueCliff_BGPal
_08F0A230: .4byte giegue_rock_gfx
_08F0A234: .4byte gGiegueCliff_PartyPos
_08F0A238: .4byte giegueship_gfx
_08F0A23C: .4byte 0x0600E000
_08F0A240: .4byte 0x0600D020
_08F0A244: .4byte gUnknown_03000808
_08F0A248: .4byte 0xFF900000
_08F0A24C: .4byte 0x06003000
_08F0A250: .4byte gGiegueShipTilemap
_08F0A254: .4byte 0x06003340
_08F0A258: .4byte 0x00002281
_08F0A25C: .4byte 0x00002282
_08F0A260: .4byte 0x0000037F
_08F0A264: .4byte 0x06001000
_08F0A268: .4byte 0x000004FF
_08F0A26C: .4byte gUnknown_030034C0
_08F0A270: .4byte 0x06002000
_08F0A274: .4byte 0x04000014
_08F0A278: .4byte 0x0400001A
_08F0A27C: .4byte 0x0000FFFC
_08F0A280: .4byte 0x0400001C
_08F0A284: .4byte gUnknown_030007B8
_08F0A288: .4byte 0xFFFFFC00
_08F0A28C: .4byte gGameInfo
_08F0A290: .4byte 0x040000D4
_08F0A294: .4byte gSpriteBuffer
_08F0A298: .4byte 0x84000100
_08F0A29C: .4byte gUnknown_03001480
_08F0A2A0: .4byte gUnknown_08F64564
_08F0A2A4: .4byte 0x05000200

.syntax divided
