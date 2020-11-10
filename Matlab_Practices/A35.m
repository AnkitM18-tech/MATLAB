clc
clear
close all
syms x;
f=sin(x^2);
answer=diff(f,x);
disp(answer);