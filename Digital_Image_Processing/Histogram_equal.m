clc
close all
clear all
img=imread('pout.tif');
subplot(221)
imshow(img);
title('original image');
[x,y]=size(img);
f=1:256;
c=0;
for i=1:256
    for j=1:x
        for k=1:y
            if(img(j,k)==(i-1))
                c=c+1;
            end
        end
    end
    f(i)=c;
    c=0;
end
n1=0:255;
subplot(222)
stem(n1,f);
xlabel('intensities');
ylabel('no of pixels');
title('Histogram of Original Image');
I=img;
[x,y]=size(I);
blank=uint8(zeros(x,y));
l=255;
pdf=zeros(1,256);
sum=0;
for i=1:size(pdf)
    sum=sum+f(i);
    cum(i)=sum;
    cdf(i)=cum(i)./n1;
    out(i)=round(cdf(i)*l);
end
for i=1:x
    for j=1:y
        blank(i,j)=out(I(i,j)+1);
    end
end
subplot(223)
imshow(blank);
title('My Hist Image');
stem(blank);
title('my function histogram');
[x,y]=size(blank);f=1:256;
c=0;
for i=1:256
    for j=1:x
        for k=1:y
            if blank(j,k)==i-1
                c=c+1;
            end
        end
    end
    f(i)=c;
    c=0;
end
n1=0:255;
subplot(224)
stem(n1,f);
xlabel('intensities');
ylabel('no of pixels');