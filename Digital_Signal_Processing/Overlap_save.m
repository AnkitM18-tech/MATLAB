clc
close All
clear All
x=rand(1,8);	
h=input('h=');
L=input('L=');
N1=length(x);
M=length(h);
lc=conv(x,h);
x=[x zeros(1,mod(-N1,L))];
N2=length(x);
h=[h zeros(1,L-1)];
H=fft(h,L+M-1);
S=N2/L;
index=1:L;
X=zeros(M-1);
for stage=1:S
    xm=[x(index) zeros(1,M-1)];	
    X1=fft(xm,L+M-1);
    Y=X1.*H;
    Y=ifft(Y);
    Z=X((length(X)-M+2):length(X))+Y(1:M-1);	
    X=[X(1:(stage-1)*L) Z Y(M:M+L-1)];
    index=stage*L+1:(stage+1)*L;
end
i=1:N1+M-1;
X=X(i);
similarity=corrcoef(X,lc);		
figure()
subplot(2,1,1)
stem(lc);
title('Convolution Using conv() function')
xlabel('n');
ylabel('y(n)');
subplot(2,1,2)
stem(X);
title('Convolution Using Overlap Add Method')
xlabel('n(Ankit Kumar Mohanty,1702070017)');
ylabel('y(n)');
figure
subplot(211)
stem(x);title('input sequence');xlabel('n');ylabel('x(n)');
subplot(212)
stem(h);title('impulse sequence');xlabel('n(Ankit Kumar Mohanty,1702070017)');ylabel('h(n)');
disp(x)
disp(X)
