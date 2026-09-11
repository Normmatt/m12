.syntax unified
.section .text
@	thumb_func_start sub_8F02020
@sub_8F02020: @ 0x08F02020
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
	ldr r1, _08F020A0 @ =gNullChunk
	ldr r2, _08F020A4 @ =gMapDataList
	b _08F020BE
	.align 2, 0
_08F02088: .4byte gUnknown_0300080C
_08F0208C: .4byte gUnknown_03003184
_08F02090: .4byte 0x0000FFC0
_08F02094: .4byte gUnknown_0300079C
_08F02098: .4byte gUnknown_030007F8
_08F0209C: .4byte 0x0000FF3F
_08F020A0: .4byte gNullChunk
_08F020A4: .4byte gMapDataList
_08F020A8:
	ldr r2, _08F020D4 @ =gMapDataList
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
_08F020D4: .4byte gMapDataList
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
	ldr r2, _08F02114 @ =gMapDataList
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
_08F02114: .4byte gMapDataList
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
	ldr r2, _08F0218C @ =gMapTileProperties
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
_08F0218C: .4byte gMapTileProperties
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

.syntax divided
