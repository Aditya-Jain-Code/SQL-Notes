-- Demonstration of LEFT JOIN in SQL

-- Create 'Customers' table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

-- Create 'Orders' table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert data into Customers
INSERT INTO Customers (customer_id, customer_name)
VALUES
    (1, 'Rohan Gupta'),
    (2, 'Neha Singh'),
    (3, 'Aman Verma'),
    (4, 'Priya Nair');

-- Insert data into Orders
INSERT INTO Orders (order_id, customer_id, order_amount)
VALUES
    (101, 1, 1500.00),
    (102, 2, 2500.00),
    (103, 1, 1000.00);

-- LEFT JOIN to show all customers and their orders (if any)
SELECT 
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;