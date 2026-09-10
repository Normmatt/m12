#include "gba/gba.h"
#include "m4a.h"
#include "definitions.h"

void sub_8F033FC() {}

void sub_8F03400()
{
    u8 val = (gUnknown_03000784->ScriptPtr[2] & 0x3F);
    if ( val == gUnknown_030007A4 )
    {
        gFade_Type = 0;
        sub_8F032D0();
    }
}

void sub_8F03430()
{
    u8 val = (gUnknown_03000784->ScriptPtr[2] & 0x3F);
    if ( val == gUnknown_030007A4 )
    {
        gFade_Type = 1;
        sub_8F032D0();
    }
}

//TODO: Is this actually how it was written?
void sub_8F03460()
{
    s32 v0;
    u32 v1;
    u32 v2;

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

NAKED
void sub_8F0354C()
{
    asm(".include \"asm/non_matching/code1/sub_8F0354C.s\"");
}

void sub_8F037BC() {}

void sub_8F037C0(void) {
    sub_8F03F3C(0x74);
    sub_8F031FC();
}

void sub_8F037D0(void) {
    sub_8F03F3C(0x74);
    sub_8F031FC();
}

void sub_8F037E0(void) {
    sub_8F03F3C(0x74);
    if ((gUnknown_030007C8 == 0) && !(7 & gUnknown_03000780)) {
        gUnknown_03000784->field_3++;
    }
    sub_8F031FC();
}

void sub_8F0381C() {}

void sub_8F03820(void) {
    sub_8F03F3C(0x74);
    sub_8F031FC();
}

void sub_8F03830(void) {
    sub_8F03F3C(0x74);
    sub_8F031FC();
}

void sub_8F03840() {}

void sub_8F03844(void) {
    sub_8F031FC();
}

void sub_8F03850(void) {
    s32 temp_r0_2;
    u16 x_store, y_store;
    u8 temp_r4;

    if (gUnknown_030007C8 == 0) {
        temp_r4 = 7 & gUnknown_03000780;
        if (temp_r4 == 0) {
            switch(Random() >> 0x1B){
                case 0:
                    gUnknown_03000784->Direction = DIR_UP;
                    gUnknown_03000784->field_3++;
                    break;
                case 1:
                    gUnknown_03000784->Direction = DIR_RIGHT;
                    gUnknown_03000784->field_3++;
                    break;
                case 2:
                    gUnknown_03000784->Direction = DIR_DOWN;
                    gUnknown_03000784->field_3++;
                    break;
                case 3:
                    gUnknown_03000784->Direction = DIR_LEFT;
                    gUnknown_03000784->field_3++;
                    break;
                default:
                    gUnknown_03000784->Direction |= 0x80;
                    break;
            }
        }
        if (!(0x80 & gUnknown_03000784->Direction)) {
            x_store = gUnknown_03000784->X + (s8) gUnknown_08F1B630[7 & gUnknown_03000784->Direction];
            y_store = gUnknown_03000784->Y + (s8) gUnknown_08F1B648[7 & gUnknown_03000784->Direction];
            temp_r0_2 = sub_8F02470(x_store, y_store);
            if (temp_r0_2 == 0) {
                gUnknown_03000784->X = x_store;
                gUnknown_03000784->Y = y_store;
            } else if ((temp_r0_2 == 0x309) && (sub_8F026DC(gUnknown_03000784->X, gUnknown_03000784->Y) != 0)) {
                gUnknown_03000784->X = x_store;
                gUnknown_03000784->Y = y_store;
            }
        }
    }
    sub_8F031FC();
}

void sub_8F03960(void) {
    s32 temp_r0_2;
    u16 x_store, y_store;
    u8 temp_r4;

    if (gUnknown_030007C8 == 0) {
        temp_r4 = 7 & gUnknown_03000780;
        if (temp_r4 == 0) {
            switch(Random() >> 0x1D){
                case 0:
                    gUnknown_03000784->Direction = DIR_UP;
                    gUnknown_03000784->field_3++;
                    break;
                case 1:
                    gUnknown_03000784->Direction = DIR_RIGHT;
                    gUnknown_03000784->field_3++;
                    break;
                case 2:
                    gUnknown_03000784->Direction = DIR_DOWN;
                    gUnknown_03000784->field_3++;
                    break;
                case 3:
                    gUnknown_03000784->Direction = DIR_LEFT;
                    gUnknown_03000784->field_3++;
                    break;
                default:
                    gUnknown_03000784->Direction |= 0x80;
                    break;
            }
        }
        if (!(0x80 & gUnknown_03000784->Direction)) {
            x_store = gUnknown_03000784->X + (s8) gUnknown_08F1B630[7 & gUnknown_03000784->Direction];
            y_store = gUnknown_03000784->Y + (s8) gUnknown_08F1B648[7 & gUnknown_03000784->Direction];
            temp_r0_2 = sub_8F02470(x_store, y_store);
            if (temp_r0_2 == 0) {
                gUnknown_03000784->X = x_store;
                gUnknown_03000784->Y = y_store;
            } else if ((temp_r0_2 == 0x309) && (sub_8F026DC(gUnknown_03000784->X, gUnknown_03000784->Y) != 0)) {
                gUnknown_03000784->X = x_store;
                gUnknown_03000784->Y = y_store;
            }
        }
    }
    sub_8F031FC();
}

void sub_8F03A70(void) {
    u8 temp_r4;
    if (gUnknown_030007C8 == 0) {
        temp_r4 = 7 & gUnknown_03000780;
        if (temp_r4 == 0) {
            switch (Random() >> 29) {
            case 0:
                gUnknown_03000784->Direction = DIR_UP;
                gUnknown_03000784->field_3++;
                break;
            case 1:
                gUnknown_03000784->Direction = DIR_RIGHT;
                gUnknown_03000784->field_3++;
                break;
            case 2:
                gUnknown_03000784->Direction = DIR_DOWN;
                gUnknown_03000784->field_3++;
                break;
            case 3:
                gUnknown_03000784->Direction = DIR_LEFT;
                gUnknown_03000784->field_3++;
                break;
            }
        }
    }
    sub_8F031FC();
}

void sub_8F03AF0(void) {
    if (sub_8F03170()) {
        sub_8F03844();
    }
}

void sub_8F03B04(void) {
    if (sub_8F03170()) {
        sub_8F03850();
    }
}

void sub_8F03B18(void) {
    if (sub_8F03170()) {
        sub_8F03960();
    }
}

void sub_8F03B2C(void) {
    if (sub_8F03170()) {
        sub_8F03A70();
    }
}

void sub_8F03B40(void) {
    u8 temp_r4 = gUnknown_03000784->Direction;
    gUnknown_03000784->Direction &= 0xF8;
    sub_8F031FC();
    gUnknown_03000784->Direction = temp_r4;
}

void sub_8F03B60(void) {
    if (sub_8F03170()) {
        sub_8F03B40();
    }
}

void sub_8F03B74(void) {
    u16 var_r6;
    u8 temp_r4;
    u8 temp_r5;
    s16 x,y;

    temp_r5 = gUnknown_03000784->ScriptPtr[6];
    temp_r4 = gUnknown_03000784->ScriptPtr[7];
    var_r6 = (gUnknown_03000784->ScriptPtr[5] << 8) | gUnknown_03000784->ScriptPtr[4];
    if (((gUnknown_030007C8 == 0) || (temp_r4 != 0x49) || (gUnknown_0300150C == NULL) || (gUnknown_0300150C == gUnknown_03000784))
        && ((gGameInfo.present_flags[((temp_r5 & 0x80) >> 2) + (temp_r4 >> 3)] << (temp_r4 & 7)) & 0x80)) {
        var_r6 += 4;
    }
    x = (gUnknown_03000784->X - (0xFFFC & gUnknown_03000788)) - 0x40;
    y = (gUnknown_03000784->Y - (0xFFFC & gUnknown_03001508)) - 0xA0;
    sub_8F01700(var_r6, gUnknown_03000784->field_2,
                x>>2,
                y>>2
   );

}

void sub_8F03C20(void) {
    u16 x_store, y_store;
    u32 rand;

    if (sub_8F03170() != 0) {
        if ((gUnknown_030007C8 == 0) && !(3 & gUnknown_03000780)) {
            x_store = gUnknown_03000784->X;
            y_store = gUnknown_03000784->Y;
            if (8 & y_store) {
                y_store += 8;
            }
            if (4 & gUnknown_03000780) {
                rand = Random() >> 0x1D;
                if (!(0xFE & rand)) {
                    gUnknown_03000784->field_3 += 1;
                    if (rand & 1) {
                        x_store ^= 8;
                    } else {
                        y_store -= 8;
                    }
                }
            }
            if (sub_8F0253C(x_store, y_store) == 0) {
                gUnknown_03000784->X = x_store;
                gUnknown_03000784->Y = y_store;
            }
        }
        sub_8F031FC();
    }
}

void sub_8F03CBC(void) {
    u32 temp_r0;

    if (gUnknown_03000784->bitfield1 == 0) {
        gUnknown_03000784->Type |= 0x80;
        return;
    }
    if (gUnknown_030007C8 == 0) {
        if (gUnknown_03000818 == 0) {
            gUnknown_03000818 = 0xF8;
            gUnknown_03000784->Direction ^= 4;
        }
        if (!(3 & gUnknown_03000780)) {
            gUnknown_03000784->field_3 += 1;
        }
        gUnknown_03000784->X += (s8) gUnknown_08F1B630[gUnknown_03000784->Direction] * 2;
        gUnknown_03000784->Y += (s8) gUnknown_08F1B648[gUnknown_03000784->Direction] * 2;
    }
    temp_r0 = sub_8F031FC();
    if (temp_r0 == 0) {
        gUnknown_03000818 = temp_r0;
        gUnknown_03000784->bitfield1 = temp_r0;
    }
}

void sub_8F03D64(void) {
    u16 x_store, y_store;
    if (sub_8F03170() == 0) {
        return;
    }
    if (gUnknown_030007C8 == 0) {
        x_store = gUnknown_03000784->X;
        y_store = gUnknown_03000784->Y;
        if (!(3 & gUnknown_03000780) && (0x80 & gUnknown_03000784->field_19)) {
            x_store &= 0xFFF7;
            y_store &= 0xFFF7;
        }
        if (!(7 & gUnknown_03000780)) {
            switch (Random() >> 0x1D) {
            case 0:
                gUnknown_03000784->field_19 = 0;
                break;
            case 1:
                gUnknown_03000784->field_19 = 2;
                break;
            case 2:
                gUnknown_03000784->field_19 = 4;
                break;
            case 3:
                gUnknown_03000784->field_19 = 6;
                break;
            case 4:
            case 5:
                y_store |= 8;
                gUnknown_03000784->field_19 = 0x80 | gUnknown_03000784->field_19;
                break;
            default:
                x_store |= 8;
                gUnknown_03000784->field_19 = 0x80 | gUnknown_03000784->field_19;
                break;
            }
        }
        if (!(0x80 & gUnknown_03000784->field_19)) {
            x_store += (s8) gUnknown_08F1B630[7 & gUnknown_03000784->field_19];
            y_store += (s8) gUnknown_08F1B648[7 & gUnknown_03000784->field_19];
        }
        if (sub_8F02470(x_store, y_store) == 0) {
            gUnknown_03000784->X = x_store;
            gUnknown_03000784->Y = y_store;
        }
    }
    sub_8F031FC();
}

void sub_8F03EA0(void) {
    if (sub_8F03170()) {
        sub_8F037E0();
    }
}

void SetFlag(void) {
    u8 flag_id = *(gUnknown_03000784->ScriptPtr+4);
    gGameInfo.Flags[flag_id >> 3] |= 0x80 >> (flag_id & 7);
}

void ClearFlag(void) {
    u8 flag_id = *(gUnknown_03000784->ScriptPtr+4);
    gGameInfo.Flags[flag_id >> 3] &= ~(0x80 >> (flag_id & 7));
}

void sub_8F03F10(void) {
    if (sub_8F03170()) {
        sub_8F03F3C(0x72);
        sub_8F031FC();
    }
}

void sub_8F03F28(void) {
    if (sub_8F03170()) {
        sub_8F037D0();
    }
}
