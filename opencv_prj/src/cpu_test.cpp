#include <stdio.h>
#include <iostream>
#include <tchar.h>

/*#include <opencv2/opencv.hpp>
#include "opencv2/core/core.hpp"//��Ϊ���������Ѿ�������opencv��Ŀ¼�����԰��䵱���˱���Ŀ¼һ��
#include "opencv2/features2d/features2d.hpp"
#include "opencv2/highgui/highgui.hpp"
#include<opencv2/legacy/legacy.hpp>
#include <opencv/cv.h>
#include <opencv/cxcore.h>
#include<opencv/highgui.h>*/
#include "cpu.h"
#include "hls_opencv.h"
#include "array_mul.h"

using namespace cv;
using namespace std;

/**************************************************************************/
//�Ӻ�������άFFT�任
/**************************************************************************/

void array_fft(IplImage *src, IplImage *dst)
{
	 //ʵ�����鲿
	 IplImage *image_Re = 0, *image_Im = 0, *Fourier = 0;
	 //   int i, j;
	 image_Re = cvCreateImage(cvGetSize(src), IPL_DEPTH_64F, 1);  //ʵ��
	 //Imaginary part
	 image_Im = cvCreateImage(cvGetSize(src), IPL_DEPTH_64F, 1);  //�鲿
	 //2 channels (image_Re, image_Im)
	 Fourier = cvCreateImage(cvGetSize(src), IPL_DEPTH_64F, 2);
	 // Real part conversion from u8 to 64f (double)
	 cvConvertScale(src, image_Re, 1, 0);
	 // Imaginary part (zeros)
	 cvZero(image_Im);
	 // Join real and imaginary parts and stock them in Fourier image
	 cvMerge(image_Re, image_Im, 0, 0, Fourier);
	 // Application of the forward Fourier transform
	 cvDFT(Fourier, dst, CV_DXT_FORWARD);
	 cvReleaseImage(&image_Re);
	 cvReleaseImage(&image_Im);
	 cvReleaseImage(&Fourier);
}

/**************************************************************************/
//����Ҷ���ĶԳ�
void fft2shift(IplImage *src, IplImage *dst)
{
	IplImage	*image_Re = 0, *image_Im = 0;
	int			nRow, nCol, i, j, cy, cx;
	double		scale, shift, tmp13, tmp24;

	image_Re = cvCreateImage(cvGetSize(src), IPL_DEPTH_64F, 1);
	//Imaginary part
	image_Im = cvCreateImage(cvGetSize(src), IPL_DEPTH_64F, 1);
	cvSplit( src, image_Re, image_Im, 0, 0 );
	 //����ԭ���������˹����ͼ����p123
	 // Compute the magnitude of the spectrum Mag = sqrt(Re^2 + Im^2)
	 //���㸵��Ҷ��
	 cvPow( image_Re, image_Re, 2.0);
	 cvPow( image_Im, image_Im, 2.0);
	 cvAdd( image_Re, image_Im, image_Re);
	 cvPow( image_Re, image_Re, 0.5 );
	 //�����任����ǿ�Ҷȼ�ϸ��(���ֱ任ʹ��խ���ͻҶ�����ͼ��ֵӳ��
	 //һ������ֵ������ɼ�������˹����ͼ����p62)
	 // Compute log(1 + Mag);
	 cvAddS( image_Re, cvScalar(1.0), image_Re ); // 1 + Mag
	 cvLog( image_Re, image_Re ); // log(1 + Mag)

	 //Rearrange the quadrants of Fourier image so that the origin is at the image center
	 nRow = src->height;
	 nCol = src->width;
	 cy = nRow/2; // image center
	 cx = nCol/2;
	//CV_IMAGE_ELEMΪOpenCV����ĺ꣬������ȡͼ�������ֵ����һ���־��ǽ������ı任
	 for( j = 0; j < cy; j++ ){
	  for( i = 0; i < cx; i++ ){
	   //���Ļ���������ݳ��Ŀ���жԽǽ���
	   tmp13 = CV_IMAGE_ELEM( image_Re, double, j, i);
	   CV_IMAGE_ELEM( image_Re, double, j, i) = CV_IMAGE_ELEM(
		image_Re, double, j+cy, i+cx);
	   CV_IMAGE_ELEM( image_Re, double, j+cy, i+cx) = tmp13;

	   tmp24 = CV_IMAGE_ELEM( image_Re, double, j, i+cx);
	   CV_IMAGE_ELEM( image_Re, double, j, i+cx) =
		CV_IMAGE_ELEM( image_Re, double, j+cy, i);
	   CV_IMAGE_ELEM( image_Re, double, j+cy, i) = tmp24;
	  }
	 }
		//��һ�����������Ԫ��ֵ��һΪ[0,255]
	 //[(f(x,y)-minVal)/(maxVal-minVal)]*255
	 double minVal = 0, maxVal = 0;
	 // Localize minimum and maximum values
	 cvMinMaxLoc( image_Re, &minVal, &maxVal );
	 // Normalize image (0 - 255) to be observed as an u8 image
	 scale = 255/(maxVal - minVal);
	 shift = -minVal * scale;
	 cvConvertScale(image_Re, dst, scale, shift);
	 cvReleaseImage(&image_Re);
	 cvReleaseImage(&image_Im);

}

/**************************************************************************/
//		�Ӻ����������������
//		dst = src1*conj(src2)
//		dst = (a+bi)*(c-di)
//			= (ac+bd)+(bc-ad)i;
/**************************************************************************/

void array_mul(IplImage *image_1,IplImage *image_2,IplImage *image_result)
{
//ͼ��-1
	IplImage *image_1_Re = 0, *image_1_Im = 0;
	 image_1_Re = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //ʵ��
	 image_1_Im = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //�鲿
	 cvSplit(image_1,image_1_Re,image_1_Im,0,0);

//ͼ��-2
	 IplImage *image_2_Re = 0, *image_2_Im = 0;
	 image_2_Re = cvCreateImage(cvGetSize(image_2), IPL_DEPTH_64F, 1);  //ʵ��
	 image_2_Im = cvCreateImage(cvGetSize(image_2), IPL_DEPTH_64F, 1);  //�鲿
	 cvSplit(image_2,image_2_Re,image_2_Im,0,0);

//ͼ�����
	 IplImage *image_result_1 = 0,*image_result_2 = 0,*image_result_3 = 0,*image_result_4 = 0,*image_result_5 = 0,*image_result_6 = 0;

	 image_result_1 = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //ʵ��
	 image_result_2 = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //ʵ��
	 image_result_3 = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //ʵ��
	 image_result_4 = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //ʵ��
	 image_result_5 = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //ʵ��
	 image_result_6 = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //ʵ��

	 cvMul(image_1_Re,image_2_Re,image_result_1,1);
	 cvMul(image_1_Im,image_2_Im,image_result_2,1);
	 cvMul(image_1_Re,image_2_Im,image_result_3,1);
	 cvMul(image_1_Im,image_2_Re,image_result_4,1);
	 cvAdd(image_result_1,image_result_2,image_result_5,NULL);
	 cvSub(image_result_4,image_result_3,image_result_5,NULL);

	 cvMerge(image_result_5, image_result_6, 0, 0, image_result);

	 cvReleaseImage(&image_1_Re);
	 cvReleaseImage(&image_1_Im);
	 cvReleaseImage(&image_2_Re);
	 cvReleaseImage(&image_2_Im);
	 cvReleaseImage(&image_result_1);
	 cvReleaseImage(&image_result_2);
	 cvReleaseImage(&image_result_3);
	 cvReleaseImage(&image_result_4);
	 cvReleaseImage(&image_result_5);
	 cvReleaseImage(&image_result_6);
}
/*void array_mul(IplImage *image_1,IplImage *image_2,IplImage *image_result){
	AXI_STREAM  src1_axi,src2_axi,dst_axi;
	IplImage2AXIvideo(image_1, src1_axi);
	IplImage2AXIvideo(image_2, src2_axi);
	array_mul(src1_axi,src2_axi,dst_axi,image_1->height,image_1->width);
	AXIvideo2IplImage(dst_axi, image_result);
}*/
/**************************************************************************/
//		�Ӻ����������������
/**************************************************************************/

void array_div(IplImage *image_1,IplImage *image_2,IplImage *image_result)
{
//ͼ��result
	IplImage *image_result_Re = 0, *image_result_Im = 0;
	 image_result_Re = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //ʵ��
	 image_result_Im = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //�鲿

//ͼ��-1
	IplImage *image_1_Re = 0, *image_1_Im = 0;
	 image_1_Re = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //ʵ��
	 image_1_Im = cvCreateImage(cvGetSize(image_1), IPL_DEPTH_64F, 1);  //�鲿
//ͨ���ֽ�
	 cvSplit(image_1,image_1_Re,image_1_Im,0,0);

//ͼ�����
	 cvDiv(image_2,image_1_Re,image_result_Re,1);
	 cvDiv(image_2,image_1_Im,image_result_Im,1);

//ͨ���ϳ�
	 cvMerge(image_result_Re, image_result_Im, 0, 0, image_result);

	 cvReleaseImage(&image_1_Re);
	 cvReleaseImage(&image_1_Im);
	 cvReleaseImage(&image_result_Re);
	 cvReleaseImage(&image_result_Im);
}


/**************************************************************************/
//		�Ӻ�����abs
/**************************************************************************/

void array_abs(IplImage *image_source,IplImage *image_result)
{
//ͼ��-1
	 IplImage *image_source_Re = 0, *image_source_Im = 0;

	 image_source_Re = cvCreateImage(cvGetSize(image_source), IPL_DEPTH_64F, 1);  //ʵ��
	 image_source_Im = cvCreateImage(cvGetSize(image_source), IPL_DEPTH_64F, 1);  //�鲿

	 cvSplit(image_source,image_source_Re,image_source_Im,0,0);

	cvPow(image_source_Re,image_source_Re,2);
	cvPow(image_source_Im,image_source_Im,2);
	cvAdd(image_source_Re,image_source_Im,image_result,NULL);
	cvPow(image_result,image_result,0.5);

//	image_result = cvCloneImage(image_source_Rst);

	 cvReleaseImage(&image_source_Re);
	 cvReleaseImage(&image_source_Im);
}

/**************************************************************************/
//�Ӻ���ͼ��ƴ�ӣ�function image_mosaic()
/**************************************************************************/
int image_mosaic(IplImage *image_1,IplImage *image_2)
{
	IplImage	*image_Fourier_1;				//����Ҷϵ��
	IplImage	*image_Fourier_2;				//����Ҷϵ��

	IplImage	*image_Mul;				//����Ҷϵ��
	IplImage	*image_Abs;				//����Ҷϵ��
	IplImage	*image_Corre;				//����Ҷϵ��
	IplImage	*image_Corre_iFFT;				//����Ҷϵ��
	IplImage	*image_Corre_iFFT_Abs;				//����Ҷϵ��
//	IplImage	*image_demo;				//����Ҷϵ��

	double		m,M;
	CvPoint     *max_loc;
	int			dootbi;
/******************************************************************************/
//FFT�任
	image_Fourier_1		= cvCreateImage(cvGetSize(image_1),IPL_DEPTH_64F,2);
	array_fft(image_1,image_Fourier_1);                  //image-1����Ҷ�任

	image_Fourier_2		= cvCreateImage(cvGetSize(image_1),IPL_DEPTH_64F,2);
	array_fft(image_2,image_Fourier_2);                  //image-2����Ҷ�任

/******************************************************************************/
//����ؼ���

	image_Mul				= cvCreateImage(cvGetSize(image_1),IPL_DEPTH_64F,2);
	image_Abs				= cvCreateImage(cvGetSize(image_1),IPL_DEPTH_64F,1);
	image_Corre				= cvCreateImage(cvGetSize(image_1),IPL_DEPTH_64F,2);
	image_Corre_iFFT		= cvCreateImage(cvGetSize(image_1),IPL_DEPTH_64F,2);
	image_Corre_iFFT_Abs	= cvCreateImage(cvGetSize(image_1),IPL_DEPTH_64F,1);

	array_mul(image_Fourier_2,image_Fourier_1,image_Mul);
	array_abs(image_Mul,image_Abs);
	array_div(image_Mul,image_Abs,image_Corre);

	//ʵ�ָ���Ҷ��任�����Խ����������
	cvDFT(image_Corre,image_Corre_iFFT,CV_DXT_INV_SCALE);
	array_abs(image_Corre_iFFT,image_Corre_iFFT_Abs);

	//Ѱ�����ֵ��
	cvMinMaxLoc(image_Corre_iFFT_Abs,&m,&M,NULL,max_loc);

	cout<<"���ֵ��M��"<<M<<endl;
	cout<<"���ֵ��m��"<<m<<endl;
/*	cout<<"���ֵ��x���꣺"<<max_loc->x<<endl;
	cout<<"���ֵ��y���꣺"<<max_loc->y<<endl;*/
	dootbi = cvGetSize(image_1).width - max_loc->x;
	cout<<"dootbi��ֵ�ǣ�"<<dootbi<<endl;


	cvReleaseImage(&image_Fourier_1);
	cvReleaseImage(&image_Fourier_2);
	cvReleaseImage(&image_Mul);
	cvReleaseImage(&image_Abs);
	cvReleaseImage(&image_Corre);
	cvReleaseImage(&image_Corre_iFFT);
	cvReleaseImage(&image_Corre_iFFT_Abs);
	return dootbi;

}
/************************************************************************************/
//ͼ���ںϺ�����function Image_fusion();
void Image_fusion(IplImage *image_a,IplImage *image_b,IplImage *image_result,int Dootbi)
{
	int i,j,k;
	typedef unsigned char BYTE;
	BYTE* rgb1=new BYTE[image_a->width*image_a->height* image_a->nChannels];
	memcpy(rgb1,image_a->imageData,image_a->width*image_a->height* image_a->nChannels);
	BYTE* rgb2=new BYTE[image_b->width*image_b->height* image_b->nChannels];
	memcpy(rgb2,image_b->imageData,image_b->width*image_b->height* image_b->nChannels);

	BYTE* RGB=new BYTE[image_result->width*image_result->height*image_result->nChannels];

//ͼ����߲���
	for(i=0;i<image_a->height;i++)
		for(j=0;j<image_a->width;j++)
			for(k=0;k<image_a->nChannels;k++)
			{
				RGB[(i+128)*image_result->width*image_a->nChannels+(j+128)*image_a->nChannels+k]=rgb1[i*image_a->width*image_a->nChannels+j*image_a->nChannels+k];
			}
//ͼ���ұ߲���
	for(i=0;i<image_b->height;i++)
		for(j=Dootbi;j<image_b->width;j++)
			for(k=0;k<image_a->nChannels;k++)
			{
				RGB[(i+128)*image_result->width*image_a->nChannels+(j+128+ image_a->width - Dootbi)*image_a->nChannels+k]=rgb2[i*image_b->width*image_a->nChannels+j*image_a->nChannels+k];
			}

    cvSetData(image_result,RGB,image_result->width*image_result->nChannels);
}


/**************************************************************************/
//��������main()
/**************************************************************************/

int main(int argc,char* argv[])
{
	int a;
	int b;
	cpu(a,b);
	int			dootbi;


	//��ȡͼ��
	IplImage	*image_1= cvLoadImage("D:\\hls_OpenCV\\opencv_prj\\a.jpg",CV_LOAD_IMAGE_ANYCOLOR);
	IplImage	*image_2= cvLoadImage("D:\\hls_OpenCV\\opencv_prj\\b.jpg",CV_LOAD_IMAGE_ANYCOLOR);

	CvSize size=cvSize(1280,720);
	IplImage *IMG=cvCreateImage(size,8,3);

    IplImage *img1 = cvCreateImage(cvGetSize(image_1),IPL_DEPTH_8U,1);
    cvCvtColor(image_1,img1,CV_BGR2GRAY);
    IplImage *img2 = cvCreateImage(cvGetSize(image_2),IPL_DEPTH_8U,1);
    cvCvtColor(image_2,img2,CV_BGR2GRAY);

	dootbi = image_mosaic(img1,img2);
	Image_fusion(image_1,image_2,IMG,dootbi);

	cvNamedWindow("1",0);
	cvShowImage("1",image_1);
	cvNamedWindow("2",0);
	cvShowImage("2",image_2);
	cvNamedWindow("3",0);
	cvShowImage("3",IMG);

	waitKey();

	/*cvReleaseImage(&image_1);
	cvDestroyWindow("1");
	cvReleaseImage(&image_2);
	cvDestroyWindow("2");
	cvReleaseImage(&IMG);
	cvDestroyWindow("3");*/

    return 0;
}
