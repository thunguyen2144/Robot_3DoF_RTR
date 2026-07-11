clc
inputs = [0.02375 0.12433 -pi/3 2.2145 0.116 -1.718]; %quy dao thang
%inputs = [41.44 69.73 -pi/3 2.2145 72 1.6]; % quy dao tron
%toa do xE
xE = inputs(1);
yE = inputs(2);
thetaE = inputs(3);

x0 = [xE yE thetaE];

q1 = inputs(4);
q2 = inputs(5);
q3 = inputs(6);

q = [q1;q2;q3];

error = [1 1 1] ;
k = 1 ;
while k < 1000000000000 && norm(error,inf) > 10e-13 
    I = eye(3,3);
    J = Jacobi(q);
    x = donghocthuan(q);
    invJ = I/J;
    error = invJ * (-x+x0)';
    q = q + error;
    k = k + 1;
end
format long
q0 = q'
x2=donghocthuan(q0)