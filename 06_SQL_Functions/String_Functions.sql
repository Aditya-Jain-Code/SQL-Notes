-- Demonstration of string functions in SQL

-- Create a 'Users' table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100)
);

-- Insert sample data
INSERT INTO Users (user_id, full_name, email)
VALUES
    (1, 'Amit Sharma', 'amit.sharma@example.com'),
    (2, 'Riya Sen', 'riya123@domain.com'),
    (3, 'Rahul Mehta', 'rahul_mehta@gmail.com');

-- Convert names to uppercase
SELECT full_name, UPPER(full_name) AS upper_name
FROM Users;

-- Convert names to lowercase
SELECT full_name, LOWER(full_name) AS lower_name
FROM Users;

-- Extract first 4 characters of the name
SELECT full_name, LEFT(full_name, 4) AS first_four_chars
FROM Users;

-- Find the length of each email address
SELECT email, LENGTH(email) AS email_length
FROM Users;

-- Concatenate full name and email
SELECT CONCAT(full_name, ' <', email, '>') AS contact_info
FROM Users;
