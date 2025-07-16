-- Demonstration of aggregate functions in SQL

-- Create a 'Sales' table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Sales (sale_id, product_name, quantity, price)
VALUES
    (1, 'Laptop', 2, 75000.00),
    (2, 'Mouse', 5, 500.00),
    (3, 'Keyboard', 3, 1500.00),
    (4, 'Monitor', 1, 12000.00);

-- Calculate total quantity sold
SELECT SUM(quantity) AS total_quantity_sold
FROM Sales;

-- Calculate average price of products sold
SELECT AVG(price) AS average_price
FROM Sales;

-- Find the maximum and minimum price
SELECT MAX(price) AS highest_price, MIN(price) AS lowest_price
FROM Sales;

-- Count the total number of sales records
SELECT COUNT(*) AS total_sales
FROM Sales;
