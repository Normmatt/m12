	.section .data
    
    .align 3, 0
    
    .global m1_data_object_table_1
m1_data_object_table_1:
    .incbin "data/unsorted/m1_data_object_table_1.bin"

    .global gUnknown_08F17385
gUnknown_08F17385:
    .incbin "data/unsorted/gUnknown_08F17385.bin"

    .global gUnknown_08F19252
gUnknown_08F19252:
    .incbin "data/unsorted/gUnknown_08F19252.bin"

    .global gUnknown_08F1927A
gUnknown_08F1927A:
    .incbin "data/unsorted/gUnknown_08F1927A.bin"

    .global gItemData
gItemData:
    .incbin "data/unsorted/gItemData.bin"

    .global gUnknown_08F1B610
gUnknown_08F1B610:
    .byte 0xA0, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00 @OamData

    .global gUnknown_08F1B618
gUnknown_08F1B618:
    .byte 0x80, 0x02, 0x06, 0x80, 0x00, 0x01, 0x07, 0x80
    .byte 0x04, 0x03, 0x05, 0x80, 0x80, 0x80, 0x80, 0x80

    .global gUnknown_08F1B628
gUnknown_08F1B628:
    .byte 0x00, 0x00, 0x02, 0x04, 0x04, 0x04, 0x06, 0x00

    .global gUnknown_08F1B630
gUnknown_08F1B630:
    .byte 0x00, 0x03, 0x04, 0x03, 0x00, 0xFD, 0xFC, 0xFD
    .byte 0x00, 0x04, 0x04, 0x02, 0x00, 0xFC, 0xFC, 0xFE
    .byte 0x00, 0x02, 0x04, 0x04, 0x00, 0xFE, 0xFC, 0xFC

    .global gUnknown_08F1B648
gUnknown_08F1B648:
    .byte 0xFC, 0xFD, 0x00, 0x03, 0x04, 0x03, 0x00, 0xFD
    .byte 0xFC, 0xFE, 0x00, 0x04, 0x04, 0x02, 0x00, 0xFC 
    .byte 0xFC, 0xFC, 0x00, 0x02, 0x04, 0x04, 0x00, 0xFE

    .global gUnknown_08F1B660
gUnknown_08F1B660:
    .byte 0x00, 0x04, 0x04, 0x04, 0x00, 0xFC, 0xFC, 0xFC

    .global gUnknown_08F1B668
gUnknown_08F1B668:
    .byte 0xFC, 0xFC, 0x00, 0x04, 0x04, 0x04, 0x00, 0xFC

    .global gUnknown_08F1B670
gUnknown_08F1B670:
    .byte 0x00, 0x0A, 0x00, 0xF6

    .global gUnknown_08F1B674
gUnknown_08F1B674:
    .byte 0xF6, 0x00, 0x0A, 0x00

    .global gCanEquipItemMask
gCanEquipItemMask:
    .byte 0x00 @ ?
    .byte 0x01 @ "Ninten"
    .byte 0x02 @ "アナ" / "Ana"
    .byte 0x04 @ "ロイド" / "Lloyd"
    .byte 0x08 @ "テディ" / "Teddy"
    .byte 0x10 @ "ピッピ" / "Pippi"
    .byte 0x20 @ "イヴ" / "EVE"
    .byte 0x20 @ "フライングマン" / "FlyngMn"

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
    .word SetFlag+1
    .word ClearFlag+1
    .word sub_8F03F10+1
    .word sub_8F03F28+1
    .word sub_8F03B60+1
    .word sub_8F033FC+1

    .align 2
    .global gSCR_CMD_Handlers
gSCR_CMD_Handlers:
    .word SCR_CMD_00_End+1
    .word SCR_CMD_01_Jump+1
    .word SCR_CMD_02_CallSubroutine+1
    .word SCR_CMD_03_Return+1
    .word SCR_CMD_04+1
    .word SCR_CMD_05+1
    .word SCR_CMD_06+1
    .word SCR_CMD_00_End+1
    .word SCR_CMD_08+1
    .word SCR_CMD_09+1
    .word SCR_CMD_0A+1
    .word SCR_CMD_0B+1
    .word SCR_CMD_0C+1
    .word SCR_CMD_0D+1
    .word SCR_CMD_0E_SoftReset+1
    .word SCR_CMD_0F_DelayedSoftReset+1
    .word SCR_CMD_10_SetFlag+1
    .word SCR_CMD_11_ClearFlag+1
    .word SCR_CMD_12+1
    .word SCR_CMD_13+1
    .word SCR_CMD_14+1
    .word SCR_CMD_15+1
    .word SCR_CMD_16+1
    .word SCR_CMD_17+1
    .word SCR_CMD_18+1
    .word SCR_CMD_19_SetCurrentCharacterId+1
    .word SCR_CMD_1A+1
    .word SCR_CMD_1B+1
    .word SCR_CMD_1C+1
    .word SCR_CMD_1D+1
    .word SCR_CMD_1E+1
    .word SCR_CMD_1F_ShowMoney+1
    .word SCR_CMD_20+1
    .word SCR_CMD_21+1
    .word SCR_CMD_22+1
    .word SCR_CMD_23+1
    .word SCR_CMD_24+1
    .word SCR_CMD_25+1
    .word SCR_CMD_26+1
    .word SCR_CMD_27+1
    .word SCR_CMD_28_IncrementMoney+1
    .word SCR_CMD_29_DecrementMoney+1
    .word SCR_CMD_2A_IncrementBankedMoney+1
    .word SCR_CMD_2B_DecrementBankedMoney+1
    .word SCR_CMD_2C+1
    .word SCR_CMD_2D+1
    .word SCR_CMD_2E+1
    .word SCR_CMD_2F+1
    .word SCR_CMD_30+1
    .word SCR_CMD_31+1
    .word SCR_CMD_32+1
    .word SCR_CMD_33+1
    .word SCR_CMD_34+1
    .word SCR_CMD_35+1
    .word SCR_CMD_36+1
    .word SCR_CMD_37+1
    .word SCR_CMD_38+1
    .word SCR_CMD_39+1
    .word SCR_CMD_3A+1
    .word SCR_CMD_3B+1
    .word SCR_CMD_3C+1
    .word SCR_CMD_3D+1
    .word SCR_CMD_3E+1
    .word SCR_CMD_3F_JumpToObjectScript+1
    .word SCR_CMD_40+1
    .word SCR_CMD_41+1
    .word SCR_CMD_42+1
    .word SCR_CMD_43+1
    .word SCR_CMD_44+1
    .word SCR_CMD_45+1
    .word SCR_CMD_46+1
    .word SCR_CMD_47+1
    .word SCR_CMD_48+1
    .word SCR_CMD_49+1
    .word SCR_CMD_4A+1
    .word SCR_CMD_4B+1
    .word SCR_CMD_4C+1
    .word SCR_CMD_4D+1
    .word SCR_CMD_4E+1
    .word SCR_CMD_4F+1
    .word SCR_CMD_50+1
    .word SCR_CMD_51+1
    .word SCR_CMD_52+1
    .word SCR_CMD_53+1
    .word SCR_CMD_54+1
    .word SCR_CMD_55+1
    .word SCR_CMD_56_SaveGame+1
    .word SCR_CMD_57_LoadExpForNextLevel+1
    .word SCR_CMD_58_LoadMoneyToTemp+1
    .word SCR_CMD_59_InflictCondition+1
    .word SCR_CMD_5A_ChangeBgMusic+1
    .word SCR_CMD_5B_PlaySfxById0+1
    .word SCR_CMD_5C_PlaySfxById1+1
    .word SCR_CMD_5D_PlaySfxById2+1
    .word SCR_CMD_00_End+1
    .word SCR_CMD_5F+1
    .word SCR_CMD_60+1
    .word SCR_CMD_61+1
    .word SCR_CMD_62+1
    .word SCR_CMD_63+1
    .word SCR_CMD_64+1
    .word SCR_CMD_65+1
    .word SCR_CMD_66+1
    .word SCR_CMD_67+1
    .word SCR_CMD_68+1
    .word SCR_CMD_69_Quake+1
    .word SCR_CMD_6A+1
    .word SCR_CMD_6B_Dummy+1
    .word SCR_CMD_6C+1
    .word SCR_CMD_6D_SaveCurrentBgMusicId+1
    .word SCR_CMD_6E_PlayOldBgMusicId+1
    .word SCR_CMD_6F+1
    .word SCR_CMD_70+1

    .align 2
    .global gItemEffectHandlers
gItemEffectHandlers:
    .word NothingHappened+1
    .word sub_8F080A4+1
    .word NothingHappened+1
    .word NothingHappened+1
    .word NothingHappened+1
    .word UseBread+1
    .word sub_8F082B0+1
    .word sub_8F080A4+1
    .word sub_8F082D0+1
    .word NothingHappened+1
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
    .word GrandFatherDiary+1
    .word NothingHappened+1
    .word NothingHappened+1
    .word sub_8F085D4+1
    .word sub_8F08664+1
    .word JustTurnThePowerOff+1
    .word FigureOutLengthsOfManyThings+1
    .word HandleMap+1
    .word PlayOcarinaOfHope+1
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

