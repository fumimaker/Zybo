/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第9章            */
/* project: display          */
/* outline: テストプログラム */

#include <stdio.h>

#include "xparameters.h"
#include "xil_cache.h"
#include "platform.h"    /* SDKのテンプレートは”Hello World"を選んでください */

#define GPIO_00_CTRL (*(volatile unsigned int *) (XPAR_AXI_GPIO_0_BASEADDR +0x04))
#define GPIO_01_CTRL (*(volatile unsigned int *) (XPAR_AXI_GPIO_0_BASEADDR +0x0C))
#define GPIO_10_CTRL (*(volatile unsigned int *) (XPAR_AXI_GPIO_1_BASEADDR +0x04))
#define GPIO_11_CTRL (*(volatile unsigned int *) (XPAR_AXI_GPIO_1_BASEADDR +0x0C))

#define DISPADDR (*(volatile unsigned int *) (XPAR_AXI_GPIO_0_BASEADDR +0x00))
#define DISPON   (*(volatile unsigned int *) (XPAR_AXI_GPIO_0_BASEADDR +0x08))
#define VBLANK   (*(volatile unsigned int *) (XPAR_AXI_GPIO_1_BASEADDR +0x00))
#define CLRVBLNK (*(volatile unsigned int *) (XPAR_AXI_GPIO_1_BASEADDR +0x08))

#define XSIZE 640
#define YSIZE 480
#define VRAM ((volatile unsigned short *) 0x88000000)

void wait_vblank(void) {
    CLRVBLNK = 1;
    CLRVBLNK = 0;
    while (VBLANK==0);
}

/* 原点（xpos, ypos)、大きさ（width, height）、色（color）を指定して箱を書く */
void drawbox( int xpos, int ypos, int width, int height, int col ) {
    int x, y;

    for ( x=xpos; x<xpos+width; x++ ) {
        VRAM[ ypos*XSIZE + x ] = col;
        VRAM[ (ypos+height-1)*XSIZE + x ] = col;
    }
    for ( y=ypos; y<ypos+height; y++ ) {
        VRAM[ y*XSIZE + xpos ] = col;
        VRAM[ y*XSIZE + xpos + width -1 ] = col;
    }
}

int main()
{
    int i;

    init_platform();
    GPIO_00_CTRL = 0;
    GPIO_01_CTRL = 0;
    GPIO_10_CTRL = 1;
    GPIO_11_CTRL = 0;

    wait_vblank();
    DISPADDR = 0x88000000;
    DISPON = 1;

    /* 画面クリア */      /* ★この行にブレークポイントを置く★ */
    for ( i=0; i<XSIZE*YSIZE; i++) {
        VRAM[i] = 0;
    }
    Xil_DCacheFlush();

    /* 枠線をいくつか引いてみる */
    drawbox(  0,   0, 640, 480, 0x0fff); /* ★この行にブレークポイントを置く★ */
    drawbox( 10,  10, 200, 100, 0x0f00); // R
    drawbox( 40,  30, 150, 300, 0x00f0); // G
    drawbox(100, 150, 400, 300, 0x000f); // B
    Xil_DCacheFlush();

    /* 縞模様を書く */    /* ★この行にブレークポイントを置く★ */
    for ( i=0; i<XSIZE*YSIZE; i++) {
        VRAM[i] = i;
    }
    Xil_DCacheFlush();

    /* 表示をオフして終了 */
    wait_vblank();    /* ★この行にブレークポイントを置く★ */
    DISPON = 0;

    cleanup_platform();
    return 0;
}
