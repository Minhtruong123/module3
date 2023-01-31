use furama;

-- task 6
    select 
  dich_vu.ma_dich_vu, 
  dich_vu.ten_dich_vu, 
  dich_vu.dien_tich, 
  dich_vu.chi_phi_thue, 
  loai_dich_vu.ten_loai_dich_vu, 
  hop_dong.ngay_lam_hop_dong 
from 
  dich_vu 
  join loai_dich_vu on loai_dich_vu.ma_loai_dich_vu = dich_vu.ma_loai_dich_vu 
  join hop_dong on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu 
where 
  dich_vu.ma_dich_vu not in (
    select 
      hop_dong.ma_dich_vu 
    from 
      hop_dong 
    where 
      (
        (
          month(hop_dong.ngay_lam_hop_dong) between 1 
          and 3
        ) 
        and year(hop_dong.ngay_lam_hop_dong) like 2021
      )
  ) 
group by 
  dich_vu.ten_dich_vu;

-- task 7
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.so_nguoi_toi_da, dv.chi_phi_thue, ldv.ten_loai_dich_vu from dich_vu dv
join hop_dong hd on hd.ma_dich_vu= dv.ma_dich_vu
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where
	dv.ma_dich_vu not in (
		select hd.ma_dich_vu from hop_dong hd
        where (
			year(hd.ngay_lam_hop_dong) =2020
        )
)