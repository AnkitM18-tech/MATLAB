clc
clear
close all
fprintf(' menu\n 1.Addition(Add)\n 2.Substraction(Sub)\n 3.Multiplication(Mul)\n 4.Division(Div)\n');
c=input('enter your choice:','s');
x=input('enter data 1:');
y=input('enter data 2:');
p=size(x);
q=size(y);
if(c=='Add')
    if(p==q)
        add=x+y;
        disp(add);
    else
        disp('error');
    end
elseif(c=='Sub')
    if(p==q)
        sub=x-y;
        disp(sub);
    else
        disp('error');
    end
elseif(c=='Mul')
    if(p==q)
        mult=x.*y;
        disp(mult);
    elseif(p(2)==q(1))
        mult=x*y;
        disp(mult);
    else
        disp('error in input data  dimension');
    end
elseif(c=='Div')
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