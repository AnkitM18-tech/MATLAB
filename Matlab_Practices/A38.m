clc
clear
close all
syms x y c d;
f=x*y^3+x^2*y;
r1=diff(int(f,y,c,d),x);
r2=int(diff(f,x),y,c,d);
a=r1-r2;
simplify(a);
disp(simplify(a));