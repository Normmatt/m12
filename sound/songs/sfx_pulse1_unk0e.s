	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse1_unk0e_1
sfx_pulse1_unk0e_1:	@ 0x08F7D4D4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x18
	.byte	0xD0
	.byte	0x4E
	.byte	0x32
	.byte	0x81
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_pulse1_unk0e
sfx_pulse1_unk0e:	@ 0x08F7D4E4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	99		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse1_unk0e_1		@ track

