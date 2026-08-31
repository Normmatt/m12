	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse1_dodge_1
sfx_pulse1_dodge_1:	@ 0x08F7D490
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x16
	.byte	0xC4
	.byte	0x05
	.byte	0xD5
	.byte	0x5B
	.byte	0x7F
	.byte	0x86
	.byte	0xD5
	.byte	0x5E
	.byte	0x7F
	.byte	0x86
	.byte	0xD0
	.byte	0x58
	.byte	0x40
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global sfx_pulse1_dodge
sfx_pulse1_dodge:	@ 0x08F7D4AC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse1_dodge_1		@ track

