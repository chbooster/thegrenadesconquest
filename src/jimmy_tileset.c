#include "jimmy_tileset.h"
// Data created with Img2CPC - (c) Retroworks - 2007-2015
// Palette uses hardware values.
const u8 pre_palette[16] = { 0x54, 0x44, 0x55, 0x5c, 0x4c, 0x56, 0x57, 0x5e, 0x40, 0x4e, 0x47, 0x52, 0x53, 0x4a, 0x43, 0x4b };

// Tile pre_jimmy_tileset_00: 10x14 pixels, 5x14 bytes.
const u8 pre_jimmy_tileset_00[5 * 14] = {
	0x54, 0xcc, 0xdc, 0x00, 0x00,
	0xcc, 0xdc, 0xcc, 0x88, 0x00,
	0xdc, 0xcc, 0xdc, 0xa2, 0x00,
	0xcc, 0xcc, 0xf5, 0xa0, 0x00,
	0xec, 0xf7, 0xf5, 0xa0, 0x00,
	0xd9, 0x3f, 0x3f, 0x2a, 0x00,
	0xf3, 0x3f, 0x6e, 0x00, 0x00,
	0x00, 0x15, 0xa8, 0x00, 0x00,
	0x00, 0x41, 0xbd, 0x01, 0x00,
	0x03, 0x17, 0x03, 0x03, 0x03,
	0x03, 0x17, 0x2b, 0x03, 0x03,
	0x00, 0x01, 0x17, 0x2b, 0x02,
	0x00, 0x01, 0x02, 0x01, 0x02,
	0x00, 0x41, 0xc3, 0x01, 0x02
};

// Tile pre_jimmy_tileset_01: 10x14 pixels, 5x14 bytes.
const u8 pre_jimmy_tileset_01[5 * 14] = {
	0x54, 0xcc, 0xdc, 0x00, 0x00,
	0xcc, 0xdc, 0xcc, 0x88, 0x00,
	0xdc, 0xcc, 0xdc, 0x88, 0x00,
	0xcc, 0xd8, 0xf7, 0xa0, 0x00,
	0xec, 0xfa, 0x7f, 0xa0, 0x00,
	0xf3, 0x3f, 0x9d, 0x2a, 0x00,
	0xf3, 0x3f, 0x3f, 0x00, 0x00,
	0x15, 0xfc, 0xa8, 0x00, 0x00,
	0x41, 0xfc, 0xbd, 0x01, 0x00,
	0x15, 0x03, 0x03, 0x03, 0x03,
	0x15, 0x2b, 0x03, 0x03, 0x03,
	0x01, 0x03, 0x17, 0x6e, 0x02,
	0x00, 0x02, 0x02, 0x44, 0x02,
	0x00, 0x82, 0xc3, 0x01, 0x02
};

// Tile pre_jimmy_tileset_02: 10x14 pixels, 5x14 bytes.
const u8 pre_jimmy_tileset_02[5 * 14] = {
	0x00, 0xec, 0xcc, 0xa8, 0x00,
	0x44, 0xcc, 0xec, 0xcc, 0x00,
	0x44, 0xec, 0xcc, 0xec, 0x00,
	0x44, 0xcc, 0xf1, 0xfa, 0x00,
	0x54, 0xdd, 0xb5, 0xfa, 0x00,
	0xd9, 0xb7, 0x6e, 0x3f, 0x00,
	0x51, 0xb7, 0x3f, 0x2a, 0x00,
	0x00, 0x7e, 0xbd, 0x00, 0x00,
	0x41, 0xfc, 0xbd, 0x01, 0x00,
	0x15, 0x03, 0x03, 0x03, 0x03,
	0x15, 0x2b, 0x03, 0x03, 0x03,
	0x00, 0x03, 0x17, 0x6e, 0x02,
	0x41, 0x02, 0x01, 0x44, 0x02,
	0x41, 0x00, 0x41, 0x83, 0x02
};

// Tile pre_jimmy_tileset_03: 10x14 pixels, 5x14 bytes.
const u8 pre_jimmy_tileset_03[5 * 14] = {
	0x00, 0xec, 0xcc, 0xa8, 0x00,
	0x44, 0xcc, 0xec, 0xcc, 0x00,
	0x44, 0xec, 0xcc, 0xec, 0x00,
	0x44, 0xcc, 0xf1, 0xfa, 0x00,
	0x54, 0xdd, 0xb5, 0xfa, 0x00,
	0xd9, 0xb7, 0x6e, 0x3f, 0x00,
	0x51, 0xb7, 0x3f, 0x2a, 0x00,
	0x00, 0x7e, 0xbd, 0x00, 0x00,
	0x41, 0xfc, 0xbd, 0x01, 0x00,
	0x15, 0x03, 0x03, 0x03, 0xcc,
	0x15, 0x2b, 0x03, 0x03, 0xcc,
	0x00, 0x03, 0x17, 0x6e, 0x00,
	0x41, 0x02, 0x01, 0x44, 0x00,
	0x41, 0x00, 0x41, 0x82, 0x00
};

// Tile pre_jimmy_tileset_04: 10x14 pixels, 5x14 bytes.
const u8 pre_jimmy_tileset_04[5 * 14] = {
	0x00, 0x44, 0xcc, 0xec, 0x00,
	0x00, 0xcc, 0xec, 0xcc, 0x88,
	0x00, 0xd9, 0xbf, 0xfb, 0x88,
	0x00, 0xb7, 0xb5, 0xb5, 0xa2,
	0x00, 0x3f, 0x6e, 0x3f, 0x2a,
	0x00, 0x15, 0x3f, 0x3f, 0x00,
	0x00, 0x00, 0xfc, 0xa8, 0x00,
	0x15, 0x7e, 0xfc, 0xfc, 0x00,
	0x15, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0x56, 0xbd, 0x00,
	0x01, 0x03, 0x17, 0x3f, 0x00,
	0x01, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x82, 0x82, 0x00
};

// Tile pre_jimmy_tileset_05: 10x14 pixels, 5x14 bytes.
const u8 pre_jimmy_tileset_05[5 * 14] = {
	0x00, 0x44, 0xcc, 0xec, 0x00,
	0x00, 0xcc, 0xec, 0xcc, 0x88,
	0x00, 0xd9, 0xbf, 0xfb, 0x88,
	0x00, 0xb7, 0xb5, 0xb5, 0xa2,
	0x00, 0x3f, 0x6e, 0x3f, 0x2a,
	0x00, 0x15, 0x3f, 0x3f, 0x00,
	0x00, 0x00, 0xfc, 0xa8, 0x00,
	0x15, 0x7e, 0xfc, 0xfc, 0x00,
	0x15, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0x56, 0xbd, 0x00,
	0x01, 0x03, 0x17, 0x3f, 0x00,
	0x01, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x00, 0x82, 0x00
};

// Tile pre_jimmy_tileset_06: 10x14 pixels, 5x14 bytes.
const u8 pre_jimmy_tileset_06[5 * 14] = {
	0x00, 0x44, 0xcc, 0xec, 0x00,
	0x00, 0xcc, 0xec, 0xcc, 0x88,
	0x00, 0xd9, 0xbf, 0xfb, 0x88,
	0x00, 0xb7, 0xb5, 0xb5, 0xa2,
	0x00, 0x3f, 0x6e, 0x3f, 0x2a,
	0x00, 0x15, 0x3f, 0x3f, 0x00,
	0x00, 0x00, 0xfc, 0xa8, 0x00,
	0x15, 0x7e, 0xfc, 0xfc, 0x00,
	0x15, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0x56, 0xbd, 0x00,
	0x01, 0x03, 0x17, 0x3f, 0x00,
	0x01, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x82, 0x00, 0x00
};

// Tile pre_jimmy_tileset_07: 10x14 pixels, 5x14 bytes.
const u8 pre_jimmy_tileset_07[5 * 14] = {
	0x00, 0x44, 0xcc, 0xec, 0x00,
	0x00, 0xcc, 0xec, 0xcc, 0x88,
	0x00, 0xd9, 0xbf, 0xfb, 0x88,
	0x00, 0xb7, 0xb5, 0xb5, 0xa2,
	0x00, 0x3f, 0x6e, 0x3f, 0x2a,
	0x00, 0x15, 0x3f, 0x3f, 0x00,
	0x00, 0x00, 0xfc, 0xa8, 0x00,
	0x15, 0x7e, 0xfc, 0xfc, 0x00,
	0x15, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0x56, 0xbd, 0x00,
	0x01, 0xcc, 0x17, 0x3f, 0x00,
	0x01, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x82, 0x82, 0x00
};

// Tile pre_jimmy_tileset_08: 10x14 pixels, 5x14 bytes.
const u8 pre_jimmy_tileset_08[5 * 14] = {
	0x00, 0x44, 0xcc, 0xec, 0x00,
	0x00, 0xcc, 0xec, 0xcc, 0x88,
	0x00, 0xec, 0xcc, 0xdc, 0x88,
	0x00, 0xe6, 0xdc, 0xcc, 0xa2,
	0x00, 0xf3, 0xcc, 0xd9, 0xa2,
	0x00, 0x44, 0xf3, 0xe6, 0x00,
	0x00, 0x00, 0xfc, 0xa8, 0x00,
	0x15, 0x7e, 0xfc, 0xfc, 0x00,
	0x15, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x82, 0x82, 0x00
};

// Tile pre_jimmy_tileset_09: 10x14 pixels, 5x14 bytes.
const u8 pre_jimmy_tileset_09[5 * 14] = {
	0x00, 0x44, 0xcc, 0xec, 0x00,
	0x00, 0xcc, 0xec, 0xcc, 0x88,
	0x00, 0xec, 0xcc, 0xdc, 0x88,
	0x00, 0xe6, 0xdc, 0xcc, 0xa2,
	0x00, 0xf3, 0xcc, 0xd9, 0xa2,
	0x00, 0x44, 0xf3, 0xe6, 0x00,
	0x00, 0x00, 0xfc, 0xa8, 0x00,
	0x15, 0x7e, 0xfc, 0xfc, 0x00,
	0x15, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x02, 0x82, 0x00,
	0x00, 0x03, 0x00, 0x82, 0x00
};

// Tile pre_jimmy_tileset_10: 10x14 pixels, 5x14 bytes.
const u8 pre_jimmy_tileset_10[5 * 14] = {
	0x00, 0x44, 0xcc, 0xec, 0x00,
	0x00, 0xcc, 0xec, 0xcc, 0x88,
	0x00, 0xec, 0xcc, 0xdc, 0x88,
	0x00, 0xe6, 0xdc, 0xcc, 0xa2,
	0x00, 0xf3, 0xcc, 0xd9, 0xa2,
	0x00, 0x44, 0xf3, 0xe6, 0x00,
	0x00, 0x00, 0xfc, 0xa8, 0x00,
	0x15, 0x7e, 0xfc, 0xfc, 0x00,
	0x15, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0xfc, 0xbd, 0x00,
	0x01, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x02, 0x02, 0x00,
	0x00, 0x03, 0x82, 0x00, 0x00
};

