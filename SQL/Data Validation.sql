SELECT COUNT(*) AS Total_Records
FROM Dominos_Sales;

SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM Dominos_Sales;

SELECT COUNT(DISTINCT customer_id) AS Total_Customers
FROM Dominos_Sales;

SELECT COUNT(DISTINCT city) AS Total_Cities
FROM Dominos_Sales;

SELECT COUNT(DISTINCT pizza_name) AS Total_Pizzas
FROM Dominos_Sales;