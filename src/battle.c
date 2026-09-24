#include "gba/gba.h"
#include "functions.h"
#include "variables.h"
#include "definitions.h"
#include "structs.h"

//english asm externs
#ifdef ENGLISH
void copy_battle_line_to_ram(u16);
void add_space_to_enemy_name(u8*, u8);
#endif

extern const u8* gUnknown_08F29F00[];

u8 battle_extra_gfx[] = INCBIN_U8("data/battle/battle_extra_gfx.2bpp");
u8 gUnknown_08F67880[] = INCBIN_U8("data/battle/enemy/1.2bpp");
u8 gUnknown_08F67C80[] = INCBIN_U8("data/battle/enemy/2.2bpp");
u8 gUnknown_08F68080[] = INCBIN_U8("data/battle/enemy/3.2bpp");
u8 gUnknown_08F68480[] = INCBIN_U8("data/battle/enemy/4.2bpp");
u8 gUnknown_08F68880[] = INCBIN_U8("data/battle/enemy/5.2bpp");
u8 gUnknown_08F68C80[] = INCBIN_U8("data/battle/enemy/6.2bpp");
u8 gUnknown_08F69080[] = INCBIN_U8("data/battle/enemy/7.2bpp");
u8 gUnknown_08F69480[] = INCBIN_U8("data/battle/enemy/8.2bpp");
u8 gUnknown_08F69880[] = INCBIN_U8("data/battle/enemy/9.2bpp");
u8 gUnknown_08F69C80[] = INCBIN_U8("data/battle/enemy/10.2bpp");
u8 gUnknown_08F6A080[] = INCBIN_U8("data/battle/enemy/11.2bpp");
u8 gUnknown_08F6A480[] = INCBIN_U8("data/battle/enemy/12.2bpp");
u8 gUnknown_08F6A880[] = INCBIN_U8("data/battle/enemy/13.2bpp");
u8 gUnknown_08F6AC80[] = INCBIN_U8("data/battle/enemy/14.2bpp");
u8 gUnknown_08F6B080[] = INCBIN_U8("data/battle/enemy/15.2bpp");
u8 gUnknown_08F6B480[] = INCBIN_U8("data/battle/enemy/16.2bpp");
u8 gUnknown_08F6B880[] = INCBIN_U8("data/battle/enemy/17.2bpp");
u8 gUnknown_08F6BC80[] = INCBIN_U8("data/battle/enemy/18.2bpp");
u8 gUnknown_08F6C080[] = INCBIN_U8("data/battle/enemy/19.2bpp");
u8 gUnknown_08F6C480[] = INCBIN_U8("data/battle/enemy/20.2bpp");
u8 gUnknown_08F6C880[] = INCBIN_U8("data/battle/enemy/21.2bpp");
u8 gUnknown_08F6CC80[] = INCBIN_U8("data/battle/enemy/22.2bpp");
u8 gUnknown_08F6D080[] = INCBIN_U8("data/battle/enemy/23.2bpp");
u8 gUnknown_08F6D480[] = INCBIN_U8("data/battle/enemy/24.2bpp");
u8 gUnknown_08F6D880[] = INCBIN_U8("data/battle/enemy/25.2bpp");
u8 gUnknown_08F6DC80[] = INCBIN_U8("data/battle/enemy/26.2bpp");
u8 gUnknown_08F6E080[] = INCBIN_U8("data/battle/enemy/27.2bpp");
u8 gUnknown_08F6E480[] = INCBIN_U8("data/battle/enemy/28.2bpp");
u8 gUnknown_08F6E880[] = INCBIN_U8("data/battle/enemy/29.2bpp");
u8 gUnknown_08F6EC80[] = INCBIN_U8("data/battle/enemy/30.2bpp");
u8 gUnknown_08F6F080[] = INCBIN_U8("data/battle/enemy/31.2bpp");
u8 gUnknown_08F6F480[] = INCBIN_U8("data/battle/enemy/32.2bpp");

u8 *gUnknown_08F6F880[] = {
gUnknown_08F67880,// 0 / 0x0
gUnknown_08F67C80, // 1 / 0x1
gUnknown_08F68080, // 2 / 0x2
gUnknown_08F68480, // 3 / 0x3
gUnknown_08F68880, // 4 / 0x4
gUnknown_08F68C80, // 5 / 0x5
gUnknown_08F69080, // 6 / 0x6
gUnknown_08F69480, // 7 / 0x7
gUnknown_08F69880, // 8 / 0x8
gUnknown_08F69C80, // 9 / 0x9
gUnknown_08F6A080, // 10 / 0xA
gUnknown_08F6A480, // 11 / 0xB
gUnknown_08F6A880, // 12 / 0xC
gUnknown_08F6AC80, // 13 / 0xD
gUnknown_08F6B080, // 14 / 0xE
gUnknown_08F6B480, // 15 / 0xF
gUnknown_08F6B880, // 16 / 0x10
gUnknown_08F6BC80, // 17 / 0x11
gUnknown_08F6C080, // 18 / 0x12
gUnknown_08F6C480, // 19 / 0x13
gUnknown_08F6C880, // 20 / 0x14
gUnknown_08F6CC80, // 21 / 0x15
gUnknown_08F6D080, // 22 / 0x16
gUnknown_08F6D480, // 23 / 0x17
gUnknown_08F6D880, // 24 / 0x18
gUnknown_08F6DC80, // 25 / 0x19
gUnknown_08F6E080, // 26 / 0x1A
gUnknown_08F6E480, // 27 / 0x1B
gUnknown_08F6E880, // 28 / 0x1C
gUnknown_08F6EC80, // 29 / 0x1D
gUnknown_08F6F080, // 30 / 0x1E
gUnknown_08F6F480, // 31 / 0x1F
};

EnemyStat gEnemyData[] = {
{0,0,ething1(300,0,0),ething2(300,0),ething3(300,0,0),ething4(300,0,0),0x0,100,100,100,100,100,{0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0},0x5dc,0x0,0x0,0,0},
{0,0,ething1(70,1,1),ething2(0,3),ething3(18,2,0),ething4(50,2,0),0x24,20,23,60,60,18,{0x1,0x34,0x41,0x41,0x1,0x1,0x1,0x1},0x5dd,0x64,0x8c,72,32},
{0,0,ething1(650,0,1),ething2(200,0),ething3(180,0,0),ething4(200,1,0),0xfe,60,60,20,100,60,{0x6c,0xa,0x6c,0x1,0xa,0x1,0x1,0x83},0x5de,0x1f4,0x4b0,0,33},
{0,0,ething1(1000,1,1),ething2(0,5),ething3(600,0,0),ething4(1000,3,0),0xf6,40,50,60,100,100,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x5df,0x1ae,0x65,0,34},
{0,0,ething1(70,2,1),ething2(0,0),ething3(20,0,0),ething4(34,1,0),0x0,30,10,5,30,8,{0x5,0x5,0x5,0x1,0x1,0x1,0x1,0x1},0x5e0,0x3c,0x63,0,35},
{0,0,ething1(80,0,2),ething2(0,0),ething3(42,0,0),ething4(64,1,0),0x0,30,28,20,40,10,{0x1,0x1,0x1,0x4,0x5,0x4f,0x1,0x1},0x5e1,0x46,0xfa,0,43},
{0,0,ething1(90,2,1),ething2(50,0),ething3(50,0,0),ething4(90,1,0),0x20,50,38,30,60,15,{0xf,0xd,0xc,0xc,0xc,0xc,0xc,0xc},0x5e2,0x96,0x30,0,37},
{0,0,ething1(60,0,2),ething2(0,0),ething3(22,0,0),ething4(40,6,0),0x84,38,35,35,100,100,{0x6,0x6,0x6,0x6,0x6,0x6,0x32,0x32},0x5e3,0x39,0x1e,0,38},
{0,0,ething1(60,2,2),ething2(30,0),ething3(48,0,0),ething4(72,3,0),0x84,25,20,20,100,100,{0x1,0x12,0x12,0x53,0x1,0x1,0x1,0x1},0x5e4,0x36,0x26,0,39},
{0,0,ething1(160,0,2),ething2(60,0),ething3(80,0,0),ething4(170,3,0),0xfe,60,50,60,100,100,{0x12,0x13,0x12,0x12,0x12,0x12,0x12,0x1},0x5e5,0xc5,0x6d,0,40},
{0,0,ething1(180,0,3),ething2(60,0),ething3(90,0,2),ething4(160,2,0),0x4,80,70,70,100,100,{0xa,0x1,0xb,0xa,0x1,0xb,0x1,0x3e},0x5e6,0x6e,0x56,0,41},
{0,0,ething1(100,0,2),ething2(0,0),ething3(62,0,0),ething4(100,2,0),0x0,50,68,70,15,15,{0x1,0x3f,0x3f,0x1,0x2,0x1,0x1,0x34},0x5e7,0x46,0x2b,0,42},
{0,0,ething1(40,2,4),ething2(0,0),ething3(20,0,0),ething4(26,1,0),0x0,35,15,5,10,20,{0x4b,0x1,0x1,0x28,0x1,0x1,0x1,0x1},0x5e8,0x17,0x34,0,50},
{0,0,ething1(160,0,3),ething2(0,0),ething3(70,0,0),ething4(160,1,0),0x0,50,50,80,80,80,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x2},0x5e9,0xba,0x53,0,44},
{0,0,ething1(35,2,2),ething2(0,0),ething3(26,0,0),ething4(24,1,0),0x0,40,20,5,10,20,{0x3,0x2,0x2,0x3,0x3,0x3,0x3,0x2},0x5ea,0x18,0x2f,0,45},
{0,0,ething1(40,0,4),ething2(0,0),ething3(20,0,0),ething4(38,6,0),0x84,45,40,35,100,100,{0x6,0x6,0x6,0x6,0x6,0x6,0x6,0x32},0x5eb,0x37,0x20,0,46},
{0,0,ething1(40,2,4),ething2(0,0),ething3(22,0,0),ething4(38,2,0),0x0,25,25,18,25,18,{0x49,0x49,0x1,0x1,0x1,0x1,0x1,0x1},0x5ec,0x19,0x1b,0,47},
{0,0,ething1(50,1,4),ething2(0,0),ething3(20,0,0),ething4(90,2,0),0x8,20,18,18,40,18,{0x1,0x5d,0x1,0x1,0x1,0x1,0x1,0x1},0x5ed,0x2a,0x1c,0,48},
{0,0,ething1(130,2,4),ething2(40,0),ething3(54,0,0),ething4(200,2,0),0xc,30,58,80,60,10,{0x44,0x44,0x44,0x1,0x1,0x1,0x1,0x1},0x5ee,0x4e,0x32,0,51},
{0,0,ething1(35,3,1),ething2(0,15),ething3(15,0,0),ething4(20,2,0),0xfe,20,100,14,10,23,{0x8,0x8,0x8,0x8,0x8,0x8,0x8,0x8},0x5ef,0x0,0x0,0,36},
{0,0,ething1(45,3,4),ething2(0,0),ething3(32,0,2),ething4(44,1,0),0x0,20,60,30,20,40,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x5f0,0x24,0x1e,0,53},
{0,0,ething1(50,1,4),ething2(0,0),ething3(30,0,0),ething4(46,1,0),0x0,25,30,30,30,30,{0x3,0x3,0x3,0x3,0x3,0x3,0x3,0x3},0x5f1,0x22,0x1f,0,54},
{0,0,ething1(90,3,4),ething2(0,0),ething3(68,0,1),ething4(90,1,0),0x0,50,70,40,20,20,{0x4b,0x4c,0x1,0x53,0x1,0x1,0x1,0x1},0x5f2,0x64,0x2c,0,55},
{0,0,ething1(30,0,4),ething2(0,0),ething3(18,0,0),ething4(22,1,0),0x0,10,15,10,15,5,{0x5d,0x5d,0x1,0x1,0x1,0x1,0x1,0x1},0x5f3,0x15,0x12,0,49},
{0,0,ething1(80,0,10),ething2(0,0),ething3(60,1,0),ething4(90,3,0),0x84,20,20,40,100,100,{0x53,0x2e,0x2e,0x2e,0x2e,0x1,0x1,0x1},0x5f4,0xca,0x46,0,44},
{0,0,ething1(65,2,5),ething2(0,0),ething3(38,0,0),ething4(60,2,0),0x62,45,30,20,40,40,{0x2,0x2,0x2,0x2,0x2,0x2,0x2,0x2},0x5f5,0x8c,0xb4,0,46},
{0,0,ething1(60,1,5),ething2(0,0),ething3(32,0,0),ething4(45,0,0),0x0,20,22,6,18,8,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x5f6,0x3c,0x15e,0,53},
{0,0,ething1(108,2,5),ething2(0,0),ething3(57,0,0),ething4(51,0,0),0x0,50,81,18,54,36,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x5f7,0x0,0x0,0,55},
{0,0,ething1(60,0,5),ething2(40,0),ething3(24,0,0),ething4(36,3,0),0xd6,30,35,35,100,100,{0x1,0x1,0x1,0x15,0x1,0x1,0x1,0x1},0x5f8,0x20,0x2d,0,49},
{0,0,ething1(120,0,5),ething2(60,0),ething3(62,0,0),ething4(170,3,0),0xb4,50,72,60,100,100,{0x6b,0x1,0x36,0xf,0x6b,0x1,0x1,0x1},0x5f9,0x44,0x32,0,50},
{0,0,ething1(80,0,5),ething2(50,0),ething3(45,0,0),ething4(80,2,0),0x0,30,40,60,40,35,{0x12,0x12,0x38,0x1,0x1,0x53,0x53,0x15},0x5fa,0xa5,0x44,73,51},
{0,0,ething1(40,2,5),ething2(60,0),ething3(18,0,1),ething4(40,2,0),0x10,40,30,30,10,20,{0x17,0x17,0x17,0x17,0x17,0x17,0x17,0x17},0x5fb,0x41,0x32,0,54},
{0,0,ething1(200,1,5),ething2(180,0),ething3(60,0,0),ething4(280,2,0),0xfe,120,120,80,100,100,{0x12,0x13,0x82,0xa,0x36,0x30,0x38,0x18},0x5fc,0x59,0x50,0,56},
{0,0,ething1(85,0,5),ething2(80,0),ething3(50,0,0),ething4(110,2,0),0x4,50,40,100,30,30,{0xc,0xd,0x42,0x29,0x1d,0x31,0x44,0x45},0x5fd,0xa6,0x2a,0,52},
{0,0,ething1(120,0,5),ething2(100,10),ething3(68,4,0),ething4(150,2,0),0xfe,50,60,50,100,100,{0x1,0x18,0x1,0x1,0x1,0x1,0x1,0x1},0x5fe,0xc8,0x12c,0,47},
{0,0,ething1(40,0,5),ething2(0,0),ething3(20,0,0),ething4(38,2,0),0x24,25,25,30,40,20,{0x4a,0x4a,0x4a,0x62,0x1,0x1,0x1,0x1},0x5ff,0x28,0x26,0,48},
{0,0,ething1(20,2,8),ething2(0,0),ething3(8,0,0),ething4(12,0,0),0x0,6,4,1,1,2,{0x28,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x600,0x5,0x14,0,57},
{0,0,ething1(25,0,7),ething2(0,0),ething3(8,0,0),ething4(14,0,0),0x0,3,6,1,1,3,{0x3c,0x50,0x28,0x1,0x1,0x1,0x1,0x1},0x601,0x6,0x23,0,57},
{0,0,ething1(90,1,7),ething2(0,0),ething3(12,0,0),ething4(38,0,0),0x0,20,40,30,30,10,{0x2,0x2,0x2,0x22,0x1,0x1,0x1,0x1},0x602,0x3f,0x96,63,58},
{0,0,ething1(80,3,8),ething2(0,0),ething3(60,0,0),ething4(125,0,0),0x0,40,40,20,20,20,{0x23,0x23,0x2,0x2,0x1,0x1,0x1,0x1},0x603,0x48,0x3c,34,59},
{0,0,ething1(60,1,7),ething2(0,0),ething3(38,0,0),ething4(48,0,0),0x0,25,45,30,30,30,{0x48,0x28,0x1,0x1,0x1,0x1,0x1,0x1},0x604,0x2d,0x28,0,63},
{0,0,ething1(12,1,8),ething2(106,0),ething3(13,0,0),ething4(13,0,0),0x0,9,9,2,6,4,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x605,0x0,0x0,0,63},
{0,0,ething1(34,1,7),ething2(0,0),ething3(18,0,0),ething4(20,4,0),0x80,8,8,5,40,5,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x606,0xc,0x20,0,60},
{0,0,ething1(30,1,8),ething2(0,0),ething3(16,0,0),ething4(16,4,0),0x80,10,12,5,40,7,{0x4,0x3,0x5,0x4,0x3,0x5,0x4,0x3},0x607,0x8,0xc,0,60},
{0,0,ething1(22,2,8),ething2(0,0),ething3(8,0,1),ething4(12,1,0),0x0,8,12,1,5,10,{0x4b,0x4c,0x4c,0x1,0x1,0x1,0x1,0x1},0x608,0x3,0x4,0,62},
{0,0,ething1(18,1,8),ething2(0,0),ething3(6,0,0),ething4(8,1,0),0x0,5,10,1,10,1,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x609,0x2,0x8,62,61},
{0,0,ething1(30,0,9),ething2(0,0),ething3(10,0,0),ething4(16,1,0),0x0,10,22,18,10,5,{0x4f,0x4f,0x4f,0x48,0x3,0x3,0x3,0x3},0x60a,0xc,0x14,0,62},
{0,0,ething1(42,3,9),ething2(0,0),ething3(28,0,0),ething4(40,1,0),0x0,35,78,30,20,20,{0x4,0x4,0x4,0x4,0x4,0x4,0x4,0x4},0x60b,0x20,0x19,0,61},
{0,0,ething1(12,1,8),ething2(0,9),ething3(4,0,0),ething4(12,1,0),0x1,3,17,40,20,1,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x60c,0x1,0x1,0,58},
{0,0,ething1(78,1,9),ething2(0,0),ething3(40,2,0),ething4(120,7,0),0x80,30,50,50,60,20,{0x4f,0x4f,0x4f,0x4f,0x4f,0x4f,0x4f,0x4f},0x60d,0x50,0x64,0,59},
{0,0,ething1(10,0,10),ething2(0,0),ething3(1,0,4),ething4(40,1,0),0x1,32,40,10,1,40,{0x49,0x49,0x49,0x1,0x48,0x1,0x1,0x1},0x60e,0x1,0x1,0,43},
{0,0,ething1(80,2,10),ething2(0,0),ething3(45,0,0),ething4(95,1,0),0x1,60,80,80,60,15,{0x49,0x3d,0x3d,0x49,0x49,0x1,0x1,0x23},0x60f,0x30,0x28,0,42},
{0,0,ething1(75,1,10),ething2(0,0),ething3(60,0,0),ething4(80,1,0),0x1,40,60,80,60,15,{0x3d,0x3d,0x3d,0x3,0x3,0x3,0x3,0x3},0x610,0x32,0x24,0,61},
{0,0,ething1(80,3,10),ething2(0,0),ething3(35,0,0),ething4(50,5,0),0x0,50,30,5,80,80,{0x47,0x47,0x1,0x1,0x1,0x1,0x1,0x1},0x611,0x30,0x50,40,63},
{0,0,ething1(58,3,10),ething2(50,8),ething3(24,0,2),ething4(58,2,0),0xc0,35,40,30,50,30,{0x9,0x9,0x9,0x9,0x9,0x9,0x9,0x9},0x612,0x3d,0x23,0,57},
{0,0,ething1(30,1,14),ething2(0,0),ething3(16,0,0),ething4(24,2,0),0x0,25,30,20,20,20,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x613,0x1e,0x14,0,39},
{0,0,ething1(35,1,10),ething2(0,0),ething3(12,0,2),ething4(40,2,0),0x0,20,20,20,20,20,{0x51,0x51,0x51,0x51,0x1,0x1,0x1,0x1},0x614,0x3,0xc,0,38},
{0,0,ething1(20,1,10),ething2(0,0),ething3(12,0,2),ething4(24,7,0),0x80,6,22,5,40,15,{0x48,0x48,0x1,0x1,0x1,0x1,0x1,0x1},0x615,0x5,0xa,0,58},
{0,0,ething1(32,1,10),ething2(20,0),ething3(20,0,4),ething4(30,3,0),0xd6,15,20,18,100,100,{0x1,0x36,0x1,0x1,0x38,0x1,0x1,0x1},0x616,0x1e,0x16,0,40},
{0,0,ething1(20,3,10),ething2(0,0),ething3(8,0,4),ething4(10,1,0),0x0,8,5,5,4,8,{0x54,0x54,0x54,0x1,0x1,0x1,0x1,0x1},0x617,0x4,0x7,0,41},
{0,0,ething1(52,0,10),ething2(16,0),ething3(32,0,2),ething4(52,2,0),0xf6,35,20,18,30,30,{0x12,0x12,0x15,0x1,0x1,0x1,0x1,0x53},0x618,0x1e,0x5,0,60},
{0,0,ething1(40,2,10),ething2(0,0),ething3(26,0,0),ething4(48,1,0),0x0,52,30,30,20,20,{0x1,0x1,0x1,0x1,0x46,0x1,0x1,0x1},0x619,0x20,0x20,0,45},
{0,0,ething1(90,2,4),ething2(0,0),ething3(42,0,0),ething4(128,4,0),0x80,25,35,55,70,10,{0x34,0x34,0x7,0x1,0x1,0x1,0x1,0x1},0x61a,0x3a,0x22,0,52},
{0,0,ething1(10,2,10),ething2(0,0),ething3(4,0,0),ething4(8,1,0),0x0,6,5,1,3,7,{0x23,0x23,0x23,0x3,0x3,0x3,0x3,0x3},0x61b,0x3,0x2,0,62},
{0,0,ething1(60,1,10),ething2(0,0),ething3(10,0,0),ething4(64,3,0),0xc4,20,35,30,100,100,{0x46,0x46,0x46,0x10,0x10,0x1,0x1,0x1},0x61c,0x38,0x20,35,59},
{0,0,ething1(4,0,11),ething2(0,0),ething3(3,0,0),ething4(5,5,0),0x0,1,5,3,3,3,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x61d,0x1,0x0,0,56},
{0,0,ething1(12,1,12),ething2(0,0),ething3(4,0,2),ething4(5,5,0),0x84,3,5,1,1,1,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x61e,0xa,0x32,0,56},
{0,0,ething1(6,1,13),ething2(0,0),ething3(3,0,2),ething4(5,5,0),0x84,1,5,3,3,3,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x61f,0x1,0x0,0,56},
{0,0,ething1(180,0,0),ething2(120,0),ething3(35,0,0),ething4(20,0,0),0x0,50,5,5,45,30,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x620,0x0,0x0,0,0},
{0,0,ething1(180,0,0),ething2(120,0),ething3(35,0,0),ething4(20,0,0),0x0,50,5,5,45,30,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x621,0x0,0x0,0,0},
{0,0,ething1(35,2,8),ething2(0,9),ething3(16,0,0),ething4(32,1,0),0x1,15,28,60,30,30,{0x1,0x3d,0x3d,0x1,0x1,0x1,0x1,0x1},0x622,0x12,0xe,0,58},
{0,0,ething1(100,2,10),ething2(0,0),ething3(60,0,0),ething4(150,1,0),0x1,40,70,80,60,60,{0x3d,0x3e,0x3d,0x3e,0x1,0x1,0x1,0x1},0x623,0x3d,0x38,0,61},
{0,0,ething1(180,0,0),ething2(120,0),ething3(35,0,0),ething4(20,0,0),0x0,50,5,5,45,30,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x624,0x0,0x0,0,0},
{0,0,ething1(180,0,0),ething2(120,0),ething3(35,0,0),ething4(20,0,0),0x0,50,5,5,45,30,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x625,0x0,0x0,0,0},
{0,0,ething1(150,1,8),ething2(0,0),ething3(50,0,0),ething4(160,1,0),0x0,90,100,60,60,40,{0x48,0x48,0x48,0x48,0x48,0x48,0x1,0x1},0x626,0x1f4,0x14a,47,61},
{0,0,ething1(80,2,4),ething2(0,0),ething3(60,0,0),ething4(150,1,0),0x20,50,60,30,30,60,{0x3,0x3,0x3,0x3,0x3,0x3,0x3,0x3},0x627,0x64,0x29,0,54},
{0,0,ething1(100,1,2),ething2(0,0),ething3(52,0,0),ething4(180,1,0),0x20,30,40,30,40,30,{0x1,0x1,0x1,0x4,0x5,0x4f,0x1,0x1},0x628,0xa0,0x32,0,43},
{0,0,ething1(70,0,10),ething2(100,0),ething3(65,0,0),ething4(60,1,0),0x0,55,45,30,30,45,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x629,0x60,0x25,0,60},
{0,0,ething1(70,0,10),ething2(100,0),ething3(60,0,0),ething4(55,1,0),0x0,40,55,40,40,60,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x62a,0x62,0x22,0,44},
{0,0,ething1(95,0,0),ething2(100,0),ething3(70,0,0),ething4(90,0,0),0x0,50,50,30,30,40,{0x37,0x3d,0x3d,0x1,0x1,0x1,0x1,0x1},0x62b,0x0,0x0,0,0},
{0,0,ething1(180,0,0),ething2(120,0),ething3(35,0,0),ething4(20,0,0),0x0,50,5,5,45,30,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x62c,0x0,0x0,0,0},
{0,0,ething1(100,2,8),ething2(0,11),ething3(65,0,0),ething4(128,1,0),0x8,60,80,80,60,20,{0x5d,0x5d,0x5d,0x7,0x1,0x1,0x1,0x1},0x62d,0x39,0x36,0,61},
{0,0,ething1(120,1,10),ething2(0,0),ething3(84,0,0),ething4(160,1,0),0x1,70,80,80,60,15,{0x49,0x49,0x3d,0x3d,0x3d,0x3d,0x1,0x1},0x62e,0xcd,0x55,0,42},
{0,0,ething1(120,1,4),ething2(0,0),ething3(80,0,0),ething4(150,1,0),0x0,40,30,40,80,20,{0x5d,0x5d,0x1,0x1,0x1,0x1,0x1,0x1},0x62f,0xac,0x58,0,49},
{0,0,ething1(90,0,10),ething2(100,0),ething3(70,0,0),ething4(60,1,0),0x0,60,80,80,80,80,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x630,0x4e,0x24,0,44},
{0,0,ething1(150,0,3),ething2(0,0),ething3(68,0,0),ething4(150,1,0),0x0,60,43,40,40,20,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x631,0x67,0x5f,0,44},
{0,0,ething1(180,0,0),ething2(120,0),ething3(35,0,0),ething4(20,0,0),0x0,50,5,5,45,30,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x632,0x0,0x0,0,0},
{0,0,ething1(50,0,10),ething2(0,0),ething3(34,0,4),ething4(64,1,0),0x0,20,35,50,60,30,{0x49,0x49,0x54,0x54,0x1,0x1,0x1,0x3e},0x633,0x28,0x22,0,41},
{0,0,ething1(16,3,4),ething2(0,12),ething3(8,0,0),ething4(10,1,0),0x0,8,12,2,5,8,{0x3,0x3,0x3,0x3,0x3,0x3,0x3,0x3},0x634,0x4,0xa,27,54},
{0,0,ething1(40,1,4),ething2(0,0),ething3(18,0,0),ething4(40,6,0),0x84,45,40,35,100,100,{0x6,0x32,0x6,0x6,0x6,0x6,0x6,0x6},0x635,0x3d,0x2d,0,46},
{0,0,ething1(58,1,2),ething2(0,0),ething3(20,0,0),ething4(40,6,0),0x84,30,32,35,100,100,{0x6,0x6,0x32,0x32,0x6,0x6,0x6,0x32},0x636,0x22,0x1b,0,38},
{0,0,ething1(80,3,2),ething2(0,0),ething3(34,0,0),ething4(48,6,0),0x84,45,35,35,100,100,{0x32,0x32,0x6,0x6,0x32,0x6,0x6,0x32},0x637,0x4b,0x3a,0,38},
{0,0,ething1(100,3,10),ething2(0,0),ething3(30,0,2),ething4(160,7,0),0x80,50,90,50,60,30,{0x49,0x49,0x49,0x49,0x1,0x1,0x1,0x1},0x638,0x50,0x1b,0,58},
{0,0,ething1(180,0,0),ething2(120,0),ething3(35,0,0),ething4(20,0,0),0x0,50,5,5,45,30,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x639,0x0,0x0,0,0},
{0,0,ething1(40,1,15),ething2(0,0),ething3(22,0,1),ething4(32,2,0),0x0,20,40,20,20,20,{0x5d,0x5d,0x5d,0x1,0x1,0x1,0x1,0x1},0x63a,0x20,0x1a,0,39},
{0,0,ething1(40,1,14),ething2(0,1),ething3(20,0,1),ething4(32,2,0),0x0,20,20,20,20,20,{0x28,0x28,0x28,0x1,0x1,0x1,0x1,0x1},0x63b,0x23,0x35,0,39},
{0,0,ething1(40,1,14),ething2(0,2),ething3(24,0,2),ething4(20,2,0),0x0,50,50,20,20,20,{0x2,0x2,0x2,0x2,0x2,0x2,0x2,0x2},0x63c,0x23,0x22,0,39},
{0,0,ething1(180,2,4),ething2(120,0),ething3(35,0,0),ething4(20,0,0),0x0,50,5,5,45,30,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x63d,0x0,0x0,0,47},
{0,0,ething1(180,3,4),ething2(120,0),ething3(35,0,0),ething4(20,0,0),0x0,50,5,5,45,30,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x63e,0x0,0x0,0,47},
{0,0,ething1(74,3,4),ething2(0,16),ething3(24,0,2),ething4(50,2,0),0x0,20,30,20,50,20,{0x4f,0x4f,0x4f,0x4f,0x4f,0x4f,0x7,0x7},0x63f,0x28,0x17,73,47},
{0,0,ething1(180,3,2),ething2(120,0),ething3(35,0,0),ething4(20,0,0),0x0,50,5,5,45,30,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x640,0x0,0x0,0,40},
{0,0,ething1(180,3,2),ething2(80,0),ething3(100,0,0),ething4(180,3,0),0xfe,80,60,80,100,100,{0x12,0x15,0x12,0x12,0x13,0x12,0x12,0x12},0x641,0x62,0x8f,37,40},
{0,0,ething1(230,2,2),ething2(150,0),ething3(150,0,0),ething4(200,3,0),0xfe,200,100,90,100,100,{0x15,0x13,0x13,0xa,0xa,0x83,0x1,0xe},0x642,0xb4,0xcd,0,40},
{0,0,ething1(70,0,2),ething2(30,7),ething3(26,0,0),ething4(76,3,0),0x86,25,20,20,100,100,{0x53,0x53,0x1,0x1,0x1,0x12,0x12,0x12},0x643,0x41,0x26,37,39},
{0,0,ething1(80,2,5),ething2(50,0),ething3(54,0,0),ething4(80,3,0),0xd4,30,50,40,100,100,{0x1,0x15,0x1,0x1,0x1,0x1,0x1,0x1},0x644,0xdc,0x57,38,49},
{0,0,ething1(65,1,10),ething2(50,0),ething3(42,3,4),ething4(50,3,0),0x84,20,60,40,100,100,{0x12,0x1,0x38,0x1,0x1,0x1,0x1,0x1},0x645,0x52,0x39,0,40},
{0,0,ething1(120,2,5),ething2(80,13),ething3(80,0,0),ething4(150,3,0),0x86,50,70,60,100,100,{0x6b,0x62,0x31,0x1,0x6b,0x1,0x1,0x1},0x646,0x66,0x58,0,50},
{0,0,ething1(200,0,10),ething2(0,0),ething3(140,0,0),ething4(200,3,0),0x84,100,100,60,100,100,{0x46,0x10,0x46,0x10,0x10,0x10,0x10,0x1},0x647,0xd1,0x8a,36,59},
{0,0,ething1(120,2,10),ething2(0,0),ething3(50,1,0),ething4(120,3,0),0x84,30,35,60,100,100,{0x2e,0x2e,0x2e,0x2e,0x1,0x1,0x1,0x1},0x648,0xe6,0x104,0,44},
{0,0,ething1(300,3,5),ething2(200,14),ething3(200,0,0),ething4(250,3,0),0xfe,200,120,100,100,100,{0x18,0x83,0xa,0x6b,0xb,0x15,0x1,0x1},0x649,0x10e,0x16a,73,50},
{0,0,ething1(100,2,5),ething2(80,0),ething3(74,0,0),ething4(120,2,0),0x0,40,42,60,50,45,{0x12,0x13,0x38,0x53,0x53,0x15,0x1,0x1},0x64a,0x96,0x5b,0,51},
{0,0,ething1(120,1,3),ething2(60,0),ething3(70,0,2),ething4(150,2,0),0x4,60,65,120,30,100,{0xd,0x40,0xe,0xf,0x1,0x1,0x1,0x1},0x64b,0xa2,0x5d,0,41},
{0,0,ething1(320,3,4),ething2(0,0),ething3(100,0,0),ething4(420,2,0),0xc,60,70,200,80,25,{0x62,0x62,0x62,0x1,0x1,0x1,0x1,0x3e},0x64c,0xb4,0x82,0,51},
{0,0,ething1(160,1,5),ething2(250,0),ething3(60,0,0),ething4(140,2,0),0x24,100,65,250,100,100,{0xa,0xd,0x42,0x4b,0x2b,0x1d,0x31,0x36},0x64d,0xaf,0x6e,0,52},
{0,0,ething1(180,0,0),ething2(120,0),ething3(35,0,0),ething4(20,0,0),0x0,50,5,5,45,30,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x64e,0x0,0x0,0,0},
{0,0,ething1(70,2,8),ething2(50,0),ething3(50,0,0),ething4(80,4,0),0x80,45,48,80,60,15,{0x42,0x42,0x42,0x4c,0x4c,0x4c,0x4c,0x1},0x64f,0x30,0x2b,0,60},
{0,0,ething1(90,2,7),ething2(0,0),ething3(62,0,0),ething4(90,4,0),0x80,30,30,50,60,20,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x650,0x36,0x3a,0,60},
{0,0,ething1(80,2,4),ething2(0,0),ething3(44,0,0),ething4(76,1,0),0x20,40,42,30,30,25,{0x3,0x3,0x3,0x3,0x3,0x3,0x3,0x3},0x651,0x42,0x2b,0,54},
{0,0,ething1(1000,0,1),ething2(0,4),ething3(300,0,0),ething4(600,3,0),0xfe,100,100,40,100,100,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x652,0xcd,0x47,0,34},
{0,0,ething1(340,2,2),ething2(0,0),ething3(160,0,0),ething4(340,1,0),0x0,100,100,60,100,25,{0x2,0x2,0x2,0x4,0x5,0x2,0x2,0x7},0x653,0xfa,0x41,0,43},
{0,0,ething1(1000,3,1),ething2(0,6),ething3(900,0,0),ething4(1000,3,0),0xf6,60,60,60,100,100,{0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1},0x654,0x226,0xb4,0,34},
{0,0,ething1(120,2,5),ething2(100,0),ething3(90,0,0),ething4(140,2,0),0x0,70,60,60,80,50,{0x13,0x13,0x38,0x15,0x1,0x1,0x53,0x53},0x655,0x14a,0x185,73,51}
};

//********** 0 series (END) **********
#define BA_END .byte 0

//********** 10 series (General) **********
#define ba_variety(condition) (1 << 4) | condition
typedef enum BA_VARIETY {
//These all take no arguments.
//10 - Do something with the attacker
    E_DRAWNEAR = 0, // BINST10_ENEMYSPAWN
//11 - Enemy run away (set $47 to 1 if not enemy?)
    E_RUN = 1, // BINST11_RUN
//12 - Enemy flash
    E_FLASH = 2, // BINST12_ANIMATE_NORMAL
//13 - Enemy fade
    E_LONG = 3, // BINST13_ANIMATE_LONG
//14 - Call for help
    E_HELP = 4, // BINST14_CALLHELP
//15 - Sow seeds (plant-type call for help)
    E_SEEDS = 5, // BINST15_SPROUT
//16 - Escape battle (set $47 to 2)
    ESCAPE = 6, // BINST16_DIMENSION_SLIP
//17 - Fire animation (red flash)
    ANIM_FIRE = 7, // BINST17_ANIMATE_FIRE
//18 - Freeze animation (dark blue flash)
    ANIM_FREEZE = 8, // BINST18_ANIMATE_FREEZE
//19 - Thunder animation (light blue flash)
    ANIM_THUNDER = 9, // BINST19_ANIMATE_THUNDER
//1A - Beam animation (yellow flash)
    ANIM_BEAM = 10, // BINST1A_ANIMATE_BEAM
//1B - Smash animation (green flash)
    SMASH_FLASH = 11 // BINST1B_ANIMATE_CRIT
} BA_VARIETY;
//(1C through 1F execute invalid code, crash yadda yadda)

#define ba_series(series, condition, value) (series << 4) | condition, value

//********** 20 series (PSI) **********
//2X YY - Use PSI YY
//fairly certain X does nothing, they leave it at 0 for uniformity
#define ba_use_psi(psi) 0x20, psi //use psi

//********** 30 series (items) **********
//3X YY - Use item YY.
//X == 1 == remove after using
//unknown if any other values do anything. doesnt seem like it
#define ba_use_item(condition, xitem) ba_series(3, condition, xitem)

//********** 40 series (???) **********
#define ba_effect(effect) 0x40, effect
typedef enum BA_EFFECT {
    BA_EFFECT_HEAL = 0, // BINST4_00_RestoreHP
    BA_EFFECT_HEALPP = 1, // BINST4_01_RestorePP
    BA_EFFECT_SPDUP = 2, // BINST4_02_RaiseSpd
    BA_EFFECT_OFFUP = 3, // BINST4_03_BolsterOff
    BA_EFFECT_DEFUP = 4, // BINST4_04_BolsterDef
    BA_EFFECT_MAXHP = 5, // BINST4_05_MaxHP
    BA_EFFECT_DAMAGE = 6, // BINST4_06_DoDamage
    BA_EFFECT_DEFDOWN_PSI = 7, // BINST4_07_LowerDef
    BA_EFFECT_FIGDOWN = 8, // BINST4_08_LowerFit
    BA_EFFECT_ONESHOT = 9, // BINST4_09_OHKO
    BA_EFFECT_FREEZE = 0xA, // BINST4_0A_Cryo
    BA_EFFECT_OFFDOWN = 0xB, // BINST4_0B_CrippleOff
    BA_EFFECT_DEFDOWN = 0xC, // BINST4_0C_CrippleDef
    BA_EFFECT_EXPBONUS = 0xD, // BINST4_0D_BonusEXP
    BA_EFFECT_DIE = 0xE, //self? // BINST4_0E_Suicide
    BA_EFFECT_RECOIL = 0xF, // BINST4_0F_Recoil
    BA_EFFECT_EDGE_CLOSER = 0x10, // BINST4_10_Approach
    BA_EFFECT_RAGE = 0x11, // BINST4_11_RaiseOff
    BA_EFFECT_BLIND = 0x12, // BINST4_12_Blind
    BA_EFFECT_POISON = 0x13, // BINST4_13_Poison
    BA_EFFECT_CONFUSION = 0x14, // BINST4_14_Confuse
    BA_EFFECT_SLEEP = 0x15, // BINST4_15_Sleep
    BA_EFFECT_PARALYSIS = 0x16, // BINST4_16_Paralyze
    BA_EFFECT_BLOCK = 0x17, // BINST4_17_Block
    BA_EFFECT_GUARD = 0x18, // BINST4_18_Guard
    BA_EFFECT_SHIELD = 0x19, // BINST4_19_Shield
    BA_EFFECT_POWERSHIELD = 0x1a, // BINST4_1A_Barrier
    BA_EFFECT_BIND = 0x1b, // BINST4_1B_Bind
    BA_EFFECT_STONE = 0x1C, // BINST4_1C_Petrify
    BA_EFFECT_ASTHMA = 0x1D, // BINST4_1D_Asthma
    BA_EFFECT_PUZZLE = 0x1E, // BINST4_1E_Puzzle
    BA_EFFECT_CURE_POISON = 0x1F, // BINST4_1f_CurePoison
    BA_EFFECT_CURE_SLEEP = 0x20, // BINST4_20_CureSleep
    BA_EFFECT_CURE_PARALYSIS = 0x21, // BINST4_21_CureParalysis
    BA_EFFECT_CURE_ASTHMA = 0x22, // BINST4_22_CureAsthma
    BA_EFFECT_CURE_CONFUSION = 0x23, // BINST4_23_CureConfusePuzzle
    BA_EFFECT_SHIELDOFF = 0x24, // BINST4_24_CureShield
    BA_EFFECT_REVIVE = 0x25, // BINST4_25_CureUncon
    BA_EFFECT_CURE_STONE = 0x26, // BINST4_26_CurePetrification
    BA_EFFECT_PSIMAGNET = 0x27, // BINST4_27_Magnet
    BA_EFFECT_STEAL_FOOD = 0x28, // BINST4_28_Steal
    BA_EFFECT_SING = 0x29, // BINST4_29_Sing
    BA_EFFECT_SELF_CONFUSE = 0x2a // BINST4_2A_ConfuseSelf
} BA_EFFECT;

//********** 50 series (targeting) **********
#define ba_target(target) (5 << 4) | target
typedef enum BA_TARGET {
//50 - NOP
    BA_TARGET_NULL = 0, // BINST50_NOP
//51 - Complete random retarget if confused
    BA_TARGET_RETARGET = 1, // BINST51_TARGET_SELECTED
//52 - Target first opponent. 50% chance to target first ally if confused
    BA_TARGET_THEIR_LEADER = 2, // BINST52_TARGET_OPPOSING_LEADER
//53 - Target first ally. 50% chance to target first opponent if confused
    BA_TARGET_OUR_LEADER = 3, // BINST53_TARGET_OUR_LEADER
//54 - Target self
    BA_TARGET_ME = 4, // BINST54_TARGET_SELF
//55 - Target first ally
    BA_TARGET_OUR_LEADER_REAL = 5, // BINST55_TARGET_OUR_LEADER_GUARANTEED
//56 - Target next battler
    BA_TARGET_NEXT = 6 // BINST56_TARGET_NEXT
} BA_TARGET;
//(57 through 5F execute invalid code and will probably just crash the game)

//********** 60 series (misc) **********
#define ba_misc(condition, value) ba_series(6, condition, value)
typedef enum BA_MISC {
//60 XX - Calculate damage based on attacker's offense and target's defense. Exact formula still needs to be figured out (XX ignored)
    BA_MISC_DAMAGECALC = 0, // BINST60_SETNUMBASH
//61 XX - Set damage to attacker's offense. Damage will be set to a random number between 8 and 15 if ($56 == 1) (XX ignored)
    BA_MISC_DAMAGECALC_CRIT = 1, // BINST61_SETNUMCRIT
//62 XX - Set damage to XX
    BA_MISC_DAMAGESET = 2, // BINST62_SETNUM
//63 XX - Giegue's speech (increment values for next line, etc. Still needs to be looked into)
    BA_MISC_GIEGUE_SPEECH = 3, // BINST63_GIEGUE_SPEECH
//64 XX - $57 |= XX
    BA_MISC_RESISTANCE = 4, // BINST64_DO_RESISTANCE
//65 XX - Check (aka Spy)
    BA_MISC_CHECK = 5, // BINST65_CHECK
//66 XX - ??? (XX ignored)
    BA_MISC_ATTACKSOUND = 6, // BINST66_PLAYATTACKSOUND
//67 XX - Load sound effect to play later ($58 = XX)
    BA_MISC_LOADSOUND = 7, // BINST67_LOADSOUND
//68 XX - Display text XX
    BA_MISC_DISPTEXT = 8, // BINST68_PRINTTEXT
//69 XX - Play sound XX
    BA_MISC_SOUND = 9 // BINST69_PLAYSOUND
} BA_MISC;
//(6A through 6F execute invalid code and might just crash the game)

//********** 70 and 80 series (conditional jumps) **********
//7X YYYY - Jump if condition
//8X YYYY - Jump if NOT condition
#define ba_conditional(series, condition, pointer) (series << 4) | condition, \
(pointer & 0xff), (pointer >> 8)
#define ba_jumpif(condition, pointer) ba_conditional(7, condition, pointer)
#define ba_jumpifnot(condition, pointer) ba_conditional(8, condition, pointer)

//Conditions (X):
typedef enum BA_CON {
//0 - Attacker AND target are alive
    BA_CON_BOTHLIVE = 0,
//1 - Checks target status ailments and other stuff?
    BA_CON_IS_DODGE = 1,
//2 - ??? Checks FIGHT stat at some point
    BA_CON_IS_CRIT = 2,
//3 - ??? Checks battler struct offset 0x1E
    BA_CON_IS_BLINDED = 3,
//4 - Attacker is enemy OR ($23 == 0)
    BA_CON_IS_TANK = 4,
//5 - Attacker is enemy OR unknown condition
    BA_CON_HAS_FBADGE = 5,
//6 - Target is alive
    BA_CON_T_ALIVE = 6,
//7 - Unknown check against target
    BA_CON_BUG_SPRAY = 7,
//8 - 50% chance
    BA_CON_D2 = 8,
//9 - Unknown check against target
    BA_CON_UNK9 = 9,
//A - Unknown check against target
    BA_CON_UNKA = 0xA,
//B - ??? $21 != 0
    BA_CON_SCRIPTED = 0xB,
//C - Unknown check against target
    BA_CON_IS_SHIELD = 0xC,
//D - ??? $56 == 5 || $56 == 6
    BA_CON_IS_GIEGUE = 0xD
} BA_CON;
//E:F - Invalid code executed, crash

//********** 90 series (subroutine call) **********
//9X YYYY - Subroutine call. X is ignored, they leave it at 0 for uniformity
#define ba_jsr(pointer) ba_conditional(9, 0, pointer)

//********** A0 series (Unconditional jump) **********
//AX YYYY - Unconditional jump. X is ignored, they leave it at 0 for uniformity
#define ba_jump(pointer) ba_conditional(0xA, 0, pointer)

//********** B0 series (repeat) **********
//BX - repeat X times until END byte (00~0F)???
#define ba_repeat(condition) (0xb << 4) | condition

//********** C0 series (item depletion) **********
//   XX is an item ID
#define ba_deplete(condition, xitem) ba_series(12, condition, xitem)
//Conditions (X):
typedef enum BA_DEPLETE {
//C0 XX - 1/8 chance to "break" item XX
    BA_DEPLETE_BREAK = 0,
//C1 XX - 1/8 chance to make the item "turn into an ordinary stone" (deplete PSI Stone)
    BA_DEPLETE_PSI_STONE = 1,
//C2 XX - Decrement $741F, and if reached zero, remove item and display "the [item] was fully emptied..." (possibly bag of herbs?)
    BA_DEPLETE_BIGBAG = 2
} BA_DEPLETE;

//uses nes pointer math
u8 gBattleActionData[] = INCBIN_U8("data/battle/gBattleActionData.bin");

NAKED
s32 InitiateBattle(u8 enemyGroupId, u8 a2)
{
    asm(".include \"asm/non_matching/battle/InitiateBattle.s\"");
}

void sub_8F0E770(u8 a1) {
    u8 sp0[] = {
        0x00, 0x00, 0x00, 0x01, 0x0A, 0x00, 0x00, 0x01,
        0x00, 0x00, 0x05, 0x00, 0x00, 0x03, 0x3C, 0x00,
        0x04, 0x3C, 0x01, 0x02, 0x3C, 0x02, 0x01, 0x3C,
        0x00, 0x02, 0x14, 0x01, 0x03, 0x00, 0x01, 0x07,
        0x00, 0x01, 0x0C, 0x00, 0x03, 0x01, 0xB4, 0x03,
        0x02, 0x50, 0x01, 0x05, 0x00, 0x01, 0x01, 0x00,
        0x01, 0x04, 0x00, 0x00, 0x08, 0x00, 0x03, 0x02,
        0x00, 0x01, 0x0F, 0x00, 0x03, 0x03, 0x8C, 0x02,
        0x03, 0x3C
    };

    s32 temp_r2;
    if (a1 != 0) {
        temp_r2 = a1 * 3;
        switch (sp0[temp_r2]) {                          /* irregular */
        case 0:
            PlayNoiseSfx(sp0[temp_r2 + 1]);
            break;
        case 1:
            PlayPulse1Sfx(sp0[temp_r2 + 1]);
            break;
        case 2:
            PlayTriangleSfx(sp0[temp_r2 + 1]);
            break;
        case 3:
            PlayPulse2Sfx(sp0[temp_r2 + 1]);
            break;
        }
        sub_8F0E838(sp0[(a1 * 3) + 2]);
    }
}

void sub_8F0E7F0(void) {
    sub_8F12338();
    sub_8F040E0();
    DmaCopy32(3, gBg0TilemapBuffer, 0x06000000, 0x800)
    DmaCopy32(3, gSpriteBuffer, 0x07000000, 0x400)
    UpdateInput();
}

void sub_8F0E838(u32 a1) {
    for (a1 = a1; a1 > 0; a1--){
        sub_8F0E7F0();
    }
}

void sub_8F0E850(u32 a1) {
    a1 += 1;
    while (a1 > 0){
        sub_8F0E874();
        a1--;
    }
    sub_8F0E874();
    sub_8F0EA18(15);
}

void sub_8F0E874(void) {
    u8 sp0[] = {0x21, 0x22, 0x23, 0x24, 0x25, 0x24, 0x23, 0x22};
    s32 var_r4;
    for (var_r4 = 0x2F; var_r4 > 0; var_r4--){
        sub_8F0EA18(sp0[(var_r4 >> 1) & 7]);
        sub_8F0E7F0();
        sub_8F0E7F0();
    }
}

void sub_8F0E8AC(void) {
    gKeysDown = 0;
    while (!(gKeysDown & 0x207)){
        sub_8F0E7F0();
    }
    gKeysDown = 0;
}


u16 sub_8F0E8DC(u16 a1) {
    u8 sp0[] = {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x0C, 0x0C,
        0x0C, 0x0C, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
        0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02,
        0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03,
        0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03,
        0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04,
        0x04, 0x04, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05,
        0x05, 0x05, 0x05, 0x14, 0x06, 0x06, 0x06, 0x06,
        0x06, 0x06, 0x06, 0x06, 0x06, 0x15, 0x07, 0x07,
        0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x11, 0x11,
        0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
        0x12, 0x12, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09,
        0x09, 0x0F, 0x0F, 0x0F, 0x0A, 0x0A, 0x0A, 0x0A,
        0x0A, 0x0A, 0x0D, 0x0D, 0x0D, 0x0D, 0x0B, 0x0B,
        0x0B, 0x0B, 0x0B, 0x0B, 0x0E, 0x0E, 0x0E, 0x0E,
        0x10, 0x10, 0x10, 0x13, 0x13, 0x16, 0x17, 0x18
    };
    s32 var_r1;
    u32 rand;
    u8 var_r0;

    rand = Random();
    if ((rand >> 24) & 1) {
        var_r0 = 100 - sp0[rand >> 25];
    } else {
        var_r0 = sp0[rand >> 25] + 100;
    }
    var_r1 = (var_r0 * (a1 & 0x3FF)) / 100;
    var_r1 += a1 & 0xFC00;
    if (var_r1 > 0xFFFF) {
        var_r1 = 0xFFFF;
    }
    return var_r1;
}


u8 sub_8F0E950(u8 a1) {
    s32 var_r0 = sub_8F0E8DC(a1);
    if (var_r0 > 0xFF) {
        var_r0 = 0xFF;
    }
    return var_r0;
}

void sub_8F0E96C(void) {
    s32 i;
    for (i = 0xF; i > 0; i--){
        PlayPulse1Sfx(5);
        sub_8F0E838(2);
    }
}

#define mLetter_iscalled(letter, iscalled) (iscalled << 7) | letter
#define battlebyte8(position, encounter) (encounter << 5) | position
#define battlebyte9(palette, music) (music << 4) | palette

void SetupEnemyGroups(void) {
    u8 enemy_groups_data[][10] = {
{255, mLetter_iscalled(0, 0), 0, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(3, 0), battlebyte9(0, 3)},
{63, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(12, 2)},
{63, mLetter_iscalled(1, 0), 63, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(12, 2)},
{44, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(11, 2)},
{44, mLetter_iscalled(1, 0), 44, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(11, 2)},
{48, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(11, 2)},
{48, mLetter_iscalled(1, 0), 48, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(11, 2)},
{88, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(14, 3)},
{36, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(10, 2)},
{37, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(11, 4)},
{38, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(8, 2)},
{45, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(6, 2)},
{59, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(7, 2)},
{59, mLetter_iscalled(1, 0), 59, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(7, 2)},
{59, mLetter_iscalled(1, 0), 59, mLetter_iscalled(2, 0), 59, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(7, 2)},
{59, mLetter_iscalled(1, 0), 59, mLetter_iscalled(2, 0), 59, mLetter_iscalled(3, 0), 59, mLetter_iscalled(4, 0), battlebyte8(12, 0), battlebyte9(7, 2)},
{43, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(12, 3)},
{42, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(12, 3)},
{4, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(0, 0), battlebyte9(6, 3)},
{14, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(0, 0), battlebyte9(0, 3)},
{12, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(7, 3)},
{46, mLetter_iscalled(1, 0), 46, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(6, 2)},
{46, mLetter_iscalled(1, 0), 46, mLetter_iscalled(2, 0), 46, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(11, 0), battlebyte9(6, 2)},
{23, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(9, 3)},
{23, mLetter_iscalled(1, 0), 23, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(9, 3)},
{50, mLetter_iscalled(1, 0), 50, mLetter_iscalled(2, 1), 50, mLetter_iscalled(3, 1), 50, mLetter_iscalled(4, 1), battlebyte8(12, 0), battlebyte9(1, 2)},
{50, mLetter_iscalled(1, 0), 50, mLetter_iscalled(2, 0), 50, mLetter_iscalled(3, 1), 50, mLetter_iscalled(4, 1), battlebyte8(12, 0), battlebyte9(1, 2)},
{70, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(1, 2)},
{58, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(0, 3)},
{58, mLetter_iscalled(1, 0), 58, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(0, 3)},
{28, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(0, 3)},
{28, mLetter_iscalled(0, 0), 58, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(0, 3)},
{58, mLetter_iscalled(1, 0), 28, mLetter_iscalled(0, 0), 58, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(0, 3)},
{58, mLetter_iscalled(1, 0), 58, mLetter_iscalled(2, 0), 28, mLetter_iscalled(0, 0), 58, mLetter_iscalled(3, 0), battlebyte8(12, 0), battlebyte9(0, 3)},
{16, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(1, 3)},
{16, mLetter_iscalled(0, 0), 99, mLetter_iscalled(0, 1), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(1, 3)},
{1, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(0, 0), battlebyte9(1, 3)},
{35, mLetter_iscalled(1, 0), 35, mLetter_iscalled(2, 1), 35, mLetter_iscalled(3, 1), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(6, 3)},
{17, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(11, 3)},
{17, mLetter_iscalled(1, 0), 17, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(11, 3)},
{55, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(0, 2)},
{96, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(0, 2)},
{95, mLetter_iscalled(0, 0), 55, mLetter_iscalled(0, 0), 96, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(0, 2)},
{95, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(0, 2)},
{94, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(0, 2)},
{255, mLetter_iscalled(0, 0), 56, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(4, 0), battlebyte9(0, 2)},
{2, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(0, 0), battlebyte9(6, 3)},
{25, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(5, 3)},
{5, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(13, 3)},
{255, mLetter_iscalled(0, 0), 20, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(3, 0), battlebyte9(10, 3)},
{255, mLetter_iscalled(0, 0), 20, mLetter_iscalled(1, 0), 20, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), battlebyte8(20, 0), battlebyte9(10, 3)},
{255, mLetter_iscalled(0, 0), 20, mLetter_iscalled(1, 0), 20, mLetter_iscalled(2, 0), 20, mLetter_iscalled(3, 0), battlebyte8(21, 0), battlebyte9(10, 3)},
{61, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(12, 3)},
{61, mLetter_iscalled(1, 0), 61, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(12, 3)},
{47, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(12, 3)},
{47, mLetter_iscalled(1, 0), 47, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(12, 3)},
{47, mLetter_iscalled(0, 0), 61, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(17, 0), battlebyte9(12, 3)},
{47, mLetter_iscalled(0, 0), 61, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(17, 0), battlebyte9(12, 3)},
{21, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(14, 3)},
{21, mLetter_iscalled(1, 0), 21, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(14, 3)},
{15, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(1, 4)},
{15, mLetter_iscalled(0, 0), 7, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(1, 4)},
{89, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(0, 4)},
{255, mLetter_iscalled(0, 0), 90, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(3, 0), battlebyte9(0, 4)},
{255, mLetter_iscalled(0, 0), 91, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(3, 0), battlebyte9(4, 4)},
{8, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(2, 3)},
{103, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(3, 3)},
{40, mLetter_iscalled(0, 0), 8, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(14, 0), battlebyte9(2, 3)},
{40, mLetter_iscalled(0, 0), 103, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(14, 0), battlebyte9(3, 3)},
{64, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(5, 2)},
{54, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(6, 2)},
{74, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(1, 3)},
{57, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(4, 2)},
{57, mLetter_iscalled(1, 0), 57, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(4, 2)},
{57, mLetter_iscalled(1, 0), 57, mLetter_iscalled(2, 0), 57, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(4, 2)},
{34, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(4, 3)},
{34, mLetter_iscalled(1, 0), 34, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(4, 3)},
{49, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(5, 3)},
{87, mLetter_iscalled(1, 0), 87, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(5, 2)},
{87, mLetter_iscalled(1, 0), 87, mLetter_iscalled(2, 0), 87, mLetter_iscalled(3, 1), 87, mLetter_iscalled(4, 1), battlebyte8(12, 0), battlebyte9(5, 2)},
{57, mLetter_iscalled(1, 1), 57, mLetter_iscalled(2, 1), 92, mLetter_iscalled(0, 0), 57, mLetter_iscalled(3, 1), battlebyte8(12, 0), battlebyte9(4, 3)},
{115, mLetter_iscalled(0, 1), 57, mLetter_iscalled(0, 1), 92, mLetter_iscalled(0, 0), 34, mLetter_iscalled(0, 1), battlebyte8(12, 0), battlebyte9(4, 3)},
{115, mLetter_iscalled(1, 0), 115, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(4, 3)},
{115, mLetter_iscalled(0, 0), 116, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(4, 3)},
{87, mLetter_iscalled(0, 1), 49, mLetter_iscalled(1, 1), 92, mLetter_iscalled(0, 0), 49, mLetter_iscalled(2, 1), battlebyte8(18, 0), battlebyte9(5, 3)},
{117, mLetter_iscalled(1, 0), 117, mLetter_iscalled(2, 0), 117, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(11, 0), battlebyte9(14, 3)},
{117, mLetter_iscalled(1, 0), 117, mLetter_iscalled(2, 0), 117, mLetter_iscalled(3, 0), 117, mLetter_iscalled(4, 0), battlebyte8(13, 0), battlebyte9(14, 3)},
{75, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(14, 3)},
{76, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(13, 3)},
{6, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(0, 0), battlebyte9(7, 2)},
{105, mLetter_iscalled(1, 0), 105, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(3, 3)},
{105, mLetter_iscalled(1, 0), 105, mLetter_iscalled(2, 0), 105, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(3, 3)},
{104, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(3, 3)},
{105, mLetter_iscalled(1, 0), 104, mLetter_iscalled(0, 0), 105, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(3, 3)},
{105, mLetter_iscalled(1, 0), 105, mLetter_iscalled(2, 0), 104, mLetter_iscalled(0, 0), 105, mLetter_iscalled(3, 0), battlebyte8(12, 0), battlebyte9(3, 3)},
{104, mLetter_iscalled(0, 0), 30, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(8, 3)},
{30, mLetter_iscalled(1, 0), 104, mLetter_iscalled(0, 0), 30, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(8, 3)},
{104, mLetter_iscalled(0, 0), 24, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(14, 0), battlebyte9(3, 3)},
{18, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(2, 3)},
{18, mLetter_iscalled(1, 0), 18, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(2, 3)},
{29, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(2, 3)},
{29, mLetter_iscalled(0, 0), 24, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(14, 0), battlebyte9(2, 3)},
{51, mLetter_iscalled(1, 0), 51, mLetter_iscalled(2, 1), 51, mLetter_iscalled(3, 1), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(0, 2)},
{11, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(6, 3)},
{11, mLetter_iscalled(1, 0), 11, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(6, 3)},
{30, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(0, 3)},
{81, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(0, 3)},
{82, mLetter_iscalled(1, 0), 82, mLetter_iscalled(2, 1), 82, mLetter_iscalled(3, 1), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(1, 2)},
{52, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(1, 3)},
{52, mLetter_iscalled(1, 0), 52, mLetter_iscalled(2, 0), 255, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(1, 3)},
{71, mLetter_iscalled(0, 0), 52, mLetter_iscalled(1, 0), 52, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(1, 3)},
{118, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(0, 2), battlebyte9(0, 3)},
{106, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(2, 3)},
{106, mLetter_iscalled(0, 0), 24, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(14, 0), battlebyte9(2, 3)},
{255, mLetter_iscalled(0, 0), 33, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(4, 0), battlebyte9(10, 3)},
{255, mLetter_iscalled(0, 0), 33, mLetter_iscalled(1, 0), 33, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), battlebyte8(5, 0), battlebyte9(10, 3)},
{255, mLetter_iscalled(0, 0), 33, mLetter_iscalled(1, 0), 33, mLetter_iscalled(2, 0), 33, mLetter_iscalled(3, 0), battlebyte8(6, 0), battlebyte9(10, 3)},
{83, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(9, 3)},
{83, mLetter_iscalled(1, 0), 83, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(9, 3)},
{83, mLetter_iscalled(1, 0), 83, mLetter_iscalled(2, 0), 83, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(11, 0), battlebyte9(9, 3)},
{13, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(0, 0), battlebyte9(15, 2)},
{13, mLetter_iscalled(1, 0), 13, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(9, 0), battlebyte9(15, 2)},
{85, mLetter_iscalled(1, 0), 85, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(9, 0), battlebyte9(13, 3)},
{85, mLetter_iscalled(1, 0), 85, mLetter_iscalled(2, 0), 85, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(19, 0), battlebyte9(13, 3)},
{22, mLetter_iscalled(1, 0), 22, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(13, 2)},
{22, mLetter_iscalled(1, 0), 22, mLetter_iscalled(2, 0), 22, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(11, 0), battlebyte9(13, 2)},
{110, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(9, 3)},
{110, mLetter_iscalled(1, 0), 110, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(7, 0), battlebyte9(9, 3)},
{110, mLetter_iscalled(1, 0), 110, mLetter_iscalled(2, 0), 110, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(9, 3)},
{119, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(13, 3)},
{32, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(10, 3)},
{112, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(8, 3)},
{112, mLetter_iscalled(1, 0), 112, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(8, 3)},
{10, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(0, 0), battlebyte9(7, 3)},
{10, mLetter_iscalled(1, 0), 10, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(9, 0), battlebyte9(7, 3)},
{111, mLetter_iscalled(1, 0), 111, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(9, 0), battlebyte9(7, 3)},
{111, mLetter_iscalled(1, 0), 111, mLetter_iscalled(2, 0), 111, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(19, 0), battlebyte9(7, 3)},
{9, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(2, 3)},
{9, mLetter_iscalled(1, 0), 9, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(2, 3)},
{9, mLetter_iscalled(0, 0), 108, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(2, 3)},
{255, mLetter_iscalled(0, 0), 113, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(4, 0), battlebyte9(10, 3)},
{255, mLetter_iscalled(0, 0), 113, mLetter_iscalled(1, 0), 113, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), battlebyte8(5, 0), battlebyte9(10, 3)},
{255, mLetter_iscalled(0, 0), 113, mLetter_iscalled(1, 0), 113, mLetter_iscalled(2, 0), 113, mLetter_iscalled(3, 0), battlebyte8(6, 0), battlebyte9(10, 3)},
{255, mLetter_iscalled(0, 0), 113, mLetter_iscalled(1, 0), 113, mLetter_iscalled(2, 0), 113, mLetter_iscalled(3, 0), battlebyte8(6, 0), battlebyte9(10, 3)},
{120, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(0, 3), battlebyte9(15, 3)},
{3, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(0, 4), battlebyte9(6, 3)},
{107, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(12, 3)},
{109, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(2, 3)},
{109, mLetter_iscalled(0, 0), 108, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(14, 0), battlebyte9(2, 3)},
{101, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(0, 3)},
{101, mLetter_iscalled(1, 0), 101, mLetter_iscalled(2, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(0, 3)},
{102, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(0, 3)},
{102, mLetter_iscalled(0, 0), 101, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(8, 0), battlebyte9(0, 3)},
{121, mLetter_iscalled(1, 0), 121, mLetter_iscalled(2, 0), 121, mLetter_iscalled(3, 0), 255, mLetter_iscalled(0, 0), battlebyte8(10, 0), battlebyte9(0, 3)},
{121, mLetter_iscalled(1, 0), 121, mLetter_iscalled(2, 0), 121, mLetter_iscalled(3, 0), 121, mLetter_iscalled(4, 0), battlebyte8(12, 0), battlebyte9(0, 3)},
{121, mLetter_iscalled(1, 0), 121, mLetter_iscalled(2, 0), 121, mLetter_iscalled(3, 0), 121, mLetter_iscalled(4, 0), battlebyte8(12, 0), battlebyte9(0, 3)},
{255, mLetter_iscalled(0, 0), 26, mLetter_iscalled(0, 0), 53, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(5, 0), battlebyte9(3, 2)},
{27, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 1), battlebyte9(7, 4)},
{39, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(11, 4)},
{66, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(15, 3)},
{67, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(2, 0), battlebyte9(6, 3)},
{31, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(9, 3)},
{19, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(0, 5), battlebyte9(9, 5)},
{255, mLetter_iscalled(0, 0), 62, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(3, 0), battlebyte9(15, 3)},
{60, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), 255, mLetter_iscalled(0, 0), battlebyte8(1, 0), battlebyte9(14, 3)},
    };

    gMiscContainer = (u8*) &enemy_groups_data[gBattleEnemyGroupId];
}

void sub_8F0E9CC(u8 a1) {
    u8 battle_palettes[32][16] = {
        {0x0F, 0x10, 0x30, 0x00, 0x0F, 0x16, 0x30, 0x00, 0x0F, 0x28, 0x30, 0x18, 0x0F, 0x2B, 0x30, 0x1A},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x00, 0x16, 0x30, 0x0F, 0x2A, 0x00, 0x00, 0x0F, 0x00, 0x30, 0x0F},
        {0x0F, 0x12, 0x30, 0x00, 0x0F, 0x16, 0x30, 0x06, 0x0F, 0x2A, 0x30, 0x1A, 0x0F, 0x30, 0x30, 0x21},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x1A, 0x30, 0x0F, 0x0F, 0x00, 0x30, 0x11, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x00, 0x10, 0x02, 0x0F, 0x12, 0x30, 0x16, 0x0F, 0x28, 0x30, 0x18, 0x0F, 0x16, 0x30, 0x07},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x0F, 0x30, 0x07, 0x0F, 0x0F, 0x30, 0x16, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x00, 0x10, 0x02, 0x0F, 0x12, 0x30, 0x16, 0x0F, 0x34, 0x30, 0x16, 0x0F, 0x18, 0x30, 0x16},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x10, 0x12, 0x0F, 0x0F, 0x10, 0x16, 0x0F, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x10, 0x30, 0x00, 0x0F, 0x24, 0x30, 0x13, 0x0F, 0x3B, 0x1A, 0x15, 0x0F, 0x0F, 0x30, 0x12},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x18, 0x30, 0x06, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x1A, 0x30, 0x2A, 0x0F, 0x38, 0x30, 0x18, 0x0F, 0x28, 0x30, 0x18, 0x0F, 0x0F, 0x30, 0x12},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x18, 0x30, 0x06, 0x0F, 0x21, 0x30, 0x11, 0x0F, 0x10, 0x37, 0x00, 0x0F, 0x16, 0x30, 0x38},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x11, 0x30, 0x0F, 0x0F, 0x17, 0x2A, 0x0F, 0x0F, 0x28, 0x30, 0x0F},
        {0x0F, 0x16, 0x30, 0x28, 0x0F, 0x12, 0x30, 0x2A, 0x0F, 0x18, 0x38, 0x06, 0x0F, 0x04, 0x30, 0x14},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x10, 0x30, 0x00, 0x0F, 0x28, 0x35, 0x16, 0x0F, 0x34, 0x30, 0x16, 0x0F, 0x1C, 0x30, 0x16},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x27, 0x30, 0x18, 0x0F, 0x29, 0x30, 0x1A, 0x0F, 0x21, 0x30, 0x12, 0x0F, 0x02, 0x30, 0x00},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x16, 0x34, 0x07, 0x0F, 0x21, 0x30, 0x12, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x2B, 0x30, 0x1A, 0x0F, 0x18, 0x30, 0x17, 0x0F, 0x18, 0x35, 0x12, 0x0F, 0x18, 0x30, 0x08},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x12, 0x35, 0x16, 0x0F, 0x28, 0x30, 0x16, 0x0F, 0x03, 0x39, 0x16, 0x0F, 0x03, 0x30, 0x16},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x13, 0x30, 0x0F, 0x0F, 0x1A, 0x30, 0x0F, 0x0F, 0x1A, 0x30, 0x0F},
        {0x0F, 0x25, 0x30, 0x05, 0x0F, 0x18, 0x36, 0x16, 0x0F, 0x06, 0x30, 0x00, 0x0F, 0x28, 0x30, 0x17},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x18, 0x30, 0x07, 0x0F, 0x30, 0x36, 0x00, 0x0F, 0x00, 0x30, 0x08, 0x0F, 0x28, 0x30, 0x12},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x24, 0x35, 0x16, 0x0F, 0x00, 0x30, 0x07, 0x0F, 0x30, 0x36, 0x00, 0x0F, 0x17, 0x30, 0x07},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x10, 0x12, 0x0F, 0x0F, 0x17, 0x0F, 0x07, 0x0F, 0x10, 0x30, 0x20},
        {0x0F, 0x0C, 0x38, 0x0A, 0x0F, 0x30, 0x37, 0x16, 0x0F, 0x2B, 0x30, 0x16, 0x0F, 0x34, 0x30, 0x16},
        {0x0F, 0x11, 0x30, 0x16, 0x0F, 0x16, 0x30, 0x0F, 0x0F, 0x1A, 0x30, 0x0F, 0x0F, 0x13, 0x30, 0x30}
    };
    LoadPalette(battle_palettes[a1 * 0x2], (u16* )0x05000080);
    LoadPalette(battle_palettes[(a1 * 0x2) + 1], (u16* )0x05000280);
}

void sub_8F0EA18(u8 a1) {
    s32 var_r0;
    u16 palette_color, diff;
    u16* var_r1;
    palette_color = gNESPalette[a1];
    if (a1 < 0x3D) {
        diff = (palette_color & 0x7000) >> 2;
        diff += (palette_color & 0x0380) >> 2;
        diff += (palette_color & 0x001C) >> 2;
        palette_color -= diff;
    }
    *(u16*)PLTT = palette_color;
    var_r1 = (u16* )PLTT+193;
    for (var_r0 = 0; var_r0 < 4; var_r0++){
        *var_r1 = palette_color;
        var_r1 += 0x10;
    }
    sub_8F0E7F0();
}


void sub_8F0EA64(u8 a1) {
    HandleControlCodes((u8*) gUnknown_08F29F00[a1]);
}

void sub_8F0EA7C(void) {
    u8 temp_r5 = gUnknown_030036B4;
    gUnknown_030036B4 = 0;
    WaitForButtonPress();
    gUnknown_030036B4 = temp_r5;
}

void sub_8F0EA98(void) {
    sub_8F12B48(0xFF);
    sub_8F0EAA8();
}

void sub_8F0EAA8(void) {

}

s32 sub_8F0EAAC(u8 a1) {
    u16 var_r0;
    if (a1 < 4) {
        var_r0 = gGameInfo.PlayerInfo.Struct.CharacterInfo[gBattlerData[a1].fulldata].MaxHP;
         if ((var_r0 / 4) <= gBattlerData[a1].curr_hp) {
            return 1;
        } else {
            return 0;
        }
    } else {
        var_r0 = gEnemyData[gBattlerData[a1].fulldata].hp_palette_tilemap;
        if ((var_r0 / 4) <= gBattlerData[a1].curr_hp) {
            return 1;
        } else {
            return 0;
        }
    }
}

void sub_8F0EAF8(void) {
    gUnknown_03003650 = v_blank_fnc;
    v_blank_fnc = sub_8F0EB28;
}

void sub_8F0EB14(void)
{
    v_blank_fnc = gUnknown_03003650;
}

void sub_8F0EB28(void) {
    if (gUnknown_03003650 != NULL) {
        gUnknown_03003650();
    }
    if ((gUnknown_030036E8) && (gUnknown_030036B4) && (gKeysDown & 6)) {
        gKeysDown &= ~6;
        gUnknown_030036E8 = 0;
        gUnknown_030036C0[4].unk0 = 0;
    }
}

// Battle - Enemy tile layouts
const u8 gUnknown_08F66C40[] = {
0x08, 0x08, 0x00,
0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27,
0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37,
0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F,
0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F,
0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F
};

const u8 gUnknown_08F66C83[] = {
0x08, 0x06, 0x00,
0x00, 0x01, 0x02, 0x03, 0x04, 0x05,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15,
0x20, 0x21, 0x22, 0x23, 0x24, 0x25,
0x30, 0x31, 0x32, 0x33, 0x34, 0x35,
0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B,
0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B,
0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B,
0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B
};

const u8 gUnknown_08F66CB6[] = {
0x06, 0x08, 0x02,
0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27,
0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37,
0x08, 0x09, 0x0A, 0x0B, 0x28, 0x29, 0x2A, 0x2B,
0x18, 0x19, 0x1A, 0x1B, 0x38, 0x39, 0x3A, 0x3B
};

const u8 gUnknown_08F66CE9[] = {
0x06, 0x06, 0x02,
0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C,
0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C,
0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C,
0x37, 0x38, 0x39, 0x3A, 0x3B, 0x3C,
0x0D, 0x0E, 0x0F, 0x2D, 0x2E, 0x2F,
0x1D, 0x1E, 0x1F, 0x3D, 0x3E, 0x3F
};

const u8 gUnknown_08F66D10[] = {
0x07, 0x04, 0x01,
0x00, 0x01, 0x02, 0x03,
0x10, 0x11, 0x12, 0x13,
0x20, 0x21, 0x22, 0x23,
0x30, 0x31, 0x32, 0x33,
0x04, 0x05, 0x06, 0x14,
0x15, 0x16, 0x24, 0x25,
0x26, 0x34, 0x35, 0x36
};

const u8 gUnknown_08F66D2F[] = {
0x06, 0x04, 0x02,
0x00, 0x01, 0x02, 0x03,
0x10, 0x11, 0x12, 0x13,
0x20, 0x21, 0x22, 0x23,
0x30, 0x31, 0x32, 0x33,
0x04, 0x05, 0x24, 0x25,
0x14, 0x15, 0x34, 0x35
};

const u8 gUnknown_08F66D4A[] = {
0x06, 0x04, 0x02,
0x06, 0x07, 0x08, 0x09,
0x16, 0x17, 0x18, 0x19,
0x26, 0x27, 0x28, 0x29,
0x36, 0x37, 0x38, 0x39,
0x0A, 0x0B, 0x2A, 0x2B,
0x1A, 0x1B, 0x3A, 0x3B
};

const u8 gUnknown_08F66D65[] = {
0x04, 0x06, 0x04,
0x00, 0x01, 0x02, 0x03, 0x04, 0x05,
0x10, 0x11, 0x12, 0x13, 0x14, 0x15,
0x20, 0x21, 0x22, 0x23, 0x24, 0x25,
0x30, 0x31, 0x32, 0x33, 0x34, 0x35
};

const u8 gUnknown_08F66D80[] = {
0x04, 0x04, 0x04,
0x0C, 0x0D, 0x0E, 0x0F,
0x1C, 0x1D, 0x1E, 0x1F,
0x2C, 0x2D, 0x2E, 0x2F,
0x3C, 0x3D, 0x3E, 0x3F
};

const u8 gUnknown_08F66D93[] = {
0x04, 0x03, 0x04,
0x07, 0x08, 0x09,
0x17, 0x18, 0x19,
0x27, 0x28, 0x29,
0x37, 0x38, 0x39
};

const u8 gUnknown_08F66DA2[] = {
0x04, 0x03, 0x04,
0x0A, 0x0B, 0x0C,
0x1A, 0x1B, 0x1C,
0x2A, 0x2B, 0x2C,
0x3A, 0x3B, 0x3C
};

const u8 gUnknown_08F66DB1[] = {
0x04, 0x03, 0x04,
0x0D, 0x0E, 0x0F,
0x1D, 0x1E, 0x1F,
0x2D, 0x2E, 0x2F,
0x3D, 0x3E, 0x3F
};

const u8 gUnknown_08F66DC0[] = {
0x02, 0x04, 0x03,
0x0C, 0x0D, 0x0E, 0x0F,
0x1C, 0x1D, 0x1E, 0x1F
};

const u8 gUnknown_08F66DCB[] = {
0x04, 0x04, 0x03,
0x2C, 0x2D, 0x2E, 0x2F,
0x3C, 0x3D, 0x3E, 0x3F,
0x2C, 0x2D, 0x2E, 0x2F,
0x3C, 0x3D, 0x3E, 0x3F
};

const u8 gUnknown_08F66DDE[] = {
0x0C, 0x00, 0x00, 0x00,
0x0D, 0x00, 0x00, 0x00,
0x0E, 0x00, 0x00, 0x00,
0x00, 0x0D, 0x00, 0x00,
0x00, 0x0E, 0x00, 0x00,
0x00, 0x0B, 0x11, 0x00,
0x00, 0x08, 0x0E, 0x14,
0x0B, 0x11, 0x00, 0x00,
0x08, 0x12, 0x00, 0x00,
0x07, 0x11, 0x00, 0x00,
0x08, 0x0E, 0x14, 0x00,
0x05, 0x0D, 0x15, 0x00,
0x06, 0x0B, 0x10, 0x15,
0x02, 0x09, 0x10, 0x17,
0x0B, 0x10, 0x00, 0x00,
0x07, 0x0C, 0x15, 0x00,
0x0C, 0x15, 0x00, 0x00,
0x0A, 0x12, 0x00, 0x00,
0x02, 0x07, 0x10, 0x15,
0x03, 0x0C, 0x15, 0x00,
0x00, 0x08, 0x12, 0x00,
0x00, 0x05, 0x0D, 0x15,
0x00, 0x00
};

const u8 gUnknown_08F66E38[] = {
0x00, 0x00, 0x00, 0x00,
0x04, 0x00, 0x40, 0x97,
0x04, 0x00, 0x44, 0x97,
0x05, 0x00, 0x48, 0x97,
0x04, 0x00, 0x4C, 0x97,
0x10, 0x00, 0x50, 0x97,
0x18, 0x00, 0x54, 0x97,
0x09, 0x00, 0x58, 0x97,
0x07, 0x00, 0x5C, 0x97,
0x05, 0x00, 0x60, 0x97,
0x04, 0x00, 0x64, 0x97,
0x04, 0x00, 0x68, 0x97,
0x07, 0x00, 0x6C, 0x97,
0x01, 0x00, 0x70, 0x97,
0x08, 0x00, 0x74, 0x97,
0x22, 0x00, 0x78, 0x97,
0x08, 0x00, 0x7C, 0x97
};

NAKED
void sub_8F0EB80(u8 a1)
{
    asm(".include \"asm/non_matching/battle/sub_8F0EB80.s\"");
}

NAKED
void sub_8F0EE8C(u8 a1)
{
    asm(".include \"asm/non_matching/battle/sub_8F0EE8C.s\"");
}

NAKED
void sub_8F0EF4C(u8 a1)
{
    asm(".include \"asm/non_matching/battle/sub_8F0EF4C.s\"");
}

NAKED
void sub_8F0F014(u8 a1, u8 a2)
{
    asm(".include \"asm/non_matching/battle/sub_8F0F014.s\"");
}

void DrawBattleStatusTextById(u8 a1) {
    u16 ids[] = {
    0x05DC, 0x066F, 0x05DE, 0x05DF, 0x05E0, 0x05E1, 0x05E2, 0x05E3,
    0x05E4, 0x05E5, 0x05E6, 0x05E7, 0x05E8, 0x05E9, 0x05EA, 0x05EB,
    0x05EC, 0x05ED, 0x05EE, 0x05EF, 0x05F0, 0x05F1, 0x05F2, 0x05F3,
    0x05F4, 0x05F5, 0x05F6, 0x05F7, 0x05F8, 0x05F9, 0x05FA, 0x05FB,
    0x05FC, 0x05FD, 0x05FE, 0x05FF, 0x0600, 0x0601, 0x0602, 0x0603,
    0x0604, 0x0605, 0x0606, 0x0607, 0x0608, 0x0609, 0x060A, 0x060B,
    0x060C, 0x060D, 0x060E, 0x060F, 0x0610, 0x0611, 0x0612, 0x0613,
    0x0614, 0x0615, 0x0616, 0x0617, 0x0618, 0x0619, 0x061A, 0x061B,
    0x061C, 0x061D, 0x061E, 0x061F, 0x0620, 0x0621, 0x0622, 0x0623,
    0x0624, 0x0625, 0x0626, 0x0627, 0x0628, 0x0629, 0x062A, 0x062B,
    0x062C, 0x062D, 0x062E, 0x062F, 0x0630, 0x0631, 0x0632, 0x0633,
    0x0634, 0x0635, 0x0636, 0x0637, 0x0638, 0x0639, 0x063A, 0x063B,
    0x063C, 0x063D, 0x063E, 0x063F, 0x0640, 0x0641, 0x0642, 0x0643,
    0x0644, 0x0645, 0x0646, 0x0647, 0x0648, 0x0649, 0x064A, 0x064B,
    0x064C, 0x064D, 0x064E, 0x064F, 0x0650, 0x0651, 0x0652, 0x0653,
    0x0654, 0x0655, 0x0656, 0x0657, 0x0658, 0x0659, 0x065A, 0x065B,
    0x065C, 0x065D, 0x065E, 0x065F, 0x0660, 0x0661, 0x0662, 0x0663,
    0x0664, 0x0665, 0x0666, 0x0667, 0x0668, 0x0669, 0x066A, 0x066B,
    0x066C, 0x066D, 0x066E, 0x0323, 0x0398, 0x0396, 0x0672, 0x0673,
    0x0674, 0x0675, 0x0676, 0x0677, 0x0678, 0x0679, 0x067A, 0x067B,
    0x067C, 0x067D, 0x067E, 0x067F, 0x0680, 0x0681, 0x0682, 0x0683,
    0x0684, 0x0685, 0x0686, 0x0687, 0x0670
    };
    u8 control_code[] = {2, 0};
    u16 text_id;

    if (a1 != 0) {
        sub_8F0F244();
        if (a1 == 0xFF) {
            text_id = gBattlerData[gUnknown_030036EC].fulldata + 0x514;
        } else {
            text_id = ids[a1] + 0x1F4;
        }
        if (gTextDelayAfterWriteCharacterEnabled != 0) {
            HandleTextWrapping();
        } else {
            gTextDelayAfterWriteCharacterEnabled = 1;
        }
        #ifdef JAPANESE
        DrawTextWithIdNoWait(text_id);
        #elif ENGLISH
        copy_battle_line_to_ram(text_id);
        #endif
        HandleControlCodes(control_code);
        sub_8F0E838(gGameInfo.PlayerInfo.Struct.battle_message_speed);
    }
}

void sub_8F0F244(void) {
    CopyName(gUnknown_03003700, &gUnknown_03003640);
    CopyName(gUnknown_030036EC, &gUnknown_03003610);
}

void CopyName(u8 a1, u8* a2) {
    u8 letter;
    u8* chosen_name;
    //if a1 < 4, get party member name
    if (a1 < 4) {
        chosen_name = gGameInfo.PlayerInfo.Struct.CharacterInfo[gBattlerData[a1].fulldata].Name;
    //else, get enemy name
    } else {
        chosen_name = (u8*) gUnknown_030034E8[gBattlerData[a1].fulldata + 0x5DC];
    }

    //seek to end of chosen_name
    while(*chosen_name != 0) {
        *a2 = *chosen_name;
        chosen_name++;
        a2++;
    }

    letter = gBattlerData[a1].enemy_letter & 0x1C;
    if (letter != 0) {
        //(letter >> 2) + ('A'-1)
        #ifdef JAPANESE
        *a2 = (letter >> 2) + 0xC0;
        a2++;
        #elif ENGLISH
        add_space_to_enemy_name(a2, (letter >> 2) + 0xC0);
        a2 += 2;
        #endif
    }
    *a2 = 0;
}


NAKED
s32 sub_8F0F2E8()
{
    asm(".include \"asm/non_matching/battle/sub_8F0F2E8.s\"");
}

NAKED
void sub_8F0F3B0()
{
    asm(".include \"asm/non_matching/battle/sub_8F0F3B0.s\"");
}

void sub_8F0F514(void) {
    void (*sp0[])(void) = {
    sub_8F0F560,
    sub_8F0F570,
    sub_8F0F734,
    sub_8F0F820,
    HandleBattleState,
    sub_8F0F940,
    sub_8F0FA90,
    sub_8F0FD24,
    sub_8F0FD44,
    sub_8F100A0,
    sub_8F100BC,
    sub_8F100F4,
    sub_8F0F890
    };
    do {
        gUnknown_03003604 = gBattleActionData[gUnknown_03003690] >> 4;
        sp0[gUnknown_03003604]();
    } while (gUnknown_03003604 != 0);
    gUnknown_03003604 = 0xFF;
}


void sub_8F0F560(void) {
    gUnknown_03003690++;
}

NAKED
void sub_8F0F570()
{
    asm(".include \"asm/non_matching/battle/sub_8F0F570.s\"");
}

NAKED
void sub_8F0F734()
{
    asm(".include \"asm/non_matching/battle/sub_8F0F734.s\"");
}

void sub_8F0F820(void) {
    u8 temp_r0 = gBattleActionData[gUnknown_03003690 + 1];
    off_30036F0 = (sItemData*) &gItemData[temp_r0];
    sub_8F11098(temp_r0);
    if ((gUnknown_03003700 < 4) && ((0xF & gBattleActionData[gUnknown_03003690]) == 1)) {
        sub_8F10398();
    }
    DrawBattleStatusTextById(0x63);
    sub_8F0E770(gUnknown_03003668);
    gUnknown_03003668 = 0;
    gUnknown_03003690 += 2;
}


NAKED
void sub_8F0F890()
{
    asm(".include \"asm/non_matching/battle/sub_8F0F890.s\"");
}

NAKED
void sub_8F0F940()
{
    asm(".include \"asm/non_matching/battle/sub_8F0F940.s\"");
}

NAKED
void sub_8F0FA90()
{
    asm(".include \"asm/non_matching/battle/sub_8F0FA90.s\"");
}

void sub_8F0FD24(void) {
    if (!sub_8F0FD64()) {
        sub_8F100C8();
        return;
    }
    gUnknown_03003690 += 3;
}

void sub_8F0FD44(void) {
    if (sub_8F0FD64() != 0) {
        sub_8F100C8();
        return;
    }
    gUnknown_03003690 += 3;
}


NAKED
u32 sub_8F0FD64()
{
    asm(".include \"asm/non_matching/battle/sub_8F0FD64.s\"");
}

void sub_8F10064(void) {
    u32 temp_r0 = gUnknown_0300365C - (0xFFFFFF00 | gUnknown_03003660);
    s32 var_r0 = ((s32) (temp_r0 + (temp_r0 >> 31)) >> 1) - 0x66;
    if (var_r0 < 0) {
        var_r0 = 0;
    }
    gUnknown_0300365C = var_r0;
    gUnknown_03003660 = Random() >> 24;
}

void sub_8F100A0(void) {
    u16 temp_r4 = gUnknown_03003690;
    sub_8F100C8();
    sub_8F0F514();
    gUnknown_03003690 = temp_r4 + 3;
}

void sub_8F100BC(void) {
    sub_8F100C8();
}

void sub_8F100C8(void) {
    const u8 *src = gBattleActionData;
    u16 offset = gUnknown_03003690;
    const u8 *p1 = src + (offset + 1);
    const u8 *p2 = src + (offset + 2);

    gUnknown_03003690 = ((*p2 << 8) | *p1) + 0x6805;
}

void sub_8F100F4(void) {
    u16 temp_r1;
    u16 temp_r6;
    u8 var_r4;

    var_r4 = 0xF & gBattleActionData[gUnknown_03003690];
    gUnknown_03003690++;
    temp_r6 = gUnknown_03003690;
    do {
        sub_8F0F514();
        temp_r1 = gUnknown_03003690;
        gUnknown_03003690 = temp_r6;
        var_r4--;
    } while (var_r4 > 0);
    gUnknown_03003690 = temp_r1;
}

s32 sub_8F10130(void) {
    u8 i;
    for (i = 4; i < 8; i++) {
        if ((i != gUnknown_03003700) && (1 & gBattlerData[i].m_status)) goto found;
    }
    return 0;
    found:
    gUnknown_030036EC = i;
    sub_8F1045C(gUnknown_030036EC);
    gBattlerData[gUnknown_030036EC].m_status &= 0xFE;
    gBattlerData[gUnknown_030036EC].action = 0;
    gBattlerData[gUnknown_030036EC].unk_0 = gBattlerData[gUnknown_03003700].unk_0;
    DrawBattleStatusTextById(0x42U);
    return 1;
}


s32 CanUsePsi(void) {
    if (gBattlerData[gUnknown_03003700].m_status & 0x40) {
        return 0;
    } else {
        return 1;
    }
}

s32 AttackerHasEnoughPP(void) {
    if (gBattlerData[gUnknown_03003700].curr_pp < gActionPpRequired) {
        return 0;
    } else {
        return 1;
    }
}

NAKED
void sub_8F101F4(u8 a1)
{
    asm(".include \"asm/non_matching/battle/sub_8F101F4.s\"");
}

void Maybe_WinBattle(u8 a1) {
    gBattlerData[a1].curr_hp = 0;
    gBattlerData[a1].status = 0x80;
    if (a1 > 3) {
        gBattlerData[a1].unk_0 = 0;
        gExperiencePointsGained += gEnemyData[gBattlerData[a1].fulldata].exp;
        gMoneyGained += gEnemyData[gBattlerData[a1].fulldata].money;
        if (gEnemyData[gBattlerData[a1].fulldata].item != 0) {
            gLastItemDropped = gEnemyData[gBattlerData[a1].fulldata].item;
        }
        PlayNoiseSfx(6);
        sub_8F10490(a1);
    } else {
        sub_8F0E770(0x15);
    }
    sub_8F0EA98();
}

void sub_8F10398(void) {
    sub_8F103C4(&gGameInfo.PlayerInfo.Struct.CharacterInfo[gBattlerData[gUnknown_03003700].fulldata].Inventory,
                gBattlerData[gUnknown_03003700].unk_19,
                gBattlerData[gUnknown_03003700].unk_1b);
}

void sub_8F103C4(u8* inventory, u8 start_pos, u8 item) {
    //key flag
    sItemData* this_item = &gItemData[item];
    if (this_item->Flags & 0x80) {
        return;
    }

    if (inventory[start_pos] != item) {
        for (start_pos = 0; start_pos < 8; start_pos++) {
            if (inventory[start_pos] == item) goto found;
        }
        return;
    }

found:
    //shift backwards 1
    while (start_pos < 7) {
        inventory[start_pos] = inventory[start_pos+1];
        start_pos++;
    }
    inventory[start_pos] = 0;
}


void sub_8F10420(u8 a1) {
    s8 letter;
    gMiscContainer = &gEnemyData[gBattlerData[a1].fulldata].unk_0;
    letter = gBattlerData[a1].enemy_letter;
    gUnknown_03003684 = letter & 3;
    gUnknown_030034F4 = (letter & 3) * 8;
}

void sub_8F1045C(u8 a1) {
    sub_8F10420(a1);
    gBattlerData[a1].status &= 0x7F;
    sub_8F0F014(a1, 1);
    sub_8F0EE8C(a1);
}

void sub_8F10490(u8 a1) {
    sub_8F10420(a1);
    gBattlerData[a1].unk_0 = 0;
    sub_8F0F014(a1, 0);
    sub_8F0EF4C(a1);
    gUnknown_030036C0[a1 - 4].unk0 = 0;
    DmaFill32(3, 0, ((3 & gBattlerData[a1].enemy_letter) << 11) + BG_VRAM+0xE000, 0x800)
}


void sub_8F104FC(u8 a1, u8 a2) {
    sub_8F0E770(2);
    sub_8F10420(gUnknown_030036EC);
    do {
        sub_8F0EF4C(gUnknown_030036EC);
        sub_8F0EA18(a1);
        sub_8F0E7F0();
        sub_8F0EE8C(gUnknown_030036EC);
        sub_8F0EA18(15);
        sub_8F0E7F0();
        a2--;
    } while (a2 > 0);
}

void sub_8F10548(u8 a1, u8* a2) {
    u8 temp_r7;
    u8 var_r1;
    u8 var_r4;

    sub_8F0E770(0x10);
    var_r1 = *a2++;
    temp_r7 = *a2++;
    do {
        var_r4 = 0;
        do {
            if (2 & var_r4) {
                sub_8F0EA18(a1);
            } else {
                sub_8F0EA18(0xF);
            }
            REG_BG0VOFS = (s8) a2[var_r4++];
            REG_BG0HOFS = (s8) a2[var_r4++];
            sub_8F0E7F0();
        } while(var_r4 < temp_r7);
        var_r1--;
    } while (var_r1 > 0);
    REG_BG0VOFS = var_r1;
    REG_BG0HOFS = var_r1;
    sub_8F0EA18(0xF);
}


NAKED
s32 sub_8F105E4()
{
    asm(".include \"asm/non_matching/battle/sub_8F105E4.s\"");
}

NAKED
void sub_8F10730()
{
    asm(".include \"asm/non_matching/battle/sub_8F10730.s\"");
}

NAKED
void sub_8F107D8()
{
    asm(".include \"asm/non_matching/battle/sub_8F107D8.s\"");
}

s32 sub_8F10B1C(u8 a1) {
    u8 shift;
    sub_8F10E6C();
    shift = a1 >> 3;
    if ((0x80 >> (a1 & 7)) & gMiscContainer[shift]) {
        gUnknown_03003688 = (sPsiData*) &gPsiData[a1];
        gBattlerData[gUnknown_03003700].action = gUnknown_03003688->ActionInBattle;
        gActionPpRequired = gUnknown_03003688->PPRequired;
        if ((AttackerHasEnoughPP()) && (CanUsePsi())) {
            return 0;
        }
    }
    return 1;
}


void sub_8F10B94(void) {
    sBattlerData* temp_r1;
    u32 temp_r2;

    do {
        do {
            temp_r2 = Random() >> 29;
            temp_r1 = &gBattlerData[temp_r2];
        } while (temp_r1->unk_0 == 0);
    } while (CONDITION_UNCONSCIOUS & temp_r1->status);
    gUnknown_030036EC = temp_r2;
}

s32 sub_8F10BC4(u8 a1, u8 a2) {
    if (gGameInfo.PlayerInfo.Struct.CharactersInParty[a1] == a2) {
        if ((gBattlerData[a1].unk_0 != 0) && !(CONDITION_UNCONSCIOUS & gBattlerData[a1].status)) {
            gUnknown_030036EC = a1;
            return 1;
        }
    }
    return 0;
}

const CURSOR_POSITION gUnknown_08F6700C[] = {
{0x0001, 0x0B, 0x15},
{0x0002, 0x14, 0x15},
{0x0003, 0x0B, 0x16},
{0x0004, 0x14, 0x16},
{0x0005, 0x0B, 0x17},
{0x0006, 0x14, 0x17},
{0x0007, 0x0B, 0x18},
{0x0008, 0x14, 0x18},
{0x0000, 0x00, 0x00}
};

const CURSOR_POSITION gUnknown_08F67030[] = {
{0x0001, 0x0B, 0x15},
{0x0000, 0x00, 0x00}
};

const CURSOR_POSITION gUnknown_08F67038[] = {
{0x0001, 0x0B, 0x15},
{0x0002, 0x14, 0x15},
{0x0003, 0x0B, 0x16},
{0x0004, 0x14, 0x16},
{0x0005, 0x0B, 0x17},
{0x0009, 0x14, 0x17},
{0x0007, 0x0B, 0x18},
{0x0008, 0x14, 0x18},
{0x0000, 0x00, 0x00}
};

NAKED
s32 sub_8F10C08()
{
    asm(".include \"asm/non_matching/battle/sub_8F10C08.s\"");
}

//?????
void sub_8F10E6C(void) {
    gMiscContainer = (u8*) &gGameInfo.PlayerInfo.Struct.CharacterInfo[
        gBattlerData[gUnknown_03003700].fulldata].PsiLearned;
}

s32 sub_8F10E94(u8 a1) {
    s32 temp_r0;
    s32 var_r1;

    temp_r0 = sub_8F11230(a1);
    if (temp_r0 == 0) {
        return 0;
    }
    var_r1 = 0;
    if (temp_r0 == 2) {
        var_r1 = 4;
    }
    gUnknown_030036EC = var_r1 ^ (4 & gUnknown_03003700);
    temp_r0 = sub_8F10EEC();
    if (temp_r0 < 0) {
        return 1;
    } else {
        gUnknown_030036EC = temp_r0 - 1;
        gBattlerData[gUnknown_03003700].target = gUnknown_030036EC;
        return 0;
    }
}


NAKED
s32 sub_8F10EEC()
{
    asm(".include \"asm/non_matching/battle/sub_8F10EEC.s\"");
}

NAKED
s32 sub_8F10F9C()
{
    asm(".include \"asm/non_matching/battle/sub_8F10F9C.s\"");
}

void sub_8F11098(u8 a1) {
    const u8* var_r0 = gUnknown_030034E8[a1+0x3E8];
    u8* var_r2 = &gUnknown_030036A0;
    while(*var_r0 != 0) {
        *var_r2 = *var_r0;
        var_r0++;
        var_r2++;
    }
    *var_r2 = 0;
}

NAKED
s32 sub_8F110CC()
{
    asm(".include \"asm/non_matching/battle/sub_8F110CC.s\"");
}

s32 sub_8F11230(u8 a1) {
    u8 sp0[] = {
    0x2A, 0xAA, 0x00, 0xA2, 0x0A, 0x22, 0x81, 0x11,
    0x4A, 0x20, 0x15, 0x04, 0xA0, 0x89, 0x40, 0xAA,
    0xA8, 0xA2, 0x02, 0x00, 0x20, 0x02, 0x01, 0x01,
    0x89, 0x58, 0x28, 0xAA, 0x15, 0x54, 0xA5, 0x40,
    0x80, 0x44, 0x00
    };

    return (sp0[a1 >> 2] >> (6 - ((a1 & 3) * 2))) & 3;
}

s32 sub_8F11268(u8 characterId) {
    if (off_30036F0->Flags & gCanEquipItemMask[gBattlerData[characterId].fulldata+1]) {
        return 0;
    }
    return 1;
}

NAKED
void HandleBattleState()
{
    asm(".include \"asm/non_matching/battle/HandleBattleState.s\"");
}

void sub_8F11C34(void) {
    if (gBattlerData[gUnknown_030036EC].unk_0 != 0) {
        gBattlerData[gUnknown_030036EC].status = 0;
        gActionPpRequired = 0xFFFF;
        sub_8F11F10(gUnknown_030036EC, 2);
        DrawBattleStatusTextByIdWithSfx(0xA, 0);
        sub_8F0E838(0x14);
    }
}

void DrawBattleStatusTextByIdWithSfx(u8 a1, u8 a2) {
    if (a1 != 0) {
        sub_8F0E770(a1);
    }
    sub_8F0EA98();
    DrawBattleStatusTextById(a2);
}

s32 InflictStatusDuringBattle(u8 a1, u8 a2, u8 a3) {
    gUnknown_03003668 = a2;
    if (a1 & gBattlerData[gUnknown_030036EC].status) {
        DrawBattleStatusTextById(0x55);
        return 1;
    } else {
        gBattlerData[gUnknown_030036EC].status |= a1;
        DrawBattleStatusTextByIdWithSfx(a2, a3);
        return 0;
    }
}

s32 InflictStatus2DuringBattle(u8 a1, u8 a2, u8 a3) {
    gUnknown_03003668 = a2;
    if (a1 & gBattlerData[gUnknown_030036EC].m_status) {
        DrawBattleStatusTextById(0x55U);
        return 1;
    } else {
        gBattlerData[gUnknown_030036EC].m_status |= a1;
        DrawBattleStatusTextByIdWithSfx(a2, a3);
        return 0;
    }
}


s32 RemoveStatusDuringBattle(u8 a1, u8 a2, u8 a3) {
    gUnknown_03003668 = a2;
    if (!(a1 & gBattlerData[gUnknown_030036EC].status)) {
        DrawBattleStatusTextById(0x55U);
        return 1;
    } else {
        gBattlerData[gUnknown_030036EC].status &= ~a1;
        DrawBattleStatusTextByIdWithSfx(a2, a3);
        return 0;
    }
}

s32 RemoveStatus2DuringBattle(u8 a1, u8 a2, u8 a3) {
    gUnknown_03003668 = a2;
    if (!(a1 & gBattlerData[gUnknown_030036EC].m_status)) {
        DrawBattleStatusTextById(0x55U);
        return 1;
    } else {
        gBattlerData[gUnknown_030036EC].m_status &= ~a1;
        DrawBattleStatusTextByIdWithSfx(a2, a3);
        return 0;
    }
}

void sub_8F11DF0(void) {
    gActionPpRequired = sub_8F0E8DC(gActionPpRequired);
}

void sub_8F11E08(u8 a1, u8 a2) {
    s32 var_r2;
    u32 var_r1;
    u8 pp;

    pp = *(((u8*) &gBattlerData[a1]) + a2);
    if (a1 < 4) {
        var_r1 = (u8) sub_8F12074(a1, a2) << 1;
    } else {
        var_r1 = *(((u8*) &gEnemyData[gBattlerData[a1].fulldata]) + a2) * 2;
    }
    var_r2 = gActionPpRequired + pp;
    if (var_r2 > 0xFF) {
        var_r2 = 0xFF;
    }
    if (var_r2 > (s32) var_r1) {
        var_r2 = (s32) var_r1;
    }
    *(((u8*) &gBattlerData[a1]) + a2) = var_r2;
    gUnknown_03003708 = (u8) (var_r2 - pp);
}

void sub_8F11E80(u8 a1, u8 a2) {
    u32 var_r3;
    u16 pp;
    u32 var_r2;

    pp = *(((u16*) &gBattlerData[a1]) + (a2 >> 1));
    if (a1 < 4) {
        var_r2 = sub_8F12074(a1, a2) * 2;
    } else {
        var_r2 = (*(((u16*) &gEnemyData[gBattlerData[a1].fulldata]) + (a2 >> 1)) & 0x3FF) << 1;
    }
    var_r3 = gActionPpRequired + pp;
    if ((s32) var_r3 > 0xFFFF) {
        var_r3 = 0xFFFF;
    }
    if (var_r3 > var_r2) {
        var_r3 = var_r2;
    }
    *(((u16*) &gBattlerData[a1]) + (a2 >> 1)) = (s16) var_r3;
    gUnknown_03003708 = (u16) (var_r3 - pp);
}


void sub_8F11F10(u8 a1, u8 a2) {
    s32 var_r3;
    u16 pp;
    u16 var_r2;

    pp = *(((u16*) &gBattlerData[a1]) + (a2 >> 1));
    if (a1 < 4) {
        var_r2 = sub_8F12074(a1, a2);
    } else {
        var_r2 = *(((u16*) &gEnemyData[gBattlerData[a1].fulldata]) + (a2 >> 1)) & 0x3FF;
    }
    var_r3 = gActionPpRequired + pp;
    if (var_r3 > (s32) var_r2) {
        var_r3 = (s32) var_r2;
    }
    *(((u16*) &gBattlerData[a1]) + (a2 >> 1)) = (s16) var_r3;
    gUnknown_03003708 = (u16) (var_r3 - pp);
}


void sub_8F11F90(u8 a1, u8 a2) {
    s32 remaining;
    u8 old_pp;
    //???? this sucks
    old_pp = *(((u8*) &gBattlerData[a1]) + a2);
    remaining = old_pp - gActionPpRequired;
    if (remaining < 0) {
        remaining = 0;
    }
    *(((u8*) &gBattlerData[a1]) + a2) = remaining;
    gUnknown_03003708 = (u8) (old_pp - remaining);
}


void sub_8F11FC8(u8 a1, u8 a2) {
    s32 var_r0;
    u16 temp_r0;

    temp_r0 = *((u16*) &gBattlerData[a1] + (a2 >> 1));
    var_r0 = temp_r0 - gActionPpRequired;
    if (var_r0 < 0) {
        var_r0 = 0;
    }
    *((u16*) &gBattlerData[a1] + (a2 >> 1)) = var_r0;
    gUnknown_03003708 = (u16) (temp_r0 - var_r0);
}

void sub_8F12000(u8 a1, u8 a2) {
    //what does this access
    gActionPpRequired = sub_8F0E8DC(*((u16*) &gBattlerData[a1] + (a2 >> 1)));
    sub_8F11E80(a1, a2);
}

void sub_8F12038(u8 a1, u8 a2) {
    //what does this access
    gActionPpRequired = sub_8F0E8DC(*((u16*) &gBattlerData[a1] + (a2 >> 1)) >> 1);
    sub_8F11FC8(a1, a2);
}

NAKED
u16 sub_8F12074(u8 a1, u8 a2)
{
    asm(".include \"asm/non_matching/battle/sub_8F12074.s\"");
}

s32 sub_8F12198(void) {
    return sub_8F12228(gBattlerData[gUnknown_03003700].wisdom, gBattlerData[gUnknown_030036EC].strength);
}

s32 sub_8F121C4(void)
{
    return sub_8F12228(gBattlerData[gUnknown_03003700].wisdom, gBattlerData[gUnknown_030036EC].force);
}

void sub_8F121F0(u8 a1) {
    if (gBattlerData[a1].resistances & gUnknown_03003654) {
        gActionPpRequired >>= 1;
        if (gActionPpRequired == 0) {
            gActionPpRequired = 1;
        }
    }
    gUnknown_03003654 = 0;
}

s32 sub_8F12228(u8 a1, u8 a2) {
    s32 var_r4;
    u8 temp_r2 = a1;
    var_r4 = a1 - (a2 >> 1);
    if (var_r4 < 0) {
        var_r4 = 0;
    }
    var_r4 = (var_r4 << 8) / temp_r2;
    if (Random() >> 24 < var_r4) {
        return 0;
    }
    return 1;
}

s32 sub_8F1225C(u8 a1) {
    u8 *inventory = gGameInfo.PlayerInfo.Struct.CharacterInfo[gBattlerData[a1].fulldata].Inventory;
    for (gBattleItemInventoryIdx = 0; gBattleItemInventoryIdx < 8; gBattleItemInventoryIdx++){
        gBattleItemId = inventory[gBattleItemInventoryIdx];
        if (gBattleItemId) {
            off_30036F0 = (sItemData*) &gItemData[gBattleItemId];
            gUnknown_03003694 = off_30036F0->ItemActionInBattle;
            if (0x40 & off_30036F0->Flags) {
                return 0;
            }
        }
    }
    return 1;
}

s32 sub_8F122DC(void) {
    if (gUnknown_030036EC > 3 && gEnemyGroupSpecialEncounter > 1) {
        return 1;
    } else {
        return 0;
    }
}

s32 sub_8F122FC(void) {
    if (gEnemyGroupSpecialEncounter > 1) {
        return 1;
    } else {
        return 0;
    }
}

s32 sub_8F12310(void) {
    if (gUnknown_030036EC < 4 && gBattlerData[gUnknown_030036EC].fulldata == 5) {
        return 1;
    } else {
        return 0;
    }
}

void sub_8F12338(void) {
    s32 i;
    sub_8F016EC();
    for (i = 0; i <= 4; i++){
        if (i <= 3) {
            gUnknown_030007B8 = 0x4900;
        } else {
            gUnknown_030007B8 = 0x4100;
        }
        if (gUnknown_030036C0[i].unk0 != 0) {
            sub_8F01700(gUnknown_030036C0[i].unk2, gUnknown_030036C0[i].unk1,
                        gUnknown_030036C0[i].unk4, gUnknown_030036C0[i].unk6);
        }
    }
    gUnknown_030007B8 = 0x800;
    sub_8F0191C();
}

NAKED
void sub_8F1239C()
{
    asm(".include \"asm/non_matching/battle/sub_8F1239C.s\"");
}

NAKED
void sub_8F124F0()
{
    asm(".include \"asm/non_matching/battle/sub_8F124F0.s\"");
}

//cap to 8 bit integer limit
void sub_8F12A0C(u8* a1, u8 a2, u8 a3) {
    s16 var_r2;
    u32 temp_r5;
    u16 temp_r0;

    temp_r5 = *a1;
    var_r2 = temp_r5 + ((Random() >> 30) + a2) / 2;
    if (var_r2 > 0xFF) {
        var_r2 = 0xFF;
    }
    gUnknown_03003708 = temp_r0 = var_r2 - temp_r5;
    if (temp_r0 != 0) {
        *a1 = var_r2;
        DrawBattleStatusTextById(a3);
    }
}

//cap to 16 bit 999 limit
void sub_8F12A50(u16* a1, u16 a2, u8 a3) {
    s32 var_r3;
    u16 temp_r0_2;
    var_r3 = *a1 + a2;
    if (var_r3 > 999) {
        var_r3 = 999;
    }
    gUnknown_03003708 = temp_r0_2 = var_r3 - *a1;
    if (temp_r0_2 != 0) {
        *a1 = (u16) var_r3;
        DrawBattleStatusTextById(a3);
    }
}

void GainMoney(u8* a1, u16 a2) {
    //this sucks less
    s32 var_r1 = (a1[0] + (a1[1] << 8) + (a1[2] << 16)) + a2;
    //cap to 24 bit integer limit
    if (var_r1 > 0xFFFFFF) {
        var_r1 = 0xFFFFFF;
    }
    //re-set to u8[3]
    a1[0] = var_r1;
    a1[1] = var_r1 >> 8;
    a1[2] = var_r1 >> 16;
}

//scroll up
void sub_8F12AC0(void) {
    u16 vofs, scroll_count;
    for (vofs = 4; vofs <= 48; vofs += 4){
        for (scroll_count = 0; scroll_count < 5; scroll_count++){
            gUnknown_030036C0[scroll_count].unk6 -= 4;
        }
        sub_8F0E7F0();
        REG_BG0VOFS = vofs;
        REG_BG1VOFS = vofs;
        REG_BG3VOFS = vofs;
    }
}

//scroll down
void sub_8F12B04(void) {
    u16 vofs, scroll_count;
    for (vofs = 44; (s16)vofs >= 0; vofs -= 4){
        for (scroll_count = 0; scroll_count < 5; scroll_count++){
            gUnknown_030036C0[scroll_count].unk6 += 4;
        }
        sub_8F0E7F0();
        REG_BG0VOFS = vofs;
        REG_BG1VOFS = vofs;
        REG_BG3VOFS = vofs;
    }
}

void sub_8F12B48(u8 a1) {
    sCharacterStatusInfo* character;
    s32 i;
    for (i = 0; i < 4; i++){
        if (gBattlerData[i].unk_0 != 0) {
            character = &gGameInfo.PlayerInfo.Struct.CharacterInfo[gBattlerData[i].fulldata];
            character->Condition = a1 & gBattlerData[i].status;
            if (character->Condition & CONDITION_UNCONSCIOUS) {
                character->CurrentHP = 0;
            } else {
                character->CurrentHP = gBattlerData[i].curr_hp;
            }
            character->CurrentPP = gBattlerData[i].curr_pp;
        }
    }
    sub_8F12B9C();
}

void sub_8F12B9C(void) {
    sTextState sp0;

    SaveTextSystemState(&sp0);
    gTextPlaySfx = 0;
    DrawPartyInfoWindow();
    LoadTextSystemState(&sp0);
    sub_8F0E7F0();
}

extern CURSOR_POSITION gUnknown_08F662EC[];
void sub_8F12BC4(void) {
    s32 sp0, temp_r0;
    for(sp0 = 0; sp0 < 4; sp0++){
         if (gUnknown_08F662EC[sp0].character <= gGameInfo.PlayerInfo.Struct.battle_message_speed){
             break;
         }
    }
    sub_8F0EA64(21);
    temp_r0 = HandleSelectMenuInput(&gUnknown_08F662EC[0].character, &sp0);
    if (temp_r0 > 0) {
        gGameInfo.PlayerInfo.Struct.battle_message_speed = temp_r0;
    }
}

//return all (health+(defense/2)) for each enemy in a battle
s32 sub_8F12C1C(u32 id) {
    s32 var_r3;
    u8 enemy_id;
    u8 i;

    gBattleEnemyGroupId = id;
    SetupEnemyGroups();
    var_r3 = 0;
    for(i = 0; i < 8; i += 2){
        enemy_id = gMiscContainer[i];
        if (enemy_id != 0xFF) {
            //get health
            var_r3 += 0x3FF & gEnemyData[enemy_id].hp_palette_tilemap;
            //get defense / 2
            var_r3 += (0x3FF & gEnemyData[enemy_id].defense_defeatMsg_unk) / 2;
        }
    }
    return var_r3;
}

