-- Demonstration of creating, updating, and deleting SQL views

-- Create a 'Employees' table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Employees (employee_id, first_name, last_name, department, salary)
VALUES
    (1, 'Amit', 'Sharma', 'IT', 70000.00),
    (2, 'Riya', 'Singh', 'HR', 60000.00),
    (3, 'Kabir', 'Mehra', 'IT', 75000.00);

-- Create a view to show employee names and department
CREATE VIEW employee_department AS
SELECT first_name, last_name, department
FROM Employees;

-- Query the view
SELECT * FROM employee_department;

-- Create a view to show high salary employees
CREATE VIEW high_salary_employees AS
SELECT first_name, last_name, salary
FROM Employees
WHERE salary > 70000;

-- Update data using view (if supported by DB)
UPDATE employee_department
SET department = 'Finance'
WHERE first_name = 'Riya';

-- Drop a view
DROP VIEW high_salary_employees;
DROP VIEW employee_department;
