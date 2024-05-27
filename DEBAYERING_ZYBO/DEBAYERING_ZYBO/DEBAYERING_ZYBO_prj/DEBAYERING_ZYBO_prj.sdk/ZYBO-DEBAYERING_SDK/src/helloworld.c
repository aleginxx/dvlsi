#include <stdio.h>
#include <unistd.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xparameters_ps.h"
#include "xaxidma.h"
#include "xtime_l.h"

#define TX_DMA_ID XPAR_PS2PL_DMA_DEVICE_ID 							//PS to PL
#define TX_DMA_MM2S_LENGTH_ADDR (XPAR_PS2PL_DMA_BASEADDR + 0x28) 	// Reports actual number of bytes transfERRORed from PS->PL (use Xil_In32 for report)

#define RX_DMA_ID XPAR_PL2PS_DMA_DEVICE_ID 							//PL to PS
#define RX_DMA_S2MM_LENGTH_ADDR (XPAR_PL2PS_DMA_BASEADDR + 0x58) 	// Reports actual number of bytes transfERRORed from PL->PS (use Xil_In32 for report)

#define TX_BUFFER (XPAR_DDR_MEM_BASEADDR + 0x10000000) 				// 0 + 256MByte
#define RX_BUFFER (XPAR_DDR_MEM_BASEADDR + 0x18000000) 				// 0 + 384MByte

/* User application global variables & defines */

#define N 0x20
#define IMG_LEN 0x400 										//(N*N)

/* Device instance definitions*/
XAxiDma TXAxiDma; //PS2PL DMA Engine
XAxiDma RXAxiDma; //PL2PS DMA Engine

int main(){

    Xil_DCacheDisable();

    XTime preExecCyclesFPGA = 0;
    XTime postExecCyclesFPGA = 0;
    XTime preExecCyclesSW = 0;
    XTime postExecCyclesSW = 0;

    print("HELLO : Start of the Program Complete\r\n");

    // User application local variables
    init_platform();

    /**************************DEVICE INITIALIZATION******************************/
    u8 *TxPtr;
    u32 *RxPtr;
    int State;

    TxPtr = (u8 *)TX_BUFFER; 					//8bit data to accelerator
    RxPtr = (u32 *)RX_BUFFER; 					//32bit data from accelerator

    // Step 1: Initialize TX-DMA Device (PS->PL)

    /* Configure & Initialize PS2PL */

    XAxiDma_Config *TXConfigPtr;

    int TXState;
    TXConfigPtr = XAxiDma_LookupConfig(TX_DMA_ID);
    if (!TXConfigPtr)
    {
        xil_printf("No Configuration found for %d\r\n", TX_DMA_ID);
        return XST_FAILURE;
    }

    TXState = XAxiDma_CfgInitialize(&TXAxiDma, TXConfigPtr);

    if (TXState != XST_SUCCESS)
    {
        xil_printf("Initialization Failed %d\r\n", TXState);
        return XST_FAILURE;
    }

    XAxiDma_IntrDisable(&TXAxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);		// Disable intERRORupts, we use polling mode
    XAxiDma_IntrDisable(&TXAxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    // Step 2: Initialize RX-DMA Device (PL->PS)
    /* Configure & Initialize PS2PL */

    XAxiDma_Config *RXConfigPtr;
    int RXState;

    RXConfigPtr = XAxiDma_LookupConfig(RX_DMA_ID);
    if (!RXConfigPtr)
    {
        xil_printf("No Configuration found for %d\r\n", RX_DMA_ID);
        return XST_FAILURE;
    }

    RXState = XAxiDma_CfgInitialize(&RXAxiDma, RXConfigPtr);

    if (RXState != XST_SUCCESS){
        xil_printf("Initialization failed %d\r\n", RXState);
        return XST_FAILURE;
    }

    XAxiDma_IntrDisable(&RXAxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);		// Disable intERRORupts, we use polling mode
    XAxiDma_IntrDisable(&RXAxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
    print("Initialization DMA Complete\r\n");

    u8 pixels[] = {103, 198, 105, 0, 81, 255, 74, 236, 41, 205, 186, 0, 242, 251, 227, 70, 124, 194, 84, 0, 9, 232, 231, 141, 118, 90, 46, 99, 51, 159, 201, 154, 102, 50, 13, 183, 49, 88, 163, 90, 37, 93, 5, 23, 88, 233, 94, 212, 171, 178, 205, 198, 155, 180, 84, 17, 14, 130, 116, 65, 33, 61, 220, 135, 112, 233, 62, 161, 65, 225, 252, 103, 62, 1, 126, 151, 234, 220, 107, 150, 143, 56, 92, 42, 236, 176, 59, 251, 50, 175, 60, 84, 236, 24, 219, 92, 2, 26, 254, 67, 251, 250, 170, 58, 251, 41, 209, 230, 5, 60, 124, 148, 117, 216, 190, 97, 137, 249, 92, 187, 168, 153, 15, 149, 177, 235, 241, 179, 5, 239, 247, 0, 233, 161, 58, 229, 202, 11, 203, 208, 72, 71, 100, 189, 31, 35, 30, 168, 28, 123, 100, 197, 20, 115, 90, 197, 94, 75, 121, 99, 59, 112, 100, 36, 17, 158, 9, 220, 170, 212, 172, 242, 27, 16, 175, 59, 51, 205, 227, 80, 72, 71, 21, 92, 187, 111, 34, 25, 186, 155, 125, 245, 11, 225, 26, 28, 127, 35, 248, 41, 248, 164, 27, 19, 181, 202, 78, 232, 152, 50, 56, 224, 121, 77, 61, 52, 188, 95, 78, 119, 250, 203, 108, 5, 172, 134, 33, 43, 170, 26, 85, 162, 190, 112, 181, 115, 59, 4, 92, 211, 54, 148, 179, 175, 226, 240, 228, 158, 79, 50, 21, 73, 253, 130, 78, 169, 8, 112, 212, 178, 138, 41, 84, 72, 154, 10, 188, 213, 14, 24, 168, 68, 172, 91, 243, 142, 76, 215, 45, 155, 9, 66, 229, 6, 196, 51, 175, 205, 163, 132, 127, 45, 173, 212, 118, 71, 222, 50, 28, 236, 74, 196, 48, 246, 32, 35, 133, 108, 251, 178, 7, 4, 244, 236, 11, 185, 32, 186, 134, 195, 62, 5, 241, 236, 217, 103, 51, 183, 153, 80, 163, 227, 20, 211, 217, 52, 247, 94, 160, 242, 16, 168, 246, 5, 148, 1, 190, 180, 188, 68, 120, 250, 73, 105, 230, 35, 208, 26, 218, 105, 106, 126, 76, 126, 81, 37, 179, 72, 132, 83, 58, 148, 251, 49, 153, 144, 50, 87, 68, 238, 155, 188, 233, 229, 37, 207, 8, 245, 233, 226, 94, 83, 96, 170, 210, 178, 208, 133, 250, 84, 216, 53, 232, 212, 102, 130, 100, 152, 217, 168, 135, 117, 101, 112, 90, 138, 63, 98, 128, 41, 68, 222, 124, 165, 137, 78, 87, 89, 211, 81, 173, 172, 134, 149, 128, 236, 23, 228, 133, 241, 140, 12, 102, 241, 124, 192, 124, 187, 34, 252, 228, 102, 218, 97, 11, 99, 175, 98, 188, 131, 180, 105, 47, 58, 255, 175, 39, 22, 147, 172, 7, 31, 184, 109, 17, 52, 45, 141, 239, 79, 137, 212, 182, 99, 53, 193, 199, 228, 36, 131, 103, 216, 237, 150, 18, 236, 69, 57, 2, 216, 229, 10, 248, 157, 119, 9, 209, 165, 150, 193, 244, 31, 149, 170, 130, 202, 108, 73, 174, 144, 205, 22, 104, 186, 172, 122, 166, 242, 180, 168, 202, 153, 178, 194, 55, 42, 203, 8, 207, 97, 201, 195, 128, 94, 110, 3, 40, 218, 76, 215, 106, 25, 237, 210, 211, 153, 76, 121, 139, 0, 34, 86, 154, 212, 24, 209, 254, 228, 217, 205, 69, 163, 145, 198, 1, 255, 201, 42, 217, 21, 1, 67, 47, 238, 21, 2, 135, 97, 124, 19, 98, 158, 105, 252, 114, 129, 205, 113, 101, 166, 62, 171, 73, 207, 113, 75, 206, 58, 117, 167, 79, 118, 234, 126, 100, 255, 129, 235, 97, 253, 254, 195, 155, 103, 191, 13, 233, 140, 126, 78, 50, 189, 249, 124, 140, 106, 199, 91, 164, 60, 2, 244, 178, 237, 114, 22, 236, 243, 1, 77, 240, 0, 16, 139, 103, 207, 153, 80, 91, 23, 159, 142, 212, 152, 10, 97, 3, 209, 188, 167, 13, 190, 155, 191, 171, 14, 213, 152, 1, 214, 229, 242, 214, 246, 125, 62, 197, 22, 142, 33, 46, 45, 175, 2, 198, 185, 99, 201, 138, 31, 112, 151, 222, 12, 86, 137, 26, 43, 33, 27, 1, 7, 13, 216, 253, 0, 22, 194, 161, 164, 227, 207, 210, 146, 0, 152, 75, 53, 97, 213, 85, 209, 108, 51, 221, 194, 188, 247, 237, 222, 19, 239, 229, 32, 199, 226, 171, 221, 164, 77, 129, 136, 28, 83, 26, 238, 235, 102, 36, 76, 59, 121, 30, 168, 172, 251, 106, 104, 243, 88, 70, 6, 71, 43, 38, 14, 13, 210, 235, 178, 31, 108, 58, 59, 192, 84, 42, 171, 186, 78, 248, 246, 199, 22, 158, 115, 17, 8, 219, 4, 96, 34, 10, 167, 77, 49, 181, 91, 3, 160, 13, 34, 13, 71, 93, 205, 155, 135, 120, 86, 213, 112, 76, 156, 134, 234, 15, 152, 242, 235, 156, 83, 13, 167, 250, 90, 216, 176, 181, 219, 80, 194, 253, 93, 9, 90, 42, 165, 226, 163, 251, 183, 19, 71, 84, 154, 49, 99, 50, 35, 78, 206, 118, 91, 117, 113, 182, 77, 33, 107, 40, 113, 46, 37, 207, 55, 128, 249, 220, 98, 156, 215, 25, 176, 30, 109, 74, 79, 209, 124, 115, 31, 74, 233, 123, 192, 90, 49, 13, 123, 156, 54, 237, 202, 91, 188, 2, 219, 181, 222, 61, 82, 182, 87, 2, 0, 196, 76, 36, 149, 200, 151, 181, 18, 128, 48, 210, 219, 97, 0, 86, 253, 22, 67, 200, 113, 255, 202, 77, 181, 168, 138, 7, 94, 225, 9, 51, 166, 85, 87, 59, 29, 238, 240, 47, 110, 32, 2, 73, 129, 226, 160, 127, 248, 227, 71, 105, 227, 17, 182, 152, 185, 65, 159, 24, 34, 168, 75, 200, 253, 162, 4, 26, 144, 244, 73, 254, 21, 75, 72, 150, 45, 232, 21, 37, 203, 92, 143, 174, 109, 69, 70, 39, 134, 229, 63, 169, 141, 138, 113, 138, 44, 117, 0, 188, 106, 238, 0, 127, 57, 2, 21, 103, 234};


	for(int i = 0; i < IMG_LEN; i ++){ //Data to accelerator

        TxPtr[i] = pixels[i];
//        printf("%d\n", i);
    }

    for(int i = 0; i < 10; i ++){

        RxPtr[i] = i;
    }

    /*****************************************************************************/
    print("Data Acquisition Complete\r\n");

    XTime_GetTime(&preExecCyclesFPGA);

    int sent, received = 0;
//    for(int i = 0; i < 10; i++)
//        printf("%lu \n",(unsigned long)RxPtr[i]);

    // Step 3 : Perform FPGA processing
    // 3a: Setup RX-DMA transaction

    State = XAxiDma_SimpleTransfer(&RXAxiDma,(UINTPTR) RxPtr,
                                        IMG_LEN*4, XAXIDMA_DEVICE_TO_DMA);
    if (State != XST_SUCCESS)
    {
        return XST_FAILURE;
    }
    print("Setup RX-DMA transaction Complete\r\n");

    // 3b: Setup TX-DMA transaction
    State = XAxiDma_SimpleTransfer(&TXAxiDma,(UINTPTR) TxPtr,
                                        IMG_LEN, XAXIDMA_DMA_TO_DEVICE);
    if (State != XST_SUCCESS)
    {
        return XST_FAILURE;
    }
    print("Setup TX-DMA transaction Complete\r\n");

    // 3c: Wait for TX-DMA & RX-DMA to finish

    sleep(5);
    sent = Xil_In32(TX_DMA_MM2S_LENGTH_ADDR);
    received = Xil_In32(RX_DMA_S2MM_LENGTH_ADDR);

    // Expecting sent == N*N && received == N*N*4
    printf("Sent = %d, Received = %d \n", sent, received);

    if (XAxiDma_Busy(&RXAxiDma,XAXIDMA_DEVICE_TO_DMA)) print("RX DEVICE -> DMA WAITING...\r\n");
    if (XAxiDma_Busy(&RXAxiDma,XAXIDMA_DMA_TO_DEVICE)) print("RX DMA -> DEVICE WAITING...\r\n");
    if (XAxiDma_Busy(&TXAxiDma,XAXIDMA_DEVICE_TO_DMA)) print("TX DEVICE -> DMA WAITING...\r\n");
    if (XAxiDma_Busy(&TXAxiDma,XAXIDMA_DMA_TO_DEVICE)) print("TX DMA -> DEVICE WAITING...\r\n");

//    for(int i = 0; i < 10; i++)
//        printf("%lu \n",(unsigned long)RxPtr[i]);

    XTime_GetTime(&postExecCyclesFPGA);

    /*****************************************************************************/
    print("RX-DMA and TX-DMA Complete\r\n");

    XTime_GetTime(&preExecCyclesSW);

    // Step 5: Perform SW processing

    int *RED_SW = (int *)malloc(N*N*sizeof(int));
    int *GREEN_SW = (int *)malloc(N*N*sizeof(int));
    int *BLUE_SW = (int *)malloc(N*N*sizeof(int));
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            int r = (j < N - 1) ? (j + 1) : 0;
            int l = (j > 0) ? (j - 1) : 0;
            int u = (i > 0) ? (i - 1) : 0;
            int d = (i < N - 1) ? (i + 1) : 0;
            int right = (j < N - 1) ? pixels[r + N * i] : 0;
            int left = (j > 0) ? pixels[i * N + l] : 0;
            int up = (i > 0) ? pixels[u * N + j] : 0;
            int down = (i < N - 1) ? pixels[d * N + j] : 0;
            int upleft = ((i > 0) && (j > 0)) ? pixels[u * N + l] : 0;
            int upright = ((i > 0) && j < (N - 1)) ? pixels[u * N + r] : 0;
            int downleft = ((i < N - 1) && (j > 0)) ? pixels[d * N + l] : 0;
            int downright = ((i < N - 1) && (j < N - 1)) ? pixels[d * N + r] : 0;
            int x = pixels[i*N+j];
            if (i % 2)
            {
                if (j % 2)
                { //green
                    RED_SW[i*N+j] = (right + left) / 2;
                    GREEN_SW[i*N+j] = x;
                    BLUE_SW[i*N+j] = (up + down) / 2;
                }
                else
                { //red
                    RED_SW[i*N+j] = x;
                    GREEN_SW[i*N+j] = (up + down + right + left) / 4;
                    BLUE_SW[i*N+j] = (upleft + upright + downleft + downright) / 4 ;
                }
            }
            else
            {
                if (j % 2)
                { //blue
                    RED_SW[i*N+j] = (upleft + upright + downleft + downright) / 4;
                    GREEN_SW[i*N+j] = (up + down + right + left) / 4;
                    BLUE_SW[i*N+j] = x;
                }
                else
                { //green
                    RED_SW[i*N+j] = (up + down) / 2;
                    GREEN_SW[i*N+j] = x;
                    BLUE_SW[i*N+j] = (right + left) / 2 ;
                }
            }
        }
    }
    print("Software Pixel Calculation Complete\r\n");
    XTime_GetTime(&postExecCyclesSW);

    /*****************************************************************************/
    // Step 6: Compare FPGA and SW results

    int *RED_HW = (int *)malloc(N*N*sizeof(int));
    int *GREEN_HW = (int *)malloc(N*N*sizeof(int));
    int *BLUE_HW = (int *)malloc(N*N*sizeof(int));
    int ERROR = 0;
    float percentage_error, FPGA_cycles, SW_cycles, speedup;



    for (int i = 0; i < IMG_LEN; i++)
    {
        RED_HW[i] = RxPtr[i] & 0x0000ff;
        GREEN_HW[i] = (RxPtr[i] & 0x00ff00) >> 2;
        BLUE_HW[i] = (RxPtr[i] & 0xff0000) >> 4;
        if (RED_HW[i] == RED_SW[i] && GREEN_HW[i] == GREEN_SW[i] && BLUE_HW[i] == BLUE_SW[i]) continue;
        else ERROR++;
    }

    // 6a: Report total percentage Error
    percentage_error = ((float)ERROR / IMG_LEN) * 100.0f; // Cast ERROR to float
    printf("Total Percentage Error: %.5f %% \n", percentage_error); // %.5f for 5 decimal places

    // 6b: Report FPGA execution time in cycles (use preExecCyclesFPGA and postExecCyclesFPGA)
    FPGA_cycles = (float)(postExecCyclesFPGA - preExecCyclesFPGA); // Cast to float
    printf("FPGA execution time in cycles: %f \n", FPGA_cycles);

    // 6c: Report SW execution time in cycles (use preExecCyclesSW and postExecCyclesSW)
    SW_cycles = (float)(postExecCyclesSW - preExecCyclesSW); // Cast to float
    printf("SW execution time in cycles: %f \n", SW_cycles);

    // 6d: Report speedup (SW_execution_time / FPGA_exection_time)
    speedup = SW_cycles / FPGA_cycles;
    printf("Speedup: %.5f \n", speedup);

    printf("END\r\n");
    printf("\n");
    cleanup_platform();

}
