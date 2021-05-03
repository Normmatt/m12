#ifdef NDS_VERSION
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	thumb_func_start sub_8F06EA4
sub_8F06EA4: @ 0x08F06EA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0x3c
	bl DelayByAmount
	movs r0, #0x12
	bl PlaySfxById1
	movs r0, #0x30
	bl sub_8F011E4
	bl sub_8F040E0
	bl sub_8F01208
	ldr r0, _08F06FC8 @ =gUnknown_03000784
	ldr r3, [r0]
	ldr r2, _08F06FCC @ =gUnknown_03000788
	ldr r0, _08F06FD0 @ =0x0000FFFC
	adds r1, r0, #0
	ldrh r2, [r2]
	ands r1, r2
	ldrh r2, [r3, #4]
	subs r1, r2, r1
	subs r1, #0x40
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08F06FD4 @ =gUnknown_03001508
	ldrh r2, [r2]
	ands r0, r2
	ldrh r3, [r3, #6]
	subs r0, r3, r0
	subs r0, #0xc0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r5, sp
	mov r4, sp
	mov r3, sp
	mov r2, sp
	strh r1, [r2, #6]
	strh r1, [r3, #4]
	strh r1, [r4, #2]
	strh r1, [r5]
	add r1, sp, #8
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	strh r0, [r1]
	movs r0, #0
	mov r8, r0
	ldr r1, _08F06FD8 @ =gUnknown_030007B8
	mov sl, r1
	add r6, sp, #8
	ldr r2, _08F06FDC @ =0x040000D4
	mov sb, r2
_08F06F1A:
	bl sub_8F016EC
	movs r0, #1
	bl sub_8F02BBC
	mov r0, sl
	ldrh r7, [r0]
	ldr r1, _08F06FE0 @ =0xFFFFFC00
	adds r0, r7, r1
	mov r2, sl
	strh r0, [r2]
	movs r5, #0
	movs r0, #1
	add r8, r0
_08F06F36:
	lsls r1, r5, #1
	mov r2, sp
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x12
	add r1, sp
	adds r1, #8
	ldrh r1, [r1]
	lsls r3, r1, #0x10
	asrs r3, r3, #0x12
	ldr r0, _08F06FE4 @ =0x000099F8
	movs r1, #4
	bl sub_8F01700
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F06F36
	mov r0, sl
	strh r7, [r0]
	ldrh r0, [r4]
	adds r0, #4
	strh r0, [r4]
	ldrh r0, [r6]
	adds r0, #4
	strh r0, [r6]
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r4, #2]
	ldrh r0, [r6, #2]
	subs r0, #4
	strh r0, [r6, #2]
	ldrh r0, [r4, #4]
	subs r0, #4
	strh r0, [r4, #4]
	ldrh r0, [r6, #4]
	adds r0, #4
	strh r0, [r6, #4]
	ldrh r0, [r4, #6]
	subs r0, #4
	strh r0, [r4, #6]
	ldrh r0, [r6, #6]
	subs r0, #4
	strh r0, [r6, #6]
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r0, _08F06FE8 @ =gSpriteBuffer
	mov r1, sb
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F06FEC @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x6f
	bls _08F06F1A
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F06FC8: .4byte gUnknown_03000784
_08F06FCC: .4byte gUnknown_03000788
_08F06FD0: .4byte 0x0000FFFC
_08F06FD4: .4byte gUnknown_03001508
_08F06FD8: .4byte gUnknown_030007B8
_08F06FDC: .4byte 0x040000D4
_08F06FE0: .4byte 0xFFFFFC00
_08F06FE4: .4byte 0x000099F8
_08F06FE8: .4byte gSpriteBuffer
_08F06FEC: .4byte 0x84000100

	thumb_func_start sub_8F06FF0
sub_8F06FF0: @ 0x08F06FF0
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _08F07054 @ =gGameInfo
_08F06FF6:
	adds r0, r7, #0
	adds r0, #8
	adds r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F07042
	subs r0, #1
	lsls r0, r0, #6
	adds r2, r0, r7
	adds r5, r2, #0
	adds r5, #0x41
	movs r0, #0x80
	ldrb r1, [r5]
	ands r0, r1
	cmp r0, #0
	bne _08F07042
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r0]
	adds r0, #0x12
	strh r1, [r0]
	subs r0, #0x10
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x56
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x4e
	ldrb r4, [r0]
	bl Random
	lsrs r0, r0, #0x19
	cmp r4, r0
	bls _08F07042
	movs r0, #0xfe
	ldrb r1, [r5]
	ands r0, r1
	strb r0, [r5]
_08F07042:
	adds r6, #1
	cmp r6, #3
	ble _08F06FF6
	movs r0, #0x20
	bl sub_8F0088C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F07054: .4byte gGameInfo

	thumb_func_start sub_8F07058
sub_8F07058: @ 0x08F07058
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #2
	cmp r0, #4
	bhi _08F0711A
	lsls r0, r0, #2
	ldr r1, _08F07070 @ =_08F07074
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F07070: .4byte _08F07074
_08F07074: @ jump table
	.4byte _08F07088 @ case 0
	.4byte _08F07096 @ case 1
	.4byte _08F070CE @ case 2
	.4byte _08F070F4 @ case 3
	.4byte _08F070A8 @ case 4
_08F07088:
	movs r0, #3
	movs r1, #0
	bl sub_8F07144
	movs r0, #3
	movs r1, #0
	b _08F070B4
_08F07096:
	movs r4, #2
	rsbs r4, r4, #0
	movs r0, #3
	adds r1, r4, #0
	bl sub_8F07144
	movs r0, #3
	adds r1, r4, #0
	b _08F070B4
_08F070A8:
	movs r0, #3
	movs r1, #2
	bl sub_8F07144
	movs r0, #3
	movs r1, #2
_08F070B4:
	bl sub_8F07144
	movs r4, #3
	rsbs r4, r4, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8F07144
	adds r0, r4, #0
	movs r1, #0
	bl sub_8F07144
	b _08F0713E
_08F070CE:
	movs r4, #2
	rsbs r4, r4, #0
	movs r0, #0
	adds r1, r4, #0
	bl sub_8F07144
	movs r0, #0
	adds r1, r4, #0
	bl sub_8F07144
	movs r0, #0
	adds r1, r4, #0
	bl sub_8F07144
	movs r0, #0
	adds r1, r4, #0
	bl sub_8F07144
	b _08F0713E
_08F070F4:
	movs r0, #3
	movs r1, #2
	bl sub_8F07144
	movs r0, #3
	movs r1, #2
	bl sub_8F07144
	movs r4, #3
	rsbs r4, r4, #0
	adds r0, r4, #0
	movs r1, #2
	bl sub_8F07144
	adds r0, r4, #0
	movs r1, #2
	bl sub_8F07144
	b _08F0713E
_08F0711A:
	movs r0, #1
	movs r1, #0
	bl sub_8F07144
	movs r4, #1
	rsbs r4, r4, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #1
	movs r1, #0
	bl sub_8F07144
	adds r0, r4, #0
	movs r1, #0
	bl sub_8F07144
_08F0713E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8F07144
sub_8F07144: @ 0x08F07144
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
	ldr r4, _08F07340 @ =gUnknown_03002850
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
	ldr r4, _08F07340 @ =gUnknown_03002850
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
_08F07340: .4byte gUnknown_03002850
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

	thumb_func_start sub_8F07374
sub_8F07374: @ 0x08F07374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	ldr r1, _08F07528 @ =gUnknown_08F1BAC8
	mov r0, sp
	movs r2, #8
	bl memcpy
	add r0, sp, #8
	mov sl, r0
	ldr r1, _08F0752C @ =gUnknown_08F1BAD0
	movs r2, #8
	bl memcpy
	add r1, sp, #0x10
	mov sb, r1
	ldr r1, _08F07530 @ =gUnknown_08F1BAD8
	mov r0, sb
	movs r2, #0x10
	bl memcpy
	add r2, sp, #0x20
	mov r8, r2
	ldr r1, _08F07534 @ =gUnknown_08F1BAE8
	mov r0, r8
	movs r2, #0x10
	bl memcpy
	add r6, sp, #0x30
	ldr r1, _08F07538 @ =gUnknown_08F1BAF8
	adds r0, r6, #0
	movs r2, #0x10
	bl memcpy
	add r5, sp, #0x40
	ldr r1, _08F0753C @ =gUnknown_08F1BB08
	adds r0, r5, #0
	movs r2, #0x10
	bl memcpy
	ldr r1, _08F07540 @ =gUnknown_0300317C
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #4
	ldr r3, _08F07544 @ =gUnknown_030007C0
	strb r0, [r3]
	ldr r7, _08F07548 @ =gUnknown_08F1927A
	ldrb r1, [r7, #1]
	lsls r0, r1, #8
	adds r3, r7, #0
	subs r3, #0x28
	adds r0, r0, r3
	ldrb r7, [r7]
	adds r0, r7, r0
	ldr r1, _08F0754C @ =0xFFFF8000
	adds r7, r0, r1
	ldr r4, _08F07550 @ =gCurrentItemId
	ldrb r2, [r4]
	lsls r0, r2, #1
	adds r0, r0, r7
	ldr r7, _08F07554 @ =0xFFFFFEE2
	adds r7, r7, r0
	mov ip, r7
	ldr r7, _08F07558 @ =0xFFFFFEE3
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r0, r0, r3
	mov r3, ip
	ldrb r3, [r3]
	adds r0, r3, r0
	adds r7, r0, r1
	ldr r0, _08F0755C @ =gPlayerX
	mov ip, r0
	lsls r2, r2, #3
	ldr r1, _08F07560 @ =gTeleportLocations+2
	adds r2, r2, r1
	ldrh r2, [r2]
	ldr r3, _08F07564 @ =0xFFFFFE00
	adds r0, r2, r3
	mov r2, ip
	strh r0, [r2]
	ldr r2, _08F07568 @ =gPlayerY
	ldrb r4, [r4]
	lsls r0, r4, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, #0xc0
	adds r0, r0, r3
	strh r0, [r2]
	ldr r2, _08F0756C @ =gUnknown_03000840
	ldr r1, _08F07570 @ =gUnknown_030034A8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	bl sub_8F00ADC
	bl sub_8F0B040
	movs r0, #0x1e
	bl DelayByAmount
	movs r0, #0x70
	bl sub_8F03F3C
	movs r0, #0
	str r0, [sp, #0x50]
	ldrb r4, [r7, #1]
	ldrb r0, [r7]
	cmp r0, #0
	bne _08F0745C
	b _08F0766C
_08F0745C:
	ldr r1, _08F07574 @ =gUnknown_03000C64
	mov r8, r1
	movs r2, #7
	mov sb, r2
	ldr r5, _08F07578 @ =gUnknown_03000788
	ldr r3, _08F0757C @ =0xFFFF8A28
	mov sl, r3
_08F0746A:
	ldr r0, _08F07580 @ =gUnknown_030007E0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F07476
	bl ResetVariablesUponEnteringTown
_08F07476:
	bl sub_8F01388
	bl sub_8F016EC
	mov r2, sb
	ldrb r6, [r7]
	ands r2, r6
	mov r0, r8
	strb r2, [r0]
	ldr r1, _08F07584 @ =gUnknown_08F1B660
	mov r0, sb
	ldrb r3, [r7]
	ands r0, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r6, _08F07544 @ =gUnknown_030007C0
	ldrb r6, [r6]
	muls r0, r6, r0
	ldrh r1, [r5]
	adds r0, r1, r0
	strh r0, [r5]
	ldr r3, _08F07588 @ =gUnknown_03001508
	ldr r1, _08F0758C @ =gUnknown_08F1B668
	mov r0, sb
	ldrb r6, [r7]
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08F07544 @ =gUnknown_030007C0
	ldrb r1, [r1]
	muls r0, r1, r0
	ldrh r6, [r3]
	adds r1, r6, r0
	strh r1, [r3]
	cmp r2, #2
	beq _08F074CA
	cmp r2, #6
	bne _08F074D2
_08F074CA:
	ldr r2, _08F07590 @ =0x0000FFC0
	adds r0, r2, #0
	ands r1, r0
	strh r1, [r3]
_08F074D2:
	movs r0, #0x1e
	ldr r3, [sp, #0x50]
	ands r0, r3
	cmp r0, #0
	bne _08F0759C
	cmp r4, #0
	bne _08F07596
	adds r7, #2
	ldrb r6, [r7]
	cmp r6, #0xf
	bhi _08F07594
	ldr r2, _08F0755C @ =gPlayerX
	ldrb r0, [r7, #1]
	strh r0, [r2]
	ldrb r3, [r7, #2]
	lsls r1, r3, #8
	adds r0, r0, r1
	ldr r6, _08F07564 @ =0xFFFFFE00
	adds r0, r0, r6
	strh r0, [r2]
	ldr r2, _08F07568 @ =gPlayerY
	ldrb r0, [r7, #3]
	strh r0, [r2]
	ldrb r3, [r7, #4]
	lsls r1, r3, #8
	adds r0, r0, r1
	adds r6, #0xc0
	adds r0, r0, r6
	strh r0, [r2]
	ldr r1, _08F0756C @ =gUnknown_03000840
	ldr r0, _08F07570 @ =gUnknown_030034A8
	strb r4, [r0]
	strb r4, [r1]
	ldrb r0, [r7]
	cmp r0, #0
	bne _08F0751C
	b _08F0766C
_08F0751C:
	adds r7, #5
	bl sub_8F00ADC
	ldrb r4, [r7, #1]
	b _08F07664
	.align 2, 0
_08F07528: .4byte gUnknown_08F1BAC8
_08F0752C: .4byte gUnknown_08F1BAD0
_08F07530: .4byte gUnknown_08F1BAD8
_08F07534: .4byte gUnknown_08F1BAE8
_08F07538: .4byte gUnknown_08F1BAF8
_08F0753C: .4byte gUnknown_08F1BB08
_08F07540: .4byte gUnknown_0300317C
_08F07544: .4byte gUnknown_030007C0
_08F07548: .4byte gUnknown_08F1927A
_08F0754C: .4byte 0xFFFF8000
_08F07550: .4byte gCurrentItemId
_08F07554: .4byte 0xFFFFFEE2
_08F07558: .4byte 0xFFFFFEE3
_08F0755C: .4byte gPlayerX
_08F07560: .4byte gTeleportLocations+2
_08F07564: .4byte 0xFFFFFE00
_08F07568: .4byte gPlayerY
_08F0756C: .4byte gUnknown_03000840
_08F07570: .4byte gUnknown_030034A8
_08F07574: .4byte gUnknown_03000C64
_08F07578: .4byte gUnknown_03000788
_08F0757C: .4byte 0xFFFF8A28
_08F07580: .4byte gUnknown_030007E0
_08F07584: .4byte gUnknown_08F1B660
_08F07588: .4byte gUnknown_03001508
_08F0758C: .4byte gUnknown_08F1B668
_08F07590: .4byte 0x0000FFC0
_08F07594:
	ldrb r4, [r7, #1]
_08F07596:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08F0759C:
	ldr r1, _08F07690 @ =gUnknown_030007C0
	ldrb r1, [r1]
	lsls r0, r1, #1
	ldr r2, [sp, #0x50]
	adds r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x50]
	mov r6, r8
	ldrb r3, [r6]
	mov r1, sp
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r1, #0x10
	movs r6, #0
	ldrsh r2, [r1, r6]
	mov ip, r2
	add r3, sp
	adds r3, #0x20
	movs r1, #0
	ldrsh r3, [r3, r1]
	movs r1, #9
	bl sub_8F01700
	mov r2, r8
	ldrb r3, [r2]
	mov r0, sp
	adds r0, r0, r3
	adds r0, #8
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r3, #1
	mov r1, sp
	adds r1, r1, r3
	adds r1, #0x30
	movs r2, #0
	ldrsh r6, [r1, r2]
	mov ip, r6
	add r3, sp
	adds r3, #0x40
	movs r6, #0
	ldrsh r3, [r3, r6]
	movs r1, #9
	mov r2, ip
	bl sub_8F01700
	bl sub_8F0191C
	bl DrawBg2Tilemap
#ifdef NDS_VERSION
	bl DrawBg2Tilemap2
#endif
	bl sub_8F040E0
	ldr r1, _08F07694 @ =0x040000D4
	ldr r0, _08F07698 @ =gBg2TilemapBuffer
	str r0, [r1]
	ldr r0, _08F0769C @ =0x06001000
	str r0, [r1, #4]
	ldr r0, _08F076A0 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F076A4 @ =gSpriteBuffer
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F076A8 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r1, #0xbc
	ldrh r2, [r5]
	lsrs r0, r2, #2
	movs r2, #0xf
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08F076AC @ =gUnknown_03001508
	ldrh r0, [r0]
	lsrs r0, r0, #2
	ands r0, r2
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08F07664
	bl sub_8F00C64
_08F07664:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08F0766C
	b _08F0746A
_08F0766C:
	ldr r1, _08F076B0 @ =gUnknown_0300317C
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08F076B4 @ =gUnknown_030007A0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	strb r0, [r1]
	bl UpdatePartyLocationsAfterTeleport
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F07690: .4byte gUnknown_030007C0
_08F07694: .4byte 0x040000D4
_08F07698: .4byte gBg2TilemapBuffer
_08F0769C: .4byte 0x06001000
_08F076A0: .4byte 0x84000200
_08F076A4: .4byte gSpriteBuffer
_08F076A8: .4byte 0x84000100
_08F076AC: .4byte gUnknown_03001508
_08F076B0: .4byte gUnknown_0300317C
_08F076B4: .4byte gUnknown_030007A0

	thumb_func_start sub_8F076B8
sub_8F076B8: @ 0x08F076B8
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
	bl PlaySfxById3
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
#ifdef NDS_VERSION
	bl DrawBg2Tilemap2
#endif
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
#ifdef NDS_VERSION
	movs r0, #0x80
	lsls r0, r0, #2 @@nds - 256*2
#else
	movs r0, #0xf0
	lsls r0, r0, #1
#endif
	add r0, r8
	ldr r3, _08F07AA8 @ =gUnknown_03000788
	ldrh r3, [r3]
	adds r0, r3, r0
	lsls r0, r0, #0x10
#ifdef NDS_VERSION
	movs r4, #0xd0
	lsls r4, r4, #1 @@nds - 192*2 + 32
#else
	movs r4, #0xb0
	lsls r4, r4, #1
#endif
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
	ldr r4, _08F07AD8 @ =gUnknown_03002850
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
	ldr r5, _08F07AD8 @ =gUnknown_03002850
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
	bl sub_8F09484
	movs r0, #6
	bl sub_8F09484
	ldr r5, _08F07AF4 @ =gUnknown_030007A0
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	ldr r2, _08F07AF8 @ =gPlayerX
	ldr r0, _08F07AFC @ =gTeleportLocations+0x3FA
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
_08F07AD8: .4byte gUnknown_03002850
_08F07ADC: .4byte 0x0000FFFC
_08F07AE0: .4byte gUnknown_03002852
_08F07AE4: .4byte gUnknown_08F1B660
_08F07AE8: .4byte gUnknown_08F1B668
_08F07AEC: .4byte gUnknown_03000844
_08F07AF0: .4byte gUnknown_0300318C
_08F07AF4: .4byte gUnknown_030007A0
_08F07AF8: .4byte gPlayerX
_08F07AFC: .4byte gTeleportLocations+0x3FA
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
	ldr r1, _08F07D30 @ =gUnknown_030007E8
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
	bl PlaySfxById2
	movs r0, #0xa
	bl DelayByAmount
	bl ResetVariablesUponEnteringTown
	bl sub_8F01388
	bl DrawBg2Tilemap
#ifdef NDS_VERSION
	bl DrawBg2Tilemap2
#endif
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
#ifdef NDS_VERSION
	bl DrawBg2Tilemap2
#endif
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
	ldr r4, _08F07D70 @ =gUnknown_03002850
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
_08F07D30: .4byte gUnknown_030007E8
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
_08F07D70: .4byte gUnknown_03002850
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
#ifdef NDS_VERSION
	bl DrawBg2Tilemap2
#endif
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
	bl PlaySfxById0
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

	thumb_func_start sub_8F07EB4
sub_8F07EB4: @ 0x08F07EB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, _08F07F2C @ =gUnknown_03002850
	mov r8, r0
	adds r0, r6, #0
	adds r0, #0x44
	movs r1, #0x44
	bl __modsi3
	lsls r0, r0, #2
	movs r1, #2
	add r1, r8
	mov sl, r1
	adds r1, r0, r1
	ldrh r1, [r1]
	mov sb, r1
	movs r1, #3
	mov r2, sb
	ands r1, r2
	lsls r7, r1, #1
	add r0, r8
	ldr r5, _08F07F30 @ =0x0000FFFC
	adds r4, r5, #0
	ldrh r0, [r0]
	ands r4, r0
	adds r6, #0x43
	adds r0, r6, #0
	movs r1, #0x44
	bl __modsi3
	lsls r0, r0, #2
	add r8, r0
	adds r1, r5, #0
	mov r3, r8
	ldrh r3, [r3]
	ands r1, r3
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r5, #0
	mov r2, sb
	ands r1, r2
	add r0, sl
	ldrh r0, [r0]
	ands r5, r0
	subs r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r7, #2
	beq _08F07F48
	cmp r7, #2
	bgt _08F07F34
	cmp r7, #0
	beq _08F07F3E
	b _08F07F7A
	.align 2, 0
_08F07F2C: .4byte gUnknown_03002850
_08F07F30: .4byte 0x0000FFFC
_08F07F34:
	cmp r7, #4
	beq _08F07F58
	cmp r7, #6
	beq _08F07F6C
	b _08F07F7A
_08F07F3E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _08F07F54
	b _08F07F74
_08F07F48:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _08F07F60
	cmp r0, #0
	bge _08F07F7A
_08F07F54:
	movs r7, #1
	b _08F07F7A
_08F07F58:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08F07F64
_08F07F60:
	movs r7, #3
	b _08F07F7A
_08F07F64:
	cmp r0, #0
	bge _08F07F7A
_08F07F68:
	movs r7, #5
	b _08F07F7A
_08F07F6C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _08F07F68
_08F07F74:
	cmp r0, #0
	bge _08F07F7A
	movs r7, #7
_08F07F7A:
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start AskToContinueOrEndAdventure
AskToContinueOrEndAdventure: @ 0x08F07F8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08F07FDC @ =gUnknown_03003498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08F07FE0 @ =gCurrentBgMusic
	ldrb r7, [r0]
	movs r0, #0x2f
	bl ChangeBgMusic
	bl WaitForActionButtonPress
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #0x14
	bl DrawTextWithId
	movs r0, #0x16
	bl DrawTextWithId
	ldr r1, _08F07FE4 @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0xce
	lsls r0, r0, #2
	bl DrawTextWithId
_08F07FCC:
	movs r0, #0
	bl sub_8F0B2C8
	cmp r0, #1
	beq _08F07FE8
	cmp r0, #2
	beq _08F07FF6
	b _08F07FCC
	.align 2, 0
_08F07FDC: .4byte gUnknown_03003498
_08F07FE0: .4byte gCurrentBgMusic
_08F07FE4: .4byte gTextDelayAfterWriteCharacterEnabled
_08F07FE8:
	movs r0, #0x18
	bl DrawTextWithId
	movs r0, #0x21
	bl DrawTextWithId
	b _08F08064
_08F07FF6:
	ldr r0, _08F0807C @ =gCurrentBgMusic
	strb r7, [r0]
	ldr r0, _08F08080 @ =gGameInfo
	ldr r1, _08F08084 @ =gUnknown_03000788
	ldrh r5, [r1]
	adds r3, r5, #0
	subs r3, #0x40
	movs r1, #0x40
	rsbs r1, r1, #0
	adds r6, r1, #0
	ands r3, r6
	movs r2, #0
	mov r8, r2
	ldr r1, _08F08088 @ =gUnknown_03001508
	ldrh r4, [r1]
	adds r2, r4, #0
	subs r2, #0x80
	ands r2, r6
	movs r6, #0x3f
	movs r1, #0x3f
	ands r1, r7
	orrs r3, r1
	strh r3, [r0, #4]
	ldr r3, _08F0808C @ =gUnknown_030007A4
	movs r1, #7
	ldrb r3, [r3]
	ands r1, r3
	orrs r2, r1
	strh r2, [r0, #6]
	subs r5, #0x40
	ands r5, r6
	movs r2, #0xab
	lsls r2, r2, #2
	adds r1, r0, r2
	strb r5, [r1]
	adds r4, #0x80
	ands r4, r6
	adds r2, #1
	adds r1, r0, r2
	strb r4, [r1]
	subs r2, #0x25
	adds r1, r0, r2
	mov r2, r8
	strb r2, [r1]
	ldr r1, _08F08090 @ =gUnknown_030007E4
	ldr r1, [r1]
	bl M1_CalculateChecksumAndWriteSave
	movs r0, #0x1b
	bl DrawTextWithId
	bl WaitForActionButtonPress
	bl M1_SoftReset
_08F08064:
	bl WaitForActionButtonPress
	bl sub_8F0B040
	adds r0, r7, #0
	bl ChangeBgMusic
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0807C: .4byte gCurrentBgMusic
_08F08080: .4byte gGameInfo
_08F08084: .4byte gUnknown_03000788
_08F08088: .4byte gUnknown_03001508
_08F0808C: .4byte gUnknown_030007A4
_08F08090: .4byte gUnknown_030007E4

