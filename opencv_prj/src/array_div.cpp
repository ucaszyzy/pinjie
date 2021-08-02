#include "array_div.h"

void array_div(AXI_STREAM& img1_axi,AXI_STREAM& img2_axi,AXI_STREAM& img_result_axi){
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> img1(MAX_HEIGHT, MAX_WIDTH);
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> img2(MAX_HEIGHT, MAX_WIDTH);
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> img_result(MAX_HEIGHT, MAX_WIDTH);

	hls::AXIvideo2Mat(img1_axi, img1);
	hls::AXIvideo2Mat(img2_axi, img2);

	hls::Scalar<1,unsigned char> a;
	hls::Scalar<1,unsigned char> b;
	hls::Scalar<1,unsigned char> c;
	for(int i=0;i<img1.cols;i++){
		for(int j=0;j<img1.rows;j++){
			a=img1.read();
			b=img2.read();
			c=a.val[0]/b.val[0];
			hls::Scalar<1,unsigned char> pix(c);
			img_result.write(pix);
		}
	}

	hls::Mat2AXIvideo(img_result,img_result_axi);
}
