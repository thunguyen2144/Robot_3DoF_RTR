%% 1. Lấy dữ liệu từ Workspace
% Biến của bạn tên là 'out', nằm trong kết quả mô phỏng cũng tên 'out'
ts_data = out.out;      % Lấy đối tượng timeseries
t = ts_data.Time;       % Lấy thời gian
data = ts_data.Data;    % Lấy dữ liệu sai số (3 cột)

%% 2. Vẽ đồ thị chuyên nghiệp
hFig = figure('Color', 'w'); % Tạo hình với nền TRẮNG ('w' = white)

% Vẽ 3 đường tín hiệu với độ dày lớn hơn cho dễ nhìn
plot(t, data(:,1), 'LineWidth', 0.5, 'DisplayName', 'Sai số X (m)'); hold on;
plot(t, data(:,2), 'LineWidth', 0.5, 'DisplayName', 'Sai số Y (m)');
plot(t, data(:,3), 'LineWidth', 0.5, 'DisplayName', 'Sai số Góc (rad)');

%% 3. Trang trí (Làm đẹp số và chữ)
% Bật lưới
grid on;
grid minor; % Lưới nhỏ (tùy chọn)

% Tăng cỡ chữ cho trục số (quan trọng cho báo cáo)
set(gca, 'FontSize', 14, 'FontName', 'Times New Roman'); 

% Chú thích trục và tiêu đề
xlabel('Thời gian (s)', 'FontSize', 16, 'FontWeight', 'bold');
ylabel('Giá trị sai số', 'FontSize', 16, 'FontWeight', 'bold');
%title('Đồ thị đáp ứng sai số bám quỹ đạo', 'FontSize', 18);

% Tạo chú thích (Legend)
lgd = legend;
lgd.FontSize = 14;      % Cỡ chữ chú thích
lgd.Location = 'best';  % Tự động chọn vị trí thoáng nhất

% Giới hạn trục (nếu cần nhìn rõ phần ổn định)
% xlim([0 10]); 
% ylim([-0.001 0.001]); 

%% 4. Lưu ảnh chất lượng cao (Tự động)
% Lưu file ảnh PNG độ phân giải cao (300dpi) để chèn Word không bị vỡ
%exportgraphics(hFig, 'Do_thi_sai_so_dep.png', 'Resolution', 300);
fprintf('Đã lưu ảnh thành công!\n');