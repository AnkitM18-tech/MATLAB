clc
clear
close all
u=input('enter initial velocity:');
theta=input('enter angle of projection:');
[T,X,Y]=projectile2(u,theta);
fprintf('%d is the distance along X\n',X);
fprintf('%d is the distance along Y\n',Y);
plot(X,Y,'md--');
xlabel('Horizontal Movement');
ylabel('Vertical Movement');
title('Elevated Movement Of a body');