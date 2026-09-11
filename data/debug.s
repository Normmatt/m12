	.section .data

@ all of this data is debug monitor rom from is-cgb-emulator
@ how it got onto the retail rom... who knows...
    .global gUnknown_08F7D8A4
gUnknown_08F7D8A4:
    .incbin "baserom.gba", 0x00F7D8A4, 0x8275C
