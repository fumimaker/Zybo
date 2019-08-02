/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��10��           */
/* project: fillbox          */
/* outline: �p�^�[���`���H */

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

    /* �h��Ԃ��F��1���C�����p�� */
    for( i=0; i<width; i++ ) {
        linebuf[i] = color;
    }
    
    /* memcpy�֐����J��Ԃ��ċ�`�̈��h��Ԃ� */
    for ( i=0; i<height; i++ ) {
        dstaddr = (uint16 *)(vram + (ypos+i)*XSIZE + xpos);
        memcpy(dstaddr, linebuf, width*sizeof(uint16));
    }
}
