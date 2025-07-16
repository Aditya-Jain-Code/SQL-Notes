-- Select all columns from the 'Employees' table
SELECT * FROM Employees;

-- Select specific columns from the 'Employees' table
SELECT first_name, last_name, salary FROM Employees;

-- Select employees with salary greater than 60000
SELECT * FROM Employees
WHERE salary > 60000;

-- Select departments located in 'Chicago'
SELECT * FROM Departments
WHERE location = 'Chicago';
