clc
clear
close all
s=0;
for n=1:100
    x=1/((2*n-1)^2*((2*n+1)^2));
    s=s+x;
end
p=sqrt(s*16+8);
disp(p);
disp(p-pi);
disp(((p-pi)/pi)*100);