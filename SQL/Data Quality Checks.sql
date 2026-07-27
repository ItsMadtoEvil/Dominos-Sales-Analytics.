SELECT
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS Null_Order_ID,
    SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS Null_Order_Date,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS Null_Customer_ID,
    SUM(CASE WHEN pizza_name IS NULL THEN 1 ELSE 0 END) AS Null_Pizza_Name,
    SUM(CASE WHEN total_amount IS NULL THEN 1 ELSE 0 END) AS Null_Total_Amount
FROM Dominos_Sales;

SELECT *
FROM Dominos_Sales
WHERE quantity <= 0;

SELECT *
FROM Dominos_Sales
WHERE total_amount < 0;

SELECT
    order_id,
    pizza_name,
    order_date,
    COUNT(*) AS Duplicate_Count
FROM Dominos_Sales
GROUP BY
    order_id,
    pizza_name,
    order_date
HAVING COUNT(*) > 1;

SELECT
    order_id,
    pizza_name,
    order_date,
    COUNT(*) AS Duplicate_Count
FROM Dominos_Sales
GROUP BY
    order_id,
    pizza_name,
    order_date
HAVING COUNT(*) > 1;