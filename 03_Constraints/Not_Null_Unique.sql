-- Create a 'Users' table to demonstrate NOT NULL and UNIQUE constraints
CREATE TABLE Users (
    user_id INT PRIMARY KEY,               -- Unique ID for each user
    username VARCHAR(50) NOT NULL,         -- Username must not be null
    email VARCHAR(100) UNIQUE              -- Email must be unique
);

-- Insert valid data into the Users table
INSERT INTO Users (user_id, username, email)
VALUES
    (1, 'john_doe', 'john@example.com'),
    (2, 'jane_smith', 'jane@example.com');

-- Attempt to insert a row with NULL in NOT NULL column (will cause error)
INSERT INTO Users (user_id, username, email)
VALUES (3, NULL, 'mark@example.com');

-- Attempt to insert a duplicate email (will cause error)
INSERT INTO Users (user_id, username, email)
VALUES (4, 'mark_taylor', 'john@example.com');
