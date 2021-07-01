#include "gba/gba.h"
#include "m4a.h"
#include "definitions.h"

void NothingHappened()
{
    DrawTextWithId(0x398u); // "@Nothing happened.{BREAK}"
}

void sub_8F080A4()
{
    s8 i;
    u16 worldX = (gUnknown_03000788 + 4 * (gUnknown_08F1B670[gUnknown_030007A4 / 2] + 0x78));
    u16 worldY = (gUnknown_03001508 + 4 * (gUnknown_08F1B674[gUnknown_030007A4 / 2] + 0x58));
    s8 hasRunOnce = 0;

    LOOP:
    {
        gUnknown_03003170 = 0;
        for(i = 0; i < 40; i++)
        {
            gUnknown_03000784 = &gUnknown_03001D40[i];
            if ( !gUnknown_03000784->Type )
            {
                break;
            }


            if ( !(gUnknown_03000784->Type & 0x80) && (gUnknown_03000784->field_14 & 0x40) )
            {
                u16 x1 = worldX - gUnknown_03000784->X;
                u16 y1 = worldY - gUnknown_03000784->Y;
                if(x1 < 64 && y1 < 64)
                {
                    ExecuteScript(0xDu);
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
        NothingHappened();
    }
}

void UseBread()
{
    s32 v0;

    if ( gConsumableType )
    {
        sub_8F08E24(0x14u);
    }
    else
    {
        for(v0 = 0; v0 < 8; v0++)
        {
            if ( gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].Inventory[v0] == 3 ) // BreadCrumbs
            {
                DrawTextWithId(0x6BCu); // "@You need to throw out your{BREAK}old bread crumbs before you{BREAK}can use other bread.{BREAK}"
                return;
            }
        }
        v0 = GetPositionOfCurrentItemFromInventoryOrCloset(gUnknown_03003174);
        if ( v0 >= 0 )
        {
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].Inventory[v0] = 3;// BreadCrumbs
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].X = (gUnknown_03000788 & 0xFFC0) + (gCurrentBgMusic & 0x3F);
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].Y = (gUnknown_03001508 & 0xFFC0) + (gUnknown_030007A4 & 7);
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].field_1A = gUnknown_03000788 & 0x3F;
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].field_1B = gUnknown_03001508 & 0x3F;
            DrawTextWithId(0x6BBu); // "@{0x03}{0x1A} broke the bread into{BREAK}crumbs and started a trail{BREAK}out of them.{BREAK}"
        }
    }
}

void sub_8F082B0()
{
    if ( gConsumableType )
    {
        sub_8F08E24(0xFu);
    }
    else
    {
        sub_8F080A4();
    }
}

void sub_8F082D0()
{
    gGameInfo.PlayerInfo.Struct.field_19 = 10;
    RemoveItemFromInventory(gUnknown_03003174);
    DrawTextWithId(0x38Eu); // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
}

void sub_8F082F8()
{
    gConsumableType = 2;
    sub_8F08E24(10);
}

void sub_8F08310()
{
    sub_8F08E24(20);
}

void sub_8F0831C()
{
    gConsumableType = 3;
    sub_8F08E24(30);
}

void sub_8F08334()
{
    sub_8F08E24(60);
}

void sub_8F08340()
{
    gConsumableType = 2;
    sub_8F08E24(100);
}

void sub_8F08358()
{
    gConsumableType = 3;
    sub_8F08E24(-1);
}

void sub_8F08374()
{
    s16 v0;
    u8 v1;
    s32 v2;
    u16 hpdiff;

    v0 = gUnknown_030007D8;
    v1 = gUnknown_03003174;
    v2 = sub_8F0BA2C();
    if ( v2 <= 0 )
    {
        ++gUnknown_03001504;
    }
    else
    {
        if ( gGameInfo.PlayerInfo.Struct.CharacterInfo[(v2 - 1)].Condition & CONDITION_UNCONSCIOUS )
        {
            gCurrentCharacterId = v2;
            DrawTextWithId(0x6A6u); // "@{0x03}{0x1A} gave the {0x03}{0x1C}{BREAK}to {0x03}{0x1B}.{BREAK}"
            NothingHappened();
        }
        else
        {
            gUnknown_03003174 = v2;
            gTempNumber = sub_8F021C4(0x1Eu);
            hpdiff = (gGameInfo.PlayerInfo.Struct.CharacterInfo[(v2 - 1)].MaxHP - gGameInfo.PlayerInfo.Struct.CharacterInfo[(v2 - 1)].CurrentHP);
            if ( gTempNumber > hpdiff )
            {
                gTempNumber = hpdiff;
            }
            gGameInfo.PlayerInfo.Struct.CharacterInfo[(v2 - 1)].CurrentHP += gTempNumber;
            DrawTextWithId(0x6BAu); // "@{0x03}{0x1A} took a Magic Herb{BREAK}from the Big Bag and used{BREAK}it.{BREAK}"
            PlaySfxById1(7u);
            sub_8F0B004();
            gUnknown_03003170 |= 0x80u;
            DrawTextWithId(0x6B3u); // "@{0x03}{0x1A}'s HP{BREAK}"
            gTextDelayAfterWriteCharacterEnabled |= 0x80u;
            DrawTextWithId(0x6B1u); // "was recovered by {0x03}{0x1E}.{BREAK}"
        }
        --gGameInfo.PlayerInfo.Struct.CurrentItemId;
        if ( !gGameInfo.PlayerInfo.Struct.CurrentItemId )
        {
            DrawTextWithId(0x6C1u); // "@The Big Bag disappeared{BREAK}after being emptied.{BREAK}"
            gUnknown_030007D8 = v0;
            RemoveItemFromInventory(v1);
        }
    }
}

void sub_8F0847C()
{
    AttemptRemovalOfCondition(2u, 0x6C3u); // "@The poison was removed from{BREAK}{0x03}{0x1A}'s body.{BREAK}"
}

void sub_8F08490()
{
    AttemptRemovalOfCondition(1u, 0x6C4u); // "@{0x03}{0x1A}'s cold went away.{BREAK}"
}

void sub_8F084A4()
{
    u16 ppdiff;

    DrawTextWithId(0x6C5u); // "@{0x03}{0x1A} gripped the{BREAK}PSI Stone.{BREAK}"
    gTempNumber = sub_8F021C4(0x14u);
    ppdiff = gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].MaxPP - gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].CurrentPP;
    if ( gTempNumber > ppdiff )
    {
        gTempNumber = ppdiff;
    }
    gUnknown_03003170 |= 0x80u;
    DrawTextWithId(0x6B4u); // "@{0x03}{0x1A}'s PP{BREAK}
    gTextDelayAfterWriteCharacterEnabled |= 0x80u;
    DrawTextWithId(0x6B1u); // "was recovered by {0x03}{0x1E}.{BREAK}"
    gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].CurrentPP += gTempNumber;
    if ( (Random() >> 24) <= 24 )
    {
        DrawTextWithId(0x6C6u); // "@The PSI Stone turned into{BREAK}an ordinary rock.{BREAK}"
        RemoveItemFromInventory(gUnknown_03003174);
    }
}

void sub_8F0854C()
{
    sub_8F0922C(0xFu, 0x6BEu); // "@{0x03}{0x1A}'s Force{BREAK}", "@{0x03}{0x1A} put the ribbon in{BREAK}her hair.{BREAK}"
}

void sub_8F08560()
{
    sub_8F0922C(0xBu, 0x6AFu); // "@{0x03}{0x1A}'s Fight{BREAK}", "@{0x03}{0x1A} ate the {0x03}{0x1C}.{BREAK}"
}

#ifdef ENGLISH
    // In Japanese, the word for drink is the same for swallow, which makes it weird when
    // you try to use an HP capsule or something and it says you drank it. This little hack
    // will make it say "swallow" if it's appropriate.

    // see if the item is between 4E and 52, which are capsules
    // if it is, then load the "swallow" line
    // if not, then load the normal "drink" line
    #define swallow_item() ((gCurrentItemId >= 0x4E && gCurrentItemId <= 0x52) ? 0x6AE : 0x6B0)
#else
    #define swallow_item() (0x6B0)
#endif

void sub_8F08574()
{
    sub_8F0922C(0xCu, swallow_item()); // "@{0x03}{0x1A}'s Speed{BREAK}", "@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}"
}

void sub_8F08584()
{
    sub_8F0922C(0xDu, swallow_item()); // "@{0x03}{0x1A}'s Wisdom{BREAK}", "@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}"
}

void sub_8F08594()
{
    sub_8F0922C(0xEu, swallow_item()); // "@{0x03}{0x1A}'s Strength{BREAK}", "@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}"
}

void sub_8F085A4()
{
    sub_8F0922C(0xFu, swallow_item()); // "@{0x03}{0x1A}'s Force{BREAK}", "@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}"
}

void sub_8F085B4()
{
    // "@{0x03}{0x1A}'s Fight{BREAK}"

    // "@{0x03}{0x1A} drank the{BREAK}
    // {0x03}{0x1C}.{BREAK}"
    sub_8F0922C(0xBu, swallow_item());
}

void GrandFatherDiary()
{
    // "@Most of the diary is{BREAK}
    // unreadable, but one part{BREAK}
    // did stand out:{BREAK}
    // {WAIT}@…The password...{BREAK}
    // {WAIT}Where is the god's tail,{BREAK}
    // {WAIT}that which was left behind{BREAK}
    // by the ship that soars{BREAK}
    // the heavens?”{BREAK}"
    DrawTextWithId(0x6CAu);
}

void sub_8F085D4()
{
    if ( CanTeleport() )
    {
        if ( gGameInfo.Flags[28] & 0x80 )
        {
            NothingHappened();
        }
        else
        {
            sub_8F09484(6u);
            DrawTextWithId(0x38Eu); // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
            gUnknown_030007A0 = -1;
            gUnknown_030007E8 = 2;
            gPlayerX = 0x9E89u;
            gPlayerY = 0xA8C4u;
            gUnknown_03000840 = gUnknown_030034A8 = 0;
            UpdatePartyLocationsAfterTeleport();
        }
    }
}

void sub_8F08664()
{
    s32 v0;
    s32 v1;
    s32 v2;
    s32 v3;

    RemoveItemFromInventory(gUnknown_03003174);
    DrawTextWithId(0x6BDu); // "@{0x03}{0x16} followed the trail{BREAK}of bread crumbs back to{BREAK}where it started.{BREAK}"
    gUnknown_030007A0 = -1;
    gUnknown_030007E8 = 1;
    gPlayerX = gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].X;
    gPlayerY = gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].Y;
    gUnknown_03000840 = gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].field_1A;
    gUnknown_030034A8 = gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].field_1B;
    v0 = gPlayerX - 0x240;
    if ( v0 < 0 )
    {
        v0 = gPlayerX + 0x1BF;
    }
    if ( (v0 >> 10) == 0x38 ) // 0xE000
    {
        v1 = gPlayerY - 0x2C0;
        if ( v1 < 0 )
        {
            v1 = gPlayerY + 0x13F;
        }
        if ( (v1 >> 10) == 7 ) // 0x1C00
        {
            v2 = gUnknown_03000788 - 0x240;
            if ( v2 < 0 )
            {
                v2 = gUnknown_03000788 + 0x1BF;
            }
            if ( (v2 >> 10) != 0x38 ) // 0xE000
            {
                v3 = gUnknown_03001508 - 0x2C0;
                if ( v3 < 0 )
                {
                    v3 = gUnknown_03001508 + 0x13F;
                }
                if ( (v3 >> 10) != 7 ) // 0x1C00
                {
                    gPlayerX = (gPlayerX & 0x3F) + -0x5680;
                    gPlayerY = 0xF446u;
                    gUnknown_03000840 = 0;
                    gUnknown_030034A8 = 0;
                }
            }
        }
    }
    if ( ((gPlayerX - 0x60) & 0xFF00) == 0x4E00 && ((gPlayerY - 0x100) & 0xFF00) == 0x5900 )
    {
        gPlayerX = (gPlayerX & 0x3F) + 0x4E80;
        gPlayerY = 0x5AC4;
        gUnknown_03000840 = 0;
        gUnknown_030034A8 = 0;
    }
}

void JustTurnThePowerOff()
{
    // "@…Just turn the power off!”{BREAK}"
    DrawTextWithId(0x6BFu);
}

void FigureOutLengthsOfManyThings()
{
    // "@You were able to figure out{BREAK}
    // the lengths of many things.{BREAK}"
    DrawTextWithId(0x6C0u);
}

void HandleMap()
{
    s16 hofs;
    s16 vofs;
    s16 v3; // r8
    u16 pal[2][8] = {
        {0x360F, 0x2A30, 0x360F, 0x2A30, 0x360F, 0x1630, 0x360F, 0x1630},
        {0x210F, 0x0A02, 0x300F, 0x3030, 0x210F, 0x2121, 0x210F, 0x2121}
    };

    if ( (u8)(gUnknown_030007F8 - 1) > 1 )
    {
        DrawTextWithId(0x6CEu); // "@This location is not on the{BREAK}map.{BREAK}"
        while ( !(gKeysDown & (L_BUTTON|START_BUTTON|SELECT_BUTTON|B_BUTTON|A_BUTTON)) )
        {
            sub_8F040E0();
            UpdateInput();
        }
        sub_8F0B040();
    }
    else
    {
        FadeOut();
        sub_8F0B040();
        REG_DISPCNT = 0;
        LoadPalette((u8*)pal[0], (u16 *)0x5000080);
        LoadPalette((u8*)pal[1], (u16 *)0x5000280);
        BitUnpack((void *)gMapTiles, (void *)0x600E000, 192);
        gUnknown_03000808 = 0x4300;
        sub_8F00EE0((u8 *)gUnknown_08F5C71C, (u16 *)0x6002000);
        if ( gUnknown_03000788 < 0xF000u )
        {
            hofs = 4;
        }
        else
        {
            hofs = 8;
        }
        if ( gUnknown_03001508 < 0x3E00u )
        {
            vofs = 0;
        }
        else if ( gUnknown_03001508 < 0xA600u )
        {
            vofs = 32;
        }
        else
        {
            vofs = 80;
        }
        REG_BG3HOFS = hofs;
        REG_BG3VOFS = vofs;
        sub_8F019B8();
        gSpriteBuffer[0].x = ((gUnknown_03000788 / 256) - hofs - 6);
        gSpriteBuffer[0].y = ((gUnknown_03001508 / 256) - vofs - 22);
        gSpriteBuffer[0].paletteNum = 4;
        gSpriteBuffer[0].hflip = 0;
        gSpriteBuffer[0].vflip = 0;
        gSpriteBuffer[0].priority = 0;
        gSpriteBuffer[0].tileNum = 0x15F;
        REG_DISPCNT = 0x1800;
        FadeIn();
        v3 = 0;
        while ( 1 )
        {
            gSpriteBuffer[0].x = ((gUnknown_03000788 / 256) - hofs - 6);
            gSpriteBuffer[0].y = ((gUnknown_03001508 / 256) - vofs - 22);
            if ( v3 & 8 )
            {
                gSpriteBuffer[0].paletteNum ^= 1;
            }
            sub_8F040E0();
            DmaCopy32(3, gSpriteBuffer, OAM, OAM_SIZE);
            REG_BG3HOFS = hofs;
            REG_BG3VOFS = vofs;
            UpdateInput();
            if ( gKeysDown & (L_BUTTON|START_BUTTON|SELECT_BUTTON|B_BUTTON|A_BUTTON) )
            {
                break;
            }
            if ( gKeysRepeat & DPAD_RIGHT )
            {
                hofs++;
                if ( hofs > 8 )
                {
                    hofs = 8;
                }
            }
            if ( gKeysRepeat & DPAD_LEFT )
            {
                hofs--;
                if ( hofs < 0 )
                {
                    hofs = 0;
                }
            }
            if ( gKeysRepeat & DPAD_UP )
            {
                vofs--;
                if ( vofs < 0 )
                {
                    vofs = 0;
                }
            }
            if ( gKeysRepeat & DPAD_DOWN )
            {
                vofs++;
                if ( vofs > 80 )
                {
                    vofs = 80;
                }
            }
            v3++;
        }
        FadeOut();
        sub_8F03128();
        REG_DISPCNT = 0x1500;
        FadeIn();
    }
}

void PlayOcarinaOfHope()
{
    u8 old_music;

    DrawTextWithId(0x6CCu); // "@You played the Ocarina of{BREAK}Hope.{BREAK}"
    old_music = gCurrentBgMusic;
    ChangeBgMusic(1u);
    DrawTextWithId(0x6CDu); // "@Did you catch that?{BREAK}"
    ChangeBgMusic(old_music);
}

void sub_8F08AE8()
{
    u8 i;
    sCharacterStatusInfo *v2;

    DrawTextWithId(0x38Eu); // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
    for(i = 0; i < 4; i++)
    {
        u32 idx = gGameInfo.PlayerInfo.Struct.CharactersInParty[i] - 1;
        if ( (u8)(idx) < 5u )
        {
            v2 = &gGameInfo.PlayerInfo.Struct.CharacterInfo[idx-1];
            v2[1].CurrentHP = v2[1].MaxHP;
            v2[1].CurrentPP = v2[1].MaxPP;
            v2[1].Condition = CONDITION_NONE;
        }
    }
    DrawTextWithId(0x6D8u); // "@The entire party was{BREAK}healed!{BREAK}"
    PlaySfxById1(7u);
    sub_8F0B004();
    gUnknown_03003170 |= 0x80u;
    UpdateCharactersInParty();
    sub_8F03128();
    RemoveItemFromInventory(gUnknown_03003174);
}

void sub_8F08B74()
{
    if ( CanTeleport() )
    {
        DrawTextWithId(0x38Eu); // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
        if ( gGameInfo.PlayerInfo.Struct.CharacterInfo[0].Condition & CONDITION_UNCONSCIOUS )
        {
            DrawTextWithId(0x398u); // "@Nothing happened.{BREAK}"
        }
        else
        {
            DrawTextWithId(0x6D9u); // "@{0x03}{0x10} sensed a faint{BREAK}memory of his{BREAK}great-grandfather!{BREAK}"
            sub_8F09484(7u);
            sub_8F09484(6u);
            gUnknown_030007A0 = -1;
            gUnknown_030007E8 = 2;
            if ( gGameInfo.Flags[18] & 0x20 )
            {
                gPlayerX = 0xEF0B;
                gPlayerY = 0x99C4;
            }
            else
            {
                gPlayerX = 0xEACB;
                gPlayerY = 0xC884;
            }
            gUnknown_03000840 = gUnknown_030034A8 = 0;
            UpdatePartyLocationsAfterTeleport();
        }
    }
}

void ItemNothingHappened()
{
    DrawTextWithId(0x6C7u); // "@{0x03}{0x1A} tried {0x03}{0x1C}.{BREAK}"
    DrawTextWithId(0x398u); // "@Nothing happened.{BREAK}"
}

void sub_8F08C5C()
{
    s8 i;
    u16 worldX, worldY;
    s8 hasRunOnce;

    sub_8F09320();
    worldX = (gUnknown_03000788 + 4 * (gUnknown_08F1B670[gUnknown_030007A4 / 2] + 0x78));
    worldY = (gUnknown_03001508 + 4 * (gUnknown_08F1B674[gUnknown_030007A4 / 2] + 0x58));
    hasRunOnce = 0;

    LOOP:
    {
        gUnknown_03003170 = 0;
        for(i = 0; i < 40; i++)
        {
            gUnknown_03000784 = &gUnknown_03001D40[i];
            if ( !gUnknown_03000784->Type )
            {
                break;
            }


            if ( !(gUnknown_03000784->Type & 0x80) && (gUnknown_03000784->field_14 & 0x40) )
            {
                u16 x1 = worldX - gUnknown_03000784->X;
                u16 y1 = worldY - gUnknown_03000784->Y;
                if(x1 < 64 && y1 < 64)
                {
                    ExecuteScript(0xCu);
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
        ItemNothingHappened();
    }
}

void Teleport()
{
    s32 destination;

    if ( CanTeleport() )
    {
        destination = SelectTeleportDestination();
        if ( destination <= 0 )
        {
            gUnknown_03001504++;
        }
        else
        {
            sub_8F09320();
            DrawTextWithId(0x6C7u); // "@{0x03}{0x1A} tried {0x03}{0x1C}.{BREAK}"
            WaitForAnyButtonPress();
            sub_8F0B040();
            sub_8F076B8(destination);
            gUnknown_030007A8 = 1;
        }
    }
}

void sub_8F08DC0()
{
    sub_8F08F48(30u);
}

void sub_8F08DCC()
{
    sub_8F08F48(80u);
}

void sub_8F08DD8()
{
    sub_8F08F48(0xFFFFu);
}

void sub_8F08DE8()
{
    // "@{0x03}{0x1A}'s body became soft{BREAK}
    // again.{BREAK}\0"
    CureConditionByItem(CONDITION_STONE, 0x6CBu);
}

void sub_8F08DFC()
{
    // "@The poison was removed from{BREAK}
    // {0x03}{0x1A}'s body.{BREAK}\0"
    CureConditionByItem(CONDITION_POISONED, 0x6C3u);
}

void sub_8F08E10()
{
    // "@{0x03}{0x1A} was revived!{BREAK}\0"
    CureConditionByItem(CONDITION_UNCONSCIOUS, 0x6C9u);
}

void sub_8F08E24(u16 a1)
{
    s16 v2;
    u8 v3;
    s32 charId;
    u16 val;

    val = a1;
    v2 = gUnknown_030007D8;
    v3 = gUnknown_03003174;
    charId = sub_8F0BA2C();
    if ( charId <= 0 )
    {
        ++gUnknown_03001504;
    }
    else
    {
        if ( gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].Condition & CONDITION_UNCONSCIOUS )
        {
            gCurrentCharacterId = charId;
            DrawTextWithId(0x6A6u); // "@{0x03}{0x1A} gave the {0x03}{0x1C}{BREAK}to {0x03}{0x1B}.{BREAK}"
            NothingHappened();
        }
        else
        {
            gUnknown_03003174 = charId;
            switch(gConsumableType)
            {
                case 1:
                    DrawTextWithId(0x6AF); // "@{0x03}{0x1A} ate the {0x03}{0x1C}.{BREAK}"
                    break;
                case 2:
                    DrawTextWithId(0x6B0); // "@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}"
                    break;
                default:
                    DrawTextWithId(0x38E); // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
                    break;
            }
            
            gTempNumber = sub_8F021C4(val);
            val = (gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].MaxHP - gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].CurrentHP);
            if ( gTempNumber > val )
            {
                gTempNumber = val;
            }
            gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].CurrentHP += gTempNumber;
            PlaySfxById1(7u);
            sub_8F0B004();
            gUnknown_03003170 |= 0x80u;
            DrawTextWithId(0x6B3u); // "@{0x03}{0x1A}'s HP{BREAK}"
            gTextDelayAfterWriteCharacterEnabled |= 0x80u;
            DrawTextWithId(0x6B1u); // "was recovered by {0x03}{0x1E}.{BREAK}"
        }
        gUnknown_030007D8 = v2;
        RemoveItemFromInventory(v3);
    }
}

void sub_8F08F48(u16 a1)
{
    s32 charId;
    u16 val;

    val = a1;
    charId = sub_8F0BA2C();
    if ( charId <= 0 )
    {
        ++gUnknown_03001504;
    }
    else
    {
        sub_8F09320();
        if ( gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].Condition & CONDITION_UNCONSCIOUS )
        {
            ItemNothingHappened();
        }
        else
        {
            DrawTextWithId(0x6C7u);             // "@{0x03}{0x1A} tried {0x03}{0x1C}.{BREAK}"
            gUnknown_03003174 = charId;
            gTempNumber = sub_8F021C4(val);
            val = gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].MaxHP - gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].CurrentHP;
            if ( gTempNumber > val )
            {
                gTempNumber = val;
            }
            gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].CurrentHP += gTempNumber;
            PlaySfxById1(7u);
            sub_8F0B004();
            gUnknown_03003170 |= 0x80u;
            DrawTextWithId(0x6B3u);             // "@{0x03}{0x1A}'s HP{BREAK}"
            gTextDelayAfterWriteCharacterEnabled |= 0x80u;
            DrawTextWithId(0x6B1u);             // "was recovered by {0x03}{0x1E}.{BREAK}"
            val = 0; //TODO: Why is this required to match?
        }
    }
}

void AttemptRemovalOfCondition(u8 condition, u16 textId)
{
    s16 v0;
    u8 v1;
    s32 v2;

    v0 = gUnknown_030007D8;
    v1 = gUnknown_03003174;
    v2 = sub_8F0BA2C();
    if ( v2 <= 0 )
    {
        ++gUnknown_03001504;
    }
    else
    {
        if ( !( (condition & CONDITION_UNCONSCIOUS) || !(gGameInfo.PlayerInfo.Struct.CharacterInfo[v2 - 1].Condition & CONDITION_UNCONSCIOUS) ) )
        {
            gCurrentCharacterId = v2;
            DrawTextWithId(0x6A6u);             // "@{0x03}{0x1A} gave the {0x03}{0x1C}{BREAK}to {0x03}{0x1B}.{BREAK}"
            NothingHappened();
        }
        else
        {
            gUnknown_03003174 = v2;
            DrawTextWithId(0x38Eu);             // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
            if ( condition & gGameInfo.PlayerInfo.Struct.CharacterInfo[v2 - 1].Condition )
            {
                gGameInfo.PlayerInfo.Struct.CharacterInfo[v2 - 1].Condition &= ~condition;
                PlaySfxById1(7u);
                sub_8F0B004();
                gUnknown_03003170 |= 0x80u;
                DrawTextWithId(textId);
            }
            else
            {
                NothingHappened();
            }
        }
        gUnknown_030007D8 = v0;
        RemoveItemFromInventory(v1);
    }
}

void CureConditionByItem(u8 conditionMask, u16 textId)
{
    s32 charId;

    charId = sub_8F0BA2C();
    if ( charId <= 0 )
    {
        ++gUnknown_03001504;
    }
    else
    {
        sub_8F09320();
        if ( gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].Condition & CONDITION_UNCONSCIOUS )
        {
            if ( conditionMask & CONDITION_UNCONSCIOUS )
            {
                DrawTextWithId(0x6C7u);         // "@{0x03}{0x1A} tried {0x03}{0x1C}.{BREAK}"
                gUnknown_03003174 = charId;
                sub_8F091D0(charId);
                gUnknown_03003170 |= 0x80u;
                DrawTextWithId(textId);
            }
            else
            {
                ItemNothingHappened();
            }
        }
        else if ( conditionMask & gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].Condition )
        {
            gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].Condition &= ~conditionMask;
            DrawTextWithId(0x6C7u);             // "@{0x03}{0x1A} tried {0x03}{0x1C}.{BREAK}"
            gUnknown_03003174 = charId;
            PlaySfxById1(7u);
            sub_8F0B004();
            gUnknown_03003170 |= 0x80u;
            DrawTextWithId(textId);
        }
        else
        {
            ItemNothingHappened();
        }
    }
}

void sub_8F091D0(u8 a1)
{
    u8 i;

    gGameInfo.PlayerInfo.Struct.CharacterInfo[a1 - 1].Condition &= 0x7Fu;
    gGameInfo.PlayerInfo.Struct.CharacterInfo[a1 - 1].CurrentHP = gGameInfo.PlayerInfo.Struct.CharacterInfo[a1 - 1].MaxHP;
    UpdateCharactersInParty();
    for ( i = 0; i < 4; i++)
    {
        if ( gGameInfo.PlayerInfo.Struct.CharactersInParty[i] == a1 )
        {
            sub_8F0B004();
            sub_8F03128();
            sub_8F0088C(0x1Du);
            break;
        }
    }
}

void sub_8F0922C(u8 a1, u16 textId)
{
    s16 v4;
    u8 v5;
    s32 v6;
    u16 val;

    v4 = gUnknown_030007D8;
    v5 = gUnknown_03003174;
    if ( textId == 0x6B0 ) // "@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}"
    {
        v6 = sub_8F0BA2C();
        if ( v6 <= 0 )
        {
            ++gUnknown_03001504;
            return;
        }
    }
    else
    {
        v6 = gUnknown_03003174;
    }

    if ( gGameInfo.PlayerInfo.Struct.CharacterInfo[v6 - 1].Condition & CONDITION_UNCONSCIOUS )
    {
        gCurrentCharacterId = v6;
        DrawTextWithId(0x6A6u); // "@{0x03}{0x1A} gave the {0x03}{0x1C}{BREAK}to {0x03}{0x1B}.{BREAK}"
        NothingHappened();
    }
    else
    {
        gUnknown_03003174 = v6;
        DrawTextWithId(textId);
        gTempNumber = sub_8F021C4(5u);
        val = 255 - ((0, gGameInfo.PlayerInfo.Raw))[v6][a1]; //FAKEMATCH
        if ( gTempNumber > val)
        {
            gTempNumber = val;
        }
        DrawTextWithId(a1 + 0x6AA);
        gTextDelayAfterWriteCharacterEnabled |= 0x80u;
        DrawTextWithId(0x6B2u); // "went up {0x03}{0x1E}.{BREAK}"
        gGameInfo.PlayerInfo.Raw[v6][a1] += gTempNumber;
    }
    gUnknown_030007D8 = v4;
    RemoveItemFromInventory(v5);
}

void sub_8F09320()
{
    gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].CurrentPP -= gUnknown_03003188[gTeleportLocations].PP;
}

s32 CanTeleport()
{
    if ( !(gGameInfo.Flags[31] & 2) )
    {
        return 1;
    }
    // "@Some sort of force is{BREAK}
    // pushing {0x03}{0x16}{0x03}{0x17}{BREAK}
    // back.{BREAK}\0"
    DrawTextWithId(0x6D0u);
    return 0;
}








