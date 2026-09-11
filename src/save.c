#include "gba/gba.h"
#include "m4a.h"
#include "definitions.h"
#include "agb_sram.h"

extern void ReadSram(const u8 *src, u8 *dst, u32 size);
extern u32 WriteSramEx(const u8 *src, u8 *dst, u32 size);

//Cursor coordinates for each save slot window
const CURSOR_POSITION gUnknown_08F2A074[] = {
#ifdef JAPANESE
{0x11, 0x0A, 0x03},
{0x12, 0x04, 0x03},
{0x13, 0x09, 0x03},
{0x14, 0x0E, 0x03},
{0x15, 0x13, 0x03},
{0x21, 0x0A, 0x08},
{0x22, 0x04, 0x08},
{0x23, 0x09, 0x08},
{0x24, 0x0E, 0x08},
{0x25, 0x13, 0x08},
{0x31, 0x0A, 0x0D},
{0x32, 0x04, 0x0D},
{0x33, 0x09, 0x0D},
{0x34, 0x0E, 0x0D},
{0x35, 0x13, 0x0D},
#elif ENGLISH
{0x11, 0x06, 0x03},
{0x12, 0x02, 0x03},
{0x13, 0x0B, 0x03},
{0x14, 0x10, 0x03},
{0x15, 0x16, 0x03},
{0x21, 0x06, 0x08},
{0x22, 0x02, 0x08},
{0x23, 0x0B, 0x08},
{0x24, 0x10, 0x08},
{0x25, 0x16, 0x08},
{0x31, 0x06, 0x0D},
{0x32, 0x02, 0x0D},
{0x33, 0x0B, 0x0D},
{0x34, 0x10, 0x0D},
{0x35, 0x16, 0x0D},
#endif
{0x00, 0x00, 0x00}
};

const CURSOR_POSITION gUnknown_08F2A0B4[] = {
#ifdef JAPANESE
{0x15, 0x02, 0x03},
{0x25, 0x02, 0x08},
{0x35, 0x02, 0x0D},
#elif ENGLISH
{0x15, 0x00, 0x03},
{0x25, 0x00, 0x08},
{0x35, 0x00, 0x0D},
#endif
{0x00, 0x00, 0x00}
};

//Displayed when erasing a file
//X coordinates of the name and level number
const CURSOR_POSITION gUnknown_08F2A0C4[] = {
#ifdef JAPANESE
{0x01, 0x0A, 0x12},
{0x02, 0x0F, 0x12},
#elif ENGLISH
{0x01, 0x07, 0x12},
{0x02, 0x0D, 0x12},
#endif
{0x00, 0x00, 0x00}
};

NAKED
s32 LoadSaveGame(SaveGameStruct *a1)
{
    #ifdef JAPANESE
    asm(".include \"asm/non_matching/save/LoadSaveGame_jp.s\"");
    #elif ENGLISH
    asm(".include \"asm/non_matching/save/LoadSaveGame_en.s\"");
    #endif
}


#ifdef NDS_VERSION
void M1_CalculateChecksumAndWriteSave(SaveGameStruct* src, s32 len) { }
#else
void M1_CalculateChecksumAndWriteSave(SaveGameStruct* src, s32 len) {
    u32 var_r4;
    s32 i;

    var_r4 = 0;
    for (i = 2; i < 0x300; i++){
        var_r4 += ((u8*)src)[i] << (i & 7);
    };
    src->PlayerInfo.Struct.save_checksum = (u16)var_r4;
    M1_WriteSave(src, len - 1);
}
#endif

s32 M1_ValidateChecksum(SaveGameStruct* src) {
    s32 i;
    u32 var_r4;

    var_r4 = 0;
    for (i = 2; i < 0x300; i++){
        var_r4 += ((u8*)src)[i] << (i & 7);
    }
    if (src->PlayerInfo.Struct.save_checksum == (u16)var_r4) {
        return 0;
    } else {
        return 1;
    };
}

#ifdef NDS_VERSION
void ReadSave(s32 chunks, SaveGameStruct* dst) { }
#else
void ReadSave(s32 chunks, SaveGameStruct* dst) {
    u8* src;
    while(chunks < 6){
        src = (u8*) (SRAM_ADR+(chunks * sizeof(SaveGameStruct)));
        ReadSram(src, (u8*) dst, sizeof(SaveGameStruct));
        if (M1_ValidateChecksum(dst) == 0) {
            return;
        }
        chunks += 3;
    }
    dst->PlayerInfo.Struct.save_checksum_2 = 0;
}
#endif

s32 sub_8F0D510(void) {
    u16 sp0[2];

    #ifdef NDS_VERSION
    ReadSram_DS((u8* )SRAM_ADR+0x1200, (u8*)sp0, 4);
    #else
    ReadSram((u8* )SRAM_ADR+0x1200, (u8*)sp0, 4);
    #endif

    if (sp0[0] != 0xE9B0) {
        return 0;
    }
    return sp0[1];
}

void M1_WriteSave(SaveGameStruct* a1, s32 a2) {
    while (a2 < 6){
        #ifdef NDS_VERSION
        WriteSramEx_DS((u8*) a1, (u8*) (SRAM_ADR+(a2 * sizeof(SaveGameStruct))),
        sizeof(SaveGameStruct));
        #else
        WriteSramEx((u8*) a1, (u8*) (SRAM_ADR+(a2 * sizeof(SaveGameStruct))),
        sizeof(SaveGameStruct));
        #endif
        a2 += 3;
    }
}

void sub_8F0D574(u32 a1)
{
    u16 sp0[2];
    u16 *ptr = sp0;
    *ptr = 0xE9B0;
    sp0[1] = a1;

    #ifdef NDS_VERSION
    WriteSramEx_DS((u8 *)sp0, (u8 *)SRAM_ADR + 0x1200, sizeof(sp0));
    #else
    WriteSramEx((u8 *)sp0, (u8 *)SRAM_ADR + 0x1200, sizeof(sp0));
    #endif
}
