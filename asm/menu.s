#ifdef NDS_VERSION
#include "macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

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
