/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第5章                  */
/* Vivado : second                 */
/* SDK    : second                 */
/* outline: タイマー割り込みテスト */

#include "xparameters.h"
#include "xgpio.h"
#include "xtmrctr.h"
#include "xintc.h"

#define LED_CHANNEL     1
#define TIMER_CNTR_0    0
#define RESET_VALUE     100000000

XGpio Gpio;
XIntc InterruptController;
XTmrCtr TimerCounterInst;

/* タイマー割り込み関数 */
void TimerCounterHandler(void *CallBackRef, u8 TmrCtrNumber)
{
    volatile static int cnt;

    XTmrCtr *InstancePtr = (XTmrCtr *)CallBackRef;
    if (XTmrCtr_IsExpired(InstancePtr, TmrCtrNumber)) {
        if ( ++cnt>9 )
            cnt = 0;
        xil_printf("cnt=%d\n", cnt);
        XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, cnt);
    }
}

int main()
{
    int Status;

    xil_printf("Timer Interrupt Test.\n\n");

    /* GPIOの初期化 */
    Status = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0);

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

    while(1);
    return 0;
}
