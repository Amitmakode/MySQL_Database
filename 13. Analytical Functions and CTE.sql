use win_fun ;

show tables ;

select * from student_scores ;

select score from student_scores order by  score desc limit 3 offset 1;

select student_name, course, score,
row_number() over(partition by course order by course) as row_num from student_scores ;



select student_name, course, score,
rank() over(partition by course order by score desc) as rank_num from student_scores ;

select student_name, course, score,
dense_rank() over(partition by course order by score desc) as rank_num from student_scores ;


SELECT student_name, course, score,
       RANK() OVER (PARTITION BY course ORDER BY score DESC) AS rank_num
FROM student_scores ;



WITH RankedScores AS (
    SELECT student_name, course, score,
           RANK() OVER (PARTITION BY course ORDER BY score DESC) AS rank_num
    FROM student_scores
)
SELECT student_name, course, score, rank_num
FROM RankedScores
WHERE rank_num = 2;

WITH RankedScores AS (
    SELECT student_name, course, score,
           DENSE_RANK() OVER (PARTITION BY course ORDER BY score DESC) AS rank_num
    FROM student_scores
)
SELECT student_name, course, score, rank_num
FROM RankedScores
WHERE rank_num = 5;


select student_name, course, score,
row_number() over( order by course) as row_num from student_scores ;


CREATE TABLE employees1 (
    employee_id INT,
    employee_name VARCHAR(100),
    region VARCHAR(50),
    department VARCHAR(50),
    sales DECIMAL
);

INSERT INTO employees1 (employee_id, employee_name, region, department, sales)
VALUES
(1, 'Alice', 'North', 'Sales', 5000),
(2, 'Bob', 'North', 'Sales', 7000),
(3, 'Charlie', 'South', 'Marketing', 3000),
(4, 'David', 'North', 'Sales', 4000),
(5, 'Eve', 'South', 'Sales', 6000),
(6, 'Frank', 'South', 'Marketing', 8000),
(7, 'Grace', 'North', 'HR', 2000),
(8, 'Hannah', 'South', 'HR', 3500),
(9, 'Ivy', 'West', 'Sales', 5500),
(10, 'Jack', 'East', 'Sales', 4500),
(11, 'Kylie', 'West', 'HR', 2500),
(12, 'Liam', 'East', 'Sales', 7000),
(13, 'Megan', 'North', 'Marketing', 9000),
(14, 'Nate', 'South', 'HR', 3800),
(15, 'Olivia', 'West', 'Sales', 6000),
(16, 'Paul', 'East', 'Marketing', 5000),
(17, 'Quinn', 'North', 'HR', 2700),
(18, 'Rita', 'South', 'Sales', 8000),
(19, 'Sam', 'West', 'Marketing', 3500),
(20, 'Tom', 'East', 'HR', 2200),
(21, 'Uma', 'North', 'Sales', 7500),
(22, 'Vera', 'South', 'Marketing', 3200),
(23, 'Walter', 'North', 'HR', 1900),
(24, 'Xena', 'East', 'Sales', 5000),
(25, 'Yara', 'South', 'HR', 2700),
(26, 'Zoe', 'West', 'Sales', 6500),
(27, 'Alan', 'East', 'Sales', 4600),
(28, 'Becky', 'South', 'HR', 3100),
(29, 'Carlos', 'North', 'HR', 2900),
(30, 'Diana', 'West', 'Marketing', 7000),
(31, 'Ethan', 'South', 'Sales', 4200),
(32, 'Fiona', 'North', 'Marketing', 8400),
(33, 'Gina', 'East', 'HR', 2800),
(34, 'Howard', 'South', 'Marketing', 7700),
(35, 'Iris', 'West', 'Sales', 6000),
(36, 'Jake', 'East', 'Sales', 5100),
(37, 'Kim', 'South', 'HR', 2600),
(38, 'Leo', 'North', 'Sales', 6400),
(39, 'Maya', 'South', 'Sales', 6800),
(40, 'Nora', 'West', 'Marketing', 5400),
(41, 'Oscar', 'North', 'Sales', 5600),
(42, 'Paula', 'East', 'Marketing', 6200),
(43, 'Quincy', 'South', 'Sales', 7700),
(44, 'Randy', 'West', 'Sales', 4600),
(45, 'Sophie', 'North', 'HR', 2400),
(46, 'Tony', 'South', 'HR', 3300),
(47, 'Ursula', 'West', 'Marketing', 6500),
(48, 'Victor', 'North', 'Sales', 5800),
(49, 'Wendy', 'South', 'Sales', 4000),
(50, 'Xander', 'East', 'Sales', 5300),
(51, 'Yasmine', 'West', 'HR', 2600),
(52, 'Zach', 'South', 'Sales', 5200),
(53, 'Ava', 'North', 'Sales', 7300),
(54, 'Brandon', 'East', 'Sales', 5800),
(55, 'Caitlin', 'West', 'Sales', 4600),
(56, 'Derek', 'North', 'Marketing', 9000),
(57, 'Emily', 'South', 'HR', 3300),
(58, 'Felix', 'East', 'HR', 3500),
(59, 'Graham', 'North', 'HR', 2300),
(60, 'Holly', 'South', 'Sales', 7000),
(61, 'Isaac', 'West', 'HR', 2700),
(62, 'Julia', 'North', 'Sales', 8100),
(63, 'Kevin', 'South', 'Marketing', 5400),
(64, 'Laura', 'East', 'Sales', 6000),
(65, 'Mike', 'North', 'HR', 2200),
(66, 'Nancy', 'West', 'Marketing', 7500),
(67, 'Oscar', 'South', 'HR', 3800),
(68, 'Pamela', 'East', 'Sales', 6700),
(69, 'Quincy', 'North', 'Marketing', 5000),
(70, 'Rachel', 'South', 'Sales', 5700),
(71, 'Steve', 'West', 'Sales', 6900),
(72, 'Tina', 'South', 'Marketing', 6500),
(73, 'Ulysses', 'East', 'HR', 3000),
(74, 'Vince', 'North', 'Sales', 4800),
(75, 'Will', 'South', 'Sales', 4900),
(76, 'Xena', 'West', 'HR', 2900),
(77, 'Yvonne', 'North', 'HR', 3400),
(78, 'Zoe', 'South', 'Sales', 7600),
(79, 'Amy', 'East', 'Sales', 5400),
(80, 'Brad', 'North', 'HR', 2100),
(81, 'Claire', 'South', 'Sales', 6700),
(82, 'Doug', 'West', 'Marketing', 4500),
(83, 'Ella', 'North', 'Sales', 4800),
(84, 'Felicia', 'South', 'HR', 2200),
(85, 'George', 'East', 'Sales', 5100),
(86, 'Hannah', 'West', 'HR', 3800),
(87, 'Ivan', 'South', 'Sales', 5600),
(88, 'Jackie', 'North', 'Sales', 6900),
(89, 'Kimberly', 'South', 'HR', 3100),
(90, 'Landon', 'West', 'Sales', 5300),
(91, 'Monica', 'East', 'Marketing', 6000),
(92, 'Nancy', 'South', 'HR', 2400),
(93, 'Olivia', 'West', 'Sales', 5500),
(94, 'Parker', 'North', 'HR', 3200),
(95, 'Quinn', 'South', 'Sales', 5200),
(96, 'Rachel', 'East', 'Marketing', 5000),
(97, 'Samantha', 'South', 'HR', 3100),
(98, 'Terry', 'North', 'Sales', 4600),
(99, 'Ursula', 'South', 'Sales', 6000),
(100, 'Victor', 'West', 'HR', 4200);


select * from employees1 ;


with temp_table as (
select employee_name, region, sales,
dense_rank() over(partition by region order by sales desc) as topper from employees1 
) select * from temp_table where topper = 2 ;



with t_table as(
select employee_name, region, department, sales,
dense_rank() over(partition by region, department order by sales ) as dep_top from employees1
) select * from t_table where dep_top = 3 ;

