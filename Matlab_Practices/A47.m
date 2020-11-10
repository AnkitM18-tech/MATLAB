clc
clear
close all
x=randperm(35);
for n=1:35
    if(x(n)<6)
        y(n)=2;
    elseif(6<=x(n)<20)
        y(n)=x(n)-4;
    elseif(20<=x<=35)
        y(n)=36-x(n);
    end
end
disp(y);