.syntax unified
.section .text
@	thumb_func_start sub_8F0B2C8
@sub_8F0B2C8: @ 0x08F0B2C8
	push {r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	mov r1, sp
	ldr r0, _08F0B334 @ =gUnknown_08F29FA0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r1, sp, #0xc
	ldr r0, _08F0B338 @ =0x00020001
	str r0, [sp, #0xc]
	ldr r0, _08F0B33C @ =0x00090002
	str r0, [r1, #4]
	movs r0, #0
	str r0, [r1, #8]
	ldr r2, _08F0B340 @ =gTextOriginX
	ldrb r0, [r1, #2]
	ldrb r3, [r2]
	adds r0, r0, r3
	strb r0, [r1, #2]
	ldr r2, _08F0B344 @ =gTextY
	ldrb r0, [r1, #3]
	ldrb r2, [r2]
	adds r0, r0, r2
	strb r0, [r1, #3]
	ldrb r0, [r1, #6]
	adds r3, r3, r0
	strb r3, [r1, #6]
	ldrb r3, [r1, #7]
	adds r2, r2, r3
	strb r2, [r1, #7]
	adds r4, r1, #0
_08F0B306:
	adds r0, r4, #0
	movs r1, #0
	bl HandleSelectMenuInput
	adds r2, r0, #0
	cmp r2, #0
	bge _08F0B318
	cmp r5, #0
	beq _08F0B306
_08F0B318:
	ldr r1, _08F0B348 @ =gTextX
	ldr r0, _08F0B340 @ =gTextOriginX
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08F0B34C @ =gTextDelayAfterWriteCharacterEnabled
	movs r0, #0x80
	ldrb r4, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r0, r2, #0
	add sp, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08F0B334: .4byte gUnknown_08F29FA0
_08F0B338: .4byte 0x00020001
_08F0B33C: .4byte 0x00090002
_08F0B340: .4byte gTextOriginX
_08F0B344: .4byte gTextY
_08F0B348: .4byte gTextX
_08F0B34C: .4byte gTextDelayAfterWriteCharacterEnabled

.syntax divided
