#include <opencv2/highgui/highgui.hpp>
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
//#include <conio.h>

using namespace cv;
using namespace std;


int ellipse_crop() {
  Mat im1 = imread("person.jpg");
  if(im1.empty()) {
    cout << "Cannot load image!" << endl;
    return -1;
  }
  cvtColor(im1, im1, CV_BGR2GRAY);
  imshow("im1", im1);	// original image
  Mat im2(im1.rows, im1.cols, CV_8UC1, Scalar(0, 0, 0));
  ellipse(im2, Point(120, 130), Size(50.0, 60.0), 0, 0, 360, Scalar(255, 255, 255), -1, 8);
  imshow("im2", im2);	// mask
  Mat res;
  bitwise_and(im1, im2, res);
  imshow("AND", res);	// resultant image
  waitKey(0);
  return 0;
}

int main() {
  ellipse_crop();
}
