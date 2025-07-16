-- Demonstration of ALTER TABLE in SQL for schema modifications

-- Create an initial 'Employees' table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100)
);

-- Add a new column to the table
ALTER TABLE Employees
ADD email VARCHAR(100);

-- Modify the data type of an existing column (syntax may vary by SQL dialect)
ALTER TABLE Employees
MODIFY employee_name VARCHAR(150);

-- Rename a column (MySQL syntax)
ALTER TABLE Employees
CHANGE email email_address VARCHAR(100);

-- Drop a column from the table
ALTER TABLE Employees
DROP COLUMN email_address;
