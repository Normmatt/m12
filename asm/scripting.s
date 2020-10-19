#ifdef NDS_VERSION
#include "macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

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

