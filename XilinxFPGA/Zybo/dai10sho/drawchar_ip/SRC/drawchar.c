/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��10��                           */
/* project: drawchar                         */
/* outline: ��10�͉ۑ�@�����p�^�[���`���H */

#include <string.h>
#include "ap_cint.h"

#include "charpat.h"

#define XSIZE 640
#define MAXDOTSIZE 60

/* 1�������̕`����s�� */
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

    /* �h��Ԃ��F��8���C�����p�Ӂi�������̓t���T�C�Y�j */
    for( i=0; i<8; i++ ) {
        temp = pattern[letter][i];
        for ( j=0; j<8; j++ ) {
            if ( (temp & (0x80>>j)) !=0 )
                tempcol = color;
            else
                tempcol = 0;
            /* dotsize���������ɃR�s�[ */
            for ( k=0; k<dotsize; k++ )
                linebuf[i][j*dotsize+k] = tempcol;
        }
    }
    /* memcpy�֐����c������dotsize���A����ɏc8�h�b�g���A�J��Ԃ��ĕ����p�^�[����`�� */
    for ( i=0; i<8; i++ ) {
        for ( j=0; j<dotsize; j++ ) {
            dstaddr = (uint16 *)(vram + (ypos+i*dotsize+j)*XSIZE + xpos);
            memcpy(dstaddr, &linebuf[i][0], 8*dotsize*sizeof(uint16));
        }
    }
}
