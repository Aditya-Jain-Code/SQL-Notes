-- Demonstration of math functions in SQL

-- Create a 'Numbers' table
CREATE TABLE Numbers (
    num_id INT PRIMARY KEY,
    value DECIMAL(10, 4)
);

-- Insert sample data
INSERT INTO Numbers (num_id, value)
VALUES
    (1, 10.75),
    (2, -4.56),
    (3, 25.99),
    (4, 9.50);

-- Round values to nearest whole number
SELECT value, ROUND(value) AS rounded
FROM Numbers;

-- Get absolute values
SELECT value, ABS(value) AS absolute_value
FROM Numbers;

-- Get ceiling and floor of values
SELECT value, CEIL(value) AS ceiling_value, FLOOR(value) AS floor_value
FROM Numbers;

-- Get square roots (only for positive values)
SELECT value, SQRT(value) AS square_root
FROM Numbers
WHERE value >= 0;