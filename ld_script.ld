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
		asm/AgbMain.o(.text);
		src/change_sfx.o(.text);
		asm/code.o(.text);
		asm/menu.o(.text);
		src/scripting.o(.text);
		asm/code2.o(.text);
		asm/item_effects.o(.text);
		asm/misc.o(.text);
		asm/menu_and_text_system.o(.text);
		asm/save.o(.text);
		asm/newgame.o(.text);
		asm/battle.o(.text);
		asm/sub_8F12338.o(.text);
        asm/m1_translation_new_code.o(.text);
        src/vwf.o(.text);
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
        data/data.o(.data);
        src/change_sfx.o(.rodata);
        data/data2.o(.data);
        sound/sound.o(.data);
        src/agb_sram.o(.rodata);
        data/data_after_sound.o(.data);
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
