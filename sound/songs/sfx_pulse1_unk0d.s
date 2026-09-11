	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse1_unk0d_1
sfx_pulse1_unk0d_1:	@ 0x08F7D4B8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x17
	.byte	0xD1
	.byte	0x65
	.byte	0x7F
	.byte	0x82
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_pulse1_unk0d
sfx_pulse1_unk0d:	@ 0x08F7D4C8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse1_unk0d_1		@ track

