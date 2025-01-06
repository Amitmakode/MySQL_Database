create database indexx ;
use indexx; 
show tables ;

create table if not exists course (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50));


insert into course values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language'),
(109 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(110 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(111 , 'fsds' , 'full stack data science' , 'DS'),
(112 , 'big data' , 'full stack big data' , 'BD'),
(113 , 'mern' , 'web dev' , 'mern'),
(114 , 'blockchain' , 'full stack blockchain' , 'BC'),
(115 , 'java' , 'full stack java' , 'java'),
(116 , 'testing' , 'full testing ' , 'testing '),
(117 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(118 , 'c' , 'c language' , 'c'),
(119 , 'c++' , 'C++ language' , 'language');

select * from course ;

show index from course ;

select * from course where course_name = "java" ;

explain select * from course where course_name = "java" ;


----------------------------------------------------------


create table if not exists course1 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50));


insert into course1 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language'),
(109 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(110 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(111 , 'fsds' , 'full stack data science' , 'DS'),
(112 , 'big data' , 'full stack big data' , 'BD'),
(113 , 'mern' , 'web dev' , 'mern'),
(114 , 'blockchain' , 'full stack blockchain' , 'BC'),
(115 , 'java' , 'full stack java' , 'java'),
(116 , 'testing' , 'full testing ' , 'testing '),
(117 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(118 , 'c' , 'c language' , 'c'),
(119 , 'c++' , 'C++ language' , 'language');

select * from course1 ;

CREATE INDEX IND1 ON course1(course_name);

show index from course1 ;

select * from course1 where course_name = "java" ;

explain select * from course1 where course_name = "java" ;   


---------------------------------------------------


create table if not exists course2 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50));


insert into course2 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language'),
(109 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(110 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(111 , 'fsds' , 'full stack data science' , 'DS'),
(112 , 'big data' , 'full stack big data' , 'BD'),
(113 , 'mern' , 'web dev' , 'mern'),
(114 , 'blockchain' , 'full stack blockchain' , 'BC'),
(115 , 'java' , 'full stack java' , 'java'),
(116 , 'testing' , 'full testing ' , 'testing '),
(117 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(118 , 'c' , 'c language' , 'c'),
(119 , 'c++' , 'C++ language' , 'language');


select * from course2 ;

show index from course2 ;

create index indx2 on course2(course_id, course_name) ;

explain select * from course2 where course_id = 101 and course_name = "java" ; 

create index indx3 on course2 (course_tag) ;

explain select * from course2 where course_tag = 'Analytics'; 

drop index indx3 on course2 ;

---------------------------------------------------------------------


create table if not exists course3 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
index(course_tag));


insert into course3 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language'),
(109 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(110 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(111 , 'fsds' , 'full stack data science' , 'DS'),
(112 , 'big data' , 'full stack big data' , 'BD'),
(113 , 'mern' , 'web dev' , 'mern'),
(114 , 'blockchain' , 'full stack blockchain' , 'BC'),
(115 , 'java' , 'full stack java' , 'java'),
(116 , 'testing' , 'full testing ' , 'testing '),
(117 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(118 , 'c' , 'c language' , 'c'),
(119 , 'c++' , 'C++ language' , 'language');


show index from course3 ;


