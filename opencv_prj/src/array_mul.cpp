#include "array_mul.h"

void array_mul(AXI_STREAM& img_src1_axi,AXI_STREAM& img_src2_axi,AXI_STREAM& img_result_axi,int rows,int cols){

	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC2> img1(rows, cols);
#pragma HLS STREAM variable=img1 depth=4 dim=1
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC2> img2(rows, cols);
#pragma HLS STREAM variable=img2 depth=4 dim=1
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC1> img1_Re(rows, cols);
#pragma HLS STREAM variable=img1_Re depth=4 dim=1
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC1> img1_Im(rows, cols);
#pragma HLS STREAM variable=img1_Im depth=4 dim=1
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC1> img2_Re(rows, cols);
#pragma HLS STREAM variable=img2_Re depth=4 dim=1
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC1> img2_Im(rows, cols);
#pragma HLS STREAM variable=img2_Im depth=4 dim=1

	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC2> img_result(rows, cols);
#pragma HLS STREAM variable=img_result depth=4 dim=1
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC1> img_result1(rows, cols);
#pragma HLS STREAM variable=img_result1 depth=4 dim=1
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC1> img_result2(rows, cols);
#pragma HLS STREAM variable=img_result2 depth=4 dim=1
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC1> img_result3(rows, cols);
#pragma HLS STREAM variable=img_result3 depth=4 dim=1
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC1> img_result4(rows, cols);
#pragma HLS STREAM variable=img_result4 depth=4 dim=1
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC1> img_result5(rows, cols);
#pragma HLS STREAM variable=img_result5 depth=4 dim=1
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_64FC1> img_result6(rows, cols);
#pragma HLS STREAM variable=img_result6 depth=4 dim=1

	hls::AXIvideo2Mat(img_src1_axi,img1);
	hls::AXIvideo2Mat(img_src2_axi,img2);

	hls::Split(img1,img1_Re,img1_Im);
	hls::Split(img2,img2_Re,img2_Im);

	hls::Mul(img1_Re,img2_Re,img_result1,1);
	hls::Mul(img1_Im,img2_Im,img_result2,1);
	hls::Mul(img1_Re,img2_Im,img_result3,1);
	hls::Mul(img1_Im,img2_Re,img_result4,1);

	hls::AddWeighted(img_result1,1,img_result2,1,0,img_result5);
	hls::AddWeighted(img_result4,1,img_result3,1,0,img_result6);

	hls::Merge(img_result5,img_result6,img_result);

	hls::Mat2AXIvideo(img_result,img_result_axi);
}
