CREATE TABLE dcl (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    phone BIGINT,
    email VARCHAR(50)
);

INSERT INTO dcl VALUES
(1, 'Vegash', 9876543210, 'vegash@example.com'),
(2, 'Jeeva', 9123456780, 'jeeva@example.com'),
(3, 'Kathir', 9012345678, 'kathir@example.com'),
(4, 'Madesh', 9901234567, 'madesh@example.com');

SELECT * FROM dcl

GRANT SELECT, INSERT ON dcl TO tom;
exec as user='tom'


USE master;

--Create login for sam
CREATE LOGIN sam WITH PASSWORD = 'sam';

--Switch back to ACCESS database
USE ACCESS;

-- Create user 'sam' mapped to login 'sam'
CREATE USER sam FOR LOGIN sam;

-- Grant permissions to the table
GRANT SELECT, INSERT, UPDATE ON dcl TO sam;


USE ACCESS
REVOKE SELECT, INSERT, UPDATE ON dcl FROM sam;