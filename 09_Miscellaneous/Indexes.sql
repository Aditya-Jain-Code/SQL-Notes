-- Demonstration of INDEXES in SQL

-- Create a 'Customers' table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

-- Create a basic index on last_name
CREATE INDEX idx_last_name
ON Customers (last_name);

-- Query using indexed column
SELECT *
FROM Customers
WHERE last_name = 'Sharma';

-- Create a composite index on first_name and last_name
CREATE INDEX idx_full_name
ON Customers (first_name, last_name);

-- Drop an index
DROP INDEX idx_last_name ON Customers; -- MySQL syntax

-- Note: Syntax for dropping an index may vary by database
-- For example, in PostgreSQL: DROP INDEX idx_last_name;
