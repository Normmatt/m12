	.align 2
	@********************** Track  1 **********************@

	.global mus_empty_ocarina_1
mus_empty_ocarina_1:	@ 0x08F72F84
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x19
	.byte	0xBD
	.byte	0x00
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x56
	.byte	0xC4
	.byte	0x00
	.byte	0xC0
	.byte	0x40
	.byte	0xD0
	.byte	0x53
	.byte	0x64
	.byte	0x98
	.byte	0xD0
	.byte	0x98
	.byte	0xD0
	.byte	0x98
	.byte	0xD0
	.byte	0x98
	.byte	0xD0
	.byte	0x98
	.byte	0xD0
	.byte	0x98
	.byte	0xD0
	.byte	0x98
	.byte	0xD0
	.byte	0x98
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

	.align 2
	.global mus_empty_ocarina
mus_empty_ocarina:	@ 0x08F72FA8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	128		@ reverb

	.word	gUnknown_08F711F0		@ voicegroup/tone

	.word	mus_empty_ocarina_1		@ track
