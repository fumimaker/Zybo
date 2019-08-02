/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第5章課題                      */
/* Vivado : second                         */
/* SDK    : blinkdir                       */
/* outline: プッシュSWで流れる方向を変える */

#include "xparameters.h"
#include "xgpio.h"
#include "xtmrctr.h"
#include "xintc.h"

#define LED_CHANNEL     1
#define BTN_CHANNEL     2
#define TIMER_CNTR_0    0
#define RESET_VALUE     2500000

#define BTN0 1

#define BOTH 0
#define RtoL 1
#define LtoR 2

XGpio Gpio;
XIntc InterruptController;
XTmrCtr TimerCounterInst;

int cnt, mode;

/* タイマー割り込み関数 */
void TimerCounterHandler(void *CallBackRef, u8 TmrCtrNumber)
{
    volatile static int preBTN, nowBTN;

    XTmrCtr *InstancePtr = (XTmrCtr *)CallBackRef;
    if (XTmrCtr_IsExpired(InstancePtr, TmrCtrNumber)) {
        cnt++;
        preBTN = nowBTN;
        nowBTN = XGpio_DiscreteRead(&Gpio, BTN_CHANNEL) & 1;
        if ( preBTN==0 && nowBTN==BTN0 ) {
            if ( ++mode >= 3 ) mode = 0;
            xil_printf("BTN = %x  mode = %d\n", nowBTN, mode);
        }
    }
}

int main()
{
    int Status;
    int temp, led;

    xil_printf("Timer Interrupt Test.\n\n");

    /* GPIOの初期化 */
    Status = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0);
    XGpio_SetDataDirection(&Gpio, BTN_CHANNEL, 1);

    /* Timerの初期化 */
    Status = XTmrCtr_Initialize(&TimerCounterInst, XPAR_TMRCTR_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    /* 割り込みコントローラの初期化と各種設定 */
    Status = XIntc_Initialize(&InterruptController, XPAR_INTC_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    Status = XIntc_Connect(&InterruptController, XPAR_INTC_0_TMRCTR_0_VEC_ID,
                (XInterruptHandler)XTmrCtr_InterruptHandler,
                (void *)&TimerCounterInst);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    Status = XIntc_Start(&InterruptController, XIN_REAL_MODE);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XIntc_Enable(&InterruptController, XPAR_INTC_0_TMRCTR_0_VEC_ID);

    /* MicroBlazeの割り込み設定 */
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                (Xil_ExceptionHandler)XIntc_InterruptHandler,
                &InterruptController);
    Xil_ExceptionEnable();

    /* タイマーの各種設定 */
    XTmrCtr_SetHandler(&TimerCounterInst, (void*)TimerCounterHandler,
            &TimerCounterInst);
    XTmrCtr_SetOptions(&TimerCounterInst, TIMER_CNTR_0,
        XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION | XTC_DOWN_COUNT_OPTION);
    XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, RESET_VALUE);
    XTmrCtr_Start(&TimerCounterInst, TIMER_CNTR_0);

    while(1) {
        temp = (mode==BOTH) ? (cnt/4) % 6: (cnt/4) % 4;
        switch ( temp ) {
            case 0: if ( mode==LtoR ) led = 0x8; else led = 0x1; break;
            case 1: if ( mode==LtoR ) led = 0x4; else led = 0x2; break;
            case 2: if ( mode==LtoR ) led = 0x2; else led = 0x4; break;
            case 3: if ( mode==LtoR ) led = 0x1; else led = 0x8; break;
            case 4: led = 0x4; break;
            case 5: led = 0x2; break;
            default:led = 0x0; break;
        }
        XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, led);
    }

    return 0;
}
