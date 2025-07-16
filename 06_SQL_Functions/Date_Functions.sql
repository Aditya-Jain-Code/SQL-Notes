-- Demonstration of date functions in SQL

-- Create an 'Events' table
CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(100),
    event_date DATE
);

-- Insert sample data
INSERT INTO Events (event_id, event_name, event_date)
VALUES
    (1, 'Product Launch', '2025-06-01'),
    (2, 'Team Outing', '2025-07-15'),
    (3, 'Hackathon', '2025-08-20');

-- Get current date
SELECT CURRENT_DATE AS today_date;

-- Extract year, month, and day from event_date
SELECT event_name,
       YEAR(event_date) AS event_year,
       MONTH(event_date) AS event_month,
       DAY(event_date) AS event_day
FROM Events;

-- Find the number of days between today and the event date
SELECT event_name,
       DATEDIFF(event_date, CURRENT_DATE) AS days_until_event
FROM Events;
