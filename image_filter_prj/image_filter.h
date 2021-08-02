#ifndef _IMAGE_FILTER_H_
#define _IMAGE_FILTER_H_

//#include "hls_stream.h"
#include "hls_video.h"

#define MAX_WIDTH 1920
#define MAX_HEIGHT 1080
#define INPUT_IMAGE                    "test_1080p.bmp"
#define OUTPUT_IMAGE				   "result_1080p.bmp"
#define OUTPUT_IMAGE_GOLDEN				"result_1080p_golden.bmp"

typedef hls::stream<ap_axiu<32,1,1,1>>          AXI_STREAM;
typedef hls::Scalar<3,unsigned char>            RGB_PIXEL;
typedef hls::Mat<MAX_HEIGHT,MAX_WIDTH,HLS_8UC3> RGB_IMAGE;

void image_filter ( AXI_STREAM& src_axi, AXI_STREAM& dst_axi, int rows, int cols);

#endif
