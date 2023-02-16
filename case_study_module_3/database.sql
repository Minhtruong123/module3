create database group4;
use group4;

create table singer(
	singer_id int primary key not null auto_increment,
    name_singer varchar(50)
);

create table type_song(
	type_id int primary key not null auto_increment,
    name_type varchar(50) not null
);

create table playlist(
	playlist_id int primary key not null auto_increment,
    name_song varchar(50) not null,
    singer_id int not null,
    type_id int not null,
    foreign key (singer_id) references singer(singer_id),
    foreign key (type_id) references type_song(type_id)
);

create table user(
	user_id int primary key not null auto_increment,
    role_id int,
    name_user varchar(50) not null,
    email_user varchar(50),
    playlist_id int not null,
    foreign key (playlist_id) references playlist(playlist_id)
);