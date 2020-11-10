clc
clear
close all
syms f x;
f=x^2-3*x+2;
Q=solve(f,x);
disp(Q);