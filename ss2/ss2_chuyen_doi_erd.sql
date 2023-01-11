create database chuyen_doi_erd_sang_mo_hinh_quan_he;
use chuyen_doi_erd_sang_mo_hinh_quan_he;

CREATE TABLE nha_cung_cap (
    ma_nha_cung_cap INT PRIMARY KEY,
    ten_nha_cung_cap VARCHAR(45),
    dia_chi VARCHAR(45),
    so_dien_thoai VARCHAR(15)
);

create table so_dien_thoai(
    so_dien_thoai varchar(15) primary key,
    ma_nha_cung_cap int,
    foreign key (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);

create table phieu_xuat(
	so_phieu_xuat int primary key,
    ngay_xuat date,
    don_gia_xuat varchar(20)
);

create table vat_tu(
	ma_vat_tu int primary key,
    ten_vat_tu varchar(45),
    so_luong_suat int,
    so_luong_nhap int
);

create table chi_tiet_phieu_xuat(
	don_gia_xuat varchar(20),
    so_luong_suat int,
    so_phieu_xuat int,
    ma_vat_tu int,
	foreign key (so_phieu_xuat) references phieu_xuat(so_phieu_xuat),
    foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);

create table phieu_nhap(
	so_phieu_nhap int primary key,
    ngay_nhap date,
    don_gia_nhap varchar(20)
);

create table chi_tiet_phieu_nhap(
	don_gia_nhap varchar(20),
    so_luong_nhap int,
    so_phieu_nhap int,
    ma_vat_tu int,
    foreign key (so_phieu_nhap) references phieu_nhap(so_phieu_nhap),
    foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);

create table don_dat_hang(
	so_dat_hang int primary key,
    ngay_dat_hang date,
    ma_nha_cung_cap int,
    foreign key (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);

create table chi_tiet_don_hang(
	ma_vat_tu int,
    so_dat_hang int,
    foreign key (ma_vat_tu) references vat_tu(ma_vat_tu),
    foreign key (so_dat_hang) references don_dat_hang(so_dat_hang)
);
