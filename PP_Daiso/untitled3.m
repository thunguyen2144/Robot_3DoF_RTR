%% 1. Lấy dữ liệu từ khối To Workspace (out.simout)

    % Lấy dữ liệu từ biến simout
    ts_v = out.simout;      
    t = ts_v.Time;          % Trục thời gian
    v = ts_v.Data;          % Giá trị vận tốc


%% 2. Vẽ đồ thị chuyên nghiệp cho báo cáo
figure('Name', 'Profile Van toc', 'Color', 'w'); % Tạo hình nền trắng

% Vẽ đường vận tốc (Màu xanh đậm hoặc Đỏ cho nổi bật trên nền trắng)
plot(t, v, 'LineWidth', 2, 'Color', '#D95319'); % Màu cam đậm (giống màu cảnh báo nhưng đẹp hơn)

%% 3. Trang trí đồ thị
grid on;          % Bật lưới
grid minor;       % Lưới nhỏ
box on;           % Đóng khung đồ thị

% Thiết lập Font chữ chuẩn báo cáo
set(gca, 'FontSize', 12, 'FontName', 'Times New Roman');

% Chú thích trục
xlabel('Thời gian (s)', 'FontSize', 14, 'FontWeight', 'bold');
ylabel('Vận tốc (m/s)', 'FontSize', 14, 'FontWeight', 'bold'); % Hoặc rad/s tùy khớp
% title('Đáp ứng vận tốc theo Profile hình thang', 'FontSize', 16);

% Giới hạn trục (để đồ thị sát lề đẹp hơn)
xlim([min(t) max(t)]);
ylim([0 max(v)*1.1]); % Tự động mở rộng trục Y cao hơn đỉnh một chút cho thoáng

%% 4. Thêm chú thích các giai đoạn (Tùy chọn - Rất tốt cho đồ án)
% Tự động tìm điểm bắt đầu giảm tốc (nếu muốn) hoặc chú thích thủ công
text(t(end)*0.2, max(v)/2, 'Tăng tốc', 'FontSize', 14, 'Color', 'b');
text(t(end)*0.5, max(v)*0.9, 'Vận tốc không đổi', 'FontSize', 14, 'Color', 'b', 'HorizontalAlignment', 'center');
text(t(end)*0.8, max(v)/2, 'Giảm tốc', 'FontSize', 14, 'Color', 'b');