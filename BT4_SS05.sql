SELECT 
    order_id, 
    customer_id, 
    cancel_reason, 
    created_at
FROM Orders
WHERE cancel_reason IN ('KHACH_HUY', 'QUAN_DONG_CUA', 'KHONG_CO_TAI_XE', 'BOM_HANG')
ORDER BY created_at DESC;