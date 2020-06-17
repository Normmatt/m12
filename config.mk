### Build Configuration ###

# Default variables
GAME_REVISION ?= 0
GAME_LANGUAGE ?= JAPANESE
DEBUG         ?= 0
COMPARE       ?= 1

# For gbafix
MAKER_CODE  := 01

# Version
BUILD_NAME := mother12
TITLE      := MOTHER12
GAME_CODE  := A2U

# Revision
ifeq ($(GAME_REVISION), 0)
  BUILD_NAME := $(BUILD_NAME)
else
  $(error unknown revision $(GAME_REVISION))
endif

# Language
ifeq ($(GAME_LANGUAGE), ENGLISH)
  BUILD_NAME := $(BUILD_NAME)
  GAME_CODE  := $(GAME_CODE)E
else
ifeq ($(GAME_LANGUAGE), JAPANESE)
  BUILD_NAME := $(BUILD_NAME)
  GAME_CODE  := $(GAME_CODE)J
else
  $(error unknown language $(GAME_LANGUAGE))
endif
endif

# Debug
ifeq ($(DEBUG), 1)
  COMPARE := 0
  BUILD_NAME := $(BUILD_NAME)_debug
endif


