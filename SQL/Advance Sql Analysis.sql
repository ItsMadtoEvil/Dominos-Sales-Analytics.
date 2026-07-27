-- City Ranking

--Use a window function to demonstrate advanced SQL skills.

WITH CitySales AS
(
    SELECT
        city,
        SUM(total_amount) AS Total_Revenue
    FROM Dominos_Sales
    GROUP BY city
)
SELECT
    city,
    Total_Revenue,
    RANK() OVER (
        ORDER BY Total_Revenue DESC
    ) AS Revenue_Rank
FROM CitySales
ORDER BY Revenue_Rank;
-- Pizza Ranking Within Category
WITH PizzaSales AS
(
    SELECT
        category,
        pizza_name,
        SUM(total_amount) AS Total_Revenue
    FROM Dominos_Sales
    GROUP BY
        category,
        pizza_name
)
SELECT
    category,
    pizza_name,
    Total_Revenue,
    RANK() OVER
    (
        PARTITION BY category
        ORDER BY Total_Revenue DESC
    ) AS Pizza_Rank
FROM PizzaSales
ORDER BY
    category,
    Pizza_Rank;