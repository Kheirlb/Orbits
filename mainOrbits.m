fprintf("Karl's Main Orbital Mechanics Script\n");
%Input a, ro, and vo
a = 6860.23; %km
r_i = [-6604.71407837     1859.69073972       -0.00579101]; %km
v_i = [-1.28133744       -4.55298678        5.98028712]; %km/s

% Standard Information of planets
muE = 398600; km
rE = 6371; %km
%[] = sphere(rE);

% Choose Planet
u = muE;
numRot = 1;
E = (norm(v_i)^2)/2 - u/norm(r_i);
aTest = -u/(2*E);

P = sqrt((a^3)*4*pi^2/u);
fprintf("Period:\t %4.2f Seconds or\n \t\t %4.2f Minutes\n",P,P/60);
tspan = linspace(1,P*numRot,100*numRot);
[T,X] = ode45(@orbit3DFunc,tspan,[r_i,v_i]);
earth_sphere('km');
hold on;
plot3(X(:,1),X(:,2),X(:,3),'r','LineWidth',3);
fprintf("%1.0f%% of Orbit Displayed\n", numRot*100);
