#ifndef _ARRAY_DIV_H_
#define _ARRAY_DIV_H_

#include "hls_video.h"
#define MAX_WIDTH  220
#define MAX_HEIGHT 220

typedef hls::stream<ap_axiu<32,1,1,1> >	AXI_STREAM;

void array_div(AXI_STREAM& img_src1_axi,AXI_STREAM& img_src2_axi,AXI_STREAM& img_result_axi);

#endif
