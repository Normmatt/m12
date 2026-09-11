.syntax unified
.section .text
@	thumb_func_start SelectCharacter
@SelectCharacter: @ 0x08F0B914
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r6, #0
	movs r4, #0
	ldr r1, _08F0B9EC @ =gUnknown_03003198
_08F0B91E:
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0B932
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08F0B932:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08F0B91E
	movs r5, #0
	movs r4, #0
	ldr r7, _08F0B9EC @ =gUnknown_03003198
_08F0B942:
	adds r0, r4, r7
	ldrb r2, [r0]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08F0B978
	lsls r0, r5, #2
	mov r3, sp
	adds r1, r3, r0
	strh r2, [r1]
	movs r0, #1
	strb r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x13
	subs r0, r0, r6
	strb r0, [r1, #3]
	ldrb r1, [r1, #3]
	movs r0, #1
	bl SetTextPosition
	ldr r0, _08F0B9F0 @ =0x00008010
	bl WriteCharacterToTilemap
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08F0B978:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08F0B942
	lsls r0, r5, #2
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xf
	subs r0, r0, r6
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	adds r1, r4, #0
	bl SetTextPosition
	ldr r0, _08F0B9F4 @ =gMsg_WindowWho
	bl HandleControlCodes
	mov r0, sp
	movs r1, #0
	bl HandleSelectMenuInput
	adds r7, r0, #0
	cmp r7, #0
	bgt _08F0BA1C
	movs r0, #0
	adds r1, r4, #0
	bl SetTextPosition
	movs r0, #8 @delete expanded "Who?" window properly
	bl DrawBlankTiles
	movs r1, #0x10
	subs r1, r1, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl SetTextPosition
	movs r0, #8 @delete expanded "Who?" window properly
	bl DrawBlankTiles
	movs r1, #0x11
	subs r1, r1, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl SetTextPosition
	movs r0, #8 @delete expanded "Who?" window properly
	bl DrawBlankTiles
	movs r5, #0
	mov r0, sp
	b _08F0BA16
	.align 2, 0
_08F0B9EC: .4byte gUnknown_03003198
_08F0B9F0: .4byte 0x00008010
_08F0B9F4: .4byte gMsg_WindowWho
_08F0B9F8:
	lsls r0, r5, #2
	mov r3, sp
	adds r1, r3, r0
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl SetTextPosition
	ldr r0, _08F0BA28 @ =0x00008010
	bl WriteCharacterToTilemap
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #2
	add r0, sp
_08F0BA16:
	ldrh r0, [r0]
	cmp r0, #0
	bne _08F0B9F8
_08F0BA1C:
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F0BA28: .4byte 0x00008010

.syntax divided
