function [ T,R,H ] = projectile2( u,theta)
g=10;
T=((2*u)*sind(theta))/g;
t=linspace(0,T,100);
R=(u.*cosd(theta)).*t;
H=(u.*sind(theta).*t)-(1/2)*g.*t.^2;

end

