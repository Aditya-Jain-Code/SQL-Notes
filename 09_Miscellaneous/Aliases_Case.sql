-- Demonstration of aliases (AS) and CASE expressions in SQL

-- Create a 'Scores' table
CREATE TABLE Scores (
    student_id INT,
    student_name VARCHAR(100),
    marks INT
);

-- Insert sample data
INSERT INTO Scores (student_id, student_name, marks)
VALUES
    (1, 'Riya', 92),
    (2, 'Aman', 76),
    (3, 'Neha', 58),
    (4, 'Kabir', 43);

-- Use of column alias (AS)
SELECT student_name AS Name, marks AS Score
FROM Scores;

-- Use of table alias
SELECT s.student_name, s.marks
FROM Scores AS s;

-- Use of CASE expression to assign grades
SELECT 
    student_name,
    marks,
    CASE
        WHEN marks >= 90 THEN 'A+'
        WHEN marks >= 75 THEN 'A'
        WHEN marks >= 60 THEN 'B'
        WHEN marks >= 45 THEN 'C'
        ELSE 'F'
    END AS grade
FROM Scores;
