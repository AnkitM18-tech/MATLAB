clc
clear 
close all
T=[31 28 39 41 42 43 24 26 28];
a=mean(T);
b=find(T>a);
c=size(b);
disp(c(2));