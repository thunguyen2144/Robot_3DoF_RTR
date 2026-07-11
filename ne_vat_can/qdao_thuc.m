function out = qdao_thuc(in)
xd = in(1);
yd = in(2);
xc = in(4);
yc = in(5);
global theta S

d1 = sqrt((xd-S(1))^2 + (yd-S(2))^2);
d2 = sqrt((xc-S(1))^2 + (yc-S(2))^2);

if d1 < d2
    xd = xc;
    yd = yc;
end


out = [xd yd theta];