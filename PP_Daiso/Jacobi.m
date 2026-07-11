function J = Jacobi(q)
q1=q(1);
q2=q(2);
q3=q(3);
global l1 l3
% l1 = 60;   l3 = 23;
% thiet lap ma tran jacobi
J =[ l3*cos(q1+q3) + q2*cos(q1) - l1*sin(q1),  sin(q1), l3*cos(q1+q3);
     l3*sin(q1+q3) + q2*sin(q1) + l1*cos(q1), -cos(q1), l3*sin(q1+q3);
                   1                        ,    0    ,      1       ];