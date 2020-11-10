clc
clear
close all
n1=[0:50];
n2=[0:500];
n3=[0:5000];
x=sum((1./(2*n1+1)).*(1./(2*n1+2)));
y=sum((1./(2*n2+1)).*(1./(2*n2+2)));
z=sum((1./(2*n3+1)).*(1./(2*n3+2)));
disp(x);
disp(y);
disp(z);
disp(log(2));