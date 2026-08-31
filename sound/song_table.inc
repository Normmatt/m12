.equ MUSIC_PLAYER_BGM,0
.equ MUSIC_PLAYER_SE1,1
.equ MUSIC_PLAYER_SE2,2
.equ MUSIC_PLAYER_SE3,3
.equ MUSIC_PLAYER_SE4,4

	.align 2
	.global gSongTable
gSongTable:	@ 0x08F71C34
	song mus_null, MUSIC_PLAYER_BGM, 0
	song mus_mother_earth, MUSIC_PLAYER_BGM, 0
	song mus_empty_ocarina, MUSIC_PLAYER_BGM, 0
	song mus_flippant, MUSIC_PLAYER_BGM, 0
	song mus_dangerous, MUSIC_PLAYER_BGM, 0
	song mus_hippie, MUSIC_PLAYER_BGM, 0
	song mus_you_win, MUSIC_PLAYER_BGM, 0
	song mus_pollyanna, MUSIC_PLAYER_BGM, 0
	song mus_yucca_desert, MUSIC_PLAYER_BGM, 0
	song mus_magicant, MUSIC_PLAYER_BGM, 0
	song mus_snowman, MUSIC_PLAYER_BGM, 0
	song mus_mt_itoi, MUSIC_PLAYER_BGM, 0
	song mus_factory, MUSIC_PLAYER_BGM, 0
	song mus_ghastly_site, MUSIC_PLAYER_BGM, 0
	song mus_twinkle_elementary, MUSIC_PLAYER_BGM, 0
	song mus_humoresque_of_a_little_dog, MUSIC_PLAYER_BGM, 0
	song mus_poltergeist, MUSIC_PLAYER_BGM, 0
	song mus_underground, MUSIC_PLAYER_BGM, 0
	song mus_home, MUSIC_PLAYER_BGM, 0
	song mus_approaching_mt_itoi, MUSIC_PLAYER_BGM, 0
	song mus_paradise_line, MUSIC_PLAYER_BGM, 0
	song mus_fallin_love, MUSIC_PLAYER_BGM, 0
	song mus_roving_tank, MUSIC_PLAYER_BGM, 0
	song mus_monkey_cave, MUSIC_PLAYER_BGM, 0
	song mus_queen_marys_song, MUSIC_PLAYER_BGM, 0
	song mus_wisdom_of_the_world, MUSIC_PLAYER_BGM, 0
	song mus_tombstone, MUSIC_PLAYER_BGM, 0
	song mus_game_over, MUSIC_PLAYER_BGM, 0
	song mus_big_victory, MUSIC_PLAYER_BGM, 0
	song mus_airplane, MUSIC_PLAYER_BGM, 0
	song mus_level_up, MUSIC_PLAYER_BGM, 0
	song mus_recovery, MUSIC_PLAYER_BGM, 0
	song mus_fanfare, MUSIC_PLAYER_BGM, 0
	song mus_live_house, MUSIC_PLAYER_BGM, 0
	song mus_all_that_i_needed_was_you, MUSIC_PLAYER_BGM, 0
	song mus_melody_1, MUSIC_PLAYER_BGM, 0
	song mus_melody_2, MUSIC_PLAYER_BGM, 0
	song mus_melody_3, MUSIC_PLAYER_BGM, 0
	song mus_melody_4, MUSIC_PLAYER_BGM, 0
	song mus_melody_5, MUSIC_PLAYER_BGM, 0
	song mus_melody_6, MUSIC_PLAYER_BGM, 0
	song mus_melody_7, MUSIC_PLAYER_BGM, 0
	song mus_melody_8, MUSIC_PLAYER_BGM, 0
	song mus_vs_giegue, MUSIC_PLAYER_BGM, 0
	song mus_ending_1, MUSIC_PLAYER_BGM, 0
	song mus_zoo, MUSIC_PLAYER_BGM, 0
	song mus_phone, MUSIC_PLAYER_BGM, 0
	song mus_youngtown, MUSIC_PLAYER_BGM, 0
	song mus_cave_of_the_tail, MUSIC_PLAYER_BGM, 0
	song mus_path_to_giegue, MUSIC_PLAYER_BGM, 0
	song mus_full_ocarina, MUSIC_PLAYER_BGM, 0
	song mus_bein_friends, MUSIC_PLAYER_BGM, 0
	song mus_null, MUSIC_PLAYER_BGM, 0
	song mus_null, MUSIC_PLAYER_BGM, 0
	song mus_null, MUSIC_PLAYER_BGM, 0
	song mus_null, MUSIC_PLAYER_BGM, 0
	song mus_null, MUSIC_PLAYER_BGM, 0
	song mus_null, MUSIC_PLAYER_BGM, 0
	song mus_null, MUSIC_PLAYER_BGM, 0
	song mus_null, MUSIC_PLAYER_BGM, 0
	song sfx_noise_hit, MUSIC_PLAYER_SE1, 1
	song sfx_noise_bomb, MUSIC_PLAYER_SE1, 1
	song sfx_noise_thunder, MUSIC_PLAYER_SE1, 1
	song sfx_noise_fire, MUSIC_PLAYER_SE1, 1
	song sfx_noise_crit, MUSIC_PLAYER_SE1, 1
	song sfx_noise_enemykilled, MUSIC_PLAYER_SE1, 1
	song mus_null, MUSIC_PLAYER_BGM, 0
	song sfx_noise_stairs, MUSIC_PLAYER_SE1, 1
	song sfx_noise_rocket, MUSIC_PLAYER_SE1, 1
	song sfx_noise_rocketland, MUSIC_PLAYER_SE1, 1
	song sfx_pulse1_enemyattack, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_beam, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_statboost, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_takedamage, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_menubloop, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_itemdropget, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_recovery, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_canary, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_learnedpsi, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_playerattack, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_purchase, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_dodge, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_unk0d, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_unk0e, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_miss, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_magicantwarp, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_laura, MUSIC_PLAYER_SE2, 2
	song sfx_pulse1_xxstone, MUSIC_PLAYER_SE2, 2
	song sfx_triangle_freeze, MUSIC_PLAYER_SE3, 3
	song sfx_triangle_unk02, MUSIC_PLAYER_SE3, 3
	song sfx_triangle_playerkilled, MUSIC_PLAYER_SE3, 3
	song sfx_triangle_equip, MUSIC_PLAYER_SE3, 3
	song sfx_pulse2_dimensionslip, MUSIC_PLAYER_SE4, 4
	song sfx_pulse2_status, MUSIC_PLAYER_SE4, 4
	song sfx_pulse2_giegueattack1, MUSIC_PLAYER_SE4, 4
	song sfx_pulse2_giegueattack2, MUSIC_PLAYER_SE4, 4
	song sfx_pulse2_giegueattack3, MUSIC_PLAYER_SE4, 4
	song sfx_pulse2_giegueattack4, MUSIC_PLAYER_SE4, 4
	song sfx_noise_invasion1, MUSIC_PLAYER_SE1, 1
	song sfx_noise_invasion2, MUSIC_PLAYER_SE1, 1
	song sfx_noise_invasion3, MUSIC_PLAYER_SE1, 1
	song sfx_noise_invasion4, MUSIC_PLAYER_SE1, 1


	.align 2
	.global mus_null
mus_null:	@ 0x08F71F64
	.byte	0		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	0		@ reverb
