-- Demonstration of SQL Transactions: BEGIN, COMMIT, ROLLBACK

-- Create a 'BankAccounts' table
CREATE TABLE BankAccounts (
    account_id INT PRIMARY KEY,
    account_holder VARCHAR(100),
    balance DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO BankAccounts (account_id, account_holder, balance)
VALUES
    (1, 'Ravi', 5000.00),
    (2, 'Sneha', 7000.00);

-- Begin transaction for transferring money from Ravi to Sneha
START TRANSACTION;

-- Deduct from Ravi
UPDATE BankAccounts
SET balance = balance - 1000
WHERE account_id = 1;

-- Add to Sneha
UPDATE BankAccounts
SET balance = balance + 1000
WHERE account_id = 2;

-- Commit the changes
COMMIT;

-- In case of error, use ROLLBACK to undo changes
-- ROLLBACK;
