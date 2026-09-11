	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse2_giegueattack3_1
sfx_pulse2_giegueattack3_1:	@ 0x08F7D7A4
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
	.byte	0xE7
	.byte	0x28
	.byte	0x7F
	.byte	0x98
	.byte	0xE7
	.byte	0x2B
	.byte	0x7F
	.byte	0x98
	.byte	0xB1

	@********************** Track  2 **********************@

	.global sfx_pulse2_giegueattack3_2
sfx_pulse2_giegueattack3_2:	@ 0x08F7D7BD
	.byte	0xBC
	.byte	0x00
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x35
	.byte	0xF7
	.byte	0x28
	.byte	0x7F
	.byte	0xA8
	.byte	0xBD
	.byte	0x38
	.byte	0xF7
	.byte	0x2E
	.byte	0x7F
	.byte	0xA8
	.byte	0xB1

	.align 2
	.global sfx_pulse2_giegueattack3
sfx_pulse2_giegueattack3:	@ 0x08F7D7D0
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse2_giegueattack3_1		@ track
	.word	sfx_pulse2_giegueattack3_2		@ track

