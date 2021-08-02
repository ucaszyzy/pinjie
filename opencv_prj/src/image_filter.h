#ifndef _IMAGE_FILTER_H_
#define _IMAGE_FILTER_H_

#include "hls_video.h"

#define MAX_WIDTH  1024
#define MAX_HEIGHT 1024

typedef hls::stream<ap_axiu<64,1,1,1> >               AXI_STREAM;

void array_mul(AXI_STREAM& img_src1_axi, AXI_STREAM& img_src2_axi, AXI_STREAM& img_result_axi, int rows, int cols);

#endif
