-- Create a new database named 'CompanyDB'
CREATE DATABASE CompanyDB;

-- Select the 'CompanyDB' database for use
USE CompanyDB;

-- Create the 'Employees' table to store employee data
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each employee
    first_name VARCHAR(50) NOT NULL,            -- First name is required
    last_name VARCHAR(50),                      -- Last name is optional
    email VARCHAR(100) UNIQUE,                  -- Email must be unique
    hire_date DATE,                             -- Date of hiring
    salary DECIMAL(10, 2) CHECK (salary >= 0)   -- Salary must be non-negative
);

-- Create the 'Departments' table to store department details
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each department
    department_name VARCHAR(100) NOT NULL,        -- Department name is required
    location VARCHAR(100)                         -- Optional department location
);
