#ifdef NDS_VERSION
#include "macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	thumb_func_start sub_8F03F3C
sub_8F03F3C: @ 0x08F03F3C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08F03F68 @ =gUnknown_030007D0
	ldrb r2, [r1]
	cmp r2, r0
	beq _08F03F64
	strb r0, [r1]
	ldr r2, _08F03F6C @ =gUnknown_08F6453C
	subs r0, #0x62
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _08F03F70 @ =0x06011000
	movs r2, #0x80
	bl BitUnpack
_08F03F64:
	pop {r0}
	bx r0
	.align 2, 0
_08F03F68: .4byte gUnknown_030007D0
_08F03F6C: .4byte gUnknown_08F6453C
_08F03F70: .4byte 0x06001000+OAM_VRAM_OFFSET

	thumb_func_start sub_8F03F74
sub_8F03F74: @ 0x08F03F74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08F03FC0 @ =gUnknown_03000784
	mov sb, r0
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldrb r7, [r0, #6]
	ldrb r6, [r0, #7]
	ldr r1, _08F03FC4 @ =gGameInfo
	mov r8, r1
	movs r4, #0x80
	adds r0, r7, #0
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r6, #3
	adds r0, r0, r1
	movs r1, #0x88
	lsls r1, r1, #2
	add r1, r8
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r2, #7
	ands r2, r6
	adds r5, r1, #0
	lsls r5, r2
	ands r5, r4
	cmp r5, #0
	beq _08F03FCC
	ldr r0, _08F03FC8 @ =0x000003A1
	bl DrawTextWithId
	b _08F040C2
	.align 2, 0
_08F03FC0: .4byte gUnknown_03000784
_08F03FC4: .4byte gGameInfo
_08F03FC8: .4byte 0x000003A1
_08F03FCC:
	adds r0, r4, #0
	asrs r0, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0xa
	bl PlaySfxById1
	ldr r4, _08F04074 @ =gUnknown_0300150C
	mov r2, sb
	ldr r0, [r2]
	str r0, [r4]
	bl sub_8F03128
	str r5, [r4]
	ldr r0, _08F04078 @ =0x00000399
	bl DrawTextWithId
	movs r0, #0x7f
	ands r0, r7
	cmp r0, #0
	beq _08F040BC
	bl SelectItem
	ldr r0, _08F0407C @ =gUnknown_030007D8
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08F04080 @ =0x0000039A
	bl DrawTextWithId
	movs r3, #0
	movs r0, #8
	add r0, r8
	mov ip, r0
_08F04012:
	mov r1, ip
	adds r0, r3, r1
	ldrb r4, [r0]
	subs r1, r4, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0403C
	movs r2, #0
	lsls r1, r1, #6
	ldr r5, _08F04084 @ =gUnknown_030031F0
_08F04028:
	adds r0, r2, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0408C
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08F04028
_08F0403C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08F04012
	movs r2, #0x80
	ands r7, r2
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x1a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r6, #3
	adds r0, r0, r1
	movs r1, #0x88
	lsls r1, r1, #2
	add r1, r8
	adds r0, r0, r1
	movs r1, #7
	ands r6, r1
	asrs r2, r6
	ldrb r1, [r0]
	bics r1, r2
	strb r1, [r0]
	ldr r0, _08F04088 @ =0x0000039D
	bl DrawTextWithId
	b _08F040C2
	.align 2, 0
_08F04074: .4byte gUnknown_0300150C
_08F04078: .4byte 0x00000399
_08F0407C: .4byte gUnknown_030007D8
_08F04080: .4byte 0x0000039A
_08F04084: .4byte gUnknown_030031F0
_08F04088: .4byte 0x0000039D
_08F0408C:
	ldr r0, _08F040B0 @ =gCurrentCharacterId
	strb r4, [r0]
	adds r0, r4, #0
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r2, r0
	adds r0, r0, r5
	ldr r1, _08F040B4 @ =gCurrentItemId
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, _08F040B8 @ =0x0000039B
	bl DrawTextWithId
	movs r0, #6
	bl PlaySfxById1
	b _08F040C2
	.align 2, 0
_08F040B0: .4byte gCurrentCharacterId
_08F040B4: .4byte gCurrentItemId
_08F040B8: .4byte 0x0000039B
_08F040BC:
	ldr r0, _08F040D8 @ =0x000003A1
	bl DrawTextWithId
_08F040C2:
	ldr r1, _08F040DC @ =gUnknown_03003170
	movs r0, #1
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F040D8: .4byte 0x000003A1
_08F040DC: .4byte gUnknown_03003170

	thumb_func_start sub_8F040E0
sub_8F040E0: @ 0x08F040E0
	push {r4, r5, lr}
	ldr r0, _08F04120 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _08F04124 @ =0x000003FF
	adds r0, r2, #0
	adds r4, r0, #0
	bics r4, r1
	adds r5, r4, #0
	cmp r4, #0xf
	bne _08F040F8
	bl sub_8F0ACB8
_08F040F8:
	movs r0, #0xc1
	lsls r0, r0, #2
	cmp r4, r0
	bne _08F04104
	bl sub_8F0ABD8
_08F04104:
	ldr r1, _08F04128 @ =gUnknown_030007CC
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	cmp r5, #0
	beq _08F04134
	ldr r1, _08F0412C @ =gUnknown_03002964
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08F04130 @ =gUnknown_030007C4
	movs r0, #0
	strh r0, [r1]
	b _08F0414A
	.align 2, 0
_08F04120: .4byte 0x04000130
_08F04124: .4byte 0x000003FF
_08F04128: .4byte gUnknown_030007CC
_08F0412C: .4byte gUnknown_03002964
_08F04130: .4byte gUnknown_030007C4
_08F04134:
	ldr r3, _08F04158 @ =gUnknown_030007C4
	ldrh r2, [r3]
	ldr r0, _08F0415C @ =0x00002A2F
	cmp r2, r0
	bhi _08F0414A
	ldr r0, _08F04160 @ =gUnknown_03002964
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	adds r0, r2, #1
	strh r0, [r3]
_08F0414A:
	bl m4aSoundMain
	bl VBlankIntrWait
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F04158: .4byte gUnknown_030007C4
_08F0415C: .4byte 0x00002A2F
_08F04160: .4byte gUnknown_03002964

	thumb_func_start DelayByAmount
DelayByAmount: @ 0x08F04164
	push {r4, r5, lr}
	adds r4, r0, #0
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08F04182
	adds r5, r0, #0
_08F04174:
	bl sub_8F040E0
	bl UpdateInput
	subs r4, #1
	cmp r4, r5
	bne _08F04174
_08F04182:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start UpdateBg0Tilemap
UpdateBg0Tilemap: @ 0x08F04188
	push {lr}
	bl sub_8F040E0
	ldr r1, _08F041A8 @ =0x040000D4
	ldr r0, _08F041AC @ =gBg0TilemapBuffer
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08F041B0 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl UpdateInput
	pop {r0}
	bx r0
	.align 2, 0
_08F041A8: .4byte 0x040000D4
_08F041AC: .4byte gBg0TilemapBuffer
_08F041B0: .4byte 0x84000200

	thumb_func_start WaitForAnyButtonPress
WaitForAnyButtonPress: @ 0x08F041B4
	push {r4, r5, lr}
	ldr r4, _08F041DC @ =gUnknown_030007A8
	ldr r0, _08F041E0 @ =0x000003FF
	adds r5, r0, #0
_08F041BC:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F041D0
	bl UpdateBg0Tilemap
	ldr r0, _08F041E4 @ =gKeysDown
	ldrh r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _08F041BC
_08F041D0:
	movs r0, #0
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F041DC: .4byte gUnknown_030007A8
_08F041E0: .4byte 0x000003FF
_08F041E4: .4byte gKeysDown

	thumb_func_start WaitForActionButtonPress
WaitForActionButtonPress: @ 0x08F041E8
	push {r4, r5, lr}
	ldr r4, _08F04210 @ =gUnknown_030007A8
	ldr r0, _08F04214 @ =0x00000207
	adds r5, r0, #0
_08F041F0:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F04204
	bl UpdateBg0Tilemap
	ldr r0, _08F04218 @ =gKeysDown
	ldrh r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _08F041F0
_08F04204:
	movs r0, #0
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F04210: .4byte gUnknown_030007A8
_08F04214: .4byte 0x00000207
_08F04218: .4byte gKeysDown

	thumb_func_start OpenCommandMenu
OpenCommandMenu: @ 0x08F0421C
	push {lr}
	ldr r0, _08F0423C @ =gUnknown_03001504
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl HandleCommandMenu
	subs r0, #1
	cmp r0, #5
	bhi _08F04298
	lsls r0, r0, #2
	ldr r1, _08F04240 @ =_08F04244
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0423C: .4byte gUnknown_03001504
_08F04240: .4byte _08F04244
_08F04244: @ jump table
	.4byte _08F0425C @ case 0
	.4byte _08F0427C @ case 1
	.4byte _08F04282 @ case 2
	.4byte _08F04288 @ case 3
	.4byte _08F0428E @ case 4
	.4byte _08F04294 @ case 5
_08F0425C:
	bl TalkAction
	ldr r0, _08F04274 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0426E
	ldr r0, _08F04278 @ =0x00000385
	bl DrawTextWithId
_08F0426E:
	bl WaitForActionButtonPress
	b _08F04298
	.align 2, 0
_08F04274: .4byte gUnknown_03003170
_08F04278: .4byte 0x00000385
_08F0427C:
	bl CheckAction
	b _08F04298
_08F04282:
	bl PSIMenu
	b _08F04298
_08F04288:
	bl GoodsMenu
	b _08F04298
_08F0428E:
	bl HandleStatusMenu
	b _08F04298
_08F04294:
	bl HandleMap
_08F04298:
	bl sub_8F0B040
	pop {r0}
	bx r0

	thumb_func_start HandleLButtonPress
HandleLButtonPress: @ 0x08F042A0
	push {lr}
	movs r0, #1
	bl HandleCommandMenu
	bl TalkAction
	ldr r0, _08F042C0 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F042C4
	movs r0, #2
	bl HandleCommandMenu
	bl CheckAction
	b _08F042C8
	.align 2, 0
_08F042C0: .4byte gUnknown_03003170
_08F042C4:
	bl WaitForActionButtonPress
_08F042C8:
	bl sub_8F0B040
	pop {r0}
	bx r0

	thumb_func_start TalkAction
TalkAction: @ 0x08F042D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08F043C8 @ =gUnknown_03000788
	ldr r0, _08F043CC @ =gUnknown_08F1B670
	ldr r1, _08F043D0 @ =gUnknown_030007A4
	ldrb r1, [r1]
	lsrs r1, r1, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x78
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, _08F043D4 @ =gUnknown_03001508
	ldr r0, _08F043D8 @ =gUnknown_08F1B674
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x58
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
_08F0430C:
	ldr r1, _08F043DC @ =gUnknown_03003170
	movs r0, #0
	strb r0, [r1]
	movs r5, #0
	ldr r1, _08F043E0 @ =gUnknown_03000784
	ldr r0, _08F043E4 @ =gUnknown_03001D40
	str r0, [r1]
	ldrb r0, [r0]
	lsls r2, r2, #0x18
	mov r8, r2
	cmp r0, #0
	beq _08F04398
_08F04324:
	ldr r2, [r1]
	movs r0, #0x80
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08F04376
	ldrb r3, [r2, #0x14]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08F04376
	ldrh r7, [r2, #4]
	subs r1, r6, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r7, [r2, #6]
	subs r0, r4, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bhi _08F04376
	cmp r0, #0x3f
	bhi _08F04376
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08F04364
	ldr r1, _08F043D0 @ =gUnknown_030007A4
	movs r0, #4
	ldrb r1, [r1]
	eors r0, r1
	strb r0, [r2, #0x15]
_08F04364:
	bl sub_8F03128
	movs r0, #0xa
	bl ExecuteScript
	ldr r0, _08F043DC @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F04398
_08F04376:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F04398
	ldr r2, _08F043E0 @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F043E4 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	adds r1, r2, #0
	cmp r0, #0
	bne _08F04324
_08F04398:
	mov r7, r8
	cmp r7, #0
	bne _08F043E8
	ldr r0, _08F043DC @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F043E8
	ldr r0, _08F043D0 @ =gUnknown_030007A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F043E8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F043E8
	adds r0, r4, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #1
	b _08F0430C
	.align 2, 0
_08F043C8: .4byte gUnknown_03000788
_08F043CC: .4byte gUnknown_08F1B670
_08F043D0: .4byte gUnknown_030007A4
_08F043D4: .4byte gUnknown_03001508
_08F043D8: .4byte gUnknown_08F1B674
_08F043DC: .4byte gUnknown_03003170
_08F043E0: .4byte gUnknown_03000784
_08F043E4: .4byte gUnknown_03001D40
_08F043E8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CheckAction
CheckAction: @ 0x08F043F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08F0448C @ =gUnknown_03000788
	ldr r0, _08F04490 @ =gUnknown_08F1B670
	ldr r1, _08F04494 @ =gUnknown_030007A4
	ldrb r1, [r1]
	lsrs r1, r1, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x78
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, _08F04498 @ =gUnknown_03001508
	ldr r0, _08F0449C @ =gUnknown_08F1B674
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x58
	lsls r0, r0, #2
	ldrh r2, [r2]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
_08F04430:
	ldr r2, _08F044A0 @ =gUnknown_03003170
	movs r0, #0
	strb r0, [r2]
	movs r5, #0
	ldr r1, _08F044A4 @ =gUnknown_03000784
	ldr r0, _08F044A8 @ =gUnknown_03001D40
	str r0, [r1]
	ldrb r0, [r0]
	adds r7, r2, #0
	adds r2, r1, #0
	lsls r3, r3, #0x18
	mov r8, r3
	cmp r0, #0
	beq _08F044DA
_08F0444C:
	ldr r2, [r2]
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08F044BA
	adds r3, r1, #0
	cmp r3, #0x20
	beq _08F04468
	movs r0, #0x40
	ldrb r1, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08F044BA
_08F04468:
	ldrh r0, [r2, #4]
	subs r1, r6, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r2, #6]
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x3f
	bhi _08F044BA
	cmp r0, #0x3f
	bhi _08F044BA
	cmp r3, #0x20
	beq _08F044AC
	movs r0, #0xb
	bl ExecuteScript
	b _08F044B0
	.align 2, 0
_08F0448C: .4byte gUnknown_03000788
_08F04490: .4byte gUnknown_08F1B670
_08F04494: .4byte gUnknown_030007A4
_08F04498: .4byte gUnknown_03001508
_08F0449C: .4byte gUnknown_08F1B674
_08F044A0: .4byte gUnknown_03003170
_08F044A4: .4byte gUnknown_03000784
_08F044A8: .4byte gUnknown_03001D40
_08F044AC:
	bl sub_8F03F74
_08F044B0:
	ldr r0, _08F04508 @ =gUnknown_03003170
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _08F044DA
_08F044BA:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F044DA
	ldr r2, _08F0450C @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F04510 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F0444C
_08F044DA:
	mov r3, r8
	cmp r3, #0
	bne _08F04518
	ldrb r0, [r7]
	cmp r0, #0
	beq _08F044E8
	b _08F045F2
_08F044E8:
	ldr r0, _08F04514 @ =gUnknown_030007A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F04518
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8F01CBC
	cmp r0, #0
	beq _08F04518
	adds r0, r4, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #1
	b _08F04430
	.align 2, 0
_08F04508: .4byte gUnknown_03003170
_08F0450C: .4byte gUnknown_03000784
_08F04510: .4byte gUnknown_03001D40
_08F04514: .4byte gUnknown_030007A4
_08F04518:
	ldr r0, _08F045B0 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F045F2
	movs r5, #0
	ldr r0, _08F045B4 @ =gUnknown_03000784
	ldr r1, _08F045B8 @ =gUnknown_03001D40
	str r1, [r0]
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	beq _08F04596
_08F04530:
	ldr r2, [r2]
	movs r0, #0x80
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08F04576
	movs r0, #0x40
	ldrb r3, [r2, #0x14]
	ands r0, r3
	cmp r0, #0
	beq _08F04576
	ldr r0, _08F045BC @ =gUnknown_03000788
	ldrh r3, [r2, #4]
	ldrh r0, [r0]
	subs r1, r3, r0
	adds r1, #0x40
	lsls r1, r1, #0x10
	ldr r0, _08F045C0 @ =gUnknown_03001508
	ldrh r2, [r2, #6]
	ldrh r0, [r0]
	subs r0, r2, r0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x13
	cmp r1, r0
	bhi _08F04576
	movs r0, #0xb0
	lsls r0, r0, #2
	cmp r4, r0
	bhi _08F04576
	movs r0, #0x34
	bl ExecuteScript
_08F04576:
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _08F04596
	ldr r2, _08F045B4 @ =gUnknown_03000784
	lsls r1, r0, #5
	ldr r0, _08F045B8 @ =gUnknown_03001D40
	adds r1, r1, r0
	str r1, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08F04530
_08F04596:
	ldr r0, _08F045B0 @ =gUnknown_03003170
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F045F2
	ldr r0, _08F045C4 @ =gUnknown_03002440
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F045C8
	movs r0, #0xdc
	lsls r0, r0, #3
	bl DrawTextWithId
	b _08F045F2
	.align 2, 0
_08F045B0: .4byte gUnknown_03003170
_08F045B4: .4byte gUnknown_03000784
_08F045B8: .4byte gUnknown_03001D40
_08F045BC: .4byte gUnknown_03000788
_08F045C0: .4byte gUnknown_03001508
_08F045C4: .4byte gUnknown_03002440
_08F045C8:
	ldr r1, _08F045E0 @ =gGameInfo
	ldr r3, _08F045E4 @ =0x0000021F
	adds r1, r1, r3
	movs r0, #0x80
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F045EC
	ldr r0, _08F045E8 @ =0x000006E1
	bl DrawTextWithId
	b _08F045F2
	.align 2, 0
_08F045E0: .4byte gGameInfo
_08F045E4: .4byte 0x0000021F
_08F045E8: .4byte 0x000006E1
_08F045EC:
	ldr r0, _08F04600 @ =0x00000387
	bl DrawTextWithId
_08F045F2:
	bl WaitForActionButtonPress
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F04600: .4byte 0x00000387

	thumb_func_start PSIMenu
PSIMenu: @ 0x08F04604
	push {r4, r5, lr}
_08F04606:
	ldr r4, _08F04620 @ =gUnknown_03001504
	movs r0, #0
	strb r0, [r4]
	bl SelectPSI
	adds r2, r0, #0
	cmp r2, #0
	bgt _08F04624
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _08F046A8
	.align 2, 0
_08F04620: .4byte gUnknown_03001504
_08F04624:
	ldr r5, _08F04648 @ =gGameInfo
	ldr r3, _08F0464C @ =gUnknown_03003174
	ldrb r0, [r3]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r5
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04654
	ldr r0, _08F04650 @ =0x000006D7
	bl DrawTextWithId
	bl WaitForActionButtonPress
	b _08F046A8
	.align 2, 0
_08F04648: .4byte gGameInfo
_08F0464C: .4byte gUnknown_03003174
_08F04650: .4byte 0x000006D7
_08F04654:
	ldr r1, _08F04690 @ =gCurrentItemId
	adds r0, r2, #0
	subs r0, #0x40
	strb r0, [r1]
	lsls r1, r2, #3
	ldr r0, _08F04694 @ =gUnknown_08F5C51C
	adds r1, r1, r0
	ldrb r0, [r3]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r5
	adds r0, #0x56
	ldr r2, [r1]
	ldr r3, [r1, #4]
	ldrb r1, [r1, #7]
	ldrh r0, [r0]
	cmp r1, r0
	bhi _08F0469C
	ldr r1, _08F04698 @ =gItemEffectHandlers
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08F04606
	b _08F046A4
	.align 2, 0
_08F04690: .4byte gCurrentItemId
_08F04694: .4byte gUnknown_08F5C51C
_08F04698: .4byte gItemEffectHandlers
_08F0469C:
	movs r0, #0xd9
	lsls r0, r0, #3
	bl DrawTextWithId
_08F046A4:
	bl WaitForActionButtonPress
_08F046A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start GoodsMenu
GoodsMenu: @ 0x08F046B0
	push {r4, lr}
_08F046B2:
	ldr r4, _08F046C8 @ =gUnknown_03001504
	movs r0, #0
	strb r0, [r4]
	bl PickAnItemFromInventory
	cmp r0, #0
	bgt _08F046CC
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _08F0476C
	.align 2, 0
_08F046C8: .4byte gUnknown_03001504
_08F046CC:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SelectItem
	ldr r1, _08F046F8 @ =gCurrentCharacterId
	ldr r0, _08F046FC @ =gUnknown_03003174
	ldrb r0, [r0]
_08F046DA:
	strb r0, [r1]
_08F046DC:
	ldr r0, _08F04700 @ =gUnknown_03001504
	movs r1, #0
	strb r1, [r0]
	bl HandleGoodsMenuInput
	subs r0, #1
	cmp r0, #4
	bhi _08F046B2
	lsls r0, r0, #2
	ldr r1, _08F04704 @ =_08F04708
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F046F8: .4byte gCurrentCharacterId
_08F046FC: .4byte gUnknown_03003174
_08F04700: .4byte gUnknown_03001504
_08F04704: .4byte _08F04708
_08F04708: @ jump table
	.4byte _08F0471C @ case 0
	.4byte _08F04722 @ case 1
	.4byte _08F04728 @ case 2
	.4byte _08F0472E @ case 3
	.4byte _08F04734 @ case 4
_08F0471C:
	bl Goods_Use
	b _08F04764
_08F04722:
	bl Goods_Eat
	b _08F04764
_08F04728:
	bl Goods_Give
	b _08F04764
_08F0472E:
	bl Goods_Drop
	b _08F04764
_08F04734:
	ldr r0, _08F04758 @ =gCurrentItemId
	ldrb r0, [r0]
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r0, r1
	bl DrawTextWithId
	bl WaitForActionButtonPress
	ldr r1, _08F0475C @ =gKeysDown
	movs r0, #6
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08F04764
	ldr r1, _08F04760 @ =gTextPlaySfx
	movs r0, #0
	b _08F046DA
	.align 2, 0
_08F04758: .4byte gCurrentItemId
_08F0475C: .4byte gKeysDown
_08F04760: .4byte gTextPlaySfx
_08F04764:
	ldr r0, _08F04774 @ =gUnknown_03001504
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F046DC
_08F0476C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F04774: .4byte gUnknown_03001504

	thumb_func_start sub_8F04778
sub_8F04778: @ 0x08F04778
	push {r4, lr}
	bl sub_8F03128
	ldr r2, _08F047A8 @ =gUnknown_03000784
	ldr r1, _08F047AC @ =gUnknown_03000850
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
	ldr r4, _08F047B0 @ =gUnknown_03003170
	strb r0, [r4]
	movs r0, #0x35
	bl ExecuteScript
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F047A2
	bl WaitForActionButtonPress
	bl sub_8F0B040
_08F047A2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F047A8: .4byte gUnknown_03000784
_08F047AC: .4byte gUnknown_03000850
_08F047B0: .4byte gUnknown_03003170

	thumb_func_start sub_8F047B4
sub_8F047B4: @ 0x08F047B4
	push {r4, lr}
	ldr r4, _08F047D8 @ =gUnknown_03003170
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x40
	bl ExecuteScript
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F047D0
	bl WaitForActionButtonPress
	bl sub_8F0B040
_08F047D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F047D8: .4byte gUnknown_03003170

	thumb_func_start Goods_Use
Goods_Use: @ 0x08F047DC
	push {r4, r5, r6, r7, lr}
	ldr r1, _08F0480C @ =gGameInfo
	ldr r2, _08F04810 @ =gUnknown_03003174
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	adds r6, r2, #0
	ldr r7, _08F04814 @ =gCurrentItemId
	cmp r1, #0
	beq _08F0481C
	ldrb r0, [r7]
	cmp r0, #3
	beq _08F0481C
	ldr r0, _08F04818 @ =0x000006D7
	bl DrawTextWithId
	bl WaitForActionButtonPress
	b _08F0490A
	.align 2, 0
_08F0480C: .4byte gGameInfo
_08F04810: .4byte gUnknown_03003174
_08F04814: .4byte gCurrentItemId
_08F04818: .4byte 0x000006D7
_08F0481C:
	ldrb r1, [r7]
	lsls r0, r1, #3
	ldr r1, _08F04878 @ =gItemData
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r5, [r0, #4]
	lsrs r3, r4, #0x18
	cmp r3, #0
	beq _08F048A8
	lsrs r1, r4, #0x10
	ldr r0, _08F0487C @ =gCanEquipItemMask
	ldrb r2, [r6]
	adds r0, r2, r0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F0489C
	adds r0, r2, #0
	bl GetPositionOfCurrentItemFromInventoryOrCloset
	adds r3, r0, #0
	cmp r3, #0
	blt _08F04906
	lsrs r1, r4, #0x1e
	ldr r4, _08F04880 @ =gGameInfo
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x68
	adds r1, r1, r0
	ldrb r2, [r1]
	ldrb r0, [r7]
	strb r0, [r1]
	cmp r2, #0
	beq _08F04884
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r3, r0
	adds r1, r4, #0
	adds r1, #0x60
	adds r0, r0, r1
	strb r2, [r0]
	b _08F0488A
	.align 2, 0
_08F04878: .4byte gItemData
_08F0487C: .4byte gCanEquipItemMask
_08F04880: .4byte gGameInfo
_08F04884:
	ldrb r0, [r6]
	bl RemoveItemFromInventory
_08F0488A:
	movs r0, #4
	bl PlaySfxById2
	ldr r0, _08F04898 @ =0x00000391
	bl DrawTextWithId
	b _08F04906
	.align 2, 0
_08F04898: .4byte 0x00000391
_08F0489C:
	ldr r0, _08F048A4 @ =0x00000392
	bl DrawTextWithId
	b _08F04906
	.align 2, 0
_08F048A4: .4byte 0x00000392
_08F048A8:
	lsls r2, r4, #8
	lsrs r1, r2, #0x18
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _08F048FC
	ldr r0, _08F048E0 @ =gCanEquipItemMask
	ldrb r6, [r6]
	adds r0, r6, r0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F048F0
	ldr r0, _08F048E4 @ =gConsumableType
	strb r3, [r0]
	ldr r1, _08F048E8 @ =gItemEffectHandlers
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _08F048EC @ =gUnknown_03001504
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0490A
	b _08F04906
	.align 2, 0
_08F048E0: .4byte gCanEquipItemMask
_08F048E4: .4byte gConsumableType
_08F048E8: .4byte gItemEffectHandlers
_08F048EC: .4byte gUnknown_03001504
_08F048F0:
	ldr r0, _08F048F8 @ =0x0000038F
	bl DrawTextWithId
	b _08F04906
	.align 2, 0
_08F048F8: .4byte 0x0000038F
_08F048FC:
	ldr r0, _08F04910 @ =0x0000038E
	bl DrawTextWithId
	bl NothingHappened
_08F04906:
	bl WaitForActionButtonPress
_08F0490A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F04910: .4byte 0x0000038E

	thumb_func_start Goods_Eat
Goods_Eat: @ 0x08F04914
	push {r4, r5, lr}
	ldr r1, _08F0493C @ =gGameInfo
	ldr r0, _08F04940 @ =gUnknown_03003174
	ldrb r5, [r0]
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	movs r1, #0x80
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04948
	ldr r0, _08F04944 @ =0x000006D7
	bl DrawTextWithId
	bl WaitForActionButtonPress
	b _08F049BC
	.align 2, 0
_08F0493C: .4byte gGameInfo
_08F04940: .4byte gUnknown_03003174
_08F04944: .4byte 0x000006D7
_08F04948:
	ldr r0, _08F0498C @ =gCurrentItemId
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08F04990 @ =gItemData
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r4, [r0, #4]
	lsls r2, r3, #8
	lsrs r1, r2, #0x18
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08F049B0
	ldr r0, _08F04994 @ =gCanEquipItemMask
	adds r0, r5, r0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F049A4
	ldr r1, _08F04998 @ =gConsumableType
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08F0499C @ =gItemEffectHandlers
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _08F049A0 @ =gUnknown_03001504
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F049BC
	b _08F049B8
	.align 2, 0
_08F0498C: .4byte gCurrentItemId
_08F04990: .4byte gItemData
_08F04994: .4byte gCanEquipItemMask
_08F04998: .4byte gConsumableType
_08F0499C: .4byte gItemEffectHandlers
_08F049A0: .4byte gUnknown_03001504
_08F049A4:
	ldr r0, _08F049AC @ =0x0000038F
	bl DrawTextWithId
	b _08F049B8
	.align 2, 0
_08F049AC: .4byte 0x0000038F
_08F049B0:
	movs r0, #0xe4
	lsls r0, r0, #2
	bl DrawTextWithId
_08F049B8:
	bl WaitForActionButtonPress
_08F049BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Goods_Give
Goods_Give: @ 0x08F049C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F049DC @ =gCurrentItemId
	ldrb r0, [r0]
	cmp r0, #3
	bne _08F049E4
	ldr r0, _08F049E0 @ =0x00000396
	bl DrawTextWithId
	b _08F04B2A
	.align 2, 0
_08F049DC: .4byte gCurrentItemId
_08F049E0: .4byte 0x00000396
_08F049E4:
	bl SelectCharacter
	adds r4, r0, #0
	subs r0, r4, #1
	cmp r0, #4
	bls _08F04A00
	ldr r1, _08F049FC @ =gUnknown_03001504
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08F04B2E
	.align 2, 0
_08F049FC: .4byte gUnknown_03001504
_08F04A00:
	ldr r1, _08F04A80 @ =gCurrentCharacterId
	strb r4, [r1]
	movs r4, #0
	ldr r2, _08F04A84 @ =gGameInfo
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #6
	adds r3, r2, #0
	adds r3, #0x60
	adds r0, r0, r3
	ldrb r0, [r0]
	mov r8, r1
	adds r7, r2, #0
	ldr r6, _08F04A88 @ =gUnknown_03003174
	cmp r0, #0
	beq _08F04A38
	adds r2, r3, #0
_08F04A22:
	adds r4, #1
	cmp r4, #7
	bgt _08F04A38
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F04A22
_08F04A38:
	adds r0, r6, #0
	mov r5, r8
	ldrb r1, [r0]
	ldrb r2, [r5]
	cmp r1, r2
	bne _08F04A94
	ldrb r0, [r0]
	bl RemoveItemFromInventory
	cmp r0, #0
	blt _08F04B2A
	ldr r2, _08F04A84 @ =gGameInfo
	ldrb r1, [r5]
	lsls r0, r1, #6
	subs r0, #0x41
	adds r0, r4, r0
	adds r1, r2, #0
	adds r1, #0x60
	adds r0, r0, r1
	ldr r1, _08F04A8C @ =gCurrentItemId
	ldrb r1, [r1]
	strb r1, [r0]
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r2
	adds r0, #0x41
	movs r1, #0xc0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F04ADC
	ldr r0, _08F04A90 @ =0x000006D6
	bl DrawTextWithId
	b _08F04B2A
	.align 2, 0
_08F04A80: .4byte gCurrentCharacterId
_08F04A84: .4byte gGameInfo
_08F04A88: .4byte gUnknown_03003174
_08F04A8C: .4byte gCurrentItemId
_08F04A90: .4byte 0x000006D6
_08F04A94:
	cmp r4, #7
	bgt _08F04B24
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r1, r7, #0
	adds r1, #0x60
	adds r0, r0, r1
	ldr r1, _08F04AE4 @ =gCurrentItemId
	ldrb r1, [r1]
	strb r1, [r0]
	ldrb r0, [r6]
	bl RemoveItemFromInventory
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r7
	adds r0, #0x41
	movs r2, #0xc0
	adds r1, r2, #0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04AF6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r7
	adds r0, #0x41
	adds r1, r2, #0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04AEC
_08F04ADC:
	ldr r0, _08F04AE8 @ =0x000006AA
	bl DrawTextWithId
	b _08F04B2A
	.align 2, 0
_08F04AE4: .4byte gCurrentItemId
_08F04AE8: .4byte 0x000006AA
_08F04AEC:
	movs r0, #0xd5
	lsls r0, r0, #3
	bl DrawTextWithId
	b _08F04B2A
_08F04AF6:
	mov r1, r8
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r7
	adds r0, #0x41
	adds r1, r2, #0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04B18
	ldr r0, _08F04B14 @ =0x000006A7
	bl DrawTextWithId
	b _08F04B2A
	.align 2, 0
_08F04B14: .4byte 0x000006A7
_08F04B18:
	ldr r0, _08F04B20 @ =0x00000395
	bl DrawTextWithId
	b _08F04B2A
	.align 2, 0
_08F04B20: .4byte 0x00000395
_08F04B24:
	ldr r0, _08F04B38 @ =0x00000397
	bl DrawTextWithId
_08F04B2A:
	bl WaitForActionButtonPress
_08F04B2E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F04B38: .4byte 0x00000397

	thumb_func_start Goods_Drop
Goods_Drop: @ 0x08F04B3C
	push {r4, lr}
	ldr r0, _08F04B5C @ =gCurrentItemId
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, _08F04B60 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x80
	ldrb r1, [r1, #2]
	ands r0, r1
	cmp r0, #0
	beq _08F04B64
	movs r0, #0xe5
	lsls r0, r0, #2
	bl DrawTextWithId
	b _08F04B9E
	.align 2, 0
_08F04B5C: .4byte gCurrentItemId
_08F04B60: .4byte gItemData
_08F04B64:
	ldr r4, _08F04B8C @ =gUnknown_03003174
	ldrb r0, [r4]
	bl RemoveItemFromInventory
	ldr r1, _08F04B90 @ =gGameInfo
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	movs r1, #0xc0
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08F04B98
	ldr r0, _08F04B94 @ =0x000006A9
	bl DrawTextWithId
	b _08F04B9E
	.align 2, 0
_08F04B8C: .4byte gUnknown_03003174
_08F04B90: .4byte gGameInfo
_08F04B94: .4byte 0x000006A9
_08F04B98:
	ldr r0, _08F04BA8 @ =0x00000393
	bl DrawTextWithId
_08F04B9E:
	bl WaitForActionButtonPress
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F04BA8: .4byte 0x00000393

	thumb_func_start RemoveItemFromInventory
RemoveItemFromInventory: @ 0x08F04BAC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	bl GetPositionOfCurrentItemFromInventoryOrCloset
	adds r2, r0, #0
	cmp r2, #0
	blt _08F04BF2
	ldr r5, _08F04BFC @ =gGameInfo
	subs r3, r4, #1
	ldr r4, _08F04C00 @ =gUnknown_030007D8
	cmp r2, #6
	bgt _08F04BDE
	lsls r0, r3, #6
	adds r1, r5, #0
	adds r1, #0x60
	adds r0, r0, r1
	adds r1, r2, r0
_08F04BD2:
	ldrb r0, [r1, #1]
	strb r0, [r1]
	adds r1, #1
	adds r2, #1
	cmp r2, #6
	ble _08F04BD2
_08F04BDE:
	lsls r0, r3, #6
	adds r0, r2, r0
	adds r1, r5, #0
	adds r1, #0x60
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	subs r1, #1
	adds r0, r1, #0
	strh r0, [r4]
_08F04BF2:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08F04BFC: .4byte gGameInfo
_08F04C00: .4byte gUnknown_030007D8

	thumb_func_start SelectItem
SelectItem: @ 0x08F04C04
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08F04C1C @ =gCurrentItemId
	strb r1, [r0]
	lsls r0, r1, #0x18
	cmp r0, #0
	blt _08F04C28
	ldr r2, _08F04C20 @ =gTempNumber
	lsls r0, r1, #3
	ldr r1, _08F04C24 @ =gItemData
	b _08F04C2E
	.align 2, 0
_08F04C1C: .4byte gCurrentItemId
_08F04C20: .4byte gTempNumber
_08F04C24: .4byte gItemData
_08F04C28:
	ldr r2, _08F04C38 @ =gTempNumber
	lsls r0, r1, #3
	ldr r1, _08F04C3C @ =gTeleportLocations
_08F04C2E:
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	strh r0, [r2]
	bx lr
	.align 2, 0
_08F04C38: .4byte gTempNumber
_08F04C3C: .4byte gTeleportLocations

	thumb_func_start GetPositionOfCurrentItemFromInventoryOrCloset
GetPositionOfCurrentItemFromInventoryOrCloset: @ 0x08F04C40
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08F04C94
	ldr r2, _08F04C6C @ =gCurrentItemId
	ldr r1, _08F04C70 @ =gGameInfo
	ldr r6, _08F04C74 @ =gUnknown_030007D8
	movs r3, #0
	ldrsh r4, [r6, r3]
	subs r0, #1
	lsls r5, r0, #6
	adds r0, r4, r5
	adds r1, #0x60
	adds r0, r0, r1
	ldrb r3, [r2]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08F04C78
	adds r0, r4, #0
	b _08F04CDC
	.align 2, 0
_08F04C6C: .4byte gCurrentItemId
_08F04C70: .4byte gGameInfo
_08F04C74: .4byte gUnknown_030007D8
_08F04C78:
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r6]
	movs r2, #0
	adds r0, r5, r1
_08F04C84:
	ldrb r5, [r0]
	cmp r3, r5
	beq _08F04CAE
	adds r0, #1
	adds r2, #1
	cmp r2, #7
	ble _08F04C84
	b _08F04CD8
_08F04C94:
	ldr r1, _08F04CB4 @ =gCurrentItemId
	ldr r0, _08F04CB8 @ =gGameInfo
	ldr r4, _08F04CBC @ =gUnknown_030007D8
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r5, #0xac
	lsls r5, r5, #2
	adds r3, r0, r5
	adds r0, r2, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08F04CC0
_08F04CAE:
	adds r0, r2, #0
	b _08F04CDC
	.align 2, 0
_08F04CB4: .4byte gCurrentItemId
_08F04CB8: .4byte gGameInfo
_08F04CBC: .4byte gUnknown_030007D8
_08F04CC0:
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r4]
	movs r2, #0
_08F04CCA:
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, r0
	beq _08F04CAE
	adds r2, #1
	cmp r2, #0x4f
	ble _08F04CCA
_08F04CD8:
	movs r0, #1
	rsbs r0, r0, #0
_08F04CDC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
