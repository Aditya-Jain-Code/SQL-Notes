-- Demonstration of HAVING clause in SQL

-- Create a 'Sales' table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_category VARCHAR(50),
    quantity INT,
    revenue DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Sales (sale_id, product_category, quantity, revenue)
VALUES
    (1, 'Electronics', 3, 45000.00),
    (2, 'Clothing', 5, 8000.00),
    (3, 'Electronics', 2, 30000.00),
    (4, 'Clothing', 3, 4500.00),
    (5, 'Groceries', 10, 3000.00);

-- Total revenue per category, only where total revenue > 10000
SELECT product_category, SUM(revenue) AS total_revenue
FROM Sales
GROUP BY product_category
HAVING SUM(revenue) > 10000;

-- Total quantity per category, only where quantity >= 6
SELECT product_category, SUM(quantity) AS total_quantity
FROM Sales
GROUP BY product_category
HAVING total_quantity >= 6;
