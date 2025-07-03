CREATE TABLE dql (
    id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    sale_amount INT,
    sale_date DATE
);

INSERT INTO dql VALUES
(1, 'Vegash', 'Electronics', 5000, '2025-07-01'),
(2, 'Jeeva', 'Electronics', 7000, '2025-07-01'),
(3, 'Kathir', 'Clothing', 3000, '2025-07-01'),
(4, 'Madesh', 'Clothing', 4500, '2025-07-02'),
(5, 'Kumar', 'Grocery', 2500, '2025-07-02'),
(6, 'Vegash', 'Electronics', 6000, '2025-07-03'),
(7, 'Jeeva', 'Electronics', 4000, '2025-07-03'),
(8, 'Kathir', 'Clothing', 5500, '2025-07-03'),
(9, 'Kumar', 'Grocery', 3500, '2025-07-04');


SELECT *
FROM 
dql


SELECT 
    COUNT(*) AS total_sales,
    SUM(sale_amount) AS total_amount,
    AVG(sale_amount) AS average_amount,
    MIN(sale_amount) AS min_amount,
    MAX(sale_amount) AS max_amount
FROM dql;

SELECT department, SUM(sale_amount) AS total_sales
FROM dql
GROUP BY department;

SELECT department, SUM(sale_amount) AS total_sales
FROM dql
GROUP BY department
HAVING SUM(sale_amount) > 10000;

SELECT * FROM dql
ORDER BY sale_amount DESC;



