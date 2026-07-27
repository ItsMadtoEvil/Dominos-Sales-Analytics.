--Monthly Revenue Analysis
SELECT
    YEAR(order_date) AS Order_Year,
    MONTH(order_date) AS Month_Number,
    DATENAME(MONTH, order_date) AS Month_Name,
    SUM(total_amount) AS Total_Revenue
FROM Dominos_Sales
GROUP BY
    YEAR(order_date),
    MONTH(order_date),
    DATENAME(MONTH, order_date)
ORDER BY
    Order_Year,
    Month_Number;
-- Revenue by City
SELECT
    city,
    SUM(total_amount) AS Total_Revenue,
    COUNT(DISTINCT order_id) AS Total_Orders,
    SUM(quantity) AS Total_Pizzas_Sold
FROM Dominos_Sales
GROUP BY city
ORDER BY Total_Revenue DESC;
-- Top 5 Pizzas
SELECT TOP 5
    pizza_name,
    SUM(total_amount) AS Total_Revenue,
    SUM(quantity) AS Total_Quantity
FROM Dominos_Sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC;
--Revenue by Category
SELECT
    category,
    SUM(total_amount) AS Total_Revenue,
    SUM(quantity) AS Total_Quantity,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM Dominos_Sales
GROUP BY category
ORDER BY Total_Revenue DESC;
-- Revenue by Pizza Size
SELECT
    size,
    SUM(total_amount) AS Total_Revenue,
    SUM(quantity) AS Total_Quantity
FROM Dominos_Sales
GROUP BY size
ORDER BY Total_Revenue DESC;
-- Revenue by Day of Week
SELECT
    DATENAME(WEEKDAY, order_date) AS Day_Name,
    SUM(total_amount) AS Total_Revenue,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM Dominos_Sales
GROUP BY
    DATENAME(WEEKDAY, order_date)
ORDER BY Total_Revenue DESC;
-- Revenue by Hour
SELECT
    DATEPART(HOUR, order_time) AS Order_Hour,
    SUM(total_amount) AS Total_Revenue,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM Dominos_Sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY Order_Hour;
-- Order Type Analysis
SELECT
    order_type,
    COUNT(DISTINCT order_id) AS Total_Orders,
    SUM(total_amount) AS Total_Revenue,
    SUM(total_amount) * 1.0
        / COUNT(DISTINCT order_id) AS Average_Order_Value
FROM Dominos_Sales
GROUP BY order_type
ORDER BY Total_Revenue DESC;
-- Discount Analysis
SELECT
    discount_category,
    COUNT(DISTINCT order_id) AS Total_Orders,
    SUM(total_amount) AS Total_Revenue,
    SUM(total_amount) * 1.0
        / COUNT(DISTINCT order_id) AS Average_Order_Value
FROM Dominos_Sales
GROUP BY discount_category
ORDER BY Total_Revenue DESC;
--zqzq Top 10 Customers by Revenue
SELECT TOP 10
    customer_id,
    COUNT(DISTINCT order_id) AS Total_Orders,
    SUM(total_amount) AS Total_Revenue
FROM Dominos_Sales
GROUP BY customer_id
ORDER BY Total_Revenue DESC;
-- Repeat Customers
SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS Total_Orders,
    SUM(total_amount) AS Total_Revenue
FROM Dominos_Sales
GROUP BY customer_id
HAVING COUNT(DISTINCT order_id) > 1
ORDER BY Total_Orders DESC;