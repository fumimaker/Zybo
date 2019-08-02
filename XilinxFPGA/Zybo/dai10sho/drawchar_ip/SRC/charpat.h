/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第10章                   */
/* project: drawchar                 */
/* outline: 第10章課題　文字パターン */

uint8 pattern[128][8] = {

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00000000
},

{
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00000000
},

{
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00000000,
0b00000000,
0b00001000,
0b00000000
},

{
0b00010100,
0b00010100,
0b00010100,
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00000000
},

{
0b00010100,
0b00010100,
0b00111110,
0b00010100,
0b00111110,
0b00010100,
0b00010100,
0b00000000
},

{
0b00001000,
0b00011100,
0b00101000,
0b00011100,
0b00001010,
0b00111100,
0b00001000,
0b00000000
},

{
0b00110000,
0b00110010,
0b00000100,
0b00001000,
0b00010000,
0b00100110,
0b00000110,
0b00000000
},

{
0b00011000,
0b00100100,
0b00101000,
0b00010000,
0b00101010,
0b00100100,
0b00011010,
0b00000000
},

{
0b00011000,
0b00001000,
0b00010000,
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00000000
},

{
0b00000100,
0b00001000,
0b00010000,
0b00010000,
0b00010000,
0b00001000,
0b00000100,
0b00000000
},

{
0b00010000,
0b00001000,
0b00000100,
0b00000100,
0b00000100,
0b00001000,
0b00010000,
0b00000000
},

{
0b00000000,
0b00001000,
0b00101010,
0b00011100,
0b00101010,
0b00001000,
0b00000000,
0b00000000
},

{
0b00000000,
0b00001000,
0b00001000,
0b00111110,
0b00001000,
0b00001000,
0b00000000,
0b00000000
},

{
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00011000,
0b00001000,
0b00010000,
0b00000000
},

{
0b00000000,
0b00000000,
0b00000000,
0b00111110,
0b00000000,
0b00000000,
0b00000000,
0b00000000
},

{
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00110000,
0b00110000,
0b00000000
},

{
0b00000010,
0b00000100,
0b00001000,
0b00010000,
0b00100000,
0b00000000,
0b00000000,
0b00000000
},

{
0b00011100,
0b00100010,
0b00100110,
0b00101010,
0b00110010,
0b00100010,
0b00011100,
0b00000000
},

{
0b00001000,
0b00011000,
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00011100,
0b00000000
},

{
0b00011100,
0b00100010,
0b00000010,
0b00000100,
0b00001000,
0b00010000,
0b00111110,
0b00000000
},

{
0b00111110,
0b00000100,
0b00001000,
0b00000100,
0b00000010,
0b00100010,
0b00011100,
0b00000000
},

{
0b00000100,
0b00001100,
0b00010100,
0b00100100,
0b00111110,
0b00000100,
0b00000100,
0b00000000
},

{
0b00111110,
0b00100000,
0b00111100,
0b00000010,
0b00000010,
0b00100010,
0b00011100,
0b00000000
},

{
0b00001100,
0b00010000,
0b00100000,
0b00111100,
0b00100010,
0b00100010,
0b00011100,
0b00000000
},

{
0b00111110,
0b00000010,
0b00000100,
0b00001000,
0b00010000,
0b00010000,
0b00010000,
0b00000000
},

{
0b00011100,
0b00100010,
0b00100010,
0b00011100,
0b00100010,
0b00100010,
0b00011100,
0b00000000
},

{
0b00011100,
0b00100010,
0b00100010,
0b00011110,
0b00000010,
0b00000100,
0b00011000,
0b00000000
},

{
0b00000000,
0b00011000,
0b00011000,
0b00000000,
0b00011000,
0b00011000,
0b00000000,
0b00000000
},

{
0b00000000,
0b00011000,
0b00011000,
0b00000000,
0b00011000,
0b00001000,
0b00010000,
0b00000000
},

{
0b00000100,
0b00001000,
0b00010000,
0b00100000,
0b00010000,
0b00001000,
0b00000100,
0b00000000
},

{
0b00000000,
0b00000000,
0b00111110,
0b00000000,
0b00111110,
0b00000000,
0b00000000,
0b00000000
},

{
0b00010000,
0b00001000,
0b00000100,
0b00000010,
0b00000100,
0b00001000,
0b00010000,
0b00000000
},

{
0b00011100,
0b00100010,
0b00000010,
0b00000100,
0b00001000,
0b00000000,
0b00001000,
0b00000000
},

{
0b00011100,
0b00100010,
0b00000010,
0b00011010,
0b00101010,
0b00101010,
0b00011100,
0b00000000
},

{
0b00011100,
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00100010,
0b00100010,
0b00000000
},

{
0b00111100,
0b00100010,
0b00100010,
0b00111100,
0b00100010,
0b00100010,
0b00111100,
0b00000000
},

{
0b00011100,
0b00100010,
0b00100000,
0b00100000,
0b00100000,
0b00100010,
0b00011100,
0b00000000
},

{
0b00111000,
0b00100100,
0b00100010,
0b00100010,
0b00100010,
0b00100100,
0b00111000,
0b00000000
},

{
0b00111110,
0b00100000,
0b00100000,
0b00111100,
0b00100000,
0b00100000,
0b00111110,
0b00000000
},

{
0b00111110,
0b00100000,
0b00100000,
0b00111100,
0b00100000,
0b00100000,
0b00100000,
0b00000000
},

{
0b00011100,
0b00100010,
0b00100000,
0b00101110,
0b00100010,
0b00100010,
0b00011110,
0b00000000
},

{
0b00100010,
0b00100010,
0b00100010,
0b00111110,
0b00100010,
0b00100010,
0b00100010,
0b00000000
},

{
0b00011100,
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00011100,
0b00000000
},

{
0b00001110,
0b00000100,
0b00000100,
0b00000100,
0b00000100,
0b00100100,
0b00011000,
0b00000000
},

{
0b00100010,
0b00100100,
0b00101000,
0b00110000,
0b00101000,
0b00100100,
0b00100010,
0b00000000
},

{
0b00100000,
0b00100000,
0b00100000,
0b00100000,
0b00100000,
0b00100000,
0b00111110,
0b00000000
},

{
0b00100010,
0b00110110,
0b00101010,
0b00101010,
0b00100010,
0b00100010,
0b00100010,
0b00000000
},

{
0b00100010,
0b00100010,
0b00110010,
0b00101010,
0b00100110,
0b00100010,
0b00100010,
0b00000000
},

{
0b00011100,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00011100,
0b00000000
},

{
0b00111100,
0b00100010,
0b00100010,
0b00111100,
0b00100000,
0b00100000,
0b00100000,
0b00000000
},

{
0b00011100,
0b00100010,
0b00100010,
0b00100010,
0b00101010,
0b00100100,
0b00011010,
0b00000000
},

{
0b00111100,
0b00100010,
0b00100010,
0b00111100,
0b00101000,
0b00100100,
0b00100010,
0b00000000
},

{
0b00011110,
0b00100000,
0b00100000,
0b00011100,
0b00000010,
0b00000010,
0b00111100,
0b00000000
},

{
0b00111110,
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00000000
},

{
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00011100,
0b00000000
},

{
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00100010,
0b00010100,
0b00001000,
0b00000000
},

{
0b00100010,
0b00100010,
0b00100010,
0b00101010,
0b00101010,
0b00101010,
0b00010100,
0b00000000
},

{
0b00100010,
0b00100010,
0b00010100,
0b00001000,
0b00010100,
0b00100010,
0b00100010,
0b00000000
},

{
0b00100010,
0b00100010,
0b00100010,
0b00010100,
0b00001000,
0b00001000,
0b00001000,
0b00000000
},

{
0b00111110,
0b00000010,
0b00000100,
0b00001000,
0b00010000,
0b00100000,
0b00111110,
0b00000000
},

{
0b00011100,
0b00010000,
0b00010000,
0b00010000,
0b00010000,
0b00010000,
0b00011100,
0b00000000
},

{
0b00100010,
0b00010100,
0b00111110,
0b00001000,
0b00111110,
0b00001000,
0b00001000,
0b00000000
},

{
0b00011100,
0b00000100,
0b00000100,
0b00000100,
0b00000100,
0b00000100,
0b00011100,
0b00000000
},

{
0b00001000,
0b00010100,
0b00100010,
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00000000
},

{
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00111110,
0b00000000
},

{
0b00010000,
0b00001000,
0b00000100,
0b00000000,
0b00000000,
0b00000000,
0b00000000,
0b00000000
},

{
0b00000000,
0b00000000,
0b00011100,
0b00000010,
0b00011110,
0b00100010,
0b00011110,
0b00000000
},

{
0b00100000,
0b00100000,
0b00101100,
0b00110010,
0b00100010,
0b00100010,
0b00111100,
0b00000000
},

{
0b00000000,
0b00000000,
0b00011100,
0b00100000,
0b00100000,
0b00100010,
0b00011100,
0b00000000
},

{
0b00000010,
0b00000010,
0b00011010,
0b00100110,
0b00100010,
0b00100010,
0b00011110,
0b00000000
},

{
0b00000000,
0b00000000,
0b00011100,
0b00100010,
0b00111110,
0b00100000,
0b00011100,
0b00000000
},

{
0b00001100,
0b00010010,
0b00010000,
0b00111000,
0b00010000,
0b00010000,
0b00010000,
0b00000000
},

{
0b00000000,
0b00011110,
0b00100010,
0b00100010,
0b00011110,
0b00000010,
0b00011100,
0b00000000
},

{
0b00100000,
0b00100000,
0b00101100,
0b00110010,
0b00100010,
0b00100010,
0b00100010,
0b00000000
},

{
0b00001000,
0b00000000,
0b00011000,
0b00001000,
0b00001000,
0b00001000,
0b00011100,
0b00000000
},

{
0b00000100,
0b00000000,
0b00001100,
0b00000100,
0b00000100,
0b00100100,
0b00011000,
0b00000000
},

{
0b00100000,
0b00100000,
0b00100100,
0b00101000,
0b00110000,
0b00101000,
0b00100100,
0b00000000
},

{
0b00011000,
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00011100,
0b00000000
},

{
0b00000000,
0b00000000,
0b00110100,
0b00101010,
0b00101010,
0b00100010,
0b00100010,
0b00000000
},

{
0b00000000,
0b00000000,
0b00101100,
0b00110010,
0b00100010,
0b00100010,
0b00100010,
0b00000000
},

{
0b00000000,
0b00000000,
0b00011100,
0b00100010,
0b00100010,
0b00100010,
0b00011100,
0b00000000
},

{
0b00000000,
0b00000000,
0b00111100,
0b00100010,
0b00111100,
0b00100000,
0b00100000,
0b00000000
},

{
0b00000000,
0b00000000,
0b00011010,
0b00100110,
0b00011110,
0b00000010,
0b00000010,
0b00000000
},

{
0b00000000,
0b00000000,
0b00101100,
0b00110010,
0b00100000,
0b00100000,
0b00100000,
0b00000000
},

{
0b00000000,
0b00000000,
0b00011100,
0b00100000,
0b00011100,
0b00000010,
0b00111100,
0b00000000
},

{
0b00010000,
0b00010000,
0b00111000,
0b00010000,
0b00010000,
0b00010010,
0b00001100,
0b00000000
},

{
0b00000000,
0b00000000,
0b00100010,
0b00100010,
0b00100010,
0b00100110,
0b00011010,
0b00000000
},

{
0b00000000,
0b00000000,
0b00100010,
0b00100010,
0b00100010,
0b00010100,
0b00001000,
0b00000000
},

{
0b00000000,
0b00000000,
0b00100010,
0b00100010,
0b00101010,
0b00101010,
0b00010100,
0b00000000
},

{
0b00000000,
0b00000000,
0b00100010,
0b00010100,
0b00001000,
0b00010100,
0b00100010,
0b00000000
},

{
0b00000000,
0b00000000,
0b00100010,
0b00100010,
0b00011110,
0b00000010,
0b00011100,
0b00000000
},

{
0b00000000,
0b00000000,
0b00111110,
0b00000100,
0b00001000,
0b00010000,
0b00111110,
0b00000000
},

{
0b00001000,
0b00010000,
0b00010000,
0b00100000,
0b00010000,
0b00010000,
0b00001000,
0b00000000
},

{
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00001000,
0b00000000
},

{
0b00010000,
0b00001000,
0b00001000,
0b00000100,
0b00001000,
0b00001000,
0b00010000,
0b00000000
},

{
0b00000000,
0b00001000,
0b00000100,
0b00111110,
0b00000100,
0b00001000,
0b00000000,
0b00000000
},

{
0b00000000,
0b00001000,
0b00010000,
0b00111110,
0b00010000,
0b00001000,
0b00000000,
0b00000000
}
};
