	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse1_itemdropget_1
sfx_pulse1_itemdropget_1:	@ 0x08F7D368
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x10
	.byte	0xD2
	.byte	0x59
	.byte	0x7F
	.byte	0x83
	.byte	0xD2
	.byte	0x5B
	.byte	0x7F
	.byte	0x83
	.byte	0xD2
	.byte	0x5D
	.byte	0x7F
	.byte	0x83
	.byte	0xD2
	.byte	0x5F
	.byte	0x7F
	.byte	0x83
	.byte	0xD2
	.byte	0x61
	.byte	0x7F
	.byte	0x83
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_pulse1_itemdropget
sfx_pulse1_itemdropget:	@ 0x08F7D388
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse1_itemdropget_1		@ track

