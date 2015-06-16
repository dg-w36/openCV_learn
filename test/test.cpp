#include <stdio.h>
#include <opencv2/opencv.hpp>
using namespace cv;
using namespace std;
int main(){
	Mat srcImage = Mat(6,8,CV_8UC3);
	randu(srcImage,Scalar::all(0), Scalar::all(255));
	imshow("test", srcImage);
	
	cout << "R(python) = " << endl <<format(srcImage, Formatter::FMT_PYTHON ) << ";" << endl << endl;
	waitKey(0);
	return 0;
}
