create database chuyen_doi_erd_sang_mo_hinh_quan_he;
use chuyen_doi_erd_sang_mo_hinh_quan_he;

CREATE TABLE nha_cung_cap (
    ma_nha_cung_cap INT PRIMARY KEY,
    ten_nha_cung_cap VARCHAR(45),
    dia_chi VARCHAR(45)
);

CREATE TABLE so_dien_thoai (
    so_dien_thoai VARCHAR(15) PRIMARY KEY,
    ma_nha_cung_cap INT,
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);

CREATE TABLE phieu_xuat (
    so_phieu_xuat INT PRIMARY KEY,
    ngay_xuat DATE,
    don_gia_xuat VARCHAR(20)
);

CREATE TABLE vat_tu (
    ma_vat_tu INT PRIMARY KEY,
    ten_vat_tu VARCHAR(45),
    so_luong_suat INT,
    so_luong_nhap INT
);

CREATE TABLE chi_tiet_phieu_xuat (
    don_gia_xuat VARCHAR(20),
    so_luong_suat INT,
    so_phieu_xuat INT,
    ma_vat_tu INT,
    primary key(so_phieu_xuat, ma_vat_tu),
    FOREIGN KEY (so_phieu_xuat)
        REFERENCES phieu_xuat (so_phieu_xuat),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);

CREATE TABLE phieu_nhap (
    so_phieu_nhap INT PRIMARY KEY,
    ngay_nhap DATE,
    don_gia_nhap VARCHAR(20)
);

CREATE TABLE chi_tiet_phieu_nhap (
    don_gia_nhap VARCHAR(20),
    so_luong_nhap INT,
    so_phieu_nhap INT,
    ma_vat_tu INT,
    FOREIGN KEY (so_phieu_nhap)
        REFERENCES phieu_nhap (so_phieu_nhap),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);

CREATE TABLE don_dat_hang (
    so_dat_hang INT PRIMARY KEY,
    ngay_dat_hang DATE,
    ma_nha_cung_cap INT,
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);

CREATE TABLE chi_tiet_don_hang (
    ma_vat_tu INT,
    so_dat_hang INT,
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_dat_hang)
        REFERENCES don_dat_hang (so_dat_hang)
);