-- Total orders by "Clerical" customers in January 2015
-- Using sub query, get the total number of orders by "clerical" customers in January 2015


SELECT COUNT(*) AS TotalOrders
FROM Sales s
JOIN Customer c
    ON s.CustomerKey = c.CustomerKey
WHERE c.Occupation = 'Clerical'
  AND s.OrderDate >= '2015-01-01'
  AND s.OrderDate < '2015-02-01';

-- Total orders by "Manual" customers in January 2015
-- Using sub query, get the total number of orders by "manual" customers in January 2015


SELECT COUNT(*) AS TotalOrders
FROM Sales s
JOIN Customer c
    ON s.CustomerKey = c.CustomerKey
WHERE c.Occupation = 'Manual'
  AND s.OrderDate >= '2015-01-01'
  AND s.OrderDate < '2015-02-01';



-- Categorize sales into two groups, high sales and low sales based on the total value of the order for each product if they are greater or less than 25,000. What category is "AWC Logo Cap" and "Classic Vest, L" respectively?


SELECT 
    p.ProductName,
    SUM(s.OrderQuantity * p.ProductPrice) AS TotalValue,
    CASE 
        WHEN SUM(s.OrderQuantity * p.ProductPrice) >= 25000 THEN 'High Sales'
        ELSE 'Low Sales'
    END AS SalesCategory
FROM Sales s
JOIN Product p
    ON s.ProductKey = p.ProductKey
GROUP BY p.ProductName
HAVING p.ProductName IN ('AWC Logo Cap', 'Classic Vest, L');




-- What is the Quantity of the top selling product in United Kingdom?

SELECT 
    p.ProductName,
    SUM(s.OrderQuantity) AS TotalQuantity
FROM Sales s
JOIN Products p
    ON s.ProductKey = p.ProductKey
WHERE s.Country = 'United Kingdom'
GROUP BY p.ProductName
ORDER BY SUM(s.OrderQuantity) DESC
LIMIT 1;



-- What is the Quantity of the top selling product in United Kingdom?

SELECT 
    p.ProductName,
    SUM(s.OrderQuantity) AS TotalQuantity
FROM Sales s
JOIN Products p
    ON s.ProductKey = p.ProductKey
WHERE s.Country = 'Canada'
GROUP BY p.ProductName
ORDER BY SUM(s.OrderQuantity) DESC
LIMIT 1;

