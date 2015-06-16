#include <stdio.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace cv;
using namespace std;

#define WINDOW_NAME1 "Drawing1"
#define WINDOW_WIDTH 600

void DrawEllipse( Mat img, double angle){
	int thickness = 2;
	int linetype = 8;
	ellipse(img, Point(WINDOW_WIDTH/2, WINDOW_WIDTH/2), Size( WINDOW_WIDTH/4, WINDOW_WIDTH/16), angle, 0, 360, Scalar(255, 0, 0), thickness, linetype);
}

void DrawFilledCircle(Mat img, Point center ){
	int thickness = -1;
	int linetype = 8;
	
	circle(img, center, WINDOW_WIDTH/32, Scalar(0,0,255), thickness, linetype);
}
int main(){
	
	Mat atomImage = Mat::zeros( WINDOW_WIDTH, WINDOW_WIDTH, CV_8UC3);
	Mat rookImage = Mat::zeros( WINDOW_WIDTH, WINDOW_WIDTH, CV_8UC3);
	
	DrawEllipse( atomImage, 0);
	DrawEllipse( atomImage, 45);
	DrawEllipse( atomImage, 90);
	DrawEllipse( atomImage, -45);
	
	DrawFilledCircle( atomImage, Point(WINDOW_WIDTH/2, WINDOW_WIDTH/2));
	
	imshow( WINDOW_NAME1, atomImage);
	waitKey(0);
	return 0;
}
