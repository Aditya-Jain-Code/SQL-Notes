-- Create a 'Customers' table with AUTO_INCREMENT on the primary key
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,  -- ID will auto-increment with each new record
    customer_name VARCHAR(100) NOT NULL,         -- Customer name is required
    city VARCHAR(50)
);

-- Insert customers without specifying the customer_id
INSERT INTO Customers (customer_name, city)
VALUES
    ('Rahul Mehra', 'Delhi'),
    ('Sneha Kapoor', 'Mumbai'),
    ('Arjun Reddy', 'Hyderabad');

-- View the data to confirm auto-incremented IDs
SELECT * FROM Customers;
