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
    u8 field_0;
    u8 Condition;
    u16 MaxHP;
    u16 MaxPP;
    u16 Offense;
    u16 Defense;
    u8 field_A;
    u8 Fight;
    u8 Speed;
    u8 Wisdom;
    u8 Strength;
    u8 Force;
    u8 Level;
    u8 ExpLo;
    u8 ExpMid;
    u8 ExpHi;
    u16 CurrentHP;
    u16 CurrentPP;
    u8 field_18;
    u8 field_19;
    u8 field_1A;
    u8 field_1B;
    u8 field_1C;
    u8 field_1D;
    u16 field_1E;
    u8 Inventory[8];
    u8 EquipedItems[4];
    u16 X;
    u16 Y;
    u8 PsiLearned[1];
    u8 field_31[7];
    u8 Name[8];
} sCharacterStatusInfo;

typedef struct GlobalPlayerInfo
{
    u8 MapVariable[4];
    u16 field_4;
    u16 field_6;
    u8 CharactersInParty[4];
    u16 field_C;
    u16 field_E;
    u16 Money;
    u8 BankedMoneyLo;
    u8 BankedMoneyMid;
    u8 BankedMoneyHi;
    u8 MoneyReadyToDepositLo;
    u8 MoneyReadyToDepositMid;
    u8 MoneyReadyToDepositHi;
    u8 field_18;
    u8 field_19;
    u8 field_1A[2];
    u8 field_1C[3];
    u8 CurrentItemId;
    u8 field_20;
    u8 field_21[23];
    u8 field_38[8];
    sCharacterStatusInfo CharacterInfo[7];
} GlobalPlayerInfo;

typedef struct struct_3003190
{
    GlobalPlayerInfo PlayerInfo;
    u8 Flags[32];
    u8 field_220[64];
    u8 field_260[32];
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
} struct_3003190;

typedef struct CURSOR_POSITION
{
  u16 character;
  u8 x;
  u8 y;
} CURSOR_POSITION;

typedef struct struct_off_3000784
{
  u8 Type;
  u8 field_1;
  u8 field_2;
  u8 field_3;
  u16 X;
  u16 Y;
  u32 ScriptPtr;
  u8 field_C[8];
  u8 field_14;
  u8 Direction;
  u8 field_16[2];
  u8 field_18;
  u8 field_19;
  u8 field_1A;
  u8 field_1B;
  u8 field_1C;
  u8 field_1D;
  u16 MovementDataPtr;
} struct_off_3000784;

typedef struct sItemData
{
  u16 NamePtr;
  u8 Flags;
  u8 Equipment;
  u8 ItemActionOverworld;
  u8 ItemActionInBattle;
  u16 Price;
} sItemData;

typedef struct sEnemyGroup
{
  u8 FirstEnemyType;
  u8 FirstEnemyFlags;
  u8 SecondEnemyType;
  u8 SecondEnemyFlags;
  u8 ThirdEnemyType;
  u8 ThirdEnemyFlags;
  u8 FourthEnemyType;
  u8 FourthEnemyFlags;
  u8 PositioningSpecialEncounter;
  u8 PaletteMusic;
} sEnemyGroup;

typedef struct PACKED sEnemyData
{
  u8 Unknown;
  u8 InitialStatus;
  u16 HP_SubPal_GfxArrangment;
  u16 PP_ExtraGfx;
  u16 Offense_FinalAction_Altitude;
  u16 Defense_DefeatMsg_Unknown;
  u8 Flags;
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
} sEnemyData;

typedef struct PACKED sEnemyDataRom
{
  sEnemyData Data;
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


#endif
