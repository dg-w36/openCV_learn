#include <iostream>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;

void SetColor(Mat& Image){
	int rowNumber = Image.rows;
	int colNumber = Image.cols * Image.channels();
	
	for(int i=0;i<rowNumber;i++){
		uchar *data = Image.ptr<uchar>(i);
		for(int j=0;j<colNumber;j++){
			data[j] = 255;
		}
	}
}
int main(){
	Mat srcImage;
	Mat srcImageBlue;
	Mat srcImageGreen;
	Mat srcImageRed;
	Mat tmpImage1,tmpImage2;
	
	srcImage = imread("1.jpg",1);
//	cout << srcImage << endl;
	tmpImage1.create(srcImage.rows, srcImage.cols, CV_8UC1);
//	SetColor(tmpImage1);
	tmpImage2.create(srcImage.rows, srcImage.cols, CV_8UC1);
//	SetColor(tmpImage2);
//	randu(tmpImage1,Scalar::all(0),Scalar::all(0));
//	imshow("test",tmpImage1);
	
	std::vector<Mat> channels;
	split(srcImage, channels);
//	cout << channels.at(0) <<endl;
	
	imshow("original", srcImage);
	
	vector<Mat> tmp;
	
	tmp.push_back(channels.at(0));
	tmp.push_back(tmpImage1);
	tmp.push_back(tmpImage2);
	srcImageRed.create(srcImage.rows, srcImage.cols, CV_8UC3);
	merge(tmp,srcImageBlue);
	imshow("Blue",srcImageBlue);
	
	tmp.clear();
	tmp.push_back(tmpImage1);
	tmp.push_back(channels.at(1));
	tmp.push_back(tmpImage2);
	srcImageRed.create(srcImage.rows, srcImage.cols, CV_8UC3);
	merge(tmp,srcImageGreen);
	imshow("Green",srcImageGreen);
	
	tmp.clear();
	tmp.push_back(tmpImage1);
	tmp.push_back(tmpImage2);
	tmp.push_back(channels.at(2));
	srcImageRed.create(srcImage.rows, srcImage.cols, CV_8UC3);
	merge(tmp,srcImageRed);
	imshow("Red",srcImageRed);
	
	/*imshow("Blue", channels.at(0));
	imshow("green", channels.at(1));
	imshow("red", channels.at(2));*/
	waitKey(0);
	return 0;
}
