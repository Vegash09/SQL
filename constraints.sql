-- CONSTRAINTS
USE playGround;

-- Creating 'driver' table with various constraints
CREATE TABLE driver (
    driver_id INT PRIMARY KEY,                  -- PRIMARY KEY constraint (unique & NOT NULL)
    driver_name VARCHAR(30) NOT NULL,           -- NOT NULL constraint
    phone VARCHAR(15),
    location VARCHAR(30),
    salary INT CHECK (salary > 500)             -- CHECK constraint to ensure salary > 500
);
GO

-- Creating 'ride' table with a DEFAULT, PRIMARY KEY, and FOREIGN KEY with ON DELETE CASCADE
CREATE TABLE ride(
    ride_id INT PRIMARY KEY,                                    -- PRIMARY KEY constraint
    pickup_location VARCHAR(30) DEFAULT 'BANGALORE',            -- DEFAULT constraint
    drop_location VARCHAR(30),
    driver_id INT,
    FOREIGN KEY(driver_id) REFERENCES driver(driver_id)         -- FOREIGN KEY constraint
        ON DELETE CASCADE                                       -- ON DELETE CASCADE to auto-delete rides when driver is deleted
);
GO

-- Inserting data into 'driver' table
INSERT driver VALUES (101, 'madesh', 1234567890, 'Chennai', 10000);  -- Valid row (salary > 500, name NOT NULL)
INSERT driver VALUES (102, 'dhinesh', 1234567890, 'Chennai', 11000);
INSERT driver VALUES (103, 'ramesh', 1234567890, 'Madurai', 12000);

-- Viewing data in 'driver' table
SELECT * FROM driver;

-- Inserting data into 'ride' table with DEFAULT pickup_location
INSERT ride(ride_id, drop_location, driver_id) VALUES 
(201, 'Chennai', 101),         -- pickup_location will default to 'BANGALORE'
(202, 'Salem', 101);

-- Viewing data in 'ride' table
SELECT * FROM ride;


DELETE FROM ride
WHERE driver_id = 101

SELECT * FROM ride;
SELECT * FROM driver;