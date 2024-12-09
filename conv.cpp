#include "conv.h"

// Image processing function using convolution
void doImgproc(hls::stream<uint_8_side_channel>& inStream, hls::stream<int_8_side_channel>& outStream, char kernel[KERNEL_DIM * KERNEL_DIM]) {
    // Line buffer to hold image rows
    hls::LineBuffer<KERNEL_DIM, IMG_WIDTH_OR_COLS, unsigned char> lineBuff;

    // Sliding window for kernel convolution
    hls::Window<KERNEL_DIM, KERNEL_DIM, short> window;

    // Image dimensions and state variables
    int idxCol = 0, idxRow = 0, pixConvolved = 0;

    // Calculate delay (in ticks) for the pipeline to start producing valid output
    int waitTicks = (IMG_WIDTH_OR_COLS * (KERNEL_DIM - 1) + KERNEL_DIM) / 2;
    int countWait = 0;

    // Input and output pixel side-channel variables
    uint_8_side_channel currPixelSideChannel;
    int_8_side_channel dataOutSideChannel;

    // Iterate through all pixels in the image
    for (int idxPixel = 0; idxPixel < (IMG_WIDTH_OR_COLS * IMG_HEIGHT_OR_ROWS); idxPixel++) {
        #pragma HLS PIPELINE
        // Read input pixel from the stream
        currPixelSideChannel = inStream.read();
        unsigned char pixelIn = currPixelSideChannel.data;

        // Shift the line buffer and insert the current pixel
        lineBuff.shift_up(idxCol);
        lineBuff.insert_top(pixelIn, idxCol);

        // Populate the convolution window
        for (int idxWinRow = 0; idxWinRow < KERNEL_DIM; idxWinRow++) {
            for (int idxWinCol = 0; idxWinCol < KERNEL_DIM; idxWinCol++) {
                short val = (short)lineBuff.getval(idxWinRow, idxWinCol + pixConvolved);
                val *= (short)kernel[idxWinRow * KERNEL_DIM + idxWinCol];
                window.insert(val, idxWinRow, idxWinCol);
            }
        }

        // Compute convolution output
        short valOutput = 0;
        if ((idxRow >= KERNEL_DIM - 1) && (idxCol >= KERNEL_DIM - 1)) {
            valOutput = sumWindow(&window) / 8; // Normalize the sum by dividing by 8
            if (valOutput < 0) valOutput = 0; // Ensure non-negative output
            pixConvolved++;
        }

        // Update column and row indices
        if (idxCol < IMG_WIDTH_OR_COLS - 1) {
            idxCol++;
        } else {
            idxCol = 0;
            idxRow++;
            pixConvolved = 0;
        }

        // Delay initial writes to output until pipeline is ready
        countWait++;
        if (countWait > waitTicks) {
            // Write the processed pixel to the output stream
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

    // Flush remaining output after processing all input pixels
    for (countWait = 0; countWait < waitTicks; countWait++) {
        dataOutSideChannel.data = 0; // Pad with zeros
        dataOutSideChannel.keep = currPixelSideChannel.keep;
        dataOutSideChannel.strb = currPixelSideChannel.strb;
        dataOutSideChannel.user = currPixelSideChannel.user;
        dataOutSideChannel.last = (countWait < waitTicks - 1) ? 0 : 1; // Mark the last output
        dataOutSideChannel.id = currPixelSideChannel.id;
        dataOutSideChannel.dest = currPixelSideChannel.dest;
        outStream.write(dataOutSideChannel);
    }
}

// Function to sum all elements in the sliding window
short sumWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short>* window) {
    short accumulator = 0;
    // Accumulate values from the window
    for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++) {
        for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++) {
            accumulator += window->getval(idxRow, idxCol);
        }
    }
    return accumulator; // Return the accumulated sum
}
