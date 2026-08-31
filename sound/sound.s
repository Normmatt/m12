	.include "asm/macros/m4a.inc"
	.include "asm/macros/music_voice.inc"

	.section .data

	@********************** Voicegroup **********************@

	.align 2
	.global gUnknown_08F711F0
gUnknown_08F711F0:	@ 0x08F711F0
	voice_square_2_alt 2, 0, 0, 7, 0	@08F711F0
	voice_square_1 0, 0, 0, 0, 5, 1	@08F711FC
	voice_square_2_alt 2, 1, 0, 6, 2	@08F71208
	voice_square_2_alt 3, 1, 0, 6, 2	@08F71214
	voice_noise_alt 60, 0, 0, 0, 0, 0, 7, 0	@08F71220
	voice_square_2_alt 1, 0, 0, 12, 0	@08F7122C
	voice_square_2_alt 1, 4, 0, 15, 0	@08F71238
	voice_square_1_alt 0, 0, 0, 0, 12, 0	@08F71244
	voice_square_1_alt 0, 0, 4, 0, 15, 0	@08F71250
	voice_programmable_wave_alt gUnknown_08F71B18, 0, 0, 12, 0	@08F7125C
	voice_programmable_wave_alt gUnknown_08F71B18, 4, 0, 15, 0	@08F71268
	voice_square_2_alt 1, 0, 0, 10, 1	@08F71274
	voice_square_1_alt 0, 0, 0, 0, 10, 1	@08F71280
	voice_square_2_alt 1, 0, 2, 10, 4	@08F7128C
	voice_square_1_alt 0, 0, 0, 2, 10, 4	@08F71298
	voice_programmable_wave_alt gUnknown_08F71B38, 0, 0, 11, 0	@08F712A4
	voice_square_2_alt 1, 0, 0, 9, 0	@08F712B0
	voice_square_1_alt 0, 0, 0, 0, 9, 0	@08F712BC
	voice_square_2_alt 3, 0, 2, 6, 2	@08F712C8
	voice_square_1_alt 0, 3, 0, 2, 6, 2	@08F712D4
	voice_square_2_alt 3, 0, 2, 7, 2	@08F712E0
	voice_square_1_alt 0, 3, 0, 2, 7, 2	@08F712EC
	voice_square_2_alt 3, 0, 0, 12, 0	@08F712F8
	voice_square_1_alt 0, 3, 0, 0, 12, 0	@08F71304
	voice_square_2_alt 2, 0, 0, 7, 2	@08F71310
	voice_square_2_alt 3, 0, 0, 15, 0	@08F7131C
	voice_square_2_alt 3, 0, 1, 9, 2	@08F71328
	voice_square_1_alt 0, 3, 0, 1, 9, 2	@08F71334
	voice_square_1_alt 0, 3, 0, 0, 15, 0	@08F71340
	voice_square_2_alt 0, 0, 1, 12, 1	@08F7134C
	voice_square_1_alt 0, 2, 0, 2, 6, 0	@08F71358
	voice_square_2_alt 1, 0, 2, 6, 0	@08F71364
	voice_square_2_alt 2, 0, 2, 3, 1	@08F71370
	voice_square_1_alt 0, 2, 0, 2, 3, 1	@08F7137C
	voice_square_2_alt 2, 0, 0, 12, 2	@08F71388
	voice_square_2_alt 2, 0, 1, 9, 4	@08F71394
	voice_square_1_alt 0, 2, 0, 1, 9, 4	@08F713A0
	voice_square_2_alt 3, 1, 1, 7, 2	@08F713AC
	voice_square_1_alt 0, 3, 1, 1, 7, 2	@08F713B8
	voice_square_1_alt 0, 1, 0, 0, 12, 0	@08F713C4
	voice_square_2_alt 2, 1, 0, 7, 2	@08F713D0
	voice_square_1_alt 0, 2, 1, 0, 7, 2	@08F713DC
	voice_square_1_alt 0, 1, 1, 0, 7, 2	@08F713E8
	voice_square_1_alt 0, 1, 0, 1, 10, 4	@08F713F4
	voice_square_2_alt 1, 0, 1, 10, 4	@08F71400
	voice_square_2_alt 2, 0, 2, 6, 0	@08F7140C
	voice_square_1_alt 0, 0, 0, 1, 12, 1	@08F71418
	voice_square_2_alt 0, 0, 2, 7, 1	@08F71424
	voice_square_1_alt 0, 1, 0, 2, 7, 1	@08F71430
	voice_programmable_wave_alt gUnknown_08F71B38, 0, 0, 7, 1	@08F7143C
	voice_square_2_alt 3, 0, 2, 7, 1	@08F71448
	voice_square_2_alt 3, 0, 2, 4, 4	@08F71454
	voice_square_1_alt 0, 3, 0, 2, 4, 4	@08F71460
	voice_square_1_alt 0, 2, 1, 0, 6, 2	@08F7146C
	voice_square_1_alt 0, 0, 0, 2, 6, 2	@08F71478
	voice_square_2_alt 2, 0, 1, 3, 2	@08F71484
	voice_square_1_alt 0, 2, 0, 0, 7, 2	@08F71490
	voice_programmable_wave_alt gUnknown_08F71B38, 0, 0, 9, 1	@08F7149C
	voice_square_2_alt 2, 0, 0, 12, 1	@08F714A8
	voice_square_1_alt 0, 3, 0, 0, 12, 3	@08F714B4
	voice_square_2_alt 0, 0, 2, 9, 1	@08F714C0
	voice_square_2_alt 2, 0, 2, 5, 0	@08F714CC
	voice_square_1_alt 0, 2, 0, 0, 9, 1	@08F714D8
	voice_square_1_alt 0, 2, 0, 0, 7, 0	@08F714E4
	voice_square_2_alt 3, 1, 1, 7, 2	@08F714F0
	voice_square_1_alt 0, 3, 1, 1, 7, 2	@08F714FC
	voice_square_2_alt 2, 1, 0, 9, 2	@08F71508
	voice_square_2_alt 2, 0, 1, 9, 4	@08F71514
	voice_programmable_wave_alt gUnknown_08F71B38, 0, 0, 9, 2	@08F71520
	voice_square_1_alt 0, 1, 0, 2, 6, 2	@08F7152C
	voice_square_2_alt 1, 0, 2, 6, 2	@08F71538
	voice_square_2_alt 0, 0, 1, 6, 3	@08F71544
	voice_square_2_alt 1, 0, 0, 15, 0	@08F71550
	voice_square_1_alt 0, 1, 0, 2, 4, 2	@08F7155C
	voice_square_1_alt 0, 2, 0, 0, 7, 1	@08F71568
	voice_square_2_alt 1, 0, 2, 4, 2	@08F71574
	voice_square_2_alt 0, 0, 1, 4, 4	@08F71580
	voice_square_2_alt 3, 0, 1, 3, 4	@08F7158C
	voice_square_1_alt 0, 2, 0, 0, 4, 3	@08F71598
	voice_square_2_alt 3, 0, 1, 4, 4	@08F715A4
	voice_square_1_alt 0, 2, 0, 0, 4, 0	@08F715B0
	voice_square_2_alt 2, 0, 1, 6, 1	@08F715BC
	voice_square_2_alt 0, 0, 2, 6, 2	@08F715C8
	voice_programmable_wave_alt gUnknown_08F71AC8, 0, 0, 12, 0	@08F715D4
	voice_programmable_wave_alt gUnknown_08F71AD8, 0, 0, 12, 0	@08F715E0
	voice_programmable_wave_alt gUnknown_08F71AE8, 0, 0, 12, 0	@08F715EC
	voice_programmable_wave_alt gUnknown_08F71AF8, 0, 0, 12, 0	@08F715F8
	voice_programmable_wave_alt gUnknown_08F71B08, 0, 0, 10, 0	@08F71604
	voice_programmable_wave gUnknown_08F71B18, 0, 0, 10, 0	@08F71610
	voice_programmable_wave_alt gUnknown_08F71B28, 0, 0, 12, 0	@08F7161C
	voice_programmable_wave_alt gUnknown_08F71B38, 0, 0, 12, 0	@08F71628
	voice_programmable_wave_alt gUnknown_08F71B48, 0, 0, 12, 0	@08F71634
	voice_programmable_wave_alt gUnknown_08F71B58, 0, 0, 12, 0	@08F71640
	voice_programmable_wave_alt gUnknown_08F71B68, 0, 0, 12, 0	@08F7164C
	voice_programmable_wave_alt gUnknown_08F71B78, 0, 0, 12, 0	@08F71658
	voice_programmable_wave_alt gUnknown_08F71B88, 0, 0, 12, 0	@08F71664
	voice_programmable_wave_alt gUnknown_08F71B98, 0, 0, 12, 0	@08F71670
	voice_programmable_wave_alt gUnknown_08F71BA8, 0, 0, 12, 0	@08F7167C
	voice_programmable_wave_alt gUnknown_08F71BB8, 0, 0, 12, 0	@08F71688
	voice_programmable_wave_alt gUnknown_08F71BC8, 0, 0, 12, 0	@08F71694
	voice_programmable_wave_alt gUnknown_08F71BD8, 0, 0, 12, 0	@08F716A0
	voice_programmable_wave_alt gUnknown_08F71BE8, 0, 0, 12, 0	@08F716AC
	voice_square_1 0, 2, 0, 0, 15, 0	@08F716B8
	voice_square_1 0, 2, 0, 0, 15, 0	@08F716C4
	voice_square_1 0, 2, 0, 0, 15, 0	@08F716D0
	voice_square_1 0, 2, 0, 0, 15, 0	@08F716DC
	voice_square_1 0, 2, 0, 0, 15, 0	@08F716E8
	voice_square_1 0, 2, 0, 0, 15, 0	@08F716F4
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71700
	voice_square_1 0, 2, 0, 0, 15, 0	@08F7170C
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71718
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71724
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71730
	voice_square_1 0, 2, 0, 0, 15, 0	@08F7173C
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71748
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71754
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71760
	voice_square_1 0, 2, 0, 0, 15, 0	@08F7176C
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71778
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71784
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71790
	voice_noise_alt 60, 0, 0, 0, 0, 0, 15, 0	@08F7179C
	voice_noise_alt 60, 0, 0, 0, 0, 0, 10, 0	@08F717A8
	voice_square_1 0, 2, 0, 0, 15, 0	@08F717B4
	voice_square_1 0, 2, 0, 0, 15, 0	@08F717C0
	voice_square_1 0, 2, 0, 0, 15, 0	@08F717CC
	voice_square_1 0, 2, 0, 0, 15, 0	@08F717D8
	voice_directsound 60, 0, gUnknown_08F71F68, 255, 0, 255, 0	@08F717E4

	@********************** Voicegroup **********************@

	.align 2
	.global gUnknown_08F717F0
gUnknown_08F717F0:	@ 0x08F717F0
	voice_square_1 0, 2, 0, 0, 15, 0	@08F717F0
	voice_noise_alt 60, 0, 0, 0, 0, 0, 15, 0	@08F717FC
	voice_noise_alt 60, 0, 0, 0, 0, 3, 0, 0	@08F71808
	voice_noise_alt 60, 0, 0, 0, 0, 0, 15, 0	@08F71814
	voice_noise_alt 60, 0, 0, 0, 4, 0, 15, 0	@08F71820
	voice_noise_alt 60, 0, 0, 0, 0, 0, 15, 0	@08F7182C
	voice_noise_alt 60, 0, 0, 0, 0, 0, 15, 0	@08F71838
	voice_noise_alt 60, 0, 0, 0, 0, 1, 0, 0	@08F71844
	voice_noise_alt 60, 0, 0, 0, 0, 0, 15, 0	@08F71850
	voice_noise_alt 60, 0, 0, 0, 0, 0, 15, 0	@08F7185C
	voice_noise_alt 60, 0, 0, 0, 0, 3, 0, 0	@08F71868
	voice_square_1_alt 0, 0, 0, 0, 15, 0	@08F71874
	voice_square_1_alt 0, 2, 0, 0, 15, 0	@08F71880
	voice_square_1_alt 23, 2, 0, 0, 15, 0	@08F7188C
	voice_square_1_alt 31, 0, 0, 0, 15, 0	@08F71898
	voice_square_1_alt 0, 1, 0, 0, 15, 0	@08F718A4
	voice_square_1_alt 0, 1, 0, 0, 15, 0	@08F718B0
	voice_square_1_alt 23, 1, 0, 0, 15, 0	@08F718BC
	voice_square_1_alt 55, 0, 0, 0, 15, 0	@08F718C8
	voice_square_1_alt 0, 2, 0, 3, 0, 0	@08F718D4
	voice_square_1_alt 0, 2, 0, 0, 15, 0	@08F718E0
	voice_square_1_alt 0, 2, 0, 1, 0, 0	@08F718EC
	voice_square_1_alt 0, 2, 0, 0, 15, 0	@08F718F8
	voice_square_1_alt 63, 0, 0, 0, 15, 0	@08F71904
	voice_square_1_alt 0, 2, 0, 0, 15, 0	@08F71910
	voice_square_1_alt 0, 2, 0, 0, 15, 0	@08F7191C
	voice_square_1_alt 103, 0, 0, 0, 15, 0	@08F71928
	voice_square_1_alt 0, 1, 1, 0, 15, 0	@08F71934
	voice_square_1_alt 103, 0, 0, 0, 15, 0	@08F71940
	voice_square_1 0, 2, 0, 0, 15, 0	@08F7194C
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71958
	voice_programmable_wave_alt gUnknown_08F71B18, 0, 0, 15, 0	@08F71964
	voice_programmable_wave_alt gUnknown_08F71AB8, 0, 0, 15, 0	@08F71970
	voice_programmable_wave_alt gUnknown_08F71AC8, 0, 0, 15, 0	@08F7197C
	voice_programmable_wave_alt gUnknown_08F71AB8, 0, 0, 15, 0	@08F71988
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71994
	voice_square_1 0, 2, 0, 0, 15, 0	@08F719A0
	voice_square_1 0, 2, 0, 0, 15, 0	@08F719AC
	voice_square_1 0, 2, 0, 0, 15, 0	@08F719B8
	voice_square_1 0, 2, 0, 0, 15, 0	@08F719C4
	voice_square_1 0, 2, 0, 0, 15, 0	@08F719D0
	voice_square_1_alt 0, 1, 6, 0, 15, 0	@08F719DC
	voice_square_1_alt 0, 2, 4, 0, 15, 0	@08F719E8
	voice_square_1_alt 0, 2, 6, 0, 15, 0	@08F719F4
	voice_square_1_alt 0, 1, 0, 0, 15, 0	@08F71A00
	voice_square_1_alt 0, 1, 0, 6, 1, 0	@08F71A0C
	voice_square_1_alt 0, 2, 0, 0, 15, 0	@08F71A18
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71A24
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71A30
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71A3C
	voice_square_1 0, 2, 0, 0, 15, 0	@08F71A48
	voice_square_2_alt 2, 6, 0, 15, 0	@08F71A54
	voice_square_2_alt 2, 4, 0, 15, 0	@08F71A60
	voice_square_2_alt 2, 6, 0, 15, 0	@08F71A6C
	voice_square_2_alt 2, 0, 0, 15, 0	@08F71A78
	voice_square_2_alt 2, 0, 6, 1, 0	@08F71A84
	voice_square_2_alt 2, 0, 0, 15, 0	@08F71A90
	voice_square_1_alt 103, 2, 0, 0, 15, 0	@08F71A9C

	.align 2
	.global gUnknown_08F71AA8
gUnknown_08F71AA8:
	.incbin "sound/programmable_wave_samples/08F71AA8.pcm"

	.align 2
	.global gUnknown_08F71AB8
gUnknown_08F71AB8:
	.incbin "sound/programmable_wave_samples/08F71AB8.pcm"

	.align 2
	.global gUnknown_08F71AC8
gUnknown_08F71AC8:
	.incbin "sound/programmable_wave_samples/08F71AC8.pcm"

	.align 2
	.global gUnknown_08F71AD8
gUnknown_08F71AD8:
	.incbin "sound/programmable_wave_samples/08F71AD8.pcm"

	.align 2
	.global gUnknown_08F71AE8
gUnknown_08F71AE8:
	.incbin "sound/programmable_wave_samples/08F71AE8.pcm"

	.align 2
	.global gUnknown_08F71AF8
gUnknown_08F71AF8:
	.incbin "sound/programmable_wave_samples/08F71AF8.pcm"

	.align 2
	.global gUnknown_08F71B08
gUnknown_08F71B08:
	.incbin "sound/programmable_wave_samples/08F71B08.pcm"

	.align 2
	.global gUnknown_08F71B18
gUnknown_08F71B18:
	.incbin "sound/programmable_wave_samples/08F71B18.pcm"

	.align 2
	.global gUnknown_08F71B28
gUnknown_08F71B28:
	.incbin "sound/programmable_wave_samples/08F71B28.pcm"

	.align 2
	.global gUnknown_08F71B38
gUnknown_08F71B38:
	.incbin "sound/programmable_wave_samples/08F71B38.pcm"

	.align 2
	.global gUnknown_08F71B48
gUnknown_08F71B48:
	.incbin "sound/programmable_wave_samples/08F71B48.pcm"

	.align 2
	.global gUnknown_08F71B58
gUnknown_08F71B58:
	.incbin "sound/programmable_wave_samples/08F71B58.pcm"

	.align 2
	.global gUnknown_08F71B68
gUnknown_08F71B68:
	.incbin "sound/programmable_wave_samples/08F71B68.pcm"

	.align 2
	.global gUnknown_08F71B78
gUnknown_08F71B78:
	.incbin "sound/programmable_wave_samples/08F71B78.pcm"

	.align 2
	.global gUnknown_08F71B88
gUnknown_08F71B88:
	.incbin "sound/programmable_wave_samples/08F71B88.pcm"

	.align 2
	.global gUnknown_08F71B98
gUnknown_08F71B98:
	.incbin "sound/programmable_wave_samples/08F71B98.pcm"

	.align 2
	.global gUnknown_08F71BA8
gUnknown_08F71BA8:
	.incbin "sound/programmable_wave_samples/08F71BA8.pcm"

	.align 2
	.global gUnknown_08F71BB8
gUnknown_08F71BB8:
	.incbin "sound/programmable_wave_samples/08F71BB8.pcm"

	.align 2
	.global gUnknown_08F71BC8
gUnknown_08F71BC8:
	.incbin "sound/programmable_wave_samples/08F71BC8.pcm"

	.align 2
	.global gUnknown_08F71BD8
gUnknown_08F71BD8:
	.incbin "sound/programmable_wave_samples/08F71BD8.pcm"

	.align 2
	.global gUnknown_08F71BE8
gUnknown_08F71BE8:
	.incbin "sound/programmable_wave_samples/08F71BE8.pcm"

	.align 2
	.global gMPlayTable
gMPlayTable:	@ 0x08F71BF8
	music_player MusicPlayer0Info, gUnknown_03000008, 6, 0
	music_player MusicPlayer1Info, gUnknown_030001E8, 1, 0
	music_player MusicPlayer2Info, gUnknown_03000238, 1, 1
	music_player MusicPlayer3Info, gUnknown_03000288, 1, 0
	music_player MusicPlayer4Info, gUnknown_030002D8, 2, 0

	.include "sound/song_table.inc"

	.align 2
	.global gUnknown_08F71F68
gUnknown_08F71F68:
	.incbin "sound/direct_sound_samples/08F71F68.bin"

	.include "sound/songs/mus_mother_earth.s"
	.include "sound/songs/mus_empty_ocarina.s"
	.include "sound/songs/mus_flippant.s"
	.include "sound/songs/mus_dangerous.s"
	.include "sound/songs/mus_hippie.s"
	.include "sound/songs/mus_you_win.s"
	.include "sound/songs/mus_pollyanna.s"
	.include "sound/songs/mus_yucca_desert.s"
	.include "sound/songs/mus_magicant.s"
	.include "sound/songs/mus_snowman.s"
	.include "sound/songs/mus_mt_itoi.s"
	.include "sound/songs/mus_factory.s"
	.include "sound/songs/mus_ghastly_site.s"
	.include "sound/songs/mus_twinkle_elementary.s"
	.include "sound/songs/mus_humoresque_of_a_little_dog.s"
	.include "sound/songs/mus_poltergeist.s"
	.include "sound/songs/mus_underground.s"
	.include "sound/songs/mus_home.s"
	.include "sound/songs/mus_approaching_mt_itoi.s"
	.include "sound/songs/mus_paradise_line.s"
	.include "sound/songs/mus_fallin_love.s"
	.include "sound/songs/mus_roving_tank.s"
	.include "sound/songs/mus_monkey_cave.s"
	.include "sound/songs/mus_queen_marys_song.s"
	.include "sound/songs/mus_wisdom_of_the_world.s"
	.include "sound/songs/mus_tombstone.s"
	.include "sound/songs/mus_game_over.s"
	.include "sound/songs/mus_big_victory.s"
	.include "sound/songs/mus_airplane.s"
	.include "sound/songs/mus_level_up.s"
	.include "sound/songs/mus_recovery.s"
	.include "sound/songs/mus_fanfare.s"
	.include "sound/songs/mus_live_house.s"
	.include "sound/songs/mus_all_that_i_needed_was_you.s"
	.include "sound/songs/mus_melody_1.s"
	.include "sound/songs/mus_melody_2.s"
	.include "sound/songs/mus_melody_3.s"
	.include "sound/songs/mus_melody_4.s"
	.include "sound/songs/mus_melody_5.s"
	.include "sound/songs/mus_melody_6.s"
	.include "sound/songs/mus_melody_7.s"
	.include "sound/songs/mus_melody_8.s"
	.include "sound/songs/mus_vs_giegue.s"
	.include "sound/songs/mus_ending_1.s"
	.include "sound/songs/mus_zoo.s"
	.include "sound/songs/mus_phone.s"
	.include "sound/songs/mus_youngtown.s"
	.include "sound/songs/mus_cave_of_the_tail.s"
	.include "sound/songs/mus_path_to_giegue.s"
	.include "sound/songs/mus_full_ocarina.s"
	.include "sound/songs/mus_bein_friends.s"
	.include "sound/songs/sfx_noise_hit.s"
	.include "sound/songs/sfx_noise_bomb.s"
	.include "sound/songs/sfx_noise_thunder.s"
	.include "sound/songs/sfx_noise_fire.s"
	.include "sound/songs/sfx_noise_crit.s"
	.include "sound/songs/sfx_noise_enemykilled.s"
	.include "sound/songs/sfx_noise_stairs.s"
	.include "sound/songs/sfx_noise_rocket.s"
	.include "sound/songs/sfx_noise_rocketland.s"
	.include "sound/songs/sfx_pulse1_enemyattack.s"
	.include "sound/songs/sfx_pulse1_beam.s"
	.include "sound/songs/sfx_pulse1_statboost.s"
	.include "sound/songs/sfx_pulse1_takedamage.s"
	.include "sound/songs/sfx_pulse1_menubloop.s"
	.include "sound/songs/sfx_pulse1_itemdropget.s"
	.include "sound/songs/sfx_pulse1_recovery.s"
	.include "sound/songs/sfx_pulse1_canary.s"
	.include "sound/songs/sfx_pulse1_learnedpsi.s"
	.include "sound/songs/sfx_pulse1_playerattack.s"
	.include "sound/songs/sfx_pulse1_purchase.s"
	.include "sound/songs/sfx_pulse1_dodge.s"
	.include "sound/songs/sfx_pulse1_unk0d.s"
	.include "sound/songs/sfx_pulse1_unk0e.s"
	.include "sound/songs/sfx_pulse1_magicantwarp.s"
	.include "sound/songs/sfx_pulse1_laura.s"
	.include "sound/songs/sfx_pulse1_xxstone.s"
	.include "sound/songs/sfx_triangle_freeze.s"
	.include "sound/songs/sfx_triangle_unk02.s"
	.include "sound/songs/sfx_triangle_playerkilled.s"
	.include "sound/songs/sfx_triangle_equip.s"
	.include "sound/songs/sfx_pulse2_dimensionslip.s"
	.include "sound/songs/sfx_pulse2_status.s"
	.include "sound/songs/sfx_pulse2_giegueattack1.s"
	.include "sound/songs/sfx_pulse2_giegueattack2.s"
	.include "sound/songs/sfx_pulse2_giegueattack3.s"
	.include "sound/songs/sfx_pulse2_giegueattack4.s"
	.include "sound/songs/sfx_noise_invasion1.s"
	.include "sound/songs/sfx_noise_invasion2.s"
	.include "sound/songs/sfx_noise_invasion3.s"
	.include "sound/songs/sfx_noise_invasion4.s"
