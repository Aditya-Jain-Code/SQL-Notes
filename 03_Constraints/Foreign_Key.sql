-- Create a 'Clients' table with a primary key
CREATE TABLE Clients (
    client_id INT PRIMARY KEY,            -- Unique ID for each client
    client_name VARCHAR(100) NOT NULL     -- Client name is required
);

-- Create a 'Projects' table with a foreign key referencing Clients
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,            -- Unique ID for each project
    project_name VARCHAR(100) NOT NULL,    -- Project name is required
    client_id INT,                         -- Refers to a client in the Clients table
    FOREIGN KEY (client_id) REFERENCES Clients(client_id) -- Foreign key constraint
);

-- Insert data into Clients
INSERT INTO Clients (client_id, client_name)
VALUES
    (1, 'TechNova Solutions'),
    (2, 'DataBridge Inc');

-- Insert data into Projects with valid foreign key references
INSERT INTO Projects (project_id, project_name, client_id)
VALUES
    (101, 'Website Revamp', 1),
    (102, 'Analytics Dashboard', 2);

-- Attempt to insert a project with a non-existent client_id (will cause error)
INSERT INTO Projects (project_id, project_name, client_id)
VALUES (103, 'Mobile App', 3);
