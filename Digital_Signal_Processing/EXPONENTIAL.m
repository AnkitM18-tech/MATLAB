clc
close all
clear all
n1=input('Enter lower limit:');
n2=input('Enter upper limit:');
t=n1:n2;
a=input('Enter the value for a:');
B=input('Enter the value for coefficient:');
exponential=B.*exp(a*t);  
subplot(2,1,1);
plot(t,exponential,'r');
title('Continuous');
xlabel('time (Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude');
subplot(2,1,2);
stem(t,exponential,'b');
title('Discrete');
xlabel('No of Samples(n) (Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude');