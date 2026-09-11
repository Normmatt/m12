.syntax unified
.section .text

@	thumb_func_start TriggerEncounter
@TriggerEncounter: @ 0x08F09694
	push {r4, r5, r6, r7, lr}
	sub sp, #0x110
	ldr r1, _08F096F4 @ =gEncounterRates
	mov r0, sp
	movs r2, #8
	bl memcpy
	add r4, sp, #8
	ldr r1, _08F096F8 @ =gEncounterList
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	add r5, sp, #0x48
	ldr r1, _08F096FC @ =Repel_BattleDifficultyTable
	adds r0, r5, #0
	movs r2, #0xc8
	bl memcpy
	ldr r1, _08F09700 @ =gUnknown_03002440
	ldr r0, _08F09704 @ =gCurrentArea
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
_08F096F8: .4byte gEncounterList
_08F096FC: .4byte Repel_BattleDifficultyTable
_08F09700: .4byte gUnknown_03002440
_08F09704: .4byte gCurrentArea
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
	ldr r6, _08F09800 @ =gSpawnSets
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
_08F09800: .4byte gSpawnSets
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

.syntax divided
