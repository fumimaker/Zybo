/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: �R����F                  */
/* project: blink_mult_mb            */
/* outline: 1�ԑ��@LED�_�Ńv���O���� */

#include "xparameters.h"
#include "xil_printf.h"

#define LED      *((volatile unsigned int*) (XPAR_GPIO_0_BASEADDR + 0x00))
#define LED_ctrl *((volatile unsigned int*) (XPAR_GPIO_0_BASEADDR + 0x04))

int main()
{
    int i, j;

    LED_ctrl = 0x0; /* �S�r�b�g���o�͂ɐݒ� */
//    xil_printf("Hello FPGA World!\n");
    while(1) {
        for ( i=0; i<6; i++ ) {
//            xil_printf("i=%d\n", i);
            switch ( i ) {
                case  0: LED = 0x1; break;
                case  1: LED = 0x2; break;
                case  2: LED = 0x4; break;
                case  3: LED = 0x8; break;
                case  4: LED = 0x4; break;
                case  5: LED = 0x2; break;
                default: LED = 0x0;
            }
            for ( j=0; j<1000000; j++); /* �x�����쐬 */
        }
    }

    return 0;
}
