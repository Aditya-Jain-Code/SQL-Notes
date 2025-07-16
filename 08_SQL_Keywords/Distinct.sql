-- Demonstration of DISTINCT keyword in SQL

-- Create a 'Visitors' table
CREATE TABLE Visitors (
    visit_id INT PRIMARY KEY,
    visitor_name VARCHAR(100),
    country VARCHAR(50)
);

-- Insert sample data
INSERT INTO Visitors (visit_id, visitor_name, country)
VALUES
    (1, 'Amit', 'India'),
    (2, 'Neha', 'India'),
    (3, 'John', 'USA'),
    (4, 'Emily', 'USA'),
    (5, 'Raj', 'India');

-- Select all countries (with duplicates)
SELECT country FROM Visitors;

-- Select distinct countries (no duplicates)
SELECT DISTINCT country FROM Visitors;

-- Select distinct combinations of name and country
SELECT DISTINCT visitor_name, country FROM Visitors;
