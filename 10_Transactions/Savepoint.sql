-- Demonstration of SAVEPOINT and ROLLBACK TO SAVEPOINT in SQL

-- Create a 'ShoppingCart' table
CREATE TABLE ShoppingCart (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    quantity INT
);

-- Insert initial data
INSERT INTO ShoppingCart (item_id, item_name, quantity)
VALUES
    (1, 'Laptop', 1),
    (2, 'Mouse', 2),
    (3, 'Keyboard', 1);

-- Start a transaction
START TRANSACTION;

-- Remove 1 Mouse
UPDATE ShoppingCart
SET quantity = quantity - 1
WHERE item_name = 'Mouse';

-- Set a savepoint after first update
SAVEPOINT after_mouse;

-- Remove 1 Laptop
UPDATE ShoppingCart
SET quantity = quantity - 1
WHERE item_name = 'Laptop';

-- Oops! Decided not to remove the Laptop
ROLLBACK TO SAVEPOINT after_mouse;

-- Commit remaining changes
COMMIT;
