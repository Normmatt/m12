.syntax unified
.section .text
@	thumb_func_start sub_8F0CF80
@sub_8F0CF80: @ 0x08F0CF80
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r6, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	ldrb r0, [r4, #3]
	subs r1, r0, r1
	cmp r1, #0
	bge _08F0CF9A
	rsbs r1, r1, #0
_08F0CF9A:
	ldr r0, [r6]
	cmp r1, r0
	bgt _08F0CFC6
	cmp r1, r0
	bge _08F0CFAC
	movs r2, #1
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r3]
_08F0CFAC:
	str r1, [r6]
	ldrb r4, [r4, #2]
	subs r1, r4, r5
	cmp r1, #0
	bge _08F0CFB8
	rsbs r1, r1, #0
_08F0CFB8:
	ldr r0, [r3]
	cmp r1, r0
	bgt _08F0CFC6
	cmp r1, r0
	bge _08F0CFC4
	movs r2, #1
_08F0CFC4:
	str r1, [r3]
_08F0CFC6:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
