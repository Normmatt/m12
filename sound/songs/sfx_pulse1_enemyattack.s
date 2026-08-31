	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse1_enemyattack_1
sfx_pulse1_enemyattack_1:	@ 0x08F7D2A0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x0B
	.byte	0xC2
	.byte	0x30
	.byte	0xC4
	.byte	0x18
	.byte	0xD7
	.byte	0x48
	.byte	0x7F
	.byte	0x88
	.byte	0xD7
	.byte	0x4C
	.byte	0x40
	.byte	0x88
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_pulse1_enemyattack
sfx_pulse1_enemyattack:	@ 0x08F7D2B8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse1_enemyattack_1		@ track

