clc
close all
clear all
img=imread('cameraman.tif');
img_color=imread('peppers.png');
imshow(img);
title('Cameraman Gray Scale Image');
%figure
%imshow(img_rgb);
%title('Color Image');
r=img_color(:,:,1);
g=img_color(:,:,2);
b=img_color(:,:,3);
figure
subplot(221)
imshow(img_color);
title('Original Color Image');
subplot(222)
imshow(r);
title('red frame');
subplot(223)
imshow(g);
title('green frame');
subplot(224)
imshow(b);
title('blue frame');
img_gray=rgb2gray(img_color);
figure
imshow(img_gray);
title('Color to Gray Image');
img_color(1:50,1:50,:)=255;
img_color(335:384,463:512,:)=0;
figure
imshow(img_color);
title('Modified Color Image');