#include "core.h"

void doImgproc(hls::stream<uint_8_side_channel> &inStream, hls::stream<int_8_side_channel> &outStream, char kernel[KERNEL_DIM*KERNEL_DIM],int operation)
{
	#pragma HLS INTERFACE s_axilite port=kernel bundle=KERNEL_BUS
	// #pragma HLS INTERFACE s_axilite port=operation bundle=CRTL_BUS
	#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
	#pragma HLS INTERFACE axis port=inStream
	// #pragma HLS INTERFACE axis port=inStream2
	#pragma HLS INTERFACE axis port=outStream
	//Define the line buffer and setting the internal dependency to false through program
	hls::LineBuffer<KERNEL_DIM, IMG_WIDTH_OR_COLS, unsigned char> lineBuff;  //Define the size of line buffer ��3  of linebuffer which size of 240��
	hls::Window<KERNEL_DIM,KERNEL_DIM,short> window;  //Define the size of the window

	//Index used to keep track of row, clo
	int idxCol = 0;
	int idxRow = 0;
	// int pixConvolved = 0;
	//Calculate delay to fix line-buffer offset
	// int waitTicks = (IMG_WIDTH_OR_COLS*(KERNEL_DIM-1)+KERNEL_DIM)/2;
	// int countWait = 0;
	// int sentPixels = 0;

	int_8_side_channel dataOutSideChannel;
	uint_8_side_channel currPixelSideChannel;

	// int_8_side_channel dataOutSideChannel2;
	// uint_8_side_channel currPixelSideChannel2;

	//Iterate on all pixels for 320x240 image, the HLS PIPELINE improves the latency
	for(int idxPixel = 0; idxPixel < (IMG_WIDTH_OR_COLS*IMG_HEIGHT_OR_ROWS); idxPixel++) // Sweep all the pixels
	{
		#pragma HLS PIPELINE
		//Read and cache
		currPixelSideChannel = inStream.read();
		//Get the pixel data
		unsigned char pixelIn = currPixelSideChannel.data;


		// currPixelSideChannel2 = inStream2.read();
		//Get the pixel data
		// unsigned char pixelIn2 = currPixelSideChannel2.data;

		//Put data on the Linebuffer
		lineBuff.shift_up(idxCol);
		lineBuff.insert_top(pixelIn,idxCol);

		// Fill the convolution window with values from the line buffer
        for (int idxWinRow = 0; idxWinRow < KERNEL_DIM; idxWinRow++) {
            for (int idxWinCol = 0; idxWinCol < KERNEL_DIM; idxWinCol++) {
                short val = (short)lineBuff.getval(idxWinRow, idxWinCol); // Get value from line buffer
                val *= (short)kernel[idxWinRow * KERNEL_DIM + idxWinCol]; // Multiply by kernel
                window.insert(val, idxWinRow, idxWinCol);                 // Insert into the window
            }
        }

		//Avoid calculate out of the image boundaries
		short valOutput = 0;
        if (idxRow >= KERNEL_DIM - 1 && idxCol >= KERNEL_DIM - 1) {
            valOutput = sumWindow(&window); // Compute convolution
            valOutput = valOutput / 8;     // Scale the result

            // Ensure the value is within valid range
            if (valOutput < 0)
                valOutput = 0;
        }

		// Update row and column indices
        if (idxCol < IMG_WIDTH_OR_COLS - 1) {
            idxCol++; // Move to the next column
        } else {
            idxCol = 0; // Move to the next row
            idxRow++;
        }

		// valOutput = valOutput + (short)pixelIn2;
		/*
		 * Fix the line buffer delay, on a 320x240image with 3x3 kernel, the delay will be
		 * ((240*2) +3)/2 = 241
		 * So we wait for 241 ticks send the results than out more 241 zeros
		 */

		// Write the result to the output stream
        dataOutSideChannel.data = valOutput;
        dataOutSideChannel.keep = currPixelSideChannel.keep;
        dataOutSideChannel.strb = currPixelSideChannel.strb;
        dataOutSideChannel.user = currPixelSideChannel.user;
        dataOutSideChannel.last = currPixelSideChannel.last;
        dataOutSideChannel.id = currPixelSideChannel.id;
        dataOutSideChannel.dest = currPixelSideChannel.dest;

        outStream.write(dataOutSideChannel);
	}
}

/** short minWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short>*window)
{
	unsigned char minVal = 255;
	//look for the smallest value in the array
	for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++)
	{
		minWindow_label2:for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++)
		{
			unsigned char valInWindow;
			valInWindow = (unsigned char)window->getval(idxRow, idxCol);
			if (valInWindow < minVal)
				minVal = valInWindow;
		}
	}
	return minVal;
} */

//Dilate will get the maximum value on the window, which in our case will always be rectangular and filled with one
/** short maxWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short>*window)
{
	unsigned char maxVal = 0;
	//Look for the max value in the array
	for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++)
	{
		maxWindow_label3:for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++)
		{
			unsigned char valInWindow;
			valInWindow = (unsigned char)window->getval(idxRow, idxCol);
			if(valInWindow > maxVal)
				maxVal= valInWindow;
		}
	}
	return maxVal;
} */

//Sum all values inside window (Already multiplied by the kernel)
/** short sumWindow(hls::Window<KERNEL_DIM, KERNEL_DIM,short>*window)
{
	short accumulator = 0;

	//Iterate on the window multiplying and accumulating the kernel and sampling window
	for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++)
	{
		sumWindow_label4:for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++)
		{
			accumulator = accumulator + (short)window->getval(idxRow, idxCol);
		}
	}
	return accumulator;
} */
// Sum all values in the convolution window
short sumWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short> *window) {
    short accumulator = 0;

    for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++) {
        for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++) {
            accumulator += (short)window->getval(idxRow, idxCol);
        }
    }
    return accumulator;
}