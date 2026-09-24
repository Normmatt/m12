OUTPUT_ARCH(arm)

gNumMusicPlayers = 4;

SECTIONS
{
    . = 0x02000000;
    EWRAM (NOLOAD) :
    ALIGN(4)
    {
        INCLUDE "sym_ewram.txt"
    }

    . = 0x03000000;
    IWRAM (NOLOAD) :
    ALIGN(4)
    {
        INCLUDE "sym_iwram.txt"
    }

	. = 0x08000000;
    .m2_data :
	ALIGN(4)
	{
		data/m2.o(.data);
	} = 0

    . = 0x08F00000;
    .text :
	ALIGN(4)
	{
        src/crt0.o(.text);
		src/main.o(.text);
		src/code.o(.text);
		src/code1.o(.text);
		src/menu.o(.text);
		src/scripting.o(.text);
		src/code2.o(.text);
		src/item_effects.o(.text);
		src/misc.o(.text);
		src/menu_and_text_system.o(.text);
		src/save.o(.text);
		src/newgame.o(.text);
		src/gfx.o(.text);
		src/battle.o(.text);
        src/m1_translation_new_code.o(.text);
		src/mks4agbLib.o(.text);
		src/libagbsyscall.o(.text);
        src/agb_sram.o(.text);
        tools/agbcc/lib/libgcc.a:_call_via_rX.o(.text);
        tools/agbcc/lib/libgcc.a:_divsi3.o(.text);
        tools/agbcc/lib/libgcc.a:_dvmd_tls.o(.text);
        tools/agbcc/lib/libgcc.a:_modsi3.o(.text);
        tools/agbcc/lib/libgcc.a:_udivsi3.o(.text);
        tools/agbcc/lib/libgcc.a:_umodsi3.o(.text);
        tools/agbcc/lib/libc.a:memcpy.o(.text);
        tools/agbcc/lib/libc.a:memset.o(.text);
		asm/code_trunks.o(.text);
	} = 0

    .data :
	ALIGN(4)
    {
        src/data.o(.rodata);
        src/data.o(.data);
        src/main.o(.rodata);
        src/main.o(.data);
		src/code.o(.rodata);
		src/code.o(.data);
        src/code2.o(.rodata);
        src/item_effects.o(.rodata);
        src/misc.o(.rodata);
        src/menu_and_text_system.o(.rodata);
        src/menu_and_text_system.o(.data);
		src/save.o(.rodata);
		src/newgame.o(.rodata);
		src/newgame.o(.data);
		src/gfx.o(.rodata);
		src/gfx.o(.data);
        src/battle.o(.rodata);
        src/battle.o(.data);
        data/sound.o(.data);
        sound/sound.o(.data);
        src/m1_translation_new_code.o(.rodata);
        src/m1_translation_new_code.o(.data);
        src/agb_sram.o(.rodata);
        data/debug.o(.data);
    } = 0

    /* DWARF debug sections.
       Symbols in the DWARF debugging sections are relative to the beginning
       of the section so we begin them at 0.  */

    /* DWARF 1 */
    .debug          0 : { *(.debug) }
    .line           0 : { *(.line) }

    /* GNU DWARF 1 extensions */
    .debug_srcinfo  0 : { *(.debug_srcinfo) }
    .debug_sfnames  0 : { *(.debug_sfnames) }

    /* DWARF 1.1 and DWARF 2 */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }

    /* DWARF 2 */
    .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
