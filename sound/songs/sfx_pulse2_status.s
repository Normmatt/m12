	.align 2
	@********************** Track  1 **********************@

	.global sfx_pulse2_status_1
sfx_pulse2_status_1:	@ 0x08F7D700
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x2A
	.byte	0xC2
	.byte	0x30
	.byte	0xC4
	.byte	0x10
	.byte	0xF3
	.byte	0x5D
	.byte	0x7F
	.byte	0xA4
	.byte	0xB1

	@********************** Track  2 **********************@

	.global sfx_pulse2_status_2
sfx_pulse2_status_2:	@ 0x08F7D713
	.byte	0xBC
	.byte	0x00
	.byte	0xBE
	.byte	0x7F
	.byte	0xBF
	.byte	0x40
	.byte	0xBD
	.byte	0x34
	.byte	0xC2
	.byte	0x30
	.byte	0xC4
	.byte	0x10
	.byte	0xF3
	.byte	0x5C
	.byte	0x7F
	.byte	0xA4
	.byte	0xB1

	.align 2
	.global sfx_pulse2_status
sfx_pulse2_status:	@ 0x08F7D724
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	100		@ priority
	.byte	0		@ reverb

	.word	gUnknown_08F717F0		@ voicegroup/tone

	.word	sfx_pulse2_status_1		@ track
	.word	sfx_pulse2_status_2		@ track

