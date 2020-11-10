clc
close all
clear all
orig_img=imread('tire.tif');
subplot(221)
imshow(orig_img);
title('Original Image');
b=im2double(orig_img);
s=(1*log(1+b))*256;
s1=uint8(s);
subplot(222)
imshow(s1);
title('log transformation(c=1)');
s2=(2*log(1+b))*256;
s3=uint8(s2);
subplot(223)
imshow(s3);
title('log transformation(c=2)');
s4=(3*log(1+b))*256;
s5=uint8(s4);
subplot(224)
imshow(s5);
title('log transformation(c=3)');