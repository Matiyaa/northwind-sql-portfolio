/*
=================================================================
SALES TRENDS ANALYSIS: Northwind Traders Sales Overview
=================================================================
 */

-- 1. Monthly Sales and Volumes Trends
SELECT FORMAT(OrderDate, 'MM-yy') as MONTH,
       FORMAT(SUM(UnitPrice * Quantity * (1 - Discount)), 'C') as Revenue,
       COUNT(DISTINCT [Orders].OrderID) as Order_Count
FROM [Order Details]
INNER JOIN Orders ON [Order Details].OrderID=Orders.OrderID
GROUP BY FORMAT(OrderDate, 'MM-yy'), YEAR(OrderDate), MONTH(OrderDate)
ORDER BY YEAR(OrderDate), MONTH(OrderDate);


-- 2. Freight Cost Analysis
SELECT FORMAT(OrderDate, 'MM-yy') as MONTH, FORMAT(AVG(Freight), 'C') AS AverageFreight
FROM Orders
GROUP BY FORMAT(OrderDate, 'MM-yy'), YEAR(OrderDate), MONTH(OrderDate)
ORDER BY YEAR(OrderDate), MONTH(OrderDate);

-- 3. Average Order Value Trends
SELECT FORMAT(OrderDate, 'MM-yy') as MONTH,
       FORMAT(SUM(UnitPrice * Quantity * (1 - Discount))/COUNT(DISTINCT [Orders].OrderID), 'C') as AverageOrderValue
FROM [Order Details]
INNER JOIN Orders ON [Order Details].OrderID=Orders.OrderID
GROUP BY FORMAT(OrderDate, 'MM-yy'), YEAR(OrderDate), MONTH(OrderDate)
ORDER BY YEAR(OrderDate), MONTH(OrderDate);

-- 4. Seasonal Performance Analysis
-- 4.1 Monthly Performance Ranking
SELECT DATENAME(month, OrderDate) as MONTH,
       FORMAT(SUM(UnitPrice * Quantity * (1 - Discount))/COUNT(DISTINCT [Orders].OrderID), 'C') as AverageOrderValue,
       FORMAT(SUM(UnitPrice * Quantity * (1 - Discount)), 'C') as TotalRevenue
FROM [Order Details]
INNER JOIN Orders ON [Order Details].OrderID=Orders.OrderID
GROUP BY DATENAME(month, OrderDate)
ORDER BY SUM(UnitPrice * Quantity * (1 - Discount))/COUNT(DISTINCT [Orders].OrderID) DESC;
-- 4.2 Quarterly Performance Ranking
SELECT ('Q' + CAST(DATENAME(quarter, OrderDate) AS VARCHAR) + ' ' + CAST(YEAR(OrderDate) AS VARCHAR)) as Quarter,
       FORMAT(SUM(UnitPrice * Quantity * (1 - Discount))/COUNT(DISTINCT [Orders].OrderID), 'C') as AverageOrderValue,
       FORMAT(SUM(UnitPrice * Quantity * (1 - Discount)), 'C') as TotalRevenue
FROM [Order Details]
INNER JOIN Orders ON [Order Details].OrderID=Orders.OrderID
GROUP BY DATENAME(quarter, OrderDate), YEAR(OrderDate)
ORDER BY SUM(UnitPrice * Quantity * (1 - Discount))/COUNT(DISTINCT [Orders].OrderID) DESC;

-- 5. Consolidated dashboard
SELECT FORMAT(OrderDate, 'MM-yy') as MONTH,
       COUNT(DISTINCT [Orders].OrderID) as Order_Count,
       FORMAT(SUM(UnitPrice * Quantity * (1 - Discount)), 'C') as TotalRevenue,
       FORMAT(SUM(UnitPrice * Quantity * (1 - Discount))/COUNT(DISTINCT [Orders].OrderID), 'C') as AverageOrderValue,
       FORMAT(SUM(Freight), 'C') AS TotalFreight,
       FORMAT(AVG(Freight), 'C') AS AverageFreight
FROM [Order Details]
INNER JOIN Orders ON [Order Details].OrderID=Orders.OrderID
GROUP BY FORMAT(OrderDate, 'MM-yy'), YEAR(OrderDate), MONTH(OrderDate)
ORDER BY YEAR(OrderDate), MONTH(OrderDate);