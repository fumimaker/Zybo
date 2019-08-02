/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第5章                           */
/* Vivado : second                          */
/* SDK    : blinkspeed                      */
/* outline: LEDの点滅速度をプッシュSWで制御 */

#include "xparameters.h"
#include "xgpio.h"
#include "xtmrctr.h"
#include "xintc.h"

#define LED_CHANNEL     1
#define BTN_CHANNEL     2
#define TIMER_CNTR_0    0
#define RESET_VALUE     2500000

#define UPBTN 1
#define DNBTN 2

XGpio Gpio;
XIntc InterruptController;
XTmrCtr TimerCounterInst;

int cnt, speed;

/* タイマー割り込み関数 */
void TimerCounterHandler(void *CallBackRef, u8 TmrCtrNumber)
{
    volatile static int preBTN, nowBTN;

    XTmrCtr *InstancePtr = (XTmrCtr *)CallBackRef;
    if (XTmrCtr_IsExpired(InstancePtr, TmrCtrNumber)) {
        cnt++;
        preBTN = nowBTN;
        nowBTN = XGpio_DiscreteRead(&Gpio, BTN_CHANNEL) & 3;
        if ( (preBTN & UPBTN)==0 && (nowBTN & UPBTN)==UPBTN ) {
            if ( ++speed >= 4 ) speed = 0;
            xil_printf("BTN = %x  speed = %d\r\n", nowBTN, speed);
        }
        if ( (preBTN & DNBTN)==0 && (nowBTN & DNBTN)==DNBTN ) {
            if ( --speed < 0 ) speed = 3;
            xil_printf("BTN = %x  speed = %d\r\n", nowBTN, speed);
        }
    }
}

int main()
{
    int Status;
    int led;

    xil_printf("Timer Interrupt Test.\r\n\n");

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
        switch ( (cnt/(1<<(4-speed))) % 6 ) {
            case 0: led = 0x1; break;
            case 1: led = 0x2; break;
            case 2: led = 0x4; break;
            case 3: led = 0x8; break;
            case 4: led = 0x4; break;
            case 5: led = 0x2; break;
            default:led = 0x0; break;
        }
        XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, led);
    }

    return 0;
}
