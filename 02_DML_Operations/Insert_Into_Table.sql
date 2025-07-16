-- Insert records into the 'Departments' table
INSERT INTO Departments (department_name, location)
VALUES
    ('Human Resources', 'New York'),
    ('Engineering', 'San Francisco'),
    ('Marketing', 'Chicago');

-- Insert records into the 'Employees' table
INSERT INTO Employees (first_name, last_name, email, hire_date, salary)
VALUES
    ('Alice', 'Johnson', 'alice.johnson@example.com', '2022-03-15', 60000.00),
    ('Bob', 'Smith', 'bob.smith@example.com', '2021-06-10', 75000.00),
    ('Carol', 'Lee', 'carol.lee@example.com', '2023-01-05', 50000.00);
