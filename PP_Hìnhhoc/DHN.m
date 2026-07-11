function q = DHN(in)

%tinh q1 q2 q3 theo ĐHNguoc
global l1 l3
 % in=[1 2 3]
xE=in(1);
yE=in(2);
theta=in(3);

r=sqrt((xE-l3*cos(theta))^2 + (yE-l3*sin(theta))^2);
D=(xE^2+yE^2-r^2-l3^2)/(2*r*l3);

% Kiểm tra điều kiện cho D
if abs(D) > 1 || r <= l1 || D==0  
    q1 = 1;
    q2 = 1;  
    q3 = 1;  
else
q2 = sqrt(r^2 - l1^2);  
q3 = atan2(l1,sqrt(r^2 - l1^2)) - atan2(sqrt(1-D^2),D);
q1 = theta - q3 + pi/2;

end

% Xuất kết quả
q = [q1, q2, q3];

end