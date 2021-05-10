#ifdef NDS_VERSION

/*---------------------------------------------------------------------------------

	Copyright (C) 2005
		Dave Murphy (WinterMute)

	This software is provided 'as-is', without any express or implied
	warranty.  In no event will the authors be held liable for any
	damages arising from the use of this software.

	Permission is granted to anyone to use this software for any
	purpose, including commercial applications, and to alter it and
	redistribute it freely, subject to the following restrictions:

	1.	The origin of this software must not be misrepresented; you
		must not claim that you wrote the original software. If you use
		this software in a product, an acknowledgment in the product
		documentation would be appreciated but is not required.
	2.	Altered source versions must be plainly marked as such, and
		must not be misrepresented as being the original software.
	3.	This notice may not be removed or altered from any source
		distribution.


---------------------------------------------------------------------------------*/

	.text

	.extern	IntrTable
	.code 32

	.global	IntrMainDs, __cpsr_mask
@---------------------------------------------------------------------------------
IntrMainDs:
@---------------------------------------------------------------------------------
	mov	r12, #0x4000000		@ REG_BASE

	ldr	r1, [r12, #0x208]	@ r1 = IME
	cmp	r1, #0
	bxeq	lr
	
	mov	r0, #0
	str	r0, [r12, #0x208]	@ disable IME
	mrs	r0, spsr
	stmfd	sp!, {r0-r1,r12,lr}	@ {spsr, IME, REG_BASE, lr_irq}

	add	r12, r12, #0x210
	ldmia	r12, {r1,r2}
	ands	r1, r1, r2
	ldr	r0, =__irq_flags	@ defined by linker script
	ldr	r2, =IntrTable

setflags:
	ldr	r3,[r0]
	orr	r3,r3,r1
	str	r3,[r0]

@---------------------------------------------------------------------------------
findIRQ:
@---------------------------------------------------------------------------------

    mov r2, #0
	ands r0, r1, #1
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #2
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #4
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #8
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #0x10
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #0x20
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #0x40
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #0x80
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #0x100
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #0x200
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #0x400
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #0x800
	bne jump_intr
	add r2, r2, #4
	ands r0, r1, #0x1000
    bne jump_intr

@---------------------------------------------------------------------------------
no_handler:
@---------------------------------------------------------------------------------
	str	r1, [r12, #4]	@ IF Clear
	ldmfd   sp!, {r0-r1,r12,lr}	@ {spsr, IME, REG_BASE, lr_irq}
	str	r1, [r12, #0x208]	@ restore REG_IME
	mov	pc,lr

@---------------------------------------------------------------------------------
jump_intr:
@---------------------------------------------------------------------------------
    ldr	r1, =IntrTable
    add r2, r2, r1
	ldr	r1, [r2]		@ user IRQ handler address
	cmp	r1, #0
	bne	got_handler
	mov	r1, r0
	b	no_handler
@---------------------------------------------------------------------------------
got_handler:
@---------------------------------------------------------------------------------

	str	r0, [r12, #4]	@ IF Clear

	mrs	r2, cpsr
	mov	r3, r2
	bic	r3, r3, #0xdf		@ 
	orr	r3, r3, #0x1f		@  --> Enable IRQ & FIQ. Set CPU mode to System.
	msr	cpsr,r3

	
	push	{r2,lr}
	adr	lr, IntrRet
	bx	r1

@---------------------------------------------------------------------------------
IntrRet:
@---------------------------------------------------------------------------------
	mov	r12, #0x4000000		@ REG_BASE
	str	r12, [r12, #0x208]	@ disable IME
	pop	{r2,lr}

	msr	cpsr, r2

	ldmfd   sp!, {r0-r1,r12,lr}	@ {spsr, IME, REG_BASE, lr_irq}
	msr	spsr, r0		@ restore spsr
	str	r1, [r12, #0x208]	@ restore REG_IME
	mov	pc,lr

	.pool
	.end

#endif
