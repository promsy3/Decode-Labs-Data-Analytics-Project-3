-- Tell MySQL to use your specific database
USE parks_and_recreation;

-- 1. Write SELECT queries (with WHERE and ORDER BY)
-- This filters for large orders and sorts them by the highest price
SELECT OrderID, Date, Product, Quantity, TotalPrice 
FROM `dataset for data analytics (2)`
WHERE Quantity > 3
ORDER BY TotalPrice DESC 
LIMIT 5;

-- 2. Perform basic aggregations (COUNT, SUM, AVG)
-- This calculates overall metrics for your whole dataset
SELECT 
    COUNT(OrderID) AS Total_Orders,
    SUM(Quantity) AS Total_Items_Sold,
    AVG(TotalPrice) AS Average_Order_Value,
    SUM(TotalPrice) AS Gross_Revenue
FROM `dataset for data analytics (2)`;

-- 3. Grouped Aggregations (GROUP BY)
-- This breaks down performance metrics by each product type
SELECT 
    Product, 
    COUNT(OrderID) AS Total_Transactions,
    SUM(Quantity) AS Total_Units_Sold,
    SUM(TotalPrice) AS Total_Product_Revenue
FROM `dataset for data analytics (2)`
GROUP BY Product
ORDER BY Total_Product_Revenue DESC;
