/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第10章           */
/* project: fillbox          */
/* outline: パターン描画回路 */

#include <string.h>
#include "ap_cint.h"

#define XSIZE 640

void fillbox(
    volatile uint16 *vram,
    uint10 xpos,
    uint10 ypos,
    uint10 width,
    uint10 height,
    uint16 color )
{
    int    i;
    uint16 linebuf[XSIZE];
    uint16 *dstaddr;

    /* 塗りつぶし色を1ライン分用意 */
    for( i=0; i<width; i++ ) {
        linebuf[i] = color;
    }
    
    /* memcpy関数を繰り返して矩形領域を塗りつぶす */
    for ( i=0; i<height; i++ ) {
        dstaddr = (uint16 *)(vram + (ypos+i)*XSIZE + xpos);
        memcpy(dstaddr, linebuf, width*sizeof(uint16));
    }
}
