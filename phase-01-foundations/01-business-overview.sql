/*
=================================================================
BUSINESS INTELLIGENCE BRIEFING: Northwind Traders Data Overview
=================================================================
 */

-- 1. Data Inventory: Available tables and basic structure
SELECT
    TABLE_NAME,
    (SELECT COUNT(*)
     FROM INFORMATION_SCHEMA.COLUMNS
     WHERE TABLE_NAME = t.TABLE_NAME) AS Column_Count
FROM INFORMATION_SCHEMA.TABLES t
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

-- 2. Business scale: Core entity counts
SELECT
    (SELECT COUNT(*) FROM Customers) AS Total_Customers,
    (SELECT COUNT(*) FROM Products) AS Total_Products,
    (SELECT COUNT(*) FROM Orders) AS Total_Orders,
    (SELECT COUNT(*) FROM Employees) AS Total_Employees,
    (SELECT COUNT(*) FROM Suppliers) AS Total_Suppliers;

-- 3. Geographic reach
-- Customer countries
SELECT 'Customer Countries' AS Geographic_Dimension, Country, COUNT(*) AS Count
FROM Customers
GROUP BY Country
UNION ALL
-- Supplier countries
SELECT 'Supplier Countries', Country, Count(*)
FROM Suppliers
GROUP BY Country
ORDER BY Geographic_Dimension, Count DESC;

-- 4. Time range for database
SELECT MIN(OrderDate) AS Earliest, MAX(OrderDate) as Latest FROM Orders;

-- 5. Data Quality check
SELECT
    -- 1: Order referential integrity
    (CASE
        WHEN EXISTS(
            SELECT DISTINCT CustomerID
            FROM Orders
            WHERE CustomerID NOT IN (SELECT CustomerID FROM Customers)
        )
        THEN 'Found order with CustomerID not found in Customers table'
        ELSE 'No Violations'
    END) AS Check1,
    -- 2: Order date logic validation
    (CASE
        WHEN EXISTS(
            SELECT OrderDate
            FROM Orders
            WHERE OrderDate > RequiredDate
        )
        THEN 'Found order with Order Date later than Required Date'
        ELSE 'No violations'
    END) AS Check2,
    -- 3: Product pricing/stock sanity
    (CASE
        WHEN EXISTS(
            SELECT ProductID, ProductName
            FROM Products
            WHERE UnitPrice < 0 OR UnitsInStock < 0
        )
        THEN 'Found products with negative unit price or stock'
        ELSE 'No violations'
    END) AS Check3,
    -- 4: Order details integrity
    (CASE
        WHEN EXISTS(
            SELECT OrderID
            FROM [Order Details]
            WHERE OrderID NOT IN (SELECT OrderID FROM Orders)
                OR ProductID NOT IN (SELECT ProductID FROM Products)
        )
        THEN 'Found order in order details without proper Order or Customer ID'
        ELSE 'No violations'
    END) AS Check4;