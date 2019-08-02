/* Copyright(C) 2016 Cobac.Net All Rights Reserved.      */
/* chapter: 第10章                                       */
/* project: display_fill2                                */
/* outline: 領域外描画を抑制したパターン描画回路のテスト */

#include <stdio.h>
#include <stdlib.h>
#include "xparameters.h"
#include "xgpio.h"
#include "xil_cache.h"
#include "xfillbox.h"

/* GPIOのチャネル（１始まり） */
#define DISPADDR 1
#define DISPON   2
#define VBLANK   1
#define CLRVBLNK 2

#define XSIZE 640
#define YSIZE 480
#define VRAM ((volatile unsigned short *) 0x10000000)

/* インスタンス変数 */
XGpio GpioAddrOn, GpioBlank;
XFillbox Instance;

/* VBLANK待ち */
void wait_vblank(void) {
    XGpio_DiscreteWrite(&GpioBlank, CLRVBLNK, 1);
    XGpio_DiscreteWrite(&GpioBlank, CLRVBLNK, 0);
    while (XGpio_DiscreteRead(&GpioBlank, VBLANK)==0);
}

/* fillbox_ipを制御してオリジナルのfillbox関数を再現 */
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

    /* GPIO_0（表示アドレス、表示ON/OFF）の初期化 */
    Status = XGpio_Initialize(&GpioAddrOn, XPAR_GPIO_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&GpioAddrOn, DISPADDR, 0);
    XGpio_SetDataDirection(&GpioAddrOn, DISPON,   0);

    /* GPIO_1（VBLANK関連）の初期化 */
    Status = XGpio_Initialize(&GpioBlank, XPAR_GPIO_1_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&GpioBlank, VBLANK,   1);
    XGpio_SetDataDirection(&GpioBlank, CLRVBLNK, 0);

    /* 表示ON */
    wait_vblank();
    XGpio_DiscreteWrite(&GpioAddrOn, DISPADDR, 0x10000000);
    XGpio_DiscreteWrite(&GpioAddrOn, DISPON, 1);

    /* 画面クリア */
    for ( i=0; i<XSIZE*YSIZE; i++) {
        VRAM[i] = 0;
    }
    Xil_DCacheFlush();

    /* fillboxの初期化 */
    Status = XFillbox_Initialize(&Instance, XPAR_FILLBOX_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XFillbox_Set_vram(&Instance, (u32)0x10000000);

    /* 2個目以降の箱を領域外にはみ出るよう描画 */
    Status = fillbox(  0,   0, 320, 240, 0x0f00);
    xil_printf("#1 result = %d\n", Status);
    Status = fillbox(480, 120, 320, 240, 0x00f0);
    xil_printf("#2 result = %d\n", Status);
    Status = fillbox(480, 360, 320, 240, 0x000f);
    xil_printf("#3 result = %d\n", Status);

    /* ページ切り替え */
    wait_vblank();  /* ★この行にブレークポイント★ */
    XGpio_DiscreteWrite(&GpioAddrOn, DISPADDR, 0x10096000);


    /* 表示をオフして終了 */
    wait_vblank();  /* ★この行にブレークポイント★ */
    XGpio_DiscreteWrite(&GpioAddrOn, DISPON, 0);

    return 0;
}
