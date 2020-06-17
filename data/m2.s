	.section .data

    .global m2_rom
m2_rom:
    .incbin "baserom.gba", 0x00000000, 0x00F00000

