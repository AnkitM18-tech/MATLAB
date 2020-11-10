clc
clear all
close all
orig_img=imread('spine.tif');
subplot(211)
imshow(orig_img);
title('Original Image');
b=im2double(orig_img);
s=(1-b)*256;
neg_img=uint8(s);
subplot(212)
imshow(neg_img,[]);
title('Negative Transformation');