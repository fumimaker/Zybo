/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第10章課題                           */
/* project: fillbox2                             */
/* outline: 領域外描画を抑制したパターン描画回路 */

#include <string.h>
#include "ap_cint.h"

#define XSIZE 640
#define YSIZE 480

int fillbox(
    volatile uint16 *vram,
    uint10 xpos,
    uint10 ypos,
    uint10 width,
    uint10 height,
    uint16 color )
{
    int    i, result=0;
    uint16 linebuf[XSIZE];
    uint16 *dstaddr;
    uint10 xact, yact;

    /* 実際に描画する縦横のサイズを算出 */
    if ( xpos+width>XSIZE ) {
        xact = XSIZE - xpos;
        result = 1;
    }
    else
        xact = width;
    if ( ypos+height>YSIZE ) {
        yact = YSIZE - ypos;
        result = 1;
    }
    else
        yact = height;

    /* 塗りつぶし色を1ライン分用意 */
    for( i=0; i<xact; i++ ) {
        linebuf[i] = color;
    }
    
    /* memcpy関数を繰り返して矩形領域を塗りつぶす */
    for ( i=0; i<yact; i++ ) {
        dstaddr = (uint16 *)(vram + (ypos+i)*XSIZE + xpos);
        memcpy(dstaddr, linebuf, xact*sizeof(uint16));
    }

    return result;
}
