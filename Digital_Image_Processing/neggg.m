clc
close all
clear all
img=imread('spine.tif');
img_neg=255-img;
subplot(121)
imshow(img);
subplot(122)
imshow(img_neg,[]);