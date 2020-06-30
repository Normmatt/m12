#ifdef NDS_VERSION
#include "macros.inc"
#else
.include "asm/macros.inc"
#endif

.syntax unified
.section .text

	thumb_func_start ReadSram_Core
ReadSram_Core:
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _08F14E7C
	movs r2, #1
	rsbs r2, r2, #0
_08F14E6E:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _08F14E6E
_08F14E7C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ReadSram
ReadSram: @ 0x08F14E84
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _08F14EB0 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08F14EB4 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08F14EB8 @ =ReadSram_Core+1
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _08F14EBC @ =ReadSram
	ldr r1, _08F14EB8 @ =ReadSram_Core+1
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08F14ECC
	.align 2, 0
_08F14EB0: .4byte 0x04000204
_08F14EB4: .4byte 0x0000FFFC
_08F14EB8: .4byte ReadSram_Core+1
_08F14EBC: .4byte ReadSram
_08F14EC0:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08F14ECC:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08F14EC0
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0x80
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start WriteSram
WriteSram: @ 0x08F14EE8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _08F14F20 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08F14F24 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08F14F18
	adds r1, r0, #0
_08F14F0A:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _08F14F0A
_08F14F18:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F14F20: .4byte 0x04000204
_08F14F24: .4byte 0x0000FFFC

	thumb_func_start VerifySram_Core
VerifySram_Core:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _08F14F4E
	movs r2, #1
	rsbs r2, r2, #0
_08F14F38:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _08F14F48
	subs r0, r3, #1
	b _08F14F50
_08F14F48:
	subs r4, #1
	cmp r4, r2
	bne _08F14F38
_08F14F4E:
	movs r0, #0
_08F14F50:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start VerifySram
VerifySram: @ 0x08F14F58
	push {r4, r5, r6, lr}
	sub sp, #0xc0
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _08F14F84 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08F14F88 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08F14F8C @ =VerifySram_Core+1
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _08F14F90 @ =VerifySram
	ldr r1, _08F14F8C @ =VerifySram_Core+1
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08F14FA0
	.align 2, 0
_08F14F84: .4byte 0x04000204
_08F14F88: .4byte 0x0000FFFC
_08F14F8C: .4byte VerifySram_Core+1
_08F14F90: .4byte VerifySram
_08F14F94:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08F14FA0:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08F14F94
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0xc0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start WriteSramEx
WriteSramEx: @ 0x08F14FBC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r7, #0
	b _08F14FCE
_08F14FC8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08F14FCE:
	cmp r7, #2
	bhi _08F14FEC
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl WriteSram
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl VerifySram
	adds r3, r0, #0
	cmp r3, #0
	bne _08F14FC8
_08F14FEC:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
