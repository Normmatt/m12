.syntax unified
.section .text
@	thumb_func_start HandleTextWrapping
@HandleTextWrapping: @ 0x08F0C8C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08F0C990 @ =gTextY
	ldr r1, _08F0C994 @ =gTextOriginY
	ldrb r3, [r1]
	ldr r1, _08F0C998 @ =gTextMaxLines
	ldrb r4, [r1]
	adds r2, r4, r3
	mov sl, r0
	ldrb r6, [r0]
	cmp r6, r2
	blt _08F0C942
	adds r4, r3, #0
	subs r0, r2, #1
	cmp r4, r0
	bge _08F0C93A
	ldr r7, _08F0C99C @ =gTextMaxCharsPerLine
	mov ip, r7
	mov r0, ip
	ldrb r0, [r0]
	mov sb, r0
	mov r8, r4
_08F0C8F6:
	ldr r1, _08F0C9A0 @ =gTextOriginX
	ldrb r2, [r1]
	mov r3, sb
	adds r0, r2, r3
	adds r5, r4, #1
	cmp r2, r0
	bge _08F0C92C
	lsls r0, r2, #1
	lsls r1, r5, #6
	ldr r6, _08F0C9A4 @ =gBg0TilemapBuffer
	adds r1, r1, r6
	adds r3, r0, r1
	lsls r1, r4, #6
	adds r1, r1, r6
	adds r1, r0, r1
_08F0C914:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r3, #2
	adds r1, #2
	adds r2, #1
	mov r7, ip
	ldrb r4, [r7]
	ldr r7, _08F0C9A0 @ =gTextOriginX
	ldrb r7, [r7]
	adds r0, r4, r7
	cmp r2, r0
	blt _08F0C914
_08F0C92C:
	adds r4, r5, #0
	ldr r1, _08F0C998 @ =gTextMaxLines
	ldrb r0, [r1]
	add r0, r8
	subs r0, #1
	cmp r4, r0
	blt _08F0C8F6
_08F0C93A:
	mov r2, sl
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_08F0C942:
	ldr r3, _08F0C9A0 @ =gTextOriginX
	ldr r4, _08F0C9A8 @ =gTextX
	ldrb r4, [r4]
	ldrb r6, [r3]
	cmp r4, r6
	bne _08F0C982
	ldrb r4, [r3]
	ldr r2, _08F0C99C @ =gTextMaxCharsPerLine
	ldrb r7, [r2]
	adds r0, r7, r4
	cmp r4, r0
	bge _08F0C97E
	ldr r0, _08F0C9A4 @ =gBg0TilemapBuffer
	mov r8, r0
	ldr r6, _08F0C990 @ =gTextY
	ldr r5, _08F0C9AC @ =gUnknown_030034C0
_08F0C962:
	ldrb r1, [r6]
	lsls r0, r1, #5
	adds r0, r4, r0
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r5]
	adds r1, #0x10
	strh r1, [r0]
	adds r4, #1
	ldrb r7, [r2]
	ldrb r1, [r3]
	adds r0, r7, r1
	cmp r4, r0
	blt _08F0C962
_08F0C97E:
	bl UpdateBg0Tilemap
_08F0C982:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0C990: .4byte gTextY
_08F0C994: .4byte gTextOriginY
_08F0C998: .4byte gTextMaxLines
_08F0C99C: .4byte gTextMaxCharsPerLine
_08F0C9A0: .4byte gTextOriginX
_08F0C9A4: .4byte gBg0TilemapBuffer
_08F0C9A8: .4byte gTextX
_08F0C9AC: .4byte gUnknown_030034C0

.syntax divided
