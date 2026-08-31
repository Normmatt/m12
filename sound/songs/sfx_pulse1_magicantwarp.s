	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse1_miss_1
sfx_pulse1_miss_1:	@ 0x08F7D4F0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x19
	.byte	0xD1
	.byte	0x57
	.byte	0x7F
	.byte	0x82
	.byte	0xD1
	.byte	0x56
	.byte	0x7F
	.byte	0x82
	.byte	0xD1
	.byte	0x55
	.byte	0x7F
	.byte	0x82
	.byte	0xD1
	.byte	0x54
	.byte	0x7F
	.byte	0x82
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_pulse1_miss
sfx_pulse1_miss:	@ 0x08F7D50C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse1_miss_1		@ track

	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse1_magicantwarp_1
sfx_pulse1_magicantwarp_1:	@ 0x08F7D518
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x1A
	.byte	0xDF
	.byte	0x4C
	.byte	0x7F
	.byte	0x90
	.byte	0xBD
	.byte	0x39
	.byte	0xDF
	.byte	0x4D
	.byte	0x5A
	.byte	0x90
	.byte	0xDF
	.byte	0x4E
	.byte	0x3C
	.byte	0x90
	.byte	0xDF
	.byte	0x4F
	.byte	0x28
	.byte	0x90
	.byte	0xDF
	.byte	0x50
	.byte	0x1E
	.byte	0x90
	.byte	0xDF
	.byte	0x51
	.byte	0x19
	.byte	0x90
	.byte	0xDF
	.byte	0x52
	.byte	0x14
	.byte	0x90
	.byte	0xDF
	.byte	0x53
	.byte	0x0F
	.byte	0x90
	.byte	0xDF
	.byte	0x54
	.byte	0x0A
	.byte	0x90
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global sfx_pulse1_magicantwarp
sfx_pulse1_magicantwarp:	@ 0x08F7D54C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse1_magicantwarp_1		@ track

