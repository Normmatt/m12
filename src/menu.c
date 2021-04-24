#include "gba/gba.h"
#include "m4a.h"
#include "definitions.h"

void sub_8F03F3C(u8 a1)
{
    if ( gUnknown_030007D0 != a1 )
    {
        gUnknown_030007D0 = a1;
        BitUnpack(gUnknown_08F6453C[(a1 - 98) / 2], (void *)VRAM+0x1000+OAM_VRAM_OFFSET, 128);
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
    DmaCopy32(3, gBg0TilemapBuffer, VRAM, 0x800);
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

void CheckAction()
{
    s8 i;

    u16 worldX = (gUnknown_03000788 + 4 * (gUnknown_08F1B670[gUnknown_030007A4 / 2] + 0x78));
    u16 worldY = (gUnknown_03001508 + 4 * (gUnknown_08F1B674[gUnknown_030007A4 / 2] + 0x58));

    s8 hasRunOnce = 0;

LOOP:
    {
        gUnknown_03003170 = 0;
        for(i=0; i<40; i++)
        {
            gUnknown_03000784 = &gUnknown_03001D40[i];

            if ( !gUnknown_03000784->Type )
            {
                break;
            }
            
            if ( !(gUnknown_03000784->Type & 0x80)
             && ((gUnknown_03000784->Type == 0x20) || (gUnknown_03000784->field_14 & 0x40)))
            {
                u16 x1 = worldX - gUnknown_03000784->X;
                u16 y1 = worldY - gUnknown_03000784->Y;
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
        }
        if ( !(hasRunOnce || gUnknown_03003170 || gUnknown_030007A4 || !sub_8F01CBC(worldX, worldY)) )
        {
            worldY -= 32;
            hasRunOnce = 1;
            goto LOOP;
        }
    }

    if ( !gUnknown_03003170 )
    {
        for(i=0; i<40; i++)
        {
            gUnknown_03000784 = &gUnknown_03001D40[i];

            if ( !gUnknown_03000784->Type )
            {
                break;
            }
            
            if ( !(gUnknown_03000784->Type & 0x80) && (gUnknown_03000784->field_14 & 0x40))
            {
                worldX = gUnknown_03000784->X - gUnknown_03000788 + 64;
                worldY = gUnknown_03000784->Y - gUnknown_03001508 + 64; //reg alloc
                if(worldX <= 0x400 && worldY <= 0x2C0)
                {
                    ExecuteScript(0x34u);
                }
            }
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

void Goods_Use()
{
    s32 v1;
    u32 v3;
    u32 v4;
    sItemData v0;
    sItemData *ptr;

    if ( (gGameInfo.PlayerInfo.CharacterInfo[gUnknown_03003174 - 1].Condition & CONDITION_UNCONSCIOUS)
      && (gCurrentItemId != 3) )
    {
        // "@{0x03}{0x1A} is unconscious.{BREAK}"
        DrawTextWithId(0x6D7u);
        WaitForActionButtonPress();
        return;
    }
    ptr = &gItemData[gCurrentItemId];
    v0 = *ptr;
    if ( v0.Equipment )
    {
        if ( v0.Flags & gCanEquipItemMask[gUnknown_03003174] )
        {
            v1 = GetPositionOfCurrentItemFromInventoryOrCloset(gUnknown_03003174);
            if ( v1 >= 0 )
            {
                v4 = v0.Equipment >> 6;
                v3 = gGameInfo.PlayerInfo.CharacterInfo[gUnknown_03003174 - 1].EquipedItems[v4];
                gGameInfo.PlayerInfo.CharacterInfo[gUnknown_03003174 - 1].EquipedItems[v4] = gCurrentItemId;
                if ( v3 )
                {
                    gGameInfo.PlayerInfo.CharacterInfo[gUnknown_03003174 - 1].Inventory[v1] = v3;
                }
                else
                {
                    RemoveItemFromInventory(gUnknown_03003174);
                }
                PlaySfxById2(4u);
                // "@{0x03}{0x1A} equipped the{BREAK}{0x03}{0x1C}.{BREAK}"
                DrawTextWithId(0x391u);
            }
        }
        else
        {
            // "@{0x03}{0x1A} can't equip the{BREAK}{0x03}{0x1C}.{BREAK}"
            DrawTextWithId(0x392u);
        }
    }
    else
    {
        // Is this equipable to anyone?
        if ( v0.Flags & 0x3F )
        {
            if ( v0.Flags & gCanEquipItemMask[gUnknown_03003174] )
            {
                gConsumableType = 0;
                gItemEffectHandlers[v0.ItemActionOverworld]();
                if ( gUnknown_03001504 )
                {
                    return;
                }
            }
            else
            {
                // "@{0x03}{0x1A} can't use the{BREAK}{0x03}{0x1C}.{BREAK}"
                DrawTextWithId(0x38Fu);
            }
        }
        else
        {
            // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
            DrawTextWithId(0x38Eu);
            NothingHappened();
        }
    }
    WaitForActionButtonPress();
}

void Goods_Eat()
{
    sItemData *ptr;
    sItemData v0;

    if ( gGameInfo.PlayerInfo.CharacterInfo[gUnknown_03003174 - 1].Condition & CONDITION_UNCONSCIOUS )
    {
        // "@{0x03}{0x1A} is unconscious.{BREAK}"
        DrawTextWithId(0x6D7u);
        WaitForActionButtonPress();
        return;
    }
    ptr = &gItemData[gCurrentItemId];
    v0 = *ptr;
    if ( v0.Flags & 0x40 )
    {
        if ( v0.Flags & gCanEquipItemMask[gUnknown_03003174] )
        {
            gConsumableType = 1;
            gItemEffectHandlers[v0.ItemActionOverworld]();
            if ( gUnknown_03001504 )
            {
                return;
            }
        }
        else
        {
            // "@{0x03}{0x1A} can't use the{BREAK}{0x03}{0x1C}.{BREAK}"
            DrawTextWithId(0x38Fu);
        }
    }
    else
    {
        // "@Please don't do that.{BREAK}"
        DrawTextWithId(0x390u);
    }
    WaitForActionButtonPress();
}

void Goods_Give()
{
    u32 v0;
    s32 v1;
    if ( gCurrentItemId == 3 )
    {
        // "@The {0x03}{0x1C} can't be{BREAK}given away.{BREAK}"
        DrawTextWithId(0x396u);
    }
    else
    {
        v0 = SelectCharacter();
        #if !NON_MATCHING
        //force v0 to be stored in r4
        asm("":::"r2");
        asm("":::"r3");
        #endif
        if ( (v0 - 1) > 4 )
        {
            ++gUnknown_03001504;
            return;
        }
        gCurrentCharacterId = v0;
        for(v1 = 0; v1 < 8; v1++)
        {
            if(!gGameInfo.PlayerInfo.CharacterInfo[gCurrentCharacterId - 1].Inventory[v1])
            {
                break;
            }
        }
        if ( gUnknown_03003174 == gCurrentCharacterId )
        {
            if ( RemoveItemFromInventory(gUnknown_03003174) >= 0 )
            {
                gGameInfo.PlayerInfo.CharacterInfo[gCurrentCharacterId - 1].Inventory[v1 - 1] = gCurrentItemId;
                if ( (gGameInfo.PlayerInfo.CharacterInfo[gCurrentCharacterId - 1].Condition & (CONDITION_UNCONSCIOUS|CONDITION_STONE)) )
                {
                    // "@{0x03}{0x3E} took the {0x03}{0x1C}{BREAK}out of {0x03}{0x1A}'s bag{BREAK}{WAIT}and put it in {0x03}{0x1B}'s bag.{BREAK}"
                    DrawTextWithId(0x6AAu);
                }
                else
                {
                    // "@{0x03}{0x1A} took out the{BREAK}{0x03}{0x1C} and then put it{BREAK}away again.{BREAK}"
                    DrawTextWithId(0x6D6u);
                }
            }
        }
        else if ( v1 < 8 )
        {
            gGameInfo.PlayerInfo.CharacterInfo[gCurrentCharacterId - 1].Inventory[v1] = gCurrentItemId;
            RemoveItemFromInventory(gUnknown_03003174);
            if ( (gGameInfo.PlayerInfo.CharacterInfo[gUnknown_03003174 - 1].Condition & (CONDITION_UNCONSCIOUS|CONDITION_STONE)) )
            {
                if ( gGameInfo.PlayerInfo.CharacterInfo[gCurrentCharacterId - 1].Condition & (CONDITION_UNCONSCIOUS|CONDITION_STONE) )
                {
                    // "@{0x03}{0x3E} took the {0x03}{0x1C}{BREAK}out of {0x03}{0x1A}'s bag{BREAK}{WAIT}and put it in {0x03}{0x1B}'s bag.{BREAK}"
                    DrawTextWithId(0x6AAu);
                }
                else
                {
                    // "@{0x03}{0x1B} took the {0x03}{0x1C}{BREAK}from {0x03}{0x1A}'s bag.{BREAK}"
                    DrawTextWithId(0x6A8u);
                }
            }
            else
            {
                if ( gGameInfo.PlayerInfo.CharacterInfo[gCurrentCharacterId - 1].Condition & (CONDITION_UNCONSCIOUS|CONDITION_STONE) )
                {
                    // "@{0x03}{0x1A} put the {0x03}{0x1C}{BREAK}in {0x03}{0x1B}'s bag.{BREAK}"
                    DrawTextWithId(0x6A7u);
                }
                else
                {
                    // "@{0x03}{0x1A} gave the{BREAK}{0x03}{0x1C} to {0x03}{0x1B}.{BREAK}"
                    DrawTextWithId(0x395u);
                }
            }
        }
        else
        {
            // "@{0x03}{0x1B} can't hold any{BREAK}more stuff.{BREAK}"
            DrawTextWithId(0x397u);
        }
    }
    WaitForActionButtonPress();
}

void Goods_Drop()
{
    if ( gCurrentItemId[gItemData].Flags & 0x80 )
    {
        DrawTextWithId(0x394u);                 // "@You shouldn't throw away{BREAK}the {0x03}{0x1C}.{BREAK}"
    }
    else
    {
        RemoveItemFromInventory(gUnknown_03003174);
        if ( gGameInfo.PlayerInfo.CharacterInfo[gUnknown_03003174 - 1].Condition & (CONDITION_UNCONSCIOUS|CONDITION_STONE) )
        {
            DrawTextWithId(0x6A9u);             // "@{0x03}{0x3E} threw out the{BREAK}{0x03}{0x1C} that was in{BREAK}{0x03}{0x1A}'s bag.{BREAK}"
        }
        else
        {
            DrawTextWithId(0x393u);             // "@{0x03}{0x1A} threw away the{BREAK}{0x03}{0x1C}.{BREAK}"
        }
    }
    WaitForActionButtonPress();
}

s32 RemoveItemFromInventory(u8 character)
{
    s32 idx = GetPositionOfCurrentItemFromInventoryOrCloset(character);
    if(idx >= 0)
    {
        while( idx < 7 )
        {
            gGameInfo.PlayerInfo.CharacterInfo[character - 1].Inventory[idx] = gGameInfo.PlayerInfo.CharacterInfo[character - 1].Inventory[idx+1];
            idx++;
        }
        gGameInfo.PlayerInfo.CharacterInfo[character - 1].Inventory[idx] = 0;
        gUnknown_030007D8 = -1;
    }
    return idx;
}

void SelectItem(u8 a1)
{
    gCurrentItemId = a1;
    if ( (s8)a1 >= 0 )
    {
        gTempNumber = a1[gItemData].Price;
    }
    else
    {
        gTempNumber = a1[gTeleportLocations].Price;
    }
}

s32 GetPositionOfCurrentItemFromInventoryOrCloset(u8 characterId)
{
    s32 v1;
    s32 i;

    if ( characterId )
    {
        v1 = characterId;
        if ( gCurrentItemId == gGameInfo.PlayerInfo.CharacterInfo[v1 - 1].Inventory[gUnknown_030007D8] )
        {
            return gUnknown_030007D8;
        }

        gUnknown_030007D8 = -1;

        for(i = 0; i < 8; i++)
        {
            if(gCurrentItemId == gGameInfo.PlayerInfo.CharacterInfo[v1 - 1].Inventory[i])
            {
                return i;
            }
        }
    }
    else
    {
        if ( gCurrentItemId == gGameInfo.Closet[gUnknown_030007D8] )
        {
            return gUnknown_030007D8;
        }
        gUnknown_030007D8 = -1;
        for(i = 0; i < 80; i++)
        {
            if(gCurrentItemId == gGameInfo.Closet[i])
            {
                return i;
            }
        }
    }
    return -1;
}
