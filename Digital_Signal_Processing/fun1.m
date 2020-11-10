function [ z ] = fun1
p=input('enter p:');
q=input('enter q:');
fun2=inline('3*p^2+1','p');
fun3=inline('p+q','p','q');
z=fun2(p)+fun3(p,q);
disp(z);%it will show the answer...no need%
end

