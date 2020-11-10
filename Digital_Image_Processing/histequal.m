clc
close all
clear all
Img=imread('pout.tif');
np=size(Img,1)*size(Img,2);
figure
%subplot(211)
imshow(Img);
title('Original Image');
[x,y]=size(Img);
f=1:256;
c=0;
for i=1:256
    for j=1:x
        for k=1:y
            if(Img(j,k)==(i-1))
                c=c+1;
            end
        end
    end
    f(i)=c;
    c=0;
end
n1=0:255;
%subplot(212)
figure
plot(n1,f);
xlabel('intensities');
ylabel('no of pixels');
title('Histogram of Original Image');

HistIm=uint8(zeros(size(Img,1),size(Img,2)));
freq=zeros(256,1);
pdf=zeros(256,1);
cdf=zeros(256,1);
cum=zeros(256,1);
output=zeros(256,1);
for i=1:size(Img,1)
    for j=1:size(Img,2)
        value=Img(i,j);
        freq(value+1)=freq(value+1)+1;
        pdf(value+1)=freq(value+1)/np;
    end
end
sum=0;
no_lvl=255;
for i=1:size(pdf)
   sum=sum+freq(i);
   cum(i)=sum;
   cdf(i)=cum(i)/np;
   output(i)=round(cdf(i)*no_lvl);
end

for i=1:size(Img,1)
    for j=1:size(Img,2)
            HistIm(i,j)=output(Img(i,j)+1);
    end
end
figure
%subplot(211)
imshow(HistIm);
title('Histogram equalized image');
[x,y]=size(HistIm);f=1:256;
c=0;
for i=1:256
    for j=1:x
        for k=1:y
            if (HistIm(j,k)==i-1)
                c=c+1;
            end
        end
    end
    f(i)=c;
    c=0;
end
n1=0:255;
%subplot(212)
figure
plot(n1,f);
xlabel('intensities');
ylabel('no of pixels');
title('Histogram Of Equalized Image');
eq_hist=f/69840;
figure
plot(n1,eq_hist);
xlabel('intensities');
ylabel('normalized no of pixels');
title('normalized histogram of equalized image');