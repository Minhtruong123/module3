use furama;

-- task 11
SELECT 
    dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
        JOIN
    hop_dong hd ON hd.ma_hop_dong = hdct.ma_hop_dong
        JOIN
    khach_hang kh ON kh.ma_khach_hang = hd.ma_khach_hang
        JOIN
    loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach
WHERE
    lk.ten_loai_khach LIKE 'Diamond'
        AND (kh.dia_chi LIKE '%Vinh'
        OR kh.dia_chi LIKE '%Quảng Ngãi');

-- task 12
SELECT 
    hd.ma_hop_dong,
    nv.ho_ten AS ho_ten_nhan_vien,
    kh.ho_ten AS ho_ten_khach_hang,
    kh.so_dien_thoai,
    dv.ma_dich_vu,
    ten_dich_vu,
    SUM(IFNULL(hdct.so_luong, 0)) AS so_luong_dich_vu_di_kem,
    tien_dat_coc
FROM
    hop_dong hd
        JOIN
    nhan_vien nv ON nv.ma_nhan_vien = hd.ma_nhan_vien
        JOIN
    khach_hang kh ON kh.ma_khach_hang = hd.ma_khach_hang
        JOIN
    dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
WHERE
    (MONTH(hd.ngay_lam_hop_dong) BETWEEN 10 AND 12
        AND (YEAR(hd.ngay_lam_hop_dong) LIKE 2020))
GROUP BY hd.ma_hop_dong;

-- task 13
SELECT 
    dvdk.ma_dich_vu_di_kem,
    dvdk.ten_dich_vu_di_kem,
    SUM(IFNULL(hdct.so_luong, 0)) AS so_luong_dich_vu_di_kem
FROM
    dich_vu_di_kem dvdk
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hdct.ma_dich_vu_di_kem
HAVING SUM(IFNULL(hdct.so_luong, 0)) = (SELECT 
        MAX(so_luong)
    FROM
        hop_dong_chi_tiet);

-- task 14
SELECT 
    hdct.ma_hop_dong,
    ldv.ten_loai_dich_vu,
    dvdk.ten_dich_vu_di_kem,
    COUNT(hdct.ma_dich_vu_di_kem)
FROM
    hop_dong_chi_tiet hdct
        LEFT JOIN
    hop_dong hd ON hdct.ma_hop_dong = hd.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
        LEFT JOIN
    dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
        LEFT JOIN
    loai_dich_vu ldv ON ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
GROUP BY dvdk.ten_dich_vu_di_kem
HAVING COUNT(hdct.ma_dich_vu_di_kem) = (SELECT 
        MIN(ma_dich_vu_di_kem)
    FROM
        hop_dong_chi_tiet)
ORDER BY hdct.ma_hop_dong;

-- task 15
SELECT 
    hd.ma_nhan_vien,
    nv.ho_ten,
    td.ten_trinh_do,
    bp.ten_bo_phan,
    nv.so_dien_thoai,
    nv.dia_chi
FROM
    hop_dong hd
        JOIN
    nhan_vien nv ON hd.ma_nhan_vien = nv.ma_nhan_vien
        JOIN
    trinh_do td ON td.ma_trinh_do = nv.ma_trinh_do
        JOIN
    bo_phan bp ON bp.ma_bo_phan = nv.ma_bo_phan
GROUP BY hd.ma_nhan_vien
HAVING COUNT(hd.ma_nhan_vien) < 4;