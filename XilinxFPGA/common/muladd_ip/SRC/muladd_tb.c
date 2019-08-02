/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��10��               */
/* project: muladd               */
/* outline: muladd�̃e�X�g�x���` */

#include <stdio.h>
#include <stdlib.h>
#define SIZE 16

int main( )
{
    int a[SIZE], b[SIZE];
    int i, retval=0, temp=0;

    /* �z��a�Ab�ɗ������������Ғl���쐬 */
    for ( i=0; i<SIZE; i++ ) {
        a[i] = rand() & 0xffff;
        b[i] = rand() & 0xffff;
        temp += a[i] * b[i];
        printf("a[%2d]=%04x  b[%2d]=%04x  temp=%08x\n",
                i, a[i], i, b[i], temp);
    }

    /* ���Z���ʂ����Ғl�Ɣ�r */
    if ( temp == muladd( a, b ) ) {
        printf("OK.\n");
    }
    else {
        printf("*** NG ***\n");
        retval = 1;
    }

    return retval;
}
