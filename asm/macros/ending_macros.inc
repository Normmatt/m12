.macro ENDING_CMD_00_END
	.byte 0x00
.endm

.macro ENDING_CMD_01_DELAY frames
	.byte 0x01
	.byte \frames
.endm

.macro ENDING_CMD_02 arg1
	.byte 0x02
	.byte \arg1
.endm

.macro ENDING_CMD_03_FADEOUT
	.byte 0x03
.endm

.macro ENDING_CMD_04_LOADTILESETS arg1, arg2, arg3, arg4
	.byte 0x04
	.byte \arg1
	.byte \arg2
	.byte \arg3
	.byte \arg4
.endm

.macro ENDING_CMD_05_LOADBG2MAP arg1, arg2, arg3
	.byte 0x05
	.byte \arg1 & 0xFF
	.byte (\arg1 >> 8) & 0xFF
	.byte \arg2
	.byte \arg3
.endm

.macro ENDING_CMD_06_SETMETATILEPROPERTIES arg1, arg2, arg3
	.byte 0x06
	.byte \arg1 & 0xFF
	.byte (\arg1 >> 8) & 0xFF
	.byte \arg2
	.byte \arg3
.endm

.macro ENDING_CMD_07_SETPAL arg1:vararg
	.byte 0x07
	.byte \arg1
.endm

.macro ENDING_CMD_08 arg1, arg2
	.byte 0x08
	.byte \arg1
	.byte \arg2
.endm

.macro ENDING_CMD_09_INITSPRITE id, unk, x, y, unk2
	.byte 0x09
	.byte \id
	.byte \unk
	.byte \x
	.byte \y
	.byte \unk2 & 0xFF
	.byte (\unk2 >> 8) & 0xFF
.endm

.macro ENDING_CMD_0A_MOVESPRITE id, arg2, arg3, arg4
	.byte 0x0A
	.byte \id
	.byte \arg2 & 0xFF
	.byte (\arg2 >> 8) & 0xFF
	.byte \arg3
	.byte \arg4
.endm

.macro ENDING_CMD_0B_PLAYSFX arg1
	.byte 0x0B
	.byte \arg1
.endm

.macro ENDING_CMD_0C_LOADSECONDARYSPRITETILES arg1
	.byte 0x0C
	.byte \arg1
.endm

.macro ENDING_CMD_0D_SETALLTILESETS arg1:vararg
	.byte 0x0D
	.byte \arg1
.endm

.macro ENDING_CMD_0E_BEGINLOOP iterations
	.byte 0x0E
	.byte \iterations
.endm

.macro ENDING_CMD_0F_ENDLOOP
	.byte 0x0F
	.byte 0x00
	.byte 0x00
.endm

.macro ENDING_CMD_10 arg1
	.byte 0x10
	.byte \arg1
.endm

.macro ENDING_CMD_11_DRAWTEXT stringId
	.byte 0x11
	.byte \stringId & 0xFF
	.byte (\stringId >> 8) & 0xFF
.endm

.macro ENDING_CMD_12_DRAWTEXTXY stringId, x, y
	.byte 0x12
	.byte \stringId & 0xFF
	.byte (\stringId >> 8) & 0xFF
	.byte \x
	.byte \y
.endm

.macro ENDING_CMD_13_FADEIN
	.byte 0x13
.endm
