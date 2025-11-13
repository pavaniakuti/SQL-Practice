-- SQL Practice by Pavani

-- 1. Create a table
CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Marks INT
);

-- 2. Insert sample records
INSERT INTO Students (ID, Name, Age, Marks) VALUES
(1, 'Pavani', 21, 88),
(2, 'Ravi', 22, 92),
(3, 'Sneha', 20, 76),
(4, 'Kiran', 23, 85);

-- 3. Display all records
SELECT * FROM Students;

-- 4. Find students with marks greater than 80
SELECT Name, Marks FROM Students WHERE Marks > 80;

-- 5. Find the student with the highest marks
SELECT Name FROM Students WHERE Marks = (SELECT MAX(Marks) FROM Students);

-- 6. Find the average marks of all students
SELECT AVG(Marks) AS AverageMarks FROM Students;

-- 7. Count total number of students
SELECT COUNT(*) AS TotalStudents FROM Students;

-- 8. Sort students by marks in descending order
SELECT * FROM Students ORDER BY Marks DESC;

-- 9. Update marks of a student
UPDATE Students SET Marks = 95 WHERE Name = 'Pavani';

-- 10. Delete a student record
DELETE FROM Students WHERE ID = 4;
