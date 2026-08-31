.syntax unified
.section .text

@	thumb_func_start AskToContinueOrEndAdventure
@AskToContinueOrEndAdventure: @ 0x08F07F8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08F07FDC @ =gUnknown_03003498
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08F07FE0 @ =gCurrentBgMusic
	ldrb r7, [r0]
	movs r0, #0x2f
	bl ChangeBgMusic
	bl WaitForActionButtonPress
	movs r0, #0xff
	bl ChangeBgMusic
	movs r0, #0x14
	bl DrawTextWithId
	movs r0, #0x16
	bl DrawTextWithId
	ldr r1, _08F07FE4 @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0xce
	lsls r0, r0, #2
	bl DrawTextWithId
_08F07FCC:
	movs r0, #0
	bl sub_8F0B2C8
	cmp r0, #1
	beq _08F07FE8
	cmp r0, #2
	beq _08F07FF6
	b _08F07FCC
	.align 2, 0
_08F07FDC: .4byte gUnknown_03003498
_08F07FE0: .4byte gCurrentBgMusic
_08F07FE4: .4byte gTextDelayAfterWriteCharacterEnabled
_08F07FE8:
	movs r0, #0x18
	bl DrawTextWithId
	movs r0, #0x21
	bl DrawTextWithId
	b _08F08064
_08F07FF6:
	ldr r0, _08F0807C @ =gCurrentBgMusic
	strb r7, [r0]
	ldr r0, _08F08080 @ =gGameInfo
	ldr r1, _08F08084 @ =gUnknown_03000788
	ldrh r5, [r1]
	adds r3, r5, #0
	subs r3, #0x40
	movs r1, #0x40
	rsbs r1, r1, #0
	adds r6, r1, #0
	ands r3, r6
	movs r2, #0
	mov r8, r2
	ldr r1, _08F08088 @ =gUnknown_03001508
	ldrh r4, [r1]
	adds r2, r4, #0
	subs r2, #0x80
	ands r2, r6
	movs r6, #0x3f
	movs r1, #0x3f
	ands r1, r7
	orrs r3, r1
	strh r3, [r0, #4]
	ldr r3, _08F0808C @ =gUnknown_030007A4
	movs r1, #7
	ldrb r3, [r3]
	ands r1, r3
	orrs r2, r1
	strh r2, [r0, #6]
	subs r5, #0x40
	ands r5, r6
	movs r2, #0xab
	lsls r2, r2, #2
	adds r1, r0, r2
	strb r5, [r1]
	adds r4, #0x80
	ands r4, r6
	adds r2, #1
	adds r1, r0, r2
	strb r4, [r1]
	subs r2, #0x25
	adds r1, r0, r2
	mov r2, r8
	strb r2, [r1]
	ldr r1, _08F08090 @ =gUnknown_030007E4
	ldr r1, [r1]
	bl M1_CalculateChecksumAndWriteSave
	movs r0, #0x1b
	bl DrawTextWithId
	bl WaitForActionButtonPress
	bl M1_SoftReset
_08F08064:
	bl WaitForActionButtonPress
	bl sub_8F0B040
	adds r0, r7, #0
	bl ChangeBgMusic
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0807C: .4byte gCurrentBgMusic
_08F08080: .4byte gGameInfo
_08F08084: .4byte gUnknown_03000788
_08F08088: .4byte gUnknown_03001508
_08F0808C: .4byte gUnknown_030007A4
_08F08090: .4byte gUnknown_030007E4
.syntax divided
