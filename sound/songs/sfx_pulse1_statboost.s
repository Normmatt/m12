	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse1_statboost_1
sfx_pulse1_statboost_1:	@ 0x08F7D304
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x0D
	.byte	0xDB
	.byte	0x3C
	.byte	0x7F
	.byte	0x8C
	.byte	0xDB
	.byte	0x3F
	.byte	0x64
	.byte	0x8C
	.byte	0xDB
	.byte	0x42
	.byte	0x46
	.byte	0x8C
	.byte	0xDB
	.byte	0x45
	.byte	0x28
	.byte	0x8C
	.byte	0xDB
	.byte	0x48
	.byte	0x0A
	.byte	0x8C
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_pulse1_statboost
sfx_pulse1_statboost:	@ 0x08F7D324
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse1_statboost_1		@ track

