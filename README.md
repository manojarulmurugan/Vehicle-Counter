# Vehicle-Detection

Vehicle Detection using Gaussian Mixture Model and Blob Analysis

- To detect vehicles in motion based on Gaussian Mixture Models and Blob Analysis 
- The following is a breakdown of the folder structure:

CONTENTS

- DESCRIPTION
- SOFTWARE REQUIREMENTS
- DETAILS OF THE VIDEO DATASET
- FLOW OF THE PROJECT
- SUMMARY

DESCRIPTION

- Urban areas around the world always face the challenge of immense road traffic in everyday life. 
  This problem is further worsening day by day by the increasing number of vehicles, without any significant development of road systems. 
  One important aspect in the traffic management concept is the need for traffic density data of every road section.

- The purpose of this project is to analyze the possibility of optimization on the use of video files recorded from CCTV cameras for 
  visual observation and tool for counting traffic density by vehicle detection.

- This vehicle detection process provides relevant information about traffic patterns, crash occurrences and traffic peak times in roadways. 
  This paper presents a vehicle detection method in a video sequence using a foreground detector based on a Gaussian Mixture Model and Blob Analysis. 

- The major goal of this study is to demonstrate how to detect moving automobiles using a Gaussian Mixture Model and Blob Analysis. 
  Along with it, we apply two filters to our work and observe which is best suitable among the lot.


SOFTWARE REQUIREMENTS

To run the code, these following softwares are required :
	- MATLAB
	- Computer Vision System Toolbox


DETAILS OF THE VIDEO DATASET

Our video dataset contains 3 video files namely, 
	- 1.mp4
	- 2.mp4
	- 3.mp4

FLOW OF THE PROJECT 

Run the code in MATLAB software editor.
The output explaination is as follows :
	- First, a video is played which is processed by our algorithm.
	  This video shows the cars being detected and displayed around Blobs.
	  The number of cars per frame is displayed in the top-left corner yellow box.
	- Figure 1 with the title "The Object" displays the original video from te dataset. 
	- Figure 2 with the title "Detected Cars" displays a binary image, with one ones are the detected vehicles, with some noise.
	- Figure 3 with the title "Object after Removing Noise" also displays a binary image but the noises are removed using morphological filter. 
	- Figure 4 displayed is the "Detected Cars" video, which is processed by our algorithm.
	  This frame shows the cars being detected and displayed around Blobs.
	  The number of cars per frame is displayed in the top-left corner yellow box.

SUMMARY

- The video has been processed as frames and has been successfully implemented using our proposed work. 
- The video frames are enhanced according to their brightness and contrast. 
- The number of cars in each frame has been tracked by the blobs and result is printed on top of each frame.

- General Flow: 
	MATLAB --> Run --> Video  --> Figure 1 --> Figure 2 --> Figure 3 --> Figure 4 --> Command Window



THANK YOU
