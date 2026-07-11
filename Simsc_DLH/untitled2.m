% ========================================================================
% CHƯƠNG TRÌNH VẼ STICK DIAGRAM MÔ PHỎNG CHUYỂN ĐỘNG ROBOT
% ========================================================================
clear all; close all; clc;

%% 1. TẠO DỮ LIỆU GIẢ LẬP (THAY THẾ BẰNG DỮ LIỆU THỰC CỦA BẠN)
% Giả sử robot cần đi theo một đường thẳng màu đỏ như trong hình mẫu.
% Ta tạo ra 30 điểm mẫu dọc theo đường thẳng đó.
num_steps = 30;
xE_path = linspace(0.2, 0.2, num_steps); % Tọa độ X điểm cuối giữ nguyên
yE_path = linspace(0.05, 0.45, num_steps); % Tọa độ Y điểm cuối tăng dần

% Thông số kích thước giả lập cho các khâu (để vẽ)
L1 = 0.25; % Chiều dài khâu 1 giả định
L2 = 0.25; % Chiều dài khâu 2 giả định

%% 2. VẼ ĐỒ THỊ
figure('Name', 'Mo phong Stick Diagram', 'Color', 'w');
hold on; grid on; axis equal;

% Đặt giới hạn trục cho dễ nhìn (Tùy chỉnh theo không gian làm việc của bạn)
xlim([-0.1 0.5]);
ylim([-0.1 0.5]);

xlabel('Tọa độ X (m)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('Tọa độ Y (m)', 'FontSize', 12, 'FontWeight', 'bold');
title('Mô phỏng quỹ đạo và tư thế Robot', 'FontSize', 14);

% Vẽ gốc tọa độ (Base)
plot(0, 0, 'ko', 'MarkerSize', 10, 'MarkerFaceColor', 'k');

fprintf('Đang vẽ mô phỏng...\n');

%% 3. VÒNG LẶP MÔ PHỎNG CHUYỂN ĐỘNG
for i = 1:num_steps
    % --- Lấy tọa độ điểm cuối mong muốn tại bước i ---
    xE = xE_path(i);
    yE = yE_path(i);
    
    % ====================================================================
    % PHẦN NÀY CẦN THAY THẾ BẰNG ĐỘNG HỌC CỦA BẠN
    % (Ví dụ dưới đây dùng Động học ngược đơn giản của robot 2 khâu phẳng
    % để tính ra các góc khớp, sau đó tính lại tọa độ khớp giữa P1)
    % ====================================================================
    % [BẮT ĐẦU VÙNG GIẢ LẬP ĐỂ VẼ HÌNH MẪU]
        % Tính toán góc khớp (Inverse Kinematics giả lập)
        r2 = xE^2 + yE^2;
        c2 = (r2 - L1^2 - L2^2) / (2*L1*L2);
        s2 = sqrt(1 - c2^2); % Giả sử cấu hình khuỷu tay lên (elbow up)
        theta2 = atan2(s2, c2);
        k1 = L1 + L2*c2;
        k2 = L2*s2;
        theta1 = atan2(yE, xE) - atan2(k2, k1);
        
        % Tính toán tọa độ khớp giữa P1 (Forward Kinematics giả lập)
        P0 = [0, 0];       % Tọa độ gốc
        P1_x = L1 * cos(theta1);
        P1_y = L1 * sin(theta1);
        P1 = [P1_x, P1_y]; % Tọa độ khớp khuỷu tay
        PEE = [xE, yE];    % Tọa độ điểm tác động cuối
    % [KẾT THÚC VÙNG GIẢ LẬP]
    % ====================================================================
    
    % --- VẼ CÁC ĐỐI TƯỢNG ---
    
    % 1. Vẽ điểm quỹ đạo (Dấu chấm đỏ)
    plot(PEE(1), PEE(2), 'r.', 'MarkerSize', 12);
    
    % 2. Vẽ thân robot (Stick Diagram - Các đoạn thẳng đen)
    % Chỉ vẽ một vài tư thế đại diện (ví dụ: cứ 5 bước vẽ 1 lần) để đỡ rối hình
    if mod(i, 5) == 1 || i == num_steps
        % Vẽ khâu 1 (từ gốc P0 đến khớp P1)
        line([P0(1), P1(1)], [P0(2), P1(2)], 'Color', 'k', 'LineWidth', 2);
        % Vẽ khâu 2 (từ khớp P1 đến điểm cuối PEE)
        line([P1(1), PEE(1)], [P1(2), PEE(2)], 'Color', 'k', 'LineWidth', 2);
        % Vẽ điểm khớp nối cho đẹp
        plot(P1(1), P1(2), 'ko', 'MarkerSize', 6, 'MarkerFaceColor', 'w');
    end
    
    % Tạm dừng một chút để tạo hiệu ứng hoạt hình (nếu muốn nhìn robot chạy)
    % pause(0.05); 
end

fprintf('Hoàn tất vẽ.\n');