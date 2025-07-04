-- Creating the 'students' table with columns 'id' and 'name'
CREATE TABLE students(
	id int primary key,
	name varchar(30)
);

-- Creating the 'course' table with columns 'id' and 'course_name'
CREATE TABLE course(
	id int,
	course_name varchar(30)
);

-- Creating the 'enroll' table to associate students with courses
CREATE TABLE enroll(
	student_id int,
	course_id int
);

-- Inserting sample data into the 'students' table
INSERT students values
(1,'Jeeva'),
(2,'Madesh'),
(3,'Vishwas');

-- Inserting sample data into the 'course' table
INSERT course values 
(101,'CS'),
(102,'Biology'),
(103,'Chemistry');

-- Inserting sample data into the 'enroll' table (student-course associations)
INSERT enroll values
(1, 101),
(1,102),
(2,101),
(3,103);

-- Displaying all records from the 'students' table
SELECT * FROM students;

-- Displaying all records from the 'course' table
SELECT * FROM course;

-- Displaying all records from the 'enroll' table
SELECT * FROM enroll;

-- Performing INNER JOIN to get student names and course names where enrollments exist
SELECT 
name,
course_name,
course_id
FROM enroll AS E
JOIN students as S on S.id = E.student_id
JOIN course as C on C.id = E.course_id;

-- Dropping the 'students', 'enroll', and 'course' tables
DROP TABLE students;
DROP TABLE enroll;
DROP TABLE course;

-- Creating the 'Customers' table with 'customer_id' and 'customer_name'
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

-- Inserting sample data into the 'Customers' table
INSERT INTO Customers VALUES
(1, 'Vegash'),
(2, 'Jeeva'),
(3, 'Kathir'),
(4, 'Madesh');

-- Creating the 'Orders' table with 'order_id', 'customer_id', and 'product'
-- Establishing a foreign key relationship with the 'Customers' table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Inserting sample data into the 'Orders' table
INSERT INTO Orders VALUES
(101, 1, 'Laptop'),
(102, 2, 'Phone'),
(103, 2, 'Tablet');

-- Performing LEFT JOIN to get all customers and their orders (if any)
SELECT 
Customer_name,
Product
from Customers
LEFT JOIN Orders on Customers.customer_id = Orders.customer_id;

-- Performing FULL JOIN to get all customers and all orders, including unmatched rows
SELECT 
*
from Customers
FULL JOIN Orders on Customers.customer_id = Orders.customer_id;

-- Performing CROSS JOIN to get the Cartesian product of Customers and Orders
SELECT 
*
from Customers
CROSS JOIN Orders;
