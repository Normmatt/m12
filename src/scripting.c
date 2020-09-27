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
        if(*ptr)
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













