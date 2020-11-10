clc
clear
close all
x=-3:3;
y=-3:3;
[xx,yy]=meshgrid(x,y);
zz=xx.^2+yy.^2;
%mesh(xx,yy,zz);%only border
surf(xx,yy,zz);%filled with color