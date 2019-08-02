/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��10��                       */
/* project: muladd                       */
/* outline: ���ʍ����̑̌��i����Z��H�j */

#define SIZE 16

int muladd( int a[SIZE], int b[SIZE] )
{
    int i, temp=0;

    muladd_loop:for ( i=0; i<SIZE; i++ ) {
        temp += a[i] * b[i];
    }

    return temp;
}
