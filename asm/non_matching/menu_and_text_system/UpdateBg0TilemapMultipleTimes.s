.syntax unified
.section .text
@	thumb_func_start UpdateBg0TilemapMultipleTimes
@UpdateBg0TilemapMultipleTimes: @ 0x08F0C840
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08F0C862
	ldr r6, _08F0C868 @ =gKeysDown
_08F0C84C:
	ldrh r4, [r6]
	bl UpdateBg0Tilemap
	ldrh r0, [r6]
	orrs r4, r0
	strh r4, [r6]
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08F0C84C
_08F0C862:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F0C868: .4byte gKeysDown

.syntax divided
