.syntax unified
.section .text

@	thumb_func_start BeginNewGame
@BeginNewGame: @ 0x08F0DA8C
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
	ldr r0, _08F0DBBC @ =gMsg_NameEntryNinten
	ldr r1, _08F0DBC0 @ =gUnknown_03003208
	movs r3, #0x80
	lsls r3, r3, #8
	movs r2, #8
	bl EnterName
	cmp r0, #0
	bne _08F0DAA0
_08F0DAB2:
	ldr r0, _08F0DBC4 @ =gMsg_NameEntryAna
	ldr r1, _08F0DBC8 @ =gUnknown_03003248
	ldr r3, _08F0DBCC @ =0x00008020
	movs r2, #8
	bl EnterName
	cmp r0, #0
	bne _08F0DAA0
_08F0DAC2:
	ldr r0, _08F0DBD0 @ =gMsg_NameEntryLloyd
	ldr r1, _08F0DBD4 @ =gUnknown_03003288
	ldr r3, _08F0DBD8 @ =0x00008040
	movs r2, #8
	bl EnterName
	cmp r0, #0
	bne _08F0DAB2
_08F0DAD2:
	ldr r0, _08F0DBDC @ =gMsg_NameEntryTeddy
	ldr r4, _08F0DBE0 @ =gUnknown_030032C8
	ldr r3, _08F0DBE4 @ =0x00008060
	adds r1, r4, #0
	movs r2, #8
	bl EnterName
	cmp r0, #0
	bne _08F0DAC2
	ldr r0, _08F0DBE8 @ =gMsg_NameEntryFavFood
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
	movs r0, #7 @X coordinate of "Fav.Food\0"
	movs r1, #0xc
	bl SetTextPosition
	ldr r0, _08F0DBF0 @ =gMsg_NameEntryConfirm_FavFood
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
	ldr r0, _08F0DC10 @ =gMsg_NameEntryConfirm
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
_08F0DBBC: .4byte gMsg_NameEntryNinten
_08F0DBC0: .4byte gUnknown_03003208
_08F0DBC4: .4byte gMsg_NameEntryAna
_08F0DBC8: .4byte gUnknown_03003248
_08F0DBCC: .4byte 0x00008020
_08F0DBD0: .4byte gMsg_NameEntryLloyd
_08F0DBD4: .4byte gUnknown_03003288
_08F0DBD8: .4byte 0x00008040
_08F0DBDC: .4byte gMsg_NameEntryTeddy
_08F0DBE0: .4byte gUnknown_030032C8
_08F0DBE4: .4byte 0x00008060
_08F0DBE8: .4byte gMsg_NameEntryFavFood
_08F0DBEC: .4byte 0x00000151
_08F0DBF0: .4byte gMsg_NameEntryConfirm_FavFood
_08F0DBF4: .4byte 0x00008010
_08F0DBF8: .4byte 0x00008030
_08F0DBFC: .4byte 0x00008050
_08F0DC00: .4byte 0x00008070
_08F0DC04: .4byte 0x040000D4
_08F0DC08: .4byte gSpriteBuffer
_08F0DC0C: .4byte 0x84000100
_08F0DC10: .4byte gMsg_NameEntryConfirm
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
	@starting X,Y positions for this intro text "In the early 1900s..."
	movs r0, #0
	movs r1, #1
	bl SetTextPosition
	movs r0, #0x20
	movs r1, #0x14
	bl SetLineMaximums
	ldr r2, _08F0DCC0 @ =gTextDelayAfterWriteCharacterEnabled
	mov r8, r2
	strb r7, [r2]
	ldr r0, _08F0DCC4 @ =gMsg_IntroText1
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
	@starting X,Y positions for this intro text "1988, outside the..."
	movs r0, #3
	movs r1, #8
	bl SetTextPosition
	mov r1, r8
	strb r7, [r1]
	ldr r0, _08F0DCCC @ =gMsg_IntroText2
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
_08F0DCC4: .4byte gMsg_IntroText1
_08F0DCC8: .4byte MusicPlayer0Info
_08F0DCCC: .4byte gMsg_IntroText2

.syntax divided
