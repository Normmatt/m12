.syntax unified
.section .text

@	thumb_func_start sub_8F07058
@sub_8F07058: @ 0x08F07058
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #2
	cmp r0, #4
	bhi _08F0711A
	lsls r0, r0, #2
	ldr r1, _08F07070 @ =_08F07074
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F07070: .4byte _08F07074
_08F07074: @ jump table
	.4byte _08F07088 @ case 0
	.4byte _08F07096 @ case 1
	.4byte _08F070CE @ case 2
	.4byte _08F070F4 @ case 3
	.4byte _08F070A8 @ case 4
_08F07088:
	movs r0, #3
	movs r1, #0
	bl sub_8F07144
	movs r0, #3
	movs r1, #0
	b _08F070B4
_08F07096:
	movs r4, #2
	rsbs r4, r4, #0
	movs r0, #3
	adds r1, r4, #0
	bl sub_8F07144
	movs r0, #3
	adds r1, r4, #0
	b _08F070B4
_08F070A8:
	movs r0, #3
	movs r1, #2
	bl sub_8F07144
	movs r0, #3
	movs r1, #2
_08F070B4:
	bl sub_8F07144
	movs r4, #3
	rsbs r4, r4, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8F07144
	adds r0, r4, #0
	movs r1, #0
	bl sub_8F07144
	b _08F0713E
_08F070CE:
	movs r4, #2
	rsbs r4, r4, #0
	movs r0, #0
	adds r1, r4, #0
	bl sub_8F07144
	movs r0, #0
	adds r1, r4, #0
	bl sub_8F07144
	movs r0, #0
	adds r1, r4, #0
	bl sub_8F07144
	movs r0, #0
	adds r1, r4, #0
	bl sub_8F07144
	b _08F0713E
_08F070F4:
	movs r0, #3
	movs r1, #2
	bl sub_8F07144
	movs r0, #3
	movs r1, #2
	bl sub_8F07144
	movs r4, #3
	rsbs r4, r4, #0
	adds r0, r4, #0
	movs r1, #2
	bl sub_8F07144
	adds r0, r4, #0
	movs r1, #2
	bl sub_8F07144
	b _08F0713E
_08F0711A:
	movs r0, #1
	movs r1, #0
	bl sub_8F07144
	movs r4, #1
	rsbs r4, r4, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8F07144
	movs r0, #1
	movs r1, #0
	bl sub_8F07144
	adds r0, r4, #0
	movs r1, #0
	bl sub_8F07144
_08F0713E:
	pop {r4}
	pop {r0}
	bx r0
.syntax divided
