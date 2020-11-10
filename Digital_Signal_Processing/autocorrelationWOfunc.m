clc;
close all;
x=input('Enter the sequence: ');
z=fliplr(x);
m=length(x);
n=length(z);
X=[x,zeros(1,n)];
figure
subplot(211)
stem(x);
xlabel('n');
ylabel('x(n)');
title('Input Sequence---discrete');
grid on;
subplot(212)
plot(x);
xlabel('time');
ylabel('x(t)');
title('Input Sequence---continuous');
grid on;
figure 
subplot(411)
stem(z);
xlabel('n');
ylabel('z(n)');
title('Input sequence(folded)----discrete');
grid on;
subplot(412)
plot(z);
xlabel('time');
ylabel('z{t})');
title('Input sequence(folded)----continuous');
grid on;
Z=[z,zeros(1,m)];
for i=1:n+m-1
    A(i)=0;
    for j=1:m
        if((i-j+1)>0)
            A(i)=A(i)+(X(j)*Z(i-j+1));
        else
        end
    end
end
subplot(413)
stem(A);
xlabel('n');
ylabel('y(n)');
title('Output Sequence----discrete');
grid on;
subplot(414)
plot(A);
xlabel('time');
ylabel('y(t)');
title('Output Sequence----continuous')
grid on;
disp(A)