#include "gba/gba.h"
#include "m4a.h"
#include "definitions.h"

extern u8 gSpawnSets[32][16];
extern u8 gUnknown_0300082C;
extern u8 gCurrentArea;
extern u8 gUnknown_03000000;

void NothingHappened() {
    DrawTextWithId(0x398u); // "@Nothing happened.{BREAK}"
}

void OA_INTERACT() {
    s8 i;
    u16 worldX = (gUnknown_03000788 + 4 * (gUnknown_08F1B670[gUnknown_030007A4 / 2] + 0x78));
    u16 worldY = (gUnknown_03001508 + 4 * (gUnknown_08F1B674[gUnknown_030007A4 / 2] + 0x58));
    s8 hasRunOnce = 0;

    LOOP:
    {
        gUnknown_03003170 = 0;
        for(i = 0; i < 40; i++) {
            gUnknown_03000784 = &gObjectMemory[i];
            if (!gUnknown_03000784->Type) {
                break;
            }

            if (!(gUnknown_03000784->Type & 0x80) &&
            (gUnknown_03000784->bitfield1 & OBJECT_M_BF1_INTERACTABLE)) {
                u16 x1 = worldX - gUnknown_03000784->X;
                u16 y1 = worldY - gUnknown_03000784->Y;
                if(x1 < 64 && y1 < 64) {
                    ExecuteScript(0xDu);
                    if (gUnknown_03003170) {
                        break;
                    }
                }
            }
        }
        if (!(hasRunOnce || gUnknown_03003170 || gUnknown_030007A4 || !sub_8F01CBC(worldX, worldY))) {
            worldY -= 32;
            hasRunOnce = 1;
            goto LOOP;
        }
    }

    if (!gUnknown_03003170) {
        NothingHappened();
    }
}

void UseBread() {
    s32 v0;

    if (gConsumableType){
        DoHealConsumable(20);
    } else {
        for(v0 = 0; v0 < 8; v0++) {
            if (gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].Inventory[v0] == 3 ) { // BreadCrumbs
                DrawTextWithId(0x6BCu); // "@You need to throw out your{BREAK}old bread crumbs before you{BREAK}can use other bread.{BREAK}"
                return;
            }
        }
        v0 = GetPositionOfCurrentItemFromInventoryOrCloset(gUnknown_03003174);
        if (v0 >= 0) {
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].Inventory[v0] = 3;// BreadCrumbs
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].X = (gUnknown_03000788 & 0xFFC0) + (gCurrentBgMusic & 0x3F);
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].Y = (gUnknown_03001508 & 0xFFC0) + (gUnknown_030007A4 & 7);
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].field_1A = gUnknown_03000788 & 0x3F;
            gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].field_1B = gUnknown_03001508 & 0x3F;
            DrawTextWithId(0x6BBu); // "@{0x03}{0x1A} broke the bread into{BREAK}crumbs and started a trail{BREAK}out of them.{BREAK}"
        }
    }
}

void UseTofu() {
    if (gConsumableType) {
        DoHealConsumable(15);
    } else {
        OA_INTERACT();
    }
}

void UseRepelRing() {
    gGameInfo.PlayerInfo.Struct.repel_counter = 10;
    RemoveItemFromInventory(gUnknown_03003174);
    DrawTextWithId(0x38Eu); // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
}

void UseJuice() {
    gConsumableType = 2;
    DoHealConsumable(10);
}

void UseFries() {
    DoHealConsumable(20);
}

void UseHerb() {
    gConsumableType = 3;
    DoHealConsumable(30);
}

void UseBurger() {
    DoHealConsumable(60);
}

void UseSportsDrink() {
    gConsumableType = 2;
    DoHealConsumable(100);
}

void UseOintment() {
    gConsumableType = 3;
    DoHealConsumable(-1);
}

void UseBigBag() {
    s16 v0;
    u8 v1;
    s32 v2;
    u16 hpdiff;

    v0 = gUnknown_030007D8;
    v1 = gUnknown_03003174;
    v2 = sub_8F0BA2C();
    if (v2 <= 0){
        gUnknown_03001504++;
    } else {
        if (gGameInfo.PlayerInfo.Struct.CharacterInfo[v2 - 1].Condition & CONDITION_UNCONSCIOUS) {
            gCurrentCharacterId = v2;
            DrawTextWithId(0x6A6u); // "@{0x03}{0x1A} gave the {0x03}{0x1C}{BREAK}to {0x03}{0x1B}.{BREAK}"
            NothingHappened();
        } else {
            gUnknown_03003174 = v2;
            gTempNumber = sub_8F021C4(30);
            hpdiff = gGameInfo.PlayerInfo.Struct.CharacterInfo[v2 - 1].MaxHP - gGameInfo.PlayerInfo.Struct.CharacterInfo[v2 - 1].CurrentHP;
            if (gTempNumber > hpdiff){
                gTempNumber = hpdiff;
            }
            gGameInfo.PlayerInfo.Struct.CharacterInfo[v2 - 1].CurrentHP += gTempNumber;
            DrawTextWithId(0x6BAu); // "@{0x03}{0x1A} took a Magic Herb{BREAK}from the Big Bag and used{BREAK}it.{BREAK}"
            PlayPulse1Sfx(7);
            sub_8F0B004();
            gUnknown_03003170 |= 0x80u;
            DrawTextWithId(0x6B3u); // "@{0x03}{0x1A}'s HP{BREAK}"
            gTextDelayAfterWriteCharacterEnabled |= 0x80u;
            DrawTextWithId(0x6B1u); // "was recovered by {0x03}{0x1E}.{BREAK}"
        }
        gGameInfo.PlayerInfo.Struct.big_bag_uses--;
        if (gGameInfo.PlayerInfo.Struct.big_bag_uses == 0) {
            DrawTextWithId(0x6C1u); // "@The Big Bag disappeared{BREAK}after being emptied.{BREAK}"
            gUnknown_030007D8 = v0;
            RemoveItemFromInventory(v1);
        }
    }
}

void UseAntidote() {
    AttemptRemovalOfCondition(2u, 0x6C3u); // "@The poison was removed from{BREAK}{0x03}{0x1A}'s body.{BREAK}"
}

void UseMouthwash() {
    AttemptRemovalOfCondition(1u, 0x6C4u); // "@{0x03}{0x1A}'s cold went away.{BREAK}"
}

void UsePSIStone() {
    u16 ppdiff;

    DrawTextWithId(0x6C5u); // "@{0x03}{0x1A} gripped the{BREAK}PSI Stone.{BREAK}"
    gTempNumber = sub_8F021C4(0x14u);
    ppdiff = gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].MaxPP - gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].CurrentPP;
    if (gTempNumber > ppdiff) {
        gTempNumber = ppdiff;
    }
    gUnknown_03003170 |= 0x80u;
    DrawTextWithId(0x6B4u); // "@{0x03}{0x1A}'s PP{BREAK}
    gTextDelayAfterWriteCharacterEnabled |= 0x80u;
    DrawTextWithId(0x6B1u); // "was recovered by {0x03}{0x1E}.{BREAK}"
    gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].CurrentPP += gTempNumber;
    if ((Random() >> 24) <= 24) {
        DrawTextWithId(0x6C6u); // "@The PSI Stone turned into{BREAK}an ordinary rock.{BREAK}"
        RemoveItemFromInventory(gUnknown_03003174);
    }
}

void UseRibbon() {
    sub_8F0922C(0xFu, 0x6BEu); // "@{0x03}{0x1A}'s Force{BREAK}", "@{0x03}{0x1A} put the ribbon in{BREAK}her hair.{BREAK}"
}

void UseCandy() {
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

void UseSPDCapsule() {
    sub_8F0922C(0xCu, swallow_item()); // "@{0x03}{0x1A}'s Speed{BREAK}", "@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}"
}

void UseWISCapsule() {
    sub_8F0922C(0xDu, swallow_item()); // "@{0x03}{0x1A}'s Wisdom{BREAK}", "@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}"
}

void UseSTRCapsule() {
    sub_8F0922C(0xEu, swallow_item()); // "@{0x03}{0x1A}'s Strength{BREAK}", "@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}"
}

void UseFCECapsule() {
    sub_8F0922C(0xFu, swallow_item()); // "@{0x03}{0x1A}'s Force{BREAK}", "@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}"
}

void UseFITCapsule() {
    // "@{0x03}{0x1A}'s Fight{BREAK}"

    // "@{0x03}{0x1A} drank the{BREAK}
    // {0x03}{0x1C}.{BREAK}"
    sub_8F0922C(0xBu, swallow_item());
}

void UseDiary() {
    // "@Most of the diary is{BREAK}
    // unreadable, but one part{BREAK}
    // did stand out:{BREAK}
    // {WAIT}@“The password...{BREAK}
    // {WAIT}Where is the god's tail,{BREAK}
    // {WAIT}that which was left behind{BREAK}
    // by the ship that soars{BREAK}
    // the heavens?”{BREAK}"
    DrawTextWithId(0x6CAu);
}

void UseHook() {
    if (CanTeleport()) {
        if (gGameInfo.Flags[28] & 0x80) {
            NothingHappened();
        } else {
            REMOVE_PARTY_MEMBER(CHAR_ID_EVE);
            DrawTextWithId(0x38Eu); // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
            gUnknown_030007A0 = -1;
            gFade_Type = 2;
            gPlayerX = 0x9E89u;
            gPlayerY = 0xA8C4u;
            gUnknown_03000840 = gUnknown_030034A8 = 0;
            UpdatePartyLocationsAfterTeleport();
        }
    }
}

void UseCrumbs() {
    s32 v0;
    s32 v1;
    s32 v2;
    s32 v3;

    RemoveItemFromInventory(gUnknown_03003174);
    DrawTextWithId(0x6BDu); // "@{0x03}{0x16} followed the trail{BREAK}of bread crumbs back to{BREAK}where it started.{BREAK}"
    gUnknown_030007A0 = -1;
    gFade_Type = 1;
    gPlayerX = gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].X;
    gPlayerY = gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].Y;
    gUnknown_03000840 = gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].field_1A;
    gUnknown_030034A8 = gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].field_1B;
    v0 = gPlayerX - 0x240;
    if (v0 < 0) {
        v0 = gPlayerX + 0x1BF;
    }
    if ((v0 >> 10) == 0x38) { // 0xE000
        v1 = gPlayerY - 0x2C0;
        if (v1 < 0) {
            v1 = gPlayerY + 0x13F;
        }
        if ((v1 >> 10) == 7) { // 0x1C00
            v2 = gUnknown_03000788 - 0x240;
            if (v2 < 0) {
                v2 = gUnknown_03000788 + 0x1BF;
            }
            if ((v2 >> 10) != 0x38) { // 0xE000
                v3 = gUnknown_03001508 - 0x2C0;
                if (v3 < 0) {
                    v3 = gUnknown_03001508 + 0x13F;
                }
                if ((v3 >> 10) != 7) { // 0x1C00
                    gPlayerX = (gPlayerX & 0x3F) + -0x5680;
                    gPlayerY = 0xF446u;
                    gUnknown_03000840 = 0;
                    gUnknown_030034A8 = 0;
                }
            }
        }
    }
    if (((gPlayerX - 0x60) & 0xFF00) == 0x4E00 && ((gPlayerY - 0x100) & 0xFF00) == 0x5900) {
        gPlayerX = (gPlayerX & 0x3F) + 0x4E80;
        gPlayerY = 0x5AC4;
        gUnknown_03000840 = 0;
        gUnknown_030034A8 = 0;
    }
}

void UseFinalWeapon() {
    // "@“Just turn the power off!”{BREAK}"
    DrawTextWithId(0x6BFu);
}

void UseRuler() {
    // "@You were able to figure out{BREAK}
    // the lengths of many things.{BREAK}"
    DrawTextWithId(0x6C0u);
}

void UseMap() {
    s16 hofs;
    s16 vofs;
    s16 v3; // r8
    u8 pal[2][16] = {
        {0x0F,0x36,0x30,0x2A,
        0x0F,0x36,0x30,0x2A,
        0x0F,0x36,0x30,0x16,
        0x0F,0x36,0x30,0x16},

        {0x0F,0x21,0x02,0x0A,
        0x0F,0x30,0x30,0x30, //not 0x0f, 0x21, 0x21, 0x21 anymore????
        0x0F,0x21,0x21,0x21,
        0x0F,0x21,0x21,0x21}
    };

    if ((u8)(gUnknown_030007F8 - 1) > 1) {
        DrawTextWithId(0x6CEu); // "@This location is not on the{BREAK}map.{BREAK}"
        while (!(gKeysDown & (L_BUTTON|START_BUTTON|SELECT_BUTTON|B_BUTTON|A_BUTTON))) {
            sub_8F040E0();
            UpdateInput();
        }
        sub_8F0B040();
    } else {
        FadeOut();
        sub_8F0B040();
        REG_DISPCNT = 0;
        LoadPalette(pal[0], (u16 *)0x5000080);
        LoadPalette(pal[1], (u16 *)0x5000280);
        BitUnpack((void *)gMapTiles, (void *)0x600E000, 192);
        gUnknown_03000808 = 0x4300;
        sub_8F00EE0((u8 *)gMapTilemap, (u16 *)0x6002000);
        if (gUnknown_03000788 < 0xF000u) {
            hofs = 4;
        } else {
            hofs = 8;
        }
        if (gUnknown_03001508 < 0x3E00u) {
            vofs = 0;
        } else if ( gUnknown_03001508 < 0xA600u ) {
            vofs = 32;
        } else {
            vofs = 80;
        }
        REG_BG3HOFS = hofs;
        REG_BG3VOFS = vofs;
        sub_8F019B8();
        gSpriteBuffer[0].x = (gUnknown_03000788 / 256) - hofs - 6;
        gSpriteBuffer[0].y = (gUnknown_03001508 / 256) - vofs - 22;
        gSpriteBuffer[0].paletteNum = 4;
        gSpriteBuffer[0].hflip = 0;
        gSpriteBuffer[0].vflip = 0;
        gSpriteBuffer[0].priority = 0;
        gSpriteBuffer[0].tileNum = 0x15F;
        REG_DISPCNT = 0x1800;
        FadeIn();
        v3 = 0;
        while (1) {
            gSpriteBuffer[0].x = ((gUnknown_03000788 / 256) - hofs - 6);
            gSpriteBuffer[0].y = ((gUnknown_03001508 / 256) - vofs - 22);
            if (v3 & 8) {
                gSpriteBuffer[0].paletteNum ^= 1;
            }
            sub_8F040E0();
            DmaCopy32(3, gSpriteBuffer, OAM, OAM_SIZE);
            REG_BG3HOFS = hofs;
            REG_BG3VOFS = vofs;
            UpdateInput();
            if (gKeysDown & (L_BUTTON|START_BUTTON|SELECT_BUTTON|B_BUTTON|A_BUTTON)) {
                break;
            }
            if (gKeysRepeat & DPAD_RIGHT) {
                hofs++;
                if (hofs > 8) {
                    hofs = 8;
                }
            }
            if (gKeysRepeat & DPAD_LEFT) {
                hofs--;
                if (hofs < 0) {
                    hofs = 0;
                }
            }
            if (gKeysRepeat & DPAD_UP) {
                vofs--;
                if (vofs < 0) {
                    vofs = 0;
                }
            }
            if (gKeysRepeat & DPAD_DOWN) {
                vofs++;
                if (vofs > 80) {
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

void UseOcarina() {
    u8 old_music;

    DrawTextWithId(0x6CCu); // "@You played the Ocarina of{BREAK}Hope.{BREAK}"
    old_music = gCurrentBgMusic;
    ChangeBgMusic(1u);
    DrawTextWithId(0x6CDu); // "@Did you catch that?{BREAK}"
    ChangeBgMusic(old_music);
}

void sub_8F08AE8() {
    u8 i;
    sCharacterStatusInfo *v2;
    u32 idx;

    DrawTextWithId(0x38Eu); // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
    for(i = 0; i < 4; i++) {
        idx = gGameInfo.PlayerInfo.Struct.CharactersInParty[i] - 1;
        if ((u8)(idx) < 5) {
            v2 = &gGameInfo.PlayerInfo.Struct.CharacterInfo[idx-1];
            v2[1].CurrentHP = v2[1].MaxHP;
            v2[1].CurrentPP = v2[1].MaxPP;
            v2[1].Condition = CONDITION_NONE;
        }
    }
    DrawTextWithId(0x6D8u); // "@The entire party was{BREAK}healed!{BREAK}"
    PlayPulse1Sfx(7);
    sub_8F0B004();
    gUnknown_03003170 |= 0x80u;
    UpdateCharactersInParty();
    sub_8F03128();
    RemoveItemFromInventory(gUnknown_03003174);
}

void UseICChip() {
    if (CanTeleport()) {
        DrawTextWithId(0x38Eu); // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
        if (gGameInfo.PlayerInfo.Struct.CharacterInfo[0].Condition & CONDITION_UNCONSCIOUS) {
            DrawTextWithId(0x398u); // "@Nothing happened.{BREAK}"
        } else {
            DrawTextWithId(0x6D9u); // "@{0x03}{0x10} sensed a faint{BREAK}memory of his{BREAK}great-grandfather!{BREAK}"
            REMOVE_PARTY_MEMBER(CHAR_ID_FLYINGMAN);
            REMOVE_PARTY_MEMBER(CHAR_ID_EVE);
            gUnknown_030007A0 = -1;
            gFade_Type = 2;
            if (gGameInfo.Flags[18] & 0x20) {
                gPlayerX = 0xEF0B;
                gPlayerY = 0x99C4;
            } else {
                gPlayerX = 0xEACB;
                gPlayerY = 0xC884;
            }
            gUnknown_03000840 = gUnknown_030034A8 = 0;
            UpdatePartyLocationsAfterTeleport();
        }
    }
}

void NothingHappenedPSI() {
    DrawTextWithId(0x6C7u); // "@{0x03}{0x1A} tried {0x03}{0x1C}.{BREAK}"
    DrawTextWithId(0x398u); // "@Nothing happened.{BREAK}"
}

void UseTelepathy() {
    s8 i;
    u16 worldX, worldY;
    s8 hasRunOnce;

    SpendPP();
    worldX = (gUnknown_03000788 + 4 * (gUnknown_08F1B670[gUnknown_030007A4 / 2] + 0x78));
    worldY = (gUnknown_03001508 + 4 * (gUnknown_08F1B674[gUnknown_030007A4 / 2] + 0x58));
    hasRunOnce = 0;

    LOOP: {
        gUnknown_03003170 = 0;
        for(i = 0; i < 40; i++) {
            gUnknown_03000784 = &gObjectMemory[i];
            if (!gUnknown_03000784->Type) {
                break;
            }

            if (!(gUnknown_03000784->Type & 0x80) &&
            (gUnknown_03000784->bitfield1 & OBJECT_M_BF1_INTERACTABLE)) {
                u16 x1 = worldX - gUnknown_03000784->X;
                u16 y1 = worldY - gUnknown_03000784->Y;
                if(x1 < 64 && y1 < 64) {
                    ExecuteScript(0xC);
                    if (gUnknown_03003170) {
                        break;
                    }
                }
            }
        }
        if (!(hasRunOnce || gUnknown_03003170 || gUnknown_030007A4 || !sub_8F01CBC(worldX, worldY))) {
            worldY -= 32;
            hasRunOnce = 1;
            goto LOOP;
        }
    }

    if (!gUnknown_03003170) {
        NothingHappenedPSI();
    }
}

void UseTeleport() {
    s32 destination;

    if (CanTeleport()) {
        destination = SelectTeleportDestination();
        if (destination <= 0) {
            gUnknown_03001504++;
        } else {
            SpendPP();
            DrawTextWithId(0x6C7u); // "@{0x03}{0x1A} tried {0x03}{0x1C}.{BREAK}"
            WaitForAnyButtonPress();
            sub_8F0B040();
            sub_8F076B8(destination);
            gUnknown_030007A8 = 1;
        }
    }
}

void UseLifeUpAlpha() {
    DoHealPsi(30);
}

void UseLifeUpBeta() {
    DoHealPsi(80);
}

void UseLifeUpGamma() {
    DoHealPsi(-1);
}

void UseHealingGamma() {
    // "@{0x03}{0x1A}'s body became soft{BREAK}
    // again.{BREAK}\0"
    CureConditionByItem(CONDITION_STONE, 0x6CBu);
}

void UseHealingAlpha() {
    // "@The poison was removed from{BREAK}
    // {0x03}{0x1A}'s body.{BREAK}\0"
    CureConditionByItem(CONDITION_POISONED, 0x6C3u);
}

void UseSuperHealing() {
    // "@{0x03}{0x1A} was revived!{BREAK}\0"
    CureConditionByItem(CONDITION_UNCONSCIOUS, 0x6C9u);
}

void DoHealConsumable(u16 health) {
    u16 val = health;
    s16 v2 = gUnknown_030007D8;
    u8 v3 = gUnknown_03003174;
    s32 charId = sub_8F0BA2C();

    if (charId <= 0) {
        gUnknown_03001504++;
    } else {
        if (gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].Condition & CONDITION_UNCONSCIOUS) {
            gCurrentCharacterId = charId;
            DrawTextWithId(0x6A6u); // "@{0x03}{0x1A} gave the {0x03}{0x1C}{BREAK}to {0x03}{0x1B}.{BREAK}"
            NothingHappened();
        } else {
            gUnknown_03003174 = charId;
            switch(gConsumableType) {
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
            if (gTempNumber > val) {
                gTempNumber = val;
            }
            gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].CurrentHP += gTempNumber;
            PlayPulse1Sfx(7);
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

void DoHealPsi(u16 health) {
    u16 val = health;
    s32 charId = sub_8F0BA2C();

    if (charId <= 0) {
        gUnknown_03001504++;
    } else {
        SpendPP();
        if (gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].Condition & CONDITION_UNCONSCIOUS) {
            NothingHappenedPSI();
        } else {
            DrawTextWithId(0x6C7u);             // "@{0x03}{0x1A} tried {0x03}{0x1C}.{BREAK}"
            gUnknown_03003174 = charId;
            gTempNumber = sub_8F021C4(val);
            val = gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].MaxHP - gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].CurrentHP;
            if (gTempNumber > val) {
                gTempNumber = val;
            }
            gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].CurrentHP += gTempNumber;
            PlayPulse1Sfx(7);
            sub_8F0B004();
            gUnknown_03003170 |= 0x80u;
            DrawTextWithId(0x6B3u);             // "@{0x03}{0x1A}'s HP{BREAK}"
            gTextDelayAfterWriteCharacterEnabled |= 0x80u;
            DrawTextWithId(0x6B1u);             // "was recovered by {0x03}{0x1E}.{BREAK}"
            val = 0; //TODO: Why is this required to match?
        }
    }
}

void AttemptRemovalOfCondition(u8 condition, u16 textId) {
    s16 v0 = gUnknown_030007D8;
    u8 v1 = gUnknown_03003174;
    s32 v2 = sub_8F0BA2C();

    if (v2 <= 0) {
        gUnknown_03001504++;
    } else {
        if (!((condition & CONDITION_UNCONSCIOUS) || !(gGameInfo.PlayerInfo.Struct.CharacterInfo[v2 - 1].Condition & CONDITION_UNCONSCIOUS))) {
            gCurrentCharacterId = v2;
            DrawTextWithId(0x6A6u);             // "@{0x03}{0x1A} gave the {0x03}{0x1C}{BREAK}to {0x03}{0x1B}.{BREAK}"
            NothingHappened();
        } else {
            gUnknown_03003174 = v2;
            DrawTextWithId(0x38Eu);             // "@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}"
            if (condition & gGameInfo.PlayerInfo.Struct.CharacterInfo[v2 - 1].Condition) {
                gGameInfo.PlayerInfo.Struct.CharacterInfo[v2 - 1].Condition &= ~condition;
                PlayPulse1Sfx(7);
                sub_8F0B004();
                gUnknown_03003170 |= 0x80u;
                DrawTextWithId(textId);
            } else {
                NothingHappened();
            }
        }
        gUnknown_030007D8 = v0;
        RemoveItemFromInventory(v1);
    }
}

void CureConditionByItem(u8 conditionMask, u16 textId) {
    s32 charId = sub_8F0BA2C();

    if (charId <= 0) {
        gUnknown_03001504++;
    } else {
        SpendPP();
        if (gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].Condition & CONDITION_UNCONSCIOUS) {
            if (conditionMask & CONDITION_UNCONSCIOUS) {
                DrawTextWithId(0x6C7u);         // "@{0x03}{0x1A} tried {0x03}{0x1C}.{BREAK}"
                gUnknown_03003174 = charId;
                sub_8F091D0(charId);
                gUnknown_03003170 |= 0x80u;
                DrawTextWithId(textId);
            } else {
                NothingHappenedPSI();
            }
        } else if (conditionMask & gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].Condition) {
            gGameInfo.PlayerInfo.Struct.CharacterInfo[charId - 1].Condition &= ~conditionMask;
            DrawTextWithId(0x6C7u);             // "@{0x03}{0x1A} tried {0x03}{0x1C}.{BREAK}"
            gUnknown_03003174 = charId;
            PlayPulse1Sfx(7);
            sub_8F0B004();
            gUnknown_03003170 |= 0x80u;
            DrawTextWithId(textId);
        } else {
            NothingHappenedPSI();
        }
    }
}

void sub_8F091D0(u8 a1) {
    u8 i;

    gGameInfo.PlayerInfo.Struct.CharacterInfo[a1 - 1].Condition &= 0x7Fu;
    gGameInfo.PlayerInfo.Struct.CharacterInfo[a1 - 1].CurrentHP = gGameInfo.PlayerInfo.Struct.CharacterInfo[a1 - 1].MaxHP;
    UpdateCharactersInParty();
    for (i = 0; i < 4; i++) {
        if (gGameInfo.PlayerInfo.Struct.CharactersInParty[i] == a1) {
            sub_8F0B004();
            sub_8F03128();
            sub_8F0088C(0x1Du);
            break;
        }
    }
}

void sub_8F0922C(u8 a1, u16 textId) {
    s16 v4 = gUnknown_030007D8;
    u8 v5 = gUnknown_03003174;
    s32 v6;
    u16 val;

    if (textId == 0x6B0) { // "@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}"
        v6 = sub_8F0BA2C();
        if (v6 <= 0) {
            gUnknown_03001504++;
            return;
        }
    } else {
        v6 = gUnknown_03003174;
    }

    if (gGameInfo.PlayerInfo.Struct.CharacterInfo[v6 - 1].Condition & CONDITION_UNCONSCIOUS) {
        gCurrentCharacterId = v6;
        DrawTextWithId(0x6A6u); // "@{0x03}{0x1A} gave the {0x03}{0x1C}{BREAK}to {0x03}{0x1B}.{BREAK}"
        NothingHappened();
    } else {
        gUnknown_03003174 = v6;
        DrawTextWithId(textId);
        gTempNumber = sub_8F021C4(5u);
        val = 255 - ((0, gGameInfo.PlayerInfo.Raw))[v6][a1]; //FAKEMATCH
        if (gTempNumber > val) {
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

void SpendPP() {
    gGameInfo.PlayerInfo.Struct.CharacterInfo[gUnknown_03003174 - 1].CurrentPP -=
    (gPsiData-0xC0)[gUnknown_03003188].PPRequired;
}

s32 CanTeleport() {
    if (!(gGameInfo.Flags[31] & 2)) {
        return 1;
    }
    // "@Some sort of force is{BREAK}
    // pushing {0x03}{0x16}{0x03}{0x17}{BREAK}
    // back.{BREAK}\0"
    DrawTextWithId(0x6D0u);
    return 0;
}

//save party member data???
void sub_8F09384() {
    u8 i;
    u8 charId;
    s32 idx;

    for(i = 0; i < 4; i++) {
        charId = gGameInfo.PlayerInfo.Struct.CharactersInParty[i];
        if (charId != 0) {
            idx = charId - 1;
            gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].X = (gUnknown_03000788 & 0xFFC0) + (gCurrentBgMusic & 0x3F);
            gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].Y = (gUnknown_03001508 & 0xFFC0) + (gUnknown_030007A4 & 7);
            gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].field_1A = gUnknown_03000788 & 0x3F;
            gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].field_1B = gUnknown_03001508 & 0x3F;
        }
    }
}

void UpdatePartyLocationsAfterTeleport() {
    u8 i;
    u8 charId;
    s32 idx;

    for(i = 0; i < 4; i++) {
        charId = gGameInfo.PlayerInfo.Struct.CharactersInParty[i];
        if (charId != 0) {
            idx = charId - 1;
            gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].X = gPlayerX;
            gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].Y = gPlayerY;
            gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].field_1A = gUnknown_03000840;
            gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].field_1B = gUnknown_030034A8;
        }
    }
}

void REMOVE_PARTY_MEMBER(u8 characterId)
{
    u8 i;
    for(i = 0; i < 4; i++) {
        if(characterId == gGameInfo.PlayerInfo.Struct.CharactersInParty[i]) {
            while(i < 3) {
                gGameInfo.PlayerInfo.Struct.CharactersInParty[i] = gGameInfo.PlayerInfo.Struct.CharactersInParty[i+1];
                i++;
            }
            gGameInfo.PlayerInfo.Struct.CharactersInParty[i] = 0;
            break;
        }
    }
}

//GAME_OVER?
void GAME_OVER()
{
    REMOVE_PARTY_MEMBER(CHAR_ID_FLYINGMAN);
    REMOVE_PARTY_MEMBER(CHAR_ID_EVE);
    gGameInfo.PlayerInfo.Struct.CharacterInfo[0].Condition = 0;
    gGameInfo.PlayerInfo.Struct.CharacterInfo[0].CurrentPP = 0;
    gGameInfo.PlayerInfo.Struct.CharacterInfo[0].CurrentHP = gGameInfo.PlayerInfo.Struct.CharacterInfo[0].MaxHP;
    gGameInfo.PlayerInfo.Struct.Money = (gGameInfo.PlayerInfo.Struct.Money >> 1) + (gGameInfo.PlayerInfo.Struct.Money & 1);
    if (gUnknown_03003600 < 3u) {
        gPlayerX = daHalf(0x37E, 0x1C);
        gPlayerY = daHalf(0x92, DIR_UP);
        gFade_Type = 8;
    } else {
        gPlayerX = daHalf(0x37F, 0xB);
        gPlayerY = daHalf(0x36F, DIR_UP);
    }
    gUnknown_03000840 = gUnknown_030034A8 = 0;
    gUnknown_030007A0 = -1;
    gUnknown_03000818 = -8;
}

#ifdef NON_MATCHING
void UpdateCharactersInParty(void) {
    u8 sp0[4];
    u8 temp_r0;
    u8 idx;
    u8 party_count;
    u8 var_r4;
    u8 unconed;
    u8 char_id;

    sp0[0] = sp0[1] = sp0[2] = sp0[3] = 0;

    for (char_id = 1, var_r4 = 0; char_id < 8; char_id++){
        for (idx = 0; idx < 4; ++idx) {
             if (gGameInfo.PlayerInfo.Struct.CharactersInParty[idx] != char_id) {
                 sp0[var_r4++] = char_id;
                 break;
             }
        }
    }
    gGameInfo.PlayerInfo.Struct.CharactersInParty[0] = sp0[0];
    gGameInfo.PlayerInfo.Struct.CharactersInParty[1] = sp0[1];
    gGameInfo.PlayerInfo.Struct.CharactersInParty[2] = sp0[2];
    gGameInfo.PlayerInfo.Struct.CharactersInParty[3] = sp0[3];
    unconed = 0;
    party_count = 0;
    idx = gGameInfo.PlayerInfo.Struct.CharactersInParty[0] - 1;
    while(idx < 5){
        if (!(CONDITION_UNCONSCIOUS & gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].Condition)) {
            unconed++;
        }
        party_count++;
        if (party_count < 4) {
            idx = gGameInfo.PlayerInfo.Struct.CharactersInParty[party_count] - 1;
        } else {
            break;
        }
    }
    if ((unconed != 0) && (CONDITION_UNCONSCIOUS & gGameInfo.PlayerInfo.Struct.CharacterInfo[gGameInfo.PlayerInfo.Struct.CharactersInParty[0] - 1].Condition)) {
        while (CONDITION_UNCONSCIOUS & gGameInfo.PlayerInfo.Struct.CharacterInfo[gGameInfo.PlayerInfo.Struct.CharactersInParty[0] - 1].Condition) {
            for (idx = 0; idx < party_count - 1; idx++){
                gGameInfo.PlayerInfo.Struct.CharactersInParty[idx] = gGameInfo.PlayerInfo.Struct.CharactersInParty[idx+1];
            }
            gGameInfo.PlayerInfo.Struct.CharactersInParty[idx] = gGameInfo.PlayerInfo.Struct.CharactersInParty[0];
        }
    }
}
#else
NAKED
void UpdateCharactersInParty()
{
    asm(".include \"asm/non_matching/item_effects/UpdateCharactersInParty.s\"");
}
#endif

const u8 gEncounterRates[8] = {32, 21, 16, 13, 10, 8, 6, 4};

const u8 gEncounterList[64] = {
    0, // 0
    0, // 1
    0, // 2
    0, // 3
    0, // 4
    0, // 5
    0, // 6
    0, // 7
    0, // 8
    0, // 9
    0, // A
areaEncounterDef(1, 4), // B
areaEncounterDef(2, 1), // C
areaEncounterDef(0x1D, 0), // D
areaEncounterDef(4, 6), // E
areaEncounterDef(5, 5), // F
areaEncounterDef(6, 4), // 10
areaEncounterDef(7, 5), // 11
areaEncounterDef(8, 3), // 12
areaEncounterDef(9, 5), // 13
areaEncounterDef(0xA, 5), // 14
areaEncounterDef(0xB, 5), // 15
areaEncounterDef(0xC, 5), // 16
    0, // 17
    0, // 18
    0, // 19
    0, // 1A
    0, // 1B
areaEncounterDef(0xD, 4), // 1C
areaEncounterDef(0xE, 4), // 1D
areaEncounterDef(0xF, 4), // 1E
    0, // 1F
    0, // 20
    0, // 21
    0, // 22
    0, // 23
    0, // 24
    0, // 25
    0, // 26
    0, // 27
    0, // 28
areaEncounterDef(0x1C, 0), // 29
    0, // 2A
    0, // 2B
areaEncounterDef(0x11, 5), // 2C
areaEncounterDef(0x12, 5), // 2D
areaEncounterDef(0x13, 4), // 2E
areaEncounterDef(0x14, 7), // 2F
    0, // 30
areaEncounterDef(0x15, 5), // 31
    0, // 32
    0, // 33
areaEncounterDef(0x16, 5), // 34
areaEncounterDef(0x17, 5), // 35
areaEncounterDef(0x18, 5), // 36
areaEncounterDef(0x19, 5), // 37
    0, // 38
    0, // 39
areaEncounterDef(0x1A, 6), // 3A
    0, // 3B
    0, // 3C
    0, // 3D
areaEncounterDef(0x1B, 4), // 3E
    0, // 3F
};

const u8 Repel_BattleDifficultyTable[200] = {
    0, 3, 7, 3, 7, 3, 7, 7,
    3, 7, 3, 3, 18, 3, 3, 5,
    255, 255, 255, 255, 5, 5, 7, 7,
    255, 7, 7, 7, 7, 7, 7, 255,
    7, 255, 7, 7, 255, 7, 16, 255,
    16, 16, 255, 19, 10, 255, 255, 255,
    10, 10, 10, 10, 12, 12, 12, 10,
    12, 12, 10, 10, 10, 12, 12, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    16, 19, 19, 255, 255, 255, 18, 18,
    18, 18, 18, 255, 16, 16, 255, 255,
    16, 255, 5, 21, 255, 255, 255, 21,
    21, 255, 21, 21, 255, 255, 21, 23,
    23, 23, 23, 23, 23, 23, 23, 255,
    255, 255, 26, 26, 26, 26, 26, 30,
    30, 26, 26, 26, 26, 26, 255, 255,
    255, 26, 255, 255, 255, 255, 255, 255,
    255, 26, 26, 28, 28, 28, 28, 28,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 35, 35, 35,
    35, 35, 36, 36, 36, 36, 37, 37,
    37, 37, 37, 37, 37, 37, 37, 37,
    37, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0,
};

#ifdef NON_MATCHING
u32 TriggerEncounter(void) {
    u8 encounter_rate_buffer[8];
    u8 encounter_list_buffer[0x40];
    u8 difficulty_table_buffer[0xc8];
    s32 frequency;
    s32 total_offense;
    u8 areaEncounterDef_byte;
    u8 idx;
    u8 encounter_id;
    u8 i;
    u8 rate;

    //local variables. move here when matching
    memcpy(&encounter_rate_buffer, gEncounterRates, 8);
    memcpy(&encounter_list_buffer, gEncounterList, 64);
    memcpy(&difficulty_table_buffer, Repel_BattleDifficultyTable, 200);


    gUnknown_03002440 = encounter_list_buffer[gCurrentArea];
    if ((gUnknown_03000818 == 0) && (gUnknown_0300317C == 0) && (gUnknown_03001500 == 0)) {
        loop_3:
        //if frequency and id == 0, exit
        areaEncounterDef_byte = gUnknown_03002440;
        if (areaEncounterDef_byte == 0) {
            gUnknown_0300082C = areaEncounterDef_byte;
            return 0;
        }
        //get frequency
        frequency = 7 & gUnknown_03002440;
        //if frequency == 0, grab areaEncounterDef from savemeta (using id)
        if (frequency == 0) {
            gUnknown_03002440 = gGameInfo.PlayerInfo.Raw[0][gUnknown_03002440 >> 3];
            goto loop_3;
        }

        do {
            //this could be a 2d array but nope. still nes logic
            encounter_id = gSpawnSets[((0xF8 & gUnknown_03002440) << 1) + (Random() >> 28)];
        } while (encounter_id == 0);
        gUnknown_03002440 = encounter_id;
        //cap frequency to 8
        rate = gUnknown_0300082C + frequency;
        if (rate > 8) {
            rate = 8;
        }

        if ((Random() >> 20) < encounter_rate_buffer[rate - 1]) {
            gUnknown_0300082C++;
            if (gUnknown_0300082C > 2) {
                gUnknown_0300082C = 2;
            }
            if (gGameInfo.PlayerInfo.Struct.repel_counter != 0) {
                if (difficulty_table_buffer[encounter_id] >= gGameInfo.PlayerInfo.Struct.CharacterInfo[0].Level) {
                    total_offense = 0;
                    for (i = 0; i < 4; i++) {
                        idx = gGameInfo.PlayerInfo.Struct.CharactersInParty[i] - 1;
                        if (idx <= 4U) {
                            total_offense += gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].Offense;
                            total_offense += 0x3F & gItemData[gGameInfo.PlayerInfo.Struct.CharacterInfo[idx].EquipedItems[0]].Equipment;
                        }
                    }
                    if (total_offense < sub_8F12C1C(encounter_id)) {
                        goto block_25;
                    }
                }
                gGameInfo.PlayerInfo.Struct.repel_counter--;
                if ((gGameInfo.PlayerInfo.Struct.repel_counter << 0x18) > 0) {
                    return 0;
                } else {
                    DrawTextWithId(0x6D1U);
                    WaitForActionButtonPress();
                    sub_8F0B040();
                }
            }
block_25:
            return encounter_id;
        }
        return 0;
    }
    return 0;
}
#else
NAKED
u32 TriggerEncounter()
{
    asm(".include \"asm/non_matching/item_effects/TriggerEncounter.s\"");
}
#endif

void sub_8F09824(void) {
    u32 temp_r1;
    u8 char_id;

    if (!(0xF & gUnknown_03000804)) {
        temp_r1 = (gUnknown_03000804 >> 4) & 7;
        if (temp_r1 <= 3U) {
            char_id = gGameInfo.PlayerInfo.Struct.CharactersInParty[temp_r1];
            if (char_id != 0) {
                if ((CONDITION_COLD|CONDITION_POISONED) & gGameInfo.PlayerInfo.Struct.CharacterInfo[char_id - 1].Condition) {
                    if (gGameInfo.PlayerInfo.Struct.CharacterInfo[char_id - 1].CurrentHP > 1) {
                        gGameInfo.PlayerInfo.Struct.CharacterInfo[char_id - 1].CurrentHP--;
                    }
                    sub_8F011E4(0x16);
                    sub_8F040E0();
                    sub_8F01208();
                }
            }
        }
    }
}

void sub_8F09888(u8 a1) {
    u8 sp0[8] = {
    0x21, 0x22, 0x23, 0x24, 0x25, 0x24, 0x23, 0x22
    };
    u8 i;

    DmaFill32(3, 0xF301F300, 0x06002000, 0x800);

    *(u32* )(VRAM+0xe000) = 0x00000000;
    *(u32* )(VRAM+0xe004) = 0x00000000;
    *(u32* )(VRAM+0xe008) = 0x00000000;
    *(u32* )(VRAM+0xe00C) = 0x00000111;
    *(u32* )(VRAM+0xe010) = 0x11111111;
    *(u32* )(VRAM+0xe014) = 0x11111111;
    *(u32* )(VRAM+0xe018) = 0x11111111;
    *(u32* )(VRAM+0xe01C) = 0x11111000;
    *(u32* )(VRAM+0xe020) = 0x00000000;
    *(u32* )(VRAM+0xe024) = 0x00000000;
    *(u32* )(VRAM+0xe028) = 0x11111000;
    *(u32* )(VRAM+0xe02C) = 0x11111111;
    *(u32* )(VRAM+0xe030) = 0x11111111;
    *(u32* )(VRAM+0xe034) = 0x11111111;
    *(u32* )(VRAM+0xe038) = 0x00000111;
    *(u32* )(VRAM+0xe03C) = 0x00000000;
    REG_DISPCNT = 0x1900;
    i = 0;
    while (i < a1) {
        if ((i / 60) & 1) {
            REG_BG3HOFS = (0x3C - (u8) (i % 60U)) >> 2;
        } else {
            REG_BG3HOFS = (i % 60U) >> 2;
        }
        REG_BG3VOFS = (-i >> 1) & 7;
        *(u16* )PLTT = gNESPalette[sp0[(i >> 3) & 7]];
        UpdateBg0Tilemap();
        i++;
    }
    sub_8F01208();
    if (gCurrentBgMusic == 0x2B) {
        sub_8F06EA4();
    }
}

void sub_8F099D8(void) {
    LoadPalette(gUnknown_03001520, gUnknown_03001480);
    PlayNoiseSfx(2);
    sub_8F09A44(0x34);
    sub_8F09A44(0x36);
    sub_8F09A44(0x38);
    sub_8F09A44(0x34);
    sub_8F09A44(0x36);
    sub_8F09A44(0x38);
    DarkenPalette((u16* )BG_PLTT, gNESPalette[0x30], 0x40, 0x20);
    DarkenPalette((u16* )OBJ_PLTT, gNESPalette[0x30], 0x40, 0x20);
}

void sub_8F09A44(u8 a1) {
    DarkenPalette((u16* )BG_PLTT, gNESPalette[a1], 0x40, 0x20);
    DarkenPalette((u16* )OBJ_PLTT, gNESPalette[a1], 0x40, 0x20);
    DelayByAmount(3);
    sub_8F01020((u16* )BG_PLTT, &gUnknown_03001480[0], 0x40, 0x10);
    sub_8F01020((u16* )OBJ_PLTT, &gUnknown_03001480[4], 0x40, 0x10);
    DelayByAmount(3);
}

void sub_8F09AA8(void) {
    s32 i;
    for (i = 0; i < 0x20; i++){
        sub_8F01020((u16* )BG_PLTT, gUnknown_03001480, 0x40, 1);
        sub_8F01020((u16* )OBJ_PLTT, &gUnknown_03001480[4], 0x40, 1);
        DelayByAmount(10);
    }
}

extern u8 drain_gfx;
extern u8 gDrainTilemap;

void sub_8F09AE4(void) {
    u8 gDrainPaletteBG[16] = {
    0x0F, 0x22, 0x20, 0x11,
    0x0F, 0x10, 0x1A, 0x11,
    0x0F, 0x30, 0x00, 0x11,
    0x0F, 0x00, 0x10, 0x30,
    };
    u8 gDrainPaletteSpr[16] = {
    0x0F, 0x0F, 0x01, 0x31,
    0x0F, 0x0F, 0x13, 0x32,
    0x0F, 0x0F, 0x22, 0x32,
    0x0F, 0x0F, 0x11, 0x32,
    };
    u8 i;

    REG_BG2HOFS = 0;
    REG_BG2VOFS = 0;
    LoadPalette(gDrainPaletteBG, gUnknown_03001480);
    LoadPalette(gDrainPaletteSpr, &gUnknown_03001480[4]);
    BitUnpack(&drain_gfx, (void* )0x0600C000, 0x40);
    gUnknown_03000808 = 0x200;
    sub_8F00EE0(&gDrainTilemap, (u16* )0x06001000);
    for (i = 0; i < 0x20; i++){
        sub_8F01020((u16* )BG_PLTT, gUnknown_03001480, 0x40, 1);
        sub_8F01020((u16* )OBJ_PLTT, &gUnknown_03001480[4], 0x40, 1);
        DelayByAmount(1);
    }
}


NAKED
void sub_8F09B98()
{
    asm(".include \"asm/non_matching/item_effects/sub_8F09B98.s\"");
}

NAKED
void sub_8F09DAC()
{
    asm(".include \"asm/non_matching/item_effects/sub_8F09DAC.s\"");
}

void sub_8F09F84(void) {
    u8 i;

    for (i = 0; i < 0x20; i++){
        DarkenPalette((u16* )BG_PLTT, gNESPalette[0x38], 0x40, 1);
        DarkenPalette((u16* )OBJ_PLTT, gNESPalette[0x38], 0x40, 1);
        DelayByAmount(1);
    }
    sub_8F0A04C(0x50);
    sub_8F0A2A8(1);
    m4aMPlayFadeOut(&MusicPlayer0Info, 5);
    ChangeBgMusic(0xFF);
    DelayByAmount(0xB4);
}

void InitiateEndingSequence(void) {
    gGameInfo.PlayerInfo.Struct.CharacterInfo[0].Condition = 0;
    gGameInfo.PlayerInfo.Struct.CharacterInfo[1].Condition = 0;
    gGameInfo.PlayerInfo.Struct.CharacterInfo[2].Condition = 0;
    gGameInfo.PlayerInfo.Struct.CharacterInfo[3].Condition = 0;
    REG_BLDY = 0;
    REG_BLDCNT = 0;
    sub_8F0A04C(0x110);
    sub_8F0A2A8(2);
    ChangeBgMusic(0xFF);
    sub_8F0A2A8(3);
    PlayNoiseSfx(9);
    PlayPulse2Sfx(1);
    sub_8F0A2A8(4);
    ProcessEndingScript();
}

const u8 gGiegueCliff_BGPal[16] = {
0x0F, 0x12, 0x30, 0x00,
0x0F, 0x10, 0x30, 0x00,
0x0F, 0x17, 0x37, 0x16,
0x0F, 0x38, 0x30, 0x00
};

const u8 giegue_rock_gfx[] = INCBIN_U8("data/graphics/giegue_rock_gfx.2bpp");

const u8 gGiegueCliff_PartyPos[8] = {0x68, 0x78, 0x58, 0x88, 0x78, 0x88, 0x68, 0x98};

NAKED
void sub_8F0A04C(u16 a1)
{
    asm(".include \"asm/non_matching/item_effects/sub_8F0A04C.s\"");
}

NAKED
void sub_8F0A2A8(u8 a1)
{
    asm(".include \"asm/non_matching/item_effects/sub_8F0A2A8.s\"");
}

void sub_8F0A464(void) {
    u8 gUnknown_08F1BCB8[3] = {0x38, 0x21, 0x34};
    gUnknown_03000000++;
    if (gUnknown_03000000 > 2) {
        gUnknown_03000000 = 0;
    }
    *(u16*)PLTT = gNESPalette[gUnknown_08F1BCB8[gUnknown_03000000]];
    DelayByAmount(1);
    *(u16*)PLTT = 0;
}

NAKED
void ProcessEndingScript()
{
    asm(".include \"asm/non_matching/item_effects/ProcessEndingScript.s\"");
}
