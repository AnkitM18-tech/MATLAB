clc
clear
close all
f(1)=1;
f(2)=1;
for n=3:10
    f(n)=f(n-1)+f(n-2);
end
for n=1:10
    disp(f(n));
end