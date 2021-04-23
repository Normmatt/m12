#ifdef NDS_VERSION
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	arm_func_start start
start: @ 0x08F00000
	b crt0
	.include "asm/rom_header.inc"

	arm_func_start crt0
crt0:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _08F000F8 @ =gUnknown_03007F00
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _08F000F4 @ =gUnknown_03007C00
	ldr r1, _08F001C0 @ =gUnknown_03007FFC
	add r0, pc, #0x18 @ =intr_main
	str r0, [r1]
	ldr r1, _08F001C4 @ =AgbMain
	mov lr, pc
	bx r1
_08F000F0:
	.byte 0xF2, 0xFF, 0xFF, 0xEA
_08F000F4: .4byte gUnknown_03007C00
_08F000F8: .4byte gUnknown_03007F00

	arm_func_start intr_main
intr_main: @ 0x08F000FC
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	ands r0, r1, #0x2000
_08F00110:
	bne _08F00110
	mov r2, #0
	ands r0, r1, #1
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #2
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #4
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #8
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #0x80
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _08F001AC
	add r2, r2, #4
	ands r0, r1, #0x1000
_08F001AC:
	strh r0, [r3, #2]
	ldr r1, _08F001C8 @ =IntrTable
	add r1, r1, r2
	ldr r0, [r1]
	bx r0
	.align 2, 0
_08F001C0: .4byte gUnknown_03007FFC
#ifdef NDS_VERSION
_08F001C4: .4byte NdsMain
#else
_08F001C4: .4byte AgbMain
#endif
_08F001C8: .4byte IntrTable
