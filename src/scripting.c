#include "gba/gba.h"
#include "m4a.h"

//Yes they really did just define this as a const in this file
extern const u8 gCurrentItemId;
#include "definitions.h"

extern void_pointer gSCR_CMD_Handlers[];
extern u8 gUnknown_08F278E8[];

#ifndef JAPANESE
u8 *choose_yes_no_size();
#endif

void ExecuteScript(u8 numInstructionsToExecute)
{
    if ( numInstructionsToExecute != 64 )
    {
        gUnknown_03001D30 = numInstructionsToExecute;
        gScriptLR = gUnknown_03000784->ScriptPtr;
        gScriptPtr = (u8 *)(gScriptLR + (gUnknown_03000784->field_14 & 0xF));
    }
    else
    {
        //This is required to match
        goto skip_execution;
    }

    while(1)
    {
        while(gUnknown_03001D30)
        {
            gSCR_CMD_Handlers[*gScriptPtr]();
            gScriptPtr++;
        }
        sub_8F00D24();

skip_execution:
        if ( !gUnknown_030007EC )
        {
            return;
        }
        gUnknown_03000784 = (struct_off_3000784 *)gUnknown_030007EC;
        gUnknown_03001D30 = gUnknown_03001514;
        gUnknown_030007EC = 0;
        gScriptLR = gUnknown_03000784->ScriptPtr;
        if ( gUnknown_03001510 )
        {
            gScriptPtr = (u8 *)(gUnknown_03001510 + gScriptLR);
        }
        else
        {
            gScriptPtr = (u8 *)(gScriptLR + (gUnknown_03000784->field_14 & 0xF));
        }
    }
}

void SCR_CMD_00_End()
{
    // end script
    gUnknown_03001D30 = 0;
}

void SCR_CMD_01_Jump()
{
    // unconditional jump (pp=position)
    u8* ptr = gScriptPtr;
    gScriptPtr++;
    gScriptPtr = (u8 *)(ptr[1] + gScriptLR - 1);
}

void SCR_CMD_02_CallSubroutine()
{
    u32 old_lr;
    u8 *old_ptr;
    u8 oo_high, oo_low;
    u32 oo_ptr;
    u8 old_3001D30;

    // call subroutine (oo=object pointer)
    old_lr = gScriptLR;
    ++gScriptPtr;
    oo_low = *gScriptPtr++;
    oo_high = *gScriptPtr;
    oo_ptr = (oo_low | (oo_high << 8));
    gScriptLR = gUnknown_0300349C + oo_ptr - 0x8000;
    old_ptr = ++gScriptPtr;
    gScriptPtr = (u8 *)(gScriptPtr[0] + gScriptLR);

    old_3001D30 = gUnknown_03001D30;
    while(gUnknown_03001D30 && gUnknown_03001D30 != 3 )
    {
        gSCR_CMD_Handlers[*gScriptPtr]();
        ++gScriptPtr;
    }
    gScriptLR = old_lr;
    gScriptPtr = old_ptr;
    if ( gUnknown_03001D30 )
    {
        gUnknown_03001D30 = old_3001D30;
    }
}

void SCR_CMD_03_Return()
{
    // return from subroutine
    gUnknown_03001D30 = 3;
}

void SCR_CMD_04()
{
    // delay (tt=time)
    u8 delay;
    ++gScriptPtr;
    delay = *gScriptPtr;
    if ( gCurrentBgMusic != 1 )
    {
        if ( ((u8)(gCurrentBgMusic - 36)) < 8 )
        {
            sub_8F09888(delay);
        }
        else
        {
            DelayByAmount(delay);
        }
    }
}

void SCR_CMD_05()
{
    // object disappears when flag set
    ++gScriptPtr;
}

void SCR_CMD_06()
{
    // object appears when flag set
    ++gScriptPtr;
}

void SCR_CMD_08()
{
    u8 *v0;
    u32 v1;
    u8 *v2;
    u16 textId;
    u8 i;
    sCharacterStatusInfo *v5;

    v0 = ++gScriptPtr;
    v1 = *gScriptPtr;
    v2 = gScriptPtr++ + 1;
    textId = v1 | (v0[1] << 8);
    if ( textId == 0x309 && v2[1] )                 // "@Thank you.{BREAK}{WAIT}@Please come again.{BREAK}"
    {
        textId = 0x38C;                             // "@Thank you!{BREAK}"
    }
    DrawTextWithId(textId);
    gUnknown_03003170 |= 1;
    if ( textId == 0x232 && *(gScriptPtr - 26) == 90 )// "@The dragon was in a very{BREAK}deep sleep.{BREAK}"
    {
        DrawTextWithId(0x233u);                 // "@Can I help you?{BREAK}"
        gScriptPtr -= 27;
    }
    if ( textId == 0x3E5 )                          // "@Bathed in the glow of the{BREAK}crystal, everyone was{BREAK}completely healed!{BREAK}"
    {
        for(i = 0; i < 4; i++)
        {
            u32 idx = gGameInfo.PlayerInfo.CharactersInParty[i] - 1;
            if ( (u8)(idx) < 5u )
            {
                v5 = &gGameInfo.PlayerInfo.CharacterInfo[idx-1];
                v5[1].CurrentHP = v5[1].MaxHP;
                v5[1].CurrentPP = v5[1].MaxPP;
                v5[1].Condition = 0;
            }
        }
        PlaySfxById1(7u);
        sub_8F0B004();
        gUnknown_03003170 |= 0x80u;
        UpdateCharactersInParty();
        sub_8F03128();
    }
    if ( textId == 0x19C )                          // @{0x03}{0x16}{0x03}{0x17} climbed{BREAK}into the rocket.{BREAK}\0
    {
        gUnknown_030007A8 = 1;
    }
}

void SCR_CMD_09()
{
    // ask yes/no, jump if "no" selected or B pressed
    gTextDelayAfterWriteCharacterEnabled |= 0x80u;

#ifdef JAPANESE
    DrawTextWithIdWaitForButton((u8 *)gUnknown_08F278E8);
#else
    DrawTextWithIdWaitForButton(choose_yes_no_size());
#endif

label:
    switch(sub_8F0B2C8(0))
    {
        case 1:
        {
            gScriptPtr++;
            return;
        }
        case 2:
        {
            SCR_CMD_01_Jump();
            return;
        }
    }
    goto label;
}

void SCR_CMD_0A()
{
    // jump unless TALKing
    if ( *gScriptPtr != gUnknown_03001D30 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

void SCR_CMD_0B()
{
    // jump unless CHECKing
    if ( *gScriptPtr != gUnknown_03001D30 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

void SCR_CMD_0C()
{
    // jump unless using PSI (01=telepathy)
    if (!( *gScriptPtr++ == gUnknown_03001D30 && *gScriptPtr + 0xC0 == gUnknown_03003188 ))
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gScriptPtr++;
    }
}

void SCR_CMD_0D()
{
    // jump unless using item
    if (!( *gScriptPtr++ == gUnknown_03001D30 && *gScriptPtr == gUnknown_03003188 ))
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gScriptPtr++;
    }
}

void SCR_CMD_0E_SoftReset()
{
    M1_SoftReset();
}

void SCR_CMD_0F_DelayedSoftReset()
{
    WaitForActionButtonPress();
    M1_SoftReset();
}

void SCR_CMD_10_SetFlag()
{
    ++gScriptPtr;
    gGameInfo.Flags[*gScriptPtr >> 3] |= (0x80 >> (*gScriptPtr & 7));
}

void SCR_CMD_11_ClearFlag()
{
    ++gScriptPtr;
    gGameInfo.Flags[*gScriptPtr >> 3] &= ~(0x80 >> (*gScriptPtr & 7));
}

void SCR_CMD_12()
{
    // jump unless flag set
    ++gScriptPtr;
    if ( (gGameInfo.Flags[*gScriptPtr >> 3] << (*gScriptPtr & 7)) & 0x80 )
    {
        ++gScriptPtr;
    }
    else
    {
        SCR_CMD_01_Jump();
    }
}

void SCR_CMD_13()
{
    // decrease counter
    gScriptPtr++;
    --gGameInfo.field_260[*gScriptPtr];
}

void SCR_CMD_14()
{
    // increase counter
    gScriptPtr++;
    ++gGameInfo.field_260[*gScriptPtr];
}

void SCR_CMD_15()
{
    // set counter to 0
    gScriptPtr++;
    gGameInfo.field_260[*gScriptPtr] = 0;
}

void SCR_CMD_16()
{
    // jump if counter less than value

    u8 val;
    ++gScriptPtr;
    val = *gScriptPtr++;
    if ( gGameInfo.field_260[val] < *gScriptPtr )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

void SCR_CMD_17()
{
    // change map variable (1B-1E)
    u8 idx;

    ++gScriptPtr;
    idx = *gScriptPtr++;
    gGameInfo.PlayerInfo.MapVariable[idx] = *gScriptPtr;
}

void SCR_CMD_18()
{
    // choose character, jump if B pressed
    s32 v0;
    sTextState v1;

    SaveTextSystemState(&v1);
    v0 = SelectCharacter();
    LoadTextSystemState(&v1);
    gTextDelayAfterWriteCharacterEnabled = 0;
    if ( v0 <= 0 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gCurrentCharacterId = v0;
        ++gScriptPtr;
    }
}

void SCR_CMD_19_SetCurrentCharacterId()
{
    // select specific character
    ++gScriptPtr;
    gCurrentCharacterId = *gScriptPtr;
}

void SCR_CMD_1A()
{
    // jump unless character selected
    ++gScriptPtr;
    if ( *gScriptPtr != gCurrentCharacterId )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

void SCR_CMD_1B()
{
    // jump if no money added to bank acct since last call
    if ( gGameInfo.PlayerInfo.MoneyReadyToDepositLo | gGameInfo.PlayerInfo.MoneyReadyToDepositMid | gGameInfo.PlayerInfo.MoneyReadyToDepositHi )
    {
        ++gScriptPtr;
    }
    else
    {
        SCR_CMD_01_Jump();
    }
}

void SCR_CMD_1C()
{
    // input a number, jump if B pressed
    s32 v0;

    SCR_CMD_1F_ShowMoney();
    v0 = sub_8F0B350();
    if ( v0 < 0 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gTempNumber = v0;
        ++gScriptPtr;
    }
}

void SCR_CMD_1D()
{
    // load a number
    ++gScriptPtr;
    gTempNumber = *gScriptPtr++;
    gTempNumber = gTempNumber + (*gScriptPtr << 8);
}

void SCR_CMD_1E()
{
    // jump if number less than value
    u32 number;

    number = *++gScriptPtr;
    number = number | (*++gScriptPtr << 8);
    if ( gTempNumber < number)
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gScriptPtr++;
    }
}

void SCR_CMD_1F_ShowMoney()
{
    // show money
    sTextState v0;

    SaveTextSystemState(&v0);
    DrawMoneyWindow();
    LoadTextSystemState(&v0);
}

void SCR_CMD_20()
{
    // choose item from inventory, jump if B pressed
    s32 itemId;
    sTextState v1;

    SaveTextSystemState(&v1);
    itemId = PickAnItemFromInventory();
    LoadTextSystemState(&v1);
    gTextDelayAfterWriteCharacterEnabled = 0;
    if ( itemId <= 0 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        SelectItem(itemId);
        gCurrentCharacterId = gUnknown_03003174;
        ++gScriptPtr;
    }
}

void SCR_CMD_21()
{
    // choose item from closet, jump if B pressed
    s32 itemId;
    sTextState v1;

    SaveTextSystemState(&v1);
    itemId = PickAnItemFromCloset();
    LoadTextSystemState(&v1);
    gTextDelayAfterWriteCharacterEnabled = 0;
    if ( itemId <= 0 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        SelectItem(itemId);
        ++gScriptPtr;
    }
}

void SCR_CMD_22()
{
    // choose item from list, jump if B pressed
    s32 itemId;
    sTextState v1;

    ++gScriptPtr;
    SaveTextSystemState(&v1);
    itemId = PickAnItemFromList(gScriptPtr);
    LoadTextSystemState(&v1);
    gTextDelayAfterWriteCharacterEnabled = 0;
    gScriptPtr += 3;
    if ( itemId <= 0 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        SelectItem(itemId);
        gUnknown_030007D8 = -1;
        ++gScriptPtr;
    }
}

#if NON_MATCHING // reg-alloc
void SCR_CMD_23()
{
    u8 v0;
    u8 *ptr;
    u8 *itemIdPtr;
    u8 itemId;
    u32 charId;

    // jump unless item in character's inventory
    ++gScriptPtr;
    SelectItem(*gScriptPtr);
    gUnknown_030007D8 = -1;
    v0 = 0;
    itemIdPtr = &gCurrentItemId;
    charId = gCurrentCharacterId - 1;
    ptr = gGameInfo.PlayerInfo.CharacterInfo[charId].Inventory;
    itemId = *itemIdPtr;
    while(1)
    {
        if(itemId != ptr[v0])
        {
            if(++v0 < 8) continue;
            SCR_CMD_01_Jump();
            return;
        }
        else
        {
            gUnknown_030007D8 = v0;
            ++gScriptPtr;
            return;
        }
    }
}
#else
NAKED
void SCR_CMD_23()
{
    asm(".include \"asm/non_matching/SCR_CMD_23.s\"");
}
#endif

//gCurrentItemId defined as const matches?
void SCR_CMD_24()
{
    u8 v0;

    // jump unless item in closet
    ++gScriptPtr;
    SelectItem(*gScriptPtr);
    gUnknown_030007D8 = -1;
    v0 = 0;
    while ( 1 )
    {
        if(gCurrentItemId != gGameInfo.Closet[v0])
        {
            ++v0;
            if ( v0 > 0x4F )
            {
                SCR_CMD_01_Jump();
                return;
            }
            continue;
        }
        break;
    }
    gUnknown_030007D8 = v0;
    ++gScriptPtr;
}

void SCR_CMD_25()
{
    // select specific item
    SelectItem(*++gScriptPtr);
    if ( gCurrentItemId != *gScriptPtr )
    {
        gUnknown_030007D8 = -1;
    }
}

void SCR_CMD_26()
{
    // jump unless item selected
    ++gScriptPtr;
    if ( gCurrentItemId != *gScriptPtr )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

#if NON_MATCHING // reg-alloc
void SCR_CMD_27()
{
    TODO: make a non matching for this
}
#else
NAKED
void SCR_CMD_27()
{
    asm(".include \"asm/non_matching/SCR_CMD_27.s\"");
}
#endif

void SCR_CMD_28_IncrementMoney()
{
    // give money, jump if can't hold any more
    if ( (gGameInfo.PlayerInfo.Money + gTempNumber) >= 0x10000 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gGameInfo.PlayerInfo.Money = (gGameInfo.PlayerInfo.Money + gTempNumber);
        ++gScriptPtr;
    }
}

void SCR_CMD_29_DecrementMoney()
{
    // take money, jump if not enough
    if ( (gGameInfo.PlayerInfo.Money - gTempNumber) < 0 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gGameInfo.PlayerInfo.Money = (gGameInfo.PlayerInfo.Money - gTempNumber);
        ++gScriptPtr;
    }
}

#define BANKED_MONEY (((gGameInfo.PlayerInfo.BankedMoneyMid << 8) | gGameInfo.PlayerInfo.BankedMoneyLo) + (gGameInfo.PlayerInfo.BankedMoneyHi << 16))
#define SET_BANKED_MONEY(val) \
    gGameInfo.PlayerInfo.BankedMoneyLo = val; \
    gGameInfo.PlayerInfo.BankedMoneyMid = val>>8; \
    gGameInfo.PlayerInfo.BankedMoneyHi = val>>16;

void SCR_CMD_2A_IncrementBankedMoney()
{
    // give money, jump if can't hold any more
    s32 val = gGameInfo.PlayerInfo.BankedMoneyLo;
    val |= gGameInfo.PlayerInfo.BankedMoneyMid << 8;
    val += gGameInfo.PlayerInfo.BankedMoneyHi << 16;
    val += gTempNumber;
    if ( val >= 0x1000000 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        SET_BANKED_MONEY(val);
        ++gScriptPtr;
    }
}

void SCR_CMD_2B_DecrementBankedMoney()
{
    // take money, jump if not enough
    s32 val;
    val = gGameInfo.PlayerInfo.BankedMoneyLo;
    val |= gGameInfo.PlayerInfo.BankedMoneyMid << 8;
    val += gGameInfo.PlayerInfo.BankedMoneyHi << 16;

    if ( (val-gTempNumber) < 0 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        val -= gTempNumber;
        SET_BANKED_MONEY(val);
        ++gScriptPtr;
    }
}

void SCR_CMD_2C()
{
    sItemData *item = &gItemData[gCurrentItemId];
    // jump if item unsellable otherwise remove from inventory
    if ( (!(item->Flags & ITEM_IS_SELLABLE)) && (RemoveItemFromInventory(gCurrentCharacterId) >= 0) )
    {
        ++gScriptPtr;
    }
    else
    {
        SCR_CMD_01_Jump();
    }
}

#if NON_MATCHING // reg-alloc
void SCR_CMD_2D()
{
    u32 charId;
    int v0; // r3
    u8 *v1;

    // add item to inventory, jump if full
    charId = gCurrentCharacterId;
    if ( charId < 6u )
    {
        v0 = 0;
        charId = gCurrentCharacterId - 1;
        v1 = gGameInfo.PlayerInfo.CharacterInfo[charId].Inventory;
        while(1)
        {
            if(*v1)
            {
                ++v1;
                if ( ++v0 > 7 )
                {                    
                    SCR_CMD_01_Jump();
                    return;
                }
                continue;
            }
            break;
        }
    }
    else
    {
        SCR_CMD_01_Jump();
        return;
    }
    *v1 = gCurrentItemId;
    ++gScriptPtr;
}
#else
NAKED
void SCR_CMD_2D()
{
    asm(".include \"asm/non_matching/SCR_CMD_2D.s\"");
}
#endif

void SCR_CMD_2E()
{
    // remove item from inventory, jump if not present
    if ( RemoveItemFromInventory(gCurrentCharacterId) < 0 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

void SCR_CMD_2F()
{
    u8 v0;
    u8 *ptr;

    // add item to closet, jump if full
    v0 = 0;
    while ( 1 )
    {
        ptr = &gGameInfo.Closet[v0];
        if( *ptr )
        {
            ++v0;
            if ( v0 > 0x4F )
            {
                SCR_CMD_01_Jump();
                return;
            }
            continue;
        }
        break;
    }

    *ptr = gCurrentItemId;
    ++gScriptPtr;
}

void SCR_CMD_30()
{
    s32 idx;
    u8 *v2;

    // remove item from closet, jump if not present
    idx = GetPositionOfCurrentItemFromInventoryOrCloset(0);
    if ( idx >= 0 )
    {
        for( ; idx < ((s32)sizeof(gGameInfo.Closet)-1); idx++ )
        {
            gGameInfo.Closet[idx] = gGameInfo.Closet[idx+1];
            ++v2;
        }
        gGameInfo.Closet[idx] = 0;
        gUnknown_030007D8 = -1;
        ++gScriptPtr;
    }
    else
    {
        SCR_CMD_01_Jump();
    }
}

void SCR_CMD_31()
{
    s32 idx; // r5
    u32 item;

    // select character's nn'th item (first is 0), jump if empty slot
    idx = *++gScriptPtr;
    item = gGameInfo.PlayerInfo.CharacterInfo[gCurrentCharacterId - 1].Inventory[idx];
    if ( !item )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        SelectItem(item);
        gUnknown_030007D8 = idx;
        ++gScriptPtr;
    }
}

void SCR_CMD_32()
{
    s32 v0;
    s32 nn;

    nn = *++gScriptPtr;

    // multiply number by nn/100
    v0 = gTempNumber * nn / 100;
    if ( v0 > 0xFFFF )
    {
        gTempNumber = -1;
    }
    else
    {
        gTempNumber = v0;
    }
}

#if NON_MATCHING // close
void SCR_CMD_33()
{
    u8 v0; // r2
    u8 *party;
    u32 charId;

    // jump if character not present
    ++gScriptPtr;
    charId = gCurrentCharacterId = *gScriptPtr;
    v0 = 0;
    while ( 1 )
    {
        party = &gGameInfo.PlayerInfo.CharactersInParty[v0];
        if(charId != *party)
        {
            ++v0;
            if(v0 > 3)
            {
                SCR_CMD_01_Jump();
                return;
            }
            continue;
        }
        ++gScriptPtr;
        break;
    }
}
#else
NAKED
void SCR_CMD_33()
{
    asm(".include \"asm/non_matching/SCR_CMD_33.s\"");
}
#endif

void SCR_CMD_34()
{
    if ( *gScriptPtr != gUnknown_03001D30 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

void SCR_CMD_35()
{
    // jump unless touching object
    if ( *gScriptPtr != gUnknown_03001D30 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

void SCR_CMD_36()
{
    if ( (*(u8 *)(gUnknown_03000784->ScriptPtr + 2) & 7) != gUnknown_030007A4 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

void SCR_CMD_37()
{
    u16 textId;
    u32 v2;

    // show 2-option menu, jump to p1 if second option selected or jump to p2 if B selected
    textId = *++gScriptPtr;
    textId |= *++gScriptPtr << 8;
    gTextDelayAfterWriteCharacterEnabled |= 0x80u;
    DrawTextWithId(textId);
    v2 = sub_8F0B2C8(1u);
    if ( v2 == 1 )
    {
        gScriptPtr += 2;
    }
    else
    {
        if (v2 != 2 )
        {
            ++gScriptPtr;
        }
        SCR_CMD_01_Jump();
    }
}

void SCR_CMD_38()
{
    u8 v0;
    u8 charId;
    u8 *charIdPtr;

    // jump if no items in inventory
    v0 = 0;
    while ( 1)
    {
        charIdPtr = (u8*)&gGameInfo;
        charIdPtr += 8; //wtf is this shit?
        //cardIdPtr = gGameInfo.PlayerInfo.CharactersInParty; //Why doesn't this match?
        charId = charIdPtr[v0];
        if(!charId || !gGameInfo.PlayerInfo.CharacterInfo[charId - 1].Inventory[0])
        {
            v0++;
            if ( v0 > 3 )
            {
                SCR_CMD_01_Jump();
                return;
            }
            continue;
        }
        break;
    }
    ++gScriptPtr;
}

void SCR_CMD_39()
{
    // jump if no items in closet
    if ( !gGameInfo.Closet[0] )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

void SCR_CMD_3A()
{
    // select nn'th character in party (first is 0), jump if not present
    ++gScriptPtr;
    if ( !gGameInfo.PlayerInfo.CharactersInParty[*gScriptPtr] )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gCurrentCharacterId = gGameInfo.PlayerInfo.CharactersInParty[*gScriptPtr++];
    }
}

void SCR_CMD_3B()
{
    // change object type (tt=type) e.g. 26=run away
    u8 tt = *++gScriptPtr;
    gUnknown_03000784->Type = tt;
    gUnknown_03000784->field_2 = gUnknown_08F645B4[tt];
    gUnknown_03000784->field_14 = gUnknown_08F645B4[tt] >> 8;
}

void SCR_CMD_3C()
{
    ++gScriptPtr;
    gUnknown_030007E8 = *gScriptPtr;
}

#if NON_MATCHING // close
void SCR_CMD_3D()
{
    union
    {
        u8 b[4];
        u16 w[2];
        u32 val;
    } temp;

    // teleport player
    gUnknown_030007A0 = -1;

    // start
    ++gScriptPtr;
    *(temp.b+0) = *gScriptPtr;
    ++gScriptPtr;
    *(temp.b+1) = *gScriptPtr;
    ++gScriptPtr;
    *(temp.b+2) = *gScriptPtr;
    ++gScriptPtr;
    *(temp.b+3) = *gScriptPtr;

    gPlayerX = (temp.val & ~63);
    gPlayerX += -(7 << 6);
    //gPlayerX += ((temp.val << 26) >> 26);
    gPlayerX = ((temp.val << 26) >> 26) - (7<<6) + (temp.val & ~63);

    gPlayerY = ((temp.val >> 22) << 6);
    gPlayerY += -(5 << 6);
    //gPlayerY += ((temp.val << 10) >> 22);
    gPlayerY = (((temp.val << 10) >> 22) -(5<<6)) + ((temp.val >> 22) << 6);
    // end

    gUnknown_03000840 = gUnknown_030034A8 = 0;
}
#else
NAKED
void SCR_CMD_3D()
{
    asm(".include \"asm/non_matching/SCR_CMD_3D.s\"");
}
#endif

#if NON_MATCHING
void SCR_CMD_3E()
{
    //TODO: Not attempted
}
#else
NAKED
void SCR_CMD_3E()
{
    asm(".include \"asm/non_matching/SCR_CMD_3E.s\"");
}
#endif

void SCR_CMD_3F_JumpToObjectScript()
{
    // signal another object (oo=object number)
    ++gScriptPtr;
    gUnknown_030007EC = &gUnknown_03001D40[*gScriptPtr];
    gUnknown_03001510 = 0;
    gUnknown_03001514 = 64;
}

void SCR_CMD_40()
{
    // jump unless signaled
    if ( *gScriptPtr != gUnknown_03001D30 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

void SCR_CMD_41()
{
    // teleport to saved game location
    gUnknown_030007A0 = -1;
    gPlayerX = gGameInfo.PlayerInfo.field_C + 0x40;
    gPlayerY = gGameInfo.PlayerInfo.field_E + 0x80;
    gUnknown_03000840 = gGameInfo.field_2AE;
    gUnknown_030034A8 = gGameInfo.field_2AF;
    sub_8F09420();
}

void SCR_CMD_42()
{
    u8 i;
    u8 *ptr;

    // add character to party, jump if party full
    ++gScriptPtr;
    gCurrentCharacterId = *gScriptPtr;
    i = 0;
    while ( 1 )
    {
        ptr = gGameInfo.PlayerInfo.CharactersInParty;
        if(ptr[i])
        {
            ++i;
            if ( i > 3 )
            {
                SCR_CMD_01_Jump();
                return;
            }
            continue;
        }
        ptr[i] = gCurrentCharacterId;
        break;
    }
    UpdateCharactersInParty();
    ++gScriptPtr;
}

#if NON_MATCHING
void SCR_CMD_43()
{
    u8 v0;
    u8 *v1;
    u8 *ptr;
    u32 id;
    GlobalPlayerInfo * gpi;
    u8 temp;

    // remove character from party, jump if absent
    ++gScriptPtr;
    id = gCurrentCharacterId = *gScriptPtr;
    v0 = 0;
    gpi = &gGameInfo.PlayerInfo;
    while ( 1 )
    {
        ptr = gpi->CharactersInParty;
        temp = id;
        if(temp != ptr[v0]) //REG DIFF
        {
            ++v0;
            if ( v0 > 3 )
            {
                SCR_CMD_01_Jump();
                return;
            }
            continue;
        }
        else if ( v0 <= 2 )
        {
            do
            {
                gGameInfo.PlayerInfo.CharactersInParty[v0] = gGameInfo.PlayerInfo.CharactersInParty[v0+1];
                ++v0;
            }
            while ( v0 <= 2u );
        }
        break;
    }
    gGameInfo.PlayerInfo.CharactersInParty[v0] = 0;
    UpdateCharactersInParty();
    ++gScriptPtr;
}
#else
NAKED
void SCR_CMD_43()
{
    asm(".include \"asm/non_matching/SCR_CMD_43.s\"");
}
#endif

void SCR_CMD_44()
{
    s32 res;

    // start battle (gg=enemy group)
    if ( gUnknown_03003170 )
    {
        WaitForActionButtonPress();
    }
    ++gScriptPtr;
    res = InitiateBattle(*gScriptPtr, 1u);
    if ( !res )
    {
        gUnknown_03001D30 = 0;
    }
    if ( gUnknown_03003170 )
    {
        gUnknown_030007A8 = 1;
    }
}

void SCR_CMD_45()
{
    s32 v0;
    u8 v1;
    u8 v2;
    u8 v3;

    // multiply by number of characters
    v0 = 0;
    v1 = 0;
    do
    {
        v3 = gGameInfo.PlayerInfo.CharactersInParty[v1];
        v2 = v3 - 1;
        if ( v2 <= 4u && !(gGameInfo.PlayerInfo.CharacterInfo[v3-1].Condition & CONDITION_UNCONSCIOUS) )
        {
            v0 += gTempNumber;
        }
        ++v1;
    }
    while ( v1 <= 3 );
    if ( v0 <= 0xFFFF )
    {
        gTempNumber = v0;
    }
    else
    {
        gTempNumber = 0xFFFF;
    }
}

void SCR_CMD_46()
{
    // rocket (dd=direction)
    sub_8F0302C(0);
    ++gScriptPtr;
    gUnknown_0300317C = 45;
    gUnknown_030007C0 = 1;
    gUnknown_03000800 = 0;
}

void SCR_CMD_47()
{
    // airplane
    sub_8F0302C(0);
    ++gScriptPtr;
    gUnknown_0300317C = 9;
    gUnknown_030007C0 = 4;
    gUnknown_03000800 = 0x8AFCu;
    gUnknown_030007A4 = *gScriptPtr;
    gUnknown_030034A4 = 4;
}

void SCR_CMD_48()
{
    // tank
    sub_8F0302C(0);
    ++gScriptPtr;
    gUnknown_0300317C = 10;
    gUnknown_030007C0 = 2;
    gUnknown_03000800 = 0x8B1Cu;
    gUnknown_030007A4 = *gScriptPtr;
    gUnknown_03000788 = gUnknown_03000784->X - 0x1C0;
    gUnknown_03001508 = gUnknown_03000784->Y - 0x140;
    gUnknown_030007A0 = 8;
}

void SCR_CMD_49()
{
    // boat
    if ( gUnknown_03003170 )
    {
        WaitForActionButtonPress();
    }
    sub_8F0302C(0);
    ++gScriptPtr;
    gUnknown_0300317C = 11;
    gUnknown_030007C0 = 2;
    gUnknown_03000800 = 0x8B3Cu;
    gUnknown_030007A4 = *gScriptPtr;
    gUnknown_03000788 = gUnknown_03000784->X - 448;
    gUnknown_03001508 = gUnknown_03000784->Y - 320;
    gUnknown_030007A0 = 8;
    if ( gUnknown_03003170 )
    {
        gUnknown_030007A8 = 1;
    }
}

void SCR_CMD_4A()
{
    // train
    DelayByAmount(0x1Eu);
    sub_8F07374();
    gUnknown_030007A8 = 1;
}

void SCR_CMD_4B()
{
    // elevator
    sub_8F0302C(1u);
    ++gScriptPtr;
    gUnknown_0300317C = 15;
    gUnknown_030007C0 = 1;
    gUnknown_030007A4 = *gScriptPtr;
}

void SCR_CMD_4C()
{
    // no vehicle
    if ( gUnknown_0300317C == 9 )
    {
        gUnknown_03000784->X += 24;
        gUnknown_03000784->Y -= 4;
    }
    if ( gUnknown_0300317C == 11 )
    {
        gUnknown_03000788 = gUnknown_03000784->X - 0x1C0;
        gUnknown_03001508 = gUnknown_03000784->Y - 0x140;
    }
    if ( gUnknown_0300317C == 10 )
    {
        gUnknown_03000788 = gUnknown_03000784->X - 0x1C0;
        gUnknown_03001508 = gUnknown_03000784->Y - 0x140;
    }
    ++gScriptPtr;
    gUnknown_0300317C = 0;
    gUnknown_030007A4 = *gScriptPtr;
    sub_8F029E0();
    gUnknown_030007A0 = 8;
}

void SCR_CMD_4D()
{
    gUnknown_030034A4 = -gUnknown_030034A4;
    gUnknown_030007C0 = 2;
}

void SCR_CMD_4E()
{
    sub_8F09420();
}











