-- Demonstration of commonly used SQL data types

-- Create a sample table using different data types
CREATE TABLE Sample_Data_Types (
    id INT PRIMARY KEY,                         -- Integer numeric type
    name VARCHAR(100),                          -- Variable-length character string
    description TEXT,                           -- Long text content
    price DECIMAL(10, 2),                       -- Decimal number with precision
    rating FLOAT,                               -- Floating point number
    created_date DATE,                          -- Date only (YYYY-MM-DD)
    created_time TIME,                          -- Time only (HH:MM:SS)
    last_updated DATETIME,                      -- Combined date and time
    active BOOLEAN,                             -- Boolean (true/false)
    attachment BLOB                             -- Binary large object (e.g., image/file)
);

-- Insert sample data into the table
INSERT INTO Sample_Data_Types (
    id, name, description, price, rating, created_date,
    created_time, last_updated, active, attachment
) VALUES (
    1,
    'Example Product',
    'This is a sample product with various data types.',
    199.99,
    4.5,
    '2024-07-16',
    '14:30:00',
    '2024-07-16 14:30:00',
    TRUE,
    NULL
);
