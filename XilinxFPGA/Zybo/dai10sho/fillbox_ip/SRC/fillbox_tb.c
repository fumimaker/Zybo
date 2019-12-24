/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��10��                         */
/* project: fillbox                        */
/* outline: �p�^�[���`���H�̃e�X�g�x���` */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ap_cint.h"

#define XSIZE 640
#define YSIZE 480

uint16 vram[XSIZE*YSIZE];

/* ��ʃN���A */
void dispclear( uint16 *vram )
{
    int i;
    for ( i=0; i<XSIZE*YSIZE; i++) {
        vram[i] = 0;
    }
}

/* �t�@�C���o�� */
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

/* �e�X�g�x���`�{�� */
int main()
{
    /* ��ʃN���A */
    dispclear(vram);

    /* 3�̔���`�� */
    fillbox(vram,   0,   0, 320, 240, 0x0f00);
    fillbox(vram, 160, 120, 320, 240, 0x00f0);
    fillbox(vram, 320, 240, 320, 240, 0x000f);

    /* �t�@�C���o�� */
    fileout("imagedata.raw", vram);

    return 0;
}