#include "gba/gba.h"
#include "m4a.h"
#include "definitions.h"

void SoftResetRom(s32);
void sub_8F15384();
void SoundBiasReset();
void SoundBiasSet();
void SoundVSyncOff_rev01();
void SoundVSyncOn_rev01();


extern u8 const credits_labels_1_gfx[];
extern u8 const credits_labels_2_gfx[];
extern u8 const credits_labels_3_gfx[];
extern u8 const credits_labels_4_gfx[];
extern u8 const credits_characters1_1_gfx[];
extern u8 const credits_characters1_2_gfx[];
extern u8 const credits_characters2_1_gfx[];
extern u8 const credits_characters2_2_gfx[];
extern u8 const credits_characters3_1_gfx[];
extern u8 const credits_characters3_2_gfx[];
extern u8 const credits_dad_1_gfx[];
extern u8 const credits_dad_2_gfx[];
extern u8* const credits_label_gfxs[];
extern u8* const gUnknown_08F1BCBC[];
extern u8* const gUnknown_08F6F880[];
extern u8* const tileset_gfxs[];


void BitUnpackById(u8 id, void* dst, s32 numTiles) {
    u8 const * unk08F1BCBC[] = {
    credits_labels_1_gfx, // 0 / 0x0
    credits_labels_2_gfx, // 1 / 0x1
    credits_labels_3_gfx, // 2 / 0x2
    credits_labels_4_gfx, // 3 / 0x3
    credits_characters1_1_gfx, // 4 / 0x4
    credits_characters1_2_gfx, // 5 / 0x5
    credits_characters2_1_gfx, // 6 / 0x6
    credits_characters2_2_gfx, // 7 / 0x7
    credits_characters3_1_gfx, // 8 / 0x8
    credits_characters3_2_gfx, // 9 / 0x9
    credits_dad_1_gfx, // 10 / 0xA
    credits_dad_2_gfx, // 11 / 0xB
    };

    //0-0x1f : tilesets
    if (id < 0x20) {
        BitUnpack(tileset_gfxs[id], dst, numTiles);
    }
    //0x20-0x3F : enemies
    else if (id < 0x40) {
        BitUnpack(gUnknown_08F6F880[id - 0x20u], dst, numTiles);
    }
    //0x40-0x47 : title and melody bg
    else if (id < 0x48) {}
    //0x48-0x4b : credits labels
    else if (id < 0x4c) {
        BitUnpack(unk08F1BCBC[id - 0x48], dst, numTiles);
    }
    //0x4c-0x5F : giegue ship and drain
    else if (id < 0x60) { }
    //0x60-0x61 : main party
    else if (id < 0x62) {
        BitUnpack(characters1_gfx, dst, numTiles);
    }
    //0x62-0x75 : area based npcs
    else if (id < 0x76) {
        BitUnpack(characters_gfxs[(id - 0x62)/2], dst, numTiles);
    }
    else if (id < 0xD0) { }
    //0xD0-0xD7 : credits characters and dad
    else if (id < 0xD8) {
        BitUnpack(unk08F1BCBC[id - 0xCC], dst, numTiles);
    }
}

void sub_8F0AAA4(u8 a1) {
    u8 i;

    sub_8F016EC();
    for (i = 0; i < 16; i++){
        if (gObjectMemory[i].Type != 0) {
            if (a1 != 0) {
                gObjectMemory[i].X += gObjectMemory[i].vel_x;
                gObjectMemory[i].Y += gObjectMemory[i].vel_y;
            }
            if (0x40 & gObjectMemory[i].field_2) {
                gUnknown_030007B8 = 0;
            } else {
                gUnknown_030007B8 = 0x400;
            }
            sub_8F01700(gObjectMemory[i].field_16, 0x3F & gObjectMemory[i].field_2, gObjectMemory[i].X - 8, gObjectMemory[i].Y - 24);
        }
    }
    sub_8F0191C();
    DmaCopy32(3, gSpriteBuffer, OAM, 0x400);
    DmaCopy32(3, (OamData* ) gBg0TilemapBuffer, BG_SCREEN_ADDR(0), 0x800);
}

void sub_8F0AB60(void) {
    u8 i;

    REG_BLDY = 0;
    REG_BLDCNT = 0xFF;

    for (i = 0; i <= 0x10U; i++){
        REG_BLDY = i;
        DelayByAmount(5);
    }
    DmaFill32(3, 0, BG_SCREEN_ADDR(2), 0x800);
    sub_8F0B040();
    sub_8F019B8();
    for (i = 0; i < 16; i++){
        gObjectMemory[i].Type = 0;
    }
}

void sub_8F0ABD8(void) {
    vu16 ie;
    vu16 dispcnt;
    vu16 soundcnt_lo;

    SoundVSyncOff_rev01();
    soundcnt_lo = REG_SOUNDCNT_L;
    REG_SOUNDCNT_L = 0;
    while (~REG_KEYINPUT & KEYS_MASK){
    }
    dispcnt = REG_DISPCNT;
    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    REG_KEYCNT = KEY_AND_INTR | L_BUTTON | R_BUTTON | SELECT_BUTTON;
    REG_IME = 0;
    ie = REG_IE;
    REG_IE = INTR_FLAG_KEYPAD | INTR_FLAG_GAMEPAK;
    REG_IME = 1;
    SoundBiasReset();
    __asm__("svc #0x3");
    SoundBiasSet();
    REG_IME = 0;
    REG_IE = ie;
    REG_IME = 1;
    VBlankIntrWait();
    REG_DISPCNT = dispcnt;
    while (~REG_KEYINPUT & KEYS_MASK) {
    }
    SoundVSyncOn_rev01();
    REG_SOUNDCNT_L = soundcnt_lo;
}

void sub_8F0ACB8(void) {
    SoundVSyncOff_rev01();
    REG_SOUNDCNT_L = 0;
    REG_DISPCNT = 0x80;
    while ((KEYS_MASK & ~REG_KEYINPUT) == 0xF) {
    }
    SoftResetRom(0xE0);
}

void M1_SoftReset(void) {
    SoundVSyncOff_rev01();
    REG_SOUNDCNT_L = 0;
    sub_8F15384();
}
