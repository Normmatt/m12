	.align 2
	@********************** Track  1 **********************@

	.global sfx_noise_hit_1
sfx_noise_hit_1:	@ 0x08F7D094
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x01
	.byte	0xD3
	.byte	0x40
	.byte	0x7F
	.byte	0x84
	.byte	0xD3
	.byte	0x43
	.byte	0x7F
	.byte	0x84
	.byte	0xD5
	.byte	0x3C
	.byte	0x7F
	.byte	0x86
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_noise_hit
sfx_noise_hit:	@ 0x08F7D0AC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_noise_hit_1		@ track

