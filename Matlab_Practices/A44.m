clc
clear
close all
t=linspace(0,6*pi,100);
x=(t.^1/2).*sin(2.*t);
y=(t.^1/2).*cos(2.*t);
z=0.5.*t;
plot3(x,y,z);