#ifdef NDS_VERSION
.equ OAM_VRAM_OFFSET, 0x00400000
#else
.equ OAM_VRAM_OFFSET, 0x00010000
#endif

.syntax unified
.section .text

@	thumb_func_start ProcessEndingScript
@ProcessEndingScript: @ 0x08F0A4B8
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
	bl BitUnpackById
	ldrb r0, [r4, #2]
	ldr r1, _08F0A5B4 @ =0x0600C800
	movs r2, #0x40
	bl BitUnpackById
	ldrb r0, [r4, #3]
	ldr r1, _08F0A5B8 @ =0x06010000
	movs r2, #0x80
	bl BitUnpackById
	ldrb r0, [r4, #4]
	ldr r1, _08F0A5BC @ =0x06011000
	movs r2, #0x80
	bl BitUnpackById
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
	ldr r1, _08F0A8AC @ =gObjectMemory
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
_08F0A8AC: .4byte gObjectMemory
_08F0A8B0:
	ldrb r1, [r4, #3]
	lsls r0, r1, #8
	ldrb r2, [r4, #2]
	orrs r0, r2
	ldrb r7, [r4, #4]
	ldrb r3, [r4, #5]
	mov ip, r3
	ldr r2, _08F0A8D8 @ =gObjectMemory
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
_08F0A8D8: .4byte gObjectMemory
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
	bl BitUnpackById
	b _08F0A576
	.align 2, 0
_08F0A904: .4byte 0x06001000+OAM_VRAM_OFFSET
_08F0A908:
	ldrb r0, [r4, #1]
	ldr r1, _08F0A948 @ =0x0600D000
	movs r2, #0x40
	bl BitUnpackById
	ldrb r0, [r4, #2]
	ldr r1, _08F0A94C @ =0x0600D800
	movs r2, #0x40
	bl BitUnpackById
	ldrb r0, [r4, #3]
	ldr r1, _08F0A950 @ =0x0600C000
	movs r2, #0x40
	bl BitUnpackById
	ldrb r0, [r4, #4]
	ldr r1, _08F0A954 @ =0x0600C800
	movs r2, #0x40
	bl BitUnpackById
	ldrb r0, [r4, #5]
	ldr r1, _08F0A958 @ =0x06010000
	movs r2, #0x80
	bl BitUnpackById
	ldrb r0, [r4, #6]
	ldr r1, _08F0A95C @ =0x06011000
	movs r2, #0x80
	bl BitUnpackById
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
	ldr r0, _08F0A98C @ =gObjectMemory
	ldrb r2, [r4, #1]
	lsls r1, r2, #5
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	b _08F0A576
	.align 2, 0
_08F0A98C: .4byte gObjectMemory
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
