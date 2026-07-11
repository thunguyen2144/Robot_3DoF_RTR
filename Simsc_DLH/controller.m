function u = controller(in)
global l1 l2 l3 m1 m2 m3 g

qd = in(1:3) ; 
vd = in(4:6);
q1 = in(7);
q2 = in(8);
q3 = in(9);
q =[q1 q2 q3];

q1dot = in(10);
q2dot = in(11);
q3dot = in(12);
qdot=[q1dot q2dot q3dot];
% a = in(13:15);

G = [g*m3*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)) - g*m2*(sin(q1)*(l2/2 - q2) - l1*cos(q1)) + (g*l1*m1*cos(q1))/2;
                                                                                            - g*m2*cos(q1) - g*m3*cos(q1);
                                                                                                (g*l3*m3*sin(q1 + q3))/2];


et = qd - q;
edot = vd - qdot;

Kp = diag([300,300,300]);
Kd = diag([100,100,100]);

u = Kp * et' + Kd * edot' + G ;