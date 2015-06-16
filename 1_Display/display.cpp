//-----------------------------------------
//to combine the 1.jpg with 2.jpg
//-----------------------------------------

#include <stdio.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

using namespace cv;

int main(){
	//name the img and read it
	Mat image,logo;
	image = imread("1.jpg");
	logo = imread("2.jpg");
	
	imshow("1",image);
	imshow("2",logo);

	//make a interesting area and get it
	Mat imageROI;
	imageROI = image(Rect(0,0,logo.cols,logo.rows));
	
	//combine two image
	addWeighted(imageROI,0.0,logo,1.,0.0,imageROI);
	
	//show image
	imshow("add",image);
	
	waitKey(0);
	return 0;
}
