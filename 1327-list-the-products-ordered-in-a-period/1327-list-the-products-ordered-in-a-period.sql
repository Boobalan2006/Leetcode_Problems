# Write your MySQL query statement below
WITH cte AS (
SELECT product_id,
SUM(unit) OVER (PARTITION BY product_id) AS Unit
FROM Orders
WHERE YEAR(order_date) = 2020 AND MONTH(order_date) = 2
)

SELECT DISTINCT p.product_name, c.Unit
FROM cte c
JOIN Products p
ON c.product_id = p.product_id
WHERE c.Unit >= 100;