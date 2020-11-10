clc
clear
close all
n=[1 10 100 500 2000 4000 8000];
y=((1+(1./n)).^n);
disp(y);
disp(exp(1));