#include "gba/gba.h"
#include "definitions.h"
#include "functions.h"
#include "variables.h"

NAKED
void sub_8F01020(u16 *a1, u16 *a2, u16 a3, u8 a4)
{
    asm(".include \"asm/non_matching/code/sub_8F01020.s\"");
}

NAKED
void DarkenPalette(u16 *palette_data, u16 dest_color, u16 color_count, u8 a4)
{
    asm(".include \"asm/non_matching/code/DarkenPalette.s\"");
}

void sub_8F011E4(u8 a1) {
    //isnt this just a1 & 0xff
    *(u16* )PLTT = gNESPalette[a1];
    REG_DISPCNT = 0x1100;
}

void sub_8F01208(void) {
    *(u16* )PLTT = 0;
    REG_DISPCNT = 0x1500;
}

NAKED
u8 *sub_8F01220(int a1, u16 a2)
{
    asm(".include \"asm/non_matching/code/sub_8F01220.s\"");
}

NAKED
void ResetVariablesUponEnteringTown()
{
    asm(".include \"asm/non_matching/code/ResetVariablesUponEnteringTown.s\"");
}

NAKED
void sub_8F01388()
{
    asm(".include \"asm/non_matching/code/sub_8F01388.s\"");
}

NAKED
void DrawBg2Tilemap()
{
    #ifdef NDS_VERSION
    asm(".include \"asm/non_matching/code/DrawBg2Tilemap_nds.s\"");
    #else
    asm(".include \"asm/non_matching/code/DrawBg2Tilemap_gba.s\"");
    #endif
}

void sub_8F016EC(void) {
    gUnknown_03001D34 = gUnknown_03003180 = 0;
}

NAKED
u32 sub_8F01700(u16 a1, u8 a2, s16 a3, s16 a4)
{
    asm(".include \"asm/non_matching/code/sub_8F01700.s\"");
}

NAKED
void sub_8F0191C()
{
    #ifdef NDS_VERSION
    asm(".include \"asm/non_matching/code/sub_8F0191C_nds.s\"");
    #else
    asm(".include \"asm/non_matching/code/sub_8F0191C_gba.s\"");
    #endif
}

void sub_8F019B8(void) {
    sub_8F016EC();
    sub_8F0191C();
    DmaCopy32(3, gSpriteBuffer, 0x07000000,  0x400);
}

NAKED
s32 sub_8F019E4(u8 run)
{
    asm(".include \"asm/non_matching/code/sub_8F019E4.s\"");
}

NAKED
s32 sub_8F01CBC(u16 a1, u16 a2)
{
    asm(".include \"asm/non_matching/code/sub_8F01CBC.s\"");
}

NAKED
u32 sub_8F02020(u16 a1, u16 a2)
{
    asm(".include \"asm/non_matching/code/sub_8F02020.s\"");
}

u32 Random(void) {
    gUnknown_030007FC *= 0x1C97D;
    gUnknown_030007FC += 0x21F6ED;
    return gUnknown_030007FC;
}

u16 sub_8F021C4(u16 a1) {
    s32 var_r0 = ((a1 * ((s32) Random() >> 16)) / 0x1fffc) + a1;
    if (var_r0 > 0xFFFF) {
        var_r0 = 0xFFFF;
    }
    return var_r0;
}

NAKED
s32 sub_8F021F8(u16 a1, u16 a2)
{
    asm(".include \"asm/non_matching/code/sub_8F021F8.s\"");
}

NAKED
s32 sub_8F02470(u16 a1, int a2)
{
    asm(".include \"asm/non_matching/code/sub_8F02470.s\"");
}

NAKED
s32 sub_8F0253C(u16 a1, u16 a2)
{
    asm(".include \"asm/non_matching/code/sub_8F0253C.s\"");
}

NAKED
s32 sub_8F026DC(u16 a1, u16 a2)
{
    asm(".include \"asm/non_matching/code/sub_8F026DC.s\"");
}

NAKED
void LoadMapObjects()
{
    asm(".include \"asm/non_matching/code/LoadMapObjects.s\"");
}

NAKED
void sub_8F029E0()
{
    asm(".include \"asm/non_matching/code/sub_8F029E0.s\"");
}
extern void (*gUnknown_08F1B6B8[])(void);

void sub_8F02AFC(u8 a1) {
    u8 i;
    u16 x, y;

    gUnknown_030007C8 = a1;
    i = 0;
    gUnknown_03000784 = gObjectMemory;
    while (gUnknown_03000784->Type != 0) {
        x = (gUnknown_03000784->X - gUnknown_03000788) + 0x80;
        y = (gUnknown_03000784->Y - gUnknown_03001508) + 0xC0;
        if ((x <= 0x047F) && (y <= 0x37F)) {
            gUnknown_03000784->Type &= 0x7F;
            gUnknown_03000780 = gUnknown_030007CC + i;
            gUnknown_08F1B6B8[gUnknown_03000784->Type]();
        } else {
            gUnknown_03000784->Type |= 0x80;
        }
        i++;
        if (i > 0x27) {
            break;
        }
        gUnknown_03000784 = &gObjectMemory[i];
    }
}


NAKED
void sub_8F02BBC(u8 a1)
{
    asm(".include \"asm/non_matching/code/sub_8F02BBC.s\"");
}

NAKED
void sub_8F0302C(u8 a1)
{
    asm(".include \"asm/non_matching/code/sub_8F0302C.s\"");
}

void sub_8F03128(void) {
    sObjectMemory* temp_r5 = gUnknown_03000784;
    sub_8F016EC();
    sub_8F02BBC(1);
    sub_8F02AFC(1);
    sub_8F0191C();
    sub_8F040E0();
    DmaCopy32(3, gSpriteBuffer, 0x07000000, 0x400);
    gUnknown_03000784 = temp_r5;
}

NAKED
s32 sub_8F03170()
{
    asm(".include \"asm/non_matching/code/sub_8F03170.s\"");
}

NAKED
u32 sub_8F031FC()
{
    asm(".include \"asm/non_matching/code/sub_8F031FC.s\"");
}

NAKED
void sub_8F032D0()
{
    asm(".include \"asm/non_matching/code/sub_8F032D0.s\"");
}

