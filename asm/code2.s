#ifdef NDS_VERSION
#include "macros.inc"
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
	ldr r0, _08F06FE8 @ =gUnknown_03002450
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
_08F06FE8: .4byte gUnknown_03002450
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
	ldr r0, _08F0736C @ =gUnknown_03002450
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
_08F0736C: .4byte gUnknown_03002450
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
	bl sub_8F01254
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
	ldr r0, _08F076A4 @ =gUnknown_03002450
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
	bl sub_8F09420
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
_08F076A4: .4byte gUnknown_03002450
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
	bl sub_8F01254
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

	thumb_func_start NothingHappened
NothingHappened: @ 0x08F08094
	push {lr}
	movs r0, #0xe6
	lsls r0, r0, #2
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F080A4
sub_8F080A4: @ 0x08F080A4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08F0817C @ =gUnknown_03000788
	ldr r0, _08F08180 @ =gUnknown_08F1B670
	ldr r1, _08F08184 @ =gUnknown_030007A4
	ldrb r1, [r1]
	lsrs r1, r1, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x78
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, _08F08188 @ =gUnknown_03001508
	ldr r0, _08F0818C @ =gUnknown_08F1B674
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x58
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
_08F080DC:
	ldr r1, _08F08190 @ =gUnknown_03003170
	movs r0, #0
	strb r0, [r1]
	movs r5, #0
	ldr r1, _08F08194 @ =gUnknown_03000784
	ldr r0, _08F08198 @ =gUnknown_03001D40
	str r0, [r1]
	ldrb r0, [r0]
	lsls r7, r2, #0x18
	cmp r0, #0
	beq _08F08150
_08F080F2:
	ldr r2, [r1]
	movs r0, #0x80
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08F0812E
	movs r0, #0x40
	ldrb r1, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08F0812E
	ldrh r0, [r2, #4]
	subs r1, r6, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r2, #6]
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bhi _08F0812E
	cmp r0, #0x3f
	bhi _08F0812E
	movs r0, #0xd
	bl ExecuteScript
	ldr r0, _08F08190 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F08150
_08F0812E:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F08150
	ldr r2, _08F08194 @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F08198 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	adds r1, r2, #0
	cmp r0, #0
	bne _08F080F2
_08F08150:
	cmp r7, #0
	bne _08F0819C
	ldr r0, _08F08190 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F081A8
	ldr r0, _08F08184 @ =gUnknown_030007A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0819C
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F0819C
	adds r0, r4, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #1
	b _08F080DC
	.align 2, 0
_08F0817C: .4byte gUnknown_03000788
_08F08180: .4byte gUnknown_08F1B670
_08F08184: .4byte gUnknown_030007A4
_08F08188: .4byte gUnknown_03001508
_08F0818C: .4byte gUnknown_08F1B674
_08F08190: .4byte gUnknown_03003170
_08F08194: .4byte gUnknown_03000784
_08F08198: .4byte gUnknown_03001D40
_08F0819C:
	ldr r0, _08F081B0 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F081A8
	bl NothingHappened
_08F081A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F081B0: .4byte gUnknown_03003170

	thumb_func_start UseBread
UseBread: @ 0x08F081B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F081CC @ =gConsumableType
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F081DC
	movs r0, #0x14
	bl sub_8F08E24
	b _08F08284
	.align 2, 0
_08F081CC: .4byte gConsumableType
_08F081D0:
	ldr r0, _08F081D8 @ =0x000006BC
	bl DrawTextWithId
	b _08F08284
	.align 2, 0
_08F081D8: .4byte 0x000006BC
_08F081DC:
	movs r2, #0
	ldr r7, _08F08290 @ =gUnknown_03003174
	ldr r1, _08F08294 @ =gGameInfo
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #6
	adds r1, #0x60
	adds r0, r0, r1
_08F081EC:
	ldrb r1, [r0]
	cmp r1, #3
	beq _08F081D0
	adds r0, #1
	adds r2, #1
	cmp r2, #7
	ble _08F081EC
	ldrb r0, [r7]
	bl GetPositionOfCurrentItemFromInventoryOrCloset
	adds r2, r0, #0
	cmp r2, #0
	blt _08F08284
	ldr r6, _08F08294 @ =gGameInfo
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r2, r0
	adds r1, r6, #0
	adds r1, #0x60
	adds r0, r0, r1
	movs r1, #3
	strb r1, [r0]
	ldrb r1, [r7]
	subs r1, #1
	lsls r1, r1, #6
	adds r1, r1, r6
	ldr r0, _08F08298 @ =gUnknown_03000788
	ldrh r0, [r0]
	mov r8, r0
	ldr r4, _08F0829C @ =0x0000FFC0
	adds r2, r4, #0
	mov r0, r8
	ands r2, r0
	ldr r5, _08F082A0 @ =gCurrentBgMusic
	movs r3, #0x3f
	adds r0, r3, #0
	ldrb r5, [r5]
	ands r0, r5
	adds r0, r0, r2
	adds r1, #0x6c
	strh r0, [r1]
	ldrb r1, [r7]
	subs r1, #1
	lsls r1, r1, #6
	adds r1, r1, r6
	ldr r5, _08F082A4 @ =gUnknown_03001508
	ldrh r2, [r5]
	ands r4, r2
	ldr r2, _08F082A8 @ =gUnknown_030007A4
	movs r0, #7
	ldrb r2, [r2]
	ands r0, r2
	adds r0, r0, r4
	adds r1, #0x6e
	strh r0, [r1]
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	adds r1, r3, #0
	mov r2, r8
	ands r1, r2
	adds r0, #0x5a
	strb r1, [r0]
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	ldrb r5, [r5]
	ands r3, r5
	adds r0, #0x5b
	strb r3, [r0]
	ldr r0, _08F082AC @ =0x000006BB
	bl DrawTextWithId
_08F08284:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08290: .4byte gUnknown_03003174
_08F08294: .4byte gGameInfo
_08F08298: .4byte gUnknown_03000788
_08F0829C: .4byte 0x0000FFC0
_08F082A0: .4byte gCurrentBgMusic
_08F082A4: .4byte gUnknown_03001508
_08F082A8: .4byte gUnknown_030007A4
_08F082AC: .4byte 0x000006BB

	thumb_func_start sub_8F082B0
sub_8F082B0: @ 0x08F082B0
	push {lr}
	ldr r0, _08F082C4 @ =gConsumableType
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F082C8
	movs r0, #0xf
	bl sub_8F08E24
	b _08F082CC
	.align 2, 0
_08F082C4: .4byte gConsumableType
_08F082C8:
	bl sub_8F080A4
_08F082CC:
	pop {r0}
	bx r0

	thumb_func_start sub_8F082D0
sub_8F082D0: @ 0x08F082D0
	push {lr}
	ldr r1, _08F082EC @ =gGameInfo
	movs r0, #0xa
	strb r0, [r1, #0x19]
	ldr r0, _08F082F0 @ =gUnknown_03003174
	ldrb r0, [r0]
	bl RemoveItemFromInventory
	ldr r0, _08F082F4 @ =0x0000038E
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0
_08F082EC: .4byte gGameInfo
_08F082F0: .4byte gUnknown_03003174
_08F082F4: .4byte 0x0000038E

	thumb_func_start sub_8F082F8
sub_8F082F8: @ 0x08F082F8
	push {lr}
	ldr r1, _08F0830C @ =gConsumableType
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xa
	bl sub_8F08E24
	pop {r0}
	bx r0
	.align 2, 0
_08F0830C: .4byte gConsumableType

	thumb_func_start sub_8F08310
sub_8F08310: @ 0x08F08310
	push {lr}
	movs r0, #0x14
	bl sub_8F08E24
	pop {r0}
	bx r0

	thumb_func_start sub_8F0831C
sub_8F0831C: @ 0x08F0831C
	push {lr}
	ldr r1, _08F08330 @ =gConsumableType
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x1e
	bl sub_8F08E24
	pop {r0}
	bx r0
	.align 2, 0
_08F08330: .4byte gConsumableType

	thumb_func_start sub_8F08334
sub_8F08334: @ 0x08F08334
	push {lr}
	movs r0, #0x3c
	bl sub_8F08E24
	pop {r0}
	bx r0

	thumb_func_start sub_8F08340
sub_8F08340: @ 0x08F08340
	push {lr}
	ldr r1, _08F08354 @ =gConsumableType
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x64
	bl sub_8F08E24
	pop {r0}
	bx r0
	.align 2, 0
_08F08354: .4byte gConsumableType

	thumb_func_start sub_8F08358
sub_8F08358: @ 0x08F08358
	push {lr}
	ldr r0, _08F0836C @ =gConsumableType
	movs r1, #3
	strb r1, [r0]
	ldr r0, _08F08370 @ =0x0000FFFF
	bl sub_8F08E24
	pop {r0}
	bx r0
	.align 2, 0
_08F0836C: .4byte gConsumableType
_08F08370: .4byte 0x0000FFFF

	thumb_func_start sub_8F08374
sub_8F08374: @ 0x08F08374
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F08398 @ =gUnknown_030007D8
	ldrh r0, [r0]
	mov r8, r0
	ldr r5, _08F0839C @ =gUnknown_03003174
	ldrb r7, [r5]
	bl sub_8F0BA2C
	adds r2, r0, #0
	cmp r2, #0
	bgt _08F083A4
	ldr r1, _08F083A0 @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F0844E
	.align 2, 0
_08F08398: .4byte gUnknown_030007D8
_08F0839C: .4byte gUnknown_03003174
_08F083A0: .4byte gUnknown_03001504
_08F083A4:
	ldr r0, _08F083CC @ =gGameInfo
	subs r1, r2, #1
	lsls r1, r1, #6
	adds r4, r1, r0
	adds r1, r4, #0
	adds r1, #0x41
	movs r6, #0x80
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F083D8
	ldr r0, _08F083D0 @ =gCurrentCharacterId
	strb r2, [r0]
	ldr r0, _08F083D4 @ =0x000006A6
	bl DrawTextWithId
	bl NothingHappened
	b _08F0842E
	.align 2, 0
_08F083CC: .4byte gGameInfo
_08F083D0: .4byte gCurrentCharacterId
_08F083D4: .4byte 0x000006A6
_08F083D8:
	strb r2, [r5]
	movs r0, #0x1e
	bl sub_8F021C4
	ldr r5, _08F08458 @ =gTempNumber
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x42
	adds r4, #0x54
	ldrh r3, [r4]
	ldrh r1, [r1]
	subs r1, r1, r3
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r1, #0x10
	cmp r0, r1
	bls _08F083FC
	strh r2, [r5]
_08F083FC:
	ldrh r5, [r5]
	adds r0, r5, r3
	strh r0, [r4]
	ldr r0, _08F0845C @ =0x000006BA
	bl DrawTextWithId
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F08460 @ =gUnknown_03003170
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	ldr r0, _08F08464 @ =0x000006B3
	bl DrawTextWithId
	ldr r1, _08F08468 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	ldr r0, _08F0846C @ =0x000006B1
	bl DrawTextWithId
_08F0842E:
	ldr r1, _08F08470 @ =gGameInfo
	ldrb r0, [r1, #0x1f]
	subs r0, #1
	strb r0, [r1, #0x1f]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08F0844E
	ldr r0, _08F08474 @ =0x000006C1
	bl DrawTextWithId
	ldr r0, _08F08478 @ =gUnknown_030007D8
	mov r1, r8
	strh r1, [r0]
	adds r0, r7, #0
	bl RemoveItemFromInventory
_08F0844E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08458: .4byte gTempNumber
_08F0845C: .4byte 0x000006BA
_08F08460: .4byte gUnknown_03003170
_08F08464: .4byte 0x000006B3
_08F08468: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0846C: .4byte 0x000006B1
_08F08470: .4byte gGameInfo
_08F08474: .4byte 0x000006C1
_08F08478: .4byte gUnknown_030007D8

	thumb_func_start sub_8F0847C
sub_8F0847C: @ 0x08F0847C
	push {lr}
	ldr r1, _08F0848C @ =0x000006C3
	movs r0, #2
	bl AttemptRemovalOfCondition
	pop {r0}
	bx r0
	.align 2, 0
_08F0848C: .4byte 0x000006C3

	thumb_func_start sub_8F08490
sub_8F08490: @ 0x08F08490
	push {lr}
	ldr r1, _08F084A0 @ =0x000006C4
	movs r0, #1
	bl AttemptRemovalOfCondition
	pop {r0}
	bx r0
	.align 2, 0
_08F084A0: .4byte 0x000006C4

	thumb_func_start sub_8F084A4
sub_8F084A4: @ 0x08F084A4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08F08528 @ =0x000006C5
	bl DrawTextWithId
	movs r0, #0x14
	bl sub_8F021C4
	ldr r5, _08F0852C @ =gTempNumber
	strh r0, [r5]
	ldr r7, _08F08530 @ =gGameInfo
	ldr r6, _08F08534 @ =gUnknown_03003174
	ldrb r1, [r6]
	subs r1, #1
	lsls r1, r1, #6
	adds r1, r1, r7
	adds r2, r1, #0
	adds r2, #0x44
	adds r1, #0x56
	ldrh r2, [r2]
	ldrh r1, [r1]
	subs r1, r2, r1
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r1, #0x10
	cmp r0, r1
	bls _08F084DA
	strh r2, [r5]
_08F084DA:
	ldr r1, _08F08538 @ =gUnknown_03003170
	movs r4, #0x80
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldr r0, _08F0853C @ =0x000006B4
	bl DrawTextWithId
	ldr r0, _08F08540 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r1, [r0]
	orrs r4, r1
	strb r4, [r0]
	ldr r0, _08F08544 @ =0x000006B1
	bl DrawTextWithId
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r7
	adds r0, #0x56
	ldrh r2, [r0]
	ldrh r5, [r5]
	adds r1, r2, r5
	strh r1, [r0]
	bl Random
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bhi _08F08520
	ldr r0, _08F08548 @ =0x000006C6
	bl DrawTextWithId
	ldrb r0, [r6]
	bl RemoveItemFromInventory
_08F08520:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08528: .4byte 0x000006C5
_08F0852C: .4byte gTempNumber
_08F08530: .4byte gGameInfo
_08F08534: .4byte gUnknown_03003174
_08F08538: .4byte gUnknown_03003170
_08F0853C: .4byte 0x000006B4
_08F08540: .4byte gTextDelayAfterWriteCharacterEnabled
_08F08544: .4byte 0x000006B1
_08F08548: .4byte 0x000006C6

	thumb_func_start sub_8F0854C
sub_8F0854C: @ 0x08F0854C
	push {lr}
	ldr r1, _08F0855C @ =0x000006BE
	movs r0, #0xf
	bl sub_8F0922C
	pop {r0}
	bx r0
	.align 2, 0
_08F0855C: .4byte 0x000006BE

	thumb_func_start sub_8F08560
sub_8F08560: @ 0x08F08560
	push {lr}
	ldr r1, _08F08570 @ =0x000006AF
	movs r0, #0xb
	bl sub_8F0922C
	pop {r0}
	bx r0
	.align 2, 0
_08F08570: .4byte 0x000006AF

	thumb_func_start sub_8F08574
sub_8F08574: @ 0x08F08574
	push {lr}
#ifdef JAPANESE
	movs r1, #0xd6
	lsls r1, r1, #3
#elif ENGLISH
	@let capsule items be "swallowed" instead of "drank"
	bl swallow_item
#endif
	movs r0, #0xc
	bl sub_8F0922C
	pop {r0}
	bx r0

	thumb_func_start sub_8F08584
sub_8F08584: @ 0x08F08584
	push {lr}
#ifdef JAPANESE
	movs r1, #0xd6
	lsls r1, r1, #3
#elif ENGLISH
	@let capsule items be "swallowed" instead of "drank"
	bl swallow_item
#endif
	movs r0, #0xd
	bl sub_8F0922C
	pop {r0}
	bx r0

	thumb_func_start sub_8F08594
sub_8F08594: @ 0x08F08594
	push {lr}
#ifdef JAPANESE
	movs r1, #0xd6
	lsls r1, r1, #3
#elif ENGLISH
	@let capsule items be "swallowed" instead of "drank"
	bl swallow_item
#endif
	movs r0, #0xe
	bl sub_8F0922C
	pop {r0}
	bx r0

	thumb_func_start sub_8F085A4
sub_8F085A4: @ 0x08F085A4
	push {lr}
#ifdef JAPANESE
	movs r1, #0xd6
	lsls r1, r1, #3
#elif ENGLISH
	@let capsule items be "swallowed" instead of "drank"
	bl swallow_item
#endif
	movs r0, #0xf
	bl sub_8F0922C
	pop {r0}
	bx r0

	thumb_func_start sub_8F085B4
sub_8F085B4: @ 0x08F085B4
	push {lr}
#ifdef JAPANESE
	movs r1, #0xd6
	lsls r1, r1, #3
#elif ENGLISH
	@let capsule items be "swallowed" instead of "drank"
	bl swallow_item
#endif
	movs r0, #0xb
	bl sub_8F0922C
	pop {r0}
	bx r0

	thumb_func_start GrandFatherDiary
GrandFatherDiary: @ 0x08F085C4
	push {lr}
	ldr r0, _08F085D0 @ =0x000006CA
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0
_08F085D0: .4byte 0x000006CA

	thumb_func_start sub_8F085D4
sub_8F085D4: @ 0x08F085D4
	push {r4, lr}
	bl sub_8F09354
	cmp r0, #0
	beq _08F08638
	ldr r1, _08F085FC @ =gGameInfo
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08F08600
	bl NothingHappened
	b _08F08638
	.align 2, 0
_08F085FC: .4byte gGameInfo
_08F08600:
	movs r0, #6
	bl sub_8F09484
	ldr r0, _08F08640 @ =0x0000038E
	bl DrawTextWithId
	ldr r1, _08F08644 @ =gUnknown_030007A0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r1, _08F08648 @ =gUnknown_030007E8
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08F0864C @ =gPlayerX
	ldr r2, _08F08650 @ =0x00009E89
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F08654 @ =gPlayerY
	ldr r2, _08F08658 @ =0x0000A8C4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F0865C @ =gUnknown_03000840
	ldr r0, _08F08660 @ =gUnknown_030034A8
	strb r4, [r0]
	strb r4, [r1]
	bl sub_8F09420
_08F08638:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F08640: .4byte 0x0000038E
_08F08644: .4byte gUnknown_030007A0
_08F08648: .4byte gUnknown_030007E8
_08F0864C: .4byte gPlayerX
_08F08650: .4byte 0x00009E89
_08F08654: .4byte gPlayerY
_08F08658: .4byte 0x0000A8C4
_08F0865C: .4byte gUnknown_03000840
_08F08660: .4byte gUnknown_030034A8

	thumb_func_start sub_8F08664
sub_8F08664: @ 0x08F08664
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08F0878C @ =gUnknown_03003174
	ldrb r0, [r4]
	bl RemoveItemFromInventory
	ldr r0, _08F08790 @ =0x000006BD
	bl DrawTextWithId
	ldr r1, _08F08794 @ =gUnknown_030007A0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r1, _08F08798 @ =gUnknown_030007E8
	movs r0, #1
	strb r0, [r1]
	ldr r6, _08F0879C @ =gPlayerX
	ldr r1, _08F087A0 @ =gGameInfo
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r5, _08F087A4 @ =gPlayerY
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r3, _08F087A8 @ =gUnknown_03000840
	mov ip, r3
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x5a
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r7, _08F087AC @ =gUnknown_030034A8
	mov r8, r7
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x5b
	ldrb r0, [r0]
	mov r1, r8
	strb r0, [r1]
	ldrh r2, [r6]
	ldr r3, _08F087B0 @ =0xFFFFFDC0
	adds r0, r2, r3
	cmp r0, #0
	bge _08F086DE
	ldr r7, _08F087B4 @ =0x000001BF
	adds r0, r2, r7
_08F086DE:
	asrs r0, r0, #0xa
	cmp r0, #0x38
	bne _08F0873C
	ldrh r1, [r5]
	ldr r4, _08F087B8 @ =0xFFFFFD40
	adds r0, r1, r4
	cmp r0, #0
	bge _08F086F2
	ldr r7, _08F087BC @ =0x0000013F
	adds r0, r1, r7
_08F086F2:
	asrs r0, r0, #0xa
	cmp r0, #7
	bne _08F0873C
	ldr r0, _08F087C0 @ =gUnknown_03000788
	ldrh r1, [r0]
	adds r0, r1, r3
	cmp r0, #0
	bge _08F08706
	ldr r3, _08F087B4 @ =0x000001BF
	adds r0, r1, r3
_08F08706:
	asrs r0, r0, #0xa
	cmp r0, #0x38
	beq _08F0873C
	ldr r0, _08F087C4 @ =gUnknown_03001508
	ldrh r1, [r0]
	adds r0, r1, r4
	cmp r0, #0
	bge _08F0871A
	ldr r7, _08F087BC @ =0x0000013F
	adds r0, r1, r7
_08F0871A:
	asrs r0, r0, #0xa
	cmp r0, #7
	beq _08F0873C
	movs r0, #0x3f
	ands r2, r0
	ldr r1, _08F087C8 @ =0x0000A980
	adds r0, r1, #0
	adds r0, r2, r0
	strh r0, [r6]
	ldr r2, _08F087CC @ =0x0000F446
	adds r0, r2, #0
	strh r0, [r5]
	movs r0, #0
	mov r3, ip
	strb r0, [r3]
	mov r6, r8
	strb r0, [r6]
_08F0873C:
	ldr r5, _08F0879C @ =gPlayerX
	ldrh r2, [r5]
	adds r0, r2, #0
	subs r0, #0x60
	movs r3, #0xff
	lsls r3, r3, #8
	ands r0, r3
	movs r1, #0x9c
	lsls r1, r1, #7
	cmp r0, r1
	bne _08F08782
	ldr r4, _08F087A4 @ =gPlayerY
	ldrh r7, [r4]
	ldr r1, _08F087D0 @ =0xFFFFFF00
	adds r0, r7, r1
	ands r0, r3
	movs r1, #0xb2
	lsls r1, r1, #7
	cmp r0, r1
	bne _08F08782
	movs r0, #0x3f
	ands r2, r0
	movs r3, #0x9d
	lsls r3, r3, #7
	adds r0, r3, #0
	adds r0, r2, r0
	strh r0, [r5]
	ldr r6, _08F087D4 @ =0x00005AC4
	adds r0, r6, #0
	strh r0, [r4]
	ldr r0, _08F087A8 @ =gUnknown_03000840
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08F087AC @ =gUnknown_030034A8
	strb r1, [r0]
_08F08782:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0878C: .4byte gUnknown_03003174
_08F08790: .4byte 0x000006BD
_08F08794: .4byte gUnknown_030007A0
_08F08798: .4byte gUnknown_030007E8
_08F0879C: .4byte gPlayerX
_08F087A0: .4byte gGameInfo
_08F087A4: .4byte gPlayerY
_08F087A8: .4byte gUnknown_03000840
_08F087AC: .4byte gUnknown_030034A8
_08F087B0: .4byte 0xFFFFFDC0
_08F087B4: .4byte 0x000001BF
_08F087B8: .4byte 0xFFFFFD40
_08F087BC: .4byte 0x0000013F
_08F087C0: .4byte gUnknown_03000788
_08F087C4: .4byte gUnknown_03001508
_08F087C8: .4byte 0x0000A980
_08F087CC: .4byte 0x0000F446
_08F087D0: .4byte 0xFFFFFF00
_08F087D4: .4byte 0x00005AC4

	thumb_func_start JustTurnThePowerOff
JustTurnThePowerOff: @ 0x08F087D8
	push {lr}
	ldr r0, _08F087E4 @ =0x000006BF
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0
_08F087E4: .4byte 0x000006BF

	thumb_func_start FigureOutLengthsOfManyThings
FigureOutLengthsOfManyThings: @ 0x08F087E8
	push {lr}
	movs r0, #0xd8
	lsls r0, r0, #3
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start HandleMap
HandleMap: @ 0x08F087F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	ldr r1, _08F08848 @ =gUnknown_08F1BB28
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r0, _08F0884C @ =gUnknown_030007F8
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08F0885C
	ldr r0, _08F08850 @ =0x000006CE
	bl DrawTextWithId
	ldr r2, _08F08854 @ =gKeysDown
	ldr r1, _08F08858 @ =0x0000020F
	adds r0, r1, #0
	ldrh r3, [r2]
	ands r0, r3
	cmp r0, #0
	bne _08F08840
	adds r5, r2, #0
	adds r4, r1, #0
_08F08830:
	bl sub_8F040E0
	bl UpdateInput
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08F08830
_08F08840:
	bl sub_8F0B040
	b _08F08AAC
	.align 2, 0
_08F08848: .4byte gUnknown_08F1BB28
_08F0884C: .4byte gUnknown_030007F8
_08F08850: .4byte 0x000006CE
_08F08854: .4byte gKeysDown
_08F08858: .4byte 0x0000020F
_08F0885C:
	bl FadeOut
	bl sub_8F0B040
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08F088B4 @ =0x05000080
	mov r0, sp
	bl LoadPalette
	add r0, sp, #0x10
	ldr r1, _08F088B8 @ =0x05000280
	bl LoadPalette
	ldr r0, _08F088BC @ =gMapTiles
	ldr r1, _08F088C0 @ =0x0600E000
	movs r2, #0xc0
	bl BitUnpack
	ldr r1, _08F088C4 @ =gUnknown_03000808
	movs r2, #0x86
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08F088C8 @ =gUnknown_08F5C71C
	ldr r1, _08F088CC @ =0x06002000
	bl sub_8F00EE0
	ldr r1, _08F088D0 @ =gUnknown_03000788
	ldr r0, _08F088D4 @ =0x0000EFFF
	movs r7, #8
	ldrh r1, [r1]
	cmp r1, r0
	bhi _08F088A6
	movs r7, #4
_08F088A6:
	ldr r0, _08F088D8 @ =gUnknown_03001508
	ldrh r1, [r0]
	ldr r0, _08F088DC @ =0x00003DFF
	cmp r1, r0
	bhi _08F088E0
	movs r6, #0
	b _08F088EA
	.align 2, 0
_08F088B4: .4byte 0x05000080
_08F088B8: .4byte 0x05000280
_08F088BC: .4byte gMapTiles
_08F088C0: .4byte 0x0600E000
_08F088C4: .4byte gUnknown_03000808
_08F088C8: .4byte gUnknown_08F5C71C
_08F088CC: .4byte 0x06002000
_08F088D0: .4byte gUnknown_03000788
_08F088D4: .4byte 0x0000EFFF
_08F088D8: .4byte gUnknown_03001508
_08F088DC: .4byte 0x00003DFF
_08F088E0:
	ldr r0, _08F08A58 @ =0x0000A5FF
	movs r6, #0x50
	cmp r1, r0
	bhi _08F088EA
	movs r6, #0x20
_08F088EA:
	ldr r0, _08F08A5C @ =0x0400001C
	strh r7, [r0]
	adds r0, #2
	strh r6, [r0]
	bl sub_8F019B8
	ldr r4, _08F08A60 @ =gUnknown_03002450
	ldr r0, _08F08A64 @ =gUnknown_03000788
	ldrh r0, [r0]
	lsrs r1, r0, #8
	lsls r5, r7, #0x10
	asrs r0, r5, #0x10
	subs r1, r1, r0
	subs r1, #6
	ldr r3, _08F08A68 @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	ldr r0, _08F08A6C @ =0xFFFFFE00
	ldrh r2, [r4, #2]
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r0, _08F08A70 @ =gUnknown_03001508
	ldrh r0, [r0]
	lsrs r0, r0, #8
	subs r0, r0, r6
	subs r0, #0x16
	strb r0, [r4]
	movs r1, #0xf
	ldrb r3, [r4, #5]
	ands r1, r3
	movs r0, #0x40
	orrs r1, r0
	movs r0, #0x11
	rsbs r0, r0, #0
	ldrb r2, [r4, #3]
	ands r0, r2
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	strb r0, [r4, #3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r4, #5]
	ldr r0, _08F08A74 @ =0xFFFFFC00
	ldrh r3, [r4, #4]
	ands r0, r3
	ldr r2, _08F08A78 @ =0x0000015F
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	bl FadeIn
	movs r0, #0
	mov r8, r0
_08F08966:
	ldr r0, _08F08A64 @ =gUnknown_03000788
	ldrh r0, [r0]
	lsrs r1, r0, #8
	asrs r5, r5, #0x10
	subs r1, r1, r5
	subs r1, #6
	ldr r2, _08F08A68 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldr r3, _08F08A6C @ =0xFFFFFE00
	adds r0, r3, #0
	ldrh r2, [r4, #2]
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r0, _08F08A70 @ =gUnknown_03001508
	ldrh r0, [r0]
	lsrs r0, r0, #8
	subs r0, r0, r6
	subs r0, #0x16
	strb r0, [r4]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08F089B0
	ldrb r2, [r4, #5]
	lsrs r1, r2, #4
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #5]
_08F089B0:
	bl sub_8F040E0
	ldr r1, _08F08A7C @ =0x040000D4
	str r4, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F08A80 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F08A5C @ =0x0400001C
	strh r7, [r0]
	adds r0, #2
	strh r6, [r0]
	bl UpdateInput
	ldr r1, _08F08A84 @ =gKeysDown
	ldr r2, _08F08A88 @ =0x0000020F
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F08A94
	ldr r1, _08F08A8C @ =gKeysRepeat
	movs r0, #0x10
	ldrh r3, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08F089F8
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08F089F8
	movs r7, #8
_08F089F8:
	movs r0, #0x20
	ldrh r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08F08A10
	lsls r0, r7, #0x10
	ldr r3, _08F08A90 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r7, r0, #0x10
	cmp r0, #0
	bge _08F08A10
	movs r7, #0
_08F08A10:
	movs r0, #0x40
	ldrh r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08F08A28
	lsls r0, r6, #0x10
	ldr r3, _08F08A90 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	cmp r0, #0
	bge _08F08A28
	movs r6, #0
_08F08A28:
	movs r0, #0x80
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F08A44
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x50
	ble _08F08A44
	movs r6, #0x50
_08F08A44:
	mov r2, r8
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r7, #0x10
	b _08F08966
	.align 2, 0
_08F08A58: .4byte 0x0000A5FF
_08F08A5C: .4byte 0x0400001C
_08F08A60: .4byte gUnknown_03002450
_08F08A64: .4byte gUnknown_03000788
_08F08A68: .4byte 0x000001FF
_08F08A6C: .4byte 0xFFFFFE00
_08F08A70: .4byte gUnknown_03001508
_08F08A74: .4byte 0xFFFFFC00
_08F08A78: .4byte 0x0000015F
_08F08A7C: .4byte 0x040000D4
_08F08A80: .4byte 0x84000100
_08F08A84: .4byte gKeysDown
_08F08A88: .4byte 0x0000020F
_08F08A8C: .4byte gKeysRepeat
_08F08A90: .4byte 0xFFFF0000
_08F08A94:
	bl FadeOut
	bl sub_8F03128
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xa8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bl FadeIn
_08F08AAC:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start PlayOcarinaOfHope
PlayOcarinaOfHope: @ 0x08F08AB8
	push {r4, lr}
	ldr r0, _08F08ADC @ =0x000006CC
	bl DrawTextWithId
	ldr r0, _08F08AE0 @ =gCurrentBgMusic
	ldrb r4, [r0]
	movs r0, #1
	bl ChangeBgMusic
	ldr r0, _08F08AE4 @ =0x000006CD
	bl DrawTextWithId
	adds r0, r4, #0
	bl ChangeBgMusic
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F08ADC: .4byte 0x000006CC
_08F08AE0: .4byte gCurrentBgMusic
_08F08AE4: .4byte 0x000006CD

	thumb_func_start sub_8F08AE8
sub_8F08AE8: @ 0x08F08AE8
	push {r4, r5, r6, lr}
	ldr r0, _08F08B64 @ =0x0000038E
	bl DrawTextWithId
	movs r3, #0
	ldr r4, _08F08B68 @ =gGameInfo
	movs r6, #0
	adds r5, r4, #0
	adds r5, #8
_08F08AFA:
	adds r0, r3, r5
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F08B26
	lsls r0, r1, #6
	adds r2, r0, r4
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
	adds r0, #0x41
	strb r6, [r0]
_08F08B26:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F08AFA
	movs r0, #0xdb
	lsls r0, r0, #3
	bl DrawTextWithId
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F08B6C @ =gUnknown_03003170
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bl UpdateCharactersInParty
	bl sub_8F03128
	ldr r0, _08F08B70 @ =gUnknown_03003174
	ldrb r0, [r0]
	bl RemoveItemFromInventory
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F08B64: .4byte 0x0000038E
_08F08B68: .4byte gGameInfo
_08F08B6C: .4byte gUnknown_03003170
_08F08B70: .4byte gUnknown_03003174

	thumb_func_start sub_8F08B74
sub_8F08B74: @ 0x08F08B74
	push {r4, lr}
	bl sub_8F09354
	cmp r0, #0
	beq _08F08C26
	ldr r0, _08F08BA0 @ =0x0000038E
	bl DrawTextWithId
	ldr r4, _08F08BA4 @ =gGameInfo
	adds r1, r4, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F08BA8
	movs r0, #0xe6
	lsls r0, r0, #2
	bl DrawTextWithId
	b _08F08C26
	.align 2, 0
_08F08BA0: .4byte 0x0000038E
_08F08BA4: .4byte gGameInfo
_08F08BA8:
	ldr r0, _08F08BE8 @ =0x000006D9
	bl DrawTextWithId
	movs r0, #7
	bl sub_8F09484
	movs r0, #6
	bl sub_8F09484
	ldr r1, _08F08BEC @ =gUnknown_030007A0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r1, _08F08BF0 @ =gUnknown_030007E8
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08F08BF4 @ =0x00000212
	adds r1, r4, r0
	movs r0, #0x20
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F08C08
	ldr r1, _08F08BF8 @ =gPlayerX
	ldr r2, _08F08BFC @ =0x0000EF0B
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F08C00 @ =gPlayerY
	ldr r2, _08F08C04 @ =0x000099C4
	b _08F08C14
	.align 2, 0
_08F08BE8: .4byte 0x000006D9
_08F08BEC: .4byte gUnknown_030007A0
_08F08BF0: .4byte gUnknown_030007E8
_08F08BF4: .4byte 0x00000212
_08F08BF8: .4byte gPlayerX
_08F08BFC: .4byte 0x0000EF0B
_08F08C00: .4byte gPlayerY
_08F08C04: .4byte 0x000099C4
_08F08C08:
	ldr r1, _08F08C2C @ =gPlayerX
	ldr r2, _08F08C30 @ =0x0000EACB
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F08C34 @ =gPlayerY
	ldr r2, _08F08C38 @ =0x0000C884
_08F08C14:
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08F08C3C @ =gUnknown_03000840
	ldr r1, _08F08C40 @ =gUnknown_030034A8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	bl sub_8F09420
_08F08C26:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F08C2C: .4byte gPlayerX
_08F08C30: .4byte 0x0000EACB
_08F08C34: .4byte gPlayerY
_08F08C38: .4byte 0x0000C884
_08F08C3C: .4byte gUnknown_03000840
_08F08C40: .4byte gUnknown_030034A8

	thumb_func_start sub_8F08C44
sub_8F08C44: @ 0x08F08C44
	push {lr}
	ldr r0, _08F08C58 @ =0x000006C7
	bl DrawTextWithId
	movs r0, #0xe6
	lsls r0, r0, #2
	bl DrawTextWithId
	pop {r0}
	bx r0
	.align 2, 0
_08F08C58: .4byte 0x000006C7

	thumb_func_start sub_8F08C5C
sub_8F08C5C: @ 0x08F08C5C
	push {r4, r5, r6, r7, lr}
	bl sub_8F09320
	ldr r2, _08F08D38 @ =gUnknown_03000788
	ldr r0, _08F08D3C @ =gUnknown_08F1B670
	ldr r1, _08F08D40 @ =gUnknown_030007A4
	ldrb r1, [r1]
	lsrs r1, r1, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x78
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, _08F08D44 @ =gUnknown_03001508
	ldr r0, _08F08D48 @ =gUnknown_08F1B674
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x58
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
_08F08C98:
	ldr r1, _08F08D4C @ =gUnknown_03003170
	movs r0, #0
	strb r0, [r1]
	movs r5, #0
	ldr r1, _08F08D50 @ =gUnknown_03000784
	ldr r0, _08F08D54 @ =gUnknown_03001D40
	str r0, [r1]
	ldrb r0, [r0]
	lsls r7, r2, #0x18
	cmp r0, #0
	beq _08F08D0C
_08F08CAE:
	ldr r2, [r1]
	movs r0, #0x80
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08F08CEA
	movs r0, #0x40
	ldrb r1, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08F08CEA
	ldrh r0, [r2, #4]
	subs r1, r6, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r2, #6]
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bhi _08F08CEA
	cmp r0, #0x3f
	bhi _08F08CEA
	movs r0, #0xc
	bl ExecuteScript
	ldr r0, _08F08D4C @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F08D0C
_08F08CEA:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F08D0C
	ldr r2, _08F08D50 @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F08D54 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	adds r1, r2, #0
	cmp r0, #0
	bne _08F08CAE
_08F08D0C:
	cmp r7, #0
	bne _08F08D58
	ldr r0, _08F08D4C @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F08D64
	ldr r0, _08F08D40 @ =gUnknown_030007A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F08D58
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F08D58
	adds r0, r4, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #1
	b _08F08C98
	.align 2, 0
_08F08D38: .4byte gUnknown_03000788
_08F08D3C: .4byte gUnknown_08F1B670
_08F08D40: .4byte gUnknown_030007A4
_08F08D44: .4byte gUnknown_03001508
_08F08D48: .4byte gUnknown_08F1B674
_08F08D4C: .4byte gUnknown_03003170
_08F08D50: .4byte gUnknown_03000784
_08F08D54: .4byte gUnknown_03001D40
_08F08D58:
	ldr r0, _08F08D6C @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F08D64
	bl sub_8F08C44
_08F08D64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08D6C: .4byte gUnknown_03003170

	thumb_func_start sub_8F08D70
sub_8F08D70: @ 0x08F08D70
	push {r4, lr}
	bl sub_8F09354
	cmp r0, #0
	beq _08F08DB0
	bl SelectTeleportDestination
	adds r4, r0, #0
	cmp r4, #0
	bgt _08F08D90
	ldr r1, _08F08D8C @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	b _08F08DAE
	.align 2, 0
_08F08D8C: .4byte gUnknown_03001504
_08F08D90:
	bl sub_8F09320
	ldr r0, _08F08DB8 @ =0x000006C7
	bl DrawTextWithId
	bl WaitForAnyButtonPress
	bl sub_8F0B040
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_8F076B8
	ldr r1, _08F08DBC @ =gUnknown_030007A8
	movs r0, #1
_08F08DAE:
	strb r0, [r1]
_08F08DB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F08DB8: .4byte 0x000006C7
_08F08DBC: .4byte gUnknown_030007A8

	thumb_func_start sub_8F08DC0
sub_8F08DC0: @ 0x08F08DC0
	push {lr}
	movs r0, #0x1e
	bl sub_8F08F48
	pop {r0}
	bx r0

	thumb_func_start sub_8F08DCC
sub_8F08DCC: @ 0x08F08DCC
	push {lr}
	movs r0, #0x50
	bl sub_8F08F48
	pop {r0}
	bx r0

	thumb_func_start sub_8F08DD8
sub_8F08DD8: @ 0x08F08DD8
	push {lr}
	ldr r0, _08F08DE4 @ =0x0000FFFF
	bl sub_8F08F48
	pop {r0}
	bx r0
	.align 2, 0
_08F08DE4: .4byte 0x0000FFFF

	thumb_func_start sub_8F08DE8
sub_8F08DE8: @ 0x08F08DE8
	push {lr}
	ldr r1, _08F08DF8 @ =0x000006CB
	movs r0, #0x40
	bl sub_8F090F0
	pop {r0}
	bx r0
	.align 2, 0
_08F08DF8: .4byte 0x000006CB

	thumb_func_start sub_8F08DFC
sub_8F08DFC: @ 0x08F08DFC
	push {lr}
	ldr r1, _08F08E0C @ =0x000006C3
	movs r0, #2
	bl sub_8F090F0
	pop {r0}
	bx r0
	.align 2, 0
_08F08E0C: .4byte 0x000006C3

	thumb_func_start sub_8F08E10
sub_8F08E10: @ 0x08F08E10
	push {lr}
	ldr r1, _08F08E20 @ =0x000006C9
	movs r0, #0x80
	bl sub_8F090F0
	pop {r0}
	bx r0
	.align 2, 0
_08F08E20: .4byte 0x000006C9

	thumb_func_start sub_8F08E24
sub_8F08E24: @ 0x08F08E24
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _08F08E50 @ =gUnknown_030007D8
	ldrh r0, [r0]
	mov sb, r0
	ldr r4, _08F08E54 @ =gUnknown_03003174
	ldrb r0, [r4]
	mov r8, r0
	bl sub_8F0BA2C
	adds r3, r0, #0
	cmp r3, #0
	bgt _08F08E5C
	ldr r1, _08F08E58 @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F08F20
	.align 2, 0
_08F08E50: .4byte gUnknown_030007D8
_08F08E54: .4byte gUnknown_03003174
_08F08E58: .4byte gUnknown_03001504
_08F08E5C:
	ldr r1, _08F08E84 @ =gGameInfo
	subs r2, r3, #1
	lsls r0, r2, #6
	adds r0, r0, r1
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	adds r7, r2, #0
	cmp r1, #0
	beq _08F08E90
	ldr r0, _08F08E88 @ =gCurrentCharacterId
	strb r3, [r0]
	ldr r0, _08F08E8C @ =0x000006A6
	bl DrawTextWithId
	bl NothingHappened
	b _08F08F14
	.align 2, 0
_08F08E84: .4byte gGameInfo
_08F08E88: .4byte gCurrentCharacterId
_08F08E8C: .4byte 0x000006A6
_08F08E90:
	strb r3, [r4]
	ldr r0, _08F08EA4 @ =gConsumableType
	ldrb r0, [r0]
	cmp r0, #1
	beq _08F08EAC
	cmp r0, #2
	beq _08F08EB4
	ldr r0, _08F08EA8 @ =0x0000038E
	b _08F08EB8
	.align 2, 0
_08F08EA4: .4byte gConsumableType
_08F08EA8: .4byte 0x0000038E
_08F08EAC:
	ldr r0, _08F08EB0 @ =0x000006AF
	b _08F08EB8
	.align 2, 0
_08F08EB0: .4byte 0x000006AF
_08F08EB4:
	movs r0, #0xd6
	lsls r0, r0, #3
_08F08EB8:
	bl DrawTextWithId
	adds r0, r6, #0
	bl sub_8F021C4
	ldr r5, _08F08F2C @ =gTempNumber
	strh r0, [r5]
	ldr r2, _08F08F30 @ =gGameInfo
	lsls r1, r7, #6
	adds r1, r1, r2
	adds r3, r1, #0
	adds r3, #0x42
	adds r2, r1, #0
	adds r2, #0x54
	ldrh r4, [r2]
	ldrh r3, [r3]
	subs r1, r3, r4
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r1, #0x10
	cmp r0, r1
	bls _08F08EE6
	strh r6, [r5]
_08F08EE6:
	ldrh r5, [r5]
	adds r0, r5, r4
	strh r0, [r2]
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F08F34 @ =gUnknown_03003170
	movs r4, #0x80
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldr r0, _08F08F38 @ =0x000006B3
	bl DrawTextWithId
	ldr r0, _08F08F3C @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r1, [r0]
	orrs r4, r1
	strb r4, [r0]
	ldr r0, _08F08F40 @ =0x000006B1
	bl DrawTextWithId
_08F08F14:
	ldr r0, _08F08F44 @ =gUnknown_030007D8
	mov r1, sb
	strh r1, [r0]
	mov r0, r8
	bl RemoveItemFromInventory
_08F08F20:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08F2C: .4byte gTempNumber
_08F08F30: .4byte gGameInfo
_08F08F34: .4byte gUnknown_03003170
_08F08F38: .4byte 0x000006B3
_08F08F3C: .4byte gTextDelayAfterWriteCharacterEnabled
_08F08F40: .4byte 0x000006B1
_08F08F44: .4byte gUnknown_030007D8

	thumb_func_start sub_8F08F48
sub_8F08F48: @ 0x08F08F48
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_8F0BA2C
	adds r4, r0, #0
	cmp r4, #0
	bgt _08F08F68
	ldr r1, _08F08F64 @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F08FEA
	.align 2, 0
_08F08F64: .4byte gUnknown_03001504
_08F08F68:
	bl sub_8F09320
	ldr r0, _08F08F8C @ =gGameInfo
	subs r1, r4, #1
	lsls r1, r1, #6
	adds r5, r1, r0
	adds r1, r5, #0
	adds r1, #0x41
	movs r7, #0x80
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F08F90
	bl sub_8F08C44
	b _08F08FEA
	.align 2, 0
_08F08F8C: .4byte gGameInfo
_08F08F90:
	ldr r0, _08F08FF0 @ =0x000006C7
	bl DrawTextWithId
	ldr r0, _08F08FF4 @ =gUnknown_03003174
	strb r4, [r0]
	adds r0, r6, #0
	bl sub_8F021C4
	ldr r3, _08F08FF8 @ =gTempNumber
	strh r0, [r3]
	adds r1, r5, #0
	adds r1, #0x42
	adds r4, r5, #0
	adds r4, #0x54
	ldrh r2, [r4]
	ldrh r1, [r1]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r1, #0x10
	cmp r0, r1
	bls _08F08FBE
	strh r6, [r3]
_08F08FBE:
	ldrh r3, [r3]
	adds r0, r3, r2
	strh r0, [r4]
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F08FFC @ =gUnknown_03003170
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	ldr r0, _08F09000 @ =0x000006B3
	bl DrawTextWithId
	ldr r1, _08F09004 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	ldr r0, _08F09008 @ =0x000006B1
	bl DrawTextWithId
_08F08FEA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F08FF0: .4byte 0x000006C7
_08F08FF4: .4byte gUnknown_03003174
_08F08FF8: .4byte gTempNumber
_08F08FFC: .4byte gUnknown_03003170
_08F09000: .4byte 0x000006B3
_08F09004: .4byte gTextDelayAfterWriteCharacterEnabled
_08F09008: .4byte 0x000006B1

	thumb_func_start AttemptRemovalOfCondition
AttemptRemovalOfCondition: @ 0x08F0900C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08F09038 @ =gUnknown_030007D8
	ldrh r0, [r0]
	mov r8, r0
	ldr r0, _08F0903C @ =gUnknown_03003174
	ldrb r7, [r0]
	bl sub_8F0BA2C
	adds r2, r0, #0
	cmp r2, #0
	bgt _08F09044
	ldr r1, _08F09040 @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F090E0
	.align 2, 0
_08F09038: .4byte gUnknown_030007D8
_08F0903C: .4byte gUnknown_03003174
_08F09040: .4byte gUnknown_03001504
_08F09044:
	movs r3, #0x80
	adds r0, r4, #0
	ands r0, r3
	subs r5, r2, #1
	cmp r0, #0
	bne _08F09080
	ldr r0, _08F09074 @ =gGameInfo
	lsls r1, r5, #6
	adds r1, r1, r0
	adds r1, #0x41
	adds r0, r3, #0
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F09080
	ldr r0, _08F09078 @ =gCurrentCharacterId
	strb r2, [r0]
	ldr r0, _08F0907C @ =0x000006A6
	bl DrawTextWithId
	bl NothingHappened
	b _08F090D4
	.align 2, 0
_08F09074: .4byte gGameInfo
_08F09078: .4byte gCurrentCharacterId
_08F0907C: .4byte 0x000006A6
_08F09080:
	ldr r0, _08F090C0 @ =gUnknown_03003174
	strb r2, [r0]
	ldr r0, _08F090C4 @ =0x0000038E
	bl DrawTextWithId
	ldr r1, _08F090C8 @ =gGameInfo
	lsls r0, r5, #6
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x41
	ldrb r2, [r1]
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _08F090D0
	adds r0, r2, #0
	bics r0, r4
	strb r0, [r1]
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F090CC @ =gUnknown_03003170
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	adds r0, r6, #0
	bl DrawTextWithId
	b _08F090D4
	.align 2, 0
_08F090C0: .4byte gUnknown_03003174
_08F090C4: .4byte 0x0000038E
_08F090C8: .4byte gGameInfo
_08F090CC: .4byte gUnknown_03003170
_08F090D0:
	bl NothingHappened
_08F090D4:
	ldr r0, _08F090EC @ =gUnknown_030007D8
	mov r1, r8
	strh r1, [r0]
	adds r0, r7, #0
	bl RemoveItemFromInventory
_08F090E0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F090EC: .4byte gUnknown_030007D8

	thumb_func_start sub_8F090F0
sub_8F090F0: @ 0x08F090F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r6, r5, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r8, r7
	bl sub_8F0BA2C
	adds r4, r0, #0
	cmp r4, #0
	bgt _08F0911C
	ldr r1, _08F09118 @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F091C4
	.align 2, 0
_08F09118: .4byte gUnknown_03001504
_08F0911C:
	bl sub_8F09320
	ldr r0, _08F09168 @ =gGameInfo
	subs r1, r4, #1
	lsls r1, r1, #6
	adds r1, r1, r0
	adds r1, #0x41
	ldrb r2, [r1]
	movs r0, #0x80
	mov sb, r0
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08F0917E
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _08F09178
	ldr r0, _08F0916C @ =0x000006C7
	bl DrawTextWithId
	ldr r0, _08F09170 @ =gUnknown_03003174
	strb r4, [r0]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_8F091D0
	ldr r1, _08F09174 @ =gUnknown_03003170
	mov r0, sb
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	adds r0, r7, #0
	bl DrawTextWithId
	b _08F091C4
	.align 2, 0
_08F09168: .4byte gGameInfo
_08F0916C: .4byte 0x000006C7
_08F09170: .4byte gUnknown_03003174
_08F09174: .4byte gUnknown_03003170
_08F09178:
	bl sub_8F08C44
	b _08F091C4
_08F0917E:
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _08F091C0
	adds r0, r2, #0
	bics r0, r6
	strb r0, [r1]
	ldr r0, _08F091B4 @ =0x000006C7
	bl DrawTextWithId
	ldr r0, _08F091B8 @ =gUnknown_03003174
	strb r4, [r0]
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F091BC @ =gUnknown_03003170
	mov r0, sb
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	mov r0, r8
	bl DrawTextWithId
	b _08F091C4
	.align 2, 0
_08F091B4: .4byte 0x000006C7
_08F091B8: .4byte gUnknown_03003174
_08F091BC: .4byte gUnknown_03003170
_08F091C0:
	bl sub_8F08C44
_08F091C4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8F091D0
sub_8F091D0: @ 0x08F091D0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r4, _08F09200 @ =gGameInfo
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r2, r0, r4
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x7f
	ldrb r3, [r1]
	ands r0, r3
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r0]
	adds r0, #0x12
	strh r1, [r0]
	bl UpdateCharactersInParty
	movs r1, #0
	adds r4, #8
	b _08F0920A
	.align 2, 0
_08F09200: .4byte gGameInfo
_08F09204:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08F0920A:
	cmp r1, #3
	bhi _08F09224
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, r5
	bne _08F09204
	bl sub_8F0B004
	bl sub_8F03128
	movs r0, #0x1d
	bl sub_8F0088C
_08F09224:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F0922C
sub_8F0922C: @ 0x08F0922C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _08F09264 @ =gUnknown_030007D8
	ldrh r0, [r0]
	mov sb, r0
	ldr r0, _08F09268 @ =gUnknown_03003174
	ldrb r0, [r0]
	mov r8, r0
	movs r0, #0xd6
	lsls r0, r0, #3
	cmp r5, r0
	bne _08F09270
	bl sub_8F0BA2C
	adds r4, r0, #0
	cmp r4, #0
	bgt _08F09272
	ldr r1, _08F0926C @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F092FC
	.align 2, 0
_08F09264: .4byte gUnknown_030007D8
_08F09268: .4byte gUnknown_03003174
_08F0926C: .4byte gUnknown_03001504
_08F09270:
	mov r4, r8
_08F09272:
	ldr r6, _08F09298 @ =gGameInfo
	subs r0, r4, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F092A4
	ldr r0, _08F0929C @ =gCurrentCharacterId
	strb r4, [r0]
	ldr r0, _08F092A0 @ =0x000006A6
	bl DrawTextWithId
	bl NothingHappened
	b _08F092F0
	.align 2, 0
_08F09298: .4byte gGameInfo
_08F0929C: .4byte gCurrentCharacterId
_08F092A0: .4byte 0x000006A6
_08F092A4:
	ldr r0, _08F09308 @ =gUnknown_03003174
	strb r4, [r0]
	adds r0, r5, #0
	bl DrawTextWithId
	movs r0, #5
	bl sub_8F021C4
	ldr r5, _08F0930C @ =gTempNumber
	strh r0, [r5]
	lsls r1, r4, #6
	adds r1, r1, r7
	adds r4, r1, r6
	movs r1, #0xff
	ldrb r2, [r4]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r1, #0x10
	cmp r0, r1
	bls _08F092D0
	strh r2, [r5]
_08F092D0:
	ldr r1, _08F09310 @ =0x000006AA
	adds r0, r7, r1
	bl DrawTextWithId
	ldr r1, _08F09314 @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _08F09318 @ =0x000006B2
	bl DrawTextWithId
	ldrb r1, [r4]
	ldrb r5, [r5]
	adds r0, r1, r5
	strb r0, [r4]
_08F092F0:
	ldr r0, _08F0931C @ =gUnknown_030007D8
	mov r2, sb
	strh r2, [r0]
	mov r0, r8
	bl RemoveItemFromInventory
_08F092FC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F09308: .4byte gUnknown_03003174
_08F0930C: .4byte gTempNumber
_08F09310: .4byte 0x000006AA
_08F09314: .4byte gTextDelayAfterWriteCharacterEnabled
_08F09318: .4byte 0x000006B2
_08F0931C: .4byte gUnknown_030007D8

	thumb_func_start sub_8F09320
sub_8F09320: @ 0x08F09320
	ldr r1, _08F09344 @ =gGameInfo
	ldr r0, _08F09348 @ =gUnknown_03003174
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x56
	ldr r1, _08F0934C @ =gUnknown_03003188
	ldrb r1, [r1]
	lsls r1, r1, #3
	ldr r2, _08F09350 @ =gTeleportLocations
	adds r1, r1, r2
	ldrh r2, [r0]
	ldrb r1, [r1, #7]
	subs r1, r2, r1
	strh r1, [r0]
	bx lr
	.align 2, 0
_08F09344: .4byte gGameInfo
_08F09348: .4byte gUnknown_03003174
_08F0934C: .4byte gUnknown_03003188
_08F09350: .4byte gTeleportLocations

	thumb_func_start sub_8F09354
sub_8F09354: @ 0x08F09354
	push {lr}
	ldr r1, _08F09374 @ =gGameInfo
	ldr r0, _08F09378 @ =0x0000021F
	adds r1, r1, r0
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F0937C
	movs r0, #0xda
	lsls r0, r0, #3
	bl DrawTextWithId
	movs r0, #0
	b _08F0937E
	.align 2, 0
_08F09374: .4byte gGameInfo
_08F09378: .4byte 0x0000021F
_08F0937C:
	movs r0, #1
_08F0937E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F09384
sub_8F09384: @ 0x08F09384
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #0
	ldr r0, _08F09408 @ =gGameInfo
	mov r8, r0
	movs r1, #8
	add r1, r8
	mov sb, r1
	ldr r7, _08F0940C @ =0x0000FFC0
	movs r5, #0x3f
	ldr r6, _08F09410 @ =gUnknown_03001508
_08F0939E:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F093F2
	subs r0, #1
	lsls r0, r0, #6
	add r0, r8
	mov ip, r0
	ldr r0, _08F09414 @ =gUnknown_03000788
	ldrh r3, [r0]
	adds r1, r7, #0
	ands r1, r3
	ldr r2, _08F09418 @ =gCurrentBgMusic
	adds r0, r5, #0
	ldrb r2, [r2]
	ands r0, r2
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x6c
	strh r0, [r1]
	adds r1, r7, #0
	ldrh r0, [r6]
	ands r1, r0
	ldr r2, _08F0941C @ =gUnknown_030007A4
	movs r0, #7
	ldrb r2, [r2]
	ands r0, r2
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x6e
	strh r0, [r1]
	adds r0, r5, #0
	ands r0, r3
	subs r1, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	ldrb r1, [r6]
	ands r0, r1
	mov r1, ip
	adds r1, #0x5b
	strb r0, [r1]
_08F093F2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08F0939E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F09408: .4byte gGameInfo
_08F0940C: .4byte 0x0000FFC0
_08F09410: .4byte gUnknown_03001508
_08F09414: .4byte gUnknown_03000788
_08F09418: .4byte gCurrentBgMusic
_08F0941C: .4byte gUnknown_030007A4

	thumb_func_start sub_8F09420
sub_8F09420: @ 0x08F09420
	push {r4, r5, lr}
	movs r3, #0
	ldr r4, _08F09470 @ =gGameInfo
	adds r5, r4, #0
	adds r5, #8
_08F0942A:
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0945E
	subs r0, #1
	lsls r0, r0, #6
	adds r2, r0, r4
	ldr r0, _08F09474 @ =gPlayerX
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x6c
	strh r1, [r0]
	ldr r0, _08F09478 @ =gPlayerY
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x6e
	strh r0, [r1]
	ldr r0, _08F0947C @ =gUnknown_03000840
	ldrb r0, [r0]
	subs r1, #0x14
	strb r0, [r1]
	ldr r0, _08F09480 @ =gUnknown_030034A8
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x5b
	strb r1, [r0]
_08F0945E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F0942A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F09470: .4byte gGameInfo
_08F09474: .4byte gPlayerX
_08F09478: .4byte gPlayerY
_08F0947C: .4byte gUnknown_03000840
_08F09480: .4byte gUnknown_030034A8

	thumb_func_start sub_8F09484
sub_8F09484: @ 0x08F09484
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r1, #0
	ldr r4, _08F094B8 @ =gUnknown_03003198
	adds r3, r4, #0
_08F09490:
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r2, r0
	bne _08F094BC
	cmp r1, #2
	bhi _08F094AE
_08F0949C:
	adds r2, r1, r3
	adds r1, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bls _08F0949C
_08F094AE:
	adds r1, r1, r4
	movs r0, #0
	strb r0, [r1]
	b _08F094C6
	.align 2, 0
_08F094B8: .4byte gUnknown_03003198
_08F094BC:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08F09490
_08F094C6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8F094CC
sub_8F094CC: @ 0x08F094CC
	push {lr}
	movs r0, #7
	bl sub_8F09484
	movs r0, #6
	bl sub_8F09484
	ldr r3, _08F09520 @ =gGameInfo
	adds r1, r3, #0
	adds r1, #0x41
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x15
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x42
	ldrh r1, [r0]
	adds r0, #0x12
	strh r1, [r0]
	ldrh r2, [r3, #0x10]
	lsrs r1, r2, #1
	movs r0, #1
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r0, _08F09524 @ =gUnknown_03003600
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08F09538
	ldr r1, _08F09528 @ =gPlayerX
	ldr r2, _08F0952C @ =0x0000DF9C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F09530 @ =gPlayerY
	movs r2, #0x92
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F09534 @ =gUnknown_030007E8
	movs r0, #8
	strb r0, [r1]
	b _08F09548
	.align 2, 0
_08F09520: .4byte gGameInfo
_08F09524: .4byte gUnknown_03003600
_08F09528: .4byte gPlayerX
_08F0952C: .4byte 0x0000DF9C
_08F09530: .4byte gPlayerY
_08F09534: .4byte gUnknown_030007E8
_08F09538:
	ldr r1, _08F09568 @ =gPlayerX
	ldr r2, _08F0956C @ =0x0000DFCB
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F09570 @ =gPlayerY
	ldr r2, _08F09574 @ =0x0000DBC0
	adds r0, r2, #0
	strh r0, [r1]
_08F09548:
	ldr r2, _08F09578 @ =gUnknown_03000840
	ldr r1, _08F0957C @ =gUnknown_030034A8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	ldr r1, _08F09580 @ =gUnknown_030007A0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r1, _08F09584 @ =gUnknown_03000818
	movs r0, #0xf8
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08F09568: .4byte gPlayerX
_08F0956C: .4byte 0x0000DFCB
_08F09570: .4byte gPlayerY
_08F09574: .4byte 0x0000DBC0
_08F09578: .4byte gUnknown_03000840
_08F0957C: .4byte gUnknown_030034A8
_08F09580: .4byte gUnknown_030007A0
_08F09584: .4byte gUnknown_03000818

	thumb_func_start UpdateCharactersInParty
UpdateCharactersInParty: @ 0x08F09588
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r4, sp
	mov r3, sp
	mov r2, sp
	mov r1, sp
	movs r0, #0
	strb r0, [r1, #3]
	strb r0, [r2, #2]
	strb r0, [r3, #1]
	strb r0, [r4]
	movs r5, #1
	movs r4, #0
	ldr r6, _08F095C0 @ =gGameInfo
	adds r7, r6, #0
	adds r7, #8
_08F095A8:
	movs r2, #0
	adds r3, r5, #1
_08F095AC:
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, r5
	beq _08F095C4
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F095AC
	b _08F095D0
	.align 2, 0
_08F095C0: .4byte gGameInfo
_08F095C4:
	adds r0, r4, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	add r0, sp
	strb r5, [r0]
_08F095D0:
	lsls r0, r3, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08F095A8
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r6, #8]
	mov r0, sp
	ldrb r0, [r0, #1]
	strb r0, [r6, #9]
	mov r0, sp
	ldrb r0, [r0, #2]
	strb r0, [r6, #0xa]
	mov r0, sp
	ldrb r0, [r0, #3]
	strb r0, [r6, #0xb]
	movs r4, #0
	movs r2, #0
	ldrb r1, [r6, #8]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F09636
	adds r7, r6, #0
	adds r3, r6, #0
	adds r3, #8
	movs r5, #0x80
_08F09608:
	lsls r1, r1, #6
	adds r1, r1, r7
	adds r1, #0x41
	adds r0, r5, #0
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F0961E
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08F0961E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _08F09636
	adds r0, r2, r3
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08F09608
_08F09636:
	cmp r4, #0
	beq _08F0968C
	ldrb r5, [r6, #8]
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F0968C
	subs r7, r2, #1
	movs r0, #8
	adds r0, r0, r6
	mov ip, r0
_08F09656:
	movs r4, #0
	cmp r4, r7
	bge _08F09670
	mov r3, ip
_08F0965E:
	adds r2, r4, r3
	adds r1, r4, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r4, r7
	blt _08F0965E
_08F09670:
	adds r0, r6, #0
	adds r0, #8
	adds r0, r4, r0
	strb r5, [r0]
	ldrb r5, [r6, #8]
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F09656
_08F0968C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TriggerEncounter
TriggerEncounter: @ 0x08F09694
	push {r4, r5, r6, r7, lr}
	sub sp, #0x110
	ldr r1, _08F096F4 @ =gEncounterRates
	mov r0, sp
	movs r2, #8
	bl memcpy
	add r4, sp, #8
	ldr r1, _08F096F8 @ =gUnknown_08F1BB50
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	add r5, sp, #0x48
	ldr r1, _08F096FC @ =gUnknown_08F1BB90
	adds r0, r5, #0
	movs r2, #0xc8
	bl memcpy
	ldr r1, _08F09700 @ =gUnknown_03002440
	ldr r0, _08F09704 @ =gUnknown_03000830
	ldrb r0, [r0]
	adds r4, r0, r4
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r0, _08F09708 @ =gUnknown_03000818
	ldrb r0, [r0]
	adds r7, r5, #0
	cmp r0, #0
	bne _08F096F0
	ldr r0, _08F0970C @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F096F0
	ldr r0, _08F09710 @ =gUnknown_03001500
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F096F0
_08F096E0:
	ldr r3, _08F09700 @ =gUnknown_03002440
	ldrb r2, [r3]
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08F09718
	ldr r0, _08F09714 @ =gUnknown_0300082C
	strb r1, [r0]
_08F096F0:
	movs r0, #0
	b _08F0981A
	.align 2, 0
_08F096F4: .4byte gEncounterRates
_08F096F8: .4byte gUnknown_08F1BB50
_08F096FC: .4byte gUnknown_08F1BB90
_08F09700: .4byte gUnknown_03002440
_08F09704: .4byte gUnknown_03000830
_08F09708: .4byte gUnknown_03000818
_08F0970C: .4byte gUnknown_0300317C
_08F09710: .4byte gUnknown_03001500
_08F09714: .4byte gUnknown_0300082C
_08F09718:
	movs r4, #7
	ands r4, r2
	cmp r4, #0
	bne _08F09730
	lsrs r0, r0, #0x1b
	ldr r1, _08F0972C @ =gGameInfo
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	b _08F096E0
	.align 2, 0
_08F0972C: .4byte gGameInfo
_08F09730:
	ldr r6, _08F09800 @ =gUnknown_08F593A0
_08F09732:
	bl Random
	ldr r2, _08F09804 @ =gUnknown_03002440
	movs r1, #0xf8
	ldrb r3, [r2]
	ands r1, r3
	lsls r1, r1, #1
	lsrs r0, r0, #0x1c
	adds r1, r1, r0
	adds r1, r1, r6
	ldrb r5, [r1]
	cmp r5, #0
	beq _08F09732
	strb r5, [r2]
	ldr r6, _08F09808 @ =gUnknown_0300082C
	ldrb r1, [r6]
	adds r0, r1, r4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #8
	bls _08F0975E
	movs r4, #8
_08F0975E:
	bl Random
	lsrs r0, r0, #0x14
	subs r1, r4, #1
	add r1, sp
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08F096F0
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08F09780
	movs r0, #2
	strb r0, [r6]
_08F09780:
	ldr r0, _08F0980C @ =gGameInfo
	ldrb r1, [r0, #0x19]
	adds r3, r0, #0
	cmp r1, #0
	beq _08F09818
	adds r1, r7, r5
	adds r0, #0x50
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	blo _08F097DE
	movs r4, #0
	movs r2, #0
	adds r6, r3, #0
	adds r6, #8
_08F0979E:
	adds r0, r2, r6
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F097CA
	lsls r0, r1, #6
	adds r0, r0, r3
	adds r1, r0, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r4, r1, r4
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, _08F09810 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x3f
	ldrb r1, [r1, #3]
	ands r0, r1
	adds r4, r4, r0
_08F097CA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F0979E
	adds r0, r5, #0
	bl sub_8F12C1C
	cmp r4, r0
	blt _08F09818
_08F097DE:
	ldr r1, _08F0980C @ =gGameInfo
	ldrb r0, [r1, #0x19]
	subs r0, #1
	strb r0, [r1, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08F097EE
	b _08F096F0
_08F097EE:
	ldr r0, _08F09814 @ =0x000006D1
	bl DrawTextWithId
	bl WaitForActionButtonPress
	bl sub_8F0B040
	b _08F096F0
	.align 2, 0
_08F09800: .4byte gUnknown_08F593A0
_08F09804: .4byte gUnknown_03002440
_08F09808: .4byte gUnknown_0300082C
_08F0980C: .4byte gGameInfo
_08F09810: .4byte gItemData
_08F09814: .4byte 0x000006D1
_08F09818:
	adds r0, r5, #0
_08F0981A:
	add sp, #0x110
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F09824
sub_8F09824: @ 0x08F09824
	push {lr}
	ldr r0, _08F09880 @ =gUnknown_03000804
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08F0987A
	lsrs r1, r1, #4
	movs r0, #7
	ands r1, r0
	cmp r1, #3
	bhi _08F0987A
	ldr r2, _08F09884 @ =gGameInfo
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0987A
	subs r0, #1
	lsls r0, r0, #6
	adds r2, r0, r2
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #3
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F0987A
	adds r1, r2, #0
	adds r1, #0x54
	ldrh r0, [r1]
	cmp r0, #1
	bls _08F0986C
	subs r0, #1
	strh r0, [r1]
_08F0986C:
	movs r0, #0x16
	bl sub_8F011E4
	bl sub_8F040E0
	bl sub_8F01208
_08F0987A:
	pop {r0}
	bx r0
	.align 2, 0
_08F09880: .4byte gUnknown_03000804
_08F09884: .4byte gGameInfo

	thumb_func_start sub_8F09888
sub_8F09888: @ 0x08F09888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _08F09948 @ =gUnknown_08F1BC58
	mov r0, sp
	movs r2, #8
	bl memcpy
	ldr r0, _08F0994C @ =0xF301F300
	str r0, [sp, #8]
	ldr r1, _08F09950 @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	ldr r0, _08F09954 @ =0x06002000
	str r0, [r1, #4]
	ldr r0, _08F09958 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F0995C @ =0x0600E000
	movs r3, #0
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	ldr r4, _08F09960 @ =0x00000111
	str r4, [r0]
	adds r0, #4
	ldr r1, _08F09964 @ =0x11111111
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	ldr r2, _08F09968 @ =0x11111000
	str r2, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xc8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	cmp r4, r6
	bhs _08F099B2
	movs r0, #0x3c
	mov sl, r0
	ldr r5, _08F0996C @ =0x0400001C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	mov sb, r1
	ldr r2, _08F09970 @ =0x0400001E
	mov r8, r2
	ldr r7, _08F09974 @ =gNESPalette
_08F09922:
	adds r0, r4, #0
	movs r1, #0x3c
	bl __udivsi3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08F09978
	adds r0, r4, #0
	movs r1, #0x3c
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sl
	subs r0, r1, r0
	asrs r0, r0, #2
	b _08F09984
	.align 2, 0
_08F09948: .4byte gUnknown_08F1BC58
_08F0994C: .4byte 0xF301F300
_08F09950: .4byte 0x040000D4
_08F09954: .4byte 0x06002000
_08F09958: .4byte 0x85000200
_08F0995C: .4byte 0x0600E000
_08F09960: .4byte 0x00000111
_08F09964: .4byte 0x11111111
_08F09968: .4byte 0x11111000
_08F0996C: .4byte 0x0400001C
_08F09970: .4byte 0x0400001E
_08F09974: .4byte gNESPalette
_08F09978:
	adds r0, r4, #0
	movs r1, #0x3c
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
_08F09984:
	strh r0, [r5]
	rsbs r0, r4, #0
	asrs r0, r0, #1
	movs r1, #7
	ands r0, r1
	mov r2, r8
	strh r0, [r2]
	lsrs r0, r4, #3
	ands r0, r1
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	mov r1, sb
	strh r0, [r1]
	bl UpdateBg0Tilemap
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _08F09922
_08F099B2:
	bl sub_8F01208
	ldr r0, _08F099D4 @ =gCurrentBgMusic
	ldrb r0, [r0]
	cmp r0, #0x2b
	bne _08F099C2
	bl sub_8F06EA4
_08F099C2:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F099D4: .4byte gCurrentBgMusic

	thumb_func_start sub_8F099D8
sub_8F099D8: @ 0x08F099D8
	push {r4, lr}
	ldr r0, _08F09A34 @ =gUnknown_03001520
	ldr r1, _08F09A38 @ =gUnknown_03001480
	bl LoadPalette
	movs r0, #2
	bl PlaySfxById0
	movs r0, #0x34
	bl sub_8F09A44
	movs r0, #0x36
	bl sub_8F09A44
	movs r0, #0x38
	bl sub_8F09A44
	movs r0, #0x34
	bl sub_8F09A44
	movs r0, #0x36
	bl sub_8F09A44
	movs r0, #0x38
	bl sub_8F09A44
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r1, _08F09A3C @ =gNESPalette
	adds r1, #0x60
	ldrh r4, [r1]
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x20
	bl DarkenPalette
	ldr r0, _08F09A40 @ =0x05000200
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x20
	bl DarkenPalette
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F09A34: .4byte gUnknown_03001520
_08F09A38: .4byte gUnknown_03001480
_08F09A3C: .4byte gNESPalette
_08F09A40: .4byte 0x05000200

	thumb_func_start sub_8F09A44
sub_8F09A44: @ 0x08F09A44
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	movs r6, #0xa0
	lsls r6, r6, #0x13
	ldr r1, _08F09A9C @ =gNESPalette
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x20
	bl DarkenPalette
	ldr r5, _08F09AA0 @ =0x05000200
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x20
	bl DarkenPalette
	movs r0, #3
	bl DelayByAmount
	ldr r4, _08F09AA4 @ =gUnknown_03001480
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x10
	bl sub_8F01020
	adds r4, #8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #0x10
	bl sub_8F01020
	movs r0, #3
	bl DelayByAmount
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F09A9C: .4byte gNESPalette
_08F09AA0: .4byte 0x05000200
_08F09AA4: .4byte gUnknown_03001480

	thumb_func_start sub_8F09AA8
sub_8F09AA8: @ 0x08F09AA8
	push {r4, r5, lr}
	ldr r5, _08F09ADC @ =gUnknown_03001480
	movs r4, #0x1f
_08F09AAE:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r5, #0
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	ldr r0, _08F09AE0 @ =0x05000200
	adds r1, r5, #0
	adds r1, #8
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	movs r0, #0xa
	bl DelayByAmount
	subs r4, #1
	cmp r4, #0
	bge _08F09AAE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F09ADC: .4byte gUnknown_03001480
_08F09AE0: .4byte 0x05000200

	thumb_func_start sub_8F09AE4
sub_8F09AE4: @ 0x08F09AE4
	push {r4, r5, lr}
	sub sp, #0x20
	ldr r1, _08F09B70 @ =gUnknown_08F1BC60
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	add r5, sp, #0x10
	ldr r1, _08F09B74 @ =gUnknown_08F1BC70
	adds r0, r5, #0
	movs r2, #0x10
	bl memcpy
	ldr r0, _08F09B78 @ =0x04000018
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r4, _08F09B7C @ =gUnknown_03001480
	mov r0, sp
	adds r1, r4, #0
	bl LoadPalette
	adds r1, r4, #0
	adds r1, #8
	adds r0, r5, #0
	bl LoadPalette
	ldr r0, _08F09B80 @ =gUnknown_08F5DB1C
	ldr r1, _08F09B84 @ =0x0600C000
	movs r2, #0x40
	bl BitUnpack
	ldr r1, _08F09B88 @ =gUnknown_03000808
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08F09B8C @ =gUnknown_08F5D71C
	ldr r1, _08F09B90 @ =0x06001000
	bl sub_8F00EE0
	movs r5, #0
_08F09B3A:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	ldr r0, _08F09B94 @ =0x05000200
	adds r1, r4, #0
	adds r1, #8
	movs r2, #0x40
	movs r3, #1
	bl sub_8F01020
	movs r0, #1
	bl DelayByAmount
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _08F09B3A
	add sp, #0x20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F09B70: .4byte gUnknown_08F1BC60
_08F09B74: .4byte gUnknown_08F1BC70
_08F09B78: .4byte 0x04000018
_08F09B7C: .4byte gUnknown_03001480
_08F09B80: .4byte gUnknown_08F5DB1C
_08F09B84: .4byte 0x0600C000
_08F09B88: .4byte gUnknown_03000808
_08F09B8C: .4byte gUnknown_08F5D71C
_08F09B90: .4byte 0x06001000
_08F09B94: .4byte 0x05000200

	thumb_func_start sub_8F09B98
sub_8F09B98: @ 0x08F09B98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #9
	bl PlaySfxById0
	bl sub_8F019B8
	movs r7, #0
	add r0, sp, #8
	mov sl, r0
	add r1, sp, #0x10
	mov sb, r1
	ldr r0, _08F09CE4 @ =gNESPalette
	ldrh r4, [r0, #0x22]
_08F09BC2:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl DarkenPalette
	ldr r0, _08F09CE8 @ =0x05000200
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl DarkenPalette
	movs r0, #1
	bl DelayByAmount
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x1f
	bls _08F09BC2
	bl sub_8F09AE4
	mov r2, sp
	movs r3, #0
	movs r1, #0
	movs r0, #0xa0
	strh r0, [r2, #6]
	mov r2, sl
	strh r1, [r2, #6]
	mov r0, sb
	strb r3, [r0, #3]
	mov r1, sp
	ldr r0, _08F09CEC @ =0x0000FF60
	strh r0, [r1, #4]
	movs r0, #0x20
	strh r0, [r2, #4]
	mov r1, sb
	strb r3, [r1, #2]
	mov r1, sp
	ldr r0, _08F09CF0 @ =0x0000FFB0
	strh r0, [r1, #2]
	movs r0, #0x40
	strh r0, [r2, #2]
	movs r2, #1
	mov r0, sb
	strb r2, [r0, #1]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0x60
	mov r1, sl
	strh r0, [r1]
	mov r0, sb
	strb r2, [r0]
	movs r1, #0
	mov r8, r1
_08F09C32:
	bl sub_8F016EC
	movs r7, #0
	mov r2, r8
	lsrs r2, r2, #3
	str r2, [sp, #0x18]
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0x14]
_08F09C44:
	ldr r0, _08F09CF4 @ =gGameInfo
	adds r0, #8
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F09D24
	subs r0, #1
	lsls r0, r0, #6
	ldr r1, _08F09CF4 @ =gGameInfo
	adds r2, r0, r1
	adds r3, r2, #0
	adds r3, #0x5e
	lsls r4, r7, #1
	mov r1, r8
	lsrs r0, r1, #2
	adds r0, r4, r0
	movs r1, #6
	ands r0, r1
	lsls r0, r0, #2
	ldrh r3, [r3]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F09C88
	adds r0, r6, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F09C88:
	adds r0, r2, #0
	adds r0, #0x5d
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	mov r2, sp
	adds r5, r2, r4
	ldrh r0, [r5]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x12
	adds r2, #0x60
	add r4, sl
	ldrh r0, [r4]
	lsls r3, r0, #0x10
	asrs r3, r3, #0x12
	subs r3, #0x30
	adds r0, r6, #0
	bl sub_8F01700
	ldrh r0, [r4]
	adds r0, #2
	movs r6, #0
	strh r0, [r4]
	mov r1, sb
	adds r3, r1, r7
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _08F09CFC
	movs r0, #0
	ldrsh r2, [r5, r0]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0xa0
	lsls r0, r0, #2
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	bge _08F09CF8
	ldrh r0, [r5]
	adds r0, #8
	strh r0, [r5]
	b _08F09D24
	.align 2, 0
_08F09CE4: .4byte gNESPalette
_08F09CE8: .4byte 0x05000200
_08F09CEC: .4byte 0x0000FF60
_08F09CF0: .4byte 0x0000FFB0
_08F09CF4: .4byte gGameInfo
_08F09CF8:
	strb r6, [r3]
	b _08F09D24
_08F09CFC:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, _08F09D1C @ =0xFFFFFD80
	adds r1, r1, r2
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	cmp r0, r1
	ble _08F09D20
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r5]
	b _08F09D24
	.align 2, 0
_08F09D1C: .4byte 0xFFFFFD80
_08F09D20:
	movs r0, #1
	strb r0, [r3]
_08F09D24:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08F09C44
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r1, _08F09D8C @ =0x040000D4
	ldr r0, _08F09D90 @ =gUnknown_03002450
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F09D94 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F09D98 @ =0x0400001A
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r0]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08F09D9C @ =0x000001FF
	cmp r8, r0
	bhi _08F09D60
	b _08F09C32
_08F09D60:
	bl FadeOut
	ldr r4, _08F09DA0 @ =gUnknown_08F64564
	ldr r1, _08F09DA4 @ =0x05000200
	adds r0, r4, #0
	bl LoadPalette
	ldr r1, _08F09DA8 @ =gUnknown_03001488
	adds r0, r4, #0
	bl LoadPalette
	movs r0, #0x5a
	bl DelayByAmount
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F09D8C: .4byte 0x040000D4
_08F09D90: .4byte gUnknown_03002450
_08F09D94: .4byte 0x84000100
_08F09D98: .4byte 0x0400001A
_08F09D9C: .4byte 0x000001FF
_08F09DA0: .4byte gUnknown_08F64564
_08F09DA4: .4byte 0x05000200
_08F09DA8: .4byte gUnknown_03001488

	thumb_func_start sub_8F09DAC
sub_8F09DAC: @ 0x08F09DAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #3
	bl PlaySfxById0
	ldr r2, _08F09F54 @ =0x0400000C
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r7, #0
	add r0, sp, #8
	mov sl, r0
	add r1, sp, #0x10
	mov sb, r1
	ldr r0, _08F09F58 @ =gNESPalette
	ldrh r4, [r0, #0x22]
	ldr r5, _08F09F5C @ =0x0400004C
_08F09DDE:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #2
	bl DarkenPalette
	ldr r0, _08F09F60 @ =0x05000200
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #2
	bl DarkenPalette
	lsls r0, r7, #0xc
	lsls r1, r7, #8
	adds r0, r0, r1
	lsls r1, r7, #4
	adds r0, r0, r1
	adds r0, r0, r7
	strh r0, [r5]
	movs r0, #4
	bl DelayByAmount
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xf
	bls _08F09DDE
	ldr r2, _08F09F54 @ =0x0400000C
	ldrh r1, [r2]
	ldr r0, _08F09F64 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08F09F5C @ =0x0400004C
	movs r4, #0
	strh r4, [r0]
	bl sub_8F019B8
	bl sub_8F09AE4
	mov r1, sp
	movs r2, #0
	ldr r0, _08F09F68 @ =0x0000FFE0
	strh r0, [r1, #6]
	movs r0, #0xa0
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1, #6]
	mov r0, sb
	strb r4, [r0, #3]
	mov r1, sp
	movs r0, #0x20
	strh r0, [r1, #4]
	movs r0, #0xa8
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1, #4]
	mov r0, sb
	strb r4, [r0, #2]
	mov r0, sp
	strh r2, [r0, #2]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r1, #2]
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1, #1]
	mov r0, sp
	strh r2, [r0]
	movs r0, #0xb8
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1]
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	movs r4, #0
	ldr r0, _08F09F6C @ =0x040000D4
	mov r8, r0
_08F09E7C:
	bl sub_8F016EC
	movs r7, #0
	adds r4, #1
	str r4, [sp, #0x14]
_08F09E86:
	movs r0, #3
	subs r0, r0, r7
	ldr r1, _08F09F70 @ =gGameInfo
	adds r1, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F09EF8
	subs r0, #1
	lsls r0, r0, #6
	ldr r1, _08F09F70 @ =gGameInfo
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x5e
	ldrh r6, [r0]
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F09EBA
	adds r0, r6, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F09EBA:
	adds r0, r2, #0
	adds r0, #0x5d
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	lsls r4, r7, #1
	mov r0, sp
	adds r5, r0, r4
	ldrh r0, [r5]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x12
	adds r2, #0x68
	add r4, sl
	ldrh r0, [r4]
	lsls r3, r0, #0x10
	asrs r3, r3, #0x12
	subs r3, #0x40
	adds r0, r6, #0
	bl sub_8F01700
	ldrh r0, [r4]
	subs r0, #4
	strh r0, [r4]
	mov r1, sb
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5]
	adds r0, r1, r0
	strh r0, [r5]
_08F09EF8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08F09E86
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r0, _08F09F74 @ =gUnknown_03002450
	mov r1, r8
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F09F78 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xc7
	bls _08F09E7C
	bl FadeOut
	ldr r4, _08F09F7C @ =gUnknown_08F64564
	ldr r1, _08F09F60 @ =0x05000200
	adds r0, r4, #0
	bl LoadPalette
	ldr r1, _08F09F80 @ =gUnknown_03001488
	adds r0, r4, #0
	bl LoadPalette
	movs r0, #0x5a
	bl DelayByAmount
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F09F54: .4byte 0x0400000C
_08F09F58: .4byte gNESPalette
_08F09F5C: .4byte 0x0400004C
_08F09F60: .4byte 0x05000200
_08F09F64: .4byte 0x0000FFBF
_08F09F68: .4byte 0x0000FFE0
_08F09F6C: .4byte 0x040000D4
_08F09F70: .4byte gGameInfo
_08F09F74: .4byte gUnknown_03002450
_08F09F78: .4byte 0x84000100
_08F09F7C: .4byte gUnknown_08F64564
_08F09F80: .4byte gUnknown_03001488

	thumb_func_start sub_8F09F84
sub_8F09F84: @ 0x08F09F84
	push {r4, r5, lr}
	movs r5, #0
	ldr r0, _08F09FDC @ =gNESPalette+0x70
	ldrh r4, [r0]
_08F09F8C:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl DarkenPalette
	ldr r0, _08F09FE0 @ =0x05000200
	adds r1, r4, #0
	movs r2, #0x40
	movs r3, #1
	bl DarkenPalette
	movs r0, #1
	bl DelayByAmount
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _08F09F8C
	movs r0, #0x50
	bl sub_8F0A04C
	movs r0, #1
	bl sub_8F0A2A8
	ldr r0, _08F09FE4 @ =MusicPlayer0Info
	movs r1, #5
	bl m4aMPlayFadeOut
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #0xb4
	bl DelayByAmount
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F09FDC: .4byte gNESPalette+0x70
_08F09FE0: .4byte 0x05000200
_08F09FE4: .4byte MusicPlayer0Info

	thumb_func_start InitiateEndingSequence
InitiateEndingSequence: @ 0x08F09FE8
	push {lr}
	ldr r0, _08F0A040 @ =gGameInfo
	adds r2, r0, #0
	adds r2, #0x41
	movs r1, #0
	strb r1, [r2]
	adds r2, #0x40
	strb r1, [r2]
	adds r2, #0x40
	strb r1, [r2]
	ldr r2, _08F0A044 @ =0x00000101
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, _08F0A048 @ =0x04000054
	strh r1, [r0]
	subs r0, #4
	strh r1, [r0]
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_8F0A04C
	movs r0, #2
	bl sub_8F0A2A8
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #3
	bl sub_8F0A2A8
	movs r0, #9
	bl PlaySfxById0
	movs r0, #1
	bl PlaySfxById3
	movs r0, #4
	bl sub_8F0A2A8
	bl ProcessEndingScript
	pop {r0}
	bx r0
	.align 2, 0
_08F0A040: .4byte gGameInfo
_08F0A044: .4byte 0x00000101
_08F0A048: .4byte 0x04000054

	thumb_func_start sub_8F0A04C
sub_8F0A04C: @ 0x08F0A04C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _08F0A22C @ =gUnknown_08F1BC80
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	add r4, sp, #0x10
	ldr r1, _08F0A230 @ =gUnknown_08F1BC90
	adds r0, r4, #0
	movs r2, #0x20
	bl memcpy
	add r5, sp, #0x30
	ldr r1, _08F0A234 @ =gUnknown_08F1BCB0
	adds r0, r5, #0
	movs r2, #8
	bl memcpy
	movs r0, #0xb
	bl ChangeBgMusic
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08F0A238 @ =gUnknown_08F5EF1C
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
	ldr r0, _08F0A250 @ =gUnknown_08F5DF1C
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
	ldr r0, _08F0A250 @ =gUnknown_08F5DF1C
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
	ldr r0, _08F0A294 @ =gUnknown_03002450
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
_08F0A22C: .4byte gUnknown_08F1BC80
_08F0A230: .4byte gUnknown_08F1BC90
_08F0A234: .4byte gUnknown_08F1BCB0
_08F0A238: .4byte gUnknown_08F5EF1C
_08F0A23C: .4byte 0x0600E000
_08F0A240: .4byte 0x0600D020
_08F0A244: .4byte gUnknown_03000808
_08F0A248: .4byte 0xFF900000
_08F0A24C: .4byte 0x06003000
_08F0A250: .4byte gUnknown_08F5DF1C
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
_08F0A294: .4byte gUnknown_03002450
_08F0A298: .4byte 0x84000100
_08F0A29C: .4byte gUnknown_03001480
_08F0A2A0: .4byte gUnknown_08F64564
_08F0A2A4: .4byte 0x05000200

	thumb_func_start sub_8F0A2A8
sub_8F0A2A8: @ 0x08F0A2A8
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
	ldr r0, _08F0A314 @ =gUnknown_08F5DF1C
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
_08F0A314: .4byte gUnknown_08F5DF1C
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
	ldr r0, _08F0A370 @ =gUnknown_08F5DF1C
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
_08F0A370: .4byte gUnknown_08F5DF1C
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
	bl PlaySfxById0
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
	ldr r0, _08F0A460 @ =gUnknown_08F5DF1C
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
_08F0A460: .4byte gUnknown_08F5DF1C

	thumb_func_start sub_8F0A464
sub_8F0A464: @ 0x08F0A464
	push {r4, lr}
	sub sp, #4
	ldr r1, _08F0A4AC @ =gUnknown_08F1BCB8
	mov r0, sp
	movs r2, #3
	bl memcpy
	ldr r2, _08F0A4B0 @ =gUnknown_03000000
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08F0A486
	movs r0, #0
	strb r0, [r2]
_08F0A486:
	movs r4, #0xa0
	lsls r4, r4, #0x13
	ldr r1, _08F0A4B4 @ =gNESPalette
	ldrb r0, [r2]
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	bl DelayByAmount
	movs r0, #0
	strh r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0A4AC: .4byte gUnknown_08F1BCB8
_08F0A4B0: .4byte gUnknown_03000000
_08F0A4B4: .4byte gNESPalette

	thumb_func_start ProcessEndingScript
ProcessEndingScript: @ 0x08F0A4B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	bl sub_8F0AB60
	movs r0, #0xff
	bl ChangeBgMusic
	ldr r1, _08F0A4FC @ =0x04000018
	movs r0, #0x18
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1]
	subs r1, #0x1a
	movs r2, #0xa8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _08F0A500 @ =m1_data_ending_script
_08F0A4E6:
	ldrb r0, [r4]
	subs r0, #1
	cmp r0, #0x12
	bls _08F0A4F0
	b _08F0A9D4
_08F0A4F0:
	lsls r0, r0, #2
	ldr r1, _08F0A504 @ =_08F0A508
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0A4FC: .4byte 0x04000018
_08F0A500: .4byte m1_data_ending_script
_08F0A504: .4byte _08F0A508
_08F0A508: @ jump table
	.4byte _08F0A554 @ case 0
	.4byte _08F0A572 @ case 1
	.4byte _08F0A57A @ case 2
	.4byte _08F0A582 @ case 3
	.4byte _08F0A5C0 @ case 4
	.4byte _08F0A62C @ case 5
	.4byte _08F0A804 @ case 6
	.4byte _08F0A9A4 @ case 7
	.4byte _08F0A84C @ case 8
	.4byte _08F0A8B0 @ case 9
	.4byte _08F0A8DC @ case 10
	.4byte _08F0A8F8 @ case 11
	.4byte _08F0A908 @ case 12
	.4byte _08F0A960 @ case 13
	.4byte _08F0A96A @ case 14
	.4byte _08F0A97C @ case 15
	.4byte _08F0A990 @ case 16
	.4byte _08F0A9A8 @ case 17
	.4byte _08F0A9C6 @ case 18
_08F0A554:
	ldrb r5, [r4, #1]
	adds r4, #2
	cmp r5, #0
	beq _08F0A4E6
_08F0A55C:
	bl sub_8F040E0
	movs r0, #1
	bl sub_8F0AAA4
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08F0A55C
	b _08F0A4E6
_08F0A572:
	bl WaitForActionButtonPress
_08F0A576:
	adds r4, #2
	b _08F0A4E6
_08F0A57A:
	bl sub_8F0AB60
	adds r4, #1
	b _08F0A4E6
_08F0A582:
	ldrb r0, [r4, #1]
	ldr r1, _08F0A5B0 @ =0x0600C000
	movs r2, #0x40
	bl sub_8F0A9E8
	ldrb r0, [r4, #2]
	ldr r1, _08F0A5B4 @ =0x0600C800
	movs r2, #0x40
	bl sub_8F0A9E8
	ldrb r0, [r4, #3]
	ldr r1, _08F0A5B8 @ =0x06010000
	movs r2, #0x80
	bl sub_8F0A9E8
	ldrb r0, [r4, #4]
	ldr r1, _08F0A5BC @ =0x06011000
	movs r2, #0x80
	bl sub_8F0A9E8
	adds r4, #5
	b _08F0A4E6
	.align 2, 0
_08F0A5B0: .4byte 0x0600C000
_08F0A5B4: .4byte 0x0600C800
_08F0A5B8: .4byte 0x06000000+OAM_VRAM_OFFSET
_08F0A5BC: .4byte 0x06001000+OAM_VRAM_OFFSET
_08F0A5C0:
	ldrb r3, [r4, #2]
	lsls r0, r3, #8
	ldrb r1, [r4, #1]
	orrs r0, r1
	ldr r2, _08F0A624 @ =0xFFFFE000
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r7, [r4, #3]
	ldrb r3, [r4, #4]
	mov ip, r3
	adds r4, #5
	movs r5, #0
	cmp r5, ip
	blo _08F0A5E2
	b _08F0A4E6
_08F0A5E2:
	lsls r0, r0, #1
	mov r8, r0
_08F0A5E6:
	movs r6, #0
	adds r0, r5, #1
	str r0, [sp, #0xc]
	cmp r6, r7
	bhs _08F0A616
	lsls r0, r5, #6
	mov r1, r8
	adds r2, r1, r0
	ldr r5, _08F0A628 @ =0x06001000
	movs r0, #0x80
	lsls r0, r0, #2
	adds r3, r0, #0
_08F0A5FE:
	lsls r0, r6, #1
	adds r0, r0, r2
	adds r0, r0, r5
	ldrb r1, [r4]
	orrs r1, r3
	strh r1, [r0]
	adds r4, #1
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r7
	blo _08F0A5FE
_08F0A616:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, ip
	blo _08F0A5E6
	b _08F0A4E6
	.align 2, 0
_08F0A624: .4byte 0xFFFFE000
_08F0A628: .4byte 0x06001000
_08F0A62C:
	ldrb r2, [r4, #2]
	lsls r0, r2, #8
	ldrb r3, [r4, #1]
	orrs r0, r3
	ldr r1, _08F0A7C0 @ =0xFFFFDC40
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r7, [r4, #3]
	ldrb r2, [r4, #4]
	mov ip, r2
	adds r4, #5
	movs r5, #0
	cmp r5, ip
	blo _08F0A64E
	b _08F0A4E6
_08F0A64E:
	movs r6, #0
	adds r3, r5, #1
	str r3, [sp, #0xc]
	cmp r6, r7
	blo _08F0A65A
	b _08F0A7B0
_08F0A65A:
	movs r0, #0xc
	mov sl, r0
	movs r1, #0x30
	mov sb, r1
	movs r2, #0xc0
	mov r8, r2
_08F0A666:
	lsls r1, r5, #3
	ldr r3, [sp, #8]
	adds r1, r3, r1
	adds r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #7
	ands r3, r1
	lsls r3, r3, #2
	movs r0, #0x38
	ands r0, r1
	lsls r0, r0, #4
	orrs r3, r0
	lsls r3, r3, #1
	ldr r2, _08F0A7C4 @ =0x06001000
	adds r2, r3, r2
	movs r1, #3
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xc
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7C8 @ =0x06001002
	adds r2, r3, r2
	movs r1, #3
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xc
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7CC @ =0x06001040
	adds r2, r3, r2
	movs r1, #3
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xc
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7D0 @ =0x06001042
	adds r2, r3, r2
	movs r1, #3
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xc
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7D4 @ =0x06001004
	adds r2, r3, r2
	mov r1, sl
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xa
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7D8 @ =0x06001006
	adds r2, r3, r2
	mov r1, sl
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xa
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7DC @ =0x06001044
	adds r2, r3, r2
	mov r1, sl
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xa
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7E0 @ =0x06001046
	adds r2, r3, r2
	mov r1, sl
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #0xa
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7E4 @ =0x06001080
	adds r2, r3, r2
	mov r1, sb
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7E8 @ =0x06001082
	adds r2, r3, r2
	mov r1, sb
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7EC @ =0x060010C0
	adds r2, r3, r2
	mov r1, sb
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7F0 @ =0x060010C2
	adds r2, r3, r2
	mov r1, sb
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7F4 @ =0x06001084
	adds r2, r3, r2
	mov r1, r8
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #6
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7F8 @ =0x06001086
	adds r2, r3, r2
	mov r1, r8
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #6
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08F0A7FC @ =0x060010C4
	adds r2, r3, r2
	mov r1, r8
	ldrb r0, [r4]
	ands r1, r0
	lsls r1, r1, #6
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r0, _08F0A800 @ =0x060010C6
	adds r3, r3, r0
	mov r1, r8
	ldrb r2, [r4]
	ands r1, r2
	lsls r1, r1, #6
	ldrh r0, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r4, #1
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r7
	bhs _08F0A7B0
	b _08F0A666
_08F0A7B0:
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x18
	lsrs r5, r0, #0x18
	cmp r5, ip
	bhs _08F0A7BC
	b _08F0A64E
_08F0A7BC:
	b _08F0A4E6
	.align 2, 0
_08F0A7C0: .4byte 0xFFFFDC40
_08F0A7C4: .4byte 0x06001000
_08F0A7C8: .4byte 0x06001002
_08F0A7CC: .4byte 0x06001040
_08F0A7D0: .4byte 0x06001042
_08F0A7D4: .4byte 0x06001004
_08F0A7D8: .4byte 0x06001006
_08F0A7DC: .4byte 0x06001044
_08F0A7E0: .4byte 0x06001046
_08F0A7E4: .4byte 0x06001080
_08F0A7E8: .4byte 0x06001082
_08F0A7EC: .4byte 0x060010C0
_08F0A7F0: .4byte 0x060010C2
_08F0A7F4: .4byte 0x06001084
_08F0A7F8: .4byte 0x06001086
_08F0A7FC: .4byte 0x060010C4
_08F0A800: .4byte 0x060010C6
_08F0A804:
	adds r0, r4, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette
	ldr r1, _08F0A840 @ =0x050001E0
	ldr r2, _08F0A844 @ =gNESPalette
	ldrb r3, [r4, #1]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldrb r3, [r4, #1]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0
	bl sub_8F0AAA4
	ldr r0, _08F0A848 @ =0x04000050
	ldrh r0, [r0]
	cmp r0, #0
	beq _08F0A83A
	bl FadeIn
_08F0A83A:
	adds r4, #0x11
	b _08F0A4E6
	.align 2, 0
_08F0A840: .4byte 0x050001E0
_08F0A844: .4byte gNESPalette
_08F0A848: .4byte 0x04000050
_08F0A84C:
	ldrb r2, [r4, #1]
	movs r0, #0x7f
	adds r5, r0, #0
	ands r5, r2
	ldrb r1, [r4, #2]
	adds r6, r0, #0
	ands r6, r1
	ldrb r7, [r4, #3]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08F0A86E
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r7, r0
_08F0A86E:
	ldrb r0, [r4, #4]
	mov ip, r0
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08F0A886
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	mov r2, ip
	orrs r2, r0
	mov ip, r2
_08F0A886:
	ldrb r3, [r4, #6]
	lsls r2, r3, #8
	ldrb r0, [r4, #5]
	orrs r2, r0
	ldr r1, _08F0A8AC @ =gUnknown_03001D40
	lsls r0, r5, #5
	adds r0, r0, r1
	adds r1, r5, #1
	strb r1, [r0]
	strb r6, [r0, #2]
	movs r1, #0
	strh r7, [r0, #4]
	mov r3, ip
	strh r3, [r0, #6]
	strh r2, [r0, #0x16]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	adds r4, #7
	b _08F0A4E6
	.align 2, 0
_08F0A8AC: .4byte gUnknown_03001D40
_08F0A8B0:
	ldrb r1, [r4, #3]
	lsls r0, r1, #8
	ldrb r2, [r4, #2]
	orrs r0, r2
	ldrb r7, [r4, #4]
	ldrb r3, [r4, #5]
	mov ip, r3
	ldr r2, _08F0A8D8 @ =gUnknown_03001D40
	ldrb r3, [r4, #1]
	lsls r1, r3, #5
	adds r1, r1, r2
	ldrh r2, [r1, #0x16]
	adds r0, r2, r0
	strh r0, [r1, #0x16]
	strb r7, [r1, #0xc]
	mov r3, ip
	strb r3, [r1, #0xd]
	adds r4, #6
	b _08F0A4E6
	.align 2, 0
_08F0A8D8: .4byte gUnknown_03001D40
_08F0A8DC:
	ldrb r0, [r4, #1]
	cmp r0, #0xfe
	bne _08F0A8F0
	ldr r0, _08F0A8EC @ =MusicPlayer0Info
	movs r1, #0xa
	bl m4aMPlayFadeOut
	b _08F0A576
	.align 2, 0
_08F0A8EC: .4byte MusicPlayer0Info
_08F0A8F0:
	ldrb r0, [r4, #1]
	bl ChangeBgMusic
	b _08F0A576
_08F0A8F8:
	ldrb r0, [r4, #1]
	ldr r1, _08F0A904 @ =0x06011000
	movs r2, #0x80
	bl sub_8F0A9E8
	b _08F0A576
	.align 2, 0
_08F0A904: .4byte 0x06001000+OAM_VRAM_OFFSET
_08F0A908:
	ldrb r0, [r4, #1]
	ldr r1, _08F0A948 @ =0x0600D000
	movs r2, #0x40
	bl sub_8F0A9E8
	ldrb r0, [r4, #2]
	ldr r1, _08F0A94C @ =0x0600D800
	movs r2, #0x40
	bl sub_8F0A9E8
	ldrb r0, [r4, #3]
	ldr r1, _08F0A950 @ =0x0600C000
	movs r2, #0x40
	bl sub_8F0A9E8
	ldrb r0, [r4, #4]
	ldr r1, _08F0A954 @ =0x0600C800
	movs r2, #0x40
	bl sub_8F0A9E8
	ldrb r0, [r4, #5]
	ldr r1, _08F0A958 @ =0x06010000
	movs r2, #0x80
	bl sub_8F0A9E8
	ldrb r0, [r4, #6]
	ldr r1, _08F0A95C @ =0x06011000
	movs r2, #0x80
	bl sub_8F0A9E8
	adds r4, #7
	b _08F0A4E6
	.align 2, 0
_08F0A948: .4byte 0x0600D000
_08F0A94C: .4byte 0x0600D800
_08F0A950: .4byte 0x0600C000
_08F0A954: .4byte 0x0600C800
_08F0A958: .4byte 0x06000000+OAM_VRAM_OFFSET
_08F0A95C: .4byte 0x06001000+OAM_VRAM_OFFSET
_08F0A960:
	ldrb r1, [r4, #1]
	str r1, [sp, #4]
	adds r4, #2
	str r4, [sp]
	b _08F0A4E6
_08F0A96A:
	ldr r0, [sp, #4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #0
	beq _08F0A9A4
	ldr r4, [sp]
	b _08F0A4E6
_08F0A97C:
	ldr r0, _08F0A98C @ =gUnknown_03001D40
	ldrb r2, [r4, #1]
	lsls r1, r2, #5
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	b _08F0A576
	.align 2, 0
_08F0A98C: .4byte gUnknown_03001D40
_08F0A990:
	movs r0, #1
	movs r1, #0x10
	bl SetTextPosition
	ldrb r3, [r4, #2]
	lsls r0, r3, #8
	ldrb r1, [r4, #1]
	orrs r0, r1
	bl DrawTextWithIdNoWait
_08F0A9A4:
	adds r4, #3
	b _08F0A4E6
_08F0A9A8:
	ldrb r0, [r4, #3]
	ldrb r1, [r4, #4]
	bl SetTextPosition
	ldrb r2, [r4, #2]
	lsls r0, r2, #8
	ldrb r3, [r4, #1]
	orrs r0, r3
	adds r0, #0x82
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl DrawTextWithIdNoWait
	adds r4, #5
	b _08F0A4E6
_08F0A9C6:
	movs r0, #0
	bl sub_8F0AAA4
	bl FadeIn
	adds r4, #1
	b _08F0A4E6
_08F0A9D4:
	bl M1_SoftReset
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8F0A9E8
sub_8F0A9E8: @ 0x08F0A9E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov ip, r3
	mov r1, sp
	ldr r0, _08F0AA18 @ =gUnknown_08F1BCBC
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	cmp r3, #0x1f
	bhi _08F0AA20
	ldr r0, _08F0AA1C @ =gUnknown_08F6449C
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08F0AA72
	.align 2, 0
_08F0AA18: .4byte gUnknown_08F1BCBC
_08F0AA1C: .4byte gUnknown_08F6449C
_08F0AA20:
	cmp r3, #0x3f
	bhi _08F0AA38
	ldr r0, _08F0AA34 @ =gUnknown_08F6F880
	adds r1, r3, #0
	subs r1, #0x20
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08F0AA72
	.align 2, 0
_08F0AA34: .4byte gUnknown_08F6F880
_08F0AA38:
	cmp r3, #0x47
	bls _08F0AA9A
	cmp r3, #0x4b
	bhi _08F0AA4A
	adds r0, r3, #0
	subs r0, #0x48
	lsls r0, r0, #2
	add r0, sp
	b _08F0AA70
_08F0AA4A:
	cmp r3, #0x5f
	bls _08F0AA9A
	cmp r3, #0x61
	bhi _08F0AA5C
	ldr r0, _08F0AA58 @ =gUnknown_08F339A0
	b _08F0AA72
	.align 2, 0
_08F0AA58: .4byte gUnknown_08F339A0
_08F0AA5C:
	cmp r3, #0x75
	bhi _08F0AA80
	ldr r2, _08F0AA7C @ =gUnknown_08F6453C
	adds r0, r3, #0
	subs r0, #0x62
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
_08F0AA70:
	ldr r0, [r0]
_08F0AA72:
	adds r1, r4, #0
	adds r2, r5, #0
	bl BitUnpack
	b _08F0AA9A
	.align 2, 0
_08F0AA7C: .4byte gUnknown_08F6453C
_08F0AA80:
	mov r0, ip
	cmp r0, #0xcf
	bls _08F0AA9A
	cmp r0, #0xd7
	bhi _08F0AA9A
	subs r0, #0xcc
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	adds r1, r4, #0
	adds r2, r5, #0
	bl BitUnpack
_08F0AA9A:
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F0AAA4
sub_8F0AAA4: @ 0x08F0AAA4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_8F016EC
	movs r4, #0
	ldr r7, _08F0AAE8 @ =gUnknown_03001D40
	ldr r5, _08F0AAEC @ =gUnknown_030007B8
_08F0AAB4:
	ldr r0, _08F0AAE8 @ =gUnknown_03001D40
	lsls r1, r4, #5
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08F0AB16
	cmp r6, #0
	beq _08F0AAD8
	movs r0, #0xc
	ldrsb r0, [r2, r0]
	ldrh r3, [r2, #4]
	adds r0, r3, r0
	strh r0, [r2, #4]
	movs r0, #0xd
	ldrsb r0, [r2, r0]
	ldrh r3, [r2, #6]
	adds r0, r3, r0
	strh r0, [r2, #6]
_08F0AAD8:
	movs r0, #0x40
	ldrb r2, [r2, #2]
	ands r0, r2
	cmp r0, #0
	beq _08F0AAF0
	movs r0, #0
	b _08F0AAF6
	.align 2, 0
_08F0AAE8: .4byte gUnknown_03001D40
_08F0AAEC: .4byte gUnknown_030007B8
_08F0AAF0:
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
_08F0AAF6:
	strh r0, [r5]
	adds r3, r1, r7
	ldrh r0, [r3, #0x16]
	movs r1, #0x3f
	ldrb r2, [r3, #2]
	ands r1, r2
	ldrh r2, [r3, #4]
	subs r2, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r3, [r3, #6]
	subs r3, #0x18
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	bl sub_8F01700
_08F0AB16:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _08F0AAB4
	bl sub_8F0191C
	ldr r1, _08F0AB4C @ =0x040000D4
	ldr r0, _08F0AB50 @ =gUnknown_03002450
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0AB54 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F0AB58 @ =gBg0TilemapBuffer
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0AB5C @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0AB4C: .4byte 0x040000D4
_08F0AB50: .4byte gUnknown_03002450
_08F0AB54: .4byte 0x84000100
_08F0AB58: .4byte gBg0TilemapBuffer
_08F0AB5C: .4byte 0x84000200

	thumb_func_start sub_8F0AB60
sub_8F0AB60: @ 0x08F0AB60
	push {r4, r5, lr}
	sub sp, #4
	ldr r2, _08F0ABC0 @ =0x04000054
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08F0ABC4 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	movs r4, #0
	adds r5, r2, #0
_08F0AB74:
	strh r4, [r5]
	movs r0, #5
	bl DelayByAmount
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x10
	bls _08F0AB74
	movs r0, #0
	str r0, [sp]
	ldr r1, _08F0ABC8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08F0ABCC @ =0x06001000
	str r0, [r1, #4]
	ldr r0, _08F0ABD0 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_8F0B040
	bl sub_8F019B8
	movs r4, #0
	ldr r2, _08F0ABD4 @ =gUnknown_03001D40
	movs r1, #0
_08F0ABA8:
	lsls r0, r4, #5
	adds r0, r0, r2
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _08F0ABA8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0ABC0: .4byte 0x04000054
_08F0ABC4: .4byte 0x04000050
_08F0ABC8: .4byte 0x040000D4
_08F0ABCC: .4byte 0x06001000
_08F0ABD0: .4byte 0x85000200
_08F0ABD4: .4byte gUnknown_03001D40

	thumb_func_start sub_8F0ABD8
sub_8F0ABD8: @ 0x08F0ABD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl SoundVSyncOff_rev01
	add r2, sp, #4
	ldr r1, _08F0AC70 @ =0x04000080
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08F0AC74 @ =0x04000130
	ldrh r1, [r4]
	ldr r3, _08F0AC78 @ =0x000003FF
	adds r0, r3, #0
	bics r0, r1
	mov sl, r2
	mov r7, sp
	adds r7, #2
	cmp r0, #0
	beq _08F0AC14
	adds r2, r4, #0
_08F0AC0A:
	ldrh r1, [r2]
	adds r0, r3, #0
	bics r0, r1
	cmp r0, #0
	bne _08F0AC0A
_08F0AC14:
	movs r0, #0x80
	lsls r0, r0, #0x13
	mov r8, r0
	ldrh r0, [r0]
	strh r0, [r7]
	movs r0, #0x80
	mov r1, r8
	strh r0, [r1]
	ldr r1, _08F0AC7C @ =0x04000132
	ldr r2, _08F0AC80 @ =0x00008304
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _08F0AC84 @ =0x04000208
	movs r0, #0
	mov sb, r0
	strh r0, [r5]
	mov r1, sp
	ldr r4, _08F0AC88 @ =0x04000200
	ldrh r0, [r4]
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r4]
	movs r6, #1
	strh r6, [r5]
	bl SoundBiasReset
	svc #3
	bl SoundBiasSet
	mov r2, sb
	strh r2, [r5]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
	strh r6, [r5]
	bl VBlankIntrWait
	ldrh r0, [r7]
	mov r1, r8
	strh r0, [r1]
	ldr r3, _08F0AC74 @ =0x04000130
	ldrh r1, [r3]
	ldr r2, _08F0AC78 @ =0x000003FF
	b _08F0AC8E
	.align 2, 0
_08F0AC70: .4byte 0x04000080
_08F0AC74: .4byte 0x04000130
_08F0AC78: .4byte 0x000003FF
_08F0AC7C: .4byte 0x04000132
_08F0AC80: .4byte 0x00008304
_08F0AC84: .4byte 0x04000208
_08F0AC88: .4byte 0x04000200
_08F0AC8C:
	ldrh r1, [r3]
_08F0AC8E:
	adds r0, r2, #0
	bics r0, r1
	cmp r0, #0
	bne _08F0AC8C
	bl SoundVSyncOn_rev01
	ldr r1, _08F0ACB4 @ =0x04000080
	mov r2, sl
	ldrh r0, [r2]
	strh r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0ACB4: .4byte 0x04000080

	thumb_func_start sub_8F0ACB8
sub_8F0ACB8: @ 0x08F0ACB8
	push {lr}
	bl SoundVSyncOff_rev01
	ldr r1, _08F0ACD4 @ =0x04000080
	movs r0, #0
	strh r0, [r1]
	subs r1, #0x80
	movs r0, #0x80
	strh r0, [r1]
	ldr r3, _08F0ACD8 @ =0x04000130
	ldrh r1, [r3]
	ldr r2, _08F0ACDC @ =0x000003FF
	b _08F0ACE2
	.align 2, 0
_08F0ACD4: .4byte 0x04000080
_08F0ACD8: .4byte 0x04000130
_08F0ACDC: .4byte 0x000003FF
_08F0ACE0:
	ldrh r1, [r3]
_08F0ACE2:
	adds r0, r2, #0
	bics r0, r1
	cmp r0, #0xf
	beq _08F0ACE0
	movs r0, #0xe0
	bl SoftResetRom
	pop {r0}
	bx r0

	thumb_func_start M1_SoftReset
M1_SoftReset: @ 0x08F0ACF4
	push {lr}
	bl SoundVSyncOff_rev01
	ldr r1, _08F0AD08 @ =0x04000080
	movs r0, #0
	strh r0, [r1]
	bl sub_8F15384
	pop {r0}
	bx r0
	.align 2, 0
_08F0AD08: .4byte 0x04000080

	thumb_func_start sub_8F0AD0C
sub_8F0AD0C: @ 0x08F0AD0C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x24
	ldr r1, _08F0ADD8 @ =gUnknown_08F29F58
	mov r0, sp
	movs r2, #8
	bl memcpy
	add r0, sp, #8
	mov r8, r0
	ldr r1, _08F0ADDC @ =gUnknown_08F29F60
	movs r2, #8
	bl memcpy
	add r6, sp, #0x10
	ldr r1, _08F0ADE0 @ =gUnknown_08F29F68
	adds r0, r6, #0
	movs r2, #8
	bl memcpy
	add r5, sp, #0x18
	ldr r1, _08F0ADE4 @ =gUnknown_08F29F70
	adds r0, r5, #0
	movs r2, #8
	bl memcpy
	ldr r0, _08F0ADE8 @ =gFont
	ldr r1, _08F0ADEC @ =0x06008000
	movs r2, #0xa0
	lsls r2, r2, #1
	bl BitUnpack
	movs r4, #0
	str r4, [sp, #0x20]
	ldr r0, _08F0ADF0 @ =0x040000D4
	add r1, sp, #0x20
	str r1, [r0]
	ldr r1, _08F0ADF4 @ =gBg0TilemapBuffer
	str r1, [r0, #4]
	ldr r1, _08F0ADF8 @ =0x85000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
#ifdef NDS_VERSION
	@nds stack is in dtcm by default and can't be dma'd from/to
	ldr r1, _08F0ADD8 @ =gUnknown_08F29F58  @@nds
#else
	mov r1, sp
#endif
	str r1, [r0]
	ldr r1, _08F0ADFC @ =0x050001E0
	str r1, [r0, #4]
	ldr r2, _08F0AE00 @ =0x84000002
	str r2, [r0, #8]
	ldr r1, [r0, #8]
#ifdef NDS_VERSION
	@nds stack is in dtcm by default and can't be dma'd from/to
	ldr r1, _08F0ADDC @ =gUnknown_08F29F60 @@nds
#else
	mov r1, r8
#endif
	str r1, [r0]
	ldr r1, _08F0AE04 @ =0x050001C0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
#ifdef NDS_VERSION
	@nds stack is in dtcm by default and can't be dma'd from/to
	ldr r1, _08F0ADE0 @ =gUnknown_08F29F68  @@nds
	str r1, [r0] @@nds
#else
	str r6, [r0]
#endif
	ldr r1, _08F0AE08 @ =0x050001A0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
#ifdef NDS_VERSION
	@nds stack is in dtcm by default and can't be dma'd from/to
	ldr r1, _08F0ADE4 @ =gUnknown_08F29F70  @@nds
	str r1, [r0] @@nds
#else
	str r5, [r0]
#endif
	ldr r1, _08F0AE0C @ =0x05000180
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08F0AE10 @ =gUnknown_030034E8
	ldr r0, _08F0AE14 @ =gUnknown_08F27A90
	str r0, [r1]
	movs r0, #0
	movs r1, #0
	bl SetTextPosition
	movs r0, #0x20
	movs r1, #0x14
	bl SetLineMaximums
	ldr r1, _08F0AE18 @ =gUnknown_030034C0
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08F0AE1C @ =gTextDelayAfterWriteCharacter
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08F0AE20 @ =gTextDelayAfterWritePeriod
	strb r1, [r0]
	ldr r0, _08F0AE24 @ =gUnknown_030034E0
	strb r4, [r0]
	ldr r0, _08F0AE28 @ =gTextPlaySfx
	strb r4, [r0]
	ldr r0, _08F0AE2C @ =gUnknown_030034D0
	strb r4, [r0]
	ldr r0, _08F0AE30 @ =gUnknown_03003170
	strb r4, [r0]
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F0ADD8: .4byte gUnknown_08F29F58
_08F0ADDC: .4byte gUnknown_08F29F60
_08F0ADE0: .4byte gUnknown_08F29F68
_08F0ADE4: .4byte gUnknown_08F29F70
_08F0ADE8: .4byte gFont
_08F0ADEC: .4byte 0x06008000
_08F0ADF0: .4byte 0x040000D4
_08F0ADF4: .4byte gBg0TilemapBuffer
_08F0ADF8: .4byte 0x85000200
_08F0ADFC: .4byte 0x050001E0
_08F0AE00: .4byte 0x84000002
_08F0AE04: .4byte 0x050001C0
_08F0AE08: .4byte 0x050001A0
_08F0AE0C: .4byte 0x05000180
_08F0AE10: .4byte gUnknown_030034E8
_08F0AE14: .4byte gUnknown_08F27A90
_08F0AE18: .4byte gUnknown_030034C0
_08F0AE1C: .4byte gTextDelayAfterWriteCharacter
_08F0AE20: .4byte gTextDelayAfterWritePeriod
_08F0AE24: .4byte gUnknown_030034E0
_08F0AE28: .4byte gTextPlaySfx
_08F0AE2C: .4byte gUnknown_030034D0
_08F0AE30: .4byte gUnknown_03003170

	thumb_func_start sub_8F0AE34
sub_8F0AE34: @ 0x08F0AE34
	push {lr}
	ldr r0, _08F0AE48 @ =gUnknown_08F26D4A
	bl HandleControlCodes
	ldr r1, _08F0AE4C @ =gTextPlaySfx
	movs r0, #0x80
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08F0AE48: .4byte gUnknown_08F26D4A
_08F0AE4C: .4byte gTextPlaySfx

	thumb_func_start DrawPartyInfoWindow
DrawPartyInfoWindow: @ 0x08F0AE50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r1, _08F0AEF4 @ =gUnknown_03003198
_08F0AE62:
	adds r0, r6, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0AE7A
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08F0AE7A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08F0AE62
	movs r1, #0x12
	mov r0, r8
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl SetTextPosition
	ldr r0, _08F0AEF8 @ =gTextPlaySfx
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0AEA2
	ldr r0, _08F0AEFC @ =gUnknown_08F26D13
	bl HandleControlCodes
_08F0AEA2:
	ldr r0, _08F0AF00 @ =gUnknown_030034C0
	ldrh r1, [r0]
	mov sl, r1
	movs r1, #0
	mov sb, r1
	movs r6, #0
	adds r7, r0, #0
_08F0AEB0:
	ldr r2, _08F0AF04 @ =gGameInfo
	adds r0, r2, #0
	adds r0, #8
	adds r0, r6, r0
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08F0AEC6
	b _08F0AFC8
_08F0AEC6:
	lsls r0, r1, #6
	adds r5, r0, r2
	mov r4, sb
	adds r4, #0x13
	mov r0, r8
	subs r1, r4, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl SetTextPosition
	ldr r0, _08F0AF08 @ =gUnknown_08F26D3A
	bl HandleControlCodes
	ldrb r1, [r5, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0AF0C
	movs r1, #0xc0
	lsls r1, r1, #8
	b _08F0AF3C
	.align 2, 0
_08F0AEF4: .4byte gUnknown_03003198
_08F0AEF8: .4byte gTextPlaySfx
_08F0AEFC: .4byte gUnknown_08F26D13
_08F0AF00: .4byte gUnknown_030034C0
_08F0AF04: .4byte gGameInfo
_08F0AF08: .4byte gUnknown_08F26D3A
_08F0AF0C:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08F0AF1A
	movs r1, #0xd0
	lsls r1, r1, #8
	b _08F0AF3C
_08F0AF1A:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0AF28
	movs r1, #0xe0
	lsls r1, r1, #8
	b _08F0AF3C
_08F0AF28:
	ldrh r1, [r5, #2]
	lsrs r0, r1, #2
	ldrh r1, [r5, #0x14]
	cmp r0, r1
	bls _08F0AF38
	movs r1, #0xe0
	lsls r1, r1, #8
	b _08F0AF3C
_08F0AF38:
	movs r1, #0xf0
	lsls r1, r1, #8
_08F0AF3C:
	adds r0, r1, #0
	strh r0, [r7]
	mov r1, r8
	subs r0, r4, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #2
	adds r1, r4, #0
	bl SetTextPosition
	adds r0, r5, #0
	adds r0, #0x38
	bl HandleControlCodes
	ldr r0, _08F0AF94 @ =gTextPlaySfx
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0AFAC
	movs r0, #8
	adds r1, r4, #0
	bl SetTextPosition
	ldrh r0, [r5, #0x14]
	movs r1, #5
	bl DrawNumberWithMaxDigits
	ldrh r0, [r5, #0x16]
	movs r1, #4
	bl DrawNumberWithMaxDigits
	ldrb r0, [r5, #0x10]
	movs r1, #4
	bl DrawNumberWithMaxDigits
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08F0AF98
	movs r0, #2
	bl DrawSpaceTiles
	ldrb r0, [r5, #1]
	bl DrawPlayerCondition
	b _08F0AFAC
	.align 2, 0
_08F0AF94: .4byte gTextPlaySfx
_08F0AF98:
	ldrb r1, [r5, #0x12]
	lsls r0, r1, #8
	ldrb r1, [r5, #0x11]
	orrs r0, r1
	ldrb r5, [r5, #0x13]
	lsls r1, r5, #0x10
	adds r0, r0, r1
	movs r1, #8
	bl DrawNumberWithMaxDigits
_08F0AFAC:
	mov r0, sl
	strh r0, [r7]
	ldr r0, _08F0AFF8 @ =gTextPlaySfx
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0AFBE
	ldr r0, _08F0AFFC @ =0x000080DF
	bl WriteCharacterToTilemap
_08F0AFBE:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_08F0AFC8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08F0AFD4
	b _08F0AEB0
_08F0AFD4:
	movs r0, #0
	movs r1, #0x13
	bl SetTextPosition
	ldr r0, _08F0AFF8 @ =gTextPlaySfx
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0AFEA
	ldr r0, _08F0B000 @ =gUnknown_08F26D41
	bl HandleControlCodes
_08F0AFEA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0AFF8: .4byte gTextPlaySfx
_08F0AFFC: .4byte 0x000080DF
_08F0B000: .4byte gUnknown_08F26D41

	thumb_func_start sub_8F0B004
sub_8F0B004: @ 0x08F0B004
	push {lr}
	sub sp, #8
	ldr r0, _08F0B02C @ =gBg0TilemapBuffer
	movs r1, #0x98
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xfb
	bne _08F0B026
	mov r0, sp
	bl SaveTextSystemState
#ifdef JAPANESE
	bl DrawPartyInfoWindow
#elif ENGLISH
	@keep game from updating character status on top of dialog boxes
#endif
	mov r0, sp
	bl LoadTextSystemState
_08F0B026:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08F0B02C: .4byte gBg0TilemapBuffer

	thumb_func_start DrawMoneyWindow
DrawMoneyWindow: @ 0x08F0B030
	push {lr}
	ldr r0, _08F0B03C @ =gUnknown_08F26CF4
	bl HandleControlCodes
	pop {r0}
	bx r0
	.align 2, 0
_08F0B03C: .4byte gUnknown_08F26CF4

	thumb_func_start sub_8F0B040
sub_8F0B040: @ 0x08F0B040
	push {lr}
	sub sp, #4
	ldr r2, _08F0B094 @ =gUnknown_03003170
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0B068
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08F0B098 @ =gTextPlaySfx
	movs r0, #0
	strb r0, [r1]
	bl DrawPartyInfoWindow
	bl UpdateBg0Tilemap
	bl WaitForActionButtonPress
_08F0B068:
	movs r3, #0
	str r3, [sp]
	ldr r0, _08F0B09C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08F0B0A0 @ =gBg0TilemapBuffer
	str r2, [r0, #4]
	ldr r1, _08F0B0A4 @ =0x85000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _08F0B0A8 @ =0x84000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08F0B098 @ =gTextPlaySfx
	strb r3, [r0]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08F0B094: .4byte gUnknown_03003170
_08F0B098: .4byte gTextPlaySfx
_08F0B09C: .4byte 0x040000D4
_08F0B0A0: .4byte gBg0TilemapBuffer
_08F0B0A4: .4byte 0x85000200
_08F0B0A8: .4byte 0x84000200

	thumb_func_start HandleStatusMenu
HandleStatusMenu: @ 0x08F0B0AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov r1, sp
	ldr r0, _08F0B17C @ =gUnknown_08F29F78
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	mov r8, r0
	add r1, sp, #0xc
	mov sb, r1
_08F0B0C6:
	mov r2, r8
	cmp r2, #3
	bls _08F0B0D0
	movs r3, #0
	mov r8, r3
_08F0B0D0:
	ldr r5, _08F0B180 @ =gCurrentCharacterId
	ldr r4, _08F0B184 @ =gGameInfo
	adds r0, r4, #0
	adds r0, #8
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08F0B0EA
	b _08F0B20C
_08F0B0EA:
	ldr r0, _08F0B188 @ =gUnknown_08F26ED2
	bl HandleControlCodes
	movs r0, #0xb
	movs r1, #1
	bl SetTextPosition
	ldrb r5, [r5]
	lsls r0, r5, #6
	adds r1, r4, #0
	adds r1, #0x38
	adds r0, r0, r1
	bl HandleControlCodes
	movs r5, #0
	adds r4, #0x68
_08F0B10A:
	adds r1, r5, #0
	adds r1, #0xb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x12
	bl SetTextPosition
	ldr r0, _08F0B180 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r5, r0
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0B134
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r0, r1
	bl DrawTextWithIdNoWait
_08F0B134:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F0B10A
	movs r4, #0
	str r4, [sp, #0xc]
_08F0B142:
	ldr r0, _08F0B180 @ =gCurrentCharacterId
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08F0B1FA
	cmp r4, #0x3f
	bls _08F0B150
	movs r4, #0
_08F0B150:
	ldr r0, _08F0B18C @ =gUnknown_08F27068
	bl HandleControlCodes
_08F0B156:
	movs r6, #0
	movs r5, #0
	ldr r7, _08F0B190 @ =gUnknown_03003200
_08F0B15C:
	lsls r0, r4, #3
	ldr r1, _08F0B194 @ =gUnknown_08F5C51C
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _08F0B1AA
	adds r2, r1, #0
	ldr r3, _08F0B198 @ =0x0000FFFF
_08F0B16C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x3f
	bls _08F0B19C
	movs r4, #0
	b _08F0B1F6
	.align 2, 0
_08F0B17C: .4byte gUnknown_08F29F78
_08F0B180: .4byte gCurrentCharacterId
_08F0B184: .4byte gGameInfo
_08F0B188: .4byte gUnknown_08F26ED2
_08F0B18C: .4byte gUnknown_08F27068
_08F0B190: .4byte gUnknown_03003200
_08F0B194: .4byte gUnknown_08F5C51C
_08F0B198: .4byte 0x0000FFFF
_08F0B19C:
	lsls r1, r4, #3
	adds r1, r1, r2
	adds r0, r3, #0
	ldrh r1, [r1, #4]
	ands r0, r1
	cmp r0, #0
	beq _08F0B16C
_08F0B1AA:
	lsrs r1, r4, #3
	ldr r0, _08F0B218 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r1, r1, r7
	movs r0, #7
	ands r0, r4
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0B1E6
	adds r1, r5, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x12
	bl SetTextPosition
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r0, r4, r2
	bl DrawTextWithIdNoWait
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08F0B1E6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r5, #4
	bls _08F0B15C
_08F0B1F6:
	cmp r6, #0
	beq _08F0B156
_08F0B1FA:
	mov r0, sp
	mov r1, sb
	bl HandleSelectMenuInput
	ldr r1, _08F0B21C @ =0x00008001
	cmp r0, r1
	bgt _08F0B142
	cmp r0, r1
	bne _08F0B220
_08F0B20C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b _08F0B0C6
	.align 2, 0
_08F0B218: .4byte gCurrentCharacterId
_08F0B21C: .4byte 0x00008001
_08F0B220:
	ldr r1, _08F0B234 @ =gTextPlaySfx
	movs r0, #0
	strb r0, [r1]
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0B234: .4byte gTextPlaySfx

	thumb_func_start HandleCommandMenu
HandleCommandMenu: @ 0x08F0B238
	push {r4, r5, r6, lr}
	sub sp, #0x38
	adds r5, r0, #0
	mov r0, sp
	ldr r1, _08F0B28C @ =gUnknown_08F29F84
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	add r4, sp, #0x1c
	ldr r6, _08F0B290 @ =gUnknown_08F26CAD
	mov r2, sp
	adds r3, r4, #0
	movs r1, #6
_08F0B258:
	ldm r2!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bge _08F0B258
	adds r0, r6, #0
	bl HandleControlCodes
	movs r1, #0
	str r1, [r4, #0x10]
	ldr r0, _08F0B294 @ =gTextPlaySfx
	strb r1, [r0]
	bl DrawMoneyWindow
	bl DrawPartyInfoWindow
	cmp r5, #0
	bne _08F0B298
	bl UpdateBg0Tilemap
	adds r0, r4, #0
	movs r1, #0
	bl HandleSelectMenuInput
	b _08F0B2B6
	.align 2, 0
_08F0B28C: .4byte gUnknown_08F29F84
_08F0B290: .4byte gUnknown_08F26CAD
_08F0B294: .4byte gTextPlaySfx
_08F0B298:
	ldr r2, _08F0B2C0 @ =gBg0TilemapBuffer
	subs r0, r5, #1
	lsls r0, r0, #2
	add r0, sp
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldr r0, _08F0B2C4 @ =gUnknown_030034C0
	ldrh r0, [r0]
	adds r0, #0xff
	strh r0, [r1]
	adds r0, r5, #0
_08F0B2B6:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08F0B2C0: .4byte gBg0TilemapBuffer
_08F0B2C4: .4byte gUnknown_030034C0

	thumb_func_start sub_8F0B2C8
sub_8F0B2C8: @ 0x08F0B2C8
	push {r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	mov r1, sp
	ldr r0, _08F0B334 @ =gUnknown_08F29FA0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r1, sp, #0xc
	ldr r0, _08F0B338 @ =0x00020001
	str r0, [sp, #0xc]
	ldr r0, _08F0B33C @ =0x00090002
	str r0, [r1, #4]
	movs r0, #0
	str r0, [r1, #8]
	ldr r2, _08F0B340 @ =gTextOriginX
	ldrb r0, [r1, #2]
	ldrb r3, [r2]
	adds r0, r0, r3
	strb r0, [r1, #2]
	ldr r2, _08F0B344 @ =gTextY
	ldrb r0, [r1, #3]
	ldrb r2, [r2]
	adds r0, r0, r2
	strb r0, [r1, #3]
	ldrb r0, [r1, #6]
	adds r3, r3, r0
	strb r3, [r1, #6]
	ldrb r3, [r1, #7]
	adds r2, r2, r3
	strb r2, [r1, #7]
	adds r4, r1, #0
_08F0B306:
	adds r0, r4, #0
	movs r1, #0
	bl HandleSelectMenuInput
	adds r2, r0, #0
	cmp r2, #0
	bge _08F0B318
	cmp r5, #0
	beq _08F0B306
_08F0B318:
	ldr r1, _08F0B348 @ =gTextX
	ldr r0, _08F0B340 @ =gTextOriginX
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08F0B34C @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0x80
	ldrb r4, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r0, r2, #0
	add sp, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08F0B334: .4byte gUnknown_08F29FA0
#ifdef JAPANESE
_08F0B338: .4byte 0x00020001
_08F0B33C: .4byte 0x00090002
#elif ENGLISH
@ horizontal positions for cursor locations when given options in main text (note: numbers need to be -1 their actual X position)
@ note: these numbers need to be -1 their actual X coordinates
@ note: these numbers are shared for ALL options, not just yes/no. Other examples include "Continue/Save", "Medicine/Sleep", and a few others
_08F0B338: .4byte 0x00020001
_08F0B33C: .4byte 0x000C0002
#endif
_08F0B340: .4byte gTextOriginX
_08F0B344: .4byte gTextY
_08F0B348: .4byte gTextX
_08F0B34C: .4byte gTextDelayAfterWriteCharacterEnabled

	thumb_func_start sub_8F0B350
sub_8F0B350: @ 0x08F0B350
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	add r6, sp, #8
	ldr r1, _08F0B408 @ =gUnknown_08F29FAC
	adds r0, r6, #0
	movs r2, #5
	bl memcpy
	mov r5, sp
	mov r3, sp
	mov r2, sp
	mov r1, sp
	movs r4, #0
	movs r0, #0xb0
	strb r0, [r1, #3]
	strb r0, [r2, #2]
	strb r0, [r3, #1]
	strb r0, [r5]
	mov r0, sp
	strb r4, [r0, #4]
	adds r0, r6, #0
	bl HandleControlCodes
	ldr r0, _08F0B40C @ =gTextDelayAfterWriteCharacterEnabled
	strb r4, [r0]
	movs r7, #0
	movs r5, #0
	ldr r0, _08F0B410 @ =gTextX
	mov r8, r0
	mov r4, sp
_08F0B390:
	mov r0, sp
	bl HandleControlCodes
	mov r1, r8
	ldrb r0, [r1]
	subs r0, #4
	strb r0, [r1]
	movs r0, #8
	ands r0, r7
	cmp r0, #0
	beq _08F0B3C0
	ldr r2, _08F0B414 @ =gBg0TilemapBuffer
	ldrb r3, [r1]
	adds r0, r3, r5
	ldr r1, _08F0B418 @ =gTextY
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldr r1, _08F0B41C @ =gUnknown_030034C0
	ldrh r1, [r1]
	adds r1, #0x10
	strh r1, [r0]
_08F0B3C0:
	bl UpdateBg0Tilemap
	ldr r6, _08F0B420 @ =gKeysDown
	ldrh r1, [r6]
	ldr r2, _08F0B424 @ =0x00000201
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08F0B492
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08F0B482
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08F0B470
	movs r0, #0xd
	bl PlaySfxById1
	ldrh r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0B428
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb9
	bls _08F0B470
	movs r0, #0xb0
	strb r0, [r4]
	b _08F0B470
	.align 2, 0
_08F0B408: .4byte gUnknown_08F29FAC
_08F0B40C: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0B410: .4byte gTextX
_08F0B414: .4byte gBg0TilemapBuffer
_08F0B418: .4byte gTextY
_08F0B41C: .4byte gUnknown_030034C0
_08F0B420: .4byte gKeysDown
_08F0B424: .4byte 0x00000201
_08F0B428:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0B444
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xaf
	bhi _08F0B470
	movs r0, #0xb9
	strb r0, [r4]
	b _08F0B470
_08F0B444:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08F0B45C
	adds r4, #1
	adds r5, #1
	cmp r5, #3
	ble _08F0B470
	mov r4, sp
	adds r4, #3
	movs r5, #3
	b _08F0B470
_08F0B45C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08F0B470
	subs r4, #1
	subs r5, #1
	cmp r5, #0
	bge _08F0B470
	mov r4, sp
	movs r5, #0
_08F0B470:
	adds r7, #1
	b _08F0B390
_08F0B474:
	mov r0, sp
	bl HandleControlCodes
	cmp r7, #0
	bge _08F0B49C
	adds r2, r7, #0
	b _08F0B4D6
_08F0B482:
	movs r0, #5
	bl PlaySfxById1
	movs r7, #0x80
	lsls r7, r7, #0x18
	ldrh r6, [r6]
	orrs r7, r6
	b _08F0B474
_08F0B492:
	movs r0, #5
	bl PlaySfxById1
	movs r7, #0
	b _08F0B474
_08F0B49C:
	mov r1, sp
	movs r3, #0xf
	adds r0, r3, #0
	ldrb r1, [r1]
	ands r0, r1
	lsls r2, r0, #5
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r0
	lsls r2, r2, #3
	mov r0, sp
	ldrb r1, [r0, #1]
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0x64
	muls r0, r1, r0
	adds r2, r2, r0
	mov r0, sp
	ldrb r0, [r0, #2]
	adds r1, r3, #0
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	mov r0, sp
	ldrb r0, [r0, #3]
	ands r3, r0
	adds r2, r2, r3
_08F0B4D6:
	ldr r1, _08F0B4F8 @ =gTextX
	ldr r0, _08F0B4FC @ =gTextOriginX
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08F0B500 @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0x80
	ldrb r3, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r0, r2, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0B4F8: .4byte gTextX
_08F0B4FC: .4byte gTextOriginX
_08F0B500: .4byte gTextDelayAfterWriteCharacterEnabled

	thumb_func_start SelectPSI
SelectPSI: @ 0x08F0B504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r0, #0
	str r0, [sp, #0x28]
_08F0B514:
	ldr r1, [sp, #0x28]
	cmp r1, #3
	ble _08F0B51E
	movs r2, #0
	str r2, [sp, #0x28]
_08F0B51E:
	ldr r5, _08F0B634 @ =gGameInfo
	adds r0, r5, #0
	adds r0, #8
	ldr r3, [sp, #0x28]
	adds r0, r3, r0
	ldrb r0, [r0]
	mov sb, r0
	mov r6, sb
	subs r6, #1
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08F0B53A
	b _08F0B654
_08F0B53A:
	ldr r0, _08F0B638 @ =gUnknown_08F26D8C
	bl HandleControlCodes
	movs r0, #7
	movs r1, #2
	bl SetTextPosition
	mov r7, sb
	lsls r0, r7, #6
	adds r1, r5, #0
	adds r1, #0x38
	adds r0, r0, r1
	bl HandleControlCodes
	ldr r0, _08F0B63C @ =gUnknown_08F29E88
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #1
	mov r8, r0
	movs r3, #0
	movs r4, #0
	mov sl, r6
	add r5, sp, #4
_08F0B568:
	lsls r0, r4, #3
	ldr r2, _08F0B640 @ =gUnknown_08F5C51C
	adds r1, r0, r2
	ldrb r0, [r1, #4]
	ldr r6, _08F0B634 @ =gGameInfo
	mov r7, r8
	lsls r2, r7, #2
	cmp r0, #0
	bne _08F0B588
_08F0B57A:
	adds r1, #8
	adds r4, #1
	cmp r4, #0x3f
	bgt _08F0B5E6
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08F0B57A
_08F0B588:
	asrs r1, r4, #3
	mov r2, sl
	lsls r0, r2, #6
	adds r1, r1, r0
	ldr r7, _08F0B644 @ =gUnknown_03003200
	adds r1, r1, r7
	movs r0, #7
	ands r0, r4
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	movs r1, #0x80
	ands r0, r1
	adds r7, r4, #1
	adds r6, r3, #1
	cmp r0, #0
	beq _08F0B5D8
	ldr r1, _08F0B63C @ =gUnknown_08F29E88
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5]
	strh r7, [r5]
	ldrb r0, [r5, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #3]
	bl SetTextPosition
	movs r1, #0x8d
	lsls r1, r1, #3
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl DrawTextWithIdNoWait
	adds r5, #4
	movs r2, #1
	add r8, r2
_08F0B5D8:
	adds r3, r6, #0
	adds r4, r7, #0
	ldr r6, _08F0B634 @ =gGameInfo
	mov r7, r8
	lsls r2, r7, #2
	cmp r3, #7
	ble _08F0B568
_08F0B5E6:
	mov r1, sp
	adds r0, r1, r2
	movs r2, #0
	strh r2, [r0]
	mov r3, sl
	lsls r1, r3, #6
	adds r1, r1, r6
	adds r1, #0x41
	movs r0, #0xc0
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F0B604
	mov r0, sp
	strh r2, [r0, #4]
_08F0B604:
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	adds r2, r0, #0
	cmp r2, #0xff
	bgt _08F0B654
	cmp r2, #0
	ble _08F0B65C
	subs r2, #1
	ldr r1, _08F0B648 @ =gUnknown_030007D8
	movs r7, #1
	rsbs r7, r7, #0
	adds r0, r7, #0
	strh r0, [r1]
	ldr r0, _08F0B64C @ =gUnknown_03003174
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08F0B650 @ =gUnknown_03003188
	adds r0, r2, #0
	subs r0, #0x40
	strb r0, [r1]
	b _08F0B65C
	.align 2, 0
_08F0B634: .4byte gGameInfo
_08F0B638: .4byte gUnknown_08F26D8C
_08F0B63C: .4byte gUnknown_08F29E88
_08F0B640: .4byte gUnknown_08F5C51C
_08F0B644: .4byte gUnknown_03003200
_08F0B648: .4byte gUnknown_030007D8
_08F0B64C: .4byte gUnknown_03003174
_08F0B650: .4byte gUnknown_03003188
_08F0B654:
	ldr r2, [sp, #0x28]
	adds r2, #1
	str r2, [sp, #0x28]
	b _08F0B514
_08F0B65C:
	adds r0, r2, #0
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start PickAnItemFromInventory
PickAnItemFromInventory: @ 0x08F0B670
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r0, #0
	str r0, [sp, #0x28]
_08F0B680:
	ldr r1, [sp, #0x28]
	cmp r1, #3
	ble _08F0B68A
	movs r2, #0
	str r2, [sp, #0x28]
_08F0B68A:
	ldr r5, _08F0B74C @ =gGameInfo
	adds r0, r5, #0
	adds r0, #8
	ldr r1, [sp, #0x28]
	adds r0, r1, r0
	ldrb r0, [r0]
	mov r8, r0
	mov r6, r8
	subs r6, #1
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0B764
	ldr r0, _08F0B750 @ =gUnknown_08F26D8C
	bl HandleControlCodes
	movs r0, #7
	movs r1, #2
	bl SetTextPosition
	mov r2, r8
	lsls r0, r2, #6
	adds r1, r5, #0
	adds r1, #0x38
	adds r0, r0, r1
	bl HandleControlCodes
	ldr r1, _08F0B754 @ =gUnknown_08F29E88
	ldr r0, [r1]
	str r0, [sp]
	movs r7, #1
	movs r4, #0
	mov sb, r6
	adds r5, #0x60
	mov sl, r5
	add r5, sp, #4
_08F0B6D2:
	mov r2, sb
	lsls r0, r2, #6
	adds r0, r4, r0
	add r0, sl
	ldrb r6, [r0]
	cmp r6, #0
	beq _08F0B70C
	adds r4, #1
	lsls r0, r4, #2
	ldr r1, _08F0B754 @ =gUnknown_08F29E88
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5]
	ldrb r0, [r5, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #3]
	bl SetTextPosition
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	bl DrawTextWithIdNoWait
	adds r5, #4
	adds r7, #1
	cmp r4, #7
	ble _08F0B6D2
_08F0B70C:
	lsls r0, r7, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	cmp r0, #0xff
	bgt _08F0B764
	cmp r0, #0
	ble _08F0B76C
	ldr r1, _08F0B758 @ =gUnknown_030007D8
	subs r0, #1
	strh r0, [r1]
	ldr r0, _08F0B75C @ =gUnknown_03003174
	mov r2, r8
	strb r2, [r0]
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r1, r1, r0
	add r1, sl
	ldrb r0, [r1]
	ldr r1, _08F0B760 @ =gUnknown_03003188
	strb r0, [r1]
	ldrb r0, [r1]
	b _08F0B76C
	.align 2, 0
_08F0B74C: .4byte gGameInfo
_08F0B750: .4byte gUnknown_08F26D8C
_08F0B754: .4byte gUnknown_08F29E88
_08F0B758: .4byte gUnknown_030007D8
_08F0B75C: .4byte gUnknown_03003174
_08F0B760: .4byte gUnknown_03003188
_08F0B764:
	ldr r2, [sp, #0x28]
	adds r2, #1
	str r2, [sp, #0x28]
	b _08F0B680
_08F0B76C:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start HandleGoodsMenuInput
HandleGoodsMenuInput: @ 0x08F0B77C
	push {r4, r5, lr}
	sub sp, #0x28
	mov r1, sp
	ldr r0, _08F0B7BC @ =gUnknown_08F29FB4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	add r4, sp, #0x18
	adds r1, r4, #0
	ldr r0, _08F0B7C0 @ =gUnknown_08F29FCC
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08F0B7C4 @ =gUnknown_08F26E21
	bl HandleControlCodes
	ldr r1, _08F0B7C8 @ =gGameInfo
	ldr r0, _08F0B7CC @ =gUnknown_03003174
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	movs r1, #0xc0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F0B7D0
	mov r0, sp
	b _08F0B7D2
	.align 2, 0
_08F0B7BC: .4byte gUnknown_08F29FB4
_08F0B7C0: .4byte gUnknown_08F29FCC
_08F0B7C4: .4byte gUnknown_08F26E21
_08F0B7C8: .4byte gGameInfo
_08F0B7CC: .4byte gUnknown_03003174
_08F0B7D0:
	adds r0, r4, #0
_08F0B7D2:
	movs r1, #0
	bl HandleSelectMenuInput
	add sp, #0x28
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start PickAnItemFromCloset
PickAnItemFromCloset: @ 0x08F0B7E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r0, #0
	str r0, [sp, #0x28]
_08F0B7F0:
	ldr r1, [sp, #0x28]
	cmp r1, #9
	bgt _08F0B802
	lsls r0, r1, #3
	ldr r2, _08F0B830 @ =gUnknown_03003440
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0B806
_08F0B802:
	movs r3, #0
	str r3, [sp, #0x28]
_08F0B806:
	ldr r0, _08F0B834 @ =gUnknown_08F26D8C
	bl HandleControlCodes
	movs r0, #7
	movs r1, #2
	bl SetTextPosition
	ldr r0, _08F0B838 @ =gUnknown_08F278F8
	bl HandleControlCodes
	movs r7, #0
	ldr r1, _08F0B83C @ =gUnknown_03003448
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0B844
	ldr r0, _08F0B840 @ =gUnknown_08F29E88
	ldr r0, [r0]
	str r0, [sp]
	movs r7, #1
	b _08F0B858
	.align 2, 0
_08F0B830: .4byte gUnknown_03003440
_08F0B834: .4byte gUnknown_08F26D8C
_08F0B838: .4byte gUnknown_08F278F8
_08F0B83C: .4byte gUnknown_03003448
_08F0B840: .4byte gUnknown_08F29E88
_08F0B844:
	movs r0, #5
	movs r1, #2
	bl SetTextPosition
	ldr r0, _08F0B8C4 @ =0x000080DC
	bl WriteCharacterToTilemap
	ldr r0, _08F0B8C8 @ =0x000080FE
	bl WriteCharacterToTilemap
_08F0B858:
	movs r4, #0
	ldr r2, [sp, #0x28]
	lsls r2, r2, #3
	mov r8, r2
	ldr r3, _08F0B8CC @ =gUnknown_03003440
	mov sl, r3
	lsls r0, r7, #2
	mov r1, sp
	adds r5, r0, r1
	ldr r2, _08F0B8D0 @ =gUnknown_08F29E88
	mov sb, r2
_08F0B86E:
	mov r3, r8
	adds r0, r3, r4
	add r0, sl
	ldrb r6, [r0]
	cmp r6, #0
	beq _08F0B8A4
	adds r4, #1
	lsls r0, r4, #2
	add r0, sb
	ldr r0, [r0]
	str r0, [r5]
	ldrb r0, [r5, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #3]
	bl SetTextPosition
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r6, r1
	bl DrawTextWithIdNoWait
	adds r5, #4
	adds r7, #1
	cmp r4, #7
	ble _08F0B86E
_08F0B8A4:
	lsls r0, r7, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	cmp r0, #0xff
	ble _08F0B8D4
	ldr r3, [sp, #0x28]
	adds r3, #1
	str r3, [sp, #0x28]
	b _08F0B7F0
	.align 2, 0
_08F0B8C4: .4byte 0x000080DC
_08F0B8C8: .4byte 0x000080FE
_08F0B8CC: .4byte gUnknown_03003440
_08F0B8D0: .4byte gUnknown_08F29E88
_08F0B8D4:
	cmp r0, #0
	ble _08F0B8F6
	ldr r1, _08F0B908 @ =gUnknown_030007D8
	add r0, r8
	subs r0, #1
	strh r0, [r1]
	ldr r2, _08F0B90C @ =gUnknown_03003188
	ldr r0, _08F0B910 @ =gGameInfo
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	ldrb r0, [r2]
_08F0B8F6:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0B908: .4byte gUnknown_030007D8
_08F0B90C: .4byte gUnknown_03003188
_08F0B910: .4byte gGameInfo

	thumb_func_start SelectCharacter
SelectCharacter: @ 0x08F0B914
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r6, #0
	movs r4, #0
	ldr r1, _08F0B9EC @ =gUnknown_03003198
_08F0B91E:
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0B932
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08F0B932:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08F0B91E
	movs r5, #0
	movs r4, #0
	ldr r7, _08F0B9EC @ =gUnknown_03003198
_08F0B942:
	adds r0, r4, r7
	ldrb r2, [r0]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0B978
	lsls r0, r5, #2
	mov r3, sp
	adds r1, r3, r0
	strh r2, [r1]
	movs r0, #1
	strb r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x13
	subs r0, r0, r6
	strb r0, [r1, #3]
	ldrb r1, [r1, #3]
	movs r0, #1
	bl SetTextPosition
	ldr r0, _08F0B9F0 @ =0x00008010
	bl WriteCharacterToTilemap
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08F0B978:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08F0B942
	lsls r0, r5, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xf
	subs r0, r0, r6
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	adds r1, r4, #0
	bl SetTextPosition
	ldr r0, _08F0B9F4 @ =gUnknown_08F26E03
	bl HandleControlCodes
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	adds r7, r0, #0
	cmp r7, #0
	bgt _08F0BA1C
	movs r0, #0
	adds r1, r4, #0
	bl SetTextPosition
#ifdef JAPANESE
	movs r0, #7
#elif ENGLISH
	movs r0, #8 @delete expanded "Who?" window properly
#endif
	bl DrawBlankTiles
	movs r1, #0x10
	subs r1, r1, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl SetTextPosition
#ifdef JAPANESE
	movs r0, #7
#elif ENGLISH
	movs r0, #8 @delete expanded "Who?" window properly
#endif
	bl DrawBlankTiles
	movs r1, #0x11
	subs r1, r1, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl SetTextPosition
#ifdef JAPANESE
	movs r0, #7
#elif ENGLISH
	movs r0, #8 @delete expanded "Who?" window properly
#endif
	bl DrawBlankTiles
	movs r5, #0
	mov r0, sp
	b _08F0BA16
	.align 2, 0
_08F0B9EC: .4byte gUnknown_03003198
_08F0B9F0: .4byte 0x00008010
_08F0B9F4: .4byte gUnknown_08F26E03
_08F0B9F8:
	lsls r0, r5, #2
	mov r3, sp
	adds r1, r3, r0
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl SetTextPosition
	ldr r0, _08F0BA28 @ =0x00008010
	bl WriteCharacterToTilemap
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #2
	add r0, sp
_08F0BA16:
	ldrh r0, [r0]
	cmp r0, #0
	bne _08F0B9F8
_08F0BA1C:
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0BA28: .4byte 0x00008010

	thumb_func_start sub_8F0BA2C
sub_8F0BA2C: @ 0x08F0BA2C
	push {r4, lr}
	movs r2, #0
	movs r1, #0
	ldr r4, _08F0BA60 @ =gGameInfo
	adds r3, r4, #0
	adds r3, #8
_08F0BA38:
	adds r0, r1, r3
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0BA4C
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08F0BA4C:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08F0BA38
	cmp r2, #1
	bhi _08F0BA64
	ldrb r0, [r4, #8]
	b _08F0BA68
	.align 2, 0
_08F0BA60: .4byte gGameInfo
_08F0BA64:
	bl SelectCharacter
_08F0BA68:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start PickAnItemFromList
PickAnItemFromList: @ 0x08F0BA70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	mov r8, r0
	mov r1, sp
	ldr r0, _08F0BABC @ =gUnknown_08F29FDC
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, _08F0BAC0 @ =gUnknown_08F26DC9
	bl HandleControlCodes
	movs r4, #0
	ldr r0, [sp]
	str r0, [sp, #0x14]
	mov r0, r8
	ldrb r5, [r0]
	add r7, sp, #0x14
	cmp r5, #0
	beq _08F0BB30
_08F0BA9C:
	adds r4, #1
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #2
	bl SetTextPosition
	lsls r0, r5, #0x18
	adds r6, r0, #0
	cmp r6, #0
	blt _08F0BAC4
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r5, r1
	bl DrawTextWithIdNoWait
	b _08F0BAD4
	.align 2, 0
_08F0BABC: .4byte gUnknown_08F29FDC
_08F0BAC0: .4byte gUnknown_08F26DC9
_08F0BAC4:
	ldr r0, _08F0BAF8 @ =gUnknown_08F29EB0
	adds r1, r5, #0
	subs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl DrawTextWithIdNoWait
_08F0BAD4:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
#ifdef JAPANESE
	movs r0, #0xd
#elif ENGLISH
	movs r0, #0xe @expand store menu width
#endif
	bl SetTextPosition
	ldr r0, _08F0BAFC @ =0x000080A4
	bl WriteCharacterToTilemap
	cmp r6, #0
	blt _08F0BB04
	lsls r0, r5, #3
	ldr r1, _08F0BB00 @ =gItemData
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	movs r1, #4
	bl DrawNumberWithMaxDigits
	b _08F0BB12
	.align 2, 0
_08F0BAF8: .4byte gUnknown_08F29EB0
_08F0BAFC: .4byte 0x000080A4
_08F0BB00: .4byte gItemData
_08F0BB04:
	lsls r0, r5, #3
	ldr r1, _08F0BB54 @ =gTeleportLocations
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	movs r1, #4
	bl DrawNumberWithMaxDigits
_08F0BB12:
	ldr r0, _08F0BB58 @ =0x000080BA
	bl WriteCharacterToTilemap
	cmp r4, #3
	bgt _08F0BB30
	lsls r0, r4, #2
	adds r1, r7, r0
	add r0, sp
	ldr r0, [r0]
	str r0, [r1]
	mov r2, r8
	adds r0, r2, r4
	ldrb r5, [r0]
	cmp r5, #0
	bne _08F0BA9C
_08F0BB30:
	lsls r0, r4, #2
	adds r0, r7, r0
	movs r1, #0
	strh r1, [r0]
	adds r0, r7, #0
	bl HandleSelectMenuInput
	cmp r0, #0
	ble _08F0BB48
	add r0, r8
	subs r0, #1
	ldrb r0, [r0]
_08F0BB48:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0BB54: .4byte gTeleportLocations
_08F0BB58: .4byte 0x000080BA

	thumb_func_start SelectTeleportDestination
SelectTeleportDestination: @ 0x08F0BB5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r0, _08F0BBEC @ =gUnknown_08F26D8C
	bl HandleControlCodes
	movs r0, #5
	movs r1, #2
	bl SetTextPosition
	ldr r0, _08F0BBF0 @ =gUnknown_08F278FF
	bl HandleControlCodes
	ldr r0, _08F0BBF4 @ =gGameInfo
	ldr r1, _08F0BBF8 @ =0x0000021D
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r2, #0
	mov r8, r2
	movs r5, #0
	ldr r0, _08F0BBFC @ =gUnknown_08F29E88
	mov sb, r0
	mov r4, sp
_08F0BB8E:
	movs r0, #0x80
	ands r0, r7
	adds r6, r5, #1
	cmp r0, #0
	beq _08F0BBC0
	lsls r0, r6, #2
	add r0, sb
	ldr r0, [r0]
	str r0, [r4]
	ldrb r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r4, #3]
	bl SetTextPosition
	ldr r1, _08F0BC00 @ =0x000004CF
	adds r0, r5, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl DrawTextWithIdNoWait
	adds r4, #4
	movs r2, #1
	add r8, r2
_08F0BBC0:
	lsls r0, r7, #0x19
	lsrs r7, r0, #0x18
	adds r5, r6, #0
	cmp r5, #7
	ble _08F0BB8E
	mov r1, r8
	lsls r0, r1, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0BBEC: .4byte gUnknown_08F26D8C
_08F0BBF0: .4byte gUnknown_08F278FF
_08F0BBF4: .4byte gGameInfo
_08F0BBF8: .4byte 0x0000021D
_08F0BBFC: .4byte gUnknown_08F29E88
_08F0BC00: .4byte 0x000004CF

	thumb_func_start sub_8F0BC04
sub_8F0BC04: @ 0x08F0BC04
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
	ldr r3, _08F0BCD8 @ =gUnknown_08F26E6B
	cmp r5, #0x11
	bhi _08F0BC78
	adds r1, r0, #0
	cmp r5, r0
	bge _08F0BC78
#ifdef JAPANESE
	movs r2, #0xdf
#elif ENGLISH
	movs r2, #0xfc @change the question marks when typing a name to dots
#endif
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
_08F0BCD8: .4byte gUnknown_08F26E6B
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
	bl PlaySfxById1
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
	bl PlaySfxById1
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
	bl PlaySfxById1
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
#ifdef JAPANESE
	cmp r4, #0xdf
#elif ENGLISH
	cmp r4, #0xfc @change the question marks when typing a name to dots
#endif
	bne _08F0BDE2
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08F0BDE2:
	mov r0, sl
	adds r4, r0, r5
#ifdef JAPANESE
	movs r0, #0xdf
#elif ENGLISH
	movs r0, #0xfc @change the question marks when typing a name to dots
#endif
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
	bl PlaySfxById1
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
#ifdef JAPANESE
	cmp r6, #0xdf
#elif ENGLISH
	cmp r6, #0xfc @change the question marks when typing a name to dots
#endif
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

	thumb_func_start SaveTextSystemState
SaveTextSystemState: @ 0x08F0BFB0
	ldr r1, _08F0BFE4 @ =gTextX
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _08F0BFE8 @ =gTextY
	ldrb r1, [r1]
	strb r1, [r0, #1]
	ldr r1, _08F0BFEC @ =gTextOriginX
	ldrb r1, [r1]
	strb r1, [r0, #2]
	ldr r1, _08F0BFF0 @ =gTextOriginY
	ldrb r1, [r1]
	strb r1, [r0, #3]
	ldr r1, _08F0BFF4 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r1, [r1]
	strb r1, [r0, #4]
	ldr r1, _08F0BFF8 @ =gTextMaxCharsPerLine
	ldrb r1, [r1]
	strb r1, [r0, #5]
	ldr r1, _08F0BFFC @ =gTextMaxLines
	ldrb r1, [r1]
	strb r1, [r0, #6]
	ldr r1, _08F0C000 @ =gTextNonEnglishCapitalLetter
	ldrb r1, [r1]
	strb r1, [r0, #7]
	bx lr
	.align 2, 0
_08F0BFE4: .4byte gTextX
_08F0BFE8: .4byte gTextY
_08F0BFEC: .4byte gTextOriginX
_08F0BFF0: .4byte gTextOriginY
_08F0BFF4: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0BFF8: .4byte gTextMaxCharsPerLine
_08F0BFFC: .4byte gTextMaxLines
_08F0C000: .4byte gTextNonEnglishCapitalLetter

	thumb_func_start LoadTextSystemState
LoadTextSystemState: @ 0x08F0C004
	ldr r2, _08F0C038 @ =gTextX
	ldrb r1, [r0]
	strb r1, [r2]
	ldr r2, _08F0C03C @ =gTextY
	ldrb r1, [r0, #1]
	strb r1, [r2]
	ldr r2, _08F0C040 @ =gTextOriginX
	ldrb r1, [r0, #2]
	strb r1, [r2]
	ldr r2, _08F0C044 @ =gTextOriginY
	ldrb r1, [r0, #3]
	strb r1, [r2]
	ldr r2, _08F0C048 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r1, [r0, #4]
	strb r1, [r2]
	ldr r2, _08F0C04C @ =gTextMaxCharsPerLine
	ldrb r1, [r0, #5]
	strb r1, [r2]
	ldr r2, _08F0C050 @ =gTextMaxLines
	ldrb r1, [r0, #6]
	strb r1, [r2]
	ldr r1, _08F0C054 @ =gTextNonEnglishCapitalLetter
	ldrb r0, [r0, #7]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08F0C038: .4byte gTextX
_08F0C03C: .4byte gTextY
_08F0C040: .4byte gTextOriginX
_08F0C044: .4byte gTextOriginY
_08F0C048: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0C04C: .4byte gTextMaxCharsPerLine
_08F0C050: .4byte gTextMaxLines
_08F0C054: .4byte gTextNonEnglishCapitalLetter

	thumb_func_start HandleControlCodes
HandleControlCodes: @ 0x08F0C058
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_8F0C79A

	thumb_func_start sub_08F0C060
sub_08F0C060: @ 0x08F0C060
	ldr r0, _08F0C0A0 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0C08C
	cmp r1, #3
	bne _08F0C072
	ldrb r0, [r6, #1]
	cmp r0, #3
	beq _08F0C076
_08F0C072:
	bl HandleTextWrapping
_08F0C076:
	ldr r2, _08F0C0A4 @ =gTextX
	ldr r0, _08F0C0A8 @ =gTextOriginX
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08F0C08C
	ldrb r0, [r6]
	cmp r0, #0xc0
	beq _08F0C08C
#ifdef JAPANESE
	adds r0, r1, #1
	strb r0, [r2]
#elif ENGLISH
	@only undo auto-indenting if it's battle text
	bl possibly_ignore_auto_indents
#endif
_08F0C08C:
	ldrb r0, [r6]
	cmp r0, #4
	bls _08F0C094
	b _08F0C76E
_08F0C094:
	lsls r0, r0, #2
	ldr r1, _08F0C0AC @ =_08F0C0B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0C0A0: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0C0A4: .4byte gTextX
_08F0C0A8: .4byte gTextOriginX
_08F0C0AC: .4byte _08F0C0B0
_08F0C0B0: @ jump table
	.4byte _08F0C7AA @ case 0
	.4byte _08F0C0C4 @ case 1
	.4byte _08F0C0D0 @ case 2
	.4byte _08F0C0FC @ case 3
	.4byte _08F0C798 @ case 4
_08F0C0C4:
	ldr r0, _08F0C0CC @ =0x00008010
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C0CC: .4byte 0x00008010
_08F0C0D0:
	ldr r1, _08F0C0EC @ =gTextX
	ldr r0, _08F0C0F0 @ =gTextOriginX
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08F0C0F4 @ =gTextY
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08F0C0F8 @ =gUnknown_030034E0
	ldrb r0, [r0]
	bl UpdateBg0TilemapMultipleTimes
	b _08F0C798
	.align 2, 0
_08F0C0EC: .4byte gTextX
_08F0C0F0: .4byte gTextOriginX
_08F0C0F4: .4byte gTextY
_08F0C0F8: .4byte gUnknown_030034E0
_08F0C0FC:
	adds r6, #1
	ldrb r0, [r6]
	cmp r0, #0x3f
	bls _08F0C106
	b _08F0C798
_08F0C106:
	lsls r0, r0, #2
	ldr r1, _08F0C110 @ =_08F0C114
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0C110: .4byte _08F0C114
_08F0C114: @ jump table
	.4byte _08F0C798 @ case 0
	.4byte _08F0C214 @ case 1
	.4byte _08F0C220 @ case 2
	.4byte _08F0C226 @ case 3
	.4byte _08F0C234 @ case 4
	.4byte _08F0C250 @ case 5
	.4byte _08F0C25E @ case 6
	.4byte _08F0C26C @ case 7
	.4byte _08F0C278 @ case 8
	.4byte _08F0C284 @ case 9
	.4byte _08F0C290 @ case 10
	.4byte _08F0C29C @ case 11
	.4byte _08F0C2A8 @ case 12
	.4byte _08F0C2B4 @ case 13
	.4byte _08F0C2C0 @ case 14
	.4byte _08F0C2CC @ case 15
	.4byte _08F0C2D8 @ case 16
	.4byte _08F0C2E4 @ case 17
	.4byte _08F0C2F0 @ case 18
	.4byte _08F0C2FC @ case 19
	.4byte _08F0C308 @ case 20
	.4byte _08F0C32A @ case 21
	.4byte _08F0C338 @ case 22
	.4byte _08F0C388 @ case 23
	.4byte _08F0C3A4 @ case 24
	.4byte _08F0C3BC @ case 25
	.4byte _08F0C3D4 @ case 26
	.4byte _08F0C3E8 @ case 27
	.4byte _08F0C3FC @ case 28
	.4byte _08F0C41C @ case 29
	.4byte _08F0C45E @ case 30
	.4byte _08F0C468 @ case 31
	.4byte _08F0C478 @ case 32
	.4byte _08F0C484 @ case 33
	.4byte _08F0C490 @ case 34
	.4byte _08F0C49C @ case 35
	.4byte _08F0C4AC @ case 36
	.4byte _08F0C4CC @ case 37
	.4byte _08F0C4D8 @ case 38
	.4byte _08F0C4E4 @ case 39
	.4byte _08F0C4F0 @ case 40
	.4byte _08F0C4FC @ case 41
	.4byte _08F0C508 @ case 42
	.4byte _08F0C514 @ case 43
	.4byte _08F0C520 @ case 44
	.4byte _08F0C53C @ case 45
	.4byte _08F0C558 @ case 46
	.4byte _08F0C574 @ case 47
	.4byte _08F0C58C @ case 48
	.4byte _08F0C5A8 @ case 49
	.4byte _08F0C5C8 @ case 50
	.4byte _08F0C5FC @ case 51
	.4byte _08F0C644 @ case 52
	.4byte _08F0C65C @ case 53
	.4byte _08F0C674 @ case 54
	.4byte _08F0C68C @ case 55
	.4byte _08F0C6A4 @ case 56
	.4byte _08F0C6C4 @ case 57
	.4byte _08F0C6FC @ case 58
	.4byte _08F0C730 @ case 59
	.4byte _08F0C740 @ case 60
	.4byte _08F0C74C @ case 61
	.4byte _08F0C344 @ case 62
	.4byte _08F0C752 @ case 63
_08F0C214:
	ldr r1, _08F0C21C @ =gUnknown_030034BC
	movs r0, #1
	b _08F0C7A8
	.align 2, 0
_08F0C21C: .4byte gUnknown_030034BC
_08F0C220:
	bl WaitForButtonPress
	b _08F0C798
_08F0C226:
	adds r6, #1
	ldrb r0, [r6]
	adds r6, #1
	ldrb r1, [r6]
	bl SetTextPosition
	b _08F0C798
_08F0C234:
	adds r6, #1
	ldrb r4, [r6]
	adds r6, #1
	ldrb r5, [r6]
	cmp r4, #0
	bne _08F0C242
	b _08F0C798
_08F0C242:
	adds r0, r5, #0
	bl WriteCharacterToTilemap
	subs r4, #1
	cmp r4, #0
	bne _08F0C242
	b _08F0C798
_08F0C250:
	adds r6, #1
	ldrb r0, [r6]
	adds r6, #1
	ldrb r1, [r6]
	bl SetLineMaximums
	b _08F0C798
_08F0C25E:
	ldr r0, _08F0C268 @ =0x00008094
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C268: .4byte 0x00008094
_08F0C26C:
	ldr r0, _08F0C274 @ =0x00008095
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C274: .4byte 0x00008095
_08F0C278:
	ldr r0, _08F0C280 @ =0x000080DB
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C280: .4byte 0x000080DB
_08F0C284:
	ldr r0, _08F0C28C @ =0x000080DD
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C28C: .4byte 0x000080DD
_08F0C290:
	ldr r0, _08F0C298 @ =0x000080DE
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C298: .4byte 0x000080DE
_08F0C29C:
	ldr r0, _08F0C2A4 @ =0x000080DF
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C2A4: .4byte 0x000080DF
_08F0C2A8:
	ldr r0, _08F0C2B0 @ =0x000080FB
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C2B0: .4byte 0x000080FB
_08F0C2B4:
	ldr r0, _08F0C2BC @ =0x000080FD
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C2BC: .4byte 0x000080FD
_08F0C2C0:
	ldr r0, _08F0C2C8 @ =0x000080FE
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C2C8: .4byte 0x000080FE
_08F0C2CC:
	ldr r0, _08F0C2D4 @ =0x000080E0
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C2D4: .4byte 0x000080E0
_08F0C2D8:
	ldr r0, _08F0C2E0 @ =gUnknown_03003208
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C2E0: .4byte gUnknown_03003208
_08F0C2E4:
	ldr r0, _08F0C2EC @ =gUnknown_03003288
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C2EC: .4byte gUnknown_03003288
_08F0C2F0:
	ldr r0, _08F0C2F8 @ =gUnknown_03003248
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C2F8: .4byte gUnknown_03003248
_08F0C2FC:
	ldr r0, _08F0C304 @ =gUnknown_030032C8
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C304: .4byte gUnknown_030032C8
_08F0C308:
	ldr r2, _08F0C31C @ =gGameInfo
	adds r1, r2, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0C320
	adds r0, r1, #0
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C31C: .4byte gGameInfo
_08F0C320:
	adds r0, r2, #0
	adds r0, #0x78
	bl HandleControlCodes
	b _08F0C798
_08F0C32A:
	ldr r0, _08F0C334 @ =gUnknown_03003419
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C334: .4byte gUnknown_03003419
_08F0C338:
	ldr r1, _08F0C340 @ =gGameInfo
	ldrb r2, [r1, #8]
	lsls r0, r2, #6
	b _08F0C764
	.align 2, 0
_08F0C340: .4byte gGameInfo
_08F0C344:
	movs r4, #0
	ldr r0, _08F0C384 @ =gGameInfo
	ldrb r5, [r0, #8]
	adds r2, r0, #0
	cmp r5, #0
	bne _08F0C352
	b _08F0C798
_08F0C352:
	adds r7, r2, #0
	movs r0, #0xc0
	mov ip, r0
	adds r3, r2, #0
	adds r3, #8
_08F0C35C:
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r0, r0, r7
	adds r0, #0x41
	mov r1, ip
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F0C370
	b _08F0C760
_08F0C370:
	adds r4, #1
	cmp r4, #3
	ble _08F0C378
	b _08F0C798
_08F0C378:
	adds r0, r4, r3
	ldrb r5, [r0]
	cmp r5, #0
	bne _08F0C35C
	b _08F0C798
	.align 2, 0
_08F0C384: .4byte gGameInfo
_08F0C388:
	ldr r0, _08F0C39C @ =gGameInfo
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _08F0C392
	b _08F0C798
_08F0C392:
	ldr r0, _08F0C3A0 @ =gUnknown_08F278F5
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C39C: .4byte gGameInfo
_08F0C3A0: .4byte gUnknown_08F278F5
_08F0C3A4:
	ldr r0, _08F0C3B8 @ =gGameInfo
	ldrb r1, [r0, #0x16]
	lsls r4, r1, #8
	ldrb r2, [r0, #0x15]
	orrs r4, r2
	ldrb r0, [r0, #0x17]
	lsls r0, r0, #0x10
	adds r4, r4, r0
	adds r0, r4, #0
	b _08F0C4A0
	.align 2, 0
_08F0C3B8: .4byte gGameInfo
_08F0C3BC:
	ldr r0, _08F0C3D0 @ =gGameInfo
	ldrb r1, [r0, #0x13]
	lsls r4, r1, #8
	ldrb r2, [r0, #0x12]
	orrs r4, r2
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x10
	adds r4, r4, r0
	adds r0, r4, #0
	b _08F0C4A0
	.align 2, 0
_08F0C3D0: .4byte gGameInfo
_08F0C3D4:
	ldr r0, _08F0C3E0 @ =gUnknown_03003174
	ldrb r0, [r0]
	lsls r0, r0, #6
	ldr r1, _08F0C3E4 @ =gUnknown_030031C8
	b _08F0C766
	.align 2, 0
_08F0C3E0: .4byte gUnknown_03003174
_08F0C3E4: .4byte gUnknown_030031C8
_08F0C3E8:
	ldr r0, _08F0C3F4 @ =gCurrentCharacterId
	ldrb r0, [r0]
	lsls r0, r0, #6
	ldr r1, _08F0C3F8 @ =gUnknown_030031C8
	b _08F0C766
	.align 2, 0
_08F0C3F4: .4byte gCurrentCharacterId
_08F0C3F8: .4byte gUnknown_030031C8
_08F0C3FC:
	ldr r1, _08F0C410 @ =gUnknown_03003188
	ldrb r2, [r1]
	lsls r0, r2, #0x18
	cmp r0, #0
	blt _08F0C414
	adds r1, r2, #0
	movs r2, #0xfa
	lsls r2, r2, #2
	b _08F0C456
	.align 2, 0
_08F0C410: .4byte gUnknown_03003188
_08F0C414:
	lsrs r0, r0, #0x18
	cmp r0, #0xbf
	bls _08F0C43A
	b _08F0C450
_08F0C41C:
	ldr r1, _08F0C430 @ =gCurrentItemId
	ldrb r2, [r1]
	lsls r0, r2, #0x18
	cmp r0, #0
	blt _08F0C434
	adds r1, r2, #0
	movs r2, #0xfa
	lsls r2, r2, #2
	b _08F0C456
	.align 2, 0
_08F0C430: .4byte gCurrentItemId
_08F0C434:
	lsrs r0, r0, #0x18
	cmp r0, #0xbf
	bhi _08F0C450
_08F0C43A:
	ldr r0, _08F0C44C @ =gUnknown_08F29EB0
	ldrb r1, [r1]
	subs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl DrawTextWithIdNoWait
	b _08F0C798
	.align 2, 0
_08F0C44C: .4byte gUnknown_08F29EB0
_08F0C450:
	ldrb r1, [r1]
	movs r2, #0xea
	lsls r2, r2, #2
_08F0C456:
	adds r0, r1, r2
	bl DrawTextWithIdNoWait
	b _08F0C798
_08F0C45E:
	ldr r0, _08F0C464 @ =gTempNumber
	ldrh r0, [r0]
	b _08F0C4A0
	.align 2, 0
_08F0C464: .4byte gTempNumber
_08F0C468:
	ldr r0, _08F0C474 @ =gGameInfo
	ldrh r0, [r0, #0x10]
	movs r1, #5
	bl DrawNumberWithMaxDigits
	b _08F0C798
	.align 2, 0
_08F0C474: .4byte gGameInfo
_08F0C478:
	ldr r0, _08F0C480 @ =gUnknown_03003640
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C480: .4byte gUnknown_03003640
_08F0C484:
	ldr r0, _08F0C48C @ =gUnknown_03003610
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C48C: .4byte gUnknown_03003610
_08F0C490:
	ldr r0, _08F0C498 @ =gUnknown_030036A0
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C498: .4byte gUnknown_030036A0
_08F0C49C:
	ldr r0, _08F0C4A8 @ =gUnknown_03003708
	ldr r0, [r0]
_08F0C4A0:
	movs r1, #0
	bl DrawNumberWithMaxDigits
	b _08F0C798
	.align 2, 0
_08F0C4A8: .4byte gUnknown_03003708
_08F0C4AC:
	ldr r1, _08F0C4C4 @ =gGameInfo
	ldr r0, _08F0C4C8 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	ldrb r0, [r0]
	bl DrawPlayerCondition
	b _08F0C798
	.align 2, 0
_08F0C4C4: .4byte gGameInfo
_08F0C4C8: .4byte gCurrentCharacterId
_08F0C4CC:
	ldr r0, _08F0C4D4 @ =0x0000811A
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C4D4: .4byte 0x0000811A
_08F0C4D8:
	ldr r0, _08F0C4E0 @ =0x00008050
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C4E0: .4byte 0x00008050
_08F0C4E4:
	ldr r0, _08F0C4EC @ =0x00008040
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C4EC: .4byte 0x00008040
_08F0C4F0:
	ldr r0, _08F0C4F8 @ =0x00008041
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C4F8: .4byte 0x00008041
_08F0C4FC:
	ldr r0, _08F0C504 @ =0x00008042
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C504: .4byte 0x00008042
_08F0C508:
	ldr r0, _08F0C510 @ =0x00008043
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C510: .4byte 0x00008043
_08F0C514:
	ldr r0, _08F0C51C @ =0x00008044
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C51C: .4byte 0x00008044
_08F0C520:
	ldr r5, _08F0C534 @ =0x00008097
	ldr r4, _08F0C538 @ =0x0000809F
_08F0C524:
	adds r0, r5, #0
	bl WriteCharacterToTilemap
	adds r5, #1
	cmp r5, r4
	ble _08F0C524
	b _08F0C798
	.align 2, 0
_08F0C534: .4byte 0x00008097
_08F0C538: .4byte 0x0000809F
_08F0C53C:
	ldr r1, _08F0C550 @ =gGameInfo
	ldr r0, _08F0C554 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x50
	ldrb r0, [r0]
	b _08F0C5B8
	.align 2, 0
_08F0C550: .4byte gGameInfo
_08F0C554: .4byte gCurrentCharacterId
_08F0C558:
	ldr r1, _08F0C56C @ =gGameInfo
	ldr r0, _08F0C570 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x54
	ldrh r0, [r0]
	b _08F0C6B4
	.align 2, 0
_08F0C56C: .4byte gGameInfo
_08F0C570: .4byte gCurrentCharacterId
_08F0C574:
	ldr r1, _08F0C584 @ =gGameInfo
	ldr r0, _08F0C588 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x42
	b _08F0C5B6
	.align 2, 0
_08F0C584: .4byte gGameInfo
_08F0C588: .4byte gCurrentCharacterId
_08F0C58C:
	ldr r1, _08F0C5A0 @ =gGameInfo
	ldr r0, _08F0C5A4 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x56
	ldrh r0, [r0]
	b _08F0C6B4
	.align 2, 0
_08F0C5A0: .4byte gGameInfo
_08F0C5A4: .4byte gCurrentCharacterId
_08F0C5A8:
	ldr r1, _08F0C5C0 @ =gGameInfo
	ldr r0, _08F0C5C4 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x44
_08F0C5B6:
	ldrh r0, [r0]
_08F0C5B8:
	movs r1, #3
	bl DrawNumberWithMaxDigits
	b _08F0C798
	.align 2, 0
_08F0C5C0: .4byte gGameInfo
_08F0C5C4: .4byte gCurrentCharacterId
_08F0C5C8:
	ldr r1, _08F0C5F0 @ =gGameInfo
	ldr r0, _08F0C5F4 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r2, r0, #0
	adds r2, #0x46
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, _08F0C5F8 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x3f
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r2, [r2]
	adds r5, r2, r0
	adds r0, r5, #0
	b _08F0C6B4
	.align 2, 0
_08F0C5F0: .4byte gGameInfo
_08F0C5F4: .4byte gCurrentCharacterId
_08F0C5F8: .4byte gItemData
_08F0C5FC:
	ldr r1, _08F0C638 @ =gGameInfo
	ldr r0, _08F0C63C @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	mov ip, r0
	mov r4, ip
	adds r4, #0x48
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r3, _08F0C640 @ =gItemData
	adds r1, r1, r3
	movs r2, #0x3f
	adds r0, r2, #0
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r4, [r4]
	adds r5, r4, r0
	mov r0, ip
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #3]
	ands r2, r0
	adds r5, r5, r2
	adds r0, r5, #0
	b _08F0C6B4
	.align 2, 0
_08F0C638: .4byte gGameInfo
_08F0C63C: .4byte gCurrentCharacterId
_08F0C640: .4byte gItemData
_08F0C644:
	ldr r1, _08F0C654 @ =gGameInfo
	ldr r0, _08F0C658 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x4b
	b _08F0C6B2
	.align 2, 0
_08F0C654: .4byte gGameInfo
_08F0C658: .4byte gCurrentCharacterId
_08F0C65C:
	ldr r1, _08F0C66C @ =gGameInfo
	ldr r0, _08F0C670 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x4c
	b _08F0C6B2
	.align 2, 0
_08F0C66C: .4byte gGameInfo
_08F0C670: .4byte gCurrentCharacterId
_08F0C674:
	ldr r1, _08F0C684 @ =gGameInfo
	ldr r0, _08F0C688 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x4d
	b _08F0C6B2
	.align 2, 0
_08F0C684: .4byte gGameInfo
_08F0C688: .4byte gCurrentCharacterId
_08F0C68C:
	ldr r1, _08F0C69C @ =gGameInfo
	ldr r0, _08F0C6A0 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x4e
	b _08F0C6B2
	.align 2, 0
_08F0C69C: .4byte gGameInfo
_08F0C6A0: .4byte gCurrentCharacterId
_08F0C6A4:
	ldr r1, _08F0C6BC @ =gGameInfo
	ldr r0, _08F0C6C0 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x4f
_08F0C6B2:
	ldrb r0, [r0]
_08F0C6B4:
#ifdef JAPANESE
	movs r1, #6
#elif ENGLISH
	movs r1, #4 @Alter the Status menu - fix status menu number alignment
#endif
	bl DrawNumberWithMaxDigits
	b _08F0C798
	.align 2, 0
_08F0C6BC: .4byte gGameInfo
_08F0C6C0: .4byte gCurrentCharacterId
_08F0C6C4:
	ldr r1, _08F0C6F4 @ =gGameInfo
	ldr r0, _08F0C6F8 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x51
	adds r1, r2, #0
	adds r1, #0x52
	ldrb r1, [r1]
	lsls r4, r1, #8
	ldrb r0, [r0]
	orrs r4, r0
	adds r0, r2, #0
	adds r0, #0x53
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #8
	bl DrawNumberWithMaxDigits
	b _08F0C798
	.align 2, 0
_08F0C6F4: .4byte gGameInfo
_08F0C6F8: .4byte gCurrentCharacterId
_08F0C6FC:
	movs r4, #0
	ldr r5, _08F0C714 @ =gUnknown_030033AE
_08F0C700:
	ldrb r0, [r5]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08F0C71C
	ldr r0, _08F0C718 @ =0x00008096
	bl WriteCharacterToTilemap
	b _08F0C722
	.align 2, 0
_08F0C714: .4byte gUnknown_030033AE
_08F0C718: .4byte 0x00008096
_08F0C71C:
	ldr r0, _08F0C72C @ =0x000080A5
	bl WriteCharacterToTilemap
_08F0C722:
	adds r4, #1
	cmp r4, #7
	ble _08F0C700
	b _08F0C798
	.align 2, 0
_08F0C72C: .4byte 0x000080A5
_08F0C730:
	ldr r1, _08F0C73C @ =gUnknown_030034C0
	adds r6, #1
	ldrb r2, [r6]
	lsls r0, r2, #0xc
	strh r0, [r1]
	b _08F0C798
	.align 2, 0
_08F0C73C: .4byte gUnknown_030034C0
_08F0C740:
	ldr r0, _08F0C748 @ =0x000080FF
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C748: .4byte 0x000080FF
_08F0C74C:
	bl sub_8F040E0
	b _08F0C798
_08F0C752:
	ldr r0, _08F0C75C @ =0x000080AC
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C75C: .4byte 0x000080AC
_08F0C760:
	lsls r0, r5, #6
	adds r1, r2, #0
_08F0C764:
	adds r1, #0x38
_08F0C766:
	adds r0, r0, r1
	bl HandleControlCodes
	b _08F0C798
_08F0C76E:
	ldr r2, _08F0C7B0 @ =gTextPlaySfx
	ldrb r1, [r2]
	cmp r1, #0
	beq _08F0C792
	ldr r0, _08F0C7B4 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0C792
	movs r0, #1
	eors r1, r0
	strb r1, [r2]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08F0C792
	movs r0, #0xe
	bl PlaySfxById1
_08F0C792:
	ldrb r0, [r6]
	bl WriteCharacterToTilemap
_08F0C798:
	adds r6, #1

	non_word_aligned_thumb_func_start sub_8F0C79A
sub_8F0C79A: @ 0x08F0C79A
	ldrb r1, [r6]
	cmp r1, #0
	beq _08F0C7A4
	bl sub_08F0C060
_08F0C7A4:
	ldr r1, _08F0C7B8 @ =gUnknown_030034BC
	movs r0, #0
_08F0C7A8:
	strb r0, [r1]
_08F0C7AA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0C7B0: .4byte gTextPlaySfx
_08F0C7B4: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0C7B8: .4byte gUnknown_030034BC

#ifndef ENGLISH
	thumb_func_start WriteCharacterToTilemap
WriteCharacterToTilemap: @ 0x08F0C7BC
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08F0C7D4
	ldr r0, _08F0C7D0 @ =0xFFFF7FFF
	ands r3, r0
	b _08F0C7DC
	.align 2, 0
_08F0C7D0: .4byte 0xFFFF7FFF
_08F0C7D4:
	adds r0, r3, #0
	bl GetFontCharTileId
	adds r3, r0, #0
_08F0C7DC:
	ldr r1, _08F0C814 @ =gBg0TilemapBuffer
	ldr r2, _08F0C818 @ =gTextX
	ldr r0, _08F0C81C @ =gTextY
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldrb r4, [r2]
	adds r0, r4, r0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, _08F0C820 @ =gUnknown_030034C0
	ldrh r1, [r1]
	adds r1, r1, r3
	strh r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r0, _08F0C824 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0C834
	cmp r3, #5
	bne _08F0C82C
	ldr r0, _08F0C828 @ =gTextDelayAfterWritePeriod
	ldrb r0, [r0]
	bl UpdateBg0TilemapMultipleTimes
	b _08F0C834
	.align 2, 0
_08F0C814: .4byte gBg0TilemapBuffer
_08F0C818: .4byte gTextX
_08F0C81C: .4byte gTextY
_08F0C820: .4byte gUnknown_030034C0
_08F0C824: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0C828: .4byte gTextDelayAfterWritePeriod
_08F0C82C:
	ldr r0, _08F0C83C @ =gTextDelayAfterWriteCharacter
	ldrb r0, [r0]
	bl UpdateBg0TilemapMultipleTimes
_08F0C834:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0C83C: .4byte gTextDelayAfterWriteCharacter
#endif

	thumb_func_start UpdateBg0TilemapMultipleTimes
UpdateBg0TilemapMultipleTimes: @ 0x08F0C840
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08F0C862
	ldr r6, _08F0C868 @ =gKeysDown
_08F0C84C:
	ldrh r4, [r6]
	bl UpdateBg0Tilemap
	ldrh r0, [r6]
	orrs r4, r0
	strh r4, [r6]
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08F0C84C
_08F0C862:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F0C868: .4byte gKeysDown

	thumb_func_start GetFontCharTileId
GetFontCharTileId: @ 0x08F0C86C
	adds r2, r0, #0
	cmp r2, #0xa7
	bgt _08F0C87C
	ldr r1, _08F0C878 @ =gTextNonEnglishCapitalLetter
	movs r0, #1
	b _08F0C88E
	.align 2, 0
_08F0C878: .4byte gTextNonEnglishCapitalLetter
_08F0C87C:
	adds r0, r2, #0
	subs r0, #0xc1
	cmp r0, #0x19
	bls _08F0C88A
	subs r0, #0x20
	cmp r0, #0x19
	bhi _08F0C890
_08F0C88A:
	ldr r1, _08F0C8B4 @ =gTextNonEnglishCapitalLetter
	movs r0, #0
_08F0C88E:
	strb r0, [r1]
_08F0C890:
	ldr r0, _08F0C8B8 @ =gUnknown_08F29C80
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08F0C8AE
	ldr r0, _08F0C8BC @ =0xFFFFF7FF
	ands r0, r2
	ldr r1, _08F0C8C0 @ =gUnknown_08F29E84
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
_08F0C8AE:
	adds r0, r2, #0
	bx lr
	.align 2, 0
_08F0C8B4: .4byte gTextNonEnglishCapitalLetter
_08F0C8B8: .4byte gUnknown_08F29C80
_08F0C8BC: .4byte 0xFFFFF7FF
_08F0C8C0: .4byte gUnknown_08F29E84

	thumb_func_start HandleTextWrapping
HandleTextWrapping: @ 0x08F0C8C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08F0C990 @ =gTextY
	ldr r1, _08F0C994 @ =gTextOriginY
	ldrb r3, [r1]
	ldr r1, _08F0C998 @ =gTextMaxLines
	ldrb r4, [r1]
	adds r2, r4, r3
	mov sl, r0
	ldrb r6, [r0]
	cmp r6, r2
	blt _08F0C942
	adds r4, r3, #0
	subs r0, r2, #1
	cmp r4, r0
	bge _08F0C93A
	ldr r7, _08F0C99C @ =gTextMaxCharsPerLine
	mov ip, r7
	mov r0, ip
	ldrb r0, [r0]
	mov sb, r0
	mov r8, r4
_08F0C8F6:
	ldr r1, _08F0C9A0 @ =gTextOriginX
	ldrb r2, [r1]
	mov r3, sb
	adds r0, r2, r3
	adds r5, r4, #1
	cmp r2, r0
	bge _08F0C92C
	lsls r0, r2, #1
	lsls r1, r5, #6
	ldr r6, _08F0C9A4 @ =gBg0TilemapBuffer
	adds r1, r1, r6
	adds r3, r0, r1
	lsls r1, r4, #6
	adds r1, r1, r6
	adds r1, r0, r1
_08F0C914:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r3, #2
	adds r1, #2
	adds r2, #1
	mov r7, ip
	ldrb r4, [r7]
	ldr r7, _08F0C9A0 @ =gTextOriginX
	ldrb r7, [r7]
	adds r0, r4, r7
	cmp r2, r0
	blt _08F0C914
_08F0C92C:
	adds r4, r5, #0
	ldr r1, _08F0C998 @ =gTextMaxLines
	ldrb r0, [r1]
	add r0, r8
	subs r0, #1
	cmp r4, r0
	blt _08F0C8F6
_08F0C93A:
	mov r2, sl
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_08F0C942:
	ldr r3, _08F0C9A0 @ =gTextOriginX
	ldr r4, _08F0C9A8 @ =gTextX
	ldrb r4, [r4]
	ldrb r6, [r3]
	cmp r4, r6
	bne _08F0C982
	ldrb r4, [r3]
	ldr r2, _08F0C99C @ =gTextMaxCharsPerLine
	ldrb r7, [r2]
	adds r0, r7, r4
	cmp r4, r0
	bge _08F0C97E
	ldr r0, _08F0C9A4 @ =gBg0TilemapBuffer
	mov r8, r0
	ldr r6, _08F0C990 @ =gTextY
	ldr r5, _08F0C9AC @ =gUnknown_030034C0
_08F0C962:
	ldrb r1, [r6]
	lsls r0, r1, #5
	adds r0, r4, r0
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r5]
	adds r1, #0x10
	strh r1, [r0]
	adds r4, #1
	ldrb r7, [r2]
	ldrb r1, [r3]
	adds r0, r7, r1
	cmp r4, r0
	blt _08F0C962
_08F0C97E:
	bl UpdateBg0Tilemap
_08F0C982:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0C990: .4byte gTextY
_08F0C994: .4byte gTextOriginY
_08F0C998: .4byte gTextMaxLines
_08F0C99C: .4byte gTextMaxCharsPerLine
_08F0C9A0: .4byte gTextOriginX
_08F0C9A4: .4byte gBg0TilemapBuffer
_08F0C9A8: .4byte gTextX
_08F0C9AC: .4byte gUnknown_030034C0

	thumb_func_start WaitForButtonPress
WaitForButtonPress: @ 0x08F0C9B0
	push {r4, r5, lr}
	ldr r4, _08F0C9D4 @ =gTextX
	ldr r1, _08F0C9D8 @ =gTextOriginX
	ldr r0, _08F0C9DC @ =gTextMaxCharsPerLine
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4]
	ldr r0, _08F0C9E0 @ =0x00008093
	bl WriteCharacterToTilemap
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r5, #1
	b _08F0CA0E
	.align 2, 0
_08F0C9D4: .4byte gTextX
_08F0C9D8: .4byte gTextOriginX
_08F0C9DC: .4byte gTextMaxCharsPerLine
_08F0C9E0: .4byte 0x00008093
_08F0C9E4:
	movs r0, #7
	ands r0, r5
	cmp r0, #0
	bne _08F0CA0C
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08F0CA00
	ldr r0, _08F0C9FC @ =0x00008010
	bl WriteCharacterToTilemap
	b _08F0CA06
	.align 2, 0
_08F0C9FC: .4byte 0x00008010
_08F0CA00:
	ldr r0, _08F0CA3C @ =0x00008093
	bl WriteCharacterToTilemap
_08F0CA06:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
_08F0CA0C:
	adds r5, #1
_08F0CA0E:
	bl UpdateBg0Tilemap
	ldr r0, _08F0CA40 @ =gKeysDown
	ldr r2, _08F0CA44 @ =0x00000207
	adds r1, r2, #0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08F0C9E4
	movs r0, #5
	bl PlaySfxById1
	ldr r0, _08F0CA48 @ =0x00008010
	bl WriteCharacterToTilemap
	ldr r1, _08F0CA4C @ =gTextX
	ldr r0, _08F0CA50 @ =gTextOriginX
	ldrb r0, [r0]
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0CA3C: .4byte 0x00008093
_08F0CA40: .4byte gKeysDown
_08F0CA44: .4byte 0x00000207
_08F0CA48: .4byte 0x00008010
_08F0CA4C: .4byte gTextX
_08F0CA50: .4byte gTextOriginX

	thumb_func_start SetTextPosition
SetTextPosition: @ 0x08F0CA54
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	blt _08F0CA68
	ldr r1, _08F0CA84 @ =gTextX
	ldr r0, _08F0CA88 @ =gTextOriginX
	strb r3, [r0]
	strb r3, [r1]
_08F0CA68:
	lsls r0, r2, #0x18
	cmp r0, #0
	blt _08F0CA76
	ldr r1, _08F0CA8C @ =gTextY
	ldr r0, _08F0CA90 @ =gTextOriginY
	strb r2, [r0]
	strb r2, [r1]
_08F0CA76:
	ldr r2, _08F0CA94 @ =gTextNonEnglishCapitalLetter
	ldr r1, _08F0CA98 @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	bx lr
	.align 2, 0
_08F0CA84: .4byte gTextX
_08F0CA88: .4byte gTextOriginX
_08F0CA8C: .4byte gTextY
_08F0CA90: .4byte gTextOriginY
_08F0CA94: .4byte gTextNonEnglishCapitalLetter
_08F0CA98: .4byte gTextDelayAfterWriteCharacterEnabled

	thumb_func_start DrawSpaceTiles
DrawSpaceTiles: @ 0x08F0CA9C
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	ble _08F0CAB0
_08F0CAA4:
	ldr r0, _08F0CAB8 @ =0x00008010
	bl WriteCharacterToTilemap
	subs r4, #1
	cmp r4, #0
	bgt _08F0CAA4
_08F0CAB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0CAB8: .4byte 0x00008010

	thumb_func_start DrawBlankTiles
DrawBlankTiles: @ 0x08F0CABC
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	ble _08F0CAD2
_08F0CAC4:
	movs r0, #0x80
	lsls r0, r0, #8
	bl WriteCharacterToTilemap
	subs r4, #1
	cmp r4, #0
	bgt _08F0CAC4
_08F0CAD2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start DrawTextWithIdWaitForButton
DrawTextWithIdWaitForButton: @ 0x08F0CAD8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08F0CB04 @ =gTextPlaySfx
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0CAE8
#ifdef JAPANESE
	bl sub_8F0AE34
#elif ENGLISH
	bl choose_text_window_type
#endif
_08F0CAE8:
	ldr r4, _08F0CB08 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F0CB0C
	bl HandleTextWrapping
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	bne _08F0CB0C
	bl WaitForButtonPress
	b _08F0CB10
	.align 2, 0
_08F0CB04: .4byte gTextPlaySfx
_08F0CB08: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0CB0C:
	movs r0, #1
	strb r0, [r4]
_08F0CB10:
	adds r0, r5, #0
	bl HandleControlCodes
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start DrawTextWithId
DrawTextWithId: @ 0x08F0CB1C
	push {lr}
#ifdef JAPANESE
	lsls r0, r0, #0x10
	ldr r1, _08F0CB38 @ =gUnknown_030034E8
#elif ENGLISH
	bl save_line_number_a
#endif
	ldr r1, [r1]
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08F0CB32
	bl DrawTextWithIdWaitForButton
_08F0CB32:
	pop {r0}
	bx r0
	.align 2, 0
_08F0CB38: .4byte gUnknown_030034E8

	thumb_func_start DrawTextWithIdNoWait
DrawTextWithIdNoWait: @ 0x08F0CB3C
	push {lr}
	lsls r0, r0, #0x10
	ldr r1, _08F0CB58 @ =gUnknown_030034E8
	ldr r1, [r1]
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08F0CB52
	bl HandleControlCodes
_08F0CB52:
	pop {r0}
	bx r0
	.align 2, 0
_08F0CB58: .4byte gUnknown_030034E8

	thumb_func_start DrawNumberWithMaxDigits
DrawNumberWithMaxDigits: @ 0x08F0CB5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r6, #0
	cmp r5, #0
	beq _08F0CB8C
_08F0CB6C:
	mov r0, sp
	adds r4, r0, r6
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0xb0
	strb r0, [r4]
	adds r6, #1
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	cmp r5, #0
	bne _08F0CB6C
_08F0CB8C:
	cmp r7, #0
	beq _08F0CB9C
	subs r0, r7, #1
	cmp r6, #0
	beq _08F0CB98
	subs r0, r7, r6
_08F0CB98:
	bl DrawSpaceTiles
_08F0CB9C:
	cmp r6, #0
	beq _08F0CBBE
	cmp r6, #0
	ble _08F0CBC4
_08F0CBA4:
	subs r4, r6, #1
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	bl WriteCharacterToTilemap
	adds r6, r4, #0
	cmp r6, #0
	bgt _08F0CBA4
	b _08F0CBC4
_08F0CBBE:
	ldr r0, _08F0CBCC @ =0x000080B0
	bl WriteCharacterToTilemap
_08F0CBC4:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0CBCC: .4byte 0x000080B0

	thumb_func_start DrawPlayerCondition
DrawPlayerCondition: @ 0x08F0CBD0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0CBEA
	movs r0, #0x95
	lsls r0, r0, #3
	bl DrawTextWithIdNoWait
	b _08F0CC7E
_08F0CBEA:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0CC00
	ldr r0, _08F0CBFC @ =0x000004A9
	bl DrawTextWithIdNoWait
	b _08F0CC7E
	.align 2, 0
_08F0CBFC: .4byte 0x000004A9
_08F0CC00:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08F0CC14
	ldr r0, _08F0CC10 @ =0x000004AA
	bl DrawTextWithIdNoWait
	b _08F0CC7E
	.align 2, 0
_08F0CC10: .4byte 0x000004AA
_08F0CC14:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08F0CC28
	ldr r0, _08F0CC24 @ =0x000004AB
	bl DrawTextWithIdNoWait
	b _08F0CC7E
	.align 2, 0
_08F0CC24: .4byte 0x000004AB
_08F0CC28:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08F0CC3C
	ldr r0, _08F0CC38 @ =0x000004AC
	bl DrawTextWithIdNoWait
	b _08F0CC7E
	.align 2, 0
_08F0CC38: .4byte 0x000004AC
_08F0CC3C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08F0CC50
	ldr r0, _08F0CC4C @ =0x000004AD
	bl DrawTextWithIdNoWait
	b _08F0CC7E
	.align 2, 0
_08F0CC4C: .4byte 0x000004AD
_08F0CC50:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08F0CC64
	ldr r0, _08F0CC60 @ =0x000004AE
	bl DrawTextWithIdNoWait
	b _08F0CC7E
	.align 2, 0
_08F0CC60: .4byte 0x000004AE
_08F0CC64:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08F0CC78
	ldr r0, _08F0CC74 @ =0x000004AF
	bl DrawTextWithIdNoWait
	b _08F0CC7E
	.align 2, 0
_08F0CC74: .4byte 0x000004AF
_08F0CC78:
	movs r0, #6
	bl DrawSpaceTiles
_08F0CC7E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SetLineMaximums
SetLineMaximums: @ 0x08F0CC84
	ldr r2, _08F0CC90 @ =gTextMaxCharsPerLine
	strb r0, [r2]
	ldr r0, _08F0CC94 @ =gTextMaxLines
	strb r1, [r0]
	bx lr
	.align 2, 0
_08F0CC90: .4byte gTextMaxCharsPerLine
_08F0CC94: .4byte gTextMaxLines

	thumb_func_start HandleSelectMenuInput
HandleSelectMenuInput: @ 0x08F0CC98
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
	bl PlaySfxById1
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldrh r4, [r4]
	orrs r4, r0
	mov sl, r4
	b _08F0CEAC
_08F0CCDE:
	movs r0, #5
	bl PlaySfxById1
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
	bl PlaySfxById1
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

	thumb_func_start sub_8F0CF0C
sub_8F0CF0C: @ 0x08F0CF0C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	ldr r0, _08F0CF34 @ =gUnknown_030034D0
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0CF38
	ldrb r0, [r4, #3]
	cmp r0, r2
	beq _08F0CF68
	movs r0, #0
	b _08F0CF76
	.align 2, 0
_08F0CF34: .4byte gUnknown_030034D0
_08F0CF38:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08F0CF50
	str r6, [sp]
	adds r0, r3, #0
	movs r1, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8F0D044
	b _08F0CF76
_08F0CF50:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0CF68
	str r6, [sp]
	adds r0, r3, #0
	adds r1, r2, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8F0D044
	b _08F0CF76
_08F0CF68:
	str r6, [sp]
	adds r0, r3, #0
	adds r1, r2, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8F0CF80
_08F0CF76:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F0CF80
sub_8F0CF80: @ 0x08F0CF80
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r6, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	ldrb r0, [r4, #3]
	subs r1, r0, r1
	cmp r1, #0
	bge _08F0CF9A
	rsbs r1, r1, #0
_08F0CF9A:
	ldr r0, [r6]
	cmp r1, r0
	bgt _08F0CFC6
	cmp r1, r0
	bge _08F0CFAC
	movs r2, #1
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r3]
_08F0CFAC:
	str r1, [r6]
	ldrb r4, [r4, #2]
	subs r1, r4, r5
	cmp r1, #0
	bge _08F0CFB8
	rsbs r1, r1, #0
_08F0CFB8:
	ldr r0, [r3]
	cmp r1, r0
	bgt _08F0CFC6
	cmp r1, r0
	bge _08F0CFC4
	movs r2, #1
_08F0CFC4:
	str r1, [r3]
_08F0CFC6:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F0CFD0
sub_8F0CFD0: @ 0x08F0CFD0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r0, _08F0CFF8 @ =gUnknown_030034D0
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0CFFC
	ldrb r0, [r4, #2]
	cmp r0, r2
	beq _08F0D02C
	movs r0, #0
	b _08F0D03A
	.align 2, 0
_08F0CFF8: .4byte gUnknown_030034D0
_08F0CFFC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08F0D014
	str r6, [sp]
	movs r0, #0
	adds r1, r3, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8F0CF80
	b _08F0D03A
_08F0D014:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0D02C
	str r6, [sp]
	adds r0, r2, #0
	adds r1, r3, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8F0CF80
	b _08F0D03A
_08F0D02C:
	str r6, [sp]
	adds r0, r2, #0
	adds r1, r3, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8F0D044
_08F0D03A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F0D044
sub_8F0D044: @ 0x08F0D044
	push {r4, r5, r6, r7, lr}
	adds r4, r2, #0
	ldr r5, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r2, #0
	ldrb r7, [r4, #2]
	subs r1, r7, r0
	cmp r1, #0
	bge _08F0D05E
	rsbs r1, r1, #0
_08F0D05E:
	ldr r0, [r3]
	cmp r1, r0
	bgt _08F0D08A
	cmp r1, r0
	bge _08F0D070
	movs r2, #1
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r5]
_08F0D070:
	str r1, [r3]
	ldrb r4, [r4, #3]
	subs r1, r4, r6
	cmp r1, #0
	bge _08F0D07C
	rsbs r1, r1, #0
_08F0D07C:
	ldr r0, [r5]
	cmp r1, r0
	bgt _08F0D08A
	cmp r1, r0
	bge _08F0D088
	movs r2, #1
_08F0D088:
	str r1, [r5]
_08F0D08A:
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start M1_LoadSaveGame
M1_LoadSaveGame: @ 0x08F0D094
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	mov sb, r0
	add r6, sp, #0x38
	ldr r1, _08F0D1F4 @ =gUnknown_08F2A074
	adds r0, r6, #0
	movs r2, #0x40
	bl memcpy
	add r5, sp, #0x78
	adds r1, r5, #0
	ldr r0, _08F0D1F8 @ =gUnknown_08F2A0B4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r4, sp, #0x88
	adds r1, r4, #0
	ldr r0, _08F0D1FC @ =gUnknown_08F2A0C4
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	bl sub_8F0D510
	str r0, [sp, #0x9c]
	mov r4, sp
	adds r4, #0x94
	str r4, [sp, #0xa4]
	mov r6, sp
	adds r6, #4
	str r6, [sp, #0xa8]
	cmp r0, #0
	ble _08F0D0E2
	adds r7, r0, #0
	subs r7, #1
	str r7, [sp, #0x9c]
_08F0D0E2:
	movs r0, #0
	ldr r1, [sp, #0xa4]
	str r0, [r1]
	movs r0, #0xf
	ldr r2, [sp, #0x9c]
	ands r2, r0
	str r2, [sp, #0x9c]
_08F0D0F0:
	ldr r0, _08F0D200 @ =gUnknown_08F2713B
	bl HandleControlCodes
	movs r3, #0
	mov r8, r3
	movs r7, #0
	ldr r4, [sp, #0xa8]
	str r4, [sp, #0xa0]
	add r6, sp, #0x38
	mov sl, r6
_08F0D104:
	mov r0, r8
	mov r1, sb
	bl M1_ReadSave
	ldr r0, _08F0D204 @ =0x0000E9B0
	mov r1, sb
	ldrh r1, [r1, #2]
	cmp r1, r0
	beq _08F0D118
	b _08F0D214
_08F0D118:
	mov r1, sp
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	mov r2, r8
	lsls r6, r2, #2
	adds r5, r6, r2
	adds r4, r5, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r1, r4, #0
	bl SetTextPosition
	ldr r0, _08F0D208 @ =gUnknown_08F270CC
	bl HandleControlCodes
#ifdef JAPANESE
	movs r0, #6
#elif ENGLISH
	movs r0, #3	
#endif
	adds r1, r4, #0
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x78
	bl HandleControlCodes
	movs r0, #0xe
	adds r1, r4, #0
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x50
	ldrb r0, [r0]
	movs r1, #2
	bl DrawNumberWithMaxDigits
	adds r5, #3
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
#ifdef JAPANESE
	movs r0, #0x14
#elif ENGLISH
	movs r0, #0x17	
#endif
	adds r1, r5, #0
	bl SetTextPosition
	movs r2, #0
	ldr r0, _08F0D20C @ =gUnknown_08F662EC
	str r6, [sp, #0xac]
	adds r4, r7, #1
	mov r5, r8
	adds r5, #1
	ldrh r6, [r0]
	mov r3, sb
	ldrb r3, [r3, #0x18]
	cmp r6, r3
	bls _08F0D192
_08F0D180:
	adds r0, #4
	adds r2, #1
	cmp r2, #3
	bgt _08F0D192
	ldrh r1, [r0]
	mov r6, sb
	ldrb r6, [r6, #0x18]
	cmp r1, r6
	bhi _08F0D180
_08F0D192:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _08F0D210 @ =gUnknown_08F2711C
	adds r0, r0, r1
	bl HandleControlCodes
	ldr r0, [sp, #0x9c]
	cmp r0, r8
	bne _08F0D1AA
	ldr r1, [sp, #0xa4]
	str r7, [r1]
_08F0D1AA:
	lsls r1, r7, #2
	ldr r2, [sp, #0xa0]
	adds r1, r2, r1
	ldr r2, [sp, #0xac]
	add r2, r8
	adds r0, r2, #1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	str r0, [r1]
	adds r7, r4, #0
	lsls r1, r7, #2
	ldr r3, [sp, #0xa0]
	adds r1, r3, r1
	adds r0, r2, #2
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	str r0, [r1]
	adds r7, #1
	lsls r1, r7, #2
	adds r1, r3, r1
	adds r0, r2, #3
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	str r0, [r1]
	adds r7, #1
	lsls r1, r7, #2
	adds r1, r3, r1
	adds r2, #4
	lsls r2, r2, #2
	add r2, sl
	ldr r0, [r2]
	str r0, [r1]
	adds r7, #1
	b _08F0D25E
	.align 2, 0
_08F0D1F4: .4byte gUnknown_08F2A074
_08F0D1F8: .4byte gUnknown_08F2A0B4
_08F0D1FC: .4byte gUnknown_08F2A0C4
_08F0D200: .4byte gUnknown_08F2713B
_08F0D204: .4byte 0x0000E9B0
_08F0D208: .4byte gUnknown_08F270CC
_08F0D20C: .4byte gUnknown_08F662EC
_08F0D210: .4byte gUnknown_08F2711C
_08F0D214:
	mov r1, sp
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	mov r4, r8
	lsls r5, r4, #2
	add r5, r8
	adds r4, r5, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #1
	adds r1, r4, #0
	bl SetTextPosition
	ldr r0, _08F0D2A4 @ =gUnknown_08F27085
	bl HandleControlCodes
#ifdef JAPANESE
	movs r0, #0xb
#elif ENGLISH
	movs r0, #0x8
#endif
	adds r1, r4, #0
	bl SetTextPosition
	mov r4, r8
	adds r4, #1
	adds r0, r4, #0
	movs r1, #1
	bl DrawNumberWithMaxDigits
	lsls r1, r7, #2
	ldr r6, [sp, #0xa8]
	adds r1, r6, r1
	lsls r5, r5, #2
	add r5, sp
	adds r5, #0x38
	ldr r0, [r5]
	str r0, [r1]
	adds r7, #1
	adds r5, r4, #0
_08F0D25E:
	mov r8, r5
	cmp r5, #2
	bgt _08F0D266
	b _08F0D104
_08F0D266:
	lsls r0, r7, #2
	ldr r7, [sp, #0xa8]
	adds r0, r7, r0
	movs r1, #0
	strh r1, [r0]
	ldr r4, _08F0D2A8 @ =gUnknown_030034D0
	movs r0, #0xa0
	strb r0, [r4]
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xa4]
	bl HandleSelectMenuInput
	adds r1, r0, #0
	cmp r1, #0
	bgt _08F0D286
	b _08F0D0E2
_08F0D286:
	movs r0, #0
	strb r0, [r4]
	asrs r0, r1, #4
	mov r8, r0
	movs r0, #0xf
	ands r0, r1
	subs r0, #1
	cmp r0, #4
	bls _08F0D29A
	b _08F0D0E2
_08F0D29A:
	lsls r0, r0, #2
	ldr r1, _08F0D2AC @ =_08F0D2B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0D2A4: .4byte gUnknown_08F27085
_08F0D2A8: .4byte gUnknown_030034D0
_08F0D2AC: .4byte _08F0D2B0
_08F0D2B0: @ jump table
	.4byte _08F0D2C4 @ case 0
	.4byte _08F0D2D0 @ case 1
	.4byte _08F0D2DC @ case 2
	.4byte _08F0D384 @ case 3
	.4byte _08F0D3E0 @ case 4
_08F0D2C4:
	movs r0, #0x80
	lsls r0, r0, #8
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	b _08F0D438
_08F0D2D0:
	mov r0, r8
	subs r0, #1
	mov r1, sb
	bl M1_ReadSave
	b _08F0D438
_08F0D2DC:
	movs r2, #0
	movs r7, #0
	mov r6, r8
	subs r6, #1
	ldr r5, _08F0D37C @ =gUnknown_08F27159
	adds r4, r6, #0
	add r1, sp, #0x78
	ldr r3, [sp, #0xa8]
_08F0D2EC:
	cmp r2, r4
	beq _08F0D2F6
	ldr r0, [r1]
	stm r3!, {r0}
	adds r7, #1
_08F0D2F6:
	adds r1, #4
	adds r2, #1
	cmp r2, #2
	ble _08F0D2EC
	lsls r0, r7, #2
	ldr r2, [sp, #0xa8]
	adds r0, r2, r0
	movs r1, #0
	strh r1, [r0]
	adds r0, r5, #0
	bl HandleControlCodes
	ldr r0, [sp, #0xa8]
	movs r1, #0
	bl HandleSelectMenuInput
	adds r1, r0, #0
	cmp r1, #0
	bgt _08F0D31E
	b _08F0D0E2
_08F0D31E:
	asrs r1, r1, #4
	subs r4, r1, #1
	mov r3, sp
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0D370
	ldr r0, _08F0D380 @ =gUnknown_08F27181
	bl HandleControlCodes
	adds r0, r4, #0
	mov r1, sb
	bl M1_ReadSave
	movs r0, #7
	movs r1, #0x10
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x78
	bl HandleControlCodes
	movs r0, #0xf
	movs r1, #0x10
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x50
	ldrb r0, [r0]
	movs r1, #2
	bl DrawNumberWithMaxDigits
	movs r0, #1
	add r1, sp, #0x98
	str r0, [r1]
	add r0, sp, #0x88
	bl HandleSelectMenuInput
	cmp r0, #1
	beq _08F0D370
	b _08F0D0E2
_08F0D370:
	adds r0, r6, #0
	mov r1, sb
	bl M1_ReadSave
	b _08F0D3D2
	.align 2, 0
_08F0D37C: .4byte gUnknown_08F27159
_08F0D380: .4byte gUnknown_08F27181
_08F0D384:
	ldr r0, _08F0D3DC @ =gUnknown_08F271DC
	bl HandleControlCodes
	mov r4, r8
	subs r4, #1
	adds r0, r4, #0
	mov r1, sb
	bl M1_ReadSave
#ifdef JAPANESE
	movs r0, #7
#elif ENGLISH
	movs r0, #5 @X coordinate of the name and level number
#endif
	movs r1, #0x10
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x78
	bl HandleControlCodes
	movs r0, #0xf
	movs r1, #0x10
	bl SetTextPosition
	mov r0, sb
	adds r0, #0x50
	ldrb r0, [r0]
	movs r1, #2
	bl DrawNumberWithMaxDigits
	movs r0, #1
	add r1, sp, #0x98
	str r0, [r1]
	add r0, sp, #0x88
	bl HandleSelectMenuInput
	cmp r0, #1
	beq _08F0D3CC
	b _08F0D0E2
_08F0D3CC:
	movs r0, #0
	mov r6, sb
	strh r0, [r6, #2]
_08F0D3D2:
	mov r0, sb
	adds r1, r4, #0
	bl M1_WriteSave
	b _08F0D0E2
	.align 2, 0
_08F0D3DC: .4byte gUnknown_08F271DC
_08F0D3E0:
	mov r0, r8
	subs r0, #1
	mov r1, sb
	bl M1_ReadSave
	movs r2, #0
	ldr r0, _08F0D434 @ =gUnknown_08F662EC
	ldrh r1, [r0]
	mov r7, sb
	ldrb r7, [r7, #0x18]
	cmp r1, r7
	bls _08F0D40A
_08F0D3F8:
	adds r0, #4
	adds r2, #1
	cmp r2, #3
	bgt _08F0D40A
	ldrh r3, [r0]
	mov r1, sb
	ldrb r1, [r1, #0x18]
	cmp r3, r1
	bhi _08F0D3F8
_08F0D40A:
	subs r2, #1
	cmp r2, #0
	bge _08F0D412
	movs r2, #4
_08F0D412:
	ldr r1, _08F0D434 @ =gUnknown_08F662EC
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r2, sb
	strb r0, [r2, #0x18]
	mov r0, sb
	mov r1, r8
	bl M1_CalculateChecksumAndWriteSave
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r3, [sp, #0x9c]
	orrs r3, r0
	str r3, [sp, #0x9c]
	b _08F0D0F0
	.align 2, 0
_08F0D434: .4byte gUnknown_08F662EC
_08F0D438:
	movs r0, #0xf
	mov r4, r8
	ands r0, r4
	bl sub_8F0D574
	bl sub_8F0B040
	mov r0, r8
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start M1_CalculateChecksumAndWriteSave
M1_CalculateChecksumAndWriteSave: @ 0x08F0D458
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r7, r1, #0
	movs r4, #0
	movs r2, #2
	ldr r6, _08F0D48C @ =0x000002FF
	movs r5, #7
_08F0D466:
	adds r1, r3, r2
	adds r0, r2, #0
	ands r0, r5
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	adds r4, r4, r0
	adds r2, #1
	cmp r2, r6
	ble _08F0D466
	strh r4, [r3]
	subs r1, r7, #1
	adds r0, r3, #0
	bl M1_WriteSave
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0D48C: .4byte 0x000002FF

	thumb_func_start M1_ValidateChecksum
M1_ValidateChecksum: @ 0x08F0D490
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r4, #0
	movs r2, #2
	ldr r6, _08F0D4C0 @ =0x000002FF
	movs r5, #7
_08F0D49C:
	adds r1, r3, r2
	adds r0, r2, #0
	ands r0, r5
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	adds r4, r4, r0
	adds r2, #1
	cmp r2, r6
	ble _08F0D49C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r3]
	cmp r3, r0
	beq _08F0D4C4
	movs r0, #1
	b _08F0D4C6
	.align 2, 0
_08F0D4C0: .4byte 0x000002FF
_08F0D4C4:
	movs r0, #0
_08F0D4C6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start M1_ReadSave
M1_ReadSave: @ 0x08F0D4CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	cmp r4, #5
	bgt _08F0D504
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #8
	movs r1, #0xe0
	lsls r1, r1, #0x14
	adds r5, r0, r1
_08F0D4E2:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xc0
	lsls r2, r2, #2
#ifdef NDS_VERSION
	bl ReadSram_DS
#else
	bl ReadSram
#endif
	adds r0, r6, #0
	bl M1_ValidateChecksum
	cmp r0, #0
	beq _08F0D508
	movs r0, #0x90
	lsls r0, r0, #4
	adds r5, r5, r0
	adds r4, #3
	cmp r4, #5
	ble _08F0D4E2
_08F0D504:
	movs r0, #0
	strh r0, [r6, #2]
_08F0D508:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F0D510
sub_8F0D510: @ 0x08F0D510
	push {lr}
	sub sp, #4
	ldr r0, _08F0D530 @ =0x0E001200
	mov r1, sp
	movs r2, #4
#ifdef NDS_VERSION
	bl ReadSram_DS
#else
	bl ReadSram
#endif
	mov r1, sp
	ldr r0, _08F0D534 @ =0x0000E9B0
	ldrh r1, [r1]
	cmp r1, r0
	bne _08F0D538
	mov r0, sp
	ldrh r0, [r0, #2]
	b _08F0D53A
	.align 2, 0
_08F0D530: .4byte 0x0E001200
_08F0D534: .4byte 0x0000E9B0
_08F0D538:
	movs r0, #0
_08F0D53A:
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start M1_WriteSave
M1_WriteSave: @ 0x08F0D540
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r4, #5
	bgt _08F0D56E
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #8
	movs r1, #0xe0
	lsls r1, r1, #0x14
	adds r5, r0, r1
_08F0D556:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xc0
	lsls r2, r2, #2
#ifdef NDS_VERSION
	bl WriteSramEx_DS
#else
	bl WriteSramEx
#endif
	movs r0, #0x90
	lsls r0, r0, #4
	adds r5, r5, r0
	adds r4, #3
	cmp r4, #5
	ble _08F0D556
_08F0D56E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8F0D574
sub_8F0D574: @ 0x08F0D574
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r3, _08F0D594 @ =0x0000E9B0
	adds r1, r3, #0
	strh r1, [r2]
	mov r1, sp
	strh r0, [r1, #2]
	ldr r1, _08F0D598 @ =0x0E001200
	mov r0, sp
	movs r2, #4
#ifdef NDS_VERSION
	bl WriteSramEx_DS
#else
	bl WriteSramEx
#endif
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08F0D594: .4byte 0x0000E9B0
_08F0D598: .4byte 0x0E001200

	thumb_func_start sub_8F0D59C
sub_8F0D59C: @ 0x08F0D59C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r4, _08F0D924 @ =0xFFFFFCDC
	add sp, r4
	ldr r1, _08F0D928 @ =gUnknown_08F2A0D0
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	add r0, sp, #0x10
	mov sl, r0
	ldr r1, _08F0D92C @ =gUnknown_08F2A0E0
	movs r2, #0x10
	bl memcpy
	add r6, sp, #0x20
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xc0
	bl memset
	movs r1, #0
	mov r8, r1
	movs r0, #0xe3
	strb r0, [r6, #0xd]
	movs r0, #0xe4
	strb r0, [r6, #0xe]
	movs r0, #0xe5
	strb r0, [r6, #0xf]
	movs r0, #0xe6
	strb r0, [r6, #0x10]
	movs r0, #0xe7
	strb r0, [r6, #0x11]
	movs r0, #0xe8
	strb r0, [r6, #0x12]
	mov r0, sp
	adds r0, #0x6d
	movs r4, #0xcc
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	add r0, sp, #0x70
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	add r0, sp, #0x74
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	add r0, sp, #0x78
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	add r0, sp, #0x7c
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	mov r1, sp
	adds r1, #0xad
	movs r0, #0xc8
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xc9
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xca
	strb r0, [r1]
	add r1, sp, #0xb0
	movs r0, #0xcb
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xcd
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xce
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xcf
	strb r0, [r1]
	mov r0, sp
	adds r0, #0xcd
	movs r2, #0xd8
	mov sb, r2
	mov r1, sb
	strb r1, [r0]
	mov r1, sp
	adds r1, #0xd3
	movs r0, #0xdf
	strb r0, [r1]
	add r5, sp, #0xe0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc0
	bl memset
	movs r0, #0xf3
	strb r0, [r5, #8]
	movs r0, #0xf4
	strb r0, [r5, #9]
	movs r0, #0xf5
	strb r0, [r5, #0xa]
	movs r0, #0xf6
	strb r0, [r5, #0xb]
	movs r0, #0xf7
	strb r0, [r5, #0xc]
	movs r0, #0xf8
	strb r0, [r5, #0xd]
	movs r0, #0xf9
	strb r0, [r5, #0xe]
	movs r0, #0xfa
	strb r0, [r5, #0xf]
	movs r0, #0xfb
	strb r0, [r5, #0x10]
	movs r0, #0xfc
	strb r0, [r5, #0x11]
	movs r0, #0xfd
	strb r0, [r5, #0x12]
	movs r0, #0xfe
	strb r0, [r5, #0x13]
	movs r0, #0xff
	strb r0, [r5, #0x14]
	add r0, sp, #0x120
	strb r4, [r0]
	ldr r0, _08F0D930 @ =0x00000121
	add r0, sp
	strb r4, [r0]
	movs r0, #0x91
	lsls r0, r0, #1
	add r0, sp
	strb r4, [r0]
	ldr r0, _08F0D934 @ =0x00000123
	add r0, sp
	strb r4, [r0]
	add r0, sp, #0x124
	strb r4, [r0]
	ldr r0, _08F0D938 @ =0x00000125
	add r0, sp
	strb r4, [r0]
	movs r0, #0x93
	lsls r0, r0, #1
	add r0, sp
	strb r4, [r0]
	ldr r0, _08F0D93C @ =0x00000127
	add r0, sp
	strb r4, [r0]
	add r0, sp, #0x128
	strb r4, [r0]
	ldr r0, _08F0D940 @ =0x00000129
	add r0, sp
	strb r4, [r0]
	movs r0, #0x95
	lsls r0, r0, #1
	add r0, sp
	strb r4, [r0]
	ldr r0, _08F0D944 @ =0x0000012B
	add r0, sp
	strb r4, [r0]
	add r0, sp, #0x12c
	strb r4, [r0]
	ldr r0, _08F0D948 @ =0x0000012D
	add r0, sp
	strb r4, [r0]
	movs r0, #0x97
	lsls r0, r0, #1
	add r0, sp
	strb r4, [r0]
	ldr r0, _08F0D94C @ =0x0000012F
	add r0, sp
	strb r4, [r0]
	add r0, sp, #0x130
	strb r4, [r0]
	ldr r0, _08F0D950 @ =0x00000131
	add r0, sp
	strb r4, [r0]
	movs r0, #0x99
	lsls r0, r0, #1
	add r0, sp
	strb r4, [r0]
	ldr r0, _08F0D954 @ =0x00000133
	add r0, sp
	strb r4, [r0]
	add r0, sp, #0x134
	strb r4, [r0]
	add r1, sp, #0x170
	movs r0, #0xd9
	strb r0, [r1]
	ldr r1, _08F0D958 @ =0x00000171
	add r1, sp
	movs r0, #0xda
	strb r0, [r1]
	movs r1, #0xb9
	lsls r1, r1, #1
	add r1, sp
	movs r0, #0xdb
	strb r0, [r1]
	ldr r1, _08F0D95C @ =0x00000173
	add r1, sp
	movs r0, #0xdc
	strb r0, [r1]
	add r1, sp, #0x174
	movs r0, #0xdd
	strb r0, [r1]
	add r0, sp, #0x190
	mov r2, sb
	strb r2, [r0]
	add r0, sp, #0x1a0
	ldr r1, _08F0D960 @ =gUnknown_08F2A0F0
	movs r2, #0xc0
	lsls r2, r2, #1
	bl memcpy
	movs r0, #0x16
	bl ChangeBgMusic
	ldr r1, _08F0D964 @ =0x04000008
	movs r0, #0xb
	strh r0, [r1]
	add r0, sp, #0x320
	mov r1, r8
	str r1, [r0]
	ldr r1, _08F0D968 @ =0x040000D4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0D96C @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F0D970 @ =gUnknown_08F6371C
	ldr r1, _08F0D974 @ =0x06008000
	movs r2, #0x30
	bl BitUnpack
	ldr r0, _08F0D978 @ =gUnknown_08F62F1C
	ldr r1, _08F0D97C @ =0x06009000
	movs r2, #0x80
	bl BitUnpack
	ldr r0, _08F0D980 @ =gUnknown_08F63A1C
	ldr r1, _08F0D984 @ =0x06010000
	movs r2, #0x80
	bl BitUnpack
	movs r1, #0xa0
	lsls r1, r1, #0x13
	mov r0, sp
	bl LoadPalette
	ldr r1, _08F0D988 @ =0x05000200
	mov r0, sl
	bl LoadPalette
	ldr r0, _08F0D98C @ =0x04000010
	mov r2, r8
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #0x42
	strh r2, [r0]
	ldr r1, _08F0D990 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	subs r1, #0x50
	movs r2, #0x88
	lsls r2, r2, #5
#ifdef NDS_VERSION
	@tilesets is now 0x10000 later in vram on the NDS
	movs r0, #0x1       @@NDS
	lsls r0, r0, #16    @@NDS
    orrs r2, r2, r0     @@NDS
	adds r0, r2, #0
	str  r0, [r1]
#else
	adds r0, r2, #0
	strh r0, [r1]
#endif
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r2, r0, #0
	ldr r1, _08F0D994 @ =0x060001C0
_08F0D7E6:
	adds r0, r6, r4
	ldrb r0, [r0]
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, #0xbf
	ble _08F0D7E6
	movs r4, #0x10
	ldr r6, _08F0D998 @ =0x04000054
_08F0D7FA:
	strh r4, [r6]
	movs r0, #2
	bl sub_8F0DA58
	cmp r0, #0
	bne _08F0D856
	subs r4, #1
	cmp r4, #0
	bge _08F0D7FA
	ldr r1, _08F0D99C @ =MusicPlayer0Info
	ldr r0, [r1, #0xc]
	cmp r0, #0x83
	bhi _08F0D826
	adds r4, r1, #0
_08F0D816:
	movs r0, #1
	bl sub_8F0DA58
	cmp r0, #0
	bne _08F0D856
	ldr r0, [r4, #0xc]
	cmp r0, #0x83
	bls _08F0D816
_08F0D826:
	movs r4, #0
	ldr r6, _08F0D998 @ =0x04000054
_08F0D82A:
	strh r4, [r6]
	movs r0, #2
	bl sub_8F0DA58
	cmp r0, #0
	bne _08F0D856
	adds r4, #1
	cmp r4, #0x10
	ble _08F0D82A
	ldr r1, _08F0D99C @ =MusicPlayer0Info
	ldr r0, [r1, #0xc]
	cmp r0, #0xbf
	bhi _08F0D856
	adds r4, r1, #0
_08F0D846:
	movs r0, #1
	bl sub_8F0DA58
	cmp r0, #0
	bne _08F0D856
	ldr r0, [r4, #0xc]
	cmp r0, #0xbf
	bls _08F0D846
_08F0D856:
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #6
	adds r2, r1, #0
	ldr r1, _08F0D994 @ =0x060001C0
_08F0D860:
	adds r0, r5, r4
	ldrb r0, [r0]
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, #0xbf
	ble _08F0D860
	movs r4, #0x10
	ldr r5, _08F0D998 @ =0x04000054
_08F0D874:
	strh r4, [r5]
	movs r0, #2
	bl sub_8F0DA58
	cmp r0, #0
	bne _08F0D8D8
	subs r4, #1
	cmp r4, #0
	bge _08F0D874
	ldr r2, _08F0D99C @ =MusicPlayer0Info
	ldr r0, [r2, #0xc]
	ldr r1, _08F0D9A0 @ =0x00000143
	cmp r0, r1
	bhi _08F0D8A4
	adds r5, r2, #0
	adds r4, r1, #0
_08F0D894:
	movs r0, #1
	bl sub_8F0DA58
	cmp r0, #0
	bne _08F0D8D8
	ldr r0, [r5, #0xc]
	cmp r0, r4
	bls _08F0D894
_08F0D8A4:
	movs r4, #0
	ldr r5, _08F0D998 @ =0x04000054
_08F0D8A8:
	strh r4, [r5]
	movs r0, #2
	bl sub_8F0DA58
	cmp r0, #0
	bne _08F0D8D8
	adds r4, #1
	cmp r4, #0x10
	ble _08F0D8A8
	ldr r2, _08F0D99C @ =MusicPlayer0Info
	ldr r0, [r2, #0xc]
	ldr r1, _08F0D9A4 @ =0x0000017F
	cmp r0, r1
	bhi _08F0D8D8
	adds r5, r2, #0
	adds r4, r1, #0
_08F0D8C8:
	movs r0, #1
	bl sub_8F0DA58
	cmp r0, #0
	bne _08F0D8D8
	ldr r0, [r5, #0xc]
	cmp r0, r4
	bls _08F0D8C8
_08F0D8D8:
	movs r4, #0
	add r1, sp, #0x1a0
	ldr r2, _08F0D9A8 @ =0x06000180
	movs r6, #0x84
	lsls r6, r6, #5
	adds r5, r6, #0
	ldr r3, _08F0D9A4 @ =0x0000017F
_08F0D8E6:
	ldrb r0, [r1]
	strh r0, [r2]
	cmp r4, #0x7f
	bgt _08F0D900
	ldrb r6, [r1]
	lsls r0, r6, #0x18
	cmp r0, #0
	beq _08F0D900
	cmp r0, #0
	blt _08F0D900
	ldrh r0, [r2]
	adds r0, r0, r5
	strh r0, [r2]
_08F0D900:
	adds r1, #1
	adds r2, #2
	adds r4, #1
	cmp r4, r3
	ble _08F0D8E6
	movs r4, #0x10
	ldr r5, _08F0D998 @ =0x04000054
_08F0D90E:
	strh r4, [r5]
	movs r0, #2
	bl DelayByAmount
	subs r4, #1
	cmp r4, #0
	bge _08F0D90E
	movs r6, #0
	movs r4, #0
	b _08F0D9AC
	.align 2, 0
_08F0D924: .4byte 0xFFFFFCDC
_08F0D928: .4byte gUnknown_08F2A0D0
_08F0D92C: .4byte gUnknown_08F2A0E0
_08F0D930: .4byte 0x00000121
_08F0D934: .4byte 0x00000123
_08F0D938: .4byte 0x00000125
_08F0D93C: .4byte 0x00000127
_08F0D940: .4byte 0x00000129
_08F0D944: .4byte 0x0000012B
_08F0D948: .4byte 0x0000012D
_08F0D94C: .4byte 0x0000012F
_08F0D950: .4byte 0x00000131
_08F0D954: .4byte 0x00000133
_08F0D958: .4byte 0x00000171
_08F0D95C: .4byte 0x00000173
_08F0D960: .4byte gUnknown_08F2A0F0
_08F0D964: .4byte 0x04000008
_08F0D968: .4byte 0x040000D4
_08F0D96C: .4byte 0x85000200
_08F0D970: .4byte gUnknown_08F6371C
_08F0D974: .4byte 0x06008000
_08F0D978: .4byte gUnknown_08F62F1C
_08F0D97C: .4byte 0x06009000
_08F0D980: .4byte gUnknown_08F63A1C
_08F0D984: .4byte 0x06000000+OAM_VRAM_OFFSET
_08F0D988: .4byte 0x05000200
_08F0D98C: .4byte 0x04000010
_08F0D990: .4byte 0x04000050
_08F0D994: .4byte 0x060001C0
_08F0D998: .4byte 0x04000054
_08F0D99C: .4byte MusicPlayer0Info
_08F0D9A0: .4byte 0x00000143
_08F0D9A4: .4byte 0x0000017F
_08F0D9A8: .4byte 0x06000180
_08F0D9AC:
	ldr r5, _08F0D9F8 @ =0x040000D4
_08F0D9AE:
	cmp r4, #0x53
	ble _08F0D9B4
	movs r4, #0
_08F0D9B4:
	bl sub_8F016EC
	adds r0, r4, #0
	movs r1, #0xc
	bl __divsi3
	lsls r0, r0, #0x12
	ldr r1, _08F0D9FC @ =0x96B00000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r1, #0x10
	movs r2, #0x50
	movs r3, #0x30
	bl sub_8F01700
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r0, _08F0DA00 @ =gUnknown_03002450
	str r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r5, #4]
	ldr r0, _08F0DA04 @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	bl UpdateInput
	cmp r6, #0x3b
	bgt _08F0DA08
	adds r6, #1
	b _08F0DA14
	.align 2, 0
_08F0D9F8: .4byte 0x040000D4
_08F0D9FC: .4byte 0x96B00000
_08F0DA00: .4byte gUnknown_03002450
_08F0DA04: .4byte 0x84000100
_08F0DA08:
	ldr r1, _08F0DA18 @ =gKeysDown
	movs r0, #9
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F0DA1C
_08F0DA14:
	adds r4, #1
	b _08F0D9AE
	.align 2, 0
_08F0DA18: .4byte gKeysDown
_08F0DA1C:
	bl sub_8F019B8
	movs r4, #0
	ldr r5, _08F0DA54 @ =0x04000054
_08F0DA24:
	strh r4, [r5]
	movs r0, #2
	bl DelayByAmount
	adds r4, #1
	cmp r4, #0x10
	ble _08F0DA24
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x50
	strh r1, [r0]
	movs r3, #0xc9
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F0DA54: .4byte 0x04000054

	thumb_func_start sub_8F0DA58
sub_8F0DA58: @ 0x08F0DA58
	push {r4, lr}
	b _08F0DA7A
_08F0DA5C:
	bl sub_8F040E0
	bl UpdateInput
	ldr r1, _08F0DA74 @ =gKeysDown
	movs r0, #9
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F0DA78
	movs r0, #1
	b _08F0DA84
	.align 2, 0
_08F0DA74: .4byte gKeysDown
_08F0DA78:
	subs r0, r4, #1
_08F0DA7A:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08F0DA5C
	movs r0, #0
_08F0DA84:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start BeginNewGame
BeginNewGame: @ 0x08F0DA8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r1, sp
	ldr r0, _08F0DBB8 @ =gUnknown_08F2A270
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
_08F0DAA0:
	ldr r0, _08F0DBBC @ =gUnknown_08F273CA
	ldr r1, _08F0DBC0 @ =gUnknown_03003208
	movs r3, #0x80
	lsls r3, r3, #8
	movs r2, #8
	bl EnterName
	cmp r0, #0
	bne _08F0DAA0
_08F0DAB2:
	ldr r0, _08F0DBC4 @ =gUnknown_08F273D7
	ldr r1, _08F0DBC8 @ =gUnknown_03003248
	ldr r3, _08F0DBCC @ =0x00008020
	movs r2, #8
	bl EnterName
	cmp r0, #0
	bne _08F0DAA0
_08F0DAC2:
	ldr r0, _08F0DBD0 @ =gUnknown_08F273E4
	ldr r1, _08F0DBD4 @ =gUnknown_03003288
	ldr r3, _08F0DBD8 @ =0x00008040
	movs r2, #8
	bl EnterName
	cmp r0, #0
	bne _08F0DAB2
_08F0DAD2:
	ldr r0, _08F0DBDC @ =gUnknown_08F273F1
	ldr r4, _08F0DBE0 @ =gUnknown_030032C8
	ldr r3, _08F0DBE4 @ =0x00008060
	adds r1, r4, #0
	movs r2, #8
	bl EnterName
	cmp r0, #0
	bne _08F0DAC2
	ldr r0, _08F0DBE8 @ =gUnknown_08F273FE
	ldr r1, _08F0DBEC @ =0x00000151
	adds r5, r4, r1
	adds r1, r5, #0
	movs r2, #8
	movs r3, #0
	bl EnterName
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _08F0DAD2
	bl sub_8F0B040
	movs r0, #0xf
	movs r1, #4
	bl SetTextPosition
	adds r0, r4, #0
	subs r0, #0xc0
	bl HandleControlCodes
	movs r0, #0xf
	movs r1, #6
	bl SetTextPosition
	adds r0, r4, #0
	subs r0, #0x80
	bl HandleControlCodes
	movs r0, #0xf
	movs r1, #8
	bl SetTextPosition
	adds r0, r4, #0
	subs r0, #0x40
	bl HandleControlCodes
	movs r0, #0xf
	movs r1, #0xa
	bl SetTextPosition
	adds r0, r4, #0
	bl HandleControlCodes
#ifdef JAPANESE
	movs r0, #8
#elif ENGLISH
	movs r0, #7 @X coordinate of "Fav.Food\0"
#endif
	movs r1, #0xc
	bl SetTextPosition
	ldr r0, _08F0DBF0 @ =gUnknown_08F27459
	bl HandleControlCodes
	adds r0, r5, #0
	bl HandleControlCodes
	bl sub_8F016EC
	ldr r0, _08F0DBF4 @ =0x00008010
	movs r3, #4
	rsbs r3, r3, #0
	movs r1, #4
	movs r2, #0x48
	bl sub_8F01700
	ldr r0, _08F0DBF8 @ =0x00008030
	movs r1, #4
	movs r2, #0x48
	movs r3, #0xc
	bl sub_8F01700
	ldr r0, _08F0DBFC @ =0x00008050
	movs r1, #4
	movs r2, #0x48
	movs r3, #0x1c
	bl sub_8F01700
	ldr r0, _08F0DC00 @ =0x00008070
	movs r1, #4
	movs r2, #0x48
	movs r3, #0x2c
	bl sub_8F01700
	bl sub_8F0191C
	ldr r1, _08F0DC04 @ =0x040000D4
	ldr r0, _08F0DC08 @ =gUnknown_03002450
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0DC0C @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F0DC10 @ =gUnknown_08F2741D
	bl HandleControlCodes
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	adds r7, r0, #0
	cmp r7, #1
	beq _08F0DC14
	bl sub_8F0B040
	b _08F0DAA0
	.align 2, 0
_08F0DBB8: .4byte gUnknown_08F2A270
_08F0DBBC: .4byte gUnknown_08F273CA
_08F0DBC0: .4byte gUnknown_03003208
_08F0DBC4: .4byte gUnknown_08F273D7
_08F0DBC8: .4byte gUnknown_03003248
_08F0DBCC: .4byte 0x00008020
_08F0DBD0: .4byte gUnknown_08F273E4
_08F0DBD4: .4byte gUnknown_03003288
_08F0DBD8: .4byte 0x00008040
_08F0DBDC: .4byte gUnknown_08F273F1
_08F0DBE0: .4byte gUnknown_030032C8
_08F0DBE4: .4byte 0x00008060
_08F0DBE8: .4byte gUnknown_08F273FE
_08F0DBEC: .4byte 0x00000151
_08F0DBF0: .4byte gUnknown_08F27459
_08F0DBF4: .4byte 0x00008010
_08F0DBF8: .4byte 0x00008030
_08F0DBFC: .4byte 0x00008050
_08F0DC00: .4byte 0x00008070
_08F0DC04: .4byte 0x040000D4
_08F0DC08: .4byte gUnknown_03002450
_08F0DC0C: .4byte 0x84000100
_08F0DC10: .4byte gUnknown_08F2741D
_08F0DC14:
	bl sub_8F0DCD0
	movs r0, #0x3c
	bl DelayByAmount
	movs r0, #4
	ldr r2, _08F0DCB0 @ =0x04000012
	strh r0, [r2]
	ldr r3, _08F0DCB4 @ =gTextDelayAfterWriteCharacter
	ldrb r3, [r3]
	mov sb, r3
	ldr r5, _08F0DCB8 @ =gTextDelayAfterWritePeriod
	ldrb r6, [r5]
	ldr r4, _08F0DCBC @ =gUnknown_030034E0
	ldrb r0, [r4]
	mov sl, r0
	movs r0, #5
	ldr r1, _08F0DCB4 @ =gTextDelayAfterWriteCharacter
	strb r0, [r1]
	movs r0, #0x1e
	strb r0, [r5]
	strb r0, [r4]
#ifdef JAPANESE
	movs r0, #2
	movs r1, #1
#elif ENGLISH
	@starting X,Y positions for this intro text "In the early 1900s..."
	movs r0, #0
	movs r1, #1
#endif
	bl SetTextPosition
	movs r0, #0x20
	movs r1, #0x14
	bl SetLineMaximums
	ldr r2, _08F0DCC0 @ =gTextDelayAfterWriteCharacterEnabled
	mov r8, r2
	strb r7, [r2]
	ldr r0, _08F0DCC4 @ =gUnknown_08F274EA
	bl HandleControlCodes
	bl WaitForActionButtonPress
	ldr r0, _08F0DCC8 @ =MusicPlayer0Info
	movs r1, #5
	bl m4aMPlayFadeOut
	bl sub_8F0DCD0
	mov r3, sp
	ldrh r0, [r3, #0xc]
	ldr r3, _08F0DCB0 @ =0x04000012
	strh r0, [r3]
#ifdef JAPANESE
	movs r0, #4
	movs r1, #8
#elif ENGLISH
	@starting X,Y positions for this intro text "1988, outside the..."
	movs r0, #3
	movs r1, #8
#endif
	bl SetTextPosition
	mov r1, r8
	strb r7, [r1]
	ldr r0, _08F0DCCC @ =gUnknown_08F275D0
	bl HandleControlCodes
	mov r3, sb
	ldr r2, _08F0DCB4 @ =gTextDelayAfterWriteCharacter
	strb r3, [r2]
	strb r6, [r5]
	mov r0, sl
	strb r0, [r4]
	movs r0, #0x3c
	bl DelayByAmount
	bl WaitForActionButtonPress
	bl sub_8F0DCD0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0DCB0: .4byte 0x04000012
_08F0DCB4: .4byte gTextDelayAfterWriteCharacter
_08F0DCB8: .4byte gTextDelayAfterWritePeriod
_08F0DCBC: .4byte gUnknown_030034E0
_08F0DCC0: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0DCC4: .4byte gUnknown_08F274EA
_08F0DCC8: .4byte MusicPlayer0Info
_08F0DCCC: .4byte gUnknown_08F275D0

	thumb_func_start sub_8F0DCD0
sub_8F0DCD0: @ 0x08F0DCD0
	push {r4, r5, lr}
	ldr r2, _08F0DD04 @ =0x04000054
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08F0DD08 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	movs r4, #0
	adds r5, r2, #0
_08F0DCE2:
	strh r4, [r5]
	movs r0, #2
	bl DelayByAmount
	adds r4, #1
	cmp r4, #0x10
	ble _08F0DCE2
	bl sub_8F0B040
	bl sub_8F019B8
	ldr r1, _08F0DD08 @ =0x04000050
	movs r0, #0
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0DD04: .4byte 0x04000054
_08F0DD08: .4byte 0x04000050

	thumb_func_start EnterName
EnterName: @ 0x08F0DD0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08F0DE44 @ =0xFFFFFCB0
	add sp, r4
	str r0, [sp, #0x330]
	str r1, [sp, #0x334]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x338]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x33c]
	ldr r1, _08F0DE48 @ =gUnknown_08F2A27C
	movs r2, #0xc9
	lsls r2, r2, #2
	add r0, sp, #4
	bl memcpy
_08F0DD36:
	movs r4, #0
	ldr r0, [sp, #0x338]
	subs r0, #1
	str r0, [sp, #0x348]
	ldr r3, _08F0DE4C @ =gUnknown_08F27237
	cmp r4, r0
	bge _08F0DD66
	ldr r1, [sp, #0x334]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0DD66
	ldr r1, [sp, #0x348]
_08F0DD4E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bhi _08F0DD66
	cmp r4, r1
	bge _08F0DD66
	ldr r2, [sp, #0x334]
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0DD4E
_08F0DD66:
	adds r5, r4, #0
	cmp r5, #5
	bhi _08F0DD88
	ldr r1, [sp, #0x348]
	cmp r5, r1
	bge _08F0DD88
#ifdef JAPANESE
	movs r2, #0xdf
#elif ENGLISH
	movs r2, #0xfc @change the question marks when typing a name to dots
#endif
_08F0DD74:
	ldr r6, [sp, #0x334]
	adds r0, r6, r5
	strb r2, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bhi _08F0DD88
	cmp r5, r1
	blt _08F0DD74
_08F0DD88:
	ldr r0, [sp, #0x334]
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
	cmp r4, #5
	bhi _08F0DD9A
	ldr r1, [sp, #0x348]
	cmp r4, r1
	blt _08F0DDA0
_08F0DD9A:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08F0DDA0:
	adds r0, r3, #0
	bl HandleControlCodes
	movs r0, #5
#ifdef JAPANESE
	movs r1, #3
#elif ENGLISH
	movs r1, #2 @move desc. text up one row
#endif
	bl SetTextPosition
	ldr r0, [sp, #0x330]
	bl HandleControlCodes
#ifdef JAPANESE
	movs r0, #0x15
#elif ENGLISH
	movs r0, #0x05 @move name to be below the text
#endif
	movs r1, #3
	bl SetTextPosition
	ldr r0, [sp, #0x334]
	bl HandleControlCodes
	ldr r5, _08F0DE50 @ =gUnknown_030007B8
	ldrh r6, [r5]
	movs r0, #0
	strh r0, [r5]
	bl sub_8F016EC
	ldr r2, [sp, #0x33c]
	cmp r2, #0
	beq _08F0DDEA
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #4
	rsbs r2, r2, #0
#ifdef JAPANESE
	movs r3, #0xc
#elif ENGLISH
	movs r3, #0x10 @move the naming screen sprites up a few pixels
#endif
	rsbs r3, r3, #0
	movs r1, #4
	bl sub_8F01700
_08F0DDEA:
	bl sub_8F0191C
	ldr r1, _08F0DE54 @ =0x040000D4
	ldr r0, _08F0DE58 @ =gUnknown_03002450
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0DE5C @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	strh r6, [r5]
	movs r6, #0
	mov sl, r6
	add r0, sp, #4
	ldrb r0, [r0, #2]
	mov r8, r0
	add r0, sp, #4
	ldrb r7, [r0, #3]
	adds r5, r4, #0
	ldr r1, _08F0DE60 @ =gUnknown_030034D0
	movs r0, #0x80
	strb r0, [r1]
	mov sb, r6
	movs r0, #0xcb
	lsls r0, r0, #2
	add r0, sp
	str r0, [sp, #0x344]
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0x340]
_08F0DE28:
	mov r0, r8
	adds r1, r7, #0
	bl SetTextPosition
	movs r0, #8
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _08F0DE68
	ldr r0, _08F0DE64 @ =0x00008050
	bl WriteCharacterToTilemap
	b _08F0DE76
	.align 2, 0
_08F0DE44: .4byte 0xFFFFFCB0
_08F0DE48: .4byte gUnknown_08F2A27C
_08F0DE4C: .4byte gUnknown_08F27237
_08F0DE50: .4byte gUnknown_030007B8
_08F0DE54: .4byte 0x040000D4
_08F0DE58: .4byte gUnknown_03002450
_08F0DE5C: .4byte 0x84000100
_08F0DE60: .4byte gUnknown_030034D0
_08F0DE64: .4byte 0x00008050
_08F0DE68:
	mov r4, sl
	lsls r0, r4, #2
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	bl WriteCharacterToTilemap
_08F0DE76:
	adds r4, r5, #0
#ifdef JAPANESE
	adds r4, #0x15
#elif ENGLISH
	adds r4, #0x05 @move name to be below the text
#endif
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl SetTextPosition
	movs r0, #8
	mov r6, sb
	ands r0, r6
	cmp r0, #0
	beq _08F0DE9C
	ldr r0, _08F0DE98 @ =0x00008050
	bl WriteCharacterToTilemap
	b _08F0DEA6
	.align 2, 0
_08F0DE98: .4byte 0x00008050
_08F0DE9C:
	ldr r1, [sp, #0x334]
	adds r0, r1, r5
	ldrb r0, [r0]
	bl WriteCharacterToTilemap
_08F0DEA6:
	bl UpdateBg0Tilemap
	ldr r0, _08F0DEC4 @ =gKeysDown
	ldrh r2, [r0]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08F0DEC8
	movs r0, #5
	bl PlaySfxById1
	mov r2, sl
	lsls r6, r2, #2
	b _08F0DF00
	.align 2, 0
_08F0DEC4: .4byte gKeysDown
_08F0DEC8:
	movs r0, #6
	ands r0, r2
	cmp r0, #0
	beq _08F0DED8
	movs r0, #5
	bl PlaySfxById1
	b _08F0DF38
_08F0DED8:
	ldr r6, _08F0DF34 @ =0x00000201
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _08F0DFD0
	movs r0, #5
	bl PlaySfxById1
	mov r1, sl
	lsls r0, r1, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldrh r2, [r1]
	adds r6, r0, #0
	cmp r2, #0xc0
	bne _08F0DF98
	ldrb r0, [r1, #3]
	cmp r0, #0x10
	bne _08F0DF38
_08F0DF00:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl SetTextPosition
	ldr r2, [sp, #0x334]
	adds r0, r2, r5
	ldrb r0, [r0]
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
	ldr r4, [sp, #0x348]
	cmp r5, r4
	blt _08F0DF32
	b _08F0E216
_08F0DF32:
	b _08F0E1F8
	.align 2, 0
_08F0DF34: .4byte 0x00000201
_08F0DF38:
	cmp r5, #0
	bne _08F0DF50
	ldr r6, [sp, #0x334]
	strb r5, [r6]
	ldr r0, _08F0DF4C @ =gUnknown_030034D0
	strb r5, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	b _08F0E2DA
	.align 2, 0
_08F0DF4C: .4byte gUnknown_030034D0
_08F0DF50:
	adds r0, r5, #0
#ifdef JAPANESE
	adds r0, #0x15
#elif ENGLISH
	adds r0, #0x05 @move name to be below the text
#endif
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl SetTextPosition
	ldr r0, [sp, #0x334]
	adds r4, r0, r5
	ldrb r0, [r4]
	bl WriteCharacterToTilemap
	ldrb r4, [r4]
#ifdef JAPANESE
	cmp r4, #0xdf
#elif ENGLISH
	cmp r4, #0xfc @change the question marks when typing a name to dots
#endif
	bne _08F0DF74
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08F0DF74:
	ldr r1, [sp, #0x334]
	adds r4, r1, r5
#ifdef JAPANESE
	movs r0, #0xdf
#elif ENGLISH
	movs r0, #0xfc @change the question marks when typing a name to dots
#endif
	strb r0, [r4]
	adds r0, r5, #0
#ifdef JAPANESE
	adds r0, #0x15
#elif ENGLISH
	adds r0, #0x05 @move name to be below the text
#endif
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl SetTextPosition
	ldrb r0, [r4]
	bl WriteCharacterToTilemap
	mov r2, sb
	adds r2, #1
	str r2, [sp, #0x34c]
	b _08F0E1F2
_08F0DF98:
	ldr r6, [sp, #0x334]
	adds r4, r6, r5
	strb r2, [r4]
	adds r0, r5, #0
#ifdef JAPANESE
	adds r0, #0x15
#elif ENGLISH
	adds r0, #0x05 @move name to be below the text
#endif
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl SetTextPosition
	ldrb r0, [r4]
	bl WriteCharacterToTilemap
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x34c]
	cmp r5, #4
	bls _08F0DFBE
	b _08F0E1F2
_08F0DFBE:
	ldr r0, [sp, #0x338]
	subs r0, #2
	cmp r5, r0
	blt _08F0DFC8
	b _08F0E1F2
_08F0DFC8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08F0E1F2
_08F0DFD0:
	movs r0, #0xf0
	ands r0, r2
	mov r1, sb
	adds r1, #1
	str r1, [sp, #0x34c]
	cmp r0, #0
	bne _08F0DFE0
	b _08F0E1F2
_08F0DFE0:
	movs r4, #1
	rsbs r4, r4, #0
	mov sb, r4
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r6, [sp, #0x344]
	str r1, [r6]
	add r0, sp, #0x328
	str r1, [r0]
	movs r6, #0
	adds r1, r2, #0
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0E068
	ldr r1, [sp, #0x340]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0E02E
	add r4, sp, #4
_08F0E008:
	ldrb r2, [r4, #3]
	cmp r2, r7
	bhs _08F0E024
	ldr r0, [sp, #0x344]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x328
	bl sub_8F0CFD0
	cmp r0, #0
	beq _08F0E024
	mov sb, r6
_08F0E024:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E008
_08F0E02E:
	mov r1, sb
	cmp r1, #0
	blt _08F0E036
	b _08F0E1C2
_08F0E036:
	movs r6, #0
	ldr r2, [sp, #0x344]
	str r6, [r2]
	ldr r4, [sp, #0x340]
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E046
	b _08F0E1BC
_08F0E046:
	add r3, sp, #0x32c
	add r2, sp, #4
_08F0E04A:
	ldrb r0, [r2, #2]
	cmp r0, r8
	bne _08F0E05C
	ldrb r1, [r2, #3]
	ldr r0, [r3]
	cmp r1, r0
	ble _08F0E05C
	str r1, [r3]
	mov sb, r6
_08F0E05C:
	adds r2, #4
	adds r6, #1
	ldrh r0, [r2]
	cmp r0, #0
	bne _08F0E04A
	b _08F0E1BC
_08F0E068:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0E0DE
	ldr r1, [sp, #0x340]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0E0A0
	add r4, sp, #4
_08F0E07A:
	ldrb r2, [r4, #3]
	cmp r2, r7
	bls _08F0E096
	ldr r0, [sp, #0x344]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x328
	bl sub_8F0CFD0
	cmp r0, #0
	beq _08F0E096
	mov sb, r6
_08F0E096:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E07A
_08F0E0A0:
	mov r1, sb
	cmp r1, #0
	blt _08F0E0A8
	b _08F0E1C2
_08F0E0A8:
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x344]
	str r0, [r2]
	ldr r4, [sp, #0x340]
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E0BC
	b _08F0E1BC
_08F0E0BC:
	add r3, sp, #0x32c
	add r2, sp, #4
_08F0E0C0:
	ldrb r0, [r2, #2]
	cmp r0, r8
	bne _08F0E0D2
	ldrb r1, [r2, #3]
	ldr r0, [r3]
	cmp r1, r0
	bge _08F0E0D2
	str r1, [r3]
	mov sb, r6
_08F0E0D2:
	adds r2, #4
	adds r6, #1
	ldrh r0, [r2]
	cmp r0, #0
	bne _08F0E0C0
	b _08F0E1BC
_08F0E0DE:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08F0E150
	ldr r1, [sp, #0x340]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0E116
	add r4, sp, #4
_08F0E0F0:
	ldrb r2, [r4, #2]
	cmp r2, r8
	bls _08F0E10C
	ldr r0, [sp, #0x344]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x328
	bl sub_8F0CF0C
	cmp r0, #0
	beq _08F0E10C
	mov sb, r6
_08F0E10C:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E0F0
_08F0E116:
	mov r1, sb
	cmp r1, #0
	bge _08F0E1C2
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #1
	add r1, sp, #0x328
	str r0, [r1]
	ldr r2, [sp, #0x340]
	ldrh r0, [r2]
	cmp r0, #0
	beq _08F0E1BC
	adds r3, r1, #0
	add r2, sp, #4
_08F0E132:
	ldrb r4, [r2, #3]
	cmp r4, r7
	bne _08F0E144
	ldrb r1, [r2, #2]
	ldr r0, [r3]
	cmp r1, r0
	bge _08F0E144
	str r1, [r3]
	mov sb, r6
_08F0E144:
	adds r2, #4
	adds r6, #1
	ldrh r0, [r2]
	cmp r0, #0
	bne _08F0E132
	b _08F0E1BC
_08F0E150:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08F0E1BC
	ldr r1, [sp, #0x340]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08F0E188
	add r4, sp, #4
_08F0E162:
	ldrb r2, [r4, #2]
	cmp r2, r8
	bhs _08F0E17E
	ldr r0, [sp, #0x344]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r4, #0
	add r3, sp, #0x328
	bl sub_8F0CF0C
	cmp r0, #0
	beq _08F0E17E
	mov sb, r6
_08F0E17E:
	adds r4, #4
	adds r6, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F0E162
_08F0E188:
	mov r1, sb
	cmp r1, #0
	bge _08F0E1C2
	movs r6, #0
	add r1, sp, #0x328
	str r6, [r1]
	ldr r2, [sp, #0x340]
	ldrh r0, [r2]
	cmp r0, #0
	beq _08F0E1BC
	adds r3, r1, #0
	add r2, sp, #4
_08F0E1A0:
	ldrb r4, [r2, #3]
	cmp r4, r7
	bne _08F0E1B2
	ldrb r1, [r2, #2]
	ldr r0, [r3]
	cmp r1, r0
	ble _08F0E1B2
	str r1, [r3]
	mov sb, r6
_08F0E1B2:
	adds r2, #4
	adds r6, #1
	ldrh r0, [r2]
	cmp r0, #0
	bne _08F0E1A0
_08F0E1BC:
	mov r6, sb
	cmp r6, #0
	blt _08F0E1F2
_08F0E1C2:
	movs r0, #0xd
	bl PlaySfxById1
	mov r0, r8
	adds r1, r7, #0
	bl SetTextPosition
	mov r1, sl
	lsls r0, r1, #2
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	bl WriteCharacterToTilemap
	mov sl, sb
	mov r2, sl
	lsls r0, r2, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldrb r0, [r1, #2]
	mov r8, r0
	ldrb r0, [r1, #3]
	adds r7, r0, #0
_08F0E1F2:
	ldr r4, [sp, #0x34c]
	mov sb, r4
	b _08F0DE28
_08F0E1F8:
	ldr r6, [sp, #0x334]
	adds r1, r6, r5
	ldrb r0, [r1]
#ifdef JAPANESE
	cmp r0, #0xdf
#elif ENGLISH
	cmp r0, #0xfc @change the question marks when typing a name to dots
#endif
	bne _08F0E206
	movs r0, #0
	strb r0, [r1]
_08F0E206:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bhi _08F0E216
	ldr r1, [sp, #0x348]
	cmp r5, r1
	blt _08F0E1F8
_08F0E216:
	ldr r2, [sp, #0x334]
	ldrb r0, [r2]
	adds r3, r0, #0
	cmp r3, #0
	bne _08F0E222
	b _08F0DD36
_08F0E222:
	movs r4, #0
	mov sl, r4
	ldr r1, _08F0E2A0 @ =gUnknown_08F2748B
	ldrb r0, [r1]
	adds r2, r1, #0
	cmp r0, #0
	beq _08F0E2D2
_08F0E230:
	movs r5, #0
	ldr r6, [sp, #0x348]
	cmp r5, r6
	bge _08F0E27C
	mov r4, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08F0E246
	cmp r3, #0
	beq _08F0E27C
_08F0E246:
	mov r6, sl
	adds r0, r6, r5
	adds r0, r0, r2
	ldr r4, [sp, #0x334]
	adds r1, r4, r5
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08F0E2A8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bhi _08F0E27C
	ldr r6, [sp, #0x348]
	cmp r5, r6
	bge _08F0E27C
	mov r1, sl
	adds r0, r1, r5
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _08F0E246
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0E246
_08F0E27C:
	ldr r0, _08F0E2A4 @ =gUnknown_08F27462
	bl HandleControlCodes
	movs r5, #0
_08F0E284:
	movs r0, #5
	bl PlaySfxById1
	movs r0, #2
	bl DelayByAmount
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xe
	bls _08F0E284
	bl WaitForActionButtonPress
	b _08F0DD36
	.align 2, 0
_08F0E2A0: .4byte gUnknown_08F2748B
_08F0E2A4: .4byte gUnknown_08F27462
_08F0E2A8:
	mov r4, sl
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #2
	beq _08F0E2C2
	adds r1, r2, #0
_08F0E2B4:
	movs r6, #1
	add sl, r6
	mov r4, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08F0E2B4
_08F0E2C2:
	movs r6, #1
	add sl, r6
	adds r1, r2, #0
	mov r4, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0E230
_08F0E2D2:
	ldr r1, _08F0E2F0 @ =gUnknown_030034D0
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
_08F0E2DA:
	movs r3, #0xd4
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0E2F0: .4byte gUnknown_030034D0

	thumb_func_start InitiateBattle
InitiateBattle: @ 0x08F0E2F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08F0E4FC @ =gUnknown_03003628
	strb r0, [r2]
	ldr r2, _08F0E500 @ =gUnknown_030034F8
	strb r1, [r2]
	cmp r0, #0xa2
	bne _08F0E314
	bl sub_8F09F84
_08F0E314:
	bl SetupEnemyGroups
	ldr r2, _08F0E504 @ =gEnemyMusic
	ldr r0, _08F0E508 @ =gMiscContainer
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	lsrs r0, r0, #4
	strb r0, [r2]
	cmp r0, #5
	bne _08F0E32C
	movs r0, #0x2c
	strb r0, [r2]
_08F0E32C:
	ldr r1, _08F0E50C @ =gOverworldMusic
	ldr r0, _08F0E510 @ =gCurrentBgMusic
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r2]
	bl ChangeBgMusic
	bl sub_8F1239C
	ldr r0, _08F0E514 @ =gKeysDown
	movs r2, #0
	strh r2, [r0]
	ldr r0, _08F0E518 @ =gUnknown_030036E8
	strb r2, [r0]
	ldr r0, _08F0E51C @ =gUnknown_030036EC
	strb r2, [r0]
	ldr r1, _08F0E520 @ =gExperiencePointsGained
	movs r0, #0
	str r0, [r1]
	ldr r1, _08F0E524 @ =gMoneyGained
	strh r0, [r1]
	str r0, [sp]
	ldr r1, _08F0E528 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r3, _08F0E52C @ =gUnknown_03003500
	str r3, [r1, #4]
	ldr r0, _08F0E530 @ =0x85000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F0E534 @ =gUnknown_03003700
	strb r2, [r0]
	ldr r1, _08F0E538 @ =gGameInfo
	mov ip, r1
	adds r5, r0, #0
	adds r7, r3, #0
	ldr r2, _08F0E53C @ =gItemData
	mov sb, r2
	movs r3, #0x3f
	mov sl, r3
_08F0E37C:
	ldrb r6, [r5]
	ldr r1, _08F0E540 @ =gUnknown_03003198
	adds r0, r6, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _08F0E45A
	movs r2, #0
	subs r3, r4, #1
	mov r8, r3
	ldr r3, _08F0E534 @ =gUnknown_03003700
	ldr r6, _08F0E52C @ =gUnknown_03003500
	lsls r4, r4, #6
_08F0E394:
	ldrb r0, [r3]
	lsls r1, r0, #5
	lsls r0, r2, #2
	adds r1, r1, r0
	adds r1, r1, r6
	adds r0, r4, r0
	add r0, ip
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F0E394
	ldrb r2, [r5]
	lsls r1, r2, #5
	adds r1, r1, r7
	mov r3, r8
	lsls r0, r3, #6
	mov r6, ip
	adds r4, r0, r6
	adds r0, r4, #0
	adds r0, #0x54
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldrb r0, [r5]
	lsls r1, r0, #5
	adds r1, r1, r7
	adds r0, r4, #0
	adds r0, #0x56
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldrb r1, [r5]
	lsls r2, r1, #5
	adds r2, r2, r7
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r1, r0, #3
	add r1, sb
	mov r0, sl
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r3, [r2, #6]
	adds r0, r3, r0
	strh r0, [r2, #6]
	ldrb r6, [r5]
	lsls r2, r6, #5
	adds r2, r2, r7
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r1, r0, #3
	add r1, sb
	mov r0, sl
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r1, [r2, #8]
	adds r0, r1, r0
	strh r0, [r2, #8]
	ldrb r3, [r5]
	lsls r2, r3, #5
	adds r2, r2, r7
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r1, r0, #3
	add r1, sb
	mov r0, sl
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r6, [r2, #8]
	adds r0, r6, r0
	strh r0, [r2, #8]
	ldrb r0, [r5]
	lsls r2, r0, #5
	adds r2, r2, r7
	adds r0, r4, #0
	adds r0, #0x6b
	ldrb r0, [r0]
	lsls r1, r0, #3
	add r1, sb
	mov r0, sl
	ldrb r1, [r1, #3]
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldrb r2, [r5]
	lsls r0, r2, #5
	adds r0, r0, r7
	movs r1, #0xff
	strb r1, [r0]
	ldrb r3, [r5]
	lsls r0, r3, #5
	adds r0, r0, r7
	mov r6, r8
	strb r6, [r0, #0x18]
_08F0E45A:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08F0E37C
	bl SetupEnemyGroups
	ldr r1, _08F0E534 @ =gUnknown_03003700
	movs r0, #4
	strb r0, [r1]
	movs r2, #0
	mov sb, r1
_08F0E476:
	ldr r0, _08F0E508 @ =gMiscContainer
	ldr r0, [r0]
	adds r0, r0, r2
	ldrb r4, [r0]
	adds r2, #2
	str r2, [sp, #4]
	cmp r4, #0xff
	beq _08F0E562
	ldrb r3, [r0, #1]
	movs r2, #0
	ldr r7, _08F0E4FC @ =gUnknown_03003628
	mov sl, r7
	ldr r0, _08F0E52C @ =gUnknown_03003500
	mov r8, r0
	ldr r1, _08F0E534 @ =gUnknown_03003700
	mov ip, r1
	lsls r5, r4, #5
	ldr r6, _08F0E544 @ =gEnemyData
_08F0E49A:
	mov r7, ip
	ldrb r7, [r7]
	lsls r1, r7, #5
	lsls r0, r2, #2
	adds r1, r1, r0
	ldr r7, _08F0E52C @ =gUnknown_03003500
	adds r1, r1, r7
	adds r0, r5, r0
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bls _08F0E49A
	mov r1, sb
	ldrb r1, [r1]
	lsls r0, r1, #5
	adds r2, r7, #0
	adds r0, r0, r2
	mov r5, sl
	ldrb r1, [r5]
	adds r1, #1
	movs r5, #0
	movs r2, #0
	strb r1, [r0]
	mov r6, sb
	ldrb r6, [r6]
	lsls r0, r6, #5
	adds r0, r0, r7
	lsls r1, r3, #2
	strb r1, [r0, #0x1a]
	mov r1, sb
	ldrb r1, [r1]
	lsls r0, r1, #5
	adds r0, r0, r7
	strb r4, [r0, #0x18]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08F0E548
	ldr r2, _08F0E534 @ =gUnknown_03003700
	ldrb r2, [r2]
	lsls r0, r2, #5
	add r0, r8
	movs r1, #0x5e
	strb r1, [r0, #0x1d]
	b _08F0E562
	.align 2, 0
_08F0E4FC: .4byte gUnknown_03003628
_08F0E500: .4byte gUnknown_030034F8
_08F0E504: .4byte gEnemyMusic
_08F0E508: .4byte gMiscContainer
_08F0E50C: .4byte gOverworldMusic
_08F0E510: .4byte gCurrentBgMusic
_08F0E514: .4byte gKeysDown
_08F0E518: .4byte gUnknown_030036E8
_08F0E51C: .4byte gUnknown_030036EC
_08F0E520: .4byte gExperiencePointsGained
_08F0E524: .4byte gMoneyGained
_08F0E528: .4byte 0x040000D4
_08F0E52C: .4byte gUnknown_03003500
_08F0E530: .4byte 0x85000040
_08F0E534: .4byte gUnknown_03003700
_08F0E538: .4byte gGameInfo
_08F0E53C: .4byte gItemData
_08F0E540: .4byte gUnknown_03003198
_08F0E544: .4byte gEnemyData
_08F0E548:
	ldr r3, _08F0E638 @ =gUnknown_03003700
	ldrb r3, [r3]
	lsls r0, r3, #5
	add r0, r8
	strb r2, [r0, #0x1d]
	ldr r5, _08F0E638 @ =gUnknown_03003700
	ldrb r5, [r5]
	lsls r1, r5, #5
	add r1, r8
	movs r0, #1
	ldrb r6, [r1, #0x1e]
	orrs r0, r6
	strb r0, [r1, #0x1e]
_08F0E562:
	mov r7, sb
	ldrb r1, [r7]
	adds r1, #1
	strb r1, [r7]
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #7
	bhi _08F0E57A
	b _08F0E476
_08F0E57A:
	ldr r3, _08F0E63C @ =gMiscContainer
	ldr r1, [r3]
	ldrb r5, [r1, #8]
	lsrs r0, r5, #5
	ldr r6, _08F0E640 @ =gEnemyGroupSpecialEncounter
	strb r0, [r6]
	movs r0, #0x1f
	ldrb r7, [r1, #8]
	ands r0, r7
	ldr r2, _08F0E644 @ =gEnemyGroupPositioning
	strb r0, [r2]
	movs r0, #0xf
	ldrb r1, [r1, #9]
	ands r0, r1
	bl sub_8F0E9CC
	bl sub_8F0EA98
	ldr r2, _08F0E638 @ =gUnknown_03003700
	movs r0, #4
	strb r0, [r2]
	ldr r1, _08F0E648 @ =gUnknown_03003620
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08F0E64C @ =gUnknown_03003500
	mov r8, r3
	mov sl, r2
_08F0E5B0:
	mov r5, sl
	ldrb r1, [r5]
	lsls r0, r1, #5
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0E5C4
	adds r0, r1, #0
	bl sub_8F0EB80
_08F0E5C4:
	movs r2, #0
	ldr r6, _08F0E648 @ =gUnknown_03003620
	ldr r7, _08F0E638 @ =gUnknown_03003700
	mov sb, r7
	ldr r3, _08F0E650 @ =gUnknown_03003502
	ldr r4, _08F0E654 @ =0x000003FF
_08F0E5D0:
	lsls r1, r2, #1
	mov r5, sb
	ldrb r5, [r5]
	lsls r0, r5, #5
	adds r1, r1, r0
	adds r1, r1, r3
	adds r0, r4, #0
	ldrh r7, [r1]
	ands r0, r7
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F0E5D0
	mov r0, sl
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #7
	bls _08F0E5B0
	ldr r0, _08F0E658 @ =gUnknown_03003600
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08F0E65C @ =gUnknown_03003664
	strb r1, [r0]
	ldr r2, _08F0E640 @ =gEnemyGroupSpecialEncounter
	ldrb r2, [r2]
	cmp r2, #1
	bne _08F0E668
	ldr r2, _08F0E64C @ =gUnknown_03003500
	adds r0, r2, #0
	adds r0, #0x60
	movs r1, #0
	strb r1, [r0]
	subs r0, #0x20
	strb r1, [r0]
	subs r0, #0x20
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x82
	ldr r0, _08F0E660 @ =0x0000FFFF
	strh r0, [r1]
	ldr r1, _08F0E664 @ =gUnknown_0300362C
	movs r0, #4
	strb r0, [r1]
	b _08F0E66C
	.align 2, 0
_08F0E638: .4byte gUnknown_03003700
_08F0E63C: .4byte gMiscContainer
_08F0E640: .4byte gEnemyGroupSpecialEncounter
_08F0E644: .4byte gEnemyGroupPositioning
_08F0E648: .4byte gUnknown_03003620
_08F0E64C: .4byte gUnknown_03003500
_08F0E650: .4byte gUnknown_03003502
_08F0E654: .4byte 0x000003FF
_08F0E658: .4byte gUnknown_03003600
_08F0E65C: .4byte gUnknown_03003664
_08F0E660: .4byte 0x0000FFFF
_08F0E664: .4byte gUnknown_0300362C
_08F0E668:
	ldr r0, _08F0E6C8 @ =gUnknown_0300362C
	strb r1, [r0]
_08F0E66C:
	ldr r0, _08F0E6CC @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0E69E
	movs r0, #0
	ldr r3, _08F0E6D0 @ =gEnemyGroupSpecialEncounter
	strb r0, [r3]
	ldr r5, _08F0E6D4 @ =gUnknown_03003700
	strb r0, [r5]
	ldr r4, _08F0E6D8 @ =gUnknown_03003500
	adds r2, r5, #0
	movs r3, #4
_08F0E684:
	ldrb r6, [r2]
	lsls r0, r6, #5
	adds r0, r0, r4
	ldrb r1, [r0, #0x1e]
	orrs r1, r3
	strb r1, [r0, #0x1e]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08F0E684
_08F0E69E:
	ldr r7, _08F0E6D0 @ =gEnemyGroupSpecialEncounter
	ldrb r7, [r7]
	cmp r7, #5
	bne _08F0E6BA
	ldr r1, _08F0E6DC @ =gUnknown_030036FC
	movs r0, #0x96
	strb r0, [r1]
	ldr r0, _08F0E6D8 @ =gUnknown_03003500
	ldrb r1, [r0, #0xc]
	adds r0, #0x8c
	movs r2, #0
	strb r1, [r0]
	ldr r0, _08F0E6E0 @ =gUnknown_030034F0
	strb r2, [r0]
_08F0E6BA:
	movs r0, #0x14
	bl sub_8F0E838
	bl sub_8F0EAF8
	ldr r5, _08F0E6E4 @ =gUnknown_030036B4
	b _08F0E70C
	.align 2, 0
_08F0E6C8: .4byte gUnknown_0300362C
_08F0E6CC: .4byte gUnknown_0300317C
_08F0E6D0: .4byte gEnemyGroupSpecialEncounter
_08F0E6D4: .4byte gUnknown_03003700
_08F0E6D8: .4byte gUnknown_03003500
_08F0E6DC: .4byte gUnknown_030036FC
_08F0E6E0: .4byte gUnknown_030034F0
_08F0E6E4: .4byte gUnknown_030036B4
_08F0E6E8:
	movs r0, #0x14
	bl sub_8F0E838
	movs r0, #7
	bl sub_8F0EA64
	bl sub_8F12AC0
	strb r4, [r5]
	bl sub_8F10730
	movs r0, #1
	strb r0, [r5]
	movs r0, #3
	bl sub_8F0EA64
	bl sub_8F12B04
_08F0E70C:
	movs r0, #0
	bl sub_8F0EA64
	bl sub_8F0F2E8
	adds r4, r0, #0
	cmp r4, #0
	beq _08F0E6E8
	bl sub_8F0EB14
	ldr r0, _08F0E760 @ =gKeysDown
	movs r1, #0
	strh r1, [r0]
	bl sub_8F124F0
	ldr r0, _08F0E764 @ =gUnknown_03003628
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F0E73E
	ldr r0, _08F0E768 @ =gUnknown_030034FC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0E73E
	bl InitiateEndingSequence
_08F0E73E:
	bl m4aMPlayAllStop
	ldr r0, _08F0E76C @ =gOverworldMusic
	ldrb r0, [r0]
	bl ChangeBgMusic
	ldr r0, _08F0E768 @ =gUnknown_030034FC
	ldrb r0, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0E760: .4byte gKeysDown
_08F0E764: .4byte gUnknown_03003628
_08F0E768: .4byte gUnknown_030034FC
_08F0E76C: .4byte gOverworldMusic

	thumb_func_start sub_8F0E770
sub_8F0E770: @ 0x08F0E770
	push {r4, r5, lr}
	sub sp, #0x44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _08F0E7A0 @ =gUnknown_08F66304
	mov r0, sp
	movs r2, #0x42
	bl memcpy
	cmp r4, #0
	beq _08F0E7E8
	lsls r1, r4, #1
	adds r2, r1, r4
	mov r3, sp
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #1
	beq _08F0E7BA
	cmp r0, #1
	bgt _08F0E7A4
	cmp r0, #0
	beq _08F0E7AE
	b _08F0E7DC
	.align 2, 0
_08F0E7A0: .4byte gUnknown_08F66304
_08F0E7A4:
	cmp r0, #2
	beq _08F0E7C6
	cmp r0, #3
	beq _08F0E7D2
	b _08F0E7DC
_08F0E7AE:
	adds r0, r2, #1
	add r0, sp
	ldrb r0, [r0]
	bl PlaySfxById0
	b _08F0E7DC
_08F0E7BA:
	adds r0, r2, #1
	add r0, sp
	ldrb r0, [r0]
	bl PlaySfxById1
	b _08F0E7DC
_08F0E7C6:
	adds r0, r2, #1
	add r0, sp
	ldrb r0, [r0]
	bl PlaySfxById2
	b _08F0E7DC
_08F0E7D2:
	adds r0, r2, #1
	add r0, sp
	ldrb r0, [r0]
	bl PlaySfxById3
_08F0E7DC:
	adds r0, r5, r4
	adds r0, #2
	add r0, sp
	ldrb r0, [r0]
	bl sub_8F0E838
_08F0E7E8:
	add sp, #0x44
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8F0E7F0
sub_8F0E7F0: @ 0x08F0E7F0
	push {lr}
	bl sub_8F12338
	bl sub_8F040E0
	ldr r1, _08F0E824 @ =0x040000D4
	ldr r0, _08F0E828 @ =gBg0TilemapBuffer
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0E82C @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F0E830 @ =gUnknown_03002450
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F0E834 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl UpdateInput
	pop {r0}
	bx r0
	.align 2, 0
_08F0E824: .4byte 0x040000D4
_08F0E828: .4byte gBg0TilemapBuffer
_08F0E82C: .4byte 0x84000200
_08F0E830: .4byte gUnknown_03002450
_08F0E834: .4byte 0x84000100

	thumb_func_start sub_8F0E838
sub_8F0E838: @ 0x08F0E838
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _08F0E84A
_08F0E840:
	bl sub_8F0E7F0
	subs r4, #1
	cmp r4, #0
	bne _08F0E840
_08F0E84A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8F0E850
sub_8F0E850: @ 0x08F0E850
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #1
	cmp r4, #0
	beq _08F0E864
_08F0E85A:
	bl sub_8F0E874
	subs r4, #1
	cmp r4, #0
	bne _08F0E85A
_08F0E864:
	bl sub_8F0E874
	movs r0, #0xf
	bl sub_8F0EA18
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8F0E874
sub_8F0E874: @ 0x08F0E874
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08F0E8A8 @ =gUnknown_08F66346
	mov r0, sp
	movs r2, #8
	bl memcpy
	movs r4, #0x2f
	movs r5, #7
_08F0E886:
	asrs r0, r4, #1
	ands r0, r5
	add r0, sp
	ldrb r0, [r0]
	bl sub_8F0EA18
	bl sub_8F0E7F0
	bl sub_8F0E7F0
	subs r4, #1
	cmp r4, #0
	bgt _08F0E886
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0E8A8: .4byte gUnknown_08F66346

	thumb_func_start sub_8F0E8AC
sub_8F0E8AC: @ 0x08F0E8AC
	push {r4, r5, lr}
	ldr r1, _08F0E8D4 @ =gKeysDown
	movs r0, #0
	strh r0, [r1]
	adds r5, r1, #0
	ldr r0, _08F0E8D8 @ =0x00000207
	adds r4, r0, #0
_08F0E8BA:
	bl sub_8F0E7F0
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08F0E8BA
	ldr r1, _08F0E8D4 @ =gKeysDown
	movs r0, #0
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0E8D4: .4byte gKeysDown
_08F0E8D8: .4byte 0x00000207

	thumb_func_start sub_8F0E8DC
sub_8F0E8DC: @ 0x08F0E8DC
	push {r4, lr}
	sub sp, #0x80
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08F0E90C @ =gUnknown_08F6634E
	mov r0, sp
	movs r2, #0x80
	bl memcpy
	bl Random
	adds r2, r0, #0
	lsrs r0, r2, #0x18
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08F0E910
	lsrs r0, r2, #0x19
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0x64
	ldrb r1, [r1]
	subs r0, r0, r1
	b _08F0E918
	.align 2, 0
_08F0E90C: .4byte gUnknown_08F6634E
_08F0E910:
	lsrs r0, r2, #0x19
	add r0, sp
	ldrb r0, [r0]
	adds r0, #0x64
_08F0E918:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08F0E948 @ =0x000003FF
	ands r0, r4
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	adds r1, r0, #0
	movs r0, #0xfc
	lsls r0, r0, #8
	ands r0, r4
	adds r1, r1, r0
	ldr r0, _08F0E94C @ =0x0000FFFF
	cmp r1, r0
	ble _08F0E93A
	adds r1, r0, #0
_08F0E93A:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	add sp, #0x80
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08F0E948: .4byte 0x000003FF
_08F0E94C: .4byte 0x0000FFFF

	thumb_func_start sub_8F0E950
sub_8F0E950: @ 0x08F0E950
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8F0E8DC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	ble _08F0E964
	movs r0, #0xff
_08F0E964:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1

	thumb_func_start sub_8F0E96C
sub_8F0E96C: @ 0x08F0E96C
	push {r4, lr}
	movs r4, #0xf
_08F0E970:
	movs r0, #5
	bl PlaySfxById1
	movs r0, #2
	bl sub_8F0E838
	subs r4, #1
	cmp r4, #0
	bgt _08F0E970
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start SetupEnemyGroups
SetupEnemyGroups: @ 0x08F0E988
	push {lr}
	mov ip, r4
	ldr r4, _08F0E9B4 @ =0xFFFFF98C
	add sp, r4
	mov r4, ip
	ldr r1, _08F0E9B8 @ =gEnemyGroupsData
	ldr r2, _08F0E9BC @ =0x00000672
	mov r0, sp
	bl memcpy
	ldr r2, _08F0E9C0 @ =gMiscContainer
	ldr r1, _08F0E9C4 @ =gUnknown_03003628
	ldrb r3, [r1]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #1
	add r0, sp
	str r0, [r2]
	ldr r3, _08F0E9C8 @ =0x00000674
	add sp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08F0E9B4: .4byte 0xFFFFF98C
_08F0E9B8: .4byte gEnemyGroupsData
_08F0E9BC: .4byte 0x00000672
_08F0E9C0: .4byte gMiscContainer
_08F0E9C4: .4byte gUnknown_03003628
_08F0E9C8: .4byte 0x00000674

	thumb_func_start sub_8F0E9CC
sub_8F0E9CC: @ 0x08F0E9CC
	push {r4, lr}
	ldr r4, _08F0EA08 @ =0xFFFFFE00
	add sp, r4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08F0EA0C @ =gUnknown_08F66A40
	movs r2, #0x80
	lsls r2, r2, #2
	mov r0, sp
	bl memcpy
	lsls r4, r4, #5
	mov r1, sp
	adds r0, r1, r4
	ldr r1, _08F0EA10 @ =0x05000080
	bl LoadPalette
	adds r4, #0x10
	mov r1, sp
	adds r0, r1, r4
	ldr r1, _08F0EA14 @ =0x05000280
	bl LoadPalette
	movs r3, #0x80
	lsls r3, r3, #2
	add sp, r3
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0EA08: .4byte 0xFFFFFE00
_08F0EA0C: .4byte gUnknown_08F66A40
_08F0EA10: .4byte 0x05000080
_08F0EA14: .4byte 0x05000280

	thumb_func_start sub_8F0EA18
sub_8F0EA18: @ 0x08F0EA18
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08F0EA5C @ =gNESPalette
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	cmp r0, #0x3c
	bhi _08F0EA40
	movs r0, #0xe7
	lsls r0, r0, #7
	ands r0, r2
	lsrs r0, r0, #2
	movs r1, #0x1c
	ands r1, r2
	lsrs r1, r1, #2
	adds r0, r0, r1
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08F0EA40:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r2, [r0]
	ldr r1, _08F0EA60 @ =0x05000182
	movs r0, #3
_08F0EA4A:
	strh r2, [r1]
	adds r1, #0x20
	subs r0, #1
	cmp r0, #0
	bge _08F0EA4A
	bl sub_8F0E7F0
	pop {r0}
	bx r0
	.align 2, 0
_08F0EA5C: .4byte gNESPalette
_08F0EA60: .4byte 0x05000182

	thumb_func_start sub_8F0EA64
sub_8F0EA64: @ 0x08F0EA64
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _08F0EA78 @ =gUnknown_08F29F00
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bl HandleControlCodes
	pop {r0}
	bx r0
	.align 2, 0
_08F0EA78: .4byte gUnknown_08F29F00

	thumb_func_start sub_8F0EA7C
sub_8F0EA7C: @ 0x08F0EA7C
	push {r4, r5, lr}
	ldr r4, _08F0EA94 @ =gUnknown_030036B4
	ldrb r5, [r4]
	movs r0, #0
	strb r0, [r4]
	bl WaitForButtonPress
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0EA94: .4byte gUnknown_030036B4

	thumb_func_start sub_8F0EA98
sub_8F0EA98: @ 0x08F0EA98
	push {lr}
	movs r0, #0xff
	bl sub_8F12B48
	bl sub_8F0EAA8
	pop {r0}
	bx r0

	thumb_func_start sub_8F0EAA8
sub_8F0EAA8: @ 0x08F0EAA8
	bx lr
	.align 2, 0

	thumb_func_start sub_8F0EAAC
sub_8F0EAAC: @ 0x08F0EAAC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08F0EAD0
	ldr r2, _08F0EAC8 @ =gGameInfo
	ldr r0, _08F0EACC @ =gUnknown_03003500
	lsls r1, r1, #5
	adds r1, r1, r0
	ldrb r3, [r1, #0x18]
	lsls r0, r3, #6
	adds r0, r0, r2
	adds r0, #0x42
	ldrh r0, [r0]
	b _08F0EAE0
	.align 2, 0
_08F0EAC8: .4byte gGameInfo
_08F0EACC: .4byte gUnknown_03003500
_08F0EAD0:
	ldr r2, _08F0EAEC @ =gEnemyData
	ldr r0, _08F0EAF0 @ =gUnknown_03003500
	lsls r1, r1, #5
	adds r1, r1, r0
	ldrb r3, [r1, #0x18]
	lsls r0, r3, #5
	adds r0, r0, r2
	ldrh r0, [r0, #2]
_08F0EAE0:
	lsrs r0, r0, #2
	ldrh r1, [r1, #2]
	cmp r0, r1
	bls _08F0EAF4
	movs r0, #0
	b _08F0EAF6
	.align 2, 0
_08F0EAEC: .4byte gEnemyData
_08F0EAF0: .4byte gUnknown_03003500
_08F0EAF4:
	movs r0, #1
_08F0EAF6:
	bx lr

	thumb_func_start sub_8F0EAF8
sub_8F0EAF8: @ 0x08F0EAF8
	ldr r2, _08F0EB08 @ =gUnknown_03003650
	ldr r1, _08F0EB0C @ =v_blank_fnc
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _08F0EB10 @ =sub_8F0EB28
	str r0, [r1]
	bx lr
	.align 2, 0
_08F0EB08: .4byte gUnknown_03003650
_08F0EB0C: .4byte v_blank_fnc
_08F0EB10: .4byte sub_8F0EB28

	thumb_func_start sub_8F0EB14
sub_8F0EB14: @ 0x08F0EB14
	ldr r0, _08F0EB20 @ =v_blank_fnc
	ldr r1, _08F0EB24 @ =gUnknown_03003650
	ldr r1, [r1]
	str r1, [r0]
	bx lr
	.align 2, 0
_08F0EB20: .4byte v_blank_fnc
_08F0EB24: .4byte gUnknown_03003650

	thumb_func_start sub_8F0EB28
sub_8F0EB28: @ 0x08F0EB28
	push {lr}
	ldr r0, _08F0EB68 @ =gUnknown_03003650
	ldr r0, [r0]
	cmp r0, #0
	beq _08F0EB36
	bl _call_via_r0
_08F0EB36:
	ldr r3, _08F0EB6C @ =gUnknown_030036E8
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F0EB64
	ldr r0, _08F0EB70 @ =gUnknown_030036B4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0EB64
	ldr r2, _08F0EB74 @ =gKeysDown
	ldrh r1, [r2]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08F0EB64
	ldr r0, _08F0EB78 @ =0x0000FFF9
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08F0EB7C @ =gUnknown_030036C0
	adds r0, #0x20
	movs r1, #0
	strb r1, [r0]
_08F0EB64:
	pop {r0}
	bx r0
	.align 2, 0
_08F0EB68: .4byte gUnknown_03003650
_08F0EB6C: .4byte gUnknown_030036E8
_08F0EB70: .4byte gUnknown_030036B4
_08F0EB74: .4byte gKeysDown
_08F0EB78: .4byte 0x0000FFF9
_08F0EB7C: .4byte gUnknown_030036C0

	thumb_func_start sub_8F0EB80
sub_8F0EB80: @ 0x08F0EB80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08F0EE24 @ =0xFFFFFD40
	add sp, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x288]
	ldr r1, _08F0EE28 @ =gUnknown_08F66C40
	mov r0, sp
	movs r2, #0x43
	bl memcpy
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0x28c]
	ldr r1, _08F0EE2C @ =gUnknown_08F66C83
	movs r2, #0x33
	bl memcpy
	mov r1, sp
	adds r1, #0x78
	str r1, [sp, #0x290]
	ldr r1, _08F0EE30 @ =gUnknown_08F66CB6
	ldr r0, [sp, #0x290]
	movs r2, #0x33
	bl memcpy
	mov r2, sp
	adds r2, #0xac
	str r2, [sp, #0x294]
	ldr r1, _08F0EE34 @ =gUnknown_08F66CE9
	adds r0, r2, #0
	movs r2, #0x27
	bl memcpy
	mov r3, sp
	adds r3, #0xd4
	str r3, [sp, #0x298]
	ldr r1, _08F0EE38 @ =gUnknown_08F66D10
	adds r0, r3, #0
	movs r2, #0x1f
	bl memcpy
	mov r5, sp
	adds r5, #0xf4
	str r5, [sp, #0x29c]
	ldr r1, _08F0EE3C @ =gUnknown_08F66D2F
	adds r0, r5, #0
	movs r2, #0x1b
	bl memcpy
	movs r6, #0x88
	lsls r6, r6, #1
	add r6, sp
	str r6, [sp, #0x2a0]
	ldr r1, _08F0EE40 @ =gUnknown_08F66D4A
	adds r0, r6, #0
	movs r2, #0x1b
	bl memcpy
	movs r7, #0x96
	lsls r7, r7, #1
	add r7, sp
	str r7, [sp, #0x2a4]
	ldr r1, _08F0EE44 @ =gUnknown_08F66D65
	adds r0, r7, #0
	movs r2, #0x1b
	bl memcpy
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, sp
	mov sl, r0
	ldr r1, _08F0EE48 @ =gUnknown_08F66D80
	movs r2, #0x13
	bl memcpy
	movs r1, #0xae
	lsls r1, r1, #1
	add r1, sp
	mov sb, r1
	ldr r1, _08F0EE4C @ =gUnknown_08F66D93
	mov r0, sb
	movs r2, #0xf
	bl memcpy
	movs r2, #0xb6
	lsls r2, r2, #1
	add r2, sp
	mov r8, r2
	ldr r1, _08F0EE50 @ =gUnknown_08F66DA2
	mov r0, r8
	movs r2, #0xf
	bl memcpy
	add r6, sp, #0x17c
	ldr r1, _08F0EE54 @ =gUnknown_08F66DB1
	adds r0, r6, #0
	movs r2, #0xf
	bl memcpy
	add r5, sp, #0x18c
	ldr r1, _08F0EE58 @ =gUnknown_08F66DC0
	adds r0, r5, #0
	movs r2, #0xb
	bl memcpy
	add r4, sp, #0x198
	ldr r1, _08F0EE5C @ =gUnknown_08F66DCB
	adds r0, r4, #0
	movs r2, #0x13
	bl memcpy
	add r7, sp, #0x1ac
	mov r3, sp
	str r3, [r7]
	str r3, [r7, #4]
	ldr r0, [sp, #0x28c]
	str r0, [r7, #8]
	ldr r1, [sp, #0x290]
	str r1, [r7, #0xc]
	ldr r2, [sp, #0x294]
	str r2, [r7, #0x10]
	ldr r3, [sp, #0x298]
	str r3, [r7, #0x14]
	mov r0, sp
	str r0, [r7, #0x18]
	ldr r1, [sp, #0x29c]
	str r1, [r7, #0x1c]
	ldr r2, [sp, #0x2a0]
	str r2, [r7, #0x20]
	ldr r3, [sp, #0x2a4]
	str r3, [r7, #0x24]
	mov r0, sl
	str r0, [r7, #0x28]
	mov r1, sb
	str r1, [r7, #0x2c]
	mov r2, r8
	str r2, [r7, #0x30]
	str r6, [r7, #0x34]
	str r5, [r7, #0x38]
	str r4, [r7, #0x3c]
	add r4, sp, #0x1ec
	ldr r1, _08F0EE60 @ =gUnknown_08F66DDE
	adds r0, r4, #0
	movs r2, #0x58
	bl memcpy
	add r0, sp, #0x244
	ldr r1, _08F0EE64 @ =gUnknown_08F66E38
	movs r2, #0x44
	bl memcpy
	ldr r2, _08F0EE68 @ =gUnknown_03003500
	ldr r3, [sp, #0x288]
	lsls r6, r3, #5
	adds r1, r6, r2
	movs r0, #1
	ldrb r5, [r1, #0x1e]
	ands r0, r5
	cmp r0, #0
	beq _08F0ECCE
	movs r0, #0
	strb r0, [r1]
_08F0ECCE:
	ldr r0, _08F0EE6C @ =gUnknown_03003620
	mov r8, r0
	ldrb r0, [r1, #0x1a]
	mov r3, r8
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r1, #0x1a]
	adds r0, r2, #3
	adds r0, r6, r0
	ldrb r1, [r0]
	lsrs r0, r1, #4
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r5, [r0]
	ldrb r7, [r5]
	mov sl, r7
	adds r5, #1
	ldrb r0, [r5]
	mov sb, r0
	adds r5, #1
	adds r0, r2, #7
	adds r0, r6, r0
	ldrb r0, [r0]
	lsrs r0, r0, #5
	ldrb r2, [r5]
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2a8]
	adds r5, #1
	ldr r0, _08F0EE70 @ =gEnemyGroupPositioning
	ldrb r0, [r0]
	lsls r0, r0, #2
	mov r3, r8
	ldrb r3, [r3]
	adds r0, r3, r0
	adds r0, r4, r0
	ldrb r0, [r0]
	str r0, [sp, #0x2ac]
	movs r0, #0xc
	ands r0, r1
	lsrs r0, r0, #2
	str r0, [sp, #0x2b0]
	ldr r1, _08F0EE74 @ =gUnknown_03003670
	ldr r4, [sp, #0x288]
	subs r4, #4
	lsls r0, r4, #2
	adds r0, r0, r1
	strb r7, [r0]
	mov r7, sb
	strb r7, [r0, #1]
	add r1, sp, #0x2a8
	ldrb r1, [r1]
	strb r1, [r0, #2]
	add r2, sp, #0x2ac
	ldrb r2, [r2]
	strb r2, [r0, #3]
	ldr r0, [sp, #0x288]
	bl sub_8F0EF4C
	movs r0, #0
	str r6, [sp, #0x2b8]
	str r4, [sp, #0x2b4]
	cmp r0, sl
	bhs _08F0ED9E
	mov ip, r8
_08F0ED52:
	movs r2, #0
	adds r3, r0, #1
	str r3, [sp, #0x2bc]
	cmp r2, sb
	bhs _08F0ED94
	ldr r6, [sp, #0x2a8]
	adds r0, r6, r0
	lsls r4, r0, #6
	ldr r7, _08F0EE78 @ =0x0600217E
	mov r8, r7
	ldr r0, [sp, #0x2b0]
	lsls r3, r0, #0xc
_08F0ED6A:
	ldr r1, [sp, #0x2ac]
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r4, r0
	add r0, r8
	mov r6, ip
	ldrb r6, [r6]
	lsls r1, r6, #6
	ldrb r7, [r5]
	adds r1, r7, r1
	adds r1, r1, r3
	movs r6, #0x86
	lsls r6, r6, #7
	adds r1, r1, r6
	strh r1, [r0]
	adds r5, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, sb
	blo _08F0ED6A
_08F0ED94:
	ldr r7, [sp, #0x2bc]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, sl
	blo _08F0ED52
_08F0ED9E:
	ldr r2, _08F0EE7C @ =gUnknown_08F6F880
	ldr r1, _08F0EE80 @ =gEnemyData
	ldr r4, _08F0EE68 @ =gUnknown_03003500
	ldr r3, [sp, #0x2b8]
	adds r0, r3, r4
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	subs r0, #0x20
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _08F0EE6C @ =gUnknown_03003620
	ldrb r1, [r1]
	lsls r1, r1, #0xb
	ldr r5, _08F0EE84 @ =0x0600E000
	adds r1, r1, r5
	movs r2, #0x40
	bl BitUnpack
	adds r4, #5
	ldr r6, [sp, #0x2b8]
	adds r3, r6, r4
	movs r4, #0xfc
	adds r0, r4, #0
	ldrb r7, [r3]
	ands r0, r7
	cmp r0, #0
	beq _08F0EE10
	ldr r0, _08F0EE88 @ =gUnknown_030036C0
	ldr r2, [sp, #0x2b4]
	lsls r1, r2, #3
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	add r2, sp, #0x244
	adds r0, r4, #0
	ldrb r5, [r3]
	ands r0, r5
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	adds r0, r4, #0
	ldrb r3, [r3]
	ands r0, r3
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r1, #1]
	ldr r0, [sp, #0x2ac]
	subs r0, #3
	lsls r0, r0, #3
	strh r0, [r1, #4]
	ldr r0, [sp, #0x2a8]
	adds r0, #4
	lsls r0, r0, #3
	strh r0, [r1, #6]
_08F0EE10:
	movs r3, #0xb0
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0EE24: .4byte 0xFFFFFD40
_08F0EE28: .4byte gUnknown_08F66C40
_08F0EE2C: .4byte gUnknown_08F66C83
_08F0EE30: .4byte gUnknown_08F66CB6
_08F0EE34: .4byte gUnknown_08F66CE9
_08F0EE38: .4byte gUnknown_08F66D10
_08F0EE3C: .4byte gUnknown_08F66D2F
_08F0EE40: .4byte gUnknown_08F66D4A
_08F0EE44: .4byte gUnknown_08F66D65
_08F0EE48: .4byte gUnknown_08F66D80
_08F0EE4C: .4byte gUnknown_08F66D93
_08F0EE50: .4byte gUnknown_08F66DA2
_08F0EE54: .4byte gUnknown_08F66DB1
_08F0EE58: .4byte gUnknown_08F66DC0
_08F0EE5C: .4byte gUnknown_08F66DCB
_08F0EE60: .4byte gUnknown_08F66DDE
_08F0EE64: .4byte gUnknown_08F66E38
_08F0EE68: .4byte gUnknown_03003500
_08F0EE6C: .4byte gUnknown_03003620
_08F0EE70: .4byte gEnemyGroupPositioning
_08F0EE74: .4byte gUnknown_03003670
_08F0EE78: .4byte 0x0600217E
_08F0EE7C: .4byte gUnknown_08F6F880
_08F0EE80: .4byte gEnemyData
_08F0EE84: .4byte 0x0600E000
_08F0EE88: .4byte gUnknown_030036C0

	thumb_func_start sub_8F0EE8C
sub_8F0EE8C: @ 0x08F0EE8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08F0EEB0 @ =gUnknown_03003628
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F0EEB4
	movs r0, #4
	str r0, [sp]
	movs r2, #3
	str r2, [sp, #4]
	b _08F0EEBC
	.align 2, 0
_08F0EEB0: .4byte gUnknown_03003628
_08F0EEB4:
	movs r4, #2
	str r4, [sp]
	movs r7, #2
	str r7, [sp, #4]
_08F0EEBC:
	movs r6, #0
	ldr r3, _08F0EF44 @ =gUnknown_03003670
	subs r2, r1, #4
	lsls r0, r2, #2
	adds r1, r0, r3
	ldrb r0, [r1]
	adds r0, #2
	cmp r6, r0
	bge _08F0EF34
	str r2, [sp, #0xc]
	mov sl, r1
	mov r0, sl
	str r0, [sp, #8]
_08F0EED6:
	movs r3, #0
	ldr r5, [sp, #0xc]
	mov r1, sl
	ldrb r1, [r1, #1]
	ldr r2, [sp]
	adds r0, r1, r2
	adds r4, r6, #1
	str r4, [sp, #0x10]
	cmp r3, r0
	bge _08F0EF24
	ldr r7, _08F0EF44 @ =gUnknown_03003670
	mov sb, r7
	ldr r0, [sp, #4]
	rsbs r4, r0, #0
	ldr r1, _08F0EF48 @ =0x06003140
	mov r8, r1
	movs r2, #0
	mov ip, r2
_08F0EEFA:
	lsls r2, r5, #2
	add r2, sb
	adds r1, r4, r3
	ldrb r7, [r2, #3]
	adds r1, r7, r1
	ldrb r7, [r2, #2]
	adds r0, r7, r6
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	add r0, r8
	mov r1, ip
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r2, [r2, #1]
	ldr r7, [sp]
	adds r0, r2, r7
	cmp r3, r0
	blt _08F0EEFA
_08F0EF24:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	adds r0, #2
	cmp r6, r0
	blt _08F0EED6
_08F0EF34:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0EF44: .4byte gUnknown_03003670
_08F0EF48: .4byte 0x06003140

	thumb_func_start sub_8F0EF4C
sub_8F0EF4C: @ 0x08F0EF4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08F0EF70 @ =gUnknown_03003628
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F0EF74
	movs r0, #4
	str r0, [sp]
	movs r2, #3
	str r2, [sp, #4]
	b _08F0EF7C
	.align 2, 0
_08F0EF70: .4byte gUnknown_03003628
_08F0EF74:
	movs r4, #2
	str r4, [sp]
	movs r7, #2
	str r7, [sp, #4]
_08F0EF7C:
	movs r6, #0
	ldr r3, _08F0F008 @ =gUnknown_03003670
	subs r2, r1, #4
	lsls r0, r2, #2
	adds r1, r0, r3
	ldrb r0, [r1]
	adds r0, #2
	cmp r6, r0
	bge _08F0EFF8
	str r2, [sp, #0xc]
	mov sl, r1
	mov r0, sl
	str r0, [sp, #8]
_08F0EF96:
	movs r3, #0
	ldr r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r2, sl
	ldrb r2, [r2, #1]
	ldr r4, [sp]
	adds r0, r2, r4
	adds r7, r6, #1
	mov ip, r7
	cmp r3, r0
	bge _08F0EFE8
	ldr r0, _08F0F008 @ =gUnknown_03003670
	mov sb, r0
	ldr r1, [sp, #4]
	rsbs r5, r1, #0
	ldr r4, _08F0F00C @ =gUnknown_030034C0
	ldr r2, _08F0F010 @ =0x06003140
	mov r8, r2
_08F0EFBA:
	ldr r7, [sp, #0x10]
	lsls r2, r7, #2
	add r2, sb
	adds r1, r5, r3
	ldrb r0, [r2, #3]
	adds r1, r0, r1
	ldrb r7, [r2, #2]
	adds r0, r7, r6
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	add r0, r8
	ldrh r1, [r4]
	adds r1, #0x10
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r2, [r2, #1]
	ldr r1, [sp]
	adds r0, r2, r1
	cmp r3, r0
	blt _08F0EFBA
_08F0EFE8:
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	ldr r4, [sp, #8]
	ldrb r0, [r4]
	adds r0, #2
	cmp r6, r0
	blt _08F0EF96
_08F0EFF8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F008: .4byte gUnknown_03003670
_08F0F00C: .4byte gUnknown_030034C0
_08F0F010: .4byte 0x06003140

	thumb_func_start sub_8F0F014
sub_8F0F014: @ 0x08F0F014
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08F0F03C @ =gUnknown_03003628
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F0F040
	movs r0, #4
	str r0, [sp]
	movs r3, #3
	str r3, [sp, #4]
	b _08F0F048
	.align 2, 0
_08F0F03C: .4byte gUnknown_03003628
_08F0F040:
	movs r6, #2
	str r6, [sp]
	movs r7, #2
	str r7, [sp, #4]
_08F0F048:
	cmp r1, #0
	beq _08F0F064
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08F0F060 @ =gUnknown_030034C0
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	b _08F0F074
	.align 2, 0
_08F0F060: .4byte gUnknown_030034C0
_08F0F064:
	movs r1, #0
	str r1, [sp, #0xc]
	ldr r0, _08F0F19C @ =gUnknown_030034C0
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
_08F0F074:
	movs r4, #0
	ldr r3, _08F0F1A0 @ =gUnknown_03003670
	subs r2, #4
	lsls r0, r2, #2
	adds r0, r0, r3
	str r2, [sp, #0x1c]
	ldrb r0, [r0]
	cmp r4, r0
	blt _08F0F088
	b _08F0F18C
_08F0F088:
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrb r1, [r0]
	subs r1, #1
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r0, r4, #0x18
	mov sb, r0
	cmp r1, sb
	blt _08F0F172
	ldr r1, _08F0F1A0 @ =gUnknown_03003670
	ldr r3, [sp, #0x1c]
	str r3, [sp, #0x10]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r6, [sp]
	lsls r6, r6, #0x18
	str r6, [sp, #0x18]
	asrs r6, r6, #0x18
	mov r8, r6
	ldr r7, [sp, #4]
	mov sl, r7
_08F0F0B6:
	movs r1, #0
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x20]
	ldr r3, [sp, #0x14]
	ldrb r0, [r3, #1]
	add r0, r8
	lsls r4, r2, #0x18
	cmp r1, r0
	bge _08F0F106
	asrs r6, r4, #0x18
	ldr r7, _08F0F1A0 @ =gUnknown_03003670
	mov ip, r7
	mov r0, sl
	rsbs r5, r0, #0
_08F0F0D2:
	ldr r7, [sp, #0x20]
	lsls r3, r7, #2
	add r3, ip
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	adds r1, r5, r2
	ldrb r0, [r3, #3]
	adds r1, r0, r1
	ldrb r7, [r3, #2]
	adds r0, r7, r6
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F0F1A4 @ =0x06003180
	adds r0, r0, r1
	mov r7, sp
	ldrh r7, [r7, #8]
	strh r7, [r0]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	asrs r2, r2, #0x18
	ldrb r0, [r3, #1]
	add r0, r8
	cmp r2, r0
	blt _08F0F0D2
_08F0F106:
	bl sub_8F0E7F0
	asrs r2, r4, #0x18
	cmp r4, sb
	beq _08F0F172
	movs r1, #0
	ldr r0, [sp, #0x10]
	mov ip, r0
	ldr r3, [sp, #0x14]
	ldrb r0, [r3, #1]
	add r0, r8
	cmp r1, r0
	bge _08F0F166
	str r2, [sp, #0x20]
	mov r6, sl
	rsbs r6, r6, #0
	str r6, [sp, #0x24]
	ldr r7, [sp, #0x18]
	asrs r5, r7, #0x18
_08F0F12C:
	mov r0, ip
	lsls r3, r0, #2
	ldr r6, _08F0F1A0 @ =gUnknown_03003670
	adds r3, r3, r6
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	ldr r7, [sp, #0x24]
	adds r1, r7, r2
	ldrb r0, [r3, #3]
	adds r1, r0, r1
	ldrb r6, [r3, #2]
	ldr r7, [sp, #0x20]
	adds r0, r6, r7
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F0F1A4 @ =0x06003180
	adds r0, r0, r1
	mov r6, sp
	ldrh r6, [r6, #0xc]
	strh r6, [r0]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	asrs r2, r2, #0x18
	ldrb r3, [r3, #1]
	adds r0, r3, r5
	cmp r2, r0
	blt _08F0F12C
_08F0F166:
	movs r7, #0xff
	lsls r7, r7, #0x18
	adds r0, r4, r7
	lsrs r2, r0, #0x18
	cmp r0, sb
	bge _08F0F0B6
_08F0F172:
	movs r1, #0x80
	lsls r1, r1, #0x11
	add r1, sb
	lsrs r4, r1, #0x18
	asrs r1, r1, #0x18
	ldr r3, _08F0F1A0 @ =gUnknown_03003670
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r1, r0
	bge _08F0F18C
	b _08F0F088
_08F0F18C:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F19C: .4byte gUnknown_030034C0
_08F0F1A0: .4byte gUnknown_03003670
_08F0F1A4: .4byte 0x06003180

	thumb_func_start sub_8F0F1A8
sub_8F0F1A8: @ 0x08F0F1A8
	push {r4, r5, lr}
	sub sp, #0x160
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	ldr r1, _08F0F1E8 @ =gUnknown_08F66E7C
	movs r2, #0xad
	lsls r2, r2, #1
	mov r0, sp
	bl memcpy
	add r0, sp, #0x15c
	ldr r1, _08F0F1EC @ =gUnknown_08F66FD6
	movs r2, #2
	bl memcpy
	cmp r4, #0
	beq _08F0F238
	bl sub_8F0F244
	cmp r4, #0xff
	bne _08F0F1FC
	ldr r1, _08F0F1F0 @ =gUnknown_03003500
	ldr r0, _08F0F1F4 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	ldr r1, _08F0F1F8 @ =0x00000514
	adds r4, r0, r1
	b _08F0F20C
	.align 2, 0
_08F0F1E8: .4byte gUnknown_08F66E7C
_08F0F1EC: .4byte gUnknown_08F66FD6
_08F0F1F0: .4byte gUnknown_03003500
_08F0F1F4: .4byte gUnknown_030036EC
_08F0F1F8: .4byte 0x00000514
_08F0F1FC:
	lsls r0, r5, #1
	add r0, sp
	ldrh r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08F0F20C:
	ldr r1, _08F0F21C @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0F220
	bl HandleTextWrapping
	b _08F0F224
	.align 2, 0
_08F0F21C: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0F220:
	movs r0, #1
	strb r0, [r1]
_08F0F224:
	adds r0, r4, #0
#ifdef JAPANESE
	bl DrawTextWithIdNoWait
#elif ENGLISH
	@get pre-parsing stuff to work so we can do auto line wraps
	bl copy_battle_line_to_ram
#endif
	add r0, sp, #0x15c
	bl HandleControlCodes
	ldr r0, _08F0F240 @ =gGameInfo
	ldrb r0, [r0, #0x18]
	bl sub_8F0E838
_08F0F238:
	add sp, #0x160
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F240: .4byte gGameInfo

	thumb_func_start sub_8F0F244
sub_8F0F244: @ 0x08F0F244
	push {lr}
	ldr r0, _08F0F260 @ =gUnknown_03003700
	ldrb r0, [r0]
	ldr r1, _08F0F264 @ =gUnknown_03003640
	bl sub_8F0F270
	ldr r0, _08F0F268 @ =gUnknown_030036EC
	ldrb r0, [r0]
	ldr r1, _08F0F26C @ =gUnknown_03003610
	bl sub_8F0F270
	pop {r0}
	bx r0
	.align 2, 0
_08F0F260: .4byte gUnknown_03003700
_08F0F264: .4byte gUnknown_03003640
_08F0F268: .4byte gUnknown_030036EC
_08F0F26C: .4byte gUnknown_03003610

	thumb_func_start sub_8F0F270
sub_8F0F270: @ 0x08F0F270
	push {r4, r5, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08F0F294
	ldr r2, _08F0F28C @ =gUnknown_03003500
	lsls r3, r0, #5
	adds r0, r3, r2
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F0F290 @ =gUnknown_03003208
	adds r1, r1, r0
	b _08F0F2C2
	.align 2, 0
_08F0F28C: .4byte gUnknown_03003500
_08F0F290: .4byte gUnknown_03003208
_08F0F294:
	ldr r3, _08F0F2B0 @ =gUnknown_03003500
	lsls r4, r0, #5
	adds r2, r4, r3
	ldr r0, _08F0F2B4 @ =gUnknown_030034E8
	ldr r1, [r0]
	ldrb r2, [r2, #0x18]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, _08F0F2B8 @ =0x00001770
	adds r0, r0, r1
	ldr r1, [r0]
	adds r2, r3, #0
	adds r3, r4, #0
	b _08F0F2C2
	.align 2, 0
_08F0F2B0: .4byte gUnknown_03003500
_08F0F2B4: .4byte gUnknown_030034E8
_08F0F2B8: .4byte 0x00001770
_08F0F2BC:
	strb r0, [r5]
	adds r1, #1
	adds r5, #1
_08F0F2C2:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0F2BC
	adds r1, r3, r2
	movs r0, #0x1c
	ldrb r1, [r1, #0x1a]
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08F0F2DE
	lsrs r0, r0, #0x1a
	adds r0, #0xc0
#ifdef JAPANESE
	strb r0, [r5]
	adds r5, #1
#elif ENGLISH
	@add a space between the enemy name and the suffix letters if there are multiple enemies
	bl add_space_to_enemy_name
#endif
_08F0F2DE:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8F0F2E8
sub_8F0F2E8: @ 0x08F0F2E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_8F105E4
	cmp r0, #0
	beq _08F0F2FA
_08F0F2F6:
	movs r0, #1
	b _08F0F3A6
_08F0F2FA:
	movs r0, #0
	mov r8, r0
	ldr r7, _08F0F394 @ =gUnknown_03003500
_08F0F300:
	movs r4, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	ldrb r0, [r7, #0x1d]
	ldr r1, _08F0F394 @ =gUnknown_03003500
	cmp r0, #0xff
	beq _08F0F32A
	cmp r0, #0x5e
	beq _08F0F346
_08F0F314:
	lsls r0, r4, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	bl sub_8F0E950
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	ble _08F0F32A
	adds r6, r0, #0
	adds r5, r4, #0
_08F0F32A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bhi _08F0F346
	lsls r0, r4, #5
	adds r0, r0, r7
	ldrb r0, [r0, #0x1d]
	ldr r1, _08F0F394 @ =gUnknown_03003500
	cmp r0, #0xff
	beq _08F0F32A
	cmp r0, #0x5e
	bne _08F0F314
	adds r5, r4, #0
_08F0F346:
	ldr r4, _08F0F398 @ =gUnknown_03003700
	strb r5, [r4]
	bl sub_8F0F3B0
	ldrb r4, [r4]
	lsls r0, r4, #5
	adds r0, r0, r7
	movs r1, #0xff
	strb r1, [r0, #0x1d]
	bl sub_8F105E4
	cmp r0, #0
	bne _08F0F2F6
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #7
	bls _08F0F300
	ldr r1, _08F0F39C @ =gUnknown_0300362C
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08F0F3A4
	ldr r0, _08F0F3A0 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	beq _08F0F2F6
	movs r0, #0x64
	bl sub_8F0E838
	movs r0, #0x92
	bl sub_8F0F1A8
	b _08F0F2F6
	.align 2, 0
_08F0F394: .4byte gUnknown_03003500
_08F0F398: .4byte gUnknown_03003700
_08F0F39C: .4byte gUnknown_0300362C
_08F0F3A0: .4byte gEnemyGroupSpecialEncounter
_08F0F3A4:
	movs r0, #0
_08F0F3A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8F0F3B0
sub_8F0F3B0: @ 0x08F0F3B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08F0F3E8 @ =gUnknown_03003500
	ldr r2, _08F0F3EC @ =gUnknown_03003700
	ldrb r3, [r2]
	lsls r0, r3, #5
	adds r3, r0, r1
	ldrb r0, [r3]
	mov r8, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _08F0F3CC
	b _08F0F4FA
_08F0F3CC:
	ldrb r1, [r3, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F0F3D8
	b _08F0F4FA
_08F0F3D8:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F0F3F0
	movs r0, #0x47
	bl sub_8F0F1A8
	b _08F0F4FA
	.align 2, 0
_08F0F3E8: .4byte gUnknown_03003500
_08F0F3EC: .4byte gUnknown_03003700
_08F0F3F0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08F0F400
	movs r0, #0x46
	bl sub_8F0F1A8
	b _08F0F4FA
_08F0F400:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08F0F440
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _08F0F41A
	movs r0, #0x3c
	bl sub_8F0F1A8
	b _08F0F4FA
_08F0F41A:
	ldrb r4, [r6]
	lsls r1, r4, #5
	add r1, r8
	movs r0, #0xef
	ldrb r2, [r1, #1]
	ands r0, r2
	strb r0, [r1, #1]
	ldr r1, _08F0F43C @ =gUnknown_030036EC
	ldrb r0, [r6]
	strb r0, [r1]
	bl sub_8F0EA98
	movs r0, #0x8e
	bl sub_8F0F1A8
	b _08F0F4FA
	.align 2, 0
_08F0F43C: .4byte gUnknown_030036EC
_08F0F440:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08F0F450
	movs r0, #0x68
	bl sub_8F0F1A8
	b _08F0F4FA
_08F0F450:
	movs r0, #2
	ldrb r4, [r3, #0x1e]
	ands r0, r4
	cmp r0, #0
	beq _08F0F468
	ldrb r3, [r3, #0x1d]
	cmp r3, #0x76
	beq _08F0F468
	movs r0, #0x56
	bl sub_8F0F1A8
	b _08F0F4FA
_08F0F468:
	mov r5, r8
	adds r4, r6, #0
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r1, r0, r5
	movs r0, #0x20
	ldrb r2, [r1, #0x1e]
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _08F0F4A8
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	beq _08F0F492
	movs r0, #0x1c
	bl sub_8F0F1A8
	b _08F0F4FA
_08F0F492:
	ldrb r4, [r4]
	lsls r1, r4, #5
	adds r1, r1, r5
	movs r0, #0xdf
	ldrb r3, [r1, #0x1e]
	ands r0, r3
	strb r0, [r1, #0x1e]
	movs r0, #0x8b
	bl sub_8F0F1A8
	b _08F0F4FA
_08F0F4A8:
	movs r0, #8
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F0F4B8
	movs r0, #0x3a
	bl sub_8F0F1A8
_08F0F4B8:
	ldr r3, _08F0F504 @ =gUnknown_03003690
	ldr r2, _08F0F508 @ =gUnknown_08F70840
	ldrb r4, [r6]
	lsls r0, r4, #5
	add r0, r8
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r1, [r0]
	strh r1, [r3]
	ldrb r4, [r6]
	lsls r0, r4, #5
	add r0, r8
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08F0F50C @ =0x00006805
	adds r1, r1, r0
	strh r1, [r3]
	bl sub_8F0F514
	ldrb r6, [r6]
	lsls r0, r6, #5
	add r0, r8
	ldrb r0, [r0, #0x1d]
	cmp r0, #8
	bne _08F0F4FA
	ldr r0, _08F0F510 @ =gUnknown_030034F0
	strb r7, [r0]
_08F0F4FA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F504: .4byte gUnknown_03003690
_08F0F508: .4byte gUnknown_08F70840
_08F0F50C: .4byte 0x00006805
_08F0F510: .4byte gUnknown_030034F0

	thumb_func_start sub_8F0F514
sub_8F0F514: @ 0x08F0F514
	push {r4, r5, lr}
	sub sp, #0x34
	ldr r1, _08F0F550 @ =gUnknown_08F66FD8
	mov r0, sp
	movs r2, #0x34
	bl memcpy
	ldr r4, _08F0F554 @ =gUnknown_03003604
	ldr r5, _08F0F558 @ =gUnknown_08F70840
_08F0F526:
	ldr r0, _08F0F55C @ =gUnknown_03003690
	ldrh r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsrs r0, r0, #4
	strb r0, [r4]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F0F526
	ldr r1, _08F0F554 @ =gUnknown_03003604
	movs r0, #0xff
	strb r0, [r1]
	add sp, #0x34
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F550: .4byte gUnknown_08F66FD8
_08F0F554: .4byte gUnknown_03003604
_08F0F558: .4byte gUnknown_08F70840
_08F0F55C: .4byte gUnknown_03003690

	thumb_func_start sub_8F0F560
sub_8F0F560: @ 0x08F0F560
	ldr r1, _08F0F56C @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_08F0F56C: .4byte gUnknown_03003690

	thumb_func_start sub_8F0F570
sub_8F0F570: @ 0x08F0F570
	push {r4, lr}
	ldr r0, _08F0F590 @ =gUnknown_08F70840
	ldr r1, _08F0F594 @ =gUnknown_03003690
	ldrh r1, [r1]
	adds r0, r1, r0
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0xb
	bls _08F0F586
	b _08F0F720
_08F0F586:
	lsls r0, r1, #2
	ldr r1, _08F0F598 @ =_08F0F59C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0F590: .4byte gUnknown_08F70840
_08F0F594: .4byte gUnknown_03003690
_08F0F598: .4byte _08F0F59C
_08F0F59C: @ jump table
	.4byte _08F0F5CC @ case 0
	.4byte _08F0F5DC @ case 1
	.4byte _08F0F5FC @ case 2
	.4byte _08F0F614 @ case 3
	.4byte _08F0F63E @ case 4
	.4byte _08F0F654 @ case 5
	.4byte _08F0F66A @ case 6
	.4byte _08F0F678 @ case 7
	.4byte _08F0F698 @ case 8
	.4byte _08F0F6B8 @ case 9
	.4byte _08F0F6D8 @ case 10
	.4byte _08F0F6FE @ case 11
_08F0F5CC:
	ldr r0, _08F0F5D8 @ =gUnknown_03003700
	ldrb r0, [r0]
	bl sub_8F1045C
	b _08F0F720
	.align 2, 0
_08F0F5D8: .4byte gUnknown_03003700
_08F0F5DC:
	ldr r0, _08F0F5EC @ =gUnknown_030036EC
	ldrb r1, [r0]
	cmp r1, #3
	bhi _08F0F5F4
	ldr r1, _08F0F5F0 @ =gUnknown_03003600
	movs r0, #1
	strb r0, [r1]
	b _08F0F720
	.align 2, 0
_08F0F5EC: .4byte gUnknown_030036EC
_08F0F5F0: .4byte gUnknown_03003600
_08F0F5F4:
	ldrb r0, [r0]
	bl sub_8F10490
	b _08F0F720
_08F0F5FC:
	ldr r0, _08F0F608 @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F610
	ldr r1, _08F0F60C @ =gUnknown_08F662C0
	b _08F0F61E
	.align 2, 0
_08F0F608: .4byte gUnknown_030036EC
_08F0F60C: .4byte gUnknown_08F662C0
_08F0F610:
	movs r0, #0xf
	b _08F0F6F6
_08F0F614:
	ldr r4, _08F0F628 @ =gUnknown_030036EC
	ldrb r0, [r4]
	cmp r0, #3
	bhi _08F0F630
	ldr r1, _08F0F62C @ =gUnknown_08F662CA
_08F0F61E:
	movs r0, #0xf
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F628: .4byte gUnknown_030036EC
_08F0F62C: .4byte gUnknown_08F662CA
_08F0F630:
	movs r0, #2
	bl sub_8F0E770
	ldrb r0, [r4]
	bl sub_8F1045C
	b _08F0F720
_08F0F63E:
	movs r0, #0x2d
	bl sub_8F0F1A8
	bl sub_8F10130
	cmp r0, #0
	bne _08F0F720
	movs r0, #0x40
	bl sub_8F0F1A8
	b _08F0F720
_08F0F654:
	movs r0, #0x2e
	bl sub_8F0F1A8
	bl sub_8F10130
	cmp r0, #0
	bne _08F0F720
	movs r0, #0x41
	bl sub_8F0F1A8
	b _08F0F720
_08F0F66A:
	ldr r1, _08F0F674 @ =gUnknown_03003600
	movs r0, #2
	strb r0, [r1]
	b _08F0F720
	.align 2, 0
_08F0F674: .4byte gUnknown_03003600
_08F0F678:
	ldr r0, _08F0F68C @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F694
	ldr r1, _08F0F690 @ =gUnknown_08F662C0
	movs r0, #0x16
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F68C: .4byte gUnknown_030036EC
_08F0F690: .4byte gUnknown_08F662C0
_08F0F694:
	movs r0, #0x16
	b _08F0F6F6
_08F0F698:
	ldr r0, _08F0F6AC @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F6B4
	ldr r1, _08F0F6B0 @ =gUnknown_08F662C0
	movs r0, #0x12
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F6AC: .4byte gUnknown_030036EC
_08F0F6B0: .4byte gUnknown_08F662C0
_08F0F6B4:
	movs r0, #0x12
	b _08F0F6F6
_08F0F6B8:
	ldr r0, _08F0F6CC @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F6D4
	ldr r1, _08F0F6D0 @ =gUnknown_08F662C0
	movs r0, #0x3d
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F6CC: .4byte gUnknown_030036EC
_08F0F6D0: .4byte gUnknown_08F662C0
_08F0F6D4:
	movs r0, #0x3d
	b _08F0F6F6
_08F0F6D8:
	ldr r0, _08F0F6EC @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F6F4
	ldr r1, _08F0F6F0 @ =gUnknown_08F662C0
	movs r0, #0x28
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F6EC: .4byte gUnknown_030036EC
_08F0F6F0: .4byte gUnknown_08F662C0
_08F0F6F4:
	movs r0, #0x28
_08F0F6F6:
	movs r1, #3
	bl sub_8F104FC
	b _08F0F720
_08F0F6FE:
	ldr r0, _08F0F710 @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F718
	ldr r1, _08F0F714 @ =gUnknown_08F662E0
	movs r0, #0x2a
	bl sub_8F10548
	b _08F0F720
	.align 2, 0
_08F0F710: .4byte gUnknown_030036EC
_08F0F714: .4byte gUnknown_08F662E0
_08F0F718:
	movs r0, #0x2a
	movs r1, #3
	bl sub_8F104FC
_08F0F720:
	ldr r1, _08F0F730 @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F730: .4byte gUnknown_03003690

	thumb_func_start sub_8F0F734
sub_8F0F734: @ 0x08F0F734
	push {r4, lr}
	ldr r1, _08F0F798 @ =gUnknown_08F70840
	ldr r0, _08F0F79C @ =gUnknown_03003690
	ldrh r0, [r0]
	adds r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r3, _08F0F7A0 @ =gUnknown_03003688
	lsls r0, r1, #3
	ldr r2, _08F0F7A4 @ =gUnknown_08F5C51C
	adds r0, r0, r2
	str r0, [r3]
	ldr r0, _08F0F7A8 @ =gUnknown_030034E8
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0x8d
	lsls r0, r0, #5
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r2, _08F0F7AC @ =gUnknown_030036A0
	ldrb r0, [r1]
	ldr r4, _08F0F7B0 @ =gUnknown_03003680
	cmp r0, #0
	beq _08F0F772
_08F0F766:
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0F766
_08F0F772:
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r3]
	ldrb r0, [r0, #7]
	strh r0, [r4]
	movs r0, #0x64
	bl sub_8F0F1A8
	bl sub_8F101A8
	adds r1, r0, #0
	cmp r1, #0
	bne _08F0F7B8
	ldr r0, _08F0F7B4 @ =gUnknown_03003604
	strb r1, [r0]
	movs r0, #0x51
	bl sub_8F0F1A8
	b _08F0F810
	.align 2, 0
_08F0F798: .4byte gUnknown_08F70840
_08F0F79C: .4byte gUnknown_03003690
_08F0F7A0: .4byte gUnknown_03003688
_08F0F7A4: .4byte gUnknown_08F5C51C
_08F0F7A8: .4byte gUnknown_030034E8
_08F0F7AC: .4byte gUnknown_030036A0
_08F0F7B0: .4byte gUnknown_03003680
_08F0F7B4: .4byte gUnknown_03003604
_08F0F7B8:
	bl sub_8F101CC
	adds r1, r0, #0
	cmp r1, #0
	bne _08F0F7D4
	ldr r0, _08F0F7D0 @ =gUnknown_03003604
	strb r1, [r0]
	movs r0, #0x54
	bl sub_8F0F1A8
	b _08F0F810
	.align 2, 0
_08F0F7D0: .4byte gUnknown_03003604
_08F0F7D4:
	ldr r0, _08F0F7EC @ =gUnknown_03003500
	ldr r1, _08F0F7F0 @ =gUnknown_03003700
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r1, r1, r0
	ldrh r2, [r1, #4]
	ldrh r0, [r4]
	cmp r2, r0
	bhs _08F0F7F4
	movs r0, #0
	b _08F0F7F6
	.align 2, 0
_08F0F7EC: .4byte gUnknown_03003500
_08F0F7F0: .4byte gUnknown_03003700
_08F0F7F4:
	subs r0, r2, r0
_08F0F7F6:
	strh r0, [r1, #4]
	bl sub_8F0EA98
	ldr r4, _08F0F818 @ =gUnknown_03003668
	ldrb r0, [r4]
	bl sub_8F0E770
	movs r0, #0
	strb r0, [r4]
	ldr r1, _08F0F81C @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
_08F0F810:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F818: .4byte gUnknown_03003668
_08F0F81C: .4byte gUnknown_03003690

	thumb_func_start sub_8F0F820
sub_8F0F820: @ 0x08F0F820
	push {r4, r5, lr}
	ldr r5, _08F0F878 @ =gUnknown_08F70840
	ldr r4, _08F0F87C @ =gUnknown_03003690
	ldrh r0, [r4]
	adds r0, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	ldr r3, _08F0F880 @ =gUnknown_030036F0
	lsls r1, r0, #3
	ldr r2, _08F0F884 @ =gItemData
	adds r1, r1, r2
	str r1, [r3]
	bl sub_8F11098
	ldr r0, _08F0F888 @ =gUnknown_03003700
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F856
	ldrh r4, [r4]
	adds r1, r4, r5
	movs r0, #0xf
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #1
	bne _08F0F856
	bl sub_8F10398
_08F0F856:
	movs r0, #0x63
	bl sub_8F0F1A8
	ldr r4, _08F0F88C @ =gUnknown_03003668
	ldrb r0, [r4]
	bl sub_8F0E770
	movs r0, #0
	strb r0, [r4]
	ldr r1, _08F0F87C @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F878: .4byte gUnknown_08F70840
_08F0F87C: .4byte gUnknown_03003690
_08F0F880: .4byte gUnknown_030036F0
_08F0F884: .4byte gItemData
_08F0F888: .4byte gUnknown_03003700
_08F0F88C: .4byte gUnknown_03003668

	thumb_func_start sub_8F0F890
sub_8F0F890: @ 0x08F0F890
	push {r4, r5, lr}
	ldr r5, _08F0F8CC @ =gUnknown_08F70840
	ldr r4, _08F0F8D0 @ =gUnknown_03003690
	ldrh r0, [r4]
	adds r0, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	ldr r3, _08F0F8D4 @ =gUnknown_030036F0
	lsls r1, r0, #3
	ldr r2, _08F0F8D8 @ =gItemData
	adds r1, r1, r2
	str r1, [r3]
	bl sub_8F11098
	ldr r0, _08F0F8DC @ =gUnknown_03003700
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0F92A
	ldrh r4, [r4]
	adds r0, r4, r5
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #1
	beq _08F0F8FC
	cmp r1, #1
	bgt _08F0F8E0
	cmp r1, #0
	beq _08F0F8E6
	b _08F0F92A
	.align 2, 0
_08F0F8CC: .4byte gUnknown_08F70840
_08F0F8D0: .4byte gUnknown_03003690
_08F0F8D4: .4byte gUnknown_030036F0
_08F0F8D8: .4byte gItemData
_08F0F8DC: .4byte gUnknown_03003700
_08F0F8E0:
	cmp r1, #2
	beq _08F0F912
	b _08F0F92A
_08F0F8E6:
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08F0F92A
	bl sub_8F10398
	movs r0, #0x75
	bl sub_8F0F1A8
	b _08F0F92A
_08F0F8FC:
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #0
	bne _08F0F92A
	bl sub_8F10398
	movs r0, #0x78
	bl sub_8F0F1A8
	b _08F0F92A
_08F0F912:
	ldr r1, _08F0F938 @ =gGameInfo
	ldrb r0, [r1, #0x1f]
	subs r0, #1
	strb r0, [r1, #0x1f]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08F0F92A
	bl sub_8F10398
	movs r0, #0x91
	bl sub_8F0F1A8
_08F0F92A:
	ldr r1, _08F0F93C @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0F938: .4byte gGameInfo
_08F0F93C: .4byte gUnknown_03003690

	thumb_func_start sub_8F0F940
sub_8F0F940: @ 0x08F0F940
	push {r4, lr}
	ldr r0, _08F0F964 @ =gUnknown_08F70840
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
_08F0F964: .4byte gUnknown_08F70840
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
	ldr r1, _08F0F9C0 @ =gUnknown_03003500
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
_08F0F9C0: .4byte gUnknown_03003500
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
	ldr r2, _08F0FA04 @ =gUnknown_03003500
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
_08F0FA04: .4byte gUnknown_03003500
_08F0FA08: .4byte gUnknown_03003700
_08F0FA0C: .4byte gUnknown_030036EC
_08F0FA10:
	ldr r2, _08F0FA3C @ =gUnknown_03003500
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
_08F0FA3C: .4byte gUnknown_03003500
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

	thumb_func_start sub_8F0FA90
sub_8F0FA90: @ 0x08F0FA90
	push {r4, r5, r6, lr}
	ldr r2, _08F0FAB8 @ =gUnknown_08F70840
	ldr r0, _08F0FABC @ =gUnknown_03003690
	ldrh r1, [r0]
	adds r0, r1, #1
	adds r0, r0, r2
	ldrb r3, [r0]
	adds r1, r1, r2
	movs r0, #0xf
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #9
	bls _08F0FAAC
	b _08F0FD12
_08F0FAAC:
	lsls r0, r0, #2
	ldr r1, _08F0FAC0 @ =_08F0FAC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0FAB8: .4byte gUnknown_08F70840
_08F0FABC: .4byte gUnknown_03003690
_08F0FAC0: .4byte _08F0FAC4
_08F0FAC4: @ jump table
	.4byte _08F0FAEC @ case 0
	.4byte _08F0FB50 @ case 1
	.4byte _08F0FB88 @ case 2
	.4byte _08F0FBC8 @ case 3
	.4byte _08F0FBFC @ case 4
	.4byte _08F0FC0C @ case 5
	.4byte _08F0FCE0 @ case 6
	.4byte _08F0FCF8 @ case 7
	.4byte _08F0FD04 @ case 8
	.4byte _08F0FD0C @ case 9
_08F0FAEC:
	ldr r1, _08F0FB0C @ =gUnknown_03003500
	ldr r0, _08F0FB10 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _08F0FB14 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0, #8]
	cmp r2, r1
	blt _08F0FB18
	lsrs r0, r1, #1
	subs r1, r2, r0
	b _08F0FB2C
	.align 2, 0
_08F0FB0C: .4byte gUnknown_03003500
_08F0FB10: .4byte gUnknown_03003700
_08F0FB14: .4byte gUnknown_030036EC
_08F0FB18:
	lsls r0, r2, #1
	adds r0, r0, r2
	subs r0, r0, r1
	cmp r0, #0
	bge _08F0FB24
	adds r0, #3
_08F0FB24:
	asrs r1, r0, #2
	cmp r1, #0
	bge _08F0FB2C
	movs r1, #0
_08F0FB2C:
	ldr r0, _08F0FB48 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	bne _08F0FB3C
	bl Random
	lsrs r0, r0, #0x1e
	adds r1, r0, #4
_08F0FB3C:
	cmp r1, #0
	bne _08F0FB42
	movs r1, #1
_08F0FB42:
	ldr r0, _08F0FB4C @ =gUnknown_03003680
	strh r1, [r0]
	b _08F0FD12
	.align 2, 0
_08F0FB48: .4byte gEnemyGroupSpecialEncounter
_08F0FB4C: .4byte gUnknown_03003680
_08F0FB50:
	ldr r4, _08F0FB78 @ =gUnknown_03003680
	ldr r1, _08F0FB7C @ =gUnknown_03003500
	ldr r0, _08F0FB80 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	strh r0, [r4]
	ldr r0, _08F0FB84 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	beq _08F0FB6A
	b _08F0FD12
_08F0FB6A:
	bl Random
	lsrs r0, r0, #0x1d
	adds r0, #8
	strh r0, [r4]
	b _08F0FD12
	.align 2, 0
_08F0FB78: .4byte gUnknown_03003680
_08F0FB7C: .4byte gUnknown_03003500
_08F0FB80: .4byte gUnknown_03003700
_08F0FB84: .4byte gEnemyGroupSpecialEncounter
_08F0FB88:
	ldr r2, _08F0FBB8 @ =gUnknown_03003680
	strh r3, [r2]
	ldr r0, _08F0FBBC @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #5
	beq _08F0FB96
	b _08F0FD12
_08F0FB96:
	ldr r0, _08F0FBC0 @ =gUnknown_03003700
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0FBA0
	b _08F0FD12
_08F0FBA0:
	ldr r1, _08F0FBC4 @ =gUnknown_030034F0
	ldrb r4, [r1]
	lsls r0, r4, #2
	adds r0, r0, r4
	subs r0, r3, r0
	strh r0, [r2]
	cmp r0, #0
	ble _08F0FBB2
	b _08F0FD12
_08F0FBB2:
	movs r0, #1
	strh r0, [r2]
	b _08F0FD12
	.align 2, 0
_08F0FBB8: .4byte gUnknown_03003680
_08F0FBBC: .4byte gEnemyGroupSpecialEncounter
_08F0FBC0: .4byte gUnknown_03003700
_08F0FBC4: .4byte gUnknown_030034F0
_08F0FBC8:
	ldr r5, _08F0FBF4 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r5]
	cmp r0, #5
	beq _08F0FBD2
	b _08F0FD12
_08F0FBD2:
	ldr r4, _08F0FBF8 @ =gUnknown_030036FC
	ldrb r0, [r4]
	bl sub_8F0F1A8
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9e
	beq _08F0FBEA
	b _08F0FD12
_08F0FBEA:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _08F0FD12
	.align 2, 0
_08F0FBF4: .4byte gEnemyGroupSpecialEncounter
_08F0FBF8: .4byte gUnknown_030036FC
_08F0FBFC:
	ldr r0, _08F0FC08 @ =gUnknown_03003654
	ldrb r1, [r0]
	orrs r3, r1
	strb r3, [r0]
	b _08F0FD12
	.align 2, 0
_08F0FC08: .4byte gUnknown_03003654
_08F0FC0C:
	movs r0, #0x6a
	bl sub_8F0F1A8
	ldr r0, _08F0FC24 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #2
	bne _08F0FC28
	movs r0, #0x95
	bl sub_8F0F1A8
	b _08F0FD12
	.align 2, 0
_08F0FC24: .4byte gEnemyGroupSpecialEncounter
_08F0FC28:
	cmp r0, #3
	bne _08F0FC34
	movs r0, #0x94
	bl sub_8F0F1A8
	b _08F0FD12
_08F0FC34:
	cmp r0, #4
	bne _08F0FC40
	movs r0, #0x93
	bl sub_8F0F1A8
	b _08F0FD12
_08F0FC40:
	cmp r0, #5
	beq _08F0FC48
	cmp r0, #6
	bne _08F0FC50
_08F0FC48:
	movs r0, #1
	bl sub_8F0F1A8
	b _08F0FD12
_08F0FC50:
	ldr r6, _08F0FC60 @ =gUnknown_030036EC
	ldrb r4, [r6]
	cmp r4, #3
	bhi _08F0FC64
	movs r0, #0x90
	bl sub_8F0F1A8
	b _08F0FD12
	.align 2, 0
_08F0FC60: .4byte gUnknown_030036EC
_08F0FC64:
	ldr r5, _08F0FCD8 @ =gUnknown_03003708
	ldr r4, _08F0FCDC @ =gUnknown_03003500
	ldrb r1, [r6]
	lsls r0, r1, #5
	adds r0, r0, r4
	ldrh r0, [r0, #6]
	str r0, [r5]
	movs r0, #0x24
	bl sub_8F0F1A8
	ldrb r1, [r6]
	lsls r0, r1, #5
	adds r0, r0, r4
	ldrh r0, [r0, #8]
	str r0, [r5]
	movs r0, #0x25
	bl sub_8F0F1A8
	ldrb r6, [r6]
	lsls r0, r6, #5
	adds r0, r0, r4
	ldrb r4, [r0, #0xa]
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08F0FC9E
	movs r0, #0x6b
	bl sub_8F0F1A8
_08F0FC9E:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08F0FCAC
	movs r0, #0x6c
	bl sub_8F0F1A8
_08F0FCAC:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08F0FCBA
	movs r0, #0x6d
	bl sub_8F0F1A8
_08F0FCBA:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _08F0FCD0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08F0FCD0
	movs r0, #0x6f
	bl sub_8F0F1A8
_08F0FCD0:
	movs r0, #0xff
	bl sub_8F0F1A8
	b _08F0FD12
	.align 2, 0
_08F0FCD8: .4byte gUnknown_03003708
_08F0FCDC: .4byte gUnknown_03003500
_08F0FCE0:
	ldr r0, _08F0FCF4 @ =gUnknown_03003700
	movs r4, #1
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08F0FCEC
	movs r4, #0xf
_08F0FCEC:
	adds r0, r4, #0
	bl sub_8F0E770
	b _08F0FD12
	.align 2, 0
_08F0FCF4: .4byte gUnknown_03003700
_08F0FCF8:
	ldr r0, _08F0FD00 @ =gUnknown_03003668
	strb r3, [r0]
	b _08F0FD12
	.align 2, 0
_08F0FD00: .4byte gUnknown_03003668
_08F0FD04:
	adds r0, r3, #0
	bl sub_8F0F1A8
	b _08F0FD12
_08F0FD0C:
	adds r0, r3, #0
	bl sub_8F0E770
_08F0FD12:
	ldr r1, _08F0FD20 @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F0FD20: .4byte gUnknown_03003690

	thumb_func_start sub_8F0FD24
sub_8F0FD24: @ 0x08F0FD24
	push {lr}
	bl sub_8F0FD64
	cmp r0, #0
	bne _08F0FD34
	bl sub_8F100C8
	b _08F0FD3C
_08F0FD34:
	ldr r1, _08F0FD40 @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
_08F0FD3C:
	pop {r0}
	bx r0
	.align 2, 0
_08F0FD40: .4byte gUnknown_03003690

	thumb_func_start sub_8F0FD44
sub_8F0FD44: @ 0x08F0FD44
	push {lr}
	bl sub_8F0FD64
	cmp r0, #0
	beq _08F0FD54
	bl sub_8F100C8
	b _08F0FD5C
_08F0FD54:
	ldr r1, _08F0FD60 @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
_08F0FD5C:
	pop {r0}
	bx r0
	.align 2, 0
_08F0FD60: .4byte gUnknown_03003690

	thumb_func_start sub_8F0FD64
sub_8F0FD64: @ 0x08F0FD64
	push {r4, r5, lr}
	ldr r0, _08F0FD84 @ =gUnknown_08F70840
	ldr r1, _08F0FD88 @ =gUnknown_03003690
	ldrh r1, [r1]
	adds r0, r1, r0
	movs r1, #0xf
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0xd
	bls _08F0FD7A
	b _08F10058
_08F0FD7A:
	lsls r0, r1, #2
	ldr r1, _08F0FD8C @ =_08F0FD90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0FD84: .4byte gUnknown_08F70840
_08F0FD88: .4byte gUnknown_03003690
_08F0FD8C: .4byte _08F0FD90
_08F0FD90: @ jump table
	.4byte _08F0FDC8 @ case 0
	.4byte _08F0FE08 @ case 1
	.4byte _08F0FE74 @ case 2
	.4byte _08F0FEC4 @ case 3
	.4byte _08F0FEE4 @ case 4
	.4byte _08F0FF00 @ case 5
	.4byte _08F0FF44 @ case 6
	.4byte _08F0FF70 @ case 7
	.4byte _08F0FF94 @ case 8
	.4byte _08F0FF9C @ case 9
	.4byte _08F0FFEE @ case 10
	.4byte _08F10010 @ case 11
	.4byte _08F10020 @ case 12
	.4byte _08F10040 @ case 13
_08F0FDC8:
	ldr r3, _08F0FDFC @ =gUnknown_03003500
	ldr r0, _08F0FE00 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0FDDA
	b _08F10058
_08F0FDDA:
	movs r2, #0x80
	adds r0, r2, #0
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F0FDE8
	b _08F10058
_08F0FDE8:
	ldr r0, _08F0FE04 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0FDF8
	b _08F10058
_08F0FDF8:
	adds r0, r2, #0
	b _08F0FF58
	.align 2, 0
_08F0FDFC: .4byte gUnknown_03003500
_08F0FE00: .4byte gUnknown_03003700
_08F0FE04: .4byte gUnknown_030036EC
_08F0FE08:
	ldr r0, _08F0FE5C @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0FE12
	b _08F0FF40
_08F0FE12:
	ldr r2, _08F0FE60 @ =gUnknown_03003500
	ldr r0, _08F0FE64 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r1, r0, r2
	movs r0, #0x70
	ldrb r3, [r1, #1]
	ands r0, r3
	cmp r0, #0
	beq _08F0FE28
	b _08F0FF40
_08F0FE28:
	movs r0, #0x80
	ldrb r3, [r1, #0x1e]
	ands r0, r3
	cmp r0, #0
	beq _08F0FE34
	b _08F0FF40
_08F0FE34:
	ldr r5, _08F0FE68 @ =gUnknown_0300365C
	ldrb r0, [r1, #0xb]
	strb r0, [r5]
	ldr r4, _08F0FE6C @ =gUnknown_03003660
	ldr r0, _08F0FE70 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xb]
	strb r0, [r4]
	bl sub_8F10064
	movs r2, #0
	ldrb r5, [r5]
	ldrb r4, [r4]
	cmp r5, r4
	bhs _08F0FE58
	b _08F1005A
_08F0FE58:
	b _08F10058
	.align 2, 0
_08F0FE5C: .4byte gUnknown_0300317C
_08F0FE60: .4byte gUnknown_03003500
_08F0FE64: .4byte gUnknown_030036EC
_08F0FE68: .4byte gUnknown_0300365C
_08F0FE6C: .4byte gUnknown_03003660
_08F0FE70: .4byte gUnknown_03003700
_08F0FE74:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F0FE7E
	b _08F10058
_08F0FE7E:
	ldr r5, _08F0FEB0 @ =gUnknown_0300365C
	ldr r1, _08F0FEB4 @ =gUnknown_03003500
	ldr r0, _08F0FEB8 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0xb]
	strb r0, [r5]
	ldr r4, _08F0FEBC @ =gUnknown_03003660
	ldr r0, _08F0FEC0 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0xb]
	strb r0, [r4]
	bl sub_8F10064
	movs r2, #0
	ldrb r4, [r4]
	ldrb r5, [r5]
	cmp r4, r5
	bhs _08F0FEAC
	b _08F1005A
_08F0FEAC:
	b _08F10058
	.align 2, 0
_08F0FEB0: .4byte gUnknown_0300365C
_08F0FEB4: .4byte gUnknown_03003500
_08F0FEB8: .4byte gUnknown_03003700
_08F0FEBC: .4byte gUnknown_03003660
_08F0FEC0: .4byte gUnknown_030036EC
_08F0FEC4:
	ldr r2, _08F0FEDC @ =gUnknown_03003500
	ldr r0, _08F0FEE0 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r1, r0, #5
	adds r1, r1, r2
	movs r0, #0x80
	ldrb r1, [r1, #0x1e]
	ands r0, r1
	cmp r0, #0
	bne _08F0FEDA
	b _08F10058
_08F0FEDA:
	b _08F0FF94
	.align 2, 0
_08F0FEDC: .4byte gUnknown_03003500
_08F0FEE0: .4byte gUnknown_03003700
_08F0FEE4:
	ldr r0, _08F0FEF8 @ =gUnknown_03003700
	movs r2, #1
	ldrb r0, [r0]
	cmp r0, #3
	bls _08F0FEF0
	b _08F1005A
_08F0FEF0:
	ldr r0, _08F0FEFC @ =gUnknown_0300317C
	ldrb r0, [r0]
	b _08F10016
	.align 2, 0
_08F0FEF8: .4byte gUnknown_03003700
_08F0FEFC: .4byte gUnknown_0300317C
_08F0FF00:
	movs r2, #1
	ldr r0, _08F0FF20 @ =gUnknown_030036EC
	ldrb r1, [r0]
	cmp r1, #3
	bls _08F0FF0C
	b _08F1005A
_08F0FF0C:
	ldr r1, _08F0FF24 @ =gUnknown_03003500
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F0FF28 @ =gUnknown_030031F0
	adds r1, r1, r0
	movs r0, #0
	b _08F0FF3A
	.align 2, 0
_08F0FF20: .4byte gUnknown_030036EC
_08F0FF24: .4byte gUnknown_03003500
_08F0FF28: .4byte gUnknown_030031F0
_08F0FF2C:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #1
	cmp r0, #7
	bls _08F0FF3A
	b _08F1005A
_08F0FF3A:
	ldrb r3, [r1]
	cmp r3, #0x68
	bne _08F0FF2C
_08F0FF40:
	movs r2, #0
	b _08F1005A
_08F0FF44:
	ldr r1, _08F0FF68 @ =gUnknown_03003500
	ldr r0, _08F0FF6C @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0FF56
	b _08F10058
_08F0FF56:
	movs r0, #0x80
_08F0FF58:
	ldrb r1, [r1, #1]
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
	b _08F1005A
	.align 2, 0
_08F0FF68: .4byte gUnknown_03003500
_08F0FF6C: .4byte gUnknown_030036EC
_08F0FF70:
	ldr r1, _08F0FF8C @ =gUnknown_03003500
	ldr r0, _08F0FF90 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r1, [r0, #0xa]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08F10058
	movs r0, #1
	ands r0, r1
	b _08F10014
	.align 2, 0
_08F0FF8C: .4byte gUnknown_03003500
_08F0FF90: .4byte gUnknown_030036EC
_08F0FF94:
	bl Random
	lsrs r2, r0, #0x1f
	b _08F1005A
_08F0FF9C:
	ldr r0, _08F0FFD4 @ =gUnknown_03003500
	ldr r1, _08F0FFD8 @ =gUnknown_03003700
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r1, r1, r0
	adds r3, r0, #0
	ldr r2, _08F0FFDC @ =gUnknown_030036EC
	ldrb r1, [r1, #0x1d]
	cmp r1, #0x60
	bne _08F0FFE4
	ldrb r1, [r2]
	lsls r0, r1, #5
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0FFC6
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F0FFE4
_08F0FFC6:
	ldr r1, _08F0FFE0 @ =gUnknown_03003604
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x11
	bl sub_8F0F1A8
	b _08F10058
	.align 2, 0
_08F0FFD4: .4byte gUnknown_03003500
_08F0FFD8: .4byte gUnknown_03003700
_08F0FFDC: .4byte gUnknown_030036EC
_08F0FFE0: .4byte gUnknown_03003604
_08F0FFE4:
	ldrb r2, [r2]
	lsls r0, r2, #5
	adds r0, r0, r3
	movs r1, #0x80
	b _08F0FFFA
_08F0FFEE:
	ldr r1, _08F10008 @ =gUnknown_03003500
	ldr r0, _08F1000C @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #4
_08F0FFFA:
	ldrb r0, [r0, #0xa]
	ands r1, r0
	movs r2, #1
	cmp r1, #0
	beq _08F1005A
	b _08F0FF40
	.align 2, 0
_08F10008: .4byte gUnknown_03003500
_08F1000C: .4byte gUnknown_030036EC
_08F10010:
	ldr r0, _08F1001C @ =gUnknown_030034F8
	ldrb r0, [r0]
_08F10014:
	movs r2, #1
_08F10016:
	cmp r0, #0
	beq _08F1005A
	b _08F0FF40
	.align 2, 0
_08F1001C: .4byte gUnknown_030034F8
_08F10020:
	ldr r0, _08F10038 @ =gUnknown_030036EC
	movs r2, #1
	ldrb r3, [r0]
	cmp r3, #3
	bhi _08F1005A
	ldr r1, _08F1003C @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	cmp r0, #4
	bls _08F1005A
	b _08F0FF40
	.align 2, 0
_08F10038: .4byte gUnknown_030036EC
_08F1003C: .4byte gUnknown_03003500
_08F10040:
	ldr r0, _08F10054 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #1
	cmp r0, #1
	bhi _08F1005A
	b _08F0FF40
	.align 2, 0
_08F10054: .4byte gEnemyGroupSpecialEncounter
_08F10058:
	movs r2, #1
_08F1005A:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F10064
sub_8F10064: @ 0x08F10064
	push {r4, lr}
	ldr r2, _08F10094 @ =gUnknown_0300365C
	ldr r4, _08F10098 @ =gUnknown_03003660
	ldr r0, _08F1009C @ =0xFFFFFF00
	ldrb r1, [r4]
	orrs r0, r1
	ldrb r1, [r2]
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, #0x66
	cmp r0, #0
	bge _08F10082
	movs r0, #0
_08F10082:
	strb r0, [r2]
	bl Random
	lsrs r0, r0, #0x18
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F10094: .4byte gUnknown_0300365C
_08F10098: .4byte gUnknown_03003660
_08F1009C: .4byte 0xFFFFFF00

	thumb_func_start sub_8F100A0
sub_8F100A0: @ 0x08F100A0
	push {r4, r5, lr}
	ldr r5, _08F100B8 @ =gUnknown_03003690
	ldrh r4, [r5]
	bl sub_8F100C8
	bl sub_8F0F514
	adds r4, #3
	strh r4, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F100B8: .4byte gUnknown_03003690

	thumb_func_start sub_8F100BC
sub_8F100BC: @ 0x08F100BC
	push {lr}
	bl sub_8F100C8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F100C8
sub_8F100C8: @ 0x08F100C8
	ldr r2, _08F100E8 @ =gUnknown_08F70840
	ldr r3, _08F100EC @ =gUnknown_03003690
	ldrh r0, [r3]
	adds r1, r0, #1
	adds r1, r1, r2
	adds r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrb r1, [r1]
	orrs r0, r1
	ldr r1, _08F100F0 @ =0x00006805
	adds r0, r0, r1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08F100E8: .4byte gUnknown_08F70840
_08F100EC: .4byte gUnknown_03003690
_08F100F0: .4byte 0x00006805

	thumb_func_start sub_8F100F4
sub_8F100F4: @ 0x08F100F4
	push {r4, r5, r6, lr}
	ldr r0, _08F10128 @ =gUnknown_08F70840
	ldr r2, _08F1012C @ =gUnknown_03003690
	ldrh r1, [r2]
	adds r0, r1, r0
	movs r4, #0xf
	ldrb r0, [r0]
	ands r4, r0
	adds r1, #1
	strh r1, [r2]
	ldrh r6, [r2]
	adds r5, r2, #0
_08F1010C:
	bl sub_8F0F514
	ldrh r1, [r5]
	strh r6, [r5]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08F1010C
	ldr r0, _08F1012C @ =gUnknown_03003690
	strh r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F10128: .4byte gUnknown_08F70840
_08F1012C: .4byte gUnknown_03003690

	thumb_func_start sub_8F10130
sub_8F10130: @ 0x08F10130
	push {r4, r5, r6, lr}
	movs r2, #4
	ldr r6, _08F1015C @ =gUnknown_03003700
	ldrb r3, [r6]
	movs r4, #1
_08F1013A:
	cmp r2, r3
	beq _08F1014E
	ldr r5, _08F10160 @ =gUnknown_03003500
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
_08F10160: .4byte gUnknown_03003500
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
	bl sub_8F0F1A8
	movs r0, #1
_08F1019E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08F101A4: .4byte gUnknown_030036EC

	thumb_func_start sub_8F101A8
sub_8F101A8: @ 0x08F101A8
	ldr r2, _08F101C0 @ =gUnknown_03003500
	ldr r0, _08F101C4 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r1, r0, #5
	adds r1, r1, r2
	movs r0, #0x40
	ldrb r1, [r1, #0x1e]
	ands r0, r1
	cmp r0, #0
	bne _08F101C8
	movs r0, #1
	b _08F101CA
	.align 2, 0
_08F101C0: .4byte gUnknown_03003500
_08F101C4: .4byte gUnknown_03003700
_08F101C8:
	movs r0, #0
_08F101CA:
	bx lr

	thumb_func_start sub_8F101CC
sub_8F101CC: @ 0x08F101CC
	ldr r1, _08F101E4 @ =gUnknown_03003500
	ldr r0, _08F101E8 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _08F101EC @ =gUnknown_03003680
	ldrh r0, [r0, #4]
	ldrh r1, [r1]
	cmp r0, r1
	blo _08F101F0
	movs r0, #1
	b _08F101F2
	.align 2, 0
_08F101E4: .4byte gUnknown_03003500
_08F101E8: .4byte gUnknown_03003700
_08F101EC: .4byte gUnknown_03003680
_08F101F0:
	movs r0, #0
_08F101F2:
	bx lr

	thumb_func_start sub_8F101F4
sub_8F101F4: @ 0x08F101F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08F10224 @ =gUnknown_03003500
	lsls r0, r7, #5
	adds r1, r0, r1
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08F102F6
	movs r0, #0
	strh r0, [r1, #2]
	cmp r7, #3
	bhi _08F1022C
	ldrb r1, [r1, #0x18]
	cmp r1, #5
	bne _08F1024C
	ldr r1, _08F10228 @ =gEnemyGroupSpecialEncounter
	strb r0, [r1]
	movs r0, #0x88
	b _08F10256
	.align 2, 0
_08F10224: .4byte gUnknown_03003500
_08F10228: .4byte gEnemyGroupSpecialEncounter
_08F1022C:
	ldrb r1, [r1, #0x18]
	lsls r0, r1, #5
	ldr r1, _08F10244 @ =gEnemyData+7
	adds r0, r0, r1
	movs r1, #0x1c
	ldrb r0, [r0]
	ands r1, r0
	lsrs r1, r1, #2
	cmp r1, #1
	bne _08F10248
	movs r0, #0x19
	b _08F10256
	.align 2, 0
_08F10244: .4byte gEnemyData+7
_08F10248:
	cmp r1, #2
	beq _08F10254
_08F1024C:
	adds r0, r7, #0
	bl Maybe_WinBattle
	b _08F10296
_08F10254:
	movs r0, #0x1a
_08F10256:
	ldr r6, _08F102B8 @ =gUnknown_030036EC
	ldrb r1, [r6]
	mov sl, r1
	ldr r5, _08F102BC @ =gUnknown_03003700
	ldrb r1, [r5]
	mov sb, r1
	ldr r4, _08F102C0 @ =gUnknown_03003690
	ldrh r1, [r4]
	mov r8, r1
	strb r7, [r5]
	ldr r2, _08F102C4 @ =gUnknown_08F70840
	lsls r0, r0, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	strh r1, [r4]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08F102C8 @ =0x00006805
	adds r1, r1, r0
	strh r1, [r4]
	bl sub_8F0F514
	mov r1, sl
	strb r1, [r6]
	mov r0, sb
	strb r0, [r5]
	mov r1, r8
	strh r1, [r4]
	ldrb r7, [r6]
_08F10296:
	ldr r0, _08F102B8 @ =gUnknown_030036EC
	ldrb r1, [r0]
	mov sl, r1
	strb r7, [r0]
	cmp r7, #3
	bhi _08F102D0
	ldr r1, _08F102CC @ =gUnknown_03003500
	lsls r0, r7, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	cmp r0, #5
	beq _08F102F0
	movs r0, #0x10
	bl sub_8F0F1A8
	b _08F102F0
	.align 2, 0
_08F102B8: .4byte gUnknown_030036EC
_08F102BC: .4byte gUnknown_03003700
_08F102C0: .4byte gUnknown_03003690
_08F102C4: .4byte gUnknown_08F70840
_08F102C8: .4byte 0x00006805
_08F102CC: .4byte gUnknown_03003500
_08F102D0:
	ldr r0, _08F10304 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #6
	beq _08F102F0
	ldr r1, _08F10308 @ =gUnknown_03003500
	lsls r0, r7, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	ldr r1, _08F1030C @ =gEnemyData+9
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #2
	adds r0, #0x79
	bl sub_8F0F1A8
_08F102F0:
	ldr r0, _08F10310 @ =gUnknown_030036EC
	mov r1, sl
	strb r1, [r0]
_08F102F6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F10304: .4byte gEnemyGroupSpecialEncounter
_08F10308: .4byte gUnknown_03003500
_08F1030C: .4byte gEnemyData+9
_08F10310: .4byte gUnknown_030036EC

	thumb_func_start Maybe_WinBattle
Maybe_WinBattle: @ 0x08F10314
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	ldr r1, _08F10374 @ =gUnknown_03003500
	lsls r0, r5, #5
	adds r4, r0, r1
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #0x80
	strb r0, [r4, #1]
	cmp r5, #3
	bls _08F10388
	movs r0, #0
	strb r0, [r4]
	ldr r3, _08F10378 @ =gExperiencePointsGained
	ldr r2, _08F1037C @ =gEnemyData
	ldrb r0, [r4, #0x18]
	lsls r1, r0, #5
	adds r1, r1, r2
	ldr r0, [r3]
	ldrh r1, [r1, #0x1a]
	adds r0, r1, r0
	str r0, [r3]
	ldr r1, _08F10380 @ =gMoneyGained
	ldrb r3, [r4, #0x18]
	lsls r0, r3, #5
	adds r0, r0, r2
	ldrh r3, [r1]
	ldrh r0, [r0, #0x1c]
	adds r0, r3, r0
	strh r0, [r1]
	ldrb r4, [r4, #0x18]
	lsls r0, r4, #5
	adds r0, r0, r2
	ldrb r1, [r0, #0x1e]
	cmp r1, #0
	beq _08F10364
	ldr r0, _08F10384 @ =gUnknown_03003664
	strb r1, [r0]
_08F10364:
	movs r0, #6
	bl PlaySfxById0
	adds r0, r5, #0
	bl sub_8F10490
	b _08F1038E
	.align 2, 0
_08F10374: .4byte gUnknown_03003500
_08F10378: .4byte gExperiencePointsGained
_08F1037C: .4byte gEnemyData
_08F10380: .4byte gMoneyGained
_08F10384: .4byte gUnknown_03003664
_08F10388:
	movs r0, #0x15
	bl sub_8F0E770
_08F1038E:
	bl sub_8F0EA98
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8F10398
sub_8F10398: @ 0x08F10398
	push {lr}
	ldr r1, _08F103B8 @ =gUnknown_03003500
	ldr r0, _08F103BC @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r2, r0, #5
	adds r2, r2, r1
	ldrb r1, [r2, #0x18]
	lsls r0, r1, #6
	ldr r1, _08F103C0 @ =gUnknown_030031F0
	adds r0, r0, r1
	ldrb r1, [r2, #0x19]
	ldrb r2, [r2, #0x1b]
	bl sub_8F103C4
	pop {r0}
	bx r0
	.align 2, 0
_08F103B8: .4byte gUnknown_03003500
_08F103BC: .4byte gUnknown_03003700
_08F103C0: .4byte gUnknown_030031F0

	thumb_func_start sub_8F103C4
sub_8F103C4: @ 0x08F103C4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r1, r2, #3
	ldr r0, _08F10400 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x80
	ldrb r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	bne _08F1041A
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, r2
	beq _08F10410
	movs r3, #0
_08F103EA:
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, r2
	beq _08F10410
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08F103EA
	b _08F1041A
	.align 2, 0
_08F10400: .4byte gItemData
_08F10404:
	adds r1, r4, r3
	ldrb r0, [r1, #1]
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08F10410:
	cmp r3, #6
	bls _08F10404
	adds r1, r4, r3
	movs r0, #0
	strb r0, [r1]
_08F1041A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8F10420
sub_8F10420: @ 0x08F10420
	lsls r0, r0, #0x18
	ldr r3, _08F10448 @ =gMiscContainer
	ldr r1, _08F1044C @ =gUnknown_03003500
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldrb r2, [r0, #0x18]
	lsls r1, r2, #5
	ldr r2, _08F10450 @ =gEnemyData
	adds r1, r1, r2
	str r1, [r3]
	ldr r2, _08F10454 @ =gUnknown_03003684
	movs r1, #3
	ldrb r0, [r0, #0x1a]
	ands r1, r0
	strb r1, [r2]
	ldr r0, _08F10458 @ =gUnknown_030034F4
	lsls r1, r1, #3
	strb r1, [r0]
	bx lr
	.align 2, 0
_08F10448: .4byte gMiscContainer
_08F1044C: .4byte gUnknown_03003500
_08F10450: .4byte gEnemyData
_08F10454: .4byte gUnknown_03003684
_08F10458: .4byte gUnknown_030034F4

	thumb_func_start sub_8F1045C
sub_8F1045C: @ 0x08F1045C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_8F10420
	ldr r0, _08F1048C @ =gUnknown_03003500
	lsls r1, r4, #5
	adds r1, r1, r0
	movs r0, #0x7f
	ldrb r2, [r1, #1]
	ands r0, r2
	strb r0, [r1, #1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_8F0F014
	adds r0, r4, #0
	bl sub_8F0EE8C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F1048C: .4byte gUnknown_03003500

	thumb_func_start sub_8F10490
sub_8F10490: @ 0x08F10490
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_8F10420
	ldr r0, _08F104E8 @ =gUnknown_03003500
	lsls r6, r4, #5
	adds r6, r6, r0
	movs r5, #0
	strb r5, [r6]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8F0F014
	adds r0, r4, #0
	bl sub_8F0EF4C
	ldr r0, _08F104EC @ =gUnknown_030036C0
	subs r4, #4
	lsls r4, r4, #3
	adds r4, r4, r0
	strb r5, [r4]
	str r5, [sp]
	ldr r2, _08F104F0 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	movs r0, #3
	ldrb r6, [r6, #0x1a]
	ands r0, r6
	lsls r0, r0, #0xb
	ldr r1, _08F104F4 @ =0x0600E000
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08F104F8 @ =0x85000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F104E8: .4byte gUnknown_03003500
_08F104EC: .4byte gUnknown_030036C0
_08F104F0: .4byte 0x040000D4
_08F104F4: .4byte 0x0600E000
_08F104F8: .4byte 0x85000200

	thumb_func_start sub_8F104FC
sub_8F104FC: @ 0x08F104FC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r0, #2
	bl sub_8F0E770
	ldr r4, _08F10544 @ =gUnknown_030036EC
	ldrb r0, [r4]
	bl sub_8F10420
_08F10514:
	ldrb r0, [r4]
	bl sub_8F0EF4C
	adds r0, r6, #0
	bl sub_8F0EA18
	bl sub_8F0E7F0
	ldrb r0, [r4]
	bl sub_8F0EE8C
	movs r0, #0xf
	bl sub_8F0EA18
	bl sub_8F0E7F0
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08F10514
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F10544: .4byte gUnknown_030036EC

	thumb_func_start sub_8F10548
sub_8F10548: @ 0x08F10548
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #0x10
	bl sub_8F0E770
	ldrb r1, [r5]
	adds r5, #1
	ldrb r7, [r5]
	adds r5, #1
	ldr r0, _08F10584 @ =0x04000012
	mov sl, r0
	subs r0, #2
	mov sb, r0
_08F10570:
	movs r4, #0
	subs r6, r1, #1
_08F10574:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08F10588
	mov r0, r8
	bl sub_8F0EA18
	b _08F1058E
	.align 2, 0
_08F10584: .4byte 0x04000012
_08F10588:
	movs r0, #0xf
	bl sub_8F0EA18
_08F1058E:
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r4, #0
	adds r1, r5, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r1, sl
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r5, r2
	movs r0, #0
	ldrsb r0, [r2, r0]
	mov r1, sb
	strh r0, [r1]
	bl sub_8F0E7F0
	cmp r4, r7
	blo _08F10574
	lsls r0, r6, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08F10570
	ldr r0, _08F105E0 @ =0x04000012
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	movs r0, #0xf
	bl sub_8F0EA18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F105E0: .4byte 0x04000012

	thumb_func_start sub_8F105E4
sub_8F105E4: @ 0x08F105E4
	push {r4, r5, r6, lr}
	ldr r1, _08F10610 @ =gUnknown_03003600
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r1, #0
	cmp r0, #1
	bhi _08F105F8
	b _08F10720
_08F105F8:
	ldr r0, _08F10614 @ =gUnknown_0300362C
	ldrb r0, [r0]
	cmp r0, #1
	bne _08F10624
	ldr r0, _08F10618 @ =gEnemyGroupSpecialEncounter
	ldrb r1, [r0]
	cmp r1, #4
	bne _08F10624
	ldr r0, _08F1061C @ =gUnknown_03003700
	strb r1, [r0]
	ldr r1, _08F10620 @ =gUnknown_03003500
	b _08F10650
	.align 2, 0
_08F10610: .4byte gUnknown_03003600
_08F10614: .4byte gUnknown_0300362C
_08F10618: .4byte gEnemyGroupSpecialEncounter
_08F1061C: .4byte gUnknown_03003700
_08F10620: .4byte gUnknown_03003500
_08F10624:
	movs r3, #0
	ldr r4, _08F1067C @ =gUnknown_03003500
	adds r1, r4, #0
	movs r5, #0xe0
_08F1062C:
	lsls r0, r3, #5
	adds r2, r0, r4
	ldrb r0, [r2]
	cmp r0, #0
	beq _08F10646
	ldrb r0, [r2, #0x18]
	cmp r0, #4
	bhi _08F10646
	adds r0, r5, #0
	ldrb r2, [r2, #1]
	ands r0, r2
	cmp r0, #0
	beq _08F10698
_08F10646:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F1062C
_08F10650:
	movs r0, #0x80
	strb r0, [r1, #1]
	adds r2, r1, #0
	adds r2, #0x21
	strb r0, [r2]
	adds r2, #0x20
	strb r0, [r2]
	adds r1, #0x61
	strb r0, [r1]
	ldr r0, _08F10680 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #4
	bne _08F10684
	movs r0, #3
	strb r0, [r6]
	movs r0, #4
	bl sub_8F0E770
	movs r0, #0x8f
	bl sub_8F0F1A8
	b _08F10720
	.align 2, 0
_08F1067C: .4byte gUnknown_03003500
_08F10680: .4byte gEnemyGroupSpecialEncounter
_08F10684:
	ldr r1, _08F10694 @ =gUnknown_03003700
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xe
	bl sub_8F0F1A8
	b _08F10720
	.align 2, 0
_08F10694: .4byte gUnknown_03003700
_08F10698:
	adds r1, r4, #0
	adds r1, #0x80
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r5, [r1]
	ldrb r0, [r0]
	orrs r5, r0
	adds r0, r4, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	orrs r5, r0
	adds r0, r4, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	orrs r5, r0
	cmp r5, #0
	bne _08F1070E
	ldr r0, _08F106F4 @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F106C8
	movs r0, #0x31
	bl sub_8F0F1A8
_08F106C8:
	ldr r0, _08F106F8 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #6
	bne _08F10700
	ldr r4, _08F106FC @ =gUnknown_030036EC
	strb r5, [r4]
	bl sub_8F11C34
	movs r0, #1
	strb r0, [r4]
	bl sub_8F11C34
	movs r0, #2
	strb r0, [r4]
	bl sub_8F11C34
	movs r0, #3
	strb r0, [r4]
	bl sub_8F11C34
	b _08F10720
	.align 2, 0
_08F106F4: .4byte gUnknown_0300317C
_08F106F8: .4byte gEnemyGroupSpecialEncounter
_08F106FC: .4byte gUnknown_030036EC
_08F10700:
	movs r0, #5
	bl ChangeBgMusic
	movs r0, #0xd
	bl sub_8F0F1A8
	b _08F10720
_08F1070E:
	ldr r0, _08F10724 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	bne _08F10728
	movs r0, #0
	bl sub_8F0EAAC
	cmp r0, #0
	bne _08F10728
_08F10720:
	movs r0, #1
	b _08F1072A
	.align 2, 0
_08F10724: .4byte gEnemyGroupSpecialEncounter
_08F10728:
	movs r0, #0
_08F1072A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8F10730
sub_8F10730: @ 0x08F10730
	push {r4, r5, r6, lr}
	ldr r1, _08F1079C @ =gUnknown_03003700
	movs r0, #0
	strb r0, [r1]
	ldr r6, _08F107A0 @ =gUnknown_03003500
	adds r5, r1, #0
_08F1073C:
	ldrb r1, [r5]
	lsls r0, r1, #5
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0, #0x1d]
	ldrb r2, [r5]
	lsls r1, r2, #5
	adds r1, r1, r6
	movs r0, #0xf7
	ldrb r3, [r1, #0x1e]
	ands r0, r3
	strb r0, [r1, #0x1e]
	ldrb r2, [r5]
	lsls r0, r2, #5
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F107C4
	movs r0, #0xf4
	ldrb r3, [r1, #1]
	ands r0, r3
	cmp r0, #0
	bne _08F107C4
	movs r0, #0x20
	ldrb r3, [r1, #0x1e]
	ands r0, r3
	cmp r0, #0
	bne _08F107C4
	ldr r4, _08F107A4 @ =gUnknown_030036E8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F107A8
	cmp r2, #3
	bhi _08F107A8
	ldrb r1, [r1, #0x18]
	cmp r1, #4
	bhi _08F107A8
	bl sub_8F10C08
	cmp r0, #0
	bne _08F1073C
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F107AC
	bl sub_8F107D8
	b _08F107AC
	.align 2, 0
_08F1079C: .4byte gUnknown_03003700
_08F107A0: .4byte gUnknown_03003500
_08F107A4: .4byte gUnknown_030036E8
_08F107A8:
	bl sub_8F107D8
_08F107AC:
	ldrb r1, [r5]
	lsls r0, r1, #5
	adds r1, r0, r6
	ldrb r0, [r1, #0x1d]
	cmp r0, #0x53
	beq _08F107BC
	cmp r0, #0x59
	bne _08F107C4
_08F107BC:
	movs r0, #8
	ldrb r2, [r1, #0x1e]
	orrs r0, r2
	strb r0, [r1, #0x1e]
_08F107C4:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08F1073C
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8F107D8
sub_8F107D8: @ 0x08F107D8
	push {r4, r5, r6, r7, lr}
	ldr r4, _08F10884 @ =gUnknown_03003700
	ldrb r0, [r4]
	cmp r0, #3
	bls _08F107E4
	b _08F10A14
_08F107E4:
	ldr r1, _08F10888 @ =gUnknown_030036EC
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08F1088C @ =gUnknown_03003500
	adds r4, r1, #0
_08F107EE:
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F1080C
	ldrb r2, [r1, #0x18]
	cmp r2, #4
	bhi _08F1080C
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F1080C
	b _08F109F6
_08F1080C:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08F107EE
_08F1081A:
	ldr r1, _08F10888 @ =gUnknown_030036EC
	movs r0, #0
	strb r0, [r1]
	ldr r7, _08F1088C @ =gUnknown_03003500
	adds r6, r1, #0
_08F10824:
	ldrb r1, [r1]
	lsls r0, r1, #5
	adds r2, r0, r7
	ldrb r0, [r2]
	cmp r0, #0
	beq _08F10890
	movs r0, #0x80
	ldrb r3, [r2, #1]
	ands r0, r3
	cmp r0, #0
	bne _08F10890
	ldrb r2, [r2, #0x18]
	cmp r2, #4
	bhi _08F10890
	adds r0, r1, #0
	bl sub_8F0EAAC
	cmp r0, #0
	bne _08F10890
	movs r4, #0
	movs r5, #0
_08F1084E:
	lsls r0, r4, #5
	adds r1, r0, r7
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F10874
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	bne _08F10874
	adds r0, r4, #0
	bl sub_8F0EAAC
	cmp r0, #0
	bne _08F10874
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	strb r4, [r6]
_08F10874:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08F1084E
	cmp r5, #1
	bhi _08F10924
	b _08F1093C
	.align 2, 0
_08F10884: .4byte gUnknown_03003700
_08F10888: .4byte gUnknown_030036EC
_08F1088C: .4byte gUnknown_03003500
_08F10890:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08F10918 @ =gUnknown_030036EC
	cmp r0, #3
	bls _08F10824
_08F108A0:
	ldr r1, _08F10918 @ =gUnknown_030036EC
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08F1091C @ =gUnknown_03003500
_08F108A8:
	ldrb r2, [r1]
	lsls r0, r2, #5
	adds r3, r0, r4
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F108CC
	ldrb r0, [r3, #0x18]
	cmp r0, #4
	bhi _08F108CC
	ldrb r2, [r3, #1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08F108CC
	movs r0, #0x70
	ands r0, r2
	cmp r0, #0
	bne _08F109B4
_08F108CC:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08F108A8
_08F108DA:
	ldr r2, _08F1091C @ =gUnknown_03003500
	ldr r0, _08F10920 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0x1d]
	adds r5, r2, #0
_08F108EA:
	bl Random
	lsrs r0, r0, #0x1e
	adds r0, #4
	adds r4, r0, #0
	lsls r0, r4, #5
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F108EA
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	bne _08F108EA
	ldr r1, _08F1091C @ =gUnknown_03003500
	ldr r0, _08F10920 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	strb r4, [r0, #0x1c]
	b _08F10B06
	.align 2, 0
_08F10918: .4byte gUnknown_030036EC
_08F1091C: .4byte gUnknown_03003500
_08F10920: .4byte gUnknown_03003700
_08F10924:
	movs r0, #0xc
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F10930
	b _08F10B06
_08F10930:
	movs r0, #0xb
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F1093C
	b _08F10B06
_08F1093C:
	movs r0, #0xa
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F10948
	b _08F10AF6
_08F10948:
	movs r0, #9
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F10954
	b _08F10AF6
_08F10954:
	movs r0, #8
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F10960
	b _08F10AF6
_08F10960:
	ldr r4, _08F109A0 @ =gUnknown_03003700
	ldrb r0, [r4]
	bl sub_8F1225C
	cmp r0, #0
	bne _08F108A0
	ldr r3, _08F109A4 @ =gUnknown_03003624
	ldrb r0, [r3]
	cmp r0, #0x43
	beq _08F108A0
	cmp r0, #0x47
	beq _08F108A0
	ldr r2, _08F109A8 @ =gUnknown_03003500
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r0, r0, r2
	ldr r1, _08F109AC @ =gUnknown_03003658
	ldrb r1, [r1]
	strb r1, [r0, #0x19]
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r0, r0, r2
	ldr r1, _08F109B0 @ =gUnknown_03003694
	ldrb r1, [r1]
	strb r1, [r0, #0x1d]
	ldrb r4, [r4]
	lsls r0, r4, #5
	adds r0, r0, r2
	ldrb r1, [r3]
	strb r1, [r0, #0x1b]
	b _08F10AF6
	.align 2, 0
_08F109A0: .4byte gUnknown_03003700
_08F109A4: .4byte gUnknown_03003624
_08F109A8: .4byte gUnknown_03003500
_08F109AC: .4byte gUnknown_03003658
_08F109B0: .4byte gUnknown_03003694
_08F109B4:
	ldrb r5, [r3, #1]
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	bne _08F109D0
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	bne _08F109DC
	movs r0, #0x40
	ands r5, r0
	cmp r5, #0
	bne _08F109E8
	b _08F108DA
_08F109D0:
	movs r0, #0x11
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F109DC
	b _08F10AF6
_08F109DC:
	movs r0, #0x13
	bl sub_8F10B1C
	cmp r0, #0
	bne _08F109E8
	b _08F10AF6
_08F109E8:
	movs r0, #0x12
	bl sub_8F10B1C
	cmp r0, #0
	beq _08F109F4
	b _08F108DA
_08F109F4:
	b _08F10AF6
_08F109F6:
	movs r0, #0x14
	bl sub_8F10B1C
	cmp r0, #0
	beq _08F10A02
	b _08F1081A
_08F10A02:
	ldr r0, _08F10A10 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r5
	ldrb r1, [r4]
	b _08F10B04
	.align 2, 0
_08F10A10: .4byte gUnknown_03003700
_08F10A14:
	bl Random
	ldr r2, _08F10A44 @ =gUnknown_03003500
	ldrb r3, [r4]
	lsls r1, r3, #5
	adds r3, r1, r2
	lsrs r0, r0, #0x1d
	adds r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3, #0x1d]
	ldrb r1, [r4]
	lsls r0, r1, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0x1d]
	bl sub_8F11230
	cmp r0, #1
	beq _08F10A48
	cmp r0, #2
	beq _08F10A5C
	b _08F10AF6
	.align 2, 0
_08F10A44: .4byte gUnknown_03003500
_08F10A48:
	ldr r4, _08F10A58 @ =gUnknown_030036EC
_08F10A4A:
	bl sub_8F10B94
	ldrb r2, [r4]
	cmp r2, #3
	bls _08F10A4A
	b _08F10AF6
	.align 2, 0
_08F10A58: .4byte gUnknown_030036EC
_08F10A5C:
	ldrb r4, [r4]
	cmp r4, #3
	bls _08F10AEA
	ldr r0, _08F10B0C @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #3
	bne _08F10A82
	movs r4, #3
_08F10A6C:
	adds r0, r4, #0
	movs r1, #6
	bl sub_8F10BC4
	cmp r0, #0
	bne _08F10AF6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F10A6C
_08F10A82:
	ldr r0, _08F10B0C @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #4
	bne _08F10AD2
	movs r4, #3
_08F10A8C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8F10BC4
	cmp r0, #0
	bne _08F10AF6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F10A8C
	movs r4, #3
_08F10AA4:
	adds r0, r4, #0
	movs r1, #2
	bl sub_8F10BC4
	cmp r0, #0
	bne _08F10AF6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F10AA4
	movs r4, #3
_08F10ABC:
	adds r0, r4, #0
	movs r1, #4
	bl sub_8F10BC4
	cmp r0, #0
	bne _08F10AF6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F10ABC
_08F10AD2:
	movs r4, #3
_08F10AD4:
	adds r0, r4, #0
	movs r1, #7
	bl sub_8F10BC4
	cmp r0, #0
	bne _08F10AF6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _08F10AD4
_08F10AEA:
	ldr r4, _08F10B10 @ =gUnknown_030036EC
_08F10AEC:
	bl sub_8F10B94
	ldrb r3, [r4]
	cmp r3, #3
	bhi _08F10AEC
_08F10AF6:
	ldr r1, _08F10B14 @ =gUnknown_03003500
	ldr r0, _08F10B18 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _08F10B10 @ =gUnknown_030036EC
	ldrb r1, [r1]
_08F10B04:
	strb r1, [r0, #0x1c]
_08F10B06:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F10B0C: .4byte gEnemyGroupSpecialEncounter
_08F10B10: .4byte gUnknown_030036EC
_08F10B14: .4byte gUnknown_03003500
_08F10B18: .4byte gUnknown_03003700

	thumb_func_start sub_8F10B1C
sub_8F10B1C: @ 0x08F10B1C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x18
	bl sub_8F10E6C
	lsrs r4, r4, #0x1b
	movs r0, #7
	ands r0, r5
	movs r1, #0x80
	asrs r1, r0
	ldr r0, _08F10B74 @ =gMiscContainer
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F10B8C
	ldr r3, _08F10B78 @ =gUnknown_03003688
	lsls r1, r5, #3
	ldr r0, _08F10B7C @ =gUnknown_08F5C51C
	adds r1, r1, r0
	str r1, [r3]
	ldr r2, _08F10B80 @ =gUnknown_03003500
	ldr r0, _08F10B84 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r1, [r1, #5]
	strb r1, [r0, #0x1d]
	ldr r1, _08F10B88 @ =gUnknown_03003680
	ldr r0, [r3]
	ldrb r0, [r0, #7]
	strh r0, [r1]
	bl sub_8F101CC
	cmp r0, #0
	beq _08F10B8C
	bl sub_8F101A8
	cmp r0, #0
	beq _08F10B8C
	movs r0, #0
	b _08F10B8E
	.align 2, 0
_08F10B74: .4byte gMiscContainer
_08F10B78: .4byte gUnknown_03003688
_08F10B7C: .4byte gUnknown_08F5C51C
_08F10B80: .4byte gUnknown_03003500
_08F10B84: .4byte gUnknown_03003700
_08F10B88: .4byte gUnknown_03003680
_08F10B8C:
	movs r0, #1
_08F10B8E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8F10B94
sub_8F10B94: @ 0x08F10B94
	push {r4, lr}
	ldr r4, _08F10BBC @ =gUnknown_03003500
_08F10B98:
	bl Random
	lsrs r2, r0, #0x1d
	lsls r0, r2, #5
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F10B98
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	bne _08F10B98
	ldr r0, _08F10BC0 @ =gUnknown_030036EC
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F10BBC: .4byte gUnknown_03003500
_08F10BC0: .4byte gUnknown_030036EC

	thumb_func_start sub_8F10BC4
sub_8F10BC4: @ 0x08F10BC4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08F10BF8 @ =gGameInfo
	adds r0, #8
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r1
	bne _08F10C04
	ldr r0, _08F10BFC @ =gUnknown_03003500
	lsls r1, r2, #5
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F10C04
	movs r0, #0x80
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	bne _08F10C04
	ldr r0, _08F10C00 @ =gUnknown_030036EC
	strb r2, [r0]
	movs r0, #1
	b _08F10C06
	.align 2, 0
_08F10BF8: .4byte gGameInfo
_08F10BFC: .4byte gUnknown_03003500
_08F10C00: .4byte gUnknown_030036EC
_08F10C04:
	movs r0, #0
_08F10C06:
	bx lr

	thumb_func_start sub_8F10C08
sub_8F10C08: @ 0x08F10C08
	push {r4, r5, r6, lr}
	sub sp, #0x54
	mov r1, sp
	ldr r0, _08F10C64 @ =gUnknown_08F6700C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldr r0, _08F10C68 @ =gUnknown_08F67030
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	add r2, sp, #0x24
	adds r1, r2, #0
	ldr r0, _08F10C6C @ =gUnknown_08F67038
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	movs r0, #0
	str r0, [sp, #0x50]
	adds r6, r2, #0
	add r5, sp, #0x50
_08F10C40:
	movs r0, #0
	str r0, [sp, #0x50]
	movs r0, #0xa
	bl sub_8F0EA64
	bl sub_8F0F244
	ldr r0, _08F10C70 @ =gUnknown_08F27886
	bl HandleControlCodes
	ldr r0, _08F10C74 @ =gEnemyGroupSpecialEncounter
	ldrb r2, [r0]
	cmp r2, #1
	bne _08F10C78
	movs r2, #2
	add r4, sp, #0x48
	b _08F10C9C
	.align 2, 0
_08F10C64: .4byte gUnknown_08F6700C
_08F10C68: .4byte gUnknown_08F67030
_08F10C6C: .4byte gUnknown_08F67038
_08F10C70: .4byte gUnknown_08F27886
_08F10C74: .4byte gEnemyGroupSpecialEncounter
_08F10C78:
	ldr r1, _08F10C94 @ =gGameInfo
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F10C98
	cmp r2, #6
	bne _08F10C98
	movs r2, #0x13
	adds r4, r6, #0
	b _08F10C9C
	.align 2, 0
_08F10C94: .4byte gGameInfo
_08F10C98:
	movs r2, #2
	mov r4, sp
_08F10C9C:
	adds r0, r2, #0
	bl sub_8F0EA64
	adds r0, r4, #0
	adds r1, r5, #0
	bl HandleSelectMenuInput
	subs r0, #1
	cmp r0, #8
	bls _08F10CB2
	b _08F10E1C
_08F10CB2:
	lsls r0, r0, #2
	ldr r1, _08F10CBC @ =_08F10CC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F10CBC: .4byte _08F10CC0
_08F10CC0: @ jump table
	.4byte _08F10CE4 @ case 0
	.4byte _08F10D04 @ case 1
	.4byte _08F10D1C @ case 2
	.4byte _08F10D48 @ case 3
	.4byte _08F10D60 @ case 4
	.4byte _08F10DAC @ case 5
	.4byte _08F10DC4 @ case 6
	.4byte _08F10DFC @ case 7
	.4byte _08F10E02 @ case 8
_08F10CE4:
	ldr r1, _08F10CFC @ =gUnknown_03003500
	ldr r0, _08F10D00 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0x1d]
	movs r0, #1
	bl sub_8F10E94
	b _08F10D94
	.align 2, 0
_08F10CFC: .4byte gUnknown_03003500
_08F10D00: .4byte gUnknown_03003700
_08F10D04:
	ldr r1, _08F10D14 @ =gUnknown_030036E8
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08F10D18 @ =gUnknown_030036C0
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	b _08F10E60
	.align 2, 0
_08F10D14: .4byte gUnknown_030036E8
_08F10D18: .4byte gUnknown_030036C0
_08F10D1C:
	bl sub_8F10E6C
	movs r2, #1
	movs r3, #0
	ldr r0, _08F10D44 @ =gMiscContainer
	ldr r1, [r0]
_08F10D28:
	adds r0, r1, r2
	ldrb r0, [r0]
	orrs r3, r0
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F10D28
	cmp r3, #0
	bne _08F10D3E
	b _08F10C40
_08F10D3E:
	bl sub_8F110CC
	b _08F10D94
	.align 2, 0
_08F10D44: .4byte gMiscContainer
_08F10D48:
	ldr r1, _08F10D58 @ =gUnknown_03003500
	ldr r0, _08F10D5C @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #0x59
	strb r1, [r0, #0x1d]
	b _08F10E60
	.align 2, 0
_08F10D58: .4byte gUnknown_03003500
_08F10D5C: .4byte gUnknown_03003700
_08F10D60:
	ldr r2, _08F10D9C @ =gMiscContainer
	ldr r1, _08F10DA0 @ =gUnknown_03003500
	ldr r0, _08F10DA4 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F10DA8 @ =gUnknown_030031F0
	adds r1, r1, r0
	str r1, [r2]
	movs r2, #0
	movs r3, #0
_08F10D7A:
	adds r0, r1, r2
	ldrb r0, [r0]
	orrs r3, r0
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F10D7A
	cmp r3, #0
	bne _08F10D90
	b _08F10C40
_08F10D90:
	bl sub_8F10F9C
_08F10D94:
	cmp r0, #0
	beq _08F10D9A
	b _08F10C40
_08F10D9A:
	b _08F10E60
	.align 2, 0
_08F10D9C: .4byte gMiscContainer
_08F10DA0: .4byte gUnknown_03003500
_08F10DA4: .4byte gUnknown_03003700
_08F10DA8: .4byte gUnknown_030031F0
_08F10DAC:
	ldr r1, _08F10DBC @ =gUnknown_03003500
	ldr r0, _08F10DC0 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #0x48
	strb r1, [r0, #0x1d]
	b _08F10E60
	.align 2, 0
_08F10DBC: .4byte gUnknown_03003500
_08F10DC0: .4byte gUnknown_03003700
_08F10DC4:
	ldr r4, _08F10DF0 @ =gUnknown_030036EC
	movs r0, #4
	strb r0, [r4]
	bl sub_8F10EEC
	cmp r0, #0
	bge _08F10DD4
	b _08F10C40
_08F10DD4:
	subs r2, r0, #1
	strb r2, [r4]
	ldr r3, _08F10DF4 @ =gUnknown_03003500
	ldr r1, _08F10DF8 @ =gUnknown_03003700
	ldrb r4, [r1]
	lsls r0, r4, #5
	adds r0, r0, r3
	strb r2, [r0, #0x1c]
	ldrb r1, [r1]
	lsls r0, r1, #5
	adds r0, r0, r3
	movs r1, #0x6f
	strb r1, [r0, #0x1d]
	b _08F10E60
	.align 2, 0
_08F10DF0: .4byte gUnknown_030036EC
_08F10DF4: .4byte gUnknown_03003500
_08F10DF8: .4byte gUnknown_03003700
_08F10DFC:
	bl sub_8F12BC4
	b _08F10C40
_08F10E02:
	ldr r1, _08F10E14 @ =gUnknown_03003500
	ldr r0, _08F10E18 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #0x1c
	strb r1, [r0, #0x1d]
	b _08F10E60
	.align 2, 0
_08F10E14: .4byte gUnknown_03003500
_08F10E18: .4byte gUnknown_03003700
_08F10E1C:
	ldr r3, _08F10E58 @ =gUnknown_03003700
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F10E52
	adds r2, r3, #0
	ldr r4, _08F10E5C @ =gUnknown_03003500
_08F10E28:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #5
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F10E4C
	movs r0, #0xf4
	ldrb r5, [r1, #1]
	ands r0, r5
	cmp r0, #0
	bne _08F10E4C
	movs r0, #0x20
	ldrb r1, [r1, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _08F10E52
_08F10E4C:
	ldrb r0, [r3]
	cmp r0, #0
	bne _08F10E28
_08F10E52:
	movs r0, #1
	b _08F10E62
	.align 2, 0
_08F10E58: .4byte gUnknown_03003700
_08F10E5C: .4byte gUnknown_03003500
_08F10E60:
	movs r0, #0
_08F10E62:
	add sp, #0x54
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F10E6C
sub_8F10E6C: @ 0x08F10E6C
	ldr r2, _08F10E84 @ =gMiscContainer
	ldr r1, _08F10E88 @ =gUnknown_03003500
	ldr r0, _08F10E8C @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	ldr r1, _08F10E90 @ =gUnknown_03003200
	adds r0, r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08F10E84: .4byte gMiscContainer
_08F10E88: .4byte gUnknown_03003500
_08F10E8C: .4byte gUnknown_03003700
_08F10E90: .4byte gUnknown_03003200

	thumb_func_start sub_8F10E94
sub_8F10E94: @ 0x08F10E94
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8F11230
	cmp r0, #0
	bne _08F10EA6
	movs r0, #0
	b _08F10EE6
_08F10EA6:
	movs r1, #0
	cmp r0, #2
	bne _08F10EAE
	movs r1, #4
_08F10EAE:
	ldr r4, _08F10ED8 @ =gUnknown_030036EC
	ldr r5, _08F10EDC @ =gUnknown_03003700
	movs r0, #4
	ldrb r2, [r5]
	ands r0, r2
	eors r1, r0
	strb r1, [r4]
	bl sub_8F10EEC
	cmp r0, #0
	blt _08F10EE4
	subs r2, r0, #1
	strb r2, [r4]
	ldr r1, _08F10EE0 @ =gUnknown_03003500
	ldrb r5, [r5]
	lsls r0, r5, #5
	adds r0, r0, r1
	strb r2, [r0, #0x1c]
	movs r0, #0
	b _08F10EE6
	.align 2, 0
_08F10ED8: .4byte gUnknown_030036EC
_08F10EDC: .4byte gUnknown_03003700
_08F10EE0: .4byte gUnknown_03003500
_08F10EE4:
	movs r0, #1
_08F10EE6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8F10EEC
sub_8F10EEC: @ 0x08F10EEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _08F10F94 @ =gUnknown_030036EC
	ldrb r0, [r4]
	mov r8, r0
	movs r0, #0xb
	bl sub_8F0EA64
	movs r7, #0
	movs r5, #0
	ldr r1, _08F10F98 @ =gUnknown_03003500
	mov sb, r1
	mov sl, r4
	mov r6, sl
_08F10F10:
	ldrb r1, [r6]
	lsls r0, r1, #5
	mov r3, sb
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _08F10F5A
	cmp r1, #3
	bhi _08F10F28
	ldrb r2, [r2, #0x18]
	cmp r2, #4
	bhi _08F10F5A
_08F10F28:
	lsls r0, r5, #2
	mov r2, sp
	adds r4, r2, r0
	adds r0, r1, #1
	strh r0, [r4]
	movs r0, #0x10
	strb r0, [r4, #2]
	adds r0, r5, #0
	adds r0, #0x15
	strb r0, [r4, #3]
	bl sub_8F0F244
	ldrb r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r4, #3]
	bl SetTextPosition
	movs r0, #0xc
	bl sub_8F0EA64
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08F10F5A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	cmp r7, #3
	bls _08F10F10
	lsls r0, r5, #2
	mov r3, sp
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1]
	mov r1, r8
	mov r0, sl
	strb r1, [r0]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F10F94: .4byte gUnknown_030036EC
_08F10F98: .4byte gUnknown_03003500

	thumb_func_start sub_8F10F9C
sub_8F10F9C: @ 0x08F10F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	movs r0, #0xe
	bl sub_8F0EA64
	movs r3, #0
	ldr r6, _08F11008 @ =gMiscContainer
_08F10FAA:
	ldr r0, [r6]
	adds r0, r0, r3
	ldrb r5, [r0]
	cmp r5, #0
	beq _08F10FEC
	lsls r0, r3, #2
	mov r1, sp
	adds r2, r1, r0
	adds r4, r3, #1
	strh r4, [r2]
	movs r1, #1
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, #5
	strb r1, [r2, #2]
	lsrs r1, r3, #1
	adds r1, #0x15
	strb r1, [r2, #3]
	adds r0, #6
	ldrb r1, [r2, #3]
	bl SetTextPosition
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r5, r2
	bl DrawTextWithIdNoWait
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	cmp r3, #7
	bls _08F10FAA
_08F10FEC:
	lsls r0, r3, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	adds r1, r0, #0
	cmp r1, #0
	bge _08F1100C
	movs r0, #1
	b _08F1108E
	.align 2, 0
_08F11008: .4byte gMiscContainer
_08F1100C:
	ldr r0, [r6]
	adds r0, r0, r1
	subs r0, #1
	ldrb r5, [r0]
	ldr r6, _08F1104C @ =gUnknown_03003500
	ldr r4, _08F11050 @ =gUnknown_03003700
	ldrb r2, [r4]
	lsls r0, r2, #5
	adds r0, r0, r6
	strb r5, [r0, #0x1b]
	ldrb r2, [r4]
	lsls r0, r2, #5
	adds r0, r0, r6
	subs r1, #1
	strb r1, [r0, #0x19]
	ldr r7, _08F11054 @ =gUnknown_030036F0
	lsls r0, r5, #3
	ldr r1, _08F11058 @ =gItemData
	adds r0, r0, r1
	str r0, [r7]
	ldrb r0, [r4]
	bl sub_8F11268
	cmp r0, #0
	beq _08F1105C
	bl sub_8F0F244
	movs r0, #0x14
	bl sub_8F0EA64
	b _08F11078
	.align 2, 0
_08F1104C: .4byte gUnknown_03003500
_08F11050: .4byte gUnknown_03003700
_08F11054: .4byte gUnknown_030036F0
_08F11058: .4byte gItemData
_08F1105C:
	ldr r0, [r7]
	ldrb r5, [r0, #5]
	cmp r5, #0
	bne _08F11080
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08F11072
	movs r0, #0x11
	bl sub_8F0EA64
	b _08F11078
_08F11072:
	movs r0, #0x10
	bl sub_8F0EA64
_08F11078:
	bl sub_8F0E8AC
	movs r0, #1
	b _08F1108E
_08F11080:
	ldrb r4, [r4]
	lsls r0, r4, #5
	adds r0, r0, r6
	strb r5, [r0, #0x1d]
	adds r0, r5, #0
	bl sub_8F10E94
_08F1108E:
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F11098
sub_8F11098: @ 0x08F11098
	lsls r0, r0, #0x18
	ldr r1, _08F110B0 @ =gUnknown_030034E8
	ldr r1, [r1]
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	movs r1, #0xfa
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _08F110B4 @ =gUnknown_030036A0
	b _08F110BE
	.align 2, 0
_08F110B0: .4byte gUnknown_030034E8
_08F110B4: .4byte gUnknown_030036A0
_08F110B8:
	strb r1, [r2]
	adds r0, #1
	adds r2, #1
_08F110BE:
	ldrb r1, [r0]
	cmp r1, #0
	bne _08F110B8
	movs r0, #0
	strb r0, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_8F110CC
sub_8F110CC: @ 0x08F110CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r7, #8
	movs r3, #0
	ldr r0, _08F11110 @ =gMiscContainer
	ldr r4, [r0]
	movs r5, #7
	movs r6, #0x80
_08F110E4:
	lsrs r2, r7, #3
	adds r2, r4, r2
	adds r1, r7, #0
	ands r1, r5
	adds r0, r6, #0
	asrs r0, r1
	ldrb r2, [r2]
	ands r0, r2
	cmp r0, #0
	beq _08F110FE
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08F110FE:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x3f
	bls _08F110E4
	cmp r3, #0
	bne _08F11114
_08F1110C:
	movs r0, #1
	b _08F11218
	.align 2, 0
_08F11110: .4byte gMiscContainer
_08F11114:
	movs r7, #8
	movs r0, #0
	str r0, [sp, #0x28]
	add r0, sp, #0x28
	mov sb, r0
	movs r1, #0
	mov sl, r1
_08F11122:
	cmp r7, #0x3f
	bls _08F11128
	movs r7, #8
_08F11128:
	lsrs r4, r7, #3
	ldr r0, _08F111F0 @ =gMiscContainer
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F111FC
	movs r0, #0xe
	bl sub_8F0EA64
	movs r0, #0x12
	bl sub_8F0EA64
	movs r5, #0
	movs r6, #0
	mov r8, r4
_08F11148:
	ldr r0, _08F111F0 @ =gMiscContainer
	ldr r1, [r0]
	add r1, r8
	movs r0, #0x80
	asrs r0, r5
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F11194
	lsls r0, r6, #2
	mov r1, sp
	adds r2, r1, r0
	adds r4, r7, r5
	adds r0, r4, #1
	strh r0, [r2]
	movs r1, #1
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, #5
	strb r1, [r2, #2]
	lsrs r1, r5, #1
	adds r1, #0x15
	strb r1, [r2, #3]
	adds r0, #6
	ldrb r1, [r2, #3]
	bl SetTextPosition
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r4, r4, r2
	adds r0, r4, #0
	bl DrawTextWithIdNoWait
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08F11194:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08F11148
	lsls r0, r6, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #5
	strb r0, [r1, #2]
	movs r0, #0x14
	strb r0, [r1, #3]
	str r6, [sp, #0x28]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sp
	mov r1, sl
	strh r1, [r0]
	mov r0, sp
	mov r1, sb
	bl HandleSelectMenuInput
	cmp r0, #0
	blt _08F1110C
	cmp r0, #0xff
	bgt _08F111FC
	subs r0, #1
	lsls r0, r0, #0x18
	ldr r2, _08F111F4 @ =gUnknown_03003688
	lsrs r0, r0, #0x15
	ldr r1, _08F111F8 @ =gUnknown_08F5C51C
	adds r0, r0, r1
	str r0, [r2]
	ldrb r2, [r0, #5]
	cmp r2, #0
	bne _08F11206
	movs r0, #0x10
	bl sub_8F0EA64
	bl sub_8F0E8AC
	b _08F1110C
	.align 2, 0
_08F111F0: .4byte gMiscContainer
_08F111F4: .4byte gUnknown_03003688
_08F111F8: .4byte gUnknown_08F5C51C
_08F111FC:
	adds r0, r7, #0
	adds r0, #8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	b _08F11122
_08F11206:
	ldr r1, _08F11228 @ =gUnknown_03003500
	ldr r0, _08F1122C @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	strb r2, [r0, #0x1d]
	adds r0, r2, #0
	bl sub_8F10E94
_08F11218:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F11228: .4byte gUnknown_03003500
_08F1122C: .4byte gUnknown_03003700

	thumb_func_start sub_8F11230
sub_8F11230: @ 0x08F11230
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x18
	ldr r1, _08F11264 @ =gUnknown_08F6705C
	mov r0, sp
	movs r2, #0x23
	bl memcpy
	lsrs r4, r4, #0x1a
	mov r0, sp
	adds r2, r0, r4
	movs r1, #3
	ands r5, r1
	lsls r5, r5, #1
	movs r0, #6
	subs r0, r0, r5
	ldrb r2, [r2]
	asrs r2, r0
	adds r0, r2, #0
	ands r0, r1
	add sp, #0x24
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08F11264: .4byte gUnknown_08F6705C

	thumb_func_start sub_8F11268
sub_8F11268: @ 0x08F11268
	lsls r0, r0, #0x18
	ldr r1, _08F1128C @ =gUnknown_030036F0
	ldr r3, [r1]
	ldr r2, _08F11290 @ =gCanEquipItemMask
	ldr r1, _08F11294 @ =gUnknown_03003500
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	adds r0, #1
	adds r0, r0, r2
	ldrb r3, [r3, #2]
	ldrb r0, [r0]
	ands r3, r0
	adds r0, r3, #0
	cmp r0, #0
	bne _08F11298
	movs r0, #1
	b _08F1129A
	.align 2, 0
_08F1128C: .4byte gUnknown_030036F0
_08F11290: .4byte gCanEquipItemMask
_08F11294: .4byte gUnknown_03003500
_08F11298:
	movs r0, #0
_08F1129A:
	bx lr

	thumb_func_start sub_8F1129C
sub_8F1129C: @ 0x08F1129C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F112C8 @ =gUnknown_03003680
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, _08F112CC @ =gUnknown_08F70840
	ldr r0, _08F112D0 @ =gUnknown_03003690
	ldrh r0, [r0]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x2b
	bls _08F112BC
	bl _08F11C06
_08F112BC:
	lsls r0, r0, #2
	ldr r1, _08F112D4 @ =_08F112D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F112C8: .4byte gUnknown_03003680
_08F112CC: .4byte gUnknown_08F70840
_08F112D0: .4byte gUnknown_03003690
_08F112D4: .4byte _08F112D8
_08F112D8: @ jump table
	.4byte _08F11388 @ case 0
	.4byte _08F1138E @ case 1
	.4byte _08F113A4 @ case 2
	.4byte _08F113C4 @ case 3
	.4byte _08F113E0 @ case 4
	.4byte _08F113FC @ case 5
	.4byte _08F11428 @ case 6
	.4byte _08F11590 @ case 7
	.4byte _08F115AC @ case 8
	.4byte _08F115C8 @ case 9
	.4byte _08F115EC @ case 10
	.4byte _08F11630 @ case 11
	.4byte _08F11648 @ case 12
	.4byte _08F11660 @ case 13
	.4byte _08F116C0 @ case 14
	.4byte _08F116D0 @ case 15
	.4byte _08F11714 @ case 16
	.4byte _08F11730 @ case 17
	.4byte _08F1174C @ case 18
	.4byte _08F1176C @ case 19
	.4byte _08F1178C @ case 20
	.4byte _08F117B6 @ case 21
	.4byte _08F117E0 @ case 22
	.4byte _08F1180A @ case 23
	.4byte _08F11868 @ case 24
	.4byte _08F11884 @ case 25
	.4byte _08F11890 @ case 26
	.4byte _08F118A6 @ case 27
	.4byte _08F118C6 @ case 28
	.4byte _08F118FC @ case 29
	.4byte _08F11938 @ case 30
	.4byte _08F1194E @ case 31
	.4byte _08F1195A @ case 32
	.4byte _08F11966 @ case 33
	.4byte _08F11972 @ case 34
	.4byte _08F1197E @ case 35
	.4byte _08F1198A @ case 36
	.4byte _08F11996 @ case 37
	.4byte _08F119D8 @ case 38
	.4byte _08F119E4 @ case 39
	.4byte _08F11A48 @ case 40
	.4byte _08F11AA0 @ case 41
	.4byte _08F11B9C @ case 42
	.4byte _08F11BC8 @ case 43
_08F11388:
	bl sub_8F11DF0
	b _08F11404
_08F1138E:
	bl sub_8F11DF0
	ldr r0, _08F113A0 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #4
	bl sub_8F11F10
	b _08F11A20
	.align 2, 0
_08F113A0: .4byte gUnknown_030036EC
_08F113A4:
	bl sub_8F11DF0
	ldr r0, _08F113C0 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #0xc
	bl sub_8F11E08
	movs r0, #9
	movs r1, #0x23
	bl sub_8F11C7C
	bl _08F11C06
	.align 2, 0
_08F113C0: .4byte gUnknown_030036EC
_08F113C4:
	ldr r0, _08F113DC @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #6
	bl sub_8F12000
	movs r0, #9
	movs r1, #0x20
	bl sub_8F11C7C
	bl _08F11C06
	.align 2, 0
_08F113DC: .4byte gUnknown_030036EC
_08F113E0:
	ldr r0, _08F113F8 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #8
	bl sub_8F12000
	movs r0, #9
	movs r1, #0x22
	bl sub_8F11C7C
	bl _08F11C06
	.align 2, 0
_08F113F8: .4byte gUnknown_030036EC
_08F113FC:
	ldr r1, _08F1141C @ =gUnknown_03003680
	ldr r2, _08F11420 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
_08F11404:
	ldr r0, _08F11424 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #2
	bl sub_8F11F10
	movs r0, #0xa
	movs r1, #0x3e
	bl sub_8F11C7C
	bl _08F11C06
	.align 2, 0
_08F1141C: .4byte gUnknown_03003680
_08F11420: .4byte 0x0000FFFF
_08F11424: .4byte gUnknown_030036EC
_08F11428:
	ldr r0, _08F11500 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08F11460
	bl sub_8F122DC
	cmp r0, #0
	beq _08F11460
_08F1143E:
	ldr r0, _08F11504 @ =gUnknown_03003700
	movs r5, #0x1e
	ldrb r3, [r0]
	cmp r3, #3
	bhi _08F11456
	ldr r1, _08F11508 @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	cmp r0, #5
	bne _08F11456
	movs r5, #0x1a
_08F11456:
	ldr r4, _08F1150C @ =gUnknown_03003680
	bl Random
	lsrs r0, r5
	strh r0, [r4]
_08F11460:
	ldr r5, _08F11510 @ =gUnknown_030036EC
	ldrb r7, [r5]
	bl sub_8F11DF0
	ldr r6, _08F11508 @ =gUnknown_03003500
	ldrb r4, [r5]
	lsls r1, r4, #5
	adds r1, r1, r6
	movs r0, #4
	ldrb r1, [r1, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _08F11486
	movs r0, #0x53
	bl sub_8F0F1A8
	ldr r0, _08F11504 @ =gUnknown_03003700
	ldrb r0, [r0]
	strb r0, [r5]
_08F11486:
	ldrb r3, [r5]
	lsls r0, r3, #5
	adds r2, r0, r6
	movs r0, #0x10
	ldrb r1, [r2, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _08F1149E
	ldr r1, _08F1150C @ =gUnknown_03003680
	ldrh r4, [r1]
	lsrs r0, r4, #1
	strh r0, [r1]
_08F1149E:
	movs r0, #8
	ldrb r2, [r2, #0x1e]
	ands r0, r2
	cmp r0, #0
	beq _08F114B0
	ldr r1, _08F1150C @ =gUnknown_03003680
	ldrh r2, [r1]
	lsrs r0, r2, #1
	strh r0, [r1]
_08F114B0:
	adds r0, r3, #0
	bl sub_8F121F0
	ldr r4, _08F1150C @ =gUnknown_03003680
	ldrh r0, [r4]
	cmp r0, #0
	bne _08F114C2
	adds r0, #1
	strh r0, [r4]
_08F114C2:
	ldr r0, _08F11514 @ =gUnknown_03003708
	ldrh r1, [r4]
	str r1, [r0]
	movs r0, #0xc
	bl sub_8F0F1A8
	ldr r0, _08F11500 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #3
	beq _08F114DE
	bl sub_8F12310
	cmp r0, #0
	bne _08F1151A
_08F114DE:
	bl sub_8F122DC
	cmp r0, #0
	bne _08F1151A
	ldrb r1, [r5]
	lsls r0, r1, #5
	adds r0, r0, r6
	ldrh r3, [r0, #2]
	ldrh r4, [r4]
	subs r4, r3, r4
	cmp r4, #0
	bgt _08F11518
	adds r0, r1, #0
	bl sub_8F101F4
	b _08F11582
	.align 2, 0
_08F11500: .4byte gEnemyGroupSpecialEncounter
_08F11504: .4byte gUnknown_03003700
_08F11508: .4byte gUnknown_03003500
_08F1150C: .4byte gUnknown_03003680
_08F11510: .4byte gUnknown_030036EC
_08F11514: .4byte gUnknown_03003708
_08F11518:
	strh r4, [r0, #2]
_08F1151A:
	ldr r5, _08F11588 @ =gUnknown_03003500
	ldr r4, _08F1158C @ =gUnknown_030036EC
	ldrb r0, [r4]
	lsls r1, r0, #5
	adds r1, r1, r5
	movs r0, #0xc
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F1154C
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08F1154C
	ldrb r4, [r4]
	lsls r1, r4, #5
	adds r1, r1, r5
	movs r0, #0xf3
	ldrb r2, [r1, #1]
	ands r0, r2
	strb r0, [r1, #1]
	movs r0, #0x8d
	bl sub_8F0F1A8
_08F1154C:
	ldr r5, _08F11588 @ =gUnknown_03003500
	ldr r4, _08F1158C @ =gUnknown_030036EC
	ldrb r3, [r4]
	lsls r1, r3, #5
	adds r1, r1, r5
	movs r0, #0x10
	ldrb r1, [r1, #1]
	ands r0, r1
	cmp r0, #0
	beq _08F1157E
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08F1157E
	ldrb r4, [r4]
	lsls r1, r4, #5
	adds r1, r1, r5
	movs r0, #0xef
	ldrb r4, [r1, #1]
	ands r0, r4
	strb r0, [r1, #1]
	movs r0, #0x61
	bl sub_8F0F1A8
_08F1157E:
	bl sub_8F0EA98
_08F11582:
	ldr r0, _08F1158C @ =gUnknown_030036EC
	strb r7, [r0]
	b _08F11C06
	.align 2, 0
_08F11588: .4byte gUnknown_03003500
_08F1158C: .4byte gUnknown_030036EC
_08F11590:
	bl sub_8F11DF0
	ldr r4, _08F115A8 @ =gUnknown_030036EC
	ldrb r0, [r4]
	bl sub_8F121F0
	ldrb r0, [r4]
	movs r1, #8
	bl sub_8F11FC8
	b _08F11652
	.align 2, 0
_08F115A8: .4byte gUnknown_030036EC
_08F115AC:
	bl sub_8F11DF0
	ldr r0, _08F115C4 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #0xb
	bl sub_8F11F90
	movs r0, #0x26
	bl sub_8F0F1A8
	b _08F11C06
	.align 2, 0
_08F115C4: .4byte gUnknown_030036EC
_08F115C8:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F115D2
	b _08F1143E
_08F115D2:
	bl sub_8F12310
	cmp r0, #0
	beq _08F115DC
	b _08F1143E
_08F115DC:
	ldr r0, _08F115E8 @ =gUnknown_030036EC
	ldrb r0, [r0]
	bl sub_8F101F4
	b _08F11C06
	.align 2, 0
_08F115E8: .4byte gUnknown_030036EC
_08F115EC:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F115F6
	b _08F11A40
_08F115F6:
	bl sub_8F12310
	cmp r0, #0
	beq _08F11600
	b _08F11A40
_08F11600:
	bl Random
	lsrs r0, r0, #0x1e
	adds r4, r0, #1
	ldr r1, _08F11628 @ =gUnknown_03003500
	ldr r0, _08F1162C @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	cmp r4, r1
	blt _08F1161A
	b _08F11C06
_08F1161A:
	strh r4, [r0, #2]
	movs r0, #0
	movs r1, #0x38
	bl sub_8F11C7C
	b _08F11C06
	.align 2, 0
_08F11628: .4byte gUnknown_03003500
_08F1162C: .4byte gUnknown_030036EC
_08F11630:
	ldr r0, _08F11644 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #6
	bl sub_8F12038
	movs r0, #0x21
	bl sub_8F0F1A8
	b _08F11C06
	.align 2, 0
_08F11644: .4byte gUnknown_030036EC
_08F11648:
	ldr r0, _08F1165C @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #8
	bl sub_8F12038
_08F11652:
	movs r0, #0x27
	bl sub_8F0F1A8
	b _08F11C06
	.align 2, 0
_08F1165C: .4byte gUnknown_030036EC
_08F11660:
	bl sub_8F11DF0
	ldr r0, _08F116AC @ =gUnknown_030036EC
	ldrb r2, [r0]
	cmp r2, #3
	bhi _08F116A0
	ldr r1, _08F116B0 @ =gUnknown_03003500
	lsls r0, r2, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F116B4 @ =gUnknown_030031E1
	adds r1, r1, r0
	ldrb r3, [r1, #1]
	lsls r4, r3, #8
	ldrb r0, [r1]
	orrs r4, r0
	ldrb r2, [r1, #2]
	lsls r0, r2, #0x10
	adds r4, r4, r0
	ldr r0, _08F116B8 @ =gUnknown_03003680
	ldrh r0, [r0]
	adds r4, r0, r4
	ldr r0, _08F116BC @ =0x00FFFFFF
	cmp r4, r0
	ble _08F11696
	adds r4, r0, #0
_08F11696:
	strb r4, [r1]
	asrs r0, r4, #8
	strb r0, [r1, #1]
	asrs r0, r4, #0x10
	strb r0, [r1, #2]
_08F116A0:
	movs r0, #0xa
	movs r1, #0x2f
	bl sub_8F11C7C
	b _08F11C06
	.align 2, 0
_08F116AC: .4byte gUnknown_030036EC
_08F116B0: .4byte gUnknown_03003500
_08F116B4: .4byte gUnknown_030031E1
_08F116B8: .4byte gUnknown_03003680
_08F116BC: .4byte 0x00FFFFFF
_08F116C0:
	ldr r0, _08F116CC @ =gUnknown_03003700
	ldrb r0, [r0]
	bl Maybe_WinBattle
	b _08F11C06
	.align 2, 0
_08F116CC: .4byte gUnknown_03003700
_08F116D0:
	ldr r0, _08F116FC @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F116DA
	b _08F11C06
_08F116DA:
	bl sub_8F11DF0
	ldr r1, _08F11700 @ =gUnknown_03003500
	ldr r0, _08F11704 @ =gUnknown_03003700
	ldrb r2, [r0]
	lsls r0, r2, #5
	adds r1, r0, r1
	ldr r0, _08F11708 @ =gUnknown_03003680
	ldrh r3, [r1, #2]
	ldrh r0, [r0]
	subs r4, r3, r0
	cmp r4, #0
	bgt _08F1170C
	adds r0, r2, #0
	bl sub_8F101F4
	b _08F11C06
	.align 2, 0
_08F116FC: .4byte gUnknown_0300317C
_08F11700: .4byte gUnknown_03003500
_08F11704: .4byte gUnknown_03003700
_08F11708: .4byte gUnknown_03003680
_08F1170C:
	strh r4, [r1, #2]
	bl sub_8F0EA98
	b _08F11C06
_08F11714:
	bl sub_8F11DF0
	ldr r0, _08F1172C @ =gUnknown_03003700
	ldrb r0, [r0]
	movs r1, #6
	bl sub_8F11E80
	movs r0, #0x5c
	bl sub_8F0F1A8
	b _08F11C06
	.align 2, 0
_08F1172C: .4byte gUnknown_03003700
_08F11730:
	bl sub_8F11DF0
	ldr r0, _08F11748 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #6
	bl sub_8F11E80
	movs r0, #0x20
	bl sub_8F0F1A8
	b _08F11C06
	.align 2, 0
_08F11748: .4byte gUnknown_030036EC
_08F1174C:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F11756
	b _08F11A40
_08F11756:
	bl sub_8F12198
	cmp r0, #0
	beq _08F11760
	b _08F11A40
_08F11760:
	movs r0, #0x80
	movs r1, #0
	movs r2, #0x1b
	bl sub_8F11CF4
	b _08F11C06
_08F1176C:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F11776
	b _08F11A40
_08F11776:
	bl sub_8F12198
	cmp r0, #0
	beq _08F11780
	b _08F11A40
_08F11780:
	movs r0, #2
	movs r1, #0
	movs r2, #0x4b
	bl sub_8F11CA0
	b _08F11C06
_08F1178C:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F11796
	b _08F11A40
_08F11796:
	bl sub_8F12310
	cmp r0, #0
	beq _08F117A0
	b _08F11A40
_08F117A0:
	bl sub_8F121C4
	cmp r0, #0
	beq _08F117AA
	b _08F11A40
_08F117AA:
	movs r0, #8
	movs r1, #0
	movs r2, #0x39
	bl sub_8F11CA0
	b _08F11C06
_08F117B6:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F117C0
	b _08F11A40
_08F117C0:
	bl sub_8F12310
	cmp r0, #0
	beq _08F117CA
	b _08F11A40
_08F117CA:
	bl sub_8F121C4
	cmp r0, #0
	beq _08F117D4
	b _08F11A40
_08F117D4:
	movs r0, #0x10
	movs r1, #0
	movs r2, #0x3b
	bl sub_8F11CA0
	b _08F11C06
_08F117E0:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F117EA
	b _08F11A40
_08F117EA:
	bl sub_8F12310
	cmp r0, #0
	beq _08F117F4
	b _08F11A40
_08F117F4:
	bl sub_8F12198
	cmp r0, #0
	beq _08F117FE
	b _08F11A40
_08F117FE:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x49
	bl sub_8F11CA0
	b _08F11C06
_08F1180A:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F11814
	b _08F11A40
_08F11814:
	ldr r0, _08F11830 @ =gUnknown_030036EC
	ldrb r4, [r0]
	cmp r4, #3
	bhi _08F1183C
	ldr r2, _08F11834 @ =gGameInfo
	ldr r1, _08F11838 @ =gUnknown_03003500
	lsls r0, r4, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	adds r0, r0, r2
	adds r0, #0x44
	ldrh r4, [r0]
	b _08F1184E
	.align 2, 0
_08F11830: .4byte gUnknown_030036EC
_08F11834: .4byte gGameInfo
_08F11838: .4byte gUnknown_03003500
_08F1183C:
	ldr r2, _08F11860 @ =gEnemyData
	ldr r1, _08F11864 @ =gUnknown_03003500
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrh r4, [r0, #4]
_08F1184E:
	cmp r4, #0
	bne _08F11854
	b _08F11A40
_08F11854:
	movs r0, #0x40
	movs r1, #0
	movs r2, #0x4d
	bl sub_8F11CF4
	b _08F11C06
	.align 2, 0
_08F11860: .4byte gEnemyData
_08F11864: .4byte gUnknown_03003500
_08F11868:
	ldr r1, _08F1187C @ =gUnknown_03003500
	ldr r0, _08F11880 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #8
	ldrb r2, [r0, #0x1e]
	orrs r1, r2
	strb r1, [r0, #0x1e]
	b _08F11C06
	.align 2, 0
_08F1187C: .4byte gUnknown_03003500
_08F11880: .4byte gUnknown_030036EC
_08F11884:
	movs r0, #0x10
	movs r1, #0xa
	movs r2, #0x4f
	bl sub_8F11CF4
	b _08F11C06
_08F11890:
	bl sub_8F122FC
	cmp r0, #0
	beq _08F1189A
	b _08F11A40
_08F1189A:
	movs r0, #4
	movs r1, #0xa
	movs r2, #0x17
	bl sub_8F11CF4
	b _08F11C06
_08F118A6:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F118B0
	b _08F11A40
_08F118B0:
	bl sub_8F12310
	cmp r0, #0
	beq _08F118BA
	b _08F11A40
_08F118BA:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x4e
	bl sub_8F11CF4
	b _08F11C06
_08F118C6:
	bl sub_8F122DC
	cmp r0, #0
	beq _08F118D0
	b _08F11A40
_08F118D0:
	bl sub_8F12310
	cmp r0, #0
	beq _08F118DA
	b _08F11A40
_08F118DA:
	movs r0, #0x40
	movs r1, #0
	movs r2, #0x19
	bl sub_8F11CA0
	cmp r0, #0
	beq _08F118EA
	b _08F11C06
_08F118EA:
	ldr r0, _08F118F8 @ =gUnknown_030036EC
	ldrb r0, [r0]
	movs r1, #8
	bl sub_8F12000
	b _08F11C06
	.align 2, 0
_08F118F8: .4byte gUnknown_030036EC
_08F118FC:
	ldr r1, _08F11930 @ =gUnknown_030036EC
	ldrb r3, [r1]
	cmp r3, #3
	bls _08F11906
	b _08F11C06
_08F11906:
	ldr r0, _08F11934 @ =gUnknown_03003500
	lsls r1, r3, #5
	adds r1, r1, r0
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _08F11914
	b _08F11C06
_08F11914:
	ldrb r2, [r1, #0x1e]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08F11920
	b _08F11C06
_08F11920:
	movs r0, #2
	orrs r0, r2
	strb r0, [r1, #0x1e]
	movs r0, #0x74
	bl sub_8F0F1A8
	b _08F11C06
	.align 2, 0
_08F11930: .4byte gUnknown_030036EC
_08F11934: .4byte gUnknown_03003500
_08F11938:
	bl sub_8F121C4
	cmp r0, #0
	beq _08F11942
	b _08F11A40
_08F11942:
	movs r0, #4
	movs r1, #0
	movs r2, #0x67
	bl sub_8F11CA0
	b _08F11C06
_08F1194E:
	movs r0, #2
	movs r1, #0xa
	movs r2, #0x5d
	bl sub_8F11D48
	b _08F11C06
_08F1195A:
	movs r0, #0x10
	movs r1, #0xa
	movs r2, #0x61
	bl sub_8F11D48
	b _08F11C06
_08F11966:
	movs r0, #0x20
	movs r1, #0xa
	movs r2, #0x60
	bl sub_8F11D48
	b _08F11C06
_08F11972:
	movs r0, #2
	movs r1, #0xa
	movs r2, #0x70
	bl sub_8F11D9C
	b _08F11C06
_08F1197E:
	movs r0, #0xc
	movs r1, #0xa
	movs r2, #0x5e
	bl sub_8F11D48
	b _08F11C06
_08F1198A:
	movs r0, #0x10
	movs r1, #2
	movs r2, #0x69
	bl sub_8F11D9C
	b _08F11C06
_08F11996:
	ldr r1, _08F119C8 @ =gUnknown_03003500
	ldr r2, _08F119CC @ =gUnknown_030036EC
	ldrb r4, [r2]
	lsls r0, r4, #5
	adds r1, r0, r1
	movs r0, #0x80
	ldrb r3, [r1, #1]
	ands r0, r3
	cmp r0, #0
	beq _08F11A40
	movs r0, #0
	strb r0, [r1, #1]
	ldr r1, _08F119D0 @ =gUnknown_03003680
	ldr r4, _08F119D4 @ =0x0000FFFF
	adds r0, r4, #0
	strh r0, [r1]
	ldrb r0, [r2]
	movs r1, #2
	bl sub_8F11F10
	movs r0, #0xa
	movs r1, #0x62
	bl sub_8F11C7C
	b _08F11C06
	.align 2, 0
_08F119C8: .4byte gUnknown_03003500
_08F119CC: .4byte gUnknown_030036EC
_08F119D0: .4byte gUnknown_03003680
_08F119D4: .4byte 0x0000FFFF
_08F119D8:
	movs r0, #0x40
	movs r1, #0xa
	movs r2, #0x71
	bl sub_8F11D48
	b _08F11C06
_08F119E4:
	ldr r1, _08F11A2C @ =gUnknown_03003500
	ldr r5, _08F11A30 @ =gUnknown_030036EC
	ldrb r2, [r5]
	lsls r0, r2, #5
	adds r1, r0, r1
	ldrh r4, [r1, #4]
	adds r0, r4, #0
	cmp r4, #0
	beq _08F11A40
	cmp r4, #0xa
	ble _08F119FC
	movs r4, #0xa
_08F119FC:
	subs r0, r0, r4
	strh r0, [r1, #4]
	ldr r1, _08F11A34 @ =gUnknown_03003708
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	movs r0, #0x48
	bl sub_8F0F1A8
	ldr r0, _08F11A38 @ =gUnknown_03003680
	strh r4, [r0]
	ldr r4, _08F11A3C @ =gUnknown_03003700
	ldrb r0, [r4]
	movs r1, #4
	bl sub_8F11F10
	ldrb r0, [r4]
	strb r0, [r5]
_08F11A20:
	movs r0, #0xa
	movs r1, #0x3d
	bl sub_8F11C7C
	b _08F11C06
	.align 2, 0
_08F11A2C: .4byte gUnknown_03003500
_08F11A30: .4byte gUnknown_030036EC
_08F11A34: .4byte gUnknown_03003708
_08F11A38: .4byte gUnknown_03003680
_08F11A3C: .4byte gUnknown_03003700
_08F11A40:
	movs r0, #0x55
	bl sub_8F0F1A8
	b _08F11C06
_08F11A48:
	ldr r4, _08F11A84 @ =gUnknown_030036EC
	ldrb r3, [r4]
	cmp r3, #3
	bhi _08F11A98
	ldrb r0, [r4]
	bl sub_8F1225C
	cmp r0, #0
	bne _08F11A98
	ldr r1, _08F11A88 @ =gUnknown_03003500
	ldrb r4, [r4]
	lsls r0, r4, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	ldr r1, _08F11A8C @ =gUnknown_030031F0
	adds r0, r0, r1
	ldr r1, _08F11A90 @ =gUnknown_03003658
	ldrb r1, [r1]
	ldr r4, _08F11A94 @ =gUnknown_03003624
	ldrb r2, [r4]
	bl sub_8F103C4
	ldrb r0, [r4]
	bl sub_8F11098
	movs r0, #0x81
	bl sub_8F0F1A8
	b _08F11C06
	.align 2, 0
_08F11A84: .4byte gUnknown_030036EC
_08F11A88: .4byte gUnknown_03003500
_08F11A8C: .4byte gUnknown_030031F0
_08F11A90: .4byte gUnknown_03003658
_08F11A94: .4byte gUnknown_03003624
_08F11A98:
	movs r0, #0x59
	bl sub_8F0F1A8
	b _08F11C06
_08F11AA0:
	ldr r0, _08F11AE0 @ =gUnknown_030034F0
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r0, _08F11AE4 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #6
	beq _08F11AF0
	ldr r4, _08F11AE8 @ =gEnemyMusic
	ldr r0, _08F11AEC @ =gCurrentBgMusic
	ldrb r0, [r0]
	strb r0, [r4]
	movs r0, #0x19
	bl ChangeBgMusic
	movs r0, #0
	bl sub_8F0E850
	movs r0, #3
	bl PlaySfxById0
	movs r0, #0x38
	bl sub_8F0E838
	movs r0, #0x1e
	bl sub_8F0E838
	ldrb r0, [r4]
	bl ChangeBgMusic
	b _08F11C06
	.align 2, 0
_08F11AE0: .4byte gUnknown_030034F0
_08F11AE4: .4byte gEnemyGroupSpecialEncounter
_08F11AE8: .4byte gEnemyMusic
_08F11AEC: .4byte gCurrentBgMusic
_08F11AF0:
	movs r0, #0x19
	bl ChangeBgMusic
	ldr r4, _08F11B94 @ =gUnknown_030036FC
	ldrb r0, [r4]
	subs r0, #0x9e
	bl sub_8F0E850
	movs r0, #3
	bl PlaySfxById0
	ldr r1, _08F11B98 @ =gUnknown_08F662E0
	movs r0, #0xf
	bl sub_8F10548
	ldrb r0, [r4]
	bl sub_8F0F1A8
	movs r0, #0x1e
	bl sub_8F0E838
	movs r0, #0x2c
	bl ChangeBgMusic
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa9
	bne _08F11C06
	movs r5, #3
_08F11B30:
	movs r0, #5
	bl PlaySfxById0
	bl Random
	lsrs r0, r0, #0x1e
	adds r4, r0, #1
	subs r5, #1
	cmp r4, #0
	beq _08F11B5C
_08F11B44:
	movs r0, #1
	bl PlaySfxById0
	adds r0, r4, #0
	movs r1, #3
	bl sub_8F104FC
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08F11B44
_08F11B5C:
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08F11B30
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #0xc8
	bl sub_8F0E838
	ldr r1, _08F11B94 @ =gUnknown_030036FC
	movs r0, #0xa9
	strb r0, [r1]
	adds r4, r1, #0
_08F11B78:
	ldrb r0, [r4]
	bl sub_8F0F1A8
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xab
	bls _08F11B78
	movs r0, #4
	bl sub_8F101F4
	b _08F11C06
	.align 2, 0
_08F11B94: .4byte gUnknown_030036FC
_08F11B98: .4byte gUnknown_08F662E0
_08F11B9C:
	ldr r1, _08F11BC0 @ =gUnknown_03003500
	ldr r0, _08F11BC4 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r2, r0, r1
	ldrb r1, [r2, #1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08F11C06
	movs r0, #8
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #0x39
	bl sub_8F0F1A8
	b _08F11C06
	.align 2, 0
_08F11BC0: .4byte gUnknown_03003500
_08F11BC4: .4byte gUnknown_030036EC
_08F11BC8:
	ldr r0, _08F11C20 @ =gUnknown_03003500
	ldr r4, _08F11C24 @ =gUnknown_030036EC
	ldrb r2, [r4]
	lsls r1, r2, #5
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F11C06
	cmp r2, #3
	bhi _08F11C06
	ldrb r0, [r1, #0x18]
	cmp r0, #4
	bhi _08F11C06
	movs r0, #0
	strb r0, [r1, #1]
	ldr r1, _08F11C28 @ =gUnknown_03003680
	ldr r2, _08F11C2C @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	ldrb r0, [r4]
	movs r1, #2
	bl sub_8F11F10
	ldrb r0, [r4]
	movs r1, #4
	bl sub_8F11F10
	movs r0, #0xa
	movs r1, #0xac
	bl sub_8F11C7C
_08F11C06:
	ldr r0, _08F11C28 @ =gUnknown_03003680
	mov r3, r8
	strh r3, [r0]
	ldr r1, _08F11C30 @ =gUnknown_03003690
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F11C20: .4byte gUnknown_03003500
_08F11C24: .4byte gUnknown_030036EC
_08F11C28: .4byte gUnknown_03003680
_08F11C2C: .4byte 0x0000FFFF
_08F11C30: .4byte gUnknown_03003690

	thumb_func_start sub_8F11C34
sub_8F11C34: @ 0x08F11C34
	push {lr}
	ldr r0, _08F11C6C @ =gUnknown_03003500
	ldr r2, _08F11C70 @ =gUnknown_030036EC
	ldrb r3, [r2]
	lsls r1, r3, #5
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F11C68
	movs r0, #0
	strb r0, [r1, #1]
	ldr r1, _08F11C74 @ =gUnknown_03003680
	ldr r3, _08F11C78 @ =0x0000FFFF
	adds r0, r3, #0
	strh r0, [r1]
	ldrb r0, [r2]
	movs r1, #2
	bl sub_8F11F10
	movs r0, #0xa
	movs r1, #0
	bl sub_8F11C7C
	movs r0, #0x14
	bl sub_8F0E838
_08F11C68:
	pop {r0}
	bx r0
	.align 2, 0
_08F11C6C: .4byte gUnknown_03003500
_08F11C70: .4byte gUnknown_030036EC
_08F11C74: .4byte gUnknown_03003680
_08F11C78: .4byte 0x0000FFFF

	thumb_func_start sub_8F11C7C
sub_8F11C7C: @ 0x08F11C7C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r0, #0
	beq _08F11C8E
	bl sub_8F0E770
_08F11C8E:
	bl sub_8F0EA98
	adds r0, r4, #0
	bl sub_8F0F1A8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F11CA0
sub_8F11CA0: @ 0x08F11CA0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08F11CD8 @ =gUnknown_03003668
	strb r4, [r0]
	ldr r1, _08F11CDC @ =gUnknown_03003500
	ldr r0, _08F11CE0 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r3, r0, r1
	ldrb r1, [r3, #1]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08F11CE4
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r3, #1]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_8F11C7C
	movs r0, #0
	b _08F11CEC
	.align 2, 0
_08F11CD8: .4byte gUnknown_03003668
_08F11CDC: .4byte gUnknown_03003500
_08F11CE0: .4byte gUnknown_030036EC
_08F11CE4:
	movs r0, #0x55
	bl sub_8F0F1A8
	movs r0, #1
_08F11CEC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F11CF4
sub_8F11CF4: @ 0x08F11CF4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08F11D2C @ =gUnknown_03003668
	strb r4, [r0]
	ldr r1, _08F11D30 @ =gUnknown_03003500
	ldr r0, _08F11D34 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r3, r0, r1
	ldrb r1, [r3, #0x1e]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08F11D38
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r3, #0x1e]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_8F11C7C
	movs r0, #0
	b _08F11D40
	.align 2, 0
_08F11D2C: .4byte gUnknown_03003668
_08F11D30: .4byte gUnknown_03003500
_08F11D34: .4byte gUnknown_030036EC
_08F11D38:
	movs r0, #0x55
	bl sub_8F0F1A8
	movs r0, #1
_08F11D40:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F11D48
sub_8F11D48: @ 0x08F11D48
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08F11D80 @ =gUnknown_03003668
	strb r5, [r0]
	ldr r1, _08F11D84 @ =gUnknown_03003500
	ldr r0, _08F11D88 @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r3, r0, r1
	ldrb r1, [r3, #1]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08F11D8C
	adds r0, r1, #0
	bics r0, r4
	strb r0, [r3, #1]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_8F11C7C
	movs r0, #0
	b _08F11D94
	.align 2, 0
_08F11D80: .4byte gUnknown_03003668
_08F11D84: .4byte gUnknown_03003500
_08F11D88: .4byte gUnknown_030036EC
_08F11D8C:
	movs r0, #0x55
	bl sub_8F0F1A8
	movs r0, #1
_08F11D94:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F11D9C
sub_8F11D9C: @ 0x08F11D9C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08F11DD4 @ =gUnknown_03003668
	strb r5, [r0]
	ldr r1, _08F11DD8 @ =gUnknown_03003500
	ldr r0, _08F11DDC @ =gUnknown_030036EC
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r3, r0, r1
	ldrb r1, [r3, #0x1e]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08F11DE0
	adds r0, r1, #0
	bics r0, r4
	strb r0, [r3, #0x1e]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_8F11C7C
	movs r0, #0
	b _08F11DE8
	.align 2, 0
_08F11DD4: .4byte gUnknown_03003668
_08F11DD8: .4byte gUnknown_03003500
_08F11DDC: .4byte gUnknown_030036EC
_08F11DE0:
	movs r0, #0x55
	bl sub_8F0F1A8
	movs r0, #1
_08F11DE8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F11DF0
sub_8F11DF0: @ 0x08F11DF0
	push {r4, lr}
	ldr r4, _08F11E04 @ =gUnknown_03003680
	ldrh r0, [r4]
	bl sub_8F0E8DC
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F11E04: .4byte gUnknown_03003680

	thumb_func_start sub_8F11E08
sub_8F11E08: @ 0x08F11E08
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r1, r5, #5
	adds r0, r1, r4
	ldr r2, _08F11E30 @ =gUnknown_03003500
	adds r0, r0, r2
	ldrb r6, [r0]
	cmp r5, #3
	bhi _08F11E34
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8F12074
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x17
	b _08F11E44
	.align 2, 0
_08F11E30: .4byte gUnknown_03003500
_08F11E34:
	adds r0, r1, r2
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, _08F11E70 @ =gEnemyData
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #1
_08F11E44:
	ldr r0, _08F11E74 @ =gUnknown_03003680
	ldrh r0, [r0]
	adds r2, r0, r6
	cmp r2, #0xff
	ble _08F11E50
	movs r2, #0xff
_08F11E50:
	cmp r2, r1
	ble _08F11E56
	adds r2, r1, #0
_08F11E56:
	lsls r0, r5, #5
	adds r0, r0, r4
	ldr r1, _08F11E78 @ =gUnknown_03003500
	adds r0, r0, r1
	strb r2, [r0]
	ldr r1, _08F11E7C @ =gUnknown_03003708
	subs r0, r2, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F11E70: .4byte gEnemyData
_08F11E74: .4byte gUnknown_03003680
_08F11E78: .4byte gUnknown_03003500
_08F11E7C: .4byte gUnknown_03003708

	thumb_func_start sub_8F11E80
sub_8F11E80: @ 0x08F11E80
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r1, r1, #0x19
	lsls r2, r4, #5
	lsls r3, r1, #1
	adds r0, r2, r3
	ldr r1, _08F11EAC @ =gUnknown_03003500
	adds r0, r0, r1
	ldrh r6, [r0]
	cmp r4, #3
	bhi _08F11EB0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F12074
	lsls r0, r0, #0x10
	lsrs r1, r0, #0xf
	b _08F11EC4
	.align 2, 0
_08F11EAC: .4byte gUnknown_03003500
_08F11EB0:
	adds r0, r2, r1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #5
	adds r1, r1, r3
	ldr r0, _08F11EF8 @ =gEnemyData
	adds r1, r1, r0
	ldr r0, _08F11EFC @ =0x000003FF
	ldrh r1, [r1]
	ands r0, r1
	lsls r1, r0, #1
_08F11EC4:
	ldr r0, _08F11F00 @ =gUnknown_03003680
	ldrh r0, [r0]
	adds r2, r0, r6
	ldr r0, _08F11F04 @ =0x0000FFFF
	cmp r2, r0
	ble _08F11ED2
	adds r2, r0, #0
_08F11ED2:
	cmp r2, r1
	bls _08F11ED8
	adds r2, r1, #0
_08F11ED8:
	lsrs r0, r5, #1
	lsls r1, r4, #5
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08F11F08 @ =gUnknown_03003500
	adds r1, r1, r0
	strh r2, [r1]
	ldr r1, _08F11F0C @ =gUnknown_03003708
	subs r0, r2, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F11EF8: .4byte gEnemyData
_08F11EFC: .4byte 0x000003FF
_08F11F00: .4byte gUnknown_03003680
_08F11F04: .4byte 0x0000FFFF
_08F11F08: .4byte gUnknown_03003500
_08F11F0C: .4byte gUnknown_03003708

	thumb_func_start sub_8F11F10
sub_8F11F10: @ 0x08F11F10
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r1, r1, #0x19
	lsls r2, r4, #5
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r3, _08F11F3C @ =gUnknown_03003500
	adds r0, r0, r3
	ldrh r6, [r0]
	cmp r4, #3
	bhi _08F11F40
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F12074
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08F11F52
	.align 2, 0
_08F11F3C: .4byte gUnknown_03003500
_08F11F40:
	adds r0, r2, r3
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _08F11F7C @ =gEnemyData
	adds r0, r0, r1
	ldr r2, _08F11F80 @ =0x000003FF
	ldrh r0, [r0]
	ands r2, r0
_08F11F52:
	ldr r0, _08F11F84 @ =gUnknown_03003680
	ldrh r0, [r0]
	adds r3, r0, r6
	cmp r3, r2
	ble _08F11F5E
	adds r3, r2, #0
_08F11F5E:
	lsrs r0, r5, #1
	lsls r1, r4, #5
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08F11F88 @ =gUnknown_03003500
	adds r1, r1, r0
	strh r3, [r1]
	ldr r1, _08F11F8C @ =gUnknown_03003708
	subs r0, r3, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F11F7C: .4byte gEnemyData
_08F11F80: .4byte 0x000003FF
_08F11F84: .4byte gUnknown_03003680
_08F11F88: .4byte gUnknown_03003500
_08F11F8C: .4byte gUnknown_03003708

	thumb_func_start sub_8F11F90
sub_8F11F90: @ 0x08F11F90
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldr r1, _08F11FBC @ =gUnknown_03003500
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #0
	ldr r0, _08F11FC0 @ =gUnknown_03003680
	ldrh r0, [r0]
	subs r0, r2, r0
	cmp r0, #0
	bge _08F11FAE
	movs r0, #0
_08F11FAE:
	strb r0, [r1]
	ldr r1, _08F11FC4 @ =gUnknown_03003708
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r1]
	bx lr
	.align 2, 0
_08F11FBC: .4byte gUnknown_03003500
_08F11FC0: .4byte gUnknown_03003680
_08F11FC4: .4byte gUnknown_03003708

	thumb_func_start sub_8F11FC8
sub_8F11FC8: @ 0x08F11FC8
	lsls r0, r0, #0x18
	movs r2, #0xfe
	lsrs r0, r0, #0x13
	ands r2, r1
	adds r0, r0, r2
	ldr r1, _08F11FF4 @ =gUnknown_03003500
	adds r1, r0, r1
	ldrh r0, [r1]
	adds r2, r0, #0
	ldr r0, _08F11FF8 @ =gUnknown_03003680
	ldrh r0, [r0]
	subs r0, r2, r0
	cmp r0, #0
	bge _08F11FE6
	movs r0, #0
_08F11FE6:
	strh r0, [r1]
	ldr r1, _08F11FFC @ =gUnknown_03003708
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	bx lr
	.align 2, 0
_08F11FF4: .4byte gUnknown_03003500
_08F11FF8: .4byte gUnknown_03003680
_08F11FFC: .4byte gUnknown_03003708

	thumb_func_start sub_8F12000
sub_8F12000: @ 0x08F12000
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r1, r1, #0x19
	lsls r0, r4, #5
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F12030 @ =gUnknown_03003500
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8F0E8DC
	ldr r1, _08F12034 @ =gUnknown_03003680
	strh r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F11E80
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F12030: .4byte gUnknown_03003500
_08F12034: .4byte gUnknown_03003680

	thumb_func_start sub_8F12038
sub_8F12038: @ 0x08F12038
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r1, r1, #0x19
	lsls r0, r4, #5
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F1206C @ =gUnknown_03003500
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	bl sub_8F0E8DC
	ldr r1, _08F12070 @ =gUnknown_03003680
	strh r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F11FC8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F1206C: .4byte gUnknown_03003500
_08F12070: .4byte gUnknown_03003680

	thumb_func_start sub_8F12074
sub_8F12074: @ 0x08F12074
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	subs r0, r2, #2
	cmp r0, #0xd
	bls _08F12086
	b _08F1218C
_08F12086:
	lsls r0, r0, #2
	ldr r1, _08F12090 @ =_08F12094
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F12090: .4byte _08F12094
_08F12094: @ jump table
	.4byte _08F12150 @ case 0
	.4byte _08F1218C @ case 1
	.4byte _08F12150 @ case 2
	.4byte _08F1218C @ case 3
	.4byte _08F120CC @ case 4
	.4byte _08F1218C @ case 5
	.4byte _08F12104 @ case 6
	.4byte _08F1218C @ case 7
	.4byte _08F1218C @ case 8
	.4byte _08F12170 @ case 9
	.4byte _08F12170 @ case 10
	.4byte _08F12170 @ case 11
	.4byte _08F12170 @ case 12
	.4byte _08F12170 @ case 13
_08F120CC:
	ldr r1, _08F120F8 @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	lsrs r2, r2, #1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	lsls r2, r2, #1
	adds r2, r1, r2
	ldr r0, _08F120FC @ =gUnknown_030031D0
	adds r2, r2, r0
	adds r0, r0, r1
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, _08F12100 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x3f
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r2, [r2]
	adds r1, r2, r0
	b _08F1218E
	.align 2, 0
_08F120F8: .4byte gUnknown_03003500
_08F120FC: .4byte gUnknown_030031D0
_08F12100: .4byte gItemData
_08F12104:
	ldr r1, _08F12144 @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	lsrs r1, r2, #1
	ldrb r0, [r0, #0x18]
	lsls r4, r0, #6
	lsls r1, r1, #1
	adds r1, r4, r1
	ldr r0, _08F12148 @ =gUnknown_030031D0
	adds r1, r1, r0
	subs r0, #0x40
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r2, r0, #3
	ldr r5, _08F1214C @ =gItemData
	adds r2, r2, r5
	movs r3, #0x3f
	adds r0, r3, #0
	ldrb r2, [r2, #3]
	ands r0, r2
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r4, #0x6a
	ldrb r4, [r4]
	lsls r0, r4, #3
	adds r0, r0, r5
	ldrb r0, [r0, #3]
	ands r3, r0
	adds r1, r1, r3
	b _08F1218E
	.align 2, 0
_08F12144: .4byte gUnknown_03003500
_08F12148: .4byte gUnknown_030031D0
_08F1214C: .4byte gItemData
_08F12150:
	ldr r1, _08F12168 @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	lsrs r1, r2, #1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08F1216C @ =gUnknown_030031D0
	adds r0, r0, r1
	ldrh r1, [r0]
	b _08F1218E
	.align 2, 0
_08F12168: .4byte gUnknown_03003500
_08F1216C: .4byte gUnknown_030031D0
_08F12170:
	ldr r1, _08F12184 @ =gUnknown_03003500
	lsls r0, r3, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #6
	adds r0, r0, r2
	ldr r1, _08F12188 @ =gUnknown_030031D0
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08F1218E
	.align 2, 0
_08F12184: .4byte gUnknown_03003500
_08F12188: .4byte gUnknown_030031D0
_08F1218C:
	movs r1, #0
_08F1218E:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F12198
sub_8F12198: @ 0x08F12198
	push {lr}
	ldr r2, _08F121B8 @ =gUnknown_03003500
	ldr r0, _08F121BC @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xd]
	ldr r1, _08F121C0 @ =gUnknown_030036EC
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r1, r1, r2
	ldrb r1, [r1, #0xe]
	bl sub_8F12228
	pop {r1}
	bx r1
	.align 2, 0
_08F121B8: .4byte gUnknown_03003500
_08F121BC: .4byte gUnknown_03003700
_08F121C0: .4byte gUnknown_030036EC

	thumb_func_start sub_8F121C4
sub_8F121C4: @ 0x08F121C4
	push {lr}
	ldr r2, _08F121E4 @ =gUnknown_03003500
	ldr r0, _08F121E8 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xd]
	ldr r1, _08F121EC @ =gUnknown_030036EC
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r1, r1, r2
	ldrb r1, [r1, #0xf]
	bl sub_8F12228
	pop {r1}
	bx r1
	.align 2, 0
_08F121E4: .4byte gUnknown_03003500
_08F121E8: .4byte gUnknown_03003700
_08F121EC: .4byte gUnknown_030036EC

	thumb_func_start sub_8F121F0
sub_8F121F0: @ 0x08F121F0
	lsls r0, r0, #0x18
	ldr r1, _08F1221C @ =gUnknown_03003500
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldr r1, _08F12220 @ =gUnknown_03003654
	ldrb r0, [r0, #0xa]
	ldrb r2, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08F12214
	ldr r2, _08F12224 @ =gUnknown_03003680
	ldrh r3, [r2]
	lsrs r0, r3, #1
	strh r0, [r2]
	cmp r0, #0
	bne _08F12214
	movs r0, #1
	strh r0, [r2]
_08F12214:
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08F1221C: .4byte gUnknown_03003500
_08F12220: .4byte gUnknown_03003654
_08F12224: .4byte gUnknown_03003680

	thumb_func_start sub_8F12228
sub_8F12228: @ 0x08F12228
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x19
	subs r4, r2, r1
	cmp r4, #0
	bge _08F1223A
	movs r4, #0
_08F1223A:
	lsls r0, r4, #8
	adds r1, r2, #0
	bl __divsi3
	adds r4, r0, #0
	bl Random
	lsrs r0, r0, #0x18
	cmp r0, r4
	blo _08F12252
	movs r0, #1
	b _08F12254
_08F12252:
	movs r0, #0
_08F12254:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F1225C
sub_8F1225C: @ 0x08F1225C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	ldr r1, _08F122A8 @ =gUnknown_03003500
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F122AC @ =gUnknown_030031F0
	adds r4, r1, r0
	ldr r1, _08F122B0 @ =gUnknown_03003658
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08F122B4 @ =gUnknown_03003624
	adds r7, r3, #0
	adds r2, r1, #0
	ldr r6, _08F122B8 @ =gUnknown_030036F0
	ldr r5, _08F122BC @ =gUnknown_03003694
_08F1227E:
	ldrb r1, [r2]
	adds r0, r1, r4
	ldrb r0, [r0]
	strb r0, [r7]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08F122C4
	ldrb r0, [r3]
	lsls r1, r0, #3
	ldr r0, _08F122C0 @ =gItemData
	adds r1, r1, r0
	str r1, [r6]
	ldrb r0, [r1, #5]
	strb r0, [r5]
	movs r0, #0x40
	ldrb r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _08F122C4
	movs r0, #0
	b _08F122D4
	.align 2, 0
_08F122A8: .4byte gUnknown_03003500
_08F122AC: .4byte gUnknown_030031F0
_08F122B0: .4byte gUnknown_03003658
_08F122B4: .4byte gUnknown_03003624
_08F122B8: .4byte gUnknown_030036F0
_08F122BC: .4byte gUnknown_03003694
_08F122C0: .4byte gItemData
_08F122C4:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08F1227E
	movs r0, #1
_08F122D4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8F122DC
sub_8F122DC: @ 0x08F122DC
	ldr r0, _08F122F0 @ =gUnknown_030036EC
	ldrb r0, [r0]
	cmp r0, #3
	bls _08F122F8
	ldr r0, _08F122F4 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	bls _08F122F8
	movs r0, #1
	b _08F122FA
	.align 2, 0
_08F122F0: .4byte gUnknown_030036EC
_08F122F4: .4byte gEnemyGroupSpecialEncounter
_08F122F8:
	movs r0, #0
_08F122FA:
	bx lr

	thumb_func_start sub_8F122FC
sub_8F122FC: @ 0x08F122FC
	ldr r0, _08F12308 @ =gEnemyGroupSpecialEncounter
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08F1230C
	movs r0, #0
	b _08F1230E
	.align 2, 0
_08F12308: .4byte gEnemyGroupSpecialEncounter
_08F1230C:
	movs r0, #1
_08F1230E:
	bx lr

	thumb_func_start sub_8F12310
sub_8F12310: @ 0x08F12310
	ldr r0, _08F1232C @ =gUnknown_030036EC
	ldrb r1, [r0]
	cmp r1, #3
	bhi _08F12334
	ldr r1, _08F12330 @ =gUnknown_03003500
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	cmp r0, #5
	bne _08F12334
	movs r0, #1
	b _08F12336
	.align 2, 0
_08F1232C: .4byte gUnknown_030036EC
_08F12330: .4byte gUnknown_03003500
_08F12334:
	movs r0, #0
_08F12336:
	bx lr

	thumb_func_start sub_8F12338
sub_8F12338: @ 0x08F12338
	push {r4, r5, r6, lr}
	bl sub_8F016EC
	movs r4, #0
	ldr r5, _08F12350 @ =gUnknown_030007B8
_08F12342:
	cmp r4, #3
	bgt _08F12354
	movs r1, #0x92
	lsls r1, r1, #7
	adds r0, r1, #0
	b _08F1235A
	.align 2, 0
_08F12350: .4byte gUnknown_030007B8
_08F12354:
	movs r2, #0x82
	lsls r2, r2, #7
	adds r0, r2, #0
_08F1235A:
	strh r0, [r5]
	ldr r0, _08F12394 @ =gUnknown_030036C0
	lsls r1, r4, #3
	adds r3, r1, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F12378
	ldrh r0, [r3, #2]
	ldrb r1, [r3, #1]
	movs r6, #4
	ldrsh r2, [r3, r6]
	movs r6, #6
	ldrsh r3, [r3, r6]
	bl sub_8F01700
_08F12378:
	adds r4, #1
	cmp r4, #4
	ble _08F12342
	ldr r1, _08F12398 @ =gUnknown_030007B8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_8F0191C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F12394: .4byte gUnknown_030036C0
_08F12398: .4byte gUnknown_030007B8

	thumb_func_start sub_8F1239C
sub_8F1239C: @ 0x08F1239C
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08F123FC @ =gUnknown_03003628
	ldrb r0, [r0]
	cmp r0, #0xa2
	bne _08F12410
	ldr r1, _08F12400 @ =0x0400000C
	ldrh r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	movs r4, #0
	ldr r5, _08F12404 @ =0x0400004C
_08F123BE:
	lsls r0, r4, #0xc
	lsls r1, r4, #8
	adds r0, r0, r1
	lsls r1, r4, #4
	adds r0, r0, r1
	adds r0, r0, r4
	strh r0, [r5]
	movs r0, #4
	bl DelayByAmount
	adds r4, #1
	cmp r4, #0xf
	ble _08F123BE
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r4, #0
	strh r4, [r0]
	ldr r3, _08F12400 @ =0x0400000C
	ldrh r2, [r3]
	ldr r1, _08F12408 @ =0x0000FFBF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldr r2, _08F1240C @ =0x0400000E
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	ldr r0, _08F12404 @ =0x0400004C
	strh r4, [r0]
	b _08F12446
	.align 2, 0
_08F123FC: .4byte gUnknown_03003628
_08F12400: .4byte 0x0400000C
_08F12404: .4byte 0x0400004C
_08F12408: .4byte 0x0000FFBF
_08F1240C: .4byte 0x0400000E
_08F12410:
	ldr r0, _08F124C8 @ =0x0400000C
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
	movs r4, #0
	ldr r5, _08F124CC @ =0x0400004C
_08F1241E:
	lsls r0, r4, #4
	adds r0, r0, r4
	strh r0, [r5]
	movs r0, #4
	bl DelayByAmount
	adds r4, #1
	cmp r4, #0xf
	ble _08F1241E
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r3, #0
	strh r3, [r0]
	ldr r2, _08F124C8 @ =0x0400000C
	ldrh r1, [r2]
	ldr r0, _08F124D0 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08F124CC @ =0x0400004C
	strh r3, [r0]
_08F12446:
	bl sub_8F0B040
	movs r3, #0
	str r3, [sp]
	ldr r0, _08F124D4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08F124D8 @ =0x06002000
	str r1, [r0, #4]
	ldr r2, _08F124DC @ =0x85000200
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08F124E0 @ =0x06003000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08F124E4 @ =gUnknown_030036C0
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0x20
_08F12474:
	strb r3, [r0]
	subs r0, #8
	cmp r0, r1
	bge _08F12474
	movs r4, #0
	adds r0, r2, #0
	adds r0, #0x20
	strb r4, [r0]
	ldr r0, _08F124E8 @ =0x00009714
	strh r0, [r2, #0x22]
	adds r1, r2, #0
	adds r1, #0x21
	movs r0, #4
	strb r0, [r1]
	movs r0, #0xcc
	strh r0, [r2, #0x24]
	movs r0, #0x6c
	strh r0, [r2, #0x26]
	bl sub_8F0E7F0
	ldr r0, _08F124EC @ =0x04000010
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #6
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F124C8: .4byte 0x0400000C
_08F124CC: .4byte 0x0400004C
_08F124D0: .4byte 0x0000FFBF
_08F124D4: .4byte 0x040000D4
_08F124D8: .4byte 0x06002000
_08F124DC: .4byte 0x85000200
_08F124E0: .4byte 0x06003000
_08F124E4: .4byte gUnknown_030036C0
_08F124E8: .4byte 0x00009714
_08F124EC: .4byte 0x04000010

	thumb_func_start sub_8F124F0
sub_8F124F0: @ 0x08F124F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0xc3
	bl sub_8F12B48
	movs r0, #0x1e
	bl sub_8F0E838
	movs r5, #0
	ldr r0, _08F12540 @ =gUnknown_030034FC
	strb r5, [r0]
	ldr r4, _08F12544 @ =gGameInfo
	movs r6, #0x80
_08F12512:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r8, r0
	cmp r0, #0
	beq _08F12564
	cmp r0, #5
	bls _08F12548
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r4
	adds r0, #0x41
	adds r1, r6, #0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F12564
	mov r0, r8
	bl sub_8F09484
	b _08F12564
	.align 2, 0
_08F12540: .4byte gUnknown_030034FC
_08F12544: .4byte gGameInfo
_08F12548:
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r4
	adds r0, #0x41
	adds r1, r6, #0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F12564
	ldr r1, _08F12748 @ =gUnknown_030034FC
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08F12564:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F12512
	ldr r1, _08F12748 @ =gUnknown_030034FC
	ldrb r4, [r1]
	cmp r4, #0
	bne _08F12578
	b _08F1297C
_08F12578:
	ldr r0, _08F1274C @ =gUnknown_03003600
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F125F8
	ldr r0, _08F12750 @ =gExperiencePointsGained
	adds r5, r4, #0
	ldr r4, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl __udivsi3
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	str r3, [sp, #0xc]
	bl __umodsi3
	ldr r3, [sp, #0xc]
	cmp r0, #0
	beq _08F125A2
	adds r3, #1
_08F125A2:
	movs r5, #0
	ldr r4, _08F12754 @ =gGameInfo
	adds r6, r4, #0
	adds r6, #0x11
_08F125AA:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r8, r0
	cmp r0, #0
	beq _08F125EE
	cmp r0, #5
	bhi _08F125EE
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r4
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F125EE
	mov r1, r8
	lsls r0, r1, #6
	adds r7, r0, r6
	ldrb r0, [r7]
	adds r2, r0, r3
	ldrb r1, [r7, #1]
	lsls r0, r1, #8
	adds r2, r2, r0
	ldrb r1, [r7, #2]
	lsls r0, r1, #0x10
	adds r2, r2, r0
	strb r2, [r7]
	lsrs r0, r2, #8
	strb r0, [r7, #1]
	lsrs r0, r2, #0x10
	strb r0, [r7, #2]
_08F125EE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F125AA
_08F125F8:
	bl sub_8F12B9C
	ldr r1, _08F12758 @ =gUnknown_03003700
	movs r0, #0
	strb r0, [r1]
_08F12602:
	ldr r1, _08F1275C @ =gUnknown_03003500
	ldr r0, _08F12758 @ =gUnknown_03003700
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F12614
	b _08F12868
_08F12614:
	ldrb r0, [r1, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #5
	bls _08F12624
	b _08F12868
_08F12624:
	ldr r5, _08F12754 @ =gGameInfo
	mov r2, r8
	subs r2, #1
	lsls r0, r2, #6
	adds r3, r0, r5
	adds r1, r3, #0
	adds r1, #0x41
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _08F12640
	b _08F12868
_08F12640:
	ldr r0, _08F1274C @ =gUnknown_03003600
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x38
	str r1, [sp, #8]
	ldr r1, _08F12760 @ =gUnknown_08F5C31C
	cmp r0, #0
	beq _08F12652
	b _08F127F4
_08F12652:
	adds r0, r3, #0
	adds r0, #0x50
	ldrb r4, [r0]
	cmp r4, #0x62
	bls _08F1265E
	b _08F127F4
_08F1265E:
	ldr r3, [sp, #8]
	lsls r0, r3, #3
	adds r7, r0, r1
	mov r0, r8
	lsls r0, r0, #6
	mov sb, r0
	str r5, [sp, #4]
_08F1266C:
	lsls r0, r2, #6
	adds r6, r0, r5
	adds r0, r6, #0
	adds r0, #0x51
	adds r1, r6, #0
	adds r1, #0x52
	ldrb r1, [r1]
	lsls r2, r1, #8
	ldrb r0, [r0]
	orrs r2, r0
	adds r0, r6, #0
	adds r0, #0x53
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	adds r1, r4, #2
	adds r0, r4, #1
	muls r1, r0, r1
	muls r0, r1, r0
	ldrb r1, [r7]
	muls r0, r1, r0
	asrs r3, r0, #8
	ldr r1, _08F12760 @ =gUnknown_08F5C31C
	cmp r3, r2
	bls _08F126A0
	b _08F127F4
_08F126A0:
	adds r0, r6, #0
	adds r0, #0x50
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	bl sub_8F12B9C
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #0x1f
	bl ChangeBgMusic
	movs r0, #0x82
	bl sub_8F0F1A8
	adds r0, r5, #0
	adds r0, #0xb
	ldrb r1, [r7, #3]
	add r0, sb
	movs r2, #0x86
	bl sub_8F12A0C
	adds r0, r5, #6
	ldr r2, _08F12764 @ =gUnknown_03003708
	ldrh r1, [r2]
	add r0, sb
	movs r2, #0
	bl sub_8F12A50
	adds r0, r5, #0
	adds r0, #0xc
	ldrb r1, [r7, #4]
	add r0, sb
	movs r2, #0x87
	bl sub_8F12A0C
	adds r0, r5, #0
	adds r0, #8
	ldr r3, _08F12764 @ =gUnknown_03003708
	ldrh r1, [r3]
	add r0, sb
	movs r2, #0
	bl sub_8F12A50
	adds r0, r5, #0
	adds r0, #0xd
	ldrb r1, [r7, #5]
	add r0, sb
	movs r2, #0x88
	bl sub_8F12A0C
	adds r0, r5, #0
	adds r0, #0xe
	ldrb r1, [r7, #6]
	add r0, sb
	movs r2, #0x89
	bl sub_8F12A0C
	adds r0, r5, #0
	adds r0, #0xf
	ldrb r1, [r7, #7]
	add r0, sb
	movs r2, #0x8a
	bl sub_8F12A0C
	adds r0, r6, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r4, r0, #0
	adds r4, #0x14
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r1, [r0]
	subs r0, r4, r1
	mov r2, r8
	lsls r5, r2, #6
	cmp r0, #7
	ble _08F12768
	bl Random
	lsrs r4, r0, #0x1c
	b _08F1277A
	.align 2, 0
_08F12748: .4byte gUnknown_030034FC
_08F1274C: .4byte gUnknown_03003600
_08F12750: .4byte gExperiencePointsGained
_08F12754: .4byte gGameInfo
_08F12758: .4byte gUnknown_03003700
_08F1275C: .4byte gUnknown_03003500
_08F12760: .4byte gUnknown_08F5C31C
_08F12764: .4byte gUnknown_03003708
_08F12768:
	cmp r4, r1
	ble _08F12774
	bl Random
	lsrs r4, r0, #0x1d
	b _08F1277A
_08F12774:
	bl Random
	lsrs r4, r0, #0x1f
_08F1277A:
	ldr r0, _08F127B4 @ =gUnknown_03003192
	adds r0, r5, r0
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x84
	bl sub_8F12A50
	mov r3, r8
	cmp r3, #2
	bhi _08F127D8
	mov r1, sl
	lsls r0, r1, #6
	ldr r2, [sp, #4]
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x4f
	ldrb r3, [r2]
	lsls r1, r3, #1
	adds r1, r3, r1
	asrs r4, r1, #1
	adds r0, #0x44
	ldrh r1, [r0]
	subs r0, r4, r1
	cmp r0, #7
	ble _08F127B8
	bl Random
	lsrs r4, r0, #0x1c
	b _08F127CA
	.align 2, 0
_08F127B4: .4byte gUnknown_03003192
_08F127B8:
	cmp r4, r1
	ble _08F127C4
	bl Random
	lsrs r4, r0, #0x1d
	b _08F127CA
_08F127C4:
	bl Random
	lsrs r4, r0, #0x1f
_08F127CA:
	ldr r0, _08F128BC @ =gUnknown_03003194
	adds r0, r5, r0
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x85
	bl sub_8F12A50
_08F127D8:
	ldr r0, _08F128C0 @ =gUnknown_03003600
	ldrb r0, [r0]
	ldr r1, _08F128C4 @ =gUnknown_08F5C31C
	cmp r0, #0
	bne _08F127F4
	ldr r5, _08F128C8 @ =gGameInfo
	mov r2, sl
	lsls r0, r2, #6
	adds r0, r0, r5
	adds r0, #0x50
	ldrb r4, [r0]
	cmp r4, #0x62
	bhi _08F127F4
	b _08F1266C
_08F127F4:
	ldr r2, [sp, #8]
	lsls r0, r2, #3
	adds r7, r0, r1
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _08F12868
	movs r4, #0
	ldr r3, _08F128C8 @ =gGameInfo
	mov sb, r3
	mov r0, sl
	lsls r0, r0, #6
	mov r8, r0
	add r0, sb
	adds r0, #0x50
	mov sl, r0
_08F12812:
	lsrs r0, r4, #3
	add r0, r8
	mov r1, sb
	adds r1, #0x70
	adds r6, r0, r1
	movs r0, #7
	ands r0, r4
	movs r5, #0x80
	asrs r5, r0
	adds r0, r5, #0
	ldrb r1, [r6]
	ands r0, r1
	cmp r0, #0
	bne _08F1285E
	lsls r0, r4, #3
	ldrb r2, [r7, #2]
	adds r0, r2, r0
	ldr r3, _08F128CC @ =gUnknown_08F5C51C
	adds r0, r0, r3
	mov r1, sl
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	blo _08F1285E
	bl Random
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08F1285E
	ldrb r2, [r6]
	orrs r5, r2
	strb r5, [r6]
	movs r0, #9
	bl PlaySfxById1
	movs r0, #0x83
	bl sub_8F0F1A8
_08F1285E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x3f
	bls _08F12812
_08F12868:
	ldr r1, _08F128D0 @ =gUnknown_03003700
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08F1287A
	b _08F12602
_08F1287A:
	ldr r0, _08F128C0 @ =gUnknown_03003600
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F1296C
	ldr r4, _08F128D4 @ =gUnknown_030031A2
	ldr r5, _08F128D8 @ =gMoneyGained
	ldrh r1, [r5]
	adds r0, r4, #0
	bl GainMoney
	adds r4, #3
	ldrh r1, [r5]
	adds r0, r4, #0
	bl GainMoney
	ldr r2, _08F128DC @ =gUnknown_03003664
	ldrb r1, [r2]
	cmp r1, #0
	beq _08F1296C
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F128E0
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	bl Random
	lsrs r0, r0, #0x13
	cmp r0, #0
	bne _08F1296C
	b _08F1290A
	.align 2, 0
_08F128BC: .4byte gUnknown_03003194
_08F128C0: .4byte gUnknown_03003600
_08F128C4: .4byte gUnknown_08F5C31C
_08F128C8: .4byte gGameInfo
_08F128CC: .4byte gUnknown_08F5C51C
_08F128D0: .4byte gUnknown_03003700
_08F128D4: .4byte gUnknown_030031A2
_08F128D8: .4byte gMoneyGained
_08F128DC: .4byte gUnknown_03003664
_08F128E0:
	ldrb r2, [r2]
	lsls r0, r2, #3
	ldr r1, _08F12944 @ =gItemData
	adds r0, r0, r1
	ldr r3, _08F12948 @ =0x00001FFF
	adds r1, r3, #0
	ldrh r4, [r0, #6]
	orrs r4, r1
	movs r1, #0x80
	lsls r1, r1, #9
_08F128F4:
	lsls r4, r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08F128F4
	bl Random
	lsls r1, r4, #0x18
	ands r1, r0
	cmp r1, #0
	bne _08F1296C
_08F1290A:
	movs r5, #0
	ldr r6, _08F1294C @ =gUnknown_03003198
_08F1290E:
	adds r0, r5, r6
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F12936
	movs r4, #0
	lsls r2, r1, #6
	ldr r3, _08F12950 @ =gUnknown_030031F0
_08F12922:
	adds r0, r4, r2
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F12954
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08F12922
_08F12936:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F1290E
	b _08F1296C
	.align 2, 0
_08F12944: .4byte gItemData
_08F12948: .4byte 0x00001FFF
_08F1294C: .4byte gUnknown_03003198
_08F12950: .4byte gUnknown_030031F0
_08F12954:
	ldr r2, _08F12974 @ =gUnknown_03003664
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _08F12978 @ =gCurrentItemId
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #6
	bl PlaySfxById1
	movs r0, #0x8c
	bl sub_8F0F1A8
_08F1296C:
	bl FadeOut
	b _08F129B2
	.align 2, 0
_08F12974: .4byte gUnknown_03003664
_08F12978: .4byte gCurrentItemId
_08F1297C:
	bl sub_8F094CC
	bl sub_8F00ADC
	str r4, [sp]
	ldr r1, _08F129EC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08F129F0 @ =0x06001000
	str r0, [r1, #4]
	ldr r0, _08F129F4 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r5, #0
	ldr r2, _08F129F8 @ =gUnknown_030036C0
	movs r1, #0
_08F1299C:
	lsls r0, r5, #3
	adds r0, r0, r2
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08F1299C
	ldr r1, _08F129FC @ =gOverworldMusic
	movs r0, #0xff
	strb r0, [r1]
_08F129B2:
	bl UpdateCharactersInParty
	ldr r0, _08F12A00 @ =0x04000012
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08F129F8 @ =gUnknown_030036C0
	adds r0, #0x20
	strb r1, [r0]
	bl sub_8F0B040
	bl sub_8F0E7F0
	ldr r0, _08F12A04 @ =gUnknown_030007A0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08F129DC
	ldr r1, _08F12A08 @ =gUnknown_03000824
	movs r0, #1
	strb r0, [r1]
_08F129DC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F129EC: .4byte 0x040000D4
_08F129F0: .4byte 0x06001000
_08F129F4: .4byte 0x85000200
_08F129F8: .4byte gUnknown_030036C0
_08F129FC: .4byte gOverworldMusic
_08F12A00: .4byte 0x04000012
_08F12A04: .4byte gUnknown_030007A0
_08F12A08: .4byte gUnknown_03000824

	thumb_func_start sub_8F12A0C
sub_8F12A0C: @ 0x08F12A0C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldrb r5, [r6]
	bl Random
	lsrs r0, r0, #0x1e
	adds r0, r0, r4
	lsrs r0, r0, #1
	adds r2, r5, r0
	cmp r2, #0xff
	ble _08F12A2E
	movs r2, #0xff
_08F12A2E:
	ldr r1, _08F12A4C @ =gUnknown_03003708
	subs r0, r2, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	cmp r0, #0
	beq _08F12A44
	strb r2, [r6]
	adds r0, r7, #0
	bl sub_8F0F1A8
_08F12A44:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F12A4C: .4byte gUnknown_03003708

	thumb_func_start sub_8F12A50
sub_8F12A50: @ 0x08F12A50
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrh r0, [r4]
	adds r3, r0, r1
	ldr r1, _08F12A84 @ =0x000003E7
	cmp r3, r1
	ble _08F12A68
	adds r3, r1, #0
_08F12A68:
	ldr r1, _08F12A88 @ =gUnknown_03003708
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1]
	cmp r0, #0
	beq _08F12A7E
	strh r3, [r4]
	adds r0, r2, #0
	bl sub_8F0F1A8
_08F12A7E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F12A84: .4byte 0x000003E7
_08F12A88: .4byte gUnknown_03003708

	thumb_func_start GainMoney
GainMoney: @ 0x08F12A8C
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r3, #1]
	lsls r0, r2, #8
	ldrb r4, [r3]
	orrs r0, r4
	ldrb r4, [r3, #2]
	lsls r2, r4, #0x10
	adds r0, r0, r2
	adds r1, r0, r1
	ldr r0, _08F12ABC @ =0x00FFFFFF
	cmp r1, r0
	ble _08F12AAC
	adds r1, r0, #0
_08F12AAC:
	strb r1, [r3]
	asrs r0, r1, #8
	strb r0, [r3, #1]
	asrs r0, r1, #0x10
	strb r0, [r3, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F12ABC: .4byte 0x00FFFFFF

	thumb_func_start sub_8F12AC0
sub_8F12AC0: @ 0x08F12AC0
	push {r4, r5, r6, lr}
	movs r4, #4
	ldr r6, _08F12AFC @ =gUnknown_030036C0
_08F12AC6:
	movs r2, #0
	adds r5, r4, #4
_08F12ACA:
	lsls r0, r2, #3
	adds r0, r0, r6
	ldrh r1, [r0, #6]
	subs r1, #4
	strh r1, [r0, #6]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _08F12ACA
	bl sub_8F0E7F0
	ldr r0, _08F12B00 @ =0x04000012
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #8
	strh r4, [r0]
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x30
	bls _08F12AC6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F12AFC: .4byte gUnknown_030036C0
_08F12B00: .4byte 0x04000012

	thumb_func_start sub_8F12B04
sub_8F12B04: @ 0x08F12B04
	push {r4, r5, r6, lr}
	movs r4, #0x2c
	ldr r6, _08F12B40 @ =gUnknown_030036C0
_08F12B0A:
	movs r2, #0
	subs r5, r4, #4
_08F12B0E:
	lsls r0, r2, #3
	adds r0, r0, r6
	ldrh r1, [r0, #6]
	adds r1, #4
	strh r1, [r0, #6]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _08F12B0E
	bl sub_8F0E7F0
	ldr r0, _08F12B44 @ =0x04000012
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #8
	strh r4, [r0]
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08F12B0A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F12B40: .4byte gUnknown_030036C0
_08F12B44: .4byte 0x04000012

	thumb_func_start sub_8F12B48
sub_8F12B48: @ 0x08F12B48
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, _08F12B78 @ =gUnknown_03003500
	mov ip, r3
_08F12B52:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08F12B88
	ldrb r0, [r3, #0x18]
	lsls r1, r0, #6
	ldr r0, _08F12B7C @ =gUnknown_030031D0
	adds r2, r1, r0
	adds r1, r5, #0
	ldrb r0, [r3, #1]
	ands r1, r0
	movs r4, #0
	strb r1, [r2, #1]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08F12B80
	strh r4, [r2, #0x14]
	b _08F12B84
	.align 2, 0
_08F12B78: .4byte gUnknown_03003500
_08F12B7C: .4byte gUnknown_030031D0
_08F12B80:
	ldrh r0, [r3, #2]
	strh r0, [r2, #0x14]
_08F12B84:
	ldrh r0, [r3, #4]
	strh r0, [r2, #0x16]
_08F12B88:
	adds r3, #0x20
	mov r0, ip
	adds r0, #0x60
	cmp r3, r0
	ble _08F12B52
	bl sub_8F12B9C
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8F12B9C
sub_8F12B9C: @ 0x08F12B9C
	push {lr}
	sub sp, #8
	mov r0, sp
	bl SaveTextSystemState
	ldr r1, _08F12BC0 @ =gTextPlaySfx
	movs r0, #0
	strb r0, [r1]
	bl DrawPartyInfoWindow
	mov r0, sp
	bl LoadTextSystemState
	bl sub_8F0E7F0
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08F12BC0: .4byte gTextPlaySfx

	thumb_func_start sub_8F12BC4
sub_8F12BC4: @ 0x08F12BC4
	push {r4, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r0, _08F12C14 @ =gUnknown_08F662EC
	ldr r1, _08F12C18 @ =gGameInfo
	ldrh r2, [r0]
	ldrb r3, [r1, #0x18]
	cmp r2, r3
	bls _08F12BF2
	adds r3, r0, #0
	adds r2, r1, #0
	movs r1, #0
_08F12BDE:
	adds r1, #1
	cmp r1, #3
	bgt _08F12BF0
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrb r4, [r2, #0x18]
	cmp r0, r4
	bhi _08F12BDE
_08F12BF0:
	str r1, [sp]
_08F12BF2:
	movs r0, #0x15
	bl sub_8F0EA64
	ldr r0, _08F12C14 @ =gUnknown_08F662EC
	mov r1, sp
	bl HandleSelectMenuInput
	adds r1, r0, #0
	cmp r1, #0
	ble _08F12C0A
	ldr r0, _08F12C18 @ =gGameInfo
	strb r1, [r0, #0x18]
_08F12C0A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F12C14: .4byte gUnknown_08F662EC
_08F12C18: .4byte gGameInfo

	thumb_func_start sub_8F12C1C
sub_8F12C1C: @ 0x08F12C1C
	push {r4, r5, r6, r7, lr}
	ldr r1, _08F12C64 @ =gUnknown_03003628
	strb r0, [r1]
	bl SetupEnemyGroups
	movs r3, #0
	movs r2, #0
	ldr r0, _08F12C68 @ =gMiscContainer
	ldr r5, [r0]
	ldr r6, _08F12C6C @ =gEnemyData
	ldr r4, _08F12C70 @ =0x000003FF
_08F12C32:
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08F12C50
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r1, r4, #0
	ldrh r7, [r0, #2]
	ands r1, r7
	adds r3, r3, r1
	adds r1, r4, #0
	ldrh r0, [r0, #8]
	ands r1, r0
	lsrs r1, r1, #1
	adds r3, r3, r1
_08F12C50:
	adds r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F12C32
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F12C64: .4byte gUnknown_03003628
_08F12C68: .4byte gMiscContainer
_08F12C6C: .4byte gEnemyData
_08F12C70: .4byte 0x000003FF
