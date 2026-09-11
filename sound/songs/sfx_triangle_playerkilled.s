	.align 2
	@********************** Track  1 **********************@

	.global sfx_triangle_playerkilled_1
sfx_triangle_playerkilled_1:	@ 0x08F7D664
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x21
	.byte	0xD4
	.byte	0x40
	.byte	0x7F
	.byte	0x85
	.byte	0xD4
	.byte	0x3F
	.byte	0x7F
	.byte	0x85
	.byte	0xD4
	.byte	0x3E
	.byte	0x7F
	.byte	0x85
	.byte	0xD4
	.byte	0x3D
	.byte	0x7F
	.byte	0x85
	.byte	0xD4
	.byte	0x3C
	.byte	0x7F
	.byte	0x85
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_triangle_playerkilled
sfx_triangle_playerkilled:	@ 0x08F7D684
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_triangle_playerkilled_1		@ track

