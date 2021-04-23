#ifdef NDS_VERSION
#include "macros.inc"
#define OAM_VRAM_OFFSET 0x00400000
#else
.include "asm/macros.inc"
#define OAM_VRAM_OFFSET 0x00010000
#endif

.syntax unified
.section .text

	thumb_func_start sub_8F0354C
sub_8F0354C: @ 0x08F0354C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08F03588 @ =gUnknown_0300349C
	ldr r2, _08F0358C @ =gUnknown_03000784
	ldr r1, [r2]
	ldr r0, [r0]
	ldrh r1, [r1, #0x1e]
	adds r0, r1, r0
	ldr r1, _08F03590 @ =0xFFFF8000
	adds r7, r0, r1
	ldr r0, _08F03594 @ =gUnknown_030007C8
	ldrb r0, [r0]
	mov ip, r2
	cmp r0, #0
	beq _08F03570
	b _08F03772
_08F03570:
	ldr r0, _08F03598 @ =gUnknown_0300317C
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _08F035A4
	ldr r0, _08F0359C @ =gUnknown_0300078C
	ldr r1, _08F035A0 @ =gUnknown_030007C0
	ldrb r1, [r1]
	strb r1, [r0]
	mov r8, r0
	b _08F035AC
	.align 2, 0
_08F03588: .4byte gUnknown_0300349C
_08F0358C: .4byte gUnknown_03000784
_08F03590: .4byte 0xFFFF8000
_08F03594: .4byte gUnknown_030007C8
_08F03598: .4byte gUnknown_0300317C
_08F0359C: .4byte gUnknown_0300078C
_08F035A0: .4byte gUnknown_030007C0
_08F035A4:
	ldr r1, _08F03640 @ =gUnknown_0300078C
	movs r0, #1
	strb r0, [r1]
	mov r8, r1
_08F035AC:
	ldrb r2, [r7]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _08F035C0
	mov r3, ip
	ldr r1, [r3]
	movs r0, #7
	ands r0, r2
	strb r0, [r1, #0x15]
_08F035C0:
	ldrb r4, [r7]
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _08F036A0
	mov r6, ip
	ldr r2, [r6]
	ldr r3, _08F03644 @ =gUnknown_08F1B660
	movs r1, #7
	adds r0, r1, #0
	ands r0, r4
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, r8
	ldrb r3, [r3]
	muls r0, r3, r0
	ldrh r4, [r2, #4]
	adds r0, r4, r0
	strh r0, [r2, #4]
	ldr r0, _08F03648 @ =gUnknown_08F1B668
	ldrb r6, [r7]
	ands r1, r6
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r1, r8
	ldrb r1, [r1]
	muls r0, r1, r0
	ldrh r3, [r2, #6]
	adds r0, r3, r0
	strh r0, [r2, #6]
	movs r0, #0xfe
	ldrb r4, [r2, #3]
	ands r0, r4
	strb r0, [r2, #3]
	mov r6, ip
	ldr r3, [r6]
	ldrb r2, [r3, #3]
	lsrs r0, r2, #4
	movs r1, #1
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #3]
	movs r0, #0x40
	ldrb r1, [r7]
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08F036A0
	ldr r4, _08F0364C @ =gUnknown_0300081C
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	cmp r0, #0x43
	ble _08F03636
	str r1, [r4]
_08F03636:
	ldrb r5, [r5]
	cmp r5, #9
	bne _08F03650
	ldr r0, [r4]
	b _08F0365C
	.align 2, 0
_08F03640: .4byte gUnknown_0300078C
_08F03644: .4byte gUnknown_08F1B660
_08F03648: .4byte gUnknown_08F1B668
_08F0364C: .4byte gUnknown_0300081C
_08F03650:
	ldr r4, [r4]
	adds r0, r4, #0
	adds r0, #0x10
	cmp r0, #0x43
	ble _08F0365C
	subs r0, #0x44
_08F0365C:
	ldr r2, _08F0372C @ =gUnknown_03002850
	lsls r4, r0, #2
	adds r3, r4, r2
	mov sb, r3
	mov r5, ip
	ldr r3, [r5]
	ldrh r6, [r3, #4]
	ldr r0, _08F03730 @ =0xFFFFFE40
	adds r1, r6, r0
	movs r6, #4
	rsbs r6, r6, #0
	adds r5, r6, #0
	ands r1, r5
	movs r0, #3
	ldrb r6, [r3, #3]
	ands r0, r6
	adds r0, r0, r1
	mov r1, sb
	strh r0, [r1]
	adds r2, #2
	adds r4, r4, r2
	ldrh r3, [r3, #6]
	ldr r2, _08F03734 @ =0xFFFFFEC0
	adds r1, r3, r2
	ands r1, r5
	ldr r2, _08F03738 @ =gUnknown_08F1B628
	movs r0, #7
	ldrb r3, [r7]
	ands r0, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #1
	adds r0, r0, r1
	strh r0, [r4]
_08F036A0:
	mov r4, ip
	ldr r1, [r4]
	movs r0, #0x1e
	ldrb r5, [r1, #3]
	ands r0, r5
	cmp r0, #0
	bne _08F03762
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _08F03758
	adds r7, #2
	ldrh r0, [r1, #0x1e]
	adds r0, #2
	strh r0, [r1, #0x1e]
	ldr r2, _08F0373C @ =gUnknown_03000818
	ldrb r0, [r7]
	strb r0, [r2]
	ldrb r0, [r7]
	cmp r0, #0xf
	bhi _08F03754
	cmp r0, #2
	bhi _08F036D0
	movs r0, #0
	strb r0, [r2]
_08F036D0:
	mov r6, ip
	ldr r2, [r6]
	ldr r1, [r2, #8]
	movs r0, #0x3f
	ldrb r1, [r1]
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	ldr r2, _08F03740 @ =gUnknown_08F645B4
	ldrb r3, [r1]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #8
	strb r0, [r1, #0x14]
	ldrb r0, [r7]
	cmp r0, #0
	bne _08F03700
	ldr r0, [r6]
	ldrb r4, [r0]
	lsls r1, r4, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strb r1, [r0, #2]
_08F03700:
	ldr r0, _08F03744 @ =gUnknown_030007EC
	mov r5, ip
	ldr r2, [r5]
	str r2, [r0]
	ldr r1, _08F03748 @ =gUnknown_03001510
	ldrb r0, [r2, #0x1c]
	strb r0, [r1]
	ldr r1, _08F0374C @ =gUnknown_03001514
	ldrb r0, [r2, #0x1d]
	strb r0, [r1]
	ldrb r0, [r7]
	cmp r0, #0
	bne _08F037A2
	ldr r0, _08F03750 @ =gUnknown_08F1B6B8
	ldrb r2, [r2]
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	b _08F037B0
	.align 2, 0
_08F0372C: .4byte gUnknown_03002850
_08F03730: .4byte 0xFFFFFE40
_08F03734: .4byte 0xFFFFFEC0
_08F03738: .4byte gUnknown_08F1B628
_08F0373C: .4byte gUnknown_03000818
_08F03740: .4byte gUnknown_08F645B4
_08F03744: .4byte gUnknown_030007EC
_08F03748: .4byte gUnknown_03001510
_08F0374C: .4byte gUnknown_03001514
_08F03750: .4byte gUnknown_08F1B6B8
_08F03754:
	ldrb r0, [r7, #1]
	strb r0, [r1, #0x1a]
_08F03758:
	mov r6, ip
	ldr r1, [r6]
	ldrb r0, [r1, #0x1a]
	subs r0, #1
	strb r0, [r1, #0x1a]
_08F03762:
	mov r0, ip
	ldr r1, [r0]
	mov r2, r8
	ldrb r2, [r2]
	lsls r0, r2, #1
	ldrb r3, [r1, #3]
	adds r0, r3, r0
	strb r0, [r1, #3]
_08F03772:
	movs r0, #0x20
	ldrb r7, [r7]
	ands r0, r7
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08F0379C
	mov r4, ip
	ldr r3, [r4]
	ldr r2, _08F03798 @ =gUnknown_08F645B4
	ldr r1, [r3, #8]
	movs r0, #0x3f
	ldrb r1, [r1]
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r3, #2]
	b _08F037A2
	.align 2, 0
_08F03798: .4byte gUnknown_08F645B4
_08F0379C:
	mov r5, ip
	ldr r0, [r5]
	strb r1, [r0, #2]
_08F037A2:
	mov r6, ip
	ldr r0, [r6]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08F037B0
	bl sub_8F031FC
_08F037B0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8F037BC
sub_8F037BC: @ 0x08F037BC
	bx lr
	.align 2, 0

	thumb_func_start sub_8F037C0
sub_8F037C0: @ 0x08F037C0
	push {lr}
	movs r0, #0x74
	bl sub_8F03F3C
	bl sub_8F031FC
	pop {r0}
	bx r0

	thumb_func_start sub_8F037D0
sub_8F037D0: @ 0x08F037D0
	push {lr}
	movs r0, #0x74
	bl sub_8F03F3C
	bl sub_8F031FC
	pop {r0}
	bx r0

	thumb_func_start sub_8F037E0
sub_8F037E0: @ 0x08F037E0
	push {lr}
	movs r0, #0x74
	bl sub_8F03F3C
	ldr r0, _08F03810 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F03806
	ldr r1, _08F03814 @ =gUnknown_03000780
	movs r0, #7
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F03806
	ldr r0, _08F03818 @ =gUnknown_03000784
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_08F03806:
	bl sub_8F031FC
	pop {r0}
	bx r0
	.align 2, 0
_08F03810: .4byte gUnknown_030007C8
_08F03814: .4byte gUnknown_03000780
_08F03818: .4byte gUnknown_03000784

	thumb_func_start sub_8F0381C
sub_8F0381C: @ 0x08F0381C
	bx lr
	.align 2, 0

	thumb_func_start sub_8F03820
sub_8F03820: @ 0x08F03820
	push {lr}
	movs r0, #0x74
	bl sub_8F03F3C
	bl sub_8F031FC
	pop {r0}
	bx r0

	thumb_func_start sub_8F03830
sub_8F03830: @ 0x08F03830
	push {lr}
	movs r0, #0x74
	bl sub_8F03F3C
	bl sub_8F031FC
	pop {r0}
	bx r0

	thumb_func_start sub_8F03840
sub_8F03840: @ 0x08F03840
	bx lr
	.align 2, 0

	thumb_func_start sub_8F03844
sub_8F03844: @ 0x08F03844
	push {lr}
	bl sub_8F031FC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03850
sub_8F03850: @ 0x08F03850
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F03890 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F0394C
	ldr r0, _08F03894 @ =gUnknown_03000780
	movs r4, #7
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08F038D4
	bl Random
	lsrs r0, r0, #0x1b
	cmp r0, #1
	beq _08F038AC
	cmp r0, #1
	blo _08F0389C
	cmp r0, #2
	beq _08F038B8
	cmp r0, #3
	beq _08F038C4
	ldr r0, _08F03898 @ =gUnknown_03000784
	ldr r1, [r0]
	movs r0, #0x80
	ldrb r2, [r1, #0x15]
	orrs r0, r2
	strb r0, [r1, #0x15]
	b _08F038D4
	.align 2, 0
_08F03890: .4byte gUnknown_030007C8
_08F03894: .4byte gUnknown_03000780
_08F03898: .4byte gUnknown_03000784
_08F0389C:
	ldr r1, _08F038A8 @ =gUnknown_03000784
	ldr r0, [r1]
	strb r4, [r0, #0x15]
	ldr r1, [r1]
	b _08F038CE
	.align 2, 0
_08F038A8: .4byte gUnknown_03000784
_08F038AC:
	ldr r2, _08F038B4 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #2
	b _08F038CA
	.align 2, 0
_08F038B4: .4byte gUnknown_03000784
_08F038B8:
	ldr r2, _08F038C0 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #4
	b _08F038CA
	.align 2, 0
_08F038C0: .4byte gUnknown_03000784
_08F038C4:
	ldr r2, _08F03924 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #6
_08F038CA:
	strb r0, [r1, #0x15]
	ldr r1, [r2]
_08F038CE:
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_08F038D4:
	ldr r6, _08F03924 @ =gUnknown_03000784
	ldr r2, [r6]
	ldrb r3, [r2, #0x15]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08F0394C
	ldr r0, _08F03928 @ =gUnknown_08F1B630
	movs r1, #7
	ands r1, r3
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r8, r5
	ldr r0, _08F0392C @ =gUnknown_08F1B648
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r2, #6]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r7, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8F02470
	adds r1, r0, #0
	cmp r1, #0
	bne _08F03930
	ldr r0, [r6]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	b _08F0394C
	.align 2, 0
_08F03924: .4byte gUnknown_03000784
_08F03928: .4byte gUnknown_08F1B630
_08F0392C: .4byte gUnknown_08F1B648
_08F03930:
	ldr r0, _08F0395C @ =0x00000309
	cmp r1, r0
	bne _08F0394C
	ldr r1, [r6]
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #6]
	bl sub_8F026DC
	cmp r0, #0
	beq _08F0394C
	ldr r0, [r6]
	mov r1, r8
	strh r1, [r0, #4]
	strh r7, [r0, #6]
_08F0394C:
	bl sub_8F031FC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F0395C: .4byte 0x00000309

	thumb_func_start sub_8F03960
sub_8F03960: @ 0x08F03960
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08F039A0 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F03A5C
	ldr r0, _08F039A4 @ =gUnknown_03000780
	movs r4, #7
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08F039E4
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _08F039BC
	cmp r0, #1
	blo _08F039AC
	cmp r0, #2
	beq _08F039C8
	cmp r0, #3
	beq _08F039D4
	ldr r0, _08F039A8 @ =gUnknown_03000784
	ldr r1, [r0]
	movs r0, #0x80
	ldrb r2, [r1, #0x15]
	orrs r0, r2
	strb r0, [r1, #0x15]
	b _08F039E4
	.align 2, 0
_08F039A0: .4byte gUnknown_030007C8
_08F039A4: .4byte gUnknown_03000780
_08F039A8: .4byte gUnknown_03000784
_08F039AC:
	ldr r1, _08F039B8 @ =gUnknown_03000784
	ldr r0, [r1]
	strb r4, [r0, #0x15]
	ldr r1, [r1]
	b _08F039DE
	.align 2, 0
_08F039B8: .4byte gUnknown_03000784
_08F039BC:
	ldr r2, _08F039C4 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #2
	b _08F039DA
	.align 2, 0
_08F039C4: .4byte gUnknown_03000784
_08F039C8:
	ldr r2, _08F039D0 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #4
	b _08F039DA
	.align 2, 0
_08F039D0: .4byte gUnknown_03000784
_08F039D4:
	ldr r2, _08F03A34 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #6
_08F039DA:
	strb r0, [r1, #0x15]
	ldr r1, [r2]
_08F039DE:
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_08F039E4:
	ldr r6, _08F03A34 @ =gUnknown_03000784
	ldr r2, [r6]
	ldrb r3, [r2, #0x15]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08F03A5C
	ldr r0, _08F03A38 @ =gUnknown_08F1B630
	movs r1, #7
	ands r1, r3
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r8, r5
	ldr r0, _08F03A3C @ =gUnknown_08F1B648
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r2, #6]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r7, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8F02470
	adds r1, r0, #0
	cmp r1, #0
	bne _08F03A40
	ldr r0, [r6]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
	b _08F03A5C
	.align 2, 0
_08F03A34: .4byte gUnknown_03000784
_08F03A38: .4byte gUnknown_08F1B630
_08F03A3C: .4byte gUnknown_08F1B648
_08F03A40:
	ldr r0, _08F03A6C @ =0x00000309
	cmp r1, r0
	bne _08F03A5C
	ldr r1, [r6]
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #6]
	bl sub_8F026DC
	cmp r0, #0
	beq _08F03A5C
	ldr r0, [r6]
	mov r1, r8
	strh r1, [r0, #4]
	strh r7, [r0, #6]
_08F03A5C:
	bl sub_8F031FC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F03A6C: .4byte 0x00000309

	thumb_func_start sub_8F03A70
sub_8F03A70: @ 0x08F03A70
	push {r4, lr}
	ldr r0, _08F03AA0 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F03AE0
	ldr r0, _08F03AA4 @ =gUnknown_03000780
	movs r4, #7
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08F03AE0
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _08F03AB8
	cmp r0, #1
	blo _08F03AA8
	cmp r0, #2
	beq _08F03AC4
	cmp r0, #3
	beq _08F03AD0
	b _08F03AE0
	.align 2, 0
_08F03AA0: .4byte gUnknown_030007C8
_08F03AA4: .4byte gUnknown_03000780
_08F03AA8:
	ldr r1, _08F03AB4 @ =gUnknown_03000784
	ldr r0, [r1]
	strb r4, [r0, #0x15]
	ldr r1, [r1]
	b _08F03ADA
	.align 2, 0
_08F03AB4: .4byte gUnknown_03000784
_08F03AB8:
	ldr r2, _08F03AC0 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #2
	b _08F03AD6
	.align 2, 0
_08F03AC0: .4byte gUnknown_03000784
_08F03AC4:
	ldr r2, _08F03ACC @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #4
	b _08F03AD6
	.align 2, 0
_08F03ACC: .4byte gUnknown_03000784
_08F03AD0:
	ldr r2, _08F03AEC @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #6
_08F03AD6:
	strb r0, [r1, #0x15]
	ldr r1, [r2]
_08F03ADA:
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_08F03AE0:
	bl sub_8F031FC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08F03AEC: .4byte gUnknown_03000784

	thumb_func_start sub_8F03AF0
sub_8F03AF0: @ 0x08F03AF0
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03AFE
	bl sub_8F03844
_08F03AFE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03B04
sub_8F03B04: @ 0x08F03B04
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03B12
	bl sub_8F03850
_08F03B12:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03B18
sub_8F03B18: @ 0x08F03B18
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03B26
	bl sub_8F03960
_08F03B26:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03B2C
sub_8F03B2C: @ 0x08F03B2C
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03B3A
	bl sub_8F03A70
_08F03B3A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03B40
sub_8F03B40: @ 0x08F03B40
	push {r4, r5, lr}
	ldr r5, _08F03B5C @ =gUnknown_03000784
	ldr r1, [r5]
	ldrb r4, [r1, #0x15]
	movs r0, #0xf8
	ands r0, r4
	strb r0, [r1, #0x15]
	bl sub_8F031FC
	ldr r0, [r5]
	strb r4, [r0, #0x15]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08F03B5C: .4byte gUnknown_03000784

	thumb_func_start sub_8F03B60
sub_8F03B60: @ 0x08F03B60
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03B6E
	bl sub_8F03B40
_08F03B6E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8F03B74
sub_8F03B74: @ 0x08F03B74
	push {r4, r5, r6, r7, lr}
	ldr r1, _08F03C04 @ =gUnknown_03000784
	ldr r2, [r1]
	ldr r0, [r2, #8]
	ldrb r5, [r0, #6]
	ldrb r4, [r0, #7]
	ldrb r3, [r0, #5]
	lsls r6, r3, #8
	ldrb r0, [r0, #4]
	orrs r6, r0
	ldr r0, _08F03C08 @ =gUnknown_030007C8
	ldrb r0, [r0]
	adds r7, r1, #0
	cmp r0, #0
	beq _08F03BA2
	cmp r4, #0x49
	bne _08F03BA2
	ldr r0, _08F03C0C @ =gUnknown_0300150C
	ldr r0, [r0]
	cmp r0, #0
	beq _08F03BA2
	cmp r0, r2
	bne _08F03BD0
_08F03BA2:
	ldr r2, _08F03C10 @ =gGameInfo
	movs r3, #0x80
	ands r5, r3
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x1a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r4, #3
	adds r0, r0, r1
	movs r1, #0x88
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r0, r0, r2
	movs r1, #7
	ands r4, r1
	ldrb r0, [r0]
	lsls r0, r4
	ands r0, r3
	cmp r0, #0
	beq _08F03BD0
	adds r0, r6, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08F03BD0:
	ldr r1, [r7]
	ldr r0, _08F03C14 @ =gUnknown_03000788
	ldr r3, _08F03C18 @ =0x0000FFFC
	adds r2, r3, #0
	ldrh r0, [r0]
	ands r2, r0
	ldrh r0, [r1, #4]
	subs r2, r0, r2
	subs r2, #0x40
	ldr r0, _08F03C1C @ =gUnknown_03001508
	ldrh r0, [r0]
	ands r3, r0
	ldrh r0, [r1, #6]
	subs r3, r0, r3
	subs r3, #0xa0
	ldrb r1, [r1, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x12
	lsls r3, r3, #0x10
	asrs r3, r3, #0x12
	adds r0, r6, #0
	bl sub_8F01700
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08F03C04: .4byte gUnknown_03000784
_08F03C08: .4byte gUnknown_030007C8
_08F03C0C: .4byte gUnknown_0300150C
_08F03C10: .4byte gGameInfo
_08F03C14: .4byte gUnknown_03000788
_08F03C18: .4byte 0x0000FFFC
_08F03C1C: .4byte gUnknown_03001508

	thumb_func_start sub_8F03C20
sub_8F03C20: @ 0x08F03C20
	push {r4, r5, r6, lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03CB0
	ldr r0, _08F03C84 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F03CAC
	ldr r0, _08F03C88 @ =gUnknown_03000780
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08F03CAC
	ldr r6, _08F03C8C @ =gUnknown_03000784
	ldr r0, [r6]
	ldrh r5, [r0, #4]
	ldrh r4, [r0, #6]
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08F03C56
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08F03C56:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08F03C98
	bl Random
	lsrs r2, r0, #0x1d
	movs r0, #0xfe
	ands r0, r2
	cmp r0, #0
	bne _08F03C98
	ldr r0, [r6]
	ldrb r1, [r0, #3]
	adds r1, #1
	strb r1, [r0, #3]
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08F03C90
	movs r0, #8
	eors r5, r0
	b _08F03C98
	.align 2, 0
_08F03C84: .4byte gUnknown_030007C8
_08F03C88: .4byte gUnknown_03000780
_08F03C8C: .4byte gUnknown_03000784
_08F03C90:
	adds r0, r4, #0
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08F03C98:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8F0253C
	cmp r0, #0
	bne _08F03CAC
	ldr r0, _08F03CB8 @ =gUnknown_03000784
	ldr r0, [r0]
	strh r5, [r0, #4]
	strh r4, [r0, #6]
_08F03CAC:
	bl sub_8F031FC
_08F03CB0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F03CB8: .4byte gUnknown_03000784

	thumb_func_start sub_8F03CBC
sub_8F03CBC: @ 0x08F03CBC
	push {lr}
	ldr r3, _08F03CD4 @ =gUnknown_03000784
	ldr r1, [r3]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _08F03CD8
	movs r0, #0x80
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	b _08F03D46
	.align 2, 0
_08F03CD4: .4byte gUnknown_03000784
_08F03CD8:
	ldr r0, _08F03D4C @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08F03D32
	ldr r2, _08F03D50 @ =gUnknown_03000818
	ldrb r0, [r2]
	cmp r0, #0
	bne _08F03CF4
	movs r0, #0xf8
	strb r0, [r2]
	movs r0, #4
	ldrb r2, [r1, #0x15]
	eors r0, r2
	strb r0, [r1, #0x15]
_08F03CF4:
	ldr r1, _08F03D54 @ =gUnknown_03000780
	movs r0, #3
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F03D08
	ldr r1, [r3]
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_08F03D08:
	ldr r1, [r3]
	ldr r0, _08F03D58 @ =gUnknown_08F1B630
	ldrb r2, [r1, #0x15]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	ldrh r2, [r1, #4]
	adds r0, r2, r0
	strh r0, [r1, #4]
	ldr r0, _08F03D5C @ =gUnknown_08F1B648
	ldrb r2, [r1, #0x15]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	ldrh r2, [r1, #6]
	adds r0, r2, r0
	strh r0, [r1, #6]
_08F03D32:
	bl sub_8F031FC
	adds r1, r0, #0
	cmp r1, #0
	bne _08F03D46
	ldr r0, _08F03D50 @ =gUnknown_03000818
	strb r1, [r0]
	ldr r0, _08F03D60 @ =gUnknown_03000784
	ldr r0, [r0]
	strb r1, [r0, #0x14]
_08F03D46:
	pop {r0}
	bx r0
	.align 2, 0
_08F03D4C: .4byte gUnknown_030007C8
_08F03D50: .4byte gUnknown_03000818
_08F03D54: .4byte gUnknown_03000780
_08F03D58: .4byte gUnknown_08F1B630
_08F03D5C: .4byte gUnknown_08F1B648
_08F03D60: .4byte gUnknown_03000784

	thumb_func_start sub_8F03D64
sub_8F03D64: @ 0x08F03D64
	push {r4, r5, r6, lr}
	bl sub_8F03170
	cmp r0, #0
	bne _08F03D70
	b _08F03E8E
_08F03D70:
	ldr r0, _08F03DC0 @ =gUnknown_030007C8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F03D7A
	b _08F03E8A
_08F03D7A:
	ldr r2, _08F03DC4 @ =gUnknown_03000784
	ldr r3, [r2]
	ldrh r4, [r3, #4]
	ldrh r5, [r3, #6]
	ldr r1, _08F03DC8 @ =gUnknown_03000780
	movs r0, #3
	ldrb r6, [r1]
	ands r0, r6
	adds r6, r2, #0
	cmp r0, #0
	bne _08F03DA0
	movs r0, #0x80
	ldrb r3, [r3, #0x19]
	ands r0, r3
	cmp r0, #0
	beq _08F03DA0
	ldr r0, _08F03DCC @ =0x0000FFF7
	ands r4, r0
	ands r5, r0
_08F03DA0:
	movs r0, #7
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08F03E4A
	bl Random
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bhi _08F03E34
	lsls r0, r0, #2
	ldr r1, _08F03DD0 @ =_08F03DD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F03DC0: .4byte gUnknown_030007C8
_08F03DC4: .4byte gUnknown_03000784
_08F03DC8: .4byte gUnknown_03000780
_08F03DCC: .4byte 0x0000FFF7
_08F03DD0: .4byte _08F03DD4
_08F03DD4: @ jump table
	.4byte _08F03DEC @ case 0
	.4byte _08F03DF8 @ case 1
	.4byte _08F03E04 @ case 2
	.4byte _08F03E10 @ case 3
	.4byte _08F03E1C @ case 4
	.4byte _08F03E1C @ case 5
_08F03DEC:
	ldr r2, _08F03DF4 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #0
	b _08F03E46
	.align 2, 0
_08F03DF4: .4byte gUnknown_03000784
_08F03DF8:
	ldr r2, _08F03E00 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #2
	b _08F03E46
	.align 2, 0
_08F03E00: .4byte gUnknown_03000784
_08F03E04:
	ldr r2, _08F03E0C @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #4
	b _08F03E46
	.align 2, 0
_08F03E0C: .4byte gUnknown_03000784
_08F03E10:
	ldr r2, _08F03E18 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #6
	b _08F03E46
	.align 2, 0
_08F03E18: .4byte gUnknown_03000784
_08F03E1C:
	movs r0, #8
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _08F03E30 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #0x80
	ldrb r3, [r1, #0x19]
	orrs r0, r3
	b _08F03E46
	.align 2, 0
_08F03E30: .4byte gUnknown_03000784
_08F03E34:
	movs r0, #8
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _08F03E94 @ =gUnknown_03000784
	ldr r1, [r2]
	movs r0, #0x80
	ldrb r6, [r1, #0x19]
	orrs r0, r6
_08F03E46:
	strb r0, [r1, #0x19]
	adds r6, r2, #0
_08F03E4A:
	ldr r0, [r6]
	ldrb r2, [r0, #0x19]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08F03E78
	ldr r0, _08F03E98 @ =gUnknown_08F1B630
	movs r1, #7
	ands r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08F03E9C @ =gUnknown_08F1B648
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08F03E78:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8F02470
	cmp r0, #0
	bne _08F03E8A
	ldr r0, [r6]
	strh r4, [r0, #4]
	strh r5, [r0, #6]
_08F03E8A:
	bl sub_8F031FC
_08F03E8E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08F03E94: .4byte gUnknown_03000784
_08F03E98: .4byte gUnknown_08F1B630
_08F03E9C: .4byte gUnknown_08F1B648

	thumb_func_start sub_8F03EA0
sub_8F03EA0: @ 0x08F03EA0
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03EAE
	bl sub_8F037E0
_08F03EAE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SetFlag
SetFlag: @ 0x08F03EB4
	ldr r0, _08F03ED8 @ =gUnknown_03000784
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldrb r1, [r0, #4]
	ldr r0, _08F03EDC @ =gGameInfo
	lsrs r2, r1, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r2, r0
	movs r0, #7
	ands r1, r0
	movs r0, #0x80
	asrs r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08F03ED8: .4byte gUnknown_03000784
_08F03EDC: .4byte gGameInfo

	thumb_func_start ClearFlag
ClearFlag: @ 0x08F03EE0
	ldr r0, _08F03F08 @ =gUnknown_03000784
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldrb r1, [r0, #4]
	ldr r0, _08F03F0C @ =gGameInfo
	lsrs r2, r1, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r2, r0
	movs r0, #7
	ands r1, r0
	movs r0, #0x80
	asrs r0, r1
	ldrb r1, [r2]
	bics r1, r0
	adds r0, r1, #0
	strb r0, [r2]
	bx lr
	.align 2, 0
_08F03F08: .4byte gUnknown_03000784
_08F03F0C: .4byte gGameInfo

	thumb_func_start sub_8F03F10
sub_8F03F10: @ 0x08F03F10
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03F24
	movs r0, #0x72
	bl sub_8F03F3C
	bl sub_8F031FC
_08F03F24:
	pop {r0}
	bx r0

	thumb_func_start sub_8F03F28
sub_8F03F28: @ 0x08F03F28
	push {lr}
	bl sub_8F03170
	cmp r0, #0
	beq _08F03F36
	bl sub_8F037D0
_08F03F36:
	pop {r0}
	bx r0
	.align 2, 0
