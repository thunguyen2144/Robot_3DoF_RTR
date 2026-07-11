clc;

in = [0.04829 0.03791 -pi/3 2.304707 0.08777 -1.781108];
x0=in(1:3);
s = in(4:6);
q = s';

global l1 l3

for i = 1:100
    q1 = q(1,1);
    q2 = q(2,1);
    q3 = q(3,1);
    % thiet lap ma tran jacobi
J =[ l3*cos(q1+q3) + q2*cos(q1) - l1*sin(q1),  sin(q1), l3*cos(q1+q3);
     l3*sin(q1+q3) + q2*sin(q1) + l1*cos(q1), -cos(q1), l3*sin(q1+q3);
                   1                        ,    0    ,      1       ];
invJ = inv(J);

%Dong hoc thuan
x1= l3*sin(q1+q3)+q2*sin(q1)+l1*cos(q1);
x2=-l3*cos(q1+q3)-q2*cos(q1)+l1*sin(q1);
theta = q1 + q3 - pi/2;

x = [x1 x2 theta];

saiso = -invJ * (x-x0)';
q = q + saiso;
if norm(saiso,inf) < 10e-15
    break;
end

end
format long
Q = q'
x2 = DHT(q)
