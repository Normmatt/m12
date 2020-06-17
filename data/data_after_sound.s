	.section .data

    .global gUnknown_08F7D888
gUnknown_08F7D888:
    .ascii "SRAM_V112"
    
    .align 2
    .word sub_8F14E60+1
    .word sub_8F14E84+1
    .word sub_8F14F28+1
    .word sub_8F14F58+1

    .global gUnknown_08F7D8A4
gUnknown_08F7D8A4:
    .incbin "baserom.gba", 0x00F7D8A4, 0x8275C
