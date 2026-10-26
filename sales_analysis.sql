
-- My First SQL Project: Sales Analysis

CREATE TABLE Products (
    ProductID INTEGER,
    ProductName TEXT,
    Price REAL,
    Category TEXT
);

INSERT INTO Products VALUES
(1, 'Laptop', 15000, 'Electronics'),
(2, 'Headphones', 800, 'Electronics'),
(3, 'Desk', 2500, 'Furniture'),
(4, 'Mouse', 300, 'Electronics');

-- Query 1: Show all products
SELECT * FROM Products;

-- Query 2: Total number of products
SELECT COUNT(*) AS TotalProducts
FROM Products;

-- Query 3: Average product price
SELECT AVG(Price) AS AveragePrice
FROM Products;

-- Query 4: Products by category
SELECT
    Category,
    COUNT(*) AS NumberOfProducts,
    AVG(Price) AS AveragePrice
FROM Products
GROUP BY Category;

-- Query 5: Most expensive products first
SELECT ProductName, Price
FROM Products
ORDER BY Price DESC;
