function x = donghocthuan(q)

global l1 l3

q1=q(1);
q2=q(2);
q3=q(3);

x1= l3*sin(q1+q3)+q2*sin(q1)+l1*cos(q1);
x2=-l3*cos(q1+q3)-q2*cos(q1)+l1*sin(q1);
theta = q1+q3-pi/2;


x=[x1 x2 theta]; %vi tri diem cuoi;
