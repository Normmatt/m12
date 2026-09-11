.syntax unified
.section .text
@	thumb_func_start GetFontCharTileId
@GetFontCharTileId: @ 0x08F0C86C
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

.syntax divided
