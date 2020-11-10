clc;
close all;
clear all;
xn=input('Enter the sequence x(n):');  
N=length(xn); 
x=zeros(1,N); 
ix=zeros(1,N);

i=sqrt(-1);

for k=0:N-1
    for n=0:N-1
        x(k+1)=x(k+1)+(xn(n+1)*exp((-i)*2*pi*k*n/N));
    end
end

t=0:N-1;
subplot(221);
stem(t,xn);
ylabel ('Amplitude');
xlabel ('Time Index');
title('input sequence');
grid on;

magnitude=abs(x); 

t=0:N-1;
subplot(222);
stem(t,magnitude);
ylabel ('Amplitude');
xlabel ('K');
title('magnitude response');
grid on;

phase=angle(x); 

t=0:N-1;
subplot(223);
stem(t,phase);
ylabel ('Phase');
xlabel ('K');
title('phase response');
grid on;

for n=0:N-1
    for k=0:N-1
        ix(n+1)=ix(n+1)+(x(k+1)*exp(i*2*pi*k*n/N));
    end
end
ix=ix./N;

t=0:N-1;
subplot(224);
stem(t,ix);
ylabel ('Amplitude');
xlabel ('Time Index (Ankit Kumar Mohanty,1702070017)');
title('inverse DFT sequence');
grid on;
disp(magnitude)
disp(phase)