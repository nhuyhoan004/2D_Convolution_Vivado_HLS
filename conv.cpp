#include "conv.h"

// Thuc hien xu ly anh su dung kernel tich chap
void doImgproc(hls::stream<uint_8_side_channel>& inStream, hls::stream<int_8_side_channel>& outStream, char kernel[KERNEL_DIM * KERNEL_DIM]) {

	// Line buffer for the input image rows
    hls::LineBuffer<KERNEL_DIM, IMG_PIXELS_COLS, unsigned char> lineBuff;
    hls::Window<KERNEL_DIM, KERNEL_DIM, short> window;

    int idxCol = 0, idxRow = 0, pixConvolved = 0;
    int waitTicks = (IMG_PIXELS_COLS * (KERNEL_DIM - 1) + KERNEL_DIM) / 2;
    int countWait = 0;
    int sentPixels = 0;

    uint_8_side_channel currPixelSideChannel;
    int_8_side_channel dataOutSideChannel;

    // Vong lap qua tat ca cac pixel cua anh
    for (int idxPixel = 0; idxPixel < (IMG_PIXELS_COLS * IMG_PIXELS_ROWS); idxPixel++) {
    	currPixelSideChannel = inStream.read();
        unsigned char pixelIn = currPixelSideChannel.data;

        lineBuff.shift_up(idxCol);
        lineBuff.insert_top(pixelIn, idxCol);

        for (int idxWinRow = 0; idxWinRow < KERNEL_DIM; idxWinRow++) {
            for (int idxWinCol = 0; idxWinCol < KERNEL_DIM; idxWinCol++) {
                short val = (short)lineBuff.getval(idxWinRow, idxWinCol + pixConvolved);
                val *= (short)kernel[idxWinRow * KERNEL_DIM + idxWinCol];
                window.insert(val, idxWinRow, idxWinCol);
            }
        }

        // Tinh gia tri dau ra cua tich chap khi cua so hop le
        short valOutput = 0;
        if ((idxRow >= KERNEL_DIM - 1) && (idxCol >= KERNEL_DIM - 1)) {
            valOutput = sumWindow(&window);
            if (valOutput < 0) valOutput = 0;
            pixConvolved++;
        }

        if (idxCol < IMG_PIXELS_COLS - 1) {
            idxCol++;
        } else {
            idxCol = 0;
            idxRow++;
            pixConvolved = 0;
        }

        countWait++;
        if (countWait > waitTicks) {
            dataOutSideChannel.data = valOutput;
            // Sao chep metadata tu stream dau vao
            dataOutSideChannel.keep = currPixelSideChannel.keep;
            dataOutSideChannel.strb = currPixelSideChannel.strb;
            dataOutSideChannel.user = currPixelSideChannel.user;
            dataOutSideChannel.last = currPixelSideChannel.last;
            dataOutSideChannel.id = currPixelSideChannel.id;
            dataOutSideChannel.dest = currPixelSideChannel.dest;
            outStream.write(dataOutSideChannel);
			sentPixels++;
        }
    }

    for (countWait = 0; countWait < waitTicks; countWait++) {
        dataOutSideChannel.data = 0;
        // Sao chep metadata tu stream dau vao
        dataOutSideChannel.keep = currPixelSideChannel.keep;
        dataOutSideChannel.strb = currPixelSideChannel.strb;
        dataOutSideChannel.user = currPixelSideChannel.user;
        dataOutSideChannel.last = (countWait < waitTicks - 1) ? 0 : 1;
        dataOutSideChannel.id = currPixelSideChannel.id;
        dataOutSideChannel.dest = currPixelSideChannel.dest;
        outStream.write(dataOutSideChannel);
    }
}
// Tong tat ca gia tri trong cua so tich chap
short sumWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short>* window) {
    short accumulator = 0;
    for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++) {
        for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++) {
            accumulator += window->getval(idxRow, idxCol);
        }
    }
    return accumulator;
}
