clc
clear
close all
n1=[1:100];
n2=[1:1000];
x=sum(1./(n1.^2));
y=sum(1./(n2.^2));
disp(x);
disp(y);
disp(pi^2/6);