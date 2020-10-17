#ifndef DEFINITIONS_AGB_H
#define DEFINITIONS_AGB_H

#include "gba/types.h"
#include "m4a.h"

#include "variables.h"
#include "structs.h"
#include "functions.h"

#define ITEM_IS_SELLABLE 0x80

typedef enum PlayerCondition
{
  CONDITION_COLD = 0x1,
  CONDITION_POISONED = 0x2,
  CONDITION_CONFUSED = 0x4,
  CONDITION_FLUSTERED = 0x8,
  CONDITION_ASLEEP = 0x10,
  CONDITION_PARALYZED = 0x20,
  CONDITION_STONE = 0x40,
  CONDITION_UNCONSCIOUS = 0x80,
} PlayerCondition;


#endif  // GUARD_AGB_SRAM_H
