-- Create and use the database
create database if not exists clg;
use clg;



-- Create Students table with AUTO_INCREMENT
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Department VARCHAR(100),
    AdmissionYear INT,
    Marks DECIMAL(5,2)
);


-- Insert data
insert into Students (Name, Department, AdmissionYear, Marks) values
('Aarav Sharma', 'Computer Science', 2020, 88.50),
('Riya Mehta', 'Mechanical', 2019, 76.75),
('Karan Patel', 'Electrical', 2021, 82.00),
('Sneha Desai', 'Civil', 2020, 90.25),
('Anjali Nair', 'Computer Science', 2022, 85.00);

-- SELECT Queries

-- 1. Select all records
select * from Students;

-- 2. Select specific columns
select Name, Department from Students;

-- 3. Select students admitted after 2020 using WHERE
select * from Students
where AdmissionYear > 2020;

-- 4. Students whose name contains 'a'
select * from Students
where Name like '%a%';

-- 5. Students with marks between 80 and 90
select * from Students
where Marks between 80 and 90;

-- 6. Students from 'Computer Science' or 'Mechanical' departments
select * from Students
where Department = 'Computer Science' or Department = 'Mechanical';

-- 7. Sort students by AdmissionYear descending
select * from Students
order by AdmissionYear desc;

-- 8. Sort students by Marks ascending
select * from Students
order by Marks asc;

-- 9. Show top 3 students by marks
select * from Students
order by Marks desc
limit 3;
