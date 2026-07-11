clc
clear
syms q1 q2 q3 q1dot q2dot q3dot l1 l2 l3 I1x I1y I1z I2x I2y I2z I3x I3y I3z m1 m2 m3 g real

rc1 = [l1/2*cos(q1);
       l1/2*sin(q1);
           0];
rc2 =[-sin(q1)*(l2/2 - q2) + l1*cos(q1);
       cos(q1)*(l2/2 - q2) + l1*sin(q1);
                 0                    ];
rc3 =[q2*sin(q1) + l1*cos(q1) + (l3*sin(q1 + q3))/2;
      l1*sin(q1) - q2*cos(q1) - (l3*cos(q1 + q3))/2;
                           0                      ];
% ma tran jacobi tinh tien
Jt1=[diff(rc1(1,1),q1) diff(rc1(1,1),q2) diff(rc1(1,1),q3); diff(rc1(2,1),q1) diff(rc1(2,1),q2) diff(rc1(2,1),q3); diff(rc1(3,1),q1) diff(rc1(3,1),q2) diff(rc1(3,1),q3) ]
Jt2=[diff(rc2(1,1),q1) diff(rc2(1,1),q2) diff(rc2(1,1),q3); diff(rc2(2,1),q1) diff(rc2(2,1),q2) diff(rc2(2,1),q3); diff(rc2(3,1),q1) diff(rc2(3,1),q2) diff(rc2(3,1),q3) ]
Jt3=[diff(rc3(1,1),q1) diff(rc3(1,1),q2) diff(rc3(1,1),q3); diff(rc3(2,1),q1) diff(rc3(2,1),q2) diff(rc3(2,1),q3); diff(rc3(3,1),q1) diff(rc3(3,1),q2) diff(rc3(3,1),q3) ]

% ma tran jacobi quay 
Jr1 =[0 0 0;
      0 0 0;
      1 0 0];
Jr2 =[0 0 0;
      0 0 0;
      1 0 0];
Jr3 =[0 0 0;
      0 0 0;
      1 0 1];
% ma tran momen
Ic1 = diag([I1x,I1y,I1z]);
Ic2 = diag([I2x,I2y,I2z]);
Ic3 = diag([I3x,I3y,I3z]);
% ma tran cosin chi huong 
R0_1 =[cos(q1),  0,  sin(q1);
       sin(q1),  0, -cos(q1);
             0,  1,       0];
   
R0_2 = [cos(q1), -sin(q1),   0;
        sin(q1),  cos(q1),   0;
              0,        0,   1];

R0_3 = [sin(q1+q3), cos(q1+q3),  0;
       -cos(q1+q3), sin(q1+q3),  0;
                 0,          0,  1];

% Ma tran M

M = m1*Jt1'*Jt1 + Jr1'*R0_1*Ic1*R0_1'*Jr1 + m2*Jt2'*Jt2 + Jr2'*R0_2*Ic2*R0_2'*Jr2 + m3*Jt3'*Jt3 + Jr3'*R0_3*Ic3*R0_3'*Jr3
%vecto gia toc trong truong
g0=[0 -g 0]';

%vecto luc suy rong do trong luc
g_q=-(m1*Jt1'*g0+m2*Jt2'*g0+m3*Jt3'*g0)

%cac phan tu cua ma tran coriolis
%m = [m1 m2 m3];
q = [q1 q2 q3];
qdot = [q1dot q2dot q3dot];
c = sym(ones(3,3,3));

for i = 1 : 1 : 3
    for j = 1 : 1 : 3
        for k = 1 : 1 : 3
             c(i,j,k) = 1/2 * (diff(M(i,j),q(k))+diff(M(i,k),q(j))-diff(M(j,k),q(i)));
        end
    end
end

C = sym(ones(3,3));
for i = 1:1:3
    for j = 1:1:3
        C(i,j) = 0;
        for k = 1:1:3
            C(i,j) = C(i,j) + c(i,j,k) * qdot(k);
        end
    end
end

%ma tran coriolis 

C