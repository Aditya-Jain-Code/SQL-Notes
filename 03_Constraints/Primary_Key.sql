-- Create a table with a primary key constraint
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,            -- Primary key ensures each project ID is unique and not null
    project_name VARCHAR(100) NOT NULL,    -- Project name is required
    start_date DATE
);

-- Insert valid data into the Projects table
INSERT INTO Projects (project_id, project_name, start_date)
VALUES
    (1, 'Website Redesign', '2024-01-10'),
    (2, 'Mobile App Development', '2024-03-05');

-- Attempt to insert a row with a duplicate primary key (will cause an error)
INSERT INTO Projects (project_id, project_name, start_date)
VALUES (1, 'Data Migration', '2024-06-15');
