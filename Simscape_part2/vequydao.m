clc
global l1 l3
load ve.mat
s = ans';
t =  s(:,1);
q1 = s(:,2);
q2 = s(:,3);
q3 = s(:,4);

figure(1); clf;
xlabel ('x [m]');
ylabel ('y [m]');
hold on; grid on;
axis equal;    % đảm bảo x,y tỷ lệ 1:1

for i = 1:20:length(t)
    O0x = 0;  O0y = 0;

    O1x = l1*cos(q1(i));
    O1y = l1*sin(q1(i));

    O2x = q2(i)*sin(q1(i)) + l1*cos(q1(i));
    O2y = -q2(i)*cos(q1(i)) + l1*sin(q1(i));

    O3x = l3*sin(q1(i)+q3(i)) + q2(i)*sin(q1(i)) + l1*cos(q1(i));
    O3y = -l3*cos(q1(i)+q3(i)) - q2(i)*cos(q1(i)) + l1*sin(q1(i));

    xA = [O0x , O1x , O2x , O3x];
    yA = [O0y , O1y , O2y , O3y];

    plot(xA, yA, 'k-');
    scatter(O0x,O0y,'k+');
    scatter(O1x,O1y,'bl.');
    scatter(O2x,O2y,'r.');
    scatter(O3x,O3y,'k.');
    drawnow;
end
