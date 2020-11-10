clc
close all
clear all
t=linspace(0,2*pi,25); 
A=input('Enter Amplitude:');
Sine=A.*sin(t);
subplot(2,1,1);
plot(t,Sine,'r');
title('Continuous');
xlabel('time (Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude');
subplot(2,1,2);
stem(t,Sine);
title('Discrete');
xlabel('No of samples(n) (Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude ');
