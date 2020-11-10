function [dl,db] = area( l,b,dT )
alpha=23*10^-6;
dl=alpha*l*dT;
db=alpha*b*dT;
end

