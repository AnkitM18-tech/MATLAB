clc
close all
clear all
n1=input('Lower limit:');
n2=input('Upper limit:');
x=n1:n2;
impulse=(x==0);
subplot(2,1,1);
stem(x,impulse);       %discrete
title('Discrete');
xlabel('n');
ylabel('amplitude');
subplot(2,1,2);
plot(x,impulse);      %continuous
title('Continuous');
xlabel('t');
ylabel('amplitude');