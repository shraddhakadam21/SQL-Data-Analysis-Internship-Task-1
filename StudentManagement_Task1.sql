-- Task 1: Student Management Database

-- 1. Create database---
CREATE DATABASE StudentManagement;

USE StudentManagement;

-- 2. Create Students table---
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Gender CHAR(1),
    Age INT,
    Grade VARCHAR(2),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

-- 3. Insert 10 records---
INSERT INTO Students
    (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
    ('Aarav Sharma', 'M', 16, 'A', 92, 88, 91),
    ('Priya Patil', 'F', 15, 'B', 78, 85, 82),
    ('Rohan Deshmukh', 'M', 17, 'A', 95, 93, 89),
    ('Sneha Joshi', 'F', 16, 'C', 65, 72, 70),
    ('Aditya Kulkarni', 'M', 15, 'B', 81, 79, 84),
    ('Ananya Shah', 'F', 17, 'A', 89, 94, 96),
    ('Vikram More', 'M', 16, 'C', 58, 64, 61),
    ('Kavya Rao', 'F', 15, 'B', 84, 80, 87),
    ('Ishaan Gupta', 'M', 17, 'A', 98, 96, 94),
    ('Meera Nair', 'F', 16, 'B', 75, 83, 79);
    
    ----Query 1: Show all student details----
    
    SELECT * FROM Students;
    
    ----(Explanantion : Select tells MySQL which data to retrieve. * means all columns. From Students specifies the Table.)
    
    ----Query 2: Calculate the average score in each subject----
    
    SELECT
    AVG(MathScore) AS AverageMath,
    AVG(ScienceScore) AS AverageScience,
    AVG(EnglishScore) AS AverageEnglish
FROM Students;

----(Explanation: AVG calculates the average of a numeric column. AS assigns a readable name to the result.)---

----Query 3: Find the top performer---

Select
    StudentID,
    Name,
    MathScore,
    ScienceScore,
    EnglishScore,
    (MathScore + ScienceScore + EnglishScore) As TotalScore
From Students
ORDER BY TotalScore DESC
LIMIT 1;

---(Explanation: Adds the three subject scores to calculate TotalScore. ORDER BY Totalscore DESC sorts from highest to lowest. Limit 1 returns only the TOP ROW)---

----Query 4: Count the number of students in each grade----

SELECT 
   Grade,
   Count(*) AS TotalStudents
FROM Students
Group BY Grade
ORDER BY Grade;

---(Explanation: GROUP BY Grade creates a group for each distinct grade, and COUNT(*) counts the students in each group.---

----Query 5: Calculate the average score by gender----

SELECT
    Gender,
    ROUND(
        AVG((MathScore + ScienceScore + EnglishScore) / 3.0),
        2
    ) AS AverageScore
FROM Students
GROUP BY Gender;

---(Explanation: Group by Gender separates students into gender groups. AVG calculates each student's average across all three subjects.Round (...,2)displays two decimal places.)---

----Query 6: Find students whose Mathematics score is greater than 80----

SELECT
    StudentID,
    Name,
    MathScore
FROM Students
WHERE MathScore > 80
ORDER BY MathScore DESC;

---( Explanantion: Where Clause filters the table and keeps only students whose Mathematics marks are strictly greater than 80. A score of exactly 80 will not be included.)---

----Query 7: Update a student's grade----

UPDATE Students
SET Grade = 'B'
WHERE StudentID = 4;

---(Explanation: Always use a suitable WHERE condition in as UPDATE Statement. Without it, MySQL could update every student's grade.)---

