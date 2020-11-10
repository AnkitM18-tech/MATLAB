function [a,s,m,avg ] = calc( w,x,y,z )
a=w+x+y+z;
s=w-x-y-z;
m=max([w x y z]);
avg=mean([w x y z]);

end

