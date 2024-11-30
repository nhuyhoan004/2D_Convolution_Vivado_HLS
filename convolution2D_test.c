#include <stdio.h>
#include "convolution2D.h"

#define IN_ROWS 5
#define IN_COLS 5
#define K_ROWS 3
#define K_COLS 3
#define OUT_ROWS (IN_ROWS - K_ROWS + 1)
#define OUT_COLS (IN_COLS - K_COLS + 1)

// 2D Convolution function
void conv2D(int input[IN_ROWS][IN_COLS], int kernel[K_ROWS][K_COLS], int output[OUT_ROWS][OUT_COLS]) {
    for (int i = 0; i < OUT_ROWS; i++) {
        for (int j = 0; j < OUT_COLS; j++) {
            output[i][j] = 0;
            for (int ki = 0; ki < K_ROWS; ki++) {
                for (int kj = 0; kj < K_COLS; kj++) {
                    output[i][j] += input[i + ki][j + kj] * kernel[ki][kj];
                }
            }
        }
    }
}

// Testbench
int main() {
    int input[IN_ROWS][IN_COLS] = {
        {1, 2, 3, 4, 5},
        {5, 6, 7, 8, 9},
        {9, 10, 11, 12, 13},
        {13, 14, 15, 16, 17},
        {17, 18, 19, 20, 21}
    };

    int kernel[K_ROWS][K_COLS] = {
        {1, 0, -1},
        {1, 0, -1},
        {1, 0, -1}
    };

    int output[OUT_ROWS][OUT_COLS];

    conv2D(input, kernel, output);

    printf("Output matrix:\n");
    for (int i = 0; i < OUT_ROWS; i++) {
        for (int j = 0; j < OUT_COLS; j++) {
            printf("%d ", output[i][j]);
        }
        printf("\n");
    }

    return 0;
}
