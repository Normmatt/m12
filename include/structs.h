#ifndef STRUCTS_AGB_H
#define STRUCTS_AGB_H

#include "gba/types.h"

#define NUM_ELEMS(a) (sizeof(a)/sizeof 0[a])

// define a function pointer type
typedef void (*void_pointer)(void);

typedef union PACKED {
    u8 byte0;
    u8 byte1;
    u16 word;
} byteword;

typedef struct sCharacterStatusInfo
{
/* 0x00 */ u8 field_0;
/* 0x01 */ u8 Condition;
/* 0x02 */ u16 MaxHP;
/* 0x04 */ u16 MaxPP;
/* 0x06 */ u16 Offense;
/* 0x08 */ u16 Defense;
/* 0x0A */ u8 field_A;
/* 0x0B */ u8 Fight;
/* 0x0C */ u8 Speed;
/* 0x0D */ u8 Wisdom;
/* 0x0E */ u8 Strength;
/* 0x0F */ u8 Force;
/* 0x10 */ u8 Level;
/* 0x11 */ u8 ExpLo;
/* 0x12 */ u8 ExpMid;
/* 0x13 */ u8 ExpHi;
/* 0x14 */ u16 CurrentHP;
/* 0x16 */ u16 CurrentPP;
/* 0x18 */ u16 name_pointer; //unused
/* 0x1A */ u8 field_1A;
/* 0x1B */ u8 field_1B;
/* 0x1C */ u8 object_type;
/* 0x1D */ u8 object_specs;
/* 0x1E */ u16 sprite; //unused...?
/* 0x20 */ u8 Inventory[8];
/* 0x28 */ u8 EquipedItems[4];
/* 0x2C */ u16 X; //breadcrumb coords???
/* 0x2E */ u16 Y;
/* 0x30 */ u8 PsiLearned[8];
/* 0x38 */ u8 Name[8];
} sCharacterStatusInfo;

typedef struct GlobalPlayerInfo
{
    u16 save_checksum;
    u16 save_checksum_2;
    u16 xpos_music;
    u16 ypos_direction;
    u8 CharactersInParty[4];
    u16 save_xpos_music;
    u16 save_ypos_direction;
    u16 Money;
    u8 BankedMoneyLo;
    u8 BankedMoneyMid;
    u8 BankedMoneyHi;
    u8 MoneyReadyToDepositLo;
    u8 MoneyReadyToDepositMid;
    u8 MoneyReadyToDepositHi;
    u8 battle_message_speed;
    u8 repel_counter;
    u8 field_1A;
    u8 giegue_rock_chunkid;
    u8 zoo_encounterDef1;
    u8 zoo_encounterDef2;
    u8 duncan_rock_chunkid;
    u8 big_bag_uses;
    u8 player_name[19];
    u8 field_33[13];
    sCharacterStatusInfo CharacterInfo[7];
} GlobalPlayerInfo;

typedef struct SaveGameStruct
{
    union {
		  GlobalPlayerInfo Struct;
		  u8 Raw[8][0x40];
    } PlayerInfo;
    u8 Flags[32];
    u8 present_flags[64];
    u8 counters[32];
    u8 Weapon;
    u8 field_281;
    u8 field_282;
    u8 field_283;
    u8 field_284;
    u8 field_285;
    u8 field_286;
    u8 field_287;
    u8 field_288;
    u8 FavFood[8];
    u8 field_291;
    u8 field_292;
    u8 field_293;
    u8 field_294;
    u8 field_295;
    u8 field_296;
    u8 field_297;
    u8 field_298;
    u8 field_299;
    u8 field_29A;
    u8 field_29B;
    u8 field_29C;
    u8 field_29D;
    u8 field_29E;
    u8 field_29F;
    u8 field_2A0;
    u8 field_2A1;
    u8 field_2A2;
    u8 field_2A3;
    u8 field_2A4;
    u8 field_2A5;
    u8 field_2A6;
    u8 field_2A7;
    u8 field_2A8;
    u8 field_2A9;
    u8 field_2AA;
    u8 field_2AB;
    u8 field_2AC;
    u8 field_2AD;
    u8 field_2AE;
    u8 field_2AF;
    u8 Closet[80];
} SaveGameStruct;

typedef struct CURSOR_POSITION
{
  u16 character;
  u8 x;
  u8 y;
} CURSOR_POSITION;

#define OBJECT_M_BF1_COLLIDABLE 0x80
#define OBJECT_M_BF1_INTERACTABLE 0x40
#define OBJECT_M_BF1_CHANGEDIR 0x20
#define OBJECT_M_BF1_HIGHPRIORITY 0x10
#define OBJECT_M_BF1_SCRIPT 0xf

typedef struct sObjectMemory
{
/* 0x00 */ u8 Type;
/* 0x01 */ u8 Area;
/* 0x02 */ u8 field_2;
/* 0x03 */ u8 field_3;
/* 0x04 */ u16 X;
/* 0x06 */ u16 Y;
/* 0x08 */ u8 *ScriptPtr;
/* 0x0C */ s8 vel_x;
/* 0x0D */ s8 vel_y;
/* 0x0E */ u8 field_e[6];
/* 0x14 */ u8 bitfield1;
/* 0x15 */ u8 Direction;
/* 0x16 */ u16 field_16;
/* 0x18 */ u8 field_18;
/* 0x19 */ u8 field_19;
/* 0x1A */ u8 field_1A;
/* 0x1B */ u8 field_1B;
/* 0x1C */ u8 field_1C;
/* 0x1D */ u8 field_1D;
/* 0x1E */ u16 MovementDataPtr;
} sObjectMemory;

typedef struct sItemData
{
  u16 NamePtr;
  u8 Flags;
  u8 Equipment;
  u8 ItemActionOverworld;
  u8 ItemActionInBattle;
  u16 Price;
} sItemData;

typedef struct sChoicerData
{
  u16 NamePtr;
  u16 X_Music;
  u16 Y_Direction;
  u16 Price;
} sChoicerData;

typedef struct sCharacterRate
{
  u8 exp;
  u8 arg1;
  u8 ppLevel;
  u8 fight;
  u8 speed;
  u8 wisdom;
  u8 strength;
  u8 force;
} sCharacterRate;

typedef union sOtherItemData
{
  sChoicerData ChoicerData;
  sCharacterRate CharacterRate;
} sOtherItemData;

typedef struct EnemyStat{
/* 0x00 */ u8 unk_0;
/* 0x01 */ u8 status;
/* 0x02 */ u16 hp_palette_tilemap;
/* 0x04 */ u16 pp_spritegfx;
/* 0x06 */ u16 offense_final_altitude;
/* 0x08 */ u16 defense_defeatMsg_unk;
/* 0x0A */ u8 flags;
/* 0x0B */ u8 fight;
/* 0x0C */ u8 speed;
/* 0x0D */ u8 wisdom;
/* 0x0E */ u8 strength;
/* 0x0F */ u8 force;
/* 0x10 */ u8 battle_actions[8];
/* 0x18 */ u16 name_ptr;
/* 0x1A */ u16 exp;
/* 0x1C */ u16 money;
/* 0x1E */ u8 item;
/* 0x1F */ u8 graphic_page;
} EnemyStat;

typedef struct PACKED sEnemyDataRom
{
  EnemyStat Data;
  u16 TextId;
  u16 Experience;
  u16 Money;
  u8 ItemDropped;
  u8 GraphicTileset;
} sEnemyDataRom;

typedef struct sEnemyDataRam
{
  u8 EnemyGroupId;
  u8 Status;
  u16 CurrentHP;
  u16 CurrentPP;
  u16 Offense;
  u16 Defense;
  u8 field_A;
  u8 Fight;
  u8 Speed;
  u8 Wisdom;
  u8 Strength;
  u8 Force;
  u8 Attack0;
  u8 Attack1;
  u8 Attack2;
  u8 Attack3;
  u8 Attack4;
  u8 Attack5;
  u8 Attack6;
  u8 Attack7;
  u8 field_18;
  u8 field_19;
  u8 field_1A;
  u8 field_1B;
  u8 field_1C;
  u8 field_1D;
  u8 field_1E;
  u8 field_1F;
} sEnemyDataRam;

typedef struct sTextState
{
  u8 byte0;
  u8 byte1;
  u8 byte2;
  u8 byte3;
  u8 byte4;
  u8 byte5;
  u8 byte6;
  u8 byte7;
} sTextState;

typedef struct sPsiData
{
  u16 NamePtr;
  u8 NintenLevelLearned;
  u8 AnaLevelLearned;
  u8 ActionNonBattle;
  u8 ActionInBattle;
  u8 Unused;
  u8 PPRequired;
} sPsiData;

//https://datacrystal.tcrf.net/wiki/EarthBound_Beginnings/Enemy_data
//enemy health can range from 0-$3ff (inclusive)
//ggggsshhhhhhhhhh
#define ething1(hp, palette, tilemap) (tilemap<<12) | (palette<<10) | hp
//enemy pp can range from 0-$3ff (inclusive)
//ggggggpppppppppp
#define ething2(pp, sprite) (sprite<<10) | pp
//enemy offense can range from 0-$3ff (inclusive)
//aaafffoooooooooo
#define ething3(offense, finalAction, altitude) (altitude<<13) | (finalAction<<10) | offense
//enemy defense can range from 0-$3ff (inclusive)
//uuummmdddddddddd
#define ething4(defense, messageDefeat, unkParam) (unkParam<<13) | (messageDefeat<<10) | defense

//something related to enemy sprites???
typedef struct sUnknown_030036C0{
  u8 unk0;
  u8 unk1;
  u16 unk2;
  u16 unk4;
  u16 unk6;
}sUnknown_030036C0;

typedef struct sBattlerData{
    u8 unk_0;
    u8 status;
    u16 curr_hp;
    u16 curr_pp;
    u16 offense;
    u16 defense;
    u8 resistances;
    u8 fight;
    u8 speed;
    u8 wisdom;
    u8 strength;
    u8 force;
    u8 battle_actions[8];
    u8 fulldata;
    u8 unk_19;
    u8 enemy_letter;
    u8 unk_1b;
    u8 target;
    u8 action;
    u8 m_status;
    u8 unk_1f;
}sBattlerData;

#endif
