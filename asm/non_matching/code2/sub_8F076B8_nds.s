.syntax unified
.section .text

@	thumb_func_start sub_8F076B8
@sub_8F076B8: @ 0x08F076B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r1, _08F07A84 @ =gUnknown_08F1BB18
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r0, _08F07A88 @ =gCurrentBgMusic
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #1
	bl PlayPulse2Sfx
	ldr r1, _08F07A8C @ =gUnknown_0300078C
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08F07A90 @ =gUnknown_03000C64
	movs r0, #7
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	movs r3, #1
	mov sb, r3
_08F076FA:
	mov r0, sp
	add r0, sb
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	mov r4, sb
	adds r4, #1
	str r4, [sp, #0x34]
	cmp r0, #0
	bne _08F0770E
	b _08F078C6
_08F0770E:
	bl sub_8F01388
	bl DrawBg2Tilemap
	bl DrawBg2Tilemap2
	bl sub_8F03128
	ldr r1, _08F07A94 @ =0x040000D4
	ldr r0, _08F07A98 @ =gBg2TilemapBuffer
	str r0, [r1]
	ldr r0, _08F07A9C @ =0x06001000
	str r0, [r1, #4]
	ldr r0, _08F07AA0 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08F07AA4 @ =0x04000018
	ldr r0, _08F07AA8 @ =gUnknown_03000788
	ldrh r0, [r0]
	lsrs r0, r0, #2
	movs r1, #0xf
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldr r0, _08F07AAC @ =gUnknown_03001508
	ldrh r0, [r0]
	lsrs r0, r0, #2
	ands r0, r1
	strh r0, [r2]
	bl UpdateInput
	ldr r2, _08F07AB0 @ =gUnknown_08F1B618
	ldr r1, _08F07AB4 @ =gKeysRepeat
	movs r0, #0xf0
	ldrh r1, [r1]
	ands r0, r1
	lsrs r0, r0, #4
	adds r0, r0, r2
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _08F07776
	ldr r3, _08F07A90 @ =gUnknown_03000C64
	movs r1, #4
	adds r0, r2, #0
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r5, [r3]
	cmp r5, r0
	beq _08F07776
	strb r2, [r3]
_08F07776:
	ldr r2, _08F07AB8 @ =gUnknown_030007A4
	ldr r0, _08F07ABC @ =gUnknown_08F1B628
	ldr r1, _08F07A90 @ =gUnknown_03000C64
	ldrb r1, [r1]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r1, _08F07AC0 @ =gUnknown_03000804
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r6, sb
	cmp r6, #0
	beq _08F07796
	adds r0, #1
	strb r0, [r1]
_08F07796:
	mov r0, sb
	cmp r0, #2
	bls _08F077A2
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
_08F077A2:
	ldr r1, [sp, #0x34]
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08F077AE
	b _08F078B6
_08F077AE:
	ldr r2, _08F07AAC @ =gUnknown_03001508
	mov sl, r2
_08F077B2:
	ldr r1, _08F07AC4 @ =gUnknown_08F1B630
	ldr r0, _08F07A90 @ =gUnknown_03000C64
	ldrb r2, [r0]
	adds r1, r2, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08F07AC8 @ =gUnknown_08F1B648
	adds r2, r2, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #2 @@nds - 256*2
	add r0, r8
	ldr r3, _08F07AA8 @ =gUnknown_03000788
	ldrh r3, [r3]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	movs r4, #0xd0
	lsls r4, r4, #1 @@nds - 192*2 + 32
	adds r1, r7, r4
	mov r5, sl
	ldrh r5, [r5]
	adds r1, r5, r1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _08F07ACC @ =0xFFE40000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F07802
	b _08F07D84
_08F07802:
	adds r1, r4, #0
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F07816
	b _08F07D84
_08F07816:
	adds r0, r5, #0
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F0782A
	b _08F07D84
_08F0782A:
	adds r1, r4, #0
	subs r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F0783E
	b _08F07D84
_08F0783E:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_8F021F8
	adds r1, r0, #0
	cmp r1, #0
	beq _08F07854
	b _08F07D84
_08F07854:
	ldr r0, _08F07AD0 @ =gUnknown_03000850
	str r1, [r0]
	ldr r4, _08F07AA8 @ =gUnknown_03000788
	ldrh r3, [r4]
	add r3, r8
	strh r3, [r4]
	mov r5, sl
	ldrh r5, [r5]
	adds r0, r5, r7
	mov r2, sl
	strh r0, [r2]
	ldr r2, _08F07AD4 @ =gUnknown_0300081C
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	cmp r0, #0x43
	ble _08F07878
	str r1, [r2]
_08F07878:
	ldr r2, [r2]
	lsls r2, r2, #2
	ldr r4, _08F07AD8 @ =gPositionBuffer
	adds r1, r2, r4
	ldr r5, _08F07ADC @ =0x0000FFFC
	ands r3, r5
	ldr r0, _08F07AC0 @ =gUnknown_03000804
	ldrb r0, [r0]
	lsrs r0, r0, #3
	movs r4, #3
	ands r0, r4
	adds r0, r0, r3
	strh r0, [r1]
	ldr r5, _08F07AE0 @ =gUnknown_03002852
	adds r2, r2, r5
	ldr r1, _08F07ADC @ =0x0000FFFC
	mov r0, sl
	ldrh r0, [r0]
	ands r1, r0
	ldr r0, _08F07AB8 @ =gUnknown_030007A4
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ands r0, r4
	adds r0, r0, r1
	strh r0, [r2]
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _08F078B6
	b _08F077B2
_08F078B6:
	ldr r0, [sp, #0x14]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _08F078C6
	b _08F0770E
_08F078C6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0xf
	bhi _08F078D6
	b _08F076FA
_08F078D6:
	ldr r5, _08F07AE4 @ =gUnknown_08F1B660
	ldr r0, _08F07A90 @ =gUnknown_03000C64
	ldrb r1, [r0]
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r6, _08F07AE8 @ =gUnknown_08F1B668
	adds r1, r1, r6
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x14
	lsrs r7, r0, #0x10
	ldr r4, _08F07AD4 @ =gUnknown_0300081C
	ldr r0, [r4]
	subs r0, #0x10
	bl sub_8F07EB4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [r4]
	subs r0, #0x10
	bl sub_8F07EB4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r0, [r4]
	subs r0, #0x20
	bl sub_8F07EB4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
	ldr r0, [r4]
	subs r0, #0x20
	bl sub_8F07EB4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [r4]
	subs r0, #0x30
	bl sub_8F07EB4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [r4]
	subs r0, #0x30
	bl sub_8F07EB4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	movs r1, #0
	mov sb, r1
	ldr r2, [sp, #0x10]
	lsls r2, r2, #3
	str r2, [sp, #0x38]
	ldr r5, _08F07AD8 @ =gPositionBuffer
	adds r3, r5, #2
	mov sl, r3
_08F079A4:
	bl sub_8F03128
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r6, _08F07AEC @ =gUnknown_03000844
	ldrh r6, [r6]
	adds r0, r6, r0
	ldr r1, _08F07AEC @ =gUnknown_03000844
	strh r0, [r1]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08F07AF0 @ =gUnknown_0300318C
	ldrh r2, [r2]
	adds r0, r2, r0
	ldr r3, _08F07AF0 @ =gUnknown_0300318C
	strh r0, [r3]
	ldr r0, _08F07AD4 @ =gUnknown_0300081C
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0x44
	bl __modsi3
	lsls r0, r0, #2
	adds r2, r0, r5
	ldrh r6, [r2]
	ldr r3, [sp, #0x1c]
	adds r1, r6, r3
	strh r1, [r2]
	add r0, sl
	ldrh r6, [r0]
	ldr r2, [sp, #0x20]
	adds r1, r6, r2
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x24
	movs r1, #0x44
	bl __modsi3
	lsls r0, r0, #2
	adds r2, r0, r5
	ldrh r3, [r2]
	ldr r6, [sp, #0x24]
	adds r1, r3, r6
	strh r1, [r2]
	add r0, sl
	ldrh r2, [r0]
	ldr r3, [sp, #0x28]
	adds r1, r2, r3
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #0x44
	bl __modsi3
	lsls r0, r0, #2
	adds r2, r0, r5
	ldrh r4, [r2]
	ldr r6, [sp, #0x2c]
	adds r1, r4, r6
	strh r1, [r2]
	add r0, sl
	ldrh r2, [r0]
	ldr r3, [sp, #0x30]
	adds r1, r2, r3
	strh r1, [r0]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0xf
	bls _08F079A4
	movs r4, #0
	ldr r5, _08F07AF0 @ =gUnknown_0300318C
	strh r4, [r5]
	ldr r6, _08F07AEC @ =gUnknown_03000844
	strh r4, [r6]
	movs r0, #7
	bl REMOVE_PARTY_MEMBER
	movs r0, #6
	bl REMOVE_PARTY_MEMBER
	ldr r5, _08F07AF4 @ =gUnknown_030007A0
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	ldr r2, _08F07AF8 @ =gPlayerX
	ldr r0, _08F07AFC @ =gSpriteData+0x3FA+0x197C
	ldr r3, [sp, #0x38]
	adds r1, r3, r0
	ldrh r1, [r1]
	ldr r6, _08F07B00 @ =0xFFFFFE40
	adds r1, r1, r6
	strh r1, [r2]
	ldr r1, _08F07B04 @ =gPlayerY
	adds r0, #2
	adds r0, r3, r0
	ldrh r0, [r0]
	ldr r2, _08F07B08 @ =0xFFFFFEC0
	adds r0, r0, r2
	strh r0, [r1]
	ldr r0, _08F07B0C @ =gUnknown_03000840
	ldr r1, _08F07B10 @ =gUnknown_030034A8
	strb r4, [r1]
	strb r4, [r0]
	ldr r3, [sp, #0x10]
	b _08F07B14
	.align 2, 0
_08F07A84: .4byte gUnknown_08F1BB18
_08F07A88: .4byte gCurrentBgMusic
_08F07A8C: .4byte gUnknown_0300078C
_08F07A90: .4byte gUnknown_03000C64
_08F07A94: .4byte 0x040000D4
_08F07A98: .4byte gBg2TilemapBuffer
_08F07A9C: .4byte 0x06001000
_08F07AA0: .4byte 0x84000200
_08F07AA4: .4byte 0x04000018
_08F07AA8: .4byte gUnknown_03000788
_08F07AAC: .4byte gUnknown_03001508
_08F07AB0: .4byte gUnknown_08F1B618
_08F07AB4: .4byte gKeysRepeat
_08F07AB8: .4byte gUnknown_030007A4
_08F07ABC: .4byte gUnknown_08F1B628
_08F07AC0: .4byte gUnknown_03000804
_08F07AC4: .4byte gUnknown_08F1B630
_08F07AC8: .4byte gUnknown_08F1B648
_08F07ACC: .4byte 0xFFE40000
_08F07AD0: .4byte gUnknown_03000850
_08F07AD4: .4byte gUnknown_0300081C
_08F07AD8: .4byte gPositionBuffer
_08F07ADC: .4byte 0x0000FFFC
_08F07AE0: .4byte gUnknown_03002852
_08F07AE4: .4byte gUnknown_08F1B660
_08F07AE8: .4byte gUnknown_08F1B668
_08F07AEC: .4byte gUnknown_03000844
_08F07AF0: .4byte gUnknown_0300318C
_08F07AF4: .4byte gUnknown_030007A0
_08F07AF8: .4byte gPlayerX
_08F07AFC: .4byte gSpriteData+0x3FA+0x197C
_08F07B00: .4byte 0xFFFFFE40
_08F07B04: .4byte gPlayerY
_08F07B08: .4byte 0xFFFFFEC0
_08F07B0C: .4byte gUnknown_03000840
_08F07B10: .4byte gUnknown_030034A8
_08F07B14:
	cmp r3, #5
	bne _08F07B1E
	movs r0, #0xc
	rsbs r0, r0, #0
	strb r0, [r1]
_08F07B1E:
	ldr r1, _08F07D30 @ =gFade_Type
	movs r0, #9
	strb r0, [r1]
	bl sub_8F00ADC
	ldr r1, _08F07D34 @ =gUnknown_03000C64
	ldr r0, _08F07D38 @ =gUnknown_030007A4
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0x32
	bl DelayByAmount
	bl m4aMPlayAllStop
	movs r0, #1
	bl PlayTriangleSfx
	movs r0, #0xa
	bl DelayByAmount
	bl ResetVariablesUponEnteringTown
	bl sub_8F01388
	bl DrawBg2Tilemap
	bl DrawBg2Tilemap2
	bl sub_8F03128
	ldr r1, _08F07D3C @ =0x040000D4
	ldr r0, _08F07D40 @ =gBg2TilemapBuffer
	str r0, [r1]
	ldr r0, _08F07D44 @ =0x06001000
	str r0, [r1, #4]
	ldr r0, _08F07D48 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08F07D4C @ =0x04000018
	ldr r0, _08F07D50 @ =gUnknown_03000788
	ldrh r0, [r0]
	lsrs r0, r0, #2
	movs r1, #0xf
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldr r0, _08F07D54 @ =gUnknown_03001508
	ldrh r0, [r0]
	lsrs r0, r0, #2
	ands r0, r1
	strh r0, [r2]
	bl sub_8F00C64
	strb r4, [r5]
	movs r4, #0xf
	mov sb, r4
_08F07B8A:
	mov r0, sp
	add r0, sb
	ldrb r0, [r0]
	lsrs r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _08F07BA2
	movs r5, #1
	str r5, [sp, #0x14]
	cmp r5, #0
	bne _08F07BA2
	b _08F07D0E
_08F07BA2:
	bl sub_8F01388
	bl DrawBg2Tilemap
	bl DrawBg2Tilemap2
	bl sub_8F03128
	ldr r1, _08F07D3C @ =0x040000D4
	ldr r0, _08F07D40 @ =gBg2TilemapBuffer
	str r0, [r1]
	ldr r0, _08F07D44 @ =0x06001000
	str r0, [r1, #4]
	ldr r0, _08F07D48 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08F07D4C @ =0x04000018
	ldr r4, _08F07D50 @ =gUnknown_03000788
	ldrh r6, [r4]
	lsrs r0, r6, #2
	movs r1, #0xf
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldr r3, _08F07D54 @ =gUnknown_03001508
	ldrh r5, [r3]
	lsrs r0, r5, #2
	ands r0, r1
	strh r0, [r2]
	ldr r6, _08F07D58 @ =gUnknown_03000804
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	mov r1, sb
	cmp r1, #0
	beq _08F07BEA
	adds r0, #1
	strb r0, [r6]
_08F07BEA:
	mov r2, sb
	cmp r2, #2
	bls _08F07BF8
	ldr r5, _08F07D58 @ =gUnknown_03000804
	ldrb r0, [r5]
	adds r0, #2
	strb r0, [r5]
_08F07BF8:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _08F07CFE
	mov sl, r3
_08F07C06:
	ldr r1, _08F07D5C @ =gUnknown_08F1B630
	ldr r0, _08F07D34 @ =gUnknown_03000C64
	ldrb r2, [r0]
	adds r1, r2, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08F07D60 @ =gUnknown_08F1B648
	adds r2, r2, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0xf0
	lsls r0, r0, #1
	add r0, r8
	ldr r1, _08F07D50 @ =gUnknown_03000788
	ldrh r1, [r1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r7, r2
	mov r3, sl
	ldrh r3, [r3]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _08F07D64 @ =0xFFE40000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F07D1E
	adds r1, r4, #0
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F07D1E
	adds r0, r5, #0
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F07D1E
	adds r1, r4, #0
	subs r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8F01CBC
	cmp r0, #0
	bne _08F07D1E
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_8F021F8
	adds r1, r0, #0
	cmp r1, #0
	bne _08F07D1E
	ldr r0, _08F07D68 @ =gUnknown_03000850
	str r1, [r0]
	ldr r4, _08F07D50 @ =gUnknown_03000788
	ldrh r3, [r4]
	add r3, r8
	strh r3, [r4]
	mov r5, sl
	ldrh r5, [r5]
	adds r0, r5, r7
	mov r2, sl
	strh r0, [r2]
	ldr r2, _08F07D6C @ =gUnknown_0300081C
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	cmp r0, #0x43
	ble _08F07CC2
	str r1, [r2]
_08F07CC2:
	ldr r2, [r2]
	lsls r2, r2, #2
	ldr r4, _08F07D70 @ =gPositionBuffer
	adds r1, r2, r4
	ldr r5, _08F07D74 @ =0x0000FFFC
	ands r3, r5
	ldr r4, _08F07D58 @ =gUnknown_03000804
	ldrb r4, [r4]
	lsrs r0, r4, #3
	movs r5, #3
	ands r0, r5
	adds r0, r0, r3
	strh r0, [r1]
	ldr r0, _08F07D78 @ =gUnknown_03002852
	adds r2, r2, r0
	ldr r1, _08F07D74 @ =0x0000FFFC
	mov r3, sl
	ldrh r3, [r3]
	ands r1, r3
	ldr r0, _08F07D38 @ =gUnknown_030007A4
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ands r0, r5
	adds r0, r0, r1
	strh r0, [r2]
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08F07C06
_08F07CFE:
	ldr r0, [sp, #0x14]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _08F07D0E
	b _08F07BA2
_08F07D0E:
	mov r0, sb
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov sb, r4
	cmp r0, #0
	blt _08F07D1E
	b _08F07B8A
_08F07D1E:
	ldr r2, _08F07D7C @ =gKeysRepeat
	ldr r1, _08F07D80 @ =gKeysDown
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2]
	bl sub_8F09384
	b _08F07E80
	.align 2, 0
_08F07D30: .4byte gFade_Type
_08F07D34: .4byte gUnknown_03000C64
_08F07D38: .4byte gUnknown_030007A4
_08F07D3C: .4byte 0x040000D4
_08F07D40: .4byte gBg2TilemapBuffer
_08F07D44: .4byte 0x06001000
_08F07D48: .4byte 0x84000200
_08F07D4C: .4byte 0x04000018
_08F07D50: .4byte gUnknown_03000788
_08F07D54: .4byte gUnknown_03001508
_08F07D58: .4byte gUnknown_03000804
_08F07D5C: .4byte gUnknown_08F1B630
_08F07D60: .4byte gUnknown_08F1B648
_08F07D64: .4byte 0xFFE40000
_08F07D68: .4byte gUnknown_03000850
_08F07D6C: .4byte gUnknown_0300081C
_08F07D70: .4byte gPositionBuffer
_08F07D74: .4byte 0x0000FFFC
_08F07D78: .4byte gUnknown_03002852
_08F07D7C: .4byte gKeysRepeat
_08F07D80: .4byte gKeysDown
_08F07D84:
	movs r5, #0
	mov sb, r5
	ldr r3, _08F07E90 @ =gGameInfo
	adds r4, r3, #0
	adds r4, #8
_08F07D8E:
	mov r6, sb
	adds r0, r6, r4
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F07DB6
	lsls r0, r1, #6
	adds r0, r0, r3
	adds r2, r0, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08F07DB6
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08F07DB6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _08F07D8E
	movs r0, #0x30
	bl sub_8F011E4
	bl sub_8F01388
	bl DrawBg2Tilemap
	bl DrawBg2Tilemap2
	bl sub_8F03128
	ldr r1, _08F07E94 @ =0x040000D4
	ldr r0, _08F07E98 @ =gBg2TilemapBuffer
	str r0, [r1]
	ldr r0, _08F07E9C @ =0x06001000
	str r0, [r1, #4]
	ldr r0, _08F07EA0 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08F07EA4 @ =0x04000018
	ldr r0, _08F07EA8 @ =gUnknown_03000788
	ldrh r0, [r0]
	lsrs r0, r0, #2
	movs r1, #0xf
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldr r0, _08F07EAC @ =gUnknown_03001508
	ldrh r0, [r0]
	lsrs r0, r0, #2
	ands r0, r1
	strh r0, [r2]
	bl sub_8F01208
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #2
	bl PlayNoiseSfx
	movs r0, #0
	mov sb, r0
_08F07E14:
	bl SCR_CMD_69_Quake
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0xf
	bls _08F07E14
	ldr r1, _08F07EB0 @ =gKeysRepeat
	ldrh r0, [r1]
	cmp r0, #0
	bne _08F07E3A
	adds r4, r1, #0
_08F07E30:
	bl UpdateInput
	ldrh r0, [r4]
	cmp r0, #0
	beq _08F07E30
_08F07E3A:
	ldr r0, [sp, #0x18]
	bl ChangeBgMusic
	movs r1, #0
	mov sb, r1
	ldr r3, _08F07E90 @ =gGameInfo
	adds r4, r3, #0
	adds r4, #8
_08F07E4A:
	mov r2, sb
	adds r0, r2, r4
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F07E72
	lsls r0, r1, #6
	adds r0, r0, r3
	adds r2, r0, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08F07E72
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
_08F07E72:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _08F07E4A
_08F07E80:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F07E90: .4byte gGameInfo
_08F07E94: .4byte 0x040000D4
_08F07E98: .4byte gBg2TilemapBuffer
_08F07E9C: .4byte 0x06001000
_08F07EA0: .4byte 0x84000200
_08F07EA4: .4byte 0x04000018
_08F07EA8: .4byte gUnknown_03000788
_08F07EAC: .4byte gUnknown_03001508
_08F07EB0: .4byte gKeysRepeat
.syntax divided
