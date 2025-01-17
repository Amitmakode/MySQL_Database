create database trigg ;
use trigg ;

-- before/after, insert, update, delete

create table trigger1 (
c1 varchar(50),
c2 date,
c3 int);

create table trigger2 (
c11 varchar(50),
c12 date,
c13 int);

insert into trigger1 value ("java", "2000-12-12", 500) ;
 

select * from trigger1 ;
select * from trigger2 ;

delimiter //
create trigger t1_to_t2
after insert on trigger1 for each row 
begin
	insert into trigger2(c11,c12,c13) values ("xyz", sysdate(), 120);
end; //

insert into trigger1 value ("java2", "2000-12-12", 500) ;


create table u1 (
c1 varchar(50),
c2 date,
c3 int);


create table u2 (
c11 varchar(50),
c12 date,
c13 int);

insert into u1 value ("java1", "2000-12-12", null) ;

select * from u1 ;
select * from u2 ;


delimiter //
create trigger u1_to_u2
before update on u1 for each row 
begin
	insert into u2(c11,c12,c13) values ("xyz", sysdate(), new.c3);
end; //


update u1 set c3 = 222 where c1 = 'java1' ;

select * from u1 ;
select * from u2 ;


create table d1 (
c1 varchar(50),
c2 date,
c3 int);


create table d2 (
c11 varchar(50),
c12 date,
c13 int);

insert into d1 value ("java3", "2000-12-12", 8998) ;

select * from d1 ;
select * from d2 ;


delimiter //
create trigger d1_to_d2
before delete on d1 for each row 
begin
	insert into d2(c11,c12,c13) values (old.c1, old.c2, old.c3);
end; //


delete from d1 where c1 = "java2" ;

select * from d1 ;
select * from d2 ;


