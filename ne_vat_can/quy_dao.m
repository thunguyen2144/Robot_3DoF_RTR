function outputs = quy_dao(t)

T = 10 ; %thoi gian mo phong
t1 = 3 ; %thoi gian tang toc
t2 = T-2*t1; %thoi gian v = const

global A B R theta

%tam quy dao

global O1 O2
%O = [-70.031189654413609 -70.436567013201383];
O = O2;

phi1 = atan2(A(2)-O(2),A(1)-O(1));
phi2 = atan2(B(2)-O(2),B(1)-O(1));

phi = phi2 - phi1;
% gia toc goc
e = phi / (t1^2+t1*t2);

% theta = -pi/3;
vtheta = 0;

if t >= 0 && t <= t1
    xF = O(1) + R*cos(1/2*e*t^2 + phi1);
    yF = O(2) + R*cos(1/2*e*t^2 - pi/2 + phi1);

    % vxF = -R*e*t*sin(1/2*e*t*t + phi1);
    % vyF = -R*e*t*sin(1/2*e*t*t - pi/2 + phi1);
end
if t>=t1 && t<= (t1+t2)
    xF = O(1) + R*cos(1/2*e*t1^2 + e*t1*(t-t1) + phi1) ;
    yF = O(2) + R*cos(1/2*e*t1^2 - pi/2 + e*t1*(t-t1) + phi1);

     % vxF = -e*t1*R*sin(1/2*e*t1^2 + e*t1*(t-t1) + phi1) ;
     % vyF = -e*t1*R*sin(1/2*e*t1^2 - pi/2 + e*t1*(t-t1) + phi1);
end
if t >=t1+t2 && t<=T
    xF = O(1) + R * cos(1/2*e*t1^2 + e*t1*t2 + e*t1*(t-t1-t2) -1/2*e*(t-t1-t2)^2 + phi1) ;
    yF = O(2) + R * cos(1/2*e*t1^2 + e*t1*t2 + e*t1*(t-t1-t2) -1/2*e*(t-t1-t2)^2 - pi/2 + phi1);

     % vxF = - e*(T-t)* R * sin(1/2*e*t1^2 + e*t1*t2 + e*t1*(t-t1-t2) -1/2*e*(t-t1-t2)^2 + phi1) ;
     % vyF = - e*(T-t)* R * sin(1/2*e*t1^2 + e*t1*t2 + e*t1*(t-t1-t2) -1/2*e*(t-t1-t2)^2 - pi/2 + phi1);
end
if t>T
    xF = B(1);
    yF = B(2);

     % vxF = 0;
     % vyF = 0;
end
   % v = sqrt(vxF^2 + vyF^2);

outputs = [xF yF theta];