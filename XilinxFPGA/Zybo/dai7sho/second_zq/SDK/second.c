/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��7��                  */
/* Vivado : second_zq              */
/* SDK    : second                 */
/* outline: �^�C�}�[���荞�݃e�X�g */

#include "xparameters.h"
#include "xgpio.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"

#define TIMER_LOAD_VALUE 325000000  /* CPU���g��650MHz��1/2 */
#define LED_CHANNEL      1          /* ch1:LED ch2:BTN     */

/* �e���Ӊ�H�̃C���X�^���X�ϐ� */
XGpio Gpio;
XScuTimer TimerInstance;
XScuGic IntcInstance;

/* �^�C�}�[���荞�݊֐� */
void TimerCounterHandler(void *CallBackRef)
{
    volatile static int cnt;
    XScuTimer *TimerInstancePtr = (XScuTimer *) CallBackRef;

    if (XScuTimer_IsExpired(TimerInstancePtr)) {
        XScuTimer_ClearInterruptStatus(TimerInstancePtr);
        if ( ++cnt>9 ) cnt = 0;
        xil_printf("cnt=%d\n", cnt);
        XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, cnt);
    }
}

/* ���荞�݃R���g���[���̃h���C�o������ */
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

/* ���荞�ݏ����֐��̓o�^ */
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

    xil_printf("Timer Interrupt Test.\n\n");

    /* GPIO�̏����� */
    Status = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0);

    /* �^�C�}�[�̃h���C�o������ */
    ConfigPtr = XScuTimer_LookupConfig(XPAR_XSCUTIMER_0_DEVICE_ID);
    Status = XScuTimer_CfgInitialize(&TimerInstance, ConfigPtr,
                    ConfigPtr->BaseAddr);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    /* ���荞�݊֘A�������Ɗ��荞�ݏ����֐��̓o�^ */
    Status = ScuGicInt_Init();
    if (Status != XST_SUCCESS) return XST_FAILURE;
    Status = ScuGicInt_Reg(XPAR_SCUTIMER_INTR, &TimerInstance,
                           TimerCounterHandler);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    /* �^�C�}�[�̏����ݒ�ƊJ�n */
    XScuTimer_EnableAutoReload(&TimerInstance);
    XScuTimer_LoadTimer(&TimerInstance, TIMER_LOAD_VALUE);
    XScuTimer_EnableInterrupt(&TimerInstance);
    XScuTimer_Start(&TimerInstance);

    while(1);
    return 0;
}
