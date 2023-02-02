use furama;

-- task 16
SELECT 
    *
FROM
    nhan_vien nv
        LEFT JOIN
    hop_dong hd ON hd.ma_nhan_vien = nv.ma_nhan_vien
GROUP BY nv.ma_nhan_vien;
delete from 
  nhan_vien nv 
where 
  nv.ma_nhan_vien not in (
    select 
      distinct ma_nhan_vien 
    from 
      hop_dong hd 
    where 
      year(hd.ngay_lam_hop_dong) between 2019 
      and 2021
  );
  
-- task 17
UPDATE khach_hang 
SET 
    ma_loai_khach = 1
WHERE
    ma_khach_hang IN (SELECT 
            ma_khach_hang
        FROM
            (SELECT distinct
                kh.ma_khach_hang
            FROM
                khach_hang kh
            JOIN hop_dong hd ON hd.ma_khach_hang = kh.ma_khach_hang
            JOIN dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
            JOIN hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
            JOIN dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
            WHERE
                YEAR(ngay_lam_hop_dong) = 2021
            GROUP BY kh.ma_khach_hang
            HAVING SUM(dv.chi_phi_thue + dvdk.gia * hdct.so_luong) > 1000000
                AND ma_loai_khach = 2) sua);
                
-- task 18
select * from khach_hang;
DELETE FROM khach_hang kh
WHERE
    kh.ma_khach_hang IN (SELECT
        hd.ma_khach_hang
    FROM
        hop_dong hd
    WHERE
        YEAR(hd.ngay_lam_hop_dong) < 2021);
        
-- task 19
select * from dich_vu_di_kem;
UPDATE dich_vu_di_kem 
SET 
    gia = gia * 2
WHERE
    ma_dich_vu_di_kem IN (SELECT 
            hdct.ma_dich_vu_di_kem
        FROM
            hop_dong_chi_tiet hdct
                JOIN
            hop_dong hd ON hd.ma_hop_dong = hdct.ma_hop_dong
        WHERE
            YEAR(hd.ngay_lam_hop_dong) LIKE 2020
        GROUP BY hdct.ma_dich_vu_di_kem
        HAVING SUM(hdct.so_luong) > 10);
        
-- task 20
SELECT 
    ma_nhan_vien id,
    ho_ten,
    email,
    so_dien_thoai,
    ngay_sinh,
    dia_chi
FROM
    nhan_vien 
UNION SELECT 
    ma_khach_hang id,
    ho_ten,
    email,
    so_dien_thoai,
    ngay_sinh,
    dia_chi
FROM
    khach_hang;