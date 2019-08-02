/* Copyright(C) 2016 Cobac.Net All Rights Reserved.        */
/* chapter: 第10章                                         */
/* project: drawchar                                       */
/* outline: 第10章課題　文字パターン描画回路のテストベンチ */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ap_cint.h"

#define XSIZE 640
#define YSIZE 480

uint16 vram[XSIZE*YSIZE];

/* 画面クリア */
void dispclear( uint16 *vram )
{
    int i;
    for ( i=0; i<XSIZE*YSIZE; i++) {
        vram[i] = 0;
    }
}

/* ファイル出力 */
void fileout( char *finename, uint16 *vram )
{
    int i;
    char r, g, b;

    FILE *fd = fopen(finename, "wb");
    for ( i=0; i<XSIZE*YSIZE; i++ ) {
        r = (vram[i] & 0x0f00) >> 4;
        g = (vram[i] & 0x00f0);
        b = (vram[i] & 0x000f) << 4;
        fprintf( fd, "%c", r );
        fprintf( fd, "%c", g );
        fprintf( fd, "%c", b );
    }
    fclose(fd);
}

/* テストベンチ本体 */
int main()
{
    dispclear(vram);

    drawchar(vram,   0,   0, 'A', 10, 0x0f00);
    drawchar(vram,  80,  80, 'B',  5, 0x00f0);
    drawchar(vram, 160, 160, 'C', 20, 0x000f);

    fileout("imagedata.raw", vram);

    return 0;

}
