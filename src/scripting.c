#include "gba/gba.h"
#include "m4a.h"

//Yes they really did just define this as a const in this file
#ifndef NDS_VERSION
extern const u8 gCurrentItemId;
#endif
#include "definitions.h"

extern void_pointer gSCR_CMD_Handlers[];
extern u8 gMsg_Menu_Yes_No[];

#ifdef ENGLISH
u8* choose_yes_no_size();
#endif

void ExecuteScript(u8 numInstructionsToExecute)
{
    if ( numInstructionsToExecute != 64 )
    {
        gUnknown_03001D30 = numInstructionsToExecute;
        gScriptLR = (u32)gUnknown_03000784->ScriptPtr;
        gScriptPtr = (u8 *)(gScriptLR + (gUnknown_03000784->bitfield1 & OBJECT_M_BF1_SCRIPT));
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
        gUnknown_03000784 = (sObjectMemory *)gUnknown_030007EC;
        gUnknown_03001D30 = gUnknown_03001514;
        gUnknown_030007EC = 0;
        gScriptLR = (u32)gUnknown_03000784->ScriptPtr;
        if ( gUnknown_03001510 )
        {
            gScriptPtr = (u8 *)(gUnknown_03001510 + gScriptLR);
        }
        else
        {
            gScriptPtr = (u8 *)(gScriptLR + (gUnknown_03000784->bitfield1 & OBJECT_M_BF1_SCRIPT));
        }
    }
}

// end script
void SCR_CMD_00_End()
{
    gUnknown_03001D30 = 0;
}

// unconditional jump (pp=position)
void SCR_CMD_01_Jump()
{
    gScriptPtr++;
    gScriptPtr = (u8 *)(*gScriptPtr + gScriptLR - 1);
}

// call subroutine (oo=object pointer)
void SCR_CMD_02_CallSubroutine()
{
    u32 old_lr;
    u8 *old_ptr;
    u8 oo_high, oo_low;
    u32 oo_ptr;
    u8 old_3001D30;

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

// return from subroutine
void SCR_CMD_03_Return()
{
    gUnknown_03001D30 = 3;
}

// delay (tt=time)
void SCR_CMD_04_Delay()
{
    u8 delay = *++gScriptPtr;
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

// object disappears when flag set
void SCR_CMD_05_SpawnIfFlagClear()
{
    ++gScriptPtr;
}

// object appears when flag set
void SCR_CMD_06_SpawnIfFlagSet()
{
    ++gScriptPtr;
}

void SCR_CMD_08_Dialogue()
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
            u32 idx = gGameInfo.PlayerInfo.Struct.CharactersInParty[i] - 1;
            if ( (u8)(idx) < 5u )
            {
                v5 = &gGameInfo.PlayerInfo.Struct.CharacterInfo[idx-1];
                v5[1].CurrentHP = v5[1].MaxHP;
                v5[1].CurrentPP = v5[1].MaxPP;
                v5[1].Condition = 0;
            }
        }
        PlayPulse1Sfx(7u);
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

// ask yes/no, jump if "no" selected or B pressed
void SCR_CMD_09_PromptYesNo()
{
    gTextDelayAfterWriteCharacterEnabled |= 0x80u;

#ifdef JAPANESE
    DrawTextWithIdWaitForButton((u8 *)gMsg_Menu_Yes_No);
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

// jump unless TALKing
void SCR_CMD_0A_JMP_NotTalking()
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

// jump unless CHECKing
void SCR_CMD_0B_JMP_NotChecking()
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

// jump unless using PSI (01=telepathy)
void SCR_CMD_0C_JMP_NotPSI()
{
    if (!( *gScriptPtr++ == gUnknown_03001D30 && *gScriptPtr + 0xC0 == gUnknown_03003188 ))
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gScriptPtr++;
    }
}

// jump unless using item
void SCR_CMD_0D_JMP_NotItem()
{
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

// jump unless flag set
void SCR_CMD_12_JMP_FlagClear()
{
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

// decrease counter
void SCR_CMD_13_DecCounter()
{
    gScriptPtr++;
    --gGameInfo.counters[*gScriptPtr];
}

// increase counter
void SCR_CMD_14_IncCounter()
{
    gScriptPtr++;
    ++gGameInfo.counters[*gScriptPtr];
}

// set counter to 0
void SCR_CMD_15_ClrCounter()
{
    gScriptPtr++;
    gGameInfo.counters[*gScriptPtr] = 0;
}

// jump if counter less than value
void SCR_CMD_16_JMP_LessThan()
{
    u8 val;
    ++gScriptPtr;
    val = *gScriptPtr++;
    if ( gGameInfo.counters[val] < *gScriptPtr )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

// change save meta value
void SCR_CMD_17_WriteSaveMeta()
{
    u8 idx;
    ++gScriptPtr;
    idx = *gScriptPtr++;
    gGameInfo.PlayerInfo.Raw[0][idx] = *gScriptPtr;
}

// choose character, jump if B pressed
void SCR_CMD_18_ChooseChara()
{
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

// select specific character
void SCR_CMD_19_SetCurrentCharacterId()
{
    ++gScriptPtr;
    gCurrentCharacterId = *gScriptPtr;
}

// jump unless character selected
void SCR_CMD_1A_JMP_NotChar()
{
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

// jump if no money added to bank acct since last call
void SCR_CMD_1B_JMP_DadMoneyClr()
{
    if ( gGameInfo.PlayerInfo.Struct.MoneyReadyToDepositLo | gGameInfo.PlayerInfo.Struct.MoneyReadyToDepositMid | gGameInfo.PlayerInfo.Struct.MoneyReadyToDepositHi )
    {
        ++gScriptPtr;
    }
    else
    {
        SCR_CMD_01_Jump();
    }
}

// input a number, jump if B pressed
void SCR_CMD_1C_PromptInputNum()
{
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

// load a number
void SCR_CMD_1D_LoadNum()
{
    ++gScriptPtr;
    gTempNumber = *gScriptPtr++;
    gTempNumber = gTempNumber + (*gScriptPtr << 8);
}

// jump if number less than value
void SCR_CMD_1E_JMP_Compare2Inputs()
{
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

// show money
void SCR_CMD_1F_ShowMoney()
{
    sTextState v0;

    SaveTextSystemState(&v0);
    DrawMoneyWindow();
    LoadTextSystemState(&v0);
}

// choose item from inventory, jump if B pressed
void SCR_CMD_20_ChooseItem()
{
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

// choose item from closet, jump if B pressed
void SCR_CMD_21_ChooseItemCloset()
{
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

// choose item from list, jump if B pressed
void SCR_CMD_22_ShowShop()
{
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

// jump unless item in character's inventory
#ifdef NON_MATCHING // reg-alloc
void SCR_CMD_23_JMP_ItemNotInCurrentCharaInv()
{
    u8 v0;
    u8 *ptr;
    u8 *itemIdPtr;
    u8 itemId;
    u32 charId;

    ++gScriptPtr;
    SelectItem(*gScriptPtr);
    gUnknown_030007D8 = -1;
    v0 = 0;
    itemIdPtr = &gCurrentItemId;
    charId = gCurrentCharacterId - 1;
    ptr = gGameInfo.PlayerInfo.Struct.CharacterInfo[charId].Inventory;
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
void SCR_CMD_23_JMP_ItemNotInCurrentCharaInv()
{
    asm(".include \"asm/non_matching/scripting/SCR_CMD_23_JMP_ItemNotInCurrentCharaInv.s\"");
}
#endif

//gCurrentItemId defined as const matches?
// jump unless item in closet
void SCR_CMD_24_JMP_ItemNotInStorage()
{
    u8 v0;

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

// select specific item
void SCR_CMD_25_LoadItem()
{
    SelectItem(*++gScriptPtr);
    if ( gCurrentItemId != *gScriptPtr )
    {
        gUnknown_030007D8 = -1;
    }
}

// jump unless item selected
void SCR_CMD_26_JMP_NotItemSelected()
{
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

NAKED
void SCR_CMD_27_JMP_ItemNotInInv()
{
    asm(".include \"asm/non_matching/scripting/SCR_CMD_27_JMP_ItemNotInInv.s\"");
}

// give money, jump if can't hold any more
void SCR_CMD_28_IncrementMoney()
{
    if ( (gGameInfo.PlayerInfo.Struct.Money + gTempNumber) >= 0x10000 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gGameInfo.PlayerInfo.Struct.Money = (gGameInfo.PlayerInfo.Struct.Money + gTempNumber);
        ++gScriptPtr;
    }
}

// take money, jump if not enough
void SCR_CMD_29_DecrementMoney()
{
    if ( (gGameInfo.PlayerInfo.Struct.Money - gTempNumber) < 0 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gGameInfo.PlayerInfo.Struct.Money = (gGameInfo.PlayerInfo.Struct.Money - gTempNumber);
        ++gScriptPtr;
    }
}

// give money, jump if can't hold any more
#define BANKED_MONEY (((gGameInfo.PlayerInfo.Struct.BankedMoneyMid << 8) | gGameInfo.PlayerInfo.Struct.BankedMoneyLo) + (gGameInfo.PlayerInfo.Struct.BankedMoneyHi << 16))
#define SET_BANKED_MONEY(val) \
    gGameInfo.PlayerInfo.Struct.BankedMoneyLo = val; \
    gGameInfo.PlayerInfo.Struct.BankedMoneyMid = val>>8; \
    gGameInfo.PlayerInfo.Struct.BankedMoneyHi = val>>16;
void SCR_CMD_2A_IncrementBankedMoney()
{
    s32 val = gGameInfo.PlayerInfo.Struct.BankedMoneyLo;
    val |= gGameInfo.PlayerInfo.Struct.BankedMoneyMid << 8;
    val += gGameInfo.PlayerInfo.Struct.BankedMoneyHi << 16;
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

// take money, jump if not enough
void SCR_CMD_2B_DecrementBankedMoney()
{
    s32 val;
    val = gGameInfo.PlayerInfo.Struct.BankedMoneyLo;
    val |= gGameInfo.PlayerInfo.Struct.BankedMoneyMid << 8;
    val += gGameInfo.PlayerInfo.Struct.BankedMoneyHi << 16;

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

// jump if item unsellable otherwise remove from inventory
void SCR_CMD_2C_JMP_CurrItemKey()
{
    const sItemData *item = &gItemData[gCurrentItemId];
    if ( (!(item->Flags & ITEM_IS_SELLABLE)) && (RemoveItemFromInventory(gCurrentCharacterId) >= 0) )
    {
        ++gScriptPtr;
    }
    else
    {
        SCR_CMD_01_Jump();
    }
}

void SCR_CMD_2D_TryGiveItem()
{
  int v0;

  if (gCurrentCharacterId < 6u)
  {
    for(v0 = 0; v0 < 8; v0++)
    {
        if(!gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].Inventory[v0])
        {
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].Inventory[v0] = gCurrentItemId;
            ++gScriptPtr;
            return;
        }
    }
dummy_label_911266:
    SCR_CMD_01_Jump();
  }
  else
  {
    v0 = 0;
    goto dummy_label_911266;
  }
}


// remove item from inventory, jump if not present
void SCR_CMD_2E_TryRemoveItem()
{
    if ( RemoveItemFromInventory(gCurrentCharacterId) < 0 )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

// add item to closet, jump if full
void SCR_CMD_2F_TryDepositItem()
{
    u8 v0;
    u8 *ptr;

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

// remove item from closet, jump if not present
void SCR_CMD_30_TryWithdrawItem()
{
    s32 idx;
    u8 *v2;

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

// select character's nn'th item (first is 0), jump if empty slot
void SCR_CMD_31_TrySelectCharaInvSlot()
{
    s32 idx; // r5
    u32 item;

    idx = *++gScriptPtr;
    item = gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].Inventory[idx];
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

// multiply number by nn/100
void SCR_CMD_32_MultiplyNumBy100()
{
    s32 v0;
    s32 nn;

    nn = *++gScriptPtr;

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

void SCR_CMD_33_JMP_CharaNotInParty()
{
  u8 idx;
  u8 *party;
  u32 charId;

  ++gScriptPtr;
  charId = gCurrentCharacterId = *gScriptPtr;

  idx = 0;
  while (1)
  {
    party = &gGameInfo.PlayerInfo.Struct.CharactersInParty[idx];
    if ((u8)charId != (*party))
    {
      if (++idx > 3)
      {
        SCR_CMD_01_Jump();
        return;
      }
    }
    else
    {
      break;
    }
  }

  ++gScriptPtr;
}

void SCR_CMD_34_JMP_NotUnk()
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

// jump unless touching object
void SCR_CMD_35_JMP_NotTouching()
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

void SCR_CMD_36_JMP_NotFacing()
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

// show 2-option menu, jump to p1 if second option selected or jump to p2 if B selected
void SCR_CMD_37_CustomMenu()
{
    u16 textId;
    u32 v2;

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

// jump if no items in inventory
void SCR_CMD_38_JMP_InvEmpty()
{
    u8 v0;
    u8 charId;
    u8 *charIdPtr;

    v0 = 0;
    while ( 1)
    {
        charIdPtr = (u8*)&gGameInfo;
        charIdPtr += 8; //wtf is this shit?
        //cardIdPtr = gGameInfo.PlayerInfo.Struct.CharactersInParty; //Why doesn't this match?
        charId = charIdPtr[v0];
        if(!charId || !gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].Inventory[0])
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

// jump if no items in closet
void SCR_CMD_39_JMP_StorageEmpty()
{
    if ( !gGameInfo.Closet[0] )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

// select nn'th character in party (first is 0), jump if not present
void SCR_CMD_3A_LoadCharaInParty()
{
    ++gScriptPtr;
    if ( !gGameInfo.PlayerInfo.Struct.CharactersInParty[*gScriptPtr] )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        gCurrentCharacterId = gGameInfo.PlayerInfo.Struct.CharactersInParty[*gScriptPtr++];
    }
}

// change object type (tt=type) e.g. 26=run away
void SCR_CMD_3B_SetObjectType()
{
    u8 tt = *++gScriptPtr;
    gUnknown_03000784->Type = tt;
    gUnknown_03000784->field_2 = gObject_Configs[tt];
    gUnknown_03000784->bitfield1 = gObject_Configs[tt] >> 8;
}

void SCR_CMD_3C_SetFadeType()
{
    ++gScriptPtr;
    gFade_Type = *gScriptPtr;
}

// teleport player
void SCR_CMD_3D_Teleport()
{
    union
    {
        u8 b[4];
        u16 w[2];
        u32 val;
    } temp;

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
    //gPlayerY += ((temp.val << 10) >> 26);
    gPlayerY = (((temp.val << 10) >> 26) -(5<<6)) + ((temp.val >> 22) << 6);
    // end

    gUnknown_03000840 = gUnknown_030034A8 = 0;
}

#ifdef NON_MATCHING
void SCR_CMD_3E_MoveObject()
{
    //TODO: Not attempted
}
#else
NAKED
void SCR_CMD_3E_MoveObject()
{
    asm(".include \"asm/non_matching/scripting/SCR_CMD_3E_MoveObject.s\"");
}
#endif

// signal another object (oo=object number)
void SCR_CMD_3F_JumpToObjectScript()
{
    ++gScriptPtr;
    gUnknown_030007EC = &gObjectMemory[*gScriptPtr];
    gUnknown_03001510 = 0;
    gUnknown_03001514 = 64;
}

// jump unless signaled
void SCR_CMD_40_JMP_NotSignaled()
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

// teleport to saved game location
void SCR_CMD_41_WarpToSaveSpot()
{
    gUnknown_030007A0 = -1;
    gPlayerX = gGameInfo.PlayerInfo.Struct.save_xpos_music + 0x40;
    gPlayerY = gGameInfo.PlayerInfo.Struct.save_ypos_direction + 0x80;
    gUnknown_03000840 = gGameInfo.field_2AE;
    gUnknown_030034A8 = gGameInfo.field_2AF;
    UpdatePartyLocationsAfterTeleport();
}

// add character to party, jump if party full
void SCR_CMD_42_AddChara()
{
    u8 i;
    u8 *ptr;

    ++gScriptPtr;
    gCurrentCharacterId = *gScriptPtr;
    i = 0;
    while ( 1 )
    {
        ptr = gGameInfo.PlayerInfo.Struct.CharactersInParty;
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

// remove character from party, jump if absent
void SCR_CMD_43_RemoveChara()
{
    u8 v0;
    u8 *ptr;
    u32 id;
    GlobalPlayerInfo * gpi;
    u8 temp;

    ++gScriptPtr;
    id = gCurrentCharacterId = *gScriptPtr;
    v0 = 0;
    while ( 1 )
    {
        gpi = &gGameInfo.PlayerInfo.Struct;
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
                gGameInfo.PlayerInfo.Struct.CharactersInParty[v0] = gGameInfo.PlayerInfo.Struct.CharactersInParty[v0+1];
                ++v0;
            }
            while ( v0 <= 2u );
        }
        break;
    }
    gGameInfo.PlayerInfo.Struct.CharactersInParty[v0] = 0;
    UpdateCharactersInParty();
    ++gScriptPtr;
}

// start battle (gg=enemy group)
void SCR_CMD_44_StartEncounter()
{
    s32 res;

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

// multiply by number of characters
void SCR_CMD_45_MultiplyByPartySize()
{
    s32 v0;
    u8 v1;
    u8 v2;
    u8 v3;

    v0 = 0;
    v1 = 0;
    do
    {
        v3 = gGameInfo.PlayerInfo.Struct.CharactersInParty[v1];
        v2 = v3 - 1;
        if ( v2 <= 4u && !(gGameInfo.PlayerInfo.Struct.CharacterInfo[v3-1].Condition & CONDITION_UNCONSCIOUS) )
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

// rocket (dd=direction)
void SCR_CMD_46_MoveRocket()
{
    sub_8F0302C(0);
    ++gScriptPtr;
    gUnknown_0300317C = 45;
    gUnknown_030007C0 = 1;
    gUnknown_03000800 = 0;
}

// airplane
void SCR_CMD_47_DoPlane()
{
    sub_8F0302C(0);
    ++gScriptPtr;
    gUnknown_0300317C = 9;
    gUnknown_030007C0 = 4;
    gUnknown_03000800 = 0x8AFCu;
    gUnknown_030007A4 = *gScriptPtr;
    gUnknown_030034A4 = 4;
}

// tank
void SCR_CMD_48_DoTank()
{
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

// boat
void SCR_CMD_49_DoBoat()
{
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

// train
void SCR_CMD_4A_DoTrain()
{
    DelayByAmount(0x1Eu);
    sub_8F07374();
    gUnknown_030007A8 = 1;
}

// elevator
void SCR_CMD_4B_DoElevator()
{
    sub_8F0302C(1u);
    ++gScriptPtr;
    gUnknown_0300317C = 15;
    gUnknown_030007C0 = 1;
    gUnknown_030007A4 = *gScriptPtr;
}

// no vehicle
void SCR_CMD_4C_DismountVehicle()
{
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

void SCR_CMD_4D_EndPlane()
{
    gUnknown_030034A4 = -gUnknown_030034A4;
    gUnknown_030007C0 = 2;
}

void SCR_CMD_4E_TeleportUpdate()
{
    UpdatePartyLocationsAfterTeleport();
}

void SCR_CMD_4F_JMP_HasMoved()
{
    u8 *v0;
    u16 v1;
    u16 v2;

    v0 = (u8*)gUnknown_03000784->ScriptPtr;
    v1 = (((v0[1] << 8) | v0[0]));
    v2 = (((v0[3] << 8) | v0[2]));
    if ( ((v1 ^ gUnknown_03000784->X) & 0xFFC0)
      || ((v2 ^ gUnknown_03000784->Y) & 0xFFC0) )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

// jump if at less than max HP
void SCR_CMD_50_JMP_CharaHPNotFull()
{
    if ( gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].CurrentHP < gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].MaxHP )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

// heal HP
void SCR_CMD_51_RecoverHP()
{
    s32 curHP;
    u16 maxHP;

    ++gScriptPtr;
    curHP = gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].CurrentHP + *gScriptPtr;
    maxHP = gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].MaxHP;
    if ( curHP > maxHP )
    {
        curHP = maxHP;
    }
    gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].CurrentHP = curHP;
    if ( gUnknown_03003170 )
    {
        gUnknown_03003170 |= 0x80u;
        sub_8F0B004();
    }
}

// jump if character has status
void SCR_CMD_52_JMP_CharaHasStatus()
{
    ++gScriptPtr;
    if ( gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].Condition & *gScriptPtr )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

// remove statuses not in ss
void SCR_CMD_53_CharaHealStatusExcept()
{
    u32 cond;
    u32 ss;
    u32 maxHP;

    ++gScriptPtr;
    cond = gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].Condition;
    ss = *gScriptPtr;
    gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].Condition = cond & ss;
    if ( !(*gScriptPtr & CONDITION_UNCONSCIOUS) )
    {
        //If character was unconscious then revive them
        if ( cond & CONDITION_UNCONSCIOUS )
        {
            sub_8F091D0(gCurrentCharacterId);
        }
        else
        {
            maxHP = gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].MaxHP;
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].CurrentHP = maxHP;
        }
    }
    if ( gUnknown_03003170 )
    {
        gUnknown_03003170 |= 0x80u;
        sub_8F0B004();
    }
}

// jump if character below level
void SCR_CMD_54_JMP_CharaLvLessThan()
{
    ++gScriptPtr;
    if ( gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].Level < *gScriptPtr )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

// sleep
void SCR_CMD_55_Sleep()
{
    WaitForActionButtonPress();
    FadeOut();
    sub_8F0B040();
    sub_8F06FF0();
    FadeIn();
}

// save game
void SCR_CMD_56_SaveGame()
{
    gGameInfo.PlayerInfo.Struct.xpos_music = ((gUnknown_03000788 - 0x40) & 0xFFC0);
    gGameInfo.PlayerInfo.Struct.ypos_direction = ((gUnknown_03001508 - 0x80) & 0xFFC0);
    gGameInfo.PlayerInfo.Struct.xpos_music |= (gCurrentBgMusic & 0x3F);
    gGameInfo.PlayerInfo.Struct.ypos_direction |= (gUnknown_030007A4 & 7);
    gGameInfo.field_2AC = (gUnknown_03000788 - 0x40) & 0x3F;
    gGameInfo.field_2AD = (gUnknown_03001508 + 0x80) & 0x3F;
    gGameInfo.field_288 = 8;
    M1_CalculateChecksumAndWriteSave(&gGameInfo, gUnknown_030007E4);
}

// load character's exp needed for next level
void SCR_CMD_57_LoadExpForNextLevel()
{
    u32 level;
    u32 v1;
    u32 v2;
    u32 v3;
    u16 *ptr;

    level = gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].Level;
    if ( level >= 99 )
    {
        ptr = &gTempNumber;
        v3 = 0;
    }
    else
    {
        v1 = (level + 2) * (level + 1) * (level + 1);
        v2 = gOtherItemData[gCurrentCharacterId + 56].CharacterRate.exp;
        v1 = (v2*v1) >> 8;
        v2 = gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].ExpLo << 0;
        v2 |= gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].ExpMid << 8;
        v2 += gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].ExpHi << 16;
        ptr = &gTempNumber;
        v3 = v1 - v2;
    }
    *ptr = v3;
    gGameInfo.PlayerInfo.Struct.MoneyReadyToDepositHi = 0;
    gGameInfo.PlayerInfo.Struct.MoneyReadyToDepositMid = 0;
    gGameInfo.PlayerInfo.Struct.MoneyReadyToDepositLo = 0;
    gGameInfo.PlayerInfo.Struct.save_xpos_music = ((gUnknown_03000788 - 0x40) & 0xFFC0);
    gGameInfo.PlayerInfo.Struct.save_ypos_direction = ((gUnknown_03001508 - 0x80) & 0xFFC0);
    gGameInfo.PlayerInfo.Struct.save_xpos_music |= (gCurrentBgMusic & 0x3F);
    gGameInfo.PlayerInfo.Struct.save_ypos_direction |= (gUnknown_030007A4 & 7);
    gGameInfo.field_2AE = (gUnknown_03000788 - 0x40) & 0x3F;
    gGameInfo.field_2AF = (gUnknown_03001508 - 0x80) & 0x3F;
}

void SCR_CMD_58_LoadMoneyToTemp()
{
    // load money
    gTempNumber = gGameInfo.PlayerInfo.Struct.Money;
}

void SCR_CMD_59_InflictCondition()
{
    // inflict status on character
    ++gScriptPtr;
    gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].Condition |= *gScriptPtr;
}

void SCR_CMD_5A_ChangeBgMusic()
{
    // change background music
    ++gScriptPtr;
    ChangeBgMusic(*gScriptPtr);
}

void SCR_CMD_5B_QueueNoiseSfx()
{
    // play sound (1)
    ++gScriptPtr;
    PlayNoiseSfx(*gScriptPtr);
}

void SCR_CMD_5C_QueuePulseSfx()
{
    // play sound (2)
    ++gScriptPtr;
    PlayPulse1Sfx(*gScriptPtr);
}

void SCR_CMD_5D_QueueTriangleSfx()
{
    // play sound (3)
    ++gScriptPtr;
    PlayTriangleSfx(*gScriptPtr);
}

//Stubbed - Not in retail rom
/*
void SCR_CMD_5E()
{
    //This exists in the NES version
}
*/

// teach characters 1 and 2 to Teleport
void SCR_CMD_5F_TeachTeleport()
{
    gGameInfo.PlayerInfo.Struct.CharacterInfo[0].PsiLearned[0] |= 0x20u;
    gGameInfo.PlayerInfo.Struct.CharacterInfo[1].PsiLearned[0] |= 0x20u;
}

// jump if at less than max PP
void SCR_CMD_60_JMP_CharaPPNotFull()
{
    if ( gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].CurrentPP < gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].MaxPP )
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
    }
}

// heal PP
void SCR_CMD_61_RecoverPP()
{
    s32 curPP;
    u16 maxPP;

    ++gScriptPtr;
    curPP = gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].CurrentPP + *gScriptPtr;
    maxPP = gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].MaxPP;
    if ( curPP > maxPP )
    {
        curPP = maxPP;
    }
    gGameInfo.PlayerInfo.Struct.CharacterInfo[gCurrentCharacterId - 1].CurrentPP = curPP;
    if ( gUnknown_03003170 )
    {
        gUnknown_03003170 |= 0x80u;
        sub_8F0B004();
    }
}

// take weapon, jump if none
void SCR_CMD_62_RemoveWeapon()
{
    u8 weapon;
    u32 idx;

    idx = gGameInfo.PlayerInfo.Struct.CharactersInParty[0] - 1;
    weapon = gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].EquipedItems[0];
    if ( !gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].EquipedItems[0] ) //This duplication is required
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
        gGameInfo.Weapon = weapon;
        gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].EquipedItems[0] = 0;
    }
}

// select confiscated weapon, jump if none
void SCR_CMD_63_LoadConfiscatedWeapon()
{
    u8 weapon = gGameInfo.Weapon;
    if (!weapon) {
        SCR_CMD_01_Jump();
    } else {
        gScriptPtr++;
        SelectItem(weapon);
        gUnknown_030007D8 = -1;
    }
}

// live show
void SCR_CMD_64_DoLiveHouse()
{
    sObjectMemory *v0;
    u8 v4;

    v0 = gUnknown_03000784;
    v0->X = v0->ScriptPtr[0];
    v0->X += (v0->ScriptPtr[1] << 8);
    v0->Y = v0->ScriptPtr[2];
    v0->Y += (v0->ScriptPtr[3] << 8);
    v4 = gUnknown_03000818;
    gUnknown_03000818 = 16;
    ChangeBgMusic(0xFFu);
    DelayByAmount(60);
    ChangeBgMusic(0x23u);
    gUnknown_030007B0 = gUnknown_0300081C;
    gUnknown_030007BC = gUnknown_0300081C - 16;
    if ( gUnknown_030007BC < 0 )
    {
        gUnknown_030007BC = gUnknown_0300081C + 52;
    }
    gUnknown_03000838 = gUnknown_0300081C - 32;
    if ( gUnknown_03000838 < 0 )
    {
        gUnknown_03000838 = gUnknown_0300081C + 36;
    }
    gPositionBuffer[gUnknown_030007B0][1] &= ~3;
    sub_8F07144(0, 0);
    gPositionBuffer[gUnknown_030007BC][1] &= ~3;
    sub_8F07144(0, 0);
    gPositionBuffer[gUnknown_03000838][1] &= ~3;
    sub_8F07144(0, 0);
    sub_8F07144(0, 0);
    gPositionBuffer[gUnknown_030007B0][1] |= 2;
    sub_8F07144(0, 0);
    gPositionBuffer[gUnknown_030007BC][1] |= 2;
    sub_8F07144(0, 0);
    gPositionBuffer[gUnknown_03000838][1] |= 2;
    sub_8F07144(0, 0);
    sub_8F07144(0, 0);
    sub_8F07058(1u);
    sub_8F07058(1u);
    sub_8F07058(2u);
    sub_8F07058(2u);
    sub_8F07058(3u);
    sub_8F07058(6u);
    sub_8F07058(2u);
    sub_8F07058(2u);
    sub_8F07058(3u);
    sub_8F07058(6u);
    sub_8F07058(1u);
    sub_8F07058(4u);
    sub_8F07058(4u);
    sub_8F07058(5u);
    sub_8F07058(5u);
    sub_8F07058(4u);
    sub_8F07058(4u);
    sub_8F07058(5u);
    sub_8F07058(5u);
    sub_8F07144(0, 0);
    sub_8F07144(0, 0);
    sub_8F07058(2u);
    sub_8F07058(2u);
    sub_8F07058(3u);
    sub_8F07058(6u);
    sub_8F07058(1u);
    gPositionBuffer[gUnknown_030007B0][1] &= ~3;
    sub_8F07144(0, 0);
    gPositionBuffer[gUnknown_030007BC][1] &= ~3;
    sub_8F07144(0, 0);
    gPositionBuffer[gUnknown_03000838][1] &= ~3;
    sub_8F07144(0, 0);
    sub_8F07144(0, 0);
    gPositionBuffer[gUnknown_030007B0][1] |= 2;
    sub_8F07144(0, 0);
    gPositionBuffer[gUnknown_030007BC][1] |= 2;
    sub_8F07144(0, 0);
    gPositionBuffer[gUnknown_03000838][1] |= 2;
    sub_8F07144(0, 0);
    sub_8F07144(0, 0);
    DelayByAmount(45);
    gUnknown_03000818 = v4;
    gPositionBuffer[gUnknown_030007B0][0] &= ~3;
    gPositionBuffer[gUnknown_030007B0][1] &= ~3;
    gPositionBuffer[gUnknown_030007B0][1] |= 1;
    gPositionBuffer[gUnknown_030007BC][0] &= ~3;
    gPositionBuffer[gUnknown_030007BC][1] &= ~3;
    gPositionBuffer[gUnknown_030007BC][1] |= 1;
    gPositionBuffer[gUnknown_03000838][0] &= ~3;
    gPositionBuffer[gUnknown_03000838][1] &= ~3;
    gPositionBuffer[gUnknown_03000838][1] |= 1;
}

// jump unless all 8 melodies learned
void SCR_CMD_65_JMP_NotHas8Melodies()
{
    if ( gGameInfo.Flags[30] != 0xFF )           // MelodiesUnlocked
    {
        SCR_CMD_01_Jump();
    }
    else
    {
        ++gScriptPtr;
        gGameInfo.PlayerInfo.Struct.save_xpos_music = 0xD2;
        gGameInfo.PlayerInfo.Struct.save_ypos_direction = 0x4780;
        gGameInfo.field_2AE = 0;
        gGameInfo.field_2AF = 0;
    }
}

// register your name
void SCR_CMD_66_RegisterName()
{
    sTextState state;

    SaveTextSystemState(&state);
    sub_8F0BC04((u8*) &gGameInfo.PlayerInfo.Struct.player_name, 28u);
    LoadTextSystemState(&state);
    gTextDelayAfterWriteCharacterEnabled |= 0x80u;
}

// darken palette (Magicant end)
void SCR_CMD_67_DarkenPalettes() {
    s32 i;

    for(i = 0; i < 8; i++) {
        DarkenPalette((u16 *)BG_PLTT, gNESPalette[15], 0x40, 1);
        DelayByAmount(8);
    }
}

// land mine
void SCR_CMD_68_DoLandmine()
{
    u8 i;
    u32 v1;

    sub_8F099D8();
    for(i = 0; i < 4; i++)
    {
        v1 = gGameInfo.PlayerInfo.Struct.CharactersInParty[i];
        v1--;
        if ( (u8)v1 < 5u
          && !(gGameInfo.PlayerInfo.Struct.CharacterInfo[v1].Condition & CONDITION_UNCONSCIOUS) )
        {
            gGameInfo.PlayerInfo.Struct.CharacterInfo[v1].Condition |= CONDITION_PARALYZED;
        }
    }
    sub_8F03128();
    sub_8F09AA8();
    for(i = 0; i < 4; i++)
    {
        v1 = gGameInfo.PlayerInfo.Struct.CharactersInParty[i];
        v1--;
        if ( (u8)v1 < 5u
          && !(gGameInfo.PlayerInfo.Struct.CharacterInfo[v1].Condition & CONDITION_UNCONSCIOUS) )
        {
            gGameInfo.PlayerInfo.Struct.CharacterInfo[v1].Condition &= ~CONDITION_PARALYZED;
        }
    }
}

// horiz. shake (EVE?)
void SCR_CMD_69_Quake()
{
    s32 i; // r4

    for(i = 3; i >= 0; i--)
    {
        REG_BG2HOFS = ((gUnknown_03000788 / 4u) % 16u) ^ ((i * 2u) & 4u);
        sub_8F040E0();
    }
}

NAKED
void SCR_CMD_6A()
{
    asm(".include \"asm/non_matching/scripting/SCR_CMD_6A.s\"");
}

void SCR_CMD_6B_Dummy()
{
}

void SCR_CMD_6C()
{
    gUnknown_03003170 &= 0x7Fu;
}

void SCR_CMD_6D_SaveCurrentBgMusicId()
{
    gOldBgMusic = gCurrentBgMusic;
}

void SCR_CMD_6E_PlayOldBgMusicId()
{
    ChangeBgMusic(gOldBgMusic);
}

void SCR_CMD_6F()
{
    gUnknown_03003170 &= 0x7Fu;
    gTextPlaySfx = 0;
    DrawPartyInfoWindow();
}

void SCR_CMD_70()
{
    u8 v0;
    u8 v1;

    for(v0 = 0; v0 < 3; v0++)
    {
        for(v1 = 21; v1 < 32; v1++)
        {
            gBg0TilemapBuffer[v1 + 32 * v0] = 0;
        }
    }
    UpdateBg0Tilemap();
}
