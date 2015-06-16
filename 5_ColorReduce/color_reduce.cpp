#include <iostream>
#include <opencv2/opencv.hpp>
#define DIV 32

using namespace std;
using namespace cv;

void ColorReduce(Mat& inputImage, Mat& outputImage, int div);


int main(){
	Mat srcImage = imread("1.jpg");
	imshow("first", srcImage);
	
	Mat dstImage;
	dstImage.create(srcImage.rows, srcImage.cols, srcImage.type() );
	
	double time0 = static_cast<double>(getTickCount());
	
	ColorReduce(srcImage, dstImage, DIV);
	
	time0 = ((double)getTickCount() - time0) / getTickFrequency();
	cout << "Running time: "<< time0 << "s" << endl;
	
	imshow("second", dstImage);	
	waitKey(0);
	return 0;
}

/*void ColorReduce(Mat& inputImage, Mat& outputImage, int div){
	outputImage = inputImage.clone();
	int rowNumber = inputImage.rows;
	int colNumber = inputImage.cols;
	
	for(int i=0; i<rowNumber; i++){
		for(int j=0; j<colNumber; j++){
			outputImage.at<Vec3b>(i,j)[0] = outputImage.at<Vec3b>(i,j)[0] / div * div + div / 2;
			outputImage.at<Vec3b>(i,j)[1] = outputImage.at<Vec3b>(i,j)[1] / div * div + div / 2;
			outputImage.at<Vec3b>(i,j)[2] = outputImage.at<Vec3b>(i,j)[2] / div * div + div / 2;
		}	
	}
}
type 1
*/
void ColorReduce(Mat& inputImage, Mat& outputImage, int div){
	inputImage.copyTo(outputImage);
	int rowNumber = inputImage.rows;
	int colNumber = inputImage.cols * outputImage.channels();
	
	for(int i=0; i<rowNumber; i++){
		uchar* data = outputImage.ptr<uchar>(i);
		for(int j=0; j<colNumber; j++){
			data[j] = data[j] / div * div + div/2;
		}
	}
}
