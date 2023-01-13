use furama;

-- task 2
SELECT 
    *
FROM
    nhan_vien
WHERE
	substring_index(nhan_vien.ho_ten,' ',-1) like 'H%'
    or substring_index(nhan_vien.ho_ten,' ',-1) like 'T%'
    or substring_index(nhan_vien.ho_ten,' ',-1) like 'K%'
    AND LENGTH(ho_ten) < 16;
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
select hd.ma_khach_hang, ho_ten, ten_loai_khach, hd.ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, gia*so_luong + chi_phi_thue 'tong tien' from hop_dong hd
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join khach_hang kh on hd.ma_khach_hang = kh.ma_khach_hang
join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
group by hd.ma_hop_dong
order by kh.ma_khach_hang;