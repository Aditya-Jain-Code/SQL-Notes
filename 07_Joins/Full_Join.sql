-- Demonstration of FULL JOIN in SQL
-- Note: Some databases like MySQL do not support FULL JOIN directly

-- Create 'Students' table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100)
);

-- Create 'Results' table
CREATE TABLE Results (
    result_id INT PRIMARY KEY,
    student_id INT,
    grade CHAR(1),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- Insert data into Students
INSERT INTO Students (student_id, student_name)
VALUES
    (1, 'Ananya'),
    (2, 'Kabir'),
    (3, 'Zoya');

-- Insert data into Results
INSERT INTO Results (result_id, student_id, grade)
VALUES
    (101, 1, 'A'),
    (102, 4, 'B'); -- No matching student

-- FULL JOIN (using UNION of LEFT and RIGHT JOIN)
SELECT 
    s.student_id,
    s.student_name,
    r.grade
FROM Students s
LEFT JOIN Results r ON s.student_id = r.student_id

UNION

SELECT 
    s.student_id,
    s.student_name,
    r.grade
FROM Students s
RIGHT JOIN Results r ON s.student_id = r.student_id;
