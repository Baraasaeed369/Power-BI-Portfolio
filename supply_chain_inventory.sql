

-- SQL Project: Inventory Analysis
-- Goal: Analyze stock levels and identify low-stock products

CREATE TABLE Inventory (
    ProductID INTEGER,
    ProductName TEXT,
    Category TEXT,
    QuantityInStock INTEGER,
    ReorderLevel INTEGER,
    UnitPrice REAL
);

INSERT INTO Inventory VALUES
(1, 'Laptop', 'Electronics', 5, 10, 15000),
(2, 'Mouse', 'Electronics', 50, 20, 300),
(3, 'Keyboard', 'Electronics', 8, 15, 700),
(4, 'Office Desk', 'Furniture', 3, 5, 2500),
(5, 'Office Chair', 'Furniture', 20, 10, 1800),
(6, 'Headphones', 'Electronics', 7, 12, 800),
(7, 'Monitor', 'Electronics', 15, 8, 4500),
(8, 'Bookshelf', 'Furniture', 4, 6, 2200);

-- Query 1: View all inventory
SELECT *
FROM Inventory;

-- Query 2: Identify products that need restocking
SELECT ProductName, QuantityInStock, ReorderLevel
FROM Inventory
WHERE QuantityInStock < ReorderLevel;

-- Query 3: Calculate total stock value
SELECT SUM(QuantityInStock * UnitPrice) AS TotalInventoryValue
FROM Inventory;

-- Query 4: Count products by category
SELECT Category, COUNT(*) AS NumberOfProducts
FROM Inventory
GROUP BY Category;

-- Query 5: Rank products by stock quantity
SELECT ProductName, QuantityInStock
FROM Inventory
ORDER BY QuantityInStock ASC;

-- Query 6: Calculate stock value for each product
SELECT ProductName,
       QuantityInStock,
       UnitPrice,
       QuantityInStock * UnitPrice AS StockValue
FROM Inventory
ORDER BY StockValue DESC;
