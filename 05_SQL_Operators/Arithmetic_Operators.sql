-- Demonstration of arithmetic operators in SQL

-- Create a 'Prices' table
CREATE TABLE Prices (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    base_price DECIMAL(10, 2),
    tax_rate DECIMAL(5, 2)  -- percentage
);

-- Insert sample data
INSERT INTO Prices (item_id, item_name, base_price, tax_rate)
VALUES
    (1, 'Notebook', 50.00, 5.0),
    (2, 'Pen', 20.00, 10.0);

-- Add tax to base price (addition and multiplication)
SELECT 
    item_name,
    base_price,
    tax_rate,
    base_price * (tax_rate / 100) AS tax_amount,
    base_price + (base_price * (tax_rate / 100)) AS total_price
FROM Prices;

-- Subtract discount and calculate new price
-- Example: Apply a discount of 5 on each item
SELECT 
    item_name,
    base_price,
    base_price - 5 AS discounted_price
FROM Prices;

-- Divide price for bulk purchase (e.g., price per unit if bought in packs of 5)
SELECT 
    item_name,
    base_price,
    base_price / 5 AS price_per_unit
FROM Prices;
