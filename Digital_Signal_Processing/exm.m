clc;
clear all;
close all;
n=-2*pi:pi/16:2*pi;
xd=sin(n);
for i=0:1000
    e(i)=0;
         e(i)=e(i)+xd(i).*xd(i);
     
end
     N=20;
     for n=1:N-1
    p(n)=0;
     for i=1:N-1
         p(n)=p(n)+xd(i).*xd(i);
     end
     end
     plot(e);