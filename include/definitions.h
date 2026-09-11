#ifndef DEFINITIONS_AGB_H
#define DEFINITIONS_AGB_H

#include "gba/types.h"
#include "m4a.h"

#include "variables.h"
#include "structs.h"
#include "functions.h"

#define FIXED_POINT_SHIFT (5)
#define FIXED_PT_UP(val) 	(val << FIXED_POINT_SHIFT)
#define FIXED_PT_DN(val) 	(val >> FIXED_POINT_SHIFT)

#define FIXED_PT_MASK(val,shift, shift2) 	((val << shift) >> shift2)
#define FIXED_PT_MASK2(val,shift, shift2) 	((val >> shift) << shift2)

#define ITEM_IS_SELLABLE 0x80

//doorArgDef bitshift. common in positons related to doorArgDefs
#define daHalf(long, short) (long << 6) | short
#define areaEncounterDef(id, frequency) (id << 3) | frequency

typedef enum PlayerCondition
{
  CONDITION_NONE            = 0x00,
  CONDITION_COLD            = 0x01,
  CONDITION_POISONED        = 0x02,
  CONDITION_CONFUSED        = 0x04,
  CONDITION_FLUSTERED       = 0x08,
  CONDITION_ASLEEP          = 0x10,
  CONDITION_PARALYZED       = 0x20,
  CONDITION_STONE           = 0x40,
  CONDITION_UNCONSCIOUS     = 0x80,
} PlayerCondition;

typedef enum PlayerCondition2
{
  CONDITION2_MAYBE_PUZZLED  = 0x01,
  CONDITION2_ASTHMA         = 0x02,
  CONDITION2_BARRIER        = 0x04,
  CONDITION2_SHIELD_ALPHA   = 0x08,
  CONDITION2_SHIELD_BETA    = 0x10,
  CONDITION2_RESTRAINED     = 0x20,
  CONDITION2_PSI_BLOCKED    = 0x40,
  CONDITION2_BLIND          = 0x80,
} PlayerCondition2;

enum character_ids {
  CHAR_ID_NINTEN = 1,
  CHAR_ID_ANA,
  CHAR_ID_LLOYD,
  CHAR_ID_TEDDY,
  CHAR_ID_PIPPI,
  CHAR_ID_EVE,
  CHAR_ID_FLYINGMAN
};

enum DIRECTIONS {
  DIR_UP = 0,
  DIR_UP_RIGHT,
  DIR_RIGHT,
  DIR_DOWN_RIGHT,
  DIR_DOWN,
  DIR_DOWN_LEFT,
  DIR_LEFT,
  DIR_UP_LEFT
};

#ifdef NDS_VERSION
#define OAM_VRAM_OFFSET 0x00400000
#else
#define OAM_VRAM_OFFSET 0x00010000
#endif

#endif  // GUARD_AGB_SRAM_H
