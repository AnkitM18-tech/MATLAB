clc
clear
close all
k=1;
p=0;
while abs(p-pi)>10^-12
    s=0;
    for n=1:k
    x=1/((2*n-1)^2*((2*n+1)^2));
    s=s+x;
    end
    k=k+1;
    p=sqrt(s*16+8);
    disp(p-pi);
end
disp (k);