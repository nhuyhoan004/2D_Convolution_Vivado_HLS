#include <stdio.h>
#include <hls_opencv.h>
#include "core.h"

char kernel[KERNEL_DIM * KERNEL_DIM] = {
    0, 0, 0,
    0, 1, 0,
    0, 0, 0,
};

//
char outImage[IMG_HEIGHT_OR_ROWS][IMG_WIDTH_OR_COLS];
char outImageRef[IMG_HEIGHT_OR_ROWS][IMG_WIDTH_OR_COLS];

void conv2dByHand(const cv::Mat& src, char dst[][IMG_WIDTH_OR_COLS], char* kernel, int kernelDim) {
    for (int i = 1; i < src.rows - 1; ++i) {
        for (int j = 1; j < src.cols - 1; ++j) {
            int sum = 0;
            for (int ki = 0; ki < kernelDim; ++ki) {
                for (int kj = 0; kj < kernelDim; ++kj) {
                    sum += kernel[ki * kernelDim + kj] * src.at<unsigned char>(i + ki - 1, j + kj - 1);
                }
            }
            dst[i][j] = std::max(0, std::min(255, sum / 8));
        }
    }
}

void saveImage(const std::string& filename, const cv::Mat& image) {
    cv::imwrite(filename, image);
}

int main() {
    printf("Load image %s\n", INPUT_IMAGE_CORE);

    //
    cv::Mat imageSrc = cv::imread(INPUT_IMAGE_CORE, cv::IMREAD_GRAYSCALE);
    if (imageSrc.empty()) {
        printf("Error: Cannot load image %s\n", INPUT_IMAGE_CORE);
        return -1;
    }
    printf("Image Rows: %d Cols: %d\n", imageSrc.rows, imageSrc.cols);

    hls::stream<uint_8_side_channel> inputStream;
    hls::stream<int_8_side_channel> outputStream;

    cv::Mat imgCvOut(cv::Size(imageSrc.cols, imageSrc.rows), CV_8UC1, outImage, cv::Mat::AUTO_STEP);
    cv::Mat imgCvOutRef(cv::Size(imageSrc.cols, imageSrc.rows), CV_8UC1, outImageRef, cv::Mat::AUTO_STEP);

    //
    for (int idxRows = 0; idxRows < imageSrc.rows; idxRows++) {
        for (int idxCols = 0; idxCols < imageSrc.cols; idxCols++) {
            uint_8_side_channel valIn;
            valIn.data = imageSrc.at<unsigned char>(idxRows, idxCols);
            valIn.keep = 1;
            valIn.strb = 1;
            valIn.user = 1;
            valIn.id = 0;
            valIn.dest = 0;
            inputStream << valIn;
        }
    }

    //
    printf("Calling Reference function\n");
    conv2dByHand(imageSrc, outImageRef, kernel, KERNEL_DIM);
    printf("Reference function ended\n");

    //
    saveImage(OUTPUT_IMAGE_REF, imgCvOutRef);

    //
    printf("Calling Core function\n");
    doImgproc(inputStream, outputStream, kernel);
    printf("Core function ended\n");

    //
    for (int idxRows = 0; idxRows < imageSrc.rows; idxRows++) {
        for (int idxCols = 0; idxCols < imageSrc.cols; idxCols++) {
            int_8_side_channel valOut;
            outputStream.read(valOut);
            outImage[idxRows][idxCols] = valOut.data;
        }
    }

    //
    saveImage(OUTPUT_IMAGE_CORE, imgCvOut);

    printf("Image processing completed. Results saved.\n");
    return 0;
}
