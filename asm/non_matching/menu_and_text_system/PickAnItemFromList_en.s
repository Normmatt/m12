.syntax unified
.section .text
@	thumb_func_start PickAnItemFromList
@PickAnItemFromList: @ 0x08F0BA70
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
	ldr r0, _08F0BAC0 @ =gMsg_WindowShopItems
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
_08F0BAC0: .4byte gMsg_WindowShopItems
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
	movs r0, #0xe @expand store menu width
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
	ldr r1, _08F0BB54 @ =gSprites
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
_08F0BB54: .4byte gSprites
_08F0BB58: .4byte 0x000080BA

.syntax divided
