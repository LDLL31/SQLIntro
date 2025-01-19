Drop database if exists db_store;
create database  db_store;
use db_store;

create table stores(
id varchar(32) unique not null primary key,
store_name  varchar(50) not null,
adress varchar(50) not null );

create table products(
id varchar(32) unique not null primary key,
price  decimal(10,3) not null,
description_product varchar(50) not null );


create table store_products(
id_store varchar(32) not null,
id_product varchar(32) not null,
constraint fk_store_products foreign key (id_store) references stores(id),
constraint fk_products_store foreign key (id_product) references products(id) );


create table schedules(
id int unique not null primary key auto_increment,
id_store varchar(32) not null,
entry_time date not null,
out_time date not null, 
constraint fk_schedules_store foreign key (id_store) references stores(id) );


create table person(
id varchar(50) unique not null primary key,
f_name varchar(50) not null,
l_name varchar(50)  not null,
btd varchar(32) not null );


create table dpto(
id varchar(32) unique not null primary key,
dpto_name varchar(50) not null,
id_store varchar(32)  not null,
constraint fk_dpto_store foreign key (id_store) references stores(id) );


 create table employee(
id varchar(50) unique not null ,
id_person varchar(50) unique not null,
id_store varchar(32)  not null,
id_dpto varchar(32) unique not null,
btd varchar(32) not null,
constraint fk_employee_dpto foreign key (id_dpto) references dpto(id),
constraint fk_employee_store foreign key (id_store) references stores(id),
constraint fk_employee_person foreign key (id_person) references person(id) );


