

DDL  - create, drop, truncate, alter
DML  - insert, update, delete
DCL  - Grant, Revoke
TCL  - Commit, rollback, savepoint
DQL  - Select

drop database ddl ;
create database DDL ;
use ddl ;

show tables ;

create table employee (sr int, Ename varchar(20), Salary decimal(8, 2)) ;

insert into employee values (2, "roshan", 300000) ;

insert into employee values (3, "sanket" ) ;

insert into employee(sr, Ename) values (3, "sanket" ) ;

insert into employee values (3, "sanket", null ) ;

select * from employee ;

alter table employee
add column address varchar(50) ;

alter table employee
add column DOB varchar(10) after ename ;

alter table employee
add column dept varchar(10) first ;

update employee
set salary = 25000 where ename = "sanket" ;

update employee
set dept = "sales" ;

alter table employee
rename column DOB to DOJ ;

desc employee ;

alter table employee
modify column DOJ Date ;

update employee
set DOJ = "2012-02-10"  where sr = 1; 

update employee
set DOJ = "2012-02-15"  where sr in (2,3); 

select * from employee ;

alter table employee
drop column dept ;

delete from employee
where sr = 3 ;

rename table employee to EMP ;

select * from EMP ;

truncate table emp ;

drop table emp; 

