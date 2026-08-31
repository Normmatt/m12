.syntax unified
.section .text
@	thumb_func_start HandleSelectMenuInput
@HandleSelectMenuInput: @ 0x08F0CC98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	str r1, [sp, #0xc]
	movs r0, #0
	mov sl, r0
	cmp r1, #0
	beq _08F0CCB4
	ldr r1, [r1]
	mov sl, r1
_08F0CCB4:
	mov r2, sl
	lsls r0, r2, #2
	mov r2, r8
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	bne _08F0CCE6
	bl WaitForAnyButtonPress
	movs r0, #0x80
	lsls r0, r0, #0x18
	b _08F0CEF2
_08F0CCCC:
	movs r0, #5
	bl PlayPulse1Sfx
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldrh r4, [r4]
	orrs r4, r0
	mov sl, r4
	b _08F0CEAC
_08F0CCDE:
	movs r0, #5
	bl PlayPulse1Sfx
	b _08F0CEAC
_08F0CCE6:
	ldrb r7, [r1, #2]
	ldrb r6, [r1, #3]
	movs r1, #0
	str r1, [sp, #0x10]
_08F0CCEE:
	ldr r0, [sp, #0x10]
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08F0CD1C
	lsls r2, r6, #5
	adds r1, r7, r2
	lsls r1, r1, #1
	ldr r0, _08F0CD14 @ =gBg0TilemapBuffer
	adds r1, r1, r0
	ldr r0, _08F0CD18 @ =gUnknown_030034C0
	ldrh r0, [r0]
	adds r0, #0x10
	b _08F0CD2C
	.align 2, 0
_08F0CD14: .4byte gBg0TilemapBuffer
_08F0CD18: .4byte gUnknown_030034C0
_08F0CD1C:
	lsls r2, r6, #5
	adds r1, r7, r2
	lsls r1, r1, #1
	ldr r0, _08F0CDB4 @ =gBg0TilemapBuffer
	adds r1, r1, r0
	ldr r0, _08F0CDB8 @ =gUnknown_030034C0
	ldrh r0, [r0]
	adds r0, #0xff
_08F0CD2C:
	strh r0, [r1]
	adds r5, r2, #0
	bl UpdateBg0Tilemap
	ldr r4, _08F0CDBC @ =gKeysDown
	ldrh r2, [r4]
	ldr r1, _08F0CDC0 @ =0x00000201
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08F0CCDE
	movs r0, #6
	ands r0, r2
	cmp r0, #0
	bne _08F0CCCC
	mov r1, sl
	lsls r0, r1, #2
	add r0, r8
	ldrh r0, [r0]
	lsrs r0, r0, #8
	movs r1, #0xf0
	ands r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08F0CCDE
	movs r0, #0xf0
	ands r0, r2
	cmp r0, #0
	beq _08F0CCEE
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #8]
	str r0, [sp, #4]
	movs r5, #0
	adds r1, r2, #0
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0CDC4
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0CE70
	mov r4, r8
_08F0CD8A:
	ldrb r2, [r4, #3]
	cmp r2, r6
	bhs _08F0CDA6
	add r0, sp, #8
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	add r3, sp, #4
	bl sub_8F0CFD0
	cmp r0, #0
	beq _08F0CDA6
	mov sb, r5
_08F0CDA6:
	adds r4, #4
	adds r5, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0CD8A
	b _08F0CE70
	.align 2, 0
_08F0CDB4: .4byte gBg0TilemapBuffer
_08F0CDB8: .4byte gUnknown_030034C0
_08F0CDBC: .4byte gKeysDown
_08F0CDC0: .4byte 0x00000201
_08F0CDC4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0CDFE
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0CE70
	mov r4, r8
_08F0CDD6:
	ldrb r2, [r4, #3]
	cmp r2, r6
	bls _08F0CDF2
	add r0, sp, #8
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	add r3, sp, #4
	bl sub_8F0CFD0
	cmp r0, #0
	beq _08F0CDF2
	mov sb, r5
_08F0CDF2:
	adds r4, #4
	adds r5, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0CDD6
	b _08F0CE70
_08F0CDFE:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08F0CE38
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0CE70
	mov r4, r8
_08F0CE10:
	ldrb r2, [r4, #2]
	cmp r2, r7
	bls _08F0CE2C
	add r0, sp, #8
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	add r3, sp, #4
	bl sub_8F0CF0C
	cmp r0, #0
	beq _08F0CE2C
	mov sb, r5
_08F0CE2C:
	adds r4, #4
	adds r5, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0CE10
	b _08F0CE70
_08F0CE38:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08F0CE70
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0CE70
	mov r4, r8
_08F0CE4A:
	ldrb r2, [r4, #2]
	cmp r2, r7
	bhs _08F0CE66
	add r0, sp, #8
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	add r3, sp, #4
	bl sub_8F0CF0C
	cmp r0, #0
	beq _08F0CE66
	mov sb, r5
_08F0CE66:
	adds r4, #4
	adds r5, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0CE4A
_08F0CE70:
	mov r0, sb
	cmp r0, #0
	bge _08F0CE78
	b _08F0CCEE
_08F0CE78:
	movs r0, #0xd
	bl PlayPulse1Sfx
	mov sl, sb
	lsls r0, r6, #5
	adds r0, r7, r0
	lsls r0, r0, #1
	ldr r1, _08F0CEA4 @ =gBg0TilemapBuffer
	adds r0, r0, r1
	ldr r1, _08F0CEA8 @ =gUnknown_030034C0
	ldrh r1, [r1]
	adds r1, #0x10
	strh r1, [r0]
	mov r2, sl
	lsls r0, r2, #2
	add r0, r8
	ldrb r7, [r0, #2]
	ldrb r6, [r0, #3]
	movs r0, #0
	str r0, [sp, #0x10]
	b _08F0CCEE
	.align 2, 0
_08F0CEA4: .4byte gBg0TilemapBuffer
_08F0CEA8: .4byte gUnknown_030034C0
_08F0CEAC:
	mov r1, sl
	cmp r1, #0
	bge _08F0CED0
	ldr r1, _08F0CEC8 @ =gBg0TilemapBuffer
	adds r0, r7, r5
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, _08F0CECC @ =gUnknown_030034C0
	ldrh r1, [r1]
	adds r1, #0x10
	strh r1, [r0]
	mov r0, sl
	b _08F0CEF2
	.align 2, 0
_08F0CEC8: .4byte gBg0TilemapBuffer
_08F0CECC: .4byte gUnknown_030034C0
_08F0CED0:
	ldr r1, _08F0CF04 @ =gBg0TilemapBuffer
	adds r0, r7, r5
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, _08F0CF08 @ =gUnknown_030034C0
	ldrh r1, [r1]
	adds r1, #0xff
	strh r1, [r0]
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _08F0CEEA
	mov r0, sl
	str r0, [r2]
_08F0CEEA:
	mov r1, sl
	lsls r0, r1, #2
	add r0, r8
	ldrh r0, [r0]
_08F0CEF2:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0CF04: .4byte gBg0TilemapBuffer
_08F0CF08: .4byte gUnknown_030034C0

.syntax divided
