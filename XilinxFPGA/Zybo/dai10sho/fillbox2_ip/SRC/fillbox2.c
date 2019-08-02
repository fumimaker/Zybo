/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��10�͉ۑ�                           */
/* project: fillbox2                             */
/* outline: �̈�O�`���}�������p�^�[���`���H */

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

    /* ���ۂɕ`�悷��c���̃T�C�Y���Z�o */
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

    /* �h��Ԃ��F��1���C�����p�� */
    for( i=0; i<xact; i++ ) {
        linebuf[i] = color;
    }
    
    /* memcpy�֐����J��Ԃ��ċ�`�̈��h��Ԃ� */
    for ( i=0; i<yact; i++ ) {
        dstaddr = (uint16 *)(vram + (ypos+i)*XSIZE + xpos);
        memcpy(dstaddr, linebuf, xact*sizeof(uint16));
    }

    return result;
}
