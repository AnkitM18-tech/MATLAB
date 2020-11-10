clc
close all
clear all
t=linspace(0,2*pi,25); 
A=input('Enter Amplitude:');
Cosine=A.*cos(t);
subplot(2,1,1);
plot(t,Cosine,'r');
title('Continuous');
xlabel('time (Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude');
subplot(2,1,2);
stem(t,Cosine);
title('Discrete');
xlabel('No of Samples(n) (Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude');
