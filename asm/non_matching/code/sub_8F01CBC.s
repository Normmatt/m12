.syntax unified
.section .text
@	thumb_func_start sub_8F01CBC
@sub_8F01CBC: @ 0x08F01CBC
	push {r4, r5, r6, lr}
	lsls r5, r0, #0x10
	lsrs r0, r5, #0x10
	lsls r6, r1, #0x10
	lsrs r1, r6, #0x10
	movs r4, #0
	bl sub_8F02020
	adds r1, r0, #0
	ldr r0, _08F01CF0 @ =gUnknown_0300317C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08F01CF4
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08F01CE2
	b _08F02016
_08F01CE2:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x40
	bne _08F01CEC
	b _08F02016
_08F01CEC:
	b _08F02012
	.align 2, 0
_08F01CF0: .4byte gUnknown_0300317C
_08F01CF4:
	lsrs r2, r5, #0x12
	movs r0, #0xf
	ands r2, r0
	lsrs r3, r6, #0x12
	ands r3, r0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08F01D24
	cmp r1, #0x82
	bne _08F01D16
	adds r0, r2, r3
	subs r0, #4
	cmp r0, #0x12
	bhi _08F01D14
	b _08F02016
_08F01D14:
	b _08F02012
_08F01D16:
	cmp r1, #0xad
	bne _08F01D24
	adds r0, r2, r3
	cmp r0, #0x13
	ble _08F01D22
	b _08F02016
_08F01D22:
	b _08F02012
_08F01D24:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x3f
	bls _08F01D2E
	b _08F02016
_08F01D2E:
	lsls r0, r0, #2
	ldr r1, _08F01D38 @ =_08F01D3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08F01D38: .4byte _08F01D3C
_08F01D3C: @ jump table
	.4byte _08F02016 @ case 0
	.4byte _08F01E3C @ case 1
	.4byte _08F01E48 @ case 2
	.4byte _08F01E40 @ case 3
	.4byte _08F01E64 @ case 4
	.4byte _08F01E52 @ case 5
	.4byte _08F01E5C @ case 6
	.4byte _08F01E6E @ case 7
	.4byte _08F01EAE @ case 8
	.4byte _08F01E7C @ case 9
	.4byte _08F01E80 @ case 10
	.4byte _08F01E8C @ case 11
	.4byte _08F01EA6 @ case 12
	.4byte _08F01E9E @ case 13
	.4byte _08F01EB8 @ case 14
	.4byte _08F01EC6 @ case 15
	.4byte _08F01EE6 @ case 16
	.4byte _08F01EEE @ case 17
	.4byte _08F01F06 @ case 18
	.4byte _08F01F0E @ case 19
	.4byte _08F01F1E @ case 20
	.4byte _08F01F2C @ case 21
	.4byte _08F01F36 @ case 22
	.4byte _08F01F16 @ case 23
	.4byte _08F01F3A @ case 24
	.4byte _08F01F40 @ case 25
	.4byte _08F01F4E @ case 26
	.4byte _08F01F46 @ case 27
	.4byte _08F01F56 @ case 28
	.4byte _08F01F5C @ case 29
	.4byte _08F01F64 @ case 30
	.4byte _08F02012 @ case 31
	.4byte _08F01F68 @ case 32
	.4byte _08F01F70 @ case 33
	.4byte _08F01F78 @ case 34
	.4byte _08F01F7E @ case 35
	.4byte _08F01F84 @ case 36
	.4byte _08F02012 @ case 37
	.4byte _08F01F8C @ case 38
	.4byte _08F01F92 @ case 39
	.4byte _08F01F9A @ case 40
	.4byte _08F01FA6 @ case 41
	.4byte _08F02012 @ case 42
	.4byte _08F01FAC @ case 43
	.4byte _08F01FA0 @ case 44
	.4byte _08F01FB4 @ case 45
	.4byte _08F01FBC @ case 46
	.4byte _08F02012 @ case 47
	.4byte _08F01FC4 @ case 48
	.4byte _08F01FC8 @ case 49
	.4byte _08F01FCE @ case 50
	.4byte _08F01E74 @ case 51
	.4byte _08F01FD4 @ case 52
	.4byte _08F01FDA @ case 53
	.4byte _08F0200E @ case 54
	.4byte _08F01FE4 @ case 55
	.4byte _08F01FEA @ case 56
	.4byte _08F02004 @ case 57
	.4byte _08F01FF0 @ case 58
	.4byte _08F01FFA @ case 59
	.4byte _08F01EBE @ case 60
	.4byte _08F02000 @ case 61
	.4byte _08F0200A @ case 62
	.4byte _08F02012 @ case 63
_08F01E3C:
	subs r0, r2, r3
	b _08F01E66
_08F01E40:
	subs r0, r2, r3
	cmp r0, #7
	ble _08F01E48
	b _08F02012
_08F01E48:
	adds r0, r2, r3
	cmp r0, #0x16
	bgt _08F01E50
	b _08F02016
_08F01E50:
	b _08F02012
_08F01E52:
	subs r0, r2, r3
	cmp r0, #7
	ble _08F01E5A
	b _08F02012
_08F01E5A:
	b _08F01E64
_08F01E5C:
	adds r0, r2, r3
	cmp r0, #0x16
	ble _08F01E64
	b _08F02012
_08F01E64:
	subs r0, r3, r2
_08F01E66:
	cmp r0, #7
	bgt _08F01E6C
	b _08F02016
_08F01E6C:
	b _08F02012
_08F01E6E:
	cmp r3, #0xb
	ble _08F01E74
	b _08F02012
_08F01E74:
	cmp r2, #7
	bgt _08F01E7A
	b _08F02016
_08F01E7A:
	b _08F02012
_08F01E7C:
	subs r0, r2, r3
	b _08F01EA8
_08F01E80:
	adds r0, r2, r3
	subs r0, #8
	cmp r0, #0xe
	bhi _08F01E8A
	b _08F02016
_08F01E8A:
	b _08F02012
_08F01E8C:
	subs r0, r2, r3
	cmp r0, #7
	ble _08F01E94
	b _08F02012
_08F01E94:
	adds r0, r2, r3
	cmp r0, #0x16
	ble _08F01E9C
	b _08F02012
_08F01E9C:
	b _08F01EB0
_08F01E9E:
	subs r0, r2, r3
	cmp r0, #7
	ble _08F01EA6
	b _08F02012
_08F01EA6:
	subs r0, r3, r2
_08F01EA8:
	cmp r0, #7
	ble _08F01EAE
	b _08F02012
_08F01EAE:
	adds r0, r2, r3
_08F01EB0:
	cmp r0, #7
	ble _08F01EB6
	b _08F02016
_08F01EB6:
	b _08F02012
_08F01EB8:
	cmp r3, #0xb
	ble _08F01EBE
	b _08F02012
_08F01EBE:
	cmp r2, #7
	ble _08F01EC4
	b _08F02016
_08F01EC4:
	b _08F02012
_08F01EC6:
	subs r0, r2, r3
	cmp r0, #7
	ble _08F01ECE
	b _08F02012
_08F01ECE:
	adds r1, r2, r3
	cmp r1, #0x16
	ble _08F01ED6
	b _08F02012
_08F01ED6:
	subs r0, r3, r2
	cmp r0, #7
	ble _08F01EDE
	b _08F02012
_08F01EDE:
	cmp r1, #7
	ble _08F01EE4
	b _08F02016
_08F01EE4:
	b _08F02012
_08F01EE6:
	subs r0, r2, r3
	cmp r0, #8
	ble _08F01EEE
	b _08F02016
_08F01EEE:
	adds r1, r2, r3
	cmp r1, #0x17
	ble _08F01EF6
	b _08F02016
_08F01EF6:
	subs r0, r3, r2
	cmp r0, #8
	ble _08F01EFE
	b _08F02016
_08F01EFE:
	cmp r1, #6
	bgt _08F01F04
	b _08F02016
_08F01F04:
	b _08F02012
_08F01F06:
	subs r0, r2, r3
	cmp r0, #8
	ble _08F01F0E
	b _08F02016
_08F01F0E:
	subs r0, r3, r2
_08F01F10:
	cmp r0, #8
	ble _08F01F16
	b _08F02016
_08F01F16:
	adds r0, r2, r3
_08F01F18:
	cmp r0, #6
	ble _08F02016
	b _08F02012
_08F01F1E:
	subs r0, r2, r3
	cmp r0, #8
	bgt _08F02016
	adds r0, r2, r3
	cmp r0, #0x17
	bgt _08F02016
	b _08F01F18
_08F01F2C:
	adds r0, r2, r3
	subs r0, #7
	cmp r0, #0x10
	bhi _08F02016
	b _08F02012
_08F01F36:
	subs r0, r2, r3
	b _08F01F10
_08F01F3A:
	subs r0, r2, r3
	cmp r0, #8
	bgt _08F02016
_08F01F40:
	adds r0, r2, r3
	cmp r0, #0x17
	bgt _08F02016
_08F01F46:
	subs r0, r3, r2
_08F01F48:
	cmp r0, #8
	bgt _08F02016
	b _08F02012
_08F01F4E:
	subs r0, r2, r3
	cmp r0, #8
	bgt _08F02016
	b _08F01F46
_08F01F56:
	subs r0, r2, r3
	cmp r0, #8
	bgt _08F02016
_08F01F5C:
	adds r0, r2, r3
	cmp r0, #0x17
	bgt _08F02016
	b _08F02012
_08F01F64:
	subs r0, r2, r3
	b _08F01F48
_08F01F68:
	subs r0, r2, #4
_08F01F6A:
	cmp r0, #7
	bhi _08F02016
	b _08F02012
_08F01F70:
	subs r0, r2, r3
	cmp r0, #7
	bgt _08F02012
	b _08F01F7E
_08F01F78:
	adds r0, r2, r3
	cmp r0, #0x16
	bgt _08F02012
_08F01F7E:
	cmp r2, #0xb
	ble _08F02016
	b _08F02012
_08F01F84:
	subs r0, r3, r2
	cmp r0, #7
	bgt _08F02012
	b _08F01FA0
_08F01F8C:
	cmp r3, #0xb
	ble _08F02016
	b _08F02012
_08F01F92:
	adds r0, r2, r3
	cmp r0, #0xe
	ble _08F02016
	b _08F02012
_08F01F9A:
	adds r0, r2, r3
	cmp r0, #7
	ble _08F02012
_08F01FA0:
	cmp r2, #3
	bgt _08F02016
	b _08F02012
_08F01FA6:
	cmp r3, #3
	bgt _08F02016
	b _08F02012
_08F01FAC:
	subs r0, r2, r3
	cmp r0, #0
	blt _08F02016
	b _08F02012
_08F01FB4:
	adds r0, r2, r3
	cmp r0, #0xf
	bgt _08F02016
	b _08F02012
_08F01FBC:
	subs r0, r2, r3
	cmp r0, #0
	bgt _08F02016
	b _08F02012
_08F01FC4:
	subs r0, r3, #4
	b _08F01F6A
_08F01FC8:
	cmp r2, #7
	ble _08F02016
	b _08F02004
_08F01FCE:
	cmp r2, #7
	ble _08F02016
	b _08F0200E
_08F01FD4:
	cmp r2, #7
	bgt _08F02016
	b _08F0200E
_08F01FDA:
	cmp r2, #7
	ble _08F0200E
	cmp r3, #7
	ble _08F02012
	b _08F02016
_08F01FE4:
	cmp r2, #7
	bgt _08F02012
	b _08F0200E
_08F01FEA:
	cmp r2, #7
	bgt _08F02016
	b _08F02004
_08F01FF0:
	cmp r2, #7
	ble _08F02004
	cmp r3, #7
	bgt _08F02012
	b _08F02016
_08F01FFA:
	cmp r2, #7
	bgt _08F02012
	b _08F02004
_08F02000:
	cmp r2, #7
	ble _08F02012
_08F02004:
	cmp r3, #7
	bgt _08F02016
	b _08F02012
_08F0200A:
	cmp r2, #7
	ble _08F02012
_08F0200E:
	cmp r3, #7
	ble _08F02016
_08F02012:
	movs r4, #1
	rsbs r4, r4, #0
_08F02016:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
