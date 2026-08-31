.syntax unified
.section .text
@	thumb_func_start sub_8F0F940
@sub_8F0F940: @ 0x08F0F940
	push {r4, lr}
	ldr r0, _08F0F964 @ =gBattleActionData
	ldr r2, _08F0F968 @ =gUnknown_03003690
	ldrh r1, [r2]
	adds r0, r1, r0
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	subs r0, r1, #1
	adds r3, r2, #0
	cmp r0, #5
	bls _08F0F95A
	b _08F0FA80
_08F0F95A:
	lsls r0, r0, #2
	ldr r1, _08F0F96C @ =_08F0F970
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0F964: .4byte gBattleActionData
_08F0F968: .4byte gUnknown_03003690
_08F0F96C: .4byte _08F0F970
_08F0F970: @ jump table
	.4byte _08F0F988 @ case 0
	.4byte _08F0F9DC @ case 1
	.4byte _08F0FA10 @ case 2
	.4byte _08F0FA4C @ case 3
	.4byte _08F0FA5C @ case 4
	.4byte _08F0FA74 @ case 5
_08F0F988:
	ldr r1, _08F0F9C0 @ =gBattlerData
	ldr r0, _08F0F9C4 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r2, r0, r1
	movs r0, #8
	ldrb r4, [r2, #1]
	ands r0, r4
	cmp r0, #0
	beq _08F0F9D0
	adds r4, r1, #0
_08F0F99E:
	bl Random
	lsrs r2, r0, #0x1d
	lsls r0, r2, #5
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0F99E
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	bne _08F0F99E
	ldr r0, _08F0F9C8 @ =gUnknown_030036EC
	strb r2, [r0]
	ldr r3, _08F0F9CC @ =gUnknown_03003690
	b _08F0FA80
	.align 2, 0
_08F0F9C0: .4byte gBattlerData
_08F0F9C4: .4byte gUnknown_03003700
_08F0F9C8: .4byte gUnknown_030036EC
_08F0F9CC: .4byte gUnknown_03003690
_08F0F9D0:
	ldr r1, _08F0F9D8 @ =gUnknown_030036EC
	ldrb r0, [r2, #0x1c]
	strb r0, [r1]
	b _08F0FA80
	.align 2, 0
_08F0F9D8: .4byte gUnknown_030036EC
_08F0F9DC:
	ldr r2, _08F0FA04 @ =gBattlerData
	ldr r0, _08F0FA08 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r1, r0, #5
	adds r1, r1, r2
	movs r0, #8
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F0F9F8
	bl Random
	cmp r0, #0
	blt _08F0FA2C
_08F0F9F8:
	ldr r2, _08F0FA0C @ =gUnknown_030036EC
	ldr r0, _08F0FA08 @ =gUnknown_03003700
	ldrb r0, [r0]
	adds r0, #4
	movs r1, #4
	b _08F0FA34
	.align 2, 0
_08F0FA04: .4byte gBattlerData
_08F0FA08: .4byte gUnknown_03003700
_08F0FA0C: .4byte gUnknown_030036EC
_08F0FA10:
	ldr r2, _08F0FA3C @ =gBattlerData
	ldr r0, _08F0FA40 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r1, r0, #5
	adds r1, r1, r2
	movs r0, #8
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F0FA2C
	bl Random
	cmp r0, #0
	blt _08F0F9F8
_08F0FA2C:
	ldr r2, _08F0FA44 @ =gUnknown_030036EC
	ldr r1, _08F0FA40 @ =gUnknown_03003700
	movs r0, #4
	ldrb r1, [r1]
_08F0FA34:
	ands r0, r1
	strb r0, [r2]
	ldr r3, _08F0FA48 @ =gUnknown_03003690
	b _08F0FA80
	.align 2, 0
_08F0FA3C: .4byte gBattlerData
_08F0FA40: .4byte gUnknown_03003700
_08F0FA44: .4byte gUnknown_030036EC
_08F0FA48: .4byte gUnknown_03003690
_08F0FA4C:
	ldr r0, _08F0FA54 @ =gUnknown_030036EC
	ldr r1, _08F0FA58 @ =gUnknown_03003700
	ldrb r1, [r1]
	b _08F0FA7E
	.align 2, 0
_08F0FA54: .4byte gUnknown_030036EC
_08F0FA58: .4byte gUnknown_03003700
_08F0FA5C:
	ldr r2, _08F0FA6C @ =gUnknown_030036EC
	ldr r1, _08F0FA70 @ =gUnknown_03003700
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	strb r0, [r2]
	b _08F0FA80
	.align 2, 0
_08F0FA6C: .4byte gUnknown_030036EC
_08F0FA70: .4byte gUnknown_03003700
_08F0FA74:
	ldr r0, _08F0FA8C @ =gUnknown_030036EC
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #7
	ands r1, r2
_08F0FA7E:
	strb r1, [r0]
_08F0FA80:
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0FA8C: .4byte gUnknown_030036EC

.syntax divided
