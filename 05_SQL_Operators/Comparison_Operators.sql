-- Demonstration of comparison operators in SQL

-- Create an 'Orders' table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    total_amount DECIMAL(10, 2),
    status VARCHAR(20)
);

-- Insert sample data
INSERT INTO Orders (order_id, customer_name, total_amount, status)
VALUES
    (1, 'Ravi Kumar', 150.00, 'Shipped'),
    (2, 'Anjali Mehta', 90.00, 'Pending'),
    (3, 'Vikram Singh', 200.00, 'Delivered'),
    (4, 'Neha Sharma', 120.00, 'Cancelled');

-- Use comparison operators to filter data

-- Find orders with total_amount greater than 100
SELECT * FROM Orders
WHERE total_amount > 100;

-- Find orders with total_amount less than or equal to 150
SELECT * FROM Orders
WHERE total_amount <= 150;

-- Find orders that are exactly 'Pending'
SELECT * FROM Orders
WHERE status = 'Pending';

-- Find orders that are not 'Cancelled'
SELECT * FROM Orders
WHERE status != 'Cancelled';
