.syntax unified
.section .text

@	thumb_func_start sub_8F07144
@sub_8F07144: @ 0x08F07144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	ldr r1, _08F07338 @ =MusicPlayer0Info
	ldr r2, [r1, #0xc]
	str r2, [sp, #4]
	adds r2, #0x18
	str r2, [sp, #0xc]
	ldr r3, [sp, #4]
	adds r3, #0x30
	str r3, [sp, #8]
	ldr r4, [sp, #4]
	cmp r4, r3
	blo _08F07172
	b _08F07326
_08F07172:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r7, _08F0733C @ =gUnknown_03002852
	mov sl, r7
	lsls r0, r0, #2
	str r0, [sp, #0x14]
_08F07180:
	ldr r0, [r1, #0xc]
	ldr r1, [sp, #4]
	cmp r0, r1
	beq _08F0718E
	ldr r2, [sp, #0xc]
	cmp r0, r2
	bne _08F07232
_08F0718E:
	ldr r4, _08F07340 @ =gPositionBuffer
	ldr r6, _08F07344 @ =gUnknown_030007B0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r3, [r0]
	ldr r7, [sp, #0x14]
	adds r1, r3, r7
	strh r1, [r0]
	ldr r0, _08F07348 @ =gUnknown_030007BC
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r0]
	adds r1, r2, r7
	strh r1, [r0]
	ldr r5, _08F0734C @ =gUnknown_03000838
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r3, [r0]
	adds r1, r3, r7
	strh r1, [r0]
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r1, r1, #2
	add r1, sl
	ldr r7, [sp]
	lsls r0, r7, #0x10
	asrs r3, r0, #0x10
	lsls r2, r3, #2
	ldrh r7, [r1]
	adds r0, r7, r2
	strh r0, [r1]
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	add r0, sl
	ldrh r7, [r0]
	adds r1, r7, r2
	strh r1, [r0]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	add r0, sl
	ldrh r1, [r0]
	adds r2, r1, r2
	strh r2, [r0]
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bne _08F07204
	cmp r3, #0
	beq _08F07232
_08F07204:
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r2, #1
	ldrh r1, [r0]
	eors r1, r2
	strh r1, [r0]
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	eors r1, r2
	strh r1, [r0]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r4, [r0]
	eors r2, r4
	strh r2, [r0]
_08F07232:
	bl sub_8F016EC
	ldr r0, _08F07350 @ =gUnknown_0300081C
	ldrb r2, [r0]
	movs r7, #0
	ldr r0, _08F07354 @ =0x0000FFFC
	mov r8, r0
	ldr r1, _08F07358 @ =gGameInfo
	mov sb, r1
_08F07244:
	mov r0, sb
	adds r0, #8
	adds r0, r7, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _08F072F0
	subs r1, #1
	lsls r1, r1, #6
	add r1, sb
	adds r3, r1, #0
	adds r3, #0x5e
	ldr r4, _08F07340 @ =gPositionBuffer
	mov ip, r4
	lsls r0, r2, #0x18
	asrs r6, r0, #0x18
	lsls r2, r6, #2
	mov r4, sl
	adds r0, r2, r4
	ldrh r5, [r0]
	movs r0, #3
	ands r0, r5
	lsls r0, r0, #3
	ldrh r3, [r3]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, #0x41
	ldrb r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0728C
	adds r0, r4, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08F0728C:
	movs r0, #0x40
	ands r0, r1
	mov r3, ip
	adds r1, r2, r3
	cmp r0, #0
	bne _08F072A6
	movs r0, #1
	ldrh r2, [r1]
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08F072A6:
	mov r2, r8
	ldrh r1, [r1]
	ands r2, r1
	ldr r1, _08F0735C @ =gUnknown_03000788
	mov r0, r8
	ldrh r1, [r1]
	ands r0, r1
	ldr r3, _08F07360 @ =0xFFFFFE80
	adds r0, r0, r3
	subs r2, r2, r0
	mov r3, r8
	ands r3, r5
	ldr r1, _08F07364 @ =gUnknown_03001508
	mov r0, r8
	ldrh r1, [r1]
	ands r0, r1
	subs r0, #0xa0
	subs r3, r3, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x12
	lsls r3, r3, #0x10
	asrs r3, r3, #0x12
	adds r0, r4, #0
	movs r1, #4
	bl sub_8F01700
	adds r0, r6, #0
	subs r0, #0x10
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _08F072F0
	lsls r0, r2, #0x18
	movs r4, #0x88
	lsls r4, r4, #0x17
	adds r0, r0, r4
	lsrs r2, r0, #0x18
_08F072F0:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08F07244
	movs r0, #0
	bl sub_8F02AFC
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r1, _08F07368 @ =0x040000D4
	ldr r0, _08F0736C @ =gSpriteBuffer
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F07370 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08F07338 @ =MusicPlayer0Info
	ldr r0, [r1, #0xc]
	ldr r7, [sp, #8]
	cmp r0, r7
	bhs _08F07326
	b _08F07180
_08F07326:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F07338: .4byte MusicPlayer0Info
_08F0733C: .4byte gUnknown_03002852
_08F07340: .4byte gPositionBuffer
_08F07344: .4byte gUnknown_030007B0
_08F07348: .4byte gUnknown_030007BC
_08F0734C: .4byte gUnknown_03000838
_08F07350: .4byte gUnknown_0300081C
_08F07354: .4byte 0x0000FFFC
_08F07358: .4byte gGameInfo
_08F0735C: .4byte gUnknown_03000788
_08F07360: .4byte 0xFFFFFE80
_08F07364: .4byte gUnknown_03001508
_08F07368: .4byte 0x040000D4
_08F0736C: .4byte gSpriteBuffer
_08F07370: .4byte 0x84000100
.syntax divided
