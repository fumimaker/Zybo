/* Copyright(C) 2016 Cobac.Net All Rights Reserved.      */
/* chapter: ��10��                                       */
/* project: display_fill2                                */
/* outline: �̈�O�`���}�������p�^�[���`���H�̃e�X�g */

#include <stdio.h>
#include <stdlib.h>
#include "xparameters.h"
#include "xgpio.h"
#include "xil_cache.h"
#include "xfillbox.h"

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
XFillbox Instance;

/* VBLANK�҂� */
void wait_vblank(void) {
    XGpio_DiscreteWrite(&GpioBlank, CLRVBLNK, 1);
    XGpio_DiscreteWrite(&GpioBlank, CLRVBLNK, 0);
    while (XGpio_DiscreteRead(&GpioBlank, VBLANK)==0);
}

/* fillbox_ip�𐧌䂵�ăI���W�i����fillbox�֐����Č� */
int fillbox( int xpos, int ypos, int width, int height, short col ) {
    XFillbox_Set_xpos(&Instance, xpos);
    XFillbox_Set_ypos(&Instance, ypos);
    XFillbox_Set_width(&Instance, width);
    XFillbox_Set_height(&Instance, height);
    XFillbox_Set_color(&Instance, col);
    XFillbox_Start(&Instance);
    while (XFillbox_IsDone(&Instance)==0);
    return XFillbox_Get_return(&Instance);
}

int main()
{
    int i, Status;

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

    /* fillbox�̏����� */
    Status = XFillbox_Initialize(&Instance, XPAR_FILLBOX_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XFillbox_Set_vram(&Instance, (u32)0x10000000);

    /* 2�ڈȍ~�̔���̈�O�ɂ͂ݏo��悤�`�� */
    Status = fillbox(  0,   0, 320, 240, 0x0f00);
    xil_printf("#1 result = %d\n", Status);
    Status = fillbox(480, 120, 320, 240, 0x00f0);
    xil_printf("#2 result = %d\n", Status);
    Status = fillbox(480, 360, 320, 240, 0x000f);
    xil_printf("#3 result = %d\n", Status);

    /* �y�[�W�؂�ւ� */
    wait_vblank();  /* �����̍s�Ƀu���[�N�|�C���g�� */
    XGpio_DiscreteWrite(&GpioAddrOn, DISPADDR, 0x10096000);


    /* �\�����I�t���ďI�� */
    wait_vblank();  /* �����̍s�Ƀu���[�N�|�C���g�� */
    XGpio_DiscreteWrite(&GpioAddrOn, DISPON, 0);

    return 0;
}
