#include "image_filter.h"
#include "opencv_top.h"

int main (int argc, char** argv) {
    IplImage* src = cvLoadImage(INPUT_IMAGE);
    IplImage* dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);
    AXI_STREAM  src_axi, dst_axi;
    IplImage2AXIvideo(src, src_axi);
    image_filter(src_axi, dst_axi, src->height, src->width);
    AXIvideo2IplImage(dst_axi, dst);
    cvSaveImage(OUTPUT_IMAGE, dst);
    opencv_image_filter(src, dst);
    cvSaveImage(OUTPUT_IMAGE_GOLDEN, dst);
    cvReleaseImage(&src);
    cvReleaseImage(&dst);
    char tempbuf[2000];
    sprintf(tempbuf, "diff --brief -w %s %s", OUTPUT_IMAGE, OUTPUT_IMAGE_GOLDEN);
    int ret = system(tempbuf);
    if (ret != 0) {
        printf("Test Failed!\n");
	ret = 1;
    } else {
	printf("Test Passed!\n");
    }
    return ret;
}
