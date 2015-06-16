#include <stdio.h>
#include <opencv2/opencv.hpp>
using namespace cv;

#define WINDOW_NAME "MOUSE_TEST"

//function
void on_MouseHandle(int event, int x, int y, int flags, void* param);
void DrawRectangle(Mat& img, Rect box);
void ShowHelpText();

//variable
Rect g_rectangle;
bool g_bDrawingbox = false;
RNG g_rng(100);

int main(){
	g_rectangle = Rect(-1,-1,0,0);
	Mat srcImage(600,800,CV_8UC3), tempImage;
	srcImage.copyTo(tempImage);
	srcImage = Scalar::all(0); // ?
	
	//set the mouse callback function
	namedWindow( WINDOW_NAME );
	setMouseCallback( WINDOW_NAME, on_MouseHandle, (void*)&srcImage );
	
	//main function
	while(1){
		srcImage.copyTo(tempImage); // why need this line?
		if( g_bDrawingbox ) DrawRectangle(tempImage, g_rectangle);
		imshow(WINDOW_NAME, tempImage);
		char key = waitKey(10);
		if(key == 's'){
			imwrite("mouse.jpg",srcImage);
			printf("Save succssed!!\n");
		}
		if(key == 27) break;
	}	
	return 0;
}

void on_MouseHandle(int event, int x, int y, int flags,void* param){
	Mat& image = *(Mat*) param;
	switch( event ){
		case EVENT_MOUSEMOVE:
		{
			if(g_bDrawingbox){
				g_rectangle.width = x - g_rectangle.x;
				g_rectangle.height  = y - g_rectangle.y;
			}
			break;
		}
		case EVENT_LBUTTONDOWN:
		{
			g_bDrawingbox = true;
			g_rectangle = Rect(x, y, 0, 0);
			break;
		}
		case EVENT_LBUTTONUP:
		{
			g_bDrawingbox = false;
			if(g_rectangle.width < 0){
				g_rectangle.x += g_rectangle.width;
				g_rectangle.width *= -1;
			}
			
			if(g_rectangle.height < 0){
				g_rectangle.y += g_rectangle.height;
				g_rectangle.height *= -1;
			}
			
			DrawRectangle(image, g_rectangle);
			break;
		}
	}
	
}
	//Draw function
void DrawRectangle( Mat& img, Rect box){
	//??the usage of the function rectangle
	rectangle(img, box.tl(), box.br(), Scalar(g_rng.uniform(0,255),g_rng.uniform(0,255), g_rng.uniform(0,255)));
//	rectangle(img, box.tl(), box.br(), Scalar(255,255,255));
}
