create database key_ ;

use key_ ;

create table customer(
C_id int primary key,
c_name varchar(20),
Age int ) ;

create table product(
p_id int primary key,
p_name varchar(20),
stock int ) ;

create table `order`(
o_id int,
o_date date,
c_id int,
P_id int,
primary key(o_id, o_Date),  -- composite key
FOREIGN KEY (C_id) REFERENCES customer(C_id),   
FOREIGN KEY (p_id) REFERENCES product(p_id)) ;

insert into customer values 
(5, "vishal", 24),
(2, "rohan", 21),
(3, "deepak", 22),
(4, "visvash", 23) ;


insert into product values 
(101, "AC", 5),
(102, "TV", 10),
(103, "Radio", 30),
(104, "WM", 12) ;


select * from customer ;

select * from product ; 


insert into `order`  values
(1001, "2024-12-20", 1, 102),
(1002, "2024-12-21", 4, 101),
(1003, "2024-12-22", 3, 103) ;

insert into `order`  values
(1004, "2024-12-22", 5, 102),
(1002, "2024-12-21", 4, 101),
(1003, "2024-12-22", 3, 103) ;

select * from `order` ;


update customer 
set c_id = 6 where c_id = 5 ;

delete from `order`
where c_id = 5 ;


