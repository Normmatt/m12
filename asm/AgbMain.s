#ifdef NDS_VERSION
#include "macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	thumb_func_start AgbMain
AgbMain: @ 0x08F001CC
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r5, #0
	strh r5, [r0]
	ldr r0, _08F00494 @ =v_blank_fnc
	movs r4, #0
	str r4, [r0]
	ldr r1, _08F00498 @ =0x040000D4
	ldr r0, _08F0049C @ =intr_main
	str r0, [r1]
	ldr r2, _08F004A0 @ =gUnknown_03000C70
	str r2, [r1, #4]
	ldr r0, _08F004A4 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08F004A8 @ =gUnknown_03007FFC
	str r2, [r0]
	bl m4aSoundInit
	ldr r1, _08F004AC @ =gCurrentBgMusic
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08F004B0 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	subs r1, #8
	ldr r2, _08F004B4 @ =0x00002001
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F004B8 @ =0x04000004
	movs r0, #8
	strh r0, [r1]
	ldr r1, _08F004BC @ =gKeysDown
	ldr r0, _08F004C0 @ =gKeysRepeat
	strh r4, [r0]
	strh r4, [r1]
	ldr r1, _08F004C4 @ =gUnknown_03000794
	ldr r0, _08F004C8 @ =gUnknown_03003490
	strb r5, [r0]
	strb r5, [r1]
	ldr r0, _08F004CC @ =gUnknown_030007A8
	strb r5, [r0]
	ldr r5, _08F004D0 @ =gUnknown_08F1B610
	ldr r6, _08F004D4 @ =gUnknown_03002450
	ldr r4, _08F004D8 @ =gSprites
	adds r3, r6, #0
	movs r2, #0x7f
_08F0022E:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	stm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bge _08F0022E
	ldr r4, _08F00498 @ =0x040000D4
	str r6, [r4]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _08F004DC @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _08F004E0 @ =gUnknown_030007B8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	strh r0, [r1]
	bl sub_8F0D59C
	ldr r1, _08F004E4 @ =0x04000008
	movs r0, #8
	strh r0, [r1]
	adds r1, #2
	ldr r6, _08F004E8 @ =0x00000609
	adds r0, r6, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08F004EC @ =0x0000020B
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08F004F0 @ =0x0000040B
	adds r0, r3, #0
	strh r0, [r1]
	movs r1, #0
	str r1, [sp]
	mov r6, sp
	str r6, [r4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _08F004F4 @ =0x85000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08F004F8 @ =0x04000010
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _08F004FC @ =gUnknown_03000844
	ldr r0, _08F00500 @ =gUnknown_0300318C
	strh r1, [r0]
	strh r1, [r2]
	ldr r0, _08F00504 @ =gUnknown_08F339A0
	ldr r1, _08F00508 @ =0x06010000
	movs r2, #0x80
	bl BitUnpack
	ldr r0, _08F0050C @ =gUnknown_08F67080
	ldr r1, _08F00510 @ =0x06012000
	movs r2, #0x80
	bl BitUnpack
	ldr r0, _08F00514 @ =gUnknown_08F379A0
	ldr r1, _08F00518 @ =0x06014000
	movs r2, #0x80
	bl BitUnpack
	ldr r0, _08F0051C @ =gUnknown_08F381A0
	ldr r1, _08F00520 @ =0x06015000
	movs r2, #0x80
	bl BitUnpack
	ldr r4, _08F00524 @ =gUnknown_08F64564
	ldr r1, _08F00528 @ =0x05000200
	adds r0, r4, #0
	bl LoadPalette
	ldr r1, _08F0052C @ =gUnknown_03001488
	adds r0, r4, #0
	bl LoadPalette
	bl sub_8F0AD0C
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x88
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _08F00530 @ =gGameInfo
	adds r0, r4, #0
	bl M1_LoadSaveGame
	adds r1, r0, #0
	ldr r2, _08F00534 @ =gUnknown_030007E4
	str r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	cmp r0, #0
	beq _08F0033A
	movs r0, #0xf
	ands r0, r1
	str r0, [r2]
	movs r2, #0
	ldr r5, _08F00538 @ =0x000001FF
	ldr r3, _08F0053C @ =gInitialGlobalPlayerInfo
_08F0030A:
	adds r0, r2, r4
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, r5
	ble _08F0030A
	ldr r1, _08F00540 @ =0x000002FF
	cmp r2, r1
	bgt _08F0032C
	ldr r4, _08F00530 @ =gGameInfo
	movs r3, #0
_08F00322:
	adds r0, r2, r4
	strb r3, [r0]
	adds r2, #1
	cmp r2, r1
	ble _08F00322
_08F0032C:
	bl BeginNewGame
	ldr r0, _08F00530 @ =gGameInfo
	ldr r1, _08F00534 @ =gUnknown_030007E4
	ldr r1, [r1]
	bl M1_CalculateChecksumAndWriteSave
_08F0033A:
	ldr r4, _08F00544 @ =gUnknown_03000788
	ldr r3, _08F00530 @ =gGameInfo
	ldrh r5, [r3, #4]
	ldr r1, _08F00548 @ =0x0000FFC0
	adds r0, r1, #0
	ands r0, r5
	movs r6, #0xab
	lsls r6, r6, #2
	adds r2, r3, r6
	ldrb r2, [r2]
	adds r0, r2, r0
	adds r0, #0x40
	strh r0, [r4]
	ldr r2, _08F0054C @ =gUnknown_03001508
	ldrh r4, [r3, #6]
	ands r1, r4
	adds r6, #1
	adds r0, r3, r6
	ldrb r0, [r0]
	adds r1, r0, r1
	adds r1, #0x80
	strh r1, [r2]
	ldr r1, _08F00550 @ =gUnknown_03003178
	movs r0, #0x3f
	ands r0, r5
	strb r0, [r1]
	ldr r1, _08F00554 @ =gUnknown_030007A4
	movs r0, #7
	ands r0, r4
	strb r0, [r1]
	ldr r1, _08F00558 @ =gUnknown_03000C64
	movs r0, #0x84
	strb r0, [r1]
	ldr r0, _08F0055C @ =gUnknown_030007A0
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08F00560 @ =gUnknown_030007E8
	movs r0, #0xa2
	lsls r0, r0, #2
	adds r3, r3, r0
	ldrb r0, [r3]
	strb r0, [r2]
	ldr r0, _08F00564 @ =gUnknown_0300317C
	strb r1, [r0]
	ldr r0, _08F00568 @ =gUnknown_03000818
	strb r1, [r0]
	ldr r4, _08F0056C @ =gUnknown_03003188
	ldr r3, _08F00570 @ =gCurrentItemId
	ldr r2, _08F00574 @ =gUnknown_03003174
	ldr r0, _08F00578 @ =gCurrentCharacterId
	strb r1, [r0]
	strb r1, [r2]
	strb r1, [r3]
	strb r1, [r4]
	ldr r0, _08F0057C @ =gUnknown_03000824
	strb r1, [r0]
	ldr r2, _08F00580 @ =gUnknown_030007E0
	movs r0, #1
	strb r0, [r2]
	ldr r0, _08F00584 @ =gUnknown_030007CC
	strb r1, [r0]
	ldr r0, _08F00588 @ =gUnknown_030007C4
	movs r2, #0
	strh r2, [r0]
	ldr r1, _08F0058C @ =gUnknown_03002964
	movs r0, #0
	str r0, [r1]
	ldr r0, _08F00590 @ =gUnknown_03003498
	strb r2, [r0]
_08F003C4:
	ldr r5, _08F00498 @ =0x040000D4
	ldr r6, _08F00558 @ =gUnknown_03000C64
_08F003C8:
	ldr r0, _08F00580 @ =gUnknown_030007E0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F003D4
	bl ResetVariablesUponEnteringTown
_08F003D4:
	bl sub_8F01388
	bl sub_8F016EC
	movs r0, #0
	bl sub_8F02BBC
	movs r0, #0
	bl sub_8F02AFC
	bl sub_8F0191C
	bl DrawBg2Tilemap
#ifdef NDS_VERSION
	bl DrawBg2Tilemap2
#endif
	bl sub_8F040E0
	ldr r0, _08F00594 @ =gBg0TilemapBuffer
	str r0, [r5]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r5, #4]
	ldr r1, _08F004A4 @ =0x84000200
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08F00598 @ =gBg2TilemapBuffer
	str r0, [r5]
	ldr r0, _08F0059C @ =0x06001000
	str r0, [r5, #4]
	str r1, [r5, #8]
#ifdef NDS_VERSION
	ldr r0, _08F00598_2 @ =gUnknown_03000000+0x2970
	str r0, [r5]
	ldr r0, _08F0059C_2 @ =0x06001000
	str r0, [r5, #4]
	str r1, [r5, #8]
#endif
	ldr r0, [r5, #8]
	ldr r0, _08F004D4 @ =gUnknown_03002450
	str r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r5, #4]
	ldr r0, _08F004DC @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _08F005A0 @ =0x04000018
	ldr r0, _08F00544 @ =gUnknown_03000788
	ldrh r0, [r0]
	lsrs r0, r0, #2
	movs r1, #0xf
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldr r0, _08F0054C @ =gUnknown_03001508
	ldrh r0, [r0]
	lsrs r0, r0, #2
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08F005A4 @ =gUnknown_030007EC
	ldr r0, [r0]
	cmp r0, #0
	beq _08F00446
	bl sub_8F047B4
_08F00446:
	ldr r4, _08F0055C @ =gUnknown_030007A0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08F00452
	b _08F00726
_08F00452:
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08F00468
	bl sub_8F00C64
_08F00468:
	bl ShakeWhenMovingIfFlag
	bl UpdateInput
	ldrb r2, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #8
	bgt _08F0047C
	b _08F005B0
_08F0047C:
	ldr r0, _08F004C0 @ =gKeysRepeat
	ldr r3, _08F005A8 @ =0x000003FF
	adds r1, r3, #0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08F0048C
	b _08F005AC
_08F0048C:
	subs r0, r2, #1
	strb r0, [r4]
	b _08F003C8
	.align 2, 0
_08F00494: .4byte v_blank_fnc
_08F00498: .4byte 0x040000D4
_08F0049C: .4byte intr_main
_08F004A0: .4byte gUnknown_03000C70
_08F004A4: .4byte 0x84000200
_08F004A8: .4byte gUnknown_03007FFC
_08F004AC: .4byte gCurrentBgMusic
_08F004B0: .4byte 0x04000208
_08F004B4: .4byte 0x00002001
_08F004B8: .4byte 0x04000004
_08F004BC: .4byte gKeysDown
_08F004C0: .4byte gKeysRepeat
_08F004C4: .4byte gUnknown_03000794
_08F004C8: .4byte gUnknown_03003490
_08F004CC: .4byte gUnknown_030007A8
_08F004D0: .4byte gUnknown_08F1B610
_08F004D4: .4byte gUnknown_03002450
_08F004D8: .4byte gSprites
_08F004DC: .4byte 0x84000100
_08F004E0: .4byte gUnknown_030007B8
_08F004E4: .4byte 0x04000008
_08F004E8: .4byte 0x00000609
_08F004EC: .4byte 0x0000020B
_08F004F0: .4byte 0x0000040B
_08F004F4: .4byte 0x85000200
_08F004F8: .4byte 0x04000010
_08F004FC: .4byte gUnknown_03000844
_08F00500: .4byte gUnknown_0300318C
_08F00504: .4byte gUnknown_08F339A0
_08F00508: .4byte 0x06000000+OAM_VRAM_OFFSET
_08F0050C: .4byte gUnknown_08F67080
_08F00510: .4byte 0x06002000+OAM_VRAM_OFFSET
_08F00514: .4byte gUnknown_08F379A0
_08F00518: .4byte 0x06004000+OAM_VRAM_OFFSET
_08F0051C: .4byte gUnknown_08F381A0
_08F00520: .4byte 0x06005000+OAM_VRAM_OFFSET
_08F00524: .4byte gUnknown_08F64564
_08F00528: .4byte 0x05000200
_08F0052C: .4byte gUnknown_03001488
_08F00530: .4byte gGameInfo
_08F00534: .4byte gUnknown_030007E4
_08F00538: .4byte 0x000001FF
_08F0053C: .4byte gInitialGlobalPlayerInfo
_08F00540: .4byte 0x000002FF
_08F00544: .4byte gUnknown_03000788
_08F00548: .4byte 0x0000FFC0
_08F0054C: .4byte gUnknown_03001508
_08F00550: .4byte gUnknown_03003178
_08F00554: .4byte gUnknown_030007A4
_08F00558: .4byte gUnknown_03000C64
_08F0055C: .4byte gUnknown_030007A0
_08F00560: .4byte gUnknown_030007E8
_08F00564: .4byte gUnknown_0300317C
_08F00568: .4byte gUnknown_03000818
_08F0056C: .4byte gUnknown_03003188
_08F00570: .4byte gCurrentItemId
_08F00574: .4byte gUnknown_03003174
_08F00578: .4byte gCurrentCharacterId
_08F0057C: .4byte gUnknown_03000824
_08F00580: .4byte gUnknown_030007E0
_08F00584: .4byte gUnknown_030007CC
_08F00588: .4byte gUnknown_030007C4
_08F0058C: .4byte gUnknown_03002964
_08F00590: .4byte gUnknown_03003498
_08F00594: .4byte gBg0TilemapBuffer
_08F00598: .4byte gBg2TilemapBuffer
_08F0059C: .4byte 0x06001000
#ifdef NDS_VERSION
_08F00598_2: .4byte gBg2TilemapBuffer2
_08F0059C_2: .4byte 0x06001800
#endif
_08F005A0: .4byte 0x04000018
_08F005A4: .4byte gUnknown_030007EC
_08F005A8: .4byte 0x000003FF
_08F005AC:
	movs r0, #8
	strb r0, [r4]
_08F005B0:
	ldr r0, _08F005F4 @ =gUnknown_03000818
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F005BA
	b _08F003C4
_08F005BA:
	ldr r0, _08F005F8 @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0067A
	ldr r0, _08F005FC @ =gUnknown_03001500
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0067A
	ldr r0, _08F00600 @ =gUnknown_03003498
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F00610
	ldr r0, _08F00604 @ =gUnknown_03002964
	ldr r1, [r0]
	ldr r0, _08F00608 @ =0x0006977F
	cmp r1, r0
	bls _08F00610
	ldr r1, _08F0060C @ =gGameInfo
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F00610
	bl AskToContinueOrEndAdventure
	b _08F0066E
	.align 2, 0
_08F005F4: .4byte gUnknown_03000818
_08F005F8: .4byte gUnknown_0300317C
_08F005FC: .4byte gUnknown_03001500
_08F00600: .4byte gUnknown_03003498
_08F00604: .4byte gUnknown_03002964
_08F00608: .4byte 0x0006977F
_08F0060C: .4byte gGameInfo
_08F00610:
	ldr r0, _08F00628 @ =gKeysDown
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08F0062C
	movs r0, #5
	bl PlaySfxById1
	bl OpenCommandMenu
	b _08F0066E
	.align 2, 0
_08F00628: .4byte gKeysDown
_08F0062C:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08F00644
	movs r0, #5
	bl PlaySfxById1
	bl HandleLButtonPress
	b _08F0066E
_08F00644:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08F00658
	movs r0, #5
	bl PlaySfxById1
	bl HandleMap
	b _08F0066E
_08F00658:
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08F0066E
	movs r0, #5
	bl PlaySfxById1
	bl HandleStatusMenu
	bl sub_8F0B040
_08F0066E:
	ldr r0, _08F00698 @ =gUnknown_030007A0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _08F00726
_08F0067A:
	ldr r0, _08F0069C @ =gUnknown_03000818
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F00684
	b _08F003C8
_08F00684:
	ldr r2, _08F006A0 @ =gUnknown_03001500
	ldrb r1, [r2]
	cmp r1, #0
	beq _08F006A8
	ldr r0, _08F006A4 @ =gUnknown_030007A4
	ldrb r0, [r0]
	strb r0, [r6]
	subs r0, r1, #1
	strb r0, [r2]
	b _08F006D8
	.align 2, 0
_08F00698: .4byte gUnknown_030007A0
_08F0069C: .4byte gUnknown_03000818
_08F006A0: .4byte gUnknown_03001500
_08F006A4: .4byte gUnknown_030007A4
_08F006A8:
	ldr r2, _08F006C8 @ =gUnknown_08F1B618
	ldr r1, _08F006CC @ =gKeysRepeat
	movs r0, #0xf0
	ldrh r1, [r1]
	ands r0, r1
	lsrs r0, r0, #4
	adds r0, r0, r2
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _08F006D0
	strb r1, [r6]
	b _08F006D8
	.align 2, 0
_08F006C8: .4byte gUnknown_08F1B618
_08F006CC: .4byte gKeysRepeat
_08F006D0:
	movs r0, #0x80
	ldrb r3, [r6]
	orrs r0, r3
	strb r0, [r6]
_08F006D8:
	ldr r2, _08F0072C @ =gUnknown_03000C64
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _08F006E4
	b _08F003C8
_08F006E4:
	ldr r1, _08F00730 @ =gUnknown_030007A4
	ldr r0, _08F00734 @ =gUnknown_08F1B628
	ldrb r2, [r2]
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	bl sub_8F019E4
	cmp r0, #0
	bne _08F00718
	ldr r0, _08F00738 @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F00718
	ldr r1, _08F0073C @ =gKeysRepeat
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F00718
	movs r0, #1
	bl sub_8F019E4
_08F00718:
	ldr r0, _08F00740 @ =gUnknown_030007A0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _08F00726
	b _08F003C8
_08F00726:
	bl sub_8F00ADC
	b _08F003C8
	.align 2, 0
_08F0072C: .4byte gUnknown_03000C64
_08F00730: .4byte gUnknown_030007A4
_08F00734: .4byte gUnknown_08F1B628
_08F00738: .4byte gUnknown_0300317C
_08F0073C: .4byte gKeysRepeat
_08F00740: .4byte gUnknown_030007A0
