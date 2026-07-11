function w = test_w(ins)
q1 = ins(1);
q2 = ins(2);
q3 = ins(3);
% syms q1 q2 q3 real
global l1  l3

J = [l3*cos(q1-q3) + q2*cos(q1) - l1*sin(q1) , sin(q1) , -l3*cos(q1-q3);
     l3*sin(q1-q3) + q2*sin(q1) + l1*cos(q1) ,-cos(q1) , -l3*sin(q1-q3);
                                           1 ,       0 ,             -1];
% det(J) = q2
% outputs
w = sqrt(det(J*J'));