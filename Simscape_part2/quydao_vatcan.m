function out = quydao_vatcan(in)
xd = in(1);
yd = in(2);
K = [xd yd];
global S

beta = atan2(K(2)-S(2),K(1)-S(1));

a = 0.001;
n = 8; %n>=3
phi0 = 0;% -(2pi)/n < phi0 < (2pi)/n

theta0 = phi0 - pi/n;
for i = -n+1 : 1 : n - 2
    if((phi0 + i * (2*pi)/n) <= beta && beta <= (phi0 + (i+1) * (2*pi)/n) ) 
        theta = theta0 + (i+1) * (2*pi)/n;
        r = a/cos(beta - theta);
    end
end

xF = S(1) + r * cos(beta);
yF = S(2) + r * sin(beta);

out = [xF yF];