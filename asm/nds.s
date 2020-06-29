#ifdef NDS_VERSION
#include "macros.inc"

.syntax unified
.section .text

    arm_func_start NdsMain
NdsMain:
    mrc	p15, 0, r0, c1, c0, 0
	bic r0, #0x4
	mcr	p15, 0, r0, c1, c0, 0
    
    ldr r0, =AgbMain+1
    bx r0
    
    .pool

	thumb_func_start DrawBg2Tilemap2
DrawBg2Tilemap2: @ 0x08F01494
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08F0151C @ =gUnknown_03000000+0x788
	ldrh r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #4]
	ldr r0, _08F01520 @ =gUnknown_03000000+0x1508
	ldrh r6, [r0]
	ldr r0, _08F01524 @ =gUnknown_03000000+0x848
	strb r2, [r0]
	movs r1, #0
_08F014BE:
	ldr r0, _08F0151C @ =gUnknown_03000000+0x788
	ldrh r5, [r0]
    movs r4, #0x80
    lsls r4, r4, #3 @1024
    adds r5, r5, r4
	adds r4, r6, #0
	adds r4, #0x40
	str r4, [sp, #0xc]
	adds r1, #0x10
	str r1, [sp, #0x10]
	movs r0, #0xf0
	str r0, [sp]
	ldr r2, [sp, #4]
	lsls r1, r2, #1
	adds r0, r1, #0
	adds r0, #0x40
	ldr r3, _08F01528 @ =gBg2TilemapBuffer2
	adds r0, r0, r3
	mov sb, r0
	adds r1, r1, r3
	mov r8, r1
_08F014E2:
	adds r0, r5, #0
	ldr r4, [sp, #8]
	eors r0, r4
	str r5, [sp, #8]
	movs r1, #0xff
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08F01588
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8F01220
	movs r1, #0x1f
	ldr r2, _08F0152C @ =gUnknown_03000000+0x7F8
	ldrb r0, [r0]
	ands r1, r0
	ldrb r2, [r2]
	cmp r1, r2
	beq _08F01538
	ldr r0, _08F01524 @ =gUnknown_03000000+0x848
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08F01530 @ =gUnknown_03000000+0x7B4
	ldrb r0, [r0]
	mov sl, r0
	ldr r2, _08F01534 @ =gUnknown_03000000+0x820
	b _08F01560
	.align 2, 0
_08F0151C: .4byte gUnknown_03000000+0x788
_08F01520: .4byte gUnknown_03000000+0x1508
_08F01524: .4byte gUnknown_03000000+0x848
_08F01528: .4byte gBg2TilemapBuffer2
_08F0152C: .4byte gUnknown_03000000+0x7F8
_08F01530: .4byte gUnknown_03000000+0x7B4
_08F01534: .4byte gUnknown_03000000+0x820
_08F01538:
	ldr r0, _08F01578 @ =gUnknown_03000000+0xC68
	ldrb r0, [r0]
	mov sl, r0
	lsrs r0, r6, #0xd
	lsls r0, r0, #2
	ldr r2, _08F0157C @ =gUnknown_08F6451C
	adds r0, r0, r2
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r2, r3, #0
	adds r1, r6, #0
	ands r1, r2
	ldr r2, [r0]
	adds r2, r2, r1
	adds r0, r5, #0
	movs r4, #0xff
	lsls r4, r4, #8
	ands r0, r4
	lsrs r0, r0, #8
	adds r2, r2, r0
_08F01560:
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F01584
	movs r0, #0x3f
	ands r0, r1
	ldr r1, _08F01580 @ =gUnknown_03000000+0x3190
	adds r0, r0, r1
	ldrb r0, [r0]
	mov ip, r0
	b _08F01588
	.align 2, 0
_08F01578: .4byte gUnknown_03000000+0xC68
_08F0157C: .4byte gUnknown_08F6451C
_08F01580: .4byte gUnknown_03000000+0x3190
_08F01584:
	ldrb r2, [r2]
	mov ip, r2
_08F01588:
	movs r0, #0x40
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08F0159A
	mov r2, sl
	b _08F0159E
_08F0159A:
	ldr r0, _08F015F8 @ =gUnknown_03000000+0x810
	ldrb r2, [r0]
_08F0159E:
	asrs r1, r2, #2
	lsls r1, r1, #2
	ldr r4, _08F015FC @ =gUnknown_08F6451C
	adds r1, r1, r4
	movs r0, #3
	ands r0, r2
	lsls r0, r0, #0xa
	ldr r1, [r1]
	adds r1, r1, r0
	mov r0, ip
	movs r4, #0x3f
	ands r0, r4
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r6, #0
	movs r4, #0xc0
	ands r0, r4
	lsrs r0, r0, #4
	adds r1, r1, r0
	adds r0, r5, #0
	ands r0, r4
	lsrs r0, r0, #6
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r4, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	movs r0, #0xc0
	ldrb r1, [r1]
	ands r0, r1
	lsls r7, r0, #6
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	ldr r1, _08F015FC @ =gUnknown_08F6451C
	cmp r0, #0
	beq _08F01604
	movs r0, #0x40
	eors r3, r0
	cmp r3, #0
	beq _08F01600
	mov r2, sl
	b _08F01604
	.align 2, 0
_08F015F8: .4byte gUnknown_03000000+0x810
_08F015FC: .4byte gUnknown_08F6451C
_08F01600:
	ldr r0, _08F016D0 @ =gUnknown_03000000+0x810
	ldrb r2, [r0]
_08F01604:
	asrs r0, r2, #2
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #3
	ands r2, r1
	lsls r2, r2, #9
	ldr r1, [r0]
	adds r1, r1, r2
	movs r0, #0x7f
	ldrb r4, [r4]
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r3, r4
	adds r2, r7, r2
	movs r0, #0x3f
	ldrb r3, [r1]
	ands r0, r3
	adds r0, r0, r2
	mov r4, r8
	strh r0, [r4]
	movs r0, #0x3f
	ldrb r3, [r1, #1]
	ands r0, r3
	adds r0, r0, r2
	strh r0, [r4, #2]
	movs r0, #0x3f
	ldrb r4, [r1, #2]
	ands r0, r4
	adds r0, r0, r2
	mov r3, sb
	strh r0, [r3]
	movs r0, #0x3f
	ldrb r1, [r1, #3]
	ands r0, r1
	adds r0, r0, r2
	strh r0, [r3, #2]
	movs r4, #4
	add sb, r4
	add r8, r4
	ldr r0, [sp, #4]
	adds r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [sp]
	subs r1, #0x10
	str r1, [sp]
	cmp r1, #0
	blt _08F01678
	b _08F014E2
_08F01678:
	ldr r2, [sp, #4]
	adds r2, #0x20
	str r2, [sp, #4]
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0x10]
	@cmp r1, #0xab
	cmp r1, #0xfb @@nds
	bgt _08F0168C
	b _08F014BE
_08F0168C:
	ldr r0, _08F016D4 @ =gUnknown_03000000+0x848
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F016C0
	ldr r2, _08F016D8 @ =gUnknown_03000000+0xC68
	ldr r0, _08F016DC @ =gUnknown_03000000+0x7B4
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _08F016C0
	cmp r0, #0x1e
	beq _08F016C0
	ldr r0, _08F016E0 @ =gUnknown_03000000+0x7F8
	ldrb r0, [r0]
	cmp r0, #8
	beq _08F016C0
	strb r1, [r2]
	ldr r1, _08F016E4 @ =gUnknown_08F6449C
	ldrb r2, [r2]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08F016E8 @ =0x0600C800
	movs r2, #0x40
	bl sub_8F00DBC
_08F016C0:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F016D0: .4byte gUnknown_03000000+0x810
_08F016D4: .4byte gUnknown_03000000+0x848
_08F016D8: .4byte gUnknown_03000000+0xC68
_08F016DC: .4byte gUnknown_03000000+0x7B4
_08F016E0: .4byte gUnknown_03000000+0x7F8
_08F016E4: .4byte gUnknown_08F6449C
_08F016E8: .4byte 0x0600C800

#endif