clc;
clear all;
close all;
x=input('Enter the sequence 1: ');
h=input('Enter the sequence 2: ');
y=xcorr(x,h);
figure;
subplot(4,1,1);
stem(x);
xlabel('n->');
ylabel('Amplitude->');
title('Input sequence 1');
grid on;
subplot(4,1,2);
stem(h);
xlabel('n->');
ylabel('Amplitude->');
title('Input sequence 2');
grid on;
subplot(4,1,3);
stem(fliplr(y));   
xlabel('n->');
ylabel('Amplitude->');
title('Output sequence---discrete');
grid on;
subplot(4,1,4);
plot(fliplr(y));   
xlabel('time->');
ylabel('Amplitude->');
title('Output sequence----continuous');
grid on;
disp('The resultant is');
fliplr(y)