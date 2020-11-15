
#ifdef NDS_VERSION
#include "macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

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
