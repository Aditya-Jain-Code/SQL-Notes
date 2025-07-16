-- Demonstration of SELF JOIN in SQL

-- Create an 'Employees' table with a manager relationship
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    manager_id INT
);

-- Insert sample data
INSERT INTO Employees (employee_id, employee_name, manager_id)
VALUES
    (1, 'Amit', NULL),       -- CEO, no manager
    (2, 'Riya', 1),          -- Reports to Amit
    (3, 'Kabir', 1),         -- Reports to Amit
    (4, 'Simran', 2);        -- Reports to Riya

-- Use SELF JOIN to display employee and their manager
SELECT 
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM Employees e
LEFT JOIN Employees m ON e.manager_id = m.employee_id;
