//---------------------------------------------------------
//using this code to test the tracbar
//using the tracbar to change the transparency of the image
//---------------------------------------------------------

#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
using namespace cv;
#define WINDOW_NAME "Trackbar"
#define INIT_VALUE 0

const int g_nMaxValue = 100;
int g_nValueSlider;//the variable for the trackbar
double g_dValue;

Mat g_srcImage, g_dstImage;

//callback function for the tracbar
void on_Trackbar(int , void* ){
	g_dValue = 1.0 - ((double) g_nValueSlider / g_nMaxValue);
	addWeighted(g_srcImage, g_dValue, g_srcImage , 0.0, 0.0 ,g_dstImage);
	imshow(WINDOW_NAME, g_dstImage);
}

int main(){
	g_srcImage = imread("1.jpg");
	if( !g_srcImage.data ){ // check if there is some mistakes in loading image
		printf("some error!\n");	
		return -1;
	}
	
	g_nValueSlider = INIT_VALUE; // give the initial value
	
	namedWindow(WINDOW_NAME, 1); //create the window
	
	//create the Trackbar
	createTrackbar( "Transparency: ", WINDOW_NAME, &g_nValueSlider, g_nMaxValue, on_Trackbar);
	
	imshow(WINDOW_NAME, g_srcImage); //show the window
	
	//we also can call the callback function first to start.
	//on_Trackbar(g_nValueSlider, 0);
	
	waitKey(0); //press any key to exit
	
	return 0;
}
