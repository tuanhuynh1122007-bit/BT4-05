CREATE DATABASE ss05_bt04;
USE ss05_bt04;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    reason VARCHAR(50),
    created_at TIMESTAMP
);

INSERT INTO Orders (order_id, customer_name, reason, created_at) VALUES
(101, 'Anh Tuấn', 'KHACH_HUY', '2026-05-01 10:00:00'),
(102, 'Chị Lan', 'DELIVERED', '2026-05-01 10:15:00'),
(103, 'Anh Hoàng', 'BOM_HANG', '2026-05-01 11:30:00'),
(104, 'Chị Mai', 'QUAN_DONG_CUA', '2026-05-02 08:00:00'),
(105, 'Chú Hùng', 'KHONG_CO_TAI_XE', '2026-05-02 12:45:00');

-- giai phap 1 
SELECT * FROM Orders
WHERE reason = 'KHACH_HUY' 
   OR reason = 'QUAN_DONG_CUA' 
   OR reason = 'KHONG_CO_TAI_XE' 
   OR reason = 'BOM_HANG';
-- giai phap 2
SELECT * FROM Orders
WHERE reason IN ('KHACH_HUY', 'QUAN_DONG_CUA', 'KHONG_CO_TAI_XE', 'BOM_HANG');

-- Về mức độ sạch của mã nguồn 
  -- Toán tử OR: Thường gây cảm giác rườm rà 
  -- Toán tử IN: Mang lại sự gọn gàng và chuyên nghiệp hơn

-- Về khả năng mở rộng 
  -- Toán tử OR: Rất khó bảo trì
  -- Toán tử IN: Có khả năng mở rộng rất tốt chỉ cần thêm giá trị mới vào trong dấu ngoặc đơn 

-- Về hiệu năng xử lý (Performance)
  -- Toán tử OR: SQL kiểm tra 1 cahs tuần tự dẫn đến khi nhiều dữ liệu sẽ mất tg 
  -- Toán tử IN: Tối ưu hơn về mặt hiệu năng. 
  
  -- nên em chọn c2
  
