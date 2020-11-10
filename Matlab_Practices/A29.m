clc
clear
close all
u=input('enter initial velocity:');
theta=input('enter angle of projection:');
[X,Y]=projectile(u,theta);
disp(X);
disp(Y);