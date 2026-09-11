	.align 2
	@********************** Track  1 **********************@

	.global sfx_noise_fire_1
sfx_noise_fire_1:	@ 0x08F7D164
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x04
	.byte	0xEF
	.byte	0x37
	.byte	0x7F
	.byte	0xA0
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_noise_fire
sfx_noise_fire:	@ 0x08F7D174
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_noise_fire_1		@ track

