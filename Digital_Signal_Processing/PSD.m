clc
clear all
close all
x=input('enter the input sequence:');
acc=xcorr(x,x);
psd=abs(fft(acc));
subplot(211)
stem(x);
xlabel('n (Ankit Kumar Mohanty,1702070017)');
ylabel('Amplitude');
title('Input Sequence');
grid on;
subplot(212)
stem(psd);
xlabel('n (Ankit Kumar Mohanty,1702070017)');
ylabel('Amplitude');
title('Output PSD Sequence');
grid on;
disp(x)
disp(psd)
