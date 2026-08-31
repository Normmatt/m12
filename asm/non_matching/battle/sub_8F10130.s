.syntax unified
.section .text
@	thumb_func_start sub_8F10130
@sub_8F10130: @ 0x08F10130
	push {r4, r5, r6, lr}
	movs r2, #4
	ldr r6, _08F1015C @ =gUnknown_03003700
	ldrb r3, [r6]
	movs r4, #1
_08F1013A:
	cmp r2, r3
	beq _08F1014E
	ldr r5, _08F10160 @ =gBattlerData
	lsls r1, r2, #5
	adds r1, r1, r5
	adds r0, r4, #0
	ldrb r1, [r1, #0x1e]
	ands r0, r1
	cmp r0, #0
	bne _08F10164
_08F1014E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F1013A
	movs r0, #0
	b _08F1019E
	.align 2, 0
_08F1015C: .4byte gUnknown_03003700
_08F10160: .4byte gBattlerData
_08F10164:
	ldr r4, _08F101A4 @ =gUnknown_030036EC
	strb r2, [r4]
	ldrb r0, [r4]
	bl sub_8F1045C
	ldrb r0, [r4]
	lsls r1, r0, #5
	adds r1, r1, r5
	movs r0, #0xfe
	ldrb r2, [r1, #0x1e]
	ands r0, r2
	movs r2, #0
	strb r0, [r1, #0x1e]
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r0, r0, r5
	strb r2, [r0, #0x1d]
	ldrb r4, [r4]
	lsls r1, r4, #5
	adds r1, r1, r5
	ldrb r6, [r6]
	lsls r0, r6, #5
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0x42
	bl DrawBattleStatusTextById
	movs r0, #1
_08F1019E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08F101A4: .4byte gUnknown_030036EC

.syntax divided
