SELECT * FROM pizza_sales

SELECT ROUND(SUM(total_price)/1000,3) as Total_Revenue_k
FROM pizza_sales

SELECT ROUND(SUM(total_price)/COUNT (DISTINCT order_id),3) as Average_Order_value
from pizza_sales

SELECT SUM(quantity) as Total_Pizzas_Sold
FROM pizza_sales

SELECT COUNT(DISTINCT order_id) as Total_Orders
FROM pizza_sales

SELECT ROUND(CAST(SUM(quantity) AS DECIMAL(10, 2)) / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10, 2)),3) AS Average_pizzas_per_order
FROM pizza_sales;


SELECT TO_CHAR(order_date, 'Day') AS order_day, COUNT(DISTINCT order_id) as Total_Orders
FROM pizza_sales
GROUP BY order_day
ORDER BY total_orders DESC;


SELECT TO_CHAR(order_date, 'Month')  AS Month_name, COUNT( DISTINCT order_id) AS Total_orders
FROM pizza_sales
GROUP BY Month_name
ORDER BY Total_orders DESC

SELECT pizza_category,SUM(total_price) as Total_Revenue, ROUND(SUM(total_price)*100/(SELECT SUM(total_price) FROM pizza_sales),2) as Total_Revenue_percent
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_revenue_percent DESC

SELECT pizza_size,SUM(total_price) as Total_Revenue, ROUND(SUM(total_price)*100/(SELECT SUM(total_price) FROM pizza_sales),2) as Total_Revenue_percent
FROM pizza_sales
GROUP BY pizza_size
ORDER BY total_revenue_percent DESC

SELECT pizza_name, SUM(total_price) as Total_Revenue 
FROM pizza_sales
Group by pizza_name
ORDER BY Total_Revenue DESC
LIMIT 5

SELECT pizza_name, SUM(total_price) as Total_Revenue 
FROM pizza_sales
Group by pizza_name
ORDER BY Total_Revenue ASC
LIMIT 5

SELECT pizza_name,COUNT (DISTINCT order_id) as Total_orders  
FROM pizza_sales
Group by pizza_name
ORDER BY Total_orders DESC
LIMIT 5

SELECT pizza_name,COUNT (DISTINCT order_id) as Total_orders  
FROM pizza_sales
Group by pizza_name
ORDER BY Total_orders ASC
LIMIT 5

SELECT pizza_name, SUM(quantity) as Total_Pizzas_Sold
FROM pizza_sales
Group by pizza_name
ORDER BY Total_Pizzas_Sold DESC
LIMIT 5

SELECT pizza_name, SUM(quantity) as Total_Pizzas_Sold
FROM pizza_sales
Group by pizza_name
ORDER BY Total_Pizzas_Sold ASC
LIMIT 5


