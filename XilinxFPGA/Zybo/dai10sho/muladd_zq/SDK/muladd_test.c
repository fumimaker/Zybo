/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��10��                         */
/* project: muladd_zq                      */
/* outline: ���ʍ�����������Z��H�̃e�X�g */

#include <stdio.h>
#include <stdlib.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xmuladd.h"

#define SIZE 16

/* �C���X�^���X�ϐ��̐錾 */
XMuladd Instance;

int main()
{
    int a[SIZE], b[SIZE];
    int i, temp=0;

    /* ������ */
    if ( XMuladd_Initialize(&Instance,
                XPAR_XMULADD_0_DEVICE_ID)!=XST_SUCCESS ) {
        xil_printf("Init Error!\n");
        return XST_FAILURE;
    }
    /* �z��a�Ab�ɗ������������Ғl���쐬 */
    for ( i=0; i<SIZE; i++ ) {
        a[i] = rand() & 0xffff;
        b[i] = rand() & 0xffff;
        temp += a[i] * b[i];
        xil_printf("a[%2d]=%04x  b[%2d]=%04x  temp=%08x\n",
                i, a[i], i, b[i], temp);
    }
    /* �|�[�g���o�R���Ĕz��a�Ab���������� */
    XMuladd_Write_a_Words(&Instance, 0, a, SIZE);
    XMuladd_Write_b_Words(&Instance, 0, b, SIZE);

    /* ����Z��H���N�� */
    XMuladd_Start(&Instance);
    while (XMuladd_IsDone(&Instance)==0);

    /* ���Z���ʂ����Ғl�Ɣ�r */
    if ( temp == XMuladd_Get_return(&Instance) ) {
        xil_printf("OK.\n");
    }
    else {
        xil_printf("*** NG ***\n");
    }

    return 0;
}
