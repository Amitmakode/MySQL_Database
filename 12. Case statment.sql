show tables ;

 
select * from employees ;


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);


INSERT INTO employees (employee_id, employee_name, salary, department)
VALUES
    (11, 'John Doe', 50000, 'HR'),
    (21, 'Jane Smith', 60000, 'IT'),
    (31, 'Michael Johnson', 70000, 'Finance'),
    (41, 'Emily Davis', 52000, 'IT'),
    (51, 'Chris Lee', 58000, 'Account'),
    (1, 'John Doe', 45000, 'HR'),
    (2, 'Jane Smith', 60000, 'IT'),
    (3, 'Michael Johnson', 75000, 'Finance'),
    (4, 'Emily Davis', 52000, 'IT'),
    (5, 'Chris Lee', 58000, 'HR');
    
    
select employee_name, salary,
case
	when salary > 60000 then "High"
    when salary <= 52000 then "Low"
    else "Avg"
    end as salary_cat
from employees order by salary desc ;    

alter table employees
add column sal_cat varchar(20) ;


update employees
set sal_cat = case
when salary > 60000 then "High"
when salary <= 52000 then "Low"
else "Avg"
end ;


update employees
set department = 
case
    when department = "HR" then "Human Resource"
    when department = "IT" then "Information technology"
    when department = "Account" then "Account"
    else "Finance"
    end ;
    
alter table employees
add column location varchar(20) ;   


update employees
set location = "nagpur" ; 

alter table employees 
drop column location ;

INSERT INTO employees (employee_id, employee_name, salary, department)
VALUES
    (7, 'John Doe', 5000, 'HR'),
    (8, 'Jane Smith', 6000, 'IT'),
    (9, 'Michael Johnson', 100000, 'Finance'),
    (10, 'Emily Davis', 120000, 'IT'),
    (16, 'Chris Lee', 8000, 'Account') ;

delete from employees 
where salary = 75000 ;

delete from employees 
where salary in (75000,58000, 30000) ;

delete from employees
where salary = 
case
	when salary = 5000 then 5000
    when salary = 6000 then 6000
    when salary = 8000 then 8000
    else null 
    end ;


select year("2025-01-05") ;
select month("2025-01-05") ;
select day("2025-01-05") ;

select week("2025-01-05") ;

select quarter("2025-01-05") ;

select dayname("2025-01-05") ;

select now() ;

select current_date() ;

select current_time() ;

select current_user() ;

select sysdate() ;

select * from sales ;

alter table sales
add column day_name varchar(20) after order_date ;

update sales
set day_name = dayname(new_order_date) ;

