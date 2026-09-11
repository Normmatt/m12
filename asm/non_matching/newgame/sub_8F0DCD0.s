.syntax unified
.section .text

@	thumb_func_start sub_8F0DCD0
@sub_8F0DCD0: @ 0x08F0DCD0
	push {r4, r5, lr}
	ldr r2, _08F0DD04 @ =0x04000054
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08F0DD08 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	movs r4, #0
	adds r5, r2, #0
_08F0DCE2:
	strh r4, [r5]
	movs r0, #2
	bl DelayByAmount
	adds r4, #1
	cmp r4, #0x10
	ble _08F0DCE2
	bl sub_8F0B040
	bl sub_8F019B8
	ldr r1, _08F0DD08 @ =0x04000050
	movs r0, #0
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F0DD04: .4byte 0x04000054
_08F0DD08: .4byte 0x04000050

.syntax divided
