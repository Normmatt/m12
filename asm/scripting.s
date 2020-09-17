#ifdef NDS_VERSION
#include "macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	thumb_func_start SCR_CMD_04
SCR_CMD_04: @ 0x08F04E7C
	push {lr}
	ldr r1, _08F04EA4 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r1, [r2, #1]
	adds r2, r1, #0
	ldr r0, _08F04EA8 @ =gCurrentBgMusic
	ldrb r0, [r0]
	cmp r0, #1
	beq _08F04EB2
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _08F04EAC
	adds r0, r1, #0
	bl sub_8F09888
	b _08F04EB2
	.align 2, 0
_08F04EA4: .4byte gScriptPtr
_08F04EA8: .4byte gCurrentBgMusic
_08F04EAC:
	adds r0, r2, #0
	bl DelayByAmount
_08F04EB2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SCR_CMD_05
SCR_CMD_05: @ 0x08F04EB8
	ldr r1, _08F04EC4 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08F04EC4: .4byte gScriptPtr

	thumb_func_start SCR_CMD_06
SCR_CMD_06: @ 0x08F04EC8
	ldr r1, _08F04ED4 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08F04ED4: .4byte gScriptPtr

	thumb_func_start SCR_CMD_08
SCR_CMD_08: @ 0x08F04ED8
	push {r4, r5, r6, r7, lr}
	ldr r1, _08F04FA4 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r4, [r2, #1]
	adds r2, r0, #1
	str r2, [r1]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r4, r0
	ldr r0, _08F04FA8 @ =0x00000309
	cmp r4, r0
	bne _08F04EFE
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _08F04EFE
	movs r4, #0xe3
	lsls r4, r4, #2
_08F04EFE:
	adds r0, r4, #0
	bl DrawTextWithId
	ldr r0, _08F04FAC @ =gUnknown_03003170
	movs r1, #1
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldr r0, _08F04FB0 @ =0x00000232
	cmp r4, r0
	bne _08F04F2C
	ldr r5, _08F04FA4 @ =gScriptPtr
	ldr r0, [r5]
	subs r0, #0x1a
	ldrb r0, [r0]
	cmp r0, #0x5a
	bne _08F04F2C
	ldr r0, _08F04FB4 @ =0x00000233
	bl DrawTextWithId
	ldr r0, [r5]
	subs r0, #0x1b
	str r0, [r5]
_08F04F2C:
	ldr r0, _08F04FB8 @ =0x000003E5
	cmp r4, r0
	bne _08F04F8E
	movs r3, #0
	ldr r5, _08F04FBC @ =gGameInfo
	adds r7, r5, #0
	adds r7, #8
	movs r6, #0
_08F04F3C:
	adds r0, r3, r7
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F04F68
	lsls r0, r1, #6
	adds r2, r0, r5
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
_08F04F68:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F04F3C
	movs r0, #7
	bl PlaySfxById1
	bl sub_8F0B004
	ldr r1, _08F04FAC @ =gUnknown_03003170
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bl UpdateCharactersInParty
	bl sub_8F03128
_08F04F8E:
	movs r0, #0xce
	lsls r0, r0, #1
	cmp r4, r0
	bne _08F04F9C
	ldr r1, _08F04FC0 @ =gUnknown_030007A8
	movs r0, #1
	strb r0, [r1]
_08F04F9C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F04FA4: .4byte gScriptPtr
_08F04FA8: .4byte 0x00000309
_08F04FAC: .4byte gUnknown_03003170
_08F04FB0: .4byte 0x00000232
_08F04FB4: .4byte 0x00000233
_08F04FB8: .4byte 0x000003E5
_08F04FBC: .4byte gGameInfo
_08F04FC0: .4byte gUnknown_030007A8

	thumb_func_start SCR_CMD_09
SCR_CMD_09: @ 0x08F04FC4
	push {lr}
	ldr r0, _08F04FE8 @ =gTextDelayAfterWriteCharacterEnabled
	movs r1, #0x80
	ldrb r2, [r0]
	orrs r1, r2
#ifdef JAPANESE
	strb r1, [r0]
	ldr r0, _08F04FEC @ =gUnknown_08F278E8
#elif ENGLISH
	@repointed yes/no main dialog options, make the game know when to choose which one
	bl choose_yes_no_size
#endif
	bl DrawTextWithIdWaitForButton
_08F04FD6:
	movs r0, #0
	bl sub_8F0B2C8
	cmp r0, #1
	beq _08F04FF0
	cmp r0, #2
	beq _08F05000
	b _08F04FD6
	.align 2, 0
_08F04FE8: .4byte gTextDelayAfterWriteCharacterEnabled
_08F04FEC: .4byte gUnknown_08F278E8
_08F04FF0:
	ldr r1, _08F04FFC @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _08F05004
	.align 2, 0
_08F04FFC: .4byte gScriptPtr
_08F05000:
	bl SCR_CMD_01_Jump
_08F05004:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_0A
SCR_CMD_0A: @ 0x08F05008
	push {lr}
	ldr r2, _08F05020 @ =gScriptPtr
	ldr r1, [r2]
	ldr r0, _08F05024 @ =gUnknown_03001D30
	ldrb r3, [r1]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08F05028
	bl SCR_CMD_01_Jump
	b _08F0502C
	.align 2, 0
_08F05020: .4byte gScriptPtr
_08F05024: .4byte gUnknown_03001D30
_08F05028:
	adds r0, r1, #1
	str r0, [r2]
_08F0502C:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_0B
SCR_CMD_0B: @ 0x08F05030
	push {lr}
	ldr r2, _08F05048 @ =gScriptPtr
	ldr r1, [r2]
	ldr r0, _08F0504C @ =gUnknown_03001D30
	ldrb r3, [r1]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08F05050
	bl SCR_CMD_01_Jump
	b _08F05054
	.align 2, 0
_08F05048: .4byte gScriptPtr
_08F0504C: .4byte gUnknown_03001D30
_08F05050:
	adds r0, r1, #1
	str r0, [r2]
_08F05054:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_0C
SCR_CMD_0C: @ 0x08F05058
	push {lr}
	ldr r3, _08F05080 @ =gScriptPtr
	ldr r2, [r3]
	ldr r0, _08F05084 @ =gUnknown_03001D30
	ldrb r1, [r2]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [r3]
	cmp r1, r0
	bne _08F05078
	ldrb r1, [r2]
	adds r1, #0xc0
	ldr r0, _08F05088 @ =gUnknown_03003188
	ldrb r0, [r0]
	cmp r1, r0
	beq _08F0508C
_08F05078:
	bl SCR_CMD_01_Jump
	b _08F05090
	.align 2, 0
_08F05080: .4byte gScriptPtr
_08F05084: .4byte gUnknown_03001D30
_08F05088: .4byte gUnknown_03003188
_08F0508C:
	adds r0, r2, #1
	str r0, [r3]
_08F05090:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_0D
SCR_CMD_0D: @ 0x08F05094
	push {lr}
	ldr r3, _08F050B8 @ =gScriptPtr
	ldr r2, [r3]
	ldr r0, _08F050BC @ =gUnknown_03001D30
	ldrb r1, [r2]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [r3]
	cmp r1, r0
	bne _08F050B2
	ldr r0, _08F050C0 @ =gUnknown_03003188
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08F050C4
_08F050B2:
	bl SCR_CMD_01_Jump
	b _08F050C8
	.align 2, 0
_08F050B8: .4byte gScriptPtr
_08F050BC: .4byte gUnknown_03001D30
_08F050C0: .4byte gUnknown_03003188
_08F050C4:
	adds r0, r2, #1
	str r0, [r3]
_08F050C8:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_0E_SoftReset
SCR_CMD_0E_SoftReset: @ 0x08F050CC
	push {lr}
	bl M1_SoftReset
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SCR_CMD_0F_DelayedSoftReset
SCR_CMD_0F_DelayedSoftReset: @ 0x08F050D8
	push {lr}
	bl WaitForActionButtonPress
	bl M1_SoftReset
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SCR_CMD_10_SetFlag
SCR_CMD_10_SetFlag: @ 0x08F050E8
	ldr r1, _08F05110 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r0, _08F05114 @ =gGameInfo
	ldrb r3, [r2, #1]
	lsrs r2, r3, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r2, r0
	movs r1, #7
	ands r1, r3
	movs r0, #0x80
	asrs r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08F05110: .4byte gScriptPtr
_08F05114: .4byte gGameInfo

	thumb_func_start SCR_CMD_11_ClearFlag
SCR_CMD_11_ClearFlag: @ 0x08F05118
	ldr r1, _08F05140 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r0, _08F05144 @ =gGameInfo
	ldrb r3, [r2, #1]
	lsrs r2, r3, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r2, r0
	movs r1, #7
	ands r1, r3
	movs r0, #0x80
	asrs r0, r1
	ldrb r1, [r2]
	bics r1, r0
	adds r0, r1, #0
	strb r0, [r2]
	bx lr
	.align 2, 0
_08F05140: .4byte gScriptPtr
_08F05144: .4byte gGameInfo

	thumb_func_start SCR_CMD_12
SCR_CMD_12: @ 0x08F05148
	push {r4, r5, lr}
	ldr r3, _08F05178 @ =gScriptPtr
	ldr r1, [r3]
	adds r4, r1, #1
	str r4, [r3]
	ldr r0, _08F0517C @ =gGameInfo
	ldrb r2, [r1, #1]
	lsrs r1, r2, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r1, r1, r0
	movs r0, #7
	ands r0, r2
	ldrb r1, [r1]
	lsls r1, r0
	adds r0, r1, #0
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F05180
	adds r0, r4, #1
	str r0, [r3]
	b _08F05184
	.align 2, 0
_08F05178: .4byte gScriptPtr
_08F0517C: .4byte gGameInfo
_08F05180:
	bl SCR_CMD_01_Jump
_08F05184:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SCR_CMD_13
SCR_CMD_13: @ 0x08F0518C
	ldr r1, _08F051A8 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r0, _08F051AC @ =gGameInfo
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #1]
	adds r0, r2, r0
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_08F051A8: .4byte gScriptPtr
_08F051AC: .4byte gGameInfo

	thumb_func_start SCR_CMD_14
SCR_CMD_14: @ 0x08F051B0
	ldr r1, _08F051CC @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r0, _08F051D0 @ =gGameInfo
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #1]
	adds r0, r2, r0
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_08F051CC: .4byte gScriptPtr
_08F051D0: .4byte gGameInfo

	thumb_func_start SCR_CMD_15
SCR_CMD_15: @ 0x08F051D4
	ldr r1, _08F051F0 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r0, _08F051F4 @ =gGameInfo
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #1]
	adds r0, r2, r0
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08F051F0: .4byte gScriptPtr
_08F051F4: .4byte gGameInfo

	thumb_func_start SCR_CMD_16
SCR_CMD_16: @ 0x08F051F8
	push {r4, r5, lr}
	ldr r3, _08F05220 @ =gScriptPtr
	ldr r0, [r3]
	adds r2, r0, #1
	str r2, [r3]
	ldrb r1, [r0, #1]
	adds r4, r2, #1
	str r4, [r3]
	ldr r0, _08F05224 @ =gGameInfo
	movs r5, #0x98
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r1, r1, r0
	ldrb r1, [r1]
	ldrb r2, [r2, #1]
	cmp r1, r2
	bhs _08F05228
	bl SCR_CMD_01_Jump
	b _08F0522C
	.align 2, 0
_08F05220: .4byte gScriptPtr
_08F05224: .4byte gGameInfo
_08F05228:
	adds r0, r4, #1
	str r0, [r3]
_08F0522C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SCR_CMD_17
SCR_CMD_17: @ 0x08F05234
	ldr r1, _08F0524C @ =gScriptPtr
	ldr r0, [r1]
	adds r3, r0, #1
	str r3, [r1]
	ldrb r2, [r0, #1]
	adds r0, r3, #1
	str r0, [r1]
	ldr r0, _08F05250 @ =gGameInfo
	adds r2, r2, r0
	ldrb r0, [r3, #1]
	strb r0, [r2]
	bx lr
	.align 2, 0
_08F0524C: .4byte gScriptPtr
_08F05250: .4byte gGameInfo

	thumb_func_start SCR_CMD_18
SCR_CMD_18: @ 0x08F05254
	push {r4, lr}
	sub sp, #8
	mov r0, sp
	bl SaveTextSystemState
	bl SelectCharacter
	adds r4, r0, #0
	mov r0, sp
	bl LoadTextSystemState
	ldr r1, _08F0527C @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0
	strb r0, [r1]
	cmp r4, #0
	bgt _08F05280
	bl SCR_CMD_01_Jump
	b _08F0528C
	.align 2, 0
_08F0527C: .4byte gTextDelayAfterWriteCharacterEnabled
_08F05280:
	ldr r0, _08F05294 @ =gCurrentCharacterId
	strb r4, [r0]
	ldr r1, _08F05298 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F0528C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F05294: .4byte gCurrentCharacterId
_08F05298: .4byte gScriptPtr

	thumb_func_start SCR_CMD_19_SetCurrentCharacterId
SCR_CMD_19_SetCurrentCharacterId: @ 0x08F0529C
	ldr r1, _08F052AC @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F052B0 @ =gCurrentCharacterId
	ldrb r0, [r2, #1]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08F052AC: .4byte gScriptPtr
_08F052B0: .4byte gCurrentCharacterId

	thumb_func_start SCR_CMD_1A
SCR_CMD_1A: @ 0x08F052B4
	push {lr}
	ldr r2, _08F052D0 @ =gScriptPtr
	ldr r1, [r2]
	adds r3, r1, #1
	str r3, [r2]
	ldr r0, _08F052D4 @ =gCurrentCharacterId
	ldrb r1, [r1, #1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08F052D8
	bl SCR_CMD_01_Jump
	b _08F052DC
	.align 2, 0
_08F052D0: .4byte gScriptPtr
_08F052D4: .4byte gCurrentCharacterId
_08F052D8:
	adds r0, r3, #1
	str r0, [r2]
_08F052DC:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_1B
SCR_CMD_1B: @ 0x08F052E0
	push {lr}
	ldr r0, _08F052FC @ =gGameInfo
	ldrb r1, [r0, #0x15]
	ldrb r2, [r0, #0x16]
	orrs r1, r2
	ldrb r0, [r0, #0x17]
	orrs r1, r0
	cmp r1, #0
	beq _08F05304
	ldr r1, _08F05300 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _08F05308
	.align 2, 0
_08F052FC: .4byte gGameInfo
_08F05300: .4byte gScriptPtr
_08F05304:
	bl SCR_CMD_01_Jump
_08F05308:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_1C
SCR_CMD_1C: @ 0x08F0530C
	push {lr}
	bl SCR_CMD_1F_ShowMoney
	bl sub_8F0B350
	adds r1, r0, #0
	cmp r1, #0
	bge _08F05322
	bl SCR_CMD_01_Jump
	b _08F0532E
_08F05322:
	ldr r0, _08F05334 @ =gTempNumber
	strh r1, [r0]
	ldr r1, _08F05338 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F0532E:
	pop {r0}
	bx r0
	.align 2, 0
_08F05334: .4byte gTempNumber
_08F05338: .4byte gScriptPtr

	thumb_func_start SCR_CMD_1D
SCR_CMD_1D: @ 0x08F0533C
	push {r4, lr}
	ldr r3, _08F05360 @ =gScriptPtr
	ldr r0, [r3]
	adds r2, r0, #1
	str r2, [r3]
	ldr r4, _08F05364 @ =gTempNumber
	ldrb r1, [r0, #1]
	strh r1, [r4]
	adds r0, r2, #1
	str r0, [r3]
	ldrb r2, [r2, #1]
	lsls r0, r2, #8
	adds r1, r1, r0
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F05360: .4byte gScriptPtr
_08F05364: .4byte gTempNumber

	thumb_func_start SCR_CMD_1E
SCR_CMD_1E: @ 0x08F05368
	push {lr}
	ldr r2, _08F0538C @ =gScriptPtr
	ldr r1, [r2]
	adds r0, r1, #1
	str r0, [r2]
	ldrb r1, [r1, #1]
	adds r3, r0, #1
	str r3, [r2]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, _08F05390 @ =gTempNumber
	ldrh r0, [r0]
	cmp r0, r1
	bhs _08F05394
	bl SCR_CMD_01_Jump
	b _08F05398
	.align 2, 0
_08F0538C: .4byte gScriptPtr
_08F05390: .4byte gTempNumber
_08F05394:
	adds r0, r3, #1
	str r0, [r2]
_08F05398:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_1F_ShowMoney
SCR_CMD_1F_ShowMoney: @ 0x08F0539C
	push {lr}
	sub sp, #8
	mov r0, sp
	bl SaveTextSystemState
	bl DrawMoneyWindow
	mov r0, sp
	bl LoadTextSystemState
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SCR_CMD_20
SCR_CMD_20: @ 0x08F053B8
	push {r4, lr}
	sub sp, #8
	mov r0, sp
	bl SaveTextSystemState
	bl sub_8F0B670
	adds r4, r0, #0
	mov r0, sp
	bl LoadTextSystemState
	ldr r1, _08F053E0 @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0
	strb r0, [r1]
	cmp r4, #0
	bgt _08F053E4
	bl SCR_CMD_01_Jump
	b _08F053FC
	.align 2, 0
_08F053E0: .4byte gTextDelayAfterWriteCharacterEnabled
_08F053E4:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl SelectItem
	ldr r1, _08F05404 @ =gCurrentCharacterId
	ldr r0, _08F05408 @ =gUnknown_03003174
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08F0540C @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F053FC:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F05404: .4byte gCurrentCharacterId
_08F05408: .4byte gUnknown_03003174
_08F0540C: .4byte gScriptPtr

	thumb_func_start SCR_CMD_21
SCR_CMD_21: @ 0x08F05410
	push {r4, lr}
	sub sp, #8
	mov r0, sp
	bl SaveTextSystemState
	bl sub_8F0B7E0
	adds r4, r0, #0
	mov r0, sp
	bl LoadTextSystemState
	ldr r1, _08F05438 @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0
	strb r0, [r1]
	cmp r4, #0
	bgt _08F0543C
	bl SCR_CMD_01_Jump
	b _08F0544C
	.align 2, 0
_08F05438: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0543C:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl SelectItem
	ldr r1, _08F05454 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F0544C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F05454: .4byte gScriptPtr

	thumb_func_start SCR_CMD_22
SCR_CMD_22: @ 0x08F05458
	push {r4, r5, lr}
	sub sp, #8
	ldr r4, _08F05490 @ =gScriptPtr
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	mov r0, sp
	bl SaveTextSystemState
	ldr r0, [r4]
	bl sub_8F0BA70
	adds r5, r0, #0
	mov r0, sp
	bl LoadTextSystemState
	ldr r1, _08F05494 @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #3
	str r0, [r4]
	cmp r5, #0
	bgt _08F05498
	bl SCR_CMD_01_Jump
	b _08F054B0
	.align 2, 0
_08F05490: .4byte gScriptPtr
_08F05494: .4byte gTextDelayAfterWriteCharacterEnabled
_08F05498:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl SelectItem
	ldr r1, _08F054B8 @ =gUnknown_030007D8
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_08F054B0:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F054B8: .4byte gUnknown_030007D8

	thumb_func_start SCR_CMD_23
SCR_CMD_23: @ 0x08F054BC
	push {r4, lr}
	ldr r1, _08F05500 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r0, [r2, #1]
	bl SelectItem
	ldr r1, _08F05504 @ =gUnknown_030007D8
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0
	ldr r1, _08F05508 @ =gCurrentItemId
	ldr r0, _08F0550C @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r3, r0, #6
	ldr r4, _08F05510 @ =gUnknown_030031F0
	ldrb r1, [r1]
_08F054E6:
	adds r0, r2, r3
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r1, r0
	beq _08F05514
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F054E6
	bl SCR_CMD_01_Jump
	b _08F05520
	.align 2, 0
_08F05500: .4byte gScriptPtr
_08F05504: .4byte gUnknown_030007D8
_08F05508: .4byte gCurrentItemId
_08F0550C: .4byte gCurrentCharacterId
_08F05510: .4byte gUnknown_030031F0
_08F05514:
	ldr r0, _08F05528 @ =gUnknown_030007D8
	strh r2, [r0]
	ldr r1, _08F0552C @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05520:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F05528: .4byte gUnknown_030007D8
_08F0552C: .4byte gScriptPtr

	thumb_func_start SCR_CMD_24
SCR_CMD_24: @ 0x08F05530
	push {lr}
	ldr r1, _08F0556C @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r0, [r2, #1]
	bl SelectItem
	ldr r1, _08F05570 @ =gUnknown_030007D8
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0
	ldr r0, _08F05574 @ =gCurrentItemId
	ldr r3, _08F05578 @ =gUnknown_03003440
	ldrb r2, [r0]
_08F05552:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r2, r0
	beq _08F0557C
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x4f
	bls _08F05552
	bl SCR_CMD_01_Jump
	b _08F05588
	.align 2, 0
_08F0556C: .4byte gScriptPtr
_08F05570: .4byte gUnknown_030007D8
_08F05574: .4byte gCurrentItemId
_08F05578: .4byte gUnknown_03003440
_08F0557C:
	ldr r0, _08F0558C @ =gUnknown_030007D8
	strh r1, [r0]
	ldr r1, _08F05590 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05588:
	pop {r0}
	bx r0
	.align 2, 0
_08F0558C: .4byte gUnknown_030007D8
_08F05590: .4byte gScriptPtr

	thumb_func_start SCR_CMD_25
SCR_CMD_25: @ 0x08F05594
	push {r4, lr}
	ldr r4, _08F055C0 @ =gScriptPtr
	ldr r1, [r4]
	adds r0, r1, #1
	str r0, [r4]
	ldrb r0, [r1, #1]
	bl SelectItem
	ldr r1, _08F055C4 @ =gCurrentItemId
	ldr r0, [r4]
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08F055BA
	ldr r1, _08F055C8 @ =gUnknown_030007D8
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
_08F055BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F055C0: .4byte gScriptPtr
_08F055C4: .4byte gCurrentItemId
_08F055C8: .4byte gUnknown_030007D8

	thumb_func_start SCR_CMD_26
SCR_CMD_26: @ 0x08F055CC
	push {lr}
	ldr r2, _08F055E8 @ =gScriptPtr
	ldr r1, [r2]
	adds r3, r1, #1
	str r3, [r2]
	ldr r0, _08F055EC @ =gCurrentItemId
	ldrb r0, [r0]
	ldrb r1, [r1, #1]
	cmp r0, r1
	beq _08F055F0
	bl SCR_CMD_01_Jump
	b _08F055F4
	.align 2, 0
_08F055E8: .4byte gScriptPtr
_08F055EC: .4byte gCurrentItemId
_08F055F0:
	adds r0, r3, #1
	str r0, [r2]
_08F055F4:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_27
SCR_CMD_27: @ 0x08F055F8
	push {r4, r5, r6, r7, lr}
	ldr r1, _08F05658 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r0, [r2, #1]
	bl SelectItem
	ldr r1, _08F0565C @ =gUnknown_030007D8
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	ldr r0, _08F05660 @ =gUnknown_03003198
	mov ip, r0
	ldr r7, _08F05664 @ =gCurrentItemId
_08F0561A:
	mov r1, ip
	adds r0, r4, r1
	ldrb r5, [r0]
	subs r1, r5, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F05646
	movs r2, #0
	lsls r3, r1, #6
	ldr r6, _08F05668 @ =gUnknown_030031F0
	ldrb r1, [r7]
_08F05632:
	adds r0, r2, r3
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r1, r0
	beq _08F0566C
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F05632
_08F05646:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08F0561A
	bl SCR_CMD_01_Jump
	b _08F0567C
	.align 2, 0
_08F05658: .4byte gScriptPtr
_08F0565C: .4byte gUnknown_030007D8
_08F05660: .4byte gUnknown_03003198
_08F05664: .4byte gCurrentItemId
_08F05668: .4byte gUnknown_030031F0
_08F0566C:
	ldr r0, _08F05684 @ =gCurrentCharacterId
	strb r5, [r0]
	ldr r0, _08F05688 @ =gUnknown_030007D8
	strh r2, [r0]
	ldr r1, _08F0568C @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F0567C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F05684: .4byte gCurrentCharacterId
_08F05688: .4byte gUnknown_030007D8
_08F0568C: .4byte gScriptPtr

	thumb_func_start SCR_CMD_28_IncrementMoney
SCR_CMD_28_IncrementMoney: @ 0x08F05690
	push {lr}
	ldr r2, _08F056A8 @ =gGameInfo
	ldr r0, _08F056AC @ =gTempNumber
	ldrh r0, [r0]
	ldrh r3, [r2, #0x10]
	adds r1, r0, r3
	ldr r0, _08F056B0 @ =0x0000FFFF
	cmp r1, r0
	ble _08F056B4
	bl SCR_CMD_01_Jump
	b _08F056BE
	.align 2, 0
_08F056A8: .4byte gGameInfo
_08F056AC: .4byte gTempNumber
_08F056B0: .4byte 0x0000FFFF
_08F056B4:
	strh r1, [r2, #0x10]
	ldr r1, _08F056C4 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F056BE:
	pop {r0}
	bx r0
	.align 2, 0
_08F056C4: .4byte gScriptPtr

	thumb_func_start SCR_CMD_29_DecrementMoney
SCR_CMD_29_DecrementMoney: @ 0x08F056C8
	push {lr}
	ldr r1, _08F056E0 @ =gGameInfo
	ldr r0, _08F056E4 @ =gTempNumber
	ldrh r2, [r1, #0x10]
	ldrh r0, [r0]
	subs r0, r2, r0
	cmp r0, #0
	bge _08F056E8
	bl SCR_CMD_01_Jump
	b _08F056F2
	.align 2, 0
_08F056E0: .4byte gGameInfo
_08F056E4: .4byte gTempNumber
_08F056E8:
	strh r0, [r1, #0x10]
	ldr r1, _08F056F8 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F056F2:
	pop {r0}
	bx r0
	.align 2, 0
_08F056F8: .4byte gScriptPtr

	thumb_func_start SCR_CMD_2A_IncrementBankedMoney
SCR_CMD_2A_IncrementBankedMoney: @ 0x08F056FC
	push {lr}
	ldr r2, _08F05720 @ =gGameInfo
	ldrb r0, [r2, #0x13]
	lsls r1, r0, #8
	ldrb r3, [r2, #0x12]
	orrs r1, r3
	ldrb r3, [r2, #0x14]
	lsls r0, r3, #0x10
	adds r1, r1, r0
	ldr r0, _08F05724 @ =gTempNumber
	ldrh r0, [r0]
	adds r1, r0, r1
	ldr r0, _08F05728 @ =0x00FFFFFF
	cmp r1, r0
	ble _08F0572C
	bl SCR_CMD_01_Jump
	b _08F0573E
	.align 2, 0
_08F05720: .4byte gGameInfo
_08F05724: .4byte gTempNumber
_08F05728: .4byte 0x00FFFFFF
_08F0572C:
	strb r1, [r2, #0x12]
	asrs r0, r1, #8
	strb r0, [r2, #0x13]
	asrs r0, r1, #0x10
	strb r0, [r2, #0x14]
	ldr r1, _08F05744 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F0573E:
	pop {r0}
	bx r0
	.align 2, 0
_08F05744: .4byte gScriptPtr

	thumb_func_start SCR_CMD_2B_DecrementBankedMoney
SCR_CMD_2B_DecrementBankedMoney: @ 0x08F05748
	push {lr}
	ldr r2, _08F0576C @ =gGameInfo
	ldrb r0, [r2, #0x13]
	lsls r1, r0, #8
	ldrb r3, [r2, #0x12]
	orrs r1, r3
	ldrb r3, [r2, #0x14]
	lsls r0, r3, #0x10
	adds r1, r1, r0
	ldr r0, _08F05770 @ =gTempNumber
	ldrh r0, [r0]
	subs r0, r1, r0
	cmp r0, #0
	bge _08F05774
	bl SCR_CMD_01_Jump
	b _08F05788
	.align 2, 0
_08F0576C: .4byte gGameInfo
_08F05770: .4byte gTempNumber
_08F05774:
	adds r1, r0, #0
	strb r1, [r2, #0x12]
	asrs r0, r1, #8
	strb r0, [r2, #0x13]
	asrs r0, r1, #0x10
	strb r0, [r2, #0x14]
	ldr r1, _08F0578C @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05788:
	pop {r0}
	bx r0
	.align 2, 0
_08F0578C: .4byte gScriptPtr

	thumb_func_start SCR_CMD_2C
SCR_CMD_2C: @ 0x08F05790
	push {lr}
	ldr r0, _08F057BC @ =gCurrentItemId
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, _08F057C0 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x80
	ldrb r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	bne _08F057CC
	ldr r0, _08F057C4 @ =gCurrentCharacterId
	ldrb r0, [r0]
	bl RemoveItemFromInventory
	cmp r0, #0
	blt _08F057CC
	ldr r1, _08F057C8 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _08F057D0
	.align 2, 0
_08F057BC: .4byte gCurrentItemId
_08F057C0: .4byte gItemData
_08F057C4: .4byte gCurrentCharacterId
_08F057C8: .4byte gScriptPtr
_08F057CC:
	bl SCR_CMD_01_Jump
_08F057D0:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_2D
SCR_CMD_2D: @ 0x08F057D4
	push {lr}
	ldr r0, _08F05804 @ =gCurrentCharacterId
	ldrb r1, [r0]
	cmp r1, #5
	bhi _08F057FC
	movs r3, #0
	ldr r1, _08F05808 @ =gGameInfo
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r1, #0x60
	adds r2, r0, r1
_08F057EC:
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0580C
	adds r2, r1, #1
	adds r3, #1
	cmp r3, #7
	ble _08F057EC
_08F057FC:
	bl SCR_CMD_01_Jump
	b _08F0581A
	.align 2, 0
_08F05804: .4byte gCurrentCharacterId
_08F05808: .4byte gGameInfo
_08F0580C:
	ldr r0, _08F05820 @ =gCurrentItemId
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r1, _08F05824 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F0581A:
	pop {r0}
	bx r0
	.align 2, 0
_08F05820: .4byte gCurrentItemId
_08F05824: .4byte gScriptPtr

	thumb_func_start SCR_CMD_2E
SCR_CMD_2E: @ 0x08F05828
	push {lr}
	ldr r0, _08F0583C @ =gCurrentCharacterId
	ldrb r0, [r0]
	bl RemoveItemFromInventory
	cmp r0, #0
	bge _08F05840
	bl SCR_CMD_01_Jump
	b _08F05848
	.align 2, 0
_08F0583C: .4byte gCurrentCharacterId
_08F05840:
	ldr r1, _08F0584C @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05848:
	pop {r0}
	bx r0
	.align 2, 0
_08F0584C: .4byte gScriptPtr

	thumb_func_start SCR_CMD_2F
SCR_CMD_2F: @ 0x08F05850
	push {lr}
	movs r1, #0
	ldr r3, _08F05870 @ =gUnknown_03003440
_08F05856:
	adds r2, r1, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _08F05874
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x4f
	bls _08F05856
	bl SCR_CMD_01_Jump
	b _08F05882
	.align 2, 0
_08F05870: .4byte gUnknown_03003440
_08F05874:
	ldr r0, _08F05888 @ =gCurrentItemId
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r1, _08F0588C @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05882:
	pop {r0}
	bx r0
	.align 2, 0
_08F05888: .4byte gCurrentItemId
_08F0588C: .4byte gScriptPtr

	thumb_func_start SCR_CMD_30
SCR_CMD_30: @ 0x08F05890
	push {r4, r5, lr}
	movs r0, #0
	bl GetPositionOfCurrentItemFromInventoryOrCloset
	adds r2, r0, #0
	cmp r2, #0
	blt _08F058E4
	ldr r3, _08F058D8 @ =gGameInfo
	ldr r5, _08F058DC @ =gUnknown_030007D8
	ldr r4, _08F058E0 @ =gScriptPtr
	cmp r2, #0x4e
	bgt _08F058BC
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r2, r1
	adds r1, r0, r3
_08F058B0:
	ldrb r0, [r1, #1]
	strb r0, [r1]
	adds r1, #1
	adds r2, #1
	cmp r2, #0x4e
	ble _08F058B0
_08F058BC:
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r3, r1
	adds r0, r2, r0
	movs r1, #0
	strb r1, [r0]
	subs r1, #1
	adds r0, r1, #0
	strh r0, [r5]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	b _08F058E8
	.align 2, 0
_08F058D8: .4byte gGameInfo
_08F058DC: .4byte gUnknown_030007D8
_08F058E0: .4byte gScriptPtr
_08F058E4:
	bl SCR_CMD_01_Jump
_08F058E8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SCR_CMD_31
SCR_CMD_31: @ 0x08F058F0
	push {r4, r5, lr}
	ldr r4, _08F05918 @ =gScriptPtr
	ldr r1, [r4]
	adds r0, r1, #1
	str r0, [r4]
	ldrb r5, [r1, #1]
	ldr r1, _08F0591C @ =gGameInfo
	ldr r0, _08F05920 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r5, r0
	adds r1, #0x60
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F05924
	bl SCR_CMD_01_Jump
	b _08F05932
	.align 2, 0
_08F05918: .4byte gScriptPtr
_08F0591C: .4byte gGameInfo
_08F05920: .4byte gCurrentCharacterId
_08F05924:
	bl SelectItem
	ldr r0, _08F05938 @ =gUnknown_030007D8
	strh r5, [r0]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_08F05932:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F05938: .4byte gUnknown_030007D8

	thumb_func_start SCR_CMD_32
SCR_CMD_32: @ 0x08F0593C
	push {r4, lr}
	ldr r1, _08F05960 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r4, _08F05964 @ =gTempNumber
	ldrh r1, [r4]
	ldrb r2, [r2, #1]
	adds r0, r1, #0
	muls r0, r2, r0
	movs r1, #0x64
	bl __divsi3
	ldr r1, _08F05968 @ =0x0000FFFF
	cmp r0, r1
	ble _08F0596C
	strh r1, [r4]
	b _08F0596E
	.align 2, 0
_08F05960: .4byte gScriptPtr
_08F05964: .4byte gTempNumber
_08F05968: .4byte 0x0000FFFF
_08F0596C:
	strh r0, [r4]
_08F0596E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_33
SCR_CMD_33: @ 0x08F05974
	push {r4, lr}
	ldr r1, _08F059A8 @ =gScriptPtr
	ldr r3, [r1]
	adds r0, r3, #1
	str r0, [r1]
	ldr r2, _08F059AC @ =gCurrentCharacterId
	ldrb r0, [r3, #1]
	strb r0, [r2]
	movs r2, #0
	adds r4, r1, #0
	ldr r1, _08F059B0 @ =gUnknown_03003198
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08F0598E:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r3, r0
	beq _08F059B4
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F0598E
	bl SCR_CMD_01_Jump
	b _08F059BA
	.align 2, 0
_08F059A8: .4byte gScriptPtr
_08F059AC: .4byte gCurrentCharacterId
_08F059B0: .4byte gUnknown_03003198
_08F059B4:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_08F059BA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_34
SCR_CMD_34: @ 0x08F059C0
	push {lr}
	ldr r2, _08F059D8 @ =gScriptPtr
	ldr r1, [r2]
	ldr r0, _08F059DC @ =gUnknown_03001D30
	ldrb r3, [r1]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08F059E0
	bl SCR_CMD_01_Jump
	b _08F059E4
	.align 2, 0
_08F059D8: .4byte gScriptPtr
_08F059DC: .4byte gUnknown_03001D30
_08F059E0:
	adds r0, r1, #1
	str r0, [r2]
_08F059E4:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_35
SCR_CMD_35: @ 0x08F059E8
	push {lr}
	ldr r2, _08F05A00 @ =gScriptPtr
	ldr r1, [r2]
	ldr r0, _08F05A04 @ =gUnknown_03001D30
	ldrb r3, [r1]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08F05A08
	bl SCR_CMD_01_Jump
	b _08F05A0C
	.align 2, 0
_08F05A00: .4byte gScriptPtr
_08F05A04: .4byte gUnknown_03001D30
_08F05A08:
	adds r0, r1, #1
	str r0, [r2]
_08F05A0C:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_36
SCR_CMD_36: @ 0x08F05A10
	push {lr}
	ldr r0, _08F05A2C @ =gUnknown_03000784
	ldr r0, [r0]
	ldr r2, [r0, #8]
	movs r0, #7
	ldr r1, _08F05A30 @ =gUnknown_030007A4
	ldrb r2, [r2, #2]
	ands r0, r2
	ldrb r1, [r1]
	cmp r0, r1
	beq _08F05A34
	bl SCR_CMD_01_Jump
	b _08F05A3C
	.align 2, 0
_08F05A2C: .4byte gUnknown_03000784
_08F05A30: .4byte gUnknown_030007A4
_08F05A34:
	ldr r1, _08F05A40 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05A3C:
	pop {r0}
	bx r0
	.align 2, 0
_08F05A40: .4byte gScriptPtr

	thumb_func_start SCR_CMD_37
SCR_CMD_37: @ 0x08F05A44
	push {r4, lr}
	ldr r4, _08F05A7C @ =gScriptPtr
	ldr r0, [r4]
	adds r2, r0, #1
	str r2, [r4]
	ldrb r0, [r0, #1]
	adds r1, r2, #1
	str r1, [r4]
	ldrb r2, [r2, #1]
	lsls r1, r2, #8
	orrs r0, r1
	ldr r2, _08F05A80 @ =gTextDelayAfterWriteCharacterEnabled
	movs r1, #0x80
	ldrb r3, [r2]
	orrs r1, r3
	strb r1, [r2]
	bl DrawTextWithId
	movs r0, #1
	bl sub_8F0B2C8
	cmp r0, #1
	bne _08F05A84
	ldr r0, [r4]
	adds r0, #2
	str r0, [r4]
	b _08F05A92
	.align 2, 0
_08F05A7C: .4byte gScriptPtr
_08F05A80: .4byte gTextDelayAfterWriteCharacterEnabled
_08F05A84:
	cmp r0, #2
	beq _08F05A8E
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_08F05A8E:
	bl SCR_CMD_01_Jump
_08F05A92:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_38
SCR_CMD_38: @ 0x08F05A98
	push {lr}
	movs r1, #0
	ldr r2, _08F05AC8 @ =gGameInfo
	adds r3, r2, #0
	adds r3, #8
_08F05AA2:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F05AB8
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r2
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F05ACC
_08F05AB8:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08F05AA2
	bl SCR_CMD_01_Jump
	b _08F05AD4
	.align 2, 0
_08F05AC8: .4byte gGameInfo
_08F05ACC:
	ldr r1, _08F05AD8 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05AD4:
	pop {r0}
	bx r0
	.align 2, 0
_08F05AD8: .4byte gScriptPtr

	thumb_func_start SCR_CMD_39
SCR_CMD_39: @ 0x08F05ADC
	push {lr}
	ldr r0, _08F05AF4 @ =gGameInfo
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F05AF8
	bl SCR_CMD_01_Jump
	b _08F05B00
	.align 2, 0
_08F05AF4: .4byte gGameInfo
_08F05AF8:
	ldr r1, _08F05B04 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05B00:
	pop {r0}
	bx r0
	.align 2, 0
_08F05B04: .4byte gScriptPtr

	thumb_func_start SCR_CMD_3A
SCR_CMD_3A: @ 0x08F05B08
	push {lr}
	ldr r2, _08F05B28 @ =gScriptPtr
	ldr r1, [r2]
	adds r3, r1, #1
	str r3, [r2]
	ldr r0, _08F05B2C @ =gGameInfo
	adds r0, #8
	ldrb r1, [r1, #1]
	adds r0, r1, r0
	ldrb r1, [r0]
	cmp r1, #0
	bne _08F05B30
	bl SCR_CMD_01_Jump
	b _08F05B38
	.align 2, 0
_08F05B28: .4byte gScriptPtr
_08F05B2C: .4byte gGameInfo
_08F05B30:
	ldr r0, _08F05B3C @ =gCurrentCharacterId
	strb r1, [r0]
	adds r0, r3, #1
	str r0, [r2]
_08F05B38:
	pop {r0}
	bx r0
	.align 2, 0
_08F05B3C: .4byte gCurrentCharacterId

	thumb_func_start SCR_CMD_3B
SCR_CMD_3B: @ 0x08F05B40
	ldr r1, _08F05B68 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r0, [r2, #1]
	ldr r2, _08F05B6C @ =gUnknown_03000784
	ldr r1, [r2]
	strb r0, [r1]
	ldr r3, [r2]
	ldr r1, _08F05B70 @ =gUnknown_08F645B4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	strb r1, [r3, #2]
	ldr r1, [r2]
	ldrh r0, [r0]
	lsrs r0, r0, #8
	strb r0, [r1, #0x14]
	bx lr
	.align 2, 0
_08F05B68: .4byte gScriptPtr
_08F05B6C: .4byte gUnknown_03000784
_08F05B70: .4byte gUnknown_08F645B4

	thumb_func_start SCR_CMD_3C
SCR_CMD_3C: @ 0x08F05B74
	ldr r1, _08F05B84 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F05B88 @ =gUnknown_030007E8
	ldrb r0, [r2, #1]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08F05B84: .4byte gScriptPtr
_08F05B88: .4byte gUnknown_030007E8

	thumb_func_start SCR_CMD_3D
SCR_CMD_3D: @ 0x08F05B8C
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _08F05C00 @ =gUnknown_030007A0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r5, _08F05C04 @ =gScriptPtr
	ldr r2, [r5]
	adds r3, r2, #1
	str r3, [r5]
	ldr r1, _08F05C08 @ =0xFFFFFF00
	ldr r0, [sp]
	ands r0, r1
	ldrb r2, [r2, #1]
	orrs r0, r2
	str r0, [sp]
	adds r2, r3, #1
	str r2, [r5]
	mov r4, sp
	ldrb r0, [r3, #1]
	strb r0, [r4, #1]
	adds r1, r2, #1
	str r1, [r5]
	ldrb r0, [r2, #1]
	strb r0, [r4, #2]
	adds r0, r1, #1
	str r0, [r5]
	ldrb r0, [r1, #1]
	strb r0, [r4, #3]
	ldr r3, _08F05C0C @ =gPlayerX
	ldr r2, [sp]
	ldr r1, _08F05C10 @ =0x0000FFC0
	ands r1, r2
	ldr r0, _08F05C14 @ =0x0000FE40
	adds r1, r1, r0
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1a
	adds r0, r0, r1
	strh r0, [r3]
	ldr r1, _08F05C18 @ =gPlayerY
	lsrs r0, r2, #0x16
	lsls r0, r0, #6
	ldr r3, _08F05C1C @ =0x0000FEC0
	adds r0, r0, r3
	lsls r2, r2, #0xa
	lsrs r2, r2, #0x1a
	adds r2, r2, r0
	strh r2, [r1]
	ldr r2, _08F05C20 @ =gUnknown_03000840
	ldr r1, _08F05C24 @ =gUnknown_030034A8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F05C00: .4byte gUnknown_030007A0
_08F05C04: .4byte gScriptPtr
_08F05C08: .4byte 0xFFFFFF00
_08F05C0C: .4byte gPlayerX
_08F05C10: .4byte 0x0000FFC0
_08F05C14: .4byte 0x0000FE40
_08F05C18: .4byte gPlayerY
_08F05C1C: .4byte 0x0000FEC0
_08F05C20: .4byte gUnknown_03000840
_08F05C24: .4byte gUnknown_030034A8

	thumb_func_start SCR_CMD_3E
SCR_CMD_3E: @ 0x08F05C28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r5, _08F05D6C @ =gScriptPtr
	ldr r0, [r5]
	adds r2, r0, #1
	str r2, [r5]
	ldr r4, _08F05D70 @ =gUnknown_03000784
	ldr r3, [r4]
	ldrb r1, [r0, #1]
	movs r6, #0
	strh r1, [r3, #0x1e]
	adds r0, r2, #1
	str r0, [r5]
	ldrb r2, [r2, #1]
	lsls r0, r2, #8
	adds r1, r1, r0
	strh r1, [r3, #0x1e]
	ldr r0, _08F05D74 @ =gUnknown_0300349C
	ldr r0, [r0]
	adds r0, r1, r0
	ldr r1, _08F05D78 @ =0xFFFF8000
	adds r2, r0, r1
	ldr r1, _08F05D7C @ =gUnknown_03000818
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r0, _08F05D80 @ =gUnknown_03001500
	strb r6, [r0]
	ldr r1, _08F05D84 @ =gUnknown_030007A0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08F05C72
	strb r6, [r1]
_08F05C72:
	ldrb r7, [r2]
	cmp r7, #0xf
	bls _08F05D5C
	movs r0, #7
	strb r0, [r3]
	ldr r1, [r4]
	movs r0, #0xbf
	ldrb r3, [r1, #0x14]
	ands r0, r3
	strb r0, [r1, #0x14]
	ldr r0, [r4]
	strb r6, [r0, #3]
	ldr r1, [r4]
	ldrb r0, [r2, #1]
	strb r0, [r1, #0x1a]
	ldr r2, [r4]
	ldr r0, [r5]
	ldr r1, _08F05D88 @ =gScriptLR
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	strb r0, [r2, #0x1c]
	ldr r2, [r4]
	ldr r1, _08F05D8C @ =gUnknown_03001D30
	ldrb r0, [r1]
	strb r0, [r2, #0x1d]
	strb r6, [r1]
	ldr r4, [r4]
	mov r8, r4
	ldrh r4, [r4, #4]
	ldr r6, _08F05D90 @ =0xFFFFFE40
	adds r2, r4, r6
	movs r7, #4
	rsbs r7, r7, #0
	mov ip, r7
	mov r0, ip
	ands r2, r0
	ldr r5, _08F05D94 @ =gUnknown_03002850
	ldr r1, _08F05D98 @ =gUnknown_0300081C
	ldr r3, [r1]
	mov sb, r3
	lsls r3, r3, #2
	adds r4, r3, r5
	ldr r1, _08F05D9C @ =0x0000FFFC
	adds r0, r1, #0
	ldrh r4, [r4]
	ands r0, r4
	subs r2, r2, r0
	mov r4, r8
	ldrh r4, [r4, #6]
	adds r6, #0x80
	adds r0, r4, r6
	mov r7, ip
	ands r0, r7
	adds r4, r5, #2
	adds r3, r3, r4
	ldrh r3, [r3]
	ands r1, r3
	subs r0, r0, r1
	mov r3, sb
	movs r7, #0
	mov ip, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	mov sb, r4
_08F05CFC:
	adds r3, #1
	cmp r3, #0x43
	ble _08F05D04
	movs r3, #0
_08F05D04:
	lsls r4, r3, #2
	mov r0, ip
	adds r5, r4, r0
	ldr r1, _08F05D98 @ =gUnknown_0300081C
	ldr r0, [r1]
	lsls r6, r0, #2
	mov r2, ip
	adds r1, r6, r2
	ldr r2, [sp]
	adds r0, r2, #0
	muls r0, r7, r0
	cmp r0, #0
	bge _08F05D20
	adds r0, #0xf
_08F05D20:
	asrs r0, r0, #4
	movs r2, #4
	rsbs r2, r2, #0
	mov r8, r2
	mov r2, r8
	ands r0, r2
	ldrh r1, [r1]
	adds r0, r1, r0
	asrs r1, r7, #3
	movs r2, #1
	ands r1, r2
	eors r0, r1
	strh r0, [r5]
	mov r0, sb
	adds r2, r4, r0
	adds r1, r6, r0
	mov r0, sl
	muls r0, r7, r0
	cmp r0, #0
	bge _08F05D4A
	adds r0, #0xf
_08F05D4A:
	asrs r0, r0, #4
	mov r4, r8
	ands r0, r4
	ldrh r1, [r1]
	adds r0, r1, r0
	strh r0, [r2]
	adds r7, #1
	cmp r7, #0xf
	ble _08F05CFC
_08F05D5C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F05D6C: .4byte gScriptPtr
_08F05D70: .4byte gUnknown_03000784
_08F05D74: .4byte gUnknown_0300349C
_08F05D78: .4byte 0xFFFF8000
_08F05D7C: .4byte gUnknown_03000818
_08F05D80: .4byte gUnknown_03001500
_08F05D84: .4byte gUnknown_030007A0
_08F05D88: .4byte gScriptLR
_08F05D8C: .4byte gUnknown_03001D30
_08F05D90: .4byte 0xFFFFFE40
_08F05D94: .4byte gUnknown_03002850
_08F05D98: .4byte gUnknown_0300081C
_08F05D9C: .4byte 0x0000FFFC

	thumb_func_start SCR_CMD_3F_JumpToObjectScript
SCR_CMD_3F_JumpToObjectScript: @ 0x08F05DA0
	ldr r1, _08F05DC4 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r3, _08F05DC8 @ =gUnknown_030007EC
	ldrb r2, [r2, #1]
	lsls r0, r2, #5
	ldr r1, _08F05DCC @ =gUnknown_03001D40
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08F05DD0 @ =gUnknown_03001510
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08F05DD4 @ =gUnknown_03001514
	movs r0, #0x40
	strb r0, [r1]
	bx lr
	.align 2, 0
_08F05DC4: .4byte gScriptPtr
_08F05DC8: .4byte gUnknown_030007EC
_08F05DCC: .4byte gUnknown_03001D40
_08F05DD0: .4byte gUnknown_03001510
_08F05DD4: .4byte gUnknown_03001514

	thumb_func_start SCR_CMD_40
SCR_CMD_40: @ 0x08F05DD8
	push {lr}
	ldr r2, _08F05DF0 @ =gScriptPtr
	ldr r1, [r2]
	ldr r0, _08F05DF4 @ =gUnknown_03001D30
	ldrb r3, [r1]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08F05DF8
	bl SCR_CMD_01_Jump
	b _08F05DFC
	.align 2, 0
_08F05DF0: .4byte gScriptPtr
_08F05DF4: .4byte gUnknown_03001D30
_08F05DF8:
	adds r0, r1, #1
	str r0, [r2]
_08F05DFC:
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_41
SCR_CMD_41: @ 0x08F05E00
	push {lr}
	ldr r1, _08F05E3C @ =gUnknown_030007A0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r2, _08F05E40 @ =gPlayerX
	ldr r1, _08F05E44 @ =gGameInfo
	ldrh r0, [r1, #0xc]
	adds r0, #0x40
	strh r0, [r2]
	ldr r2, _08F05E48 @ =gPlayerY
	ldrh r0, [r1, #0xe]
	adds r0, #0x80
	strh r0, [r2]
	ldr r2, _08F05E4C @ =gUnknown_03000840
	ldr r3, _08F05E50 @ =0x000002AE
	adds r0, r1, r3
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r2, _08F05E54 @ =gUnknown_030034A8
	ldr r0, _08F05E58 @ =0x000002AF
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	bl sub_8F09420
	pop {r0}
	bx r0
	.align 2, 0
_08F05E3C: .4byte gUnknown_030007A0
_08F05E40: .4byte gPlayerX
_08F05E44: .4byte gGameInfo
_08F05E48: .4byte gPlayerY
_08F05E4C: .4byte gUnknown_03000840
_08F05E50: .4byte 0x000002AE
_08F05E54: .4byte gUnknown_030034A8
_08F05E58: .4byte 0x000002AF

	thumb_func_start SCR_CMD_42
SCR_CMD_42: @ 0x08F05E5C
	push {r4, lr}
	ldr r1, _08F05E8C @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F05E90 @ =gCurrentCharacterId
	ldrb r0, [r2, #1]
	strb r0, [r1]
	movs r3, #0
	adds r4, r1, #0
	ldr r1, _08F05E94 @ =gUnknown_03003198
_08F05E72:
	adds r2, r3, r1
	ldrb r0, [r2]
	cmp r0, #0
	beq _08F05E98
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F05E72
	bl SCR_CMD_01_Jump
	b _08F05EA8
	.align 2, 0
_08F05E8C: .4byte gScriptPtr
_08F05E90: .4byte gCurrentCharacterId
_08F05E94: .4byte gUnknown_03003198
_08F05E98:
	ldrb r0, [r4]
	strb r0, [r2]
	bl UpdateCharactersInParty
	ldr r1, _08F05EB0 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05EA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F05EB0: .4byte gScriptPtr

	thumb_func_start SCR_CMD_43
SCR_CMD_43: @ 0x08F05EB4
	push {r4, lr}
	ldr r1, _08F05EE8 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F05EEC @ =gCurrentCharacterId
	ldrb r0, [r2, #1]
	strb r0, [r1]
	movs r1, #0
	ldr r4, _08F05EF0 @ =gGameInfo
	adds r3, r4, #0
	adds r3, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08F05ED0:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r2, r0
	beq _08F05EF4
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08F05ED0
	bl SCR_CMD_01_Jump
	b _08F05F22
	.align 2, 0
_08F05EE8: .4byte gScriptPtr
_08F05EEC: .4byte gCurrentCharacterId
_08F05EF0: .4byte gGameInfo
_08F05EF4:
	cmp r1, #2
	bhi _08F05F0C
	ldr r3, _08F05F28 @ =gUnknown_03003198
_08F05EFA:
	adds r2, r1, r3
	adds r1, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bls _08F05EFA
_08F05F0C:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r1, r0
	movs r1, #0
	strb r1, [r0]
	bl UpdateCharactersInParty
	ldr r1, _08F05F2C @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F05F22:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F05F28: .4byte gUnknown_03003198
_08F05F2C: .4byte gScriptPtr

	thumb_func_start SCR_CMD_44
SCR_CMD_44: @ 0x08F05F30
	push {r4, lr}
	ldr r4, _08F05F6C @ =gUnknown_03003170
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F05F3E
	bl WaitForActionButtonPress
_08F05F3E:
	ldr r1, _08F05F70 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r0, [r2, #1]
	movs r1, #1
	bl InitiateBattle
	adds r1, r0, #0
	cmp r1, #0
	bne _08F05F58
	ldr r0, _08F05F74 @ =gUnknown_03001D30
	strb r1, [r0]
_08F05F58:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F05F64
	ldr r1, _08F05F78 @ =gUnknown_030007A8
	movs r0, #1
	strb r0, [r1]
_08F05F64:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F05F6C: .4byte gUnknown_03003170
_08F05F70: .4byte gScriptPtr
_08F05F74: .4byte gUnknown_03001D30
_08F05F78: .4byte gUnknown_030007A8

	thumb_func_start SCR_CMD_45
SCR_CMD_45: @ 0x08F05F7C
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	movs r2, #0
	ldr r5, _08F05FC4 @ =gGameInfo
	ldr r4, _08F05FC8 @ =gTempNumber
	adds r6, r5, #0
	adds r6, #8
	movs r7, #0x80
_08F05F8C:
	adds r0, r2, r6
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F05FAE
	lsls r1, r1, #6
	adds r1, r1, r5
	adds r1, #0x41
	adds r0, r7, #0
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F05FAE
	ldrh r0, [r4]
	adds r3, r0, r3
_08F05FAE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08F05F8C
	ldr r0, _08F05FCC @ =0x0000FFFF
	cmp r3, r0
	bgt _08F05FD0
	strh r3, [r4]
	b _08F05FD2
	.align 2, 0
_08F05FC4: .4byte gGameInfo
_08F05FC8: .4byte gTempNumber
_08F05FCC: .4byte 0x0000FFFF
_08F05FD0:
	strh r0, [r4]
_08F05FD2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start SCR_CMD_46
SCR_CMD_46: @ 0x08F05FD8
	push {lr}
	movs r0, #0
	bl sub_8F0302C
	ldr r1, _08F06000 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08F06004 @ =gUnknown_0300317C
	movs r0, #0x2d
	strb r0, [r1]
	ldr r1, _08F06008 @ =gUnknown_030007C0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08F0600C @ =gUnknown_03000800
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08F06000: .4byte gScriptPtr
_08F06004: .4byte gUnknown_0300317C
_08F06008: .4byte gUnknown_030007C0
_08F0600C: .4byte gUnknown_03000800

	thumb_func_start SCR_CMD_47
SCR_CMD_47: @ 0x08F06010
	push {lr}
	movs r0, #0
	bl sub_8F0302C
	ldr r1, _08F06044 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F06048 @ =gUnknown_0300317C
	movs r0, #9
	strb r0, [r1]
	ldr r1, _08F0604C @ =gUnknown_030007C0
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08F06050 @ =gUnknown_03000800
	ldr r3, _08F06054 @ =0x00008AFC
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08F06058 @ =gUnknown_030007A4
	ldrb r0, [r2, #1]
	strb r0, [r1]
	ldr r1, _08F0605C @ =gUnknown_030034A4
	movs r0, #4
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08F06044: .4byte gScriptPtr
_08F06048: .4byte gUnknown_0300317C
_08F0604C: .4byte gUnknown_030007C0
_08F06050: .4byte gUnknown_03000800
_08F06054: .4byte 0x00008AFC
_08F06058: .4byte gUnknown_030007A4
_08F0605C: .4byte gUnknown_030034A4

	thumb_func_start SCR_CMD_48
SCR_CMD_48: @ 0x08F06060
	push {r4, lr}
	movs r0, #0
	bl sub_8F0302C
	ldr r1, _08F060B0 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F060B4 @ =gUnknown_0300317C
	movs r0, #0xa
	strb r0, [r1]
	ldr r1, _08F060B8 @ =gUnknown_030007C0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08F060BC @ =gUnknown_03000800
	ldr r3, _08F060C0 @ =0x00008B1C
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08F060C4 @ =gUnknown_030007A4
	ldrb r0, [r2, #1]
	strb r0, [r1]
	ldr r1, _08F060C8 @ =gUnknown_03000788
	ldr r0, _08F060CC @ =gUnknown_03000784
	ldr r2, [r0]
	ldrh r4, [r2, #4]
	ldr r3, _08F060D0 @ =0xFFFFFE40
	adds r0, r4, r3
	strh r0, [r1]
	ldr r1, _08F060D4 @ =gUnknown_03001508
	ldrh r2, [r2, #6]
	ldr r4, _08F060D8 @ =0xFFFFFEC0
	adds r0, r2, r4
	strh r0, [r1]
	ldr r1, _08F060DC @ =gUnknown_030007A0
	movs r0, #8
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F060B0: .4byte gScriptPtr
_08F060B4: .4byte gUnknown_0300317C
_08F060B8: .4byte gUnknown_030007C0
_08F060BC: .4byte gUnknown_03000800
_08F060C0: .4byte 0x00008B1C
_08F060C4: .4byte gUnknown_030007A4
_08F060C8: .4byte gUnknown_03000788
_08F060CC: .4byte gUnknown_03000784
_08F060D0: .4byte 0xFFFFFE40
_08F060D4: .4byte gUnknown_03001508
_08F060D8: .4byte 0xFFFFFEC0
_08F060DC: .4byte gUnknown_030007A0

	thumb_func_start SCR_CMD_49
SCR_CMD_49: @ 0x08F060E0
	push {r4, r5, lr}
	ldr r4, _08F06148 @ =gUnknown_03003170
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F060EE
	bl WaitForActionButtonPress
_08F060EE:
	movs r0, #0
	bl sub_8F0302C
	ldr r1, _08F0614C @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F06150 @ =gUnknown_0300317C
	movs r0, #0xb
	strb r0, [r1]
	ldr r1, _08F06154 @ =gUnknown_030007C0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08F06158 @ =gUnknown_03000800
	ldr r3, _08F0615C @ =0x00008B3C
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08F06160 @ =gUnknown_030007A4
	ldrb r0, [r2, #1]
	strb r0, [r1]
	ldr r1, _08F06164 @ =gUnknown_03000788
	ldr r0, _08F06168 @ =gUnknown_03000784
	ldr r2, [r0]
	ldrh r5, [r2, #4]
	ldr r3, _08F0616C @ =0xFFFFFE40
	adds r0, r5, r3
	strh r0, [r1]
	ldr r1, _08F06170 @ =gUnknown_03001508
	ldrh r2, [r2, #6]
	ldr r5, _08F06174 @ =0xFFFFFEC0
	adds r0, r2, r5
	strh r0, [r1]
	ldr r1, _08F06178 @ =gUnknown_030007A0
	movs r0, #8
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F06140
	ldr r1, _08F0617C @ =gUnknown_030007A8
	movs r0, #1
	strb r0, [r1]
_08F06140:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F06148: .4byte gUnknown_03003170
_08F0614C: .4byte gScriptPtr
_08F06150: .4byte gUnknown_0300317C
_08F06154: .4byte gUnknown_030007C0
_08F06158: .4byte gUnknown_03000800
_08F0615C: .4byte 0x00008B3C
_08F06160: .4byte gUnknown_030007A4
_08F06164: .4byte gUnknown_03000788
_08F06168: .4byte gUnknown_03000784
_08F0616C: .4byte 0xFFFFFE40
_08F06170: .4byte gUnknown_03001508
_08F06174: .4byte 0xFFFFFEC0
_08F06178: .4byte gUnknown_030007A0
_08F0617C: .4byte gUnknown_030007A8

	thumb_func_start SCR_CMD_4A
SCR_CMD_4A: @ 0x08F06180
	push {lr}
	movs r0, #0x1e
	bl DelayByAmount
	bl sub_8F07374
	ldr r1, _08F06198 @ =gUnknown_030007A8
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08F06198: .4byte gUnknown_030007A8

	thumb_func_start SCR_CMD_4B
SCR_CMD_4B: @ 0x08F0619C
	push {lr}
	movs r0, #1
	bl sub_8F0302C
	ldr r1, _08F061C4 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F061C8 @ =gUnknown_0300317C
	movs r0, #0xf
	strb r0, [r1]
	ldr r1, _08F061CC @ =gUnknown_030007C0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08F061D0 @ =gUnknown_030007A4
	ldrb r0, [r2, #1]
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08F061C4: .4byte gScriptPtr
_08F061C8: .4byte gUnknown_0300317C
_08F061CC: .4byte gUnknown_030007C0
_08F061D0: .4byte gUnknown_030007A4

	thumb_func_start SCR_CMD_4C
SCR_CMD_4C: @ 0x08F061D4
	push {r4, r5, r6, lr}
	ldr r4, _08F0624C @ =gUnknown_0300317C
	ldrb r0, [r4]
	cmp r0, #9
	bne _08F061EE
	ldr r0, _08F06250 @ =gUnknown_03000784
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	adds r1, #0x18
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	subs r1, #4
	strh r1, [r0, #6]
_08F061EE:
	ldrb r3, [r4]
	cmp r3, #0xb
	bne _08F0620C
	ldr r1, _08F06254 @ =gUnknown_03000788
	ldr r0, _08F06250 @ =gUnknown_03000784
	ldr r2, [r0]
	ldrh r5, [r2, #4]
	ldr r6, _08F06258 @ =0xFFFFFE40
	adds r0, r5, r6
	strh r0, [r1]
	ldr r1, _08F0625C @ =gUnknown_03001508
	ldrh r2, [r2, #6]
	ldr r5, _08F06260 @ =0xFFFFFEC0
	adds r0, r2, r5
	strh r0, [r1]
_08F0620C:
	cmp r3, #0xa
	bne _08F06228
	ldr r1, _08F06254 @ =gUnknown_03000788
	ldr r0, _08F06250 @ =gUnknown_03000784
	ldr r2, [r0]
	ldrh r6, [r2, #4]
	ldr r3, _08F06258 @ =0xFFFFFE40
	adds r0, r6, r3
	strh r0, [r1]
	ldr r1, _08F0625C @ =gUnknown_03001508
	ldrh r2, [r2, #6]
	ldr r5, _08F06260 @ =0xFFFFFEC0
	adds r0, r2, r5
	strh r0, [r1]
_08F06228:
	ldr r1, _08F06264 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	movs r0, #0
	strb r0, [r4]
	ldr r1, _08F06268 @ =gUnknown_030007A4
	ldrb r0, [r2, #1]
	strb r0, [r1]
	bl sub_8F029E0
	ldr r1, _08F0626C @ =gUnknown_030007A0
	movs r0, #8
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F0624C: .4byte gUnknown_0300317C
_08F06250: .4byte gUnknown_03000784
_08F06254: .4byte gUnknown_03000788
_08F06258: .4byte 0xFFFFFE40
_08F0625C: .4byte gUnknown_03001508
_08F06260: .4byte 0xFFFFFEC0
_08F06264: .4byte gScriptPtr
_08F06268: .4byte gUnknown_030007A4
_08F0626C: .4byte gUnknown_030007A0

	thumb_func_start SCR_CMD_4D
SCR_CMD_4D: @ 0x08F06270
	ldr r1, _08F06280 @ =gUnknown_030034A4
	ldrh r2, [r1]
	rsbs r0, r2, #0
	strh r0, [r1]
	ldr r1, _08F06284 @ =gUnknown_030007C0
	movs r0, #2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08F06280: .4byte gUnknown_030034A4
_08F06284: .4byte gUnknown_030007C0

	thumb_func_start SCR_CMD_4E
SCR_CMD_4E: @ 0x08F06288
	push {lr}
	bl sub_8F09420
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SCR_CMD_4F
SCR_CMD_4F: @ 0x08F06294
	push {r4, lr}
	ldr r0, _08F062CC @ =gUnknown_03000784
	ldr r3, [r0]
	ldr r1, [r3, #8]
	ldrb r2, [r1, #1]
	lsls r0, r2, #8
	ldrb r4, [r1]
	orrs r0, r4
	ldrb r4, [r1, #3]
	lsls r2, r4, #8
	ldrb r1, [r1, #2]
	orrs r2, r1
	ldrh r1, [r3, #4]
	eors r0, r1
	ldr r4, _08F062D0 @ =0x0000FFC0
	adds r1, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08F062C4
	ldrh r3, [r3, #6]
	eors r2, r3
	ands r2, r1
	cmp r2, #0
	beq _08F062D4
_08F062C4:
	bl SCR_CMD_01_Jump
	b _08F062DC
	.align 2, 0
_08F062CC: .4byte gUnknown_03000784
_08F062D0: .4byte 0x0000FFC0
_08F062D4:
	ldr r1, _08F062E4 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F062DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F062E4: .4byte gScriptPtr

	thumb_func_start SCR_CMD_50
SCR_CMD_50: @ 0x08F062E8
	push {lr}
	ldr r1, _08F0630C @ =gGameInfo
	ldr r0, _08F06310 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x54
	adds r0, #0x42
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _08F06314
	bl SCR_CMD_01_Jump
	b _08F0631C
	.align 2, 0
_08F0630C: .4byte gGameInfo
_08F06310: .4byte gCurrentCharacterId
_08F06314:
	ldr r1, _08F06320 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F0631C:
	pop {r0}
	bx r0
	.align 2, 0
_08F06320: .4byte gScriptPtr

	thumb_func_start SCR_CMD_51
SCR_CMD_51: @ 0x08F06324
	push {r4, lr}
	ldr r1, _08F06368 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F0636C @ =gGameInfo
	ldr r0, _08F06370 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r3, r0, #0
	adds r3, #0x54
	ldrb r2, [r2, #1]
	ldrh r4, [r3]
	adds r1, r2, r4
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r1, r0
	ble _08F0634E
	adds r1, r0, #0
_08F0634E:
	strh r1, [r3]
	ldr r2, _08F06374 @ =gUnknown_03003170
	ldrb r1, [r2]
	cmp r1, #0
	beq _08F06362
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	bl sub_8F0B004
_08F06362:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F06368: .4byte gScriptPtr
_08F0636C: .4byte gGameInfo
_08F06370: .4byte gCurrentCharacterId
_08F06374: .4byte gUnknown_03003170

	thumb_func_start SCR_CMD_52
SCR_CMD_52: @ 0x08F06378
	push {r4, lr}
	ldr r3, _08F063A0 @ =gScriptPtr
	ldr r2, [r3]
	adds r4, r2, #1
	str r4, [r3]
	ldr r1, _08F063A4 @ =gGameInfo
	ldr r0, _08F063A8 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	ldrb r0, [r0]
	ldrb r2, [r2, #1]
	ands r0, r2
	cmp r0, #0
	beq _08F063AC
	bl SCR_CMD_01_Jump
	b _08F063B0
	.align 2, 0
_08F063A0: .4byte gScriptPtr
_08F063A4: .4byte gGameInfo
_08F063A8: .4byte gCurrentCharacterId
_08F063AC:
	adds r0, r4, #1
	str r0, [r3]
_08F063B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SCR_CMD_53
SCR_CMD_53: @ 0x08F063B8
	push {r4, r5, r6, lr}
	ldr r2, _08F063F8 @ =gScriptPtr
	ldr r3, [r2]
	adds r0, r3, #1
	str r0, [r2]
	ldr r6, _08F063FC @ =gGameInfo
	ldr r5, _08F06400 @ =gCurrentCharacterId
	ldrb r1, [r5]
	subs r1, #1
	lsls r1, r1, #6
	adds r1, r1, r6
	adds r1, #0x41
	ldrb r4, [r1]
	adds r0, r4, #0
	ldrb r3, [r3, #1]
	ands r0, r3
	strb r0, [r1]
	ldr r1, [r2]
	movs r2, #0x80
	adds r0, r2, #0
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F06416
	ands r4, r2
	cmp r4, #0
	beq _08F06404
	ldrb r0, [r5]
	bl sub_8F091D0
	b _08F06416
	.align 2, 0
_08F063F8: .4byte gScriptPtr
_08F063FC: .4byte gGameInfo
_08F06400: .4byte gCurrentCharacterId
_08F06404:
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r6
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r0, #0x54
	strh r1, [r0]
_08F06416:
	ldr r2, _08F06430 @ =gUnknown_03003170
	ldrb r1, [r2]
	cmp r1, #0
	beq _08F06428
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	bl sub_8F0B004
_08F06428:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F06430: .4byte gUnknown_03003170

	thumb_func_start SCR_CMD_54
SCR_CMD_54: @ 0x08F06434
	push {r4, lr}
	ldr r3, _08F0645C @ =gScriptPtr
	ldr r2, [r3]
	adds r4, r2, #1
	str r4, [r3]
	ldr r1, _08F06460 @ =gGameInfo
	ldr r0, _08F06464 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x50
	ldrb r0, [r0]
	ldrb r2, [r2, #1]
	cmp r0, r2
	bhs _08F06468
	bl SCR_CMD_01_Jump
	b _08F0646C
	.align 2, 0
_08F0645C: .4byte gScriptPtr
_08F06460: .4byte gGameInfo
_08F06464: .4byte gCurrentCharacterId
_08F06468:
	adds r0, r4, #1
	str r0, [r3]
_08F0646C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SCR_CMD_55
SCR_CMD_55: @ 0x08F06474
	push {lr}
	bl WaitForActionButtonPress
	bl FadeOut
	bl sub_8F0B040
	bl sub_8F06FF0
	bl FadeIn
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SCR_CMD_56_SaveGame
SCR_CMD_56_SaveGame: @ 0x08F06490
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _08F06504 @ =gGameInfo
	ldr r1, _08F06508 @ =gUnknown_03000788
	ldrh r6, [r1]
	adds r2, r6, #0
	subs r2, #0x40
	movs r1, #0x40
	rsbs r1, r1, #0
	adds r5, r1, #0
	ands r2, r5
	ldr r1, _08F0650C @ =gUnknown_03001508
	ldrh r4, [r1]
	adds r3, r4, #0
	subs r3, #0x80
	ands r3, r5
	ldr r5, _08F06510 @ =gCurrentBgMusic
	movs r1, #0x3f
	mov r8, r1
	movs r1, #0x3f
	ldrb r5, [r5]
	ands r1, r5
	orrs r2, r1
	strh r2, [r0, #4]
	ldr r2, _08F06514 @ =gUnknown_030007A4
	movs r1, #7
	ldrb r2, [r2]
	ands r1, r2
	orrs r3, r1
	strh r3, [r0, #6]
	subs r6, #0x40
	mov r2, r8
	ands r6, r2
	movs r2, #0xab
	lsls r2, r2, #2
	adds r1, r0, r2
	strb r6, [r1]
	adds r4, #0x80
	mov r1, r8
	ands r4, r1
	adds r2, #1
	adds r1, r0, r2
	strb r4, [r1]
	movs r1, #0xa2
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #8
	strb r1, [r2]
	ldr r1, _08F06518 @ =gUnknown_030007E4
	ldr r1, [r1]
	bl M1_CalculateChecksumAndWriteSave
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F06504: .4byte gGameInfo
_08F06508: .4byte gUnknown_03000788
_08F0650C: .4byte gUnknown_03001508
_08F06510: .4byte gCurrentBgMusic
_08F06514: .4byte gUnknown_030007A4
_08F06518: .4byte gUnknown_030007E4

	thumb_func_start SCR_CMD_57_LoadExpForNextLevel
SCR_CMD_57_LoadExpForNextLevel: @ 0x08F0651C
	push {r4, r5, r6, r7, lr}
	ldr r1, _08F0653C @ =gGameInfo
	ldr r0, _08F06540 @ =gCurrentCharacterId
	ldrb r4, [r0]
	subs r0, r4, #1
	lsls r0, r0, #6
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	ldrb r2, [r0]
	adds r7, r1, #0
	cmp r2, #0x62
	bls _08F06548
	ldr r1, _08F06544 @ =gTempNumber
	movs r0, #0
	b _08F06580
	.align 2, 0
_08F0653C: .4byte gGameInfo
_08F06540: .4byte gCurrentCharacterId
_08F06544: .4byte gTempNumber
_08F06548:
	adds r0, r2, #2
	adds r1, r2, #1
	muls r0, r1, r0
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r1, _08F065D8 @ =gUnknown_08F5C31C
	adds r0, r4, #0
	adds r0, #0x38
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	muls r0, r2, r0
	lsrs r2, r0, #8
	adds r1, r3, #0
	adds r1, #0x51
	adds r0, r3, #0
	adds r0, #0x52
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrb r1, [r1]
	orrs r0, r1
	adds r1, r3, #0
	adds r1, #0x53
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	adds r0, r0, r1
	ldr r1, _08F065DC @ =gTempNumber
	subs r0, r2, r0
_08F06580:
	strh r0, [r1]
	movs r0, #0
	strb r0, [r7, #0x17]
	strb r0, [r7, #0x16]
	strb r0, [r7, #0x15]
	ldr r0, _08F065E0 @ =gUnknown_03000788
	ldrh r3, [r0]
	adds r1, r3, #0
	subs r1, #0x40
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	ldr r6, _08F065E4 @ =gUnknown_03001508
	ldrh r2, [r6]
	subs r2, #0x80
	ands r2, r0
	ldr r4, _08F065E8 @ =gCurrentBgMusic
	movs r5, #0x3f
	movs r0, #0x3f
	ldrb r4, [r4]
	ands r0, r4
	orrs r1, r0
	strh r1, [r7, #0xc]
	ldr r1, _08F065EC @ =gUnknown_030007A4
	movs r0, #7
	ldrb r1, [r1]
	ands r0, r1
	orrs r2, r0
	strh r2, [r7, #0xe]
	subs r3, #0x40
	ands r3, r5
	ldr r1, _08F065F0 @ =0x000002AE
	adds r0, r7, r1
	strb r3, [r0]
	ldrb r0, [r6]
	adds r0, #0x80
	ands r0, r5
	ldr r2, _08F065F4 @ =0x000002AF
	adds r1, r7, r2
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F065D8: .4byte gUnknown_08F5C31C
_08F065DC: .4byte gTempNumber
_08F065E0: .4byte gUnknown_03000788
_08F065E4: .4byte gUnknown_03001508
_08F065E8: .4byte gCurrentBgMusic
_08F065EC: .4byte gUnknown_030007A4
_08F065F0: .4byte 0x000002AE
_08F065F4: .4byte 0x000002AF

	thumb_func_start SCR_CMD_58_LoadMoneyToTemp
SCR_CMD_58_LoadMoneyToTemp: @ 0x08F065F8
	ldr r0, _08F06604 @ =gTempNumber
	ldr r1, _08F06608 @ =gGameInfo
	ldrh r1, [r1, #0x10]
	strh r1, [r0]
	bx lr
	.align 2, 0
_08F06604: .4byte gTempNumber
_08F06608: .4byte gGameInfo

	thumb_func_start SCR_CMD_59_InflictCondition
SCR_CMD_59_InflictCondition: @ 0x08F0660C
	ldr r1, _08F0662C @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F06630 @ =gGameInfo
	ldr r0, _08F06634 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	ldrb r1, [r0]
	ldrb r2, [r2, #1]
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08F0662C: .4byte gScriptPtr
_08F06630: .4byte gGameInfo
_08F06634: .4byte gCurrentCharacterId

	thumb_func_start SCR_CMD_5A_ChangeBgMusic
SCR_CMD_5A_ChangeBgMusic: @ 0x08F06638
	push {lr}
	ldr r1, _08F0664C @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r0, [r2, #1]
	bl ChangeBgMusic
	pop {r0}
	bx r0
	.align 2, 0
_08F0664C: .4byte gScriptPtr

	thumb_func_start SCR_CMD_5B_PlaySfxById0
SCR_CMD_5B_PlaySfxById0: @ 0x08F06650
	push {lr}
	ldr r1, _08F06664 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r0, [r2, #1]
	bl PlaySfxById0
	pop {r0}
	bx r0
	.align 2, 0
_08F06664: .4byte gScriptPtr

	thumb_func_start SCR_CMD_5C_PlaySfxById1
SCR_CMD_5C_PlaySfxById1: @ 0x08F06668
	push {lr}
	ldr r1, _08F0667C @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r0, [r2, #1]
	bl PlaySfxById1
	pop {r0}
	bx r0
	.align 2, 0
_08F0667C: .4byte gScriptPtr

	thumb_func_start SCR_CMD_5D_PlaySfxById2
SCR_CMD_5D_PlaySfxById2: @ 0x08F06680
	push {lr}
	ldr r1, _08F06694 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldrb r0, [r2, #1]
	bl PlaySfxById2
	pop {r0}
	bx r0
	.align 2, 0
_08F06694: .4byte gScriptPtr

	thumb_func_start SCR_CMD_5F
SCR_CMD_5F: @ 0x08F06698
	ldr r1, _08F066B0 @ =gGameInfo
	adds r2, r1, #0
	adds r2, #0x70
	movs r3, #0x20
	ldrb r0, [r2]
	orrs r0, r3
	strb r0, [r2]
	adds r1, #0xb0
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	bx lr
	.align 2, 0
_08F066B0: .4byte gGameInfo

	thumb_func_start SCR_CMD_60
SCR_CMD_60: @ 0x08F066B4
	push {lr}
	ldr r1, _08F066D8 @ =gGameInfo
	ldr r0, _08F066DC @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x56
	adds r0, #0x44
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _08F066E0
	bl SCR_CMD_01_Jump
	b _08F066E8
	.align 2, 0
_08F066D8: .4byte gGameInfo
_08F066DC: .4byte gCurrentCharacterId
_08F066E0:
	ldr r1, _08F066EC @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08F066E8:
	pop {r0}
	bx r0
	.align 2, 0
_08F066EC: .4byte gScriptPtr

	thumb_func_start SCR_CMD_61
SCR_CMD_61: @ 0x08F066F0
	push {r4, lr}
	ldr r1, _08F06734 @ =gScriptPtr
	ldr r2, [r1]
	adds r0, r2, #1
	str r0, [r1]
	ldr r1, _08F06738 @ =gGameInfo
	ldr r0, _08F0673C @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r3, r0, #0
	adds r3, #0x56
	ldrb r2, [r2, #1]
	ldrh r4, [r3]
	adds r1, r2, r4
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r1, r0
	ble _08F0671A
	adds r1, r0, #0
_08F0671A:
	strh r1, [r3]
	ldr r2, _08F06740 @ =gUnknown_03003170
	ldrb r1, [r2]
	cmp r1, #0
	beq _08F0672E
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	bl sub_8F0B004
_08F0672E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F06734: .4byte gScriptPtr
_08F06738: .4byte gGameInfo
_08F0673C: .4byte gCurrentCharacterId
_08F06740: .4byte gUnknown_03003170

	thumb_func_start SCR_CMD_62
SCR_CMD_62: @ 0x08F06744
	push {r4, lr}
	ldr r2, _08F06760 @ =gGameInfo
	ldrb r0, [r2, #8]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r2
	adds r4, r0, #0
	adds r4, #0x68
	ldrb r3, [r4]
	cmp r3, #0
	bne _08F06764
	bl SCR_CMD_01_Jump
	b _08F06778
	.align 2, 0
_08F06760: .4byte gGameInfo
_08F06764:
	ldr r1, _08F06780 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #0
	strb r3, [r0]
	strb r1, [r4]
_08F06778:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F06780: .4byte gScriptPtr

	thumb_func_start SCR_CMD_63
SCR_CMD_63: @ 0x08F06784
	push {lr}
	ldr r0, _08F0679C @ =gGameInfo
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r2, [r0]
	cmp r2, #0
	bne _08F067A0
	bl SCR_CMD_01_Jump
	b _08F067B8
	.align 2, 0
_08F0679C: .4byte gGameInfo
_08F067A0:
	ldr r1, _08F067BC @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r0, r2, #0
	bl SelectItem
	ldr r1, _08F067C0 @ =gUnknown_030007D8
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
_08F067B8:
	pop {r0}
	bx r0
	.align 2, 0
_08F067BC: .4byte gScriptPtr
_08F067C0: .4byte gUnknown_030007D8

	thumb_func_start SCR_CMD_64
SCR_CMD_64: @ 0x08F067C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08F06AE0 @ =gUnknown_03000784
	ldr r3, [r0]
	ldr r2, [r3, #8]
	ldrb r0, [r2]
	strh r0, [r3, #4]
	ldrb r4, [r2, #1]
	lsls r1, r4, #8
	adds r0, r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r2, #2]
	strh r0, [r3, #6]
	ldrb r2, [r2, #3]
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r3, #6]
	ldr r0, _08F06AE4 @ =gUnknown_03000818
	ldrb r0, [r0]
	str r0, [sp]
	movs r0, #0x10
	ldr r1, _08F06AE4 @ =gUnknown_03000818
	strb r0, [r1]
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #0x3c
	bl DelayByAmount
	movs r0, #0x23
	bl ChangeBgMusic
	ldr r2, _08F06AE8 @ =gUnknown_030007B0
	mov sb, r2
	ldr r0, _08F06AEC @ =gUnknown_0300081C
	ldr r1, [r0]
	strb r1, [r2]
	ldr r7, _08F06AF0 @ =gUnknown_030007BC
	adds r0, r1, #0
	subs r0, #0x10
	strb r0, [r7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08F0682A
	adds r0, r1, #0
	adds r0, #0x34
	strb r0, [r7]
_08F0682A:
	ldr r3, _08F06AF4 @ =gUnknown_03000838
	mov sl, r3
	adds r0, r1, #0
	subs r0, #0x20
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08F06840
	adds r0, r1, #0
	adds r0, #0x24
	strb r0, [r3]
_08F06840:
	ldr r4, _08F06AF8 @ =gUnknown_03002850
	mov r8, r4
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	adds r4, #2
	adds r1, r1, r4
	ldr r5, _08F06AFC @ =0x0000FFFC
	adds r0, r5, #0
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, r5, #0
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	mov r0, sl
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, r5, #0
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r6, #2
	ldrh r1, [r0]
	orrs r1, r6
	strh r1, [r0]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r1, r6
	strh r1, [r0]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r1, r6
	strh r1, [r0]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #1
	bl sub_8F07058
	movs r0, #1
	bl sub_8F07058
	movs r0, #2
	bl sub_8F07058
	movs r0, #2
	bl sub_8F07058
	movs r0, #3
	bl sub_8F07058
	movs r0, #6
	bl sub_8F07058
	movs r0, #2
	bl sub_8F07058
	movs r0, #2
	bl sub_8F07058
	movs r0, #3
	bl sub_8F07058
	movs r0, #6
	bl sub_8F07058
	movs r0, #1
	bl sub_8F07058
	movs r0, #4
	bl sub_8F07058
	movs r0, #4
	bl sub_8F07058
	movs r0, #5
	bl sub_8F07058
	movs r0, #5
	bl sub_8F07058
	movs r0, #4
	bl sub_8F07058
	movs r0, #4
	bl sub_8F07058
	movs r0, #5
	bl sub_8F07058
	movs r0, #5
	bl sub_8F07058
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #2
	bl sub_8F07058
	movs r0, #2
	bl sub_8F07058
	movs r0, #3
	bl sub_8F07058
	movs r0, #6
	bl sub_8F07058
	movs r0, #1
	bl sub_8F07058
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, r5, #0
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, r5, #0
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	mov r3, sl
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, r5, #0
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r1, r6
	strh r1, [r0]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r1, r6
	strh r1, [r0]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r0]
	orrs r6, r2
	strh r6, [r0]
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #0x2d
	bl DelayByAmount
	mov r3, sp
	ldrb r0, [r3]
	ldr r3, _08F06AE4 @ =gUnknown_03000818
	strb r0, [r3]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	add r1, r8
	adds r0, r5, #0
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, r5, #0
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r2, #1
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r1, r1, #2
	add r1, r8
	adds r0, r5, #0
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, r5, #0
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	mov r0, sl
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	add r1, r8
	adds r0, r5, #0
	ldrh r3, [r1]
	ands r0, r3
	strh r0, [r1]
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r3, [r0]
	ands r5, r3
	strh r5, [r0]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r4, [r0]
	orrs r2, r4
	strh r2, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F06AE0: .4byte gUnknown_03000784
_08F06AE4: .4byte gUnknown_03000818
_08F06AE8: .4byte gUnknown_030007B0
_08F06AEC: .4byte gUnknown_0300081C
_08F06AF0: .4byte gUnknown_030007BC
_08F06AF4: .4byte gUnknown_03000838
_08F06AF8: .4byte gUnknown_03002850
_08F06AFC: .4byte 0x0000FFFC

	thumb_func_start SCR_CMD_65
SCR_CMD_65: @ 0x08F06B00
	push {lr}
	ldr r2, _08F06B14 @ =gGameInfo
	ldr r1, _08F06B18 @ =0x0000021E
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08F06B1C
	bl SCR_CMD_01_Jump
	b _08F06B3C
	.align 2, 0
_08F06B14: .4byte gGameInfo
_08F06B18: .4byte 0x0000021E
_08F06B1C:
	ldr r1, _08F06B40 @ =gScriptPtr
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r1, #0
	movs r0, #0xd2
	strh r0, [r2, #0xc]
	movs r0, #0x8f
	lsls r0, r0, #7
	strh r0, [r2, #0xe]
	ldr r3, _08F06B44 @ =0x000002AE
	adds r0, r2, r3
	strb r1, [r0]
	adds r3, #1
	adds r0, r2, r3
	strb r1, [r0]
_08F06B3C:
	pop {r0}
	bx r0
	.align 2, 0
_08F06B40: .4byte gScriptPtr
_08F06B44: .4byte 0x000002AE

	thumb_func_start SCR_CMD_66
SCR_CMD_66: @ 0x08F06B48
	push {lr}
	sub sp, #8
	mov r0, sp
	bl SaveTextSystemState
	ldr r0, _08F06B70 @ =gUnknown_030031B0
	movs r1, #0x1c
	bl sub_8F0BC04
	mov r0, sp
	bl LoadTextSystemState
	ldr r1, _08F06B74 @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08F06B70: .4byte gUnknown_030031B0
_08F06B74: .4byte gTextDelayAfterWriteCharacterEnabled

	thumb_func_start SCR_CMD_67
SCR_CMD_67: @ 0x08F06B78
	push {r4, r5, lr}
	ldr r5, _08F06BA0 @ =gNESPalette
	movs r4, #7
_08F06B7E:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldrh r1, [r5, #0x1e]
	movs r2, #0x40
	movs r3, #1
	bl DarkenPalette
	movs r0, #8
	bl DelayByAmount
	subs r4, #1
	cmp r4, #0
	bge _08F06B7E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F06BA0: .4byte gNESPalette

	thumb_func_start SCR_CMD_68
SCR_CMD_68: @ 0x08F06BA4
	push {r4, r5, lr}
	bl sub_8F099D8
	movs r3, #0
	ldr r4, _08F06C28 @ =gGameInfo
_08F06BAE:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r3, r0
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F06BD8
	lsls r0, r1, #6
	adds r0, r0, r4
	adds r2, r0, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08F06BD8
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08F06BD8:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F06BAE
	bl sub_8F03128
	bl sub_8F09AA8
	movs r3, #0
	ldr r4, _08F06C28 @ =gGameInfo
	adds r5, r4, #0
	adds r5, #8
_08F06BF2:
	adds r0, r3, r5
	ldrb r1, [r0]
	subs r1, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F06C18
	lsls r0, r1, #6
	adds r0, r0, r4
	adds r2, r0, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08F06C18
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
_08F06C18:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F06BF2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F06C28: .4byte gGameInfo

	thumb_func_start SCR_CMD_69_Quake
SCR_CMD_69_Quake: @ 0x08F06C2C
	push {r4, r5, lr}
	movs r4, #3
	ldr r5, _08F06C58 @ =0x04000018
_08F06C32:
	ldr r0, _08F06C5C @ =gUnknown_03000788
	ldrh r0, [r0]
	lsrs r2, r0, #2
	movs r0, #0xf
	ands r2, r0
	lsls r0, r4, #1
	movs r1, #4
	ands r0, r1
	eors r2, r0
	strh r2, [r5]
	bl sub_8F040E0
	subs r4, #1
	cmp r4, #0
	bge _08F06C32
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F06C58: .4byte 0x04000018
_08F06C5C: .4byte gUnknown_03000788

	thumb_func_start SCR_CMD_6A
SCR_CMD_6A: @ 0x08F06C60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	bl sub_8F0B040
	movs r0, #0x6a
	bl sub_8F03F3C
	ldr r0, _08F06DDC @ =gUnknown_03000784
	ldr r3, [r0]
	ldr r0, _08F06DE0 @ =gUnknown_03000788
	ldr r1, _08F06DE4 @ =0x0000FFFC
	adds r2, r1, #0
	ldrh r0, [r0]
	ands r2, r0
	ldrh r0, [r3, #4]
	subs r2, r0, r2
	subs r2, #0x40
	ldr r0, _08F06DE8 @ =gUnknown_03001508
	ldrh r0, [r0]
	ands r1, r0
	ldrh r3, [r3, #6]
	subs r1, r3, r1
	subs r1, #0xc0
	mov r0, sp
	ldr r3, _08F06DEC @ =0xFFFFFE40
	adds r5, r3, #0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	adds r4, r6, r5
	strh r4, [r0]
	add r0, sp, #8
	mov r8, r0
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	adds r5, r3, r5
	strh r5, [r0]
	mov r0, sp
	strh r4, [r0, #2]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r4, r0, #0
	adds r3, r3, r4
	mov r0, r8
	strh r3, [r0, #2]
	mov r0, sp
	adds r6, r6, r4
	strh r6, [r0, #4]
	mov r0, r8
	strh r5, [r0, #4]
	mov r0, sp
	strh r6, [r0, #6]
	mov r0, r8
	strh r3, [r0, #6]
	movs r3, #0
	mov sb, r3
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r4, sp
	add r7, sp, #8
_08F06CDE:
	bl sub_8F016EC
	movs r0, #1
	bl sub_8F02BBC
	ldr r0, _08F06DF0 @ =gUnknown_030007B8
	ldrh r6, [r0]
	ldr r1, _08F06DF4 @ =0xFFFFFC00
	adds r0, r6, r1
	ldr r2, _08F06DF0 @ =gUnknown_030007B8
	strh r0, [r2]
	movs r5, #0
	movs r3, #1
	add sb, r3
_08F06CFA:
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
	ldr r0, _08F06DF8 @ =0x000099F8
	movs r1, #4
	bl sub_8F01700
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08F06CFA
	ldr r3, _08F06DF0 @ =gUnknown_030007B8
	strh r6, [r3]
	ldrh r0, [r4]
	adds r0, #4
	strh r0, [r4]
	ldrh r0, [r7]
	adds r0, #4
	strh r0, [r7]
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r4, #2]
	ldrh r0, [r7, #2]
	subs r0, #4
	strh r0, [r7, #2]
	ldrh r0, [r4, #4]
	subs r0, #4
	strh r0, [r4, #4]
	ldrh r0, [r7, #4]
	adds r0, #4
	strh r0, [r7, #4]
	ldrh r0, [r4, #6]
	subs r0, #4
	strh r0, [r4, #6]
	ldrh r0, [r7, #6]
	subs r0, #4
	strh r0, [r7, #6]
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r5, _08F06DFC @ =0x040000D4
	ldr r0, _08F06E00 @ =gUnknown_03002450
	str r0, [r5]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	mov sl, r1
	str r1, [r5, #4]
	ldr r2, _08F06E04 @ =0x84000100
	mov r8, r2
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	mov r3, sb
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0x6f
	bls _08F06CDE
	movs r0, #0x30
	bl sub_8F011E4
	bl sub_8F016EC
	movs r0, #1
	bl sub_8F02BBC
	ldr r4, _08F06DF0 @ =gUnknown_030007B8
	ldrh r6, [r4]
	ldr r1, _08F06DF4 @ =0xFFFFFC00
	adds r0, r6, r1
	strh r0, [r4]
	ldr r0, _08F06E08 @ =0x000099FC
	ldr r3, [sp, #0x10]
	asrs r2, r3, #0x12
	ldr r1, [sp, #0x14]
	asrs r3, r1, #0x12
	movs r1, #4
	bl sub_8F01700
	strh r6, [r4]
	bl sub_8F0191C
	bl sub_8F040E0
	ldr r2, _08F06E00 @ =gUnknown_03002450
	str r2, [r5]
	mov r3, sl
	str r3, [r5, #4]
	mov r0, r8
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	bl sub_8F01208
	movs r0, #0x3c
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
_08F06DDC: .4byte gUnknown_03000784
_08F06DE0: .4byte gUnknown_03000788
_08F06DE4: .4byte 0x0000FFFC
_08F06DE8: .4byte gUnknown_03001508
_08F06DEC: .4byte 0xFFFFFE40
_08F06DF0: .4byte gUnknown_030007B8
_08F06DF4: .4byte 0xFFFFFC00
_08F06DF8: .4byte 0x000099F8
_08F06DFC: .4byte 0x040000D4
_08F06E00: .4byte gUnknown_03002450
_08F06E04: .4byte 0x84000100
_08F06E08: .4byte 0x000099FC

	thumb_func_start SCR_CMD_6B_Dummy
SCR_CMD_6B_Dummy: @ 0x08F06E0C
	bx lr
	.align 2, 0

	thumb_func_start SCR_CMD_6C
SCR_CMD_6C: @ 0x08F06E10
	ldr r1, _08F06E1C @ =gUnknown_03003170
	movs r0, #0x7f
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08F06E1C: .4byte gUnknown_03003170

	thumb_func_start SCR_CMD_6D_SaveCurrentBgMusicId
SCR_CMD_6D_SaveCurrentBgMusicId: @ 0x08F06E20
	ldr r0, _08F06E2C @ =gOldBgMusic
	ldr r1, _08F06E30 @ =gCurrentBgMusic
	ldrb r1, [r1]
	strb r1, [r0]
	bx lr
	.align 2, 0
_08F06E2C: .4byte gOldBgMusic
_08F06E30: .4byte gCurrentBgMusic

	thumb_func_start SCR_CMD_6E_PlayOldBgMusicId
SCR_CMD_6E_PlayOldBgMusicId: @ 0x08F06E34
	push {lr}
	ldr r0, _08F06E44 @ =gOldBgMusic
	ldrb r0, [r0]
	bl ChangeBgMusic
	pop {r0}
	bx r0
	.align 2, 0
_08F06E44: .4byte gOldBgMusic

	thumb_func_start SCR_CMD_6F
SCR_CMD_6F: @ 0x08F06E48
	push {lr}
	ldr r1, _08F06E64 @ =gUnknown_03003170
	movs r0, #0x7f
	ldrb r2, [r1]
	ands r0, r2
	strb r0, [r1]
	ldr r1, _08F06E68 @ =gTextPlaySfx
	movs r0, #0
	strb r0, [r1]
	bl DrawPartyInfoWindow
	pop {r0}
	bx r0
	.align 2, 0
_08F06E64: .4byte gUnknown_03003170
_08F06E68: .4byte gTextPlaySfx

	thumb_func_start SCR_CMD_70
SCR_CMD_70: @ 0x08F06E6C
	push {r4, r5, lr}
	movs r0, #0
	ldr r5, _08F06EA0 @ =gBg0TilemapBuffer
	movs r4, #0
_08F06E74:
	movs r1, #0x15
	adds r3, r0, #1
	lsls r2, r0, #5
_08F06E7A:
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	strh r4, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x1f
	bls _08F06E7A
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08F06E74
	bl UpdateBg0Tilemap
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F06EA0: .4byte gBg0TilemapBuffer

