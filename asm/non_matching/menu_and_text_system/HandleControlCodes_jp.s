.syntax unified
.section .text
@	thumb_func_start HandleControlCodes
@HandleControlCodes: @ 0x08F0C058
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_8F0C79A

@	thumb_func_start sub_08F0C060
sub_08F0C060: @ 0x08F0C060
	ldr r0, _08F0C0A0 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0C08C
	cmp r1, #3
	bne _08F0C072
	ldrb r0, [r6, #1]
	cmp r0, #3
	beq _08F0C076
_08F0C072:
	bl HandleTextWrapping
_08F0C076:
	ldr r2, _08F0C0A4 @ =gTextX
	ldr r0, _08F0C0A8 @ =gTextOriginX
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08F0C08C
	ldrb r0, [r6]
	cmp r0, #0xc0
	beq _08F0C08C
	adds r0, r1, #1
	strb r0, [r2]
_08F0C08C:
	ldrb r0, [r6]
	cmp r0, #4
	bls _08F0C094
	b _08F0C76E
_08F0C094:
	lsls r0, r0, #2
	ldr r1, _08F0C0AC @ =_08F0C0B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0C0A0: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0C0A4: .4byte gTextX
_08F0C0A8: .4byte gTextOriginX
_08F0C0AC: .4byte _08F0C0B0
_08F0C0B0: @ jump table
	.4byte _08F0C7AA @ case 0
	.4byte _08F0C0C4 @ case 1
	.4byte _08F0C0D0 @ case 2
	.4byte _08F0C0FC @ case 3
	.4byte _08F0C798 @ case 4
_08F0C0C4:
	ldr r0, _08F0C0CC @ =0x00008010
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C0CC: .4byte 0x00008010
_08F0C0D0:
	ldr r1, _08F0C0EC @ =gTextX
	ldr r0, _08F0C0F0 @ =gTextOriginX
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08F0C0F4 @ =gTextY
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08F0C0F8 @ =gUnknown_030034E0
	ldrb r0, [r0]
	bl UpdateBg0TilemapMultipleTimes
	b _08F0C798
	.align 2, 0
_08F0C0EC: .4byte gTextX
_08F0C0F0: .4byte gTextOriginX
_08F0C0F4: .4byte gTextY
_08F0C0F8: .4byte gUnknown_030034E0
_08F0C0FC:
	adds r6, #1
	ldrb r0, [r6]
	cmp r0, #0x3f
	bls _08F0C106
	b _08F0C798
_08F0C106:
	lsls r0, r0, #2
	ldr r1, _08F0C110 @ =_08F0C114
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F0C110: .4byte _08F0C114
_08F0C114: @ jump table
	.4byte _08F0C798 @ case 0
	.4byte _08F0C214 @ case 1
	.4byte _08F0C220 @ case 2
	.4byte _08F0C226 @ case 3
	.4byte _08F0C234 @ case 4
	.4byte _08F0C250 @ case 5
	.4byte _08F0C25E @ case 6
	.4byte _08F0C26C @ case 7
	.4byte _08F0C278 @ case 8
	.4byte _08F0C284 @ case 9
	.4byte _08F0C290 @ case 10
	.4byte _08F0C29C @ case 11
	.4byte _08F0C2A8 @ case 12
	.4byte _08F0C2B4 @ case 13
	.4byte _08F0C2C0 @ case 14
	.4byte _08F0C2CC @ case 15
	.4byte _08F0C2D8 @ case 16
	.4byte _08F0C2E4 @ case 17
	.4byte _08F0C2F0 @ case 18
	.4byte _08F0C2FC @ case 19
	.4byte _08F0C308 @ case 20
	.4byte _08F0C32A @ case 21
	.4byte _08F0C338 @ case 22
	.4byte _08F0C388 @ case 23
	.4byte _08F0C3A4 @ case 24
	.4byte _08F0C3BC @ case 25
	.4byte _08F0C3D4 @ case 26
	.4byte _08F0C3E8 @ case 27
	.4byte _08F0C3FC @ case 28
	.4byte _08F0C41C @ case 29
	.4byte _08F0C45E @ case 30
	.4byte _08F0C468 @ case 31
	.4byte _08F0C478 @ case 32
	.4byte _08F0C484 @ case 33
	.4byte _08F0C490 @ case 34
	.4byte _08F0C49C @ case 35
	.4byte _08F0C4AC @ case 36
	.4byte _08F0C4CC @ case 37
	.4byte _08F0C4D8 @ case 38
	.4byte _08F0C4E4 @ case 39
	.4byte _08F0C4F0 @ case 40
	.4byte _08F0C4FC @ case 41
	.4byte _08F0C508 @ case 42
	.4byte _08F0C514 @ case 43
	.4byte _08F0C520 @ case 44
	.4byte _08F0C53C @ case 45
	.4byte _08F0C558 @ case 46
	.4byte _08F0C574 @ case 47
	.4byte _08F0C58C @ case 48
	.4byte _08F0C5A8 @ case 49
	.4byte _08F0C5C8 @ case 50
	.4byte _08F0C5FC @ case 51
	.4byte _08F0C644 @ case 52
	.4byte _08F0C65C @ case 53
	.4byte _08F0C674 @ case 54
	.4byte _08F0C68C @ case 55
	.4byte _08F0C6A4 @ case 56
	.4byte _08F0C6C4 @ case 57
	.4byte _08F0C6FC @ case 58
	.4byte _08F0C730 @ case 59
	.4byte _08F0C740 @ case 60
	.4byte _08F0C74C @ case 61
	.4byte _08F0C344 @ case 62
	.4byte _08F0C752 @ case 63
_08F0C214:
	ldr r1, _08F0C21C @ =gUnknown_030034BC
	movs r0, #1
	b _08F0C7A8
	.align 2, 0
_08F0C21C: .4byte gUnknown_030034BC
_08F0C220:
	bl WaitForButtonPress
	b _08F0C798
_08F0C226:
	adds r6, #1
	ldrb r0, [r6]
	adds r6, #1
	ldrb r1, [r6]
	bl SetTextPosition
	b _08F0C798
_08F0C234:
	adds r6, #1
	ldrb r4, [r6]
	adds r6, #1
	ldrb r5, [r6]
	cmp r4, #0
	bne _08F0C242
	b _08F0C798
_08F0C242:
	adds r0, r5, #0
	bl WriteCharacterToTilemap
	subs r4, #1
	cmp r4, #0
	bne _08F0C242
	b _08F0C798
_08F0C250:
	adds r6, #1
	ldrb r0, [r6]
	adds r6, #1
	ldrb r1, [r6]
	bl SetLineMaximums
	b _08F0C798
_08F0C25E:
	ldr r0, _08F0C268 @ =0x00008094
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C268: .4byte 0x00008094
_08F0C26C:
	ldr r0, _08F0C274 @ =0x00008095
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C274: .4byte 0x00008095
_08F0C278:
	ldr r0, _08F0C280 @ =0x000080DB
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C280: .4byte 0x000080DB
_08F0C284:
	ldr r0, _08F0C28C @ =0x000080DD
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C28C: .4byte 0x000080DD
_08F0C290:
	ldr r0, _08F0C298 @ =0x000080DE
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C298: .4byte 0x000080DE
_08F0C29C:
	ldr r0, _08F0C2A4 @ =0x000080DF
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C2A4: .4byte 0x000080DF
_08F0C2A8:
	ldr r0, _08F0C2B0 @ =0x000080FB
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C2B0: .4byte 0x000080FB
_08F0C2B4:
	ldr r0, _08F0C2BC @ =0x000080FD
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C2BC: .4byte 0x000080FD
_08F0C2C0:
	ldr r0, _08F0C2C8 @ =0x000080FE
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C2C8: .4byte 0x000080FE
_08F0C2CC:
	ldr r0, _08F0C2D4 @ =0x000080E0
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C2D4: .4byte 0x000080E0
_08F0C2D8:
	ldr r0, _08F0C2E0 @ =gUnknown_03003208
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C2E0: .4byte gUnknown_03003208
_08F0C2E4:
	ldr r0, _08F0C2EC @ =gUnknown_03003288
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C2EC: .4byte gUnknown_03003288
_08F0C2F0:
	ldr r0, _08F0C2F8 @ =gUnknown_03003248
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C2F8: .4byte gUnknown_03003248
_08F0C2FC:
	ldr r0, _08F0C304 @ =gUnknown_030032C8
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C304: .4byte gUnknown_030032C8
_08F0C308:
	ldr r2, _08F0C31C @ =gGameInfo
	adds r1, r2, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0
	beq _08F0C320
	adds r0, r1, #0
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C31C: .4byte gGameInfo
_08F0C320:
	adds r0, r2, #0
	adds r0, #0x78
	bl HandleControlCodes
	b _08F0C798
_08F0C32A:
	ldr r0, _08F0C334 @ =gUnknown_03003419
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C334: .4byte gUnknown_03003419
_08F0C338:
	ldr r1, _08F0C340 @ =gGameInfo
	ldrb r2, [r1, #8]
	lsls r0, r2, #6
	b _08F0C764
	.align 2, 0
_08F0C340: .4byte gGameInfo
_08F0C344:
	movs r4, #0
	ldr r0, _08F0C384 @ =gGameInfo
	ldrb r5, [r0, #8]
	adds r2, r0, #0
	cmp r5, #0
	bne _08F0C352
	b _08F0C798
_08F0C352:
	adds r7, r2, #0
	movs r0, #0xc0
	mov ip, r0
	adds r3, r2, #0
	adds r3, #8
_08F0C35C:
	subs r0, r5, #1
	lsls r0, r0, #6
	adds r0, r0, r7
	adds r0, #0x41
	mov r1, ip
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08F0C370
	b _08F0C760
_08F0C370:
	adds r4, #1
	cmp r4, #3
	ble _08F0C378
	b _08F0C798
_08F0C378:
	adds r0, r4, r3
	ldrb r5, [r0]
	cmp r5, #0
	bne _08F0C35C
	b _08F0C798
	.align 2, 0
_08F0C384: .4byte gGameInfo
_08F0C388:
	ldr r0, _08F0C39C @ =gGameInfo
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _08F0C392
	b _08F0C798
_08F0C392:
	ldr r0, _08F0C3A0 @ =gMsg_Tachi
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C39C: .4byte gGameInfo
_08F0C3A0: .4byte gMsg_Tachi
_08F0C3A4:
	ldr r0, _08F0C3B8 @ =gGameInfo
	ldrb r1, [r0, #0x16]
	lsls r4, r1, #8
	ldrb r2, [r0, #0x15]
	orrs r4, r2
	ldrb r0, [r0, #0x17]
	lsls r0, r0, #0x10
	adds r4, r4, r0
	adds r0, r4, #0
	b _08F0C4A0
	.align 2, 0
_08F0C3B8: .4byte gGameInfo
_08F0C3BC:
	ldr r0, _08F0C3D0 @ =gGameInfo
	ldrb r1, [r0, #0x13]
	lsls r4, r1, #8
	ldrb r2, [r0, #0x12]
	orrs r4, r2
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x10
	adds r4, r4, r0
	adds r0, r4, #0
	b _08F0C4A0
	.align 2, 0
_08F0C3D0: .4byte gGameInfo
_08F0C3D4:
	ldr r0, _08F0C3E0 @ =gUnknown_03003174
	ldrb r0, [r0]
	lsls r0, r0, #6
	ldr r1, _08F0C3E4 @ =gUnknown_030031C8
	b _08F0C766
	.align 2, 0
_08F0C3E0: .4byte gUnknown_03003174
_08F0C3E4: .4byte gUnknown_030031C8
_08F0C3E8:
	ldr r0, _08F0C3F4 @ =gCurrentCharacterId
	ldrb r0, [r0]
	lsls r0, r0, #6
	ldr r1, _08F0C3F8 @ =gUnknown_030031C8
	b _08F0C766
	.align 2, 0
_08F0C3F4: .4byte gCurrentCharacterId
_08F0C3F8: .4byte gUnknown_030031C8
_08F0C3FC:
	ldr r1, _08F0C410 @ =gUnknown_03003188
	ldrb r2, [r1]
	lsls r0, r2, #0x18
	cmp r0, #0
	blt _08F0C414
	adds r1, r2, #0
	movs r2, #0xfa
	lsls r2, r2, #2
	b _08F0C456
	.align 2, 0
_08F0C410: .4byte gUnknown_03003188
_08F0C414:
	lsrs r0, r0, #0x18
	cmp r0, #0xbf
	bls _08F0C43A
	b _08F0C450
_08F0C41C:
	ldr r1, _08F0C430 @ =gCurrentItemId
	ldrb r2, [r1]
	lsls r0, r2, #0x18
	cmp r0, #0
	blt _08F0C434
	adds r1, r2, #0
	movs r2, #0xfa
	lsls r2, r2, #2
	b _08F0C456
	.align 2, 0
_08F0C430: .4byte gCurrentItemId
_08F0C434:
	lsrs r0, r0, #0x18
	cmp r0, #0xbf
	bhi _08F0C450
_08F0C43A:
	ldr r0, _08F0C44C @ =gUnknown_08F29EB0
	ldrb r1, [r1]
	subs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl DrawTextWithIdNoWait
	b _08F0C798
	.align 2, 0
_08F0C44C: .4byte gUnknown_08F29EB0
_08F0C450:
	ldrb r1, [r1]
	movs r2, #0xea
	lsls r2, r2, #2
_08F0C456:
	adds r0, r1, r2
	bl DrawTextWithIdNoWait
	b _08F0C798
_08F0C45E:
	ldr r0, _08F0C464 @ =gTempNumber
	ldrh r0, [r0]
	b _08F0C4A0
	.align 2, 0
_08F0C464: .4byte gTempNumber
_08F0C468:
	ldr r0, _08F0C474 @ =gGameInfo
	ldrh r0, [r0, #0x10]
	movs r1, #5
	bl DrawNumberWithMaxDigits
	b _08F0C798
	.align 2, 0
_08F0C474: .4byte gGameInfo
_08F0C478:
	ldr r0, _08F0C480 @ =gUnknown_03003640
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C480: .4byte gUnknown_03003640
_08F0C484:
	ldr r0, _08F0C48C @ =gUnknown_03003610
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C48C: .4byte gUnknown_03003610
_08F0C490:
	ldr r0, _08F0C498 @ =gUnknown_030036A0
	bl HandleControlCodes
	b _08F0C798
	.align 2, 0
_08F0C498: .4byte gUnknown_030036A0
_08F0C49C:
	ldr r0, _08F0C4A8 @ =gUnknown_03003708
	ldr r0, [r0]
_08F0C4A0:
	movs r1, #0
	bl DrawNumberWithMaxDigits
	b _08F0C798
	.align 2, 0
_08F0C4A8: .4byte gUnknown_03003708
_08F0C4AC:
	ldr r1, _08F0C4C4 @ =gGameInfo
	ldr r0, _08F0C4C8 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x41
	ldrb r0, [r0]
	bl DrawPlayerCondition
	b _08F0C798
	.align 2, 0
_08F0C4C4: .4byte gGameInfo
_08F0C4C8: .4byte gCurrentCharacterId
_08F0C4CC:
	ldr r0, _08F0C4D4 @ =0x0000811A
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C4D4: .4byte 0x0000811A
_08F0C4D8:
	ldr r0, _08F0C4E0 @ =0x00008050
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C4E0: .4byte 0x00008050
_08F0C4E4:
	ldr r0, _08F0C4EC @ =0x00008040
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C4EC: .4byte 0x00008040
_08F0C4F0:
	ldr r0, _08F0C4F8 @ =0x00008041
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C4F8: .4byte 0x00008041
_08F0C4FC:
	ldr r0, _08F0C504 @ =0x00008042
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C504: .4byte 0x00008042
_08F0C508:
	ldr r0, _08F0C510 @ =0x00008043
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C510: .4byte 0x00008043
_08F0C514:
	ldr r0, _08F0C51C @ =0x00008044
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C51C: .4byte 0x00008044
_08F0C520:
	ldr r5, _08F0C534 @ =0x00008097
	ldr r4, _08F0C538 @ =0x0000809F
_08F0C524:
	adds r0, r5, #0
	bl WriteCharacterToTilemap
	adds r5, #1
	cmp r5, r4
	ble _08F0C524
	b _08F0C798
	.align 2, 0
_08F0C534: .4byte 0x00008097
_08F0C538: .4byte 0x0000809F
_08F0C53C:
	ldr r1, _08F0C550 @ =gGameInfo
	ldr r0, _08F0C554 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x50
	ldrb r0, [r0]
	b _08F0C5B8
	.align 2, 0
_08F0C550: .4byte gGameInfo
_08F0C554: .4byte gCurrentCharacterId
_08F0C558:
	ldr r1, _08F0C56C @ =gGameInfo
	ldr r0, _08F0C570 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x54
	ldrh r0, [r0]
	b _08F0C6B4
	.align 2, 0
_08F0C56C: .4byte gGameInfo
_08F0C570: .4byte gCurrentCharacterId
_08F0C574:
	ldr r1, _08F0C584 @ =gGameInfo
	ldr r0, _08F0C588 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x42
	b _08F0C5B6
	.align 2, 0
_08F0C584: .4byte gGameInfo
_08F0C588: .4byte gCurrentCharacterId
_08F0C58C:
	ldr r1, _08F0C5A0 @ =gGameInfo
	ldr r0, _08F0C5A4 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x56
	ldrh r0, [r0]
	b _08F0C6B4
	.align 2, 0
_08F0C5A0: .4byte gGameInfo
_08F0C5A4: .4byte gCurrentCharacterId
_08F0C5A8:
	ldr r1, _08F0C5C0 @ =gGameInfo
	ldr r0, _08F0C5C4 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x44
_08F0C5B6:
	ldrh r0, [r0]
_08F0C5B8:
	movs r1, #3
	bl DrawNumberWithMaxDigits
	b _08F0C798
	.align 2, 0
_08F0C5C0: .4byte gGameInfo
_08F0C5C4: .4byte gCurrentCharacterId
_08F0C5C8:
	ldr r1, _08F0C5F0 @ =gGameInfo
	ldr r0, _08F0C5F4 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r2, r0, #0
	adds r2, #0x46
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, _08F0C5F8 @ =gItemData
	adds r1, r1, r0
	movs r0, #0x3f
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r2, [r2]
	adds r5, r2, r0
	adds r0, r5, #0
	b _08F0C6B4
	.align 2, 0
_08F0C5F0: .4byte gGameInfo
_08F0C5F4: .4byte gCurrentCharacterId
_08F0C5F8: .4byte gItemData
_08F0C5FC:
	ldr r1, _08F0C638 @ =gGameInfo
	ldr r0, _08F0C63C @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	mov ip, r0
	mov r4, ip
	adds r4, #0x48
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r3, _08F0C640 @ =gItemData
	adds r1, r1, r3
	movs r2, #0x3f
	adds r0, r2, #0
	ldrb r1, [r1, #3]
	ands r0, r1
	ldrh r4, [r4]
	adds r5, r4, r0
	mov r0, ip
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #3]
	ands r2, r0
	adds r5, r5, r2
	adds r0, r5, #0
	b _08F0C6B4
	.align 2, 0
_08F0C638: .4byte gGameInfo
_08F0C63C: .4byte gCurrentCharacterId
_08F0C640: .4byte gItemData
_08F0C644:
	ldr r1, _08F0C654 @ =gGameInfo
	ldr r0, _08F0C658 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x4b
	b _08F0C6B2
	.align 2, 0
_08F0C654: .4byte gGameInfo
_08F0C658: .4byte gCurrentCharacterId
_08F0C65C:
	ldr r1, _08F0C66C @ =gGameInfo
	ldr r0, _08F0C670 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x4c
	b _08F0C6B2
	.align 2, 0
_08F0C66C: .4byte gGameInfo
_08F0C670: .4byte gCurrentCharacterId
_08F0C674:
	ldr r1, _08F0C684 @ =gGameInfo
	ldr r0, _08F0C688 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x4d
	b _08F0C6B2
	.align 2, 0
_08F0C684: .4byte gGameInfo
_08F0C688: .4byte gCurrentCharacterId
_08F0C68C:
	ldr r1, _08F0C69C @ =gGameInfo
	ldr r0, _08F0C6A0 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x4e
	b _08F0C6B2
	.align 2, 0
_08F0C69C: .4byte gGameInfo
_08F0C6A0: .4byte gCurrentCharacterId
_08F0C6A4:
	ldr r1, _08F0C6BC @ =gGameInfo
	ldr r0, _08F0C6C0 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x4f
_08F0C6B2:
	ldrb r0, [r0]
_08F0C6B4:
	movs r1, #6
	bl DrawNumberWithMaxDigits
	b _08F0C798
	.align 2, 0
_08F0C6BC: .4byte gGameInfo
_08F0C6C0: .4byte gCurrentCharacterId
_08F0C6C4:
	ldr r1, _08F0C6F4 @ =gGameInfo
	ldr r0, _08F0C6F8 @ =gCurrentCharacterId
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #6
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x51
	adds r1, r2, #0
	adds r1, #0x52
	ldrb r1, [r1]
	lsls r4, r1, #8
	ldrb r0, [r0]
	orrs r4, r0
	adds r0, r2, #0
	adds r0, #0x53
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #8
	bl DrawNumberWithMaxDigits
	b _08F0C798
	.align 2, 0
_08F0C6F4: .4byte gGameInfo
_08F0C6F8: .4byte gCurrentCharacterId
_08F0C6FC:
	movs r4, #0
	ldr r5, _08F0C714 @ =gUnknown_030033AE
_08F0C700:
	ldrb r0, [r5]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08F0C71C
	ldr r0, _08F0C718 @ =0x00008096
	bl WriteCharacterToTilemap
	b _08F0C722
	.align 2, 0
_08F0C714: .4byte gUnknown_030033AE
_08F0C718: .4byte 0x00008096
_08F0C71C:
	ldr r0, _08F0C72C @ =0x000080A5
	bl WriteCharacterToTilemap
_08F0C722:
	adds r4, #1
	cmp r4, #7
	ble _08F0C700
	b _08F0C798
	.align 2, 0
_08F0C72C: .4byte 0x000080A5
_08F0C730:
	ldr r1, _08F0C73C @ =gUnknown_030034C0
	adds r6, #1
	ldrb r2, [r6]
	lsls r0, r2, #0xc
	strh r0, [r1]
	b _08F0C798
	.align 2, 0
_08F0C73C: .4byte gUnknown_030034C0
_08F0C740:
	ldr r0, _08F0C748 @ =0x000080FF
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C748: .4byte 0x000080FF
_08F0C74C:
	bl sub_8F040E0
	b _08F0C798
_08F0C752:
	ldr r0, _08F0C75C @ =0x000080AC
	bl WriteCharacterToTilemap
	b _08F0C798
	.align 2, 0
_08F0C75C: .4byte 0x000080AC
_08F0C760:
	lsls r0, r5, #6
	adds r1, r2, #0
_08F0C764:
	adds r1, #0x38
_08F0C766:
	adds r0, r0, r1
	bl HandleControlCodes
	b _08F0C798
_08F0C76E:
	ldr r2, _08F0C7B0 @ =gTextPlaySfx
	ldrb r1, [r2]
	cmp r1, #0
	beq _08F0C792
	ldr r0, _08F0C7B4 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F0C792
	movs r0, #1
	eors r1, r0
	strb r1, [r2]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08F0C792
	movs r0, #0xe
	bl PlayPulse1Sfx
_08F0C792:
	ldrb r0, [r6]
	bl WriteCharacterToTilemap
_08F0C798:
	adds r6, #1

@	non_word_aligned_thumb_func_start sub_8F0C79A
sub_8F0C79A: @ 0x08F0C79A
	ldrb r1, [r6]
	cmp r1, #0
	beq _08F0C7A4
	bl sub_08F0C060
_08F0C7A4:
	ldr r1, _08F0C7B8 @ =gUnknown_030034BC
	movs r0, #0
_08F0C7A8:
	strb r0, [r1]
_08F0C7AA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0C7B0: .4byte gTextPlaySfx
_08F0C7B4: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0C7B8: .4byte gUnknown_030034BC

.syntax divided
