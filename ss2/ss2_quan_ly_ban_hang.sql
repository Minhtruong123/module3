create database quan_ly_ban_hang;
use quan_ly_ban_hang;

CREATE TABLE customer (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(45),
    c_age INT
);

CREATE TABLE `order` (
    o_id INT PRIMARY KEY,
    c_id INT,
    o_date DATE,
    o_total_price VARCHAR(20),
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id)
);

CREATE TABLE product (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(45),
    p_price VARCHAR(20)
);

CREATE TABLE order_detail (
    o_id INT,
    p_id INT,
    od_qty VARCHAR(45),
    PRIMARY KEY (o_id , p_id),
    FOREIGN KEY (o_id)
        REFERENCES `order` (o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id)
);
