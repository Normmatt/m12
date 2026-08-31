	.align 2
	@********************** Track  1 **********************@

	.global sfx_noise_stairs_1
sfx_noise_stairs_1:	@ 0x08F7D1F4
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x08
	.byte	0xD0
	.byte	0x45
	.byte	0x7F
	.byte	0x8A
	.byte	0xD0
	.byte	0x45
	.byte	0x6F
	.byte	0x8A
	.byte	0xD0
	.byte	0x45
	.byte	0x5F
	.byte	0x8A
	.byte	0xD0
	.byte	0x45
	.byte	0x4F
	.byte	0x8A
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_noise_stairs
sfx_noise_stairs:	@ 0x08F7D210
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_noise_stairs_1		@ track

