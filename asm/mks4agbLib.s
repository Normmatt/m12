#ifdef NDS_VERSION
#include "macros.inc"
#else
.include "asm/macros.inc"
#endif

.syntax unified
.section .text

	thumb_func_start umul3232H32
umul3232H32: @ 0x08F12C74
	add r2, pc, #0x0 @ =sub_08F12C78
	bx r2

	arm_func_start sub_08F12C78
sub_08F12C78: @ 0x08F12C78
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x08F12C84
	ldr r0, _08F12CF0 @ =SOUND_AREA_ADR
	ldr r0, [r0]
	ldr r2, _08F12CF4 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _08F12C92
	bx lr
_08F12C92:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _08F12CB6
	ldr r2, _08F12CFC @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08F12CB4
	adds r2, #0xe4
_08F12CB4:
	adds r1, r1, r2
_08F12CB6:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08F12CC6
	ldr r0, [r0, #0x24]
	bl .call_r3
	ldr r0, [sp, #0x18]
_08F12CC6:
	ldr r3, [r0, #0x28]
	bl .call_r3
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08F12D00 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08F12CE6
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08F12CE6:
	str r5, [sp, #8]
	ldr r6, _08F12D04 @ =0x00000630
	ldr r3, _08F12CF8 @ =gUnknown_03000379
	bx r3
	.align 2, 0
_08F12CF0: .4byte SOUND_AREA_ADR
_08F12CF4: .4byte 0x68736D53
_08F12CF8: .4byte gUnknown_03000379
_08F12CFC: .4byte 0x04000006
_08F12D00: .4byte 0x00000350
_08F12D04: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x08F12D08
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_08F12D68
	add r1, pc, #0x4 @ =sub_08F12D14
	bx r1
	.align 2, 0

	arm_func_start sub_08F12D14
sub_08F12D14: @ 0x08F12D14
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_08F12D24:
	ldrsb r0, [r5, r6]
	ldrsb r1, [r5]
	add r0, r0, r1
	ldrsb r1, [r7, r6]
	add r0, r0, r1
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #9
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5, r6]
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _08F12D24
	add r0, pc, #0x2F @ =sub_08F12D96
	bx r0

	thumb_func_start sub_08F12D68
sub_08F12D68: @ 0x08F12D68
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _08F12D76
	stm r5!, {r0}
	stm r6!, {r0}
_08F12D76:
	lsrs r1, r1, #1
	blo _08F12D82
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_08F12D82:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _08F12D82

	non_word_aligned_thumb_func_start sub_08F12D96
sub_08F12D96: @ 0x08F12D96
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_08F12DA0:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08F12DC0
	ldr r1, _08F12DBC @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08F12DB4
	adds r1, #0xe4
_08F12DB4:
	cmp r1, r0
	blo _08F12DC0
	b _08F13092
	.align 2, 0
_08F12DBC: .4byte 0x04000006
_08F12DC0:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _08F12DCA
	b sub_08F13088
_08F12DCA:
	movs r0, #0x80
	tst r0, r6
	beq _08F12DFA
	movs r0, #0x40
	tst r0, r6
	bne _08F12E0A
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _08F12E52
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _08F12E52
_08F12DFA:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _08F12E10
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _08F12E60
_08F12E0A:
	movs r0, #0
	strb r0, [r4]
	b sub_08F13088
_08F12E10:
	movs r0, #0x40
	tst r0, r6
	beq _08F12E30
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _08F12E60
_08F12E22:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _08F12E0A
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _08F12E60
_08F12E30:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _08F12E4E
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _08F12E60
	adds r5, r0, #0
	beq _08F12E22
	subs r6, #1
	strb r6, [r4]
	b _08F12E60
_08F12E4E:
	cmp r2, #3
	bne _08F12E60
_08F12E52:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _08F12E60
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_08F12E60:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xb]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _08F12E94
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_08F12E94:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_08F12EA0
	bx r0
	.align 2, 0

	arm_func_start sub_08F12EA0
sub_08F12EA0: @ 0x08F12EA0
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _08F12FE0
_08F12EC0:
	cmp r2, #4
	ble _08F12F30
	subs r2, r2, r8
	movgt lr, #0
	bgt _08F12EEC
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_08F12EEC:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08F12EF4:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _08F12EF4
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08F12EEC
	adds r8, r8, lr
	beq _08F13074
_08F12F30:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08F12F38:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _08F12FA8
_08F12F5C:
	adds r5, r5, #0x40000000
	blo _08F12F38
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08F12EC0
	b _08F13074
_08F12F78:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08F12F9C
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_08F12F8C:
	adds r2, r0, r2
	bgt _08F13044
	sub sb, sb, r0
	b _08F12F8C
_08F12F9C:
	pop {r4, ip}
	mov r2, #0
	b _08F12FB8
_08F12FA8:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _08F12F5C
_08F12FB8:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _08F1307C
_08F12FE0:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08F12FFC:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08F13004:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	mul ip, fp, sb
	bic ip, ip, #0xff0000
	add r7, ip, r7, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _08F13050
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _08F12F78
	subs sb, sb, #1
	addeq r0, r0, r1
_08F13044:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08F13050:
	adds r5, r5, #0x40000000
	blo _08F13004
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08F12FFC
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_08F13074:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_08F1307C:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_08F13088
	bx r0

	thumb_func_start sub_08F13088
sub_08F13088: @ 0x08F13088
	ldr r0, [sp, #4]
	subs r0, #1
	ble _08F13092
	adds r4, #0x40
	b _08F12DA0
_08F13092:
	ldr r0, [sp, #0x18]
	ldr r3, _08F130A8 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start .call_r3
.call_r3: @ 0x08F130A6
	bx r3
	.align 2, 0
_08F130A8: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x08F130AC
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start ClearChain
ClearChain: @ 0x08F130C4
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08F130E2
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _08F130D6
	str r1, [r2, #0x34]
	b _08F130D8
_08F130D6:
	str r1, [r3, #0x20]
_08F130D8:
	cmp r1, #0
	beq _08F130DE
	str r2, [r1, #0x30]
_08F130DE:
	movs r1, #0
	str r1, [r0, #0x2c]
_08F130E2:
	bx lr
    
 	thumb_func_start ply_fine   
ply_fine:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08F13108
_08F130EE:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08F130FC
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_08F130FC:
	adds r0, r4, #0
	bl ClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08F130EE
_08F13108:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlyJmpTblCopy
MPlyJmpTblCopy: @ 0x08F13114
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08F13144 @ =MPlyJmpTbl
_08F1311A:
	ldr r3, [r2]
	bl _08F1312E
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _08F1311A
	bx ip
	.align 2, 0

	thumb_func_start ldrb_r3_r2
ldrb_r3_r2: @ 0x08F1312C
	ldrb r3, [r2]
_08F1312E:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08F13140
	ldr r0, _08F13144 @ =MPlyJmpTbl
	cmp r2, r0
	blo _08F1313E
	lsrs r0, r2, #0xe
	beq _08F13140
_08F1313E:
	movs r3, #0
_08F13140:
	pop {r0}
	bx lr
	.align 2, 0
_08F13144: .4byte MPlyJmpTbl

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x08F13148
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start ld_r3_r2_i_sub
ld_r3_r2_i_sub: @ 0x08F1314A
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _08F1312E
	.align 2, 0
    
    thumb_func_start ply_goto
ply_goto:
	push {lr}
ply_goto_01:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x08F13174
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _08F1318C
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b ply_goto
_08F1318C:
	b ply_fine
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x08F13190
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08F131A2
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08F131A2:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x08F131A4
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08F131B4
	adds r2, #1
	str r2, [r1, #0x40]
	b ply_goto_01
_08F131B4:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _08F131C6
	b ply_goto_01
_08F131C6:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x08F131D4
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x08F131E0
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x08F131F4
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x08F13208
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _08F1312E
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _08F1312E
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _08F1312E
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x08F13238
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x08F1324C
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x08F13260
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x08F13274
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x08F13288
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x08F13294
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _08F132AA
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_08F132AA:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x08F132AC
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x08F132C0
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08F132D4 @ =0x04000060
	adds r0, r0, r3
	bl ld_r3_r2_i_sub
	strb r3, [r0]
	bx ip
	.align 2, 0
_08F132D4: .4byte 0x04000060

	thumb_func_start m4aSoundVSync
m4aSoundVSync: @ 0x08F132D8
	ldr r0, _08F13584 @ =SOUND_AREA_ADR
	ldr r0, [r0]
	ldr r2, _08F13588 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _08F13318
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _08F13318
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08F1331C @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08F132FE
	ldr r1, _08F13320 @ =0x84400004
	str r1, [r2, #8]
_08F132FE:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _08F13308
	ldr r1, _08F13320 @ =0x84400004
	str r1, [r2, #0x14]
_08F13308:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_08F13318:
	bx lr
	.align 2, 0
_08F1331C: .4byte 0x040000BC
_08F13320: .4byte 0x84400004

	thumb_func_start MPlayMain
MPlayMain: @ 0x08F13324
	ldr r2, _08F13588 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _08F1332E
	bx lr
_08F1332E:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08F13340
	ldr r0, [r0, #0x3c]
	bl .call_r3_rev
_08F13340:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08F13358
	b _08F1356C
_08F13358:
	ldr r0, _08F13584 @ =SOUND_AREA_ADR
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody_rev01
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08F1336C
	b _08F1356C
_08F1336C:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _08F134BC
_08F13374:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_08F1337C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _08F13386
	b _08F13498
_08F13386:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08F133BA
_08F13392:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08F133AE
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08F133B4
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _08F133B4
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _08F133B4
_08F133AE:
	adds r0, r4, #0
	bl ClearChain_rev
_08F133B4:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08F13392
_08F133BA:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _08F13438
	adds r0, r5, #0
	bl Clear64byte_rev
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _08F13438
_08F133E0:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _08F133EC
	ldrb r1, [r5, #7]
	b _08F133F6
_08F133EC:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _08F133F6
	strb r1, [r5, #7]
_08F133F6:
	cmp r1, #0xcf
	blo _08F1340C
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl .call_r3_rev
	b _08F13438
_08F1340C:
	cmp r1, #0xb0
	bls _08F1342E
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl .call_r3_rev
	ldrb r0, [r5]
	cmp r0, #0
	beq _08F13494
	b _08F13438
_08F1342E:
	ldr r0, _08F13580 @ =clock_tbl_rev01
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_08F13438:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08F133E0
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _08F13494
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _08F13494
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08F1345A
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _08F13494
_08F1345A:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _08F1346E
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08F13472
_08F1346E:
	movs r0, #0x80
	subs r2, r0, r1
_08F13472:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _08F13494
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _08F1348E
	movs r1, #0xc
	b _08F13490
_08F1348E:
	movs r1, #3
_08F13490:
	orrs r0, r1
	strb r0, [r5]
_08F13494:
	mov r3, sl
	mov r4, fp
_08F13498:
	subs r6, #1
	ble _08F134A4
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _08F1337C
_08F134A4:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _08F134B6
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _08F1356C
_08F134B6:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_08F134BC:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _08F134C4
	b _08F13374
_08F134C4:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_08F134C8:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08F13562
	movs r1, #0xf
	tst r1, r0
	beq _08F13562
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08F13558
_08F134E6:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _08F134F6
	adds r0, r4, #0
	bl ClearChain_rev
	b _08F13552
_08F134F6:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08F13514
	bl ChnVolSetAsm
	cmp r6, #0
	beq _08F13514
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08F13514:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08F13552
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _08F13528
	movs r2, #0
_08F13528:
	cmp r6, #0
	beq _08F13546
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl .call_r3_rev
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08F13552
_08F13546:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKey2fr
	str r0, [r4, #0x20]
_08F13552:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08F134E6
_08F13558:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08F13562:
	subs r2, #1
	ble _08F1356C
	movs r0, #0x50
	adds r5, r5, r0
	bgt _08F134C8
_08F1356C:
	ldr r0, _08F13588 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start .call_r3_rev
.call_r3_rev: @ 0x08F1357C
	bx r3
	.align 2, 0
_08F13580: .4byte clock_tbl_rev01
_08F13584: .4byte SOUND_AREA_ADR
_08F13588: .4byte 0x68736D53

	thumb_func_start TrackStop_rev01
TrackStop_rev01: @ 0x08F1358C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08F135C4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08F135C2
	movs r6, #0
_08F135A0:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08F135BA
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08F135B8
	ldr r3, _08F135CC @ =SOUND_AREA_ADR
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl .call_r3_rev
_08F135B8:
	strb r6, [r4]
_08F135BA:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08F135A0
_08F135C2:
	str r4, [r5, #0x20]
_08F135C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F135CC: .4byte SOUND_AREA_ADR

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x08F135D0
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08F135E8
	movs r0, #0xff
_08F135E8:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08F135FC
	movs r0, #0xff
_08F135FC:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note_rev01
ply_note_rev01: @ 0x08F13600
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08F137F8 @ =SOUND_AREA_ADR
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _08F137FC @ =clock_tbl_rev01
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08F13646
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08F13644
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08F13644
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08F13644:
	str r3, [r5, #0x40]
_08F13646:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08F13698
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _08F13666
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08F13668
_08F13666:
	adds r0, r3, #0
_08F13668:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _08F13680
	b _08F137E6
_08F13680:
	movs r0, #0x80
	tst r0, r2
	beq _08F1369C
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08F13694
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08F13694:
	ldrb r3, [r6, #1]
	b _08F1369C
_08F13698:
	mov sb, r4
	ldrb r3, [r5, #5]
_08F1369C:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _08F136AC
	movs r0, #0xff
_08F136AC:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _08F136EC
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08F136C4
	b _08F137E6
_08F136C4:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08F13740
	movs r0, #0x40
	tst r0, r1
	bne _08F13740
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08F13740
	beq _08F136E4
	b _08F137E6
_08F136E4:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08F13740
	b _08F137E6
_08F136EC:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_08F136FA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08F13740
	movs r0, #0x40
	tst r0, r1
	beq _08F13714
	cmp r2, #0
	bne _08F13718
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08F13732
_08F13714:
	cmp r2, #0
	bne _08F13734
_08F13718:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08F13724
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08F13732
_08F13724:
	bhi _08F13734
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08F13730
	adds r7, r0, #0
	b _08F13732
_08F13730:
	blo _08F13734
_08F13732:
	mov r8, r4
_08F13734:
	adds r4, #0x40
	subs r3, #1
	bgt _08F136FA
	mov r4, r8
	cmp r4, #0
	beq _08F137E6
_08F13740:
	adds r0, r4, #0
	bl ClearChain_rev
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08F13754
	str r4, [r3, #0x30]
_08F13754:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _08F13766
	adds r1, r5, #0
	bl clear_modM
_08F13766:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08F137A0
	movs r3, #0
_08F137A0:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _08F137CE
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _08F137BA
	movs r0, #0x70
	tst r0, r1
	bne _08F137BC
_08F137BA:
	movs r1, #8
_08F137BC:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl .call_r3_rev
	b _08F137D8
_08F137CE:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKey2fr
_08F137D8:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08F137E6:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08F137F8: .4byte SOUND_AREA_ADR
_08F137FC: .4byte clock_tbl_rev01

	thumb_func_start ply_endtie_rev01
ply_endtie_rev01: @ 0x08F13800
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _08F13812
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _08F13814
_08F13812:
	ldrb r3, [r1, #5]
_08F13814:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _08F1383C
	movs r4, #0x83
	movs r5, #0x40
_08F1381E:
	ldrb r2, [r1]
	tst r2, r4
	beq _08F13836
	tst r2, r5
	bne _08F13836
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _08F13836
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _08F1383C
_08F13836:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _08F1381E
_08F1383C:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x08F13840
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08F13850
	movs r2, #0xc
	b _08F13852
_08F13850:
	movs r2, #3
_08F13852:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_rev
ld_r3_tp_adr_i_rev: @ 0x08F1385C
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start ld_r3_r2_i_sub_rev
ld_r3_r2_i_sub_rev: @ 0x08F1385E
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos_rev01
ply_lfos_rev01: @ 0x08F13868
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08F13878
	bl clear_modM
_08F13878:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod_rev01
ply_mod_rev01: @ 0x08F1387C
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _08F1388C
	bl clear_modM
_08F1388C:
	bx ip
	.align 2, 0

	thumb_func_start MidiKey2fr
MidiKey2fr: @ 0x08F13890
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _08F138A4
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_08F138A4:
	ldr r3, _08F138EC @ =ScaleTable
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08F138F0 @ =FreqTable
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F138EC: .4byte ScaleTable
_08F138F0: .4byte FreqTable

	thumb_func_start DummyFunc
DummyFunc: @ 0x08F138F4
	bx lr
	.align 2, 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x08F138F8
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _08F1390C @ =0x68736D53
	cmp r3, r0
	bne _08F1390A
	ldr r0, [r2, #4]
	ldr r1, _08F13910 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08F1390A:
	bx lr
	.align 2, 0
_08F1390C: .4byte 0x68736D53
_08F13910: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x08F13914
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08F13930 @ =0x68736D53
	cmp r3, r0
	bne _08F1392C
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_08F1392C:
	bx lr
	.align 2, 0
_08F13930: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x08F13934
	push {r4, r5, r6, lr}
	ldr r0, _08F13988 @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _08F1398C @ =SoundMainRAM_Buffer
	ldr r2, _08F13990 @ =0x04000100
	bl CpuSet
	ldr r0, _08F13994 @ =m4a_sound
	bl SoundInit_rev01
	ldr r0, _08F13998 @ =m4a_cgbchn
	bl MPlayExtender
	ldr r0, _08F1399C @ =0x0093D200
	bl SoundMode_rev01
	ldr r0, _08F139A0 @ =0x00000005
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08F13982
	ldr r5, _08F139A4 @ =gMPlayTable
	adds r6, r0, #0
_08F13966:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen_rev01
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08F139A8 @ =m4a_memacc_area
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _08F13966
_08F13982:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F13988: .4byte SoundMainRAM
_08F1398C: .4byte SoundMainRAM_Buffer
_08F13990: .4byte 0x04000100
_08F13994: .4byte m4a_sound
_08F13998: .4byte m4a_cgbchn
_08F1399C: .4byte 0x0093D200
_08F139A0: .4byte 0x00000005
_08F139A4: .4byte gMPlayTable
_08F139A8: .4byte m4a_memacc_area

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x08F139AC
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x08F139B8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08F139DC @ =gMPlayTable
	ldr r1, _08F139E0 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl MPlayStart_rev01
	pop {r0}
	bx r0
	.align 2, 0
_08F139DC: .4byte gMPlayTable
_08F139E0: .4byte gSongTable

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x08F139E4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08F13A10 @ =gMPlayTable
	ldr r1, _08F13A14 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08F13A18
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _08F13A2C
	.align 2, 0
_08F13A10: .4byte gMPlayTable
_08F13A14: .4byte gSongTable
_08F13A18:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08F13A24
	cmp r2, #0
	bge _08F13A2C
_08F13A24:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
_08F13A2C:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x08F13A30
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08F13A5C @ =gMPlayTable
	ldr r1, _08F13A60 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08F13A64
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _08F13A80
	.align 2, 0
_08F13A5C: .4byte gMPlayTable
_08F13A60: .4byte gSongTable
_08F13A64:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _08F13A76
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
	b _08F13A80
_08F13A76:
	cmp r2, #0
	bge _08F13A80
	adds r0, r1, #0
	bl MPlayContinue
_08F13A80:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x08F13A84
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08F13AB0 @ =gMPlayTable
	ldr r1, _08F13AB4 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _08F13AAA
	adds r0, r2, #0
	bl MPlayStop_rev01
_08F13AAA:
	pop {r0}
	bx r0
	.align 2, 0
_08F13AB0: .4byte gMPlayTable
_08F13AB4: .4byte gSongTable

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x08F13AB8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08F13AE4 @ =gMPlayTable
	ldr r1, _08F13AE8 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _08F13ADE
	adds r0, r2, #0
	bl MPlayContinue
_08F13ADE:
	pop {r0}
	bx r0
	.align 2, 0
_08F13AE4: .4byte gMPlayTable
_08F13AE8: .4byte gSongTable

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x08F13AEC
	push {r4, r5, lr}
	ldr r0, _08F13B10 @ =0x00000005
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08F13B0A
	ldr r5, _08F13B14 @ =gMPlayTable
	adds r4, r0, #0
_08F13AFC:
	ldr r0, [r5]
	bl MPlayStop_rev01
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08F13AFC
_08F13B0A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F13B10: .4byte 0x00000005
_08F13B14: .4byte gMPlayTable

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x08F13B18
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x08F13B24
	push {r4, r5, lr}
	ldr r0, _08F13B48 @ =0x00000005
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08F13B42
	ldr r5, _08F13B4C @ =gMPlayTable
	adds r4, r0, #0
_08F13B34:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08F13B34
_08F13B42:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F13B48: .4byte 0x00000005
_08F13B4C: .4byte gMPlayTable

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x08F13B50
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutPause
m4aMPlayFadeOutPause: @ 0x08F13B60
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08F13B78 @ =0x68736D53
	cmp r3, r0
	bne _08F13B76
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _08F13B7C @ =0x00000101
	strh r0, [r2, #0x28]
_08F13B76:
	bx lr
	.align 2, 0
_08F13B78: .4byte 0x68736D53
_08F13B7C: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeInContinue
m4aMPlayFadeInContinue: @ 0x08F13B80
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08F13BA0 @ =0x68736D53
	cmp r3, r0
	bne _08F13B9E
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _08F13BA4 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08F13B9E:
	bx lr
	.align 2, 0
_08F13BA0: .4byte 0x68736D53
_08F13BA4: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x08F13BA8
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _08F13BEA
	movs r7, #0x80
_08F13BB4:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08F13BE2
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08F13BE2
	adds r0, r4, #0
	bl Clear64byte_rev
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_08F13BE2:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08F13BB4
_08F13BEA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x08F13BF0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08F13CB8 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _08F13CBC @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08F13CC0 @ =0x04000063
#ifdef NDS_VERSION
	@TODO: implement ipc to send these gbc sound channel writes to the arm7
#else
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
#endif
	ldr r0, _08F13CC4 @ =SOUND_AREA_ADR
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08F13CC8 @ =0x68736D53
	cmp r6, r0
	bne _08F13CB0
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _08F13CCC @ =ExtMPlyJmpTbl
	ldr r0, _08F13CD0 @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _08F13CD4 @ =ply_lfos_rev01
	str r0, [r1, #0x44]
	ldr r0, _08F13CD8 @ =ply_mod_rev01
	str r0, [r1, #0x4c]
	ldr r0, _08F13CDC @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _08F13CE0 @ =ply_endtie_rev01
	str r0, [r1, #0x74]
	ldr r0, _08F13CE4 @ =SampFreqSet_rev01
	str r0, [r1, #0x78]
	ldr r0, _08F13CE8 @ =TrackStop_rev01
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _08F13CEC @ =FadeOutBody_rev01
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08F13CF0 @ =TrkVolPitSet_rev01
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08F13CF4 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _08F13CF8 @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _08F13CFC @ =MidiKey2CgbFr
	str r0, [r4, #0x30]
	ldr r0, _08F13D00 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08F13D04 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_08F13CB0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F13CB8: .4byte 0x04000084
_08F13CBC: .4byte 0x04000080
_08F13CC0: .4byte 0x04000063
_08F13CC4: .4byte SOUND_AREA_ADR
_08F13CC8: .4byte 0x68736D53
_08F13CCC: .4byte ExtMPlyJmpTbl
_08F13CD0: .4byte ply_memacc
_08F13CD4: .4byte ply_lfos_rev01
_08F13CD8: .4byte ply_mod_rev01
_08F13CDC: .4byte ply_xcmd
_08F13CE0: .4byte ply_endtie_rev01
_08F13CE4: .4byte SampFreqSet_rev01
_08F13CE8: .4byte TrackStop_rev01
_08F13CEC: .4byte FadeOutBody_rev01
_08F13CF0: .4byte TrkVolPitSet_rev01
_08F13CF4: .4byte CgbSound
_08F13CF8: .4byte CgbOscOff
_08F13CFC: .4byte MidiKey2CgbFr
_08F13D00: .4byte 0x00000000
_08F13D04: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x08F13D08
	svc #0x2a
	bx lr

	thumb_func_start ClearChain_rev
ClearChain_rev: @ 0x08F13D0C
	push {lr}
	ldr r1, _08F13D1C @ =gUnknown_03004748
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08F13D1C: .4byte gUnknown_03004748

	thumb_func_start Clear64byte_rev
Clear64byte_rev: @ 0x08F13D20
	push {lr}
	ldr r1, _08F13D30 @ =gUnknown_0300474C
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08F13D30: .4byte gUnknown_0300474C

	thumb_func_start SoundInit_rev01
SoundInit_rev01: @ 0x08F13D34
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _08F13DEC @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08F13D50
	ldr r0, _08F13DF0 @ =0x84400004
	str r0, [r1]
_08F13D50:
	ldr r1, _08F13DF4 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08F13D5E
	ldr r0, _08F13DF0 @ =0x84400004
	str r0, [r1]
_08F13D5E:
	ldr r0, _08F13DF8 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08F13DFC @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08F13E00 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08F13E04 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08F13E08 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08F13E0C @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08F13E10 @ =0x040000A4
	str r0, [r1]
	ldr r0, _08F13E14 @ =SOUND_AREA_ADR
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08F13E18 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08F13E1C @ =ply_note_rev01
	str r0, [r5, #0x38]
	ldr r0, _08F13E20 @ =DummyFunc_rev
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08F13E24 @ =ExtMPlyJmpTbl
	adds r0, r4, #0
	bl MPlyJmpTblCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampFreqSet_rev01
	ldr r0, _08F13E28 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F13DEC: .4byte 0x040000C4
_08F13DF0: .4byte 0x84400004
_08F13DF4: .4byte 0x040000D0
_08F13DF8: .4byte 0x040000C6
_08F13DFC: .4byte 0x04000084
_08F13E00: .4byte 0x0000A90E
_08F13E04: .4byte 0x04000089
_08F13E08: .4byte 0x040000BC
_08F13E0C: .4byte 0x040000A0
_08F13E10: .4byte 0x040000A4
_08F13E14: .4byte SOUND_AREA_ADR
_08F13E18: .4byte 0x050003EC
_08F13E1C: .4byte ply_note_rev01
_08F13E20: .4byte DummyFunc_rev
_08F13E24: .4byte ExtMPlyJmpTbl
_08F13E28: .4byte 0x68736D53

	thumb_func_start SampFreqSet_rev01
SampFreqSet_rev01: @ 0x08F13E2C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08F13EAC @ =SOUND_AREA_ADR
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08F13EB0 @ =pcmVBtbl_rev
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _08F13EB4 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _08F13EB8 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _08F13EBC @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08F13EC0 @ =0x04000102
	strh r6, [r0]
	ldr r4, _08F13EC4 @ =0x04000100
	ldr r0, _08F13EC8 @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl SoundVSyncOn_rev01
	ldr r1, _08F13ECC @ =0x04000006
_08F13E90:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _08F13E90
	ldr r1, _08F13ECC @ =0x04000006
_08F13E98:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _08F13E98
	ldr r1, _08F13EC0 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F13EAC: .4byte SOUND_AREA_ADR
_08F13EB0: .4byte pcmVBtbl_rev
_08F13EB4: .4byte 0x00091D1B
_08F13EB8: .4byte 0x00001388
_08F13EBC: .4byte 0x00002710
_08F13EC0: .4byte 0x04000102
_08F13EC4: .4byte 0x04000100
_08F13EC8: .4byte 0x00044940
_08F13ECC: .4byte 0x04000006

	thumb_func_start SoundMode_rev01
SoundMode_rev01: @ 0x08F13ED0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08F13F5C @ =SOUND_AREA_ADR
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08F13F60 @ =0x68736D53
	cmp r1, r0
	bne _08F13F56
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08F13EF2
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08F13EF2:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08F13F12
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_08F13F08:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _08F13F08
_08F13F12:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08F13F20
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08F13F20:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _08F13F3E
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08F13F64 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08F13F3E:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _08F13F52
	bl SoundVSyncOff_rev01
	adds r0, r4, #0
	bl SampFreqSet_rev01
_08F13F52:
	ldr r0, _08F13F60 @ =0x68736D53
	str r0, [r5]
_08F13F56:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F13F5C: .4byte SOUND_AREA_ADR
_08F13F60: .4byte 0x68736D53
_08F13F64: .4byte 0x04000089

	thumb_func_start SoundClear_rev01
SoundClear_rev01: @ 0x08F13F68
	push {r4, r5, r6, r7, lr}
	ldr r0, _08F13FB4 @ =SOUND_AREA_ADR
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _08F13FB8 @ =0x68736D53
	cmp r1, r0
	bne _08F13FAE
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_08F13F82:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _08F13F82
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _08F13FAA
	movs r5, #1
	movs r7, #0
_08F13F96:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _08F13F96
_08F13FAA:
	ldr r0, _08F13FB8 @ =0x68736D53
	str r0, [r6]
_08F13FAE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F13FB4: .4byte SOUND_AREA_ADR
_08F13FB8: .4byte 0x68736D53

	thumb_func_start SoundVSyncOff_rev01
SoundVSyncOff_rev01: @ 0x08F13FBC
	push {lr}
	sub sp, #4
	ldr r0, _08F1401C @ =SOUND_AREA_ADR
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08F14020 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _08F14014
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08F14024 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _08F13FE6
	ldr r0, _08F14028 @ =0x84400004
	str r0, [r1]
_08F13FE6:
	ldr r1, _08F1402C @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08F13FF4
	ldr r0, _08F14028 @ =0x84400004
	str r0, [r1]
_08F13FF4:
	ldr r0, _08F14030 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _08F14034 @ =0x05000318
	mov r0, sp
	bl CpuSet
_08F14014:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08F1401C: .4byte SOUND_AREA_ADR
_08F14020: .4byte 0x978C92AD
_08F14024: .4byte 0x040000C4
_08F14028: .4byte 0x84400004
_08F1402C: .4byte 0x040000D0
_08F14030: .4byte 0x040000C6
_08F14034: .4byte 0x05000318

	thumb_func_start SoundVSyncOn_rev01
SoundVSyncOn_rev01: @ 0x08F14038
	push {r4, lr}
	ldr r0, _08F14068 @ =SOUND_AREA_ADR
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08F1406C @ =0x68736D53
	cmp r3, r0
	beq _08F14060
	ldr r0, _08F14070 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_08F14060:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F14068: .4byte SOUND_AREA_ADR
_08F1406C: .4byte 0x68736D53
_08F14070: .4byte 0x040000C6

	thumb_func_start MPlayOpen_rev01
MPlayOpen_rev01: @ 0x08F14074
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _08F140D8
	cmp r4, #0x10
	bls _08F14088
	movs r4, #0x10
_08F14088:
	ldr r0, _08F140E0 @ =SOUND_AREA_ADR
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08F140E4 @ =0x68736D53
	cmp r1, r0
	bne _08F140D8
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte_rev
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _08F140BC
	movs r1, #0
_08F140AE:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _08F140AE
_08F140BC:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08F140CC
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_08F140CC:
	str r7, [r5, #0x24]
	ldr r0, _08F140E8 @ =MPlayMain
	str r0, [r5, #0x20]
	ldr r0, _08F140E4 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_08F140D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F140E0: .4byte SOUND_AREA_ADR
_08F140E4: .4byte 0x68736D53
_08F140E8: .4byte MPlayMain

	thumb_func_start MPlayStart_rev01
MPlayStart_rev01: @ 0x08F140EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _08F141CC @ =0x68736D53
	cmp r1, r0
	bne _08F141C2
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08F1412E
	ldr r0, [r5]
	cmp r0, #0
	beq _08F14118
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F14124
_08F14118:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08F1412E
	cmp r1, #0
	blt _08F1412E
_08F14124:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08F141C2
_08F1412E:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _08F1418E
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08F141AE
	mov r8, r6
_08F14162:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _08F1418E
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08F14162
_08F1418E:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08F141AE
	movs r1, #0
	mov r8, r1
_08F14198:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08F14198
_08F141AE:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _08F141BE
	ldrb r0, [r7, #3]
	bl SoundMode_rev01
_08F141BE:
	ldr r0, _08F141CC @ =0x68736D53
	str r0, [r5, #0x34]
_08F141C2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F141CC: .4byte 0x68736D53

	thumb_func_start MPlayStop_rev01
MPlayStop_rev01: @ 0x08F141D0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08F1420C @ =0x68736D53
	cmp r1, r0
	bne _08F14206
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _08F14202
_08F141F2:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop_rev01
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08F141F2
_08F14202:
	ldr r0, _08F1420C @ =0x68736D53
	str r0, [r6, #0x34]
_08F14206:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F1420C: .4byte 0x68736D53

	thumb_func_start FadeOutBody_rev01
FadeOutBody_rev01: @ 0x08F14210
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08F142D2
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08F14250 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08F142D2
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08F14254
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _08F142A6
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _08F142A6
	.align 2, 0
_08F14250: .4byte 0x0000FFFF
_08F14254:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08F142A6
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08F14286
_08F1426A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _08F1427E
	strb r0, [r4]
_08F1427E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08F1426A
_08F14286:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _08F1429A
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08F1429E
_08F1429A:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08F1429E:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08F142D2
_08F142A6:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08F142D2
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08F142B4:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08F142CA
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_08F142CA:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08F142B4
_08F142D2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet_rev01
TrkVolPitSet_rev01: @ 0x08F142D8
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08F1433C
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08F14300
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08F14300:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08F14316
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08F14316:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08F14322
	adds r1, r0, #0
	b _08F14328
_08F14322:
	cmp r1, #0x7f
	ble _08F14328
	movs r1, #0x7f
_08F14328:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_08F1433C:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08F14380
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _08F1437A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_08F1437A:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_08F14380:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKey2CgbFr
MidiKey2CgbFr: @ 0x08F1438C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _08F143C4
	cmp r5, #0x14
	bhi _08F143A8
	movs r5, #0
	b _08F143B6
_08F143A8:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08F143B6
	movs r5, #0x3b
_08F143B6:
	ldr r0, _08F143C0 @ =NoiseTable
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08F14426
	.align 2, 0
_08F143C0: .4byte NoiseTable
_08F143C4:
	cmp r5, #0x23
	bhi _08F143D0
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _08F143E2
_08F143D0:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _08F143E2
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_08F143E2:
	ldr r3, _08F1442C @ =CgbScTable
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08F14430 @ =CgbFrTable
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_08F14426:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08F1442C: .4byte CgbScTable
_08F14430: .4byte CgbFrTable

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x08F14434
#ifdef NDS_VERSION
	bx lr @@nds - Stub entire function as its useless
#endif
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08F1445C
	cmp r0, #2
	bgt _08F14448
	cmp r0, #1
	beq _08F1444E
	b _08F14470
_08F14448:
	cmp r1, #3
	beq _08F14464
	b _08F14470
_08F1444E:
	ldr r1, _08F14458 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _08F14478
	.align 2, 0
_08F14458: .4byte 0x04000063
_08F1445C:
	ldr r1, _08F14460 @ =0x04000069
	b _08F14472
	.align 2, 0
_08F14460: .4byte 0x04000069
_08F14464:
	ldr r1, _08F1446C @ =0x04000070
	movs r0, #0
	b _08F1447A
	.align 2, 0
_08F1446C: .4byte 0x04000070
_08F14470:
	ldr r1, _08F14480 @ =0x04000079
_08F14472:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_08F14478:
	movs r0, #0x80
_08F1447A:
	strb r0, [r1]
	bx lr
	.align 2, 0
_08F14480: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x08F14484
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _08F144A4
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _08F144B0
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _08F144BE
_08F144A4:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _08F144B0
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _08F144BE
_08F144B0:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _08F144CE
_08F144BE:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _08F144D0
	movs r0, #0xf
_08F144CE:
	strb r0, [r1, #0xa]
_08F144D0:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CgbSound
CgbSound: @ 0x08F144EC
#ifdef NDS_VERSION
	bx lr @@nds - Stub entire function as its useless
#endif
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08F1450C @ =SOUND_AREA_ADR
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08F14510
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _08F14516
	.align 2, 0
_08F1450C: .4byte SOUND_AREA_ADR
_08F14510:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_08F14516:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_08F1451C:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08F14532
	b _08F1491C
_08F14532:
	cmp r6, #2
	beq _08F14564
	cmp r6, #2
	bgt _08F14540
	cmp r6, #1
	beq _08F14546
	b _08F1459C
_08F14540:
	cmp r6, #3
	beq _08F1457C
	b _08F1459C
_08F14546:
	ldr r0, _08F14558 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _08F1455C @ =0x04000062
	ldr r2, _08F14560 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08F145AC
	.align 2, 0
_08F14558: .4byte 0x04000060
_08F1455C: .4byte 0x04000062
_08F14560: .4byte 0x04000063
_08F14564:
	ldr r0, _08F14570 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _08F14574 @ =0x04000068
	ldr r2, _08F14578 @ =0x04000069
	b _08F145A4
	.align 2, 0
_08F14570: .4byte 0x04000061
_08F14574: .4byte 0x04000068
_08F14578: .4byte 0x04000069
_08F1457C:
	ldr r0, _08F14590 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _08F14594 @ =0x04000072
	ldr r2, _08F14598 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08F145AC
	.align 2, 0
_08F14590: .4byte 0x04000070
_08F14594: .4byte 0x04000072
_08F14598: .4byte 0x04000073
_08F1459C:
	ldr r0, _08F145FC @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _08F14600 @ =0x04000078
	ldr r2, _08F14604 @ =0x04000079
_08F145A4:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_08F145AC:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08F146A2
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _08F146C6
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08F14614
	cmp r6, #2
	bgt _08F14608
	cmp r6, #1
	beq _08F1460E
	b _08F14668
	.align 2, 0
_08F145FC: .4byte 0x04000071
_08F14600: .4byte 0x04000078
_08F14604: .4byte 0x04000079
_08F14608:
	cmp r6, #3
	beq _08F14620
	b _08F14668
_08F1460E:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08F14614:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _08F14674
_08F14620:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _08F14648
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _08F1465C @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_08F14648:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08F14660
	movs r0, #0xc0
	b _08F14682
	.align 2, 0
_08F1465C: .4byte 0x04000090
_08F14660:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _08F14684
_08F14668:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_08F14674:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08F14682
	movs r0, #0x40
_08F14682:
	strb r0, [r4, #0x1a]
_08F14684:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _08F1469E
	b _08F147DA
_08F1469E:
	strb r2, [r4, #9]
	b _08F14808
_08F146A2:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08F146D4
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _08F146C6
	b _08F1481A
_08F146C6:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _08F14918
_08F146D4:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08F14714
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08F14714
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08F14746
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08F14808
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08F14808
_08F14714:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08F14808
	cmp r6, #3
	bne _08F14726
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08F14726:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _08F1477A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08F14776
_08F14746:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08F146C6
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08F1481A
	movs r2, #8
	mov r8, r2
	b _08F1481A
_08F14776:
	ldrb r0, [r4, #7]
	b _08F14806
_08F1477A:
	cmp r0, #1
	bne _08F14786
_08F1477E:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08F14806
_08F14786:
	cmp r0, #2
	bne _08F147CA
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _08F147C6
_08F1479E:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08F147AE
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _08F14746
_08F147AE:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08F1477E
	movs r0, #8
	mov r8, r0
	b _08F1477E
_08F147C6:
	ldrb r0, [r4, #5]
	b _08F14806
_08F147CA:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08F14804
_08F147DA:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08F1479E
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08F14808
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08F14808
_08F14804:
	ldrb r0, [r4, #4]
_08F14806:
	strb r0, [r4, #0xb]
_08F14808:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _08F1481A
	subs r0, #1
	str r0, [sp]
	b _08F14714
_08F1481A:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _08F14892
	cmp r6, #3
	bgt _08F1485A
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _08F1485A
	ldr r0, _08F14844 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08F1484C
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08F14848 @ =0x000007FC
	b _08F14856
	.align 2, 0
_08F14844: .4byte 0x04000089
_08F14848: .4byte 0x000007FC
_08F1484C:
	cmp r0, #0x7f
	bgt _08F1485A
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _08F14868 @ =0x000007FE
_08F14856:
	ands r0, r1
	str r0, [r4, #0x20]
_08F1485A:
	cmp r6, #4
	beq _08F1486C
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _08F1487A
	.align 2, 0
_08F14868: .4byte 0x000007FE
_08F1486C:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_08F1487A:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08F14892:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _08F14918
	ldr r1, _08F148DC @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08F148E4
	ldr r0, _08F148E0 @ =Cgb3vol
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _08F14918
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _08F14918
	.align 2, 0
_08F148DC: .4byte 0x04000081
_08F148E0: .4byte Cgb3vol
_08F148E4:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _08F14918
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08F14918
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08F14918:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08F1491C:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08F14926
	b _08F1451C
_08F14926:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayTempoControl
MPlayTempoControl: @ 0x08F14938
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08F1495C @ =0x68736D53
	cmp r3, r0
	bne _08F14954
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_08F14954:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F1495C: .4byte 0x68736D53

	thumb_func_start MPlayVolumeControl
MPlayVolumeControl: @ 0x08F14960
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08F149C4 @ =0x68736D53
	cmp r3, r0
	bne _08F149B8
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08F149B4
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_08F14990:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08F149AA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08F149AA
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08F149AA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08F14990
_08F149B4:
	ldr r0, _08F149C4 @ =0x68736D53
	str r0, [r4, #0x34]
_08F149B8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F149C4: .4byte 0x68736D53

	thumb_func_start MPlayPitchControl
MPlayPitchControl: @ 0x08F149C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08F14A38 @ =0x68736D53
	cmp r3, r0
	bne _08F14A2A
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08F14A26
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08F14A00:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08F14A1C
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08F14A1C
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08F14A1C:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08F14A00
_08F14A26:
	ldr r0, _08F14A38 @ =0x68736D53
	str r0, [r4, #0x34]
_08F14A2A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F14A38: .4byte 0x68736D53

	thumb_func_start MPlayPanpotControl
MPlayPanpotControl: @ 0x08F14A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _08F14AA0 @ =0x68736D53
	cmp r3, r0
	bne _08F14A94
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08F14A90
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_08F14A6C:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08F14A86
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08F14A86
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08F14A86:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08F14A6C
_08F14A90:
	ldr r0, _08F14AA0 @ =0x68736D53
	str r0, [r4, #0x34]
_08F14A94:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F14AA0: .4byte 0x68736D53

	thumb_func_start MP_clear_modM
MP_clear_modM: @ 0x08F14AA4
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08F14AB8
	movs r0, #0xc
	b _08F14ABA
_08F14AB8:
	movs r0, #3
_08F14ABA:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start MPlayModDepthSet
MPlayModDepthSet: @ 0x08F14AC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08F14B34 @ =0x68736D53
	cmp r1, r0
	bne _08F14B24
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08F14B20
	mov sb, r8
_08F14AF4:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08F14B16
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08F14B16
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _08F14B16
	adds r0, r4, #0
	bl MP_clear_modM
_08F14B16:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08F14AF4
_08F14B20:
	ldr r0, _08F14B34 @ =0x68736D53
	str r0, [r6, #0x34]
_08F14B24:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F14B34: .4byte 0x68736D53

	thumb_func_start MPlayLFOSpeedSet
MPlayLFOSpeedSet: @ 0x08F14B38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08F14BA8 @ =0x68736D53
	cmp r1, r0
	bne _08F14B98
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08F14B94
	mov sb, r8
_08F14B68:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08F14B8A
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08F14B8A
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _08F14B8A
	adds r0, r4, #0
	bl MP_clear_modM
_08F14B8A:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08F14B68
_08F14B94:
	ldr r0, _08F14BA8 @ =0x68736D53
	str r0, [r6, #0x34]
_08F14B98:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F14BA8: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x08F14BAC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _08F14BD0
	b _08F14CFE
_08F14BD0:
	lsls r0, r5, #2
	ldr r1, _08F14BDC @ =_08F14BE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F14BDC: .4byte _08F14BE0
_08F14BE0: @ jump table
	.4byte _08F14C28 @ case 0
	.4byte _08F14C2C @ case 1
	.4byte _08F14C34 @ case 2
	.4byte _08F14C3C @ case 3
	.4byte _08F14C46 @ case 4
	.4byte _08F14C54 @ case 5
	.4byte _08F14C62 @ case 6
	.4byte _08F14C6A @ case 7
	.4byte _08F14C72 @ case 8
	.4byte _08F14C7A @ case 9
	.4byte _08F14C82 @ case 10
	.4byte _08F14C8A @ case 11
	.4byte _08F14C92 @ case 12
	.4byte _08F14CA0 @ case 13
	.4byte _08F14CAE @ case 14
	.4byte _08F14CBC @ case 15
	.4byte _08F14CCA @ case 16
	.4byte _08F14CD8 @ case 17
_08F14C28:
	strb r2, [r3]
	b _08F14CFE
_08F14C2C:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _08F14CFE
_08F14C34:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _08F14CFE
_08F14C3C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _08F14CFE
_08F14C46:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _08F14CFE
_08F14C54:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _08F14CFE
_08F14C62:
	ldrb r3, [r3]
	cmp r3, r2
	beq _08F14CE4
	b _08F14CF8
_08F14C6A:
	ldrb r3, [r3]
	cmp r3, r2
	bne _08F14CE4
	b _08F14CF8
_08F14C72:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _08F14CE4
	b _08F14CF8
_08F14C7A:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _08F14CE4
	b _08F14CF8
_08F14C82:
	ldrb r3, [r3]
	cmp r3, r2
	bls _08F14CE4
	b _08F14CF8
_08F14C8A:
	ldrb r3, [r3]
	cmp r3, r2
	blo _08F14CE4
	b _08F14CF8
_08F14C92:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08F14CE4
	b _08F14CF8
_08F14CA0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08F14CE4
	b _08F14CF8
_08F14CAE:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _08F14CE4
	b _08F14CF8
_08F14CBC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08F14CE4
	b _08F14CF8
_08F14CCA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _08F14CE4
	b _08F14CF8
_08F14CD8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08F14CF8
_08F14CE4:
	ldr r0, _08F14CF4 @ =gUnknown_030046C4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _08F14CFE
	.align 2, 0
_08F14CF4: .4byte gUnknown_030046C4
_08F14CF8:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_08F14CFE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x08F14D04
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08F14D20 @ =xcmd_tbl
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08F14D20: .4byte xcmd_tbl

	thumb_func_start ply_xxx
ply_xxx: @ 0x08F14D24
	push {lr}
	ldr r2, _08F14D34 @ =ExtMPlyJmpTbl
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08F14D34: .4byte ExtMPlyJmpTbl

	thumb_func_start ply_xwave
ply_xwave: @ 0x08F14D38
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _08F14D70 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _08F14D74 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _08F14D78 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _08F14D7C @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F14D70: .4byte 0xFFFFFF00
_08F14D74: .4byte 0xFFFF00FF
_08F14D78: .4byte 0xFF00FFFF
_08F14D7C: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x08F14D80
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xatta
ply_xatta: @ 0x08F14D94
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xdeca
ply_xdeca: @ 0x08F14DA8
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xsust
ply_xsust: @ 0x08F14DBC
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xrele
ply_xrele: @ 0x08F14DD0
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xiecv
ply_xiecv: @ 0x08F14DE4
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x08F14DF0
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x08F14DFC
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xswee
ply_xswee: @ 0x08F14E10
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start DummyFunc_rev
DummyFunc_rev: @ 0x08F14E24
	bx lr
	.align 2, 0
