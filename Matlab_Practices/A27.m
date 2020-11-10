clc
clear
close all
x=input('enter angle in radian:');
n=input('enter no of terms:');
s=0;
for k=0:1:n
    s=s+(((-1).^k).*(x.^(2*k+1)))./factorial(2*k+1);
end
disp(s);
disp(sin(x));