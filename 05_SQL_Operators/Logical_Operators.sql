-- Demonstration of logical operators in SQL

-- Create a 'Students' table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    marks INT,
    attendance_percent DECIMAL(5, 2)
);

-- Insert sample data
INSERT INTO Students (student_id, student_name, marks, attendance_percent)
VALUES
    (1, 'Aarav Joshi', 85, 92.5),
    (2, 'Meera Patel', 72, 88.0),
    (3, 'Karan Desai', 40, 65.5),
    (4, 'Simran Kaur', 90, 55.0);

-- Use logical operators to filter data

-- Students who scored more than 80 AND have attendance above 90%
SELECT * FROM Students
WHERE marks > 80 AND attendance_percent > 90;

-- Students who scored less than 50 OR have attendance below 60%
SELECT * FROM Students
WHERE marks < 50 OR attendance_percent < 60;

-- Students who did NOT score more than 80
SELECT * FROM Students
WHERE NOT marks > 80;
