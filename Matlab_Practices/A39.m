clc
clear
close all
syms c a b;
c=5*a^2+3*b^3;
X=diff(c,a);
disp(X);
Y=int(c,b);
disp(Y);