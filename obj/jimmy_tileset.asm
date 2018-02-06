;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (CYGWIN)
;--------------------------------------------------------
	.module jimmy_tileset
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pre_jimmy_tileset_10
	.globl _pre_jimmy_tileset_09
	.globl _pre_jimmy_tileset_08
	.globl _pre_jimmy_tileset_07
	.globl _pre_jimmy_tileset_06
	.globl _pre_jimmy_tileset_05
	.globl _pre_jimmy_tileset_04
	.globl _pre_jimmy_tileset_03
	.globl _pre_jimmy_tileset_02
	.globl _pre_jimmy_tileset_01
	.globl _pre_jimmy_tileset_00
	.globl _pre_palette
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
_pre_palette:
	.db #0x54	; 84	'T'
	.db #0x44	; 68	'D'
	.db #0x55	; 85	'U'
	.db #0x5C	; 92
	.db #0x4C	; 76	'L'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x5E	; 94
	.db #0x40	; 64
	.db #0x4E	; 78	'N'
	.db #0x47	; 71	'G'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x4A	; 74	'J'
	.db #0x43	; 67	'C'
	.db #0x4B	; 75	'K'
_pre_jimmy_tileset_00:
	.db #0x54	; 84	'T'
	.db #0xCC	; 204
	.db #0xDC	; 220
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xDC	; 220
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xDC	; 220
	.db #0xCC	; 204
	.db #0xDC	; 220
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xF5	; 245
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0xEC	; 236
	.db #0xF7	; 247
	.db #0xF5	; 245
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0xD9	; 217
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0xF3	; 243
	.db #0x3F	; 63
	.db #0x6E	; 110	'n'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xBD	; 189
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0x2B	; 43
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x17	; 23
	.db #0x2B	; 43
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xC3	; 195
	.db #0x01	; 1
	.db #0x02	; 2
_pre_jimmy_tileset_01:
	.db #0x54	; 84	'T'
	.db #0xCC	; 204
	.db #0xDC	; 220
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xDC	; 220
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xDC	; 220
	.db #0xCC	; 204
	.db #0xDC	; 220
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xF7	; 247
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0xEC	; 236
	.db #0xFA	; 250
	.db #0x7F	; 127
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0xF3	; 243
	.db #0x3F	; 63
	.db #0x9D	; 157
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0xF3	; 243
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x2B	; 43
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0x6E	; 110	'n'
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x44	; 68	'D'
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0xC3	; 195
	.db #0x01	; 1
	.db #0x02	; 2
_pre_jimmy_tileset_02:
	.db #0x00	; 0
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xF1	; 241
	.db #0xFA	; 250
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xDD	; 221
	.db #0xB5	; 181
	.db #0xFA	; 250
	.db #0x00	; 0
	.db #0xD9	; 217
	.db #0xB7	; 183
	.db #0x6E	; 110	'n'
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x51	; 81	'Q'
	.db #0xB7	; 183
	.db #0x3F	; 63
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7E	; 126
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x2B	; 43
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0x6E	; 110	'n'
	.db #0x02	; 2
	.db #0x41	; 65	'A'
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x44	; 68	'D'
	.db #0x02	; 2
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x83	; 131
	.db #0x02	; 2
_pre_jimmy_tileset_03:
	.db #0x00	; 0
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xF1	; 241
	.db #0xFA	; 250
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xDD	; 221
	.db #0xB5	; 181
	.db #0xFA	; 250
	.db #0x00	; 0
	.db #0xD9	; 217
	.db #0xB7	; 183
	.db #0x6E	; 110	'n'
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x51	; 81	'Q'
	.db #0xB7	; 183
	.db #0x3F	; 63
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7E	; 126
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xCC	; 204
	.db #0x15	; 21
	.db #0x2B	; 43
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xCC	; 204
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0x6E	; 110	'n'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x82	; 130
	.db #0x00	; 0
_pre_jimmy_tileset_04:
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xD9	; 217
	.db #0xBF	; 191
	.db #0xFB	; 251
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xB7	; 183
	.db #0xB5	; 181
	.db #0xB5	; 181
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x6E	; 110	'n'
	.db #0x3F	; 63
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x7E	; 126
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x56	; 86	'V'
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x00	; 0
_pre_jimmy_tileset_05:
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xD9	; 217
	.db #0xBF	; 191
	.db #0xFB	; 251
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xB7	; 183
	.db #0xB5	; 181
	.db #0xB5	; 181
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x6E	; 110	'n'
	.db #0x3F	; 63
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x7E	; 126
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x56	; 86	'V'
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x00	; 0
_pre_jimmy_tileset_06:
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xD9	; 217
	.db #0xBF	; 191
	.db #0xFB	; 251
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xB7	; 183
	.db #0xB5	; 181
	.db #0xB5	; 181
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x6E	; 110	'n'
	.db #0x3F	; 63
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x7E	; 126
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x56	; 86	'V'
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
_pre_jimmy_tileset_07:
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xD9	; 217
	.db #0xBF	; 191
	.db #0xFB	; 251
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xB7	; 183
	.db #0xB5	; 181
	.db #0xB5	; 181
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x6E	; 110	'n'
	.db #0x3F	; 63
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x7E	; 126
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x56	; 86	'V'
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xCC	; 204
	.db #0x17	; 23
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x00	; 0
_pre_jimmy_tileset_08:
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0xDC	; 220
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xE6	; 230
	.db #0xDC	; 220
	.db #0xCC	; 204
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0xF3	; 243
	.db #0xCC	; 204
	.db #0xD9	; 217
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xF3	; 243
	.db #0xE6	; 230
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x7E	; 126
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x00	; 0
_pre_jimmy_tileset_09:
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0xDC	; 220
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xE6	; 230
	.db #0xDC	; 220
	.db #0xCC	; 204
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0xF3	; 243
	.db #0xCC	; 204
	.db #0xD9	; 217
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xF3	; 243
	.db #0xE6	; 230
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x7E	; 126
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x00	; 0
_pre_jimmy_tileset_10:
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCC	; 204
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xEC	; 236
	.db #0xCC	; 204
	.db #0xDC	; 220
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xE6	; 230
	.db #0xDC	; 220
	.db #0xCC	; 204
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0xF3	; 243
	.db #0xCC	; 204
	.db #0xD9	; 217
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xF3	; 243
	.db #0xE6	; 230
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x7E	; 126
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0xFC	; 252
	.db #0xBD	; 189
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)