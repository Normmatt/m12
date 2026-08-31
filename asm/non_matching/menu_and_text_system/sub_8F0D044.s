.syntax unified
.section .text
@	thumb_func_start sub_8F0D044
@sub_8F0D044: @ 0x08F0D044
	push {r4, r5, r6, r7, lr}
	adds r4, r2, #0
	ldr r5, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r2, #0
	ldrb r7, [r4, #2]
	subs r1, r7, r0
	cmp r1, #0
	bge _08F0D05E
	rsbs r1, r1, #0
_08F0D05E:
	ldr r0, [r3]
	cmp r1, r0
	bgt _08F0D08A
	cmp r1, r0
	bge _08F0D070
	movs r2, #1
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r5]
_08F0D070:
	str r1, [r3]
	ldrb r4, [r4, #3]
	subs r1, r4, r6
	cmp r1, #0
	bge _08F0D07C
	rsbs r1, r1, #0
_08F0D07C:
	ldr r0, [r5]
	cmp r1, r0
	bgt _08F0D08A
	cmp r1, r0
	bge _08F0D088
	movs r2, #1
_08F0D088:
	str r1, [r5]
_08F0D08A:
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.syntax divided
