.syntax unified
.section .text
@	thumb_func_start SaveTextSystemState
@SaveTextSystemState: @ 0x08F0BFB0
	ldr r1, _08F0BFE4 @ =gTextX
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r1, _08F0BFE8 @ =gTextY
	ldrb r1, [r1]
	strb r1, [r0, #1]
	ldr r1, _08F0BFEC @ =gTextOriginX
	ldrb r1, [r1]
	strb r1, [r0, #2]
	ldr r1, _08F0BFF0 @ =gTextOriginY
	ldrb r1, [r1]
	strb r1, [r0, #3]
	ldr r1, _08F0BFF4 @ =gTextDelayAfterWriteCharacterEnabled
	ldrb r1, [r1]
	strb r1, [r0, #4]
	ldr r1, _08F0BFF8 @ =gTextMaxCharsPerLine
	ldrb r1, [r1]
	strb r1, [r0, #5]
	ldr r1, _08F0BFFC @ =gTextMaxLines
	ldrb r1, [r1]
	strb r1, [r0, #6]
	ldr r1, _08F0C000 @ =gTextNonEnglishCapitalLetter
	ldrb r1, [r1]
	strb r1, [r0, #7]
	bx lr
	.align 2, 0
_08F0BFE4: .4byte gTextX
_08F0BFE8: .4byte gTextY
_08F0BFEC: .4byte gTextOriginX
_08F0BFF0: .4byte gTextOriginY
_08F0BFF4: .4byte gTextDelayAfterWriteCharacterEnabled
_08F0BFF8: .4byte gTextMaxCharsPerLine
_08F0BFFC: .4byte gTextMaxLines
_08F0C000: .4byte gTextNonEnglishCapitalLetter

.syntax divided
