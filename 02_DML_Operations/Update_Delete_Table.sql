-- Update salary of an employee named 'Alice Johnson'
UPDATE Employees
SET salary = 65000.00
WHERE first_name = 'Alice' AND last_name = 'Johnson';

-- Update location of the 'Marketing' department
UPDATE Departments
SET location = 'Los Angeles'
WHERE department_name = 'Marketing';

-- Delete an employee with email 'bob.smith@example.com'
DELETE FROM Employees
WHERE email = 'bob.smith@example.com';

-- Delete the 'Human Resources' department
DELETE FROM Departments
WHERE department_name = 'Human Resources';