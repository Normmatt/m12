.syntax unified
.section .text
@	thumb_func_start sub_8F0AD0C
@sub_8F0AD0C: @ 0x08F0AD0C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x24
	ldr r1, _08F0ADD8 @ =gUnknown_08F29F58
	mov r0, sp
	movs r2, #8
	bl memcpy
	add r0, sp, #8
	mov r8, r0
	ldr r1, _08F0ADDC @ =gUnknown_08F29F60
	movs r2, #8
	bl memcpy
	add r6, sp, #0x10
	ldr r1, _08F0ADE0 @ =gUnknown_08F29F68
	adds r0, r6, #0
	movs r2, #8
	bl memcpy
	add r5, sp, #0x18
	ldr r1, _08F0ADE4 @ =gUnknown_08F29F70
	adds r0, r5, #0
	movs r2, #8
	bl memcpy
	ldr r0, _08F0ADE8 @ =gFont
	ldr r1, _08F0ADEC @ =0x06008000
	movs r2, #0xa0
	lsls r2, r2, #1
	bl BitUnpack
	movs r4, #0
	str r4, [sp, #0x20]
	ldr r0, _08F0ADF0 @ =0x040000D4
	add r1, sp, #0x20
	str r1, [r0]
	ldr r1, _08F0ADF4 @ =gBg0TilemapBuffer
	str r1, [r0, #4]
	ldr r1, _08F0ADF8 @ =0x85000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	@nds stack is in dtcm by default and can't be dma'd from/to
	ldr r1, _08F0ADD8 @ =gUnknown_08F29F58  @@nds
	str r1, [r0]
	ldr r1, _08F0ADFC @ =0x050001E0
	str r1, [r0, #4]
	ldr r2, _08F0AE00 @ =0x84000002
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	@nds stack is in dtcm by default and can't be dma'd from/to
	ldr r1, _08F0ADDC @ =gUnknown_08F29F60 @@nds
	str r1, [r0]
	ldr r1, _08F0AE04 @ =0x050001C0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	@nds stack is in dtcm by default and can't be dma'd from/to
	ldr r1, _08F0ADE0 @ =gUnknown_08F29F68  @@nds
	str r1, [r0] @@nds
	ldr r1, _08F0AE08 @ =0x050001A0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	@nds stack is in dtcm by default and can't be dma'd from/to
	ldr r1, _08F0ADE4 @ =gUnknown_08F29F70  @@nds
	str r1, [r0] @@nds
	ldr r1, _08F0AE0C @ =0x05000180
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08F0AE10 @ =gUnknown_030034E8
	ldr r0, _08F0AE14 @ =gUnknown_08F27A90
	str r0, [r1]
	movs r0, #0
	movs r1, #0
	bl SetTextPosition
	movs r0, #0x20
	movs r1, #0x14
	bl SetLineMaximums
	ldr r1, _08F0AE18 @ =gUnknown_030034C0
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08F0AE1C @ =gTextDelayAfterWriteCharacter
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08F0AE20 @ =gTextDelayAfterWritePeriod
	strb r1, [r0]
	ldr r0, _08F0AE24 @ =gUnknown_030034E0
	strb r4, [r0]
	ldr r0, _08F0AE28 @ =gTextPlaySfx
	strb r4, [r0]
	ldr r0, _08F0AE2C @ =gUnknown_030034D0
	strb r4, [r0]
	ldr r0, _08F0AE30 @ =gUnknown_03003170
	strb r4, [r0]
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F0ADD8: .4byte gUnknown_08F29F58
_08F0ADDC: .4byte gUnknown_08F29F60
_08F0ADE0: .4byte gUnknown_08F29F68
_08F0ADE4: .4byte gUnknown_08F29F70
_08F0ADE8: .4byte gFont
_08F0ADEC: .4byte 0x06008000
_08F0ADF0: .4byte 0x040000D4
_08F0ADF4: .4byte gBg0TilemapBuffer
_08F0ADF8: .4byte 0x85000200
_08F0ADFC: .4byte 0x050001E0
_08F0AE00: .4byte 0x84000002
_08F0AE04: .4byte 0x050001C0
_08F0AE08: .4byte 0x050001A0
_08F0AE0C: .4byte 0x05000180
_08F0AE10: .4byte gUnknown_030034E8
_08F0AE14: .4byte gUnknown_08F27A90
_08F0AE18: .4byte gUnknown_030034C0
_08F0AE1C: .4byte gTextDelayAfterWriteCharacter
_08F0AE20: .4byte gTextDelayAfterWritePeriod
_08F0AE24: .4byte gUnknown_030034E0
_08F0AE28: .4byte gTextPlaySfx
_08F0AE2C: .4byte gUnknown_030034D0
_08F0AE30: .4byte gUnknown_03003170

.syntax divided
