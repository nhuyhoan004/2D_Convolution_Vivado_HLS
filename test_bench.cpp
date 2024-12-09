#include <stdio.h>
#include <hls_opencv.h>
#include "conv.h"

// Define a simple 3x3 kernel (identity kernel in this case)
char kernel[KERNEL_DIM * KERNEL_DIM] = {
    0, 0, 0,
    0, 1, 0,
    0, 0, 0,
};

// Output image buffers for core function and reference function
char outImage[IMG_HEIGHT_OR_ROWS][IMG_WIDTH_OR_COLS];
char outImageRef[IMG_HEIGHT_OR_ROWS][IMG_WIDTH_OR_COLS];

// Reference convolution function (manual implementation using OpenCV)
void conv2dByHand(const cv::Mat& src, char dst[][IMG_WIDTH_OR_COLS], char* kernel, int kernelDim) {
    for (int i = 1; i < src.rows - 1; ++i) { // Traverse rows, skipping borders
        for (int j = 1; j < src.cols - 1; ++j) { // Traverse cols, skipping borders
            int sum = 0;
            // Perform convolution using the kernel
            for (int ki = 0; ki < kernelDim; ++ki) {
                for (int kj = 0; kj < kernelDim; ++kj) {
                    sum += kernel[ki * kernelDim + kj] * src.at<unsigned char>(i + ki - 1, j + kj - 1);
                }
            }
            // Clamp and normalize the result to [0, 255]
            dst[i][j] = std::max(0, std::min(255, sum / 8));
        }
    }
}

// Function to save an image to a file using OpenCV
void saveImage(const std::string& filename, const cv::Mat& image) {
    cv::imwrite(filename, image);
}

// Main function to perform image processing
int main() {
    // Print the name of the input image file
    printf("Load image %s\n", INPUT_IMAGE_CORE);

    // Load the input image in grayscale format
    cv::Mat imageSrc = cv::imread(INPUT_IMAGE_CORE, cv::IMREAD_GRAYSCALE);
    if (imageSrc.empty()) { // Check if image loading failed
        printf("Error: Cannot load image %s\n", INPUT_IMAGE_CORE);
        return -1;
    }
    printf("Image Rows: %d Cols: %d\n", imageSrc.rows, imageSrc.cols);

    // Create HLS streams for input and output
    hls::stream<uint_8_side_channel> inputStream;
    hls::stream<int_8_side_channel> outputStream;

    // Create OpenCV Mat objects for output images
    cv::Mat imgCvOut(cv::Size(imageSrc.cols, imageSrc.rows), CV_8UC1, outImage, cv::Mat::AUTO_STEP);
    cv::Mat imgCvOutRef(cv::Size(imageSrc.cols, imageSrc.rows), CV_8UC1, outImageRef, cv::Mat::AUTO_STEP);

    // Populate input HLS stream with pixel data from the input image
    for (int idxRows = 0; idxRows < imageSrc.rows; idxRows++) {
        for (int idxCols = 0; idxCols < imageSrc.cols; idxCols++) {
            uint_8_side_channel valIn;
            valIn.data = imageSrc.at<unsigned char>(idxRows, idxCols); // Copy pixel value
            valIn.keep = 1; // AXI stream flags (dummy values)
            valIn.strb = 1;
            valIn.user = 1;
            valIn.id = 0;
            valIn.dest = 0;
            inputStream << valIn; // Push pixel data into the stream
        }
    }

    // Call the reference convolution function
    printf("Calling Reference function\n");
    conv2dByHand(imageSrc, outImageRef, kernel, KERNEL_DIM);
    printf("Reference function ended\n");

    // Save the reference output image
    saveImage(OUTPUT_IMAGE_REF, imgCvOutRef);

    // Call the core hardware-accelerated function
    printf("Calling Core function\n");
    doImgproc(inputStream, outputStream, kernel);
    printf("Core function ended\n");

    // Read processed pixel data from the output stream and store it in the output image buffer
    for (int idxRows = 0; idxRows < imageSrc.rows; idxRows++) {
        for (int idxCols = 0; idxCols < imageSrc.cols; idxCols++) {
            int_8_side_channel valOut;
            outputStream.read(valOut); // Read pixel data from the stream
            outImage[idxRows][idxCols] = valOut.data; // Store in the output buffer
        }
    }

    // Save the output image produced by the core function
    saveImage(OUTPUT_IMAGE_CORE, imgCvOut);

    // Print completion message
    printf("Image processing completed. Results saved.\n");
    return 0;
}
