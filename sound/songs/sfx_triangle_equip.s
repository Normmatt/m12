	.align 2
	@********************** Track  1 **********************@

	.global sfx_triangle_equip_1
sfx_triangle_equip_1:	@ 0x08F7D690
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x22
	.byte	0xD1
	.byte	0x56
	.byte	0x7F
	.byte	0x88
	.byte	0xD1
	.byte	0x5F
	.byte	0x7F
	.byte	0x88
	.byte	0xB1
	.byte	0x00

	.align 2
	.global sfx_triangle_equip
sfx_triangle_equip:	@ 0x08F7D6A4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_triangle_equip_1		@ track

