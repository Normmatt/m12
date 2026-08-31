#include "gba/gba.h"
#include "m4a.h"
#include "definitions.h"

NAKED
void sub_8F06EA4()
{
    asm(".include \"asm/non_matching/code2/sub_8F06EA4.s\"");
}

void sub_8F06FF0(void) {
    s32 i;
    u8 char_id;
    s32 idx;

    for (i = 0; i < 4; i++){
        char_id = gGameInfo.PlayerInfo.Struct.CharactersInParty[i];
        if (char_id != 0) {
            idx = char_id - 1;
            if (!(CONDITION_UNCONSCIOUS & gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].Condition)) {
                gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].CurrentHP = gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].MaxHP;
                gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].CurrentPP = gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].MaxPP;
                if (gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].Strength > (Random() >> 25)) {
                    gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].Condition &= ~CONDITION_COLD;
                }
            }
        }
    }
    sub_8F0088C(32);
}


NAKED
void sub_8F07058(u8 a1)
{
    asm(".include \"asm/non_matching/code2/sub_8F07058.s\"");
}

NAKED
void sub_8F07144(u16 a1, u16 a2)
{
    asm(".include \"asm/non_matching/code2/sub_8F07144.s\"");
}

const u8 gUnknown_08F1BAC8[] = {
5, 5, 7, 1, 0, 0, 3, 4
};

const u8 gUnknown_08F1BAD0[] = {
4, 5, 3, 1, 1, 0, 7, 4
};

const u8 gUnknown_08F1BAD8[] = {
0x72, 0x00, 0x78, 0x00, 0x70, 0x00, 0x7C, 0x00,
0x72, 0x00, 0x68, 0x00, 0x60, 0x00, 0x6C, 0x00
};

const u8 gUnknown_08F1BAE8[] = {
0x22, 0x00, 0x22, 0x00, 0x28, 0x00, 0x2E, 0x00,
0x2E, 0x00, 0x2E, 0x00, 0x28, 0x00, 0x22, 0x00
};

const u8 gUnknown_08F1BAF8[] = {
0x72, 0x00, 0x6C, 0x00, 0x60, 0x00, 0x70, 0x00,
0x72, 0x00, 0x74, 0x00, 0x70, 0x00, 0x78, 0x00
};

const u8 gUnknown_08F1BB08[] = {
0x2E, 0x00, 0x2E, 0x00, 0x28, 0x00, 0x22, 0x00,
0x22, 0x00, 0x22, 0x00, 0x28, 0x00, 0x2E, 0x00
};

NAKED
void sub_8F07374()
{
    #ifdef NDS_VERSION
    asm(".include \"asm/non_matching/code2/sub_8F07374_nds.s\"");
    #else
    asm(".include \"asm/non_matching/code2/sub_8F07374_gba.s\"");
    #endif
}

const u8 gUnknown_08F1BB18[] = {
0x40, 0x40, 0x40, 0x20, 0x10, 0x08, 0x04, 0x02,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
};

NAKED
void sub_8F076B8(u8 a1)
{
    #ifdef NDS_VERSION
    asm(".include \"asm/non_matching/code2/sub_8F076B8_nds.s\"");
    #else
    asm(".include \"asm/non_matching/code2/sub_8F076B8_gba.s\"");
    #endif
}

NAKED
u8 sub_8F07EB4(void *a1)
{
    asm(".include \"asm/non_matching/code2/sub_8F07EB4.s\"");
}

NAKED
void AskToContinueOrEndAdventure()
{
    asm(".include \"asm/non_matching/code2/AskToContinueOrEndAdventure.s\"");
}
