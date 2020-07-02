	.section .data
    
    .align 3, 0
    
    .global gUnknown_08F15390
gUnknown_08F15390:
    .incbin "baserom.gba", 0x00F15390, 0x1FF5

    .global gUnknown_08F17385
gUnknown_08F17385:
    .incbin "baserom.gba", 0x00F17385, 0x1ECD

    .global gUnknown_08F19252
gUnknown_08F19252:
    .incbin "baserom.gba", 0x00F19252, 0x28

    .global gUnknown_08F1927A
gUnknown_08F1927A:
    .incbin "baserom.gba", 0x00F1927A, 0x1F96

    .global gUnknown_08F1B210
gUnknown_08F1B210:
    .incbin "baserom.gba", 0x00F1B210, 0x400

    .global gUnknown_08F1B610
gUnknown_08F1B610:
    .incbin "baserom.gba", 0x00F1B610, 0x8

    .global gUnknown_08F1B618
gUnknown_08F1B618:
    .incbin "baserom.gba", 0x00F1B618, 0x10

    .global gUnknown_08F1B628
gUnknown_08F1B628:
    .incbin "baserom.gba", 0x00F1B628, 0x8

    .global gUnknown_08F1B630
gUnknown_08F1B630:
    .incbin "baserom.gba", 0x00F1B630, 0x18

    .global gUnknown_08F1B648
gUnknown_08F1B648:
    .incbin "baserom.gba", 0x00F1B648, 0x18

    .global gUnknown_08F1B660
gUnknown_08F1B660:
    .incbin "baserom.gba", 0x00F1B660, 0x8

    .global gUnknown_08F1B668
gUnknown_08F1B668:
    .incbin "baserom.gba", 0x00F1B668, 0x8

    .global gUnknown_08F1B670
gUnknown_08F1B670:
    .incbin "baserom.gba", 0x00F1B670, 0x4

    .global gUnknown_08F1B674
gUnknown_08F1B674:
    .incbin "baserom.gba", 0x00F1B674, 0x4

    .global gUnknown_08F1B678
gUnknown_08F1B678:
    .incbin "baserom.gba", 0x00F1B678, 0x8

    .align 2
    .global IntrTable
IntrTable:
    .word VblankIntr+1
    .word IntrDummy+1
    .word IntrDummy+1
    .word IntrDummy+1
    .word IntrDummy+1
    .word IntrDummy+1
    .word IntrDummy+1
    .word IntrDummy+1
    .word IntrDummy+1
    .word IntrDummy+1
    .word IntrDummy+1
    .word IntrDummy+1
    .word IntrDummy+1
    .word IntrDummy+1

    .align 2
    .global gUnknown_08F1B6B8
gUnknown_08F1B6B8:
    .word sub_8F033FC+1
    .word sub_8F03400+1
    .word sub_8F03400+1
    .word sub_8F03430+1
    .word sub_8F03460+1
    .word sub_8F033FC+1
    .word sub_8F033FC+1
    .word sub_8F0354C+1
    .word sub_8F037BC+1
    .word sub_8F037C0+1
    .word sub_8F037D0+1
    .word sub_8F037E0+1
    .word sub_8F0381C+1
    .word sub_8F03820+1
    .word sub_8F03830+1
    .word sub_8F03840+1
    .word sub_8F03844+1
    .word sub_8F03850+1
    .word sub_8F03960+1
    .word sub_8F03A70+1
    .word sub_8F03AF0+1
    .word sub_8F03B04+1
    .word sub_8F03B18+1
    .word sub_8F03B2C+1
    .word sub_8F03B40+1
    .word sub_8F03B40+1
    .word sub_8F03B40+1
    .word sub_8F03B40+1
    .word sub_8F03B60+1
    .word sub_8F03B60+1
    .word sub_8F03B60+1
    .word sub_8F03B60+1
    .word sub_8F03B74+1
    .word sub_8F03C20+1
    .word sub_8F03960+1
    .word sub_8F03B40+1
    .word sub_8F03B40+1
    .word sub_8F03B40+1
    .word sub_8F03CBC+1
    .word sub_8F03D64+1
    .word sub_8F03EA0+1
    .word sub_8F03EB4+1
    .word sub_8F03EE0+1
    .word sub_8F03F10+1
    .word sub_8F03F28+1
    .word sub_8F03B60+1
    .word sub_8F033FC+1

    .align 2
    .global gUnknown_08F1B774
gUnknown_08F1B774:
    .word sub_8F04DA4+1
    .word sub_8F04DB0+1
    .word sub_8F04DD0+1
    .word sub_8F04E70+1
    .word sub_8F04E7C+1
    .word sub_8F04EB8+1
    .word sub_8F04EC8+1
    .word sub_8F04DA4+1
    .word sub_8F04ED8+1
    .word sub_8F04FC4+1
    .word sub_8F05008+1
    .word sub_8F05030+1
    .word sub_8F05058+1
    .word sub_8F05094+1
    .word sub_8F050CC+1
    .word sub_8F050D8+1
    .word sub_8F050E8+1
    .word sub_8F05118+1
    .word sub_8F05148+1
    .word sub_8F0518C+1
    .word sub_8F051B0+1
    .word sub_8F051D4+1
    .word sub_8F051F8+1
    .word sub_8F05234+1
    .word sub_8F05254+1
    .word sub_8F0529C+1
    .word sub_8F052B4+1
    .word sub_8F052E0+1
    .word sub_8F0530C+1
    .word sub_8F0533C+1
    .word sub_8F05368+1
    .word sub_8F0539C+1
    .word sub_8F053B8+1
    .word sub_8F05410+1
    .word sub_8F05458+1
    .word sub_8F054BC+1
    .word sub_8F05530+1
    .word sub_8F05594+1
    .word sub_8F055CC+1
    .word sub_8F055F8+1
    .word sub_8F05690+1
    .word sub_8F056C8+1
    .word sub_8F056FC+1
    .word sub_8F05748+1
    .word sub_8F05790+1
    .word sub_8F057D4+1
    .word sub_8F05828+1
    .word sub_8F05850+1
    .word sub_8F05890+1
    .word sub_8F058F0+1
    .word sub_8F0593C+1
    .word sub_8F05974+1
    .word sub_8F059C0+1
    .word sub_8F059E8+1
    .word sub_8F05A10+1
    .word sub_8F05A44+1
    .word sub_8F05A98+1
    .word sub_8F05ADC+1
    .word sub_8F05B08+1
    .word sub_8F05B40+1
    .word sub_8F05B74+1
    .word sub_8F05B8C+1
    .word sub_8F05C28+1
    .word sub_8F05DA0+1
    .word sub_8F05DD8+1
    .word sub_8F05E00+1
    .word sub_8F05E5C+1
    .word sub_8F05EB4+1
    .word sub_8F05F30+1
    .word sub_8F05F7C+1
    .word sub_8F05FD8+1
    .word sub_8F06010+1
    .word sub_8F06060+1
    .word sub_8F060E0+1
    .word sub_8F06180+1
    .word sub_8F0619C+1
    .word sub_8F061D4+1
    .word sub_8F06270+1
    .word sub_8F06288+1
    .word sub_8F06294+1
    .word sub_8F062E8+1
    .word sub_8F06324+1
    .word sub_8F06378+1
    .word sub_8F063B8+1
    .word sub_8F06434+1
    .word sub_8F06474+1
    .word sub_8F06490+1
    .word sub_8F0651C+1
    .word sub_8F065F8+1
    .word sub_8F0660C+1
    .word sub_8F06638+1
    .word sub_8F06650+1
    .word sub_8F06668+1
    .word sub_8F06680+1
    .word sub_8F04DA4+1
    .word sub_8F06698+1
    .word sub_8F066B4+1
    .word sub_8F066F0+1
    .word sub_8F06744+1
    .word sub_8F06784+1
    .word sub_8F067C4+1
    .word sub_8F06B00+1
    .word sub_8F06B48+1
    .word sub_8F06B78+1
    .word sub_8F06BA4+1
    .word sub_8F06C2C+1
    .word sub_8F06C60+1
    .word sub_8F06E0C+1
    .word sub_8F06E10+1
    .word sub_8F06E20+1
    .word sub_8F06E34+1
    .word sub_8F06E48+1
    .word sub_8F06E6C+1

    .align 2
    .global gUnknown_08F1B938
gUnknown_08F1B938:
    .word sub_8F08094+1
    .word sub_8F080A4+1
    .word sub_8F08094+1
    .word sub_8F08094+1
    .word sub_8F08094+1
    .word sub_8F081B4+1
    .word sub_8F082B0+1
    .word sub_8F080A4+1
    .word sub_8F082D0+1
    .word sub_8F08094+1
    .word sub_8F082F8+1
    .word sub_8F08310+1
    .word sub_8F0831C+1
    .word sub_8F08334+1
    .word sub_8F08340+1
    .word sub_8F08358+1
    .word sub_8F08374+1
    .word sub_8F0847C+1
    .word sub_8F08490+1
    .word sub_8F084A4+1
    .word sub_8F0854C+1
    .word sub_8F08560+1
    .word sub_8F08574+1
    .word sub_8F08584+1
    .word sub_8F08594+1
    .word sub_8F085A4+1
    .word sub_8F085B4+1
    .word sub_8F085C4+1
    .word sub_8F08094+1
    .word sub_8F08094+1
    .word sub_8F085D4+1
    .word sub_8F08664+1
    .word sub_8F087D8+1
    .word sub_8F087E8+1
    .word sub_8F087F8+1
    .word sub_8F08AB8+1
    .word sub_8F08C44+1
    .word sub_8F08C5C+1
    .word sub_8F08D70+1
    .word sub_8F08DC0+1
    .word sub_8F08DCC+1
    .word sub_8F08DD8+1
    .word sub_8F08DE8+1
    .word sub_8F08C44+1
    .word sub_8F08DFC+1
    .word sub_8F08E10+1
    .word sub_8F08AE8+1
    .word sub_8F08B74+1

    .global gUnknown_08F1B9F8
gUnknown_08F1B9F8:
    .incbin "baserom.gba", 0x00F1B9F8, 0x35

    .global gUnknown_08F1BA2D
gUnknown_08F1BA2D:
    .incbin "baserom.gba", 0x00F1BA2D, 0xF

    .global gUnknown_08F1BA3C
gUnknown_08F1BA3C:
    .incbin "baserom.gba", 0x00F1BA3C, 0x13

    .global gUnknown_08F1BA4F
gUnknown_08F1BA4F:
    .incbin "baserom.gba", 0x00F1BA4F, 0x5

    .global gUnknown_08F1BA54
gUnknown_08F1BA54:
    .incbin "baserom.gba", 0x00F1BA54, 0x7

    .global gUnknown_08F1BA5B
gUnknown_08F1BA5B:
    .incbin "baserom.gba", 0x00F1BA5B, 0x6D

    .global gUnknown_08F1BAC8
gUnknown_08F1BAC8:
    .incbin "baserom.gba", 0x00F1BAC8, 0x8

    .global gUnknown_08F1BAD0
gUnknown_08F1BAD0:
    .incbin "baserom.gba", 0x00F1BAD0, 0x8

    .global gUnknown_08F1BAD8
gUnknown_08F1BAD8:
    .incbin "baserom.gba", 0x00F1BAD8, 0x10

    .global gUnknown_08F1BAE8
gUnknown_08F1BAE8:
    .incbin "baserom.gba", 0x00F1BAE8, 0x10

    .global gUnknown_08F1BAF8
gUnknown_08F1BAF8:
    .incbin "baserom.gba", 0x00F1BAF8, 0x10

    .global gUnknown_08F1BB08
gUnknown_08F1BB08:
    .incbin "baserom.gba", 0x00F1BB08, 0x10

    .global gUnknown_08F1BB18
gUnknown_08F1BB18:
    .incbin "baserom.gba", 0x00F1BB18, 0x10

    .global gUnknown_08F1BB28
gUnknown_08F1BB28:
    .incbin "baserom.gba", 0x00F1BB28, 0x20

    .global gUnknown_08F1BB48
gUnknown_08F1BB48:
    .incbin "baserom.gba", 0x00F1BB48, 0x8

    .global gUnknown_08F1BB50
gUnknown_08F1BB50:
    .incbin "baserom.gba", 0x00F1BB50, 0x40

    .global gUnknown_08F1BB90
gUnknown_08F1BB90:
    .incbin "baserom.gba", 0x00F1BB90, 0xC8

    .global gUnknown_08F1BC58
gUnknown_08F1BC58:
    .incbin "baserom.gba", 0x00F1BC58, 0x8

    .global gUnknown_08F1BC60
gUnknown_08F1BC60:
    .incbin "baserom.gba", 0x00F1BC60, 0x10

    .global gUnknown_08F1BC70
gUnknown_08F1BC70:
    .incbin "baserom.gba", 0x00F1BC70, 0x10

    .global gUnknown_08F1BC80
gUnknown_08F1BC80:
    .incbin "baserom.gba", 0x00F1BC80, 0x10

    .global gUnknown_08F1BC90
gUnknown_08F1BC90:
    .incbin "baserom.gba", 0x00F1BC90, 0x20

    .global gUnknown_08F1BCB0
gUnknown_08F1BCB0:
    .incbin "baserom.gba", 0x00F1BCB0, 0x8

    .global gUnknown_08F1BCB8
gUnknown_08F1BCB8:
    .incbin "baserom.gba", 0x00F1BCB8, 0x4

    .align 2
    .global gUnknown_08F1BCBC
gUnknown_08F1BCBC:
    .word gUnknown_08F5FF1C @ 0 / 0x0
    .word gUnknown_08F6031C @ 1 / 0x1
    .word gUnknown_08F6071C @ 2 / 0x2
    
    .align 2
    .global gUnknown_08F1BCC8
gUnknown_08F1BCC8:
    .word gUnknown_08F60B1C @ 0 / 0x0
    .word gUnknown_08F60F1C @ 1 / 0x1
    .word gUnknown_08F6131C @ 2 / 0x2
    
    .align 2
    .global gUnknown_08F1BCD4
gUnknown_08F1BCD4:
    .word gUnknown_08F6171C @ 0 / 0x0
    .word gUnknown_08F61B1C @ 1 / 0x1
    .word gUnknown_08F61F1C @ 2 / 0x2
    
    .align 2
    .global gUnknown_08F1BCE0
gUnknown_08F1BCE0:
    .word gUnknown_08F6231C @ 0 / 0x0
    .word gUnknown_08F6271C @ 1 / 0x1
    .word gUnknown_08F62B1C @ 2 / 0x2

    .include "data/main_strings.inc"
    
    .global gUnknown_08F29C80
gUnknown_08F29C80:
    .incbin "baserom.gba", 0x00F29C80, 0x204

    .global gUnknown_08F29E84
gUnknown_08F29E84:
    .incbin "baserom.gba", 0x00F29E84, 0x4

    .global gUnknown_08F29E88
gUnknown_08F29E88:
    .incbin "baserom.gba", 0x00F29E88, 0x28

    .global gUnknown_08F29EB0
gUnknown_08F29EB0:
    .incbin "baserom.gba", 0x00F29EB0, 0x50

    .align 2
    .global gUnknown_08F29F00
gUnknown_08F29F00:
    .word gUnknown_08F275E4 @ 0 / 0x0
    .word 0x00000000        @ 1 / 0x1
    .word gUnknown_08F2763A @ 2 / 0x2
    .word gUnknown_08F2771E @ 3 / 0x3
    .word gUnknown_08F27885 @ 4 / 0x4
    .word 0x00000000        @ 5 / 0x5
    .word 0x00000000        @ 6 / 0x6
    .word gUnknown_08F2761D @ 7 / 0x7
    .word gUnknown_08F277F1 @ 8 / 0x8
    .word gUnknown_08F27884 @ 9 / 0x9
    .word gUnknown_08F27740 @ 10 / 0xA
    .word gUnknown_08F2776E @ 11 / 0xB
    .word gUnknown_08F277EA @ 12 / 0xC
    .word gUnknown_08F277FB @ 13 / 0xD
    .word gUnknown_08F277A8 @ 14 / 0xE
    .word gUnknown_08F277F8 @ 15 / 0xF
    .word gUnknown_08F277FE @ 16 / 0x10
    .word gUnknown_08F2782B @ 17 / 0x11
    .word gUnknown_08F277E2 @ 18 / 0x12
    .word gUnknown_08F276AC @ 19 / 0x13
    .word gUnknown_08F27858 @ 20 / 0x14
    .word gUnknown_08F2788D @ 21 / 0x15

    .global gUnknown_08F29F58
gUnknown_08F29F58:
    .incbin "baserom.gba", 0x00F29F58, 0x8

    .global gUnknown_08F29F60
gUnknown_08F29F60:
    .incbin "baserom.gba", 0x00F29F60, 0x8

    .global gUnknown_08F29F68
gUnknown_08F29F68:
    .incbin "baserom.gba", 0x00F29F68, 0x8

    .global gUnknown_08F29F70
gUnknown_08F29F70:
    .incbin "baserom.gba", 0x00F29F70, 0x8

    .global gUnknown_08F29F78
gUnknown_08F29F78:
    .incbin "baserom.gba", 0x00F29F78, 0xC

    .global gUnknown_08F29F84
gUnknown_08F29F84:
    .incbin "baserom.gba", 0x00F29F84, 0x1C

    .global gUnknown_08F29FA0
gUnknown_08F29FA0:
    .incbin "baserom.gba", 0x00F29FA0, 0xC

    .global gUnknown_08F29FAC
gUnknown_08F29FAC:
    .incbin "baserom.gba", 0x00F29FAC, 0x8

    .global gUnknown_08F29FB4
gUnknown_08F29FB4:
    .incbin "baserom.gba", 0x00F29FB4, 0x18

    .global gUnknown_08F29FCC
gUnknown_08F29FCC:
    .incbin "baserom.gba", 0x00F29FCC, 0x10

    .global gUnknown_08F29FDC
gUnknown_08F29FDC:
    .incbin "baserom.gba", 0x00F29FDC, 0x14

    .global gUnknown_08F29FF0
gUnknown_08F29FF0:
    .incbin "baserom.gba", 0x00F29FF0, 0x84

    .global gUnknown_08F2A074
gUnknown_08F2A074:
    .incbin "baserom.gba", 0x00F2A074, 0x40

    .global gUnknown_08F2A0B4
gUnknown_08F2A0B4:
    .incbin "baserom.gba", 0x00F2A0B4, 0x10

    .global gUnknown_08F2A0C4
gUnknown_08F2A0C4:
    .incbin "baserom.gba", 0x00F2A0C4, 0xC

    .global gUnknown_08F2A0D0
gUnknown_08F2A0D0:
    .incbin "baserom.gba", 0x00F2A0D0, 0x10

    .global gUnknown_08F2A0E0
gUnknown_08F2A0E0:
    .incbin "baserom.gba", 0x00F2A0E0, 0x10

    .global gUnknown_08F2A0F0
gUnknown_08F2A0F0:
    .incbin "baserom.gba", 0x00F2A0F0, 0x180

    .global gUnknown_08F2A270
gUnknown_08F2A270:
    .incbin "baserom.gba", 0x00F2A270, 0xC

    .global gUnknown_08F2A27C
gUnknown_08F2A27C:
    .incbin "baserom.gba", 0x00F2A27C, 0x324

    .global gUnknown_08F2A5A0
gUnknown_08F2A5A0:
    .incbin "baserom.gba", 0x00F2A5A0, 0x1400

    .global gUnknown_08F2B9A0
gUnknown_08F2B9A0:
    .incbin "baserom.gba", 0x00F2B9A0, 0x400

    .global gUnknown_08F2BDA0
gUnknown_08F2BDA0:
    .incbin "baserom.gba", 0x00F2BDA0, 0x400

    .global gUnknown_08F2C1A0
gUnknown_08F2C1A0:
    .incbin "baserom.gba", 0x00F2C1A0, 0x400

    .global gUnknown_08F2C5A0
gUnknown_08F2C5A0:
    .incbin "baserom.gba", 0x00F2C5A0, 0x400

    .global gUnknown_08F2C9A0
gUnknown_08F2C9A0:
    .incbin "baserom.gba", 0x00F2C9A0, 0x400

    .global gUnknown_08F2CDA0
gUnknown_08F2CDA0:
    .incbin "baserom.gba", 0x00F2CDA0, 0x400

    .global gUnknown_08F2D1A0
gUnknown_08F2D1A0:
    .incbin "baserom.gba", 0x00F2D1A0, 0x400

    .global gUnknown_08F2D5A0
gUnknown_08F2D5A0:
    .incbin "baserom.gba", 0x00F2D5A0, 0x400

    .global gUnknown_08F2D9A0
gUnknown_08F2D9A0:
    .incbin "baserom.gba", 0x00F2D9A0, 0x400

    .global gUnknown_08F2DDA0
gUnknown_08F2DDA0:
    .incbin "baserom.gba", 0x00F2DDA0, 0x400

    .global gUnknown_08F2E1A0
gUnknown_08F2E1A0:
    .incbin "baserom.gba", 0x00F2E1A0, 0x400

    .global gUnknown_08F2E5A0
gUnknown_08F2E5A0:
    .incbin "baserom.gba", 0x00F2E5A0, 0x400

    .global gUnknown_08F2E9A0
gUnknown_08F2E9A0:
    .incbin "baserom.gba", 0x00F2E9A0, 0x400

    .global gUnknown_08F2EDA0
gUnknown_08F2EDA0:
    .incbin "baserom.gba", 0x00F2EDA0, 0x400

    .global gUnknown_08F2F1A0
gUnknown_08F2F1A0:
    .incbin "baserom.gba", 0x00F2F1A0, 0x400

    .global gUnknown_08F2F5A0
gUnknown_08F2F5A0:
    .incbin "baserom.gba", 0x00F2F5A0, 0x400

    .global gUnknown_08F2F9A0
gUnknown_08F2F9A0:
    .incbin "baserom.gba", 0x00F2F9A0, 0x400

    .global gUnknown_08F2FDA0
gUnknown_08F2FDA0:
    .incbin "baserom.gba", 0x00F2FDA0, 0x400

    .global gUnknown_08F301A0
gUnknown_08F301A0:
    .incbin "baserom.gba", 0x00F301A0, 0x400

    .global gUnknown_08F305A0
gUnknown_08F305A0:
    .incbin "baserom.gba", 0x00F305A0, 0x400

    .global gUnknown_08F309A0
gUnknown_08F309A0:
    .incbin "baserom.gba", 0x00F309A0, 0x400

    .global gUnknown_08F30DA0
gUnknown_08F30DA0:
    .incbin "baserom.gba", 0x00F30DA0, 0x400

    .global gUnknown_08F311A0
gUnknown_08F311A0:
    .incbin "baserom.gba", 0x00F311A0, 0x400

    .global gUnknown_08F315A0
gUnknown_08F315A0:
    .incbin "baserom.gba", 0x00F315A0, 0x400

    .global gUnknown_08F319A0
gUnknown_08F319A0:
    .incbin "baserom.gba", 0x00F319A0, 0x400

    .global gUnknown_08F31DA0
gUnknown_08F31DA0:
    .incbin "baserom.gba", 0x00F31DA0, 0x400

    .global gUnknown_08F321A0
gUnknown_08F321A0:
    .incbin "baserom.gba", 0x00F321A0, 0x400

    .global gUnknown_08F325A0
gUnknown_08F325A0:
    .incbin "baserom.gba", 0x00F325A0, 0x400

    .global gUnknown_08F329A0
gUnknown_08F329A0:
    .incbin "baserom.gba", 0x00F329A0, 0x400

    .global gUnknown_08F32DA0
gUnknown_08F32DA0:
    .incbin "baserom.gba", 0x00F32DA0, 0x400

    .global gUnknown_08F331A0
gUnknown_08F331A0:
    .incbin "baserom.gba", 0x00F331A0, 0x400

    .global gUnknown_08F335A0
gUnknown_08F335A0:
    .incbin "baserom.gba", 0x00F335A0, 0x400

    .global gUnknown_08F339A0
gUnknown_08F339A0:
    .incbin "baserom.gba", 0x00F339A0, 0x800

    .global gUnknown_08F341A0
gUnknown_08F341A0:
    .incbin "baserom.gba", 0x00F341A0, 0x800

    .global gUnknown_08F349A0
gUnknown_08F349A0:
    .incbin "baserom.gba", 0x00F349A0, 0x800

    .global gUnknown_08F351A0
gUnknown_08F351A0:
    .incbin "baserom.gba", 0x00F351A0, 0x800

    .global gUnknown_08F359A0
gUnknown_08F359A0:
    .incbin "baserom.gba", 0x00F359A0, 0x800

    .global gUnknown_08F361A0
gUnknown_08F361A0:
    .incbin "baserom.gba", 0x00F361A0, 0x800

    .global gUnknown_08F369A0
gUnknown_08F369A0:
    .incbin "baserom.gba", 0x00F369A0, 0x800

    .global gUnknown_08F371A0
gUnknown_08F371A0:
    .incbin "baserom.gba", 0x00F371A0, 0x800

    .global gUnknown_08F379A0
gUnknown_08F379A0:
    .incbin "baserom.gba", 0x00F379A0, 0x800

    .global gUnknown_08F381A0
gUnknown_08F381A0:
    .incbin "baserom.gba", 0x00F381A0, 0x800

    .global gUnknown_08F389A0
gUnknown_08F389A0:
    .incbin "baserom.gba", 0x00F389A0, 0x800

    .global gUnknown_08F391A0
gUnknown_08F391A0:
    .incbin "baserom.gba", 0x00F391A0, 0x4000

    .global gUnknown_08F3D1A0
gUnknown_08F3D1A0:
    .incbin "baserom.gba", 0x00F3D1A0, 0x4000

    .global gUnknown_08F411A0
gUnknown_08F411A0:
    .incbin "baserom.gba", 0x00F411A0, 0x4000

    .global gUnknown_08F451A0
gUnknown_08F451A0:
    .incbin "baserom.gba", 0x00F451A0, 0x4000

    .global gUnknown_08F491A0
gUnknown_08F491A0:
    .incbin "baserom.gba", 0x00F491A0, 0x4000

    .global gUnknown_08F4D1A0
gUnknown_08F4D1A0:
    .incbin "baserom.gba", 0x00F4D1A0, 0x4000

    .global gUnknown_08F511A0
gUnknown_08F511A0:
    .incbin "baserom.gba", 0x00F511A0, 0x1400

    .global gUnknown_08F525A0
gUnknown_08F525A0:
    .incbin "baserom.gba", 0x00F525A0, 0x2C00

    .global gUnknown_08F551A0
gUnknown_08F551A0:
    .incbin "baserom.gba", 0x00F551A0, 0x4000

    .global gUnknown_08F591A0
gUnknown_08F591A0:
    .incbin "baserom.gba", 0x00F591A0, 0x200

    .global gUnknown_08F593A0
gUnknown_08F593A0:
    .incbin "baserom.gba", 0x00F593A0, 0x200

    .global gUnknown_08F595A0
gUnknown_08F595A0:
    .incbin "baserom.gba", 0x00F595A0, 0x297C

    .global gUnknown_08F5BF1C
gUnknown_08F5BF1C:
    .incbin "baserom.gba", 0x00F5BF1C, 0x2

    .global gUnknown_08F5BF1E
gUnknown_08F5BF1E:
    .incbin "baserom.gba", 0x00F5BF1E, 0x3F8

    .global gUnknown_08F5C316
gUnknown_08F5C316:
    .incbin "baserom.gba", 0x00F5C316, 0x6

    .global gUnknown_08F5C31C
gUnknown_08F5C31C:
    .incbin "baserom.gba", 0x00F5C31C, 0x200

    .global gUnknown_08F5C51C
gUnknown_08F5C51C:
    .incbin "baserom.gba", 0x00F5C51C, 0x200

    .global gUnknown_08F5C71C
gUnknown_08F5C71C:
    .incbin "baserom.gba", 0x00F5C71C, 0x400

    .global gUnknown_08F5CB1C
gUnknown_08F5CB1C:
    .incbin "baserom.gba", 0x00F5CB1C, 0xC00

    .global gUnknown_08F5D71C
gUnknown_08F5D71C:
    .incbin "baserom.gba", 0x00F5D71C, 0x400

    .global gUnknown_08F5DB1C
gUnknown_08F5DB1C:
    .incbin "baserom.gba", 0x00F5DB1C, 0x400

    .global gUnknown_08F5DF1C
gUnknown_08F5DF1C:
    .incbin "baserom.gba", 0x00F5DF1C, 0x1000

    .global gUnknown_08F5EF1C
gUnknown_08F5EF1C:
    .incbin "baserom.gba", 0x00F5EF1C, 0x1000

    .global gUnknown_08F5FF1C
gUnknown_08F5FF1C:
    .incbin "baserom.gba", 0x00F5FF1C, 0x400

    .global gUnknown_08F6031C
gUnknown_08F6031C:
    .incbin "baserom.gba", 0x00F6031C, 0x400

    .global gUnknown_08F6071C
gUnknown_08F6071C:
    .incbin "baserom.gba", 0x00F6071C, 0x400

    .global gUnknown_08F60B1C
gUnknown_08F60B1C:
    .incbin "baserom.gba", 0x00F60B1C, 0x400

    .global gUnknown_08F60F1C
gUnknown_08F60F1C:
    .incbin "baserom.gba", 0x00F60F1C, 0x400

    .global gUnknown_08F6131C
gUnknown_08F6131C:
    .incbin "baserom.gba", 0x00F6131C, 0x400

    .global gUnknown_08F6171C
gUnknown_08F6171C:
    .incbin "baserom.gba", 0x00F6171C, 0x400

    .global gUnknown_08F61B1C
gUnknown_08F61B1C:
    .incbin "baserom.gba", 0x00F61B1C, 0x400

    .global gUnknown_08F61F1C
gUnknown_08F61F1C:
    .incbin "baserom.gba", 0x00F61F1C, 0x400

    .global gUnknown_08F6231C
gUnknown_08F6231C:
    .incbin "baserom.gba", 0x00F6231C, 0x400

    .global gUnknown_08F6271C
gUnknown_08F6271C:
    .incbin "baserom.gba", 0x00F6271C, 0x400

    .global gUnknown_08F62B1C
gUnknown_08F62B1C:
    .incbin "baserom.gba", 0x00F62B1C, 0x400

    .global gUnknown_08F62F1C
gUnknown_08F62F1C:
    .incbin "baserom.gba", 0x00F62F1C, 0x800

    .global gUnknown_08F6371C
gUnknown_08F6371C:
    .incbin "baserom.gba", 0x00F6371C, 0x300

    .global gUnknown_08F63A1C
gUnknown_08F63A1C:
    .incbin "baserom.gba", 0x00F63A1C, 0x800

    .global gUnknown_08F6421C
gUnknown_08F6421C:
    .incbin "baserom.gba", 0x00F6421C, 0x200

    .global gNESPalette
gNESPalette:
    .incbin "data/nes_palette.gbapal"

    .align 2
    .global gUnknown_08F6449C
gUnknown_08F6449C:
    .word gUnknown_08F2B9A0 @ 0 / 0x0
    .word gUnknown_08F2BDA0 @ 1 / 0x1
    .word gUnknown_08F2C1A0 @ 2 / 0x2
    .word gUnknown_08F2C5A0 @ 3 / 0x3
    .word gUnknown_08F2C9A0 @ 4 / 0x4
    .word gUnknown_08F2CDA0 @ 5 / 0x5
    .word gUnknown_08F2D1A0 @ 6 / 0x6
    .word gUnknown_08F2D5A0 @ 7 / 0x7
    .word gUnknown_08F2D9A0 @ 8 / 0x8
    .word gUnknown_08F2DDA0 @ 9 / 0x9
    .word gUnknown_08F2E1A0 @ 10 / 0xA
    .word gUnknown_08F2E5A0 @ 11 / 0xB
    .word gUnknown_08F2E9A0 @ 12 / 0xC
    .word gUnknown_08F2EDA0 @ 13 / 0xD
    .word gUnknown_08F2F1A0 @ 14 / 0xE
    .word gUnknown_08F2F5A0 @ 15 / 0xF
    .word gUnknown_08F2F9A0 @ 16 / 0x10
    .word gUnknown_08F2FDA0 @ 17 / 0x11
    .word gUnknown_08F301A0 @ 18 / 0x12
    .word gUnknown_08F305A0 @ 19 / 0x13
    .word gUnknown_08F309A0 @ 20 / 0x14
    .word gUnknown_08F30DA0 @ 21 / 0x15
    .word gUnknown_08F311A0 @ 22 / 0x16
    .word gUnknown_08F315A0 @ 23 / 0x17
    .word gUnknown_08F319A0 @ 24 / 0x18
    .word gUnknown_08F31DA0 @ 25 / 0x19
    .word gUnknown_08F321A0 @ 26 / 0x1A
    .word gUnknown_08F325A0 @ 27 / 0x1B
    .word gUnknown_08F329A0 @ 28 / 0x1C
    .word gUnknown_08F32DA0 @ 29 / 0x1D
    .word gUnknown_08F331A0 @ 30 / 0x1E
    .word gUnknown_08F335A0 @ 31 / 0x1F

    .align 2
    .global gUnknown_08F6451C
gUnknown_08F6451C:
    .word gUnknown_08F391A0 @ 0 / 0x0
    .word gUnknown_08F3D1A0 @ 1 / 0x1
    .word gUnknown_08F411A0 @ 2 / 0x2
    .word gUnknown_08F451A0 @ 3 / 0x3
    .word gUnknown_08F491A0 @ 4 / 0x4
    .word gUnknown_08F4D1A0 @ 5 / 0x5
    .word gUnknown_08F511A0 @ 6 / 0x6
    .word gUnknown_08F551A0 @ 7 / 0x7

    .align 2
    .global gUnknown_08F6453C
gUnknown_08F6453C:
    .word gUnknown_08F341A0 @ 0 / 0x0
    .word gUnknown_08F349A0 @ 1 / 0x1
    .word gUnknown_08F351A0 @ 2 / 0x2
    .word gUnknown_08F359A0 @ 3 / 0x3
    .word gUnknown_08F361A0 @ 4 / 0x4
    .word gUnknown_08F369A0 @ 5 / 0x5
    .word gUnknown_08F371A0 @ 6 / 0x6
    .word gUnknown_08F379A0 @ 7 / 0x7
    .word gUnknown_08F381A0 @ 8 / 0x8
    .word gUnknown_08F389A0 @ 9 / 0x9

    .global gUnknown_08F64564
gUnknown_08F64564:
    .incbin "baserom.gba", 0x00F64564, 0x10

    .global gUnknown_08F64574
gUnknown_08F64574:
    .incbin "baserom.gba", 0x00F64574, 0x40

    .global gUnknown_08F645B4
gUnknown_08F645B4:
    .incbin "baserom.gba", 0x00F645B4, 0x5E

    .global gUnknown_08F64612
gUnknown_08F64612:
    .incbin "baserom.gba", 0x00F64612, 0x1CAE

    .global gUnknown_08F662C0
gUnknown_08F662C0:
    .incbin "baserom.gba", 0x00F662C0, 0xA

    .global gUnknown_08F662CA
gUnknown_08F662CA:
    .incbin "baserom.gba", 0x00F662CA, 0x16

    .global gUnknown_08F662E0
gUnknown_08F662E0:
    .incbin "baserom.gba", 0x00F662E0, 0xC

    .global gUnknown_08F662EC
gUnknown_08F662EC:
    .incbin "baserom.gba", 0x00F662EC, 0x18

    .global gUnknown_08F66304
gUnknown_08F66304:
    .incbin "baserom.gba", 0x00F66304, 0x42

    .global gUnknown_08F66346
gUnknown_08F66346:
    .incbin "baserom.gba", 0x00F66346, 0x8

    .global gUnknown_08F6634E
gUnknown_08F6634E:
    .incbin "baserom.gba", 0x00F6634E, 0x80

    .global gUnknown_08F663CE
gUnknown_08F663CE:
    .incbin "baserom.gba", 0x00F663CE, 0x672

    .global gUnknown_08F66A40
gUnknown_08F66A40:
    .incbin "baserom.gba", 0x00F66A40, 0x200

    .global gUnknown_08F66C40
gUnknown_08F66C40:
    .incbin "baserom.gba", 0x00F66C40, 0x43

    .global gUnknown_08F66C83
gUnknown_08F66C83:
    .incbin "baserom.gba", 0x00F66C83, 0x33

    .global gUnknown_08F66CB6
gUnknown_08F66CB6:
    .incbin "baserom.gba", 0x00F66CB6, 0x33

    .global gUnknown_08F66CE9
gUnknown_08F66CE9:
    .incbin "baserom.gba", 0x00F66CE9, 0x27

    .global gUnknown_08F66D10
gUnknown_08F66D10:
    .incbin "baserom.gba", 0x00F66D10, 0x1F

    .global gUnknown_08F66D2F
gUnknown_08F66D2F:
    .incbin "baserom.gba", 0x00F66D2F, 0x1B

    .global gUnknown_08F66D4A
gUnknown_08F66D4A:
    .incbin "baserom.gba", 0x00F66D4A, 0x1B

    .global gUnknown_08F66D65
gUnknown_08F66D65:
    .incbin "baserom.gba", 0x00F66D65, 0x1B

    .global gUnknown_08F66D80
gUnknown_08F66D80:
    .incbin "baserom.gba", 0x00F66D80, 0x13

    .global gUnknown_08F66D93
gUnknown_08F66D93:
    .incbin "baserom.gba", 0x00F66D93, 0xF

    .global gUnknown_08F66DA2
gUnknown_08F66DA2:
    .incbin "baserom.gba", 0x00F66DA2, 0xF

    .global gUnknown_08F66DB1
gUnknown_08F66DB1:
    .incbin "baserom.gba", 0x00F66DB1, 0xF

    .global gUnknown_08F66DC0
gUnknown_08F66DC0:
    .incbin "baserom.gba", 0x00F66DC0, 0xB

    .global gUnknown_08F66DCB
gUnknown_08F66DCB:
    .incbin "baserom.gba", 0x00F66DCB, 0x13

    .global gUnknown_08F66DDE
gUnknown_08F66DDE:
    .incbin "baserom.gba", 0x00F66DDE, 0x5A

    .global gUnknown_08F66E38
gUnknown_08F66E38:
    .incbin "baserom.gba", 0x00F66E38, 0x44

    .global gUnknown_08F66E7C
gUnknown_08F66E7C:
    .incbin "baserom.gba", 0x00F66E7C, 0x15A

    .global gUnknown_08F66FD6
gUnknown_08F66FD6:
    .incbin "baserom.gba", 0x00F66FD6, 0x2

    .global gUnknown_08F66FD8
gUnknown_08F66FD8:
    .word sub_8F0F560+1
    .word sub_8F0F570+1
    .word sub_8F0F734+1
    .word sub_8F0F820+1
    .word sub_8F1129C+1
    .word sub_8F0F940+1
    .word sub_8F0FA90+1
    .word sub_8F0FD24+1
    .word sub_8F0FD44+1
    .word sub_8F100A0+1
    .word sub_8F100BC+1
    .word sub_8F100F4+1
    .word sub_8F0F890+1

    .global gUnknown_08F6700C
gUnknown_08F6700C:
    .incbin "baserom.gba", 0x00F6700C, 0x24

    .global gUnknown_08F67030
gUnknown_08F67030:
    .incbin "baserom.gba", 0x00F67030, 0x8

    .global gUnknown_08F67038
gUnknown_08F67038:
    .incbin "baserom.gba", 0x00F67038, 0x24

    .global gUnknown_08F6705C
gUnknown_08F6705C:
    .incbin "baserom.gba", 0x00F6705C, 0x24

    .global gUnknown_08F67080
gUnknown_08F67080:
    .incbin "baserom.gba", 0x00F67080, 0x800

    .global gUnknown_08F67880
gUnknown_08F67880:
    .incbin "baserom.gba", 0x00F67880, 0x400

    .global gUnknown_08F67C80
gUnknown_08F67C80:
    .incbin "baserom.gba", 0x00F67C80, 0x400

    .global gUnknown_08F68080
gUnknown_08F68080:
    .incbin "baserom.gba", 0x00F68080, 0x400

    .global gUnknown_08F68480
gUnknown_08F68480:
    .incbin "baserom.gba", 0x00F68480, 0x400

    .global gUnknown_08F68880
gUnknown_08F68880:
    .incbin "baserom.gba", 0x00F68880, 0x400

    .global gUnknown_08F68C80
gUnknown_08F68C80:
    .incbin "baserom.gba", 0x00F68C80, 0x400

    .global gUnknown_08F69080
gUnknown_08F69080:
    .incbin "baserom.gba", 0x00F69080, 0x400

    .global gUnknown_08F69480
gUnknown_08F69480:
    .incbin "baserom.gba", 0x00F69480, 0x400

    .global gUnknown_08F69880
gUnknown_08F69880:
    .incbin "baserom.gba", 0x00F69880, 0x400

    .global gUnknown_08F69C80
gUnknown_08F69C80:
    .incbin "baserom.gba", 0x00F69C80, 0x400

    .global gUnknown_08F6A080
gUnknown_08F6A080:
    .incbin "baserom.gba", 0x00F6A080, 0x400

    .global gUnknown_08F6A480
gUnknown_08F6A480:
    .incbin "baserom.gba", 0x00F6A480, 0x400

    .global gUnknown_08F6A880
gUnknown_08F6A880:
    .incbin "baserom.gba", 0x00F6A880, 0x400

    .global gUnknown_08F6AC80
gUnknown_08F6AC80:
    .incbin "baserom.gba", 0x00F6AC80, 0x400

    .global gUnknown_08F6B080
gUnknown_08F6B080:
    .incbin "baserom.gba", 0x00F6B080, 0x400

    .global gUnknown_08F6B480
gUnknown_08F6B480:
    .incbin "baserom.gba", 0x00F6B480, 0x400

    .global gUnknown_08F6B880
gUnknown_08F6B880:
    .incbin "baserom.gba", 0x00F6B880, 0x400

    .global gUnknown_08F6BC80
gUnknown_08F6BC80:
    .incbin "baserom.gba", 0x00F6BC80, 0x400

    .global gUnknown_08F6C080
gUnknown_08F6C080:
    .incbin "baserom.gba", 0x00F6C080, 0x400

    .global gUnknown_08F6C480
gUnknown_08F6C480:
    .incbin "baserom.gba", 0x00F6C480, 0x400

    .global gUnknown_08F6C880
gUnknown_08F6C880:
    .incbin "baserom.gba", 0x00F6C880, 0x400

    .global gUnknown_08F6CC80
gUnknown_08F6CC80:
    .incbin "baserom.gba", 0x00F6CC80, 0x400

    .global gUnknown_08F6D080
gUnknown_08F6D080:
    .incbin "baserom.gba", 0x00F6D080, 0x400

    .global gUnknown_08F6D480
gUnknown_08F6D480:
    .incbin "baserom.gba", 0x00F6D480, 0x400

    .global gUnknown_08F6D880
gUnknown_08F6D880:
    .incbin "baserom.gba", 0x00F6D880, 0x400

    .global gUnknown_08F6DC80
gUnknown_08F6DC80:
    .incbin "baserom.gba", 0x00F6DC80, 0x400

    .global gUnknown_08F6E080
gUnknown_08F6E080:
    .incbin "baserom.gba", 0x00F6E080, 0x400

    .global gUnknown_08F6E480
gUnknown_08F6E480:
    .incbin "baserom.gba", 0x00F6E480, 0x400

    .global gUnknown_08F6E880
gUnknown_08F6E880:
    .incbin "baserom.gba", 0x00F6E880, 0x400

    .global gUnknown_08F6EC80
gUnknown_08F6EC80:
    .incbin "baserom.gba", 0x00F6EC80, 0x400

    .global gUnknown_08F6F080
gUnknown_08F6F080:
    .incbin "baserom.gba", 0x00F6F080, 0x400

    .global gUnknown_08F6F480
gUnknown_08F6F480:
    .incbin "baserom.gba", 0x00F6F480, 0x400

    .align 2
    .global gUnknown_08F6F880
gUnknown_08F6F880:
    .word gUnknown_08F67880 @ 0 / 0x0
    .word gUnknown_08F67C80 @ 1 / 0x1
    .word gUnknown_08F68080 @ 2 / 0x2
    .word gUnknown_08F68480 @ 3 / 0x3
    .word gUnknown_08F68880 @ 4 / 0x4
    .word gUnknown_08F68C80 @ 5 / 0x5
    .word gUnknown_08F69080 @ 6 / 0x6
    .word gUnknown_08F69480 @ 7 / 0x7
    .word gUnknown_08F69880 @ 8 / 0x8
    .word gUnknown_08F69C80 @ 9 / 0x9
    .word gUnknown_08F6A080 @ 10 / 0xA
    .word gUnknown_08F6A480 @ 11 / 0xB
    .word gUnknown_08F6A880 @ 12 / 0xC
    .word gUnknown_08F6AC80 @ 13 / 0xD
    .word gUnknown_08F6B080 @ 14 / 0xE
    .word gUnknown_08F6B480 @ 15 / 0xF
    .word gUnknown_08F6B880 @ 16 / 0x10
    .word gUnknown_08F6BC80 @ 17 / 0x11
    .word gUnknown_08F6C080 @ 18 / 0x12
    .word gUnknown_08F6C480 @ 19 / 0x13
    .word gUnknown_08F6C880 @ 20 / 0x14
    .word gUnknown_08F6CC80 @ 21 / 0x15
    .word gUnknown_08F6D080 @ 22 / 0x16
    .word gUnknown_08F6D480 @ 23 / 0x17
    .word gUnknown_08F6D880 @ 24 / 0x18
    .word gUnknown_08F6DC80 @ 25 / 0x19
    .word gUnknown_08F6E080 @ 26 / 0x1A
    .word gUnknown_08F6E480 @ 27 / 0x1B
    .word gUnknown_08F6E880 @ 28 / 0x1C
    .word gUnknown_08F6EC80 @ 29 / 0x1D
    .word gUnknown_08F6F080 @ 30 / 0x1E
    .word gUnknown_08F6F480 @ 31 / 0x1F

    .global gUnknown_08F6F900
gUnknown_08F6F900:
    .incbin "baserom.gba", 0x00F6F900, 0x7

    .global gUnknown_08F6F907
gUnknown_08F6F907:
    .incbin "baserom.gba", 0x00F6F907, 0x2

    .global gUnknown_08F6F909
gUnknown_08F6F909:
    .incbin "baserom.gba", 0x00F6F909, 0xF37

    .global gUnknown_08F70840
gUnknown_08F70840:
    .incbin "baserom.gba", 0x00F70840, 0x6D8

    .global MPlyJmpTbl
MPlyJmpTbl:
    .word ply_fine+1
    .word ply_goto+1
    .word ply_patt+1
    .word ply_pend+1
    .word ply_rept+1
    .word ply_fine+1
    .word ply_fine+1
    .word ply_fine+1
    .word ply_fine+1
    .word ply_prio+1
    .word ply_tempo+1
    .word ply_keysh+1
    .word ply_voice+1
    .word ply_vol+1
    .word ply_pan+1
    .word ply_bend+1
    .word ply_bendr+1
    .word ply_lfos_rev01+1
    .word ply_lfodl+1
    .word ply_mod_rev01+1
    .word ply_modt+1
    .word ply_fine+1
    .word ply_fine+1
    .word ply_tune+1
    .word ply_fine+1
    .word ply_fine+1
    .word ply_fine+1
    .word ply_port+1
    .word ply_fine+1
    .word ply_endtie_rev01+1
    .word SampFreqSet_rev01+1
    .word TrackStop_rev01+1
    .word FadeOutBody_rev01+1
    .word TrkVolPitSet_rev01+1
    .word ClearChain+1
    .word SoundMainBTM+1

    .global ScaleTable
ScaleTable:
    .incbin "baserom.gba", 0x00F70FA8, 0xB4

    .global FreqTable
FreqTable:
    .incbin "baserom.gba", 0x00F7105C, 0x30

    .global pcmVBtbl_rev
pcmVBtbl_rev:
    .incbin "baserom.gba", 0x00F7108C, 0x18

    .global CgbScTable
CgbScTable:
    .incbin "baserom.gba", 0x00F710A4, 0x84

    .global CgbFrTable
CgbFrTable:
    .incbin "baserom.gba", 0x00F71128, 0x18

    .global NoiseTable
NoiseTable:
    .incbin "baserom.gba", 0x00F71140, 0x3C

    .global Cgb3vol
Cgb3vol:
    .incbin "baserom.gba", 0x00F7117C, 0x10

    .global clock_tbl_rev01
clock_tbl_rev01:
    .incbin "baserom.gba", 0x00F7118C, 0x34

    .global xcmd_tbl
xcmd_tbl:
    .word ply_xxx+1
    .word ply_xwave+1
    .word ply_xtype+1
    .word ply_xxx+1
    .word ply_xatta+1
    .word ply_xdeca+1
    .word ply_xsust+1
    .word ply_xrele+1
    .word ply_xiecv+1
    .word ply_xiecl+1
    .word ply_xleng+1
    .word ply_xswee+1

