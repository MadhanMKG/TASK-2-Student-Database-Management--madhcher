-- Create the database
CREATE DATABASE student_database;

-- Create the student_table
CREATE TABLE student_table (
    Student_id INT PRIMARY KEY,
    Stu_name TEXT,
    Department TEXT,
    email_id TEXT,
    Phone_no BIGINT,
    Address TEXT,
    Date_of_birth DATE,
    Gender TEXT,
    Major TEXT,
    GPA NUMERIC,
    Grade TEXT CHECK (Grade IN ('A', 'B', 'C'))
);


INSERT INTO student_table 
(Student_id,Stu_name, Department, email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade)
VALUES 
(1,'Alice Johnson', 'Computer Science', 'alice@example.com', 9876543210, '123 Main St', '2002-05-14', 'Female', 'AI', 3.8, 'A'),
(2,'Bob Smith', 'Mechanical Engineering', 'bob@example.com', 9123456789, '456 Elm St', '2001-07-21', 'Male', 'Robotics', 3.5, 'B'),
(3,'Cathy Brown', 'Electrical Engineering', 'cathy@example.com', 9988776655, '789 Oak St', '2003-01-10', 'Female', 'Embedded Systems', 3.9, 'A'),
(4,'David Wilson', 'Civil Engineering', 'david@example.com', 9876123450, '321 Pine St', '2000-09-12', 'Male', 'Structural', 3.4, 'B'),
(5,'Ella Davis', 'Computer Science', 'ella@example.com', 9123987654, '654 Maple St', '2002-02-22', 'Female', 'Cybersecurity', 3.7, 'A'),
(6,'Frank White', 'Mechanical Engineering', 'frank@example.com', 9876098765, '987 Birch St', '2001-12-05', 'Male', 'Thermodynamics', 3.3, 'C'),
(7,'Grace Lee', 'Information Technology', 'grace@example.com', 9898989898, '135 Cedar St', '2003-04-18', 'Female', 'Networking', 3.6, 'B'),
(8,'Henry Martin', 'Civil Engineering', 'henry@example.com', 9765432109, '753 Spruce St', '2000-11-30', 'Male', 'Transportation', 3.2, 'C'),
(9,'Isabella King', 'Computer Science', 'isabella@example.com', 9345678901, '864 Walnut St', '2002-06-09', 'Female', 'Data Science', 3.9, 'A'),
(10,'Jack Taylor', 'Electrical Engineering', 'jack@example.com', 9123098765, '159 Willow St', '2001-03-25', 'Male', 'Power Systems', 3.5, 'B');


-- 3.Student Information Retrieval
--Develop a query to retrieve all students' information from the "student_table" and sort them in descending order by their grade.
SELECT * FROM student_table
ORDER BY CASE Grade
    WHEN 'A' THEN 3
    WHEN 'B' THEN 2
    WHEN 'C' THEN 1
  END DESC;

 
-- 4.Query for Male Students:
-- Implement a query to retrieve information about all male students from the "student_table."
SELECT * FROM student_table WHERE Gender = 'Male';


-- 5.Query for Students with GPA less than 5.0
-- Create a query to fetch the details of students who have a GPA less than 5.0 from the "student_table."
SELECT * FROM student_table WHERE GPA < 5.0;


-- 6.Update Student Email and Grade
-- Write an update statement to modify the email and grade of a student with a specific ID in the "student_table."
UPDATE student_table SET email_id = 'cathyB@example.com', Grade = 'B' WHERE Student_id = 3;
SELECT * FROM student_table WHERE Student_id = 3;


-- 7.Query for Students with Grade "B"
-- Develop a query to retrieve the names and ages of all students who have a grade of "B" from the "student_table."
SELECT Stu_name, DATE_PART('year', AGE(current_date, Date_of_birth)) AS Age FROM student_table WHERE Grade = 'B';


-- 8.Grouping and Calculation
-- Create a query to group the "student_table" by the "Department" and "Gender" columns and calculate the average GPA for each combination.
SELECT Department, Gender, ROUND(AVG(GPA), 2) AS Average_GPA FROM student_table
GROUP BY Department, Gender;


-- 9.Table Renaming
-- Rename the "student_table" to "student_info" using the appropriate SQL statement.
ALTER TABLE student_table RENAME TO student_info;


-- 10..Retrieve Student with Highest GPA
-- Write a query to retrieve the name of the student with the highest GPA from the "student_info" table.
SELECT Stu_name, GPA FROM student_info
WHERE GPA = (SELECT MAX(GPA) FROM student_info);