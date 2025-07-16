-- Demonstration of LIKE and wildcard usage in SQL

-- Create a 'Customers' table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);

-- Insert sample data
INSERT INTO Customers (customer_id, customer_name, email)
VALUES
    (1, 'Ramesh Patel', 'ramesh.patel@gmail.com'),
    (2, 'Sonal Mehta', 'sonal123@yahoo.com'),
    (3, 'Ravi Kumar', 'ravi.k@outlook.com'),
    (4, 'Sneha Kapoor', 'sneha.kapoor@gmail.com');

-- Find customers whose name starts with 'S'
SELECT * FROM Customers
WHERE customer_name LIKE 'S%';

-- Find customers whose email ends with 'gmail.com'
SELECT * FROM Customers
WHERE email LIKE '%gmail.com';

-- Find customers whose name contains 'esh'
SELECT * FROM Customers
WHERE customer_name LIKE '%esh%';