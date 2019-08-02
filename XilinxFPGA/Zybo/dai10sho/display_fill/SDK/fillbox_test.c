/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��10��                   */
/* project: display                  */
/* outline: �p�^�[���`���H�̃e�X�g */

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
void fillbox( int xpos, int ypos, int width, int height, short col ) {
    XFillbox_Set_xpos(&Instance, xpos);
    XFillbox_Set_ypos(&Instance, ypos);
    XFillbox_Set_width(&Instance, width);
    XFillbox_Set_height(&Instance, height);
    XFillbox_Set_color(&Instance, col);
    XFillbox_Start(&Instance);
    while (XFillbox_IsDone(&Instance)==0);
}

int main()
{
    int i, j, Status;
    short rannum[10][10];

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

    /* �e�X�g�x���`�Ɠ������e�ŕ`�� */
    fillbox(  0,   0, 320, 240, 0x0f00);
    fillbox(160, 120, 320, 240, 0x00f0);
    fillbox(320, 240, 320, 240, 0x000f);

    /* �����_���F�����O�v�Z */      /* �����̍s�Ƀu���[�N�|�C���g��u���� */
    for (i=0; i<10; i++)
        for(j=0; j<10; j++)
            rannum[i][j] = (rand() & 0xf)<<8 |
                           (rand() & 0xf)<<4 | (rand() & 0xf);

    /* �����_���ȐF�Ń^�C����ɕ`��*/
    for (i=0; i<10; i++)
        for(j=0; j<10; j++)
            fillbox(j*64, i*48, 64, 48, rannum[i][j]);

    /* �\�����I�t���ďI�� */
    wait_vblank();  /* �����̍s�Ƀu���[�N�|�C���g�� */
    XGpio_DiscreteWrite(&GpioAddrOn, DISPON, 0);

    return 0;
}
