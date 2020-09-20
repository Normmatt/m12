#include "gba/gba.h"
#include "m4a.h"
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

