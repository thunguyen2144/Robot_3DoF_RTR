function outputs = tinh_ddq(t)
q1=t(1);
q2=t(2);
q3=t(3);
q1dot=t(4);
q2dot=t(5);
q3dot=t(6);
u1=t(7);
u2=t(8);
u3=t(9);

 u = [u1 ; u2 ; u3];
 q = [q1 ; q2 ; q3];
 qdot = [q1dot ; q2dot ; q3dot];
global l1 l2 l3 m1 m2 m3 g I1x I1y I1z I2x I2y I2z I3x I3y I3z
%l1=0.60; l2=0.60; l3=0.23; I1x=1; I1y=1; I1z =1; I2x =1;I2y=1; I2z=1; I3x=1; I3y=1; I3z=1; m1=1; m2=1; m3=1; g=9.81;

% % Ma tran M
 
M = [I1y + I2z + I3z + m3*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1))^2 + m3*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1))^2 + m2*(cos(q1)*(l2/2 - q2) + l1*sin(q1))^2 + m2*(sin(q1)*(l2/2 - q2) - l1*cos(q1))^2 + (l1^2*m1*cos(q1)^2)/4 + (l1^2*m1*sin(q1)^2)/4, m3*sin(q1)*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1)) - m3*cos(q1)*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)) + m2*cos(q1)*(sin(q1)*(l2/2 - q2) - l1*cos(q1)) - m2*sin(q1)*(cos(q1)*(l2/2 - q2) + l1*sin(q1)), I3z + (l3*m3*cos(q1 + q3)*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1)))/2 + (l3*m3*sin(q1 + q3)*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)))/2;
                                          m3*sin(q1)*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1)) - m3*cos(q1)*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)) + m2*cos(q1)*(sin(q1)*(l2/2 - q2) - l1*cos(q1)) - m2*sin(q1)*(cos(q1)*(l2/2 - q2) + l1*sin(q1)),                                                                                                                                                               m2*cos(q1)^2 + m3*cos(q1)^2 + m2*sin(q1)^2 + m3*sin(q1)^2,                                                                                       (l3*m3*cos(q1 + q3)*sin(q1))/2 - (l3*m3*sin(q1 + q3)*cos(q1))/2;
                                                                                                            I3z + (l3*m3*cos(q1 + q3)*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1)))/2 + (l3*m3*sin(q1 + q3)*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)))/2,                                                                                                                                                         (l3*m3*cos(q1 + q3)*sin(q1))/2 - (l3*m3*sin(q1 + q3)*cos(q1))/2,                                                                                         I3z + (l3^2*m3*cos(q1 + q3)^2)/4 + (l3^2*m3*sin(q1 + q3)^2)/4];
  

% %vecto luc suy rong do trong luc

g_q = [g*m3*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)) - g*m2*(sin(q1)*(l2/2 - q2) - l1*cos(q1)) + (g*l1*m1*cos(q1))/2;
                                                                                       - g*m2*cos(q1) - g*m3*cos(q1);
                                                                                            (g*l3*m3*sin(q1 + q3))/2];
 
% %ma tran coriolis 



C = [q3dot*((l3*m3*cos(q1 + q3)*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)))/2 - (l3*m3*sin(q1 + q3)*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1)))/2) + q2dot*(m3*cos(q1)*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1)) - m2*cos(q1)*(cos(q1)*(l2/2 - q2) + l1*sin(q1)) + m3*sin(q1)*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)) - m2*sin(q1)*(sin(q1)*(l2/2 - q2) - l1*cos(q1))), q1dot*(m3*cos(q1)*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1)) - m2*cos(q1)*(cos(q1)*(l2/2 - q2) + l1*sin(q1)) + m3*sin(q1)*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)) - m2*sin(q1)*(sin(q1)*(l2/2 - q2) - l1*cos(q1))), q1dot*((l3*m3*cos(q1 + q3)*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)))/2 - (l3*m3*sin(q1 + q3)*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1)))/2) + q3dot*((l3*m3*cos(q1 + q3)*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)))/2 - (l3*m3*sin(q1 + q3)*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1)))/2);
                                                                              - q1dot*(m3*cos(q1)*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1)) - m2*cos(q1)*(cos(q1)*(l2/2 - q2) + l1*sin(q1)) + m3*sin(q1)*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)) - m2*sin(q1)*(sin(q1)*(l2/2 - q2) - l1*cos(q1))) - q3dot*((l3*m3*cos(q1 + q3)*cos(q1))/2 + (l3*m3*sin(q1 + q3)*sin(q1))/2),                                                                                                                                                                                                                               0,                                                                                                                                                               - q1dot*((l3*m3*cos(q1 + q3)*cos(q1))/2 + (l3*m3*sin(q1 + q3)*sin(q1))/2) - q3dot*((l3*m3*cos(q1 + q3)*cos(q1))/2 + (l3*m3*sin(q1 + q3)*sin(q1))/2);
                                                                                                                                                        q2dot*((l3*m3*cos(q1 + q3)*cos(q1))/2 + (l3*m3*sin(q1 + q3)*sin(q1))/2) - q1dot*((l3*m3*cos(q1 + q3)*((l3*sin(q1 + q3))/2 + l1*cos(q1) + q2*sin(q1)))/2 - (l3*m3*sin(q1 + q3)*((l3*cos(q1 + q3))/2 + q2*cos(q1) - l1*sin(q1)))/2),                                                                                                                                                         q1dot*((l3*m3*cos(q1 + q3)*cos(q1))/2 + (l3*m3*sin(q1 + q3)*sin(q1))/2),                                                                                                                                                                                                                                                                                                                 0];

%u = M*ddq + C*qdot + g_q;

% D = diag([1,1,1]);

ddq = inv(M) * (u - C*qdot - g_q);
 % ddq = inv(M) * (u - C * qdot - g_q);
outputs = ddq';