#ifndef CONVOLUTION2D_H
#define CONVOLUTION2D_H

// Define the dimensions of input, kernel, and output matrices
#define IN_ROWS 5        // Số hàng của ma trận đầu vào
#define IN_COLS 5        // Số cột của ma trận đầu vào
#define K_ROWS 3         // Số hàng của kernel (bộ lọc)
#define K_COLS 3         // Số cột của kernel (bộ lọc)
#define OUT_ROWS (IN_ROWS - K_ROWS + 1) // Số hàng của ma trận đầu ra
#define OUT_COLS (IN_COLS - K_COLS + 1) // Số cột của ma trận đầu ra

// Top-level function for 2D convolution
// Cấu hình giao diện được thêm thông qua file .cpp
void conv2D_hw(int input[IN_ROWS][IN_COLS], int kernel[K_ROWS][K_COLS], int output[OUT_ROWS][OUT_COLS]);

#endif // CONVOLUTION2D_H
