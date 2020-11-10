clc
clear
close all
syms x y;
q=x^2*y^3*exp(x);
pretty(q);
a=diff(q,y);
b=diff(q,x);
disp(a);
disp(b);