#ifndef _IMAGE_FILTER_H_
#define _IMAGE_FILTER_H_

#include "hls_video.h"

#define MAX_WIDTH  1920
#define MAX_HEIGHT 1080

typedef hls::stream<ap_axiu<128,1,1,1> >               AXI_STREAM;

void array_mul(AXI_STREAM& img_src1_axi, AXI_STREAM& img_src2_axi, AXI_STREAM& img_result_axi, int rows, int cols);

#endif
