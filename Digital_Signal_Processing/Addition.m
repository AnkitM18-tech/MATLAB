clc
clear all;
close all;
t=linspace(0,2*pi,25);
x=cos(t);
y=sin(t);
z=x+1i*y;
plot(real(z),imag(z),'*');
plot(z,'*');
axis equal;
grid on;
xlabel('real part');
ylabel('imaginary part');