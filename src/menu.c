#include "gba/gba.h"
#include "m4a.h"
#include "definitions.h"

void sub_8F03F3C(u8 a1)
{
    if ( gUnknown_030007D0 != a1 )
    {
        gUnknown_030007D0 = a1;
        BitUnpack(gUnknown_08F6453C[(a1 - 98) / 2], (void *)0x06001000+OAM_VRAM_OFFSET, 128);
    }
}

#if NON_MATCHING
//Non-matching
void sub_8F03F74()
{
    struct_3003190 *gameInfo;
    //struct_off_3000784 *v0;
    u32 selectedItemId;
    u32 itemId;
    u32 eventId;
    u8 *v3;
    u8 v4;
    u8 v5;
    u8 v6;
    u8 idx;
    u8 *ptr;

    //v0 = gUnknown_03000784;
    selectedItemId = gUnknown_03000784->ScriptPtr[6];
    eventId = gUnknown_03000784->ScriptPtr[7];
    //gameInfo = &gGameInfo;
    idx = ((u8)(((selectedItemId & 0x80u) << 24) >> 26)) + (eventId / 8);
    if ( (gGameInfo.field_220[idx] << (eventId & 7)) & 0x80 )
    {
        DrawTextWithId(0x3A1u);                 // "@It's empty...{BREAK}"
    }
    else
    {
        gGameInfo.field_220[idx] |= 128 >> (eventId & 7);
        PlaySfxById1(0xAu);
        gUnknown_0300150C = gUnknown_03000784;
        sub_8F03128();
        gUnknown_0300150C = 0;
        DrawTextWithId(0x399u);                 // "@{0x03}{0x3E} opened the present.{BREAK}"
        itemId = (selectedItemId & 0x7F);
        if ( itemId )
        {
            SelectItem(itemId);
            gUnknown_030007D8 = -1;
            DrawTextWithId(0x39Au);             // "@Found {0x03}{0x1D}.{BREAK}"
            for(v4 = 0; v4 < 4; ++v4)
            {
                v5 = gGameInfo.PlayerInfo.CharactersInParty[v4];
                if ( (u8)(v5-1) < 5 )
                {
                    ptr = gGameInfo.PlayerInfo.CharacterInfo[(v5-1)].Inventory;
                    for(v6 = 0; v6 < 8; ++v6)
                    {
                        if(!ptr[v6])
                        {
                            gCurrentCharacterId = v5;
                            ptr[v6] = gCurrentItemId;
                            DrawTextWithId(0x39Bu);             // "@{0x03}{0x16}{0x03}{0x17} took the{BREAK}{0x03}{0x1D}.{BREAK}"
                            PlaySfxById1(6u);
                            gUnknown_03003170 |= 1u;
                            return;
                        }
                    }
                }
            }
            gGameInfo.field_220[idx] &= ~(128 >> (eventId & 7));
            DrawTextWithId(0x39Du);     // "@But you can't hold any{BREAK}more stuff.{BREAK}"
        }
        DrawTextWithId(0x3A1u);             // "@It's empty...{BREAK}"
    }
    gUnknown_03003170 |= 1u;
}
#else
NAKED
void sub_8F03F74()
{
    asm(".include \"asm/non_matching/menu/sub_8F03F74.s\"");
}
#endif

void sub_8F040E0()
{
    u16 keys;

    keys = ~REG_KEYINPUT & 0x3FF;
    if ( keys == (START_BUTTON|SELECT_BUTTON|B_BUTTON|A_BUTTON) )
    {
        sub_8F0ACB8();
    }
    if ( keys == (L_BUTTON|R_BUTTON|SELECT_BUTTON) )
    {
        sub_8F0ABD8();
    }
    ++gUnknown_030007CC;
    if ( keys )
    {
        ++gUnknown_03002964;
        gUnknown_030007C4 = 0;
    }
    else if ( gUnknown_030007C4 <= 10799u )
    {
        ++gUnknown_03002964;
        ++gUnknown_030007C4;
    }
    m4aSoundMain();
    VBlankIntrWait();
}

void DelayByAmount(u32 delay)
{
    while(--delay != -1)
    {
        sub_8F040E0();
        UpdateInput();
    }
}

void UpdateBg0Tilemap()
{
    sub_8F040E0();
    DmaCopy32(3, gBg0TilemapBuffer, 0x6000000, 0x800);
    UpdateInput();
}

void WaitForAnyButtonPress()
{
    do
    {
        if ( gUnknown_030007A8 )
        {
            break;
        }
        UpdateBg0Tilemap();
    }
    while ( !(gKeysDown & (L_BUTTON|R_BUTTON|DPAD_DOWN|DPAD_UP|DPAD_LEFT|DPAD_RIGHT|START_BUTTON|SELECT_BUTTON|B_BUTTON|A_BUTTON)) );
    gUnknown_030007A8 = 0;
}

void WaitForActionButtonPress()
{
    do
    {
        if ( gUnknown_030007A8 )
        {
            break;
        }
        UpdateBg0Tilemap();
    }
    while ( !(gKeysDown & (L_BUTTON|SELECT_BUTTON|B_BUTTON|A_BUTTON)) );
    gUnknown_030007A8 = 0;
}

void OpenCommandMenu()
{
    gUnknown_03001504 = 0;  
    switch ( HandleCommandMenu(0) )
    {
        case 1:                                 // Talk
            TalkAction();
            if ( !gUnknown_03003170 )           // is there an interactable NPC in range
            {
                DrawTextWithId(0x385u);         // "@Who are you talking to?{BREAK}"
            }
            WaitForActionButtonPress();
            break;
        case 2:                                 // Check
            CheckAction();
            break;
        case 3:                                 // PSI
            PSIMenu();
            break;
        case 4:                                 // Goods
            GoodsMenu();
            break;
        case 5:
            HandleStatusMenu();
            break;
        case 6:                                 // Map
            HandleMap();
            break;
        default:
            break;
    }
    sub_8F0B040();
}

void HandleLButtonPress()
{
    HandleCommandMenu(1u);                      // Talk
    TalkAction();
    // Is there an interactable NPC in range
    // WaitForActionButton
    // Otherwise do a Check command.
    if ( !gUnknown_03003170 )
    {
        HandleCommandMenu(2u);                  // Check
        CheckAction();
    }
    else
    {
        WaitForActionButtonPress();
    }
    sub_8F0B040();
}

//should match
void TalkAction()
{
    s8 i;

    u16 v1 = (gUnknown_03000788 + 4 * (gUnknown_08F1B670[gUnknown_030007A4 / 2] + 0x78));
    u16 v2 = (gUnknown_03001508 + 4 * (gUnknown_08F1B674[gUnknown_030007A4 / 2] + 0x58));

    s8 hasRunOnce = 0;

LOOP:
    {
        gUnknown_03003170 = 0;
        i = 0;
        gUnknown_03000784 = &gUnknown_03001D40[i];
        while( 1 )
        {
            if ( !gUnknown_03000784->Type )
            {
                break;
            }
            
            if ( !(gUnknown_03000784->Type & 0x80) && (gUnknown_03000784->field_14 & 0x40))
            {
                u16 x1 = v1 - gUnknown_03000784->X;
                u16 y1 = v2 - gUnknown_03000784->Y;
                if(x1 < 64 && y1 < 64)
                {
                    if ( gUnknown_03000784->field_14 & 0x20 )
                    {
                        gUnknown_03000784->Direction = gUnknown_030007A4 ^ 4;
                    }
                    sub_8F03128();
                    ExecuteScript(0xAu);
                    if ( gUnknown_03003170 )
                    {
                        break;
                    }
                }
            }
            i++;
            if ( i > 39 )
            {
                break;
            }

            gUnknown_03000784 = &gUnknown_03001D40[i];
        }
        if ( !(hasRunOnce || gUnknown_03003170 || gUnknown_030007A4 || !sub_8F01CBC(v1, v2)) )
        {
            v2 -= 32;
            hasRunOnce = 1;
            goto LOOP;
        }
    }
}

#if NON_MATCHING
//reg alloc
void CheckAction()
{
    s8 i;

    u16 v1 = (gUnknown_03000788 + 4 * (gUnknown_08F1B670[gUnknown_030007A4 / 2] + 0x78));
    u16 v2 = (gUnknown_03001508 + 4 * (gUnknown_08F1B674[gUnknown_030007A4 / 2] + 0x58));

    s8 hasRunOnce = 0;

LOOP:
    {
        gUnknown_03003170 = 0;
        i = 0;
        gUnknown_03000784 = &gUnknown_03001D40[i];
        while( 1 )
        {
            if ( !gUnknown_03000784->Type )
            {
                break;
            }
            
            if ( !(gUnknown_03000784->Type & 0x80)
             && ((gUnknown_03000784->Type == 0x20) || (gUnknown_03000784->field_14 & 0x40)))
            {
                u16 x1 = v1 - gUnknown_03000784->X;
                u16 y1 = v2 - gUnknown_03000784->Y;
                if(x1 < 64 && y1 < 64)
                {
                    if ( gUnknown_03000784->Type != 0x20 )
                    {
                        ExecuteScript(0xBu);
                    }
                    else
                    {
                        sub_8F03F74();
                    }
                    if ( gUnknown_03003170 )
                    {
                        break;
                    }
                }
            }
            i++;
            if ( i > 39 )
            {
                break;
            }

            gUnknown_03000784 = &gUnknown_03001D40[i];
        }
        if ( !(hasRunOnce || gUnknown_03003170 || gUnknown_030007A4 || !sub_8F01CBC(v1, v2)) )
        {
            v2 -= 32;
            hasRunOnce = 1;
            goto LOOP;
        }
    }

    if ( !gUnknown_03003170 )
    {
        i = 0;
        gUnknown_03000784 = &gUnknown_03001D40[i];
        while( 1 )
        {
            if ( !gUnknown_03000784->Type )
            {
                break;
            }
            
            if ( !(gUnknown_03000784->Type & 0x80) && (gUnknown_03000784->field_14 & 0x40))
            {
                u16 x1 = gUnknown_03000784->X - gUnknown_03000788 + 64;
                u16 y1 = gUnknown_03000784->Y - gUnknown_03001508 + 64; //reg alloc
                if(x1 <= 0x400 && y1 <= 0x2C0) //reg alloc
                {
                    ExecuteScript(0x34u);
                }
            }
            i++;
            if ( i > 39 )
            {
                break;
            }

            gUnknown_03000784 = &gUnknown_03001D40[i];
        }
        if ( !gUnknown_03003170 )
        {
            if ( gUnknown_03002440 )
            {
                DrawTextWithId(0x6E0u);         // "@Danger seems to be lurking{BREAK}nearby...{BREAK} "
            }
            else if ( gGameInfo.Flags[31] & 0x80 )
            {
                DrawTextWithId(0x6E1u);         // "@Things are going crazy!{BREAK} "
            }
            else
            {
                DrawTextWithId(0x387u);         // "@No problem here.{BREAK}"
            }
        }
    }

    WaitForActionButtonPress();
}
#else
NAKED
void CheckAction()
{
    asm(".include \"asm/non_matching/menu/CheckAction.s\"");
}
#endif\

void PSIMenu()
{
    s32 v0;
    sPsiData v1;
    sPsiData *psi_data;
    u16 curPP;

LOOP:
    {
        gUnknown_03001504 = 0;
        v0 = SelectPSI();
        if ( v0 <= 0 )
        {
            ++gUnknown_03001504;
        }
        else
        {
            if ( gGameInfo.PlayerInfo.CharacterInfo[gUnknown_03003174 - 1].Condition & CONDITION_UNCONSCIOUS )
            {
                DrawTextWithId(0x6D7u);             // "@{0x03}{0x1A} is unconscious.{BREAK}"
                WaitForActionButtonPress();
            }
            else
            {
                gCurrentItemId = v0 - 64;

                psi_data = &gUnknown_08F5C51C[v0];
                curPP = gGameInfo.PlayerInfo.CharacterInfo[gUnknown_03003174 - 1].CurrentPP;
                v1 = *psi_data;
                if ( psi_data->PPRequired <= curPP)
                {
                    gItemEffectHandlers[v1.ActionNonBattle]();
                    if ( gUnknown_03001504 )
                    {
                        goto LOOP;
                    }
                }
                else
                {
                    DrawTextWithId(0x6C8u);                     // "@You don't have enough power{BREAK}left to try that.{BREAK}"
                }
                WaitForActionButtonPress();
            }
        }
    }
}

void GoodsMenu()
{
    s32 v0;
    u8 *v1;
    u8 v2;

LOOP:
    gUnknown_03001504 = 0;
    v0 = PickAnItemFromInventory();
    if ( v0 <= 0 )
    {
        ++gUnknown_03001504;
    }
    else
    {
        SelectItem(v0);
        gCurrentCharacterId = gUnknown_03003174;
        while (1)
        {
            gUnknown_03001504 = 0;
            switch ( HandleGoodsMenuInput() )
            {
                case 1:                     // Use
                    Goods_Use();
                    break;
                case 2:                     // Eat
                    Goods_Eat();
                    break;
                case 3:                     // Give
                    Goods_Give();
                    break;
                case 4:                     // Drop
                    Goods_Drop();
                    break;
                case 5:                     // Info
                {
                    DrawTextWithId(gCurrentItemId + 1800);
                    WaitForActionButtonPress();
                    if ( (gKeysDown & (SELECT_BUTTON|B_BUTTON)) )
                    {
                        gTextPlaySfx = 0;
                        continue;
                    }
                    break;
                }
                default:
                    goto LOOP;
            }
            if (!gUnknown_03001504)
                break;
        }
    }
}

void sub_8F04778()
{
    sub_8F03128();
    gUnknown_03000784 = gUnknown_03000850;
    gUnknown_03000850 = NULL;
    gUnknown_03003170 = 0;
    ExecuteScript(0x35u);
    if ( gUnknown_03003170 )
    {
        WaitForActionButtonPress();
        sub_8F0B040();
    }
}

void sub_8F047B4()
{
    gUnknown_03003170 = 0;
    ExecuteScript(0x40u);
    if ( gUnknown_03003170 )
    {
        WaitForActionButtonPress();
        sub_8F0B040();
    }
}

/*void Goods_Use()
{
}

void Goods_Eat()
{
}

void Goods_Give()
{
}

void Goods_Drop()
{
}

s32 RemoveItemFromInventory(u8 character)
{
}

void SelectItem(u8 a1)
{
}

s32 GetPositionOfCurrentItemFromInventoryOrCloset(u8 checkInventory)
{
}*/

