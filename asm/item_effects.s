
#ifdef NDS_VERSION
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

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
	ldr r0, _08F09D90 @ =gSpriteBuffer
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
_08F09D90: .4byte gSpriteBuffer
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
	ldr r0, _08F09F74 @ =gSpriteBuffer
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
_08F09F74: .4byte gSpriteBuffer
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
	ldr r0, _08F0A294 @ =gSpriteBuffer
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
_08F0A294: .4byte gSpriteBuffer
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
