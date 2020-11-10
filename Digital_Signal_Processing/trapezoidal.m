clc
close all
clear all
n1=input('enter lower limit of signal:');
n2=input('enter upper limit of signal:');
t=n1:0.1:n2;
trap=trapmf(t,[0.5 1 2 2.5]);
subplot(2,1,1);
plot(t,trap);
xlabel('time (Abhishek,1702070005)');
ylabel('amplitude');
title('Continuous Trapezoidal Signal');
subplot(2,1,2);
stem(t,trap);
xlabel('No of Samples(n) (Abhishek,1702070005)');
ylabel('amplitude');
title('Discrete Trapezoidal Signal');
