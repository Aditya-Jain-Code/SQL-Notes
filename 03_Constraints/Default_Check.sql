-- Create a 'Products' table with DEFAULT and CHECK constraints
CREATE TABLE Products (
    product_id INT PRIMARY KEY,                  -- Unique ID for each product
    product_name VARCHAR(100) NOT NULL,          -- Product name is required
    quantity INT DEFAULT 0,                      -- Default quantity is 0 if not specified
    price DECIMAL(10, 2) CHECK (price >= 0.00)   -- Price must be zero or positive
);

-- Insert products with and without specifying quantity
INSERT INTO Products (product_id, product_name, price)
VALUES
    (1, 'Wireless Mouse', 25.99),               -- quantity will default to 0
    (2, 'USB Keyboard', 45.50);

INSERT INTO Products (product_id, product_name, quantity, price)
VALUES
    (3, 'HD Monitor', 5, 150.00);

-- Attempt to insert a product with negative price (will cause error)
INSERT INTO Products (product_id, product_name, price)
VALUES (4, 'External Hard Drive', -50.00);
