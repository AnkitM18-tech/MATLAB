clc;
close all;
x=input('Enter x(n):\n');
h=input('Enter h(n):\n');
m=length(x);
n=length(h);
N=max(m,n);
x=[x,zeros(1,N-m)];
h=[h,zeros(1,N-n)];
Y=zeros(1,N);
for n=1:N
    for i=1:N
        j=n-i+1;
        if(j<=0)
            j=N+j;
        end
        Y(n)=[Y(n)+x(i).*h(j)];
    end
end
n=0:N-1;
subplot(411)
disp('First Sequence x(n) is:')
disp(x)
stem(n,x)
xlabel('n')
ylabel('x(n)')
title('Input Sequence')
grid on;
subplot(412)
disp('Second Sequence h(n) is:')
disp(h)
stem(n,h)
xlabel('n')
ylabel('h(n)')
title('Impulse Sequence')
grid on;
subplot(413)
disp('Convoluted Sequence Y(n) is:')
disp(Y)
stem(n,Y)
xlabel('n (Ankit Kumar Mohanty,1702070017)')
ylabel('Y(n)')
title('Circular Convoluted Sequence without function')
grid on;
Y1=cconv(x,h,N);
subplot(414)
stem(n,Y1);
xlabel('n (Ankit Kumar Mohanty,1702070017)');
ylabel('Y1(n)');
title('Circular Convoluted Sequence Using Function');
grid on;
disp(Y1)