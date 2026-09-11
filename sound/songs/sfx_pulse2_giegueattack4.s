	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse2_giegueattack4_1
sfx_pulse2_giegueattack4_1:	@ 0x08F7D7E0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x2B
	.byte	0xFF
	.byte	0x25
	.byte	0x7F
	.byte	0xB0
	.byte	0xBD
	.byte	0x2E
	.byte	0xEF
	.byte	0x24
	.byte	0x7F
	.byte	0xA0
	.byte	0xB1

	@********************** Track  2 **********************@

	.global sfx_pulse2_giegueattack4_2
sfx_pulse2_giegueattack4_2:	@ 0x08F7D7F5
	.byte	0xBC
	.byte	0x00
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x35
	.byte	0xFF
	.byte	0x2B
	.byte	0x7F
	.byte	0xB0
	.byte	0xBD
	.byte	0x38
	.byte	0xEF
	.byte	0x2A
	.byte	0x7F
	.byte	0xA0
	.byte	0xB1

	.align 2
	.global sfx_pulse2_giegueattack4
sfx_pulse2_giegueattack4:	@ 0x08F7D808
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse2_giegueattack4_1		@ track
	.word	sfx_pulse2_giegueattack4_2		@ track

