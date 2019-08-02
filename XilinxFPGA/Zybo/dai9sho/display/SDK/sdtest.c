/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��9�� �R����           */
/* project: display                */
/* outline: SD�J�[�h�ǂݏo���e�X�g */

#include "xparameters.h"
#include "xsdps.h"
#include "xil_printf.h"
#include "ff.h"

int main()
{
    FIL fil;
    FATFS fatfs;
    FRESULT Res;
    UINT NumBytesRead;
    u32 FileSize = 8*1024;
    TCHAR *Path = "0:/";

    char FileName[32] = "display.xdc";
    unsigned char buff[8200];
    int i;
    /* SD�J�[�h�̃}�E���g */
    Res = f_mount(&fatfs, Path, 0);
    if (Res != FR_OK) {
        xil_printf("ERROR(%d): f_mount\n", Res);
        return XST_FAILURE;
    }
    /* �t�@�C���̃I�[�v�� */
    Res = f_open(&fil, FileName, FA_READ);
    if (Res != FR_OK) {
        xil_printf("ERROR(%d): f_open\n", Res);
        return XST_FAILURE;
    }
    while(1) {
    	/* �t�@�C���̓ǂݏo�� */
    	Res = f_read(&fil, buff, FileSize, &NumBytesRead);
    	if (Res != FR_OK) {
    		xil_printf("ERROR(%d): f_read\n", Res);
    		return XST_FAILURE;
    	}
    	/* �����ŕ\�� */
    	for ( i=0; i<NumBytesRead; i++ ) {
    		xil_printf("%c", buff[i]);
    	}
    	if ( NumBytesRead<FileSize )
    		break;
    }
    /* �t�@�C���̃N���[�Y */
	Res = f_close(&fil);
    if (Res != FR_OK) {
        xil_printf("ERROR(%d): f_close\n", Res);
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}
