%% 1. Lấy dữ liệu từ Workspace
% Biến 'out.q1' chứa dữ liệu từ khối To Workspace bạn đã đặt tên

    ts_q2 = out.out2;         % Lấy đối tượng timeseries
    t = ts_q2.Time;         % Lấy trục thời gian
    data = ts_q2.Data;      % Lấy ma trận dữ liệu (4 cột)
    
    % Gán tên biến cho dễ đọc (Dựa theo thứ tự trong Scope Legend)
    % Giả sử thứ tự nối vào Mux là: q1 -> q1d -> q1min -> q1Max
    val_q2      = data(:, 1);  % Vị trí thực
    val_q2d     = data(:, 2);  % Vị trí đặt (mong muốn)
    val_q2min   = data(:, 3);  % Giới hạn dưới
    val_q2Max   = data(:, 4);  % Giới hạn trên


%% 2. Vẽ đồ thị chuyên nghiệp
hFig = figure('Color', 'w', 'Name', 'Dap ung vi tri q3'); 

% --- Vẽ các đường giới hạn (Vẽ trước để nằm lớp dưới) ---
% Vẽ q1Max (Màu xanh lá, nét đứt)
plot(t, val_q2Max, '-', 'Color', '#77AC30', 'LineWidth', 1.5, ...
    'DisplayName', 'Giới hạn trên (q2Max)'); hold on;

% Vẽ q1min (Màu cam, nét đứt)
plot(t, val_q2min, '-', 'Color', '#D95319', 'LineWidth', 1.5, ...
    'DisplayName', 'Giới hạn dưới (q2min)');

% --- Vẽ tín hiệu chính ---
% Vẽ q1d - Giá trị đặt (Màu xanh dương, nét đứt hoặc nét mảnh hơn)
plot(t, val_q2d, '-', 'Color', 'b', 'LineWidth', 2, ...
    'DisplayName', 'Quỹ đạo đặt (q2d)');

% Vẽ q1 - Giá trị thực (Màu đỏ hoặc vàng đậm, nét liền đậm)
plot(t, val_q2, '-', 'Color', 'r', 'LineWidth', 2, ...
    'DisplayName', 'Giá trị thực tế (q2)');

%% 3. Trang trí đồ thị
grid on; grid minor;
set(gca, 'FontSize', 14, 'FontName', 'Times New Roman');

% Chú thích trục
xlabel('Thời gian (s)', 'FontSize', 16, 'FontWeight', 'bold');
ylabel('Góc quay (rad)', 'FontSize', 16, 'FontWeight', 'bold');
title('Đáp ứng vị trí Khâu 2 theo quỹ đạo đặt', 'FontSize', 18);

% Chú thích (Legend)
lgd = legend;
lgd.FontSize = 12;
lgd.Location = 'best'; % Tự động chọn chỗ trống

% Giới hạn trục (Tự động canh lề cho đẹp)
xlim([min(t) max(t)]);
% ylim([-1 4]); % Có thể mở dòng này nếu muốn cố định trục Y

%% 4. Lưu ảnh
% exportgraphics(hFig, 'Dap_ung_q1.png', 'Resolution', 300);