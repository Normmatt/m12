#ifdef ENGLISH

#include "gba/gba.h"
#include "functions.h"
#include "variables.h"
#include "definitions.h"

u8 CUSTOM_WRITE_ADDR[16];
u8 CUSTOM_TARGET_ADDR[256];
u16 CUSTOM_CURRENT_LINE;
bool8 CUSTOM_IN_BATTLE;


extern const u8 gMsg_WindowMessage_small[];
extern const u8 gMsg_WindowMessage[];

const u8 m1_window_data[] = INCBIN_U8("data/english/m1_window_data.bin");
const u8 m1_window_yes_no[] = __("  Yes       No            \0");
const u8 m1_window_yes_no_small[] = __("  Yes       No     \0");

u8* choose_window(u8* small, u8* big) {
    if (CUSTOM_CURRENT_LINE != 0) {
        if (m1_window_data[CUSTOM_CURRENT_LINE] == 1) {
            return big;
        }
    }
    return small;
}

void choose_text_window_type(void) {
    u8* current_window = choose_window((u8*) gMsg_WindowMessage_small, (u8*) gMsg_WindowMessage);
    // unset our custom "current line #" variable
    CUSTOM_CURRENT_LINE = 0;

    //reimplement sub_8F0AE34
    HandleControlCodes(current_window);
    gTextPlaySfx = 0x80;
}

// the yes/no selection is weird, so we gotta make it fit the window size too
u8* choose_yes_no_size(void) {
    return choose_window((u8*) m1_window_yes_no_small, (u8*) m1_window_yes_no);
}

void save_line_number_a(u16 textId) {
    CUSTOM_CURRENT_LINE = textId;
}

// basic string copy, r0 is the source address, r1 is the target address, 00 = end of line
// upon return, r0 has the number of bytes copied, r1 has the address of the end of line
u8 strcopy(u8* source, u8* target){
    u8 bytes = 0;
    while ((*target++ = *source++)) {
        bytes++;
    }
    return bytes;
}

extern const u8 gMsg_Tachi[];
extern u16 gUnknown_08F29EB0[];
const u8 m1_item_articles[][0x10] = INCBIN_U8("data/english/m1_item_articles.bin");
// copies a string (meant for battle text) to RAM, parsing control codes when possible
// this is done so we can add in auto line breaks as necessary later on
// r0 is source address, r1 is target address, line needs to be terminated with 00
void parsecopy(u8* source, u8* target){
    u8 scratch;
    u32 scratch2;
    s32 scratch3;
    u32 r0;
    u8* sample;
    while(1){
        u8 chr = *source; // load character from ROM string
        // see if it's a control code, if so, let's do control code stuff
        if (chr == 3){
            switch(*(source+1)){
                case 0x10: //NINTENNAME
                    target += strcopy(gGameInfo.PlayerInfo.Struct.CharacterInfo[0].Name, target);
                    source += 2;
                    continue;
                case 0x11: //LLOYDNAME
                    target += strcopy(gGameInfo.PlayerInfo.Struct.CharacterInfo[2].Name, target);
                    source += 2;
                    continue;
                case 0x12: //ANANAME
                    target += strcopy(gGameInfo.PlayerInfo.Struct.CharacterInfo[1].Name, target);
                    source += 2;
                    continue;
                case 0x13: //TEDDYNAME
                    target += strcopy(gGameInfo.PlayerInfo.Struct.CharacterInfo[3].Name, target);
                    source += 2;
                    continue;
                case 0x16: //PARTYLEAD
                    scratch = gGameInfo.PlayerInfo.Struct.CharactersInParty[0];
                    target += strcopy(gGameInfo.PlayerInfo.Struct.CharacterInfo[scratch].Name, target);
                    source += 2;
                    continue;
                case 0x17: //TACHI
                    scratch = gGameInfo.PlayerInfo.Struct.CharactersInParty[1];
                    if (scratch != 0){
                        target += strcopy((u8*) gMsg_Tachi, target);
                    }
                    source += 2;
                    continue;
                case 0x1D: //CURRENTITEM
                    if ((s8) gCurrentItemId >= 0){
                        scratch2 = 0x3E8;
                    } else {
                        if (gCurrentItemId < 0xC0){
                            scratch2 = gUnknown_08F29EB0[gCurrentItemId-0x80];
                            target += strcopy((u8*) gUnknown_030034E8[scratch2], target);
                            source += 2;
                            continue;
                        } else {
                            scratch2 = 0x3A8;
                        }
                    }
                    target += strcopy((u8*) gUnknown_030034E8[gCurrentItemId+scratch2], target);
                    source += 2;
                    continue;
                case 0x20: //ATTACKER
                    target += strcopy(&gUnknown_03003640, target);
                    source += 2;
                    continue;
                case 0x21: //BEINGATTACKED
                    target += strcopy(&gUnknown_03003610, target);
                    source += 2;
                    continue;
                case 0x22: //ITEMATTACK
                    target += strcopy(&gUnknown_030036A0, target);
                    source += 2;
                    continue;
                case 0x23: //DELTAATTACK
                    scratch2 = (u32) gUnknown_03003708;
                    // initialize counter
                    scratch3 = 0;
                    do {
                        CUSTOM_WRITE_ADDR[scratch3++] = (scratch2 % 10) + 0xB0;
                        scratch2 /= 10;
                    } while (scratch2 != 0);

                    // the number string is actually stored in reverse, so we gotta fix that
                    if (scratch3 <= 0) {
                        source += 2;
                        continue;
                    }
                    while (scratch3 > 0) {
                        *target++ = CUSTOM_WRITE_ADDR[--scratch3];
                    }
                    source += 2;
                    continue;
                case 0xF0:
                    scratch = gBattleActionData[gUnknown_03003690+1];
                    target += strcopy(m1_item_articles[scratch], target);
                    source += 2;
                    continue;
                case 0xF1:
                    target += strcopy(m1_item_articles[gCurrentItemId], target);
                    source += 2;
                    continue;
            }

            *target++ = *source++;
            *target++ = *source++;
        } else {
            *target++ = *source++;
            if (chr == 0){
                break;
            }
        }
    }
}

void perform_auto_wrap(u8* target) {
    // r7 is last_space, the spot where the last space was
    u8* last_space = target;
    u8 char_loc = 0;

    // Now we do the meat of the auto word wrap stuff
    while(1){
        // load current character
        switch(*target){
            // jump to the end if we're at the end of the string
            case 0:
                return;
            // is the current character a space?
            case 1:
                last_space = target;
                break;
            // is the current character a [BREAK]?
            case 2:

                char_loc = 0;
                last_space = target;
                *target++;
                continue;
            // if r0 == 0x03, this is a CC, so skip the width adding junk
            case 3:
                *target++;
                continue;

        }
        // Here is the real meat of the auto word wrap routine

        // if curr_width < box_width, go to no_wrap_needed to update the width and such
        char_loc++;
        if (char_loc > 26){
            // if we're executing this, then width >= box_width, so do curr_width = 0 now
            char_loc = 0;
            // curr_char_address = last_space_address // we're gonna recheck earlier stuff
            target = last_space;
            *target = 2;
        }

        *target++;
    }

    // Let's get out of here!
    return;
}

void copy_battle_line_to_ram(u16 textId) {
    // now find the ROM address of the line in question, place in r0
    u8* source = (u8*) gUnknown_030034E8[textId];
    if (*source == 0){
        //this line is referenced by the auto-indent hack
        return;
    }

    // now we store the target in r1 and execute a custom string copy
    parsecopy(source, CUSTOM_TARGET_ADDR);

    // now we scan the final string and add [BREAK]s as necessary to create auto-wrapping
    perform_auto_wrap(CUSTOM_TARGET_ADDR);

    // now we send the game's display routine on its merry way
    CUSTOM_IN_BATTLE = TRUE;
    HandleControlCodes(CUSTOM_TARGET_ADDR);
    CUSTOM_IN_BATTLE = FALSE;
}

void add_space_to_enemy_name(u8* name, u8 letter) {
    *name++ = 1;
    *name = letter;
}

void possibly_ignore_auto_indents() {
    gTextX = gTextOriginX;
    if(!CUSTOM_IN_BATTLE) {
        gTextX++;
    }
}

#endif