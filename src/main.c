#include "gba/gba.h"
#include "m4a.h"
#include "definitions.h"

void AgbMain(void) {
	s32 i;
	
	REG_DISPCNT = 0;
	v_blank_fnc = NULL;
	DmaCopy32(3, (u32)intr_main, gUnknown_03000C70, 0x800);
	gUnknown_03007FFC /* INTR_VECTOR */ = (u32)gUnknown_03000C70;
	m4aSoundInit();
	gCurrentBgMusic = 0xFF;
	REG_IME = 1;
#ifdef NDS_VERSION
    *(vu32*)0x04000210 = 0x2001;
#else
	REG_IE = 0x2001;
#endif
	REG_DISPSTAT = 8;
	gKeysDown = gKeysRepeat = 0;
	gUnknown_03000794 = gUnknown_03003490 = 0;
	gUnknown_030007A8 = 0;
	for (i = 0; i < 128; ++i) {
		// _08F0022E
		gSpriteBuffer[i] = gSprites[i] = gUnknown_08F1B610;
	}
	
	DmaCopy32(3, gSpriteBuffer, OAM, OAM_SIZE);
	gUnknown_030007B8 = 0x800;
	sub_8F0D59C();
	REG_BG0CNT = 8;
	REG_BG1CNT = 0x609;
	REG_BG2CNT = 0x20B;
	REG_BG3CNT = 0x40B;
	
	DmaFill32(3, 0, BG_SCREEN_ADDR(0), 0x800);
	
	REG_BG0HOFS = 0;
	REG_BG0VOFS = 0;
	gUnknown_03000844 = gUnknown_0300318C = 0;
	BitUnpack(&gUnknown_08F339A0, (u8*)VRAM + OAM_VRAM_OFFSET, 0x80);
	BitUnpack(&gUnknown_08F67080, (u8*)VRAM + OAM_VRAM_OFFSET + 0x2000, 0x80);
	BitUnpack(&gUnknown_08F379A0, (u8*)VRAM + OAM_VRAM_OFFSET + 0x4000, 0x80);
	BitUnpack(&gUnknown_08F381A0, (u8*)VRAM + OAM_VRAM_OFFSET + 0x5000, 0x80);
	
	LoadPalette((u8*)gUnknown_08F64564, (u16*)OBJ_PLTT);
	LoadPalette((u8*)gUnknown_08F64564, &gUnknown_03001480[4]);
	sub_8F0AD0C();
	REG_DISPCNT = 0x1100;
	
	gUnknown_030007E4 = LoadSaveGame(&gGameInfo);
	if (gUnknown_030007E4 & ~0xF) {
		gUnknown_030007E4 &= 0xF;
		
		for (i = 0; i < 0x200; ++i) {
			// 30A
			((u8*)&gGameInfo)[i] = gInitialGlobalPlayerInfo[i];
		}
		for (; i < 0x300; ++i) {
			// 322
			((u8*)&gGameInfo)[i] = 0;
		}
		// 32C
		BeginNewGame();
		M1_CalculateChecksumAndWriteSave(&gGameInfo, gUnknown_030007E4);
	}
	// 33A
	gUnknown_03000788 = (gGameInfo.PlayerInfo.Struct.field_4 & 0xFFC0) + gGameInfo.field_2AC + 0x40;
	gUnknown_03001508 = (gGameInfo.PlayerInfo.Struct.field_6 & 0xFFC0) + gGameInfo.field_2AD + 0x80;
	gUnknown_03003178 = gGameInfo.PlayerInfo.Struct.field_4 & 0x3F;
	gUnknown_030007A4 = gGameInfo.PlayerInfo.Struct.field_6 & 7;
	gUnknown_03000C64 = 0x84;
	gUnknown_030007A0 = 0;
	gUnknown_030007E8 = gGameInfo.field_288;
	gUnknown_0300317C = 0;
	gUnknown_03000818 = 0;
	gUnknown_03003188 = gCurrentItemId = gUnknown_03003174 = gCurrentCharacterId = 0;
	gUnknown_03000824 = 0;
	gUnknown_030007E0 = 1;
	gUnknown_030007CC = 0;
	gUnknown_030007C4 = 0;
	gUnknown_03002964 = 0;
	gUnknown_03003498 = 0;
	// 3C4 / 3C8
	while(1) {
		if (gUnknown_030007E0 != 0) {
			ResetVariablesUponEnteringTown();
		}
		// 3D4
		sub_8F01388();
		sub_8F016EC();
		sub_8F02BBC(0);
		sub_8F02AFC(0);
		sub_8F0191C();
		DrawBg2Tilemap();
#ifdef NDS_VERSION
		DrawBg2Tilemap2();
#endif
		sub_8F040E0();
		DmaCopy32(3, gBg0TilemapBuffer, BG_SCREEN_ADDR(0), 0x800);
		DmaCopy32(3, gBg2TilemapBuffer, BG_SCREEN_ADDR(2), 0x800);
#ifdef NDS_VERSION
		DmaCopy32(3, gBg2TilemapBuffer, BG_SCREEN_ADDR(3), 0x800);
#endif
		DmaCopy32(3, gSpriteBuffer, OAM, OAM_SIZE);
		REG_BG2HOFS = (gUnknown_03000788 >> 2) & 0xF;
		REG_BG2VOFS = (gUnknown_03001508 >> 2) & 0xF;
		if (gUnknown_030007EC != 0) {
			sub_8F047B4();
		}
		// 446
		if (gUnknown_030007A0 < 0) {
			// 726
			sub_8F00ADC();
			continue;
		}
		// 452
		if (!(REG_DISPCNT & 0x400)) {
			sub_8F00C64();
		}
		// 468
		ShakeWhenMovingIfFlag();
		UpdateInput();
		
		if (gUnknown_030007A0 > 8) {
			// 47C
			if (gKeysRepeat & 0x3FF) {
				// 48C
				--gUnknown_030007A0;
				continue;
			}
			// 5AC
			gUnknown_030007A0 = 8;
		}
		// 5B0
		if (!gUnknown_03000818) {
            // 5BA
            if (!gUnknown_0300317C && !gUnknown_03001500) {
                if (!gUnknown_03003498 && gUnknown_03002964 >= 2 * 60 * 60 * 60 && (gGameInfo.Flags[8] & 0x80)) {
                    AskToContinueOrEndAdventure();
                } else /* 610 */ if (gKeysDown & 1) {
                    PlaySfxById1(5);
                    OpenCommandMenu();
                } else /* 62C */ if (gKeysDown & 0x200) {
                    PlaySfxById1(5);
                    HandleLButtonPress();
                } else /* 644 */ if (gKeysDown & 8) {
                    PlaySfxById1(5);
                    HandleMap();
                } else /* 658 */ if (gKeysDown & 6) {
                    PlaySfxById1(5);
                    HandleStatusMenu();
                    sub_8F0B040();
                }
                // 66E
                if (gUnknown_030007A0 < 0) {
                    // 726 again
                    sub_8F00ADC();
                    continue;
                }
            }
        }
		// 67A
		if (!gUnknown_03000818) {
            // 684
            if (gUnknown_03001500 != 0) {
                gUnknown_03000C64 = gUnknown_030007A4;
                --gUnknown_03001500;
            } else /* 6A8 */ if (gUnknown_08F1B618[(gKeysRepeat & 0xF0) >> 4] >= 0) {
                gUnknown_03000C64 = gUnknown_08F1B618[(gKeysRepeat & 0xF0) >> 4];
            } else /* 6D0 */ {
                gUnknown_03000C64 |= 0x80;
            }
            // 6D8
            if ((s8)gUnknown_03000C64 < 0) {
                continue;
            }
            // 6E4
            gUnknown_030007A4 = gUnknown_08F1B628[gUnknown_03000C64];
            if (!sub_8F019E4(0) && !gUnknown_0300317C && (gKeysRepeat & 0x100)) {
                sub_8F019E4(1);
            }
            // 718
            if (gUnknown_030007A0 < 0) {
                sub_8F00ADC();
            }
        }
	}
}

void ChangeBgMusic(u8 id)
{
    u8 sfx_ids[] = {
        0x00, 0x32, 0x03, 0x04, 0x05, 0x06, 0x07, 0x33, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
        0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x01, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E,
        0x1F, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E,
        0x2F, 0x30, 0x31, 0x11, 0x2D
    };

    if ( id >= sizeof(sfx_ids) )
    {
        id = 0;
    }
    else
    {
        u8 v2 = (id - 51) & 0xFF;
        if ( v2 <= 1 )
        {
            v2 = ((u32)gGameInfo.Flags[1] << 5) & 0x80;
            if ( v2 )
            {
                id = 18;
            }
        }
        else
        {
            if ( id == 6 && gGameInfo.PlayerInfo.Struct.CharactersInParty[1] )
            {
                id = 7;
            }
            else if ( id == 7 && !gGameInfo.PlayerInfo.Struct.CharactersInParty[1] )
            {
                id = 6;
            }
        }
    }

    if ( !id )
    {
        m4aMPlayAllStop();
    }

    if ( gCurrentBgMusic != id )
    {
        gCurrentBgMusic = id;

        if ( id )
        {
            m4aSongNumStart(sfx_ids[id]);
        }

        if ( id == 1 )
        {
            m4aMPlayImmInit(&MusicPlayer0Info);
            if ( gGameInfo.Flags[30] ) // MelodiesUnlocked
            {
                do
                {
                    u8 v4 = ((s32)gGameInfo.Flags[30] >> MusicPlayer0Info.clock / 0xC0) & 0xFF; // MelodiesUnlocked
                    if ( !v4 ) break;

                    if ( v4 & 1 )
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

                } while ( MusicPlayer0Info.status & 0xFFFF );
            }
            else
            {
                MPlayVolumeControl(&MusicPlayer0Info, 1, 0);
                MPlayVolumeControl(&MusicPlayer0Info, 2, 256);
                while ( MusicPlayer0Info.clock <= 0xBF )
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
    } while ( !(gKeysDown & (SELECT_BUTTON | B_BUTTON)) && (MusicPlayer0Info.status & 0xFFFF) );
    ChangeBgMusic(old_bg);
}

void PlaySfxById0(u8 id)
{
    u8 sfx_ids[] = {
        0x00, 0x3C, 0x3D, 0x3E, 0x3F, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x62, 0x63, 0x64, 0x65
    };

    if ( id > 10 )
        id = 0;
    if ( id == 7 )
        id = ((u32)Random() >> 30) + 11;
    if ( id )
        m4aSongNumStart(sfx_ids[id]);
}

void PlaySfxById1(u8 id)
{
    u8 sfx_ids[] = {
        0x00, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54,
        0x55, 0x56, 0x57
    };

    if ( id > 18 )
        id = 0;
    if ( id )
        m4aSongNumStart(sfx_ids[id]);
}

void PlaySfxById2(u8 id)
{
    u8 sfx_ids[] = {
        0x00, 0x58, 0x59, 0x5A, 0x5B
    };

    if ( id > 4 )
        id = 0;
    if ( id )
        m4aSongNumStart(sfx_ids[id]);
}

void PlaySfxById3(u8 id)
{
    u8 sfx_ids[] = {
        0x00, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61
    };

    if ( id > 3 )
    {
        id = 0;
    }

    if ( id == 3 )
    {
        id = ((u32)Random() >> 30) + 3;
    }

    if ( id )
    {
        m4aSongNumStart(sfx_ids[id]);
    }
}

void UpdateInput()
{
    u16 v1;

    v1 = 0x3FF & ~REG_KEYINPUT;
    gKeysDown = v1 & ~gKeysRepeat;
    gKeysRepeat = v1;
    
    v1 = gKeysRepeat & (DPAD_DOWN|DPAD_UP|DPAD_LEFT|DPAD_RIGHT);
    if ( v1 )
    {
        ++gUnknown_03000794;
        if ( gUnknown_03000794 >= 30u )
        {
            gUnknown_03000794 -= 6;
            gKeysDown |= v1;
        }
    }
    else
    {
        gUnknown_03000794 = 0;
    }

    v1 = gKeysRepeat & (L_BUTTON|B_BUTTON|A_BUTTON);
    if ( v1 )
    {
        ++gUnknown_03003490;
        if ( gUnknown_03003490 >= 30u )
        {
            gUnknown_03003490 -= 12;
            gKeysDown |= v1;
        }
    }
    else
    {
        gUnknown_03003490 = 0;
    }
}

void VblankIntr()
{
    m4aSoundVSync();
    IntrCheck = 1;
    if ( v_blank_fnc )
    {
        v_blank_fnc();
    }
}

void IntrDummy()
{
    //Empty
}

void FadeOut()
{
    s32 i;

    REG_BLDY = 0;
    REG_BLDCNT = 255;
    for( i = 0; i <= 16; i += 2 )
    {
        REG_BLDY = i;
        sub_8F040E0();
    }
}

void FadeIn()
{
    s32 i;

    REG_BLDY = 16;
    REG_BLDCNT = 255;
    for( i = 16; i >= 0; i -= 2 )
    {
        REG_BLDY = i;
        sub_8F040E0();
    }
    REG_BLDCNT = 0;
}

void sub_8F00ADC()
{
    s32 v0;

    switch ( gUnknown_030007E8 )
    {
        case 1:
            PlaySfxById0(8u);
            FadeOut();
            break;
        case 2:
            ChangeBgMusic(0xFFu);
            PlaySfxById1(0x10u);
            {
                u16 color = *(&gNESPalette[0x34]);
                for(v0 = 31; v0 >= 0; v0--)
                {
                    DarkenPalette((u16 *)0x5000000, color, 0x40u, 1u);
                    DarkenPalette((u16 *)0x5000200, color, 0x40u, 1u);
                    DelayByAmount(2u);
                }
            }
            break;
        case 3:
            sub_8F099D8();
            break;
        case 4:
            sub_8F09B98();
            break;
        case 5:
            sub_8F09DAC();
            break;
        case 6:
            FadeOut();
            DelayByAmount(0x1Eu);
            break;
        case 7:
            FadeOut();
            ChangeBgMusic(0xFFu);
            DelayByAmount(0x5Au);
            sub_8F06FF0();
            break;
        case 9:
            {
                u16 color = *(gNESPalette+0x22);
                for(v0 = 15; v0 >= 0; v0--)
                {
                    DarkenPalette((u16 *)0x5000000, color, 0x40u, 2u);
                    DarkenPalette((u16 *)0x5000200, color, 0x40u, 2u);
                    DelayByAmount(1u);
                }
            }
            break;
        default:
            FadeOut();
            break;
    }
    REG_DISPCNT = 0;
    gUnknown_03000788 = (gPlayerX & 0xFFC0) + gUnknown_03000840;
    gUnknown_03001508 = (gPlayerY & 0xFFC0) + gUnknown_030034A8;
    gUnknown_03003178 = gPlayerX & 0x3F;
    gUnknown_030007A4 = gPlayerY & 7;
    gUnknown_030007A0 = 32;
    gUnknown_030007E0 = 1;
}

void sub_8F00C64()
{
    s32 i;

    if ( gUnknown_03003178 )
    {
        ChangeBgMusic(gUnknown_03003178);
    }
    REG_DISPCNT = 0x1500;
    switch( gUnknown_030007E8 )
    {
        case 2:
        {
            u16 *ptr = gUnknown_03001480;
            for(i=31; i >= 0; i--)
            {
                sub_8F01020((u16 *)0x5000000, ptr, 64, 1);
                sub_8F01020((u16 *)0x5000200, ptr+4, 64, 1);
                DelayByAmount(2u);
            }
            break;
        }
        case 3:
            sub_8F09AA8();
            break;
        case 9:
        {
            u16 *ptr = gUnknown_03001480;
            for(i=3; i >= 0; i--)
            {
                sub_8F01020((u16 *)0x5000000, ptr, 64, 8);
                sub_8F01020((u16 *)0x5000200, ptr+4, 64, 8);
                DelayByAmount(1u);
            }
            break;
        }
        default:
            FadeIn();
            break;
    }
    gUnknown_030007E8 = 0;
}

void sub_8F00D24()
{
    if ( gUnknown_03000824 )
    {
        sub_8F03128();
        REG_DISPCNT = 0x1500;
        FadeIn();
        gUnknown_03000824 = 0;
    }
}

void ShakeWhenMovingIfFlag()
{
    // Defeating lamp at start of game sets this flag.
    // Encountering the doll clears this flag.
    if ( gGameInfo.Flags[31] & 0x80 )
    {
        if ( !(Random() >> 26) )
        {
            REG_BLDY = 4;
            REG_BLDCNT = 255;
            PlaySfxById0(7u);
            SCR_CMD_69_Quake();
            PlaySfxById0(7u);
            SCR_CMD_69_Quake();
            PlaySfxById0(7u);
            SCR_CMD_69_Quake();
            PlaySfxById0(7u);
            SCR_CMD_69_Quake();
            REG_BLDY = 0;
            REG_BLDCNT = 0;
        }
    }
}

void BitUnpack(void *src, void *dst, s32 numTiles)
{
    s32 i, j;
    u32 sofs;
    u32 dofs;
    u32 plane1;
    u32 plane2;
    u8 *sptr;
    u32 *dptr;
    u32 val;

    i = 0;
    while( i < numTiles )
    {
        if ( !((i + 1) & 0x3F) )
        {
            sub_8F040E0();
        }
        j = 0;
        sofs = 16 * i;
        dofs = 32 * i;
        sptr = (u8*)(sofs+(u32)src);
        dptr = (u32*)(dofs+(u32)dst);
        while( j < 8 )
        {
            plane1 = (u8)sptr[j];
            plane2 = (u8)sptr[j + 8];
            val = (plane1 >> 7);
            val += (((s32)plane2 >> 6) & 2);
            val += (((s32)plane1 >> 2) & 0x10);
            val += (((s32)plane2 >> 1) & 0x20);
            val += ((plane1 <<  3) & 0x100);
            val += ((plane2 <<  4) & 0x200);
            val += ((plane1 <<  8) & 0x1000);
            val += ((plane2 <<  9) & 0x2000);
            val += ((plane1 << 13) & 0x10000);
            val += ((plane2 << 14) & 0x20000);
            val += ((plane1 << 18) & 0x100000);
            val += ((plane2 << 19) & 0x200000);
            val += ((plane1 << 23) & 0x1000000);
            val += ((plane2 << 24) & 0x2000000);
            val += ((plane1 << 28) & 0x10000000);
            val += ((plane2 << 29) & 0x20000000);
            *dptr++ = val;
            ++j;
        }
        ++i;
    }
}

void LoadPalette(u8 *src, u16 *dst)
{
    s32 i, j;
    for( i = 0; i < 4; i++ )
    {
        for( j = 0; j < 4; j++ )
        {
            u16 *ptr = (dst + (16 * i) + j);
            *ptr = gNESPalette[*src++];
        }
    }
}

void sub_8F00EE0(u8 *src, u16 *dst)
{
    s32 i;
    u32 val;

    for( i = 0; i < 960; i++ )
    {
        val = src[i];
        val += gUnknown_03000808;
        val += ((((s32)src[((i >> 2) & 7) + 960 + ((i >> 4) & 0x38)] >> ((i & 2) + ((i >> 4) & 4))) & 3) << 12);
        dst[i] = val;
    }
}

void sub_8F00F48(u8 *src, s16 a2, s16 *dst)
{
    u8 i;

    if ( (u16)a2 >= 960 )
    {
        for(i = 0; i < 32; i++)
        {
            dst[i] = 0;
        }
    }
    else
    {
        u16 t0 = ((a2 / 240) * 1024) + (32 * ((a2 % 240) / 8));
        s16 t1 = (t0 & 0xFC00);
        u16 t2 = t0 / 16;
        s16 t3 = (u16)(((s16)t2) & 0x38)+(960)+t1;
        u16 t4 = (u16)t3;
        for( i = 0; i < 32; i++ )
        {
            dst[i] = gUnknown_03000808 + src[t0+i] + (((src[((i / 4) & 7)+t4] >> ((i & 2) + ((t2) & 4))) & 3) << 12);
        }
    }
}

//This has to be included in this file as otherwise the linker forcibly aligns it to 8F1BA5C
//Does this mean that everything up to and including LoadMapObjects is in one file?
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