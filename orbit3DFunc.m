function [xdot] = orbit3DFunc(t,x)
%disp('Running Orbital 3D Function');
muE = 398600;
u = muE;
r = sqrt(x(1)^2 + x(2)^2 +x(3)^2);

xdot(1) = x(4);
xdot(2) = x(5);
xdot(3) = x(6);
xdot(4) = (-u/(r^3))*x(1);
xdot(5) = (-u/(r^3))*x(2);
xdot(6) = (-u/(r^3))*x(3);
xdot = xdot';
%disp('End Of Orbital 3D Function');
end

