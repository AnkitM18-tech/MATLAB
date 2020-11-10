clc
close all
clear all
img=imread('cameraman.tif');
img(100:150,100:150)=255;
imshow(img);