/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第7章課題                      */
/* Vivado : second_zq                      */
/* SDK    : blinkdir                       */
/* outline: プッシュSWで流れる方向を変える */

#include "xparameters.h"
#include "xgpio.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"

#define TIMER_LOAD_VALUE 8125000
#define LED_CHANNEL      1
#define BTN_CHANNEL      2

#define BTN0 1

#define BOTH 0
#define RtoL 1
#define LtoR 2

/* 各周辺回路のインスタンス変数 */
XGpio Gpio;
XScuTimer TimerInstance;
XScuGic IntcInstance;

int cnt, mode;

/* タイマー割り込み関数 */
void TimerCounterHandler(void *CallBackRef)
{
    volatile static int preBTN, nowBTN;
    XScuTimer *TimerInstancePtr = (XScuTimer *) CallBackRef;

    if (XScuTimer_IsExpired(TimerInstancePtr)) {
        XScuTimer_ClearInterruptStatus(TimerInstancePtr);
        cnt++;
        preBTN = nowBTN;
        nowBTN = XGpio_DiscreteRead(&Gpio, BTN_CHANNEL) & 1;
        if ( preBTN==0 && nowBTN==BTN0 ) {
            if ( ++mode >= 3 ) mode = 0;
            xil_printf("BTN = %x  mode = %d\n", nowBTN, mode);
        }
    }
}

/* 割り込みコントローラのドライバ初期化 */
int ScuGicInt_Init( void )
{
    int Status;
    XScuGic_Config *ConfigPtr;
    ConfigPtr = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    Status = XScuGic_CfgInitialize(&IntcInstance, ConfigPtr,
            ConfigPtr->CpuBaseAddress);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
            (Xil_ExceptionHandler) XScuGic_InterruptHandler,
            &IntcInstance);
    Xil_ExceptionEnable();
    return XST_SUCCESS;
}

/* 割り込み処理関数の登録 */
int ScuGicInt_Reg(u32 Int_Id, void *InstancePtr, void *IntHandler)
{
    int Status;
    Status = XScuGic_Connect(&IntcInstance,
            Int_Id,
            (Xil_ExceptionHandler)IntHandler,
            (void *)InstancePtr);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    XScuGic_Enable(&IntcInstance, Int_Id);
    return XST_SUCCESS;
}

int main()
{
    int Status;
    XScuTimer_Config *ConfigPtr;
    int temp, led;

    xil_printf("Timer Interrupt Test.\n\n");

    /* GPIOの初期化 */
    Status = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0);
    XGpio_SetDataDirection(&Gpio, BTN_CHANNEL, 1);

    /* タイマーのドライバ初期化 */
    ConfigPtr = XScuTimer_LookupConfig(XPAR_XSCUTIMER_0_DEVICE_ID);
    Status = XScuTimer_CfgInitialize(&TimerInstance, ConfigPtr,
                    ConfigPtr->BaseAddr);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    /* 割り込み関連初期化と割り込み処理関数の登録 */
    Status = ScuGicInt_Init();
    if (Status != XST_SUCCESS) return XST_FAILURE;
    Status = ScuGicInt_Reg(XPAR_SCUTIMER_INTR, &TimerInstance,
                           TimerCounterHandler);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    /* タイマーの初期設定と開始 */
    XScuTimer_EnableAutoReload(&TimerInstance);
    XScuTimer_LoadTimer(&TimerInstance, TIMER_LOAD_VALUE);
    XScuTimer_EnableInterrupt(&TimerInstance);
    XScuTimer_Start(&TimerInstance);

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
