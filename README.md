# TASK-2-Student-Database-Management--madhcher
Design and implement a student databse management system using PostgreSQL

**Student Database Management**
This SQL script creates and manages a student_database with a student_table (later renamed to student_info). It includes operations for creating the database and table, inserting sample data, and performing various retrieval, update, and analytical queries.

**Database Schema**
The database contains one primary table:
student_table (later renamed to student_info): Stores comprehensive student details.
Student_id (INT, PRIMARY KEY)
Stu_name (TEXT)
Department (TEXT)
email_id (TEXT)
Phone_no (BIGINT)
Address (TEXT)
Date_of_birth (DATE)
Gender (TEXT)
Major (TEXT)
GPA (NUMERIC)
Grade (TEXT, CHECK constraint: 'A', 'B', or 'C')

**Script Sections
Database Creation:**
CREATE DATABASE student_database;
**Table Creation:**
CREATE TABLE student_table (...)
**Data Insertion:**
INSERT INTO student_table VALUES (...)
Includes sample data for 10 students.

**Student Information Retrieval:**
Retrieves all student information, sorted in descending order by grade.

**Query for Male Students:**
Retrieves information specifically for male students.

**Query for Students with GPA less than 5.0:**
Fetches details of students whose GPA is below 5.0.

**Update Student Email and Grade:**
Updates the email and grade for a student with a specific ID.

**Query for Students with Grade "B":**
Retrieves names and ages of students who have a grade of "B".

**Grouping and Calculation:**
Groups students by Department and Gender and calculates the average GPA for each combination.

**Table Renaming:**
Renames student_table to student_info.

**Retrieve Student with Highest GPA:**
Finds the name of the student with the highest GPA from the student_info table.

**How to Use**
Execute the script: Run the TASK 2 - Student Database Management.sql script in your SQL client. It will create the database, table, insert data, and then perform the specified queries and updates.

**Review results**: Observe the output of each SELECT statement to see the results of the queries.

**Prerequisites**
An SQL database system (e.g., PostgreSQL, MySQL, SQL Server). Note that DATE_PART and AGE functions are specific to PostgreSQL, so you might need to adjust for other SQL dialects.

A SQL client to execute the script.
