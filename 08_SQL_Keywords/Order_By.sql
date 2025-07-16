-- Demonstration of ORDER BY keyword in SQL

-- Create a 'Books' table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    price DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Books (book_id, title, author, price)
VALUES
    (1, 'The Alchemist', 'Paulo Coelho', 350.00),
    (2, 'Wings of Fire', 'A.P.J. Abdul Kalam', 300.00),
    (3, 'Sapiens', 'Yuval Noah Harari', 500.00),
    (4, 'Ikigai', 'Francesc Miralles', 350.00);

-- Order books by price (ascending)
SELECT * FROM Books
ORDER BY price ASC;

-- Order books by price (descending)
SELECT * FROM Books
ORDER BY price DESC;

-- Order books by author name, then price
SELECT * FROM Books
ORDER BY author, price;
