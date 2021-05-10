	.section .data
    
    .align 3, 0
    
    .global m1_data_object_table_1
m1_data_object_table_1:
    .incbin "data/events/m1_data_object_table_1.bin"

    .global gUnknown_08F17385
gUnknown_08F17385:
    .incbin "data/events/gUnknown_08F17385.bin"

    .global gUnknown_08F19252
gUnknown_08F19252:
    .incbin "data/events/gUnknown_08F19252.bin"

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
    .word VblankIntr
    .word IntrDummy
    .word IntrDummy
    .word IntrDummy
    .word IntrDummy
    .word IntrDummy
    .word IntrDummy
    .word IntrDummy
    .word IntrDummy
    .word IntrDummy
    .word IntrDummy
    .word IntrDummy
    .word IntrDummy
    .word IntrDummy

    .align 2
    .global gUnknown_08F1B6B8
gUnknown_08F1B6B8:
    .word sub_8F033FC
    .word sub_8F03400
    .word sub_8F03400
    .word sub_8F03430
    .word sub_8F03460
    .word sub_8F033FC
    .word sub_8F033FC
    .word sub_8F0354C
    .word sub_8F037BC
    .word sub_8F037C0
    .word sub_8F037D0
    .word sub_8F037E0
    .word sub_8F0381C
    .word sub_8F03820
    .word sub_8F03830
    .word sub_8F03840
    .word sub_8F03844
    .word sub_8F03850
    .word sub_8F03960
    .word sub_8F03A70
    .word sub_8F03AF0
    .word sub_8F03B04
    .word sub_8F03B18
    .word sub_8F03B2C
    .word sub_8F03B40
    .word sub_8F03B40
    .word sub_8F03B40
    .word sub_8F03B40
    .word sub_8F03B60
    .word sub_8F03B60
    .word sub_8F03B60
    .word sub_8F03B60
    .word sub_8F03B74
    .word sub_8F03C20
    .word sub_8F03960
    .word sub_8F03B40
    .word sub_8F03B40
    .word sub_8F03B40
    .word sub_8F03CBC
    .word sub_8F03D64
    .word sub_8F03EA0
    .word SetFlag
    .word ClearFlag
    .word sub_8F03F10
    .word sub_8F03F28
    .word sub_8F03B60
    .word sub_8F033FC

    .align 2
    .global gSCR_CMD_Handlers
gSCR_CMD_Handlers:
    .word SCR_CMD_00_End
    .word SCR_CMD_01_Jump
    .word SCR_CMD_02_CallSubroutine
    .word SCR_CMD_03_Return
    .word SCR_CMD_04
    .word SCR_CMD_05
    .word SCR_CMD_06
    .word SCR_CMD_00_End
    .word SCR_CMD_08
    .word SCR_CMD_09
    .word SCR_CMD_0A
    .word SCR_CMD_0B
    .word SCR_CMD_0C
    .word SCR_CMD_0D
    .word SCR_CMD_0E_SoftReset
    .word SCR_CMD_0F_DelayedSoftReset
    .word SCR_CMD_10_SetFlag
    .word SCR_CMD_11_ClearFlag
    .word SCR_CMD_12
    .word SCR_CMD_13
    .word SCR_CMD_14
    .word SCR_CMD_15
    .word SCR_CMD_16
    .word SCR_CMD_17
    .word SCR_CMD_18
    .word SCR_CMD_19_SetCurrentCharacterId
    .word SCR_CMD_1A
    .word SCR_CMD_1B
    .word SCR_CMD_1C
    .word SCR_CMD_1D
    .word SCR_CMD_1E
    .word SCR_CMD_1F_ShowMoney
    .word SCR_CMD_20
    .word SCR_CMD_21
    .word SCR_CMD_22
    .word SCR_CMD_23
    .word SCR_CMD_24
    .word SCR_CMD_25
    .word SCR_CMD_26
    .word SCR_CMD_27
    .word SCR_CMD_28_IncrementMoney
    .word SCR_CMD_29_DecrementMoney
    .word SCR_CMD_2A_IncrementBankedMoney
    .word SCR_CMD_2B_DecrementBankedMoney
    .word SCR_CMD_2C
    .word SCR_CMD_2D
    .word SCR_CMD_2E
    .word SCR_CMD_2F
    .word SCR_CMD_30
    .word SCR_CMD_31
    .word SCR_CMD_32
    .word SCR_CMD_33
    .word SCR_CMD_34
    .word SCR_CMD_35
    .word SCR_CMD_36
    .word SCR_CMD_37
    .word SCR_CMD_38
    .word SCR_CMD_39
    .word SCR_CMD_3A
    .word SCR_CMD_3B
    .word SCR_CMD_3C
    .word SCR_CMD_3D
    .word SCR_CMD_3E
    .word SCR_CMD_3F_JumpToObjectScript
    .word SCR_CMD_40
    .word SCR_CMD_41
    .word SCR_CMD_42
    .word SCR_CMD_43
    .word SCR_CMD_44
    .word SCR_CMD_45
    .word SCR_CMD_46
    .word SCR_CMD_47
    .word SCR_CMD_48
    .word SCR_CMD_49
    .word SCR_CMD_4A
    .word SCR_CMD_4B
    .word SCR_CMD_4C
    .word SCR_CMD_4D
    .word SCR_CMD_4E
    .word SCR_CMD_4F
    .word SCR_CMD_50
    .word SCR_CMD_51
    .word SCR_CMD_52
    .word SCR_CMD_53
    .word SCR_CMD_54
    .word SCR_CMD_55
    .word SCR_CMD_56_SaveGame
    .word SCR_CMD_57_LoadExpForNextLevel
    .word SCR_CMD_58_LoadMoneyToTemp
    .word SCR_CMD_59_InflictCondition
    .word SCR_CMD_5A_ChangeBgMusic
    .word SCR_CMD_5B_PlaySfxById0
    .word SCR_CMD_5C_PlaySfxById1
    .word SCR_CMD_5D_PlaySfxById2
    .word SCR_CMD_00_End
    .word SCR_CMD_5F
    .word SCR_CMD_60
    .word SCR_CMD_61
    .word SCR_CMD_62
    .word SCR_CMD_63
    .word SCR_CMD_64
    .word SCR_CMD_65
    .word SCR_CMD_66
    .word SCR_CMD_67
    .word SCR_CMD_68
    .word SCR_CMD_69_Quake
    .word SCR_CMD_6A
    .word SCR_CMD_6B_Dummy
    .word SCR_CMD_6C
    .word SCR_CMD_6D_SaveCurrentBgMusicId
    .word SCR_CMD_6E_PlayOldBgMusicId
    .word SCR_CMD_6F
    .word SCR_CMD_70

    .align 2
    .global gItemEffectHandlers
gItemEffectHandlers:
    .word NothingHappened
    .word sub_8F080A4
    .word NothingHappened
    .word NothingHappened
    .word NothingHappened
    .word UseBread
    .word sub_8F082B0
    .word sub_8F080A4
    .word sub_8F082D0
    .word NothingHappened
    .word sub_8F082F8
    .word sub_8F08310
    .word sub_8F0831C
    .word sub_8F08334
    .word sub_8F08340
    .word sub_8F08358
    .word sub_8F08374
    .word sub_8F0847C
    .word sub_8F08490
    .word sub_8F084A4
    .word sub_8F0854C
    .word sub_8F08560
    .word sub_8F08574
    .word sub_8F08584
    .word sub_8F08594
    .word sub_8F085A4
    .word sub_8F085B4
    .word GrandFatherDiary
    .word NothingHappened
    .word NothingHappened
    .word sub_8F085D4
    .word sub_8F08664
    .word JustTurnThePowerOff
    .word FigureOutLengthsOfManyThings
    .word HandleMap
    .word PlayOcarinaOfHope
    .word ItemNothingHappened
    .word sub_8F08C5C
    .word sub_8F08D70
    .word sub_8F08DC0
    .word sub_8F08DCC
    .word sub_8F08DD8
    .word sub_8F08DE8
    .word ItemNothingHappened
    .word sub_8F08DFC
    .word sub_8F08E10
    .word sub_8F08AE8
    .word sub_8F08B74

