#include "gba/gba.h"
#include "functions.h"
#include "variables.h"
#include "definitions.h"

#ifdef NDS_VERSION
// NDS stack is in DTCM by default and can't be DMA'd from/to.
// This is a problem, because gcc will memcpy arrays onto the stack and use those stack
// addresses when we DMA, unless they're marked static (and never modified at runtime, of course).
#define NO_NDS_STACK static
#else
#define NO_NDS_STACK
#endif

#ifdef JAPANESE
#include "strings_jp.inc.c"
#elif ENGLISH
void choose_text_window_type();
#include "strings_en.inc.c"
#endif

const u8* const gUnknown_08F27A90[2172] = {
gMSG_Sys_SysError, // 0000 / 0x0000
gMSG_MyHome_Minne_Invasion, // 0001 / 0x0001
gMSG_MyHome_Minne_Invasion_Fight, // 0002 / 0x0002
gMSG_MyHome_Minne_Invasion_Fight2, // 0003 / 0x0003
gMSG_MyHome_Juice, // 0004 / 0x0004
gMSG_MyHome_Mimmie_Invasion, // 0005 / 0x0005
gMSG_MyHome_Mimmie_Invasion_Fight, // 0006 / 0x0006
0                , // 0007 / 0x0007
gMSG_MyHome_Mimmie, // 0008 / 0x0008
gMSG_MyHome_Mom_Invasion, // 0009 / 0x0009
gMSG_MyHome_Mom, // 0010 / 0x000A
gMSG_MyHome_Mom_Hurt, // 0011 / 0x000B
gMSG_Phone_NextLvl, // 0012 / 0x000C
gMSG_MyHome_Mom_Eat, // 0013 / 0x000D
gMSG_MyHome_Phone, // 0014 / 0x000E
0                , // 0015 / 0x000F
0                , // 0016 / 0x0010
0                , // 0017 / 0x0011
0                , // 0018 / 0x0012
gMSG_Phone_End, // 0019 / 0x0013
gMSG_Phone_Intro, // 0020 / 0x0014
gMSG_Phone_NewMoney, // 0021 / 0x0015
gMSG_Phone_ResetPrompt, // 0022 / 0x0016
gMSG_Phone_Save_Yes, // 0023 / 0x0017
gMSG_Phone_Save_No, // 0024 / 0x0018
0                , // 0025 / 0x0019
0                , // 0026 / 0x001A
gMSG_Phone_Saved_ResetPrompt, // 0027 / 0x001B
gMSG_Phone_Reset_Yes, // 0028 / 0x001C
gMSG_Phone_Reset_No, // 0029 / 0x001D
gMSG_Phone_Save_Prompt, // 0030 / 0x001E
0                , // 0031 / 0x001F
0                , // 0032 / 0x0020
gMSG_Phone_GoodLuck, // 0033 / 0x0021
0                , // 0034 / 0x0022
gMSG_Podunk_PippiMom_Thanks, // 0035 / 0x0023
gMSG_Podunk_CemeteryGuy1, // 0036 / 0x0024
gMSG_Podunk_CemeteryGuy2, // 0037 / 0x0025
gMSG_Podunk_ScaredGuy1, // 0038 / 0x0026
gMSG_Podunk_ScaredGuy2, // 0039 / 0x0027
gMSG_Podunk_ScaredGuy3, // 0040 / 0x0028
gMSG_Podunk_ScaredGuy4, // 0041 / 0x0029
gMSG_Podunk_ScaredGuy5, // 0042 / 0x002A
gMSG_Podunk_ScaredGuy6, // 0043 / 0x002B
gMSG_Podunk_ScaredGuy7, // 0044 / 0x002C
gMSG_Podunk_Zombie, // 0045 / 0x002D
gMSG_Podunk_Zombie2, // 0046 / 0x002E
gMSG_Podunk_NecromancerWoman1, // 0047 / 0x002F
gMSG_Podunk_NecromancerWoman2, // 0048 / 0x0030
gMSG_Podunk_WaryGuy, // 0049 / 0x0031
gMSG_Podunk_CanaryGirl1, // 0050 / 0x0032
gMSG_Podunk_CanaryGirl2, // 0051 / 0x0033
gMSG_Podunk_CanaryGirl3, // 0052 / 0x0034
gMSG_Podunk_CanaryGirl4, // 0053 / 0x0035
gMSG_Podunk_MayorGuy, // 0054 / 0x0036
gMSG_Podunk_ConcernedGuy, // 0055 / 0x0037
gMSG_Podunk_SensibleGuy1, // 0056 / 0x0038
gMSG_Podunk_SensibleGuy2, // 0057 / 0x0039
gMSG_Podunk_EventGirl1, // 0058 / 0x003A
gMSG_Podunk_EventGirl2, // 0059 / 0x003B
0                , // 0060 / 0x003C
gMSG_Podunk_PolterGuy, // 0061 / 0x003D
gMSG_Podunk_ZooGuy, // 0062 / 0x003E
gMSG_Podunk_BreadGirl, // 0063 / 0x003F
gMSG_Mayor_HelpTown, // 0064 / 0x0040
gMSG_Mayor_PippiQuest, // 0065 / 0x0041
gMSG_Mayor_PippiQuestYes, // 0066 / 0x0042
gMSG_Mayor_ReturnPippi, // 0067 / 0x0043
0                , // 0068 / 0x0044
0                , // 0069 / 0x0045
gMSG_Mayor_See_Zoo, // 0070 / 0x0046
gMSG_Mayor_See_Zoo_Accept, // 0071 / 0x0047
gMSG_Abbot_Get_Key, // 0072 / 0x0048
gMSG_Mayor_Hero, // 0073 / 0x0049
gMSG_Mayor_Post_Zoo, // 0074 / 0x004A
gMSG_Secretary_Ana, // 0075 / 0x004B
gMSG_Abbott_NewKey, // 0076 / 0x004C
gMSG_PetVendor_Intro, // 0077 / 0x004D
gMSG_PetVendor_Intro2, // 0078 / 0x004E
gMSG_PetVendor_Pitch, // 0079 / 0x004F
gMSG_PetVendor_Decline, // 0080 / 0x0050
gMSG_PetVendor_AcceptPitch, // 0081 / 0x0051
gMSG_PetVendor_DeclinePitch, // 0082 / 0x0052
gMSG_PetVendor_CanaryCheck, // 0083 / 0x0053
gMSG_PetVendor2_BrainWash, // 0084 / 0x0054
gMSG_PetVendor2_CutePets, // 0085 / 0x0055
gMSG_Podunk_Pippi_Meet_NoYes, // 0086 / 0x0056
gMSG_Twinkle_LloydBully2_Lloyd, // 0087 / 0x0057
gMSG_Returns_Intro, // 0088 / 0x0058
gMSG_Reindeer_DragonGirl_Check, // 0089 / 0x0059
gMSG_Returns_Decline, // 0090 / 0x005A
gMSG_Returns_Accept, // 0091 / 0x005B
gMSG_Podunk_CashCardWoman, // 0092 / 0x005C
0                , // 0093 / 0x005D
gMSG_Canary_Man, // 0094 / 0x005E
gMSG_Canary_Man_Baby, // 0095 / 0x005F
gMSG_Canary_Man_Baby_No, // 0096 / 0x0060
gMSG_Canary_Man_Baby_Yes, // 0097 / 0x0061
gMSG_Canary_Man_Melody, // 0098 / 0x0062
gMSG_Canary_Man_Melody_No, // 0099 / 0x0063
gMSG_Canary_Man_Melody_Yes, // 0100 / 0x0064
gMSG_Graveyard_Pippi, // 0101 / 0x0065
gMSG_Graveyard_Pippi_Brave_Yes, // 0102 / 0x0066
gMSG_Graveyard_Pippi_Brave_No, // 0103 / 0x0067
gMSG_Graveyard_Pippi_Meet_Yes, // 0104 / 0x0068
gMSG_Graveyard_Pippi_Meet_No, // 0105 / 0x0069
gMSG_Podunk_MayorPippi, // 0106 / 0x006A
0                , // 0107 / 0x006B
gMSG_Podunk_MayorPippi_Yes, // 0108 / 0x006C
gMSG_Zoo_GateMonkey, // 0109 / 0x006D
gMSG_Magicave_ShellQuestion, // 0110 / 0x006E
gMSG_Magicant_ClothingMan, // 0111 / 0x006F
0                , // 0112 / 0x0070
gMSG_Magicant_NicknameMan, // 0113 / 0x0071
gMSG_Magicant_NicknameMan_Yes, // 0114 / 0x0072
gMSG_Magicant_NicknameMan_No, // 0115 / 0x0073
gMSG_Magicant_NicknameMan_After, // 0116 / 0x0074
gMSG_Magicant_NicknameMan_After_Yes, // 0117 / 0x0075
gMSG_Train_Decline, // 0118 / 0x0076
gMSG_Magicant_NicknameMan_Quest, // 0119 / 0x0077
gMSG_Magicant_PhilosophyMan, // 0120 / 0x0078
gMSG_Magicant_PhilosophyMan_Yes, // 0121 / 0x0079
gMSG_Magicant_PhilosophyMan_No, // 0122 / 0x007A
gMSG_Magicant_CannotPartMan, // 0123 / 0x007B
gMSG_Magicant_CannotPartMan_Yes, // 0124 / 0x007C
gMSG_Magicant_CannotPartMan_No, // 0125 / 0x007D
gMSG_Magicant_StrengthMan, // 0126 / 0x007E
gMSG_110, // 0127 / 0x007F
gMSG_Magicant_EarringGirl, // 0128 / 0x0080
gMSG_Magicant_FountainMan, // 0129 / 0x0081
gMSG_Magicant_RestroomBoy, // 0130 / 0x0082
0                , // 0131 / 0x0083
gMSG_Magicant_InnBoy, // 0132 / 0x0084
gMSG_Magicant_InnBoy_Yes, // 0133 / 0x0085
gMSG_Magicant_InnBoy_No, // 0134 / 0x0086
gMSG_Magicant_StrangeGirl, // 0135 / 0x0087
gMSG_Magicant_InnBoy_Stay, // 0136 / 0x0088
gMSG_Magicant_InnBoy_NoStay, // 0137 / 0x0089
gMSG_Magicant_InnKeeper1, // 0138 / 0x008A
gMSG_Magicant_InnKeeper1_No, // 0139 / 0x008B
gMSG_Magicant_InnKeeper2, // 0140 / 0x008C
0                , // 0141 / 0x008D
0                , // 0142 / 0x008E
gMSG_Magicant_MusicVendor, // 0143 / 0x008F
gMSG_Magicant_InnKeeper2_No, // 0144 / 0x0090
gMSG_Magicant_InnKeeper3, // 0145 / 0x0091
gMSG_Magicant_InnBoy_AgainNo, // 0146 / 0x0092
gMSG_Magicant_StrangerBoy, // 0147 / 0x0093
gMSG_Magicant_OcarinaMan, // 0148 / 0x0094
0                , // 0149 / 0x0095
gMSG_Magicant_OcarinaMan_Yes, // 0150 / 0x0096
gMSG_Magicant_OcarinaMan_No, // 0151 / 0x0097
gMSG_Magicant_OcarinaMan_After, // 0152 / 0x0098
gMSG_Magicant_NoExitBoy, // 0153 / 0x0099
gMSG_Magicant_OutsideMan, // 0154 / 0x009A
gMSG_Magicant_HoleGirl, // 0155 / 0x009B
gMSG_Magicant_GoodsKeeper, // 0156 / 0x009C
gMSG_Magicant_Mimicker, // 0157 / 0x009D
gMSG_Magicant_HoleMan, // 0158 / 0x009E
0                , // 0159 / 0x009F
0                , // 0160 / 0x00A0
gMSG_Magicant_RedWeedGirl, // 0161 / 0x00A1
gMSG_Magicant_BigBagGuy_Ask, // 0162 / 0x00A2
gMSG_Magicant_BigBagGuy_Card, // 0163 / 0x00A3
gMSG_Magicant_BigBagGuy_Ask_No, // 0164 / 0x00A4
gMSG_Magicant_BigBagGuy_Return2, // 0165 / 0x00A5
gMSG_Magicant_BigBagGuy_Card_No, // 0166 / 0x00A6
gMSG_Magicant_BigBagGuy_Return1, // 0167 / 0x00A7
gMSG_Magicant_SicknessGuy, // 0168 / 0x00A8
gMSG_Magicant_Guard1, // 0169 / 0x00A9
gMSG_Magicant_Guard2, // 0170 / 0x00AA
gMSG_Magicant_Guard_Bye, // 0171 / 0x00AB
0                , // 0172 / 0x00AC
gMSG_Magicant_QueenGuy, // 0173 / 0x00AD
gMSG_Magicant_Guitarist_Under, // 0174 / 0x00AE
0                , // 0175 / 0x00AF
gMSG_MtItoi_HealerFail, // 0176 / 0x00B0
gMSG_MtItoi_Healer, // 0177 / 0x00B1
gMSG_Magicant_GuitarMan_Song, // 0178 / 0x00B2
gMSG_Magicant_GuitarGirl, // 0179 / 0x00B3
gMSG_Magicant_ForgottenManGirl, // 0180 / 0x00B4
gMSG_Healer, // 0181 / 0x00B5
gUnknown_08F1D45B, // 0182 / 0x00B6
gMSG_Magicant_BenevolentOldMan_TooMuch, // 0183 / 0x00B7
gMSG_Magicant_NormalMonkey, // 0184 / 0x00B8
gMSG_Magicant_NormalMonkey_Yes, // 0185 / 0x00B9
gMSG_Magicant_NormalMonkey_No, // 0186 / 0x00BA
gMSG_Merrysville_TrainWoman, // 0187 / 0x00BB
gMSG_Magicant_MaryGirl, // 0188 / 0x00BC
gMSG_Magicant_NightmareGuy, // 0189 / 0x00BD
gMSG_Magicant_AnaCat_Girls, // 0190 / 0x00BE
gMSG_MtItoi_Teddy_Sleep, // 0191 / 0x00BF
0                , // 0192 / 0x00C0
gUnknown_08F1D659, // 0193 / 0x00C1
gMSG_Magicant_LoveGuy_OnyxHook, // 0194 / 0x00C2
gMSG_Magicant_LoveGuy, // 0195 / 0x00C3
gMSG_Magicant_Maria, // 0196 / 0x00C4
0                , // 0197 / 0x00C5
0                , // 0198 / 0x00C6
0                , // 0199 / 0x00C7
0                , // 0200 / 0x00C8
0                , // 0201 / 0x00C9
gMSG_Canary_Generic, // 0202 / 0x00CA
gMSG_Magicant_Maria1, // 0203 / 0x00CB
gMSG_Magicant_Maria2, // 0204 / 0x00CC
gMSG_Magicant_Maria3, // 0205 / 0x00CD
0                , // 0206 / 0x00CE
gMSG_Magicant_VanishGirl, // 0207 / 0x00CF
0                , // 0208 / 0x00D0
gMSG_Magicant_AnaCat1, // 0209 / 0x00D1
gMSG_Magicant_AnaCat2, // 0210 / 0x00D2
gMSG_Magicant_AnaCat3, // 0211 / 0x00D3
gMSG_Magicant_LloydCat, // 0212 / 0x00D4
gMSG_Magicant_LloydCat_NoLloyd, // 0213 / 0x00D5
gMSG_Magicant_LloydCat_No, // 0214 / 0x00D6
0                , // 0215 / 0x00D7
gMSG_Magicant_LloydCat_After, // 0216 / 0x00D8
gMSG_Magicant_BenevolentBoy, // 0217 / 0x00D9
0                , // 0218 / 0x00DA
gMSG_Ellay_LHBouncerGuy_Stone, // 0219 / 0x00DB
gMSG_MCave_QuickMonkey_Caught, // 0220 / 0x00DC
gMSG_Magicant_BenevolentOldMan_No, // 0221 / 0x00DD
gMSG_Magicant_BenevolentOldMan_Yes, // 0222 / 0x00DE
gMSG_Magicant_BigBagGuy_After, // 0223 / 0x00DF
gMSG_Magicant_BenevolentOldMan_Money, // 0224 / 0x00E0
gMSG_Magicant_BenevolentOldMan_Give, // 0225 / 0x00E1
gMSG_Magicant_BenevolentOldMan_NotEnough, // 0226 / 0x00E2
gMSG_Magicant_ForgottenMan1, // 0227 / 0x00E3
gMSG_Magicant_ForgottenMan2, // 0228 / 0x00E4
gMSG_Magicant_ForgottenMan3, // 0229 / 0x00E5
gMSG_Magicant_ForgottenMan4, // 0230 / 0x00E6
gMSG_Magicant_ForgottenMan5, // 0231 / 0x00E7
gMSG_Magicant_ForgottenMan5_Yes, // 0232 / 0x00E8
gMSG_Magicant_ForgottenMan6, // 0233 / 0x00E9
gMSG_Magicant_ForgottenMan7, // 0234 / 0x00EA
gMSG_Magicant_BigBagGuy_NoRoom2, // 0235 / 0x00EB
gMSG_Merrysville_RumorGuy1, // 0236 / 0x00EC
gMSG_Merrysville_RumorGuy2, // 0237 / 0x00ED
gMSG_Merrysville_HospitalSign, // 0238 / 0x00EE
0                , // 0239 / 0x00EF
0                , // 0240 / 0x00F0
gMSG_Merrysville_HospitalDoctor, // 0241 / 0x00F1
0                , // 0242 / 0x00F2
gMSG_Merrysville_HospitalDoctor_Accept, // 0243 / 0x00F3
gMSG_Merrysville_HospitalDoctor_Decline, // 0244 / 0x00F4
gMSG_Podunk_MerryCop, // 0245 / 0x00F5
gMSG_Merrysville_Cop, // 0246 / 0x00F6
gMSG_Merrysville_DuncanGuy, // 0247 / 0x00F7
gMSG_DuncanFactory_Dog, // 0248 / 0x00F8
gMSG_DuncanFactory_Dog_Pass, // 0249 / 0x00F9
0                , // 0250 / 0x00FA
gMSG_Merrysville_BeatUpGuy, // 0251 / 0x00FB
0                , // 0252 / 0x00FC
gMSG_Merrysville_CurfewGuy, // 0253 / 0x00FD
0                , // 0254 / 0x00FE
0                , // 0255 / 0x00FF
gMSG_Twinkle_LloydBully, // 0256 / 0x0100
gMSG_Twinkle_LloydBully_Lloyd, // 0257 / 0x0101
gMSG_Twinkle_LloydBully2, // 0258 / 0x0102
gUnknown_08F1DF68, // 0259 / 0x0103
gMSG_Twinkle_LloydExplosives, // 0260 / 0x0104
gMSG_Twinkle_GlassesSlipped, // 0261 / 0x0105
gMSG_Twinkle_Suzy, // 0262 / 0x0106
gMSG_Twinkle_Suzy_Yes, // 0263 / 0x0107
gMSG_Twinkle_Suzy_No, // 0264 / 0x0108
gMSG_Twinkle_GameBoyKid, // 0265 / 0x0109
gMSG_Twinkle_GameBoyKid2, // 0266 / 0x010A
gMSG_Twinkle_SitupsKid, // 0267 / 0x010B
gMSG_Twinkle_BaffledKid, // 0268 / 0x010C
gMSG_Twinkle_Janitor1, // 0269 / 0x010D
0                , // 0270 / 0x010E
gMSG_Twinkle_Janitor3, // 0271 / 0x010F
gMSG_Twinkle_JanitorNotHorrible, // 0272 / 0x0110
gMSG_Twinkle_Janitor_Wife, // 0273 / 0x0111
gMSG_Twinkle_Janitor4, // 0274 / 0x0112
0                , // 0275 / 0x0113
gMSG_Twinkle_Janitor5, // 0276 / 0x0114
gMSG_Twinkle_JanitorNoTea, // 0277 / 0x0115
gUnknown_08F1E1B0, // 0278 / 0x0116
gMSG_Twinkle_JanitorTea, // 0279 / 0x0117
gMSG_Twinkle_HallMonitor, // 0280 / 0x0118
gMSG_Twinkle_HallMonitor2, // 0281 / 0x0119
gMSG_Twinkle_HallMonitor2_Yes, // 0282 / 0x011A
gMSG_Ellay_LHCop_SeeWeapon, // 0283 / 0x011B
0                , // 0284 / 0x011C
gMSG_Twinkle_TrashLloyd1, // 0285 / 0x011D
gMSG_Twinkle_TrashLloyd2, // 0286 / 0x011E
gMSG_Twinkle_TrashLloyd_Yes, // 0287 / 0x011F
gMSG_Twinkle_Lloyd_Introduction, // 0288 / 0x0120
gMSG_Swamp_HousePippi_Rest, // 0289 / 0x0121
0                , // 0290 / 0x0122
gMSG_Twinkle_LloydGetRocket, // 0291 / 0x0123
gMSG_DuncanFactory_UseRocket, // 0292 / 0x0124
gMSG_Ellay_Lloyd_TeddyBed, // 0293 / 0x0125
gMSG_Twinkle_Scientist_Intro, // 0294 / 0x0126
0                , // 0295 / 0x0127
gMSG_Twinkle_Scientist_Agree, // 0296 / 0x0128
gMSG_Twinkle_Scientist_Decline, // 0297 / 0x0129
0                , // 0298 / 0x012A
gMSG_Twinkle_Scientist_Goodbye, // 0299 / 0x012B
gMSG_Twinkle_Scientist_NoProgress, // 0300 / 0x012C
gMSG_TrainGuardian, // 0301 / 0x012D
0                , // 0302 / 0x012E
gMSG_Train1, // 0303 / 0x012F
gMSG_Ellay_LHCop_TakeWeapon, // 0304 / 0x0130
0                , // 0305 / 0x0131
0                , // 0306 / 0x0132
0                , // 0307 / 0x0133
gMSG_Train_Accept, // 0308 / 0x0134
0                , // 0309 / 0x0135
0                , // 0310 / 0x0136
gMSG_Reindeer_NoseyGuy_Hat, // 0311 / 0x0137
gMSG_Mislay_MouthwashGuy_Leave, // 0312 / 0x0138
gMSG_Snowman_TrainDad, // 0313 / 0x0139
gMSG_Reindeer_NoseyGuy, // 0314 / 0x013A
0                , // 0315 / 0x013B
gUnknown_08F1E5BA, // 0316 / 0x013C
gMSG_Reindeer_Cop1, // 0317 / 0x013D
gMSG_Reindeer_Cop1_Accept, // 0318 / 0x013E
gMSG_Reindeer_Cop1_Decline, // 0319 / 0x013F
gMSG_Reindeer_MoneyGuy, // 0320 / 0x0140
gMSG_Reindeer_MoneyGuy_Accept, // 0321 / 0x0141
gMSG_Reindeer_MoneyGuy_Decline, // 0322 / 0x0142
gMSG_Reindeer_MoneyGuy_After, // 0323 / 0x0143
gMSG_Reindeer_Cop2, // 0324 / 0x0144
gMSG_Reindeer_Cop2_Accept, // 0325 / 0x0145
gMSG_Reindeer_Cop2_Decline, // 0326 / 0x0146
gMSG_Reindeer_FullGirl, // 0327 / 0x0147
gMSG_Reindeer_EllayGuy, // 0328 / 0x0148
gMSG_Reindeer_SingingGuy, // 0329 / 0x0149
gMSG_Reindeer_SingingGuy_Accept, // 0330 / 0x014A
gMSG_Reindeer_SingingGuy_Decline, // 0331 / 0x014B
gMSG_Reindeer_SingingGuy_Decline2, // 0332 / 0x014C
0                , // 0333 / 0x014D
gMSG_Reindeer_DragonGirl, // 0334 / 0x014E
gMSG_Reindeer_SpookaneGirl, // 0335 / 0x014F
0                , // 0336 / 0x0150
gMSG_Reindeer_FleaBagGirl, // 0337 / 0x0151
gMSG_Reindeer_FleaBagGirl2, // 0338 / 0x0152
gMSG_Reindeer_FleaBagGirl_Decline, // 0339 / 0x0153
gMSG_Reindeer_FleaBagGirl_Accept, // 0340 / 0x0154
gMSG_Reindeer_FleaBagGirl_Give, // 0341 / 0x0155
gMSG_Reindeer_FluGuy, // 0342 / 0x0156
gMSG_Reindeer_RumorMWGuy, // 0343 / 0x0157
gMSG_Mislay_MouthwashGuy_Dentureless, // 0344 / 0x0158
gMSG_Mislay_MouthwashKid, // 0345 / 0x0159
gMSG_Mislay_MouthwashGuy_Dentures, // 0346 / 0x015A
0                , // 0347 / 0x015B
gMSG_Mislay_MouthwashKid_Take, // 0348 / 0x015C
gMSG_Reindeer_ColdGuy, // 0349 / 0x015D
gMSG_Spookane_RumorGuy, // 0350 / 0x015E
gMSG_Spookane_RumorGuy_Accept, // 0351 / 0x015F
gMSG_Spookane_RumorGuy_Decline, // 0352 / 0x0160
gMSG_Spookane_HotelBellhop, // 0353 / 0x0161
gMSG_RosemaryHouse_NobodyHere, // 0354 / 0x0162
gMSG_RosemaryHouse_WorstNightmare, // 0355 / 0x0163
gMSG_RosemaryHouse_TurnBack, // 0356 / 0x0164
gMSG_RosemaryHouse_Agh, // 0357 / 0x0165
gMSG_RosemaryHouse_NeverMakeIt, // 0358 / 0x0166
gMSG_RosemaryHouse_Mouse, // 0359 / 0x0167
gMSG_Spookane_RosemaryGuy, // 0360 / 0x0168
gMSG_Spookane_SmallGuy, // 0361 / 0x0169
gMSG_Spookane_HintGirl, // 0362 / 0x016A
0                , // 0363 / 0x016B
gMSG_Spookane_HintGirl_Decline, // 0364 / 0x016C
gMSG_Spookane_HintGirl_Accept, // 0365 / 0x016D
gMSG_Spookane_Clown, // 0366 / 0x016E
gMSG_Spookane_Clown_Accept, // 0367 / 0x016F
gMSG_Spookane_Clown_Decline, // 0368 / 0x0170
gMSG_Spookane_MrRosemary, // 0369 / 0x0171
gMSG_Twinkle_LabLloyd, // 0370 / 0x0172
0                , // 0371 / 0x0173
gMSG_MtItoi_GieguePrison_Guy1, // 0372 / 0x0174
gMSG_Twinkle_ScientistRocket3, // 0373 / 0x0175
gMSG_Spookane_MrsRosemary_Key, // 0374 / 0x0176
gMSG_Spookane_NintenRosemary, // 0375 / 0x0177
gMSG_Spookane_MrsRosemary1, // 0376 / 0x0178
gMSG_Spookane_MrsRosemary2, // 0377 / 0x0179
gMSG_Snowman_Train, // 0378 / 0x017A
gMSG_Snowman_YoungtownGuy, // 0379 / 0x017B
gMSG_Snowman_TrainDaughter, // 0380 / 0x017C
gMSG_Snowman_SpookaneGuy, // 0381 / 0x017D
gMSG_Snowman_SpookaneGuy_Accept, // 0382 / 0x017E
gMSG_Snowman_SpookaneGuy_Decline, // 0383 / 0x017F
gMSG_Snowman_ColdGuy, // 0384 / 0x0180
0                , // 0385 / 0x0181
gMSG_Snowman_LifeGirl, // 0386 / 0x0182
gMSG_Snowman_SchoolGuy, // 0387 / 0x0183
gMSG_Snowman_SchoolGuy2, // 0388 / 0x0184
0                , // 0389 / 0x0185
gMSG_Ellay_JailCop_NoMoney, // 0390 / 0x0186
gMSG_Snowman_NoseGirl, // 0391 / 0x0187
gMSG_Snowman_Phone_2, // 0392 / 0x0188
gMSG_Snowman_Phone_1, // 0393 / 0x0189
gMSG_Snowman_Phone_3, // 0394 / 0x018A
gMSG_Snowman_Phone_End, // 0395 / 0x018B
gMSG_Snowman_Ana_Ninten, // 0396 / 0x018C
gMSG_Snowman_Ana_Silly, // 0397 / 0x018D
gMSG_Snowman_Ana_Go, // 0398 / 0x018E
gMSG_Snowman_Ana, // 0399 / 0x018F
gMSG_MtItoi_Ana, // 0400 / 0x0190
gMSG_MtItoi_Ana_No, // 0401 / 0x0191
gMSG_MtItoi_Ana2, // 0402 / 0x0192
gMSG_MtItoi_AnaLove_No, // 0403 / 0x0193
gMSG_MtItoi_AnaLove, // 0404 / 0x0194
gMSG_Twinkle_LloydMatter, // 0405 / 0x0195
gMSG_Magicant_Dragon_NoWake, // 0406 / 0x0196
gMSG_Magicant_Dragon_Wake, // 0407 / 0x0197
0                , // 0408 / 0x0198
gMSG_Snowman_Priest, // 0409 / 0x0199
gMSG_Snowman_Priest_After, // 0410 / 0x019A
gMSG_Merrysville_PassTrigger, // 0411 / 0x019B
gMSG_Ellay_Tower_Rocket, // 0412 / 0x019C
gMSG_Snowman_YuccaGirl, // 0413 / 0x019D
gMSG_Yucca_NiceBones, // 0414 / 0x019E
gMSG_Yucca_SignBones, // 0415 / 0x019F
gMSG_Yucca_BraveBones, // 0416 / 0x01A0
gMSG_Yucca_CamelBones, // 0417 / 0x01A1
gMSG_Yucca_CamelBones_Accept, // 0418 / 0x01A2
gMSG_Yucca_CamelBones_Decline, // 0419 / 0x01A3
gMSG_Yucca_GameBones, // 0420 / 0x01A4
gMSG_Yucca_Sign, // 0421 / 0x01A5
gMSG_Yucca_Pilot_Mine, // 0422 / 0x01A6
gMSG_Yucca_Pilot_Ride, // 0423 / 0x01A7
gMSG_Yucca_Pilot_Ride_Accept, // 0424 / 0x01A8
gMSG_Yucca_Pilot_Ride_Decline, // 0425 / 0x01A9
gMSG_Yucca_Pilot_Tank, // 0426 / 0x01AA
gMSG_Ellay_Pilot, // 0427 / 0x01AB
0                , // 0428 / 0x01AC
gMSG_Ellay_Pilot_Accept, // 0429 / 0x01AD
gMSG_Ellay_Pilot_Decline, // 0430 / 0x01AE
0                , // 0431 / 0x01AF
gMSG_Youngtown_ParentGirl, // 0432 / 0x01B0
gMSG_Youngtown_Guard, // 0433 / 0x01B1
gMSG_Youngtown_Guard2, // 0434 / 0x01B2
gMSG_Youngtown_BabyGirl, // 0435 / 0x01B3
gMSG_Youngtown_MathGuy, // 0436 / 0x01B4
gMSG_Youngtown_MomGirl, // 0437 / 0x01B5
gMSG_Youngtown_DadGuy, // 0438 / 0x01B6
gMSG_Youngtown_ShipGirl, // 0439 / 0x01B7
gMSG_Youngtown_GrownupGuy, // 0440 / 0x01B8
gMSG_Youngtown_HoldMeGirl, // 0441 / 0x01B9
gMSG_Youngtown_HoldMeGuy, // 0442 / 0x01BA
gMSG_Youngtown_HoldMeGuy2, // 0443 / 0x01BB
gMSG_Youngtown_PleaseGirl, // 0444 / 0x01BC
gMSG_Youngtown_TomGarrickson, // 0445 / 0x01BD
gMSG_Youngtown_MysticGirl, // 0446 / 0x01BE
0                , // 0447 / 0x01BF
gMSG_Youngtown_BabyTalk, // 0448 / 0x01C0
gMSG_Youngtown_Baby, // 0449 / 0x01C1
0                , // 0450 / 0x01C2
0                , // 0451 / 0x01C3
0                , // 0452 / 0x01C4
0                , // 0453 / 0x01C5
gMSG_Youngtown_VoiceGuy, // 0454 / 0x01C6
gMSG_Ellay_JailCop_NoRoom, // 0455 / 0x01C7
gMSG_Ellay_LHCop_Jail, // 0456 / 0x01C8
gMSG_Ellay_BBGangFake, // 0457 / 0x01C9
gMSG_Ellay_BBGangWoman, // 0458 / 0x01CA
gMSG_Ellay_BBGangGirl, // 0459 / 0x01CB
gMSG_Ellay_BBGangWoman2, // 0460 / 0x01CC
gMSG_Ellay_CloudGuy, // 0461 / 0x01CD
gMSG_Ellay_PeaceGuy, // 0462 / 0x01CE
gMSG_Ellay_PeaceGuy_Default, // 0463 / 0x01CF
gMSG_Ellay_PeaceGuy_Decline, // 0464 / 0x01D0
gMSG_Ellay_TicketGuy, // 0465 / 0x01D1
gMSG_Ellay_JailCop_HasWeapon_Accept, // 0466 / 0x01D2
gMSG_Ellay_JailCop_HasWeapon_Decline, // 0467 / 0x01D3
gMSG_Ellay_SecretGirl, // 0468 / 0x01D4
gMSG_Ellay_SecretGirl_Accept, // 0469 / 0x01D5
gMSG_Ellay_SecretGirl_Decline, // 0470 / 0x01D6
gMSG_Ellay_LHBackroomGuy, // 0471 / 0x01D7
0                , // 0472 / 0x01D8
gMSG_Ellay_LHDrinkGirl_Offer, // 0473 / 0x01D9
gMSG_Ellay_LHDrinkGirl_Offer_Decline, // 0474 / 0x01DA
gMSG_Ellay_LHDrinkGirl, // 0475 / 0x01DB
gMSG_Ellay_LHCop_JailShame, // 0476 / 0x01DC
gMSG_Ellay_LHCop_JailShame_Yes, // 0477 / 0x01DD
gMSG_Ellay_LHCop_JailShame_No, // 0478 / 0x01DE
gMSG_Ellay_JailCop_HasWeapon, // 0479 / 0x01DF
gMSG_Ellay_Pilot_NoMoney, // 0480 / 0x01E0
gMSG_Ellay_LHTeddyGirl, // 0481 / 0x01E1
gMSG_Ellay_LHTeddyGirl2, // 0482 / 0x01E2
gMSG_Ellay_LHBouncerGuy_Offer, // 0483 / 0x01E3
gMSG_Ellay_LHBouncerGuy_Offer_Yes, // 0484 / 0x01E4
gMSG_Ellay_LHBouncerGuy_Offer_No, // 0485 / 0x01E5
0                , // 0486 / 0x01E6
gMSG_Ellay_LHCuteGuy2, // 0487 / 0x01E7
gMSG_Ellay_LHCuteGuy, // 0488 / 0x01E8
gMSG_Ellay_LHTeddy_Intro, // 0489 / 0x01E9
gMSG_Ellay_LHTeddy_Intro_Yes, // 0490 / 0x01EA
gMSG_Ellay_LHTeddy_Intro_No, // 0491 / 0x01EB
gMSG_Ellay_LHTeddy_PostFight, // 0492 / 0x01EC
0                , // 0493 / 0x01ED
gMSG_MyHome_Mom_Help, // 0494 / 0x01EE
gMSG_PayPhone_UseCard, // 0495 / 0x01EF
gMSG_Ellay_LHTeddy_TeamUp_Agree, // 0496 / 0x01F0
0                , // 0497 / 0x01F1
0                , // 0498 / 0x01F2
gMSG_Ellay_LHTeddy_TeamUp_Decline2, // 0499 / 0x01F3
gMSG_Ellay_LHTeddy_TeamUp_Decline3, // 0500 / 0x01F4
gMSG_Ellay_LHTeddy_ReplaceLloyd, // 0501 / 0x01F5
0                , // 0502 / 0x01F6
gMSG_Ellay_Teddy_TeddyBed_Speech, // 0503 / 0x01F7
gMSG_MtItoi_Teddy_PostDance, // 0504 / 0x01F8
gMSG_Ellay_LHSideGuy, // 0505 / 0x01F9
gMSG_Swamp_LloydDad, // 0506 / 0x01FA
gMSG_Swamp_LloydDad_Yes, // 0507 / 0x01FB
gMSG_Snowman_RegName, // 0508 / 0x01FC
gMSG_Ellay_HarborGuy, // 0509 / 0x01FD
gMSG_Island_Scientist, // 0510 / 0x01FE
gMSG_Island_Scientist_Yes, // 0511 / 0x01FF
gMSG_Island_Scientist_No, // 0512 / 0x0200
gMSG_Island_Scientist_Give, // 0513 / 0x0201
0                , // 0514 / 0x0202
0                , // 0515 / 0x0203
gMSG_Ellay_FakeHealer, // 0516 / 0x0204
0                , // 0517 / 0x0205
gMSG_Ellay_FakeHealer_Lloyd, // 0518 / 0x0206
gMSG_Ellay_FakeHealer_Ask, // 0519 / 0x0207
gMSG_EVE_EVE, // 0520 / 0x0208
0                , // 0521 / 0x0209
0                , // 0522 / 0x020A
0                , // 0523 / 0x020B
0                , // 0524 / 0x020C
gMSG_Magicant_GoodsKeeper_Bags, // 0525 / 0x020D
gMSG_GameOver1, // 0526 / 0x020E
gMSG_GameOver2, // 0527 / 0x020F
gMSG_GameOver_Dream, // 0528 / 0x0210
gUnknown_08F20170, // 0529 / 0x0211
gMSG_MyHome_Minnie_Storage_InvFull, // 0530 / 0x0212
gUnknown_08F20198, // 0531 / 0x0213
gMSG_Podunk_Pippi_Friend, // 0532 / 0x0214
gMSG_Twinkle_LloydBully_DeadLloyd, // 0533 / 0x0215
gMSG_Podunk_Sign, // 0534 / 0x0216
gMSG_Zoo_OfficeSign, // 0535 / 0x0217
gMSG_Ellay_LookoutTowerSign, // 0536 / 0x0218
gMSG_Hospital_NoPerson, // 0537 / 0x0219
gMSG_Magicant_FountainRedWeed, // 0538 / 0x021A
gMSG_Healer_Man, // 0539 / 0x021B
gMSG_Twinkle_ScientistRocket1, // 0540 / 0x021C
gMSG_Reindeer_MislaySign, // 0541 / 0x021D
gMSG_Reindeer_MislaySign2, // 0542 / 0x021E
gMSG_Magicant_Doctor, // 0543 / 0x021F
gUnknown_08F20333, // 0544 / 0x0220
0                , // 0545 / 0x0221
gMSG_MyHome_Invasion, // 0546 / 0x0222
gMSG_Twinkle_ScientistRocket2, // 0547 / 0x0223
gMSG_MyHome_Mom_Cook, // 0548 / 0x0224
0                , // 0549 / 0x0225
0                , // 0550 / 0x0226
0                , // 0551 / 0x0227
gMSG_Podunk_PippiMom, // 0552 / 0x0228
gMSG_Returns_Which, // 0553 / 0x0229
gMSG_Returns_Price, // 0554 / 0x022A
gMSG_MagiCave_ShellDiary, // 0555 / 0x022B
0                , // 0556 / 0x022C
0                , // 0557 / 0x022D
gMSG_Magicant_PhilosophyMan_YesFlag, // 0558 / 0x022E
gMsg_Ellay_LHBouncerGuy_Trio, // 0559 / 0x022F
gUnknown_08F2050E, // 0560 / 0x0230
0                , // 0561 / 0x0231
gMsg_Magicant_Dragon_Sleep, // 0562 / 0x0232
gMsg_Magicant_Dragon_Relisten, // 0563 / 0x0233
gMsg_Ellay_LHBouncerGirl, // 0564 / 0x0234
0                , // 0565 / 0x0235
gMsg_MyHome_Minnie_Storage_Stash, // 0566 / 0x0236
gMsg_MyHome_Minnie_Storage_Bye, // 0567 / 0x0237
gMsg_MyHome_Minnie_Storage_Take, // 0568 / 0x0238
gMsg_Train_CantMove, // 0569 / 0x0239
gMsg_Shop_Confirm, // 0570 / 0x023A
gMsg_DrugsVendor_NoMore, // 0571 / 0x023B
0                , // 0572 / 0x023C
gMsg_Healer_Broke, // 0573 / 0x023D
gMsg_Yucca_Pilot_NoRoom, // 0574 / 0x023E
gMsg_Yucca_Pilot_NoMoney, // 0575 / 0x023F
gMsg_Magicant_GoodsKeeper_Bye, // 0576 / 0x0240
0                , // 0577 / 0x0241
gMsg_Podunk_Pippi_NoRoom, // 0578 / 0x0242
gMsg_Ellay_FakeHealer_LifeUp, // 0579 / 0x0243
gMsg_Ellay_FakeHealer_Sleep, // 0580 / 0x0244
0                , // 0581 / 0x0245
gMsg_Atm_HowMuch_Withdraw, // 0582 / 0x0246
gMsg_Atm_HowMuch_Deposit, // 0583 / 0x0247
gMsg_Graveyard_Pippi_Leave, // 0584 / 0x0248
gMsg_Podunk_Pippi_NoRoom2, // 0585 / 0x0249
gMsg_PetVendor_NoCarry, // 0586 / 0x024A
gMsg_Abbott_CantHold, // 0587 / 0x024B
0                , // 0588 / 0x024C
gMsg_Yucca_Pilot_ChoosePlan, // 0589 / 0x024D
0                , // 0590 / 0x024E
0                , // 0591 / 0x024F
gMsg_Mislay_MouthwashGuy_Dentures2, // 0592 / 0x0250
gMsg_Yucca_Pilot_NoMoney2, // 0593 / 0x0251
0                , // 0594 / 0x0252
0                , // 0595 / 0x0253
0                , // 0596 / 0x0254
0                , // 0597 / 0x0255
0                , // 0598 / 0x0256
0                , // 0599 / 0x0257
gMsg_Spookane_MrsRosemary3, // 0600 / 0x0258
gMsg_Podunk_Pippi_Goodbye, // 0601 / 0x0259
gMsg_Ellay_LHTeddy_Challenge, // 0602 / 0x025A
gMsg_Ellay_SecretGirl_Teddy, // 0603 / 0x025B
0                , // 0604 / 0x025C
gMsg_Ellay_LHTeddy_TeamUp_Decline, // 0605 / 0x025D
gMsg_Merrysville_PassTrigger2, // 0606 / 0x025E
gMsg_Mislay_MouthwashKid_NoMoney, // 0607 / 0x025F
gMsg_Merrysville_Questionnaire_Noroom, // 0608 / 0x0260
gMsg_Island_Able, // 0609 / 0x0261
gMsg_Island_Able_Give, // 0610 / 0x0262
gMsg_Island_Baker, // 0611 / 0x0263
gMsg_Island_Baker_Give, // 0612 / 0x0264
gMsg_Ellay_FakeHealer_Menu, // 0613 / 0x0265
gMsg_Magicant_BigBagGuy_NoRoom, // 0614 / 0x0266
gMsg_Magicant_BigBagGuy_Gift1, // 0615 / 0x0267
gMsg_Magicant_BigBagGuy_Gift2, // 0616 / 0x0268
gMsg_Twinkle_Janitor2, // 0617 / 0x0269
gUnknown_08F2099D, // 0618 / 0x026A
gMsg_Island_Scientist_After, // 0619 / 0x026B
gMsg_Canary_Laura, // 0620 / 0x026C
0                , // 0621 / 0x026D
0                , // 0622 / 0x026E
0                , // 0623 / 0x026F
gMsg_Mayor_Pippi_Dead, // 0624 / 0x0270
gMsg_Mayor_Ninten_Dead, // 0625 / 0x0271
0                , // 0626 / 0x0272
gMsg_Abbott_Intro, // 0627 / 0x0273
gMsg_Magicant_InnBoy_Goodbye, // 0628 / 0x0274
gMsg_Magicant_InnBoy_Goodbye2, // 0629 / 0x0275
gMsg_Swamp_HousePippi_Morning, // 0630 / 0x0276
gMsg_MCave_BewareMonkey, // 0631 / 0x0277
gMsg_MCave_Raccoon, // 0632 / 0x0278
gMsg_MCave_Raccoon_Yes, // 0633 / 0x0279
gMsg_MCave_Raccoon_No, // 0634 / 0x027A
gMsg_MCave_ChillMonkey, // 0635 / 0x027B
gMsg_MCave_ChillMonkey_Yes, // 0636 / 0x027C
gMsg_MCave_ChillMonkey_No, // 0637 / 0x027D
gMsg_MCave_QuickMonkey, // 0638 / 0x027E
gMsg_MCave_DirectionMonkey, // 0639 / 0x027F
gMsg_MCave_QuietMonkey, // 0640 / 0x0280
gMsg_MCave_TruthMonkey, // 0641 / 0x0281
gMsg_MCave_LadyMonkey, // 0642 / 0x0282
gMsg_MCave_LadyMonkey_Lie, // 0643 / 0x0283
0                , // 0644 / 0x0284
gMsg_MCave_MelodyMonkey, // 0645 / 0x0285
gMsg_MCave_TimeMonkey, // 0646 / 0x0286
gMsg_MCave_StoryMonkey, // 0647 / 0x0287
gMsg_MCave_StoryMonkey_Yes, // 0648 / 0x0288
gMsg_MCave_StoryMonkey_No, // 0649 / 0x0289
gMsg_MCave_WarningMonkey, // 0650 / 0x028A
gMsg_MCave_BTWMonkey, // 0651 / 0x028B
gMsg_MCave_GoBackMonkey, // 0652 / 0x028C
gMsg_MCave_TeddyMonkey, // 0653 / 0x028D
gMsg_MCave_ShyMonkey, // 0654 / 0x028E
gMsg_MCave_AnaMonkey, // 0655 / 0x028F
gMsg_MCave_LieMonkey, // 0656 / 0x0290
gMsg_MCave_BossMonkey, // 0657 / 0x0291
gMsg_MCave_Penguin, // 0658 / 0x0292
gMsg_MyHome_Mimmie_Invasion2, // 0659 / 0x0293
gMsg_MyHome_Mom_Invasion2, // 0660 / 0x0294
gMsg_Abbott_Mayor, // 0661 / 0x0295
gMsg_Secretary_Secret, // 0662 / 0x0296
gMsg_Magicant_InnBoy_Again, // 0663 / 0x0297
gUnknown_08F20E6D, // 0664 / 0x0298
gMsg_Spookane_HintGirl_Hint1, // 0665 / 0x0299
0                , // 0666 / 0x029A
gMsg_Snowman_Priest_AnaDead, // 0667 / 0x029B
gMsg_Ellay_LHCop_Arrest, // 0668 / 0x029C
0                , // 0669 / 0x029D
0                , // 0670 / 0x029E
gMsg_Ellay_LHBackroomGuy_Mine, // 0671 / 0x029F
gMsg_Ellay_LHSideGuy_Mine, // 0672 / 0x02A0
gMsg_Yucca_Mine, // 0673 / 0x02A1
gMsg_Magicant_InnKeeper_Goodbye, // 0674 / 0x02A2
gMsg_Hospital_Nurse_Decline, // 0675 / 0x02A3
gMsg_Hospital_Nurse_NoOne, // 0676 / 0x02A4
gMsg_Reindeer_HospitalWeightGuy, // 0677 / 0x02A5
gMsg_Reindeer_HospitalColdGuy, // 0678 / 0x02A6
gMsg_Podunk_HotelWoman, // 0679 / 0x02A7
gMsg_Reindeer_HotelGuy, // 0680 / 0x02A8
gMsg_Merrysville_HotelWaiter, // 0681 / 0x02A9
gMsg_Merrysville_HotelMusicalGirl, // 0682 / 0x02AA
gMsg_Merrysville_HotelFavFoodGuy, // 0683 / 0x02AB
gMsg_Merrysville_HotelGuy, // 0684 / 0x02AC
gMsg_Podunk_HotelGuy, // 0685 / 0x02AD
gMsg_Merrysville_TrainWoman2, // 0686 / 0x02AE
gMsg_MyHome_Dog, // 0687 / 0x02AF
gMsg_Spookane_HintGirl_NoMoney, // 0688 / 0x02B0
gMsg_BurgerShop_Menu, // 0689 / 0x02B1
gMsg_BurgerShop_Buy, // 0690 / 0x02B2
0                , // 0691 / 0x02B3
0                , // 0692 / 0x02B4
gMsg_Ellay_HotelLady, // 0693 / 0x02B5
gMsg_Ellay_LHBouncerGirl2, // 0694 / 0x02B6
gMsg_Reindeer_HotelWaitingGuy, // 0695 / 0x02B7
gMsg_Reindeer_HotelFavFoodGirl, // 0696 / 0x02B8
0                , // 0697 / 0x02B9
0                , // 0698 / 0x02BA
gMsg_Graveyard_Priest, // 0699 / 0x02BB
gMsg_Swamp_HousePippi, // 0700 / 0x02BC
gMsg_BurgerShop_SnotNosed, // 0701 / 0x02BD
gMsg_BurgerShop_CashNCarry, // 0702 / 0x02BE
gMsg_Reindeer_FoodsWoman, // 0703 / 0x02BF
0                , // 0704 / 0x02C0
gMsg_Youngtown_TrainMan, // 0705 / 0x02C1
gMsg_Ellay_LHCop_JailScene1, // 0706 / 0x02C2
gMsg_Ellay_LHCop_JailScene2, // 0707 / 0x02C3
gMsg_Podunk_Pippi_Brave, // 0708 / 0x02C4
gMsg_Podunk_CanaryGuy, // 0709 / 0x02C5
gMsg_Podunk_ShyGuy, // 0710 / 0x02C6
gMsg_Podunk_AsthmaGirl, // 0711 / 0x02C7
gMsg_Merrysville_NintendoGirl, // 0712 / 0x02C8
gMsg_Merrysville_HappyGuy, // 0713 / 0x02C9
gMsg_Merrysville_StripGirl, // 0714 / 0x02CA
gMsg_Merrysville_DoctorGuy, // 0715 / 0x02CB
gMsg_Merrysville_Questionnaire_Decline, // 0716 / 0x02CC
gMsg_Merrysville_SchoolGuy, // 0717 / 0x02CD
gMsg_Merrysville_MayorGuy, // 0718 / 0x02CE
gMsg_Merrysville_RocketGuy, // 0719 / 0x02CF
gMsg_Merrysville_OrdinaryGuy, // 0720 / 0x02D0
gMsg_Merrysville_ThinkingGuy, // 0721 / 0x02D1
gMsg_Merrysville_HusbandGirl, // 0722 / 0x02D2
gMsg_Merrysville_SweetsGuy, // 0723 / 0x02D3
gMsg_Merrysville_MonsterGirl, // 0724 / 0x02D4
gMsg_Twinkle_MusicGirl, // 0725 / 0x02D5
gMsg_Twinkle_JanitorGirl, // 0726 / 0x02D6
gMsg_Reindeer_RumorMWGirl, // 0727 / 0x02D7
gMsg_Reindeer_TunnelGuy, // 0728 / 0x02D8
gMsg_Reindeer_QuietWoman, // 0729 / 0x02D9
gMsg_Reindeer_FoodGirl, // 0730 / 0x02DA
gMsg_Reindeer_PeepingGuy, // 0731 / 0x02DB
gMsg_Reindeer_BicycleGuy, // 0732 / 0x02DC
gMsg_Reindeer_BegGirl, // 0733 / 0x02DD
gMsg_Reindeer_BeautyGirl, // 0734 / 0x02DE
gMsg_Reindeer_NonbelieverGuy, // 0735 / 0x02DF
gMsg_Reindeer_NihilisticGuy, // 0736 / 0x02E0
gMsg_Reindeer_SpookaneGirl2, // 0737 / 0x02E1
gMsg_Reindeer_ChairtyWoman, // 0738 / 0x02E2
gMsg_Reindeer_MedicineGuy, // 0739 / 0x02E3
gMsg_Spookane_Postman, // 0740 / 0x02E4
gMsg_Spookane_PostmanGirl, // 0741 / 0x02E5
gMsg_Spookane_HateGirl, // 0742 / 0x02E6
gMsg_Spookane_SteetsGirl, // 0743 / 0x02E7
gMsg_Spookane_WhatGuy, // 0744 / 0x02E8
gMsg_Snowman_PsychicGuy, // 0745 / 0x02E9
gMsg_Snowman_ChateauWoman, // 0746 / 0x02EA
gMsg_Snowman_ChateauGuy, // 0747 / 0x02EB
gMsg_Snowman_TShirtGuy, // 0748 / 0x02EC
gMsg_Snowman_CamelGuy, // 0749 / 0x02ED
gMsg_Twinkle_Nurse, // 0750 / 0x02EE
gMsg_Twinkle_EngineerKid, // 0751 / 0x02EF
gMsg_Twinkle_ColdGirl, // 0752 / 0x02F0
gMsg_Ellay_Fisher, // 0753 / 0x02F1
gMsg_Ellay_BBGang1, // 0754 / 0x02F2
gMsg_Ellay_BBGang2, // 0755 / 0x02F3
gMsg_Ellay_BBGang3, // 0756 / 0x02F4
gMsg_Ellay_BBGang4, // 0757 / 0x02F5
gMsg_Ellay_BBGang5, // 0758 / 0x02F6
gMsg_Ellay_BBGang6, // 0759 / 0x02F7
gMsg_Ellay_SignGuy, // 0760 / 0x02F8
gMsg_Ellay_CactusGirl, // 0761 / 0x02F9
gMsg_Ellay_FisherGuy, // 0762 / 0x02FA
gMsg_Twinkle_AllCartwheelGirl, // 0763 / 0x02FB
gMsg_Ellay_TowerBellhop, // 0764 / 0x02FC
gMsg_Ellay_Tower_Guy, // 0765 / 0x02FD
gMsg_Twinkle_CantCartwheelGirl, // 0766 / 0x02FE
gMsg_Twinkle_SubtractionGirl, // 0767 / 0x02FF
gMsg_Twinkle_TofuKid, // 0768 / 0x0300
gMsg_Twinkle_HungryKid, // 0769 / 0x0301
gMsg_Twinkle_DadGirl, // 0770 / 0x0302
gMsg_Twinkle_LateGirl, // 0771 / 0x0303
gMsg_Twinkle_StrangeGirl, // 0772 / 0x0304
gMsg_Twinkle_GameKid, // 0773 / 0x0305
gMsg_DrugsVendor_Welcome, // 0774 / 0x0306
gMsg_VarietyVendor_OutOfStock, // 0775 / 0x0307
gMsg_BurgerShop_No_Buy, // 0776 / 0x0308
gMsg_BurgerShop_Goodbye, // 0777 / 0x0309
gMsg_Mislay_MouthwashKid_NoTake, // 0778 / 0x030A
gMsg_Hospital_Nurse_Revive, // 0779 / 0x030B
gMsg_Hospital_Nurse_NoRevive, // 0780 / 0x030C
gMsg_Podunk_HospitalDoctor, // 0781 / 0x030D
gMsg_Podunk_HospitalDoctor_Decline, // 0782 / 0x030E
gMsg_Podunk_HospitalDoctor_Normal, // 0783 / 0x030F
gMsg_Podunk_HospitalDoctor_Accept, // 0784 / 0x0310
0                , // 0785 / 0x0311
gMsg_Healer_Intro, // 0786 / 0x0312
gMsg_Healer_No, // 0787 / 0x0313
gMsg_Healer_Price, // 0788 / 0x0314
gMsg_HotelBellhop, // 0789 / 0x0315
gMsg_HotelBellhop_Decline, // 0790 / 0x0316
gMsg_HotelBellhop_Accept, // 0791 / 0x0317
gMsg_HotelBellhop_GoodMorning, // 0792 / 0x0318
gMsg_Hospital_Nurse_Select, // 0793 / 0x0319
gMsg_Hospital_Nurse, // 0794 / 0x031A
0                , // 0795 / 0x031B
gMsg_Youngtown_HotelBellhop, // 0796 / 0x031C
gMsg_Youngtown_HotelBellhop_GoodMorning, // 0797 / 0x031D
gMsg_Youngtown_HotelBellhop_Decline, // 0798 / 0x031E
gMsg_Ellay_LHBouncerGirl_Ticket, // 0799 / 0x031F
gUnknown_08F2219B, // 0800 / 0x0320
0                , // 0801 / 0x0321
gMsg_MyHome_Minnie_Storage, // 0802 / 0x0322
gMsg_MyHome_Minnie_Storage_InvNothing, // 0803 / 0x0323
gMsg_MyHome_Minnie_Storage_Nothing, // 0804 / 0x0324
gMsg_MyHome_Minnie_Storage_Full, // 0805 / 0x0325
gMsg_Atm_Intro, // 0806 / 0x0326
gMsg_Atm_Insufficient, // 0807 / 0x0327
0                , // 0808 / 0x0328
gMsg_Atm_Not_Enough_Stored, // 0809 / 0x0329
gMsg_Atm_Deposit_Too_Much, // 0810 / 0x032A
gMsg_Spookane_HotelBellhop_Thanks, // 0811 / 0x032B
gMsg_MyHome_Doll, // 0812 / 0x032C
gMsg_Canary_Pillar, // 0813 / 0x032D
gUnknown_08F222B9, // 0814 / 0x032E
gMsg_Ellay_JailCop, // 0815 / 0x032F
0                , // 0816 / 0x0330
gUnknown_08F22303, // 0817 / 0x0331
gMsg_Atm_Menu, // 0818 / 0x0332
gMsg_Atm_Current_Balance, // 0819 / 0x0333
gMsg_Door_Locked, // 0820 / 0x0334
gMsg_Door_KeyFail, // 0821 / 0x0335
gMsg_Door_Unlocked, // 0822 / 0x0336
gMsg_Menu_Phone_Yes_No, // 0823 / 0x0337
gMsg_Menu_Continue_Rest, // 0824 / 0x0338
gMsg_Phone_Grab, // 0825 / 0x0339
gMsg_Hopistal_Nurse_NoMoney, // 0826 / 0x033A
gMsg_BurgerShop_NoMoney, // 0827 / 0x033B
gMsg_BurgerShop_No_Room, // 0828 / 0x033C
gMsg_Healer_Fixed, // 0829 / 0x033D
gMsg_Returns_CantSell, // 0830 / 0x033E
gMsg_Canary_Laura_Sing, // 0831 / 0x033F
gMsg_Remember_Melody, // 0832 / 0x0340
gMsg_Canary_Sing, // 0833 / 0x0341
gMsg_Zoo_GateMonkey_Key, // 0834 / 0x0342
gUnknown_08F2249E, // 0835 / 0x0343
gMsg_EVE_EVECheck, // 0836 / 0x0344
gMsg_Phone_ExpLvl, // 0837 / 0x0345
gMsg_Ellay_FakeHealer_Goodbye, // 0838 / 0x0346
0                , // 0839 / 0x0347
gMsg_Magicant_Fountain, // 0840 / 0x0348
0                , // 0841 / 0x0349
gMsg_Podunk_PippiMom_Return, // 0842 / 0x034A
gMsg_Twinkle_F1_Room6Entrance_NoJanitor, // 0843 / 0x034B
gUnknown_08F2259E, // 0844 / 0x034C
gMsg_Healer_Who, // 0845 / 0x034D
gUnknown_08F225C5, // 0846 / 0x034E
gMsg_Healer_Soften_Fail, // 0847 / 0x034F
gMsg_Merrysville_SweetsGuy_Yes, // 0848 / 0x0350
gMsg_Twinkle_F2Janitor, // 0849 / 0x0351
gMsg_Twinkle_F2Janitor2, // 0850 / 0x0352
gMsg_Twinkle_F2Lloyd, // 0851 / 0x0353
gMsg_Twinkle_F1Lloyd, // 0852 / 0x0354
gMsg_Ellay_Fisher2, // 0853 / 0x0355
gMsg_Ellay_HotelColdLady, // 0854 / 0x0356
gMsg_Reindeer_HotelMeanGuy, // 0855 / 0x0357
gMsg_Ellay_HotelBigLady, // 0856 / 0x0358
0                , // 0857 / 0x0359
gMsg_Spookane_HintGirl_Hint2, // 0858 / 0x035A
gMsg_Spookane_HintGirl_Hint3, // 0859 / 0x035B
gMsg_MyHome_Dog_Advice, // 0860 / 0x035C
gMsg_Zoo_Monkey, // 0861 / 0x035D
gMsg_Yucca_SingingCactus, // 0862 / 0x035E
gMsg_RosemaryHouse_Piano_Melody, // 0863 / 0x035F
gMsg_Magicant_Dragon_Melody, // 0864 / 0x0360
gMsg_MtItoi_EVE_Melody, // 0865 / 0x0361
gMsg_Zoo_MonkeySign, // 0866 / 0x0362
gMsg_Twinkle_F2_Upstairs_PadLock, // 0867 / 0x0363
gMsg_Snowman_Priest_Goodbye, // 0868 / 0x0364
gMsg_Phone_Payphone, // 0869 / 0x0365
gMsg_Graveyard_Pippi_Afraid, // 0870 / 0x0366
gMsg_Zoo_Gate, // 0871 / 0x0367
gMsg_Ellay_BBGang1_Teddy, // 0872 / 0x0368
gMsg_Ellay_BBGang1_Teddy2, // 0873 / 0x0369
gMsg_MyHome_Minnie_Storage_Cant, // 0874 / 0x036A
gMsg_Magicant_FlyingManGrave1, // 0875 / 0x036B
gMsg_Magicant_FlyingManGrave2, // 0876 / 0x036C
gMsg_Magicant_FlyingManGrave3, // 0877 / 0x036D
gMsg_Magicant_FlyingManGrave4, // 0878 / 0x036E
gMsg_Magicant_FlyingManGrave5, // 0879 / 0x036F
gMsg_Podunk_MagiCop, // 0880 / 0x0370
gMsg_Podunk_MagiCop_Lifted, // 0881 / 0x0371
gMsg_Podunk_MagiCop2_Lifted, // 0882 / 0x0372
gMsg_AnaHat_Woman1, // 0883 / 0x0373
gMsg_AnaHat_Woman_Yes, // 0884 / 0x0374
gMsg_AnaHat_Woman_No, // 0885 / 0x0375
gMsg_Reindeer_SingingGuy_Accept2, // 0886 / 0x0376
gMsg_Merrysville_Questionnaire, // 0887 / 0x0377
0                , // 0888 / 0x0378
gMsg_Merrysville_Questionnaire_Q1, // 0889 / 0x0379
gMsg_Merrysville_Questionnaire_Q2, // 0890 / 0x037A
gMsg_Merrysville_Questionnaire_Finish, // 0891 / 0x037B
gMsg_Merrysville_Questionnaire_Done, // 0892 / 0x037C
gMsg_Magicant_Benevolent_Appear, // 0893 / 0x037D
gMsg_Graveyard_Casket_Generic, // 0894 / 0x037E
gMsg_Ellay_Tower_Telescope, // 0895 / 0x037F
gMsg_Ellay_Tower_Telescope2, // 0896 / 0x0380
gMsg_Ellay_Tower_Telescope_Rocket, // 0897 / 0x0381
gMsg_Zoo_Capsule, // 0898 / 0x0382
gMsg_Snowman_Ana_Goodbye, // 0899 / 0x0383
gUnknown_08F22D99, // 0900 / 0x0384
gMsg_Talk_NoOne, // 0901 / 0x0385
gMsg_Talk_Party, // 0902 / 0x0386
gMsg_Check_Nothing, // 0903 / 0x0387
gUnknown_08F22DBA, // 0904 / 0x0388
0                , // 0905 / 0x0389
0                , // 0906 / 0x038A
gMsg_WeaponShop, // 0907 / 0x038B
gMsg_Shop_ThankYou, // 0908 / 0x038C
0                , // 0909 / 0x038D
gMsg_Use_Item, // 0910 / 0x038E
gMsg_Cant_Use_Item, // 0911 / 0x038F
gMsg_Cant_Eat, // 0912 / 0x0390
gMsg_Equipped_Item, // 0913 / 0x0391
gMsg_Cant_Equip_Item, // 0914 / 0x0392
gMsg_Toss_Item, // 0915 / 0x0393
gMsg_Cant_Toss_Item, // 0916 / 0x0394
gMsg_Give_Item, // 0917 / 0x0395
gMsg_Cant_Give, // 0918 / 0x0396
gMsg_Cant_Give_Full, // 0919 / 0x0397
gMsg_Nothing_Happened, // 0920 / 0x0398
gMsg_Open_Present, // 0921 / 0x0399
gMsg_Present_Item, // 0922 / 0x039A
gMsg_Get_Item, // 0923 / 0x039B
0                , // 0924 / 0x039C
gMsg_Inventory_Full, // 0925 / 0x039D
0                , // 0926 / 0x039E
0                , // 0927 / 0x039F
0                , // 0928 / 0x03A0
gMsg_Present_Empty, // 0929 / 0x03A1
gMsg_Healer_Choicer, // 0930 / 0x03A2
gMsg_Canary_Sign, // 0931 / 0x03A3
gMsg_Podunk_CanarySign, // 0932 / 0x03A4
gMsg_Podunk_CityHallSign, // 0933 / 0x03A5
gMsg_Ellay_ResidentialSign, // 0934 / 0x03A6
gMsg_Ellay_ResidentialSign2, // 0935 / 0x03A7
gMsg_Podunk_GraveSign, // 0936 / 0x03A8
gMsg_Podunk_MerrySign, // 0937 / 0x03A9
gMsg_Podunk_ZooSign, // 0938 / 0x03AA
gMsg_Snowman_Sign, // 0939 / 0x03AB
gMsg_Ellay_IntroSign, // 0940 / 0x03AC
gMsg_Merrysville_SchoolSign, // 0941 / 0x03AD
gMsg_MyHome_Sign, // 0942 / 0x03AE
gMsg_Merrysville_Sign, // 0943 / 0x03AF
gMsg_Reindeer_Sign, // 0944 / 0x03B0
gMsg_Spookane_Sign, // 0945 / 0x03B1
gMsg_Youngtown_Sign, // 0946 / 0x03B2
gMsg_Spookane_MansionSign, // 0947 / 0x03B3
gMsg_Ellay_JailSign, // 0948 / 0x03B4
gMsg_Merrysville_DuncanSign, // 0949 / 0x03B5
gMsg_Magicant_FlyingMan_Replace, // 0950 / 0x03B6
gMsg_Magicant_FlyingMan_Serve, // 0951 / 0x03B7
gMsg_Magicant_FlyingMan_Intro, // 0952 / 0x03B8
gMsg_Podunk_MagiCop2_Lifted2, // 0953 / 0x03B9
gMsg_Ellay_Tower_RocketCheck, // 0954 / 0x03BA
gMsg_Podunk_Pippi_Goods, // 0955 / 0x03BB
gMsg_Podunk_Pippi_NoGoods, // 0956 / 0x03BC
gMsg_MyHome_Minnie, // 0957 / 0x03BD
gMsg_Healer_Menu, // 0958 / 0x03BE
gMsg_MtItoi_Teddy_Call, // 0959 / 0x03BF
gMsg_MtItoi_LloydSave, // 0960 / 0x03C0
gMsg_MtItoi_AnaLove_Yes, // 0961 / 0x03C1
gMsg_MtItoi_TeddyLeave, // 0962 / 0x03C2
gMsg_MtItoi_TeddyLeave2, // 0963 / 0x03C3
gMsg_MtItoi_Boat, // 0964 / 0x03C4
gMsg_MtItoi_Boat_NoFix, // 0965 / 0x03C5
gMsg_MtItoi_Boat_Fix, // 0966 / 0x03C6
gMsg_Magicant_GoodsKeeper_Send, // 0967 / 0x03C7
gUnknown_08F23439, // 0968 / 0x03C8
gMsg_Merrysville_SweetsSign, // 0969 / 0x03C9
gMsg_MtItoi_GieguePrison_Guy2, // 0970 / 0x03CA
gMsg_Snowman_Phone_Check, // 0971 / 0x03CB
gMsg_Zoo_Win, // 0972 / 0x03CC
0                , // 0973 / 0x03CD
gMsg_Yucca_Pilot_TankRide, // 0974 / 0x03CE
gMsg_MyHome_Dog_Check, // 0975 / 0x03CF
gMsg_Podunk_NoisyMouse, // 0976 / 0x03D0
0                , // 0977 / 0x03D1
gMsg_Youngtown_Baby_After, // 0978 / 0x03D2
gMsg_Magicant_Maria4, // 0979 / 0x03D3
gMsg_Magicant_Maria5, // 0980 / 0x03D4
gMsg_Magicant_Maria6, // 0981 / 0x03D5
gMsg_Atm_Insert_CashCard, // 0982 / 0x03D6
gMsg_Atm_Too_Much_Cash, // 0983 / 0x03D7
gMsg_GameOver_SaveData, // 0984 / 0x03D8
gMsg_Magicant_BigBagGuy_NoHave, // 0985 / 0x03D9
gMsg_Ellay_Teddy_TeddyBed, // 0986 / 0x03DA
gMsg_Give_Cant, // 0987 / 0x03DB
gMsg_Magicant_GoodsKeeper_Give, // 0988 / 0x03DC
gMsg_Magicant_GoodsKeeper_SomeoneElse, // 0989 / 0x03DD
gMsg_Magicant_GoodsKeeper_Full, // 0990 / 0x03DE
gMsg_Magicant_MariaFade, // 0991 / 0x03DF
gUnknown_08F237B0, // 0992 / 0x03E0
gMsg_Magicant_VendorIntro, // 0993 / 0x03E1
gMsg_MR_RailroadCorpse, // 0994 / 0x03E2
gMsg_BurgerShop_Anymore, // 0995 / 0x03E3
gMsg_MtItoi_Tombstone1, // 0996 / 0x03E4
gMsg_MtItoi_Tombstone2, // 0997 / 0x03E5
0                , // 0998 / 0x03E6
gUnknown_08F23944, // 0999 / 0x03E7
gMsg_IName_Null, // 1000 / 0x03E8
gMsg_IName_Big_Bag, // 1001 / 0x03E9
gMsg_IName_Phone_Card, // 1002 / 0x03EA
gMsg_IName_Crumbs, // 1003 / 0x03EB
gMsg_IName_Repel_Ring, // 1004 / 0x03EC
gMsg_IName_UnkItem5, // 1005 / 0x03ED
gMsg_IName_Memory_Chip, // 1006 / 0x03EE
gMsg_IName_UnkItem6, // 1007 / 0x03EF
gMsg_IName_UnkItem7, // 1008 / 0x03F0
gMsg_IName_UnkItem8, // 1009 / 0x03F1
gMsg_IName_ButterKnife, // 1010 / 0x03F2
gMsg_IName_Surv_Knife, // 1011 / 0x03F3
gMsg_IName_Sword, // 1012 / 0x03F4
gMsg_IName_Katana, // 1013 / 0x03F5
gMsg_IName_Stun_Gun, // 1014 / 0x03F6
gMsg_IName_Air_Gun, // 1015 / 0x03F7
gMsg_IName_Plastic_Bat, // 1016 / 0x03F8
gMsg_IName_Wooden_Bat, // 1017 / 0x03F9
gMsg_IName_AluminumBat, // 1018 / 0x03FA
gMsg_IName_Hanks_Bat, // 1019 / 0x03FB
gMsg_IName_Frying_Pan, // 1020 / 0x03FC
gMsg_IName_NonstickPan, // 1021 / 0x03FD
gMsg_IName_IronSkillet, // 1022 / 0x03FE
gMsg_IName_Slingshot, // 1023 / 0x03FF
gMsg_IName_Boomerang, // 1024 / 0x0400
gMsg_IName_Insecticide, // 1025 / 0x0401
gMsg_IName_Super_Spray, // 1026 / 0x0402
gMsg_IName_Flea_Bag, // 1027 / 0x0403
gMsg_IName_WordsOLove, // 1028 / 0x0404
gMsg_IName_Swear_Words, // 1029 / 0x0405
gMsg_IName_StkyMachine, // 1030 / 0x0406
gMsg_IName_Flashdark, // 1031 / 0x0407
gMsg_IName_StoneOrigin, // 1032 / 0x0408
gMsg_IName_PoisnNeedle, // 1033 / 0x0409
gMsg_IName_Fl_Thrower, // 1034 / 0x040A
gMsg_IName_Bomb, // 1035 / 0x040B
gMsg_IName_Super_Bomb, // 1036 / 0x040C
gMsg_IName_Laser_Beam, // 1037 / 0x040D
gMsg_IName_Plasma_Beam, // 1038 / 0x040E
gMsg_IName_UnkItem27, // 1039 / 0x040F
gMsg_IName_Rope, // 1040 / 0x0410
gMsg_IName_UnkItem29, // 1041 / 0x0411
gMsg_IName_UnkItem2A, // 1042 / 0x0412
gMsg_IName_UnkItem2B, // 1043 / 0x0413
gMsg_IName_UnkItem2C, // 1044 / 0x0414
gMsg_IName_Peace_Coin, // 1045 / 0x0415
gMsg_IName_ProtectCoin, // 1046 / 0x0416
gMsg_IName_Magic_Coin, // 1047 / 0x0417
gMsg_IName_Brass_Ring, // 1048 / 0x0418
gMsg_IName_Silver_Ring, // 1049 / 0x0419
gMsg_IName_Gold_Ring, // 1050 / 0x041A
gMsg_IName_H2O_Pendant, // 1051 / 0x041B
gMsg_IName_FirePendant, // 1052 / 0x041C
gMsg_IName_EarthPendnt, // 1053 / 0x041D
gMsg_IName_Sea_Pendant, // 1054 / 0x041E
gMsg_IName_UnkItem37, // 1055 / 0x041F
gMsg_IName_UnkItem38, // 1056 / 0x0420
gMsg_IName_UnkItem39, // 1057 / 0x0421
gMsg_IName_UnkItem3A, // 1058 / 0x0422
gMsg_IName_UnkItem3B, // 1059 / 0x0423
gMsg_IName_OrangeJuice, // 1060 / 0x0424
gMsg_IName_FrenchFries, // 1061 / 0x0425
gMsg_IName_Magic_Herb, // 1062 / 0x0426
gMsg_IName_Hamburger, // 1063 / 0x0427
gMsg_IName_SportsDrink, // 1064 / 0x0428
gMsg_IName_LifeUpCream, // 1065 / 0x0429
gMsg_IName_AsthmaSpray, // 1066 / 0x042A
gMsg_IName_Antidote, // 1067 / 0x042B
gMsg_IName_Mouthwash, // 1068 / 0x042C
gMsg_IName_berry_Tofu, // 1069 / 0x042D
gMsg_IName_UnkItem46, // 1070 / 0x042E
gMsg_IName_Bread, // 1071 / 0x042F
gMsg_IName_Noble_Seed, // 1072 / 0x0430
gMsg_IName_Psi_Stone, // 1073 / 0x0431
gMsg_IName_UnkItem4A, // 1074 / 0x0432
gMsg_IName_MagicRibbon, // 1075 / 0x0433
gMsg_IName_Magic_Candy, // 1076 / 0x0434
gMsg_IName_UnkItem4D, // 1077 / 0x0435
gMsg_IName_QuickCapsul, // 1078 / 0x0436
gMsg_IName_Wisdom_Caps, // 1079 / 0x0437
gMsg_IName_PhysicalCap, // 1080 / 0x0438
gMsg_IName_ForceCapsul, // 1081 / 0x0439
gMsg_IName_FightCapsul, // 1082 / 0x043A
gMsg_IName_UnkItem53, // 1083 / 0x043B
gMsg_IName_UnkItem54, // 1084 / 0x043C
gMsg_IName_BasementKey, // 1085 / 0x043D
gMsg_IName_Zoo_Key, // 1086 / 0x043E
gMsg_IName_Ghost_Key, // 1087 / 0x043F
gMsg_IName_GGFs_Diary, // 1088 / 0x0440
gMsg_IName_Pass, // 1089 / 0x0441
gMsg_IName_Ticket, // 1090 / 0x0442
gMsg_IName_UnkItem5B, // 1091 / 0x0443
gMsg_IName_UnkItem5C, // 1092 / 0x0444
gMsg_IName_UnkItem5D, // 1093 / 0x0445
gMsg_IName_UnkItem5E, // 1094 / 0x0446
gMsg_IName_CanaryChick, // 1095 / 0x0447
gMsg_IName_UnkItem60, // 1096 / 0x0448
gMsg_IName_BottlRocket, // 1097 / 0x0449
gMsg_IName_Hat, // 1098 / 0x044A
gMsg_IName_Dentures, // 1099 / 0x044B
gMsg_IName_Ticket_Stub, // 1100 / 0x044C
gMsg_IName_IC_Chip, // 1101 / 0x044D
gMsg_IName_Ocarina, // 1102 / 0x044E
gMsg_IName_UnkItem67, // 1103 / 0x044F
gMsg_IName_FranklnBdge, // 1104 / 0x0450
gMsg_IName_FrndshpRing, // 1105 / 0x0451
gMsg_IName_UnkItem6A, // 1106 / 0x0452
gMsg_IName_Onyx_Hook, // 1107 / 0x0453
gMsg_IName_Last_Weapon, // 1108 / 0x0454
gMsg_IName_Ruler, // 1109 / 0x0455
gMsg_IName_Cash_Card, // 1110 / 0x0456
gMsg_IName_Red_Weed, // 1111 / 0x0457
gMsg_IName_Bullhorn, // 1112 / 0x0458
gMsg_IName_Map, // 1113 / 0x0459
gMsg_IName_UnkItem72, // 1114 / 0x045A
gMsg_IName_UnkItem73, // 1115 / 0x045B
gMsg_IName_UnkItem74, // 1116 / 0x045C
gMsg_IName_UnkItem75, // 1117 / 0x045D
gMsg_IName_UnkItem76, // 1118 / 0x045E
gMsg_IName_UnkItem77, // 1119 / 0x045F
gMsg_IName_UnkItem78, // 1120 / 0x0460
gMsg_IName_UnkItem79, // 1121 / 0x0461
gMsg_IName_UnkItem7A, // 1122 / 0x0462
gMsg_IName_UnkItem7B, // 1123 / 0x0463
gMsg_IName_UnkItem7C, // 1124 / 0x0464
gMsg_IName_UnkItem7D, // 1125 / 0x0465
gMsg_IName_UnkItem7E, // 1126 / 0x0466
gMsg_IName_Debug, // 1127 / 0x0467
gMsg_PName_Null, // 1128 / 0x0468
gMsg_PName_Telepathy, // 1129 / 0x0469
gMsg_PName_Teleport, // 1130 / 0x046A
gMsg_PName_UnkPsi3, // 1131 / 0x046B
gMsg_PName_UnkPsi4, // 1132 / 0x046C
gMsg_PName_UnkPsi5, // 1133 / 0x046D
gMsg_PName_UnkPsi6, // 1134 / 0x046E
gMsg_PName_UnkPsi7, // 1135 / 0x046F
gMsg_PName_LifeUp_Alpha, // 1136 / 0x0470
gMsg_PName_LifeUp_Beta, // 1137 / 0x0471
gMsg_PName_LifeUp_Gamma, // 1138 / 0x0472
gMsg_PName_LifeUp_Pi, // 1139 / 0x0473
gMsg_PName_LifeUp_Omega, // 1140 / 0x0474
gMsg_PName_UnkPsiD, // 1141 / 0x0475
gMsg_PName_UnkPsiE, // 1142 / 0x0476
gMsg_PName_UnkPsiF, // 1143 / 0x0477
gMsg_PName_Healing_Alpha, // 1144 / 0x0478
gMsg_PName_Healing_Beta, // 1145 / 0x0479
gMsg_PName_Healing_Gamma, // 1146 / 0x047A
gMsg_PName_Healing_Pi, // 1147 / 0x047B
gMsg_PName_SuprHealing, // 1148 / 0x047C
gMsg_PName_PsiShield_Alpha, // 1149 / 0x047D
gMsg_PName_PsiShield_Beta, // 1150 / 0x047E
gMsg_PName_PowerShield, // 1151 / 0x047F
gMsg_PName_BrainShock, // 1152 / 0x0480
gMsg_PName_BrainCyclon, // 1153 / 0x0481
gMsg_PName_Hypnosis, // 1154 / 0x0482
gMsg_PName_Paralysis, // 1155 / 0x0483
gMsg_PName_Darkness, // 1156 / 0x0484
gMsg_PName_Psi_Magnet, // 1157 / 0x0485
gMsg_PName_Shield_Off, // 1158 / 0x0486
gMsg_PName_Psi_Block, // 1159 / 0x0487
gMsg_PName_OffenseUp, // 1160 / 0x0488
gMsg_PName_DefenseUp_Alpha, // 1161 / 0x0489
gMsg_PName_DefenseUp_Beta, // 1162 / 0x048A
gMsg_PName_QuickUp, // 1163 / 0x048B
gMsg_PName_Def_Down_Alpha, // 1164 / 0x048C
gMsg_PName_Def_Down_Beta, // 1165 / 0x048D
gMsg_PName_4th_D_Slip, // 1166 / 0x048E
gMsg_PName_UnkPsi27, // 1167 / 0x048F
gMsg_PName_PK_Freeze_Alpha, // 1168 / 0x0490
gMsg_PName_PK_Freeze_Beta, // 1169 / 0x0491
gMsg_PName_PK_Freeze_Gamma, // 1170 / 0x0492
gMsg_PName_PK_Freeze_Omega, // 1171 / 0x0493
gMsg_PName_PK_Fire_Alpha, // 1172 / 0x0494
gMsg_PName_PK_Fire_Beta, // 1173 / 0x0495
gMsg_PName_PK_Fire_Gamma, // 1174 / 0x0496
gMsg_PName_PK_Fire_Omega, // 1175 / 0x0497
gMsg_PName_PK_Beam_Alpha, // 1176 / 0x0498
gMsg_PName_PK_Beam_Beta, // 1177 / 0x0499
gMsg_PName_PK_Beam_Gamma, // 1178 / 0x049A
gMsg_PName_PK_Beam_Omega, // 1179 / 0x049B
gMsg_PName_PK_ThunderAlpha, // 1180 / 0x049C
gMsg_PName_PK_ThunderBeta, // 1181 / 0x049D
gMsg_PName_PK_ThunderGamma, // 1182 / 0x049E
gMsg_PName_UnkPsi37, // 1183 / 0x049F
gMsg_PName_UnkPsi38, // 1184 / 0x04A0
gMsg_PName_UnkPsi39, // 1185 / 0x04A1
gMsg_PName_UnkPsi3A, // 1186 / 0x04A2
gMsg_PName_UnkPsi3B, // 1187 / 0x04A3
gMsg_PName_UnkPsi3C, // 1188 / 0x04A4
gMsg_PName_UnkPsi3D, // 1189 / 0x04A5
gMsg_PName_UnkPsi3E, // 1190 / 0x04A6
gMsg_PName_UnkPsi3F, // 1191 / 0x04A7
gMsg_SName_Faintd, // 1192 / 0x04A8
gMsg_SName_Stone, // 1193 / 0x04A9
gMsg_SName_Parlzd, // 1194 / 0x04AA
gMsg_SName_Asleep, // 1195 / 0x04AB
gMsg_SName_Confsd, // 1196 / 0x04AC
gMsg_SName_Puzzld, // 1197 / 0x04AD
gMsg_SName_Poison, // 1198 / 0x04AE
gMsg_SName_Cold, // 1199 / 0x04AF
gUnknown_08F2601B, // 1200 / 0x04B0
gMsg_CName_FlightPlansA, // 1201 / 0x04B1
gMsg_CName_FlightPlansB, // 1202 / 0x04B2
gMsg_CName_FlightPlansC, // 1203 / 0x04B3
gMsg_CName_Hints1, // 1204 / 0x04B4
gMsg_CName_Hints2, // 1205 / 0x04B5
gMsg_CName_Hints3, // 1206 / 0x04B6
gMsg_CName_UnkChoicer1, // 1207 / 0x04B7
gMsg_CName_UnkChoicer2, // 1208 / 0x04B8
gMsg_CName_UnkChoicer3, // 1209 / 0x04B9
gMsg_CName_UnkChoicer4, // 1210 / 0x04BA
gMsg_CName_Scientist1, // 1211 / 0x04BB
gMsg_CName_Scientist2, // 1212 / 0x04BC
0                , // 1213 / 0x04BD
0                , // 1214 / 0x04BE
0                , // 1215 / 0x04BF
0                , // 1216 / 0x04C0
0                , // 1217 / 0x04C1
0                , // 1218 / 0x04C2
0                , // 1219 / 0x04C3
0                , // 1220 / 0x04C4
0                , // 1221 / 0x04C5
0                , // 1222 / 0x04C6
0                , // 1223 / 0x04C7
0                , // 1224 / 0x04C8
0                , // 1225 / 0x04C9
0                , // 1226 / 0x04CA
0                , // 1227 / 0x04CB
0                , // 1228 / 0x04CC
0                , // 1229 / 0x04CD
gMsg_CName_Null, // 1230 / 0x04CE
gMsg_CName_MyHome, // 1231 / 0x04CF
gMsg_CName_Podunk, // 1232 / 0x04D0
gMsg_CName_Merrysville, // 1233 / 0x04D1
gMsg_CName_Reindeer, // 1234 / 0x04D2
gMsg_CName_Spookane, // 1235 / 0x04D3
gMsg_CName_Snowman, // 1236 / 0x04D4
gMsg_CName_Youngtown, // 1237 / 0x04D5
gMsg_CName_Ellay, // 1238 / 0x04D6
gMsg_CName_Union, // 1239 / 0x04D7
0                , // 1240 / 0x04D8
0                , // 1241 / 0x04D9
0                , // 1242 / 0x04DA
0                , // 1243 / 0x04DB
0                , // 1244 / 0x04DC
0                , // 1245 / 0x04DD
0                , // 1246 / 0x04DE
0                , // 1247 / 0x04DF
0                , // 1248 / 0x04E0
0                , // 1249 / 0x04E1
0                , // 1250 / 0x04E2
0                , // 1251 / 0x04E3
0                , // 1252 / 0x04E4
0                , // 1253 / 0x04E5
0                , // 1254 / 0x04E6
0                , // 1255 / 0x04E7
0                , // 1256 / 0x04E8
0                , // 1257 / 0x04E9
0                , // 1258 / 0x04EA
0                , // 1259 / 0x04EB
0                , // 1260 / 0x04EC
0                , // 1261 / 0x04ED
0                , // 1262 / 0x04EE
0                , // 1263 / 0x04EF
0                , // 1264 / 0x04F0
0                , // 1265 / 0x04F1
0                , // 1266 / 0x04F2
0                , // 1267 / 0x04F3
0                , // 1268 / 0x04F4
0                , // 1269 / 0x04F5
0                , // 1270 / 0x04F6
0                , // 1271 / 0x04F7
0                , // 1272 / 0x04F8
0                , // 1273 / 0x04F9
0                , // 1274 / 0x04FA
0                , // 1275 / 0x04FB
0                , // 1276 / 0x04FC
0                , // 1277 / 0x04FD
0                , // 1278 / 0x04FE
0                , // 1279 / 0x04FF
0                , // 1280 / 0x0500
0                , // 1281 / 0x0501
0                , // 1282 / 0x0502
0                , // 1283 / 0x0503
0                , // 1284 / 0x0504
0                , // 1285 / 0x0505
0                , // 1286 / 0x0506
0                , // 1287 / 0x0507
0                , // 1288 / 0x0508
0                , // 1289 / 0x0509
0                , // 1290 / 0x050A
0                , // 1291 / 0x050B
0                , // 1292 / 0x050C
0                , // 1293 / 0x050D
0                , // 1294 / 0x050E
0                , // 1295 / 0x050F
0                , // 1296 / 0x0510
0                , // 1297 / 0x0511
0                , // 1298 / 0x0512
0                , // 1299 / 0x0513
gMsg_Check_UnkEnemy0, // 1300 / 0x0514
gMsg_Check_BigWoodoh, // 1301 / 0x0515
gMsg_Check_Dragon, // 1302 / 0x0516
gMsg_Check_R7038, // 1303 / 0x0517
gMsg_Check_Elephant, // 1304 / 0x0518
gMsg_Check_Bear, // 1305 / 0x0519
gMsg_Check_Big_Foot, // 1306 / 0x051A
gMsg_Check_Mad_Truck, // 1307 / 0x051B
gMsg_Check_Old_Robot, // 1308 / 0x051C
gMsg_Check_Megaborg, // 1309 / 0x051D
gMsg_Check_Gargoyle, // 1310 / 0x051E
gMsg_Check_Gabilan, // 1311 / 0x051F
gMsg_Check_Gorilla, // 1312 / 0x0520
gMsg_Check_Bison, // 1313 / 0x0521
gMsg_Check_Tiger, // 1314 / 0x0522
gMsg_Check_Mad_Car, // 1315 / 0x0523
gMsg_Check_Raeb_Yddet, // 1316 / 0x0524
gMsg_Check_Magic_Snail, // 1317 / 0x0525
gMsg_Check_Titanees, // 1318 / 0x0526
gMsg_Check_Giegue, // 1319 / 0x0527
gMsg_Check_Eagle, // 1320 / 0x0528
gMsg_Check_Wolf, // 1321 / 0x0529
gMsg_Check_Seagull, // 1322 / 0x052A
gMsg_Check_Alligator, // 1323 / 0x052B
gMsg_Check_EnergyRobot, // 1324 / 0x052C
gMsg_Check_The_Fish, // 1325 / 0x052D
gMsg_Check_Fugitive, // 1326 / 0x052E
gMsg_Check_BBs_Boss, // 1327 / 0x052F
gMsg_Check_Barbot, // 1328 / 0x0530
gMsg_Check_Nancy, // 1329 / 0x0531
gMsg_Check_Starman, // 1330 / 0x0532
gMsg_Check_Ullrich, // 1331 / 0x0533
gMsg_Check_Cerebrum, // 1332 / 0x0534
gMsg_Check_Mook, // 1333 / 0x0535
gMsg_Check_Armor, // 1334 / 0x0536
gMsg_Check_Woodoh, // 1335 / 0x0537
gMsg_Check_Wally, // 1336 / 0x0538
gMsg_Check_The_Hippie, // 1337 / 0x0539
gMsg_Check_Bag_Lady, // 1338 / 0x053A
gMsg_Check_BB_Gang, // 1339 / 0x053B
gMsg_Check_Dr_Distorto, // 1340 / 0x053C
gMsg_Check_UnkEnemy1, // 1341 / 0x053D
gMsg_Check_Gang_Zombie, // 1342 / 0x053E
gMsg_Check_PseudoZombi, // 1343 / 0x053F
gMsg_Check_Crow, // 1344 / 0x0540
gMsg_Check_Snake, // 1345 / 0x0541
gMsg_Check_Hyena, // 1346 / 0x0542
gMsg_Check_Cougar, // 1347 / 0x0543
gMsg_Check_Centipede, // 1348 / 0x0544
gMsg_Check_Dust_Ball, // 1349 / 0x0545
gMsg_Check_Fly, // 1350 / 0x0546
gMsg_Check_Spider, // 1351 / 0x0547
gMsg_Check_Scorpion, // 1352 / 0x0548
gMsg_Check_Rope, // 1353 / 0x0549
gMsg_Check_Fire_Ball, // 1354 / 0x054A
gMsg_Check_Watcher, // 1355 / 0x054B
gMsg_Check_Groucho, // 1356 / 0x054C
gMsg_Check_Ghost, // 1357 / 0x054D
gMsg_Check_Lil_Saucer, // 1358 / 0x054E
gMsg_Check_Mr_Bat, // 1359 / 0x054F
gMsg_Check_Starman_Jr, // 1360 / 0x0550
gMsg_Check_Skunk, // 1361 / 0x0551
gMsg_Check_Shroudley, // 1362 / 0x0552
gMsg_Check_Rat, // 1363 / 0x0553
gMsg_Check_Bomber, // 1364 / 0x0554
gMsg_Check_UnkEnemy2, // 1365 / 0x0555
gMsg_Check_Doll, // 1366 / 0x0556
gMsg_Check_Lamp, // 1367 / 0x0557
gMsg_Check_UnkEnemy3, // 1368 / 0x0558
gMsg_Check_UnkEnemy4, // 1369 / 0x0559
gMsg_Check_BionicCenti, // 1370 / 0x055A
gMsg_Check_BionicScorp, // 1371 / 0x055B
gMsg_Check_UnkEnemy5, // 1372 / 0x055C
gMsg_Check_UnkEnemy6, // 1373 / 0x055D
gMsg_Check_Red_Snake, // 1374 / 0x055E
gMsg_Check_Lone_Wolf, // 1375 / 0x055F
gMsg_Check_Polar_Bear, // 1376 / 0x0560
gMsg_Check_UnkEnemy7, // 1377 / 0x0561
gMsg_Check_UnkEnemy8, // 1378 / 0x0562
gMsg_Check_UnkEnemy9, // 1379 / 0x0563
gMsg_Check_UnkEnemyA, // 1380 / 0x0564
gMsg_Check_Rattlesnake, // 1381 / 0x0565
gMsg_Check_Tarantula, // 1382 / 0x0566
gMsg_Check_Crocodile, // 1383 / 0x0567
gMsg_Check_UnkEnemyB, // 1384 / 0x0568
gMsg_Check_Buffalo, // 1385 / 0x0569
gMsg_Check_UnkEnemyC, // 1386 / 0x056A
gMsg_Check_Bionic_Bat, // 1387 / 0x056B
gMsg_Check_Stray_Dog, // 1388 / 0x056C
gMsg_Check_Psycho_Car, // 1389 / 0x056D
gMsg_Check_PsychoTruck, // 1390 / 0x056E
gMsg_Check_ManiacTruck, // 1391 / 0x056F
gMsg_Check_Alarm_Ghost, // 1392 / 0x0570
gMsg_Check_UnkEnemyD, // 1393 / 0x0571
gMsg_Check_FourEyes, // 1394 / 0x0572
gMsg_Check_DadsEyes, // 1395 / 0x0573
gMsg_Check_MomsEyes, // 1396 / 0x0574
gMsg_Check_UnkEnemyE, // 1397 / 0x0575
gMsg_Check_UnkEnemyF, // 1398 / 0x0576
gMsg_Check_Sky_Yddet, // 1399 / 0x0577
gMsg_Check_UnkEnemy10, // 1400 / 0x0578
gMsg_Check_Giga_Borg, // 1401 / 0x0579
gMsg_Check_Omega_Borg, // 1402 / 0x057A
gMsg_Check_Scrapper, // 1403 / 0x057B
gMsg_Check_UltraBarbot, // 1404 / 0x057C
gMsg_Check_OmegaSaucer, // 1405 / 0x057D
gMsg_Check_Kelly, // 1406 / 0x057E
gMsg_Check_Star_Miner, // 1407 / 0x057F
gMsg_Check_SuperEnergy, // 1408 / 0x0580
gMsg_Check_Juana, // 1409 / 0x0581
gMsg_Check_BlueStarman, // 1410 / 0x0582
gMsg_Check_Rockoyle, // 1411 / 0x0583
gMsg_Check_Titanian, // 1412 / 0x0584
gMsg_Check_Oh_Mook, // 1413 / 0x0585
gMsg_Check_UnkEnemy11, // 1414 / 0x0586
gMsg_Check_Zombie, // 1415 / 0x0587
gMsg_Check_NastyZombie, // 1416 / 0x0588
gMsg_Check_Silver_Wolf, // 1417 / 0x0589
gMsg_Check_R7037, // 1418 / 0x058A
gMsg_Check_GrizzlyBear, // 1419 / 0x058B
gMsg_Check_R7038XX, // 1420 / 0x058C
gMsg_Check_LastStarman, // 1421 / 0x058D
0                , // 1422 / 0x058E
0                , // 1423 / 0x058F
0                , // 1424 / 0x0590
0                , // 1425 / 0x0591
0                , // 1426 / 0x0592
gUnknown_08F2498C, // 1427 / 0x0593
0                , // 1428 / 0x0594
0                , // 1429 / 0x0595
0                , // 1430 / 0x0596
0                , // 1431 / 0x0597
0                , // 1432 / 0x0598
0                , // 1433 / 0x0599
0                , // 1434 / 0x059A
0                , // 1435 / 0x059B
0                , // 1436 / 0x059C
0                , // 1437 / 0x059D
0                , // 1438 / 0x059E
0                , // 1439 / 0x059F
0                , // 1440 / 0x05A0
0                , // 1441 / 0x05A1
0                , // 1442 / 0x05A2
0                , // 1443 / 0x05A3
0                , // 1444 / 0x05A4
0                , // 1445 / 0x05A5
0                , // 1446 / 0x05A6
0                , // 1447 / 0x05A7
0                , // 1448 / 0x05A8
0                , // 1449 / 0x05A9
0                , // 1450 / 0x05AA
0                , // 1451 / 0x05AB
0                , // 1452 / 0x05AC
0                , // 1453 / 0x05AD
0                , // 1454 / 0x05AE
0                , // 1455 / 0x05AF
0                , // 1456 / 0x05B0
0                , // 1457 / 0x05B1
0                , // 1458 / 0x05B2
0                , // 1459 / 0x05B3
0                , // 1460 / 0x05B4
0                , // 1461 / 0x05B5
0                , // 1462 / 0x05B6
0                , // 1463 / 0x05B7
0                , // 1464 / 0x05B8
0                , // 1465 / 0x05B9
0                , // 1466 / 0x05BA
0                , // 1467 / 0x05BB
0                , // 1468 / 0x05BC
0                , // 1469 / 0x05BD
0                , // 1470 / 0x05BE
0                , // 1471 / 0x05BF
0                , // 1472 / 0x05C0
0                , // 1473 / 0x05C1
0                , // 1474 / 0x05C2
0                , // 1475 / 0x05C3
0                , // 1476 / 0x05C4
0                , // 1477 / 0x05C5
0                , // 1478 / 0x05C6
0                , // 1479 / 0x05C7
0                , // 1480 / 0x05C8
0                , // 1481 / 0x05C9
0                , // 1482 / 0x05CA
0                , // 1483 / 0x05CB
0                , // 1484 / 0x05CC
0                , // 1485 / 0x05CD
0                , // 1486 / 0x05CE
0                , // 1487 / 0x05CF
0                , // 1488 / 0x05D0
0                , // 1489 / 0x05D1
0                , // 1490 / 0x05D2
0                , // 1491 / 0x05D3
0                , // 1492 / 0x05D4
0                , // 1493 / 0x05D5
0                , // 1494 / 0x05D6
0                , // 1495 / 0x05D7
0                , // 1496 / 0x05D8
0                , // 1497 / 0x05D9
0                , // 1498 / 0x05DA
0                , // 1499 / 0x05DB
gMsg_EName_Null, // 1500 / 0x05DC
gMsg_EName_BigWoodoh, // 1501 / 0x05DD
gMsg_EName_Dragon, // 1502 / 0x05DE
gMsg_EName_R7038, // 1503 / 0x05DF
gMsg_EName_Elephant, // 1504 / 0x05E0
gMsg_EName_Bear, // 1505 / 0x05E1
gMsg_EName_Big_Foot, // 1506 / 0x05E2
gMsg_EName_Mad_Truck, // 1507 / 0x05E3
gMsg_EName_Old_Robot, // 1508 / 0x05E4
gMsg_EName_Megaborg, // 1509 / 0x05E5
gMsg_EName_Gargoyle, // 1510 / 0x05E6
gMsg_EName_Gabilan, // 1511 / 0x05E7
gMsg_EName_Gorilla, // 1512 / 0x05E8
gMsg_EName_Bison, // 1513 / 0x05E9
gMsg_EName_Tiger, // 1514 / 0x05EA
gMsg_EName_Mad_Car, // 1515 / 0x05EB
gMsg_EName_Raeb_Yddet, // 1516 / 0x05EC
gMsg_EName_Magic_Snail, // 1517 / 0x05ED
gMsg_EName_Titanees, // 1518 / 0x05EE
gMsg_EName_Giegue, // 1519 / 0x05EF
gMsg_EName_Eagle, // 1520 / 0x05F0
gMsg_EName_Wolf, // 1521 / 0x05F1
gMsg_EName_Seagull, // 1522 / 0x05F2
gMsg_EName_Alligator, // 1523 / 0x05F3
gMsg_EName_EnergyRobot, // 1524 / 0x05F4
gMsg_EName_The_Fish, // 1525 / 0x05F5
gMsg_EName_Fugitive, // 1526 / 0x05F6
gMsg_EName_BBs_Boss, // 1527 / 0x05F7
gMsg_EName_Barbot, // 1528 / 0x05F8
gMsg_EName_Nancy, // 1529 / 0x05F9
gMsg_EName_Starman, // 1530 / 0x05FA
gMsg_EName_Ullrich, // 1531 / 0x05FB
gMsg_EName_Cerebrum, // 1532 / 0x05FC
gMsg_EName_Mook, // 1533 / 0x05FD
gMsg_EName_Armor, // 1534 / 0x05FE
gMsg_EName_Woodoh, // 1535 / 0x05FF
gMsg_EName_Wally, // 1536 / 0x0600
gMsg_EName_The_Hippie, // 1537 / 0x0601
gMsg_EName_Bag_Lady, // 1538 / 0x0602
gMsg_EName_BB_Gang, // 1539 / 0x0603
gMsg_EName_Dr_Distorto, // 1540 / 0x0604
gMsg_EName_UnkEnemy1, // 1541 / 0x0605
gMsg_EName_Gang_Zombie, // 1542 / 0x0606
gMsg_EName_PseudoZombi, // 1543 / 0x0607
gMsg_EName_Crow, // 1544 / 0x0608
gMsg_EName_Snake, // 1545 / 0x0609
gMsg_EName_Hyena, // 1546 / 0x060A
gMsg_EName_Cougar, // 1547 / 0x060B
gMsg_EName_Centipede, // 1548 / 0x060C
gMsg_EName_Dust_Ball, // 1549 / 0x060D
gMsg_EName_Fly, // 1550 / 0x060E
gMsg_EName_Spider, // 1551 / 0x060F
gMsg_EName_Scorpion, // 1552 / 0x0610
gMsg_EName_Rope, // 1553 / 0x0611
gMsg_EName_Fire_Ball, // 1554 / 0x0612
gMsg_EName_Watcher, // 1555 / 0x0613
gMsg_EName_Groucho, // 1556 / 0x0614
gMsg_EName_Ghost, // 1557 / 0x0615
gMsg_EName_Lil_Saucer, // 1558 / 0x0616
gMsg_EName_Mr_Bat, // 1559 / 0x0617
gMsg_EName_Starman_Jr, // 1560 / 0x0618
gMsg_EName_Skunk, // 1561 / 0x0619
gMsg_EName_Shroudley, // 1562 / 0x061A
gMsg_EName_Rat, // 1563 / 0x061B
gMsg_EName_Bomber, // 1564 / 0x061C
gMsg_EName_UnkEnemy2, // 1565 / 0x061D
gMsg_EName_Doll, // 1566 / 0x061E
gMsg_EName_Lamp, // 1567 / 0x061F
gMsg_EName_UnkEnemy3, // 1568 / 0x0620
gMsg_EName_UnkEnemy4, // 1569 / 0x0621
gUnknown_08F25A1B, // 1570 / 0x0622
gUnknown_08F25A22, // 1571 / 0x0623
gMsg_EName_UnkEnemy5, // 1572 / 0x0624
gMsg_EName_UnkEnemy6, // 1573 / 0x0625
gMsg_EName_Red_Snake, // 1574 / 0x0626
gMsg_EName_Lone_Wolf, // 1575 / 0x0627
gMsg_EName_Polar_Bear, // 1576 / 0x0628
gMsg_EName_UnkEnemy7, // 1577 / 0x0629
gMsg_EName_UnkEnemy8, // 1578 / 0x062A
gMsg_EName_UnkEnemy9, // 1579 / 0x062B
gMsg_EName_UnkEnemyA, // 1580 / 0x062C
gMsg_EName_Rattlesnake, // 1581 / 0x062D
gMsg_EName_Tarantula, // 1582 / 0x062E
gMsg_EName_Crocodile, // 1583 / 0x062F
gMsg_EName_UnkEnemyB, // 1584 / 0x0630
gMsg_EName_Buffalo, // 1585 / 0x0631
gMsg_EName_UnkEnemyC, // 1586 / 0x0632
gMsg_EName_Bionic_Bat, // 1587 / 0x0633
gMsg_EName_Stray_Dog, // 1588 / 0x0634
gMsg_EName_Psycho_Car, // 1589 / 0x0635
gMsg_EName_PsychoTruck, // 1590 / 0x0636
gMsg_EName_ManiacTruck, // 1591 / 0x0637
gMsg_EName_Alarm_Ghost, // 1592 / 0x0638
gMsg_EName_UnkEnemyD, // 1593 / 0x0639
gMsg_EName_Foureyes, // 1594 / 0x063A
gMsg_EName_Dadseyes, // 1595 / 0x063B
gMsg_EName_Momseyes, // 1596 / 0x063C
gMsg_EName_UnkEnemyE, // 1597 / 0x063D
gMsg_EName_UnkEnemyF, // 1598 / 0x063E
gMsg_EName_Sky_Yddet, // 1599 / 0x063F
gMsg_EName_UnkEnemy10, // 1600 / 0x0640
gMsg_EName_Giga_Borg, // 1601 / 0x0641
gMsg_EName_Omega_Borg, // 1602 / 0x0642
gMsg_EName_Scrapper, // 1603 / 0x0643
gMsg_EName_UltraBarbot, // 1604 / 0x0644
gMsg_EName_OmegaSaucer, // 1605 / 0x0645
gMsg_EName_Kelly, // 1606 / 0x0646
gMsg_EName_Star_Miner, // 1607 / 0x0647
gMsg_EName_SuperEnergy, // 1608 / 0x0648
gMsg_EName_Juana, // 1609 / 0x0649
gMsg_EName_BlueStarman, // 1610 / 0x064A
gMsg_EName_Rockoyle, // 1611 / 0x064B
gMsg_EName_Titanian, // 1612 / 0x064C
gMsg_EName_Oh_Mook, // 1613 / 0x064D
gMsg_EName_UnkEnemy11, // 1614 / 0x064E
gMsg_EName_Zombie, // 1615 / 0x064F
gMsg_EName_NastyZombie, // 1616 / 0x0650
gMsg_EName_Silver_Wolf, // 1617 / 0x0651
gMsg_EName_R7037, // 1618 / 0x0652
gMsg_EName_GrizzlyBear, // 1619 / 0x0653
gMsg_EName_R7038XX, // 1620 / 0x0654
gMsg_EName_LastStarman, // 1621 / 0x0655
gUnknown_08F25B3C, // 1622 / 0x0656
gUnknown_08F25B3D, // 1623 / 0x0657
gUnknown_08F25B3E, // 1624 / 0x0658
gUnknown_08F25B3F, // 1625 / 0x0659
gUnknown_08F25B40, // 1626 / 0x065A
gUnknown_08F25B41, // 1627 / 0x065B
0                , // 1628 / 0x065C
0                , // 1629 / 0x065D
0                , // 1630 / 0x065E
0                , // 1631 / 0x065F
0                , // 1632 / 0x0660
0                , // 1633 / 0x0661
0                , // 1634 / 0x0662
0                , // 1635 / 0x0663
0                , // 1636 / 0x0664
0                , // 1637 / 0x0665
0                , // 1638 / 0x0666
0                , // 1639 / 0x0667
0                , // 1640 / 0x0668
0                , // 1641 / 0x0669
0                , // 1642 / 0x066A
0                , // 1643 / 0x066B
0                , // 1644 / 0x066C
0                , // 1645 / 0x066D
0                , // 1646 / 0x066E
0                , // 1647 / 0x066F
0                , // 1648 / 0x0670
0                , // 1649 / 0x0671
0                , // 1650 / 0x0672
0                , // 1651 / 0x0673
0                , // 1652 / 0x0674
0                , // 1653 / 0x0675
0                , // 1654 / 0x0676
0                , // 1655 / 0x0677
0                , // 1656 / 0x0678
0                , // 1657 / 0x0679
0                , // 1658 / 0x067A
0                , // 1659 / 0x067B
0                , // 1660 / 0x067C
0                , // 1661 / 0x067D
0                , // 1662 / 0x067E
0                , // 1663 / 0x067F
0                , // 1664 / 0x0680
0                , // 1665 / 0x0681
0                , // 1666 / 0x0682
0                , // 1667 / 0x0683
0                , // 1668 / 0x0684
0                , // 1669 / 0x0685
0                , // 1670 / 0x0686
0                , // 1671 / 0x0687
0                , // 1672 / 0x0688
0                , // 1673 / 0x0689
0                , // 1674 / 0x068A
0                , // 1675 / 0x068B
0                , // 1676 / 0x068C
0                , // 1677 / 0x068D
0                , // 1678 / 0x068E
0                , // 1679 / 0x068F
0                , // 1680 / 0x0690
0                , // 1681 / 0x0691
0                , // 1682 / 0x0692
0                , // 1683 / 0x0693
0                , // 1684 / 0x0694
0                , // 1685 / 0x0695
0                , // 1686 / 0x0696
0                , // 1687 / 0x0697
0                , // 1688 / 0x0698
0                , // 1689 / 0x0699
0                , // 1690 / 0x069A
0                , // 1691 / 0x069B
0                , // 1692 / 0x069C
0                , // 1693 / 0x069D
0                , // 1694 / 0x069E
0                , // 1695 / 0x069F
0                , // 1696 / 0x06A0
0                , // 1697 / 0x06A1
0                , // 1698 / 0x06A2
0                , // 1699 / 0x06A3
gMsg_Unk, // 1700 / 0x06A4
gMsg_Goods_GiveSelf, // 1701 / 0x06A5
gMsg_Goods_Give, // 1702 / 0x06A6
gMsg_Goods_HandOff, // 1703 / 0x06A7
gMsg_Goods_TakeFrom, // 1704 / 0x06A8
gMsg_Goods_TakeNThrow, // 1705 / 0x06A9
gMsg_Goods_Move, // 1706 / 0x06AA
0                , // 1707 / 0x06AB
0                , // 1708 / 0x06AC
0                , // 1709 / 0x06AD
0                , // 1710 / 0x06AE
gMsg_Item_Eat, // 1711 / 0x06AF
gMsg_Item_Drink, // 1712 / 0x06B0
gMsg_Item_Recover, // 1713 / 0x06B1
gMsg_Item_Increase, // 1714 / 0x06B2
gMsg_HP_Is, // 1715 / 0x06B3
gMsg_PP_Is, // 1716 / 0x06B4
gMsg_Fight_Is, // 1717 / 0x06B5
gMsg_Speed_Is, // 1718 / 0x06B6
gMsg_Wisdom_Is, // 1719 / 0x06B7
gMsg_Strength_Is, // 1720 / 0x06B8
gMsg_Force_Is, // 1721 / 0x06B9
gMsg_UseBigBag, // 1722 / 0x06BA
gMsg_UseBread, // 1723 / 0x06BB
gMsg_UseBread_Fail, // 1724 / 0x06BC
gMsg_UseCrumbs, // 1725 / 0x06BD
gMsg_UseRibbon, // 1726 / 0x06BE
gMsg_UseFinalWeapon, // 1727 / 0x06BF
gMsg_UseRuler, // 1728 / 0x06C0
gMsg_BigBag_Empty, // 1729 / 0x06C1
gMsg_PayPhone_CardExpire, // 1730 / 0x06C2
gMsg_Cure_Poison, // 1731 / 0x06C3
gMsg_Cure_Cold, // 1732 / 0x06C4
gMsg_Item_PsiStone, // 1733 / 0x06C5
gMsg_Item_PsiStone_UsedUp, // 1734 / 0x06C6
gMsg_Psi_Tried, // 1735 / 0x06C7
gMsg_Psi_NoPP, // 1736 / 0x06C8
gMsg_Psi_Revive, // 1737 / 0x06C9
gMsg_UseDiary, // 1738 / 0x06CA
gMsg_Cure_Petrify, // 1739 / 0x06CB
gMsg_UseOcarina, // 1740 / 0x06CC
gMsg_UseOcarina2, // 1741 / 0x06CD
gMsg_UseMap_Fail, // 1742 / 0x06CE
gMsg_UseMap, // 1743 / 0x06CF
gMsg_Psi_NoTeleport, // 1744 / 0x06D0
gMsg_Repel_Ring_Break, // 1745 / 0x06D1
0                , // 1746 / 0x06D2
0                , // 1747 / 0x06D3
0                , // 1748 / 0x06D4
0                , // 1749 / 0x06D5
gMsg_Goods_GiveSelf_gba, // 1750 / 0x06D6
gMsg_Uncon_UseFailSafe, // 1751 / 0x06D7
gMsg_UseItem05, // 1752 / 0x06D8
gMsg_UseMemoryChip, // 1753 / 0x06D9
gMsg_FindMemoryChip, // 1754 / 0x06DA
gMsg_MyHome_Mom_CashCard, // 1755 / 0x06DB
gMsg_MyHome_Mom_CashCard_No_Room, // 1756 / 0x06DC
0                , // 1757 / 0x06DD
0                , // 1758 / 0x06DE
0                , // 1759 / 0x06DF
gMsg_CheckDanger, // 1760 / 0x06E0
gMsg_CheckPoltergeist, // 1761 / 0x06E1
0                , // 1762 / 0x06E2
0                , // 1763 / 0x06E3
0                , // 1764 / 0x06E4
0                , // 1765 / 0x06E5
0                , // 1766 / 0x06E6
0                , // 1767 / 0x06E7
0                , // 1768 / 0x06E8
0                , // 1769 / 0x06E9
0                , // 1770 / 0x06EA
0                , // 1771 / 0x06EB
0                , // 1772 / 0x06EC
0                , // 1773 / 0x06ED
0                , // 1774 / 0x06EE
0                , // 1775 / 0x06EF
0                , // 1776 / 0x06F0
0                , // 1777 / 0x06F1
0                , // 1778 / 0x06F2
0                , // 1779 / 0x06F3
gMsg_AntiPiracy, // 1780 / 0x06F4
gMsg_GbaCredits, // 1781 / 0x06F5
0                , // 1782 / 0x06F6
0                , // 1783 / 0x06F7
0                , // 1784 / 0x06F8
0                , // 1785 / 0x06F9
0                , // 1786 / 0x06FA
0                , // 1787 / 0x06FB
0                , // 1788 / 0x06FC
0                , // 1789 / 0x06FD
gUnknown_08F23D90, // 1790 / 0x06FE
gMsg_Credits_1, // 1791 / 0x06FF
gMsg_Credits_2, // 1792 / 0x0700
gMsg_Credits_3, // 1793 / 0x0701
gMsg_Credits_4, // 1794 / 0x0702
gMsg_Credits_5, // 1795 / 0x0703
gMsg_Credits_6, // 1796 / 0x0704
gMsg_Credits_7, // 1797 / 0x0705
gMsg_Credits_8, // 1798 / 0x0706
gMsg_Credits_9, // 1799 / 0x0707
0                , // 1800 / 0x0708
gMsg_Look_Big_Bag, // 1801 / 0x0709
gMsg_Look_Telephone_Card, // 1802 / 0x070A
gMsg_Look_Bread_Crumbs, // 1803 / 0x070B
gMsg_Look_Repel_Ring, // 1804 / 0x070C
gMsg_Look_UnkItem5, // 1805 / 0x070D
gMsg_Look_Memory_Chip, // 1806 / 0x070E
gMsg_Look_UnkItem7, // 1807 / 0x070F
gMsg_Look_UnkItem8, // 1808 / 0x0710
gMsg_Look_UnkItem9, // 1809 / 0x0711
gMsg_Look_Butter_Knife, // 1810 / 0x0712
gMsg_Look_Survival_Knife, // 1811 / 0x0713
gMsg_Look_Sword, // 1812 / 0x0714
gMsg_Look_Katana, // 1813 / 0x0715
gMsg_Look_Stun_Gun, // 1814 / 0x0716
gMsg_Look_Air_Gun, // 1815 / 0x0717
gMsg_Look_Plastic_Bat, // 1816 / 0x0718
gMsg_Look_Wooden_Bat, // 1817 / 0x0719
gMsg_Look_Aluminum_Bat, // 1818 / 0x071A
gMsg_Look_Hanks_Bat, // 1819 / 0x071B
gMsg_Look_Frying_Pan, // 1820 / 0x071C
gMsg_Look_Nonstick_Pan, // 1821 / 0x071D
gMsg_Look_Iron_Skillet, // 1822 / 0x071E
gMsg_Look_Slingshot, // 1823 / 0x071F
gMsg_Look_Boomerang, // 1824 / 0x0720
gMsg_Look_Insecticide, // 1825 / 0x0721
gMsg_Look_Super_Spray, // 1826 / 0x0722
gMsg_Look_Flea_Bag, // 1827 / 0x0723
gMsg_Look_Words_of_Love, // 1828 / 0x0724
gMsg_Look_Swear_Words, // 1829 / 0x0725
gMsg_Look_Sticky_Machine, // 1830 / 0x0726
gMsg_Look_Flashdark, // 1831 / 0x0727
gMsg_Look_StoneOrigin, // 1832 / 0x0728
gMsg_Look_Poison_Needle, // 1833 / 0x0729
gMsg_Look_Flame_Thrower, // 1834 / 0x072A
gMsg_Look_Bomb, // 1835 / 0x072B
gMsg_Look_Super_Bomb, // 1836 / 0x072C
gMsg_Look_Laser_Beam, // 1837 / 0x072D
gMsg_Look_Plasma_Beam, // 1838 / 0x072E
gMsg_Look_UnkItem27, // 1839 / 0x072F
gMsg_Look_Rope, // 1840 / 0x0730
gMsg_Look_UnkItem29, // 1841 / 0x0731
gMsg_Look_UnkItem2A, // 1842 / 0x0732
gMsg_Look_UnkItem2B, // 1843 / 0x0733
gMsg_Look_UnkItem2C, // 1844 / 0x0734
gMsg_Look_Peace_Coin, // 1845 / 0x0735
gMsg_Look_Protection_Coin, // 1846 / 0x0736
gMsg_Look_Magic_Coin, // 1847 / 0x0737
gMsg_Look_Brass_Ring, // 1848 / 0x0738
gMsg_Look_Silver_Ring, // 1849 / 0x0739
gMsg_Look_Gold_Ring, // 1850 / 0x073A
gMsg_Look_H2O_Pendant, // 1851 / 0x073B
gMsg_Look_Fire_Pendant, // 1852 / 0x073C
gMsg_Look_Earth_Pendant, // 1853 / 0x073D
gMsg_Look_Sea_Pendant, // 1854 / 0x073E
gMsg_Look_UnkItem37, // 1855 / 0x073F
gMsg_Look_UnkItem38, // 1856 / 0x0740
gMsg_Look_UnkItem39, // 1857 / 0x0741
gMsg_Look_UnkItem3A, // 1858 / 0x0742
gMsg_Look_UnkItem3B, // 1859 / 0x0743
gMsg_Look_Orange_Juice, // 1860 / 0x0744
gMsg_Look_French_Fries, // 1861 / 0x0745
gMsg_Look_Magic_Herb, // 1862 / 0x0746
gMsg_Look_Hamburger, // 1863 / 0x0747
gMsg_Look_Sports_Drink, // 1864 / 0x0748
gMsg_Look_Life_Up_Cream, // 1865 / 0x0749
gMsg_Look_Asthma_Spray, // 1866 / 0x074A
gMsg_Look_Antidote, // 1867 / 0x074B
gMsg_Look_Mouthwash, // 1868 / 0x074C
gMsg_Look_Strawberry_Tofu, // 1869 / 0x074D
gMsg_Look_UnkItem46, // 1870 / 0x074E
gMsg_Look_Bread, // 1871 / 0x074F
gMsg_Look_Noble_Seed, // 1872 / 0x0750
gMsg_Look_Psi_Stone, // 1873 / 0x0751
gMsg_Look_UnkItem4A, // 1874 / 0x0752
gMsg_Look_Magic_Ribbon, // 1875 / 0x0753
gMsg_Look_Magic_Candy, // 1876 / 0x0754
gMsg_Look_UnkItem4D, // 1877 / 0x0755
gMsg_Look_Quick_Capsule, // 1878 / 0x0756
gMsg_Look_Wisdom_Capsule, // 1879 / 0x0757
gMsg_Look_Physical_Capsule, // 1880 / 0x0758
gMsg_Look_Force_Capsule, // 1881 / 0x0759
gMsg_Look_Fight_Capsule, // 1882 / 0x075A
gMsg_Look_UnkItem53, // 1883 / 0x075B
gMsg_Look_UnkItem54, // 1884 / 0x075C
gMsg_Look_Basement_Key, // 1885 / 0x075D
gMsg_Look_Zoo_Key, // 1886 / 0x075E
gMsg_Look_Ghost_House_Key, // 1887 / 0x075F
gMsg_Look_GGFs_Diary, // 1888 / 0x0760
gMsg_Look_GGFs_Pass, // 1889 / 0x0761
gMsg_Look_Ticket, // 1890 / 0x0762
gMsg_Look_UnkItem5B, // 1891 / 0x0763
gMsg_Look_UnkItem5C, // 1892 / 0x0764
gMsg_Look_UnkItem5D, // 1893 / 0x0765
gMsg_Look_UnkItem5E, // 1894 / 0x0766
gMsg_Look_Canary_Chick, // 1895 / 0x0767
gMsg_Look_UnkItem60, // 1896 / 0x0768
gMsg_Look_Bottle_Rocket, // 1897 / 0x0769
gMsg_Look_Hat, // 1898 / 0x076A
gMsg_Look_Dentures, // 1899 / 0x076B
gMsg_Look_Ticket_Stub, // 1900 / 0x076C
gMsg_Look_IC_Chip, // 1901 / 0x076D
gMsg_Look_Ocarina, // 1902 / 0x076E
gMsg_Look_UnkItem67, // 1903 / 0x076F
gMsg_Look_Franklin_Badge, // 1904 / 0x0770
gMsg_Look_Friendship_Ring, // 1905 / 0x0771
gMsg_Look_UnkItem6A, // 1906 / 0x0772
gMsg_Look_Onyx_Hook, // 1907 / 0x0773
gMsg_Look_Last_Weapon, // 1908 / 0x0774
gMsg_Look_Ruler, // 1909 / 0x0775
gMsg_Look_Cash_Card, // 1910 / 0x0776
gMsg_Look_Red_Weed, // 1911 / 0x0777
gMsg_Look_Bullhorn, // 1912 / 0x0778
gMsg_Look_Map, // 1913 / 0x0779
gMsg_Look_UnkItem72, // 1914 / 0x077A
gMsg_Look_UnkItem73, // 1915 / 0x077B
gMsg_Look_UnkItem74, // 1916 / 0x077C
gMsg_Look_UnkItem75, // 1917 / 0x077D
gMsg_Look_UnkItem76, // 1918 / 0x077E
gMsg_Look_UnkItem77, // 1919 / 0x077F
gMsg_Look_UnkItem78, // 1920 / 0x0780
gMsg_Look_UnkItem79, // 1921 / 0x0781
gMsg_Look_UnkItem7A, // 1922 / 0x0782
gMsg_Look_UnkItem7B, // 1923 / 0x0783
gMsg_Look_UnkItem7C, // 1924 / 0x0784
gMsg_Look_UnkItem7E, // 1925 / 0x0785
gMsg_Look_UnkItem7F, // 1926 / 0x0786
gMsg_Look_Debug, // 1927 / 0x0787
0                , // 1928 / 0x0788
0                , // 1929 / 0x0789
gMsg_Credits_PlayerName, // 1930 / 0x078A
gMsg_Credits_Shigesato_Itoi, // 1931 / 0x078B
gMsg_Credits_Miyuki_Kure, // 1932 / 0x078C
gMsg_Credits_Akio_Ohmori, // 1933 / 0x078D
gMsg_Credits_Ritsuo_Kamimura, // 1934 / 0x078E
gMsg_Credits_Keiichi_Suzuki, // 1935 / 0x078F
gMsg_Credits_Hirokazu_Tanaka, // 1936 / 0x0790
gMsg_Credits_Shinbo_Minami, // 1937 / 0x0791
gMsg_Credits_Tatsuya_Ishii, // 1938 / 0x0792
gMsg_Credits_Tottori, // 1939 / 0x0793
gMsg_Credits_Kazuya_Nakatani, // 1940 / 0x0794
gMsg_Credits_Takayuki_Onodera, // 1941 / 0x0795
gMsg_Credits_Motoo_Yasuma, // 1942 / 0x0796
gMsg_Credits_Masayuki_Kameyama, // 1943 / 0x0797
gMsg_Credits_Hideo_Kon, // 1944 / 0x0798
gMsg_Credits_Katsutomo_Maeiwa, // 1945 / 0x0799
gMsg_Credits_Kuniko_Sakurai, // 1946 / 0x079A
gMsg_Credits_Masahiro_Tatemoto, // 1947 / 0x079B
gMsg_Credits_Takashi_Kawaguchi, // 1948 / 0x079C
gMsg_Credits_Keizoh_Katoh, // 1949 / 0x079D
gMsg_Credits_Motohiro_Ishii, // 1950 / 0x079E
gMsg_Credits_Akihito_Toda, // 1951 / 0x079F
gMsg_Credits_Yukari_Saitoh, // 1952 / 0x07A0
gMsg_Credits_Phil_Sandhop, // 1953 / 0x07A1
gMsg_Credits_Toshiko_Watson, // 1954 / 0x07A2
gMsg_Credits_Yuka_Nakata, // 1955 / 0x07A3
gMsg_Credits_Hiroko_Faulkner, // 1956 / 0x07A4
gMsg_Credits_Tony_Harman, // 1957 / 0x07A5
gMsg_Credits_Dayv_Brooks, // 1958 / 0x07A6
gMsg_Credits_Noriyuki_Minami, // 1959 / 0x07A7
gMsg_Credits_Bin_Ohgawara, // 1960 / 0x07A8
gMsg_Credits_Yoshihisa_Wada, // 1961 / 0x07A9
gMsg_Credits_Hikonori_Suzuki, // 1962 / 0x07AA
gMsg_Credits_Takao_Shimizu, // 1963 / 0x07AB
gMsg_Credits_Shigeru_Miyamoto, // 1964 / 0x07AC
gMsg_Credits_Hiroshi_Yamauchi, // 1965 / 0x07AD
0                , // 1966 / 0x07AE
0                , // 1967 / 0x07AF
0                , // 1968 / 0x07B0
0                , // 1969 / 0x07B1
0                , // 1970 / 0x07B2
0                , // 1971 / 0x07B3
0                , // 1972 / 0x07B4
0                , // 1973 / 0x07B5
0                , // 1974 / 0x07B6
0                , // 1975 / 0x07B7
0                , // 1976 / 0x07B8
0                , // 1977 / 0x07B9
0                , // 1978 / 0x07BA
0                , // 1979 / 0x07BB
0                , // 1980 / 0x07BC
0                , // 1981 / 0x07BD
0                , // 1982 / 0x07BE
0                , // 1983 / 0x07BF
0                , // 1984 / 0x07C0
0                , // 1985 / 0x07C1
0                , // 1986 / 0x07C2
0                , // 1987 / 0x07C3
0                , // 1988 / 0x07C4
0                , // 1989 / 0x07C5
0                , // 1990 / 0x07C6
0                , // 1991 / 0x07C7
0                , // 1992 / 0x07C8
0                , // 1993 / 0x07C9
0                , // 1994 / 0x07CA
0                , // 1995 / 0x07CB
0                , // 1996 / 0x07CC
0                , // 1997 / 0x07CD
0                , // 1998 / 0x07CE
gUnknown_08F25897, // 1999 / 0x07CF
gUnknown_08F26CAA, // 2000 / 0x07D0
gUnknown_08F26CAB, // 2001 / 0x07D1
gMsg_B_Unk, // 2002 / 0x07D2
gMsg_B_Approach, // 2003 / 0x07D3
gMsg_B_Attack, // 2004 / 0x07D4
gMsg_B_TankGun, // 2005 / 0x07D5
gMsg_B_Dodged, // 2006 / 0x07D6
gMsg_B_Continuous_Attack, // 2007 / 0x07D7
gMsg_B_Bite, // 2008 / 0x07D8
gMsg_B_Scratch, // 2009 / 0x07D9
gMsg_B_Charge, // 2010 / 0x07DA
gMsg_B_Smaaaaash, // 2011 / 0x07DB
gMsg_B_Damaged, // 2012 / 0x07DC
gMsg_B_YOU_WIN, // 2013 / 0x07DD
gMsg_B_YOU_LOST, // 2014 / 0x07DE
gMsg_B_Defeated, // 2015 / 0x07DF
gMsg_B_Hurt_And_Beaten, // 2016 / 0x07E0
gMsg_B_Already_Gone, // 2017 / 0x07E1
gMsg_B_No_Effect, // 2018 / 0x07E2
gMsg_B_Out_of_Control, // 2019 / 0x07E3
gMsg_B_Exhausted, // 2020 / 0x07E4
gMsg_B_Final_Attack, // 2021 / 0x07E5
gMsg_B_Giegue_Attack, // 2022 / 0x07E6
gMsg_B_Barrier, // 2023 / 0x07E7
gMsg_B_Bullhorn_1, // 2024 / 0x07E8
gMsg_B_Got_Stoned, // 2025 / 0x07E9
gMsg_B_Spit, // 2026 / 0x07EA
gMsg_B_Got_Blinded, // 2027 / 0x07EB
gMsg_B_Bind, // 2028 / 0x07EC
gMsg_B_Strange_Cry, // 2029 / 0x07ED
gMsg_B_Got_Exploded, // 2030 / 0x07EE
gMsg_B_Got_FlameBurst, // 2031 / 0x07EF
gMsg_B_Offense_Increase, // 2032 / 0x07F0
gMsg_B_Offense_Decrease, // 2033 / 0x07F1
gMsg_B_Defense_Increase, // 2034 / 0x07F2
gMsg_B_Speed_Increase, // 2035 / 0x07F3
gMsg_B_Check_Offense, // 2036 / 0x07F4
gMsg_B_Check_Defense, // 2037 / 0x07F5
gMsg_B_Fight_Decrease, // 2038 / 0x07F6
gMsg_B_Defense_Decrease, // 2039 / 0x07F7
gMsg_B_Smile, // 2040 / 0x07F8
gMsg_B_Fight_Increase, // 2041 / 0x07F9
gMsg_B_Rage, // 2042 / 0x07FA
gMsg_B_Speed_Decrease, // 2043 / 0x07FB
gMsg_B_Confuse, // 2044 / 0x07FC
gMsg_B_Call, // 2045 / 0x07FD
gMsg_B_Sow, // 2046 / 0x07FE
gMsg_B_GrouchoFunny2, // 2047 / 0x07FF
gMsg_B_Laugh, // 2048 / 0x0800
gMsg_B_Broken_Tank, // 2049 / 0x0801
gMsg_B_Threaten, // 2050 / 0x0802
gMsg_B_DirtyWords, // 2051 / 0x0803
gMsg_B_Grin, // 2052 / 0x0804
gMsg_B_Bullhorn_Succeed, // 2053 / 0x0805
gMsg_B_Bullhorn_Fail, // 2054 / 0x0806
gMsg_B_Backfire, // 2055 / 0x0807
gMsg_B_Critical, // 2056 / 0x0808
gMsg_B_Lost_Senses, // 2057 / 0x0809
gMsg_B_Confused, // 2058 / 0x080A
gMsg_B_Sleep, // 2059 / 0x080B
gMsg_B_Asleep, // 2060 / 0x080C
gMsg_B_PP_Recover, // 2061 / 0x080D
gMsg_B_HP_Recover, // 2062 / 0x080E
gMsg_B_Flow_Energy, // 2063 / 0x080F
gMsg_B_Call_Fail, // 2064 / 0x0810
gMsg_B_Call_Fail2, // 2065 / 0x0811
gMsg_B_Call_Succeed, // 2066 / 0x0812
gMsg_B_Run_Away, // 2067 / 0x0813
gMsg_B_Didnt_Work, // 2068 / 0x0814
gMsg_B_Trip, // 2069 / 0x0815
gMsg_B_Cant_Move, // 2070 / 0x0816
gMsg_B_Self_Stone, // 2071 / 0x0817
gMsg_B_PP_Steal, // 2072 / 0x0818
gMsg_B_Paralyzed, // 2073 / 0x0819
gMsg_B_Puff, // 2074 / 0x081A
gMsg_B_Poisoned, // 2075 / 0x081B
gMsg_B_Dehydrated, // 2076 / 0x081C
gMsg_B_Psi_Block, // 2077 / 0x081D
gMsg_B_Bound, // 2078 / 0x081E
gMsg_B_Shield, // 2079 / 0x081F
gMsg_B_Miss, // 2080 / 0x0820
gMsg_B_But_Psi_Block, // 2081 / 0x0821
gMsg_B_Franklin_Bounce, // 2082 / 0x0822
gMsg_B_Bounce, // 2083 / 0x0823
gMsg_B_Not_Enough_PP, // 2084 / 0x0824
gMsg_B_No_Effect2, // 2085 / 0x0825
gMsg_B_Asthma_Wheeze, // 2086 / 0x0826
gMsg_B_Meditate, // 2087 / 0x0827
gMsg_B_GrouchoFunny, // 2088 / 0x0828
gMsg_B_Ready, // 2089 / 0x0829
gMsg_B_Giegue_Sing, // 2090 / 0x082A
gMsg_B_Guard, // 2091 / 0x082B
gMsg_B_Approach_Slowly, // 2092 / 0x082C
gMsg_B_Poison_Recover, // 2093 / 0x082D
gMsg_B_Puzzled_Recover, // 2094 / 0x082E
gMsg_B_Itchy, // 2095 / 0x082F
gMsg_B_Paralysis_Recover, // 2096 / 0x0830
gMsg_B_Asleep_Recover, // 2097 / 0x0831
gMsg_B_Revive, // 2098 / 0x0832
gMsg_B_Used, // 2099 / 0x0833
gMsg_B_Tried, // 2100 / 0x0834
gMsg_B_Cant_Use, // 2101 / 0x0835
gMsg_B_Circumstances, // 2102 / 0x0836
gMsg_B_Do_Strange, // 2103 / 0x0837
gMsg_B_Dreaming, // 2104 / 0x0838
gMsg_B_Break_Shield, // 2105 / 0x0839
gMsg_B_Check, // 2106 / 0x083A
gMsg_B_Check_StrongFire, // 2107 / 0x083B
gMsg_B_Check_StrongFreeze, // 2108 / 0x083C
gMsg_B_Check_StrongThunder, // 2109 / 0x083D
gMsg_B_Check_StrongBeam, // 2110 / 0x083E
gMsg_B_Check_WeakSprays, // 2111 / 0x083F
gMsg_B_Asthma_Recover, // 2112 / 0x0840
gMsg_B_NoLonger_Stoned, // 2113 / 0x0841
gMsg_B_Words_o_Love, // 2114 / 0x0842
gMsg_B_Swear_Words, // 2115 / 0x0843
gMsg_B_Asthma, // 2116 / 0x0844
gMsg_B_Break_Item, // 2117 / 0x0845
gMsg_B_Wicked_Seed, // 2118 / 0x0846
gMsg_B_Gas, // 2119 / 0x0847
gMsg_B_Stoned, // 2120 / 0x0848
gMsg_B_Full_Recover, // 2121 / 0x0849
gMsg_B_Beaten_1, // 2122 / 0x084A
gMsg_B_Beaten_2, // 2123 / 0x084B
gMsg_B_Beaten_3, // 2124 / 0x084C
gMsg_B_Beaten_4, // 2125 / 0x084D
gMsg_B_Beaten_5, // 2126 / 0x084E
gMsg_B_Beaten_6, // 2127 / 0x084F
gMsg_B_Beaten_7, // 2128 / 0x0850
gMsg_B_Steal, // 2129 / 0x0851
gMsg_B_StatUp, // 2130 / 0x0852
gMsg_B_StatUp_New_Psi, // 2131 / 0x0853
gMsg_B_StatUp_HP, // 2132 / 0x0854
gMsg_B_StatUp_PP, // 2133 / 0x0855
gMsg_B_StatUp_Fight, // 2134 / 0x0856
gMsg_B_StatUp_Speed, // 2135 / 0x0857
gMsg_B_StatUp_Wisdom, // 2136 / 0x0858
gMsg_B_StatUp_Strength, // 2137 / 0x0859
gMsg_B_StatUp_Force, // 2138 / 0x085A
gMsg_B_Escape_Rope, // 2139 / 0x085B
gMsg_B_StatUp_Get_Item, // 2140 / 0x085C
gMsg_B_Confused_Recover, // 2141 / 0x085D
gMsg_B_Awake, // 2142 / 0x085E
gMsg_B_Zap, // 2143 / 0x085F
gMsg_B_But_No_Effect, // 2144 / 0x0860
gMsg_B_Big_Bag_Empty, // 2145 / 0x0861
gMsg_B_INDETERMINATE_BATTLE_END, // 2146 / 0x0862
gMsg_Giegue_Check_Real, // 2147 / 0x0863
gUnknown_08F26C96, // 2148 / 0x0864
gUnknown_08F26CAC, // 2149 / 0x0865
gMsg_B_Giegue_Speech, // 2150 / 0x0866
gMsg_B_Giegue_Speech2, // 2151 / 0x0867
gMsg_B_Giegue_Speech3, // 2152 / 0x0868
gMsg_B_Giegue_Speech4, // 2153 / 0x0869
gMsg_B_Giegue_Speech5, // 2154 / 0x086A
gMsg_B_Giegue_Speech6, // 2155 / 0x086B
gMsg_B_Giegue_Speech7, // 2156 / 0x086C
gMsg_B_Giegue_Speech8, // 2157 / 0x086D
gMsg_B_Giegue_Speech9, // 2158 / 0x086E
gMsg_B_Giegue_Speech10, // 2159 / 0x086F
gMsg_B_Giegue_Speech11, // 2160 / 0x0870
gMsg_B_Giegue_Speech12, // 2161 / 0x0871
gMsg_B_Giegue_Speech13, // 2162 / 0x0872
gMsg_B_Giegue_Speech14, // 2163 / 0x0873
gMsg_B_Giegue_Speech15, // 2164 / 0x0874
gMsg_B_Giegue_Speech16, // 2165 / 0x0875
gMsg_B_Giegue_Speech17, // 2166 / 0x0876
gMsg_B_Giegue_Speech18, // 2167 / 0x0877
gMsg_B_Giegue_Speech19, // 2168 / 0x0878
gMsg_B_Giegue_Speech20, // 2169 / 0x0879
gMsg_B_Giegue_Speech21, // 2170 / 0x087A
gMsg_B_Giegue_Speech22 // 2171 / 0x087B
};

//8 entry window set up
CURSOR_POSITION gUnknown_08F29E88[] = {
    {0x1000, 0x05, 0x02},
    {0x0001, 0x05, 0x03},
    {0x0002, 0x11, 0x03},
    {0x0003, 0x05, 0x04},
    {0x0004, 0x11, 0x04},
    {0x0005, 0x05, 0x05},
    {0x0006, 0x11, 0x05},
    {0x0007, 0x05, 0x06},
    {0x0008, 0x11, 0x06},
    {0x0000, 0x00, 0x00},
};

u16 gUnknown_08F29EB0[] = {
0x04CF, 0x04D0, 0x04D1, 0x04D2, 0x04D3, 0x04D4, 0x04D5, 0x04D6,
0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
0x04D2, 0x04D3, 0x04D4, 0x04D7, 0x04D7, 0x04D7, 0x04D3, 0x04D4,
0x04D2, 0x04D4, 0x04D2, 0x04D3, 0x04B1, 0x04B2, 0x04B3, 0x04B4,
0x04B5, 0x04B6, 0x04B7, 0x04B8, 0x04B9, 0x04BA, 0x04BB, 0x04BC,
};

extern const u8 gMsg_BattleDialogue[];
extern const u8 gMsg_BattleActionBox[];
extern const u8 gMsg_BattleActionBox_Clear[];
extern const u8 gUnknown_08F27885[];
extern const u8 gMsg_BattleDialogue_Clear[];
extern const u8 gUnknown_08F277F1[];
extern const u8 gUnknown_08F27884[];
extern const u8 gMsg_BattleNameBox[];
extern const u8 gMsg_BattleEnemyNameBox[];
extern const u8 gUnknown_08F277EA[];
extern const u8 gUnknown_08F277FB[];
extern const u8 gMsg_Battle8OptionBox[];
extern const u8 gUnknown_08F277F8[];
extern const u8 gMsg_BattleCantUseThis[];
extern const u8 gMsg_BattleCantEquip[];
extern const u8 gMsg_Battle8OptionBox_Arrow[];
extern const u8 gMsg_BattleActionBox_Giegue[];
extern const u8 gMsg_BattleUserCantUse[];
extern const u8 gMsg_BattleTextSpeed[];

const u8* gUnknown_08F29F00[] = {
gMsg_BattleDialogue, // 0 / 0x0
NULL             , // 1 / 0x1
gMsg_BattleActionBox, // 2 / 0x2
gMsg_BattleActionBox_Clear, // 3 / 0x3
gUnknown_08F27885, // 4 / 0x4
NULL             , // 5 / 0x5
NULL             , // 6 / 0x6
gMsg_BattleDialogue_Clear, // 7 / 0x7
gUnknown_08F277F1, // 8 / 0x8
gUnknown_08F27884, // 9 / 0x9
gMsg_BattleNameBox, // 10 / 0xA
gMsg_BattleEnemyNameBox, // 11 / 0xB
gUnknown_08F277EA, // 12 / 0xC
gUnknown_08F277FB, // 13 / 0xD
gMsg_Battle8OptionBox, // 14 / 0xE
gUnknown_08F277F8, // 15 / 0xF
gMsg_BattleCantUseThis, // 16 / 0x10
gMsg_BattleCantEquip, // 17 / 0x11
gMsg_Battle8OptionBox_Arrow, // 18 / 0x12
gMsg_BattleActionBox_Giegue, // 19 / 0x13
gMsg_BattleUserCantUse, // 20 / 0x14
gMsg_BattleTextSpeed // 21 / 0x15
};

//colors loaded to 0x50001E0
u16 gUnknown_08F29F58[] = {
    0x0000, 0x0000, 0x03E0, 0x7FFF
};

//colors loaded to 0x50001C0
u16 gUnknown_08F29F60[] = {
    0x0000, 0x0000, 0x01EF, 0x03FF
};

//colors loaded to 0x50001A0
u16 gUnknown_08F29F68[] = {
    0x0000, 0x0000, 0x3C0F, 0x7C1F
};

//colors loaded to 0x5000180
u16 gUnknown_08F29F70[] = {
    0x0000, 0x0000, 0x000F, 0x001F
};

//Used in HandleStatusMenu
u16 gUnknown_08F29F78[] = {
    0x8001, 0x010A, 0x9002, 0x0312, 0x0000, 0x0000
};

//Used in HandleCommandMenu
u8 gUnknown_08F29F84[] = {
0x01, 0x00, 0x01, 0x01, 0x02, 0x00, 0x01, 0x02,
0x03, 0x00, 0x01, 0x03, 0x04, 0x00, 0x01, 0x04,
0x05, 0x00, 0x01, 0x05, 0x06, 0x00, 0x01, 0x06,
0x00, 0x00, 0x00, 0x00
};

u8 gUnknown_08F29FA0[] = {
0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x09, 0x00,
0x00, 0x00, 0x00, 0x00
};

// seems to be text control codes?
u8 gUnknown_08F29FAC[] = {
0x01, 0x01, 0xDF, 0x01, 0x00
};

CURSOR_POSITION gUnknown_08F29FB4[] = {
#ifdef JAPANESE
{0x01, 0x18, 0x04},
{0x02, 0x18, 0x05},
{0x03, 0x18, 0x06},
{0x04, 0x18, 0x07},
{0x05, 0x18, 0x08},
#elif ENGLISH
{0x01, 0x17, 0x04},
{0x02, 0x17, 0x05},
{0x03, 0x17, 0x06},
{0x04, 0x17, 0x07},
{0x05, 0x17, 0x08},
#endif
{0x00, 0x00, 0x00}
};

CURSOR_POSITION gUnknown_08F29FCC[] = {
#ifdef JAPANESE
{0x03, 0x18, 0x06},
{0x04, 0x18, 0x07},
{0x05, 0x18, 0x08},
#elif ENGLISH
{0x03, 0x17, 0x06},
{0x04, 0x17, 0x07},
{0x05, 0x17, 0x08},
#endif
{0x00, 0x00, 0x00}
};

CURSOR_POSITION gUnknown_08F29FDC[] = {
{0x01, 0x01, 0x01},
{0x02, 0x01, 0x02},
{0x03, 0x01, 0x03},
{0x04, 0x01, 0x04},
{0x00, 0x00, 0x00}
};

CURSOR_POSITION gUnknown_08F29FF0[] = {
{0xC1, 0x06, 0x04},
{0xC2, 0x07, 0x04},
{0xC3, 0x08, 0x04},
{0xC4, 0x09, 0x04},
{0xC5, 0x0A, 0x04},
{0xC6, 0x0B, 0x04},
{0xC7, 0x0C, 0x04},
{0x01, 0x0D, 0x04},
{0xC8, 0x0E, 0x04},
{0xC9, 0x0F, 0x04},
{0xCA, 0x10, 0x04},
{0xCB, 0x11, 0x04},
{0xCC, 0x12, 0x04},
{0xCD, 0x13, 0x04},
{0xCE, 0x14, 0x04},
{0xC0, 0x16, 0x04},
{0xCF, 0x06, 0x06},
{0xD0, 0x07, 0x06},
{0xD1, 0x08, 0x06},
{0xD2, 0x09, 0x06},
{0xD3, 0x0A, 0x06},
{0xD4, 0x0B, 0x06},
{0xD5, 0x0C, 0x06},
{0x01, 0x0D, 0x06},
{0xD6, 0x0E, 0x06},
{0xD7, 0x0F, 0x06},
{0xD8, 0x10, 0x06},
{0xD9, 0x11, 0x06},
{0xDA, 0x12, 0x06},
{0xE0, 0x13, 0x06},
{0xFD, 0x14, 0x06},
{0xC0, 0x16, 0x06},
{0x00, 0x00, 0x00}
};

NAKED
void sub_8F0AD0C()
{
    #ifdef NDS_VERSION
    asm(".include \"asm/non_matching/menu_and_text_system/sub_8F0AD0C_nds.s\"");
    #else
    asm(".include \"asm/non_matching/menu_and_text_system/sub_8F0AD0C_gba.s\"");
    #endif
}

void sub_8F0AE34(void) {
    HandleControlCodes(&gMsg_WindowMessage);
    gTextPlaySfx = 0x80;
}

NAKED
void DrawPartyInfoWindow()
{
    asm(".include \"asm/non_matching/menu_and_text_system/DrawPartyInfoWindow.s\"");
}

void sub_8F0B004(void) {
    sTextState sp0;
    u8* flat = &gBg0TilemapBuffer;
    if (flat[0x4c0] == 0xFB) {
        SaveTextSystemState(&sp0);
        #ifdef JAPANESE
        DrawPartyInfoWindow();
        #endif
        LoadTextSystemState(&sp0);
    }
}

void DrawMoneyWindow(void) {
    HandleControlCodes(&gMsg_CashBox);
}

void sub_8F0B040(void) {
    if (0x80 & gUnknown_03003170) {
        gUnknown_03003170 &= 0x7F;
        gTextPlaySfx = 0;
        DrawPartyInfoWindow();
        UpdateBg0Tilemap();
        WaitForActionButtonPress();
    }
    DmaFill32(3, 0, gBg0TilemapBuffer, 0x800);
    DmaCopy32(3, gBg0TilemapBuffer, 0x06000000, 0x800);
    gTextPlaySfx = 0;
}

NAKED
void HandleStatusMenu()
{
    asm(".include \"asm/non_matching/menu_and_text_system/HandleStatusMenu.s\"");
}

NAKED
s32 HandleCommandMenu(u32 selectedIdx)
{
    asm(".include \"asm/non_matching/menu_and_text_system/HandleCommandMenu.s\"");
}

NAKED
s32 sub_8F0B2C8(u32 a1)
{
    #ifdef JAPANESE
    asm(".include \"asm/non_matching/menu_and_text_system/sub_8F0B2C8_jp.s\"");
    #elif ENGLISH
    asm(".include \"asm/non_matching/menu_and_text_system/sub_8F0B2C8_en.s\"");
    #endif
}

NAKED
s32 sub_8F0B350()
{
    asm(".include \"asm/non_matching/menu_and_text_system/sub_8F0B350.s\"");
}

NAKED
s32 SelectPSI()
{
    asm(".include \"asm/non_matching/menu_and_text_system/SelectPSI.s\"");
}

NAKED
s32 PickAnItemFromInventory()
{
    asm(".include \"asm/non_matching/menu_and_text_system/PickAnItemFromInventory.s\"");
}

NAKED
s32 HandleGoodsMenuInput()
{
    asm(".include \"asm/non_matching/menu_and_text_system/HandleGoodsMenuInput.s\"");
}

NAKED
s32 PickAnItemFromCloset()
{
    asm(".include \"asm/non_matching/menu_and_text_system/PickAnItemFromCloset.s\"");
}

NAKED
s32 SelectCharacter()
{
    #ifdef JAPANESE
    asm(".include \"asm/non_matching/menu_and_text_system/SelectCharacter_jp.s\"");
    #elif ENGLISH
    asm(".include \"asm/non_matching/menu_and_text_system/SelectCharacter_en.s\"");
    #endif
}

s32 sub_8F0BA2C(void) {
    u8 i, party_count;
    party_count = 0;
    for (i = 0; i < 4; i++){
        if ((u32) (u8) (gGameInfo.PlayerInfo.Struct.CharactersInParty[i] - 1) < 5) {
            party_count++;
        }
    }
    if (party_count > 1) {
        return SelectCharacter();
    } else {
        return gGameInfo.PlayerInfo.Struct.CharactersInParty[0];
    }
}

NAKED
s32 PickAnItemFromList(u8 *a1)
{
    #ifdef JAPANESE
    asm(".include \"asm/non_matching/menu_and_text_system/PickAnItemFromList_jp.s\"");
    #elif ENGLISH
    asm(".include \"asm/non_matching/menu_and_text_system/PickAnItemFromList_en.s\"");
    #endif
}

NAKED
s32 SelectTeleportDestination()
{
    asm(".include \"asm/non_matching/menu_and_text_system/SelectTeleportDestination.s\"");
}

NAKED
void sub_8F0BC04(u8 *a1, u8 a2)
{
    #ifdef JAPANESE
    asm(".include \"asm/non_matching/menu_and_text_system/sub_8F0BC04_jp.s\"");
    #elif ENGLISH
    asm(".include \"asm/non_matching/menu_and_text_system/sub_8F0BC04_en.s\"");
    #endif
}

NAKED
void SaveTextSystemState(sTextState *dst)
{
    asm(".include \"asm/non_matching/menu_and_text_system/SaveTextSystemState.s\"");
}

void LoadTextSystemState(sTextState* src) {
    gTextX = src->byte0;
    gTextY = src->byte1;
    gTextOriginX = src->byte2;
    gTextOriginY = src->byte3;
    gTextDelayAfterWriteCharacterEnabled = src->byte4;
    gTextMaxCharsPerLine = src->byte5;
    gTextMaxLines = src->byte6;
    gTextNonEnglishCapitalLetter = src->byte7;
}

NAKED
void HandleControlCodes(u8 *buf)
{
    #ifdef JAPANESE
    asm(".include \"asm/non_matching/menu_and_text_system/HandleControlCodes_jp.s\"");
    #elif ENGLISH
    asm(".include \"asm/non_matching/menu_and_text_system/HandleControlCodes_en.s\"");
    #endif
}

NAKED
void WriteCharacterToTilemap(u32 character)
{
    asm(".include \"asm/non_matching/menu_and_text_system/WriteCharacterToTilemap.s\"");
}

NAKED
void UpdateBg0TilemapMultipleTimes(u8 a1)
{
    asm(".include \"asm/non_matching/menu_and_text_system/UpdateBg0TilemapMultipleTimes.s\"");
}

const u16 gUnknown_08F29C80[] = {
#ifdef JAPANESE
0x0000, 0x0010, 0x0000, 0x0000, 0x0000, 0x0007, 0x0011, 0x0008,
0x0012, 0x0009, 0x0013, 0x000A, 0x0014, 0x000B, 0x0015, 0x0016,
0x0101, 0x0017, 0x0102, 0x0018, 0x0103, 0x0019, 0x0104, 0x001A,
0x0105, 0x001B, 0x0106, 0x001C, 0x0107, 0x001D, 0x0108, 0x001E,
0x0109, 0x001F, 0x010A, 0x0020, 0x010B, 0x0021, 0x010C, 0x000F,
0x0022, 0x010D, 0x0023, 0x010E, 0x0024, 0x010F, 0x0025, 0x0026,
0x0027, 0x0028, 0x0029, 0x002A, 0x0110, 0x0115, 0x002B, 0x0111,
0x0116, 0x002C, 0x0112, 0x0117, 0x002D, 0x0113, 0x0118, 0x002E,
0x0114, 0x0119, 0x002F, 0x0030, 0x0031, 0x0032, 0x0033, 0x000C,
0x0034, 0x000D, 0x0035, 0x000E, 0x0036, 0x0037, 0x0038, 0x0039,
0x003A, 0x003B, 0x003C, 0x0006, 0x003D, 0x0047, 0x0051, 0x0048,
0x0052, 0x0049, 0x0053, 0x004A, 0x0054, 0x004B, 0x0055, 0x0056,
0x0121, 0x0057, 0x0122, 0x0058, 0x0123, 0x0059, 0x0124, 0x005A,
0x0125, 0x005B, 0x0126, 0x005C, 0x0127, 0x005D, 0x0128, 0x005E,
0x0129, 0x005F, 0x012A, 0x0060, 0x012B, 0x0061, 0x012C, 0x004F,
0x0062, 0x012D, 0x0063, 0x012E, 0x0064, 0x012F, 0x0065, 0x0066,
0x0067, 0x0068, 0x0069, 0x006A, 0x0130, 0x0135, 0x006B, 0x0131,
0x0136, 0x006C, 0x0132, 0x0137, 0x006D, 0x0133, 0x0138, 0x006E,
0x0134, 0x0139, 0x006F, 0x0070, 0x0071, 0x0072, 0x0073, 0x004C,
0x0074, 0x004D, 0x0075, 0x004E, 0x0076, 0x0077, 0x0078, 0x0079,
0x007A, 0x007B, 0x007C, 0x0046, 0x007D, 0x013A, 0x0002, 0x0003,
0x00A6, 0x00A7, 0x00A8, 0x00A9, 0x0800, 0x0801, 0x0005, 0x00AF,
0x00B0, 0x00B1, 0x00B2, 0x00B3, 0x00B4, 0x00B5, 0x00B6, 0x00B7,
0x00B8, 0x00B9, 0x00BA, 0x00BB, 0x00BC, 0x00BD, 0x00BE, 0x00BF,
0x00C0, 0x00C1, 0x00C2, 0x00C3, 0x00C4, 0x00C5, 0x00C6, 0x00C7,
0x00C8, 0x00C9, 0x00CA, 0x00CB, 0x00CC, 0x00CD, 0x00CE, 0x00CF,
0x00D0, 0x00D1, 0x00D2, 0x00D3, 0x00D4, 0x00D5, 0x00D6, 0x00D7,
0x00D8, 0x00D9, 0x00DA, 0x00DC, 0x00AA, 0x00AB, 0x00A1, 0x00A2,
0x00AE, 0x00E1, 0x00E2, 0x00E3, 0x00E4, 0x00E5, 0x00E6, 0x00E7,
0x00E8, 0x00E9, 0x00EA, 0x00EB, 0x00EC, 0x00ED, 0x00EE, 0x00EF,
0x00F0, 0x00F1, 0x00F2, 0x00F3, 0x00F4, 0x00F5, 0x00F6, 0x00F7,
0x00F8, 0x00F9, 0x00FA, 0x00FC, 0x00A5, 0x00AD, 0x00A4, 0x0096,
0x00A3, 0x00AC
#elif ENGLISH
0x0000, 0x0010, 0x0000, 0x0000, 0x0000, 0x0001, 0x0002, 0x0003,
0x0004, 0x0005, 0x0006, 0x0007, 0x0008, 0x0009, 0x000A, 0x000B,
0x000C, 0x000D, 0x000E, 0x000F, 0x0010, 0x0011, 0x0012, 0x0013,
0x0014, 0x0015, 0x0016, 0x0017, 0x0018, 0x0019, 0x001A, 0x001B,
0x001C, 0x001D, 0x001E, 0x001F, 0x0020, 0x0021, 0x0022, 0x0023,
0x0024, 0x0025, 0x0026, 0x0027, 0x0028, 0x0029, 0x002A, 0x002B,
0x002C, 0x002D, 0x002E, 0x002F, 0x0030, 0x0031, 0x0032, 0x0033,
0x0034, 0x0035, 0x0036, 0x0037, 0x0038, 0x0039, 0x003A, 0x003B,
0x003C, 0x003D, 0x003E, 0x003F, 0x0031, 0x0032, 0x0033, 0x000C,
0x0034, 0x000D, 0x0035, 0x000E, 0x0036, 0x0037, 0x0038, 0x0039,
0x003A, 0x003B, 0x003C, 0x0006, 0x003D, 0x0047, 0x0051, 0x0048,
0x0052, 0x0049, 0x0053, 0x004A, 0x0054, 0x004B, 0x0055, 0x0056,
0x0121, 0x0057, 0x0122, 0x0058, 0x0123, 0x0059, 0x0124, 0x005A,
0x0125, 0x005B, 0x0126, 0x005C, 0x0127, 0x005D, 0x0128, 0x005E,
0x0129, 0x005F, 0x012A, 0x0060, 0x012B, 0x0061, 0x012C, 0x004F,
0x0062, 0x012D, 0x0063, 0x012E, 0x0064, 0x012F, 0x0065, 0x0066,
0x0067, 0x0068, 0x0069, 0x006A, 0x0130, 0x0135, 0x006B, 0x0131,
0x0136, 0x006C, 0x0132, 0x0137, 0x006D, 0x0133, 0x0138, 0x006E,
0x0134, 0x0139, 0x006F, 0x0070, 0x0071, 0x0072, 0x0073, 0x004C,
0x0074, 0x004D, 0x0075, 0x004E, 0x0076, 0x0077, 0x0078, 0x0079,
0x007A, 0x007B, 0x007C, 0x0046, 0x007D, 0x013A, 0x0002, 0x0003,
0x00A6, 0x00A7, 0x00A8, 0x00A9, 0x0800, 0x0801, 0x0005, 0x00AF,
0x00B0, 0x00B1, 0x00B2, 0x00B3, 0x00B4, 0x00B5, 0x00B6, 0x00B7,
0x00B8, 0x00B9, 0x00BA, 0x00BB, 0x00BC, 0x00BD, 0x00BE, 0x00BF,
0x00C0, 0x00C1, 0x00C2, 0x00C3, 0x00C4, 0x00C5, 0x00C6, 0x00C7,
0x00C8, 0x00C9, 0x00CA, 0x00CB, 0x00CC, 0x00CD, 0x00CE, 0x00CF,
0x00D0, 0x00D1, 0x00D2, 0x00D3, 0x00D4, 0x00D5, 0x00D6, 0x00D7,
0x00D8, 0x00D9, 0x00DA, 0x00DC, 0x00AA, 0x00AB, 0x00A1, 0x00A2,
0x00AE, 0x00E1, 0x00E2, 0x00E3, 0x00E4, 0x00E5, 0x00E6, 0x00E7,
0x00E8, 0x00E9, 0x00EA, 0x00EB, 0x00EC, 0x00ED, 0x00EE, 0x00EF,
0x00F0, 0x00F1, 0x00F2, 0x00F3, 0x00F4, 0x00F5, 0x00F6, 0x00F7,
0x00F8, 0x00F9, 0x00FA, 0x00FC, 0x00A5, 0x00AD, 0x00A4, 0x0096,
0x00A3, 0x00AC
#endif
};

const u16 gUnknown_08F29E84[] = {
#ifdef JAPANESE
0x0001, 0x0004
#elif ENGLISH
0x00A3, 0x00AC
#endif
};

NAKED
u32 GetFontCharTileId(s32 a1)
{
    asm(".include \"asm/non_matching/menu_and_text_system/GetFontCharTileId.s\"");
}

NAKED
void HandleTextWrapping()
{
    asm(".include \"asm/non_matching/menu_and_text_system/HandleTextWrapping.s\"");
}

NAKED
void WaitForButtonPress()
{
    asm(".include \"asm/non_matching/menu_and_text_system/WaitForButtonPress.s\"");
}

void SetTextPosition(u8 x, u8 y) {
    if ((s8) x >= 0) {
        gTextX = gTextOriginX = x;
    }
    if ((s8) y >= 0) {
        gTextY = gTextOriginY = y;
    }
    gTextNonEnglishCapitalLetter = gTextDelayAfterWriteCharacterEnabled = 0;
}


void DrawSpaceTiles(s32 a1) {
    while (a1 > 0){
        WriteCharacterToTilemap(0x8010);
        a1--;
    }
}

void DrawBlankTiles(s32 num) {
    while (num > 0){
        WriteCharacterToTilemap(0x8000);
        num--;
    }
}

void DrawTextWithIdWaitForButton(u8* a1) {
    if (gTextPlaySfx == 0) {
        #ifdef JAPANESE
        sub_8F0AE34();
        #elif ENGLISH
        choose_text_window_type();
        #endif
    }
    if (gTextDelayAfterWriteCharacterEnabled != 0){
        HandleTextWrapping();
        if ((0x80 & gTextDelayAfterWriteCharacterEnabled) == 0) {
            WaitForButtonPress();
        } else {
            gTextDelayAfterWriteCharacterEnabled = 1;
        }
    } else {
        gTextDelayAfterWriteCharacterEnabled = 1;
    }
    HandleControlCodes(a1);
}

#ifdef JAPANESE
void DrawTextWithId(u16 textId) {
    if (gUnknown_030034E8[textId] != NULL) {
        DrawTextWithIdWaitForButton(gUnknown_030034E8[textId]);
    }
}
#elif ENGLISH
NAKED
void DrawTextWithId(u16 textId)
{
    asm(".include \"asm/non_matching/menu_and_text_system/DrawTextWithId_en.s\"");
}
#endif

void DrawTextWithIdNoWait(u16 textId) {
    if (gUnknown_030034E8[textId] != NULL) {
        HandleControlCodes(gUnknown_030034E8[textId]);
    }
}

void DrawNumberWithMaxDigits(u32 a1, u8 a2) {
    u8 sp0[12];
    s32 var_r0;

    s32 i = 0;
    while (a1 != 0){
        sp0[i] = (a1 % 10) + 0xB0;
        i++;
        a1 /= 10;
    }
    if (a2 != 0) {
        var_r0 = a2 - 1;
        if (i != 0) {
            var_r0 = a2 - i;
        }
        DrawSpaceTiles(var_r0);
    }
    if (i != 0) {
        while (i > 0){
            WriteCharacterToTilemap(sp0[i - 1] + 0x8000);
            i--;
        }
    } else {
        WriteCharacterToTilemap(0x80B0);
    }
}

void DrawPlayerCondition(u8 statusMask) {
    if (statusMask & CONDITION_UNCONSCIOUS) {
        DrawTextWithIdNoWait(0x4A8U);
    } else if (statusMask & CONDITION_STONE) {
        DrawTextWithIdNoWait(0x4A9U);
    } else if (statusMask & CONDITION_PARALYZED) {
        DrawTextWithIdNoWait(0x4AAU);
    } else if (statusMask & CONDITION_ASLEEP) {
        DrawTextWithIdNoWait(0x4ABU);
    } else if (statusMask & CONDITION_FLUSTERED) {
        DrawTextWithIdNoWait(0x4ACU);
    } else if (statusMask & CONDITION_CONFUSED) {
        DrawTextWithIdNoWait(0x4ADU);
    } else if (statusMask & CONDITION_POISONED) {
        DrawTextWithIdNoWait(0x4AEU);
    } else if (statusMask & CONDITION_COLD) {
        DrawTextWithIdNoWait(0x4AFU);
    } else {
        DrawSpaceTiles(6);
    }
}

void SetLineMaximums(u8 maxChars, u8 maxLines) {
    gTextMaxCharsPerLine = maxChars;
    gTextMaxLines = maxLines;
}

NAKED
s32 HandleSelectMenuInput(u16 *a1, s32 *a2)
{
    asm(".include \"asm/non_matching/menu_and_text_system/HandleSelectMenuInput.s\"");
}

s32 sub_8F0CF0C(u8 x, u8 y, CURSOR_POSITION* a3, s32* a4, s32* a5) {
    if (0x80 & gUnknown_030034D0) {
        if (a3->y != y) {
            return 0;
        }
    } else if (0x10 & gUnknown_030034D0) {
        return sub_8F0D044(x, 0, a3, a4, a5);
    } else if (0x40 & gUnknown_030034D0) {
        return sub_8F0D044(x, y, a3, a4, a5);
    }
    return sub_8F0CF80(x, y, a3, a4, a5);
}

NAKED
s32 sub_8F0CF80(u8 x, u8 y, CURSOR_POSITION *a3, s32 *a4, s32 *a5)
{
    asm(".include \"asm/non_matching/menu_and_text_system/sub_8F0CF80.s\"");
}

NAKED
s32 sub_8F0CFD0(u8 x, u8 y, CURSOR_POSITION *a3, s32 *a4, s32 *a5)
{
    asm(".include \"asm/non_matching/menu_and_text_system/sub_8F0CFD0.s\"");
}

NAKED
s32 sub_8F0D044(u8 x, u8 y, CURSOR_POSITION *a3, s32 *a4, s32 *a5)
{
    asm(".include \"asm/non_matching/menu_and_text_system/sub_8F0D044.s\"");
}

