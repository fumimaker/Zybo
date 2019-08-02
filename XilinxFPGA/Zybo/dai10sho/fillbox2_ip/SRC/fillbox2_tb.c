/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��10�͉ۑ�                       */
/* project: fillbox                          */
/* outline: �̈�O�`����m�F����e�X�g�x���` */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ap_cint.h"

#define XSIZE 640
#define YSIZE 480

uint16 vram[XSIZE*YSIZE*2];

/* ��ʃN���A */
void dispclear( uint16 *vram )
{
    int i;
    for ( i=0; i<XSIZE*YSIZE*2; i++) {
        vram[i] = 0;
    }
}

/* �t�@�C���o�� */
void fileout( char *finename, uint16 *vram )
{
    int i, fnum, temp;
    char r, g, b;
    char fname[100];

    for ( fnum=0; fnum<2; fnum++ ) {
        strcpy( fname, finename );
        if ( fnum==0 )
            strcat( fname, "0.raw" );
        else
            strcat( fname, "1.raw" );
        FILE *fd = fopen(fname, "wb");
        temp = fnum*XSIZE*YSIZE;
        for ( i=0; i<XSIZE*YSIZE; i++ ) {
            r = (vram[i+temp] & 0x0f00) >> 4;
            g = (vram[i+temp] & 0x00f0);
            b = (vram[i+temp] & 0x000f) << 4;
            fprintf( fd, "%c", r );
            fprintf( fd, "%c", g );
            fprintf( fd, "%c", b );
        }
        fclose(fd);
    }
}

/* �e�X�g�x���`�{�� */
int main()
{
	int result;

    /* ��ʃN���A */
    dispclear(vram);

    /* 2�ڈȍ~�̔���̈�O�ɂ͂ݏo��悤�`�� */
    result = fillbox(vram,   0,   0, 320, 240, 0x0f00);
    printf("#1 result = %d\n", result);
    result = fillbox(vram, 480, 120, 320, 240, 0x00f0);
    printf("#2 result = %d\n", result);
    result = fillbox(vram, 480, 360, 320, 240, 0x000f);
    printf("#3 result = %d\n", result);

    /* �t�@�C���o�� */
    fileout("imagedata", vram);

    return 0;
}
