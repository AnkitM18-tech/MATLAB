clc
clear
close all
fprintf('menu\n 1.Addition\n 2.Substraction\n 3.Multiplication\n 4.Division\n');
c=input('enter your choice:');
x=input('enter data 1:');
y=input('enter data 2:');
p=size(x);
q=size(y);
if(c==1)
    if(p==q)
        add=x+y;
        disp(add);
    else
        disp('error');
    end
elseif(c==2)
    if(p==q)
        sub=x-y;
        disp(sub);
    else
        disp('error');
    end
elseif(c==3)
    if(p==q)
        mult=x.*y;
        disp(mult);
    elseif(p(2)==q(1))
        mult=x*y;
        disp(mult);
    else
        disp('error in input data  dimension');
    end
elseif(c==4)
    if(p==q)
        div=x./y;
        disp(div);
    elseif(p(2)==q(1))
        div=x/y;
        disp(div);
    else
        disp('error in input data dimension');
    end
end