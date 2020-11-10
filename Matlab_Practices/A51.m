clc
clear
close all
f(1)=1;
f(2)=1;
for n=3:50
    f(n)=f(n-1)+f(n-2);
end
for n=1:50
    disp(f(n));
end
for n=2:50
    x(n-1)=f(n)/f(n-1);
end
disp(x);