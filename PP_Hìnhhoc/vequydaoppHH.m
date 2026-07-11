clc
clear
global l1 l3
% load veqdao(ppDS).mat
load ve(ppHinhhoc).mat
s = ans;
t =  s(1,:);
q1 = s(2,:);
q2 = s(3,:);
q3 = s(4,:);

length(t);

for i=1:20:length(t)
O0x=0;
O0y=0;

O1x(i)=l1*cos(q1(i));
O1y(i)=l1*sin(q1(i));

O2x(i)= q2(i)*sin(q1(i)) + l1*cos(q1(i));
O2y(i)=-q2(i)*cos(q1(i)) + l1*sin(q1(i));

O3x(i)= l3*sin(q1(i)+q3(i)) + q2(i)*sin(q1(i)) + l1*cos(q1(i));
O3y(i)=-l3*cos(q1(i)+q3(i)) - q2(i)*cos(q1(i)) + l1*sin(q1(i));

xA = [O0x , O1x(i) , O2x(i) , O3x(i)];
yA = [O0y , O1y(i) , O2y(i) , O3y(i)];
figure(1)
xlabel ('x [cm]');
ylabel ('y [cm]');

plot(xA, yA, 'k-'), grid on, hold on

end