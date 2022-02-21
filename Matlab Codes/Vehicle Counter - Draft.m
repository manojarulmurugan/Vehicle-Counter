clc;
close all;
clear all;
% Step 1 : Importing the Video File
the_Video = VideoReader('traffic3.mp4');
% Step 2 : Object Detection
Object_Detector = vision.ForegroundDetector('NumGaussians', 3, 'NumTrainingFrames', 50);
% Step 3 : Training the Model
for i = 1:150
frame = readFrame(the_Video);
the_Object = step(Object_Detector, frame);
end
figure; imshow(frame); title('Video Frame');
figure; imshow(the_Object); title('The Object');
% Step 4 : Morphological Operation to Remove Noise
Structure = strel('square', 3);
Noise_Free_Object = imopen(the_Object, Structure);
figure; imshow(Noise_Free_Object); title('Object After Removing Noise');
% Step 5 : Perfecting and Locating the Object
Bounding_Box = vision.BlobAnalysis('BoundingBoxOutputPort', true,'AreaOutputPort', false, 'CentroidOutputPort', false,'MinimumBlobArea', 7000, 'MaximumBlobArea', 12000);
% Step 6 : Inserting the Box
the_Box = step(Bounding_Box, Noise_Free_Object);
% Step 7 : Drawing the Rectangle
Detected_Car = insertShape(frame, 'Rectangle', the_Box, 'Color', 'green', 'LineWidth', 5);
% Step 8 : Counting the Number of Cars
Number_of_Cars = size(the_Box, 1);
% Step 9 : Inserting the Number of Car
Detected_Car = insertText(Detected_Car, [10 10], Number_of_Cars, 'BoxOpacity', 1,'FontSize', 14);
figure; imshow(Detected_Car); title('Object After Removing Noise');
% Step 10 : Applying the Concept in Video Sequence
videoPlayer = vision.VideoPlayer('Name', 'Detected Cars');
videoPlayer.Position(3:4) = [1800,1000];
while hasFrame(the_Video)
frame = readFrame(the_Video); 
the_Object = step(Object_Detector, frame); 
Noise_Free_Object = imopen(the_Object, Structure); 
the_Box = step(Bounding_Box, Noise_Free_Object); 
Detected_Car = insertShape(frame, 'Rectangle', the_Box, 'Color', 'green'); 
Number_of_Cars = size(the_Box, 1); 
Detected_Car = insertText(Detected_Car, [10 10], Number_of_Cars, 'BoxOpacity', 1, 'FontSize', 14); 
step(videoPlayer, Detected_Car);
end