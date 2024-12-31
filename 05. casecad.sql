use key_ ;

select * from bank ;


-- Create the 'students' table
CREATE TABLE students (
    student_id INT PRIMARY KEY,          -- Primary key for student_id
    first_name VARCHAR(50) NOT NULL,      -- First name of the student
    last_name VARCHAR(50) NOT NULL,       -- Last name of the student
    email VARCHAR(100) NOT NULL UNIQUE    -- Email of the student
);

-- Create the 'courses' table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,           -- Primary key for course_id
    course_name VARCHAR(100) NOT NULL,    -- Name of the course
    student_id INT,                      -- Foreign key referencing students table
    FOREIGN KEY (student_id) REFERENCES students(student_id)
    ON DELETE CASCADE                    -- When a student is deleted, delete related courses
    ON UPDATE CASCADE                    -- When student_id is updated, update related courses
);


-- Insert 5 students
INSERT INTO students (student_id, first_name, last_name, email) VALUES
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Jane', 'Smith', 'jane.smith@example.com'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com'),
(4, 'Bob', 'Brown', 'bob.brown@example.com'),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com');

-- Insert 5 courses with foreign key to students
INSERT INTO courses (course_id, course_name, student_id) VALUES
(1, 'Math 101', 1),
(2, 'History 202', 2),
(3, 'Biology 303', 3),
(4, 'Computer Science 404', 4),
(5, 'Chemistry 505', 5);



delete from students 
where student_id = 2;


update students
set student_id = 6 where student_id = 5; 





-- Create the 'students' table
CREATE TABLE students1 (
    student_id INT,
    first_name VARCHAR(50) NOT NULL,      -- First name of the student
    last_name VARCHAR(50) NOT NULL,       -- Last name of the student
    email VARCHAR(100) NOT NULL UNIQUE    -- Email of the student
);

-- Create the 'courses' table
CREATE TABLE courses1 (
    course_id INT,
    course_name VARCHAR(100) NOT NULL,    -- Name of the course
    student_id INT                     -- Foreign key referencing students table
     
);


alter table students1
add constraint pk_key primary key (student_id) ;


alter table courses
add constraint fk_key foreign key (student_id) references students (student_id) ;

alter table courses
add constraint fk_key foreign key (student_id) references students (student_id) 
ON DELETE CASCADE                     
ON UPDATE CASCADE  ;