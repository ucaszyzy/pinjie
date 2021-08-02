#include "array_abs.h"

void array_abs(AXI_STREAM& img_src_axi,AXI_STREAM& img_result_axi){
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC2> img(MAX_HEIGHT, MAX_WIDTH);
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> img_Re(MAX_HEIGHT, MAX_WIDTH);
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> img_Im(MAX_HEIGHT, MAX_WIDTH);
	hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> img_result(MAX_HEIGHT, MAX_WIDTH);

	hls::AXIvideo2Mat(img_src_axi,img);
	hls::Split(img,img_Re,img_Im);

	hls::Scalar<1,unsigned char> a;
	hls::Scalar<1,unsigned char> b;
	hls::Scalar<1,unsigned char> c;
	for(int i=0;i<img.cols;i++){
		for(int j=0;j<img.rows;j++){
			a=img_Re.read();
			b=img_Im.read();
			c=sqrt(a.val[0]*a.val[0]+b.val[0]*b.val[0]);
			hls::Scalar<1,unsigned char> pix(c);
			img_result.write(pix);
		}
	}

	hls::Mat2AXIvideo(img_result,img_result_axi);
}
