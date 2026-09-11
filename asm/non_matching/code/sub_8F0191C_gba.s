.syntax unified
.section .text
@	thumb_func_start sub_8F0191C
@sub_8F0191C: @ 0x08F0191C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	movs r2, #0
	ldr r0, _08F019A4 @ =gUnknown_03003180
	ldrb r0, [r0]
	cmp r2, r0
	bge _08F01972
	ldr r1, _08F019A8 @ =gUnknown_03002240
	mov sl, r1
	mov ip, r0
	ldr r4, _08F019AC @ =gSpriteBuffer
	mov sb, r4
	ldr r0, _08F019B0 @ =gSprites
	mov r8, r0
_08F01940:
	movs r3, #0
	lsls r0, r2, #2
	add r0, sl
	ldrb r1, [r0, #3]
	adds r6, r2, #1
	ldrb r2, [r0, #2]
	cmp r3, r2
	bge _08F0196C
	adds r5, r0, #0
	lsls r0, r1, #3
	mov r1, r8
	adds r4, r0, r1
	lsls r0, r7, #3
	mov r1, sb
	adds r2, r0, r1
_08F0195E:
	ldm r4!, {r0, r1}
	stm r2!, {r0, r1}
	adds r7, #1
	adds r3, #1
	ldrb r0, [r5, #2]
	cmp r3, r0
	blt _08F0195E
_08F0196C:
	adds r2, r6, #0
	cmp r2, ip
	blt _08F01940
_08F01972:
	ldr r1, _08F019B4 @ =gUnknown_03001D34
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08F01994
	ldr r3, _08F019AC @ =gSpriteBuffer
	movs r2, #0xa0
_08F01980:
	ldrb r4, [r1]
	lsls r0, r4, #3
	adds r0, r0, r3
	strb r2, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08F01980
_08F01994:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F019A4: .4byte gUnknown_03003180
_08F019A8: .4byte gUnknown_03002240
_08F019AC: .4byte gSpriteBuffer
_08F019B0: .4byte gSprites
_08F019B4: .4byte gUnknown_03001D34

.syntax divided
