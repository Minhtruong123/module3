create database `ss1`;
use `ss1`;

create table class(
	id int,
    `name` varchar(50)
);

alter table class add primary key (id);
insert into class (id,name) values (1,'Truong');
insert into class (id,name) values (2,'Trang');
select * from class;

create table teacher(
	id int,
    `name` varchar(50),
    age int,
    country varchar(50)
);

alter table teacher add primary key (id);
insert into teacher(id,name,age,country) values (1,'Truong', 20, 'Viet Nam');
select * from teacher;

drop database `ss1`;