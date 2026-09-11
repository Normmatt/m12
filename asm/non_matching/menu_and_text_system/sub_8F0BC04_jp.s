.syntax unified
.section .text
@	thumb_func_start sub_8F0BC04
@sub_8F0BC04: @ 0x08F0BC04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x90]
	ldr r1, _08F0BCD4 @ =gUnknown_08F29FF0
	add r0, sp, #4
	movs r2, #0x84
	bl memcpy
	movs r4, #0
	ldr r1, [sp, #0x90]
	subs r1, #1
	cmp r4, r1
	bge _08F0BC4E
	mov r2, sl
	ldrb r0, [r2]
	str r1, [sp, #0x98]
	cmp r0, #0
	beq _08F0BC4E
_08F0BC36:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x11
	bhi _08F0BC4E
	cmp r4, r1
	bge _08F0BC4E
	mov r6, sl
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0BC36
_08F0BC4E:
	adds r5, r4, #0
	ldr r0, [sp, #0x90]
	subs r0, #1
	str r0, [sp, #0x98]
	ldr r3, _08F0BCD8 @ =gMsg_WindowRegName
	cmp r5, #0x11
	bhi _08F0BC78
	adds r1, r0, #0
	cmp r5, r0
	bge _08F0BC78
	movs r2, #0xdf
_08F0BC64:
	mov r6, sl
	adds r0, r6, r5
	strb r2, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x11
	bhi _08F0BC78
	cmp r5, r1
	blt _08F0BC64
_08F0BC78:
	mov r0, sl
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
	cmp r4, #0x11
	bhi _08F0BC8A
	ldr r1, [sp, #0x98]
	cmp r4, r1
	blt _08F0BC90
_08F0BC8A:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08F0BC90:
	adds r0, r3, #0
	bl HandleControlCodes
	movs r0, #7
	movs r1, #2
	bl SetTextPosition
	mov r0, sl
	bl HandleControlCodes
	movs r2, #0
	str r2, [sp, #0x94]
	add r0, sp, #4
	ldrb r0, [r0, #2]
	mov r8, r0
	add r0, sp, #4
	ldrb r7, [r0, #3]
	adds r5, r4, #0
	mov sb, r2
_08F0BCB6:
	mov r0, r8
	adds r1, r7, #0
	bl SetTextPosition
	movs r0, #8
	mov r6, sb
	ands r0, r6
	cmp r0, #0
	beq _08F0BCE0
	ldr r0, _08F0BCDC @ =0x00008050
	bl WriteCharacterToTilemap
	ldr r0, [sp, #0x94]
	lsls r6, r0, #2
	b _08F0BCF2
	.align 2, 0
_08F0BCD4: .4byte gUnknown_08F29FF0
_08F0BCD8: .4byte gMsg_WindowRegName
_08F0BCDC: .4byte 0x00008050
_08F0BCE0:
	ldr r1, [sp, #0x94]
	lsls r4, r1, #2
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldrh r0, [r0]
	bl WriteCharacterToTilemap
	adds r6, r4, #0
_08F0BCF2:
	adds r4, r5, #7
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #2
	bl SetTextPosition
	movs r0, #8
	mov r2, sb
	ands r0, r2
	str r4, [sp, #0xa0]
	cmp r0, #0
	beq _08F0BD1C
	ldr r0, _08F0BD18 @ =0x00008050
	bl WriteCharacterToTilemap
	mov r0, sl
	adds r4, r0, r5
	b _08F0BD26
	.align 2, 0
_08F0BD18: .4byte 0x00008050
_08F0BD1C:
	mov r1, sl
	adds r4, r1, r5
	ldrb r0, [r4]
	bl WriteCharacterToTilemap
_08F0BD26:
	bl UpdateBg0Tilemap
	ldr r1, _08F0BD44 @ =gKeysDown
	movs r0, #8
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F0BD48
	cmp r5, #0
	beq _08F0BD48
	movs r0, #5
	bl PlayPulse1Sfx
	b _08F0BD86
	.align 2, 0
_08F0BD44: .4byte gKeysDown
_08F0BD48:
	ldr r0, _08F0BD5C @ =gKeysDown
	ldrh r3, [r0]
	movs r0, #6
	ands r0, r3
	cmp r0, #0
	beq _08F0BD60
	movs r0, #5
	bl PlayPulse1Sfx
	b _08F0BDBC
	.align 2, 0
_08F0BD5C: .4byte gKeysDown
_08F0BD60:
	ldr r2, _08F0BDB8 @ =0x00000201
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08F0BE3A
	movs r0, #5
	bl PlayPulse1Sfx
	mov r1, sp
	adds r1, r1, r6
	adds r1, #4
	ldrh r0, [r1]
	cmp r0, #0xc0
	bne _08F0BE04
	cmp r5, #0
	beq _08F0BDBC
	ldrb r0, [r1, #3]
	cmp r0, #6
	bne _08F0BDBC
_08F0BD86:
	ldr r1, [sp, #0xa0]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r1, #2
	bl SetTextPosition
	ldrb r0, [r4]
	bl WriteCharacterToTilemap
	mov r0, r8
	adds r1, r7, #0
	bl SetTextPosition
	mov r0, sp
	adds r0, r0, r6
	adds r0, #4
	ldrh r0, [r0]
	bl WriteCharacterToTilemap
	movs r5, #0
	ldr r2, [sp, #0x98]
	cmp r5, r2
	blt _08F0BDB6
	b _08F0BFA0
_08F0BDB6:
	b _08F0BF82
	.align 2, 0
_08F0BDB8: .4byte 0x00000201
_08F0BDBC:
	adds r0, r5, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #2
	bl SetTextPosition
	mov r6, sl
	adds r4, r6, r5
	ldrb r0, [r4]
	bl WriteCharacterToTilemap
	cmp r5, #0
	beq _08F0BDE2
	ldrb r4, [r4]
	cmp r4, #0xdf
	bne _08F0BDE2
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08F0BDE2:
	mov r0, sl
	adds r4, r0, r5
	movs r0, #0xdf
	strb r0, [r4]
	adds r0, r5, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #2
	bl SetTextPosition
	ldrb r0, [r4]
	bl WriteCharacterToTilemap
	mov r1, sb
	adds r1, #1
	str r1, [sp, #0x9c]
	b _08F0BF7C
_08F0BE04:
	mov r2, sl
	adds r4, r2, r5
	strb r0, [r4]
	adds r0, r5, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #2
	bl SetTextPosition
	ldrb r0, [r4]
	bl WriteCharacterToTilemap
	mov r6, sb
	adds r6, #1
	str r6, [sp, #0x9c]
	cmp r5, #0x10
	bls _08F0BE28
	b _08F0BF7C
_08F0BE28:
	ldr r0, [sp, #0x90]
	subs r0, #2
	cmp r5, r0
	blt _08F0BE32
	b _08F0BF7C
_08F0BE32:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08F0BF7C
_08F0BE3A:
	movs r0, #0xf0
	ands r0, r3
	mov r1, sb
	adds r1, #1
	str r1, [sp, #0x9c]
	cmp r0, #0
	bne _08F0BE4A
	b _08F0BF7C
_08F0BE4A:
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	movs r0, #0x80
	lsls r0, r0, #1
	add r2, sp, #0x8c
	str r0, [r2]
	add r1, sp, #0x88
	str r0, [r1]
	movs r6, #0
	adds r4, r3, #0
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08F0BE9A
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08F0BF46
	add r4, sp, #4
_08F0BE72:
	ldrb r0, [r4, #3]
	cmp r0, r7
	bhs _08F0BE8E
	add r1, sp, #0x8c
	str r1, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x88
	bl sub_8F0CFD0
	cmp r0, #0
	beq _08F0BE8E
	mov sb, r6
_08F0BE8E:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0BE72
	b _08F0BF46
_08F0BE9A:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08F0BED4
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08F0BF46
	add r4, sp, #4
_08F0BEAC:
	ldrb r2, [r4, #3]
	cmp r2, r7
	bls _08F0BEC8
	add r0, sp, #0x8c
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x88
	bl sub_8F0CFD0
	cmp r0, #0
	beq _08F0BEC8
	mov sb, r6
_08F0BEC8:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0BEAC
	b _08F0BF46
_08F0BED4:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08F0BF0E
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08F0BF46
	add r4, sp, #4
_08F0BEE6:
	ldrb r1, [r4, #2]
	cmp r1, r8
	bls _08F0BF02
	add r2, sp, #0x8c
	str r2, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x88
	bl sub_8F0CF0C
	cmp r0, #0
	beq _08F0BF02
	mov sb, r6
_08F0BF02:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0BEE6
	b _08F0BF46
_08F0BF0E:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08F0BF46
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08F0BF46
	add r4, sp, #4
_08F0BF20:
	ldrb r0, [r4, #2]
	cmp r0, r8
	bhs _08F0BF3C
	add r1, sp, #0x8c
	str r1, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x88
	bl sub_8F0CF0C
	cmp r0, #0
	beq _08F0BF3C
	mov sb, r6
_08F0BF3C:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0BF20
_08F0BF46:
	mov r2, sb
	cmp r2, #0
	blt _08F0BF7C
	movs r0, #0xd
	bl PlayPulse1Sfx
	mov r0, r8
	adds r1, r7, #0
	bl SetTextPosition
	ldr r6, [sp, #0x94]
	lsls r0, r6, #2
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	bl WriteCharacterToTilemap
	mov r0, sb
	str r0, [sp, #0x94]
	lsls r0, r0, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldrb r0, [r1, #2]
	mov r8, r0
	ldrb r0, [r1, #3]
	adds r7, r0, #0
_08F0BF7C:
	ldr r1, [sp, #0x9c]
	mov sb, r1
	b _08F0BCB6
_08F0BF82:
	mov r2, sl
	adds r1, r2, r5
	ldrb r6, [r1]
	cmp r6, #0xdf
	bne _08F0BF90
	movs r0, #0
	strb r0, [r1]
_08F0BF90:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x11
	bhi _08F0BFA0
	ldr r0, [sp, #0x98]
	cmp r5, r0
	blt _08F0BF82
_08F0BFA0:
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
