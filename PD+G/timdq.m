function dq = timdq(in)
q1 = in(1);
q2 = in(2);
q3 = in(3);

x1dot = in(7);
x2dot = in(8);
x3dot = in(9);
% x = [x1;x2;x3];
dx = [x1dot;x2dot;x3dot];

global m1 m2 m3 l1 l2 l3
global q1m q1M q2m q2M q3m q3M

E = diag([1,1,1]);
% K = diag([0,0,0]);

J =[ l3*cos(q1+q3) + q2*cos(q1) - l1*sin(q1),  sin(q1), l3*cos(q1+q3);
     l3*sin(q1+q3) + q2*sin(q1) + l1*cos(q1), -cos(q1), l3*sin(q1+q3);
                   1                        ,    0    ,      1       ];

% Jx = diag([1,1,1]);
%tinh w

w = sqrt(det(J*J'));

%dieukien w
if(q1>=q1M||q1<=q1m||q2>=q2M||q2<=q2m||q3>=q3M||q3<=q3m)
    w = 0;
end
    
%chon eo wo
eo = 1000000;
wo = 0.01;

if w >= wo    % binh thuong
    k = 0;   
end
   
if w < wo     % ki di
    k = eo * (1 - w / wo)^2;
end

% e = [x1 - l3*cos(q1-q3) - q2*sin(q1) - l1*cos(q1);
%      x2 + l3*cos(q1-q3) + q2*cos(q1) - l1*sin(q1);
%                              x3 - q1 + pi/2 + q3];

%outputs
 % dq = inv(J'*J + k*E)*J'*(dx + inv(Jx)*K*e);

 dq = inv(J'*J + k*E)*J'*dx;