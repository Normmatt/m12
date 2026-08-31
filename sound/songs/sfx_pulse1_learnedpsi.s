	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse1_learnedpsi_1
sfx_pulse1_learnedpsi_1:	@ 0x08F7D40C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x13
gUnknown_08F7D416:
	.byte	0xD3
	.byte	0x47
	.byte	0x7F
	.byte	0x84
	.byte	0xD3
	.byte	0x4C
	.byte	0x7F
	.byte	0x84
	.byte	0xD3
	.byte	0x4E
	.byte	0x7F
	.byte	0x84
	.byte	0xD3
	.byte	0x53
	.byte	0x7F
	.byte	0x84
	.byte	0xD3
	.byte	0x58
	.byte	0x7F
	.byte	0x84
	.byte	0xD3
	.byte	0x5A
	.byte	0x7F
	.byte	0x84
	.byte	0xD3
	.byte	0x5F
	.byte	0x7F
	.byte	0x84
	.byte	0xD3
	.byte	0x64
	.byte	0x7F
	.byte	0x84
	.byte	0xB5
	.byte	0x02
	.word	gUnknown_08F7D416
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global sfx_pulse1_learnedpsi
sfx_pulse1_learnedpsi:	@ 0x08F7D440
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse1_learnedpsi_1		@ track

