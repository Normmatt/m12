	.align 2
	@********************** Track  1 **********************@

	.global sfx_triangle_unk02_1
sfx_triangle_unk02_1:	@ 0x08F7D648
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x20
	.byte	0xD4
	.byte	0x3C
	.byte	0x7F
	.byte	0x85
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_triangle_unk02
sfx_triangle_unk02:	@ 0x08F7D658
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_triangle_unk02_1		@ track

