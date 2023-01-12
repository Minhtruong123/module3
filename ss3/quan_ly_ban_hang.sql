use quan_ly_ban_hang;

insert into customer (c_id, c_name, c_age) values 
(1, 'Minh Quan', 10),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);

insert into `order` (o_id, c_id, o_date, o_total_price) values 
(1, 1, '2006-03-21', null),
(2, 2, '2006-03-23', null),
(3, 1, '2006-03-16', null);

insert into product (p_id, p_name, p_price) values 
(1, 'May Giat', 3),
(2, 'Tu Lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5, 'Bep Dien', 2);

insert into order_detail (o_id, p_id, od_qty) values
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select o_id, o_date, o_total_price from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select c_name 'Danh sách khách mua hàng', o_date 'Thời gian' from `order`
join customer on `order`.c_id = customer.c_id;

select c_name, p_name, o_date from order_detail o
join product on o.p_id = product.p_id
join `order` on o.o_id = `order`.o_id
join customer on `order`.c_id = customer.c_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select * from customer
where customer.c_name not in( 
select c_name from `order`
join customer on `order`.c_id = customer.c_id);

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
-- Giá bán của từng loại được tính = odQTY*pPrice)
SELECT `order`.o_id, `order`.o_date, sum(order_detail.od_qty*product.p_price) 'Tổng hóa đơn'
FROM `order`
JOIN order_detail ON `order`.o_id = order_detail.o_id
JOIN product ON order_detail.p_id = product.p_id
group by `order`.o_id;