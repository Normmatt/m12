	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse2_dimensionslip_1
sfx_pulse2_dimensionslip_1:	@ 0x08F7D6B0
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xC2
	.byte	0x30
	.byte	0xC4
	.byte	0x10
	.byte	0xBD
	.byte	0x29
	.byte	0xFF
	.byte	0x6C
	.byte	0x7F
	.byte	0xB0
	.byte	0xBD
	.byte	0x2C
	.byte	0xFF
	.byte	0x6C
	.byte	0x7F
	.byte	0xB0
	.byte	0xBD
	.byte	0x2D
	.byte	0xCF
	.byte	0x6C
	.byte	0x7F
	.byte	0xB0
	.byte	0xB0
	.byte	0xCE
	.byte	0x6C
	.byte	0xB1

	@********************** Track  2 **********************@

	.global sfx_pulse2_dimensionslip_2
sfx_pulse2_dimensionslip_2:	@ 0x08F7D6D2
	.byte	0xBC
	.byte	0x00
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x33
	.byte	0xFF
	.byte	0x6B
	.byte	0x7F
	.byte	0xB0
	.byte	0xBD
	.byte	0x36
	.byte	0xFF
	.byte	0x6B
	.byte	0x7F
	.byte	0xB0
	.byte	0xBD
	.byte	0x37
	.byte	0xCF
	.byte	0x6B
	.byte	0x7F
	.byte	0xB0
	.byte	0xB0
	.byte	0xCE
	.byte	0x6B
	.byte	0xB1
	.byte	0x00
	.byte	0x00

	.align 2
	.global sfx_pulse2_dimensionslip
sfx_pulse2_dimensionslip:	@ 0x08F7D6F0
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	101		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse2_dimensionslip_1		@ track
	.word	sfx_pulse2_dimensionslip_2		@ track

