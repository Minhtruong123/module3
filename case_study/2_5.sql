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
        AND ROUND(DATEDIFF(CURDATE(), ngay_sinh) / 365,
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
select 
  khach_hang.ma_khach_hang, 
  khach_hang.ho_ten, 
  loai_khach.ten_loai_khach, 
  hop_dong.ma_hop_dong, 
  dich_vu.ten_dich_vu, 
  hop_dong.ngay_lam_hop_dong, 
  hop_dong.ngay_ket_thuc, 
  sum(
    ifnull(dich_vu.chi_phi_thue, 0)+ ifnull(hop_dong_chi_tiet.so_luong, 0)* ifnull(dich_vu_di_kem.gia, 0)
  ) 'total' 
from 
  khach_hang 
  left join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach 
  left join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang 
  left join dich_vu on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu 
  left join loai_dich_vu on loai_dich_vu.ma_loai_dich_vu = dich_vu.ma_loai_dich_vu 
  left join hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong 
  left join dich_vu_di_kem on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem 
group by 
  ma_hop_dong, khach_hang.ma_khach_hang 
order by 
  ma_khach_hang asc, 
  ma_hop_dong desc;