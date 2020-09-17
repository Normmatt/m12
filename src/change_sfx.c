#include "gba/gba.h"
#include "m4a.h"
#include "definitions.h"

void ChangeBgMusic(u8 id)
{
    u8 sfx_ids[] = {
        0x00, 0x32, 0x03, 0x04, 0x05, 0x06, 0x07, 0x33, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
        0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x01, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E,
        0x1F, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E,
        0x2F, 0x30, 0x31, 0x11, 0x2D
    };

    if (id >= sizeof(sfx_ids))
    {
        id = 0;
    }
    else
    {
        u8 v2 = (id - 51) & 0xFF;
        if (v2 <= 1)
        {
            v2 = ((u32)gGameInfo.Flags[1] << 5) & 0x80;
            if (v2)
            {
                id = 18;
            }
        }
        else
        {
            if (id == 6 && gGameInfo.PlayerInfo.CharactersInParty[1])
            {
                id = 7;
            }
            else if (id == 7 && !gGameInfo.PlayerInfo.CharactersInParty[1])
            {
                id = 6;
            }
        }
    }

    if (!id)
    {
        m4aMPlayAllStop();
    }

    if (gCurrentBgMusic != id)
    {
        gCurrentBgMusic = id;

        if (id)
        {
            m4aSongNumStart(sfx_ids[id]);
        }

        if (id == 1)
        {
            m4aMPlayImmInit(&MusicPlayer0Info);
            if (gGameInfo.Flags[30]) // MelodiesUnlocked
            {
                do
                {
                    u8 v4 = ((s32)gGameInfo.Flags[30] >> MusicPlayer0Info.clock / 0xC0) & 0xFF; // MelodiesUnlocked
                    if (!v4) break;

                    if (v4 & 1)
                    {
                        MPlayVolumeControl(&MusicPlayer0Info, 1, 256);
                        MPlayVolumeControl(&MusicPlayer0Info, 2, 0);
                    }
                    else
                    {
                        MPlayVolumeControl(&MusicPlayer0Info, 1, 0);
                        MPlayVolumeControl(&MusicPlayer0Info, 2, 256);
                    }
                    UpdateBg0Tilemap();

                } while (MusicPlayer0Info.status & 0xFFFF);
            }
            else
            {
                MPlayVolumeControl(&MusicPlayer0Info, 1, 0);
                MPlayVolumeControl(&MusicPlayer0Info, 2, 256);
                while (MusicPlayer0Info.clock <= 0xBF)
                {
                    UpdateBg0Tilemap();
                }
            }
            MPlayStop_rev01(&MusicPlayer0Info);
        }
    }
}

void sub_8F0088C(u8 new_bg)
{
    u8 old_bg = gCurrentBgMusic;
    ChangeBgMusic(new_bg);
    do
    {
        UpdateBg0Tilemap();
    } while (!(gKeysDown & (SELECT_BUTTON | B_BUTTON)) && (MusicPlayer0Info.status & 0xFFFF));
    ChangeBgMusic(old_bg);
}

void PlaySfxById0(u8 id)
{
    u8 sfx_ids[] = {
        0x00, 0x3C, 0x3D, 0x3E, 0x3F, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x62, 0x63, 0x64, 0x65
    };

    if (id > 10)
        id = 0;
    if (id == 7)
        id = ((u32)Random() >> 30) + 11;
    if (id)
        m4aSongNumStart(sfx_ids[id]);
}

void PlaySfxById1(u8 id)
{
    u8 sfx_ids[] = {
        0x00, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54,
        0x55, 0x56, 0x57
    };

    if (id > 18)
        id = 0;
    if (id)
        m4aSongNumStart(sfx_ids[id]);
}

void PlaySfxById2(u8 id)
{
    u8 sfx_ids[] = {
        0x00, 0x58, 0x59, 0x5A, 0x5B
    };

    if (id > 4)
        id = 0;
    if (id)
        m4aSongNumStart(sfx_ids[id]);
}

void PlaySfxById3(u8 id)
{
    u8 sfx_ids[] = {
        0x00, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61
    };

    if (id > 3)
    {
        id = 0;
    }

    if (id == 3)
    {
        id = ((u32)Random() >> 30) + 3;
    }

    if (id)
    {
        m4aSongNumStart(sfx_ids[id]);
    }
}

//This has to be included in this file as otherwise the linker forcibly aligns it to 8F1BA5C
//Does this mean that everything up to LoadMapObjects is in one file?
//Used in LoadMapObjects
const u8 gUnknown_08F1BA5B[109] = {
    0x05, 0x0F, 0x18, 0x1C, 0x06, 0x00, 0x00, 0x46, 0x08, 0x01, 0x58, 0x40, 0x08, 0x02, 0x40, 0x00,
    0x08, 0x04, 0x18, 0x40, 0x09, 0x06, 0x08, 0x00, 0x0D, 0x00, 0x00, 0x46, 0x19, 0x18, 0x00, 0x02,
    0x1A, 0x06, 0x00, 0x46, 0x1B, 0x02, 0x00, 0x46, 0x1B, 0x0E, 0x80, 0x00, 0x25, 0x09, 0x00, 0x04,
    0x25, 0x0A, 0x00, 0x04, 0x25, 0x0D, 0x00, 0x40, 0x25, 0x0F, 0x00, 0x40, 0x25, 0x11, 0x00, 0x04,
    0x30, 0x0B, 0x40, 0x40, 0x32, 0x11, 0x00, 0x80, 0x35, 0x02, 0x20, 0x00, 0x35, 0x0A, 0x20, 0x18,
    0x36, 0x1B, 0x00, 0x18, 0x37, 0x00, 0x00, 0x40, 0x37, 0x01, 0x00, 0x48, 0x39, 0x06, 0x00, 0x18,
    0x39, 0x08, 0x00, 0x46, 0x3E, 0x00, 0x00, 0x40, 0x3E, 0x1A, 0x00, 0x44, 0xFF
};