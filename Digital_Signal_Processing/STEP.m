clc
close all
clear all
n1=input('Enter the lower limit:');
n2=input('Enter the upper limit:');
A=input('Enter the Max amplitude:');
n=n1:n2;
step=A.*(n>=0);
subplot(2,1,1);
stem(n,step);
title('Step Signal - Discrete');
xlabel('n');
ylabel('amplitude');
subplot(2,1,2);
plot(n,step);
xlabel('time');
ylabel('amplitude');
title('Step Signal - Continuous');