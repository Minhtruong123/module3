use furama;

-- task 2
SELECT 
    *
FROM
    nhan_vien
WHERE
    ho_ten LIKE 'T%' OR ho_ten LIKE 'H%'
        OR ho_ten LIKE 'K%' AND LENGTH(ho_ten) < 16;

-- task 3
SELECT 
    *
FROM
    khach_hang
WHERE
    ROUND(DATEDIFF(CURDATE(), ngay_sinh) / 365, 0) > 17
        AND ROUND(DATEDIFF(HOP_DONGCURDATE(), ngay_sinh) / 365,
            0) < 50
        AND dia_chi LIKE '%Đà Nẵng'
        OR dia_chi LIKE '%Quảng Trị';

-- task 4
SELECT 
    khach_hang.ma_khach_hang,
    khach_hang.ho_ten,
    COUNT(hop_dong.ma_khach_hang) 'Số lần đặt phòng'
FROM
    hop_dong
        JOIN
    khach_hang ON khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
        JOIN
    loai_khach ON loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
WHERE
    loai_khach.ten_loai_khach LIKE 'Diamond'
GROUP BY khach_hang.ma_khach_hang
ORDER BY COUNT(hop_dong.ma_khach_hang);

-- task 5
