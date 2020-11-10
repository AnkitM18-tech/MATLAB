clc
clear
close all
syms f x a b;
f=a*x+b;
Q=solve(f,x);
disp(Q);