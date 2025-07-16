-- Demonstration of LIMIT and OFFSET in SQL

-- Create a 'Products' table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Products (product_id, product_name, price)
VALUES
    (1, 'Laptop', 75000.00),
    (2, 'Mouse', 500.00),
    (3, 'Keyboard', 1500.00),
    (4, 'Monitor', 12000.00),
    (5, 'Webcam', 3000.00),
    (6, 'Charger', 1200.00);

-- Get only the first 3 products
SELECT * FROM Products
LIMIT 3;

-- Skip the first 2 products and return the next 3
SELECT * FROM Products
LIMIT 3 OFFSET 2;
