Use bulk_load ;
show tables ;

select * from bank where age regexp 44 ; 

select job from bank where job regexp '^s' ; 

select job from bank where job regexp '^[sba]' ; 

select job from bank where job regexp '[st]$' ; 

select job from bank where job regexp 'r$' ; 

select job from bank where job regexp '^.{12}$' ; 

SELECT REGEXP_INSTR('a b c d e f', 'b', 1, 1, 0) AS start_index_;  

SELECT REGEXP_INSTR('a b c d e f a', 'a', 1, 2, 0) AS a_index_2; 


SELECT job, education, balance 
FROM bank   
WHERE job RLIKE 's$|t$'; 

SELECT job, education, balance 
FROM bank   
WHERE job RLIKE '^a|t$';

SELECT job, balance
FROM bank   
WHERE job RLIKE 'ad..n.'; 

SELECT job, balance
FROM bank   
WHERE job RLIKE '.dmin.'; 


SELECT * FROM bank WHERE job LIKE 'e%';  

SELECT * FROM bank WHERE job LIKE 's%t';  

SELECT * FROM bank WHERE job LIKE '%ge%';  

SELECT * FROM bank WHERE job LIKE 'ad_in.';  

select * from employees1 ;

select * from employees1 where email like "%org" ;

select * from employees1 where email like "%.%.%.%" ;

SELECT * FROM employees1
WHERE email REGEXP '@[a-zA-Z0-9]{4}\\.[a-zA-Z]{2,}$';

SELECT * FROM employees1
WHERE email REGEXP '^[AEIOUaeiou]';

select * from bank ;

select * from bank where balance like "%00%" ;

------------------------------------------------------------------------

CREATE TABLE t_school(ID INT, School_Name VARCHAR(40), 
Number_Of_Students INT, Number_Of_Teachers INT, Number_Of_Classrooms INT, EmailID VARCHAR(40));


INSERT INTO t_school(ID, School_Name, Number_Of_Students, Number_Of_Teachers,
 Number_Of_Classrooms, EmailID) 
 VALUES(1, "Boys Town Public School", 1000, 80, 12, "btps15@gmail.com"), 
 (2, "Guru Govind Singh Public School", 800, 35, 15, "ggps25@gmail.com"), 
 (3, "Delhi Public School", 1200, 30, 10, "dps101@gmail.com"), 
 (4, "Ashoka Universal School", 1110, 40, 40, "aus17@gmail.com"), 
 (5, "Calibers English Medium School", 9000, 31, 50, "cems@gmail.com");

select * from t_school ;

savepoint v1 ;

savepoint v2 ;

savepoint v3 ;

rollback to v2 ;

commit ;

rollback ;



---------------------------------------------------------------------

create user "amitt"@"localhost" identified by "amit11" ;

grant select on v.projects to "amitt"@"localhost" ;

revoke select on v.projects from "amitt"@"localhost" ;


grant all on V.* to "amitt"@"localhost" ;

revoke all on v.* from "amitt"@"localhost" ;
