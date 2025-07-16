-- Demonstration of BETWEEN, IN, and IS NULL operators in SQL

-- Create an 'Employees' table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    age INT,
    department VARCHAR(50),
    bonus DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Employees (employee_id, employee_name, age, department, bonus)
VALUES
    (1, 'Amit Verma', 28, 'HR', 5000.00),
    (2, 'Priya Nair', 35, 'Engineering', NULL),
    (3, 'Rohit Rao', 41, 'Finance', 7000.00),
    (4, 'Sneha Roy', 30, 'Engineering', 6000.00);

-- Use BETWEEN to filter employees by age range
SELECT * FROM Employees
WHERE age BETWEEN 30 AND 40;

-- Use IN to filter employees from specific departments
SELECT * FROM Employees
WHERE department IN ('HR', 'Finance');

-- Use IS NULL to find employees with no bonus assigned
SELECT * FROM Employees
WHERE bonus IS NULL;
