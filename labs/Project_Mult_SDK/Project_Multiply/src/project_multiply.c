#include "xparameters.h"
#include "xgpio.h"
#include "xutil.h"
#include "XScuTimer.h"

#define ONE_SECOND 333000000 // half of the CPU clock speed
// Matrix size
#define MSIZE 4

//instead of #include "led_ip.h"
#define LED_IP_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (Xuint32)(Data))

#define LED_IP_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

//instead of #include "matrix_ip.h"
#define MATRIX_IP_S_AXI_SLV_REG0_OFFSET 0
#define MATRIX_IP_S_AXI_SLV_REG1_OFFSET 4
#define MATRIX_IP_S_AXI_SLV_REG2_OFFSET 8
#define MATRIX_IP_S_AXI_SLV_REG3_OFFSET 12

#define MATRIX_IP_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (Xuint32)(Data))

#define MATRIX_IP_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))


typedef union {
  unsigned char comp[MSIZE];
  unsigned int vect;
} vectorType;

typedef vectorType VectorArray[MSIZE];

void setInputMatrices(VectorArray A,VectorArray B)
	{
	    A[0].vect = 0x04030201;
	    B[0].vect = 0x01010101;
	    A[1].vect = 0x08070605;
	    B[1].vect = 0x02020202;
	    A[2].vect = 0x0C0B0A09;
	    B[2].vect = 0x03030303;
	    A[3].vect = 0x100F0E0D;
	    B[3].vect = 0x04040404;
	}

void displayMatrix(VectorArray input)
{
	xil_printf("Matrix :\n");
	xil_printf("%2d %2d %2d %2d\n", input[0].comp[0],
								input[0].comp[1],
								input[0].comp[2],
								input[0].comp[3]);
	xil_printf("%2d %2d %2d %2d\n", input[1].comp[0],
								input[1].comp[1],
								input[1].comp[2],
								input[1].comp[3]);
	xil_printf("%2d %2d %2d %2d\n", input[2].comp[0],
								input[2].comp[1],
								input[2].comp[2],
								input[2].comp[3]);
	xil_printf("%2d %2d %2d %2d\n\n", input[3].comp[0],
								input[3].comp[1],
								input[3].comp[2],
								input[3].comp[3]);

}

void multiMatrixSoft(VectorArray A,VectorArray B, VectorArray P)
{
	int row, col, k;
	for (row = 0; row < MSIZE; row++)
	{
		for (col = 0; col < MSIZE; col++)
		{
			P[row].comp[col] = 0;
			for (k = 0; k < MSIZE; k++)
				P[row].comp[col] += A[row].comp[k] * B[col].comp[k];
		}
	}

}

void multiMatrixHard(VectorArray A,VectorArray B, VectorArray P)
{
	int row, col;
	for (row = 0; row < MSIZE; row++)
	{
		for (col = 0; col < MSIZE; col++)
		{
			MATRIX_IP_mWriteReg(XPAR_MATRIX_IP_0_S_AXI_BASEADDR,MATRIX_IP_S_AXI_SLV_REG0_OFFSET,A[row].vect);
			MATRIX_IP_mWriteReg(XPAR_MATRIX_IP_0_S_AXI_BASEADDR,MATRIX_IP_S_AXI_SLV_REG1_OFFSET,B[col].vect);
			P[row].comp[col] = MATRIX_IP_mReadReg(XPAR_MATRIX_IP_0_S_AXI_BASEADDR,MATRIX_IP_S_AXI_SLV_REG2_OFFSET);
		}
	}

}



//====================================================

int main(void) {

	XGpio dip, push;
	XScuTimer Timer;  /* Cortex A9 SCU Private Timer Instance */
	XScuTimer_Config *ConfigPtr;
	int value, skip, psb_check, dip_check, status, timerCounter, time1, time2;
	VectorArray AInst;
	VectorArray BTinst;
	VectorArray PInst;
	
	xil_printf("-- Start of the Program --\r\n");
	xil_printf("Enter choice: 1 (SW->Leds), 2 (Timer->Leds), 3 (Matrix), 4 (Exit) \r\n");

	XGpio_Initialize(&dip, XPAR_SW_8BIT_DEVICE_ID);
	XGpio_SetDataDirection(&dip, 1, 0xffffffff);

	XGpio_Initialize(&push, XPAR_BTNS_5BIT_DEVICE_ID);
	XGpio_SetDataDirection(&push, 1, 0xffffffff);

	ConfigPtr = XScuTimer_LookupConfig (XPAR_PS7_SCUTIMER_0_DEVICE_ID);
	status = XScuTimer_CfgInitialize (&Timer, ConfigPtr, ConfigPtr->BaseAddr);

	if(status != XST_SUCCESS){
		xil_printf("Timer init() failed\r\n");
		return XST_FAILURE;
	}

	// Load timer with delay
	XScuTimer_LoadTimer(&Timer, ONE_SECOND);
	// Set AutoLoad mode
	XScuTimer_EnableAutoReload(&Timer);

	timerCounter = 0;

	while (1) {
		xil_printf("CMD:> ");
		/* Read an input value from the console. */
		value = inbyte();
		skip = inbyte(); //CR
		skip = inbyte(); //LF
		switch (value) {
			case '1':
				dip_check = XGpio_DiscreteRead(&dip, 1);
				LED_IP_mWriteReg(XPAR_LED_IP_S_AXI_BASEADDR, 0, dip_check);
				break;
			case '2':
				// Start the timer
				XScuTimer_Start(&Timer);
				if(XScuTimer_IsExpired(&Timer))
				{
					XScuTimer_LoadTimer(&Timer, ONE_SECOND);
					timerCounter = (timerCounter + 1) % 256;
					LED_IP_mWriteReg(XPAR_LED_IP_S_AXI_BASEADDR, 0, XScuTimer_GetCounterValue(&Timer));
				}

				break;
			case '3':
				setInputMatrices(AInst, BTinst);
				displayMatrix(AInst);
				displayMatrix(BTinst);

//				XScuTimer_Start(&Timer);
				// Software matrix
				time1 = XScuTimer_GetCounterValue(&Timer);
				multiMatrixSoft(AInst, BTinst, PInst);
				time2 = XScuTimer_GetCounterValue(&Timer);

				xil_printf("SW time2: %d\n", time2);
				xil_printf("SW time1: %d\n", time1);
				xil_printf("SW time: %d\n\n", time1-time2);
				displayMatrix(PInst);

				// Hardware matrix
				time1 = XScuTimer_GetCounterValue(&Timer);
				multiMatrixHard(AInst, BTinst, PInst);
				time2 = XScuTimer_GetCounterValue(&Timer);

				XScuTimer_Stop(&Timer);

				xil_printf("HW time2: %d\n", time2);
				xil_printf("HW time1: %d\n", time1);
				xil_printf("HW time: %d\n\n", time1-time2);
				displayMatrix(PInst);
				break;
			case '4':
				// Exit
				return XST_SUCCESS;
				break;
			default :
				break;
		}

	}
}
/*
	psb_check = XGpio_DiscreteRead(&push, 1);
	xil_printf("Push Buttons Status %x\r\n", psb_check);
	dip_check = XGpio_DiscreteRead(&dip, 1);
	xil_printf("DIP Switch Status %x\r\n", dip_check);

	// output dip switches value on LED_ip device
	LED_IP_mWriteReg(XPAR_LED_IP_S_AXI_BASEADDR, 0, dip_check);

	for (i = 0; i < 9999999; i++);
*/
