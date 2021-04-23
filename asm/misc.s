
#ifdef NDS_VERSION
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	thumb_func_start BitUnpackById
BitUnpackById: @ 0x08F0A9E8
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
