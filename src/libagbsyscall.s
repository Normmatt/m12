#ifdef NDS_VERSION
.include "asm/macros.inc"
#else
.include "asm/macros.inc"
#endif

.syntax unified
.section .text

	thumb_func_start CpuSet
CpuSet: @ 0x08F14E28
	svc #0xb
	bx lr

	thumb_func_start SoundBiasReset
SoundBiasReset: @ 0x08F14E2C
	movs r0, #0
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start SoundBiasSet
SoundBiasSet: @ 0x08F14E34
	movs r0, #1
	svc #0x19
	bx lr
	.align 2, 0

#ifndef NDS_VERSION
	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x08F14E3C
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
#endif

	thumb_func_start SoftResetRom
SoftResetRom: @ 0x08F14E44
	ldr r3, _08F14E58 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r3, _08F14E5C @ =gUnknown_03007FFA
	movs r2, #0
	strb r2, [r3]
	subs r3, #0xfa
	mov sp, r3
	svc #1
	svc #0
	.align 2, 0
_08F14E58: .4byte 0x04000208
_08F14E5C: .4byte gUnknown_03007FFA