/* Copyright(C) 2016 Cobac.Net All Rights Reserved.    */
/* chapter: ��6�͉ۑ�                                  */
/* project: chardisp2                                  */
/* outline: ���]�A�_�ŕt�������\����H�e�X�g�v���O���� */

#include "xparameters.h"
#include "xil_printf.h"

#define VRAM   ((volatile unsigned int  *) XPAR_CHARDISP_IP_V1_0_0_BASEADDR)

#define XSIZE 80
#define YSIZE 50

#define REV   0x100000
#define BLINK 0x200000

int main()
{
    int x, y;
    /* �e�F�Ŋe������\�� */
    for ( x=0; x<XSIZE*YSIZE; x++ ) {
        VRAM[x] = (x<<8) | (0xff & x);
    }

    /* �P�s���Ƃɔ��]�Ɠ_�łɂ��� */
    for ( y=0; y<YSIZE; y++ ) {
        for ( x=0; x<XSIZE; x++ ) {
            if ( y%4==1 )
                VRAM[y*XSIZE+x] = VRAM[y*XSIZE+x] | REV;
            else if ( y%4==3 )
                VRAM[y*XSIZE+x] = VRAM[y*XSIZE+x] | BLINK;
        }
    }

    return 0;
}
