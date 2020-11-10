function [ R,H ] = projectile( u,theta)
g=10;
R=((u^2)*sind(2*theta))/g;
H=((u^2)*sind(theta)^2)/2*g;

end

