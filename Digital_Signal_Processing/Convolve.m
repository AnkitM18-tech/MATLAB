clc
close all
clear all
X=input('enter sequence 1:');
Y=input('enter sequence 2:');
H=conv(X,Y);
subplot(2,1,1);
stem(H);
xlabel('No of Samples(n) (Ankit Kumar Mohanty,1702070017)');
ylabel('H(n)');
title('Convolution Using Function-----discrete');
subplot(2,1,2);
plot(H);
xlabel('time (Ankit Kumar Mohanty,1702070017)');
ylabel('H(t)');
title('Convolution Using Function-----continuous');
figure
subplot(211)
stem(X);
xlabel('No of Samples(n) (Ankit Kumar Mohanty,1702070017)');
ylabel('X(n)');
title('first sequence');
subplot(212)
stem(Y);
xlabel('No of Samples(n) (Ankit Kumar Mohanty,1702070017)');
ylabel('Y(n)');
title('second sequence');
disp(H)