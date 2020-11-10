clc
close all
clear all
img=imread('cameraman.tif');
img_n=imnoise(img,'salt & pepper',0.02);
subplot(221)
imshow(img_n);
title('image affected by salt and pepper noise');
img_z=uint8(zeros(size(img_n)+2));
img_z(2:end-1,2:end-1)=img_n;
subplot(222)
imshow(img_z);
title('zero padded image');
w=1/9*(ones(3));
img_r=zeros(size(img_z));
img_m=zeros(size(img_z));
[M,N]=size(img_z);
for i=2:M-1
    for j=2:N-1
        sub=double(img_z(i-1:i+1,j-1:j+1));
        int=sum(sum(sub.*w));
        intm=median(median(sub));
        img_r(i,j)=int;
        img_m(i,j)=intm;
    end
end
img_mean=zeros(size(img_r)-2);
img_mean=uint8(img_r(2:end-1,2:end-1));
subplot(223)
imshow(img_mean);
title('Mean filtered Image');
subplot(224)
img_med=zeros(size(img_m)-2);
img_med=uint8(img_m(2:end-1,2:end-1));
imshow(img_med);
title('Median filtered Image');