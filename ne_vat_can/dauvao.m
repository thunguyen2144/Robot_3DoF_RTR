clc
clear all
global l1 l2 l3 m1 m2 m3 g I1x I1y I1z I2x I2y I2z I3x I3y I3z
global q1m q1M q2m q2M q3m q3M

% Thong so may
%gia to trong truong
g = 9.81;
%khau 1
m1 = 1; l1 = 0.1695; I1x = 1; I1y = 1; I1z = 1; 
%khau 2
m2 = 1; l2 = 0.105; I2x = 1; I2y = 1; I2z = 1;
%khau 3
m3 = 1; l3 = 0.095; I3x = 1; I3y = 1; I3z = 1;
%gioi han muc khop
q1m = 0          ;        q1M = pi;
q2m =   0.085      ;
q2M = 0.125; %0.125      ;
q3m = -pi        ;         q3M = 0;
% quy dao va vat can
global A B R theta
global S % tamquydao

S = [0.09 0.1];

% Tim tam quy dao mong muon
A = [0.02375 0.12433];
B = [0.145 0.1];
R = 10;
theta = -pi/3;
%khoang cach AB
d = sqrt((A(1)-B(1))^2 + (A(2)-B(2))^2);
if d > 2*R
    disp('ERROR');
    return;
else
a = ((A(2)-B(2))/(A(1)-B(1)))^2 + 1;
b = ((A(1)-B(1))^2+B(2)^2-A(2)^2)/(A(1)-B(1)) * (A(2)-B(2))/(A(1)-B(1)) - 2*A(2);
c = ((A(2)^2-B(2)^2-(A(1)-B(1))^2)/(2*(A(1)-B(1))))^2 + A(2)^2 - R^2;
tenta = b^2 - 4*a*c;
global O1 O2
o2 = (-b + sqrt(tenta))/(2*a);
o4 = (-b - sqrt(tenta))/(2*a);
o1 = (A(1)+B(1))/2 + ((A(2)-B(2))*(A(2)+B(2)))/(2*(A(1)-B(1))) - (A(2)-B(2))/(A(1)-B(1)) * o2;
o3 = (A(1)+B(1))/2 + ((A(2)-B(2))*(A(2)+B(2)))/(2*(A(1)-B(1))) - (A(2)-B(2))/(A(1)-B(1)) * o4;
%tam can tim
format long
O1 = [o1 o2]
O2 = [o3 o4]
end

