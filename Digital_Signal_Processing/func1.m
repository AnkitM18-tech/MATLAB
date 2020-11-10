function [z]=func1(p,q)
func2=inline('3*p^2+1','p');
func3=inline('p+q','p','q');
z=func2(p)+func3(p,q);
end

