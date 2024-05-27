#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "sleep.h"
#include <inttypes.h> //to set 32 bit output
#include "xil_types.h"
#include "xil_io.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#define MY_IP_BASEADDR 0x43C00000

int main() {
	init_platform();

	int32_t B,A;
	int32_t y;
	int valid_out, valid_out_temp;
	int RST;
	int rst, valid_in, data_in;

	 while(1) {

		 valid_out =0;


		xil_printf("Give input N\n");
		scanf("%d",&data_in);

		xil_printf("give reset\n");
		scanf("%d",&rst);

		xil_printf("give valid in\n");
		scanf("%d",&valid_in);

		valid_in = valid_in << 8;
		RST =rst;
		rst =RST << 9;
		A = rst | valid_in | data_in;

		//for print input
		xil_printf("A is: %d, ", A);

		Xil_Out32((MY_IP_BASEADDR+0x00), A); //write to FIR to reg0

		usleep(5000); // delay
		if( valid_in == 0  || RST == 1 )  {
			 B = Xil_In32(MY_IP_BASEADDR+0x04);
			  valid_out = B &  0x80000;
			  xil_printf("valid_out   is: %d \n",  valid_out);
		}
		else  {
			if (valid_out == 0 ) {
				B = Xil_In32(MY_IP_BASEADDR+0x04);
				valid_out = B &  0x80000;
				xil_printf("B  is: %d , ",  B);
			   }
		y = B & 0x7FFFF; //mask for y
		xil_printf("Y_out is: %u, ",y);
		valid_out_temp = valid_out << 19;
		xil_printf("valid_out is: %u \n", valid_out_temp);
	   }
	 }
	cleanup_platform();
	return 0;
}
