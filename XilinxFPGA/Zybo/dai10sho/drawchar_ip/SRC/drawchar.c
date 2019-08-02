/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第10章                           */
/* project: drawchar                         */
/* outline: 第10章課題　文字パターン描画回路 */

#include <string.h>
#include "ap_cint.h"

#include "charpat.h"

#define XSIZE 640
#define MAXDOTSIZE 60

/* 1文字分の描画を行う */
void drawchar(
    volatile uint16 *vram,
    uint10 xpos,
    uint10 ypos,
    uint8  letter,
    uint8  dotsize,
    uint16 color )
{
    uint16 i, j, k, temp, tempcol;
    uint16 linebuf[8][MAXDOTSIZE*8];
    uint16 *dstaddr;

    /* 塗りつぶし色を8ライン分用意（横方向はフルサイズ） */
    for( i=0; i<8; i++ ) {
        temp = pattern[letter][i];
        for ( j=0; j<8; j++ ) {
            if ( (temp & (0x80>>j)) !=0 )
                tempcol = color;
            else
                tempcol = 0;
            /* dotsize分だけ横にコピー */
            for ( k=0; k<dotsize; k++ )
                linebuf[i][j*dotsize+k] = tempcol;
        }
    }
    /* memcpy関数を縦方向にdotsize分、さらに縦8ドット分、繰り返して文字パターンを描画 */
    for ( i=0; i<8; i++ ) {
        for ( j=0; j<dotsize; j++ ) {
            dstaddr = (uint16 *)(vram + (ypos+i*dotsize+j)*XSIZE + xpos);
            memcpy(dstaddr, &linebuf[i][0], 8*dotsize*sizeof(uint16));
        }
    }
}
