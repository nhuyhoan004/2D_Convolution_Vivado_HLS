#include "convolution2D.h"


void conv2D_hw(int input[IN_ROWS][IN_COLS], int kernel[K_ROWS][K_COLS], int output[OUT_ROWS][OUT_COLS]) {
    for (int i = 0; i < OUT_ROWS; i++) {
        for (int j = 0; j < OUT_COLS; j++) {
// #pragma 
            output[i][j] = 0;
            for (int ki = 0; ki < K_ROWS; ki++) {
                for (int kj = 0; kj < K_COLS; kj++) {
// #pragma 
                    output[i][j] += input[i + ki][j + kj] * kernel[ki][kj];
                }
            }
        }
    }
}
