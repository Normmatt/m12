	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse1_menubloop_1
sfx_pulse1_menubloop_1:	@ 0x08F7D34C
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x0F
	.byte	0xD1
	.byte	0x5D
	.byte	0x7F
	.byte	0x82
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_pulse1_menubloop
sfx_pulse1_menubloop:	@ 0x08F7D35C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse1_menubloop_1		@ track

