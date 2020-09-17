#ifndef VARIABLES_AGB_H
#define VARIABLES_AGB_H

#include "gba/types.h"
#include "m4a.h"
#include "structs.h"

// extern u32 dword_3000000;
// extern u16 word_3000004;
// extern s32 (*dword_3000010[2])(void);
// extern s32 (*off_3000018)(void);
// extern char byte_3000780;
extern struct_off_3000784 *gUnknown_03000784;
// extern u16 word_3000788;
// extern u8 byte_300078C;
// extern __int16 gPlayerX;
extern u8 gUnknown_03000794;
extern u8 gCurrentBgMusic;
// extern char byte_300079C;
// extern char byte_30007A0;
// extern u8 byte_30007A4;
// extern char byte_30007A8;
extern u16 gKeysDown;
// extern char byte_30007B0;
// extern char byte_30007B4;
// extern __int16 word_30007B8;
// extern char byte_30007BC;
// extern char byte_30007C0;
// extern __int16 word_30007C4;
// extern char byte_30007C8;
// extern char byte_30007CC;
// extern char byte_30007D0;
extern u8 gCurrentItemId;
// extern __int16 word_30007D8;
extern u8 *gScriptPtr;
// extern char byte_30007E0;
// extern int dword_30007E4;
// extern char byte_30007E8;
extern void *gUnknown_030007EC;
extern u8 gConsumableType;
extern u16 gKeysRepeat;
// extern char byte_30007F8;
// extern int dword_30007FC;
// extern __int16 word_3000800;
// extern u8 byte_3000804;
// extern __int16 word_3000808;
// extern __int16 word_300080C;
// extern char byte_3000810;
// extern __int16 gPlayerY;
// extern char byte_3000818;
// extern int dword_300081C;
// extern char byte_3000820;
// extern char byte_3000824;
extern u16 gTempNumber;
// extern u8 byte_300082C;
// extern u8 byte_3000830;
// extern char byte_3000838;
// extern char byte_300083C;
// extern char byte_3000840;
// extern __int16 word_3000844;
// extern char byte_3000848;
extern u8 gCurrentCharacterId;
// extern int dword_3000850;
extern OamData gSprites[128];
// extern char gOldBgMusic;
// extern u8 byte_3000C64;
// extern char byte_3000C68;
// extern _UNKNOWN unk_3000C70;
extern u32 gScriptLR;
// extern u16 word_3001480[4];
// extern u16 word_3001488[60];
// extern char byte_3001500;
// extern char byte_3001504;
// extern u16 word_3001508;
// extern int dword_300150C;
extern u8 gUnknown_03001510;
extern u8 gUnknown_03001514;
// extern char byte_3001520[16];
extern u16 gBg0TilemapBuffer[1024];
extern u8 gUnknown_03001D30;
// extern s8 byte_3001D34;
// extern struct_off_3000784 stru_3001D40[];
// extern __int16 word_3002240[];
// extern char byte_3002440;
extern char gSpriteBuffer[];
// extern __int16 word_3002452;
// extern _UNKNOWN unk_3002454;
// extern char byte_3002455;
// extern __int16 word_3002850[];
// extern __int16 word_3002852[];
// extern int dword_3002964;
extern u16 gBg2TilemapBuffer[];
// extern char byte_3003170;
// extern u8 byte_3003174;
// extern char byte_3003178;
// extern char byte_300317C;
// extern u8 byte_3003180;
// extern __int16 word_3003184;
// extern u8 byte_3003188;
// extern __int16 word_300318C;
extern struct_3003190 gGameInfo;
extern u8 gUnknown_03003490;
// extern void (*v_blank_fnc)(void);
// extern char byte_3003498;
extern u32 gUnknown_0300349C;
// extern u8 byte_30034A0;
// extern __int16 word_30034A4;
// extern char byte_30034A8;
// extern u8 gTextOriginX;
// extern char gTextPlaySfx;
// extern u8 gTextDelayAfterWriteCharacter;
// extern u8 gTextX;
// extern char byte_30034BC;
// extern u16 word_30034C0;
// extern u8 gTextMaxCharsPerLine;
// extern u8 gTextMaxLines;
// extern u8 gTextDelayAfterWriteCharacterEnabled;
// extern char byte_30034D0;
// extern u8 gTextY;
// extern u8 gTextOriginY;
// extern u8 gTextDelayAfterWritePeriod;
// extern char gTextDelayAfterLineBreak;
// extern char gTextNonEnglishCapitalLetter;
// extern u32 dword_30034E8;
// extern char byte_30034F0;
// extern char byte_30034F4;
// extern char byte_30034F8;
// extern u8 byte_30034FC;
// extern sEnemyDataRam stru_3003500[];
// extern char byte_3003580;
// extern __int16 word_3003582;
// extern char byte_300358C;
// extern char byte_30035A0;
// extern char byte_30035C0;
// extern char byte_30035E0;
// extern char byte_3003600;
// extern char byte_3003604;
// extern int gExperiencePointsGained;
// extern _UNKNOWN unk_3003610;
// extern u8 byte_3003620;
// extern u8 byte_3003624;
// extern u8 gBattleEnemyGroupId;
// extern char byte_300362C;
// extern u8 gEnemyGroupPositioning;
// extern _UNKNOWN unk_3003640;
// extern int dword_3003650;
// extern char byte_3003654;
// extern char byte_3003658;
// extern char byte_300365C;
// extern char byte_3003660;
// extern char gLastItemDropped;
// extern char byte_3003668;
// extern unsigned __int8 byte_3003670[16];
// extern unsigned __int16 word_3003680[2];
// extern char byte_3003684;
// extern void *off_3003688;
// extern u8 *gMiscContainer;
// extern u16 word_3003690;
// extern char byte_3003694;
// extern char byte_30036A0;
extern u8 gEnemyMusic;
// extern char byte_30036B4;
// extern _BYTE byte_30036C0[32];
// extern char byte_30036E0;
// extern char byte_30036E1;
// extern __int16 word_30036E2;
// extern __int16 word_30036E4;
// extern __int16 word_30036E6;
// extern char byte_30036E8;
// extern u8 byte_30036EC;
extern sItemData *off_30036F0;
extern u8 gOverworldMusic;
// extern __int16 gMoneyGained;
// extern unsigned __int8 byte_30036FC[4];
// extern u8 byte_3003700;
extern u8 gEnemyGroupSpecialEncounter;
// extern int dword_3003708;
extern MusicPlayerInfo MusicPlayer0Info;
extern u16 IntrCheck;
// extern int dword_3007FFC;

#endif
