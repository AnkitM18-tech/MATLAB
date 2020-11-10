clc
clear
close all
u=250;
theta=65;
g=9.8;
v=30;
T=2*u*sind(theta)/g;
t=linspace(0,T,1000);
x=u*cosd(theta).*t;
y=u*sind(theta).*t-((1/2*g*t.^2));
z=zeros(1,1000);
plot3(x,y,z);
zz=v*t;
hold on
plot3(x,y,zz,'-m');
grid on;
hold off
legend('projectile1','projectile2');