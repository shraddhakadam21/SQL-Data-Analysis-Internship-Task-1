# SQL Data Analysis Internship – Task 1

## Student Management Database

### Project Overview

This project was completed as part of my Data Analysis Internship. The objective was to create a Student Management Database using MySQL, insert sample student records, and analyze student performance using SQL queries.

### Tools Used

* MySQL
* MySQL Workbench
* SQL

### Database Structure

**Database:** `StudentManagement`

**Table:** `Students`

The table contains the following columns:

* `StudentID` – Unique student identifier and primary key
* `Name` – Student name
* `Gender` – Student gender
* `Age` – Student age
* `Grade` – Academic grade
* `MathScore` – Mathematics score
* `ScienceScore` – Science score
* `EnglishScore` – English score

### Tasks Completed

1. Created the database and Students table.
2. Inserted 10 sample student records.
3. Retrieved all student details using `SELECT`.
4. Calculated average scores for each subject using `AVG()`.
5. Identified the top performer using calculated total scores, `ORDER BY`, and `LIMIT`.
6. Counted students in each grade using `COUNT()` and `GROUP BY`.
7. Calculated average student scores by gender.
8. Filtered students with Mathematics scores greater than 80 using `WHERE`.
9. Updated a student's grade using `UPDATE` and verified the change.

### SQL Concepts Practiced

* `CREATE DATABASE` and `CREATE TABLE`
* Primary keys and `AUTO_INCREMENT`
* `INSERT INTO`
* `SELECT` and `WHERE`
* Aggregate functions: `AVG()` and `COUNT()`
* `GROUP BY` and `ORDER BY`
* Calculated columns and aliases using `AS`
* `ROUND()` for rounding numeric results
* `UPDATE` statements

### Key Learnings

This project helped me understand how to create and manage a relational database, insert records, summarize student performance, filter data, and update existing records. I also learned how aggregate functions and grouping can turn raw data into meaningful insights.

### How to Run

1. Open MySQL Workbench and connect to your MySQL server.
2. Open `StudentManagement_Task1.sql`.
3. Execute the script in the correct order.
4. Run the analysis queries to view the results.

### Project Deliverables

* SQL script containing database setup, sample records, and analysis queries.
* README documentation explaining the project and SQL concepts.

*Note: All student records used in this project are fictional sample data created for practice.*
