#include "gba/gba.h"
#include "m4a.h"
#include "definitions.h"

void sub_8F033FC()
{
}

void sub_8F03400()
{
    u8 val = (gUnknown_03000784->ScriptPtr[2] & 0x3F);
    if ( val == gUnknown_030007A4 )
    {
        gUnknown_030007E8 = 0;
        sub_8F032D0();
    }
}

void sub_8F03430()
{
    u8 val = (gUnknown_03000784->ScriptPtr[2] & 0x3F);
    if ( val == gUnknown_030007A4 )
    {
        gUnknown_030007E8 = 1;
        sub_8F032D0();
    }
}

//TODO: Is this actually how it was written?
void sub_8F03460()
{
    s32 v0;
    u32 v1;
    u32 v2;
    u32 val;

    union
    {
        u8 b[4];
        u16 w[2];
        u32 val;
    } temp;

    if ( !gUnknown_030007C8 && !(v0=gUnknown_030007A0) && gUnknown_03000818 <= 0xFu)
    {
        u16 x, y;
        x = gUnknown_03000788 + FIXED_PT_UP(15);
        y = gUnknown_03001508 + FIXED_PT_UP(10);
        
        x -= 16 + gUnknown_03000784->X;
        y -= gUnknown_03000784->Y;
        if( (x <= 0x1F) && (y <= 0x1F) )
        {
            gUnknown_030007A0 = -1;
            0[temp.b] = gUnknown_03000784->ScriptPtr[4];
            1[temp.b] = gUnknown_03000784->ScriptPtr[5];
            2[temp.b] = gUnknown_03000784->ScriptPtr[6];
            3[temp.b] = gUnknown_03000784->ScriptPtr[7];

            v1 = gPlayerX = (*(u32*)(&temp.b[0]) & ~63);
            v1 += 0xFE40; //FIXED_PT_UP(15);
            gPlayerX = FIXED_PT_MASK(*(u32*)(&temp.b[0]),26,26) + v1;

            v2 = gPlayerY = FIXED_PT_MASK2(*(u32*)(&temp.b[0]),22,6);
            v2 += 0xFEC0; //FIXED_PT_UP(10);
            gPlayerY = FIXED_PT_MASK(*(u32*)(&temp.b[0]),10,26) + v2;

            gUnknown_03000840 = gUnknown_030034A8 = v0;
        }
    }
}





