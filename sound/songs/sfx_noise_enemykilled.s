	.align 2
	@********************** Track  1 **********************@

	.global sfx_noise_enemykilled_1
sfx_noise_enemykilled_1:	@ 0x08F7D1C0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x06
	.byte	0xD5
	.byte	0x43
	.byte	0x14
	.byte	0x86
	.byte	0xD5
	.byte	0x41
	.byte	0x28
	.byte	0x86
	.byte	0xD5
	.byte	0x3F
	.byte	0x3C
	.byte	0x86
	.byte	0xD5
	.byte	0x3D
	.byte	0x50
	.byte	0x86
	.byte	0xD5
	.byte	0x3B
	.byte	0x64
	.byte	0x86
	.byte	0xD5
	.byte	0x39
	.byte	0x78
	.byte	0x86
	.byte	0xDB
	.byte	0x37
	.byte	0x7F
	.byte	0x8C
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_noise_enemykilled
sfx_noise_enemykilled:	@ 0x08F7D1E8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_noise_enemykilled_1		@ track

