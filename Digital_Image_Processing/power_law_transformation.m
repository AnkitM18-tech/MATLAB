clc
close all
clear all
orig_img=imread('westconcordorthophoto.png');
subplot(131)
imshow(orig_img);
title('Original Image');
b=im2double(orig_img);
s2=(1*b.^2).*256;
s3=uint8(s2);
subplot(132)
imshow(s3);
title('power law transformation(c=1,y=2)');
s4=(1*b.^0.5).*256;
s5=uint8(s4);
subplot(133)
imshow(s5);
title('power law transformation(c=1,y=0.5)');