.syntax unified
.section .text
@	thumb_func_start sub_8F01220
@sub_8F01220: @ 0x08F01220
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08F01250 @ =gMapDataList
	lsrs r0, r1, #0xd
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r2, #0xe0
	lsls r2, r2, #5
	ands r2, r1
	lsrs r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	movs r1, #0xfc
	lsls r1, r1, #0x18
	ands r1, r3
	lsrs r1, r1, #0x18
	adds r0, r0, r1
	movs r1, #0xe0
	lsls r1, r1, #6
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08F01250: .4byte gMapDataList

.syntax divided
