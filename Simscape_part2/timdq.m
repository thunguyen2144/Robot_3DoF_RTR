function dq = timdq(in)
persistent k_locked k_is_locked

% Khởi tạo nếu là lần đầu chạy
if isempty(k_locked)
    k_locked = 0;
    k_is_locked = false;
end

q1 = in(1);
q2 = in(2);
q3 = in(3);

x1dot = in(4);
x2dot = in(5);
x3dot = in(6);
dx = [x1dot;x2dot;x3dot];

global m1 m2 m3 l1 l2 l3
global q1m q1M q2m q2M q3m q3M

E = diag([1,1,1]);

J =[ l3*cos(q1+q3) + q2*cos(q1) - l1*sin(q1),  sin(q1), l3*cos(q1+q3);
     l3*sin(q1+q3) + q2*sin(q1) + l1*cos(q1), -cos(q1), l3*sin(q1+q3);
                   1                        ,    0    ,      1       ];

w = sqrt(det(J*J'));

% Giới hạn khớp → ép w = 0
if(q1>=q1M || q1<=q1m || q2>=q2M || q2<=q2m || q3>=q3M || q3<=q3m)
    w = 0;
end

% Ngưỡng xử lý
eo = 1000;
wo = 0.0001;

% Nếu chưa từng vi phạm mà hiện tại w < wo → khóa k tại đây
if w < wo && ~k_is_locked
    k_locked = eo * (1 - w / wo)^2;
    k_is_locked = true;
end

% Nếu chưa từng vi phạm → k = 0, ngược lại dùng k_locked
if k_is_locked
    k = k_locked;
else
    k = 0;
end

% Tính dq
dq = inv(J'*J + k*E)*J'*dx;
