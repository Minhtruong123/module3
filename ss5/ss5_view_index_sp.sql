create database ss5_view_index_sp;
use ss5_view_index_sp;

create table products (
	id int primary key auto_increment,
	product_code varchar(45),
	product_name varchar(45),
	product_price varchar(45),
	product_amount varchar(45),
	product_description varchar(45),
	product_status varchar(45)
);

insert into products(product_code, product_name, product_price, product_amount, product_description, product_status) values 
('hp313','Laptop','123','111','new','abc'),
('samsung','Table','234','222','new','xyz'),
('intel','Chair','345','333','new','cde');

create index index_product_code on products (product_code);
create index index_product_name_price on products (product_name, product_price);
drop index index_product_code on products;
drop index index_product_name_price on products;

explain select * from products 
where product_code = 'hp313';
explain select * from products 
where product_name = 'Laptop';
explain select * from products 
where product_price = '123';

delimiter //
create procedure list_all_information() 
begin
	select * from products;
end // 
delimiter ; 
call list_all_information;

delimiter //
create procedure add_new_product(
		product_code varchar(45),
		product_name varchar(45),
		product_price varchar(45),
		product_amount varchar(45),
		product_description varchar(45),
		product_status varchar(45)
    ) 
begin
	insert into products(product_code, product_name, product_price, product_amount, product_description, product_status) values 
    (product_code, product_name, product_price, product_amount, product_description, product_status);
end // 
delimiter ; 
call add_new_product ('đt','điện thoại','23934287','22','samsung','almost vip');

delimiter // 
create procedure edit_by_id(
	id int, 
    product_code varchar(45),
	product_name varchar(45),
	product_price varchar(45),
	product_amount varchar(45),
	product_description varchar(45),
	product_status varchar(45))
begin
	update products
    set 
    products.product_code = product_code,
    products.product_name = product_name,
    products.product_price = product_price,
    products.product_amount= product_amount,
    products.product_description = product_description,
    products.product_status = product_status
    where products.id = id;
end //
delimiter ;
call edit_by_id (6,'dfsf','gsg','dfgdfg','gdfg','ưer','qưeqwe');

delimiter //
create procedure delete_by_id (id int) 
begin
	delete from products
    where products.id = id;
end //
delimiter ;
call delete_by_id(4);