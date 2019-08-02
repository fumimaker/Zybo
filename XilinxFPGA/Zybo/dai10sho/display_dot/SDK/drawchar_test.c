/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��10�͉ۑ�                 */
/* project: display_dot                */
/* outline: �h�b�g�����`���H�̃e�X�g */

#include <stdio.h>
#include <stdlib.h>
#include "xparameters.h"
#include "xgpio.h"
#include "xil_cache.h"
#include "xdrawchar.h"

/* GPIO�̃`���l���i�P�n�܂�j */
#define DISPADDR 1
#define DISPON   2
#define VBLANK   1
#define CLRVBLNK 2

#define XSIZE 640
#define YSIZE 480
#define VRAM ((volatile unsigned short *) 0x10000000)

/* �C���X�^���X�ϐ� */
XGpio GpioAddrOn, GpioBlank;
XDrawchar Instance;

/* VBLANK�҂� */
void wait_vblank(void) {
    XGpio_DiscreteWrite(&GpioBlank, CLRVBLNK, 1);
    XGpio_DiscreteWrite(&GpioBlank, CLRVBLNK, 0);
    while (XGpio_DiscreteRead(&GpioBlank, VBLANK)==0);
}

void drawchar( short xpos, short ypos, char letter, char dotsize, short col ) {
    XDrawchar_Set_xpos(&Instance, xpos);
    XDrawchar_Set_ypos(&Instance, ypos);
    XDrawchar_Set_letter(&Instance, letter);
    XDrawchar_Set_dotsize(&Instance, dotsize);
    XDrawchar_Set_color(&Instance, col);
    XDrawchar_Start(&Instance);
    while (XDrawchar_IsDone(&Instance)==0);
}

int main()
{
    int i, ch, dotsize, xpos, ypos, Status;

    /* GPIO_0�i�\���A�h���X�A�\��ON/OFF�j�̏����� */
    Status = XGpio_Initialize(&GpioAddrOn, XPAR_GPIO_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&GpioAddrOn, DISPADDR, 0);
    XGpio_SetDataDirection(&GpioAddrOn, DISPON,   0);

    /* GPIO_1�iVBLANK�֘A�j�̏����� */
    Status = XGpio_Initialize(&GpioBlank, XPAR_GPIO_1_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&GpioBlank, VBLANK,   1);
    XGpio_SetDataDirection(&GpioBlank, CLRVBLNK, 0);

    /* �\��ON */
    wait_vblank();
    XGpio_DiscreteWrite(&GpioAddrOn, DISPADDR, 0x10000000);
    XGpio_DiscreteWrite(&GpioAddrOn, DISPON, 1);

    /* ��ʃN���A */
    for ( i=0; i<XSIZE*YSIZE; i++) {
        VRAM[i] = 0;
    }
    Xil_DCacheFlush();

    /* drawcha�̏����� */
    Status = XDrawchar_Initialize(&Instance, XPAR_XDRAWCHAR_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XDrawchar_Set_vram(&Instance, (u32)0x10000000);

    /* ���낢��ȑ傫���ŕ��������� */
    ypos = 16; ch = '!';
    for ( dotsize=2; ; dotsize++ ){
        for ( xpos=0; xpos<(XSIZE-dotsize*8); xpos+=dotsize*8 ) {
            drawchar( xpos, ypos, ch, dotsize, rand()%4096);
            if ( ++ch >= 128 ) ch = '!';
        }
        ypos += dotsize*8;
        if ( (ypos + dotsize*8)>YSIZE) break;
    }

    /* �\�����I�t���ďI�� */
    wait_vblank();  /* �����̍s�Ƀu���[�N�|�C���g�� */
    XGpio_DiscreteWrite(&GpioAddrOn, DISPON, 0);

    return 0;
}
