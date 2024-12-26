-- constraint

not null
auto_increment
default
check
unique
Enum

primary key
foreign key
composit key

index


#NOT NULL Constraint

CREATE TABLE Student(Id INTEGER,
 LastName TEXT NOT NULL, 
 FirstName TEXT NOT NULL, 
 City VARCHAR(35));
 
INSERT INTO Student VALUES(1, 'Hanks', 'Peter', 'New York');  

INSERT INTO Student VALUES(2, NULL, 'Amanda', 'Florida');

INSERT INTO Student VALUES(3, "lee", null, "mumbai");

alter table student
modify column lastname varchar(20) ;

select * from student ;

describe student ;


#UNIQUE Constraint

CREATE TABLE ShirtBrands(Id INTEGER,
 BrandName VARCHAR(40) UNIQUE, 
 Size VARCHAR(30));
 
 desc ShirtBrands ;
 
INSERT INTO ShirtBrands(Id, BrandName, Size) VALUES
 (1, null, 38), 
 (2, 'Lee cooper', 40); 
 
select * from ShirtBrands ;


#CHECK Constraint
#CHECK (expression)  

CREATE TABLE Persons (  
    ID int NOT NULL,  
    `Name` varchar(45) NOT NULL,  
    Age int CHECK (Age>=18)  
);  


INSERT INTO Persons(Id, `Name`, Age)   
VALUES (1,'Robert', 28), 
(5, 'Joseph', null), 
(3, 'Peter', 40); 

desc persons ;


#DEFAULT Constraint

CREATE TABLE Persons1 (  
    ID int NOT NULL,  
    `Name` varchar(45),  
    Age int,  
    City varchar(25) DEFAULT 'New York'  
); 


INSERT INTO Persons1(Id, `Name`, Age, city)   
VALUES (1,'Robert', 15, null); 

select * from persons1 ;


#AUTO_INCREMENT Constraint


CREATE TABLE Animals(  
id int AUTO_INCREMENT primary key,   
`name` CHAR(30) NOT NULL  
); 


INSERT INTO Animals (`name`) VALUES   
('Dog');


insert into animals values (51, "Cat") ;

select * from animals ;


#ENUM Constraint

CREATE TABLE Shirts (    
    id INT,     
    `name` VARCHAR(35),     
    size ENUM('small', 'medium', 'large', 'x-large')  ); 


INSERT INTO Shirts(id, `name`, size)     
VALUES (1000,'t-shirt', null);

select * from shirts; 


create table stud (
id int auto_increment,
`name` varchar(20) not null,
email varchar(20) unique not null,
DOB date not null,
age int check (age > 5) not null,
address varchar(20) default "India" not null,
`subject` enum("math", "physics", "chem", "Bio") not null default "math",
primary key(id) );


insert into stud (`name`, email, DOB, age, address, `subject`)
values("Rahul", "rahul2@gmail.com","2016-05-23", 7, "nagpur", "Chem") ;

select * from stud ;


