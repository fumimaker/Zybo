/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��7��                           */
/* Vivado : second_zq                       */
/* SDK    : blinkspeed                      */
/* outline: LED�̓_�ő��x���v�b�V��SW�Ő��� */

#include "xparameters.h"
#include "xgpio.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"

#define TIMER_LOAD_VALUE 8125000
#define LED_CHANNEL      1
#define BTN_CHANNEL      2

#define UPBTN 1
#define DNBTN 2

/* �e���Ӊ�H�̃C���X�^���X�ϐ� */
XGpio Gpio;
XScuTimer TimerInstance;
XScuGic IntcInstance;

int cnt, speed;

/* �^�C�}�[���荞�݊֐� */
void TimerCounterHandler(void *CallBackRef)
{
    volatile static int preBTN, nowBTN;
    XScuTimer *TimerInstancePtr = (XScuTimer *) CallBackRef;

    if (XScuTimer_IsExpired(TimerInstancePtr)) {
        XScuTimer_ClearInterruptStatus(TimerInstancePtr);
        cnt++;
        preBTN = nowBTN;
        nowBTN = XGpio_DiscreteRead(&Gpio, BTN_CHANNEL) & 3;
        if ( (preBTN & UPBTN)==0 && (nowBTN & UPBTN)==UPBTN ) {
            if ( ++speed >= 4 ) speed = 0;
            xil_printf("BTN = %x  speed = %d\n", nowBTN, speed);
        }
        if ( (preBTN & DNBTN)==0 && (nowBTN & DNBTN)==DNBTN ) {
            if ( --speed < 0 ) speed = 3;
            xil_printf("BTN = %x  speed = %d\n", nowBTN, speed);
        }
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
    int led;

    xil_printf("Timer Interrupt Test.\n\n");

    /* GPIO�̏����� */
    Status = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0);
    XGpio_SetDataDirection(&Gpio, BTN_CHANNEL, 1);

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
