#ifndef VARIABLES_AGB_H
#define VARIABLES_AGB_H

#include "gba/types.h"
#include "m4a.h"
#include "structs.h"

// extern u32 gUnknown_03000000;
// extern u16 gUnknown_03000004;
// extern s32 (*gUnknown_03000010[2])(void);
// extern s32 (*off_3000018)(void);
// extern u8 gUnknown_03000780;
extern struct_off_3000784 *gUnknown_03000784;
extern u16 gUnknown_03000788;
// extern u8 gUnknown_0300078C;
extern u16 gPlayerX;
extern u8 gUnknown_03000794;
extern u8 gCurrentBgMusic;
// extern u8 gUnknown_0300079C;
extern s8 gUnknown_030007A0;
extern u8 gUnknown_030007A4;
extern u8 gUnknown_030007A8;
extern u16 gKeysDown;
extern s8 gUnknown_030007B0;
// extern char gUnknown_030007B4;
// extern __int16 gUnknown_030007B8;
extern s8 gUnknown_030007BC;
extern u8 gUnknown_030007C0;
// extern __int16 gUnknown_030007C4;
// extern char gUnknown_030007C8;
// extern char gUnknown_030007CC;
// extern char gUnknown_030007D0;
extern u8 gCurrentItemId;
extern s16 gUnknown_030007D8;
extern u8 *gScriptPtr;
extern u8 gUnknown_030007E0;
extern u32 gUnknown_030007E4;
extern u8 gUnknown_030007E8;
extern void *gUnknown_030007EC;
extern u8 gConsumableType;
extern u16 gKeysRepeat;
// extern char gUnknown_030007F8;
// extern int gUnknown_030007FC;
extern u16 gUnknown_03000800;
// extern u8 gUnknown_03000804;
extern u16 gUnknown_03000808;
// extern __int16 gUnknown_0300080C;
// extern char gUnknown_03000810;
extern u16 gPlayerY;
extern u8 gUnknown_03000818;
extern s32 gUnknown_0300081C;
// extern char gUnknown_03000820;
extern u8 gUnknown_03000824;
extern u16 gTempNumber;
// extern u8 gUnknown_0300082C;
// extern u8 gUnknown_03000830;
extern s8 gUnknown_03000838;
// extern char gUnknown_0300083C;
extern s8 gUnknown_03000840;
// extern __int16 gUnknown_03000844;
// extern char gUnknown_03000848;
extern u8 gCurrentCharacterId;
// extern int gUnknown_03000850;
extern OamData gSprites[128];
extern u8 gOldBgMusic;
// extern u8 gUnknown_03000C64;
// extern char gUnknown_03000C68;
// extern _UNKNOWN unk_3000C70;
extern u32 gScriptLR;
extern u16 gUnknown_03001480[64];
// extern char gUnknown_03001500;
extern u8 gUnknown_03001504;
extern u16 gUnknown_03001508;
// extern int gUnknown_0300150C;
extern u8 gUnknown_03001510;
extern u8 gUnknown_03001514;
// extern char gUnknown_03001520[16];
extern u16 gBg0TilemapBuffer[1024];
extern u8 gUnknown_03001D30;
// extern s8 gUnknown_03001D34;
extern struct_off_3000784 gUnknown_03001D40[];
// extern __int16 gUnknown_03002240[];
// extern char gUnknown_03002440;
extern char gSpriteBuffer[];
// extern __int16 gUnknown_03002452;
// extern _UNKNOWN unk_3002454;
// extern char gUnknown_03002455;
extern u16 gUnknown_03002850[][2];
// extern __int16 gUnknown_03002852[];
// extern int gUnknown_03002964;
extern u16 gBg2TilemapBuffer[];
extern u8 gUnknown_03003170;
extern u8 gUnknown_03003174;
extern u8 gUnknown_03003178;
extern u8 gUnknown_0300317C;
// extern u8 gUnknown_03003180;
// extern __int16 gUnknown_03003184;
extern u8 gUnknown_03003188;
// extern __int16 gUnknown_0300318C;
extern struct_3003190 gGameInfo;
extern u8 gUnknown_03003490;
extern void (*v_blank_fnc)(void);
// extern char gUnknown_03003498;
extern u32 gUnknown_0300349C;
// extern u8 gUnknown_030034A0;
extern u16 gUnknown_030034A4;
extern s8 gUnknown_030034A8;
extern u8 gTextOriginX;
extern u8 gTextPlaySfx;
extern u8 gTextDelayAfterWriteCharacter;
extern u8 gTextX;
// extern char gUnknown_030034BC;
// extern u16 gUnknown_030034C0;
extern u8 gTextMaxCharsPerLine;
extern u8 gTextMaxLines;
extern u8 gTextDelayAfterWriteCharacterEnabled;
// extern char gUnknown_030034D0;
extern u8 gTextY;
extern u8 gTextOriginY;
extern u8 gTextDelayAfterWritePeriod;
extern char gTextDelayAfterLineBreak;
extern char gTextNonEnglishCapitalLetter;
// extern u32 gUnknown_030034E8;
// extern char gUnknown_030034F0;
// extern char gUnknown_030034F4;
// extern char gUnknown_030034F8;
// extern u8 gUnknown_030034FC;
// extern sEnemyDataRam stru_3003500[];
// extern char gUnknown_03003580;
// extern __int16 gUnknown_03003582;
// extern char gUnknown_0300358C;
// extern char gUnknown_030035A0;
// extern char gUnknown_030035C0;
// extern char gUnknown_030035E0;
// extern char gUnknown_03003600;
// extern char gUnknown_03003604;
// extern int gExperiencePointsGained;
// extern _UNKNOWN unk_3003610;
// extern u8 gUnknown_03003620;
extern u8 gBattleItemId;
extern u8 gBattleEnemyGroupId;
// extern char gUnknown_0300362C;
extern u8 gEnemyGroupPositioning;
// extern _UNKNOWN unk_3003640;
// extern int gUnknown_03003650;
// extern char gUnknown_03003654;
// extern char gBattleItemInventoryIdx;
// extern char gUnknown_0300365C;
// extern char gUnknown_03003660;
// extern char gLastItemDropped;
// extern char gUnknown_03003668;
// extern unsigned __int8 gUnknown_03003670[16];
// extern unsigned __int16 gActionPpRequired[2];
// extern char gUnknown_03003684;
// extern void *off_3003688;
// extern u8 *gMiscContainer;
// extern u16 gUnknown_03003690;
// extern char gUnknown_03003694;
// extern char gUnknown_030036A0;
extern u8 gEnemyMusic;
// extern char gUnknown_030036B4;
// extern _BYTE gUnknown_030036C0[32];
// extern char gUnknown_030036E0;
// extern char gUnknown_030036E1;
// extern __int16 gUnknown_030036E2;
// extern __int16 gUnknown_030036E4;
// extern __int16 gUnknown_030036E6;
// extern char gUnknown_030036E8;
// extern u8 gUnknown_030036EC;
extern sItemData *off_30036F0;
extern u8 gOverworldMusic;
// extern __int16 gMoneyGained;
// extern unsigned __int8 gUnknown_030036FC[4];
// extern u8 gUnknown_03003700;
extern u8 gEnemyGroupSpecialEncounter;
// extern int gUnknown_03003708;
extern MusicPlayerInfo MusicPlayer0Info;
extern u16 IntrCheck;
// extern int gUnknown_03007FFC;


//Data
extern sItemData gItemData[];
extern const u16 gNESPalette[64];
void_pointer gItemEffectHandlers[48];
extern u16 gUnknown_08F645B4[];
extern u8 gUnknown_08F5C31C[512];
extern sPsiData gUnknown_08F5C51C[64];

#endif
