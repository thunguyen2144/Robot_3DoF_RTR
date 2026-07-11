function Q = daohamq(in)
q1=in(1);
q2=in(2);
q3=in(3);
x1=in(7);
x2=in(8);
x3=in(9);

% global q1M q2M q3M q1m q2m q3m
global l1 l3
% thiet lap ma tran jacobi
J =[ l3*cos(q1+q3) + q2*cos(q1) - l1*sin(q1),  sin(q1), l3*cos(q1+q3);
     l3*sin(q1+q3) + q2*sin(q1) + l1*cos(q1), -cos(q1), l3*sin(q1+q3);
                   1                        ,    0    ,      1       ];
 %E = eye(3,3);
 % invJ = J \ I;
 invJ = inv(J);

%  k = -1.0; % -50;   
% 
% z0 = k*[(q1-q1M/2-q1m/2)/((q1M-q1m)^2);
%         (q2-q2M/2-q2m/2)/((q2M-q2m)^2);
%         (q3-q3M/2-q3m/2)/((q3M-q3m)^2)];

% q_dot   =   invJ*xdot;
% z0=[300*sqrt(det(J*J')) 0 0 0 0 0 0];
%  invJ*xdot 
% q_dot   =   invJ*xdot+(E-invJ*J)*z0% goc khop muc van toc


  vxE = [x1;x2;x3];


 Q  =   invJ*vxE;
 