
#ifdef NDS_VERSION
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

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
	ldr r0, _08F0DA00 @ =gSpriteBuffer
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
_08F0DA00: .4byte gSpriteBuffer
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
	ldr r0, _08F0DC08 @ =gSpriteBuffer
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
_08F0DC08: .4byte gSpriteBuffer
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
	ldr r0, _08F0DE58 @ =gSpriteBuffer
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
_08F0DE58: .4byte gSpriteBuffer
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
