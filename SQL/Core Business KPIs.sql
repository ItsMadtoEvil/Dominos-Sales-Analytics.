--Total Revenue
SELECT
    SUM(total_amount) AS Total_Revenue
FROM Dominos_Sales;
--Total Orders
SELECT
    COUNT(DISTINCT order_id) AS Total_Orders
FROM Dominos_Sales;
--Average Order Value
SELECT
    SUM(total_amount) * 1.0
    / COUNT(DISTINCT order_id) AS Average_Order_Value
FROM Dominos_Sales;
--Total Pizzas Sold
SELECT
    SUM(quantity) AS Total_Pizzas_Sold
FROM Dominos_Sales;
--Total Customers
SELECT
    COUNT(DISTINCT customer_id) AS Total_Customers
FROM Dominos_Sales;